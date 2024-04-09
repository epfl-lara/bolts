; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42512 () Bool)

(assert start!42512)

(declare-fun b_free!11959 () Bool)

(declare-fun b_next!11959 () Bool)

(assert (=> start!42512 (= b_free!11959 (not b_next!11959))))

(declare-fun tp!41913 () Bool)

(declare-fun b_and!20445 () Bool)

(assert (=> start!42512 (= tp!41913 b_and!20445)))

(declare-fun res!283231 () Bool)

(declare-fun e!278242 () Bool)

(assert (=> start!42512 (=> (not res!283231) (not e!278242))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42512 (= res!283231 (validMask!0 mask!1365))))

(assert (=> start!42512 e!278242))

(declare-fun tp_is_empty!13387 () Bool)

(assert (=> start!42512 tp_is_empty!13387))

(assert (=> start!42512 tp!41913))

(assert (=> start!42512 true))

(declare-datatypes ((array!30491 0))(
  ( (array!30492 (arr!14661 (Array (_ BitVec 32) (_ BitVec 64))) (size!15013 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30491)

(declare-fun array_inv!10568 (array!30491) Bool)

(assert (=> start!42512 (array_inv!10568 _keys!1025)))

(declare-datatypes ((V!18955 0))(
  ( (V!18956 (val!6738 Int)) )
))
(declare-datatypes ((ValueCell!6350 0))(
  ( (ValueCellFull!6350 (v!9026 V!18955)) (EmptyCell!6350) )
))
(declare-datatypes ((array!30493 0))(
  ( (array!30494 (arr!14662 (Array (_ BitVec 32) ValueCell!6350)) (size!15014 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30493)

(declare-fun e!278239 () Bool)

(declare-fun array_inv!10569 (array!30493) Bool)

(assert (=> start!42512 (and (array_inv!10569 _values!833) e!278239)))

(declare-fun b!474066 () Bool)

(declare-fun e!278240 () Bool)

(assert (=> b!474066 (= e!278240 tp_is_empty!13387)))

(declare-fun b!474067 () Bool)

(declare-fun e!278241 () Bool)

(assert (=> b!474067 (= e!278241 true)))

(declare-datatypes ((tuple2!8878 0))(
  ( (tuple2!8879 (_1!4449 (_ BitVec 64)) (_2!4449 V!18955)) )
))
(declare-datatypes ((List!8988 0))(
  ( (Nil!8985) (Cons!8984 (h!9840 tuple2!8878) (t!14968 List!8988)) )
))
(declare-datatypes ((ListLongMap!7805 0))(
  ( (ListLongMap!7806 (toList!3918 List!8988)) )
))
(declare-fun lt!215901 () ListLongMap!7805)

(declare-fun lt!215905 () tuple2!8878)

(declare-fun minValueBefore!38 () V!18955)

(declare-fun +!1723 (ListLongMap!7805 tuple2!8878) ListLongMap!7805)

(assert (=> b!474067 (= (+!1723 lt!215901 lt!215905) (+!1723 (+!1723 lt!215901 (tuple2!8879 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215905))))

(declare-fun minValueAfter!38 () V!18955)

(assert (=> b!474067 (= lt!215905 (tuple2!8879 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13959 0))(
  ( (Unit!13960) )
))
(declare-fun lt!215902 () Unit!13959)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!160 (ListLongMap!7805 (_ BitVec 64) V!18955 V!18955) Unit!13959)

(assert (=> b!474067 (= lt!215902 (addSameAsAddTwiceSameKeyDiffValues!160 lt!215901 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215900 () ListLongMap!7805)

(declare-fun zeroValue!794 () V!18955)

(assert (=> b!474067 (= lt!215901 (+!1723 lt!215900 (tuple2!8879 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215904 () ListLongMap!7805)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun getCurrentListMap!2260 (array!30491 array!30493 (_ BitVec 32) (_ BitVec 32) V!18955 V!18955 (_ BitVec 32) Int) ListLongMap!7805)

(assert (=> b!474067 (= lt!215904 (getCurrentListMap!2260 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215898 () ListLongMap!7805)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474067 (= lt!215898 (getCurrentListMap!2260 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474068 () Bool)

(assert (=> b!474068 (= e!278242 (not e!278241))))

(declare-fun res!283233 () Bool)

(assert (=> b!474068 (=> res!283233 e!278241)))

(assert (=> b!474068 (= res!283233 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215899 () ListLongMap!7805)

(assert (=> b!474068 (= lt!215900 lt!215899)))

(declare-fun lt!215903 () Unit!13959)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!268 (array!30491 array!30493 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18955 V!18955 V!18955 V!18955 (_ BitVec 32) Int) Unit!13959)

(assert (=> b!474068 (= lt!215903 (lemmaNoChangeToArrayThenSameMapNoExtras!268 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2073 (array!30491 array!30493 (_ BitVec 32) (_ BitVec 32) V!18955 V!18955 (_ BitVec 32) Int) ListLongMap!7805)

(assert (=> b!474068 (= lt!215899 (getCurrentListMapNoExtraKeys!2073 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!474068 (= lt!215900 (getCurrentListMapNoExtraKeys!2073 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21796 () Bool)

(declare-fun mapRes!21796 () Bool)

(assert (=> mapIsEmpty!21796 mapRes!21796))

(declare-fun b!474069 () Bool)

(declare-fun res!283235 () Bool)

(assert (=> b!474069 (=> (not res!283235) (not e!278242))))

(declare-datatypes ((List!8989 0))(
  ( (Nil!8986) (Cons!8985 (h!9841 (_ BitVec 64)) (t!14969 List!8989)) )
))
(declare-fun arrayNoDuplicates!0 (array!30491 (_ BitVec 32) List!8989) Bool)

(assert (=> b!474069 (= res!283235 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8986))))

(declare-fun b!474070 () Bool)

(declare-fun e!278238 () Bool)

(assert (=> b!474070 (= e!278238 tp_is_empty!13387)))

(declare-fun mapNonEmpty!21796 () Bool)

(declare-fun tp!41914 () Bool)

(assert (=> mapNonEmpty!21796 (= mapRes!21796 (and tp!41914 e!278238))))

(declare-fun mapRest!21796 () (Array (_ BitVec 32) ValueCell!6350))

(declare-fun mapValue!21796 () ValueCell!6350)

(declare-fun mapKey!21796 () (_ BitVec 32))

(assert (=> mapNonEmpty!21796 (= (arr!14662 _values!833) (store mapRest!21796 mapKey!21796 mapValue!21796))))

(declare-fun b!474071 () Bool)

(declare-fun res!283232 () Bool)

(assert (=> b!474071 (=> (not res!283232) (not e!278242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30491 (_ BitVec 32)) Bool)

(assert (=> b!474071 (= res!283232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474072 () Bool)

(declare-fun res!283234 () Bool)

(assert (=> b!474072 (=> (not res!283234) (not e!278242))))

(assert (=> b!474072 (= res!283234 (and (= (size!15014 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15013 _keys!1025) (size!15014 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474073 () Bool)

(assert (=> b!474073 (= e!278239 (and e!278240 mapRes!21796))))

(declare-fun condMapEmpty!21796 () Bool)

(declare-fun mapDefault!21796 () ValueCell!6350)

