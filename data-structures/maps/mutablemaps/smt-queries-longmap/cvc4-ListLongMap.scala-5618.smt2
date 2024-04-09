; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73524 () Bool)

(assert start!73524)

(declare-fun b_free!14411 () Bool)

(declare-fun b_next!14411 () Bool)

(assert (=> start!73524 (= b_free!14411 (not b_next!14411))))

(declare-fun tp!50737 () Bool)

(declare-fun b_and!23819 () Bool)

(assert (=> start!73524 (= tp!50737 b_and!23819)))

(declare-fun b!858476 () Bool)

(declare-fun res!583344 () Bool)

(declare-fun e!478457 () Bool)

(assert (=> b!858476 (=> (not res!583344) (not e!478457))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!49254 0))(
  ( (array!49255 (arr!23654 (Array (_ BitVec 32) (_ BitVec 64))) (size!24095 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49254)

(declare-datatypes ((V!27109 0))(
  ( (V!27110 (val!8321 Int)) )
))
(declare-datatypes ((ValueCell!7834 0))(
  ( (ValueCellFull!7834 (v!10742 V!27109)) (EmptyCell!7834) )
))
(declare-datatypes ((array!49256 0))(
  ( (array!49257 (arr!23655 (Array (_ BitVec 32) ValueCell!7834)) (size!24096 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49256)

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!858476 (= res!583344 (and (= (size!24096 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24095 _keys!868) (size!24096 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858477 () Bool)

(declare-fun res!583343 () Bool)

(assert (=> b!858477 (=> (not res!583343) (not e!478457))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858477 (= res!583343 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!26420 () Bool)

(declare-fun mapRes!26420 () Bool)

(assert (=> mapIsEmpty!26420 mapRes!26420))

(declare-fun res!583346 () Bool)

(assert (=> start!73524 (=> (not res!583346) (not e!478457))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73524 (= res!583346 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24095 _keys!868))))))

(assert (=> start!73524 e!478457))

(declare-fun tp_is_empty!16547 () Bool)

(assert (=> start!73524 tp_is_empty!16547))

(assert (=> start!73524 true))

(assert (=> start!73524 tp!50737))

(declare-fun array_inv!18712 (array!49254) Bool)

(assert (=> start!73524 (array_inv!18712 _keys!868)))

(declare-fun e!478458 () Bool)

(declare-fun array_inv!18713 (array!49256) Bool)

(assert (=> start!73524 (and (array_inv!18713 _values!688) e!478458)))

(declare-fun b!858478 () Bool)

(declare-fun e!478463 () Bool)

(assert (=> b!858478 (= e!478457 e!478463)))

(declare-fun res!583350 () Bool)

(assert (=> b!858478 (=> (not res!583350) (not e!478463))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858478 (= res!583350 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386765 () array!49256)

(declare-datatypes ((tuple2!10968 0))(
  ( (tuple2!10969 (_1!5494 (_ BitVec 64)) (_2!5494 V!27109)) )
))
(declare-datatypes ((List!16840 0))(
  ( (Nil!16837) (Cons!16836 (h!17967 tuple2!10968) (t!23525 List!16840)) )
))
(declare-datatypes ((ListLongMap!9751 0))(
  ( (ListLongMap!9752 (toList!4891 List!16840)) )
))
(declare-fun lt!386766 () ListLongMap!9751)

(declare-fun minValue!654 () V!27109)

(declare-fun zeroValue!654 () V!27109)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2873 (array!49254 array!49256 (_ BitVec 32) (_ BitVec 32) V!27109 V!27109 (_ BitVec 32) Int) ListLongMap!9751)

(assert (=> b!858478 (= lt!386766 (getCurrentListMapNoExtraKeys!2873 _keys!868 lt!386765 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27109)

(assert (=> b!858478 (= lt!386765 (array!49257 (store (arr!23655 _values!688) i!612 (ValueCellFull!7834 v!557)) (size!24096 _values!688)))))

(declare-fun lt!386762 () ListLongMap!9751)

(assert (=> b!858478 (= lt!386762 (getCurrentListMapNoExtraKeys!2873 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858479 () Bool)

(declare-fun e!478461 () Bool)

(assert (=> b!858479 (= e!478461 true)))

(declare-datatypes ((List!16841 0))(
  ( (Nil!16838) (Cons!16837 (h!17968 (_ BitVec 64)) (t!23526 List!16841)) )
))
(declare-fun arrayNoDuplicates!0 (array!49254 (_ BitVec 32) List!16841) Bool)

(assert (=> b!858479 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16838)))

(declare-datatypes ((Unit!29234 0))(
  ( (Unit!29235) )
))
(declare-fun lt!386763 () Unit!29234)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49254 (_ BitVec 32) (_ BitVec 32)) Unit!29234)

(assert (=> b!858479 (= lt!386763 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858480 () Bool)

(declare-fun e!478464 () Bool)

(assert (=> b!858480 (= e!478464 tp_is_empty!16547)))

(declare-fun b!858481 () Bool)

(declare-fun res!583342 () Bool)

(assert (=> b!858481 (=> (not res!583342) (not e!478457))))

(assert (=> b!858481 (= res!583342 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16838))))

(declare-fun b!858482 () Bool)

(declare-fun e!478459 () Bool)

(assert (=> b!858482 (= e!478459 e!478461)))

(declare-fun res!583341 () Bool)

(assert (=> b!858482 (=> res!583341 e!478461)))

(assert (=> b!858482 (= res!583341 (not (= (select (arr!23654 _keys!868) from!1053) k!854)))))

(declare-fun lt!386764 () ListLongMap!9751)

(declare-fun +!2195 (ListLongMap!9751 tuple2!10968) ListLongMap!9751)

(declare-fun get!12471 (ValueCell!7834 V!27109) V!27109)

(declare-fun dynLambda!1085 (Int (_ BitVec 64)) V!27109)

(assert (=> b!858482 (= lt!386766 (+!2195 lt!386764 (tuple2!10969 (select (arr!23654 _keys!868) from!1053) (get!12471 (select (arr!23655 _values!688) from!1053) (dynLambda!1085 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858483 () Bool)

(declare-fun e!478460 () Bool)

(assert (=> b!858483 (= e!478460 tp_is_empty!16547)))

(declare-fun b!858484 () Bool)

(declare-fun res!583348 () Bool)

(assert (=> b!858484 (=> (not res!583348) (not e!478457))))

(assert (=> b!858484 (= res!583348 (and (= (select (arr!23654 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!858485 () Bool)

(assert (=> b!858485 (= e!478463 (not e!478459))))

(declare-fun res!583349 () Bool)

(assert (=> b!858485 (=> res!583349 e!478459)))

(assert (=> b!858485 (= res!583349 (not (validKeyInArray!0 (select (arr!23654 _keys!868) from!1053))))))

(declare-fun lt!386767 () ListLongMap!9751)

(assert (=> b!858485 (= lt!386767 lt!386764)))

(declare-fun lt!386769 () ListLongMap!9751)

(assert (=> b!858485 (= lt!386764 (+!2195 lt!386769 (tuple2!10969 k!854 v!557)))))

(assert (=> b!858485 (= lt!386767 (getCurrentListMapNoExtraKeys!2873 _keys!868 lt!386765 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858485 (= lt!386769 (getCurrentListMapNoExtraKeys!2873 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!386768 () Unit!29234)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!455 (array!49254 array!49256 (_ BitVec 32) (_ BitVec 32) V!27109 V!27109 (_ BitVec 32) (_ BitVec 64) V!27109 (_ BitVec 32) Int) Unit!29234)

(assert (=> b!858485 (= lt!386768 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!455 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!26420 () Bool)

(declare-fun tp!50738 () Bool)

(assert (=> mapNonEmpty!26420 (= mapRes!26420 (and tp!50738 e!478464))))

(declare-fun mapKey!26420 () (_ BitVec 32))

(declare-fun mapValue!26420 () ValueCell!7834)

(declare-fun mapRest!26420 () (Array (_ BitVec 32) ValueCell!7834))

(assert (=> mapNonEmpty!26420 (= (arr!23655 _values!688) (store mapRest!26420 mapKey!26420 mapValue!26420))))

(declare-fun b!858486 () Bool)

(assert (=> b!858486 (= e!478458 (and e!478460 mapRes!26420))))

(declare-fun condMapEmpty!26420 () Bool)

(declare-fun mapDefault!26420 () ValueCell!7834)

