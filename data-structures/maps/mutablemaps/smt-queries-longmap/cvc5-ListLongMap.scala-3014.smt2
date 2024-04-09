; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42426 () Bool)

(assert start!42426)

(declare-fun b_free!11893 () Bool)

(declare-fun b_next!11893 () Bool)

(assert (=> start!42426 (= b_free!11893 (not b_next!11893))))

(declare-fun tp!41713 () Bool)

(declare-fun b_and!20367 () Bool)

(assert (=> start!42426 (= tp!41713 b_and!20367)))

(declare-fun res!282657 () Bool)

(declare-fun e!277533 () Bool)

(assert (=> start!42426 (=> (not res!282657) (not e!277533))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42426 (= res!282657 (validMask!0 mask!1365))))

(assert (=> start!42426 e!277533))

(declare-fun tp_is_empty!13321 () Bool)

(assert (=> start!42426 tp_is_empty!13321))

(assert (=> start!42426 tp!41713))

(assert (=> start!42426 true))

(declare-datatypes ((array!30363 0))(
  ( (array!30364 (arr!14598 (Array (_ BitVec 32) (_ BitVec 64))) (size!14950 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30363)

(declare-fun array_inv!10524 (array!30363) Bool)

(assert (=> start!42426 (array_inv!10524 _keys!1025)))

(declare-datatypes ((V!18867 0))(
  ( (V!18868 (val!6705 Int)) )
))
(declare-datatypes ((ValueCell!6317 0))(
  ( (ValueCellFull!6317 (v!8992 V!18867)) (EmptyCell!6317) )
))
(declare-datatypes ((array!30365 0))(
  ( (array!30366 (arr!14599 (Array (_ BitVec 32) ValueCell!6317)) (size!14951 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30365)

(declare-fun e!277531 () Bool)

(declare-fun array_inv!10525 (array!30365) Bool)

(assert (=> start!42426 (and (array_inv!10525 _values!833) e!277531)))

(declare-fun b!473093 () Bool)

(declare-fun res!282659 () Bool)

(assert (=> b!473093 (=> (not res!282659) (not e!277533))))

(declare-datatypes ((List!8941 0))(
  ( (Nil!8938) (Cons!8937 (h!9793 (_ BitVec 64)) (t!14919 List!8941)) )
))
(declare-fun arrayNoDuplicates!0 (array!30363 (_ BitVec 32) List!8941) Bool)

(assert (=> b!473093 (= res!282659 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8938))))

(declare-fun b!473094 () Bool)

(declare-fun res!282660 () Bool)

(assert (=> b!473094 (=> (not res!282660) (not e!277533))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!473094 (= res!282660 (and (= (size!14951 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14950 _keys!1025) (size!14951 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473095 () Bool)

(declare-fun e!277535 () Bool)

(assert (=> b!473095 (= e!277535 true)))

(declare-datatypes ((tuple2!8828 0))(
  ( (tuple2!8829 (_1!4424 (_ BitVec 64)) (_2!4424 V!18867)) )
))
(declare-datatypes ((List!8942 0))(
  ( (Nil!8939) (Cons!8938 (h!9794 tuple2!8828) (t!14920 List!8942)) )
))
(declare-datatypes ((ListLongMap!7755 0))(
  ( (ListLongMap!7756 (toList!3893 List!8942)) )
))
(declare-fun lt!214955 () ListLongMap!7755)

(declare-fun lt!214954 () tuple2!8828)

(declare-fun minValueBefore!38 () V!18867)

(declare-fun +!1700 (ListLongMap!7755 tuple2!8828) ListLongMap!7755)

(assert (=> b!473095 (= (+!1700 lt!214955 lt!214954) (+!1700 (+!1700 lt!214955 (tuple2!8829 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214954))))

(declare-fun minValueAfter!38 () V!18867)

(assert (=> b!473095 (= lt!214954 (tuple2!8829 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13907 0))(
  ( (Unit!13908) )
))
(declare-fun lt!214957 () Unit!13907)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!137 (ListLongMap!7755 (_ BitVec 64) V!18867 V!18867) Unit!13907)

(assert (=> b!473095 (= lt!214957 (addSameAsAddTwiceSameKeyDiffValues!137 lt!214955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!214952 () ListLongMap!7755)

(declare-fun zeroValue!794 () V!18867)

(assert (=> b!473095 (= lt!214955 (+!1700 lt!214952 (tuple2!8829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!214956 () ListLongMap!7755)

(declare-fun getCurrentListMap!2237 (array!30363 array!30365 (_ BitVec 32) (_ BitVec 32) V!18867 V!18867 (_ BitVec 32) Int) ListLongMap!7755)

(assert (=> b!473095 (= lt!214956 (getCurrentListMap!2237 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214953 () ListLongMap!7755)

(assert (=> b!473095 (= lt!214953 (getCurrentListMap!2237 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473096 () Bool)

(assert (=> b!473096 (= e!277533 (not e!277535))))

(declare-fun res!282658 () Bool)

(assert (=> b!473096 (=> res!282658 e!277535)))

(assert (=> b!473096 (= res!282658 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214958 () ListLongMap!7755)

(assert (=> b!473096 (= lt!214952 lt!214958)))

(declare-fun lt!214951 () Unit!13907)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!247 (array!30363 array!30365 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18867 V!18867 V!18867 V!18867 (_ BitVec 32) Int) Unit!13907)

(assert (=> b!473096 (= lt!214951 (lemmaNoChangeToArrayThenSameMapNoExtras!247 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2052 (array!30363 array!30365 (_ BitVec 32) (_ BitVec 32) V!18867 V!18867 (_ BitVec 32) Int) ListLongMap!7755)

(assert (=> b!473096 (= lt!214958 (getCurrentListMapNoExtraKeys!2052 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473096 (= lt!214952 (getCurrentListMapNoExtraKeys!2052 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21694 () Bool)

(declare-fun mapRes!21694 () Bool)

(declare-fun tp!41712 () Bool)

(declare-fun e!277532 () Bool)

(assert (=> mapNonEmpty!21694 (= mapRes!21694 (and tp!41712 e!277532))))

(declare-fun mapKey!21694 () (_ BitVec 32))

(declare-fun mapRest!21694 () (Array (_ BitVec 32) ValueCell!6317))

(declare-fun mapValue!21694 () ValueCell!6317)

(assert (=> mapNonEmpty!21694 (= (arr!14599 _values!833) (store mapRest!21694 mapKey!21694 mapValue!21694))))

(declare-fun b!473097 () Bool)

(assert (=> b!473097 (= e!277532 tp_is_empty!13321)))

(declare-fun b!473098 () Bool)

(declare-fun e!277536 () Bool)

(assert (=> b!473098 (= e!277531 (and e!277536 mapRes!21694))))

(declare-fun condMapEmpty!21694 () Bool)

(declare-fun mapDefault!21694 () ValueCell!6317)

