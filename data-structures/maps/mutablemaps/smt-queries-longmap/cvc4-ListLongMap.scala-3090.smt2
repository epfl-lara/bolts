; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43492 () Bool)

(assert start!43492)

(declare-fun b_free!12263 () Bool)

(declare-fun b_next!12263 () Bool)

(assert (=> start!43492 (= b_free!12263 (not b_next!12263))))

(declare-fun tp!43072 () Bool)

(declare-fun b_and!21041 () Bool)

(assert (=> start!43492 (= tp!43072 b_and!21041)))

(declare-fun b!481618 () Bool)

(declare-fun res!287183 () Bool)

(declare-fun e!283367 () Bool)

(assert (=> b!481618 (=> (not res!287183) (not e!283367))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19437 0))(
  ( (V!19438 (val!6935 Int)) )
))
(declare-fun minValue!1458 () V!19437)

(declare-fun zeroValue!1458 () V!19437)

(declare-datatypes ((ValueCell!6526 0))(
  ( (ValueCellFull!6526 (v!9224 V!19437)) (EmptyCell!6526) )
))
(declare-datatypes ((array!31185 0))(
  ( (array!31186 (arr!14992 (Array (_ BitVec 32) ValueCell!6526)) (size!15350 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31185)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31187 0))(
  ( (array!31188 (arr!14993 (Array (_ BitVec 32) (_ BitVec 64))) (size!15351 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31187)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((tuple2!9104 0))(
  ( (tuple2!9105 (_1!4562 (_ BitVec 64)) (_2!4562 V!19437)) )
))
(declare-datatypes ((List!9217 0))(
  ( (Nil!9214) (Cons!9213 (h!10069 tuple2!9104) (t!15439 List!9217)) )
))
(declare-datatypes ((ListLongMap!8031 0))(
  ( (ListLongMap!8032 (toList!4031 List!9217)) )
))
(declare-fun contains!2642 (ListLongMap!8031 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2323 (array!31187 array!31185 (_ BitVec 32) (_ BitVec 32) V!19437 V!19437 (_ BitVec 32) Int) ListLongMap!8031)

(assert (=> b!481618 (= res!287183 (contains!2642 (getCurrentListMap!2323 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481619 () Bool)

(declare-fun e!283372 () Bool)

(declare-fun tp_is_empty!13775 () Bool)

(assert (=> b!481619 (= e!283372 tp_is_empty!13775)))

(declare-fun b!481620 () Bool)

(declare-fun res!287188 () Bool)

(assert (=> b!481620 (=> (not res!287188) (not e!283367))))

(declare-datatypes ((List!9218 0))(
  ( (Nil!9215) (Cons!9214 (h!10070 (_ BitVec 64)) (t!15440 List!9218)) )
))
(declare-fun arrayNoDuplicates!0 (array!31187 (_ BitVec 32) List!9218) Bool)

(assert (=> b!481620 (= res!287188 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9215))))

(declare-fun b!481621 () Bool)

(declare-fun e!283371 () Bool)

(declare-fun arrayContainsKey!0 (array!31187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481621 (= e!283371 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!481623 () Bool)

(assert (=> b!481623 (= e!283371 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22372 () Bool)

(declare-fun mapRes!22372 () Bool)

(assert (=> mapIsEmpty!22372 mapRes!22372))

(declare-fun b!481624 () Bool)

(assert (=> b!481624 (= e!283367 (not true))))

(declare-fun lt!218593 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31187 (_ BitVec 32)) Bool)

(assert (=> b!481624 (arrayForallSeekEntryOrOpenFound!0 lt!218593 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14110 0))(
  ( (Unit!14111) )
))
(declare-fun lt!218594 () Unit!14110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14110)

(assert (=> b!481624 (= lt!218594 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218593))))

(declare-fun arrayScanForKey!0 (array!31187 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481624 (= lt!218593 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!481624 e!283371))

(declare-fun c!57873 () Bool)

(assert (=> b!481624 (= c!57873 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218592 () Unit!14110)

(declare-fun lemmaKeyInListMapIsInArray!144 (array!31187 array!31185 (_ BitVec 32) (_ BitVec 32) V!19437 V!19437 (_ BitVec 64) Int) Unit!14110)

(assert (=> b!481624 (= lt!218592 (lemmaKeyInListMapIsInArray!144 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!481625 () Bool)

(declare-fun res!287187 () Bool)

(assert (=> b!481625 (=> (not res!287187) (not e!283367))))

(assert (=> b!481625 (= res!287187 (and (= (size!15350 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15351 _keys!1874) (size!15350 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481626 () Bool)

(declare-fun e!283370 () Bool)

(assert (=> b!481626 (= e!283370 tp_is_empty!13775)))

(declare-fun b!481627 () Bool)

(declare-fun e!283369 () Bool)

(assert (=> b!481627 (= e!283369 (and e!283372 mapRes!22372))))

(declare-fun condMapEmpty!22372 () Bool)

(declare-fun mapDefault!22372 () ValueCell!6526)

