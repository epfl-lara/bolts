; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109848 () Bool)

(assert start!109848)

(declare-fun b_free!29205 () Bool)

(declare-fun b_next!29205 () Bool)

(assert (=> start!109848 (= b_free!29205 (not b_next!29205))))

(declare-fun tp!102749 () Bool)

(declare-fun b_and!47329 () Bool)

(assert (=> start!109848 (= tp!102749 b_and!47329)))

(declare-fun b!1300861 () Bool)

(declare-fun res!864457 () Bool)

(declare-fun e!742036 () Bool)

(assert (=> b!1300861 (=> (not res!864457) (not e!742036))))

(declare-datatypes ((array!86661 0))(
  ( (array!86662 (arr!41822 (Array (_ BitVec 32) (_ BitVec 64))) (size!42373 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86661)

(declare-datatypes ((List!29876 0))(
  ( (Nil!29873) (Cons!29872 (h!31081 (_ BitVec 64)) (t!43457 List!29876)) )
))
(declare-fun arrayNoDuplicates!0 (array!86661 (_ BitVec 32) List!29876) Bool)

(assert (=> b!1300861 (= res!864457 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29873))))

(declare-fun b!1300862 () Bool)

(declare-fun res!864462 () Bool)

(assert (=> b!1300862 (=> (not res!864462) (not e!742036))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1300862 (= res!864462 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42373 _keys!1741))))))

(declare-fun bm!63793 () Bool)

(declare-datatypes ((Unit!42998 0))(
  ( (Unit!42999) )
))
(declare-fun call!63796 () Unit!42998)

(declare-fun call!63798 () Unit!42998)

(assert (=> bm!63793 (= call!63796 call!63798)))

(declare-fun b!1300863 () Bool)

(declare-fun res!864460 () Bool)

(assert (=> b!1300863 (=> (not res!864460) (not e!742036))))

(declare-datatypes ((V!51563 0))(
  ( (V!51564 (val!17497 Int)) )
))
(declare-fun zeroValue!1387 () V!51563)

