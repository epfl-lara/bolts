; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78186 () Bool)

(assert start!78186)

(declare-fun b_free!16669 () Bool)

(declare-fun b_next!16669 () Bool)

(assert (=> start!78186 (= b_free!16669 (not b_next!16669))))

(declare-fun tp!58282 () Bool)

(declare-fun b_and!27261 () Bool)

(assert (=> start!78186 (= tp!58282 b_and!27261)))

(declare-fun b!912022 () Bool)

(declare-fun res!615360 () Bool)

(declare-fun e!511625 () Bool)

(assert (=> b!912022 (=> (not res!615360) (not e!511625))))

(declare-datatypes ((array!54178 0))(
  ( (array!54179 (arr!26040 (Array (_ BitVec 32) (_ BitVec 64))) (size!26500 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54178)

(declare-datatypes ((List!18395 0))(
  ( (Nil!18392) (Cons!18391 (h!19537 (_ BitVec 64)) (t!25990 List!18395)) )
))
(declare-fun arrayNoDuplicates!0 (array!54178 (_ BitVec 32) List!18395) Bool)

(assert (=> b!912022 (= res!615360 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18392))))

(declare-fun b!912023 () Bool)

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((V!30415 0))(
  ( (V!30416 (val!9594 Int)) )
))
(declare-datatypes ((ValueCell!9062 0))(
  ( (ValueCellFull!9062 (v!12104 V!30415)) (EmptyCell!9062) )
))
(declare-datatypes ((array!54180 0))(
  ( (array!54181 (arr!26041 (Array (_ BitVec 32) ValueCell!9062)) (size!26501 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54180)

(assert (=> b!912023 (= e!511625 (not (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26501 _values!1152)))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912023 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30415)

(declare-datatypes ((Unit!30837 0))(
  ( (Unit!30838) )
))
(declare-fun lt!410509 () Unit!30837)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30415)

(declare-fun lemmaKeyInListMapIsInArray!265 (array!54178 array!54180 (_ BitVec 32) (_ BitVec 32) V!30415 V!30415 (_ BitVec 64) Int) Unit!30837)

(assert (=> b!912023 (= lt!410509 (lemmaKeyInListMapIsInArray!265 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912024 () Bool)

(declare-fun res!615364 () Bool)

(assert (=> b!912024 (=> (not res!615364) (not e!511625))))

(assert (=> b!912024 (= res!615364 (and (= (select (arr!26040 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912025 () Bool)

(declare-fun e!511621 () Bool)

(declare-fun tp_is_empty!19087 () Bool)

(assert (=> b!912025 (= e!511621 tp_is_empty!19087)))

(declare-fun b!912026 () Bool)

(declare-fun res!615362 () Bool)

(assert (=> b!912026 (=> (not res!615362) (not e!511625))))

(declare-datatypes ((tuple2!12554 0))(
  ( (tuple2!12555 (_1!6287 (_ BitVec 64)) (_2!6287 V!30415)) )
))
(declare-datatypes ((List!18396 0))(
  ( (Nil!18393) (Cons!18392 (h!19538 tuple2!12554) (t!25991 List!18396)) )
))
(declare-datatypes ((ListLongMap!11265 0))(
  ( (ListLongMap!11266 (toList!5648 List!18396)) )
))
(declare-fun contains!4658 (ListLongMap!11265 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2878 (array!54178 array!54180 (_ BitVec 32) (_ BitVec 32) V!30415 V!30415 (_ BitVec 32) Int) ListLongMap!11265)

(assert (=> b!912026 (= res!615362 (contains!4658 (getCurrentListMap!2878 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapIsEmpty!30355 () Bool)

(declare-fun mapRes!30355 () Bool)

(assert (=> mapIsEmpty!30355 mapRes!30355))

(declare-fun b!912027 () Bool)

(declare-fun res!615358 () Bool)

(assert (=> b!912027 (=> (not res!615358) (not e!511625))))

(assert (=> b!912027 (= res!615358 (and (= (size!26501 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26500 _keys!1386) (size!26501 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912028 () Bool)

(declare-fun res!615361 () Bool)

(assert (=> b!912028 (=> (not res!615361) (not e!511625))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912028 (= res!615361 (inRange!0 i!717 mask!1756))))

(declare-fun b!912029 () Bool)

(declare-fun e!511624 () Bool)

(assert (=> b!912029 (= e!511624 tp_is_empty!19087)))

(declare-fun b!912030 () Bool)

(declare-fun res!615363 () Bool)

(assert (=> b!912030 (=> (not res!615363) (not e!511625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54178 (_ BitVec 32)) Bool)

(assert (=> b!912030 (= res!615363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912031 () Bool)

(declare-fun e!511623 () Bool)

(assert (=> b!912031 (= e!511623 (and e!511621 mapRes!30355))))

(declare-fun condMapEmpty!30355 () Bool)

(declare-fun mapDefault!30355 () ValueCell!9062)

