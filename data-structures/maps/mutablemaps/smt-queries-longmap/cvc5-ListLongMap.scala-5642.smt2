; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73664 () Bool)

(assert start!73664)

(declare-fun b_free!14551 () Bool)

(declare-fun b_next!14551 () Bool)

(assert (=> start!73664 (= b_free!14551 (not b_next!14551))))

(declare-fun tp!51157 () Bool)

(declare-fun b_and!24099 () Bool)

(assert (=> start!73664 (= tp!51157 b_and!24099)))

(declare-fun b!861882 () Bool)

(declare-fun e!480225 () Bool)

(declare-fun e!480223 () Bool)

(assert (=> b!861882 (= e!480225 (not e!480223))))

(declare-fun res!585816 () Bool)

(assert (=> b!861882 (=> res!585816 e!480223)))

(declare-datatypes ((array!49520 0))(
  ( (array!49521 (arr!23787 (Array (_ BitVec 32) (_ BitVec 64))) (size!24228 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49520)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861882 (= res!585816 (not (validKeyInArray!0 (select (arr!23787 _keys!868) from!1053))))))

(declare-datatypes ((V!27297 0))(
  ( (V!27298 (val!8391 Int)) )
))
(declare-datatypes ((tuple2!11090 0))(
  ( (tuple2!11091 (_1!5555 (_ BitVec 64)) (_2!5555 V!27297)) )
))
(declare-datatypes ((List!16960 0))(
  ( (Nil!16957) (Cons!16956 (h!18087 tuple2!11090) (t!23785 List!16960)) )
))
(declare-datatypes ((ListLongMap!9873 0))(
  ( (ListLongMap!9874 (toList!4952 List!16960)) )
))
(declare-fun lt!388857 () ListLongMap!9873)

(declare-fun lt!388855 () ListLongMap!9873)

(assert (=> b!861882 (= lt!388857 lt!388855)))

(declare-fun v!557 () V!27297)

(declare-fun lt!388862 () ListLongMap!9873)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2249 (ListLongMap!9873 tuple2!11090) ListLongMap!9873)

(assert (=> b!861882 (= lt!388855 (+!2249 lt!388862 (tuple2!11091 k!854 v!557)))))

(declare-datatypes ((ValueCell!7904 0))(
  ( (ValueCellFull!7904 (v!10812 V!27297)) (EmptyCell!7904) )
))
(declare-datatypes ((array!49522 0))(
  ( (array!49523 (arr!23788 (Array (_ BitVec 32) ValueCell!7904)) (size!24229 (_ BitVec 32))) )
))
(declare-fun lt!388859 () array!49522)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27297)

(declare-fun zeroValue!654 () V!27297)

(declare-fun getCurrentListMapNoExtraKeys!2929 (array!49520 array!49522 (_ BitVec 32) (_ BitVec 32) V!27297 V!27297 (_ BitVec 32) Int) ListLongMap!9873)

