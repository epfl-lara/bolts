; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105444 () Bool)

(assert start!105444)

(declare-fun b_free!27067 () Bool)

(declare-fun b_next!27067 () Bool)

(assert (=> start!105444 (= b_free!27067 (not b_next!27067))))

(declare-fun tp!94715 () Bool)

(declare-fun b_and!44923 () Bool)

(assert (=> start!105444 (= tp!94715 b_and!44923)))

(declare-fun mapIsEmpty!49738 () Bool)

(declare-fun mapRes!49738 () Bool)

(assert (=> mapIsEmpty!49738 mapRes!49738))

(declare-fun b!1255723 () Bool)

(declare-fun e!713778 () Bool)

(declare-fun tp_is_empty!31969 () Bool)

(assert (=> b!1255723 (= e!713778 tp_is_empty!31969)))

(declare-fun b!1255724 () Bool)

(declare-fun res!837228 () Bool)

(declare-fun e!713776 () Bool)

(assert (=> b!1255724 (=> (not res!837228) (not e!713776))))

(declare-datatypes ((array!81571 0))(
  ( (array!81572 (arr!39340 (Array (_ BitVec 32) (_ BitVec 64))) (size!39877 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81571)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81571 (_ BitVec 32)) Bool)

(assert (=> b!1255724 (= res!837228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255725 () Bool)

(declare-fun e!713773 () Bool)

(assert (=> b!1255725 (= e!713773 true)))

(declare-datatypes ((V!47991 0))(
  ( (V!47992 (val!16047 Int)) )
))
(declare-datatypes ((tuple2!20872 0))(
  ( (tuple2!20873 (_1!10446 (_ BitVec 64)) (_2!10446 V!47991)) )
))
(declare-datatypes ((List!28109 0))(
  ( (Nil!28106) (Cons!28105 (h!29314 tuple2!20872) (t!41603 List!28109)) )
))
(declare-datatypes ((ListLongMap!18757 0))(
  ( (ListLongMap!18758 (toList!9394 List!28109)) )
))
(declare-fun lt!567711 () ListLongMap!18757)

(declare-fun -!2077 (ListLongMap!18757 (_ BitVec 64)) ListLongMap!18757)

(assert (=> b!1255725 (= (-!2077 lt!567711 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567711)))

(declare-datatypes ((Unit!41760 0))(
  ( (Unit!41761) )
))
(declare-fun lt!567710 () Unit!41760)

(declare-fun removeNotPresentStillSame!110 (ListLongMap!18757 (_ BitVec 64)) Unit!41760)

(assert (=> b!1255725 (= lt!567710 (removeNotPresentStillSame!110 lt!567711 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255726 () Bool)

(declare-fun e!713777 () Bool)

(assert (=> b!1255726 (= e!713777 e!713773)))

(declare-fun res!837230 () Bool)

(assert (=> b!1255726 (=> res!837230 e!713773)))

(declare-fun contains!7552 (ListLongMap!18757 (_ BitVec 64)) Bool)

(assert (=> b!1255726 (= res!837230 (contains!7552 lt!567711 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47991)

(declare-datatypes ((ValueCell!15221 0))(
  ( (ValueCellFull!15221 (v!18747 V!47991)) (EmptyCell!15221) )
))
(declare-datatypes ((array!81573 0))(
  ( (array!81574 (arr!39341 (Array (_ BitVec 32) ValueCell!15221)) (size!39878 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81573)

(declare-fun minValueBefore!43 () V!47991)

(declare-fun getCurrentListMap!4557 (array!81571 array!81573 (_ BitVec 32) (_ BitVec 32) V!47991 V!47991 (_ BitVec 32) Int) ListLongMap!18757)

(assert (=> b!1255726 (= lt!567711 (getCurrentListMap!4557 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255727 () Bool)

(declare-fun res!837225 () Bool)

(assert (=> b!1255727 (=> (not res!837225) (not e!713776))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255727 (= res!837225 (and (= (size!39878 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39877 _keys!1118) (size!39878 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!837229 () Bool)

(assert (=> start!105444 (=> (not res!837229) (not e!713776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105444 (= res!837229 (validMask!0 mask!1466))))

(assert (=> start!105444 e!713776))

(assert (=> start!105444 true))

(assert (=> start!105444 tp!94715))

(assert (=> start!105444 tp_is_empty!31969))

(declare-fun array_inv!29919 (array!81571) Bool)

(assert (=> start!105444 (array_inv!29919 _keys!1118)))

(declare-fun e!713775 () Bool)

(declare-fun array_inv!29920 (array!81573) Bool)

(assert (=> start!105444 (and (array_inv!29920 _values!914) e!713775)))

(declare-fun b!1255728 () Bool)

(declare-fun res!837227 () Bool)

(assert (=> b!1255728 (=> (not res!837227) (not e!713776))))

(declare-datatypes ((List!28110 0))(
  ( (Nil!28107) (Cons!28106 (h!29315 (_ BitVec 64)) (t!41604 List!28110)) )
))
(declare-fun arrayNoDuplicates!0 (array!81571 (_ BitVec 32) List!28110) Bool)

(assert (=> b!1255728 (= res!837227 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28107))))

(declare-fun b!1255729 () Bool)

(assert (=> b!1255729 (= e!713776 (not e!713777))))

(declare-fun res!837226 () Bool)

(assert (=> b!1255729 (=> res!837226 e!713777)))

(assert (=> b!1255729 (= res!837226 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567714 () ListLongMap!18757)

(declare-fun lt!567713 () ListLongMap!18757)

(assert (=> b!1255729 (= lt!567714 lt!567713)))

(declare-fun minValueAfter!43 () V!47991)

(declare-fun lt!567712 () Unit!41760)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1071 (array!81571 array!81573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47991 V!47991 V!47991 V!47991 (_ BitVec 32) Int) Unit!41760)

(assert (=> b!1255729 (= lt!567712 (lemmaNoChangeToArrayThenSameMapNoExtras!1071 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5753 (array!81571 array!81573 (_ BitVec 32) (_ BitVec 32) V!47991 V!47991 (_ BitVec 32) Int) ListLongMap!18757)

(assert (=> b!1255729 (= lt!567713 (getCurrentListMapNoExtraKeys!5753 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255729 (= lt!567714 (getCurrentListMapNoExtraKeys!5753 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255730 () Bool)

(declare-fun e!713779 () Bool)

(assert (=> b!1255730 (= e!713779 tp_is_empty!31969)))

(declare-fun mapNonEmpty!49738 () Bool)

(declare-fun tp!94716 () Bool)

(assert (=> mapNonEmpty!49738 (= mapRes!49738 (and tp!94716 e!713778))))

(declare-fun mapKey!49738 () (_ BitVec 32))

(declare-fun mapRest!49738 () (Array (_ BitVec 32) ValueCell!15221))

(declare-fun mapValue!49738 () ValueCell!15221)

(assert (=> mapNonEmpty!49738 (= (arr!39341 _values!914) (store mapRest!49738 mapKey!49738 mapValue!49738))))

(declare-fun b!1255731 () Bool)

(assert (=> b!1255731 (= e!713775 (and e!713779 mapRes!49738))))

(declare-fun condMapEmpty!49738 () Bool)

(declare-fun mapDefault!49738 () ValueCell!15221)

