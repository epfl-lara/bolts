; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40444 () Bool)

(assert start!40444)

(declare-fun b!444653 () Bool)

(declare-fun e!261454 () Bool)

(declare-fun tp_is_empty!11821 () Bool)

(assert (=> b!444653 (= e!261454 tp_is_empty!11821)))

(declare-fun b!444654 () Bool)

(declare-fun res!263806 () Bool)

(declare-fun e!261455 () Bool)

(assert (=> b!444654 (=> (not res!263806) (not e!261455))))

(declare-datatypes ((array!27413 0))(
  ( (array!27414 (arr!13151 (Array (_ BitVec 32) (_ BitVec 64))) (size!13503 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27413)

(declare-datatypes ((List!7850 0))(
  ( (Nil!7847) (Cons!7846 (h!8702 (_ BitVec 64)) (t!13616 List!7850)) )
))
(declare-fun arrayNoDuplicates!0 (array!27413 (_ BitVec 32) List!7850) Bool)

(assert (=> b!444654 (= res!263806 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7847))))

(declare-fun b!444655 () Bool)

(declare-fun e!261457 () Bool)

(assert (=> b!444655 (= e!261457 false)))

(declare-fun lt!203516 () Bool)

(declare-fun lt!203517 () array!27413)

(assert (=> b!444655 (= lt!203516 (arrayNoDuplicates!0 lt!203517 #b00000000000000000000000000000000 Nil!7847))))

(declare-fun mapNonEmpty!19359 () Bool)

(declare-fun mapRes!19359 () Bool)

(declare-fun tp!37341 () Bool)

(assert (=> mapNonEmpty!19359 (= mapRes!19359 (and tp!37341 e!261454))))

(declare-datatypes ((V!16867 0))(
  ( (V!16868 (val!5955 Int)) )
))
(declare-datatypes ((ValueCell!5567 0))(
  ( (ValueCellFull!5567 (v!8202 V!16867)) (EmptyCell!5567) )
))
(declare-fun mapValue!19359 () ValueCell!5567)

(declare-fun mapKey!19359 () (_ BitVec 32))

(declare-datatypes ((array!27415 0))(
  ( (array!27416 (arr!13152 (Array (_ BitVec 32) ValueCell!5567)) (size!13504 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27415)

(declare-fun mapRest!19359 () (Array (_ BitVec 32) ValueCell!5567))

(assert (=> mapNonEmpty!19359 (= (arr!13152 _values!549) (store mapRest!19359 mapKey!19359 mapValue!19359))))

(declare-fun b!444656 () Bool)

(declare-fun res!263814 () Bool)

(assert (=> b!444656 (=> (not res!263814) (not e!261455))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444656 (= res!263814 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13503 _keys!709))))))

(declare-fun b!444658 () Bool)

(declare-fun res!263809 () Bool)

(assert (=> b!444658 (=> (not res!263809) (not e!261455))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444658 (= res!263809 (validKeyInArray!0 k!794))))

(declare-fun b!444659 () Bool)

(declare-fun e!261458 () Bool)

(assert (=> b!444659 (= e!261458 tp_is_empty!11821)))

(declare-fun b!444660 () Bool)

(declare-fun e!261456 () Bool)

(assert (=> b!444660 (= e!261456 (and e!261458 mapRes!19359))))

(declare-fun condMapEmpty!19359 () Bool)

(declare-fun mapDefault!19359 () ValueCell!5567)

