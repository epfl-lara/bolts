; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73634 () Bool)

(assert start!73634)

(declare-fun b_free!14521 () Bool)

(declare-fun b_next!14521 () Bool)

(assert (=> start!73634 (= b_free!14521 (not b_next!14521))))

(declare-fun tp!51067 () Bool)

(declare-fun b_and!24039 () Bool)

(assert (=> start!73634 (= tp!51067 b_and!24039)))

(declare-fun b!861177 () Bool)

(declare-fun res!585367 () Bool)

(declare-fun e!479861 () Bool)

(assert (=> b!861177 (=> (not res!585367) (not e!479861))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49462 0))(
  ( (array!49463 (arr!23758 (Array (_ BitVec 32) (_ BitVec 64))) (size!24199 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49462)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!861177 (= res!585367 (and (= (select (arr!23758 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861178 () Bool)

(declare-fun res!585365 () Bool)

(assert (=> b!861178 (=> (not res!585365) (not e!479861))))

(assert (=> b!861178 (= res!585365 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24199 _keys!868))))))

(declare-fun res!585364 () Bool)

(assert (=> start!73634 (=> (not res!585364) (not e!479861))))

(assert (=> start!73634 (= res!585364 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24199 _keys!868))))))

(assert (=> start!73634 e!479861))

(declare-fun tp_is_empty!16657 () Bool)

(assert (=> start!73634 tp_is_empty!16657))

(assert (=> start!73634 true))

(assert (=> start!73634 tp!51067))

(declare-fun array_inv!18778 (array!49462) Bool)

(assert (=> start!73634 (array_inv!18778 _keys!868)))

(declare-datatypes ((V!27257 0))(
  ( (V!27258 (val!8376 Int)) )
))
(declare-datatypes ((ValueCell!7889 0))(
  ( (ValueCellFull!7889 (v!10797 V!27257)) (EmptyCell!7889) )
))
(declare-datatypes ((array!49464 0))(
  ( (array!49465 (arr!23759 (Array (_ BitVec 32) ValueCell!7889)) (size!24200 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49464)

(declare-fun e!479863 () Bool)

(declare-fun array_inv!18779 (array!49464) Bool)

(assert (=> start!73634 (and (array_inv!18779 _values!688) e!479863)))

(declare-fun b!861179 () Bool)

(declare-fun e!479862 () Bool)

(assert (=> b!861179 (= e!479861 e!479862)))

(declare-fun res!585368 () Bool)

(assert (=> b!861179 (=> (not res!585368) (not e!479862))))

(assert (=> b!861179 (= res!585368 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11062 0))(
  ( (tuple2!11063 (_1!5541 (_ BitVec 64)) (_2!5541 V!27257)) )
))
(declare-datatypes ((List!16932 0))(
  ( (Nil!16929) (Cons!16928 (h!18059 tuple2!11062) (t!23727 List!16932)) )
))
(declare-datatypes ((ListLongMap!9845 0))(
  ( (ListLongMap!9846 (toList!4938 List!16932)) )
))
(declare-fun lt!388359 () ListLongMap!9845)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!388368 () array!49464)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27257)

(declare-fun zeroValue!654 () V!27257)

(declare-fun getCurrentListMapNoExtraKeys!2917 (array!49462 array!49464 (_ BitVec 32) (_ BitVec 32) V!27257 V!27257 (_ BitVec 32) Int) ListLongMap!9845)

(assert (=> b!861179 (= lt!388359 (getCurrentListMapNoExtraKeys!2917 _keys!868 lt!388368 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27257)

(assert (=> b!861179 (= lt!388368 (array!49465 (store (arr!23759 _values!688) i!612 (ValueCellFull!7889 v!557)) (size!24200 _values!688)))))

(declare-fun lt!388363 () ListLongMap!9845)

(assert (=> b!861179 (= lt!388363 (getCurrentListMapNoExtraKeys!2917 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861180 () Bool)

(declare-datatypes ((Unit!29335 0))(
  ( (Unit!29336) )
))
(declare-fun e!479858 () Unit!29335)

(declare-fun Unit!29337 () Unit!29335)

(assert (=> b!861180 (= e!479858 Unit!29337)))

(declare-fun lt!388366 () Unit!29335)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49462 (_ BitVec 32) (_ BitVec 32)) Unit!29335)

(assert (=> b!861180 (= lt!388366 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16933 0))(
  ( (Nil!16930) (Cons!16929 (h!18060 (_ BitVec 64)) (t!23728 List!16933)) )
))
(declare-fun arrayNoDuplicates!0 (array!49462 (_ BitVec 32) List!16933) Bool)

(assert (=> b!861180 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16930)))

(declare-fun lt!388362 () Unit!29335)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49462 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29335)

(assert (=> b!861180 (= lt!388362 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861180 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388364 () Unit!29335)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49462 (_ BitVec 64) (_ BitVec 32) List!16933) Unit!29335)

(assert (=> b!861180 (= lt!388364 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16930))))

(assert (=> b!861180 false))

(declare-fun b!861181 () Bool)

(declare-fun res!585366 () Bool)

(assert (=> b!861181 (=> (not res!585366) (not e!479861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861181 (= res!585366 (validKeyInArray!0 k!854))))

(declare-fun b!861182 () Bool)

(declare-fun res!585362 () Bool)

(assert (=> b!861182 (=> (not res!585362) (not e!479861))))

(assert (=> b!861182 (= res!585362 (and (= (size!24200 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24199 _keys!868) (size!24200 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861183 () Bool)

(declare-fun e!479859 () Bool)

(declare-fun mapRes!26585 () Bool)

(assert (=> b!861183 (= e!479863 (and e!479859 mapRes!26585))))

(declare-fun condMapEmpty!26585 () Bool)

(declare-fun mapDefault!26585 () ValueCell!7889)

