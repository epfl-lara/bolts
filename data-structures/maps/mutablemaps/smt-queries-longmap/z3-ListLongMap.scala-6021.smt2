; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78040 () Bool)

(assert start!78040)

(declare-fun b_free!16539 () Bool)

(declare-fun b_next!16539 () Bool)

(assert (=> start!78040 (= b_free!16539 (not b_next!16539))))

(declare-fun tp!57889 () Bool)

(declare-fun b_and!27129 () Bool)

(assert (=> start!78040 (= tp!57889 b_and!27129)))

(declare-fun mapNonEmpty!30157 () Bool)

(declare-fun mapRes!30157 () Bool)

(declare-fun tp!57888 () Bool)

(declare-fun e!510574 () Bool)

(assert (=> mapNonEmpty!30157 (= mapRes!30157 (and tp!57888 e!510574))))

(declare-datatypes ((V!30241 0))(
  ( (V!30242 (val!9529 Int)) )
))
(declare-datatypes ((ValueCell!8997 0))(
  ( (ValueCellFull!8997 (v!12038 V!30241)) (EmptyCell!8997) )
))
(declare-datatypes ((array!53926 0))(
  ( (array!53927 (arr!25915 (Array (_ BitVec 32) ValueCell!8997)) (size!26375 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53926)

(declare-fun mapValue!30157 () ValueCell!8997)

(declare-fun mapRest!30157 () (Array (_ BitVec 32) ValueCell!8997))

(declare-fun mapKey!30157 () (_ BitVec 32))

(assert (=> mapNonEmpty!30157 (= (arr!25915 _values!1152) (store mapRest!30157 mapKey!30157 mapValue!30157))))

(declare-fun b!910524 () Bool)

(declare-fun e!510575 () Bool)

(declare-fun tp_is_empty!18957 () Bool)

(assert (=> b!910524 (= e!510575 tp_is_empty!18957)))

(declare-fun b!910525 () Bool)

(declare-fun res!614510 () Bool)

(declare-fun e!510577 () Bool)

(assert (=> b!910525 (=> (not res!614510) (not e!510577))))

(declare-datatypes ((array!53928 0))(
  ( (array!53929 (arr!25916 (Array (_ BitVec 32) (_ BitVec 64))) (size!26376 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53928)

(declare-datatypes ((List!18307 0))(
  ( (Nil!18304) (Cons!18303 (h!19449 (_ BitVec 64)) (t!25900 List!18307)) )
))
(declare-fun arrayNoDuplicates!0 (array!53928 (_ BitVec 32) List!18307) Bool)

(assert (=> b!910525 (= res!614510 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18304))))

(declare-fun b!910526 () Bool)

(assert (=> b!910526 (= e!510577 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30241)

(declare-fun lt!410236 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30241)

(declare-datatypes ((tuple2!12456 0))(
  ( (tuple2!12457 (_1!6238 (_ BitVec 64)) (_2!6238 V!30241)) )
))
(declare-datatypes ((List!18308 0))(
  ( (Nil!18305) (Cons!18304 (h!19450 tuple2!12456) (t!25901 List!18308)) )
))
(declare-datatypes ((ListLongMap!11167 0))(
  ( (ListLongMap!11168 (toList!5599 List!18308)) )
))
(declare-fun contains!4608 (ListLongMap!11167 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2829 (array!53928 array!53926 (_ BitVec 32) (_ BitVec 32) V!30241 V!30241 (_ BitVec 32) Int) ListLongMap!11167)

(assert (=> b!910526 (= lt!410236 (contains!4608 (getCurrentListMap!2829 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910527 () Bool)

(declare-fun res!614512 () Bool)

(assert (=> b!910527 (=> (not res!614512) (not e!510577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53928 (_ BitVec 32)) Bool)

(assert (=> b!910527 (= res!614512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910528 () Bool)

(declare-fun res!614509 () Bool)

(assert (=> b!910528 (=> (not res!614509) (not e!510577))))

(assert (=> b!910528 (= res!614509 (and (= (size!26375 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26376 _keys!1386) (size!26375 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614511 () Bool)

(assert (=> start!78040 (=> (not res!614511) (not e!510577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78040 (= res!614511 (validMask!0 mask!1756))))

(assert (=> start!78040 e!510577))

(declare-fun e!510576 () Bool)

(declare-fun array_inv!20244 (array!53926) Bool)

(assert (=> start!78040 (and (array_inv!20244 _values!1152) e!510576)))

(assert (=> start!78040 tp!57889))

(assert (=> start!78040 true))

(assert (=> start!78040 tp_is_empty!18957))

(declare-fun array_inv!20245 (array!53928) Bool)

(assert (=> start!78040 (array_inv!20245 _keys!1386)))

(declare-fun b!910529 () Bool)

(assert (=> b!910529 (= e!510576 (and e!510575 mapRes!30157))))

(declare-fun condMapEmpty!30157 () Bool)

(declare-fun mapDefault!30157 () ValueCell!8997)

(assert (=> b!910529 (= condMapEmpty!30157 (= (arr!25915 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8997)) mapDefault!30157)))))

(declare-fun mapIsEmpty!30157 () Bool)

(assert (=> mapIsEmpty!30157 mapRes!30157))

(declare-fun b!910530 () Bool)

(assert (=> b!910530 (= e!510574 tp_is_empty!18957)))

(assert (= (and start!78040 res!614511) b!910528))

(assert (= (and b!910528 res!614509) b!910527))

(assert (= (and b!910527 res!614512) b!910525))

(assert (= (and b!910525 res!614510) b!910526))

(assert (= (and b!910529 condMapEmpty!30157) mapIsEmpty!30157))

(assert (= (and b!910529 (not condMapEmpty!30157)) mapNonEmpty!30157))

(get-info :version)

(assert (= (and mapNonEmpty!30157 ((_ is ValueCellFull!8997) mapValue!30157)) b!910530))

(assert (= (and b!910529 ((_ is ValueCellFull!8997) mapDefault!30157)) b!910524))

(assert (= start!78040 b!910529))

(declare-fun m!845573 () Bool)

(assert (=> b!910526 m!845573))

(assert (=> b!910526 m!845573))

(declare-fun m!845575 () Bool)

(assert (=> b!910526 m!845575))

(declare-fun m!845577 () Bool)

(assert (=> b!910527 m!845577))

(declare-fun m!845579 () Bool)

(assert (=> b!910525 m!845579))

(declare-fun m!845581 () Bool)

(assert (=> start!78040 m!845581))

(declare-fun m!845583 () Bool)

(assert (=> start!78040 m!845583))

(declare-fun m!845585 () Bool)

(assert (=> start!78040 m!845585))

(declare-fun m!845587 () Bool)

(assert (=> mapNonEmpty!30157 m!845587))

(check-sat (not b!910527) (not start!78040) tp_is_empty!18957 (not b!910526) (not b!910525) (not mapNonEmpty!30157) (not b_next!16539) b_and!27129)
(check-sat b_and!27129 (not b_next!16539))
