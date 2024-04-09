; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42570 () Bool)

(assert start!42570)

(declare-fun b_free!11997 () Bool)

(declare-fun b_next!11997 () Bool)

(assert (=> start!42570 (= b_free!11997 (not b_next!11997))))

(declare-fun tp!42031 () Bool)

(declare-fun b_and!20495 () Bool)

(assert (=> start!42570 (= tp!42031 b_and!20495)))

(declare-fun b!474662 () Bool)

(declare-fun e!278652 () Bool)

(assert (=> b!474662 (= e!278652 false)))

(declare-datatypes ((V!19005 0))(
  ( (V!19006 (val!6757 Int)) )
))
(declare-fun zeroValue!794 () V!19005)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8906 0))(
  ( (tuple2!8907 (_1!4463 (_ BitVec 64)) (_2!4463 V!19005)) )
))
(declare-datatypes ((List!9019 0))(
  ( (Nil!9016) (Cons!9015 (h!9871 tuple2!8906) (t!15001 List!9019)) )
))
(declare-datatypes ((ListLongMap!7833 0))(
  ( (ListLongMap!7834 (toList!3932 List!9019)) )
))
(declare-fun lt!216273 () ListLongMap!7833)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30569 0))(
  ( (array!30570 (arr!14699 (Array (_ BitVec 32) (_ BitVec 64))) (size!15051 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30569)

(declare-datatypes ((ValueCell!6369 0))(
  ( (ValueCellFull!6369 (v!9046 V!19005)) (EmptyCell!6369) )
))
(declare-datatypes ((array!30571 0))(
  ( (array!30572 (arr!14700 (Array (_ BitVec 32) ValueCell!6369)) (size!15052 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30571)

(declare-fun minValueAfter!38 () V!19005)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2086 (array!30569 array!30571 (_ BitVec 32) (_ BitVec 32) V!19005 V!19005 (_ BitVec 32) Int) ListLongMap!7833)

(assert (=> b!474662 (= lt!216273 (getCurrentListMapNoExtraKeys!2086 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216272 () ListLongMap!7833)

(declare-fun minValueBefore!38 () V!19005)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474662 (= lt!216272 (getCurrentListMapNoExtraKeys!2086 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474663 () Bool)

(declare-fun res!283556 () Bool)

(assert (=> b!474663 (=> (not res!283556) (not e!278652))))

(declare-datatypes ((List!9020 0))(
  ( (Nil!9017) (Cons!9016 (h!9872 (_ BitVec 64)) (t!15002 List!9020)) )
))
(declare-fun arrayNoDuplicates!0 (array!30569 (_ BitVec 32) List!9020) Bool)

(assert (=> b!474663 (= res!283556 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9017))))

(declare-fun b!474664 () Bool)

(declare-fun e!278655 () Bool)

(declare-fun tp_is_empty!13425 () Bool)

(assert (=> b!474664 (= e!278655 tp_is_empty!13425)))

(declare-fun mapNonEmpty!21856 () Bool)

(declare-fun mapRes!21856 () Bool)

(declare-fun tp!42030 () Bool)

(assert (=> mapNonEmpty!21856 (= mapRes!21856 (and tp!42030 e!278655))))

(declare-fun mapRest!21856 () (Array (_ BitVec 32) ValueCell!6369))

(declare-fun mapValue!21856 () ValueCell!6369)

(declare-fun mapKey!21856 () (_ BitVec 32))

(assert (=> mapNonEmpty!21856 (= (arr!14700 _values!833) (store mapRest!21856 mapKey!21856 mapValue!21856))))

(declare-fun b!474665 () Bool)

(declare-fun res!283557 () Bool)

(assert (=> b!474665 (=> (not res!283557) (not e!278652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30569 (_ BitVec 32)) Bool)

(assert (=> b!474665 (= res!283557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21856 () Bool)

(assert (=> mapIsEmpty!21856 mapRes!21856))

(declare-fun b!474666 () Bool)

(declare-fun e!278653 () Bool)

(declare-fun e!278654 () Bool)

(assert (=> b!474666 (= e!278653 (and e!278654 mapRes!21856))))

(declare-fun condMapEmpty!21856 () Bool)

(declare-fun mapDefault!21856 () ValueCell!6369)

(assert (=> b!474666 (= condMapEmpty!21856 (= (arr!14700 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6369)) mapDefault!21856)))))

(declare-fun b!474667 () Bool)

(assert (=> b!474667 (= e!278654 tp_is_empty!13425)))

(declare-fun b!474668 () Bool)

(declare-fun res!283555 () Bool)

(assert (=> b!474668 (=> (not res!283555) (not e!278652))))

(assert (=> b!474668 (= res!283555 (and (= (size!15052 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15051 _keys!1025) (size!15052 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!283554 () Bool)

(assert (=> start!42570 (=> (not res!283554) (not e!278652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42570 (= res!283554 (validMask!0 mask!1365))))

(assert (=> start!42570 e!278652))

(assert (=> start!42570 tp_is_empty!13425))

(assert (=> start!42570 tp!42031))

(assert (=> start!42570 true))

(declare-fun array_inv!10592 (array!30569) Bool)

(assert (=> start!42570 (array_inv!10592 _keys!1025)))

(declare-fun array_inv!10593 (array!30571) Bool)

(assert (=> start!42570 (and (array_inv!10593 _values!833) e!278653)))

(assert (= (and start!42570 res!283554) b!474668))

(assert (= (and b!474668 res!283555) b!474665))

(assert (= (and b!474665 res!283557) b!474663))

(assert (= (and b!474663 res!283556) b!474662))

(assert (= (and b!474666 condMapEmpty!21856) mapIsEmpty!21856))

(assert (= (and b!474666 (not condMapEmpty!21856)) mapNonEmpty!21856))

(get-info :version)

(assert (= (and mapNonEmpty!21856 ((_ is ValueCellFull!6369) mapValue!21856)) b!474664))

(assert (= (and b!474666 ((_ is ValueCellFull!6369) mapDefault!21856)) b!474667))

(assert (= start!42570 b!474666))

(declare-fun m!457015 () Bool)

(assert (=> start!42570 m!457015))

(declare-fun m!457017 () Bool)

(assert (=> start!42570 m!457017))

(declare-fun m!457019 () Bool)

(assert (=> start!42570 m!457019))

(declare-fun m!457021 () Bool)

(assert (=> mapNonEmpty!21856 m!457021))

(declare-fun m!457023 () Bool)

(assert (=> b!474663 m!457023))

(declare-fun m!457025 () Bool)

(assert (=> b!474662 m!457025))

(declare-fun m!457027 () Bool)

(assert (=> b!474662 m!457027))

(declare-fun m!457029 () Bool)

(assert (=> b!474665 m!457029))

(check-sat b_and!20495 (not b!474662) (not b_next!11997) (not start!42570) (not b!474663) tp_is_empty!13425 (not b!474665) (not mapNonEmpty!21856))
(check-sat b_and!20495 (not b_next!11997))
