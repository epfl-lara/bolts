; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105150 () Bool)

(assert start!105150)

(declare-fun b_free!26847 () Bool)

(declare-fun b_next!26847 () Bool)

(assert (=> start!105150 (= b_free!26847 (not b_next!26847))))

(declare-fun tp!94043 () Bool)

(declare-fun b_and!44661 () Bool)

(assert (=> start!105150 (= tp!94043 b_and!44661)))

(declare-fun b!1252534 () Bool)

(declare-fun e!711463 () Bool)

(declare-fun tp_is_empty!31749 () Bool)

(assert (=> b!1252534 (= e!711463 tp_is_empty!31749)))

(declare-fun b!1252535 () Bool)

(declare-fun e!711460 () Bool)

(declare-fun e!711461 () Bool)

(declare-fun mapRes!49396 () Bool)

(assert (=> b!1252535 (= e!711460 (and e!711461 mapRes!49396))))

(declare-fun condMapEmpty!49396 () Bool)

(declare-datatypes ((V!47697 0))(
  ( (V!47698 (val!15937 Int)) )
))
(declare-datatypes ((ValueCell!15111 0))(
  ( (ValueCellFull!15111 (v!18635 V!47697)) (EmptyCell!15111) )
))
(declare-datatypes ((array!81139 0))(
  ( (array!81140 (arr!39128 (Array (_ BitVec 32) ValueCell!15111)) (size!39665 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81139)

(declare-fun mapDefault!49396 () ValueCell!15111)

(assert (=> b!1252535 (= condMapEmpty!49396 (= (arr!39128 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15111)) mapDefault!49396)))))

(declare-fun b!1252536 () Bool)

(declare-fun e!711458 () Bool)

(assert (=> b!1252536 (= e!711458 true)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20700 0))(
  ( (tuple2!20701 (_1!10360 (_ BitVec 64)) (_2!10360 V!47697)) )
))
(declare-datatypes ((List!27949 0))(
  ( (Nil!27946) (Cons!27945 (h!29154 tuple2!20700) (t!41435 List!27949)) )
))
(declare-datatypes ((ListLongMap!18585 0))(
  ( (ListLongMap!18586 (toList!9308 List!27949)) )
))
(declare-fun lt!565365 () ListLongMap!18585)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47697)

