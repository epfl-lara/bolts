; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41994 () Bool)

(assert start!41994)

(declare-fun b_free!11559 () Bool)

(declare-fun b_next!11559 () Bool)

(assert (=> start!41994 (= b_free!11559 (not b_next!11559))))

(declare-fun tp!40692 () Bool)

(declare-fun b_and!19975 () Bool)

(assert (=> start!41994 (= tp!40692 b_and!19975)))

(declare-fun b!468567 () Bool)

(declare-fun e!274287 () Bool)

(declare-fun e!274289 () Bool)

(assert (=> b!468567 (= e!274287 (not e!274289))))

(declare-fun res!280090 () Bool)

(assert (=> b!468567 (=> res!280090 e!274289)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468567 (= res!280090 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18421 0))(
  ( (V!18422 (val!6538 Int)) )
))
(declare-datatypes ((tuple2!8574 0))(
  ( (tuple2!8575 (_1!4297 (_ BitVec 64)) (_2!4297 V!18421)) )
))
(declare-datatypes ((List!8694 0))(
  ( (Nil!8691) (Cons!8690 (h!9546 tuple2!8574) (t!14660 List!8694)) )
))
(declare-datatypes ((ListLongMap!7501 0))(
  ( (ListLongMap!7502 (toList!3766 List!8694)) )
))
(declare-fun lt!212086 () ListLongMap!7501)

(declare-fun lt!212090 () ListLongMap!7501)

(assert (=> b!468567 (= lt!212086 lt!212090)))

(declare-fun minValueBefore!38 () V!18421)

(declare-fun zeroValue!794 () V!18421)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13654 0))(
  ( (Unit!13655) )
))
(declare-fun lt!212087 () Unit!13654)

