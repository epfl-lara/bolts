; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97864 () Bool)

(assert start!97864)

(declare-fun b_free!23529 () Bool)

(declare-fun b_next!23529 () Bool)

(assert (=> start!97864 (= b_free!23529 (not b_next!23529))))

(declare-fun tp!83291 () Bool)

(declare-fun b_and!37863 () Bool)

(assert (=> start!97864 (= tp!83291 b_and!37863)))

(declare-fun b!1119536 () Bool)

(declare-fun res!747910 () Bool)

(declare-fun e!637616 () Bool)

(assert (=> b!1119536 (=> (not res!747910) (not e!637616))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119536 (= res!747910 (validKeyInArray!0 k0!934))))

(declare-fun b!1119537 () Bool)

(declare-fun e!637618 () Bool)

(assert (=> b!1119537 (= e!637616 e!637618)))

(declare-fun res!747905 () Bool)

(assert (=> b!1119537 (=> (not res!747905) (not e!637618))))

(declare-datatypes ((array!72944 0))(
  ( (array!72945 (arr!35121 (Array (_ BitVec 32) (_ BitVec 64))) (size!35658 (_ BitVec 32))) )
))
(declare-fun lt!497766 () array!72944)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72944 (_ BitVec 32)) Bool)

(assert (=> b!1119537 (= res!747905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497766 mask!1564))))

(declare-fun _keys!1208 () array!72944)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119537 (= lt!497766 (array!72945 (store (arr!35121 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35658 _keys!1208)))))

(declare-fun b!1119538 () Bool)

(declare-fun res!747912 () Bool)

(assert (=> b!1119538 (=> (not res!747912) (not e!637616))))

