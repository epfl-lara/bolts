; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73614 () Bool)

(assert start!73614)

(declare-fun b_free!14501 () Bool)

(declare-fun b_next!14501 () Bool)

(assert (=> start!73614 (= b_free!14501 (not b_next!14501))))

(declare-fun tp!51007 () Bool)

(declare-fun b_and!23999 () Bool)

(assert (=> start!73614 (= tp!51007 b_and!23999)))

(declare-fun b!860707 () Bool)

(declare-fun res!585060 () Bool)

(declare-fun e!479622 () Bool)

(assert (=> b!860707 (=> (not res!585060) (not e!479622))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49426 0))(
  ( (array!49427 (arr!23740 (Array (_ BitVec 32) (_ BitVec 64))) (size!24181 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49426)

(assert (=> b!860707 (= res!585060 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24181 _keys!868))))))

(declare-fun b!860708 () Bool)

(declare-datatypes ((Unit!29306 0))(
  ( (Unit!29307) )
))
(declare-fun e!479618 () Unit!29306)

(declare-fun Unit!29308 () Unit!29306)

(assert (=> b!860708 (= e!479618 Unit!29308)))

(declare-fun lt!388037 () Unit!29306)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49426 (_ BitVec 32) (_ BitVec 32)) Unit!29306)

(assert (=> b!860708 (= lt!388037 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16917 0))(
  ( (Nil!16914) (Cons!16913 (h!18044 (_ BitVec 64)) (t!23692 List!16917)) )
))
(declare-fun arrayNoDuplicates!0 (array!49426 (_ BitVec 32) List!16917) Bool)

(assert (=> b!860708 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16914)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!388031 () Unit!29306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49426 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29306)

(assert (=> b!860708 (= lt!388031 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860708 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388036 () Unit!29306)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49426 (_ BitVec 64) (_ BitVec 32) List!16917) Unit!29306)

(assert (=> b!860708 (= lt!388036 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16914))))

(assert (=> b!860708 false))

(declare-fun b!860709 () Bool)

(declare-fun e!479621 () Bool)

(assert (=> b!860709 (= e!479622 e!479621)))

(declare-fun res!585065 () Bool)

(assert (=> b!860709 (=> (not res!585065) (not e!479621))))

(assert (=> b!860709 (= res!585065 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27229 0))(
  ( (V!27230 (val!8366 Int)) )
))
(declare-datatypes ((ValueCell!7879 0))(
  ( (ValueCellFull!7879 (v!10787 V!27229)) (EmptyCell!7879) )
))
(declare-datatypes ((array!49428 0))(
  ( (array!49429 (arr!23741 (Array (_ BitVec 32) ValueCell!7879)) (size!24182 (_ BitVec 32))) )
))
(declare-fun lt!388038 () array!49428)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11046 0))(
  ( (tuple2!11047 (_1!5533 (_ BitVec 64)) (_2!5533 V!27229)) )
))
(declare-datatypes ((List!16918 0))(
  ( (Nil!16915) (Cons!16914 (h!18045 tuple2!11046) (t!23693 List!16918)) )
))
(declare-datatypes ((ListLongMap!9829 0))(
  ( (ListLongMap!9830 (toList!4930 List!16918)) )
))
(declare-fun lt!388032 () ListLongMap!9829)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27229)

(declare-fun zeroValue!654 () V!27229)

(declare-fun getCurrentListMapNoExtraKeys!2910 (array!49426 array!49428 (_ BitVec 32) (_ BitVec 32) V!27229 V!27229 (_ BitVec 32) Int) ListLongMap!9829)

