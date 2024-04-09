; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113238 () Bool)

(assert start!113238)

(declare-fun b_free!31253 () Bool)

(declare-fun b_next!31253 () Bool)

(assert (=> start!113238 (= b_free!31253 (not b_next!31253))))

(declare-fun tp!109565 () Bool)

(declare-fun b_and!50423 () Bool)

(assert (=> start!113238 (= tp!109565 b_and!50423)))

(declare-fun b!1342600 () Bool)

(declare-fun e!764351 () Bool)

(declare-fun e!764350 () Bool)

(declare-fun mapRes!57586 () Bool)

(assert (=> b!1342600 (= e!764351 (and e!764350 mapRes!57586))))

(declare-fun condMapEmpty!57586 () Bool)

(declare-datatypes ((V!54773 0))(
  ( (V!54774 (val!18701 Int)) )
))
(declare-datatypes ((ValueCell!17728 0))(
  ( (ValueCellFull!17728 (v!21347 V!54773)) (EmptyCell!17728) )
))
(declare-datatypes ((array!91311 0))(
  ( (array!91312 (arr!44107 (Array (_ BitVec 32) ValueCell!17728)) (size!44658 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91311)

(declare-fun mapDefault!57586 () ValueCell!17728)

