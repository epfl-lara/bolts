; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78264 () Bool)

(assert start!78264)

(declare-fun b_free!16727 () Bool)

(declare-fun b_next!16727 () Bool)

(assert (=> start!78264 (= b_free!16727 (not b_next!16727))))

(declare-fun tp!58458 () Bool)

(declare-fun b_and!27321 () Bool)

(assert (=> start!78264 (= tp!58458 b_and!27321)))

(declare-fun b!913013 () Bool)

(declare-fun e!512137 () Bool)

(declare-fun tp_is_empty!19145 () Bool)

(assert (=> b!913013 (= e!512137 tp_is_empty!19145)))

(declare-fun b!913014 () Bool)

(declare-fun e!512140 () Bool)

(assert (=> b!913014 (= e!512140 tp_is_empty!19145)))

(declare-fun mapIsEmpty!30445 () Bool)

(declare-fun mapRes!30445 () Bool)

(assert (=> mapIsEmpty!30445 mapRes!30445))

(declare-fun b!913015 () Bool)

(declare-fun res!616019 () Bool)

(declare-fun e!512139 () Bool)

(assert (=> b!913015 (=> (not res!616019) (not e!512139))))

(declare-datatypes ((array!54292 0))(
  ( (array!54293 (arr!26096 (Array (_ BitVec 32) (_ BitVec 64))) (size!26556 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54292)

(declare-datatypes ((List!18439 0))(
  ( (Nil!18436) (Cons!18435 (h!19581 (_ BitVec 64)) (t!26036 List!18439)) )
))
(declare-fun arrayNoDuplicates!0 (array!54292 (_ BitVec 32) List!18439) Bool)

(assert (=> b!913015 (= res!616019 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18436))))

(declare-fun res!616018 () Bool)

(assert (=> start!78264 (=> (not res!616018) (not e!512139))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78264 (= res!616018 (validMask!0 mask!1756))))

(assert (=> start!78264 e!512139))

(declare-datatypes ((V!30491 0))(
  ( (V!30492 (val!9623 Int)) )
))
(declare-datatypes ((ValueCell!9091 0))(
  ( (ValueCellFull!9091 (v!12134 V!30491)) (EmptyCell!9091) )
))
(declare-datatypes ((array!54294 0))(
  ( (array!54295 (arr!26097 (Array (_ BitVec 32) ValueCell!9091)) (size!26557 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54294)

(declare-fun e!512141 () Bool)

(declare-fun array_inv!20372 (array!54294) Bool)

(assert (=> start!78264 (and (array_inv!20372 _values!1152) e!512141)))

(assert (=> start!78264 tp!58458))

(assert (=> start!78264 true))

(assert (=> start!78264 tp_is_empty!19145))

(declare-fun array_inv!20373 (array!54292) Bool)

(assert (=> start!78264 (array_inv!20373 _keys!1386)))

(declare-fun b!913016 () Bool)

(declare-fun res!616021 () Bool)

(assert (=> b!913016 (=> (not res!616021) (not e!512139))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!913016 (= res!616021 (inRange!0 i!717 mask!1756))))

(declare-fun b!913017 () Bool)

(declare-fun res!616023 () Bool)

(assert (=> b!913017 (=> (not res!616023) (not e!512139))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!913017 (= res!616023 (and (= (size!26557 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26556 _keys!1386) (size!26557 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!913018 () Bool)

(declare-fun res!616024 () Bool)

(assert (=> b!913018 (=> (not res!616024) (not e!512139))))

(declare-fun zeroValue!1094 () V!30491)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30491)

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((tuple2!12600 0))(
  ( (tuple2!12601 (_1!6310 (_ BitVec 64)) (_2!6310 V!30491)) )
))
(declare-datatypes ((List!18440 0))(
  ( (Nil!18437) (Cons!18436 (h!19582 tuple2!12600) (t!26037 List!18440)) )
))
(declare-datatypes ((ListLongMap!11311 0))(
  ( (ListLongMap!11312 (toList!5671 List!18440)) )
))
(declare-fun contains!4682 (ListLongMap!11311 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2901 (array!54292 array!54294 (_ BitVec 32) (_ BitVec 32) V!30491 V!30491 (_ BitVec 32) Int) ListLongMap!11311)

(assert (=> b!913018 (= res!616024 (contains!4682 (getCurrentListMap!2901 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!913019 () Bool)

(assert (=> b!913019 (= e!512139 (not (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26556 _keys!1386)))))))

(declare-fun arrayContainsKey!0 (array!54292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!913019 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30883 0))(
  ( (Unit!30884) )
))
(declare-fun lt!410686 () Unit!30883)

(declare-fun lemmaKeyInListMapIsInArray!287 (array!54292 array!54294 (_ BitVec 32) (_ BitVec 32) V!30491 V!30491 (_ BitVec 64) Int) Unit!30883)

(assert (=> b!913019 (= lt!410686 (lemmaKeyInListMapIsInArray!287 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!913020 () Bool)

(declare-fun res!616020 () Bool)

(assert (=> b!913020 (=> (not res!616020) (not e!512139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54292 (_ BitVec 32)) Bool)

(assert (=> b!913020 (= res!616020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30445 () Bool)

(declare-fun tp!58459 () Bool)

(assert (=> mapNonEmpty!30445 (= mapRes!30445 (and tp!58459 e!512140))))

(declare-fun mapKey!30445 () (_ BitVec 32))

(declare-fun mapRest!30445 () (Array (_ BitVec 32) ValueCell!9091))

(declare-fun mapValue!30445 () ValueCell!9091)

(assert (=> mapNonEmpty!30445 (= (arr!26097 _values!1152) (store mapRest!30445 mapKey!30445 mapValue!30445))))

(declare-fun b!913021 () Bool)

(declare-fun res!616022 () Bool)

(assert (=> b!913021 (=> (not res!616022) (not e!512139))))

(assert (=> b!913021 (= res!616022 (and (= (select (arr!26096 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!913022 () Bool)

(assert (=> b!913022 (= e!512141 (and e!512137 mapRes!30445))))

(declare-fun condMapEmpty!30445 () Bool)

(declare-fun mapDefault!30445 () ValueCell!9091)

