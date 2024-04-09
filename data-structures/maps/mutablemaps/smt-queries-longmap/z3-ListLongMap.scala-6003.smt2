; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77900 () Bool)

(assert start!77900)

(declare-fun b_free!16431 () Bool)

(declare-fun b_next!16431 () Bool)

(assert (=> start!77900 (= b_free!16431 (not b_next!16431))))

(declare-fun tp!57558 () Bool)

(declare-fun b_and!27017 () Bool)

(assert (=> start!77900 (= tp!57558 b_and!27017)))

(declare-fun mapIsEmpty!29989 () Bool)

(declare-fun mapRes!29989 () Bool)

(assert (=> mapIsEmpty!29989 mapRes!29989))

(declare-fun b!909137 () Bool)

(declare-fun e!509624 () Bool)

(declare-fun e!509622 () Bool)

(assert (=> b!909137 (= e!509624 (and e!509622 mapRes!29989))))

(declare-fun condMapEmpty!29989 () Bool)

(declare-datatypes ((V!30097 0))(
  ( (V!30098 (val!9475 Int)) )
))
(declare-datatypes ((ValueCell!8943 0))(
  ( (ValueCellFull!8943 (v!11982 V!30097)) (EmptyCell!8943) )
))
(declare-datatypes ((array!53718 0))(
  ( (array!53719 (arr!25813 (Array (_ BitVec 32) ValueCell!8943)) (size!26273 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53718)

(declare-fun mapDefault!29989 () ValueCell!8943)

(assert (=> b!909137 (= condMapEmpty!29989 (= (arr!25813 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8943)) mapDefault!29989)))))

(declare-fun b!909138 () Bool)

(declare-fun res!613738 () Bool)

(declare-fun e!509620 () Bool)

(assert (=> b!909138 (=> (not res!613738) (not e!509620))))

(declare-datatypes ((array!53720 0))(
  ( (array!53721 (arr!25814 (Array (_ BitVec 32) (_ BitVec 64))) (size!26274 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53720)

(declare-datatypes ((List!18233 0))(
  ( (Nil!18230) (Cons!18229 (h!19375 (_ BitVec 64)) (t!25822 List!18233)) )
))
(declare-fun arrayNoDuplicates!0 (array!53720 (_ BitVec 32) List!18233) Bool)

(assert (=> b!909138 (= res!613738 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18230))))

(declare-fun b!909139 () Bool)

(declare-fun tp_is_empty!18849 () Bool)

(assert (=> b!909139 (= e!509622 tp_is_empty!18849)))

(declare-fun b!909140 () Bool)

(declare-fun res!613737 () Bool)

(assert (=> b!909140 (=> (not res!613737) (not e!509620))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53720 (_ BitVec 32)) Bool)

(assert (=> b!909140 (= res!613737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909141 () Bool)

(assert (=> b!909141 (= e!509620 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30097)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!409918 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30097)

(declare-datatypes ((tuple2!12376 0))(
  ( (tuple2!12377 (_1!6198 (_ BitVec 64)) (_2!6198 V!30097)) )
))
(declare-datatypes ((List!18234 0))(
  ( (Nil!18231) (Cons!18230 (h!19376 tuple2!12376) (t!25823 List!18234)) )
))
(declare-datatypes ((ListLongMap!11087 0))(
  ( (ListLongMap!11088 (toList!5559 List!18234)) )
))
(declare-fun contains!4566 (ListLongMap!11087 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2789 (array!53720 array!53718 (_ BitVec 32) (_ BitVec 32) V!30097 V!30097 (_ BitVec 32) Int) ListLongMap!11087)

(assert (=> b!909141 (= lt!409918 (contains!4566 (getCurrentListMap!2789 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909142 () Bool)

(declare-fun e!509621 () Bool)

(assert (=> b!909142 (= e!509621 tp_is_empty!18849)))

(declare-fun mapNonEmpty!29989 () Bool)

(declare-fun tp!57559 () Bool)

(assert (=> mapNonEmpty!29989 (= mapRes!29989 (and tp!57559 e!509621))))

(declare-fun mapKey!29989 () (_ BitVec 32))

(declare-fun mapValue!29989 () ValueCell!8943)

(declare-fun mapRest!29989 () (Array (_ BitVec 32) ValueCell!8943))

(assert (=> mapNonEmpty!29989 (= (arr!25813 _values!1152) (store mapRest!29989 mapKey!29989 mapValue!29989))))

(declare-fun res!613735 () Bool)

(assert (=> start!77900 (=> (not res!613735) (not e!509620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77900 (= res!613735 (validMask!0 mask!1756))))

(assert (=> start!77900 e!509620))

(declare-fun array_inv!20182 (array!53718) Bool)

(assert (=> start!77900 (and (array_inv!20182 _values!1152) e!509624)))

(assert (=> start!77900 tp!57558))

(assert (=> start!77900 true))

(assert (=> start!77900 tp_is_empty!18849))

(declare-fun array_inv!20183 (array!53720) Bool)

(assert (=> start!77900 (array_inv!20183 _keys!1386)))

(declare-fun b!909136 () Bool)

(declare-fun res!613736 () Bool)

(assert (=> b!909136 (=> (not res!613736) (not e!509620))))

(assert (=> b!909136 (= res!613736 (and (= (size!26273 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26274 _keys!1386) (size!26273 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!77900 res!613735) b!909136))

(assert (= (and b!909136 res!613736) b!909140))

(assert (= (and b!909140 res!613737) b!909138))

(assert (= (and b!909138 res!613738) b!909141))

(assert (= (and b!909137 condMapEmpty!29989) mapIsEmpty!29989))

(assert (= (and b!909137 (not condMapEmpty!29989)) mapNonEmpty!29989))

(get-info :version)

(assert (= (and mapNonEmpty!29989 ((_ is ValueCellFull!8943) mapValue!29989)) b!909142))

(assert (= (and b!909137 ((_ is ValueCellFull!8943) mapDefault!29989)) b!909139))

(assert (= start!77900 b!909137))

(declare-fun m!844525 () Bool)

(assert (=> mapNonEmpty!29989 m!844525))

(declare-fun m!844527 () Bool)

(assert (=> b!909138 m!844527))

(declare-fun m!844529 () Bool)

(assert (=> b!909140 m!844529))

(declare-fun m!844531 () Bool)

(assert (=> start!77900 m!844531))

(declare-fun m!844533 () Bool)

(assert (=> start!77900 m!844533))

(declare-fun m!844535 () Bool)

(assert (=> start!77900 m!844535))

(declare-fun m!844537 () Bool)

(assert (=> b!909141 m!844537))

(assert (=> b!909141 m!844537))

(declare-fun m!844539 () Bool)

(assert (=> b!909141 m!844539))

(check-sat (not b!909141) (not b_next!16431) (not start!77900) (not b!909138) tp_is_empty!18849 (not b!909140) b_and!27017 (not mapNonEmpty!29989))
(check-sat b_and!27017 (not b_next!16431))
