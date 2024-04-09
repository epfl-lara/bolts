; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74020 () Bool)

(assert start!74020)

(declare-fun b_free!14907 () Bool)

(declare-fun b_next!14907 () Bool)

(assert (=> start!74020 (= b_free!14907 (not b_next!14907))))

(declare-fun tp!52225 () Bool)

(declare-fun b_and!24677 () Bool)

(assert (=> start!74020 (= tp!52225 b_and!24677)))

(declare-fun b!869829 () Bool)

(declare-fun e!484412 () Bool)

(declare-fun tp_is_empty!17043 () Bool)

(assert (=> b!869829 (= e!484412 tp_is_empty!17043)))

(declare-fun b!869830 () Bool)

(declare-fun res!591273 () Bool)

(declare-fun e!484413 () Bool)

(assert (=> b!869830 (=> (not res!591273) (not e!484413))))

(declare-datatypes ((array!50218 0))(
  ( (array!50219 (arr!24136 (Array (_ BitVec 32) (_ BitVec 64))) (size!24577 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50218)

(declare-datatypes ((List!17240 0))(
  ( (Nil!17237) (Cons!17236 (h!18367 (_ BitVec 64)) (t!24285 List!17240)) )
))
(declare-fun arrayNoDuplicates!0 (array!50218 (_ BitVec 32) List!17240) Bool)

(assert (=> b!869830 (= res!591273 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17237))))

(declare-fun b!869831 () Bool)

(declare-fun e!484410 () Bool)

(assert (=> b!869831 (= e!484413 e!484410)))

(declare-fun res!591275 () Bool)

(assert (=> b!869831 (=> (not res!591275) (not e!484410))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869831 (= res!591275 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27771 0))(
  ( (V!27772 (val!8569 Int)) )
))
(declare-datatypes ((tuple2!11384 0))(
  ( (tuple2!11385 (_1!5702 (_ BitVec 64)) (_2!5702 V!27771)) )
))
(declare-datatypes ((List!17241 0))(
  ( (Nil!17238) (Cons!17237 (h!18368 tuple2!11384) (t!24286 List!17241)) )
))
(declare-datatypes ((ListLongMap!10167 0))(
  ( (ListLongMap!10168 (toList!5099 List!17241)) )
))
(declare-fun lt!394928 () ListLongMap!10167)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8082 0))(
  ( (ValueCellFull!8082 (v!10990 V!27771)) (EmptyCell!8082) )
))
(declare-datatypes ((array!50220 0))(
  ( (array!50221 (arr!24137 (Array (_ BitVec 32) ValueCell!8082)) (size!24578 (_ BitVec 32))) )
))
(declare-fun lt!394929 () array!50220)

(declare-fun minValue!654 () V!27771)

(declare-fun zeroValue!654 () V!27771)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3063 (array!50218 array!50220 (_ BitVec 32) (_ BitVec 32) V!27771 V!27771 (_ BitVec 32) Int) ListLongMap!10167)

