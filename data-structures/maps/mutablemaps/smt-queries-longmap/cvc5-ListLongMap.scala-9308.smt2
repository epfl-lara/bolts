; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111298 () Bool)

(assert start!111298)

(declare-fun b!1316802 () Bool)

(declare-fun e!751311 () Bool)

(declare-fun e!751312 () Bool)

(declare-fun mapRes!55283 () Bool)

(assert (=> b!1316802 (= e!751311 (and e!751312 mapRes!55283))))

(declare-fun condMapEmpty!55283 () Bool)

(declare-datatypes ((V!52785 0))(
  ( (V!52786 (val!17955 Int)) )
))
(declare-datatypes ((ValueCell!16982 0))(
  ( (ValueCellFull!16982 (v!20582 V!52785)) (EmptyCell!16982) )
))
(declare-datatypes ((array!88435 0))(
  ( (array!88436 (arr!42689 (Array (_ BitVec 32) ValueCell!16982)) (size!43240 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88435)

(declare-fun mapDefault!55283 () ValueCell!16982)

