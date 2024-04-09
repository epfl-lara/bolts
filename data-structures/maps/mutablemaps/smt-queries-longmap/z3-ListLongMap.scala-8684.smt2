; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105540 () Bool)

(assert start!105540)

(declare-fun b_free!27141 () Bool)

(declare-fun b_next!27141 () Bool)

(assert (=> start!105540 (= b_free!27141 (not b_next!27141))))

(declare-fun tp!94941 () Bool)

(declare-fun b_and!45007 () Bool)

(assert (=> start!105540 (= tp!94941 b_and!45007)))

(declare-fun mapIsEmpty!49852 () Bool)

(declare-fun mapRes!49852 () Bool)

(assert (=> mapIsEmpty!49852 mapRes!49852))

(declare-fun b!1256879 () Bool)

(declare-fun res!837954 () Bool)

(declare-fun e!714652 () Bool)

(assert (=> b!1256879 (=> (not res!837954) (not e!714652))))

(declare-datatypes ((array!81719 0))(
  ( (array!81720 (arr!39413 (Array (_ BitVec 32) (_ BitVec 64))) (size!39950 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81719)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81719 (_ BitVec 32)) Bool)

(assert (=> b!1256879 (= res!837954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256880 () Bool)

(declare-fun e!714651 () Bool)

(assert (=> b!1256880 (= e!714652 (not e!714651))))

(declare-fun res!837955 () Bool)

(assert (=> b!1256880 (=> res!837955 e!714651)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256880 (= res!837955 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!48089 0))(
  ( (V!48090 (val!16084 Int)) )
))
(declare-datatypes ((tuple2!20934 0))(
  ( (tuple2!20935 (_1!10477 (_ BitVec 64)) (_2!10477 V!48089)) )
))
(declare-datatypes ((List!28167 0))(
  ( (Nil!28164) (Cons!28163 (h!29372 tuple2!20934) (t!41663 List!28167)) )
))
(declare-datatypes ((ListLongMap!18819 0))(
  ( (ListLongMap!18820 (toList!9425 List!28167)) )
))
(declare-fun lt!568389 () ListLongMap!18819)

(declare-fun lt!568392 () ListLongMap!18819)

(assert (=> b!1256880 (= lt!568389 lt!568392)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48089)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48089)

(declare-datatypes ((ValueCell!15258 0))(
  ( (ValueCellFull!15258 (v!18785 V!48089)) (EmptyCell!15258) )
))
(declare-datatypes ((array!81721 0))(
  ( (array!81722 (arr!39414 (Array (_ BitVec 32) ValueCell!15258)) (size!39951 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81721)

(declare-fun minValueBefore!43 () V!48089)

(declare-datatypes ((Unit!41822 0))(
  ( (Unit!41823) )
))
(declare-fun lt!568393 () Unit!41822)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1096 (array!81719 array!81721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48089 V!48089 V!48089 V!48089 (_ BitVec 32) Int) Unit!41822)

(assert (=> b!1256880 (= lt!568393 (lemmaNoChangeToArrayThenSameMapNoExtras!1096 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5778 (array!81719 array!81721 (_ BitVec 32) (_ BitVec 32) V!48089 V!48089 (_ BitVec 32) Int) ListLongMap!18819)

(assert (=> b!1256880 (= lt!568392 (getCurrentListMapNoExtraKeys!5778 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256880 (= lt!568389 (getCurrentListMapNoExtraKeys!5778 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256881 () Bool)

(declare-fun e!714656 () Bool)

(assert (=> b!1256881 (= e!714651 e!714656)))

(declare-fun res!837956 () Bool)

(assert (=> b!1256881 (=> res!837956 e!714656)))

(declare-fun lt!568391 () ListLongMap!18819)

(declare-fun contains!7580 (ListLongMap!18819 (_ BitVec 64)) Bool)

(assert (=> b!1256881 (= res!837956 (contains!7580 lt!568391 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4584 (array!81719 array!81721 (_ BitVec 32) (_ BitVec 32) V!48089 V!48089 (_ BitVec 32) Int) ListLongMap!18819)

(assert (=> b!1256881 (= lt!568391 (getCurrentListMap!4584 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256882 () Bool)

(declare-fun e!714650 () Bool)

(declare-fun tp_is_empty!32043 () Bool)

(assert (=> b!1256882 (= e!714650 tp_is_empty!32043)))

(declare-fun b!1256883 () Bool)

(declare-fun res!837953 () Bool)

(assert (=> b!1256883 (=> (not res!837953) (not e!714652))))

(assert (=> b!1256883 (= res!837953 (and (= (size!39951 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39950 _keys!1118) (size!39951 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256884 () Bool)

(declare-fun e!714655 () Bool)

(assert (=> b!1256884 (= e!714655 (and e!714650 mapRes!49852))))

(declare-fun condMapEmpty!49852 () Bool)

(declare-fun mapDefault!49852 () ValueCell!15258)

(assert (=> b!1256884 (= condMapEmpty!49852 (= (arr!39414 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15258)) mapDefault!49852)))))

(declare-fun res!837957 () Bool)

(assert (=> start!105540 (=> (not res!837957) (not e!714652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105540 (= res!837957 (validMask!0 mask!1466))))

(assert (=> start!105540 e!714652))

(assert (=> start!105540 true))

(assert (=> start!105540 tp!94941))

(assert (=> start!105540 tp_is_empty!32043))

(declare-fun array_inv!29969 (array!81719) Bool)

(assert (=> start!105540 (array_inv!29969 _keys!1118)))

(declare-fun array_inv!29970 (array!81721) Bool)

(assert (=> start!105540 (and (array_inv!29970 _values!914) e!714655)))

(declare-fun mapNonEmpty!49852 () Bool)

(declare-fun tp!94940 () Bool)

(declare-fun e!714654 () Bool)

(assert (=> mapNonEmpty!49852 (= mapRes!49852 (and tp!94940 e!714654))))

(declare-fun mapKey!49852 () (_ BitVec 32))

(declare-fun mapValue!49852 () ValueCell!15258)

(declare-fun mapRest!49852 () (Array (_ BitVec 32) ValueCell!15258))

(assert (=> mapNonEmpty!49852 (= (arr!39414 _values!914) (store mapRest!49852 mapKey!49852 mapValue!49852))))

(declare-fun b!1256885 () Bool)

(assert (=> b!1256885 (= e!714656 true)))

(declare-fun -!2101 (ListLongMap!18819 (_ BitVec 64)) ListLongMap!18819)

(assert (=> b!1256885 (= (-!2101 lt!568391 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568391)))

(declare-fun lt!568390 () Unit!41822)

(declare-fun removeNotPresentStillSame!134 (ListLongMap!18819 (_ BitVec 64)) Unit!41822)

(assert (=> b!1256885 (= lt!568390 (removeNotPresentStillSame!134 lt!568391 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256886 () Bool)

(assert (=> b!1256886 (= e!714654 tp_is_empty!32043)))

(declare-fun b!1256887 () Bool)

(declare-fun res!837952 () Bool)

(assert (=> b!1256887 (=> (not res!837952) (not e!714652))))

(declare-datatypes ((List!28168 0))(
  ( (Nil!28165) (Cons!28164 (h!29373 (_ BitVec 64)) (t!41664 List!28168)) )
))
(declare-fun arrayNoDuplicates!0 (array!81719 (_ BitVec 32) List!28168) Bool)

(assert (=> b!1256887 (= res!837952 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28165))))

(assert (= (and start!105540 res!837957) b!1256883))

(assert (= (and b!1256883 res!837953) b!1256879))

(assert (= (and b!1256879 res!837954) b!1256887))

(assert (= (and b!1256887 res!837952) b!1256880))

(assert (= (and b!1256880 (not res!837955)) b!1256881))

(assert (= (and b!1256881 (not res!837956)) b!1256885))

(assert (= (and b!1256884 condMapEmpty!49852) mapIsEmpty!49852))

(assert (= (and b!1256884 (not condMapEmpty!49852)) mapNonEmpty!49852))

(get-info :version)

(assert (= (and mapNonEmpty!49852 ((_ is ValueCellFull!15258) mapValue!49852)) b!1256886))

(assert (= (and b!1256884 ((_ is ValueCellFull!15258) mapDefault!49852)) b!1256882))

(assert (= start!105540 b!1256884))

(declare-fun m!1157551 () Bool)

(assert (=> b!1256881 m!1157551))

(declare-fun m!1157553 () Bool)

(assert (=> b!1256881 m!1157553))

(declare-fun m!1157555 () Bool)

(assert (=> b!1256880 m!1157555))

(declare-fun m!1157557 () Bool)

(assert (=> b!1256880 m!1157557))

(declare-fun m!1157559 () Bool)

(assert (=> b!1256880 m!1157559))

(declare-fun m!1157561 () Bool)

(assert (=> b!1256887 m!1157561))

(declare-fun m!1157563 () Bool)

(assert (=> b!1256879 m!1157563))

(declare-fun m!1157565 () Bool)

(assert (=> b!1256885 m!1157565))

(declare-fun m!1157567 () Bool)

(assert (=> b!1256885 m!1157567))

(declare-fun m!1157569 () Bool)

(assert (=> mapNonEmpty!49852 m!1157569))

(declare-fun m!1157571 () Bool)

(assert (=> start!105540 m!1157571))

(declare-fun m!1157573 () Bool)

(assert (=> start!105540 m!1157573))

(declare-fun m!1157575 () Bool)

(assert (=> start!105540 m!1157575))

(check-sat b_and!45007 (not start!105540) (not b!1256885) (not b!1256881) (not b!1256879) (not b!1256887) tp_is_empty!32043 (not b_next!27141) (not b!1256880) (not mapNonEmpty!49852))
(check-sat b_and!45007 (not b_next!27141))
