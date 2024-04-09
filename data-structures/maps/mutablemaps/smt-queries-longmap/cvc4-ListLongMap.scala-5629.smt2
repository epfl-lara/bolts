; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73590 () Bool)

(assert start!73590)

(declare-fun b_free!14477 () Bool)

(declare-fun b_next!14477 () Bool)

(assert (=> start!73590 (= b_free!14477 (not b_next!14477))))

(declare-fun tp!50936 () Bool)

(declare-fun b_and!23951 () Bool)

(assert (=> start!73590 (= tp!50936 b_and!23951)))

(declare-fun b!860087 () Bool)

(declare-fun res!584596 () Bool)

(declare-fun e!479308 () Bool)

(assert (=> b!860087 (=> (not res!584596) (not e!479308))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860087 (= res!584596 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26519 () Bool)

(declare-fun mapRes!26519 () Bool)

(declare-fun tp!50935 () Bool)

(declare-fun e!479310 () Bool)

(assert (=> mapNonEmpty!26519 (= mapRes!26519 (and tp!50935 e!479310))))

(declare-datatypes ((V!27197 0))(
  ( (V!27198 (val!8354 Int)) )
))
(declare-datatypes ((ValueCell!7867 0))(
  ( (ValueCellFull!7867 (v!10775 V!27197)) (EmptyCell!7867) )
))
(declare-fun mapValue!26519 () ValueCell!7867)

(declare-fun mapKey!26519 () (_ BitVec 32))

(declare-fun mapRest!26519 () (Array (_ BitVec 32) ValueCell!7867))

(declare-datatypes ((array!49384 0))(
  ( (array!49385 (arr!23719 (Array (_ BitVec 32) ValueCell!7867)) (size!24160 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49384)

(assert (=> mapNonEmpty!26519 (= (arr!23719 _values!688) (store mapRest!26519 mapKey!26519 mapValue!26519))))

(declare-fun b!860088 () Bool)

(declare-fun res!584597 () Bool)

(declare-fun e!479304 () Bool)

(assert (=> b!860088 (=> res!584597 e!479304)))

(declare-datatypes ((List!16900 0))(
  ( (Nil!16897) (Cons!16896 (h!18027 (_ BitVec 64)) (t!23651 List!16900)) )
))
(declare-fun contains!4229 (List!16900 (_ BitVec 64)) Bool)

(assert (=> b!860088 (= res!584597 (contains!4229 Nil!16897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860089 () Bool)

(declare-fun e!479305 () Bool)

(declare-fun e!479307 () Bool)

(assert (=> b!860089 (= e!479305 e!479307)))

(declare-fun res!584601 () Bool)

(assert (=> b!860089 (=> res!584601 e!479307)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49386 0))(
  ( (array!49387 (arr!23720 (Array (_ BitVec 32) (_ BitVec 64))) (size!24161 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49386)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!860089 (= res!584601 (not (= (select (arr!23720 _keys!868) from!1053) k!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11030 0))(
  ( (tuple2!11031 (_1!5525 (_ BitVec 64)) (_2!5525 V!27197)) )
))
(declare-datatypes ((List!16901 0))(
  ( (Nil!16898) (Cons!16897 (h!18028 tuple2!11030) (t!23652 List!16901)) )
))
(declare-datatypes ((ListLongMap!9813 0))(
  ( (ListLongMap!9814 (toList!4922 List!16901)) )
))
(declare-fun lt!387661 () ListLongMap!9813)

(declare-fun lt!387662 () ListLongMap!9813)

(declare-fun +!2223 (ListLongMap!9813 tuple2!11030) ListLongMap!9813)

(declare-fun get!12515 (ValueCell!7867 V!27197) V!27197)

(declare-fun dynLambda!1107 (Int (_ BitVec 64)) V!27197)

(assert (=> b!860089 (= lt!387662 (+!2223 lt!387661 (tuple2!11031 (select (arr!23720 _keys!868) from!1053) (get!12515 (select (arr!23719 _values!688) from!1053) (dynLambda!1107 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860090 () Bool)

(declare-fun res!584593 () Bool)

(assert (=> b!860090 (=> (not res!584593) (not e!479308))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!860090 (= res!584593 (and (= (select (arr!23720 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!860091 () Bool)

(assert (=> b!860091 (= e!479307 e!479304)))

(declare-fun res!584589 () Bool)

(assert (=> b!860091 (=> res!584589 e!479304)))

(assert (=> b!860091 (= res!584589 (or (bvsge (size!24161 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24161 _keys!868)) (bvsge from!1053 (size!24161 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860091 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!29290 0))(
  ( (Unit!29291) )
))
(declare-fun lt!387668 () Unit!29290)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49386 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29290)

(assert (=> b!860091 (= lt!387668 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!49386 (_ BitVec 32) List!16900) Bool)

(assert (=> b!860091 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16897)))

(declare-fun lt!387664 () Unit!29290)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49386 (_ BitVec 32) (_ BitVec 32)) Unit!29290)

(assert (=> b!860091 (= lt!387664 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!860092 () Bool)

(declare-fun e!479302 () Bool)

(assert (=> b!860092 (= e!479308 e!479302)))

(declare-fun res!584599 () Bool)

(assert (=> b!860092 (=> (not res!584599) (not e!479302))))

(assert (=> b!860092 (= res!584599 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!387667 () array!49384)

(declare-fun minValue!654 () V!27197)

(declare-fun zeroValue!654 () V!27197)

(declare-fun getCurrentListMapNoExtraKeys!2902 (array!49386 array!49384 (_ BitVec 32) (_ BitVec 32) V!27197 V!27197 (_ BitVec 32) Int) ListLongMap!9813)

(assert (=> b!860092 (= lt!387662 (getCurrentListMapNoExtraKeys!2902 _keys!868 lt!387667 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27197)

(assert (=> b!860092 (= lt!387667 (array!49385 (store (arr!23719 _values!688) i!612 (ValueCellFull!7867 v!557)) (size!24160 _values!688)))))

(declare-fun lt!387665 () ListLongMap!9813)

(assert (=> b!860092 (= lt!387665 (getCurrentListMapNoExtraKeys!2902 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!860093 () Bool)

(declare-fun res!584590 () Bool)

(assert (=> b!860093 (=> (not res!584590) (not e!479308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860093 (= res!584590 (validKeyInArray!0 k!854))))

(declare-fun b!860094 () Bool)

(declare-fun e!479303 () Bool)

(declare-fun tp_is_empty!16613 () Bool)

(assert (=> b!860094 (= e!479303 tp_is_empty!16613)))

(declare-fun res!584600 () Bool)

(assert (=> start!73590 (=> (not res!584600) (not e!479308))))

(assert (=> start!73590 (= res!584600 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24161 _keys!868))))))

(assert (=> start!73590 e!479308))

(assert (=> start!73590 tp_is_empty!16613))

(assert (=> start!73590 true))

(assert (=> start!73590 tp!50936))

(declare-fun array_inv!18750 (array!49386) Bool)

(assert (=> start!73590 (array_inv!18750 _keys!868)))

(declare-fun e!479306 () Bool)

(declare-fun array_inv!18751 (array!49384) Bool)

(assert (=> start!73590 (and (array_inv!18751 _values!688) e!479306)))

(declare-fun b!860095 () Bool)

(declare-fun res!584592 () Bool)

(assert (=> b!860095 (=> (not res!584592) (not e!479308))))

(assert (=> b!860095 (= res!584592 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24161 _keys!868))))))

(declare-fun b!860096 () Bool)

(assert (=> b!860096 (= e!479310 tp_is_empty!16613)))

(declare-fun b!860097 () Bool)

(declare-fun res!584598 () Bool)

(assert (=> b!860097 (=> (not res!584598) (not e!479308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49386 (_ BitVec 32)) Bool)

(assert (=> b!860097 (= res!584598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860098 () Bool)

(assert (=> b!860098 (= e!479306 (and e!479303 mapRes!26519))))

(declare-fun condMapEmpty!26519 () Bool)

(declare-fun mapDefault!26519 () ValueCell!7867)

