; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43516 () Bool)

(assert start!43516)

(declare-fun b_free!12287 () Bool)

(declare-fun b_next!12287 () Bool)

(assert (=> start!43516 (= b_free!12287 (not b_next!12287))))

(declare-fun tp!43143 () Bool)

(declare-fun b_and!21065 () Bool)

(assert (=> start!43516 (= tp!43143 b_and!21065)))

(declare-fun mapIsEmpty!22408 () Bool)

(declare-fun mapRes!22408 () Bool)

(assert (=> mapIsEmpty!22408 mapRes!22408))

(declare-fun res!287332 () Bool)

(declare-fun e!283550 () Bool)

(assert (=> start!43516 (=> (not res!287332) (not e!283550))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43516 (= res!287332 (validMask!0 mask!2352))))

(assert (=> start!43516 e!283550))

(assert (=> start!43516 true))

(declare-fun tp_is_empty!13799 () Bool)

(assert (=> start!43516 tp_is_empty!13799))

(declare-datatypes ((V!19469 0))(
  ( (V!19470 (val!6947 Int)) )
))
(declare-datatypes ((ValueCell!6538 0))(
  ( (ValueCellFull!6538 (v!9236 V!19469)) (EmptyCell!6538) )
))
(declare-datatypes ((array!31229 0))(
  ( (array!31230 (arr!15014 (Array (_ BitVec 32) ValueCell!6538)) (size!15372 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31229)

(declare-fun e!283549 () Bool)

(declare-fun array_inv!10808 (array!31229) Bool)

(assert (=> start!43516 (and (array_inv!10808 _values!1516) e!283549)))

(assert (=> start!43516 tp!43143))

(declare-datatypes ((array!31231 0))(
  ( (array!31232 (arr!15015 (Array (_ BitVec 32) (_ BitVec 64))) (size!15373 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31231)

(declare-fun array_inv!10809 (array!31231) Bool)

(assert (=> start!43516 (array_inv!10809 _keys!1874)))

(declare-fun b!481874 () Bool)

(declare-fun e!283548 () Bool)

(assert (=> b!481874 (= e!283548 tp_is_empty!13799)))

(declare-fun b!481875 () Bool)

(declare-fun res!287329 () Bool)

(assert (=> b!481875 (=> (not res!287329) (not e!283550))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!481875 (= res!287329 (and (= (size!15372 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15373 _keys!1874) (size!15372 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481876 () Bool)

(declare-fun res!287331 () Bool)

(assert (=> b!481876 (=> (not res!287331) (not e!283550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31231 (_ BitVec 32)) Bool)

(assert (=> b!481876 (= res!287331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481877 () Bool)

(assert (=> b!481877 (= e!283550 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19469)

(declare-fun zeroValue!1458 () V!19469)

(declare-fun lt!218630 () Bool)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9120 0))(
  ( (tuple2!9121 (_1!4570 (_ BitVec 64)) (_2!4570 V!19469)) )
))
(declare-datatypes ((List!9235 0))(
  ( (Nil!9232) (Cons!9231 (h!10087 tuple2!9120) (t!15457 List!9235)) )
))
(declare-datatypes ((ListLongMap!8047 0))(
  ( (ListLongMap!8048 (toList!4039 List!9235)) )
))
(declare-fun contains!2650 (ListLongMap!8047 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2331 (array!31231 array!31229 (_ BitVec 32) (_ BitVec 32) V!19469 V!19469 (_ BitVec 32) Int) ListLongMap!8047)

(assert (=> b!481877 (= lt!218630 (contains!2650 (getCurrentListMap!2331 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun mapNonEmpty!22408 () Bool)

(declare-fun tp!43144 () Bool)

(assert (=> mapNonEmpty!22408 (= mapRes!22408 (and tp!43144 e!283548))))

(declare-fun mapValue!22408 () ValueCell!6538)

(declare-fun mapRest!22408 () (Array (_ BitVec 32) ValueCell!6538))

(declare-fun mapKey!22408 () (_ BitVec 32))

(assert (=> mapNonEmpty!22408 (= (arr!15014 _values!1516) (store mapRest!22408 mapKey!22408 mapValue!22408))))

(declare-fun b!481878 () Bool)

(declare-fun e!283552 () Bool)

(assert (=> b!481878 (= e!283552 tp_is_empty!13799)))

(declare-fun b!481879 () Bool)

(declare-fun res!287330 () Bool)

(assert (=> b!481879 (=> (not res!287330) (not e!283550))))

(declare-datatypes ((List!9236 0))(
  ( (Nil!9233) (Cons!9232 (h!10088 (_ BitVec 64)) (t!15458 List!9236)) )
))
(declare-fun arrayNoDuplicates!0 (array!31231 (_ BitVec 32) List!9236) Bool)

(assert (=> b!481879 (= res!287330 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9233))))

(declare-fun b!481880 () Bool)

(assert (=> b!481880 (= e!283549 (and e!283552 mapRes!22408))))

(declare-fun condMapEmpty!22408 () Bool)

(declare-fun mapDefault!22408 () ValueCell!6538)

