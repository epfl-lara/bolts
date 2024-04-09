; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105754 () Bool)

(assert start!105754)

(declare-fun b_free!27303 () Bool)

(declare-fun b_next!27303 () Bool)

(assert (=> start!105754 (= b_free!27303 (not b_next!27303))))

(declare-fun tp!95436 () Bool)

(declare-fun b_and!45197 () Bool)

(assert (=> start!105754 (= tp!95436 b_and!45197)))

(declare-fun mapIsEmpty!50104 () Bool)

(declare-fun mapRes!50104 () Bool)

(assert (=> mapIsEmpty!50104 mapRes!50104))

(declare-fun e!716358 () Bool)

(declare-datatypes ((V!48305 0))(
  ( (V!48306 (val!16165 Int)) )
))
(declare-datatypes ((tuple2!21052 0))(
  ( (tuple2!21053 (_1!10536 (_ BitVec 64)) (_2!10536 V!48305)) )
))
(declare-datatypes ((List!28280 0))(
  ( (Nil!28277) (Cons!28276 (h!29485 tuple2!21052) (t!41782 List!28280)) )
))
(declare-datatypes ((ListLongMap!18937 0))(
  ( (ListLongMap!18938 (toList!9484 List!28280)) )
))
(declare-fun lt!569866 () ListLongMap!18937)

(declare-fun b!1259213 () Bool)

(declare-fun lt!569864 () ListLongMap!18937)

(declare-fun lt!569863 () tuple2!21052)

(declare-fun +!4182 (ListLongMap!18937 tuple2!21052) ListLongMap!18937)

(assert (=> b!1259213 (= e!716358 (= lt!569866 (+!4182 lt!569864 lt!569863)))))

(declare-fun b!1259214 () Bool)

(declare-fun e!716363 () Bool)

(declare-fun e!716359 () Bool)

(assert (=> b!1259214 (= e!716363 (not e!716359))))

(declare-fun res!839322 () Bool)

