; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104724 () Bool)

(assert start!104724)

(declare-fun b_free!26505 () Bool)

(declare-fun b_next!26505 () Bool)

(assert (=> start!104724 (= b_free!26505 (not b_next!26505))))

(declare-fun tp!93002 () Bool)

(declare-fun b_and!44279 () Bool)

(assert (=> start!104724 (= tp!93002 b_and!44279)))

(declare-fun b!1248021 () Bool)

(declare-fun e!708171 () Bool)

(declare-fun tp_is_empty!31407 () Bool)

(assert (=> b!1248021 (= e!708171 tp_is_empty!31407)))

(declare-fun mapNonEmpty!48868 () Bool)

(declare-fun mapRes!48868 () Bool)

(declare-fun tp!93003 () Bool)

(assert (=> mapNonEmpty!48868 (= mapRes!48868 (and tp!93003 e!708171))))

(declare-fun mapKey!48868 () (_ BitVec 32))

(declare-datatypes ((V!47241 0))(
  ( (V!47242 (val!15766 Int)) )
))
(declare-datatypes ((ValueCell!14940 0))(
  ( (ValueCellFull!14940 (v!18462 V!47241)) (EmptyCell!14940) )
))
(declare-datatypes ((array!80481 0))(
  ( (array!80482 (arr!38804 (Array (_ BitVec 32) ValueCell!14940)) (size!39341 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80481)

(declare-fun mapRest!48868 () (Array (_ BitVec 32) ValueCell!14940))

(declare-fun mapValue!48868 () ValueCell!14940)

(assert (=> mapNonEmpty!48868 (= (arr!38804 _values!914) (store mapRest!48868 mapKey!48868 mapValue!48868))))

(declare-fun b!1248022 () Bool)

(declare-fun e!708173 () Bool)

(declare-fun e!708174 () Bool)

(assert (=> b!1248022 (= e!708173 (and e!708174 mapRes!48868))))

(declare-fun condMapEmpty!48868 () Bool)

(declare-fun mapDefault!48868 () ValueCell!14940)

(assert (=> b!1248022 (= condMapEmpty!48868 (= (arr!38804 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14940)) mapDefault!48868)))))

(declare-fun b!1248023 () Bool)

(declare-fun res!832747 () Bool)

(declare-fun e!708170 () Bool)

(assert (=> b!1248023 (=> (not res!832747) (not e!708170))))

(declare-datatypes ((array!80483 0))(
  ( (array!80484 (arr!38805 (Array (_ BitVec 32) (_ BitVec 64))) (size!39342 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80483)

(declare-datatypes ((List!27719 0))(
  ( (Nil!27716) (Cons!27715 (h!28924 (_ BitVec 64)) (t!41195 List!27719)) )
))
(declare-fun arrayNoDuplicates!0 (array!80483 (_ BitVec 32) List!27719) Bool)

(assert (=> b!1248023 (= res!832747 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27716))))

(declare-fun mapIsEmpty!48868 () Bool)

(assert (=> mapIsEmpty!48868 mapRes!48868))

(declare-fun res!832746 () Bool)

(assert (=> start!104724 (=> (not res!832746) (not e!708170))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104724 (= res!832746 (validMask!0 mask!1466))))

(assert (=> start!104724 e!708170))

(assert (=> start!104724 true))

(assert (=> start!104724 tp!93002))

(assert (=> start!104724 tp_is_empty!31407))

(declare-fun array_inv!29547 (array!80483) Bool)

(assert (=> start!104724 (array_inv!29547 _keys!1118)))

(declare-fun array_inv!29548 (array!80481) Bool)

(assert (=> start!104724 (and (array_inv!29548 _values!914) e!708173)))

(declare-fun b!1248024 () Bool)

(declare-fun res!832748 () Bool)

(assert (=> b!1248024 (=> (not res!832748) (not e!708170))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248024 (= res!832748 (and (= (size!39341 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39342 _keys!1118) (size!39341 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248025 () Bool)

(assert (=> b!1248025 (= e!708170 false)))

(declare-fun zeroValue!871 () V!47241)

(declare-fun minValueBefore!43 () V!47241)

(declare-datatypes ((tuple2!20462 0))(
  ( (tuple2!20463 (_1!10241 (_ BitVec 64)) (_2!10241 V!47241)) )
))
(declare-datatypes ((List!27720 0))(
  ( (Nil!27717) (Cons!27716 (h!28925 tuple2!20462) (t!41196 List!27720)) )
))
(declare-datatypes ((ListLongMap!18347 0))(
  ( (ListLongMap!18348 (toList!9189 List!27720)) )
))
(declare-fun lt!563298 () ListLongMap!18347)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5572 (array!80483 array!80481 (_ BitVec 32) (_ BitVec 32) V!47241 V!47241 (_ BitVec 32) Int) ListLongMap!18347)

(assert (=> b!1248025 (= lt!563298 (getCurrentListMapNoExtraKeys!5572 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248026 () Bool)

(assert (=> b!1248026 (= e!708174 tp_is_empty!31407)))

(declare-fun b!1248027 () Bool)

(declare-fun res!832749 () Bool)

(assert (=> b!1248027 (=> (not res!832749) (not e!708170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80483 (_ BitVec 32)) Bool)

(assert (=> b!1248027 (= res!832749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!104724 res!832746) b!1248024))

(assert (= (and b!1248024 res!832748) b!1248027))

(assert (= (and b!1248027 res!832749) b!1248023))

(assert (= (and b!1248023 res!832747) b!1248025))

(assert (= (and b!1248022 condMapEmpty!48868) mapIsEmpty!48868))

(assert (= (and b!1248022 (not condMapEmpty!48868)) mapNonEmpty!48868))

(get-info :version)

(assert (= (and mapNonEmpty!48868 ((_ is ValueCellFull!14940) mapValue!48868)) b!1248021))

(assert (= (and b!1248022 ((_ is ValueCellFull!14940) mapDefault!48868)) b!1248026))

(assert (= start!104724 b!1248022))

(declare-fun m!1149335 () Bool)

(assert (=> b!1248025 m!1149335))

(declare-fun m!1149337 () Bool)

(assert (=> b!1248027 m!1149337))

(declare-fun m!1149339 () Bool)

(assert (=> start!104724 m!1149339))

(declare-fun m!1149341 () Bool)

(assert (=> start!104724 m!1149341))

(declare-fun m!1149343 () Bool)

(assert (=> start!104724 m!1149343))

(declare-fun m!1149345 () Bool)

(assert (=> mapNonEmpty!48868 m!1149345))

(declare-fun m!1149347 () Bool)

(assert (=> b!1248023 m!1149347))

(check-sat b_and!44279 (not mapNonEmpty!48868) tp_is_empty!31407 (not b!1248023) (not b!1248027) (not start!104724) (not b!1248025) (not b_next!26505))
(check-sat b_and!44279 (not b_next!26505))
