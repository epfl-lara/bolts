; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109506 () Bool)

(assert start!109506)

(declare-fun b_free!28959 () Bool)

(declare-fun b_next!28959 () Bool)

(assert (=> start!109506 (= b_free!28959 (not b_next!28959))))

(declare-fun tp!101996 () Bool)

(declare-fun b_and!47059 () Bool)

(assert (=> start!109506 (= tp!101996 b_and!47059)))

(declare-fun b!1296400 () Bool)

(declare-fun e!739628 () Bool)

(declare-fun tp_is_empty!34599 () Bool)

(assert (=> b!1296400 (= e!739628 tp_is_empty!34599)))

(declare-fun bm!63455 () Bool)

(declare-datatypes ((V!51235 0))(
  ( (V!51236 (val!17374 Int)) )
))
(declare-datatypes ((tuple2!22530 0))(
  ( (tuple2!22531 (_1!11275 (_ BitVec 64)) (_2!11275 V!51235)) )
))
(declare-datatypes ((List!29695 0))(
  ( (Nil!29692) (Cons!29691 (h!30900 tuple2!22530) (t!43266 List!29695)) )
))
(declare-datatypes ((ListLongMap!20199 0))(
  ( (ListLongMap!20200 (toList!10115 List!29695)) )
))
(declare-fun call!63466 () ListLongMap!20199)

(declare-fun call!63462 () ListLongMap!20199)

(assert (=> bm!63455 (= call!63466 call!63462)))

(declare-fun b!1296401 () Bool)

(declare-fun res!861687 () Bool)

(declare-fun e!739627 () Bool)

(assert (=> b!1296401 (=> (not res!861687) (not e!739627))))

(declare-fun minValue!1387 () V!51235)

