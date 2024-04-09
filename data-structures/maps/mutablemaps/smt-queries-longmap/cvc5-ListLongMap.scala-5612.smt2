; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73484 () Bool)

(assert start!73484)

(declare-fun b_free!14371 () Bool)

(declare-fun b_next!14371 () Bool)

(assert (=> start!73484 (= b_free!14371 (not b_next!14371))))

(declare-fun tp!50618 () Bool)

(declare-fun b_and!23745 () Bool)

(assert (=> start!73484 (= tp!50618 b_and!23745)))

(declare-fun b!857654 () Bool)

(declare-fun e!478034 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49176 0))(
  ( (array!49177 (arr!23615 (Array (_ BitVec 32) (_ BitVec 64))) (size!24056 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49176)

(assert (=> b!857654 (= e!478034 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24056 _keys!868))))))

(declare-fun b!857655 () Bool)

(declare-fun res!582737 () Bool)

(declare-fun e!478035 () Bool)

(assert (=> b!857655 (=> (not res!582737) (not e!478035))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857655 (= res!582737 (validMask!0 mask!1196))))

(declare-fun b!857656 () Bool)

(declare-fun res!582732 () Bool)

(assert (=> b!857656 (=> (not res!582732) (not e!478035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49176 (_ BitVec 32)) Bool)

(assert (=> b!857656 (= res!582732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857657 () Bool)

(declare-fun e!478033 () Bool)

(assert (=> b!857657 (= e!478033 (not e!478034))))

(declare-fun res!582733 () Bool)

(assert (=> b!857657 (=> res!582733 e!478034)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857657 (= res!582733 (not (validKeyInArray!0 (select (arr!23615 _keys!868) from!1053))))))

(declare-datatypes ((V!27057 0))(
  ( (V!27058 (val!8301 Int)) )
))
(declare-fun v!557 () V!27057)

(declare-datatypes ((ValueCell!7814 0))(
  ( (ValueCellFull!7814 (v!10722 V!27057)) (EmptyCell!7814) )
))
(declare-datatypes ((array!49178 0))(
  ( (array!49179 (arr!23616 (Array (_ BitVec 32) ValueCell!7814)) (size!24057 (_ BitVec 32))) )
))
(declare-fun lt!386356 () array!49178)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun _values!688 () array!49178)

(declare-fun minValue!654 () V!27057)

(declare-fun zeroValue!654 () V!27057)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10938 0))(
  ( (tuple2!10939 (_1!5479 (_ BitVec 64)) (_2!5479 V!27057)) )
))
(declare-datatypes ((List!16810 0))(
  ( (Nil!16807) (Cons!16806 (h!17937 tuple2!10938) (t!23459 List!16810)) )
))
(declare-datatypes ((ListLongMap!9721 0))(
  ( (ListLongMap!9722 (toList!4876 List!16810)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2858 (array!49176 array!49178 (_ BitVec 32) (_ BitVec 32) V!27057 V!27057 (_ BitVec 32) Int) ListLongMap!9721)

(declare-fun +!2183 (ListLongMap!9721 tuple2!10938) ListLongMap!9721)

(assert (=> b!857657 (= (getCurrentListMapNoExtraKeys!2858 _keys!868 lt!386356 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2183 (getCurrentListMapNoExtraKeys!2858 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10939 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29208 0))(
  ( (Unit!29209) )
))
(declare-fun lt!386358 () Unit!29208)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!443 (array!49176 array!49178 (_ BitVec 32) (_ BitVec 32) V!27057 V!27057 (_ BitVec 32) (_ BitVec 64) V!27057 (_ BitVec 32) Int) Unit!29208)

(assert (=> b!857657 (= lt!386358 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!443 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857658 () Bool)

(declare-fun res!582739 () Bool)

(assert (=> b!857658 (=> (not res!582739) (not e!478035))))

(assert (=> b!857658 (= res!582739 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24056 _keys!868))))))

(declare-fun b!857659 () Bool)

(declare-fun res!582741 () Bool)

(assert (=> b!857659 (=> (not res!582741) (not e!478035))))

(declare-datatypes ((List!16811 0))(
  ( (Nil!16808) (Cons!16807 (h!17938 (_ BitVec 64)) (t!23460 List!16811)) )
))
(declare-fun arrayNoDuplicates!0 (array!49176 (_ BitVec 32) List!16811) Bool)

(assert (=> b!857659 (= res!582741 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16808))))

(declare-fun b!857660 () Bool)

(declare-fun res!582735 () Bool)

(assert (=> b!857660 (=> (not res!582735) (not e!478035))))

(assert (=> b!857660 (= res!582735 (and (= (select (arr!23615 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!857661 () Bool)

(declare-fun e!478031 () Bool)

(declare-fun tp_is_empty!16507 () Bool)

(assert (=> b!857661 (= e!478031 tp_is_empty!16507)))

(declare-fun res!582738 () Bool)

(assert (=> start!73484 (=> (not res!582738) (not e!478035))))

(assert (=> start!73484 (= res!582738 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24056 _keys!868))))))

(assert (=> start!73484 e!478035))

(assert (=> start!73484 tp_is_empty!16507))

(assert (=> start!73484 true))

(assert (=> start!73484 tp!50618))

(declare-fun array_inv!18686 (array!49176) Bool)

(assert (=> start!73484 (array_inv!18686 _keys!868)))

(declare-fun e!478032 () Bool)

(declare-fun array_inv!18687 (array!49178) Bool)

(assert (=> start!73484 (and (array_inv!18687 _values!688) e!478032)))

(declare-fun b!857662 () Bool)

(declare-fun res!582736 () Bool)

(assert (=> b!857662 (=> (not res!582736) (not e!478035))))

(assert (=> b!857662 (= res!582736 (and (= (size!24057 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24056 _keys!868) (size!24057 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857663 () Bool)

(declare-fun e!478029 () Bool)

(assert (=> b!857663 (= e!478029 tp_is_empty!16507)))

(declare-fun b!857664 () Bool)

(declare-fun res!582734 () Bool)

(assert (=> b!857664 (=> (not res!582734) (not e!478035))))

(assert (=> b!857664 (= res!582734 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!26360 () Bool)

(declare-fun mapRes!26360 () Bool)

(assert (=> mapIsEmpty!26360 mapRes!26360))

(declare-fun b!857665 () Bool)

(assert (=> b!857665 (= e!478035 e!478033)))

(declare-fun res!582740 () Bool)

(assert (=> b!857665 (=> (not res!582740) (not e!478033))))

(assert (=> b!857665 (= res!582740 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386357 () ListLongMap!9721)

(assert (=> b!857665 (= lt!386357 (getCurrentListMapNoExtraKeys!2858 _keys!868 lt!386356 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!857665 (= lt!386356 (array!49179 (store (arr!23616 _values!688) i!612 (ValueCellFull!7814 v!557)) (size!24057 _values!688)))))

(declare-fun lt!386355 () ListLongMap!9721)

(assert (=> b!857665 (= lt!386355 (getCurrentListMapNoExtraKeys!2858 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26360 () Bool)

(declare-fun tp!50617 () Bool)

(assert (=> mapNonEmpty!26360 (= mapRes!26360 (and tp!50617 e!478031))))

(declare-fun mapRest!26360 () (Array (_ BitVec 32) ValueCell!7814))

(declare-fun mapValue!26360 () ValueCell!7814)

(declare-fun mapKey!26360 () (_ BitVec 32))

(assert (=> mapNonEmpty!26360 (= (arr!23616 _values!688) (store mapRest!26360 mapKey!26360 mapValue!26360))))

(declare-fun b!857666 () Bool)

(assert (=> b!857666 (= e!478032 (and e!478029 mapRes!26360))))

(declare-fun condMapEmpty!26360 () Bool)

(declare-fun mapDefault!26360 () ValueCell!7814)

