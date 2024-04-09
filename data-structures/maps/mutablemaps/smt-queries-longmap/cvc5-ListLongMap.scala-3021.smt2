; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42488 () Bool)

(assert start!42488)

(declare-fun b_free!11935 () Bool)

(declare-fun b_next!11935 () Bool)

(assert (=> start!42488 (= b_free!11935 (not b_next!11935))))

(declare-fun tp!41841 () Bool)

(declare-fun b_and!20421 () Bool)

(assert (=> start!42488 (= tp!41841 b_and!20421)))

(declare-fun b!473778 () Bool)

(declare-fun res!283054 () Bool)

(declare-fun e!278024 () Bool)

(assert (=> b!473778 (=> (not res!283054) (not e!278024))))

(declare-datatypes ((array!30443 0))(
  ( (array!30444 (arr!14637 (Array (_ BitVec 32) (_ BitVec 64))) (size!14989 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30443)

(declare-datatypes ((List!8968 0))(
  ( (Nil!8965) (Cons!8964 (h!9820 (_ BitVec 64)) (t!14948 List!8968)) )
))
(declare-fun arrayNoDuplicates!0 (array!30443 (_ BitVec 32) List!8968) Bool)

(assert (=> b!473778 (= res!283054 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8965))))

(declare-fun b!473779 () Bool)

(declare-fun res!283051 () Bool)

(assert (=> b!473779 (=> (not res!283051) (not e!278024))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18923 0))(
  ( (V!18924 (val!6726 Int)) )
))
(declare-datatypes ((ValueCell!6338 0))(
  ( (ValueCellFull!6338 (v!9014 V!18923)) (EmptyCell!6338) )
))
(declare-datatypes ((array!30445 0))(
  ( (array!30446 (arr!14638 (Array (_ BitVec 32) ValueCell!6338)) (size!14990 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30445)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473779 (= res!283051 (and (= (size!14990 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14989 _keys!1025) (size!14990 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473780 () Bool)

(declare-fun e!278022 () Bool)

(assert (=> b!473780 (= e!278022 true)))

(declare-datatypes ((tuple2!8860 0))(
  ( (tuple2!8861 (_1!4440 (_ BitVec 64)) (_2!4440 V!18923)) )
))
(declare-datatypes ((List!8969 0))(
  ( (Nil!8966) (Cons!8965 (h!9821 tuple2!8860) (t!14949 List!8969)) )
))
(declare-datatypes ((ListLongMap!7787 0))(
  ( (ListLongMap!7788 (toList!3909 List!8969)) )
))
(declare-fun lt!215611 () ListLongMap!7787)

(declare-fun lt!215613 () tuple2!8860)

(declare-fun minValueBefore!38 () V!18923)

(declare-fun +!1715 (ListLongMap!7787 tuple2!8860) ListLongMap!7787)

(assert (=> b!473780 (= (+!1715 lt!215611 lt!215613) (+!1715 (+!1715 lt!215611 (tuple2!8861 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215613))))

(declare-fun minValueAfter!38 () V!18923)

(assert (=> b!473780 (= lt!215613 (tuple2!8861 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13941 0))(
  ( (Unit!13942) )
))
(declare-fun lt!215616 () Unit!13941)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!152 (ListLongMap!7787 (_ BitVec 64) V!18923 V!18923) Unit!13941)

(assert (=> b!473780 (= lt!215616 (addSameAsAddTwiceSameKeyDiffValues!152 lt!215611 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215612 () ListLongMap!7787)

(declare-fun zeroValue!794 () V!18923)

(assert (=> b!473780 (= lt!215611 (+!1715 lt!215612 (tuple2!8861 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215614 () ListLongMap!7787)

(declare-fun getCurrentListMap!2252 (array!30443 array!30445 (_ BitVec 32) (_ BitVec 32) V!18923 V!18923 (_ BitVec 32) Int) ListLongMap!7787)

(assert (=> b!473780 (= lt!215614 (getCurrentListMap!2252 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215617 () ListLongMap!7787)

(assert (=> b!473780 (= lt!215617 (getCurrentListMap!2252 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473781 () Bool)

(declare-fun e!278026 () Bool)

(declare-fun tp_is_empty!13363 () Bool)

(assert (=> b!473781 (= e!278026 tp_is_empty!13363)))

(declare-fun res!283052 () Bool)

(assert (=> start!42488 (=> (not res!283052) (not e!278024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42488 (= res!283052 (validMask!0 mask!1365))))

(assert (=> start!42488 e!278024))

(assert (=> start!42488 tp_is_empty!13363))

(assert (=> start!42488 tp!41841))

(assert (=> start!42488 true))

(declare-fun array_inv!10548 (array!30443) Bool)

(assert (=> start!42488 (array_inv!10548 _keys!1025)))

(declare-fun e!278027 () Bool)

(declare-fun array_inv!10549 (array!30445) Bool)

(assert (=> start!42488 (and (array_inv!10549 _values!833) e!278027)))

(declare-fun b!473782 () Bool)

(declare-fun e!278023 () Bool)

(declare-fun mapRes!21760 () Bool)

(assert (=> b!473782 (= e!278027 (and e!278023 mapRes!21760))))

(declare-fun condMapEmpty!21760 () Bool)

(declare-fun mapDefault!21760 () ValueCell!6338)

