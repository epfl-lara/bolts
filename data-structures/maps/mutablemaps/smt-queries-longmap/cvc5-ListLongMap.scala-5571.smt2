; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73238 () Bool)

(assert start!73238)

(declare-fun b_free!14125 () Bool)

(declare-fun b_next!14125 () Bool)

(assert (=> start!73238 (= b_free!14125 (not b_next!14125))))

(declare-fun tp!49880 () Bool)

(declare-fun b_and!23427 () Bool)

(assert (=> start!73238 (= tp!49880 b_and!23427)))

(declare-datatypes ((V!26729 0))(
  ( (V!26730 (val!8178 Int)) )
))
(declare-fun v!557 () V!26729)

(declare-fun e!475709 () Bool)

(declare-fun b!852942 () Bool)

(declare-datatypes ((tuple2!10758 0))(
  ( (tuple2!10759 (_1!5389 (_ BitVec 64)) (_2!5389 V!26729)) )
))
(declare-datatypes ((List!16636 0))(
  ( (Nil!16633) (Cons!16632 (h!17763 tuple2!10758) (t!23215 List!16636)) )
))
(declare-datatypes ((ListLongMap!9541 0))(
  ( (ListLongMap!9542 (toList!4786 List!16636)) )
))
(declare-fun call!38231 () ListLongMap!9541)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun call!38230 () ListLongMap!9541)

(declare-fun +!2126 (ListLongMap!9541 tuple2!10758) ListLongMap!9541)

(assert (=> b!852942 (= e!475709 (= call!38230 (+!2126 call!38231 (tuple2!10759 k!854 v!557))))))

(declare-fun b!852943 () Bool)

(assert (=> b!852943 (= e!475709 (= call!38230 call!38231))))

(declare-fun b!852944 () Bool)

(declare-fun res!579417 () Bool)

(declare-fun e!475715 () Bool)

(assert (=> b!852944 (=> (not res!579417) (not e!475715))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48706 0))(
  ( (array!48707 (arr!23380 (Array (_ BitVec 32) (_ BitVec 64))) (size!23821 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48706)

(assert (=> b!852944 (= res!579417 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23821 _keys!868))))))

(declare-fun b!852945 () Bool)

(declare-fun e!475710 () Bool)

(declare-fun tp_is_empty!16261 () Bool)

(assert (=> b!852945 (= e!475710 tp_is_empty!16261)))