(declare-fun zeroValue!1387 () V!51235)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16401 0))(
  ( (ValueCellFull!16401 (v!19975 V!51235)) (EmptyCell!16401) )
))
(declare-datatypes ((array!86177 0))(
  ( (array!86178 (arr!41585 (Array (_ BitVec 32) ValueCell!16401)) (size!42136 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86177)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86179 0))(
  ( (array!86180 (arr!41586 (Array (_ BitVec 32) (_ BitVec 64))) (size!42137 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86179)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun contains!8169 (ListLongMap!20199 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5090 (array!86179 array!86177 (_ BitVec 32) (_ BitVec 32) V!51235 V!51235 (_ BitVec 32) Int) ListLongMap!20199)

(assert (=> b!1296401 (= res!861687 (contains!8169 (getCurrentListMap!5090 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun bm!63456 () Bool)

(declare-datatypes ((Unit!42896 0))(
  ( (Unit!42897) )
))
(declare-fun call!63468 () Unit!42896)

(declare-fun call!63459 () Unit!42896)

(assert (=> bm!63456 (= call!63468 call!63459)))

(declare-fun b!1296402 () Bool)

(declare-fun res!861688 () Bool)

(assert (=> b!1296402 (=> (not res!861688) (not e!739627))))

(assert (=> b!1296402 (= res!861688 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42137 _keys!1741))))))

(declare-fun lt!580384 () ListLongMap!20199)

(declare-fun bm!63457 () Bool)

(declare-fun lt!580369 () ListLongMap!20199)

(declare-fun lt!580376 () ListLongMap!20199)

(declare-fun c!124347 () Bool)

(declare-fun c!124346 () Bool)

(declare-fun call!63461 () Bool)

(assert (=> bm!63457 (= call!63461 (contains!8169 (ite c!124347 lt!580384 (ite c!124346 lt!580369 lt!580376)) k0!1205))))

(declare-fun b!1296403 () Bool)

(declare-fun call!63460 () Bool)

(assert (=> b!1296403 call!63460))

(declare-fun lt!580371 () Unit!42896)

(declare-fun call!63467 () Unit!42896)

(assert (=> b!1296403 (= lt!580371 call!63467)))

(declare-fun call!63465 () Bool)

(assert (=> b!1296403 (not call!63465)))

(declare-fun lt!580383 () Unit!42896)

(assert (=> b!1296403 (= lt!580383 call!63468)))

(declare-fun call!63463 () ListLongMap!20199)

(assert (=> b!1296403 (= lt!580369 call!63463)))

(declare-fun e!739629 () Unit!42896)

(assert (=> b!1296403 (= e!739629 lt!580371)))

(declare-fun b!1296404 () Bool)

(declare-fun e!739631 () Unit!42896)

(declare-fun lt!580380 () Unit!42896)

(assert (=> b!1296404 (= e!739631 lt!580380)))

(assert (=> b!1296404 (= lt!580376 call!63463)))

(declare-fun lt!580373 () Unit!42896)

(assert (=> b!1296404 (= lt!580373 call!63468)))

(assert (=> b!1296404 (not call!63465)))

(assert (=> b!1296404 (= lt!580380 call!63467)))

(assert (=> b!1296404 call!63460))

(declare-fun b!1296405 () Bool)

(declare-fun res!861683 () Bool)

(assert (=> b!1296405 (=> (not res!861683) (not e!739627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1296405 (= res!861683 (not (validKeyInArray!0 (select (arr!41586 _keys!1741) from!2144))))))

(declare-fun bm!63458 () Bool)

(assert (=> bm!63458 (= call!63460 call!63461)))

(declare-fun b!1296406 () Bool)

(declare-fun Unit!42898 () Unit!42896)

(assert (=> b!1296406 (= e!739631 Unit!42898)))

(declare-fun mapIsEmpty!53459 () Bool)

(declare-fun mapRes!53459 () Bool)

(assert (=> mapIsEmpty!53459 mapRes!53459))

(declare-fun bm!63459 () Bool)

(declare-fun addStillNotContains!460 (ListLongMap!20199 (_ BitVec 64) V!51235 (_ BitVec 64)) Unit!42896)

(assert (=> bm!63459 (= call!63459 (addStillNotContains!460 (ite c!124347 lt!580384 (ite c!124346 lt!580369 lt!580376)) (ite (or c!124347 c!124346) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124347 c!124346) zeroValue!1387 minValue!1387) k0!1205))))

(declare-fun call!63464 () ListLongMap!20199)

(declare-fun bm!63460 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6126 (array!86179 array!86177 (_ BitVec 32) (_ BitVec 32) V!51235 V!51235 (_ BitVec 32) Int) ListLongMap!20199)

(assert (=> bm!63460 (= call!63464 (getCurrentListMapNoExtraKeys!6126 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1296407 () Bool)

(declare-fun e!739633 () Bool)

(assert (=> b!1296407 (= e!739633 (and e!739628 mapRes!53459))))

(declare-fun condMapEmpty!53459 () Bool)

(declare-fun mapDefault!53459 () ValueCell!16401)

(assert (=> b!1296407 (= condMapEmpty!53459 (= (arr!41585 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16401)) mapDefault!53459)))))

(declare-fun res!861685 () Bool)

(assert (=> start!109506 (=> (not res!861685) (not e!739627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109506 (= res!861685 (validMask!0 mask!2175))))

(assert (=> start!109506 e!739627))

(assert (=> start!109506 tp_is_empty!34599))

(assert (=> start!109506 true))

(declare-fun array_inv!31471 (array!86177) Bool)

(assert (=> start!109506 (and (array_inv!31471 _values!1445) e!739633)))

(declare-fun array_inv!31472 (array!86179) Bool)

(assert (=> start!109506 (array_inv!31472 _keys!1741)))

(assert (=> start!109506 tp!101996))

(declare-fun b!1296408 () Bool)

(assert (=> b!1296408 (= e!739627 (not true))))

(declare-fun lt!580379 () Unit!42896)

(declare-fun e!739626 () Unit!42896)

(assert (=> b!1296408 (= lt!580379 e!739626)))

(declare-fun lt!580381 () Bool)

(assert (=> b!1296408 (= c!124347 (and (not lt!580381) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1296408 (= lt!580381 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1296408 (not (contains!8169 (ListLongMap!20200 Nil!29692) k0!1205))))

(declare-fun lt!580374 () Unit!42896)

(declare-fun emptyContainsNothing!197 ((_ BitVec 64)) Unit!42896)

(assert (=> b!1296408 (= lt!580374 (emptyContainsNothing!197 k0!1205))))

(declare-fun b!1296409 () Bool)

(declare-fun res!861684 () Bool)

(assert (=> b!1296409 (=> (not res!861684) (not e!739627))))

(assert (=> b!1296409 (= res!861684 (and (= (size!42136 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42137 _keys!1741) (size!42136 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun bm!63461 () Bool)

(assert (=> bm!63461 (= call!63463 call!63464)))

(declare-fun b!1296410 () Bool)

(declare-fun res!861686 () Bool)

(assert (=> b!1296410 (=> (not res!861686) (not e!739627))))

(assert (=> b!1296410 (= res!861686 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42137 _keys!1741))))))

(declare-fun b!1296411 () Bool)

(declare-fun c!124348 () Bool)

(assert (=> b!1296411 (= c!124348 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!580381))))

(assert (=> b!1296411 (= e!739629 e!739631)))

(declare-fun call!63458 () Bool)

(declare-fun bm!63462 () Bool)

(declare-fun lt!580377 () ListLongMap!20199)

(assert (=> bm!63462 (= call!63458 (contains!8169 (ite c!124347 lt!580377 call!63466) k0!1205))))

(declare-fun mapNonEmpty!53459 () Bool)

(declare-fun tp!101997 () Bool)

(declare-fun e!739632 () Bool)

(assert (=> mapNonEmpty!53459 (= mapRes!53459 (and tp!101997 e!739632))))

(declare-fun mapKey!53459 () (_ BitVec 32))

(declare-fun mapRest!53459 () (Array (_ BitVec 32) ValueCell!16401))

(declare-fun mapValue!53459 () ValueCell!16401)

(assert (=> mapNonEmpty!53459 (= (arr!41585 _values!1445) (store mapRest!53459 mapKey!53459 mapValue!53459))))

(declare-fun b!1296412 () Bool)

(declare-fun res!861689 () Bool)

(assert (=> b!1296412 (=> (not res!861689) (not e!739627))))

(declare-datatypes ((List!29696 0))(
  ( (Nil!29693) (Cons!29692 (h!30901 (_ BitVec 64)) (t!43267 List!29696)) )
))
(declare-fun arrayNoDuplicates!0 (array!86179 (_ BitVec 32) List!29696) Bool)

(assert (=> b!1296412 (= res!861689 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29693))))

(declare-fun b!1296413 () Bool)

(assert (=> b!1296413 (= e!739626 e!739629)))

(assert (=> b!1296413 (= c!124346 (and (not lt!580381) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63463 () Bool)

(assert (=> bm!63463 (= call!63465 call!63458)))

(declare-fun bm!63464 () Bool)

(declare-fun call!63469 () Unit!42896)

(assert (=> bm!63464 (= call!63467 call!63469)))

(declare-fun bm!63465 () Bool)

(declare-fun +!4413 (ListLongMap!20199 tuple2!22530) ListLongMap!20199)

(assert (=> bm!63465 (= call!63462 (+!4413 (ite c!124347 lt!580384 (ite c!124346 lt!580369 lt!580376)) (ite c!124347 (tuple2!22531 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!124346 (tuple2!22531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22531 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1296414 () Bool)

(assert (=> b!1296414 (= e!739632 tp_is_empty!34599)))

(declare-fun b!1296415 () Bool)

(declare-fun lt!580370 () Unit!42896)

(assert (=> b!1296415 (= e!739626 lt!580370)))

(assert (=> b!1296415 (= lt!580384 call!63464)))

(declare-fun lt!580378 () Unit!42896)

(assert (=> b!1296415 (= lt!580378 call!63459)))

(assert (=> b!1296415 (= lt!580377 (+!4413 lt!580384 (tuple2!22531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (=> b!1296415 (not call!63458)))

(declare-fun lt!580372 () Unit!42896)

(assert (=> b!1296415 (= lt!580372 (addStillNotContains!460 lt!580384 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1296415 (not (contains!8169 call!63462 k0!1205))))

(declare-fun lt!580382 () Unit!42896)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!64 ((_ BitVec 64) (_ BitVec 64) V!51235 ListLongMap!20199) Unit!42896)

(assert (=> b!1296415 (= lt!580382 (lemmaInListMapAfterAddingDiffThenInBefore!64 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!580377))))

(assert (=> b!1296415 false))

(assert (=> b!1296415 (= lt!580370 call!63469)))

(declare-fun lt!580375 () Bool)

(assert (=> b!1296415 (= lt!580375 call!63461)))

(declare-fun b!1296416 () Bool)

(declare-fun res!861690 () Bool)

(assert (=> b!1296416 (=> (not res!861690) (not e!739627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86179 (_ BitVec 32)) Bool)

(assert (=> b!1296416 (= res!861690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun bm!63466 () Bool)

(assert (=> bm!63466 (= call!63469 (lemmaInListMapAfterAddingDiffThenInBefore!64 k0!1205 (ite (or c!124347 c!124346) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124347 c!124346) zeroValue!1387 minValue!1387) (ite c!124347 lt!580384 (ite c!124346 lt!580369 lt!580376))))))

(assert (= (and start!109506 res!861685) b!1296409))

(assert (= (and b!1296409 res!861684) b!1296416))

(assert (= (and b!1296416 res!861690) b!1296412))

(assert (= (and b!1296412 res!861689) b!1296410))

(assert (= (and b!1296410 res!861686) b!1296401))

(assert (= (and b!1296401 res!861687) b!1296402))

(assert (= (and b!1296402 res!861688) b!1296405))

(assert (= (and b!1296405 res!861683) b!1296408))

(assert (= (and b!1296408 c!124347) b!1296415))

(assert (= (and b!1296408 (not c!124347)) b!1296413))

(assert (= (and b!1296413 c!124346) b!1296403))

(assert (= (and b!1296413 (not c!124346)) b!1296411))

(assert (= (and b!1296411 c!124348) b!1296404))

(assert (= (and b!1296411 (not c!124348)) b!1296406))

(assert (= (or b!1296403 b!1296404) bm!63458))

(assert (= (or b!1296403 b!1296404) bm!63456))

(assert (= (or b!1296403 b!1296404) bm!63464))

(assert (= (or b!1296403 b!1296404) bm!63461))

(assert (= (or b!1296403 b!1296404) bm!63455))

(assert (= (or b!1296403 b!1296404) bm!63463))

(assert (= (or b!1296415 bm!63464) bm!63466))

(assert (= (or b!1296415 bm!63463) bm!63462))

(assert (= (or b!1296415 bm!63455) bm!63465))

(assert (= (or b!1296415 bm!63458) bm!63457))

(assert (= (or b!1296415 bm!63456) bm!63459))

(assert (= (or b!1296415 bm!63461) bm!63460))

(assert (= (and b!1296407 condMapEmpty!53459) mapIsEmpty!53459))

(assert (= (and b!1296407 (not condMapEmpty!53459)) mapNonEmpty!53459))

(get-info :version)

(assert (= (and mapNonEmpty!53459 ((_ is ValueCellFull!16401) mapValue!53459)) b!1296414))

(assert (= (and b!1296407 ((_ is ValueCellFull!16401) mapDefault!53459)) b!1296400))

(assert (= start!109506 b!1296407))

(declare-fun m!1188325 () Bool)

(assert (=> bm!63457 m!1188325))

(declare-fun m!1188327 () Bool)

(assert (=> bm!63459 m!1188327))

(declare-fun m!1188329 () Bool)

(assert (=> start!109506 m!1188329))

(declare-fun m!1188331 () Bool)

(assert (=> start!109506 m!1188331))

(declare-fun m!1188333 () Bool)

(assert (=> start!109506 m!1188333))

(declare-fun m!1188335 () Bool)

(assert (=> b!1296401 m!1188335))

(assert (=> b!1296401 m!1188335))

(declare-fun m!1188337 () Bool)

(assert (=> b!1296401 m!1188337))

(declare-fun m!1188339 () Bool)

(assert (=> mapNonEmpty!53459 m!1188339))

(declare-fun m!1188341 () Bool)

(assert (=> bm!63460 m!1188341))

(declare-fun m!1188343 () Bool)

(assert (=> b!1296416 m!1188343))

(declare-fun m!1188345 () Bool)

(assert (=> b!1296412 m!1188345))

(declare-fun m!1188347 () Bool)

(assert (=> b!1296405 m!1188347))

(assert (=> b!1296405 m!1188347))

(declare-fun m!1188349 () Bool)

(assert (=> b!1296405 m!1188349))

(declare-fun m!1188351 () Bool)

(assert (=> bm!63462 m!1188351))

(declare-fun m!1188353 () Bool)

(assert (=> bm!63465 m!1188353))

(declare-fun m!1188355 () Bool)

(assert (=> b!1296408 m!1188355))

(declare-fun m!1188357 () Bool)

(assert (=> b!1296408 m!1188357))

(declare-fun m!1188359 () Bool)

(assert (=> b!1296415 m!1188359))

(declare-fun m!1188361 () Bool)

(assert (=> b!1296415 m!1188361))

(declare-fun m!1188363 () Bool)

(assert (=> b!1296415 m!1188363))

(declare-fun m!1188365 () Bool)

(assert (=> b!1296415 m!1188365))

(declare-fun m!1188367 () Bool)

(assert (=> bm!63466 m!1188367))

(check-sat (not bm!63465) (not bm!63460) (not b!1296415) (not b!1296412) (not b!1296416) (not mapNonEmpty!53459) (not b!1296401) (not start!109506) (not bm!63457) (not bm!63466) (not b!1296405) (not bm!63459) (not b_next!28959) (not bm!63462) b_and!47059 tp_is_empty!34599 (not b!1296408))
(check-sat b_and!47059 (not b_next!28959))
