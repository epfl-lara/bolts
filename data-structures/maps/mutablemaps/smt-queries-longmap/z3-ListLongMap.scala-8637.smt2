; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105162 () Bool)

(assert start!105162)

(declare-fun b_free!26859 () Bool)

(declare-fun b_next!26859 () Bool)

(assert (=> start!105162 (= b_free!26859 (not b_next!26859))))

(declare-fun tp!94080 () Bool)

(declare-fun b_and!44673 () Bool)

(assert (=> start!105162 (= tp!94080 b_and!44673)))

(declare-fun b!1252678 () Bool)

(declare-fun res!835467 () Bool)

(declare-fun e!711568 () Bool)

(assert (=> b!1252678 (=> (not res!835467) (not e!711568))))

(declare-datatypes ((array!81163 0))(
  ( (array!81164 (arr!39140 (Array (_ BitVec 32) (_ BitVec 64))) (size!39677 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81163)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81163 (_ BitVec 32)) Bool)

(assert (=> b!1252678 (= res!835467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252680 () Bool)

(declare-fun e!711567 () Bool)

(assert (=> b!1252680 (= e!711567 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47713 0))(
  ( (V!47714 (val!15943 Int)) )
))
(declare-fun zeroValue!871 () V!47713)

(declare-datatypes ((ValueCell!15117 0))(
  ( (ValueCellFull!15117 (v!18641 V!47713)) (EmptyCell!15117) )
))
(declare-datatypes ((array!81165 0))(
  ( (array!81166 (arr!39141 (Array (_ BitVec 32) ValueCell!15117)) (size!39678 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81165)

(declare-fun minValueBefore!43 () V!47713)

(declare-datatypes ((tuple2!20712 0))(
  ( (tuple2!20713 (_1!10366 (_ BitVec 64)) (_2!10366 V!47713)) )
))
(declare-datatypes ((List!27959 0))(
  ( (Nil!27956) (Cons!27955 (h!29164 tuple2!20712) (t!41445 List!27959)) )
))
(declare-datatypes ((ListLongMap!18597 0))(
  ( (ListLongMap!18598 (toList!9314 List!27959)) )
))
(declare-fun lt!565435 () ListLongMap!18597)

(declare-fun getCurrentListMap!4509 (array!81163 array!81165 (_ BitVec 32) (_ BitVec 32) V!47713 V!47713 (_ BitVec 32) Int) ListLongMap!18597)

(assert (=> b!1252680 (= lt!565435 (getCurrentListMap!4509 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49414 () Bool)

(declare-fun mapRes!49414 () Bool)

(assert (=> mapIsEmpty!49414 mapRes!49414))

(declare-fun b!1252681 () Bool)

(declare-fun e!711570 () Bool)

(declare-fun tp_is_empty!31761 () Bool)

(assert (=> b!1252681 (= e!711570 tp_is_empty!31761)))

(declare-fun b!1252682 () Bool)

(declare-fun res!835466 () Bool)

(assert (=> b!1252682 (=> (not res!835466) (not e!711568))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252682 (= res!835466 (and (= (size!39678 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39677 _keys!1118) (size!39678 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252683 () Bool)

(declare-fun res!835468 () Bool)

(assert (=> b!1252683 (=> (not res!835468) (not e!711568))))

(declare-datatypes ((List!27960 0))(
  ( (Nil!27957) (Cons!27956 (h!29165 (_ BitVec 64)) (t!41446 List!27960)) )
))
(declare-fun arrayNoDuplicates!0 (array!81163 (_ BitVec 32) List!27960) Bool)

(assert (=> b!1252683 (= res!835468 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27957))))

(declare-fun mapNonEmpty!49414 () Bool)

(declare-fun tp!94079 () Bool)

(assert (=> mapNonEmpty!49414 (= mapRes!49414 (and tp!94079 e!711570))))

(declare-fun mapValue!49414 () ValueCell!15117)

(declare-fun mapRest!49414 () (Array (_ BitVec 32) ValueCell!15117))

(declare-fun mapKey!49414 () (_ BitVec 32))

(assert (=> mapNonEmpty!49414 (= (arr!39141 _values!914) (store mapRest!49414 mapKey!49414 mapValue!49414))))

(declare-fun b!1252679 () Bool)

(declare-fun e!711569 () Bool)

(assert (=> b!1252679 (= e!711569 tp_is_empty!31761)))

(declare-fun res!835464 () Bool)

(assert (=> start!105162 (=> (not res!835464) (not e!711568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105162 (= res!835464 (validMask!0 mask!1466))))

(assert (=> start!105162 e!711568))

(assert (=> start!105162 true))

(assert (=> start!105162 tp!94080))

(assert (=> start!105162 tp_is_empty!31761))

(declare-fun array_inv!29781 (array!81163) Bool)

(assert (=> start!105162 (array_inv!29781 _keys!1118)))

(declare-fun e!711571 () Bool)

(declare-fun array_inv!29782 (array!81165) Bool)

(assert (=> start!105162 (and (array_inv!29782 _values!914) e!711571)))

(declare-fun b!1252684 () Bool)

(assert (=> b!1252684 (= e!711571 (and e!711569 mapRes!49414))))

(declare-fun condMapEmpty!49414 () Bool)

(declare-fun mapDefault!49414 () ValueCell!15117)

(assert (=> b!1252684 (= condMapEmpty!49414 (= (arr!39141 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15117)) mapDefault!49414)))))

(declare-fun b!1252685 () Bool)

(assert (=> b!1252685 (= e!711568 (not e!711567))))

(declare-fun res!835465 () Bool)

(assert (=> b!1252685 (=> res!835465 e!711567)))

(assert (=> b!1252685 (= res!835465 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565438 () ListLongMap!18597)

(declare-fun lt!565437 () ListLongMap!18597)

(assert (=> b!1252685 (= lt!565438 lt!565437)))

(declare-fun minValueAfter!43 () V!47713)

(declare-datatypes ((Unit!41601 0))(
  ( (Unit!41602) )
))
(declare-fun lt!565436 () Unit!41601)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1003 (array!81163 array!81165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47713 V!47713 V!47713 V!47713 (_ BitVec 32) Int) Unit!41601)

(assert (=> b!1252685 (= lt!565436 (lemmaNoChangeToArrayThenSameMapNoExtras!1003 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5685 (array!81163 array!81165 (_ BitVec 32) (_ BitVec 32) V!47713 V!47713 (_ BitVec 32) Int) ListLongMap!18597)

(assert (=> b!1252685 (= lt!565437 (getCurrentListMapNoExtraKeys!5685 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252685 (= lt!565438 (getCurrentListMapNoExtraKeys!5685 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105162 res!835464) b!1252682))

(assert (= (and b!1252682 res!835466) b!1252678))

(assert (= (and b!1252678 res!835467) b!1252683))

(assert (= (and b!1252683 res!835468) b!1252685))

(assert (= (and b!1252685 (not res!835465)) b!1252680))

(assert (= (and b!1252684 condMapEmpty!49414) mapIsEmpty!49414))

(assert (= (and b!1252684 (not condMapEmpty!49414)) mapNonEmpty!49414))

(get-info :version)

(assert (= (and mapNonEmpty!49414 ((_ is ValueCellFull!15117) mapValue!49414)) b!1252681))

(assert (= (and b!1252684 ((_ is ValueCellFull!15117) mapDefault!49414)) b!1252679))

(assert (= start!105162 b!1252684))

(declare-fun m!1153291 () Bool)

(assert (=> mapNonEmpty!49414 m!1153291))

(declare-fun m!1153293 () Bool)

(assert (=> b!1252680 m!1153293))

(declare-fun m!1153295 () Bool)

(assert (=> b!1252678 m!1153295))

(declare-fun m!1153297 () Bool)

(assert (=> b!1252683 m!1153297))

(declare-fun m!1153299 () Bool)

(assert (=> b!1252685 m!1153299))

(declare-fun m!1153301 () Bool)

(assert (=> b!1252685 m!1153301))

(declare-fun m!1153303 () Bool)

(assert (=> b!1252685 m!1153303))

(declare-fun m!1153305 () Bool)

(assert (=> start!105162 m!1153305))

(declare-fun m!1153307 () Bool)

(assert (=> start!105162 m!1153307))

(declare-fun m!1153309 () Bool)

(assert (=> start!105162 m!1153309))

(check-sat (not b!1252683) (not mapNonEmpty!49414) tp_is_empty!31761 (not b_next!26859) (not start!105162) (not b!1252680) (not b!1252685) b_and!44673 (not b!1252678))
(check-sat b_and!44673 (not b_next!26859))
