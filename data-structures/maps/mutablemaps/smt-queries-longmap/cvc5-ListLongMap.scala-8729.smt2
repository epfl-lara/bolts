; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105904 () Bool)

(assert start!105904)

(declare-fun b_free!27409 () Bool)

(declare-fun b_next!27409 () Bool)

(assert (=> start!105904 (= b_free!27409 (not b_next!27409))))

(declare-fun tp!95759 () Bool)

(declare-fun b_and!45327 () Bool)

(assert (=> start!105904 (= tp!95759 b_and!45327)))

(declare-fun b!1260944 () Bool)

(declare-fun e!717637 () Bool)

(declare-fun tp_is_empty!32311 () Bool)

(assert (=> b!1260944 (= e!717637 tp_is_empty!32311)))

(declare-fun b!1260945 () Bool)

(declare-fun res!840367 () Bool)

(declare-fun e!717640 () Bool)

(assert (=> b!1260945 (=> (not res!840367) (not e!717640))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!82227 0))(
  ( (array!82228 (arr!39662 (Array (_ BitVec 32) (_ BitVec 64))) (size!40199 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82227)

(declare-datatypes ((V!48447 0))(
  ( (V!48448 (val!16218 Int)) )
))
(declare-datatypes ((ValueCell!15392 0))(
  ( (ValueCellFull!15392 (v!18922 V!48447)) (EmptyCell!15392) )
))
(declare-datatypes ((array!82229 0))(
  ( (array!82230 (arr!39663 (Array (_ BitVec 32) ValueCell!15392)) (size!40200 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82229)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1260945 (= res!840367 (and (= (size!40200 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40199 _keys!1118) (size!40200 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50269 () Bool)

(declare-fun mapRes!50269 () Bool)

(declare-fun tp!95760 () Bool)

(assert (=> mapNonEmpty!50269 (= mapRes!50269 (and tp!95760 e!717637))))

(declare-fun mapKey!50269 () (_ BitVec 32))

(declare-fun mapRest!50269 () (Array (_ BitVec 32) ValueCell!15392))

(declare-fun mapValue!50269 () ValueCell!15392)

(assert (=> mapNonEmpty!50269 (= (arr!39663 _values!914) (store mapRest!50269 mapKey!50269 mapValue!50269))))

(declare-fun b!1260946 () Bool)

(declare-fun res!840370 () Bool)

(assert (=> b!1260946 (=> (not res!840370) (not e!717640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82227 (_ BitVec 32)) Bool)

(assert (=> b!1260946 (= res!840370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260947 () Bool)

(declare-fun res!840368 () Bool)

(assert (=> b!1260947 (=> (not res!840368) (not e!717640))))

(declare-datatypes ((List!28356 0))(
  ( (Nil!28353) (Cons!28352 (h!29561 (_ BitVec 64)) (t!41862 List!28356)) )
))
(declare-fun arrayNoDuplicates!0 (array!82227 (_ BitVec 32) List!28356) Bool)

(assert (=> b!1260947 (= res!840368 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28353))))

(declare-fun b!1260948 () Bool)

(declare-fun e!717636 () Bool)

(assert (=> b!1260948 (= e!717636 tp_is_empty!32311)))

(declare-fun b!1260949 () Bool)

(declare-fun e!717638 () Bool)

(assert (=> b!1260949 (= e!717638 (and e!717636 mapRes!50269))))

(declare-fun condMapEmpty!50269 () Bool)

(declare-fun mapDefault!50269 () ValueCell!15392)