(assert (=> b!1119538 (= res!747912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119539 () Bool)

(declare-fun res!747911 () Bool)

(assert (=> b!1119539 (=> (not res!747911) (not e!637618))))

(declare-datatypes ((List!24562 0))(
  ( (Nil!24559) (Cons!24558 (h!25767 (_ BitVec 64)) (t!35090 List!24562)) )
))
(declare-fun arrayNoDuplicates!0 (array!72944 (_ BitVec 32) List!24562) Bool)

(assert (=> b!1119539 (= res!747911 (arrayNoDuplicates!0 lt!497766 #b00000000000000000000000000000000 Nil!24559))))

(declare-fun b!1119540 () Bool)

(declare-fun res!747904 () Bool)

(assert (=> b!1119540 (=> (not res!747904) (not e!637616))))

(assert (=> b!1119540 (= res!747904 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24559))))

(declare-fun b!1119541 () Bool)

(declare-fun e!637617 () Bool)

(assert (=> b!1119541 (= e!637617 true)))

(declare-datatypes ((V!42539 0))(
  ( (V!42540 (val!14086 Int)) )
))
(declare-fun zeroValue!944 () V!42539)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17726 0))(
  ( (tuple2!17727 (_1!8873 (_ BitVec 64)) (_2!8873 V!42539)) )
))
(declare-datatypes ((List!24563 0))(
  ( (Nil!24560) (Cons!24559 (h!25768 tuple2!17726) (t!35091 List!24563)) )
))
(declare-datatypes ((ListLongMap!15707 0))(
  ( (ListLongMap!15708 (toList!7869 List!24563)) )
))
(declare-fun lt!497764 () ListLongMap!15707)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13320 0))(
  ( (ValueCellFull!13320 (v!16720 V!42539)) (EmptyCell!13320) )
))
(declare-datatypes ((array!72946 0))(
  ( (array!72947 (arr!35122 (Array (_ BitVec 32) ValueCell!13320)) (size!35659 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72946)

(declare-fun minValue!944 () V!42539)

(declare-fun getCurrentListMapNoExtraKeys!4330 (array!72944 array!72946 (_ BitVec 32) (_ BitVec 32) V!42539 V!42539 (_ BitVec 32) Int) ListLongMap!15707)

(declare-fun dynLambda!2432 (Int (_ BitVec 64)) V!42539)

(assert (=> b!1119541 (= lt!497764 (getCurrentListMapNoExtraKeys!4330 lt!497766 (array!72947 (store (arr!35122 _values!996) i!673 (ValueCellFull!13320 (dynLambda!2432 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35659 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497765 () ListLongMap!15707)

(assert (=> b!1119541 (= lt!497765 (getCurrentListMapNoExtraKeys!4330 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!43906 () Bool)

(declare-fun mapRes!43906 () Bool)

(assert (=> mapIsEmpty!43906 mapRes!43906))

(declare-fun b!1119542 () Bool)

(declare-fun e!637622 () Bool)

(declare-fun tp_is_empty!28059 () Bool)

(assert (=> b!1119542 (= e!637622 tp_is_empty!28059)))

(declare-fun b!1119543 () Bool)

(declare-fun e!637621 () Bool)

(assert (=> b!1119543 (= e!637621 (and e!637622 mapRes!43906))))

(declare-fun condMapEmpty!43906 () Bool)

(declare-fun mapDefault!43906 () ValueCell!13320)

(assert (=> b!1119543 (= condMapEmpty!43906 (= (arr!35122 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13320)) mapDefault!43906)))))

(declare-fun res!747907 () Bool)

(assert (=> start!97864 (=> (not res!747907) (not e!637616))))

(assert (=> start!97864 (= res!747907 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35658 _keys!1208))))))

(assert (=> start!97864 e!637616))

(assert (=> start!97864 tp_is_empty!28059))

(declare-fun array_inv!26844 (array!72944) Bool)

(assert (=> start!97864 (array_inv!26844 _keys!1208)))

(assert (=> start!97864 true))

(assert (=> start!97864 tp!83291))

(declare-fun array_inv!26845 (array!72946) Bool)

(assert (=> start!97864 (and (array_inv!26845 _values!996) e!637621)))

(declare-fun mapNonEmpty!43906 () Bool)

(declare-fun tp!83292 () Bool)

(declare-fun e!637619 () Bool)

(assert (=> mapNonEmpty!43906 (= mapRes!43906 (and tp!83292 e!637619))))

(declare-fun mapRest!43906 () (Array (_ BitVec 32) ValueCell!13320))

(declare-fun mapValue!43906 () ValueCell!13320)

(declare-fun mapKey!43906 () (_ BitVec 32))

(assert (=> mapNonEmpty!43906 (= (arr!35122 _values!996) (store mapRest!43906 mapKey!43906 mapValue!43906))))

(declare-fun b!1119544 () Bool)

(assert (=> b!1119544 (= e!637619 tp_is_empty!28059)))

(declare-fun b!1119545 () Bool)

(declare-fun res!747903 () Bool)

(assert (=> b!1119545 (=> (not res!747903) (not e!637616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119545 (= res!747903 (validMask!0 mask!1564))))

(declare-fun b!1119546 () Bool)

(assert (=> b!1119546 (= e!637618 (not e!637617))))

(declare-fun res!747908 () Bool)

(assert (=> b!1119546 (=> res!747908 e!637617)))

(assert (=> b!1119546 (= res!747908 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119546 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36653 0))(
  ( (Unit!36654) )
))
(declare-fun lt!497763 () Unit!36653)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72944 (_ BitVec 64) (_ BitVec 32)) Unit!36653)

(assert (=> b!1119546 (= lt!497763 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1119547 () Bool)

(declare-fun res!747909 () Bool)

(assert (=> b!1119547 (=> (not res!747909) (not e!637616))))

(assert (=> b!1119547 (= res!747909 (and (= (size!35659 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35658 _keys!1208) (size!35659 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119548 () Bool)

(declare-fun res!747902 () Bool)

(assert (=> b!1119548 (=> (not res!747902) (not e!637616))))

(assert (=> b!1119548 (= res!747902 (= (select (arr!35121 _keys!1208) i!673) k0!934))))

(declare-fun b!1119549 () Bool)

(declare-fun res!747906 () Bool)

(assert (=> b!1119549 (=> (not res!747906) (not e!637616))))

(assert (=> b!1119549 (= res!747906 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35658 _keys!1208))))))

(assert (= (and start!97864 res!747907) b!1119545))

(assert (= (and b!1119545 res!747903) b!1119547))

(assert (= (and b!1119547 res!747909) b!1119538))

(assert (= (and b!1119538 res!747912) b!1119540))

(assert (= (and b!1119540 res!747904) b!1119549))

(assert (= (and b!1119549 res!747906) b!1119536))

(assert (= (and b!1119536 res!747910) b!1119548))

(assert (= (and b!1119548 res!747902) b!1119537))

(assert (= (and b!1119537 res!747905) b!1119539))

(assert (= (and b!1119539 res!747911) b!1119546))

(assert (= (and b!1119546 (not res!747908)) b!1119541))

(assert (= (and b!1119543 condMapEmpty!43906) mapIsEmpty!43906))

(assert (= (and b!1119543 (not condMapEmpty!43906)) mapNonEmpty!43906))

(get-info :version)

(assert (= (and mapNonEmpty!43906 ((_ is ValueCellFull!13320) mapValue!43906)) b!1119544))

(assert (= (and b!1119543 ((_ is ValueCellFull!13320) mapDefault!43906)) b!1119542))

(assert (= start!97864 b!1119543))

(declare-fun b_lambda!18533 () Bool)

(assert (=> (not b_lambda!18533) (not b!1119541)))

(declare-fun t!35089 () Bool)

(declare-fun tb!8349 () Bool)

(assert (=> (and start!97864 (= defaultEntry!1004 defaultEntry!1004) t!35089) tb!8349))

(declare-fun result!17251 () Bool)

(assert (=> tb!8349 (= result!17251 tp_is_empty!28059)))

(assert (=> b!1119541 t!35089))

(declare-fun b_and!37865 () Bool)

(assert (= b_and!37863 (and (=> t!35089 result!17251) b_and!37865)))

(declare-fun m!1034903 () Bool)

(assert (=> b!1119537 m!1034903))

(declare-fun m!1034905 () Bool)

(assert (=> b!1119537 m!1034905))

(declare-fun m!1034907 () Bool)

(assert (=> b!1119545 m!1034907))

(declare-fun m!1034909 () Bool)

(assert (=> b!1119541 m!1034909))

(declare-fun m!1034911 () Bool)

(assert (=> b!1119541 m!1034911))

(declare-fun m!1034913 () Bool)

(assert (=> b!1119541 m!1034913))

(declare-fun m!1034915 () Bool)

(assert (=> b!1119541 m!1034915))

(declare-fun m!1034917 () Bool)

(assert (=> b!1119536 m!1034917))

(declare-fun m!1034919 () Bool)

(assert (=> b!1119540 m!1034919))

(declare-fun m!1034921 () Bool)

(assert (=> b!1119548 m!1034921))

(declare-fun m!1034923 () Bool)

(assert (=> start!97864 m!1034923))

(declare-fun m!1034925 () Bool)

(assert (=> start!97864 m!1034925))

(declare-fun m!1034927 () Bool)

(assert (=> mapNonEmpty!43906 m!1034927))

(declare-fun m!1034929 () Bool)

(assert (=> b!1119546 m!1034929))

(declare-fun m!1034931 () Bool)

(assert (=> b!1119546 m!1034931))

(declare-fun m!1034933 () Bool)

(assert (=> b!1119538 m!1034933))

(declare-fun m!1034935 () Bool)

(assert (=> b!1119539 m!1034935))

(check-sat (not start!97864) (not b!1119545) (not b_lambda!18533) (not b!1119539) (not b!1119546) (not b!1119538) (not b!1119541) (not mapNonEmpty!43906) (not b!1119537) b_and!37865 (not b!1119540) (not b!1119536) tp_is_empty!28059 (not b_next!23529))
(check-sat b_and!37865 (not b_next!23529))
