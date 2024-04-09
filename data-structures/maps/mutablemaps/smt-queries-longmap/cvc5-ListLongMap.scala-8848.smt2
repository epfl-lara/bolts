; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107348 () Bool)

(assert start!107348)

(declare-fun b!1271733 () Bool)

(declare-fun e!725315 () Bool)

(declare-fun e!725316 () Bool)

(declare-fun mapRes!51082 () Bool)

(assert (=> b!1271733 (= e!725315 (and e!725316 mapRes!51082))))

(declare-fun condMapEmpty!51082 () Bool)

(declare-datatypes ((V!49195 0))(
  ( (V!49196 (val!16575 Int)) )
))
(declare-datatypes ((ValueCell!15647 0))(
  ( (ValueCellFull!15647 (v!19210 V!49195)) (EmptyCell!15647) )
))
(declare-datatypes ((array!83197 0))(
  ( (array!83198 (arr!40131 (Array (_ BitVec 32) ValueCell!15647)) (size!40668 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83197)

(declare-fun mapDefault!51082 () ValueCell!15647)

