; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42428 () Bool)

(assert start!42428)

(declare-fun b_free!11895 () Bool)

(declare-fun b_next!11895 () Bool)

(assert (=> start!42428 (= b_free!11895 (not b_next!11895))))

(declare-fun tp!41718 () Bool)

(declare-fun b_and!20369 () Bool)

(assert (=> start!42428 (= tp!41718 b_and!20369)))

(declare-fun mapNonEmpty!21697 () Bool)

(declare-fun mapRes!21697 () Bool)

(declare-fun tp!41719 () Bool)

(declare-fun e!277552 () Bool)

(assert (=> mapNonEmpty!21697 (= mapRes!21697 (and tp!41719 e!277552))))

(declare-datatypes ((V!18869 0))(
  ( (V!18870 (val!6706 Int)) )
))
(declare-datatypes ((ValueCell!6318 0))(
  ( (ValueCellFull!6318 (v!8993 V!18869)) (EmptyCell!6318) )
))
(declare-fun mapRest!21697 () (Array (_ BitVec 32) ValueCell!6318))

(declare-fun mapValue!21697 () ValueCell!6318)

(declare-datatypes ((array!30367 0))(
  ( (array!30368 (arr!14600 (Array (_ BitVec 32) ValueCell!6318)) (size!14952 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30367)

(declare-fun mapKey!21697 () (_ BitVec 32))

(assert (=> mapNonEmpty!21697 (= (arr!14600 _values!833) (store mapRest!21697 mapKey!21697 mapValue!21697))))

(declare-fun b!473117 () Bool)

(declare-fun res!282674 () Bool)

(declare-fun e!277553 () Bool)

(assert (=> b!473117 (=> (not res!282674) (not e!277553))))

(declare-datatypes ((array!30369 0))(
  ( (array!30370 (arr!14601 (Array (_ BitVec 32) (_ BitVec 64))) (size!14953 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30369)

(declare-datatypes ((List!8943 0))(
  ( (Nil!8940) (Cons!8939 (h!9795 (_ BitVec 64)) (t!14921 List!8943)) )
))
(declare-fun arrayNoDuplicates!0 (array!30369 (_ BitVec 32) List!8943) Bool)

(assert (=> b!473117 (= res!282674 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8940))))

(declare-fun mapIsEmpty!21697 () Bool)

(assert (=> mapIsEmpty!21697 mapRes!21697))

(declare-fun b!473118 () Bool)

(declare-fun e!277550 () Bool)

(assert (=> b!473118 (= e!277553 (not e!277550))))

(declare-fun res!282675 () Bool)

(assert (=> b!473118 (=> res!282675 e!277550)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473118 (= res!282675 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8830 0))(
  ( (tuple2!8831 (_1!4425 (_ BitVec 64)) (_2!4425 V!18869)) )
))
(declare-datatypes ((List!8944 0))(
  ( (Nil!8941) (Cons!8940 (h!9796 tuple2!8830) (t!14922 List!8944)) )
))
(declare-datatypes ((ListLongMap!7757 0))(
  ( (ListLongMap!7758 (toList!3894 List!8944)) )
))
(declare-fun lt!214977 () ListLongMap!7757)

(declare-fun lt!214978 () ListLongMap!7757)

(assert (=> b!473118 (= lt!214977 lt!214978)))

(declare-fun minValueBefore!38 () V!18869)

(declare-fun zeroValue!794 () V!18869)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18869)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((Unit!13909 0))(
  ( (Unit!13910) )
))
(declare-fun lt!214982 () Unit!13909)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!248 (array!30369 array!30367 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18869 V!18869 V!18869 V!18869 (_ BitVec 32) Int) Unit!13909)

(assert (=> b!473118 (= lt!214982 (lemmaNoChangeToArrayThenSameMapNoExtras!248 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2053 (array!30369 array!30367 (_ BitVec 32) (_ BitVec 32) V!18869 V!18869 (_ BitVec 32) Int) ListLongMap!7757)

(assert (=> b!473118 (= lt!214978 (getCurrentListMapNoExtraKeys!2053 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473118 (= lt!214977 (getCurrentListMapNoExtraKeys!2053 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473119 () Bool)

(assert (=> b!473119 (= e!277550 true)))

(declare-fun lt!214979 () ListLongMap!7757)

(declare-fun lt!214976 () tuple2!8830)

(declare-fun +!1701 (ListLongMap!7757 tuple2!8830) ListLongMap!7757)

(assert (=> b!473119 (= (+!1701 lt!214979 lt!214976) (+!1701 (+!1701 lt!214979 (tuple2!8831 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214976))))

(assert (=> b!473119 (= lt!214976 (tuple2!8831 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!214981 () Unit!13909)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!138 (ListLongMap!7757 (_ BitVec 64) V!18869 V!18869) Unit!13909)

(assert (=> b!473119 (= lt!214981 (addSameAsAddTwiceSameKeyDiffValues!138 lt!214979 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!473119 (= lt!214979 (+!1701 lt!214977 (tuple2!8831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214980 () ListLongMap!7757)

(declare-fun getCurrentListMap!2238 (array!30369 array!30367 (_ BitVec 32) (_ BitVec 32) V!18869 V!18869 (_ BitVec 32) Int) ListLongMap!7757)

(assert (=> b!473119 (= lt!214980 (getCurrentListMap!2238 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214975 () ListLongMap!7757)

(assert (=> b!473119 (= lt!214975 (getCurrentListMap!2238 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473120 () Bool)

(declare-fun e!277551 () Bool)

(declare-fun e!277554 () Bool)

(assert (=> b!473120 (= e!277551 (and e!277554 mapRes!21697))))

(declare-fun condMapEmpty!21697 () Bool)

(declare-fun mapDefault!21697 () ValueCell!6318)

(assert (=> b!473120 (= condMapEmpty!21697 (= (arr!14600 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6318)) mapDefault!21697)))))

(declare-fun res!282676 () Bool)

(assert (=> start!42428 (=> (not res!282676) (not e!277553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42428 (= res!282676 (validMask!0 mask!1365))))

(assert (=> start!42428 e!277553))

(declare-fun tp_is_empty!13323 () Bool)

(assert (=> start!42428 tp_is_empty!13323))

(assert (=> start!42428 tp!41718))

(assert (=> start!42428 true))

(declare-fun array_inv!10526 (array!30369) Bool)

(assert (=> start!42428 (array_inv!10526 _keys!1025)))

(declare-fun array_inv!10527 (array!30367) Bool)

(assert (=> start!42428 (and (array_inv!10527 _values!833) e!277551)))

(declare-fun b!473121 () Bool)

(declare-fun res!282672 () Bool)

(assert (=> b!473121 (=> (not res!282672) (not e!277553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30369 (_ BitVec 32)) Bool)

(assert (=> b!473121 (= res!282672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473122 () Bool)

(assert (=> b!473122 (= e!277552 tp_is_empty!13323)))

(declare-fun b!473123 () Bool)

(declare-fun res!282673 () Bool)

(assert (=> b!473123 (=> (not res!282673) (not e!277553))))

(assert (=> b!473123 (= res!282673 (and (= (size!14952 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14953 _keys!1025) (size!14952 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473124 () Bool)

(assert (=> b!473124 (= e!277554 tp_is_empty!13323)))

(assert (= (and start!42428 res!282676) b!473123))

(assert (= (and b!473123 res!282673) b!473121))

(assert (= (and b!473121 res!282672) b!473117))

(assert (= (and b!473117 res!282674) b!473118))

(assert (= (and b!473118 (not res!282675)) b!473119))

(assert (= (and b!473120 condMapEmpty!21697) mapIsEmpty!21697))

(assert (= (and b!473120 (not condMapEmpty!21697)) mapNonEmpty!21697))

(get-info :version)

(assert (= (and mapNonEmpty!21697 ((_ is ValueCellFull!6318) mapValue!21697)) b!473122))

(assert (= (and b!473120 ((_ is ValueCellFull!6318) mapDefault!21697)) b!473124))

(assert (= start!42428 b!473120))

(declare-fun m!455161 () Bool)

(assert (=> b!473119 m!455161))

(declare-fun m!455163 () Bool)

(assert (=> b!473119 m!455163))

(declare-fun m!455165 () Bool)

(assert (=> b!473119 m!455165))

(assert (=> b!473119 m!455161))

(declare-fun m!455167 () Bool)

(assert (=> b!473119 m!455167))

(declare-fun m!455169 () Bool)

(assert (=> b!473119 m!455169))

(declare-fun m!455171 () Bool)

(assert (=> b!473119 m!455171))

(declare-fun m!455173 () Bool)

(assert (=> b!473119 m!455173))

(declare-fun m!455175 () Bool)

(assert (=> b!473121 m!455175))

(declare-fun m!455177 () Bool)

(assert (=> mapNonEmpty!21697 m!455177))

(declare-fun m!455179 () Bool)

(assert (=> b!473118 m!455179))

(declare-fun m!455181 () Bool)

(assert (=> b!473118 m!455181))

(declare-fun m!455183 () Bool)

(assert (=> b!473118 m!455183))

(declare-fun m!455185 () Bool)

(assert (=> b!473117 m!455185))

(declare-fun m!455187 () Bool)

(assert (=> start!42428 m!455187))

(declare-fun m!455189 () Bool)

(assert (=> start!42428 m!455189))

(declare-fun m!455191 () Bool)

(assert (=> start!42428 m!455191))

(check-sat (not b_next!11895) (not b!473121) b_and!20369 (not b!473118) (not b!473117) (not start!42428) (not mapNonEmpty!21697) (not b!473119) tp_is_empty!13323)
(check-sat b_and!20369 (not b_next!11895))
