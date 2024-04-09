; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73140 () Bool)

(assert start!73140)

(declare-fun b_free!14027 () Bool)

(declare-fun b_next!14027 () Bool)

(assert (=> start!73140 (= b_free!14027 (not b_next!14027))))

(declare-fun tp!49586 () Bool)

(declare-fun b_and!23231 () Bool)

(assert (=> start!73140 (= tp!49586 b_and!23231)))

(declare-fun b!850639 () Bool)

(declare-fun e!474537 () Bool)

(declare-fun e!474534 () Bool)

(assert (=> b!850639 (= e!474537 e!474534)))

(declare-fun res!577941 () Bool)

(assert (=> b!850639 (=> (not res!577941) (not e!474534))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850639 (= res!577941 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48514 0))(
  ( (array!48515 (arr!23284 (Array (_ BitVec 32) (_ BitVec 64))) (size!23725 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48514)

(declare-datatypes ((V!26597 0))(
  ( (V!26598 (val!8129 Int)) )
))
(declare-fun minValue!654 () V!26597)

(declare-fun zeroValue!654 () V!26597)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7642 0))(
  ( (ValueCellFull!7642 (v!10550 V!26597)) (EmptyCell!7642) )
))
(declare-datatypes ((array!48516 0))(
  ( (array!48517 (arr!23285 (Array (_ BitVec 32) ValueCell!7642)) (size!23726 (_ BitVec 32))) )
))
(declare-fun lt!382993 () array!48516)

(declare-datatypes ((tuple2!10668 0))(
  ( (tuple2!10669 (_1!5344 (_ BitVec 64)) (_2!5344 V!26597)) )
))
(declare-datatypes ((List!16562 0))(
  ( (Nil!16559) (Cons!16558 (h!17689 tuple2!10668) (t!23043 List!16562)) )
))
(declare-datatypes ((ListLongMap!9451 0))(
  ( (ListLongMap!9452 (toList!4741 List!16562)) )
))
(declare-fun lt!382996 () ListLongMap!9451)

(declare-fun getCurrentListMapNoExtraKeys!2727 (array!48514 array!48516 (_ BitVec 32) (_ BitVec 32) V!26597 V!26597 (_ BitVec 32) Int) ListLongMap!9451)

(assert (=> b!850639 (= lt!382996 (getCurrentListMapNoExtraKeys!2727 _keys!868 lt!382993 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26597)

(declare-fun _values!688 () array!48516)

(assert (=> b!850639 (= lt!382993 (array!48517 (store (arr!23285 _values!688) i!612 (ValueCellFull!7642 v!557)) (size!23726 _values!688)))))

(declare-fun lt!382997 () ListLongMap!9451)

(assert (=> b!850639 (= lt!382997 (getCurrentListMapNoExtraKeys!2727 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850641 () Bool)

(declare-fun res!577942 () Bool)

(assert (=> b!850641 (=> (not res!577942) (not e!474537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48514 (_ BitVec 32)) Bool)

(assert (=> b!850641 (= res!577942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!850642 () Bool)

(declare-fun e!474535 () Bool)

(declare-fun e!474533 () Bool)

(declare-fun mapRes!25844 () Bool)

(assert (=> b!850642 (= e!474535 (and e!474533 mapRes!25844))))

(declare-fun condMapEmpty!25844 () Bool)

(declare-fun mapDefault!25844 () ValueCell!7642)

