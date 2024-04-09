; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113028 () Bool)

(assert start!113028)

(declare-fun b!1339200 () Bool)

(declare-fun e!762776 () Bool)

(declare-fun e!762773 () Bool)

(declare-fun mapRes!57271 () Bool)

(assert (=> b!1339200 (= e!762776 (and e!762773 mapRes!57271))))

(declare-fun condMapEmpty!57271 () Bool)

(declare-datatypes ((V!54493 0))(
  ( (V!54494 (val!18596 Int)) )
))
(declare-datatypes ((ValueCell!17623 0))(
  ( (ValueCellFull!17623 (v!21242 V!54493)) (EmptyCell!17623) )
))
(declare-datatypes ((array!90909 0))(
  ( (array!90910 (arr!43906 (Array (_ BitVec 32) ValueCell!17623)) (size!44457 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90909)

(declare-fun mapDefault!57271 () ValueCell!17623)

