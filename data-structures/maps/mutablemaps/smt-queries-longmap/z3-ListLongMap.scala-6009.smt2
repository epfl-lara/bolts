; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77952 () Bool)

(assert start!77952)

(declare-fun b_free!16467 () Bool)

(declare-fun b_next!16467 () Bool)

(assert (=> start!77952 (= b_free!16467 (not b_next!16467))))

(declare-fun tp!57670 () Bool)

(declare-fun b_and!27055 () Bool)

(assert (=> start!77952 (= tp!57670 b_and!27055)))

(declare-fun mapNonEmpty!30046 () Bool)

(declare-fun mapRes!30046 () Bool)

(declare-fun tp!57669 () Bool)

(declare-fun e!509965 () Bool)

(assert (=> mapNonEmpty!30046 (= mapRes!30046 (and tp!57669 e!509965))))

(declare-datatypes ((V!30145 0))(
  ( (V!30146 (val!9493 Int)) )
))
(declare-datatypes ((ValueCell!8961 0))(
  ( (ValueCellFull!8961 (v!12001 V!30145)) (EmptyCell!8961) )
))
(declare-datatypes ((array!53788 0))(
  ( (array!53789 (arr!25847 (Array (_ BitVec 32) ValueCell!8961)) (size!26307 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53788)

(declare-fun mapRest!30046 () (Array (_ BitVec 32) ValueCell!8961))

(declare-fun mapValue!30046 () ValueCell!8961)

(declare-fun mapKey!30046 () (_ BitVec 32))

(assert (=> mapNonEmpty!30046 (= (arr!25847 _values!1152) (store mapRest!30046 mapKey!30046 mapValue!30046))))

(declare-fun b!909642 () Bool)

(declare-fun res!614016 () Bool)

(declare-fun e!509964 () Bool)

(assert (=> b!909642 (=> (not res!614016) (not e!509964))))

(declare-datatypes ((array!53790 0))(
  ( (array!53791 (arr!25848 (Array (_ BitVec 32) (_ BitVec 64))) (size!26308 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53790)

(declare-datatypes ((List!18256 0))(
  ( (Nil!18253) (Cons!18252 (h!19398 (_ BitVec 64)) (t!25847 List!18256)) )
))
(declare-fun arrayNoDuplicates!0 (array!53790 (_ BitVec 32) List!18256) Bool)

(assert (=> b!909642 (= res!614016 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18253))))

(declare-fun b!909643 () Bool)

(declare-fun e!509962 () Bool)

(declare-fun tp_is_empty!18885 () Bool)

(assert (=> b!909643 (= e!509962 tp_is_empty!18885)))

(declare-fun mapIsEmpty!30046 () Bool)

(assert (=> mapIsEmpty!30046 mapRes!30046))

(declare-fun b!909644 () Bool)

(assert (=> b!909644 (= e!509964 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!410050 () Bool)

(declare-fun zeroValue!1094 () V!30145)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30145)

(declare-datatypes ((tuple2!12400 0))(
  ( (tuple2!12401 (_1!6210 (_ BitVec 64)) (_2!6210 V!30145)) )
))
(declare-datatypes ((List!18257 0))(
  ( (Nil!18254) (Cons!18253 (h!19399 tuple2!12400) (t!25848 List!18257)) )
))
(declare-datatypes ((ListLongMap!11111 0))(
  ( (ListLongMap!11112 (toList!5571 List!18257)) )
))
(declare-fun contains!4579 (ListLongMap!11111 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2801 (array!53790 array!53788 (_ BitVec 32) (_ BitVec 32) V!30145 V!30145 (_ BitVec 32) Int) ListLongMap!11111)

(assert (=> b!909644 (= lt!410050 (contains!4579 (getCurrentListMap!2801 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909645 () Bool)

(declare-fun res!614017 () Bool)

(assert (=> b!909645 (=> (not res!614017) (not e!509964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53790 (_ BitVec 32)) Bool)

(assert (=> b!909645 (= res!614017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909641 () Bool)

(assert (=> b!909641 (= e!509965 tp_is_empty!18885)))

(declare-fun res!614014 () Bool)

(assert (=> start!77952 (=> (not res!614014) (not e!509964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77952 (= res!614014 (validMask!0 mask!1756))))

(assert (=> start!77952 e!509964))

(declare-fun e!509963 () Bool)

(declare-fun array_inv!20194 (array!53788) Bool)

(assert (=> start!77952 (and (array_inv!20194 _values!1152) e!509963)))

(assert (=> start!77952 tp!57670))

(assert (=> start!77952 true))

(assert (=> start!77952 tp_is_empty!18885))

(declare-fun array_inv!20195 (array!53790) Bool)

(assert (=> start!77952 (array_inv!20195 _keys!1386)))

(declare-fun b!909646 () Bool)

(assert (=> b!909646 (= e!509963 (and e!509962 mapRes!30046))))

(declare-fun condMapEmpty!30046 () Bool)

(declare-fun mapDefault!30046 () ValueCell!8961)

(assert (=> b!909646 (= condMapEmpty!30046 (= (arr!25847 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8961)) mapDefault!30046)))))

(declare-fun b!909647 () Bool)

(declare-fun res!614015 () Bool)

(assert (=> b!909647 (=> (not res!614015) (not e!509964))))

(assert (=> b!909647 (= res!614015 (and (= (size!26307 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26308 _keys!1386) (size!26307 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!77952 res!614014) b!909647))

(assert (= (and b!909647 res!614015) b!909645))

(assert (= (and b!909645 res!614017) b!909642))

(assert (= (and b!909642 res!614016) b!909644))

(assert (= (and b!909646 condMapEmpty!30046) mapIsEmpty!30046))

(assert (= (and b!909646 (not condMapEmpty!30046)) mapNonEmpty!30046))

(get-info :version)

(assert (= (and mapNonEmpty!30046 ((_ is ValueCellFull!8961) mapValue!30046)) b!909641))

(assert (= (and b!909646 ((_ is ValueCellFull!8961) mapDefault!30046)) b!909643))

(assert (= start!77952 b!909646))

(declare-fun m!844905 () Bool)

(assert (=> start!77952 m!844905))

(declare-fun m!844907 () Bool)

(assert (=> start!77952 m!844907))

(declare-fun m!844909 () Bool)

(assert (=> start!77952 m!844909))

(declare-fun m!844911 () Bool)

(assert (=> b!909642 m!844911))

(declare-fun m!844913 () Bool)

(assert (=> b!909644 m!844913))

(assert (=> b!909644 m!844913))

(declare-fun m!844915 () Bool)

(assert (=> b!909644 m!844915))

(declare-fun m!844917 () Bool)

(assert (=> mapNonEmpty!30046 m!844917))

(declare-fun m!844919 () Bool)

(assert (=> b!909645 m!844919))

(check-sat tp_is_empty!18885 b_and!27055 (not b!909645) (not start!77952) (not b_next!16467) (not b!909642) (not b!909644) (not mapNonEmpty!30046))
(check-sat b_and!27055 (not b_next!16467))
