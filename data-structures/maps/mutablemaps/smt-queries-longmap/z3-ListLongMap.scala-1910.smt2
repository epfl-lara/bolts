; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34008 () Bool)

(assert start!34008)

(declare-fun b_free!7131 () Bool)

(declare-fun b_next!7131 () Bool)

(assert (=> start!34008 (= b_free!7131 (not b_next!7131))))

(declare-fun tp!24912 () Bool)

(declare-fun b_and!14339 () Bool)

(assert (=> start!34008 (= tp!24912 b_and!14339)))

(declare-fun b!338643 () Bool)

(declare-fun e!207789 () Bool)

(declare-datatypes ((array!17733 0))(
  ( (array!17734 (arr!8389 (Array (_ BitVec 32) (_ BitVec 64))) (size!8741 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17733)

(declare-datatypes ((SeekEntryResult!3246 0))(
  ( (MissingZero!3246 (index!15163 (_ BitVec 32))) (Found!3246 (index!15164 (_ BitVec 32))) (Intermediate!3246 (undefined!4058 Bool) (index!15165 (_ BitVec 32)) (x!33753 (_ BitVec 32))) (Undefined!3246) (MissingVacant!3246 (index!15166 (_ BitVec 32))) )
))
(declare-fun lt!160881 () SeekEntryResult!3246)

(assert (=> b!338643 (= e!207789 (and (= (select (arr!8389 _keys!1895) (index!15163 lt!160881)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge #b00000000000000000000000000000000 (size!8741 _keys!1895))))))

(declare-fun b!338644 () Bool)

(declare-fun res!187149 () Bool)

(declare-fun e!207787 () Bool)

(assert (=> b!338644 (=> (not res!187149) (not e!207787))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338644 (= res!187149 (validKeyInArray!0 k0!1348))))

(declare-fun b!338645 () Bool)

(declare-fun e!207783 () Bool)

(assert (=> b!338645 (= e!207783 e!207789)))

(declare-fun res!187146 () Bool)

(assert (=> b!338645 (=> (not res!187146) (not e!207789))))

(declare-fun lt!160880 () Bool)

(assert (=> b!338645 (= res!187146 (not lt!160880))))

(declare-datatypes ((Unit!10534 0))(
  ( (Unit!10535) )
))
(declare-fun lt!160878 () Unit!10534)

(declare-fun e!207786 () Unit!10534)

(assert (=> b!338645 (= lt!160878 e!207786)))

(declare-fun c!52379 () Bool)

(assert (=> b!338645 (= c!52379 lt!160880)))

(declare-fun arrayContainsKey!0 (array!17733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338645 (= lt!160880 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!338646 () Bool)

(declare-fun res!187150 () Bool)

(assert (=> b!338646 (=> (not res!187150) (not e!207789))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!338646 (= res!187150 (inRange!0 (index!15163 lt!160881) mask!2385))))

(declare-fun b!338647 () Bool)

(declare-fun e!207785 () Bool)

(declare-fun tp_is_empty!7083 () Bool)

(assert (=> b!338647 (= e!207785 tp_is_empty!7083)))

(declare-fun b!338648 () Bool)

(declare-fun res!187145 () Bool)

(assert (=> b!338648 (=> (not res!187145) (not e!207787))))

(declare-datatypes ((V!10421 0))(
  ( (V!10422 (val!3586 Int)) )
))
(declare-datatypes ((ValueCell!3198 0))(
  ( (ValueCellFull!3198 (v!5749 V!10421)) (EmptyCell!3198) )
))
(declare-datatypes ((array!17735 0))(
  ( (array!17736 (arr!8390 (Array (_ BitVec 32) ValueCell!3198)) (size!8742 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17735)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!338648 (= res!187145 (and (= (size!8742 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8741 _keys!1895) (size!8742 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338649 () Bool)

(declare-fun res!187143 () Bool)

(assert (=> b!338649 (=> (not res!187143) (not e!207787))))

(declare-fun zeroValue!1467 () V!10421)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10421)

(declare-datatypes ((tuple2!5198 0))(
  ( (tuple2!5199 (_1!2609 (_ BitVec 64)) (_2!2609 V!10421)) )
))
(declare-datatypes ((List!4839 0))(
  ( (Nil!4836) (Cons!4835 (h!5691 tuple2!5198) (t!9945 List!4839)) )
))
(declare-datatypes ((ListLongMap!4125 0))(
  ( (ListLongMap!4126 (toList!2078 List!4839)) )
))
(declare-fun contains!2123 (ListLongMap!4125 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1598 (array!17733 array!17735 (_ BitVec 32) (_ BitVec 32) V!10421 V!10421 (_ BitVec 32) Int) ListLongMap!4125)

(assert (=> b!338649 (= res!187143 (not (contains!2123 (getCurrentListMap!1598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!338650 () Bool)

(declare-fun Unit!10536 () Unit!10534)

(assert (=> b!338650 (= e!207786 Unit!10536)))

(declare-fun b!338651 () Bool)

(declare-fun res!187144 () Bool)

(assert (=> b!338651 (=> (not res!187144) (not e!207787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17733 (_ BitVec 32)) Bool)

(assert (=> b!338651 (= res!187144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338652 () Bool)

(declare-fun Unit!10537 () Unit!10534)

(assert (=> b!338652 (= e!207786 Unit!10537)))

(declare-fun lt!160879 () Unit!10534)

(declare-fun lemmaArrayContainsKeyThenInListMap!278 (array!17733 array!17735 (_ BitVec 32) (_ BitVec 32) V!10421 V!10421 (_ BitVec 64) (_ BitVec 32) Int) Unit!10534)

(declare-fun arrayScanForKey!0 (array!17733 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338652 (= lt!160879 (lemmaArrayContainsKeyThenInListMap!278 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338652 false))

(declare-fun res!187147 () Bool)

(assert (=> start!34008 (=> (not res!187147) (not e!207787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34008 (= res!187147 (validMask!0 mask!2385))))

(assert (=> start!34008 e!207787))

(assert (=> start!34008 true))

(assert (=> start!34008 tp_is_empty!7083))

(assert (=> start!34008 tp!24912))

(declare-fun e!207784 () Bool)

(declare-fun array_inv!6214 (array!17735) Bool)

(assert (=> start!34008 (and (array_inv!6214 _values!1525) e!207784)))

(declare-fun array_inv!6215 (array!17733) Bool)

(assert (=> start!34008 (array_inv!6215 _keys!1895)))

(declare-fun b!338653 () Bool)

(assert (=> b!338653 (= e!207787 e!207783)))

(declare-fun res!187151 () Bool)

(assert (=> b!338653 (=> (not res!187151) (not e!207783))))

(get-info :version)

(assert (=> b!338653 (= res!187151 (and (not ((_ is Found!3246) lt!160881)) ((_ is MissingZero!3246) lt!160881)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17733 (_ BitVec 32)) SeekEntryResult!3246)

(assert (=> b!338653 (= lt!160881 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12036 () Bool)

(declare-fun mapRes!12036 () Bool)

(declare-fun tp!24911 () Bool)

(assert (=> mapNonEmpty!12036 (= mapRes!12036 (and tp!24911 e!207785))))

(declare-fun mapValue!12036 () ValueCell!3198)

(declare-fun mapRest!12036 () (Array (_ BitVec 32) ValueCell!3198))

(declare-fun mapKey!12036 () (_ BitVec 32))

(assert (=> mapNonEmpty!12036 (= (arr!8390 _values!1525) (store mapRest!12036 mapKey!12036 mapValue!12036))))

(declare-fun b!338654 () Bool)

(declare-fun res!187148 () Bool)

(assert (=> b!338654 (=> (not res!187148) (not e!207787))))

(declare-datatypes ((List!4840 0))(
  ( (Nil!4837) (Cons!4836 (h!5692 (_ BitVec 64)) (t!9946 List!4840)) )
))
(declare-fun arrayNoDuplicates!0 (array!17733 (_ BitVec 32) List!4840) Bool)

(assert (=> b!338654 (= res!187148 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4837))))

(declare-fun mapIsEmpty!12036 () Bool)

(assert (=> mapIsEmpty!12036 mapRes!12036))

(declare-fun b!338655 () Bool)

(declare-fun e!207782 () Bool)

(assert (=> b!338655 (= e!207784 (and e!207782 mapRes!12036))))

(declare-fun condMapEmpty!12036 () Bool)

(declare-fun mapDefault!12036 () ValueCell!3198)

(assert (=> b!338655 (= condMapEmpty!12036 (= (arr!8390 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3198)) mapDefault!12036)))))

(declare-fun b!338656 () Bool)

(assert (=> b!338656 (= e!207782 tp_is_empty!7083)))

(assert (= (and start!34008 res!187147) b!338648))

(assert (= (and b!338648 res!187145) b!338651))

(assert (= (and b!338651 res!187144) b!338654))

(assert (= (and b!338654 res!187148) b!338644))

(assert (= (and b!338644 res!187149) b!338649))

(assert (= (and b!338649 res!187143) b!338653))

(assert (= (and b!338653 res!187151) b!338645))

(assert (= (and b!338645 c!52379) b!338652))

(assert (= (and b!338645 (not c!52379)) b!338650))

(assert (= (and b!338645 res!187146) b!338646))

(assert (= (and b!338646 res!187150) b!338643))

(assert (= (and b!338655 condMapEmpty!12036) mapIsEmpty!12036))

(assert (= (and b!338655 (not condMapEmpty!12036)) mapNonEmpty!12036))

(assert (= (and mapNonEmpty!12036 ((_ is ValueCellFull!3198) mapValue!12036)) b!338647))

(assert (= (and b!338655 ((_ is ValueCellFull!3198) mapDefault!12036)) b!338656))

(assert (= start!34008 b!338655))

(declare-fun m!341821 () Bool)

(assert (=> start!34008 m!341821))

(declare-fun m!341823 () Bool)

(assert (=> start!34008 m!341823))

(declare-fun m!341825 () Bool)

(assert (=> start!34008 m!341825))

(declare-fun m!341827 () Bool)

(assert (=> b!338649 m!341827))

(assert (=> b!338649 m!341827))

(declare-fun m!341829 () Bool)

(assert (=> b!338649 m!341829))

(declare-fun m!341831 () Bool)

(assert (=> b!338654 m!341831))

(declare-fun m!341833 () Bool)

(assert (=> b!338646 m!341833))

(declare-fun m!341835 () Bool)

(assert (=> b!338644 m!341835))

(declare-fun m!341837 () Bool)

(assert (=> b!338645 m!341837))

(declare-fun m!341839 () Bool)

(assert (=> b!338652 m!341839))

(assert (=> b!338652 m!341839))

(declare-fun m!341841 () Bool)

(assert (=> b!338652 m!341841))

(declare-fun m!341843 () Bool)

(assert (=> b!338643 m!341843))

(declare-fun m!341845 () Bool)

(assert (=> mapNonEmpty!12036 m!341845))

(declare-fun m!341847 () Bool)

(assert (=> b!338651 m!341847))

(declare-fun m!341849 () Bool)

(assert (=> b!338653 m!341849))

(check-sat (not b!338654) (not b!338649) (not b!338653) (not b_next!7131) (not b!338652) (not b!338644) (not b!338646) b_and!14339 (not b!338651) tp_is_empty!7083 (not b!338645) (not mapNonEmpty!12036) (not start!34008))
(check-sat b_and!14339 (not b_next!7131))
(get-model)

(declare-fun d!70671 () Bool)

(assert (=> d!70671 (contains!2123 (getCurrentListMap!1598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!160896 () Unit!10534)

(declare-fun choose!1308 (array!17733 array!17735 (_ BitVec 32) (_ BitVec 32) V!10421 V!10421 (_ BitVec 64) (_ BitVec 32) Int) Unit!10534)

(assert (=> d!70671 (= lt!160896 (choose!1308 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!70671 (validMask!0 mask!2385)))

(assert (=> d!70671 (= (lemmaArrayContainsKeyThenInListMap!278 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!160896)))

(declare-fun bs!11658 () Bool)

(assert (= bs!11658 d!70671))

(assert (=> bs!11658 m!341827))

(assert (=> bs!11658 m!341827))

(assert (=> bs!11658 m!341829))

(assert (=> bs!11658 m!341839))

(declare-fun m!341881 () Bool)

(assert (=> bs!11658 m!341881))

(assert (=> bs!11658 m!341821))

(assert (=> b!338652 d!70671))

(declare-fun d!70673 () Bool)

(declare-fun lt!160899 () (_ BitVec 32))

(assert (=> d!70673 (and (or (bvslt lt!160899 #b00000000000000000000000000000000) (bvsge lt!160899 (size!8741 _keys!1895)) (and (bvsge lt!160899 #b00000000000000000000000000000000) (bvslt lt!160899 (size!8741 _keys!1895)))) (bvsge lt!160899 #b00000000000000000000000000000000) (bvslt lt!160899 (size!8741 _keys!1895)) (= (select (arr!8389 _keys!1895) lt!160899) k0!1348))))

(declare-fun e!207816 () (_ BitVec 32))

(assert (=> d!70673 (= lt!160899 e!207816)))

(declare-fun c!52385 () Bool)

(assert (=> d!70673 (= c!52385 (= (select (arr!8389 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70673 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8741 _keys!1895)) (bvslt (size!8741 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!70673 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!160899)))

(declare-fun b!338703 () Bool)

(assert (=> b!338703 (= e!207816 #b00000000000000000000000000000000)))

(declare-fun b!338704 () Bool)

(assert (=> b!338704 (= e!207816 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70673 c!52385) b!338703))

(assert (= (and d!70673 (not c!52385)) b!338704))

(declare-fun m!341883 () Bool)

(assert (=> d!70673 m!341883))

(declare-fun m!341885 () Bool)

(assert (=> d!70673 m!341885))

(declare-fun m!341887 () Bool)

(assert (=> b!338704 m!341887))

(assert (=> b!338652 d!70673))

(declare-fun d!70675 () Bool)

(declare-fun res!187183 () Bool)

(declare-fun e!207821 () Bool)

(assert (=> d!70675 (=> res!187183 e!207821)))

(assert (=> d!70675 (= res!187183 (= (select (arr!8389 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70675 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!207821)))

(declare-fun b!338709 () Bool)

(declare-fun e!207822 () Bool)

(assert (=> b!338709 (= e!207821 e!207822)))

(declare-fun res!187184 () Bool)

(assert (=> b!338709 (=> (not res!187184) (not e!207822))))

(assert (=> b!338709 (= res!187184 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8741 _keys!1895)))))

(declare-fun b!338710 () Bool)

(assert (=> b!338710 (= e!207822 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70675 (not res!187183)) b!338709))

(assert (= (and b!338709 res!187184) b!338710))

(assert (=> d!70675 m!341885))

(declare-fun m!341889 () Bool)

(assert (=> b!338710 m!341889))

(assert (=> b!338645 d!70675))

(declare-fun d!70677 () Bool)

(declare-fun res!187190 () Bool)

(declare-fun e!207829 () Bool)

(assert (=> d!70677 (=> res!187190 e!207829)))

(assert (=> d!70677 (= res!187190 (bvsge #b00000000000000000000000000000000 (size!8741 _keys!1895)))))

(assert (=> d!70677 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!207829)))

(declare-fun b!338719 () Bool)

(declare-fun e!207830 () Bool)

(assert (=> b!338719 (= e!207829 e!207830)))

(declare-fun c!52388 () Bool)

(assert (=> b!338719 (= c!52388 (validKeyInArray!0 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!338720 () Bool)

(declare-fun e!207831 () Bool)

(assert (=> b!338720 (= e!207830 e!207831)))

(declare-fun lt!160908 () (_ BitVec 64))

(assert (=> b!338720 (= lt!160908 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160906 () Unit!10534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17733 (_ BitVec 64) (_ BitVec 32)) Unit!10534)

(assert (=> b!338720 (= lt!160906 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!160908 #b00000000000000000000000000000000))))

(assert (=> b!338720 (arrayContainsKey!0 _keys!1895 lt!160908 #b00000000000000000000000000000000)))

(declare-fun lt!160907 () Unit!10534)

(assert (=> b!338720 (= lt!160907 lt!160906)))

(declare-fun res!187189 () Bool)

(assert (=> b!338720 (= res!187189 (= (seekEntryOrOpen!0 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3246 #b00000000000000000000000000000000)))))

(assert (=> b!338720 (=> (not res!187189) (not e!207831))))

(declare-fun bm!26426 () Bool)

(declare-fun call!26429 () Bool)

(assert (=> bm!26426 (= call!26429 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!338721 () Bool)

(assert (=> b!338721 (= e!207830 call!26429)))

(declare-fun b!338722 () Bool)

(assert (=> b!338722 (= e!207831 call!26429)))

(assert (= (and d!70677 (not res!187190)) b!338719))

(assert (= (and b!338719 c!52388) b!338720))

(assert (= (and b!338719 (not c!52388)) b!338721))

(assert (= (and b!338720 res!187189) b!338722))

(assert (= (or b!338722 b!338721) bm!26426))

(assert (=> b!338719 m!341885))

(assert (=> b!338719 m!341885))

(declare-fun m!341891 () Bool)

(assert (=> b!338719 m!341891))

(assert (=> b!338720 m!341885))

(declare-fun m!341893 () Bool)

(assert (=> b!338720 m!341893))

(declare-fun m!341895 () Bool)

(assert (=> b!338720 m!341895))

(assert (=> b!338720 m!341885))

(declare-fun m!341897 () Bool)

(assert (=> b!338720 m!341897))

(declare-fun m!341899 () Bool)

(assert (=> bm!26426 m!341899))

(assert (=> b!338651 d!70677))

(declare-fun d!70679 () Bool)

(assert (=> d!70679 (= (inRange!0 (index!15163 lt!160881) mask!2385) (and (bvsge (index!15163 lt!160881) #b00000000000000000000000000000000) (bvslt (index!15163 lt!160881) (bvadd mask!2385 #b00000000000000000000000000000001))))))

(assert (=> b!338646 d!70679))

(declare-fun d!70681 () Bool)

(assert (=> d!70681 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34008 d!70681))

(declare-fun d!70683 () Bool)

(assert (=> d!70683 (= (array_inv!6214 _values!1525) (bvsge (size!8742 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34008 d!70683))

(declare-fun d!70685 () Bool)

(assert (=> d!70685 (= (array_inv!6215 _keys!1895) (bvsge (size!8741 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34008 d!70685))

(declare-fun d!70687 () Bool)

(declare-fun e!207837 () Bool)

(assert (=> d!70687 e!207837))

(declare-fun res!187193 () Bool)

(assert (=> d!70687 (=> res!187193 e!207837)))

(declare-fun lt!160917 () Bool)

(assert (=> d!70687 (= res!187193 (not lt!160917))))

(declare-fun lt!160918 () Bool)

(assert (=> d!70687 (= lt!160917 lt!160918)))

(declare-fun lt!160920 () Unit!10534)

(declare-fun e!207836 () Unit!10534)

(assert (=> d!70687 (= lt!160920 e!207836)))

(declare-fun c!52391 () Bool)

(assert (=> d!70687 (= c!52391 lt!160918)))

(declare-fun containsKey!320 (List!4839 (_ BitVec 64)) Bool)

(assert (=> d!70687 (= lt!160918 (containsKey!320 (toList!2078 (getCurrentListMap!1598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70687 (= (contains!2123 (getCurrentListMap!1598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!160917)))

(declare-fun b!338729 () Bool)

(declare-fun lt!160919 () Unit!10534)

(assert (=> b!338729 (= e!207836 lt!160919)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!269 (List!4839 (_ BitVec 64)) Unit!10534)

(assert (=> b!338729 (= lt!160919 (lemmaContainsKeyImpliesGetValueByKeyDefined!269 (toList!2078 (getCurrentListMap!1598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!334 0))(
  ( (Some!333 (v!5751 V!10421)) (None!332) )
))
(declare-fun isDefined!270 (Option!334) Bool)

(declare-fun getValueByKey!328 (List!4839 (_ BitVec 64)) Option!334)

(assert (=> b!338729 (isDefined!270 (getValueByKey!328 (toList!2078 (getCurrentListMap!1598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!338730 () Bool)

(declare-fun Unit!10541 () Unit!10534)

(assert (=> b!338730 (= e!207836 Unit!10541)))

(declare-fun b!338731 () Bool)

(assert (=> b!338731 (= e!207837 (isDefined!270 (getValueByKey!328 (toList!2078 (getCurrentListMap!1598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70687 c!52391) b!338729))

(assert (= (and d!70687 (not c!52391)) b!338730))

(assert (= (and d!70687 (not res!187193)) b!338731))

(declare-fun m!341901 () Bool)

(assert (=> d!70687 m!341901))

(declare-fun m!341903 () Bool)

(assert (=> b!338729 m!341903))

(declare-fun m!341905 () Bool)

(assert (=> b!338729 m!341905))

(assert (=> b!338729 m!341905))

(declare-fun m!341907 () Bool)

(assert (=> b!338729 m!341907))

(assert (=> b!338731 m!341905))

(assert (=> b!338731 m!341905))

(assert (=> b!338731 m!341907))

(assert (=> b!338649 d!70687))

(declare-fun b!338774 () Bool)

(declare-fun e!207870 () Bool)

(declare-fun lt!160969 () ListLongMap!4125)

(declare-fun apply!271 (ListLongMap!4125 (_ BitVec 64)) V!10421)

(declare-fun get!4578 (ValueCell!3198 V!10421) V!10421)

(declare-fun dynLambda!609 (Int (_ BitVec 64)) V!10421)

(assert (=> b!338774 (= e!207870 (= (apply!271 lt!160969 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000)) (get!4578 (select (arr!8390 _values!1525) #b00000000000000000000000000000000) (dynLambda!609 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!338774 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8742 _values!1525)))))

(assert (=> b!338774 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8741 _keys!1895)))))

(declare-fun b!338775 () Bool)

(declare-fun e!207872 () Bool)

(declare-fun call!26450 () Bool)

(assert (=> b!338775 (= e!207872 (not call!26450))))

(declare-fun b!338776 () Bool)

(declare-fun e!207876 () ListLongMap!4125)

(declare-fun call!26448 () ListLongMap!4125)

(declare-fun +!715 (ListLongMap!4125 tuple2!5198) ListLongMap!4125)

(assert (=> b!338776 (= e!207876 (+!715 call!26448 (tuple2!5199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!338777 () Bool)

(declare-fun e!207869 () Bool)

(assert (=> b!338777 (= e!207869 (= (apply!271 lt!160969 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun c!52407 () Bool)

(declare-fun call!26444 () ListLongMap!4125)

(declare-fun c!52408 () Bool)

(declare-fun call!26449 () ListLongMap!4125)

(declare-fun call!26445 () ListLongMap!4125)

(declare-fun bm!26441 () Bool)

(assert (=> bm!26441 (= call!26448 (+!715 (ite c!52407 call!26445 (ite c!52408 call!26444 call!26449)) (ite (or c!52407 c!52408) (tuple2!5199 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun bm!26442 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!590 (array!17733 array!17735 (_ BitVec 32) (_ BitVec 32) V!10421 V!10421 (_ BitVec 32) Int) ListLongMap!4125)

(assert (=> bm!26442 (= call!26445 (getCurrentListMapNoExtraKeys!590 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun bm!26443 () Bool)

(assert (=> bm!26443 (= call!26444 call!26445)))

(declare-fun bm!26444 () Bool)

(declare-fun call!26447 () Bool)

(assert (=> bm!26444 (= call!26447 (contains!2123 lt!160969 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!338778 () Bool)

(declare-fun res!187213 () Bool)

(declare-fun e!207867 () Bool)

(assert (=> b!338778 (=> (not res!187213) (not e!207867))))

(declare-fun e!207864 () Bool)

(assert (=> b!338778 (= res!187213 e!207864)))

(declare-fun res!187219 () Bool)

(assert (=> b!338778 (=> res!187219 e!207864)))

(declare-fun e!207871 () Bool)

(assert (=> b!338778 (= res!187219 (not e!207871))))

(declare-fun res!187217 () Bool)

(assert (=> b!338778 (=> (not res!187217) (not e!207871))))

(assert (=> b!338778 (= res!187217 (bvslt #b00000000000000000000000000000000 (size!8741 _keys!1895)))))

(declare-fun b!338779 () Bool)

(declare-fun e!207873 () ListLongMap!4125)

(assert (=> b!338779 (= e!207873 call!26449)))

(declare-fun b!338780 () Bool)

(declare-fun e!207868 () Bool)

(assert (=> b!338780 (= e!207868 (not call!26447))))

(declare-fun b!338781 () Bool)

(declare-fun e!207874 () Unit!10534)

(declare-fun lt!160966 () Unit!10534)

(assert (=> b!338781 (= e!207874 lt!160966)))

(declare-fun lt!160982 () ListLongMap!4125)

(assert (=> b!338781 (= lt!160982 (getCurrentListMapNoExtraKeys!590 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160984 () (_ BitVec 64))

(assert (=> b!338781 (= lt!160984 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160972 () (_ BitVec 64))

(assert (=> b!338781 (= lt!160972 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160965 () Unit!10534)

(declare-fun addStillContains!247 (ListLongMap!4125 (_ BitVec 64) V!10421 (_ BitVec 64)) Unit!10534)

(assert (=> b!338781 (= lt!160965 (addStillContains!247 lt!160982 lt!160984 zeroValue!1467 lt!160972))))

(assert (=> b!338781 (contains!2123 (+!715 lt!160982 (tuple2!5199 lt!160984 zeroValue!1467)) lt!160972)))

(declare-fun lt!160978 () Unit!10534)

(assert (=> b!338781 (= lt!160978 lt!160965)))

(declare-fun lt!160967 () ListLongMap!4125)

(assert (=> b!338781 (= lt!160967 (getCurrentListMapNoExtraKeys!590 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160983 () (_ BitVec 64))

(assert (=> b!338781 (= lt!160983 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160974 () (_ BitVec 64))

(assert (=> b!338781 (= lt!160974 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160976 () Unit!10534)

(declare-fun addApplyDifferent!247 (ListLongMap!4125 (_ BitVec 64) V!10421 (_ BitVec 64)) Unit!10534)

(assert (=> b!338781 (= lt!160976 (addApplyDifferent!247 lt!160967 lt!160983 minValue!1467 lt!160974))))

(assert (=> b!338781 (= (apply!271 (+!715 lt!160967 (tuple2!5199 lt!160983 minValue!1467)) lt!160974) (apply!271 lt!160967 lt!160974))))

(declare-fun lt!160973 () Unit!10534)

(assert (=> b!338781 (= lt!160973 lt!160976)))

(declare-fun lt!160977 () ListLongMap!4125)

(assert (=> b!338781 (= lt!160977 (getCurrentListMapNoExtraKeys!590 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160981 () (_ BitVec 64))

(assert (=> b!338781 (= lt!160981 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160970 () (_ BitVec 64))

(assert (=> b!338781 (= lt!160970 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160979 () Unit!10534)

(assert (=> b!338781 (= lt!160979 (addApplyDifferent!247 lt!160977 lt!160981 zeroValue!1467 lt!160970))))

(assert (=> b!338781 (= (apply!271 (+!715 lt!160977 (tuple2!5199 lt!160981 zeroValue!1467)) lt!160970) (apply!271 lt!160977 lt!160970))))

(declare-fun lt!160975 () Unit!10534)

(assert (=> b!338781 (= lt!160975 lt!160979)))

(declare-fun lt!160985 () ListLongMap!4125)

(assert (=> b!338781 (= lt!160985 (getCurrentListMapNoExtraKeys!590 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160968 () (_ BitVec 64))

(assert (=> b!338781 (= lt!160968 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160980 () (_ BitVec 64))

(assert (=> b!338781 (= lt!160980 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!338781 (= lt!160966 (addApplyDifferent!247 lt!160985 lt!160968 minValue!1467 lt!160980))))

(assert (=> b!338781 (= (apply!271 (+!715 lt!160985 (tuple2!5199 lt!160968 minValue!1467)) lt!160980) (apply!271 lt!160985 lt!160980))))

(declare-fun b!338782 () Bool)

(declare-fun e!207875 () Bool)

(assert (=> b!338782 (= e!207875 (= (apply!271 lt!160969 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!338783 () Bool)

(declare-fun c!52405 () Bool)

(assert (=> b!338783 (= c!52405 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!207865 () ListLongMap!4125)

(assert (=> b!338783 (= e!207865 e!207873)))

(declare-fun b!338784 () Bool)

(declare-fun e!207866 () Bool)

(assert (=> b!338784 (= e!207866 (validKeyInArray!0 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!338785 () Bool)

(assert (=> b!338785 (= e!207872 e!207869)))

(declare-fun res!187212 () Bool)

(assert (=> b!338785 (= res!187212 call!26450)))

(assert (=> b!338785 (=> (not res!187212) (not e!207869))))

(declare-fun b!338786 () Bool)

(declare-fun call!26446 () ListLongMap!4125)

(assert (=> b!338786 (= e!207865 call!26446)))

(declare-fun b!338787 () Bool)

(assert (=> b!338787 (= e!207868 e!207875)))

(declare-fun res!187218 () Bool)

(assert (=> b!338787 (= res!187218 call!26447)))

(assert (=> b!338787 (=> (not res!187218) (not e!207875))))

(declare-fun bm!26445 () Bool)

(assert (=> bm!26445 (= call!26450 (contains!2123 lt!160969 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!338788 () Bool)

(assert (=> b!338788 (= e!207876 e!207865)))

(assert (=> b!338788 (= c!52408 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!338789 () Bool)

(assert (=> b!338789 (= e!207873 call!26446)))

(declare-fun bm!26446 () Bool)

(assert (=> bm!26446 (= call!26446 call!26448)))

(declare-fun b!338790 () Bool)

(assert (=> b!338790 (= e!207864 e!207870)))

(declare-fun res!187220 () Bool)

(assert (=> b!338790 (=> (not res!187220) (not e!207870))))

(assert (=> b!338790 (= res!187220 (contains!2123 lt!160969 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!338790 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8741 _keys!1895)))))

(declare-fun d!70689 () Bool)

(assert (=> d!70689 e!207867))

(declare-fun res!187215 () Bool)

(assert (=> d!70689 (=> (not res!187215) (not e!207867))))

(assert (=> d!70689 (= res!187215 (or (bvsge #b00000000000000000000000000000000 (size!8741 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8741 _keys!1895)))))))

(declare-fun lt!160986 () ListLongMap!4125)

(assert (=> d!70689 (= lt!160969 lt!160986)))

(declare-fun lt!160971 () Unit!10534)

(assert (=> d!70689 (= lt!160971 e!207874)))

(declare-fun c!52404 () Bool)

(assert (=> d!70689 (= c!52404 e!207866)))

(declare-fun res!187214 () Bool)

(assert (=> d!70689 (=> (not res!187214) (not e!207866))))

(assert (=> d!70689 (= res!187214 (bvslt #b00000000000000000000000000000000 (size!8741 _keys!1895)))))

(assert (=> d!70689 (= lt!160986 e!207876)))

(assert (=> d!70689 (= c!52407 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70689 (validMask!0 mask!2385)))

(assert (=> d!70689 (= (getCurrentListMap!1598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!160969)))

(declare-fun b!338791 () Bool)

(declare-fun Unit!10542 () Unit!10534)

(assert (=> b!338791 (= e!207874 Unit!10542)))

(declare-fun bm!26447 () Bool)

(assert (=> bm!26447 (= call!26449 call!26444)))

(declare-fun b!338792 () Bool)

(declare-fun res!187216 () Bool)

(assert (=> b!338792 (=> (not res!187216) (not e!207867))))

(assert (=> b!338792 (= res!187216 e!207868)))

(declare-fun c!52406 () Bool)

(assert (=> b!338792 (= c!52406 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!338793 () Bool)

(assert (=> b!338793 (= e!207867 e!207872)))

(declare-fun c!52409 () Bool)

(assert (=> b!338793 (= c!52409 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!338794 () Bool)

(assert (=> b!338794 (= e!207871 (validKeyInArray!0 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70689 c!52407) b!338776))

(assert (= (and d!70689 (not c!52407)) b!338788))

(assert (= (and b!338788 c!52408) b!338786))

(assert (= (and b!338788 (not c!52408)) b!338783))

(assert (= (and b!338783 c!52405) b!338789))

(assert (= (and b!338783 (not c!52405)) b!338779))

(assert (= (or b!338789 b!338779) bm!26447))

(assert (= (or b!338786 bm!26447) bm!26443))

(assert (= (or b!338786 b!338789) bm!26446))

(assert (= (or b!338776 bm!26443) bm!26442))

(assert (= (or b!338776 bm!26446) bm!26441))

(assert (= (and d!70689 res!187214) b!338784))

(assert (= (and d!70689 c!52404) b!338781))

(assert (= (and d!70689 (not c!52404)) b!338791))

(assert (= (and d!70689 res!187215) b!338778))

(assert (= (and b!338778 res!187217) b!338794))

(assert (= (and b!338778 (not res!187219)) b!338790))

(assert (= (and b!338790 res!187220) b!338774))

(assert (= (and b!338778 res!187213) b!338792))

(assert (= (and b!338792 c!52406) b!338787))

(assert (= (and b!338792 (not c!52406)) b!338780))

(assert (= (and b!338787 res!187218) b!338782))

(assert (= (or b!338787 b!338780) bm!26444))

(assert (= (and b!338792 res!187216) b!338793))

(assert (= (and b!338793 c!52409) b!338785))

(assert (= (and b!338793 (not c!52409)) b!338775))

(assert (= (and b!338785 res!187212) b!338777))

(assert (= (or b!338785 b!338775) bm!26445))

(declare-fun b_lambda!8453 () Bool)

(assert (=> (not b_lambda!8453) (not b!338774)))

(declare-fun t!9949 () Bool)

(declare-fun tb!3065 () Bool)

(assert (=> (and start!34008 (= defaultEntry!1528 defaultEntry!1528) t!9949) tb!3065))

(declare-fun result!5509 () Bool)

(assert (=> tb!3065 (= result!5509 tp_is_empty!7083)))

(assert (=> b!338774 t!9949))

(declare-fun b_and!14343 () Bool)

(assert (= b_and!14339 (and (=> t!9949 result!5509) b_and!14343)))

(assert (=> b!338774 m!341885))

(declare-fun m!341909 () Bool)

(assert (=> b!338774 m!341909))

(declare-fun m!341911 () Bool)

(assert (=> b!338774 m!341911))

(assert (=> b!338774 m!341911))

(declare-fun m!341913 () Bool)

(assert (=> b!338774 m!341913))

(declare-fun m!341915 () Bool)

(assert (=> b!338774 m!341915))

(assert (=> b!338774 m!341913))

(assert (=> b!338774 m!341885))

(declare-fun m!341917 () Bool)

(assert (=> bm!26442 m!341917))

(declare-fun m!341919 () Bool)

(assert (=> b!338781 m!341919))

(declare-fun m!341921 () Bool)

(assert (=> b!338781 m!341921))

(declare-fun m!341923 () Bool)

(assert (=> b!338781 m!341923))

(declare-fun m!341925 () Bool)

(assert (=> b!338781 m!341925))

(declare-fun m!341927 () Bool)

(assert (=> b!338781 m!341927))

(declare-fun m!341929 () Bool)

(assert (=> b!338781 m!341929))

(assert (=> b!338781 m!341917))

(declare-fun m!341931 () Bool)

(assert (=> b!338781 m!341931))

(declare-fun m!341933 () Bool)

(assert (=> b!338781 m!341933))

(declare-fun m!341935 () Bool)

(assert (=> b!338781 m!341935))

(declare-fun m!341937 () Bool)

(assert (=> b!338781 m!341937))

(declare-fun m!341939 () Bool)

(assert (=> b!338781 m!341939))

(assert (=> b!338781 m!341921))

(declare-fun m!341941 () Bool)

(assert (=> b!338781 m!341941))

(declare-fun m!341943 () Bool)

(assert (=> b!338781 m!341943))

(assert (=> b!338781 m!341933))

(assert (=> b!338781 m!341919))

(declare-fun m!341945 () Bool)

(assert (=> b!338781 m!341945))

(assert (=> b!338781 m!341885))

(declare-fun m!341947 () Bool)

(assert (=> b!338781 m!341947))

(assert (=> b!338781 m!341927))

(assert (=> b!338784 m!341885))

(assert (=> b!338784 m!341885))

(assert (=> b!338784 m!341891))

(declare-fun m!341949 () Bool)

(assert (=> bm!26445 m!341949))

(declare-fun m!341951 () Bool)

(assert (=> b!338782 m!341951))

(assert (=> b!338790 m!341885))

(assert (=> b!338790 m!341885))

(declare-fun m!341953 () Bool)

(assert (=> b!338790 m!341953))

(declare-fun m!341955 () Bool)

(assert (=> bm!26444 m!341955))

(assert (=> d!70689 m!341821))

(declare-fun m!341957 () Bool)

(assert (=> bm!26441 m!341957))

(assert (=> b!338794 m!341885))

(assert (=> b!338794 m!341885))

(assert (=> b!338794 m!341891))

(declare-fun m!341959 () Bool)

(assert (=> b!338777 m!341959))

(declare-fun m!341961 () Bool)

(assert (=> b!338776 m!341961))

(assert (=> b!338649 d!70689))

(declare-fun d!70691 () Bool)

(assert (=> d!70691 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!338644 d!70691))

(declare-fun b!338807 () Bool)

(declare-fun e!207888 () Bool)

(declare-fun e!207887 () Bool)

(assert (=> b!338807 (= e!207888 e!207887)))

(declare-fun res!187228 () Bool)

(assert (=> b!338807 (=> (not res!187228) (not e!207887))))

(declare-fun e!207886 () Bool)

(assert (=> b!338807 (= res!187228 (not e!207886))))

(declare-fun res!187229 () Bool)

(assert (=> b!338807 (=> (not res!187229) (not e!207886))))

(assert (=> b!338807 (= res!187229 (validKeyInArray!0 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!338808 () Bool)

(declare-fun e!207885 () Bool)

(assert (=> b!338808 (= e!207887 e!207885)))

(declare-fun c!52412 () Bool)

(assert (=> b!338808 (= c!52412 (validKeyInArray!0 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70693 () Bool)

(declare-fun res!187227 () Bool)

(assert (=> d!70693 (=> res!187227 e!207888)))

(assert (=> d!70693 (= res!187227 (bvsge #b00000000000000000000000000000000 (size!8741 _keys!1895)))))

(assert (=> d!70693 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4837) e!207888)))

(declare-fun b!338809 () Bool)

(declare-fun contains!2124 (List!4840 (_ BitVec 64)) Bool)

(assert (=> b!338809 (= e!207886 (contains!2124 Nil!4837 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!338810 () Bool)

(declare-fun call!26453 () Bool)

(assert (=> b!338810 (= e!207885 call!26453)))

(declare-fun bm!26450 () Bool)

(assert (=> bm!26450 (= call!26453 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52412 (Cons!4836 (select (arr!8389 _keys!1895) #b00000000000000000000000000000000) Nil!4837) Nil!4837)))))

(declare-fun b!338811 () Bool)

(assert (=> b!338811 (= e!207885 call!26453)))

(assert (= (and d!70693 (not res!187227)) b!338807))

(assert (= (and b!338807 res!187229) b!338809))

(assert (= (and b!338807 res!187228) b!338808))

(assert (= (and b!338808 c!52412) b!338811))

(assert (= (and b!338808 (not c!52412)) b!338810))

(assert (= (or b!338811 b!338810) bm!26450))

(assert (=> b!338807 m!341885))

(assert (=> b!338807 m!341885))

(assert (=> b!338807 m!341891))

(assert (=> b!338808 m!341885))

(assert (=> b!338808 m!341885))

(assert (=> b!338808 m!341891))

(assert (=> b!338809 m!341885))

(assert (=> b!338809 m!341885))

(declare-fun m!341963 () Bool)

(assert (=> b!338809 m!341963))

(assert (=> bm!26450 m!341885))

(declare-fun m!341965 () Bool)

(assert (=> bm!26450 m!341965))

(assert (=> b!338654 d!70693))

(declare-fun b!338824 () Bool)

(declare-fun e!207896 () SeekEntryResult!3246)

(declare-fun e!207897 () SeekEntryResult!3246)

(assert (=> b!338824 (= e!207896 e!207897)))

(declare-fun lt!160995 () (_ BitVec 64))

(declare-fun lt!160994 () SeekEntryResult!3246)

(assert (=> b!338824 (= lt!160995 (select (arr!8389 _keys!1895) (index!15165 lt!160994)))))

(declare-fun c!52419 () Bool)

(assert (=> b!338824 (= c!52419 (= lt!160995 k0!1348))))

(declare-fun b!338825 () Bool)

(assert (=> b!338825 (= e!207896 Undefined!3246)))

(declare-fun b!338826 () Bool)

(declare-fun e!207895 () SeekEntryResult!3246)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17733 (_ BitVec 32)) SeekEntryResult!3246)

(assert (=> b!338826 (= e!207895 (seekKeyOrZeroReturnVacant!0 (x!33753 lt!160994) (index!15165 lt!160994) (index!15165 lt!160994) k0!1348 _keys!1895 mask!2385))))

(declare-fun d!70695 () Bool)

(declare-fun lt!160993 () SeekEntryResult!3246)

(assert (=> d!70695 (and (or ((_ is Undefined!3246) lt!160993) (not ((_ is Found!3246) lt!160993)) (and (bvsge (index!15164 lt!160993) #b00000000000000000000000000000000) (bvslt (index!15164 lt!160993) (size!8741 _keys!1895)))) (or ((_ is Undefined!3246) lt!160993) ((_ is Found!3246) lt!160993) (not ((_ is MissingZero!3246) lt!160993)) (and (bvsge (index!15163 lt!160993) #b00000000000000000000000000000000) (bvslt (index!15163 lt!160993) (size!8741 _keys!1895)))) (or ((_ is Undefined!3246) lt!160993) ((_ is Found!3246) lt!160993) ((_ is MissingZero!3246) lt!160993) (not ((_ is MissingVacant!3246) lt!160993)) (and (bvsge (index!15166 lt!160993) #b00000000000000000000000000000000) (bvslt (index!15166 lt!160993) (size!8741 _keys!1895)))) (or ((_ is Undefined!3246) lt!160993) (ite ((_ is Found!3246) lt!160993) (= (select (arr!8389 _keys!1895) (index!15164 lt!160993)) k0!1348) (ite ((_ is MissingZero!3246) lt!160993) (= (select (arr!8389 _keys!1895) (index!15163 lt!160993)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3246) lt!160993) (= (select (arr!8389 _keys!1895) (index!15166 lt!160993)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70695 (= lt!160993 e!207896)))

(declare-fun c!52420 () Bool)

(assert (=> d!70695 (= c!52420 (and ((_ is Intermediate!3246) lt!160994) (undefined!4058 lt!160994)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17733 (_ BitVec 32)) SeekEntryResult!3246)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70695 (= lt!160994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70695 (validMask!0 mask!2385)))

(assert (=> d!70695 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!160993)))

(declare-fun b!338827 () Bool)

(declare-fun c!52421 () Bool)

(assert (=> b!338827 (= c!52421 (= lt!160995 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!338827 (= e!207897 e!207895)))

(declare-fun b!338828 () Bool)

(assert (=> b!338828 (= e!207895 (MissingZero!3246 (index!15165 lt!160994)))))

(declare-fun b!338829 () Bool)

(assert (=> b!338829 (= e!207897 (Found!3246 (index!15165 lt!160994)))))

(assert (= (and d!70695 c!52420) b!338825))

(assert (= (and d!70695 (not c!52420)) b!338824))

(assert (= (and b!338824 c!52419) b!338829))

(assert (= (and b!338824 (not c!52419)) b!338827))

(assert (= (and b!338827 c!52421) b!338828))

(assert (= (and b!338827 (not c!52421)) b!338826))

(declare-fun m!341967 () Bool)

(assert (=> b!338824 m!341967))

(declare-fun m!341969 () Bool)

(assert (=> b!338826 m!341969))

(declare-fun m!341971 () Bool)

(assert (=> d!70695 m!341971))

(declare-fun m!341973 () Bool)

(assert (=> d!70695 m!341973))

(declare-fun m!341975 () Bool)

(assert (=> d!70695 m!341975))

(declare-fun m!341977 () Bool)

(assert (=> d!70695 m!341977))

(assert (=> d!70695 m!341975))

(declare-fun m!341979 () Bool)

(assert (=> d!70695 m!341979))

(assert (=> d!70695 m!341821))

(assert (=> b!338653 d!70695))

(declare-fun b!338836 () Bool)

(declare-fun e!207902 () Bool)

(assert (=> b!338836 (= e!207902 tp_is_empty!7083)))

(declare-fun condMapEmpty!12042 () Bool)

(declare-fun mapDefault!12042 () ValueCell!3198)

(assert (=> mapNonEmpty!12036 (= condMapEmpty!12042 (= mapRest!12036 ((as const (Array (_ BitVec 32) ValueCell!3198)) mapDefault!12042)))))

(declare-fun e!207903 () Bool)

(declare-fun mapRes!12042 () Bool)

(assert (=> mapNonEmpty!12036 (= tp!24911 (and e!207903 mapRes!12042))))

(declare-fun mapNonEmpty!12042 () Bool)

(declare-fun tp!24921 () Bool)

(assert (=> mapNonEmpty!12042 (= mapRes!12042 (and tp!24921 e!207902))))

(declare-fun mapRest!12042 () (Array (_ BitVec 32) ValueCell!3198))

(declare-fun mapValue!12042 () ValueCell!3198)

(declare-fun mapKey!12042 () (_ BitVec 32))

(assert (=> mapNonEmpty!12042 (= mapRest!12036 (store mapRest!12042 mapKey!12042 mapValue!12042))))

(declare-fun mapIsEmpty!12042 () Bool)

(assert (=> mapIsEmpty!12042 mapRes!12042))

(declare-fun b!338837 () Bool)

(assert (=> b!338837 (= e!207903 tp_is_empty!7083)))

(assert (= (and mapNonEmpty!12036 condMapEmpty!12042) mapIsEmpty!12042))

(assert (= (and mapNonEmpty!12036 (not condMapEmpty!12042)) mapNonEmpty!12042))

(assert (= (and mapNonEmpty!12042 ((_ is ValueCellFull!3198) mapValue!12042)) b!338836))

(assert (= (and mapNonEmpty!12036 ((_ is ValueCellFull!3198) mapDefault!12042)) b!338837))

(declare-fun m!341981 () Bool)

(assert (=> mapNonEmpty!12042 m!341981))

(declare-fun b_lambda!8455 () Bool)

(assert (= b_lambda!8453 (or (and start!34008 b_free!7131) b_lambda!8455)))

(check-sat (not b!338719) (not mapNonEmpty!12042) (not b!338777) (not b_next!7131) (not b!338720) (not b!338774) b_and!14343 (not b!338784) (not b!338731) (not b_lambda!8455) (not b!338809) (not bm!26442) (not bm!26450) (not b!338781) (not b!338704) (not bm!26445) (not bm!26444) (not bm!26441) (not b!338776) (not b!338807) (not bm!26426) (not d!70689) (not b!338790) (not b!338808) (not b!338826) (not b!338710) tp_is_empty!7083 (not b!338794) (not b!338729) (not b!338782) (not d!70671) (not d!70695) (not d!70687))
(check-sat b_and!14343 (not b_next!7131))
