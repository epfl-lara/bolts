; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74302 () Bool)

(assert start!74302)

(declare-fun b_free!15037 () Bool)

(declare-fun b_next!15037 () Bool)

(assert (=> start!74302 (= b_free!15037 (not b_next!15037))))

(declare-fun tp!52787 () Bool)

(declare-fun b_and!24831 () Bool)

(assert (=> start!74302 (= tp!52787 b_and!24831)))

(declare-fun b!873635 () Bool)

(declare-fun e!486521 () Bool)

(declare-fun tp_is_empty!17281 () Bool)

(assert (=> b!873635 (= e!486521 tp_is_empty!17281)))

(declare-fun b!873636 () Bool)

(declare-fun res!593786 () Bool)

(declare-fun e!486519 () Bool)

(assert (=> b!873636 (=> (not res!593786) (not e!486519))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873636 (= res!593786 (validKeyInArray!0 k!854))))

(declare-fun b!873637 () Bool)

(declare-fun res!593788 () Bool)

(assert (=> b!873637 (=> (not res!593788) (not e!486519))))

(declare-datatypes ((array!50678 0))(
  ( (array!50679 (arr!24363 (Array (_ BitVec 32) (_ BitVec 64))) (size!24804 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50678)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50678 (_ BitVec 32)) Bool)

(assert (=> b!873637 (= res!593788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873638 () Bool)

(declare-fun res!593785 () Bool)

(assert (=> b!873638 (=> (not res!593785) (not e!486519))))

(declare-datatypes ((List!17364 0))(
  ( (Nil!17361) (Cons!17360 (h!18491 (_ BitVec 64)) (t!24413 List!17364)) )
))
(declare-fun arrayNoDuplicates!0 (array!50678 (_ BitVec 32) List!17364) Bool)

(assert (=> b!873638 (= res!593785 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17361))))

(declare-fun b!873639 () Bool)

(declare-fun res!593787 () Bool)

(assert (=> b!873639 (=> (not res!593787) (not e!486519))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!873639 (= res!593787 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24804 _keys!868))))))

(declare-fun b!873640 () Bool)

(declare-fun res!593790 () Bool)

(assert (=> b!873640 (=> (not res!593790) (not e!486519))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!873640 (= res!593790 (and (= (select (arr!24363 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!873641 () Bool)

(declare-fun res!593789 () Bool)

(assert (=> b!873641 (=> (not res!593789) (not e!486519))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28089 0))(
  ( (V!28090 (val!8688 Int)) )
))
(declare-datatypes ((ValueCell!8201 0))(
  ( (ValueCellFull!8201 (v!11113 V!28089)) (EmptyCell!8201) )
))
(declare-datatypes ((array!50680 0))(
  ( (array!50681 (arr!24364 (Array (_ BitVec 32) ValueCell!8201)) (size!24805 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50680)

(assert (=> b!873641 (= res!593789 (and (= (size!24805 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24804 _keys!868) (size!24805 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873642 () Bool)

(assert (=> b!873642 (= e!486519 false)))

(declare-datatypes ((tuple2!11476 0))(
  ( (tuple2!11477 (_1!5748 (_ BitVec 64)) (_2!5748 V!28089)) )
))
(declare-datatypes ((List!17365 0))(
  ( (Nil!17362) (Cons!17361 (h!18492 tuple2!11476) (t!24414 List!17365)) )
))
(declare-datatypes ((ListLongMap!10259 0))(
  ( (ListLongMap!10260 (toList!5145 List!17365)) )
))
(declare-fun lt!395770 () ListLongMap!10259)

(declare-fun v!557 () V!28089)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28089)

(declare-fun zeroValue!654 () V!28089)

(declare-fun getCurrentListMapNoExtraKeys!3109 (array!50678 array!50680 (_ BitVec 32) (_ BitVec 32) V!28089 V!28089 (_ BitVec 32) Int) ListLongMap!10259)

(assert (=> b!873642 (= lt!395770 (getCurrentListMapNoExtraKeys!3109 _keys!868 (array!50681 (store (arr!24364 _values!688) i!612 (ValueCellFull!8201 v!557)) (size!24805 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395769 () ListLongMap!10259)

(assert (=> b!873642 (= lt!395769 (getCurrentListMapNoExtraKeys!3109 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873643 () Bool)

(declare-fun e!486520 () Bool)

(assert (=> b!873643 (= e!486520 tp_is_empty!17281)))

(declare-fun b!873644 () Bool)

(declare-fun e!486522 () Bool)

(declare-fun mapRes!27530 () Bool)

(assert (=> b!873644 (= e!486522 (and e!486520 mapRes!27530))))

(declare-fun condMapEmpty!27530 () Bool)

(declare-fun mapDefault!27530 () ValueCell!8201)

