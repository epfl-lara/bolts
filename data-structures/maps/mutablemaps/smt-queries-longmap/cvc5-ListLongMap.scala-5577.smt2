; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73274 () Bool)

(assert start!73274)

(declare-fun b_free!14161 () Bool)

(declare-fun b_next!14161 () Bool)

(assert (=> start!73274 (= b_free!14161 (not b_next!14161))))

(declare-fun tp!49988 () Bool)

(declare-fun b_and!23499 () Bool)

(assert (=> start!73274 (= tp!49988 b_and!23499)))

(declare-fun b!853788 () Bool)

(declare-fun res!579952 () Bool)

(declare-fun e!476142 () Bool)

(assert (=> b!853788 (=> (not res!579952) (not e!476142))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48776 0))(
  ( (array!48777 (arr!23415 (Array (_ BitVec 32) (_ BitVec 64))) (size!23856 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48776)

(assert (=> b!853788 (= res!579952 (and (= (select (arr!23415 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!853789 () Bool)

(declare-fun res!579951 () Bool)

(assert (=> b!853789 (=> (not res!579951) (not e!476142))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853789 (= res!579951 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!26045 () Bool)

(declare-fun mapRes!26045 () Bool)

(assert (=> mapIsEmpty!26045 mapRes!26045))

(declare-fun b!853791 () Bool)

(declare-fun e!476144 () Bool)

(declare-fun tp_is_empty!16297 () Bool)

(assert (=> b!853791 (= e!476144 tp_is_empty!16297)))

(declare-fun b!853792 () Bool)

(declare-fun e!476148 () Bool)

(assert (=> b!853792 (= e!476142 e!476148)))

(declare-fun res!579953 () Bool)

(assert (=> b!853792 (=> (not res!579953) (not e!476148))))

(assert (=> b!853792 (= res!579953 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26777 0))(
  ( (V!26778 (val!8196 Int)) )
))
(declare-fun minValue!654 () V!26777)

(declare-fun zeroValue!654 () V!26777)

(declare-datatypes ((ValueCell!7709 0))(
  ( (ValueCellFull!7709 (v!10617 V!26777)) (EmptyCell!7709) )
))
(declare-datatypes ((array!48778 0))(
  ( (array!48779 (arr!23416 (Array (_ BitVec 32) ValueCell!7709)) (size!23857 (_ BitVec 32))) )
))
(declare-fun lt!385001 () array!48778)

(declare-datatypes ((tuple2!10788 0))(
  ( (tuple2!10789 (_1!5404 (_ BitVec 64)) (_2!5404 V!26777)) )
))
(declare-datatypes ((List!16664 0))(
  ( (Nil!16661) (Cons!16660 (h!17791 tuple2!10788) (t!23279 List!16664)) )
))
(declare-datatypes ((ListLongMap!9571 0))(
  ( (ListLongMap!9572 (toList!4801 List!16664)) )
))
(declare-fun lt!384999 () ListLongMap!9571)

(declare-fun getCurrentListMapNoExtraKeys!2783 (array!48776 array!48778 (_ BitVec 32) (_ BitVec 32) V!26777 V!26777 (_ BitVec 32) Int) ListLongMap!9571)

(assert (=> b!853792 (= lt!384999 (getCurrentListMapNoExtraKeys!2783 _keys!868 lt!385001 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26777)

(declare-fun _values!688 () array!48778)

(assert (=> b!853792 (= lt!385001 (array!48779 (store (arr!23416 _values!688) i!612 (ValueCellFull!7709 v!557)) (size!23857 _values!688)))))

(declare-fun lt!385000 () ListLongMap!9571)

(assert (=> b!853792 (= lt!385000 (getCurrentListMapNoExtraKeys!2783 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26045 () Bool)

(declare-fun tp!49987 () Bool)

(declare-fun e!476141 () Bool)

(assert (=> mapNonEmpty!26045 (= mapRes!26045 (and tp!49987 e!476141))))

(declare-fun mapValue!26045 () ValueCell!7709)

(declare-fun mapKey!26045 () (_ BitVec 32))

(declare-fun mapRest!26045 () (Array (_ BitVec 32) ValueCell!7709))

(assert (=> mapNonEmpty!26045 (= (arr!23416 _values!688) (store mapRest!26045 mapKey!26045 mapValue!26045))))

(declare-fun b!853793 () Bool)

(declare-fun res!579955 () Bool)

(assert (=> b!853793 (=> (not res!579955) (not e!476142))))

(assert (=> b!853793 (= res!579955 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23856 _keys!868))))))

(declare-fun call!38339 () ListLongMap!9571)

(declare-fun bm!38335 () Bool)

(assert (=> bm!38335 (= call!38339 (getCurrentListMapNoExtraKeys!2783 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853794 () Bool)

(declare-fun res!579959 () Bool)

(assert (=> b!853794 (=> (not res!579959) (not e!476142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853794 (= res!579959 (validKeyInArray!0 k!854))))

(declare-fun b!853795 () Bool)

(declare-fun e!476143 () Bool)

(assert (=> b!853795 (= e!476143 true)))

(declare-fun lt!385006 () ListLongMap!9571)

(declare-fun lt!385002 () tuple2!10788)

(declare-fun lt!385005 () V!26777)

(declare-fun +!2139 (ListLongMap!9571 tuple2!10788) ListLongMap!9571)

(assert (=> b!853795 (= (+!2139 lt!385006 lt!385002) (+!2139 (+!2139 lt!385006 (tuple2!10789 k!854 lt!385005)) lt!385002))))

(declare-fun lt!385004 () V!26777)

(assert (=> b!853795 (= lt!385002 (tuple2!10789 k!854 lt!385004))))

(declare-datatypes ((Unit!29122 0))(
  ( (Unit!29123) )
))
(declare-fun lt!385008 () Unit!29122)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!318 (ListLongMap!9571 (_ BitVec 64) V!26777 V!26777) Unit!29122)

(assert (=> b!853795 (= lt!385008 (addSameAsAddTwiceSameKeyDiffValues!318 lt!385006 k!854 lt!385005 lt!385004))))

(declare-fun lt!385007 () V!26777)

(declare-fun get!12370 (ValueCell!7709 V!26777) V!26777)

(assert (=> b!853795 (= lt!385005 (get!12370 (select (arr!23416 _values!688) from!1053) lt!385007))))

(assert (=> b!853795 (= lt!384999 (+!2139 lt!385006 (tuple2!10789 (select (arr!23415 _keys!868) from!1053) lt!385004)))))

(assert (=> b!853795 (= lt!385004 (get!12370 (select (store (arr!23416 _values!688) i!612 (ValueCellFull!7709 v!557)) from!1053) lt!385007))))

(declare-fun dynLambda!1066 (Int (_ BitVec 64)) V!26777)

(assert (=> b!853795 (= lt!385007 (dynLambda!1066 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!853795 (= lt!385006 (getCurrentListMapNoExtraKeys!2783 _keys!868 lt!385001 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853796 () Bool)

(declare-fun res!579956 () Bool)

(assert (=> b!853796 (=> (not res!579956) (not e!476142))))

(assert (=> b!853796 (= res!579956 (and (= (size!23857 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23856 _keys!868) (size!23857 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!853790 () Bool)

(declare-fun e!476147 () Bool)

(declare-fun call!38338 () ListLongMap!9571)

(assert (=> b!853790 (= e!476147 (= call!38338 call!38339))))

(declare-fun res!579960 () Bool)

(assert (=> start!73274 (=> (not res!579960) (not e!476142))))

(assert (=> start!73274 (= res!579960 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23856 _keys!868))))))

(assert (=> start!73274 e!476142))

(assert (=> start!73274 tp_is_empty!16297))

(assert (=> start!73274 true))

(assert (=> start!73274 tp!49988))

(declare-fun array_inv!18542 (array!48776) Bool)

(assert (=> start!73274 (array_inv!18542 _keys!868)))

(declare-fun e!476145 () Bool)

(declare-fun array_inv!18543 (array!48778) Bool)

(assert (=> start!73274 (and (array_inv!18543 _values!688) e!476145)))

(declare-fun b!853797 () Bool)

(declare-fun res!579954 () Bool)

(assert (=> b!853797 (=> (not res!579954) (not e!476142))))

(declare-datatypes ((List!16665 0))(
  ( (Nil!16662) (Cons!16661 (h!17792 (_ BitVec 64)) (t!23280 List!16665)) )
))
(declare-fun arrayNoDuplicates!0 (array!48776 (_ BitVec 32) List!16665) Bool)

(assert (=> b!853797 (= res!579954 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16662))))

(declare-fun b!853798 () Bool)

(assert (=> b!853798 (= e!476147 (= call!38338 (+!2139 call!38339 (tuple2!10789 k!854 v!557))))))

(declare-fun b!853799 () Bool)

(assert (=> b!853799 (= e!476145 (and e!476144 mapRes!26045))))

(declare-fun condMapEmpty!26045 () Bool)

(declare-fun mapDefault!26045 () ValueCell!7709)

