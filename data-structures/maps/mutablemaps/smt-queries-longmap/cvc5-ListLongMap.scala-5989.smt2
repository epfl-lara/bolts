; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77788 () Bool)

(assert start!77788)

(declare-fun b_free!16345 () Bool)

(declare-fun b_next!16345 () Bool)

(assert (=> start!77788 (= b_free!16345 (not b_next!16345))))

(declare-fun tp!57297 () Bool)

(declare-fun b_and!26861 () Bool)

(assert (=> start!77788 (= tp!57297 b_and!26861)))

(declare-fun b!907433 () Bool)

(declare-fun res!612578 () Bool)

(declare-fun e!508584 () Bool)

(assert (=> b!907433 (=> (not res!612578) (not e!508584))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((array!53552 0))(
  ( (array!53553 (arr!25731 (Array (_ BitVec 32) (_ BitVec 64))) (size!26191 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53552)

(assert (=> b!907433 (= res!612578 (and (= (select (arr!25731 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907434 () Bool)

(declare-fun e!508589 () Bool)

(assert (=> b!907434 (= e!508589 e!508584)))

(declare-fun res!612577 () Bool)

(assert (=> b!907434 (=> (not res!612577) (not e!508584))))

(declare-datatypes ((V!29983 0))(
  ( (V!29984 (val!9432 Int)) )
))
(declare-datatypes ((tuple2!12308 0))(
  ( (tuple2!12309 (_1!6164 (_ BitVec 64)) (_2!6164 V!29983)) )
))
(declare-datatypes ((List!18168 0))(
  ( (Nil!18165) (Cons!18164 (h!19310 tuple2!12308) (t!25693 List!18168)) )
))
(declare-datatypes ((ListLongMap!11019 0))(
  ( (ListLongMap!11020 (toList!5525 List!18168)) )
))
(declare-fun lt!409285 () ListLongMap!11019)

(declare-fun contains!4533 (ListLongMap!11019 (_ BitVec 64)) Bool)

(assert (=> b!907434 (= res!612577 (contains!4533 lt!409285 k!1033))))

(declare-datatypes ((ValueCell!8900 0))(
  ( (ValueCellFull!8900 (v!11937 V!29983)) (EmptyCell!8900) )
))
(declare-datatypes ((array!53554 0))(
  ( (array!53555 (arr!25732 (Array (_ BitVec 32) ValueCell!8900)) (size!26192 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53554)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29983)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29983)

(declare-fun getCurrentListMap!2757 (array!53552 array!53554 (_ BitVec 32) (_ BitVec 32) V!29983 V!29983 (_ BitVec 32) Int) ListLongMap!11019)

(assert (=> b!907434 (= lt!409285 (getCurrentListMap!2757 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907435 () Bool)

(declare-fun e!508582 () Bool)

(assert (=> b!907435 (= e!508582 (or (bvsge #b00000000000000000000000000000000 (size!26191 _keys!1386)) (bvslt (size!26191 _keys!1386) #b01111111111111111111111111111111)))))

(declare-fun lt!409284 () V!29983)

(declare-fun apply!501 (ListLongMap!11019 (_ BitVec 64)) V!29983)

(assert (=> b!907435 (= (apply!501 lt!409285 k!1033) lt!409284)))

(declare-datatypes ((Unit!30777 0))(
  ( (Unit!30778) )
))
(declare-fun lt!409283 () Unit!30777)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!47 (array!53552 array!53554 (_ BitVec 32) (_ BitVec 32) V!29983 V!29983 (_ BitVec 64) V!29983 (_ BitVec 32) Int) Unit!30777)

(assert (=> b!907435 (= lt!409283 (lemmaListMapApplyFromThenApplyFromZero!47 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409284 i!717 defaultEntry!1160))))

(declare-fun res!612579 () Bool)

(assert (=> start!77788 (=> (not res!612579) (not e!508589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77788 (= res!612579 (validMask!0 mask!1756))))

(assert (=> start!77788 e!508589))

(declare-fun e!508588 () Bool)

(declare-fun array_inv!20124 (array!53554) Bool)

(assert (=> start!77788 (and (array_inv!20124 _values!1152) e!508588)))

(assert (=> start!77788 tp!57297))

(assert (=> start!77788 true))

(declare-fun tp_is_empty!18763 () Bool)

(assert (=> start!77788 tp_is_empty!18763))

(declare-fun array_inv!20125 (array!53552) Bool)

(assert (=> start!77788 (array_inv!20125 _keys!1386)))

(declare-fun b!907436 () Bool)

(declare-fun res!612582 () Bool)

(assert (=> b!907436 (=> (not res!612582) (not e!508589))))

(declare-datatypes ((List!18169 0))(
  ( (Nil!18166) (Cons!18165 (h!19311 (_ BitVec 64)) (t!25694 List!18169)) )
))
(declare-fun arrayNoDuplicates!0 (array!53552 (_ BitVec 32) List!18169) Bool)

(assert (=> b!907436 (= res!612582 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18166))))

(declare-fun b!907437 () Bool)

(declare-fun e!508586 () Bool)

(assert (=> b!907437 (= e!508586 tp_is_empty!18763)))

(declare-fun b!907438 () Bool)

(declare-fun res!612581 () Bool)

(assert (=> b!907438 (=> res!612581 e!508582)))

(declare-fun lt!409286 () ListLongMap!11019)

(assert (=> b!907438 (= res!612581 (not (= (apply!501 lt!409286 k!1033) lt!409284)))))

(declare-fun b!907439 () Bool)

(declare-fun e!508585 () Bool)

(assert (=> b!907439 (= e!508585 e!508582)))

(declare-fun res!612573 () Bool)

(assert (=> b!907439 (=> res!612573 e!508582)))

(assert (=> b!907439 (= res!612573 (not (contains!4533 lt!409286 k!1033)))))

(assert (=> b!907439 (= lt!409286 (getCurrentListMap!2757 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907440 () Bool)

(declare-fun mapRes!29857 () Bool)

(assert (=> b!907440 (= e!508588 (and e!508586 mapRes!29857))))

(declare-fun condMapEmpty!29857 () Bool)

(declare-fun mapDefault!29857 () ValueCell!8900)

