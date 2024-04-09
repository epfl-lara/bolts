; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97876 () Bool)

(assert start!97876)

(declare-fun b_free!23541 () Bool)

(declare-fun b_next!23541 () Bool)

(assert (=> start!97876 (= b_free!23541 (not b_next!23541))))

(declare-fun tp!83328 () Bool)

(declare-fun b_and!37887 () Bool)

(assert (=> start!97876 (= tp!83328 b_and!37887)))

(declare-fun b!1119800 () Bool)

(declare-fun res!748100 () Bool)

(declare-fun e!637745 () Bool)

(assert (=> b!1119800 (=> (not res!748100) (not e!637745))))

(declare-datatypes ((array!72968 0))(
  ( (array!72969 (arr!35133 (Array (_ BitVec 32) (_ BitVec 64))) (size!35670 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72968)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72968 (_ BitVec 32)) Bool)

(assert (=> b!1119800 (= res!748100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119801 () Bool)

(declare-fun res!748101 () Bool)

(assert (=> b!1119801 (=> (not res!748101) (not e!637745))))

(declare-datatypes ((List!24574 0))(
  ( (Nil!24571) (Cons!24570 (h!25779 (_ BitVec 64)) (t!35114 List!24574)) )
))
(declare-fun arrayNoDuplicates!0 (array!72968 (_ BitVec 32) List!24574) Bool)

(assert (=> b!1119801 (= res!748101 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24571))))

(declare-fun b!1119802 () Bool)

(declare-fun res!748107 () Bool)

(assert (=> b!1119802 (=> (not res!748107) (not e!637745))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119802 (= res!748107 (validKeyInArray!0 k0!934))))

(declare-fun b!1119803 () Bool)

(declare-fun e!637742 () Bool)

(assert (=> b!1119803 (= e!637742 true)))

(declare-datatypes ((V!42555 0))(
  ( (V!42556 (val!14092 Int)) )
))
(declare-fun zeroValue!944 () V!42555)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!497835 () array!72968)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13326 0))(
  ( (ValueCellFull!13326 (v!16726 V!42555)) (EmptyCell!13326) )
))
(declare-datatypes ((array!72970 0))(
  ( (array!72971 (arr!35134 (Array (_ BitVec 32) ValueCell!13326)) (size!35671 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72970)

(declare-fun minValue!944 () V!42555)

(declare-datatypes ((tuple2!17738 0))(
  ( (tuple2!17739 (_1!8879 (_ BitVec 64)) (_2!8879 V!42555)) )
))
(declare-datatypes ((List!24575 0))(
  ( (Nil!24572) (Cons!24571 (h!25780 tuple2!17738) (t!35115 List!24575)) )
))
(declare-datatypes ((ListLongMap!15719 0))(
  ( (ListLongMap!15720 (toList!7875 List!24575)) )
))
(declare-fun lt!497836 () ListLongMap!15719)

(declare-fun getCurrentListMapNoExtraKeys!4336 (array!72968 array!72970 (_ BitVec 32) (_ BitVec 32) V!42555 V!42555 (_ BitVec 32) Int) ListLongMap!15719)

(declare-fun dynLambda!2438 (Int (_ BitVec 64)) V!42555)

(assert (=> b!1119803 (= lt!497836 (getCurrentListMapNoExtraKeys!4336 lt!497835 (array!72971 (store (arr!35134 _values!996) i!673 (ValueCellFull!13326 (dynLambda!2438 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35671 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497838 () ListLongMap!15719)

(assert (=> b!1119803 (= lt!497838 (getCurrentListMapNoExtraKeys!4336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119804 () Bool)

(declare-fun e!637746 () Bool)

(assert (=> b!1119804 (= e!637745 e!637746)))

(declare-fun res!748106 () Bool)

(assert (=> b!1119804 (=> (not res!748106) (not e!637746))))

(assert (=> b!1119804 (= res!748106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497835 mask!1564))))

(assert (=> b!1119804 (= lt!497835 (array!72969 (store (arr!35133 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35670 _keys!1208)))))

(declare-fun b!1119805 () Bool)

(declare-fun res!748104 () Bool)

(assert (=> b!1119805 (=> (not res!748104) (not e!637746))))

(assert (=> b!1119805 (= res!748104 (arrayNoDuplicates!0 lt!497835 #b00000000000000000000000000000000 Nil!24571))))

(declare-fun b!1119806 () Bool)

(declare-fun res!748108 () Bool)

(assert (=> b!1119806 (=> (not res!748108) (not e!637745))))

(assert (=> b!1119806 (= res!748108 (and (= (size!35671 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35670 _keys!1208) (size!35671 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119807 () Bool)

(declare-fun res!748110 () Bool)

(assert (=> b!1119807 (=> (not res!748110) (not e!637745))))

(assert (=> b!1119807 (= res!748110 (= (select (arr!35133 _keys!1208) i!673) k0!934))))

(declare-fun b!1119808 () Bool)

(declare-fun e!637744 () Bool)

(declare-fun e!637747 () Bool)

(declare-fun mapRes!43924 () Bool)

(assert (=> b!1119808 (= e!637744 (and e!637747 mapRes!43924))))

(declare-fun condMapEmpty!43924 () Bool)

(declare-fun mapDefault!43924 () ValueCell!13326)

(assert (=> b!1119808 (= condMapEmpty!43924 (= (arr!35134 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13326)) mapDefault!43924)))))

(declare-fun b!1119809 () Bool)

(declare-fun res!748109 () Bool)

(assert (=> b!1119809 (=> (not res!748109) (not e!637745))))

(assert (=> b!1119809 (= res!748109 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35670 _keys!1208))))))

(declare-fun mapIsEmpty!43924 () Bool)

(assert (=> mapIsEmpty!43924 mapRes!43924))

(declare-fun b!1119811 () Bool)

(declare-fun tp_is_empty!28071 () Bool)

(assert (=> b!1119811 (= e!637747 tp_is_empty!28071)))

(declare-fun mapNonEmpty!43924 () Bool)

(declare-fun tp!83327 () Bool)

(declare-fun e!637743 () Bool)

(assert (=> mapNonEmpty!43924 (= mapRes!43924 (and tp!83327 e!637743))))

(declare-fun mapKey!43924 () (_ BitVec 32))

(declare-fun mapRest!43924 () (Array (_ BitVec 32) ValueCell!13326))

(declare-fun mapValue!43924 () ValueCell!13326)

(assert (=> mapNonEmpty!43924 (= (arr!35134 _values!996) (store mapRest!43924 mapKey!43924 mapValue!43924))))

(declare-fun b!1119812 () Bool)

(declare-fun res!748105 () Bool)

(assert (=> b!1119812 (=> (not res!748105) (not e!637745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119812 (= res!748105 (validMask!0 mask!1564))))

(declare-fun b!1119813 () Bool)

(assert (=> b!1119813 (= e!637743 tp_is_empty!28071)))

(declare-fun res!748103 () Bool)

(assert (=> start!97876 (=> (not res!748103) (not e!637745))))

(assert (=> start!97876 (= res!748103 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35670 _keys!1208))))))

(assert (=> start!97876 e!637745))

(assert (=> start!97876 tp_is_empty!28071))

(declare-fun array_inv!26854 (array!72968) Bool)

(assert (=> start!97876 (array_inv!26854 _keys!1208)))

(assert (=> start!97876 true))

(assert (=> start!97876 tp!83328))

(declare-fun array_inv!26855 (array!72970) Bool)

(assert (=> start!97876 (and (array_inv!26855 _values!996) e!637744)))

(declare-fun b!1119810 () Bool)

(assert (=> b!1119810 (= e!637746 (not e!637742))))

(declare-fun res!748102 () Bool)

(assert (=> b!1119810 (=> res!748102 e!637742)))

(assert (=> b!1119810 (= res!748102 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119810 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36663 0))(
  ( (Unit!36664) )
))
(declare-fun lt!497837 () Unit!36663)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72968 (_ BitVec 64) (_ BitVec 32)) Unit!36663)

(assert (=> b!1119810 (= lt!497837 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97876 res!748103) b!1119812))

(assert (= (and b!1119812 res!748105) b!1119806))

(assert (= (and b!1119806 res!748108) b!1119800))

(assert (= (and b!1119800 res!748100) b!1119801))

(assert (= (and b!1119801 res!748101) b!1119809))

(assert (= (and b!1119809 res!748109) b!1119802))

(assert (= (and b!1119802 res!748107) b!1119807))

(assert (= (and b!1119807 res!748110) b!1119804))

(assert (= (and b!1119804 res!748106) b!1119805))

(assert (= (and b!1119805 res!748104) b!1119810))

(assert (= (and b!1119810 (not res!748102)) b!1119803))

(assert (= (and b!1119808 condMapEmpty!43924) mapIsEmpty!43924))

(assert (= (and b!1119808 (not condMapEmpty!43924)) mapNonEmpty!43924))

(get-info :version)

(assert (= (and mapNonEmpty!43924 ((_ is ValueCellFull!13326) mapValue!43924)) b!1119813))

(assert (= (and b!1119808 ((_ is ValueCellFull!13326) mapDefault!43924)) b!1119811))

(assert (= start!97876 b!1119808))

(declare-fun b_lambda!18545 () Bool)

(assert (=> (not b_lambda!18545) (not b!1119803)))

(declare-fun t!35113 () Bool)

(declare-fun tb!8361 () Bool)

(assert (=> (and start!97876 (= defaultEntry!1004 defaultEntry!1004) t!35113) tb!8361))

(declare-fun result!17275 () Bool)

(assert (=> tb!8361 (= result!17275 tp_is_empty!28071)))

(assert (=> b!1119803 t!35113))

(declare-fun b_and!37889 () Bool)

(assert (= b_and!37887 (and (=> t!35113 result!17275) b_and!37889)))

(declare-fun m!1035107 () Bool)

(assert (=> start!97876 m!1035107))

(declare-fun m!1035109 () Bool)

(assert (=> start!97876 m!1035109))

(declare-fun m!1035111 () Bool)

(assert (=> b!1119804 m!1035111))

(declare-fun m!1035113 () Bool)

(assert (=> b!1119804 m!1035113))

(declare-fun m!1035115 () Bool)

(assert (=> b!1119801 m!1035115))

(declare-fun m!1035117 () Bool)

(assert (=> b!1119805 m!1035117))

(declare-fun m!1035119 () Bool)

(assert (=> mapNonEmpty!43924 m!1035119))

(declare-fun m!1035121 () Bool)

(assert (=> b!1119810 m!1035121))

(declare-fun m!1035123 () Bool)

(assert (=> b!1119810 m!1035123))

(declare-fun m!1035125 () Bool)

(assert (=> b!1119800 m!1035125))

(declare-fun m!1035127 () Bool)

(assert (=> b!1119807 m!1035127))

(declare-fun m!1035129 () Bool)

(assert (=> b!1119812 m!1035129))

(declare-fun m!1035131 () Bool)

(assert (=> b!1119802 m!1035131))

(declare-fun m!1035133 () Bool)

(assert (=> b!1119803 m!1035133))

(declare-fun m!1035135 () Bool)

(assert (=> b!1119803 m!1035135))

(declare-fun m!1035137 () Bool)

(assert (=> b!1119803 m!1035137))

(declare-fun m!1035139 () Bool)

(assert (=> b!1119803 m!1035139))

(check-sat (not b!1119800) (not mapNonEmpty!43924) (not b!1119802) (not b!1119812) (not b!1119810) (not b_lambda!18545) (not start!97876) b_and!37889 (not b!1119801) (not b!1119804) (not b_next!23541) (not b!1119805) (not b!1119803) tp_is_empty!28071)
(check-sat b_and!37889 (not b_next!23541))
