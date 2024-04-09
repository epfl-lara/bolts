; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105554 () Bool)

(assert start!105554)

(declare-fun b_free!27155 () Bool)

(declare-fun b_next!27155 () Bool)

(assert (=> start!105554 (= b_free!27155 (not b_next!27155))))

(declare-fun tp!94983 () Bool)

(declare-fun b_and!45021 () Bool)

(assert (=> start!105554 (= tp!94983 b_and!45021)))

(declare-fun b!1257068 () Bool)

(declare-fun e!714802 () Bool)

(declare-fun tp_is_empty!32057 () Bool)

(assert (=> b!1257068 (= e!714802 tp_is_empty!32057)))

(declare-fun mapNonEmpty!49873 () Bool)

(declare-fun mapRes!49873 () Bool)

(declare-fun tp!94982 () Bool)

(assert (=> mapNonEmpty!49873 (= mapRes!49873 (and tp!94982 e!714802))))

(declare-datatypes ((V!48107 0))(
  ( (V!48108 (val!16091 Int)) )
))
(declare-datatypes ((ValueCell!15265 0))(
  ( (ValueCellFull!15265 (v!18792 V!48107)) (EmptyCell!15265) )
))
(declare-fun mapValue!49873 () ValueCell!15265)

(declare-fun mapKey!49873 () (_ BitVec 32))

(declare-fun mapRest!49873 () (Array (_ BitVec 32) ValueCell!15265))

(declare-datatypes ((array!81747 0))(
  ( (array!81748 (arr!39427 (Array (_ BitVec 32) ValueCell!15265)) (size!39964 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81747)

(assert (=> mapNonEmpty!49873 (= (arr!39427 _values!914) (store mapRest!49873 mapKey!49873 mapValue!49873))))

(declare-fun b!1257069 () Bool)

(declare-fun res!838080 () Bool)

(declare-fun e!714801 () Bool)

(assert (=> b!1257069 (=> (not res!838080) (not e!714801))))

(declare-datatypes ((array!81749 0))(
  ( (array!81750 (arr!39428 (Array (_ BitVec 32) (_ BitVec 64))) (size!39965 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81749)

(declare-datatypes ((List!28178 0))(
  ( (Nil!28175) (Cons!28174 (h!29383 (_ BitVec 64)) (t!41674 List!28178)) )
))
(declare-fun arrayNoDuplicates!0 (array!81749 (_ BitVec 32) List!28178) Bool)

(assert (=> b!1257069 (= res!838080 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28175))))

(declare-fun b!1257070 () Bool)

(declare-fun e!714799 () Bool)

(assert (=> b!1257070 (= e!714799 tp_is_empty!32057)))

(declare-fun mapIsEmpty!49873 () Bool)

(assert (=> mapIsEmpty!49873 mapRes!49873))

(declare-fun b!1257071 () Bool)

(declare-fun e!714797 () Bool)

(declare-fun e!714803 () Bool)

(assert (=> b!1257071 (= e!714797 e!714803)))

(declare-fun res!838078 () Bool)

(assert (=> b!1257071 (=> res!838078 e!714803)))

(declare-datatypes ((tuple2!20946 0))(
  ( (tuple2!20947 (_1!10483 (_ BitVec 64)) (_2!10483 V!48107)) )
))
(declare-datatypes ((List!28179 0))(
  ( (Nil!28176) (Cons!28175 (h!29384 tuple2!20946) (t!41675 List!28179)) )
))
(declare-datatypes ((ListLongMap!18831 0))(
  ( (ListLongMap!18832 (toList!9431 List!28179)) )
))
(declare-fun lt!568496 () ListLongMap!18831)

(declare-fun contains!7584 (ListLongMap!18831 (_ BitVec 64)) Bool)

(assert (=> b!1257071 (= res!838078 (contains!7584 lt!568496 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48107)

(declare-fun minValueBefore!43 () V!48107)

(declare-fun getCurrentListMap!4588 (array!81749 array!81747 (_ BitVec 32) (_ BitVec 32) V!48107 V!48107 (_ BitVec 32) Int) ListLongMap!18831)

(assert (=> b!1257071 (= lt!568496 (getCurrentListMap!4588 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!838081 () Bool)

(assert (=> start!105554 (=> (not res!838081) (not e!714801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105554 (= res!838081 (validMask!0 mask!1466))))

(assert (=> start!105554 e!714801))

(assert (=> start!105554 true))

(assert (=> start!105554 tp!94983))

(assert (=> start!105554 tp_is_empty!32057))

(declare-fun array_inv!29981 (array!81749) Bool)

(assert (=> start!105554 (array_inv!29981 _keys!1118)))

(declare-fun e!714798 () Bool)

(declare-fun array_inv!29982 (array!81747) Bool)

(assert (=> start!105554 (and (array_inv!29982 _values!914) e!714798)))

(declare-fun b!1257072 () Bool)

(assert (=> b!1257072 (= e!714803 true)))

(declare-fun -!2106 (ListLongMap!18831 (_ BitVec 64)) ListLongMap!18831)

(assert (=> b!1257072 (= (-!2106 lt!568496 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568496)))

(declare-datatypes ((Unit!41834 0))(
  ( (Unit!41835) )
))
(declare-fun lt!568497 () Unit!41834)

(declare-fun removeNotPresentStillSame!139 (ListLongMap!18831 (_ BitVec 64)) Unit!41834)

(assert (=> b!1257072 (= lt!568497 (removeNotPresentStillSame!139 lt!568496 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1257073 () Bool)

(declare-fun res!838082 () Bool)

(assert (=> b!1257073 (=> (not res!838082) (not e!714801))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81749 (_ BitVec 32)) Bool)

(assert (=> b!1257073 (= res!838082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257074 () Bool)

(declare-fun res!838079 () Bool)

(assert (=> b!1257074 (=> (not res!838079) (not e!714801))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1257074 (= res!838079 (and (= (size!39964 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39965 _keys!1118) (size!39964 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257075 () Bool)

(assert (=> b!1257075 (= e!714801 (not e!714797))))

(declare-fun res!838083 () Bool)

(assert (=> b!1257075 (=> res!838083 e!714797)))

(assert (=> b!1257075 (= res!838083 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568498 () ListLongMap!18831)

(declare-fun lt!568494 () ListLongMap!18831)

(assert (=> b!1257075 (= lt!568498 lt!568494)))

(declare-fun lt!568495 () Unit!41834)

(declare-fun minValueAfter!43 () V!48107)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1101 (array!81749 array!81747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48107 V!48107 V!48107 V!48107 (_ BitVec 32) Int) Unit!41834)

(assert (=> b!1257075 (= lt!568495 (lemmaNoChangeToArrayThenSameMapNoExtras!1101 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5783 (array!81749 array!81747 (_ BitVec 32) (_ BitVec 32) V!48107 V!48107 (_ BitVec 32) Int) ListLongMap!18831)

(assert (=> b!1257075 (= lt!568494 (getCurrentListMapNoExtraKeys!5783 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257075 (= lt!568498 (getCurrentListMapNoExtraKeys!5783 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257076 () Bool)

(assert (=> b!1257076 (= e!714798 (and e!714799 mapRes!49873))))

(declare-fun condMapEmpty!49873 () Bool)

(declare-fun mapDefault!49873 () ValueCell!15265)

