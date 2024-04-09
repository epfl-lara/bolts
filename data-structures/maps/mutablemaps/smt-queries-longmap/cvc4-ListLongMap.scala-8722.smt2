; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105844 () Bool)

(assert start!105844)

(declare-fun b_free!27371 () Bool)

(declare-fun b_next!27371 () Bool)

(assert (=> start!105844 (= b_free!27371 (not b_next!27371))))

(declare-fun tp!95642 () Bool)

(declare-fun b_and!45277 () Bool)

(assert (=> start!105844 (= tp!95642 b_and!45277)))

(declare-fun res!840017 () Bool)

(declare-fun e!717195 () Bool)

(assert (=> start!105844 (=> (not res!840017) (not e!717195))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105844 (= res!840017 (validMask!0 mask!1466))))

(assert (=> start!105844 e!717195))

(assert (=> start!105844 true))

(assert (=> start!105844 tp!95642))

(declare-fun tp_is_empty!32273 () Bool)

(assert (=> start!105844 tp_is_empty!32273))

(declare-datatypes ((array!82153 0))(
  ( (array!82154 (arr!39626 (Array (_ BitVec 32) (_ BitVec 64))) (size!40163 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82153)

(declare-fun array_inv!30119 (array!82153) Bool)

(assert (=> start!105844 (array_inv!30119 _keys!1118)))

(declare-datatypes ((V!48395 0))(
  ( (V!48396 (val!16199 Int)) )
))
(declare-datatypes ((ValueCell!15373 0))(
  ( (ValueCellFull!15373 (v!18902 V!48395)) (EmptyCell!15373) )
))
(declare-datatypes ((array!82155 0))(
  ( (array!82156 (arr!39627 (Array (_ BitVec 32) ValueCell!15373)) (size!40164 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82155)

(declare-fun e!717194 () Bool)

(declare-fun array_inv!30120 (array!82155) Bool)

(assert (=> start!105844 (and (array_inv!30120 _values!914) e!717194)))

(declare-fun b!1260319 () Bool)

(declare-fun e!717197 () Bool)

(declare-fun mapRes!50209 () Bool)

(assert (=> b!1260319 (= e!717194 (and e!717197 mapRes!50209))))

(declare-fun condMapEmpty!50209 () Bool)

(declare-fun mapDefault!50209 () ValueCell!15373)

