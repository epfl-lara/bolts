; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42078 () Bool)

(assert start!42078)

(declare-fun b_free!11623 () Bool)

(declare-fun b_next!11623 () Bool)

(assert (=> start!42078 (= b_free!11623 (not b_next!11623))))

(declare-fun tp!40888 () Bool)

(declare-fun b_and!20051 () Bool)

(assert (=> start!42078 (= tp!40888 b_and!20051)))

(declare-fun b!469514 () Bool)

(declare-fun e!274974 () Bool)

(declare-fun tp_is_empty!13051 () Bool)

(assert (=> b!469514 (= e!274974 tp_is_empty!13051)))

(declare-fun b!469515 () Bool)

(declare-fun e!274978 () Bool)

(assert (=> b!469515 (= e!274978 true)))

(declare-datatypes ((V!18507 0))(
  ( (V!18508 (val!6570 Int)) )
))
(declare-datatypes ((tuple2!8624 0))(
  ( (tuple2!8625 (_1!4322 (_ BitVec 64)) (_2!4322 V!18507)) )
))
(declare-datatypes ((List!8741 0))(
  ( (Nil!8738) (Cons!8737 (h!9593 tuple2!8624) (t!14709 List!8741)) )
))
(declare-datatypes ((ListLongMap!7551 0))(
  ( (ListLongMap!7552 (toList!3791 List!8741)) )
))
(declare-fun lt!212909 () ListLongMap!7551)

(declare-fun lt!212910 () tuple2!8624)

(declare-fun minValueBefore!38 () V!18507)

(declare-fun +!1678 (ListLongMap!7551 tuple2!8624) ListLongMap!7551)

(assert (=> b!469515 (= (+!1678 lt!212909 lt!212910) (+!1678 (+!1678 lt!212909 (tuple2!8625 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212910))))

(declare-fun minValueAfter!38 () V!18507)

(assert (=> b!469515 (= lt!212910 (tuple2!8625 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13706 0))(
  ( (Unit!13707) )
))
(declare-fun lt!212913 () Unit!13706)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!119 (ListLongMap!7551 (_ BitVec 64) V!18507 V!18507) Unit!13706)

(assert (=> b!469515 (= lt!212913 (addSameAsAddTwiceSameKeyDiffValues!119 lt!212909 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212912 () ListLongMap!7551)

(declare-fun zeroValue!794 () V!18507)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29837 0))(
  ( (array!29838 (arr!14340 (Array (_ BitVec 32) (_ BitVec 64))) (size!14692 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29837)

(declare-datatypes ((ValueCell!6182 0))(
  ( (ValueCellFull!6182 (v!8856 V!18507)) (EmptyCell!6182) )
))
(declare-datatypes ((array!29839 0))(
  ( (array!29840 (arr!14341 (Array (_ BitVec 32) ValueCell!6182)) (size!14693 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29839)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2200 (array!29837 array!29839 (_ BitVec 32) (_ BitVec 32) V!18507 V!18507 (_ BitVec 32) Int) ListLongMap!7551)

(assert (=> b!469515 (= lt!212912 (getCurrentListMap!2200 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!212908 () ListLongMap!7551)

(assert (=> b!469515 (= lt!212908 (getCurrentListMap!2200 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21274 () Bool)

(declare-fun mapRes!21274 () Bool)

(declare-fun tp!40887 () Bool)

(declare-fun e!274973 () Bool)

(assert (=> mapNonEmpty!21274 (= mapRes!21274 (and tp!40887 e!274973))))

(declare-fun mapKey!21274 () (_ BitVec 32))

(declare-fun mapValue!21274 () ValueCell!6182)

(declare-fun mapRest!21274 () (Array (_ BitVec 32) ValueCell!6182))

(assert (=> mapNonEmpty!21274 (= (arr!14341 _values!833) (store mapRest!21274 mapKey!21274 mapValue!21274))))

(declare-fun b!469516 () Bool)

(assert (=> b!469516 (= e!274973 tp_is_empty!13051)))

(declare-fun b!469517 () Bool)

(declare-fun e!274976 () Bool)

(assert (=> b!469517 (= e!274976 (not e!274978))))

(declare-fun res!280650 () Bool)

(assert (=> b!469517 (=> res!280650 e!274978)))

(assert (=> b!469517 (= res!280650 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212907 () ListLongMap!7551)

(assert (=> b!469517 (= lt!212909 lt!212907)))

(declare-fun lt!212911 () Unit!13706)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!149 (array!29837 array!29839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18507 V!18507 V!18507 V!18507 (_ BitVec 32) Int) Unit!13706)

(assert (=> b!469517 (= lt!212911 (lemmaNoChangeToArrayThenSameMapNoExtras!149 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1954 (array!29837 array!29839 (_ BitVec 32) (_ BitVec 32) V!18507 V!18507 (_ BitVec 32) Int) ListLongMap!7551)

(assert (=> b!469517 (= lt!212907 (getCurrentListMapNoExtraKeys!1954 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469517 (= lt!212909 (getCurrentListMapNoExtraKeys!1954 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469518 () Bool)

(declare-fun res!280649 () Bool)

(assert (=> b!469518 (=> (not res!280649) (not e!274976))))

(declare-datatypes ((List!8742 0))(
  ( (Nil!8739) (Cons!8738 (h!9594 (_ BitVec 64)) (t!14710 List!8742)) )
))
(declare-fun arrayNoDuplicates!0 (array!29837 (_ BitVec 32) List!8742) Bool)

(assert (=> b!469518 (= res!280649 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8739))))

(declare-fun b!469519 () Bool)

(declare-fun res!280647 () Bool)

(assert (=> b!469519 (=> (not res!280647) (not e!274976))))

(assert (=> b!469519 (= res!280647 (and (= (size!14693 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14692 _keys!1025) (size!14693 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469520 () Bool)

(declare-fun e!274975 () Bool)

(assert (=> b!469520 (= e!274975 (and e!274974 mapRes!21274))))

(declare-fun condMapEmpty!21274 () Bool)

(declare-fun mapDefault!21274 () ValueCell!6182)

