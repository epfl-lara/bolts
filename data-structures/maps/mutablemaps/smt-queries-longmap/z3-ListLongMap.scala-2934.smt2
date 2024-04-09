; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41802 () Bool)

(assert start!41802)

(declare-fun b_free!11415 () Bool)

(declare-fun b_next!11415 () Bool)

(assert (=> start!41802 (= b_free!11415 (not b_next!11415))))

(declare-fun tp!40252 () Bool)

(declare-fun b_and!19801 () Bool)

(assert (=> start!41802 (= tp!40252 b_and!19801)))

(declare-fun b!466503 () Bool)

(declare-fun e!272812 () Bool)

(declare-fun tp_is_empty!12843 () Bool)

(assert (=> b!466503 (= e!272812 tp_is_empty!12843)))

(declare-fun res!278922 () Bool)

(declare-fun e!272816 () Bool)

(assert (=> start!41802 (=> (not res!278922) (not e!272816))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41802 (= res!278922 (validMask!0 mask!1365))))

(assert (=> start!41802 e!272816))

(assert (=> start!41802 tp_is_empty!12843))

(assert (=> start!41802 tp!40252))

(assert (=> start!41802 true))

(declare-datatypes ((array!29421 0))(
  ( (array!29422 (arr!14136 (Array (_ BitVec 32) (_ BitVec 64))) (size!14488 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29421)

(declare-fun array_inv!10186 (array!29421) Bool)

(assert (=> start!41802 (array_inv!10186 _keys!1025)))

(declare-datatypes ((V!18229 0))(
  ( (V!18230 (val!6466 Int)) )
))
(declare-datatypes ((ValueCell!6078 0))(
  ( (ValueCellFull!6078 (v!8750 V!18229)) (EmptyCell!6078) )
))
(declare-datatypes ((array!29423 0))(
  ( (array!29424 (arr!14137 (Array (_ BitVec 32) ValueCell!6078)) (size!14489 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29423)

(declare-fun e!272811 () Bool)

(declare-fun array_inv!10187 (array!29423) Bool)

(assert (=> start!41802 (and (array_inv!10187 _values!833) e!272811)))

(declare-fun b!466504 () Bool)

(declare-fun e!272814 () Bool)

(declare-fun mapRes!20950 () Bool)

(assert (=> b!466504 (= e!272811 (and e!272814 mapRes!20950))))

(declare-fun condMapEmpty!20950 () Bool)

(declare-fun mapDefault!20950 () ValueCell!6078)

(assert (=> b!466504 (= condMapEmpty!20950 (= (arr!14137 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6078)) mapDefault!20950)))))

(declare-fun b!466505 () Bool)

(declare-fun res!278920 () Bool)

(assert (=> b!466505 (=> (not res!278920) (not e!272816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29421 (_ BitVec 32)) Bool)

(assert (=> b!466505 (= res!278920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466506 () Bool)

(declare-fun res!278923 () Bool)

(assert (=> b!466506 (=> (not res!278923) (not e!272816))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!466506 (= res!278923 (and (= (size!14489 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14488 _keys!1025) (size!14489 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466507 () Bool)

(declare-fun e!272813 () Bool)

(assert (=> b!466507 (= e!272816 (not e!272813))))

(declare-fun res!278921 () Bool)

(assert (=> b!466507 (=> res!278921 e!272813)))

(assert (=> b!466507 (= res!278921 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8466 0))(
  ( (tuple2!8467 (_1!4243 (_ BitVec 64)) (_2!4243 V!18229)) )
))
(declare-datatypes ((List!8584 0))(
  ( (Nil!8581) (Cons!8580 (h!9436 tuple2!8466) (t!14544 List!8584)) )
))
(declare-datatypes ((ListLongMap!7393 0))(
  ( (ListLongMap!7394 (toList!3712 List!8584)) )
))
(declare-fun lt!210915 () ListLongMap!7393)

(declare-fun lt!210916 () ListLongMap!7393)

(assert (=> b!466507 (= lt!210915 lt!210916)))

(declare-fun minValueBefore!38 () V!18229)

(declare-fun zeroValue!794 () V!18229)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13543 0))(
  ( (Unit!13544) )
))
(declare-fun lt!210918 () Unit!13543)

(declare-fun minValueAfter!38 () V!18229)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!73 (array!29421 array!29423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18229 V!18229 V!18229 V!18229 (_ BitVec 32) Int) Unit!13543)

(assert (=> b!466507 (= lt!210918 (lemmaNoChangeToArrayThenSameMapNoExtras!73 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1878 (array!29421 array!29423 (_ BitVec 32) (_ BitVec 32) V!18229 V!18229 (_ BitVec 32) Int) ListLongMap!7393)

(assert (=> b!466507 (= lt!210916 (getCurrentListMapNoExtraKeys!1878 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466507 (= lt!210915 (getCurrentListMapNoExtraKeys!1878 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20950 () Bool)

(declare-fun tp!40251 () Bool)

(assert (=> mapNonEmpty!20950 (= mapRes!20950 (and tp!40251 e!272812))))

(declare-fun mapRest!20950 () (Array (_ BitVec 32) ValueCell!6078))

(declare-fun mapValue!20950 () ValueCell!6078)

(declare-fun mapKey!20950 () (_ BitVec 32))

(assert (=> mapNonEmpty!20950 (= (arr!14137 _values!833) (store mapRest!20950 mapKey!20950 mapValue!20950))))

(declare-fun b!466508 () Bool)

(assert (=> b!466508 (= e!272813 true)))

(declare-fun lt!210919 () ListLongMap!7393)

(declare-fun getCurrentListMap!2149 (array!29421 array!29423 (_ BitVec 32) (_ BitVec 32) V!18229 V!18229 (_ BitVec 32) Int) ListLongMap!7393)

(assert (=> b!466508 (= lt!210919 (getCurrentListMap!2149 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210917 () ListLongMap!7393)

(declare-fun +!1640 (ListLongMap!7393 tuple2!8466) ListLongMap!7393)

(assert (=> b!466508 (= lt!210917 (+!1640 (getCurrentListMap!2149 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8467 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun mapIsEmpty!20950 () Bool)

(assert (=> mapIsEmpty!20950 mapRes!20950))

(declare-fun b!466509 () Bool)

(declare-fun res!278924 () Bool)

(assert (=> b!466509 (=> (not res!278924) (not e!272816))))

(declare-datatypes ((List!8585 0))(
  ( (Nil!8582) (Cons!8581 (h!9437 (_ BitVec 64)) (t!14545 List!8585)) )
))
(declare-fun arrayNoDuplicates!0 (array!29421 (_ BitVec 32) List!8585) Bool)

(assert (=> b!466509 (= res!278924 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8582))))

(declare-fun b!466510 () Bool)

(assert (=> b!466510 (= e!272814 tp_is_empty!12843)))

(assert (= (and start!41802 res!278922) b!466506))

(assert (= (and b!466506 res!278923) b!466505))

(assert (= (and b!466505 res!278920) b!466509))

(assert (= (and b!466509 res!278924) b!466507))

(assert (= (and b!466507 (not res!278921)) b!466508))

(assert (= (and b!466504 condMapEmpty!20950) mapIsEmpty!20950))

(assert (= (and b!466504 (not condMapEmpty!20950)) mapNonEmpty!20950))

(get-info :version)

(assert (= (and mapNonEmpty!20950 ((_ is ValueCellFull!6078) mapValue!20950)) b!466503))

(assert (= (and b!466504 ((_ is ValueCellFull!6078) mapDefault!20950)) b!466510))

(assert (= start!41802 b!466504))

(declare-fun m!448755 () Bool)

(assert (=> start!41802 m!448755))

(declare-fun m!448757 () Bool)

(assert (=> start!41802 m!448757))

(declare-fun m!448759 () Bool)

(assert (=> start!41802 m!448759))

(declare-fun m!448761 () Bool)

(assert (=> b!466509 m!448761))

(declare-fun m!448763 () Bool)

(assert (=> mapNonEmpty!20950 m!448763))

(declare-fun m!448765 () Bool)

(assert (=> b!466505 m!448765))

(declare-fun m!448767 () Bool)

(assert (=> b!466508 m!448767))

(declare-fun m!448769 () Bool)

(assert (=> b!466508 m!448769))

(assert (=> b!466508 m!448769))

(declare-fun m!448771 () Bool)

(assert (=> b!466508 m!448771))

(declare-fun m!448773 () Bool)

(assert (=> b!466507 m!448773))

(declare-fun m!448775 () Bool)

(assert (=> b!466507 m!448775))

(declare-fun m!448777 () Bool)

(assert (=> b!466507 m!448777))

(check-sat (not b_next!11415) b_and!19801 (not b!466509) (not mapNonEmpty!20950) (not start!41802) (not b!466508) (not b!466505) (not b!466507) tp_is_empty!12843)
(check-sat b_and!19801 (not b_next!11415))
