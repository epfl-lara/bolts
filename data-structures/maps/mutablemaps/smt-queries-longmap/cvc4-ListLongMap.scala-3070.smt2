; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43284 () Bool)

(assert start!43284)

(declare-fun b_free!12143 () Bool)

(declare-fun b_next!12143 () Bool)

(assert (=> start!43284 (= b_free!12143 (not b_next!12143))))

(declare-fun tp!42699 () Bool)

(declare-fun b_and!20913 () Bool)

(assert (=> start!43284 (= tp!42699 b_and!20913)))

(declare-fun b!479273 () Bool)

(declare-fun e!281983 () Bool)

(declare-fun e!281982 () Bool)

(declare-fun mapRes!22180 () Bool)

(assert (=> b!479273 (= e!281983 (and e!281982 mapRes!22180))))

(declare-fun condMapEmpty!22180 () Bool)

(declare-datatypes ((V!19277 0))(
  ( (V!19278 (val!6875 Int)) )
))
(declare-datatypes ((ValueCell!6466 0))(
  ( (ValueCellFull!6466 (v!9160 V!19277)) (EmptyCell!6466) )
))
(declare-datatypes ((array!30949 0))(
  ( (array!30950 (arr!14878 (Array (_ BitVec 32) ValueCell!6466)) (size!15236 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30949)

(declare-fun mapDefault!22180 () ValueCell!6466)

