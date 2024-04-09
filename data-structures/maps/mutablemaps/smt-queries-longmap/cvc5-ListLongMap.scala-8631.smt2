; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105110 () Bool)

(assert start!105110)

(declare-fun b_free!26821 () Bool)

(declare-fun b_next!26821 () Bool)

(assert (=> start!105110 (= b_free!26821 (not b_next!26821))))

(declare-fun tp!93962 () Bool)

(declare-fun b_and!44627 () Bool)

(assert (=> start!105110 (= tp!93962 b_and!44627)))

(declare-fun mapIsEmpty!49354 () Bool)

(declare-fun mapRes!49354 () Bool)

(assert (=> mapIsEmpty!49354 mapRes!49354))

(declare-fun b!1252144 () Bool)

(declare-fun res!835157 () Bool)

(declare-fun e!711176 () Bool)

(assert (=> b!1252144 (=> (not res!835157) (not e!711176))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81087 0))(
  ( (array!81088 (arr!39103 (Array (_ BitVec 32) (_ BitVec 64))) (size!39640 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81087)

(declare-datatypes ((V!47663 0))(
  ( (V!47664 (val!15924 Int)) )
))
(declare-datatypes ((ValueCell!15098 0))(
  ( (ValueCellFull!15098 (v!18622 V!47663)) (EmptyCell!15098) )
))
(declare-datatypes ((array!81089 0))(
  ( (array!81090 (arr!39104 (Array (_ BitVec 32) ValueCell!15098)) (size!39641 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81089)

(assert (=> b!1252144 (= res!835157 (and (= (size!39641 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39640 _keys!1118) (size!39641 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252145 () Bool)

(declare-fun res!835156 () Bool)

(assert (=> b!1252145 (=> (not res!835156) (not e!711176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81087 (_ BitVec 32)) Bool)

(assert (=> b!1252145 (= res!835156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252146 () Bool)

(assert (=> b!1252146 (= e!711176 (not (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!39640 _keys!1118)))))))

(declare-datatypes ((tuple2!20678 0))(
  ( (tuple2!20679 (_1!10349 (_ BitVec 64)) (_2!10349 V!47663)) )
))
(declare-datatypes ((List!27930 0))(
  ( (Nil!27927) (Cons!27926 (h!29135 tuple2!20678) (t!41414 List!27930)) )
))
(declare-datatypes ((ListLongMap!18563 0))(
  ( (ListLongMap!18564 (toList!9297 List!27930)) )
))
(declare-fun lt!565176 () ListLongMap!18563)

(declare-fun lt!565175 () ListLongMap!18563)

(assert (=> b!1252146 (= lt!565176 lt!565175)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47663)

(declare-fun zeroValue!871 () V!47663)

(declare-fun minValueBefore!43 () V!47663)

(declare-datatypes ((Unit!41571 0))(
  ( (Unit!41572) )
))
(declare-fun lt!565174 () Unit!41571)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!988 (array!81087 array!81089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47663 V!47663 V!47663 V!47663 (_ BitVec 32) Int) Unit!41571)

(assert (=> b!1252146 (= lt!565174 (lemmaNoChangeToArrayThenSameMapNoExtras!988 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5670 (array!81087 array!81089 (_ BitVec 32) (_ BitVec 32) V!47663 V!47663 (_ BitVec 32) Int) ListLongMap!18563)

(assert (=> b!1252146 (= lt!565175 (getCurrentListMapNoExtraKeys!5670 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252146 (= lt!565176 (getCurrentListMapNoExtraKeys!5670 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252147 () Bool)

(declare-fun e!711177 () Bool)

(declare-fun e!711179 () Bool)

(assert (=> b!1252147 (= e!711177 (and e!711179 mapRes!49354))))

(declare-fun condMapEmpty!49354 () Bool)

(declare-fun mapDefault!49354 () ValueCell!15098)

