; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112254 () Bool)

(assert start!112254)

(declare-fun b_free!30613 () Bool)

(declare-fun b_next!30613 () Bool)

(assert (=> start!112254 (= b_free!30613 (not b_next!30613))))

(declare-fun tp!107477 () Bool)

(declare-fun b_and!49291 () Bool)

(assert (=> start!112254 (= tp!107477 b_and!49291)))

(declare-fun b!1329108 () Bool)

(declare-fun e!757774 () Bool)

(declare-fun e!757771 () Bool)

(declare-fun mapRes!56458 () Bool)

(assert (=> b!1329108 (= e!757774 (and e!757771 mapRes!56458))))

(declare-fun condMapEmpty!56458 () Bool)

(declare-datatypes ((V!53801 0))(
  ( (V!53802 (val!18336 Int)) )
))
(declare-datatypes ((ValueCell!17363 0))(
  ( (ValueCellFull!17363 (v!20971 V!53801)) (EmptyCell!17363) )
))
(declare-datatypes ((array!89903 0))(
  ( (array!89904 (arr!43413 (Array (_ BitVec 32) ValueCell!17363)) (size!43964 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89903)

(declare-fun mapDefault!56458 () ValueCell!17363)

