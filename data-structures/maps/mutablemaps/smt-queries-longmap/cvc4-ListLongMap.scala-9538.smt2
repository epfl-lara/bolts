; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113130 () Bool)

(assert start!113130)

(declare-fun b_free!31145 () Bool)

(declare-fun b_next!31145 () Bool)

(assert (=> start!113130 (= b_free!31145 (not b_next!31145))))

(declare-fun tp!109240 () Bool)

(declare-fun b_and!50207 () Bool)

(assert (=> start!113130 (= tp!109240 b_and!50207)))

(declare-fun b!1340548 () Bool)

(declare-fun e!763537 () Bool)

(declare-fun e!763541 () Bool)

(declare-fun mapRes!57424 () Bool)

(assert (=> b!1340548 (= e!763537 (and e!763541 mapRes!57424))))

(declare-fun condMapEmpty!57424 () Bool)

(declare-datatypes ((V!54629 0))(
  ( (V!54630 (val!18647 Int)) )
))
(declare-datatypes ((ValueCell!17674 0))(
  ( (ValueCellFull!17674 (v!21293 V!54629)) (EmptyCell!17674) )
))
(declare-datatypes ((array!91101 0))(
  ( (array!91102 (arr!44002 (Array (_ BitVec 32) ValueCell!17674)) (size!44553 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91101)

(declare-fun mapDefault!57424 () ValueCell!17674)

