; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105438 () Bool)

(assert start!105438)

(declare-fun b_free!27061 () Bool)

(declare-fun b_next!27061 () Bool)

(assert (=> start!105438 (= b_free!27061 (not b_next!27061))))

(declare-fun tp!94698 () Bool)

(declare-fun b_and!44917 () Bool)

(assert (=> start!105438 (= tp!94698 b_and!44917)))

(declare-fun b!1255642 () Bool)

(declare-fun e!713713 () Bool)

(declare-fun e!713716 () Bool)

(assert (=> b!1255642 (= e!713713 (not e!713716))))

(declare-fun res!837175 () Bool)

(assert (=> b!1255642 (=> res!837175 e!713716)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1255642 (= res!837175 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47983 0))(
  ( (V!47984 (val!16044 Int)) )
))
(declare-datatypes ((tuple2!20866 0))(
  ( (tuple2!20867 (_1!10443 (_ BitVec 64)) (_2!10443 V!47983)) )
))
(declare-datatypes ((List!28104 0))(
  ( (Nil!28101) (Cons!28100 (h!29309 tuple2!20866) (t!41598 List!28104)) )
))
(declare-datatypes ((ListLongMap!18751 0))(
  ( (ListLongMap!18752 (toList!9391 List!28104)) )
))
(declare-fun lt!567666 () ListLongMap!18751)

(declare-fun lt!567667 () ListLongMap!18751)

(assert (=> b!1255642 (= lt!567666 lt!567667)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47983)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47983)

(declare-datatypes ((array!81559 0))(
  ( (array!81560 (arr!39334 (Array (_ BitVec 32) (_ BitVec 64))) (size!39871 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81559)

(declare-datatypes ((ValueCell!15218 0))(
  ( (ValueCellFull!15218 (v!18744 V!47983)) (EmptyCell!15218) )
))
(declare-datatypes ((array!81561 0))(
  ( (array!81562 (arr!39335 (Array (_ BitVec 32) ValueCell!15218)) (size!39872 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81561)

(declare-fun minValueBefore!43 () V!47983)

(declare-datatypes ((Unit!41754 0))(
  ( (Unit!41755) )
))
(declare-fun lt!567668 () Unit!41754)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1068 (array!81559 array!81561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47983 V!47983 V!47983 V!47983 (_ BitVec 32) Int) Unit!41754)

(assert (=> b!1255642 (= lt!567668 (lemmaNoChangeToArrayThenSameMapNoExtras!1068 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5750 (array!81559 array!81561 (_ BitVec 32) (_ BitVec 32) V!47983 V!47983 (_ BitVec 32) Int) ListLongMap!18751)

(assert (=> b!1255642 (= lt!567667 (getCurrentListMapNoExtraKeys!5750 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255642 (= lt!567666 (getCurrentListMapNoExtraKeys!5750 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255644 () Bool)

(declare-fun res!837174 () Bool)

(assert (=> b!1255644 (=> (not res!837174) (not e!713713))))

(declare-datatypes ((List!28105 0))(
  ( (Nil!28102) (Cons!28101 (h!29310 (_ BitVec 64)) (t!41599 List!28105)) )
))
(declare-fun arrayNoDuplicates!0 (array!81559 (_ BitVec 32) List!28105) Bool)

(assert (=> b!1255644 (= res!837174 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28102))))

(declare-fun b!1255645 () Bool)

(declare-fun e!713712 () Bool)

(declare-fun e!713715 () Bool)

(declare-fun mapRes!49729 () Bool)

(assert (=> b!1255645 (= e!713712 (and e!713715 mapRes!49729))))

(declare-fun condMapEmpty!49729 () Bool)

(declare-fun mapDefault!49729 () ValueCell!15218)

