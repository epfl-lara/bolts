; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7436 () Bool)

(assert start!7436)

(declare-fun b!47820 () Bool)

(declare-fun res!27798 () Bool)

(declare-fun e!30658 () Bool)

(assert (=> b!47820 (=> (not res!27798) (not e!30658))))

(declare-datatypes ((array!3182 0))(
  ( (array!3183 (arr!1525 (Array (_ BitVec 32) (_ BitVec 64))) (size!1747 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3182)

(declare-datatypes ((List!1285 0))(
  ( (Nil!1282) (Cons!1281 (h!1861 (_ BitVec 64)) (t!4321 List!1285)) )
))
(declare-fun arrayNoDuplicates!0 (array!3182 (_ BitVec 32) List!1285) Bool)

(assert (=> b!47820 (= res!27798 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1282))))

(declare-fun b!47821 () Bool)

(declare-fun e!30661 () Bool)

(assert (=> b!47821 (= e!30658 e!30661)))

(declare-fun res!27801 () Bool)

(assert (=> b!47821 (=> (not res!27801) (not e!30661))))

(declare-datatypes ((SeekEntryResult!221 0))(
  ( (MissingZero!221 (index!3006 (_ BitVec 32))) (Found!221 (index!3007 (_ BitVec 32))) (Intermediate!221 (undefined!1033 Bool) (index!3008 (_ BitVec 32)) (x!8801 (_ BitVec 32))) (Undefined!221) (MissingVacant!221 (index!3009 (_ BitVec 32))) )
))
(declare-fun lt!20466 () SeekEntryResult!221)

(get-info :version)

(assert (=> b!47821 (= res!27801 (not ((_ is Undefined!221) lt!20466)))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun k0!1421 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3182 (_ BitVec 32)) SeekEntryResult!221)

(assert (=> b!47821 (= lt!20466 (seekEntryOrOpen!0 k0!1421 _keys!1940 mask!2458))))

(declare-fun res!27797 () Bool)

(assert (=> start!7436 (=> (not res!27797) (not e!30658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7436 (= res!27797 (validMask!0 mask!2458))))

(assert (=> start!7436 e!30658))

(assert (=> start!7436 true))

(declare-fun array_inv!876 (array!3182) Bool)

(assert (=> start!7436 (array_inv!876 _keys!1940)))

(declare-datatypes ((V!2481 0))(
  ( (V!2482 (val!1069 Int)) )
))
(declare-datatypes ((ValueCell!741 0))(
  ( (ValueCellFull!741 (v!2129 V!2481)) (EmptyCell!741) )
))
(declare-datatypes ((array!3184 0))(
  ( (array!3185 (arr!1526 (Array (_ BitVec 32) ValueCell!741)) (size!1748 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3184)

(declare-fun e!30662 () Bool)

(declare-fun array_inv!877 (array!3184) Bool)

(assert (=> start!7436 (and (array_inv!877 _values!1550) e!30662)))

(declare-fun b!47822 () Bool)

(declare-fun e!30664 () Bool)

(declare-fun e!30656 () Bool)

(assert (=> b!47822 (= e!30664 e!30656)))

(declare-fun c!6437 () Bool)

(assert (=> b!47822 (= c!6437 ((_ is MissingVacant!221) lt!20466))))

(declare-fun b!47823 () Bool)

(declare-fun res!27796 () Bool)

(assert (=> b!47823 (=> (not res!27796) (not e!30658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3182 (_ BitVec 32)) Bool)

(assert (=> b!47823 (= res!27796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47824 () Bool)

(declare-fun call!3734 () Bool)

(assert (=> b!47824 (= e!30664 (not call!3734))))

(declare-fun mapNonEmpty!2135 () Bool)

(declare-fun mapRes!2135 () Bool)

(declare-fun tp!6284 () Bool)

(declare-fun e!30660 () Bool)

(assert (=> mapNonEmpty!2135 (= mapRes!2135 (and tp!6284 e!30660))))

(declare-fun mapRest!2135 () (Array (_ BitVec 32) ValueCell!741))

(declare-fun mapValue!2135 () ValueCell!741)

(declare-fun mapKey!2135 () (_ BitVec 32))

(assert (=> mapNonEmpty!2135 (= (arr!1526 _values!1550) (store mapRest!2135 mapKey!2135 mapValue!2135))))

(declare-fun b!47825 () Bool)

(declare-fun e!30659 () Bool)

(declare-fun call!3735 () Bool)

(assert (=> b!47825 (= e!30659 (not call!3735))))

(declare-fun b!47826 () Bool)

(declare-fun e!30657 () Bool)

(declare-fun tp_is_empty!2061 () Bool)

(assert (=> b!47826 (= e!30657 tp_is_empty!2061)))

(declare-fun b!47827 () Bool)

(assert (=> b!47827 (= e!30660 tp_is_empty!2061)))

(declare-fun b!47828 () Bool)

(assert (=> b!47828 (= e!30662 (and e!30657 mapRes!2135))))

(declare-fun condMapEmpty!2135 () Bool)

(declare-fun mapDefault!2135 () ValueCell!741)

(assert (=> b!47828 (= condMapEmpty!2135 (= (arr!1526 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!741)) mapDefault!2135)))))

(declare-fun b!47829 () Bool)

(declare-fun res!27795 () Bool)

(assert (=> b!47829 (=> (not res!27795) (not e!30658))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47829 (= res!27795 (and (= (size!1748 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1747 _keys!1940) (size!1748 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47830 () Bool)

(declare-fun res!27799 () Bool)

(assert (=> b!47830 (=> (not res!27799) (not e!30658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47830 (= res!27799 (validKeyInArray!0 k0!1421))))

(declare-fun bm!3731 () Bool)

(assert (=> bm!3731 (= call!3735 call!3734)))

(declare-fun mapIsEmpty!2135 () Bool)

(assert (=> mapIsEmpty!2135 mapRes!2135))

(declare-fun b!47831 () Bool)

(assert (=> b!47831 (= e!30661 e!30664)))

(declare-fun c!6438 () Bool)

(assert (=> b!47831 (= c!6438 ((_ is Found!221) lt!20466))))

(declare-fun b!47832 () Bool)

(assert (=> b!47832 (= e!30656 (not call!3735))))

(declare-fun b!47833 () Bool)

(declare-fun res!27800 () Bool)

(assert (=> b!47833 (=> res!27800 e!30659)))

(assert (=> b!47833 (= res!27800 (not ((_ is MissingZero!221) lt!20466)))))

(assert (=> b!47833 (= e!30656 e!30659)))

(declare-fun bm!3732 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!3732 (= call!3734 (inRange!0 (ite c!6438 (index!3007 lt!20466) (ite c!6437 (index!3009 lt!20466) (index!3006 lt!20466))) mask!2458))))

(assert (= (and start!7436 res!27797) b!47829))

(assert (= (and b!47829 res!27795) b!47823))

(assert (= (and b!47823 res!27796) b!47820))

(assert (= (and b!47820 res!27798) b!47830))

(assert (= (and b!47830 res!27799) b!47821))

(assert (= (and b!47821 res!27801) b!47831))

(assert (= (and b!47831 c!6438) b!47824))

(assert (= (and b!47831 (not c!6438)) b!47822))

(assert (= (and b!47822 c!6437) b!47832))

(assert (= (and b!47822 (not c!6437)) b!47833))

(assert (= (and b!47833 (not res!27800)) b!47825))

(assert (= (or b!47832 b!47825) bm!3731))

(assert (= (or b!47824 bm!3731) bm!3732))

(assert (= (and b!47828 condMapEmpty!2135) mapIsEmpty!2135))

(assert (= (and b!47828 (not condMapEmpty!2135)) mapNonEmpty!2135))

(assert (= (and mapNonEmpty!2135 ((_ is ValueCellFull!741) mapValue!2135)) b!47827))

(assert (= (and b!47828 ((_ is ValueCellFull!741) mapDefault!2135)) b!47826))

(assert (= start!7436 b!47828))

(declare-fun m!41911 () Bool)

(assert (=> start!7436 m!41911))

(declare-fun m!41913 () Bool)

(assert (=> start!7436 m!41913))

(declare-fun m!41915 () Bool)

(assert (=> start!7436 m!41915))

(declare-fun m!41917 () Bool)

(assert (=> b!47821 m!41917))

(declare-fun m!41919 () Bool)

(assert (=> b!47830 m!41919))

(declare-fun m!41921 () Bool)

(assert (=> b!47823 m!41921))

(declare-fun m!41923 () Bool)

(assert (=> mapNonEmpty!2135 m!41923))

(declare-fun m!41925 () Bool)

(assert (=> bm!3732 m!41925))

(declare-fun m!41927 () Bool)

(assert (=> b!47820 m!41927))

(check-sat (not mapNonEmpty!2135) (not bm!3732) (not b!47830) (not start!7436) (not b!47823) (not b!47820) tp_is_empty!2061 (not b!47821))
(check-sat)
(get-model)

(declare-fun d!9509 () Bool)

(assert (=> d!9509 (= (validMask!0 mask!2458) (and (or (= mask!2458 #b00000000000000000000000000000111) (= mask!2458 #b00000000000000000000000000001111) (= mask!2458 #b00000000000000000000000000011111) (= mask!2458 #b00000000000000000000000000111111) (= mask!2458 #b00000000000000000000000001111111) (= mask!2458 #b00000000000000000000000011111111) (= mask!2458 #b00000000000000000000000111111111) (= mask!2458 #b00000000000000000000001111111111) (= mask!2458 #b00000000000000000000011111111111) (= mask!2458 #b00000000000000000000111111111111) (= mask!2458 #b00000000000000000001111111111111) (= mask!2458 #b00000000000000000011111111111111) (= mask!2458 #b00000000000000000111111111111111) (= mask!2458 #b00000000000000001111111111111111) (= mask!2458 #b00000000000000011111111111111111) (= mask!2458 #b00000000000000111111111111111111) (= mask!2458 #b00000000000001111111111111111111) (= mask!2458 #b00000000000011111111111111111111) (= mask!2458 #b00000000000111111111111111111111) (= mask!2458 #b00000000001111111111111111111111) (= mask!2458 #b00000000011111111111111111111111) (= mask!2458 #b00000000111111111111111111111111) (= mask!2458 #b00000001111111111111111111111111) (= mask!2458 #b00000011111111111111111111111111) (= mask!2458 #b00000111111111111111111111111111) (= mask!2458 #b00001111111111111111111111111111) (= mask!2458 #b00011111111111111111111111111111) (= mask!2458 #b00111111111111111111111111111111)) (bvsle mask!2458 #b00111111111111111111111111111111)))))

(assert (=> start!7436 d!9509))

(declare-fun d!9511 () Bool)

(assert (=> d!9511 (= (array_inv!876 _keys!1940) (bvsge (size!1747 _keys!1940) #b00000000000000000000000000000000))))

(assert (=> start!7436 d!9511))

(declare-fun d!9513 () Bool)

(assert (=> d!9513 (= (array_inv!877 _values!1550) (bvsge (size!1748 _values!1550) #b00000000000000000000000000000000))))

(assert (=> start!7436 d!9513))

(declare-fun d!9515 () Bool)

(assert (=> d!9515 (= (validKeyInArray!0 k0!1421) (and (not (= k0!1421 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1421 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!47830 d!9515))

(declare-fun b!47886 () Bool)

(declare-fun e!30702 () Bool)

(declare-fun e!30700 () Bool)

(assert (=> b!47886 (= e!30702 e!30700)))

(declare-fun c!6447 () Bool)

(assert (=> b!47886 (= c!6447 (validKeyInArray!0 (select (arr!1525 _keys!1940) #b00000000000000000000000000000000)))))

(declare-fun b!47888 () Bool)

(declare-fun call!3744 () Bool)

(assert (=> b!47888 (= e!30700 call!3744)))

(declare-fun b!47889 () Bool)

(assert (=> b!47889 (= e!30700 call!3744)))

(declare-fun bm!3741 () Bool)

(assert (=> bm!3741 (= call!3744 (arrayNoDuplicates!0 _keys!1940 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6447 (Cons!1281 (select (arr!1525 _keys!1940) #b00000000000000000000000000000000) Nil!1282) Nil!1282)))))

(declare-fun b!47890 () Bool)

(declare-fun e!30703 () Bool)

(assert (=> b!47890 (= e!30703 e!30702)))

(declare-fun res!27830 () Bool)

(assert (=> b!47890 (=> (not res!27830) (not e!30702))))

(declare-fun e!30701 () Bool)

(assert (=> b!47890 (= res!27830 (not e!30701))))

(declare-fun res!27831 () Bool)

(assert (=> b!47890 (=> (not res!27831) (not e!30701))))

(assert (=> b!47890 (= res!27831 (validKeyInArray!0 (select (arr!1525 _keys!1940) #b00000000000000000000000000000000)))))

(declare-fun b!47887 () Bool)

(declare-fun contains!589 (List!1285 (_ BitVec 64)) Bool)

(assert (=> b!47887 (= e!30701 (contains!589 Nil!1282 (select (arr!1525 _keys!1940) #b00000000000000000000000000000000)))))

(declare-fun d!9517 () Bool)

(declare-fun res!27829 () Bool)

(assert (=> d!9517 (=> res!27829 e!30703)))

(assert (=> d!9517 (= res!27829 (bvsge #b00000000000000000000000000000000 (size!1747 _keys!1940)))))

(assert (=> d!9517 (= (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1282) e!30703)))

(assert (= (and d!9517 (not res!27829)) b!47890))

(assert (= (and b!47890 res!27831) b!47887))

(assert (= (and b!47890 res!27830) b!47886))

(assert (= (and b!47886 c!6447) b!47889))

(assert (= (and b!47886 (not c!6447)) b!47888))

(assert (= (or b!47889 b!47888) bm!3741))

(declare-fun m!41947 () Bool)

(assert (=> b!47886 m!41947))

(assert (=> b!47886 m!41947))

(declare-fun m!41949 () Bool)

(assert (=> b!47886 m!41949))

(assert (=> bm!3741 m!41947))

(declare-fun m!41951 () Bool)

(assert (=> bm!3741 m!41951))

(assert (=> b!47890 m!41947))

(assert (=> b!47890 m!41947))

(assert (=> b!47890 m!41949))

(assert (=> b!47887 m!41947))

(assert (=> b!47887 m!41947))

(declare-fun m!41953 () Bool)

(assert (=> b!47887 m!41953))

(assert (=> b!47820 d!9517))

(declare-fun d!9519 () Bool)

(assert (=> d!9519 (= (inRange!0 (ite c!6438 (index!3007 lt!20466) (ite c!6437 (index!3009 lt!20466) (index!3006 lt!20466))) mask!2458) (and (bvsge (ite c!6438 (index!3007 lt!20466) (ite c!6437 (index!3009 lt!20466) (index!3006 lt!20466))) #b00000000000000000000000000000000) (bvslt (ite c!6438 (index!3007 lt!20466) (ite c!6437 (index!3009 lt!20466) (index!3006 lt!20466))) (bvadd mask!2458 #b00000000000000000000000000000001))))))

(assert (=> bm!3732 d!9519))

(declare-fun b!47903 () Bool)

(declare-fun e!30712 () SeekEntryResult!221)

(assert (=> b!47903 (= e!30712 Undefined!221)))

(declare-fun b!47904 () Bool)

(declare-fun e!30710 () SeekEntryResult!221)

(assert (=> b!47904 (= e!30712 e!30710)))

(declare-fun lt!20478 () (_ BitVec 64))

(declare-fun lt!20477 () SeekEntryResult!221)

(assert (=> b!47904 (= lt!20478 (select (arr!1525 _keys!1940) (index!3008 lt!20477)))))

(declare-fun c!6456 () Bool)

(assert (=> b!47904 (= c!6456 (= lt!20478 k0!1421))))

(declare-fun b!47905 () Bool)

(declare-fun e!30711 () SeekEntryResult!221)

(assert (=> b!47905 (= e!30711 (MissingZero!221 (index!3008 lt!20477)))))

(declare-fun d!9521 () Bool)

(declare-fun lt!20476 () SeekEntryResult!221)

(assert (=> d!9521 (and (or ((_ is Undefined!221) lt!20476) (not ((_ is Found!221) lt!20476)) (and (bvsge (index!3007 lt!20476) #b00000000000000000000000000000000) (bvslt (index!3007 lt!20476) (size!1747 _keys!1940)))) (or ((_ is Undefined!221) lt!20476) ((_ is Found!221) lt!20476) (not ((_ is MissingZero!221) lt!20476)) (and (bvsge (index!3006 lt!20476) #b00000000000000000000000000000000) (bvslt (index!3006 lt!20476) (size!1747 _keys!1940)))) (or ((_ is Undefined!221) lt!20476) ((_ is Found!221) lt!20476) ((_ is MissingZero!221) lt!20476) (not ((_ is MissingVacant!221) lt!20476)) (and (bvsge (index!3009 lt!20476) #b00000000000000000000000000000000) (bvslt (index!3009 lt!20476) (size!1747 _keys!1940)))) (or ((_ is Undefined!221) lt!20476) (ite ((_ is Found!221) lt!20476) (= (select (arr!1525 _keys!1940) (index!3007 lt!20476)) k0!1421) (ite ((_ is MissingZero!221) lt!20476) (= (select (arr!1525 _keys!1940) (index!3006 lt!20476)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!221) lt!20476) (= (select (arr!1525 _keys!1940) (index!3009 lt!20476)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!9521 (= lt!20476 e!30712)))

(declare-fun c!6454 () Bool)

(assert (=> d!9521 (= c!6454 (and ((_ is Intermediate!221) lt!20477) (undefined!1033 lt!20477)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3182 (_ BitVec 32)) SeekEntryResult!221)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!9521 (= lt!20477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1421 mask!2458) k0!1421 _keys!1940 mask!2458))))

(assert (=> d!9521 (validMask!0 mask!2458)))

(assert (=> d!9521 (= (seekEntryOrOpen!0 k0!1421 _keys!1940 mask!2458) lt!20476)))

(declare-fun b!47906 () Bool)

(assert (=> b!47906 (= e!30710 (Found!221 (index!3008 lt!20477)))))

(declare-fun b!47907 () Bool)

(declare-fun c!6455 () Bool)

(assert (=> b!47907 (= c!6455 (= lt!20478 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!47907 (= e!30710 e!30711)))

(declare-fun b!47908 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3182 (_ BitVec 32)) SeekEntryResult!221)

(assert (=> b!47908 (= e!30711 (seekKeyOrZeroReturnVacant!0 (x!8801 lt!20477) (index!3008 lt!20477) (index!3008 lt!20477) k0!1421 _keys!1940 mask!2458))))

(assert (= (and d!9521 c!6454) b!47903))

(assert (= (and d!9521 (not c!6454)) b!47904))

(assert (= (and b!47904 c!6456) b!47906))

(assert (= (and b!47904 (not c!6456)) b!47907))

(assert (= (and b!47907 c!6455) b!47905))

(assert (= (and b!47907 (not c!6455)) b!47908))

(declare-fun m!41955 () Bool)

(assert (=> b!47904 m!41955))

(assert (=> d!9521 m!41911))

(declare-fun m!41957 () Bool)

(assert (=> d!9521 m!41957))

(declare-fun m!41959 () Bool)

(assert (=> d!9521 m!41959))

(declare-fun m!41961 () Bool)

(assert (=> d!9521 m!41961))

(declare-fun m!41963 () Bool)

(assert (=> d!9521 m!41963))

(assert (=> d!9521 m!41957))

(declare-fun m!41965 () Bool)

(assert (=> d!9521 m!41965))

(declare-fun m!41967 () Bool)

(assert (=> b!47908 m!41967))

(assert (=> b!47821 d!9521))

(declare-fun b!47917 () Bool)

(declare-fun e!30720 () Bool)

(declare-fun call!3747 () Bool)

(assert (=> b!47917 (= e!30720 call!3747)))

(declare-fun d!9523 () Bool)

(declare-fun res!27837 () Bool)

(declare-fun e!30719 () Bool)

(assert (=> d!9523 (=> res!27837 e!30719)))

(assert (=> d!9523 (= res!27837 (bvsge #b00000000000000000000000000000000 (size!1747 _keys!1940)))))

(assert (=> d!9523 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458) e!30719)))

(declare-fun bm!3744 () Bool)

(assert (=> bm!3744 (= call!3747 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1940 mask!2458))))

(declare-fun b!47918 () Bool)

(assert (=> b!47918 (= e!30719 e!30720)))

(declare-fun c!6459 () Bool)

(assert (=> b!47918 (= c!6459 (validKeyInArray!0 (select (arr!1525 _keys!1940) #b00000000000000000000000000000000)))))

(declare-fun b!47919 () Bool)

(declare-fun e!30721 () Bool)

(assert (=> b!47919 (= e!30721 call!3747)))

(declare-fun b!47920 () Bool)

(assert (=> b!47920 (= e!30720 e!30721)))

(declare-fun lt!20486 () (_ BitVec 64))

(assert (=> b!47920 (= lt!20486 (select (arr!1525 _keys!1940) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1335 0))(
  ( (Unit!1336) )
))
(declare-fun lt!20487 () Unit!1335)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3182 (_ BitVec 64) (_ BitVec 32)) Unit!1335)

(assert (=> b!47920 (= lt!20487 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1940 lt!20486 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!47920 (arrayContainsKey!0 _keys!1940 lt!20486 #b00000000000000000000000000000000)))

(declare-fun lt!20485 () Unit!1335)

(assert (=> b!47920 (= lt!20485 lt!20487)))

(declare-fun res!27836 () Bool)

(assert (=> b!47920 (= res!27836 (= (seekEntryOrOpen!0 (select (arr!1525 _keys!1940) #b00000000000000000000000000000000) _keys!1940 mask!2458) (Found!221 #b00000000000000000000000000000000)))))

(assert (=> b!47920 (=> (not res!27836) (not e!30721))))

(assert (= (and d!9523 (not res!27837)) b!47918))

(assert (= (and b!47918 c!6459) b!47920))

(assert (= (and b!47918 (not c!6459)) b!47917))

(assert (= (and b!47920 res!27836) b!47919))

(assert (= (or b!47919 b!47917) bm!3744))

(declare-fun m!41969 () Bool)

(assert (=> bm!3744 m!41969))

(assert (=> b!47918 m!41947))

(assert (=> b!47918 m!41947))

(assert (=> b!47918 m!41949))

(assert (=> b!47920 m!41947))

(declare-fun m!41971 () Bool)

(assert (=> b!47920 m!41971))

(declare-fun m!41973 () Bool)

(assert (=> b!47920 m!41973))

(assert (=> b!47920 m!41947))

(declare-fun m!41975 () Bool)

(assert (=> b!47920 m!41975))

(assert (=> b!47823 d!9523))

(declare-fun mapNonEmpty!2141 () Bool)

(declare-fun mapRes!2141 () Bool)

(declare-fun tp!6290 () Bool)

(declare-fun e!30727 () Bool)

(assert (=> mapNonEmpty!2141 (= mapRes!2141 (and tp!6290 e!30727))))

(declare-fun mapKey!2141 () (_ BitVec 32))

(declare-fun mapRest!2141 () (Array (_ BitVec 32) ValueCell!741))

(declare-fun mapValue!2141 () ValueCell!741)

(assert (=> mapNonEmpty!2141 (= mapRest!2135 (store mapRest!2141 mapKey!2141 mapValue!2141))))

(declare-fun b!47928 () Bool)

(declare-fun e!30726 () Bool)

(assert (=> b!47928 (= e!30726 tp_is_empty!2061)))

(declare-fun b!47927 () Bool)

(assert (=> b!47927 (= e!30727 tp_is_empty!2061)))

(declare-fun condMapEmpty!2141 () Bool)

(declare-fun mapDefault!2141 () ValueCell!741)

(assert (=> mapNonEmpty!2135 (= condMapEmpty!2141 (= mapRest!2135 ((as const (Array (_ BitVec 32) ValueCell!741)) mapDefault!2141)))))

(assert (=> mapNonEmpty!2135 (= tp!6284 (and e!30726 mapRes!2141))))

(declare-fun mapIsEmpty!2141 () Bool)

(assert (=> mapIsEmpty!2141 mapRes!2141))

(assert (= (and mapNonEmpty!2135 condMapEmpty!2141) mapIsEmpty!2141))

(assert (= (and mapNonEmpty!2135 (not condMapEmpty!2141)) mapNonEmpty!2141))

(assert (= (and mapNonEmpty!2141 ((_ is ValueCellFull!741) mapValue!2141)) b!47927))

(assert (= (and mapNonEmpty!2135 ((_ is ValueCellFull!741) mapDefault!2141)) b!47928))

(declare-fun m!41977 () Bool)

(assert (=> mapNonEmpty!2141 m!41977))

(check-sat (not b!47918) (not bm!3744) (not bm!3741) (not d!9521) tp_is_empty!2061 (not b!47887) (not b!47890) (not b!47920) (not b!47908) (not mapNonEmpty!2141) (not b!47886))
(check-sat)
