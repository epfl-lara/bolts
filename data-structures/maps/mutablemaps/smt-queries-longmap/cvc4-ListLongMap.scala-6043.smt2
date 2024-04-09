; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78190 () Bool)

(assert start!78190)

(declare-fun b_free!16673 () Bool)

(declare-fun b_next!16673 () Bool)

(assert (=> start!78190 (= b_free!16673 (not b_next!16673))))

(declare-fun tp!58293 () Bool)

(declare-fun b_and!27265 () Bool)

(assert (=> start!78190 (= tp!58293 b_and!27265)))

(declare-fun b!912082 () Bool)

(declare-fun e!511655 () Bool)

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((V!30419 0))(
  ( (V!30420 (val!9596 Int)) )
))
(declare-datatypes ((ValueCell!9064 0))(
  ( (ValueCellFull!9064 (v!12106 V!30419)) (EmptyCell!9064) )
))
(declare-datatypes ((array!54186 0))(
  ( (array!54187 (arr!26044 (Array (_ BitVec 32) ValueCell!9064)) (size!26504 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54186)

(assert (=> b!912082 (= e!511655 (not (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26504 _values!1152)))))))

(declare-datatypes ((array!54188 0))(
  ( (array!54189 (arr!26045 (Array (_ BitVec 32) (_ BitVec 64))) (size!26505 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54188)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912082 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30419)

(declare-datatypes ((Unit!30841 0))(
  ( (Unit!30842) )
))
(declare-fun lt!410515 () Unit!30841)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30419)

(declare-fun lemmaKeyInListMapIsInArray!267 (array!54188 array!54186 (_ BitVec 32) (_ BitVec 32) V!30419 V!30419 (_ BitVec 64) Int) Unit!30841)

(assert (=> b!912082 (= lt!410515 (lemmaKeyInListMapIsInArray!267 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912083 () Bool)

(declare-fun res!615402 () Bool)

(assert (=> b!912083 (=> (not res!615402) (not e!511655))))

(assert (=> b!912083 (= res!615402 (and (= (select (arr!26045 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!615403 () Bool)

(assert (=> start!78190 (=> (not res!615403) (not e!511655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78190 (= res!615403 (validMask!0 mask!1756))))

(assert (=> start!78190 e!511655))

(declare-fun e!511652 () Bool)

(declare-fun array_inv!20334 (array!54186) Bool)

(assert (=> start!78190 (and (array_inv!20334 _values!1152) e!511652)))

(assert (=> start!78190 tp!58293))

(assert (=> start!78190 true))

(declare-fun tp_is_empty!19091 () Bool)

(assert (=> start!78190 tp_is_empty!19091))

(declare-fun array_inv!20335 (array!54188) Bool)

(assert (=> start!78190 (array_inv!20335 _keys!1386)))

(declare-fun b!912084 () Bool)

(declare-fun res!615406 () Bool)

(assert (=> b!912084 (=> (not res!615406) (not e!511655))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912084 (= res!615406 (inRange!0 i!717 mask!1756))))

(declare-fun b!912085 () Bool)

(declare-fun res!615405 () Bool)

(assert (=> b!912085 (=> (not res!615405) (not e!511655))))

(assert (=> b!912085 (= res!615405 (and (= (size!26504 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26505 _keys!1386) (size!26504 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30361 () Bool)

(declare-fun mapRes!30361 () Bool)

(assert (=> mapIsEmpty!30361 mapRes!30361))

(declare-fun b!912086 () Bool)

(declare-fun res!615401 () Bool)

(assert (=> b!912086 (=> (not res!615401) (not e!511655))))

(declare-datatypes ((List!18399 0))(
  ( (Nil!18396) (Cons!18395 (h!19541 (_ BitVec 64)) (t!25994 List!18399)) )
))
(declare-fun arrayNoDuplicates!0 (array!54188 (_ BitVec 32) List!18399) Bool)

(assert (=> b!912086 (= res!615401 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18396))))

(declare-fun b!912087 () Bool)

(declare-fun res!615404 () Bool)

(assert (=> b!912087 (=> (not res!615404) (not e!511655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54188 (_ BitVec 32)) Bool)

(assert (=> b!912087 (= res!615404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912088 () Bool)

(declare-fun res!615400 () Bool)

(assert (=> b!912088 (=> (not res!615400) (not e!511655))))

(declare-datatypes ((tuple2!12558 0))(
  ( (tuple2!12559 (_1!6289 (_ BitVec 64)) (_2!6289 V!30419)) )
))
(declare-datatypes ((List!18400 0))(
  ( (Nil!18397) (Cons!18396 (h!19542 tuple2!12558) (t!25995 List!18400)) )
))
(declare-datatypes ((ListLongMap!11269 0))(
  ( (ListLongMap!11270 (toList!5650 List!18400)) )
))
(declare-fun contains!4660 (ListLongMap!11269 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2880 (array!54188 array!54186 (_ BitVec 32) (_ BitVec 32) V!30419 V!30419 (_ BitVec 32) Int) ListLongMap!11269)

(assert (=> b!912088 (= res!615400 (contains!4660 (getCurrentListMap!2880 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912089 () Bool)

(declare-fun e!511653 () Bool)

(assert (=> b!912089 (= e!511653 tp_is_empty!19091)))

(declare-fun b!912090 () Bool)

(declare-fun e!511654 () Bool)

(assert (=> b!912090 (= e!511654 tp_is_empty!19091)))

(declare-fun mapNonEmpty!30361 () Bool)

(declare-fun tp!58294 () Bool)

(assert (=> mapNonEmpty!30361 (= mapRes!30361 (and tp!58294 e!511654))))

(declare-fun mapValue!30361 () ValueCell!9064)

(declare-fun mapKey!30361 () (_ BitVec 32))

(declare-fun mapRest!30361 () (Array (_ BitVec 32) ValueCell!9064))

(assert (=> mapNonEmpty!30361 (= (arr!26044 _values!1152) (store mapRest!30361 mapKey!30361 mapValue!30361))))

(declare-fun b!912091 () Bool)

(assert (=> b!912091 (= e!511652 (and e!511653 mapRes!30361))))

(declare-fun condMapEmpty!30361 () Bool)

(declare-fun mapDefault!30361 () ValueCell!9064)