(declare-fun bm!38227 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7691 0))(
  ( (ValueCellFull!7691 (v!10599 V!26729)) (EmptyCell!7691) )
))
(declare-datatypes ((array!48708 0))(
  ( (array!48709 (arr!23381 (Array (_ BitVec 32) ValueCell!7691)) (size!23822 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48708)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26729)

(declare-fun zeroValue!654 () V!26729)

(declare-fun getCurrentListMapNoExtraKeys!2769 (array!48706 array!48708 (_ BitVec 32) (_ BitVec 32) V!26729 V!26729 (_ BitVec 32) Int) ListLongMap!9541)

(assert (=> bm!38227 (= call!38231 (getCurrentListMapNoExtraKeys!2769 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852946 () Bool)

(declare-fun res!579416 () Bool)

(assert (=> b!852946 (=> (not res!579416) (not e!475715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852946 (= res!579416 (validMask!0 mask!1196))))

(declare-fun b!852947 () Bool)

(declare-fun res!579414 () Bool)

(assert (=> b!852947 (=> (not res!579414) (not e!475715))))

(declare-datatypes ((List!16637 0))(
  ( (Nil!16634) (Cons!16633 (h!17764 (_ BitVec 64)) (t!23216 List!16637)) )
))
(declare-fun arrayNoDuplicates!0 (array!48706 (_ BitVec 32) List!16637) Bool)

(assert (=> b!852947 (= res!579414 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16634))))

(declare-fun b!852948 () Bool)

(declare-fun res!579411 () Bool)

(assert (=> b!852948 (=> (not res!579411) (not e!475715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48706 (_ BitVec 32)) Bool)

(assert (=> b!852948 (= res!579411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852949 () Bool)

(declare-fun res!579412 () Bool)

(assert (=> b!852949 (=> (not res!579412) (not e!475715))))

(assert (=> b!852949 (= res!579412 (and (= (size!23822 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23821 _keys!868) (size!23822 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852951 () Bool)

(declare-fun res!579413 () Bool)

(assert (=> b!852951 (=> (not res!579413) (not e!475715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852951 (= res!579413 (validKeyInArray!0 k!854))))

(declare-fun b!852952 () Bool)

(declare-fun e!475714 () Bool)

(assert (=> b!852952 (= e!475714 true)))

(declare-fun lt!384463 () tuple2!10758)

(declare-fun lt!384461 () V!26729)

(declare-fun lt!384460 () ListLongMap!9541)

(assert (=> b!852952 (= (+!2126 lt!384460 lt!384463) (+!2126 (+!2126 lt!384460 (tuple2!10759 k!854 lt!384461)) lt!384463))))

(declare-fun lt!384462 () V!26729)

(assert (=> b!852952 (= lt!384463 (tuple2!10759 k!854 lt!384462))))

(declare-datatypes ((Unit!29098 0))(
  ( (Unit!29099) )
))
(declare-fun lt!384466 () Unit!29098)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!306 (ListLongMap!9541 (_ BitVec 64) V!26729 V!26729) Unit!29098)

(assert (=> b!852952 (= lt!384466 (addSameAsAddTwiceSameKeyDiffValues!306 lt!384460 k!854 lt!384461 lt!384462))))

(declare-fun lt!384468 () V!26729)

(declare-fun get!12346 (ValueCell!7691 V!26729) V!26729)

(assert (=> b!852952 (= lt!384461 (get!12346 (select (arr!23381 _values!688) from!1053) lt!384468))))

(declare-fun lt!384465 () ListLongMap!9541)

(assert (=> b!852952 (= lt!384465 (+!2126 lt!384460 (tuple2!10759 (select (arr!23380 _keys!868) from!1053) lt!384462)))))

(assert (=> b!852952 (= lt!384462 (get!12346 (select (store (arr!23381 _values!688) i!612 (ValueCellFull!7691 v!557)) from!1053) lt!384468))))

(declare-fun dynLambda!1054 (Int (_ BitVec 64)) V!26729)

(assert (=> b!852952 (= lt!384468 (dynLambda!1054 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!384467 () array!48708)

(assert (=> b!852952 (= lt!384460 (getCurrentListMapNoExtraKeys!2769 _keys!868 lt!384467 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25991 () Bool)

(declare-fun mapRes!25991 () Bool)

(declare-fun tp!49879 () Bool)

(assert (=> mapNonEmpty!25991 (= mapRes!25991 (and tp!49879 e!475710))))

(declare-fun mapKey!25991 () (_ BitVec 32))

(declare-fun mapRest!25991 () (Array (_ BitVec 32) ValueCell!7691))

(declare-fun mapValue!25991 () ValueCell!7691)

(assert (=> mapNonEmpty!25991 (= (arr!23381 _values!688) (store mapRest!25991 mapKey!25991 mapValue!25991))))

(declare-fun b!852953 () Bool)

(declare-fun e!475713 () Bool)

(assert (=> b!852953 (= e!475713 tp_is_empty!16261)))

(declare-fun bm!38228 () Bool)

(assert (=> bm!38228 (= call!38230 (getCurrentListMapNoExtraKeys!2769 _keys!868 lt!384467 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852954 () Bool)

(declare-fun res!579420 () Bool)

(assert (=> b!852954 (=> (not res!579420) (not e!475715))))

(assert (=> b!852954 (= res!579420 (and (= (select (arr!23380 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!852955 () Bool)

(declare-fun e!475712 () Bool)

(assert (=> b!852955 (= e!475715 e!475712)))

(declare-fun res!579419 () Bool)

(assert (=> b!852955 (=> (not res!579419) (not e!475712))))

(assert (=> b!852955 (= res!579419 (= from!1053 i!612))))

(assert (=> b!852955 (= lt!384465 (getCurrentListMapNoExtraKeys!2769 _keys!868 lt!384467 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852955 (= lt!384467 (array!48709 (store (arr!23381 _values!688) i!612 (ValueCellFull!7691 v!557)) (size!23822 _values!688)))))

(declare-fun lt!384464 () ListLongMap!9541)

(assert (=> b!852955 (= lt!384464 (getCurrentListMapNoExtraKeys!2769 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!25991 () Bool)

(assert (=> mapIsEmpty!25991 mapRes!25991))

(declare-fun b!852956 () Bool)

(assert (=> b!852956 (= e!475712 (not e!475714))))

(declare-fun res!579415 () Bool)

(assert (=> b!852956 (=> res!579415 e!475714)))

(assert (=> b!852956 (= res!579415 (not (validKeyInArray!0 (select (arr!23380 _keys!868) from!1053))))))

(assert (=> b!852956 e!475709))

(declare-fun c!91776 () Bool)

(assert (=> b!852956 (= c!91776 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384459 () Unit!29098)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!389 (array!48706 array!48708 (_ BitVec 32) (_ BitVec 32) V!26729 V!26729 (_ BitVec 32) (_ BitVec 64) V!26729 (_ BitVec 32) Int) Unit!29098)

(assert (=> b!852956 (= lt!384459 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!389 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!579418 () Bool)

(assert (=> start!73238 (=> (not res!579418) (not e!475715))))

(assert (=> start!73238 (= res!579418 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23821 _keys!868))))))

(assert (=> start!73238 e!475715))

(assert (=> start!73238 tp_is_empty!16261))

(assert (=> start!73238 true))

(assert (=> start!73238 tp!49880))

(declare-fun array_inv!18522 (array!48706) Bool)

(assert (=> start!73238 (array_inv!18522 _keys!868)))

(declare-fun e!475716 () Bool)

(declare-fun array_inv!18523 (array!48708) Bool)

(assert (=> start!73238 (and (array_inv!18523 _values!688) e!475716)))

(declare-fun b!852950 () Bool)

(assert (=> b!852950 (= e!475716 (and e!475713 mapRes!25991))))

(declare-fun condMapEmpty!25991 () Bool)

(declare-fun mapDefault!25991 () ValueCell!7691)

