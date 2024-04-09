; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!626 () Bool)

(assert start!626)

(declare-fun b_free!99 () Bool)

(declare-fun b_next!99 () Bool)

(assert (=> start!626 (= b_free!99 (not b_next!99))))

(declare-fun tp!514 () Bool)

(declare-fun b_and!237 () Bool)

(assert (=> start!626 (= tp!514 b_and!237)))

(declare-fun b!3973 () Bool)

(declare-fun e!2043 () Bool)

(assert (=> b!3973 (= e!2043 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!413 0))(
  ( (V!414 (val!94 Int)) )
))
(declare-datatypes ((ValueCell!72 0))(
  ( (ValueCellFull!72 (v!1181 V!413)) (EmptyCell!72) )
))
(declare-datatypes ((array!287 0))(
  ( (array!288 (arr!136 (Array (_ BitVec 32) ValueCell!72)) (size!198 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!287)

(declare-fun minValue!1434 () V!413)

(declare-datatypes ((array!289 0))(
  ( (array!290 (arr!137 (Array (_ BitVec 32) (_ BitVec 64))) (size!199 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!289)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun lt!549 () Bool)

(declare-fun zeroValue!1434 () V!413)

(declare-datatypes ((tuple2!78 0))(
  ( (tuple2!79 (_1!39 (_ BitVec 64)) (_2!39 V!413)) )
))
(declare-datatypes ((List!83 0))(
  ( (Nil!80) (Cons!79 (h!645 tuple2!78) (t!2210 List!83)) )
))
(declare-datatypes ((ListLongMap!83 0))(
  ( (ListLongMap!84 (toList!57 List!83)) )
))
(declare-fun contains!27 (ListLongMap!83 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!16 (array!289 array!287 (_ BitVec 32) (_ BitVec 32) V!413 V!413 (_ BitVec 32) Int) ListLongMap!83)

(assert (=> b!3973 (= lt!549 (contains!27 (getCurrentListMap!16 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapNonEmpty!224 () Bool)

(declare-fun mapRes!224 () Bool)

(declare-fun tp!515 () Bool)

(declare-fun e!2044 () Bool)

(assert (=> mapNonEmpty!224 (= mapRes!224 (and tp!515 e!2044))))

(declare-fun mapKey!224 () (_ BitVec 32))

(declare-fun mapRest!224 () (Array (_ BitVec 32) ValueCell!72))

(declare-fun mapValue!224 () ValueCell!72)

(assert (=> mapNonEmpty!224 (= (arr!136 _values!1492) (store mapRest!224 mapKey!224 mapValue!224))))

(declare-fun b!3974 () Bool)

(declare-fun tp_is_empty!177 () Bool)

(assert (=> b!3974 (= e!2044 tp_is_empty!177)))

(declare-fun res!5475 () Bool)

(assert (=> start!626 (=> (not res!5475) (not e!2043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!626 (= res!5475 (validMask!0 mask!2250))))

(assert (=> start!626 e!2043))

(assert (=> start!626 tp!514))

(assert (=> start!626 true))

(declare-fun e!2041 () Bool)

(declare-fun array_inv!95 (array!287) Bool)

(assert (=> start!626 (and (array_inv!95 _values!1492) e!2041)))

(assert (=> start!626 tp_is_empty!177))

(declare-fun array_inv!96 (array!289) Bool)

(assert (=> start!626 (array_inv!96 _keys!1806)))

(declare-fun b!3975 () Bool)

(declare-fun res!5474 () Bool)

(assert (=> b!3975 (=> (not res!5474) (not e!2043))))

(declare-datatypes ((List!84 0))(
  ( (Nil!81) (Cons!80 (h!646 (_ BitVec 64)) (t!2211 List!84)) )
))
(declare-fun arrayNoDuplicates!0 (array!289 (_ BitVec 32) List!84) Bool)

(assert (=> b!3975 (= res!5474 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!81))))

(declare-fun b!3976 () Bool)

(declare-fun e!2045 () Bool)

(assert (=> b!3976 (= e!2041 (and e!2045 mapRes!224))))

(declare-fun condMapEmpty!224 () Bool)

(declare-fun mapDefault!224 () ValueCell!72)

(assert (=> b!3976 (= condMapEmpty!224 (= (arr!136 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!72)) mapDefault!224)))))

(declare-fun b!3977 () Bool)

(declare-fun res!5476 () Bool)

(assert (=> b!3977 (=> (not res!5476) (not e!2043))))

(assert (=> b!3977 (= res!5476 (and (= (size!198 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!199 _keys!1806) (size!198 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3978 () Bool)

(assert (=> b!3978 (= e!2045 tp_is_empty!177)))

(declare-fun mapIsEmpty!224 () Bool)

(assert (=> mapIsEmpty!224 mapRes!224))

(declare-fun b!3979 () Bool)

(declare-fun res!5473 () Bool)

(assert (=> b!3979 (=> (not res!5473) (not e!2043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!289 (_ BitVec 32)) Bool)

(assert (=> b!3979 (= res!5473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(assert (= (and start!626 res!5475) b!3977))

(assert (= (and b!3977 res!5476) b!3979))

(assert (= (and b!3979 res!5473) b!3975))

(assert (= (and b!3975 res!5474) b!3973))

(assert (= (and b!3976 condMapEmpty!224) mapIsEmpty!224))

(assert (= (and b!3976 (not condMapEmpty!224)) mapNonEmpty!224))

(get-info :version)

(assert (= (and mapNonEmpty!224 ((_ is ValueCellFull!72) mapValue!224)) b!3974))

(assert (= (and b!3976 ((_ is ValueCellFull!72) mapDefault!224)) b!3978))

(assert (= start!626 b!3976))

(declare-fun m!2031 () Bool)

(assert (=> mapNonEmpty!224 m!2031))

(declare-fun m!2033 () Bool)

(assert (=> b!3975 m!2033))

(declare-fun m!2035 () Bool)

(assert (=> start!626 m!2035))

(declare-fun m!2037 () Bool)

(assert (=> start!626 m!2037))

(declare-fun m!2039 () Bool)

(assert (=> start!626 m!2039))

(declare-fun m!2041 () Bool)

(assert (=> b!3979 m!2041))

(declare-fun m!2043 () Bool)

(assert (=> b!3973 m!2043))

(assert (=> b!3973 m!2043))

(declare-fun m!2045 () Bool)

(assert (=> b!3973 m!2045))

(check-sat (not b!3975) (not b_next!99) (not b!3973) b_and!237 (not mapNonEmpty!224) tp_is_empty!177 (not b!3979) (not start!626))
(check-sat b_and!237 (not b_next!99))
