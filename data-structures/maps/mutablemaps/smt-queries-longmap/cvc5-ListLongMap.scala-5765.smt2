; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74466 () Bool)

(assert start!74466)

(declare-fun b_free!15181 () Bool)

(declare-fun b_next!15181 () Bool)

(assert (=> start!74466 (= b_free!15181 (not b_next!15181))))

(declare-fun tp!53221 () Bool)

(declare-fun b_and!25033 () Bool)

(assert (=> start!74466 (= tp!53221 b_and!25033)))

(declare-fun b!876614 () Bool)

(declare-fun res!595778 () Bool)

(declare-fun e!488004 () Bool)

(assert (=> b!876614 (=> (not res!595778) (not e!488004))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876614 (= res!595778 (validKeyInArray!0 k!854))))

(declare-fun b!876615 () Bool)

(declare-datatypes ((V!28281 0))(
  ( (V!28282 (val!8760 Int)) )
))
(declare-datatypes ((tuple2!11594 0))(
  ( (tuple2!11595 (_1!5807 (_ BitVec 64)) (_2!5807 V!28281)) )
))
(declare-datatypes ((List!17475 0))(
  ( (Nil!17472) (Cons!17471 (h!18602 tuple2!11594) (t!24568 List!17475)) )
))
(declare-datatypes ((ListLongMap!10377 0))(
  ( (ListLongMap!10378 (toList!5204 List!17475)) )
))
(declare-fun lt!396634 () ListLongMap!10377)

(declare-fun v!557 () V!28281)

(declare-fun lt!396637 () ListLongMap!10377)

(declare-fun e!488006 () Bool)

(declare-fun +!2440 (ListLongMap!10377 tuple2!11594) ListLongMap!10377)

(assert (=> b!876615 (= e!488006 (= lt!396634 (+!2440 lt!396637 (tuple2!11595 k!854 v!557))))))

(declare-fun lt!396635 () V!28281)

(declare-fun lt!396638 () tuple2!11594)

(declare-fun lt!396633 () ListLongMap!10377)

(assert (=> b!876615 (= (+!2440 lt!396633 lt!396638) (+!2440 (+!2440 lt!396633 (tuple2!11595 k!854 lt!396635)) lt!396638))))

(declare-fun lt!396630 () V!28281)

(assert (=> b!876615 (= lt!396638 (tuple2!11595 k!854 lt!396630))))

(declare-datatypes ((Unit!29938 0))(
  ( (Unit!29939) )
))
(declare-fun lt!396629 () Unit!29938)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!332 (ListLongMap!10377 (_ BitVec 64) V!28281 V!28281) Unit!29938)

(assert (=> b!876615 (= lt!396629 (addSameAsAddTwiceSameKeyDiffValues!332 lt!396633 k!854 lt!396635 lt!396630))))

(declare-fun lt!396631 () V!28281)

