; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42018 () Bool)

(assert start!42018)

(declare-fun b_free!11583 () Bool)

(declare-fun b_next!11583 () Bool)

(assert (=> start!42018 (= b_free!11583 (not b_next!11583))))

(declare-fun tp!40765 () Bool)

(declare-fun b_and!19999 () Bool)

(assert (=> start!42018 (= tp!40765 b_and!19999)))

(declare-fun b!468855 () Bool)

(declare-fun e!274501 () Bool)

(declare-fun tp_is_empty!13011 () Bool)

(assert (=> b!468855 (= e!274501 tp_is_empty!13011)))

(declare-fun mapNonEmpty!21211 () Bool)

(declare-fun mapRes!21211 () Bool)

(declare-fun tp!40764 () Bool)

(declare-fun e!274505 () Bool)

(assert (=> mapNonEmpty!21211 (= mapRes!21211 (and tp!40764 e!274505))))

(declare-datatypes ((V!18453 0))(
  ( (V!18454 (val!6550 Int)) )
))
(declare-datatypes ((ValueCell!6162 0))(
  ( (ValueCellFull!6162 (v!8835 V!18453)) (EmptyCell!6162) )
))
(declare-datatypes ((array!29755 0))(
  ( (array!29756 (arr!14300 (Array (_ BitVec 32) ValueCell!6162)) (size!14652 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29755)

(declare-fun mapKey!21211 () (_ BitVec 32))

(declare-fun mapValue!21211 () ValueCell!6162)

(declare-fun mapRest!21211 () (Array (_ BitVec 32) ValueCell!6162))

(assert (=> mapNonEmpty!21211 (= (arr!14300 _values!833) (store mapRest!21211 mapKey!21211 mapValue!21211))))

(declare-fun b!468856 () Bool)

(declare-fun e!274504 () Bool)

(assert (=> b!468856 (= e!274504 true)))

(declare-datatypes ((tuple2!8594 0))(
  ( (tuple2!8595 (_1!4307 (_ BitVec 64)) (_2!4307 V!18453)) )
))
(declare-datatypes ((List!8714 0))(
  ( (Nil!8711) (Cons!8710 (h!9566 tuple2!8594) (t!14680 List!8714)) )
))
(declare-datatypes ((ListLongMap!7521 0))(
  ( (ListLongMap!7522 (toList!3776 List!8714)) )
))
(declare-fun lt!212340 () ListLongMap!7521)

(declare-fun lt!212342 () tuple2!8594)

(declare-fun minValueBefore!38 () V!18453)

(declare-fun +!1665 (ListLongMap!7521 tuple2!8594) ListLongMap!7521)

(assert (=> b!468856 (= (+!1665 lt!212340 lt!212342) (+!1665 (+!1665 lt!212340 (tuple2!8595 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212342))))

(declare-fun minValueAfter!38 () V!18453)

(assert (=> b!468856 (= lt!212342 (tuple2!8595 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13674 0))(
  ( (Unit!13675) )
))
(declare-fun lt!212339 () Unit!13674)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!106 (ListLongMap!7521 (_ BitVec 64) V!18453 V!18453) Unit!13674)

(assert (=> b!468856 (= lt!212339 (addSameAsAddTwiceSameKeyDiffValues!106 lt!212340 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212337 () ListLongMap!7521)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29757 0))(
  ( (array!29758 (arr!14301 (Array (_ BitVec 32) (_ BitVec 64))) (size!14653 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29757)

(declare-fun zeroValue!794 () V!18453)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2187 (array!29757 array!29755 (_ BitVec 32) (_ BitVec 32) V!18453 V!18453 (_ BitVec 32) Int) ListLongMap!7521)

(assert (=> b!468856 (= lt!212337 (getCurrentListMap!2187 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!212341 () ListLongMap!7521)

(assert (=> b!468856 (= lt!212341 (getCurrentListMap!2187 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468857 () Bool)

(assert (=> b!468857 (= e!274505 tp_is_empty!13011)))

(declare-fun mapIsEmpty!21211 () Bool)

(assert (=> mapIsEmpty!21211 mapRes!21211))

(declare-fun b!468858 () Bool)

(declare-fun e!274502 () Bool)

(assert (=> b!468858 (= e!274502 (and e!274501 mapRes!21211))))

(declare-fun condMapEmpty!21211 () Bool)

(declare-fun mapDefault!21211 () ValueCell!6162)

(assert (=> b!468858 (= condMapEmpty!21211 (= (arr!14300 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6162)) mapDefault!21211)))))

(declare-fun b!468859 () Bool)

(declare-fun e!274503 () Bool)

(assert (=> b!468859 (= e!274503 (not e!274504))))

(declare-fun res!280274 () Bool)

(assert (=> b!468859 (=> res!280274 e!274504)))

(assert (=> b!468859 (= res!280274 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212336 () ListLongMap!7521)

(assert (=> b!468859 (= lt!212340 lt!212336)))

(declare-fun lt!212338 () Unit!13674)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!135 (array!29757 array!29755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18453 V!18453 V!18453 V!18453 (_ BitVec 32) Int) Unit!13674)

(assert (=> b!468859 (= lt!212338 (lemmaNoChangeToArrayThenSameMapNoExtras!135 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1940 (array!29757 array!29755 (_ BitVec 32) (_ BitVec 32) V!18453 V!18453 (_ BitVec 32) Int) ListLongMap!7521)

(assert (=> b!468859 (= lt!212336 (getCurrentListMapNoExtraKeys!1940 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468859 (= lt!212340 (getCurrentListMapNoExtraKeys!1940 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!280270 () Bool)

(assert (=> start!42018 (=> (not res!280270) (not e!274503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42018 (= res!280270 (validMask!0 mask!1365))))

(assert (=> start!42018 e!274503))

(assert (=> start!42018 tp_is_empty!13011))

(assert (=> start!42018 tp!40765))

(assert (=> start!42018 true))

(declare-fun array_inv!10318 (array!29757) Bool)

(assert (=> start!42018 (array_inv!10318 _keys!1025)))

(declare-fun array_inv!10319 (array!29755) Bool)

(assert (=> start!42018 (and (array_inv!10319 _values!833) e!274502)))

(declare-fun b!468860 () Bool)

(declare-fun res!280273 () Bool)

(assert (=> b!468860 (=> (not res!280273) (not e!274503))))

(declare-datatypes ((List!8715 0))(
  ( (Nil!8712) (Cons!8711 (h!9567 (_ BitVec 64)) (t!14681 List!8715)) )
))
(declare-fun arrayNoDuplicates!0 (array!29757 (_ BitVec 32) List!8715) Bool)

(assert (=> b!468860 (= res!280273 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8712))))

(declare-fun b!468861 () Bool)

(declare-fun res!280271 () Bool)

(assert (=> b!468861 (=> (not res!280271) (not e!274503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29757 (_ BitVec 32)) Bool)

(assert (=> b!468861 (= res!280271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468862 () Bool)

(declare-fun res!280272 () Bool)

(assert (=> b!468862 (=> (not res!280272) (not e!274503))))

(assert (=> b!468862 (= res!280272 (and (= (size!14652 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14653 _keys!1025) (size!14652 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!42018 res!280270) b!468862))

(assert (= (and b!468862 res!280272) b!468861))

(assert (= (and b!468861 res!280271) b!468860))

(assert (= (and b!468860 res!280273) b!468859))

(assert (= (and b!468859 (not res!280274)) b!468856))

(assert (= (and b!468858 condMapEmpty!21211) mapIsEmpty!21211))

(assert (= (and b!468858 (not condMapEmpty!21211)) mapNonEmpty!21211))

(get-info :version)

(assert (= (and mapNonEmpty!21211 ((_ is ValueCellFull!6162) mapValue!21211)) b!468857))

(assert (= (and b!468858 ((_ is ValueCellFull!6162) mapDefault!21211)) b!468855))

(assert (= start!42018 b!468858))

(declare-fun m!450981 () Bool)

(assert (=> start!42018 m!450981))

(declare-fun m!450983 () Bool)

(assert (=> start!42018 m!450983))

(declare-fun m!450985 () Bool)

(assert (=> start!42018 m!450985))

(declare-fun m!450987 () Bool)

(assert (=> b!468860 m!450987))

(declare-fun m!450989 () Bool)

(assert (=> b!468859 m!450989))

(declare-fun m!450991 () Bool)

(assert (=> b!468859 m!450991))

(declare-fun m!450993 () Bool)

(assert (=> b!468859 m!450993))

(declare-fun m!450995 () Bool)

(assert (=> b!468861 m!450995))

(declare-fun m!450997 () Bool)

(assert (=> b!468856 m!450997))

(declare-fun m!450999 () Bool)

(assert (=> b!468856 m!450999))

(assert (=> b!468856 m!450997))

(declare-fun m!451001 () Bool)

(assert (=> b!468856 m!451001))

(declare-fun m!451003 () Bool)

(assert (=> b!468856 m!451003))

(declare-fun m!451005 () Bool)

(assert (=> b!468856 m!451005))

(declare-fun m!451007 () Bool)

(assert (=> b!468856 m!451007))

(declare-fun m!451009 () Bool)

(assert (=> mapNonEmpty!21211 m!451009))

(check-sat (not b!468859) b_and!19999 (not mapNonEmpty!21211) (not b!468861) (not b!468856) tp_is_empty!13011 (not start!42018) (not b!468860) (not b_next!11583))
(check-sat b_and!19999 (not b_next!11583))
