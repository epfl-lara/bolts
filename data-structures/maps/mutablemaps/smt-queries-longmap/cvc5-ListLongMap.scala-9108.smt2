; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109468 () Bool)

(assert start!109468)

(declare-fun b_free!28921 () Bool)

(declare-fun b_next!28921 () Bool)

(assert (=> start!109468 (= b_free!28921 (not b_next!28921))))

(declare-fun tp!101882 () Bool)

(declare-fun b_and!47021 () Bool)

(assert (=> start!109468 (= tp!101882 b_and!47021)))

(declare-fun mapIsEmpty!53402 () Bool)

(declare-fun mapRes!53402 () Bool)

(assert (=> mapIsEmpty!53402 mapRes!53402))

(declare-fun b!1295601 () Bool)

(declare-fun e!739243 () Bool)

(declare-fun e!739242 () Bool)

(assert (=> b!1295601 (= e!739243 (and e!739242 mapRes!53402))))

(declare-fun condMapEmpty!53402 () Bool)

(declare-datatypes ((V!51185 0))(
  ( (V!51186 (val!17355 Int)) )
))
(declare-datatypes ((ValueCell!16382 0))(
  ( (ValueCellFull!16382 (v!19956 V!51185)) (EmptyCell!16382) )
))
(declare-datatypes ((array!86105 0))(
  ( (array!86106 (arr!41549 (Array (_ BitVec 32) ValueCell!16382)) (size!42100 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86105)

(declare-fun mapDefault!53402 () ValueCell!16382)

