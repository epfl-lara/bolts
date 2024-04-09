; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42684 () Bool)

(assert start!42684)

(declare-fun b_free!12061 () Bool)

(declare-fun b_next!12061 () Bool)

(assert (=> start!42684 (= b_free!12061 (not b_next!12061))))

(declare-fun tp!42232 () Bool)

(declare-fun b_and!20591 () Bool)

(assert (=> start!42684 (= tp!42232 b_and!20591)))

(declare-fun res!284152 () Bool)

(declare-fun e!279443 () Bool)

(assert (=> start!42684 (=> (not res!284152) (not e!279443))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42684 (= res!284152 (validMask!0 mask!1365))))

(assert (=> start!42684 e!279443))

(declare-fun tp_is_empty!13489 () Bool)

(assert (=> start!42684 tp_is_empty!13489))

(assert (=> start!42684 tp!42232))

(assert (=> start!42684 true))

(declare-datatypes ((array!30689 0))(
  ( (array!30690 (arr!14756 (Array (_ BitVec 32) (_ BitVec 64))) (size!15108 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30689)

(declare-fun array_inv!10634 (array!30689) Bool)

(assert (=> start!42684 (array_inv!10634 _keys!1025)))

(declare-datatypes ((V!19091 0))(
  ( (V!19092 (val!6789 Int)) )
))
(declare-datatypes ((ValueCell!6401 0))(
  ( (ValueCellFull!6401 (v!9080 V!19091)) (EmptyCell!6401) )
))
(declare-datatypes ((array!30691 0))(
  ( (array!30692 (arr!14757 (Array (_ BitVec 32) ValueCell!6401)) (size!15109 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30691)

(declare-fun e!279441 () Bool)

(declare-fun array_inv!10635 (array!30691) Bool)

(assert (=> start!42684 (and (array_inv!10635 _values!833) e!279441)))

(declare-fun b!475804 () Bool)

(declare-fun e!279444 () Bool)

(assert (=> b!475804 (= e!279443 (not e!279444))))

(declare-fun res!284151 () Bool)

(assert (=> b!475804 (=> res!284151 e!279444)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!475804 (= res!284151 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8952 0))(
  ( (tuple2!8953 (_1!4486 (_ BitVec 64)) (_2!4486 V!19091)) )
))
(declare-datatypes ((List!9061 0))(
  ( (Nil!9058) (Cons!9057 (h!9913 tuple2!8952) (t!15049 List!9061)) )
))
(declare-datatypes ((ListLongMap!7879 0))(
  ( (ListLongMap!7880 (toList!3955 List!9061)) )
))
(declare-fun lt!216872 () ListLongMap!7879)

(declare-fun lt!216871 () ListLongMap!7879)

(assert (=> b!475804 (= lt!216872 lt!216871)))

(declare-fun zeroValue!794 () V!19091)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13991 0))(
  ( (Unit!13992) )
))
(declare-fun lt!216870 () Unit!13991)

(declare-fun minValueBefore!38 () V!19091)

(declare-fun minValueAfter!38 () V!19091)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!279 (array!30689 array!30691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19091 V!19091 V!19091 V!19091 (_ BitVec 32) Int) Unit!13991)

(assert (=> b!475804 (= lt!216870 (lemmaNoChangeToArrayThenSameMapNoExtras!279 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2108 (array!30689 array!30691 (_ BitVec 32) (_ BitVec 32) V!19091 V!19091 (_ BitVec 32) Int) ListLongMap!7879)

(assert (=> b!475804 (= lt!216871 (getCurrentListMapNoExtraKeys!2108 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!475804 (= lt!216872 (getCurrentListMapNoExtraKeys!2108 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475805 () Bool)

(declare-fun res!284153 () Bool)

(assert (=> b!475805 (=> (not res!284153) (not e!279443))))

(declare-datatypes ((List!9062 0))(
  ( (Nil!9059) (Cons!9058 (h!9914 (_ BitVec 64)) (t!15050 List!9062)) )
))
(declare-fun arrayNoDuplicates!0 (array!30689 (_ BitVec 32) List!9062) Bool)

(assert (=> b!475805 (= res!284153 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9059))))

(declare-fun b!475806 () Bool)

(declare-fun res!284150 () Bool)

(assert (=> b!475806 (=> (not res!284150) (not e!279443))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30689 (_ BitVec 32)) Bool)

(assert (=> b!475806 (= res!284150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!475807 () Bool)

(declare-fun res!284154 () Bool)

(assert (=> b!475807 (=> (not res!284154) (not e!279443))))

(assert (=> b!475807 (= res!284154 (and (= (size!15109 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15108 _keys!1025) (size!15109 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475808 () Bool)

(declare-fun +!1733 (ListLongMap!7879 tuple2!8952) ListLongMap!7879)

(declare-fun getCurrentListMap!2269 (array!30689 array!30691 (_ BitVec 32) (_ BitVec 32) V!19091 V!19091 (_ BitVec 32) Int) ListLongMap!7879)

(assert (=> b!475808 (= e!279444 (= (+!1733 (getCurrentListMap!2269 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8953 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2269 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841)))))

(declare-fun b!475809 () Bool)

(declare-fun e!279439 () Bool)

(assert (=> b!475809 (= e!279439 tp_is_empty!13489)))

(declare-fun b!475810 () Bool)

(declare-fun e!279440 () Bool)

(declare-fun mapRes!21961 () Bool)

(assert (=> b!475810 (= e!279441 (and e!279440 mapRes!21961))))

(declare-fun condMapEmpty!21961 () Bool)

(declare-fun mapDefault!21961 () ValueCell!6401)

