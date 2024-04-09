; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112206 () Bool)

(assert start!112206)

(declare-fun b_free!30565 () Bool)

(declare-fun b_next!30565 () Bool)

(assert (=> start!112206 (= b_free!30565 (not b_next!30565))))

(declare-fun tp!107332 () Bool)

(declare-fun b_and!49225 () Bool)

(assert (=> start!112206 (= tp!107332 b_and!49225)))

(declare-fun b!1328371 () Bool)

(declare-fun e!757412 () Bool)

(declare-fun e!757411 () Bool)

(declare-fun mapRes!56386 () Bool)

(assert (=> b!1328371 (= e!757412 (and e!757411 mapRes!56386))))

(declare-fun condMapEmpty!56386 () Bool)

(declare-datatypes ((V!53737 0))(
  ( (V!53738 (val!18312 Int)) )
))
(declare-datatypes ((ValueCell!17339 0))(
  ( (ValueCellFull!17339 (v!20947 V!53737)) (EmptyCell!17339) )
))
(declare-datatypes ((array!89813 0))(
  ( (array!89814 (arr!43368 (Array (_ BitVec 32) ValueCell!17339)) (size!43919 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89813)

(declare-fun mapDefault!56386 () ValueCell!17339)

