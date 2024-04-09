; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97852 () Bool)

(assert start!97852)

(declare-fun b_free!23517 () Bool)

(declare-fun b_next!23517 () Bool)

(assert (=> start!97852 (= b_free!23517 (not b_next!23517))))

(declare-fun tp!83256 () Bool)

(declare-fun b_and!37839 () Bool)

(assert (=> start!97852 (= tp!83256 b_and!37839)))

(declare-fun res!747711 () Bool)

(declare-fun e!637491 () Bool)

(assert (=> start!97852 (=> (not res!747711) (not e!637491))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72922 0))(
  ( (array!72923 (arr!35110 (Array (_ BitVec 32) (_ BitVec 64))) (size!35647 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72922)

(assert (=> start!97852 (= res!747711 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35647 _keys!1208))))))

(assert (=> start!97852 e!637491))

(declare-fun tp_is_empty!28047 () Bool)

(assert (=> start!97852 tp_is_empty!28047))

(declare-fun array_inv!26836 (array!72922) Bool)

(assert (=> start!97852 (array_inv!26836 _keys!1208)))

(assert (=> start!97852 true))

(assert (=> start!97852 tp!83256))

(declare-datatypes ((V!42523 0))(
  ( (V!42524 (val!14080 Int)) )
))
(declare-datatypes ((ValueCell!13314 0))(
  ( (ValueCellFull!13314 (v!16714 V!42523)) (EmptyCell!13314) )
))
(declare-datatypes ((array!72924 0))(
  ( (array!72925 (arr!35111 (Array (_ BitVec 32) ValueCell!13314)) (size!35648 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72924)

(declare-fun e!637492 () Bool)

(declare-fun array_inv!26837 (array!72924) Bool)

(assert (=> start!97852 (and (array_inv!26837 _values!996) e!637492)))

(declare-fun b!1119272 () Bool)

(declare-fun e!637490 () Bool)

(assert (=> b!1119272 (= e!637490 tp_is_empty!28047)))

(declare-fun b!1119273 () Bool)

(declare-fun res!747707 () Bool)

(assert (=> b!1119273 (=> (not res!747707) (not e!637491))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1119273 (= res!747707 (= (select (arr!35110 _keys!1208) i!673) k0!934))))

(declare-fun b!1119274 () Bool)

(declare-fun e!637493 () Bool)

(declare-fun e!637495 () Bool)

(assert (=> b!1119274 (= e!637493 (not e!637495))))

(declare-fun res!747708 () Bool)

(assert (=> b!1119274 (=> res!747708 e!637495)))

(assert (=> b!1119274 (= res!747708 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119274 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36645 0))(
  ( (Unit!36646) )
))
(declare-fun lt!497694 () Unit!36645)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72922 (_ BitVec 64) (_ BitVec 32)) Unit!36645)

(assert (=> b!1119274 (= lt!497694 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!43888 () Bool)

(declare-fun mapRes!43888 () Bool)

(declare-fun tp!83255 () Bool)

(declare-fun e!637496 () Bool)

(assert (=> mapNonEmpty!43888 (= mapRes!43888 (and tp!83255 e!637496))))

(declare-fun mapRest!43888 () (Array (_ BitVec 32) ValueCell!13314))

(declare-fun mapValue!43888 () ValueCell!13314)

(declare-fun mapKey!43888 () (_ BitVec 32))

(assert (=> mapNonEmpty!43888 (= (arr!35111 _values!996) (store mapRest!43888 mapKey!43888 mapValue!43888))))

(declare-fun b!1119275 () Bool)

(assert (=> b!1119275 (= e!637496 tp_is_empty!28047)))

(declare-fun b!1119276 () Bool)

(declare-fun res!747714 () Bool)

(assert (=> b!1119276 (=> (not res!747714) (not e!637491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119276 (= res!747714 (validKeyInArray!0 k0!934))))

(declare-fun b!1119277 () Bool)

(assert (=> b!1119277 (= e!637491 e!637493)))

(declare-fun res!747706 () Bool)

(assert (=> b!1119277 (=> (not res!747706) (not e!637493))))

(declare-fun lt!497692 () array!72922)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72922 (_ BitVec 32)) Bool)

(assert (=> b!1119277 (= res!747706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497692 mask!1564))))

(assert (=> b!1119277 (= lt!497692 (array!72923 (store (arr!35110 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35647 _keys!1208)))))

(declare-fun b!1119278 () Bool)

(assert (=> b!1119278 (= e!637495 true)))

(declare-fun zeroValue!944 () V!42523)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17718 0))(
  ( (tuple2!17719 (_1!8869 (_ BitVec 64)) (_2!8869 V!42523)) )
))
(declare-datatypes ((List!24555 0))(
  ( (Nil!24552) (Cons!24551 (h!25760 tuple2!17718) (t!35071 List!24555)) )
))
(declare-datatypes ((ListLongMap!15699 0))(
  ( (ListLongMap!15700 (toList!7865 List!24555)) )
))
(declare-fun lt!497693 () ListLongMap!15699)

(declare-fun minValue!944 () V!42523)

(declare-fun getCurrentListMapNoExtraKeys!4326 (array!72922 array!72924 (_ BitVec 32) (_ BitVec 32) V!42523 V!42523 (_ BitVec 32) Int) ListLongMap!15699)

(declare-fun dynLambda!2428 (Int (_ BitVec 64)) V!42523)

(assert (=> b!1119278 (= lt!497693 (getCurrentListMapNoExtraKeys!4326 lt!497692 (array!72925 (store (arr!35111 _values!996) i!673 (ValueCellFull!13314 (dynLambda!2428 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35648 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497691 () ListLongMap!15699)

(assert (=> b!1119278 (= lt!497691 (getCurrentListMapNoExtraKeys!4326 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119279 () Bool)

(declare-fun res!747709 () Bool)

(assert (=> b!1119279 (=> (not res!747709) (not e!637491))))

(declare-datatypes ((List!24556 0))(
  ( (Nil!24553) (Cons!24552 (h!25761 (_ BitVec 64)) (t!35072 List!24556)) )
))
(declare-fun arrayNoDuplicates!0 (array!72922 (_ BitVec 32) List!24556) Bool)

(assert (=> b!1119279 (= res!747709 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24553))))

(declare-fun b!1119280 () Bool)

(declare-fun res!747713 () Bool)

(assert (=> b!1119280 (=> (not res!747713) (not e!637491))))

(assert (=> b!1119280 (= res!747713 (and (= (size!35648 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35647 _keys!1208) (size!35648 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119281 () Bool)

(assert (=> b!1119281 (= e!637492 (and e!637490 mapRes!43888))))

(declare-fun condMapEmpty!43888 () Bool)

(declare-fun mapDefault!43888 () ValueCell!13314)

(assert (=> b!1119281 (= condMapEmpty!43888 (= (arr!35111 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13314)) mapDefault!43888)))))

(declare-fun mapIsEmpty!43888 () Bool)

(assert (=> mapIsEmpty!43888 mapRes!43888))

(declare-fun b!1119282 () Bool)

(declare-fun res!747710 () Bool)

(assert (=> b!1119282 (=> (not res!747710) (not e!637491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119282 (= res!747710 (validMask!0 mask!1564))))

(declare-fun b!1119283 () Bool)

(declare-fun res!747704 () Bool)

(assert (=> b!1119283 (=> (not res!747704) (not e!637491))))

(assert (=> b!1119283 (= res!747704 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35647 _keys!1208))))))

(declare-fun b!1119284 () Bool)

(declare-fun res!747712 () Bool)

(assert (=> b!1119284 (=> (not res!747712) (not e!637493))))

(assert (=> b!1119284 (= res!747712 (arrayNoDuplicates!0 lt!497692 #b00000000000000000000000000000000 Nil!24553))))

(declare-fun b!1119285 () Bool)

(declare-fun res!747705 () Bool)

(assert (=> b!1119285 (=> (not res!747705) (not e!637491))))

(assert (=> b!1119285 (= res!747705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97852 res!747711) b!1119282))

(assert (= (and b!1119282 res!747710) b!1119280))

(assert (= (and b!1119280 res!747713) b!1119285))

(assert (= (and b!1119285 res!747705) b!1119279))

(assert (= (and b!1119279 res!747709) b!1119283))

(assert (= (and b!1119283 res!747704) b!1119276))

(assert (= (and b!1119276 res!747714) b!1119273))

(assert (= (and b!1119273 res!747707) b!1119277))

(assert (= (and b!1119277 res!747706) b!1119284))

(assert (= (and b!1119284 res!747712) b!1119274))

(assert (= (and b!1119274 (not res!747708)) b!1119278))

(assert (= (and b!1119281 condMapEmpty!43888) mapIsEmpty!43888))

(assert (= (and b!1119281 (not condMapEmpty!43888)) mapNonEmpty!43888))

(get-info :version)

(assert (= (and mapNonEmpty!43888 ((_ is ValueCellFull!13314) mapValue!43888)) b!1119275))

(assert (= (and b!1119281 ((_ is ValueCellFull!13314) mapDefault!43888)) b!1119272))

(assert (= start!97852 b!1119281))

(declare-fun b_lambda!18521 () Bool)

(assert (=> (not b_lambda!18521) (not b!1119278)))

(declare-fun t!35070 () Bool)

(declare-fun tb!8337 () Bool)

(assert (=> (and start!97852 (= defaultEntry!1004 defaultEntry!1004) t!35070) tb!8337))

(declare-fun result!17227 () Bool)

(assert (=> tb!8337 (= result!17227 tp_is_empty!28047)))

(assert (=> b!1119278 t!35070))

(declare-fun b_and!37841 () Bool)

(assert (= b_and!37839 (and (=> t!35070 result!17227) b_and!37841)))

(declare-fun m!1034699 () Bool)

(assert (=> b!1119273 m!1034699))

(declare-fun m!1034701 () Bool)

(assert (=> start!97852 m!1034701))

(declare-fun m!1034703 () Bool)

(assert (=> start!97852 m!1034703))

(declare-fun m!1034705 () Bool)

(assert (=> b!1119285 m!1034705))

(declare-fun m!1034707 () Bool)

(assert (=> b!1119282 m!1034707))

(declare-fun m!1034709 () Bool)

(assert (=> b!1119279 m!1034709))

(declare-fun m!1034711 () Bool)

(assert (=> b!1119277 m!1034711))

(declare-fun m!1034713 () Bool)

(assert (=> b!1119277 m!1034713))

(declare-fun m!1034715 () Bool)

(assert (=> b!1119284 m!1034715))

(declare-fun m!1034717 () Bool)

(assert (=> b!1119276 m!1034717))

(declare-fun m!1034719 () Bool)

(assert (=> mapNonEmpty!43888 m!1034719))

(declare-fun m!1034721 () Bool)

(assert (=> b!1119274 m!1034721))

(declare-fun m!1034723 () Bool)

(assert (=> b!1119274 m!1034723))

(declare-fun m!1034725 () Bool)

(assert (=> b!1119278 m!1034725))

(declare-fun m!1034727 () Bool)

(assert (=> b!1119278 m!1034727))

(declare-fun m!1034729 () Bool)

(assert (=> b!1119278 m!1034729))

(declare-fun m!1034731 () Bool)

(assert (=> b!1119278 m!1034731))

(check-sat b_and!37841 tp_is_empty!28047 (not mapNonEmpty!43888) (not start!97852) (not b!1119278) (not b!1119276) (not b_lambda!18521) (not b!1119285) (not b!1119277) (not b!1119279) (not b!1119274) (not b!1119282) (not b!1119284) (not b_next!23517))
(check-sat b_and!37841 (not b_next!23517))
