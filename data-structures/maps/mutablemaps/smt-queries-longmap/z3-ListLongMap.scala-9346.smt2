; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111550 () Bool)

(assert start!111550)

(declare-fun b_free!30171 () Bool)

(declare-fun b_next!30171 () Bool)

(assert (=> start!111550 (= b_free!30171 (not b_next!30171))))

(declare-fun tp!105989 () Bool)

(declare-fun b_and!48511 () Bool)

(assert (=> start!111550 (= tp!105989 b_and!48511)))

(declare-fun b!1320109 () Bool)

(declare-fun res!876255 () Bool)

(declare-fun e!753097 () Bool)

(assert (=> b!1320109 (=> (not res!876255) (not e!753097))))

(declare-datatypes ((array!88877 0))(
  ( (array!88878 (arr!42908 (Array (_ BitVec 32) (_ BitVec 64))) (size!43459 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88877)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53091 0))(
  ( (V!53092 (val!18070 Int)) )
))
(declare-datatypes ((ValueCell!17097 0))(
  ( (ValueCellFull!17097 (v!20698 V!53091)) (EmptyCell!17097) )
))
(declare-datatypes ((array!88879 0))(
  ( (array!88880 (arr!42909 (Array (_ BitVec 32) ValueCell!17097)) (size!43460 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88879)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1320109 (= res!876255 (and (= (size!43460 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43459 _keys!1609) (size!43460 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!876256 () Bool)

(assert (=> start!111550 (=> (not res!876256) (not e!753097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111550 (= res!876256 (validMask!0 mask!2019))))

(assert (=> start!111550 e!753097))

(declare-fun array_inv!32349 (array!88877) Bool)

(assert (=> start!111550 (array_inv!32349 _keys!1609)))

(assert (=> start!111550 true))

(declare-fun tp_is_empty!35991 () Bool)

(assert (=> start!111550 tp_is_empty!35991))

(declare-fun e!753095 () Bool)

(declare-fun array_inv!32350 (array!88879) Bool)

(assert (=> start!111550 (and (array_inv!32350 _values!1337) e!753095)))

(assert (=> start!111550 tp!105989))

(declare-fun b!1320110 () Bool)

(declare-fun e!753094 () Bool)

(assert (=> b!1320110 (= e!753094 tp_is_empty!35991)))

(declare-fun b!1320111 () Bool)

(declare-fun mapRes!55634 () Bool)

(assert (=> b!1320111 (= e!753095 (and e!753094 mapRes!55634))))

(declare-fun condMapEmpty!55634 () Bool)

(declare-fun mapDefault!55634 () ValueCell!17097)

(assert (=> b!1320111 (= condMapEmpty!55634 (= (arr!42909 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17097)) mapDefault!55634)))))

(declare-fun b!1320112 () Bool)

(declare-fun res!876254 () Bool)

(assert (=> b!1320112 (=> (not res!876254) (not e!753097))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun minValue!1279 () V!53091)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun zeroValue!1279 () V!53091)

(declare-datatypes ((tuple2!23428 0))(
  ( (tuple2!23429 (_1!11724 (_ BitVec 64)) (_2!11724 V!53091)) )
))
(declare-datatypes ((List!30611 0))(
  ( (Nil!30608) (Cons!30607 (h!31816 tuple2!23428) (t!44338 List!30611)) )
))
(declare-datatypes ((ListLongMap!21097 0))(
  ( (ListLongMap!21098 (toList!10564 List!30611)) )
))
(declare-fun contains!8655 (ListLongMap!21097 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5508 (array!88877 array!88879 (_ BitVec 32) (_ BitVec 32) V!53091 V!53091 (_ BitVec 32) Int) ListLongMap!21097)

(assert (=> b!1320112 (= res!876254 (contains!8655 (getCurrentListMap!5508 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320113 () Bool)

(declare-fun res!876252 () Bool)

(assert (=> b!1320113 (=> (not res!876252) (not e!753097))))

(assert (=> b!1320113 (= res!876252 (not (= (select (arr!42908 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!55634 () Bool)

(assert (=> mapIsEmpty!55634 mapRes!55634))

(declare-fun b!1320114 () Bool)

(declare-fun res!876251 () Bool)

(assert (=> b!1320114 (=> (not res!876251) (not e!753097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88877 (_ BitVec 32)) Bool)

(assert (=> b!1320114 (= res!876251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320115 () Bool)

(declare-fun res!876253 () Bool)

(assert (=> b!1320115 (=> (not res!876253) (not e!753097))))

(declare-datatypes ((List!30612 0))(
  ( (Nil!30609) (Cons!30608 (h!31817 (_ BitVec 64)) (t!44339 List!30612)) )
))
(declare-fun arrayNoDuplicates!0 (array!88877 (_ BitVec 32) List!30612) Bool)

(assert (=> b!1320115 (= res!876253 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30609))))

(declare-fun b!1320116 () Bool)

(assert (=> b!1320116 (= e!753097 (not true))))

(declare-fun lt!586807 () ListLongMap!21097)

(assert (=> b!1320116 (contains!8655 lt!586807 k0!1164)))

(declare-datatypes ((Unit!43438 0))(
  ( (Unit!43439) )
))
(declare-fun lt!586806 () Unit!43438)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!134 ((_ BitVec 64) (_ BitVec 64) V!53091 ListLongMap!21097) Unit!43438)

(assert (=> b!1320116 (= lt!586806 (lemmaInListMapAfterAddingDiffThenInBefore!134 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586807))))

(declare-fun lt!586805 () ListLongMap!21097)

(assert (=> b!1320116 (contains!8655 lt!586805 k0!1164)))

(declare-fun lt!586804 () Unit!43438)

(assert (=> b!1320116 (= lt!586804 (lemmaInListMapAfterAddingDiffThenInBefore!134 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586805))))

(declare-fun +!4519 (ListLongMap!21097 tuple2!23428) ListLongMap!21097)

(assert (=> b!1320116 (= lt!586805 (+!4519 lt!586807 (tuple2!23429 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6234 (array!88877 array!88879 (_ BitVec 32) (_ BitVec 32) V!53091 V!53091 (_ BitVec 32) Int) ListLongMap!21097)

(declare-fun get!21623 (ValueCell!17097 V!53091) V!53091)

(declare-fun dynLambda!3556 (Int (_ BitVec 64)) V!53091)

(assert (=> b!1320116 (= lt!586807 (+!4519 (getCurrentListMapNoExtraKeys!6234 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23429 (select (arr!42908 _keys!1609) from!2000) (get!21623 (select (arr!42909 _values!1337) from!2000) (dynLambda!3556 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320117 () Bool)

(declare-fun res!876249 () Bool)

(assert (=> b!1320117 (=> (not res!876249) (not e!753097))))

(assert (=> b!1320117 (= res!876249 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43459 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320118 () Bool)

(declare-fun res!876250 () Bool)

(assert (=> b!1320118 (=> (not res!876250) (not e!753097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320118 (= res!876250 (validKeyInArray!0 (select (arr!42908 _keys!1609) from!2000)))))

(declare-fun mapNonEmpty!55634 () Bool)

(declare-fun tp!105990 () Bool)

(declare-fun e!753093 () Bool)

(assert (=> mapNonEmpty!55634 (= mapRes!55634 (and tp!105990 e!753093))))

(declare-fun mapKey!55634 () (_ BitVec 32))

(declare-fun mapValue!55634 () ValueCell!17097)

(declare-fun mapRest!55634 () (Array (_ BitVec 32) ValueCell!17097))

(assert (=> mapNonEmpty!55634 (= (arr!42909 _values!1337) (store mapRest!55634 mapKey!55634 mapValue!55634))))

(declare-fun b!1320119 () Bool)

(assert (=> b!1320119 (= e!753093 tp_is_empty!35991)))

(assert (= (and start!111550 res!876256) b!1320109))

(assert (= (and b!1320109 res!876255) b!1320114))

(assert (= (and b!1320114 res!876251) b!1320115))

(assert (= (and b!1320115 res!876253) b!1320117))

(assert (= (and b!1320117 res!876249) b!1320112))

(assert (= (and b!1320112 res!876254) b!1320113))

(assert (= (and b!1320113 res!876252) b!1320118))

(assert (= (and b!1320118 res!876250) b!1320116))

(assert (= (and b!1320111 condMapEmpty!55634) mapIsEmpty!55634))

(assert (= (and b!1320111 (not condMapEmpty!55634)) mapNonEmpty!55634))

(get-info :version)

(assert (= (and mapNonEmpty!55634 ((_ is ValueCellFull!17097) mapValue!55634)) b!1320119))

(assert (= (and b!1320111 ((_ is ValueCellFull!17097) mapDefault!55634)) b!1320110))

(assert (= start!111550 b!1320111))

(declare-fun b_lambda!23507 () Bool)

(assert (=> (not b_lambda!23507) (not b!1320116)))

(declare-fun t!44337 () Bool)

(declare-fun tb!11531 () Bool)

(assert (=> (and start!111550 (= defaultEntry!1340 defaultEntry!1340) t!44337) tb!11531))

(declare-fun result!24109 () Bool)

(assert (=> tb!11531 (= result!24109 tp_is_empty!35991)))

(assert (=> b!1320116 t!44337))

(declare-fun b_and!48513 () Bool)

(assert (= b_and!48511 (and (=> t!44337 result!24109) b_and!48513)))

(declare-fun m!1207831 () Bool)

(assert (=> b!1320112 m!1207831))

(assert (=> b!1320112 m!1207831))

(declare-fun m!1207833 () Bool)

(assert (=> b!1320112 m!1207833))

(declare-fun m!1207835 () Bool)

(assert (=> b!1320118 m!1207835))

(assert (=> b!1320118 m!1207835))

(declare-fun m!1207837 () Bool)

(assert (=> b!1320118 m!1207837))

(declare-fun m!1207839 () Bool)

(assert (=> b!1320114 m!1207839))

(declare-fun m!1207841 () Bool)

(assert (=> start!111550 m!1207841))

(declare-fun m!1207843 () Bool)

(assert (=> start!111550 m!1207843))

(declare-fun m!1207845 () Bool)

(assert (=> start!111550 m!1207845))

(declare-fun m!1207847 () Bool)

(assert (=> mapNonEmpty!55634 m!1207847))

(declare-fun m!1207849 () Bool)

(assert (=> b!1320115 m!1207849))

(declare-fun m!1207851 () Bool)

(assert (=> b!1320116 m!1207851))

(declare-fun m!1207853 () Bool)

(assert (=> b!1320116 m!1207853))

(declare-fun m!1207855 () Bool)

(assert (=> b!1320116 m!1207855))

(assert (=> b!1320116 m!1207853))

(declare-fun m!1207857 () Bool)

(assert (=> b!1320116 m!1207857))

(declare-fun m!1207859 () Bool)

(assert (=> b!1320116 m!1207859))

(declare-fun m!1207861 () Bool)

(assert (=> b!1320116 m!1207861))

(declare-fun m!1207863 () Bool)

(assert (=> b!1320116 m!1207863))

(assert (=> b!1320116 m!1207861))

(assert (=> b!1320116 m!1207855))

(declare-fun m!1207865 () Bool)

(assert (=> b!1320116 m!1207865))

(assert (=> b!1320116 m!1207835))

(declare-fun m!1207867 () Bool)

(assert (=> b!1320116 m!1207867))

(declare-fun m!1207869 () Bool)

(assert (=> b!1320116 m!1207869))

(assert (=> b!1320113 m!1207835))

(check-sat (not b_lambda!23507) (not mapNonEmpty!55634) b_and!48513 (not b!1320112) (not b!1320115) (not b!1320116) (not b_next!30171) (not b!1320114) tp_is_empty!35991 (not start!111550) (not b!1320118))
(check-sat b_and!48513 (not b_next!30171))
