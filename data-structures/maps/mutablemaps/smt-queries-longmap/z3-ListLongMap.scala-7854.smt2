; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97906 () Bool)

(assert start!97906)

(declare-fun b_free!23571 () Bool)

(declare-fun b_next!23571 () Bool)

(assert (=> start!97906 (= b_free!23571 (not b_next!23571))))

(declare-fun tp!83418 () Bool)

(declare-fun b_and!37947 () Bool)

(assert (=> start!97906 (= tp!83418 b_and!37947)))

(declare-fun b!1120460 () Bool)

(declare-fun e!638058 () Bool)

(declare-fun tp_is_empty!28101 () Bool)

(assert (=> b!1120460 (= e!638058 tp_is_empty!28101)))

(declare-fun b!1120461 () Bool)

(declare-fun res!748600 () Bool)

(declare-fun e!638061 () Bool)

(assert (=> b!1120461 (=> (not res!748600) (not e!638061))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120461 (= res!748600 (validKeyInArray!0 k0!934))))

(declare-fun b!1120462 () Bool)

(declare-fun res!748598 () Bool)

(assert (=> b!1120462 (=> (not res!748598) (not e!638061))))

(declare-datatypes ((array!73028 0))(
  ( (array!73029 (arr!35163 (Array (_ BitVec 32) (_ BitVec 64))) (size!35700 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73028)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73028 (_ BitVec 32)) Bool)

(assert (=> b!1120462 (= res!748598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!748595 () Bool)

(assert (=> start!97906 (=> (not res!748595) (not e!638061))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97906 (= res!748595 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35700 _keys!1208))))))

(assert (=> start!97906 e!638061))

(assert (=> start!97906 tp_is_empty!28101))

(declare-fun array_inv!26876 (array!73028) Bool)

(assert (=> start!97906 (array_inv!26876 _keys!1208)))

(assert (=> start!97906 true))

(assert (=> start!97906 tp!83418))

(declare-datatypes ((V!42595 0))(
  ( (V!42596 (val!14107 Int)) )
))
(declare-datatypes ((ValueCell!13341 0))(
  ( (ValueCellFull!13341 (v!16741 V!42595)) (EmptyCell!13341) )
))
(declare-datatypes ((array!73030 0))(
  ( (array!73031 (arr!35164 (Array (_ BitVec 32) ValueCell!13341)) (size!35701 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73030)

(declare-fun e!638063 () Bool)

(declare-fun array_inv!26877 (array!73030) Bool)

(assert (=> start!97906 (and (array_inv!26877 _values!996) e!638063)))

(declare-fun b!1120463 () Bool)

(declare-fun e!638060 () Bool)

(assert (=> b!1120463 (= e!638060 true)))

(declare-fun zeroValue!944 () V!42595)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17756 0))(
  ( (tuple2!17757 (_1!8888 (_ BitVec 64)) (_2!8888 V!42595)) )
))
(declare-datatypes ((List!24595 0))(
  ( (Nil!24592) (Cons!24591 (h!25800 tuple2!17756) (t!35165 List!24595)) )
))
(declare-datatypes ((ListLongMap!15737 0))(
  ( (ListLongMap!15738 (toList!7884 List!24595)) )
))
(declare-fun lt!498015 () ListLongMap!15737)

(declare-fun minValue!944 () V!42595)

(declare-fun lt!498016 () array!73028)

(declare-fun getCurrentListMapNoExtraKeys!4345 (array!73028 array!73030 (_ BitVec 32) (_ BitVec 32) V!42595 V!42595 (_ BitVec 32) Int) ListLongMap!15737)

(declare-fun dynLambda!2447 (Int (_ BitVec 64)) V!42595)

(assert (=> b!1120463 (= lt!498015 (getCurrentListMapNoExtraKeys!4345 lt!498016 (array!73031 (store (arr!35164 _values!996) i!673 (ValueCellFull!13341 (dynLambda!2447 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35701 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!498017 () ListLongMap!15737)

(assert (=> b!1120463 (= lt!498017 (getCurrentListMapNoExtraKeys!4345 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120464 () Bool)

(declare-fun e!638057 () Bool)

(declare-fun mapRes!43969 () Bool)

(assert (=> b!1120464 (= e!638063 (and e!638057 mapRes!43969))))

(declare-fun condMapEmpty!43969 () Bool)

(declare-fun mapDefault!43969 () ValueCell!13341)

(assert (=> b!1120464 (= condMapEmpty!43969 (= (arr!35164 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13341)) mapDefault!43969)))))

(declare-fun b!1120465 () Bool)

(declare-fun res!748601 () Bool)

(declare-fun e!638059 () Bool)

(assert (=> b!1120465 (=> (not res!748601) (not e!638059))))

(declare-datatypes ((List!24596 0))(
  ( (Nil!24593) (Cons!24592 (h!25801 (_ BitVec 64)) (t!35166 List!24596)) )
))
(declare-fun arrayNoDuplicates!0 (array!73028 (_ BitVec 32) List!24596) Bool)

(assert (=> b!1120465 (= res!748601 (arrayNoDuplicates!0 lt!498016 #b00000000000000000000000000000000 Nil!24593))))

(declare-fun b!1120466 () Bool)

(declare-fun res!748596 () Bool)

(assert (=> b!1120466 (=> (not res!748596) (not e!638061))))

(assert (=> b!1120466 (= res!748596 (and (= (size!35701 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35700 _keys!1208) (size!35701 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120467 () Bool)

(declare-fun res!748597 () Bool)

(assert (=> b!1120467 (=> (not res!748597) (not e!638061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120467 (= res!748597 (validMask!0 mask!1564))))

(declare-fun b!1120468 () Bool)

(assert (=> b!1120468 (= e!638057 tp_is_empty!28101)))

(declare-fun mapIsEmpty!43969 () Bool)

(assert (=> mapIsEmpty!43969 mapRes!43969))

(declare-fun b!1120469 () Bool)

(declare-fun res!748602 () Bool)

(assert (=> b!1120469 (=> (not res!748602) (not e!638061))))

(assert (=> b!1120469 (= res!748602 (= (select (arr!35163 _keys!1208) i!673) k0!934))))

(declare-fun b!1120470 () Bool)

(assert (=> b!1120470 (= e!638059 (not e!638060))))

(declare-fun res!748599 () Bool)

(assert (=> b!1120470 (=> res!748599 e!638060)))

(assert (=> b!1120470 (= res!748599 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120470 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36687 0))(
  ( (Unit!36688) )
))
(declare-fun lt!498018 () Unit!36687)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73028 (_ BitVec 64) (_ BitVec 32)) Unit!36687)

(assert (=> b!1120470 (= lt!498018 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!43969 () Bool)

(declare-fun tp!83417 () Bool)

(assert (=> mapNonEmpty!43969 (= mapRes!43969 (and tp!83417 e!638058))))

(declare-fun mapValue!43969 () ValueCell!13341)

(declare-fun mapRest!43969 () (Array (_ BitVec 32) ValueCell!13341))

(declare-fun mapKey!43969 () (_ BitVec 32))

(assert (=> mapNonEmpty!43969 (= (arr!35164 _values!996) (store mapRest!43969 mapKey!43969 mapValue!43969))))

(declare-fun b!1120471 () Bool)

(declare-fun res!748604 () Bool)

(assert (=> b!1120471 (=> (not res!748604) (not e!638061))))

(assert (=> b!1120471 (= res!748604 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24593))))

(declare-fun b!1120472 () Bool)

(assert (=> b!1120472 (= e!638061 e!638059)))

(declare-fun res!748603 () Bool)

(assert (=> b!1120472 (=> (not res!748603) (not e!638059))))

(assert (=> b!1120472 (= res!748603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498016 mask!1564))))

(assert (=> b!1120472 (= lt!498016 (array!73029 (store (arr!35163 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35700 _keys!1208)))))

(declare-fun b!1120473 () Bool)

(declare-fun res!748605 () Bool)

(assert (=> b!1120473 (=> (not res!748605) (not e!638061))))

(assert (=> b!1120473 (= res!748605 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35700 _keys!1208))))))

(assert (= (and start!97906 res!748595) b!1120467))

(assert (= (and b!1120467 res!748597) b!1120466))

(assert (= (and b!1120466 res!748596) b!1120462))

(assert (= (and b!1120462 res!748598) b!1120471))

(assert (= (and b!1120471 res!748604) b!1120473))

(assert (= (and b!1120473 res!748605) b!1120461))

(assert (= (and b!1120461 res!748600) b!1120469))

(assert (= (and b!1120469 res!748602) b!1120472))

(assert (= (and b!1120472 res!748603) b!1120465))

(assert (= (and b!1120465 res!748601) b!1120470))

(assert (= (and b!1120470 (not res!748599)) b!1120463))

(assert (= (and b!1120464 condMapEmpty!43969) mapIsEmpty!43969))

(assert (= (and b!1120464 (not condMapEmpty!43969)) mapNonEmpty!43969))

(get-info :version)

(assert (= (and mapNonEmpty!43969 ((_ is ValueCellFull!13341) mapValue!43969)) b!1120460))

(assert (= (and b!1120464 ((_ is ValueCellFull!13341) mapDefault!43969)) b!1120468))

(assert (= start!97906 b!1120464))

(declare-fun b_lambda!18575 () Bool)

(assert (=> (not b_lambda!18575) (not b!1120463)))

(declare-fun t!35164 () Bool)

(declare-fun tb!8391 () Bool)

(assert (=> (and start!97906 (= defaultEntry!1004 defaultEntry!1004) t!35164) tb!8391))

(declare-fun result!17335 () Bool)

(assert (=> tb!8391 (= result!17335 tp_is_empty!28101)))

(assert (=> b!1120463 t!35164))

(declare-fun b_and!37949 () Bool)

(assert (= b_and!37947 (and (=> t!35164 result!17335) b_and!37949)))

(declare-fun m!1035617 () Bool)

(assert (=> b!1120467 m!1035617))

(declare-fun m!1035619 () Bool)

(assert (=> b!1120469 m!1035619))

(declare-fun m!1035621 () Bool)

(assert (=> mapNonEmpty!43969 m!1035621))

(declare-fun m!1035623 () Bool)

(assert (=> b!1120462 m!1035623))

(declare-fun m!1035625 () Bool)

(assert (=> b!1120472 m!1035625))

(declare-fun m!1035627 () Bool)

(assert (=> b!1120472 m!1035627))

(declare-fun m!1035629 () Bool)

(assert (=> start!97906 m!1035629))

(declare-fun m!1035631 () Bool)

(assert (=> start!97906 m!1035631))

(declare-fun m!1035633 () Bool)

(assert (=> b!1120465 m!1035633))

(declare-fun m!1035635 () Bool)

(assert (=> b!1120463 m!1035635))

(declare-fun m!1035637 () Bool)

(assert (=> b!1120463 m!1035637))

(declare-fun m!1035639 () Bool)

(assert (=> b!1120463 m!1035639))

(declare-fun m!1035641 () Bool)

(assert (=> b!1120463 m!1035641))

(declare-fun m!1035643 () Bool)

(assert (=> b!1120461 m!1035643))

(declare-fun m!1035645 () Bool)

(assert (=> b!1120470 m!1035645))

(declare-fun m!1035647 () Bool)

(assert (=> b!1120470 m!1035647))

(declare-fun m!1035649 () Bool)

(assert (=> b!1120471 m!1035649))

(check-sat tp_is_empty!28101 (not b!1120461) (not mapNonEmpty!43969) (not b!1120462) (not b!1120463) (not b_lambda!18575) (not b!1120470) (not b!1120465) (not b!1120472) b_and!37949 (not b_next!23571) (not b!1120471) (not b!1120467) (not start!97906))
(check-sat b_and!37949 (not b_next!23571))
