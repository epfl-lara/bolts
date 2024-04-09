; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37978 () Bool)

(assert start!37978)

(declare-fun b_free!8961 () Bool)

(declare-fun b_next!8961 () Bool)

(assert (=> start!37978 (= b_free!8961 (not b_next!8961))))

(declare-fun tp!31649 () Bool)

(declare-fun b_and!16281 () Bool)

(assert (=> start!37978 (= tp!31649 b_and!16281)))

(declare-fun b!390424 () Bool)

(declare-fun e!236506 () Bool)

(declare-fun e!236509 () Bool)

(declare-fun mapRes!16029 () Bool)

(assert (=> b!390424 (= e!236506 (and e!236509 mapRes!16029))))

(declare-fun condMapEmpty!16029 () Bool)

(declare-datatypes ((V!13949 0))(
  ( (V!13950 (val!4861 Int)) )
))
(declare-datatypes ((ValueCell!4473 0))(
  ( (ValueCellFull!4473 (v!7074 V!13949)) (EmptyCell!4473) )
))
(declare-datatypes ((array!23141 0))(
  ( (array!23142 (arr!11031 (Array (_ BitVec 32) ValueCell!4473)) (size!11383 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23141)

(declare-fun mapDefault!16029 () ValueCell!4473)

(assert (=> b!390424 (= condMapEmpty!16029 (= (arr!11031 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4473)) mapDefault!16029)))))

(declare-fun b!390425 () Bool)

(declare-fun e!236504 () Bool)

(declare-fun e!236510 () Bool)

(assert (=> b!390425 (= e!236504 (not e!236510))))

(declare-fun res!223491 () Bool)

(assert (=> b!390425 (=> res!223491 e!236510)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!390425 (= res!223491 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13949)

(declare-datatypes ((array!23143 0))(
  ( (array!23144 (arr!11032 (Array (_ BitVec 32) (_ BitVec 64))) (size!11384 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23143)

(declare-datatypes ((tuple2!6484 0))(
  ( (tuple2!6485 (_1!3252 (_ BitVec 64)) (_2!3252 V!13949)) )
))
(declare-datatypes ((List!6366 0))(
  ( (Nil!6363) (Cons!6362 (h!7218 tuple2!6484) (t!11534 List!6366)) )
))
(declare-datatypes ((ListLongMap!5411 0))(
  ( (ListLongMap!5412 (toList!2721 List!6366)) )
))
(declare-fun lt!184102 () ListLongMap!5411)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13949)

(declare-fun getCurrentListMap!2088 (array!23143 array!23141 (_ BitVec 32) (_ BitVec 32) V!13949 V!13949 (_ BitVec 32) Int) ListLongMap!5411)

(assert (=> b!390425 (= lt!184102 (getCurrentListMap!2088 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184103 () ListLongMap!5411)

(declare-fun lt!184108 () array!23143)

(declare-fun lt!184101 () array!23141)

(assert (=> b!390425 (= lt!184103 (getCurrentListMap!2088 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184104 () ListLongMap!5411)

(declare-fun lt!184107 () ListLongMap!5411)

(assert (=> b!390425 (and (= lt!184104 lt!184107) (= lt!184107 lt!184104))))

(declare-fun lt!184100 () ListLongMap!5411)

(declare-fun v!373 () V!13949)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun +!1019 (ListLongMap!5411 tuple2!6484) ListLongMap!5411)

(assert (=> b!390425 (= lt!184107 (+!1019 lt!184100 (tuple2!6485 k0!778 v!373)))))

(declare-datatypes ((Unit!11929 0))(
  ( (Unit!11930) )
))
(declare-fun lt!184106 () Unit!11929)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!245 (array!23143 array!23141 (_ BitVec 32) (_ BitVec 32) V!13949 V!13949 (_ BitVec 32) (_ BitVec 64) V!13949 (_ BitVec 32) Int) Unit!11929)

(assert (=> b!390425 (= lt!184106 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!245 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!950 (array!23143 array!23141 (_ BitVec 32) (_ BitVec 32) V!13949 V!13949 (_ BitVec 32) Int) ListLongMap!5411)

(assert (=> b!390425 (= lt!184104 (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390425 (= lt!184101 (array!23142 (store (arr!11031 _values!506) i!548 (ValueCellFull!4473 v!373)) (size!11383 _values!506)))))

(assert (=> b!390425 (= lt!184100 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390426 () Bool)

(declare-fun res!223489 () Bool)

(declare-fun e!236505 () Bool)

(assert (=> b!390426 (=> (not res!223489) (not e!236505))))

(declare-datatypes ((List!6367 0))(
  ( (Nil!6364) (Cons!6363 (h!7219 (_ BitVec 64)) (t!11535 List!6367)) )
))
(declare-fun arrayNoDuplicates!0 (array!23143 (_ BitVec 32) List!6367) Bool)

(assert (=> b!390426 (= res!223489 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6364))))

(declare-fun b!390427 () Bool)

(declare-fun lt!184105 () tuple2!6484)

(assert (=> b!390427 (= e!236510 (= lt!184102 (+!1019 lt!184100 lt!184105)))))

(assert (=> b!390427 (= lt!184103 (+!1019 lt!184104 lt!184105))))

(assert (=> b!390427 (= lt!184105 (tuple2!6485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!390428 () Bool)

(declare-fun res!223495 () Bool)

(assert (=> b!390428 (=> (not res!223495) (not e!236505))))

(assert (=> b!390428 (= res!223495 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11384 _keys!658))))))

(declare-fun mapIsEmpty!16029 () Bool)

(assert (=> mapIsEmpty!16029 mapRes!16029))

(declare-fun b!390429 () Bool)

(declare-fun res!223490 () Bool)

(assert (=> b!390429 (=> (not res!223490) (not e!236505))))

(assert (=> b!390429 (= res!223490 (or (= (select (arr!11032 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11032 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16029 () Bool)

(declare-fun tp!31650 () Bool)

(declare-fun e!236507 () Bool)

(assert (=> mapNonEmpty!16029 (= mapRes!16029 (and tp!31650 e!236507))))

(declare-fun mapValue!16029 () ValueCell!4473)

(declare-fun mapKey!16029 () (_ BitVec 32))

(declare-fun mapRest!16029 () (Array (_ BitVec 32) ValueCell!4473))

(assert (=> mapNonEmpty!16029 (= (arr!11031 _values!506) (store mapRest!16029 mapKey!16029 mapValue!16029))))

(declare-fun b!390431 () Bool)

(declare-fun res!223492 () Bool)

(assert (=> b!390431 (=> (not res!223492) (not e!236505))))

(declare-fun arrayContainsKey!0 (array!23143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390431 (= res!223492 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!390432 () Bool)

(declare-fun res!223494 () Bool)

(assert (=> b!390432 (=> (not res!223494) (not e!236505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!390432 (= res!223494 (validKeyInArray!0 k0!778))))

(declare-fun b!390433 () Bool)

(declare-fun tp_is_empty!9633 () Bool)

(assert (=> b!390433 (= e!236509 tp_is_empty!9633)))

(declare-fun b!390434 () Bool)

(declare-fun res!223497 () Bool)

(assert (=> b!390434 (=> (not res!223497) (not e!236505))))

(assert (=> b!390434 (= res!223497 (and (= (size!11383 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11384 _keys!658) (size!11383 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!390435 () Bool)

(assert (=> b!390435 (= e!236505 e!236504)))

(declare-fun res!223493 () Bool)

(assert (=> b!390435 (=> (not res!223493) (not e!236504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23143 (_ BitVec 32)) Bool)

(assert (=> b!390435 (= res!223493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184108 mask!970))))

(assert (=> b!390435 (= lt!184108 (array!23144 (store (arr!11032 _keys!658) i!548 k0!778) (size!11384 _keys!658)))))

(declare-fun b!390436 () Bool)

(declare-fun res!223488 () Bool)

(assert (=> b!390436 (=> (not res!223488) (not e!236504))))

(assert (=> b!390436 (= res!223488 (arrayNoDuplicates!0 lt!184108 #b00000000000000000000000000000000 Nil!6364))))

(declare-fun b!390437 () Bool)

(declare-fun res!223496 () Bool)

(assert (=> b!390437 (=> (not res!223496) (not e!236505))))

(assert (=> b!390437 (= res!223496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!390430 () Bool)

(assert (=> b!390430 (= e!236507 tp_is_empty!9633)))

(declare-fun res!223487 () Bool)

(assert (=> start!37978 (=> (not res!223487) (not e!236505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37978 (= res!223487 (validMask!0 mask!970))))

(assert (=> start!37978 e!236505))

(declare-fun array_inv!8086 (array!23141) Bool)

(assert (=> start!37978 (and (array_inv!8086 _values!506) e!236506)))

(assert (=> start!37978 tp!31649))

(assert (=> start!37978 true))

(assert (=> start!37978 tp_is_empty!9633))

(declare-fun array_inv!8087 (array!23143) Bool)

(assert (=> start!37978 (array_inv!8087 _keys!658)))

(assert (= (and start!37978 res!223487) b!390434))

(assert (= (and b!390434 res!223497) b!390437))

(assert (= (and b!390437 res!223496) b!390426))

(assert (= (and b!390426 res!223489) b!390428))

(assert (= (and b!390428 res!223495) b!390432))

(assert (= (and b!390432 res!223494) b!390429))

(assert (= (and b!390429 res!223490) b!390431))

(assert (= (and b!390431 res!223492) b!390435))

(assert (= (and b!390435 res!223493) b!390436))

(assert (= (and b!390436 res!223488) b!390425))

(assert (= (and b!390425 (not res!223491)) b!390427))

(assert (= (and b!390424 condMapEmpty!16029) mapIsEmpty!16029))

(assert (= (and b!390424 (not condMapEmpty!16029)) mapNonEmpty!16029))

(get-info :version)

(assert (= (and mapNonEmpty!16029 ((_ is ValueCellFull!4473) mapValue!16029)) b!390430))

(assert (= (and b!390424 ((_ is ValueCellFull!4473) mapDefault!16029)) b!390433))

(assert (= start!37978 b!390424))

(declare-fun m!386801 () Bool)

(assert (=> b!390436 m!386801))

(declare-fun m!386803 () Bool)

(assert (=> b!390426 m!386803))

(declare-fun m!386805 () Bool)

(assert (=> b!390431 m!386805))

(declare-fun m!386807 () Bool)

(assert (=> b!390432 m!386807))

(declare-fun m!386809 () Bool)

(assert (=> b!390425 m!386809))

(declare-fun m!386811 () Bool)

(assert (=> b!390425 m!386811))

(declare-fun m!386813 () Bool)

(assert (=> b!390425 m!386813))

(declare-fun m!386815 () Bool)

(assert (=> b!390425 m!386815))

(declare-fun m!386817 () Bool)

(assert (=> b!390425 m!386817))

(declare-fun m!386819 () Bool)

(assert (=> b!390425 m!386819))

(declare-fun m!386821 () Bool)

(assert (=> b!390425 m!386821))

(declare-fun m!386823 () Bool)

(assert (=> mapNonEmpty!16029 m!386823))

(declare-fun m!386825 () Bool)

(assert (=> start!37978 m!386825))

(declare-fun m!386827 () Bool)

(assert (=> start!37978 m!386827))

(declare-fun m!386829 () Bool)

(assert (=> start!37978 m!386829))

(declare-fun m!386831 () Bool)

(assert (=> b!390435 m!386831))

(declare-fun m!386833 () Bool)

(assert (=> b!390435 m!386833))

(declare-fun m!386835 () Bool)

(assert (=> b!390427 m!386835))

(declare-fun m!386837 () Bool)

(assert (=> b!390427 m!386837))

(declare-fun m!386839 () Bool)

(assert (=> b!390437 m!386839))

(declare-fun m!386841 () Bool)

(assert (=> b!390429 m!386841))

(check-sat (not b!390437) (not b!390425) (not b!390436) (not mapNonEmpty!16029) (not b!390431) (not b!390426) tp_is_empty!9633 (not b!390432) b_and!16281 (not b!390427) (not start!37978) (not b_next!8961) (not b!390435))
(check-sat b_and!16281 (not b_next!8961))
(get-model)

(declare-fun d!72881 () Bool)

(declare-fun res!223539 () Bool)

(declare-fun e!236541 () Bool)

(assert (=> d!72881 (=> res!223539 e!236541)))

(assert (=> d!72881 (= res!223539 (bvsge #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(assert (=> d!72881 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6364) e!236541)))

(declare-fun bm!27535 () Bool)

(declare-fun call!27538 () Bool)

(declare-fun c!54107 () Bool)

(assert (=> bm!27535 (= call!27538 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54107 (Cons!6363 (select (arr!11032 _keys!658) #b00000000000000000000000000000000) Nil!6364) Nil!6364)))))

(declare-fun b!390490 () Bool)

(declare-fun e!236542 () Bool)

(assert (=> b!390490 (= e!236542 call!27538)))

(declare-fun b!390491 () Bool)

(declare-fun e!236540 () Bool)

(declare-fun contains!2456 (List!6367 (_ BitVec 64)) Bool)

(assert (=> b!390491 (= e!236540 (contains!2456 Nil!6364 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390492 () Bool)

(declare-fun e!236543 () Bool)

(assert (=> b!390492 (= e!236541 e!236543)))

(declare-fun res!223538 () Bool)

(assert (=> b!390492 (=> (not res!223538) (not e!236543))))

(assert (=> b!390492 (= res!223538 (not e!236540))))

(declare-fun res!223537 () Bool)

(assert (=> b!390492 (=> (not res!223537) (not e!236540))))

(assert (=> b!390492 (= res!223537 (validKeyInArray!0 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390493 () Bool)

(assert (=> b!390493 (= e!236542 call!27538)))

(declare-fun b!390494 () Bool)

(assert (=> b!390494 (= e!236543 e!236542)))

(assert (=> b!390494 (= c!54107 (validKeyInArray!0 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72881 (not res!223539)) b!390492))

(assert (= (and b!390492 res!223537) b!390491))

(assert (= (and b!390492 res!223538) b!390494))

(assert (= (and b!390494 c!54107) b!390493))

(assert (= (and b!390494 (not c!54107)) b!390490))

(assert (= (or b!390493 b!390490) bm!27535))

(declare-fun m!386885 () Bool)

(assert (=> bm!27535 m!386885))

(declare-fun m!386887 () Bool)

(assert (=> bm!27535 m!386887))

(assert (=> b!390491 m!386885))

(assert (=> b!390491 m!386885))

(declare-fun m!386889 () Bool)

(assert (=> b!390491 m!386889))

(assert (=> b!390492 m!386885))

(assert (=> b!390492 m!386885))

(declare-fun m!386891 () Bool)

(assert (=> b!390492 m!386891))

(assert (=> b!390494 m!386885))

(assert (=> b!390494 m!386885))

(assert (=> b!390494 m!386891))

(assert (=> b!390426 d!72881))

(declare-fun b!390519 () Bool)

(declare-fun e!236564 () ListLongMap!5411)

(declare-fun e!236559 () ListLongMap!5411)

(assert (=> b!390519 (= e!236564 e!236559)))

(declare-fun c!54117 () Bool)

(assert (=> b!390519 (= c!54117 (validKeyInArray!0 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390520 () Bool)

(declare-fun res!223551 () Bool)

(declare-fun e!236561 () Bool)

(assert (=> b!390520 (=> (not res!223551) (not e!236561))))

(declare-fun lt!184154 () ListLongMap!5411)

(declare-fun contains!2457 (ListLongMap!5411 (_ BitVec 64)) Bool)

(assert (=> b!390520 (= res!223551 (not (contains!2457 lt!184154 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390521 () Bool)

(declare-fun lt!184152 () Unit!11929)

(declare-fun lt!184150 () Unit!11929)

(assert (=> b!390521 (= lt!184152 lt!184150)))

(declare-fun lt!184156 () (_ BitVec 64))

(declare-fun lt!184151 () (_ BitVec 64))

(declare-fun lt!184155 () ListLongMap!5411)

(declare-fun lt!184153 () V!13949)

(assert (=> b!390521 (not (contains!2457 (+!1019 lt!184155 (tuple2!6485 lt!184156 lt!184153)) lt!184151))))

(declare-fun addStillNotContains!137 (ListLongMap!5411 (_ BitVec 64) V!13949 (_ BitVec 64)) Unit!11929)

(assert (=> b!390521 (= lt!184150 (addStillNotContains!137 lt!184155 lt!184156 lt!184153 lt!184151))))

(assert (=> b!390521 (= lt!184151 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!5587 (ValueCell!4473 V!13949) V!13949)

(declare-fun dynLambda!640 (Int (_ BitVec 64)) V!13949)

(assert (=> b!390521 (= lt!184153 (get!5587 (select (arr!11031 _values!506) #b00000000000000000000000000000000) (dynLambda!640 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!390521 (= lt!184156 (select (arr!11032 _keys!658) #b00000000000000000000000000000000))))

(declare-fun call!27541 () ListLongMap!5411)

(assert (=> b!390521 (= lt!184155 call!27541)))

(assert (=> b!390521 (= e!236559 (+!1019 call!27541 (tuple2!6485 (select (arr!11032 _keys!658) #b00000000000000000000000000000000) (get!5587 (select (arr!11031 _values!506) #b00000000000000000000000000000000) (dynLambda!640 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!390522 () Bool)

(assert (=> b!390522 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(assert (=> b!390522 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11383 _values!506)))))

(declare-fun e!236558 () Bool)

(declare-fun apply!302 (ListLongMap!5411 (_ BitVec 64)) V!13949)

(assert (=> b!390522 (= e!236558 (= (apply!302 lt!184154 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)) (get!5587 (select (arr!11031 _values!506) #b00000000000000000000000000000000) (dynLambda!640 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!390523 () Bool)

(assert (=> b!390523 (= e!236564 (ListLongMap!5412 Nil!6363))))

(declare-fun b!390525 () Bool)

(declare-fun e!236563 () Bool)

(assert (=> b!390525 (= e!236563 e!236558)))

(assert (=> b!390525 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(declare-fun res!223549 () Bool)

(assert (=> b!390525 (= res!223549 (contains!2457 lt!184154 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!390525 (=> (not res!223549) (not e!236558))))

(declare-fun b!390526 () Bool)

(assert (=> b!390526 (= e!236561 e!236563)))

(declare-fun c!54118 () Bool)

(declare-fun e!236560 () Bool)

(assert (=> b!390526 (= c!54118 e!236560)))

(declare-fun res!223548 () Bool)

(assert (=> b!390526 (=> (not res!223548) (not e!236560))))

(assert (=> b!390526 (= res!223548 (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(declare-fun b!390527 () Bool)

(assert (=> b!390527 (= e!236559 call!27541)))

(declare-fun b!390528 () Bool)

(declare-fun e!236562 () Bool)

(assert (=> b!390528 (= e!236562 (= lt!184154 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!390529 () Bool)

(assert (=> b!390529 (= e!236560 (validKeyInArray!0 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!390529 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!390524 () Bool)

(assert (=> b!390524 (= e!236563 e!236562)))

(declare-fun c!54119 () Bool)

(assert (=> b!390524 (= c!54119 (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(declare-fun d!72883 () Bool)

(assert (=> d!72883 e!236561))

(declare-fun res!223550 () Bool)

(assert (=> d!72883 (=> (not res!223550) (not e!236561))))

(assert (=> d!72883 (= res!223550 (not (contains!2457 lt!184154 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72883 (= lt!184154 e!236564)))

(declare-fun c!54116 () Bool)

(assert (=> d!72883 (= c!54116 (bvsge #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(assert (=> d!72883 (validMask!0 mask!970)))

(assert (=> d!72883 (= (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184154)))

(declare-fun b!390530 () Bool)

(declare-fun isEmpty!553 (ListLongMap!5411) Bool)

(assert (=> b!390530 (= e!236562 (isEmpty!553 lt!184154))))

(declare-fun bm!27538 () Bool)

(assert (=> bm!27538 (= call!27541 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(assert (= (and d!72883 c!54116) b!390523))

(assert (= (and d!72883 (not c!54116)) b!390519))

(assert (= (and b!390519 c!54117) b!390521))

(assert (= (and b!390519 (not c!54117)) b!390527))

(assert (= (or b!390521 b!390527) bm!27538))

(assert (= (and d!72883 res!223550) b!390520))

(assert (= (and b!390520 res!223551) b!390526))

(assert (= (and b!390526 res!223548) b!390529))

(assert (= (and b!390526 c!54118) b!390525))

(assert (= (and b!390526 (not c!54118)) b!390524))

(assert (= (and b!390525 res!223549) b!390522))

(assert (= (and b!390524 c!54119) b!390528))

(assert (= (and b!390524 (not c!54119)) b!390530))

(declare-fun b_lambda!8677 () Bool)

(assert (=> (not b_lambda!8677) (not b!390521)))

(declare-fun t!11539 () Bool)

(declare-fun tb!3127 () Bool)

(assert (=> (and start!37978 (= defaultEntry!514 defaultEntry!514) t!11539) tb!3127))

(declare-fun result!5745 () Bool)

(assert (=> tb!3127 (= result!5745 tp_is_empty!9633)))

(assert (=> b!390521 t!11539))

(declare-fun b_and!16285 () Bool)

(assert (= b_and!16281 (and (=> t!11539 result!5745) b_and!16285)))

(declare-fun b_lambda!8679 () Bool)

(assert (=> (not b_lambda!8679) (not b!390522)))

(assert (=> b!390522 t!11539))

(declare-fun b_and!16287 () Bool)

(assert (= b_and!16285 (and (=> t!11539 result!5745) b_and!16287)))

(declare-fun m!386893 () Bool)

(assert (=> bm!27538 m!386893))

(assert (=> b!390525 m!386885))

(assert (=> b!390525 m!386885))

(declare-fun m!386895 () Bool)

(assert (=> b!390525 m!386895))

(assert (=> b!390522 m!386885))

(declare-fun m!386897 () Bool)

(assert (=> b!390522 m!386897))

(assert (=> b!390522 m!386885))

(declare-fun m!386899 () Bool)

(assert (=> b!390522 m!386899))

(declare-fun m!386901 () Bool)

(assert (=> b!390522 m!386901))

(assert (=> b!390522 m!386901))

(assert (=> b!390522 m!386897))

(declare-fun m!386903 () Bool)

(assert (=> b!390522 m!386903))

(assert (=> b!390519 m!386885))

(assert (=> b!390519 m!386885))

(assert (=> b!390519 m!386891))

(declare-fun m!386905 () Bool)

(assert (=> b!390530 m!386905))

(assert (=> b!390521 m!386885))

(declare-fun m!386907 () Bool)

(assert (=> b!390521 m!386907))

(declare-fun m!386909 () Bool)

(assert (=> b!390521 m!386909))

(assert (=> b!390521 m!386897))

(assert (=> b!390521 m!386901))

(declare-fun m!386911 () Bool)

(assert (=> b!390521 m!386911))

(assert (=> b!390521 m!386901))

(assert (=> b!390521 m!386897))

(assert (=> b!390521 m!386903))

(assert (=> b!390521 m!386907))

(declare-fun m!386913 () Bool)

(assert (=> b!390521 m!386913))

(assert (=> b!390528 m!386893))

(assert (=> b!390529 m!386885))

(assert (=> b!390529 m!386885))

(assert (=> b!390529 m!386891))

(declare-fun m!386915 () Bool)

(assert (=> b!390520 m!386915))

(declare-fun m!386917 () Bool)

(assert (=> d!72883 m!386917))

(assert (=> d!72883 m!386825))

(assert (=> b!390425 d!72883))

(declare-fun d!72885 () Bool)

(declare-fun e!236567 () Bool)

(assert (=> d!72885 e!236567))

(declare-fun res!223557 () Bool)

(assert (=> d!72885 (=> (not res!223557) (not e!236567))))

(declare-fun lt!184166 () ListLongMap!5411)

(assert (=> d!72885 (= res!223557 (contains!2457 lt!184166 (_1!3252 (tuple2!6485 k0!778 v!373))))))

(declare-fun lt!184168 () List!6366)

(assert (=> d!72885 (= lt!184166 (ListLongMap!5412 lt!184168))))

(declare-fun lt!184167 () Unit!11929)

(declare-fun lt!184165 () Unit!11929)

(assert (=> d!72885 (= lt!184167 lt!184165)))

(declare-datatypes ((Option!365 0))(
  ( (Some!364 (v!7079 V!13949)) (None!363) )
))
(declare-fun getValueByKey!359 (List!6366 (_ BitVec 64)) Option!365)

(assert (=> d!72885 (= (getValueByKey!359 lt!184168 (_1!3252 (tuple2!6485 k0!778 v!373))) (Some!364 (_2!3252 (tuple2!6485 k0!778 v!373))))))

(declare-fun lemmaContainsTupThenGetReturnValue!183 (List!6366 (_ BitVec 64) V!13949) Unit!11929)

(assert (=> d!72885 (= lt!184165 (lemmaContainsTupThenGetReturnValue!183 lt!184168 (_1!3252 (tuple2!6485 k0!778 v!373)) (_2!3252 (tuple2!6485 k0!778 v!373))))))

(declare-fun insertStrictlySorted!185 (List!6366 (_ BitVec 64) V!13949) List!6366)

(assert (=> d!72885 (= lt!184168 (insertStrictlySorted!185 (toList!2721 lt!184100) (_1!3252 (tuple2!6485 k0!778 v!373)) (_2!3252 (tuple2!6485 k0!778 v!373))))))

(assert (=> d!72885 (= (+!1019 lt!184100 (tuple2!6485 k0!778 v!373)) lt!184166)))

(declare-fun b!390537 () Bool)

(declare-fun res!223556 () Bool)

(assert (=> b!390537 (=> (not res!223556) (not e!236567))))

(assert (=> b!390537 (= res!223556 (= (getValueByKey!359 (toList!2721 lt!184166) (_1!3252 (tuple2!6485 k0!778 v!373))) (Some!364 (_2!3252 (tuple2!6485 k0!778 v!373)))))))

(declare-fun b!390538 () Bool)

(declare-fun contains!2458 (List!6366 tuple2!6484) Bool)

(assert (=> b!390538 (= e!236567 (contains!2458 (toList!2721 lt!184166) (tuple2!6485 k0!778 v!373)))))

(assert (= (and d!72885 res!223557) b!390537))

(assert (= (and b!390537 res!223556) b!390538))

(declare-fun m!386919 () Bool)

(assert (=> d!72885 m!386919))

(declare-fun m!386921 () Bool)

(assert (=> d!72885 m!386921))

(declare-fun m!386923 () Bool)

(assert (=> d!72885 m!386923))

(declare-fun m!386925 () Bool)

(assert (=> d!72885 m!386925))

(declare-fun m!386927 () Bool)

(assert (=> b!390537 m!386927))

(declare-fun m!386929 () Bool)

(assert (=> b!390538 m!386929))

(assert (=> b!390425 d!72885))

(declare-fun b!390545 () Bool)

(declare-fun e!236573 () Bool)

(declare-fun call!27546 () ListLongMap!5411)

(declare-fun call!27547 () ListLongMap!5411)

(assert (=> b!390545 (= e!236573 (= call!27546 call!27547))))

(declare-fun bm!27543 () Bool)

(assert (=> bm!27543 (= call!27547 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390546 () Bool)

(assert (=> b!390546 (= e!236573 (= call!27546 (+!1019 call!27547 (tuple2!6485 k0!778 v!373))))))

(declare-fun b!390547 () Bool)

(declare-fun e!236572 () Bool)

(assert (=> b!390547 (= e!236572 e!236573)))

(declare-fun c!54122 () Bool)

(assert (=> b!390547 (= c!54122 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun d!72887 () Bool)

(assert (=> d!72887 e!236572))

(declare-fun res!223560 () Bool)

(assert (=> d!72887 (=> (not res!223560) (not e!236572))))

(assert (=> d!72887 (= res!223560 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11384 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11383 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11384 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11383 _values!506))))))))

(declare-fun lt!184171 () Unit!11929)

(declare-fun choose!1325 (array!23143 array!23141 (_ BitVec 32) (_ BitVec 32) V!13949 V!13949 (_ BitVec 32) (_ BitVec 64) V!13949 (_ BitVec 32) Int) Unit!11929)

(assert (=> d!72887 (= lt!184171 (choose!1325 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!72887 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(assert (=> d!72887 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!245 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!184171)))

(declare-fun bm!27544 () Bool)

(assert (=> bm!27544 (= call!27546 (getCurrentListMapNoExtraKeys!950 (array!23144 (store (arr!11032 _keys!658) i!548 k0!778) (size!11384 _keys!658)) (array!23142 (store (arr!11031 _values!506) i!548 (ValueCellFull!4473 v!373)) (size!11383 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and d!72887 res!223560) b!390547))

(assert (= (and b!390547 c!54122) b!390546))

(assert (= (and b!390547 (not c!54122)) b!390545))

(assert (= (or b!390546 b!390545) bm!27543))

(assert (= (or b!390546 b!390545) bm!27544))

(assert (=> bm!27543 m!386811))

(declare-fun m!386931 () Bool)

(assert (=> b!390546 m!386931))

(declare-fun m!386933 () Bool)

(assert (=> d!72887 m!386933))

(assert (=> bm!27544 m!386833))

(assert (=> bm!27544 m!386817))

(declare-fun m!386935 () Bool)

(assert (=> bm!27544 m!386935))

(assert (=> b!390425 d!72887))

(declare-fun bm!27559 () Bool)

(declare-fun call!27562 () ListLongMap!5411)

(declare-fun call!27565 () ListLongMap!5411)

(assert (=> bm!27559 (= call!27562 call!27565)))

(declare-fun bm!27560 () Bool)

(declare-fun call!27564 () Bool)

(declare-fun lt!184231 () ListLongMap!5411)

(assert (=> bm!27560 (= call!27564 (contains!2457 lt!184231 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!390590 () Bool)

(declare-fun e!236601 () Bool)

(declare-fun e!236607 () Bool)

(assert (=> b!390590 (= e!236601 e!236607)))

(declare-fun res!223587 () Bool)

(declare-fun call!27568 () Bool)

(assert (=> b!390590 (= res!223587 call!27568)))

(assert (=> b!390590 (=> (not res!223587) (not e!236607))))

(declare-fun b!390591 () Bool)

(declare-fun res!223584 () Bool)

(declare-fun e!236605 () Bool)

(assert (=> b!390591 (=> (not res!223584) (not e!236605))))

(declare-fun e!236604 () Bool)

(assert (=> b!390591 (= res!223584 e!236604)))

(declare-fun c!54140 () Bool)

(assert (=> b!390591 (= c!54140 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!390593 () Bool)

(declare-fun e!236611 () Bool)

(assert (=> b!390593 (= e!236604 e!236611)))

(declare-fun res!223580 () Bool)

(assert (=> b!390593 (= res!223580 call!27564)))

(assert (=> b!390593 (=> (not res!223580) (not e!236611))))

(declare-fun b!390594 () Bool)

(declare-fun e!236603 () ListLongMap!5411)

(declare-fun call!27563 () ListLongMap!5411)

(assert (=> b!390594 (= e!236603 call!27563)))

(declare-fun b!390595 () Bool)

(assert (=> b!390595 (= e!236605 e!236601)))

(declare-fun c!54137 () Bool)

(assert (=> b!390595 (= c!54137 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27561 () Bool)

(assert (=> bm!27561 (= call!27568 (contains!2457 lt!184231 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!390596 () Bool)

(declare-fun e!236609 () Unit!11929)

(declare-fun lt!184227 () Unit!11929)

(assert (=> b!390596 (= e!236609 lt!184227)))

(declare-fun lt!184236 () ListLongMap!5411)

(assert (=> b!390596 (= lt!184236 (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184220 () (_ BitVec 64))

(assert (=> b!390596 (= lt!184220 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184232 () (_ BitVec 64))

(assert (=> b!390596 (= lt!184232 (select (arr!11032 lt!184108) #b00000000000000000000000000000000))))

(declare-fun lt!184234 () Unit!11929)

(declare-fun addStillContains!278 (ListLongMap!5411 (_ BitVec 64) V!13949 (_ BitVec 64)) Unit!11929)

(assert (=> b!390596 (= lt!184234 (addStillContains!278 lt!184236 lt!184220 zeroValue!472 lt!184232))))

(assert (=> b!390596 (contains!2457 (+!1019 lt!184236 (tuple2!6485 lt!184220 zeroValue!472)) lt!184232)))

(declare-fun lt!184226 () Unit!11929)

(assert (=> b!390596 (= lt!184226 lt!184234)))

(declare-fun lt!184218 () ListLongMap!5411)

(assert (=> b!390596 (= lt!184218 (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184228 () (_ BitVec 64))

(assert (=> b!390596 (= lt!184228 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184219 () (_ BitVec 64))

(assert (=> b!390596 (= lt!184219 (select (arr!11032 lt!184108) #b00000000000000000000000000000000))))

(declare-fun lt!184216 () Unit!11929)

(declare-fun addApplyDifferent!278 (ListLongMap!5411 (_ BitVec 64) V!13949 (_ BitVec 64)) Unit!11929)

(assert (=> b!390596 (= lt!184216 (addApplyDifferent!278 lt!184218 lt!184228 minValue!472 lt!184219))))

(assert (=> b!390596 (= (apply!302 (+!1019 lt!184218 (tuple2!6485 lt!184228 minValue!472)) lt!184219) (apply!302 lt!184218 lt!184219))))

(declare-fun lt!184224 () Unit!11929)

(assert (=> b!390596 (= lt!184224 lt!184216)))

(declare-fun lt!184217 () ListLongMap!5411)

(assert (=> b!390596 (= lt!184217 (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184225 () (_ BitVec 64))

(assert (=> b!390596 (= lt!184225 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184230 () (_ BitVec 64))

(assert (=> b!390596 (= lt!184230 (select (arr!11032 lt!184108) #b00000000000000000000000000000000))))

(declare-fun lt!184221 () Unit!11929)

(assert (=> b!390596 (= lt!184221 (addApplyDifferent!278 lt!184217 lt!184225 zeroValue!472 lt!184230))))

(assert (=> b!390596 (= (apply!302 (+!1019 lt!184217 (tuple2!6485 lt!184225 zeroValue!472)) lt!184230) (apply!302 lt!184217 lt!184230))))

(declare-fun lt!184235 () Unit!11929)

(assert (=> b!390596 (= lt!184235 lt!184221)))

(declare-fun lt!184229 () ListLongMap!5411)

(assert (=> b!390596 (= lt!184229 (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184223 () (_ BitVec 64))

(assert (=> b!390596 (= lt!184223 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184233 () (_ BitVec 64))

(assert (=> b!390596 (= lt!184233 (select (arr!11032 lt!184108) #b00000000000000000000000000000000))))

(assert (=> b!390596 (= lt!184227 (addApplyDifferent!278 lt!184229 lt!184223 minValue!472 lt!184233))))

(assert (=> b!390596 (= (apply!302 (+!1019 lt!184229 (tuple2!6485 lt!184223 minValue!472)) lt!184233) (apply!302 lt!184229 lt!184233))))

(declare-fun bm!27562 () Bool)

(declare-fun call!27566 () ListLongMap!5411)

(assert (=> bm!27562 (= call!27563 call!27566)))

(declare-fun b!390597 () Bool)

(declare-fun Unit!11933 () Unit!11929)

(assert (=> b!390597 (= e!236609 Unit!11933)))

(declare-fun b!390598 () Bool)

(declare-fun call!27567 () ListLongMap!5411)

(assert (=> b!390598 (= e!236603 call!27567)))

(declare-fun b!390599 () Bool)

(assert (=> b!390599 (= e!236604 (not call!27564))))

(declare-fun bm!27563 () Bool)

(declare-fun c!54136 () Bool)

(declare-fun c!54138 () Bool)

(assert (=> bm!27563 (= call!27566 (+!1019 (ite c!54138 call!27565 (ite c!54136 call!27562 call!27567)) (ite (or c!54138 c!54136) (tuple2!6485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!390600 () Bool)

(declare-fun e!236606 () ListLongMap!5411)

(assert (=> b!390600 (= e!236606 call!27563)))

(declare-fun b!390592 () Bool)

(assert (=> b!390592 (= e!236607 (= (apply!302 lt!184231 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun d!72889 () Bool)

(assert (=> d!72889 e!236605))

(declare-fun res!223582 () Bool)

(assert (=> d!72889 (=> (not res!223582) (not e!236605))))

(assert (=> d!72889 (= res!223582 (or (bvsge #b00000000000000000000000000000000 (size!11384 lt!184108)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))))

(declare-fun lt!184222 () ListLongMap!5411)

(assert (=> d!72889 (= lt!184231 lt!184222)))

(declare-fun lt!184237 () Unit!11929)

(assert (=> d!72889 (= lt!184237 e!236609)))

(declare-fun c!54139 () Bool)

(declare-fun e!236608 () Bool)

(assert (=> d!72889 (= c!54139 e!236608)))

(declare-fun res!223585 () Bool)

(assert (=> d!72889 (=> (not res!223585) (not e!236608))))

(assert (=> d!72889 (= res!223585 (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(declare-fun e!236612 () ListLongMap!5411)

(assert (=> d!72889 (= lt!184222 e!236612)))

(assert (=> d!72889 (= c!54138 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72889 (validMask!0 mask!970)))

(assert (=> d!72889 (= (getCurrentListMap!2088 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184231)))

(declare-fun b!390601 () Bool)

(declare-fun e!236602 () Bool)

(assert (=> b!390601 (= e!236602 (= (apply!302 lt!184231 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)) (get!5587 (select (arr!11031 lt!184101) #b00000000000000000000000000000000) (dynLambda!640 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!390601 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11383 lt!184101)))))

(assert (=> b!390601 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(declare-fun b!390602 () Bool)

(assert (=> b!390602 (= e!236608 (validKeyInArray!0 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(declare-fun b!390603 () Bool)

(declare-fun res!223581 () Bool)

(assert (=> b!390603 (=> (not res!223581) (not e!236605))))

(declare-fun e!236600 () Bool)

(assert (=> b!390603 (= res!223581 e!236600)))

(declare-fun res!223579 () Bool)

(assert (=> b!390603 (=> res!223579 e!236600)))

(declare-fun e!236610 () Bool)

(assert (=> b!390603 (= res!223579 (not e!236610))))

(declare-fun res!223586 () Bool)

(assert (=> b!390603 (=> (not res!223586) (not e!236610))))

(assert (=> b!390603 (= res!223586 (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(declare-fun b!390604 () Bool)

(assert (=> b!390604 (= e!236611 (= (apply!302 lt!184231 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!390605 () Bool)

(assert (=> b!390605 (= e!236612 e!236606)))

(assert (=> b!390605 (= c!54136 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!390606 () Bool)

(assert (=> b!390606 (= e!236612 (+!1019 call!27566 (tuple2!6485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun bm!27564 () Bool)

(assert (=> bm!27564 (= call!27567 call!27562)))

(declare-fun b!390607 () Bool)

(assert (=> b!390607 (= e!236600 e!236602)))

(declare-fun res!223583 () Bool)

(assert (=> b!390607 (=> (not res!223583) (not e!236602))))

(assert (=> b!390607 (= res!223583 (contains!2457 lt!184231 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(assert (=> b!390607 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(declare-fun b!390608 () Bool)

(assert (=> b!390608 (= e!236601 (not call!27568))))

(declare-fun b!390609 () Bool)

(assert (=> b!390609 (= e!236610 (validKeyInArray!0 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(declare-fun b!390610 () Bool)

(declare-fun c!54135 () Bool)

(assert (=> b!390610 (= c!54135 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!390610 (= e!236606 e!236603)))

(declare-fun bm!27565 () Bool)

(assert (=> bm!27565 (= call!27565 (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and d!72889 c!54138) b!390606))

(assert (= (and d!72889 (not c!54138)) b!390605))

(assert (= (and b!390605 c!54136) b!390600))

(assert (= (and b!390605 (not c!54136)) b!390610))

(assert (= (and b!390610 c!54135) b!390594))

(assert (= (and b!390610 (not c!54135)) b!390598))

(assert (= (or b!390594 b!390598) bm!27564))

(assert (= (or b!390600 bm!27564) bm!27559))

(assert (= (or b!390600 b!390594) bm!27562))

(assert (= (or b!390606 bm!27559) bm!27565))

(assert (= (or b!390606 bm!27562) bm!27563))

(assert (= (and d!72889 res!223585) b!390602))

(assert (= (and d!72889 c!54139) b!390596))

(assert (= (and d!72889 (not c!54139)) b!390597))

(assert (= (and d!72889 res!223582) b!390603))

(assert (= (and b!390603 res!223586) b!390609))

(assert (= (and b!390603 (not res!223579)) b!390607))

(assert (= (and b!390607 res!223583) b!390601))

(assert (= (and b!390603 res!223581) b!390591))

(assert (= (and b!390591 c!54140) b!390593))

(assert (= (and b!390591 (not c!54140)) b!390599))

(assert (= (and b!390593 res!223580) b!390604))

(assert (= (or b!390593 b!390599) bm!27560))

(assert (= (and b!390591 res!223584) b!390595))

(assert (= (and b!390595 c!54137) b!390590))

(assert (= (and b!390595 (not c!54137)) b!390608))

(assert (= (and b!390590 res!223587) b!390592))

(assert (= (or b!390590 b!390608) bm!27561))

(declare-fun b_lambda!8681 () Bool)

(assert (=> (not b_lambda!8681) (not b!390601)))

(assert (=> b!390601 t!11539))

(declare-fun b_and!16289 () Bool)

(assert (= b_and!16287 (and (=> t!11539 result!5745) b_and!16289)))

(declare-fun m!386937 () Bool)

(assert (=> b!390604 m!386937))

(declare-fun m!386939 () Bool)

(assert (=> b!390607 m!386939))

(assert (=> b!390607 m!386939))

(declare-fun m!386941 () Bool)

(assert (=> b!390607 m!386941))

(assert (=> b!390601 m!386939))

(assert (=> b!390601 m!386939))

(declare-fun m!386943 () Bool)

(assert (=> b!390601 m!386943))

(declare-fun m!386945 () Bool)

(assert (=> b!390601 m!386945))

(assert (=> b!390601 m!386897))

(declare-fun m!386947 () Bool)

(assert (=> b!390601 m!386947))

(assert (=> b!390601 m!386945))

(assert (=> b!390601 m!386897))

(declare-fun m!386949 () Bool)

(assert (=> bm!27561 m!386949))

(declare-fun m!386951 () Bool)

(assert (=> b!390606 m!386951))

(declare-fun m!386953 () Bool)

(assert (=> bm!27563 m!386953))

(assert (=> bm!27565 m!386815))

(assert (=> b!390596 m!386815))

(declare-fun m!386955 () Bool)

(assert (=> b!390596 m!386955))

(declare-fun m!386957 () Bool)

(assert (=> b!390596 m!386957))

(declare-fun m!386959 () Bool)

(assert (=> b!390596 m!386959))

(declare-fun m!386961 () Bool)

(assert (=> b!390596 m!386961))

(declare-fun m!386963 () Bool)

(assert (=> b!390596 m!386963))

(declare-fun m!386965 () Bool)

(assert (=> b!390596 m!386965))

(assert (=> b!390596 m!386963))

(declare-fun m!386967 () Bool)

(assert (=> b!390596 m!386967))

(declare-fun m!386969 () Bool)

(assert (=> b!390596 m!386969))

(declare-fun m!386971 () Bool)

(assert (=> b!390596 m!386971))

(assert (=> b!390596 m!386939))

(declare-fun m!386973 () Bool)

(assert (=> b!390596 m!386973))

(assert (=> b!390596 m!386969))

(assert (=> b!390596 m!386957))

(declare-fun m!386975 () Bool)

(assert (=> b!390596 m!386975))

(declare-fun m!386977 () Bool)

(assert (=> b!390596 m!386977))

(declare-fun m!386979 () Bool)

(assert (=> b!390596 m!386979))

(declare-fun m!386981 () Bool)

(assert (=> b!390596 m!386981))

(declare-fun m!386983 () Bool)

(assert (=> b!390596 m!386983))

(assert (=> b!390596 m!386981))

(assert (=> b!390609 m!386939))

(assert (=> b!390609 m!386939))

(declare-fun m!386985 () Bool)

(assert (=> b!390609 m!386985))

(assert (=> d!72889 m!386825))

(declare-fun m!386987 () Bool)

(assert (=> bm!27560 m!386987))

(assert (=> b!390602 m!386939))

(assert (=> b!390602 m!386939))

(assert (=> b!390602 m!386985))

(declare-fun m!386989 () Bool)

(assert (=> b!390592 m!386989))

(assert (=> b!390425 d!72889))

(declare-fun b!390611 () Bool)

(declare-fun e!236619 () ListLongMap!5411)

(declare-fun e!236614 () ListLongMap!5411)

(assert (=> b!390611 (= e!236619 e!236614)))

(declare-fun c!54142 () Bool)

(assert (=> b!390611 (= c!54142 (validKeyInArray!0 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(declare-fun b!390612 () Bool)

(declare-fun res!223591 () Bool)

(declare-fun e!236616 () Bool)

(assert (=> b!390612 (=> (not res!223591) (not e!236616))))

(declare-fun lt!184242 () ListLongMap!5411)

(assert (=> b!390612 (= res!223591 (not (contains!2457 lt!184242 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390613 () Bool)

(declare-fun lt!184240 () Unit!11929)

(declare-fun lt!184238 () Unit!11929)

(assert (=> b!390613 (= lt!184240 lt!184238)))

(declare-fun lt!184241 () V!13949)

(declare-fun lt!184243 () ListLongMap!5411)

(declare-fun lt!184244 () (_ BitVec 64))

(declare-fun lt!184239 () (_ BitVec 64))

(assert (=> b!390613 (not (contains!2457 (+!1019 lt!184243 (tuple2!6485 lt!184244 lt!184241)) lt!184239))))

(assert (=> b!390613 (= lt!184238 (addStillNotContains!137 lt!184243 lt!184244 lt!184241 lt!184239))))

(assert (=> b!390613 (= lt!184239 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!390613 (= lt!184241 (get!5587 (select (arr!11031 lt!184101) #b00000000000000000000000000000000) (dynLambda!640 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!390613 (= lt!184244 (select (arr!11032 lt!184108) #b00000000000000000000000000000000))))

(declare-fun call!27569 () ListLongMap!5411)

(assert (=> b!390613 (= lt!184243 call!27569)))

(assert (=> b!390613 (= e!236614 (+!1019 call!27569 (tuple2!6485 (select (arr!11032 lt!184108) #b00000000000000000000000000000000) (get!5587 (select (arr!11031 lt!184101) #b00000000000000000000000000000000) (dynLambda!640 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!390614 () Bool)

(assert (=> b!390614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(assert (=> b!390614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11383 lt!184101)))))

(declare-fun e!236613 () Bool)

(assert (=> b!390614 (= e!236613 (= (apply!302 lt!184242 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)) (get!5587 (select (arr!11031 lt!184101) #b00000000000000000000000000000000) (dynLambda!640 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!390615 () Bool)

(assert (=> b!390615 (= e!236619 (ListLongMap!5412 Nil!6363))))

(declare-fun b!390617 () Bool)

(declare-fun e!236618 () Bool)

(assert (=> b!390617 (= e!236618 e!236613)))

(assert (=> b!390617 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(declare-fun res!223589 () Bool)

(assert (=> b!390617 (= res!223589 (contains!2457 lt!184242 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(assert (=> b!390617 (=> (not res!223589) (not e!236613))))

(declare-fun b!390618 () Bool)

(assert (=> b!390618 (= e!236616 e!236618)))

(declare-fun c!54143 () Bool)

(declare-fun e!236615 () Bool)

(assert (=> b!390618 (= c!54143 e!236615)))

(declare-fun res!223588 () Bool)

(assert (=> b!390618 (=> (not res!223588) (not e!236615))))

(assert (=> b!390618 (= res!223588 (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(declare-fun b!390619 () Bool)

(assert (=> b!390619 (= e!236614 call!27569)))

(declare-fun e!236617 () Bool)

(declare-fun b!390620 () Bool)

(assert (=> b!390620 (= e!236617 (= lt!184242 (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!390621 () Bool)

(assert (=> b!390621 (= e!236615 (validKeyInArray!0 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(assert (=> b!390621 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!390616 () Bool)

(assert (=> b!390616 (= e!236618 e!236617)))

(declare-fun c!54144 () Bool)

(assert (=> b!390616 (= c!54144 (bvslt #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(declare-fun d!72891 () Bool)

(assert (=> d!72891 e!236616))

(declare-fun res!223590 () Bool)

(assert (=> d!72891 (=> (not res!223590) (not e!236616))))

(assert (=> d!72891 (= res!223590 (not (contains!2457 lt!184242 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72891 (= lt!184242 e!236619)))

(declare-fun c!54141 () Bool)

(assert (=> d!72891 (= c!54141 (bvsge #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(assert (=> d!72891 (validMask!0 mask!970)))

(assert (=> d!72891 (= (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184242)))

(declare-fun b!390622 () Bool)

(assert (=> b!390622 (= e!236617 (isEmpty!553 lt!184242))))

(declare-fun bm!27566 () Bool)

(assert (=> bm!27566 (= call!27569 (getCurrentListMapNoExtraKeys!950 lt!184108 lt!184101 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(assert (= (and d!72891 c!54141) b!390615))

(assert (= (and d!72891 (not c!54141)) b!390611))

(assert (= (and b!390611 c!54142) b!390613))

(assert (= (and b!390611 (not c!54142)) b!390619))

(assert (= (or b!390613 b!390619) bm!27566))

(assert (= (and d!72891 res!223590) b!390612))

(assert (= (and b!390612 res!223591) b!390618))

(assert (= (and b!390618 res!223588) b!390621))

(assert (= (and b!390618 c!54143) b!390617))

(assert (= (and b!390618 (not c!54143)) b!390616))

(assert (= (and b!390617 res!223589) b!390614))

(assert (= (and b!390616 c!54144) b!390620))

(assert (= (and b!390616 (not c!54144)) b!390622))

(declare-fun b_lambda!8683 () Bool)

(assert (=> (not b_lambda!8683) (not b!390613)))

(assert (=> b!390613 t!11539))

(declare-fun b_and!16291 () Bool)

(assert (= b_and!16289 (and (=> t!11539 result!5745) b_and!16291)))

(declare-fun b_lambda!8685 () Bool)

(assert (=> (not b_lambda!8685) (not b!390614)))

(assert (=> b!390614 t!11539))

(declare-fun b_and!16293 () Bool)

(assert (= b_and!16291 (and (=> t!11539 result!5745) b_and!16293)))

(declare-fun m!386991 () Bool)

(assert (=> bm!27566 m!386991))

(assert (=> b!390617 m!386939))

(assert (=> b!390617 m!386939))

(declare-fun m!386993 () Bool)

(assert (=> b!390617 m!386993))

(assert (=> b!390614 m!386939))

(assert (=> b!390614 m!386897))

(assert (=> b!390614 m!386939))

(declare-fun m!386995 () Bool)

(assert (=> b!390614 m!386995))

(assert (=> b!390614 m!386945))

(assert (=> b!390614 m!386945))

(assert (=> b!390614 m!386897))

(assert (=> b!390614 m!386947))

(assert (=> b!390611 m!386939))

(assert (=> b!390611 m!386939))

(assert (=> b!390611 m!386985))

(declare-fun m!386997 () Bool)

(assert (=> b!390622 m!386997))

(assert (=> b!390613 m!386939))

(declare-fun m!386999 () Bool)

(assert (=> b!390613 m!386999))

(declare-fun m!387001 () Bool)

(assert (=> b!390613 m!387001))

(assert (=> b!390613 m!386897))

(assert (=> b!390613 m!386945))

(declare-fun m!387003 () Bool)

(assert (=> b!390613 m!387003))

(assert (=> b!390613 m!386945))

(assert (=> b!390613 m!386897))

(assert (=> b!390613 m!386947))

(assert (=> b!390613 m!386999))

(declare-fun m!387005 () Bool)

(assert (=> b!390613 m!387005))

(assert (=> b!390620 m!386991))

(assert (=> b!390621 m!386939))

(assert (=> b!390621 m!386939))

(assert (=> b!390621 m!386985))

(declare-fun m!387007 () Bool)

(assert (=> b!390612 m!387007))

(declare-fun m!387009 () Bool)

(assert (=> d!72891 m!387009))

(assert (=> d!72891 m!386825))

(assert (=> b!390425 d!72891))

(declare-fun bm!27567 () Bool)

(declare-fun call!27570 () ListLongMap!5411)

(declare-fun call!27573 () ListLongMap!5411)

(assert (=> bm!27567 (= call!27570 call!27573)))

(declare-fun bm!27568 () Bool)

(declare-fun call!27572 () Bool)

(declare-fun lt!184260 () ListLongMap!5411)

(assert (=> bm!27568 (= call!27572 (contains!2457 lt!184260 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!390623 () Bool)

(declare-fun e!236621 () Bool)

(declare-fun e!236627 () Bool)

(assert (=> b!390623 (= e!236621 e!236627)))

(declare-fun res!223600 () Bool)

(declare-fun call!27576 () Bool)

(assert (=> b!390623 (= res!223600 call!27576)))

(assert (=> b!390623 (=> (not res!223600) (not e!236627))))

(declare-fun b!390624 () Bool)

(declare-fun res!223597 () Bool)

(declare-fun e!236625 () Bool)

(assert (=> b!390624 (=> (not res!223597) (not e!236625))))

(declare-fun e!236624 () Bool)

(assert (=> b!390624 (= res!223597 e!236624)))

(declare-fun c!54150 () Bool)

(assert (=> b!390624 (= c!54150 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!390626 () Bool)

(declare-fun e!236631 () Bool)

(assert (=> b!390626 (= e!236624 e!236631)))

(declare-fun res!223593 () Bool)

(assert (=> b!390626 (= res!223593 call!27572)))

(assert (=> b!390626 (=> (not res!223593) (not e!236631))))

(declare-fun b!390627 () Bool)

(declare-fun e!236623 () ListLongMap!5411)

(declare-fun call!27571 () ListLongMap!5411)

(assert (=> b!390627 (= e!236623 call!27571)))

(declare-fun b!390628 () Bool)

(assert (=> b!390628 (= e!236625 e!236621)))

(declare-fun c!54147 () Bool)

(assert (=> b!390628 (= c!54147 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27569 () Bool)

(assert (=> bm!27569 (= call!27576 (contains!2457 lt!184260 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!390629 () Bool)

(declare-fun e!236629 () Unit!11929)

(declare-fun lt!184256 () Unit!11929)

(assert (=> b!390629 (= e!236629 lt!184256)))

(declare-fun lt!184265 () ListLongMap!5411)

(assert (=> b!390629 (= lt!184265 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184249 () (_ BitVec 64))

(assert (=> b!390629 (= lt!184249 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184261 () (_ BitVec 64))

(assert (=> b!390629 (= lt!184261 (select (arr!11032 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184263 () Unit!11929)

(assert (=> b!390629 (= lt!184263 (addStillContains!278 lt!184265 lt!184249 zeroValue!472 lt!184261))))

(assert (=> b!390629 (contains!2457 (+!1019 lt!184265 (tuple2!6485 lt!184249 zeroValue!472)) lt!184261)))

(declare-fun lt!184255 () Unit!11929)

(assert (=> b!390629 (= lt!184255 lt!184263)))

(declare-fun lt!184247 () ListLongMap!5411)

(assert (=> b!390629 (= lt!184247 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184257 () (_ BitVec 64))

(assert (=> b!390629 (= lt!184257 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184248 () (_ BitVec 64))

(assert (=> b!390629 (= lt!184248 (select (arr!11032 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184245 () Unit!11929)

(assert (=> b!390629 (= lt!184245 (addApplyDifferent!278 lt!184247 lt!184257 minValue!472 lt!184248))))

(assert (=> b!390629 (= (apply!302 (+!1019 lt!184247 (tuple2!6485 lt!184257 minValue!472)) lt!184248) (apply!302 lt!184247 lt!184248))))

(declare-fun lt!184253 () Unit!11929)

(assert (=> b!390629 (= lt!184253 lt!184245)))

(declare-fun lt!184246 () ListLongMap!5411)

(assert (=> b!390629 (= lt!184246 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184254 () (_ BitVec 64))

(assert (=> b!390629 (= lt!184254 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184259 () (_ BitVec 64))

(assert (=> b!390629 (= lt!184259 (select (arr!11032 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184250 () Unit!11929)

(assert (=> b!390629 (= lt!184250 (addApplyDifferent!278 lt!184246 lt!184254 zeroValue!472 lt!184259))))

(assert (=> b!390629 (= (apply!302 (+!1019 lt!184246 (tuple2!6485 lt!184254 zeroValue!472)) lt!184259) (apply!302 lt!184246 lt!184259))))

(declare-fun lt!184264 () Unit!11929)

(assert (=> b!390629 (= lt!184264 lt!184250)))

(declare-fun lt!184258 () ListLongMap!5411)

(assert (=> b!390629 (= lt!184258 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184252 () (_ BitVec 64))

(assert (=> b!390629 (= lt!184252 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184262 () (_ BitVec 64))

(assert (=> b!390629 (= lt!184262 (select (arr!11032 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!390629 (= lt!184256 (addApplyDifferent!278 lt!184258 lt!184252 minValue!472 lt!184262))))

(assert (=> b!390629 (= (apply!302 (+!1019 lt!184258 (tuple2!6485 lt!184252 minValue!472)) lt!184262) (apply!302 lt!184258 lt!184262))))

(declare-fun bm!27570 () Bool)

(declare-fun call!27574 () ListLongMap!5411)

(assert (=> bm!27570 (= call!27571 call!27574)))

(declare-fun b!390630 () Bool)

(declare-fun Unit!11934 () Unit!11929)

(assert (=> b!390630 (= e!236629 Unit!11934)))

(declare-fun b!390631 () Bool)

(declare-fun call!27575 () ListLongMap!5411)

(assert (=> b!390631 (= e!236623 call!27575)))

(declare-fun b!390632 () Bool)

(assert (=> b!390632 (= e!236624 (not call!27572))))

(declare-fun c!54148 () Bool)

(declare-fun bm!27571 () Bool)

(declare-fun c!54146 () Bool)

(assert (=> bm!27571 (= call!27574 (+!1019 (ite c!54148 call!27573 (ite c!54146 call!27570 call!27575)) (ite (or c!54148 c!54146) (tuple2!6485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!390633 () Bool)

(declare-fun e!236626 () ListLongMap!5411)

(assert (=> b!390633 (= e!236626 call!27571)))

(declare-fun b!390625 () Bool)

(assert (=> b!390625 (= e!236627 (= (apply!302 lt!184260 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun d!72893 () Bool)

(assert (=> d!72893 e!236625))

(declare-fun res!223595 () Bool)

(assert (=> d!72893 (=> (not res!223595) (not e!236625))))

(assert (=> d!72893 (= res!223595 (or (bvsge #b00000000000000000000000000000000 (size!11384 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))))

(declare-fun lt!184251 () ListLongMap!5411)

(assert (=> d!72893 (= lt!184260 lt!184251)))

(declare-fun lt!184266 () Unit!11929)

(assert (=> d!72893 (= lt!184266 e!236629)))

(declare-fun c!54149 () Bool)

(declare-fun e!236628 () Bool)

(assert (=> d!72893 (= c!54149 e!236628)))

(declare-fun res!223598 () Bool)

(assert (=> d!72893 (=> (not res!223598) (not e!236628))))

(assert (=> d!72893 (= res!223598 (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(declare-fun e!236632 () ListLongMap!5411)

(assert (=> d!72893 (= lt!184251 e!236632)))

(assert (=> d!72893 (= c!54148 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72893 (validMask!0 mask!970)))

(assert (=> d!72893 (= (getCurrentListMap!2088 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184260)))

(declare-fun e!236622 () Bool)

(declare-fun b!390634 () Bool)

(assert (=> b!390634 (= e!236622 (= (apply!302 lt!184260 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)) (get!5587 (select (arr!11031 _values!506) #b00000000000000000000000000000000) (dynLambda!640 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!390634 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11383 _values!506)))))

(assert (=> b!390634 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(declare-fun b!390635 () Bool)

(assert (=> b!390635 (= e!236628 (validKeyInArray!0 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390636 () Bool)

(declare-fun res!223594 () Bool)

(assert (=> b!390636 (=> (not res!223594) (not e!236625))))

(declare-fun e!236620 () Bool)

(assert (=> b!390636 (= res!223594 e!236620)))

(declare-fun res!223592 () Bool)

(assert (=> b!390636 (=> res!223592 e!236620)))

(declare-fun e!236630 () Bool)

(assert (=> b!390636 (= res!223592 (not e!236630))))

(declare-fun res!223599 () Bool)

(assert (=> b!390636 (=> (not res!223599) (not e!236630))))

(assert (=> b!390636 (= res!223599 (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(declare-fun b!390637 () Bool)

(assert (=> b!390637 (= e!236631 (= (apply!302 lt!184260 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!390638 () Bool)

(assert (=> b!390638 (= e!236632 e!236626)))

(assert (=> b!390638 (= c!54146 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!390639 () Bool)

(assert (=> b!390639 (= e!236632 (+!1019 call!27574 (tuple2!6485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun bm!27572 () Bool)

(assert (=> bm!27572 (= call!27575 call!27570)))

(declare-fun b!390640 () Bool)

(assert (=> b!390640 (= e!236620 e!236622)))

(declare-fun res!223596 () Bool)

(assert (=> b!390640 (=> (not res!223596) (not e!236622))))

(assert (=> b!390640 (= res!223596 (contains!2457 lt!184260 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!390640 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(declare-fun b!390641 () Bool)

(assert (=> b!390641 (= e!236621 (not call!27576))))

(declare-fun b!390642 () Bool)

(assert (=> b!390642 (= e!236630 (validKeyInArray!0 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390643 () Bool)

(declare-fun c!54145 () Bool)

(assert (=> b!390643 (= c!54145 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!390643 (= e!236626 e!236623)))

(declare-fun bm!27573 () Bool)

(assert (=> bm!27573 (= call!27573 (getCurrentListMapNoExtraKeys!950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and d!72893 c!54148) b!390639))

(assert (= (and d!72893 (not c!54148)) b!390638))

(assert (= (and b!390638 c!54146) b!390633))

(assert (= (and b!390638 (not c!54146)) b!390643))

(assert (= (and b!390643 c!54145) b!390627))

(assert (= (and b!390643 (not c!54145)) b!390631))

(assert (= (or b!390627 b!390631) bm!27572))

(assert (= (or b!390633 bm!27572) bm!27567))

(assert (= (or b!390633 b!390627) bm!27570))

(assert (= (or b!390639 bm!27567) bm!27573))

(assert (= (or b!390639 bm!27570) bm!27571))

(assert (= (and d!72893 res!223598) b!390635))

(assert (= (and d!72893 c!54149) b!390629))

(assert (= (and d!72893 (not c!54149)) b!390630))

(assert (= (and d!72893 res!223595) b!390636))

(assert (= (and b!390636 res!223599) b!390642))

(assert (= (and b!390636 (not res!223592)) b!390640))

(assert (= (and b!390640 res!223596) b!390634))

(assert (= (and b!390636 res!223594) b!390624))

(assert (= (and b!390624 c!54150) b!390626))

(assert (= (and b!390624 (not c!54150)) b!390632))

(assert (= (and b!390626 res!223593) b!390637))

(assert (= (or b!390626 b!390632) bm!27568))

(assert (= (and b!390624 res!223597) b!390628))

(assert (= (and b!390628 c!54147) b!390623))

(assert (= (and b!390628 (not c!54147)) b!390641))

(assert (= (and b!390623 res!223600) b!390625))

(assert (= (or b!390623 b!390641) bm!27569))

(declare-fun b_lambda!8687 () Bool)

(assert (=> (not b_lambda!8687) (not b!390634)))

(assert (=> b!390634 t!11539))

(declare-fun b_and!16295 () Bool)

(assert (= b_and!16293 (and (=> t!11539 result!5745) b_and!16295)))

(declare-fun m!387011 () Bool)

(assert (=> b!390637 m!387011))

(assert (=> b!390640 m!386885))

(assert (=> b!390640 m!386885))

(declare-fun m!387013 () Bool)

(assert (=> b!390640 m!387013))

(assert (=> b!390634 m!386885))

(assert (=> b!390634 m!386885))

(declare-fun m!387015 () Bool)

(assert (=> b!390634 m!387015))

(assert (=> b!390634 m!386901))

(assert (=> b!390634 m!386897))

(assert (=> b!390634 m!386903))

(assert (=> b!390634 m!386901))

(assert (=> b!390634 m!386897))

(declare-fun m!387017 () Bool)

(assert (=> bm!27569 m!387017))

(declare-fun m!387019 () Bool)

(assert (=> b!390639 m!387019))

(declare-fun m!387021 () Bool)

(assert (=> bm!27571 m!387021))

(assert (=> bm!27573 m!386811))

(assert (=> b!390629 m!386811))

(declare-fun m!387023 () Bool)

(assert (=> b!390629 m!387023))

(declare-fun m!387025 () Bool)

(assert (=> b!390629 m!387025))

(declare-fun m!387027 () Bool)

(assert (=> b!390629 m!387027))

(declare-fun m!387029 () Bool)

(assert (=> b!390629 m!387029))

(declare-fun m!387031 () Bool)

(assert (=> b!390629 m!387031))

(declare-fun m!387033 () Bool)

(assert (=> b!390629 m!387033))

(assert (=> b!390629 m!387031))

(declare-fun m!387035 () Bool)

(assert (=> b!390629 m!387035))

(declare-fun m!387037 () Bool)

(assert (=> b!390629 m!387037))

(declare-fun m!387039 () Bool)

(assert (=> b!390629 m!387039))

(assert (=> b!390629 m!386885))

(declare-fun m!387041 () Bool)

(assert (=> b!390629 m!387041))

(assert (=> b!390629 m!387037))

(assert (=> b!390629 m!387025))

(declare-fun m!387043 () Bool)

(assert (=> b!390629 m!387043))

(declare-fun m!387045 () Bool)

(assert (=> b!390629 m!387045))

(declare-fun m!387047 () Bool)

(assert (=> b!390629 m!387047))

(declare-fun m!387049 () Bool)

(assert (=> b!390629 m!387049))

(declare-fun m!387051 () Bool)

(assert (=> b!390629 m!387051))

(assert (=> b!390629 m!387049))

(assert (=> b!390642 m!386885))

(assert (=> b!390642 m!386885))

(assert (=> b!390642 m!386891))

(assert (=> d!72893 m!386825))

(declare-fun m!387053 () Bool)

(assert (=> bm!27568 m!387053))

(assert (=> b!390635 m!386885))

(assert (=> b!390635 m!386885))

(assert (=> b!390635 m!386891))

(declare-fun m!387055 () Bool)

(assert (=> b!390625 m!387055))

(assert (=> b!390425 d!72893))

(declare-fun d!72895 () Bool)

(declare-fun e!236633 () Bool)

(assert (=> d!72895 e!236633))

(declare-fun res!223602 () Bool)

(assert (=> d!72895 (=> (not res!223602) (not e!236633))))

(declare-fun lt!184268 () ListLongMap!5411)

(assert (=> d!72895 (= res!223602 (contains!2457 lt!184268 (_1!3252 lt!184105)))))

(declare-fun lt!184270 () List!6366)

(assert (=> d!72895 (= lt!184268 (ListLongMap!5412 lt!184270))))

(declare-fun lt!184269 () Unit!11929)

(declare-fun lt!184267 () Unit!11929)

(assert (=> d!72895 (= lt!184269 lt!184267)))

(assert (=> d!72895 (= (getValueByKey!359 lt!184270 (_1!3252 lt!184105)) (Some!364 (_2!3252 lt!184105)))))

(assert (=> d!72895 (= lt!184267 (lemmaContainsTupThenGetReturnValue!183 lt!184270 (_1!3252 lt!184105) (_2!3252 lt!184105)))))

(assert (=> d!72895 (= lt!184270 (insertStrictlySorted!185 (toList!2721 lt!184100) (_1!3252 lt!184105) (_2!3252 lt!184105)))))

(assert (=> d!72895 (= (+!1019 lt!184100 lt!184105) lt!184268)))

(declare-fun b!390644 () Bool)

(declare-fun res!223601 () Bool)

(assert (=> b!390644 (=> (not res!223601) (not e!236633))))

(assert (=> b!390644 (= res!223601 (= (getValueByKey!359 (toList!2721 lt!184268) (_1!3252 lt!184105)) (Some!364 (_2!3252 lt!184105))))))

(declare-fun b!390645 () Bool)

(assert (=> b!390645 (= e!236633 (contains!2458 (toList!2721 lt!184268) lt!184105))))

(assert (= (and d!72895 res!223602) b!390644))

(assert (= (and b!390644 res!223601) b!390645))

(declare-fun m!387057 () Bool)

(assert (=> d!72895 m!387057))

(declare-fun m!387059 () Bool)

(assert (=> d!72895 m!387059))

(declare-fun m!387061 () Bool)

(assert (=> d!72895 m!387061))

(declare-fun m!387063 () Bool)

(assert (=> d!72895 m!387063))

(declare-fun m!387065 () Bool)

(assert (=> b!390644 m!387065))

(declare-fun m!387067 () Bool)

(assert (=> b!390645 m!387067))

(assert (=> b!390427 d!72895))

(declare-fun d!72897 () Bool)

(declare-fun e!236634 () Bool)

(assert (=> d!72897 e!236634))

(declare-fun res!223604 () Bool)

(assert (=> d!72897 (=> (not res!223604) (not e!236634))))

(declare-fun lt!184272 () ListLongMap!5411)

(assert (=> d!72897 (= res!223604 (contains!2457 lt!184272 (_1!3252 lt!184105)))))

(declare-fun lt!184274 () List!6366)

(assert (=> d!72897 (= lt!184272 (ListLongMap!5412 lt!184274))))

(declare-fun lt!184273 () Unit!11929)

(declare-fun lt!184271 () Unit!11929)

(assert (=> d!72897 (= lt!184273 lt!184271)))

(assert (=> d!72897 (= (getValueByKey!359 lt!184274 (_1!3252 lt!184105)) (Some!364 (_2!3252 lt!184105)))))

(assert (=> d!72897 (= lt!184271 (lemmaContainsTupThenGetReturnValue!183 lt!184274 (_1!3252 lt!184105) (_2!3252 lt!184105)))))

(assert (=> d!72897 (= lt!184274 (insertStrictlySorted!185 (toList!2721 lt!184104) (_1!3252 lt!184105) (_2!3252 lt!184105)))))

(assert (=> d!72897 (= (+!1019 lt!184104 lt!184105) lt!184272)))

(declare-fun b!390646 () Bool)

(declare-fun res!223603 () Bool)

(assert (=> b!390646 (=> (not res!223603) (not e!236634))))

(assert (=> b!390646 (= res!223603 (= (getValueByKey!359 (toList!2721 lt!184272) (_1!3252 lt!184105)) (Some!364 (_2!3252 lt!184105))))))

(declare-fun b!390647 () Bool)

(assert (=> b!390647 (= e!236634 (contains!2458 (toList!2721 lt!184272) lt!184105))))

(assert (= (and d!72897 res!223604) b!390646))

(assert (= (and b!390646 res!223603) b!390647))

(declare-fun m!387069 () Bool)

(assert (=> d!72897 m!387069))

(declare-fun m!387071 () Bool)

(assert (=> d!72897 m!387071))

(declare-fun m!387073 () Bool)

(assert (=> d!72897 m!387073))

(declare-fun m!387075 () Bool)

(assert (=> d!72897 m!387075))

(declare-fun m!387077 () Bool)

(assert (=> b!390646 m!387077))

(declare-fun m!387079 () Bool)

(assert (=> b!390647 m!387079))

(assert (=> b!390427 d!72897))

(declare-fun d!72899 () Bool)

(declare-fun res!223607 () Bool)

(declare-fun e!236636 () Bool)

(assert (=> d!72899 (=> res!223607 e!236636)))

(assert (=> d!72899 (= res!223607 (bvsge #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(assert (=> d!72899 (= (arrayNoDuplicates!0 lt!184108 #b00000000000000000000000000000000 Nil!6364) e!236636)))

(declare-fun bm!27574 () Bool)

(declare-fun call!27577 () Bool)

(declare-fun c!54151 () Bool)

(assert (=> bm!27574 (= call!27577 (arrayNoDuplicates!0 lt!184108 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54151 (Cons!6363 (select (arr!11032 lt!184108) #b00000000000000000000000000000000) Nil!6364) Nil!6364)))))

(declare-fun b!390648 () Bool)

(declare-fun e!236637 () Bool)

(assert (=> b!390648 (= e!236637 call!27577)))

(declare-fun b!390649 () Bool)

(declare-fun e!236635 () Bool)

(assert (=> b!390649 (= e!236635 (contains!2456 Nil!6364 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(declare-fun b!390650 () Bool)

(declare-fun e!236638 () Bool)

(assert (=> b!390650 (= e!236636 e!236638)))

(declare-fun res!223606 () Bool)

(assert (=> b!390650 (=> (not res!223606) (not e!236638))))

(assert (=> b!390650 (= res!223606 (not e!236635))))

(declare-fun res!223605 () Bool)

(assert (=> b!390650 (=> (not res!223605) (not e!236635))))

(assert (=> b!390650 (= res!223605 (validKeyInArray!0 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(declare-fun b!390651 () Bool)

(assert (=> b!390651 (= e!236637 call!27577)))

(declare-fun b!390652 () Bool)

(assert (=> b!390652 (= e!236638 e!236637)))

(assert (=> b!390652 (= c!54151 (validKeyInArray!0 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(assert (= (and d!72899 (not res!223607)) b!390650))

(assert (= (and b!390650 res!223605) b!390649))

(assert (= (and b!390650 res!223606) b!390652))

(assert (= (and b!390652 c!54151) b!390651))

(assert (= (and b!390652 (not c!54151)) b!390648))

(assert (= (or b!390651 b!390648) bm!27574))

(assert (=> bm!27574 m!386939))

(declare-fun m!387081 () Bool)

(assert (=> bm!27574 m!387081))

(assert (=> b!390649 m!386939))

(assert (=> b!390649 m!386939))

(declare-fun m!387083 () Bool)

(assert (=> b!390649 m!387083))

(assert (=> b!390650 m!386939))

(assert (=> b!390650 m!386939))

(assert (=> b!390650 m!386985))

(assert (=> b!390652 m!386939))

(assert (=> b!390652 m!386939))

(assert (=> b!390652 m!386985))

(assert (=> b!390436 d!72899))

(declare-fun b!390661 () Bool)

(declare-fun e!236646 () Bool)

(declare-fun e!236645 () Bool)

(assert (=> b!390661 (= e!236646 e!236645)))

(declare-fun c!54154 () Bool)

(assert (=> b!390661 (= c!54154 (validKeyInArray!0 (select (arr!11032 lt!184108) #b00000000000000000000000000000000)))))

(declare-fun b!390662 () Bool)

(declare-fun e!236647 () Bool)

(declare-fun call!27580 () Bool)

(assert (=> b!390662 (= e!236647 call!27580)))

(declare-fun d!72901 () Bool)

(declare-fun res!223612 () Bool)

(assert (=> d!72901 (=> res!223612 e!236646)))

(assert (=> d!72901 (= res!223612 (bvsge #b00000000000000000000000000000000 (size!11384 lt!184108)))))

(assert (=> d!72901 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184108 mask!970) e!236646)))

(declare-fun b!390663 () Bool)

(assert (=> b!390663 (= e!236645 call!27580)))

(declare-fun bm!27577 () Bool)

(assert (=> bm!27577 (= call!27580 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!184108 mask!970))))

(declare-fun b!390664 () Bool)

(assert (=> b!390664 (= e!236645 e!236647)))

(declare-fun lt!184281 () (_ BitVec 64))

(assert (=> b!390664 (= lt!184281 (select (arr!11032 lt!184108) #b00000000000000000000000000000000))))

(declare-fun lt!184282 () Unit!11929)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23143 (_ BitVec 64) (_ BitVec 32)) Unit!11929)

(assert (=> b!390664 (= lt!184282 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!184108 lt!184281 #b00000000000000000000000000000000))))

(assert (=> b!390664 (arrayContainsKey!0 lt!184108 lt!184281 #b00000000000000000000000000000000)))

(declare-fun lt!184283 () Unit!11929)

(assert (=> b!390664 (= lt!184283 lt!184282)))

(declare-fun res!223613 () Bool)

(declare-datatypes ((SeekEntryResult!3501 0))(
  ( (MissingZero!3501 (index!16183 (_ BitVec 32))) (Found!3501 (index!16184 (_ BitVec 32))) (Intermediate!3501 (undefined!4313 Bool) (index!16185 (_ BitVec 32)) (x!38296 (_ BitVec 32))) (Undefined!3501) (MissingVacant!3501 (index!16186 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23143 (_ BitVec 32)) SeekEntryResult!3501)

(assert (=> b!390664 (= res!223613 (= (seekEntryOrOpen!0 (select (arr!11032 lt!184108) #b00000000000000000000000000000000) lt!184108 mask!970) (Found!3501 #b00000000000000000000000000000000)))))

(assert (=> b!390664 (=> (not res!223613) (not e!236647))))

(assert (= (and d!72901 (not res!223612)) b!390661))

(assert (= (and b!390661 c!54154) b!390664))

(assert (= (and b!390661 (not c!54154)) b!390663))

(assert (= (and b!390664 res!223613) b!390662))

(assert (= (or b!390662 b!390663) bm!27577))

(assert (=> b!390661 m!386939))

(assert (=> b!390661 m!386939))

(assert (=> b!390661 m!386985))

(declare-fun m!387085 () Bool)

(assert (=> bm!27577 m!387085))

(assert (=> b!390664 m!386939))

(declare-fun m!387087 () Bool)

(assert (=> b!390664 m!387087))

(declare-fun m!387089 () Bool)

(assert (=> b!390664 m!387089))

(assert (=> b!390664 m!386939))

(declare-fun m!387091 () Bool)

(assert (=> b!390664 m!387091))

(assert (=> b!390435 d!72901))

(declare-fun b!390665 () Bool)

(declare-fun e!236649 () Bool)

(declare-fun e!236648 () Bool)

(assert (=> b!390665 (= e!236649 e!236648)))

(declare-fun c!54155 () Bool)

(assert (=> b!390665 (= c!54155 (validKeyInArray!0 (select (arr!11032 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390666 () Bool)

(declare-fun e!236650 () Bool)

(declare-fun call!27581 () Bool)

(assert (=> b!390666 (= e!236650 call!27581)))

(declare-fun d!72903 () Bool)

(declare-fun res!223614 () Bool)

(assert (=> d!72903 (=> res!223614 e!236649)))

(assert (=> d!72903 (= res!223614 (bvsge #b00000000000000000000000000000000 (size!11384 _keys!658)))))

(assert (=> d!72903 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!236649)))

(declare-fun b!390667 () Bool)

(assert (=> b!390667 (= e!236648 call!27581)))

(declare-fun bm!27578 () Bool)

(assert (=> bm!27578 (= call!27581 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!390668 () Bool)

(assert (=> b!390668 (= e!236648 e!236650)))

(declare-fun lt!184284 () (_ BitVec 64))

(assert (=> b!390668 (= lt!184284 (select (arr!11032 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184285 () Unit!11929)

(assert (=> b!390668 (= lt!184285 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!184284 #b00000000000000000000000000000000))))

(assert (=> b!390668 (arrayContainsKey!0 _keys!658 lt!184284 #b00000000000000000000000000000000)))

(declare-fun lt!184286 () Unit!11929)

(assert (=> b!390668 (= lt!184286 lt!184285)))

(declare-fun res!223615 () Bool)

(assert (=> b!390668 (= res!223615 (= (seekEntryOrOpen!0 (select (arr!11032 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3501 #b00000000000000000000000000000000)))))

(assert (=> b!390668 (=> (not res!223615) (not e!236650))))

(assert (= (and d!72903 (not res!223614)) b!390665))

(assert (= (and b!390665 c!54155) b!390668))

(assert (= (and b!390665 (not c!54155)) b!390667))

(assert (= (and b!390668 res!223615) b!390666))

(assert (= (or b!390666 b!390667) bm!27578))

(assert (=> b!390665 m!386885))

(assert (=> b!390665 m!386885))

(assert (=> b!390665 m!386891))

(declare-fun m!387093 () Bool)

(assert (=> bm!27578 m!387093))

(assert (=> b!390668 m!386885))

(declare-fun m!387095 () Bool)

(assert (=> b!390668 m!387095))

(declare-fun m!387097 () Bool)

(assert (=> b!390668 m!387097))

(assert (=> b!390668 m!386885))

(declare-fun m!387099 () Bool)

(assert (=> b!390668 m!387099))

(assert (=> b!390437 d!72903))

(declare-fun d!72905 () Bool)

(assert (=> d!72905 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!390432 d!72905))

(declare-fun d!72907 () Bool)

(assert (=> d!72907 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!37978 d!72907))

(declare-fun d!72909 () Bool)

(assert (=> d!72909 (= (array_inv!8086 _values!506) (bvsge (size!11383 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!37978 d!72909))

(declare-fun d!72911 () Bool)

(assert (=> d!72911 (= (array_inv!8087 _keys!658) (bvsge (size!11384 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!37978 d!72911))

(declare-fun d!72913 () Bool)

(declare-fun res!223620 () Bool)

(declare-fun e!236655 () Bool)

(assert (=> d!72913 (=> res!223620 e!236655)))

(assert (=> d!72913 (= res!223620 (= (select (arr!11032 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72913 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!236655)))

(declare-fun b!390673 () Bool)

(declare-fun e!236656 () Bool)

(assert (=> b!390673 (= e!236655 e!236656)))

(declare-fun res!223621 () Bool)

(assert (=> b!390673 (=> (not res!223621) (not e!236656))))

(assert (=> b!390673 (= res!223621 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11384 _keys!658)))))

(declare-fun b!390674 () Bool)

(assert (=> b!390674 (= e!236656 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72913 (not res!223620)) b!390673))

(assert (= (and b!390673 res!223621) b!390674))

(assert (=> d!72913 m!386885))

(declare-fun m!387101 () Bool)

(assert (=> b!390674 m!387101))

(assert (=> b!390431 d!72913))

(declare-fun mapNonEmpty!16035 () Bool)

(declare-fun mapRes!16035 () Bool)

(declare-fun tp!31659 () Bool)

(declare-fun e!236661 () Bool)

(assert (=> mapNonEmpty!16035 (= mapRes!16035 (and tp!31659 e!236661))))

(declare-fun mapKey!16035 () (_ BitVec 32))

(declare-fun mapRest!16035 () (Array (_ BitVec 32) ValueCell!4473))

(declare-fun mapValue!16035 () ValueCell!4473)

(assert (=> mapNonEmpty!16035 (= mapRest!16029 (store mapRest!16035 mapKey!16035 mapValue!16035))))

(declare-fun condMapEmpty!16035 () Bool)

(declare-fun mapDefault!16035 () ValueCell!4473)

(assert (=> mapNonEmpty!16029 (= condMapEmpty!16035 (= mapRest!16029 ((as const (Array (_ BitVec 32) ValueCell!4473)) mapDefault!16035)))))

(declare-fun e!236662 () Bool)

(assert (=> mapNonEmpty!16029 (= tp!31650 (and e!236662 mapRes!16035))))

(declare-fun b!390681 () Bool)

(assert (=> b!390681 (= e!236661 tp_is_empty!9633)))

(declare-fun b!390682 () Bool)

(assert (=> b!390682 (= e!236662 tp_is_empty!9633)))

(declare-fun mapIsEmpty!16035 () Bool)

(assert (=> mapIsEmpty!16035 mapRes!16035))

(assert (= (and mapNonEmpty!16029 condMapEmpty!16035) mapIsEmpty!16035))

(assert (= (and mapNonEmpty!16029 (not condMapEmpty!16035)) mapNonEmpty!16035))

(assert (= (and mapNonEmpty!16035 ((_ is ValueCellFull!4473) mapValue!16035)) b!390681))

(assert (= (and mapNonEmpty!16029 ((_ is ValueCellFull!4473) mapDefault!16035)) b!390682))

(declare-fun m!387103 () Bool)

(assert (=> mapNonEmpty!16035 m!387103))

(declare-fun b_lambda!8689 () Bool)

(assert (= b_lambda!8681 (or (and start!37978 b_free!8961) b_lambda!8689)))

(declare-fun b_lambda!8691 () Bool)

(assert (= b_lambda!8679 (or (and start!37978 b_free!8961) b_lambda!8691)))

(declare-fun b_lambda!8693 () Bool)

(assert (= b_lambda!8685 (or (and start!37978 b_free!8961) b_lambda!8693)))

(declare-fun b_lambda!8695 () Bool)

(assert (= b_lambda!8677 (or (and start!37978 b_free!8961) b_lambda!8695)))

(declare-fun b_lambda!8697 () Bool)

(assert (= b_lambda!8683 (or (and start!37978 b_free!8961) b_lambda!8697)))

(declare-fun b_lambda!8699 () Bool)

(assert (= b_lambda!8687 (or (and start!37978 b_free!8961) b_lambda!8699)))

(check-sat (not b!390637) (not b!390528) (not b!390635) (not b!390522) (not bm!27574) (not b!390639) (not b!390494) (not bm!27568) (not b!390664) (not bm!27535) (not b!390521) (not b!390491) (not b_lambda!8689) (not b_lambda!8699) (not b!390646) (not b!390634) (not b!390606) (not b!390650) (not d!72891) (not b_lambda!8691) (not d!72895) (not b!390668) (not b!390530) (not b!390546) (not d!72885) (not b!390604) (not bm!27543) (not b!390537) (not bm!27573) (not b!390642) (not b!390647) tp_is_empty!9633 (not b!390640) (not b_lambda!8695) (not d!72889) (not b!390519) (not d!72893) (not b!390621) (not bm!27566) (not b!390611) (not b!390620) (not b!390538) (not b!390649) (not b!390607) (not bm!27577) (not d!72887) (not b!390614) (not b!390617) (not b!390529) (not b_lambda!8693) (not b_next!8961) (not bm!27571) (not d!72897) (not b!390644) (not b!390609) (not b!390622) (not mapNonEmpty!16035) (not b!390520) (not b!390661) (not bm!27538) (not b!390665) (not b_lambda!8697) (not b!390629) (not bm!27544) (not b!390613) (not b!390645) (not b!390652) (not b!390592) (not bm!27569) (not b!390492) (not b!390601) (not d!72883) (not b!390674) (not bm!27560) (not b!390525) (not bm!27561) (not b!390602) (not bm!27578) (not bm!27565) (not bm!27563) b_and!16295 (not b!390596) (not b!390625) (not b!390612))
(check-sat b_and!16295 (not b_next!8961))
