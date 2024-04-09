; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104940 () Bool)

(assert start!104940)

(declare-fun b_free!26695 () Bool)

(declare-fun b_next!26695 () Bool)

(assert (=> start!104940 (= b_free!26695 (not b_next!26695))))

(declare-fun tp!93579 () Bool)

(declare-fun b_and!44481 () Bool)

(assert (=> start!104940 (= tp!93579 b_and!44481)))

(declare-fun b!1250277 () Bool)

(declare-fun e!709803 () Bool)

(declare-fun e!709801 () Bool)

(assert (=> b!1250277 (= e!709803 (not e!709801))))

(declare-fun res!834051 () Bool)

(assert (=> b!1250277 (=> res!834051 e!709801)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250277 (= res!834051 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47495 0))(
  ( (V!47496 (val!15861 Int)) )
))
(declare-datatypes ((tuple2!20580 0))(
  ( (tuple2!20581 (_1!10300 (_ BitVec 64)) (_2!10300 V!47495)) )
))
(declare-datatypes ((List!27838 0))(
  ( (Nil!27835) (Cons!27834 (h!29043 tuple2!20580) (t!41318 List!27838)) )
))
(declare-datatypes ((ListLongMap!18465 0))(
  ( (ListLongMap!18466 (toList!9248 List!27838)) )
))
(declare-fun lt!564132 () ListLongMap!18465)

(declare-fun lt!564129 () ListLongMap!18465)

(assert (=> b!1250277 (= lt!564132 lt!564129)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41477 0))(
  ( (Unit!41478) )
))
(declare-fun lt!564131 () Unit!41477)

(declare-fun minValueAfter!43 () V!47495)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47495)

(declare-datatypes ((array!80843 0))(
  ( (array!80844 (arr!38983 (Array (_ BitVec 32) (_ BitVec 64))) (size!39520 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80843)

(declare-datatypes ((ValueCell!15035 0))(
  ( (ValueCellFull!15035 (v!18557 V!47495)) (EmptyCell!15035) )
))
(declare-datatypes ((array!80845 0))(
  ( (array!80846 (arr!38984 (Array (_ BitVec 32) ValueCell!15035)) (size!39521 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80845)

(declare-fun minValueBefore!43 () V!47495)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!947 (array!80843 array!80845 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47495 V!47495 V!47495 V!47495 (_ BitVec 32) Int) Unit!41477)

(assert (=> b!1250277 (= lt!564131 (lemmaNoChangeToArrayThenSameMapNoExtras!947 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5629 (array!80843 array!80845 (_ BitVec 32) (_ BitVec 32) V!47495 V!47495 (_ BitVec 32) Int) ListLongMap!18465)

(assert (=> b!1250277 (= lt!564129 (getCurrentListMapNoExtraKeys!5629 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250277 (= lt!564132 (getCurrentListMapNoExtraKeys!5629 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250278 () Bool)

(declare-fun res!834050 () Bool)

(assert (=> b!1250278 (=> (not res!834050) (not e!709803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80843 (_ BitVec 32)) Bool)

(assert (=> b!1250278 (= res!834050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49159 () Bool)

(declare-fun mapRes!49159 () Bool)

(assert (=> mapIsEmpty!49159 mapRes!49159))

(declare-fun res!834047 () Bool)

(assert (=> start!104940 (=> (not res!834047) (not e!709803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104940 (= res!834047 (validMask!0 mask!1466))))

(assert (=> start!104940 e!709803))

(assert (=> start!104940 true))

(assert (=> start!104940 tp!93579))

(declare-fun tp_is_empty!31597 () Bool)

(assert (=> start!104940 tp_is_empty!31597))

(declare-fun array_inv!29671 (array!80843) Bool)

(assert (=> start!104940 (array_inv!29671 _keys!1118)))

(declare-fun e!709807 () Bool)

(declare-fun array_inv!29672 (array!80845) Bool)

(assert (=> start!104940 (and (array_inv!29672 _values!914) e!709807)))

(declare-fun b!1250279 () Bool)

(declare-fun e!709805 () Bool)

(assert (=> b!1250279 (= e!709805 true)))

(declare-fun lt!564130 () ListLongMap!18465)

(declare-fun -!2016 (ListLongMap!18465 (_ BitVec 64)) ListLongMap!18465)

(assert (=> b!1250279 (= (-!2016 lt!564130 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564130)))

(declare-fun lt!564133 () Unit!41477)

(declare-fun removeNotPresentStillSame!83 (ListLongMap!18465 (_ BitVec 64)) Unit!41477)

(assert (=> b!1250279 (= lt!564133 (removeNotPresentStillSame!83 lt!564130 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250280 () Bool)

(declare-fun e!709806 () Bool)

(assert (=> b!1250280 (= e!709806 tp_is_empty!31597)))

(declare-fun b!1250281 () Bool)

(declare-fun e!709804 () Bool)

(assert (=> b!1250281 (= e!709804 tp_is_empty!31597)))

(declare-fun b!1250282 () Bool)

(declare-fun res!834052 () Bool)

(assert (=> b!1250282 (=> (not res!834052) (not e!709803))))

(assert (=> b!1250282 (= res!834052 (and (= (size!39521 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39520 _keys!1118) (size!39521 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250283 () Bool)

(declare-fun res!834048 () Bool)

(assert (=> b!1250283 (=> (not res!834048) (not e!709803))))

(declare-datatypes ((List!27839 0))(
  ( (Nil!27836) (Cons!27835 (h!29044 (_ BitVec 64)) (t!41319 List!27839)) )
))
(declare-fun arrayNoDuplicates!0 (array!80843 (_ BitVec 32) List!27839) Bool)

(assert (=> b!1250283 (= res!834048 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27836))))

(declare-fun b!1250284 () Bool)

(assert (=> b!1250284 (= e!709807 (and e!709806 mapRes!49159))))

(declare-fun condMapEmpty!49159 () Bool)

(declare-fun mapDefault!49159 () ValueCell!15035)

