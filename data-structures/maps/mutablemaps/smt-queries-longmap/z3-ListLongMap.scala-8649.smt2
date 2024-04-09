; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105250 () Bool)

(assert start!105250)

(declare-fun b_free!26931 () Bool)

(declare-fun b_next!26931 () Bool)

(assert (=> start!105250 (= b_free!26931 (not b_next!26931))))

(declare-fun tp!94298 () Bool)

(declare-fun b_and!44755 () Bool)

(assert (=> start!105250 (= tp!94298 b_and!44755)))

(declare-fun res!836072 () Bool)

(declare-fun e!712319 () Bool)

(assert (=> start!105250 (=> (not res!836072) (not e!712319))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105250 (= res!836072 (validMask!0 mask!1466))))

(assert (=> start!105250 e!712319))

(assert (=> start!105250 true))

(assert (=> start!105250 tp!94298))

(declare-fun tp_is_empty!31833 () Bool)

(assert (=> start!105250 tp_is_empty!31833))

(declare-datatypes ((array!81305 0))(
  ( (array!81306 (arr!39210 (Array (_ BitVec 32) (_ BitVec 64))) (size!39747 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81305)

(declare-fun array_inv!29831 (array!81305) Bool)

(assert (=> start!105250 (array_inv!29831 _keys!1118)))

(declare-datatypes ((V!47809 0))(
  ( (V!47810 (val!15979 Int)) )
))
(declare-datatypes ((ValueCell!15153 0))(
  ( (ValueCellFull!15153 (v!18677 V!47809)) (EmptyCell!15153) )
))
(declare-datatypes ((array!81307 0))(
  ( (array!81308 (arr!39211 (Array (_ BitVec 32) ValueCell!15153)) (size!39748 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81307)

(declare-fun e!712317 () Bool)

(declare-fun array_inv!29832 (array!81307) Bool)

(assert (=> start!105250 (and (array_inv!29832 _values!914) e!712317)))

(declare-fun b!1253699 () Bool)

(declare-fun e!712318 () Bool)

(declare-fun mapRes!49525 () Bool)

(assert (=> b!1253699 (= e!712317 (and e!712318 mapRes!49525))))

(declare-fun condMapEmpty!49525 () Bool)

(declare-fun mapDefault!49525 () ValueCell!15153)

(assert (=> b!1253699 (= condMapEmpty!49525 (= (arr!39211 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15153)) mapDefault!49525)))))

(declare-fun b!1253700 () Bool)

(declare-fun res!836074 () Bool)

(assert (=> b!1253700 (=> (not res!836074) (not e!712319))))

(declare-datatypes ((List!28018 0))(
  ( (Nil!28015) (Cons!28014 (h!29223 (_ BitVec 64)) (t!41506 List!28018)) )
))
(declare-fun arrayNoDuplicates!0 (array!81305 (_ BitVec 32) List!28018) Bool)

(assert (=> b!1253700 (= res!836074 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28015))))

(declare-fun b!1253701 () Bool)

(assert (=> b!1253701 (= e!712318 tp_is_empty!31833)))

(declare-fun b!1253702 () Bool)

(declare-fun e!712320 () Bool)

(assert (=> b!1253702 (= e!712320 tp_is_empty!31833)))

(declare-fun b!1253703 () Bool)

(declare-fun res!836075 () Bool)

(assert (=> b!1253703 (=> (not res!836075) (not e!712319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81305 (_ BitVec 32)) Bool)

(assert (=> b!1253703 (= res!836075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49525 () Bool)

(assert (=> mapIsEmpty!49525 mapRes!49525))

(declare-fun b!1253704 () Bool)

(declare-fun e!712321 () Bool)

(assert (=> b!1253704 (= e!712319 (not e!712321))))

(declare-fun res!836071 () Bool)

(assert (=> b!1253704 (=> res!836071 e!712321)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253704 (= res!836071 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20772 0))(
  ( (tuple2!20773 (_1!10396 (_ BitVec 64)) (_2!10396 V!47809)) )
))
(declare-datatypes ((List!28019 0))(
  ( (Nil!28016) (Cons!28015 (h!29224 tuple2!20772) (t!41507 List!28019)) )
))
(declare-datatypes ((ListLongMap!18657 0))(
  ( (ListLongMap!18658 (toList!9344 List!28019)) )
))
(declare-fun lt!566268 () ListLongMap!18657)

(declare-fun lt!566263 () ListLongMap!18657)

(assert (=> b!1253704 (= lt!566268 lt!566263)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47809)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!47809)

(declare-fun zeroValue!871 () V!47809)

(declare-datatypes ((Unit!41658 0))(
  ( (Unit!41659) )
))
(declare-fun lt!566270 () Unit!41658)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1028 (array!81305 array!81307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47809 V!47809 V!47809 V!47809 (_ BitVec 32) Int) Unit!41658)

(assert (=> b!1253704 (= lt!566270 (lemmaNoChangeToArrayThenSameMapNoExtras!1028 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5710 (array!81305 array!81307 (_ BitVec 32) (_ BitVec 32) V!47809 V!47809 (_ BitVec 32) Int) ListLongMap!18657)

(assert (=> b!1253704 (= lt!566263 (getCurrentListMapNoExtraKeys!5710 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253704 (= lt!566268 (getCurrentListMapNoExtraKeys!5710 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253705 () Bool)

(declare-fun res!836073 () Bool)

(assert (=> b!1253705 (=> (not res!836073) (not e!712319))))

(assert (=> b!1253705 (= res!836073 (and (= (size!39748 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39747 _keys!1118) (size!39748 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253706 () Bool)

(assert (=> b!1253706 (= e!712321 true)))

(declare-fun lt!566264 () ListLongMap!18657)

(declare-fun lt!566269 () ListLongMap!18657)

(declare-fun -!2054 (ListLongMap!18657 (_ BitVec 64)) ListLongMap!18657)

(assert (=> b!1253706 (= lt!566264 (-!2054 lt!566269 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566265 () ListLongMap!18657)

(assert (=> b!1253706 (= (-!2054 lt!566265 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566268)))

(declare-fun lt!566266 () Unit!41658)

(declare-fun addThenRemoveForNewKeyIsSame!314 (ListLongMap!18657 (_ BitVec 64) V!47809) Unit!41658)

(assert (=> b!1253706 (= lt!566266 (addThenRemoveForNewKeyIsSame!314 lt!566268 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566267 () ListLongMap!18657)

(assert (=> b!1253706 (and (= lt!566269 lt!566265) (= lt!566267 lt!566263))))

(declare-fun +!4145 (ListLongMap!18657 tuple2!20772) ListLongMap!18657)

(assert (=> b!1253706 (= lt!566265 (+!4145 lt!566268 (tuple2!20773 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4532 (array!81305 array!81307 (_ BitVec 32) (_ BitVec 32) V!47809 V!47809 (_ BitVec 32) Int) ListLongMap!18657)

(assert (=> b!1253706 (= lt!566267 (getCurrentListMap!4532 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253706 (= lt!566269 (getCurrentListMap!4532 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49525 () Bool)

(declare-fun tp!94299 () Bool)

(assert (=> mapNonEmpty!49525 (= mapRes!49525 (and tp!94299 e!712320))))

(declare-fun mapValue!49525 () ValueCell!15153)

(declare-fun mapKey!49525 () (_ BitVec 32))

(declare-fun mapRest!49525 () (Array (_ BitVec 32) ValueCell!15153))

(assert (=> mapNonEmpty!49525 (= (arr!39211 _values!914) (store mapRest!49525 mapKey!49525 mapValue!49525))))

(assert (= (and start!105250 res!836072) b!1253705))

(assert (= (and b!1253705 res!836073) b!1253703))

(assert (= (and b!1253703 res!836075) b!1253700))

(assert (= (and b!1253700 res!836074) b!1253704))

(assert (= (and b!1253704 (not res!836071)) b!1253706))

(assert (= (and b!1253699 condMapEmpty!49525) mapIsEmpty!49525))

(assert (= (and b!1253699 (not condMapEmpty!49525)) mapNonEmpty!49525))

(get-info :version)

(assert (= (and mapNonEmpty!49525 ((_ is ValueCellFull!15153) mapValue!49525)) b!1253702))

(assert (= (and b!1253699 ((_ is ValueCellFull!15153) mapDefault!49525)) b!1253701))

(assert (= start!105250 b!1253699))

(declare-fun m!1154361 () Bool)

(assert (=> b!1253704 m!1154361))

(declare-fun m!1154363 () Bool)

(assert (=> b!1253704 m!1154363))

(declare-fun m!1154365 () Bool)

(assert (=> b!1253704 m!1154365))

(declare-fun m!1154367 () Bool)

(assert (=> b!1253703 m!1154367))

(declare-fun m!1154369 () Bool)

(assert (=> b!1253706 m!1154369))

(declare-fun m!1154371 () Bool)

(assert (=> b!1253706 m!1154371))

(declare-fun m!1154373 () Bool)

(assert (=> b!1253706 m!1154373))

(declare-fun m!1154375 () Bool)

(assert (=> b!1253706 m!1154375))

(declare-fun m!1154377 () Bool)

(assert (=> b!1253706 m!1154377))

(declare-fun m!1154379 () Bool)

(assert (=> b!1253706 m!1154379))

(declare-fun m!1154381 () Bool)

(assert (=> start!105250 m!1154381))

(declare-fun m!1154383 () Bool)

(assert (=> start!105250 m!1154383))

(declare-fun m!1154385 () Bool)

(assert (=> start!105250 m!1154385))

(declare-fun m!1154387 () Bool)

(assert (=> mapNonEmpty!49525 m!1154387))

(declare-fun m!1154389 () Bool)

(assert (=> b!1253700 m!1154389))

(check-sat tp_is_empty!31833 (not mapNonEmpty!49525) (not start!105250) (not b!1253704) (not b_next!26931) (not b!1253700) b_and!44755 (not b!1253706) (not b!1253703))
(check-sat b_and!44755 (not b_next!26931))
