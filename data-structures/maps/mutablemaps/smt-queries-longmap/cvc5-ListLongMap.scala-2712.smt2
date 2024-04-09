; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40098 () Bool)

(assert start!40098)

(declare-fun b_free!10357 () Bool)

(declare-fun b_next!10357 () Bool)

(assert (=> start!40098 (= b_free!10357 (not b_next!10357))))

(declare-fun tp!36599 () Bool)

(declare-fun b_and!18343 () Bool)

(assert (=> start!40098 (= tp!36599 b_and!18343)))

(declare-fun b!437729 () Bool)

(declare-fun res!258416 () Bool)

(declare-fun e!258286 () Bool)

(assert (=> b!437729 (=> (not res!258416) (not e!258286))))

(declare-datatypes ((array!26815 0))(
  ( (array!26816 (arr!12854 (Array (_ BitVec 32) (_ BitVec 64))) (size!13206 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26815)

(declare-datatypes ((List!7662 0))(
  ( (Nil!7659) (Cons!7658 (h!8514 (_ BitVec 64)) (t!13426 List!7662)) )
))
(declare-fun arrayNoDuplicates!0 (array!26815 (_ BitVec 32) List!7662) Bool)

(assert (=> b!437729 (= res!258416 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7659))))

(declare-fun b!437730 () Bool)

(declare-fun res!258413 () Bool)

(assert (=> b!437730 (=> (not res!258413) (not e!258286))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437730 (= res!258413 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13206 _keys!709))))))

(declare-fun b!437731 () Bool)

(declare-fun e!258288 () Bool)

(declare-fun e!258289 () Bool)

(declare-fun mapRes!18885 () Bool)

(assert (=> b!437731 (= e!258288 (and e!258289 mapRes!18885))))

(declare-fun condMapEmpty!18885 () Bool)

(declare-datatypes ((V!16451 0))(
  ( (V!16452 (val!5799 Int)) )
))
(declare-datatypes ((ValueCell!5411 0))(
  ( (ValueCellFull!5411 (v!8042 V!16451)) (EmptyCell!5411) )
))
(declare-datatypes ((array!26817 0))(
  ( (array!26818 (arr!12855 (Array (_ BitVec 32) ValueCell!5411)) (size!13207 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26817)

(declare-fun mapDefault!18885 () ValueCell!5411)

