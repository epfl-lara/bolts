; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97630 () Bool)

(assert start!97630)

(declare-fun res!744252 () Bool)

(declare-fun e!635370 () Bool)

(assert (=> start!97630 (=> (not res!744252) (not e!635370))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72498 0))(
  ( (array!72499 (arr!34898 (Array (_ BitVec 32) (_ BitVec 64))) (size!35435 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72498)

(assert (=> start!97630 (= res!744252 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35435 _keys!1208))))))

(assert (=> start!97630 e!635370))

(declare-fun array_inv!26698 (array!72498) Bool)

(assert (=> start!97630 (array_inv!26698 _keys!1208)))

(assert (=> start!97630 true))

(declare-datatypes ((V!42227 0))(
  ( (V!42228 (val!13969 Int)) )
))
(declare-datatypes ((ValueCell!13203 0))(
  ( (ValueCellFull!13203 (v!16603 V!42227)) (EmptyCell!13203) )
))
(declare-datatypes ((array!72500 0))(
  ( (array!72501 (arr!34899 (Array (_ BitVec 32) ValueCell!13203)) (size!35436 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72500)

(declare-fun e!635371 () Bool)

(declare-fun array_inv!26699 (array!72500) Bool)

(assert (=> start!97630 (and (array_inv!26699 _values!996) e!635371)))

(declare-fun b!1114795 () Bool)

(declare-fun res!744259 () Bool)

(assert (=> b!1114795 (=> (not res!744259) (not e!635370))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114795 (= res!744259 (validKeyInArray!0 k0!934))))

(declare-fun b!1114796 () Bool)

(declare-fun e!635373 () Bool)

(declare-fun mapRes!43555 () Bool)

(assert (=> b!1114796 (= e!635371 (and e!635373 mapRes!43555))))

(declare-fun condMapEmpty!43555 () Bool)

(declare-fun mapDefault!43555 () ValueCell!13203)

(assert (=> b!1114796 (= condMapEmpty!43555 (= (arr!34899 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13203)) mapDefault!43555)))))

(declare-fun b!1114797 () Bool)

(declare-fun res!744255 () Bool)

(assert (=> b!1114797 (=> (not res!744255) (not e!635370))))

(declare-datatypes ((List!24444 0))(
  ( (Nil!24441) (Cons!24440 (h!25649 (_ BitVec 64)) (t!34932 List!24444)) )
))
(declare-fun arrayNoDuplicates!0 (array!72498 (_ BitVec 32) List!24444) Bool)

(assert (=> b!1114797 (= res!744255 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24441))))

(declare-fun b!1114798 () Bool)

(declare-fun e!635372 () Bool)

(declare-fun tp_is_empty!27825 () Bool)

(assert (=> b!1114798 (= e!635372 tp_is_empty!27825)))

(declare-fun b!1114799 () Bool)

(declare-fun res!744261 () Bool)

(assert (=> b!1114799 (=> (not res!744261) (not e!635370))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114799 (= res!744261 (validMask!0 mask!1564))))

(declare-fun b!1114800 () Bool)

(declare-fun res!744253 () Bool)

(assert (=> b!1114800 (=> (not res!744253) (not e!635370))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114800 (= res!744253 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35435 _keys!1208))))))

(declare-fun b!1114801 () Bool)

(declare-fun e!635374 () Bool)

(assert (=> b!1114801 (= e!635370 e!635374)))

(declare-fun res!744256 () Bool)

(assert (=> b!1114801 (=> (not res!744256) (not e!635374))))

(declare-fun lt!496863 () array!72498)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72498 (_ BitVec 32)) Bool)

(assert (=> b!1114801 (= res!744256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496863 mask!1564))))

