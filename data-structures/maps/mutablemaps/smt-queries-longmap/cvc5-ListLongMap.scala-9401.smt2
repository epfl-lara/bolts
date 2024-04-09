; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111936 () Bool)

(assert start!111936)

(declare-fun b_free!30499 () Bool)

(declare-fun b_next!30499 () Bool)

(assert (=> start!111936 (= b_free!30499 (not b_next!30499))))

(declare-fun tp!106978 () Bool)

(declare-fun b_and!49103 () Bool)

(assert (=> start!111936 (= tp!106978 b_and!49103)))

(declare-fun b!1325912 () Bool)

(declare-fun e!755811 () Bool)

(declare-fun e!755812 () Bool)

(declare-fun mapRes!56130 () Bool)

(assert (=> b!1325912 (= e!755811 (and e!755812 mapRes!56130))))

(declare-fun condMapEmpty!56130 () Bool)

(declare-datatypes ((V!53529 0))(
  ( (V!53530 (val!18234 Int)) )
))
(declare-datatypes ((ValueCell!17261 0))(
  ( (ValueCellFull!17261 (v!20865 V!53529)) (EmptyCell!17261) )
))
(declare-datatypes ((array!89507 0))(
  ( (array!89508 (arr!43222 (Array (_ BitVec 32) ValueCell!17261)) (size!43773 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89507)

(declare-fun mapDefault!56130 () ValueCell!17261)

