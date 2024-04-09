; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74006 () Bool)

(assert start!74006)

(declare-fun b_free!14893 () Bool)

(declare-fun b_next!14893 () Bool)

(assert (=> start!74006 (= b_free!14893 (not b_next!14893))))

(declare-fun tp!52184 () Bool)

(declare-fun b_and!24663 () Bool)

(assert (=> start!74006 (= tp!52184 b_and!24663)))

(declare-fun mapIsEmpty!27143 () Bool)

(declare-fun mapRes!27143 () Bool)

(assert (=> mapIsEmpty!27143 mapRes!27143))

(declare-fun b!869577 () Bool)

(declare-fun res!591085 () Bool)

(declare-fun e!484283 () Bool)

(assert (=> b!869577 (=> (not res!591085) (not e!484283))))

(declare-datatypes ((array!50190 0))(
  ( (array!50191 (arr!24122 (Array (_ BitVec 32) (_ BitVec 64))) (size!24563 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50190)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50190 (_ BitVec 32)) Bool)

(assert (=> b!869577 (= res!591085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27143 () Bool)

(declare-fun tp!52183 () Bool)

(declare-fun e!484285 () Bool)

(assert (=> mapNonEmpty!27143 (= mapRes!27143 (and tp!52183 e!484285))))

(declare-fun mapKey!27143 () (_ BitVec 32))

(declare-datatypes ((V!27753 0))(
  ( (V!27754 (val!8562 Int)) )
))
(declare-datatypes ((ValueCell!8075 0))(
  ( (ValueCellFull!8075 (v!10983 V!27753)) (EmptyCell!8075) )
))
(declare-fun mapRest!27143 () (Array (_ BitVec 32) ValueCell!8075))

(declare-fun mapValue!27143 () ValueCell!8075)

(declare-datatypes ((array!50192 0))(
  ( (array!50193 (arr!24123 (Array (_ BitVec 32) ValueCell!8075)) (size!24564 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50192)

(assert (=> mapNonEmpty!27143 (= (arr!24123 _values!688) (store mapRest!27143 mapKey!27143 mapValue!27143))))

(declare-fun b!869578 () Bool)

(declare-fun res!591084 () Bool)

(assert (=> b!869578 (=> (not res!591084) (not e!484283))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869578 (= res!591084 (validKeyInArray!0 k!854))))

(declare-fun b!869579 () Bool)

(declare-fun e!484284 () Bool)

(assert (=> b!869579 (= e!484284 (not true))))

(declare-fun v!557 () V!27753)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!394843 () array!50192)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27753)

(declare-fun zeroValue!654 () V!27753)

(declare-datatypes ((tuple2!11370 0))(
  ( (tuple2!11371 (_1!5695 (_ BitVec 64)) (_2!5695 V!27753)) )
))
(declare-datatypes ((List!17228 0))(
  ( (Nil!17225) (Cons!17224 (h!18355 tuple2!11370) (t!24273 List!17228)) )
))
(declare-datatypes ((ListLongMap!10153 0))(
  ( (ListLongMap!10154 (toList!5092 List!17228)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3056 (array!50190 array!50192 (_ BitVec 32) (_ BitVec 32) V!27753 V!27753 (_ BitVec 32) Int) ListLongMap!10153)

(declare-fun +!2377 (ListLongMap!10153 tuple2!11370) ListLongMap!10153)

(assert (=> b!869579 (= (getCurrentListMapNoExtraKeys!3056 _keys!868 lt!394843 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2377 (getCurrentListMapNoExtraKeys!3056 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11371 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29804 0))(
  ( (Unit!29805) )
))
(declare-fun lt!394842 () Unit!29804)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!608 (array!50190 array!50192 (_ BitVec 32) (_ BitVec 32) V!27753 V!27753 (_ BitVec 32) (_ BitVec 64) V!27753 (_ BitVec 32) Int) Unit!29804)

(assert (=> b!869579 (= lt!394842 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!608 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869580 () Bool)

(declare-fun e!484282 () Bool)

(declare-fun tp_is_empty!17029 () Bool)

(assert (=> b!869580 (= e!484282 tp_is_empty!17029)))

(declare-fun b!869581 () Bool)

(declare-fun res!591082 () Bool)

(assert (=> b!869581 (=> (not res!591082) (not e!484283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869581 (= res!591082 (validMask!0 mask!1196))))

(declare-fun b!869582 () Bool)

(declare-fun e!484287 () Bool)

(assert (=> b!869582 (= e!484287 (and e!484282 mapRes!27143))))

(declare-fun condMapEmpty!27143 () Bool)

(declare-fun mapDefault!27143 () ValueCell!8075)

