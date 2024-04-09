; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105856 () Bool)

(assert start!105856)

(declare-fun b_free!27383 () Bool)

(declare-fun b_next!27383 () Bool)

(assert (=> start!105856 (= b_free!27383 (not b_next!27383))))

(declare-fun tp!95678 () Bool)

(declare-fun b_and!45289 () Bool)

(assert (=> start!105856 (= tp!95678 b_and!45289)))

(declare-fun b!1260489 () Bool)

(declare-fun e!717333 () Bool)

(declare-fun e!717326 () Bool)

(declare-fun mapRes!50227 () Bool)

(assert (=> b!1260489 (= e!717333 (and e!717326 mapRes!50227))))

(declare-fun condMapEmpty!50227 () Bool)

(declare-datatypes ((V!48411 0))(
  ( (V!48412 (val!16205 Int)) )
))
(declare-datatypes ((ValueCell!15379 0))(
  ( (ValueCellFull!15379 (v!18908 V!48411)) (EmptyCell!15379) )
))
(declare-datatypes ((array!82175 0))(
  ( (array!82176 (arr!39637 (Array (_ BitVec 32) ValueCell!15379)) (size!40174 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82175)

(declare-fun mapDefault!50227 () ValueCell!15379)

