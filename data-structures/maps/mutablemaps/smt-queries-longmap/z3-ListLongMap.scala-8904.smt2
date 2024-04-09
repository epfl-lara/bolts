; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108112 () Bool)

(assert start!108112)

(declare-fun b_free!27789 () Bool)

(declare-fun b_next!27789 () Bool)

(assert (=> start!108112 (= b_free!27789 (not b_next!27789))))

(declare-fun tp!98322 () Bool)

(declare-fun b_and!45855 () Bool)

(assert (=> start!108112 (= tp!98322 b_and!45855)))

(declare-fun b!1276257 () Bool)

(declare-fun e!728798 () Bool)

(assert (=> b!1276257 (= e!728798 false)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun lt!575412 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49555 0))(
  ( (V!49556 (val!16744 Int)) )
))
(declare-fun minValue!1129 () V!49555)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15771 0))(
  ( (ValueCellFull!15771 (v!19339 V!49555)) (EmptyCell!15771) )
))
(declare-datatypes ((array!83729 0))(
  ( (array!83730 (arr!40371 (Array (_ BitVec 32) ValueCell!15771)) (size!40922 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83729)

(declare-fun zeroValue!1129 () V!49555)

(declare-datatypes ((array!83731 0))(
  ( (array!83732 (arr!40372 (Array (_ BitVec 32) (_ BitVec 64))) (size!40923 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83731)

(declare-datatypes ((tuple2!21622 0))(
  ( (tuple2!21623 (_1!10821 (_ BitVec 64)) (_2!10821 V!49555)) )
))
(declare-datatypes ((List!28807 0))(
  ( (Nil!28804) (Cons!28803 (h!30012 tuple2!21622) (t!42350 List!28807)) )
))
(declare-datatypes ((ListLongMap!19291 0))(
  ( (ListLongMap!19292 (toList!9661 List!28807)) )
))
(declare-fun contains!7708 (ListLongMap!19291 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4681 (array!83731 array!83729 (_ BitVec 32) (_ BitVec 32) V!49555 V!49555 (_ BitVec 32) Int) ListLongMap!19291)

(assert (=> b!1276257 (= lt!575412 (contains!7708 (getCurrentListMap!4681 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1276258 () Bool)

(declare-fun res!848257 () Bool)

(assert (=> b!1276258 (=> (not res!848257) (not e!728798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83731 (_ BitVec 32)) Bool)

(assert (=> b!1276258 (= res!848257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun res!848259 () Bool)

(assert (=> start!108112 (=> (not res!848259) (not e!728798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108112 (= res!848259 (validMask!0 mask!1805))))

(assert (=> start!108112 e!728798))

(assert (=> start!108112 true))

(assert (=> start!108112 tp!98322))

(declare-fun tp_is_empty!33339 () Bool)

(assert (=> start!108112 tp_is_empty!33339))

(declare-fun e!728797 () Bool)

(declare-fun array_inv!30643 (array!83729) Bool)

(assert (=> start!108112 (and (array_inv!30643 _values!1187) e!728797)))

(declare-fun array_inv!30644 (array!83731) Bool)

(assert (=> start!108112 (array_inv!30644 _keys!1427)))

(declare-fun b!1276259 () Bool)

(declare-fun res!848256 () Bool)

(assert (=> b!1276259 (=> (not res!848256) (not e!728798))))

(assert (=> b!1276259 (= res!848256 (and (= (size!40922 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40923 _keys!1427) (size!40922 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51539 () Bool)

(declare-fun mapRes!51539 () Bool)

(declare-fun tp!98321 () Bool)

(declare-fun e!728799 () Bool)

(assert (=> mapNonEmpty!51539 (= mapRes!51539 (and tp!98321 e!728799))))

(declare-fun mapKey!51539 () (_ BitVec 32))

(declare-fun mapRest!51539 () (Array (_ BitVec 32) ValueCell!15771))

(declare-fun mapValue!51539 () ValueCell!15771)

(assert (=> mapNonEmpty!51539 (= (arr!40371 _values!1187) (store mapRest!51539 mapKey!51539 mapValue!51539))))

(declare-fun b!1276260 () Bool)

(declare-fun res!848258 () Bool)

(assert (=> b!1276260 (=> (not res!848258) (not e!728798))))

(declare-datatypes ((List!28808 0))(
  ( (Nil!28805) (Cons!28804 (h!30013 (_ BitVec 64)) (t!42351 List!28808)) )
))
(declare-fun arrayNoDuplicates!0 (array!83731 (_ BitVec 32) List!28808) Bool)

(assert (=> b!1276260 (= res!848258 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28805))))

(declare-fun b!1276261 () Bool)

(declare-fun e!728801 () Bool)

(assert (=> b!1276261 (= e!728801 tp_is_empty!33339)))

(declare-fun b!1276262 () Bool)

(assert (=> b!1276262 (= e!728797 (and e!728801 mapRes!51539))))

(declare-fun condMapEmpty!51539 () Bool)

(declare-fun mapDefault!51539 () ValueCell!15771)

(assert (=> b!1276262 (= condMapEmpty!51539 (= (arr!40371 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15771)) mapDefault!51539)))))

(declare-fun b!1276263 () Bool)

(assert (=> b!1276263 (= e!728799 tp_is_empty!33339)))

(declare-fun mapIsEmpty!51539 () Bool)

(assert (=> mapIsEmpty!51539 mapRes!51539))

(assert (= (and start!108112 res!848259) b!1276259))

(assert (= (and b!1276259 res!848256) b!1276258))

(assert (= (and b!1276258 res!848257) b!1276260))

(assert (= (and b!1276260 res!848258) b!1276257))

(assert (= (and b!1276262 condMapEmpty!51539) mapIsEmpty!51539))

(assert (= (and b!1276262 (not condMapEmpty!51539)) mapNonEmpty!51539))

(get-info :version)

(assert (= (and mapNonEmpty!51539 ((_ is ValueCellFull!15771) mapValue!51539)) b!1276263))

(assert (= (and b!1276262 ((_ is ValueCellFull!15771) mapDefault!51539)) b!1276261))

(assert (= start!108112 b!1276262))

(declare-fun m!1172235 () Bool)

(assert (=> b!1276257 m!1172235))

(assert (=> b!1276257 m!1172235))

(declare-fun m!1172237 () Bool)

(assert (=> b!1276257 m!1172237))

(declare-fun m!1172239 () Bool)

(assert (=> mapNonEmpty!51539 m!1172239))

(declare-fun m!1172241 () Bool)

(assert (=> b!1276258 m!1172241))

(declare-fun m!1172243 () Bool)

(assert (=> start!108112 m!1172243))

(declare-fun m!1172245 () Bool)

(assert (=> start!108112 m!1172245))

(declare-fun m!1172247 () Bool)

(assert (=> start!108112 m!1172247))

(declare-fun m!1172249 () Bool)

(assert (=> b!1276260 m!1172249))

(check-sat (not b_next!27789) (not start!108112) b_and!45855 (not mapNonEmpty!51539) (not b!1276257) tp_is_empty!33339 (not b!1276260) (not b!1276258))
(check-sat b_and!45855 (not b_next!27789))