(declare-datatypes ((ValueCell!8273 0))(
  ( (ValueCellFull!8273 (v!11189 V!28281)) (EmptyCell!8273) )
))
(declare-datatypes ((array!50958 0))(
  ( (array!50959 (arr!24502 (Array (_ BitVec 32) ValueCell!8273)) (size!24943 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50958)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12904 (ValueCell!8273 V!28281) V!28281)

(assert (=> b!876615 (= lt!396635 (get!12904 (select (arr!24502 _values!688) from!1053) lt!396631))))

(declare-datatypes ((array!50960 0))(
  ( (array!50961 (arr!24503 (Array (_ BitVec 32) (_ BitVec 64))) (size!24944 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50960)

(assert (=> b!876615 (= lt!396634 (+!2440 lt!396633 (tuple2!11595 (select (arr!24503 _keys!868) from!1053) lt!396630)))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876615 (= lt!396630 (get!12904 (select (store (arr!24502 _values!688) i!612 (ValueCellFull!8273 v!557)) from!1053) lt!396631))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1222 (Int (_ BitVec 64)) V!28281)

(assert (=> b!876615 (= lt!396631 (dynLambda!1222 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!396636 () array!50958)

(declare-fun minValue!654 () V!28281)

(declare-fun zeroValue!654 () V!28281)

(declare-fun getCurrentListMapNoExtraKeys!3166 (array!50960 array!50958 (_ BitVec 32) (_ BitVec 32) V!28281 V!28281 (_ BitVec 32) Int) ListLongMap!10377)

(assert (=> b!876615 (= lt!396633 (getCurrentListMapNoExtraKeys!3166 _keys!868 lt!396636 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876616 () Bool)

(declare-fun e!488007 () Bool)

(declare-fun call!38786 () ListLongMap!10377)

(declare-fun call!38787 () ListLongMap!10377)

(assert (=> b!876616 (= e!488007 (= call!38786 call!38787))))

(declare-fun bm!38783 () Bool)

(assert (=> bm!38783 (= call!38787 (getCurrentListMapNoExtraKeys!3166 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876617 () Bool)

(declare-fun e!488005 () Bool)

(assert (=> b!876617 (= e!488004 e!488005)))

(declare-fun res!595773 () Bool)

(assert (=> b!876617 (=> (not res!595773) (not e!488005))))

(assert (=> b!876617 (= res!595773 (= from!1053 i!612))))

(assert (=> b!876617 (= lt!396634 (getCurrentListMapNoExtraKeys!3166 _keys!868 lt!396636 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!876617 (= lt!396636 (array!50959 (store (arr!24502 _values!688) i!612 (ValueCellFull!8273 v!557)) (size!24943 _values!688)))))

(assert (=> b!876617 (= lt!396637 (getCurrentListMapNoExtraKeys!3166 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!876618 () Bool)

(declare-fun e!488003 () Bool)

(declare-fun tp_is_empty!17425 () Bool)

(assert (=> b!876618 (= e!488003 tp_is_empty!17425)))

(declare-fun bm!38784 () Bool)

(assert (=> bm!38784 (= call!38786 (getCurrentListMapNoExtraKeys!3166 _keys!868 lt!396636 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876619 () Bool)

(declare-fun res!595777 () Bool)

(assert (=> b!876619 (=> (not res!595777) (not e!488004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50960 (_ BitVec 32)) Bool)

(assert (=> b!876619 (= res!595777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27749 () Bool)

(declare-fun mapRes!27749 () Bool)

(assert (=> mapIsEmpty!27749 mapRes!27749))

(declare-fun b!876620 () Bool)

(declare-fun res!595774 () Bool)

(assert (=> b!876620 (=> (not res!595774) (not e!488004))))

(assert (=> b!876620 (= res!595774 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24944 _keys!868))))))

(declare-fun b!876621 () Bool)

(declare-fun res!595782 () Bool)

(assert (=> b!876621 (=> (not res!595782) (not e!488004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876621 (= res!595782 (validMask!0 mask!1196))))

(declare-fun b!876622 () Bool)

(assert (=> b!876622 (= e!488005 (not e!488006))))

(declare-fun res!595775 () Bool)

(assert (=> b!876622 (=> res!595775 e!488006)))

(assert (=> b!876622 (= res!595775 (not (validKeyInArray!0 (select (arr!24503 _keys!868) from!1053))))))

(assert (=> b!876622 e!488007))

(declare-fun c!92539 () Bool)

(assert (=> b!876622 (= c!92539 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!396632 () Unit!29938)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!672 (array!50960 array!50958 (_ BitVec 32) (_ BitVec 32) V!28281 V!28281 (_ BitVec 32) (_ BitVec 64) V!28281 (_ BitVec 32) Int) Unit!29938)

(assert (=> b!876622 (= lt!396632 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!672 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876623 () Bool)

(assert (=> b!876623 (= e!488007 (= call!38786 (+!2440 call!38787 (tuple2!11595 k!854 v!557))))))

(declare-fun b!876624 () Bool)

(declare-fun res!595780 () Bool)

(assert (=> b!876624 (=> (not res!595780) (not e!488004))))

(declare-datatypes ((List!17476 0))(
  ( (Nil!17473) (Cons!17472 (h!18603 (_ BitVec 64)) (t!24569 List!17476)) )
))
(declare-fun arrayNoDuplicates!0 (array!50960 (_ BitVec 32) List!17476) Bool)

(assert (=> b!876624 (= res!595780 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17473))))

(declare-fun mapNonEmpty!27749 () Bool)

(declare-fun tp!53222 () Bool)

(declare-fun e!488009 () Bool)

(assert (=> mapNonEmpty!27749 (= mapRes!27749 (and tp!53222 e!488009))))

(declare-fun mapKey!27749 () (_ BitVec 32))

(declare-fun mapRest!27749 () (Array (_ BitVec 32) ValueCell!8273))

(declare-fun mapValue!27749 () ValueCell!8273)

(assert (=> mapNonEmpty!27749 (= (arr!24502 _values!688) (store mapRest!27749 mapKey!27749 mapValue!27749))))

(declare-fun res!595776 () Bool)

(assert (=> start!74466 (=> (not res!595776) (not e!488004))))

(assert (=> start!74466 (= res!595776 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24944 _keys!868))))))

(assert (=> start!74466 e!488004))

(assert (=> start!74466 tp_is_empty!17425))

(assert (=> start!74466 true))

(assert (=> start!74466 tp!53221))

(declare-fun array_inv!19300 (array!50960) Bool)

(assert (=> start!74466 (array_inv!19300 _keys!868)))

(declare-fun e!488002 () Bool)

(declare-fun array_inv!19301 (array!50958) Bool)

(assert (=> start!74466 (and (array_inv!19301 _values!688) e!488002)))

(declare-fun b!876625 () Bool)

(declare-fun res!595779 () Bool)

(assert (=> b!876625 (=> (not res!595779) (not e!488004))))

(assert (=> b!876625 (= res!595779 (and (= (size!24943 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24944 _keys!868) (size!24943 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!876626 () Bool)

(assert (=> b!876626 (= e!488009 tp_is_empty!17425)))

(declare-fun b!876627 () Bool)

(declare-fun res!595781 () Bool)

(assert (=> b!876627 (=> (not res!595781) (not e!488004))))

(assert (=> b!876627 (= res!595781 (and (= (select (arr!24503 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!876628 () Bool)

(assert (=> b!876628 (= e!488002 (and e!488003 mapRes!27749))))

(declare-fun condMapEmpty!27749 () Bool)

(declare-fun mapDefault!27749 () ValueCell!8273)

