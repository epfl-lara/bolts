; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73046 () Bool)

(assert start!73046)

(declare-fun b_free!13933 () Bool)

(declare-fun b_next!13933 () Bool)

(assert (=> start!73046 (= b_free!13933 (not b_next!13933))))

(declare-fun tp!49303 () Bool)

(declare-fun b_and!23043 () Bool)

(assert (=> start!73046 (= tp!49303 b_and!23043)))

(declare-fun res!576537 () Bool)

(declare-fun e!473412 () Bool)

(assert (=> start!73046 (=> (not res!576537) (not e!473412))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48330 0))(
  ( (array!48331 (arr!23192 (Array (_ BitVec 32) (_ BitVec 64))) (size!23633 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48330)

(assert (=> start!73046 (= res!576537 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23633 _keys!868))))))

(assert (=> start!73046 e!473412))

(declare-fun tp_is_empty!16069 () Bool)

(assert (=> start!73046 tp_is_empty!16069))

(assert (=> start!73046 true))

(assert (=> start!73046 tp!49303))

(declare-fun array_inv!18394 (array!48330) Bool)

(assert (=> start!73046 (array_inv!18394 _keys!868)))

(declare-datatypes ((V!26473 0))(
  ( (V!26474 (val!8082 Int)) )
))
(declare-datatypes ((ValueCell!7595 0))(
  ( (ValueCellFull!7595 (v!10503 V!26473)) (EmptyCell!7595) )
))
(declare-datatypes ((array!48332 0))(
  ( (array!48333 (arr!23193 (Array (_ BitVec 32) ValueCell!7595)) (size!23634 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48332)

(declare-fun e!473406 () Bool)

(declare-fun array_inv!18395 (array!48332) Bool)

(assert (=> start!73046 (and (array_inv!18395 _values!688) e!473406)))

(declare-fun b!848430 () Bool)

(declare-fun res!576536 () Bool)

(assert (=> b!848430 (=> (not res!576536) (not e!473412))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48330 (_ BitVec 32)) Bool)

(assert (=> b!848430 (= res!576536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!848431 () Bool)

(declare-fun e!473408 () Bool)

(declare-datatypes ((tuple2!10582 0))(
  ( (tuple2!10583 (_1!5301 (_ BitVec 64)) (_2!5301 V!26473)) )
))
(declare-datatypes ((List!16489 0))(
  ( (Nil!16486) (Cons!16485 (h!17616 tuple2!10582) (t!22876 List!16489)) )
))
(declare-datatypes ((ListLongMap!9365 0))(
  ( (ListLongMap!9366 (toList!4698 List!16489)) )
))
(declare-fun call!37655 () ListLongMap!9365)

(declare-fun call!37654 () ListLongMap!9365)

(assert (=> b!848431 (= e!473408 (= call!37655 call!37654))))

(declare-fun b!848432 () Bool)

(declare-fun e!473411 () Bool)

(assert (=> b!848432 (= e!473411 tp_is_empty!16069)))

(declare-fun b!848433 () Bool)

(declare-fun e!473405 () Bool)

(assert (=> b!848433 (= e!473412 e!473405)))

(declare-fun res!576535 () Bool)

(assert (=> b!848433 (=> (not res!576535) (not e!473405))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848433 (= res!576535 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!382001 () array!48332)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!382000 () ListLongMap!9365)

(declare-fun minValue!654 () V!26473)

(declare-fun zeroValue!654 () V!26473)

(declare-fun getCurrentListMapNoExtraKeys!2687 (array!48330 array!48332 (_ BitVec 32) (_ BitVec 32) V!26473 V!26473 (_ BitVec 32) Int) ListLongMap!9365)

(assert (=> b!848433 (= lt!382000 (getCurrentListMapNoExtraKeys!2687 _keys!868 lt!382001 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26473)

(assert (=> b!848433 (= lt!382001 (array!48333 (store (arr!23193 _values!688) i!612 (ValueCellFull!7595 v!557)) (size!23634 _values!688)))))

(declare-fun lt!381999 () ListLongMap!9365)

(assert (=> b!848433 (= lt!381999 (getCurrentListMapNoExtraKeys!2687 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848434 () Bool)

(declare-fun e!473410 () Bool)

(assert (=> b!848434 (= e!473410 tp_is_empty!16069)))

(declare-fun bm!37651 () Bool)

(assert (=> bm!37651 (= call!37654 (getCurrentListMapNoExtraKeys!2687 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848435 () Bool)

(declare-fun res!576533 () Bool)

(assert (=> b!848435 (=> (not res!576533) (not e!473412))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848435 (= res!576533 (validKeyInArray!0 k!854))))

(declare-fun b!848436 () Bool)

(declare-fun mapRes!25703 () Bool)

(assert (=> b!848436 (= e!473406 (and e!473410 mapRes!25703))))

(declare-fun condMapEmpty!25703 () Bool)

(declare-fun mapDefault!25703 () ValueCell!7595)

