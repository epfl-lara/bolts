; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78026 () Bool)

(assert start!78026)

(declare-fun b_free!16525 () Bool)

(declare-fun b_next!16525 () Bool)

(assert (=> start!78026 (= b_free!16525 (not b_next!16525))))

(declare-fun tp!57847 () Bool)

(declare-fun b_and!27115 () Bool)

(assert (=> start!78026 (= tp!57847 b_and!27115)))

(declare-fun b!910377 () Bool)

(declare-fun res!614425 () Bool)

(declare-fun e!510473 () Bool)

(assert (=> b!910377 (=> (not res!614425) (not e!510473))))

(declare-datatypes ((array!53898 0))(
  ( (array!53899 (arr!25901 (Array (_ BitVec 32) (_ BitVec 64))) (size!26361 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53898)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53898 (_ BitVec 32)) Bool)

(assert (=> b!910377 (= res!614425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910378 () Bool)

(assert (=> b!910378 (= e!510473 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410215 () Bool)

(declare-datatypes ((V!30223 0))(
  ( (V!30224 (val!9522 Int)) )
))
(declare-fun zeroValue!1094 () V!30223)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((ValueCell!8990 0))(
  ( (ValueCellFull!8990 (v!12031 V!30223)) (EmptyCell!8990) )
))
(declare-datatypes ((array!53900 0))(
  ( (array!53901 (arr!25902 (Array (_ BitVec 32) ValueCell!8990)) (size!26362 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53900)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30223)

(declare-datatypes ((tuple2!12442 0))(
  ( (tuple2!12443 (_1!6231 (_ BitVec 64)) (_2!6231 V!30223)) )
))
(declare-datatypes ((List!18295 0))(
  ( (Nil!18292) (Cons!18291 (h!19437 tuple2!12442) (t!25888 List!18295)) )
))
(declare-datatypes ((ListLongMap!11153 0))(
  ( (ListLongMap!11154 (toList!5592 List!18295)) )
))
(declare-fun contains!4601 (ListLongMap!11153 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2822 (array!53898 array!53900 (_ BitVec 32) (_ BitVec 32) V!30223 V!30223 (_ BitVec 32) Int) ListLongMap!11153)

(assert (=> b!910378 (= lt!410215 (contains!4601 (getCurrentListMap!2822 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapNonEmpty!30136 () Bool)

(declare-fun mapRes!30136 () Bool)

(declare-fun tp!57846 () Bool)

(declare-fun e!510471 () Bool)

(assert (=> mapNonEmpty!30136 (= mapRes!30136 (and tp!57846 e!510471))))

(declare-fun mapKey!30136 () (_ BitVec 32))

(declare-fun mapRest!30136 () (Array (_ BitVec 32) ValueCell!8990))

(declare-fun mapValue!30136 () ValueCell!8990)

(assert (=> mapNonEmpty!30136 (= (arr!25902 _values!1152) (store mapRest!30136 mapKey!30136 mapValue!30136))))

(declare-fun b!910379 () Bool)

(declare-fun res!614428 () Bool)

(assert (=> b!910379 (=> (not res!614428) (not e!510473))))

(assert (=> b!910379 (= res!614428 (and (= (size!26362 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26361 _keys!1386) (size!26362 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910380 () Bool)

(declare-fun tp_is_empty!18943 () Bool)

(assert (=> b!910380 (= e!510471 tp_is_empty!18943)))

(declare-fun b!910381 () Bool)

(declare-fun e!510470 () Bool)

(assert (=> b!910381 (= e!510470 tp_is_empty!18943)))

(declare-fun b!910382 () Bool)

(declare-fun e!510469 () Bool)

(assert (=> b!910382 (= e!510469 (and e!510470 mapRes!30136))))

(declare-fun condMapEmpty!30136 () Bool)

(declare-fun mapDefault!30136 () ValueCell!8990)