(declare-datatypes ((ValueCell!16524 0))(
  ( (ValueCellFull!16524 (v!20103 V!51563)) (EmptyCell!16524) )
))
(declare-datatypes ((array!86663 0))(
  ( (array!86664 (arr!41823 (Array (_ BitVec 32) ValueCell!16524)) (size!42374 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86663)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!51563)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22720 0))(
  ( (tuple2!22721 (_1!11370 (_ BitVec 64)) (_2!11370 V!51563)) )
))
(declare-datatypes ((List!29877 0))(
  ( (Nil!29874) (Cons!29873 (h!31082 tuple2!22720) (t!43458 List!29877)) )
))
(declare-datatypes ((ListLongMap!20389 0))(
  ( (ListLongMap!20390 (toList!10210 List!29877)) )
))
(declare-fun contains!8271 (ListLongMap!20389 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5180 (array!86661 array!86663 (_ BitVec 32) (_ BitVec 32) V!51563 V!51563 (_ BitVec 32) Int) ListLongMap!20389)

(assert (=> b!1300863 (= res!864460 (contains!8271 (getCurrentListMap!5180 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun lt!581595 () ListLongMap!20389)

(declare-fun lt!581599 () ListLongMap!20389)

(declare-fun bm!63794 () Bool)

(declare-fun lt!581601 () ListLongMap!20389)

(declare-fun c!124612 () Bool)

(declare-fun c!124611 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!73 ((_ BitVec 64) (_ BitVec 64) V!51563 ListLongMap!20389) Unit!42998)

(assert (=> bm!63794 (= call!63798 (lemmaInListMapAfterAddingDiffThenInBefore!73 k0!1205 (ite c!124611 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124612 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124611 minValue!1387 (ite c!124612 zeroValue!1387 minValue!1387)) (ite c!124611 lt!581595 (ite c!124612 lt!581599 lt!581601))))))

(declare-fun bm!63795 () Bool)

(declare-fun call!63799 () ListLongMap!20389)

(declare-fun call!63800 () ListLongMap!20389)

(assert (=> bm!63795 (= call!63799 call!63800)))

(declare-fun b!1300864 () Bool)

(declare-fun res!864463 () Bool)

(assert (=> b!1300864 (=> (not res!864463) (not e!742036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86661 (_ BitVec 32)) Bool)

(assert (=> b!1300864 (= res!864463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1300865 () Bool)

(declare-fun e!742038 () Bool)

(declare-fun tp_is_empty!34845 () Bool)

(assert (=> b!1300865 (= e!742038 tp_is_empty!34845)))

(declare-fun b!1300866 () Bool)

(declare-fun res!864458 () Bool)

(assert (=> b!1300866 (=> (not res!864458) (not e!742036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300866 (= res!864458 (validKeyInArray!0 (select (arr!41822 _keys!1741) from!2144)))))

(declare-fun bm!63796 () Bool)

(declare-fun lt!581598 () ListLongMap!20389)

(declare-fun call!63797 () Bool)

(assert (=> bm!63796 (= call!63797 (contains!8271 (ite c!124611 lt!581598 (ite c!124612 lt!581599 lt!581601)) k0!1205))))

(declare-fun mapIsEmpty!53843 () Bool)

(declare-fun mapRes!53843 () Bool)

(assert (=> mapIsEmpty!53843 mapRes!53843))

(declare-fun b!1300867 () Bool)

(declare-fun call!63795 () Bool)

(assert (=> b!1300867 call!63795))

(declare-fun lt!581596 () Unit!42998)

(assert (=> b!1300867 (= lt!581596 call!63796)))

(assert (=> b!1300867 (= lt!581599 call!63799)))

(declare-fun e!742037 () Unit!42998)

(assert (=> b!1300867 (= e!742037 lt!581596)))

(declare-fun res!864459 () Bool)

(assert (=> start!109848 (=> (not res!864459) (not e!742036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109848 (= res!864459 (validMask!0 mask!2175))))

(assert (=> start!109848 e!742036))

(assert (=> start!109848 tp_is_empty!34845))

(assert (=> start!109848 true))

(declare-fun e!742033 () Bool)

(declare-fun array_inv!31639 (array!86663) Bool)

(assert (=> start!109848 (and (array_inv!31639 _values!1445) e!742033)))

(declare-fun array_inv!31640 (array!86661) Bool)

(assert (=> start!109848 (array_inv!31640 _keys!1741)))

(assert (=> start!109848 tp!102749))

(declare-fun bm!63792 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6148 (array!86661 array!86663 (_ BitVec 32) (_ BitVec 32) V!51563 V!51563 (_ BitVec 32) Int) ListLongMap!20389)

(assert (=> bm!63792 (= call!63800 (getCurrentListMapNoExtraKeys!6148 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1300868 () Bool)

(declare-fun res!864464 () Bool)

(assert (=> b!1300868 (=> (not res!864464) (not e!742036))))

(assert (=> b!1300868 (= res!864464 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42373 _keys!1741))))))

(declare-fun b!1300869 () Bool)

(assert (=> b!1300869 (= e!742036 (not (or (= k0!1205 (select (arr!41822 _keys!1741) from!2144)) (bvslt from!2144 (size!42374 _values!1445)))))))

(assert (=> b!1300869 (not (contains!8271 (ListLongMap!20390 Nil!29874) k0!1205))))

(declare-fun lt!581593 () Unit!42998)

(declare-fun emptyContainsNothing!202 ((_ BitVec 64)) Unit!42998)

(assert (=> b!1300869 (= lt!581593 (emptyContainsNothing!202 k0!1205))))

(declare-fun lt!581594 () Unit!42998)

(declare-fun e!742034 () Unit!42998)

(assert (=> b!1300869 (= lt!581594 e!742034)))

(declare-fun lt!581600 () Bool)

(assert (=> b!1300869 (= c!124611 (and (not lt!581600) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1300869 (= lt!581600 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1300870 () Bool)

(declare-fun e!742035 () Bool)

(assert (=> b!1300870 (= e!742035 tp_is_empty!34845)))

(declare-fun b!1300871 () Bool)

(assert (=> b!1300871 (= e!742034 e!742037)))

(assert (=> b!1300871 (= c!124612 (and (not lt!581600) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1300872 () Bool)

(declare-fun e!742032 () Unit!42998)

(declare-fun Unit!43000 () Unit!42998)

(assert (=> b!1300872 (= e!742032 Unit!43000)))

(declare-fun b!1300873 () Bool)

(declare-fun res!864461 () Bool)

(assert (=> b!1300873 (=> (not res!864461) (not e!742036))))

(assert (=> b!1300873 (= res!864461 (and (= (size!42374 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42373 _keys!1741) (size!42374 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1300874 () Bool)

(assert (=> b!1300874 (= e!742033 (and e!742035 mapRes!53843))))

(declare-fun condMapEmpty!53843 () Bool)

(declare-fun mapDefault!53843 () ValueCell!16524)

(assert (=> b!1300874 (= condMapEmpty!53843 (= (arr!41823 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16524)) mapDefault!53843)))))

(declare-fun b!1300875 () Bool)

(declare-fun lt!581602 () Unit!42998)

(assert (=> b!1300875 (= e!742034 lt!581602)))

(assert (=> b!1300875 (= lt!581598 call!63800)))

(declare-fun +!4435 (ListLongMap!20389 tuple2!22720) ListLongMap!20389)

(assert (=> b!1300875 (= lt!581595 (+!4435 lt!581598 (tuple2!22721 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!581597 () Unit!42998)

(assert (=> b!1300875 (= lt!581597 call!63798)))

(assert (=> b!1300875 (contains!8271 lt!581595 k0!1205)))

(assert (=> b!1300875 (= lt!581602 (lemmaInListMapAfterAddingDiffThenInBefore!73 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581598))))

(assert (=> b!1300875 call!63797))

(declare-fun b!1300876 () Bool)

(declare-fun lt!581592 () Unit!42998)

(assert (=> b!1300876 (= e!742032 lt!581592)))

(assert (=> b!1300876 (= lt!581601 call!63799)))

(assert (=> b!1300876 (= lt!581592 call!63796)))

(assert (=> b!1300876 call!63795))

(declare-fun mapNonEmpty!53843 () Bool)

(declare-fun tp!102750 () Bool)

(assert (=> mapNonEmpty!53843 (= mapRes!53843 (and tp!102750 e!742038))))

(declare-fun mapValue!53843 () ValueCell!16524)

(declare-fun mapKey!53843 () (_ BitVec 32))

(declare-fun mapRest!53843 () (Array (_ BitVec 32) ValueCell!16524))

(assert (=> mapNonEmpty!53843 (= (arr!41823 _values!1445) (store mapRest!53843 mapKey!53843 mapValue!53843))))

(declare-fun b!1300877 () Bool)

(declare-fun c!124613 () Bool)

(assert (=> b!1300877 (= c!124613 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!581600))))

(assert (=> b!1300877 (= e!742037 e!742032)))

(declare-fun bm!63797 () Bool)

(assert (=> bm!63797 (= call!63795 call!63797)))

(assert (= (and start!109848 res!864459) b!1300873))

(assert (= (and b!1300873 res!864461) b!1300864))

(assert (= (and b!1300864 res!864463) b!1300861))

(assert (= (and b!1300861 res!864457) b!1300862))

(assert (= (and b!1300862 res!864462) b!1300863))

(assert (= (and b!1300863 res!864460) b!1300868))

(assert (= (and b!1300868 res!864464) b!1300866))

(assert (= (and b!1300866 res!864458) b!1300869))

(assert (= (and b!1300869 c!124611) b!1300875))

(assert (= (and b!1300869 (not c!124611)) b!1300871))

(assert (= (and b!1300871 c!124612) b!1300867))

(assert (= (and b!1300871 (not c!124612)) b!1300877))

(assert (= (and b!1300877 c!124613) b!1300876))

(assert (= (and b!1300877 (not c!124613)) b!1300872))

(assert (= (or b!1300867 b!1300876) bm!63795))

(assert (= (or b!1300867 b!1300876) bm!63793))

(assert (= (or b!1300867 b!1300876) bm!63797))

(assert (= (or b!1300875 bm!63795) bm!63792))

(assert (= (or b!1300875 bm!63793) bm!63794))

(assert (= (or b!1300875 bm!63797) bm!63796))

(assert (= (and b!1300874 condMapEmpty!53843) mapIsEmpty!53843))

(assert (= (and b!1300874 (not condMapEmpty!53843)) mapNonEmpty!53843))

(get-info :version)

(assert (= (and mapNonEmpty!53843 ((_ is ValueCellFull!16524) mapValue!53843)) b!1300865))

(assert (= (and b!1300874 ((_ is ValueCellFull!16524) mapDefault!53843)) b!1300870))

(assert (= start!109848 b!1300874))

(declare-fun m!1191679 () Bool)

(assert (=> b!1300864 m!1191679))

(declare-fun m!1191681 () Bool)

(assert (=> b!1300869 m!1191681))

(declare-fun m!1191683 () Bool)

(assert (=> b!1300869 m!1191683))

(declare-fun m!1191685 () Bool)

(assert (=> b!1300869 m!1191685))

(declare-fun m!1191687 () Bool)

(assert (=> start!109848 m!1191687))

(declare-fun m!1191689 () Bool)

(assert (=> start!109848 m!1191689))

(declare-fun m!1191691 () Bool)

(assert (=> start!109848 m!1191691))

(declare-fun m!1191693 () Bool)

(assert (=> bm!63794 m!1191693))

(assert (=> b!1300866 m!1191681))

(assert (=> b!1300866 m!1191681))

(declare-fun m!1191695 () Bool)

(assert (=> b!1300866 m!1191695))

(declare-fun m!1191697 () Bool)

(assert (=> b!1300861 m!1191697))

(declare-fun m!1191699 () Bool)

(assert (=> mapNonEmpty!53843 m!1191699))

(declare-fun m!1191701 () Bool)

(assert (=> bm!63796 m!1191701))

(declare-fun m!1191703 () Bool)

(assert (=> bm!63792 m!1191703))

(declare-fun m!1191705 () Bool)

(assert (=> b!1300875 m!1191705))

(declare-fun m!1191707 () Bool)

(assert (=> b!1300875 m!1191707))

(declare-fun m!1191709 () Bool)

(assert (=> b!1300875 m!1191709))

(declare-fun m!1191711 () Bool)

(assert (=> b!1300863 m!1191711))

(assert (=> b!1300863 m!1191711))

(declare-fun m!1191713 () Bool)

(assert (=> b!1300863 m!1191713))

(check-sat (not bm!63796) (not b!1300875) (not bm!63792) (not start!109848) (not b!1300866) (not b_next!29205) (not bm!63794) (not mapNonEmpty!53843) (not b!1300861) tp_is_empty!34845 b_and!47329 (not b!1300869) (not b!1300864) (not b!1300863))
(check-sat b_and!47329 (not b_next!29205))
