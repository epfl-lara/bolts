; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78036 () Bool)

(assert start!78036)

(declare-fun b_free!16535 () Bool)

(declare-fun b_next!16535 () Bool)

(assert (=> start!78036 (= b_free!16535 (not b_next!16535))))

(declare-fun tp!57876 () Bool)

(declare-fun b_and!27125 () Bool)

(assert (=> start!78036 (= tp!57876 b_and!27125)))

(declare-fun b!910482 () Bool)

(declare-fun res!614485 () Bool)

(declare-fun e!510545 () Bool)

(assert (=> b!910482 (=> (not res!614485) (not e!510545))))

(declare-datatypes ((V!30235 0))(
  ( (V!30236 (val!9527 Int)) )
))
(declare-datatypes ((ValueCell!8995 0))(
  ( (ValueCellFull!8995 (v!12036 V!30235)) (EmptyCell!8995) )
))
(declare-datatypes ((array!53918 0))(
  ( (array!53919 (arr!25911 (Array (_ BitVec 32) ValueCell!8995)) (size!26371 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53918)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-datatypes ((array!53920 0))(
  ( (array!53921 (arr!25912 (Array (_ BitVec 32) (_ BitVec 64))) (size!26372 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53920)

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!910482 (= res!614485 (and (= (size!26371 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26372 _keys!1386) (size!26371 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30151 () Bool)

(declare-fun mapRes!30151 () Bool)

(declare-fun tp!57877 () Bool)

(declare-fun e!510544 () Bool)

(assert (=> mapNonEmpty!30151 (= mapRes!30151 (and tp!57877 e!510544))))

(declare-fun mapRest!30151 () (Array (_ BitVec 32) ValueCell!8995))

(declare-fun mapValue!30151 () ValueCell!8995)

(declare-fun mapKey!30151 () (_ BitVec 32))

(assert (=> mapNonEmpty!30151 (= (arr!25911 _values!1152) (store mapRest!30151 mapKey!30151 mapValue!30151))))

(declare-fun b!910483 () Bool)

(declare-fun res!614487 () Bool)

(assert (=> b!910483 (=> (not res!614487) (not e!510545))))

(declare-datatypes ((List!18303 0))(
  ( (Nil!18300) (Cons!18299 (h!19445 (_ BitVec 64)) (t!25896 List!18303)) )
))
(declare-fun arrayNoDuplicates!0 (array!53920 (_ BitVec 32) List!18303) Bool)

(assert (=> b!910483 (= res!614487 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18300))))

(declare-fun b!910484 () Bool)

(assert (=> b!910484 (= e!510545 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30235)

(declare-fun lt!410230 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30235)

(declare-datatypes ((tuple2!12452 0))(
  ( (tuple2!12453 (_1!6236 (_ BitVec 64)) (_2!6236 V!30235)) )
))
(declare-datatypes ((List!18304 0))(
  ( (Nil!18301) (Cons!18300 (h!19446 tuple2!12452) (t!25897 List!18304)) )
))
(declare-datatypes ((ListLongMap!11163 0))(
  ( (ListLongMap!11164 (toList!5597 List!18304)) )
))
(declare-fun contains!4606 (ListLongMap!11163 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2827 (array!53920 array!53918 (_ BitVec 32) (_ BitVec 32) V!30235 V!30235 (_ BitVec 32) Int) ListLongMap!11163)

(assert (=> b!910484 (= lt!410230 (contains!4606 (getCurrentListMap!2827 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun res!614486 () Bool)

(assert (=> start!78036 (=> (not res!614486) (not e!510545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78036 (= res!614486 (validMask!0 mask!1756))))

(assert (=> start!78036 e!510545))

(declare-fun e!510548 () Bool)

(declare-fun array_inv!20240 (array!53918) Bool)

(assert (=> start!78036 (and (array_inv!20240 _values!1152) e!510548)))

(assert (=> start!78036 tp!57876))

(assert (=> start!78036 true))

(declare-fun tp_is_empty!18953 () Bool)

(assert (=> start!78036 tp_is_empty!18953))

(declare-fun array_inv!20241 (array!53920) Bool)

(assert (=> start!78036 (array_inv!20241 _keys!1386)))

(declare-fun b!910485 () Bool)

(declare-fun res!614488 () Bool)

(assert (=> b!910485 (=> (not res!614488) (not e!510545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53920 (_ BitVec 32)) Bool)

(assert (=> b!910485 (= res!614488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910486 () Bool)

(declare-fun e!510546 () Bool)

(assert (=> b!910486 (= e!510546 tp_is_empty!18953)))

(declare-fun mapIsEmpty!30151 () Bool)

(assert (=> mapIsEmpty!30151 mapRes!30151))

(declare-fun b!910487 () Bool)

(assert (=> b!910487 (= e!510548 (and e!510546 mapRes!30151))))

(declare-fun condMapEmpty!30151 () Bool)

(declare-fun mapDefault!30151 () ValueCell!8995)

