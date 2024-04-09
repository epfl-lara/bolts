; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77744 () Bool)

(assert start!77744)

(declare-fun b_free!16301 () Bool)

(declare-fun b_next!16301 () Bool)

(assert (=> start!77744 (= b_free!16301 (not b_next!16301))))

(declare-fun tp!57165 () Bool)

(declare-fun b_and!26773 () Bool)

(assert (=> start!77744 (= tp!57165 b_and!26773)))

(declare-fun b!906531 () Bool)

(declare-fun res!611921 () Bool)

(declare-fun e!508056 () Bool)

(assert (=> b!906531 (=> (not res!611921) (not e!508056))))

(declare-datatypes ((array!53464 0))(
  ( (array!53465 (arr!25687 (Array (_ BitVec 32) (_ BitVec 64))) (size!26147 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53464)

(declare-datatypes ((List!18132 0))(
  ( (Nil!18129) (Cons!18128 (h!19274 (_ BitVec 64)) (t!25613 List!18132)) )
))
(declare-fun arrayNoDuplicates!0 (array!53464 (_ BitVec 32) List!18132) Bool)

(assert (=> b!906531 (= res!611921 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18129))))

(declare-fun b!906532 () Bool)

(declare-fun res!611915 () Bool)

(assert (=> b!906532 (=> (not res!611915) (not e!508056))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53464 (_ BitVec 32)) Bool)

(assert (=> b!906532 (= res!611915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906533 () Bool)

(declare-fun e!508058 () Bool)

(declare-fun tp_is_empty!18719 () Bool)

(assert (=> b!906533 (= e!508058 tp_is_empty!18719)))

(declare-fun b!906534 () Bool)

(declare-fun e!508057 () Bool)

(declare-fun e!508055 () Bool)

(assert (=> b!906534 (= e!508057 (not e!508055))))

(declare-fun res!611918 () Bool)

(assert (=> b!906534 (=> res!611918 e!508055)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906534 (= res!611918 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26147 _keys!1386))))))

(declare-datatypes ((V!29923 0))(
  ( (V!29924 (val!9410 Int)) )
))
(declare-datatypes ((ValueCell!8878 0))(
  ( (ValueCellFull!8878 (v!11915 V!29923)) (EmptyCell!8878) )
))
(declare-datatypes ((array!53466 0))(
  ( (array!53467 (arr!25688 (Array (_ BitVec 32) ValueCell!8878)) (size!26148 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53466)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408956 () V!29923)

(declare-fun get!13522 (ValueCell!8878 V!29923) V!29923)

(declare-fun dynLambda!1356 (Int (_ BitVec 64)) V!29923)

(assert (=> b!906534 (= lt!408956 (get!13522 (select (arr!25688 _values!1152) i!717) (dynLambda!1356 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906534 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30739 0))(
  ( (Unit!30740) )
))
(declare-fun lt!408954 () Unit!30739)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29923)

(declare-fun zeroValue!1094 () V!29923)

(declare-fun lemmaKeyInListMapIsInArray!229 (array!53464 array!53466 (_ BitVec 32) (_ BitVec 32) V!29923 V!29923 (_ BitVec 64) Int) Unit!30739)

(assert (=> b!906534 (= lt!408954 (lemmaKeyInListMapIsInArray!229 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!906535 () Bool)

(declare-fun res!611913 () Bool)

(assert (=> b!906535 (=> (not res!611913) (not e!508056))))

(assert (=> b!906535 (= res!611913 (and (= (size!26148 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26147 _keys!1386) (size!26148 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906536 () Bool)

(declare-fun res!611914 () Bool)

(declare-fun e!508060 () Bool)

(assert (=> b!906536 (=> res!611914 e!508060)))

(declare-datatypes ((tuple2!12270 0))(
  ( (tuple2!12271 (_1!6145 (_ BitVec 64)) (_2!6145 V!29923)) )
))
(declare-datatypes ((List!18133 0))(
  ( (Nil!18130) (Cons!18129 (h!19275 tuple2!12270) (t!25614 List!18133)) )
))
(declare-datatypes ((ListLongMap!10981 0))(
  ( (ListLongMap!10982 (toList!5506 List!18133)) )
))
(declare-fun lt!408955 () ListLongMap!10981)

(declare-fun apply!482 (ListLongMap!10981 (_ BitVec 64)) V!29923)

(assert (=> b!906536 (= res!611914 (not (= (apply!482 lt!408955 k!1033) lt!408956)))))

(declare-fun b!906537 () Bool)

(assert (=> b!906537 (= e!508056 e!508057)))

(declare-fun res!611922 () Bool)

(assert (=> b!906537 (=> (not res!611922) (not e!508057))))

(declare-fun lt!408953 () ListLongMap!10981)

(declare-fun contains!4516 (ListLongMap!10981 (_ BitVec 64)) Bool)

(assert (=> b!906537 (= res!611922 (contains!4516 lt!408953 k!1033))))

(declare-fun getCurrentListMap!2740 (array!53464 array!53466 (_ BitVec 32) (_ BitVec 32) V!29923 V!29923 (_ BitVec 32) Int) ListLongMap!10981)

(assert (=> b!906537 (= lt!408953 (getCurrentListMap!2740 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906538 () Bool)

(declare-fun e!508059 () Bool)

(declare-fun e!508061 () Bool)

(declare-fun mapRes!29791 () Bool)

(assert (=> b!906538 (= e!508059 (and e!508061 mapRes!29791))))

(declare-fun condMapEmpty!29791 () Bool)

(declare-fun mapDefault!29791 () ValueCell!8878)

