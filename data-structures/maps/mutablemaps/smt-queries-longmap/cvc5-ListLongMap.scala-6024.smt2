; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78056 () Bool)

(assert start!78056)

(declare-fun b_free!16555 () Bool)

(declare-fun b_next!16555 () Bool)

(assert (=> start!78056 (= b_free!16555 (not b_next!16555))))

(declare-fun tp!57936 () Bool)

(declare-fun b_and!27145 () Bool)

(assert (=> start!78056 (= tp!57936 b_and!27145)))

(declare-fun b!910692 () Bool)

(declare-fun e!510695 () Bool)

(declare-fun tp_is_empty!18973 () Bool)

(assert (=> b!910692 (= e!510695 tp_is_empty!18973)))

(declare-fun b!910693 () Bool)

(declare-fun e!510697 () Bool)

(assert (=> b!910693 (= e!510697 false)))

(declare-datatypes ((V!30263 0))(
  ( (V!30264 (val!9537 Int)) )
))
(declare-datatypes ((ValueCell!9005 0))(
  ( (ValueCellFull!9005 (v!12046 V!30263)) (EmptyCell!9005) )
))
(declare-datatypes ((array!53956 0))(
  ( (array!53957 (arr!25930 (Array (_ BitVec 32) ValueCell!9005)) (size!26390 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53956)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30263)

(declare-datatypes ((array!53958 0))(
  ( (array!53959 (arr!25931 (Array (_ BitVec 32) (_ BitVec 64))) (size!26391 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53958)

(declare-fun lt!410260 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30263)

(declare-datatypes ((tuple2!12468 0))(
  ( (tuple2!12469 (_1!6244 (_ BitVec 64)) (_2!6244 V!30263)) )
))
(declare-datatypes ((List!18319 0))(
  ( (Nil!18316) (Cons!18315 (h!19461 tuple2!12468) (t!25912 List!18319)) )
))
(declare-datatypes ((ListLongMap!11179 0))(
  ( (ListLongMap!11180 (toList!5605 List!18319)) )
))
(declare-fun contains!4614 (ListLongMap!11179 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2835 (array!53958 array!53956 (_ BitVec 32) (_ BitVec 32) V!30263 V!30263 (_ BitVec 32) Int) ListLongMap!11179)

(assert (=> b!910693 (= lt!410260 (contains!4614 (getCurrentListMap!2835 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!910694 () Bool)

(declare-fun res!614606 () Bool)

(assert (=> b!910694 (=> (not res!614606) (not e!510697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53958 (_ BitVec 32)) Bool)

(assert (=> b!910694 (= res!614606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910695 () Bool)

(declare-fun res!614605 () Bool)

(assert (=> b!910695 (=> (not res!614605) (not e!510697))))

(assert (=> b!910695 (= res!614605 (and (= (size!26390 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26391 _keys!1386) (size!26390 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614607 () Bool)

(assert (=> start!78056 (=> (not res!614607) (not e!510697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78056 (= res!614607 (validMask!0 mask!1756))))

(assert (=> start!78056 e!510697))

(declare-fun e!510696 () Bool)

(declare-fun array_inv!20256 (array!53956) Bool)

(assert (=> start!78056 (and (array_inv!20256 _values!1152) e!510696)))

(assert (=> start!78056 tp!57936))

(assert (=> start!78056 true))

(assert (=> start!78056 tp_is_empty!18973))

(declare-fun array_inv!20257 (array!53958) Bool)

(assert (=> start!78056 (array_inv!20257 _keys!1386)))

(declare-fun b!910696 () Bool)

(declare-fun e!510698 () Bool)

(declare-fun mapRes!30181 () Bool)

(assert (=> b!910696 (= e!510696 (and e!510698 mapRes!30181))))

(declare-fun condMapEmpty!30181 () Bool)

(declare-fun mapDefault!30181 () ValueCell!9005)

