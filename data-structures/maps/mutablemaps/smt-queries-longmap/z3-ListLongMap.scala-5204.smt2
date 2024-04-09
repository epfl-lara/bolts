; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70264 () Bool)

(assert start!70264)

(declare-fun b_free!12633 () Bool)

(declare-fun b_next!12633 () Bool)

(assert (=> start!70264 (= b_free!12633 (not b_next!12633))))

(declare-fun tp!44620 () Bool)

(declare-fun b_and!21439 () Bool)

(assert (=> start!70264 (= tp!44620 b_and!21439)))

(declare-fun mapNonEmpty!23101 () Bool)

(declare-fun mapRes!23101 () Bool)

(declare-fun tp!44619 () Bool)

(declare-fun e!452552 () Bool)

(assert (=> mapNonEmpty!23101 (= mapRes!23101 (and tp!44619 e!452552))))

(declare-datatypes ((V!24125 0))(
  ( (V!24126 (val!7219 Int)) )
))
(declare-datatypes ((ValueCell!6756 0))(
  ( (ValueCellFull!6756 (v!9642 V!24125)) (EmptyCell!6756) )
))
(declare-datatypes ((array!44868 0))(
  ( (array!44869 (arr!21488 (Array (_ BitVec 32) ValueCell!6756)) (size!21909 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44868)

(declare-fun mapValue!23101 () ValueCell!6756)

(declare-fun mapRest!23101 () (Array (_ BitVec 32) ValueCell!6756))

(declare-fun mapKey!23101 () (_ BitVec 32))

(assert (=> mapNonEmpty!23101 (= (arr!21488 _values!788) (store mapRest!23101 mapKey!23101 mapValue!23101))))

(declare-fun b!815880 () Bool)

(declare-fun e!452551 () Bool)

(declare-fun tp_is_empty!14343 () Bool)

(assert (=> b!815880 (= e!452551 tp_is_empty!14343)))

(declare-fun res!557197 () Bool)

(declare-fun e!452554 () Bool)

(assert (=> start!70264 (=> (not res!557197) (not e!452554))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70264 (= res!557197 (validMask!0 mask!1312))))

(assert (=> start!70264 e!452554))

(assert (=> start!70264 tp_is_empty!14343))

(declare-datatypes ((array!44870 0))(
  ( (array!44871 (arr!21489 (Array (_ BitVec 32) (_ BitVec 64))) (size!21910 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44870)

(declare-fun array_inv!17171 (array!44870) Bool)

(assert (=> start!70264 (array_inv!17171 _keys!976)))

(assert (=> start!70264 true))

(declare-fun e!452549 () Bool)

(declare-fun array_inv!17172 (array!44868) Bool)

(assert (=> start!70264 (and (array_inv!17172 _values!788) e!452549)))

(assert (=> start!70264 tp!44620))

(declare-fun mapIsEmpty!23101 () Bool)

(assert (=> mapIsEmpty!23101 mapRes!23101))

(declare-fun b!815881 () Bool)

(declare-fun e!452553 () Bool)

(assert (=> b!815881 (= e!452554 (not e!452553))))

(declare-fun res!557199 () Bool)

(assert (=> b!815881 (=> res!557199 e!452553)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815881 (= res!557199 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9488 0))(
  ( (tuple2!9489 (_1!4754 (_ BitVec 64)) (_2!4754 V!24125)) )
))
(declare-datatypes ((List!15356 0))(
  ( (Nil!15353) (Cons!15352 (h!16481 tuple2!9488) (t!21685 List!15356)) )
))
(declare-datatypes ((ListLongMap!8325 0))(
  ( (ListLongMap!8326 (toList!4178 List!15356)) )
))
(declare-fun lt!365364 () ListLongMap!8325)

(declare-fun lt!365361 () ListLongMap!8325)

(assert (=> b!815881 (= lt!365364 lt!365361)))

(declare-fun zeroValueBefore!34 () V!24125)

(declare-fun zeroValueAfter!34 () V!24125)

(declare-fun minValue!754 () V!24125)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27812 0))(
  ( (Unit!27813) )
))
(declare-fun lt!365363 () Unit!27812)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!343 (array!44870 array!44868 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24125 V!24125 V!24125 V!24125 (_ BitVec 32) Int) Unit!27812)

(assert (=> b!815881 (= lt!365363 (lemmaNoChangeToArrayThenSameMapNoExtras!343 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2227 (array!44870 array!44868 (_ BitVec 32) (_ BitVec 32) V!24125 V!24125 (_ BitVec 32) Int) ListLongMap!8325)

(assert (=> b!815881 (= lt!365361 (getCurrentListMapNoExtraKeys!2227 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815881 (= lt!365364 (getCurrentListMapNoExtraKeys!2227 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815882 () Bool)

(declare-fun res!557200 () Bool)

(assert (=> b!815882 (=> (not res!557200) (not e!452554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44870 (_ BitVec 32)) Bool)

(assert (=> b!815882 (= res!557200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815883 () Bool)

(declare-fun res!557196 () Bool)

(assert (=> b!815883 (=> (not res!557196) (not e!452554))))

(declare-datatypes ((List!15357 0))(
  ( (Nil!15354) (Cons!15353 (h!16482 (_ BitVec 64)) (t!21686 List!15357)) )
))
(declare-fun arrayNoDuplicates!0 (array!44870 (_ BitVec 32) List!15357) Bool)

(assert (=> b!815883 (= res!557196 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15354))))

(declare-fun b!815884 () Bool)

(assert (=> b!815884 (= e!452553 true)))

(declare-fun lt!365365 () ListLongMap!8325)

(declare-fun getCurrentListMap!2366 (array!44870 array!44868 (_ BitVec 32) (_ BitVec 32) V!24125 V!24125 (_ BitVec 32) Int) ListLongMap!8325)

(assert (=> b!815884 (= lt!365365 (getCurrentListMap!2366 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365362 () ListLongMap!8325)

(declare-fun +!1765 (ListLongMap!8325 tuple2!9488) ListLongMap!8325)

(assert (=> b!815884 (= lt!365362 (+!1765 (getCurrentListMap!2366 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9489 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815885 () Bool)

(assert (=> b!815885 (= e!452552 tp_is_empty!14343)))

(declare-fun b!815886 () Bool)

(declare-fun res!557198 () Bool)

(assert (=> b!815886 (=> (not res!557198) (not e!452554))))

(assert (=> b!815886 (= res!557198 (and (= (size!21909 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21910 _keys!976) (size!21909 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815887 () Bool)

(assert (=> b!815887 (= e!452549 (and e!452551 mapRes!23101))))

(declare-fun condMapEmpty!23101 () Bool)

(declare-fun mapDefault!23101 () ValueCell!6756)

(assert (=> b!815887 (= condMapEmpty!23101 (= (arr!21488 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6756)) mapDefault!23101)))))

(assert (= (and start!70264 res!557197) b!815886))

(assert (= (and b!815886 res!557198) b!815882))

(assert (= (and b!815882 res!557200) b!815883))

(assert (= (and b!815883 res!557196) b!815881))

(assert (= (and b!815881 (not res!557199)) b!815884))

(assert (= (and b!815887 condMapEmpty!23101) mapIsEmpty!23101))

(assert (= (and b!815887 (not condMapEmpty!23101)) mapNonEmpty!23101))

(get-info :version)

(assert (= (and mapNonEmpty!23101 ((_ is ValueCellFull!6756) mapValue!23101)) b!815885))

(assert (= (and b!815887 ((_ is ValueCellFull!6756) mapDefault!23101)) b!815880))

(assert (= start!70264 b!815887))

(declare-fun m!757619 () Bool)

(assert (=> mapNonEmpty!23101 m!757619))

(declare-fun m!757621 () Bool)

(assert (=> b!815883 m!757621))

(declare-fun m!757623 () Bool)

(assert (=> b!815882 m!757623))

(declare-fun m!757625 () Bool)

(assert (=> start!70264 m!757625))

(declare-fun m!757627 () Bool)

(assert (=> start!70264 m!757627))

(declare-fun m!757629 () Bool)

(assert (=> start!70264 m!757629))

(declare-fun m!757631 () Bool)

(assert (=> b!815884 m!757631))

(declare-fun m!757633 () Bool)

(assert (=> b!815884 m!757633))

(assert (=> b!815884 m!757633))

(declare-fun m!757635 () Bool)

(assert (=> b!815884 m!757635))

(declare-fun m!757637 () Bool)

(assert (=> b!815881 m!757637))

(declare-fun m!757639 () Bool)

(assert (=> b!815881 m!757639))

(declare-fun m!757641 () Bool)

(assert (=> b!815881 m!757641))

(check-sat (not b!815883) (not mapNonEmpty!23101) (not start!70264) tp_is_empty!14343 (not b_next!12633) (not b!815881) (not b!815884) (not b!815882) b_and!21439)
(check-sat b_and!21439 (not b_next!12633))
