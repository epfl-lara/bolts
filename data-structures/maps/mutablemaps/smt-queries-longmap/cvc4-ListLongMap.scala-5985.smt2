; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77768 () Bool)

(assert start!77768)

(declare-fun b_free!16325 () Bool)

(declare-fun b_next!16325 () Bool)

(assert (=> start!77768 (= b_free!16325 (not b_next!16325))))

(declare-fun tp!57237 () Bool)

(declare-fun b_and!26821 () Bool)

(assert (=> start!77768 (= tp!57237 b_and!26821)))

(declare-fun b!907023 () Bool)

(declare-fun res!612273 () Bool)

(declare-fun e!508347 () Bool)

(assert (=> b!907023 (=> res!612273 e!508347)))

(declare-datatypes ((V!29955 0))(
  ( (V!29956 (val!9422 Int)) )
))
(declare-fun lt!409133 () V!29955)

(declare-datatypes ((tuple2!12288 0))(
  ( (tuple2!12289 (_1!6154 (_ BitVec 64)) (_2!6154 V!29955)) )
))
(declare-datatypes ((List!18150 0))(
  ( (Nil!18147) (Cons!18146 (h!19292 tuple2!12288) (t!25655 List!18150)) )
))
(declare-datatypes ((ListLongMap!10999 0))(
  ( (ListLongMap!11000 (toList!5515 List!18150)) )
))
(declare-fun lt!409132 () ListLongMap!10999)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun apply!491 (ListLongMap!10999 (_ BitVec 64)) V!29955)

(assert (=> b!907023 (= res!612273 (not (= (apply!491 lt!409132 k!1033) lt!409133)))))

(declare-fun b!907024 () Bool)

(declare-fun e!508343 () Bool)

(declare-fun tp_is_empty!18743 () Bool)

(assert (=> b!907024 (= e!508343 tp_is_empty!18743)))

(declare-fun b!907025 () Bool)

(declare-fun res!612274 () Bool)

(declare-fun e!508344 () Bool)

(assert (=> b!907025 (=> (not res!612274) (not e!508344))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907025 (= res!612274 (inRange!0 i!717 mask!1756))))

(declare-fun b!907026 () Bool)

(declare-fun e!508346 () Bool)

(assert (=> b!907026 (= e!508346 tp_is_empty!18743)))

(declare-fun b!907027 () Bool)

(declare-fun e!508348 () Bool)

(assert (=> b!907027 (= e!508348 e!508344)))

(declare-fun res!612278 () Bool)

(assert (=> b!907027 (=> (not res!612278) (not e!508344))))

(declare-fun lt!409135 () ListLongMap!10999)

(declare-fun contains!4525 (ListLongMap!10999 (_ BitVec 64)) Bool)

(assert (=> b!907027 (= res!612278 (contains!4525 lt!409135 k!1033))))

