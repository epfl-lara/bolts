; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104926 () Bool)

(assert start!104926)

(declare-fun b_free!26681 () Bool)

(declare-fun b_next!26681 () Bool)

(assert (=> start!104926 (= b_free!26681 (not b_next!26681))))

(declare-fun tp!93536 () Bool)

(declare-fun b_and!44467 () Bool)

(assert (=> start!104926 (= tp!93536 b_and!44467)))

(declare-fun res!833921 () Bool)

(declare-fun e!709660 () Bool)

(assert (=> start!104926 (=> (not res!833921) (not e!709660))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104926 (= res!833921 (validMask!0 mask!1466))))

(assert (=> start!104926 e!709660))

(assert (=> start!104926 true))

(assert (=> start!104926 tp!93536))

(declare-fun tp_is_empty!31583 () Bool)

(assert (=> start!104926 tp_is_empty!31583))

(declare-datatypes ((array!80819 0))(
  ( (array!80820 (arr!38971 (Array (_ BitVec 32) (_ BitVec 64))) (size!39508 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80819)

(declare-fun array_inv!29663 (array!80819) Bool)

(assert (=> start!104926 (array_inv!29663 _keys!1118)))

(declare-datatypes ((V!47475 0))(
  ( (V!47476 (val!15854 Int)) )
))
(declare-datatypes ((ValueCell!15028 0))(
  ( (ValueCellFull!15028 (v!18550 V!47475)) (EmptyCell!15028) )
))
(declare-datatypes ((array!80821 0))(
  ( (array!80822 (arr!38972 (Array (_ BitVec 32) ValueCell!15028)) (size!39509 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80821)

(declare-fun e!709659 () Bool)

(declare-fun array_inv!29664 (array!80821) Bool)

(assert (=> start!104926 (and (array_inv!29664 _values!914) e!709659)))

(declare-fun b!1250088 () Bool)

(declare-fun res!833926 () Bool)

(assert (=> b!1250088 (=> (not res!833926) (not e!709660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80819 (_ BitVec 32)) Bool)

(assert (=> b!1250088 (= res!833926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250089 () Bool)

(declare-fun e!709654 () Bool)

(assert (=> b!1250089 (= e!709654 tp_is_empty!31583)))

(declare-fun b!1250090 () Bool)

(declare-fun res!833924 () Bool)

(assert (=> b!1250090 (=> (not res!833924) (not e!709660))))

(declare-datatypes ((List!27829 0))(
  ( (Nil!27826) (Cons!27825 (h!29034 (_ BitVec 64)) (t!41309 List!27829)) )
))
(declare-fun arrayNoDuplicates!0 (array!80819 (_ BitVec 32) List!27829) Bool)

(assert (=> b!1250090 (= res!833924 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27826))))

(declare-fun b!1250091 () Bool)

(declare-fun e!709656 () Bool)

(assert (=> b!1250091 (= e!709660 (not e!709656))))

(declare-fun res!833925 () Bool)

(assert (=> b!1250091 (=> res!833925 e!709656)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250091 (= res!833925 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20570 0))(
  ( (tuple2!20571 (_1!10295 (_ BitVec 64)) (_2!10295 V!47475)) )
))
(declare-datatypes ((List!27830 0))(
  ( (Nil!27827) (Cons!27826 (h!29035 tuple2!20570) (t!41310 List!27830)) )
))
(declare-datatypes ((ListLongMap!18455 0))(
  ( (ListLongMap!18456 (toList!9243 List!27830)) )
))
(declare-fun lt!564024 () ListLongMap!18455)

(declare-fun lt!564027 () ListLongMap!18455)

(assert (=> b!1250091 (= lt!564024 lt!564027)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47475)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47475)

(declare-datatypes ((Unit!41467 0))(
  ( (Unit!41468) )
))
(declare-fun lt!564026 () Unit!41467)

(declare-fun minValueBefore!43 () V!47475)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!943 (array!80819 array!80821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47475 V!47475 V!47475 V!47475 (_ BitVec 32) Int) Unit!41467)

(assert (=> b!1250091 (= lt!564026 (lemmaNoChangeToArrayThenSameMapNoExtras!943 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5625 (array!80819 array!80821 (_ BitVec 32) (_ BitVec 32) V!47475 V!47475 (_ BitVec 32) Int) ListLongMap!18455)

(assert (=> b!1250091 (= lt!564027 (getCurrentListMapNoExtraKeys!5625 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250091 (= lt!564024 (getCurrentListMapNoExtraKeys!5625 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250092 () Bool)

(declare-fun e!709657 () Bool)

(assert (=> b!1250092 (= e!709657 tp_is_empty!31583)))

(declare-fun b!1250093 () Bool)

(declare-fun res!833922 () Bool)

(assert (=> b!1250093 (=> (not res!833922) (not e!709660))))

(assert (=> b!1250093 (= res!833922 (and (= (size!39509 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39508 _keys!1118) (size!39509 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250094 () Bool)

(declare-fun mapRes!49138 () Bool)

(assert (=> b!1250094 (= e!709659 (and e!709657 mapRes!49138))))

(declare-fun condMapEmpty!49138 () Bool)

(declare-fun mapDefault!49138 () ValueCell!15028)

