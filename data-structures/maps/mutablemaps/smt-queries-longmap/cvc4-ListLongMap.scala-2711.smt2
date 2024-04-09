; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40096 () Bool)

(assert start!40096)

(declare-fun b_free!10355 () Bool)

(declare-fun b_next!10355 () Bool)

(assert (=> start!40096 (= b_free!10355 (not b_next!10355))))

(declare-fun tp!36593 () Bool)

(declare-fun b_and!18341 () Bool)

(assert (=> start!40096 (= tp!36593 b_and!18341)))

(declare-fun b!437681 () Bool)

(declare-fun res!258378 () Bool)

(declare-fun e!258265 () Bool)

(assert (=> b!437681 (=> (not res!258378) (not e!258265))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26811 0))(
  ( (array!26812 (arr!12852 (Array (_ BitVec 32) (_ BitVec 64))) (size!13204 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26811)

(assert (=> b!437681 (= res!258378 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13204 _keys!709))))))

(declare-fun b!437682 () Bool)

(declare-fun e!258267 () Bool)

(declare-fun e!258266 () Bool)

(declare-fun mapRes!18882 () Bool)

(assert (=> b!437682 (= e!258267 (and e!258266 mapRes!18882))))

(declare-fun condMapEmpty!18882 () Bool)

(declare-datatypes ((V!16447 0))(
  ( (V!16448 (val!5798 Int)) )
))
(declare-datatypes ((ValueCell!5410 0))(
  ( (ValueCellFull!5410 (v!8041 V!16447)) (EmptyCell!5410) )
))
(declare-datatypes ((array!26813 0))(
  ( (array!26814 (arr!12853 (Array (_ BitVec 32) ValueCell!5410)) (size!13205 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26813)

(declare-fun mapDefault!18882 () ValueCell!5410)

