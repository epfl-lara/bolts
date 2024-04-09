; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43482 () Bool)

(assert start!43482)

(declare-fun b_free!12253 () Bool)

(declare-fun b_next!12253 () Bool)

(assert (=> start!43482 (= b_free!12253 (not b_next!12253))))

(declare-fun tp!43041 () Bool)

(declare-fun b_and!21031 () Bool)

(assert (=> start!43482 (= tp!43041 b_and!21031)))

(declare-fun b!481453 () Bool)

(declare-fun e!283278 () Bool)

(assert (=> b!481453 (= e!283278 (not true))))

(declare-fun lt!218549 () (_ BitVec 32))

(declare-datatypes ((array!31167 0))(
  ( (array!31168 (arr!14983 (Array (_ BitVec 32) (_ BitVec 64))) (size!15341 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31167)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31167 (_ BitVec 32)) Bool)

(assert (=> b!481453 (arrayForallSeekEntryOrOpenFound!0 lt!218549 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14102 0))(
  ( (Unit!14103) )
))
(declare-fun lt!218548 () Unit!14102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14102)

(assert (=> b!481453 (= lt!218548 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218549))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31167 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481453 (= lt!218549 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!283277 () Bool)

(assert (=> b!481453 e!283277))

(declare-fun c!57858 () Bool)

(assert (=> b!481453 (= c!57858 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!19425 0))(
  ( (V!19426 (val!6930 Int)) )
))
(declare-fun minValue!1458 () V!19425)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun lt!218547 () Unit!14102)

(declare-fun zeroValue!1458 () V!19425)

(declare-datatypes ((ValueCell!6521 0))(
  ( (ValueCellFull!6521 (v!9219 V!19425)) (EmptyCell!6521) )
))
(declare-datatypes ((array!31169 0))(
  ( (array!31170 (arr!14984 (Array (_ BitVec 32) ValueCell!6521)) (size!15342 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31169)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!140 (array!31167 array!31169 (_ BitVec 32) (_ BitVec 32) V!19425 V!19425 (_ BitVec 64) Int) Unit!14102)

(assert (=> b!481453 (= lt!218547 (lemmaKeyInListMapIsInArray!140 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!481455 () Bool)

(declare-fun res!287097 () Bool)

(assert (=> b!481455 (=> (not res!287097) (not e!283278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481455 (= res!287097 (validKeyInArray!0 k!1332))))

(declare-fun b!481456 () Bool)

(declare-fun res!287096 () Bool)

(assert (=> b!481456 (=> (not res!287096) (not e!283278))))

(declare-datatypes ((tuple2!9096 0))(
  ( (tuple2!9097 (_1!4558 (_ BitVec 64)) (_2!4558 V!19425)) )
))
(declare-datatypes ((List!9209 0))(
  ( (Nil!9206) (Cons!9205 (h!10061 tuple2!9096) (t!15431 List!9209)) )
))
(declare-datatypes ((ListLongMap!8023 0))(
  ( (ListLongMap!8024 (toList!4027 List!9209)) )
))
(declare-fun contains!2638 (ListLongMap!8023 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2319 (array!31167 array!31169 (_ BitVec 32) (_ BitVec 32) V!19425 V!19425 (_ BitVec 32) Int) ListLongMap!8023)

(assert (=> b!481456 (= res!287096 (contains!2638 (getCurrentListMap!2319 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481457 () Bool)

(assert (=> b!481457 (= e!283277 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!481458 () Bool)

(declare-fun arrayContainsKey!0 (array!31167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481458 (= e!283277 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!481459 () Bool)

(declare-fun e!283279 () Bool)

(declare-fun tp_is_empty!13765 () Bool)

(assert (=> b!481459 (= e!283279 tp_is_empty!13765)))

(declare-fun b!481460 () Bool)

(declare-fun res!287098 () Bool)

(assert (=> b!481460 (=> (not res!287098) (not e!283278))))

(declare-datatypes ((List!9210 0))(
  ( (Nil!9207) (Cons!9206 (h!10062 (_ BitVec 64)) (t!15432 List!9210)) )
))
(declare-fun arrayNoDuplicates!0 (array!31167 (_ BitVec 32) List!9210) Bool)

(assert (=> b!481460 (= res!287098 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9207))))

(declare-fun b!481461 () Bool)

(declare-fun res!287094 () Bool)

(assert (=> b!481461 (=> (not res!287094) (not e!283278))))

(assert (=> b!481461 (= res!287094 (and (= (size!15342 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15341 _keys!1874) (size!15342 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!287093 () Bool)

(assert (=> start!43482 (=> (not res!287093) (not e!283278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43482 (= res!287093 (validMask!0 mask!2352))))

(assert (=> start!43482 e!283278))

(assert (=> start!43482 true))

(assert (=> start!43482 tp_is_empty!13765))

(declare-fun e!283282 () Bool)

(declare-fun array_inv!10790 (array!31169) Bool)

(assert (=> start!43482 (and (array_inv!10790 _values!1516) e!283282)))

(assert (=> start!43482 tp!43041))

(declare-fun array_inv!10791 (array!31167) Bool)

(assert (=> start!43482 (array_inv!10791 _keys!1874)))

(declare-fun b!481454 () Bool)

(declare-fun e!283280 () Bool)

(assert (=> b!481454 (= e!283280 tp_is_empty!13765)))

(declare-fun mapNonEmpty!22357 () Bool)

(declare-fun mapRes!22357 () Bool)

(declare-fun tp!43042 () Bool)

(assert (=> mapNonEmpty!22357 (= mapRes!22357 (and tp!43042 e!283280))))

(declare-fun mapKey!22357 () (_ BitVec 32))

(declare-fun mapRest!22357 () (Array (_ BitVec 32) ValueCell!6521))

(declare-fun mapValue!22357 () ValueCell!6521)

(assert (=> mapNonEmpty!22357 (= (arr!14984 _values!1516) (store mapRest!22357 mapKey!22357 mapValue!22357))))

(declare-fun mapIsEmpty!22357 () Bool)

(assert (=> mapIsEmpty!22357 mapRes!22357))

(declare-fun b!481462 () Bool)

(assert (=> b!481462 (= e!283282 (and e!283279 mapRes!22357))))

(declare-fun condMapEmpty!22357 () Bool)

(declare-fun mapDefault!22357 () ValueCell!6521)

