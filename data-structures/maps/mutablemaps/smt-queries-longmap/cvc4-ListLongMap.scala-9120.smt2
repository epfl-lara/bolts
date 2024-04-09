; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109544 () Bool)

(assert start!109544)

(declare-fun b_free!28997 () Bool)

(declare-fun b_next!28997 () Bool)

(assert (=> start!109544 (= b_free!28997 (not b_next!28997))))

(declare-fun tp!102111 () Bool)

(declare-fun b_and!47097 () Bool)

(assert (=> start!109544 (= tp!102111 b_and!47097)))

(declare-fun b!1296901 () Bool)

(declare-fun e!739924 () Bool)

(declare-fun e!739925 () Bool)

(declare-fun mapRes!53516 () Bool)

(assert (=> b!1296901 (= e!739924 (and e!739925 mapRes!53516))))

(declare-fun condMapEmpty!53516 () Bool)

(declare-datatypes ((V!51285 0))(
  ( (V!51286 (val!17393 Int)) )
))
(declare-datatypes ((ValueCell!16420 0))(
  ( (ValueCellFull!16420 (v!19994 V!51285)) (EmptyCell!16420) )
))
(declare-datatypes ((array!86253 0))(
  ( (array!86254 (arr!41623 (Array (_ BitVec 32) ValueCell!16420)) (size!42174 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86253)

(declare-fun mapDefault!53516 () ValueCell!16420)

