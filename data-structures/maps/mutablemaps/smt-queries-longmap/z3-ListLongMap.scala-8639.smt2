; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105174 () Bool)

(assert start!105174)

(declare-fun b_free!26871 () Bool)

(declare-fun b_next!26871 () Bool)

(assert (=> start!105174 (= b_free!26871 (not b_next!26871))))

(declare-fun tp!94115 () Bool)

(declare-fun b_and!44685 () Bool)

(assert (=> start!105174 (= tp!94115 b_and!44685)))

(declare-fun mapIsEmpty!49432 () Bool)

(declare-fun mapRes!49432 () Bool)

(assert (=> mapIsEmpty!49432 mapRes!49432))

(declare-fun b!1252822 () Bool)

(declare-fun res!835556 () Bool)

(declare-fun e!711678 () Bool)

(assert (=> b!1252822 (=> (not res!835556) (not e!711678))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81185 0))(
  ( (array!81186 (arr!39151 (Array (_ BitVec 32) (_ BitVec 64))) (size!39688 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81185)

(declare-datatypes ((V!47729 0))(
  ( (V!47730 (val!15949 Int)) )
))
(declare-datatypes ((ValueCell!15123 0))(
  ( (ValueCellFull!15123 (v!18647 V!47729)) (EmptyCell!15123) )
))
(declare-datatypes ((array!81187 0))(
  ( (array!81188 (arr!39152 (Array (_ BitVec 32) ValueCell!15123)) (size!39689 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81187)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252822 (= res!835556 (and (= (size!39689 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39688 _keys!1118) (size!39689 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252823 () Bool)

(declare-fun e!711674 () Bool)

(declare-fun tp_is_empty!31773 () Bool)

(assert (=> b!1252823 (= e!711674 tp_is_empty!31773)))

(declare-fun b!1252824 () Bool)

(declare-fun e!711677 () Bool)

(assert (=> b!1252824 (= e!711677 true)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20722 0))(
  ( (tuple2!20723 (_1!10371 (_ BitVec 64)) (_2!10371 V!47729)) )
))
(declare-datatypes ((List!27969 0))(
  ( (Nil!27966) (Cons!27965 (h!29174 tuple2!20722) (t!41455 List!27969)) )
))
(declare-datatypes ((ListLongMap!18607 0))(
  ( (ListLongMap!18608 (toList!9319 List!27969)) )
))
(declare-fun lt!565509 () ListLongMap!18607)

(declare-fun zeroValue!871 () V!47729)

(declare-fun minValueBefore!43 () V!47729)

(declare-fun getCurrentListMap!4512 (array!81185 array!81187 (_ BitVec 32) (_ BitVec 32) V!47729 V!47729 (_ BitVec 32) Int) ListLongMap!18607)

(assert (=> b!1252824 (= lt!565509 (getCurrentListMap!4512 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252825 () Bool)

(declare-fun e!711679 () Bool)

(assert (=> b!1252825 (= e!711679 tp_is_empty!31773)))

(declare-fun mapNonEmpty!49432 () Bool)

(declare-fun tp!94116 () Bool)

(assert (=> mapNonEmpty!49432 (= mapRes!49432 (and tp!94116 e!711679))))

(declare-fun mapValue!49432 () ValueCell!15123)

(declare-fun mapRest!49432 () (Array (_ BitVec 32) ValueCell!15123))

(declare-fun mapKey!49432 () (_ BitVec 32))

(assert (=> mapNonEmpty!49432 (= (arr!39152 _values!914) (store mapRest!49432 mapKey!49432 mapValue!49432))))

(declare-fun b!1252827 () Bool)

(declare-fun res!835554 () Bool)

(assert (=> b!1252827 (=> (not res!835554) (not e!711678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81185 (_ BitVec 32)) Bool)

(assert (=> b!1252827 (= res!835554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252828 () Bool)

(declare-fun res!835558 () Bool)

(assert (=> b!1252828 (=> (not res!835558) (not e!711678))))

(declare-datatypes ((List!27970 0))(
  ( (Nil!27967) (Cons!27966 (h!29175 (_ BitVec 64)) (t!41456 List!27970)) )
))
(declare-fun arrayNoDuplicates!0 (array!81185 (_ BitVec 32) List!27970) Bool)

(assert (=> b!1252828 (= res!835558 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27967))))

(declare-fun b!1252829 () Bool)

(declare-fun e!711676 () Bool)

(assert (=> b!1252829 (= e!711676 (and e!711674 mapRes!49432))))

(declare-fun condMapEmpty!49432 () Bool)

(declare-fun mapDefault!49432 () ValueCell!15123)

(assert (=> b!1252829 (= condMapEmpty!49432 (= (arr!39152 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15123)) mapDefault!49432)))))

(declare-fun res!835557 () Bool)

(assert (=> start!105174 (=> (not res!835557) (not e!711678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105174 (= res!835557 (validMask!0 mask!1466))))

(assert (=> start!105174 e!711678))

(assert (=> start!105174 true))

(assert (=> start!105174 tp!94115))

(assert (=> start!105174 tp_is_empty!31773))

(declare-fun array_inv!29791 (array!81185) Bool)

(assert (=> start!105174 (array_inv!29791 _keys!1118)))

(declare-fun array_inv!29792 (array!81187) Bool)

(assert (=> start!105174 (and (array_inv!29792 _values!914) e!711676)))

(declare-fun b!1252826 () Bool)

(assert (=> b!1252826 (= e!711678 (not e!711677))))

(declare-fun res!835555 () Bool)

(assert (=> b!1252826 (=> res!835555 e!711677)))

(assert (=> b!1252826 (= res!835555 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565510 () ListLongMap!18607)

(declare-fun lt!565507 () ListLongMap!18607)

(assert (=> b!1252826 (= lt!565510 lt!565507)))

(declare-datatypes ((Unit!41611 0))(
  ( (Unit!41612) )
))
(declare-fun lt!565508 () Unit!41611)

(declare-fun minValueAfter!43 () V!47729)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1008 (array!81185 array!81187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47729 V!47729 V!47729 V!47729 (_ BitVec 32) Int) Unit!41611)

(assert (=> b!1252826 (= lt!565508 (lemmaNoChangeToArrayThenSameMapNoExtras!1008 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5690 (array!81185 array!81187 (_ BitVec 32) (_ BitVec 32) V!47729 V!47729 (_ BitVec 32) Int) ListLongMap!18607)

(assert (=> b!1252826 (= lt!565507 (getCurrentListMapNoExtraKeys!5690 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252826 (= lt!565510 (getCurrentListMapNoExtraKeys!5690 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105174 res!835557) b!1252822))

(assert (= (and b!1252822 res!835556) b!1252827))

(assert (= (and b!1252827 res!835554) b!1252828))

(assert (= (and b!1252828 res!835558) b!1252826))

(assert (= (and b!1252826 (not res!835555)) b!1252824))

(assert (= (and b!1252829 condMapEmpty!49432) mapIsEmpty!49432))

(assert (= (and b!1252829 (not condMapEmpty!49432)) mapNonEmpty!49432))

(get-info :version)

(assert (= (and mapNonEmpty!49432 ((_ is ValueCellFull!15123) mapValue!49432)) b!1252825))

(assert (= (and b!1252829 ((_ is ValueCellFull!15123) mapDefault!49432)) b!1252823))

(assert (= start!105174 b!1252829))

(declare-fun m!1153411 () Bool)

(assert (=> start!105174 m!1153411))

(declare-fun m!1153413 () Bool)

(assert (=> start!105174 m!1153413))

(declare-fun m!1153415 () Bool)

(assert (=> start!105174 m!1153415))

(declare-fun m!1153417 () Bool)

(assert (=> b!1252824 m!1153417))

(declare-fun m!1153419 () Bool)

(assert (=> b!1252827 m!1153419))

(declare-fun m!1153421 () Bool)

(assert (=> b!1252826 m!1153421))

(declare-fun m!1153423 () Bool)

(assert (=> b!1252826 m!1153423))

(declare-fun m!1153425 () Bool)

(assert (=> b!1252826 m!1153425))

(declare-fun m!1153427 () Bool)

(assert (=> b!1252828 m!1153427))

(declare-fun m!1153429 () Bool)

(assert (=> mapNonEmpty!49432 m!1153429))

(check-sat (not b!1252828) (not start!105174) tp_is_empty!31773 (not b_next!26871) (not b!1252826) (not mapNonEmpty!49432) (not b!1252827) b_and!44685 (not b!1252824))
(check-sat b_and!44685 (not b_next!26871))
