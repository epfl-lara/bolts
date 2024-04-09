; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77786 () Bool)

(assert start!77786)

(declare-fun b_free!16343 () Bool)

(declare-fun b_next!16343 () Bool)

(assert (=> start!77786 (= b_free!16343 (not b_next!16343))))

(declare-fun tp!57292 () Bool)

(declare-fun b_and!26857 () Bool)

(assert (=> start!77786 (= tp!57292 b_and!26857)))

(declare-fun mapNonEmpty!29854 () Bool)

(declare-fun mapRes!29854 () Bool)

(declare-fun tp!57291 () Bool)

(declare-fun e!508561 () Bool)

(assert (=> mapNonEmpty!29854 (= mapRes!29854 (and tp!57291 e!508561))))

(declare-datatypes ((V!29979 0))(
  ( (V!29980 (val!9431 Int)) )
))
(declare-datatypes ((ValueCell!8899 0))(
  ( (ValueCellFull!8899 (v!11936 V!29979)) (EmptyCell!8899) )
))
(declare-datatypes ((array!53548 0))(
  ( (array!53549 (arr!25729 (Array (_ BitVec 32) ValueCell!8899)) (size!26189 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53548)

(declare-fun mapRest!29854 () (Array (_ BitVec 32) ValueCell!8899))

(declare-fun mapValue!29854 () ValueCell!8899)

(declare-fun mapKey!29854 () (_ BitVec 32))

(assert (=> mapNonEmpty!29854 (= (arr!25729 _values!1152) (store mapRest!29854 mapKey!29854 mapValue!29854))))

(declare-fun b!907392 () Bool)

(declare-fun e!508564 () Bool)

(declare-fun e!508562 () Bool)

(assert (=> b!907392 (= e!508564 e!508562)))

(declare-fun res!612550 () Bool)

(assert (=> b!907392 (=> (not res!612550) (not e!508562))))

(declare-datatypes ((tuple2!12306 0))(
  ( (tuple2!12307 (_1!6163 (_ BitVec 64)) (_2!6163 V!29979)) )
))
(declare-datatypes ((List!18166 0))(
  ( (Nil!18163) (Cons!18162 (h!19308 tuple2!12306) (t!25689 List!18166)) )
))
(declare-datatypes ((ListLongMap!11017 0))(
  ( (ListLongMap!11018 (toList!5524 List!18166)) )
))
(declare-fun lt!409269 () ListLongMap!11017)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4532 (ListLongMap!11017 (_ BitVec 64)) Bool)

(assert (=> b!907392 (= res!612550 (contains!4532 lt!409269 k!1033))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29979)

(declare-datatypes ((array!53550 0))(
  ( (array!53551 (arr!25730 (Array (_ BitVec 32) (_ BitVec 64))) (size!26190 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53550)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29979)

(declare-fun defaultEntry!1160 () Int)

(declare-fun getCurrentListMap!2756 (array!53550 array!53548 (_ BitVec 32) (_ BitVec 32) V!29979 V!29979 (_ BitVec 32) Int) ListLongMap!11017)

(assert (=> b!907392 (= lt!409269 (getCurrentListMap!2756 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907393 () Bool)

(declare-fun res!612544 () Bool)

(assert (=> b!907393 (=> (not res!612544) (not e!508564))))

(declare-datatypes ((List!18167 0))(
  ( (Nil!18164) (Cons!18163 (h!19309 (_ BitVec 64)) (t!25690 List!18167)) )
))
(declare-fun arrayNoDuplicates!0 (array!53550 (_ BitVec 32) List!18167) Bool)

(assert (=> b!907393 (= res!612544 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18164))))

(declare-fun b!907394 () Bool)

(declare-fun res!612551 () Bool)

(assert (=> b!907394 (=> (not res!612551) (not e!508564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53550 (_ BitVec 32)) Bool)

(assert (=> b!907394 (= res!612551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907395 () Bool)

(declare-fun e!508560 () Bool)

(declare-fun tp_is_empty!18761 () Bool)

(assert (=> b!907395 (= e!508560 tp_is_empty!18761)))

(declare-fun b!907396 () Bool)

(assert (=> b!907396 (= e!508561 tp_is_empty!18761)))

(declare-fun res!612546 () Bool)

(assert (=> start!77786 (=> (not res!612546) (not e!508564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77786 (= res!612546 (validMask!0 mask!1756))))

(assert (=> start!77786 e!508564))

(declare-fun e!508565 () Bool)

(declare-fun array_inv!20122 (array!53548) Bool)

(assert (=> start!77786 (and (array_inv!20122 _values!1152) e!508565)))

(assert (=> start!77786 tp!57292))

(assert (=> start!77786 true))

(assert (=> start!77786 tp_is_empty!18761))

(declare-fun array_inv!20123 (array!53550) Bool)

(assert (=> start!77786 (array_inv!20123 _keys!1386)))

(declare-fun b!907397 () Bool)

(declare-fun res!612547 () Bool)

(declare-fun e!508559 () Bool)

(assert (=> b!907397 (=> res!612547 e!508559)))

(declare-fun lt!409268 () ListLongMap!11017)

(declare-fun lt!409271 () V!29979)

(declare-fun apply!500 (ListLongMap!11017 (_ BitVec 64)) V!29979)

(assert (=> b!907397 (= res!612547 (not (= (apply!500 lt!409268 k!1033) lt!409271)))))

(declare-fun b!907398 () Bool)

(declare-fun res!612543 () Bool)

(assert (=> b!907398 (=> (not res!612543) (not e!508562))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907398 (= res!612543 (inRange!0 i!717 mask!1756))))

(declare-fun b!907399 () Bool)

(assert (=> b!907399 (= e!508559 (bvslt #b00000000000000000000000000000000 (size!26190 _keys!1386)))))

(assert (=> b!907399 (= (apply!500 lt!409269 k!1033) lt!409271)))

(declare-datatypes ((Unit!30775 0))(
  ( (Unit!30776) )
))
(declare-fun lt!409270 () Unit!30775)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!46 (array!53550 array!53548 (_ BitVec 32) (_ BitVec 32) V!29979 V!29979 (_ BitVec 64) V!29979 (_ BitVec 32) Int) Unit!30775)

(assert (=> b!907399 (= lt!409270 (lemmaListMapApplyFromThenApplyFromZero!46 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409271 i!717 defaultEntry!1160))))

(declare-fun b!907400 () Bool)

(declare-fun res!612552 () Bool)

(assert (=> b!907400 (=> (not res!612552) (not e!508564))))

(assert (=> b!907400 (= res!612552 (and (= (size!26189 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26190 _keys!1386) (size!26189 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907401 () Bool)

(declare-fun e!508558 () Bool)

(assert (=> b!907401 (= e!508558 e!508559)))

(declare-fun res!612545 () Bool)

(assert (=> b!907401 (=> res!612545 e!508559)))

(assert (=> b!907401 (= res!612545 (not (contains!4532 lt!409268 k!1033)))))

(assert (=> b!907401 (= lt!409268 (getCurrentListMap!2756 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907402 () Bool)

(declare-fun res!612549 () Bool)

(assert (=> b!907402 (=> (not res!612549) (not e!508562))))

(assert (=> b!907402 (= res!612549 (and (= (select (arr!25730 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907403 () Bool)

(assert (=> b!907403 (= e!508562 (not e!508558))))

(declare-fun res!612548 () Bool)

(assert (=> b!907403 (=> res!612548 e!508558)))

(assert (=> b!907403 (= res!612548 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26190 _keys!1386))))))

(declare-fun get!13552 (ValueCell!8899 V!29979) V!29979)

(declare-fun dynLambda!1372 (Int (_ BitVec 64)) V!29979)

(assert (=> b!907403 (= lt!409271 (get!13552 (select (arr!25729 _values!1152) i!717) (dynLambda!1372 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907403 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409267 () Unit!30775)

(declare-fun lemmaKeyInListMapIsInArray!245 (array!53550 array!53548 (_ BitVec 32) (_ BitVec 32) V!29979 V!29979 (_ BitVec 64) Int) Unit!30775)

(assert (=> b!907403 (= lt!409267 (lemmaKeyInListMapIsInArray!245 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29854 () Bool)

(assert (=> mapIsEmpty!29854 mapRes!29854))

(declare-fun b!907404 () Bool)

(assert (=> b!907404 (= e!508565 (and e!508560 mapRes!29854))))

(declare-fun condMapEmpty!29854 () Bool)

(declare-fun mapDefault!29854 () ValueCell!8899)

