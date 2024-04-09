; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109842 () Bool)

(assert start!109842)

(declare-fun b_free!29199 () Bool)

(declare-fun b_next!29199 () Bool)

(assert (=> start!109842 (= b_free!29199 (not b_next!29199))))

(declare-fun tp!102732 () Bool)

(declare-fun b_and!47323 () Bool)

(assert (=> start!109842 (= tp!102732 b_and!47323)))

(declare-fun b!1300708 () Bool)

(declare-datatypes ((Unit!42995 0))(
  ( (Unit!42996) )
))
(declare-fun e!741960 () Unit!42995)

(declare-fun lt!581497 () Unit!42995)

(assert (=> b!1300708 (= e!741960 lt!581497)))

(declare-datatypes ((V!51555 0))(
  ( (V!51556 (val!17494 Int)) )
))
(declare-datatypes ((tuple2!22718 0))(
  ( (tuple2!22719 (_1!11369 (_ BitVec 64)) (_2!11369 V!51555)) )
))
(declare-datatypes ((List!29874 0))(
  ( (Nil!29871) (Cons!29870 (h!31079 tuple2!22718) (t!43455 List!29874)) )
))
(declare-datatypes ((ListLongMap!20387 0))(
  ( (ListLongMap!20388 (toList!10209 List!29874)) )
))
(declare-fun lt!581503 () ListLongMap!20387)

(declare-fun call!63745 () ListLongMap!20387)

(assert (=> b!1300708 (= lt!581503 call!63745)))

(declare-fun call!63746 () Unit!42995)

(assert (=> b!1300708 (= lt!581497 call!63746)))

(declare-fun call!63743 () Bool)

(assert (=> b!1300708 call!63743))

(declare-fun b!1300709 () Bool)

(declare-fun res!864385 () Bool)

(declare-fun e!741965 () Bool)

(assert (=> b!1300709 (=> (not res!864385) (not e!741965))))

