; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97672 () Bool)

(assert start!97672)

(declare-fun b!1115614 () Bool)

(declare-fun e!635749 () Bool)

(declare-fun tp_is_empty!27867 () Bool)

(assert (=> b!1115614 (= e!635749 tp_is_empty!27867)))

(declare-fun res!744887 () Bool)

(declare-fun e!635753 () Bool)

(assert (=> start!97672 (=> (not res!744887) (not e!635753))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72574 0))(
  ( (array!72575 (arr!34936 (Array (_ BitVec 32) (_ BitVec 64))) (size!35473 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72574)

(assert (=> start!97672 (= res!744887 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35473 _keys!1208))))))

(assert (=> start!97672 e!635753))

(declare-fun array_inv!26712 (array!72574) Bool)

(assert (=> start!97672 (array_inv!26712 _keys!1208)))

(assert (=> start!97672 true))

(declare-datatypes ((V!42283 0))(
  ( (V!42284 (val!13990 Int)) )
))
(declare-datatypes ((ValueCell!13224 0))(
  ( (ValueCellFull!13224 (v!16624 V!42283)) (EmptyCell!13224) )
))
(declare-datatypes ((array!72576 0))(
  ( (array!72577 (arr!34937 (Array (_ BitVec 32) ValueCell!13224)) (size!35474 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72576)

(declare-fun e!635748 () Bool)

(declare-fun array_inv!26713 (array!72576) Bool)

(assert (=> start!97672 (and (array_inv!26713 _values!996) e!635748)))

(declare-fun b!1115615 () Bool)

(declare-fun res!744888 () Bool)

(assert (=> b!1115615 (=> (not res!744888) (not e!635753))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72574 (_ BitVec 32)) Bool)

(assert (=> b!1115615 (= res!744888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115616 () Bool)

(declare-fun res!744882 () Bool)

(assert (=> b!1115616 (=> (not res!744882) (not e!635753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115616 (= res!744882 (validMask!0 mask!1564))))

(declare-fun b!1115617 () Bool)

(declare-fun e!635750 () Bool)

(assert (=> b!1115617 (= e!635750 tp_is_empty!27867)))

(declare-fun mapNonEmpty!43618 () Bool)

(declare-fun mapRes!43618 () Bool)

(declare-fun tp!82863 () Bool)

(assert (=> mapNonEmpty!43618 (= mapRes!43618 (and tp!82863 e!635749))))

(declare-fun mapRest!43618 () (Array (_ BitVec 32) ValueCell!13224))

(declare-fun mapValue!43618 () ValueCell!13224)

(declare-fun mapKey!43618 () (_ BitVec 32))

(assert (=> mapNonEmpty!43618 (= (arr!34937 _values!996) (store mapRest!43618 mapKey!43618 mapValue!43618))))

(declare-fun b!1115618 () Bool)

(assert (=> b!1115618 (= e!635748 (and e!635750 mapRes!43618))))

(declare-fun condMapEmpty!43618 () Bool)

(declare-fun mapDefault!43618 () ValueCell!13224)

(assert (=> b!1115618 (= condMapEmpty!43618 (= (arr!34937 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13224)) mapDefault!43618)))))

(declare-fun b!1115619 () Bool)

(declare-fun res!744890 () Bool)

(assert (=> b!1115619 (=> (not res!744890) (not e!635753))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115619 (= res!744890 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35473 _keys!1208))))))

(declare-fun b!1115620 () Bool)

(declare-fun e!635752 () Bool)

(assert (=> b!1115620 (= e!635753 e!635752)))

(declare-fun res!744889 () Bool)

(assert (=> b!1115620 (=> (not res!744889) (not e!635752))))

(declare-fun lt!496989 () array!72574)

(assert (=> b!1115620 (= res!744889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496989 mask!1564))))

(assert (=> b!1115620 (= lt!496989 (array!72575 (store (arr!34936 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35473 _keys!1208)))))

(declare-fun b!1115621 () Bool)

(declare-fun res!744891 () Bool)

(assert (=> b!1115621 (=> (not res!744891) (not e!635753))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1115621 (= res!744891 (= (select (arr!34936 _keys!1208) i!673) k0!934))))

(declare-fun b!1115622 () Bool)

(declare-fun res!744883 () Bool)

(assert (=> b!1115622 (=> (not res!744883) (not e!635753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115622 (= res!744883 (validKeyInArray!0 k0!934))))

(declare-fun b!1115623 () Bool)

(declare-fun res!744885 () Bool)

(assert (=> b!1115623 (=> (not res!744885) (not e!635752))))

(declare-datatypes ((List!24457 0))(
  ( (Nil!24454) (Cons!24453 (h!25662 (_ BitVec 64)) (t!34945 List!24457)) )
))
(declare-fun arrayNoDuplicates!0 (array!72574 (_ BitVec 32) List!24457) Bool)

(assert (=> b!1115623 (= res!744885 (arrayNoDuplicates!0 lt!496989 #b00000000000000000000000000000000 Nil!24454))))

(declare-fun mapIsEmpty!43618 () Bool)

(assert (=> mapIsEmpty!43618 mapRes!43618))

(declare-fun b!1115624 () Bool)

(declare-fun res!744886 () Bool)

(assert (=> b!1115624 (=> (not res!744886) (not e!635753))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115624 (= res!744886 (and (= (size!35474 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35473 _keys!1208) (size!35474 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115625 () Bool)

(assert (=> b!1115625 (= e!635752 (not true))))

(declare-fun arrayContainsKey!0 (array!72574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115625 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36513 0))(
  ( (Unit!36514) )
))
(declare-fun lt!496988 () Unit!36513)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72574 (_ BitVec 64) (_ BitVec 32)) Unit!36513)

(assert (=> b!1115625 (= lt!496988 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1115626 () Bool)

(declare-fun res!744884 () Bool)

(assert (=> b!1115626 (=> (not res!744884) (not e!635753))))

(assert (=> b!1115626 (= res!744884 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24454))))

(assert (= (and start!97672 res!744887) b!1115616))

(assert (= (and b!1115616 res!744882) b!1115624))

(assert (= (and b!1115624 res!744886) b!1115615))

(assert (= (and b!1115615 res!744888) b!1115626))

(assert (= (and b!1115626 res!744884) b!1115619))

(assert (= (and b!1115619 res!744890) b!1115622))

(assert (= (and b!1115622 res!744883) b!1115621))

(assert (= (and b!1115621 res!744891) b!1115620))

(assert (= (and b!1115620 res!744889) b!1115623))

(assert (= (and b!1115623 res!744885) b!1115625))

(assert (= (and b!1115618 condMapEmpty!43618) mapIsEmpty!43618))

(assert (= (and b!1115618 (not condMapEmpty!43618)) mapNonEmpty!43618))

(get-info :version)

(assert (= (and mapNonEmpty!43618 ((_ is ValueCellFull!13224) mapValue!43618)) b!1115614))

(assert (= (and b!1115618 ((_ is ValueCellFull!13224) mapDefault!43618)) b!1115617))

(assert (= start!97672 b!1115618))

(declare-fun m!1032201 () Bool)

(assert (=> b!1115625 m!1032201))

(declare-fun m!1032203 () Bool)

(assert (=> b!1115625 m!1032203))

(declare-fun m!1032205 () Bool)

(assert (=> b!1115616 m!1032205))

(declare-fun m!1032207 () Bool)

(assert (=> start!97672 m!1032207))

(declare-fun m!1032209 () Bool)

(assert (=> start!97672 m!1032209))

(declare-fun m!1032211 () Bool)

(assert (=> b!1115626 m!1032211))

(declare-fun m!1032213 () Bool)

(assert (=> mapNonEmpty!43618 m!1032213))

(declare-fun m!1032215 () Bool)

(assert (=> b!1115623 m!1032215))

(declare-fun m!1032217 () Bool)

(assert (=> b!1115615 m!1032217))

(declare-fun m!1032219 () Bool)

(assert (=> b!1115621 m!1032219))

(declare-fun m!1032221 () Bool)

(assert (=> b!1115620 m!1032221))

(declare-fun m!1032223 () Bool)

(assert (=> b!1115620 m!1032223))

(declare-fun m!1032225 () Bool)

(assert (=> b!1115622 m!1032225))

(check-sat (not b!1115615) (not b!1115622) tp_is_empty!27867 (not mapNonEmpty!43618) (not b!1115616) (not b!1115625) (not b!1115623) (not b!1115626) (not b!1115620) (not start!97672))
(check-sat)
