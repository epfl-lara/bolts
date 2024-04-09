; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105256 () Bool)

(assert start!105256)

(declare-fun b_free!26937 () Bool)

(declare-fun b_next!26937 () Bool)

(assert (=> start!105256 (= b_free!26937 (not b_next!26937))))

(declare-fun tp!94317 () Bool)

(declare-fun b_and!44761 () Bool)

(assert (=> start!105256 (= tp!94317 b_and!44761)))

(declare-fun res!836121 () Bool)

(declare-fun e!712378 () Bool)

(assert (=> start!105256 (=> (not res!836121) (not e!712378))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105256 (= res!836121 (validMask!0 mask!1466))))

(assert (=> start!105256 e!712378))

(assert (=> start!105256 true))

(assert (=> start!105256 tp!94317))

(declare-fun tp_is_empty!31839 () Bool)

(assert (=> start!105256 tp_is_empty!31839))

(declare-datatypes ((array!81315 0))(
  ( (array!81316 (arr!39215 (Array (_ BitVec 32) (_ BitVec 64))) (size!39752 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81315)

(declare-fun array_inv!29835 (array!81315) Bool)

(assert (=> start!105256 (array_inv!29835 _keys!1118)))

(declare-datatypes ((V!47817 0))(
  ( (V!47818 (val!15982 Int)) )
))
(declare-datatypes ((ValueCell!15156 0))(
  ( (ValueCellFull!15156 (v!18680 V!47817)) (EmptyCell!15156) )
))
(declare-datatypes ((array!81317 0))(
  ( (array!81318 (arr!39216 (Array (_ BitVec 32) ValueCell!15156)) (size!39753 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81317)

(declare-fun e!712379 () Bool)

(declare-fun array_inv!29836 (array!81317) Bool)

(assert (=> start!105256 (and (array_inv!29836 _values!914) e!712379)))

(declare-fun b!1253776 () Bool)

(declare-fun res!836124 () Bool)

(assert (=> b!1253776 (=> (not res!836124) (not e!712378))))

(declare-datatypes ((List!28021 0))(
  ( (Nil!28018) (Cons!28017 (h!29226 (_ BitVec 64)) (t!41509 List!28021)) )
))
(declare-fun arrayNoDuplicates!0 (array!81315 (_ BitVec 32) List!28021) Bool)

(assert (=> b!1253776 (= res!836124 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28018))))

(declare-fun mapIsEmpty!49534 () Bool)

(declare-fun mapRes!49534 () Bool)

(assert (=> mapIsEmpty!49534 mapRes!49534))

(declare-fun b!1253777 () Bool)

(declare-fun e!712380 () Bool)

(assert (=> b!1253777 (= e!712378 (not e!712380))))

(declare-fun res!836126 () Bool)

(assert (=> b!1253777 (=> res!836126 e!712380)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253777 (= res!836126 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20776 0))(
  ( (tuple2!20777 (_1!10398 (_ BitVec 64)) (_2!10398 V!47817)) )
))
(declare-datatypes ((List!28022 0))(
  ( (Nil!28019) (Cons!28018 (h!29227 tuple2!20776) (t!41510 List!28022)) )
))
(declare-datatypes ((ListLongMap!18661 0))(
  ( (ListLongMap!18662 (toList!9346 List!28022)) )
))
(declare-fun lt!566335 () ListLongMap!18661)

(declare-fun lt!566334 () ListLongMap!18661)

(assert (=> b!1253777 (= lt!566335 lt!566334)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47817)

(declare-datatypes ((Unit!41662 0))(
  ( (Unit!41663) )
))
(declare-fun lt!566331 () Unit!41662)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47817)

(declare-fun minValueBefore!43 () V!47817)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1030 (array!81315 array!81317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47817 V!47817 V!47817 V!47817 (_ BitVec 32) Int) Unit!41662)

(assert (=> b!1253777 (= lt!566331 (lemmaNoChangeToArrayThenSameMapNoExtras!1030 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5712 (array!81315 array!81317 (_ BitVec 32) (_ BitVec 32) V!47817 V!47817 (_ BitVec 32) Int) ListLongMap!18661)

(assert (=> b!1253777 (= lt!566334 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253777 (= lt!566335 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253778 () Bool)

(declare-fun e!712382 () Bool)

(assert (=> b!1253778 (= e!712382 tp_is_empty!31839)))

(declare-fun b!1253779 () Bool)

(declare-fun e!712376 () Bool)

(assert (=> b!1253779 (= e!712376 (bvsle #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253780 () Bool)

(declare-fun e!712377 () Bool)

(assert (=> b!1253780 (= e!712377 tp_is_empty!31839)))

(declare-fun b!1253781 () Bool)

(declare-fun res!836122 () Bool)

(assert (=> b!1253781 (=> (not res!836122) (not e!712378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81315 (_ BitVec 32)) Bool)

(assert (=> b!1253781 (= res!836122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253782 () Bool)

(assert (=> b!1253782 (= e!712379 (and e!712382 mapRes!49534))))

(declare-fun condMapEmpty!49534 () Bool)

(declare-fun mapDefault!49534 () ValueCell!15156)

(assert (=> b!1253782 (= condMapEmpty!49534 (= (arr!39216 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15156)) mapDefault!49534)))))

(declare-fun b!1253783 () Bool)

(declare-fun res!836123 () Bool)

(assert (=> b!1253783 (=> (not res!836123) (not e!712378))))

(assert (=> b!1253783 (= res!836123 (and (= (size!39753 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39752 _keys!1118) (size!39753 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49534 () Bool)

(declare-fun tp!94316 () Bool)

(assert (=> mapNonEmpty!49534 (= mapRes!49534 (and tp!94316 e!712377))))

(declare-fun mapKey!49534 () (_ BitVec 32))

(declare-fun mapRest!49534 () (Array (_ BitVec 32) ValueCell!15156))

(declare-fun mapValue!49534 () ValueCell!15156)

(assert (=> mapNonEmpty!49534 (= (arr!39216 _values!914) (store mapRest!49534 mapKey!49534 mapValue!49534))))

(declare-fun b!1253784 () Bool)

(assert (=> b!1253784 (= e!712380 e!712376)))

(declare-fun res!836125 () Bool)

(assert (=> b!1253784 (=> res!836125 e!712376)))

(declare-fun lt!566333 () ListLongMap!18661)

(declare-fun lt!566336 () ListLongMap!18661)

(declare-fun -!2056 (ListLongMap!18661 (_ BitVec 64)) ListLongMap!18661)

(assert (=> b!1253784 (= res!836125 (not (= (-!2056 lt!566333 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566336)))))

(declare-fun lt!566330 () ListLongMap!18661)

(assert (=> b!1253784 (= (-!2056 lt!566330 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566335)))

(declare-fun lt!566332 () Unit!41662)

(declare-fun addThenRemoveForNewKeyIsSame!316 (ListLongMap!18661 (_ BitVec 64) V!47817) Unit!41662)

(assert (=> b!1253784 (= lt!566332 (addThenRemoveForNewKeyIsSame!316 lt!566335 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1253784 (and (= lt!566333 lt!566330) (= lt!566336 lt!566334))))

(declare-fun +!4147 (ListLongMap!18661 tuple2!20776) ListLongMap!18661)

(assert (=> b!1253784 (= lt!566330 (+!4147 lt!566335 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4534 (array!81315 array!81317 (_ BitVec 32) (_ BitVec 32) V!47817 V!47817 (_ BitVec 32) Int) ListLongMap!18661)

(assert (=> b!1253784 (= lt!566336 (getCurrentListMap!4534 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253784 (= lt!566333 (getCurrentListMap!4534 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105256 res!836121) b!1253783))

(assert (= (and b!1253783 res!836123) b!1253781))

(assert (= (and b!1253781 res!836122) b!1253776))

(assert (= (and b!1253776 res!836124) b!1253777))

(assert (= (and b!1253777 (not res!836126)) b!1253784))

(assert (= (and b!1253784 (not res!836125)) b!1253779))

(assert (= (and b!1253782 condMapEmpty!49534) mapIsEmpty!49534))

(assert (= (and b!1253782 (not condMapEmpty!49534)) mapNonEmpty!49534))

(get-info :version)

(assert (= (and mapNonEmpty!49534 ((_ is ValueCellFull!15156) mapValue!49534)) b!1253780))

(assert (= (and b!1253782 ((_ is ValueCellFull!15156) mapDefault!49534)) b!1253778))

(assert (= start!105256 b!1253782))

(declare-fun m!1154451 () Bool)

(assert (=> b!1253781 m!1154451))

(declare-fun m!1154453 () Bool)

(assert (=> b!1253776 m!1154453))

(declare-fun m!1154455 () Bool)

(assert (=> mapNonEmpty!49534 m!1154455))

(declare-fun m!1154457 () Bool)

(assert (=> start!105256 m!1154457))

(declare-fun m!1154459 () Bool)

(assert (=> start!105256 m!1154459))

(declare-fun m!1154461 () Bool)

(assert (=> start!105256 m!1154461))

(declare-fun m!1154463 () Bool)

(assert (=> b!1253784 m!1154463))

(declare-fun m!1154465 () Bool)

(assert (=> b!1253784 m!1154465))

(declare-fun m!1154467 () Bool)

(assert (=> b!1253784 m!1154467))

(declare-fun m!1154469 () Bool)

(assert (=> b!1253784 m!1154469))

(declare-fun m!1154471 () Bool)

(assert (=> b!1253784 m!1154471))

(declare-fun m!1154473 () Bool)

(assert (=> b!1253784 m!1154473))

(declare-fun m!1154475 () Bool)

(assert (=> b!1253777 m!1154475))

(declare-fun m!1154477 () Bool)

(assert (=> b!1253777 m!1154477))

(declare-fun m!1154479 () Bool)

(assert (=> b!1253777 m!1154479))

(check-sat (not start!105256) (not b!1253776) (not b!1253777) (not b!1253784) (not mapNonEmpty!49534) (not b!1253781) tp_is_empty!31839 b_and!44761 (not b_next!26937))
(check-sat b_and!44761 (not b_next!26937))
(get-model)

(declare-fun d!137975 () Bool)

(assert (=> d!137975 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105256 d!137975))

(declare-fun d!137977 () Bool)

(assert (=> d!137977 (= (array_inv!29835 _keys!1118) (bvsge (size!39752 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105256 d!137977))

(declare-fun d!137979 () Bool)

(assert (=> d!137979 (= (array_inv!29836 _values!914) (bvsge (size!39753 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105256 d!137979))

(declare-fun d!137981 () Bool)

(assert (=> d!137981 (= (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566360 () Unit!41662)

(declare-fun choose!1862 (array!81315 array!81317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47817 V!47817 V!47817 V!47817 (_ BitVec 32) Int) Unit!41662)

(assert (=> d!137981 (= lt!566360 (choose!1862 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!137981 (validMask!0 mask!1466)))

(assert (=> d!137981 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1030 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!566360)))

(declare-fun bs!35419 () Bool)

(assert (= bs!35419 d!137981))

(assert (=> bs!35419 m!1154479))

(assert (=> bs!35419 m!1154477))

(declare-fun m!1154511 () Bool)

(assert (=> bs!35419 m!1154511))

(assert (=> bs!35419 m!1154457))

(assert (=> b!1253777 d!137981))

(declare-fun b!1253836 () Bool)

(declare-fun e!712421 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1253836 (= e!712421 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1253836 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!137983 () Bool)

(declare-fun e!712418 () Bool)

(assert (=> d!137983 e!712418))

(declare-fun res!836155 () Bool)

(assert (=> d!137983 (=> (not res!836155) (not e!712418))))

(declare-fun lt!566381 () ListLongMap!18661)

(declare-fun contains!7539 (ListLongMap!18661 (_ BitVec 64)) Bool)

(assert (=> d!137983 (= res!836155 (not (contains!7539 lt!566381 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!712419 () ListLongMap!18661)

(assert (=> d!137983 (= lt!566381 e!712419)))

(declare-fun c!122246 () Bool)

(assert (=> d!137983 (= c!122246 (bvsge #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(assert (=> d!137983 (validMask!0 mask!1466)))

(assert (=> d!137983 (= (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!566381)))

(declare-fun b!1253837 () Bool)

(declare-fun e!712420 () ListLongMap!18661)

(declare-fun call!61690 () ListLongMap!18661)

(assert (=> b!1253837 (= e!712420 call!61690)))

(declare-fun bm!61687 () Bool)

(assert (=> bm!61687 (= call!61690 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1253838 () Bool)

(declare-fun e!712423 () Bool)

(declare-fun e!712422 () Bool)

(assert (=> b!1253838 (= e!712423 e!712422)))

(declare-fun c!122249 () Bool)

(assert (=> b!1253838 (= c!122249 (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253839 () Bool)

(declare-fun e!712424 () Bool)

(assert (=> b!1253839 (= e!712423 e!712424)))

(assert (=> b!1253839 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun res!836156 () Bool)

(assert (=> b!1253839 (= res!836156 (contains!7539 lt!566381 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1253839 (=> (not res!836156) (not e!712424))))

(declare-fun b!1253840 () Bool)

(declare-fun res!836154 () Bool)

(assert (=> b!1253840 (=> (not res!836154) (not e!712418))))

(assert (=> b!1253840 (= res!836154 (not (contains!7539 lt!566381 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1253841 () Bool)

(assert (=> b!1253841 (= e!712419 e!712420)))

(declare-fun c!122247 () Bool)

(assert (=> b!1253841 (= c!122247 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253842 () Bool)

(assert (=> b!1253842 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(assert (=> b!1253842 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39753 _values!914)))))

(declare-fun apply!1020 (ListLongMap!18661 (_ BitVec 64)) V!47817)

(declare-fun get!20122 (ValueCell!15156 V!47817) V!47817)

(declare-fun dynLambda!3465 (Int (_ BitVec 64)) V!47817)

(assert (=> b!1253842 (= e!712424 (= (apply!1020 lt!566381 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)) (get!20122 (select (arr!39216 _values!914) #b00000000000000000000000000000000) (dynLambda!3465 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1253843 () Bool)

(assert (=> b!1253843 (= e!712422 (= lt!566381 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1253844 () Bool)

(assert (=> b!1253844 (= e!712418 e!712423)))

(declare-fun c!122248 () Bool)

(assert (=> b!1253844 (= c!122248 e!712421)))

(declare-fun res!836153 () Bool)

(assert (=> b!1253844 (=> (not res!836153) (not e!712421))))

(assert (=> b!1253844 (= res!836153 (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253845 () Bool)

(declare-fun lt!566378 () Unit!41662)

(declare-fun lt!566375 () Unit!41662)

(assert (=> b!1253845 (= lt!566378 lt!566375)))

(declare-fun lt!566380 () (_ BitVec 64))

(declare-fun lt!566377 () V!47817)

(declare-fun lt!566376 () ListLongMap!18661)

(declare-fun lt!566379 () (_ BitVec 64))

(assert (=> b!1253845 (not (contains!7539 (+!4147 lt!566376 (tuple2!20777 lt!566379 lt!566377)) lt!566380))))

(declare-fun addStillNotContains!315 (ListLongMap!18661 (_ BitVec 64) V!47817 (_ BitVec 64)) Unit!41662)

(assert (=> b!1253845 (= lt!566375 (addStillNotContains!315 lt!566376 lt!566379 lt!566377 lt!566380))))

(assert (=> b!1253845 (= lt!566380 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1253845 (= lt!566377 (get!20122 (select (arr!39216 _values!914) #b00000000000000000000000000000000) (dynLambda!3465 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1253845 (= lt!566379 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1253845 (= lt!566376 call!61690)))

(assert (=> b!1253845 (= e!712420 (+!4147 call!61690 (tuple2!20777 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000) (get!20122 (select (arr!39216 _values!914) #b00000000000000000000000000000000) (dynLambda!3465 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1253846 () Bool)

(assert (=> b!1253846 (= e!712419 (ListLongMap!18662 Nil!28019))))

(declare-fun b!1253847 () Bool)

(declare-fun isEmpty!1030 (ListLongMap!18661) Bool)

(assert (=> b!1253847 (= e!712422 (isEmpty!1030 lt!566381))))

(assert (= (and d!137983 c!122246) b!1253846))

(assert (= (and d!137983 (not c!122246)) b!1253841))

(assert (= (and b!1253841 c!122247) b!1253845))

(assert (= (and b!1253841 (not c!122247)) b!1253837))

(assert (= (or b!1253845 b!1253837) bm!61687))

(assert (= (and d!137983 res!836155) b!1253840))

(assert (= (and b!1253840 res!836154) b!1253844))

(assert (= (and b!1253844 res!836153) b!1253836))

(assert (= (and b!1253844 c!122248) b!1253839))

(assert (= (and b!1253844 (not c!122248)) b!1253838))

(assert (= (and b!1253839 res!836156) b!1253842))

(assert (= (and b!1253838 c!122249) b!1253843))

(assert (= (and b!1253838 (not c!122249)) b!1253847))

(declare-fun b_lambda!22613 () Bool)

(assert (=> (not b_lambda!22613) (not b!1253842)))

(declare-fun t!41512 () Bool)

(declare-fun tb!11305 () Bool)

(assert (=> (and start!105256 (= defaultEntry!922 defaultEntry!922) t!41512) tb!11305))

(declare-fun result!23307 () Bool)

(assert (=> tb!11305 (= result!23307 tp_is_empty!31839)))

(assert (=> b!1253842 t!41512))

(declare-fun b_and!44765 () Bool)

(assert (= b_and!44761 (and (=> t!41512 result!23307) b_and!44765)))

(declare-fun b_lambda!22615 () Bool)

(assert (=> (not b_lambda!22615) (not b!1253845)))

(assert (=> b!1253845 t!41512))

(declare-fun b_and!44767 () Bool)

(assert (= b_and!44765 (and (=> t!41512 result!23307) b_and!44767)))

(declare-fun m!1154513 () Bool)

(assert (=> b!1253845 m!1154513))

(declare-fun m!1154515 () Bool)

(assert (=> b!1253845 m!1154515))

(declare-fun m!1154517 () Bool)

(assert (=> b!1253845 m!1154517))

(declare-fun m!1154519 () Bool)

(assert (=> b!1253845 m!1154519))

(assert (=> b!1253845 m!1154513))

(declare-fun m!1154521 () Bool)

(assert (=> b!1253845 m!1154521))

(declare-fun m!1154523 () Bool)

(assert (=> b!1253845 m!1154523))

(assert (=> b!1253845 m!1154519))

(assert (=> b!1253845 m!1154515))

(declare-fun m!1154525 () Bool)

(assert (=> b!1253845 m!1154525))

(declare-fun m!1154527 () Bool)

(assert (=> b!1253845 m!1154527))

(assert (=> b!1253841 m!1154527))

(assert (=> b!1253841 m!1154527))

(declare-fun m!1154529 () Bool)

(assert (=> b!1253841 m!1154529))

(assert (=> b!1253842 m!1154513))

(assert (=> b!1253842 m!1154527))

(declare-fun m!1154531 () Bool)

(assert (=> b!1253842 m!1154531))

(assert (=> b!1253842 m!1154519))

(assert (=> b!1253842 m!1154513))

(assert (=> b!1253842 m!1154521))

(assert (=> b!1253842 m!1154519))

(assert (=> b!1253842 m!1154527))

(assert (=> b!1253839 m!1154527))

(assert (=> b!1253839 m!1154527))

(declare-fun m!1154533 () Bool)

(assert (=> b!1253839 m!1154533))

(declare-fun m!1154535 () Bool)

(assert (=> b!1253843 m!1154535))

(declare-fun m!1154537 () Bool)

(assert (=> b!1253840 m!1154537))

(assert (=> b!1253836 m!1154527))

(assert (=> b!1253836 m!1154527))

(assert (=> b!1253836 m!1154529))

(declare-fun m!1154539 () Bool)

(assert (=> d!137983 m!1154539))

(assert (=> d!137983 m!1154457))

(declare-fun m!1154541 () Bool)

(assert (=> b!1253847 m!1154541))

(assert (=> bm!61687 m!1154535))

(assert (=> b!1253777 d!137983))

(declare-fun b!1253850 () Bool)

(declare-fun e!712428 () Bool)

(assert (=> b!1253850 (= e!712428 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1253850 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!137985 () Bool)

(declare-fun e!712425 () Bool)

(assert (=> d!137985 e!712425))

(declare-fun res!836159 () Bool)

(assert (=> d!137985 (=> (not res!836159) (not e!712425))))

(declare-fun lt!566388 () ListLongMap!18661)

(assert (=> d!137985 (= res!836159 (not (contains!7539 lt!566388 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!712426 () ListLongMap!18661)

(assert (=> d!137985 (= lt!566388 e!712426)))

(declare-fun c!122250 () Bool)

(assert (=> d!137985 (= c!122250 (bvsge #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(assert (=> d!137985 (validMask!0 mask!1466)))

(assert (=> d!137985 (= (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!566388)))

(declare-fun b!1253851 () Bool)

(declare-fun e!712427 () ListLongMap!18661)

(declare-fun call!61691 () ListLongMap!18661)

(assert (=> b!1253851 (= e!712427 call!61691)))

(declare-fun bm!61688 () Bool)

(assert (=> bm!61688 (= call!61691 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1253852 () Bool)

(declare-fun e!712430 () Bool)

(declare-fun e!712429 () Bool)

(assert (=> b!1253852 (= e!712430 e!712429)))

(declare-fun c!122253 () Bool)

(assert (=> b!1253852 (= c!122253 (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253853 () Bool)

(declare-fun e!712431 () Bool)

(assert (=> b!1253853 (= e!712430 e!712431)))

(assert (=> b!1253853 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun res!836160 () Bool)

(assert (=> b!1253853 (= res!836160 (contains!7539 lt!566388 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1253853 (=> (not res!836160) (not e!712431))))

(declare-fun b!1253854 () Bool)

(declare-fun res!836158 () Bool)

(assert (=> b!1253854 (=> (not res!836158) (not e!712425))))

(assert (=> b!1253854 (= res!836158 (not (contains!7539 lt!566388 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1253855 () Bool)

(assert (=> b!1253855 (= e!712426 e!712427)))

(declare-fun c!122251 () Bool)

(assert (=> b!1253855 (= c!122251 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253856 () Bool)

(assert (=> b!1253856 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(assert (=> b!1253856 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39753 _values!914)))))

(assert (=> b!1253856 (= e!712431 (= (apply!1020 lt!566388 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)) (get!20122 (select (arr!39216 _values!914) #b00000000000000000000000000000000) (dynLambda!3465 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1253857 () Bool)

(assert (=> b!1253857 (= e!712429 (= lt!566388 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1253858 () Bool)

(assert (=> b!1253858 (= e!712425 e!712430)))

(declare-fun c!122252 () Bool)

(assert (=> b!1253858 (= c!122252 e!712428)))

(declare-fun res!836157 () Bool)

(assert (=> b!1253858 (=> (not res!836157) (not e!712428))))

(assert (=> b!1253858 (= res!836157 (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253859 () Bool)

(declare-fun lt!566385 () Unit!41662)

(declare-fun lt!566382 () Unit!41662)

(assert (=> b!1253859 (= lt!566385 lt!566382)))

(declare-fun lt!566383 () ListLongMap!18661)

(declare-fun lt!566384 () V!47817)

(declare-fun lt!566386 () (_ BitVec 64))

(declare-fun lt!566387 () (_ BitVec 64))

(assert (=> b!1253859 (not (contains!7539 (+!4147 lt!566383 (tuple2!20777 lt!566386 lt!566384)) lt!566387))))

(assert (=> b!1253859 (= lt!566382 (addStillNotContains!315 lt!566383 lt!566386 lt!566384 lt!566387))))

(assert (=> b!1253859 (= lt!566387 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1253859 (= lt!566384 (get!20122 (select (arr!39216 _values!914) #b00000000000000000000000000000000) (dynLambda!3465 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1253859 (= lt!566386 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1253859 (= lt!566383 call!61691)))

(assert (=> b!1253859 (= e!712427 (+!4147 call!61691 (tuple2!20777 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000) (get!20122 (select (arr!39216 _values!914) #b00000000000000000000000000000000) (dynLambda!3465 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1253860 () Bool)

(assert (=> b!1253860 (= e!712426 (ListLongMap!18662 Nil!28019))))

(declare-fun b!1253861 () Bool)

(assert (=> b!1253861 (= e!712429 (isEmpty!1030 lt!566388))))

(assert (= (and d!137985 c!122250) b!1253860))

(assert (= (and d!137985 (not c!122250)) b!1253855))

(assert (= (and b!1253855 c!122251) b!1253859))

(assert (= (and b!1253855 (not c!122251)) b!1253851))

(assert (= (or b!1253859 b!1253851) bm!61688))

(assert (= (and d!137985 res!836159) b!1253854))

(assert (= (and b!1253854 res!836158) b!1253858))

(assert (= (and b!1253858 res!836157) b!1253850))

(assert (= (and b!1253858 c!122252) b!1253853))

(assert (= (and b!1253858 (not c!122252)) b!1253852))

(assert (= (and b!1253853 res!836160) b!1253856))

(assert (= (and b!1253852 c!122253) b!1253857))

(assert (= (and b!1253852 (not c!122253)) b!1253861))

(declare-fun b_lambda!22617 () Bool)

(assert (=> (not b_lambda!22617) (not b!1253856)))

(assert (=> b!1253856 t!41512))

(declare-fun b_and!44769 () Bool)

(assert (= b_and!44767 (and (=> t!41512 result!23307) b_and!44769)))

(declare-fun b_lambda!22619 () Bool)

(assert (=> (not b_lambda!22619) (not b!1253859)))

(assert (=> b!1253859 t!41512))

(declare-fun b_and!44771 () Bool)

(assert (= b_and!44769 (and (=> t!41512 result!23307) b_and!44771)))

(assert (=> b!1253859 m!1154513))

(declare-fun m!1154543 () Bool)

(assert (=> b!1253859 m!1154543))

(declare-fun m!1154545 () Bool)

(assert (=> b!1253859 m!1154545))

(assert (=> b!1253859 m!1154519))

(assert (=> b!1253859 m!1154513))

(assert (=> b!1253859 m!1154521))

(declare-fun m!1154547 () Bool)

(assert (=> b!1253859 m!1154547))

(assert (=> b!1253859 m!1154519))

(assert (=> b!1253859 m!1154543))

(declare-fun m!1154549 () Bool)

(assert (=> b!1253859 m!1154549))

(assert (=> b!1253859 m!1154527))

(assert (=> b!1253855 m!1154527))

(assert (=> b!1253855 m!1154527))

(assert (=> b!1253855 m!1154529))

(assert (=> b!1253856 m!1154513))

(assert (=> b!1253856 m!1154527))

(declare-fun m!1154551 () Bool)

(assert (=> b!1253856 m!1154551))

(assert (=> b!1253856 m!1154519))

(assert (=> b!1253856 m!1154513))

(assert (=> b!1253856 m!1154521))

(assert (=> b!1253856 m!1154519))

(assert (=> b!1253856 m!1154527))

(assert (=> b!1253853 m!1154527))

(assert (=> b!1253853 m!1154527))

(declare-fun m!1154553 () Bool)

(assert (=> b!1253853 m!1154553))

(declare-fun m!1154555 () Bool)

(assert (=> b!1253857 m!1154555))

(declare-fun m!1154557 () Bool)

(assert (=> b!1253854 m!1154557))

(assert (=> b!1253850 m!1154527))

(assert (=> b!1253850 m!1154527))

(assert (=> b!1253850 m!1154529))

(declare-fun m!1154559 () Bool)

(assert (=> d!137985 m!1154559))

(assert (=> d!137985 m!1154457))

(declare-fun m!1154561 () Bool)

(assert (=> b!1253861 m!1154561))

(assert (=> bm!61688 m!1154555))

(assert (=> b!1253777 d!137985))

(declare-fun b!1253870 () Bool)

(declare-fun e!712439 () Bool)

(declare-fun call!61694 () Bool)

(assert (=> b!1253870 (= e!712439 call!61694)))

(declare-fun b!1253871 () Bool)

(declare-fun e!712440 () Bool)

(assert (=> b!1253871 (= e!712440 e!712439)))

(declare-fun c!122256 () Bool)

(assert (=> b!1253871 (= c!122256 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61691 () Bool)

(assert (=> bm!61691 (= call!61694 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1253872 () Bool)

(declare-fun e!712438 () Bool)

(assert (=> b!1253872 (= e!712439 e!712438)))

(declare-fun lt!566395 () (_ BitVec 64))

(assert (=> b!1253872 (= lt!566395 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!566396 () Unit!41662)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81315 (_ BitVec 64) (_ BitVec 32)) Unit!41662)

(assert (=> b!1253872 (= lt!566396 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!566395 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1253872 (arrayContainsKey!0 _keys!1118 lt!566395 #b00000000000000000000000000000000)))

(declare-fun lt!566397 () Unit!41662)

(assert (=> b!1253872 (= lt!566397 lt!566396)))

(declare-fun res!836166 () Bool)

(declare-datatypes ((SeekEntryResult!9960 0))(
  ( (MissingZero!9960 (index!42210 (_ BitVec 32))) (Found!9960 (index!42211 (_ BitVec 32))) (Intermediate!9960 (undefined!10772 Bool) (index!42212 (_ BitVec 32)) (x!110365 (_ BitVec 32))) (Undefined!9960) (MissingVacant!9960 (index!42213 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81315 (_ BitVec 32)) SeekEntryResult!9960)

(assert (=> b!1253872 (= res!836166 (= (seekEntryOrOpen!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9960 #b00000000000000000000000000000000)))))

(assert (=> b!1253872 (=> (not res!836166) (not e!712438))))

(declare-fun d!137987 () Bool)

(declare-fun res!836165 () Bool)

(assert (=> d!137987 (=> res!836165 e!712440)))

(assert (=> d!137987 (= res!836165 (bvsge #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(assert (=> d!137987 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!712440)))

(declare-fun b!1253873 () Bool)

(assert (=> b!1253873 (= e!712438 call!61694)))

(assert (= (and d!137987 (not res!836165)) b!1253871))

(assert (= (and b!1253871 c!122256) b!1253872))

(assert (= (and b!1253871 (not c!122256)) b!1253870))

(assert (= (and b!1253872 res!836166) b!1253873))

(assert (= (or b!1253873 b!1253870) bm!61691))

(assert (=> b!1253871 m!1154527))

(assert (=> b!1253871 m!1154527))

(assert (=> b!1253871 m!1154529))

(declare-fun m!1154563 () Bool)

(assert (=> bm!61691 m!1154563))

(assert (=> b!1253872 m!1154527))

(declare-fun m!1154565 () Bool)

(assert (=> b!1253872 m!1154565))

(declare-fun m!1154567 () Bool)

(assert (=> b!1253872 m!1154567))

(assert (=> b!1253872 m!1154527))

(declare-fun m!1154569 () Bool)

(assert (=> b!1253872 m!1154569))

(assert (=> b!1253781 d!137987))

(declare-fun b!1253884 () Bool)

(declare-fun e!712450 () Bool)

(declare-fun e!712451 () Bool)

(assert (=> b!1253884 (= e!712450 e!712451)))

(declare-fun c!122259 () Bool)

(assert (=> b!1253884 (= c!122259 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137989 () Bool)

(declare-fun res!836173 () Bool)

(declare-fun e!712452 () Bool)

(assert (=> d!137989 (=> res!836173 e!712452)))

(assert (=> d!137989 (= res!836173 (bvsge #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(assert (=> d!137989 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28018) e!712452)))

(declare-fun b!1253885 () Bool)

(assert (=> b!1253885 (= e!712452 e!712450)))

(declare-fun res!836174 () Bool)

(assert (=> b!1253885 (=> (not res!836174) (not e!712450))))

(declare-fun e!712449 () Bool)

(assert (=> b!1253885 (= res!836174 (not e!712449))))

(declare-fun res!836175 () Bool)

(assert (=> b!1253885 (=> (not res!836175) (not e!712449))))

(assert (=> b!1253885 (= res!836175 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61694 () Bool)

(declare-fun call!61697 () Bool)

(assert (=> bm!61694 (= call!61697 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122259 (Cons!28017 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000) Nil!28018) Nil!28018)))))

(declare-fun b!1253886 () Bool)

(declare-fun contains!7540 (List!28021 (_ BitVec 64)) Bool)

(assert (=> b!1253886 (= e!712449 (contains!7540 Nil!28018 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253887 () Bool)

(assert (=> b!1253887 (= e!712451 call!61697)))

(declare-fun b!1253888 () Bool)

(assert (=> b!1253888 (= e!712451 call!61697)))

(assert (= (and d!137989 (not res!836173)) b!1253885))

(assert (= (and b!1253885 res!836175) b!1253886))

(assert (= (and b!1253885 res!836174) b!1253884))

(assert (= (and b!1253884 c!122259) b!1253887))

(assert (= (and b!1253884 (not c!122259)) b!1253888))

(assert (= (or b!1253887 b!1253888) bm!61694))

(assert (=> b!1253884 m!1154527))

(assert (=> b!1253884 m!1154527))

(assert (=> b!1253884 m!1154529))

(assert (=> b!1253885 m!1154527))

(assert (=> b!1253885 m!1154527))

(assert (=> b!1253885 m!1154529))

(assert (=> bm!61694 m!1154527))

(declare-fun m!1154571 () Bool)

(assert (=> bm!61694 m!1154571))

(assert (=> b!1253886 m!1154527))

(assert (=> b!1253886 m!1154527))

(declare-fun m!1154573 () Bool)

(assert (=> b!1253886 m!1154573))

(assert (=> b!1253776 d!137989))

(declare-fun d!137991 () Bool)

(declare-fun lt!566400 () ListLongMap!18661)

(assert (=> d!137991 (not (contains!7539 lt!566400 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!139 (List!28022 (_ BitVec 64)) List!28022)

(assert (=> d!137991 (= lt!566400 (ListLongMap!18662 (removeStrictlySorted!139 (toList!9346 lt!566330) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137991 (= (-!2056 lt!566330 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566400)))

(declare-fun bs!35420 () Bool)

(assert (= bs!35420 d!137991))

(declare-fun m!1154575 () Bool)

(assert (=> bs!35420 m!1154575))

(declare-fun m!1154577 () Bool)

(assert (=> bs!35420 m!1154577))

(assert (=> b!1253784 d!137991))

(declare-fun d!137993 () Bool)

(declare-fun lt!566401 () ListLongMap!18661)

(assert (=> d!137993 (not (contains!7539 lt!566401 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!137993 (= lt!566401 (ListLongMap!18662 (removeStrictlySorted!139 (toList!9346 lt!566333) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137993 (= (-!2056 lt!566333 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566401)))

(declare-fun bs!35421 () Bool)

(assert (= bs!35421 d!137993))

(declare-fun m!1154579 () Bool)

(assert (=> bs!35421 m!1154579))

(declare-fun m!1154581 () Bool)

(assert (=> bs!35421 m!1154581))

(assert (=> b!1253784 d!137993))

(declare-fun d!137995 () Bool)

(declare-fun e!712455 () Bool)

(assert (=> d!137995 e!712455))

(declare-fun res!836181 () Bool)

(assert (=> d!137995 (=> (not res!836181) (not e!712455))))

(declare-fun lt!566411 () ListLongMap!18661)

(assert (=> d!137995 (= res!836181 (contains!7539 lt!566411 (_1!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!566413 () List!28022)

(assert (=> d!137995 (= lt!566411 (ListLongMap!18662 lt!566413))))

(declare-fun lt!566410 () Unit!41662)

(declare-fun lt!566412 () Unit!41662)

(assert (=> d!137995 (= lt!566410 lt!566412)))

(declare-datatypes ((Option!708 0))(
  ( (Some!707 (v!18682 V!47817)) (None!706) )
))
(declare-fun getValueByKey!657 (List!28022 (_ BitVec 64)) Option!708)

(assert (=> d!137995 (= (getValueByKey!657 lt!566413 (_1!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!707 (_2!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lemmaContainsTupThenGetReturnValue!330 (List!28022 (_ BitVec 64) V!47817) Unit!41662)

(assert (=> d!137995 (= lt!566412 (lemmaContainsTupThenGetReturnValue!330 lt!566413 (_1!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun insertStrictlySorted!443 (List!28022 (_ BitVec 64) V!47817) List!28022)

(assert (=> d!137995 (= lt!566413 (insertStrictlySorted!443 (toList!9346 lt!566335) (_1!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!137995 (= (+!4147 lt!566335 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!566411)))

(declare-fun b!1253893 () Bool)

(declare-fun res!836180 () Bool)

(assert (=> b!1253893 (=> (not res!836180) (not e!712455))))

(assert (=> b!1253893 (= res!836180 (= (getValueByKey!657 (toList!9346 lt!566411) (_1!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!707 (_2!10398 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1253894 () Bool)

(declare-fun contains!7541 (List!28022 tuple2!20776) Bool)

(assert (=> b!1253894 (= e!712455 (contains!7541 (toList!9346 lt!566411) (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!137995 res!836181) b!1253893))

(assert (= (and b!1253893 res!836180) b!1253894))

(declare-fun m!1154583 () Bool)

(assert (=> d!137995 m!1154583))

(declare-fun m!1154585 () Bool)

(assert (=> d!137995 m!1154585))

(declare-fun m!1154587 () Bool)

(assert (=> d!137995 m!1154587))

(declare-fun m!1154589 () Bool)

(assert (=> d!137995 m!1154589))

(declare-fun m!1154591 () Bool)

(assert (=> b!1253893 m!1154591))

(declare-fun m!1154593 () Bool)

(assert (=> b!1253894 m!1154593))

(assert (=> b!1253784 d!137995))

(declare-fun bm!61709 () Bool)

(declare-fun call!61718 () ListLongMap!18661)

(declare-fun call!61714 () ListLongMap!18661)

(assert (=> bm!61709 (= call!61718 call!61714)))

(declare-fun b!1253937 () Bool)

(declare-fun e!712485 () Bool)

(assert (=> b!1253937 (= e!712485 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253938 () Bool)

(declare-fun e!712482 () ListLongMap!18661)

(declare-fun call!61717 () ListLongMap!18661)

(assert (=> b!1253938 (= e!712482 (+!4147 call!61717 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun call!61713 () ListLongMap!18661)

(declare-fun c!122275 () Bool)

(declare-fun c!122272 () Bool)

(declare-fun bm!61710 () Bool)

(assert (=> bm!61710 (= call!61717 (+!4147 (ite c!122275 call!61713 (ite c!122272 call!61714 call!61718)) (ite (or c!122275 c!122272) (tuple2!20777 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1253939 () Bool)

(declare-fun e!712486 () ListLongMap!18661)

(assert (=> b!1253939 (= e!712482 e!712486)))

(assert (=> b!1253939 (= c!122272 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!61711 () Bool)

(assert (=> bm!61711 (= call!61713 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253940 () Bool)

(declare-fun res!836201 () Bool)

(declare-fun e!712489 () Bool)

(assert (=> b!1253940 (=> (not res!836201) (not e!712489))))

(declare-fun e!712487 () Bool)

(assert (=> b!1253940 (= res!836201 e!712487)))

(declare-fun res!836202 () Bool)

(assert (=> b!1253940 (=> res!836202 e!712487)))

(declare-fun e!712483 () Bool)

(assert (=> b!1253940 (= res!836202 (not e!712483))))

(declare-fun res!836200 () Bool)

(assert (=> b!1253940 (=> (not res!836200) (not e!712483))))

(assert (=> b!1253940 (= res!836200 (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253941 () Bool)

(declare-fun e!712494 () Unit!41662)

(declare-fun Unit!41664 () Unit!41662)

(assert (=> b!1253941 (= e!712494 Unit!41664)))

(declare-fun b!1253942 () Bool)

(declare-fun call!61715 () ListLongMap!18661)

(assert (=> b!1253942 (= e!712486 call!61715)))

(declare-fun b!1253944 () Bool)

(declare-fun res!836205 () Bool)

(assert (=> b!1253944 (=> (not res!836205) (not e!712489))))

(declare-fun e!712488 () Bool)

(assert (=> b!1253944 (= res!836205 e!712488)))

(declare-fun c!122277 () Bool)

(assert (=> b!1253944 (= c!122277 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!61712 () Bool)

(declare-fun call!61716 () Bool)

(declare-fun lt!566460 () ListLongMap!18661)

(assert (=> bm!61712 (= call!61716 (contains!7539 lt!566460 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!61713 () Bool)

(assert (=> bm!61713 (= call!61714 call!61713)))

(declare-fun b!1253945 () Bool)

(declare-fun e!712492 () Bool)

(assert (=> b!1253945 (= e!712489 e!712492)))

(declare-fun c!122276 () Bool)

(assert (=> b!1253945 (= c!122276 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253946 () Bool)

(declare-fun e!712490 () Bool)

(assert (=> b!1253946 (= e!712488 e!712490)))

(declare-fun res!836204 () Bool)

(declare-fun call!61712 () Bool)

(assert (=> b!1253946 (= res!836204 call!61712)))

(assert (=> b!1253946 (=> (not res!836204) (not e!712490))))

(declare-fun b!1253947 () Bool)

(declare-fun e!712484 () ListLongMap!18661)

(assert (=> b!1253947 (= e!712484 call!61715)))

(declare-fun b!1253948 () Bool)

(assert (=> b!1253948 (= e!712490 (= (apply!1020 lt!566460 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1253949 () Bool)

(assert (=> b!1253949 (= e!712484 call!61718)))

(declare-fun bm!61714 () Bool)

(assert (=> bm!61714 (= call!61712 (contains!7539 lt!566460 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1253950 () Bool)

(declare-fun e!712493 () Bool)

(assert (=> b!1253950 (= e!712493 (= (apply!1020 lt!566460 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)) (get!20122 (select (arr!39216 _values!914) #b00000000000000000000000000000000) (dynLambda!3465 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1253950 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39753 _values!914)))))

(assert (=> b!1253950 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253951 () Bool)

(assert (=> b!1253951 (= e!712483 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253952 () Bool)

(assert (=> b!1253952 (= e!712487 e!712493)))

(declare-fun res!836203 () Bool)

(assert (=> b!1253952 (=> (not res!836203) (not e!712493))))

(assert (=> b!1253952 (= res!836203 (contains!7539 lt!566460 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1253952 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253953 () Bool)

(assert (=> b!1253953 (= e!712488 (not call!61712))))

(declare-fun b!1253954 () Bool)

(declare-fun e!712491 () Bool)

(assert (=> b!1253954 (= e!712492 e!712491)))

(declare-fun res!836208 () Bool)

(assert (=> b!1253954 (= res!836208 call!61716)))

(assert (=> b!1253954 (=> (not res!836208) (not e!712491))))

(declare-fun d!137997 () Bool)

(assert (=> d!137997 e!712489))

(declare-fun res!836206 () Bool)

(assert (=> d!137997 (=> (not res!836206) (not e!712489))))

(assert (=> d!137997 (= res!836206 (or (bvsge #b00000000000000000000000000000000 (size!39752 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))))

(declare-fun lt!566471 () ListLongMap!18661)

(assert (=> d!137997 (= lt!566460 lt!566471)))

(declare-fun lt!566463 () Unit!41662)

(assert (=> d!137997 (= lt!566463 e!712494)))

(declare-fun c!122273 () Bool)

(assert (=> d!137997 (= c!122273 e!712485)))

(declare-fun res!836207 () Bool)

(assert (=> d!137997 (=> (not res!836207) (not e!712485))))

(assert (=> d!137997 (= res!836207 (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(assert (=> d!137997 (= lt!566471 e!712482)))

(assert (=> d!137997 (= c!122275 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!137997 (validMask!0 mask!1466)))

(assert (=> d!137997 (= (getCurrentListMap!4534 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!566460)))

(declare-fun b!1253943 () Bool)

(declare-fun lt!566470 () Unit!41662)

(assert (=> b!1253943 (= e!712494 lt!566470)))

(declare-fun lt!566465 () ListLongMap!18661)

(assert (=> b!1253943 (= lt!566465 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566466 () (_ BitVec 64))

(assert (=> b!1253943 (= lt!566466 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!566469 () (_ BitVec 64))

(assert (=> b!1253943 (= lt!566469 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!566467 () Unit!41662)

(declare-fun addStillContains!1094 (ListLongMap!18661 (_ BitVec 64) V!47817 (_ BitVec 64)) Unit!41662)

(assert (=> b!1253943 (= lt!566467 (addStillContains!1094 lt!566465 lt!566466 zeroValue!871 lt!566469))))

(assert (=> b!1253943 (contains!7539 (+!4147 lt!566465 (tuple2!20777 lt!566466 zeroValue!871)) lt!566469)))

(declare-fun lt!566461 () Unit!41662)

(assert (=> b!1253943 (= lt!566461 lt!566467)))

(declare-fun lt!566478 () ListLongMap!18661)

(assert (=> b!1253943 (= lt!566478 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566459 () (_ BitVec 64))

(assert (=> b!1253943 (= lt!566459 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!566462 () (_ BitVec 64))

(assert (=> b!1253943 (= lt!566462 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!566474 () Unit!41662)

(declare-fun addApplyDifferent!528 (ListLongMap!18661 (_ BitVec 64) V!47817 (_ BitVec 64)) Unit!41662)

(assert (=> b!1253943 (= lt!566474 (addApplyDifferent!528 lt!566478 lt!566459 minValueBefore!43 lt!566462))))

(assert (=> b!1253943 (= (apply!1020 (+!4147 lt!566478 (tuple2!20777 lt!566459 minValueBefore!43)) lt!566462) (apply!1020 lt!566478 lt!566462))))

(declare-fun lt!566472 () Unit!41662)

(assert (=> b!1253943 (= lt!566472 lt!566474)))

(declare-fun lt!566458 () ListLongMap!18661)

(assert (=> b!1253943 (= lt!566458 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566477 () (_ BitVec 64))

(assert (=> b!1253943 (= lt!566477 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!566473 () (_ BitVec 64))

(assert (=> b!1253943 (= lt!566473 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!566468 () Unit!41662)

(assert (=> b!1253943 (= lt!566468 (addApplyDifferent!528 lt!566458 lt!566477 zeroValue!871 lt!566473))))

(assert (=> b!1253943 (= (apply!1020 (+!4147 lt!566458 (tuple2!20777 lt!566477 zeroValue!871)) lt!566473) (apply!1020 lt!566458 lt!566473))))

(declare-fun lt!566464 () Unit!41662)

(assert (=> b!1253943 (= lt!566464 lt!566468)))

(declare-fun lt!566475 () ListLongMap!18661)

(assert (=> b!1253943 (= lt!566475 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566476 () (_ BitVec 64))

(assert (=> b!1253943 (= lt!566476 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!566479 () (_ BitVec 64))

(assert (=> b!1253943 (= lt!566479 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1253943 (= lt!566470 (addApplyDifferent!528 lt!566475 lt!566476 minValueBefore!43 lt!566479))))

(assert (=> b!1253943 (= (apply!1020 (+!4147 lt!566475 (tuple2!20777 lt!566476 minValueBefore!43)) lt!566479) (apply!1020 lt!566475 lt!566479))))

(declare-fun bm!61715 () Bool)

(assert (=> bm!61715 (= call!61715 call!61717)))

(declare-fun b!1253955 () Bool)

(assert (=> b!1253955 (= e!712492 (not call!61716))))

(declare-fun b!1253956 () Bool)

(declare-fun c!122274 () Bool)

(assert (=> b!1253956 (= c!122274 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1253956 (= e!712486 e!712484)))

(declare-fun b!1253957 () Bool)

(assert (=> b!1253957 (= e!712491 (= (apply!1020 lt!566460 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(assert (= (and d!137997 c!122275) b!1253938))

(assert (= (and d!137997 (not c!122275)) b!1253939))

(assert (= (and b!1253939 c!122272) b!1253942))

(assert (= (and b!1253939 (not c!122272)) b!1253956))

(assert (= (and b!1253956 c!122274) b!1253947))

(assert (= (and b!1253956 (not c!122274)) b!1253949))

(assert (= (or b!1253947 b!1253949) bm!61709))

(assert (= (or b!1253942 bm!61709) bm!61713))

(assert (= (or b!1253942 b!1253947) bm!61715))

(assert (= (or b!1253938 bm!61713) bm!61711))

(assert (= (or b!1253938 bm!61715) bm!61710))

(assert (= (and d!137997 res!836207) b!1253937))

(assert (= (and d!137997 c!122273) b!1253943))

(assert (= (and d!137997 (not c!122273)) b!1253941))

(assert (= (and d!137997 res!836206) b!1253940))

(assert (= (and b!1253940 res!836200) b!1253951))

(assert (= (and b!1253940 (not res!836202)) b!1253952))

(assert (= (and b!1253952 res!836203) b!1253950))

(assert (= (and b!1253940 res!836201) b!1253944))

(assert (= (and b!1253944 c!122277) b!1253946))

(assert (= (and b!1253944 (not c!122277)) b!1253953))

(assert (= (and b!1253946 res!836204) b!1253948))

(assert (= (or b!1253946 b!1253953) bm!61714))

(assert (= (and b!1253944 res!836205) b!1253945))

(assert (= (and b!1253945 c!122276) b!1253954))

(assert (= (and b!1253945 (not c!122276)) b!1253955))

(assert (= (and b!1253954 res!836208) b!1253957))

(assert (= (or b!1253954 b!1253955) bm!61712))

(declare-fun b_lambda!22621 () Bool)

(assert (=> (not b_lambda!22621) (not b!1253950)))

(assert (=> b!1253950 t!41512))

(declare-fun b_and!44773 () Bool)

(assert (= b_and!44771 (and (=> t!41512 result!23307) b_and!44773)))

(assert (=> d!137997 m!1154457))

(assert (=> b!1253952 m!1154527))

(assert (=> b!1253952 m!1154527))

(declare-fun m!1154595 () Bool)

(assert (=> b!1253952 m!1154595))

(assert (=> b!1253937 m!1154527))

(assert (=> b!1253937 m!1154527))

(assert (=> b!1253937 m!1154529))

(declare-fun m!1154597 () Bool)

(assert (=> bm!61712 m!1154597))

(declare-fun m!1154599 () Bool)

(assert (=> b!1253957 m!1154599))

(assert (=> b!1253950 m!1154519))

(assert (=> b!1253950 m!1154527))

(declare-fun m!1154601 () Bool)

(assert (=> b!1253950 m!1154601))

(assert (=> b!1253950 m!1154519))

(assert (=> b!1253950 m!1154513))

(assert (=> b!1253950 m!1154521))

(assert (=> b!1253950 m!1154513))

(assert (=> b!1253950 m!1154527))

(declare-fun m!1154603 () Bool)

(assert (=> bm!61714 m!1154603))

(assert (=> bm!61711 m!1154479))

(assert (=> b!1253951 m!1154527))

(assert (=> b!1253951 m!1154527))

(assert (=> b!1253951 m!1154529))

(declare-fun m!1154605 () Bool)

(assert (=> b!1253943 m!1154605))

(assert (=> b!1253943 m!1154479))

(declare-fun m!1154607 () Bool)

(assert (=> b!1253943 m!1154607))

(declare-fun m!1154609 () Bool)

(assert (=> b!1253943 m!1154609))

(declare-fun m!1154611 () Bool)

(assert (=> b!1253943 m!1154611))

(assert (=> b!1253943 m!1154607))

(declare-fun m!1154613 () Bool)

(assert (=> b!1253943 m!1154613))

(declare-fun m!1154615 () Bool)

(assert (=> b!1253943 m!1154615))

(declare-fun m!1154617 () Bool)

(assert (=> b!1253943 m!1154617))

(declare-fun m!1154619 () Bool)

(assert (=> b!1253943 m!1154619))

(assert (=> b!1253943 m!1154609))

(assert (=> b!1253943 m!1154527))

(declare-fun m!1154621 () Bool)

(assert (=> b!1253943 m!1154621))

(assert (=> b!1253943 m!1154619))

(declare-fun m!1154623 () Bool)

(assert (=> b!1253943 m!1154623))

(declare-fun m!1154625 () Bool)

(assert (=> b!1253943 m!1154625))

(assert (=> b!1253943 m!1154625))

(declare-fun m!1154627 () Bool)

(assert (=> b!1253943 m!1154627))

(declare-fun m!1154629 () Bool)

(assert (=> b!1253943 m!1154629))

(declare-fun m!1154631 () Bool)

(assert (=> b!1253943 m!1154631))

(declare-fun m!1154633 () Bool)

(assert (=> b!1253943 m!1154633))

(declare-fun m!1154635 () Bool)

(assert (=> b!1253938 m!1154635))

(declare-fun m!1154637 () Bool)

(assert (=> bm!61710 m!1154637))

(declare-fun m!1154639 () Bool)

(assert (=> b!1253948 m!1154639))

(assert (=> b!1253784 d!137997))

(declare-fun bm!61716 () Bool)

(declare-fun call!61725 () ListLongMap!18661)

(declare-fun call!61721 () ListLongMap!18661)

(assert (=> bm!61716 (= call!61725 call!61721)))

(declare-fun b!1253958 () Bool)

(declare-fun e!712498 () Bool)

(assert (=> b!1253958 (= e!712498 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253959 () Bool)

(declare-fun e!712495 () ListLongMap!18661)

(declare-fun call!61724 () ListLongMap!18661)

(assert (=> b!1253959 (= e!712495 (+!4147 call!61724 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun c!122278 () Bool)

(declare-fun c!122281 () Bool)

(declare-fun bm!61717 () Bool)

(declare-fun call!61720 () ListLongMap!18661)

(assert (=> bm!61717 (= call!61724 (+!4147 (ite c!122281 call!61720 (ite c!122278 call!61721 call!61725)) (ite (or c!122281 c!122278) (tuple2!20777 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun b!1253960 () Bool)

(declare-fun e!712499 () ListLongMap!18661)

(assert (=> b!1253960 (= e!712495 e!712499)))

(assert (=> b!1253960 (= c!122278 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!61718 () Bool)

(assert (=> bm!61718 (= call!61720 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253961 () Bool)

(declare-fun res!836210 () Bool)

(declare-fun e!712502 () Bool)

(assert (=> b!1253961 (=> (not res!836210) (not e!712502))))

(declare-fun e!712500 () Bool)

(assert (=> b!1253961 (= res!836210 e!712500)))

(declare-fun res!836211 () Bool)

(assert (=> b!1253961 (=> res!836211 e!712500)))

(declare-fun e!712496 () Bool)

(assert (=> b!1253961 (= res!836211 (not e!712496))))

(declare-fun res!836209 () Bool)

(assert (=> b!1253961 (=> (not res!836209) (not e!712496))))

(assert (=> b!1253961 (= res!836209 (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253962 () Bool)

(declare-fun e!712507 () Unit!41662)

(declare-fun Unit!41665 () Unit!41662)

(assert (=> b!1253962 (= e!712507 Unit!41665)))

(declare-fun b!1253963 () Bool)

(declare-fun call!61722 () ListLongMap!18661)

(assert (=> b!1253963 (= e!712499 call!61722)))

(declare-fun b!1253965 () Bool)

(declare-fun res!836214 () Bool)

(assert (=> b!1253965 (=> (not res!836214) (not e!712502))))

(declare-fun e!712501 () Bool)

(assert (=> b!1253965 (= res!836214 e!712501)))

(declare-fun c!122283 () Bool)

(assert (=> b!1253965 (= c!122283 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!61719 () Bool)

(declare-fun call!61723 () Bool)

(declare-fun lt!566482 () ListLongMap!18661)

(assert (=> bm!61719 (= call!61723 (contains!7539 lt!566482 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!61720 () Bool)

(assert (=> bm!61720 (= call!61721 call!61720)))

(declare-fun b!1253966 () Bool)

(declare-fun e!712505 () Bool)

(assert (=> b!1253966 (= e!712502 e!712505)))

(declare-fun c!122282 () Bool)

(assert (=> b!1253966 (= c!122282 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253967 () Bool)

(declare-fun e!712503 () Bool)

(assert (=> b!1253967 (= e!712501 e!712503)))

(declare-fun res!836213 () Bool)

(declare-fun call!61719 () Bool)

(assert (=> b!1253967 (= res!836213 call!61719)))

(assert (=> b!1253967 (=> (not res!836213) (not e!712503))))

(declare-fun b!1253968 () Bool)

(declare-fun e!712497 () ListLongMap!18661)

(assert (=> b!1253968 (= e!712497 call!61722)))

(declare-fun b!1253969 () Bool)

(assert (=> b!1253969 (= e!712503 (= (apply!1020 lt!566482 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1253970 () Bool)

(assert (=> b!1253970 (= e!712497 call!61725)))

(declare-fun bm!61721 () Bool)

(assert (=> bm!61721 (= call!61719 (contains!7539 lt!566482 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!712506 () Bool)

(declare-fun b!1253971 () Bool)

(assert (=> b!1253971 (= e!712506 (= (apply!1020 lt!566482 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)) (get!20122 (select (arr!39216 _values!914) #b00000000000000000000000000000000) (dynLambda!3465 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1253971 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39753 _values!914)))))

(assert (=> b!1253971 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253972 () Bool)

(assert (=> b!1253972 (= e!712496 (validKeyInArray!0 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253973 () Bool)

(assert (=> b!1253973 (= e!712500 e!712506)))

(declare-fun res!836212 () Bool)

(assert (=> b!1253973 (=> (not res!836212) (not e!712506))))

(assert (=> b!1253973 (= res!836212 (contains!7539 lt!566482 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1253973 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(declare-fun b!1253974 () Bool)

(assert (=> b!1253974 (= e!712501 (not call!61719))))

(declare-fun b!1253975 () Bool)

(declare-fun e!712504 () Bool)

(assert (=> b!1253975 (= e!712505 e!712504)))

(declare-fun res!836217 () Bool)

(assert (=> b!1253975 (= res!836217 call!61723)))

(assert (=> b!1253975 (=> (not res!836217) (not e!712504))))

(declare-fun d!137999 () Bool)

(assert (=> d!137999 e!712502))

(declare-fun res!836215 () Bool)

(assert (=> d!137999 (=> (not res!836215) (not e!712502))))

(assert (=> d!137999 (= res!836215 (or (bvsge #b00000000000000000000000000000000 (size!39752 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))))

(declare-fun lt!566493 () ListLongMap!18661)

(assert (=> d!137999 (= lt!566482 lt!566493)))

(declare-fun lt!566485 () Unit!41662)

(assert (=> d!137999 (= lt!566485 e!712507)))

(declare-fun c!122279 () Bool)

(assert (=> d!137999 (= c!122279 e!712498)))

(declare-fun res!836216 () Bool)

(assert (=> d!137999 (=> (not res!836216) (not e!712498))))

(assert (=> d!137999 (= res!836216 (bvslt #b00000000000000000000000000000000 (size!39752 _keys!1118)))))

(assert (=> d!137999 (= lt!566493 e!712495)))

(assert (=> d!137999 (= c!122281 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!137999 (validMask!0 mask!1466)))

(assert (=> d!137999 (= (getCurrentListMap!4534 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!566482)))

(declare-fun b!1253964 () Bool)

(declare-fun lt!566492 () Unit!41662)

(assert (=> b!1253964 (= e!712507 lt!566492)))

(declare-fun lt!566487 () ListLongMap!18661)

(assert (=> b!1253964 (= lt!566487 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566488 () (_ BitVec 64))

(assert (=> b!1253964 (= lt!566488 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!566491 () (_ BitVec 64))

(assert (=> b!1253964 (= lt!566491 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!566489 () Unit!41662)

(assert (=> b!1253964 (= lt!566489 (addStillContains!1094 lt!566487 lt!566488 zeroValue!871 lt!566491))))

(assert (=> b!1253964 (contains!7539 (+!4147 lt!566487 (tuple2!20777 lt!566488 zeroValue!871)) lt!566491)))

(declare-fun lt!566483 () Unit!41662)

(assert (=> b!1253964 (= lt!566483 lt!566489)))

(declare-fun lt!566500 () ListLongMap!18661)

(assert (=> b!1253964 (= lt!566500 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566481 () (_ BitVec 64))

(assert (=> b!1253964 (= lt!566481 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!566484 () (_ BitVec 64))

(assert (=> b!1253964 (= lt!566484 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!566496 () Unit!41662)

(assert (=> b!1253964 (= lt!566496 (addApplyDifferent!528 lt!566500 lt!566481 minValueAfter!43 lt!566484))))

(assert (=> b!1253964 (= (apply!1020 (+!4147 lt!566500 (tuple2!20777 lt!566481 minValueAfter!43)) lt!566484) (apply!1020 lt!566500 lt!566484))))

(declare-fun lt!566494 () Unit!41662)

(assert (=> b!1253964 (= lt!566494 lt!566496)))

(declare-fun lt!566480 () ListLongMap!18661)

(assert (=> b!1253964 (= lt!566480 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566499 () (_ BitVec 64))

(assert (=> b!1253964 (= lt!566499 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!566495 () (_ BitVec 64))

(assert (=> b!1253964 (= lt!566495 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!566490 () Unit!41662)

(assert (=> b!1253964 (= lt!566490 (addApplyDifferent!528 lt!566480 lt!566499 zeroValue!871 lt!566495))))

(assert (=> b!1253964 (= (apply!1020 (+!4147 lt!566480 (tuple2!20777 lt!566499 zeroValue!871)) lt!566495) (apply!1020 lt!566480 lt!566495))))

(declare-fun lt!566486 () Unit!41662)

(assert (=> b!1253964 (= lt!566486 lt!566490)))

(declare-fun lt!566497 () ListLongMap!18661)

(assert (=> b!1253964 (= lt!566497 (getCurrentListMapNoExtraKeys!5712 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!566498 () (_ BitVec 64))

(assert (=> b!1253964 (= lt!566498 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!566501 () (_ BitVec 64))

(assert (=> b!1253964 (= lt!566501 (select (arr!39215 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1253964 (= lt!566492 (addApplyDifferent!528 lt!566497 lt!566498 minValueAfter!43 lt!566501))))

(assert (=> b!1253964 (= (apply!1020 (+!4147 lt!566497 (tuple2!20777 lt!566498 minValueAfter!43)) lt!566501) (apply!1020 lt!566497 lt!566501))))

(declare-fun bm!61722 () Bool)

(assert (=> bm!61722 (= call!61722 call!61724)))

(declare-fun b!1253976 () Bool)

(assert (=> b!1253976 (= e!712505 (not call!61723))))

(declare-fun b!1253977 () Bool)

(declare-fun c!122280 () Bool)

(assert (=> b!1253977 (= c!122280 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1253977 (= e!712499 e!712497)))

(declare-fun b!1253978 () Bool)

(assert (=> b!1253978 (= e!712504 (= (apply!1020 lt!566482 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(assert (= (and d!137999 c!122281) b!1253959))

(assert (= (and d!137999 (not c!122281)) b!1253960))

(assert (= (and b!1253960 c!122278) b!1253963))

(assert (= (and b!1253960 (not c!122278)) b!1253977))

(assert (= (and b!1253977 c!122280) b!1253968))

(assert (= (and b!1253977 (not c!122280)) b!1253970))

(assert (= (or b!1253968 b!1253970) bm!61716))

(assert (= (or b!1253963 bm!61716) bm!61720))

(assert (= (or b!1253963 b!1253968) bm!61722))

(assert (= (or b!1253959 bm!61720) bm!61718))

(assert (= (or b!1253959 bm!61722) bm!61717))

(assert (= (and d!137999 res!836216) b!1253958))

(assert (= (and d!137999 c!122279) b!1253964))

(assert (= (and d!137999 (not c!122279)) b!1253962))

(assert (= (and d!137999 res!836215) b!1253961))

(assert (= (and b!1253961 res!836209) b!1253972))

(assert (= (and b!1253961 (not res!836211)) b!1253973))

(assert (= (and b!1253973 res!836212) b!1253971))

(assert (= (and b!1253961 res!836210) b!1253965))

(assert (= (and b!1253965 c!122283) b!1253967))

(assert (= (and b!1253965 (not c!122283)) b!1253974))

(assert (= (and b!1253967 res!836213) b!1253969))

(assert (= (or b!1253967 b!1253974) bm!61721))

(assert (= (and b!1253965 res!836214) b!1253966))

(assert (= (and b!1253966 c!122282) b!1253975))

(assert (= (and b!1253966 (not c!122282)) b!1253976))

(assert (= (and b!1253975 res!836217) b!1253978))

(assert (= (or b!1253975 b!1253976) bm!61719))

(declare-fun b_lambda!22623 () Bool)

(assert (=> (not b_lambda!22623) (not b!1253971)))

(assert (=> b!1253971 t!41512))

(declare-fun b_and!44775 () Bool)

(assert (= b_and!44773 (and (=> t!41512 result!23307) b_and!44775)))

(assert (=> d!137999 m!1154457))

(assert (=> b!1253973 m!1154527))

(assert (=> b!1253973 m!1154527))

(declare-fun m!1154641 () Bool)

(assert (=> b!1253973 m!1154641))

(assert (=> b!1253958 m!1154527))

(assert (=> b!1253958 m!1154527))

(assert (=> b!1253958 m!1154529))

(declare-fun m!1154643 () Bool)

(assert (=> bm!61719 m!1154643))

(declare-fun m!1154645 () Bool)

(assert (=> b!1253978 m!1154645))

(assert (=> b!1253971 m!1154519))

(assert (=> b!1253971 m!1154527))

(declare-fun m!1154647 () Bool)

(assert (=> b!1253971 m!1154647))

(assert (=> b!1253971 m!1154519))

(assert (=> b!1253971 m!1154513))

(assert (=> b!1253971 m!1154521))

(assert (=> b!1253971 m!1154513))

(assert (=> b!1253971 m!1154527))

(declare-fun m!1154649 () Bool)

(assert (=> bm!61721 m!1154649))

(assert (=> bm!61718 m!1154477))

(assert (=> b!1253972 m!1154527))

(assert (=> b!1253972 m!1154527))

(assert (=> b!1253972 m!1154529))

(declare-fun m!1154651 () Bool)

(assert (=> b!1253964 m!1154651))

(assert (=> b!1253964 m!1154477))

(declare-fun m!1154653 () Bool)

(assert (=> b!1253964 m!1154653))

(declare-fun m!1154655 () Bool)

(assert (=> b!1253964 m!1154655))

(declare-fun m!1154657 () Bool)

(assert (=> b!1253964 m!1154657))

(assert (=> b!1253964 m!1154653))

(declare-fun m!1154659 () Bool)

(assert (=> b!1253964 m!1154659))

(declare-fun m!1154661 () Bool)

(assert (=> b!1253964 m!1154661))

(declare-fun m!1154663 () Bool)

(assert (=> b!1253964 m!1154663))

(declare-fun m!1154665 () Bool)

(assert (=> b!1253964 m!1154665))

(assert (=> b!1253964 m!1154655))

(assert (=> b!1253964 m!1154527))

(declare-fun m!1154667 () Bool)

(assert (=> b!1253964 m!1154667))

(assert (=> b!1253964 m!1154665))

(declare-fun m!1154669 () Bool)

(assert (=> b!1253964 m!1154669))

(declare-fun m!1154671 () Bool)

(assert (=> b!1253964 m!1154671))

(assert (=> b!1253964 m!1154671))

(declare-fun m!1154673 () Bool)

(assert (=> b!1253964 m!1154673))

(declare-fun m!1154675 () Bool)

(assert (=> b!1253964 m!1154675))

(declare-fun m!1154677 () Bool)

(assert (=> b!1253964 m!1154677))

(declare-fun m!1154679 () Bool)

(assert (=> b!1253964 m!1154679))

(declare-fun m!1154681 () Bool)

(assert (=> b!1253959 m!1154681))

(declare-fun m!1154683 () Bool)

(assert (=> bm!61717 m!1154683))

(declare-fun m!1154685 () Bool)

(assert (=> b!1253969 m!1154685))

(assert (=> b!1253784 d!137999))

(declare-fun d!138001 () Bool)

(assert (=> d!138001 (= (-!2056 (+!4147 lt!566335 (tuple2!20777 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) #b1000000000000000000000000000000000000000000000000000000000000000) lt!566335)))

(declare-fun lt!566504 () Unit!41662)

(declare-fun choose!1863 (ListLongMap!18661 (_ BitVec 64) V!47817) Unit!41662)

(assert (=> d!138001 (= lt!566504 (choose!1863 lt!566335 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> d!138001 (not (contains!7539 lt!566335 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138001 (= (addThenRemoveForNewKeyIsSame!316 lt!566335 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43) lt!566504)))

(declare-fun bs!35422 () Bool)

(assert (= bs!35422 d!138001))

(assert (=> bs!35422 m!1154467))

(assert (=> bs!35422 m!1154467))

(declare-fun m!1154687 () Bool)

(assert (=> bs!35422 m!1154687))

(declare-fun m!1154689 () Bool)

(assert (=> bs!35422 m!1154689))

(declare-fun m!1154691 () Bool)

(assert (=> bs!35422 m!1154691))

(assert (=> b!1253784 d!138001))

(declare-fun mapIsEmpty!49540 () Bool)

(declare-fun mapRes!49540 () Bool)

(assert (=> mapIsEmpty!49540 mapRes!49540))

(declare-fun mapNonEmpty!49540 () Bool)

(declare-fun tp!94326 () Bool)

(declare-fun e!712512 () Bool)

(assert (=> mapNonEmpty!49540 (= mapRes!49540 (and tp!94326 e!712512))))

(declare-fun mapKey!49540 () (_ BitVec 32))

(declare-fun mapRest!49540 () (Array (_ BitVec 32) ValueCell!15156))

(declare-fun mapValue!49540 () ValueCell!15156)

(assert (=> mapNonEmpty!49540 (= mapRest!49534 (store mapRest!49540 mapKey!49540 mapValue!49540))))

(declare-fun condMapEmpty!49540 () Bool)

(declare-fun mapDefault!49540 () ValueCell!15156)

(assert (=> mapNonEmpty!49534 (= condMapEmpty!49540 (= mapRest!49534 ((as const (Array (_ BitVec 32) ValueCell!15156)) mapDefault!49540)))))

(declare-fun e!712513 () Bool)

(assert (=> mapNonEmpty!49534 (= tp!94316 (and e!712513 mapRes!49540))))

(declare-fun b!1253986 () Bool)

(assert (=> b!1253986 (= e!712513 tp_is_empty!31839)))

(declare-fun b!1253985 () Bool)

(assert (=> b!1253985 (= e!712512 tp_is_empty!31839)))

(assert (= (and mapNonEmpty!49534 condMapEmpty!49540) mapIsEmpty!49540))

(assert (= (and mapNonEmpty!49534 (not condMapEmpty!49540)) mapNonEmpty!49540))

(assert (= (and mapNonEmpty!49540 ((_ is ValueCellFull!15156) mapValue!49540)) b!1253985))

(assert (= (and mapNonEmpty!49534 ((_ is ValueCellFull!15156) mapDefault!49540)) b!1253986))

(declare-fun m!1154693 () Bool)

(assert (=> mapNonEmpty!49540 m!1154693))

(declare-fun b_lambda!22625 () Bool)

(assert (= b_lambda!22623 (or (and start!105256 b_free!26937) b_lambda!22625)))

(declare-fun b_lambda!22627 () Bool)

(assert (= b_lambda!22615 (or (and start!105256 b_free!26937) b_lambda!22627)))

(declare-fun b_lambda!22629 () Bool)

(assert (= b_lambda!22619 (or (and start!105256 b_free!26937) b_lambda!22629)))

(declare-fun b_lambda!22631 () Bool)

(assert (= b_lambda!22613 (or (and start!105256 b_free!26937) b_lambda!22631)))

(declare-fun b_lambda!22633 () Bool)

(assert (= b_lambda!22621 (or (and start!105256 b_free!26937) b_lambda!22633)))

(declare-fun b_lambda!22635 () Bool)

(assert (= b_lambda!22617 (or (and start!105256 b_free!26937) b_lambda!22635)))

(check-sat (not b!1253943) (not d!137991) (not b!1253964) (not bm!61714) (not b!1253973) (not bm!61718) (not b!1253957) (not d!137993) (not b!1253842) (not b!1253861) (not b!1253959) (not b!1253840) (not b!1253872) (not d!137999) (not b!1253856) (not b!1253894) (not b_lambda!22629) (not b!1253847) (not bm!61717) (not bm!61691) (not b!1253850) (not b!1253871) (not bm!61711) (not b!1253950) b_and!44775 (not bm!61712) (not b!1253859) (not b!1253853) (not b!1253857) (not b!1253948) (not b!1253885) (not b!1253978) (not mapNonEmpty!49540) tp_is_empty!31839 (not b!1253884) (not b!1253839) (not d!137997) (not b_lambda!22635) (not b_next!26937) (not bm!61719) (not b!1253886) (not b!1253952) (not b_lambda!22625) (not b_lambda!22633) (not b!1253958) (not b!1253854) (not b!1253845) (not d!137981) (not d!137983) (not bm!61688) (not b!1253971) (not b!1253938) (not b!1253893) (not d!137995) (not b!1253937) (not b!1253843) (not d!138001) (not b_lambda!22627) (not b!1253951) (not b!1253855) (not bm!61710) (not b!1253841) (not bm!61687) (not bm!61694) (not d!137985) (not b_lambda!22631) (not b!1253969) (not b!1253972) (not b!1253836) (not bm!61721))
(check-sat b_and!44775 (not b_next!26937))
