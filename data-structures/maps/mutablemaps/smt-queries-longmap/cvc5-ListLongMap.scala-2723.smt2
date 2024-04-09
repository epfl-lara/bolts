; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40164 () Bool)

(assert start!40164)

(declare-fun b_free!10423 () Bool)

(declare-fun b_next!10423 () Bool)

(assert (=> start!40164 (= b_free!10423 (not b_next!10423))))

(declare-fun tp!36797 () Bool)

(declare-fun b_and!18409 () Bool)

(assert (=> start!40164 (= tp!36797 b_and!18409)))

(declare-fun b!439314 () Bool)

(declare-fun res!259699 () Bool)

(declare-fun e!258979 () Bool)

(assert (=> b!439314 (=> (not res!259699) (not e!258979))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26941 0))(
  ( (array!26942 (arr!12917 (Array (_ BitVec 32) (_ BitVec 64))) (size!13269 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26941)

(assert (=> b!439314 (= res!259699 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13269 _keys!709))))))

(declare-fun b!439315 () Bool)

(declare-fun res!259702 () Bool)

(assert (=> b!439315 (=> (not res!259702) (not e!258979))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16539 0))(
  ( (V!16540 (val!5832 Int)) )
))
(declare-datatypes ((ValueCell!5444 0))(
  ( (ValueCellFull!5444 (v!8075 V!16539)) (EmptyCell!5444) )
))
(declare-datatypes ((array!26943 0))(
  ( (array!26944 (arr!12918 (Array (_ BitVec 32) ValueCell!5444)) (size!13270 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26943)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!439315 (= res!259702 (and (= (size!13270 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13269 _keys!709) (size!13270 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439316 () Bool)

(declare-fun res!259704 () Bool)

(assert (=> b!439316 (=> (not res!259704) (not e!258979))))

(assert (=> b!439316 (= res!259704 (or (= (select (arr!12917 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12917 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18984 () Bool)

(declare-fun mapRes!18984 () Bool)

(assert (=> mapIsEmpty!18984 mapRes!18984))

(declare-fun b!439317 () Bool)

(declare-fun res!259706 () Bool)

(assert (=> b!439317 (=> (not res!259706) (not e!258979))))

(declare-datatypes ((List!7709 0))(
  ( (Nil!7706) (Cons!7705 (h!8561 (_ BitVec 64)) (t!13473 List!7709)) )
))
(declare-fun arrayNoDuplicates!0 (array!26941 (_ BitVec 32) List!7709) Bool)

(assert (=> b!439317 (= res!259706 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7706))))

(declare-fun b!439318 () Bool)

(declare-fun e!258980 () Bool)

(declare-fun e!258978 () Bool)

(assert (=> b!439318 (= e!258980 (and e!258978 mapRes!18984))))

(declare-fun condMapEmpty!18984 () Bool)

(declare-fun mapDefault!18984 () ValueCell!5444)

