; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78058 () Bool)

(assert start!78058)

(declare-fun b_free!16557 () Bool)

(declare-fun b_next!16557 () Bool)

(assert (=> start!78058 (= b_free!16557 (not b_next!16557))))

(declare-fun tp!57943 () Bool)

(declare-fun b_and!27147 () Bool)

(assert (=> start!78058 (= tp!57943 b_and!27147)))

(declare-fun b!910713 () Bool)

(declare-fun res!614619 () Bool)

(declare-fun e!510713 () Bool)

(assert (=> b!910713 (=> (not res!614619) (not e!510713))))

(declare-datatypes ((V!30265 0))(
  ( (V!30266 (val!9538 Int)) )
))
(declare-datatypes ((ValueCell!9006 0))(
  ( (ValueCellFull!9006 (v!12047 V!30265)) (EmptyCell!9006) )
))
(declare-datatypes ((array!53960 0))(
  ( (array!53961 (arr!25932 (Array (_ BitVec 32) ValueCell!9006)) (size!26392 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53960)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53962 0))(
  ( (array!53963 (arr!25933 (Array (_ BitVec 32) (_ BitVec 64))) (size!26393 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53962)

(assert (=> b!910713 (= res!614619 (and (= (size!26392 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26393 _keys!1386) (size!26392 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910714 () Bool)

(declare-fun e!510711 () Bool)

(declare-fun e!510712 () Bool)

(declare-fun mapRes!30184 () Bool)

(assert (=> b!910714 (= e!510711 (and e!510712 mapRes!30184))))

(declare-fun condMapEmpty!30184 () Bool)

(declare-fun mapDefault!30184 () ValueCell!9006)

(assert (=> b!910714 (= condMapEmpty!30184 (= (arr!25932 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9006)) mapDefault!30184)))))

(declare-fun b!910715 () Bool)

(declare-fun e!510710 () Bool)

(declare-fun tp_is_empty!18975 () Bool)

(assert (=> b!910715 (= e!510710 tp_is_empty!18975)))

(declare-fun b!910716 () Bool)

(declare-fun res!614618 () Bool)

(assert (=> b!910716 (=> (not res!614618) (not e!510713))))

(declare-datatypes ((List!18320 0))(
  ( (Nil!18317) (Cons!18316 (h!19462 (_ BitVec 64)) (t!25913 List!18320)) )
))
(declare-fun arrayNoDuplicates!0 (array!53962 (_ BitVec 32) List!18320) Bool)

(assert (=> b!910716 (= res!614618 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18317))))

(declare-fun b!910717 () Bool)

(declare-fun res!614620 () Bool)

(assert (=> b!910717 (=> (not res!614620) (not e!510713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53962 (_ BitVec 32)) Bool)

(assert (=> b!910717 (= res!614620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910718 () Bool)

(assert (=> b!910718 (= e!510712 tp_is_empty!18975)))

(declare-fun res!614617 () Bool)

(assert (=> start!78058 (=> (not res!614617) (not e!510713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78058 (= res!614617 (validMask!0 mask!1756))))

(assert (=> start!78058 e!510713))

(declare-fun array_inv!20258 (array!53960) Bool)

(assert (=> start!78058 (and (array_inv!20258 _values!1152) e!510711)))

(assert (=> start!78058 tp!57943))

(assert (=> start!78058 true))

(assert (=> start!78058 tp_is_empty!18975))

(declare-fun array_inv!20259 (array!53962) Bool)

(assert (=> start!78058 (array_inv!20259 _keys!1386)))

(declare-fun mapIsEmpty!30184 () Bool)

(assert (=> mapIsEmpty!30184 mapRes!30184))

(declare-fun mapNonEmpty!30184 () Bool)

(declare-fun tp!57942 () Bool)

(assert (=> mapNonEmpty!30184 (= mapRes!30184 (and tp!57942 e!510710))))

(declare-fun mapValue!30184 () ValueCell!9006)

(declare-fun mapKey!30184 () (_ BitVec 32))

(declare-fun mapRest!30184 () (Array (_ BitVec 32) ValueCell!9006))

(assert (=> mapNonEmpty!30184 (= (arr!25932 _values!1152) (store mapRest!30184 mapKey!30184 mapValue!30184))))

(declare-fun b!910719 () Bool)

(assert (=> b!910719 (= e!510713 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410263 () Bool)

(declare-fun zeroValue!1094 () V!30265)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30265)

(declare-datatypes ((tuple2!12470 0))(
  ( (tuple2!12471 (_1!6245 (_ BitVec 64)) (_2!6245 V!30265)) )
))
(declare-datatypes ((List!18321 0))(
  ( (Nil!18318) (Cons!18317 (h!19463 tuple2!12470) (t!25914 List!18321)) )
))
(declare-datatypes ((ListLongMap!11181 0))(
  ( (ListLongMap!11182 (toList!5606 List!18321)) )
))
(declare-fun contains!4615 (ListLongMap!11181 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2836 (array!53962 array!53960 (_ BitVec 32) (_ BitVec 32) V!30265 V!30265 (_ BitVec 32) Int) ListLongMap!11181)

(assert (=> b!910719 (= lt!410263 (contains!4615 (getCurrentListMap!2836 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(assert (= (and start!78058 res!614617) b!910713))

(assert (= (and b!910713 res!614619) b!910717))

(assert (= (and b!910717 res!614620) b!910716))

(assert (= (and b!910716 res!614618) b!910719))

(assert (= (and b!910714 condMapEmpty!30184) mapIsEmpty!30184))

(assert (= (and b!910714 (not condMapEmpty!30184)) mapNonEmpty!30184))

(get-info :version)

(assert (= (and mapNonEmpty!30184 ((_ is ValueCellFull!9006) mapValue!30184)) b!910715))

(assert (= (and b!910714 ((_ is ValueCellFull!9006) mapDefault!30184)) b!910718))

(assert (= start!78058 b!910714))

(declare-fun m!845717 () Bool)

(assert (=> b!910717 m!845717))

(declare-fun m!845719 () Bool)

(assert (=> b!910716 m!845719))

(declare-fun m!845721 () Bool)

(assert (=> start!78058 m!845721))

(declare-fun m!845723 () Bool)

(assert (=> start!78058 m!845723))

(declare-fun m!845725 () Bool)

(assert (=> start!78058 m!845725))

(declare-fun m!845727 () Bool)

(assert (=> mapNonEmpty!30184 m!845727))

(declare-fun m!845729 () Bool)

(assert (=> b!910719 m!845729))

(assert (=> b!910719 m!845729))

(declare-fun m!845731 () Bool)

(assert (=> b!910719 m!845731))

(check-sat (not b_next!16557) (not mapNonEmpty!30184) tp_is_empty!18975 (not b!910716) (not b!910717) b_and!27147 (not start!78058) (not b!910719))
(check-sat b_and!27147 (not b_next!16557))
