; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40550 () Bool)

(assert start!40550)

(declare-fun b_free!10569 () Bool)

(declare-fun b_next!10569 () Bool)

(assert (=> start!40550 (= b_free!10569 (not b_next!10569))))

(declare-fun tp!37524 () Bool)

(declare-fun b_and!18587 () Bool)

(assert (=> start!40550 (= tp!37524 b_and!18587)))

(declare-datatypes ((array!27581 0))(
  ( (array!27582 (arr!13234 (Array (_ BitVec 32) (_ BitVec 64))) (size!13586 (_ BitVec 32))) )
))
(declare-fun lt!203820 () array!27581)

(declare-datatypes ((V!16981 0))(
  ( (V!16982 (val!5998 Int)) )
))
(declare-fun minValue!515 () V!16981)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5610 0))(
  ( (ValueCellFull!5610 (v!8249 V!16981)) (EmptyCell!5610) )
))
(declare-datatypes ((array!27583 0))(
  ( (array!27584 (arr!13235 (Array (_ BitVec 32) ValueCell!5610)) (size!13587 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27583)

(declare-fun b!446677 () Bool)

(declare-fun zeroValue!515 () V!16981)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun e!262364 () Bool)

(declare-fun v!412 () V!16981)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!27581)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7788 0))(
  ( (tuple2!7789 (_1!3904 (_ BitVec 64)) (_2!3904 V!16981)) )
))
(declare-datatypes ((List!7899 0))(
  ( (Nil!7896) (Cons!7895 (h!8751 tuple2!7788) (t!13667 List!7899)) )
))
(declare-datatypes ((ListLongMap!6715 0))(
  ( (ListLongMap!6716 (toList!3373 List!7899)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1553 (array!27581 array!27583 (_ BitVec 32) (_ BitVec 32) V!16981 V!16981 (_ BitVec 32) Int) ListLongMap!6715)

(assert (=> b!446677 (= e!262364 (not (= (getCurrentListMapNoExtraKeys!1553 lt!203820 (array!27584 (store (arr!13235 _values!549) i!563 (ValueCellFull!5610 v!412)) (size!13587 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) (getCurrentListMapNoExtraKeys!1553 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))))

(declare-fun b!446678 () Bool)

(declare-fun res!265281 () Bool)

(declare-fun e!262366 () Bool)

(assert (=> b!446678 (=> (not res!265281) (not e!262366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446678 (= res!265281 (validMask!0 mask!1025))))

(declare-fun b!446679 () Bool)

(assert (=> b!446679 (= e!262366 e!262364)))

(declare-fun res!265276 () Bool)

(assert (=> b!446679 (=> (not res!265276) (not e!262364))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27581 (_ BitVec 32)) Bool)

(assert (=> b!446679 (= res!265276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203820 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!446679 (= lt!203820 (array!27582 (store (arr!13234 _keys!709) i!563 k0!794) (size!13586 _keys!709)))))

(declare-fun b!446680 () Bool)

(declare-fun res!265282 () Bool)

(assert (=> b!446680 (=> (not res!265282) (not e!262366))))

(assert (=> b!446680 (= res!265282 (or (= (select (arr!13234 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13234 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446681 () Bool)

(declare-fun e!262369 () Bool)

(declare-fun tp_is_empty!11907 () Bool)

(assert (=> b!446681 (= e!262369 tp_is_empty!11907)))

(declare-fun b!446682 () Bool)

(declare-fun e!262365 () Bool)

(declare-fun mapRes!19491 () Bool)

(assert (=> b!446682 (= e!262365 (and e!262369 mapRes!19491))))

(declare-fun condMapEmpty!19491 () Bool)

(declare-fun mapDefault!19491 () ValueCell!5610)

(assert (=> b!446682 (= condMapEmpty!19491 (= (arr!13235 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5610)) mapDefault!19491)))))

(declare-fun mapIsEmpty!19491 () Bool)

(assert (=> mapIsEmpty!19491 mapRes!19491))

(declare-fun res!265275 () Bool)

(assert (=> start!40550 (=> (not res!265275) (not e!262366))))

(assert (=> start!40550 (= res!265275 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13586 _keys!709))))))

(assert (=> start!40550 e!262366))

(assert (=> start!40550 tp_is_empty!11907))

(assert (=> start!40550 tp!37524))

(assert (=> start!40550 true))

(declare-fun array_inv!9584 (array!27583) Bool)

(assert (=> start!40550 (and (array_inv!9584 _values!549) e!262365)))

(declare-fun array_inv!9585 (array!27581) Bool)

(assert (=> start!40550 (array_inv!9585 _keys!709)))

(declare-fun b!446683 () Bool)

(declare-fun res!265277 () Bool)

(assert (=> b!446683 (=> (not res!265277) (not e!262364))))

(assert (=> b!446683 (= res!265277 (and (bvsgt from!863 i!563) (bvsgt (bvadd #b00000000000000000000000000000001 from!863) (size!13586 _keys!709))))))

(declare-fun mapNonEmpty!19491 () Bool)

(declare-fun tp!37523 () Bool)

(declare-fun e!262367 () Bool)

(assert (=> mapNonEmpty!19491 (= mapRes!19491 (and tp!37523 e!262367))))

(declare-fun mapValue!19491 () ValueCell!5610)

(declare-fun mapKey!19491 () (_ BitVec 32))

(declare-fun mapRest!19491 () (Array (_ BitVec 32) ValueCell!5610))

(assert (=> mapNonEmpty!19491 (= (arr!13235 _values!549) (store mapRest!19491 mapKey!19491 mapValue!19491))))

(declare-fun b!446684 () Bool)

(declare-fun res!265278 () Bool)

(assert (=> b!446684 (=> (not res!265278) (not e!262364))))

(declare-datatypes ((List!7900 0))(
  ( (Nil!7897) (Cons!7896 (h!8752 (_ BitVec 64)) (t!13668 List!7900)) )
))
(declare-fun arrayNoDuplicates!0 (array!27581 (_ BitVec 32) List!7900) Bool)

(assert (=> b!446684 (= res!265278 (arrayNoDuplicates!0 lt!203820 #b00000000000000000000000000000000 Nil!7897))))

(declare-fun b!446685 () Bool)

(declare-fun res!265273 () Bool)

(assert (=> b!446685 (=> (not res!265273) (not e!262366))))

(assert (=> b!446685 (= res!265273 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13586 _keys!709))))))

(declare-fun b!446686 () Bool)

(declare-fun res!265284 () Bool)

(assert (=> b!446686 (=> (not res!265284) (not e!262366))))

(assert (=> b!446686 (= res!265284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446687 () Bool)

(declare-fun res!265279 () Bool)

(assert (=> b!446687 (=> (not res!265279) (not e!262366))))

(assert (=> b!446687 (= res!265279 (and (= (size!13587 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13586 _keys!709) (size!13587 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446688 () Bool)

(assert (=> b!446688 (= e!262367 tp_is_empty!11907)))

(declare-fun b!446689 () Bool)

(declare-fun res!265280 () Bool)

(assert (=> b!446689 (=> (not res!265280) (not e!262366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446689 (= res!265280 (validKeyInArray!0 k0!794))))

(declare-fun b!446690 () Bool)

(declare-fun res!265274 () Bool)

(assert (=> b!446690 (=> (not res!265274) (not e!262366))))

(declare-fun arrayContainsKey!0 (array!27581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446690 (= res!265274 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!446691 () Bool)

(declare-fun res!265283 () Bool)

(assert (=> b!446691 (=> (not res!265283) (not e!262366))))

(assert (=> b!446691 (= res!265283 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7897))))

(assert (= (and start!40550 res!265275) b!446678))

(assert (= (and b!446678 res!265281) b!446687))

(assert (= (and b!446687 res!265279) b!446686))

(assert (= (and b!446686 res!265284) b!446691))

(assert (= (and b!446691 res!265283) b!446685))

(assert (= (and b!446685 res!265273) b!446689))

(assert (= (and b!446689 res!265280) b!446680))

(assert (= (and b!446680 res!265282) b!446690))

(assert (= (and b!446690 res!265274) b!446679))

(assert (= (and b!446679 res!265276) b!446684))

(assert (= (and b!446684 res!265278) b!446683))

(assert (= (and b!446683 res!265277) b!446677))

(assert (= (and b!446682 condMapEmpty!19491) mapIsEmpty!19491))

(assert (= (and b!446682 (not condMapEmpty!19491)) mapNonEmpty!19491))

(get-info :version)

(assert (= (and mapNonEmpty!19491 ((_ is ValueCellFull!5610) mapValue!19491)) b!446688))

(assert (= (and b!446682 ((_ is ValueCellFull!5610) mapDefault!19491)) b!446681))

(assert (= start!40550 b!446682))

(declare-fun m!431785 () Bool)

(assert (=> start!40550 m!431785))

(declare-fun m!431787 () Bool)

(assert (=> start!40550 m!431787))

(declare-fun m!431789 () Bool)

(assert (=> b!446679 m!431789))

(declare-fun m!431791 () Bool)

(assert (=> b!446679 m!431791))

(declare-fun m!431793 () Bool)

(assert (=> mapNonEmpty!19491 m!431793))

(declare-fun m!431795 () Bool)

(assert (=> b!446691 m!431795))

(declare-fun m!431797 () Bool)

(assert (=> b!446680 m!431797))

(declare-fun m!431799 () Bool)

(assert (=> b!446690 m!431799))

(declare-fun m!431801 () Bool)

(assert (=> b!446684 m!431801))

(declare-fun m!431803 () Bool)

(assert (=> b!446689 m!431803))

(declare-fun m!431805 () Bool)

(assert (=> b!446677 m!431805))

(declare-fun m!431807 () Bool)

(assert (=> b!446677 m!431807))

(declare-fun m!431809 () Bool)

(assert (=> b!446677 m!431809))

(declare-fun m!431811 () Bool)

(assert (=> b!446678 m!431811))

(declare-fun m!431813 () Bool)

(assert (=> b!446686 m!431813))

(check-sat (not b!446678) (not b_next!10569) (not b!446690) (not b!446679) (not b!446677) (not b!446686) tp_is_empty!11907 (not mapNonEmpty!19491) (not start!40550) (not b!446689) (not b!446684) (not b!446691) b_and!18587)
(check-sat b_and!18587 (not b_next!10569))
(get-model)

(declare-fun d!74055 () Bool)

(assert (=> d!74055 (= (array_inv!9584 _values!549) (bvsge (size!13587 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!40550 d!74055))

(declare-fun d!74057 () Bool)

(assert (=> d!74057 (= (array_inv!9585 _keys!709) (bvsge (size!13586 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!40550 d!74057))

(declare-fun d!74059 () Bool)

(declare-fun res!265325 () Bool)

(declare-fun e!262392 () Bool)

(assert (=> d!74059 (=> res!265325 e!262392)))

(assert (=> d!74059 (= res!265325 (= (select (arr!13234 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74059 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!262392)))

(declare-fun b!446741 () Bool)

(declare-fun e!262393 () Bool)

(assert (=> b!446741 (= e!262392 e!262393)))

(declare-fun res!265326 () Bool)

(assert (=> b!446741 (=> (not res!265326) (not e!262393))))

(assert (=> b!446741 (= res!265326 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13586 _keys!709)))))

(declare-fun b!446742 () Bool)

(assert (=> b!446742 (= e!262393 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74059 (not res!265325)) b!446741))

(assert (= (and b!446741 res!265326) b!446742))

(declare-fun m!431845 () Bool)

(assert (=> d!74059 m!431845))

(declare-fun m!431847 () Bool)

(assert (=> b!446742 m!431847))

(assert (=> b!446690 d!74059))

(declare-fun b!446753 () Bool)

(declare-fun e!262405 () Bool)

(declare-fun call!29672 () Bool)

(assert (=> b!446753 (= e!262405 call!29672)))

(declare-fun b!446754 () Bool)

(declare-fun e!262402 () Bool)

(declare-fun e!262404 () Bool)

(assert (=> b!446754 (= e!262402 e!262404)))

(declare-fun res!265333 () Bool)

(assert (=> b!446754 (=> (not res!265333) (not e!262404))))

(declare-fun e!262403 () Bool)

(assert (=> b!446754 (= res!265333 (not e!262403))))

(declare-fun res!265334 () Bool)

(assert (=> b!446754 (=> (not res!265334) (not e!262403))))

(assert (=> b!446754 (= res!265334 (validKeyInArray!0 (select (arr!13234 lt!203820) #b00000000000000000000000000000000)))))

(declare-fun b!446756 () Bool)

(assert (=> b!446756 (= e!262405 call!29672)))

(declare-fun b!446757 () Bool)

(declare-fun contains!2494 (List!7900 (_ BitVec 64)) Bool)

(assert (=> b!446757 (= e!262403 (contains!2494 Nil!7897 (select (arr!13234 lt!203820) #b00000000000000000000000000000000)))))

(declare-fun bm!29669 () Bool)

(declare-fun c!55856 () Bool)

(assert (=> bm!29669 (= call!29672 (arrayNoDuplicates!0 lt!203820 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55856 (Cons!7896 (select (arr!13234 lt!203820) #b00000000000000000000000000000000) Nil!7897) Nil!7897)))))

(declare-fun b!446755 () Bool)

(assert (=> b!446755 (= e!262404 e!262405)))

(assert (=> b!446755 (= c!55856 (validKeyInArray!0 (select (arr!13234 lt!203820) #b00000000000000000000000000000000)))))

(declare-fun d!74061 () Bool)

(declare-fun res!265335 () Bool)

(assert (=> d!74061 (=> res!265335 e!262402)))

(assert (=> d!74061 (= res!265335 (bvsge #b00000000000000000000000000000000 (size!13586 lt!203820)))))

(assert (=> d!74061 (= (arrayNoDuplicates!0 lt!203820 #b00000000000000000000000000000000 Nil!7897) e!262402)))

(assert (= (and d!74061 (not res!265335)) b!446754))

(assert (= (and b!446754 res!265334) b!446757))

(assert (= (and b!446754 res!265333) b!446755))

(assert (= (and b!446755 c!55856) b!446756))

(assert (= (and b!446755 (not c!55856)) b!446753))

(assert (= (or b!446756 b!446753) bm!29669))

(declare-fun m!431849 () Bool)

(assert (=> b!446754 m!431849))

(assert (=> b!446754 m!431849))

(declare-fun m!431851 () Bool)

(assert (=> b!446754 m!431851))

(assert (=> b!446757 m!431849))

(assert (=> b!446757 m!431849))

(declare-fun m!431853 () Bool)

(assert (=> b!446757 m!431853))

(assert (=> bm!29669 m!431849))

(declare-fun m!431855 () Bool)

(assert (=> bm!29669 m!431855))

(assert (=> b!446755 m!431849))

(assert (=> b!446755 m!431849))

(assert (=> b!446755 m!431851))

(assert (=> b!446684 d!74061))

(declare-fun d!74063 () Bool)

(assert (=> d!74063 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!446689 d!74063))

(declare-fun bm!29672 () Bool)

(declare-fun call!29675 () Bool)

(assert (=> bm!29672 (= call!29675 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!203820 mask!1025))))

(declare-fun d!74065 () Bool)

(declare-fun res!265340 () Bool)

(declare-fun e!262413 () Bool)

(assert (=> d!74065 (=> res!265340 e!262413)))

(assert (=> d!74065 (= res!265340 (bvsge #b00000000000000000000000000000000 (size!13586 lt!203820)))))

(assert (=> d!74065 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203820 mask!1025) e!262413)))

(declare-fun b!446766 () Bool)

(declare-fun e!262412 () Bool)

(declare-fun e!262414 () Bool)

(assert (=> b!446766 (= e!262412 e!262414)))

(declare-fun lt!203831 () (_ BitVec 64))

(assert (=> b!446766 (= lt!203831 (select (arr!13234 lt!203820) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13111 0))(
  ( (Unit!13112) )
))
(declare-fun lt!203830 () Unit!13111)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!27581 (_ BitVec 64) (_ BitVec 32)) Unit!13111)

(assert (=> b!446766 (= lt!203830 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!203820 lt!203831 #b00000000000000000000000000000000))))

(assert (=> b!446766 (arrayContainsKey!0 lt!203820 lt!203831 #b00000000000000000000000000000000)))

(declare-fun lt!203832 () Unit!13111)

(assert (=> b!446766 (= lt!203832 lt!203830)))

(declare-fun res!265341 () Bool)

(declare-datatypes ((SeekEntryResult!3518 0))(
  ( (MissingZero!3518 (index!16251 (_ BitVec 32))) (Found!3518 (index!16252 (_ BitVec 32))) (Intermediate!3518 (undefined!4330 Bool) (index!16253 (_ BitVec 32)) (x!42042 (_ BitVec 32))) (Undefined!3518) (MissingVacant!3518 (index!16254 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!27581 (_ BitVec 32)) SeekEntryResult!3518)

(assert (=> b!446766 (= res!265341 (= (seekEntryOrOpen!0 (select (arr!13234 lt!203820) #b00000000000000000000000000000000) lt!203820 mask!1025) (Found!3518 #b00000000000000000000000000000000)))))

(assert (=> b!446766 (=> (not res!265341) (not e!262414))))

(declare-fun b!446767 () Bool)

(assert (=> b!446767 (= e!262412 call!29675)))

(declare-fun b!446768 () Bool)

(assert (=> b!446768 (= e!262413 e!262412)))

(declare-fun c!55859 () Bool)

(assert (=> b!446768 (= c!55859 (validKeyInArray!0 (select (arr!13234 lt!203820) #b00000000000000000000000000000000)))))

(declare-fun b!446769 () Bool)

(assert (=> b!446769 (= e!262414 call!29675)))

(assert (= (and d!74065 (not res!265340)) b!446768))

(assert (= (and b!446768 c!55859) b!446766))

(assert (= (and b!446768 (not c!55859)) b!446767))

(assert (= (and b!446766 res!265341) b!446769))

(assert (= (or b!446769 b!446767) bm!29672))

(declare-fun m!431857 () Bool)

(assert (=> bm!29672 m!431857))

(assert (=> b!446766 m!431849))

(declare-fun m!431859 () Bool)

(assert (=> b!446766 m!431859))

(declare-fun m!431861 () Bool)

(assert (=> b!446766 m!431861))

(assert (=> b!446766 m!431849))

(declare-fun m!431863 () Bool)

(assert (=> b!446766 m!431863))

(assert (=> b!446768 m!431849))

(assert (=> b!446768 m!431849))

(assert (=> b!446768 m!431851))

(assert (=> b!446679 d!74065))

(declare-fun bm!29673 () Bool)

(declare-fun call!29676 () Bool)

(assert (=> bm!29673 (= call!29676 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun d!74067 () Bool)

(declare-fun res!265342 () Bool)

(declare-fun e!262416 () Bool)

(assert (=> d!74067 (=> res!265342 e!262416)))

(assert (=> d!74067 (= res!265342 (bvsge #b00000000000000000000000000000000 (size!13586 _keys!709)))))

(assert (=> d!74067 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!262416)))

(declare-fun b!446770 () Bool)

(declare-fun e!262415 () Bool)

(declare-fun e!262417 () Bool)

(assert (=> b!446770 (= e!262415 e!262417)))

(declare-fun lt!203834 () (_ BitVec 64))

(assert (=> b!446770 (= lt!203834 (select (arr!13234 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!203833 () Unit!13111)

(assert (=> b!446770 (= lt!203833 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!203834 #b00000000000000000000000000000000))))

(assert (=> b!446770 (arrayContainsKey!0 _keys!709 lt!203834 #b00000000000000000000000000000000)))

(declare-fun lt!203835 () Unit!13111)

(assert (=> b!446770 (= lt!203835 lt!203833)))

(declare-fun res!265343 () Bool)

(assert (=> b!446770 (= res!265343 (= (seekEntryOrOpen!0 (select (arr!13234 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3518 #b00000000000000000000000000000000)))))

(assert (=> b!446770 (=> (not res!265343) (not e!262417))))

(declare-fun b!446771 () Bool)

(assert (=> b!446771 (= e!262415 call!29676)))

(declare-fun b!446772 () Bool)

(assert (=> b!446772 (= e!262416 e!262415)))

(declare-fun c!55860 () Bool)

(assert (=> b!446772 (= c!55860 (validKeyInArray!0 (select (arr!13234 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!446773 () Bool)

(assert (=> b!446773 (= e!262417 call!29676)))

(assert (= (and d!74067 (not res!265342)) b!446772))

(assert (= (and b!446772 c!55860) b!446770))

(assert (= (and b!446772 (not c!55860)) b!446771))

(assert (= (and b!446770 res!265343) b!446773))

(assert (= (or b!446773 b!446771) bm!29673))

(declare-fun m!431865 () Bool)

(assert (=> bm!29673 m!431865))

(assert (=> b!446770 m!431845))

(declare-fun m!431867 () Bool)

(assert (=> b!446770 m!431867))

(declare-fun m!431869 () Bool)

(assert (=> b!446770 m!431869))

(assert (=> b!446770 m!431845))

(declare-fun m!431871 () Bool)

(assert (=> b!446770 m!431871))

(assert (=> b!446772 m!431845))

(assert (=> b!446772 m!431845))

(declare-fun m!431873 () Bool)

(assert (=> b!446772 m!431873))

(assert (=> b!446686 d!74067))

(declare-fun b!446798 () Bool)

(declare-fun e!262437 () Bool)

(assert (=> b!446798 (= e!262437 (validKeyInArray!0 (select (arr!13234 lt!203820) from!863)))))

(assert (=> b!446798 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!446799 () Bool)

(declare-fun e!262432 () Bool)

(declare-fun e!262433 () Bool)

(assert (=> b!446799 (= e!262432 e!262433)))

(declare-fun c!55871 () Bool)

(assert (=> b!446799 (= c!55871 e!262437)))

(declare-fun res!265352 () Bool)

(assert (=> b!446799 (=> (not res!265352) (not e!262437))))

(assert (=> b!446799 (= res!265352 (bvslt from!863 (size!13586 lt!203820)))))

(declare-fun b!446800 () Bool)

(declare-fun e!262435 () ListLongMap!6715)

(declare-fun call!29679 () ListLongMap!6715)

(assert (=> b!446800 (= e!262435 call!29679)))

(declare-fun b!446801 () Bool)

(declare-fun e!262434 () Bool)

(assert (=> b!446801 (= e!262433 e!262434)))

(assert (=> b!446801 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13586 lt!203820)))))

(declare-fun lt!203856 () ListLongMap!6715)

(declare-fun res!265354 () Bool)

(declare-fun contains!2495 (ListLongMap!6715 (_ BitVec 64)) Bool)

(assert (=> b!446801 (= res!265354 (contains!2495 lt!203856 (select (arr!13234 lt!203820) from!863)))))

(assert (=> b!446801 (=> (not res!265354) (not e!262434))))

(declare-fun b!446802 () Bool)

(declare-fun e!262438 () ListLongMap!6715)

(assert (=> b!446802 (= e!262438 e!262435)))

(declare-fun c!55869 () Bool)

(assert (=> b!446802 (= c!55869 (validKeyInArray!0 (select (arr!13234 lt!203820) from!863)))))

(declare-fun b!446804 () Bool)

(declare-fun e!262436 () Bool)

(assert (=> b!446804 (= e!262433 e!262436)))

(declare-fun c!55872 () Bool)

(assert (=> b!446804 (= c!55872 (bvslt from!863 (size!13586 lt!203820)))))

(declare-fun b!446805 () Bool)

(assert (=> b!446805 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13586 lt!203820)))))

(assert (=> b!446805 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13587 (array!27584 (store (arr!13235 _values!549) i!563 (ValueCellFull!5610 v!412)) (size!13587 _values!549)))))))

(declare-fun apply!311 (ListLongMap!6715 (_ BitVec 64)) V!16981)

(declare-fun get!6547 (ValueCell!5610 V!16981) V!16981)

(declare-fun dynLambda!842 (Int (_ BitVec 64)) V!16981)

(assert (=> b!446805 (= e!262434 (= (apply!311 lt!203856 (select (arr!13234 lt!203820) from!863)) (get!6547 (select (arr!13235 (array!27584 (store (arr!13235 _values!549) i!563 (ValueCellFull!5610 v!412)) (size!13587 _values!549))) from!863) (dynLambda!842 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!446806 () Bool)

(declare-fun res!265355 () Bool)

(assert (=> b!446806 (=> (not res!265355) (not e!262432))))

(assert (=> b!446806 (= res!265355 (not (contains!2495 lt!203856 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446807 () Bool)

(declare-fun isEmpty!562 (ListLongMap!6715) Bool)

(assert (=> b!446807 (= e!262436 (isEmpty!562 lt!203856))))

(declare-fun b!446808 () Bool)

(assert (=> b!446808 (= e!262436 (= lt!203856 (getCurrentListMapNoExtraKeys!1553 lt!203820 (array!27584 (store (arr!13235 _values!549) i!563 (ValueCellFull!5610 v!412)) (size!13587 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun d!74069 () Bool)

(assert (=> d!74069 e!262432))

(declare-fun res!265353 () Bool)

(assert (=> d!74069 (=> (not res!265353) (not e!262432))))

(assert (=> d!74069 (= res!265353 (not (contains!2495 lt!203856 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74069 (= lt!203856 e!262438)))

(declare-fun c!55870 () Bool)

(assert (=> d!74069 (= c!55870 (bvsge from!863 (size!13586 lt!203820)))))

(assert (=> d!74069 (validMask!0 mask!1025)))

(assert (=> d!74069 (= (getCurrentListMapNoExtraKeys!1553 lt!203820 (array!27584 (store (arr!13235 _values!549) i!563 (ValueCellFull!5610 v!412)) (size!13587 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!203856)))

(declare-fun b!446803 () Bool)

(declare-fun lt!203854 () Unit!13111)

(declare-fun lt!203851 () Unit!13111)

(assert (=> b!446803 (= lt!203854 lt!203851)))

(declare-fun lt!203853 () (_ BitVec 64))

(declare-fun lt!203852 () V!16981)

(declare-fun lt!203855 () (_ BitVec 64))

(declare-fun lt!203850 () ListLongMap!6715)

(declare-fun +!1502 (ListLongMap!6715 tuple2!7788) ListLongMap!6715)

(assert (=> b!446803 (not (contains!2495 (+!1502 lt!203850 (tuple2!7789 lt!203855 lt!203852)) lt!203853))))

(declare-fun addStillNotContains!146 (ListLongMap!6715 (_ BitVec 64) V!16981 (_ BitVec 64)) Unit!13111)

(assert (=> b!446803 (= lt!203851 (addStillNotContains!146 lt!203850 lt!203855 lt!203852 lt!203853))))

(assert (=> b!446803 (= lt!203853 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!446803 (= lt!203852 (get!6547 (select (arr!13235 (array!27584 (store (arr!13235 _values!549) i!563 (ValueCellFull!5610 v!412)) (size!13587 _values!549))) from!863) (dynLambda!842 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!446803 (= lt!203855 (select (arr!13234 lt!203820) from!863))))

(assert (=> b!446803 (= lt!203850 call!29679)))

(assert (=> b!446803 (= e!262435 (+!1502 call!29679 (tuple2!7789 (select (arr!13234 lt!203820) from!863) (get!6547 (select (arr!13235 (array!27584 (store (arr!13235 _values!549) i!563 (ValueCellFull!5610 v!412)) (size!13587 _values!549))) from!863) (dynLambda!842 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!29676 () Bool)

(assert (=> bm!29676 (= call!29679 (getCurrentListMapNoExtraKeys!1553 lt!203820 (array!27584 (store (arr!13235 _values!549) i!563 (ValueCellFull!5610 v!412)) (size!13587 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!446809 () Bool)

(assert (=> b!446809 (= e!262438 (ListLongMap!6716 Nil!7896))))

(assert (= (and d!74069 c!55870) b!446809))

(assert (= (and d!74069 (not c!55870)) b!446802))

(assert (= (and b!446802 c!55869) b!446803))

(assert (= (and b!446802 (not c!55869)) b!446800))

(assert (= (or b!446803 b!446800) bm!29676))

(assert (= (and d!74069 res!265353) b!446806))

(assert (= (and b!446806 res!265355) b!446799))

(assert (= (and b!446799 res!265352) b!446798))

(assert (= (and b!446799 c!55871) b!446801))

(assert (= (and b!446799 (not c!55871)) b!446804))

(assert (= (and b!446801 res!265354) b!446805))

(assert (= (and b!446804 c!55872) b!446808))

(assert (= (and b!446804 (not c!55872)) b!446807))

(declare-fun b_lambda!9491 () Bool)

(assert (=> (not b_lambda!9491) (not b!446805)))

(declare-fun t!13671 () Bool)

(declare-fun tb!3727 () Bool)

(assert (=> (and start!40550 (= defaultEntry!557 defaultEntry!557) t!13671) tb!3727))

(declare-fun result!6979 () Bool)

(assert (=> tb!3727 (= result!6979 tp_is_empty!11907)))

(assert (=> b!446805 t!13671))

(declare-fun b_and!18591 () Bool)

(assert (= b_and!18587 (and (=> t!13671 result!6979) b_and!18591)))

(declare-fun b_lambda!9493 () Bool)

(assert (=> (not b_lambda!9493) (not b!446803)))

(assert (=> b!446803 t!13671))

(declare-fun b_and!18593 () Bool)

(assert (= b_and!18591 (and (=> t!13671 result!6979) b_and!18593)))

(declare-fun m!431875 () Bool)

(assert (=> b!446803 m!431875))

(declare-fun m!431877 () Bool)

(assert (=> b!446803 m!431877))

(declare-fun m!431879 () Bool)

(assert (=> b!446803 m!431879))

(assert (=> b!446803 m!431879))

(declare-fun m!431881 () Bool)

(assert (=> b!446803 m!431881))

(declare-fun m!431883 () Bool)

(assert (=> b!446803 m!431883))

(declare-fun m!431885 () Bool)

(assert (=> b!446803 m!431885))

(declare-fun m!431887 () Bool)

(assert (=> b!446803 m!431887))

(assert (=> b!446803 m!431875))

(assert (=> b!446803 m!431885))

(declare-fun m!431889 () Bool)

(assert (=> b!446803 m!431889))

(declare-fun m!431891 () Bool)

(assert (=> bm!29676 m!431891))

(assert (=> b!446802 m!431877))

(assert (=> b!446802 m!431877))

(declare-fun m!431893 () Bool)

(assert (=> b!446802 m!431893))

(declare-fun m!431895 () Bool)

(assert (=> b!446806 m!431895))

(declare-fun m!431897 () Bool)

(assert (=> d!74069 m!431897))

(assert (=> d!74069 m!431811))

(assert (=> b!446801 m!431877))

(assert (=> b!446801 m!431877))

(declare-fun m!431899 () Bool)

(assert (=> b!446801 m!431899))

(assert (=> b!446805 m!431875))

(assert (=> b!446805 m!431877))

(assert (=> b!446805 m!431875))

(assert (=> b!446805 m!431885))

(assert (=> b!446805 m!431889))

(assert (=> b!446805 m!431877))

(declare-fun m!431901 () Bool)

(assert (=> b!446805 m!431901))

(assert (=> b!446805 m!431885))

(assert (=> b!446808 m!431891))

(declare-fun m!431903 () Bool)

(assert (=> b!446807 m!431903))

(assert (=> b!446798 m!431877))

(assert (=> b!446798 m!431877))

(assert (=> b!446798 m!431893))

(assert (=> b!446677 d!74069))

(declare-fun b!446812 () Bool)

(declare-fun e!262444 () Bool)

(assert (=> b!446812 (= e!262444 (validKeyInArray!0 (select (arr!13234 _keys!709) from!863)))))

(assert (=> b!446812 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!446813 () Bool)

(declare-fun e!262439 () Bool)

(declare-fun e!262440 () Bool)

(assert (=> b!446813 (= e!262439 e!262440)))

(declare-fun c!55875 () Bool)

(assert (=> b!446813 (= c!55875 e!262444)))

(declare-fun res!265356 () Bool)

(assert (=> b!446813 (=> (not res!265356) (not e!262444))))

(assert (=> b!446813 (= res!265356 (bvslt from!863 (size!13586 _keys!709)))))

(declare-fun b!446814 () Bool)

(declare-fun e!262442 () ListLongMap!6715)

(declare-fun call!29680 () ListLongMap!6715)

(assert (=> b!446814 (= e!262442 call!29680)))

(declare-fun b!446815 () Bool)

(declare-fun e!262441 () Bool)

(assert (=> b!446815 (= e!262440 e!262441)))

(assert (=> b!446815 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13586 _keys!709)))))

(declare-fun res!265358 () Bool)

(declare-fun lt!203863 () ListLongMap!6715)

(assert (=> b!446815 (= res!265358 (contains!2495 lt!203863 (select (arr!13234 _keys!709) from!863)))))

(assert (=> b!446815 (=> (not res!265358) (not e!262441))))

(declare-fun b!446816 () Bool)

(declare-fun e!262445 () ListLongMap!6715)

(assert (=> b!446816 (= e!262445 e!262442)))

(declare-fun c!55873 () Bool)

(assert (=> b!446816 (= c!55873 (validKeyInArray!0 (select (arr!13234 _keys!709) from!863)))))

(declare-fun b!446818 () Bool)

(declare-fun e!262443 () Bool)

(assert (=> b!446818 (= e!262440 e!262443)))

(declare-fun c!55876 () Bool)

(assert (=> b!446818 (= c!55876 (bvslt from!863 (size!13586 _keys!709)))))

(declare-fun b!446819 () Bool)

(assert (=> b!446819 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13586 _keys!709)))))

(assert (=> b!446819 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13587 _values!549)))))

(assert (=> b!446819 (= e!262441 (= (apply!311 lt!203863 (select (arr!13234 _keys!709) from!863)) (get!6547 (select (arr!13235 _values!549) from!863) (dynLambda!842 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!446820 () Bool)

(declare-fun res!265359 () Bool)

(assert (=> b!446820 (=> (not res!265359) (not e!262439))))

(assert (=> b!446820 (= res!265359 (not (contains!2495 lt!203863 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446821 () Bool)

(assert (=> b!446821 (= e!262443 (isEmpty!562 lt!203863))))

(declare-fun b!446822 () Bool)

(assert (=> b!446822 (= e!262443 (= lt!203863 (getCurrentListMapNoExtraKeys!1553 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun d!74071 () Bool)

(assert (=> d!74071 e!262439))

(declare-fun res!265357 () Bool)

(assert (=> d!74071 (=> (not res!265357) (not e!262439))))

(assert (=> d!74071 (= res!265357 (not (contains!2495 lt!203863 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74071 (= lt!203863 e!262445)))

(declare-fun c!55874 () Bool)

(assert (=> d!74071 (= c!55874 (bvsge from!863 (size!13586 _keys!709)))))

(assert (=> d!74071 (validMask!0 mask!1025)))

(assert (=> d!74071 (= (getCurrentListMapNoExtraKeys!1553 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!203863)))

(declare-fun b!446817 () Bool)

(declare-fun lt!203861 () Unit!13111)

(declare-fun lt!203858 () Unit!13111)

(assert (=> b!446817 (= lt!203861 lt!203858)))

(declare-fun lt!203862 () (_ BitVec 64))

(declare-fun lt!203859 () V!16981)

(declare-fun lt!203857 () ListLongMap!6715)

(declare-fun lt!203860 () (_ BitVec 64))

(assert (=> b!446817 (not (contains!2495 (+!1502 lt!203857 (tuple2!7789 lt!203862 lt!203859)) lt!203860))))

(assert (=> b!446817 (= lt!203858 (addStillNotContains!146 lt!203857 lt!203862 lt!203859 lt!203860))))

(assert (=> b!446817 (= lt!203860 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!446817 (= lt!203859 (get!6547 (select (arr!13235 _values!549) from!863) (dynLambda!842 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!446817 (= lt!203862 (select (arr!13234 _keys!709) from!863))))

(assert (=> b!446817 (= lt!203857 call!29680)))

(assert (=> b!446817 (= e!262442 (+!1502 call!29680 (tuple2!7789 (select (arr!13234 _keys!709) from!863) (get!6547 (select (arr!13235 _values!549) from!863) (dynLambda!842 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!29677 () Bool)

(assert (=> bm!29677 (= call!29680 (getCurrentListMapNoExtraKeys!1553 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!446823 () Bool)

(assert (=> b!446823 (= e!262445 (ListLongMap!6716 Nil!7896))))

(assert (= (and d!74071 c!55874) b!446823))

(assert (= (and d!74071 (not c!55874)) b!446816))

(assert (= (and b!446816 c!55873) b!446817))

(assert (= (and b!446816 (not c!55873)) b!446814))

(assert (= (or b!446817 b!446814) bm!29677))

(assert (= (and d!74071 res!265357) b!446820))

(assert (= (and b!446820 res!265359) b!446813))

(assert (= (and b!446813 res!265356) b!446812))

(assert (= (and b!446813 c!55875) b!446815))

(assert (= (and b!446813 (not c!55875)) b!446818))

(assert (= (and b!446815 res!265358) b!446819))

(assert (= (and b!446818 c!55876) b!446822))

(assert (= (and b!446818 (not c!55876)) b!446821))

(declare-fun b_lambda!9495 () Bool)

(assert (=> (not b_lambda!9495) (not b!446819)))

(assert (=> b!446819 t!13671))

(declare-fun b_and!18595 () Bool)

(assert (= b_and!18593 (and (=> t!13671 result!6979) b_and!18595)))

(declare-fun b_lambda!9497 () Bool)

(assert (=> (not b_lambda!9497) (not b!446817)))

(assert (=> b!446817 t!13671))

(declare-fun b_and!18597 () Bool)

(assert (= b_and!18595 (and (=> t!13671 result!6979) b_and!18597)))

(declare-fun m!431905 () Bool)

(assert (=> b!446817 m!431905))

(declare-fun m!431907 () Bool)

(assert (=> b!446817 m!431907))

(declare-fun m!431909 () Bool)

(assert (=> b!446817 m!431909))

(assert (=> b!446817 m!431909))

(declare-fun m!431911 () Bool)

(assert (=> b!446817 m!431911))

(declare-fun m!431913 () Bool)

(assert (=> b!446817 m!431913))

(assert (=> b!446817 m!431885))

(declare-fun m!431915 () Bool)

(assert (=> b!446817 m!431915))

(assert (=> b!446817 m!431905))

(assert (=> b!446817 m!431885))

(declare-fun m!431917 () Bool)

(assert (=> b!446817 m!431917))

(declare-fun m!431919 () Bool)

(assert (=> bm!29677 m!431919))

(assert (=> b!446816 m!431907))

(assert (=> b!446816 m!431907))

(declare-fun m!431921 () Bool)

(assert (=> b!446816 m!431921))

(declare-fun m!431923 () Bool)

(assert (=> b!446820 m!431923))

(declare-fun m!431925 () Bool)

(assert (=> d!74071 m!431925))

(assert (=> d!74071 m!431811))

(assert (=> b!446815 m!431907))

(assert (=> b!446815 m!431907))

(declare-fun m!431927 () Bool)

(assert (=> b!446815 m!431927))

(assert (=> b!446819 m!431905))

(assert (=> b!446819 m!431907))

(assert (=> b!446819 m!431905))

(assert (=> b!446819 m!431885))

(assert (=> b!446819 m!431917))

(assert (=> b!446819 m!431907))

(declare-fun m!431929 () Bool)

(assert (=> b!446819 m!431929))

(assert (=> b!446819 m!431885))

(assert (=> b!446822 m!431919))

(declare-fun m!431931 () Bool)

(assert (=> b!446821 m!431931))

(assert (=> b!446812 m!431907))

(assert (=> b!446812 m!431907))

(assert (=> b!446812 m!431921))

(assert (=> b!446677 d!74071))

(declare-fun b!446824 () Bool)

(declare-fun e!262449 () Bool)

(declare-fun call!29681 () Bool)

(assert (=> b!446824 (= e!262449 call!29681)))

(declare-fun b!446825 () Bool)

(declare-fun e!262446 () Bool)

(declare-fun e!262448 () Bool)

(assert (=> b!446825 (= e!262446 e!262448)))

(declare-fun res!265360 () Bool)

(assert (=> b!446825 (=> (not res!265360) (not e!262448))))

(declare-fun e!262447 () Bool)

(assert (=> b!446825 (= res!265360 (not e!262447))))

(declare-fun res!265361 () Bool)

(assert (=> b!446825 (=> (not res!265361) (not e!262447))))

(assert (=> b!446825 (= res!265361 (validKeyInArray!0 (select (arr!13234 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!446827 () Bool)

(assert (=> b!446827 (= e!262449 call!29681)))

(declare-fun b!446828 () Bool)

(assert (=> b!446828 (= e!262447 (contains!2494 Nil!7897 (select (arr!13234 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!29678 () Bool)

(declare-fun c!55877 () Bool)

(assert (=> bm!29678 (= call!29681 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55877 (Cons!7896 (select (arr!13234 _keys!709) #b00000000000000000000000000000000) Nil!7897) Nil!7897)))))

(declare-fun b!446826 () Bool)

(assert (=> b!446826 (= e!262448 e!262449)))

(assert (=> b!446826 (= c!55877 (validKeyInArray!0 (select (arr!13234 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!74073 () Bool)

(declare-fun res!265362 () Bool)

(assert (=> d!74073 (=> res!265362 e!262446)))

(assert (=> d!74073 (= res!265362 (bvsge #b00000000000000000000000000000000 (size!13586 _keys!709)))))

(assert (=> d!74073 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7897) e!262446)))

(assert (= (and d!74073 (not res!265362)) b!446825))

(assert (= (and b!446825 res!265361) b!446828))

(assert (= (and b!446825 res!265360) b!446826))

(assert (= (and b!446826 c!55877) b!446827))

(assert (= (and b!446826 (not c!55877)) b!446824))

(assert (= (or b!446827 b!446824) bm!29678))

(assert (=> b!446825 m!431845))

(assert (=> b!446825 m!431845))

(assert (=> b!446825 m!431873))

(assert (=> b!446828 m!431845))

(assert (=> b!446828 m!431845))

(declare-fun m!431933 () Bool)

(assert (=> b!446828 m!431933))

(assert (=> bm!29678 m!431845))

(declare-fun m!431935 () Bool)

(assert (=> bm!29678 m!431935))

(assert (=> b!446826 m!431845))

(assert (=> b!446826 m!431845))

(assert (=> b!446826 m!431873))

(assert (=> b!446691 d!74073))

(declare-fun d!74075 () Bool)

(assert (=> d!74075 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!446678 d!74075))

(declare-fun b!446836 () Bool)

(declare-fun e!262455 () Bool)

(assert (=> b!446836 (= e!262455 tp_is_empty!11907)))

(declare-fun condMapEmpty!19497 () Bool)

(declare-fun mapDefault!19497 () ValueCell!5610)

(assert (=> mapNonEmpty!19491 (= condMapEmpty!19497 (= mapRest!19491 ((as const (Array (_ BitVec 32) ValueCell!5610)) mapDefault!19497)))))

(declare-fun mapRes!19497 () Bool)

(assert (=> mapNonEmpty!19491 (= tp!37523 (and e!262455 mapRes!19497))))

(declare-fun mapIsEmpty!19497 () Bool)

(assert (=> mapIsEmpty!19497 mapRes!19497))

(declare-fun b!446835 () Bool)

(declare-fun e!262454 () Bool)

(assert (=> b!446835 (= e!262454 tp_is_empty!11907)))

(declare-fun mapNonEmpty!19497 () Bool)

(declare-fun tp!37533 () Bool)

(assert (=> mapNonEmpty!19497 (= mapRes!19497 (and tp!37533 e!262454))))

(declare-fun mapKey!19497 () (_ BitVec 32))

(declare-fun mapRest!19497 () (Array (_ BitVec 32) ValueCell!5610))

(declare-fun mapValue!19497 () ValueCell!5610)

(assert (=> mapNonEmpty!19497 (= mapRest!19491 (store mapRest!19497 mapKey!19497 mapValue!19497))))

(assert (= (and mapNonEmpty!19491 condMapEmpty!19497) mapIsEmpty!19497))

(assert (= (and mapNonEmpty!19491 (not condMapEmpty!19497)) mapNonEmpty!19497))

(assert (= (and mapNonEmpty!19497 ((_ is ValueCellFull!5610) mapValue!19497)) b!446835))

(assert (= (and mapNonEmpty!19491 ((_ is ValueCellFull!5610) mapDefault!19497)) b!446836))

(declare-fun m!431937 () Bool)

(assert (=> mapNonEmpty!19497 m!431937))

(declare-fun b_lambda!9499 () Bool)

(assert (= b_lambda!9491 (or (and start!40550 b_free!10569) b_lambda!9499)))

(declare-fun b_lambda!9501 () Bool)

(assert (= b_lambda!9495 (or (and start!40550 b_free!10569) b_lambda!9501)))

(declare-fun b_lambda!9503 () Bool)

(assert (= b_lambda!9497 (or (and start!40550 b_free!10569) b_lambda!9503)))

(declare-fun b_lambda!9505 () Bool)

(assert (= b_lambda!9493 (or (and start!40550 b_free!10569) b_lambda!9505)))

(check-sat b_and!18597 (not d!74071) (not b!446772) (not b!446821) (not bm!29676) (not b_lambda!9499) (not b!446801) (not b!446802) (not b!446755) (not b!446798) (not b!446754) (not b!446742) (not b!446807) (not b!446820) (not b!446757) (not bm!29672) (not b!446805) (not b_next!10569) (not b!446817) (not bm!29677) (not b!446822) (not b!446816) (not bm!29673) (not b!446803) (not b!446768) (not bm!29678) (not b!446815) (not b_lambda!9505) (not b!446825) (not mapNonEmpty!19497) (not d!74069) (not b!446808) tp_is_empty!11907 (not b!446770) (not b!446819) (not b!446812) (not b!446766) (not b_lambda!9503) (not bm!29669) (not b!446828) (not b!446826) (not b!446806) (not b_lambda!9501))
(check-sat b_and!18597 (not b_next!10569))
