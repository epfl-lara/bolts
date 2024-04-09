; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77780 () Bool)

(assert start!77780)

(declare-fun b_free!16337 () Bool)

(declare-fun b_next!16337 () Bool)

(assert (=> start!77780 (= b_free!16337 (not b_next!16337))))

(declare-fun tp!57273 () Bool)

(declare-fun b_and!26845 () Bool)

(assert (=> start!77780 (= tp!57273 b_and!26845)))

(declare-fun b!907269 () Bool)

(declare-fun e!508492 () Bool)

(declare-fun e!508486 () Bool)

(assert (=> b!907269 (= e!508492 (not e!508486))))

(declare-fun res!612456 () Bool)

(assert (=> b!907269 (=> res!612456 e!508486)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53536 0))(
  ( (array!53537 (arr!25723 (Array (_ BitVec 32) (_ BitVec 64))) (size!26183 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53536)

(assert (=> b!907269 (= res!612456 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26183 _keys!1386))))))

(declare-datatypes ((V!29971 0))(
  ( (V!29972 (val!9428 Int)) )
))
(declare-datatypes ((ValueCell!8896 0))(
  ( (ValueCellFull!8896 (v!11933 V!29971)) (EmptyCell!8896) )
))
(declare-datatypes ((array!53538 0))(
  ( (array!53539 (arr!25724 (Array (_ BitVec 32) ValueCell!8896)) (size!26184 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53538)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409223 () V!29971)

(declare-fun get!13547 (ValueCell!8896 V!29971) V!29971)

(declare-fun dynLambda!1369 (Int (_ BitVec 64)) V!29971)

(assert (=> b!907269 (= lt!409223 (get!13547 (select (arr!25724 _values!1152) i!717) (dynLambda!1369 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907269 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29971)

(declare-datatypes ((Unit!30769 0))(
  ( (Unit!30770) )
))
(declare-fun lt!409226 () Unit!30769)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29971)

(declare-fun lemmaKeyInListMapIsInArray!242 (array!53536 array!53538 (_ BitVec 32) (_ BitVec 32) V!29971 V!29971 (_ BitVec 64) Int) Unit!30769)

(assert (=> b!907269 (= lt!409226 (lemmaKeyInListMapIsInArray!242 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!907270 () Bool)

(declare-fun e!508487 () Bool)

(declare-fun tp_is_empty!18755 () Bool)

(assert (=> b!907270 (= e!508487 tp_is_empty!18755)))

(declare-fun b!907271 () Bool)

(declare-fun res!612453 () Bool)

(assert (=> b!907271 (=> (not res!612453) (not e!508492))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907271 (= res!612453 (inRange!0 i!717 mask!1756))))

(declare-fun b!907272 () Bool)

(declare-fun res!612455 () Bool)

(assert (=> b!907272 (=> (not res!612455) (not e!508492))))

(assert (=> b!907272 (= res!612455 (and (= (select (arr!25723 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907273 () Bool)

(declare-fun e!508490 () Bool)

(assert (=> b!907273 (= e!508490 true)))

(declare-datatypes ((tuple2!12300 0))(
  ( (tuple2!12301 (_1!6160 (_ BitVec 64)) (_2!6160 V!29971)) )
))
(declare-datatypes ((List!18160 0))(
  ( (Nil!18157) (Cons!18156 (h!19302 tuple2!12300) (t!25677 List!18160)) )
))
(declare-datatypes ((ListLongMap!11011 0))(
  ( (ListLongMap!11012 (toList!5521 List!18160)) )
))
(declare-fun lt!409225 () ListLongMap!11011)

(declare-fun apply!497 (ListLongMap!11011 (_ BitVec 64)) V!29971)

(assert (=> b!907273 (= (apply!497 lt!409225 k!1033) lt!409223)))

(declare-fun lt!409222 () Unit!30769)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!43 (array!53536 array!53538 (_ BitVec 32) (_ BitVec 32) V!29971 V!29971 (_ BitVec 64) V!29971 (_ BitVec 32) Int) Unit!30769)

(assert (=> b!907273 (= lt!409222 (lemmaListMapApplyFromThenApplyFromZero!43 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409223 i!717 defaultEntry!1160))))

(declare-fun res!612458 () Bool)

(declare-fun e!508488 () Bool)

(assert (=> start!77780 (=> (not res!612458) (not e!508488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77780 (= res!612458 (validMask!0 mask!1756))))

(assert (=> start!77780 e!508488))

(declare-fun e!508489 () Bool)

(declare-fun array_inv!20116 (array!53538) Bool)

(assert (=> start!77780 (and (array_inv!20116 _values!1152) e!508489)))

(assert (=> start!77780 tp!57273))

(assert (=> start!77780 true))

(assert (=> start!77780 tp_is_empty!18755))

(declare-fun array_inv!20117 (array!53536) Bool)

(assert (=> start!77780 (array_inv!20117 _keys!1386)))

(declare-fun b!907274 () Bool)

(assert (=> b!907274 (= e!508488 e!508492)))

(declare-fun res!612461 () Bool)

(assert (=> b!907274 (=> (not res!612461) (not e!508492))))

(declare-fun contains!4529 (ListLongMap!11011 (_ BitVec 64)) Bool)

(assert (=> b!907274 (= res!612461 (contains!4529 lt!409225 k!1033))))

(declare-fun getCurrentListMap!2753 (array!53536 array!53538 (_ BitVec 32) (_ BitVec 32) V!29971 V!29971 (_ BitVec 32) Int) ListLongMap!11011)

(assert (=> b!907274 (= lt!409225 (getCurrentListMap!2753 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907275 () Bool)

(declare-fun res!612457 () Bool)

(assert (=> b!907275 (=> res!612457 e!508490)))

(declare-fun lt!409224 () ListLongMap!11011)

(assert (=> b!907275 (= res!612457 (not (= (apply!497 lt!409224 k!1033) lt!409223)))))

(declare-fun b!907276 () Bool)

(declare-fun res!612460 () Bool)

(assert (=> b!907276 (=> (not res!612460) (not e!508488))))

(assert (=> b!907276 (= res!612460 (and (= (size!26184 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26183 _keys!1386) (size!26184 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907277 () Bool)

(declare-fun res!612459 () Bool)

(assert (=> b!907277 (=> (not res!612459) (not e!508488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53536 (_ BitVec 32)) Bool)

(assert (=> b!907277 (= res!612459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907278 () Bool)

(assert (=> b!907278 (= e!508486 e!508490)))

(declare-fun res!612462 () Bool)

(assert (=> b!907278 (=> res!612462 e!508490)))

(assert (=> b!907278 (= res!612462 (not (contains!4529 lt!409224 k!1033)))))

(assert (=> b!907278 (= lt!409224 (getCurrentListMap!2753 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907279 () Bool)

(declare-fun e!508493 () Bool)

(assert (=> b!907279 (= e!508493 tp_is_empty!18755)))

(declare-fun mapIsEmpty!29845 () Bool)

(declare-fun mapRes!29845 () Bool)

(assert (=> mapIsEmpty!29845 mapRes!29845))

(declare-fun mapNonEmpty!29845 () Bool)

(declare-fun tp!57274 () Bool)

(assert (=> mapNonEmpty!29845 (= mapRes!29845 (and tp!57274 e!508493))))

(declare-fun mapValue!29845 () ValueCell!8896)

(declare-fun mapKey!29845 () (_ BitVec 32))

(declare-fun mapRest!29845 () (Array (_ BitVec 32) ValueCell!8896))

(assert (=> mapNonEmpty!29845 (= (arr!25724 _values!1152) (store mapRest!29845 mapKey!29845 mapValue!29845))))

(declare-fun b!907280 () Bool)

(declare-fun res!612454 () Bool)

(assert (=> b!907280 (=> (not res!612454) (not e!508488))))

(declare-datatypes ((List!18161 0))(
  ( (Nil!18158) (Cons!18157 (h!19303 (_ BitVec 64)) (t!25678 List!18161)) )
))
(declare-fun arrayNoDuplicates!0 (array!53536 (_ BitVec 32) List!18161) Bool)

(assert (=> b!907280 (= res!612454 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18158))))

(declare-fun b!907281 () Bool)

(assert (=> b!907281 (= e!508489 (and e!508487 mapRes!29845))))

(declare-fun condMapEmpty!29845 () Bool)

(declare-fun mapDefault!29845 () ValueCell!8896)