(assert (=> b!869831 (= lt!394928 (getCurrentListMapNoExtraKeys!3063 _keys!868 lt!394929 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27771)

(declare-fun _values!688 () array!50220)

(assert (=> b!869831 (= lt!394929 (array!50221 (store (arr!24137 _values!688) i!612 (ValueCellFull!8082 v!557)) (size!24578 _values!688)))))

(declare-fun lt!394927 () ListLongMap!10167)

(assert (=> b!869831 (= lt!394927 (getCurrentListMapNoExtraKeys!3063 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869832 () Bool)

(declare-fun res!591276 () Bool)

(assert (=> b!869832 (=> (not res!591276) (not e!484413))))

(assert (=> b!869832 (= res!591276 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24577 _keys!868))))))

(declare-fun b!869833 () Bool)

(declare-fun res!591279 () Bool)

(assert (=> b!869833 (=> (not res!591279) (not e!484413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869833 (= res!591279 (validMask!0 mask!1196))))

(declare-fun b!869834 () Bool)

(declare-fun res!591272 () Bool)

(assert (=> b!869834 (=> (not res!591272) (not e!484413))))

(assert (=> b!869834 (= res!591272 (and (= (size!24578 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24577 _keys!868) (size!24578 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27164 () Bool)

(declare-fun mapRes!27164 () Bool)

(assert (=> mapIsEmpty!27164 mapRes!27164))

(declare-fun res!591277 () Bool)

(assert (=> start!74020 (=> (not res!591277) (not e!484413))))

(assert (=> start!74020 (= res!591277 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24577 _keys!868))))))

(assert (=> start!74020 e!484413))

(assert (=> start!74020 tp_is_empty!17043))

(assert (=> start!74020 true))

(assert (=> start!74020 tp!52225))

(declare-fun array_inv!19036 (array!50218) Bool)

(assert (=> start!74020 (array_inv!19036 _keys!868)))

(declare-fun e!484411 () Bool)

(declare-fun array_inv!19037 (array!50220) Bool)

(assert (=> start!74020 (and (array_inv!19037 _values!688) e!484411)))

(declare-fun b!869835 () Bool)

(declare-fun res!591278 () Bool)

(assert (=> b!869835 (=> (not res!591278) (not e!484413))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869835 (= res!591278 (validKeyInArray!0 k0!854))))

(declare-fun b!869836 () Bool)

(declare-fun res!591274 () Bool)

(assert (=> b!869836 (=> (not res!591274) (not e!484413))))

(assert (=> b!869836 (= res!591274 (and (= (select (arr!24136 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869837 () Bool)

(assert (=> b!869837 (= e!484410 (not true))))

(declare-fun +!2382 (ListLongMap!10167 tuple2!11384) ListLongMap!10167)

(assert (=> b!869837 (= (getCurrentListMapNoExtraKeys!3063 _keys!868 lt!394929 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2382 (getCurrentListMapNoExtraKeys!3063 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11385 k0!854 v!557)))))

(declare-datatypes ((Unit!29814 0))(
  ( (Unit!29815) )
))
(declare-fun lt!394926 () Unit!29814)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!613 (array!50218 array!50220 (_ BitVec 32) (_ BitVec 32) V!27771 V!27771 (_ BitVec 32) (_ BitVec 64) V!27771 (_ BitVec 32) Int) Unit!29814)

(assert (=> b!869837 (= lt!394926 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!613 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869838 () Bool)

(assert (=> b!869838 (= e!484411 (and e!484412 mapRes!27164))))

(declare-fun condMapEmpty!27164 () Bool)

(declare-fun mapDefault!27164 () ValueCell!8082)

(assert (=> b!869838 (= condMapEmpty!27164 (= (arr!24137 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8082)) mapDefault!27164)))))

(declare-fun b!869839 () Bool)

(declare-fun e!484409 () Bool)

(assert (=> b!869839 (= e!484409 tp_is_empty!17043)))

(declare-fun mapNonEmpty!27164 () Bool)

(declare-fun tp!52226 () Bool)

(assert (=> mapNonEmpty!27164 (= mapRes!27164 (and tp!52226 e!484409))))

(declare-fun mapValue!27164 () ValueCell!8082)

(declare-fun mapRest!27164 () (Array (_ BitVec 32) ValueCell!8082))

(declare-fun mapKey!27164 () (_ BitVec 32))

(assert (=> mapNonEmpty!27164 (= (arr!24137 _values!688) (store mapRest!27164 mapKey!27164 mapValue!27164))))

(declare-fun b!869840 () Bool)

(declare-fun res!591271 () Bool)

(assert (=> b!869840 (=> (not res!591271) (not e!484413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50218 (_ BitVec 32)) Bool)

(assert (=> b!869840 (= res!591271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74020 res!591277) b!869833))

(assert (= (and b!869833 res!591279) b!869834))

(assert (= (and b!869834 res!591272) b!869840))

(assert (= (and b!869840 res!591271) b!869830))

(assert (= (and b!869830 res!591273) b!869832))

(assert (= (and b!869832 res!591276) b!869835))

(assert (= (and b!869835 res!591278) b!869836))

(assert (= (and b!869836 res!591274) b!869831))

(assert (= (and b!869831 res!591275) b!869837))

(assert (= (and b!869838 condMapEmpty!27164) mapIsEmpty!27164))

(assert (= (and b!869838 (not condMapEmpty!27164)) mapNonEmpty!27164))

(get-info :version)

(assert (= (and mapNonEmpty!27164 ((_ is ValueCellFull!8082) mapValue!27164)) b!869839))

(assert (= (and b!869838 ((_ is ValueCellFull!8082) mapDefault!27164)) b!869829))

(assert (= start!74020 b!869838))

(declare-fun m!811381 () Bool)

(assert (=> b!869835 m!811381))

(declare-fun m!811383 () Bool)

(assert (=> b!869830 m!811383))

(declare-fun m!811385 () Bool)

(assert (=> b!869837 m!811385))

(declare-fun m!811387 () Bool)

(assert (=> b!869837 m!811387))

(assert (=> b!869837 m!811387))

(declare-fun m!811389 () Bool)

(assert (=> b!869837 m!811389))

(declare-fun m!811391 () Bool)

(assert (=> b!869837 m!811391))

(declare-fun m!811393 () Bool)

(assert (=> start!74020 m!811393))

(declare-fun m!811395 () Bool)

(assert (=> start!74020 m!811395))

(declare-fun m!811397 () Bool)

(assert (=> b!869833 m!811397))

(declare-fun m!811399 () Bool)

(assert (=> b!869836 m!811399))

(declare-fun m!811401 () Bool)

(assert (=> b!869840 m!811401))

(declare-fun m!811403 () Bool)

(assert (=> mapNonEmpty!27164 m!811403))

(declare-fun m!811405 () Bool)

(assert (=> b!869831 m!811405))

(declare-fun m!811407 () Bool)

(assert (=> b!869831 m!811407))

(declare-fun m!811409 () Bool)

(assert (=> b!869831 m!811409))

(check-sat (not b!869833) b_and!24677 tp_is_empty!17043 (not start!74020) (not b!869830) (not b_next!14907) (not b!869835) (not mapNonEmpty!27164) (not b!869840) (not b!869837) (not b!869831))
(check-sat b_and!24677 (not b_next!14907))
