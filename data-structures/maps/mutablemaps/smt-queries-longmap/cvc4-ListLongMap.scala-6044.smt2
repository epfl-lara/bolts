; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78216 () Bool)

(assert start!78216)

(declare-fun b_free!16679 () Bool)

(declare-fun b_next!16679 () Bool)

(assert (=> start!78216 (= b_free!16679 (not b_next!16679))))

(declare-fun tp!58315 () Bool)

(declare-fun b_and!27273 () Bool)

(assert (=> start!78216 (= tp!58315 b_and!27273)))

(declare-fun b!912293 () Bool)

(declare-fun e!511781 () Bool)

(declare-fun tp_is_empty!19097 () Bool)

(assert (=> b!912293 (= e!511781 tp_is_empty!19097)))

(declare-fun b!912294 () Bool)

(declare-fun res!615517 () Bool)

(declare-fun e!511779 () Bool)

(assert (=> b!912294 (=> (not res!615517) (not e!511779))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((V!30427 0))(
  ( (V!30428 (val!9599 Int)) )
))
(declare-fun zeroValue!1094 () V!30427)

(declare-datatypes ((array!54200 0))(
  ( (array!54201 (arr!26050 (Array (_ BitVec 32) (_ BitVec 64))) (size!26510 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54200)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((ValueCell!9067 0))(
  ( (ValueCellFull!9067 (v!12110 V!30427)) (EmptyCell!9067) )
))
(declare-datatypes ((array!54202 0))(
  ( (array!54203 (arr!26051 (Array (_ BitVec 32) ValueCell!9067)) (size!26511 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54202)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30427)

(declare-datatypes ((tuple2!12564 0))(
  ( (tuple2!12565 (_1!6292 (_ BitVec 64)) (_2!6292 V!30427)) )
))
(declare-datatypes ((List!18405 0))(
  ( (Nil!18402) (Cons!18401 (h!19547 tuple2!12564) (t!26002 List!18405)) )
))
(declare-datatypes ((ListLongMap!11275 0))(
  ( (ListLongMap!11276 (toList!5653 List!18405)) )
))
(declare-fun contains!4664 (ListLongMap!11275 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2883 (array!54200 array!54202 (_ BitVec 32) (_ BitVec 32) V!30427 V!30427 (_ BitVec 32) Int) ListLongMap!11275)

(assert (=> b!912294 (= res!615517 (contains!4664 (getCurrentListMap!2883 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912295 () Bool)

(declare-fun res!615514 () Bool)

(assert (=> b!912295 (=> (not res!615514) (not e!511779))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!912295 (= res!615514 (and (= (select (arr!26050 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912296 () Bool)

(declare-fun res!615518 () Bool)

(assert (=> b!912296 (=> (not res!615518) (not e!511779))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912296 (= res!615518 (inRange!0 i!717 mask!1756))))

(declare-fun b!912297 () Bool)

(declare-fun e!511780 () Bool)

(assert (=> b!912297 (= e!511780 tp_is_empty!19097)))

(declare-fun b!912298 () Bool)

(declare-fun res!615515 () Bool)

(assert (=> b!912298 (=> (not res!615515) (not e!511779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54200 (_ BitVec 32)) Bool)

(assert (=> b!912298 (= res!615515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912299 () Bool)

(declare-fun res!615520 () Bool)

(assert (=> b!912299 (=> (not res!615520) (not e!511779))))

(declare-datatypes ((List!18406 0))(
  ( (Nil!18403) (Cons!18402 (h!19548 (_ BitVec 64)) (t!26003 List!18406)) )
))
(declare-fun arrayNoDuplicates!0 (array!54200 (_ BitVec 32) List!18406) Bool)

(assert (=> b!912299 (= res!615520 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18403))))

(declare-fun res!615516 () Bool)

(assert (=> start!78216 (=> (not res!615516) (not e!511779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78216 (= res!615516 (validMask!0 mask!1756))))

(assert (=> start!78216 e!511779))

(declare-fun e!511777 () Bool)

(declare-fun array_inv!20340 (array!54202) Bool)

(assert (=> start!78216 (and (array_inv!20340 _values!1152) e!511777)))

(assert (=> start!78216 tp!58315))

(assert (=> start!78216 true))

(assert (=> start!78216 tp_is_empty!19097))

(declare-fun array_inv!20341 (array!54200) Bool)

(assert (=> start!78216 (array_inv!20341 _keys!1386)))

(declare-fun mapNonEmpty!30373 () Bool)

(declare-fun mapRes!30373 () Bool)

(declare-fun tp!58314 () Bool)

(assert (=> mapNonEmpty!30373 (= mapRes!30373 (and tp!58314 e!511780))))

(declare-fun mapKey!30373 () (_ BitVec 32))

(declare-fun mapRest!30373 () (Array (_ BitVec 32) ValueCell!9067))

(declare-fun mapValue!30373 () ValueCell!9067)

(assert (=> mapNonEmpty!30373 (= (arr!26051 _values!1152) (store mapRest!30373 mapKey!30373 mapValue!30373))))

(declare-fun b!912300 () Bool)

(assert (=> b!912300 (= e!511779 (not true))))

(declare-fun arrayContainsKey!0 (array!54200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912300 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30849 0))(
  ( (Unit!30850) )
))
(declare-fun lt!410614 () Unit!30849)

(declare-fun lemmaKeyInListMapIsInArray!270 (array!54200 array!54202 (_ BitVec 32) (_ BitVec 32) V!30427 V!30427 (_ BitVec 64) Int) Unit!30849)

(assert (=> b!912300 (= lt!410614 (lemmaKeyInListMapIsInArray!270 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!30373 () Bool)

(assert (=> mapIsEmpty!30373 mapRes!30373))

(declare-fun b!912301 () Bool)

(assert (=> b!912301 (= e!511777 (and e!511781 mapRes!30373))))

(declare-fun condMapEmpty!30373 () Bool)

(declare-fun mapDefault!30373 () ValueCell!9067)

