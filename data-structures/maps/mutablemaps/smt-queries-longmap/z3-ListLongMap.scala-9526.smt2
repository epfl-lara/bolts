; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113056 () Bool)

(assert start!113056)

(declare-fun b_free!31071 () Bool)

(declare-fun b_next!31071 () Bool)

(assert (=> start!113056 (= b_free!31071 (not b_next!31071))))

(declare-fun tp!109018 () Bool)

(declare-fun b_and!50111 () Bool)

(assert (=> start!113056 (= tp!109018 b_and!50111)))

(declare-fun mapNonEmpty!57313 () Bool)

(declare-fun mapRes!57313 () Bool)

(declare-fun tp!109019 () Bool)

(declare-fun e!762986 () Bool)

(assert (=> mapNonEmpty!57313 (= mapRes!57313 (and tp!109019 e!762986))))

(declare-datatypes ((V!54531 0))(
  ( (V!54532 (val!18610 Int)) )
))
(declare-datatypes ((ValueCell!17637 0))(
  ( (ValueCellFull!17637 (v!21256 V!54531)) (EmptyCell!17637) )
))
(declare-fun mapRest!57313 () (Array (_ BitVec 32) ValueCell!17637))

(declare-fun mapValue!57313 () ValueCell!17637)

(declare-fun mapKey!57313 () (_ BitVec 32))

(declare-datatypes ((array!90961 0))(
  ( (array!90962 (arr!43932 (Array (_ BitVec 32) ValueCell!17637)) (size!44483 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90961)

(assert (=> mapNonEmpty!57313 (= (arr!43932 _values!1303) (store mapRest!57313 mapKey!57313 mapValue!57313))))

(declare-fun b!1339471 () Bool)

(declare-fun e!762982 () Bool)

(assert (=> b!1339471 (= e!762982 false)))

(declare-fun lt!593833 () Bool)

(declare-fun minValue!1245 () V!54531)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!90963 0))(
  ( (array!90964 (arr!43933 (Array (_ BitVec 32) (_ BitVec 64))) (size!44484 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90963)

(declare-fun zeroValue!1245 () V!54531)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24100 0))(
  ( (tuple2!24101 (_1!12060 (_ BitVec 64)) (_2!12060 V!54531)) )
))
(declare-datatypes ((List!31285 0))(
  ( (Nil!31282) (Cons!31281 (h!32490 tuple2!24100) (t!45624 List!31285)) )
))
(declare-datatypes ((ListLongMap!21769 0))(
  ( (ListLongMap!21770 (toList!10900 List!31285)) )
))
(declare-fun contains!9012 (ListLongMap!21769 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5804 (array!90963 array!90961 (_ BitVec 32) (_ BitVec 32) V!54531 V!54531 (_ BitVec 32) Int) ListLongMap!21769)

(assert (=> b!1339471 (= lt!593833 (contains!9012 (getCurrentListMap!5804 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1339472 () Bool)

(declare-fun tp_is_empty!37071 () Bool)

(assert (=> b!1339472 (= e!762986 tp_is_empty!37071)))

(declare-fun res!888653 () Bool)

(assert (=> start!113056 (=> (not res!888653) (not e!762982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113056 (= res!888653 (validMask!0 mask!1977))))

(assert (=> start!113056 e!762982))

(assert (=> start!113056 tp_is_empty!37071))

(assert (=> start!113056 true))

(declare-fun array_inv!33047 (array!90963) Bool)

(assert (=> start!113056 (array_inv!33047 _keys!1571)))

(declare-fun e!762985 () Bool)

(declare-fun array_inv!33048 (array!90961) Bool)

(assert (=> start!113056 (and (array_inv!33048 _values!1303) e!762985)))

(assert (=> start!113056 tp!109018))

(declare-fun mapIsEmpty!57313 () Bool)

(assert (=> mapIsEmpty!57313 mapRes!57313))

(declare-fun b!1339473 () Bool)

(declare-fun e!762984 () Bool)

(assert (=> b!1339473 (= e!762985 (and e!762984 mapRes!57313))))

(declare-fun condMapEmpty!57313 () Bool)

(declare-fun mapDefault!57313 () ValueCell!17637)

(assert (=> b!1339473 (= condMapEmpty!57313 (= (arr!43932 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17637)) mapDefault!57313)))))

(declare-fun b!1339474 () Bool)

(declare-fun res!888654 () Bool)

(assert (=> b!1339474 (=> (not res!888654) (not e!762982))))

(assert (=> b!1339474 (= res!888654 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44484 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339475 () Bool)

(assert (=> b!1339475 (= e!762984 tp_is_empty!37071)))

(declare-fun b!1339476 () Bool)

(declare-fun res!888652 () Bool)

(assert (=> b!1339476 (=> (not res!888652) (not e!762982))))

(declare-datatypes ((List!31286 0))(
  ( (Nil!31283) (Cons!31282 (h!32491 (_ BitVec 64)) (t!45625 List!31286)) )
))
(declare-fun arrayNoDuplicates!0 (array!90963 (_ BitVec 32) List!31286) Bool)

(assert (=> b!1339476 (= res!888652 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31283))))

(declare-fun b!1339477 () Bool)

(declare-fun res!888656 () Bool)

(assert (=> b!1339477 (=> (not res!888656) (not e!762982))))

(assert (=> b!1339477 (= res!888656 (and (= (size!44483 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44484 _keys!1571) (size!44483 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339478 () Bool)

(declare-fun res!888655 () Bool)

(assert (=> b!1339478 (=> (not res!888655) (not e!762982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90963 (_ BitVec 32)) Bool)

(assert (=> b!1339478 (= res!888655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(assert (= (and start!113056 res!888653) b!1339477))

(assert (= (and b!1339477 res!888656) b!1339478))

(assert (= (and b!1339478 res!888655) b!1339476))

(assert (= (and b!1339476 res!888652) b!1339474))

(assert (= (and b!1339474 res!888654) b!1339471))

(assert (= (and b!1339473 condMapEmpty!57313) mapIsEmpty!57313))

(assert (= (and b!1339473 (not condMapEmpty!57313)) mapNonEmpty!57313))

(get-info :version)

(assert (= (and mapNonEmpty!57313 ((_ is ValueCellFull!17637) mapValue!57313)) b!1339472))

(assert (= (and b!1339473 ((_ is ValueCellFull!17637) mapDefault!57313)) b!1339475))

(assert (= start!113056 b!1339473))

(declare-fun m!1227521 () Bool)

(assert (=> b!1339478 m!1227521))

(declare-fun m!1227523 () Bool)

(assert (=> start!113056 m!1227523))

(declare-fun m!1227525 () Bool)

(assert (=> start!113056 m!1227525))

(declare-fun m!1227527 () Bool)

(assert (=> start!113056 m!1227527))

(declare-fun m!1227529 () Bool)

(assert (=> b!1339471 m!1227529))

(assert (=> b!1339471 m!1227529))

(declare-fun m!1227531 () Bool)

(assert (=> b!1339471 m!1227531))

(declare-fun m!1227533 () Bool)

(assert (=> b!1339476 m!1227533))

(declare-fun m!1227535 () Bool)

(assert (=> mapNonEmpty!57313 m!1227535))

(check-sat (not b!1339476) b_and!50111 (not b!1339471) tp_is_empty!37071 (not b_next!31071) (not mapNonEmpty!57313) (not b!1339478) (not start!113056))
(check-sat b_and!50111 (not b_next!31071))
