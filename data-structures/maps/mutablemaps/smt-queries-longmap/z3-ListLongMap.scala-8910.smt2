; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108148 () Bool)

(assert start!108148)

(declare-fun b_free!27825 () Bool)

(declare-fun b_next!27825 () Bool)

(assert (=> start!108148 (= b_free!27825 (not b_next!27825))))

(declare-fun tp!98430 () Bool)

(declare-fun b_and!45891 () Bool)

(assert (=> start!108148 (= tp!98430 b_and!45891)))

(declare-fun b!1276635 () Bool)

(declare-fun e!729068 () Bool)

(declare-fun tp_is_empty!33375 () Bool)

(assert (=> b!1276635 (= e!729068 tp_is_empty!33375)))

(declare-fun b!1276636 () Bool)

(declare-fun e!729067 () Bool)

(assert (=> b!1276636 (= e!729067 false)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49603 0))(
  ( (V!49604 (val!16762 Int)) )
))
(declare-fun minValue!1129 () V!49603)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15789 0))(
  ( (ValueCellFull!15789 (v!19357 V!49603)) (EmptyCell!15789) )
))
(declare-datatypes ((array!83795 0))(
  ( (array!83796 (arr!40404 (Array (_ BitVec 32) ValueCell!15789)) (size!40955 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83795)

(declare-fun lt!575466 () Bool)

(declare-fun zeroValue!1129 () V!49603)

(declare-datatypes ((array!83797 0))(
  ( (array!83798 (arr!40405 (Array (_ BitVec 32) (_ BitVec 64))) (size!40956 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83797)

(declare-datatypes ((tuple2!21646 0))(
  ( (tuple2!21647 (_1!10833 (_ BitVec 64)) (_2!10833 V!49603)) )
))
(declare-datatypes ((List!28832 0))(
  ( (Nil!28829) (Cons!28828 (h!30037 tuple2!21646) (t!42375 List!28832)) )
))
(declare-datatypes ((ListLongMap!19315 0))(
  ( (ListLongMap!19316 (toList!9673 List!28832)) )
))
(declare-fun contains!7720 (ListLongMap!19315 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4693 (array!83797 array!83795 (_ BitVec 32) (_ BitVec 32) V!49603 V!49603 (_ BitVec 32) Int) ListLongMap!19315)

(assert (=> b!1276636 (= lt!575466 (contains!7720 (getCurrentListMap!4693 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1276637 () Bool)

(declare-fun e!729069 () Bool)

(declare-fun mapRes!51593 () Bool)

(assert (=> b!1276637 (= e!729069 (and e!729068 mapRes!51593))))

(declare-fun condMapEmpty!51593 () Bool)

(declare-fun mapDefault!51593 () ValueCell!15789)

(assert (=> b!1276637 (= condMapEmpty!51593 (= (arr!40404 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15789)) mapDefault!51593)))))

(declare-fun mapNonEmpty!51593 () Bool)

(declare-fun tp!98429 () Bool)

(declare-fun e!729071 () Bool)

(assert (=> mapNonEmpty!51593 (= mapRes!51593 (and tp!98429 e!729071))))

(declare-fun mapValue!51593 () ValueCell!15789)

(declare-fun mapKey!51593 () (_ BitVec 32))

(declare-fun mapRest!51593 () (Array (_ BitVec 32) ValueCell!15789))

(assert (=> mapNonEmpty!51593 (= (arr!40404 _values!1187) (store mapRest!51593 mapKey!51593 mapValue!51593))))

(declare-fun b!1276638 () Bool)

(declare-fun res!848475 () Bool)

(assert (=> b!1276638 (=> (not res!848475) (not e!729067))))

(declare-datatypes ((List!28833 0))(
  ( (Nil!28830) (Cons!28829 (h!30038 (_ BitVec 64)) (t!42376 List!28833)) )
))
(declare-fun arrayNoDuplicates!0 (array!83797 (_ BitVec 32) List!28833) Bool)

(assert (=> b!1276638 (= res!848475 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28830))))

(declare-fun b!1276640 () Bool)

(assert (=> b!1276640 (= e!729071 tp_is_empty!33375)))

(declare-fun b!1276641 () Bool)

(declare-fun res!848474 () Bool)

(assert (=> b!1276641 (=> (not res!848474) (not e!729067))))

(assert (=> b!1276641 (= res!848474 (and (= (size!40955 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40956 _keys!1427) (size!40955 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51593 () Bool)

(assert (=> mapIsEmpty!51593 mapRes!51593))

(declare-fun b!1276639 () Bool)

(declare-fun res!848472 () Bool)

(assert (=> b!1276639 (=> (not res!848472) (not e!729067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83797 (_ BitVec 32)) Bool)

(assert (=> b!1276639 (= res!848472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun res!848473 () Bool)

(assert (=> start!108148 (=> (not res!848473) (not e!729067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108148 (= res!848473 (validMask!0 mask!1805))))

(assert (=> start!108148 e!729067))

(assert (=> start!108148 true))

(assert (=> start!108148 tp!98430))

(assert (=> start!108148 tp_is_empty!33375))

(declare-fun array_inv!30665 (array!83795) Bool)

(assert (=> start!108148 (and (array_inv!30665 _values!1187) e!729069)))

(declare-fun array_inv!30666 (array!83797) Bool)

(assert (=> start!108148 (array_inv!30666 _keys!1427)))

(assert (= (and start!108148 res!848473) b!1276641))

(assert (= (and b!1276641 res!848474) b!1276639))

(assert (= (and b!1276639 res!848472) b!1276638))

(assert (= (and b!1276638 res!848475) b!1276636))

(assert (= (and b!1276637 condMapEmpty!51593) mapIsEmpty!51593))

(assert (= (and b!1276637 (not condMapEmpty!51593)) mapNonEmpty!51593))

(get-info :version)

(assert (= (and mapNonEmpty!51593 ((_ is ValueCellFull!15789) mapValue!51593)) b!1276640))

(assert (= (and b!1276637 ((_ is ValueCellFull!15789) mapDefault!51593)) b!1276635))

(assert (= start!108148 b!1276637))

(declare-fun m!1172523 () Bool)

(assert (=> start!108148 m!1172523))

(declare-fun m!1172525 () Bool)

(assert (=> start!108148 m!1172525))

(declare-fun m!1172527 () Bool)

(assert (=> start!108148 m!1172527))

(declare-fun m!1172529 () Bool)

(assert (=> b!1276638 m!1172529))

(declare-fun m!1172531 () Bool)

(assert (=> mapNonEmpty!51593 m!1172531))

(declare-fun m!1172533 () Bool)

(assert (=> b!1276639 m!1172533))

(declare-fun m!1172535 () Bool)

(assert (=> b!1276636 m!1172535))

(assert (=> b!1276636 m!1172535))

(declare-fun m!1172537 () Bool)

(assert (=> b!1276636 m!1172537))

(check-sat (not b!1276636) b_and!45891 (not mapNonEmpty!51593) (not b!1276639) (not b_next!27825) tp_is_empty!33375 (not start!108148) (not b!1276638))
(check-sat b_and!45891 (not b_next!27825))
