; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42552 () Bool)

(assert start!42552)

(declare-fun b_free!11979 () Bool)

(declare-fun b_next!11979 () Bool)

(assert (=> start!42552 (= b_free!11979 (not b_next!11979))))

(declare-fun tp!41977 () Bool)

(declare-fun b_and!20477 () Bool)

(assert (=> start!42552 (= tp!41977 b_and!20477)))

(declare-fun b!474473 () Bool)

(declare-fun res!283447 () Bool)

(declare-fun e!278519 () Bool)

(assert (=> b!474473 (=> (not res!283447) (not e!278519))))

(declare-datatypes ((array!30533 0))(
  ( (array!30534 (arr!14681 (Array (_ BitVec 32) (_ BitVec 64))) (size!15033 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30533)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30533 (_ BitVec 32)) Bool)

(assert (=> b!474473 (= res!283447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474474 () Bool)

(declare-fun res!283446 () Bool)

(assert (=> b!474474 (=> (not res!283446) (not e!278519))))

(declare-datatypes ((List!9005 0))(
  ( (Nil!9002) (Cons!9001 (h!9857 (_ BitVec 64)) (t!14987 List!9005)) )
))
(declare-fun arrayNoDuplicates!0 (array!30533 (_ BitVec 32) List!9005) Bool)

(assert (=> b!474474 (= res!283446 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9002))))

(declare-fun b!474475 () Bool)

(declare-fun e!278518 () Bool)

(declare-fun tp_is_empty!13407 () Bool)

(assert (=> b!474475 (= e!278518 tp_is_empty!13407)))

(declare-fun b!474476 () Bool)

(declare-fun e!278517 () Bool)

(assert (=> b!474476 (= e!278517 tp_is_empty!13407)))

(declare-fun b!474477 () Bool)

(assert (=> b!474477 (= e!278519 false)))

(declare-datatypes ((V!18981 0))(
  ( (V!18982 (val!6748 Int)) )
))
(declare-fun zeroValue!794 () V!18981)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8894 0))(
  ( (tuple2!8895 (_1!4457 (_ BitVec 64)) (_2!4457 V!18981)) )
))
(declare-datatypes ((List!9006 0))(
  ( (Nil!9003) (Cons!9002 (h!9858 tuple2!8894) (t!14988 List!9006)) )
))
(declare-datatypes ((ListLongMap!7821 0))(
  ( (ListLongMap!7822 (toList!3926 List!9006)) )
))
(declare-fun lt!216218 () ListLongMap!7821)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6360 0))(
  ( (ValueCellFull!6360 (v!9037 V!18981)) (EmptyCell!6360) )
))
(declare-datatypes ((array!30535 0))(
  ( (array!30536 (arr!14682 (Array (_ BitVec 32) ValueCell!6360)) (size!15034 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30535)

(declare-fun minValueAfter!38 () V!18981)

(declare-fun getCurrentListMapNoExtraKeys!2080 (array!30533 array!30535 (_ BitVec 32) (_ BitVec 32) V!18981 V!18981 (_ BitVec 32) Int) ListLongMap!7821)

(assert (=> b!474477 (= lt!216218 (getCurrentListMapNoExtraKeys!2080 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18981)

(declare-fun lt!216219 () ListLongMap!7821)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474477 (= lt!216219 (getCurrentListMapNoExtraKeys!2080 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!283449 () Bool)

(assert (=> start!42552 (=> (not res!283449) (not e!278519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42552 (= res!283449 (validMask!0 mask!1365))))

(assert (=> start!42552 e!278519))

(assert (=> start!42552 tp_is_empty!13407))

(assert (=> start!42552 tp!41977))

(assert (=> start!42552 true))

(declare-fun array_inv!10580 (array!30533) Bool)

(assert (=> start!42552 (array_inv!10580 _keys!1025)))

(declare-fun e!278521 () Bool)

(declare-fun array_inv!10581 (array!30535) Bool)

(assert (=> start!42552 (and (array_inv!10581 _values!833) e!278521)))

(declare-fun mapNonEmpty!21829 () Bool)

(declare-fun mapRes!21829 () Bool)

(declare-fun tp!41976 () Bool)

(assert (=> mapNonEmpty!21829 (= mapRes!21829 (and tp!41976 e!278517))))

(declare-fun mapValue!21829 () ValueCell!6360)

(declare-fun mapKey!21829 () (_ BitVec 32))

(declare-fun mapRest!21829 () (Array (_ BitVec 32) ValueCell!6360))

(assert (=> mapNonEmpty!21829 (= (arr!14682 _values!833) (store mapRest!21829 mapKey!21829 mapValue!21829))))

(declare-fun b!474478 () Bool)

(assert (=> b!474478 (= e!278521 (and e!278518 mapRes!21829))))

(declare-fun condMapEmpty!21829 () Bool)

(declare-fun mapDefault!21829 () ValueCell!6360)

(assert (=> b!474478 (= condMapEmpty!21829 (= (arr!14682 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6360)) mapDefault!21829)))))

(declare-fun b!474479 () Bool)

(declare-fun res!283448 () Bool)

(assert (=> b!474479 (=> (not res!283448) (not e!278519))))

(assert (=> b!474479 (= res!283448 (and (= (size!15034 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15033 _keys!1025) (size!15034 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21829 () Bool)

(assert (=> mapIsEmpty!21829 mapRes!21829))

(assert (= (and start!42552 res!283449) b!474479))

(assert (= (and b!474479 res!283448) b!474473))

(assert (= (and b!474473 res!283447) b!474474))

(assert (= (and b!474474 res!283446) b!474477))

(assert (= (and b!474478 condMapEmpty!21829) mapIsEmpty!21829))

(assert (= (and b!474478 (not condMapEmpty!21829)) mapNonEmpty!21829))

(get-info :version)

(assert (= (and mapNonEmpty!21829 ((_ is ValueCellFull!6360) mapValue!21829)) b!474476))

(assert (= (and b!474478 ((_ is ValueCellFull!6360) mapDefault!21829)) b!474475))

(assert (= start!42552 b!474478))

(declare-fun m!456871 () Bool)

(assert (=> mapNonEmpty!21829 m!456871))

(declare-fun m!456873 () Bool)

(assert (=> b!474473 m!456873))

(declare-fun m!456875 () Bool)

(assert (=> b!474477 m!456875))

(declare-fun m!456877 () Bool)

(assert (=> b!474477 m!456877))

(declare-fun m!456879 () Bool)

(assert (=> start!42552 m!456879))

(declare-fun m!456881 () Bool)

(assert (=> start!42552 m!456881))

(declare-fun m!456883 () Bool)

(assert (=> start!42552 m!456883))

(declare-fun m!456885 () Bool)

(assert (=> b!474474 m!456885))

(check-sat tp_is_empty!13407 (not b_next!11979) (not mapNonEmpty!21829) (not b!474477) (not start!42552) (not b!474473) b_and!20477 (not b!474474))
(check-sat b_and!20477 (not b_next!11979))
