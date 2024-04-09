; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110634 () Bool)

(assert start!110634)

(declare-fun b_free!29433 () Bool)

(declare-fun b_next!29433 () Bool)

(assert (=> start!110634 (= b_free!29433 (not b_next!29433))))

(declare-fun tp!103621 () Bool)

(declare-fun b_and!47651 () Bool)

(assert (=> start!110634 (= tp!103621 b_and!47651)))

(declare-fun b!1308470 () Bool)

(declare-fun e!746584 () Bool)

(declare-fun e!746582 () Bool)

(declare-fun mapRes!54373 () Bool)

(assert (=> b!1308470 (= e!746584 (and e!746582 mapRes!54373))))

(declare-fun condMapEmpty!54373 () Bool)

(declare-datatypes ((V!51987 0))(
  ( (V!51988 (val!17656 Int)) )
))
(declare-datatypes ((ValueCell!16683 0))(
  ( (ValueCellFull!16683 (v!20281 V!51987)) (EmptyCell!16683) )
))
(declare-datatypes ((array!87291 0))(
  ( (array!87292 (arr!42121 (Array (_ BitVec 32) ValueCell!16683)) (size!42672 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87291)

(declare-fun mapDefault!54373 () ValueCell!16683)

(assert (=> b!1308470 (= condMapEmpty!54373 (= (arr!42121 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16683)) mapDefault!54373)))))

(declare-fun b!1308471 () Bool)

(declare-fun res!868686 () Bool)

(declare-fun e!746585 () Bool)

(assert (=> b!1308471 (=> (not res!868686) (not e!746585))))

(declare-datatypes ((array!87293 0))(
  ( (array!87294 (arr!42122 (Array (_ BitVec 32) (_ BitVec 64))) (size!42673 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87293)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308471 (= res!868686 (validKeyInArray!0 (select (arr!42122 _keys!1628) from!2020)))))

(declare-fun b!1308472 () Bool)

(declare-fun res!868688 () Bool)

(assert (=> b!1308472 (=> (not res!868688) (not e!746585))))

(declare-fun k0!1175 () (_ BitVec 64))

(assert (=> b!1308472 (= res!868688 (not (= (select (arr!42122 _keys!1628) from!2020) k0!1175)))))

(declare-fun mapIsEmpty!54373 () Bool)

(assert (=> mapIsEmpty!54373 mapRes!54373))

(declare-fun b!1308473 () Bool)

(declare-fun res!868691 () Bool)

(assert (=> b!1308473 (=> (not res!868691) (not e!746585))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun minValue!1296 () V!51987)

(declare-fun zeroValue!1296 () V!51987)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22896 0))(
  ( (tuple2!22897 (_1!11458 (_ BitVec 64)) (_2!11458 V!51987)) )
))
(declare-datatypes ((List!30069 0))(
  ( (Nil!30066) (Cons!30065 (h!31274 tuple2!22896) (t!43682 List!30069)) )
))
(declare-datatypes ((ListLongMap!20565 0))(
  ( (ListLongMap!20566 (toList!10298 List!30069)) )
))
(declare-fun contains!8384 (ListLongMap!20565 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5254 (array!87293 array!87291 (_ BitVec 32) (_ BitVec 32) V!51987 V!51987 (_ BitVec 32) Int) ListLongMap!20565)

(assert (=> b!1308473 (= res!868691 (contains!8384 (getCurrentListMap!5254 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1308474 () Bool)

(declare-fun res!868690 () Bool)

(assert (=> b!1308474 (=> (not res!868690) (not e!746585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87293 (_ BitVec 32)) Bool)

(assert (=> b!1308474 (= res!868690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308475 () Bool)

(declare-fun res!868694 () Bool)

(assert (=> b!1308475 (=> (not res!868694) (not e!746585))))

(assert (=> b!1308475 (= res!868694 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308476 () Bool)

(declare-fun res!868689 () Bool)

(assert (=> b!1308476 (=> (not res!868689) (not e!746585))))

(assert (=> b!1308476 (= res!868689 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42673 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308477 () Bool)

(declare-fun tp_is_empty!35163 () Bool)

(assert (=> b!1308477 (= e!746582 tp_is_empty!35163)))

(declare-fun b!1308479 () Bool)

(declare-fun res!868687 () Bool)

(assert (=> b!1308479 (=> (not res!868687) (not e!746585))))

(declare-datatypes ((List!30070 0))(
  ( (Nil!30067) (Cons!30066 (h!31275 (_ BitVec 64)) (t!43683 List!30070)) )
))
(declare-fun arrayNoDuplicates!0 (array!87293 (_ BitVec 32) List!30070) Bool)

(assert (=> b!1308479 (= res!868687 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30067))))

(declare-fun mapNonEmpty!54373 () Bool)

(declare-fun tp!103622 () Bool)

(declare-fun e!746581 () Bool)

(assert (=> mapNonEmpty!54373 (= mapRes!54373 (and tp!103622 e!746581))))

(declare-fun mapRest!54373 () (Array (_ BitVec 32) ValueCell!16683))

(declare-fun mapValue!54373 () ValueCell!16683)

(declare-fun mapKey!54373 () (_ BitVec 32))

(assert (=> mapNonEmpty!54373 (= (arr!42121 _values!1354) (store mapRest!54373 mapKey!54373 mapValue!54373))))

(declare-fun b!1308480 () Bool)

(assert (=> b!1308480 (= e!746585 (not true))))

(assert (=> b!1308480 (contains!8384 (getCurrentListMap!5254 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43244 0))(
  ( (Unit!43245) )
))
(declare-fun lt!585100 () Unit!43244)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!12 (array!87293 array!87291 (_ BitVec 32) (_ BitVec 32) V!51987 V!51987 (_ BitVec 64) (_ BitVec 32) Int) Unit!43244)

(assert (=> b!1308480 (= lt!585100 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!12 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1308481 () Bool)

(declare-fun res!868692 () Bool)

(assert (=> b!1308481 (=> (not res!868692) (not e!746585))))

(assert (=> b!1308481 (= res!868692 (and (= (size!42672 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42673 _keys!1628) (size!42672 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308478 () Bool)

(assert (=> b!1308478 (= e!746581 tp_is_empty!35163)))

(declare-fun res!868693 () Bool)

(assert (=> start!110634 (=> (not res!868693) (not e!746585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110634 (= res!868693 (validMask!0 mask!2040))))

(assert (=> start!110634 e!746585))

(assert (=> start!110634 tp!103621))

(declare-fun array_inv!31837 (array!87293) Bool)

(assert (=> start!110634 (array_inv!31837 _keys!1628)))

(assert (=> start!110634 true))

(assert (=> start!110634 tp_is_empty!35163))

(declare-fun array_inv!31838 (array!87291) Bool)

(assert (=> start!110634 (and (array_inv!31838 _values!1354) e!746584)))

(assert (= (and start!110634 res!868693) b!1308481))

(assert (= (and b!1308481 res!868692) b!1308474))

(assert (= (and b!1308474 res!868690) b!1308479))

(assert (= (and b!1308479 res!868687) b!1308476))

(assert (= (and b!1308476 res!868689) b!1308473))

(assert (= (and b!1308473 res!868691) b!1308472))

(assert (= (and b!1308472 res!868688) b!1308471))

(assert (= (and b!1308471 res!868686) b!1308475))

(assert (= (and b!1308475 res!868694) b!1308480))

(assert (= (and b!1308470 condMapEmpty!54373) mapIsEmpty!54373))

(assert (= (and b!1308470 (not condMapEmpty!54373)) mapNonEmpty!54373))

(get-info :version)

(assert (= (and mapNonEmpty!54373 ((_ is ValueCellFull!16683) mapValue!54373)) b!1308478))

(assert (= (and b!1308470 ((_ is ValueCellFull!16683) mapDefault!54373)) b!1308477))

(assert (= start!110634 b!1308470))

(declare-fun m!1198859 () Bool)

(assert (=> b!1308480 m!1198859))

(assert (=> b!1308480 m!1198859))

(declare-fun m!1198861 () Bool)

(assert (=> b!1308480 m!1198861))

(declare-fun m!1198863 () Bool)

(assert (=> b!1308480 m!1198863))

(declare-fun m!1198865 () Bool)

(assert (=> b!1308474 m!1198865))

(declare-fun m!1198867 () Bool)

(assert (=> b!1308473 m!1198867))

(assert (=> b!1308473 m!1198867))

(declare-fun m!1198869 () Bool)

(assert (=> b!1308473 m!1198869))

(declare-fun m!1198871 () Bool)

(assert (=> b!1308471 m!1198871))

(assert (=> b!1308471 m!1198871))

(declare-fun m!1198873 () Bool)

(assert (=> b!1308471 m!1198873))

(declare-fun m!1198875 () Bool)

(assert (=> mapNonEmpty!54373 m!1198875))

(assert (=> b!1308472 m!1198871))

(declare-fun m!1198877 () Bool)

(assert (=> start!110634 m!1198877))

(declare-fun m!1198879 () Bool)

(assert (=> start!110634 m!1198879))

(declare-fun m!1198881 () Bool)

(assert (=> start!110634 m!1198881))

(declare-fun m!1198883 () Bool)

(assert (=> b!1308479 m!1198883))

(check-sat b_and!47651 (not b!1308471) (not b!1308480) (not mapNonEmpty!54373) tp_is_empty!35163 (not b!1308474) (not b_next!29433) (not b!1308479) (not start!110634) (not b!1308473))
(check-sat b_and!47651 (not b_next!29433))
