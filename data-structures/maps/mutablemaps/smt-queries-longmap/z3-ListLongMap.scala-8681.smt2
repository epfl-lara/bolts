; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105522 () Bool)

(assert start!105522)

(declare-fun b_free!27123 () Bool)

(declare-fun b_next!27123 () Bool)

(assert (=> start!105522 (= b_free!27123 (not b_next!27123))))

(declare-fun tp!94886 () Bool)

(declare-fun b_and!44989 () Bool)

(assert (=> start!105522 (= tp!94886 b_and!44989)))

(declare-fun mapNonEmpty!49825 () Bool)

(declare-fun mapRes!49825 () Bool)

(declare-fun tp!94887 () Bool)

(declare-fun e!714465 () Bool)

(assert (=> mapNonEmpty!49825 (= mapRes!49825 (and tp!94887 e!714465))))

(declare-datatypes ((V!48065 0))(
  ( (V!48066 (val!16075 Int)) )
))
(declare-datatypes ((ValueCell!15249 0))(
  ( (ValueCellFull!15249 (v!18776 V!48065)) (EmptyCell!15249) )
))
(declare-fun mapRest!49825 () (Array (_ BitVec 32) ValueCell!15249))

(declare-fun mapValue!49825 () ValueCell!15249)

(declare-fun mapKey!49825 () (_ BitVec 32))

