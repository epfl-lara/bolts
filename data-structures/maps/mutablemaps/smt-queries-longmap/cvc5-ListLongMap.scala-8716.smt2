; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105804 () Bool)

(assert start!105804)

(declare-fun b_free!27331 () Bool)

(declare-fun b_next!27331 () Bool)

(assert (=> start!105804 (= b_free!27331 (not b_next!27331))))

(declare-fun tp!95523 () Bool)

(declare-fun b_and!45237 () Bool)

(assert (=> start!105804 (= tp!95523 b_and!45237)))

(declare-fun b!1259779 () Bool)

(declare-fun res!839659 () Bool)

(declare-fun e!716778 () Bool)

(assert (=> b!1259779 (=> (not res!839659) (not e!716778))))

(declare-datatypes ((array!82081 0))(
  ( (array!82082 (arr!39590 (Array (_ BitVec 32) (_ BitVec 64))) (size!40127 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82081)

(declare-datatypes ((List!28305 0))(
  ( (Nil!28302) (Cons!28301 (h!29510 (_ BitVec 64)) (t!41809 List!28305)) )
))
(declare-fun arrayNoDuplicates!0 (array!82081 (_ BitVec 32) List!28305) Bool)

(assert (=> b!1259779 (= res!839659 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28302))))

(declare-fun b!1259780 () Bool)

(declare-fun res!839656 () Bool)

(assert (=> b!1259780 (=> (not res!839656) (not e!716778))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82081 (_ BitVec 32)) Bool)

(assert (=> b!1259780 (= res!839656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259781 () Bool)

(declare-fun e!716777 () Bool)

(assert (=> b!1259781 (= e!716778 (not e!716777))))

(declare-fun res!839660 () Bool)

(assert (=> b!1259781 (=> res!839660 e!716777)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259781 (= res!839660 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48343 0))(
  ( (V!48344 (val!16179 Int)) )
))
(declare-datatypes ((tuple2!21080 0))(
  ( (tuple2!21081 (_1!10550 (_ BitVec 64)) (_2!10550 V!48343)) )
))
(declare-datatypes ((List!28306 0))(
  ( (Nil!28303) (Cons!28302 (h!29511 tuple2!21080) (t!41810 List!28306)) )
))
(declare-datatypes ((ListLongMap!18965 0))(
  ( (ListLongMap!18966 (toList!9498 List!28306)) )
))
(declare-fun lt!570430 () ListLongMap!18965)

(declare-fun lt!570436 () ListLongMap!18965)

(assert (=> b!1259781 (= lt!570430 lt!570436)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41965 0))(
  ( (Unit!41966) )
))
(declare-fun lt!570429 () Unit!41965)

(declare-fun minValueAfter!43 () V!48343)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48343)

(declare-datatypes ((ValueCell!15353 0))(
  ( (ValueCellFull!15353 (v!18882 V!48343)) (EmptyCell!15353) )
))
(declare-datatypes ((array!82083 0))(
  ( (array!82084 (arr!39591 (Array (_ BitVec 32) ValueCell!15353)) (size!40128 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82083)

(declare-fun minValueBefore!43 () V!48343)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1161 (array!82081 array!82083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48343 V!48343 V!48343 V!48343 (_ BitVec 32) Int) Unit!41965)

(assert (=> b!1259781 (= lt!570429 (lemmaNoChangeToArrayThenSameMapNoExtras!1161 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5843 (array!82081 array!82083 (_ BitVec 32) (_ BitVec 32) V!48343 V!48343 (_ BitVec 32) Int) ListLongMap!18965)

(assert (=> b!1259781 (= lt!570436 (getCurrentListMapNoExtraKeys!5843 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259781 (= lt!570430 (getCurrentListMapNoExtraKeys!5843 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259782 () Bool)

(assert (=> b!1259782 (= e!716777 true)))

(declare-fun lt!570434 () ListLongMap!18965)

(declare-fun lt!570431 () ListLongMap!18965)

(declare-fun -!2128 (ListLongMap!18965 (_ BitVec 64)) ListLongMap!18965)

(assert (=> b!1259782 (= lt!570434 (-!2128 lt!570431 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570435 () ListLongMap!18965)

(declare-fun lt!570437 () ListLongMap!18965)

(assert (=> b!1259782 (= (-!2128 lt!570435 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570437)))

(declare-fun lt!570433 () Unit!41965)

(declare-fun addThenRemoveForNewKeyIsSame!353 (ListLongMap!18965 (_ BitVec 64) V!48343) Unit!41965)

(assert (=> b!1259782 (= lt!570433 (addThenRemoveForNewKeyIsSame!353 lt!570437 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716773 () Bool)

(assert (=> b!1259782 e!716773))

(declare-fun res!839655 () Bool)

(assert (=> b!1259782 (=> (not res!839655) (not e!716773))))

(assert (=> b!1259782 (= res!839655 (= lt!570431 lt!570435))))

(declare-fun +!4195 (ListLongMap!18965 tuple2!21080) ListLongMap!18965)

(assert (=> b!1259782 (= lt!570435 (+!4195 lt!570437 (tuple2!21081 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570438 () tuple2!21080)

(assert (=> b!1259782 (= lt!570437 (+!4195 lt!570430 lt!570438))))

(assert (=> b!1259782 (= lt!570438 (tuple2!21081 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun lt!570432 () ListLongMap!18965)

(declare-fun getCurrentListMap!4632 (array!82081 array!82083 (_ BitVec 32) (_ BitVec 32) V!48343 V!48343 (_ BitVec 32) Int) ListLongMap!18965)

(assert (=> b!1259782 (= lt!570432 (getCurrentListMap!4632 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259782 (= lt!570431 (getCurrentListMap!4632 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259783 () Bool)

(declare-fun e!716772 () Bool)

(declare-fun tp_is_empty!32233 () Bool)

(assert (=> b!1259783 (= e!716772 tp_is_empty!32233)))

(declare-fun b!1259785 () Bool)

(assert (=> b!1259785 (= e!716773 (= lt!570432 (+!4195 lt!570436 lt!570438)))))

(declare-fun b!1259786 () Bool)

(declare-fun e!716776 () Bool)

(assert (=> b!1259786 (= e!716776 tp_is_empty!32233)))

(declare-fun mapIsEmpty!50149 () Bool)

(declare-fun mapRes!50149 () Bool)

(assert (=> mapIsEmpty!50149 mapRes!50149))

(declare-fun b!1259787 () Bool)

(declare-fun res!839658 () Bool)

(assert (=> b!1259787 (=> (not res!839658) (not e!716778))))

(assert (=> b!1259787 (= res!839658 (and (= (size!40128 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40127 _keys!1118) (size!40128 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50149 () Bool)

(declare-fun tp!95522 () Bool)

(assert (=> mapNonEmpty!50149 (= mapRes!50149 (and tp!95522 e!716776))))

(declare-fun mapRest!50149 () (Array (_ BitVec 32) ValueCell!15353))

(declare-fun mapValue!50149 () ValueCell!15353)

(declare-fun mapKey!50149 () (_ BitVec 32))

(assert (=> mapNonEmpty!50149 (= (arr!39591 _values!914) (store mapRest!50149 mapKey!50149 mapValue!50149))))

(declare-fun b!1259784 () Bool)

(declare-fun e!716775 () Bool)

(assert (=> b!1259784 (= e!716775 (and e!716772 mapRes!50149))))

(declare-fun condMapEmpty!50149 () Bool)

(declare-fun mapDefault!50149 () ValueCell!15353)

