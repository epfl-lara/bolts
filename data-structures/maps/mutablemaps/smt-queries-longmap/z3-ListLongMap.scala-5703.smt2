; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74032 () Bool)

(assert start!74032)

(declare-fun b_free!14919 () Bool)

(declare-fun b_next!14919 () Bool)

(assert (=> start!74032 (= b_free!14919 (not b_next!14919))))

(declare-fun tp!52262 () Bool)

(declare-fun b_and!24689 () Bool)

(assert (=> start!74032 (= tp!52262 b_and!24689)))

(declare-fun mapNonEmpty!27182 () Bool)

(declare-fun mapRes!27182 () Bool)

(declare-fun tp!52261 () Bool)

(declare-fun e!484519 () Bool)

(assert (=> mapNonEmpty!27182 (= mapRes!27182 (and tp!52261 e!484519))))

(declare-datatypes ((V!27787 0))(
  ( (V!27788 (val!8575 Int)) )
))
(declare-datatypes ((ValueCell!8088 0))(
  ( (ValueCellFull!8088 (v!10996 V!27787)) (EmptyCell!8088) )
))
(declare-fun mapValue!27182 () ValueCell!8088)

(declare-fun mapKey!27182 () (_ BitVec 32))

(declare-fun mapRest!27182 () (Array (_ BitVec 32) ValueCell!8088))

