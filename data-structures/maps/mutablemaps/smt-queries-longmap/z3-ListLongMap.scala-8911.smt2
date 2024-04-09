; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108154 () Bool)

(assert start!108154)

(declare-fun b_free!27831 () Bool)

(declare-fun b_next!27831 () Bool)

(assert (=> start!108154 (= b_free!27831 (not b_next!27831))))

(declare-fun tp!98447 () Bool)

(declare-fun b_and!45897 () Bool)

(assert (=> start!108154 (= tp!98447 b_and!45897)))

(declare-fun res!848511 () Bool)

(declare-fun e!729112 () Bool)

(assert (=> start!108154 (=> (not res!848511) (not e!729112))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108154 (= res!848511 (validMask!0 mask!1805))))

(assert (=> start!108154 e!729112))

(assert (=> start!108154 true))

(assert (=> start!108154 tp!98447))

(declare-fun tp_is_empty!33381 () Bool)

(assert (=> start!108154 tp_is_empty!33381))

(declare-datatypes ((V!49611 0))(
  ( (V!49612 (val!16765 Int)) )
))
(declare-datatypes ((ValueCell!15792 0))(
  ( (ValueCellFull!15792 (v!19360 V!49611)) (EmptyCell!15792) )
))
(declare-datatypes ((array!83805 0))(
  ( (array!83806 (arr!40409 (Array (_ BitVec 32) ValueCell!15792)) (size!40960 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83805)

(declare-fun e!729113 () Bool)

(declare-fun array_inv!30669 (array!83805) Bool)

(assert (=> start!108154 (and (array_inv!30669 _values!1187) e!729113)))

(declare-datatypes ((array!83807 0))(
  ( (array!83808 (arr!40410 (Array (_ BitVec 32) (_ BitVec 64))) (size!40961 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83807)

(declare-fun array_inv!30670 (array!83807) Bool)

(assert (=> start!108154 (array_inv!30670 _keys!1427)))

(declare-fun b!1276698 () Bool)

(declare-fun e!729115 () Bool)

(declare-fun mapRes!51602 () Bool)

(assert (=> b!1276698 (= e!729113 (and e!729115 mapRes!51602))))

(declare-fun condMapEmpty!51602 () Bool)

(declare-fun mapDefault!51602 () ValueCell!15792)

(assert (=> b!1276698 (= condMapEmpty!51602 (= (arr!40409 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15792)) mapDefault!51602)))))

(declare-fun mapIsEmpty!51602 () Bool)

(assert (=> mapIsEmpty!51602 mapRes!51602))

(declare-fun mapNonEmpty!51602 () Bool)

(declare-fun tp!98448 () Bool)

(declare-fun e!729116 () Bool)

(assert (=> mapNonEmpty!51602 (= mapRes!51602 (and tp!98448 e!729116))))

(declare-fun mapKey!51602 () (_ BitVec 32))

(declare-fun mapValue!51602 () ValueCell!15792)

(declare-fun mapRest!51602 () (Array (_ BitVec 32) ValueCell!15792))

(assert (=> mapNonEmpty!51602 (= (arr!40409 _values!1187) (store mapRest!51602 mapKey!51602 mapValue!51602))))

(declare-fun b!1276699 () Bool)

(declare-fun res!848509 () Bool)

(assert (=> b!1276699 (=> (not res!848509) (not e!729112))))

(declare-datatypes ((List!28834 0))(
  ( (Nil!28831) (Cons!28830 (h!30039 (_ BitVec 64)) (t!42377 List!28834)) )
))
(declare-fun arrayNoDuplicates!0 (array!83807 (_ BitVec 32) List!28834) Bool)

(assert (=> b!1276699 (= res!848509 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28831))))

(declare-fun b!1276700 () Bool)

(declare-fun res!848510 () Bool)

(assert (=> b!1276700 (=> (not res!848510) (not e!729112))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276700 (= res!848510 (and (= (size!40960 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40961 _keys!1427) (size!40960 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276701 () Bool)

(declare-fun res!848508 () Bool)

(assert (=> b!1276701 (=> (not res!848508) (not e!729112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83807 (_ BitVec 32)) Bool)

(assert (=> b!1276701 (= res!848508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276702 () Bool)

(assert (=> b!1276702 (= e!729116 tp_is_empty!33381)))

(declare-fun b!1276703 () Bool)

(assert (=> b!1276703 (= e!729115 tp_is_empty!33381)))

(declare-fun b!1276704 () Bool)

(assert (=> b!1276704 (= e!729112 false)))

(declare-fun lt!575475 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49611)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49611)

(declare-datatypes ((tuple2!21648 0))(
  ( (tuple2!21649 (_1!10834 (_ BitVec 64)) (_2!10834 V!49611)) )
))
(declare-datatypes ((List!28835 0))(
  ( (Nil!28832) (Cons!28831 (h!30040 tuple2!21648) (t!42378 List!28835)) )
))
(declare-datatypes ((ListLongMap!19317 0))(
  ( (ListLongMap!19318 (toList!9674 List!28835)) )
))
(declare-fun contains!7721 (ListLongMap!19317 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4694 (array!83807 array!83805 (_ BitVec 32) (_ BitVec 32) V!49611 V!49611 (_ BitVec 32) Int) ListLongMap!19317)

(assert (=> b!1276704 (= lt!575475 (contains!7721 (getCurrentListMap!4694 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(assert (= (and start!108154 res!848511) b!1276700))

(assert (= (and b!1276700 res!848510) b!1276701))

(assert (= (and b!1276701 res!848508) b!1276699))

(assert (= (and b!1276699 res!848509) b!1276704))

(assert (= (and b!1276698 condMapEmpty!51602) mapIsEmpty!51602))

(assert (= (and b!1276698 (not condMapEmpty!51602)) mapNonEmpty!51602))

(get-info :version)

(assert (= (and mapNonEmpty!51602 ((_ is ValueCellFull!15792) mapValue!51602)) b!1276702))

(assert (= (and b!1276698 ((_ is ValueCellFull!15792) mapDefault!51602)) b!1276703))

(assert (= start!108154 b!1276698))

(declare-fun m!1172571 () Bool)

(assert (=> mapNonEmpty!51602 m!1172571))

(declare-fun m!1172573 () Bool)

(assert (=> b!1276704 m!1172573))

(assert (=> b!1276704 m!1172573))

(declare-fun m!1172575 () Bool)

(assert (=> b!1276704 m!1172575))

(declare-fun m!1172577 () Bool)

(assert (=> b!1276701 m!1172577))

(declare-fun m!1172579 () Bool)

(assert (=> start!108154 m!1172579))

(declare-fun m!1172581 () Bool)

(assert (=> start!108154 m!1172581))

(declare-fun m!1172583 () Bool)

(assert (=> start!108154 m!1172583))

(declare-fun m!1172585 () Bool)

(assert (=> b!1276699 m!1172585))

(check-sat (not mapNonEmpty!51602) b_and!45897 tp_is_empty!33381 (not b!1276701) (not b_next!27831) (not b!1276699) (not b!1276704) (not start!108154))
(check-sat b_and!45897 (not b_next!27831))
