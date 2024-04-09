; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73548 () Bool)

(assert start!73548)

(declare-fun b_free!14435 () Bool)

(declare-fun b_next!14435 () Bool)

(assert (=> start!73548 (= b_free!14435 (not b_next!14435))))

(declare-fun tp!50810 () Bool)

(declare-fun b_and!23867 () Bool)

(assert (=> start!73548 (= tp!50810 b_and!23867)))

(declare-fun b!859004 () Bool)

(declare-fun res!583746 () Bool)

(declare-fun e!478747 () Bool)

(assert (=> b!859004 (=> (not res!583746) (not e!478747))))

(declare-datatypes ((array!49300 0))(
  ( (array!49301 (arr!23677 (Array (_ BitVec 32) (_ BitVec 64))) (size!24118 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49300)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49300 (_ BitVec 32)) Bool)

(assert (=> b!859004 (= res!583746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26456 () Bool)

(declare-fun mapRes!26456 () Bool)

(assert (=> mapIsEmpty!26456 mapRes!26456))

(declare-fun b!859005 () Bool)

(declare-fun e!478746 () Bool)

(declare-fun e!478749 () Bool)

(assert (=> b!859005 (= e!478746 (not e!478749))))

(declare-fun res!583740 () Bool)

(assert (=> b!859005 (=> res!583740 e!478749)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859005 (= res!583740 (not (validKeyInArray!0 (select (arr!23677 _keys!868) from!1053))))))

(declare-datatypes ((V!27141 0))(
  ( (V!27142 (val!8333 Int)) )
))
(declare-datatypes ((tuple2!10990 0))(
  ( (tuple2!10991 (_1!5505 (_ BitVec 64)) (_2!5505 V!27141)) )
))
(declare-datatypes ((List!16862 0))(
  ( (Nil!16859) (Cons!16858 (h!17989 tuple2!10990) (t!23571 List!16862)) )
))
(declare-datatypes ((ListLongMap!9773 0))(
  ( (ListLongMap!9774 (toList!4902 List!16862)) )
))
(declare-fun lt!387050 () ListLongMap!9773)

(declare-fun lt!387051 () ListLongMap!9773)

(assert (=> b!859005 (= lt!387050 lt!387051)))

(declare-fun v!557 () V!27141)

(declare-fun lt!387053 () ListLongMap!9773)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2205 (ListLongMap!9773 tuple2!10990) ListLongMap!9773)

(assert (=> b!859005 (= lt!387051 (+!2205 lt!387053 (tuple2!10991 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7846 0))(
  ( (ValueCellFull!7846 (v!10754 V!27141)) (EmptyCell!7846) )
))
(declare-datatypes ((array!49302 0))(
  ( (array!49303 (arr!23678 (Array (_ BitVec 32) ValueCell!7846)) (size!24119 (_ BitVec 32))) )
))
(declare-fun lt!387057 () array!49302)

(declare-fun minValue!654 () V!27141)

(declare-fun zeroValue!654 () V!27141)

(declare-fun getCurrentListMapNoExtraKeys!2882 (array!49300 array!49302 (_ BitVec 32) (_ BitVec 32) V!27141 V!27141 (_ BitVec 32) Int) ListLongMap!9773)

(assert (=> b!859005 (= lt!387050 (getCurrentListMapNoExtraKeys!2882 _keys!868 lt!387057 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49302)

(assert (=> b!859005 (= lt!387053 (getCurrentListMapNoExtraKeys!2882 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29254 0))(
  ( (Unit!29255) )
))
(declare-fun lt!387055 () Unit!29254)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!462 (array!49300 array!49302 (_ BitVec 32) (_ BitVec 32) V!27141 V!27141 (_ BitVec 32) (_ BitVec 64) V!27141 (_ BitVec 32) Int) Unit!29254)

(assert (=> b!859005 (= lt!387055 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!462 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859006 () Bool)

(declare-fun res!583737 () Bool)

(assert (=> b!859006 (=> (not res!583737) (not e!478747))))

(assert (=> b!859006 (= res!583737 (and (= (select (arr!23677 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!859007 () Bool)

(declare-fun e!478748 () Bool)

(declare-fun tp_is_empty!16571 () Bool)

(assert (=> b!859007 (= e!478748 tp_is_empty!16571)))

(declare-fun b!859009 () Bool)

(declare-fun res!583738 () Bool)

(assert (=> b!859009 (=> (not res!583738) (not e!478747))))

(declare-datatypes ((List!16863 0))(
  ( (Nil!16860) (Cons!16859 (h!17990 (_ BitVec 64)) (t!23572 List!16863)) )
))
(declare-fun arrayNoDuplicates!0 (array!49300 (_ BitVec 32) List!16863) Bool)

(assert (=> b!859009 (= res!583738 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16860))))

(declare-fun mapNonEmpty!26456 () Bool)

(declare-fun tp!50809 () Bool)

(declare-fun e!478745 () Bool)

(assert (=> mapNonEmpty!26456 (= mapRes!26456 (and tp!50809 e!478745))))

(declare-fun mapRest!26456 () (Array (_ BitVec 32) ValueCell!7846))

(declare-fun mapKey!26456 () (_ BitVec 32))

(declare-fun mapValue!26456 () ValueCell!7846)

(assert (=> mapNonEmpty!26456 (= (arr!23678 _values!688) (store mapRest!26456 mapKey!26456 mapValue!26456))))

(declare-fun b!859010 () Bool)

(assert (=> b!859010 (= e!478745 tp_is_empty!16571)))

(declare-fun b!859011 () Bool)

(declare-fun res!583745 () Bool)

(assert (=> b!859011 (=> (not res!583745) (not e!478747))))

(assert (=> b!859011 (= res!583745 (validKeyInArray!0 k!854))))

(declare-fun b!859012 () Bool)

(declare-fun res!583744 () Bool)

(assert (=> b!859012 (=> (not res!583744) (not e!478747))))

(assert (=> b!859012 (= res!583744 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24118 _keys!868))))))

(declare-fun b!859013 () Bool)

(declare-fun res!583742 () Bool)

(assert (=> b!859013 (=> (not res!583742) (not e!478747))))

(assert (=> b!859013 (= res!583742 (and (= (size!24119 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24118 _keys!868) (size!24119 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859014 () Bool)

(assert (=> b!859014 (= e!478747 e!478746)))

(declare-fun res!583739 () Bool)

(assert (=> b!859014 (=> (not res!583739) (not e!478746))))

(assert (=> b!859014 (= res!583739 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!387054 () ListLongMap!9773)

(assert (=> b!859014 (= lt!387054 (getCurrentListMapNoExtraKeys!2882 _keys!868 lt!387057 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!859014 (= lt!387057 (array!49303 (store (arr!23678 _values!688) i!612 (ValueCellFull!7846 v!557)) (size!24119 _values!688)))))

(declare-fun lt!387056 () ListLongMap!9773)

(assert (=> b!859014 (= lt!387056 (getCurrentListMapNoExtraKeys!2882 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859015 () Bool)

(declare-fun res!583736 () Bool)

(assert (=> b!859015 (=> (not res!583736) (not e!478747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859015 (= res!583736 (validMask!0 mask!1196))))

(declare-fun res!583743 () Bool)

(assert (=> start!73548 (=> (not res!583743) (not e!478747))))

(assert (=> start!73548 (= res!583743 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24118 _keys!868))))))

(assert (=> start!73548 e!478747))

(assert (=> start!73548 tp_is_empty!16571))

(assert (=> start!73548 true))

(assert (=> start!73548 tp!50810))

(declare-fun array_inv!18728 (array!49300) Bool)

(assert (=> start!73548 (array_inv!18728 _keys!868)))

(declare-fun e!478751 () Bool)

(declare-fun array_inv!18729 (array!49302) Bool)

(assert (=> start!73548 (and (array_inv!18729 _values!688) e!478751)))

(declare-fun b!859008 () Bool)

(declare-fun e!478752 () Bool)

(assert (=> b!859008 (= e!478749 e!478752)))

(declare-fun res!583741 () Bool)

(assert (=> b!859008 (=> res!583741 e!478752)))

(assert (=> b!859008 (= res!583741 (not (= (select (arr!23677 _keys!868) from!1053) k!854)))))

(declare-fun get!12487 (ValueCell!7846 V!27141) V!27141)

(declare-fun dynLambda!1093 (Int (_ BitVec 64)) V!27141)

(assert (=> b!859008 (= lt!387054 (+!2205 lt!387051 (tuple2!10991 (select (arr!23677 _keys!868) from!1053) (get!12487 (select (arr!23678 _values!688) from!1053) (dynLambda!1093 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859016 () Bool)

(assert (=> b!859016 (= e!478751 (and e!478748 mapRes!26456))))

(declare-fun condMapEmpty!26456 () Bool)

(declare-fun mapDefault!26456 () ValueCell!7846)