(declare-datatypes ((array!81685 0))(
  ( (array!81686 (arr!39396 (Array (_ BitVec 32) ValueCell!15249)) (size!39933 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81685)

(assert (=> mapNonEmpty!49825 (= (arr!39396 _values!914) (store mapRest!49825 mapKey!49825 mapValue!49825))))

(declare-fun res!837793 () Bool)

(declare-fun e!714463 () Bool)

(assert (=> start!105522 (=> (not res!837793) (not e!714463))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105522 (= res!837793 (validMask!0 mask!1466))))

(assert (=> start!105522 e!714463))

(assert (=> start!105522 true))

(assert (=> start!105522 tp!94886))

(declare-fun tp_is_empty!32025 () Bool)

(assert (=> start!105522 tp_is_empty!32025))

(declare-datatypes ((array!81687 0))(
  ( (array!81688 (arr!39397 (Array (_ BitVec 32) (_ BitVec 64))) (size!39934 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81687)

(declare-fun array_inv!29959 (array!81687) Bool)

(assert (=> start!105522 (array_inv!29959 _keys!1118)))

(declare-fun e!714461 () Bool)

(declare-fun array_inv!29960 (array!81685) Bool)

(assert (=> start!105522 (and (array_inv!29960 _values!914) e!714461)))

(declare-fun b!1256636 () Bool)

(declare-fun e!714464 () Bool)

(assert (=> b!1256636 (= e!714463 (not e!714464))))

(declare-fun res!837790 () Bool)

(assert (=> b!1256636 (=> res!837790 e!714464)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256636 (= res!837790 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20920 0))(
  ( (tuple2!20921 (_1!10470 (_ BitVec 64)) (_2!10470 V!48065)) )
))
(declare-datatypes ((List!28154 0))(
  ( (Nil!28151) (Cons!28150 (h!29359 tuple2!20920) (t!41650 List!28154)) )
))
(declare-datatypes ((ListLongMap!18805 0))(
  ( (ListLongMap!18806 (toList!9418 List!28154)) )
))
(declare-fun lt!568255 () ListLongMap!18805)

(declare-fun lt!568257 () ListLongMap!18805)

(assert (=> b!1256636 (= lt!568255 lt!568257)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41808 0))(
  ( (Unit!41809) )
))
(declare-fun lt!568254 () Unit!41808)

(declare-fun minValueAfter!43 () V!48065)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48065)

(declare-fun minValueBefore!43 () V!48065)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1090 (array!81687 array!81685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48065 V!48065 V!48065 V!48065 (_ BitVec 32) Int) Unit!41808)

(assert (=> b!1256636 (= lt!568254 (lemmaNoChangeToArrayThenSameMapNoExtras!1090 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5772 (array!81687 array!81685 (_ BitVec 32) (_ BitVec 32) V!48065 V!48065 (_ BitVec 32) Int) ListLongMap!18805)

(assert (=> b!1256636 (= lt!568257 (getCurrentListMapNoExtraKeys!5772 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256636 (= lt!568255 (getCurrentListMapNoExtraKeys!5772 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256637 () Bool)

(assert (=> b!1256637 (= e!714465 tp_is_empty!32025)))

(declare-fun mapIsEmpty!49825 () Bool)

(assert (=> mapIsEmpty!49825 mapRes!49825))

(declare-fun b!1256638 () Bool)

(declare-fun e!714462 () Bool)

(assert (=> b!1256638 (= e!714461 (and e!714462 mapRes!49825))))

(declare-fun condMapEmpty!49825 () Bool)

(declare-fun mapDefault!49825 () ValueCell!15249)

(assert (=> b!1256638 (= condMapEmpty!49825 (= (arr!39396 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15249)) mapDefault!49825)))))

(declare-fun b!1256639 () Bool)

(declare-fun res!837791 () Bool)

(assert (=> b!1256639 (=> (not res!837791) (not e!714463))))

(declare-datatypes ((List!28155 0))(
  ( (Nil!28152) (Cons!28151 (h!29360 (_ BitVec 64)) (t!41651 List!28155)) )
))
(declare-fun arrayNoDuplicates!0 (array!81687 (_ BitVec 32) List!28155) Bool)

(assert (=> b!1256639 (= res!837791 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28152))))

(declare-fun b!1256640 () Bool)

(declare-fun e!714466 () Bool)

(assert (=> b!1256640 (= e!714466 true)))

(declare-fun lt!568258 () ListLongMap!18805)

(declare-fun -!2096 (ListLongMap!18805 (_ BitVec 64)) ListLongMap!18805)

(assert (=> b!1256640 (= (-!2096 lt!568258 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568258)))

(declare-fun lt!568256 () Unit!41808)

(declare-fun removeNotPresentStillSame!129 (ListLongMap!18805 (_ BitVec 64)) Unit!41808)

(assert (=> b!1256640 (= lt!568256 (removeNotPresentStillSame!129 lt!568258 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256641 () Bool)

(assert (=> b!1256641 (= e!714464 e!714466)))

(declare-fun res!837794 () Bool)

(assert (=> b!1256641 (=> res!837794 e!714466)))

(declare-fun contains!7574 (ListLongMap!18805 (_ BitVec 64)) Bool)

(assert (=> b!1256641 (= res!837794 (contains!7574 lt!568258 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4578 (array!81687 array!81685 (_ BitVec 32) (_ BitVec 32) V!48065 V!48065 (_ BitVec 32) Int) ListLongMap!18805)

(assert (=> b!1256641 (= lt!568258 (getCurrentListMap!4578 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256642 () Bool)

(declare-fun res!837795 () Bool)

(assert (=> b!1256642 (=> (not res!837795) (not e!714463))))

(assert (=> b!1256642 (= res!837795 (and (= (size!39933 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39934 _keys!1118) (size!39933 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256643 () Bool)

(declare-fun res!837792 () Bool)

(assert (=> b!1256643 (=> (not res!837792) (not e!714463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81687 (_ BitVec 32)) Bool)

(assert (=> b!1256643 (= res!837792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256644 () Bool)

(assert (=> b!1256644 (= e!714462 tp_is_empty!32025)))

(assert (= (and start!105522 res!837793) b!1256642))

(assert (= (and b!1256642 res!837795) b!1256643))

(assert (= (and b!1256643 res!837792) b!1256639))

(assert (= (and b!1256639 res!837791) b!1256636))

(assert (= (and b!1256636 (not res!837790)) b!1256641))

(assert (= (and b!1256641 (not res!837794)) b!1256640))

(assert (= (and b!1256638 condMapEmpty!49825) mapIsEmpty!49825))

(assert (= (and b!1256638 (not condMapEmpty!49825)) mapNonEmpty!49825))

(get-info :version)

(assert (= (and mapNonEmpty!49825 ((_ is ValueCellFull!15249) mapValue!49825)) b!1256637))

(assert (= (and b!1256638 ((_ is ValueCellFull!15249) mapDefault!49825)) b!1256644))

(assert (= start!105522 b!1256638))

(declare-fun m!1157317 () Bool)

(assert (=> mapNonEmpty!49825 m!1157317))

(declare-fun m!1157319 () Bool)

(assert (=> b!1256643 m!1157319))

(declare-fun m!1157321 () Bool)

(assert (=> b!1256640 m!1157321))

(declare-fun m!1157323 () Bool)

(assert (=> b!1256640 m!1157323))

(declare-fun m!1157325 () Bool)

(assert (=> b!1256639 m!1157325))

(declare-fun m!1157327 () Bool)

(assert (=> b!1256636 m!1157327))

(declare-fun m!1157329 () Bool)

(assert (=> b!1256636 m!1157329))

(declare-fun m!1157331 () Bool)

(assert (=> b!1256636 m!1157331))

(declare-fun m!1157333 () Bool)

(assert (=> start!105522 m!1157333))

(declare-fun m!1157335 () Bool)

(assert (=> start!105522 m!1157335))

(declare-fun m!1157337 () Bool)

(assert (=> start!105522 m!1157337))

(declare-fun m!1157339 () Bool)

(assert (=> b!1256641 m!1157339))

(declare-fun m!1157341 () Bool)

(assert (=> b!1256641 m!1157341))

(check-sat (not b!1256641) (not b!1256643) (not b_next!27123) (not b!1256639) b_and!44989 (not b!1256640) tp_is_empty!32025 (not start!105522) (not b!1256636) (not mapNonEmpty!49825))
(check-sat b_and!44989 (not b_next!27123))
