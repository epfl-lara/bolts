; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113476 () Bool)

(assert start!113476)

(declare-fun b_free!31491 () Bool)

(declare-fun b_next!31491 () Bool)

(assert (=> start!113476 (= b_free!31491 (not b_next!31491))))

(declare-fun tp!110279 () Bool)

(declare-fun b_and!50789 () Bool)

(assert (=> start!113476 (= tp!110279 b_and!50789)))

(declare-fun b!1346560 () Bool)

(declare-fun res!893597 () Bool)

(declare-fun e!766214 () Bool)

(assert (=> b!1346560 (=> (not res!893597) (not e!766214))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91771 0))(
  ( (array!91772 (arr!44337 (Array (_ BitVec 32) (_ BitVec 64))) (size!44888 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91771)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55091 0))(
  ( (V!55092 (val!18820 Int)) )
))
(declare-datatypes ((ValueCell!17847 0))(
  ( (ValueCellFull!17847 (v!21466 V!55091)) (EmptyCell!17847) )
))
(declare-datatypes ((array!91773 0))(
  ( (array!91774 (arr!44338 (Array (_ BitVec 32) ValueCell!17847)) (size!44889 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91773)

(assert (=> b!1346560 (= res!893597 (and (= (size!44889 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44888 _keys!1571) (size!44889 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346561 () Bool)

(assert (=> b!1346561 (= e!766214 false)))

(declare-fun minValue!1245 () V!55091)

(declare-fun lt!595462 () Bool)

(declare-fun zeroValue!1245 () V!55091)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24396 0))(
  ( (tuple2!24397 (_1!12208 (_ BitVec 64)) (_2!12208 V!55091)) )
))
(declare-datatypes ((List!31570 0))(
  ( (Nil!31567) (Cons!31566 (h!32775 tuple2!24396) (t!46167 List!31570)) )
))
(declare-datatypes ((ListLongMap!22065 0))(
  ( (ListLongMap!22066 (toList!11048 List!31570)) )
))
(declare-fun contains!9160 (ListLongMap!22065 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5939 (array!91771 array!91773 (_ BitVec 32) (_ BitVec 32) V!55091 V!55091 (_ BitVec 32) Int) ListLongMap!22065)

(assert (=> b!1346561 (= lt!595462 (contains!9160 (getCurrentListMap!5939 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapIsEmpty!57943 () Bool)

(declare-fun mapRes!57943 () Bool)

(assert (=> mapIsEmpty!57943 mapRes!57943))

(declare-fun b!1346562 () Bool)

(declare-fun e!766216 () Bool)

(declare-fun tp_is_empty!37491 () Bool)

(assert (=> b!1346562 (= e!766216 tp_is_empty!37491)))

(declare-fun b!1346563 () Bool)

(declare-fun e!766215 () Bool)

(assert (=> b!1346563 (= e!766215 tp_is_empty!37491)))

(declare-fun mapNonEmpty!57943 () Bool)

(declare-fun tp!110278 () Bool)

(assert (=> mapNonEmpty!57943 (= mapRes!57943 (and tp!110278 e!766216))))

(declare-fun mapKey!57943 () (_ BitVec 32))

(declare-fun mapValue!57943 () ValueCell!17847)

(declare-fun mapRest!57943 () (Array (_ BitVec 32) ValueCell!17847))

(assert (=> mapNonEmpty!57943 (= (arr!44338 _values!1303) (store mapRest!57943 mapKey!57943 mapValue!57943))))

(declare-fun res!893593 () Bool)

(assert (=> start!113476 (=> (not res!893593) (not e!766214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113476 (= res!893593 (validMask!0 mask!1977))))

(assert (=> start!113476 e!766214))

(assert (=> start!113476 tp_is_empty!37491))

(assert (=> start!113476 true))

(declare-fun array_inv!33321 (array!91771) Bool)

(assert (=> start!113476 (array_inv!33321 _keys!1571)))

(declare-fun e!766213 () Bool)

(declare-fun array_inv!33322 (array!91773) Bool)

(assert (=> start!113476 (and (array_inv!33322 _values!1303) e!766213)))

(assert (=> start!113476 tp!110279))

(declare-fun b!1346564 () Bool)

(declare-fun res!893594 () Bool)

(assert (=> b!1346564 (=> (not res!893594) (not e!766214))))

(assert (=> b!1346564 (= res!893594 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44888 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346565 () Bool)

(declare-fun res!893596 () Bool)

(assert (=> b!1346565 (=> (not res!893596) (not e!766214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91771 (_ BitVec 32)) Bool)

(assert (=> b!1346565 (= res!893596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346566 () Bool)

(declare-fun res!893595 () Bool)

(assert (=> b!1346566 (=> (not res!893595) (not e!766214))))

(declare-datatypes ((List!31571 0))(
  ( (Nil!31568) (Cons!31567 (h!32776 (_ BitVec 64)) (t!46168 List!31571)) )
))
(declare-fun arrayNoDuplicates!0 (array!91771 (_ BitVec 32) List!31571) Bool)

(assert (=> b!1346566 (= res!893595 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31568))))

(declare-fun b!1346567 () Bool)

(assert (=> b!1346567 (= e!766213 (and e!766215 mapRes!57943))))

(declare-fun condMapEmpty!57943 () Bool)

(declare-fun mapDefault!57943 () ValueCell!17847)

(assert (=> b!1346567 (= condMapEmpty!57943 (= (arr!44338 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17847)) mapDefault!57943)))))

(assert (= (and start!113476 res!893593) b!1346560))

(assert (= (and b!1346560 res!893597) b!1346565))

(assert (= (and b!1346565 res!893596) b!1346566))

(assert (= (and b!1346566 res!893595) b!1346564))

(assert (= (and b!1346564 res!893594) b!1346561))

(assert (= (and b!1346567 condMapEmpty!57943) mapIsEmpty!57943))

(assert (= (and b!1346567 (not condMapEmpty!57943)) mapNonEmpty!57943))

(get-info :version)

(assert (= (and mapNonEmpty!57943 ((_ is ValueCellFull!17847) mapValue!57943)) b!1346562))

(assert (= (and b!1346567 ((_ is ValueCellFull!17847) mapDefault!57943)) b!1346563))

(assert (= start!113476 b!1346567))

(declare-fun m!1233671 () Bool)

(assert (=> start!113476 m!1233671))

(declare-fun m!1233673 () Bool)

(assert (=> start!113476 m!1233673))

(declare-fun m!1233675 () Bool)

(assert (=> start!113476 m!1233675))

(declare-fun m!1233677 () Bool)

(assert (=> b!1346561 m!1233677))

(assert (=> b!1346561 m!1233677))

(declare-fun m!1233679 () Bool)

(assert (=> b!1346561 m!1233679))

(declare-fun m!1233681 () Bool)

(assert (=> b!1346566 m!1233681))

(declare-fun m!1233683 () Bool)

(assert (=> mapNonEmpty!57943 m!1233683))

(declare-fun m!1233685 () Bool)

(assert (=> b!1346565 m!1233685))

(check-sat (not b!1346566) b_and!50789 (not b_next!31491) (not mapNonEmpty!57943) (not b!1346561) (not start!113476) tp_is_empty!37491 (not b!1346565))
(check-sat b_and!50789 (not b_next!31491))
