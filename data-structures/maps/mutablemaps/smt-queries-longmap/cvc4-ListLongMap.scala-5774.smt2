; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74578 () Bool)

(assert start!74578)

(declare-fun b_free!15239 () Bool)

(declare-fun b_next!15239 () Bool)

(assert (=> start!74578 (= b_free!15239 (not b_next!15239))))

(declare-fun tp!53400 () Bool)

(declare-fun b_and!25133 () Bool)

(assert (=> start!74578 (= tp!53400 b_and!25133)))

(declare-fun b!878129 () Bool)

(declare-fun e!488776 () Bool)

(declare-fun tp_is_empty!17483 () Bool)

(assert (=> b!878129 (= e!488776 tp_is_empty!17483)))

(declare-fun b!878130 () Bool)

(declare-fun e!488777 () Bool)

(assert (=> b!878130 (= e!488777 false)))

(declare-datatypes ((V!28357 0))(
  ( (V!28358 (val!8789 Int)) )
))
(declare-fun v!557 () V!28357)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11638 0))(
  ( (tuple2!11639 (_1!5829 (_ BitVec 64)) (_2!5829 V!28357)) )
))
(declare-datatypes ((List!17522 0))(
  ( (Nil!17519) (Cons!17518 (h!18649 tuple2!11638) (t!24619 List!17522)) )
))
(declare-datatypes ((ListLongMap!10421 0))(
  ( (ListLongMap!10422 (toList!5226 List!17522)) )
))
(declare-fun lt!397171 () ListLongMap!10421)

(declare-datatypes ((array!51074 0))(
  ( (array!51075 (arr!24559 (Array (_ BitVec 32) (_ BitVec 64))) (size!25000 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51074)

(declare-datatypes ((ValueCell!8302 0))(
  ( (ValueCellFull!8302 (v!11225 V!28357)) (EmptyCell!8302) )
))
(declare-datatypes ((array!51076 0))(
  ( (array!51077 (arr!24560 (Array (_ BitVec 32) ValueCell!8302)) (size!25001 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51076)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28357)

(declare-fun zeroValue!654 () V!28357)

(declare-fun getCurrentListMapNoExtraKeys!3188 (array!51074 array!51076 (_ BitVec 32) (_ BitVec 32) V!28357 V!28357 (_ BitVec 32) Int) ListLongMap!10421)

(assert (=> b!878130 (= lt!397171 (getCurrentListMapNoExtraKeys!3188 _keys!868 (array!51077 (store (arr!24560 _values!688) i!612 (ValueCellFull!8302 v!557)) (size!25001 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397172 () ListLongMap!10421)

(assert (=> b!878130 (= lt!397172 (getCurrentListMapNoExtraKeys!3188 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878131 () Bool)

(declare-fun res!596678 () Bool)

(assert (=> b!878131 (=> (not res!596678) (not e!488777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51074 (_ BitVec 32)) Bool)

(assert (=> b!878131 (= res!596678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878132 () Bool)

(declare-fun e!488774 () Bool)

(assert (=> b!878132 (= e!488774 tp_is_empty!17483)))

(declare-fun b!878133 () Bool)

(declare-fun res!596684 () Bool)

(assert (=> b!878133 (=> (not res!596684) (not e!488777))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878133 (= res!596684 (validKeyInArray!0 k!854))))

(declare-fun b!878134 () Bool)

(declare-fun e!488778 () Bool)

(declare-fun mapRes!27840 () Bool)

(assert (=> b!878134 (= e!488778 (and e!488774 mapRes!27840))))

(declare-fun condMapEmpty!27840 () Bool)

(declare-fun mapDefault!27840 () ValueCell!8302)

