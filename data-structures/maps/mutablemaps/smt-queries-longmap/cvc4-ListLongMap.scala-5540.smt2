; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73056 () Bool)

(assert start!73056)

(declare-fun b_free!13943 () Bool)

(declare-fun b_next!13943 () Bool)

(assert (=> start!73056 (= b_free!13943 (not b_next!13943))))

(declare-fun tp!49334 () Bool)

(declare-fun b_and!23063 () Bool)

(assert (=> start!73056 (= tp!49334 b_and!23063)))

(declare-fun b!848665 () Bool)

(declare-fun res!576689 () Bool)

(declare-fun e!473530 () Bool)

(assert (=> b!848665 (=> (not res!576689) (not e!473530))))

(declare-datatypes ((array!48350 0))(
  ( (array!48351 (arr!23202 (Array (_ BitVec 32) (_ BitVec 64))) (size!23643 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48350)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48350 (_ BitVec 32)) Bool)

(assert (=> b!848665 (= res!576689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25718 () Bool)

(declare-fun mapRes!25718 () Bool)

(declare-fun tp!49333 () Bool)

(declare-fun e!473532 () Bool)

(assert (=> mapNonEmpty!25718 (= mapRes!25718 (and tp!49333 e!473532))))

(declare-datatypes ((V!26485 0))(
  ( (V!26486 (val!8087 Int)) )
))
(declare-datatypes ((ValueCell!7600 0))(
  ( (ValueCellFull!7600 (v!10508 V!26485)) (EmptyCell!7600) )
))
(declare-fun mapValue!25718 () ValueCell!7600)

(declare-fun mapRest!25718 () (Array (_ BitVec 32) ValueCell!7600))

(declare-datatypes ((array!48352 0))(
  ( (array!48353 (arr!23203 (Array (_ BitVec 32) ValueCell!7600)) (size!23644 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48352)

(declare-fun mapKey!25718 () (_ BitVec 32))

(assert (=> mapNonEmpty!25718 (= (arr!23203 _values!688) (store mapRest!25718 mapKey!25718 mapValue!25718))))

(declare-fun lt!382061 () array!48352)

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37681 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10592 0))(
  ( (tuple2!10593 (_1!5306 (_ BitVec 64)) (_2!5306 V!26485)) )
))
(declare-datatypes ((List!16497 0))(
  ( (Nil!16494) (Cons!16493 (h!17624 tuple2!10592) (t!22894 List!16497)) )
))
(declare-datatypes ((ListLongMap!9375 0))(
  ( (ListLongMap!9376 (toList!4703 List!16497)) )
))
(declare-fun call!37684 () ListLongMap!9375)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26485)

(declare-fun zeroValue!654 () V!26485)

(declare-fun getCurrentListMapNoExtraKeys!2691 (array!48350 array!48352 (_ BitVec 32) (_ BitVec 32) V!26485 V!26485 (_ BitVec 32) Int) ListLongMap!9375)

(assert (=> bm!37681 (= call!37684 (getCurrentListMapNoExtraKeys!2691 _keys!868 lt!382061 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!576685 () Bool)

(assert (=> start!73056 (=> (not res!576685) (not e!473530))))

(assert (=> start!73056 (= res!576685 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23643 _keys!868))))))

(assert (=> start!73056 e!473530))

(declare-fun tp_is_empty!16079 () Bool)

(assert (=> start!73056 tp_is_empty!16079))

(assert (=> start!73056 true))

(assert (=> start!73056 tp!49334))

(declare-fun array_inv!18402 (array!48350) Bool)

(assert (=> start!73056 (array_inv!18402 _keys!868)))

(declare-fun e!473525 () Bool)

(declare-fun array_inv!18403 (array!48352) Bool)

(assert (=> start!73056 (and (array_inv!18403 _values!688) e!473525)))

(declare-fun b!848666 () Bool)

(declare-fun e!473526 () Bool)

(assert (=> b!848666 (= e!473530 e!473526)))

(declare-fun res!576682 () Bool)

(assert (=> b!848666 (=> (not res!576682) (not e!473526))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848666 (= res!576682 (= from!1053 i!612))))

(declare-fun lt!382062 () ListLongMap!9375)

(assert (=> b!848666 (= lt!382062 (getCurrentListMapNoExtraKeys!2691 _keys!868 lt!382061 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26485)

(assert (=> b!848666 (= lt!382061 (array!48353 (store (arr!23203 _values!688) i!612 (ValueCellFull!7600 v!557)) (size!23644 _values!688)))))

(declare-fun lt!382060 () ListLongMap!9375)

(assert (=> b!848666 (= lt!382060 (getCurrentListMapNoExtraKeys!2691 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848667 () Bool)

(declare-fun res!576683 () Bool)

(assert (=> b!848667 (=> (not res!576683) (not e!473530))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!848667 (= res!576683 (and (= (select (arr!23202 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!848668 () Bool)

(declare-fun res!576686 () Bool)

(assert (=> b!848668 (=> (not res!576686) (not e!473530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848668 (= res!576686 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25718 () Bool)

(assert (=> mapIsEmpty!25718 mapRes!25718))

(declare-fun e!473531 () Bool)

(declare-fun b!848669 () Bool)

(declare-fun call!37685 () ListLongMap!9375)

(declare-fun +!2051 (ListLongMap!9375 tuple2!10592) ListLongMap!9375)

(assert (=> b!848669 (= e!473531 (= call!37684 (+!2051 call!37685 (tuple2!10593 k!854 v!557))))))

(declare-fun bm!37682 () Bool)

(assert (=> bm!37682 (= call!37685 (getCurrentListMapNoExtraKeys!2691 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848670 () Bool)

(assert (=> b!848670 (= e!473531 (= call!37684 call!37685))))

(declare-fun b!848671 () Bool)

(assert (=> b!848671 (= e!473532 tp_is_empty!16079)))

(declare-fun b!848672 () Bool)

(declare-fun e!473527 () Bool)

(assert (=> b!848672 (= e!473526 (not e!473527))))

(declare-fun res!576690 () Bool)

(assert (=> b!848672 (=> res!576690 e!473527)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848672 (= res!576690 (not (validKeyInArray!0 (select (arr!23202 _keys!868) from!1053))))))

(assert (=> b!848672 e!473531))

(declare-fun c!91503 () Bool)

(assert (=> b!848672 (= c!91503 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28960 0))(
  ( (Unit!28961) )
))
(declare-fun lt!382059 () Unit!28960)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!329 (array!48350 array!48352 (_ BitVec 32) (_ BitVec 32) V!26485 V!26485 (_ BitVec 32) (_ BitVec 64) V!26485 (_ BitVec 32) Int) Unit!28960)

(assert (=> b!848672 (= lt!382059 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!329 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848673 () Bool)

(declare-fun res!576681 () Bool)

(assert (=> b!848673 (=> (not res!576681) (not e!473530))))

(assert (=> b!848673 (= res!576681 (validKeyInArray!0 k!854))))

(declare-fun b!848674 () Bool)

(declare-fun e!473529 () Bool)

(assert (=> b!848674 (= e!473525 (and e!473529 mapRes!25718))))

(declare-fun condMapEmpty!25718 () Bool)

(declare-fun mapDefault!25718 () ValueCell!7600)

