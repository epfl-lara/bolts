; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76542 () Bool)

(assert start!76542)

(declare-fun b!896629 () Bool)

(declare-fun b_free!15963 () Bool)

(declare-fun b_next!15963 () Bool)

(assert (=> b!896629 (= b_free!15963 (not b_next!15963))))

(declare-fun tp!55929 () Bool)

(declare-fun b_and!26273 () Bool)

(assert (=> b!896629 (= tp!55929 b_and!26273)))

(declare-fun res!606321 () Bool)

(declare-fun e!501276 () Bool)

(assert (=> start!76542 (=> (not res!606321) (not e!501276))))

(declare-datatypes ((array!52588 0))(
  ( (array!52589 (arr!25276 (Array (_ BitVec 32) (_ BitVec 64))) (size!25729 (_ BitVec 32))) )
))
(declare-datatypes ((V!29353 0))(
  ( (V!29354 (val!9196 Int)) )
))
(declare-datatypes ((ValueCell!8664 0))(
  ( (ValueCellFull!8664 (v!11683 V!29353)) (EmptyCell!8664) )
))
(declare-datatypes ((array!52590 0))(
  ( (array!52591 (arr!25277 (Array (_ BitVec 32) ValueCell!8664)) (size!25730 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4344 0))(
  ( (LongMapFixedSize!4345 (defaultEntry!5384 Int) (mask!26034 (_ BitVec 32)) (extraKeys!5088 (_ BitVec 32)) (zeroValue!5192 V!29353) (minValue!5192 V!29353) (_size!2227 (_ BitVec 32)) (_keys!10121 array!52588) (_values!5379 array!52590) (_vacant!2227 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4344)

(declare-fun valid!1661 (LongMapFixedSize!4344) Bool)

(assert (=> start!76542 (= res!606321 (valid!1661 thiss!1181))))

(assert (=> start!76542 e!501276))

(declare-fun e!501278 () Bool)

(assert (=> start!76542 e!501278))

(assert (=> start!76542 true))

(declare-fun b!896624 () Bool)

(declare-fun e!501279 () Bool)

(declare-fun e!501275 () Bool)

(assert (=> b!896624 (= e!501279 e!501275)))

(declare-fun res!606322 () Bool)

(assert (=> b!896624 (=> res!606322 e!501275)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896624 (= res!606322 (not (validMask!0 (mask!26034 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896624 (arrayContainsKey!0 (_keys!10121 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30463 0))(
  ( (Unit!30464) )
))
(declare-fun lt!404889 () Unit!30463)

(declare-datatypes ((SeekEntryResult!8891 0))(
  ( (MissingZero!8891 (index!37934 (_ BitVec 32))) (Found!8891 (index!37935 (_ BitVec 32))) (Intermediate!8891 (undefined!9703 Bool) (index!37936 (_ BitVec 32)) (x!76358 (_ BitVec 32))) (Undefined!8891) (MissingVacant!8891 (index!37937 (_ BitVec 32))) )
))
(declare-fun lt!404887 () SeekEntryResult!8891)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52588 (_ BitVec 64) (_ BitVec 32)) Unit!30463)

(assert (=> b!896624 (= lt!404889 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10121 thiss!1181) key!785 (index!37935 lt!404887)))))

(declare-fun b!896625 () Bool)

(assert (=> b!896625 (= e!501276 (not e!501279))))

(declare-fun res!606318 () Bool)

(assert (=> b!896625 (=> res!606318 e!501279)))

(get-info :version)

(assert (=> b!896625 (= res!606318 (not ((_ is Found!8891) lt!404887)))))

(declare-fun e!501281 () Bool)

(assert (=> b!896625 e!501281))

(declare-fun res!606320 () Bool)

(assert (=> b!896625 (=> res!606320 e!501281)))

(assert (=> b!896625 (= res!606320 (not ((_ is Found!8891) lt!404887)))))

(declare-fun lt!404888 () Unit!30463)

(declare-fun lemmaSeekEntryGivesInRangeIndex!80 (array!52588 array!52590 (_ BitVec 32) (_ BitVec 32) V!29353 V!29353 (_ BitVec 64)) Unit!30463)

(assert (=> b!896625 (= lt!404888 (lemmaSeekEntryGivesInRangeIndex!80 (_keys!10121 thiss!1181) (_values!5379 thiss!1181) (mask!26034 thiss!1181) (extraKeys!5088 thiss!1181) (zeroValue!5192 thiss!1181) (minValue!5192 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52588 (_ BitVec 32)) SeekEntryResult!8891)

(assert (=> b!896625 (= lt!404887 (seekEntry!0 key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(declare-fun b!896626 () Bool)

(assert (=> b!896626 (= e!501275 (or (not (= (size!25730 (_values!5379 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26034 thiss!1181)))) (= (size!25729 (_keys!10121 thiss!1181)) (size!25730 (_values!5379 thiss!1181)))))))

(declare-fun b!896627 () Bool)

(declare-fun e!501283 () Bool)

(declare-fun tp_is_empty!18291 () Bool)

(assert (=> b!896627 (= e!501283 tp_is_empty!18291)))

(declare-fun b!896628 () Bool)

(declare-fun res!606319 () Bool)

(assert (=> b!896628 (=> (not res!606319) (not e!501276))))

(assert (=> b!896628 (= res!606319 (not (= key!785 (bvneg key!785))))))

(declare-fun e!501277 () Bool)

(declare-fun array_inv!19814 (array!52588) Bool)

(declare-fun array_inv!19815 (array!52590) Bool)

(assert (=> b!896629 (= e!501278 (and tp!55929 tp_is_empty!18291 (array_inv!19814 (_keys!10121 thiss!1181)) (array_inv!19815 (_values!5379 thiss!1181)) e!501277))))

(declare-fun b!896630 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896630 (= e!501281 (inRange!0 (index!37935 lt!404887) (mask!26034 thiss!1181)))))

(declare-fun b!896631 () Bool)

(declare-fun e!501280 () Bool)

(assert (=> b!896631 (= e!501280 tp_is_empty!18291)))

(declare-fun mapNonEmpty!29061 () Bool)

(declare-fun mapRes!29061 () Bool)

(declare-fun tp!55928 () Bool)

(assert (=> mapNonEmpty!29061 (= mapRes!29061 (and tp!55928 e!501283))))

(declare-fun mapValue!29061 () ValueCell!8664)

(declare-fun mapRest!29061 () (Array (_ BitVec 32) ValueCell!8664))

(declare-fun mapKey!29061 () (_ BitVec 32))

(assert (=> mapNonEmpty!29061 (= (arr!25277 (_values!5379 thiss!1181)) (store mapRest!29061 mapKey!29061 mapValue!29061))))

(declare-fun b!896632 () Bool)

(assert (=> b!896632 (= e!501277 (and e!501280 mapRes!29061))))

(declare-fun condMapEmpty!29061 () Bool)

(declare-fun mapDefault!29061 () ValueCell!8664)

(assert (=> b!896632 (= condMapEmpty!29061 (= (arr!25277 (_values!5379 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8664)) mapDefault!29061)))))

(declare-fun mapIsEmpty!29061 () Bool)

(assert (=> mapIsEmpty!29061 mapRes!29061))

(assert (= (and start!76542 res!606321) b!896628))

(assert (= (and b!896628 res!606319) b!896625))

(assert (= (and b!896625 (not res!606320)) b!896630))

(assert (= (and b!896625 (not res!606318)) b!896624))

(assert (= (and b!896624 (not res!606322)) b!896626))

(assert (= (and b!896632 condMapEmpty!29061) mapIsEmpty!29061))

(assert (= (and b!896632 (not condMapEmpty!29061)) mapNonEmpty!29061))

(assert (= (and mapNonEmpty!29061 ((_ is ValueCellFull!8664) mapValue!29061)) b!896627))

(assert (= (and b!896632 ((_ is ValueCellFull!8664) mapDefault!29061)) b!896631))

(assert (= b!896629 b!896632))

(assert (= start!76542 b!896629))

(declare-fun m!833787 () Bool)

(assert (=> mapNonEmpty!29061 m!833787))

(declare-fun m!833789 () Bool)

(assert (=> b!896629 m!833789))

(declare-fun m!833791 () Bool)

(assert (=> b!896629 m!833791))

(declare-fun m!833793 () Bool)

(assert (=> b!896624 m!833793))

(declare-fun m!833795 () Bool)

(assert (=> b!896624 m!833795))

(declare-fun m!833797 () Bool)

(assert (=> b!896624 m!833797))

(declare-fun m!833799 () Bool)

(assert (=> b!896630 m!833799))

(declare-fun m!833801 () Bool)

(assert (=> b!896625 m!833801))

(declare-fun m!833803 () Bool)

(assert (=> b!896625 m!833803))

(declare-fun m!833805 () Bool)

(assert (=> start!76542 m!833805))

(check-sat (not b!896624) (not b_next!15963) tp_is_empty!18291 (not start!76542) (not mapNonEmpty!29061) (not b!896625) b_and!26273 (not b!896629) (not b!896630))
(check-sat b_and!26273 (not b_next!15963))
(get-model)

(declare-fun d!110893 () Bool)

(assert (=> d!110893 (= (validMask!0 (mask!26034 thiss!1181)) (and (or (= (mask!26034 thiss!1181) #b00000000000000000000000000000111) (= (mask!26034 thiss!1181) #b00000000000000000000000000001111) (= (mask!26034 thiss!1181) #b00000000000000000000000000011111) (= (mask!26034 thiss!1181) #b00000000000000000000000000111111) (= (mask!26034 thiss!1181) #b00000000000000000000000001111111) (= (mask!26034 thiss!1181) #b00000000000000000000000011111111) (= (mask!26034 thiss!1181) #b00000000000000000000000111111111) (= (mask!26034 thiss!1181) #b00000000000000000000001111111111) (= (mask!26034 thiss!1181) #b00000000000000000000011111111111) (= (mask!26034 thiss!1181) #b00000000000000000000111111111111) (= (mask!26034 thiss!1181) #b00000000000000000001111111111111) (= (mask!26034 thiss!1181) #b00000000000000000011111111111111) (= (mask!26034 thiss!1181) #b00000000000000000111111111111111) (= (mask!26034 thiss!1181) #b00000000000000001111111111111111) (= (mask!26034 thiss!1181) #b00000000000000011111111111111111) (= (mask!26034 thiss!1181) #b00000000000000111111111111111111) (= (mask!26034 thiss!1181) #b00000000000001111111111111111111) (= (mask!26034 thiss!1181) #b00000000000011111111111111111111) (= (mask!26034 thiss!1181) #b00000000000111111111111111111111) (= (mask!26034 thiss!1181) #b00000000001111111111111111111111) (= (mask!26034 thiss!1181) #b00000000011111111111111111111111) (= (mask!26034 thiss!1181) #b00000000111111111111111111111111) (= (mask!26034 thiss!1181) #b00000001111111111111111111111111) (= (mask!26034 thiss!1181) #b00000011111111111111111111111111) (= (mask!26034 thiss!1181) #b00000111111111111111111111111111) (= (mask!26034 thiss!1181) #b00001111111111111111111111111111) (= (mask!26034 thiss!1181) #b00011111111111111111111111111111) (= (mask!26034 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26034 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!896624 d!110893))

(declare-fun d!110895 () Bool)

(declare-fun res!606342 () Bool)

(declare-fun e!501315 () Bool)

(assert (=> d!110895 (=> res!606342 e!501315)))

(assert (=> d!110895 (= res!606342 (= (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110895 (= (arrayContainsKey!0 (_keys!10121 thiss!1181) key!785 #b00000000000000000000000000000000) e!501315)))

(declare-fun b!896664 () Bool)

(declare-fun e!501316 () Bool)

(assert (=> b!896664 (= e!501315 e!501316)))

(declare-fun res!606343 () Bool)

(assert (=> b!896664 (=> (not res!606343) (not e!501316))))

(assert (=> b!896664 (= res!606343 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25729 (_keys!10121 thiss!1181))))))

(declare-fun b!896665 () Bool)

(assert (=> b!896665 (= e!501316 (arrayContainsKey!0 (_keys!10121 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110895 (not res!606342)) b!896664))

(assert (= (and b!896664 res!606343) b!896665))

(declare-fun m!833827 () Bool)

(assert (=> d!110895 m!833827))

(declare-fun m!833829 () Bool)

(assert (=> b!896665 m!833829))

(assert (=> b!896624 d!110895))

(declare-fun d!110897 () Bool)

(assert (=> d!110897 (arrayContainsKey!0 (_keys!10121 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!404901 () Unit!30463)

(declare-fun choose!13 (array!52588 (_ BitVec 64) (_ BitVec 32)) Unit!30463)

(assert (=> d!110897 (= lt!404901 (choose!13 (_keys!10121 thiss!1181) key!785 (index!37935 lt!404887)))))

(assert (=> d!110897 (bvsge (index!37935 lt!404887) #b00000000000000000000000000000000)))

(assert (=> d!110897 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10121 thiss!1181) key!785 (index!37935 lt!404887)) lt!404901)))

(declare-fun bs!25167 () Bool)

(assert (= bs!25167 d!110897))

(assert (=> bs!25167 m!833795))

(declare-fun m!833831 () Bool)

(assert (=> bs!25167 m!833831))

(assert (=> b!896624 d!110897))

(declare-fun d!110899 () Bool)

(assert (=> d!110899 (= (inRange!0 (index!37935 lt!404887) (mask!26034 thiss!1181)) (and (bvsge (index!37935 lt!404887) #b00000000000000000000000000000000) (bvslt (index!37935 lt!404887) (bvadd (mask!26034 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!896630 d!110899))

(declare-fun d!110901 () Bool)

(declare-fun e!501319 () Bool)

(assert (=> d!110901 e!501319))

(declare-fun res!606346 () Bool)

(assert (=> d!110901 (=> res!606346 e!501319)))

(declare-fun lt!404907 () SeekEntryResult!8891)

(assert (=> d!110901 (= res!606346 (not ((_ is Found!8891) lt!404907)))))

(assert (=> d!110901 (= lt!404907 (seekEntry!0 key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(declare-fun lt!404906 () Unit!30463)

(declare-fun choose!1488 (array!52588 array!52590 (_ BitVec 32) (_ BitVec 32) V!29353 V!29353 (_ BitVec 64)) Unit!30463)

(assert (=> d!110901 (= lt!404906 (choose!1488 (_keys!10121 thiss!1181) (_values!5379 thiss!1181) (mask!26034 thiss!1181) (extraKeys!5088 thiss!1181) (zeroValue!5192 thiss!1181) (minValue!5192 thiss!1181) key!785))))

(assert (=> d!110901 (validMask!0 (mask!26034 thiss!1181))))

(assert (=> d!110901 (= (lemmaSeekEntryGivesInRangeIndex!80 (_keys!10121 thiss!1181) (_values!5379 thiss!1181) (mask!26034 thiss!1181) (extraKeys!5088 thiss!1181) (zeroValue!5192 thiss!1181) (minValue!5192 thiss!1181) key!785) lt!404906)))

(declare-fun b!896668 () Bool)

(assert (=> b!896668 (= e!501319 (inRange!0 (index!37935 lt!404907) (mask!26034 thiss!1181)))))

(assert (= (and d!110901 (not res!606346)) b!896668))

(assert (=> d!110901 m!833803))

(declare-fun m!833833 () Bool)

(assert (=> d!110901 m!833833))

(assert (=> d!110901 m!833793))

(declare-fun m!833835 () Bool)

(assert (=> b!896668 m!833835))

(assert (=> b!896625 d!110901))

(declare-fun d!110903 () Bool)

(declare-fun lt!404919 () SeekEntryResult!8891)

(assert (=> d!110903 (and (or ((_ is MissingVacant!8891) lt!404919) (not ((_ is Found!8891) lt!404919)) (and (bvsge (index!37935 lt!404919) #b00000000000000000000000000000000) (bvslt (index!37935 lt!404919) (size!25729 (_keys!10121 thiss!1181))))) (not ((_ is MissingVacant!8891) lt!404919)) (or (not ((_ is Found!8891) lt!404919)) (= (select (arr!25276 (_keys!10121 thiss!1181)) (index!37935 lt!404919)) key!785)))))

(declare-fun e!501328 () SeekEntryResult!8891)

(assert (=> d!110903 (= lt!404919 e!501328)))

(declare-fun c!94655 () Bool)

(declare-fun lt!404916 () SeekEntryResult!8891)

(assert (=> d!110903 (= c!94655 (and ((_ is Intermediate!8891) lt!404916) (undefined!9703 lt!404916)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52588 (_ BitVec 32)) SeekEntryResult!8891)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110903 (= lt!404916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26034 thiss!1181)) key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(assert (=> d!110903 (validMask!0 (mask!26034 thiss!1181))))

(assert (=> d!110903 (= (seekEntry!0 key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)) lt!404919)))

(declare-fun b!896681 () Bool)

(declare-fun e!501326 () SeekEntryResult!8891)

(assert (=> b!896681 (= e!501326 (MissingZero!8891 (index!37936 lt!404916)))))

(declare-fun b!896682 () Bool)

(declare-fun e!501327 () SeekEntryResult!8891)

(assert (=> b!896682 (= e!501328 e!501327)))

(declare-fun lt!404917 () (_ BitVec 64))

(assert (=> b!896682 (= lt!404917 (select (arr!25276 (_keys!10121 thiss!1181)) (index!37936 lt!404916)))))

(declare-fun c!94656 () Bool)

(assert (=> b!896682 (= c!94656 (= lt!404917 key!785))))

(declare-fun b!896683 () Bool)

(declare-fun c!94657 () Bool)

(assert (=> b!896683 (= c!94657 (= lt!404917 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!896683 (= e!501327 e!501326)))

(declare-fun b!896684 () Bool)

(assert (=> b!896684 (= e!501328 Undefined!8891)))

(declare-fun b!896685 () Bool)

(declare-fun lt!404918 () SeekEntryResult!8891)

(assert (=> b!896685 (= e!501326 (ite ((_ is MissingVacant!8891) lt!404918) (MissingZero!8891 (index!37937 lt!404918)) lt!404918))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52588 (_ BitVec 32)) SeekEntryResult!8891)

(assert (=> b!896685 (= lt!404918 (seekKeyOrZeroReturnVacant!0 (x!76358 lt!404916) (index!37936 lt!404916) (index!37936 lt!404916) key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(declare-fun b!896686 () Bool)

(assert (=> b!896686 (= e!501327 (Found!8891 (index!37936 lt!404916)))))

(assert (= (and d!110903 c!94655) b!896684))

(assert (= (and d!110903 (not c!94655)) b!896682))

(assert (= (and b!896682 c!94656) b!896686))

(assert (= (and b!896682 (not c!94656)) b!896683))

(assert (= (and b!896683 c!94657) b!896681))

(assert (= (and b!896683 (not c!94657)) b!896685))

(declare-fun m!833837 () Bool)

(assert (=> d!110903 m!833837))

(declare-fun m!833839 () Bool)

(assert (=> d!110903 m!833839))

(assert (=> d!110903 m!833839))

(declare-fun m!833841 () Bool)

(assert (=> d!110903 m!833841))

(assert (=> d!110903 m!833793))

(declare-fun m!833843 () Bool)

(assert (=> b!896682 m!833843))

(declare-fun m!833845 () Bool)

(assert (=> b!896685 m!833845))

(assert (=> b!896625 d!110903))

(declare-fun d!110905 () Bool)

(assert (=> d!110905 (= (array_inv!19814 (_keys!10121 thiss!1181)) (bvsge (size!25729 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896629 d!110905))

(declare-fun d!110907 () Bool)

(assert (=> d!110907 (= (array_inv!19815 (_values!5379 thiss!1181)) (bvsge (size!25730 (_values!5379 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896629 d!110907))

(declare-fun d!110909 () Bool)

(declare-fun res!606353 () Bool)

(declare-fun e!501331 () Bool)

(assert (=> d!110909 (=> (not res!606353) (not e!501331))))

(declare-fun simpleValid!314 (LongMapFixedSize!4344) Bool)

(assert (=> d!110909 (= res!606353 (simpleValid!314 thiss!1181))))

(assert (=> d!110909 (= (valid!1661 thiss!1181) e!501331)))

(declare-fun b!896693 () Bool)

(declare-fun res!606354 () Bool)

(assert (=> b!896693 (=> (not res!606354) (not e!501331))))

(declare-fun arrayCountValidKeys!0 (array!52588 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!896693 (= res!606354 (= (arrayCountValidKeys!0 (_keys!10121 thiss!1181) #b00000000000000000000000000000000 (size!25729 (_keys!10121 thiss!1181))) (_size!2227 thiss!1181)))))

(declare-fun b!896694 () Bool)

(declare-fun res!606355 () Bool)

(assert (=> b!896694 (=> (not res!606355) (not e!501331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52588 (_ BitVec 32)) Bool)

(assert (=> b!896694 (= res!606355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(declare-fun b!896695 () Bool)

(declare-datatypes ((List!17902 0))(
  ( (Nil!17899) (Cons!17898 (h!19037 (_ BitVec 64)) (t!25249 List!17902)) )
))
(declare-fun arrayNoDuplicates!0 (array!52588 (_ BitVec 32) List!17902) Bool)

(assert (=> b!896695 (= e!501331 (arrayNoDuplicates!0 (_keys!10121 thiss!1181) #b00000000000000000000000000000000 Nil!17899))))

(assert (= (and d!110909 res!606353) b!896693))

(assert (= (and b!896693 res!606354) b!896694))

(assert (= (and b!896694 res!606355) b!896695))

(declare-fun m!833847 () Bool)

(assert (=> d!110909 m!833847))

(declare-fun m!833849 () Bool)

(assert (=> b!896693 m!833849))

(declare-fun m!833851 () Bool)

(assert (=> b!896694 m!833851))

(declare-fun m!833853 () Bool)

(assert (=> b!896695 m!833853))

(assert (=> start!76542 d!110909))

(declare-fun b!896703 () Bool)

(declare-fun e!501337 () Bool)

(assert (=> b!896703 (= e!501337 tp_is_empty!18291)))

(declare-fun mapIsEmpty!29067 () Bool)

(declare-fun mapRes!29067 () Bool)

(assert (=> mapIsEmpty!29067 mapRes!29067))

(declare-fun b!896702 () Bool)

(declare-fun e!501336 () Bool)

(assert (=> b!896702 (= e!501336 tp_is_empty!18291)))

(declare-fun mapNonEmpty!29067 () Bool)

(declare-fun tp!55938 () Bool)

(assert (=> mapNonEmpty!29067 (= mapRes!29067 (and tp!55938 e!501336))))

(declare-fun mapRest!29067 () (Array (_ BitVec 32) ValueCell!8664))

(declare-fun mapKey!29067 () (_ BitVec 32))

(declare-fun mapValue!29067 () ValueCell!8664)

(assert (=> mapNonEmpty!29067 (= mapRest!29061 (store mapRest!29067 mapKey!29067 mapValue!29067))))

(declare-fun condMapEmpty!29067 () Bool)

(declare-fun mapDefault!29067 () ValueCell!8664)

(assert (=> mapNonEmpty!29061 (= condMapEmpty!29067 (= mapRest!29061 ((as const (Array (_ BitVec 32) ValueCell!8664)) mapDefault!29067)))))

(assert (=> mapNonEmpty!29061 (= tp!55928 (and e!501337 mapRes!29067))))

(assert (= (and mapNonEmpty!29061 condMapEmpty!29067) mapIsEmpty!29067))

(assert (= (and mapNonEmpty!29061 (not condMapEmpty!29067)) mapNonEmpty!29067))

(assert (= (and mapNonEmpty!29067 ((_ is ValueCellFull!8664) mapValue!29067)) b!896702))

(assert (= (and mapNonEmpty!29061 ((_ is ValueCellFull!8664) mapDefault!29067)) b!896703))

(declare-fun m!833855 () Bool)

(assert (=> mapNonEmpty!29067 m!833855))

(check-sat (not d!110901) (not b!896665) (not b!896695) (not b!896685) (not mapNonEmpty!29067) (not b!896694) (not b_next!15963) (not b!896693) (not d!110903) (not d!110897) (not d!110909) b_and!26273 (not b!896668) tp_is_empty!18291)
(check-sat b_and!26273 (not b_next!15963))
(get-model)

(declare-fun bm!39787 () Bool)

(declare-fun call!39790 () Bool)

(assert (=> bm!39787 (= call!39790 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(declare-fun b!896712 () Bool)

(declare-fun e!501346 () Bool)

(assert (=> b!896712 (= e!501346 call!39790)))

(declare-fun b!896713 () Bool)

(declare-fun e!501344 () Bool)

(declare-fun e!501345 () Bool)

(assert (=> b!896713 (= e!501344 e!501345)))

(declare-fun c!94660 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!896713 (= c!94660 (validKeyInArray!0 (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110911 () Bool)

(declare-fun res!606361 () Bool)

(assert (=> d!110911 (=> res!606361 e!501344)))

(assert (=> d!110911 (= res!606361 (bvsge #b00000000000000000000000000000000 (size!25729 (_keys!10121 thiss!1181))))))

(assert (=> d!110911 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)) e!501344)))

(declare-fun b!896714 () Bool)

(assert (=> b!896714 (= e!501345 e!501346)))

(declare-fun lt!404926 () (_ BitVec 64))

(assert (=> b!896714 (= lt!404926 (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!404927 () Unit!30463)

(assert (=> b!896714 (= lt!404927 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10121 thiss!1181) lt!404926 #b00000000000000000000000000000000))))

(assert (=> b!896714 (arrayContainsKey!0 (_keys!10121 thiss!1181) lt!404926 #b00000000000000000000000000000000)))

(declare-fun lt!404928 () Unit!30463)

(assert (=> b!896714 (= lt!404928 lt!404927)))

(declare-fun res!606360 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52588 (_ BitVec 32)) SeekEntryResult!8891)

(assert (=> b!896714 (= res!606360 (= (seekEntryOrOpen!0 (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000) (_keys!10121 thiss!1181) (mask!26034 thiss!1181)) (Found!8891 #b00000000000000000000000000000000)))))

(assert (=> b!896714 (=> (not res!606360) (not e!501346))))

(declare-fun b!896715 () Bool)

(assert (=> b!896715 (= e!501345 call!39790)))

(assert (= (and d!110911 (not res!606361)) b!896713))

(assert (= (and b!896713 c!94660) b!896714))

(assert (= (and b!896713 (not c!94660)) b!896715))

(assert (= (and b!896714 res!606360) b!896712))

(assert (= (or b!896712 b!896715) bm!39787))

(declare-fun m!833857 () Bool)

(assert (=> bm!39787 m!833857))

(assert (=> b!896713 m!833827))

(assert (=> b!896713 m!833827))

(declare-fun m!833859 () Bool)

(assert (=> b!896713 m!833859))

(assert (=> b!896714 m!833827))

(declare-fun m!833861 () Bool)

(assert (=> b!896714 m!833861))

(declare-fun m!833863 () Bool)

(assert (=> b!896714 m!833863))

(assert (=> b!896714 m!833827))

(declare-fun m!833865 () Bool)

(assert (=> b!896714 m!833865))

(assert (=> b!896694 d!110911))

(declare-fun d!110913 () Bool)

(declare-fun res!606362 () Bool)

(declare-fun e!501347 () Bool)

(assert (=> d!110913 (=> res!606362 e!501347)))

(assert (=> d!110913 (= res!606362 (= (select (arr!25276 (_keys!10121 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!110913 (= (arrayContainsKey!0 (_keys!10121 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!501347)))

(declare-fun b!896716 () Bool)

(declare-fun e!501348 () Bool)

(assert (=> b!896716 (= e!501347 e!501348)))

(declare-fun res!606363 () Bool)

(assert (=> b!896716 (=> (not res!606363) (not e!501348))))

(assert (=> b!896716 (= res!606363 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25729 (_keys!10121 thiss!1181))))))

(declare-fun b!896717 () Bool)

(assert (=> b!896717 (= e!501348 (arrayContainsKey!0 (_keys!10121 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!110913 (not res!606362)) b!896716))

(assert (= (and b!896716 res!606363) b!896717))

(declare-fun m!833867 () Bool)

(assert (=> d!110913 m!833867))

(declare-fun m!833869 () Bool)

(assert (=> b!896717 m!833869))

(assert (=> b!896665 d!110913))

(assert (=> d!110897 d!110895))

(declare-fun d!110915 () Bool)

(assert (=> d!110915 (arrayContainsKey!0 (_keys!10121 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!110915 true))

(declare-fun _$60!409 () Unit!30463)

(assert (=> d!110915 (= (choose!13 (_keys!10121 thiss!1181) key!785 (index!37935 lt!404887)) _$60!409)))

(declare-fun bs!25168 () Bool)

(assert (= bs!25168 d!110915))

(assert (=> bs!25168 m!833795))

(assert (=> d!110897 d!110915))

(declare-fun bm!39790 () Bool)

(declare-fun call!39793 () (_ BitVec 32))

(assert (=> bm!39790 (= call!39793 (arrayCountValidKeys!0 (_keys!10121 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25729 (_keys!10121 thiss!1181))))))

(declare-fun b!896726 () Bool)

(declare-fun e!501354 () (_ BitVec 32))

(assert (=> b!896726 (= e!501354 #b00000000000000000000000000000000)))

(declare-fun b!896727 () Bool)

(declare-fun e!501353 () (_ BitVec 32))

(assert (=> b!896727 (= e!501353 call!39793)))

(declare-fun b!896728 () Bool)

(assert (=> b!896728 (= e!501354 e!501353)))

(declare-fun c!94666 () Bool)

(assert (=> b!896728 (= c!94666 (validKeyInArray!0 (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!896729 () Bool)

(assert (=> b!896729 (= e!501353 (bvadd #b00000000000000000000000000000001 call!39793))))

(declare-fun d!110917 () Bool)

(declare-fun lt!404931 () (_ BitVec 32))

(assert (=> d!110917 (and (bvsge lt!404931 #b00000000000000000000000000000000) (bvsle lt!404931 (bvsub (size!25729 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110917 (= lt!404931 e!501354)))

(declare-fun c!94665 () Bool)

(assert (=> d!110917 (= c!94665 (bvsge #b00000000000000000000000000000000 (size!25729 (_keys!10121 thiss!1181))))))

(assert (=> d!110917 (and (bvsle #b00000000000000000000000000000000 (size!25729 (_keys!10121 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25729 (_keys!10121 thiss!1181)) (size!25729 (_keys!10121 thiss!1181))))))

(assert (=> d!110917 (= (arrayCountValidKeys!0 (_keys!10121 thiss!1181) #b00000000000000000000000000000000 (size!25729 (_keys!10121 thiss!1181))) lt!404931)))

(assert (= (and d!110917 c!94665) b!896726))

(assert (= (and d!110917 (not c!94665)) b!896728))

(assert (= (and b!896728 c!94666) b!896729))

(assert (= (and b!896728 (not c!94666)) b!896727))

(assert (= (or b!896729 b!896727) bm!39790))

(declare-fun m!833871 () Bool)

(assert (=> bm!39790 m!833871))

(assert (=> b!896728 m!833827))

(assert (=> b!896728 m!833827))

(assert (=> b!896728 m!833859))

(assert (=> b!896693 d!110917))

(assert (=> d!110901 d!110903))

(declare-fun d!110919 () Bool)

(declare-fun e!501357 () Bool)

(assert (=> d!110919 e!501357))

(declare-fun res!606366 () Bool)

(assert (=> d!110919 (=> res!606366 e!501357)))

(declare-fun lt!404934 () SeekEntryResult!8891)

(assert (=> d!110919 (= res!606366 (not ((_ is Found!8891) lt!404934)))))

(assert (=> d!110919 (= lt!404934 (seekEntry!0 key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(assert (=> d!110919 true))

(declare-fun _$36!357 () Unit!30463)

(assert (=> d!110919 (= (choose!1488 (_keys!10121 thiss!1181) (_values!5379 thiss!1181) (mask!26034 thiss!1181) (extraKeys!5088 thiss!1181) (zeroValue!5192 thiss!1181) (minValue!5192 thiss!1181) key!785) _$36!357)))

(declare-fun b!896732 () Bool)

(assert (=> b!896732 (= e!501357 (inRange!0 (index!37935 lt!404934) (mask!26034 thiss!1181)))))

(assert (= (and d!110919 (not res!606366)) b!896732))

(assert (=> d!110919 m!833803))

(declare-fun m!833873 () Bool)

(assert (=> b!896732 m!833873))

(assert (=> d!110901 d!110919))

(assert (=> d!110901 d!110893))

(declare-fun b!896743 () Bool)

(declare-fun e!501367 () Bool)

(declare-fun call!39796 () Bool)

(assert (=> b!896743 (= e!501367 call!39796)))

(declare-fun b!896744 () Bool)

(declare-fun e!501366 () Bool)

(assert (=> b!896744 (= e!501366 e!501367)))

(declare-fun c!94669 () Bool)

(assert (=> b!896744 (= c!94669 (validKeyInArray!0 (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!896745 () Bool)

(declare-fun e!501368 () Bool)

(assert (=> b!896745 (= e!501368 e!501366)))

(declare-fun res!606374 () Bool)

(assert (=> b!896745 (=> (not res!606374) (not e!501366))))

(declare-fun e!501369 () Bool)

(assert (=> b!896745 (= res!606374 (not e!501369))))

(declare-fun res!606375 () Bool)

(assert (=> b!896745 (=> (not res!606375) (not e!501369))))

(assert (=> b!896745 (= res!606375 (validKeyInArray!0 (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110921 () Bool)

(declare-fun res!606373 () Bool)

(assert (=> d!110921 (=> res!606373 e!501368)))

(assert (=> d!110921 (= res!606373 (bvsge #b00000000000000000000000000000000 (size!25729 (_keys!10121 thiss!1181))))))

(assert (=> d!110921 (= (arrayNoDuplicates!0 (_keys!10121 thiss!1181) #b00000000000000000000000000000000 Nil!17899) e!501368)))

(declare-fun b!896746 () Bool)

(assert (=> b!896746 (= e!501367 call!39796)))

(declare-fun bm!39793 () Bool)

(assert (=> bm!39793 (= call!39796 (arrayNoDuplicates!0 (_keys!10121 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94669 (Cons!17898 (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000) Nil!17899) Nil!17899)))))

(declare-fun b!896747 () Bool)

(declare-fun contains!4390 (List!17902 (_ BitVec 64)) Bool)

(assert (=> b!896747 (= e!501369 (contains!4390 Nil!17899 (select (arr!25276 (_keys!10121 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110921 (not res!606373)) b!896745))

(assert (= (and b!896745 res!606375) b!896747))

(assert (= (and b!896745 res!606374) b!896744))

(assert (= (and b!896744 c!94669) b!896743))

(assert (= (and b!896744 (not c!94669)) b!896746))

(assert (= (or b!896743 b!896746) bm!39793))

(assert (=> b!896744 m!833827))

(assert (=> b!896744 m!833827))

(assert (=> b!896744 m!833859))

(assert (=> b!896745 m!833827))

(assert (=> b!896745 m!833827))

(assert (=> b!896745 m!833859))

(assert (=> bm!39793 m!833827))

(declare-fun m!833875 () Bool)

(assert (=> bm!39793 m!833875))

(assert (=> b!896747 m!833827))

(assert (=> b!896747 m!833827))

(declare-fun m!833877 () Bool)

(assert (=> b!896747 m!833877))

(assert (=> b!896695 d!110921))

(declare-fun b!896760 () Bool)

(declare-fun e!501377 () SeekEntryResult!8891)

(assert (=> b!896760 (= e!501377 (MissingVacant!8891 (index!37936 lt!404916)))))

(declare-fun d!110923 () Bool)

(declare-fun lt!404940 () SeekEntryResult!8891)

(assert (=> d!110923 (and (or ((_ is Undefined!8891) lt!404940) (not ((_ is Found!8891) lt!404940)) (and (bvsge (index!37935 lt!404940) #b00000000000000000000000000000000) (bvslt (index!37935 lt!404940) (size!25729 (_keys!10121 thiss!1181))))) (or ((_ is Undefined!8891) lt!404940) ((_ is Found!8891) lt!404940) (not ((_ is MissingVacant!8891) lt!404940)) (not (= (index!37937 lt!404940) (index!37936 lt!404916))) (and (bvsge (index!37937 lt!404940) #b00000000000000000000000000000000) (bvslt (index!37937 lt!404940) (size!25729 (_keys!10121 thiss!1181))))) (or ((_ is Undefined!8891) lt!404940) (ite ((_ is Found!8891) lt!404940) (= (select (arr!25276 (_keys!10121 thiss!1181)) (index!37935 lt!404940)) key!785) (and ((_ is MissingVacant!8891) lt!404940) (= (index!37937 lt!404940) (index!37936 lt!404916)) (= (select (arr!25276 (_keys!10121 thiss!1181)) (index!37937 lt!404940)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!501376 () SeekEntryResult!8891)

(assert (=> d!110923 (= lt!404940 e!501376)))

(declare-fun c!94678 () Bool)

(assert (=> d!110923 (= c!94678 (bvsge (x!76358 lt!404916) #b01111111111111111111111111111110))))

(declare-fun lt!404939 () (_ BitVec 64))

(assert (=> d!110923 (= lt!404939 (select (arr!25276 (_keys!10121 thiss!1181)) (index!37936 lt!404916)))))

(assert (=> d!110923 (validMask!0 (mask!26034 thiss!1181))))

(assert (=> d!110923 (= (seekKeyOrZeroReturnVacant!0 (x!76358 lt!404916) (index!37936 lt!404916) (index!37936 lt!404916) key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)) lt!404940)))

(declare-fun b!896761 () Bool)

(declare-fun e!501378 () SeekEntryResult!8891)

(assert (=> b!896761 (= e!501376 e!501378)))

(declare-fun c!94677 () Bool)

(assert (=> b!896761 (= c!94677 (= lt!404939 key!785))))

(declare-fun b!896762 () Bool)

(assert (=> b!896762 (= e!501378 (Found!8891 (index!37936 lt!404916)))))

(declare-fun b!896763 () Bool)

(declare-fun c!94676 () Bool)

(assert (=> b!896763 (= c!94676 (= lt!404939 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!896763 (= e!501378 e!501377)))

(declare-fun b!896764 () Bool)

(assert (=> b!896764 (= e!501376 Undefined!8891)))

(declare-fun b!896765 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!896765 (= e!501377 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76358 lt!404916) #b00000000000000000000000000000001) (nextIndex!0 (index!37936 lt!404916) (x!76358 lt!404916) (mask!26034 thiss!1181)) (index!37936 lt!404916) key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(assert (= (and d!110923 c!94678) b!896764))

(assert (= (and d!110923 (not c!94678)) b!896761))

(assert (= (and b!896761 c!94677) b!896762))

(assert (= (and b!896761 (not c!94677)) b!896763))

(assert (= (and b!896763 c!94676) b!896760))

(assert (= (and b!896763 (not c!94676)) b!896765))

(declare-fun m!833879 () Bool)

(assert (=> d!110923 m!833879))

(declare-fun m!833881 () Bool)

(assert (=> d!110923 m!833881))

(assert (=> d!110923 m!833843))

(assert (=> d!110923 m!833793))

(declare-fun m!833883 () Bool)

(assert (=> b!896765 m!833883))

(assert (=> b!896765 m!833883))

(declare-fun m!833885 () Bool)

(assert (=> b!896765 m!833885))

(assert (=> b!896685 d!110923))

(declare-fun d!110925 () Bool)

(assert (=> d!110925 (= (inRange!0 (index!37935 lt!404907) (mask!26034 thiss!1181)) (and (bvsge (index!37935 lt!404907) #b00000000000000000000000000000000) (bvslt (index!37935 lt!404907) (bvadd (mask!26034 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!896668 d!110925))

(declare-fun b!896774 () Bool)

(declare-fun res!606387 () Bool)

(declare-fun e!501381 () Bool)

(assert (=> b!896774 (=> (not res!606387) (not e!501381))))

(assert (=> b!896774 (= res!606387 (and (= (size!25730 (_values!5379 thiss!1181)) (bvadd (mask!26034 thiss!1181) #b00000000000000000000000000000001)) (= (size!25729 (_keys!10121 thiss!1181)) (size!25730 (_values!5379 thiss!1181))) (bvsge (_size!2227 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2227 thiss!1181) (bvadd (mask!26034 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun b!896776 () Bool)

(declare-fun res!606384 () Bool)

(assert (=> b!896776 (=> (not res!606384) (not e!501381))))

(declare-fun size!25733 (LongMapFixedSize!4344) (_ BitVec 32))

(assert (=> b!896776 (= res!606384 (= (size!25733 thiss!1181) (bvadd (_size!2227 thiss!1181) (bvsdiv (bvadd (extraKeys!5088 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!896777 () Bool)

(assert (=> b!896777 (= e!501381 (and (bvsge (extraKeys!5088 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5088 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2227 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!896775 () Bool)

(declare-fun res!606385 () Bool)

(assert (=> b!896775 (=> (not res!606385) (not e!501381))))

(assert (=> b!896775 (= res!606385 (bvsge (size!25733 thiss!1181) (_size!2227 thiss!1181)))))

(declare-fun d!110927 () Bool)

(declare-fun res!606386 () Bool)

(assert (=> d!110927 (=> (not res!606386) (not e!501381))))

(assert (=> d!110927 (= res!606386 (validMask!0 (mask!26034 thiss!1181)))))

(assert (=> d!110927 (= (simpleValid!314 thiss!1181) e!501381)))

(assert (= (and d!110927 res!606386) b!896774))

(assert (= (and b!896774 res!606387) b!896775))

(assert (= (and b!896775 res!606385) b!896776))

(assert (= (and b!896776 res!606384) b!896777))

(declare-fun m!833887 () Bool)

(assert (=> b!896776 m!833887))

(assert (=> b!896775 m!833887))

(assert (=> d!110927 m!833793))

(assert (=> d!110909 d!110927))

(declare-fun b!896796 () Bool)

(declare-fun e!501393 () SeekEntryResult!8891)

(assert (=> b!896796 (= e!501393 (Intermediate!8891 true (toIndex!0 key!785 (mask!26034 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!896797 () Bool)

(declare-fun e!501394 () Bool)

(declare-fun e!501392 () Bool)

(assert (=> b!896797 (= e!501394 e!501392)))

(declare-fun res!606395 () Bool)

(declare-fun lt!404946 () SeekEntryResult!8891)

(assert (=> b!896797 (= res!606395 (and ((_ is Intermediate!8891) lt!404946) (not (undefined!9703 lt!404946)) (bvslt (x!76358 lt!404946) #b01111111111111111111111111111110) (bvsge (x!76358 lt!404946) #b00000000000000000000000000000000) (bvsge (x!76358 lt!404946) #b00000000000000000000000000000000)))))

(assert (=> b!896797 (=> (not res!606395) (not e!501392))))

(declare-fun d!110929 () Bool)

(assert (=> d!110929 e!501394))

(declare-fun c!94685 () Bool)

(assert (=> d!110929 (= c!94685 (and ((_ is Intermediate!8891) lt!404946) (undefined!9703 lt!404946)))))

(assert (=> d!110929 (= lt!404946 e!501393)))

(declare-fun c!94686 () Bool)

(assert (=> d!110929 (= c!94686 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!404945 () (_ BitVec 64))

(assert (=> d!110929 (= lt!404945 (select (arr!25276 (_keys!10121 thiss!1181)) (toIndex!0 key!785 (mask!26034 thiss!1181))))))

(assert (=> d!110929 (validMask!0 (mask!26034 thiss!1181))))

(assert (=> d!110929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26034 thiss!1181)) key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)) lt!404946)))

(declare-fun b!896798 () Bool)

(assert (=> b!896798 (and (bvsge (index!37936 lt!404946) #b00000000000000000000000000000000) (bvslt (index!37936 lt!404946) (size!25729 (_keys!10121 thiss!1181))))))

(declare-fun res!606394 () Bool)

(assert (=> b!896798 (= res!606394 (= (select (arr!25276 (_keys!10121 thiss!1181)) (index!37936 lt!404946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!501395 () Bool)

(assert (=> b!896798 (=> res!606394 e!501395)))

(declare-fun b!896799 () Bool)

(declare-fun e!501396 () SeekEntryResult!8891)

(assert (=> b!896799 (= e!501396 (Intermediate!8891 false (toIndex!0 key!785 (mask!26034 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!896800 () Bool)

(assert (=> b!896800 (= e!501394 (bvsge (x!76358 lt!404946) #b01111111111111111111111111111110))))

(declare-fun b!896801 () Bool)

(assert (=> b!896801 (= e!501393 e!501396)))

(declare-fun c!94687 () Bool)

(assert (=> b!896801 (= c!94687 (or (= lt!404945 key!785) (= (bvadd lt!404945 lt!404945) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!896802 () Bool)

(assert (=> b!896802 (and (bvsge (index!37936 lt!404946) #b00000000000000000000000000000000) (bvslt (index!37936 lt!404946) (size!25729 (_keys!10121 thiss!1181))))))

(assert (=> b!896802 (= e!501395 (= (select (arr!25276 (_keys!10121 thiss!1181)) (index!37936 lt!404946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!896803 () Bool)

(assert (=> b!896803 (and (bvsge (index!37936 lt!404946) #b00000000000000000000000000000000) (bvslt (index!37936 lt!404946) (size!25729 (_keys!10121 thiss!1181))))))

(declare-fun res!606396 () Bool)

(assert (=> b!896803 (= res!606396 (= (select (arr!25276 (_keys!10121 thiss!1181)) (index!37936 lt!404946)) key!785))))

(assert (=> b!896803 (=> res!606396 e!501395)))

(assert (=> b!896803 (= e!501392 e!501395)))

(declare-fun b!896804 () Bool)

(assert (=> b!896804 (= e!501396 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!26034 thiss!1181)) #b00000000000000000000000000000000 (mask!26034 thiss!1181)) key!785 (_keys!10121 thiss!1181) (mask!26034 thiss!1181)))))

(assert (= (and d!110929 c!94686) b!896796))

(assert (= (and d!110929 (not c!94686)) b!896801))

(assert (= (and b!896801 c!94687) b!896799))

(assert (= (and b!896801 (not c!94687)) b!896804))

(assert (= (and d!110929 c!94685) b!896800))

(assert (= (and d!110929 (not c!94685)) b!896797))

(assert (= (and b!896797 res!606395) b!896803))

(assert (= (and b!896803 (not res!606396)) b!896798))

(assert (= (and b!896798 (not res!606394)) b!896802))

(declare-fun m!833889 () Bool)

(assert (=> b!896798 m!833889))

(assert (=> d!110929 m!833839))

(declare-fun m!833891 () Bool)

(assert (=> d!110929 m!833891))

(assert (=> d!110929 m!833793))

(assert (=> b!896804 m!833839))

(declare-fun m!833893 () Bool)

(assert (=> b!896804 m!833893))

(assert (=> b!896804 m!833893))

(declare-fun m!833895 () Bool)

(assert (=> b!896804 m!833895))

(assert (=> b!896802 m!833889))

(assert (=> b!896803 m!833889))

(assert (=> d!110903 d!110929))

(declare-fun d!110931 () Bool)

(declare-fun lt!404952 () (_ BitVec 32))

(declare-fun lt!404951 () (_ BitVec 32))

(assert (=> d!110931 (= lt!404952 (bvmul (bvxor lt!404951 (bvlshr lt!404951 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110931 (= lt!404951 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110931 (and (bvsge (mask!26034 thiss!1181) #b00000000000000000000000000000000) (let ((res!606397 (let ((h!19038 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76375 (bvmul (bvxor h!19038 (bvlshr h!19038 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76375 (bvlshr x!76375 #b00000000000000000000000000001101)) (mask!26034 thiss!1181)))))) (and (bvslt res!606397 (bvadd (mask!26034 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!606397 #b00000000000000000000000000000000))))))

(assert (=> d!110931 (= (toIndex!0 key!785 (mask!26034 thiss!1181)) (bvand (bvxor lt!404952 (bvlshr lt!404952 #b00000000000000000000000000001101)) (mask!26034 thiss!1181)))))

(assert (=> d!110903 d!110931))

(assert (=> d!110903 d!110893))

(declare-fun b!896806 () Bool)

(declare-fun e!501398 () Bool)

(assert (=> b!896806 (= e!501398 tp_is_empty!18291)))

(declare-fun mapIsEmpty!29068 () Bool)

(declare-fun mapRes!29068 () Bool)

(assert (=> mapIsEmpty!29068 mapRes!29068))

(declare-fun b!896805 () Bool)

(declare-fun e!501397 () Bool)

(assert (=> b!896805 (= e!501397 tp_is_empty!18291)))

(declare-fun mapNonEmpty!29068 () Bool)

(declare-fun tp!55939 () Bool)

(assert (=> mapNonEmpty!29068 (= mapRes!29068 (and tp!55939 e!501397))))

(declare-fun mapValue!29068 () ValueCell!8664)

(declare-fun mapRest!29068 () (Array (_ BitVec 32) ValueCell!8664))

(declare-fun mapKey!29068 () (_ BitVec 32))

(assert (=> mapNonEmpty!29068 (= mapRest!29067 (store mapRest!29068 mapKey!29068 mapValue!29068))))

(declare-fun condMapEmpty!29068 () Bool)

(declare-fun mapDefault!29068 () ValueCell!8664)

(assert (=> mapNonEmpty!29067 (= condMapEmpty!29068 (= mapRest!29067 ((as const (Array (_ BitVec 32) ValueCell!8664)) mapDefault!29068)))))

(assert (=> mapNonEmpty!29067 (= tp!55938 (and e!501398 mapRes!29068))))

(assert (= (and mapNonEmpty!29067 condMapEmpty!29068) mapIsEmpty!29068))

(assert (= (and mapNonEmpty!29067 (not condMapEmpty!29068)) mapNonEmpty!29068))

(assert (= (and mapNonEmpty!29068 ((_ is ValueCellFull!8664) mapValue!29068)) b!896805))

(assert (= (and mapNonEmpty!29067 ((_ is ValueCellFull!8664) mapDefault!29068)) b!896806))

(declare-fun m!833897 () Bool)

(assert (=> mapNonEmpty!29068 m!833897))

(check-sat (not bm!39793) (not b!896804) (not bm!39790) (not b!896765) (not d!110927) (not mapNonEmpty!29068) (not d!110915) (not d!110929) (not b!896728) (not b!896747) (not b_next!15963) (not b!896713) (not b!896775) (not bm!39787) (not b!896732) (not b!896717) (not b!896714) (not b!896745) (not b!896744) (not d!110923) (not b!896776) b_and!26273 (not d!110919) tp_is_empty!18291)
(check-sat b_and!26273 (not b_next!15963))