(declare-datatypes ((ValueCell!8890 0))(
  ( (ValueCellFull!8890 (v!11927 V!29955)) (EmptyCell!8890) )
))
(declare-datatypes ((array!53512 0))(
  ( (array!53513 (arr!25711 (Array (_ BitVec 32) ValueCell!8890)) (size!26171 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53512)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29955)

(declare-datatypes ((array!53514 0))(
  ( (array!53515 (arr!25712 (Array (_ BitVec 32) (_ BitVec 64))) (size!26172 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53514)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29955)

(declare-fun getCurrentListMap!2749 (array!53514 array!53512 (_ BitVec 32) (_ BitVec 32) V!29955 V!29955 (_ BitVec 32) Int) ListLongMap!10999)

(assert (=> b!907027 (= lt!409135 (getCurrentListMap!2749 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907028 () Bool)

(declare-fun res!612280 () Bool)

(assert (=> b!907028 (=> (not res!612280) (not e!508348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53514 (_ BitVec 32)) Bool)

(assert (=> b!907028 (= res!612280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907029 () Bool)

(assert (=> b!907029 (= e!508347 true)))

(assert (=> b!907029 (= (apply!491 lt!409135 k!1033) lt!409133)))

(declare-datatypes ((Unit!30757 0))(
  ( (Unit!30758) )
))
(declare-fun lt!409136 () Unit!30757)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!38 (array!53514 array!53512 (_ BitVec 32) (_ BitVec 32) V!29955 V!29955 (_ BitVec 64) V!29955 (_ BitVec 32) Int) Unit!30757)

(assert (=> b!907029 (= lt!409136 (lemmaListMapApplyFromThenApplyFromZero!38 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409133 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29827 () Bool)

(declare-fun mapRes!29827 () Bool)

(assert (=> mapIsEmpty!29827 mapRes!29827))

(declare-fun b!907030 () Bool)

(declare-fun res!612281 () Bool)

(assert (=> b!907030 (=> (not res!612281) (not e!508344))))

(assert (=> b!907030 (= res!612281 (and (= (select (arr!25712 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907031 () Bool)

(declare-fun e!508342 () Bool)

(assert (=> b!907031 (= e!508344 (not e!508342))))

(declare-fun res!612276 () Bool)

(assert (=> b!907031 (=> res!612276 e!508342)))

(assert (=> b!907031 (= res!612276 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26172 _keys!1386))))))

(declare-fun get!13538 (ValueCell!8890 V!29955) V!29955)

(declare-fun dynLambda!1364 (Int (_ BitVec 64)) V!29955)

(assert (=> b!907031 (= lt!409133 (get!13538 (select (arr!25711 _values!1152) i!717) (dynLambda!1364 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907031 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409134 () Unit!30757)

(declare-fun lemmaKeyInListMapIsInArray!237 (array!53514 array!53512 (_ BitVec 32) (_ BitVec 32) V!29955 V!29955 (_ BitVec 64) Int) Unit!30757)

(assert (=> b!907031 (= lt!409134 (lemmaKeyInListMapIsInArray!237 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!29827 () Bool)

(declare-fun tp!57238 () Bool)

(assert (=> mapNonEmpty!29827 (= mapRes!29827 (and tp!57238 e!508346))))

(declare-fun mapKey!29827 () (_ BitVec 32))

(declare-fun mapValue!29827 () ValueCell!8890)

(declare-fun mapRest!29827 () (Array (_ BitVec 32) ValueCell!8890))

(assert (=> mapNonEmpty!29827 (= (arr!25711 _values!1152) (store mapRest!29827 mapKey!29827 mapValue!29827))))

(declare-fun b!907032 () Bool)

(declare-fun res!612275 () Bool)

(assert (=> b!907032 (=> (not res!612275) (not e!508348))))

(declare-datatypes ((List!18151 0))(
  ( (Nil!18148) (Cons!18147 (h!19293 (_ BitVec 64)) (t!25656 List!18151)) )
))
(declare-fun arrayNoDuplicates!0 (array!53514 (_ BitVec 32) List!18151) Bool)

(assert (=> b!907032 (= res!612275 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18148))))

(declare-fun res!612282 () Bool)

(assert (=> start!77768 (=> (not res!612282) (not e!508348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77768 (= res!612282 (validMask!0 mask!1756))))

(assert (=> start!77768 e!508348))

(declare-fun e!508349 () Bool)

(declare-fun array_inv!20108 (array!53512) Bool)

(assert (=> start!77768 (and (array_inv!20108 _values!1152) e!508349)))

(assert (=> start!77768 tp!57237))

(assert (=> start!77768 true))

(assert (=> start!77768 tp_is_empty!18743))

(declare-fun array_inv!20109 (array!53514) Bool)

(assert (=> start!77768 (array_inv!20109 _keys!1386)))

(declare-fun b!907033 () Bool)

(assert (=> b!907033 (= e!508342 e!508347)))

(declare-fun res!612279 () Bool)

(assert (=> b!907033 (=> res!612279 e!508347)))

(assert (=> b!907033 (= res!612279 (not (contains!4525 lt!409132 k!1033)))))

(assert (=> b!907033 (= lt!409132 (getCurrentListMap!2749 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907034 () Bool)

(declare-fun res!612277 () Bool)

(assert (=> b!907034 (=> (not res!612277) (not e!508348))))

(assert (=> b!907034 (= res!612277 (and (= (size!26171 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26172 _keys!1386) (size!26171 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907035 () Bool)

(assert (=> b!907035 (= e!508349 (and e!508343 mapRes!29827))))

(declare-fun condMapEmpty!29827 () Bool)

(declare-fun mapDefault!29827 () ValueCell!8890)

