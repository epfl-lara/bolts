; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43562 () Bool)

(assert start!43562)

(declare-fun b_free!12333 () Bool)

(declare-fun b_next!12333 () Bool)

(assert (=> start!43562 (= b_free!12333 (not b_next!12333))))

(declare-fun tp!43282 () Bool)

(declare-fun b_and!21111 () Bool)

(assert (=> start!43562 (= tp!43282 b_and!21111)))

(declare-fun b!482449 () Bool)

(declare-fun e!283917 () Bool)

(declare-fun tp_is_empty!13845 () Bool)

(assert (=> b!482449 (= e!283917 tp_is_empty!13845)))

(declare-fun mapIsEmpty!22477 () Bool)

(declare-fun mapRes!22477 () Bool)

(assert (=> mapIsEmpty!22477 mapRes!22477))

(declare-fun b!482450 () Bool)

(declare-fun e!283916 () Bool)

(assert (=> b!482450 (= e!283916 tp_is_empty!13845)))

(declare-fun b!482451 () Bool)

(declare-fun e!283920 () Bool)

(declare-datatypes ((array!31313 0))(
  ( (array!31314 (arr!15056 (Array (_ BitVec 32) (_ BitVec 64))) (size!15414 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31313)

(declare-fun mask!2352 () (_ BitVec 32))

(assert (=> b!482451 (= e!283920 (not (or (not (= (size!15414 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))) (bvsle #b00000000000000000000000000000000 (size!15414 _keys!1874)))))))

(declare-fun lt!218722 () (_ BitVec 32))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31313 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482451 (= lt!218722 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!283921 () Bool)

(assert (=> b!482451 e!283921))

(declare-fun c!57897 () Bool)

(assert (=> b!482451 (= c!57897 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!19531 0))(
  ( (V!19532 (val!6970 Int)) )
))
(declare-fun minValue!1458 () V!19531)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((Unit!14118 0))(
  ( (Unit!14119) )
))
(declare-fun lt!218723 () Unit!14118)

(declare-fun zeroValue!1458 () V!19531)

(declare-datatypes ((ValueCell!6561 0))(
  ( (ValueCellFull!6561 (v!9259 V!19531)) (EmptyCell!6561) )
))
(declare-datatypes ((array!31315 0))(
  ( (array!31316 (arr!15057 (Array (_ BitVec 32) ValueCell!6561)) (size!15415 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31315)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!148 (array!31313 array!31315 (_ BitVec 32) (_ BitVec 32) V!19531 V!19531 (_ BitVec 64) Int) Unit!14118)

(assert (=> b!482451 (= lt!218723 (lemmaKeyInListMapIsInArray!148 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun mapNonEmpty!22477 () Bool)

(declare-fun tp!43281 () Bool)

(assert (=> mapNonEmpty!22477 (= mapRes!22477 (and tp!43281 e!283916))))

(declare-fun mapValue!22477 () ValueCell!6561)

(declare-fun mapKey!22477 () (_ BitVec 32))

(declare-fun mapRest!22477 () (Array (_ BitVec 32) ValueCell!6561))

(assert (=> mapNonEmpty!22477 (= (arr!15057 _values!1516) (store mapRest!22477 mapKey!22477 mapValue!22477))))

(declare-fun b!482452 () Bool)

(declare-fun res!287651 () Bool)

(assert (=> b!482452 (=> (not res!287651) (not e!283920))))

(declare-datatypes ((tuple2!9148 0))(
  ( (tuple2!9149 (_1!4584 (_ BitVec 64)) (_2!4584 V!19531)) )
))
(declare-datatypes ((List!9264 0))(
  ( (Nil!9261) (Cons!9260 (h!10116 tuple2!9148) (t!15486 List!9264)) )
))
(declare-datatypes ((ListLongMap!8075 0))(
  ( (ListLongMap!8076 (toList!4053 List!9264)) )
))
(declare-fun contains!2664 (ListLongMap!8075 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2345 (array!31313 array!31315 (_ BitVec 32) (_ BitVec 32) V!19531 V!19531 (_ BitVec 32) Int) ListLongMap!8075)

(assert (=> b!482452 (= res!287651 (contains!2664 (getCurrentListMap!2345 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!482453 () Bool)

(assert (=> b!482453 (= e!283921 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482454 () Bool)

(declare-fun e!283919 () Bool)

(assert (=> b!482454 (= e!283919 (and e!283917 mapRes!22477))))

(declare-fun condMapEmpty!22477 () Bool)

(declare-fun mapDefault!22477 () ValueCell!6561)

(assert (=> b!482454 (= condMapEmpty!22477 (= (arr!15057 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6561)) mapDefault!22477)))))

(declare-fun b!482456 () Bool)

(declare-fun res!287656 () Bool)

(assert (=> b!482456 (=> (not res!287656) (not e!283920))))

(assert (=> b!482456 (= res!287656 (and (= (size!15415 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15414 _keys!1874) (size!15415 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!482457 () Bool)

(declare-fun res!287652 () Bool)

(assert (=> b!482457 (=> (not res!287652) (not e!283920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!482457 (= res!287652 (validKeyInArray!0 k0!1332))))

(declare-fun b!482458 () Bool)

(declare-fun res!287654 () Bool)

(assert (=> b!482458 (=> (not res!287654) (not e!283920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31313 (_ BitVec 32)) Bool)

(assert (=> b!482458 (= res!287654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482459 () Bool)

(declare-fun arrayContainsKey!0 (array!31313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482459 (= e!283921 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun res!287655 () Bool)

(assert (=> start!43562 (=> (not res!287655) (not e!283920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43562 (= res!287655 (validMask!0 mask!2352))))

(assert (=> start!43562 e!283920))

(assert (=> start!43562 true))

(assert (=> start!43562 tp_is_empty!13845))

(declare-fun array_inv!10838 (array!31315) Bool)

(assert (=> start!43562 (and (array_inv!10838 _values!1516) e!283919)))

(assert (=> start!43562 tp!43282))

(declare-fun array_inv!10839 (array!31313) Bool)

(assert (=> start!43562 (array_inv!10839 _keys!1874)))

(declare-fun b!482455 () Bool)

(declare-fun res!287653 () Bool)

(assert (=> b!482455 (=> (not res!287653) (not e!283920))))

(declare-datatypes ((List!9265 0))(
  ( (Nil!9262) (Cons!9261 (h!10117 (_ BitVec 64)) (t!15487 List!9265)) )
))
(declare-fun arrayNoDuplicates!0 (array!31313 (_ BitVec 32) List!9265) Bool)

(assert (=> b!482455 (= res!287653 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9262))))

(assert (= (and start!43562 res!287655) b!482456))

(assert (= (and b!482456 res!287656) b!482458))

(assert (= (and b!482458 res!287654) b!482455))

(assert (= (and b!482455 res!287653) b!482452))

(assert (= (and b!482452 res!287651) b!482457))

(assert (= (and b!482457 res!287652) b!482451))

(assert (= (and b!482451 c!57897) b!482459))

(assert (= (and b!482451 (not c!57897)) b!482453))

(assert (= (and b!482454 condMapEmpty!22477) mapIsEmpty!22477))

(assert (= (and b!482454 (not condMapEmpty!22477)) mapNonEmpty!22477))

(get-info :version)

(assert (= (and mapNonEmpty!22477 ((_ is ValueCellFull!6561) mapValue!22477)) b!482450))

(assert (= (and b!482454 ((_ is ValueCellFull!6561) mapDefault!22477)) b!482449))

(assert (= start!43562 b!482454))

(declare-fun m!463675 () Bool)

(assert (=> b!482459 m!463675))

(declare-fun m!463677 () Bool)

(assert (=> b!482455 m!463677))

(declare-fun m!463679 () Bool)

(assert (=> b!482451 m!463679))

(declare-fun m!463681 () Bool)

(assert (=> b!482451 m!463681))

(declare-fun m!463683 () Bool)

(assert (=> b!482457 m!463683))

(declare-fun m!463685 () Bool)

(assert (=> b!482458 m!463685))

(declare-fun m!463687 () Bool)

(assert (=> b!482452 m!463687))

(assert (=> b!482452 m!463687))

(declare-fun m!463689 () Bool)

(assert (=> b!482452 m!463689))

(declare-fun m!463691 () Bool)

(assert (=> mapNonEmpty!22477 m!463691))

(declare-fun m!463693 () Bool)

(assert (=> start!43562 m!463693))

(declare-fun m!463695 () Bool)

(assert (=> start!43562 m!463695))

(declare-fun m!463697 () Bool)

(assert (=> start!43562 m!463697))

(check-sat (not start!43562) (not b!482458) (not b!482457) tp_is_empty!13845 (not b!482451) (not b!482452) b_and!21111 (not mapNonEmpty!22477) (not b!482459) (not b_next!12333) (not b!482455))
(check-sat b_and!21111 (not b_next!12333))
(get-model)

(declare-fun d!76701 () Bool)

(assert (=> d!76701 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43562 d!76701))

(declare-fun d!76703 () Bool)

(assert (=> d!76703 (= (array_inv!10838 _values!1516) (bvsge (size!15415 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43562 d!76703))

(declare-fun d!76705 () Bool)

(assert (=> d!76705 (= (array_inv!10839 _keys!1874) (bvsge (size!15414 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43562 d!76705))

(declare-fun d!76707 () Bool)

(declare-fun lt!218732 () (_ BitVec 32))

(assert (=> d!76707 (and (or (bvslt lt!218732 #b00000000000000000000000000000000) (bvsge lt!218732 (size!15414 _keys!1874)) (and (bvsge lt!218732 #b00000000000000000000000000000000) (bvslt lt!218732 (size!15414 _keys!1874)))) (bvsge lt!218732 #b00000000000000000000000000000000) (bvslt lt!218732 (size!15414 _keys!1874)) (= (select (arr!15056 _keys!1874) lt!218732) k0!1332))))

(declare-fun e!283942 () (_ BitVec 32))

(assert (=> d!76707 (= lt!218732 e!283942)))

(declare-fun c!57903 () Bool)

(assert (=> d!76707 (= c!57903 (= (select (arr!15056 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76707 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15414 _keys!1874)) (bvslt (size!15414 _keys!1874) #b01111111111111111111111111111111))))

(assert (=> d!76707 (= (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) lt!218732)))

(declare-fun b!482497 () Bool)

(assert (=> b!482497 (= e!283942 #b00000000000000000000000000000000)))

(declare-fun b!482498 () Bool)

(assert (=> b!482498 (= e!283942 (arrayScanForKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76707 c!57903) b!482497))

(assert (= (and d!76707 (not c!57903)) b!482498))

(declare-fun m!463723 () Bool)

(assert (=> d!76707 m!463723))

(declare-fun m!463725 () Bool)

(assert (=> d!76707 m!463725))

(declare-fun m!463727 () Bool)

(assert (=> b!482498 m!463727))

(assert (=> b!482451 d!76707))

(declare-fun d!76709 () Bool)

(declare-fun e!283945 () Bool)

(assert (=> d!76709 e!283945))

(declare-fun c!57906 () Bool)

(assert (=> d!76709 (= c!57906 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218735 () Unit!14118)

(declare-fun choose!1386 (array!31313 array!31315 (_ BitVec 32) (_ BitVec 32) V!19531 V!19531 (_ BitVec 64) Int) Unit!14118)

(assert (=> d!76709 (= lt!218735 (choose!1386 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (=> d!76709 (validMask!0 mask!2352)))

(assert (=> d!76709 (= (lemmaKeyInListMapIsInArray!148 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519) lt!218735)))

(declare-fun b!482503 () Bool)

(assert (=> b!482503 (= e!283945 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!482504 () Bool)

(assert (=> b!482504 (= e!283945 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!76709 c!57906) b!482503))

(assert (= (and d!76709 (not c!57906)) b!482504))

(declare-fun m!463729 () Bool)

(assert (=> d!76709 m!463729))

(assert (=> d!76709 m!463693))

(assert (=> b!482503 m!463675))

(assert (=> b!482451 d!76709))

(declare-fun b!482515 () Bool)

(declare-fun e!283957 () Bool)

(declare-fun contains!2666 (List!9265 (_ BitVec 64)) Bool)

(assert (=> b!482515 (= e!283957 (contains!2666 Nil!9262 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76711 () Bool)

(declare-fun res!287683 () Bool)

(declare-fun e!283956 () Bool)

(assert (=> d!76711 (=> res!287683 e!283956)))

(assert (=> d!76711 (= res!287683 (bvsge #b00000000000000000000000000000000 (size!15414 _keys!1874)))))

(assert (=> d!76711 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9262) e!283956)))

(declare-fun bm!30954 () Bool)

(declare-fun call!30957 () Bool)

(declare-fun c!57909 () Bool)

(assert (=> bm!30954 (= call!30957 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57909 (Cons!9261 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000) Nil!9262) Nil!9262)))))

(declare-fun b!482516 () Bool)

(declare-fun e!283954 () Bool)

(declare-fun e!283955 () Bool)

(assert (=> b!482516 (= e!283954 e!283955)))

(assert (=> b!482516 (= c!57909 (validKeyInArray!0 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!482517 () Bool)

(assert (=> b!482517 (= e!283955 call!30957)))

(declare-fun b!482518 () Bool)

(assert (=> b!482518 (= e!283955 call!30957)))

(declare-fun b!482519 () Bool)

(assert (=> b!482519 (= e!283956 e!283954)))

(declare-fun res!287682 () Bool)

(assert (=> b!482519 (=> (not res!287682) (not e!283954))))

(assert (=> b!482519 (= res!287682 (not e!283957))))

(declare-fun res!287681 () Bool)

(assert (=> b!482519 (=> (not res!287681) (not e!283957))))

(assert (=> b!482519 (= res!287681 (validKeyInArray!0 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000)))))

(assert (= (and d!76711 (not res!287683)) b!482519))

(assert (= (and b!482519 res!287681) b!482515))

(assert (= (and b!482519 res!287682) b!482516))

(assert (= (and b!482516 c!57909) b!482517))

(assert (= (and b!482516 (not c!57909)) b!482518))

(assert (= (or b!482517 b!482518) bm!30954))

(assert (=> b!482515 m!463725))

(assert (=> b!482515 m!463725))

(declare-fun m!463731 () Bool)

(assert (=> b!482515 m!463731))

(assert (=> bm!30954 m!463725))

(declare-fun m!463733 () Bool)

(assert (=> bm!30954 m!463733))

(assert (=> b!482516 m!463725))

(assert (=> b!482516 m!463725))

(declare-fun m!463735 () Bool)

(assert (=> b!482516 m!463735))

(assert (=> b!482519 m!463725))

(assert (=> b!482519 m!463725))

(assert (=> b!482519 m!463735))

(assert (=> b!482455 d!76711))

(declare-fun d!76713 () Bool)

(declare-fun res!287688 () Bool)

(declare-fun e!283962 () Bool)

(assert (=> d!76713 (=> res!287688 e!283962)))

(assert (=> d!76713 (= res!287688 (= (select (arr!15056 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76713 (= (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) e!283962)))

(declare-fun b!482524 () Bool)

(declare-fun e!283963 () Bool)

(assert (=> b!482524 (= e!283962 e!283963)))

(declare-fun res!287689 () Bool)

(assert (=> b!482524 (=> (not res!287689) (not e!283963))))

(assert (=> b!482524 (= res!287689 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15414 _keys!1874)))))

(declare-fun b!482525 () Bool)

(assert (=> b!482525 (= e!283963 (arrayContainsKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76713 (not res!287688)) b!482524))

(assert (= (and b!482524 res!287689) b!482525))

(assert (=> d!76713 m!463725))

(declare-fun m!463737 () Bool)

(assert (=> b!482525 m!463737))

(assert (=> b!482459 d!76713))

(declare-fun b!482534 () Bool)

(declare-fun e!283970 () Bool)

(declare-fun call!30960 () Bool)

(assert (=> b!482534 (= e!283970 call!30960)))

(declare-fun b!482535 () Bool)

(declare-fun e!283971 () Bool)

(assert (=> b!482535 (= e!283970 e!283971)))

(declare-fun lt!218744 () (_ BitVec 64))

(assert (=> b!482535 (= lt!218744 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218743 () Unit!14118)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31313 (_ BitVec 64) (_ BitVec 32)) Unit!14118)

(assert (=> b!482535 (= lt!218743 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!218744 #b00000000000000000000000000000000))))

(assert (=> b!482535 (arrayContainsKey!0 _keys!1874 lt!218744 #b00000000000000000000000000000000)))

(declare-fun lt!218742 () Unit!14118)

(assert (=> b!482535 (= lt!218742 lt!218743)))

(declare-fun res!287694 () Bool)

(declare-datatypes ((SeekEntryResult!3560 0))(
  ( (MissingZero!3560 (index!16419 (_ BitVec 32))) (Found!3560 (index!16420 (_ BitVec 32))) (Intermediate!3560 (undefined!4372 Bool) (index!16421 (_ BitVec 32)) (x!45325 (_ BitVec 32))) (Undefined!3560) (MissingVacant!3560 (index!16422 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31313 (_ BitVec 32)) SeekEntryResult!3560)

(assert (=> b!482535 (= res!287694 (= (seekEntryOrOpen!0 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3560 #b00000000000000000000000000000000)))))

(assert (=> b!482535 (=> (not res!287694) (not e!283971))))

(declare-fun b!482537 () Bool)

(declare-fun e!283972 () Bool)

(assert (=> b!482537 (= e!283972 e!283970)))

(declare-fun c!57912 () Bool)

(assert (=> b!482537 (= c!57912 (validKeyInArray!0 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!30957 () Bool)

(assert (=> bm!30957 (= call!30960 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!482536 () Bool)

(assert (=> b!482536 (= e!283971 call!30960)))

(declare-fun d!76715 () Bool)

(declare-fun res!287695 () Bool)

(assert (=> d!76715 (=> res!287695 e!283972)))

(assert (=> d!76715 (= res!287695 (bvsge #b00000000000000000000000000000000 (size!15414 _keys!1874)))))

(assert (=> d!76715 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!283972)))

(assert (= (and d!76715 (not res!287695)) b!482537))

(assert (= (and b!482537 c!57912) b!482535))

(assert (= (and b!482537 (not c!57912)) b!482534))

(assert (= (and b!482535 res!287694) b!482536))

(assert (= (or b!482536 b!482534) bm!30957))

(assert (=> b!482535 m!463725))

(declare-fun m!463739 () Bool)

(assert (=> b!482535 m!463739))

(declare-fun m!463741 () Bool)

(assert (=> b!482535 m!463741))

(assert (=> b!482535 m!463725))

(declare-fun m!463743 () Bool)

(assert (=> b!482535 m!463743))

(assert (=> b!482537 m!463725))

(assert (=> b!482537 m!463725))

(assert (=> b!482537 m!463735))

(declare-fun m!463745 () Bool)

(assert (=> bm!30957 m!463745))

(assert (=> b!482458 d!76715))

(declare-fun d!76717 () Bool)

(declare-fun e!283977 () Bool)

(assert (=> d!76717 e!283977))

(declare-fun res!287698 () Bool)

(assert (=> d!76717 (=> res!287698 e!283977)))

(declare-fun lt!218755 () Bool)

(assert (=> d!76717 (= res!287698 (not lt!218755))))

(declare-fun lt!218754 () Bool)

(assert (=> d!76717 (= lt!218755 lt!218754)))

(declare-fun lt!218756 () Unit!14118)

(declare-fun e!283978 () Unit!14118)

(assert (=> d!76717 (= lt!218756 e!283978)))

(declare-fun c!57915 () Bool)

(assert (=> d!76717 (= c!57915 lt!218754)))

(declare-fun containsKey!357 (List!9264 (_ BitVec 64)) Bool)

(assert (=> d!76717 (= lt!218754 (containsKey!357 (toList!4053 (getCurrentListMap!2345 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(assert (=> d!76717 (= (contains!2664 (getCurrentListMap!2345 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332) lt!218755)))

(declare-fun b!482544 () Bool)

(declare-fun lt!218753 () Unit!14118)

(assert (=> b!482544 (= e!283978 lt!218753)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!306 (List!9264 (_ BitVec 64)) Unit!14118)

(assert (=> b!482544 (= lt!218753 (lemmaContainsKeyImpliesGetValueByKeyDefined!306 (toList!4053 (getCurrentListMap!2345 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-datatypes ((Option!401 0))(
  ( (Some!400 (v!9261 V!19531)) (None!399) )
))
(declare-fun isDefined!307 (Option!401) Bool)

(declare-fun getValueByKey!395 (List!9264 (_ BitVec 64)) Option!401)

(assert (=> b!482544 (isDefined!307 (getValueByKey!395 (toList!4053 (getCurrentListMap!2345 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-fun b!482545 () Bool)

(declare-fun Unit!14120 () Unit!14118)

(assert (=> b!482545 (= e!283978 Unit!14120)))

(declare-fun b!482546 () Bool)

(assert (=> b!482546 (= e!283977 (isDefined!307 (getValueByKey!395 (toList!4053 (getCurrentListMap!2345 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332)))))

(assert (= (and d!76717 c!57915) b!482544))

(assert (= (and d!76717 (not c!57915)) b!482545))

(assert (= (and d!76717 (not res!287698)) b!482546))

(declare-fun m!463747 () Bool)

(assert (=> d!76717 m!463747))

(declare-fun m!463749 () Bool)

(assert (=> b!482544 m!463749))

(declare-fun m!463751 () Bool)

(assert (=> b!482544 m!463751))

(assert (=> b!482544 m!463751))

(declare-fun m!463753 () Bool)

(assert (=> b!482544 m!463753))

(assert (=> b!482546 m!463751))

(assert (=> b!482546 m!463751))

(assert (=> b!482546 m!463753))

(assert (=> b!482452 d!76717))

(declare-fun b!482589 () Bool)

(declare-fun e!284017 () ListLongMap!8075)

(declare-fun e!284005 () ListLongMap!8075)

(assert (=> b!482589 (= e!284017 e!284005)))

(declare-fun c!57931 () Bool)

(assert (=> b!482589 (= c!57931 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!76719 () Bool)

(declare-fun e!284013 () Bool)

(assert (=> d!76719 e!284013))

(declare-fun res!287721 () Bool)

(assert (=> d!76719 (=> (not res!287721) (not e!284013))))

(assert (=> d!76719 (= res!287721 (or (bvsge #b00000000000000000000000000000000 (size!15414 _keys!1874)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15414 _keys!1874)))))))

(declare-fun lt!218805 () ListLongMap!8075)

(declare-fun lt!218810 () ListLongMap!8075)

(assert (=> d!76719 (= lt!218805 lt!218810)))

(declare-fun lt!218815 () Unit!14118)

(declare-fun e!284014 () Unit!14118)

(assert (=> d!76719 (= lt!218815 e!284014)))

(declare-fun c!57933 () Bool)

(declare-fun e!284007 () Bool)

(assert (=> d!76719 (= c!57933 e!284007)))

(declare-fun res!287718 () Bool)

(assert (=> d!76719 (=> (not res!287718) (not e!284007))))

(assert (=> d!76719 (= res!287718 (bvslt #b00000000000000000000000000000000 (size!15414 _keys!1874)))))

(assert (=> d!76719 (= lt!218810 e!284017)))

(declare-fun c!57932 () Bool)

(assert (=> d!76719 (= c!57932 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!76719 (validMask!0 mask!2352)))

(assert (=> d!76719 (= (getCurrentListMap!2345 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) lt!218805)))

(declare-fun bm!30972 () Bool)

(declare-fun call!30978 () Bool)

(assert (=> bm!30972 (= call!30978 (contains!2664 lt!218805 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!482590 () Bool)

(assert (=> b!482590 (= e!284007 (validKeyInArray!0 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!30973 () Bool)

(declare-fun call!30981 () ListLongMap!8075)

(declare-fun call!30975 () ListLongMap!8075)

(assert (=> bm!30973 (= call!30981 call!30975)))

(declare-fun bm!30974 () Bool)

(declare-fun call!30977 () ListLongMap!8075)

(declare-fun getCurrentListMapNoExtraKeys!2116 (array!31313 array!31315 (_ BitVec 32) (_ BitVec 32) V!19531 V!19531 (_ BitVec 32) Int) ListLongMap!8075)

(assert (=> bm!30974 (= call!30977 (getCurrentListMapNoExtraKeys!2116 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun bm!30975 () Bool)

(declare-fun call!30979 () Bool)

(assert (=> bm!30975 (= call!30979 (contains!2664 lt!218805 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!482591 () Bool)

(declare-fun e!284011 () Bool)

(declare-fun apply!343 (ListLongMap!8075 (_ BitVec 64)) V!19531)

(assert (=> b!482591 (= e!284011 (= (apply!343 lt!218805 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1458))))

(declare-fun bm!30976 () Bool)

(declare-fun call!30980 () ListLongMap!8075)

(declare-fun call!30976 () ListLongMap!8075)

(assert (=> bm!30976 (= call!30980 call!30976)))

(declare-fun e!284006 () Bool)

(declare-fun b!482592 () Bool)

(declare-fun get!7301 (ValueCell!6561 V!19531) V!19531)

(declare-fun dynLambda!953 (Int (_ BitVec 64)) V!19531)

(assert (=> b!482592 (= e!284006 (= (apply!343 lt!218805 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000)) (get!7301 (select (arr!15057 _values!1516) #b00000000000000000000000000000000) (dynLambda!953 defaultEntry!1519 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!482592 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15415 _values!1516)))))

(assert (=> b!482592 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15414 _keys!1874)))))

(declare-fun b!482593 () Bool)

(declare-fun e!284015 () Bool)

(assert (=> b!482593 (= e!284013 e!284015)))

(declare-fun c!57928 () Bool)

(assert (=> b!482593 (= c!57928 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!482594 () Bool)

(declare-fun lt!218801 () Unit!14118)

(assert (=> b!482594 (= e!284014 lt!218801)))

(declare-fun lt!218809 () ListLongMap!8075)

(assert (=> b!482594 (= lt!218809 (getCurrentListMapNoExtraKeys!2116 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218814 () (_ BitVec 64))

(assert (=> b!482594 (= lt!218814 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218821 () (_ BitVec 64))

(assert (=> b!482594 (= lt!218821 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218817 () Unit!14118)

(declare-fun addStillContains!301 (ListLongMap!8075 (_ BitVec 64) V!19531 (_ BitVec 64)) Unit!14118)

(assert (=> b!482594 (= lt!218817 (addStillContains!301 lt!218809 lt!218814 zeroValue!1458 lt!218821))))

(declare-fun +!1746 (ListLongMap!8075 tuple2!9148) ListLongMap!8075)

(assert (=> b!482594 (contains!2664 (+!1746 lt!218809 (tuple2!9149 lt!218814 zeroValue!1458)) lt!218821)))

(declare-fun lt!218811 () Unit!14118)

(assert (=> b!482594 (= lt!218811 lt!218817)))

(declare-fun lt!218816 () ListLongMap!8075)

(assert (=> b!482594 (= lt!218816 (getCurrentListMapNoExtraKeys!2116 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218812 () (_ BitVec 64))

(assert (=> b!482594 (= lt!218812 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218819 () (_ BitVec 64))

(assert (=> b!482594 (= lt!218819 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218802 () Unit!14118)

(declare-fun addApplyDifferent!301 (ListLongMap!8075 (_ BitVec 64) V!19531 (_ BitVec 64)) Unit!14118)

(assert (=> b!482594 (= lt!218802 (addApplyDifferent!301 lt!218816 lt!218812 minValue!1458 lt!218819))))

(assert (=> b!482594 (= (apply!343 (+!1746 lt!218816 (tuple2!9149 lt!218812 minValue!1458)) lt!218819) (apply!343 lt!218816 lt!218819))))

(declare-fun lt!218806 () Unit!14118)

(assert (=> b!482594 (= lt!218806 lt!218802)))

(declare-fun lt!218813 () ListLongMap!8075)

(assert (=> b!482594 (= lt!218813 (getCurrentListMapNoExtraKeys!2116 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218820 () (_ BitVec 64))

(assert (=> b!482594 (= lt!218820 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218818 () (_ BitVec 64))

(assert (=> b!482594 (= lt!218818 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218808 () Unit!14118)

(assert (=> b!482594 (= lt!218808 (addApplyDifferent!301 lt!218813 lt!218820 zeroValue!1458 lt!218818))))

(assert (=> b!482594 (= (apply!343 (+!1746 lt!218813 (tuple2!9149 lt!218820 zeroValue!1458)) lt!218818) (apply!343 lt!218813 lt!218818))))

(declare-fun lt!218822 () Unit!14118)

(assert (=> b!482594 (= lt!218822 lt!218808)))

(declare-fun lt!218804 () ListLongMap!8075)

(assert (=> b!482594 (= lt!218804 (getCurrentListMapNoExtraKeys!2116 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218803 () (_ BitVec 64))

(assert (=> b!482594 (= lt!218803 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218807 () (_ BitVec 64))

(assert (=> b!482594 (= lt!218807 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> b!482594 (= lt!218801 (addApplyDifferent!301 lt!218804 lt!218803 minValue!1458 lt!218807))))

(assert (=> b!482594 (= (apply!343 (+!1746 lt!218804 (tuple2!9149 lt!218803 minValue!1458)) lt!218807) (apply!343 lt!218804 lt!218807))))

(declare-fun b!482595 () Bool)

(declare-fun e!284008 () Bool)

(assert (=> b!482595 (= e!284008 (not call!30978))))

(declare-fun b!482596 () Bool)

(assert (=> b!482596 (= e!284005 call!30981)))

(declare-fun b!482597 () Bool)

(assert (=> b!482597 (= e!284017 (+!1746 call!30975 (tuple2!9149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458)))))

(declare-fun b!482598 () Bool)

(declare-fun e!284012 () Bool)

(assert (=> b!482598 (= e!284012 (validKeyInArray!0 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!482599 () Bool)

(assert (=> b!482599 (= e!284015 (not call!30979))))

(declare-fun b!482600 () Bool)

(declare-fun e!284010 () Bool)

(assert (=> b!482600 (= e!284010 (= (apply!343 lt!218805 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1458))))

(declare-fun b!482601 () Bool)

(declare-fun e!284016 () ListLongMap!8075)

(assert (=> b!482601 (= e!284016 call!30980)))

(declare-fun b!482602 () Bool)

(assert (=> b!482602 (= e!284008 e!284010)))

(declare-fun res!287717 () Bool)

(assert (=> b!482602 (= res!287717 call!30978)))

(assert (=> b!482602 (=> (not res!287717) (not e!284010))))

(declare-fun b!482603 () Bool)

(declare-fun res!287719 () Bool)

(assert (=> b!482603 (=> (not res!287719) (not e!284013))))

(declare-fun e!284009 () Bool)

(assert (=> b!482603 (= res!287719 e!284009)))

(declare-fun res!287720 () Bool)

(assert (=> b!482603 (=> res!287720 e!284009)))

(assert (=> b!482603 (= res!287720 (not e!284012))))

(declare-fun res!287724 () Bool)

(assert (=> b!482603 (=> (not res!287724) (not e!284012))))

(assert (=> b!482603 (= res!287724 (bvslt #b00000000000000000000000000000000 (size!15414 _keys!1874)))))

(declare-fun b!482604 () Bool)

(declare-fun c!57930 () Bool)

(assert (=> b!482604 (= c!57930 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!482604 (= e!284005 e!284016)))

(declare-fun b!482605 () Bool)

(declare-fun Unit!14121 () Unit!14118)

(assert (=> b!482605 (= e!284014 Unit!14121)))

(declare-fun b!482606 () Bool)

(assert (=> b!482606 (= e!284009 e!284006)))

(declare-fun res!287722 () Bool)

(assert (=> b!482606 (=> (not res!287722) (not e!284006))))

(assert (=> b!482606 (= res!287722 (contains!2664 lt!218805 (select (arr!15056 _keys!1874) #b00000000000000000000000000000000)))))

(assert (=> b!482606 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15414 _keys!1874)))))

(declare-fun bm!30977 () Bool)

(assert (=> bm!30977 (= call!30975 (+!1746 (ite c!57932 call!30977 (ite c!57931 call!30976 call!30980)) (ite (or c!57932 c!57931) (tuple2!9149 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1458) (tuple2!9149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458))))))

(declare-fun bm!30978 () Bool)

(assert (=> bm!30978 (= call!30976 call!30977)))

(declare-fun b!482607 () Bool)

(assert (=> b!482607 (= e!284016 call!30981)))

(declare-fun b!482608 () Bool)

(assert (=> b!482608 (= e!284015 e!284011)))

(declare-fun res!287723 () Bool)

(assert (=> b!482608 (= res!287723 call!30979)))

(assert (=> b!482608 (=> (not res!287723) (not e!284011))))

(declare-fun b!482609 () Bool)

(declare-fun res!287725 () Bool)

(assert (=> b!482609 (=> (not res!287725) (not e!284013))))

(assert (=> b!482609 (= res!287725 e!284008)))

(declare-fun c!57929 () Bool)

(assert (=> b!482609 (= c!57929 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!76719 c!57932) b!482597))

(assert (= (and d!76719 (not c!57932)) b!482589))

(assert (= (and b!482589 c!57931) b!482596))

(assert (= (and b!482589 (not c!57931)) b!482604))

(assert (= (and b!482604 c!57930) b!482607))

(assert (= (and b!482604 (not c!57930)) b!482601))

(assert (= (or b!482607 b!482601) bm!30976))

(assert (= (or b!482596 bm!30976) bm!30978))

(assert (= (or b!482596 b!482607) bm!30973))

(assert (= (or b!482597 bm!30978) bm!30974))

(assert (= (or b!482597 bm!30973) bm!30977))

(assert (= (and d!76719 res!287718) b!482590))

(assert (= (and d!76719 c!57933) b!482594))

(assert (= (and d!76719 (not c!57933)) b!482605))

(assert (= (and d!76719 res!287721) b!482603))

(assert (= (and b!482603 res!287724) b!482598))

(assert (= (and b!482603 (not res!287720)) b!482606))

(assert (= (and b!482606 res!287722) b!482592))

(assert (= (and b!482603 res!287719) b!482609))

(assert (= (and b!482609 c!57929) b!482602))

(assert (= (and b!482609 (not c!57929)) b!482595))

(assert (= (and b!482602 res!287717) b!482600))

(assert (= (or b!482602 b!482595) bm!30972))

(assert (= (and b!482609 res!287725) b!482593))

(assert (= (and b!482593 c!57928) b!482608))

(assert (= (and b!482593 (not c!57928)) b!482599))

(assert (= (and b!482608 res!287723) b!482591))

(assert (= (or b!482608 b!482599) bm!30975))

(declare-fun b_lambda!10837 () Bool)

(assert (=> (not b_lambda!10837) (not b!482592)))

(declare-fun t!15491 () Bool)

(declare-fun tb!4175 () Bool)

(assert (=> (and start!43562 (= defaultEntry!1519 defaultEntry!1519) t!15491) tb!4175))

(declare-fun result!7777 () Bool)

(assert (=> tb!4175 (= result!7777 tp_is_empty!13845)))

(assert (=> b!482592 t!15491))

(declare-fun b_and!21115 () Bool)

(assert (= b_and!21111 (and (=> t!15491 result!7777) b_and!21115)))

(declare-fun m!463755 () Bool)

(assert (=> bm!30977 m!463755))

(declare-fun m!463757 () Bool)

(assert (=> bm!30974 m!463757))

(declare-fun m!463759 () Bool)

(assert (=> b!482600 m!463759))

(declare-fun m!463761 () Bool)

(assert (=> b!482597 m!463761))

(declare-fun m!463763 () Bool)

(assert (=> bm!30975 m!463763))

(assert (=> b!482598 m!463725))

(assert (=> b!482598 m!463725))

(assert (=> b!482598 m!463735))

(declare-fun m!463765 () Bool)

(assert (=> b!482591 m!463765))

(declare-fun m!463767 () Bool)

(assert (=> bm!30972 m!463767))

(declare-fun m!463769 () Bool)

(assert (=> b!482594 m!463769))

(assert (=> b!482594 m!463725))

(declare-fun m!463771 () Bool)

(assert (=> b!482594 m!463771))

(declare-fun m!463773 () Bool)

(assert (=> b!482594 m!463773))

(declare-fun m!463775 () Bool)

(assert (=> b!482594 m!463775))

(declare-fun m!463777 () Bool)

(assert (=> b!482594 m!463777))

(declare-fun m!463779 () Bool)

(assert (=> b!482594 m!463779))

(declare-fun m!463781 () Bool)

(assert (=> b!482594 m!463781))

(declare-fun m!463783 () Bool)

(assert (=> b!482594 m!463783))

(declare-fun m!463785 () Bool)

(assert (=> b!482594 m!463785))

(assert (=> b!482594 m!463783))

(declare-fun m!463787 () Bool)

(assert (=> b!482594 m!463787))

(declare-fun m!463789 () Bool)

(assert (=> b!482594 m!463789))

(declare-fun m!463791 () Bool)

(assert (=> b!482594 m!463791))

(assert (=> b!482594 m!463791))

(declare-fun m!463793 () Bool)

(assert (=> b!482594 m!463793))

(assert (=> b!482594 m!463773))

(assert (=> b!482594 m!463777))

(assert (=> b!482594 m!463757))

(declare-fun m!463795 () Bool)

(assert (=> b!482594 m!463795))

(declare-fun m!463797 () Bool)

(assert (=> b!482594 m!463797))

(assert (=> b!482606 m!463725))

(assert (=> b!482606 m!463725))

(declare-fun m!463799 () Bool)

(assert (=> b!482606 m!463799))

(assert (=> b!482592 m!463725))

(declare-fun m!463801 () Bool)

(assert (=> b!482592 m!463801))

(assert (=> b!482592 m!463801))

(declare-fun m!463803 () Bool)

(assert (=> b!482592 m!463803))

(declare-fun m!463805 () Bool)

(assert (=> b!482592 m!463805))

(assert (=> b!482592 m!463803))

(assert (=> b!482592 m!463725))

(declare-fun m!463807 () Bool)

(assert (=> b!482592 m!463807))

(assert (=> d!76719 m!463693))

(assert (=> b!482590 m!463725))

(assert (=> b!482590 m!463725))

(assert (=> b!482590 m!463735))

(assert (=> b!482452 d!76719))

(declare-fun d!76721 () Bool)

(assert (=> d!76721 (= (validKeyInArray!0 k0!1332) (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!482457 d!76721))

(declare-fun condMapEmpty!22483 () Bool)

(declare-fun mapDefault!22483 () ValueCell!6561)

(assert (=> mapNonEmpty!22477 (= condMapEmpty!22483 (= mapRest!22477 ((as const (Array (_ BitVec 32) ValueCell!6561)) mapDefault!22483)))))

(declare-fun e!284022 () Bool)

(declare-fun mapRes!22483 () Bool)

(assert (=> mapNonEmpty!22477 (= tp!43281 (and e!284022 mapRes!22483))))

(declare-fun b!482618 () Bool)

(declare-fun e!284023 () Bool)

(assert (=> b!482618 (= e!284023 tp_is_empty!13845)))

(declare-fun mapNonEmpty!22483 () Bool)

(declare-fun tp!43291 () Bool)

(assert (=> mapNonEmpty!22483 (= mapRes!22483 (and tp!43291 e!284023))))

(declare-fun mapKey!22483 () (_ BitVec 32))

(declare-fun mapValue!22483 () ValueCell!6561)

(declare-fun mapRest!22483 () (Array (_ BitVec 32) ValueCell!6561))

(assert (=> mapNonEmpty!22483 (= mapRest!22477 (store mapRest!22483 mapKey!22483 mapValue!22483))))

(declare-fun mapIsEmpty!22483 () Bool)

(assert (=> mapIsEmpty!22483 mapRes!22483))

(declare-fun b!482619 () Bool)

(assert (=> b!482619 (= e!284022 tp_is_empty!13845)))

(assert (= (and mapNonEmpty!22477 condMapEmpty!22483) mapIsEmpty!22483))

(assert (= (and mapNonEmpty!22477 (not condMapEmpty!22483)) mapNonEmpty!22483))

(assert (= (and mapNonEmpty!22483 ((_ is ValueCellFull!6561) mapValue!22483)) b!482618))

(assert (= (and mapNonEmpty!22477 ((_ is ValueCellFull!6561) mapDefault!22483)) b!482619))

(declare-fun m!463809 () Bool)

(assert (=> mapNonEmpty!22483 m!463809))

(declare-fun b_lambda!10839 () Bool)

(assert (= b_lambda!10837 (or (and start!43562 b_free!12333) b_lambda!10839)))

(check-sat (not d!76717) (not b!482592) (not d!76709) (not b!482594) (not b!482606) (not bm!30974) (not bm!30975) (not b!482546) (not b!482544) (not bm!30972) b_and!21115 (not b!482537) (not b!482498) (not b!482516) (not bm!30954) (not b!482519) (not b!482600) (not bm!30957) tp_is_empty!13845 (not b!482597) (not b!482515) (not mapNonEmpty!22483) (not bm!30977) (not b_lambda!10839) (not b!482525) (not b_next!12333) (not b!482535) (not b!482591) (not d!76719) (not b!482590) (not b!482503) (not b!482598))
(check-sat b_and!21115 (not b_next!12333))
