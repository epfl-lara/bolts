; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105290 () Bool)

(assert start!105290)

(declare-fun b_free!26949 () Bool)

(declare-fun b_next!26949 () Bool)

(assert (=> start!105290 (= b_free!26949 (not b_next!26949))))

(declare-fun tp!94355 () Bool)

(declare-fun b_and!44785 () Bool)

(assert (=> start!105290 (= tp!94355 b_and!44785)))

(declare-fun b!1254099 () Bool)

(declare-fun e!712598 () Bool)

(assert (=> b!1254099 (= e!712598 true)))

(declare-datatypes ((V!47833 0))(
  ( (V!47834 (val!15988 Int)) )
))
(declare-datatypes ((tuple2!20780 0))(
  ( (tuple2!20781 (_1!10400 (_ BitVec 64)) (_2!10400 V!47833)) )
))
(declare-datatypes ((List!28025 0))(
  ( (Nil!28022) (Cons!28021 (h!29230 tuple2!20780) (t!41515 List!28025)) )
))
(declare-datatypes ((ListLongMap!18665 0))(
  ( (ListLongMap!18666 (toList!9348 List!28025)) )
))
(declare-fun lt!566620 () ListLongMap!18665)

(declare-fun lt!566621 () ListLongMap!18665)

(declare-fun -!2058 (ListLongMap!18665 (_ BitVec 64)) ListLongMap!18665)

