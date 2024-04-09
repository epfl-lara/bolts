; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111252 () Bool)

(assert start!111252)

(declare-fun b!1316568 () Bool)

(declare-fun e!751093 () Bool)

(declare-fun e!751097 () Bool)

(declare-fun mapRes!55238 () Bool)

(assert (=> b!1316568 (= e!751093 (and e!751097 mapRes!55238))))

(declare-fun condMapEmpty!55238 () Bool)

(declare-datatypes ((V!52753 0))(
  ( (V!52754 (val!17943 Int)) )
))
(declare-datatypes ((ValueCell!16970 0))(
  ( (ValueCellFull!16970 (v!20570 V!52753)) (EmptyCell!16970) )
))
(declare-datatypes ((array!88393 0))(
  ( (array!88394 (arr!42671 (Array (_ BitVec 32) ValueCell!16970)) (size!43222 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88393)

(declare-fun mapDefault!55238 () ValueCell!16970)

