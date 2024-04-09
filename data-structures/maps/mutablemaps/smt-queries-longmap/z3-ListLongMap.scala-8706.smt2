; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105724 () Bool)

(assert start!105724)

(declare-fun b_free!27273 () Bool)

(declare-fun b_next!27273 () Bool)

(assert (=> start!105724 (= b_free!27273 (not b_next!27273))))

(declare-fun tp!95345 () Bool)

(declare-fun b_and!45167 () Bool)

(assert (=> start!105724 (= tp!95345 b_and!45167)))

(declare-fun b!1258808 () Bool)

(declare-fun e!716042 () Bool)

(declare-fun tp_is_empty!32175 () Bool)

(assert (=> b!1258808 (= e!716042 tp_is_empty!32175)))

(declare-fun b!1258809 () Bool)

(declare-fun res!839051 () Bool)

(declare-fun e!716047 () Bool)

(assert (=> b!1258809 (=> (not res!839051) (not e!716047))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81967 0))(
  ( (array!81968 (arr!39534 (Array (_ BitVec 32) (_ BitVec 64))) (size!40071 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81967)

(declare-datatypes ((V!48265 0))(
  ( (V!48266 (val!16150 Int)) )
))
(declare-datatypes ((ValueCell!15324 0))(
  ( (ValueCellFull!15324 (v!18852 V!48265)) (EmptyCell!15324) )
))
(declare-datatypes ((array!81969 0))(
  ( (array!81970 (arr!39535 (Array (_ BitVec 32) ValueCell!15324)) (size!40072 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81969)

(assert (=> b!1258809 (= res!839051 (and (= (size!40072 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40071 _keys!1118) (size!40072 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258810 () Bool)

(declare-fun e!716043 () Bool)

(assert (=> b!1258810 (= e!716043 true)))

(declare-fun lt!569426 () Bool)

(declare-datatypes ((tuple2!21028 0))(
  ( (tuple2!21029 (_1!10524 (_ BitVec 64)) (_2!10524 V!48265)) )
))
(declare-datatypes ((List!28258 0))(
  ( (Nil!28255) (Cons!28254 (h!29463 tuple2!21028) (t!41760 List!28258)) )
))
(declare-datatypes ((ListLongMap!18913 0))(
  ( (ListLongMap!18914 (toList!9472 List!28258)) )
))
(declare-fun lt!569421 () ListLongMap!18913)

(declare-fun contains!7594 (ListLongMap!18913 (_ BitVec 64)) Bool)

(assert (=> b!1258810 (= lt!569426 (contains!7594 lt!569421 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!716044 () Bool)

(assert (=> b!1258810 e!716044))

(declare-fun res!839050 () Bool)

(assert (=> b!1258810 (=> (not res!839050) (not e!716044))))

(declare-fun lt!569428 () ListLongMap!18913)

(declare-fun minValueBefore!43 () V!48265)

(declare-fun +!4171 (ListLongMap!18913 tuple2!21028) ListLongMap!18913)

(assert (=> b!1258810 (= res!839050 (= lt!569428 (+!4171 lt!569421 (tuple2!21029 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!569422 () ListLongMap!18913)

(declare-fun lt!569424 () tuple2!21028)

(assert (=> b!1258810 (= lt!569421 (+!4171 lt!569422 lt!569424))))

(declare-fun zeroValue!871 () V!48265)

(assert (=> b!1258810 (= lt!569424 (tuple2!21029 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun lt!569425 () ListLongMap!18913)

(declare-fun minValueAfter!43 () V!48265)

(declare-fun getCurrentListMap!4611 (array!81967 array!81969 (_ BitVec 32) (_ BitVec 32) V!48265 V!48265 (_ BitVec 32) Int) ListLongMap!18913)

(assert (=> b!1258810 (= lt!569425 (getCurrentListMap!4611 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258810 (= lt!569428 (getCurrentListMap!4611 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258811 () Bool)

(declare-fun e!716048 () Bool)

(assert (=> b!1258811 (= e!716048 tp_is_empty!32175)))

(declare-fun b!1258812 () Bool)

(declare-fun res!839049 () Bool)

(assert (=> b!1258812 (=> (not res!839049) (not e!716047))))

(declare-datatypes ((List!28259 0))(
  ( (Nil!28256) (Cons!28255 (h!29464 (_ BitVec 64)) (t!41761 List!28259)) )
))
(declare-fun arrayNoDuplicates!0 (array!81967 (_ BitVec 32) List!28259) Bool)

(assert (=> b!1258812 (= res!839049 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28256))))

(declare-fun mapIsEmpty!50059 () Bool)

(declare-fun mapRes!50059 () Bool)

(assert (=> mapIsEmpty!50059 mapRes!50059))

(declare-fun res!839052 () Bool)

(assert (=> start!105724 (=> (not res!839052) (not e!716047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105724 (= res!839052 (validMask!0 mask!1466))))

(assert (=> start!105724 e!716047))

(assert (=> start!105724 true))

(assert (=> start!105724 tp!95345))

(assert (=> start!105724 tp_is_empty!32175))

(declare-fun array_inv!30059 (array!81967) Bool)

(assert (=> start!105724 (array_inv!30059 _keys!1118)))

(declare-fun e!716046 () Bool)

(declare-fun array_inv!30060 (array!81969) Bool)

(assert (=> start!105724 (and (array_inv!30060 _values!914) e!716046)))

(declare-fun b!1258813 () Bool)

(declare-fun res!839047 () Bool)

(assert (=> b!1258813 (=> (not res!839047) (not e!716047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81967 (_ BitVec 32)) Bool)

(assert (=> b!1258813 (= res!839047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!50059 () Bool)

(declare-fun tp!95346 () Bool)

(assert (=> mapNonEmpty!50059 (= mapRes!50059 (and tp!95346 e!716048))))

(declare-fun mapRest!50059 () (Array (_ BitVec 32) ValueCell!15324))

(declare-fun mapKey!50059 () (_ BitVec 32))

(declare-fun mapValue!50059 () ValueCell!15324)

(assert (=> mapNonEmpty!50059 (= (arr!39535 _values!914) (store mapRest!50059 mapKey!50059 mapValue!50059))))

(declare-fun b!1258814 () Bool)

(assert (=> b!1258814 (= e!716046 (and e!716042 mapRes!50059))))

(declare-fun condMapEmpty!50059 () Bool)

(declare-fun mapDefault!50059 () ValueCell!15324)

(assert (=> b!1258814 (= condMapEmpty!50059 (= (arr!39535 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15324)) mapDefault!50059)))))

(declare-fun b!1258815 () Bool)

(assert (=> b!1258815 (= e!716047 (not e!716043))))

(declare-fun res!839048 () Bool)

(assert (=> b!1258815 (=> res!839048 e!716043)))

(assert (=> b!1258815 (= res!839048 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569423 () ListLongMap!18913)

(assert (=> b!1258815 (= lt!569422 lt!569423)))

(declare-datatypes ((Unit!41915 0))(
  ( (Unit!41916) )
))
(declare-fun lt!569427 () Unit!41915)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1140 (array!81967 array!81969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48265 V!48265 V!48265 V!48265 (_ BitVec 32) Int) Unit!41915)

(assert (=> b!1258815 (= lt!569427 (lemmaNoChangeToArrayThenSameMapNoExtras!1140 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5822 (array!81967 array!81969 (_ BitVec 32) (_ BitVec 32) V!48265 V!48265 (_ BitVec 32) Int) ListLongMap!18913)

(assert (=> b!1258815 (= lt!569423 (getCurrentListMapNoExtraKeys!5822 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258815 (= lt!569422 (getCurrentListMapNoExtraKeys!5822 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258816 () Bool)

(assert (=> b!1258816 (= e!716044 (= lt!569425 (+!4171 lt!569423 lt!569424)))))

(assert (= (and start!105724 res!839052) b!1258809))

(assert (= (and b!1258809 res!839051) b!1258813))

(assert (= (and b!1258813 res!839047) b!1258812))

(assert (= (and b!1258812 res!839049) b!1258815))

(assert (= (and b!1258815 (not res!839048)) b!1258810))

(assert (= (and b!1258810 res!839050) b!1258816))

(assert (= (and b!1258814 condMapEmpty!50059) mapIsEmpty!50059))

(assert (= (and b!1258814 (not condMapEmpty!50059)) mapNonEmpty!50059))

(get-info :version)

(assert (= (and mapNonEmpty!50059 ((_ is ValueCellFull!15324) mapValue!50059)) b!1258811))

(assert (= (and b!1258814 ((_ is ValueCellFull!15324) mapDefault!50059)) b!1258808))

(assert (= start!105724 b!1258814))

(declare-fun m!1159197 () Bool)

(assert (=> b!1258813 m!1159197))

(declare-fun m!1159199 () Bool)

(assert (=> b!1258810 m!1159199))

(declare-fun m!1159201 () Bool)

(assert (=> b!1258810 m!1159201))

(declare-fun m!1159203 () Bool)

(assert (=> b!1258810 m!1159203))

(declare-fun m!1159205 () Bool)

(assert (=> b!1258810 m!1159205))

(declare-fun m!1159207 () Bool)

(assert (=> b!1258810 m!1159207))

(declare-fun m!1159209 () Bool)

(assert (=> b!1258812 m!1159209))

(declare-fun m!1159211 () Bool)

(assert (=> start!105724 m!1159211))

(declare-fun m!1159213 () Bool)

(assert (=> start!105724 m!1159213))

(declare-fun m!1159215 () Bool)

(assert (=> start!105724 m!1159215))

(declare-fun m!1159217 () Bool)

(assert (=> mapNonEmpty!50059 m!1159217))

(declare-fun m!1159219 () Bool)

(assert (=> b!1258815 m!1159219))

(declare-fun m!1159221 () Bool)

(assert (=> b!1258815 m!1159221))

(declare-fun m!1159223 () Bool)

(assert (=> b!1258815 m!1159223))

(declare-fun m!1159225 () Bool)

(assert (=> b!1258816 m!1159225))

(check-sat (not b_next!27273) (not b!1258815) (not b!1258813) (not b!1258812) (not start!105724) b_and!45167 (not b!1258816) (not b!1258810) (not mapNonEmpty!50059) tp_is_empty!32175)
(check-sat b_and!45167 (not b_next!27273))
