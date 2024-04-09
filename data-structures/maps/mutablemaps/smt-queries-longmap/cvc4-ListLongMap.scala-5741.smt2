; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74306 () Bool)

(assert start!74306)

(declare-fun b_free!15041 () Bool)

(declare-fun b_next!15041 () Bool)

(assert (=> start!74306 (= b_free!15041 (not b_next!15041))))

(declare-fun tp!52799 () Bool)

(declare-fun b_and!24835 () Bool)

(assert (=> start!74306 (= tp!52799 b_and!24835)))

(declare-fun b!873701 () Bool)

(declare-fun res!593833 () Bool)

(declare-fun e!486551 () Bool)

(assert (=> b!873701 (=> (not res!593833) (not e!486551))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873701 (= res!593833 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!27536 () Bool)

(declare-fun mapRes!27536 () Bool)

(assert (=> mapIsEmpty!27536 mapRes!27536))

(declare-fun b!873702 () Bool)

(assert (=> b!873702 (= e!486551 false)))

(declare-datatypes ((V!28093 0))(
  ( (V!28094 (val!8690 Int)) )
))
(declare-fun v!557 () V!28093)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11480 0))(
  ( (tuple2!11481 (_1!5750 (_ BitVec 64)) (_2!5750 V!28093)) )
))
(declare-datatypes ((List!17368 0))(
  ( (Nil!17365) (Cons!17364 (h!18495 tuple2!11480) (t!24417 List!17368)) )
))
(declare-datatypes ((ListLongMap!10263 0))(
  ( (ListLongMap!10264 (toList!5147 List!17368)) )
))
(declare-fun lt!395781 () ListLongMap!10263)

(declare-datatypes ((array!50686 0))(
  ( (array!50687 (arr!24367 (Array (_ BitVec 32) (_ BitVec 64))) (size!24808 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50686)

(declare-datatypes ((ValueCell!8203 0))(
  ( (ValueCellFull!8203 (v!11115 V!28093)) (EmptyCell!8203) )
))
(declare-datatypes ((array!50688 0))(
  ( (array!50689 (arr!24368 (Array (_ BitVec 32) ValueCell!8203)) (size!24809 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50688)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28093)

(declare-fun zeroValue!654 () V!28093)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3111 (array!50686 array!50688 (_ BitVec 32) (_ BitVec 32) V!28093 V!28093 (_ BitVec 32) Int) ListLongMap!10263)

(assert (=> b!873702 (= lt!395781 (getCurrentListMapNoExtraKeys!3111 _keys!868 (array!50689 (store (arr!24368 _values!688) i!612 (ValueCellFull!8203 v!557)) (size!24809 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395782 () ListLongMap!10263)

(assert (=> b!873702 (= lt!395782 (getCurrentListMapNoExtraKeys!3111 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873703 () Bool)

(declare-fun res!593835 () Bool)

(assert (=> b!873703 (=> (not res!593835) (not e!486551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50686 (_ BitVec 32)) Bool)

(assert (=> b!873703 (= res!593835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873704 () Bool)

(declare-fun e!486549 () Bool)

(declare-fun e!486550 () Bool)

(assert (=> b!873704 (= e!486549 (and e!486550 mapRes!27536))))

(declare-fun condMapEmpty!27536 () Bool)

(declare-fun mapDefault!27536 () ValueCell!8203)

