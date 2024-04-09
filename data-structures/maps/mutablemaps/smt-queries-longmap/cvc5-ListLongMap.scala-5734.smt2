; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74228 () Bool)

(assert start!74228)

(declare-fun b_free!15007 () Bool)

(declare-fun b_next!15007 () Bool)

(assert (=> start!74228 (= b_free!15007 (not b_next!15007))))

(declare-fun tp!52672 () Bool)

(declare-fun b_and!24777 () Bool)

(assert (=> start!74228 (= tp!52672 b_and!24777)))

(declare-fun b!872746 () Bool)

(declare-fun e!486056 () Bool)

(declare-fun e!486055 () Bool)

(declare-fun mapRes!27461 () Bool)

(assert (=> b!872746 (= e!486056 (and e!486055 mapRes!27461))))

(declare-fun condMapEmpty!27461 () Bool)

(declare-datatypes ((V!28033 0))(
  ( (V!28034 (val!8667 Int)) )
))
(declare-datatypes ((ValueCell!8180 0))(
  ( (ValueCellFull!8180 (v!11088 V!28033)) (EmptyCell!8180) )
))
(declare-datatypes ((array!50596 0))(
  ( (array!50597 (arr!24324 (Array (_ BitVec 32) ValueCell!8180)) (size!24765 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50596)

(declare-fun mapDefault!27461 () ValueCell!8180)

