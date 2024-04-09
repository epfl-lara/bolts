; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105160 () Bool)

(assert start!105160)

(declare-fun b_free!26857 () Bool)

(declare-fun b_next!26857 () Bool)

(assert (=> start!105160 (= b_free!26857 (not b_next!26857))))

(declare-fun tp!94074 () Bool)

(declare-fun b_and!44671 () Bool)

(assert (=> start!105160 (= tp!94074 b_and!44671)))

(declare-fun mapIsEmpty!49411 () Bool)

(declare-fun mapRes!49411 () Bool)

(assert (=> mapIsEmpty!49411 mapRes!49411))

(declare-fun b!1252654 () Bool)

(declare-fun res!835453 () Bool)

(declare-fun e!711548 () Bool)

(assert (=> b!1252654 (=> (not res!835453) (not e!711548))))

(declare-datatypes ((array!81159 0))(
  ( (array!81160 (arr!39138 (Array (_ BitVec 32) (_ BitVec 64))) (size!39675 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81159)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81159 (_ BitVec 32)) Bool)

(assert (=> b!1252654 (= res!835453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49411 () Bool)

(declare-fun tp!94073 () Bool)

(declare-fun e!711550 () Bool)

(assert (=> mapNonEmpty!49411 (= mapRes!49411 (and tp!94073 e!711550))))

(declare-fun mapKey!49411 () (_ BitVec 32))

(declare-datatypes ((V!47711 0))(
  ( (V!47712 (val!15942 Int)) )
))
(declare-datatypes ((ValueCell!15116 0))(
  ( (ValueCellFull!15116 (v!18640 V!47711)) (EmptyCell!15116) )
))
(declare-fun mapRest!49411 () (Array (_ BitVec 32) ValueCell!15116))

(declare-fun mapValue!49411 () ValueCell!15116)

(declare-datatypes ((array!81161 0))(
  ( (array!81162 (arr!39139 (Array (_ BitVec 32) ValueCell!15116)) (size!39676 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81161)

(assert (=> mapNonEmpty!49411 (= (arr!39139 _values!914) (store mapRest!49411 mapKey!49411 mapValue!49411))))

(declare-fun b!1252655 () Bool)

(declare-fun e!711552 () Bool)

(declare-fun tp_is_empty!31759 () Bool)

(assert (=> b!1252655 (= e!711552 tp_is_empty!31759)))

(declare-fun b!1252656 () Bool)

(assert (=> b!1252656 (= e!711550 tp_is_empty!31759)))

(declare-fun b!1252657 () Bool)

(declare-fun e!711551 () Bool)

(assert (=> b!1252657 (= e!711548 (not e!711551))))

(declare-fun res!835449 () Bool)

(assert (=> b!1252657 (=> res!835449 e!711551)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252657 (= res!835449 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20710 0))(
  ( (tuple2!20711 (_1!10365 (_ BitVec 64)) (_2!10365 V!47711)) )
))
(declare-datatypes ((List!27958 0))(
  ( (Nil!27955) (Cons!27954 (h!29163 tuple2!20710) (t!41444 List!27958)) )
))
(declare-datatypes ((ListLongMap!18595 0))(
  ( (ListLongMap!18596 (toList!9313 List!27958)) )
))
(declare-fun lt!565424 () ListLongMap!18595)

(declare-fun lt!565423 () ListLongMap!18595)

(assert (=> b!1252657 (= lt!565424 lt!565423)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47711)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!47711)

(declare-datatypes ((Unit!41599 0))(
  ( (Unit!41600) )
))
(declare-fun lt!565426 () Unit!41599)

(declare-fun zeroValue!871 () V!47711)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1002 (array!81159 array!81161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47711 V!47711 V!47711 V!47711 (_ BitVec 32) Int) Unit!41599)

(assert (=> b!1252657 (= lt!565426 (lemmaNoChangeToArrayThenSameMapNoExtras!1002 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5684 (array!81159 array!81161 (_ BitVec 32) (_ BitVec 32) V!47711 V!47711 (_ BitVec 32) Int) ListLongMap!18595)

(assert (=> b!1252657 (= lt!565423 (getCurrentListMapNoExtraKeys!5684 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252657 (= lt!565424 (getCurrentListMapNoExtraKeys!5684 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252658 () Bool)

(assert (=> b!1252658 (= e!711551 true)))

(declare-fun lt!565425 () ListLongMap!18595)

(declare-fun getCurrentListMap!4508 (array!81159 array!81161 (_ BitVec 32) (_ BitVec 32) V!47711 V!47711 (_ BitVec 32) Int) ListLongMap!18595)

(assert (=> b!1252658 (= lt!565425 (getCurrentListMap!4508 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252659 () Bool)

(declare-fun e!711553 () Bool)

(assert (=> b!1252659 (= e!711553 (and e!711552 mapRes!49411))))

(declare-fun condMapEmpty!49411 () Bool)

(declare-fun mapDefault!49411 () ValueCell!15116)

