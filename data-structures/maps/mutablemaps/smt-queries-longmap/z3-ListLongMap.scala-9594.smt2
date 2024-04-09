; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113464 () Bool)

(assert start!113464)

(declare-fun b_free!31479 () Bool)

(declare-fun b_next!31479 () Bool)

(assert (=> start!113464 (= b_free!31479 (not b_next!31479))))

(declare-fun tp!110243 () Bool)

(declare-fun b_and!50777 () Bool)

(assert (=> start!113464 (= tp!110243 b_and!50777)))

(declare-fun b!1346389 () Bool)

(declare-fun e!766125 () Bool)

(declare-fun e!766126 () Bool)

(declare-fun mapRes!57925 () Bool)

(assert (=> b!1346389 (= e!766125 (and e!766126 mapRes!57925))))

(declare-fun condMapEmpty!57925 () Bool)

(declare-datatypes ((V!55075 0))(
  ( (V!55076 (val!18814 Int)) )
))
(declare-datatypes ((ValueCell!17841 0))(
  ( (ValueCellFull!17841 (v!21460 V!55075)) (EmptyCell!17841) )
))
(declare-datatypes ((array!91749 0))(
  ( (array!91750 (arr!44326 (Array (_ BitVec 32) ValueCell!17841)) (size!44877 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91749)

(declare-fun mapDefault!57925 () ValueCell!17841)

(assert (=> b!1346389 (= condMapEmpty!57925 (= (arr!44326 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17841)) mapDefault!57925)))))

(declare-fun b!1346390 () Bool)

(declare-fun res!893477 () Bool)

(declare-fun e!766124 () Bool)

(assert (=> b!1346390 (=> (not res!893477) (not e!766124))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91751 0))(
  ( (array!91752 (arr!44327 (Array (_ BitVec 32) (_ BitVec 64))) (size!44878 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91751)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1346390 (= res!893477 (and (= (size!44877 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44878 _keys!1571) (size!44877 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346391 () Bool)

(declare-fun res!893479 () Bool)

(assert (=> b!1346391 (=> (not res!893479) (not e!766124))))

(declare-datatypes ((List!31565 0))(
  ( (Nil!31562) (Cons!31561 (h!32770 (_ BitVec 64)) (t!46162 List!31565)) )
))
(declare-fun arrayNoDuplicates!0 (array!91751 (_ BitVec 32) List!31565) Bool)

(assert (=> b!1346391 (= res!893479 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31562))))

(declare-fun res!893476 () Bool)

(assert (=> start!113464 (=> (not res!893476) (not e!766124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113464 (= res!893476 (validMask!0 mask!1977))))

(assert (=> start!113464 e!766124))

(declare-fun tp_is_empty!37479 () Bool)

(assert (=> start!113464 tp_is_empty!37479))

(assert (=> start!113464 true))

(declare-fun array_inv!33315 (array!91751) Bool)

(assert (=> start!113464 (array_inv!33315 _keys!1571)))

(declare-fun array_inv!33316 (array!91749) Bool)

(assert (=> start!113464 (and (array_inv!33316 _values!1303) e!766125)))

(assert (=> start!113464 tp!110243))

(declare-fun b!1346392 () Bool)

(assert (=> b!1346392 (= e!766124 false)))

(declare-fun minValue!1245 () V!55075)

(declare-fun zeroValue!1245 () V!55075)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun lt!595453 () Bool)

(declare-datatypes ((tuple2!24390 0))(
  ( (tuple2!24391 (_1!12205 (_ BitVec 64)) (_2!12205 V!55075)) )
))
(declare-datatypes ((List!31566 0))(
  ( (Nil!31563) (Cons!31562 (h!32771 tuple2!24390) (t!46163 List!31566)) )
))
(declare-datatypes ((ListLongMap!22059 0))(
  ( (ListLongMap!22060 (toList!11045 List!31566)) )
))
(declare-fun contains!9157 (ListLongMap!22059 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5936 (array!91751 array!91749 (_ BitVec 32) (_ BitVec 32) V!55075 V!55075 (_ BitVec 32) Int) ListLongMap!22059)

(assert (=> b!1346392 (= lt!595453 (contains!9157 (getCurrentListMap!5936 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!57925 () Bool)

(declare-fun tp!110242 () Bool)

(declare-fun e!766127 () Bool)

(assert (=> mapNonEmpty!57925 (= mapRes!57925 (and tp!110242 e!766127))))

(declare-fun mapKey!57925 () (_ BitVec 32))

(declare-fun mapValue!57925 () ValueCell!17841)

(declare-fun mapRest!57925 () (Array (_ BitVec 32) ValueCell!17841))

(assert (=> mapNonEmpty!57925 (= (arr!44326 _values!1303) (store mapRest!57925 mapKey!57925 mapValue!57925))))

(declare-fun b!1346393 () Bool)

(assert (=> b!1346393 (= e!766126 tp_is_empty!37479)))

(declare-fun b!1346394 () Bool)

(assert (=> b!1346394 (= e!766127 tp_is_empty!37479)))

(declare-fun b!1346395 () Bool)

(declare-fun res!893478 () Bool)

(assert (=> b!1346395 (=> (not res!893478) (not e!766124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91751 (_ BitVec 32)) Bool)

(assert (=> b!1346395 (= res!893478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57925 () Bool)

(assert (=> mapIsEmpty!57925 mapRes!57925))

(declare-fun b!1346396 () Bool)

(declare-fun res!893480 () Bool)

(assert (=> b!1346396 (=> (not res!893480) (not e!766124))))

(assert (=> b!1346396 (= res!893480 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44878 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!113464 res!893476) b!1346390))

(assert (= (and b!1346390 res!893477) b!1346395))

(assert (= (and b!1346395 res!893478) b!1346391))

(assert (= (and b!1346391 res!893479) b!1346396))

(assert (= (and b!1346396 res!893480) b!1346392))

(assert (= (and b!1346389 condMapEmpty!57925) mapIsEmpty!57925))

(assert (= (and b!1346389 (not condMapEmpty!57925)) mapNonEmpty!57925))

(get-info :version)

(assert (= (and mapNonEmpty!57925 ((_ is ValueCellFull!17841) mapValue!57925)) b!1346394))

(assert (= (and b!1346389 ((_ is ValueCellFull!17841) mapDefault!57925)) b!1346393))

(assert (= start!113464 b!1346389))

(declare-fun m!1233563 () Bool)

(assert (=> start!113464 m!1233563))

(declare-fun m!1233565 () Bool)

(assert (=> start!113464 m!1233565))

(declare-fun m!1233567 () Bool)

(assert (=> start!113464 m!1233567))

(declare-fun m!1233569 () Bool)

(assert (=> b!1346395 m!1233569))

(declare-fun m!1233571 () Bool)

(assert (=> mapNonEmpty!57925 m!1233571))

(declare-fun m!1233573 () Bool)

(assert (=> b!1346392 m!1233573))

(assert (=> b!1346392 m!1233573))

(declare-fun m!1233575 () Bool)

(assert (=> b!1346392 m!1233575))

(declare-fun m!1233577 () Bool)

(assert (=> b!1346391 m!1233577))

(check-sat (not b!1346395) (not b!1346392) (not mapNonEmpty!57925) (not b!1346391) (not start!113464) (not b_next!31479) tp_is_empty!37479 b_and!50777)
(check-sat b_and!50777 (not b_next!31479))