(assert (=> b!1114801 (= lt!496863 (array!72499 (store (arr!34898 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35435 _keys!1208)))))

(declare-fun b!1114802 () Bool)

(declare-fun res!744254 () Bool)

(assert (=> b!1114802 (=> (not res!744254) (not e!635370))))

(assert (=> b!1114802 (= res!744254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114803 () Bool)

(assert (=> b!1114803 (= e!635373 tp_is_empty!27825)))

(declare-fun b!1114804 () Bool)

(declare-fun res!744260 () Bool)

(assert (=> b!1114804 (=> (not res!744260) (not e!635370))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114804 (= res!744260 (and (= (size!35436 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35435 _keys!1208) (size!35436 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114805 () Bool)

(declare-fun res!744257 () Bool)

(assert (=> b!1114805 (=> (not res!744257) (not e!635374))))

(assert (=> b!1114805 (= res!744257 (arrayNoDuplicates!0 lt!496863 #b00000000000000000000000000000000 Nil!24441))))

(declare-fun b!1114806 () Bool)

(assert (=> b!1114806 (= e!635374 (not true))))

(declare-fun arrayContainsKey!0 (array!72498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114806 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36493 0))(
  ( (Unit!36494) )
))
(declare-fun lt!496862 () Unit!36493)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72498 (_ BitVec 64) (_ BitVec 32)) Unit!36493)

(assert (=> b!1114806 (= lt!496862 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1114807 () Bool)

(declare-fun res!744258 () Bool)

(assert (=> b!1114807 (=> (not res!744258) (not e!635370))))

(assert (=> b!1114807 (= res!744258 (= (select (arr!34898 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43555 () Bool)

(assert (=> mapIsEmpty!43555 mapRes!43555))

(declare-fun mapNonEmpty!43555 () Bool)

(declare-fun tp!82800 () Bool)

(assert (=> mapNonEmpty!43555 (= mapRes!43555 (and tp!82800 e!635372))))

(declare-fun mapValue!43555 () ValueCell!13203)

(declare-fun mapKey!43555 () (_ BitVec 32))

(declare-fun mapRest!43555 () (Array (_ BitVec 32) ValueCell!13203))

(assert (=> mapNonEmpty!43555 (= (arr!34899 _values!996) (store mapRest!43555 mapKey!43555 mapValue!43555))))

(assert (= (and start!97630 res!744252) b!1114799))

(assert (= (and b!1114799 res!744261) b!1114804))

(assert (= (and b!1114804 res!744260) b!1114802))

(assert (= (and b!1114802 res!744254) b!1114797))

(assert (= (and b!1114797 res!744255) b!1114800))

(assert (= (and b!1114800 res!744253) b!1114795))

(assert (= (and b!1114795 res!744259) b!1114807))

(assert (= (and b!1114807 res!744258) b!1114801))

(assert (= (and b!1114801 res!744256) b!1114805))

(assert (= (and b!1114805 res!744257) b!1114806))

(assert (= (and b!1114796 condMapEmpty!43555) mapIsEmpty!43555))

(assert (= (and b!1114796 (not condMapEmpty!43555)) mapNonEmpty!43555))

(get-info :version)

(assert (= (and mapNonEmpty!43555 ((_ is ValueCellFull!13203) mapValue!43555)) b!1114798))

(assert (= (and b!1114796 ((_ is ValueCellFull!13203) mapDefault!43555)) b!1114803))

(assert (= start!97630 b!1114796))

(declare-fun m!1031655 () Bool)

(assert (=> mapNonEmpty!43555 m!1031655))

(declare-fun m!1031657 () Bool)

(assert (=> b!1114806 m!1031657))

(declare-fun m!1031659 () Bool)

(assert (=> b!1114806 m!1031659))

(declare-fun m!1031661 () Bool)

(assert (=> b!1114807 m!1031661))

(declare-fun m!1031663 () Bool)

(assert (=> b!1114801 m!1031663))

(declare-fun m!1031665 () Bool)

(assert (=> b!1114801 m!1031665))

(declare-fun m!1031667 () Bool)

(assert (=> b!1114795 m!1031667))

(declare-fun m!1031669 () Bool)

(assert (=> b!1114799 m!1031669))

(declare-fun m!1031671 () Bool)

(assert (=> b!1114797 m!1031671))

(declare-fun m!1031673 () Bool)

(assert (=> b!1114802 m!1031673))

(declare-fun m!1031675 () Bool)

(assert (=> b!1114805 m!1031675))

(declare-fun m!1031677 () Bool)

(assert (=> start!97630 m!1031677))

(declare-fun m!1031679 () Bool)

(assert (=> start!97630 m!1031679))

(check-sat (not b!1114797) tp_is_empty!27825 (not b!1114801) (not b!1114806) (not start!97630) (not b!1114795) (not b!1114802) (not mapNonEmpty!43555) (not b!1114805) (not b!1114799))
(check-sat)
