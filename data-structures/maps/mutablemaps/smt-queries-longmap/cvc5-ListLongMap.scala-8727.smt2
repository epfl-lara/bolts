; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105892 () Bool)

(assert start!105892)

(declare-fun b_free!27397 () Bool)

(declare-fun b_next!27397 () Bool)

(assert (=> start!105892 (= b_free!27397 (not b_next!27397))))

(declare-fun tp!95724 () Bool)

(declare-fun b_and!45315 () Bool)

(assert (=> start!105892 (= tp!95724 b_and!45315)))

(declare-fun b!1260818 () Bool)

(declare-fun res!840297 () Bool)

(declare-fun e!717550 () Bool)

(assert (=> b!1260818 (=> (not res!840297) (not e!717550))))

(declare-datatypes ((array!82203 0))(
  ( (array!82204 (arr!39650 (Array (_ BitVec 32) (_ BitVec 64))) (size!40187 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82203)

(declare-datatypes ((List!28346 0))(
  ( (Nil!28343) (Cons!28342 (h!29551 (_ BitVec 64)) (t!41852 List!28346)) )
))
(declare-fun arrayNoDuplicates!0 (array!82203 (_ BitVec 32) List!28346) Bool)

(assert (=> b!1260818 (= res!840297 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28343))))

(declare-fun mapNonEmpty!50251 () Bool)

(declare-fun mapRes!50251 () Bool)

(declare-fun tp!95723 () Bool)

(declare-fun e!717546 () Bool)

(assert (=> mapNonEmpty!50251 (= mapRes!50251 (and tp!95723 e!717546))))

(declare-datatypes ((V!48431 0))(
  ( (V!48432 (val!16212 Int)) )
))
(declare-datatypes ((ValueCell!15386 0))(
  ( (ValueCellFull!15386 (v!18916 V!48431)) (EmptyCell!15386) )
))
(declare-fun mapRest!50251 () (Array (_ BitVec 32) ValueCell!15386))

(declare-fun mapKey!50251 () (_ BitVec 32))

(declare-fun mapValue!50251 () ValueCell!15386)

(declare-datatypes ((array!82205 0))(
  ( (array!82206 (arr!39651 (Array (_ BitVec 32) ValueCell!15386)) (size!40188 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82205)

(assert (=> mapNonEmpty!50251 (= (arr!39651 _values!914) (store mapRest!50251 mapKey!50251 mapValue!50251))))

(declare-fun b!1260819 () Bool)

(declare-fun tp_is_empty!32299 () Bool)

(assert (=> b!1260819 (= e!717546 tp_is_empty!32299)))

(declare-fun b!1260820 () Bool)

(declare-fun res!840296 () Bool)

(assert (=> b!1260820 (=> (not res!840296) (not e!717550))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1260820 (= res!840296 (and (= (size!40188 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40187 _keys!1118) (size!40188 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!840298 () Bool)

(assert (=> start!105892 (=> (not res!840298) (not e!717550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105892 (= res!840298 (validMask!0 mask!1466))))

(assert (=> start!105892 e!717550))

(assert (=> start!105892 true))

(assert (=> start!105892 tp!95724))

(assert (=> start!105892 tp_is_empty!32299))

(declare-fun array_inv!30137 (array!82203) Bool)

(assert (=> start!105892 (array_inv!30137 _keys!1118)))

(declare-fun e!717549 () Bool)

(declare-fun array_inv!30138 (array!82205) Bool)

(assert (=> start!105892 (and (array_inv!30138 _values!914) e!717549)))

(declare-fun b!1260821 () Bool)

(declare-fun e!717547 () Bool)

(assert (=> b!1260821 (= e!717549 (and e!717547 mapRes!50251))))

(declare-fun condMapEmpty!50251 () Bool)

(declare-fun mapDefault!50251 () ValueCell!15386)

