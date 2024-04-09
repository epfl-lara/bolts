; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43406 () Bool)

(assert start!43406)

(declare-fun b_free!12225 () Bool)

(declare-fun b_next!12225 () Bool)

(assert (=> start!43406 (= b_free!12225 (not b_next!12225))))

(declare-fun tp!42952 () Bool)

(declare-fun b_and!20999 () Bool)

(assert (=> start!43406 (= tp!42952 b_and!20999)))

(declare-fun mapIsEmpty!22309 () Bool)

(declare-fun mapRes!22309 () Bool)

(assert (=> mapIsEmpty!22309 mapRes!22309))

(declare-fun b!480729 () Bool)

(declare-fun e!282851 () Bool)

(declare-fun tp_is_empty!13737 () Bool)

(assert (=> b!480729 (= e!282851 tp_is_empty!13737)))

(declare-fun b!480730 () Bool)

(declare-fun e!282854 () Bool)

(declare-fun e!282855 () Bool)

(assert (=> b!480730 (= e!282854 (and e!282855 mapRes!22309))))

(declare-fun condMapEmpty!22309 () Bool)

(declare-datatypes ((V!19387 0))(
  ( (V!19388 (val!6916 Int)) )
))
(declare-datatypes ((ValueCell!6507 0))(
  ( (ValueCellFull!6507 (v!9203 V!19387)) (EmptyCell!6507) )
))
(declare-datatypes ((array!31109 0))(
  ( (array!31110 (arr!14956 (Array (_ BitVec 32) ValueCell!6507)) (size!15314 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31109)

(declare-fun mapDefault!22309 () ValueCell!6507)

(assert (=> b!480730 (= condMapEmpty!22309 (= (arr!14956 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6507)) mapDefault!22309)))))

(declare-fun b!480731 () Bool)

(declare-datatypes ((array!31111 0))(
  ( (array!31112 (arr!14957 (Array (_ BitVec 32) (_ BitVec 64))) (size!15315 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31111)

(declare-fun e!282856 () Bool)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun lt!218225 () (_ BitVec 32))

(assert (=> b!480731 (= e!282856 (not (or (not (= (size!15315 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))) (bvsge lt!218225 #b00000000000000000000000000000000))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31111 (_ BitVec 32)) Bool)

(assert (=> b!480731 (arrayForallSeekEntryOrOpenFound!0 lt!218225 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14078 0))(
  ( (Unit!14079) )
))
(declare-fun lt!218224 () Unit!14078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14078)

(assert (=> b!480731 (= lt!218224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218225))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31111 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480731 (= lt!218225 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!282852 () Bool)

(assert (=> b!480731 e!282852))

(declare-fun c!57748 () Bool)

(assert (=> b!480731 (= c!57748 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218223 () Unit!14078)

(declare-fun minValue!1458 () V!19387)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19387)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!130 (array!31111 array!31109 (_ BitVec 32) (_ BitVec 32) V!19387 V!19387 (_ BitVec 64) Int) Unit!14078)

(assert (=> b!480731 (= lt!218223 (lemmaKeyInListMapIsInArray!130 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!480732 () Bool)

(declare-fun arrayContainsKey!0 (array!31111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480732 (= e!282852 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun res!286739 () Bool)

(assert (=> start!43406 (=> (not res!286739) (not e!282856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43406 (= res!286739 (validMask!0 mask!2352))))

(assert (=> start!43406 e!282856))

(assert (=> start!43406 true))

(assert (=> start!43406 tp_is_empty!13737))

(declare-fun array_inv!10772 (array!31109) Bool)

(assert (=> start!43406 (and (array_inv!10772 _values!1516) e!282854)))

(assert (=> start!43406 tp!42952))

(declare-fun array_inv!10773 (array!31111) Bool)

(assert (=> start!43406 (array_inv!10773 _keys!1874)))

(declare-fun b!480733 () Bool)

(declare-fun res!286735 () Bool)

(assert (=> b!480733 (=> (not res!286735) (not e!282856))))

(assert (=> b!480733 (= res!286735 (and (= (size!15314 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15315 _keys!1874) (size!15314 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22309 () Bool)

(declare-fun tp!42951 () Bool)

(assert (=> mapNonEmpty!22309 (= mapRes!22309 (and tp!42951 e!282851))))

(declare-fun mapValue!22309 () ValueCell!6507)

(declare-fun mapRest!22309 () (Array (_ BitVec 32) ValueCell!6507))

(declare-fun mapKey!22309 () (_ BitVec 32))

(assert (=> mapNonEmpty!22309 (= (arr!14956 _values!1516) (store mapRest!22309 mapKey!22309 mapValue!22309))))

(declare-fun b!480734 () Bool)

(declare-fun res!286736 () Bool)

(assert (=> b!480734 (=> (not res!286736) (not e!282856))))

(declare-datatypes ((tuple2!9074 0))(
  ( (tuple2!9075 (_1!4547 (_ BitVec 64)) (_2!4547 V!19387)) )
))
(declare-datatypes ((List!9189 0))(
  ( (Nil!9186) (Cons!9185 (h!10041 tuple2!9074) (t!15407 List!9189)) )
))
(declare-datatypes ((ListLongMap!8001 0))(
  ( (ListLongMap!8002 (toList!4016 List!9189)) )
))
(declare-fun contains!2625 (ListLongMap!8001 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2308 (array!31111 array!31109 (_ BitVec 32) (_ BitVec 32) V!19387 V!19387 (_ BitVec 32) Int) ListLongMap!8001)

(assert (=> b!480734 (= res!286736 (contains!2625 (getCurrentListMap!2308 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!480735 () Bool)

(assert (=> b!480735 (= e!282852 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480736 () Bool)

(declare-fun res!286740 () Bool)

(assert (=> b!480736 (=> (not res!286740) (not e!282856))))

(assert (=> b!480736 (= res!286740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480737 () Bool)

(declare-fun res!286737 () Bool)

(assert (=> b!480737 (=> (not res!286737) (not e!282856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480737 (= res!286737 (validKeyInArray!0 k0!1332))))

(declare-fun b!480738 () Bool)

(declare-fun res!286738 () Bool)

(assert (=> b!480738 (=> (not res!286738) (not e!282856))))

(declare-datatypes ((List!9190 0))(
  ( (Nil!9187) (Cons!9186 (h!10042 (_ BitVec 64)) (t!15408 List!9190)) )
))
(declare-fun arrayNoDuplicates!0 (array!31111 (_ BitVec 32) List!9190) Bool)

(assert (=> b!480738 (= res!286738 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9187))))

(declare-fun b!480739 () Bool)

(assert (=> b!480739 (= e!282855 tp_is_empty!13737)))

(assert (= (and start!43406 res!286739) b!480733))

(assert (= (and b!480733 res!286735) b!480736))

(assert (= (and b!480736 res!286740) b!480738))

(assert (= (and b!480738 res!286738) b!480734))

(assert (= (and b!480734 res!286736) b!480737))

(assert (= (and b!480737 res!286737) b!480731))

(assert (= (and b!480731 c!57748) b!480732))

(assert (= (and b!480731 (not c!57748)) b!480735))

(assert (= (and b!480730 condMapEmpty!22309) mapIsEmpty!22309))

(assert (= (and b!480730 (not condMapEmpty!22309)) mapNonEmpty!22309))

(get-info :version)

(assert (= (and mapNonEmpty!22309 ((_ is ValueCellFull!6507) mapValue!22309)) b!480729))

(assert (= (and b!480730 ((_ is ValueCellFull!6507) mapDefault!22309)) b!480739))

(assert (= start!43406 b!480730))

(declare-fun m!462311 () Bool)

(assert (=> b!480732 m!462311))

(declare-fun m!462313 () Bool)

(assert (=> b!480736 m!462313))

(declare-fun m!462315 () Bool)

(assert (=> start!43406 m!462315))

(declare-fun m!462317 () Bool)

(assert (=> start!43406 m!462317))

(declare-fun m!462319 () Bool)

(assert (=> start!43406 m!462319))

(declare-fun m!462321 () Bool)

(assert (=> b!480731 m!462321))

(declare-fun m!462323 () Bool)

(assert (=> b!480731 m!462323))

(declare-fun m!462325 () Bool)

(assert (=> b!480731 m!462325))

(declare-fun m!462327 () Bool)

(assert (=> b!480731 m!462327))

(declare-fun m!462329 () Bool)

(assert (=> b!480734 m!462329))

(assert (=> b!480734 m!462329))

(declare-fun m!462331 () Bool)

(assert (=> b!480734 m!462331))

(declare-fun m!462333 () Bool)

(assert (=> b!480738 m!462333))

(declare-fun m!462335 () Bool)

(assert (=> b!480737 m!462335))

(declare-fun m!462337 () Bool)

(assert (=> mapNonEmpty!22309 m!462337))

(check-sat b_and!20999 (not b_next!12225) (not b!480732) (not b!480738) (not mapNonEmpty!22309) (not b!480731) tp_is_empty!13737 (not b!480736) (not start!43406) (not b!480737) (not b!480734))
(check-sat b_and!20999 (not b_next!12225))
(get-model)

(declare-fun b!480783 () Bool)

(declare-fun e!282883 () Bool)

(declare-fun contains!2626 (List!9190 (_ BitVec 64)) Bool)

(assert (=> b!480783 (= e!282883 (contains!2626 Nil!9187 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!480784 () Bool)

(declare-fun e!282884 () Bool)

(declare-fun e!282886 () Bool)

(assert (=> b!480784 (= e!282884 e!282886)))

(declare-fun c!57754 () Bool)

(assert (=> b!480784 (= c!57754 (validKeyInArray!0 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!30898 () Bool)

(declare-fun call!30901 () Bool)

(assert (=> bm!30898 (= call!30901 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57754 (Cons!9186 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000) Nil!9187) Nil!9187)))))

(declare-fun d!76613 () Bool)

(declare-fun res!286766 () Bool)

(declare-fun e!282885 () Bool)

(assert (=> d!76613 (=> res!286766 e!282885)))

(assert (=> d!76613 (= res!286766 (bvsge #b00000000000000000000000000000000 (size!15315 _keys!1874)))))

(assert (=> d!76613 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9187) e!282885)))

(declare-fun b!480785 () Bool)

(assert (=> b!480785 (= e!282886 call!30901)))

(declare-fun b!480786 () Bool)

(assert (=> b!480786 (= e!282885 e!282884)))

(declare-fun res!286767 () Bool)

(assert (=> b!480786 (=> (not res!286767) (not e!282884))))

(assert (=> b!480786 (= res!286767 (not e!282883))))

(declare-fun res!286765 () Bool)

(assert (=> b!480786 (=> (not res!286765) (not e!282883))))

(assert (=> b!480786 (= res!286765 (validKeyInArray!0 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!480787 () Bool)

(assert (=> b!480787 (= e!282886 call!30901)))

(assert (= (and d!76613 (not res!286766)) b!480786))

(assert (= (and b!480786 res!286765) b!480783))

(assert (= (and b!480786 res!286767) b!480784))

(assert (= (and b!480784 c!57754) b!480787))

(assert (= (and b!480784 (not c!57754)) b!480785))

(assert (= (or b!480787 b!480785) bm!30898))

(declare-fun m!462367 () Bool)

(assert (=> b!480783 m!462367))

(assert (=> b!480783 m!462367))

(declare-fun m!462369 () Bool)

(assert (=> b!480783 m!462369))

(assert (=> b!480784 m!462367))

(assert (=> b!480784 m!462367))

(declare-fun m!462371 () Bool)

(assert (=> b!480784 m!462371))

(assert (=> bm!30898 m!462367))

(declare-fun m!462373 () Bool)

(assert (=> bm!30898 m!462373))

(assert (=> b!480786 m!462367))

(assert (=> b!480786 m!462367))

(assert (=> b!480786 m!462371))

(assert (=> b!480738 d!76613))

(declare-fun d!76615 () Bool)

(assert (=> d!76615 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43406 d!76615))

(declare-fun d!76617 () Bool)

(assert (=> d!76617 (= (array_inv!10772 _values!1516) (bvsge (size!15314 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43406 d!76617))

(declare-fun d!76619 () Bool)

(assert (=> d!76619 (= (array_inv!10773 _keys!1874) (bvsge (size!15315 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43406 d!76619))

(declare-fun d!76621 () Bool)

(declare-fun e!282891 () Bool)

(assert (=> d!76621 e!282891))

(declare-fun res!286770 () Bool)

(assert (=> d!76621 (=> res!286770 e!282891)))

(declare-fun lt!218246 () Bool)

(assert (=> d!76621 (= res!286770 (not lt!218246))))

(declare-fun lt!218243 () Bool)

(assert (=> d!76621 (= lt!218246 lt!218243)))

(declare-fun lt!218244 () Unit!14078)

(declare-fun e!282892 () Unit!14078)

(assert (=> d!76621 (= lt!218244 e!282892)))

(declare-fun c!57757 () Bool)

(assert (=> d!76621 (= c!57757 lt!218243)))

(declare-fun containsKey!355 (List!9189 (_ BitVec 64)) Bool)

(assert (=> d!76621 (= lt!218243 (containsKey!355 (toList!4016 (getCurrentListMap!2308 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(assert (=> d!76621 (= (contains!2625 (getCurrentListMap!2308 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332) lt!218246)))

(declare-fun b!480794 () Bool)

(declare-fun lt!218245 () Unit!14078)

(assert (=> b!480794 (= e!282892 lt!218245)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!304 (List!9189 (_ BitVec 64)) Unit!14078)

(assert (=> b!480794 (= lt!218245 (lemmaContainsKeyImpliesGetValueByKeyDefined!304 (toList!4016 (getCurrentListMap!2308 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-datatypes ((Option!399 0))(
  ( (Some!398 (v!9205 V!19387)) (None!397) )
))
(declare-fun isDefined!305 (Option!399) Bool)

(declare-fun getValueByKey!393 (List!9189 (_ BitVec 64)) Option!399)

(assert (=> b!480794 (isDefined!305 (getValueByKey!393 (toList!4016 (getCurrentListMap!2308 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-fun b!480795 () Bool)

(declare-fun Unit!14080 () Unit!14078)

(assert (=> b!480795 (= e!282892 Unit!14080)))

(declare-fun b!480796 () Bool)

(assert (=> b!480796 (= e!282891 (isDefined!305 (getValueByKey!393 (toList!4016 (getCurrentListMap!2308 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332)))))

(assert (= (and d!76621 c!57757) b!480794))

(assert (= (and d!76621 (not c!57757)) b!480795))

(assert (= (and d!76621 (not res!286770)) b!480796))

(declare-fun m!462375 () Bool)

(assert (=> d!76621 m!462375))

(declare-fun m!462377 () Bool)

(assert (=> b!480794 m!462377))

(declare-fun m!462379 () Bool)

(assert (=> b!480794 m!462379))

(assert (=> b!480794 m!462379))

(declare-fun m!462381 () Bool)

(assert (=> b!480794 m!462381))

(assert (=> b!480796 m!462379))

(assert (=> b!480796 m!462379))

(assert (=> b!480796 m!462381))

(assert (=> b!480734 d!76621))

(declare-fun b!480839 () Bool)

(declare-fun e!282919 () ListLongMap!8001)

(declare-fun call!30918 () ListLongMap!8001)

(assert (=> b!480839 (= e!282919 call!30918)))

(declare-fun call!30916 () ListLongMap!8001)

(declare-fun c!57771 () Bool)

(declare-fun c!57773 () Bool)

(declare-fun bm!30913 () Bool)

(declare-fun call!30920 () ListLongMap!8001)

(declare-fun call!30921 () ListLongMap!8001)

(declare-fun call!30922 () ListLongMap!8001)

(declare-fun +!1744 (ListLongMap!8001 tuple2!9074) ListLongMap!8001)

(assert (=> bm!30913 (= call!30916 (+!1744 (ite c!57771 call!30920 (ite c!57773 call!30922 call!30921)) (ite (or c!57771 c!57773) (tuple2!9075 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1458) (tuple2!9075 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458))))))

(declare-fun bm!30914 () Bool)

(declare-fun call!30919 () Bool)

(declare-fun lt!218308 () ListLongMap!8001)

(assert (=> bm!30914 (= call!30919 (contains!2625 lt!218308 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!480840 () Bool)

(declare-fun e!282931 () Bool)

(declare-fun apply!341 (ListLongMap!8001 (_ BitVec 64)) V!19387)

(declare-fun get!7263 (ValueCell!6507 V!19387) V!19387)

(declare-fun dynLambda!951 (Int (_ BitVec 64)) V!19387)

(assert (=> b!480840 (= e!282931 (= (apply!341 lt!218308 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000)) (get!7263 (select (arr!14956 _values!1516) #b00000000000000000000000000000000) (dynLambda!951 defaultEntry!1519 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!480840 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15314 _values!1516)))))

(assert (=> b!480840 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15315 _keys!1874)))))

(declare-fun bm!30915 () Bool)

(assert (=> bm!30915 (= call!30921 call!30922)))

(declare-fun b!480841 () Bool)

(declare-fun e!282921 () Bool)

(assert (=> b!480841 (= e!282921 (= (apply!341 lt!218308 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1458))))

(declare-fun bm!30916 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2114 (array!31111 array!31109 (_ BitVec 32) (_ BitVec 32) V!19387 V!19387 (_ BitVec 32) Int) ListLongMap!8001)

(assert (=> bm!30916 (= call!30920 (getCurrentListMapNoExtraKeys!2114 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun b!480842 () Bool)

(declare-fun e!282923 () Bool)

(assert (=> b!480842 (= e!282923 (validKeyInArray!0 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!480843 () Bool)

(declare-fun e!282924 () Unit!14078)

(declare-fun lt!218299 () Unit!14078)

(assert (=> b!480843 (= e!282924 lt!218299)))

(declare-fun lt!218302 () ListLongMap!8001)

(assert (=> b!480843 (= lt!218302 (getCurrentListMapNoExtraKeys!2114 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218303 () (_ BitVec 64))

(assert (=> b!480843 (= lt!218303 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218296 () (_ BitVec 64))

(assert (=> b!480843 (= lt!218296 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218295 () Unit!14078)

(declare-fun addStillContains!299 (ListLongMap!8001 (_ BitVec 64) V!19387 (_ BitVec 64)) Unit!14078)

(assert (=> b!480843 (= lt!218295 (addStillContains!299 lt!218302 lt!218303 zeroValue!1458 lt!218296))))

(assert (=> b!480843 (contains!2625 (+!1744 lt!218302 (tuple2!9075 lt!218303 zeroValue!1458)) lt!218296)))

(declare-fun lt!218311 () Unit!14078)

(assert (=> b!480843 (= lt!218311 lt!218295)))

(declare-fun lt!218291 () ListLongMap!8001)

(assert (=> b!480843 (= lt!218291 (getCurrentListMapNoExtraKeys!2114 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218297 () (_ BitVec 64))

(assert (=> b!480843 (= lt!218297 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218294 () (_ BitVec 64))

(assert (=> b!480843 (= lt!218294 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218307 () Unit!14078)

(declare-fun addApplyDifferent!299 (ListLongMap!8001 (_ BitVec 64) V!19387 (_ BitVec 64)) Unit!14078)

(assert (=> b!480843 (= lt!218307 (addApplyDifferent!299 lt!218291 lt!218297 minValue!1458 lt!218294))))

(assert (=> b!480843 (= (apply!341 (+!1744 lt!218291 (tuple2!9075 lt!218297 minValue!1458)) lt!218294) (apply!341 lt!218291 lt!218294))))

(declare-fun lt!218312 () Unit!14078)

(assert (=> b!480843 (= lt!218312 lt!218307)))

(declare-fun lt!218293 () ListLongMap!8001)

(assert (=> b!480843 (= lt!218293 (getCurrentListMapNoExtraKeys!2114 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218309 () (_ BitVec 64))

(assert (=> b!480843 (= lt!218309 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218292 () (_ BitVec 64))

(assert (=> b!480843 (= lt!218292 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218306 () Unit!14078)

(assert (=> b!480843 (= lt!218306 (addApplyDifferent!299 lt!218293 lt!218309 zeroValue!1458 lt!218292))))

(assert (=> b!480843 (= (apply!341 (+!1744 lt!218293 (tuple2!9075 lt!218309 zeroValue!1458)) lt!218292) (apply!341 lt!218293 lt!218292))))

(declare-fun lt!218310 () Unit!14078)

(assert (=> b!480843 (= lt!218310 lt!218306)))

(declare-fun lt!218304 () ListLongMap!8001)

(assert (=> b!480843 (= lt!218304 (getCurrentListMapNoExtraKeys!2114 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218300 () (_ BitVec 64))

(assert (=> b!480843 (= lt!218300 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218305 () (_ BitVec 64))

(assert (=> b!480843 (= lt!218305 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> b!480843 (= lt!218299 (addApplyDifferent!299 lt!218304 lt!218300 minValue!1458 lt!218305))))

(assert (=> b!480843 (= (apply!341 (+!1744 lt!218304 (tuple2!9075 lt!218300 minValue!1458)) lt!218305) (apply!341 lt!218304 lt!218305))))

(declare-fun b!480844 () Bool)

(declare-fun c!57774 () Bool)

(assert (=> b!480844 (= c!57774 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!282920 () ListLongMap!8001)

(assert (=> b!480844 (= e!282920 e!282919)))

(declare-fun b!480845 () Bool)

(declare-fun e!282928 () ListLongMap!8001)

(assert (=> b!480845 (= e!282928 (+!1744 call!30916 (tuple2!9075 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458)))))

(declare-fun b!480846 () Bool)

(assert (=> b!480846 (= e!282928 e!282920)))

(assert (=> b!480846 (= c!57773 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!480847 () Bool)

(declare-fun e!282922 () Bool)

(assert (=> b!480847 (= e!282922 e!282921)))

(declare-fun res!286796 () Bool)

(declare-fun call!30917 () Bool)

(assert (=> b!480847 (= res!286796 call!30917)))

(assert (=> b!480847 (=> (not res!286796) (not e!282921))))

(declare-fun b!480848 () Bool)

(assert (=> b!480848 (= e!282920 call!30918)))

(declare-fun bm!30917 () Bool)

(assert (=> bm!30917 (= call!30918 call!30916)))

(declare-fun bm!30918 () Bool)

(assert (=> bm!30918 (= call!30922 call!30920)))

(declare-fun b!480849 () Bool)

(declare-fun e!282925 () Bool)

(assert (=> b!480849 (= e!282925 e!282931)))

(declare-fun res!286792 () Bool)

(assert (=> b!480849 (=> (not res!286792) (not e!282931))))

(assert (=> b!480849 (= res!286792 (contains!2625 lt!218308 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000)))))

(assert (=> b!480849 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15315 _keys!1874)))))

(declare-fun b!480850 () Bool)

(declare-fun e!282926 () Bool)

(declare-fun e!282929 () Bool)

(assert (=> b!480850 (= e!282926 e!282929)))

(declare-fun c!57775 () Bool)

(assert (=> b!480850 (= c!57775 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!480851 () Bool)

(declare-fun e!282927 () Bool)

(assert (=> b!480851 (= e!282929 e!282927)))

(declare-fun res!286793 () Bool)

(assert (=> b!480851 (= res!286793 call!30919)))

(assert (=> b!480851 (=> (not res!286793) (not e!282927))))

(declare-fun b!480852 () Bool)

(assert (=> b!480852 (= e!282922 (not call!30917))))

(declare-fun b!480853 () Bool)

(declare-fun res!286791 () Bool)

(assert (=> b!480853 (=> (not res!286791) (not e!282926))))

(assert (=> b!480853 (= res!286791 e!282922)))

(declare-fun c!57772 () Bool)

(assert (=> b!480853 (= c!57772 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!480854 () Bool)

(assert (=> b!480854 (= e!282929 (not call!30919))))

(declare-fun b!480855 () Bool)

(declare-fun res!286797 () Bool)

(assert (=> b!480855 (=> (not res!286797) (not e!282926))))

(assert (=> b!480855 (= res!286797 e!282925)))

(declare-fun res!286795 () Bool)

(assert (=> b!480855 (=> res!286795 e!282925)))

(declare-fun e!282930 () Bool)

(assert (=> b!480855 (= res!286795 (not e!282930))))

(declare-fun res!286794 () Bool)

(assert (=> b!480855 (=> (not res!286794) (not e!282930))))

(assert (=> b!480855 (= res!286794 (bvslt #b00000000000000000000000000000000 (size!15315 _keys!1874)))))

(declare-fun d!76623 () Bool)

(assert (=> d!76623 e!282926))

(declare-fun res!286790 () Bool)

(assert (=> d!76623 (=> (not res!286790) (not e!282926))))

(assert (=> d!76623 (= res!286790 (or (bvsge #b00000000000000000000000000000000 (size!15315 _keys!1874)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15315 _keys!1874)))))))

(declare-fun lt!218298 () ListLongMap!8001)

(assert (=> d!76623 (= lt!218308 lt!218298)))

(declare-fun lt!218301 () Unit!14078)

(assert (=> d!76623 (= lt!218301 e!282924)))

(declare-fun c!57770 () Bool)

(assert (=> d!76623 (= c!57770 e!282923)))

(declare-fun res!286789 () Bool)

(assert (=> d!76623 (=> (not res!286789) (not e!282923))))

(assert (=> d!76623 (= res!286789 (bvslt #b00000000000000000000000000000000 (size!15315 _keys!1874)))))

(assert (=> d!76623 (= lt!218298 e!282928)))

(assert (=> d!76623 (= c!57771 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!76623 (validMask!0 mask!2352)))

(assert (=> d!76623 (= (getCurrentListMap!2308 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) lt!218308)))

(declare-fun b!480856 () Bool)

(declare-fun Unit!14081 () Unit!14078)

(assert (=> b!480856 (= e!282924 Unit!14081)))

(declare-fun b!480857 () Bool)

(assert (=> b!480857 (= e!282919 call!30921)))

(declare-fun bm!30919 () Bool)

(assert (=> bm!30919 (= call!30917 (contains!2625 lt!218308 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!480858 () Bool)

(assert (=> b!480858 (= e!282927 (= (apply!341 lt!218308 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1458))))

(declare-fun b!480859 () Bool)

(assert (=> b!480859 (= e!282930 (validKeyInArray!0 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000)))))

(assert (= (and d!76623 c!57771) b!480845))

(assert (= (and d!76623 (not c!57771)) b!480846))

(assert (= (and b!480846 c!57773) b!480848))

(assert (= (and b!480846 (not c!57773)) b!480844))

(assert (= (and b!480844 c!57774) b!480839))

(assert (= (and b!480844 (not c!57774)) b!480857))

(assert (= (or b!480839 b!480857) bm!30915))

(assert (= (or b!480848 bm!30915) bm!30918))

(assert (= (or b!480848 b!480839) bm!30917))

(assert (= (or b!480845 bm!30918) bm!30916))

(assert (= (or b!480845 bm!30917) bm!30913))

(assert (= (and d!76623 res!286789) b!480842))

(assert (= (and d!76623 c!57770) b!480843))

(assert (= (and d!76623 (not c!57770)) b!480856))

(assert (= (and d!76623 res!286790) b!480855))

(assert (= (and b!480855 res!286794) b!480859))

(assert (= (and b!480855 (not res!286795)) b!480849))

(assert (= (and b!480849 res!286792) b!480840))

(assert (= (and b!480855 res!286797) b!480853))

(assert (= (and b!480853 c!57772) b!480847))

(assert (= (and b!480853 (not c!57772)) b!480852))

(assert (= (and b!480847 res!286796) b!480841))

(assert (= (or b!480847 b!480852) bm!30919))

(assert (= (and b!480853 res!286791) b!480850))

(assert (= (and b!480850 c!57775) b!480851))

(assert (= (and b!480850 (not c!57775)) b!480854))

(assert (= (and b!480851 res!286793) b!480858))

(assert (= (or b!480851 b!480854) bm!30914))

(declare-fun b_lambda!10829 () Bool)

(assert (=> (not b_lambda!10829) (not b!480840)))

(declare-fun t!15411 () Bool)

(declare-fun tb!4171 () Bool)

(assert (=> (and start!43406 (= defaultEntry!1519 defaultEntry!1519) t!15411) tb!4171))

(declare-fun result!7765 () Bool)

(assert (=> tb!4171 (= result!7765 tp_is_empty!13737)))

(assert (=> b!480840 t!15411))

(declare-fun b_and!21003 () Bool)

(assert (= b_and!20999 (and (=> t!15411 result!7765) b_and!21003)))

(declare-fun m!462383 () Bool)

(assert (=> b!480840 m!462383))

(declare-fun m!462385 () Bool)

(assert (=> b!480840 m!462385))

(assert (=> b!480840 m!462367))

(declare-fun m!462387 () Bool)

(assert (=> b!480840 m!462387))

(assert (=> b!480840 m!462367))

(assert (=> b!480840 m!462383))

(assert (=> b!480840 m!462385))

(declare-fun m!462389 () Bool)

(assert (=> b!480840 m!462389))

(declare-fun m!462391 () Bool)

(assert (=> bm!30919 m!462391))

(declare-fun m!462393 () Bool)

(assert (=> bm!30913 m!462393))

(declare-fun m!462395 () Bool)

(assert (=> bm!30914 m!462395))

(declare-fun m!462397 () Bool)

(assert (=> b!480843 m!462397))

(declare-fun m!462399 () Bool)

(assert (=> b!480843 m!462399))

(declare-fun m!462401 () Bool)

(assert (=> b!480843 m!462401))

(assert (=> b!480843 m!462367))

(declare-fun m!462403 () Bool)

(assert (=> b!480843 m!462403))

(declare-fun m!462405 () Bool)

(assert (=> b!480843 m!462405))

(declare-fun m!462407 () Bool)

(assert (=> b!480843 m!462407))

(declare-fun m!462409 () Bool)

(assert (=> b!480843 m!462409))

(assert (=> b!480843 m!462397))

(declare-fun m!462411 () Bool)

(assert (=> b!480843 m!462411))

(declare-fun m!462413 () Bool)

(assert (=> b!480843 m!462413))

(declare-fun m!462415 () Bool)

(assert (=> b!480843 m!462415))

(declare-fun m!462417 () Bool)

(assert (=> b!480843 m!462417))

(declare-fun m!462419 () Bool)

(assert (=> b!480843 m!462419))

(assert (=> b!480843 m!462417))

(assert (=> b!480843 m!462407))

(declare-fun m!462421 () Bool)

(assert (=> b!480843 m!462421))

(declare-fun m!462423 () Bool)

(assert (=> b!480843 m!462423))

(declare-fun m!462425 () Bool)

(assert (=> b!480843 m!462425))

(assert (=> b!480843 m!462425))

(declare-fun m!462427 () Bool)

(assert (=> b!480843 m!462427))

(assert (=> b!480859 m!462367))

(assert (=> b!480859 m!462367))

(assert (=> b!480859 m!462371))

(assert (=> b!480849 m!462367))

(assert (=> b!480849 m!462367))

(declare-fun m!462429 () Bool)

(assert (=> b!480849 m!462429))

(declare-fun m!462431 () Bool)

(assert (=> b!480858 m!462431))

(assert (=> b!480842 m!462367))

(assert (=> b!480842 m!462367))

(assert (=> b!480842 m!462371))

(declare-fun m!462433 () Bool)

(assert (=> b!480845 m!462433))

(assert (=> d!76623 m!462315))

(assert (=> bm!30916 m!462401))

(declare-fun m!462435 () Bool)

(assert (=> b!480841 m!462435))

(assert (=> b!480734 d!76623))

(declare-fun d!76625 () Bool)

(declare-fun res!286802 () Bool)

(declare-fun e!282940 () Bool)

(assert (=> d!76625 (=> res!286802 e!282940)))

(assert (=> d!76625 (= res!286802 (bvsge lt!218225 (size!15315 _keys!1874)))))

(assert (=> d!76625 (= (arrayForallSeekEntryOrOpenFound!0 lt!218225 _keys!1874 mask!2352) e!282940)))

(declare-fun call!30925 () Bool)

(declare-fun bm!30922 () Bool)

(assert (=> bm!30922 (= call!30925 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!218225 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!480870 () Bool)

(declare-fun e!282939 () Bool)

(assert (=> b!480870 (= e!282939 call!30925)))

(declare-fun b!480871 () Bool)

(declare-fun e!282938 () Bool)

(assert (=> b!480871 (= e!282940 e!282938)))

(declare-fun c!57778 () Bool)

(assert (=> b!480871 (= c!57778 (validKeyInArray!0 (select (arr!14957 _keys!1874) lt!218225)))))

(declare-fun b!480872 () Bool)

(assert (=> b!480872 (= e!282938 e!282939)))

(declare-fun lt!218320 () (_ BitVec 64))

(assert (=> b!480872 (= lt!218320 (select (arr!14957 _keys!1874) lt!218225))))

(declare-fun lt!218321 () Unit!14078)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31111 (_ BitVec 64) (_ BitVec 32)) Unit!14078)

(assert (=> b!480872 (= lt!218321 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!218320 lt!218225))))

(assert (=> b!480872 (arrayContainsKey!0 _keys!1874 lt!218320 #b00000000000000000000000000000000)))

(declare-fun lt!218319 () Unit!14078)

(assert (=> b!480872 (= lt!218319 lt!218321)))

(declare-fun res!286803 () Bool)

(declare-datatypes ((SeekEntryResult!3558 0))(
  ( (MissingZero!3558 (index!16411 (_ BitVec 32))) (Found!3558 (index!16412 (_ BitVec 32))) (Intermediate!3558 (undefined!4370 Bool) (index!16413 (_ BitVec 32)) (x!45159 (_ BitVec 32))) (Undefined!3558) (MissingVacant!3558 (index!16414 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31111 (_ BitVec 32)) SeekEntryResult!3558)

(assert (=> b!480872 (= res!286803 (= (seekEntryOrOpen!0 (select (arr!14957 _keys!1874) lt!218225) _keys!1874 mask!2352) (Found!3558 lt!218225)))))

(assert (=> b!480872 (=> (not res!286803) (not e!282939))))

(declare-fun b!480873 () Bool)

(assert (=> b!480873 (= e!282938 call!30925)))

(assert (= (and d!76625 (not res!286802)) b!480871))

(assert (= (and b!480871 c!57778) b!480872))

(assert (= (and b!480871 (not c!57778)) b!480873))

(assert (= (and b!480872 res!286803) b!480870))

(assert (= (or b!480870 b!480873) bm!30922))

(declare-fun m!462437 () Bool)

(assert (=> bm!30922 m!462437))

(declare-fun m!462439 () Bool)

(assert (=> b!480871 m!462439))

(assert (=> b!480871 m!462439))

(declare-fun m!462441 () Bool)

(assert (=> b!480871 m!462441))

(assert (=> b!480872 m!462439))

(declare-fun m!462443 () Bool)

(assert (=> b!480872 m!462443))

(declare-fun m!462445 () Bool)

(assert (=> b!480872 m!462445))

(assert (=> b!480872 m!462439))

(declare-fun m!462447 () Bool)

(assert (=> b!480872 m!462447))

(assert (=> b!480731 d!76625))

(declare-fun d!76627 () Bool)

(assert (=> d!76627 (arrayForallSeekEntryOrOpenFound!0 lt!218225 _keys!1874 mask!2352)))

(declare-fun lt!218324 () Unit!14078)

(declare-fun choose!38 (array!31111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14078)

(assert (=> d!76627 (= lt!218324 (choose!38 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218225))))

(assert (=> d!76627 (validMask!0 mask!2352)))

(assert (=> d!76627 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218225) lt!218324)))

(declare-fun bs!15296 () Bool)

(assert (= bs!15296 d!76627))

(assert (=> bs!15296 m!462321))

(declare-fun m!462449 () Bool)

(assert (=> bs!15296 m!462449))

(assert (=> bs!15296 m!462315))

(assert (=> b!480731 d!76627))

(declare-fun d!76629 () Bool)

(declare-fun lt!218327 () (_ BitVec 32))

(assert (=> d!76629 (and (or (bvslt lt!218327 #b00000000000000000000000000000000) (bvsge lt!218327 (size!15315 _keys!1874)) (and (bvsge lt!218327 #b00000000000000000000000000000000) (bvslt lt!218327 (size!15315 _keys!1874)))) (bvsge lt!218327 #b00000000000000000000000000000000) (bvslt lt!218327 (size!15315 _keys!1874)) (= (select (arr!14957 _keys!1874) lt!218327) k0!1332))))

(declare-fun e!282943 () (_ BitVec 32))

(assert (=> d!76629 (= lt!218327 e!282943)))

(declare-fun c!57781 () Bool)

(assert (=> d!76629 (= c!57781 (= (select (arr!14957 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15315 _keys!1874)) (bvslt (size!15315 _keys!1874) #b01111111111111111111111111111111))))

(assert (=> d!76629 (= (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) lt!218327)))

(declare-fun b!480878 () Bool)

(assert (=> b!480878 (= e!282943 #b00000000000000000000000000000000)))

(declare-fun b!480879 () Bool)

(assert (=> b!480879 (= e!282943 (arrayScanForKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76629 c!57781) b!480878))

(assert (= (and d!76629 (not c!57781)) b!480879))

(declare-fun m!462451 () Bool)

(assert (=> d!76629 m!462451))

(assert (=> d!76629 m!462367))

(declare-fun m!462453 () Bool)

(assert (=> b!480879 m!462453))

(assert (=> b!480731 d!76629))

(declare-fun d!76631 () Bool)

(declare-fun e!282946 () Bool)

(assert (=> d!76631 e!282946))

(declare-fun c!57784 () Bool)

(assert (=> d!76631 (= c!57784 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218330 () Unit!14078)

(declare-fun choose!1384 (array!31111 array!31109 (_ BitVec 32) (_ BitVec 32) V!19387 V!19387 (_ BitVec 64) Int) Unit!14078)

(assert (=> d!76631 (= lt!218330 (choose!1384 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (=> d!76631 (validMask!0 mask!2352)))

(assert (=> d!76631 (= (lemmaKeyInListMapIsInArray!130 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519) lt!218330)))

(declare-fun b!480884 () Bool)

(assert (=> b!480884 (= e!282946 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!480885 () Bool)

(assert (=> b!480885 (= e!282946 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!76631 c!57784) b!480884))

(assert (= (and d!76631 (not c!57784)) b!480885))

(declare-fun m!462455 () Bool)

(assert (=> d!76631 m!462455))

(assert (=> d!76631 m!462315))

(assert (=> b!480884 m!462311))

(assert (=> b!480731 d!76631))

(declare-fun d!76633 () Bool)

(assert (=> d!76633 (= (validKeyInArray!0 k0!1332) (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!480737 d!76633))

(declare-fun d!76635 () Bool)

(declare-fun res!286808 () Bool)

(declare-fun e!282951 () Bool)

(assert (=> d!76635 (=> res!286808 e!282951)))

(assert (=> d!76635 (= res!286808 (= (select (arr!14957 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76635 (= (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) e!282951)))

(declare-fun b!480890 () Bool)

(declare-fun e!282952 () Bool)

(assert (=> b!480890 (= e!282951 e!282952)))

(declare-fun res!286809 () Bool)

(assert (=> b!480890 (=> (not res!286809) (not e!282952))))

(assert (=> b!480890 (= res!286809 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15315 _keys!1874)))))

(declare-fun b!480891 () Bool)

(assert (=> b!480891 (= e!282952 (arrayContainsKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76635 (not res!286808)) b!480890))

(assert (= (and b!480890 res!286809) b!480891))

(assert (=> d!76635 m!462367))

(declare-fun m!462457 () Bool)

(assert (=> b!480891 m!462457))

(assert (=> b!480732 d!76635))

(declare-fun d!76637 () Bool)

(declare-fun res!286810 () Bool)

(declare-fun e!282955 () Bool)

(assert (=> d!76637 (=> res!286810 e!282955)))

(assert (=> d!76637 (= res!286810 (bvsge #b00000000000000000000000000000000 (size!15315 _keys!1874)))))

(assert (=> d!76637 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!282955)))

(declare-fun bm!30923 () Bool)

(declare-fun call!30926 () Bool)

(assert (=> bm!30923 (= call!30926 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!480892 () Bool)

(declare-fun e!282954 () Bool)

(assert (=> b!480892 (= e!282954 call!30926)))

(declare-fun b!480893 () Bool)

(declare-fun e!282953 () Bool)

(assert (=> b!480893 (= e!282955 e!282953)))

(declare-fun c!57785 () Bool)

(assert (=> b!480893 (= c!57785 (validKeyInArray!0 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!480894 () Bool)

(assert (=> b!480894 (= e!282953 e!282954)))

(declare-fun lt!218332 () (_ BitVec 64))

(assert (=> b!480894 (= lt!218332 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218333 () Unit!14078)

(assert (=> b!480894 (= lt!218333 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!218332 #b00000000000000000000000000000000))))

(assert (=> b!480894 (arrayContainsKey!0 _keys!1874 lt!218332 #b00000000000000000000000000000000)))

(declare-fun lt!218331 () Unit!14078)

(assert (=> b!480894 (= lt!218331 lt!218333)))

(declare-fun res!286811 () Bool)

(assert (=> b!480894 (= res!286811 (= (seekEntryOrOpen!0 (select (arr!14957 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3558 #b00000000000000000000000000000000)))))

(assert (=> b!480894 (=> (not res!286811) (not e!282954))))

(declare-fun b!480895 () Bool)

(assert (=> b!480895 (= e!282953 call!30926)))

(assert (= (and d!76637 (not res!286810)) b!480893))

(assert (= (and b!480893 c!57785) b!480894))

(assert (= (and b!480893 (not c!57785)) b!480895))

(assert (= (and b!480894 res!286811) b!480892))

(assert (= (or b!480892 b!480895) bm!30923))

(declare-fun m!462459 () Bool)

(assert (=> bm!30923 m!462459))

(assert (=> b!480893 m!462367))

(assert (=> b!480893 m!462367))

(assert (=> b!480893 m!462371))

(assert (=> b!480894 m!462367))

(declare-fun m!462461 () Bool)

(assert (=> b!480894 m!462461))

(declare-fun m!462463 () Bool)

(assert (=> b!480894 m!462463))

(assert (=> b!480894 m!462367))

(declare-fun m!462465 () Bool)

(assert (=> b!480894 m!462465))

(assert (=> b!480736 d!76637))

(declare-fun mapIsEmpty!22315 () Bool)

(declare-fun mapRes!22315 () Bool)

(assert (=> mapIsEmpty!22315 mapRes!22315))

(declare-fun b!480903 () Bool)

(declare-fun e!282961 () Bool)

(assert (=> b!480903 (= e!282961 tp_is_empty!13737)))

(declare-fun condMapEmpty!22315 () Bool)

(declare-fun mapDefault!22315 () ValueCell!6507)

(assert (=> mapNonEmpty!22309 (= condMapEmpty!22315 (= mapRest!22309 ((as const (Array (_ BitVec 32) ValueCell!6507)) mapDefault!22315)))))

(assert (=> mapNonEmpty!22309 (= tp!42951 (and e!282961 mapRes!22315))))

(declare-fun mapNonEmpty!22315 () Bool)

(declare-fun tp!42961 () Bool)

(declare-fun e!282960 () Bool)

(assert (=> mapNonEmpty!22315 (= mapRes!22315 (and tp!42961 e!282960))))

(declare-fun mapRest!22315 () (Array (_ BitVec 32) ValueCell!6507))

(declare-fun mapValue!22315 () ValueCell!6507)

(declare-fun mapKey!22315 () (_ BitVec 32))

(assert (=> mapNonEmpty!22315 (= mapRest!22309 (store mapRest!22315 mapKey!22315 mapValue!22315))))

(declare-fun b!480902 () Bool)

(assert (=> b!480902 (= e!282960 tp_is_empty!13737)))

(assert (= (and mapNonEmpty!22309 condMapEmpty!22315) mapIsEmpty!22315))

(assert (= (and mapNonEmpty!22309 (not condMapEmpty!22315)) mapNonEmpty!22315))

(assert (= (and mapNonEmpty!22315 ((_ is ValueCellFull!6507) mapValue!22315)) b!480902))

(assert (= (and mapNonEmpty!22309 ((_ is ValueCellFull!6507) mapDefault!22315)) b!480903))

(declare-fun m!462467 () Bool)

(assert (=> mapNonEmpty!22315 m!462467))

(declare-fun b_lambda!10831 () Bool)

(assert (= b_lambda!10829 (or (and start!43406 b_free!12225) b_lambda!10831)))

(check-sat (not b!480879) (not b!480794) (not d!76627) (not b!480872) (not b_next!12225) (not b!480859) (not bm!30922) b_and!21003 (not bm!30913) (not b!480783) (not d!76621) (not d!76631) tp_is_empty!13737 (not b!480845) (not b!480843) (not d!76623) (not b!480796) (not b!480786) (not b_lambda!10831) (not b!480894) (not b!480842) (not b!480784) (not b!480849) (not b!480871) (not bm!30916) (not b!480891) (not b!480858) (not b!480840) (not mapNonEmpty!22315) (not b!480884) (not bm!30914) (not b!480893) (not bm!30923) (not bm!30919) (not bm!30898) (not b!480841))
(check-sat b_and!21003 (not b_next!12225))
