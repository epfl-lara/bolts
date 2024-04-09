; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43506 () Bool)

(assert start!43506)

(declare-fun b_free!12277 () Bool)

(declare-fun b_next!12277 () Bool)

(assert (=> start!43506 (= b_free!12277 (not b_next!12277))))

(declare-fun tp!43114 () Bool)

(declare-fun b_and!21055 () Bool)

(assert (=> start!43506 (= tp!43114 b_and!21055)))

(declare-fun b!481769 () Bool)

(declare-fun e!283476 () Bool)

(assert (=> b!481769 (= e!283476 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19457 0))(
  ( (V!19458 (val!6942 Int)) )
))
(declare-fun minValue!1458 () V!19457)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6533 0))(
  ( (ValueCellFull!6533 (v!9231 V!19457)) (EmptyCell!6533) )
))
(declare-datatypes ((array!31209 0))(
  ( (array!31210 (arr!15004 (Array (_ BitVec 32) ValueCell!6533)) (size!15362 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31209)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31211 0))(
  ( (array!31212 (arr!15005 (Array (_ BitVec 32) (_ BitVec 64))) (size!15363 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31211)

(declare-fun lt!218615 () Bool)

(declare-fun zeroValue!1458 () V!19457)

(declare-datatypes ((tuple2!9112 0))(
  ( (tuple2!9113 (_1!4566 (_ BitVec 64)) (_2!4566 V!19457)) )
))
(declare-datatypes ((List!9226 0))(
  ( (Nil!9223) (Cons!9222 (h!10078 tuple2!9112) (t!15448 List!9226)) )
))
(declare-datatypes ((ListLongMap!8039 0))(
  ( (ListLongMap!8040 (toList!4035 List!9226)) )
))
(declare-fun contains!2646 (ListLongMap!8039 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2327 (array!31211 array!31209 (_ BitVec 32) (_ BitVec 32) V!19457 V!19457 (_ BitVec 32) Int) ListLongMap!8039)

(assert (=> b!481769 (= lt!218615 (contains!2646 (getCurrentListMap!2327 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481770 () Bool)

(declare-fun e!283474 () Bool)

(declare-fun tp_is_empty!13789 () Bool)

(assert (=> b!481770 (= e!283474 tp_is_empty!13789)))

(declare-fun mapNonEmpty!22393 () Bool)

(declare-fun mapRes!22393 () Bool)

(declare-fun tp!43113 () Bool)

(assert (=> mapNonEmpty!22393 (= mapRes!22393 (and tp!43113 e!283474))))

(declare-fun mapRest!22393 () (Array (_ BitVec 32) ValueCell!6533))

(declare-fun mapKey!22393 () (_ BitVec 32))

(declare-fun mapValue!22393 () ValueCell!6533)

(assert (=> mapNonEmpty!22393 (= (arr!15004 _values!1516) (store mapRest!22393 mapKey!22393 mapValue!22393))))

(declare-fun mapIsEmpty!22393 () Bool)

(assert (=> mapIsEmpty!22393 mapRes!22393))

(declare-fun b!481771 () Bool)

(declare-fun e!283477 () Bool)

(assert (=> b!481771 (= e!283477 tp_is_empty!13789)))

(declare-fun b!481772 () Bool)

(declare-fun res!287271 () Bool)

(assert (=> b!481772 (=> (not res!287271) (not e!283476))))

(declare-datatypes ((List!9227 0))(
  ( (Nil!9224) (Cons!9223 (h!10079 (_ BitVec 64)) (t!15449 List!9227)) )
))
(declare-fun arrayNoDuplicates!0 (array!31211 (_ BitVec 32) List!9227) Bool)

(assert (=> b!481772 (= res!287271 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9224))))

(declare-fun res!287272 () Bool)

(assert (=> start!43506 (=> (not res!287272) (not e!283476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43506 (= res!287272 (validMask!0 mask!2352))))

(assert (=> start!43506 e!283476))

(assert (=> start!43506 true))

(assert (=> start!43506 tp_is_empty!13789))

(declare-fun e!283475 () Bool)

(declare-fun array_inv!10802 (array!31209) Bool)

(assert (=> start!43506 (and (array_inv!10802 _values!1516) e!283475)))

(assert (=> start!43506 tp!43114))

(declare-fun array_inv!10803 (array!31211) Bool)

(assert (=> start!43506 (array_inv!10803 _keys!1874)))

(declare-fun b!481773 () Bool)

(assert (=> b!481773 (= e!283475 (and e!283477 mapRes!22393))))

(declare-fun condMapEmpty!22393 () Bool)

(declare-fun mapDefault!22393 () ValueCell!6533)

