; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73824 () Bool)

(assert start!73824)

(declare-fun b_free!14711 () Bool)

(declare-fun b_next!14711 () Bool)

(assert (=> start!73824 (= b_free!14711 (not b_next!14711))))

(declare-fun tp!51637 () Bool)

(declare-fun b_and!24419 () Bool)

(assert (=> start!73824 (= tp!51637 b_and!24419)))

(declare-fun b!865875 () Bool)

(declare-fun e!482379 () Bool)

(declare-fun e!482378 () Bool)

(assert (=> b!865875 (= e!482379 e!482378)))

(declare-fun res!588445 () Bool)

(assert (=> b!865875 (=> (not res!588445) (not e!482378))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!865875 (= res!588445 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27509 0))(
  ( (V!27510 (val!8471 Int)) )
))
(declare-datatypes ((ValueCell!7984 0))(
  ( (ValueCellFull!7984 (v!10892 V!27509)) (EmptyCell!7984) )
))
(declare-datatypes ((array!49836 0))(
  ( (array!49837 (arr!23945 (Array (_ BitVec 32) ValueCell!7984)) (size!24386 (_ BitVec 32))) )
))
(declare-fun lt!392660 () array!49836)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11232 0))(
  ( (tuple2!11233 (_1!5626 (_ BitVec 64)) (_2!5626 V!27509)) )
))
(declare-datatypes ((List!17097 0))(
  ( (Nil!17094) (Cons!17093 (h!18224 tuple2!11232) (t!24082 List!17097)) )
))
(declare-datatypes ((ListLongMap!10015 0))(
  ( (ListLongMap!10016 (toList!5023 List!17097)) )
))
(declare-fun lt!392661 () ListLongMap!10015)

(declare-datatypes ((array!49838 0))(
  ( (array!49839 (arr!23946 (Array (_ BitVec 32) (_ BitVec 64))) (size!24387 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49838)

(declare-fun minValue!654 () V!27509)

(declare-fun zeroValue!654 () V!27509)

(declare-fun getCurrentListMapNoExtraKeys!2991 (array!49838 array!49836 (_ BitVec 32) (_ BitVec 32) V!27509 V!27509 (_ BitVec 32) Int) ListLongMap!10015)

(assert (=> b!865875 (= lt!392661 (getCurrentListMapNoExtraKeys!2991 _keys!868 lt!392660 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27509)

(declare-fun _values!688 () array!49836)

(assert (=> b!865875 (= lt!392660 (array!49837 (store (arr!23945 _values!688) i!612 (ValueCellFull!7984 v!557)) (size!24386 _values!688)))))

(declare-fun lt!392671 () ListLongMap!10015)

(assert (=> b!865875 (= lt!392671 (getCurrentListMapNoExtraKeys!2991 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26870 () Bool)

(declare-fun mapRes!26870 () Bool)

(declare-fun tp!51638 () Bool)

(declare-fun e!482374 () Bool)

(assert (=> mapNonEmpty!26870 (= mapRes!26870 (and tp!51638 e!482374))))

(declare-fun mapRest!26870 () (Array (_ BitVec 32) ValueCell!7984))

(declare-fun mapValue!26870 () ValueCell!7984)

(declare-fun mapKey!26870 () (_ BitVec 32))

(assert (=> mapNonEmpty!26870 (= (arr!23945 _values!688) (store mapRest!26870 mapKey!26870 mapValue!26870))))

(declare-fun b!865876 () Bool)

(declare-fun e!482373 () Bool)

(declare-fun tp_is_empty!16847 () Bool)

(assert (=> b!865876 (= e!482373 tp_is_empty!16847)))

(declare-fun b!865877 () Bool)

(declare-fun res!588447 () Bool)

(assert (=> b!865877 (=> (not res!588447) (not e!482379))))

(assert (=> b!865877 (= res!588447 (and (= (size!24386 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24387 _keys!868) (size!24386 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865878 () Bool)

(declare-fun e!482375 () Bool)

(assert (=> b!865878 (= e!482375 true)))

(declare-fun lt!392664 () tuple2!11232)

(declare-fun lt!392658 () tuple2!11232)

(declare-fun lt!392668 () ListLongMap!10015)

(declare-fun lt!392662 () ListLongMap!10015)

(declare-fun +!2319 (ListLongMap!10015 tuple2!11232) ListLongMap!10015)

(assert (=> b!865878 (= lt!392662 (+!2319 (+!2319 lt!392668 lt!392658) lt!392664))))

(declare-datatypes ((Unit!29648 0))(
  ( (Unit!29649) )
))
(declare-fun lt!392659 () Unit!29648)

(declare-fun lt!392670 () V!27509)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!525 (ListLongMap!10015 (_ BitVec 64) V!27509 (_ BitVec 64) V!27509) Unit!29648)

(assert (=> b!865878 (= lt!392659 (addCommutativeForDiffKeys!525 lt!392668 k!854 v!557 (select (arr!23946 _keys!868) from!1053) lt!392670))))

(declare-fun res!588446 () Bool)

(assert (=> start!73824 (=> (not res!588446) (not e!482379))))

(assert (=> start!73824 (= res!588446 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24387 _keys!868))))))

(assert (=> start!73824 e!482379))

(assert (=> start!73824 tp_is_empty!16847))

(assert (=> start!73824 true))

(assert (=> start!73824 tp!51637))

(declare-fun array_inv!18910 (array!49838) Bool)

(assert (=> start!73824 (array_inv!18910 _keys!868)))

(declare-fun e!482372 () Bool)

(declare-fun array_inv!18911 (array!49836) Bool)

(assert (=> start!73824 (and (array_inv!18911 _values!688) e!482372)))

(declare-fun b!865879 () Bool)

(assert (=> b!865879 (= e!482372 (and e!482373 mapRes!26870))))

(declare-fun condMapEmpty!26870 () Bool)

(declare-fun mapDefault!26870 () ValueCell!7984)

