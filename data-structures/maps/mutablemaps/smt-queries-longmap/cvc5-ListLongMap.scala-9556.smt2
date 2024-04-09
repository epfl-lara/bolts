; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113234 () Bool)

(assert start!113234)

(declare-fun b_free!31249 () Bool)

(declare-fun b_next!31249 () Bool)

(assert (=> start!113234 (= b_free!31249 (not b_next!31249))))

(declare-fun tp!109553 () Bool)

(declare-fun b_and!50415 () Bool)

(assert (=> start!113234 (= tp!109553 b_and!50415)))

(declare-fun b!1342524 () Bool)

(declare-fun e!764321 () Bool)

(declare-fun e!764318 () Bool)

(declare-fun mapRes!57580 () Bool)

(assert (=> b!1342524 (= e!764321 (and e!764318 mapRes!57580))))

(declare-fun condMapEmpty!57580 () Bool)

(declare-datatypes ((V!54769 0))(
  ( (V!54770 (val!18699 Int)) )
))
(declare-datatypes ((ValueCell!17726 0))(
  ( (ValueCellFull!17726 (v!21345 V!54769)) (EmptyCell!17726) )
))
(declare-datatypes ((array!91305 0))(
  ( (array!91306 (arr!44104 (Array (_ BitVec 32) ValueCell!17726)) (size!44655 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91305)

(declare-fun mapDefault!57580 () ValueCell!17726)

