; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73190 () Bool)

(assert start!73190)

(declare-fun b_free!14077 () Bool)

(declare-fun b_next!14077 () Bool)

(assert (=> start!73190 (= b_free!14077 (not b_next!14077))))

(declare-fun tp!49736 () Bool)

(declare-fun b_and!23331 () Bool)

(assert (=> start!73190 (= tp!49736 b_and!23331)))

(declare-fun b!851814 () Bool)

(declare-fun res!578700 () Bool)

(declare-fun e!475134 () Bool)

(assert (=> b!851814 (=> (not res!578700) (not e!475134))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851814 (= res!578700 (validKeyInArray!0 k!854))))

(declare-datatypes ((V!26665 0))(
  ( (V!26666 (val!8154 Int)) )
))
(declare-datatypes ((ValueCell!7667 0))(
  ( (ValueCellFull!7667 (v!10575 V!26665)) (EmptyCell!7667) )
))
(declare-datatypes ((array!48614 0))(
  ( (array!48615 (arr!23334 (Array (_ BitVec 32) ValueCell!7667)) (size!23775 (_ BitVec 32))) )
))
(declare-fun lt!383740 () array!48614)

(declare-fun bm!38083 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48616 0))(
  ( (array!48617 (arr!23335 (Array (_ BitVec 32) (_ BitVec 64))) (size!23776 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48616)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26665)

(declare-fun zeroValue!654 () V!26665)

(declare-datatypes ((tuple2!10718 0))(
  ( (tuple2!10719 (_1!5369 (_ BitVec 64)) (_2!5369 V!26665)) )
))
(declare-datatypes ((List!16603 0))(
  ( (Nil!16600) (Cons!16599 (h!17730 tuple2!10718) (t!23134 List!16603)) )
))
(declare-datatypes ((ListLongMap!9501 0))(
  ( (ListLongMap!9502 (toList!4766 List!16603)) )
))
(declare-fun call!38087 () ListLongMap!9501)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2751 (array!48616 array!48614 (_ BitVec 32) (_ BitVec 32) V!26665 V!26665 (_ BitVec 32) Int) ListLongMap!9501)

(assert (=> bm!38083 (= call!38087 (getCurrentListMapNoExtraKeys!2751 _keys!868 lt!383740 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25919 () Bool)

(declare-fun mapRes!25919 () Bool)

(assert (=> mapIsEmpty!25919 mapRes!25919))

(declare-fun b!851815 () Bool)

(declare-fun e!475136 () Bool)

(assert (=> b!851815 (= e!475134 e!475136)))

(declare-fun res!578699 () Bool)

(assert (=> b!851815 (=> (not res!578699) (not e!475136))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851815 (= res!578699 (= from!1053 i!612))))

(declare-fun lt!383742 () ListLongMap!9501)

(assert (=> b!851815 (= lt!383742 (getCurrentListMapNoExtraKeys!2751 _keys!868 lt!383740 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26665)

(declare-fun _values!688 () array!48614)

(assert (=> b!851815 (= lt!383740 (array!48615 (store (arr!23334 _values!688) i!612 (ValueCellFull!7667 v!557)) (size!23775 _values!688)))))

(declare-fun lt!383746 () ListLongMap!9501)

(assert (=> b!851815 (= lt!383746 (getCurrentListMapNoExtraKeys!2751 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun e!475139 () Bool)

(declare-fun call!38086 () ListLongMap!9501)

(declare-fun b!851816 () Bool)

(declare-fun +!2107 (ListLongMap!9501 tuple2!10718) ListLongMap!9501)

(assert (=> b!851816 (= e!475139 (= call!38087 (+!2107 call!38086 (tuple2!10719 k!854 v!557))))))

(declare-fun b!851817 () Bool)

(declare-fun e!475135 () Bool)

(declare-fun tp_is_empty!16213 () Bool)

(assert (=> b!851817 (= e!475135 tp_is_empty!16213)))

(declare-fun b!851819 () Bool)

(declare-fun e!475133 () Bool)

(assert (=> b!851819 (= e!475133 true)))

(declare-fun lt!383741 () V!26665)

(declare-fun lt!383739 () tuple2!10718)

(declare-fun lt!383743 () ListLongMap!9501)

(assert (=> b!851819 (= (+!2107 lt!383743 lt!383739) (+!2107 (+!2107 lt!383743 (tuple2!10719 k!854 lt!383741)) lt!383739))))

(declare-fun lt!383748 () V!26665)

(assert (=> b!851819 (= lt!383739 (tuple2!10719 k!854 lt!383748))))

(declare-datatypes ((Unit!29062 0))(
  ( (Unit!29063) )
))
(declare-fun lt!383747 () Unit!29062)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!290 (ListLongMap!9501 (_ BitVec 64) V!26665 V!26665) Unit!29062)

(assert (=> b!851819 (= lt!383747 (addSameAsAddTwiceSameKeyDiffValues!290 lt!383743 k!854 lt!383741 lt!383748))))

(declare-fun lt!383745 () V!26665)

(declare-fun get!12314 (ValueCell!7667 V!26665) V!26665)

(assert (=> b!851819 (= lt!383741 (get!12314 (select (arr!23334 _values!688) from!1053) lt!383745))))

(assert (=> b!851819 (= lt!383742 (+!2107 lt!383743 (tuple2!10719 (select (arr!23335 _keys!868) from!1053) lt!383748)))))

(assert (=> b!851819 (= lt!383748 (get!12314 (select (store (arr!23334 _values!688) i!612 (ValueCellFull!7667 v!557)) from!1053) lt!383745))))

(declare-fun dynLambda!1038 (Int (_ BitVec 64)) V!26665)

(assert (=> b!851819 (= lt!383745 (dynLambda!1038 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!851819 (= lt!383743 (getCurrentListMapNoExtraKeys!2751 _keys!868 lt!383740 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851820 () Bool)

(declare-fun res!578691 () Bool)

(assert (=> b!851820 (=> (not res!578691) (not e!475134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48616 (_ BitVec 32)) Bool)

(assert (=> b!851820 (= res!578691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851821 () Bool)

(declare-fun e!475140 () Bool)

(assert (=> b!851821 (= e!475140 (and e!475135 mapRes!25919))))

(declare-fun condMapEmpty!25919 () Bool)

(declare-fun mapDefault!25919 () ValueCell!7667)

