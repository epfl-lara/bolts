; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74664 () Bool)

(assert start!74664)

(declare-fun b_free!15305 () Bool)

(declare-fun b_next!15305 () Bool)

(assert (=> start!74664 (= b_free!15305 (not b_next!15305))))

(declare-fun tp!53600 () Bool)

(declare-fun b_and!25231 () Bool)

(assert (=> start!74664 (= tp!53600 b_and!25231)))

(declare-fun mapNonEmpty!27942 () Bool)

(declare-fun mapRes!27942 () Bool)

(declare-fun tp!53601 () Bool)

(declare-fun e!489469 () Bool)

(assert (=> mapNonEmpty!27942 (= mapRes!27942 (and tp!53601 e!489469))))

(declare-fun mapKey!27942 () (_ BitVec 32))

(declare-datatypes ((V!28445 0))(
  ( (V!28446 (val!8822 Int)) )
))
(declare-datatypes ((ValueCell!8335 0))(
  ( (ValueCellFull!8335 (v!11262 V!28445)) (EmptyCell!8335) )
))
(declare-fun mapRest!27942 () (Array (_ BitVec 32) ValueCell!8335))

(declare-fun mapValue!27942 () ValueCell!8335)

(declare-datatypes ((array!51206 0))(
  ( (array!51207 (arr!24624 (Array (_ BitVec 32) ValueCell!8335)) (size!25065 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51206)

(assert (=> mapNonEmpty!27942 (= (arr!24624 _values!688) (store mapRest!27942 mapKey!27942 mapValue!27942))))

(declare-fun b!879479 () Bool)

(declare-fun res!597640 () Bool)

(declare-fun e!489468 () Bool)

(assert (=> b!879479 (=> (not res!597640) (not e!489468))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879479 (= res!597640 (validKeyInArray!0 k!854))))

(declare-fun b!879480 () Bool)

(declare-fun e!489466 () Bool)

(declare-fun tp_is_empty!17549 () Bool)

(assert (=> b!879480 (= e!489466 tp_is_empty!17549)))

(declare-fun b!879482 () Bool)

(declare-fun e!489471 () Bool)

(declare-fun e!489472 () Bool)

(assert (=> b!879482 (= e!489471 (not e!489472))))

(declare-fun res!597635 () Bool)

(assert (=> b!879482 (=> res!597635 e!489472)))

(declare-datatypes ((array!51208 0))(
  ( (array!51209 (arr!24625 (Array (_ BitVec 32) (_ BitVec 64))) (size!25066 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51208)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879482 (= res!597635 (not (validKeyInArray!0 (select (arr!24625 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11690 0))(
  ( (tuple2!11691 (_1!5855 (_ BitVec 64)) (_2!5855 V!28445)) )
))
(declare-datatypes ((List!17566 0))(
  ( (Nil!17563) (Cons!17562 (h!18693 tuple2!11690) (t!24681 List!17566)) )
))
(declare-datatypes ((ListLongMap!10473 0))(
  ( (ListLongMap!10474 (toList!5252 List!17566)) )
))
(declare-fun lt!397644 () ListLongMap!10473)

(declare-fun lt!397641 () ListLongMap!10473)

(assert (=> b!879482 (= lt!397644 lt!397641)))

(declare-fun lt!397646 () ListLongMap!10473)

(declare-fun v!557 () V!28445)

(declare-fun +!2458 (ListLongMap!10473 tuple2!11690) ListLongMap!10473)

(assert (=> b!879482 (= lt!397641 (+!2458 lt!397646 (tuple2!11691 k!854 v!557)))))

(declare-fun lt!397645 () array!51206)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28445)

(declare-fun zeroValue!654 () V!28445)

(declare-fun getCurrentListMapNoExtraKeys!3213 (array!51208 array!51206 (_ BitVec 32) (_ BitVec 32) V!28445 V!28445 (_ BitVec 32) Int) ListLongMap!10473)

(assert (=> b!879482 (= lt!397644 (getCurrentListMapNoExtraKeys!3213 _keys!868 lt!397645 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879482 (= lt!397646 (getCurrentListMapNoExtraKeys!3213 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29994 0))(
  ( (Unit!29995) )
))
(declare-fun lt!397643 () Unit!29994)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!689 (array!51208 array!51206 (_ BitVec 32) (_ BitVec 32) V!28445 V!28445 (_ BitVec 32) (_ BitVec 64) V!28445 (_ BitVec 32) Int) Unit!29994)

(assert (=> b!879482 (= lt!397643 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!689 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879483 () Bool)

(declare-fun res!597643 () Bool)

(assert (=> b!879483 (=> (not res!597643) (not e!489468))))

(assert (=> b!879483 (= res!597643 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25066 _keys!868))))))

(declare-fun b!879484 () Bool)

(declare-fun res!597641 () Bool)

(assert (=> b!879484 (=> (not res!597641) (not e!489468))))

(assert (=> b!879484 (= res!597641 (and (= (select (arr!24625 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!879485 () Bool)

(declare-fun res!597644 () Bool)

(assert (=> b!879485 (=> (not res!597644) (not e!489468))))

(assert (=> b!879485 (= res!597644 (and (= (size!25065 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25066 _keys!868) (size!25065 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879486 () Bool)

(declare-fun res!597637 () Bool)

(assert (=> b!879486 (=> (not res!597637) (not e!489468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51208 (_ BitVec 32)) Bool)

(assert (=> b!879486 (= res!597637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879487 () Bool)

(assert (=> b!879487 (= e!489472 (or (not (= (select (arr!24625 _keys!868) from!1053) k!854)) (bvslt (size!25066 _keys!868) #b01111111111111111111111111111111)))))

(declare-fun lt!397642 () ListLongMap!10473)

(declare-fun get!12956 (ValueCell!8335 V!28445) V!28445)

(declare-fun dynLambda!1229 (Int (_ BitVec 64)) V!28445)

(assert (=> b!879487 (= lt!397642 (+!2458 lt!397641 (tuple2!11691 (select (arr!24625 _keys!868) from!1053) (get!12956 (select (arr!24624 _values!688) from!1053) (dynLambda!1229 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879488 () Bool)

(assert (=> b!879488 (= e!489468 e!489471)))

(declare-fun res!597638 () Bool)

(assert (=> b!879488 (=> (not res!597638) (not e!489471))))

(assert (=> b!879488 (= res!597638 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!879488 (= lt!397642 (getCurrentListMapNoExtraKeys!3213 _keys!868 lt!397645 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!879488 (= lt!397645 (array!51207 (store (arr!24624 _values!688) i!612 (ValueCellFull!8335 v!557)) (size!25065 _values!688)))))

(declare-fun lt!397647 () ListLongMap!10473)

(assert (=> b!879488 (= lt!397647 (getCurrentListMapNoExtraKeys!3213 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!597639 () Bool)

(assert (=> start!74664 (=> (not res!597639) (not e!489468))))

(assert (=> start!74664 (= res!597639 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25066 _keys!868))))))

(assert (=> start!74664 e!489468))

(assert (=> start!74664 tp_is_empty!17549))

(assert (=> start!74664 true))

(assert (=> start!74664 tp!53600))

(declare-fun array_inv!19384 (array!51208) Bool)

(assert (=> start!74664 (array_inv!19384 _keys!868)))

(declare-fun e!489470 () Bool)

(declare-fun array_inv!19385 (array!51206) Bool)

(assert (=> start!74664 (and (array_inv!19385 _values!688) e!489470)))

(declare-fun b!879481 () Bool)

(declare-fun res!597636 () Bool)

(assert (=> b!879481 (=> (not res!597636) (not e!489468))))

(declare-datatypes ((List!17567 0))(
  ( (Nil!17564) (Cons!17563 (h!18694 (_ BitVec 64)) (t!24682 List!17567)) )
))
(declare-fun arrayNoDuplicates!0 (array!51208 (_ BitVec 32) List!17567) Bool)

(assert (=> b!879481 (= res!597636 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17564))))

(declare-fun b!879489 () Bool)

(declare-fun res!597642 () Bool)

(assert (=> b!879489 (=> (not res!597642) (not e!489468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!879489 (= res!597642 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27942 () Bool)

(assert (=> mapIsEmpty!27942 mapRes!27942))

(declare-fun b!879490 () Bool)

(assert (=> b!879490 (= e!489470 (and e!489466 mapRes!27942))))

(declare-fun condMapEmpty!27942 () Bool)

(declare-fun mapDefault!27942 () ValueCell!8335)