(declare-datatypes ((array!86651 0))(
  ( (array!86652 (arr!41817 (Array (_ BitVec 32) (_ BitVec 64))) (size!42368 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86651)

(declare-datatypes ((List!29875 0))(
  ( (Nil!29872) (Cons!29871 (h!31080 (_ BitVec 64)) (t!43456 List!29875)) )
))
(declare-fun arrayNoDuplicates!0 (array!86651 (_ BitVec 32) List!29875) Bool)

(assert (=> b!1300709 (= res!864385 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29872))))

(declare-fun b!1300710 () Bool)

(declare-fun e!741966 () Unit!42995)

(declare-fun lt!581501 () Unit!42995)

(assert (=> b!1300710 (= e!741966 lt!581501)))

(declare-fun lt!581498 () ListLongMap!20387)

(declare-fun call!63744 () ListLongMap!20387)

(assert (=> b!1300710 (= lt!581498 call!63744)))

(declare-fun lt!581499 () ListLongMap!20387)

(declare-fun zeroValue!1387 () V!51555)

(declare-fun +!4434 (ListLongMap!20387 tuple2!22718) ListLongMap!20387)

(assert (=> b!1300710 (= lt!581499 (+!4434 lt!581498 (tuple2!22719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!581496 () Unit!42995)

(declare-fun call!63742 () Unit!42995)

(assert (=> b!1300710 (= lt!581496 call!63742)))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8270 (ListLongMap!20387 (_ BitVec 64)) Bool)

(assert (=> b!1300710 (contains!8270 lt!581499 k0!1205)))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!72 ((_ BitVec 64) (_ BitVec 64) V!51555 ListLongMap!20387) Unit!42995)

(assert (=> b!1300710 (= lt!581501 (lemmaInListMapAfterAddingDiffThenInBefore!72 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581498))))

(declare-fun call!63741 () Bool)

(assert (=> b!1300710 call!63741))

(declare-fun b!1300711 () Bool)

(declare-fun e!741963 () Bool)

(declare-fun e!741962 () Bool)

(declare-fun mapRes!53834 () Bool)

(assert (=> b!1300711 (= e!741963 (and e!741962 mapRes!53834))))

(declare-fun condMapEmpty!53834 () Bool)

(declare-datatypes ((ValueCell!16521 0))(
  ( (ValueCellFull!16521 (v!20100 V!51555)) (EmptyCell!16521) )
))
(declare-datatypes ((array!86653 0))(
  ( (array!86654 (arr!41818 (Array (_ BitVec 32) ValueCell!16521)) (size!42369 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86653)

(declare-fun mapDefault!53834 () ValueCell!16521)

(assert (=> b!1300711 (= condMapEmpty!53834 (= (arr!41818 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16521)) mapDefault!53834)))))

(declare-fun b!1300712 () Bool)

(declare-fun Unit!42997 () Unit!42995)

(assert (=> b!1300712 (= e!741960 Unit!42997)))

(declare-fun b!1300713 () Bool)

(declare-fun res!864392 () Bool)

(assert (=> b!1300713 (=> (not res!864392) (not e!741965))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1300713 (= res!864392 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42368 _keys!1741))))))

(declare-fun minValue!1387 () V!51555)

(declare-fun bm!63738 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6147 (array!86651 array!86653 (_ BitVec 32) (_ BitVec 32) V!51555 V!51555 (_ BitVec 32) Int) ListLongMap!20387)

(assert (=> bm!63738 (= call!63744 (getCurrentListMapNoExtraKeys!6147 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun c!124584 () Bool)

(declare-fun lt!581493 () ListLongMap!20387)

(declare-fun c!124585 () Bool)

(declare-fun bm!63739 () Bool)

(assert (=> bm!63739 (= call!63742 (lemmaInListMapAfterAddingDiffThenInBefore!72 k0!1205 (ite c!124584 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124585 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124584 minValue!1387 (ite c!124585 zeroValue!1387 minValue!1387)) (ite c!124584 lt!581499 (ite c!124585 lt!581493 lt!581503))))))

(declare-fun b!1300714 () Bool)

(declare-fun res!864387 () Bool)

(assert (=> b!1300714 (=> (not res!864387) (not e!741965))))

(assert (=> b!1300714 (= res!864387 (and (= (size!42369 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42368 _keys!1741) (size!42369 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53834 () Bool)

(declare-fun tp!102731 () Bool)

(declare-fun e!741967 () Bool)

(assert (=> mapNonEmpty!53834 (= mapRes!53834 (and tp!102731 e!741967))))

(declare-fun mapKey!53834 () (_ BitVec 32))

(declare-fun mapValue!53834 () ValueCell!16521)

(declare-fun mapRest!53834 () (Array (_ BitVec 32) ValueCell!16521))

(assert (=> mapNonEmpty!53834 (= (arr!41818 _values!1445) (store mapRest!53834 mapKey!53834 mapValue!53834))))

(declare-fun res!864388 () Bool)

(assert (=> start!109842 (=> (not res!864388) (not e!741965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109842 (= res!864388 (validMask!0 mask!2175))))

(assert (=> start!109842 e!741965))

(declare-fun tp_is_empty!34839 () Bool)

(assert (=> start!109842 tp_is_empty!34839))

(assert (=> start!109842 true))

(declare-fun array_inv!31637 (array!86653) Bool)

(assert (=> start!109842 (and (array_inv!31637 _values!1445) e!741963)))

(declare-fun array_inv!31638 (array!86651) Bool)

(assert (=> start!109842 (array_inv!31638 _keys!1741)))

(assert (=> start!109842 tp!102732))

(declare-fun b!1300715 () Bool)

(assert (=> b!1300715 (= e!741967 tp_is_empty!34839)))

(declare-fun bm!63740 () Bool)

(assert (=> bm!63740 (= call!63741 (contains!8270 (ite c!124584 lt!581498 (ite c!124585 lt!581493 lt!581503)) k0!1205))))

(declare-fun b!1300716 () Bool)

(declare-fun res!864386 () Bool)

(assert (=> b!1300716 (=> (not res!864386) (not e!741965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300716 (= res!864386 (validKeyInArray!0 (select (arr!41817 _keys!1741) from!2144)))))

(declare-fun bm!63741 () Bool)

(assert (=> bm!63741 (= call!63743 call!63741)))

(declare-fun b!1300717 () Bool)

(declare-fun e!741961 () Unit!42995)

(assert (=> b!1300717 (= e!741966 e!741961)))

(declare-fun lt!581500 () Bool)

(assert (=> b!1300717 (= c!124585 (and (not lt!581500) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1300718 () Bool)

(assert (=> b!1300718 (= e!741965 (not true))))

(assert (=> b!1300718 (not (contains!8270 (ListLongMap!20388 Nil!29871) k0!1205))))

(declare-fun lt!581502 () Unit!42995)

(declare-fun emptyContainsNothing!201 ((_ BitVec 64)) Unit!42995)

(assert (=> b!1300718 (= lt!581502 (emptyContainsNothing!201 k0!1205))))

(declare-fun lt!581495 () Unit!42995)

(assert (=> b!1300718 (= lt!581495 e!741966)))

(assert (=> b!1300718 (= c!124584 (and (not lt!581500) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1300718 (= lt!581500 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1300719 () Bool)

(assert (=> b!1300719 (= e!741962 tp_is_empty!34839)))

(declare-fun b!1300720 () Bool)

(declare-fun res!864389 () Bool)

(assert (=> b!1300720 (=> (not res!864389) (not e!741965))))

(declare-fun getCurrentListMap!5179 (array!86651 array!86653 (_ BitVec 32) (_ BitVec 32) V!51555 V!51555 (_ BitVec 32) Int) ListLongMap!20387)

(assert (=> b!1300720 (= res!864389 (contains!8270 (getCurrentListMap!5179 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53834 () Bool)

(assert (=> mapIsEmpty!53834 mapRes!53834))

(declare-fun bm!63742 () Bool)

(assert (=> bm!63742 (= call!63746 call!63742)))

(declare-fun b!1300721 () Bool)

(declare-fun res!864390 () Bool)

(assert (=> b!1300721 (=> (not res!864390) (not e!741965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86651 (_ BitVec 32)) Bool)

(assert (=> b!1300721 (= res!864390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1300722 () Bool)

(declare-fun res!864391 () Bool)

(assert (=> b!1300722 (=> (not res!864391) (not e!741965))))

(assert (=> b!1300722 (= res!864391 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42368 _keys!1741))))))

(declare-fun b!1300723 () Bool)

(assert (=> b!1300723 call!63743))

(declare-fun lt!581494 () Unit!42995)

(assert (=> b!1300723 (= lt!581494 call!63746)))

(assert (=> b!1300723 (= lt!581493 call!63745)))

(assert (=> b!1300723 (= e!741961 lt!581494)))

(declare-fun b!1300724 () Bool)

(declare-fun c!124586 () Bool)

(assert (=> b!1300724 (= c!124586 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!581500))))

(assert (=> b!1300724 (= e!741961 e!741960)))

(declare-fun bm!63743 () Bool)

(assert (=> bm!63743 (= call!63745 call!63744)))

(assert (= (and start!109842 res!864388) b!1300714))

(assert (= (and b!1300714 res!864387) b!1300721))

(assert (= (and b!1300721 res!864390) b!1300709))

(assert (= (and b!1300709 res!864385) b!1300713))

(assert (= (and b!1300713 res!864392) b!1300720))

(assert (= (and b!1300720 res!864389) b!1300722))

(assert (= (and b!1300722 res!864391) b!1300716))

(assert (= (and b!1300716 res!864386) b!1300718))

(assert (= (and b!1300718 c!124584) b!1300710))

(assert (= (and b!1300718 (not c!124584)) b!1300717))

(assert (= (and b!1300717 c!124585) b!1300723))

(assert (= (and b!1300717 (not c!124585)) b!1300724))

(assert (= (and b!1300724 c!124586) b!1300708))

(assert (= (and b!1300724 (not c!124586)) b!1300712))

(assert (= (or b!1300723 b!1300708) bm!63743))

(assert (= (or b!1300723 b!1300708) bm!63742))

(assert (= (or b!1300723 b!1300708) bm!63741))

(assert (= (or b!1300710 bm!63743) bm!63738))

(assert (= (or b!1300710 bm!63742) bm!63739))

(assert (= (or b!1300710 bm!63741) bm!63740))

(assert (= (and b!1300711 condMapEmpty!53834) mapIsEmpty!53834))

(assert (= (and b!1300711 (not condMapEmpty!53834)) mapNonEmpty!53834))

(get-info :version)

(assert (= (and mapNonEmpty!53834 ((_ is ValueCellFull!16521) mapValue!53834)) b!1300715))

(assert (= (and b!1300711 ((_ is ValueCellFull!16521) mapDefault!53834)) b!1300719))

(assert (= start!109842 b!1300711))

(declare-fun m!1191571 () Bool)

(assert (=> bm!63738 m!1191571))

(declare-fun m!1191573 () Bool)

(assert (=> start!109842 m!1191573))

(declare-fun m!1191575 () Bool)

(assert (=> start!109842 m!1191575))

(declare-fun m!1191577 () Bool)

(assert (=> start!109842 m!1191577))

(declare-fun m!1191579 () Bool)

(assert (=> bm!63739 m!1191579))

(declare-fun m!1191581 () Bool)

(assert (=> b!1300720 m!1191581))

(assert (=> b!1300720 m!1191581))

(declare-fun m!1191583 () Bool)

(assert (=> b!1300720 m!1191583))

(declare-fun m!1191585 () Bool)

(assert (=> mapNonEmpty!53834 m!1191585))

(declare-fun m!1191587 () Bool)

(assert (=> bm!63740 m!1191587))

(declare-fun m!1191589 () Bool)

(assert (=> b!1300709 m!1191589))

(declare-fun m!1191591 () Bool)

(assert (=> b!1300718 m!1191591))

(declare-fun m!1191593 () Bool)

(assert (=> b!1300718 m!1191593))

(declare-fun m!1191595 () Bool)

(assert (=> b!1300721 m!1191595))

(declare-fun m!1191597 () Bool)

(assert (=> b!1300710 m!1191597))

(declare-fun m!1191599 () Bool)

(assert (=> b!1300710 m!1191599))

(declare-fun m!1191601 () Bool)

(assert (=> b!1300710 m!1191601))

(declare-fun m!1191603 () Bool)

(assert (=> b!1300716 m!1191603))

(assert (=> b!1300716 m!1191603))

(declare-fun m!1191605 () Bool)

(assert (=> b!1300716 m!1191605))

(check-sat (not mapNonEmpty!53834) (not b!1300718) (not b!1300716) (not b!1300710) b_and!47323 (not b!1300721) tp_is_empty!34839 (not bm!63739) (not b!1300720) (not start!109842) (not b!1300709) (not bm!63740) (not bm!63738) (not b_next!29199))
(check-sat b_and!47323 (not b_next!29199))
