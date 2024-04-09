; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74274 () Bool)

(assert start!74274)

(declare-fun b_free!15023 () Bool)

(declare-fun b_next!15023 () Bool)

(assert (=> start!74274 (= b_free!15023 (not b_next!15023))))

(declare-fun tp!52742 () Bool)

(declare-fun b_and!24809 () Bool)

(assert (=> start!74274 (= tp!52742 b_and!24809)))

(declare-fun b!873319 () Bool)

(declare-fun res!593592 () Bool)

(declare-fun e!486362 () Bool)

(assert (=> b!873319 (=> (not res!593592) (not e!486362))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873319 (= res!593592 (validKeyInArray!0 k!854))))

(declare-fun b!873320 () Bool)

(declare-fun res!593585 () Bool)

(assert (=> b!873320 (=> (not res!593585) (not e!486362))))

(declare-datatypes ((array!50648 0))(
  ( (array!50649 (arr!24349 (Array (_ BitVec 32) (_ BitVec 64))) (size!24790 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50648)

(declare-datatypes ((List!17351 0))(
  ( (Nil!17348) (Cons!17347 (h!18478 (_ BitVec 64)) (t!24398 List!17351)) )
))
(declare-fun arrayNoDuplicates!0 (array!50648 (_ BitVec 32) List!17351) Bool)

(assert (=> b!873320 (= res!593585 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17348))))

(declare-fun b!873321 () Bool)

(declare-fun res!593589 () Bool)

(assert (=> b!873321 (=> (not res!593589) (not e!486362))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28069 0))(
  ( (V!28070 (val!8681 Int)) )
))
(declare-datatypes ((ValueCell!8194 0))(
  ( (ValueCellFull!8194 (v!11106 V!28069)) (EmptyCell!8194) )
))
(declare-datatypes ((array!50650 0))(
  ( (array!50651 (arr!24350 (Array (_ BitVec 32) ValueCell!8194)) (size!24791 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50650)

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!873321 (= res!593589 (and (= (size!24791 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24790 _keys!868) (size!24791 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27506 () Bool)

(declare-fun mapRes!27506 () Bool)

(assert (=> mapIsEmpty!27506 mapRes!27506))

(declare-fun b!873322 () Bool)

(declare-fun e!486359 () Bool)

(declare-fun tp_is_empty!17267 () Bool)

(assert (=> b!873322 (= e!486359 tp_is_empty!17267)))

(declare-fun b!873323 () Bool)

(declare-fun res!593587 () Bool)

(assert (=> b!873323 (=> (not res!593587) (not e!486362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873323 (= res!593587 (validMask!0 mask!1196))))

(declare-fun v!557 () V!28069)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28069)

(declare-fun zeroValue!654 () V!28069)

(declare-fun b!873324 () Bool)

(declare-datatypes ((tuple2!11464 0))(
  ( (tuple2!11465 (_1!5742 (_ BitVec 64)) (_2!5742 V!28069)) )
))
(declare-datatypes ((List!17352 0))(
  ( (Nil!17349) (Cons!17348 (h!18479 tuple2!11464) (t!24399 List!17352)) )
))
(declare-datatypes ((ListLongMap!10247 0))(
  ( (ListLongMap!10248 (toList!5139 List!17352)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3103 (array!50648 array!50650 (_ BitVec 32) (_ BitVec 32) V!28069 V!28069 (_ BitVec 32) Int) ListLongMap!10247)

(assert (=> b!873324 (= e!486362 (not (= (getCurrentListMapNoExtraKeys!3103 _keys!868 (array!50651 (store (arr!24350 _values!688) i!612 (ValueCellFull!8194 v!557)) (size!24791 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) (getCurrentListMapNoExtraKeys!3103 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))))

(declare-fun b!873325 () Bool)

(declare-fun e!486361 () Bool)

(assert (=> b!873325 (= e!486361 tp_is_empty!17267)))

(declare-fun b!873326 () Bool)

(declare-fun res!593586 () Bool)

(assert (=> b!873326 (=> (not res!593586) (not e!486362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50648 (_ BitVec 32)) Bool)

(assert (=> b!873326 (= res!593586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27506 () Bool)

(declare-fun tp!52741 () Bool)

(assert (=> mapNonEmpty!27506 (= mapRes!27506 (and tp!52741 e!486359))))

(declare-fun mapRest!27506 () (Array (_ BitVec 32) ValueCell!8194))

(declare-fun mapKey!27506 () (_ BitVec 32))

(declare-fun mapValue!27506 () ValueCell!8194)

(assert (=> mapNonEmpty!27506 (= (arr!24350 _values!688) (store mapRest!27506 mapKey!27506 mapValue!27506))))

(declare-fun res!593590 () Bool)

(assert (=> start!74274 (=> (not res!593590) (not e!486362))))

(assert (=> start!74274 (= res!593590 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24790 _keys!868))))))

(assert (=> start!74274 e!486362))

(assert (=> start!74274 tp_is_empty!17267))

(assert (=> start!74274 true))

(assert (=> start!74274 tp!52742))

(declare-fun array_inv!19190 (array!50648) Bool)

(assert (=> start!74274 (array_inv!19190 _keys!868)))

(declare-fun e!486360 () Bool)

(declare-fun array_inv!19191 (array!50650) Bool)

(assert (=> start!74274 (and (array_inv!19191 _values!688) e!486360)))

(declare-fun b!873327 () Bool)

(declare-fun res!593591 () Bool)

(assert (=> b!873327 (=> (not res!593591) (not e!486362))))

(assert (=> b!873327 (= res!593591 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24790 _keys!868))))))

(declare-fun b!873328 () Bool)

(assert (=> b!873328 (= e!486360 (and e!486361 mapRes!27506))))

(declare-fun condMapEmpty!27506 () Bool)

(declare-fun mapDefault!27506 () ValueCell!8194)

