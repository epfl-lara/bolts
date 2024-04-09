; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104992 () Bool)

(assert start!104992)

(declare-fun b_free!26725 () Bool)

(declare-fun b_next!26725 () Bool)

(assert (=> start!104992 (= b_free!26725 (not b_next!26725))))

(declare-fun tp!93671 () Bool)

(declare-fun b_and!44521 () Bool)

(assert (=> start!104992 (= tp!93671 b_and!44521)))

(declare-fun b!1250839 () Bool)

(declare-fun e!710217 () Bool)

(declare-fun e!710216 () Bool)

(assert (=> b!1250839 (= e!710217 (not e!710216))))

(declare-fun res!834381 () Bool)

(assert (=> b!1250839 (=> res!834381 e!710216)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250839 (= res!834381 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47535 0))(
  ( (V!47536 (val!15876 Int)) )
))
(declare-datatypes ((tuple2!20606 0))(
  ( (tuple2!20607 (_1!10313 (_ BitVec 64)) (_2!10313 V!47535)) )
))
(declare-datatypes ((List!27862 0))(
  ( (Nil!27859) (Cons!27858 (h!29067 tuple2!20606) (t!41344 List!27862)) )
))
(declare-datatypes ((ListLongMap!18491 0))(
  ( (ListLongMap!18492 (toList!9261 List!27862)) )
))
(declare-fun lt!564479 () ListLongMap!18491)

(declare-fun lt!564478 () ListLongMap!18491)

(assert (=> b!1250839 (= lt!564479 lt!564478)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47535)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47535)

(declare-datatypes ((array!80901 0))(
  ( (array!80902 (arr!39011 (Array (_ BitVec 32) (_ BitVec 64))) (size!39548 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80901)

(declare-datatypes ((ValueCell!15050 0))(
  ( (ValueCellFull!15050 (v!18573 V!47535)) (EmptyCell!15050) )
))
(declare-datatypes ((array!80903 0))(
  ( (array!80904 (arr!39012 (Array (_ BitVec 32) ValueCell!15050)) (size!39549 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80903)

(declare-fun minValueBefore!43 () V!47535)

(declare-datatypes ((Unit!41501 0))(
  ( (Unit!41502) )
))
(declare-fun lt!564480 () Unit!41501)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!958 (array!80901 array!80903 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47535 V!47535 V!47535 V!47535 (_ BitVec 32) Int) Unit!41501)

(assert (=> b!1250839 (= lt!564480 (lemmaNoChangeToArrayThenSameMapNoExtras!958 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5640 (array!80901 array!80903 (_ BitVec 32) (_ BitVec 32) V!47535 V!47535 (_ BitVec 32) Int) ListLongMap!18491)

(assert (=> b!1250839 (= lt!564478 (getCurrentListMapNoExtraKeys!5640 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250839 (= lt!564479 (getCurrentListMapNoExtraKeys!5640 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250840 () Bool)

(declare-fun res!834382 () Bool)

(assert (=> b!1250840 (=> (not res!834382) (not e!710217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80901 (_ BitVec 32)) Bool)

(assert (=> b!1250840 (= res!834382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49207 () Bool)

(declare-fun mapRes!49207 () Bool)

(declare-fun tp!93672 () Bool)

(declare-fun e!710221 () Bool)

(assert (=> mapNonEmpty!49207 (= mapRes!49207 (and tp!93672 e!710221))))

(declare-fun mapValue!49207 () ValueCell!15050)

(declare-fun mapKey!49207 () (_ BitVec 32))

(declare-fun mapRest!49207 () (Array (_ BitVec 32) ValueCell!15050))

(assert (=> mapNonEmpty!49207 (= (arr!39012 _values!914) (store mapRest!49207 mapKey!49207 mapValue!49207))))

(declare-fun b!1250841 () Bool)

(declare-fun e!710220 () Bool)

(assert (=> b!1250841 (= e!710216 e!710220)))

(declare-fun res!834378 () Bool)

(assert (=> b!1250841 (=> res!834378 e!710220)))

(declare-fun lt!564482 () ListLongMap!18491)

(declare-fun contains!7512 (ListLongMap!18491 (_ BitVec 64)) Bool)

(assert (=> b!1250841 (= res!834378 (contains!7512 lt!564482 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4477 (array!80901 array!80903 (_ BitVec 32) (_ BitVec 32) V!47535 V!47535 (_ BitVec 32) Int) ListLongMap!18491)

(assert (=> b!1250841 (= lt!564482 (getCurrentListMap!4477 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!834383 () Bool)

(assert (=> start!104992 (=> (not res!834383) (not e!710217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104992 (= res!834383 (validMask!0 mask!1466))))

(assert (=> start!104992 e!710217))

(assert (=> start!104992 true))

(assert (=> start!104992 tp!93671))

(declare-fun tp_is_empty!31627 () Bool)

(assert (=> start!104992 tp_is_empty!31627))

(declare-fun array_inv!29691 (array!80901) Bool)

(assert (=> start!104992 (array_inv!29691 _keys!1118)))

(declare-fun e!710218 () Bool)

(declare-fun array_inv!29692 (array!80903) Bool)

(assert (=> start!104992 (and (array_inv!29692 _values!914) e!710218)))

(declare-fun mapIsEmpty!49207 () Bool)

(assert (=> mapIsEmpty!49207 mapRes!49207))

(declare-fun b!1250842 () Bool)

(declare-fun e!710219 () Bool)

(assert (=> b!1250842 (= e!710218 (and e!710219 mapRes!49207))))

(declare-fun condMapEmpty!49207 () Bool)

(declare-fun mapDefault!49207 () ValueCell!15050)

