; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73262 () Bool)

(assert start!73262)

(declare-fun b_free!14149 () Bool)

(declare-fun b_next!14149 () Bool)

(assert (=> start!73262 (= b_free!14149 (not b_next!14149))))

(declare-fun tp!49952 () Bool)

(declare-fun b_and!23475 () Bool)

(assert (=> start!73262 (= tp!49952 b_and!23475)))

(declare-datatypes ((V!26761 0))(
  ( (V!26762 (val!8190 Int)) )
))
(declare-datatypes ((tuple2!10778 0))(
  ( (tuple2!10779 (_1!5399 (_ BitVec 64)) (_2!5399 V!26761)) )
))
(declare-datatypes ((List!16655 0))(
  ( (Nil!16652) (Cons!16651 (h!17782 tuple2!10778) (t!23258 List!16655)) )
))
(declare-datatypes ((ListLongMap!9561 0))(
  ( (ListLongMap!9562 (toList!4796 List!16655)) )
))
(declare-fun call!38303 () ListLongMap!9561)

(declare-fun v!557 () V!26761)

(declare-fun e!475997 () Bool)

(declare-fun b!853506 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun call!38302 () ListLongMap!9561)

(declare-fun +!2135 (ListLongMap!9561 tuple2!10778) ListLongMap!9561)

(assert (=> b!853506 (= e!475997 (= call!38303 (+!2135 call!38302 (tuple2!10779 k!854 v!557))))))

(declare-fun mapIsEmpty!26027 () Bool)

(declare-fun mapRes!26027 () Bool)

(assert (=> mapIsEmpty!26027 mapRes!26027))

(declare-fun b!853507 () Bool)

(declare-fun e!475999 () Bool)

(declare-fun tp_is_empty!16285 () Bool)

(assert (=> b!853507 (= e!475999 tp_is_empty!16285)))

(declare-fun b!853508 () Bool)

(declare-fun e!476000 () Bool)

(assert (=> b!853508 (= e!476000 tp_is_empty!16285)))

(declare-fun b!853509 () Bool)

(declare-fun res!579773 () Bool)

(declare-fun e!476002 () Bool)

(assert (=> b!853509 (=> (not res!579773) (not e!476002))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853509 (= res!579773 (validMask!0 mask!1196))))

(declare-fun b!853510 () Bool)

(declare-fun res!579774 () Bool)