(assert (=> b!1254099 (= lt!566620 (-!2058 lt!566621 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566622 () ListLongMap!18665)

(declare-fun lt!566623 () ListLongMap!18665)

(assert (=> b!1254099 (= (-!2058 lt!566622 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566623)))

(declare-datatypes ((Unit!41668 0))(
  ( (Unit!41669) )
))
(declare-fun lt!566619 () Unit!41668)

(declare-fun minValueBefore!43 () V!47833)

(declare-fun addThenRemoveForNewKeyIsSame!318 (ListLongMap!18665 (_ BitVec 64) V!47833) Unit!41668)

(assert (=> b!1254099 (= lt!566619 (addThenRemoveForNewKeyIsSame!318 lt!566623 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566617 () ListLongMap!18665)

(declare-fun lt!566618 () ListLongMap!18665)

(assert (=> b!1254099 (and (= lt!566621 lt!566622) (= lt!566617 lt!566618))))

(declare-fun +!4149 (ListLongMap!18665 tuple2!20780) ListLongMap!18665)

(assert (=> b!1254099 (= lt!566622 (+!4149 lt!566623 (tuple2!20781 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47833)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47833)

(declare-datatypes ((array!81339 0))(
  ( (array!81340 (arr!39226 (Array (_ BitVec 32) (_ BitVec 64))) (size!39763 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81339)

(declare-datatypes ((ValueCell!15162 0))(
  ( (ValueCellFull!15162 (v!18687 V!47833)) (EmptyCell!15162) )
))
(declare-datatypes ((array!81341 0))(
  ( (array!81342 (arr!39227 (Array (_ BitVec 32) ValueCell!15162)) (size!39764 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81341)

(declare-fun getCurrentListMap!4536 (array!81339 array!81341 (_ BitVec 32) (_ BitVec 32) V!47833 V!47833 (_ BitVec 32) Int) ListLongMap!18665)

(assert (=> b!1254099 (= lt!566617 (getCurrentListMap!4536 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254099 (= lt!566621 (getCurrentListMap!4536 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254100 () Bool)

(declare-fun res!836292 () Bool)

(declare-fun e!712601 () Bool)

(assert (=> b!1254100 (=> (not res!836292) (not e!712601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81339 (_ BitVec 32)) Bool)

(assert (=> b!1254100 (= res!836292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!836290 () Bool)

(assert (=> start!105290 (=> (not res!836290) (not e!712601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105290 (= res!836290 (validMask!0 mask!1466))))

(assert (=> start!105290 e!712601))

(assert (=> start!105290 true))

(assert (=> start!105290 tp!94355))

(declare-fun tp_is_empty!31851 () Bool)

(assert (=> start!105290 tp_is_empty!31851))

(declare-fun array_inv!29839 (array!81339) Bool)

(assert (=> start!105290 (array_inv!29839 _keys!1118)))

(declare-fun e!712600 () Bool)

(declare-fun array_inv!29840 (array!81341) Bool)

(assert (=> start!105290 (and (array_inv!29840 _values!914) e!712600)))

(declare-fun b!1254101 () Bool)

(declare-fun res!836289 () Bool)

(assert (=> b!1254101 (=> (not res!836289) (not e!712601))))

(assert (=> b!1254101 (= res!836289 (and (= (size!39764 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39763 _keys!1118) (size!39764 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254102 () Bool)

(declare-fun e!712603 () Bool)

(assert (=> b!1254102 (= e!712603 tp_is_empty!31851)))

(declare-fun b!1254103 () Bool)

(declare-fun e!712599 () Bool)

(assert (=> b!1254103 (= e!712599 tp_is_empty!31851)))

(declare-fun mapIsEmpty!49555 () Bool)

(declare-fun mapRes!49555 () Bool)

(assert (=> mapIsEmpty!49555 mapRes!49555))

(declare-fun b!1254104 () Bool)

(declare-fun res!836288 () Bool)

(assert (=> b!1254104 (=> (not res!836288) (not e!712601))))

(declare-datatypes ((List!28026 0))(
  ( (Nil!28023) (Cons!28022 (h!29231 (_ BitVec 64)) (t!41516 List!28026)) )
))
(declare-fun arrayNoDuplicates!0 (array!81339 (_ BitVec 32) List!28026) Bool)

(assert (=> b!1254104 (= res!836288 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28023))))

(declare-fun b!1254105 () Bool)

(assert (=> b!1254105 (= e!712600 (and e!712603 mapRes!49555))))

(declare-fun condMapEmpty!49555 () Bool)

(declare-fun mapDefault!49555 () ValueCell!15162)

(assert (=> b!1254105 (= condMapEmpty!49555 (= (arr!39227 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15162)) mapDefault!49555)))))

(declare-fun b!1254106 () Bool)

(assert (=> b!1254106 (= e!712601 (not e!712598))))

(declare-fun res!836291 () Bool)

(assert (=> b!1254106 (=> res!836291 e!712598)))

(assert (=> b!1254106 (= res!836291 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1254106 (= lt!566623 lt!566618)))

(declare-fun lt!566624 () Unit!41668)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1032 (array!81339 array!81341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47833 V!47833 V!47833 V!47833 (_ BitVec 32) Int) Unit!41668)

(assert (=> b!1254106 (= lt!566624 (lemmaNoChangeToArrayThenSameMapNoExtras!1032 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5714 (array!81339 array!81341 (_ BitVec 32) (_ BitVec 32) V!47833 V!47833 (_ BitVec 32) Int) ListLongMap!18665)

(assert (=> b!1254106 (= lt!566618 (getCurrentListMapNoExtraKeys!5714 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254106 (= lt!566623 (getCurrentListMapNoExtraKeys!5714 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49555 () Bool)

(declare-fun tp!94356 () Bool)

(assert (=> mapNonEmpty!49555 (= mapRes!49555 (and tp!94356 e!712599))))

(declare-fun mapRest!49555 () (Array (_ BitVec 32) ValueCell!15162))

(declare-fun mapKey!49555 () (_ BitVec 32))

(declare-fun mapValue!49555 () ValueCell!15162)

(assert (=> mapNonEmpty!49555 (= (arr!39227 _values!914) (store mapRest!49555 mapKey!49555 mapValue!49555))))

(assert (= (and start!105290 res!836290) b!1254101))

(assert (= (and b!1254101 res!836289) b!1254100))

(assert (= (and b!1254100 res!836292) b!1254104))

(assert (= (and b!1254104 res!836288) b!1254106))

(assert (= (and b!1254106 (not res!836291)) b!1254099))

(assert (= (and b!1254105 condMapEmpty!49555) mapIsEmpty!49555))

(assert (= (and b!1254105 (not condMapEmpty!49555)) mapNonEmpty!49555))

(get-info :version)

(assert (= (and mapNonEmpty!49555 ((_ is ValueCellFull!15162) mapValue!49555)) b!1254103))

(assert (= (and b!1254105 ((_ is ValueCellFull!15162) mapDefault!49555)) b!1254102))

(assert (= start!105290 b!1254105))

(declare-fun m!1154815 () Bool)

(assert (=> start!105290 m!1154815))

(declare-fun m!1154817 () Bool)

(assert (=> start!105290 m!1154817))

(declare-fun m!1154819 () Bool)

(assert (=> start!105290 m!1154819))

(declare-fun m!1154821 () Bool)

(assert (=> b!1254099 m!1154821))

(declare-fun m!1154823 () Bool)

(assert (=> b!1254099 m!1154823))

(declare-fun m!1154825 () Bool)

(assert (=> b!1254099 m!1154825))

(declare-fun m!1154827 () Bool)

(assert (=> b!1254099 m!1154827))

(declare-fun m!1154829 () Bool)

(assert (=> b!1254099 m!1154829))

(declare-fun m!1154831 () Bool)

(assert (=> b!1254099 m!1154831))

(declare-fun m!1154833 () Bool)

(assert (=> b!1254100 m!1154833))

(declare-fun m!1154835 () Bool)

(assert (=> b!1254106 m!1154835))

(declare-fun m!1154837 () Bool)

(assert (=> b!1254106 m!1154837))

(declare-fun m!1154839 () Bool)

(assert (=> b!1254106 m!1154839))

(declare-fun m!1154841 () Bool)

(assert (=> mapNonEmpty!49555 m!1154841))

(declare-fun m!1154843 () Bool)

(assert (=> b!1254104 m!1154843))

(check-sat (not start!105290) (not b!1254104) (not b!1254100) (not mapNonEmpty!49555) (not b_next!26949) tp_is_empty!31851 b_and!44785 (not b!1254099) (not b!1254106))
(check-sat b_and!44785 (not b_next!26949))
