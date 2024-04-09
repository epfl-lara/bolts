; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113328 () Bool)

(assert start!113328)

(declare-fun b_free!31343 () Bool)

(declare-fun b_next!31343 () Bool)

(assert (=> start!113328 (= b_free!31343 (not b_next!31343))))

(declare-fun tp!109834 () Bool)

(declare-fun b_and!50575 () Bool)

(assert (=> start!113328 (= tp!109834 b_and!50575)))

(declare-fun b!1344106 () Bool)

(declare-fun e!765024 () Bool)

(declare-fun e!765022 () Bool)

(declare-fun mapRes!57721 () Bool)

(assert (=> b!1344106 (= e!765024 (and e!765022 mapRes!57721))))

(declare-fun condMapEmpty!57721 () Bool)

(declare-datatypes ((V!54893 0))(
  ( (V!54894 (val!18746 Int)) )
))
(declare-datatypes ((ValueCell!17773 0))(
  ( (ValueCellFull!17773 (v!21392 V!54893)) (EmptyCell!17773) )
))
(declare-datatypes ((array!91485 0))(
  ( (array!91486 (arr!44194 (Array (_ BitVec 32) ValueCell!17773)) (size!44745 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91485)

(declare-fun mapDefault!57721 () ValueCell!17773)

