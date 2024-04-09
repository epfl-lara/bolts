; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113102 () Bool)

(assert start!113102)

(declare-fun b_free!31117 () Bool)

(declare-fun b_next!31117 () Bool)

(assert (=> start!113102 (= b_free!31117 (not b_next!31117))))

(declare-fun tp!109156 () Bool)

(declare-fun b_and!50157 () Bool)

(assert (=> start!113102 (= tp!109156 b_and!50157)))

(declare-fun b!1340029 () Bool)

(declare-fun e!763331 () Bool)

(declare-fun e!763330 () Bool)

(declare-fun mapRes!57382 () Bool)

(assert (=> b!1340029 (= e!763331 (and e!763330 mapRes!57382))))

(declare-fun condMapEmpty!57382 () Bool)

(declare-datatypes ((V!54593 0))(
  ( (V!54594 (val!18633 Int)) )
))
(declare-datatypes ((ValueCell!17660 0))(
  ( (ValueCellFull!17660 (v!21279 V!54593)) (EmptyCell!17660) )
))
(declare-datatypes ((array!91049 0))(
  ( (array!91050 (arr!43976 (Array (_ BitVec 32) ValueCell!17660)) (size!44527 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91049)

(declare-fun mapDefault!57382 () ValueCell!17660)

