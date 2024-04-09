; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106064 () Bool)

(assert start!106064)

(declare-fun b_free!27481 () Bool)

(declare-fun b_next!27481 () Bool)

(assert (=> start!106064 (= b_free!27481 (not b_next!27481))))

(declare-fun tp!95990 () Bool)

(declare-fun b_and!45453 () Bool)

(assert (=> start!106064 (= tp!95990 b_and!45453)))

(declare-fun b!1262537 () Bool)

(declare-fun e!718731 () Bool)

(declare-fun e!718734 () Bool)

(declare-fun mapRes!50392 () Bool)

(assert (=> b!1262537 (= e!718731 (and e!718734 mapRes!50392))))

(declare-fun condMapEmpty!50392 () Bool)

(declare-datatypes ((V!48543 0))(
  ( (V!48544 (val!16254 Int)) )
))
(declare-datatypes ((ValueCell!15428 0))(
  ( (ValueCellFull!15428 (v!18962 V!48543)) (EmptyCell!15428) )
))
(declare-datatypes ((array!82371 0))(
  ( (array!82372 (arr!39729 (Array (_ BitVec 32) ValueCell!15428)) (size!40266 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82371)

(declare-fun mapDefault!50392 () ValueCell!15428)

