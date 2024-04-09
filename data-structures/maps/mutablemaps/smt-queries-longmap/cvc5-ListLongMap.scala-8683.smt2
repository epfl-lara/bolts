; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105532 () Bool)

(assert start!105532)

(declare-fun b_free!27133 () Bool)

(declare-fun b_next!27133 () Bool)

(assert (=> start!105532 (= b_free!27133 (not b_next!27133))))

(declare-fun tp!94916 () Bool)

(declare-fun b_and!44999 () Bool)

(assert (=> start!105532 (= tp!94916 b_and!44999)))

(declare-fun b!1256771 () Bool)

(declare-fun res!837881 () Bool)

(declare-fun e!714569 () Bool)

(assert (=> b!1256771 (=> (not res!837881) (not e!714569))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81705 0))(
  ( (array!81706 (arr!39406 (Array (_ BitVec 32) (_ BitVec 64))) (size!39943 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81705)

(declare-datatypes ((V!48079 0))(
  ( (V!48080 (val!16080 Int)) )
))
(declare-datatypes ((ValueCell!15254 0))(
  ( (ValueCellFull!15254 (v!18781 V!48079)) (EmptyCell!15254) )
))
(declare-datatypes ((array!81707 0))(
  ( (array!81708 (arr!39407 (Array (_ BitVec 32) ValueCell!15254)) (size!39944 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81707)

(assert (=> b!1256771 (= res!837881 (and (= (size!39944 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39943 _keys!1118) (size!39944 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256773 () Bool)

(declare-fun e!714568 () Bool)

(declare-fun e!714572 () Bool)

(assert (=> b!1256773 (= e!714568 e!714572)))

(declare-fun res!837884 () Bool)

(assert (=> b!1256773 (=> res!837884 e!714572)))

(declare-datatypes ((tuple2!20928 0))(
  ( (tuple2!20929 (_1!10474 (_ BitVec 64)) (_2!10474 V!48079)) )
))
(declare-datatypes ((List!28161 0))(
  ( (Nil!28158) (Cons!28157 (h!29366 tuple2!20928) (t!41657 List!28161)) )
))
(declare-datatypes ((ListLongMap!18813 0))(
  ( (ListLongMap!18814 (toList!9422 List!28161)) )
))
(declare-fun lt!568331 () ListLongMap!18813)

(declare-fun contains!7577 (ListLongMap!18813 (_ BitVec 64)) Bool)

(assert (=> b!1256773 (= res!837884 (contains!7577 lt!568331 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48079)

(declare-fun minValueBefore!43 () V!48079)

(declare-fun getCurrentListMap!4581 (array!81705 array!81707 (_ BitVec 32) (_ BitVec 32) V!48079 V!48079 (_ BitVec 32) Int) ListLongMap!18813)

(assert (=> b!1256773 (= lt!568331 (getCurrentListMap!4581 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256774 () Bool)

(declare-fun e!714571 () Bool)

(declare-fun tp_is_empty!32035 () Bool)

(assert (=> b!1256774 (= e!714571 tp_is_empty!32035)))

(declare-fun mapIsEmpty!49840 () Bool)

(declare-fun mapRes!49840 () Bool)

(assert (=> mapIsEmpty!49840 mapRes!49840))

(declare-fun b!1256775 () Bool)

(declare-fun e!714567 () Bool)

(assert (=> b!1256775 (= e!714567 tp_is_empty!32035)))

(declare-fun mapNonEmpty!49840 () Bool)

(declare-fun tp!94917 () Bool)

(assert (=> mapNonEmpty!49840 (= mapRes!49840 (and tp!94917 e!714571))))

(declare-fun mapValue!49840 () ValueCell!15254)

(declare-fun mapRest!49840 () (Array (_ BitVec 32) ValueCell!15254))

(declare-fun mapKey!49840 () (_ BitVec 32))

(assert (=> mapNonEmpty!49840 (= (arr!39407 _values!914) (store mapRest!49840 mapKey!49840 mapValue!49840))))

(declare-fun b!1256776 () Bool)

(declare-fun res!837882 () Bool)

(assert (=> b!1256776 (=> (not res!837882) (not e!714569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81705 (_ BitVec 32)) Bool)

(assert (=> b!1256776 (= res!837882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256777 () Bool)

(assert (=> b!1256777 (= e!714569 (not e!714568))))

(declare-fun res!837880 () Bool)

(assert (=> b!1256777 (=> res!837880 e!714568)))

(assert (=> b!1256777 (= res!837880 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568332 () ListLongMap!18813)

(declare-fun lt!568330 () ListLongMap!18813)

(assert (=> b!1256777 (= lt!568332 lt!568330)))

(declare-datatypes ((Unit!41816 0))(
  ( (Unit!41817) )
))
(declare-fun lt!568329 () Unit!41816)

(declare-fun minValueAfter!43 () V!48079)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1094 (array!81705 array!81707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48079 V!48079 V!48079 V!48079 (_ BitVec 32) Int) Unit!41816)

(assert (=> b!1256777 (= lt!568329 (lemmaNoChangeToArrayThenSameMapNoExtras!1094 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5776 (array!81705 array!81707 (_ BitVec 32) (_ BitVec 32) V!48079 V!48079 (_ BitVec 32) Int) ListLongMap!18813)

(assert (=> b!1256777 (= lt!568330 (getCurrentListMapNoExtraKeys!5776 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256777 (= lt!568332 (getCurrentListMapNoExtraKeys!5776 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!837883 () Bool)

(assert (=> start!105532 (=> (not res!837883) (not e!714569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105532 (= res!837883 (validMask!0 mask!1466))))

(assert (=> start!105532 e!714569))

(assert (=> start!105532 true))

(assert (=> start!105532 tp!94916))

(assert (=> start!105532 tp_is_empty!32035))

(declare-fun array_inv!29965 (array!81705) Bool)

(assert (=> start!105532 (array_inv!29965 _keys!1118)))

(declare-fun e!714566 () Bool)

(declare-fun array_inv!29966 (array!81707) Bool)

(assert (=> start!105532 (and (array_inv!29966 _values!914) e!714566)))

(declare-fun b!1256772 () Bool)

(assert (=> b!1256772 (= e!714572 true)))

(declare-fun -!2098 (ListLongMap!18813 (_ BitVec 64)) ListLongMap!18813)

(assert (=> b!1256772 (= (-!2098 lt!568331 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568331)))

(declare-fun lt!568333 () Unit!41816)

(declare-fun removeNotPresentStillSame!131 (ListLongMap!18813 (_ BitVec 64)) Unit!41816)

(assert (=> b!1256772 (= lt!568333 (removeNotPresentStillSame!131 lt!568331 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256778 () Bool)

(declare-fun res!837885 () Bool)

(assert (=> b!1256778 (=> (not res!837885) (not e!714569))))

(declare-datatypes ((List!28162 0))(
  ( (Nil!28159) (Cons!28158 (h!29367 (_ BitVec 64)) (t!41658 List!28162)) )
))
(declare-fun arrayNoDuplicates!0 (array!81705 (_ BitVec 32) List!28162) Bool)

(assert (=> b!1256778 (= res!837885 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28159))))

(declare-fun b!1256779 () Bool)

(assert (=> b!1256779 (= e!714566 (and e!714567 mapRes!49840))))

(declare-fun condMapEmpty!49840 () Bool)

(declare-fun mapDefault!49840 () ValueCell!15254)

