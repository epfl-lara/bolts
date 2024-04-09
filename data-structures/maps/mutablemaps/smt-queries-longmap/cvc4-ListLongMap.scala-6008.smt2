; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77932 () Bool)

(assert start!77932)

(declare-fun b_free!16463 () Bool)

(declare-fun b_next!16463 () Bool)

(assert (=> start!77932 (= b_free!16463 (not b_next!16463))))

(declare-fun tp!57654 () Bool)

(declare-fun b_and!27049 () Bool)

(assert (=> start!77932 (= tp!57654 b_and!27049)))

(declare-fun b!909488 () Bool)

(declare-fun res!613947 () Bool)

(declare-fun e!509861 () Bool)

(assert (=> b!909488 (=> (not res!613947) (not e!509861))))

(declare-datatypes ((array!53778 0))(
  ( (array!53779 (arr!25843 (Array (_ BitVec 32) (_ BitVec 64))) (size!26303 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53778)

(declare-datatypes ((List!18254 0))(
  ( (Nil!18251) (Cons!18250 (h!19396 (_ BitVec 64)) (t!25843 List!18254)) )
))
(declare-fun arrayNoDuplicates!0 (array!53778 (_ BitVec 32) List!18254) Bool)

(assert (=> b!909488 (= res!613947 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18251))))

(declare-fun mapNonEmpty!30037 () Bool)

(declare-fun mapRes!30037 () Bool)

(declare-fun tp!57655 () Bool)

(declare-fun e!509862 () Bool)

(assert (=> mapNonEmpty!30037 (= mapRes!30037 (and tp!57655 e!509862))))

(declare-datatypes ((V!30139 0))(
  ( (V!30140 (val!9491 Int)) )
))
(declare-datatypes ((ValueCell!8959 0))(
  ( (ValueCellFull!8959 (v!11998 V!30139)) (EmptyCell!8959) )
))
(declare-datatypes ((array!53780 0))(
  ( (array!53781 (arr!25844 (Array (_ BitVec 32) ValueCell!8959)) (size!26304 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53780)

(declare-fun mapRest!30037 () (Array (_ BitVec 32) ValueCell!8959))

(declare-fun mapValue!30037 () ValueCell!8959)

(declare-fun mapKey!30037 () (_ BitVec 32))

(assert (=> mapNonEmpty!30037 (= (arr!25844 _values!1152) (store mapRest!30037 mapKey!30037 mapValue!30037))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun b!909489 () Bool)

(assert (=> b!909489 (= e!509861 (and (= (select (arr!25843 _keys!1386) i!717) k!1033) (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsgt #b00000000000000000000000000000000 (size!26303 _keys!1386))))))

(declare-fun b!909490 () Bool)

(declare-fun tp_is_empty!18881 () Bool)

(assert (=> b!909490 (= e!509862 tp_is_empty!18881)))

(declare-fun b!909491 () Bool)

(declare-fun res!613945 () Bool)

(assert (=> b!909491 (=> (not res!613945) (not e!509861))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!909491 (= res!613945 (inRange!0 i!717 mask!1756))))

(declare-fun b!909492 () Bool)

(declare-fun res!613946 () Bool)

(assert (=> b!909492 (=> (not res!613946) (not e!509861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53778 (_ BitVec 32)) Bool)

(assert (=> b!909492 (= res!613946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30037 () Bool)

(assert (=> mapIsEmpty!30037 mapRes!30037))

(declare-fun b!909494 () Bool)

(declare-fun res!613944 () Bool)

(assert (=> b!909494 (=> (not res!613944) (not e!509861))))

(assert (=> b!909494 (= res!613944 (and (= (size!26304 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26303 _keys!1386) (size!26304 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909495 () Bool)

(declare-fun e!509864 () Bool)

(declare-fun e!509863 () Bool)

(assert (=> b!909495 (= e!509864 (and e!509863 mapRes!30037))))

(declare-fun condMapEmpty!30037 () Bool)

(declare-fun mapDefault!30037 () ValueCell!8959)

