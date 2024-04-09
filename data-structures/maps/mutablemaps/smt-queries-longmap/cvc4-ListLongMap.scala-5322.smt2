; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71200 () Bool)

(assert start!71200)

(declare-fun b_free!13343 () Bool)

(declare-fun b_next!13343 () Bool)

(assert (=> start!71200 (= b_free!13343 (not b_next!13343))))

(declare-fun tp!46788 () Bool)

(declare-fun b_and!22287 () Bool)

(assert (=> start!71200 (= tp!46788 b_and!22287)))

(declare-fun mapIsEmpty!24205 () Bool)

(declare-fun mapRes!24205 () Bool)

(assert (=> mapIsEmpty!24205 mapRes!24205))

(declare-fun b!826655 () Bool)

(declare-fun e!460442 () Bool)

(declare-fun e!460447 () Bool)

(assert (=> b!826655 (= e!460442 (and e!460447 mapRes!24205))))

(declare-fun condMapEmpty!24205 () Bool)

(declare-datatypes ((V!25071 0))(
  ( (V!25072 (val!7574 Int)) )
))
(declare-datatypes ((ValueCell!7111 0))(
  ( (ValueCellFull!7111 (v!10004 V!25071)) (EmptyCell!7111) )
))
(declare-datatypes ((array!46244 0))(
  ( (array!46245 (arr!22163 (Array (_ BitVec 32) ValueCell!7111)) (size!22584 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46244)

(declare-fun mapDefault!24205 () ValueCell!7111)

