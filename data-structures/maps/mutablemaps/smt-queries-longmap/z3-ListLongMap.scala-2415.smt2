; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38206 () Bool)

(assert start!38206)

(declare-fun b_free!9057 () Bool)

(declare-fun b_next!9057 () Bool)

(assert (=> start!38206 (= b_free!9057 (not b_next!9057))))

(declare-fun tp!31956 () Bool)

(declare-fun b_and!16449 () Bool)

(assert (=> start!38206 (= tp!31956 b_and!16449)))

(declare-fun b!393757 () Bool)

(declare-fun e!238382 () Bool)

(declare-fun e!238381 () Bool)

(assert (=> b!393757 (= e!238382 (not e!238381))))

(declare-fun res!225722 () Bool)

(assert (=> b!393757 (=> res!225722 e!238381)))

(declare-fun lt!186523 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!393757 (= res!225722 (or (and (not lt!186523) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186523) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186523)))))

(assert (=> b!393757 (= lt!186523 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!14077 0))(
  ( (V!14078 (val!4909 Int)) )
))
(declare-datatypes ((ValueCell!4521 0))(
  ( (ValueCellFull!4521 (v!7146 V!14077)) (EmptyCell!4521) )
))
(declare-datatypes ((array!23341 0))(
  ( (array!23342 (arr!11125 (Array (_ BitVec 32) ValueCell!4521)) (size!11477 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23341)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6558 0))(
  ( (tuple2!6559 (_1!3289 (_ BitVec 64)) (_2!3289 V!14077)) )
))
(declare-datatypes ((List!6441 0))(
  ( (Nil!6438) (Cons!6437 (h!7293 tuple2!6558) (t!11621 List!6441)) )
))
(declare-datatypes ((ListLongMap!5485 0))(
  ( (ListLongMap!5486 (toList!2758 List!6441)) )
))
(declare-fun lt!186517 () ListLongMap!5485)

(declare-fun zeroValue!472 () V!14077)

(declare-datatypes ((array!23343 0))(
  ( (array!23344 (arr!11126 (Array (_ BitVec 32) (_ BitVec 64))) (size!11478 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23343)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!14077)

(declare-fun getCurrentListMap!2118 (array!23343 array!23341 (_ BitVec 32) (_ BitVec 32) V!14077 V!14077 (_ BitVec 32) Int) ListLongMap!5485)

(assert (=> b!393757 (= lt!186517 (getCurrentListMap!2118 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186518 () array!23341)

(declare-fun lt!186515 () ListLongMap!5485)

(declare-fun lt!186522 () array!23343)

(assert (=> b!393757 (= lt!186515 (getCurrentListMap!2118 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186519 () ListLongMap!5485)

(declare-fun lt!186514 () ListLongMap!5485)

(assert (=> b!393757 (and (= lt!186519 lt!186514) (= lt!186514 lt!186519))))

(declare-fun lt!186516 () ListLongMap!5485)

(declare-fun lt!186521 () tuple2!6558)

(declare-fun +!1056 (ListLongMap!5485 tuple2!6558) ListLongMap!5485)

(assert (=> b!393757 (= lt!186514 (+!1056 lt!186516 lt!186521))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!14077)

(assert (=> b!393757 (= lt!186521 (tuple2!6559 k0!778 v!373))))

(declare-datatypes ((Unit!12009 0))(
  ( (Unit!12010) )
))
(declare-fun lt!186520 () Unit!12009)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!275 (array!23343 array!23341 (_ BitVec 32) (_ BitVec 32) V!14077 V!14077 (_ BitVec 32) (_ BitVec 64) V!14077 (_ BitVec 32) Int) Unit!12009)

(assert (=> b!393757 (= lt!186520 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!275 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!980 (array!23343 array!23341 (_ BitVec 32) (_ BitVec 32) V!14077 V!14077 (_ BitVec 32) Int) ListLongMap!5485)

(assert (=> b!393757 (= lt!186519 (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393757 (= lt!186518 (array!23342 (store (arr!11125 _values!506) i!548 (ValueCellFull!4521 v!373)) (size!11477 _values!506)))))

(assert (=> b!393757 (= lt!186516 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393758 () Bool)

(declare-fun res!225719 () Bool)

(declare-fun e!238385 () Bool)

(assert (=> b!393758 (=> (not res!225719) (not e!238385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393758 (= res!225719 (validKeyInArray!0 k0!778))))

(declare-fun b!393759 () Bool)

(declare-fun res!225724 () Bool)

(assert (=> b!393759 (=> (not res!225724) (not e!238385))))

(assert (=> b!393759 (= res!225724 (or (= (select (arr!11126 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11126 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393760 () Bool)

(declare-fun res!225716 () Bool)

(assert (=> b!393760 (=> (not res!225716) (not e!238385))))

(assert (=> b!393760 (= res!225716 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11478 _keys!658))))))

(declare-fun mapIsEmpty!16191 () Bool)

(declare-fun mapRes!16191 () Bool)

(assert (=> mapIsEmpty!16191 mapRes!16191))

(declare-fun b!393761 () Bool)

(declare-fun res!225726 () Bool)

(assert (=> b!393761 (=> (not res!225726) (not e!238385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23343 (_ BitVec 32)) Bool)

(assert (=> b!393761 (= res!225726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393762 () Bool)

(declare-fun e!238383 () Bool)

(declare-fun tp_is_empty!9729 () Bool)

(assert (=> b!393762 (= e!238383 tp_is_empty!9729)))

(declare-fun b!393763 () Bool)

(assert (=> b!393763 (= e!238385 e!238382)))

(declare-fun res!225723 () Bool)

(assert (=> b!393763 (=> (not res!225723) (not e!238382))))

(assert (=> b!393763 (= res!225723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186522 mask!970))))

(assert (=> b!393763 (= lt!186522 (array!23344 (store (arr!11126 _keys!658) i!548 k0!778) (size!11478 _keys!658)))))

(declare-fun b!393764 () Bool)

(declare-fun e!238380 () Bool)

(assert (=> b!393764 (= e!238380 tp_is_empty!9729)))

(declare-fun b!393765 () Bool)

(declare-fun res!225718 () Bool)

(assert (=> b!393765 (=> (not res!225718) (not e!238385))))

(declare-datatypes ((List!6442 0))(
  ( (Nil!6439) (Cons!6438 (h!7294 (_ BitVec 64)) (t!11622 List!6442)) )
))
(declare-fun arrayNoDuplicates!0 (array!23343 (_ BitVec 32) List!6442) Bool)

(assert (=> b!393765 (= res!225718 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6439))))

(declare-fun res!225721 () Bool)

(assert (=> start!38206 (=> (not res!225721) (not e!238385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38206 (= res!225721 (validMask!0 mask!970))))

(assert (=> start!38206 e!238385))

(declare-fun e!238384 () Bool)

(declare-fun array_inv!8150 (array!23341) Bool)

(assert (=> start!38206 (and (array_inv!8150 _values!506) e!238384)))

(assert (=> start!38206 tp!31956))

(assert (=> start!38206 true))

(assert (=> start!38206 tp_is_empty!9729))

(declare-fun array_inv!8151 (array!23343) Bool)

(assert (=> start!38206 (array_inv!8151 _keys!658)))

(declare-fun b!393766 () Bool)

(declare-fun res!225725 () Bool)

(assert (=> b!393766 (=> (not res!225725) (not e!238382))))

(assert (=> b!393766 (= res!225725 (arrayNoDuplicates!0 lt!186522 #b00000000000000000000000000000000 Nil!6439))))

(declare-fun b!393767 () Bool)

(assert (=> b!393767 (= e!238384 (and e!238383 mapRes!16191))))

(declare-fun condMapEmpty!16191 () Bool)

(declare-fun mapDefault!16191 () ValueCell!4521)

(assert (=> b!393767 (= condMapEmpty!16191 (= (arr!11125 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4521)) mapDefault!16191)))))

(declare-fun b!393768 () Bool)

(assert (=> b!393768 (= e!238381 (= (+!1056 lt!186517 lt!186521) lt!186515))))

(assert (=> b!393768 (= lt!186515 lt!186519)))

(declare-fun mapNonEmpty!16191 () Bool)

(declare-fun tp!31955 () Bool)

(assert (=> mapNonEmpty!16191 (= mapRes!16191 (and tp!31955 e!238380))))

(declare-fun mapKey!16191 () (_ BitVec 32))

(declare-fun mapRest!16191 () (Array (_ BitVec 32) ValueCell!4521))

(declare-fun mapValue!16191 () ValueCell!4521)

(assert (=> mapNonEmpty!16191 (= (arr!11125 _values!506) (store mapRest!16191 mapKey!16191 mapValue!16191))))

(declare-fun b!393769 () Bool)

(declare-fun res!225720 () Bool)

(assert (=> b!393769 (=> (not res!225720) (not e!238385))))

(declare-fun arrayContainsKey!0 (array!23343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393769 (= res!225720 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!393770 () Bool)

(declare-fun res!225717 () Bool)

(assert (=> b!393770 (=> (not res!225717) (not e!238385))))

(assert (=> b!393770 (= res!225717 (and (= (size!11477 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11478 _keys!658) (size!11477 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!38206 res!225721) b!393770))

(assert (= (and b!393770 res!225717) b!393761))

(assert (= (and b!393761 res!225726) b!393765))

(assert (= (and b!393765 res!225718) b!393760))

(assert (= (and b!393760 res!225716) b!393758))

(assert (= (and b!393758 res!225719) b!393759))

(assert (= (and b!393759 res!225724) b!393769))

(assert (= (and b!393769 res!225720) b!393763))

(assert (= (and b!393763 res!225723) b!393766))

(assert (= (and b!393766 res!225725) b!393757))

(assert (= (and b!393757 (not res!225722)) b!393768))

(assert (= (and b!393767 condMapEmpty!16191) mapIsEmpty!16191))

(assert (= (and b!393767 (not condMapEmpty!16191)) mapNonEmpty!16191))

(get-info :version)

(assert (= (and mapNonEmpty!16191 ((_ is ValueCellFull!4521) mapValue!16191)) b!393764))

(assert (= (and b!393767 ((_ is ValueCellFull!4521) mapDefault!16191)) b!393762))

(assert (= start!38206 b!393767))

(declare-fun m!390237 () Bool)

(assert (=> b!393765 m!390237))

(declare-fun m!390239 () Bool)

(assert (=> b!393763 m!390239))

(declare-fun m!390241 () Bool)

(assert (=> b!393763 m!390241))

(declare-fun m!390243 () Bool)

(assert (=> b!393768 m!390243))

(declare-fun m!390245 () Bool)

(assert (=> start!38206 m!390245))

(declare-fun m!390247 () Bool)

(assert (=> start!38206 m!390247))

(declare-fun m!390249 () Bool)

(assert (=> start!38206 m!390249))

(declare-fun m!390251 () Bool)

(assert (=> b!393766 m!390251))

(declare-fun m!390253 () Bool)

(assert (=> b!393761 m!390253))

(declare-fun m!390255 () Bool)

(assert (=> b!393758 m!390255))

(declare-fun m!390257 () Bool)

(assert (=> b!393757 m!390257))

(declare-fun m!390259 () Bool)

(assert (=> b!393757 m!390259))

(declare-fun m!390261 () Bool)

(assert (=> b!393757 m!390261))

(declare-fun m!390263 () Bool)

(assert (=> b!393757 m!390263))

(declare-fun m!390265 () Bool)

(assert (=> b!393757 m!390265))

(declare-fun m!390267 () Bool)

(assert (=> b!393757 m!390267))

(declare-fun m!390269 () Bool)

(assert (=> b!393757 m!390269))

(declare-fun m!390271 () Bool)

(assert (=> b!393759 m!390271))

(declare-fun m!390273 () Bool)

(assert (=> mapNonEmpty!16191 m!390273))

(declare-fun m!390275 () Bool)

(assert (=> b!393769 m!390275))

(check-sat tp_is_empty!9729 (not b!393769) (not mapNonEmpty!16191) (not b!393763) (not b!393766) (not b!393758) (not b!393761) b_and!16449 (not b_next!9057) (not b!393765) (not b!393757) (not start!38206) (not b!393768))
(check-sat b_and!16449 (not b_next!9057))
(get-model)

(declare-fun b!393837 () Bool)

(declare-fun res!225769 () Bool)

(declare-fun e!238425 () Bool)

(assert (=> b!393837 (=> (not res!225769) (not e!238425))))

(declare-fun lt!186573 () ListLongMap!5485)

(declare-fun contains!2474 (ListLongMap!5485 (_ BitVec 64)) Bool)

(assert (=> b!393837 (= res!225769 (not (contains!2474 lt!186573 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!73117 () Bool)

(assert (=> d!73117 e!238425))

(declare-fun res!225770 () Bool)

(assert (=> d!73117 (=> (not res!225770) (not e!238425))))

(assert (=> d!73117 (= res!225770 (not (contains!2474 lt!186573 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!238421 () ListLongMap!5485)

(assert (=> d!73117 (= lt!186573 e!238421)))

(declare-fun c!54422 () Bool)

(assert (=> d!73117 (= c!54422 (bvsge #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(assert (=> d!73117 (validMask!0 mask!970)))

(assert (=> d!73117 (= (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!186573)))

(declare-fun b!393838 () Bool)

(declare-fun e!238427 () Bool)

(declare-fun isEmpty!559 (ListLongMap!5485) Bool)

(assert (=> b!393838 (= e!238427 (isEmpty!559 lt!186573))))

(declare-fun b!393839 () Bool)

(declare-fun lt!186570 () Unit!12009)

(declare-fun lt!186569 () Unit!12009)

(assert (=> b!393839 (= lt!186570 lt!186569)))

(declare-fun lt!186574 () (_ BitVec 64))

(declare-fun lt!186572 () V!14077)

(declare-fun lt!186568 () ListLongMap!5485)

(declare-fun lt!186571 () (_ BitVec 64))

(assert (=> b!393839 (not (contains!2474 (+!1056 lt!186568 (tuple2!6559 lt!186574 lt!186572)) lt!186571))))

(declare-fun addStillNotContains!143 (ListLongMap!5485 (_ BitVec 64) V!14077 (_ BitVec 64)) Unit!12009)

(assert (=> b!393839 (= lt!186569 (addStillNotContains!143 lt!186568 lt!186574 lt!186572 lt!186571))))

(assert (=> b!393839 (= lt!186571 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!5625 (ValueCell!4521 V!14077) V!14077)

(declare-fun dynLambda!646 (Int (_ BitVec 64)) V!14077)

(assert (=> b!393839 (= lt!186572 (get!5625 (select (arr!11125 _values!506) #b00000000000000000000000000000000) (dynLambda!646 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!393839 (= lt!186574 (select (arr!11126 _keys!658) #b00000000000000000000000000000000))))

(declare-fun call!27814 () ListLongMap!5485)

(assert (=> b!393839 (= lt!186568 call!27814)))

(declare-fun e!238426 () ListLongMap!5485)

(assert (=> b!393839 (= e!238426 (+!1056 call!27814 (tuple2!6559 (select (arr!11126 _keys!658) #b00000000000000000000000000000000) (get!5625 (select (arr!11125 _values!506) #b00000000000000000000000000000000) (dynLambda!646 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!27811 () Bool)

(assert (=> bm!27811 (= call!27814 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!393840 () Bool)

(assert (=> b!393840 (= e!238421 e!238426)))

(declare-fun c!54419 () Bool)

(assert (=> b!393840 (= c!54419 (validKeyInArray!0 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393841 () Bool)

(declare-fun e!238423 () Bool)

(assert (=> b!393841 (= e!238423 (validKeyInArray!0 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!393841 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!393842 () Bool)

(declare-fun e!238422 () Bool)

(assert (=> b!393842 (= e!238422 e!238427)))

(declare-fun c!54421 () Bool)

(assert (=> b!393842 (= c!54421 (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(declare-fun b!393843 () Bool)

(assert (=> b!393843 (= e!238421 (ListLongMap!5486 Nil!6438))))

(declare-fun b!393844 () Bool)

(assert (=> b!393844 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(assert (=> b!393844 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11477 _values!506)))))

(declare-fun e!238424 () Bool)

(declare-fun apply!308 (ListLongMap!5485 (_ BitVec 64)) V!14077)

(assert (=> b!393844 (= e!238424 (= (apply!308 lt!186573 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)) (get!5625 (select (arr!11125 _values!506) #b00000000000000000000000000000000) (dynLambda!646 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!393845 () Bool)

(assert (=> b!393845 (= e!238427 (= lt!186573 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!393846 () Bool)

(assert (=> b!393846 (= e!238425 e!238422)))

(declare-fun c!54420 () Bool)

(assert (=> b!393846 (= c!54420 e!238423)))

(declare-fun res!225771 () Bool)

(assert (=> b!393846 (=> (not res!225771) (not e!238423))))

(assert (=> b!393846 (= res!225771 (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(declare-fun b!393847 () Bool)

(assert (=> b!393847 (= e!238426 call!27814)))

(declare-fun b!393848 () Bool)

(assert (=> b!393848 (= e!238422 e!238424)))

(assert (=> b!393848 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(declare-fun res!225768 () Bool)

(assert (=> b!393848 (= res!225768 (contains!2474 lt!186573 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!393848 (=> (not res!225768) (not e!238424))))

(assert (= (and d!73117 c!54422) b!393843))

(assert (= (and d!73117 (not c!54422)) b!393840))

(assert (= (and b!393840 c!54419) b!393839))

(assert (= (and b!393840 (not c!54419)) b!393847))

(assert (= (or b!393839 b!393847) bm!27811))

(assert (= (and d!73117 res!225770) b!393837))

(assert (= (and b!393837 res!225769) b!393846))

(assert (= (and b!393846 res!225771) b!393841))

(assert (= (and b!393846 c!54420) b!393848))

(assert (= (and b!393846 (not c!54420)) b!393842))

(assert (= (and b!393848 res!225768) b!393844))

(assert (= (and b!393842 c!54421) b!393845))

(assert (= (and b!393842 (not c!54421)) b!393838))

(declare-fun b_lambda!8821 () Bool)

(assert (=> (not b_lambda!8821) (not b!393839)))

(declare-fun t!11626 () Bool)

(declare-fun tb!3139 () Bool)

(assert (=> (and start!38206 (= defaultEntry!514 defaultEntry!514) t!11626) tb!3139))

(declare-fun result!5781 () Bool)

(assert (=> tb!3139 (= result!5781 tp_is_empty!9729)))

(assert (=> b!393839 t!11626))

(declare-fun b_and!16453 () Bool)

(assert (= b_and!16449 (and (=> t!11626 result!5781) b_and!16453)))

(declare-fun b_lambda!8823 () Bool)

(assert (=> (not b_lambda!8823) (not b!393844)))

(assert (=> b!393844 t!11626))

(declare-fun b_and!16455 () Bool)

(assert (= b_and!16453 (and (=> t!11626 result!5781) b_and!16455)))

(declare-fun m!390317 () Bool)

(assert (=> b!393839 m!390317))

(declare-fun m!390319 () Bool)

(assert (=> b!393839 m!390319))

(declare-fun m!390321 () Bool)

(assert (=> b!393839 m!390321))

(declare-fun m!390323 () Bool)

(assert (=> b!393839 m!390323))

(assert (=> b!393839 m!390321))

(declare-fun m!390325 () Bool)

(assert (=> b!393839 m!390325))

(assert (=> b!393839 m!390319))

(assert (=> b!393839 m!390317))

(declare-fun m!390327 () Bool)

(assert (=> b!393839 m!390327))

(declare-fun m!390329 () Bool)

(assert (=> b!393839 m!390329))

(declare-fun m!390331 () Bool)

(assert (=> b!393839 m!390331))

(declare-fun m!390333 () Bool)

(assert (=> b!393845 m!390333))

(assert (=> b!393844 m!390331))

(assert (=> b!393844 m!390331))

(declare-fun m!390335 () Bool)

(assert (=> b!393844 m!390335))

(assert (=> b!393844 m!390317))

(assert (=> b!393844 m!390319))

(assert (=> b!393844 m!390319))

(assert (=> b!393844 m!390317))

(assert (=> b!393844 m!390327))

(declare-fun m!390337 () Bool)

(assert (=> b!393838 m!390337))

(declare-fun m!390339 () Bool)

(assert (=> b!393837 m!390339))

(assert (=> b!393841 m!390331))

(assert (=> b!393841 m!390331))

(declare-fun m!390341 () Bool)

(assert (=> b!393841 m!390341))

(assert (=> b!393848 m!390331))

(assert (=> b!393848 m!390331))

(declare-fun m!390343 () Bool)

(assert (=> b!393848 m!390343))

(assert (=> bm!27811 m!390333))

(assert (=> b!393840 m!390331))

(assert (=> b!393840 m!390331))

(assert (=> b!393840 m!390341))

(declare-fun m!390345 () Bool)

(assert (=> d!73117 m!390345))

(assert (=> d!73117 m!390245))

(assert (=> b!393757 d!73117))

(declare-fun b!393893 () Bool)

(declare-fun e!238464 () Bool)

(declare-fun e!238465 () Bool)

(assert (=> b!393893 (= e!238464 e!238465)))

(declare-fun res!225797 () Bool)

(declare-fun call!27830 () Bool)

(assert (=> b!393893 (= res!225797 call!27830)))

(assert (=> b!393893 (=> (not res!225797) (not e!238465))))

(declare-fun b!393894 () Bool)

(declare-fun e!238459 () Bool)

(assert (=> b!393894 (= e!238459 e!238464)))

(declare-fun c!54437 () Bool)

(assert (=> b!393894 (= c!54437 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27826 () Bool)

(declare-fun call!27829 () Bool)

(declare-fun lt!186625 () ListLongMap!5485)

(assert (=> bm!27826 (= call!27829 (contains!2474 lt!186625 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!238454 () Bool)

(declare-fun b!393895 () Bool)

(assert (=> b!393895 (= e!238454 (= (apply!308 lt!186625 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)) (get!5625 (select (arr!11125 _values!506) #b00000000000000000000000000000000) (dynLambda!646 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!393895 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11477 _values!506)))))

(assert (=> b!393895 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(declare-fun b!393896 () Bool)

(declare-fun e!238462 () Bool)

(assert (=> b!393896 (= e!238462 (validKeyInArray!0 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27827 () Bool)

(declare-fun call!27835 () ListLongMap!5485)

(assert (=> bm!27827 (= call!27835 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun bm!27828 () Bool)

(declare-fun call!27834 () ListLongMap!5485)

(declare-fun call!27832 () ListLongMap!5485)

(assert (=> bm!27828 (= call!27834 call!27832)))

(declare-fun b!393897 () Bool)

(declare-fun e!238461 () Bool)

(assert (=> b!393897 (= e!238461 (not call!27829))))

(declare-fun b!393898 () Bool)

(declare-fun e!238455 () ListLongMap!5485)

(assert (=> b!393898 (= e!238455 (+!1056 call!27832 (tuple2!6559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!393899 () Bool)

(declare-fun e!238457 () ListLongMap!5485)

(assert (=> b!393899 (= e!238457 call!27834)))

(declare-fun b!393900 () Bool)

(declare-fun c!54440 () Bool)

(assert (=> b!393900 (= c!54440 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!238456 () ListLongMap!5485)

(assert (=> b!393900 (= e!238456 e!238457)))

(declare-fun bm!27829 () Bool)

(declare-fun call!27831 () ListLongMap!5485)

(assert (=> bm!27829 (= call!27831 call!27835)))

(declare-fun call!27833 () ListLongMap!5485)

(declare-fun c!54439 () Bool)

(declare-fun c!54436 () Bool)

(declare-fun bm!27830 () Bool)

(assert (=> bm!27830 (= call!27832 (+!1056 (ite c!54439 call!27835 (ite c!54436 call!27831 call!27833)) (ite (or c!54439 c!54436) (tuple2!6559 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!393901 () Bool)

(declare-fun e!238458 () Bool)

(assert (=> b!393901 (= e!238461 e!238458)))

(declare-fun res!225793 () Bool)

(assert (=> b!393901 (= res!225793 call!27829)))

(assert (=> b!393901 (=> (not res!225793) (not e!238458))))

(declare-fun b!393902 () Bool)

(declare-fun e!238466 () Bool)

(assert (=> b!393902 (= e!238466 (validKeyInArray!0 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393903 () Bool)

(declare-fun e!238463 () Unit!12009)

(declare-fun Unit!12011 () Unit!12009)

(assert (=> b!393903 (= e!238463 Unit!12011)))

(declare-fun b!393904 () Bool)

(declare-fun lt!186624 () Unit!12009)

(assert (=> b!393904 (= e!238463 lt!186624)))

(declare-fun lt!186621 () ListLongMap!5485)

(assert (=> b!393904 (= lt!186621 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186629 () (_ BitVec 64))

(assert (=> b!393904 (= lt!186629 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186619 () (_ BitVec 64))

(assert (=> b!393904 (= lt!186619 (select (arr!11126 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!186632 () Unit!12009)

(declare-fun addStillContains!284 (ListLongMap!5485 (_ BitVec 64) V!14077 (_ BitVec 64)) Unit!12009)

(assert (=> b!393904 (= lt!186632 (addStillContains!284 lt!186621 lt!186629 zeroValue!472 lt!186619))))

(assert (=> b!393904 (contains!2474 (+!1056 lt!186621 (tuple2!6559 lt!186629 zeroValue!472)) lt!186619)))

(declare-fun lt!186623 () Unit!12009)

(assert (=> b!393904 (= lt!186623 lt!186632)))

(declare-fun lt!186635 () ListLongMap!5485)

(assert (=> b!393904 (= lt!186635 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186628 () (_ BitVec 64))

(assert (=> b!393904 (= lt!186628 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186620 () (_ BitVec 64))

(assert (=> b!393904 (= lt!186620 (select (arr!11126 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!186627 () Unit!12009)

(declare-fun addApplyDifferent!284 (ListLongMap!5485 (_ BitVec 64) V!14077 (_ BitVec 64)) Unit!12009)

(assert (=> b!393904 (= lt!186627 (addApplyDifferent!284 lt!186635 lt!186628 minValue!472 lt!186620))))

(assert (=> b!393904 (= (apply!308 (+!1056 lt!186635 (tuple2!6559 lt!186628 minValue!472)) lt!186620) (apply!308 lt!186635 lt!186620))))

(declare-fun lt!186631 () Unit!12009)

(assert (=> b!393904 (= lt!186631 lt!186627)))

(declare-fun lt!186626 () ListLongMap!5485)

(assert (=> b!393904 (= lt!186626 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186637 () (_ BitVec 64))

(assert (=> b!393904 (= lt!186637 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186634 () (_ BitVec 64))

(assert (=> b!393904 (= lt!186634 (select (arr!11126 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!186639 () Unit!12009)

(assert (=> b!393904 (= lt!186639 (addApplyDifferent!284 lt!186626 lt!186637 zeroValue!472 lt!186634))))

(assert (=> b!393904 (= (apply!308 (+!1056 lt!186626 (tuple2!6559 lt!186637 zeroValue!472)) lt!186634) (apply!308 lt!186626 lt!186634))))

(declare-fun lt!186622 () Unit!12009)

(assert (=> b!393904 (= lt!186622 lt!186639)))

(declare-fun lt!186640 () ListLongMap!5485)

(assert (=> b!393904 (= lt!186640 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186638 () (_ BitVec 64))

(assert (=> b!393904 (= lt!186638 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186630 () (_ BitVec 64))

(assert (=> b!393904 (= lt!186630 (select (arr!11126 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!393904 (= lt!186624 (addApplyDifferent!284 lt!186640 lt!186638 minValue!472 lt!186630))))

(assert (=> b!393904 (= (apply!308 (+!1056 lt!186640 (tuple2!6559 lt!186638 minValue!472)) lt!186630) (apply!308 lt!186640 lt!186630))))

(declare-fun b!393905 () Bool)

(assert (=> b!393905 (= e!238457 call!27833)))

(declare-fun b!393906 () Bool)

(assert (=> b!393906 (= e!238458 (= (apply!308 lt!186625 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun bm!27831 () Bool)

(assert (=> bm!27831 (= call!27830 (contains!2474 lt!186625 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!393907 () Bool)

(assert (=> b!393907 (= e!238465 (= (apply!308 lt!186625 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun d!73119 () Bool)

(assert (=> d!73119 e!238459))

(declare-fun res!225796 () Bool)

(assert (=> d!73119 (=> (not res!225796) (not e!238459))))

(assert (=> d!73119 (= res!225796 (or (bvsge #b00000000000000000000000000000000 (size!11478 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))))

(declare-fun lt!186633 () ListLongMap!5485)

(assert (=> d!73119 (= lt!186625 lt!186633)))

(declare-fun lt!186636 () Unit!12009)

(assert (=> d!73119 (= lt!186636 e!238463)))

(declare-fun c!54438 () Bool)

(assert (=> d!73119 (= c!54438 e!238466)))

(declare-fun res!225794 () Bool)

(assert (=> d!73119 (=> (not res!225794) (not e!238466))))

(assert (=> d!73119 (= res!225794 (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(assert (=> d!73119 (= lt!186633 e!238455)))

(assert (=> d!73119 (= c!54439 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!73119 (validMask!0 mask!970)))

(assert (=> d!73119 (= (getCurrentListMap!2118 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!186625)))

(declare-fun b!393908 () Bool)

(assert (=> b!393908 (= e!238455 e!238456)))

(assert (=> b!393908 (= c!54436 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!393909 () Bool)

(declare-fun res!225795 () Bool)

(assert (=> b!393909 (=> (not res!225795) (not e!238459))))

(declare-fun e!238460 () Bool)

(assert (=> b!393909 (= res!225795 e!238460)))

(declare-fun res!225791 () Bool)

(assert (=> b!393909 (=> res!225791 e!238460)))

(assert (=> b!393909 (= res!225791 (not e!238462))))

(declare-fun res!225792 () Bool)

(assert (=> b!393909 (=> (not res!225792) (not e!238462))))

(assert (=> b!393909 (= res!225792 (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(declare-fun b!393910 () Bool)

(assert (=> b!393910 (= e!238456 call!27834)))

(declare-fun b!393911 () Bool)

(declare-fun res!225798 () Bool)

(assert (=> b!393911 (=> (not res!225798) (not e!238459))))

(assert (=> b!393911 (= res!225798 e!238461)))

(declare-fun c!54435 () Bool)

(assert (=> b!393911 (= c!54435 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!393912 () Bool)

(assert (=> b!393912 (= e!238464 (not call!27830))))

(declare-fun bm!27832 () Bool)

(assert (=> bm!27832 (= call!27833 call!27831)))

(declare-fun b!393913 () Bool)

(assert (=> b!393913 (= e!238460 e!238454)))

(declare-fun res!225790 () Bool)

(assert (=> b!393913 (=> (not res!225790) (not e!238454))))

(assert (=> b!393913 (= res!225790 (contains!2474 lt!186625 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!393913 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(assert (= (and d!73119 c!54439) b!393898))

(assert (= (and d!73119 (not c!54439)) b!393908))

(assert (= (and b!393908 c!54436) b!393910))

(assert (= (and b!393908 (not c!54436)) b!393900))

(assert (= (and b!393900 c!54440) b!393899))

(assert (= (and b!393900 (not c!54440)) b!393905))

(assert (= (or b!393899 b!393905) bm!27832))

(assert (= (or b!393910 bm!27832) bm!27829))

(assert (= (or b!393910 b!393899) bm!27828))

(assert (= (or b!393898 bm!27829) bm!27827))

(assert (= (or b!393898 bm!27828) bm!27830))

(assert (= (and d!73119 res!225794) b!393902))

(assert (= (and d!73119 c!54438) b!393904))

(assert (= (and d!73119 (not c!54438)) b!393903))

(assert (= (and d!73119 res!225796) b!393909))

(assert (= (and b!393909 res!225792) b!393896))

(assert (= (and b!393909 (not res!225791)) b!393913))

(assert (= (and b!393913 res!225790) b!393895))

(assert (= (and b!393909 res!225795) b!393911))

(assert (= (and b!393911 c!54435) b!393901))

(assert (= (and b!393911 (not c!54435)) b!393897))

(assert (= (and b!393901 res!225793) b!393906))

(assert (= (or b!393901 b!393897) bm!27826))

(assert (= (and b!393911 res!225798) b!393894))

(assert (= (and b!393894 c!54437) b!393893))

(assert (= (and b!393894 (not c!54437)) b!393912))

(assert (= (and b!393893 res!225797) b!393907))

(assert (= (or b!393893 b!393912) bm!27831))

(declare-fun b_lambda!8825 () Bool)

(assert (=> (not b_lambda!8825) (not b!393895)))

(assert (=> b!393895 t!11626))

(declare-fun b_and!16457 () Bool)

(assert (= b_and!16455 (and (=> t!11626 result!5781) b_and!16457)))

(assert (=> bm!27827 m!390267))

(declare-fun m!390347 () Bool)

(assert (=> b!393898 m!390347))

(declare-fun m!390349 () Bool)

(assert (=> bm!27831 m!390349))

(declare-fun m!390351 () Bool)

(assert (=> b!393904 m!390351))

(declare-fun m!390353 () Bool)

(assert (=> b!393904 m!390353))

(assert (=> b!393904 m!390351))

(declare-fun m!390355 () Bool)

(assert (=> b!393904 m!390355))

(declare-fun m!390357 () Bool)

(assert (=> b!393904 m!390357))

(declare-fun m!390359 () Bool)

(assert (=> b!393904 m!390359))

(declare-fun m!390361 () Bool)

(assert (=> b!393904 m!390361))

(declare-fun m!390363 () Bool)

(assert (=> b!393904 m!390363))

(declare-fun m!390365 () Bool)

(assert (=> b!393904 m!390365))

(declare-fun m!390367 () Bool)

(assert (=> b!393904 m!390367))

(assert (=> b!393904 m!390365))

(declare-fun m!390369 () Bool)

(assert (=> b!393904 m!390369))

(assert (=> b!393904 m!390331))

(declare-fun m!390371 () Bool)

(assert (=> b!393904 m!390371))

(declare-fun m!390373 () Bool)

(assert (=> b!393904 m!390373))

(declare-fun m!390375 () Bool)

(assert (=> b!393904 m!390375))

(declare-fun m!390377 () Bool)

(assert (=> b!393904 m!390377))

(assert (=> b!393904 m!390267))

(assert (=> b!393904 m!390361))

(assert (=> b!393904 m!390357))

(declare-fun m!390379 () Bool)

(assert (=> b!393904 m!390379))

(assert (=> b!393895 m!390317))

(assert (=> b!393895 m!390331))

(assert (=> b!393895 m!390331))

(declare-fun m!390381 () Bool)

(assert (=> b!393895 m!390381))

(assert (=> b!393895 m!390319))

(assert (=> b!393895 m!390317))

(assert (=> b!393895 m!390327))

(assert (=> b!393895 m!390319))

(declare-fun m!390383 () Bool)

(assert (=> bm!27826 m!390383))

(assert (=> b!393902 m!390331))

(assert (=> b!393902 m!390331))

(assert (=> b!393902 m!390341))

(assert (=> b!393913 m!390331))

(assert (=> b!393913 m!390331))

(declare-fun m!390385 () Bool)

(assert (=> b!393913 m!390385))

(declare-fun m!390387 () Bool)

(assert (=> bm!27830 m!390387))

(assert (=> d!73119 m!390245))

(assert (=> b!393896 m!390331))

(assert (=> b!393896 m!390331))

(assert (=> b!393896 m!390341))

(declare-fun m!390389 () Bool)

(assert (=> b!393906 m!390389))

(declare-fun m!390391 () Bool)

(assert (=> b!393907 m!390391))

(assert (=> b!393757 d!73119))

(declare-fun call!27840 () ListLongMap!5485)

(declare-fun bm!27837 () Bool)

(assert (=> bm!27837 (= call!27840 (getCurrentListMapNoExtraKeys!980 (array!23344 (store (arr!11126 _keys!658) i!548 k0!778) (size!11478 _keys!658)) (array!23342 (store (arr!11125 _values!506) i!548 (ValueCellFull!4521 v!373)) (size!11477 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393921 () Bool)

(declare-fun e!238472 () Bool)

(declare-fun call!27841 () ListLongMap!5485)

(assert (=> b!393921 (= e!238472 (= call!27840 call!27841))))

(declare-fun bm!27838 () Bool)

(assert (=> bm!27838 (= call!27841 (getCurrentListMapNoExtraKeys!980 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393922 () Bool)

(declare-fun e!238471 () Bool)

(assert (=> b!393922 (= e!238471 e!238472)))

(declare-fun c!54443 () Bool)

(assert (=> b!393922 (= c!54443 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun d!73121 () Bool)

(assert (=> d!73121 e!238471))

(declare-fun res!225801 () Bool)

(assert (=> d!73121 (=> (not res!225801) (not e!238471))))

(assert (=> d!73121 (= res!225801 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11478 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11477 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11478 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11477 _values!506))))))))

(declare-fun lt!186643 () Unit!12009)

(declare-fun choose!1331 (array!23343 array!23341 (_ BitVec 32) (_ BitVec 32) V!14077 V!14077 (_ BitVec 32) (_ BitVec 64) V!14077 (_ BitVec 32) Int) Unit!12009)

(assert (=> d!73121 (= lt!186643 (choose!1331 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!73121 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(assert (=> d!73121 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!275 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!186643)))

(declare-fun b!393920 () Bool)

(assert (=> b!393920 (= e!238472 (= call!27840 (+!1056 call!27841 (tuple2!6559 k0!778 v!373))))))

(assert (= (and d!73121 res!225801) b!393922))

(assert (= (and b!393922 c!54443) b!393920))

(assert (= (and b!393922 (not c!54443)) b!393921))

(assert (= (or b!393920 b!393921) bm!27838))

(assert (= (or b!393920 b!393921) bm!27837))

(assert (=> bm!27837 m!390241))

(assert (=> bm!27837 m!390263))

(declare-fun m!390393 () Bool)

(assert (=> bm!27837 m!390393))

(assert (=> bm!27838 m!390267))

(declare-fun m!390395 () Bool)

(assert (=> d!73121 m!390395))

(declare-fun m!390397 () Bool)

(assert (=> b!393920 m!390397))

(assert (=> b!393757 d!73121))

(declare-fun b!393923 () Bool)

(declare-fun e!238483 () Bool)

(declare-fun e!238484 () Bool)

(assert (=> b!393923 (= e!238483 e!238484)))

(declare-fun res!225809 () Bool)

(declare-fun call!27843 () Bool)

(assert (=> b!393923 (= res!225809 call!27843)))

(assert (=> b!393923 (=> (not res!225809) (not e!238484))))

(declare-fun b!393924 () Bool)

(declare-fun e!238478 () Bool)

(assert (=> b!393924 (= e!238478 e!238483)))

(declare-fun c!54446 () Bool)

(assert (=> b!393924 (= c!54446 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27839 () Bool)

(declare-fun call!27842 () Bool)

(declare-fun lt!186650 () ListLongMap!5485)

(assert (=> bm!27839 (= call!27842 (contains!2474 lt!186650 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!393925 () Bool)

(declare-fun e!238473 () Bool)

(assert (=> b!393925 (= e!238473 (= (apply!308 lt!186650 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)) (get!5625 (select (arr!11125 lt!186518) #b00000000000000000000000000000000) (dynLambda!646 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!393925 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11477 lt!186518)))))

(assert (=> b!393925 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(declare-fun b!393926 () Bool)

(declare-fun e!238481 () Bool)

(assert (=> b!393926 (= e!238481 (validKeyInArray!0 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(declare-fun call!27848 () ListLongMap!5485)

(declare-fun bm!27840 () Bool)

(assert (=> bm!27840 (= call!27848 (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun bm!27841 () Bool)

(declare-fun call!27847 () ListLongMap!5485)

(declare-fun call!27845 () ListLongMap!5485)

(assert (=> bm!27841 (= call!27847 call!27845)))

(declare-fun b!393927 () Bool)

(declare-fun e!238480 () Bool)

(assert (=> b!393927 (= e!238480 (not call!27842))))

(declare-fun b!393928 () Bool)

(declare-fun e!238474 () ListLongMap!5485)

(assert (=> b!393928 (= e!238474 (+!1056 call!27845 (tuple2!6559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!393929 () Bool)

(declare-fun e!238476 () ListLongMap!5485)

(assert (=> b!393929 (= e!238476 call!27847)))

(declare-fun b!393930 () Bool)

(declare-fun c!54449 () Bool)

(assert (=> b!393930 (= c!54449 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!238475 () ListLongMap!5485)

(assert (=> b!393930 (= e!238475 e!238476)))

(declare-fun bm!27842 () Bool)

(declare-fun call!27844 () ListLongMap!5485)

(assert (=> bm!27842 (= call!27844 call!27848)))

(declare-fun bm!27843 () Bool)

(declare-fun c!54445 () Bool)

(declare-fun c!54448 () Bool)

(declare-fun call!27846 () ListLongMap!5485)

(assert (=> bm!27843 (= call!27845 (+!1056 (ite c!54448 call!27848 (ite c!54445 call!27844 call!27846)) (ite (or c!54448 c!54445) (tuple2!6559 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!393931 () Bool)

(declare-fun e!238477 () Bool)

(assert (=> b!393931 (= e!238480 e!238477)))

(declare-fun res!225805 () Bool)

(assert (=> b!393931 (= res!225805 call!27842)))

(assert (=> b!393931 (=> (not res!225805) (not e!238477))))

(declare-fun b!393932 () Bool)

(declare-fun e!238485 () Bool)

(assert (=> b!393932 (= e!238485 (validKeyInArray!0 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(declare-fun b!393933 () Bool)

(declare-fun e!238482 () Unit!12009)

(declare-fun Unit!12012 () Unit!12009)

(assert (=> b!393933 (= e!238482 Unit!12012)))

(declare-fun b!393934 () Bool)

(declare-fun lt!186649 () Unit!12009)

(assert (=> b!393934 (= e!238482 lt!186649)))

(declare-fun lt!186646 () ListLongMap!5485)

(assert (=> b!393934 (= lt!186646 (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186654 () (_ BitVec 64))

(assert (=> b!393934 (= lt!186654 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186644 () (_ BitVec 64))

(assert (=> b!393934 (= lt!186644 (select (arr!11126 lt!186522) #b00000000000000000000000000000000))))

(declare-fun lt!186657 () Unit!12009)

(assert (=> b!393934 (= lt!186657 (addStillContains!284 lt!186646 lt!186654 zeroValue!472 lt!186644))))

(assert (=> b!393934 (contains!2474 (+!1056 lt!186646 (tuple2!6559 lt!186654 zeroValue!472)) lt!186644)))

(declare-fun lt!186648 () Unit!12009)

(assert (=> b!393934 (= lt!186648 lt!186657)))

(declare-fun lt!186660 () ListLongMap!5485)

(assert (=> b!393934 (= lt!186660 (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186653 () (_ BitVec 64))

(assert (=> b!393934 (= lt!186653 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186645 () (_ BitVec 64))

(assert (=> b!393934 (= lt!186645 (select (arr!11126 lt!186522) #b00000000000000000000000000000000))))

(declare-fun lt!186652 () Unit!12009)

(assert (=> b!393934 (= lt!186652 (addApplyDifferent!284 lt!186660 lt!186653 minValue!472 lt!186645))))

(assert (=> b!393934 (= (apply!308 (+!1056 lt!186660 (tuple2!6559 lt!186653 minValue!472)) lt!186645) (apply!308 lt!186660 lt!186645))))

(declare-fun lt!186656 () Unit!12009)

(assert (=> b!393934 (= lt!186656 lt!186652)))

(declare-fun lt!186651 () ListLongMap!5485)

(assert (=> b!393934 (= lt!186651 (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186662 () (_ BitVec 64))

(assert (=> b!393934 (= lt!186662 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186659 () (_ BitVec 64))

(assert (=> b!393934 (= lt!186659 (select (arr!11126 lt!186522) #b00000000000000000000000000000000))))

(declare-fun lt!186664 () Unit!12009)

(assert (=> b!393934 (= lt!186664 (addApplyDifferent!284 lt!186651 lt!186662 zeroValue!472 lt!186659))))

(assert (=> b!393934 (= (apply!308 (+!1056 lt!186651 (tuple2!6559 lt!186662 zeroValue!472)) lt!186659) (apply!308 lt!186651 lt!186659))))

(declare-fun lt!186647 () Unit!12009)

(assert (=> b!393934 (= lt!186647 lt!186664)))

(declare-fun lt!186665 () ListLongMap!5485)

(assert (=> b!393934 (= lt!186665 (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186663 () (_ BitVec 64))

(assert (=> b!393934 (= lt!186663 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186655 () (_ BitVec 64))

(assert (=> b!393934 (= lt!186655 (select (arr!11126 lt!186522) #b00000000000000000000000000000000))))

(assert (=> b!393934 (= lt!186649 (addApplyDifferent!284 lt!186665 lt!186663 minValue!472 lt!186655))))

(assert (=> b!393934 (= (apply!308 (+!1056 lt!186665 (tuple2!6559 lt!186663 minValue!472)) lt!186655) (apply!308 lt!186665 lt!186655))))

(declare-fun b!393935 () Bool)

(assert (=> b!393935 (= e!238476 call!27846)))

(declare-fun b!393936 () Bool)

(assert (=> b!393936 (= e!238477 (= (apply!308 lt!186650 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun bm!27844 () Bool)

(assert (=> bm!27844 (= call!27843 (contains!2474 lt!186650 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!393937 () Bool)

(assert (=> b!393937 (= e!238484 (= (apply!308 lt!186650 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun d!73123 () Bool)

(assert (=> d!73123 e!238478))

(declare-fun res!225808 () Bool)

(assert (=> d!73123 (=> (not res!225808) (not e!238478))))

(assert (=> d!73123 (= res!225808 (or (bvsge #b00000000000000000000000000000000 (size!11478 lt!186522)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))))

(declare-fun lt!186658 () ListLongMap!5485)

(assert (=> d!73123 (= lt!186650 lt!186658)))

(declare-fun lt!186661 () Unit!12009)

(assert (=> d!73123 (= lt!186661 e!238482)))

(declare-fun c!54447 () Bool)

(assert (=> d!73123 (= c!54447 e!238485)))

(declare-fun res!225806 () Bool)

(assert (=> d!73123 (=> (not res!225806) (not e!238485))))

(assert (=> d!73123 (= res!225806 (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(assert (=> d!73123 (= lt!186658 e!238474)))

(assert (=> d!73123 (= c!54448 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!73123 (validMask!0 mask!970)))

(assert (=> d!73123 (= (getCurrentListMap!2118 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!186650)))

(declare-fun b!393938 () Bool)

(assert (=> b!393938 (= e!238474 e!238475)))

(assert (=> b!393938 (= c!54445 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!393939 () Bool)

(declare-fun res!225807 () Bool)

(assert (=> b!393939 (=> (not res!225807) (not e!238478))))

(declare-fun e!238479 () Bool)

(assert (=> b!393939 (= res!225807 e!238479)))

(declare-fun res!225803 () Bool)

(assert (=> b!393939 (=> res!225803 e!238479)))

(assert (=> b!393939 (= res!225803 (not e!238481))))

(declare-fun res!225804 () Bool)

(assert (=> b!393939 (=> (not res!225804) (not e!238481))))

(assert (=> b!393939 (= res!225804 (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(declare-fun b!393940 () Bool)

(assert (=> b!393940 (= e!238475 call!27847)))

(declare-fun b!393941 () Bool)

(declare-fun res!225810 () Bool)

(assert (=> b!393941 (=> (not res!225810) (not e!238478))))

(assert (=> b!393941 (= res!225810 e!238480)))

(declare-fun c!54444 () Bool)

(assert (=> b!393941 (= c!54444 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!393942 () Bool)

(assert (=> b!393942 (= e!238483 (not call!27843))))

(declare-fun bm!27845 () Bool)

(assert (=> bm!27845 (= call!27846 call!27844)))

(declare-fun b!393943 () Bool)

(assert (=> b!393943 (= e!238479 e!238473)))

(declare-fun res!225802 () Bool)

(assert (=> b!393943 (=> (not res!225802) (not e!238473))))

(assert (=> b!393943 (= res!225802 (contains!2474 lt!186650 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(assert (=> b!393943 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(assert (= (and d!73123 c!54448) b!393928))

(assert (= (and d!73123 (not c!54448)) b!393938))

(assert (= (and b!393938 c!54445) b!393940))

(assert (= (and b!393938 (not c!54445)) b!393930))

(assert (= (and b!393930 c!54449) b!393929))

(assert (= (and b!393930 (not c!54449)) b!393935))

(assert (= (or b!393929 b!393935) bm!27845))

(assert (= (or b!393940 bm!27845) bm!27842))

(assert (= (or b!393940 b!393929) bm!27841))

(assert (= (or b!393928 bm!27842) bm!27840))

(assert (= (or b!393928 bm!27841) bm!27843))

(assert (= (and d!73123 res!225806) b!393932))

(assert (= (and d!73123 c!54447) b!393934))

(assert (= (and d!73123 (not c!54447)) b!393933))

(assert (= (and d!73123 res!225808) b!393939))

(assert (= (and b!393939 res!225804) b!393926))

(assert (= (and b!393939 (not res!225803)) b!393943))

(assert (= (and b!393943 res!225802) b!393925))

(assert (= (and b!393939 res!225807) b!393941))

(assert (= (and b!393941 c!54444) b!393931))

(assert (= (and b!393941 (not c!54444)) b!393927))

(assert (= (and b!393931 res!225805) b!393936))

(assert (= (or b!393931 b!393927) bm!27839))

(assert (= (and b!393941 res!225810) b!393924))

(assert (= (and b!393924 c!54446) b!393923))

(assert (= (and b!393924 (not c!54446)) b!393942))

(assert (= (and b!393923 res!225809) b!393937))

(assert (= (or b!393923 b!393942) bm!27844))

(declare-fun b_lambda!8827 () Bool)

(assert (=> (not b_lambda!8827) (not b!393925)))

(assert (=> b!393925 t!11626))

(declare-fun b_and!16459 () Bool)

(assert (= b_and!16457 (and (=> t!11626 result!5781) b_and!16459)))

(assert (=> bm!27840 m!390259))

(declare-fun m!390399 () Bool)

(assert (=> b!393928 m!390399))

(declare-fun m!390401 () Bool)

(assert (=> bm!27844 m!390401))

(declare-fun m!390403 () Bool)

(assert (=> b!393934 m!390403))

(declare-fun m!390405 () Bool)

(assert (=> b!393934 m!390405))

(assert (=> b!393934 m!390403))

(declare-fun m!390407 () Bool)

(assert (=> b!393934 m!390407))

(declare-fun m!390409 () Bool)

(assert (=> b!393934 m!390409))

(declare-fun m!390411 () Bool)

(assert (=> b!393934 m!390411))

(declare-fun m!390413 () Bool)

(assert (=> b!393934 m!390413))

(declare-fun m!390415 () Bool)

(assert (=> b!393934 m!390415))

(declare-fun m!390417 () Bool)

(assert (=> b!393934 m!390417))

(declare-fun m!390419 () Bool)

(assert (=> b!393934 m!390419))

(assert (=> b!393934 m!390417))

(declare-fun m!390421 () Bool)

(assert (=> b!393934 m!390421))

(declare-fun m!390423 () Bool)

(assert (=> b!393934 m!390423))

(declare-fun m!390425 () Bool)

(assert (=> b!393934 m!390425))

(declare-fun m!390427 () Bool)

(assert (=> b!393934 m!390427))

(declare-fun m!390429 () Bool)

(assert (=> b!393934 m!390429))

(declare-fun m!390431 () Bool)

(assert (=> b!393934 m!390431))

(assert (=> b!393934 m!390259))

(assert (=> b!393934 m!390413))

(assert (=> b!393934 m!390409))

(declare-fun m!390433 () Bool)

(assert (=> b!393934 m!390433))

(assert (=> b!393925 m!390317))

(assert (=> b!393925 m!390423))

(assert (=> b!393925 m!390423))

(declare-fun m!390435 () Bool)

(assert (=> b!393925 m!390435))

(declare-fun m!390437 () Bool)

(assert (=> b!393925 m!390437))

(assert (=> b!393925 m!390317))

(declare-fun m!390439 () Bool)

(assert (=> b!393925 m!390439))

(assert (=> b!393925 m!390437))

(declare-fun m!390441 () Bool)

(assert (=> bm!27839 m!390441))

(assert (=> b!393932 m!390423))

(assert (=> b!393932 m!390423))

(declare-fun m!390443 () Bool)

(assert (=> b!393932 m!390443))

(assert (=> b!393943 m!390423))

(assert (=> b!393943 m!390423))

(declare-fun m!390445 () Bool)

(assert (=> b!393943 m!390445))

(declare-fun m!390447 () Bool)

(assert (=> bm!27843 m!390447))

(assert (=> d!73123 m!390245))

(assert (=> b!393926 m!390423))

(assert (=> b!393926 m!390423))

(assert (=> b!393926 m!390443))

(declare-fun m!390449 () Bool)

(assert (=> b!393936 m!390449))

(declare-fun m!390451 () Bool)

(assert (=> b!393937 m!390451))

(assert (=> b!393757 d!73123))

(declare-fun b!393944 () Bool)

(declare-fun res!225812 () Bool)

(declare-fun e!238490 () Bool)

(assert (=> b!393944 (=> (not res!225812) (not e!238490))))

(declare-fun lt!186671 () ListLongMap!5485)

(assert (=> b!393944 (= res!225812 (not (contains!2474 lt!186671 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!73125 () Bool)

(assert (=> d!73125 e!238490))

(declare-fun res!225813 () Bool)

(assert (=> d!73125 (=> (not res!225813) (not e!238490))))

(assert (=> d!73125 (= res!225813 (not (contains!2474 lt!186671 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!238486 () ListLongMap!5485)

(assert (=> d!73125 (= lt!186671 e!238486)))

(declare-fun c!54453 () Bool)

(assert (=> d!73125 (= c!54453 (bvsge #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(assert (=> d!73125 (validMask!0 mask!970)))

(assert (=> d!73125 (= (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!186671)))

(declare-fun b!393945 () Bool)

(declare-fun e!238492 () Bool)

(assert (=> b!393945 (= e!238492 (isEmpty!559 lt!186671))))

(declare-fun b!393946 () Bool)

(declare-fun lt!186668 () Unit!12009)

(declare-fun lt!186667 () Unit!12009)

(assert (=> b!393946 (= lt!186668 lt!186667)))

(declare-fun lt!186666 () ListLongMap!5485)

(declare-fun lt!186672 () (_ BitVec 64))

(declare-fun lt!186670 () V!14077)

(declare-fun lt!186669 () (_ BitVec 64))

(assert (=> b!393946 (not (contains!2474 (+!1056 lt!186666 (tuple2!6559 lt!186672 lt!186670)) lt!186669))))

(assert (=> b!393946 (= lt!186667 (addStillNotContains!143 lt!186666 lt!186672 lt!186670 lt!186669))))

(assert (=> b!393946 (= lt!186669 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!393946 (= lt!186670 (get!5625 (select (arr!11125 lt!186518) #b00000000000000000000000000000000) (dynLambda!646 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!393946 (= lt!186672 (select (arr!11126 lt!186522) #b00000000000000000000000000000000))))

(declare-fun call!27849 () ListLongMap!5485)

(assert (=> b!393946 (= lt!186666 call!27849)))

(declare-fun e!238491 () ListLongMap!5485)

(assert (=> b!393946 (= e!238491 (+!1056 call!27849 (tuple2!6559 (select (arr!11126 lt!186522) #b00000000000000000000000000000000) (get!5625 (select (arr!11125 lt!186518) #b00000000000000000000000000000000) (dynLambda!646 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!27846 () Bool)

(assert (=> bm!27846 (= call!27849 (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!393947 () Bool)

(assert (=> b!393947 (= e!238486 e!238491)))

(declare-fun c!54450 () Bool)

(assert (=> b!393947 (= c!54450 (validKeyInArray!0 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(declare-fun b!393948 () Bool)

(declare-fun e!238488 () Bool)

(assert (=> b!393948 (= e!238488 (validKeyInArray!0 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(assert (=> b!393948 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!393949 () Bool)

(declare-fun e!238487 () Bool)

(assert (=> b!393949 (= e!238487 e!238492)))

(declare-fun c!54452 () Bool)

(assert (=> b!393949 (= c!54452 (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(declare-fun b!393950 () Bool)

(assert (=> b!393950 (= e!238486 (ListLongMap!5486 Nil!6438))))

(declare-fun b!393951 () Bool)

(assert (=> b!393951 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(assert (=> b!393951 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11477 lt!186518)))))

(declare-fun e!238489 () Bool)

(assert (=> b!393951 (= e!238489 (= (apply!308 lt!186671 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)) (get!5625 (select (arr!11125 lt!186518) #b00000000000000000000000000000000) (dynLambda!646 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!393952 () Bool)

(assert (=> b!393952 (= e!238492 (= lt!186671 (getCurrentListMapNoExtraKeys!980 lt!186522 lt!186518 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!393953 () Bool)

(assert (=> b!393953 (= e!238490 e!238487)))

(declare-fun c!54451 () Bool)

(assert (=> b!393953 (= c!54451 e!238488)))

(declare-fun res!225814 () Bool)

(assert (=> b!393953 (=> (not res!225814) (not e!238488))))

(assert (=> b!393953 (= res!225814 (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(declare-fun b!393954 () Bool)

(assert (=> b!393954 (= e!238491 call!27849)))

(declare-fun b!393955 () Bool)

(assert (=> b!393955 (= e!238487 e!238489)))

(assert (=> b!393955 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(declare-fun res!225811 () Bool)

(assert (=> b!393955 (= res!225811 (contains!2474 lt!186671 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(assert (=> b!393955 (=> (not res!225811) (not e!238489))))

(assert (= (and d!73125 c!54453) b!393950))

(assert (= (and d!73125 (not c!54453)) b!393947))

(assert (= (and b!393947 c!54450) b!393946))

(assert (= (and b!393947 (not c!54450)) b!393954))

(assert (= (or b!393946 b!393954) bm!27846))

(assert (= (and d!73125 res!225813) b!393944))

(assert (= (and b!393944 res!225812) b!393953))

(assert (= (and b!393953 res!225814) b!393948))

(assert (= (and b!393953 c!54451) b!393955))

(assert (= (and b!393953 (not c!54451)) b!393949))

(assert (= (and b!393955 res!225811) b!393951))

(assert (= (and b!393949 c!54452) b!393952))

(assert (= (and b!393949 (not c!54452)) b!393945))

(declare-fun b_lambda!8829 () Bool)

(assert (=> (not b_lambda!8829) (not b!393946)))

(assert (=> b!393946 t!11626))

(declare-fun b_and!16461 () Bool)

(assert (= b_and!16459 (and (=> t!11626 result!5781) b_and!16461)))

(declare-fun b_lambda!8831 () Bool)

(assert (=> (not b_lambda!8831) (not b!393951)))

(assert (=> b!393951 t!11626))

(declare-fun b_and!16463 () Bool)

(assert (= b_and!16461 (and (=> t!11626 result!5781) b_and!16463)))

(assert (=> b!393946 m!390317))

(assert (=> b!393946 m!390437))

(declare-fun m!390453 () Bool)

(assert (=> b!393946 m!390453))

(declare-fun m!390455 () Bool)

(assert (=> b!393946 m!390455))

(assert (=> b!393946 m!390453))

(declare-fun m!390457 () Bool)

(assert (=> b!393946 m!390457))

(assert (=> b!393946 m!390437))

(assert (=> b!393946 m!390317))

(assert (=> b!393946 m!390439))

(declare-fun m!390459 () Bool)

(assert (=> b!393946 m!390459))

(assert (=> b!393946 m!390423))

(declare-fun m!390461 () Bool)

(assert (=> b!393952 m!390461))

(assert (=> b!393951 m!390423))

(assert (=> b!393951 m!390423))

(declare-fun m!390463 () Bool)

(assert (=> b!393951 m!390463))

(assert (=> b!393951 m!390317))

(assert (=> b!393951 m!390437))

(assert (=> b!393951 m!390437))

(assert (=> b!393951 m!390317))

(assert (=> b!393951 m!390439))

(declare-fun m!390465 () Bool)

(assert (=> b!393945 m!390465))

(declare-fun m!390467 () Bool)

(assert (=> b!393944 m!390467))

(assert (=> b!393948 m!390423))

(assert (=> b!393948 m!390423))

(assert (=> b!393948 m!390443))

(assert (=> b!393955 m!390423))

(assert (=> b!393955 m!390423))

(declare-fun m!390469 () Bool)

(assert (=> b!393955 m!390469))

(assert (=> bm!27846 m!390461))

(assert (=> b!393947 m!390423))

(assert (=> b!393947 m!390423))

(assert (=> b!393947 m!390443))

(declare-fun m!390471 () Bool)

(assert (=> d!73125 m!390471))

(assert (=> d!73125 m!390245))

(assert (=> b!393757 d!73125))

(declare-fun d!73127 () Bool)

(declare-fun e!238495 () Bool)

(assert (=> d!73127 e!238495))

(declare-fun res!225819 () Bool)

(assert (=> d!73127 (=> (not res!225819) (not e!238495))))

(declare-fun lt!186684 () ListLongMap!5485)

(assert (=> d!73127 (= res!225819 (contains!2474 lt!186684 (_1!3289 lt!186521)))))

(declare-fun lt!186681 () List!6441)

(assert (=> d!73127 (= lt!186684 (ListLongMap!5486 lt!186681))))

(declare-fun lt!186682 () Unit!12009)

(declare-fun lt!186683 () Unit!12009)

(assert (=> d!73127 (= lt!186682 lt!186683)))

(declare-datatypes ((Option!371 0))(
  ( (Some!370 (v!7151 V!14077)) (None!369) )
))
(declare-fun getValueByKey!365 (List!6441 (_ BitVec 64)) Option!371)

(assert (=> d!73127 (= (getValueByKey!365 lt!186681 (_1!3289 lt!186521)) (Some!370 (_2!3289 lt!186521)))))

(declare-fun lemmaContainsTupThenGetReturnValue!189 (List!6441 (_ BitVec 64) V!14077) Unit!12009)

(assert (=> d!73127 (= lt!186683 (lemmaContainsTupThenGetReturnValue!189 lt!186681 (_1!3289 lt!186521) (_2!3289 lt!186521)))))

(declare-fun insertStrictlySorted!191 (List!6441 (_ BitVec 64) V!14077) List!6441)

(assert (=> d!73127 (= lt!186681 (insertStrictlySorted!191 (toList!2758 lt!186516) (_1!3289 lt!186521) (_2!3289 lt!186521)))))

(assert (=> d!73127 (= (+!1056 lt!186516 lt!186521) lt!186684)))

(declare-fun b!393960 () Bool)

(declare-fun res!225820 () Bool)

(assert (=> b!393960 (=> (not res!225820) (not e!238495))))

(assert (=> b!393960 (= res!225820 (= (getValueByKey!365 (toList!2758 lt!186684) (_1!3289 lt!186521)) (Some!370 (_2!3289 lt!186521))))))

(declare-fun b!393961 () Bool)

(declare-fun contains!2475 (List!6441 tuple2!6558) Bool)

(assert (=> b!393961 (= e!238495 (contains!2475 (toList!2758 lt!186684) lt!186521))))

(assert (= (and d!73127 res!225819) b!393960))

(assert (= (and b!393960 res!225820) b!393961))

(declare-fun m!390473 () Bool)

(assert (=> d!73127 m!390473))

(declare-fun m!390475 () Bool)

(assert (=> d!73127 m!390475))

(declare-fun m!390477 () Bool)

(assert (=> d!73127 m!390477))

(declare-fun m!390479 () Bool)

(assert (=> d!73127 m!390479))

(declare-fun m!390481 () Bool)

(assert (=> b!393960 m!390481))

(declare-fun m!390483 () Bool)

(assert (=> b!393961 m!390483))

(assert (=> b!393757 d!73127))

(declare-fun b!393972 () Bool)

(declare-fun e!238504 () Bool)

(declare-fun e!238506 () Bool)

(assert (=> b!393972 (= e!238504 e!238506)))

(declare-fun c!54456 () Bool)

(assert (=> b!393972 (= c!54456 (validKeyInArray!0 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(declare-fun b!393973 () Bool)

(declare-fun e!238505 () Bool)

(declare-fun contains!2476 (List!6442 (_ BitVec 64)) Bool)

(assert (=> b!393973 (= e!238505 (contains!2476 Nil!6439 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(declare-fun b!393975 () Bool)

(declare-fun call!27852 () Bool)

(assert (=> b!393975 (= e!238506 call!27852)))

(declare-fun b!393976 () Bool)

(assert (=> b!393976 (= e!238506 call!27852)))

(declare-fun bm!27849 () Bool)

(assert (=> bm!27849 (= call!27852 (arrayNoDuplicates!0 lt!186522 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54456 (Cons!6438 (select (arr!11126 lt!186522) #b00000000000000000000000000000000) Nil!6439) Nil!6439)))))

(declare-fun b!393974 () Bool)

(declare-fun e!238507 () Bool)

(assert (=> b!393974 (= e!238507 e!238504)))

(declare-fun res!225827 () Bool)

(assert (=> b!393974 (=> (not res!225827) (not e!238504))))

(assert (=> b!393974 (= res!225827 (not e!238505))))

(declare-fun res!225828 () Bool)

(assert (=> b!393974 (=> (not res!225828) (not e!238505))))

(assert (=> b!393974 (= res!225828 (validKeyInArray!0 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(declare-fun d!73129 () Bool)

(declare-fun res!225829 () Bool)

(assert (=> d!73129 (=> res!225829 e!238507)))

(assert (=> d!73129 (= res!225829 (bvsge #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(assert (=> d!73129 (= (arrayNoDuplicates!0 lt!186522 #b00000000000000000000000000000000 Nil!6439) e!238507)))

(assert (= (and d!73129 (not res!225829)) b!393974))

(assert (= (and b!393974 res!225828) b!393973))

(assert (= (and b!393974 res!225827) b!393972))

(assert (= (and b!393972 c!54456) b!393976))

(assert (= (and b!393972 (not c!54456)) b!393975))

(assert (= (or b!393976 b!393975) bm!27849))

(assert (=> b!393972 m!390423))

(assert (=> b!393972 m!390423))

(assert (=> b!393972 m!390443))

(assert (=> b!393973 m!390423))

(assert (=> b!393973 m!390423))

(declare-fun m!390485 () Bool)

(assert (=> b!393973 m!390485))

(assert (=> bm!27849 m!390423))

(declare-fun m!390487 () Bool)

(assert (=> bm!27849 m!390487))

(assert (=> b!393974 m!390423))

(assert (=> b!393974 m!390423))

(assert (=> b!393974 m!390443))

(assert (=> b!393766 d!73129))

(declare-fun b!393985 () Bool)

(declare-fun e!238516 () Bool)

(declare-fun e!238514 () Bool)

(assert (=> b!393985 (= e!238516 e!238514)))

(declare-fun c!54459 () Bool)

(assert (=> b!393985 (= c!54459 (validKeyInArray!0 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27852 () Bool)

(declare-fun call!27855 () Bool)

(assert (=> bm!27852 (= call!27855 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun d!73131 () Bool)

(declare-fun res!225834 () Bool)

(assert (=> d!73131 (=> res!225834 e!238516)))

(assert (=> d!73131 (= res!225834 (bvsge #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(assert (=> d!73131 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!238516)))

(declare-fun b!393986 () Bool)

(declare-fun e!238515 () Bool)

(assert (=> b!393986 (= e!238515 call!27855)))

(declare-fun b!393987 () Bool)

(assert (=> b!393987 (= e!238514 call!27855)))

(declare-fun b!393988 () Bool)

(assert (=> b!393988 (= e!238514 e!238515)))

(declare-fun lt!186692 () (_ BitVec 64))

(assert (=> b!393988 (= lt!186692 (select (arr!11126 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!186691 () Unit!12009)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23343 (_ BitVec 64) (_ BitVec 32)) Unit!12009)

(assert (=> b!393988 (= lt!186691 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!186692 #b00000000000000000000000000000000))))

(assert (=> b!393988 (arrayContainsKey!0 _keys!658 lt!186692 #b00000000000000000000000000000000)))

(declare-fun lt!186693 () Unit!12009)

(assert (=> b!393988 (= lt!186693 lt!186691)))

(declare-fun res!225835 () Bool)

(declare-datatypes ((SeekEntryResult!3507 0))(
  ( (MissingZero!3507 (index!16207 (_ BitVec 32))) (Found!3507 (index!16208 (_ BitVec 32))) (Intermediate!3507 (undefined!4319 Bool) (index!16209 (_ BitVec 32)) (x!38496 (_ BitVec 32))) (Undefined!3507) (MissingVacant!3507 (index!16210 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23343 (_ BitVec 32)) SeekEntryResult!3507)

(assert (=> b!393988 (= res!225835 (= (seekEntryOrOpen!0 (select (arr!11126 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3507 #b00000000000000000000000000000000)))))

(assert (=> b!393988 (=> (not res!225835) (not e!238515))))

(assert (= (and d!73131 (not res!225834)) b!393985))

(assert (= (and b!393985 c!54459) b!393988))

(assert (= (and b!393985 (not c!54459)) b!393987))

(assert (= (and b!393988 res!225835) b!393986))

(assert (= (or b!393986 b!393987) bm!27852))

(assert (=> b!393985 m!390331))

(assert (=> b!393985 m!390331))

(assert (=> b!393985 m!390341))

(declare-fun m!390489 () Bool)

(assert (=> bm!27852 m!390489))

(assert (=> b!393988 m!390331))

(declare-fun m!390491 () Bool)

(assert (=> b!393988 m!390491))

(declare-fun m!390493 () Bool)

(assert (=> b!393988 m!390493))

(assert (=> b!393988 m!390331))

(declare-fun m!390495 () Bool)

(assert (=> b!393988 m!390495))

(assert (=> b!393761 d!73131))

(declare-fun d!73133 () Bool)

(declare-fun res!225840 () Bool)

(declare-fun e!238521 () Bool)

(assert (=> d!73133 (=> res!225840 e!238521)))

(assert (=> d!73133 (= res!225840 (= (select (arr!11126 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!73133 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!238521)))

(declare-fun b!393993 () Bool)

(declare-fun e!238522 () Bool)

(assert (=> b!393993 (= e!238521 e!238522)))

(declare-fun res!225841 () Bool)

(assert (=> b!393993 (=> (not res!225841) (not e!238522))))

(assert (=> b!393993 (= res!225841 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11478 _keys!658)))))

(declare-fun b!393994 () Bool)

(assert (=> b!393994 (= e!238522 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73133 (not res!225840)) b!393993))

(assert (= (and b!393993 res!225841) b!393994))

(assert (=> d!73133 m!390331))

(declare-fun m!390497 () Bool)

(assert (=> b!393994 m!390497))

(assert (=> b!393769 d!73133))

(declare-fun b!393995 () Bool)

(declare-fun e!238523 () Bool)

(declare-fun e!238525 () Bool)

(assert (=> b!393995 (= e!238523 e!238525)))

(declare-fun c!54460 () Bool)

(assert (=> b!393995 (= c!54460 (validKeyInArray!0 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393996 () Bool)

(declare-fun e!238524 () Bool)

(assert (=> b!393996 (= e!238524 (contains!2476 Nil!6439 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393998 () Bool)

(declare-fun call!27856 () Bool)

(assert (=> b!393998 (= e!238525 call!27856)))

(declare-fun b!393999 () Bool)

(assert (=> b!393999 (= e!238525 call!27856)))

(declare-fun bm!27853 () Bool)

(assert (=> bm!27853 (= call!27856 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54460 (Cons!6438 (select (arr!11126 _keys!658) #b00000000000000000000000000000000) Nil!6439) Nil!6439)))))

(declare-fun b!393997 () Bool)

(declare-fun e!238526 () Bool)

(assert (=> b!393997 (= e!238526 e!238523)))

(declare-fun res!225842 () Bool)

(assert (=> b!393997 (=> (not res!225842) (not e!238523))))

(assert (=> b!393997 (= res!225842 (not e!238524))))

(declare-fun res!225843 () Bool)

(assert (=> b!393997 (=> (not res!225843) (not e!238524))))

(assert (=> b!393997 (= res!225843 (validKeyInArray!0 (select (arr!11126 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!73135 () Bool)

(declare-fun res!225844 () Bool)

(assert (=> d!73135 (=> res!225844 e!238526)))

(assert (=> d!73135 (= res!225844 (bvsge #b00000000000000000000000000000000 (size!11478 _keys!658)))))

(assert (=> d!73135 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6439) e!238526)))

(assert (= (and d!73135 (not res!225844)) b!393997))

(assert (= (and b!393997 res!225843) b!393996))

(assert (= (and b!393997 res!225842) b!393995))

(assert (= (and b!393995 c!54460) b!393999))

(assert (= (and b!393995 (not c!54460)) b!393998))

(assert (= (or b!393999 b!393998) bm!27853))

(assert (=> b!393995 m!390331))

(assert (=> b!393995 m!390331))

(assert (=> b!393995 m!390341))

(assert (=> b!393996 m!390331))

(assert (=> b!393996 m!390331))

(declare-fun m!390499 () Bool)

(assert (=> b!393996 m!390499))

(assert (=> bm!27853 m!390331))

(declare-fun m!390501 () Bool)

(assert (=> bm!27853 m!390501))

(assert (=> b!393997 m!390331))

(assert (=> b!393997 m!390331))

(assert (=> b!393997 m!390341))

(assert (=> b!393765 d!73135))

(declare-fun d!73137 () Bool)

(declare-fun e!238527 () Bool)

(assert (=> d!73137 e!238527))

(declare-fun res!225845 () Bool)

(assert (=> d!73137 (=> (not res!225845) (not e!238527))))

(declare-fun lt!186697 () ListLongMap!5485)

(assert (=> d!73137 (= res!225845 (contains!2474 lt!186697 (_1!3289 lt!186521)))))

(declare-fun lt!186694 () List!6441)

(assert (=> d!73137 (= lt!186697 (ListLongMap!5486 lt!186694))))

(declare-fun lt!186695 () Unit!12009)

(declare-fun lt!186696 () Unit!12009)

(assert (=> d!73137 (= lt!186695 lt!186696)))

(assert (=> d!73137 (= (getValueByKey!365 lt!186694 (_1!3289 lt!186521)) (Some!370 (_2!3289 lt!186521)))))

(assert (=> d!73137 (= lt!186696 (lemmaContainsTupThenGetReturnValue!189 lt!186694 (_1!3289 lt!186521) (_2!3289 lt!186521)))))

(assert (=> d!73137 (= lt!186694 (insertStrictlySorted!191 (toList!2758 lt!186517) (_1!3289 lt!186521) (_2!3289 lt!186521)))))

(assert (=> d!73137 (= (+!1056 lt!186517 lt!186521) lt!186697)))

(declare-fun b!394000 () Bool)

(declare-fun res!225846 () Bool)

(assert (=> b!394000 (=> (not res!225846) (not e!238527))))

(assert (=> b!394000 (= res!225846 (= (getValueByKey!365 (toList!2758 lt!186697) (_1!3289 lt!186521)) (Some!370 (_2!3289 lt!186521))))))

(declare-fun b!394001 () Bool)

(assert (=> b!394001 (= e!238527 (contains!2475 (toList!2758 lt!186697) lt!186521))))

(assert (= (and d!73137 res!225845) b!394000))

(assert (= (and b!394000 res!225846) b!394001))

(declare-fun m!390503 () Bool)

(assert (=> d!73137 m!390503))

(declare-fun m!390505 () Bool)

(assert (=> d!73137 m!390505))

(declare-fun m!390507 () Bool)

(assert (=> d!73137 m!390507))

(declare-fun m!390509 () Bool)

(assert (=> d!73137 m!390509))

(declare-fun m!390511 () Bool)

(assert (=> b!394000 m!390511))

(declare-fun m!390513 () Bool)

(assert (=> b!394001 m!390513))

(assert (=> b!393768 d!73137))

(declare-fun b!394002 () Bool)

(declare-fun e!238530 () Bool)

(declare-fun e!238528 () Bool)

(assert (=> b!394002 (= e!238530 e!238528)))

(declare-fun c!54461 () Bool)

(assert (=> b!394002 (= c!54461 (validKeyInArray!0 (select (arr!11126 lt!186522) #b00000000000000000000000000000000)))))

(declare-fun bm!27854 () Bool)

(declare-fun call!27857 () Bool)

(assert (=> bm!27854 (= call!27857 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!186522 mask!970))))

(declare-fun d!73139 () Bool)

(declare-fun res!225847 () Bool)

(assert (=> d!73139 (=> res!225847 e!238530)))

(assert (=> d!73139 (= res!225847 (bvsge #b00000000000000000000000000000000 (size!11478 lt!186522)))))

(assert (=> d!73139 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186522 mask!970) e!238530)))

(declare-fun b!394003 () Bool)

(declare-fun e!238529 () Bool)

(assert (=> b!394003 (= e!238529 call!27857)))

(declare-fun b!394004 () Bool)

(assert (=> b!394004 (= e!238528 call!27857)))

(declare-fun b!394005 () Bool)

(assert (=> b!394005 (= e!238528 e!238529)))

(declare-fun lt!186699 () (_ BitVec 64))

(assert (=> b!394005 (= lt!186699 (select (arr!11126 lt!186522) #b00000000000000000000000000000000))))

(declare-fun lt!186698 () Unit!12009)

(assert (=> b!394005 (= lt!186698 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!186522 lt!186699 #b00000000000000000000000000000000))))

(assert (=> b!394005 (arrayContainsKey!0 lt!186522 lt!186699 #b00000000000000000000000000000000)))

(declare-fun lt!186700 () Unit!12009)

(assert (=> b!394005 (= lt!186700 lt!186698)))

(declare-fun res!225848 () Bool)

(assert (=> b!394005 (= res!225848 (= (seekEntryOrOpen!0 (select (arr!11126 lt!186522) #b00000000000000000000000000000000) lt!186522 mask!970) (Found!3507 #b00000000000000000000000000000000)))))

(assert (=> b!394005 (=> (not res!225848) (not e!238529))))

(assert (= (and d!73139 (not res!225847)) b!394002))

(assert (= (and b!394002 c!54461) b!394005))

(assert (= (and b!394002 (not c!54461)) b!394004))

(assert (= (and b!394005 res!225848) b!394003))

(assert (= (or b!394003 b!394004) bm!27854))

(assert (=> b!394002 m!390423))

(assert (=> b!394002 m!390423))

(assert (=> b!394002 m!390443))

(declare-fun m!390515 () Bool)

(assert (=> bm!27854 m!390515))

(assert (=> b!394005 m!390423))

(declare-fun m!390517 () Bool)

(assert (=> b!394005 m!390517))

(declare-fun m!390519 () Bool)

(assert (=> b!394005 m!390519))

(assert (=> b!394005 m!390423))

(declare-fun m!390521 () Bool)

(assert (=> b!394005 m!390521))

(assert (=> b!393763 d!73139))

(declare-fun d!73141 () Bool)

(assert (=> d!73141 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!38206 d!73141))

(declare-fun d!73143 () Bool)

(assert (=> d!73143 (= (array_inv!8150 _values!506) (bvsge (size!11477 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!38206 d!73143))

(declare-fun d!73145 () Bool)

(assert (=> d!73145 (= (array_inv!8151 _keys!658) (bvsge (size!11478 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!38206 d!73145))

(declare-fun d!73147 () Bool)

(assert (=> d!73147 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!393758 d!73147))

(declare-fun b!394012 () Bool)

(declare-fun e!238535 () Bool)

(assert (=> b!394012 (= e!238535 tp_is_empty!9729)))

(declare-fun b!394013 () Bool)

(declare-fun e!238536 () Bool)

(assert (=> b!394013 (= e!238536 tp_is_empty!9729)))

(declare-fun condMapEmpty!16197 () Bool)

(declare-fun mapDefault!16197 () ValueCell!4521)

(assert (=> mapNonEmpty!16191 (= condMapEmpty!16197 (= mapRest!16191 ((as const (Array (_ BitVec 32) ValueCell!4521)) mapDefault!16197)))))

(declare-fun mapRes!16197 () Bool)

(assert (=> mapNonEmpty!16191 (= tp!31955 (and e!238536 mapRes!16197))))

(declare-fun mapIsEmpty!16197 () Bool)

(assert (=> mapIsEmpty!16197 mapRes!16197))

(declare-fun mapNonEmpty!16197 () Bool)

(declare-fun tp!31965 () Bool)

(assert (=> mapNonEmpty!16197 (= mapRes!16197 (and tp!31965 e!238535))))

(declare-fun mapKey!16197 () (_ BitVec 32))

(declare-fun mapRest!16197 () (Array (_ BitVec 32) ValueCell!4521))

(declare-fun mapValue!16197 () ValueCell!4521)

(assert (=> mapNonEmpty!16197 (= mapRest!16191 (store mapRest!16197 mapKey!16197 mapValue!16197))))

(assert (= (and mapNonEmpty!16191 condMapEmpty!16197) mapIsEmpty!16197))

(assert (= (and mapNonEmpty!16191 (not condMapEmpty!16197)) mapNonEmpty!16197))

(assert (= (and mapNonEmpty!16197 ((_ is ValueCellFull!4521) mapValue!16197)) b!394012))

(assert (= (and mapNonEmpty!16191 ((_ is ValueCellFull!4521) mapDefault!16197)) b!394013))

(declare-fun m!390523 () Bool)

(assert (=> mapNonEmpty!16197 m!390523))

(declare-fun b_lambda!8833 () Bool)

(assert (= b_lambda!8827 (or (and start!38206 b_free!9057) b_lambda!8833)))

(declare-fun b_lambda!8835 () Bool)

(assert (= b_lambda!8823 (or (and start!38206 b_free!9057) b_lambda!8835)))

(declare-fun b_lambda!8837 () Bool)

(assert (= b_lambda!8831 (or (and start!38206 b_free!9057) b_lambda!8837)))

(declare-fun b_lambda!8839 () Bool)

(assert (= b_lambda!8829 (or (and start!38206 b_free!9057) b_lambda!8839)))

(declare-fun b_lambda!8841 () Bool)

(assert (= b_lambda!8821 (or (and start!38206 b_free!9057) b_lambda!8841)))

(declare-fun b_lambda!8843 () Bool)

(assert (= b_lambda!8825 (or (and start!38206 b_free!9057) b_lambda!8843)))

(check-sat (not b!393994) (not b!393974) (not bm!27826) (not b!394005) (not b!393845) (not d!73125) (not b!394002) (not b!393837) (not d!73121) (not b!393936) (not b!393934) (not bm!27830) (not b!393920) tp_is_empty!9729 (not b_lambda!8839) (not b!393988) (not bm!27840) (not b_lambda!8835) (not b!393839) (not b!393946) (not b!393902) (not bm!27852) (not b!393928) (not b!393907) (not b!393904) (not d!73119) (not bm!27843) (not b!393906) (not bm!27838) (not b!393973) (not b!393896) (not b!393948) (not b!393932) (not d!73123) (not b_lambda!8837) (not b!393955) (not b!393848) (not b!393961) (not mapNonEmpty!16197) (not bm!27849) (not d!73117) (not b!393937) (not b!393840) (not b!393913) (not bm!27811) (not b!393952) (not bm!27844) (not bm!27853) (not b!393944) (not d!73137) (not b!393925) (not b!393926) (not b!393995) (not b!393951) (not b!393838) (not b!393844) (not b!393898) (not bm!27846) (not b_lambda!8843) (not b!394000) (not b!393972) (not b!393841) (not b!393997) (not b!394001) (not bm!27854) (not b_next!9057) (not b!393895) (not b!393960) (not b!393947) (not b!393996) (not b!393943) (not d!73127) (not b!393945) (not b_lambda!8841) (not b_lambda!8833) b_and!16463 (not bm!27839) (not bm!27837) (not bm!27831) (not b!393985) (not bm!27827))
(check-sat b_and!16463 (not b_next!9057))