(assert (=> b!861882 (= lt!388857 (getCurrentListMapNoExtraKeys!2929 _keys!868 lt!388859 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49522)

(assert (=> b!861882 (= lt!388862 (getCurrentListMapNoExtraKeys!2929 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29385 0))(
  ( (Unit!29386) )
))
(declare-fun lt!388863 () Unit!29385)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!499 (array!49520 array!49522 (_ BitVec 32) (_ BitVec 32) V!27297 V!27297 (_ BitVec 32) (_ BitVec 64) V!27297 (_ BitVec 32) Int) Unit!29385)

(assert (=> b!861882 (= lt!388863 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!499 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861883 () Bool)

(declare-fun res!585810 () Bool)

(declare-fun e!480219 () Bool)

(assert (=> b!861883 (=> (not res!585810) (not e!480219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49520 (_ BitVec 32)) Bool)

(assert (=> b!861883 (= res!585810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26630 () Bool)

(declare-fun mapRes!26630 () Bool)

(assert (=> mapIsEmpty!26630 mapRes!26630))

(declare-fun b!861884 () Bool)

(assert (=> b!861884 (= e!480219 e!480225)))

(declare-fun res!585814 () Bool)

(assert (=> b!861884 (=> (not res!585814) (not e!480225))))

(assert (=> b!861884 (= res!585814 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!388856 () ListLongMap!9873)

(assert (=> b!861884 (= lt!388856 (getCurrentListMapNoExtraKeys!2929 _keys!868 lt!388859 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!861884 (= lt!388859 (array!49523 (store (arr!23788 _values!688) i!612 (ValueCellFull!7904 v!557)) (size!24229 _values!688)))))

(declare-fun lt!388853 () ListLongMap!9873)

(assert (=> b!861884 (= lt!388853 (getCurrentListMapNoExtraKeys!2929 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861885 () Bool)

(declare-fun res!585815 () Bool)

(assert (=> b!861885 (=> (not res!585815) (not e!480219))))

(assert (=> b!861885 (= res!585815 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24228 _keys!868))))))

(declare-fun b!861886 () Bool)

(declare-fun res!585813 () Bool)

(assert (=> b!861886 (=> (not res!585813) (not e!480219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861886 (= res!585813 (validMask!0 mask!1196))))

(declare-fun b!861887 () Bool)

(declare-fun res!585818 () Bool)

(assert (=> b!861887 (=> (not res!585818) (not e!480219))))

(assert (=> b!861887 (= res!585818 (and (= (select (arr!23787 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!585817 () Bool)

(assert (=> start!73664 (=> (not res!585817) (not e!480219))))

(assert (=> start!73664 (= res!585817 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24228 _keys!868))))))

(assert (=> start!73664 e!480219))

(declare-fun tp_is_empty!16687 () Bool)

(assert (=> start!73664 tp_is_empty!16687))

(assert (=> start!73664 true))

(assert (=> start!73664 tp!51157))

(declare-fun array_inv!18796 (array!49520) Bool)

(assert (=> start!73664 (array_inv!18796 _keys!868)))

(declare-fun e!480222 () Bool)

(declare-fun array_inv!18797 (array!49522) Bool)

(assert (=> start!73664 (and (array_inv!18797 _values!688) e!480222)))

(declare-fun b!861888 () Bool)

(declare-fun res!585819 () Bool)

(assert (=> b!861888 (=> (not res!585819) (not e!480219))))

(assert (=> b!861888 (= res!585819 (validKeyInArray!0 k!854))))

(declare-fun b!861889 () Bool)

(declare-fun e!480224 () Bool)

(assert (=> b!861889 (= e!480224 tp_is_empty!16687)))

(declare-fun b!861890 () Bool)

(declare-fun res!585812 () Bool)

(assert (=> b!861890 (=> (not res!585812) (not e!480219))))

(declare-datatypes ((List!16961 0))(
  ( (Nil!16958) (Cons!16957 (h!18088 (_ BitVec 64)) (t!23786 List!16961)) )
))
(declare-fun arrayNoDuplicates!0 (array!49520 (_ BitVec 32) List!16961) Bool)

(assert (=> b!861890 (= res!585812 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16958))))

(declare-fun b!861891 () Bool)

(declare-fun res!585811 () Bool)

(assert (=> b!861891 (=> (not res!585811) (not e!480219))))

(assert (=> b!861891 (= res!585811 (and (= (size!24229 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24228 _keys!868) (size!24229 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861892 () Bool)

(declare-fun e!480221 () Unit!29385)

(declare-fun Unit!29387 () Unit!29385)

(assert (=> b!861892 (= e!480221 Unit!29387)))

(declare-fun lt!388861 () Unit!29385)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49520 (_ BitVec 32) (_ BitVec 32)) Unit!29385)

(assert (=> b!861892 (= lt!388861 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!861892 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16958)))

(declare-fun lt!388860 () Unit!29385)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29385)

(assert (=> b!861892 (= lt!388860 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861892 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388854 () Unit!29385)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49520 (_ BitVec 64) (_ BitVec 32) List!16961) Unit!29385)

(assert (=> b!861892 (= lt!388854 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16958))))

(assert (=> b!861892 false))

(declare-fun mapNonEmpty!26630 () Bool)

(declare-fun tp!51158 () Bool)

(declare-fun e!480220 () Bool)

(assert (=> mapNonEmpty!26630 (= mapRes!26630 (and tp!51158 e!480220))))

(declare-fun mapValue!26630 () ValueCell!7904)

(declare-fun mapRest!26630 () (Array (_ BitVec 32) ValueCell!7904))

(declare-fun mapKey!26630 () (_ BitVec 32))

(assert (=> mapNonEmpty!26630 (= (arr!23788 _values!688) (store mapRest!26630 mapKey!26630 mapValue!26630))))

(declare-fun b!861893 () Bool)

(declare-fun Unit!29388 () Unit!29385)

(assert (=> b!861893 (= e!480221 Unit!29388)))

(declare-fun b!861894 () Bool)

(assert (=> b!861894 (= e!480223 true)))

(assert (=> b!861894 (not (= (select (arr!23787 _keys!868) from!1053) k!854))))

(declare-fun lt!388858 () Unit!29385)

(assert (=> b!861894 (= lt!388858 e!480221)))

(declare-fun c!91965 () Bool)

(assert (=> b!861894 (= c!91965 (= (select (arr!23787 _keys!868) from!1053) k!854))))

(declare-fun get!12564 (ValueCell!7904 V!27297) V!27297)

(declare-fun dynLambda!1130 (Int (_ BitVec 64)) V!27297)

(assert (=> b!861894 (= lt!388856 (+!2249 lt!388855 (tuple2!11091 (select (arr!23787 _keys!868) from!1053) (get!12564 (select (arr!23788 _values!688) from!1053) (dynLambda!1130 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861895 () Bool)

(assert (=> b!861895 (= e!480220 tp_is_empty!16687)))

(declare-fun b!861896 () Bool)

(assert (=> b!861896 (= e!480222 (and e!480224 mapRes!26630))))

(declare-fun condMapEmpty!26630 () Bool)

(declare-fun mapDefault!26630 () ValueCell!7904)

