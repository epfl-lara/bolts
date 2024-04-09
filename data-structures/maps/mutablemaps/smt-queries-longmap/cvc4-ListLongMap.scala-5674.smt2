; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73860 () Bool)

(assert start!73860)

(declare-fun b_free!14747 () Bool)

(declare-fun b_next!14747 () Bool)

(assert (=> start!73860 (= b_free!14747 (not b_next!14747))))

(declare-fun tp!51745 () Bool)

(declare-fun b_and!24491 () Bool)

(assert (=> start!73860 (= tp!51745 b_and!24491)))

(declare-fun mapNonEmpty!26924 () Bool)

(declare-fun mapRes!26924 () Bool)

(declare-fun tp!51746 () Bool)

(declare-fun e!482861 () Bool)

(assert (=> mapNonEmpty!26924 (= mapRes!26924 (and tp!51746 e!482861))))

(declare-datatypes ((V!27557 0))(
  ( (V!27558 (val!8489 Int)) )
))
(declare-datatypes ((ValueCell!8002 0))(
  ( (ValueCellFull!8002 (v!10910 V!27557)) (EmptyCell!8002) )
))
(declare-fun mapRest!26924 () (Array (_ BitVec 32) ValueCell!8002))

(declare-fun mapKey!26924 () (_ BitVec 32))

(declare-fun mapValue!26924 () ValueCell!8002)

(declare-datatypes ((array!49906 0))(
  ( (array!49907 (arr!23980 (Array (_ BitVec 32) ValueCell!8002)) (size!24421 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49906)

(assert (=> mapNonEmpty!26924 (= (arr!23980 _values!688) (store mapRest!26924 mapKey!26924 mapValue!26924))))

(declare-fun b!866776 () Bool)

(declare-fun res!589041 () Bool)

(declare-fun e!482864 () Bool)

(assert (=> b!866776 (=> (not res!589041) (not e!482864))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866776 (= res!589041 (validMask!0 mask!1196))))

(declare-fun b!866777 () Bool)

(declare-fun e!482860 () Bool)

(assert (=> b!866777 (= e!482864 e!482860)))

(declare-fun res!589044 () Bool)

(assert (=> b!866777 (=> (not res!589044) (not e!482860))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866777 (= res!589044 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!393525 () array!49906)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11264 0))(
  ( (tuple2!11265 (_1!5642 (_ BitVec 64)) (_2!5642 V!27557)) )
))
(declare-datatypes ((List!17127 0))(
  ( (Nil!17124) (Cons!17123 (h!18254 tuple2!11264) (t!24148 List!17127)) )
))
(declare-datatypes ((ListLongMap!10047 0))(
  ( (ListLongMap!10048 (toList!5039 List!17127)) )
))
(declare-fun lt!393524 () ListLongMap!10047)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!49908 0))(
  ( (array!49909 (arr!23981 (Array (_ BitVec 32) (_ BitVec 64))) (size!24422 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49908)

(declare-fun minValue!654 () V!27557)

(declare-fun zeroValue!654 () V!27557)

(declare-fun getCurrentListMapNoExtraKeys!3005 (array!49908 array!49906 (_ BitVec 32) (_ BitVec 32) V!27557 V!27557 (_ BitVec 32) Int) ListLongMap!10047)

(assert (=> b!866777 (= lt!393524 (getCurrentListMapNoExtraKeys!3005 _keys!868 lt!393525 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27557)

(assert (=> b!866777 (= lt!393525 (array!49907 (store (arr!23980 _values!688) i!612 (ValueCellFull!8002 v!557)) (size!24421 _values!688)))))

(declare-fun lt!393537 () ListLongMap!10047)

(assert (=> b!866777 (= lt!393537 (getCurrentListMapNoExtraKeys!3005 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866778 () Bool)

(declare-datatypes ((Unit!29702 0))(
  ( (Unit!29703) )
))
(declare-fun e!482863 () Unit!29702)

(declare-fun Unit!29704 () Unit!29702)

(assert (=> b!866778 (= e!482863 Unit!29704)))

(declare-fun lt!393529 () Unit!29702)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49908 (_ BitVec 32) (_ BitVec 32)) Unit!29702)

(assert (=> b!866778 (= lt!393529 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17128 0))(
  ( (Nil!17125) (Cons!17124 (h!18255 (_ BitVec 64)) (t!24149 List!17128)) )
))
(declare-fun arrayNoDuplicates!0 (array!49908 (_ BitVec 32) List!17128) Bool)

(assert (=> b!866778 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17125)))

(declare-fun lt!393532 () Unit!29702)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49908 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29702)

(assert (=> b!866778 (= lt!393532 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866778 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393526 () Unit!29702)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49908 (_ BitVec 64) (_ BitVec 32) List!17128) Unit!29702)

(assert (=> b!866778 (= lt!393526 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17125))))

(assert (=> b!866778 false))

(declare-fun b!866779 () Bool)

(declare-fun e!482865 () Bool)

(declare-fun tp_is_empty!16883 () Bool)

(assert (=> b!866779 (= e!482865 tp_is_empty!16883)))

(declare-fun mapIsEmpty!26924 () Bool)

(assert (=> mapIsEmpty!26924 mapRes!26924))

(declare-fun b!866780 () Bool)

(declare-fun res!589047 () Bool)

(assert (=> b!866780 (=> (not res!589047) (not e!482864))))

(assert (=> b!866780 (= res!589047 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24422 _keys!868))))))

(declare-fun b!866781 () Bool)

(declare-fun res!589046 () Bool)

(assert (=> b!866781 (=> (not res!589046) (not e!482864))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866781 (= res!589046 (validKeyInArray!0 k!854))))

(declare-fun res!589043 () Bool)

(assert (=> start!73860 (=> (not res!589043) (not e!482864))))

(assert (=> start!73860 (= res!589043 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24422 _keys!868))))))

(assert (=> start!73860 e!482864))

(assert (=> start!73860 tp_is_empty!16883))

(assert (=> start!73860 true))

(assert (=> start!73860 tp!51745))

(declare-fun array_inv!18934 (array!49908) Bool)

(assert (=> start!73860 (array_inv!18934 _keys!868)))

(declare-fun e!482859 () Bool)

(declare-fun array_inv!18935 (array!49906) Bool)

(assert (=> start!73860 (and (array_inv!18935 _values!688) e!482859)))

(declare-fun b!866775 () Bool)

(declare-fun Unit!29705 () Unit!29702)

(assert (=> b!866775 (= e!482863 Unit!29705)))

(declare-fun b!866782 () Bool)

(assert (=> b!866782 (= e!482861 tp_is_empty!16883)))

(declare-fun b!866783 () Bool)

(declare-fun res!589037 () Bool)

(assert (=> b!866783 (=> (not res!589037) (not e!482864))))

(assert (=> b!866783 (= res!589037 (and (= (size!24421 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24422 _keys!868) (size!24421 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866784 () Bool)

(declare-fun res!589040 () Bool)

(assert (=> b!866784 (=> (not res!589040) (not e!482864))))

(assert (=> b!866784 (= res!589040 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17125))))

(declare-fun b!866785 () Bool)

(assert (=> b!866785 (= e!482859 (and e!482865 mapRes!26924))))

(declare-fun condMapEmpty!26924 () Bool)

(declare-fun mapDefault!26924 () ValueCell!8002)

