; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105822 () Bool)

(assert start!105822)

(declare-fun b_free!27349 () Bool)

(declare-fun b_next!27349 () Bool)

(assert (=> start!105822 (= b_free!27349 (not b_next!27349))))

(declare-fun tp!95577 () Bool)

(declare-fun b_and!45255 () Bool)

(assert (=> start!105822 (= tp!95577 b_and!45255)))

(declare-fun b!1260022 () Bool)

(declare-fun e!716963 () Bool)

(declare-fun tp_is_empty!32251 () Bool)

(assert (=> b!1260022 (= e!716963 tp_is_empty!32251)))

(declare-fun res!839820 () Bool)

(declare-fun e!716967 () Bool)

(assert (=> start!105822 (=> (not res!839820) (not e!716967))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105822 (= res!839820 (validMask!0 mask!1466))))

(assert (=> start!105822 e!716967))

(assert (=> start!105822 true))

(assert (=> start!105822 tp!95577))

(assert (=> start!105822 tp_is_empty!32251))

(declare-datatypes ((array!82111 0))(
  ( (array!82112 (arr!39605 (Array (_ BitVec 32) (_ BitVec 64))) (size!40142 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82111)

(declare-fun array_inv!30105 (array!82111) Bool)

(assert (=> start!105822 (array_inv!30105 _keys!1118)))

(declare-datatypes ((V!48367 0))(
  ( (V!48368 (val!16188 Int)) )
))
(declare-datatypes ((ValueCell!15362 0))(
  ( (ValueCellFull!15362 (v!18891 V!48367)) (EmptyCell!15362) )
))
(declare-datatypes ((array!82113 0))(
  ( (array!82114 (arr!39606 (Array (_ BitVec 32) ValueCell!15362)) (size!40143 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82113)

(declare-fun e!716965 () Bool)

(declare-fun array_inv!30106 (array!82113) Bool)

(assert (=> start!105822 (and (array_inv!30106 _values!914) e!716965)))

(declare-fun b!1260023 () Bool)

(declare-fun e!716961 () Bool)

(declare-fun mapRes!50176 () Bool)

(assert (=> b!1260023 (= e!716965 (and e!716961 mapRes!50176))))

(declare-fun condMapEmpty!50176 () Bool)

(declare-fun mapDefault!50176 () ValueCell!15362)

