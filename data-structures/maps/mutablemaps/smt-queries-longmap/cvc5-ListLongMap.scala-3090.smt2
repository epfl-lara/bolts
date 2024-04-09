; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43488 () Bool)

(assert start!43488)

(declare-fun b_free!12259 () Bool)

(declare-fun b_next!12259 () Bool)

(assert (=> start!43488 (= b_free!12259 (not b_next!12259))))

(declare-fun tp!43060 () Bool)

(declare-fun b_and!21037 () Bool)

(assert (=> start!43488 (= tp!43060 b_and!21037)))

(declare-fun b!481552 () Bool)

(declare-fun res!287147 () Bool)

(declare-fun e!283332 () Bool)

(assert (=> b!481552 (=> (not res!287147) (not e!283332))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481552 (= res!287147 (validKeyInArray!0 k!1332))))

(declare-fun b!481553 () Bool)

(declare-fun e!283334 () Bool)

(declare-fun tp_is_empty!13771 () Bool)

(assert (=> b!481553 (= e!283334 tp_is_empty!13771)))

(declare-fun b!481554 () Bool)

(assert (=> b!481554 (= e!283332 (not true))))

(declare-fun lt!218574 () (_ BitVec 32))

(declare-datatypes ((array!31177 0))(
  ( (array!31178 (arr!14988 (Array (_ BitVec 32) (_ BitVec 64))) (size!15346 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31177)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31177 (_ BitVec 32)) Bool)

(assert (=> b!481554 (arrayForallSeekEntryOrOpenFound!0 lt!218574 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14106 0))(
  ( (Unit!14107) )
))
(declare-fun lt!218576 () Unit!14106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31177 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14106)

(assert (=> b!481554 (= lt!218576 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218574))))

(declare-fun arrayScanForKey!0 (array!31177 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481554 (= lt!218574 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!283331 () Bool)

(assert (=> b!481554 e!283331))

(declare-fun c!57867 () Bool)

(assert (=> b!481554 (= c!57867 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218575 () Unit!14106)

(declare-datatypes ((V!19433 0))(
  ( (V!19434 (val!6933 Int)) )
))
(declare-fun minValue!1458 () V!19433)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19433)

(declare-datatypes ((ValueCell!6524 0))(
  ( (ValueCellFull!6524 (v!9222 V!19433)) (EmptyCell!6524) )
))
(declare-datatypes ((array!31179 0))(
  ( (array!31180 (arr!14989 (Array (_ BitVec 32) ValueCell!6524)) (size!15347 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31179)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!142 (array!31177 array!31179 (_ BitVec 32) (_ BitVec 32) V!19433 V!19433 (_ BitVec 64) Int) Unit!14106)

(assert (=> b!481554 (= lt!218575 (lemmaKeyInListMapIsInArray!142 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!481555 () Bool)

(declare-fun arrayContainsKey!0 (array!31177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481555 (= e!283331 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!481557 () Bool)

(assert (=> b!481557 (= e!283331 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!481558 () Bool)

(declare-fun res!287152 () Bool)

(assert (=> b!481558 (=> (not res!287152) (not e!283332))))

(assert (=> b!481558 (= res!287152 (and (= (size!15347 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15346 _keys!1874) (size!15347 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481559 () Bool)

(declare-fun e!283333 () Bool)

(assert (=> b!481559 (= e!283333 tp_is_empty!13771)))

(declare-fun mapNonEmpty!22366 () Bool)

(declare-fun mapRes!22366 () Bool)

(declare-fun tp!43059 () Bool)

(assert (=> mapNonEmpty!22366 (= mapRes!22366 (and tp!43059 e!283334))))

(declare-fun mapKey!22366 () (_ BitVec 32))

(declare-fun mapValue!22366 () ValueCell!6524)

(declare-fun mapRest!22366 () (Array (_ BitVec 32) ValueCell!6524))

(assert (=> mapNonEmpty!22366 (= (arr!14989 _values!1516) (store mapRest!22366 mapKey!22366 mapValue!22366))))

(declare-fun b!481560 () Bool)

(declare-fun res!287150 () Bool)

(assert (=> b!481560 (=> (not res!287150) (not e!283332))))

(assert (=> b!481560 (= res!287150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapIsEmpty!22366 () Bool)

(assert (=> mapIsEmpty!22366 mapRes!22366))

(declare-fun b!481561 () Bool)

(declare-fun res!287151 () Bool)

(assert (=> b!481561 (=> (not res!287151) (not e!283332))))

(declare-datatypes ((tuple2!9100 0))(
  ( (tuple2!9101 (_1!4560 (_ BitVec 64)) (_2!4560 V!19433)) )
))
(declare-datatypes ((List!9213 0))(
  ( (Nil!9210) (Cons!9209 (h!10065 tuple2!9100) (t!15435 List!9213)) )
))
(declare-datatypes ((ListLongMap!8027 0))(
  ( (ListLongMap!8028 (toList!4029 List!9213)) )
))
(declare-fun contains!2640 (ListLongMap!8027 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2321 (array!31177 array!31179 (_ BitVec 32) (_ BitVec 32) V!19433 V!19433 (_ BitVec 32) Int) ListLongMap!8027)

(assert (=> b!481561 (= res!287151 (contains!2640 (getCurrentListMap!2321 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481562 () Bool)

(declare-fun res!287149 () Bool)

(assert (=> b!481562 (=> (not res!287149) (not e!283332))))

(declare-datatypes ((List!9214 0))(
  ( (Nil!9211) (Cons!9210 (h!10066 (_ BitVec 64)) (t!15436 List!9214)) )
))
(declare-fun arrayNoDuplicates!0 (array!31177 (_ BitVec 32) List!9214) Bool)

(assert (=> b!481562 (= res!287149 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9211))))

(declare-fun b!481556 () Bool)

(declare-fun e!283336 () Bool)

(assert (=> b!481556 (= e!283336 (and e!283333 mapRes!22366))))

(declare-fun condMapEmpty!22366 () Bool)

(declare-fun mapDefault!22366 () ValueCell!6524)

