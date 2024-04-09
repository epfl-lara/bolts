; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40090 () Bool)

(assert start!40090)

(declare-fun b_free!10349 () Bool)

(declare-fun b_next!10349 () Bool)

(assert (=> start!40090 (= b_free!10349 (not b_next!10349))))

(declare-fun tp!36576 () Bool)

(declare-fun b_and!18335 () Bool)

(assert (=> start!40090 (= tp!36576 b_and!18335)))

(declare-fun b!437537 () Bool)

(declare-fun res!258255 () Bool)

(declare-fun e!258204 () Bool)

(assert (=> b!437537 (=> (not res!258255) (not e!258204))))

(declare-datatypes ((array!26799 0))(
  ( (array!26800 (arr!12846 (Array (_ BitVec 32) (_ BitVec 64))) (size!13198 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26799)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437537 (= res!258255 (or (= (select (arr!12846 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12846 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437538 () Bool)

(declare-fun e!258200 () Bool)

(declare-fun e!258199 () Bool)

(declare-fun mapRes!18873 () Bool)

(assert (=> b!437538 (= e!258200 (and e!258199 mapRes!18873))))

(declare-fun condMapEmpty!18873 () Bool)

(declare-datatypes ((V!16439 0))(
  ( (V!16440 (val!5795 Int)) )
))
(declare-datatypes ((ValueCell!5407 0))(
  ( (ValueCellFull!5407 (v!8038 V!16439)) (EmptyCell!5407) )
))
(declare-datatypes ((array!26801 0))(
  ( (array!26802 (arr!12847 (Array (_ BitVec 32) ValueCell!5407)) (size!13199 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26801)

(declare-fun mapDefault!18873 () ValueCell!5407)

