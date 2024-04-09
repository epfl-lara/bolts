; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43530 () Bool)

(assert start!43530)

(declare-fun b_free!12301 () Bool)

(declare-fun b_next!12301 () Bool)

(assert (=> start!43530 (= b_free!12301 (not b_next!12301))))

(declare-fun tp!43185 () Bool)

(declare-fun b_and!21079 () Bool)

(assert (=> start!43530 (= tp!43185 b_and!21079)))

(declare-fun b!482021 () Bool)

(declare-fun e!283654 () Bool)

(declare-fun tp_is_empty!13813 () Bool)

(assert (=> b!482021 (= e!283654 tp_is_empty!13813)))

(declare-fun b!482022 () Bool)

(declare-fun e!283653 () Bool)

(assert (=> b!482022 (= e!283653 tp_is_empty!13813)))

(declare-fun b!482023 () Bool)

(declare-fun e!283657 () Bool)

(assert (=> b!482023 (= e!283657 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun lt!218651 () Bool)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19489 0))(
  ( (V!19490 (val!6954 Int)) )
))
(declare-fun zeroValue!1458 () V!19489)

(declare-datatypes ((ValueCell!6545 0))(
  ( (ValueCellFull!6545 (v!9243 V!19489)) (EmptyCell!6545) )
))
(declare-datatypes ((array!31257 0))(
  ( (array!31258 (arr!15028 (Array (_ BitVec 32) ValueCell!6545)) (size!15386 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31257)

(declare-fun minValue!1458 () V!19489)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31259 0))(
  ( (array!31260 (arr!15029 (Array (_ BitVec 32) (_ BitVec 64))) (size!15387 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31259)

(declare-datatypes ((tuple2!9128 0))(
  ( (tuple2!9129 (_1!4574 (_ BitVec 64)) (_2!4574 V!19489)) )
))
(declare-datatypes ((List!9244 0))(
  ( (Nil!9241) (Cons!9240 (h!10096 tuple2!9128) (t!15466 List!9244)) )
))
(declare-datatypes ((ListLongMap!8055 0))(
  ( (ListLongMap!8056 (toList!4043 List!9244)) )
))
(declare-fun contains!2654 (ListLongMap!8055 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2335 (array!31259 array!31257 (_ BitVec 32) (_ BitVec 32) V!19489 V!19489 (_ BitVec 32) Int) ListLongMap!8055)

(assert (=> b!482023 (= lt!218651 (contains!2654 (getCurrentListMap!2335 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun res!287413 () Bool)

(assert (=> start!43530 (=> (not res!287413) (not e!283657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43530 (= res!287413 (validMask!0 mask!2352))))

(assert (=> start!43530 e!283657))

(assert (=> start!43530 true))

(assert (=> start!43530 tp_is_empty!13813))

(declare-fun e!283655 () Bool)

(declare-fun array_inv!10818 (array!31257) Bool)

(assert (=> start!43530 (and (array_inv!10818 _values!1516) e!283655)))

(assert (=> start!43530 tp!43185))

(declare-fun array_inv!10819 (array!31259) Bool)

(assert (=> start!43530 (array_inv!10819 _keys!1874)))

(declare-fun b!482024 () Bool)

(declare-fun res!287416 () Bool)

(assert (=> b!482024 (=> (not res!287416) (not e!283657))))

(declare-datatypes ((List!9245 0))(
  ( (Nil!9242) (Cons!9241 (h!10097 (_ BitVec 64)) (t!15467 List!9245)) )
))
(declare-fun arrayNoDuplicates!0 (array!31259 (_ BitVec 32) List!9245) Bool)

(assert (=> b!482024 (= res!287416 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9242))))

(declare-fun b!482025 () Bool)

(declare-fun res!287415 () Bool)

(assert (=> b!482025 (=> (not res!287415) (not e!283657))))

(assert (=> b!482025 (= res!287415 (and (= (size!15386 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15387 _keys!1874) (size!15386 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22429 () Bool)

(declare-fun mapRes!22429 () Bool)

(declare-fun tp!43186 () Bool)

(assert (=> mapNonEmpty!22429 (= mapRes!22429 (and tp!43186 e!283653))))

(declare-fun mapValue!22429 () ValueCell!6545)

(declare-fun mapRest!22429 () (Array (_ BitVec 32) ValueCell!6545))

(declare-fun mapKey!22429 () (_ BitVec 32))

(assert (=> mapNonEmpty!22429 (= (arr!15028 _values!1516) (store mapRest!22429 mapKey!22429 mapValue!22429))))

(declare-fun mapIsEmpty!22429 () Bool)

(assert (=> mapIsEmpty!22429 mapRes!22429))

(declare-fun b!482026 () Bool)

(assert (=> b!482026 (= e!283655 (and e!283654 mapRes!22429))))

(declare-fun condMapEmpty!22429 () Bool)

(declare-fun mapDefault!22429 () ValueCell!6545)

