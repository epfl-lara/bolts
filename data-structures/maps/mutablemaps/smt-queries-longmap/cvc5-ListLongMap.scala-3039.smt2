; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42628 () Bool)

(assert start!42628)

(declare-fun b_free!12043 () Bool)

(declare-fun b_next!12043 () Bool)

(assert (=> start!42628 (= b_free!12043 (not b_next!12043))))

(declare-fun tp!42172 () Bool)

(declare-fun b_and!20549 () Bool)

(assert (=> start!42628 (= tp!42172 b_and!20549)))

(declare-fun b!475232 () Bool)

(declare-fun res!283865 () Bool)

(declare-fun e!279059 () Bool)

(assert (=> b!475232 (=> (not res!283865) (not e!279059))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30653 0))(
  ( (array!30654 (arr!14740 (Array (_ BitVec 32) (_ BitVec 64))) (size!15092 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30653)

(declare-datatypes ((V!19067 0))(
  ( (V!19068 (val!6780 Int)) )
))
(declare-datatypes ((ValueCell!6392 0))(
  ( (ValueCellFull!6392 (v!9069 V!19067)) (EmptyCell!6392) )
))
(declare-datatypes ((array!30655 0))(
  ( (array!30656 (arr!14741 (Array (_ BitVec 32) ValueCell!6392)) (size!15093 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30655)

(assert (=> b!475232 (= res!283865 (and (= (size!15093 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15092 _keys!1025) (size!15093 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun minValueBefore!38 () V!19067)

(declare-fun zeroValue!794 () V!19067)

(declare-fun defaultEntry!841 () Int)

(declare-fun e!279057 () Bool)

(declare-fun b!475233 () Bool)

(declare-fun minValueAfter!38 () V!19067)

(declare-datatypes ((tuple2!8940 0))(
  ( (tuple2!8941 (_1!4480 (_ BitVec 64)) (_2!4480 V!19067)) )
))
(declare-datatypes ((List!9051 0))(
  ( (Nil!9048) (Cons!9047 (h!9903 tuple2!8940) (t!15035 List!9051)) )
))
(declare-datatypes ((ListLongMap!7867 0))(
  ( (ListLongMap!7868 (toList!3949 List!9051)) )
))
(declare-fun +!1728 (ListLongMap!7867 tuple2!8940) ListLongMap!7867)

(declare-fun getCurrentListMap!2264 (array!30653 array!30655 (_ BitVec 32) (_ BitVec 32) V!19067 V!19067 (_ BitVec 32) Int) ListLongMap!7867)

(assert (=> b!475233 (= e!279057 (= (+!1728 (getCurrentListMap!2264 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8941 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2264 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841)))))

(declare-fun b!475234 () Bool)

(declare-fun e!279054 () Bool)

(declare-fun tp_is_empty!13471 () Bool)

(assert (=> b!475234 (= e!279054 tp_is_empty!13471)))

(declare-fun b!475235 () Bool)

(declare-fun res!283864 () Bool)

(assert (=> b!475235 (=> (not res!283864) (not e!279059))))

(declare-datatypes ((List!9052 0))(
  ( (Nil!9049) (Cons!9048 (h!9904 (_ BitVec 64)) (t!15036 List!9052)) )
))
(declare-fun arrayNoDuplicates!0 (array!30653 (_ BitVec 32) List!9052) Bool)

(assert (=> b!475235 (= res!283864 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9049))))

(declare-fun mapIsEmpty!21928 () Bool)

(declare-fun mapRes!21928 () Bool)

(assert (=> mapIsEmpty!21928 mapRes!21928))

(declare-fun mapNonEmpty!21928 () Bool)

(declare-fun tp!42171 () Bool)

(declare-fun e!279055 () Bool)

(assert (=> mapNonEmpty!21928 (= mapRes!21928 (and tp!42171 e!279055))))

(declare-fun mapKey!21928 () (_ BitVec 32))

(declare-fun mapValue!21928 () ValueCell!6392)

(declare-fun mapRest!21928 () (Array (_ BitVec 32) ValueCell!6392))

(assert (=> mapNonEmpty!21928 (= (arr!14741 _values!833) (store mapRest!21928 mapKey!21928 mapValue!21928))))

(declare-fun b!475237 () Bool)

(declare-fun res!283867 () Bool)

(assert (=> b!475237 (=> (not res!283867) (not e!279059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30653 (_ BitVec 32)) Bool)

(assert (=> b!475237 (= res!283867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!475238 () Bool)

(declare-fun e!279056 () Bool)

(assert (=> b!475238 (= e!279056 (and e!279054 mapRes!21928))))

(declare-fun condMapEmpty!21928 () Bool)

(declare-fun mapDefault!21928 () ValueCell!6392)

