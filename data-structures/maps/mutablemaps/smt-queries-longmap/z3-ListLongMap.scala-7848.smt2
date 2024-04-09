; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97870 () Bool)

(assert start!97870)

(declare-fun b_free!23535 () Bool)

(declare-fun b_next!23535 () Bool)

(assert (=> start!97870 (= b_free!23535 (not b_next!23535))))

(declare-fun tp!83309 () Bool)

(declare-fun b_and!37875 () Bool)

(assert (=> start!97870 (= tp!83309 b_and!37875)))

(declare-fun b!1119668 () Bool)

(declare-fun e!637685 () Bool)

(declare-fun e!637679 () Bool)

(assert (=> b!1119668 (= e!637685 e!637679)))

(declare-fun res!748005 () Bool)

(assert (=> b!1119668 (=> (not res!748005) (not e!637679))))

(declare-datatypes ((array!72956 0))(
  ( (array!72957 (arr!35127 (Array (_ BitVec 32) (_ BitVec 64))) (size!35664 (_ BitVec 32))) )
))
(declare-fun lt!497802 () array!72956)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72956 (_ BitVec 32)) Bool)

(assert (=> b!1119668 (= res!748005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497802 mask!1564))))

(declare-fun _keys!1208 () array!72956)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119668 (= lt!497802 (array!72957 (store (arr!35127 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35664 _keys!1208)))))

(declare-fun b!1119669 () Bool)

(declare-fun res!748006 () Bool)

