; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43198 () Bool)

(assert start!43198)

(declare-fun mapIsEmpty!22063 () Bool)

(declare-fun mapRes!22063 () Bool)

(assert (=> mapIsEmpty!22063 mapRes!22063))

(declare-fun mapNonEmpty!22063 () Bool)

(declare-fun tp!42538 () Bool)

(declare-fun e!281382 () Bool)

(assert (=> mapNonEmpty!22063 (= mapRes!22063 (and tp!42538 e!281382))))

(declare-datatypes ((V!19177 0))(
  ( (V!19178 (val!6837 Int)) )
))
(declare-datatypes ((ValueCell!6428 0))(
  ( (ValueCellFull!6428 (v!9122 V!19177)) (EmptyCell!6428) )
))
(declare-fun mapValue!22063 () ValueCell!6428)

(declare-fun mapKey!22063 () (_ BitVec 32))

(declare-fun mapRest!22063 () (Array (_ BitVec 32) ValueCell!6428))

(declare-datatypes ((array!30803 0))(
  ( (array!30804 (arr!14806 (Array (_ BitVec 32) ValueCell!6428)) (size!15164 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30803)

(assert (=> mapNonEmpty!22063 (= (arr!14806 _values!1516) (store mapRest!22063 mapKey!22063 mapValue!22063))))

(declare-fun b!478501 () Bool)

(declare-fun e!281384 () Bool)

(assert (=> b!478501 (= e!281384 false)))

(declare-fun lt!217715 () Bool)

(declare-datatypes ((array!30805 0))(
  ( (array!30806 (arr!14807 (Array (_ BitVec 32) (_ BitVec 64))) (size!15165 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30805)

(declare-datatypes ((List!9096 0))(
  ( (Nil!9093) (Cons!9092 (h!9948 (_ BitVec 64)) (t!15310 List!9096)) )
))
(declare-fun arrayNoDuplicates!0 (array!30805 (_ BitVec 32) List!9096) Bool)

(assert (=> b!478501 (= lt!217715 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9093))))

(declare-fun b!478502 () Bool)

(declare-fun e!281383 () Bool)

(declare-fun tp_is_empty!13579 () Bool)

(assert (=> b!478502 (= e!281383 tp_is_empty!13579)))

(declare-fun res!285550 () Bool)

(assert (=> start!43198 (=> (not res!285550) (not e!281384))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43198 (= res!285550 (validMask!0 mask!2352))))

(assert (=> start!43198 e!281384))

(assert (=> start!43198 true))

(declare-fun e!281385 () Bool)

(declare-fun array_inv!10670 (array!30803) Bool)

(assert (=> start!43198 (and (array_inv!10670 _values!1516) e!281385)))

(declare-fun array_inv!10671 (array!30805) Bool)

(assert (=> start!43198 (array_inv!10671 _keys!1874)))

(declare-fun b!478503 () Bool)

(assert (=> b!478503 (= e!281382 tp_is_empty!13579)))

(declare-fun b!478504 () Bool)

(assert (=> b!478504 (= e!281385 (and e!281383 mapRes!22063))))

(declare-fun condMapEmpty!22063 () Bool)

(declare-fun mapDefault!22063 () ValueCell!6428)