(declare-datatypes ((array!50242 0))(
  ( (array!50243 (arr!24148 (Array (_ BitVec 32) ValueCell!8088)) (size!24589 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50242)

(assert (=> mapNonEmpty!27182 (= (arr!24148 _values!688) (store mapRest!27182 mapKey!27182 mapValue!27182))))

(declare-fun b!870045 () Bool)

(declare-fun res!591435 () Bool)

(declare-fun e!484521 () Bool)

(assert (=> b!870045 (=> (not res!591435) (not e!484521))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50244 0))(
  ( (array!50245 (arr!24149 (Array (_ BitVec 32) (_ BitVec 64))) (size!24590 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50244)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!870045 (= res!591435 (and (= (select (arr!24149 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!870046 () Bool)

(declare-fun res!591439 () Bool)

(assert (=> b!870046 (=> (not res!591439) (not e!484521))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50244 (_ BitVec 32)) Bool)

(assert (=> b!870046 (= res!591439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870047 () Bool)

(declare-fun e!484517 () Bool)

(assert (=> b!870047 (= e!484521 e!484517)))

(declare-fun res!591433 () Bool)

(assert (=> b!870047 (=> (not res!591433) (not e!484517))))

(assert (=> b!870047 (= res!591433 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11392 0))(
  ( (tuple2!11393 (_1!5706 (_ BitVec 64)) (_2!5706 V!27787)) )
))
(declare-datatypes ((List!17248 0))(
  ( (Nil!17245) (Cons!17244 (h!18375 tuple2!11392) (t!24293 List!17248)) )
))
(declare-datatypes ((ListLongMap!10175 0))(
  ( (ListLongMap!10176 (toList!5103 List!17248)) )
))
(declare-fun lt!394999 () ListLongMap!10175)

(declare-fun lt!395000 () array!50242)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27787)

(declare-fun zeroValue!654 () V!27787)

(declare-fun getCurrentListMapNoExtraKeys!3067 (array!50244 array!50242 (_ BitVec 32) (_ BitVec 32) V!27787 V!27787 (_ BitVec 32) Int) ListLongMap!10175)

(assert (=> b!870047 (= lt!394999 (getCurrentListMapNoExtraKeys!3067 _keys!868 lt!395000 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27787)

(assert (=> b!870047 (= lt!395000 (array!50243 (store (arr!24148 _values!688) i!612 (ValueCellFull!8088 v!557)) (size!24589 _values!688)))))

(declare-fun lt!394998 () ListLongMap!10175)

(assert (=> b!870047 (= lt!394998 (getCurrentListMapNoExtraKeys!3067 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870048 () Bool)

(declare-fun res!591440 () Bool)

(assert (=> b!870048 (=> (not res!591440) (not e!484521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870048 (= res!591440 (validMask!0 mask!1196))))

(declare-fun b!870049 () Bool)

(declare-fun res!591441 () Bool)

(assert (=> b!870049 (=> (not res!591441) (not e!484521))))

(assert (=> b!870049 (= res!591441 (and (= (size!24589 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24590 _keys!868) (size!24589 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870050 () Bool)

(assert (=> b!870050 (= e!484517 (not true))))

(declare-fun +!2386 (ListLongMap!10175 tuple2!11392) ListLongMap!10175)

(assert (=> b!870050 (= (getCurrentListMapNoExtraKeys!3067 _keys!868 lt!395000 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2386 (getCurrentListMapNoExtraKeys!3067 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11393 k0!854 v!557)))))

(declare-datatypes ((Unit!29822 0))(
  ( (Unit!29823) )
))
(declare-fun lt!395001 () Unit!29822)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!617 (array!50244 array!50242 (_ BitVec 32) (_ BitVec 32) V!27787 V!27787 (_ BitVec 32) (_ BitVec 64) V!27787 (_ BitVec 32) Int) Unit!29822)

(assert (=> b!870050 (= lt!395001 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!617 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870051 () Bool)

(declare-fun res!591437 () Bool)

(assert (=> b!870051 (=> (not res!591437) (not e!484521))))

(assert (=> b!870051 (= res!591437 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24590 _keys!868))))))

(declare-fun b!870052 () Bool)

(declare-fun e!484518 () Bool)

(declare-fun e!484520 () Bool)

(assert (=> b!870052 (= e!484518 (and e!484520 mapRes!27182))))

(declare-fun condMapEmpty!27182 () Bool)

(declare-fun mapDefault!27182 () ValueCell!8088)

(assert (=> b!870052 (= condMapEmpty!27182 (= (arr!24148 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8088)) mapDefault!27182)))))

(declare-fun b!870053 () Bool)

(declare-fun res!591436 () Bool)

(assert (=> b!870053 (=> (not res!591436) (not e!484521))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870053 (= res!591436 (validKeyInArray!0 k0!854))))

(declare-fun b!870054 () Bool)

(declare-fun tp_is_empty!17055 () Bool)

(assert (=> b!870054 (= e!484519 tp_is_empty!17055)))

(declare-fun mapIsEmpty!27182 () Bool)

(assert (=> mapIsEmpty!27182 mapRes!27182))

(declare-fun res!591434 () Bool)

(assert (=> start!74032 (=> (not res!591434) (not e!484521))))

(assert (=> start!74032 (= res!591434 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24590 _keys!868))))))

(assert (=> start!74032 e!484521))

(assert (=> start!74032 tp_is_empty!17055))

(assert (=> start!74032 true))

(assert (=> start!74032 tp!52262))

(declare-fun array_inv!19044 (array!50244) Bool)

(assert (=> start!74032 (array_inv!19044 _keys!868)))

(declare-fun array_inv!19045 (array!50242) Bool)

(assert (=> start!74032 (and (array_inv!19045 _values!688) e!484518)))

(declare-fun b!870055 () Bool)

(declare-fun res!591438 () Bool)

(assert (=> b!870055 (=> (not res!591438) (not e!484521))))

(declare-datatypes ((List!17249 0))(
  ( (Nil!17246) (Cons!17245 (h!18376 (_ BitVec 64)) (t!24294 List!17249)) )
))
(declare-fun arrayNoDuplicates!0 (array!50244 (_ BitVec 32) List!17249) Bool)

(assert (=> b!870055 (= res!591438 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17246))))

(declare-fun b!870056 () Bool)

(assert (=> b!870056 (= e!484520 tp_is_empty!17055)))

(assert (= (and start!74032 res!591434) b!870048))

(assert (= (and b!870048 res!591440) b!870049))

(assert (= (and b!870049 res!591441) b!870046))

(assert (= (and b!870046 res!591439) b!870055))

(assert (= (and b!870055 res!591438) b!870051))

(assert (= (and b!870051 res!591437) b!870053))

(assert (= (and b!870053 res!591436) b!870045))

(assert (= (and b!870045 res!591435) b!870047))

(assert (= (and b!870047 res!591433) b!870050))

(assert (= (and b!870052 condMapEmpty!27182) mapIsEmpty!27182))

(assert (= (and b!870052 (not condMapEmpty!27182)) mapNonEmpty!27182))

(get-info :version)

(assert (= (and mapNonEmpty!27182 ((_ is ValueCellFull!8088) mapValue!27182)) b!870054))

(assert (= (and b!870052 ((_ is ValueCellFull!8088) mapDefault!27182)) b!870056))

(assert (= start!74032 b!870052))

(declare-fun m!811561 () Bool)

(assert (=> b!870053 m!811561))

(declare-fun m!811563 () Bool)

(assert (=> b!870046 m!811563))

(declare-fun m!811565 () Bool)

(assert (=> b!870045 m!811565))

(declare-fun m!811567 () Bool)

(assert (=> b!870048 m!811567))

(declare-fun m!811569 () Bool)

(assert (=> b!870055 m!811569))

(declare-fun m!811571 () Bool)

(assert (=> b!870047 m!811571))

(declare-fun m!811573 () Bool)

(assert (=> b!870047 m!811573))

(declare-fun m!811575 () Bool)

(assert (=> b!870047 m!811575))

(declare-fun m!811577 () Bool)

(assert (=> start!74032 m!811577))

(declare-fun m!811579 () Bool)

(assert (=> start!74032 m!811579))

(declare-fun m!811581 () Bool)

(assert (=> b!870050 m!811581))

(declare-fun m!811583 () Bool)

(assert (=> b!870050 m!811583))

(assert (=> b!870050 m!811583))

(declare-fun m!811585 () Bool)

(assert (=> b!870050 m!811585))

(declare-fun m!811587 () Bool)

(assert (=> b!870050 m!811587))

(declare-fun m!811589 () Bool)

(assert (=> mapNonEmpty!27182 m!811589))

(check-sat (not b!870055) (not b!870050) (not mapNonEmpty!27182) (not b!870047) b_and!24689 tp_is_empty!17055 (not b!870053) (not b!870046) (not b!870048) (not start!74032) (not b_next!14919))
(check-sat b_and!24689 (not b_next!14919))
