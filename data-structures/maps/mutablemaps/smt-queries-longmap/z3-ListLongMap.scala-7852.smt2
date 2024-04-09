; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97894 () Bool)

(assert start!97894)

(declare-fun b_free!23559 () Bool)

(declare-fun b_next!23559 () Bool)

(assert (=> start!97894 (= b_free!23559 (not b_next!23559))))

(declare-fun tp!83381 () Bool)

(declare-fun b_and!37923 () Bool)

(assert (=> start!97894 (= tp!83381 b_and!37923)))

(declare-fun b!1120196 () Bool)

(declare-fun res!748406 () Bool)

(declare-fun e!637936 () Bool)

(assert (=> b!1120196 (=> (not res!748406) (not e!637936))))

(declare-datatypes ((array!73004 0))(
  ( (array!73005 (arr!35151 (Array (_ BitVec 32) (_ BitVec 64))) (size!35688 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73004)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73004 (_ BitVec 32)) Bool)

(assert (=> b!1120196 (= res!748406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120197 () Bool)

(declare-fun e!637931 () Bool)

(declare-fun tp_is_empty!28089 () Bool)

(assert (=> b!1120197 (= e!637931 tp_is_empty!28089)))

(declare-fun b!1120198 () Bool)

(declare-fun res!748403 () Bool)

(declare-fun e!637937 () Bool)

(assert (=> b!1120198 (=> (not res!748403) (not e!637937))))

(declare-fun lt!497943 () array!73004)

(declare-datatypes ((List!24585 0))(
  ( (Nil!24582) (Cons!24581 (h!25790 (_ BitVec 64)) (t!35143 List!24585)) )
))
(declare-fun arrayNoDuplicates!0 (array!73004 (_ BitVec 32) List!24585) Bool)

(assert (=> b!1120198 (= res!748403 (arrayNoDuplicates!0 lt!497943 #b00000000000000000000000000000000 Nil!24582))))

(declare-fun b!1120199 () Bool)

(declare-fun res!748398 () Bool)

(assert (=> b!1120199 (=> (not res!748398) (not e!637936))))

(assert (=> b!1120199 (= res!748398 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24582))))

(declare-fun b!1120200 () Bool)

(declare-fun e!637934 () Bool)

(declare-fun e!637933 () Bool)

(declare-fun mapRes!43951 () Bool)

(assert (=> b!1120200 (= e!637934 (and e!637933 mapRes!43951))))

(declare-fun condMapEmpty!43951 () Bool)

(declare-datatypes ((V!42579 0))(
  ( (V!42580 (val!14101 Int)) )
))
(declare-datatypes ((ValueCell!13335 0))(
  ( (ValueCellFull!13335 (v!16735 V!42579)) (EmptyCell!13335) )
))
(declare-datatypes ((array!73006 0))(
  ( (array!73007 (arr!35152 (Array (_ BitVec 32) ValueCell!13335)) (size!35689 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73006)

(declare-fun mapDefault!43951 () ValueCell!13335)

(assert (=> b!1120200 (= condMapEmpty!43951 (= (arr!35152 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13335)) mapDefault!43951)))))

(declare-fun b!1120201 () Bool)

(declare-fun res!748401 () Bool)

(assert (=> b!1120201 (=> (not res!748401) (not e!637936))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120201 (= res!748401 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35688 _keys!1208))))))

(declare-fun b!1120202 () Bool)

(assert (=> b!1120202 (= e!637936 e!637937)))

(declare-fun res!748399 () Bool)

(assert (=> b!1120202 (=> (not res!748399) (not e!637937))))

(assert (=> b!1120202 (= res!748399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497943 mask!1564))))

(assert (=> b!1120202 (= lt!497943 (array!73005 (store (arr!35151 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35688 _keys!1208)))))

(declare-fun b!1120203 () Bool)

(declare-fun res!748400 () Bool)

(assert (=> b!1120203 (=> (not res!748400) (not e!637936))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1120203 (= res!748400 (= (select (arr!35151 _keys!1208) i!673) k0!934))))

(declare-fun b!1120204 () Bool)

(declare-fun e!637932 () Bool)

(assert (=> b!1120204 (= e!637932 true)))

(declare-fun zeroValue!944 () V!42579)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17746 0))(
  ( (tuple2!17747 (_1!8883 (_ BitVec 64)) (_2!8883 V!42579)) )
))
(declare-datatypes ((List!24586 0))(
  ( (Nil!24583) (Cons!24582 (h!25791 tuple2!17746) (t!35144 List!24586)) )
))
(declare-datatypes ((ListLongMap!15727 0))(
  ( (ListLongMap!15728 (toList!7879 List!24586)) )
))
(declare-fun lt!497945 () ListLongMap!15727)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42579)

(declare-fun getCurrentListMapNoExtraKeys!4340 (array!73004 array!73006 (_ BitVec 32) (_ BitVec 32) V!42579 V!42579 (_ BitVec 32) Int) ListLongMap!15727)

(declare-fun dynLambda!2442 (Int (_ BitVec 64)) V!42579)

(assert (=> b!1120204 (= lt!497945 (getCurrentListMapNoExtraKeys!4340 lt!497943 (array!73007 (store (arr!35152 _values!996) i!673 (ValueCellFull!13335 (dynLambda!2442 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35689 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497946 () ListLongMap!15727)

(assert (=> b!1120204 (= lt!497946 (getCurrentListMapNoExtraKeys!4340 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120205 () Bool)

(assert (=> b!1120205 (= e!637933 tp_is_empty!28089)))

(declare-fun res!748402 () Bool)

(assert (=> start!97894 (=> (not res!748402) (not e!637936))))

(assert (=> start!97894 (= res!748402 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35688 _keys!1208))))))

(assert (=> start!97894 e!637936))

(assert (=> start!97894 tp_is_empty!28089))

(declare-fun array_inv!26864 (array!73004) Bool)

(assert (=> start!97894 (array_inv!26864 _keys!1208)))

(assert (=> start!97894 true))

(assert (=> start!97894 tp!83381))

(declare-fun array_inv!26865 (array!73006) Bool)

(assert (=> start!97894 (and (array_inv!26865 _values!996) e!637934)))

(declare-fun b!1120206 () Bool)

(assert (=> b!1120206 (= e!637937 (not e!637932))))

(declare-fun res!748407 () Bool)

(assert (=> b!1120206 (=> res!748407 e!637932)))

(assert (=> b!1120206 (= res!748407 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120206 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36677 0))(
  ( (Unit!36678) )
))
(declare-fun lt!497944 () Unit!36677)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73004 (_ BitVec 64) (_ BitVec 32)) Unit!36677)

(assert (=> b!1120206 (= lt!497944 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1120207 () Bool)

(declare-fun res!748404 () Bool)

(assert (=> b!1120207 (=> (not res!748404) (not e!637936))))

(assert (=> b!1120207 (= res!748404 (and (= (size!35689 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35688 _keys!1208) (size!35689 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120208 () Bool)

(declare-fun res!748397 () Bool)

(assert (=> b!1120208 (=> (not res!748397) (not e!637936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120208 (= res!748397 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!43951 () Bool)

(assert (=> mapIsEmpty!43951 mapRes!43951))

(declare-fun b!1120209 () Bool)

(declare-fun res!748405 () Bool)

(assert (=> b!1120209 (=> (not res!748405) (not e!637936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120209 (= res!748405 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43951 () Bool)

(declare-fun tp!83382 () Bool)

(assert (=> mapNonEmpty!43951 (= mapRes!43951 (and tp!83382 e!637931))))

(declare-fun mapValue!43951 () ValueCell!13335)

(declare-fun mapKey!43951 () (_ BitVec 32))

(declare-fun mapRest!43951 () (Array (_ BitVec 32) ValueCell!13335))

(assert (=> mapNonEmpty!43951 (= (arr!35152 _values!996) (store mapRest!43951 mapKey!43951 mapValue!43951))))

(assert (= (and start!97894 res!748402) b!1120209))

(assert (= (and b!1120209 res!748405) b!1120207))

(assert (= (and b!1120207 res!748404) b!1120196))

(assert (= (and b!1120196 res!748406) b!1120199))

(assert (= (and b!1120199 res!748398) b!1120201))

(assert (= (and b!1120201 res!748401) b!1120208))

(assert (= (and b!1120208 res!748397) b!1120203))

(assert (= (and b!1120203 res!748400) b!1120202))

(assert (= (and b!1120202 res!748399) b!1120198))

(assert (= (and b!1120198 res!748403) b!1120206))

(assert (= (and b!1120206 (not res!748407)) b!1120204))

(assert (= (and b!1120200 condMapEmpty!43951) mapIsEmpty!43951))

(assert (= (and b!1120200 (not condMapEmpty!43951)) mapNonEmpty!43951))

(get-info :version)

(assert (= (and mapNonEmpty!43951 ((_ is ValueCellFull!13335) mapValue!43951)) b!1120197))

(assert (= (and b!1120200 ((_ is ValueCellFull!13335) mapDefault!43951)) b!1120205))

(assert (= start!97894 b!1120200))

(declare-fun b_lambda!18563 () Bool)

(assert (=> (not b_lambda!18563) (not b!1120204)))

(declare-fun t!35142 () Bool)

(declare-fun tb!8379 () Bool)

(assert (=> (and start!97894 (= defaultEntry!1004 defaultEntry!1004) t!35142) tb!8379))

(declare-fun result!17311 () Bool)

(assert (=> tb!8379 (= result!17311 tp_is_empty!28089)))

(assert (=> b!1120204 t!35142))

(declare-fun b_and!37925 () Bool)

(assert (= b_and!37923 (and (=> t!35142 result!17311) b_and!37925)))

(declare-fun m!1035413 () Bool)

(assert (=> b!1120203 m!1035413))

(declare-fun m!1035415 () Bool)

(assert (=> b!1120208 m!1035415))

(declare-fun m!1035417 () Bool)

(assert (=> b!1120209 m!1035417))

(declare-fun m!1035419 () Bool)

(assert (=> b!1120196 m!1035419))

(declare-fun m!1035421 () Bool)

(assert (=> start!97894 m!1035421))

(declare-fun m!1035423 () Bool)

(assert (=> start!97894 m!1035423))

(declare-fun m!1035425 () Bool)

(assert (=> b!1120204 m!1035425))

(declare-fun m!1035427 () Bool)

(assert (=> b!1120204 m!1035427))

(declare-fun m!1035429 () Bool)

(assert (=> b!1120204 m!1035429))

(declare-fun m!1035431 () Bool)

(assert (=> b!1120204 m!1035431))

(declare-fun m!1035433 () Bool)

(assert (=> b!1120198 m!1035433))

(declare-fun m!1035435 () Bool)

(assert (=> b!1120199 m!1035435))

(declare-fun m!1035437 () Bool)

(assert (=> mapNonEmpty!43951 m!1035437))

(declare-fun m!1035439 () Bool)

(assert (=> b!1120202 m!1035439))

(declare-fun m!1035441 () Bool)

(assert (=> b!1120202 m!1035441))

(declare-fun m!1035443 () Bool)

(assert (=> b!1120206 m!1035443))

(declare-fun m!1035445 () Bool)

(assert (=> b!1120206 m!1035445))

(check-sat (not b_lambda!18563) (not b!1120196) (not b!1120206) (not start!97894) tp_is_empty!28089 (not mapNonEmpty!43951) (not b!1120208) (not b!1120209) b_and!37925 (not b!1120202) (not b!1120198) (not b_next!23559) (not b!1120199) (not b!1120204))
(check-sat b_and!37925 (not b_next!23559))
