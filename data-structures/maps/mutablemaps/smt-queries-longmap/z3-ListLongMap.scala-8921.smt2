; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108232 () Bool)

(assert start!108232)

(declare-fun b_free!27891 () Bool)

(declare-fun b_next!27891 () Bool)

(assert (=> start!108232 (= b_free!27891 (not b_next!27891))))

(declare-fun tp!98631 () Bool)

(declare-fun b_and!45959 () Bool)

(assert (=> start!108232 (= tp!98631 b_and!45959)))

(declare-fun b!1277557 () Bool)

(declare-fun res!848974 () Bool)

(declare-fun e!729674 () Bool)

(assert (=> b!1277557 (=> (not res!848974) (not e!729674))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83921 0))(
  ( (array!83922 (arr!40466 (Array (_ BitVec 32) (_ BitVec 64))) (size!41017 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83921)

(declare-datatypes ((V!49691 0))(
  ( (V!49692 (val!16795 Int)) )
))
(declare-datatypes ((ValueCell!15822 0))(
  ( (ValueCellFull!15822 (v!19391 V!49691)) (EmptyCell!15822) )
))
(declare-datatypes ((array!83923 0))(
  ( (array!83924 (arr!40467 (Array (_ BitVec 32) ValueCell!15822)) (size!41018 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83923)

(assert (=> b!1277557 (= res!848974 (and (= (size!41018 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41017 _keys!1427) (size!41018 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277558 () Bool)

(declare-fun e!729672 () Bool)

(declare-fun tp_is_empty!33441 () Bool)

(assert (=> b!1277558 (= e!729672 tp_is_empty!33441)))

(declare-fun b!1277559 () Bool)

(declare-fun res!848973 () Bool)

(assert (=> b!1277559 (=> (not res!848973) (not e!729674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83921 (_ BitVec 32)) Bool)

(assert (=> b!1277559 (= res!848973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapIsEmpty!51695 () Bool)

(declare-fun mapRes!51695 () Bool)

(assert (=> mapIsEmpty!51695 mapRes!51695))

(declare-fun b!1277560 () Bool)

(declare-fun e!729673 () Bool)

(declare-fun e!729670 () Bool)

(assert (=> b!1277560 (= e!729673 (and e!729670 mapRes!51695))))

(declare-fun condMapEmpty!51695 () Bool)

(declare-fun mapDefault!51695 () ValueCell!15822)

(assert (=> b!1277560 (= condMapEmpty!51695 (= (arr!40467 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15822)) mapDefault!51695)))))

(declare-fun res!848975 () Bool)

(assert (=> start!108232 (=> (not res!848975) (not e!729674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108232 (= res!848975 (validMask!0 mask!1805))))

(assert (=> start!108232 e!729674))

(assert (=> start!108232 true))

(assert (=> start!108232 tp!98631))

(assert (=> start!108232 tp_is_empty!33441))

(declare-fun array_inv!30713 (array!83923) Bool)

(assert (=> start!108232 (and (array_inv!30713 _values!1187) e!729673)))

(declare-fun array_inv!30714 (array!83921) Bool)

(assert (=> start!108232 (array_inv!30714 _keys!1427)))

(declare-fun b!1277561 () Bool)

(declare-fun res!848976 () Bool)

(assert (=> b!1277561 (=> (not res!848976) (not e!729674))))

(declare-datatypes ((List!28880 0))(
  ( (Nil!28877) (Cons!28876 (h!30085 (_ BitVec 64)) (t!42425 List!28880)) )
))
(declare-fun arrayNoDuplicates!0 (array!83921 (_ BitVec 32) List!28880) Bool)

(assert (=> b!1277561 (= res!848976 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28877))))

(declare-fun b!1277562 () Bool)

(assert (=> b!1277562 (= e!729674 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49691)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun lt!575664 () Bool)

(declare-fun zeroValue!1129 () V!49691)

(declare-datatypes ((tuple2!21694 0))(
  ( (tuple2!21695 (_1!10857 (_ BitVec 64)) (_2!10857 V!49691)) )
))
(declare-datatypes ((List!28881 0))(
  ( (Nil!28878) (Cons!28877 (h!30086 tuple2!21694) (t!42426 List!28881)) )
))
(declare-datatypes ((ListLongMap!19363 0))(
  ( (ListLongMap!19364 (toList!9697 List!28881)) )
))
(declare-fun contains!7745 (ListLongMap!19363 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4717 (array!83921 array!83923 (_ BitVec 32) (_ BitVec 32) V!49691 V!49691 (_ BitVec 32) Int) ListLongMap!19363)

(assert (=> b!1277562 (= lt!575664 (contains!7745 (getCurrentListMap!4717 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1277563 () Bool)

(assert (=> b!1277563 (= e!729670 tp_is_empty!33441)))

(declare-fun mapNonEmpty!51695 () Bool)

(declare-fun tp!98630 () Bool)

(assert (=> mapNonEmpty!51695 (= mapRes!51695 (and tp!98630 e!729672))))

(declare-fun mapRest!51695 () (Array (_ BitVec 32) ValueCell!15822))

(declare-fun mapKey!51695 () (_ BitVec 32))

(declare-fun mapValue!51695 () ValueCell!15822)

(assert (=> mapNonEmpty!51695 (= (arr!40467 _values!1187) (store mapRest!51695 mapKey!51695 mapValue!51695))))

(assert (= (and start!108232 res!848975) b!1277557))

(assert (= (and b!1277557 res!848974) b!1277559))

(assert (= (and b!1277559 res!848973) b!1277561))

(assert (= (and b!1277561 res!848976) b!1277562))

(assert (= (and b!1277560 condMapEmpty!51695) mapIsEmpty!51695))

(assert (= (and b!1277560 (not condMapEmpty!51695)) mapNonEmpty!51695))

(get-info :version)

(assert (= (and mapNonEmpty!51695 ((_ is ValueCellFull!15822) mapValue!51695)) b!1277558))

(assert (= (and b!1277560 ((_ is ValueCellFull!15822) mapDefault!51695)) b!1277563))

(assert (= start!108232 b!1277560))

(declare-fun m!1173171 () Bool)

(assert (=> b!1277561 m!1173171))

(declare-fun m!1173173 () Bool)

(assert (=> b!1277559 m!1173173))

(declare-fun m!1173175 () Bool)

(assert (=> mapNonEmpty!51695 m!1173175))

(declare-fun m!1173177 () Bool)

(assert (=> start!108232 m!1173177))

(declare-fun m!1173179 () Bool)

(assert (=> start!108232 m!1173179))

(declare-fun m!1173181 () Bool)

(assert (=> start!108232 m!1173181))

(declare-fun m!1173183 () Bool)

(assert (=> b!1277562 m!1173183))

(assert (=> b!1277562 m!1173183))

(declare-fun m!1173185 () Bool)

(assert (=> b!1277562 m!1173185))

(check-sat (not start!108232) (not b_next!27891) (not b!1277561) (not b!1277562) (not mapNonEmpty!51695) (not b!1277559) tp_is_empty!33441 b_and!45959)
(check-sat b_and!45959 (not b_next!27891))
