; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97774 () Bool)

(assert start!97774)

(declare-fun b_free!23439 () Bool)

(declare-fun b_next!23439 () Bool)

(assert (=> start!97774 (= b_free!23439 (not b_next!23439))))

(declare-fun tp!83022 () Bool)

(declare-fun b_and!37735 () Bool)

(assert (=> start!97774 (= tp!83022 b_and!37735)))

(declare-fun b!1117608 () Bool)

(declare-fun res!746424 () Bool)

(declare-fun e!636671 () Bool)

(assert (=> b!1117608 (=> (not res!746424) (not e!636671))))

(declare-datatypes ((array!72772 0))(
  ( (array!72773 (arr!35035 (Array (_ BitVec 32) (_ BitVec 64))) (size!35572 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72772)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1117608 (= res!746424 (= (select (arr!35035 _keys!1208) i!673) k0!934))))

(declare-fun b!1117609 () Bool)

(declare-fun res!746420 () Bool)

(assert (=> b!1117609 (=> (not res!746420) (not e!636671))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42419 0))(
  ( (V!42420 (val!14041 Int)) )
))
(declare-datatypes ((ValueCell!13275 0))(
  ( (ValueCellFull!13275 (v!16675 V!42419)) (EmptyCell!13275) )
))
(declare-datatypes ((array!72774 0))(
  ( (array!72775 (arr!35036 (Array (_ BitVec 32) ValueCell!13275)) (size!35573 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72774)

(assert (=> b!1117609 (= res!746420 (and (= (size!35573 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35572 _keys!1208) (size!35573 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117610 () Bool)

(declare-fun e!636672 () Bool)

(assert (=> b!1117610 (= e!636672 true)))

(declare-fun zeroValue!944 () V!42419)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17662 0))(
  ( (tuple2!17663 (_1!8841 (_ BitVec 64)) (_2!8841 V!42419)) )
))
(declare-datatypes ((List!24498 0))(
  ( (Nil!24495) (Cons!24494 (h!25703 tuple2!17662) (t!34986 List!24498)) )
))
(declare-datatypes ((ListLongMap!15643 0))(
  ( (ListLongMap!15644 (toList!7837 List!24498)) )
))
(declare-fun lt!497300 () ListLongMap!15643)

(declare-fun minValue!944 () V!42419)

(declare-fun getCurrentListMapNoExtraKeys!4298 (array!72772 array!72774 (_ BitVec 32) (_ BitVec 32) V!42419 V!42419 (_ BitVec 32) Int) ListLongMap!15643)

(assert (=> b!1117610 (= lt!497300 (getCurrentListMapNoExtraKeys!4298 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1117611 () Bool)

(declare-fun res!746422 () Bool)

(assert (=> b!1117611 (=> (not res!746422) (not e!636671))))

(declare-datatypes ((List!24499 0))(
  ( (Nil!24496) (Cons!24495 (h!25704 (_ BitVec 64)) (t!34987 List!24499)) )
))
(declare-fun arrayNoDuplicates!0 (array!72772 (_ BitVec 32) List!24499) Bool)

(assert (=> b!1117611 (= res!746422 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24496))))

(declare-fun b!1117613 () Bool)

(declare-fun e!636676 () Bool)

(declare-fun e!636677 () Bool)

(declare-fun mapRes!43771 () Bool)

(assert (=> b!1117613 (= e!636676 (and e!636677 mapRes!43771))))

(declare-fun condMapEmpty!43771 () Bool)

(declare-fun mapDefault!43771 () ValueCell!13275)

(assert (=> b!1117613 (= condMapEmpty!43771 (= (arr!35036 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13275)) mapDefault!43771)))))

(declare-fun b!1117614 () Bool)

(declare-fun res!746427 () Bool)

(assert (=> b!1117614 (=> (not res!746427) (not e!636671))))

(assert (=> b!1117614 (= res!746427 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35572 _keys!1208))))))

(declare-fun b!1117615 () Bool)

(declare-fun res!746417 () Bool)

(assert (=> b!1117615 (=> (not res!746417) (not e!636671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117615 (= res!746417 (validMask!0 mask!1564))))

(declare-fun b!1117616 () Bool)

(declare-fun res!746421 () Bool)

(declare-fun e!636674 () Bool)

(assert (=> b!1117616 (=> (not res!746421) (not e!636674))))

(declare-fun lt!497301 () array!72772)

(assert (=> b!1117616 (= res!746421 (arrayNoDuplicates!0 lt!497301 #b00000000000000000000000000000000 Nil!24496))))

(declare-fun mapNonEmpty!43771 () Bool)

(declare-fun tp!83021 () Bool)

(declare-fun e!636675 () Bool)

(assert (=> mapNonEmpty!43771 (= mapRes!43771 (and tp!83021 e!636675))))

(declare-fun mapValue!43771 () ValueCell!13275)

(declare-fun mapKey!43771 () (_ BitVec 32))

(declare-fun mapRest!43771 () (Array (_ BitVec 32) ValueCell!13275))

(assert (=> mapNonEmpty!43771 (= (arr!35036 _values!996) (store mapRest!43771 mapKey!43771 mapValue!43771))))

(declare-fun b!1117612 () Bool)

(declare-fun tp_is_empty!27969 () Bool)

(assert (=> b!1117612 (= e!636677 tp_is_empty!27969)))

(declare-fun res!746419 () Bool)

(assert (=> start!97774 (=> (not res!746419) (not e!636671))))

(assert (=> start!97774 (= res!746419 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35572 _keys!1208))))))

(assert (=> start!97774 e!636671))

(assert (=> start!97774 tp_is_empty!27969))

(declare-fun array_inv!26786 (array!72772) Bool)

(assert (=> start!97774 (array_inv!26786 _keys!1208)))

(assert (=> start!97774 true))

(assert (=> start!97774 tp!83022))

(declare-fun array_inv!26787 (array!72774) Bool)

(assert (=> start!97774 (and (array_inv!26787 _values!996) e!636676)))

(declare-fun b!1117617 () Bool)

(declare-fun res!746418 () Bool)

(assert (=> b!1117617 (=> (not res!746418) (not e!636671))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117617 (= res!746418 (validKeyInArray!0 k0!934))))

(declare-fun b!1117618 () Bool)

(assert (=> b!1117618 (= e!636675 tp_is_empty!27969)))

(declare-fun b!1117619 () Bool)

(declare-fun res!746423 () Bool)

(assert (=> b!1117619 (=> (not res!746423) (not e!636671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72772 (_ BitVec 32)) Bool)

(assert (=> b!1117619 (= res!746423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117620 () Bool)

(assert (=> b!1117620 (= e!636674 (not e!636672))))

(declare-fun res!746425 () Bool)

(assert (=> b!1117620 (=> res!746425 e!636672)))

(assert (=> b!1117620 (= res!746425 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117620 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36589 0))(
  ( (Unit!36590) )
))
(declare-fun lt!497299 () Unit!36589)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72772 (_ BitVec 64) (_ BitVec 32)) Unit!36589)

(assert (=> b!1117620 (= lt!497299 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1117621 () Bool)

(assert (=> b!1117621 (= e!636671 e!636674)))

(declare-fun res!746426 () Bool)

(assert (=> b!1117621 (=> (not res!746426) (not e!636674))))

(assert (=> b!1117621 (= res!746426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497301 mask!1564))))

(assert (=> b!1117621 (= lt!497301 (array!72773 (store (arr!35035 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35572 _keys!1208)))))

(declare-fun mapIsEmpty!43771 () Bool)

(assert (=> mapIsEmpty!43771 mapRes!43771))

(assert (= (and start!97774 res!746419) b!1117615))

(assert (= (and b!1117615 res!746417) b!1117609))

(assert (= (and b!1117609 res!746420) b!1117619))

(assert (= (and b!1117619 res!746423) b!1117611))

(assert (= (and b!1117611 res!746422) b!1117614))

(assert (= (and b!1117614 res!746427) b!1117617))

(assert (= (and b!1117617 res!746418) b!1117608))

(assert (= (and b!1117608 res!746424) b!1117621))

(assert (= (and b!1117621 res!746426) b!1117616))

(assert (= (and b!1117616 res!746421) b!1117620))

(assert (= (and b!1117620 (not res!746425)) b!1117610))

(assert (= (and b!1117613 condMapEmpty!43771) mapIsEmpty!43771))

(assert (= (and b!1117613 (not condMapEmpty!43771)) mapNonEmpty!43771))

(get-info :version)

(assert (= (and mapNonEmpty!43771 ((_ is ValueCellFull!13275) mapValue!43771)) b!1117618))

(assert (= (and b!1117613 ((_ is ValueCellFull!13275) mapDefault!43771)) b!1117612))

(assert (= start!97774 b!1117613))

(declare-fun m!1033529 () Bool)

(assert (=> b!1117611 m!1033529))

(declare-fun m!1033531 () Bool)

(assert (=> b!1117617 m!1033531))

(declare-fun m!1033533 () Bool)

(assert (=> mapNonEmpty!43771 m!1033533))

(declare-fun m!1033535 () Bool)

(assert (=> b!1117620 m!1033535))

(declare-fun m!1033537 () Bool)

(assert (=> b!1117620 m!1033537))

(declare-fun m!1033539 () Bool)

(assert (=> b!1117616 m!1033539))

(declare-fun m!1033541 () Bool)

(assert (=> b!1117608 m!1033541))

(declare-fun m!1033543 () Bool)

(assert (=> start!97774 m!1033543))

(declare-fun m!1033545 () Bool)

(assert (=> start!97774 m!1033545))

(declare-fun m!1033547 () Bool)

(assert (=> b!1117615 m!1033547))

(declare-fun m!1033549 () Bool)

(assert (=> b!1117610 m!1033549))

(declare-fun m!1033551 () Bool)

(assert (=> b!1117621 m!1033551))

(declare-fun m!1033553 () Bool)

(assert (=> b!1117621 m!1033553))

(declare-fun m!1033555 () Bool)

(assert (=> b!1117619 m!1033555))

(check-sat (not b!1117617) tp_is_empty!27969 (not b!1117610) (not b_next!23439) (not b!1117611) (not mapNonEmpty!43771) b_and!37735 (not b!1117615) (not b!1117619) (not b!1117621) (not b!1117620) (not b!1117616) (not start!97774))
(check-sat b_and!37735 (not b_next!23439))
