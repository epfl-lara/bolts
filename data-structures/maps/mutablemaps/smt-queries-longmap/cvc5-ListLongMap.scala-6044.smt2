; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78212 () Bool)

(assert start!78212)

(declare-fun b_free!16675 () Bool)

(declare-fun b_next!16675 () Bool)

(assert (=> start!78212 (= b_free!16675 (not b_next!16675))))

(declare-fun tp!58303 () Bool)

(declare-fun b_and!27269 () Bool)

(assert (=> start!78212 (= tp!58303 b_and!27269)))

(declare-fun mapNonEmpty!30367 () Bool)

(declare-fun mapRes!30367 () Bool)

(declare-fun tp!58302 () Bool)

(declare-fun e!511748 () Bool)

(assert (=> mapNonEmpty!30367 (= mapRes!30367 (and tp!58302 e!511748))))

(declare-datatypes ((V!30423 0))(
  ( (V!30424 (val!9597 Int)) )
))
(declare-datatypes ((ValueCell!9065 0))(
  ( (ValueCellFull!9065 (v!12108 V!30423)) (EmptyCell!9065) )
))
(declare-datatypes ((array!54192 0))(
  ( (array!54193 (arr!26046 (Array (_ BitVec 32) ValueCell!9065)) (size!26506 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54192)

(declare-fun mapRest!30367 () (Array (_ BitVec 32) ValueCell!9065))

(declare-fun mapValue!30367 () ValueCell!9065)

(declare-fun mapKey!30367 () (_ BitVec 32))

(assert (=> mapNonEmpty!30367 (= (arr!26046 _values!1152) (store mapRest!30367 mapKey!30367 mapValue!30367))))

(declare-fun b!912233 () Bool)

(declare-fun e!511751 () Bool)

(assert (=> b!912233 (= e!511751 (not true))))

(declare-datatypes ((array!54194 0))(
  ( (array!54195 (arr!26047 (Array (_ BitVec 32) (_ BitVec 64))) (size!26507 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54194)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912233 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30423)

(declare-datatypes ((Unit!30845 0))(
  ( (Unit!30846) )
))
(declare-fun lt!410608 () Unit!30845)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30423)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lemmaKeyInListMapIsInArray!268 (array!54194 array!54192 (_ BitVec 32) (_ BitVec 32) V!30423 V!30423 (_ BitVec 64) Int) Unit!30845)

(assert (=> b!912233 (= lt!410608 (lemmaKeyInListMapIsInArray!268 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912234 () Bool)

(declare-fun e!511749 () Bool)

(declare-fun tp_is_empty!19093 () Bool)

(assert (=> b!912234 (= e!511749 tp_is_empty!19093)))

(declare-fun b!912235 () Bool)

(assert (=> b!912235 (= e!511748 tp_is_empty!19093)))

(declare-fun b!912236 () Bool)

(declare-fun res!615477 () Bool)

(assert (=> b!912236 (=> (not res!615477) (not e!511751))))

(declare-datatypes ((tuple2!12560 0))(
  ( (tuple2!12561 (_1!6290 (_ BitVec 64)) (_2!6290 V!30423)) )
))
(declare-datatypes ((List!18401 0))(
  ( (Nil!18398) (Cons!18397 (h!19543 tuple2!12560) (t!25998 List!18401)) )
))
(declare-datatypes ((ListLongMap!11271 0))(
  ( (ListLongMap!11272 (toList!5651 List!18401)) )
))
(declare-fun contains!4662 (ListLongMap!11271 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2881 (array!54194 array!54192 (_ BitVec 32) (_ BitVec 32) V!30423 V!30423 (_ BitVec 32) Int) ListLongMap!11271)

(assert (=> b!912236 (= res!615477 (contains!4662 (getCurrentListMap!2881 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912237 () Bool)

(declare-fun res!615478 () Bool)

(assert (=> b!912237 (=> (not res!615478) (not e!511751))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912237 (= res!615478 (inRange!0 i!717 mask!1756))))

(declare-fun res!615472 () Bool)

(assert (=> start!78212 (=> (not res!615472) (not e!511751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78212 (= res!615472 (validMask!0 mask!1756))))

(assert (=> start!78212 e!511751))

(declare-fun e!511750 () Bool)

(declare-fun array_inv!20336 (array!54192) Bool)

(assert (=> start!78212 (and (array_inv!20336 _values!1152) e!511750)))

(assert (=> start!78212 tp!58303))

(assert (=> start!78212 true))

(assert (=> start!78212 tp_is_empty!19093))

(declare-fun array_inv!20337 (array!54194) Bool)

(assert (=> start!78212 (array_inv!20337 _keys!1386)))

(declare-fun b!912238 () Bool)

(declare-fun res!615476 () Bool)

(assert (=> b!912238 (=> (not res!615476) (not e!511751))))

(assert (=> b!912238 (= res!615476 (and (= (select (arr!26047 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!30367 () Bool)

(assert (=> mapIsEmpty!30367 mapRes!30367))

(declare-fun b!912239 () Bool)

(declare-fun res!615475 () Bool)

(assert (=> b!912239 (=> (not res!615475) (not e!511751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54194 (_ BitVec 32)) Bool)

(assert (=> b!912239 (= res!615475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912240 () Bool)

(declare-fun res!615473 () Bool)

(assert (=> b!912240 (=> (not res!615473) (not e!511751))))

(assert (=> b!912240 (= res!615473 (and (= (size!26506 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26507 _keys!1386) (size!26506 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912241 () Bool)

(declare-fun res!615474 () Bool)

(assert (=> b!912241 (=> (not res!615474) (not e!511751))))

(declare-datatypes ((List!18402 0))(
  ( (Nil!18399) (Cons!18398 (h!19544 (_ BitVec 64)) (t!25999 List!18402)) )
))
(declare-fun arrayNoDuplicates!0 (array!54194 (_ BitVec 32) List!18402) Bool)

(assert (=> b!912241 (= res!615474 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18399))))

(declare-fun b!912242 () Bool)

(assert (=> b!912242 (= e!511750 (and e!511749 mapRes!30367))))

(declare-fun condMapEmpty!30367 () Bool)

(declare-fun mapDefault!30367 () ValueCell!9065)

