; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73766 () Bool)

(assert start!73766)

(declare-fun b_free!14653 () Bool)

(declare-fun b_next!14653 () Bool)

(assert (=> start!73766 (= b_free!14653 (not b_next!14653))))

(declare-fun tp!51463 () Bool)

(declare-fun b_and!24303 () Bool)

(assert (=> start!73766 (= tp!51463 b_and!24303)))

(declare-fun b!864425 () Bool)

(declare-fun res!587495 () Bool)

(declare-fun e!481593 () Bool)

(assert (=> b!864425 (=> (not res!587495) (not e!481593))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864425 (= res!587495 (validKeyInArray!0 k!854))))

(declare-fun res!587494 () Bool)

(assert (=> start!73766 (=> (not res!587494) (not e!481593))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49722 0))(
  ( (array!49723 (arr!23888 (Array (_ BitVec 32) (_ BitVec 64))) (size!24329 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49722)

(assert (=> start!73766 (= res!587494 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24329 _keys!868))))))

(assert (=> start!73766 e!481593))

(declare-fun tp_is_empty!16789 () Bool)

(assert (=> start!73766 tp_is_empty!16789))

(assert (=> start!73766 true))

(assert (=> start!73766 tp!51463))

(declare-fun array_inv!18870 (array!49722) Bool)

(assert (=> start!73766 (array_inv!18870 _keys!868)))

(declare-datatypes ((V!27433 0))(
  ( (V!27434 (val!8442 Int)) )
))
(declare-datatypes ((ValueCell!7955 0))(
  ( (ValueCellFull!7955 (v!10863 V!27433)) (EmptyCell!7955) )
))
(declare-datatypes ((array!49724 0))(
  ( (array!49725 (arr!23889 (Array (_ BitVec 32) ValueCell!7955)) (size!24330 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49724)

(declare-fun e!481589 () Bool)

(declare-fun array_inv!18871 (array!49724) Bool)

(assert (=> start!73766 (and (array_inv!18871 _values!688) e!481589)))

(declare-fun b!864426 () Bool)

(declare-fun e!481595 () Bool)

(assert (=> b!864426 (= e!481593 e!481595)))

(declare-fun res!587496 () Bool)

(assert (=> b!864426 (=> (not res!587496) (not e!481595))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864426 (= res!587496 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11180 0))(
  ( (tuple2!11181 (_1!5600 (_ BitVec 64)) (_2!5600 V!27433)) )
))
(declare-datatypes ((List!17046 0))(
  ( (Nil!17043) (Cons!17042 (h!18173 tuple2!11180) (t!23973 List!17046)) )
))
(declare-datatypes ((ListLongMap!9963 0))(
  ( (ListLongMap!9964 (toList!4997 List!17046)) )
))
(declare-fun lt!391275 () ListLongMap!9963)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!391281 () array!49724)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27433)

(declare-fun zeroValue!654 () V!27433)

(declare-fun getCurrentListMapNoExtraKeys!2970 (array!49722 array!49724 (_ BitVec 32) (_ BitVec 32) V!27433 V!27433 (_ BitVec 32) Int) ListLongMap!9963)

(assert (=> b!864426 (= lt!391275 (getCurrentListMapNoExtraKeys!2970 _keys!868 lt!391281 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27433)

(assert (=> b!864426 (= lt!391281 (array!49725 (store (arr!23889 _values!688) i!612 (ValueCellFull!7955 v!557)) (size!24330 _values!688)))))

(declare-fun lt!391269 () ListLongMap!9963)

(assert (=> b!864426 (= lt!391269 (getCurrentListMapNoExtraKeys!2970 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864427 () Bool)

(declare-fun res!587491 () Bool)

(assert (=> b!864427 (=> (not res!587491) (not e!481593))))

(declare-datatypes ((List!17047 0))(
  ( (Nil!17044) (Cons!17043 (h!18174 (_ BitVec 64)) (t!23974 List!17047)) )
))
(declare-fun arrayNoDuplicates!0 (array!49722 (_ BitVec 32) List!17047) Bool)

(assert (=> b!864427 (= res!587491 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17044))))

(declare-fun mapIsEmpty!26783 () Bool)

(declare-fun mapRes!26783 () Bool)

(assert (=> mapIsEmpty!26783 mapRes!26783))

(declare-fun b!864428 () Bool)

(declare-fun res!587489 () Bool)

(assert (=> b!864428 (=> (not res!587489) (not e!481593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49722 (_ BitVec 32)) Bool)

(assert (=> b!864428 (= res!587489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864429 () Bool)

(declare-datatypes ((Unit!29545 0))(
  ( (Unit!29546) )
))
(declare-fun e!481594 () Unit!29545)

(declare-fun Unit!29547 () Unit!29545)

(assert (=> b!864429 (= e!481594 Unit!29547)))

(declare-fun lt!391273 () Unit!29545)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49722 (_ BitVec 32) (_ BitVec 32)) Unit!29545)

(assert (=> b!864429 (= lt!391273 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!864429 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17044)))

(declare-fun lt!391274 () Unit!29545)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49722 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29545)

(assert (=> b!864429 (= lt!391274 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864429 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391272 () Unit!29545)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49722 (_ BitVec 64) (_ BitVec 32) List!17047) Unit!29545)

(assert (=> b!864429 (= lt!391272 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17044))))

(assert (=> b!864429 false))

(declare-fun b!864430 () Bool)

(declare-fun e!481588 () Bool)

(assert (=> b!864430 (= e!481588 tp_is_empty!16789)))

(declare-fun b!864431 () Bool)

(declare-fun res!587488 () Bool)

(assert (=> b!864431 (=> (not res!587488) (not e!481593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864431 (= res!587488 (validMask!0 mask!1196))))

(declare-fun b!864432 () Bool)

(declare-fun res!587486 () Bool)

(assert (=> b!864432 (=> (not res!587486) (not e!481593))))

(assert (=> b!864432 (= res!587486 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24329 _keys!868))))))

(declare-fun b!864433 () Bool)

(declare-fun Unit!29548 () Unit!29545)

(assert (=> b!864433 (= e!481594 Unit!29548)))

(declare-fun b!864434 () Bool)

(declare-fun e!481592 () Bool)

(assert (=> b!864434 (= e!481589 (and e!481592 mapRes!26783))))

(declare-fun condMapEmpty!26783 () Bool)

(declare-fun mapDefault!26783 () ValueCell!7955)

