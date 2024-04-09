; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42400 () Bool)

(assert start!42400)

(declare-fun b_free!11867 () Bool)

(declare-fun b_next!11867 () Bool)

(assert (=> start!42400 (= b_free!11867 (not b_next!11867))))

(declare-fun tp!41635 () Bool)

(declare-fun b_and!20341 () Bool)

(assert (=> start!42400 (= tp!41635 b_and!20341)))

(declare-fun b!472781 () Bool)

(declare-fun e!277300 () Bool)

(declare-fun e!277301 () Bool)

(assert (=> b!472781 (= e!277300 (not e!277301))))

(declare-fun res!282464 () Bool)

(assert (=> b!472781 (=> res!282464 e!277301)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472781 (= res!282464 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18831 0))(
  ( (V!18832 (val!6692 Int)) )
))
(declare-datatypes ((tuple2!8804 0))(
  ( (tuple2!8805 (_1!4412 (_ BitVec 64)) (_2!4412 V!18831)) )
))
(declare-datatypes ((List!8921 0))(
  ( (Nil!8918) (Cons!8917 (h!9773 tuple2!8804) (t!14899 List!8921)) )
))
(declare-datatypes ((ListLongMap!7731 0))(
  ( (ListLongMap!7732 (toList!3881 List!8921)) )
))
(declare-fun lt!214642 () ListLongMap!7731)

(declare-fun lt!214645 () ListLongMap!7731)

(assert (=> b!472781 (= lt!214642 lt!214645)))

(declare-fun minValueBefore!38 () V!18831)

(declare-fun zeroValue!794 () V!18831)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13883 0))(
  ( (Unit!13884) )
))
(declare-fun lt!214643 () Unit!13883)

(declare-datatypes ((array!30313 0))(
  ( (array!30314 (arr!14573 (Array (_ BitVec 32) (_ BitVec 64))) (size!14925 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30313)

(declare-datatypes ((ValueCell!6304 0))(
  ( (ValueCellFull!6304 (v!8979 V!18831)) (EmptyCell!6304) )
))
(declare-datatypes ((array!30315 0))(
  ( (array!30316 (arr!14574 (Array (_ BitVec 32) ValueCell!6304)) (size!14926 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30315)

(declare-fun minValueAfter!38 () V!18831)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!235 (array!30313 array!30315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18831 V!18831 V!18831 V!18831 (_ BitVec 32) Int) Unit!13883)

(assert (=> b!472781 (= lt!214643 (lemmaNoChangeToArrayThenSameMapNoExtras!235 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2040 (array!30313 array!30315 (_ BitVec 32) (_ BitVec 32) V!18831 V!18831 (_ BitVec 32) Int) ListLongMap!7731)

(assert (=> b!472781 (= lt!214645 (getCurrentListMapNoExtraKeys!2040 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472781 (= lt!214642 (getCurrentListMapNoExtraKeys!2040 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21655 () Bool)

(declare-fun mapRes!21655 () Bool)

(assert (=> mapIsEmpty!21655 mapRes!21655))

(declare-fun b!472783 () Bool)

(assert (=> b!472783 (= e!277301 true)))

(declare-fun lt!214639 () ListLongMap!7731)

(declare-fun lt!214646 () tuple2!8804)

(declare-fun +!1691 (ListLongMap!7731 tuple2!8804) ListLongMap!7731)

(assert (=> b!472783 (= (+!1691 lt!214639 lt!214646) (+!1691 (+!1691 lt!214639 (tuple2!8805 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214646))))

(assert (=> b!472783 (= lt!214646 (tuple2!8805 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!214641 () Unit!13883)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!128 (ListLongMap!7731 (_ BitVec 64) V!18831 V!18831) Unit!13883)

(assert (=> b!472783 (= lt!214641 (addSameAsAddTwiceSameKeyDiffValues!128 lt!214639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!472783 (= lt!214639 (+!1691 lt!214642 (tuple2!8805 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214644 () ListLongMap!7731)

(declare-fun getCurrentListMap!2228 (array!30313 array!30315 (_ BitVec 32) (_ BitVec 32) V!18831 V!18831 (_ BitVec 32) Int) ListLongMap!7731)

(assert (=> b!472783 (= lt!214644 (getCurrentListMap!2228 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214640 () ListLongMap!7731)

(assert (=> b!472783 (= lt!214640 (getCurrentListMap!2228 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472784 () Bool)

(declare-fun e!277299 () Bool)

(declare-fun tp_is_empty!13295 () Bool)

(assert (=> b!472784 (= e!277299 tp_is_empty!13295)))

(declare-fun b!472785 () Bool)

(declare-fun res!282463 () Bool)

(assert (=> b!472785 (=> (not res!282463) (not e!277300))))

(assert (=> b!472785 (= res!282463 (and (= (size!14926 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14925 _keys!1025) (size!14926 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472786 () Bool)

(declare-fun e!277302 () Bool)

(assert (=> b!472786 (= e!277302 tp_is_empty!13295)))

(declare-fun mapNonEmpty!21655 () Bool)

(declare-fun tp!41634 () Bool)

(assert (=> mapNonEmpty!21655 (= mapRes!21655 (and tp!41634 e!277299))))

(declare-fun mapRest!21655 () (Array (_ BitVec 32) ValueCell!6304))

(declare-fun mapKey!21655 () (_ BitVec 32))

(declare-fun mapValue!21655 () ValueCell!6304)

(assert (=> mapNonEmpty!21655 (= (arr!14574 _values!833) (store mapRest!21655 mapKey!21655 mapValue!21655))))

(declare-fun res!282465 () Bool)

(assert (=> start!42400 (=> (not res!282465) (not e!277300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42400 (= res!282465 (validMask!0 mask!1365))))

(assert (=> start!42400 e!277300))

(assert (=> start!42400 tp_is_empty!13295))

(assert (=> start!42400 tp!41635))

(assert (=> start!42400 true))

(declare-fun array_inv!10510 (array!30313) Bool)

(assert (=> start!42400 (array_inv!10510 _keys!1025)))

(declare-fun e!277298 () Bool)

(declare-fun array_inv!10511 (array!30315) Bool)

(assert (=> start!42400 (and (array_inv!10511 _values!833) e!277298)))

(declare-fun b!472782 () Bool)

(assert (=> b!472782 (= e!277298 (and e!277302 mapRes!21655))))

(declare-fun condMapEmpty!21655 () Bool)

(declare-fun mapDefault!21655 () ValueCell!6304)

