; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105528 () Bool)

(assert start!105528)

(declare-fun b_free!27129 () Bool)

(declare-fun b_next!27129 () Bool)

(assert (=> start!105528 (= b_free!27129 (not b_next!27129))))

(declare-fun tp!94904 () Bool)

(declare-fun b_and!44995 () Bool)

(assert (=> start!105528 (= tp!94904 b_and!44995)))

(declare-fun b!1256717 () Bool)

(declare-fun res!837844 () Bool)

(declare-fun e!714529 () Bool)

(assert (=> b!1256717 (=> (not res!837844) (not e!714529))))

(declare-datatypes ((array!81697 0))(
  ( (array!81698 (arr!39402 (Array (_ BitVec 32) (_ BitVec 64))) (size!39939 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81697)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81697 (_ BitVec 32)) Bool)

(assert (=> b!1256717 (= res!837844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256718 () Bool)

(declare-fun res!837847 () Bool)

(assert (=> b!1256718 (=> (not res!837847) (not e!714529))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48073 0))(
  ( (V!48074 (val!16078 Int)) )
))
(declare-datatypes ((ValueCell!15252 0))(
  ( (ValueCellFull!15252 (v!18779 V!48073)) (EmptyCell!15252) )
))
(declare-datatypes ((array!81699 0))(
  ( (array!81700 (arr!39403 (Array (_ BitVec 32) ValueCell!15252)) (size!39940 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81699)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256718 (= res!837847 (and (= (size!39940 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39939 _keys!1118) (size!39940 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49834 () Bool)

(declare-fun mapRes!49834 () Bool)

(assert (=> mapIsEmpty!49834 mapRes!49834))

(declare-fun b!1256719 () Bool)

(declare-fun e!714528 () Bool)

(declare-fun e!714524 () Bool)

(assert (=> b!1256719 (= e!714528 e!714524)))

(declare-fun res!837846 () Bool)

(assert (=> b!1256719 (=> res!837846 e!714524)))

(declare-datatypes ((tuple2!20924 0))(
  ( (tuple2!20925 (_1!10472 (_ BitVec 64)) (_2!10472 V!48073)) )
))
(declare-datatypes ((List!28158 0))(
  ( (Nil!28155) (Cons!28154 (h!29363 tuple2!20924) (t!41654 List!28158)) )
))
(declare-datatypes ((ListLongMap!18809 0))(
  ( (ListLongMap!18810 (toList!9420 List!28158)) )
))
(declare-fun lt!568301 () ListLongMap!18809)

(declare-fun contains!7576 (ListLongMap!18809 (_ BitVec 64)) Bool)

(assert (=> b!1256719 (= res!837846 (contains!7576 lt!568301 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48073)

(declare-fun minValueBefore!43 () V!48073)

(declare-fun getCurrentListMap!4580 (array!81697 array!81699 (_ BitVec 32) (_ BitVec 32) V!48073 V!48073 (_ BitVec 32) Int) ListLongMap!18809)

(assert (=> b!1256719 (= lt!568301 (getCurrentListMap!4580 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256720 () Bool)

(declare-fun res!837848 () Bool)

(assert (=> b!1256720 (=> (not res!837848) (not e!714529))))

(declare-datatypes ((List!28159 0))(
  ( (Nil!28156) (Cons!28155 (h!29364 (_ BitVec 64)) (t!41655 List!28159)) )
))
(declare-fun arrayNoDuplicates!0 (array!81697 (_ BitVec 32) List!28159) Bool)

(assert (=> b!1256720 (= res!837848 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28156))))

(declare-fun mapNonEmpty!49834 () Bool)

(declare-fun tp!94905 () Bool)

(declare-fun e!714525 () Bool)

(assert (=> mapNonEmpty!49834 (= mapRes!49834 (and tp!94905 e!714525))))

(declare-fun mapRest!49834 () (Array (_ BitVec 32) ValueCell!15252))

(declare-fun mapValue!49834 () ValueCell!15252)

(declare-fun mapKey!49834 () (_ BitVec 32))

(assert (=> mapNonEmpty!49834 (= (arr!39403 _values!914) (store mapRest!49834 mapKey!49834 mapValue!49834))))

(declare-fun b!1256721 () Bool)

(declare-fun tp_is_empty!32031 () Bool)

(assert (=> b!1256721 (= e!714525 tp_is_empty!32031)))

(declare-fun b!1256722 () Bool)

(declare-fun e!714530 () Bool)

(assert (=> b!1256722 (= e!714530 tp_is_empty!32031)))

(declare-fun res!837845 () Bool)

(assert (=> start!105528 (=> (not res!837845) (not e!714529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105528 (= res!837845 (validMask!0 mask!1466))))

(assert (=> start!105528 e!714529))

(assert (=> start!105528 true))

(assert (=> start!105528 tp!94904))

(assert (=> start!105528 tp_is_empty!32031))

(declare-fun array_inv!29963 (array!81697) Bool)

(assert (=> start!105528 (array_inv!29963 _keys!1118)))

(declare-fun e!714527 () Bool)

(declare-fun array_inv!29964 (array!81699) Bool)

(assert (=> start!105528 (and (array_inv!29964 _values!914) e!714527)))

(declare-fun b!1256723 () Bool)

(assert (=> b!1256723 (= e!714524 true)))

(declare-fun -!2097 (ListLongMap!18809 (_ BitVec 64)) ListLongMap!18809)

(assert (=> b!1256723 (= (-!2097 lt!568301 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568301)))

(declare-datatypes ((Unit!41812 0))(
  ( (Unit!41813) )
))
(declare-fun lt!568300 () Unit!41812)

(declare-fun removeNotPresentStillSame!130 (ListLongMap!18809 (_ BitVec 64)) Unit!41812)

(assert (=> b!1256723 (= lt!568300 (removeNotPresentStillSame!130 lt!568301 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256724 () Bool)

(assert (=> b!1256724 (= e!714527 (and e!714530 mapRes!49834))))

(declare-fun condMapEmpty!49834 () Bool)

(declare-fun mapDefault!49834 () ValueCell!15252)

(assert (=> b!1256724 (= condMapEmpty!49834 (= (arr!39403 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15252)) mapDefault!49834)))))

(declare-fun b!1256725 () Bool)

(assert (=> b!1256725 (= e!714529 (not e!714528))))

(declare-fun res!837849 () Bool)

(assert (=> b!1256725 (=> res!837849 e!714528)))

(assert (=> b!1256725 (= res!837849 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568303 () ListLongMap!18809)

(declare-fun lt!568299 () ListLongMap!18809)

(assert (=> b!1256725 (= lt!568303 lt!568299)))

(declare-fun minValueAfter!43 () V!48073)

(declare-fun lt!568302 () Unit!41812)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1092 (array!81697 array!81699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48073 V!48073 V!48073 V!48073 (_ BitVec 32) Int) Unit!41812)

(assert (=> b!1256725 (= lt!568302 (lemmaNoChangeToArrayThenSameMapNoExtras!1092 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5774 (array!81697 array!81699 (_ BitVec 32) (_ BitVec 32) V!48073 V!48073 (_ BitVec 32) Int) ListLongMap!18809)

(assert (=> b!1256725 (= lt!568299 (getCurrentListMapNoExtraKeys!5774 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256725 (= lt!568303 (getCurrentListMapNoExtraKeys!5774 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105528 res!837845) b!1256718))

(assert (= (and b!1256718 res!837847) b!1256717))

(assert (= (and b!1256717 res!837844) b!1256720))

(assert (= (and b!1256720 res!837848) b!1256725))

(assert (= (and b!1256725 (not res!837849)) b!1256719))

(assert (= (and b!1256719 (not res!837846)) b!1256723))

(assert (= (and b!1256724 condMapEmpty!49834) mapIsEmpty!49834))

(assert (= (and b!1256724 (not condMapEmpty!49834)) mapNonEmpty!49834))

(get-info :version)

(assert (= (and mapNonEmpty!49834 ((_ is ValueCellFull!15252) mapValue!49834)) b!1256721))

(assert (= (and b!1256724 ((_ is ValueCellFull!15252) mapDefault!49834)) b!1256722))

(assert (= start!105528 b!1256724))

(declare-fun m!1157395 () Bool)

(assert (=> b!1256725 m!1157395))

(declare-fun m!1157397 () Bool)

(assert (=> b!1256725 m!1157397))

(declare-fun m!1157399 () Bool)

(assert (=> b!1256725 m!1157399))

(declare-fun m!1157401 () Bool)

(assert (=> b!1256717 m!1157401))

(declare-fun m!1157403 () Bool)

(assert (=> mapNonEmpty!49834 m!1157403))

(declare-fun m!1157405 () Bool)

(assert (=> b!1256723 m!1157405))

(declare-fun m!1157407 () Bool)

(assert (=> b!1256723 m!1157407))

(declare-fun m!1157409 () Bool)

(assert (=> b!1256719 m!1157409))

(declare-fun m!1157411 () Bool)

(assert (=> b!1256719 m!1157411))

(declare-fun m!1157413 () Bool)

(assert (=> start!105528 m!1157413))

(declare-fun m!1157415 () Bool)

(assert (=> start!105528 m!1157415))

(declare-fun m!1157417 () Bool)

(assert (=> start!105528 m!1157417))

(declare-fun m!1157419 () Bool)

(assert (=> b!1256720 m!1157419))

(check-sat (not b!1256723) (not start!105528) tp_is_empty!32031 b_and!44995 (not b!1256719) (not b!1256720) (not mapNonEmpty!49834) (not b!1256725) (not b_next!27129) (not b!1256717))
(check-sat b_and!44995 (not b_next!27129))