(declare-datatypes ((array!29707 0))(
  ( (array!29708 (arr!14276 (Array (_ BitVec 32) (_ BitVec 64))) (size!14628 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29707)

(declare-datatypes ((ValueCell!6150 0))(
  ( (ValueCellFull!6150 (v!8823 V!18421)) (EmptyCell!6150) )
))
(declare-datatypes ((array!29709 0))(
  ( (array!29710 (arr!14277 (Array (_ BitVec 32) ValueCell!6150)) (size!14629 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29709)

(declare-fun minValueAfter!38 () V!18421)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!126 (array!29707 array!29709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18421 V!18421 V!18421 V!18421 (_ BitVec 32) Int) Unit!13654)

(assert (=> b!468567 (= lt!212087 (lemmaNoChangeToArrayThenSameMapNoExtras!126 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1931 (array!29707 array!29709 (_ BitVec 32) (_ BitVec 32) V!18421 V!18421 (_ BitVec 32) Int) ListLongMap!7501)

(assert (=> b!468567 (= lt!212090 (getCurrentListMapNoExtraKeys!1931 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468567 (= lt!212086 (getCurrentListMapNoExtraKeys!1931 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468568 () Bool)

(declare-fun res!280092 () Bool)

(assert (=> b!468568 (=> (not res!280092) (not e!274287))))

(assert (=> b!468568 (= res!280092 (and (= (size!14629 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14628 _keys!1025) (size!14629 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21175 () Bool)

(declare-fun mapRes!21175 () Bool)

(assert (=> mapIsEmpty!21175 mapRes!21175))

(declare-fun res!280094 () Bool)

(assert (=> start!41994 (=> (not res!280094) (not e!274287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41994 (= res!280094 (validMask!0 mask!1365))))

(assert (=> start!41994 e!274287))

(declare-fun tp_is_empty!12987 () Bool)

(assert (=> start!41994 tp_is_empty!12987))

(assert (=> start!41994 tp!40692))

(assert (=> start!41994 true))

(declare-fun array_inv!10296 (array!29707) Bool)

(assert (=> start!41994 (array_inv!10296 _keys!1025)))

(declare-fun e!274286 () Bool)

(declare-fun array_inv!10297 (array!29709) Bool)

(assert (=> start!41994 (and (array_inv!10297 _values!833) e!274286)))

(declare-fun b!468569 () Bool)

(declare-fun e!274285 () Bool)

(assert (=> b!468569 (= e!274285 tp_is_empty!12987)))

(declare-fun b!468570 () Bool)

(declare-fun res!280093 () Bool)

(assert (=> b!468570 (=> (not res!280093) (not e!274287))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29707 (_ BitVec 32)) Bool)

(assert (=> b!468570 (= res!280093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468571 () Bool)

(assert (=> b!468571 (= e!274289 true)))

(declare-fun lt!212089 () tuple2!8574)

(declare-fun +!1656 (ListLongMap!7501 tuple2!8574) ListLongMap!7501)

(assert (=> b!468571 (= (+!1656 lt!212086 lt!212089) (+!1656 (+!1656 lt!212086 (tuple2!8575 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212089))))

(assert (=> b!468571 (= lt!212089 (tuple2!8575 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212088 () Unit!13654)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!97 (ListLongMap!7501 (_ BitVec 64) V!18421 V!18421) Unit!13654)

(assert (=> b!468571 (= lt!212088 (addSameAsAddTwiceSameKeyDiffValues!97 lt!212086 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212084 () ListLongMap!7501)

(declare-fun getCurrentListMap!2178 (array!29707 array!29709 (_ BitVec 32) (_ BitVec 32) V!18421 V!18421 (_ BitVec 32) Int) ListLongMap!7501)

(assert (=> b!468571 (= lt!212084 (getCurrentListMap!2178 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212085 () ListLongMap!7501)

(assert (=> b!468571 (= lt!212085 (getCurrentListMap!2178 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468572 () Bool)

(declare-fun res!280091 () Bool)

(assert (=> b!468572 (=> (not res!280091) (not e!274287))))

(declare-datatypes ((List!8695 0))(
  ( (Nil!8692) (Cons!8691 (h!9547 (_ BitVec 64)) (t!14661 List!8695)) )
))
(declare-fun arrayNoDuplicates!0 (array!29707 (_ BitVec 32) List!8695) Bool)

(assert (=> b!468572 (= res!280091 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8692))))

(declare-fun mapNonEmpty!21175 () Bool)

(declare-fun tp!40693 () Bool)

(assert (=> mapNonEmpty!21175 (= mapRes!21175 (and tp!40693 e!274285))))

(declare-fun mapKey!21175 () (_ BitVec 32))

(declare-fun mapRest!21175 () (Array (_ BitVec 32) ValueCell!6150))

(declare-fun mapValue!21175 () ValueCell!6150)

(assert (=> mapNonEmpty!21175 (= (arr!14277 _values!833) (store mapRest!21175 mapKey!21175 mapValue!21175))))

(declare-fun b!468573 () Bool)

(declare-fun e!274288 () Bool)

(assert (=> b!468573 (= e!274286 (and e!274288 mapRes!21175))))

(declare-fun condMapEmpty!21175 () Bool)

(declare-fun mapDefault!21175 () ValueCell!6150)

(assert (=> b!468573 (= condMapEmpty!21175 (= (arr!14277 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6150)) mapDefault!21175)))))

(declare-fun b!468574 () Bool)

(assert (=> b!468574 (= e!274288 tp_is_empty!12987)))

(assert (= (and start!41994 res!280094) b!468568))

(assert (= (and b!468568 res!280092) b!468570))

(assert (= (and b!468570 res!280093) b!468572))

(assert (= (and b!468572 res!280091) b!468567))

(assert (= (and b!468567 (not res!280090)) b!468571))

(assert (= (and b!468573 condMapEmpty!21175) mapIsEmpty!21175))

(assert (= (and b!468573 (not condMapEmpty!21175)) mapNonEmpty!21175))

(get-info :version)

(assert (= (and mapNonEmpty!21175 ((_ is ValueCellFull!6150) mapValue!21175)) b!468569))

(assert (= (and b!468573 ((_ is ValueCellFull!6150) mapDefault!21175)) b!468574))

(assert (= start!41994 b!468573))

(declare-fun m!450621 () Bool)

(assert (=> b!468572 m!450621))

(declare-fun m!450623 () Bool)

(assert (=> start!41994 m!450623))

(declare-fun m!450625 () Bool)

(assert (=> start!41994 m!450625))

(declare-fun m!450627 () Bool)

(assert (=> start!41994 m!450627))

(declare-fun m!450629 () Bool)

(assert (=> b!468571 m!450629))

(declare-fun m!450631 () Bool)

(assert (=> b!468571 m!450631))

(assert (=> b!468571 m!450629))

(declare-fun m!450633 () Bool)

(assert (=> b!468571 m!450633))

(declare-fun m!450635 () Bool)

(assert (=> b!468571 m!450635))

(declare-fun m!450637 () Bool)

(assert (=> b!468571 m!450637))

(declare-fun m!450639 () Bool)

(assert (=> b!468571 m!450639))

(declare-fun m!450641 () Bool)

(assert (=> mapNonEmpty!21175 m!450641))

(declare-fun m!450643 () Bool)

(assert (=> b!468570 m!450643))

(declare-fun m!450645 () Bool)

(assert (=> b!468567 m!450645))

(declare-fun m!450647 () Bool)

(assert (=> b!468567 m!450647))

(declare-fun m!450649 () Bool)

(assert (=> b!468567 m!450649))

(check-sat (not b!468570) (not b!468571) (not b!468567) (not mapNonEmpty!21175) (not start!41994) tp_is_empty!12987 b_and!19975 (not b_next!11559) (not b!468572))
(check-sat b_and!19975 (not b_next!11559))
