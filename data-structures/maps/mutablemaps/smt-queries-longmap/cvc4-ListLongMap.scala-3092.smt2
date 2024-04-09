; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43504 () Bool)

(assert start!43504)

(declare-fun b_free!12275 () Bool)

(declare-fun b_next!12275 () Bool)

(assert (=> start!43504 (= b_free!12275 (not b_next!12275))))

(declare-fun tp!43107 () Bool)

(declare-fun b_and!21053 () Bool)

(assert (=> start!43504 (= tp!43107 b_and!21053)))

(declare-fun b!481748 () Bool)

(declare-fun e!283459 () Bool)

(declare-fun e!283458 () Bool)

(declare-fun mapRes!22390 () Bool)

(assert (=> b!481748 (= e!283459 (and e!283458 mapRes!22390))))

(declare-fun condMapEmpty!22390 () Bool)

(declare-datatypes ((V!19453 0))(
  ( (V!19454 (val!6941 Int)) )
))
(declare-datatypes ((ValueCell!6532 0))(
  ( (ValueCellFull!6532 (v!9230 V!19453)) (EmptyCell!6532) )
))
(declare-datatypes ((array!31207 0))(
  ( (array!31208 (arr!15003 (Array (_ BitVec 32) ValueCell!6532)) (size!15361 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31207)

(declare-fun mapDefault!22390 () ValueCell!6532)

