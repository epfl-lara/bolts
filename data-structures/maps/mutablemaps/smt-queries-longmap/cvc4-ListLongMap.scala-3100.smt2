; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43552 () Bool)

(assert start!43552)

(declare-fun b_free!12323 () Bool)

(declare-fun b_next!12323 () Bool)

(assert (=> start!43552 (= b_free!12323 (not b_next!12323))))

(declare-fun tp!43252 () Bool)

(declare-fun b_and!21101 () Bool)

(assert (=> start!43552 (= tp!43252 b_and!21101)))

(declare-fun b!482284 () Bool)

(declare-fun e!283829 () Bool)

(declare-fun e!283826 () Bool)

(declare-fun mapRes!22462 () Bool)

(assert (=> b!482284 (= e!283829 (and e!283826 mapRes!22462))))

(declare-fun condMapEmpty!22462 () Bool)

(declare-datatypes ((V!19517 0))(
  ( (V!19518 (val!6965 Int)) )
))
(declare-datatypes ((ValueCell!6556 0))(
  ( (ValueCellFull!6556 (v!9254 V!19517)) (EmptyCell!6556) )
))
(declare-datatypes ((array!31297 0))(
  ( (array!31298 (arr!15048 (Array (_ BitVec 32) ValueCell!6556)) (size!15406 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31297)

(declare-fun mapDefault!22462 () ValueCell!6556)