(assert (=> b!860709 (= lt!388032 (getCurrentListMapNoExtraKeys!2910 _keys!868 lt!388038 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27229)

(declare-fun _values!688 () array!49428)

(assert (=> b!860709 (= lt!388038 (array!49429 (store (arr!23741 _values!688) i!612 (ValueCellFull!7879 v!557)) (size!24182 _values!688)))))

(declare-fun lt!388035 () ListLongMap!9829)

(assert (=> b!860709 (= lt!388035 (getCurrentListMapNoExtraKeys!2910 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!860710 () Bool)

(declare-fun res!585064 () Bool)

(assert (=> b!860710 (=> (not res!585064) (not e!479622))))

(assert (=> b!860710 (= res!585064 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16914))))

(declare-fun mapIsEmpty!26555 () Bool)

(declare-fun mapRes!26555 () Bool)

(assert (=> mapIsEmpty!26555 mapRes!26555))

(declare-fun b!860711 () Bool)

(declare-fun e!479620 () Bool)

(assert (=> b!860711 (= e!479621 (not e!479620))))

(declare-fun res!585066 () Bool)

(assert (=> b!860711 (=> res!585066 e!479620)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860711 (= res!585066 (not (validKeyInArray!0 (select (arr!23740 _keys!868) from!1053))))))

(declare-fun lt!388029 () ListLongMap!9829)

(declare-fun lt!388034 () ListLongMap!9829)

(assert (=> b!860711 (= lt!388029 lt!388034)))

(declare-fun lt!388033 () ListLongMap!9829)

(declare-fun +!2231 (ListLongMap!9829 tuple2!11046) ListLongMap!9829)

(assert (=> b!860711 (= lt!388034 (+!2231 lt!388033 (tuple2!11047 k!854 v!557)))))

(assert (=> b!860711 (= lt!388029 (getCurrentListMapNoExtraKeys!2910 _keys!868 lt!388038 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860711 (= lt!388033 (getCurrentListMapNoExtraKeys!2910 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388030 () Unit!29306)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!484 (array!49426 array!49428 (_ BitVec 32) (_ BitVec 32) V!27229 V!27229 (_ BitVec 32) (_ BitVec 64) V!27229 (_ BitVec 32) Int) Unit!29306)

(assert (=> b!860711 (= lt!388030 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!484 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!860712 () Bool)

(declare-fun res!585062 () Bool)

(assert (=> b!860712 (=> (not res!585062) (not e!479622))))

(assert (=> b!860712 (= res!585062 (and (= (select (arr!23740 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!860713 () Bool)

(declare-fun e!479625 () Bool)

(declare-fun tp_is_empty!16637 () Bool)

(assert (=> b!860713 (= e!479625 tp_is_empty!16637)))

(declare-fun b!860714 () Bool)

(declare-fun res!585068 () Bool)

(assert (=> b!860714 (=> (not res!585068) (not e!479622))))

(assert (=> b!860714 (= res!585068 (and (= (size!24182 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24181 _keys!868) (size!24182 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860715 () Bool)

(declare-fun Unit!29309 () Unit!29306)

(assert (=> b!860715 (= e!479618 Unit!29309)))

(declare-fun b!860716 () Bool)

(assert (=> b!860716 (= e!479620 true)))

(assert (=> b!860716 (not (= (select (arr!23740 _keys!868) from!1053) k!854))))

(declare-fun lt!388028 () Unit!29306)

(assert (=> b!860716 (= lt!388028 e!479618)))

(declare-fun c!91890 () Bool)

(assert (=> b!860716 (= c!91890 (= (select (arr!23740 _keys!868) from!1053) k!854))))

(declare-fun get!12530 (ValueCell!7879 V!27229) V!27229)

(declare-fun dynLambda!1114 (Int (_ BitVec 64)) V!27229)

(assert (=> b!860716 (= lt!388032 (+!2231 lt!388034 (tuple2!11047 (select (arr!23740 _keys!868) from!1053) (get!12530 (select (arr!23741 _values!688) from!1053) (dynLambda!1114 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860717 () Bool)

(declare-fun res!585067 () Bool)

(assert (=> b!860717 (=> (not res!585067) (not e!479622))))

(assert (=> b!860717 (= res!585067 (validKeyInArray!0 k!854))))

(declare-fun b!860718 () Bool)

(declare-fun e!479624 () Bool)

(declare-fun e!479619 () Bool)

(assert (=> b!860718 (= e!479624 (and e!479619 mapRes!26555))))

(declare-fun condMapEmpty!26555 () Bool)

(declare-fun mapDefault!26555 () ValueCell!7879)

