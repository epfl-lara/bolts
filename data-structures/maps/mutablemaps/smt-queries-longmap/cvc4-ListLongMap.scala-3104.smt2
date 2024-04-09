; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43620 () Bool)

(assert start!43620)

(declare-fun b_free!12347 () Bool)

(declare-fun b_next!12347 () Bool)

(assert (=> start!43620 (= b_free!12347 (not b_next!12347))))

(declare-fun tp!43329 () Bool)

(declare-fun b_and!21129 () Bool)

(assert (=> start!43620 (= tp!43329 b_and!21129)))

(declare-fun b!482934 () Bool)

(declare-fun res!287880 () Bool)

(declare-fun e!284215 () Bool)

(assert (=> b!482934 (=> (not res!287880) (not e!284215))))

(declare-datatypes ((array!31345 0))(
  ( (array!31346 (arr!15070 (Array (_ BitVec 32) (_ BitVec 64))) (size!15428 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31345)

(declare-datatypes ((List!9275 0))(
  ( (Nil!9272) (Cons!9271 (h!10127 (_ BitVec 64)) (t!15501 List!9275)) )
))
(declare-fun arrayNoDuplicates!0 (array!31345 (_ BitVec 32) List!9275) Bool)

(assert (=> b!482934 (= res!287880 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9272))))

(declare-fun mapNonEmpty!22504 () Bool)

(declare-fun mapRes!22504 () Bool)

(declare-fun tp!43330 () Bool)

(declare-fun e!284210 () Bool)

(assert (=> mapNonEmpty!22504 (= mapRes!22504 (and tp!43330 e!284210))))

(declare-fun mapKey!22504 () (_ BitVec 32))

(declare-datatypes ((V!19549 0))(
  ( (V!19550 (val!6977 Int)) )
))
(declare-datatypes ((ValueCell!6568 0))(
  ( (ValueCellFull!6568 (v!9268 V!19549)) (EmptyCell!6568) )
))
(declare-datatypes ((array!31347 0))(
  ( (array!31348 (arr!15071 (Array (_ BitVec 32) ValueCell!6568)) (size!15429 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31347)

(declare-fun mapValue!22504 () ValueCell!6568)

(declare-fun mapRest!22504 () (Array (_ BitVec 32) ValueCell!6568))

(assert (=> mapNonEmpty!22504 (= (arr!15071 _values!1516) (store mapRest!22504 mapKey!22504 mapValue!22504))))

(declare-fun res!287881 () Bool)

(assert (=> start!43620 (=> (not res!287881) (not e!284215))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43620 (= res!287881 (validMask!0 mask!2352))))

(assert (=> start!43620 e!284215))

(assert (=> start!43620 true))

(declare-fun tp_is_empty!13859 () Bool)

(assert (=> start!43620 tp_is_empty!13859))

(declare-fun e!284211 () Bool)

(declare-fun array_inv!10850 (array!31347) Bool)

(assert (=> start!43620 (and (array_inv!10850 _values!1516) e!284211)))

(assert (=> start!43620 tp!43329))

(declare-fun array_inv!10851 (array!31345) Bool)

(assert (=> start!43620 (array_inv!10851 _keys!1874)))

(declare-fun b!482935 () Bool)

(assert (=> b!482935 (= e!284215 (not true))))

(declare-fun lt!218951 () (_ BitVec 32))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31345 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482935 (= lt!218951 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!284212 () Bool)

(assert (=> b!482935 e!284212))

(declare-fun c!57984 () Bool)

(assert (=> b!482935 (= c!57984 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14132 0))(
  ( (Unit!14133) )
))
(declare-fun lt!218950 () Unit!14132)

(declare-fun minValue!1458 () V!19549)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19549)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!153 (array!31345 array!31347 (_ BitVec 32) (_ BitVec 32) V!19549 V!19549 (_ BitVec 64) Int) Unit!14132)

(assert (=> b!482935 (= lt!218950 (lemmaKeyInListMapIsInArray!153 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!482936 () Bool)

(declare-fun res!287884 () Bool)

(assert (=> b!482936 (=> (not res!287884) (not e!284215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!482936 (= res!287884 (validKeyInArray!0 k!1332))))

(declare-fun b!482937 () Bool)

(declare-fun e!284213 () Bool)

(assert (=> b!482937 (= e!284211 (and e!284213 mapRes!22504))))

(declare-fun condMapEmpty!22504 () Bool)

(declare-fun mapDefault!22504 () ValueCell!6568)

