; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108118 () Bool)

(assert start!108118)

(declare-fun b_free!27795 () Bool)

(declare-fun b_next!27795 () Bool)

(assert (=> start!108118 (= b_free!27795 (not b_next!27795))))

(declare-fun tp!98340 () Bool)

(declare-fun b_and!45861 () Bool)

(assert (=> start!108118 (= tp!98340 b_and!45861)))

(declare-fun b!1276320 () Bool)

(declare-fun e!728846 () Bool)

(assert (=> b!1276320 (= e!728846 false)))

(declare-fun lt!575421 () Bool)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49563 0))(
  ( (V!49564 (val!16747 Int)) )
))
(declare-fun minValue!1129 () V!49563)

(declare-datatypes ((ValueCell!15774 0))(
  ( (ValueCellFull!15774 (v!19342 V!49563)) (EmptyCell!15774) )
))
(declare-datatypes ((array!83737 0))(
  ( (array!83738 (arr!40375 (Array (_ BitVec 32) ValueCell!15774)) (size!40926 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83737)

(declare-fun zeroValue!1129 () V!49563)

(declare-datatypes ((array!83739 0))(
  ( (array!83740 (arr!40376 (Array (_ BitVec 32) (_ BitVec 64))) (size!40927 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83739)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-datatypes ((tuple2!21624 0))(
  ( (tuple2!21625 (_1!10822 (_ BitVec 64)) (_2!10822 V!49563)) )
))
(declare-datatypes ((List!28809 0))(
  ( (Nil!28806) (Cons!28805 (h!30014 tuple2!21624) (t!42352 List!28809)) )
))
(declare-datatypes ((ListLongMap!19293 0))(
  ( (ListLongMap!19294 (toList!9662 List!28809)) )
))
(declare-fun contains!7709 (ListLongMap!19293 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4682 (array!83739 array!83737 (_ BitVec 32) (_ BitVec 32) V!49563 V!49563 (_ BitVec 32) Int) ListLongMap!19293)

(assert (=> b!1276320 (= lt!575421 (contains!7709 (getCurrentListMap!4682 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1276321 () Bool)

(declare-fun res!848295 () Bool)

(assert (=> b!1276321 (=> (not res!848295) (not e!728846))))

(declare-datatypes ((List!28810 0))(
  ( (Nil!28807) (Cons!28806 (h!30015 (_ BitVec 64)) (t!42353 List!28810)) )
))
(declare-fun arrayNoDuplicates!0 (array!83739 (_ BitVec 32) List!28810) Bool)

(assert (=> b!1276321 (= res!848295 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28807))))

(declare-fun b!1276322 () Bool)

(declare-fun e!728845 () Bool)

(declare-fun tp_is_empty!33345 () Bool)

(assert (=> b!1276322 (= e!728845 tp_is_empty!33345)))

(declare-fun b!1276323 () Bool)

(declare-fun res!848294 () Bool)

(assert (=> b!1276323 (=> (not res!848294) (not e!728846))))

(assert (=> b!1276323 (= res!848294 (and (= (size!40926 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40927 _keys!1427) (size!40926 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276324 () Bool)

(declare-fun e!728842 () Bool)

(declare-fun e!728843 () Bool)

(declare-fun mapRes!51548 () Bool)

(assert (=> b!1276324 (= e!728842 (and e!728843 mapRes!51548))))

(declare-fun condMapEmpty!51548 () Bool)

(declare-fun mapDefault!51548 () ValueCell!15774)

(assert (=> b!1276324 (= condMapEmpty!51548 (= (arr!40375 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15774)) mapDefault!51548)))))

(declare-fun res!848292 () Bool)

(assert (=> start!108118 (=> (not res!848292) (not e!728846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108118 (= res!848292 (validMask!0 mask!1805))))

(assert (=> start!108118 e!728846))

(assert (=> start!108118 true))

(assert (=> start!108118 tp!98340))

(assert (=> start!108118 tp_is_empty!33345))

(declare-fun array_inv!30645 (array!83737) Bool)

(assert (=> start!108118 (and (array_inv!30645 _values!1187) e!728842)))

(declare-fun array_inv!30646 (array!83739) Bool)

(assert (=> start!108118 (array_inv!30646 _keys!1427)))

(declare-fun b!1276325 () Bool)

(declare-fun res!848293 () Bool)

(assert (=> b!1276325 (=> (not res!848293) (not e!728846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83739 (_ BitVec 32)) Bool)

(assert (=> b!1276325 (= res!848293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapIsEmpty!51548 () Bool)

(assert (=> mapIsEmpty!51548 mapRes!51548))

(declare-fun mapNonEmpty!51548 () Bool)

(declare-fun tp!98339 () Bool)

(assert (=> mapNonEmpty!51548 (= mapRes!51548 (and tp!98339 e!728845))))

(declare-fun mapValue!51548 () ValueCell!15774)

(declare-fun mapKey!51548 () (_ BitVec 32))

(declare-fun mapRest!51548 () (Array (_ BitVec 32) ValueCell!15774))

(assert (=> mapNonEmpty!51548 (= (arr!40375 _values!1187) (store mapRest!51548 mapKey!51548 mapValue!51548))))

(declare-fun b!1276326 () Bool)

(assert (=> b!1276326 (= e!728843 tp_is_empty!33345)))

(assert (= (and start!108118 res!848292) b!1276323))

(assert (= (and b!1276323 res!848294) b!1276325))

(assert (= (and b!1276325 res!848293) b!1276321))

(assert (= (and b!1276321 res!848295) b!1276320))

(assert (= (and b!1276324 condMapEmpty!51548) mapIsEmpty!51548))

(assert (= (and b!1276324 (not condMapEmpty!51548)) mapNonEmpty!51548))

(get-info :version)

(assert (= (and mapNonEmpty!51548 ((_ is ValueCellFull!15774) mapValue!51548)) b!1276322))

(assert (= (and b!1276324 ((_ is ValueCellFull!15774) mapDefault!51548)) b!1276326))

(assert (= start!108118 b!1276324))

(declare-fun m!1172283 () Bool)

(assert (=> mapNonEmpty!51548 m!1172283))

(declare-fun m!1172285 () Bool)

(assert (=> b!1276325 m!1172285))

(declare-fun m!1172287 () Bool)

(assert (=> start!108118 m!1172287))

(declare-fun m!1172289 () Bool)

(assert (=> start!108118 m!1172289))

(declare-fun m!1172291 () Bool)

(assert (=> start!108118 m!1172291))

(declare-fun m!1172293 () Bool)

(assert (=> b!1276321 m!1172293))

(declare-fun m!1172295 () Bool)

(assert (=> b!1276320 m!1172295))

(assert (=> b!1276320 m!1172295))

(declare-fun m!1172297 () Bool)

(assert (=> b!1276320 m!1172297))

(check-sat (not b!1276325) (not b_next!27795) b_and!45861 (not mapNonEmpty!51548) (not b!1276320) (not start!108118) tp_is_empty!33345 (not b!1276321))
(check-sat b_and!45861 (not b_next!27795))
