; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105152 () Bool)

(assert start!105152)

(declare-fun b_free!26849 () Bool)

(declare-fun b_next!26849 () Bool)

(assert (=> start!105152 (= b_free!26849 (not b_next!26849))))

(declare-fun tp!94049 () Bool)

(declare-fun b_and!44663 () Bool)

(assert (=> start!105152 (= tp!94049 b_and!44663)))

(declare-fun mapIsEmpty!49399 () Bool)

(declare-fun mapRes!49399 () Bool)

(assert (=> mapIsEmpty!49399 mapRes!49399))

(declare-fun b!1252558 () Bool)

(declare-fun e!711476 () Bool)

(declare-fun e!711480 () Bool)

(assert (=> b!1252558 (= e!711476 (not e!711480))))

(declare-fun res!835392 () Bool)

(assert (=> b!1252558 (=> res!835392 e!711480)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252558 (= res!835392 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47699 0))(
  ( (V!47700 (val!15938 Int)) )
))
(declare-datatypes ((tuple2!20702 0))(
  ( (tuple2!20703 (_1!10361 (_ BitVec 64)) (_2!10361 V!47699)) )
))
(declare-datatypes ((List!27951 0))(
  ( (Nil!27948) (Cons!27947 (h!29156 tuple2!20702) (t!41437 List!27951)) )
))
(declare-datatypes ((ListLongMap!18587 0))(
  ( (ListLongMap!18588 (toList!9309 List!27951)) )
))
(declare-fun lt!565376 () ListLongMap!18587)

(declare-fun lt!565377 () ListLongMap!18587)

(assert (=> b!1252558 (= lt!565376 lt!565377)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-datatypes ((Unit!41593 0))(
  ( (Unit!41594) )
))
(declare-fun lt!565375 () Unit!41593)

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47699)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47699)

(declare-datatypes ((array!81143 0))(
  ( (array!81144 (arr!39130 (Array (_ BitVec 32) (_ BitVec 64))) (size!39667 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81143)

(declare-datatypes ((ValueCell!15112 0))(
  ( (ValueCellFull!15112 (v!18636 V!47699)) (EmptyCell!15112) )
))
(declare-datatypes ((array!81145 0))(
  ( (array!81146 (arr!39131 (Array (_ BitVec 32) ValueCell!15112)) (size!39668 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81145)

(declare-fun minValueBefore!43 () V!47699)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!999 (array!81143 array!81145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47699 V!47699 V!47699 V!47699 (_ BitVec 32) Int) Unit!41593)

(assert (=> b!1252558 (= lt!565375 (lemmaNoChangeToArrayThenSameMapNoExtras!999 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5681 (array!81143 array!81145 (_ BitVec 32) (_ BitVec 32) V!47699 V!47699 (_ BitVec 32) Int) ListLongMap!18587)

(assert (=> b!1252558 (= lt!565377 (getCurrentListMapNoExtraKeys!5681 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252558 (= lt!565376 (getCurrentListMapNoExtraKeys!5681 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!835393 () Bool)

(assert (=> start!105152 (=> (not res!835393) (not e!711476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105152 (= res!835393 (validMask!0 mask!1466))))

(assert (=> start!105152 e!711476))

(assert (=> start!105152 true))

(assert (=> start!105152 tp!94049))

(declare-fun tp_is_empty!31751 () Bool)

(assert (=> start!105152 tp_is_empty!31751))

(declare-fun array_inv!29775 (array!81143) Bool)

(assert (=> start!105152 (array_inv!29775 _keys!1118)))

(declare-fun e!711479 () Bool)

(declare-fun array_inv!29776 (array!81145) Bool)

(assert (=> start!105152 (and (array_inv!29776 _values!914) e!711479)))

(declare-fun b!1252559 () Bool)

(declare-fun res!835389 () Bool)

(assert (=> b!1252559 (=> (not res!835389) (not e!711476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81143 (_ BitVec 32)) Bool)

(assert (=> b!1252559 (= res!835389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252560 () Bool)

(declare-fun res!835390 () Bool)

(assert (=> b!1252560 (=> (not res!835390) (not e!711476))))

(declare-datatypes ((List!27952 0))(
  ( (Nil!27949) (Cons!27948 (h!29157 (_ BitVec 64)) (t!41438 List!27952)) )
))
(declare-fun arrayNoDuplicates!0 (array!81143 (_ BitVec 32) List!27952) Bool)

(assert (=> b!1252560 (= res!835390 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27949))))

(declare-fun b!1252561 () Bool)

(declare-fun e!711481 () Bool)

(assert (=> b!1252561 (= e!711481 tp_is_empty!31751)))

(declare-fun b!1252562 () Bool)

(assert (=> b!1252562 (= e!711480 true)))

(declare-fun lt!565378 () ListLongMap!18587)

(declare-fun getCurrentListMap!4504 (array!81143 array!81145 (_ BitVec 32) (_ BitVec 32) V!47699 V!47699 (_ BitVec 32) Int) ListLongMap!18587)

(assert (=> b!1252562 (= lt!565378 (getCurrentListMap!4504 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252563 () Bool)

(declare-fun e!711478 () Bool)

(assert (=> b!1252563 (= e!711478 tp_is_empty!31751)))

(declare-fun b!1252564 () Bool)

(assert (=> b!1252564 (= e!711479 (and e!711478 mapRes!49399))))

(declare-fun condMapEmpty!49399 () Bool)

(declare-fun mapDefault!49399 () ValueCell!15112)

