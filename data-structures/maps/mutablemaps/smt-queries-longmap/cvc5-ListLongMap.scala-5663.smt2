; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73790 () Bool)

(assert start!73790)

(declare-fun b_free!14677 () Bool)

(declare-fun b_next!14677 () Bool)

(assert (=> start!73790 (= b_free!14677 (not b_next!14677))))

(declare-fun tp!51536 () Bool)

(declare-fun b_and!24351 () Bool)

(assert (=> start!73790 (= tp!51536 b_and!24351)))

(declare-fun b!865025 () Bool)

(declare-fun res!587891 () Bool)

(declare-fun e!481916 () Bool)

(assert (=> b!865025 (=> (not res!587891) (not e!481916))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49770 0))(
  ( (array!49771 (arr!23912 (Array (_ BitVec 32) (_ BitVec 64))) (size!24353 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49770)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!865025 (= res!587891 (and (= (select (arr!23912 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!865026 () Bool)

(declare-fun e!481917 () Bool)

(declare-fun e!481918 () Bool)

(assert (=> b!865026 (= e!481917 (not e!481918))))

(declare-fun res!587888 () Bool)

(assert (=> b!865026 (=> res!587888 e!481918)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865026 (= res!587888 (not (validKeyInArray!0 (select (arr!23912 _keys!868) from!1053))))))

(declare-datatypes ((V!27465 0))(
  ( (V!27466 (val!8454 Int)) )
))
(declare-datatypes ((tuple2!11204 0))(
  ( (tuple2!11205 (_1!5612 (_ BitVec 64)) (_2!5612 V!27465)) )
))
(declare-datatypes ((List!17068 0))(
  ( (Nil!17065) (Cons!17064 (h!18195 tuple2!11204) (t!24019 List!17068)) )
))
(declare-datatypes ((ListLongMap!9987 0))(
  ( (ListLongMap!9988 (toList!5009 List!17068)) )
))
(declare-fun lt!391849 () ListLongMap!9987)

(declare-fun lt!391846 () ListLongMap!9987)

(assert (=> b!865026 (= lt!391849 lt!391846)))

(declare-fun lt!391857 () ListLongMap!9987)

(declare-fun lt!391842 () tuple2!11204)

(declare-fun +!2305 (ListLongMap!9987 tuple2!11204) ListLongMap!9987)

(assert (=> b!865026 (= lt!391846 (+!2305 lt!391857 lt!391842))))

(declare-datatypes ((ValueCell!7967 0))(
  ( (ValueCellFull!7967 (v!10875 V!27465)) (EmptyCell!7967) )
))
(declare-datatypes ((array!49772 0))(
  ( (array!49773 (arr!23913 (Array (_ BitVec 32) ValueCell!7967)) (size!24354 (_ BitVec 32))) )
))
(declare-fun lt!391853 () array!49772)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27465)

(declare-fun zeroValue!654 () V!27465)

(declare-fun getCurrentListMapNoExtraKeys!2979 (array!49770 array!49772 (_ BitVec 32) (_ BitVec 32) V!27465 V!27465 (_ BitVec 32) Int) ListLongMap!9987)

(assert (=> b!865026 (= lt!391849 (getCurrentListMapNoExtraKeys!2979 _keys!868 lt!391853 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27465)

(assert (=> b!865026 (= lt!391842 (tuple2!11205 k!854 v!557))))

(declare-fun _values!688 () array!49772)

(assert (=> b!865026 (= lt!391857 (getCurrentListMapNoExtraKeys!2979 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29589 0))(
  ( (Unit!29590) )
))
(declare-fun lt!391856 () Unit!29589)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!545 (array!49770 array!49772 (_ BitVec 32) (_ BitVec 32) V!27465 V!27465 (_ BitVec 32) (_ BitVec 64) V!27465 (_ BitVec 32) Int) Unit!29589)

(assert (=> b!865026 (= lt!391856 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!545 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865027 () Bool)

(declare-fun res!587884 () Bool)

(assert (=> b!865027 (=> (not res!587884) (not e!481916))))

(assert (=> b!865027 (= res!587884 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24353 _keys!868))))))

(declare-fun b!865028 () Bool)

(declare-fun e!481914 () Unit!29589)

(declare-fun Unit!29591 () Unit!29589)

(assert (=> b!865028 (= e!481914 Unit!29591)))

(declare-fun b!865030 () Bool)

(declare-fun e!481915 () Bool)

(declare-fun tp_is_empty!16813 () Bool)

(assert (=> b!865030 (= e!481915 tp_is_empty!16813)))

(declare-fun mapIsEmpty!26819 () Bool)

(declare-fun mapRes!26819 () Bool)

(assert (=> mapIsEmpty!26819 mapRes!26819))

(declare-fun b!865031 () Bool)

(declare-fun e!481920 () Bool)

(assert (=> b!865031 (= e!481920 tp_is_empty!16813)))

(declare-fun b!865032 () Bool)

(declare-fun res!587892 () Bool)

(assert (=> b!865032 (=> (not res!587892) (not e!481916))))

(assert (=> b!865032 (= res!587892 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!26819 () Bool)

(declare-fun tp!51535 () Bool)

(assert (=> mapNonEmpty!26819 (= mapRes!26819 (and tp!51535 e!481915))))

(declare-fun mapValue!26819 () ValueCell!7967)

(declare-fun mapRest!26819 () (Array (_ BitVec 32) ValueCell!7967))

(declare-fun mapKey!26819 () (_ BitVec 32))

(assert (=> mapNonEmpty!26819 (= (arr!23913 _values!688) (store mapRest!26819 mapKey!26819 mapValue!26819))))

(declare-fun b!865033 () Bool)

(declare-fun e!481912 () Bool)

(assert (=> b!865033 (= e!481912 true)))

(declare-fun lt!391855 () ListLongMap!9987)

(declare-fun lt!391852 () tuple2!11204)

(assert (=> b!865033 (= lt!391855 (+!2305 (+!2305 lt!391857 lt!391852) lt!391842))))

(declare-fun lt!391850 () V!27465)

(declare-fun lt!391845 () Unit!29589)

(declare-fun addCommutativeForDiffKeys!512 (ListLongMap!9987 (_ BitVec 64) V!27465 (_ BitVec 64) V!27465) Unit!29589)

(assert (=> b!865033 (= lt!391845 (addCommutativeForDiffKeys!512 lt!391857 k!854 v!557 (select (arr!23912 _keys!868) from!1053) lt!391850))))

(declare-fun b!865034 () Bool)

(assert (=> b!865034 (= e!481916 e!481917)))

(declare-fun res!587883 () Bool)

(assert (=> b!865034 (=> (not res!587883) (not e!481917))))

(assert (=> b!865034 (= res!587883 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!391844 () ListLongMap!9987)

(assert (=> b!865034 (= lt!391844 (getCurrentListMapNoExtraKeys!2979 _keys!868 lt!391853 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!865034 (= lt!391853 (array!49773 (store (arr!23913 _values!688) i!612 (ValueCellFull!7967 v!557)) (size!24354 _values!688)))))

(declare-fun lt!391847 () ListLongMap!9987)

(assert (=> b!865034 (= lt!391847 (getCurrentListMapNoExtraKeys!2979 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865035 () Bool)

(declare-fun res!587887 () Bool)

(assert (=> b!865035 (=> (not res!587887) (not e!481916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49770 (_ BitVec 32)) Bool)

(assert (=> b!865035 (= res!587887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865036 () Bool)

(declare-fun res!587889 () Bool)

(assert (=> b!865036 (=> (not res!587889) (not e!481916))))

(assert (=> b!865036 (= res!587889 (and (= (size!24354 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24353 _keys!868) (size!24354 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865029 () Bool)

(assert (=> b!865029 (= e!481918 e!481912)))

(declare-fun res!587882 () Bool)

(assert (=> b!865029 (=> res!587882 e!481912)))

(assert (=> b!865029 (= res!587882 (= k!854 (select (arr!23912 _keys!868) from!1053)))))

(assert (=> b!865029 (not (= (select (arr!23912 _keys!868) from!1053) k!854))))

(declare-fun lt!391851 () Unit!29589)

(assert (=> b!865029 (= lt!391851 e!481914)))

(declare-fun c!92154 () Bool)

(assert (=> b!865029 (= c!92154 (= (select (arr!23912 _keys!868) from!1053) k!854))))

(assert (=> b!865029 (= lt!391844 lt!391855)))

(assert (=> b!865029 (= lt!391855 (+!2305 lt!391846 lt!391852))))

(assert (=> b!865029 (= lt!391852 (tuple2!11205 (select (arr!23912 _keys!868) from!1053) lt!391850))))

(declare-fun get!12649 (ValueCell!7967 V!27465) V!27465)

(declare-fun dynLambda!1173 (Int (_ BitVec 64)) V!27465)

(assert (=> b!865029 (= lt!391850 (get!12649 (select (arr!23913 _values!688) from!1053) (dynLambda!1173 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!587885 () Bool)

(assert (=> start!73790 (=> (not res!587885) (not e!481916))))

(assert (=> start!73790 (= res!587885 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24353 _keys!868))))))

(assert (=> start!73790 e!481916))

(assert (=> start!73790 tp_is_empty!16813))

(assert (=> start!73790 true))

(assert (=> start!73790 tp!51536))

(declare-fun array_inv!18888 (array!49770) Bool)

(assert (=> start!73790 (array_inv!18888 _keys!868)))

(declare-fun e!481913 () Bool)

(declare-fun array_inv!18889 (array!49772) Bool)

(assert (=> start!73790 (and (array_inv!18889 _values!688) e!481913)))

(declare-fun b!865037 () Bool)

(assert (=> b!865037 (= e!481913 (and e!481920 mapRes!26819))))

(declare-fun condMapEmpty!26819 () Bool)

(declare-fun mapDefault!26819 () ValueCell!7967)

