; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42440 () Bool)

(assert start!42440)

(declare-fun b_free!11907 () Bool)

(declare-fun b_next!11907 () Bool)

(assert (=> start!42440 (= b_free!11907 (not b_next!11907))))

(declare-fun tp!41754 () Bool)

(declare-fun b_and!20381 () Bool)

(assert (=> start!42440 (= tp!41754 b_and!20381)))

(declare-fun b!473261 () Bool)

(declare-fun res!282763 () Bool)

(declare-fun e!277659 () Bool)

(assert (=> b!473261 (=> (not res!282763) (not e!277659))))

(declare-datatypes ((array!30391 0))(
  ( (array!30392 (arr!14612 (Array (_ BitVec 32) (_ BitVec 64))) (size!14964 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30391)

(declare-datatypes ((List!8952 0))(
  ( (Nil!8949) (Cons!8948 (h!9804 (_ BitVec 64)) (t!14930 List!8952)) )
))
(declare-fun arrayNoDuplicates!0 (array!30391 (_ BitVec 32) List!8952) Bool)

(assert (=> b!473261 (= res!282763 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8949))))

(declare-fun b!473262 () Bool)

(declare-fun res!282765 () Bool)

(assert (=> b!473262 (=> (not res!282765) (not e!277659))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30391 (_ BitVec 32)) Bool)

(assert (=> b!473262 (= res!282765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!282764 () Bool)

(assert (=> start!42440 (=> (not res!282764) (not e!277659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42440 (= res!282764 (validMask!0 mask!1365))))

(assert (=> start!42440 e!277659))

(declare-fun tp_is_empty!13335 () Bool)

(assert (=> start!42440 tp_is_empty!13335))

(assert (=> start!42440 tp!41754))

(assert (=> start!42440 true))

(declare-fun array_inv!10534 (array!30391) Bool)

(assert (=> start!42440 (array_inv!10534 _keys!1025)))

(declare-datatypes ((V!18885 0))(
  ( (V!18886 (val!6712 Int)) )
))
(declare-datatypes ((ValueCell!6324 0))(
  ( (ValueCellFull!6324 (v!8999 V!18885)) (EmptyCell!6324) )
))
(declare-datatypes ((array!30393 0))(
  ( (array!30394 (arr!14613 (Array (_ BitVec 32) ValueCell!6324)) (size!14965 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30393)

(declare-fun e!277658 () Bool)

(declare-fun array_inv!10535 (array!30393) Bool)

(assert (=> start!42440 (and (array_inv!10535 _values!833) e!277658)))

(declare-fun b!473263 () Bool)

(declare-fun e!277660 () Bool)

(assert (=> b!473263 (= e!277660 tp_is_empty!13335)))

(declare-fun mapNonEmpty!21715 () Bool)

(declare-fun mapRes!21715 () Bool)

(declare-fun tp!41755 () Bool)

(declare-fun e!277661 () Bool)

(assert (=> mapNonEmpty!21715 (= mapRes!21715 (and tp!41755 e!277661))))

(declare-fun mapValue!21715 () ValueCell!6324)

(declare-fun mapRest!21715 () (Array (_ BitVec 32) ValueCell!6324))

(declare-fun mapKey!21715 () (_ BitVec 32))

(assert (=> mapNonEmpty!21715 (= (arr!14613 _values!833) (store mapRest!21715 mapKey!21715 mapValue!21715))))

(declare-fun b!473264 () Bool)

(declare-fun res!282762 () Bool)

(assert (=> b!473264 (=> (not res!282762) (not e!277659))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!473264 (= res!282762 (and (= (size!14965 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14964 _keys!1025) (size!14965 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473265 () Bool)

(declare-fun e!277657 () Bool)

(assert (=> b!473265 (= e!277659 (not e!277657))))

(declare-fun res!282766 () Bool)

(assert (=> b!473265 (=> res!282766 e!277657)))

(assert (=> b!473265 (= res!282766 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8840 0))(
  ( (tuple2!8841 (_1!4430 (_ BitVec 64)) (_2!4430 V!18885)) )
))
(declare-datatypes ((List!8953 0))(
  ( (Nil!8950) (Cons!8949 (h!9805 tuple2!8840) (t!14931 List!8953)) )
))
(declare-datatypes ((ListLongMap!7767 0))(
  ( (ListLongMap!7768 (toList!3899 List!8953)) )
))
(declare-fun lt!215123 () ListLongMap!7767)

(declare-fun lt!215126 () ListLongMap!7767)

(assert (=> b!473265 (= lt!215123 lt!215126)))

(declare-fun minValueBefore!38 () V!18885)

(declare-fun zeroValue!794 () V!18885)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13919 0))(
  ( (Unit!13920) )
))
(declare-fun lt!215120 () Unit!13919)

(declare-fun minValueAfter!38 () V!18885)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!251 (array!30391 array!30393 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18885 V!18885 V!18885 V!18885 (_ BitVec 32) Int) Unit!13919)

(assert (=> b!473265 (= lt!215120 (lemmaNoChangeToArrayThenSameMapNoExtras!251 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2056 (array!30391 array!30393 (_ BitVec 32) (_ BitVec 32) V!18885 V!18885 (_ BitVec 32) Int) ListLongMap!7767)

(assert (=> b!473265 (= lt!215126 (getCurrentListMapNoExtraKeys!2056 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473265 (= lt!215123 (getCurrentListMapNoExtraKeys!2056 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473266 () Bool)

(assert (=> b!473266 (= e!277661 tp_is_empty!13335)))

(declare-fun b!473267 () Bool)

(assert (=> b!473267 (= e!277658 (and e!277660 mapRes!21715))))

(declare-fun condMapEmpty!21715 () Bool)

(declare-fun mapDefault!21715 () ValueCell!6324)

(assert (=> b!473267 (= condMapEmpty!21715 (= (arr!14613 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6324)) mapDefault!21715)))))

(declare-fun b!473268 () Bool)

(assert (=> b!473268 (= e!277657 true)))

(declare-fun lt!215125 () ListLongMap!7767)

(declare-fun lt!215119 () tuple2!8840)

(declare-fun +!1706 (ListLongMap!7767 tuple2!8840) ListLongMap!7767)

(assert (=> b!473268 (= (+!1706 lt!215125 lt!215119) (+!1706 (+!1706 lt!215125 (tuple2!8841 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215119))))

(assert (=> b!473268 (= lt!215119 (tuple2!8841 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!215121 () Unit!13919)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!143 (ListLongMap!7767 (_ BitVec 64) V!18885 V!18885) Unit!13919)

(assert (=> b!473268 (= lt!215121 (addSameAsAddTwiceSameKeyDiffValues!143 lt!215125 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!473268 (= lt!215125 (+!1706 lt!215123 (tuple2!8841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215124 () ListLongMap!7767)

(declare-fun getCurrentListMap!2243 (array!30391 array!30393 (_ BitVec 32) (_ BitVec 32) V!18885 V!18885 (_ BitVec 32) Int) ListLongMap!7767)

(assert (=> b!473268 (= lt!215124 (getCurrentListMap!2243 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215122 () ListLongMap!7767)

(assert (=> b!473268 (= lt!215122 (getCurrentListMap!2243 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21715 () Bool)

(assert (=> mapIsEmpty!21715 mapRes!21715))

(assert (= (and start!42440 res!282764) b!473264))

(assert (= (and b!473264 res!282762) b!473262))

(assert (= (and b!473262 res!282765) b!473261))

(assert (= (and b!473261 res!282763) b!473265))

(assert (= (and b!473265 (not res!282766)) b!473268))

(assert (= (and b!473267 condMapEmpty!21715) mapIsEmpty!21715))

(assert (= (and b!473267 (not condMapEmpty!21715)) mapNonEmpty!21715))

(get-info :version)

(assert (= (and mapNonEmpty!21715 ((_ is ValueCellFull!6324) mapValue!21715)) b!473266))

(assert (= (and b!473267 ((_ is ValueCellFull!6324) mapDefault!21715)) b!473263))

(assert (= start!42440 b!473267))

(declare-fun m!455353 () Bool)

(assert (=> b!473262 m!455353))

(declare-fun m!455355 () Bool)

(assert (=> b!473268 m!455355))

(declare-fun m!455357 () Bool)

(assert (=> b!473268 m!455357))

(declare-fun m!455359 () Bool)

(assert (=> b!473268 m!455359))

(declare-fun m!455361 () Bool)

(assert (=> b!473268 m!455361))

(declare-fun m!455363 () Bool)

(assert (=> b!473268 m!455363))

(declare-fun m!455365 () Bool)

(assert (=> b!473268 m!455365))

(assert (=> b!473268 m!455357))

(declare-fun m!455367 () Bool)

(assert (=> b!473268 m!455367))

(declare-fun m!455369 () Bool)

(assert (=> b!473261 m!455369))

(declare-fun m!455371 () Bool)

(assert (=> start!42440 m!455371))

(declare-fun m!455373 () Bool)

(assert (=> start!42440 m!455373))

(declare-fun m!455375 () Bool)

(assert (=> start!42440 m!455375))

(declare-fun m!455377 () Bool)

(assert (=> mapNonEmpty!21715 m!455377))

(declare-fun m!455379 () Bool)

(assert (=> b!473265 m!455379))

(declare-fun m!455381 () Bool)

(assert (=> b!473265 m!455381))

(declare-fun m!455383 () Bool)

(assert (=> b!473265 m!455383))

(check-sat (not mapNonEmpty!21715) (not b!473268) (not start!42440) (not b!473265) tp_is_empty!13335 (not b!473262) b_and!20381 (not b!473261) (not b_next!11907))
(check-sat b_and!20381 (not b_next!11907))