(assert (=> b!1259214 (=> res!839322 e!716359)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259214 (= res!839322 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569869 () ListLongMap!18937)

(assert (=> b!1259214 (= lt!569869 lt!569864)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41937 0))(
  ( (Unit!41938) )
))
(declare-fun lt!569867 () Unit!41937)

(declare-fun minValueAfter!43 () V!48305)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82023 0))(
  ( (array!82024 (arr!39562 (Array (_ BitVec 32) (_ BitVec 64))) (size!40099 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82023)

(declare-datatypes ((ValueCell!15339 0))(
  ( (ValueCellFull!15339 (v!18867 V!48305)) (EmptyCell!15339) )
))
(declare-datatypes ((array!82025 0))(
  ( (array!82026 (arr!39563 (Array (_ BitVec 32) ValueCell!15339)) (size!40100 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82025)

(declare-fun minValueBefore!43 () V!48305)

(declare-fun zeroValue!871 () V!48305)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1150 (array!82023 array!82025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48305 V!48305 V!48305 V!48305 (_ BitVec 32) Int) Unit!41937)

(assert (=> b!1259214 (= lt!569867 (lemmaNoChangeToArrayThenSameMapNoExtras!1150 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5832 (array!82023 array!82025 (_ BitVec 32) (_ BitVec 32) V!48305 V!48305 (_ BitVec 32) Int) ListLongMap!18937)

(assert (=> b!1259214 (= lt!569864 (getCurrentListMapNoExtraKeys!5832 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259214 (= lt!569869 (getCurrentListMapNoExtraKeys!5832 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259215 () Bool)

(declare-fun res!839317 () Bool)

(assert (=> b!1259215 (=> (not res!839317) (not e!716363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82023 (_ BitVec 32)) Bool)

(assert (=> b!1259215 (= res!839317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259216 () Bool)

(declare-fun e!716357 () Bool)

(declare-fun tp_is_empty!32205 () Bool)

(assert (=> b!1259216 (= e!716357 tp_is_empty!32205)))

(declare-fun b!1259217 () Bool)

(declare-fun e!716360 () Bool)

(assert (=> b!1259217 (= e!716360 tp_is_empty!32205)))

(declare-fun b!1259218 () Bool)

(assert (=> b!1259218 (= e!716359 true)))

(declare-fun lt!569871 () ListLongMap!18937)

(declare-fun lt!569872 () ListLongMap!18937)

(declare-fun -!2117 (ListLongMap!18937 (_ BitVec 64)) ListLongMap!18937)

(assert (=> b!1259218 (= lt!569871 (-!2117 lt!569872 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569870 () ListLongMap!18937)

(declare-fun lt!569868 () ListLongMap!18937)

(assert (=> b!1259218 (= (-!2117 lt!569870 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569868)))

(declare-fun lt!569865 () Unit!41937)

(declare-fun addThenRemoveForNewKeyIsSame!342 (ListLongMap!18937 (_ BitVec 64) V!48305) Unit!41937)

(assert (=> b!1259218 (= lt!569865 (addThenRemoveForNewKeyIsSame!342 lt!569868 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259218 e!716358))

(declare-fun res!839320 () Bool)

(assert (=> b!1259218 (=> (not res!839320) (not e!716358))))

(assert (=> b!1259218 (= res!839320 (= lt!569872 lt!569870))))

(assert (=> b!1259218 (= lt!569870 (+!4182 lt!569868 (tuple2!21053 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1259218 (= lt!569868 (+!4182 lt!569869 lt!569863))))

(assert (=> b!1259218 (= lt!569863 (tuple2!21053 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4621 (array!82023 array!82025 (_ BitVec 32) (_ BitVec 32) V!48305 V!48305 (_ BitVec 32) Int) ListLongMap!18937)

(assert (=> b!1259218 (= lt!569866 (getCurrentListMap!4621 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259218 (= lt!569872 (getCurrentListMap!4621 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!839319 () Bool)

(assert (=> start!105754 (=> (not res!839319) (not e!716363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105754 (= res!839319 (validMask!0 mask!1466))))

(assert (=> start!105754 e!716363))

(assert (=> start!105754 true))

(assert (=> start!105754 tp!95436))

(assert (=> start!105754 tp_is_empty!32205))

(declare-fun array_inv!30077 (array!82023) Bool)

(assert (=> start!105754 (array_inv!30077 _keys!1118)))

(declare-fun e!716362 () Bool)

(declare-fun array_inv!30078 (array!82025) Bool)

(assert (=> start!105754 (and (array_inv!30078 _values!914) e!716362)))

(declare-fun b!1259219 () Bool)

(assert (=> b!1259219 (= e!716362 (and e!716357 mapRes!50104))))

(declare-fun condMapEmpty!50104 () Bool)

(declare-fun mapDefault!50104 () ValueCell!15339)

(assert (=> b!1259219 (= condMapEmpty!50104 (= (arr!39563 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15339)) mapDefault!50104)))))

(declare-fun b!1259220 () Bool)

(declare-fun res!839321 () Bool)

(assert (=> b!1259220 (=> (not res!839321) (not e!716363))))

(declare-datatypes ((List!28281 0))(
  ( (Nil!28278) (Cons!28277 (h!29486 (_ BitVec 64)) (t!41783 List!28281)) )
))
(declare-fun arrayNoDuplicates!0 (array!82023 (_ BitVec 32) List!28281) Bool)

(assert (=> b!1259220 (= res!839321 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28278))))

(declare-fun mapNonEmpty!50104 () Bool)

(declare-fun tp!95435 () Bool)

(assert (=> mapNonEmpty!50104 (= mapRes!50104 (and tp!95435 e!716360))))

(declare-fun mapValue!50104 () ValueCell!15339)

(declare-fun mapRest!50104 () (Array (_ BitVec 32) ValueCell!15339))

(declare-fun mapKey!50104 () (_ BitVec 32))

(assert (=> mapNonEmpty!50104 (= (arr!39563 _values!914) (store mapRest!50104 mapKey!50104 mapValue!50104))))

(declare-fun b!1259221 () Bool)

(declare-fun res!839318 () Bool)

(assert (=> b!1259221 (=> (not res!839318) (not e!716363))))

(assert (=> b!1259221 (= res!839318 (and (= (size!40100 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40099 _keys!1118) (size!40100 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105754 res!839319) b!1259221))

(assert (= (and b!1259221 res!839318) b!1259215))

(assert (= (and b!1259215 res!839317) b!1259220))

(assert (= (and b!1259220 res!839321) b!1259214))

(assert (= (and b!1259214 (not res!839322)) b!1259218))

(assert (= (and b!1259218 res!839320) b!1259213))

(assert (= (and b!1259219 condMapEmpty!50104) mapIsEmpty!50104))

(assert (= (and b!1259219 (not condMapEmpty!50104)) mapNonEmpty!50104))

(get-info :version)

(assert (= (and mapNonEmpty!50104 ((_ is ValueCellFull!15339) mapValue!50104)) b!1259217))

(assert (= (and b!1259219 ((_ is ValueCellFull!15339) mapDefault!50104)) b!1259216))

(assert (= start!105754 b!1259219))

(declare-fun m!1159699 () Bool)

(assert (=> b!1259215 m!1159699))

(declare-fun m!1159701 () Bool)

(assert (=> b!1259218 m!1159701))

(declare-fun m!1159703 () Bool)

(assert (=> b!1259218 m!1159703))

(declare-fun m!1159705 () Bool)

(assert (=> b!1259218 m!1159705))

(declare-fun m!1159707 () Bool)

(assert (=> b!1259218 m!1159707))

(declare-fun m!1159709 () Bool)

(assert (=> b!1259218 m!1159709))

(declare-fun m!1159711 () Bool)

(assert (=> b!1259218 m!1159711))

(declare-fun m!1159713 () Bool)

(assert (=> b!1259218 m!1159713))

(declare-fun m!1159715 () Bool)

(assert (=> b!1259213 m!1159715))

(declare-fun m!1159717 () Bool)

(assert (=> start!105754 m!1159717))

(declare-fun m!1159719 () Bool)

(assert (=> start!105754 m!1159719))

(declare-fun m!1159721 () Bool)

(assert (=> start!105754 m!1159721))

(declare-fun m!1159723 () Bool)

(assert (=> b!1259220 m!1159723))

(declare-fun m!1159725 () Bool)

(assert (=> mapNonEmpty!50104 m!1159725))

(declare-fun m!1159727 () Bool)

(assert (=> b!1259214 m!1159727))

(declare-fun m!1159729 () Bool)

(assert (=> b!1259214 m!1159729))

(declare-fun m!1159731 () Bool)

(assert (=> b!1259214 m!1159731))

(check-sat tp_is_empty!32205 (not b!1259214) (not b_next!27303) (not mapNonEmpty!50104) (not b!1259218) (not b!1259213) (not start!105754) (not b!1259220) b_and!45197 (not b!1259215))
(check-sat b_and!45197 (not b_next!27303))