(assert (=> b!853510 (=> (not res!579774) (not e!476002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853510 (= res!579774 (validKeyInArray!0 k!854))))

(declare-fun b!853511 () Bool)

(declare-fun e!476003 () Bool)

(declare-fun e!476004 () Bool)

(assert (=> b!853511 (= e!476003 (not e!476004))))

(declare-fun res!579772 () Bool)

(assert (=> b!853511 (=> res!579772 e!476004)))

(declare-datatypes ((array!48752 0))(
  ( (array!48753 (arr!23403 (Array (_ BitVec 32) (_ BitVec 64))) (size!23844 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48752)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!853511 (= res!579772 (not (validKeyInArray!0 (select (arr!23403 _keys!868) from!1053))))))

(assert (=> b!853511 e!475997))

(declare-fun c!91812 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853511 (= c!91812 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7703 0))(
  ( (ValueCellFull!7703 (v!10611 V!26761)) (EmptyCell!7703) )
))
(declare-datatypes ((array!48754 0))(
  ( (array!48755 (arr!23404 (Array (_ BitVec 32) ValueCell!7703)) (size!23845 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48754)

(declare-fun minValue!654 () V!26761)

(declare-fun zeroValue!654 () V!26761)

(declare-datatypes ((Unit!29116 0))(
  ( (Unit!29117) )
))
(declare-fun lt!384822 () Unit!29116)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!398 (array!48752 array!48754 (_ BitVec 32) (_ BitVec 32) V!26761 V!26761 (_ BitVec 32) (_ BitVec 64) V!26761 (_ BitVec 32) Int) Unit!29116)

(assert (=> b!853511 (= lt!384822 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!398 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853512 () Bool)

(declare-fun res!579778 () Bool)

(assert (=> b!853512 (=> (not res!579778) (not e!476002))))

(assert (=> b!853512 (= res!579778 (and (= (size!23845 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23844 _keys!868) (size!23845 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!853513 () Bool)

(assert (=> b!853513 (= e!476002 e!476003)))

(declare-fun res!579777 () Bool)

(assert (=> b!853513 (=> (not res!579777) (not e!476003))))

(assert (=> b!853513 (= res!579777 (= from!1053 i!612))))

(declare-fun lt!384824 () ListLongMap!9561)

(declare-fun lt!384825 () array!48754)

(declare-fun getCurrentListMapNoExtraKeys!2779 (array!48752 array!48754 (_ BitVec 32) (_ BitVec 32) V!26761 V!26761 (_ BitVec 32) Int) ListLongMap!9561)

(assert (=> b!853513 (= lt!384824 (getCurrentListMapNoExtraKeys!2779 _keys!868 lt!384825 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853513 (= lt!384825 (array!48755 (store (arr!23404 _values!688) i!612 (ValueCellFull!7703 v!557)) (size!23845 _values!688)))))

(declare-fun lt!384819 () ListLongMap!9561)

(assert (=> b!853513 (= lt!384819 (getCurrentListMapNoExtraKeys!2779 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!38299 () Bool)

(assert (=> bm!38299 (= call!38303 (getCurrentListMapNoExtraKeys!2779 _keys!868 lt!384825 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853514 () Bool)

(declare-fun res!579775 () Bool)

(assert (=> b!853514 (=> (not res!579775) (not e!476002))))

(assert (=> b!853514 (= res!579775 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23844 _keys!868))))))

(declare-fun bm!38300 () Bool)

(assert (=> bm!38300 (= call!38302 (getCurrentListMapNoExtraKeys!2779 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853515 () Bool)

(declare-fun res!579780 () Bool)

(assert (=> b!853515 (=> (not res!579780) (not e!476002))))

(declare-datatypes ((List!16656 0))(
  ( (Nil!16653) (Cons!16652 (h!17783 (_ BitVec 64)) (t!23259 List!16656)) )
))
(declare-fun arrayNoDuplicates!0 (array!48752 (_ BitVec 32) List!16656) Bool)

(assert (=> b!853515 (= res!579780 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16653))))

(declare-fun b!853516 () Bool)

(assert (=> b!853516 (= e!476004 true)))

(declare-fun lt!384826 () ListLongMap!9561)

(declare-fun lt!384827 () tuple2!10778)

(declare-fun lt!384823 () V!26761)

(assert (=> b!853516 (= (+!2135 lt!384826 lt!384827) (+!2135 (+!2135 lt!384826 (tuple2!10779 k!854 lt!384823)) lt!384827))))

(declare-fun lt!384820 () V!26761)

(assert (=> b!853516 (= lt!384827 (tuple2!10779 k!854 lt!384820))))

(declare-fun lt!384828 () Unit!29116)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!315 (ListLongMap!9561 (_ BitVec 64) V!26761 V!26761) Unit!29116)

(assert (=> b!853516 (= lt!384828 (addSameAsAddTwiceSameKeyDiffValues!315 lt!384826 k!854 lt!384823 lt!384820))))

(declare-fun lt!384821 () V!26761)

(declare-fun get!12363 (ValueCell!7703 V!26761) V!26761)

(assert (=> b!853516 (= lt!384823 (get!12363 (select (arr!23404 _values!688) from!1053) lt!384821))))

(assert (=> b!853516 (= lt!384824 (+!2135 lt!384826 (tuple2!10779 (select (arr!23403 _keys!868) from!1053) lt!384820)))))

(assert (=> b!853516 (= lt!384820 (get!12363 (select (store (arr!23404 _values!688) i!612 (ValueCellFull!7703 v!557)) from!1053) lt!384821))))

(declare-fun dynLambda!1063 (Int (_ BitVec 64)) V!26761)

(assert (=> b!853516 (= lt!384821 (dynLambda!1063 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!853516 (= lt!384826 (getCurrentListMapNoExtraKeys!2779 _keys!868 lt!384825 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853517 () Bool)

(declare-fun res!579779 () Bool)

(assert (=> b!853517 (=> (not res!579779) (not e!476002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48752 (_ BitVec 32)) Bool)

(assert (=> b!853517 (= res!579779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853518 () Bool)

(assert (=> b!853518 (= e!475997 (= call!38303 call!38302))))

(declare-fun res!579776 () Bool)

(assert (=> start!73262 (=> (not res!579776) (not e!476002))))

(assert (=> start!73262 (= res!579776 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23844 _keys!868))))))

(assert (=> start!73262 e!476002))

(assert (=> start!73262 tp_is_empty!16285))

(assert (=> start!73262 true))

(assert (=> start!73262 tp!49952))

(declare-fun array_inv!18536 (array!48752) Bool)

(assert (=> start!73262 (array_inv!18536 _keys!868)))

(declare-fun e!475998 () Bool)

(declare-fun array_inv!18537 (array!48754) Bool)

(assert (=> start!73262 (and (array_inv!18537 _values!688) e!475998)))

(declare-fun mapNonEmpty!26027 () Bool)

(declare-fun tp!49951 () Bool)

(assert (=> mapNonEmpty!26027 (= mapRes!26027 (and tp!49951 e!476000))))

(declare-fun mapValue!26027 () ValueCell!7703)

(declare-fun mapRest!26027 () (Array (_ BitVec 32) ValueCell!7703))

(declare-fun mapKey!26027 () (_ BitVec 32))

(assert (=> mapNonEmpty!26027 (= (arr!23404 _values!688) (store mapRest!26027 mapKey!26027 mapValue!26027))))

(declare-fun b!853519 () Bool)

(declare-fun res!579771 () Bool)

(assert (=> b!853519 (=> (not res!579771) (not e!476002))))

(assert (=> b!853519 (= res!579771 (and (= (select (arr!23403 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!853520 () Bool)

(assert (=> b!853520 (= e!475998 (and e!475999 mapRes!26027))))

(declare-fun condMapEmpty!26027 () Bool)

(declare-fun mapDefault!26027 () ValueCell!7703)

