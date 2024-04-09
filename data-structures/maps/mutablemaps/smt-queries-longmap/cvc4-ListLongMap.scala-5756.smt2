; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74396 () Bool)

(assert start!74396)

(declare-fun b_free!15131 () Bool)

(declare-fun b_next!15131 () Bool)

(assert (=> start!74396 (= b_free!15131 (not b_next!15131))))

(declare-fun tp!53068 () Bool)

(declare-fun b_and!24925 () Bool)

(assert (=> start!74396 (= tp!53068 b_and!24925)))

(declare-fun b!875317 () Bool)

(declare-fun res!594978 () Bool)

(declare-fun e!487326 () Bool)

(assert (=> b!875317 (=> (not res!594978) (not e!487326))))

(declare-datatypes ((array!50860 0))(
  ( (array!50861 (arr!24454 (Array (_ BitVec 32) (_ BitVec 64))) (size!24895 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50860)

(declare-datatypes ((List!17435 0))(
  ( (Nil!17432) (Cons!17431 (h!18562 (_ BitVec 64)) (t!24484 List!17435)) )
))
(declare-fun arrayNoDuplicates!0 (array!50860 (_ BitVec 32) List!17435) Bool)

(assert (=> b!875317 (= res!594978 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17432))))

(declare-fun b!875318 () Bool)

(declare-fun res!594979 () Bool)

(assert (=> b!875318 (=> (not res!594979) (not e!487326))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875318 (= res!594979 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27671 () Bool)

(declare-fun mapRes!27671 () Bool)

(declare-fun tp!53069 () Bool)

(declare-fun e!487325 () Bool)

(assert (=> mapNonEmpty!27671 (= mapRes!27671 (and tp!53069 e!487325))))

(declare-datatypes ((V!28213 0))(
  ( (V!28214 (val!8735 Int)) )
))
(declare-datatypes ((ValueCell!8248 0))(
  ( (ValueCellFull!8248 (v!11160 V!28213)) (EmptyCell!8248) )
))
(declare-fun mapValue!27671 () ValueCell!8248)

(declare-datatypes ((array!50862 0))(
  ( (array!50863 (arr!24455 (Array (_ BitVec 32) ValueCell!8248)) (size!24896 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50862)

(declare-fun mapKey!27671 () (_ BitVec 32))

(declare-fun mapRest!27671 () (Array (_ BitVec 32) ValueCell!8248))

(assert (=> mapNonEmpty!27671 (= (arr!24455 _values!688) (store mapRest!27671 mapKey!27671 mapValue!27671))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!38615 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11548 0))(
  ( (tuple2!11549 (_1!5784 (_ BitVec 64)) (_2!5784 V!28213)) )
))
(declare-datatypes ((List!17436 0))(
  ( (Nil!17433) (Cons!17432 (h!18563 tuple2!11548) (t!24485 List!17436)) )
))
(declare-datatypes ((ListLongMap!10331 0))(
  ( (ListLongMap!10332 (toList!5181 List!17436)) )
))
(declare-fun call!38618 () ListLongMap!10331)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28213)

(declare-fun zeroValue!654 () V!28213)

(declare-fun getCurrentListMapNoExtraKeys!3144 (array!50860 array!50862 (_ BitVec 32) (_ BitVec 32) V!28213 V!28213 (_ BitVec 32) Int) ListLongMap!10331)

(assert (=> bm!38615 (= call!38618 (getCurrentListMapNoExtraKeys!3144 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38619 () ListLongMap!10331)

(declare-fun lt!396129 () array!50862)

(declare-fun bm!38616 () Bool)

(assert (=> bm!38616 (= call!38619 (getCurrentListMapNoExtraKeys!3144 _keys!868 lt!396129 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875319 () Bool)

(declare-fun res!594982 () Bool)

(assert (=> b!875319 (=> (not res!594982) (not e!487326))))

(assert (=> b!875319 (= res!594982 (and (= (size!24896 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24895 _keys!868) (size!24896 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!875320 () Bool)

(declare-fun e!487327 () Bool)

(declare-fun e!487322 () Bool)

(assert (=> b!875320 (= e!487327 (not e!487322))))

(declare-fun res!594981 () Bool)

(assert (=> b!875320 (=> res!594981 e!487322)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875320 (= res!594981 (not (validKeyInArray!0 (select (arr!24454 _keys!868) from!1053))))))

(declare-fun e!487324 () Bool)

(assert (=> b!875320 e!487324))

(declare-fun c!92428 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875320 (= c!92428 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!28213)

(declare-datatypes ((Unit!29904 0))(
  ( (Unit!29905) )
))
(declare-fun lt!396130 () Unit!29904)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!656 (array!50860 array!50862 (_ BitVec 32) (_ BitVec 32) V!28213 V!28213 (_ BitVec 32) (_ BitVec 64) V!28213 (_ BitVec 32) Int) Unit!29904)

(assert (=> b!875320 (= lt!396130 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!656 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875321 () Bool)

(declare-fun res!594977 () Bool)

(assert (=> b!875321 (=> (not res!594977) (not e!487326))))

(assert (=> b!875321 (= res!594977 (and (= (select (arr!24454 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!875322 () Bool)

(declare-fun tp_is_empty!17375 () Bool)

(assert (=> b!875322 (= e!487325 tp_is_empty!17375)))

(declare-fun b!875323 () Bool)

(declare-fun e!487320 () Bool)

(declare-fun e!487321 () Bool)

(assert (=> b!875323 (= e!487320 (and e!487321 mapRes!27671))))

(declare-fun condMapEmpty!27671 () Bool)

(declare-fun mapDefault!27671 () ValueCell!8248)

