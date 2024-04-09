; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105518 () Bool)

(assert start!105518)

(declare-fun b_free!27119 () Bool)

(declare-fun b_next!27119 () Bool)

(assert (=> start!105518 (= b_free!27119 (not b_next!27119))))

(declare-fun tp!94875 () Bool)

(declare-fun b_and!44985 () Bool)

(assert (=> start!105518 (= tp!94875 b_and!44985)))

(declare-fun mapNonEmpty!49819 () Bool)

(declare-fun mapRes!49819 () Bool)

(declare-fun tp!94874 () Bool)

(declare-fun e!714422 () Bool)

(assert (=> mapNonEmpty!49819 (= mapRes!49819 (and tp!94874 e!714422))))

(declare-datatypes ((V!48059 0))(
  ( (V!48060 (val!16073 Int)) )
))
(declare-datatypes ((ValueCell!15247 0))(
  ( (ValueCellFull!15247 (v!18774 V!48059)) (EmptyCell!15247) )
))
(declare-fun mapValue!49819 () ValueCell!15247)

(declare-datatypes ((array!81677 0))(
  ( (array!81678 (arr!39392 (Array (_ BitVec 32) ValueCell!15247)) (size!39929 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81677)

(declare-fun mapKey!49819 () (_ BitVec 32))

(declare-fun mapRest!49819 () (Array (_ BitVec 32) ValueCell!15247))

(assert (=> mapNonEmpty!49819 (= (arr!39392 _values!914) (store mapRest!49819 mapKey!49819 mapValue!49819))))

(declare-fun b!1256582 () Bool)

(declare-fun e!714423 () Bool)

(declare-fun e!714419 () Bool)

(assert (=> b!1256582 (= e!714423 (not e!714419))))

(declare-fun res!837756 () Bool)

(assert (=> b!1256582 (=> res!837756 e!714419)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256582 (= res!837756 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20916 0))(
  ( (tuple2!20917 (_1!10468 (_ BitVec 64)) (_2!10468 V!48059)) )
))
(declare-datatypes ((List!28150 0))(
  ( (Nil!28147) (Cons!28146 (h!29355 tuple2!20916) (t!41646 List!28150)) )
))
(declare-datatypes ((ListLongMap!18801 0))(
  ( (ListLongMap!18802 (toList!9416 List!28150)) )
))
(declare-fun lt!568224 () ListLongMap!18801)

(declare-fun lt!568225 () ListLongMap!18801)

(assert (=> b!1256582 (= lt!568224 lt!568225)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48059)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48059)

(declare-datatypes ((array!81679 0))(
  ( (array!81680 (arr!39393 (Array (_ BitVec 32) (_ BitVec 64))) (size!39930 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81679)

(declare-fun minValueBefore!43 () V!48059)

(declare-datatypes ((Unit!41804 0))(
  ( (Unit!41805) )
))
(declare-fun lt!568228 () Unit!41804)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1089 (array!81679 array!81677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48059 V!48059 V!48059 V!48059 (_ BitVec 32) Int) Unit!41804)

(assert (=> b!1256582 (= lt!568228 (lemmaNoChangeToArrayThenSameMapNoExtras!1089 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5771 (array!81679 array!81677 (_ BitVec 32) (_ BitVec 32) V!48059 V!48059 (_ BitVec 32) Int) ListLongMap!18801)

(assert (=> b!1256582 (= lt!568225 (getCurrentListMapNoExtraKeys!5771 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256582 (= lt!568224 (getCurrentListMapNoExtraKeys!5771 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256583 () Bool)

(declare-fun e!714420 () Bool)

(assert (=> b!1256583 (= e!714420 true)))

(declare-fun lt!568226 () ListLongMap!18801)

(declare-fun -!2094 (ListLongMap!18801 (_ BitVec 64)) ListLongMap!18801)

(assert (=> b!1256583 (= (-!2094 lt!568226 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568226)))

(declare-fun lt!568227 () Unit!41804)

(declare-fun removeNotPresentStillSame!127 (ListLongMap!18801 (_ BitVec 64)) Unit!41804)

(assert (=> b!1256583 (= lt!568227 (removeNotPresentStillSame!127 lt!568226 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256584 () Bool)

(declare-fun tp_is_empty!32021 () Bool)

(assert (=> b!1256584 (= e!714422 tp_is_empty!32021)))

(declare-fun mapIsEmpty!49819 () Bool)

(assert (=> mapIsEmpty!49819 mapRes!49819))

(declare-fun b!1256585 () Bool)

(declare-fun res!837754 () Bool)

(assert (=> b!1256585 (=> (not res!837754) (not e!714423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81679 (_ BitVec 32)) Bool)

(assert (=> b!1256585 (= res!837754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256586 () Bool)

(declare-fun res!837759 () Bool)

(assert (=> b!1256586 (=> (not res!837759) (not e!714423))))

(declare-datatypes ((List!28151 0))(
  ( (Nil!28148) (Cons!28147 (h!29356 (_ BitVec 64)) (t!41647 List!28151)) )
))
(declare-fun arrayNoDuplicates!0 (array!81679 (_ BitVec 32) List!28151) Bool)

(assert (=> b!1256586 (= res!837759 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28148))))

(declare-fun b!1256587 () Bool)

(declare-fun e!714425 () Bool)

(assert (=> b!1256587 (= e!714425 tp_is_empty!32021)))

(declare-fun res!837757 () Bool)

(assert (=> start!105518 (=> (not res!837757) (not e!714423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105518 (= res!837757 (validMask!0 mask!1466))))

(assert (=> start!105518 e!714423))

(assert (=> start!105518 true))

(assert (=> start!105518 tp!94875))

(assert (=> start!105518 tp_is_empty!32021))

(declare-fun array_inv!29957 (array!81679) Bool)

(assert (=> start!105518 (array_inv!29957 _keys!1118)))

(declare-fun e!714424 () Bool)

(declare-fun array_inv!29958 (array!81677) Bool)

(assert (=> start!105518 (and (array_inv!29958 _values!914) e!714424)))

(declare-fun b!1256588 () Bool)

(declare-fun res!837758 () Bool)

(assert (=> b!1256588 (=> (not res!837758) (not e!714423))))

(assert (=> b!1256588 (= res!837758 (and (= (size!39929 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39930 _keys!1118) (size!39929 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256589 () Bool)

(assert (=> b!1256589 (= e!714419 e!714420)))

(declare-fun res!837755 () Bool)

(assert (=> b!1256589 (=> res!837755 e!714420)))

(declare-fun contains!7572 (ListLongMap!18801 (_ BitVec 64)) Bool)

(assert (=> b!1256589 (= res!837755 (contains!7572 lt!568226 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4576 (array!81679 array!81677 (_ BitVec 32) (_ BitVec 32) V!48059 V!48059 (_ BitVec 32) Int) ListLongMap!18801)

(assert (=> b!1256589 (= lt!568226 (getCurrentListMap!4576 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256590 () Bool)

(assert (=> b!1256590 (= e!714424 (and e!714425 mapRes!49819))))

(declare-fun condMapEmpty!49819 () Bool)

(declare-fun mapDefault!49819 () ValueCell!15247)

