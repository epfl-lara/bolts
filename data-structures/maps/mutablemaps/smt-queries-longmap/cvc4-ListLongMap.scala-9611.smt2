; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113710 () Bool)

(assert start!113710)

(declare-fun b_free!31583 () Bool)

(declare-fun b_next!31583 () Bool)

(assert (=> start!113710 (= b_free!31583 (not b_next!31583))))

(declare-fun tp!110565 () Bool)

(declare-fun b_and!50975 () Bool)

(assert (=> start!113710 (= tp!110565 b_and!50975)))

(declare-fun b!1349117 () Bool)

(declare-fun e!767498 () Bool)

(declare-fun e!767497 () Bool)

(declare-fun mapRes!58092 () Bool)

(assert (=> b!1349117 (= e!767498 (and e!767497 mapRes!58092))))

(declare-fun condMapEmpty!58092 () Bool)

(declare-datatypes ((V!55213 0))(
  ( (V!55214 (val!18866 Int)) )
))
(declare-datatypes ((ValueCell!17893 0))(
  ( (ValueCellFull!17893 (v!21519 V!55213)) (EmptyCell!17893) )
))
(declare-datatypes ((array!91957 0))(
  ( (array!91958 (arr!44427 (Array (_ BitVec 32) ValueCell!17893)) (size!44978 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91957)

(declare-fun mapDefault!58092 () ValueCell!17893)

