; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77792 () Bool)

(assert start!77792)

(declare-fun b_free!16349 () Bool)

(declare-fun b_next!16349 () Bool)

(assert (=> start!77792 (= b_free!16349 (not b_next!16349))))

(declare-fun tp!57309 () Bool)

(declare-fun b_and!26869 () Bool)

(assert (=> start!77792 (= tp!57309 b_and!26869)))

(declare-fun b!907515 () Bool)

(declare-fun e!508634 () Bool)

(declare-fun e!508636 () Bool)

(assert (=> b!907515 (= e!508634 e!508636)))

(declare-fun res!612637 () Bool)

(assert (=> b!907515 (=> (not res!612637) (not e!508636))))

(declare-datatypes ((V!29987 0))(
  ( (V!29988 (val!9434 Int)) )
))
(declare-datatypes ((tuple2!12312 0))(
  ( (tuple2!12313 (_1!6166 (_ BitVec 64)) (_2!6166 V!29987)) )
))
(declare-datatypes ((List!18172 0))(
  ( (Nil!18169) (Cons!18168 (h!19314 tuple2!12312) (t!25701 List!18172)) )
))
(declare-datatypes ((ListLongMap!11023 0))(
  ( (ListLongMap!11024 (toList!5527 List!18172)) )
))
(declare-fun lt!409312 () ListLongMap!11023)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4535 (ListLongMap!11023 (_ BitVec 64)) Bool)

(assert (=> b!907515 (= res!612637 (contains!4535 lt!409312 k!1033))))

(declare-datatypes ((ValueCell!8902 0))(
  ( (ValueCellFull!8902 (v!11939 V!29987)) (EmptyCell!8902) )
))
(declare-datatypes ((array!53560 0))(
  ( (array!53561 (arr!25735 (Array (_ BitVec 32) ValueCell!8902)) (size!26195 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53560)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29987)

(declare-datatypes ((array!53562 0))(
  ( (array!53563 (arr!25736 (Array (_ BitVec 32) (_ BitVec 64))) (size!26196 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53562)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29987)

(declare-fun getCurrentListMap!2759 (array!53562 array!53560 (_ BitVec 32) (_ BitVec 32) V!29987 V!29987 (_ BitVec 32) Int) ListLongMap!11023)

(assert (=> b!907515 (= lt!409312 (getCurrentListMap!2759 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapNonEmpty!29863 () Bool)

(declare-fun mapRes!29863 () Bool)

(declare-fun tp!57310 () Bool)

(declare-fun e!508635 () Bool)

(assert (=> mapNonEmpty!29863 (= mapRes!29863 (and tp!57310 e!508635))))

(declare-fun mapRest!29863 () (Array (_ BitVec 32) ValueCell!8902))

(declare-fun mapKey!29863 () (_ BitVec 32))

(declare-fun mapValue!29863 () ValueCell!8902)

(assert (=> mapNonEmpty!29863 (= (arr!25735 _values!1152) (store mapRest!29863 mapKey!29863 mapValue!29863))))

(declare-fun mapIsEmpty!29863 () Bool)

(assert (=> mapIsEmpty!29863 mapRes!29863))

(declare-fun b!907516 () Bool)

(declare-fun e!508633 () Bool)

(assert (=> b!907516 (= e!508636 (not e!508633))))

(declare-fun res!612633 () Bool)

(assert (=> b!907516 (=> res!612633 e!508633)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!907516 (= res!612633 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26196 _keys!1386))))))

(declare-fun lt!409314 () V!29987)

(declare-fun get!13556 (ValueCell!8902 V!29987) V!29987)

(declare-fun dynLambda!1374 (Int (_ BitVec 64)) V!29987)

(assert (=> b!907516 (= lt!409314 (get!13556 (select (arr!25735 _values!1152) i!717) (dynLambda!1374 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907516 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30781 0))(
  ( (Unit!30782) )
))
(declare-fun lt!409316 () Unit!30781)

(declare-fun lemmaKeyInListMapIsInArray!247 (array!53562 array!53560 (_ BitVec 32) (_ BitVec 32) V!29987 V!29987 (_ BitVec 64) Int) Unit!30781)

(assert (=> b!907516 (= lt!409316 (lemmaKeyInListMapIsInArray!247 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!907517 () Bool)

(declare-fun e!508630 () Bool)

(assert (=> b!907517 (= e!508633 e!508630)))

(declare-fun res!612638 () Bool)

(assert (=> b!907517 (=> res!612638 e!508630)))

(declare-fun lt!409313 () ListLongMap!11023)

(assert (=> b!907517 (= res!612638 (not (contains!4535 lt!409313 k!1033)))))

(assert (=> b!907517 (= lt!409313 (getCurrentListMap!2759 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907518 () Bool)

(assert (=> b!907518 (= e!508630 (or (bvsge #b00000000000000000000000000000000 (size!26196 _keys!1386)) (bvslt (size!26196 _keys!1386) #b01111111111111111111111111111111)))))

(declare-fun apply!503 (ListLongMap!11023 (_ BitVec 64)) V!29987)

(assert (=> b!907518 (= (apply!503 lt!409312 k!1033) lt!409314)))

(declare-fun lt!409315 () Unit!30781)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!49 (array!53562 array!53560 (_ BitVec 32) (_ BitVec 32) V!29987 V!29987 (_ BitVec 64) V!29987 (_ BitVec 32) Int) Unit!30781)

(assert (=> b!907518 (= lt!409315 (lemmaListMapApplyFromThenApplyFromZero!49 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409314 i!717 defaultEntry!1160))))

(declare-fun b!907519 () Bool)

(declare-fun e!508637 () Bool)

(declare-fun e!508631 () Bool)

(assert (=> b!907519 (= e!508637 (and e!508631 mapRes!29863))))

(declare-fun condMapEmpty!29863 () Bool)

(declare-fun mapDefault!29863 () ValueCell!8902)

