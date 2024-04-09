; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35204 () Bool)

(assert start!35204)

(declare-fun b_free!7789 () Bool)

(declare-fun b_next!7789 () Bool)

(assert (=> start!35204 (= b_free!7789 (not b_next!7789))))

(declare-fun tp!26958 () Bool)

(declare-fun b_and!15045 () Bool)

(assert (=> start!35204 (= tp!26958 b_and!15045)))

(declare-fun b!352658 () Bool)

(declare-fun res!195637 () Bool)

(declare-fun e!215958 () Bool)

(assert (=> b!352658 (=> (not res!195637) (not e!215958))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11299 0))(
  ( (V!11300 (val!3915 Int)) )
))
(declare-fun zeroValue!1467 () V!11299)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3527 0))(
  ( (ValueCellFull!3527 (v!6102 V!11299)) (EmptyCell!3527) )
))
(declare-datatypes ((array!19031 0))(
  ( (array!19032 (arr!9014 (Array (_ BitVec 32) ValueCell!3527)) (size!9366 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19031)

(declare-datatypes ((array!19033 0))(
  ( (array!19034 (arr!9015 (Array (_ BitVec 32) (_ BitVec 64))) (size!9367 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19033)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11299)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((tuple2!5642 0))(
  ( (tuple2!5643 (_1!2831 (_ BitVec 64)) (_2!2831 V!11299)) )
))
(declare-datatypes ((List!5279 0))(
  ( (Nil!5276) (Cons!5275 (h!6131 tuple2!5642) (t!10433 List!5279)) )
))
(declare-datatypes ((ListLongMap!4569 0))(
  ( (ListLongMap!4570 (toList!2300 List!5279)) )
))
(declare-fun contains!2369 (ListLongMap!4569 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1817 (array!19033 array!19031 (_ BitVec 32) (_ BitVec 32) V!11299 V!11299 (_ BitVec 32) Int) ListLongMap!4569)

(assert (=> b!352658 (= res!195637 (not (contains!2369 (getCurrentListMap!1817 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!352659 () Bool)

(declare-fun res!195634 () Bool)

(assert (=> b!352659 (=> (not res!195634) (not e!215958))))

(assert (=> b!352659 (= res!195634 (and (= (size!9366 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9367 _keys!1895) (size!9366 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352660 () Bool)

(declare-fun e!215960 () Bool)

(declare-fun e!215957 () Bool)

(declare-fun mapRes!13095 () Bool)

(assert (=> b!352660 (= e!215960 (and e!215957 mapRes!13095))))

(declare-fun condMapEmpty!13095 () Bool)

(declare-fun mapDefault!13095 () ValueCell!3527)

