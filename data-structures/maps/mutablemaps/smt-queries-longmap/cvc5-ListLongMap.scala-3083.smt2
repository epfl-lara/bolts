; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43398 () Bool)

(assert start!43398)

(declare-fun b_free!12217 () Bool)

(declare-fun b_next!12217 () Bool)

(assert (=> start!43398 (= b_free!12217 (not b_next!12217))))

(declare-fun tp!42928 () Bool)

(declare-fun b_and!20991 () Bool)

(assert (=> start!43398 (= tp!42928 b_and!20991)))

(declare-fun b!480597 () Bool)

(declare-fun res!286664 () Bool)

(declare-fun e!282780 () Bool)

(assert (=> b!480597 (=> (not res!286664) (not e!282780))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19377 0))(
  ( (V!19378 (val!6912 Int)) )
))
(declare-fun minValue!1458 () V!19377)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19377)

(declare-datatypes ((ValueCell!6503 0))(
  ( (ValueCellFull!6503 (v!9199 V!19377)) (EmptyCell!6503) )
))
(declare-datatypes ((array!31093 0))(
  ( (array!31094 (arr!14948 (Array (_ BitVec 32) ValueCell!6503)) (size!15306 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31093)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31095 0))(
  ( (array!31096 (arr!14949 (Array (_ BitVec 32) (_ BitVec 64))) (size!15307 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31095)

(declare-datatypes ((tuple2!9068 0))(
  ( (tuple2!9069 (_1!4544 (_ BitVec 64)) (_2!4544 V!19377)) )
))
(declare-datatypes ((List!9183 0))(
  ( (Nil!9180) (Cons!9179 (h!10035 tuple2!9068) (t!15401 List!9183)) )
))
(declare-datatypes ((ListLongMap!7995 0))(
  ( (ListLongMap!7996 (toList!4013 List!9183)) )
))
(declare-fun contains!2622 (ListLongMap!7995 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2305 (array!31095 array!31093 (_ BitVec 32) (_ BitVec 32) V!19377 V!19377 (_ BitVec 32) Int) ListLongMap!7995)

(assert (=> b!480597 (= res!286664 (contains!2622 (getCurrentListMap!2305 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!480598 () Bool)

(declare-fun res!286666 () Bool)

(assert (=> b!480598 (=> (not res!286666) (not e!282780))))

(assert (=> b!480598 (= res!286666 (and (= (size!15306 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15307 _keys!1874) (size!15306 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480599 () Bool)

(declare-fun res!286667 () Bool)

(assert (=> b!480599 (=> (not res!286667) (not e!282780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31095 (_ BitVec 32)) Bool)

(assert (=> b!480599 (= res!286667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480600 () Bool)

(declare-fun e!282779 () Bool)

(declare-fun tp_is_empty!13729 () Bool)

(assert (=> b!480600 (= e!282779 tp_is_empty!13729)))

(declare-fun b!480601 () Bool)

(declare-fun e!282781 () Bool)

(declare-fun arrayContainsKey!0 (array!31095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480601 (= e!282781 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!480602 () Bool)

(assert (=> b!480602 (= e!282780 (not (= (size!15307 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))))))

(declare-fun lt!218188 () (_ BitVec 32))

(assert (=> b!480602 (arrayForallSeekEntryOrOpenFound!0 lt!218188 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14074 0))(
  ( (Unit!14075) )
))
(declare-fun lt!218187 () Unit!14074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14074)

(assert (=> b!480602 (= lt!218187 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218188))))

(declare-fun arrayScanForKey!0 (array!31095 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480602 (= lt!218188 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!480602 e!282781))

(declare-fun c!57736 () Bool)

(assert (=> b!480602 (= c!57736 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218189 () Unit!14074)

(declare-fun lemmaKeyInListMapIsInArray!128 (array!31095 array!31093 (_ BitVec 32) (_ BitVec 32) V!19377 V!19377 (_ BitVec 64) Int) Unit!14074)

(assert (=> b!480602 (= lt!218189 (lemmaKeyInListMapIsInArray!128 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun mapNonEmpty!22297 () Bool)

(declare-fun mapRes!22297 () Bool)

(declare-fun tp!42927 () Bool)

(assert (=> mapNonEmpty!22297 (= mapRes!22297 (and tp!42927 e!282779))))

(declare-fun mapValue!22297 () ValueCell!6503)

(declare-fun mapKey!22297 () (_ BitVec 32))

(declare-fun mapRest!22297 () (Array (_ BitVec 32) ValueCell!6503))

(assert (=> mapNonEmpty!22297 (= (arr!14948 _values!1516) (store mapRest!22297 mapKey!22297 mapValue!22297))))

(declare-fun b!480603 () Bool)

(assert (=> b!480603 (= e!282781 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480605 () Bool)

(declare-fun res!286665 () Bool)

(assert (=> b!480605 (=> (not res!286665) (not e!282780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480605 (= res!286665 (validKeyInArray!0 k!1332))))

(declare-fun b!480606 () Bool)

(declare-fun e!282782 () Bool)

(declare-fun e!282784 () Bool)

(assert (=> b!480606 (= e!282782 (and e!282784 mapRes!22297))))

(declare-fun condMapEmpty!22297 () Bool)

(declare-fun mapDefault!22297 () ValueCell!6503)