(declare-datatypes ((array!81141 0))(
  ( (array!81142 (arr!39129 (Array (_ BitVec 32) (_ BitVec 64))) (size!39666 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81141)

(declare-fun minValueBefore!43 () V!47697)

(declare-fun getCurrentListMap!4503 (array!81141 array!81139 (_ BitVec 32) (_ BitVec 32) V!47697 V!47697 (_ BitVec 32) Int) ListLongMap!18585)

(assert (=> b!1252536 (= lt!565365 (getCurrentListMap!4503 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49396 () Bool)

(assert (=> mapIsEmpty!49396 mapRes!49396))

(declare-fun b!1252537 () Bool)

(declare-fun res!835375 () Bool)

(declare-fun e!711462 () Bool)

(assert (=> b!1252537 (=> (not res!835375) (not e!711462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81141 (_ BitVec 32)) Bool)

(assert (=> b!1252537 (= res!835375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252538 () Bool)

(declare-fun res!835377 () Bool)

(assert (=> b!1252538 (=> (not res!835377) (not e!711462))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252538 (= res!835377 (and (= (size!39665 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39666 _keys!1118) (size!39665 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252539 () Bool)

(assert (=> b!1252539 (= e!711462 (not e!711458))))

(declare-fun res!835374 () Bool)

(assert (=> b!1252539 (=> res!835374 e!711458)))

(assert (=> b!1252539 (= res!835374 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565363 () ListLongMap!18585)

(declare-fun lt!565364 () ListLongMap!18585)

(assert (=> b!1252539 (= lt!565363 lt!565364)))

(declare-datatypes ((Unit!41591 0))(
  ( (Unit!41592) )
))
(declare-fun lt!565366 () Unit!41591)

(declare-fun minValueAfter!43 () V!47697)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!998 (array!81141 array!81139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47697 V!47697 V!47697 V!47697 (_ BitVec 32) Int) Unit!41591)

(assert (=> b!1252539 (= lt!565366 (lemmaNoChangeToArrayThenSameMapNoExtras!998 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5680 (array!81141 array!81139 (_ BitVec 32) (_ BitVec 32) V!47697 V!47697 (_ BitVec 32) Int) ListLongMap!18585)

(assert (=> b!1252539 (= lt!565364 (getCurrentListMapNoExtraKeys!5680 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252539 (= lt!565363 (getCurrentListMapNoExtraKeys!5680 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49396 () Bool)

(declare-fun tp!94044 () Bool)

(assert (=> mapNonEmpty!49396 (= mapRes!49396 (and tp!94044 e!711463))))

(declare-fun mapKey!49396 () (_ BitVec 32))

(declare-fun mapValue!49396 () ValueCell!15111)

(declare-fun mapRest!49396 () (Array (_ BitVec 32) ValueCell!15111))

(assert (=> mapNonEmpty!49396 (= (arr!39128 _values!914) (store mapRest!49396 mapKey!49396 mapValue!49396))))

(declare-fun b!1252541 () Bool)

(assert (=> b!1252541 (= e!711461 tp_is_empty!31749)))

(declare-fun b!1252540 () Bool)

(declare-fun res!835376 () Bool)

(assert (=> b!1252540 (=> (not res!835376) (not e!711462))))

(declare-datatypes ((List!27950 0))(
  ( (Nil!27947) (Cons!27946 (h!29155 (_ BitVec 64)) (t!41436 List!27950)) )
))
(declare-fun arrayNoDuplicates!0 (array!81141 (_ BitVec 32) List!27950) Bool)

(assert (=> b!1252540 (= res!835376 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27947))))

(declare-fun res!835378 () Bool)

(assert (=> start!105150 (=> (not res!835378) (not e!711462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105150 (= res!835378 (validMask!0 mask!1466))))

(assert (=> start!105150 e!711462))

(assert (=> start!105150 true))

(assert (=> start!105150 tp!94043))

(assert (=> start!105150 tp_is_empty!31749))

(declare-fun array_inv!29773 (array!81141) Bool)

(assert (=> start!105150 (array_inv!29773 _keys!1118)))

(declare-fun array_inv!29774 (array!81139) Bool)

(assert (=> start!105150 (and (array_inv!29774 _values!914) e!711460)))

(assert (= (and start!105150 res!835378) b!1252538))

(assert (= (and b!1252538 res!835377) b!1252537))

(assert (= (and b!1252537 res!835375) b!1252540))

(assert (= (and b!1252540 res!835376) b!1252539))

(assert (= (and b!1252539 (not res!835374)) b!1252536))

(assert (= (and b!1252535 condMapEmpty!49396) mapIsEmpty!49396))

(assert (= (and b!1252535 (not condMapEmpty!49396)) mapNonEmpty!49396))

(get-info :version)

(assert (= (and mapNonEmpty!49396 ((_ is ValueCellFull!15111) mapValue!49396)) b!1252534))

(assert (= (and b!1252535 ((_ is ValueCellFull!15111) mapDefault!49396)) b!1252541))

(assert (= start!105150 b!1252535))

(declare-fun m!1153171 () Bool)

(assert (=> start!105150 m!1153171))

(declare-fun m!1153173 () Bool)

(assert (=> start!105150 m!1153173))

(declare-fun m!1153175 () Bool)

(assert (=> start!105150 m!1153175))

(declare-fun m!1153177 () Bool)

(assert (=> mapNonEmpty!49396 m!1153177))

(declare-fun m!1153179 () Bool)

(assert (=> b!1252537 m!1153179))

(declare-fun m!1153181 () Bool)

(assert (=> b!1252536 m!1153181))

(declare-fun m!1153183 () Bool)

(assert (=> b!1252539 m!1153183))

(declare-fun m!1153185 () Bool)

(assert (=> b!1252539 m!1153185))

(declare-fun m!1153187 () Bool)

(assert (=> b!1252539 m!1153187))

(declare-fun m!1153189 () Bool)

(assert (=> b!1252540 m!1153189))

(check-sat (not b_next!26847) (not b!1252539) (not b!1252540) (not mapNonEmpty!49396) b_and!44661 (not start!105150) (not b!1252536) (not b!1252537) tp_is_empty!31749)
(check-sat b_and!44661 (not b_next!26847))
