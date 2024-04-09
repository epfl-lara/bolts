; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37934 () Bool)

(assert start!37934)

(declare-fun b_free!8939 () Bool)

(declare-fun b_next!8939 () Bool)

(assert (=> start!37934 (= b_free!8939 (not b_next!8939))))

(declare-fun tp!31581 () Bool)

(declare-fun b_and!16247 () Bool)

(assert (=> start!37934 (= tp!31581 b_and!16247)))

(declare-fun b!389742 () Bool)

(declare-fun res!223022 () Bool)

(declare-fun e!236124 () Bool)

(assert (=> b!389742 (=> (not res!223022) (not e!236124))))

(declare-datatypes ((array!23097 0))(
  ( (array!23098 (arr!11010 (Array (_ BitVec 32) (_ BitVec 64))) (size!11362 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23097)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389742 (= res!223022 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!389743 () Bool)

(declare-fun res!223020 () Bool)

(assert (=> b!389743 (=> (not res!223020) (not e!236124))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389743 (= res!223020 (or (= (select (arr!11010 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11010 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15993 () Bool)

(declare-fun mapRes!15993 () Bool)

(assert (=> mapIsEmpty!15993 mapRes!15993))

(declare-fun b!389744 () Bool)

(declare-fun e!236126 () Bool)

(declare-fun e!236128 () Bool)

(assert (=> b!389744 (= e!236126 (and e!236128 mapRes!15993))))

(declare-fun condMapEmpty!15993 () Bool)

(declare-datatypes ((V!13919 0))(
  ( (V!13920 (val!4850 Int)) )
))
(declare-datatypes ((ValueCell!4462 0))(
  ( (ValueCellFull!4462 (v!7059 V!13919)) (EmptyCell!4462) )
))
(declare-datatypes ((array!23099 0))(
  ( (array!23100 (arr!11011 (Array (_ BitVec 32) ValueCell!4462)) (size!11363 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23099)

(declare-fun mapDefault!15993 () ValueCell!4462)

