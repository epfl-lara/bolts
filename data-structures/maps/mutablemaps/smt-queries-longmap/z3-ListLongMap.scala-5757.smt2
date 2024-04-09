; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74400 () Bool)

(assert start!74400)

(declare-fun b_free!15135 () Bool)

(declare-fun b_next!15135 () Bool)

(assert (=> start!74400 (= b_free!15135 (not b_next!15135))))

(declare-fun tp!53080 () Bool)

(declare-fun b_and!24929 () Bool)

(assert (=> start!74400 (= tp!53080 b_and!24929)))

(declare-fun b!875407 () Bool)

(declare-fun res!595034 () Bool)

(declare-fun e!487370 () Bool)

(assert (=> b!875407 (=> (not res!595034) (not e!487370))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50868 0))(
  ( (array!50869 (arr!24458 (Array (_ BitVec 32) (_ BitVec 64))) (size!24899 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50868)

(declare-datatypes ((V!28219 0))(
  ( (V!28220 (val!8737 Int)) )
))
(declare-datatypes ((ValueCell!8250 0))(
  ( (ValueCellFull!8250 (v!11162 V!28219)) (EmptyCell!8250) )
))
(declare-datatypes ((array!50870 0))(
  ( (array!50871 (arr!24459 (Array (_ BitVec 32) ValueCell!8250)) (size!24900 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50870)

(assert (=> b!875407 (= res!595034 (and (= (size!24900 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24899 _keys!868) (size!24900 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!875408 () Bool)

(declare-fun res!595035 () Bool)

(assert (=> b!875408 (=> (not res!595035) (not e!487370))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!875408 (= res!595035 (and (= (select (arr!24458 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!875409 () Bool)

(declare-fun e!487368 () Bool)

(assert (=> b!875409 (= e!487370 e!487368)))

(declare-fun res!595037 () Bool)

(assert (=> b!875409 (=> (not res!595037) (not e!487368))))

(assert (=> b!875409 (= res!595037 (= from!1053 i!612))))

(declare-datatypes ((tuple2!11552 0))(
  ( (tuple2!11553 (_1!5786 (_ BitVec 64)) (_2!5786 V!28219)) )
))
(declare-datatypes ((List!17439 0))(
  ( (Nil!17436) (Cons!17435 (h!18566 tuple2!11552) (t!24488 List!17439)) )
))
(declare-datatypes ((ListLongMap!10335 0))(
  ( (ListLongMap!10336 (toList!5183 List!17439)) )
))
(declare-fun lt!396162 () ListLongMap!10335)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28219)

(declare-fun zeroValue!654 () V!28219)

(declare-fun lt!396161 () array!50870)

(declare-fun getCurrentListMapNoExtraKeys!3146 (array!50868 array!50870 (_ BitVec 32) (_ BitVec 32) V!28219 V!28219 (_ BitVec 32) Int) ListLongMap!10335)

(assert (=> b!875409 (= lt!396162 (getCurrentListMapNoExtraKeys!3146 _keys!868 lt!396161 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28219)

(assert (=> b!875409 (= lt!396161 (array!50871 (store (arr!24459 _values!688) i!612 (ValueCellFull!8250 v!557)) (size!24900 _values!688)))))

(declare-fun lt!396160 () ListLongMap!10335)

(assert (=> b!875409 (= lt!396160 (getCurrentListMapNoExtraKeys!3146 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875410 () Bool)

(declare-fun res!595039 () Bool)

(assert (=> b!875410 (=> (not res!595039) (not e!487370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875410 (= res!595039 (validMask!0 mask!1196))))

(declare-fun b!875411 () Bool)

(declare-fun e!487373 () Bool)

(assert (=> b!875411 (= e!487373 (bvslt from!1053 (size!24900 _values!688)))))

(declare-fun lt!396159 () ListLongMap!10335)

(assert (=> b!875411 (= lt!396159 (getCurrentListMapNoExtraKeys!3146 _keys!868 lt!396161 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875412 () Bool)

(declare-fun e!487375 () Bool)

(declare-fun tp_is_empty!17379 () Bool)

(assert (=> b!875412 (= e!487375 tp_is_empty!17379)))

(declare-fun call!38630 () ListLongMap!10335)

(declare-fun e!487372 () Bool)

(declare-fun call!38631 () ListLongMap!10335)

(declare-fun b!875413 () Bool)

(declare-fun +!2424 (ListLongMap!10335 tuple2!11552) ListLongMap!10335)

(assert (=> b!875413 (= e!487372 (= call!38630 (+!2424 call!38631 (tuple2!11553 k0!854 v!557))))))

(declare-fun b!875414 () Bool)

(declare-fun res!595036 () Bool)

(assert (=> b!875414 (=> (not res!595036) (not e!487370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50868 (_ BitVec 32)) Bool)

(assert (=> b!875414 (= res!595036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!875415 () Bool)

(declare-fun res!595041 () Bool)

(assert (=> b!875415 (=> (not res!595041) (not e!487370))))

(assert (=> b!875415 (= res!595041 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24899 _keys!868))))))

(declare-fun bm!38627 () Bool)

(assert (=> bm!38627 (= call!38631 (getCurrentListMapNoExtraKeys!3146 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875416 () Bool)

(declare-fun e!487371 () Bool)

(assert (=> b!875416 (= e!487371 tp_is_empty!17379)))

(declare-fun res!595042 () Bool)

(assert (=> start!74400 (=> (not res!595042) (not e!487370))))

(assert (=> start!74400 (= res!595042 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24899 _keys!868))))))

(assert (=> start!74400 e!487370))

(assert (=> start!74400 tp_is_empty!17379))

(assert (=> start!74400 true))

(assert (=> start!74400 tp!53080))

(declare-fun array_inv!19264 (array!50868) Bool)

(assert (=> start!74400 (array_inv!19264 _keys!868)))

(declare-fun e!487374 () Bool)

(declare-fun array_inv!19265 (array!50870) Bool)

(assert (=> start!74400 (and (array_inv!19265 _values!688) e!487374)))

(declare-fun mapNonEmpty!27677 () Bool)

(declare-fun mapRes!27677 () Bool)

(declare-fun tp!53081 () Bool)

(assert (=> mapNonEmpty!27677 (= mapRes!27677 (and tp!53081 e!487371))))

(declare-fun mapValue!27677 () ValueCell!8250)

(declare-fun mapKey!27677 () (_ BitVec 32))

(declare-fun mapRest!27677 () (Array (_ BitVec 32) ValueCell!8250))

(assert (=> mapNonEmpty!27677 (= (arr!24459 _values!688) (store mapRest!27677 mapKey!27677 mapValue!27677))))

(declare-fun b!875417 () Bool)

(declare-fun res!595038 () Bool)

(assert (=> b!875417 (=> (not res!595038) (not e!487370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875417 (= res!595038 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!27677 () Bool)

(assert (=> mapIsEmpty!27677 mapRes!27677))

(declare-fun bm!38628 () Bool)

(assert (=> bm!38628 (= call!38630 (getCurrentListMapNoExtraKeys!3146 _keys!868 lt!396161 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875418 () Bool)

(assert (=> b!875418 (= e!487372 (= call!38630 call!38631))))

(declare-fun b!875419 () Bool)

(declare-fun res!595033 () Bool)

(assert (=> b!875419 (=> (not res!595033) (not e!487370))))

(declare-datatypes ((List!17440 0))(
  ( (Nil!17437) (Cons!17436 (h!18567 (_ BitVec 64)) (t!24489 List!17440)) )
))
(declare-fun arrayNoDuplicates!0 (array!50868 (_ BitVec 32) List!17440) Bool)

(assert (=> b!875419 (= res!595033 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17437))))

(declare-fun b!875420 () Bool)

(assert (=> b!875420 (= e!487368 (not e!487373))))

(declare-fun res!595040 () Bool)

(assert (=> b!875420 (=> res!595040 e!487373)))

(assert (=> b!875420 (= res!595040 (not (validKeyInArray!0 (select (arr!24458 _keys!868) from!1053))))))

(assert (=> b!875420 e!487372))

(declare-fun c!92434 () Bool)

(assert (=> b!875420 (= c!92434 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29908 0))(
  ( (Unit!29909) )
))
(declare-fun lt!396163 () Unit!29908)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!658 (array!50868 array!50870 (_ BitVec 32) (_ BitVec 32) V!28219 V!28219 (_ BitVec 32) (_ BitVec 64) V!28219 (_ BitVec 32) Int) Unit!29908)

(assert (=> b!875420 (= lt!396163 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!658 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875421 () Bool)

(assert (=> b!875421 (= e!487374 (and e!487375 mapRes!27677))))

(declare-fun condMapEmpty!27677 () Bool)

(declare-fun mapDefault!27677 () ValueCell!8250)

(assert (=> b!875421 (= condMapEmpty!27677 (= (arr!24459 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8250)) mapDefault!27677)))))

(assert (= (and start!74400 res!595042) b!875410))

(assert (= (and b!875410 res!595039) b!875407))

(assert (= (and b!875407 res!595034) b!875414))

(assert (= (and b!875414 res!595036) b!875419))

(assert (= (and b!875419 res!595033) b!875415))

(assert (= (and b!875415 res!595041) b!875417))

(assert (= (and b!875417 res!595038) b!875408))

(assert (= (and b!875408 res!595035) b!875409))

(assert (= (and b!875409 res!595037) b!875420))

(assert (= (and b!875420 c!92434) b!875413))

(assert (= (and b!875420 (not c!92434)) b!875418))

(assert (= (or b!875413 b!875418) bm!38628))

(assert (= (or b!875413 b!875418) bm!38627))

(assert (= (and b!875420 (not res!595040)) b!875411))

(assert (= (and b!875421 condMapEmpty!27677) mapIsEmpty!27677))

(assert (= (and b!875421 (not condMapEmpty!27677)) mapNonEmpty!27677))

(get-info :version)

(assert (= (and mapNonEmpty!27677 ((_ is ValueCellFull!8250) mapValue!27677)) b!875416))

(assert (= (and b!875421 ((_ is ValueCellFull!8250) mapDefault!27677)) b!875412))

(assert (= start!74400 b!875421))

(declare-fun m!815347 () Bool)

(assert (=> bm!38628 m!815347))

(declare-fun m!815349 () Bool)

(assert (=> b!875419 m!815349))

(declare-fun m!815351 () Bool)

(assert (=> b!875414 m!815351))

(declare-fun m!815353 () Bool)

(assert (=> start!74400 m!815353))

(declare-fun m!815355 () Bool)

(assert (=> start!74400 m!815355))

(declare-fun m!815357 () Bool)

(assert (=> b!875413 m!815357))

(declare-fun m!815359 () Bool)

(assert (=> b!875408 m!815359))

(declare-fun m!815361 () Bool)

(assert (=> b!875417 m!815361))

(declare-fun m!815363 () Bool)

(assert (=> b!875409 m!815363))

(declare-fun m!815365 () Bool)

(assert (=> b!875409 m!815365))

(declare-fun m!815367 () Bool)

(assert (=> b!875409 m!815367))

(declare-fun m!815369 () Bool)

(assert (=> bm!38627 m!815369))

(declare-fun m!815371 () Bool)

(assert (=> b!875410 m!815371))

(assert (=> b!875411 m!815347))

(declare-fun m!815373 () Bool)

(assert (=> mapNonEmpty!27677 m!815373))

(declare-fun m!815375 () Bool)

(assert (=> b!875420 m!815375))

(assert (=> b!875420 m!815375))

(declare-fun m!815377 () Bool)

(assert (=> b!875420 m!815377))

(declare-fun m!815379 () Bool)

(assert (=> b!875420 m!815379))

(check-sat (not b!875409) (not b!875410) (not mapNonEmpty!27677) (not b!875419) (not b!875417) (not start!74400) (not b_next!15135) (not bm!38628) (not bm!38627) tp_is_empty!17379 (not b!875411) b_and!24929 (not b!875420) (not b!875414) (not b!875413))
(check-sat b_and!24929 (not b_next!15135))
