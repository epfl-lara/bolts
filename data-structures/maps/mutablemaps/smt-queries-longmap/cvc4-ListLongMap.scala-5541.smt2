; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73062 () Bool)

(assert start!73062)

(declare-fun b_free!13949 () Bool)

(declare-fun b_next!13949 () Bool)

(assert (=> start!73062 (= b_free!13949 (not b_next!13949))))

(declare-fun tp!49351 () Bool)

(declare-fun b_and!23075 () Bool)

(assert (=> start!73062 (= tp!49351 b_and!23075)))

(declare-fun b!848806 () Bool)

(declare-fun e!473604 () Bool)

(declare-fun e!473597 () Bool)

(assert (=> b!848806 (= e!473604 e!473597)))

(declare-fun res!576780 () Bool)

(assert (=> b!848806 (=> (not res!576780) (not e!473597))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848806 (= res!576780 (= from!1053 i!612))))

(declare-datatypes ((V!26493 0))(
  ( (V!26494 (val!8090 Int)) )
))
(declare-datatypes ((ValueCell!7603 0))(
  ( (ValueCellFull!7603 (v!10511 V!26493)) (EmptyCell!7603) )
))
(declare-datatypes ((array!48362 0))(
  ( (array!48363 (arr!23208 (Array (_ BitVec 32) ValueCell!7603)) (size!23649 (_ BitVec 32))) )
))
(declare-fun lt!382096 () array!48362)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10598 0))(
  ( (tuple2!10599 (_1!5309 (_ BitVec 64)) (_2!5309 V!26493)) )
))
(declare-datatypes ((List!16502 0))(
  ( (Nil!16499) (Cons!16498 (h!17629 tuple2!10598) (t!22905 List!16502)) )
))
(declare-datatypes ((ListLongMap!9381 0))(
  ( (ListLongMap!9382 (toList!4706 List!16502)) )
))
(declare-fun lt!382098 () ListLongMap!9381)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48364 0))(
  ( (array!48365 (arr!23209 (Array (_ BitVec 32) (_ BitVec 64))) (size!23650 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48364)

(declare-fun minValue!654 () V!26493)

(declare-fun zeroValue!654 () V!26493)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2694 (array!48364 array!48362 (_ BitVec 32) (_ BitVec 32) V!26493 V!26493 (_ BitVec 32) Int) ListLongMap!9381)

(assert (=> b!848806 (= lt!382098 (getCurrentListMapNoExtraKeys!2694 _keys!868 lt!382096 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26493)

(declare-fun _values!688 () array!48362)

(assert (=> b!848806 (= lt!382096 (array!48363 (store (arr!23208 _values!688) i!612 (ValueCellFull!7603 v!557)) (size!23649 _values!688)))))

(declare-fun lt!382097 () ListLongMap!9381)

(assert (=> b!848806 (= lt!382097 (getCurrentListMapNoExtraKeys!2694 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848807 () Bool)

(declare-fun res!576771 () Bool)

(assert (=> b!848807 (=> (not res!576771) (not e!473604))))

(assert (=> b!848807 (= res!576771 (and (= (size!23649 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23650 _keys!868) (size!23649 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25727 () Bool)

(declare-fun mapRes!25727 () Bool)

(declare-fun tp!49352 () Bool)

(declare-fun e!473598 () Bool)

(assert (=> mapNonEmpty!25727 (= mapRes!25727 (and tp!49352 e!473598))))

(declare-fun mapRest!25727 () (Array (_ BitVec 32) ValueCell!7603))

(declare-fun mapKey!25727 () (_ BitVec 32))

(declare-fun mapValue!25727 () ValueCell!7603)

(assert (=> mapNonEmpty!25727 (= (arr!23208 _values!688) (store mapRest!25727 mapKey!25727 mapValue!25727))))

(declare-fun b!848808 () Bool)

(declare-fun res!576776 () Bool)

(assert (=> b!848808 (=> (not res!576776) (not e!473604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48364 (_ BitVec 32)) Bool)

(assert (=> b!848808 (= res!576776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun call!37702 () ListLongMap!9381)

(declare-fun bm!37700 () Bool)

(assert (=> bm!37700 (= call!37702 (getCurrentListMapNoExtraKeys!2694 _keys!868 lt!382096 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848809 () Bool)

(declare-fun res!576774 () Bool)

(assert (=> b!848809 (=> (not res!576774) (not e!473604))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!848809 (= res!576774 (and (= (select (arr!23209 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!848810 () Bool)

(declare-fun res!576777 () Bool)

(assert (=> b!848810 (=> (not res!576777) (not e!473604))))

(assert (=> b!848810 (= res!576777 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23650 _keys!868))))))

(declare-fun b!848811 () Bool)

(declare-fun e!473601 () Bool)

(assert (=> b!848811 (= e!473601 true)))

(declare-fun +!2053 (ListLongMap!9381 tuple2!10598) ListLongMap!9381)

(declare-fun get!12221 (ValueCell!7603 V!26493) V!26493)

(declare-fun dynLambda!989 (Int (_ BitVec 64)) V!26493)

(assert (=> b!848811 (= lt!382098 (+!2053 (getCurrentListMapNoExtraKeys!2694 _keys!868 lt!382096 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10599 (select (arr!23209 _keys!868) from!1053) (get!12221 (select (arr!23208 lt!382096) from!1053) (dynLambda!989 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!848812 () Bool)

(declare-fun e!473602 () Bool)

(declare-fun tp_is_empty!16085 () Bool)

(assert (=> b!848812 (= e!473602 tp_is_empty!16085)))

(declare-fun res!576779 () Bool)

(assert (=> start!73062 (=> (not res!576779) (not e!473604))))

(assert (=> start!73062 (= res!576779 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23650 _keys!868))))))

(assert (=> start!73062 e!473604))

(assert (=> start!73062 tp_is_empty!16085))

(assert (=> start!73062 true))

(assert (=> start!73062 tp!49351))

(declare-fun array_inv!18408 (array!48364) Bool)

(assert (=> start!73062 (array_inv!18408 _keys!868)))

(declare-fun e!473599 () Bool)

(declare-fun array_inv!18409 (array!48362) Bool)

(assert (=> start!73062 (and (array_inv!18409 _values!688) e!473599)))

(declare-fun bm!37699 () Bool)

(declare-fun call!37703 () ListLongMap!9381)

(assert (=> bm!37699 (= call!37703 (getCurrentListMapNoExtraKeys!2694 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848813 () Bool)

(assert (=> b!848813 (= e!473599 (and e!473602 mapRes!25727))))

(declare-fun condMapEmpty!25727 () Bool)

(declare-fun mapDefault!25727 () ValueCell!7603)

