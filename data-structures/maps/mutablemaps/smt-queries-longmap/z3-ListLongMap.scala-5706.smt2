; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74050 () Bool)

(assert start!74050)

(declare-fun b_free!14937 () Bool)

(declare-fun b_next!14937 () Bool)

(assert (=> start!74050 (= b_free!14937 (not b_next!14937))))

(declare-fun tp!52315 () Bool)

(declare-fun b_and!24707 () Bool)

(assert (=> start!74050 (= tp!52315 b_and!24707)))

(declare-fun b!870369 () Bool)

(declare-fun res!591679 () Bool)

(declare-fun e!484682 () Bool)

(assert (=> b!870369 (=> (not res!591679) (not e!484682))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870369 (= res!591679 (validKeyInArray!0 k0!854))))

(declare-fun b!870370 () Bool)

(declare-fun e!484679 () Bool)

(declare-fun tp_is_empty!17073 () Bool)

(assert (=> b!870370 (= e!484679 tp_is_empty!17073)))

(declare-fun b!870371 () Bool)

(declare-fun res!591684 () Bool)

(assert (=> b!870371 (=> (not res!591684) (not e!484682))))

(declare-datatypes ((array!50278 0))(
  ( (array!50279 (arr!24166 (Array (_ BitVec 32) (_ BitVec 64))) (size!24607 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50278)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50278 (_ BitVec 32)) Bool)

(assert (=> b!870371 (= res!591684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870372 () Bool)

(declare-fun res!591681 () Bool)

(assert (=> b!870372 (=> (not res!591681) (not e!484682))))

(declare-datatypes ((V!27811 0))(
  ( (V!27812 (val!8584 Int)) )
))
(declare-datatypes ((ValueCell!8097 0))(
  ( (ValueCellFull!8097 (v!11005 V!27811)) (EmptyCell!8097) )
))
(declare-datatypes ((array!50280 0))(
  ( (array!50281 (arr!24167 (Array (_ BitVec 32) ValueCell!8097)) (size!24608 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50280)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!870372 (= res!591681 (and (= (size!24608 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24607 _keys!868) (size!24608 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27209 () Bool)

(declare-fun mapRes!27209 () Bool)

(declare-fun tp!52316 () Bool)

(declare-fun e!484683 () Bool)

(assert (=> mapNonEmpty!27209 (= mapRes!27209 (and tp!52316 e!484683))))

(declare-fun mapKey!27209 () (_ BitVec 32))

(declare-fun mapRest!27209 () (Array (_ BitVec 32) ValueCell!8097))

(declare-fun mapValue!27209 () ValueCell!8097)

(assert (=> mapNonEmpty!27209 (= (arr!24167 _values!688) (store mapRest!27209 mapKey!27209 mapValue!27209))))

(declare-fun mapIsEmpty!27209 () Bool)

(assert (=> mapIsEmpty!27209 mapRes!27209))

(declare-fun b!870374 () Bool)

(declare-fun res!591678 () Bool)

(assert (=> b!870374 (=> (not res!591678) (not e!484682))))

(declare-datatypes ((List!17260 0))(
  ( (Nil!17257) (Cons!17256 (h!18387 (_ BitVec 64)) (t!24305 List!17260)) )
))
(declare-fun arrayNoDuplicates!0 (array!50278 (_ BitVec 32) List!17260) Bool)

(assert (=> b!870374 (= res!591678 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17257))))

(declare-fun b!870375 () Bool)

(declare-fun res!591682 () Bool)

(assert (=> b!870375 (=> (not res!591682) (not e!484682))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!870375 (= res!591682 (and (= (select (arr!24166 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!870376 () Bool)

(declare-fun e!484680 () Bool)

(assert (=> b!870376 (= e!484682 e!484680)))

(declare-fun res!591680 () Bool)

(assert (=> b!870376 (=> (not res!591680) (not e!484680))))

(assert (=> b!870376 (= res!591680 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11406 0))(
  ( (tuple2!11407 (_1!5713 (_ BitVec 64)) (_2!5713 V!27811)) )
))
(declare-datatypes ((List!17261 0))(
  ( (Nil!17258) (Cons!17257 (h!18388 tuple2!11406) (t!24306 List!17261)) )
))
(declare-datatypes ((ListLongMap!10189 0))(
  ( (ListLongMap!10190 (toList!5110 List!17261)) )
))
(declare-fun lt!395107 () ListLongMap!10189)

(declare-fun lt!395106 () array!50280)

(declare-fun minValue!654 () V!27811)

(declare-fun zeroValue!654 () V!27811)

(declare-fun getCurrentListMapNoExtraKeys!3074 (array!50278 array!50280 (_ BitVec 32) (_ BitVec 32) V!27811 V!27811 (_ BitVec 32) Int) ListLongMap!10189)

(assert (=> b!870376 (= lt!395107 (getCurrentListMapNoExtraKeys!3074 _keys!868 lt!395106 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27811)

(assert (=> b!870376 (= lt!395106 (array!50281 (store (arr!24167 _values!688) i!612 (ValueCellFull!8097 v!557)) (size!24608 _values!688)))))

(declare-fun lt!395109 () ListLongMap!10189)

(assert (=> b!870376 (= lt!395109 (getCurrentListMapNoExtraKeys!3074 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870377 () Bool)

(declare-fun res!591676 () Bool)

(assert (=> b!870377 (=> (not res!591676) (not e!484682))))

(assert (=> b!870377 (= res!591676 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24607 _keys!868))))))

(declare-fun b!870378 () Bool)

(declare-fun res!591677 () Bool)

(assert (=> b!870378 (=> (not res!591677) (not e!484682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870378 (= res!591677 (validMask!0 mask!1196))))

(declare-fun b!870379 () Bool)

(assert (=> b!870379 (= e!484683 tp_is_empty!17073)))

(declare-fun b!870380 () Bool)

(assert (=> b!870380 (= e!484680 (not true))))

(declare-fun +!2391 (ListLongMap!10189 tuple2!11406) ListLongMap!10189)

(assert (=> b!870380 (= (getCurrentListMapNoExtraKeys!3074 _keys!868 lt!395106 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2391 (getCurrentListMapNoExtraKeys!3074 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11407 k0!854 v!557)))))

(declare-datatypes ((Unit!29832 0))(
  ( (Unit!29833) )
))
(declare-fun lt!395108 () Unit!29832)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!622 (array!50278 array!50280 (_ BitVec 32) (_ BitVec 32) V!27811 V!27811 (_ BitVec 32) (_ BitVec 64) V!27811 (_ BitVec 32) Int) Unit!29832)

(assert (=> b!870380 (= lt!395108 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!622 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!591683 () Bool)

(assert (=> start!74050 (=> (not res!591683) (not e!484682))))

(assert (=> start!74050 (= res!591683 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24607 _keys!868))))))

(assert (=> start!74050 e!484682))

(assert (=> start!74050 tp_is_empty!17073))

(assert (=> start!74050 true))

(assert (=> start!74050 tp!52315))

(declare-fun array_inv!19058 (array!50278) Bool)

(assert (=> start!74050 (array_inv!19058 _keys!868)))

(declare-fun e!484678 () Bool)

(declare-fun array_inv!19059 (array!50280) Bool)

(assert (=> start!74050 (and (array_inv!19059 _values!688) e!484678)))

(declare-fun b!870373 () Bool)

(assert (=> b!870373 (= e!484678 (and e!484679 mapRes!27209))))

(declare-fun condMapEmpty!27209 () Bool)

(declare-fun mapDefault!27209 () ValueCell!8097)

(assert (=> b!870373 (= condMapEmpty!27209 (= (arr!24167 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8097)) mapDefault!27209)))))

(assert (= (and start!74050 res!591683) b!870378))

(assert (= (and b!870378 res!591677) b!870372))

(assert (= (and b!870372 res!591681) b!870371))

(assert (= (and b!870371 res!591684) b!870374))

(assert (= (and b!870374 res!591678) b!870377))

(assert (= (and b!870377 res!591676) b!870369))

(assert (= (and b!870369 res!591679) b!870375))

(assert (= (and b!870375 res!591682) b!870376))

(assert (= (and b!870376 res!591680) b!870380))

(assert (= (and b!870373 condMapEmpty!27209) mapIsEmpty!27209))

(assert (= (and b!870373 (not condMapEmpty!27209)) mapNonEmpty!27209))

(get-info :version)

(assert (= (and mapNonEmpty!27209 ((_ is ValueCellFull!8097) mapValue!27209)) b!870379))

(assert (= (and b!870373 ((_ is ValueCellFull!8097) mapDefault!27209)) b!870370))

(assert (= start!74050 b!870373))

(declare-fun m!811831 () Bool)

(assert (=> b!870376 m!811831))

(declare-fun m!811833 () Bool)

(assert (=> b!870376 m!811833))

(declare-fun m!811835 () Bool)

(assert (=> b!870376 m!811835))

(declare-fun m!811837 () Bool)

(assert (=> b!870375 m!811837))

(declare-fun m!811839 () Bool)

(assert (=> mapNonEmpty!27209 m!811839))

(declare-fun m!811841 () Bool)

(assert (=> b!870374 m!811841))

(declare-fun m!811843 () Bool)

(assert (=> b!870369 m!811843))

(declare-fun m!811845 () Bool)

(assert (=> b!870378 m!811845))

(declare-fun m!811847 () Bool)

(assert (=> b!870371 m!811847))

(declare-fun m!811849 () Bool)

(assert (=> b!870380 m!811849))

(declare-fun m!811851 () Bool)

(assert (=> b!870380 m!811851))

(assert (=> b!870380 m!811851))

(declare-fun m!811853 () Bool)

(assert (=> b!870380 m!811853))

(declare-fun m!811855 () Bool)

(assert (=> b!870380 m!811855))

(declare-fun m!811857 () Bool)

(assert (=> start!74050 m!811857))

(declare-fun m!811859 () Bool)

(assert (=> start!74050 m!811859))

(check-sat (not b!870378) tp_is_empty!17073 (not b!870380) (not mapNonEmpty!27209) (not b!870371) (not start!74050) (not b!870369) (not b!870374) (not b!870376) b_and!24707 (not b_next!14937))
(check-sat b_and!24707 (not b_next!14937))
