; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41624 () Bool)

(assert start!41624)

(declare-fun b_free!11269 () Bool)

(declare-fun b_next!11269 () Bool)

(assert (=> start!41624 (= b_free!11269 (not b_next!11269))))

(declare-fun tp!39807 () Bool)

(declare-fun b_and!19635 () Bool)

(assert (=> start!41624 (= tp!39807 b_and!19635)))

(declare-fun b!464561 () Bool)

(declare-fun e!271415 () Bool)

(declare-fun tp_is_empty!12697 () Bool)

(assert (=> b!464561 (= e!271415 tp_is_empty!12697)))

(declare-fun mapIsEmpty!20725 () Bool)

(declare-fun mapRes!20725 () Bool)

(assert (=> mapIsEmpty!20725 mapRes!20725))

(declare-fun b!464563 () Bool)

(declare-fun res!277792 () Bool)

(declare-fun e!271412 () Bool)

(assert (=> b!464563 (=> (not res!277792) (not e!271412))))

(declare-datatypes ((array!29143 0))(
  ( (array!29144 (arr!13999 (Array (_ BitVec 32) (_ BitVec 64))) (size!14351 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29143)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29143 (_ BitVec 32)) Bool)

(assert (=> b!464563 (= res!277792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464564 () Bool)

(declare-fun res!277791 () Bool)

(assert (=> b!464564 (=> (not res!277791) (not e!271412))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18035 0))(
  ( (V!18036 (val!6393 Int)) )
))
(declare-datatypes ((ValueCell!6005 0))(
  ( (ValueCellFull!6005 (v!8676 V!18035)) (EmptyCell!6005) )
))
(declare-datatypes ((array!29145 0))(
  ( (array!29146 (arr!14000 (Array (_ BitVec 32) ValueCell!6005)) (size!14352 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29145)

(assert (=> b!464564 (= res!277791 (and (= (size!14352 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14351 _keys!1025) (size!14352 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464565 () Bool)

(assert (=> b!464565 (= e!271412 (not true))))

(declare-datatypes ((tuple2!8352 0))(
  ( (tuple2!8353 (_1!4186 (_ BitVec 64)) (_2!4186 V!18035)) )
))
(declare-datatypes ((List!8480 0))(
  ( (Nil!8477) (Cons!8476 (h!9332 tuple2!8352) (t!14436 List!8480)) )
))
(declare-datatypes ((ListLongMap!7279 0))(
  ( (ListLongMap!7280 (toList!3655 List!8480)) )
))
(declare-fun lt!209817 () ListLongMap!7279)

(declare-fun lt!209816 () ListLongMap!7279)

(assert (=> b!464565 (= lt!209817 lt!209816)))

(declare-fun minValueBefore!38 () V!18035)

(declare-fun zeroValue!794 () V!18035)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18035)

(declare-datatypes ((Unit!13431 0))(
  ( (Unit!13432) )
))
(declare-fun lt!209818 () Unit!13431)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!18 (array!29143 array!29145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18035 V!18035 V!18035 V!18035 (_ BitVec 32) Int) Unit!13431)

(assert (=> b!464565 (= lt!209818 (lemmaNoChangeToArrayThenSameMapNoExtras!18 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1823 (array!29143 array!29145 (_ BitVec 32) (_ BitVec 32) V!18035 V!18035 (_ BitVec 32) Int) ListLongMap!7279)

(assert (=> b!464565 (= lt!209816 (getCurrentListMapNoExtraKeys!1823 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464565 (= lt!209817 (getCurrentListMapNoExtraKeys!1823 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464566 () Bool)

(declare-fun res!277794 () Bool)

(assert (=> b!464566 (=> (not res!277794) (not e!271412))))

(declare-datatypes ((List!8481 0))(
  ( (Nil!8478) (Cons!8477 (h!9333 (_ BitVec 64)) (t!14437 List!8481)) )
))
(declare-fun arrayNoDuplicates!0 (array!29143 (_ BitVec 32) List!8481) Bool)

(assert (=> b!464566 (= res!277794 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8478))))

(declare-fun b!464567 () Bool)

(declare-fun e!271414 () Bool)

(assert (=> b!464567 (= e!271414 (and e!271415 mapRes!20725))))

(declare-fun condMapEmpty!20725 () Bool)

(declare-fun mapDefault!20725 () ValueCell!6005)

