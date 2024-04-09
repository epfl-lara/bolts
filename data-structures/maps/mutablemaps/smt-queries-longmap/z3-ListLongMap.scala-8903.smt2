; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108106 () Bool)

(assert start!108106)

(declare-fun b_free!27783 () Bool)

(declare-fun b_next!27783 () Bool)

(assert (=> start!108106 (= b_free!27783 (not b_next!27783))))

(declare-fun tp!98304 () Bool)

(declare-fun b_and!45849 () Bool)

(assert (=> start!108106 (= tp!98304 b_and!45849)))

(declare-fun b!1276194 () Bool)

(declare-fun e!728754 () Bool)

(declare-fun e!728756 () Bool)

(declare-fun mapRes!51530 () Bool)

(assert (=> b!1276194 (= e!728754 (and e!728756 mapRes!51530))))

(declare-fun condMapEmpty!51530 () Bool)

(declare-datatypes ((V!49547 0))(
  ( (V!49548 (val!16741 Int)) )
))
(declare-datatypes ((ValueCell!15768 0))(
  ( (ValueCellFull!15768 (v!19336 V!49547)) (EmptyCell!15768) )
))
(declare-datatypes ((array!83717 0))(
  ( (array!83718 (arr!40365 (Array (_ BitVec 32) ValueCell!15768)) (size!40916 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83717)

(declare-fun mapDefault!51530 () ValueCell!15768)

(assert (=> b!1276194 (= condMapEmpty!51530 (= (arr!40365 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15768)) mapDefault!51530)))))

(declare-fun b!1276196 () Bool)

(declare-fun res!848223 () Bool)

(declare-fun e!728755 () Bool)

(assert (=> b!1276196 (=> (not res!848223) (not e!728755))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83719 0))(
  ( (array!83720 (arr!40366 (Array (_ BitVec 32) (_ BitVec 64))) (size!40917 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83719)

(assert (=> b!1276196 (= res!848223 (and (= (size!40916 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40917 _keys!1427) (size!40916 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51530 () Bool)

(assert (=> mapIsEmpty!51530 mapRes!51530))

(declare-fun b!1276197 () Bool)

(declare-fun e!728753 () Bool)

(declare-fun tp_is_empty!33333 () Bool)

(assert (=> b!1276197 (= e!728753 tp_is_empty!33333)))

(declare-fun mapNonEmpty!51530 () Bool)

(declare-fun tp!98303 () Bool)

(assert (=> mapNonEmpty!51530 (= mapRes!51530 (and tp!98303 e!728753))))

(declare-fun mapKey!51530 () (_ BitVec 32))

(declare-fun mapRest!51530 () (Array (_ BitVec 32) ValueCell!15768))

(declare-fun mapValue!51530 () ValueCell!15768)

(assert (=> mapNonEmpty!51530 (= (arr!40365 _values!1187) (store mapRest!51530 mapKey!51530 mapValue!51530))))

(declare-fun b!1276198 () Bool)

(assert (=> b!1276198 (= e!728755 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49547)

(declare-fun lt!575403 () Bool)

(declare-fun zeroValue!1129 () V!49547)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-datatypes ((tuple2!21618 0))(
  ( (tuple2!21619 (_1!10819 (_ BitVec 64)) (_2!10819 V!49547)) )
))
(declare-datatypes ((List!28803 0))(
  ( (Nil!28800) (Cons!28799 (h!30008 tuple2!21618) (t!42346 List!28803)) )
))
(declare-datatypes ((ListLongMap!19287 0))(
  ( (ListLongMap!19288 (toList!9659 List!28803)) )
))
(declare-fun contains!7706 (ListLongMap!19287 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4679 (array!83719 array!83717 (_ BitVec 32) (_ BitVec 32) V!49547 V!49547 (_ BitVec 32) Int) ListLongMap!19287)

(assert (=> b!1276198 (= lt!575403 (contains!7706 (getCurrentListMap!4679 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun res!848222 () Bool)

(assert (=> start!108106 (=> (not res!848222) (not e!728755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108106 (= res!848222 (validMask!0 mask!1805))))

(assert (=> start!108106 e!728755))

(assert (=> start!108106 true))

(assert (=> start!108106 tp!98304))

(assert (=> start!108106 tp_is_empty!33333))

(declare-fun array_inv!30639 (array!83717) Bool)

(assert (=> start!108106 (and (array_inv!30639 _values!1187) e!728754)))

(declare-fun array_inv!30640 (array!83719) Bool)

(assert (=> start!108106 (array_inv!30640 _keys!1427)))

(declare-fun b!1276195 () Bool)

(assert (=> b!1276195 (= e!728756 tp_is_empty!33333)))

(declare-fun b!1276199 () Bool)

(declare-fun res!848220 () Bool)

(assert (=> b!1276199 (=> (not res!848220) (not e!728755))))

(declare-datatypes ((List!28804 0))(
  ( (Nil!28801) (Cons!28800 (h!30009 (_ BitVec 64)) (t!42347 List!28804)) )
))
(declare-fun arrayNoDuplicates!0 (array!83719 (_ BitVec 32) List!28804) Bool)

(assert (=> b!1276199 (= res!848220 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28801))))

(declare-fun b!1276200 () Bool)

(declare-fun res!848221 () Bool)

(assert (=> b!1276200 (=> (not res!848221) (not e!728755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83719 (_ BitVec 32)) Bool)

(assert (=> b!1276200 (= res!848221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(assert (= (and start!108106 res!848222) b!1276196))

(assert (= (and b!1276196 res!848223) b!1276200))

(assert (= (and b!1276200 res!848221) b!1276199))

(assert (= (and b!1276199 res!848220) b!1276198))

(assert (= (and b!1276194 condMapEmpty!51530) mapIsEmpty!51530))

(assert (= (and b!1276194 (not condMapEmpty!51530)) mapNonEmpty!51530))

(get-info :version)

(assert (= (and mapNonEmpty!51530 ((_ is ValueCellFull!15768) mapValue!51530)) b!1276197))

(assert (= (and b!1276194 ((_ is ValueCellFull!15768) mapDefault!51530)) b!1276195))

(assert (= start!108106 b!1276194))

(declare-fun m!1172187 () Bool)

(assert (=> b!1276200 m!1172187))

(declare-fun m!1172189 () Bool)

(assert (=> b!1276199 m!1172189))

(declare-fun m!1172191 () Bool)

(assert (=> mapNonEmpty!51530 m!1172191))

(declare-fun m!1172193 () Bool)

(assert (=> start!108106 m!1172193))

(declare-fun m!1172195 () Bool)

(assert (=> start!108106 m!1172195))

(declare-fun m!1172197 () Bool)

(assert (=> start!108106 m!1172197))

(declare-fun m!1172199 () Bool)

(assert (=> b!1276198 m!1172199))

(assert (=> b!1276198 m!1172199))

(declare-fun m!1172201 () Bool)

(assert (=> b!1276198 m!1172201))

(check-sat (not b!1276200) tp_is_empty!33333 (not b!1276199) b_and!45849 (not start!108106) (not mapNonEmpty!51530) (not b_next!27783) (not b!1276198))
(check-sat b_and!45849 (not b_next!27783))
