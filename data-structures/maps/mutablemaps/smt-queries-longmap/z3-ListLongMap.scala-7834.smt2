; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97786 () Bool)

(assert start!97786)

(declare-fun b_free!23451 () Bool)

(declare-fun b_next!23451 () Bool)

(assert (=> start!97786 (= b_free!23451 (not b_next!23451))))

(declare-fun tp!83057 () Bool)

(declare-fun b_and!37747 () Bool)

(assert (=> start!97786 (= tp!83057 b_and!37747)))

(declare-fun b!1117860 () Bool)

(declare-fun res!746624 () Bool)

(declare-fun e!636801 () Bool)

(assert (=> b!1117860 (=> (not res!746624) (not e!636801))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72794 0))(
  ( (array!72795 (arr!35046 (Array (_ BitVec 32) (_ BitVec 64))) (size!35583 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72794)

(assert (=> b!1117860 (= res!746624 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35583 _keys!1208))))))

(declare-fun b!1117861 () Bool)

(declare-fun res!746617 () Bool)

(assert (=> b!1117861 (=> (not res!746617) (not e!636801))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117861 (= res!746617 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43789 () Bool)

(declare-fun mapRes!43789 () Bool)

(declare-fun tp!83058 () Bool)

(declare-fun e!636798 () Bool)

(assert (=> mapNonEmpty!43789 (= mapRes!43789 (and tp!83058 e!636798))))

(declare-datatypes ((V!42435 0))(
  ( (V!42436 (val!14047 Int)) )
))
(declare-datatypes ((ValueCell!13281 0))(
  ( (ValueCellFull!13281 (v!16681 V!42435)) (EmptyCell!13281) )
))
(declare-fun mapRest!43789 () (Array (_ BitVec 32) ValueCell!13281))

(declare-fun mapValue!43789 () ValueCell!13281)

(declare-datatypes ((array!72796 0))(
  ( (array!72797 (arr!35047 (Array (_ BitVec 32) ValueCell!13281)) (size!35584 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72796)

(declare-fun mapKey!43789 () (_ BitVec 32))

(assert (=> mapNonEmpty!43789 (= (arr!35047 _values!996) (store mapRest!43789 mapKey!43789 mapValue!43789))))

(declare-fun b!1117862 () Bool)

(declare-fun e!636799 () Bool)

(assert (=> b!1117862 (= e!636799 true)))

(declare-fun zeroValue!944 () V!42435)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42435)

(declare-datatypes ((tuple2!17672 0))(
  ( (tuple2!17673 (_1!8846 (_ BitVec 64)) (_2!8846 V!42435)) )
))
(declare-datatypes ((List!24506 0))(
  ( (Nil!24503) (Cons!24502 (h!25711 tuple2!17672) (t!34994 List!24506)) )
))
(declare-datatypes ((ListLongMap!15653 0))(
  ( (ListLongMap!15654 (toList!7842 List!24506)) )
))
(declare-fun lt!497353 () ListLongMap!15653)

(declare-fun getCurrentListMapNoExtraKeys!4303 (array!72794 array!72796 (_ BitVec 32) (_ BitVec 32) V!42435 V!42435 (_ BitVec 32) Int) ListLongMap!15653)

(assert (=> b!1117862 (= lt!497353 (getCurrentListMapNoExtraKeys!4303 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1117863 () Bool)

(declare-fun res!746620 () Bool)

(assert (=> b!1117863 (=> (not res!746620) (not e!636801))))

(declare-datatypes ((List!24507 0))(
  ( (Nil!24504) (Cons!24503 (h!25712 (_ BitVec 64)) (t!34995 List!24507)) )
))
(declare-fun arrayNoDuplicates!0 (array!72794 (_ BitVec 32) List!24507) Bool)

(assert (=> b!1117863 (= res!746620 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24504))))

(declare-fun b!1117864 () Bool)

(declare-fun e!636802 () Bool)

(declare-fun e!636803 () Bool)

(assert (=> b!1117864 (= e!636802 (and e!636803 mapRes!43789))))

(declare-fun condMapEmpty!43789 () Bool)

(declare-fun mapDefault!43789 () ValueCell!13281)

(assert (=> b!1117864 (= condMapEmpty!43789 (= (arr!35047 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13281)) mapDefault!43789)))))

(declare-fun b!1117866 () Bool)

(declare-fun e!636797 () Bool)

(assert (=> b!1117866 (= e!636801 e!636797)))

(declare-fun res!746622 () Bool)

(assert (=> b!1117866 (=> (not res!746622) (not e!636797))))

(declare-fun lt!497354 () array!72794)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72794 (_ BitVec 32)) Bool)

(assert (=> b!1117866 (= res!746622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497354 mask!1564))))

(assert (=> b!1117866 (= lt!497354 (array!72795 (store (arr!35046 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35583 _keys!1208)))))

(declare-fun b!1117867 () Bool)

(declare-fun tp_is_empty!27981 () Bool)

(assert (=> b!1117867 (= e!636798 tp_is_empty!27981)))

(declare-fun b!1117868 () Bool)

(assert (=> b!1117868 (= e!636803 tp_is_empty!27981)))

(declare-fun b!1117869 () Bool)

(declare-fun res!746616 () Bool)

(assert (=> b!1117869 (=> (not res!746616) (not e!636801))))

(assert (=> b!1117869 (= res!746616 (and (= (size!35584 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35583 _keys!1208) (size!35584 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117870 () Bool)

(assert (=> b!1117870 (= e!636797 (not e!636799))))

(declare-fun res!746625 () Bool)

(assert (=> b!1117870 (=> res!746625 e!636799)))

(assert (=> b!1117870 (= res!746625 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117870 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36599 0))(
  ( (Unit!36600) )
))
(declare-fun lt!497355 () Unit!36599)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72794 (_ BitVec 64) (_ BitVec 32)) Unit!36599)

(assert (=> b!1117870 (= lt!497355 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1117871 () Bool)

(declare-fun res!746619 () Bool)

(assert (=> b!1117871 (=> (not res!746619) (not e!636801))))

(assert (=> b!1117871 (= res!746619 (= (select (arr!35046 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43789 () Bool)

(assert (=> mapIsEmpty!43789 mapRes!43789))

(declare-fun b!1117872 () Bool)

(declare-fun res!746618 () Bool)

(assert (=> b!1117872 (=> (not res!746618) (not e!636801))))

(assert (=> b!1117872 (= res!746618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117873 () Bool)

(declare-fun res!746621 () Bool)

(assert (=> b!1117873 (=> (not res!746621) (not e!636797))))

(assert (=> b!1117873 (= res!746621 (arrayNoDuplicates!0 lt!497354 #b00000000000000000000000000000000 Nil!24504))))

(declare-fun res!746623 () Bool)

(assert (=> start!97786 (=> (not res!746623) (not e!636801))))

(assert (=> start!97786 (= res!746623 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35583 _keys!1208))))))

(assert (=> start!97786 e!636801))

(assert (=> start!97786 tp_is_empty!27981))

(declare-fun array_inv!26792 (array!72794) Bool)

(assert (=> start!97786 (array_inv!26792 _keys!1208)))

(assert (=> start!97786 true))

(assert (=> start!97786 tp!83057))

(declare-fun array_inv!26793 (array!72796) Bool)

(assert (=> start!97786 (and (array_inv!26793 _values!996) e!636802)))

(declare-fun b!1117865 () Bool)

(declare-fun res!746615 () Bool)

(assert (=> b!1117865 (=> (not res!746615) (not e!636801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117865 (= res!746615 (validKeyInArray!0 k0!934))))

(assert (= (and start!97786 res!746623) b!1117861))

(assert (= (and b!1117861 res!746617) b!1117869))

(assert (= (and b!1117869 res!746616) b!1117872))

(assert (= (and b!1117872 res!746618) b!1117863))

(assert (= (and b!1117863 res!746620) b!1117860))

(assert (= (and b!1117860 res!746624) b!1117865))

(assert (= (and b!1117865 res!746615) b!1117871))

(assert (= (and b!1117871 res!746619) b!1117866))

(assert (= (and b!1117866 res!746622) b!1117873))

(assert (= (and b!1117873 res!746621) b!1117870))

(assert (= (and b!1117870 (not res!746625)) b!1117862))

(assert (= (and b!1117864 condMapEmpty!43789) mapIsEmpty!43789))

(assert (= (and b!1117864 (not condMapEmpty!43789)) mapNonEmpty!43789))

(get-info :version)

(assert (= (and mapNonEmpty!43789 ((_ is ValueCellFull!13281) mapValue!43789)) b!1117867))

(assert (= (and b!1117864 ((_ is ValueCellFull!13281) mapDefault!43789)) b!1117868))

(assert (= start!97786 b!1117864))

(declare-fun m!1033697 () Bool)

(assert (=> b!1117873 m!1033697))

(declare-fun m!1033699 () Bool)

(assert (=> b!1117865 m!1033699))

(declare-fun m!1033701 () Bool)

(assert (=> b!1117863 m!1033701))

(declare-fun m!1033703 () Bool)

(assert (=> b!1117872 m!1033703))

(declare-fun m!1033705 () Bool)

(assert (=> b!1117866 m!1033705))

(declare-fun m!1033707 () Bool)

(assert (=> b!1117866 m!1033707))

(declare-fun m!1033709 () Bool)

(assert (=> b!1117861 m!1033709))

(declare-fun m!1033711 () Bool)

(assert (=> b!1117871 m!1033711))

(declare-fun m!1033713 () Bool)

(assert (=> b!1117870 m!1033713))

(declare-fun m!1033715 () Bool)

(assert (=> b!1117870 m!1033715))

(declare-fun m!1033717 () Bool)

(assert (=> b!1117862 m!1033717))

(declare-fun m!1033719 () Bool)

(assert (=> mapNonEmpty!43789 m!1033719))

(declare-fun m!1033721 () Bool)

(assert (=> start!97786 m!1033721))

(declare-fun m!1033723 () Bool)

(assert (=> start!97786 m!1033723))

(check-sat (not b!1117865) (not mapNonEmpty!43789) (not b!1117861) (not b!1117863) (not b!1117866) (not b!1117862) (not b!1117873) b_and!37747 (not b!1117872) (not b!1117870) (not b_next!23451) (not start!97786) tp_is_empty!27981)
(check-sat b_and!37747 (not b_next!23451))
