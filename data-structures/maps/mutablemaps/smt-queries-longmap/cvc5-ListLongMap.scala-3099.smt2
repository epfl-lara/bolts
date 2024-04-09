; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43542 () Bool)

(assert start!43542)

(declare-fun b_free!12313 () Bool)

(declare-fun b_next!12313 () Bool)

(assert (=> start!43542 (= b_free!12313 (not b_next!12313))))

(declare-fun tp!43222 () Bool)

(declare-fun b_and!21091 () Bool)

(assert (=> start!43542 (= tp!43222 b_and!21091)))

(declare-fun b!482147 () Bool)

(declare-fun res!287485 () Bool)

(declare-fun e!283743 () Bool)

(assert (=> b!482147 (=> (not res!287485) (not e!283743))))

(declare-datatypes ((array!31279 0))(
  ( (array!31280 (arr!15039 (Array (_ BitVec 32) (_ BitVec 64))) (size!15397 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31279)

(declare-datatypes ((List!9254 0))(
  ( (Nil!9251) (Cons!9250 (h!10106 (_ BitVec 64)) (t!15476 List!9254)) )
))
(declare-fun arrayNoDuplicates!0 (array!31279 (_ BitVec 32) List!9254) Bool)

(assert (=> b!482147 (= res!287485 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9251))))

(declare-fun b!482148 () Bool)

(assert (=> b!482148 (= e!283743 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun lt!218669 () Bool)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19505 0))(
  ( (V!19506 (val!6960 Int)) )
))
(declare-fun minValue!1458 () V!19505)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19505)

(declare-datatypes ((ValueCell!6551 0))(
  ( (ValueCellFull!6551 (v!9249 V!19505)) (EmptyCell!6551) )
))
(declare-datatypes ((array!31281 0))(
  ( (array!31282 (arr!15040 (Array (_ BitVec 32) ValueCell!6551)) (size!15398 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31281)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9138 0))(
  ( (tuple2!9139 (_1!4579 (_ BitVec 64)) (_2!4579 V!19505)) )
))
(declare-datatypes ((List!9255 0))(
  ( (Nil!9252) (Cons!9251 (h!10107 tuple2!9138) (t!15477 List!9255)) )
))
(declare-datatypes ((ListLongMap!8065 0))(
  ( (ListLongMap!8066 (toList!4048 List!9255)) )
))
(declare-fun contains!2659 (ListLongMap!8065 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2340 (array!31279 array!31281 (_ BitVec 32) (_ BitVec 32) V!19505 V!19505 (_ BitVec 32) Int) ListLongMap!8065)

(assert (=> b!482148 (= lt!218669 (contains!2659 (getCurrentListMap!2340 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!482149 () Bool)

(declare-fun e!283745 () Bool)

(declare-fun e!283746 () Bool)

(declare-fun mapRes!22447 () Bool)

(assert (=> b!482149 (= e!283745 (and e!283746 mapRes!22447))))

(declare-fun condMapEmpty!22447 () Bool)

(declare-fun mapDefault!22447 () ValueCell!6551)

