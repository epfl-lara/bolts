; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73884 () Bool)

(assert start!73884)

(declare-fun b_free!14771 () Bool)

(declare-fun b_next!14771 () Bool)

(assert (=> start!73884 (= b_free!14771 (not b_next!14771))))

(declare-fun tp!51817 () Bool)

(declare-fun b_and!24539 () Bool)

(assert (=> start!73884 (= tp!51817 b_and!24539)))

(declare-fun b!867375 () Bool)

(declare-datatypes ((Unit!29735 0))(
  ( (Unit!29736) )
))
(declare-fun e!483181 () Unit!29735)

(declare-fun Unit!29737 () Unit!29735)

(assert (=> b!867375 (= e!483181 Unit!29737)))

(declare-fun lt!394100 () Unit!29735)

(declare-datatypes ((array!49954 0))(
  ( (array!49955 (arr!24004 (Array (_ BitVec 32) (_ BitVec 64))) (size!24445 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49954)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49954 (_ BitVec 32) (_ BitVec 32)) Unit!29735)

(assert (=> b!867375 (= lt!394100 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17146 0))(
  ( (Nil!17143) (Cons!17142 (h!18273 (_ BitVec 64)) (t!24191 List!17146)) )
))
(declare-fun arrayNoDuplicates!0 (array!49954 (_ BitVec 32) List!17146) Bool)

(assert (=> b!867375 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17143)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!394101 () Unit!29735)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49954 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29735)

(assert (=> b!867375 (= lt!394101 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!867375 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!394099 () Unit!29735)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49954 (_ BitVec 64) (_ BitVec 32) List!17146) Unit!29735)

(assert (=> b!867375 (= lt!394099 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17143))))

(assert (=> b!867375 false))

(declare-fun b!867376 () Bool)

(declare-fun e!483187 () Bool)

(declare-fun tp_is_empty!16907 () Bool)

(assert (=> b!867376 (= e!483187 tp_is_empty!16907)))

(declare-fun b!867377 () Bool)

(declare-fun res!589438 () Bool)

(declare-fun e!483189 () Bool)

(assert (=> b!867377 (=> (not res!589438) (not e!483189))))

(assert (=> b!867377 (= res!589438 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24445 _keys!868))))))

(declare-fun b!867378 () Bool)

(declare-fun e!483186 () Bool)

(assert (=> b!867378 (= e!483186 true)))

(declare-datatypes ((V!27589 0))(
  ( (V!27590 (val!8501 Int)) )
))
(declare-datatypes ((tuple2!11284 0))(
  ( (tuple2!11285 (_1!5652 (_ BitVec 64)) (_2!5652 V!27589)) )
))
(declare-fun lt!394112 () tuple2!11284)

(declare-datatypes ((List!17147 0))(
  ( (Nil!17144) (Cons!17143 (h!18274 tuple2!11284) (t!24192 List!17147)) )
))
(declare-datatypes ((ListLongMap!10067 0))(
  ( (ListLongMap!10068 (toList!5049 List!17147)) )
))
(declare-fun lt!394105 () ListLongMap!10067)

(declare-fun lt!394102 () ListLongMap!10067)

(declare-fun lt!394107 () tuple2!11284)

(declare-fun +!2343 (ListLongMap!10067 tuple2!11284) ListLongMap!10067)

(assert (=> b!867378 (= lt!394105 (+!2343 (+!2343 lt!394102 lt!394107) lt!394112))))

(declare-fun v!557 () V!27589)

(declare-fun lt!394108 () Unit!29735)

(declare-fun lt!394098 () V!27589)

(declare-fun addCommutativeForDiffKeys!544 (ListLongMap!10067 (_ BitVec 64) V!27589 (_ BitVec 64) V!27589) Unit!29735)

(assert (=> b!867378 (= lt!394108 (addCommutativeForDiffKeys!544 lt!394102 k!854 v!557 (select (arr!24004 _keys!868) from!1053) lt!394098))))

(declare-fun b!867379 () Bool)

(declare-fun res!589439 () Bool)

(assert (=> b!867379 (=> (not res!589439) (not e!483189))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867379 (= res!589439 (validMask!0 mask!1196))))

(declare-fun b!867380 () Bool)

(declare-fun res!589436 () Bool)

(assert (=> b!867380 (=> (not res!589436) (not e!483189))))

(assert (=> b!867380 (= res!589436 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17143))))

(declare-fun b!867381 () Bool)

(declare-fun e!483184 () Bool)

(declare-fun e!483183 () Bool)

(declare-fun mapRes!26960 () Bool)

(assert (=> b!867381 (= e!483184 (and e!483183 mapRes!26960))))

(declare-fun condMapEmpty!26960 () Bool)

(declare-datatypes ((ValueCell!8014 0))(
  ( (ValueCellFull!8014 (v!10922 V!27589)) (EmptyCell!8014) )
))
(declare-datatypes ((array!49956 0))(
  ( (array!49957 (arr!24005 (Array (_ BitVec 32) ValueCell!8014)) (size!24446 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49956)

(declare-fun mapDefault!26960 () ValueCell!8014)

