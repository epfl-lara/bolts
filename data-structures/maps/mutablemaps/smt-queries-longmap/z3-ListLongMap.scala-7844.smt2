; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97846 () Bool)

(assert start!97846)

(declare-fun b_free!23511 () Bool)

(declare-fun b_next!23511 () Bool)

(assert (=> start!97846 (= b_free!23511 (not b_next!23511))))

(declare-fun tp!83237 () Bool)

(declare-fun b_and!37827 () Bool)

(assert (=> start!97846 (= tp!83237 b_and!37827)))

(declare-fun b!1119140 () Bool)

(declare-fun res!747610 () Bool)

(declare-fun e!637429 () Bool)

(assert (=> b!1119140 (=> (not res!747610) (not e!637429))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119140 (= res!747610 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!43879 () Bool)

(declare-fun mapRes!43879 () Bool)

(assert (=> mapIsEmpty!43879 mapRes!43879))

(declare-fun b!1119141 () Bool)

(declare-fun res!747605 () Bool)

(assert (=> b!1119141 (=> (not res!747605) (not e!637429))))

(declare-datatypes ((array!72910 0))(
  ( (array!72911 (arr!35104 (Array (_ BitVec 32) (_ BitVec 64))) (size!35641 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72910)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72910 (_ BitVec 32)) Bool)

(assert (=> b!1119141 (= res!747605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119142 () Bool)

(declare-fun res!747608 () Bool)

(declare-fun e!637432 () Bool)

(assert (=> b!1119142 (=> (not res!747608) (not e!637432))))

(declare-fun lt!497655 () array!72910)

(declare-datatypes ((List!24549 0))(
  ( (Nil!24546) (Cons!24545 (h!25754 (_ BitVec 64)) (t!35059 List!24549)) )
))
(declare-fun arrayNoDuplicates!0 (array!72910 (_ BitVec 32) List!24549) Bool)

(assert (=> b!1119142 (= res!747608 (arrayNoDuplicates!0 lt!497655 #b00000000000000000000000000000000 Nil!24546))))

(declare-fun b!1119143 () Bool)

(assert (=> b!1119143 (= e!637429 e!637432)))

(declare-fun res!747606 () Bool)

(assert (=> b!1119143 (=> (not res!747606) (not e!637432))))

(assert (=> b!1119143 (= res!747606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497655 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119143 (= lt!497655 (array!72911 (store (arr!35104 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35641 _keys!1208)))))

(declare-fun b!1119144 () Bool)

(declare-fun res!747607 () Bool)

(assert (=> b!1119144 (=> (not res!747607) (not e!637429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119144 (= res!747607 (validMask!0 mask!1564))))

(declare-fun b!1119145 () Bool)

(declare-fun res!747609 () Bool)

(assert (=> b!1119145 (=> (not res!747609) (not e!637429))))

(assert (=> b!1119145 (= res!747609 (= (select (arr!35104 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!43879 () Bool)

(declare-fun tp!83238 () Bool)

(declare-fun e!637427 () Bool)

(assert (=> mapNonEmpty!43879 (= mapRes!43879 (and tp!83238 e!637427))))

(declare-fun mapKey!43879 () (_ BitVec 32))

(declare-datatypes ((V!42515 0))(
  ( (V!42516 (val!14077 Int)) )
))
(declare-datatypes ((ValueCell!13311 0))(
  ( (ValueCellFull!13311 (v!16711 V!42515)) (EmptyCell!13311) )
))
(declare-fun mapValue!43879 () ValueCell!13311)

(declare-datatypes ((array!72912 0))(
  ( (array!72913 (arr!35105 (Array (_ BitVec 32) ValueCell!13311)) (size!35642 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72912)

(declare-fun mapRest!43879 () (Array (_ BitVec 32) ValueCell!13311))

(assert (=> mapNonEmpty!43879 (= (arr!35105 _values!996) (store mapRest!43879 mapKey!43879 mapValue!43879))))

(declare-fun b!1119147 () Bool)

(declare-fun res!747613 () Bool)

(assert (=> b!1119147 (=> (not res!747613) (not e!637429))))

(assert (=> b!1119147 (= res!747613 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35641 _keys!1208))))))

(declare-fun b!1119148 () Bool)

(declare-fun e!637431 () Bool)

(assert (=> b!1119148 (= e!637432 (not e!637431))))

(declare-fun res!747611 () Bool)

(assert (=> b!1119148 (=> res!747611 e!637431)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1119148 (= res!747611 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119148 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36639 0))(
  ( (Unit!36640) )
))
(declare-fun lt!497658 () Unit!36639)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72910 (_ BitVec 64) (_ BitVec 32)) Unit!36639)

(assert (=> b!1119148 (= lt!497658 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1119149 () Bool)

(declare-fun e!637433 () Bool)

(declare-fun e!637428 () Bool)

(assert (=> b!1119149 (= e!637433 (and e!637428 mapRes!43879))))

(declare-fun condMapEmpty!43879 () Bool)

(declare-fun mapDefault!43879 () ValueCell!13311)

(assert (=> b!1119149 (= condMapEmpty!43879 (= (arr!35105 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13311)) mapDefault!43879)))))

(declare-fun b!1119150 () Bool)

(declare-fun tp_is_empty!28041 () Bool)

(assert (=> b!1119150 (= e!637428 tp_is_empty!28041)))

(declare-fun b!1119151 () Bool)

(assert (=> b!1119151 (= e!637431 true)))

(declare-fun zeroValue!944 () V!42515)

(declare-datatypes ((tuple2!17712 0))(
  ( (tuple2!17713 (_1!8866 (_ BitVec 64)) (_2!8866 V!42515)) )
))
(declare-datatypes ((List!24550 0))(
  ( (Nil!24547) (Cons!24546 (h!25755 tuple2!17712) (t!35060 List!24550)) )
))
(declare-datatypes ((ListLongMap!15693 0))(
  ( (ListLongMap!15694 (toList!7862 List!24550)) )
))
(declare-fun lt!497656 () ListLongMap!15693)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42515)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4323 (array!72910 array!72912 (_ BitVec 32) (_ BitVec 32) V!42515 V!42515 (_ BitVec 32) Int) ListLongMap!15693)

(declare-fun dynLambda!2425 (Int (_ BitVec 64)) V!42515)

(assert (=> b!1119151 (= lt!497656 (getCurrentListMapNoExtraKeys!4323 lt!497655 (array!72913 (store (arr!35105 _values!996) i!673 (ValueCellFull!13311 (dynLambda!2425 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35642 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497657 () ListLongMap!15693)

(assert (=> b!1119151 (= lt!497657 (getCurrentListMapNoExtraKeys!4323 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!747612 () Bool)

(assert (=> start!97846 (=> (not res!747612) (not e!637429))))

(assert (=> start!97846 (= res!747612 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35641 _keys!1208))))))

(assert (=> start!97846 e!637429))

(assert (=> start!97846 tp_is_empty!28041))

(declare-fun array_inv!26832 (array!72910) Bool)

(assert (=> start!97846 (array_inv!26832 _keys!1208)))

(assert (=> start!97846 true))

(assert (=> start!97846 tp!83237))

(declare-fun array_inv!26833 (array!72912) Bool)

(assert (=> start!97846 (and (array_inv!26833 _values!996) e!637433)))

(declare-fun b!1119146 () Bool)

(declare-fun res!747615 () Bool)

(assert (=> b!1119146 (=> (not res!747615) (not e!637429))))

(assert (=> b!1119146 (= res!747615 (and (= (size!35642 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35641 _keys!1208) (size!35642 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119152 () Bool)

(assert (=> b!1119152 (= e!637427 tp_is_empty!28041)))

(declare-fun b!1119153 () Bool)

(declare-fun res!747614 () Bool)

(assert (=> b!1119153 (=> (not res!747614) (not e!637429))))

(assert (=> b!1119153 (= res!747614 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24546))))

(assert (= (and start!97846 res!747612) b!1119144))

(assert (= (and b!1119144 res!747607) b!1119146))

(assert (= (and b!1119146 res!747615) b!1119141))

(assert (= (and b!1119141 res!747605) b!1119153))

(assert (= (and b!1119153 res!747614) b!1119147))

(assert (= (and b!1119147 res!747613) b!1119140))

(assert (= (and b!1119140 res!747610) b!1119145))

(assert (= (and b!1119145 res!747609) b!1119143))

(assert (= (and b!1119143 res!747606) b!1119142))

(assert (= (and b!1119142 res!747608) b!1119148))

(assert (= (and b!1119148 (not res!747611)) b!1119151))

(assert (= (and b!1119149 condMapEmpty!43879) mapIsEmpty!43879))

(assert (= (and b!1119149 (not condMapEmpty!43879)) mapNonEmpty!43879))

(get-info :version)

(assert (= (and mapNonEmpty!43879 ((_ is ValueCellFull!13311) mapValue!43879)) b!1119152))

(assert (= (and b!1119149 ((_ is ValueCellFull!13311) mapDefault!43879)) b!1119150))

(assert (= start!97846 b!1119149))

(declare-fun b_lambda!18515 () Bool)

(assert (=> (not b_lambda!18515) (not b!1119151)))

(declare-fun t!35058 () Bool)

(declare-fun tb!8331 () Bool)

(assert (=> (and start!97846 (= defaultEntry!1004 defaultEntry!1004) t!35058) tb!8331))

(declare-fun result!17215 () Bool)

(assert (=> tb!8331 (= result!17215 tp_is_empty!28041)))

(assert (=> b!1119151 t!35058))

(declare-fun b_and!37829 () Bool)

(assert (= b_and!37827 (and (=> t!35058 result!17215) b_and!37829)))

(declare-fun m!1034597 () Bool)

(assert (=> start!97846 m!1034597))

(declare-fun m!1034599 () Bool)

(assert (=> start!97846 m!1034599))

(declare-fun m!1034601 () Bool)

(assert (=> b!1119143 m!1034601))

(declare-fun m!1034603 () Bool)

(assert (=> b!1119143 m!1034603))

(declare-fun m!1034605 () Bool)

(assert (=> b!1119141 m!1034605))

(declare-fun m!1034607 () Bool)

(assert (=> b!1119151 m!1034607))

(declare-fun m!1034609 () Bool)

(assert (=> b!1119151 m!1034609))

(declare-fun m!1034611 () Bool)

(assert (=> b!1119151 m!1034611))

(declare-fun m!1034613 () Bool)

(assert (=> b!1119151 m!1034613))

(declare-fun m!1034615 () Bool)

(assert (=> b!1119145 m!1034615))

(declare-fun m!1034617 () Bool)

(assert (=> b!1119153 m!1034617))

(declare-fun m!1034619 () Bool)

(assert (=> b!1119148 m!1034619))

(declare-fun m!1034621 () Bool)

(assert (=> b!1119148 m!1034621))

(declare-fun m!1034623 () Bool)

(assert (=> b!1119140 m!1034623))

(declare-fun m!1034625 () Bool)

(assert (=> mapNonEmpty!43879 m!1034625))

(declare-fun m!1034627 () Bool)

(assert (=> b!1119142 m!1034627))

(declare-fun m!1034629 () Bool)

(assert (=> b!1119144 m!1034629))

(check-sat (not b!1119151) (not b!1119141) (not b!1119148) (not start!97846) (not b!1119144) (not b!1119143) (not b!1119153) tp_is_empty!28041 (not b_next!23511) b_and!37829 (not b!1119142) (not b!1119140) (not mapNonEmpty!43879) (not b_lambda!18515))
(check-sat b_and!37829 (not b_next!23511))
