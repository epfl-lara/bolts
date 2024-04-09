; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106154 () Bool)

(assert start!106154)

(declare-fun b_free!27511 () Bool)

(declare-fun b_next!27511 () Bool)

(assert (=> start!106154 (= b_free!27511 (not b_next!27511))))

(declare-fun tp!96090 () Bool)

(declare-fun b_and!45517 () Bool)

(assert (=> start!106154 (= tp!96090 b_and!45517)))

(declare-fun b!1263432 () Bool)

(declare-fun res!841626 () Bool)

(declare-fun e!719351 () Bool)

(assert (=> b!1263432 (=> (not res!841626) (not e!719351))))

(declare-datatypes ((array!82433 0))(
  ( (array!82434 (arr!39757 (Array (_ BitVec 32) (_ BitVec 64))) (size!40294 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82433)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82433 (_ BitVec 32)) Bool)

(assert (=> b!1263432 (= res!841626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1263433 () Bool)

(declare-fun e!719346 () Bool)

(declare-fun tp_is_empty!32413 () Bool)

(assert (=> b!1263433 (= e!719346 tp_is_empty!32413)))

(declare-fun res!841625 () Bool)

(assert (=> start!106154 (=> (not res!841625) (not e!719351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106154 (= res!841625 (validMask!0 mask!1466))))

(assert (=> start!106154 e!719351))

(assert (=> start!106154 true))

(assert (=> start!106154 tp!96090))

(assert (=> start!106154 tp_is_empty!32413))

(declare-fun array_inv!30217 (array!82433) Bool)

(assert (=> start!106154 (array_inv!30217 _keys!1118)))

(declare-datatypes ((V!48583 0))(
  ( (V!48584 (val!16269 Int)) )
))
(declare-datatypes ((ValueCell!15443 0))(
  ( (ValueCellFull!15443 (v!18980 V!48583)) (EmptyCell!15443) )
))
(declare-datatypes ((array!82435 0))(
  ( (array!82436 (arr!39758 (Array (_ BitVec 32) ValueCell!15443)) (size!40295 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82435)

(declare-fun e!719350 () Bool)

(declare-fun array_inv!30218 (array!82435) Bool)

(assert (=> start!106154 (and (array_inv!30218 _values!914) e!719350)))

(declare-fun mapNonEmpty!50446 () Bool)

(declare-fun mapRes!50446 () Bool)

(declare-fun tp!96089 () Bool)

(declare-fun e!719349 () Bool)

(assert (=> mapNonEmpty!50446 (= mapRes!50446 (and tp!96089 e!719349))))

(declare-fun mapRest!50446 () (Array (_ BitVec 32) ValueCell!15443))

(declare-fun mapKey!50446 () (_ BitVec 32))

(declare-fun mapValue!50446 () ValueCell!15443)

(assert (=> mapNonEmpty!50446 (= (arr!39758 _values!914) (store mapRest!50446 mapKey!50446 mapValue!50446))))

(declare-fun b!1263434 () Bool)

(declare-fun res!841623 () Bool)

(assert (=> b!1263434 (=> (not res!841623) (not e!719351))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1263434 (= res!841623 (and (= (size!40295 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40294 _keys!1118) (size!40295 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun e!719347 () Bool)

(declare-fun zeroValue!871 () V!48583)

(declare-datatypes ((tuple2!21206 0))(
  ( (tuple2!21207 (_1!10613 (_ BitVec 64)) (_2!10613 V!48583)) )
))
(declare-datatypes ((List!28426 0))(
  ( (Nil!28423) (Cons!28422 (h!29631 tuple2!21206) (t!41948 List!28426)) )
))
(declare-datatypes ((ListLongMap!19091 0))(
  ( (ListLongMap!19092 (toList!9561 List!28426)) )
))
(declare-fun lt!573003 () ListLongMap!19091)

(declare-fun b!1263435 () Bool)

(declare-fun minValueBefore!43 () V!48583)

(declare-fun getCurrentListMap!4664 (array!82433 array!82435 (_ BitVec 32) (_ BitVec 32) V!48583 V!48583 (_ BitVec 32) Int) ListLongMap!19091)

(declare-fun +!4226 (ListLongMap!19091 tuple2!21206) ListLongMap!19091)

(assert (=> b!1263435 (= e!719347 (= (getCurrentListMap!4664 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4226 (+!4226 lt!573003 (tuple2!21207 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (tuple2!21207 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!573000 () ListLongMap!19091)

(declare-fun minValueAfter!43 () V!48583)

(assert (=> b!1263435 (= lt!573000 (getCurrentListMap!4664 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50446 () Bool)

(assert (=> mapIsEmpty!50446 mapRes!50446))

(declare-fun b!1263436 () Bool)

(assert (=> b!1263436 (= e!719351 (not e!719347))))

(declare-fun res!841624 () Bool)

(assert (=> b!1263436 (=> res!841624 e!719347)))

(assert (=> b!1263436 (= res!841624 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!573001 () ListLongMap!19091)

(assert (=> b!1263436 (= lt!573003 lt!573001)))

(declare-datatypes ((Unit!42064 0))(
  ( (Unit!42065) )
))
(declare-fun lt!573002 () Unit!42064)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1197 (array!82433 array!82435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48583 V!48583 V!48583 V!48583 (_ BitVec 32) Int) Unit!42064)

(assert (=> b!1263436 (= lt!573002 (lemmaNoChangeToArrayThenSameMapNoExtras!1197 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5901 (array!82433 array!82435 (_ BitVec 32) (_ BitVec 32) V!48583 V!48583 (_ BitVec 32) Int) ListLongMap!19091)

(assert (=> b!1263436 (= lt!573001 (getCurrentListMapNoExtraKeys!5901 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263436 (= lt!573003 (getCurrentListMapNoExtraKeys!5901 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263437 () Bool)

(assert (=> b!1263437 (= e!719349 tp_is_empty!32413)))

(declare-fun b!1263438 () Bool)

(assert (=> b!1263438 (= e!719350 (and e!719346 mapRes!50446))))

(declare-fun condMapEmpty!50446 () Bool)

(declare-fun mapDefault!50446 () ValueCell!15443)

