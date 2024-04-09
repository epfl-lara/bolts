; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73178 () Bool)

(assert start!73178)

(declare-fun b_free!14065 () Bool)

(declare-fun b_next!14065 () Bool)

(assert (=> start!73178 (= b_free!14065 (not b_next!14065))))

(declare-fun tp!49700 () Bool)

(declare-fun b_and!23307 () Bool)

(assert (=> start!73178 (= tp!49700 b_and!23307)))

(declare-fun mapNonEmpty!25901 () Bool)

(declare-fun mapRes!25901 () Bool)

(declare-fun tp!49699 () Bool)

(declare-fun e!474992 () Bool)

(assert (=> mapNonEmpty!25901 (= mapRes!25901 (and tp!49699 e!474992))))

(declare-datatypes ((V!26649 0))(
  ( (V!26650 (val!8148 Int)) )
))
(declare-datatypes ((ValueCell!7661 0))(
  ( (ValueCellFull!7661 (v!10569 V!26649)) (EmptyCell!7661) )
))
(declare-fun mapRest!25901 () (Array (_ BitVec 32) ValueCell!7661))

(declare-fun mapKey!25901 () (_ BitVec 32))

(declare-datatypes ((array!48590 0))(
  ( (array!48591 (arr!23322 (Array (_ BitVec 32) ValueCell!7661)) (size!23763 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48590)

(declare-fun mapValue!25901 () ValueCell!7661)

(assert (=> mapNonEmpty!25901 (= (arr!23322 _values!688) (store mapRest!25901 mapKey!25901 mapValue!25901))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!38047 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10706 0))(
  ( (tuple2!10707 (_1!5363 (_ BitVec 64)) (_2!5363 V!26649)) )
))
(declare-datatypes ((List!16592 0))(
  ( (Nil!16589) (Cons!16588 (h!17719 tuple2!10706) (t!23111 List!16592)) )
))
(declare-datatypes ((ListLongMap!9489 0))(
  ( (ListLongMap!9490 (toList!4760 List!16592)) )
))
(declare-fun call!38050 () ListLongMap!9489)

(declare-datatypes ((array!48592 0))(
  ( (array!48593 (arr!23323 (Array (_ BitVec 32) (_ BitVec 64))) (size!23764 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48592)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26649)

(declare-fun zeroValue!654 () V!26649)

(declare-fun getCurrentListMapNoExtraKeys!2745 (array!48592 array!48590 (_ BitVec 32) (_ BitVec 32) V!26649 V!26649 (_ BitVec 32) Int) ListLongMap!9489)

(assert (=> bm!38047 (= call!38050 (getCurrentListMapNoExtraKeys!2745 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851532 () Bool)

(declare-fun res!578516 () Bool)

(declare-fun e!474996 () Bool)

(assert (=> b!851532 (=> (not res!578516) (not e!474996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851532 (= res!578516 (validMask!0 mask!1196))))

(declare-fun b!851533 () Bool)

(declare-fun res!578515 () Bool)

(assert (=> b!851533 (=> (not res!578515) (not e!474996))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!851533 (= res!578515 (and (= (select (arr!23323 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun call!38051 () ListLongMap!9489)

(declare-fun b!851534 () Bool)

(declare-fun v!557 () V!26649)

(declare-fun e!474995 () Bool)

(declare-fun +!2102 (ListLongMap!9489 tuple2!10706) ListLongMap!9489)

(assert (=> b!851534 (= e!474995 (= call!38051 (+!2102 call!38050 (tuple2!10707 k!854 v!557))))))

(declare-fun b!851535 () Bool)

(declare-fun res!578517 () Bool)

(assert (=> b!851535 (=> (not res!578517) (not e!474996))))

(declare-datatypes ((List!16593 0))(
  ( (Nil!16590) (Cons!16589 (h!17720 (_ BitVec 64)) (t!23112 List!16593)) )
))
(declare-fun arrayNoDuplicates!0 (array!48592 (_ BitVec 32) List!16593) Bool)

(assert (=> b!851535 (= res!578517 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16590))))

(declare-fun b!851536 () Bool)

(declare-fun e!474989 () Bool)

(declare-fun tp_is_empty!16201 () Bool)

(assert (=> b!851536 (= e!474989 tp_is_empty!16201)))

(declare-fun b!851537 () Bool)

(declare-fun e!474991 () Bool)

(assert (=> b!851537 (= e!474991 true)))

(declare-fun lt!383566 () ListLongMap!9489)

(declare-fun lt!383561 () V!26649)

(declare-fun lt!383563 () tuple2!10706)

(assert (=> b!851537 (= (+!2102 lt!383566 lt!383563) (+!2102 (+!2102 lt!383566 (tuple2!10707 k!854 lt!383561)) lt!383563))))

(declare-fun lt!383565 () V!26649)

(assert (=> b!851537 (= lt!383563 (tuple2!10707 k!854 lt!383565))))

(declare-datatypes ((Unit!29050 0))(
  ( (Unit!29051) )
))
(declare-fun lt!383562 () Unit!29050)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!286 (ListLongMap!9489 (_ BitVec 64) V!26649 V!26649) Unit!29050)

(assert (=> b!851537 (= lt!383562 (addSameAsAddTwiceSameKeyDiffValues!286 lt!383566 k!854 lt!383561 lt!383565))))

(declare-fun lt!383567 () V!26649)

(declare-fun get!12306 (ValueCell!7661 V!26649) V!26649)

(assert (=> b!851537 (= lt!383561 (get!12306 (select (arr!23322 _values!688) from!1053) lt!383567))))

(declare-fun lt!383560 () ListLongMap!9489)

(assert (=> b!851537 (= lt!383560 (+!2102 lt!383566 (tuple2!10707 (select (arr!23323 _keys!868) from!1053) lt!383565)))))

(assert (=> b!851537 (= lt!383565 (get!12306 (select (store (arr!23322 _values!688) i!612 (ValueCellFull!7661 v!557)) from!1053) lt!383567))))

(declare-fun dynLambda!1034 (Int (_ BitVec 64)) V!26649)

(assert (=> b!851537 (= lt!383567 (dynLambda!1034 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383568 () array!48590)

(assert (=> b!851537 (= lt!383566 (getCurrentListMapNoExtraKeys!2745 _keys!868 lt!383568 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851538 () Bool)

(declare-fun res!578511 () Bool)

(assert (=> b!851538 (=> (not res!578511) (not e!474996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48592 (_ BitVec 32)) Bool)

(assert (=> b!851538 (= res!578511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!38048 () Bool)

(assert (=> bm!38048 (= call!38051 (getCurrentListMapNoExtraKeys!2745 _keys!868 lt!383568 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!578519 () Bool)

(assert (=> start!73178 (=> (not res!578519) (not e!474996))))

(assert (=> start!73178 (= res!578519 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23764 _keys!868))))))

(assert (=> start!73178 e!474996))

(assert (=> start!73178 tp_is_empty!16201))

(assert (=> start!73178 true))

(assert (=> start!73178 tp!49700))

(declare-fun array_inv!18490 (array!48592) Bool)

(assert (=> start!73178 (array_inv!18490 _keys!868)))

(declare-fun e!474990 () Bool)

(declare-fun array_inv!18491 (array!48590) Bool)

(assert (=> start!73178 (and (array_inv!18491 _values!688) e!474990)))

(declare-fun b!851539 () Bool)

(assert (=> b!851539 (= e!474990 (and e!474989 mapRes!25901))))

(declare-fun condMapEmpty!25901 () Bool)

(declare-fun mapDefault!25901 () ValueCell!7661)

