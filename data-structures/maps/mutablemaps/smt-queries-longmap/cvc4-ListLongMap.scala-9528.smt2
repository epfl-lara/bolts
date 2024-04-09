; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113070 () Bool)

(assert start!113070)

(declare-fun b_free!31085 () Bool)

(declare-fun b_next!31085 () Bool)

(assert (=> start!113070 (= b_free!31085 (not b_next!31085))))

(declare-fun tp!109061 () Bool)

(declare-fun b_and!50125 () Bool)

(assert (=> start!113070 (= tp!109061 b_and!50125)))

(declare-fun b!1339639 () Bool)

(declare-fun e!763089 () Bool)

(declare-fun e!763091 () Bool)

(declare-fun mapRes!57334 () Bool)

(assert (=> b!1339639 (= e!763089 (and e!763091 mapRes!57334))))

(declare-fun condMapEmpty!57334 () Bool)

(declare-datatypes ((V!54549 0))(
  ( (V!54550 (val!18617 Int)) )
))
(declare-datatypes ((ValueCell!17644 0))(
  ( (ValueCellFull!17644 (v!21263 V!54549)) (EmptyCell!17644) )
))
(declare-datatypes ((array!90989 0))(
  ( (array!90990 (arr!43946 (Array (_ BitVec 32) ValueCell!17644)) (size!44497 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90989)

(declare-fun mapDefault!57334 () ValueCell!17644)

