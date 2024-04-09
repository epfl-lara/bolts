; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105386 () Bool)

(assert start!105386)

(declare-fun b_free!27023 () Bool)

(declare-fun b_next!27023 () Bool)

(assert (=> start!105386 (= b_free!27023 (not b_next!27023))))

(declare-fun tp!94581 () Bool)

(declare-fun b_and!44871 () Bool)

(assert (=> start!105386 (= tp!94581 b_and!44871)))

(declare-fun b!1255127 () Bool)

(declare-fun res!836881 () Bool)

(declare-fun e!713341 () Bool)

(assert (=> b!1255127 (=> (not res!836881) (not e!713341))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81485 0))(
  ( (array!81486 (arr!39298 (Array (_ BitVec 32) (_ BitVec 64))) (size!39835 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81485)

(declare-datatypes ((V!47931 0))(
  ( (V!47932 (val!16025 Int)) )
))
(declare-datatypes ((ValueCell!15199 0))(
  ( (ValueCellFull!15199 (v!18725 V!47931)) (EmptyCell!15199) )
))
(declare-datatypes ((array!81487 0))(
  ( (array!81488 (arr!39299 (Array (_ BitVec 32) ValueCell!15199)) (size!39836 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81487)

(assert (=> b!1255127 (= res!836881 (and (= (size!39836 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39835 _keys!1118) (size!39836 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!836884 () Bool)

(assert (=> start!105386 (=> (not res!836884) (not e!713341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105386 (= res!836884 (validMask!0 mask!1466))))

(assert (=> start!105386 e!713341))

(assert (=> start!105386 true))

(assert (=> start!105386 tp!94581))

(declare-fun tp_is_empty!31925 () Bool)

(assert (=> start!105386 tp_is_empty!31925))

(declare-fun array_inv!29891 (array!81485) Bool)

(assert (=> start!105386 (array_inv!29891 _keys!1118)))

(declare-fun e!713342 () Bool)

(declare-fun array_inv!29892 (array!81487) Bool)

(assert (=> start!105386 (and (array_inv!29892 _values!914) e!713342)))

(declare-fun b!1255128 () Bool)

(declare-fun res!836883 () Bool)

(assert (=> b!1255128 (=> (not res!836883) (not e!713341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81485 (_ BitVec 32)) Bool)

(assert (=> b!1255128 (= res!836883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255129 () Bool)

(declare-fun e!713339 () Bool)

(assert (=> b!1255129 (= e!713339 tp_is_empty!31925)))

(declare-fun mapNonEmpty!49669 () Bool)

(declare-fun mapRes!49669 () Bool)

(declare-fun tp!94580 () Bool)

(assert (=> mapNonEmpty!49669 (= mapRes!49669 (and tp!94580 e!713339))))

(declare-fun mapKey!49669 () (_ BitVec 32))

(declare-fun mapValue!49669 () ValueCell!15199)

(declare-fun mapRest!49669 () (Array (_ BitVec 32) ValueCell!15199))

(assert (=> mapNonEmpty!49669 (= (arr!39299 _values!914) (store mapRest!49669 mapKey!49669 mapValue!49669))))

(declare-fun b!1255130 () Bool)

(declare-fun res!836882 () Bool)

(assert (=> b!1255130 (=> (not res!836882) (not e!713341))))

(declare-datatypes ((List!28076 0))(
  ( (Nil!28073) (Cons!28072 (h!29281 (_ BitVec 64)) (t!41568 List!28076)) )
))
(declare-fun arrayNoDuplicates!0 (array!81485 (_ BitVec 32) List!28076) Bool)

(assert (=> b!1255130 (= res!836882 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28073))))

(declare-fun b!1255131 () Bool)

(declare-fun e!713343 () Bool)

(assert (=> b!1255131 (= e!713343 tp_is_empty!31925)))

(declare-fun mapIsEmpty!49669 () Bool)

(assert (=> mapIsEmpty!49669 mapRes!49669))

(declare-fun b!1255132 () Bool)

(assert (=> b!1255132 (= e!713341 (not true))))

(declare-datatypes ((tuple2!20836 0))(
  ( (tuple2!20837 (_1!10428 (_ BitVec 64)) (_2!10428 V!47931)) )
))
(declare-datatypes ((List!28077 0))(
  ( (Nil!28074) (Cons!28073 (h!29282 tuple2!20836) (t!41569 List!28077)) )
))
(declare-datatypes ((ListLongMap!18721 0))(
  ( (ListLongMap!18722 (toList!9376 List!28077)) )
))
(declare-fun lt!567424 () ListLongMap!18721)

(declare-fun lt!567423 () ListLongMap!18721)

(assert (=> b!1255132 (= lt!567424 lt!567423)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47931)

(declare-fun zeroValue!871 () V!47931)

(declare-datatypes ((Unit!41726 0))(
  ( (Unit!41727) )
))
(declare-fun lt!567425 () Unit!41726)

(declare-fun minValueBefore!43 () V!47931)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1055 (array!81485 array!81487 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47931 V!47931 V!47931 V!47931 (_ BitVec 32) Int) Unit!41726)

(assert (=> b!1255132 (= lt!567425 (lemmaNoChangeToArrayThenSameMapNoExtras!1055 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5737 (array!81485 array!81487 (_ BitVec 32) (_ BitVec 32) V!47931 V!47931 (_ BitVec 32) Int) ListLongMap!18721)

(assert (=> b!1255132 (= lt!567423 (getCurrentListMapNoExtraKeys!5737 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255132 (= lt!567424 (getCurrentListMapNoExtraKeys!5737 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255133 () Bool)

(assert (=> b!1255133 (= e!713342 (and e!713343 mapRes!49669))))

(declare-fun condMapEmpty!49669 () Bool)

(declare-fun mapDefault!49669 () ValueCell!15199)

