; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34278 () Bool)

(assert start!34278)

(declare-fun b_free!7269 () Bool)

(declare-fun b_next!7269 () Bool)

(assert (=> start!34278 (= b_free!7269 (not b_next!7269))))

(declare-fun tp!25343 () Bool)

(declare-fun b_and!14489 () Bool)

(assert (=> start!34278 (= tp!25343 b_and!14489)))

(declare-fun res!188990 () Bool)

(declare-fun e!209584 () Bool)

(assert (=> start!34278 (=> (not res!188990) (not e!209584))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34278 (= res!188990 (validMask!0 mask!2385))))

(assert (=> start!34278 e!209584))

(assert (=> start!34278 true))

(declare-fun tp_is_empty!7221 () Bool)

(assert (=> start!34278 tp_is_empty!7221))

(assert (=> start!34278 tp!25343))

(declare-datatypes ((V!10605 0))(
  ( (V!10606 (val!3655 Int)) )
))
(declare-datatypes ((ValueCell!3267 0))(
  ( (ValueCellFull!3267 (v!5824 V!10605)) (EmptyCell!3267) )
))
(declare-datatypes ((array!18009 0))(
  ( (array!18010 (arr!8521 (Array (_ BitVec 32) ValueCell!3267)) (size!8873 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18009)

(declare-fun e!209586 () Bool)

(declare-fun array_inv!6304 (array!18009) Bool)

(assert (=> start!34278 (and (array_inv!6304 _values!1525) e!209586)))

(declare-datatypes ((array!18011 0))(
  ( (array!18012 (arr!8522 (Array (_ BitVec 32) (_ BitVec 64))) (size!8874 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18011)

(declare-fun array_inv!6305 (array!18011) Bool)

(assert (=> start!34278 (array_inv!6305 _keys!1895)))

(declare-fun b!341741 () Bool)

(declare-fun e!209587 () Bool)

(assert (=> b!341741 (= e!209587 tp_is_empty!7221)))

(declare-fun b!341742 () Bool)

(declare-fun res!188988 () Bool)

(assert (=> b!341742 (=> (not res!188988) (not e!209584))))

(declare-datatypes ((List!4927 0))(
  ( (Nil!4924) (Cons!4923 (h!5779 (_ BitVec 64)) (t!10045 List!4927)) )
))
(declare-fun arrayNoDuplicates!0 (array!18011 (_ BitVec 32) List!4927) Bool)

(assert (=> b!341742 (= res!188988 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4924))))

(declare-fun b!341743 () Bool)

(declare-fun res!188987 () Bool)

(assert (=> b!341743 (=> (not res!188987) (not e!209584))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!341743 (= res!188987 (and (= (size!8873 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8874 _keys!1895) (size!8873 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341744 () Bool)

(declare-datatypes ((Unit!10623 0))(
  ( (Unit!10624) )
))
(declare-fun e!209583 () Unit!10623)

(declare-fun Unit!10625 () Unit!10623)

(assert (=> b!341744 (= e!209583 Unit!10625)))

(declare-fun mapIsEmpty!12261 () Bool)

(declare-fun mapRes!12261 () Bool)

(assert (=> mapIsEmpty!12261 mapRes!12261))

(declare-fun b!341745 () Bool)

(declare-fun e!209585 () Bool)

(assert (=> b!341745 (= e!209586 (and e!209585 mapRes!12261))))

(declare-fun condMapEmpty!12261 () Bool)

(declare-fun mapDefault!12261 () ValueCell!3267)

(assert (=> b!341745 (= condMapEmpty!12261 (= (arr!8521 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3267)) mapDefault!12261)))))

(declare-fun b!341746 () Bool)

(declare-fun res!188989 () Bool)

(assert (=> b!341746 (=> (not res!188989) (not e!209584))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10605)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10605)

(declare-datatypes ((tuple2!5284 0))(
  ( (tuple2!5285 (_1!2652 (_ BitVec 64)) (_2!2652 V!10605)) )
))
(declare-datatypes ((List!4928 0))(
  ( (Nil!4925) (Cons!4924 (h!5780 tuple2!5284) (t!10046 List!4928)) )
))
(declare-datatypes ((ListLongMap!4211 0))(
  ( (ListLongMap!4212 (toList!2121 List!4928)) )
))
(declare-fun contains!2172 (ListLongMap!4211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1641 (array!18011 array!18009 (_ BitVec 32) (_ BitVec 32) V!10605 V!10605 (_ BitVec 32) Int) ListLongMap!4211)

(assert (=> b!341746 (= res!188989 (not (contains!2172 (getCurrentListMap!1641 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!12261 () Bool)

(declare-fun tp!25344 () Bool)

(assert (=> mapNonEmpty!12261 (= mapRes!12261 (and tp!25344 e!209587))))

(declare-fun mapRest!12261 () (Array (_ BitVec 32) ValueCell!3267))

(declare-fun mapKey!12261 () (_ BitVec 32))

(declare-fun mapValue!12261 () ValueCell!3267)

(assert (=> mapNonEmpty!12261 (= (arr!8521 _values!1525) (store mapRest!12261 mapKey!12261 mapValue!12261))))

(declare-fun b!341747 () Bool)

(declare-fun e!209588 () Bool)

(assert (=> b!341747 (= e!209584 e!209588)))

(declare-fun res!188984 () Bool)

(assert (=> b!341747 (=> (not res!188984) (not e!209588))))

(declare-datatypes ((SeekEntryResult!3289 0))(
  ( (MissingZero!3289 (index!15335 (_ BitVec 32))) (Found!3289 (index!15336 (_ BitVec 32))) (Intermediate!3289 (undefined!4101 Bool) (index!15337 (_ BitVec 32)) (x!34040 (_ BitVec 32))) (Undefined!3289) (MissingVacant!3289 (index!15338 (_ BitVec 32))) )
))
(declare-fun lt!161917 () SeekEntryResult!3289)

(get-info :version)

(assert (=> b!341747 (= res!188984 (and (not ((_ is Found!3289) lt!161917)) (not ((_ is MissingZero!3289) lt!161917)) ((_ is MissingVacant!3289) lt!161917)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18011 (_ BitVec 32)) SeekEntryResult!3289)

(assert (=> b!341747 (= lt!161917 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!341748 () Bool)

(assert (=> b!341748 (= e!209588 (and (bvslt #b00000000000000000000000000000000 (size!8874 _keys!1895)) (bvsge (size!8874 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun lt!161918 () Unit!10623)

(assert (=> b!341748 (= lt!161918 e!209583)))

(declare-fun c!52667 () Bool)

(declare-fun arrayContainsKey!0 (array!18011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341748 (= c!52667 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!341749 () Bool)

(declare-fun Unit!10626 () Unit!10623)

(assert (=> b!341749 (= e!209583 Unit!10626)))

(declare-fun lt!161919 () Unit!10623)

(declare-fun lemmaArrayContainsKeyThenInListMap!294 (array!18011 array!18009 (_ BitVec 32) (_ BitVec 32) V!10605 V!10605 (_ BitVec 64) (_ BitVec 32) Int) Unit!10623)

(declare-fun arrayScanForKey!0 (array!18011 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341749 (= lt!161919 (lemmaArrayContainsKeyThenInListMap!294 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341749 false))

(declare-fun b!341750 () Bool)

(assert (=> b!341750 (= e!209585 tp_is_empty!7221)))

(declare-fun b!341751 () Bool)

(declare-fun res!188986 () Bool)

(assert (=> b!341751 (=> (not res!188986) (not e!209584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341751 (= res!188986 (validKeyInArray!0 k0!1348))))

(declare-fun b!341752 () Bool)

(declare-fun res!188985 () Bool)

(assert (=> b!341752 (=> (not res!188985) (not e!209584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18011 (_ BitVec 32)) Bool)

(assert (=> b!341752 (= res!188985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!34278 res!188990) b!341743))

(assert (= (and b!341743 res!188987) b!341752))

(assert (= (and b!341752 res!188985) b!341742))

(assert (= (and b!341742 res!188988) b!341751))

(assert (= (and b!341751 res!188986) b!341746))

(assert (= (and b!341746 res!188989) b!341747))

(assert (= (and b!341747 res!188984) b!341748))

(assert (= (and b!341748 c!52667) b!341749))

(assert (= (and b!341748 (not c!52667)) b!341744))

(assert (= (and b!341745 condMapEmpty!12261) mapIsEmpty!12261))

(assert (= (and b!341745 (not condMapEmpty!12261)) mapNonEmpty!12261))

(assert (= (and mapNonEmpty!12261 ((_ is ValueCellFull!3267) mapValue!12261)) b!341741))

(assert (= (and b!341745 ((_ is ValueCellFull!3267) mapDefault!12261)) b!341750))

(assert (= start!34278 b!341745))

(declare-fun m!344075 () Bool)

(assert (=> b!341746 m!344075))

(assert (=> b!341746 m!344075))

(declare-fun m!344077 () Bool)

(assert (=> b!341746 m!344077))

(declare-fun m!344079 () Bool)

(assert (=> b!341749 m!344079))

(assert (=> b!341749 m!344079))

(declare-fun m!344081 () Bool)

(assert (=> b!341749 m!344081))

(declare-fun m!344083 () Bool)

(assert (=> b!341752 m!344083))

(declare-fun m!344085 () Bool)

(assert (=> b!341747 m!344085))

(declare-fun m!344087 () Bool)

(assert (=> b!341742 m!344087))

(declare-fun m!344089 () Bool)

(assert (=> mapNonEmpty!12261 m!344089))

(declare-fun m!344091 () Bool)

(assert (=> start!34278 m!344091))

(declare-fun m!344093 () Bool)

(assert (=> start!34278 m!344093))

(declare-fun m!344095 () Bool)

(assert (=> start!34278 m!344095))

(declare-fun m!344097 () Bool)

(assert (=> b!341748 m!344097))

(declare-fun m!344099 () Bool)

(assert (=> b!341751 m!344099))

(check-sat (not b!341746) (not b!341747) (not b!341748) b_and!14489 tp_is_empty!7221 (not b!341742) (not start!34278) (not b!341751) (not mapNonEmpty!12261) (not b_next!7269) (not b!341749) (not b!341752))
(check-sat b_and!14489 (not b_next!7269))
(get-model)

(declare-fun d!70849 () Bool)

(declare-fun e!209616 () Bool)

(assert (=> d!70849 e!209616))

(declare-fun res!189014 () Bool)

(assert (=> d!70849 (=> res!189014 e!209616)))

(declare-fun lt!161940 () Bool)

(assert (=> d!70849 (= res!189014 (not lt!161940))))

(declare-fun lt!161939 () Bool)

(assert (=> d!70849 (= lt!161940 lt!161939)))

(declare-fun lt!161938 () Unit!10623)

(declare-fun e!209615 () Unit!10623)

(assert (=> d!70849 (= lt!161938 e!209615)))

(declare-fun c!52673 () Bool)

(assert (=> d!70849 (= c!52673 lt!161939)))

(declare-fun containsKey!326 (List!4928 (_ BitVec 64)) Bool)

(assert (=> d!70849 (= lt!161939 (containsKey!326 (toList!2121 (getCurrentListMap!1641 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70849 (= (contains!2172 (getCurrentListMap!1641 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!161940)))

(declare-fun b!341795 () Bool)

(declare-fun lt!161937 () Unit!10623)

(assert (=> b!341795 (= e!209615 lt!161937)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!275 (List!4928 (_ BitVec 64)) Unit!10623)

(assert (=> b!341795 (= lt!161937 (lemmaContainsKeyImpliesGetValueByKeyDefined!275 (toList!2121 (getCurrentListMap!1641 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!340 0))(
  ( (Some!339 (v!5826 V!10605)) (None!338) )
))
(declare-fun isDefined!276 (Option!340) Bool)

(declare-fun getValueByKey!334 (List!4928 (_ BitVec 64)) Option!340)

(assert (=> b!341795 (isDefined!276 (getValueByKey!334 (toList!2121 (getCurrentListMap!1641 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!341796 () Bool)

(declare-fun Unit!10631 () Unit!10623)

(assert (=> b!341796 (= e!209615 Unit!10631)))

(declare-fun b!341797 () Bool)

(assert (=> b!341797 (= e!209616 (isDefined!276 (getValueByKey!334 (toList!2121 (getCurrentListMap!1641 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70849 c!52673) b!341795))

(assert (= (and d!70849 (not c!52673)) b!341796))

(assert (= (and d!70849 (not res!189014)) b!341797))

(declare-fun m!344127 () Bool)

(assert (=> d!70849 m!344127))

(declare-fun m!344129 () Bool)

(assert (=> b!341795 m!344129))

(declare-fun m!344131 () Bool)

(assert (=> b!341795 m!344131))

(assert (=> b!341795 m!344131))

(declare-fun m!344133 () Bool)

(assert (=> b!341795 m!344133))

(assert (=> b!341797 m!344131))

(assert (=> b!341797 m!344131))

(assert (=> b!341797 m!344133))

(assert (=> b!341746 d!70849))

(declare-fun b!341840 () Bool)

(declare-fun e!209646 () ListLongMap!4211)

(declare-fun call!26607 () ListLongMap!4211)

(assert (=> b!341840 (= e!209646 call!26607)))

(declare-fun b!341842 () Bool)

(declare-fun e!209651 () ListLongMap!4211)

(declare-fun call!26604 () ListLongMap!4211)

(declare-fun +!721 (ListLongMap!4211 tuple2!5284) ListLongMap!4211)

(assert (=> b!341842 (= e!209651 (+!721 call!26604 (tuple2!5285 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!341843 () Bool)

(declare-fun e!209653 () Bool)

(assert (=> b!341843 (= e!209653 (validKeyInArray!0 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!341844 () Bool)

(declare-fun e!209643 () Bool)

(assert (=> b!341844 (= e!209643 (validKeyInArray!0 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!341845 () Bool)

(declare-fun e!209649 () ListLongMap!4211)

(assert (=> b!341845 (= e!209651 e!209649)))

(declare-fun c!52691 () Bool)

(assert (=> b!341845 (= c!52691 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26600 () Bool)

(declare-fun call!26603 () ListLongMap!4211)

(declare-fun call!26606 () ListLongMap!4211)

(assert (=> bm!26600 (= call!26603 call!26606)))

(declare-fun b!341846 () Bool)

(declare-fun e!209644 () Bool)

(declare-fun e!209654 () Bool)

(assert (=> b!341846 (= e!209644 e!209654)))

(declare-fun c!52689 () Bool)

(assert (=> b!341846 (= c!52689 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26601 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!596 (array!18011 array!18009 (_ BitVec 32) (_ BitVec 32) V!10605 V!10605 (_ BitVec 32) Int) ListLongMap!4211)

(assert (=> bm!26601 (= call!26606 (getCurrentListMapNoExtraKeys!596 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!341847 () Bool)

(declare-fun e!209652 () Bool)

(declare-fun call!26608 () Bool)

(assert (=> b!341847 (= e!209652 (not call!26608))))

(declare-fun b!341848 () Bool)

(declare-fun call!26605 () Bool)

(assert (=> b!341848 (= e!209654 (not call!26605))))

(declare-fun b!341849 () Bool)

(declare-fun e!209655 () Bool)

(assert (=> b!341849 (= e!209654 e!209655)))

(declare-fun res!189038 () Bool)

(assert (=> b!341849 (= res!189038 call!26605)))

(assert (=> b!341849 (=> (not res!189038) (not e!209655))))

(declare-fun b!341841 () Bool)

(declare-fun e!209648 () Bool)

(assert (=> b!341841 (= e!209652 e!209648)))

(declare-fun res!189036 () Bool)

(assert (=> b!341841 (= res!189036 call!26608)))

(assert (=> b!341841 (=> (not res!189036) (not e!209648))))

(declare-fun d!70851 () Bool)

(assert (=> d!70851 e!209644))

(declare-fun res!189037 () Bool)

(assert (=> d!70851 (=> (not res!189037) (not e!209644))))

(assert (=> d!70851 (= res!189037 (or (bvsge #b00000000000000000000000000000000 (size!8874 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8874 _keys!1895)))))))

(declare-fun lt!161991 () ListLongMap!4211)

(declare-fun lt!161985 () ListLongMap!4211)

(assert (=> d!70851 (= lt!161991 lt!161985)))

(declare-fun lt!162005 () Unit!10623)

(declare-fun e!209645 () Unit!10623)

(assert (=> d!70851 (= lt!162005 e!209645)))

(declare-fun c!52686 () Bool)

(assert (=> d!70851 (= c!52686 e!209643)))

(declare-fun res!189039 () Bool)

(assert (=> d!70851 (=> (not res!189039) (not e!209643))))

(assert (=> d!70851 (= res!189039 (bvslt #b00000000000000000000000000000000 (size!8874 _keys!1895)))))

(assert (=> d!70851 (= lt!161985 e!209651)))

(declare-fun c!52688 () Bool)

(assert (=> d!70851 (= c!52688 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70851 (validMask!0 mask!2385)))

(assert (=> d!70851 (= (getCurrentListMap!1641 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!161991)))

(declare-fun call!26609 () ListLongMap!4211)

(declare-fun bm!26602 () Bool)

(assert (=> bm!26602 (= call!26604 (+!721 (ite c!52688 call!26606 (ite c!52691 call!26603 call!26609)) (ite (or c!52688 c!52691) (tuple2!5285 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5285 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun bm!26603 () Bool)

(assert (=> bm!26603 (= call!26609 call!26603)))

(declare-fun e!209647 () Bool)

(declare-fun b!341850 () Bool)

(declare-fun apply!277 (ListLongMap!4211 (_ BitVec 64)) V!10605)

(declare-fun get!4630 (ValueCell!3267 V!10605) V!10605)

(declare-fun dynLambda!615 (Int (_ BitVec 64)) V!10605)

(assert (=> b!341850 (= e!209647 (= (apply!277 lt!161991 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000)) (get!4630 (select (arr!8521 _values!1525) #b00000000000000000000000000000000) (dynLambda!615 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!341850 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8873 _values!1525)))))

(assert (=> b!341850 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8874 _keys!1895)))))

(declare-fun b!341851 () Bool)

(declare-fun c!52690 () Bool)

(assert (=> b!341851 (= c!52690 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!341851 (= e!209649 e!209646)))

(declare-fun b!341852 () Bool)

(assert (=> b!341852 (= e!209655 (= (apply!277 lt!161991 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!341853 () Bool)

(assert (=> b!341853 (= e!209646 call!26609)))

(declare-fun bm!26604 () Bool)

(assert (=> bm!26604 (= call!26605 (contains!2172 lt!161991 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!341854 () Bool)

(declare-fun lt!161989 () Unit!10623)

(assert (=> b!341854 (= e!209645 lt!161989)))

(declare-fun lt!162002 () ListLongMap!4211)

(assert (=> b!341854 (= lt!162002 (getCurrentListMapNoExtraKeys!596 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161999 () (_ BitVec 64))

(assert (=> b!341854 (= lt!161999 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161990 () (_ BitVec 64))

(assert (=> b!341854 (= lt!161990 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162003 () Unit!10623)

(declare-fun addStillContains!253 (ListLongMap!4211 (_ BitVec 64) V!10605 (_ BitVec 64)) Unit!10623)

(assert (=> b!341854 (= lt!162003 (addStillContains!253 lt!162002 lt!161999 zeroValue!1467 lt!161990))))

(assert (=> b!341854 (contains!2172 (+!721 lt!162002 (tuple2!5285 lt!161999 zeroValue!1467)) lt!161990)))

(declare-fun lt!161987 () Unit!10623)

(assert (=> b!341854 (= lt!161987 lt!162003)))

(declare-fun lt!161986 () ListLongMap!4211)

(assert (=> b!341854 (= lt!161986 (getCurrentListMapNoExtraKeys!596 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162004 () (_ BitVec 64))

(assert (=> b!341854 (= lt!162004 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162001 () (_ BitVec 64))

(assert (=> b!341854 (= lt!162001 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161997 () Unit!10623)

(declare-fun addApplyDifferent!253 (ListLongMap!4211 (_ BitVec 64) V!10605 (_ BitVec 64)) Unit!10623)

(assert (=> b!341854 (= lt!161997 (addApplyDifferent!253 lt!161986 lt!162004 minValue!1467 lt!162001))))

(assert (=> b!341854 (= (apply!277 (+!721 lt!161986 (tuple2!5285 lt!162004 minValue!1467)) lt!162001) (apply!277 lt!161986 lt!162001))))

(declare-fun lt!161996 () Unit!10623)

(assert (=> b!341854 (= lt!161996 lt!161997)))

(declare-fun lt!161998 () ListLongMap!4211)

(assert (=> b!341854 (= lt!161998 (getCurrentListMapNoExtraKeys!596 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161993 () (_ BitVec 64))

(assert (=> b!341854 (= lt!161993 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161995 () (_ BitVec 64))

(assert (=> b!341854 (= lt!161995 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161988 () Unit!10623)

(assert (=> b!341854 (= lt!161988 (addApplyDifferent!253 lt!161998 lt!161993 zeroValue!1467 lt!161995))))

(assert (=> b!341854 (= (apply!277 (+!721 lt!161998 (tuple2!5285 lt!161993 zeroValue!1467)) lt!161995) (apply!277 lt!161998 lt!161995))))

(declare-fun lt!161994 () Unit!10623)

(assert (=> b!341854 (= lt!161994 lt!161988)))

(declare-fun lt!162006 () ListLongMap!4211)

(assert (=> b!341854 (= lt!162006 (getCurrentListMapNoExtraKeys!596 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162000 () (_ BitVec 64))

(assert (=> b!341854 (= lt!162000 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161992 () (_ BitVec 64))

(assert (=> b!341854 (= lt!161992 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!341854 (= lt!161989 (addApplyDifferent!253 lt!162006 lt!162000 minValue!1467 lt!161992))))

(assert (=> b!341854 (= (apply!277 (+!721 lt!162006 (tuple2!5285 lt!162000 minValue!1467)) lt!161992) (apply!277 lt!162006 lt!161992))))

(declare-fun bm!26605 () Bool)

(assert (=> bm!26605 (= call!26608 (contains!2172 lt!161991 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!341855 () Bool)

(declare-fun res!189035 () Bool)

(assert (=> b!341855 (=> (not res!189035) (not e!209644))))

(declare-fun e!209650 () Bool)

(assert (=> b!341855 (= res!189035 e!209650)))

(declare-fun res!189040 () Bool)

(assert (=> b!341855 (=> res!189040 e!209650)))

(assert (=> b!341855 (= res!189040 (not e!209653))))

(declare-fun res!189034 () Bool)

(assert (=> b!341855 (=> (not res!189034) (not e!209653))))

(assert (=> b!341855 (= res!189034 (bvslt #b00000000000000000000000000000000 (size!8874 _keys!1895)))))

(declare-fun b!341856 () Bool)

(assert (=> b!341856 (= e!209649 call!26607)))

(declare-fun bm!26606 () Bool)

(assert (=> bm!26606 (= call!26607 call!26604)))

(declare-fun b!341857 () Bool)

(assert (=> b!341857 (= e!209650 e!209647)))

(declare-fun res!189033 () Bool)

(assert (=> b!341857 (=> (not res!189033) (not e!209647))))

(assert (=> b!341857 (= res!189033 (contains!2172 lt!161991 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!341857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8874 _keys!1895)))))

(declare-fun b!341858 () Bool)

(declare-fun res!189041 () Bool)

(assert (=> b!341858 (=> (not res!189041) (not e!209644))))

(assert (=> b!341858 (= res!189041 e!209652)))

(declare-fun c!52687 () Bool)

(assert (=> b!341858 (= c!52687 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!341859 () Bool)

(assert (=> b!341859 (= e!209648 (= (apply!277 lt!161991 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!341860 () Bool)

(declare-fun Unit!10632 () Unit!10623)

(assert (=> b!341860 (= e!209645 Unit!10632)))

(assert (= (and d!70851 c!52688) b!341842))

(assert (= (and d!70851 (not c!52688)) b!341845))

(assert (= (and b!341845 c!52691) b!341856))

(assert (= (and b!341845 (not c!52691)) b!341851))

(assert (= (and b!341851 c!52690) b!341840))

(assert (= (and b!341851 (not c!52690)) b!341853))

(assert (= (or b!341840 b!341853) bm!26603))

(assert (= (or b!341856 bm!26603) bm!26600))

(assert (= (or b!341856 b!341840) bm!26606))

(assert (= (or b!341842 bm!26600) bm!26601))

(assert (= (or b!341842 bm!26606) bm!26602))

(assert (= (and d!70851 res!189039) b!341844))

(assert (= (and d!70851 c!52686) b!341854))

(assert (= (and d!70851 (not c!52686)) b!341860))

(assert (= (and d!70851 res!189037) b!341855))

(assert (= (and b!341855 res!189034) b!341843))

(assert (= (and b!341855 (not res!189040)) b!341857))

(assert (= (and b!341857 res!189033) b!341850))

(assert (= (and b!341855 res!189035) b!341858))

(assert (= (and b!341858 c!52687) b!341841))

(assert (= (and b!341858 (not c!52687)) b!341847))

(assert (= (and b!341841 res!189036) b!341859))

(assert (= (or b!341841 b!341847) bm!26605))

(assert (= (and b!341858 res!189041) b!341846))

(assert (= (and b!341846 c!52689) b!341849))

(assert (= (and b!341846 (not c!52689)) b!341848))

(assert (= (and b!341849 res!189038) b!341852))

(assert (= (or b!341849 b!341848) bm!26604))

(declare-fun b_lambda!8477 () Bool)

(assert (=> (not b_lambda!8477) (not b!341850)))

(declare-fun t!10050 () Bool)

(declare-fun tb!3077 () Bool)

(assert (=> (and start!34278 (= defaultEntry!1528 defaultEntry!1528) t!10050) tb!3077))

(declare-fun result!5545 () Bool)

(assert (=> tb!3077 (= result!5545 tp_is_empty!7221)))

(assert (=> b!341850 t!10050))

(declare-fun b_and!14493 () Bool)

(assert (= b_and!14489 (and (=> t!10050 result!5545) b_and!14493)))

(declare-fun m!344135 () Bool)

(assert (=> bm!26602 m!344135))

(declare-fun m!344137 () Bool)

(assert (=> b!341854 m!344137))

(declare-fun m!344139 () Bool)

(assert (=> b!341854 m!344139))

(declare-fun m!344141 () Bool)

(assert (=> b!341854 m!344141))

(declare-fun m!344143 () Bool)

(assert (=> b!341854 m!344143))

(declare-fun m!344145 () Bool)

(assert (=> b!341854 m!344145))

(declare-fun m!344147 () Bool)

(assert (=> b!341854 m!344147))

(declare-fun m!344149 () Bool)

(assert (=> b!341854 m!344149))

(declare-fun m!344151 () Bool)

(assert (=> b!341854 m!344151))

(declare-fun m!344153 () Bool)

(assert (=> b!341854 m!344153))

(assert (=> b!341854 m!344139))

(declare-fun m!344155 () Bool)

(assert (=> b!341854 m!344155))

(declare-fun m!344157 () Bool)

(assert (=> b!341854 m!344157))

(declare-fun m!344159 () Bool)

(assert (=> b!341854 m!344159))

(declare-fun m!344161 () Bool)

(assert (=> b!341854 m!344161))

(declare-fun m!344163 () Bool)

(assert (=> b!341854 m!344163))

(declare-fun m!344165 () Bool)

(assert (=> b!341854 m!344165))

(assert (=> b!341854 m!344151))

(declare-fun m!344167 () Bool)

(assert (=> b!341854 m!344167))

(assert (=> b!341854 m!344161))

(declare-fun m!344169 () Bool)

(assert (=> b!341854 m!344169))

(assert (=> b!341854 m!344141))

(declare-fun m!344171 () Bool)

(assert (=> bm!26604 m!344171))

(declare-fun m!344173 () Bool)

(assert (=> b!341852 m!344173))

(declare-fun m!344175 () Bool)

(assert (=> b!341850 m!344175))

(declare-fun m!344177 () Bool)

(assert (=> b!341850 m!344177))

(assert (=> b!341850 m!344145))

(assert (=> b!341850 m!344145))

(declare-fun m!344179 () Bool)

(assert (=> b!341850 m!344179))

(assert (=> b!341850 m!344175))

(assert (=> b!341850 m!344177))

(declare-fun m!344181 () Bool)

(assert (=> b!341850 m!344181))

(assert (=> d!70851 m!344091))

(assert (=> b!341857 m!344145))

(assert (=> b!341857 m!344145))

(declare-fun m!344183 () Bool)

(assert (=> b!341857 m!344183))

(declare-fun m!344185 () Bool)

(assert (=> b!341859 m!344185))

(declare-fun m!344187 () Bool)

(assert (=> b!341842 m!344187))

(assert (=> b!341844 m!344145))

(assert (=> b!341844 m!344145))

(declare-fun m!344189 () Bool)

(assert (=> b!341844 m!344189))

(assert (=> b!341843 m!344145))

(assert (=> b!341843 m!344145))

(assert (=> b!341843 m!344189))

(assert (=> bm!26601 m!344137))

(declare-fun m!344191 () Bool)

(assert (=> bm!26605 m!344191))

(assert (=> b!341746 d!70851))

(declare-fun d!70853 () Bool)

(assert (=> d!70853 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!341751 d!70853))

(declare-fun b!341873 () Bool)

(declare-fun e!209664 () Bool)

(declare-fun call!26612 () Bool)

(assert (=> b!341873 (= e!209664 call!26612)))

(declare-fun d!70855 () Bool)

(declare-fun res!189050 () Bool)

(declare-fun e!209667 () Bool)

(assert (=> d!70855 (=> res!189050 e!209667)))

(assert (=> d!70855 (= res!189050 (bvsge #b00000000000000000000000000000000 (size!8874 _keys!1895)))))

(assert (=> d!70855 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4924) e!209667)))

(declare-fun b!341874 () Bool)

(declare-fun e!209666 () Bool)

(assert (=> b!341874 (= e!209666 e!209664)))

(declare-fun c!52694 () Bool)

(assert (=> b!341874 (= c!52694 (validKeyInArray!0 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!341875 () Bool)

(declare-fun e!209665 () Bool)

(declare-fun contains!2174 (List!4927 (_ BitVec 64)) Bool)

(assert (=> b!341875 (= e!209665 (contains!2174 Nil!4924 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!341876 () Bool)

(assert (=> b!341876 (= e!209664 call!26612)))

(declare-fun b!341877 () Bool)

(assert (=> b!341877 (= e!209667 e!209666)))

(declare-fun res!189049 () Bool)

(assert (=> b!341877 (=> (not res!189049) (not e!209666))))

(assert (=> b!341877 (= res!189049 (not e!209665))))

(declare-fun res!189048 () Bool)

(assert (=> b!341877 (=> (not res!189048) (not e!209665))))

(assert (=> b!341877 (= res!189048 (validKeyInArray!0 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26609 () Bool)

(assert (=> bm!26609 (= call!26612 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52694 (Cons!4923 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000) Nil!4924) Nil!4924)))))

(assert (= (and d!70855 (not res!189050)) b!341877))

(assert (= (and b!341877 res!189048) b!341875))

(assert (= (and b!341877 res!189049) b!341874))

(assert (= (and b!341874 c!52694) b!341873))

(assert (= (and b!341874 (not c!52694)) b!341876))

(assert (= (or b!341873 b!341876) bm!26609))

(assert (=> b!341874 m!344145))

(assert (=> b!341874 m!344145))

(assert (=> b!341874 m!344189))

(assert (=> b!341875 m!344145))

(assert (=> b!341875 m!344145))

(declare-fun m!344193 () Bool)

(assert (=> b!341875 m!344193))

(assert (=> b!341877 m!344145))

(assert (=> b!341877 m!344145))

(assert (=> b!341877 m!344189))

(assert (=> bm!26609 m!344145))

(declare-fun m!344195 () Bool)

(assert (=> bm!26609 m!344195))

(assert (=> b!341742 d!70855))

(declare-fun b!341891 () Bool)

(declare-fun e!209676 () SeekEntryResult!3289)

(assert (=> b!341891 (= e!209676 Undefined!3289)))

(declare-fun b!341892 () Bool)

(declare-fun e!209674 () SeekEntryResult!3289)

(assert (=> b!341892 (= e!209676 e!209674)))

(declare-fun lt!162015 () (_ BitVec 64))

(declare-fun lt!162013 () SeekEntryResult!3289)

(assert (=> b!341892 (= lt!162015 (select (arr!8522 _keys!1895) (index!15337 lt!162013)))))

(declare-fun c!52703 () Bool)

(assert (=> b!341892 (= c!52703 (= lt!162015 k0!1348))))

(declare-fun b!341893 () Bool)

(declare-fun e!209675 () SeekEntryResult!3289)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18011 (_ BitVec 32)) SeekEntryResult!3289)

(assert (=> b!341893 (= e!209675 (seekKeyOrZeroReturnVacant!0 (x!34040 lt!162013) (index!15337 lt!162013) (index!15337 lt!162013) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!341894 () Bool)

(declare-fun c!52701 () Bool)

(assert (=> b!341894 (= c!52701 (= lt!162015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!341894 (= e!209674 e!209675)))

(declare-fun b!341895 () Bool)

(assert (=> b!341895 (= e!209674 (Found!3289 (index!15337 lt!162013)))))

(declare-fun d!70857 () Bool)

(declare-fun lt!162014 () SeekEntryResult!3289)

(assert (=> d!70857 (and (or ((_ is Undefined!3289) lt!162014) (not ((_ is Found!3289) lt!162014)) (and (bvsge (index!15336 lt!162014) #b00000000000000000000000000000000) (bvslt (index!15336 lt!162014) (size!8874 _keys!1895)))) (or ((_ is Undefined!3289) lt!162014) ((_ is Found!3289) lt!162014) (not ((_ is MissingZero!3289) lt!162014)) (and (bvsge (index!15335 lt!162014) #b00000000000000000000000000000000) (bvslt (index!15335 lt!162014) (size!8874 _keys!1895)))) (or ((_ is Undefined!3289) lt!162014) ((_ is Found!3289) lt!162014) ((_ is MissingZero!3289) lt!162014) (not ((_ is MissingVacant!3289) lt!162014)) (and (bvsge (index!15338 lt!162014) #b00000000000000000000000000000000) (bvslt (index!15338 lt!162014) (size!8874 _keys!1895)))) (or ((_ is Undefined!3289) lt!162014) (ite ((_ is Found!3289) lt!162014) (= (select (arr!8522 _keys!1895) (index!15336 lt!162014)) k0!1348) (ite ((_ is MissingZero!3289) lt!162014) (= (select (arr!8522 _keys!1895) (index!15335 lt!162014)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3289) lt!162014) (= (select (arr!8522 _keys!1895) (index!15338 lt!162014)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70857 (= lt!162014 e!209676)))

(declare-fun c!52702 () Bool)

(assert (=> d!70857 (= c!52702 (and ((_ is Intermediate!3289) lt!162013) (undefined!4101 lt!162013)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18011 (_ BitVec 32)) SeekEntryResult!3289)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70857 (= lt!162013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70857 (validMask!0 mask!2385)))

(assert (=> d!70857 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!162014)))

(declare-fun b!341890 () Bool)

(assert (=> b!341890 (= e!209675 (MissingZero!3289 (index!15337 lt!162013)))))

(assert (= (and d!70857 c!52702) b!341891))

(assert (= (and d!70857 (not c!52702)) b!341892))

(assert (= (and b!341892 c!52703) b!341895))

(assert (= (and b!341892 (not c!52703)) b!341894))

(assert (= (and b!341894 c!52701) b!341890))

(assert (= (and b!341894 (not c!52701)) b!341893))

(declare-fun m!344197 () Bool)

(assert (=> b!341892 m!344197))

(declare-fun m!344199 () Bool)

(assert (=> b!341893 m!344199))

(assert (=> d!70857 m!344091))

(declare-fun m!344201 () Bool)

(assert (=> d!70857 m!344201))

(declare-fun m!344203 () Bool)

(assert (=> d!70857 m!344203))

(assert (=> d!70857 m!344201))

(declare-fun m!344205 () Bool)

(assert (=> d!70857 m!344205))

(declare-fun m!344207 () Bool)

(assert (=> d!70857 m!344207))

(declare-fun m!344209 () Bool)

(assert (=> d!70857 m!344209))

(assert (=> b!341747 d!70857))

(declare-fun d!70859 () Bool)

(declare-fun res!189055 () Bool)

(declare-fun e!209684 () Bool)

(assert (=> d!70859 (=> res!189055 e!209684)))

(assert (=> d!70859 (= res!189055 (bvsge #b00000000000000000000000000000000 (size!8874 _keys!1895)))))

(assert (=> d!70859 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!209684)))

(declare-fun b!341904 () Bool)

(declare-fun e!209683 () Bool)

(declare-fun call!26615 () Bool)

(assert (=> b!341904 (= e!209683 call!26615)))

(declare-fun b!341905 () Bool)

(declare-fun e!209685 () Bool)

(assert (=> b!341905 (= e!209685 call!26615)))

(declare-fun b!341906 () Bool)

(assert (=> b!341906 (= e!209683 e!209685)))

(declare-fun lt!162024 () (_ BitVec 64))

(assert (=> b!341906 (= lt!162024 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162022 () Unit!10623)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18011 (_ BitVec 64) (_ BitVec 32)) Unit!10623)

(assert (=> b!341906 (= lt!162022 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!162024 #b00000000000000000000000000000000))))

(assert (=> b!341906 (arrayContainsKey!0 _keys!1895 lt!162024 #b00000000000000000000000000000000)))

(declare-fun lt!162023 () Unit!10623)

(assert (=> b!341906 (= lt!162023 lt!162022)))

(declare-fun res!189056 () Bool)

(assert (=> b!341906 (= res!189056 (= (seekEntryOrOpen!0 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3289 #b00000000000000000000000000000000)))))

(assert (=> b!341906 (=> (not res!189056) (not e!209685))))

(declare-fun b!341907 () Bool)

(assert (=> b!341907 (= e!209684 e!209683)))

(declare-fun c!52706 () Bool)

(assert (=> b!341907 (= c!52706 (validKeyInArray!0 (select (arr!8522 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26612 () Bool)

(assert (=> bm!26612 (= call!26615 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(assert (= (and d!70859 (not res!189055)) b!341907))

(assert (= (and b!341907 c!52706) b!341906))

(assert (= (and b!341907 (not c!52706)) b!341904))

(assert (= (and b!341906 res!189056) b!341905))

(assert (= (or b!341905 b!341904) bm!26612))

(assert (=> b!341906 m!344145))

(declare-fun m!344211 () Bool)

(assert (=> b!341906 m!344211))

(declare-fun m!344213 () Bool)

(assert (=> b!341906 m!344213))

(assert (=> b!341906 m!344145))

(declare-fun m!344215 () Bool)

(assert (=> b!341906 m!344215))

(assert (=> b!341907 m!344145))

(assert (=> b!341907 m!344145))

(assert (=> b!341907 m!344189))

(declare-fun m!344217 () Bool)

(assert (=> bm!26612 m!344217))

(assert (=> b!341752 d!70859))

(declare-fun d!70861 () Bool)

(assert (=> d!70861 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34278 d!70861))

(declare-fun d!70863 () Bool)

(assert (=> d!70863 (= (array_inv!6304 _values!1525) (bvsge (size!8873 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34278 d!70863))

(declare-fun d!70865 () Bool)

(assert (=> d!70865 (= (array_inv!6305 _keys!1895) (bvsge (size!8874 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34278 d!70865))

(declare-fun d!70867 () Bool)

(declare-fun res!189061 () Bool)

(declare-fun e!209690 () Bool)

(assert (=> d!70867 (=> res!189061 e!209690)))

(assert (=> d!70867 (= res!189061 (= (select (arr!8522 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70867 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!209690)))

(declare-fun b!341912 () Bool)

(declare-fun e!209691 () Bool)

(assert (=> b!341912 (= e!209690 e!209691)))

(declare-fun res!189062 () Bool)

(assert (=> b!341912 (=> (not res!189062) (not e!209691))))

(assert (=> b!341912 (= res!189062 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8874 _keys!1895)))))

(declare-fun b!341913 () Bool)

(assert (=> b!341913 (= e!209691 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70867 (not res!189061)) b!341912))

(assert (= (and b!341912 res!189062) b!341913))

(assert (=> d!70867 m!344145))

(declare-fun m!344219 () Bool)

(assert (=> b!341913 m!344219))

(assert (=> b!341748 d!70867))

(declare-fun d!70869 () Bool)

(assert (=> d!70869 (contains!2172 (getCurrentListMap!1641 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!162027 () Unit!10623)

(declare-fun choose!1311 (array!18011 array!18009 (_ BitVec 32) (_ BitVec 32) V!10605 V!10605 (_ BitVec 64) (_ BitVec 32) Int) Unit!10623)

(assert (=> d!70869 (= lt!162027 (choose!1311 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!70869 (validMask!0 mask!2385)))

(assert (=> d!70869 (= (lemmaArrayContainsKeyThenInListMap!294 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!162027)))

(declare-fun bs!11730 () Bool)

(assert (= bs!11730 d!70869))

(assert (=> bs!11730 m!344075))

(assert (=> bs!11730 m!344075))

(assert (=> bs!11730 m!344077))

(assert (=> bs!11730 m!344079))

(declare-fun m!344221 () Bool)

(assert (=> bs!11730 m!344221))

(assert (=> bs!11730 m!344091))

(assert (=> b!341749 d!70869))

(declare-fun d!70871 () Bool)

(declare-fun lt!162030 () (_ BitVec 32))

(assert (=> d!70871 (and (or (bvslt lt!162030 #b00000000000000000000000000000000) (bvsge lt!162030 (size!8874 _keys!1895)) (and (bvsge lt!162030 #b00000000000000000000000000000000) (bvslt lt!162030 (size!8874 _keys!1895)))) (bvsge lt!162030 #b00000000000000000000000000000000) (bvslt lt!162030 (size!8874 _keys!1895)) (= (select (arr!8522 _keys!1895) lt!162030) k0!1348))))

(declare-fun e!209694 () (_ BitVec 32))

(assert (=> d!70871 (= lt!162030 e!209694)))

(declare-fun c!52709 () Bool)

(assert (=> d!70871 (= c!52709 (= (select (arr!8522 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8874 _keys!1895)) (bvslt (size!8874 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!70871 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!162030)))

(declare-fun b!341918 () Bool)

(assert (=> b!341918 (= e!209694 #b00000000000000000000000000000000)))

(declare-fun b!341919 () Bool)

(assert (=> b!341919 (= e!209694 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70871 c!52709) b!341918))

(assert (= (and d!70871 (not c!52709)) b!341919))

(declare-fun m!344223 () Bool)

(assert (=> d!70871 m!344223))

(assert (=> d!70871 m!344145))

(declare-fun m!344225 () Bool)

(assert (=> b!341919 m!344225))

(assert (=> b!341749 d!70871))

(declare-fun b!341927 () Bool)

(declare-fun e!209699 () Bool)

(assert (=> b!341927 (= e!209699 tp_is_empty!7221)))

(declare-fun condMapEmpty!12267 () Bool)

(declare-fun mapDefault!12267 () ValueCell!3267)

(assert (=> mapNonEmpty!12261 (= condMapEmpty!12267 (= mapRest!12261 ((as const (Array (_ BitVec 32) ValueCell!3267)) mapDefault!12267)))))

(declare-fun mapRes!12267 () Bool)

(assert (=> mapNonEmpty!12261 (= tp!25344 (and e!209699 mapRes!12267))))

(declare-fun mapIsEmpty!12267 () Bool)

(assert (=> mapIsEmpty!12267 mapRes!12267))

(declare-fun b!341926 () Bool)

(declare-fun e!209700 () Bool)

(assert (=> b!341926 (= e!209700 tp_is_empty!7221)))

(declare-fun mapNonEmpty!12267 () Bool)

(declare-fun tp!25353 () Bool)

(assert (=> mapNonEmpty!12267 (= mapRes!12267 (and tp!25353 e!209700))))

(declare-fun mapValue!12267 () ValueCell!3267)

(declare-fun mapKey!12267 () (_ BitVec 32))

(declare-fun mapRest!12267 () (Array (_ BitVec 32) ValueCell!3267))

(assert (=> mapNonEmpty!12267 (= mapRest!12261 (store mapRest!12267 mapKey!12267 mapValue!12267))))

(assert (= (and mapNonEmpty!12261 condMapEmpty!12267) mapIsEmpty!12267))

(assert (= (and mapNonEmpty!12261 (not condMapEmpty!12267)) mapNonEmpty!12267))

(assert (= (and mapNonEmpty!12267 ((_ is ValueCellFull!3267) mapValue!12267)) b!341926))

(assert (= (and mapNonEmpty!12261 ((_ is ValueCellFull!3267) mapDefault!12267)) b!341927))

(declare-fun m!344227 () Bool)

(assert (=> mapNonEmpty!12267 m!344227))

(declare-fun b_lambda!8479 () Bool)

(assert (= b_lambda!8477 (or (and start!34278 b_free!7269) b_lambda!8479)))

(check-sat (not b!341913) b_and!14493 (not d!70869) (not mapNonEmpty!12267) (not b!341850) (not d!70849) (not b!341907) tp_is_empty!7221 (not b!341854) (not b!341859) (not b_lambda!8479) (not d!70857) (not bm!26601) (not b!341844) (not b!341857) (not b!341919) (not b!341893) (not b_next!7269) (not b!341906) (not b!341874) (not bm!26609) (not bm!26602) (not b!341795) (not b!341842) (not b!341852) (not b!341797) (not bm!26604) (not b!341877) (not bm!26605) (not d!70851) (not b!341875) (not b!341843) (not bm!26612))
(check-sat b_and!14493 (not b_next!7269))
