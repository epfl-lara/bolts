; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105850 () Bool)

(assert start!105850)

(declare-fun b_free!27377 () Bool)

(declare-fun b_next!27377 () Bool)

(assert (=> start!105850 (= b_free!27377 (not b_next!27377))))

(declare-fun tp!95660 () Bool)

(declare-fun b_and!45283 () Bool)

(assert (=> start!105850 (= tp!95660 b_and!45283)))

(declare-datatypes ((V!48403 0))(
  ( (V!48404 (val!16202 Int)) )
))
(declare-datatypes ((tuple2!21110 0))(
  ( (tuple2!21111 (_1!10565 (_ BitVec 64)) (_2!10565 V!48403)) )
))
(declare-datatypes ((List!28331 0))(
  ( (Nil!28328) (Cons!28327 (h!29536 tuple2!21110) (t!41835 List!28331)) )
))
(declare-datatypes ((ListLongMap!18995 0))(
  ( (ListLongMap!18996 (toList!9513 List!28331)) )
))
(declare-fun lt!571119 () ListLongMap!18995)

(declare-fun lt!571123 () tuple2!21110)

(declare-fun b!1260400 () Bool)

(declare-fun e!717256 () Bool)

(declare-fun lt!571120 () ListLongMap!18995)

(declare-fun +!4209 (ListLongMap!18995 tuple2!21110) ListLongMap!18995)

(assert (=> b!1260400 (= e!717256 (= lt!571119 (+!4209 lt!571120 lt!571123)))))

(declare-fun b!1260401 () Bool)

(declare-fun res!840071 () Bool)

(declare-fun e!717260 () Bool)

(assert (=> b!1260401 (=> (not res!840071) (not e!717260))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82163 0))(
  ( (array!82164 (arr!39631 (Array (_ BitVec 32) (_ BitVec 64))) (size!40168 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82163)

(declare-datatypes ((ValueCell!15376 0))(
  ( (ValueCellFull!15376 (v!18905 V!48403)) (EmptyCell!15376) )
))
(declare-datatypes ((array!82165 0))(
  ( (array!82166 (arr!39632 (Array (_ BitVec 32) ValueCell!15376)) (size!40169 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82165)

(assert (=> b!1260401 (= res!840071 (and (= (size!40169 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40168 _keys!1118) (size!40169 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50218 () Bool)

(declare-fun mapRes!50218 () Bool)

(declare-fun tp!95661 () Bool)

(declare-fun e!717258 () Bool)

(assert (=> mapNonEmpty!50218 (= mapRes!50218 (and tp!95661 e!717258))))

(declare-fun mapKey!50218 () (_ BitVec 32))

(declare-fun mapValue!50218 () ValueCell!15376)

(declare-fun mapRest!50218 () (Array (_ BitVec 32) ValueCell!15376))

(assert (=> mapNonEmpty!50218 (= (arr!39632 _values!914) (store mapRest!50218 mapKey!50218 mapValue!50218))))

(declare-fun mapIsEmpty!50218 () Bool)

(assert (=> mapIsEmpty!50218 mapRes!50218))

(declare-fun b!1260402 () Bool)

(declare-fun e!717257 () Bool)

(declare-fun tp_is_empty!32279 () Bool)

(assert (=> b!1260402 (= e!717257 tp_is_empty!32279)))

(declare-fun res!840069 () Bool)

(assert (=> start!105850 (=> (not res!840069) (not e!717260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105850 (= res!840069 (validMask!0 mask!1466))))

(assert (=> start!105850 e!717260))

(assert (=> start!105850 true))

(assert (=> start!105850 tp!95660))

(assert (=> start!105850 tp_is_empty!32279))

(declare-fun array_inv!30123 (array!82163) Bool)

(assert (=> start!105850 (array_inv!30123 _keys!1118)))

(declare-fun e!717261 () Bool)

(declare-fun array_inv!30124 (array!82165) Bool)

(assert (=> start!105850 (and (array_inv!30124 _values!914) e!717261)))

(declare-fun b!1260403 () Bool)

(declare-fun e!717259 () Bool)

(assert (=> b!1260403 (= e!717259 true)))

(declare-fun lt!571126 () ListLongMap!18995)

(declare-fun lt!571128 () ListLongMap!18995)

(declare-fun -!2140 (ListLongMap!18995 (_ BitVec 64)) ListLongMap!18995)

(assert (=> b!1260403 (= lt!571126 (-!2140 lt!571128 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!571122 () ListLongMap!18995)

(declare-fun lt!571127 () ListLongMap!18995)

(assert (=> b!1260403 (= (-!2140 lt!571122 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571127)))

(declare-datatypes ((Unit!41993 0))(
  ( (Unit!41994) )
))
(declare-fun lt!571121 () Unit!41993)

(declare-fun minValueBefore!43 () V!48403)

(declare-fun addThenRemoveForNewKeyIsSame!365 (ListLongMap!18995 (_ BitVec 64) V!48403) Unit!41993)

(assert (=> b!1260403 (= lt!571121 (addThenRemoveForNewKeyIsSame!365 lt!571127 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1260403 e!717256))

(declare-fun res!840073 () Bool)

(assert (=> b!1260403 (=> (not res!840073) (not e!717256))))

(assert (=> b!1260403 (= res!840073 (= lt!571128 lt!571122))))

(assert (=> b!1260403 (= lt!571122 (+!4209 lt!571127 (tuple2!21111 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!571124 () ListLongMap!18995)

(assert (=> b!1260403 (= lt!571127 (+!4209 lt!571124 lt!571123))))

(declare-fun zeroValue!871 () V!48403)

(assert (=> b!1260403 (= lt!571123 (tuple2!21111 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48403)

(declare-fun getCurrentListMap!4644 (array!82163 array!82165 (_ BitVec 32) (_ BitVec 32) V!48403 V!48403 (_ BitVec 32) Int) ListLongMap!18995)

(assert (=> b!1260403 (= lt!571119 (getCurrentListMap!4644 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260403 (= lt!571128 (getCurrentListMap!4644 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260404 () Bool)

(assert (=> b!1260404 (= e!717258 tp_is_empty!32279)))

(declare-fun b!1260405 () Bool)

(assert (=> b!1260405 (= e!717261 (and e!717257 mapRes!50218))))

(declare-fun condMapEmpty!50218 () Bool)

(declare-fun mapDefault!50218 () ValueCell!15376)

