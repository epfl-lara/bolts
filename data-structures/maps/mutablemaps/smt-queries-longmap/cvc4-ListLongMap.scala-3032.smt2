; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42578 () Bool)

(assert start!42578)

(declare-fun b_free!12005 () Bool)

(declare-fun b_next!12005 () Bool)

(assert (=> start!42578 (= b_free!12005 (not b_next!12005))))

(declare-fun tp!42055 () Bool)

(declare-fun b_and!20503 () Bool)

(assert (=> start!42578 (= tp!42055 b_and!20503)))

(declare-fun b!474746 () Bool)

(declare-fun e!278714 () Bool)

(declare-fun tp_is_empty!13433 () Bool)

(assert (=> b!474746 (= e!278714 tp_is_empty!13433)))

(declare-fun b!474747 () Bool)

(declare-fun res!283605 () Bool)

(declare-fun e!278713 () Bool)

(assert (=> b!474747 (=> (not res!283605) (not e!278713))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30585 0))(
  ( (array!30586 (arr!14707 (Array (_ BitVec 32) (_ BitVec 64))) (size!15059 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30585)

(declare-datatypes ((V!19015 0))(
  ( (V!19016 (val!6761 Int)) )
))
(declare-datatypes ((ValueCell!6373 0))(
  ( (ValueCellFull!6373 (v!9050 V!19015)) (EmptyCell!6373) )
))
(declare-datatypes ((array!30587 0))(
  ( (array!30588 (arr!14708 (Array (_ BitVec 32) ValueCell!6373)) (size!15060 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30587)

(declare-fun mask!1365 () (_ BitVec 32))

(assert (=> b!474747 (= res!283605 (and (= (size!15060 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15059 _keys!1025) (size!15060 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474748 () Bool)

(declare-fun e!278712 () Bool)

(assert (=> b!474748 (= e!278712 tp_is_empty!13433)))

(declare-fun b!474749 () Bool)

(declare-fun res!283603 () Bool)

(assert (=> b!474749 (=> (not res!283603) (not e!278713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30585 (_ BitVec 32)) Bool)

(assert (=> b!474749 (= res!283603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474750 () Bool)

(assert (=> b!474750 (= e!278713 false)))

(declare-fun zeroValue!794 () V!19015)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8914 0))(
  ( (tuple2!8915 (_1!4467 (_ BitVec 64)) (_2!4467 V!19015)) )
))
(declare-datatypes ((List!9026 0))(
  ( (Nil!9023) (Cons!9022 (h!9878 tuple2!8914) (t!15008 List!9026)) )
))
(declare-datatypes ((ListLongMap!7841 0))(
  ( (ListLongMap!7842 (toList!3936 List!9026)) )
))
(declare-fun lt!216296 () ListLongMap!7841)

(declare-fun minValueAfter!38 () V!19015)

(declare-fun getCurrentListMapNoExtraKeys!2090 (array!30585 array!30587 (_ BitVec 32) (_ BitVec 32) V!19015 V!19015 (_ BitVec 32) Int) ListLongMap!7841)

(assert (=> b!474750 (= lt!216296 (getCurrentListMapNoExtraKeys!2090 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216297 () ListLongMap!7841)

(declare-fun minValueBefore!38 () V!19015)

(assert (=> b!474750 (= lt!216297 (getCurrentListMapNoExtraKeys!2090 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!283602 () Bool)

(assert (=> start!42578 (=> (not res!283602) (not e!278713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42578 (= res!283602 (validMask!0 mask!1365))))

(assert (=> start!42578 e!278713))

(assert (=> start!42578 tp_is_empty!13433))

(assert (=> start!42578 tp!42055))

(assert (=> start!42578 true))

(declare-fun array_inv!10598 (array!30585) Bool)

(assert (=> start!42578 (array_inv!10598 _keys!1025)))

(declare-fun e!278716 () Bool)

(declare-fun array_inv!10599 (array!30587) Bool)

(assert (=> start!42578 (and (array_inv!10599 _values!833) e!278716)))

(declare-fun b!474751 () Bool)

(declare-fun res!283604 () Bool)

(assert (=> b!474751 (=> (not res!283604) (not e!278713))))

(declare-datatypes ((List!9027 0))(
  ( (Nil!9024) (Cons!9023 (h!9879 (_ BitVec 64)) (t!15009 List!9027)) )
))
(declare-fun arrayNoDuplicates!0 (array!30585 (_ BitVec 32) List!9027) Bool)

(assert (=> b!474751 (= res!283604 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9024))))

(declare-fun mapIsEmpty!21868 () Bool)

(declare-fun mapRes!21868 () Bool)

(assert (=> mapIsEmpty!21868 mapRes!21868))

(declare-fun mapNonEmpty!21868 () Bool)

(declare-fun tp!42054 () Bool)

(assert (=> mapNonEmpty!21868 (= mapRes!21868 (and tp!42054 e!278712))))

(declare-fun mapKey!21868 () (_ BitVec 32))

(declare-fun mapValue!21868 () ValueCell!6373)

(declare-fun mapRest!21868 () (Array (_ BitVec 32) ValueCell!6373))

(assert (=> mapNonEmpty!21868 (= (arr!14708 _values!833) (store mapRest!21868 mapKey!21868 mapValue!21868))))

(declare-fun b!474752 () Bool)

(assert (=> b!474752 (= e!278716 (and e!278714 mapRes!21868))))

(declare-fun condMapEmpty!21868 () Bool)

(declare-fun mapDefault!21868 () ValueCell!6373)

