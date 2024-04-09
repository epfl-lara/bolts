; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70584 () Bool)

(assert start!70584)

(declare-fun b_free!12867 () Bool)

(declare-fun b_next!12867 () Bool)

(assert (=> start!70584 (= b_free!12867 (not b_next!12867))))

(declare-fun tp!45336 () Bool)

(declare-fun b_and!21727 () Bool)

(assert (=> start!70584 (= tp!45336 b_and!21727)))

(declare-fun res!559312 () Bool)

(declare-fun e!455167 () Bool)

(assert (=> start!70584 (=> (not res!559312) (not e!455167))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70584 (= res!559312 (validMask!0 mask!1312))))

(assert (=> start!70584 e!455167))

(declare-fun tp_is_empty!14577 () Bool)

(assert (=> start!70584 tp_is_empty!14577))

(declare-datatypes ((array!45322 0))(
  ( (array!45323 (arr!21710 (Array (_ BitVec 32) (_ BitVec 64))) (size!22131 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45322)

(declare-fun array_inv!17325 (array!45322) Bool)

(assert (=> start!70584 (array_inv!17325 _keys!976)))

(assert (=> start!70584 true))

(declare-datatypes ((V!24437 0))(
  ( (V!24438 (val!7336 Int)) )
))
(declare-datatypes ((ValueCell!6873 0))(
  ( (ValueCellFull!6873 (v!9762 V!24437)) (EmptyCell!6873) )
))
(declare-datatypes ((array!45324 0))(
  ( (array!45325 (arr!21711 (Array (_ BitVec 32) ValueCell!6873)) (size!22132 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45324)

(declare-fun e!455168 () Bool)

(declare-fun array_inv!17326 (array!45324) Bool)

(assert (=> start!70584 (and (array_inv!17326 _values!788) e!455168)))

(assert (=> start!70584 tp!45336))

(declare-fun b!819497 () Bool)

(declare-fun e!455166 () Bool)

(assert (=> b!819497 (= e!455166 true)))

(declare-datatypes ((tuple2!9666 0))(
  ( (tuple2!9667 (_1!4843 (_ BitVec 64)) (_2!4843 V!24437)) )
))
(declare-datatypes ((List!15526 0))(
  ( (Nil!15523) (Cons!15522 (h!16651 tuple2!9666) (t!21865 List!15526)) )
))
(declare-datatypes ((ListLongMap!8503 0))(
  ( (ListLongMap!8504 (toList!4267 List!15526)) )
))
(declare-fun lt!367892 () ListLongMap!8503)

(declare-fun lt!367897 () ListLongMap!8503)

(declare-fun lt!367893 () tuple2!9666)

(declare-fun lt!367900 () tuple2!9666)

(declare-fun +!1810 (ListLongMap!8503 tuple2!9666) ListLongMap!8503)

(assert (=> b!819497 (= lt!367892 (+!1810 (+!1810 lt!367897 lt!367900) lt!367893))))

(declare-fun lt!367899 () ListLongMap!8503)

(declare-fun lt!367896 () ListLongMap!8503)

(assert (=> b!819497 (= (+!1810 lt!367899 lt!367893) (+!1810 lt!367896 lt!367893))))

(declare-datatypes ((Unit!27985 0))(
  ( (Unit!27986) )
))
(declare-fun lt!367898 () Unit!27985)

(declare-fun zeroValueBefore!34 () V!24437)

(declare-fun zeroValueAfter!34 () V!24437)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!187 (ListLongMap!8503 (_ BitVec 64) V!24437 V!24437) Unit!27985)

(assert (=> b!819497 (= lt!367898 (addSameAsAddTwiceSameKeyDiffValues!187 lt!367899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819497 (= lt!367893 (tuple2!9667 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455163 () Bool)

(assert (=> b!819497 e!455163))

(declare-fun res!559311 () Bool)

(assert (=> b!819497 (=> (not res!559311) (not e!455163))))

(declare-fun lt!367894 () ListLongMap!8503)

(assert (=> b!819497 (= res!559311 (= lt!367894 lt!367896))))

(assert (=> b!819497 (= lt!367896 (+!1810 lt!367899 lt!367900))))

(assert (=> b!819497 (= lt!367900 (tuple2!9667 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!367901 () ListLongMap!8503)

(declare-fun minValue!754 () V!24437)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2422 (array!45322 array!45324 (_ BitVec 32) (_ BitVec 32) V!24437 V!24437 (_ BitVec 32) Int) ListLongMap!8503)

(assert (=> b!819497 (= lt!367901 (getCurrentListMap!2422 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819497 (= lt!367894 (getCurrentListMap!2422 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23467 () Bool)

(declare-fun mapRes!23467 () Bool)

(assert (=> mapIsEmpty!23467 mapRes!23467))

(declare-fun b!819498 () Bool)

(declare-fun e!455165 () Bool)

(assert (=> b!819498 (= e!455168 (and e!455165 mapRes!23467))))

(declare-fun condMapEmpty!23467 () Bool)

(declare-fun mapDefault!23467 () ValueCell!6873)

(assert (=> b!819498 (= condMapEmpty!23467 (= (arr!21711 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6873)) mapDefault!23467)))))

(declare-fun mapNonEmpty!23467 () Bool)

(declare-fun tp!45337 () Bool)

(declare-fun e!455162 () Bool)

(assert (=> mapNonEmpty!23467 (= mapRes!23467 (and tp!45337 e!455162))))

(declare-fun mapRest!23467 () (Array (_ BitVec 32) ValueCell!6873))

(declare-fun mapKey!23467 () (_ BitVec 32))

(declare-fun mapValue!23467 () ValueCell!6873)

(assert (=> mapNonEmpty!23467 (= (arr!21711 _values!788) (store mapRest!23467 mapKey!23467 mapValue!23467))))

(declare-fun b!819499 () Bool)

(declare-fun res!559314 () Bool)

(assert (=> b!819499 (=> (not res!559314) (not e!455167))))

(assert (=> b!819499 (= res!559314 (and (= (size!22132 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22131 _keys!976) (size!22132 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819500 () Bool)

(declare-fun res!559315 () Bool)

(assert (=> b!819500 (=> (not res!559315) (not e!455167))))

(declare-datatypes ((List!15527 0))(
  ( (Nil!15524) (Cons!15523 (h!16652 (_ BitVec 64)) (t!21866 List!15527)) )
))
(declare-fun arrayNoDuplicates!0 (array!45322 (_ BitVec 32) List!15527) Bool)

(assert (=> b!819500 (= res!559315 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15524))))

(declare-fun b!819501 () Bool)

(declare-fun res!559313 () Bool)

(assert (=> b!819501 (=> (not res!559313) (not e!455167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45322 (_ BitVec 32)) Bool)

(assert (=> b!819501 (= res!559313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819502 () Bool)

(assert (=> b!819502 (= e!455162 tp_is_empty!14577)))

(declare-fun b!819503 () Bool)

(assert (=> b!819503 (= e!455165 tp_is_empty!14577)))

(declare-fun b!819504 () Bool)

(assert (=> b!819504 (= e!455167 (not e!455166))))

(declare-fun res!559310 () Bool)

(assert (=> b!819504 (=> res!559310 e!455166)))

(assert (=> b!819504 (= res!559310 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!819504 (= lt!367899 lt!367897)))

(declare-fun lt!367895 () Unit!27985)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!421 (array!45322 array!45324 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24437 V!24437 V!24437 V!24437 (_ BitVec 32) Int) Unit!27985)

(assert (=> b!819504 (= lt!367895 (lemmaNoChangeToArrayThenSameMapNoExtras!421 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2305 (array!45322 array!45324 (_ BitVec 32) (_ BitVec 32) V!24437 V!24437 (_ BitVec 32) Int) ListLongMap!8503)

(assert (=> b!819504 (= lt!367897 (getCurrentListMapNoExtraKeys!2305 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819504 (= lt!367899 (getCurrentListMapNoExtraKeys!2305 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819505 () Bool)

(assert (=> b!819505 (= e!455163 (= lt!367901 (+!1810 lt!367897 (tuple2!9667 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and start!70584 res!559312) b!819499))

(assert (= (and b!819499 res!559314) b!819501))

(assert (= (and b!819501 res!559313) b!819500))

(assert (= (and b!819500 res!559315) b!819504))

(assert (= (and b!819504 (not res!559310)) b!819497))

(assert (= (and b!819497 res!559311) b!819505))

(assert (= (and b!819498 condMapEmpty!23467) mapIsEmpty!23467))

(assert (= (and b!819498 (not condMapEmpty!23467)) mapNonEmpty!23467))

(get-info :version)

(assert (= (and mapNonEmpty!23467 ((_ is ValueCellFull!6873) mapValue!23467)) b!819502))

(assert (= (and b!819498 ((_ is ValueCellFull!6873) mapDefault!23467)) b!819503))

(assert (= start!70584 b!819498))

(declare-fun m!761285 () Bool)

(assert (=> b!819501 m!761285))

(declare-fun m!761287 () Bool)

(assert (=> b!819504 m!761287))

(declare-fun m!761289 () Bool)

(assert (=> b!819504 m!761289))

(declare-fun m!761291 () Bool)

(assert (=> b!819504 m!761291))

(declare-fun m!761293 () Bool)

(assert (=> b!819497 m!761293))

(declare-fun m!761295 () Bool)

(assert (=> b!819497 m!761295))

(declare-fun m!761297 () Bool)

(assert (=> b!819497 m!761297))

(declare-fun m!761299 () Bool)

(assert (=> b!819497 m!761299))

(declare-fun m!761301 () Bool)

(assert (=> b!819497 m!761301))

(declare-fun m!761303 () Bool)

(assert (=> b!819497 m!761303))

(declare-fun m!761305 () Bool)

(assert (=> b!819497 m!761305))

(declare-fun m!761307 () Bool)

(assert (=> b!819497 m!761307))

(assert (=> b!819497 m!761303))

(declare-fun m!761309 () Bool)

(assert (=> start!70584 m!761309))

(declare-fun m!761311 () Bool)

(assert (=> start!70584 m!761311))

(declare-fun m!761313 () Bool)

(assert (=> start!70584 m!761313))

(declare-fun m!761315 () Bool)

(assert (=> b!819505 m!761315))

(declare-fun m!761317 () Bool)

(assert (=> b!819500 m!761317))

(declare-fun m!761319 () Bool)

(assert (=> mapNonEmpty!23467 m!761319))

(check-sat (not b!819505) (not b!819497) (not b_next!12867) b_and!21727 (not start!70584) tp_is_empty!14577 (not mapNonEmpty!23467) (not b!819504) (not b!819500) (not b!819501))
(check-sat b_and!21727 (not b_next!12867))
