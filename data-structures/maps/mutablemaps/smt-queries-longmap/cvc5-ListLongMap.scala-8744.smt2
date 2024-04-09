; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106102 () Bool)

(assert start!106102)

(declare-fun b_free!27499 () Bool)

(declare-fun b_next!27499 () Bool)

(assert (=> start!106102 (= b_free!27499 (not b_next!27499))))

(declare-fun tp!96047 () Bool)

(declare-fun b_and!45483 () Bool)

(assert (=> start!106102 (= tp!96047 b_and!45483)))

(declare-fun res!841393 () Bool)

(declare-fun e!719021 () Bool)

(assert (=> start!106102 (=> (not res!841393) (not e!719021))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106102 (= res!841393 (validMask!0 mask!1466))))

(assert (=> start!106102 e!719021))

(assert (=> start!106102 true))

(assert (=> start!106102 tp!96047))

(declare-fun tp_is_empty!32401 () Bool)

(assert (=> start!106102 tp_is_empty!32401))

(declare-datatypes ((array!82407 0))(
  ( (array!82408 (arr!39746 (Array (_ BitVec 32) (_ BitVec 64))) (size!40283 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82407)

(declare-fun array_inv!30209 (array!82407) Bool)

(assert (=> start!106102 (array_inv!30209 _keys!1118)))

(declare-datatypes ((V!48567 0))(
  ( (V!48568 (val!16263 Int)) )
))
(declare-datatypes ((ValueCell!15437 0))(
  ( (ValueCellFull!15437 (v!18972 V!48567)) (EmptyCell!15437) )
))
(declare-datatypes ((array!82409 0))(
  ( (array!82410 (arr!39747 (Array (_ BitVec 32) ValueCell!15437)) (size!40284 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82409)

(declare-fun e!719020 () Bool)

(declare-fun array_inv!30210 (array!82409) Bool)

(assert (=> start!106102 (and (array_inv!30210 _values!914) e!719020)))

(declare-fun b!1262944 () Bool)

(declare-fun res!841395 () Bool)

(assert (=> b!1262944 (=> (not res!841395) (not e!719021))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1262944 (= res!841395 (and (= (size!40284 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40283 _keys!1118) (size!40284 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262945 () Bool)

(declare-fun e!719017 () Bool)

(declare-fun mapRes!50422 () Bool)

(assert (=> b!1262945 (= e!719020 (and e!719017 mapRes!50422))))

(declare-fun condMapEmpty!50422 () Bool)

(declare-fun mapDefault!50422 () ValueCell!15437)

