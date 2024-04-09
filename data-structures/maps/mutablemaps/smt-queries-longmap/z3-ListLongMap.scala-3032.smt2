; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42576 () Bool)

(assert start!42576)

(declare-fun b_free!12003 () Bool)

(declare-fun b_next!12003 () Bool)

(assert (=> start!42576 (= b_free!12003 (not b_next!12003))))

(declare-fun tp!42049 () Bool)

(declare-fun b_and!20501 () Bool)

(assert (=> start!42576 (= tp!42049 b_and!20501)))

(declare-fun b!474725 () Bool)

(declare-fun res!283592 () Bool)

(declare-fun e!278697 () Bool)

(assert (=> b!474725 (=> (not res!283592) (not e!278697))))

(declare-datatypes ((array!30581 0))(
  ( (array!30582 (arr!14705 (Array (_ BitVec 32) (_ BitVec 64))) (size!15057 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30581)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30581 (_ BitVec 32)) Bool)

(assert (=> b!474725 (= res!283592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21865 () Bool)

(declare-fun mapRes!21865 () Bool)

(declare-fun tp!42048 () Bool)

(declare-fun e!278701 () Bool)

(assert (=> mapNonEmpty!21865 (= mapRes!21865 (and tp!42048 e!278701))))

(declare-datatypes ((V!19013 0))(
  ( (V!19014 (val!6760 Int)) )
))
(declare-datatypes ((ValueCell!6372 0))(
  ( (ValueCellFull!6372 (v!9049 V!19013)) (EmptyCell!6372) )
))
(declare-fun mapValue!21865 () ValueCell!6372)

(declare-fun mapRest!21865 () (Array (_ BitVec 32) ValueCell!6372))

(declare-datatypes ((array!30583 0))(
  ( (array!30584 (arr!14706 (Array (_ BitVec 32) ValueCell!6372)) (size!15058 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30583)

(declare-fun mapKey!21865 () (_ BitVec 32))

(assert (=> mapNonEmpty!21865 (= (arr!14706 _values!833) (store mapRest!21865 mapKey!21865 mapValue!21865))))

(declare-fun b!474726 () Bool)

(declare-fun e!278699 () Bool)

(declare-fun tp_is_empty!13431 () Bool)

(assert (=> b!474726 (= e!278699 tp_is_empty!13431)))

(declare-fun res!283593 () Bool)

(assert (=> start!42576 (=> (not res!283593) (not e!278697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42576 (= res!283593 (validMask!0 mask!1365))))

(assert (=> start!42576 e!278697))

(assert (=> start!42576 tp_is_empty!13431))

(assert (=> start!42576 tp!42049))

(assert (=> start!42576 true))

(declare-fun array_inv!10596 (array!30581) Bool)

(assert (=> start!42576 (array_inv!10596 _keys!1025)))

(declare-fun e!278700 () Bool)

(declare-fun array_inv!10597 (array!30583) Bool)

(assert (=> start!42576 (and (array_inv!10597 _values!833) e!278700)))

(declare-fun b!474727 () Bool)

(assert (=> b!474727 (= e!278700 (and e!278699 mapRes!21865))))

(declare-fun condMapEmpty!21865 () Bool)

(declare-fun mapDefault!21865 () ValueCell!6372)

(assert (=> b!474727 (= condMapEmpty!21865 (= (arr!14706 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6372)) mapDefault!21865)))))

(declare-fun b!474728 () Bool)

(assert (=> b!474728 (= e!278701 tp_is_empty!13431)))

(declare-fun b!474729 () Bool)

(declare-fun res!283591 () Bool)

(assert (=> b!474729 (=> (not res!283591) (not e!278697))))

(declare-datatypes ((List!9024 0))(
  ( (Nil!9021) (Cons!9020 (h!9876 (_ BitVec 64)) (t!15006 List!9024)) )
))
(declare-fun arrayNoDuplicates!0 (array!30581 (_ BitVec 32) List!9024) Bool)

(assert (=> b!474729 (= res!283591 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9021))))

(declare-fun mapIsEmpty!21865 () Bool)

(assert (=> mapIsEmpty!21865 mapRes!21865))

(declare-fun b!474730 () Bool)

(declare-fun res!283590 () Bool)

(assert (=> b!474730 (=> (not res!283590) (not e!278697))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!474730 (= res!283590 (and (= (size!15058 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15057 _keys!1025) (size!15058 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474731 () Bool)

(assert (=> b!474731 (= e!278697 false)))

(declare-fun zeroValue!794 () V!19013)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8912 0))(
  ( (tuple2!8913 (_1!4466 (_ BitVec 64)) (_2!4466 V!19013)) )
))
(declare-datatypes ((List!9025 0))(
  ( (Nil!9022) (Cons!9021 (h!9877 tuple2!8912) (t!15007 List!9025)) )
))
(declare-datatypes ((ListLongMap!7839 0))(
  ( (ListLongMap!7840 (toList!3935 List!9025)) )
))
(declare-fun lt!216290 () ListLongMap!7839)

(declare-fun minValueAfter!38 () V!19013)

(declare-fun getCurrentListMapNoExtraKeys!2089 (array!30581 array!30583 (_ BitVec 32) (_ BitVec 32) V!19013 V!19013 (_ BitVec 32) Int) ListLongMap!7839)

(assert (=> b!474731 (= lt!216290 (getCurrentListMapNoExtraKeys!2089 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19013)

(declare-fun lt!216291 () ListLongMap!7839)

(assert (=> b!474731 (= lt!216291 (getCurrentListMapNoExtraKeys!2089 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42576 res!283593) b!474730))

(assert (= (and b!474730 res!283590) b!474725))

(assert (= (and b!474725 res!283592) b!474729))

(assert (= (and b!474729 res!283591) b!474731))

(assert (= (and b!474727 condMapEmpty!21865) mapIsEmpty!21865))

(assert (= (and b!474727 (not condMapEmpty!21865)) mapNonEmpty!21865))

(get-info :version)

(assert (= (and mapNonEmpty!21865 ((_ is ValueCellFull!6372) mapValue!21865)) b!474728))

(assert (= (and b!474727 ((_ is ValueCellFull!6372) mapDefault!21865)) b!474726))

(assert (= start!42576 b!474727))

(declare-fun m!457063 () Bool)

(assert (=> mapNonEmpty!21865 m!457063))

(declare-fun m!457065 () Bool)

(assert (=> b!474729 m!457065))

(declare-fun m!457067 () Bool)

(assert (=> start!42576 m!457067))

(declare-fun m!457069 () Bool)

(assert (=> start!42576 m!457069))

(declare-fun m!457071 () Bool)

(assert (=> start!42576 m!457071))

(declare-fun m!457073 () Bool)

(assert (=> b!474725 m!457073))

(declare-fun m!457075 () Bool)

(assert (=> b!474731 m!457075))

(declare-fun m!457077 () Bool)

(assert (=> b!474731 m!457077))

(check-sat (not b!474729) (not start!42576) (not b_next!12003) (not b!474731) (not mapNonEmpty!21865) b_and!20501 tp_is_empty!13431 (not b!474725))
(check-sat b_and!20501 (not b_next!12003))