(assert (=> b!1119669 (=> (not res!748006) (not e!637685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119669 (= res!748006 (validMask!0 mask!1564))))

(declare-fun b!1119670 () Bool)

(declare-fun e!637683 () Bool)

(assert (=> b!1119670 (= e!637683 true)))

(declare-datatypes ((V!42547 0))(
  ( (V!42548 (val!14089 Int)) )
))
(declare-fun zeroValue!944 () V!42547)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13323 0))(
  ( (ValueCellFull!13323 (v!16723 V!42547)) (EmptyCell!13323) )
))
(declare-datatypes ((array!72958 0))(
  ( (array!72959 (arr!35128 (Array (_ BitVec 32) ValueCell!13323)) (size!35665 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72958)

(declare-fun minValue!944 () V!42547)

(declare-datatypes ((tuple2!17732 0))(
  ( (tuple2!17733 (_1!8876 (_ BitVec 64)) (_2!8876 V!42547)) )
))
(declare-datatypes ((List!24568 0))(
  ( (Nil!24565) (Cons!24564 (h!25773 tuple2!17732) (t!35102 List!24568)) )
))
(declare-datatypes ((ListLongMap!15713 0))(
  ( (ListLongMap!15714 (toList!7872 List!24568)) )
))
(declare-fun lt!497800 () ListLongMap!15713)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4333 (array!72956 array!72958 (_ BitVec 32) (_ BitVec 32) V!42547 V!42547 (_ BitVec 32) Int) ListLongMap!15713)

(declare-fun dynLambda!2435 (Int (_ BitVec 64)) V!42547)

(assert (=> b!1119670 (= lt!497800 (getCurrentListMapNoExtraKeys!4333 lt!497802 (array!72959 (store (arr!35128 _values!996) i!673 (ValueCellFull!13323 (dynLambda!2435 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35665 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497799 () ListLongMap!15713)

(assert (=> b!1119670 (= lt!497799 (getCurrentListMapNoExtraKeys!4333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!748008 () Bool)

(assert (=> start!97870 (=> (not res!748008) (not e!637685))))

(assert (=> start!97870 (= res!748008 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35664 _keys!1208))))))

(assert (=> start!97870 e!637685))

(declare-fun tp_is_empty!28065 () Bool)

(assert (=> start!97870 tp_is_empty!28065))

(declare-fun array_inv!26850 (array!72956) Bool)

(assert (=> start!97870 (array_inv!26850 _keys!1208)))

(assert (=> start!97870 true))

(assert (=> start!97870 tp!83309))

(declare-fun e!637680 () Bool)

(declare-fun array_inv!26851 (array!72958) Bool)

(assert (=> start!97870 (and (array_inv!26851 _values!996) e!637680)))

(declare-fun mapNonEmpty!43915 () Bool)

(declare-fun mapRes!43915 () Bool)

(declare-fun tp!83310 () Bool)

(declare-fun e!637682 () Bool)

(assert (=> mapNonEmpty!43915 (= mapRes!43915 (and tp!83310 e!637682))))

(declare-fun mapRest!43915 () (Array (_ BitVec 32) ValueCell!13323))

(declare-fun mapValue!43915 () ValueCell!13323)

(declare-fun mapKey!43915 () (_ BitVec 32))

(assert (=> mapNonEmpty!43915 (= (arr!35128 _values!996) (store mapRest!43915 mapKey!43915 mapValue!43915))))

(declare-fun b!1119671 () Bool)

(assert (=> b!1119671 (= e!637679 (not e!637683))))

(declare-fun res!748007 () Bool)

(assert (=> b!1119671 (=> res!748007 e!637683)))

(assert (=> b!1119671 (= res!748007 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119671 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36657 0))(
  ( (Unit!36658) )
))
(declare-fun lt!497801 () Unit!36657)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72956 (_ BitVec 64) (_ BitVec 32)) Unit!36657)

(assert (=> b!1119671 (= lt!497801 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1119672 () Bool)

(declare-fun res!748011 () Bool)

(assert (=> b!1119672 (=> (not res!748011) (not e!637685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119672 (= res!748011 (validKeyInArray!0 k0!934))))

(declare-fun b!1119673 () Bool)

(declare-fun res!748003 () Bool)

(assert (=> b!1119673 (=> (not res!748003) (not e!637685))))

(assert (=> b!1119673 (= res!748003 (= (select (arr!35127 _keys!1208) i!673) k0!934))))

(declare-fun b!1119674 () Bool)

(declare-fun res!748004 () Bool)

(assert (=> b!1119674 (=> (not res!748004) (not e!637685))))

(declare-datatypes ((List!24569 0))(
  ( (Nil!24566) (Cons!24565 (h!25774 (_ BitVec 64)) (t!35103 List!24569)) )
))
(declare-fun arrayNoDuplicates!0 (array!72956 (_ BitVec 32) List!24569) Bool)

(assert (=> b!1119674 (= res!748004 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24566))))

(declare-fun b!1119675 () Bool)

(declare-fun res!748002 () Bool)

(assert (=> b!1119675 (=> (not res!748002) (not e!637685))))

(assert (=> b!1119675 (= res!748002 (and (= (size!35665 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35664 _keys!1208) (size!35665 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119676 () Bool)

(declare-fun res!748001 () Bool)

(assert (=> b!1119676 (=> (not res!748001) (not e!637685))))

(assert (=> b!1119676 (= res!748001 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35664 _keys!1208))))))

(declare-fun mapIsEmpty!43915 () Bool)

(assert (=> mapIsEmpty!43915 mapRes!43915))

(declare-fun b!1119677 () Bool)

(declare-fun e!637684 () Bool)

(assert (=> b!1119677 (= e!637680 (and e!637684 mapRes!43915))))

(declare-fun condMapEmpty!43915 () Bool)

(declare-fun mapDefault!43915 () ValueCell!13323)

(assert (=> b!1119677 (= condMapEmpty!43915 (= (arr!35128 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13323)) mapDefault!43915)))))

(declare-fun b!1119678 () Bool)

(declare-fun res!748010 () Bool)

(assert (=> b!1119678 (=> (not res!748010) (not e!637679))))

(assert (=> b!1119678 (= res!748010 (arrayNoDuplicates!0 lt!497802 #b00000000000000000000000000000000 Nil!24566))))

(declare-fun b!1119679 () Bool)

(declare-fun res!748009 () Bool)

(assert (=> b!1119679 (=> (not res!748009) (not e!637685))))

(assert (=> b!1119679 (= res!748009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119680 () Bool)

(assert (=> b!1119680 (= e!637682 tp_is_empty!28065)))

(declare-fun b!1119681 () Bool)

(assert (=> b!1119681 (= e!637684 tp_is_empty!28065)))

(assert (= (and start!97870 res!748008) b!1119669))

(assert (= (and b!1119669 res!748006) b!1119675))

(assert (= (and b!1119675 res!748002) b!1119679))

(assert (= (and b!1119679 res!748009) b!1119674))

(assert (= (and b!1119674 res!748004) b!1119676))

(assert (= (and b!1119676 res!748001) b!1119672))

(assert (= (and b!1119672 res!748011) b!1119673))

(assert (= (and b!1119673 res!748003) b!1119668))

(assert (= (and b!1119668 res!748005) b!1119678))

(assert (= (and b!1119678 res!748010) b!1119671))

(assert (= (and b!1119671 (not res!748007)) b!1119670))

(assert (= (and b!1119677 condMapEmpty!43915) mapIsEmpty!43915))

(assert (= (and b!1119677 (not condMapEmpty!43915)) mapNonEmpty!43915))

(get-info :version)

(assert (= (and mapNonEmpty!43915 ((_ is ValueCellFull!13323) mapValue!43915)) b!1119680))

(assert (= (and b!1119677 ((_ is ValueCellFull!13323) mapDefault!43915)) b!1119681))

(assert (= start!97870 b!1119677))

(declare-fun b_lambda!18539 () Bool)

(assert (=> (not b_lambda!18539) (not b!1119670)))

(declare-fun t!35101 () Bool)

(declare-fun tb!8355 () Bool)

(assert (=> (and start!97870 (= defaultEntry!1004 defaultEntry!1004) t!35101) tb!8355))

(declare-fun result!17263 () Bool)

(assert (=> tb!8355 (= result!17263 tp_is_empty!28065)))

(assert (=> b!1119670 t!35101))

(declare-fun b_and!37877 () Bool)

(assert (= b_and!37875 (and (=> t!35101 result!17263) b_and!37877)))

(declare-fun m!1035005 () Bool)

(assert (=> b!1119671 m!1035005))

(declare-fun m!1035007 () Bool)

(assert (=> b!1119671 m!1035007))

(declare-fun m!1035009 () Bool)

(assert (=> b!1119668 m!1035009))

(declare-fun m!1035011 () Bool)

(assert (=> b!1119668 m!1035011))

(declare-fun m!1035013 () Bool)

(assert (=> b!1119678 m!1035013))

(declare-fun m!1035015 () Bool)

(assert (=> b!1119673 m!1035015))

(declare-fun m!1035017 () Bool)

(assert (=> b!1119669 m!1035017))

(declare-fun m!1035019 () Bool)

(assert (=> start!97870 m!1035019))

(declare-fun m!1035021 () Bool)

(assert (=> start!97870 m!1035021))

(declare-fun m!1035023 () Bool)

(assert (=> mapNonEmpty!43915 m!1035023))

(declare-fun m!1035025 () Bool)

(assert (=> b!1119672 m!1035025))

(declare-fun m!1035027 () Bool)

(assert (=> b!1119670 m!1035027))

(declare-fun m!1035029 () Bool)

(assert (=> b!1119670 m!1035029))

(declare-fun m!1035031 () Bool)

(assert (=> b!1119670 m!1035031))

(declare-fun m!1035033 () Bool)

(assert (=> b!1119670 m!1035033))

(declare-fun m!1035035 () Bool)

(assert (=> b!1119674 m!1035035))

(declare-fun m!1035037 () Bool)

(assert (=> b!1119679 m!1035037))

(check-sat (not mapNonEmpty!43915) tp_is_empty!28065 (not b!1119678) (not b!1119669) (not b!1119672) (not b_lambda!18539) (not b!1119668) (not b!1119674) (not b_next!23535) (not b!1119671) (not b!1119679) b_and!37877 (not start!97870) (not b!1119670))
(check-sat b_and!37877 (not b_next!23535))
