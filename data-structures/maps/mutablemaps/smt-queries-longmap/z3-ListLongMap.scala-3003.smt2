; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42346 () Bool)

(assert start!42346)

(declare-fun b_free!11829 () Bool)

(declare-fun b_next!11829 () Bool)

(assert (=> start!42346 (= b_free!11829 (not b_next!11829))))

(declare-fun tp!41517 () Bool)

(declare-fun b_and!20293 () Bool)

(assert (=> start!42346 (= tp!41517 b_and!20293)))

(declare-fun b!472177 () Bool)

(declare-fun res!282120 () Bool)

(declare-fun e!276865 () Bool)

(assert (=> b!472177 (=> (not res!282120) (not e!276865))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30237 0))(
  ( (array!30238 (arr!14536 (Array (_ BitVec 32) (_ BitVec 64))) (size!14888 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30237)

(declare-datatypes ((V!18781 0))(
  ( (V!18782 (val!6673 Int)) )
))
(declare-datatypes ((ValueCell!6285 0))(
  ( (ValueCellFull!6285 (v!8960 V!18781)) (EmptyCell!6285) )
))
(declare-datatypes ((array!30239 0))(
  ( (array!30240 (arr!14537 (Array (_ BitVec 32) ValueCell!6285)) (size!14889 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30239)

(assert (=> b!472177 (= res!282120 (and (= (size!14889 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14888 _keys!1025) (size!14889 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21595 () Bool)

(declare-fun mapRes!21595 () Bool)

(assert (=> mapIsEmpty!21595 mapRes!21595))

(declare-fun b!472178 () Bool)

(declare-fun e!276863 () Bool)

(declare-fun tp_is_empty!13257 () Bool)

(assert (=> b!472178 (= e!276863 tp_is_empty!13257)))

(declare-fun b!472179 () Bool)

(declare-fun res!282119 () Bool)

(assert (=> b!472179 (=> (not res!282119) (not e!276865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30237 (_ BitVec 32)) Bool)

(assert (=> b!472179 (= res!282119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!282121 () Bool)

(assert (=> start!42346 (=> (not res!282121) (not e!276865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42346 (= res!282121 (validMask!0 mask!1365))))

(assert (=> start!42346 e!276865))

(assert (=> start!42346 tp_is_empty!13257))

(assert (=> start!42346 tp!41517))

(assert (=> start!42346 true))

(declare-fun array_inv!10484 (array!30237) Bool)

(assert (=> start!42346 (array_inv!10484 _keys!1025)))

(declare-fun e!276866 () Bool)

(declare-fun array_inv!10485 (array!30239) Bool)

(assert (=> start!42346 (and (array_inv!10485 _values!833) e!276866)))

(declare-fun b!472180 () Bool)

(assert (=> b!472180 (= e!276866 (and e!276863 mapRes!21595))))

(declare-fun condMapEmpty!21595 () Bool)

(declare-fun mapDefault!21595 () ValueCell!6285)

(assert (=> b!472180 (= condMapEmpty!21595 (= (arr!14537 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6285)) mapDefault!21595)))))

(declare-fun b!472181 () Bool)

(declare-fun e!276862 () Bool)

(assert (=> b!472181 (= e!276865 (not e!276862))))

(declare-fun res!282122 () Bool)

(assert (=> b!472181 (=> res!282122 e!276862)))

(assert (=> b!472181 (= res!282122 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8774 0))(
  ( (tuple2!8775 (_1!4397 (_ BitVec 64)) (_2!4397 V!18781)) )
))
(declare-datatypes ((List!8890 0))(
  ( (Nil!8887) (Cons!8886 (h!9742 tuple2!8774) (t!14866 List!8890)) )
))
(declare-datatypes ((ListLongMap!7701 0))(
  ( (ListLongMap!7702 (toList!3866 List!8890)) )
))
(declare-fun lt!214276 () ListLongMap!7701)

(declare-fun lt!214275 () ListLongMap!7701)

(assert (=> b!472181 (= lt!214276 lt!214275)))

(declare-fun minValueBefore!38 () V!18781)

(declare-fun zeroValue!794 () V!18781)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13856 0))(
  ( (Unit!13857) )
))
(declare-fun lt!214274 () Unit!13856)

(declare-fun minValueAfter!38 () V!18781)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!222 (array!30237 array!30239 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18781 V!18781 V!18781 V!18781 (_ BitVec 32) Int) Unit!13856)

(assert (=> b!472181 (= lt!214274 (lemmaNoChangeToArrayThenSameMapNoExtras!222 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2027 (array!30237 array!30239 (_ BitVec 32) (_ BitVec 32) V!18781 V!18781 (_ BitVec 32) Int) ListLongMap!7701)

(assert (=> b!472181 (= lt!214275 (getCurrentListMapNoExtraKeys!2027 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472181 (= lt!214276 (getCurrentListMapNoExtraKeys!2027 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472182 () Bool)

(assert (=> b!472182 (= e!276862 true)))

(declare-fun lt!214273 () ListLongMap!7701)

(declare-fun getCurrentListMap!2214 (array!30237 array!30239 (_ BitVec 32) (_ BitVec 32) V!18781 V!18781 (_ BitVec 32) Int) ListLongMap!7701)

(assert (=> b!472182 (= lt!214273 (getCurrentListMap!2214 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21595 () Bool)

(declare-fun tp!41518 () Bool)

(declare-fun e!276864 () Bool)

(assert (=> mapNonEmpty!21595 (= mapRes!21595 (and tp!41518 e!276864))))

(declare-fun mapValue!21595 () ValueCell!6285)

(declare-fun mapKey!21595 () (_ BitVec 32))

(declare-fun mapRest!21595 () (Array (_ BitVec 32) ValueCell!6285))

(assert (=> mapNonEmpty!21595 (= (arr!14537 _values!833) (store mapRest!21595 mapKey!21595 mapValue!21595))))

(declare-fun b!472183 () Bool)

(assert (=> b!472183 (= e!276864 tp_is_empty!13257)))

(declare-fun b!472184 () Bool)

(declare-fun res!282123 () Bool)

(assert (=> b!472184 (=> (not res!282123) (not e!276865))))

(declare-datatypes ((List!8891 0))(
  ( (Nil!8888) (Cons!8887 (h!9743 (_ BitVec 64)) (t!14867 List!8891)) )
))
(declare-fun arrayNoDuplicates!0 (array!30237 (_ BitVec 32) List!8891) Bool)

(assert (=> b!472184 (= res!282123 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8888))))

(assert (= (and start!42346 res!282121) b!472177))

(assert (= (and b!472177 res!282120) b!472179))

(assert (= (and b!472179 res!282119) b!472184))

(assert (= (and b!472184 res!282123) b!472181))

(assert (= (and b!472181 (not res!282122)) b!472182))

(assert (= (and b!472180 condMapEmpty!21595) mapIsEmpty!21595))

(assert (= (and b!472180 (not condMapEmpty!21595)) mapNonEmpty!21595))

(get-info :version)

(assert (= (and mapNonEmpty!21595 ((_ is ValueCellFull!6285) mapValue!21595)) b!472183))

(assert (= (and b!472180 ((_ is ValueCellFull!6285) mapDefault!21595)) b!472178))

(assert (= start!42346 b!472180))

(declare-fun m!454197 () Bool)

(assert (=> b!472182 m!454197))

(declare-fun m!454199 () Bool)

(assert (=> mapNonEmpty!21595 m!454199))

(declare-fun m!454201 () Bool)

(assert (=> b!472179 m!454201))

(declare-fun m!454203 () Bool)

(assert (=> b!472184 m!454203))

(declare-fun m!454205 () Bool)

(assert (=> b!472181 m!454205))

(declare-fun m!454207 () Bool)

(assert (=> b!472181 m!454207))

(declare-fun m!454209 () Bool)

(assert (=> b!472181 m!454209))

(declare-fun m!454211 () Bool)

(assert (=> start!42346 m!454211))

(declare-fun m!454213 () Bool)

(assert (=> start!42346 m!454213))

(declare-fun m!454215 () Bool)

(assert (=> start!42346 m!454215))

(check-sat (not mapNonEmpty!21595) (not b!472184) (not b!472182) tp_is_empty!13257 b_and!20293 (not b!472181) (not start!42346) (not b!472179) (not b_next!11829))
(check-sat b_and!20293 (not b_next!11829))
