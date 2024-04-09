; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105362 () Bool)

(assert start!105362)

(declare-fun b_free!26999 () Bool)

(declare-fun b_next!26999 () Bool)

(assert (=> start!105362 (= b_free!26999 (not b_next!26999))))

(declare-fun tp!94508 () Bool)

(declare-fun b_and!44847 () Bool)

(assert (=> start!105362 (= tp!94508 b_and!44847)))

(declare-fun b!1254875 () Bool)

(declare-fun res!836740 () Bool)

(declare-fun e!713159 () Bool)

(assert (=> b!1254875 (=> (not res!836740) (not e!713159))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81437 0))(
  ( (array!81438 (arr!39274 (Array (_ BitVec 32) (_ BitVec 64))) (size!39811 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81437)

(declare-datatypes ((V!47899 0))(
  ( (V!47900 (val!16013 Int)) )
))
(declare-datatypes ((ValueCell!15187 0))(
  ( (ValueCellFull!15187 (v!18713 V!47899)) (EmptyCell!15187) )
))
(declare-datatypes ((array!81439 0))(
  ( (array!81440 (arr!39275 (Array (_ BitVec 32) ValueCell!15187)) (size!39812 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81439)

(assert (=> b!1254875 (= res!836740 (and (= (size!39812 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39811 _keys!1118) (size!39812 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254876 () Bool)

(assert (=> b!1254876 (= e!713159 (not true))))

(declare-datatypes ((tuple2!20820 0))(
  ( (tuple2!20821 (_1!10420 (_ BitVec 64)) (_2!10420 V!47899)) )
))
(declare-datatypes ((List!28060 0))(
  ( (Nil!28057) (Cons!28056 (h!29265 tuple2!20820) (t!41552 List!28060)) )
))
(declare-datatypes ((ListLongMap!18705 0))(
  ( (ListLongMap!18706 (toList!9368 List!28060)) )
))
(declare-fun lt!567317 () ListLongMap!18705)

(declare-fun lt!567315 () ListLongMap!18705)

(assert (=> b!1254876 (= lt!567317 lt!567315)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41710 0))(
  ( (Unit!41711) )
))
(declare-fun lt!567316 () Unit!41710)

(declare-fun minValueAfter!43 () V!47899)

(declare-fun zeroValue!871 () V!47899)

(declare-fun minValueBefore!43 () V!47899)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1047 (array!81437 array!81439 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47899 V!47899 V!47899 V!47899 (_ BitVec 32) Int) Unit!41710)

(assert (=> b!1254876 (= lt!567316 (lemmaNoChangeToArrayThenSameMapNoExtras!1047 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5729 (array!81437 array!81439 (_ BitVec 32) (_ BitVec 32) V!47899 V!47899 (_ BitVec 32) Int) ListLongMap!18705)

(assert (=> b!1254876 (= lt!567315 (getCurrentListMapNoExtraKeys!5729 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254876 (= lt!567317 (getCurrentListMapNoExtraKeys!5729 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49633 () Bool)

(declare-fun mapRes!49633 () Bool)

(declare-fun tp!94509 () Bool)

(declare-fun e!713160 () Bool)

(assert (=> mapNonEmpty!49633 (= mapRes!49633 (and tp!94509 e!713160))))

(declare-fun mapRest!49633 () (Array (_ BitVec 32) ValueCell!15187))

(declare-fun mapValue!49633 () ValueCell!15187)

(declare-fun mapKey!49633 () (_ BitVec 32))

(assert (=> mapNonEmpty!49633 (= (arr!39275 _values!914) (store mapRest!49633 mapKey!49633 mapValue!49633))))

(declare-fun b!1254877 () Bool)

(declare-fun res!836739 () Bool)

(assert (=> b!1254877 (=> (not res!836739) (not e!713159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81437 (_ BitVec 32)) Bool)

(assert (=> b!1254877 (= res!836739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!836737 () Bool)

(assert (=> start!105362 (=> (not res!836737) (not e!713159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105362 (= res!836737 (validMask!0 mask!1466))))

(assert (=> start!105362 e!713159))

(assert (=> start!105362 true))

(assert (=> start!105362 tp!94508))

(declare-fun tp_is_empty!31901 () Bool)

(assert (=> start!105362 tp_is_empty!31901))

(declare-fun array_inv!29871 (array!81437) Bool)

(assert (=> start!105362 (array_inv!29871 _keys!1118)))

(declare-fun e!713161 () Bool)

(declare-fun array_inv!29872 (array!81439) Bool)

(assert (=> start!105362 (and (array_inv!29872 _values!914) e!713161)))

(declare-fun mapIsEmpty!49633 () Bool)

(assert (=> mapIsEmpty!49633 mapRes!49633))

(declare-fun b!1254878 () Bool)

(declare-fun e!713163 () Bool)

(assert (=> b!1254878 (= e!713161 (and e!713163 mapRes!49633))))

(declare-fun condMapEmpty!49633 () Bool)

(declare-fun mapDefault!49633 () ValueCell!15187)

