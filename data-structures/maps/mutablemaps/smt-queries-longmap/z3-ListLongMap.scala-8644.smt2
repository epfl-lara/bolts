; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105220 () Bool)

(assert start!105220)

(declare-fun b_free!26901 () Bool)

(declare-fun b_next!26901 () Bool)

(assert (=> start!105220 (= b_free!26901 (not b_next!26901))))

(declare-fun tp!94208 () Bool)

(declare-fun b_and!44725 () Bool)

(assert (=> start!105220 (= tp!94208 b_and!44725)))

(declare-fun b!1253339 () Bool)

(declare-fun e!712050 () Bool)

(declare-fun tp_is_empty!31803 () Bool)

(assert (=> b!1253339 (= e!712050 tp_is_empty!31803)))

(declare-fun b!1253340 () Bool)

(declare-fun res!835848 () Bool)

(declare-fun e!712051 () Bool)

(assert (=> b!1253340 (=> (not res!835848) (not e!712051))))

(declare-datatypes ((array!81247 0))(
  ( (array!81248 (arr!39181 (Array (_ BitVec 32) (_ BitVec 64))) (size!39718 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81247)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81247 (_ BitVec 32)) Bool)

(assert (=> b!1253340 (= res!835848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49480 () Bool)

(declare-fun mapRes!49480 () Bool)

(declare-fun tp!94209 () Bool)

(assert (=> mapNonEmpty!49480 (= mapRes!49480 (and tp!94209 e!712050))))

(declare-datatypes ((V!47769 0))(
  ( (V!47770 (val!15964 Int)) )
))
(declare-datatypes ((ValueCell!15138 0))(
  ( (ValueCellFull!15138 (v!18662 V!47769)) (EmptyCell!15138) )
))
(declare-fun mapRest!49480 () (Array (_ BitVec 32) ValueCell!15138))

(declare-fun mapKey!49480 () (_ BitVec 32))

(declare-datatypes ((array!81249 0))(
  ( (array!81250 (arr!39182 (Array (_ BitVec 32) ValueCell!15138)) (size!39719 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81249)

(declare-fun mapValue!49480 () ValueCell!15138)

(assert (=> mapNonEmpty!49480 (= (arr!39182 _values!914) (store mapRest!49480 mapKey!49480 mapValue!49480))))

(declare-fun b!1253341 () Bool)

(declare-fun e!712047 () Bool)

(declare-fun e!712049 () Bool)

(assert (=> b!1253341 (= e!712047 (and e!712049 mapRes!49480))))

(declare-fun condMapEmpty!49480 () Bool)

(declare-fun mapDefault!49480 () ValueCell!15138)

(assert (=> b!1253341 (= condMapEmpty!49480 (= (arr!39182 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15138)) mapDefault!49480)))))

(declare-fun res!835847 () Bool)

(assert (=> start!105220 (=> (not res!835847) (not e!712051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105220 (= res!835847 (validMask!0 mask!1466))))

(assert (=> start!105220 e!712051))

(assert (=> start!105220 true))

(assert (=> start!105220 tp!94208))

(assert (=> start!105220 tp_is_empty!31803))

(declare-fun array_inv!29811 (array!81247) Bool)

(assert (=> start!105220 (array_inv!29811 _keys!1118)))

(declare-fun array_inv!29812 (array!81249) Bool)

(assert (=> start!105220 (and (array_inv!29812 _values!914) e!712047)))

(declare-fun mapIsEmpty!49480 () Bool)

(assert (=> mapIsEmpty!49480 mapRes!49480))

(declare-fun b!1253342 () Bool)

(declare-fun e!712052 () Bool)

(assert (=> b!1253342 (= e!712051 (not e!712052))))

(declare-fun res!835849 () Bool)

(assert (=> b!1253342 (=> res!835849 e!712052)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253342 (= res!835849 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20748 0))(
  ( (tuple2!20749 (_1!10384 (_ BitVec 64)) (_2!10384 V!47769)) )
))
(declare-datatypes ((List!27996 0))(
  ( (Nil!27993) (Cons!27992 (h!29201 tuple2!20748) (t!41484 List!27996)) )
))
(declare-datatypes ((ListLongMap!18633 0))(
  ( (ListLongMap!18634 (toList!9332 List!27996)) )
))
(declare-fun lt!565907 () ListLongMap!18633)

(declare-fun lt!565904 () ListLongMap!18633)

(assert (=> b!1253342 (= lt!565907 lt!565904)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41634 0))(
  ( (Unit!41635) )
))
(declare-fun lt!565909 () Unit!41634)

(declare-fun minValueAfter!43 () V!47769)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47769)

(declare-fun minValueBefore!43 () V!47769)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1018 (array!81247 array!81249 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47769 V!47769 V!47769 V!47769 (_ BitVec 32) Int) Unit!41634)

(assert (=> b!1253342 (= lt!565909 (lemmaNoChangeToArrayThenSameMapNoExtras!1018 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5700 (array!81247 array!81249 (_ BitVec 32) (_ BitVec 32) V!47769 V!47769 (_ BitVec 32) Int) ListLongMap!18633)

(assert (=> b!1253342 (= lt!565904 (getCurrentListMapNoExtraKeys!5700 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253342 (= lt!565907 (getCurrentListMapNoExtraKeys!5700 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253343 () Bool)

(declare-fun res!835846 () Bool)

(assert (=> b!1253343 (=> (not res!835846) (not e!712051))))

(declare-datatypes ((List!27997 0))(
  ( (Nil!27994) (Cons!27993 (h!29202 (_ BitVec 64)) (t!41485 List!27997)) )
))
(declare-fun arrayNoDuplicates!0 (array!81247 (_ BitVec 32) List!27997) Bool)

(assert (=> b!1253343 (= res!835846 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27994))))

(declare-fun b!1253344 () Bool)

(declare-fun res!835850 () Bool)

(assert (=> b!1253344 (=> (not res!835850) (not e!712051))))

(assert (=> b!1253344 (= res!835850 (and (= (size!39719 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39718 _keys!1118) (size!39719 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253345 () Bool)

(assert (=> b!1253345 (= e!712052 true)))

(declare-fun lt!565906 () ListLongMap!18633)

(declare-fun lt!565903 () ListLongMap!18633)

(declare-fun -!2045 (ListLongMap!18633 (_ BitVec 64)) ListLongMap!18633)

(assert (=> b!1253345 (= lt!565906 (-!2045 lt!565903 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565908 () ListLongMap!18633)

(assert (=> b!1253345 (= (-!2045 lt!565908 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565907)))

(declare-fun lt!565905 () Unit!41634)

(declare-fun addThenRemoveForNewKeyIsSame!305 (ListLongMap!18633 (_ BitVec 64) V!47769) Unit!41634)

(assert (=> b!1253345 (= lt!565905 (addThenRemoveForNewKeyIsSame!305 lt!565907 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565910 () ListLongMap!18633)

(assert (=> b!1253345 (and (= lt!565903 lt!565908) (= lt!565910 lt!565904))))

(declare-fun +!4136 (ListLongMap!18633 tuple2!20748) ListLongMap!18633)

(assert (=> b!1253345 (= lt!565908 (+!4136 lt!565907 (tuple2!20749 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4523 (array!81247 array!81249 (_ BitVec 32) (_ BitVec 32) V!47769 V!47769 (_ BitVec 32) Int) ListLongMap!18633)

(assert (=> b!1253345 (= lt!565910 (getCurrentListMap!4523 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253345 (= lt!565903 (getCurrentListMap!4523 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253346 () Bool)

(assert (=> b!1253346 (= e!712049 tp_is_empty!31803)))

(assert (= (and start!105220 res!835847) b!1253344))

(assert (= (and b!1253344 res!835850) b!1253340))

(assert (= (and b!1253340 res!835848) b!1253343))

(assert (= (and b!1253343 res!835846) b!1253342))

(assert (= (and b!1253342 (not res!835849)) b!1253345))

(assert (= (and b!1253341 condMapEmpty!49480) mapIsEmpty!49480))

(assert (= (and b!1253341 (not condMapEmpty!49480)) mapNonEmpty!49480))

(get-info :version)

(assert (= (and mapNonEmpty!49480 ((_ is ValueCellFull!15138) mapValue!49480)) b!1253339))

(assert (= (and b!1253341 ((_ is ValueCellFull!15138) mapDefault!49480)) b!1253346))

(assert (= start!105220 b!1253341))

(declare-fun m!1153911 () Bool)

(assert (=> mapNonEmpty!49480 m!1153911))

(declare-fun m!1153913 () Bool)

(assert (=> b!1253343 m!1153913))

(declare-fun m!1153915 () Bool)

(assert (=> start!105220 m!1153915))

(declare-fun m!1153917 () Bool)

(assert (=> start!105220 m!1153917))

(declare-fun m!1153919 () Bool)

(assert (=> start!105220 m!1153919))

(declare-fun m!1153921 () Bool)

(assert (=> b!1253340 m!1153921))

(declare-fun m!1153923 () Bool)

(assert (=> b!1253345 m!1153923))

(declare-fun m!1153925 () Bool)

(assert (=> b!1253345 m!1153925))

(declare-fun m!1153927 () Bool)

(assert (=> b!1253345 m!1153927))

(declare-fun m!1153929 () Bool)

(assert (=> b!1253345 m!1153929))

(declare-fun m!1153931 () Bool)

(assert (=> b!1253345 m!1153931))

(declare-fun m!1153933 () Bool)

(assert (=> b!1253345 m!1153933))

(declare-fun m!1153935 () Bool)

(assert (=> b!1253342 m!1153935))

(declare-fun m!1153937 () Bool)

(assert (=> b!1253342 m!1153937))

(declare-fun m!1153939 () Bool)

(assert (=> b!1253342 m!1153939))

(check-sat (not b_next!26901) (not b!1253340) (not mapNonEmpty!49480) b_and!44725 (not b!1253342) (not start!105220) tp_is_empty!31803 (not b!1253345) (not b!1253343))
(check-sat b_and!44725 (not b_next!26901))
