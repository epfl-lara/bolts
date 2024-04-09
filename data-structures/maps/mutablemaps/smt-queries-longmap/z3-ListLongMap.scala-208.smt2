; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3930 () Bool)

(assert start!3930)

(declare-fun b_free!837 () Bool)

(declare-fun b_next!837 () Bool)

(assert (=> start!3930 (= b_free!837 (not b_next!837))))

(declare-fun tp!3930 () Bool)

(declare-fun b_and!1649 () Bool)

(assert (=> start!3930 (= tp!3930 b_and!1649)))

(declare-fun b!27966 () Bool)

(declare-fun res!16591 () Bool)

(declare-fun e!18143 () Bool)

(assert (=> b!27966 (=> (not res!16591) (not e!18143))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27966 (= res!16591 (validKeyInArray!0 k0!1304))))

(declare-fun b!27967 () Bool)

(declare-fun res!16589 () Bool)

(assert (=> b!27967 (=> (not res!16589) (not e!18143))))

(declare-datatypes ((array!1609 0))(
  ( (array!1610 (arr!758 (Array (_ BitVec 32) (_ BitVec 64))) (size!859 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1609)

(declare-fun arrayContainsKey!0 (array!1609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27967 (= res!16589 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27968 () Bool)

(declare-fun e!18144 () Bool)

(declare-fun tp_is_empty!1191 () Bool)

(assert (=> b!27968 (= e!18144 tp_is_empty!1191)))

(declare-fun b!27969 () Bool)

(declare-fun e!18141 () Bool)

(declare-fun mapRes!1315 () Bool)

(assert (=> b!27969 (= e!18141 (and e!18144 mapRes!1315))))

(declare-fun condMapEmpty!1315 () Bool)

(declare-datatypes ((V!1413 0))(
  ( (V!1414 (val!622 Int)) )
))
(declare-datatypes ((ValueCell!396 0))(
  ( (ValueCellFull!396 (v!1711 V!1413)) (EmptyCell!396) )
))
(declare-datatypes ((array!1611 0))(
  ( (array!1612 (arr!759 (Array (_ BitVec 32) ValueCell!396)) (size!860 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1611)

(declare-fun mapDefault!1315 () ValueCell!396)

(assert (=> b!27969 (= condMapEmpty!1315 (= (arr!759 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!396)) mapDefault!1315)))))

(declare-fun b!27965 () Bool)

(declare-fun res!16592 () Bool)

(assert (=> b!27965 (=> (not res!16592) (not e!18143))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1609 (_ BitVec 32)) Bool)

(assert (=> b!27965 (= res!16592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!16594 () Bool)

(assert (=> start!3930 (=> (not res!16594) (not e!18143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3930 (= res!16594 (validMask!0 mask!2294))))

(assert (=> start!3930 e!18143))

(assert (=> start!3930 true))

(assert (=> start!3930 tp!3930))

(declare-fun array_inv!517 (array!1611) Bool)

(assert (=> start!3930 (and (array_inv!517 _values!1501) e!18141)))

(declare-fun array_inv!518 (array!1609) Bool)

(assert (=> start!3930 (array_inv!518 _keys!1833)))

(assert (=> start!3930 tp_is_empty!1191))

(declare-fun mapNonEmpty!1315 () Bool)

(declare-fun tp!3931 () Bool)

(declare-fun e!18145 () Bool)

(assert (=> mapNonEmpty!1315 (= mapRes!1315 (and tp!3931 e!18145))))

(declare-fun mapRest!1315 () (Array (_ BitVec 32) ValueCell!396))

(declare-fun mapValue!1315 () ValueCell!396)

(declare-fun mapKey!1315 () (_ BitVec 32))

(assert (=> mapNonEmpty!1315 (= (arr!759 _values!1501) (store mapRest!1315 mapKey!1315 mapValue!1315))))

(declare-fun b!27970 () Bool)

(declare-fun res!16590 () Bool)

(assert (=> b!27970 (=> (not res!16590) (not e!18143))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1413)

(declare-fun minValue!1443 () V!1413)

(declare-datatypes ((tuple2!1020 0))(
  ( (tuple2!1021 (_1!520 (_ BitVec 64)) (_2!520 V!1413)) )
))
(declare-datatypes ((List!636 0))(
  ( (Nil!633) (Cons!632 (h!1199 tuple2!1020) (t!3331 List!636)) )
))
(declare-datatypes ((ListLongMap!601 0))(
  ( (ListLongMap!602 (toList!316 List!636)) )
))
(declare-fun contains!253 (ListLongMap!601 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!144 (array!1609 array!1611 (_ BitVec 32) (_ BitVec 32) V!1413 V!1413 (_ BitVec 32) Int) ListLongMap!601)

(assert (=> b!27970 (= res!16590 (not (contains!253 (getCurrentListMap!144 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!27971 () Bool)

(assert (=> b!27971 (= e!18143 false)))

(declare-fun lt!10740 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1609 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27971 (= lt!10740 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27972 () Bool)

(assert (=> b!27972 (= e!18145 tp_is_empty!1191)))

(declare-fun b!27973 () Bool)

(declare-fun res!16588 () Bool)

(assert (=> b!27973 (=> (not res!16588) (not e!18143))))

(assert (=> b!27973 (= res!16588 (and (= (size!860 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!859 _keys!1833) (size!860 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27974 () Bool)

(declare-fun res!16593 () Bool)

(assert (=> b!27974 (=> (not res!16593) (not e!18143))))

(declare-datatypes ((List!637 0))(
  ( (Nil!634) (Cons!633 (h!1200 (_ BitVec 64)) (t!3332 List!637)) )
))
(declare-fun arrayNoDuplicates!0 (array!1609 (_ BitVec 32) List!637) Bool)

(assert (=> b!27974 (= res!16593 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!634))))

(declare-fun mapIsEmpty!1315 () Bool)

(assert (=> mapIsEmpty!1315 mapRes!1315))

(assert (= (and start!3930 res!16594) b!27973))

(assert (= (and b!27973 res!16588) b!27965))

(assert (= (and b!27965 res!16592) b!27974))

(assert (= (and b!27974 res!16593) b!27966))

(assert (= (and b!27966 res!16591) b!27970))

(assert (= (and b!27970 res!16590) b!27967))

(assert (= (and b!27967 res!16589) b!27971))

(assert (= (and b!27969 condMapEmpty!1315) mapIsEmpty!1315))

(assert (= (and b!27969 (not condMapEmpty!1315)) mapNonEmpty!1315))

(get-info :version)

(assert (= (and mapNonEmpty!1315 ((_ is ValueCellFull!396) mapValue!1315)) b!27972))

(assert (= (and b!27969 ((_ is ValueCellFull!396) mapDefault!1315)) b!27968))

(assert (= start!3930 b!27969))

(declare-fun m!22291 () Bool)

(assert (=> b!27970 m!22291))

(assert (=> b!27970 m!22291))

(declare-fun m!22293 () Bool)

(assert (=> b!27970 m!22293))

(declare-fun m!22295 () Bool)

(assert (=> mapNonEmpty!1315 m!22295))

(declare-fun m!22297 () Bool)

(assert (=> b!27974 m!22297))

(declare-fun m!22299 () Bool)

(assert (=> start!3930 m!22299))

(declare-fun m!22301 () Bool)

(assert (=> start!3930 m!22301))

(declare-fun m!22303 () Bool)

(assert (=> start!3930 m!22303))

(declare-fun m!22305 () Bool)

(assert (=> b!27967 m!22305))

(declare-fun m!22307 () Bool)

(assert (=> b!27966 m!22307))

(declare-fun m!22309 () Bool)

(assert (=> b!27971 m!22309))

(declare-fun m!22311 () Bool)

(assert (=> b!27965 m!22311))

(check-sat (not mapNonEmpty!1315) (not b!27971) (not b!27965) (not b!27974) b_and!1649 (not b!27967) (not b_next!837) (not start!3930) (not b!27970) (not b!27966) tp_is_empty!1191)
(check-sat b_and!1649 (not b_next!837))
