; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105028 () Bool)

(assert start!105028)

(declare-fun b_free!26761 () Bool)

(declare-fun b_next!26761 () Bool)

(assert (=> start!105028 (= b_free!26761 (not b_next!26761))))

(declare-fun tp!93779 () Bool)

(declare-fun b_and!44557 () Bool)

(assert (=> start!105028 (= tp!93779 b_and!44557)))

(declare-fun b!1251325 () Bool)

(declare-fun e!710595 () Bool)

(declare-fun e!710600 () Bool)

(assert (=> b!1251325 (= e!710595 (not e!710600))))

(declare-fun res!834705 () Bool)

(assert (=> b!1251325 (=> res!834705 e!710600)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1251325 (= res!834705 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47583 0))(
  ( (V!47584 (val!15894 Int)) )
))
(declare-datatypes ((tuple2!20640 0))(
  ( (tuple2!20641 (_1!10330 (_ BitVec 64)) (_2!10330 V!47583)) )
))
(declare-datatypes ((List!27892 0))(
  ( (Nil!27889) (Cons!27888 (h!29097 tuple2!20640) (t!41374 List!27892)) )
))
(declare-datatypes ((ListLongMap!18525 0))(
  ( (ListLongMap!18526 (toList!9278 List!27892)) )
))
(declare-fun lt!564751 () ListLongMap!18525)

(declare-fun lt!564752 () ListLongMap!18525)

(assert (=> b!1251325 (= lt!564751 lt!564752)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41531 0))(
  ( (Unit!41532) )
))
(declare-fun lt!564750 () Unit!41531)

(declare-fun minValueAfter!43 () V!47583)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47583)

(declare-datatypes ((array!80971 0))(
  ( (array!80972 (arr!39046 (Array (_ BitVec 32) (_ BitVec 64))) (size!39583 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80971)

(declare-datatypes ((ValueCell!15068 0))(
  ( (ValueCellFull!15068 (v!18591 V!47583)) (EmptyCell!15068) )
))
(declare-datatypes ((array!80973 0))(
  ( (array!80974 (arr!39047 (Array (_ BitVec 32) ValueCell!15068)) (size!39584 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80973)

(declare-fun minValueBefore!43 () V!47583)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!969 (array!80971 array!80973 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47583 V!47583 V!47583 V!47583 (_ BitVec 32) Int) Unit!41531)

(assert (=> b!1251325 (= lt!564750 (lemmaNoChangeToArrayThenSameMapNoExtras!969 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5651 (array!80971 array!80973 (_ BitVec 32) (_ BitVec 32) V!47583 V!47583 (_ BitVec 32) Int) ListLongMap!18525)

(assert (=> b!1251325 (= lt!564752 (getCurrentListMapNoExtraKeys!5651 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251325 (= lt!564751 (getCurrentListMapNoExtraKeys!5651 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251326 () Bool)

(declare-fun e!710598 () Bool)

(declare-fun tp_is_empty!31663 () Bool)

(assert (=> b!1251326 (= e!710598 tp_is_empty!31663)))

(declare-fun b!1251327 () Bool)

(declare-fun e!710594 () Bool)

(declare-fun mapRes!49261 () Bool)

(assert (=> b!1251327 (= e!710594 (and e!710598 mapRes!49261))))

(declare-fun condMapEmpty!49261 () Bool)

(declare-fun mapDefault!49261 () ValueCell!15068)

