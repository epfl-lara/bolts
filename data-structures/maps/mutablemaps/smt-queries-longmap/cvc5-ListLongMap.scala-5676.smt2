; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73868 () Bool)

(assert start!73868)

(declare-fun b_free!14755 () Bool)

(declare-fun b_next!14755 () Bool)

(assert (=> start!73868 (= b_free!14755 (not b_next!14755))))

(declare-fun tp!51770 () Bool)

(declare-fun b_and!24507 () Bool)

(assert (=> start!73868 (= tp!51770 b_and!24507)))

(declare-fun b!866975 () Bool)

(declare-fun res!589176 () Bool)

(declare-fun e!482970 () Bool)

(assert (=> b!866975 (=> (not res!589176) (not e!482970))))

(declare-datatypes ((array!49922 0))(
  ( (array!49923 (arr!23988 (Array (_ BitVec 32) (_ BitVec 64))) (size!24429 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49922)

(declare-datatypes ((List!17133 0))(
  ( (Nil!17130) (Cons!17129 (h!18260 (_ BitVec 64)) (t!24162 List!17133)) )
))
(declare-fun arrayNoDuplicates!0 (array!49922 (_ BitVec 32) List!17133) Bool)

(assert (=> b!866975 (= res!589176 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17130))))

(declare-fun mapIsEmpty!26936 () Bool)

(declare-fun mapRes!26936 () Bool)

(assert (=> mapIsEmpty!26936 mapRes!26936))

(declare-fun b!866976 () Bool)

(declare-datatypes ((Unit!29713 0))(
  ( (Unit!29714) )
))
(declare-fun e!482972 () Unit!29713)

(declare-fun Unit!29715 () Unit!29713)

(assert (=> b!866976 (= e!482972 Unit!29715)))

(declare-fun lt!393727 () Unit!29713)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49922 (_ BitVec 32) (_ BitVec 32)) Unit!29713)

(assert (=> b!866976 (= lt!393727 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!866976 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17130)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!393719 () Unit!29713)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49922 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29713)

(assert (=> b!866976 (= lt!393719 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866976 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393720 () Unit!29713)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49922 (_ BitVec 64) (_ BitVec 32) List!17133) Unit!29713)

(assert (=> b!866976 (= lt!393720 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17130))))

(assert (=> b!866976 false))

(declare-fun b!866977 () Bool)

(declare-fun e!482971 () Bool)

(declare-fun tp_is_empty!16891 () Bool)

(assert (=> b!866977 (= e!482971 tp_is_empty!16891)))

(declare-fun b!866979 () Bool)

(declare-fun res!589175 () Bool)

(assert (=> b!866979 (=> (not res!589175) (not e!482970))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49922 (_ BitVec 32)) Bool)

(assert (=> b!866979 (= res!589175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866980 () Bool)

(declare-fun res!589170 () Bool)

(assert (=> b!866980 (=> (not res!589170) (not e!482970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866980 (= res!589170 (validMask!0 mask!1196))))

(declare-fun b!866981 () Bool)

(declare-fun Unit!29716 () Unit!29713)

(assert (=> b!866981 (= e!482972 Unit!29716)))

(declare-fun b!866982 () Bool)

(declare-fun e!482967 () Bool)

(assert (=> b!866982 (= e!482967 true)))

(declare-datatypes ((V!27569 0))(
  ( (V!27570 (val!8493 Int)) )
))
(declare-datatypes ((tuple2!11270 0))(
  ( (tuple2!11271 (_1!5645 (_ BitVec 64)) (_2!5645 V!27569)) )
))
(declare-fun lt!393725 () tuple2!11270)

(declare-datatypes ((List!17134 0))(
  ( (Nil!17131) (Cons!17130 (h!18261 tuple2!11270) (t!24163 List!17134)) )
))
(declare-datatypes ((ListLongMap!10053 0))(
  ( (ListLongMap!10054 (toList!5042 List!17134)) )
))
(declare-fun lt!393723 () ListLongMap!10053)

(declare-fun lt!393721 () ListLongMap!10053)

(declare-fun lt!393715 () tuple2!11270)

(declare-fun +!2337 (ListLongMap!10053 tuple2!11270) ListLongMap!10053)

(assert (=> b!866982 (= lt!393723 (+!2337 (+!2337 lt!393721 lt!393725) lt!393715))))

(declare-fun lt!393728 () V!27569)

(declare-fun v!557 () V!27569)

(declare-fun lt!393716 () Unit!29713)

(declare-fun addCommutativeForDiffKeys!538 (ListLongMap!10053 (_ BitVec 64) V!27569 (_ BitVec 64) V!27569) Unit!29713)

(assert (=> b!866982 (= lt!393716 (addCommutativeForDiffKeys!538 lt!393721 k!854 v!557 (select (arr!23988 _keys!868) from!1053) lt!393728))))

(declare-fun b!866983 () Bool)

(declare-fun e!482968 () Bool)

(assert (=> b!866983 (= e!482970 e!482968)))

(declare-fun res!589169 () Bool)

(assert (=> b!866983 (=> (not res!589169) (not e!482968))))

(assert (=> b!866983 (= res!589169 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!393726 () ListLongMap!10053)

(declare-datatypes ((ValueCell!8006 0))(
  ( (ValueCellFull!8006 (v!10914 V!27569)) (EmptyCell!8006) )
))
(declare-datatypes ((array!49924 0))(
  ( (array!49925 (arr!23989 (Array (_ BitVec 32) ValueCell!8006)) (size!24430 (_ BitVec 32))) )
))
(declare-fun lt!393718 () array!49924)

(declare-fun minValue!654 () V!27569)

(declare-fun zeroValue!654 () V!27569)

(declare-fun getCurrentListMapNoExtraKeys!3007 (array!49922 array!49924 (_ BitVec 32) (_ BitVec 32) V!27569 V!27569 (_ BitVec 32) Int) ListLongMap!10053)

(assert (=> b!866983 (= lt!393726 (getCurrentListMapNoExtraKeys!3007 _keys!868 lt!393718 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!49924)

(assert (=> b!866983 (= lt!393718 (array!49925 (store (arr!23989 _values!688) i!612 (ValueCellFull!8006 v!557)) (size!24430 _values!688)))))

(declare-fun lt!393722 () ListLongMap!10053)

(assert (=> b!866983 (= lt!393722 (getCurrentListMapNoExtraKeys!3007 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866984 () Bool)

(declare-fun e!482973 () Bool)

(assert (=> b!866984 (= e!482973 (and e!482971 mapRes!26936))))

(declare-fun condMapEmpty!26936 () Bool)

(declare-fun mapDefault!26936 () ValueCell!8006)

