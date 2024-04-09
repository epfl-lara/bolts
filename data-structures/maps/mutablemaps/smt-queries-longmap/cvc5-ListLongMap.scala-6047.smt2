; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78230 () Bool)

(assert start!78230)

(declare-fun b_free!16693 () Bool)

(declare-fun b_next!16693 () Bool)

(assert (=> start!78230 (= b_free!16693 (not b_next!16693))))

(declare-fun tp!58357 () Bool)

(declare-fun b_and!27287 () Bool)

(assert (=> start!78230 (= tp!58357 b_and!27287)))

(declare-fun b!912503 () Bool)

(declare-fun res!615663 () Bool)

(declare-fun e!511883 () Bool)

(assert (=> b!912503 (=> (not res!615663) (not e!511883))))

(declare-datatypes ((V!30447 0))(
  ( (V!30448 (val!9606 Int)) )
))
(declare-datatypes ((ValueCell!9074 0))(
  ( (ValueCellFull!9074 (v!12117 V!30447)) (EmptyCell!9074) )
))
(declare-datatypes ((array!54224 0))(
  ( (array!54225 (arr!26062 (Array (_ BitVec 32) ValueCell!9074)) (size!26522 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54224)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30447)

(declare-datatypes ((array!54226 0))(
  ( (array!54227 (arr!26063 (Array (_ BitVec 32) (_ BitVec 64))) (size!26523 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54226)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30447)

(declare-datatypes ((tuple2!12572 0))(
  ( (tuple2!12573 (_1!6296 (_ BitVec 64)) (_2!6296 V!30447)) )
))
(declare-datatypes ((List!18414 0))(
  ( (Nil!18411) (Cons!18410 (h!19556 tuple2!12572) (t!26011 List!18414)) )
))
(declare-datatypes ((ListLongMap!11283 0))(
  ( (ListLongMap!11284 (toList!5657 List!18414)) )
))
(declare-fun contains!4668 (ListLongMap!11283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2887 (array!54226 array!54224 (_ BitVec 32) (_ BitVec 32) V!30447 V!30447 (_ BitVec 32) Int) ListLongMap!11283)

(assert (=> b!912503 (= res!615663 (contains!4668 (getCurrentListMap!2887 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912504 () Bool)

(declare-fun res!615662 () Bool)

(assert (=> b!912504 (=> (not res!615662) (not e!511883))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912504 (= res!615662 (inRange!0 i!717 mask!1756))))

(declare-fun b!912505 () Bool)

(declare-fun res!615667 () Bool)

(assert (=> b!912505 (=> (not res!615667) (not e!511883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54226 (_ BitVec 32)) Bool)

(assert (=> b!912505 (= res!615667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912507 () Bool)

(declare-fun res!615664 () Bool)

(assert (=> b!912507 (=> (not res!615664) (not e!511883))))

(assert (=> b!912507 (= res!615664 (and (= (size!26522 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26523 _keys!1386) (size!26522 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30394 () Bool)

(declare-fun mapRes!30394 () Bool)

(assert (=> mapIsEmpty!30394 mapRes!30394))

(declare-fun b!912508 () Bool)

(assert (=> b!912508 (= e!511883 (not true))))

(declare-fun arrayContainsKey!0 (array!54226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912508 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30859 0))(
  ( (Unit!30860) )
))
(declare-fun lt!410635 () Unit!30859)

(declare-fun lemmaKeyInListMapIsInArray!275 (array!54226 array!54224 (_ BitVec 32) (_ BitVec 32) V!30447 V!30447 (_ BitVec 64) Int) Unit!30859)

(assert (=> b!912508 (= lt!410635 (lemmaKeyInListMapIsInArray!275 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!30394 () Bool)

(declare-fun tp!58356 () Bool)

(declare-fun e!511884 () Bool)

(assert (=> mapNonEmpty!30394 (= mapRes!30394 (and tp!58356 e!511884))))

(declare-fun mapRest!30394 () (Array (_ BitVec 32) ValueCell!9074))

(declare-fun mapKey!30394 () (_ BitVec 32))

(declare-fun mapValue!30394 () ValueCell!9074)

(assert (=> mapNonEmpty!30394 (= (arr!26062 _values!1152) (store mapRest!30394 mapKey!30394 mapValue!30394))))

(declare-fun b!912509 () Bool)

(declare-fun res!615661 () Bool)

(assert (=> b!912509 (=> (not res!615661) (not e!511883))))

(declare-datatypes ((List!18415 0))(
  ( (Nil!18412) (Cons!18411 (h!19557 (_ BitVec 64)) (t!26012 List!18415)) )
))
(declare-fun arrayNoDuplicates!0 (array!54226 (_ BitVec 32) List!18415) Bool)

(assert (=> b!912509 (= res!615661 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18412))))

(declare-fun b!912510 () Bool)

(declare-fun e!511885 () Bool)

(declare-fun tp_is_empty!19111 () Bool)

(assert (=> b!912510 (= e!511885 tp_is_empty!19111)))

(declare-fun b!912506 () Bool)

(declare-fun e!511882 () Bool)

(assert (=> b!912506 (= e!511882 (and e!511885 mapRes!30394))))

(declare-fun condMapEmpty!30394 () Bool)

(declare-fun mapDefault!30394 () ValueCell!9074)

