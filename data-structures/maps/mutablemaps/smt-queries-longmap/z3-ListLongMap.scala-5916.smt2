; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76746 () Bool)

(assert start!76746)

(declare-fun b!897772 () Bool)

(declare-fun b_free!15999 () Bool)

(declare-fun b_next!15999 () Bool)

(assert (=> b!897772 (= b_free!15999 (not b_next!15999))))

(declare-fun tp!56058 () Bool)

(declare-fun b_and!26309 () Bool)

(assert (=> b!897772 (= tp!56058 b_and!26309)))

(declare-fun b!897764 () Bool)

(declare-fun res!606889 () Bool)

(declare-fun e!502136 () Bool)

(assert (=> b!897764 (=> res!606889 e!502136)))

(declare-datatypes ((array!52672 0))(
  ( (array!52673 (arr!25312 (Array (_ BitVec 32) (_ BitVec 64))) (size!25768 (_ BitVec 32))) )
))
(declare-datatypes ((V!29401 0))(
  ( (V!29402 (val!9214 Int)) )
))
(declare-datatypes ((ValueCell!8682 0))(
  ( (ValueCellFull!8682 (v!11701 V!29401)) (EmptyCell!8682) )
))
(declare-datatypes ((array!52674 0))(
  ( (array!52675 (arr!25313 (Array (_ BitVec 32) ValueCell!8682)) (size!25769 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4380 0))(
  ( (LongMapFixedSize!4381 (defaultEntry!5402 Int) (mask!26105 (_ BitVec 32)) (extraKeys!5115 (_ BitVec 32)) (zeroValue!5219 V!29401) (minValue!5219 V!29401) (_size!2245 (_ BitVec 32)) (_keys!10165 array!52672) (_values!5406 array!52674) (_vacant!2245 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4380)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52672 (_ BitVec 32)) Bool)

(assert (=> b!897764 (= res!606889 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10165 thiss!1181) (mask!26105 thiss!1181))))))

(declare-fun b!897765 () Bool)

(declare-fun res!606887 () Bool)

(declare-fun e!502141 () Bool)

(assert (=> b!897765 (=> (not res!606887) (not e!502141))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!897765 (= res!606887 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897766 () Bool)

(declare-fun e!502138 () Bool)

(assert (=> b!897766 (= e!502141 (not e!502138))))

(declare-fun res!606885 () Bool)

(assert (=> b!897766 (=> res!606885 e!502138)))

(declare-datatypes ((SeekEntryResult!8905 0))(
  ( (MissingZero!8905 (index!37990 (_ BitVec 32))) (Found!8905 (index!37991 (_ BitVec 32))) (Intermediate!8905 (undefined!9717 Bool) (index!37992 (_ BitVec 32)) (x!76495 (_ BitVec 32))) (Undefined!8905) (MissingVacant!8905 (index!37993 (_ BitVec 32))) )
))
(declare-fun lt!405294 () SeekEntryResult!8905)

(get-info :version)

(assert (=> b!897766 (= res!606885 (not ((_ is Found!8905) lt!405294)))))

(declare-fun e!502142 () Bool)

(assert (=> b!897766 e!502142))

(declare-fun res!606886 () Bool)

(assert (=> b!897766 (=> res!606886 e!502142)))

(assert (=> b!897766 (= res!606886 (not ((_ is Found!8905) lt!405294)))))

(declare-datatypes ((Unit!30491 0))(
  ( (Unit!30492) )
))
(declare-fun lt!405292 () Unit!30491)

(declare-fun lemmaSeekEntryGivesInRangeIndex!91 (array!52672 array!52674 (_ BitVec 32) (_ BitVec 32) V!29401 V!29401 (_ BitVec 64)) Unit!30491)

(assert (=> b!897766 (= lt!405292 (lemmaSeekEntryGivesInRangeIndex!91 (_keys!10165 thiss!1181) (_values!5406 thiss!1181) (mask!26105 thiss!1181) (extraKeys!5115 thiss!1181) (zeroValue!5219 thiss!1181) (minValue!5219 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52672 (_ BitVec 32)) SeekEntryResult!8905)

(assert (=> b!897766 (= lt!405294 (seekEntry!0 key!785 (_keys!10165 thiss!1181) (mask!26105 thiss!1181)))))

(declare-fun b!897767 () Bool)

(assert (=> b!897767 (= e!502136 (and (bvsge (index!37991 lt!405294) #b00000000000000000000000000000000) (bvslt (index!37991 lt!405294) (size!25768 (_keys!10165 thiss!1181)))))))

(declare-fun b!897768 () Bool)

(assert (=> b!897768 (= e!502138 e!502136)))

(declare-fun res!606892 () Bool)

(assert (=> b!897768 (=> res!606892 e!502136)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897768 (= res!606892 (not (validMask!0 (mask!26105 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897768 (arrayContainsKey!0 (_keys!10165 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405293 () Unit!30491)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52672 (_ BitVec 64) (_ BitVec 32)) Unit!30491)

(assert (=> b!897768 (= lt!405293 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10165 thiss!1181) key!785 (index!37991 lt!405294)))))

(declare-fun b!897769 () Bool)

(declare-fun e!502144 () Bool)

(declare-fun e!502143 () Bool)

(declare-fun mapRes!29136 () Bool)

(assert (=> b!897769 (= e!502144 (and e!502143 mapRes!29136))))

(declare-fun condMapEmpty!29136 () Bool)

(declare-fun mapDefault!29136 () ValueCell!8682)

(assert (=> b!897769 (= condMapEmpty!29136 (= (arr!25313 (_values!5406 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8682)) mapDefault!29136)))))

(declare-fun b!897770 () Bool)

(declare-fun res!606890 () Bool)

(assert (=> b!897770 (=> res!606890 e!502136)))

(assert (=> b!897770 (= res!606890 (or (not (= (size!25769 (_values!5406 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26105 thiss!1181)))) (not (= (size!25768 (_keys!10165 thiss!1181)) (size!25769 (_values!5406 thiss!1181)))) (bvslt (mask!26105 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5115 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5115 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!897771 () Bool)

(declare-fun e!502139 () Bool)

(declare-fun tp_is_empty!18327 () Bool)

(assert (=> b!897771 (= e!502139 tp_is_empty!18327)))

(declare-fun b!897773 () Bool)

(assert (=> b!897773 (= e!502143 tp_is_empty!18327)))

(declare-fun mapNonEmpty!29136 () Bool)

(declare-fun tp!56057 () Bool)

(assert (=> mapNonEmpty!29136 (= mapRes!29136 (and tp!56057 e!502139))))

(declare-fun mapValue!29136 () ValueCell!8682)

(declare-fun mapRest!29136 () (Array (_ BitVec 32) ValueCell!8682))

(declare-fun mapKey!29136 () (_ BitVec 32))

(assert (=> mapNonEmpty!29136 (= (arr!25313 (_values!5406 thiss!1181)) (store mapRest!29136 mapKey!29136 mapValue!29136))))

(declare-fun mapIsEmpty!29136 () Bool)

(assert (=> mapIsEmpty!29136 mapRes!29136))

(declare-fun b!897774 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897774 (= e!502142 (inRange!0 (index!37991 lt!405294) (mask!26105 thiss!1181)))))

(declare-fun b!897775 () Bool)

(declare-fun res!606888 () Bool)

(assert (=> b!897775 (=> res!606888 e!502136)))

(declare-datatypes ((List!17910 0))(
  ( (Nil!17907) (Cons!17906 (h!19048 (_ BitVec 64)) (t!25257 List!17910)) )
))
(declare-fun arrayNoDuplicates!0 (array!52672 (_ BitVec 32) List!17910) Bool)

(assert (=> b!897775 (= res!606888 (not (arrayNoDuplicates!0 (_keys!10165 thiss!1181) #b00000000000000000000000000000000 Nil!17907)))))

(declare-fun res!606891 () Bool)

(assert (=> start!76746 (=> (not res!606891) (not e!502141))))

(declare-fun valid!1672 (LongMapFixedSize!4380) Bool)

(assert (=> start!76746 (= res!606891 (valid!1672 thiss!1181))))

(assert (=> start!76746 e!502141))

(declare-fun e!502137 () Bool)

(assert (=> start!76746 e!502137))

(assert (=> start!76746 true))

(declare-fun array_inv!19840 (array!52672) Bool)

(declare-fun array_inv!19841 (array!52674) Bool)

(assert (=> b!897772 (= e!502137 (and tp!56058 tp_is_empty!18327 (array_inv!19840 (_keys!10165 thiss!1181)) (array_inv!19841 (_values!5406 thiss!1181)) e!502144))))

(assert (= (and start!76746 res!606891) b!897765))

(assert (= (and b!897765 res!606887) b!897766))

(assert (= (and b!897766 (not res!606886)) b!897774))

(assert (= (and b!897766 (not res!606885)) b!897768))

(assert (= (and b!897768 (not res!606892)) b!897770))

(assert (= (and b!897770 (not res!606890)) b!897764))

(assert (= (and b!897764 (not res!606889)) b!897775))

(assert (= (and b!897775 (not res!606888)) b!897767))

(assert (= (and b!897769 condMapEmpty!29136) mapIsEmpty!29136))

(assert (= (and b!897769 (not condMapEmpty!29136)) mapNonEmpty!29136))

(assert (= (and mapNonEmpty!29136 ((_ is ValueCellFull!8682) mapValue!29136)) b!897771))

(assert (= (and b!897769 ((_ is ValueCellFull!8682) mapDefault!29136)) b!897773))

(assert (= b!897772 b!897769))

(assert (= start!76746 b!897772))

(declare-fun m!834493 () Bool)

(assert (=> b!897768 m!834493))

(declare-fun m!834495 () Bool)

(assert (=> b!897768 m!834495))

(declare-fun m!834497 () Bool)

(assert (=> b!897768 m!834497))

(declare-fun m!834499 () Bool)

(assert (=> b!897766 m!834499))

(declare-fun m!834501 () Bool)

(assert (=> b!897766 m!834501))

(declare-fun m!834503 () Bool)

(assert (=> b!897772 m!834503))

(declare-fun m!834505 () Bool)

(assert (=> b!897772 m!834505))

(declare-fun m!834507 () Bool)

(assert (=> start!76746 m!834507))

(declare-fun m!834509 () Bool)

(assert (=> b!897774 m!834509))

(declare-fun m!834511 () Bool)

(assert (=> b!897775 m!834511))

(declare-fun m!834513 () Bool)

(assert (=> mapNonEmpty!29136 m!834513))

(declare-fun m!834515 () Bool)

(assert (=> b!897764 m!834515))

(check-sat (not start!76746) (not mapNonEmpty!29136) (not b!897768) (not b_next!15999) (not b!897774) (not b!897772) tp_is_empty!18327 (not b!897775) (not b!897764) (not b!897766) b_and!26309)
(check-sat b_and!26309 (not b_next!15999))
(get-model)

(declare-fun d!111085 () Bool)

(assert (=> d!111085 (= (inRange!0 (index!37991 lt!405294) (mask!26105 thiss!1181)) (and (bvsge (index!37991 lt!405294) #b00000000000000000000000000000000) (bvslt (index!37991 lt!405294) (bvadd (mask!26105 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!897774 d!111085))

(declare-fun b!897820 () Bool)

(declare-fun e!502179 () Bool)

(declare-fun e!502180 () Bool)

(assert (=> b!897820 (= e!502179 e!502180)))

(declare-fun lt!405311 () (_ BitVec 64))

(assert (=> b!897820 (= lt!405311 (select (arr!25312 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405310 () Unit!30491)

(assert (=> b!897820 (= lt!405310 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10165 thiss!1181) lt!405311 #b00000000000000000000000000000000))))

(assert (=> b!897820 (arrayContainsKey!0 (_keys!10165 thiss!1181) lt!405311 #b00000000000000000000000000000000)))

(declare-fun lt!405312 () Unit!30491)

(assert (=> b!897820 (= lt!405312 lt!405310)))

(declare-fun res!606921 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52672 (_ BitVec 32)) SeekEntryResult!8905)

(assert (=> b!897820 (= res!606921 (= (seekEntryOrOpen!0 (select (arr!25312 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000) (_keys!10165 thiss!1181) (mask!26105 thiss!1181)) (Found!8905 #b00000000000000000000000000000000)))))

(assert (=> b!897820 (=> (not res!606921) (not e!502180))))

(declare-fun bm!39823 () Bool)

(declare-fun call!39826 () Bool)

(assert (=> bm!39823 (= call!39826 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10165 thiss!1181) (mask!26105 thiss!1181)))))

(declare-fun d!111087 () Bool)

(declare-fun res!606922 () Bool)

(declare-fun e!502178 () Bool)

(assert (=> d!111087 (=> res!606922 e!502178)))

(assert (=> d!111087 (= res!606922 (bvsge #b00000000000000000000000000000000 (size!25768 (_keys!10165 thiss!1181))))))

(assert (=> d!111087 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10165 thiss!1181) (mask!26105 thiss!1181)) e!502178)))

(declare-fun b!897821 () Bool)

(assert (=> b!897821 (= e!502180 call!39826)))

(declare-fun b!897822 () Bool)

(assert (=> b!897822 (= e!502178 e!502179)))

(declare-fun c!94804 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!897822 (= c!94804 (validKeyInArray!0 (select (arr!25312 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897823 () Bool)

(assert (=> b!897823 (= e!502179 call!39826)))

(assert (= (and d!111087 (not res!606922)) b!897822))

(assert (= (and b!897822 c!94804) b!897820))

(assert (= (and b!897822 (not c!94804)) b!897823))

(assert (= (and b!897820 res!606921) b!897821))

(assert (= (or b!897821 b!897823) bm!39823))

(declare-fun m!834541 () Bool)

(assert (=> b!897820 m!834541))

(declare-fun m!834543 () Bool)

(assert (=> b!897820 m!834543))

(declare-fun m!834545 () Bool)

(assert (=> b!897820 m!834545))

(assert (=> b!897820 m!834541))

(declare-fun m!834547 () Bool)

(assert (=> b!897820 m!834547))

(declare-fun m!834549 () Bool)

(assert (=> bm!39823 m!834549))

(assert (=> b!897822 m!834541))

(assert (=> b!897822 m!834541))

(declare-fun m!834551 () Bool)

(assert (=> b!897822 m!834551))

(assert (=> b!897764 d!111087))

(declare-fun d!111089 () Bool)

(assert (=> d!111089 (= (validMask!0 (mask!26105 thiss!1181)) (and (or (= (mask!26105 thiss!1181) #b00000000000000000000000000000111) (= (mask!26105 thiss!1181) #b00000000000000000000000000001111) (= (mask!26105 thiss!1181) #b00000000000000000000000000011111) (= (mask!26105 thiss!1181) #b00000000000000000000000000111111) (= (mask!26105 thiss!1181) #b00000000000000000000000001111111) (= (mask!26105 thiss!1181) #b00000000000000000000000011111111) (= (mask!26105 thiss!1181) #b00000000000000000000000111111111) (= (mask!26105 thiss!1181) #b00000000000000000000001111111111) (= (mask!26105 thiss!1181) #b00000000000000000000011111111111) (= (mask!26105 thiss!1181) #b00000000000000000000111111111111) (= (mask!26105 thiss!1181) #b00000000000000000001111111111111) (= (mask!26105 thiss!1181) #b00000000000000000011111111111111) (= (mask!26105 thiss!1181) #b00000000000000000111111111111111) (= (mask!26105 thiss!1181) #b00000000000000001111111111111111) (= (mask!26105 thiss!1181) #b00000000000000011111111111111111) (= (mask!26105 thiss!1181) #b00000000000000111111111111111111) (= (mask!26105 thiss!1181) #b00000000000001111111111111111111) (= (mask!26105 thiss!1181) #b00000000000011111111111111111111) (= (mask!26105 thiss!1181) #b00000000000111111111111111111111) (= (mask!26105 thiss!1181) #b00000000001111111111111111111111) (= (mask!26105 thiss!1181) #b00000000011111111111111111111111) (= (mask!26105 thiss!1181) #b00000000111111111111111111111111) (= (mask!26105 thiss!1181) #b00000001111111111111111111111111) (= (mask!26105 thiss!1181) #b00000011111111111111111111111111) (= (mask!26105 thiss!1181) #b00000111111111111111111111111111) (= (mask!26105 thiss!1181) #b00001111111111111111111111111111) (= (mask!26105 thiss!1181) #b00011111111111111111111111111111) (= (mask!26105 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26105 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!897768 d!111089))

(declare-fun d!111091 () Bool)

(declare-fun res!606927 () Bool)

(declare-fun e!502185 () Bool)

(assert (=> d!111091 (=> res!606927 e!502185)))

(assert (=> d!111091 (= res!606927 (= (select (arr!25312 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111091 (= (arrayContainsKey!0 (_keys!10165 thiss!1181) key!785 #b00000000000000000000000000000000) e!502185)))

(declare-fun b!897828 () Bool)

(declare-fun e!502186 () Bool)

(assert (=> b!897828 (= e!502185 e!502186)))

(declare-fun res!606928 () Bool)

(assert (=> b!897828 (=> (not res!606928) (not e!502186))))

(assert (=> b!897828 (= res!606928 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25768 (_keys!10165 thiss!1181))))))

(declare-fun b!897829 () Bool)

(assert (=> b!897829 (= e!502186 (arrayContainsKey!0 (_keys!10165 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111091 (not res!606927)) b!897828))

(assert (= (and b!897828 res!606928) b!897829))

(assert (=> d!111091 m!834541))

(declare-fun m!834553 () Bool)

(assert (=> b!897829 m!834553))

(assert (=> b!897768 d!111091))

(declare-fun d!111093 () Bool)

(assert (=> d!111093 (arrayContainsKey!0 (_keys!10165 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405315 () Unit!30491)

(declare-fun choose!13 (array!52672 (_ BitVec 64) (_ BitVec 32)) Unit!30491)

(assert (=> d!111093 (= lt!405315 (choose!13 (_keys!10165 thiss!1181) key!785 (index!37991 lt!405294)))))

(assert (=> d!111093 (bvsge (index!37991 lt!405294) #b00000000000000000000000000000000)))

(assert (=> d!111093 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10165 thiss!1181) key!785 (index!37991 lt!405294)) lt!405315)))

(declare-fun bs!25194 () Bool)

(assert (= bs!25194 d!111093))

(assert (=> bs!25194 m!834495))

(declare-fun m!834555 () Bool)

(assert (=> bs!25194 m!834555))

(assert (=> b!897768 d!111093))

(declare-fun b!897840 () Bool)

(declare-fun e!502196 () Bool)

(declare-fun contains!4394 (List!17910 (_ BitVec 64)) Bool)

(assert (=> b!897840 (= e!502196 (contains!4394 Nil!17907 (select (arr!25312 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!111095 () Bool)

(declare-fun res!606935 () Bool)

(declare-fun e!502195 () Bool)

(assert (=> d!111095 (=> res!606935 e!502195)))

(assert (=> d!111095 (= res!606935 (bvsge #b00000000000000000000000000000000 (size!25768 (_keys!10165 thiss!1181))))))

(assert (=> d!111095 (= (arrayNoDuplicates!0 (_keys!10165 thiss!1181) #b00000000000000000000000000000000 Nil!17907) e!502195)))

(declare-fun b!897841 () Bool)

(declare-fun e!502198 () Bool)

(assert (=> b!897841 (= e!502195 e!502198)))

(declare-fun res!606937 () Bool)

(assert (=> b!897841 (=> (not res!606937) (not e!502198))))

(assert (=> b!897841 (= res!606937 (not e!502196))))

(declare-fun res!606936 () Bool)

(assert (=> b!897841 (=> (not res!606936) (not e!502196))))

(assert (=> b!897841 (= res!606936 (validKeyInArray!0 (select (arr!25312 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897842 () Bool)

(declare-fun e!502197 () Bool)

(declare-fun call!39829 () Bool)

(assert (=> b!897842 (= e!502197 call!39829)))

(declare-fun b!897843 () Bool)

(assert (=> b!897843 (= e!502198 e!502197)))

(declare-fun c!94807 () Bool)

(assert (=> b!897843 (= c!94807 (validKeyInArray!0 (select (arr!25312 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897844 () Bool)

(assert (=> b!897844 (= e!502197 call!39829)))

(declare-fun bm!39826 () Bool)

(assert (=> bm!39826 (= call!39829 (arrayNoDuplicates!0 (_keys!10165 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94807 (Cons!17906 (select (arr!25312 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000) Nil!17907) Nil!17907)))))

(assert (= (and d!111095 (not res!606935)) b!897841))

(assert (= (and b!897841 res!606936) b!897840))

(assert (= (and b!897841 res!606937) b!897843))

(assert (= (and b!897843 c!94807) b!897844))

(assert (= (and b!897843 (not c!94807)) b!897842))

(assert (= (or b!897844 b!897842) bm!39826))

(assert (=> b!897840 m!834541))

(assert (=> b!897840 m!834541))

(declare-fun m!834557 () Bool)

(assert (=> b!897840 m!834557))

(assert (=> b!897841 m!834541))

(assert (=> b!897841 m!834541))

(assert (=> b!897841 m!834551))

(assert (=> b!897843 m!834541))

(assert (=> b!897843 m!834541))

(assert (=> b!897843 m!834551))

(assert (=> bm!39826 m!834541))

(declare-fun m!834559 () Bool)

(assert (=> bm!39826 m!834559))

(assert (=> b!897775 d!111095))

(declare-fun d!111097 () Bool)

(declare-fun res!606944 () Bool)

(declare-fun e!502201 () Bool)

(assert (=> d!111097 (=> (not res!606944) (not e!502201))))

(declare-fun simpleValid!320 (LongMapFixedSize!4380) Bool)

(assert (=> d!111097 (= res!606944 (simpleValid!320 thiss!1181))))

(assert (=> d!111097 (= (valid!1672 thiss!1181) e!502201)))

(declare-fun b!897851 () Bool)

(declare-fun res!606945 () Bool)

(assert (=> b!897851 (=> (not res!606945) (not e!502201))))

(declare-fun arrayCountValidKeys!0 (array!52672 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!897851 (= res!606945 (= (arrayCountValidKeys!0 (_keys!10165 thiss!1181) #b00000000000000000000000000000000 (size!25768 (_keys!10165 thiss!1181))) (_size!2245 thiss!1181)))))

(declare-fun b!897852 () Bool)

(declare-fun res!606946 () Bool)

(assert (=> b!897852 (=> (not res!606946) (not e!502201))))

(assert (=> b!897852 (= res!606946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10165 thiss!1181) (mask!26105 thiss!1181)))))

(declare-fun b!897853 () Bool)

(assert (=> b!897853 (= e!502201 (arrayNoDuplicates!0 (_keys!10165 thiss!1181) #b00000000000000000000000000000000 Nil!17907))))

(assert (= (and d!111097 res!606944) b!897851))

(assert (= (and b!897851 res!606945) b!897852))

(assert (= (and b!897852 res!606946) b!897853))

(declare-fun m!834561 () Bool)

(assert (=> d!111097 m!834561))

(declare-fun m!834563 () Bool)

(assert (=> b!897851 m!834563))

(assert (=> b!897852 m!834515))

(assert (=> b!897853 m!834511))

(assert (=> start!76746 d!111097))

(declare-fun d!111099 () Bool)

(declare-fun e!502204 () Bool)

(assert (=> d!111099 e!502204))

(declare-fun res!606949 () Bool)

(assert (=> d!111099 (=> res!606949 e!502204)))

(declare-fun lt!405321 () SeekEntryResult!8905)

(assert (=> d!111099 (= res!606949 (not ((_ is Found!8905) lt!405321)))))

(assert (=> d!111099 (= lt!405321 (seekEntry!0 key!785 (_keys!10165 thiss!1181) (mask!26105 thiss!1181)))))

(declare-fun lt!405320 () Unit!30491)

(declare-fun choose!1494 (array!52672 array!52674 (_ BitVec 32) (_ BitVec 32) V!29401 V!29401 (_ BitVec 64)) Unit!30491)

(assert (=> d!111099 (= lt!405320 (choose!1494 (_keys!10165 thiss!1181) (_values!5406 thiss!1181) (mask!26105 thiss!1181) (extraKeys!5115 thiss!1181) (zeroValue!5219 thiss!1181) (minValue!5219 thiss!1181) key!785))))

(assert (=> d!111099 (validMask!0 (mask!26105 thiss!1181))))

(assert (=> d!111099 (= (lemmaSeekEntryGivesInRangeIndex!91 (_keys!10165 thiss!1181) (_values!5406 thiss!1181) (mask!26105 thiss!1181) (extraKeys!5115 thiss!1181) (zeroValue!5219 thiss!1181) (minValue!5219 thiss!1181) key!785) lt!405320)))

(declare-fun b!897856 () Bool)

(assert (=> b!897856 (= e!502204 (inRange!0 (index!37991 lt!405321) (mask!26105 thiss!1181)))))

(assert (= (and d!111099 (not res!606949)) b!897856))

(assert (=> d!111099 m!834501))

(declare-fun m!834565 () Bool)

(assert (=> d!111099 m!834565))

(assert (=> d!111099 m!834493))

(declare-fun m!834567 () Bool)

(assert (=> b!897856 m!834567))

(assert (=> b!897766 d!111099))

(declare-fun b!897869 () Bool)

(declare-fun e!502211 () SeekEntryResult!8905)

(assert (=> b!897869 (= e!502211 Undefined!8905)))

(declare-fun b!897870 () Bool)

(declare-fun e!502213 () SeekEntryResult!8905)

(declare-fun lt!405331 () SeekEntryResult!8905)

(assert (=> b!897870 (= e!502213 (Found!8905 (index!37992 lt!405331)))))

(declare-fun b!897871 () Bool)

(assert (=> b!897871 (= e!502211 e!502213)))

(declare-fun lt!405332 () (_ BitVec 64))

(assert (=> b!897871 (= lt!405332 (select (arr!25312 (_keys!10165 thiss!1181)) (index!37992 lt!405331)))))

(declare-fun c!94816 () Bool)

(assert (=> b!897871 (= c!94816 (= lt!405332 key!785))))

(declare-fun d!111101 () Bool)

(declare-fun lt!405330 () SeekEntryResult!8905)

(assert (=> d!111101 (and (or ((_ is MissingVacant!8905) lt!405330) (not ((_ is Found!8905) lt!405330)) (and (bvsge (index!37991 lt!405330) #b00000000000000000000000000000000) (bvslt (index!37991 lt!405330) (size!25768 (_keys!10165 thiss!1181))))) (not ((_ is MissingVacant!8905) lt!405330)) (or (not ((_ is Found!8905) lt!405330)) (= (select (arr!25312 (_keys!10165 thiss!1181)) (index!37991 lt!405330)) key!785)))))

(assert (=> d!111101 (= lt!405330 e!502211)))

(declare-fun c!94814 () Bool)

(assert (=> d!111101 (= c!94814 (and ((_ is Intermediate!8905) lt!405331) (undefined!9717 lt!405331)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52672 (_ BitVec 32)) SeekEntryResult!8905)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111101 (= lt!405331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26105 thiss!1181)) key!785 (_keys!10165 thiss!1181) (mask!26105 thiss!1181)))))

(assert (=> d!111101 (validMask!0 (mask!26105 thiss!1181))))

(assert (=> d!111101 (= (seekEntry!0 key!785 (_keys!10165 thiss!1181) (mask!26105 thiss!1181)) lt!405330)))

(declare-fun b!897872 () Bool)

(declare-fun c!94815 () Bool)

(assert (=> b!897872 (= c!94815 (= lt!405332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!502212 () SeekEntryResult!8905)

(assert (=> b!897872 (= e!502213 e!502212)))

(declare-fun b!897873 () Bool)

(assert (=> b!897873 (= e!502212 (MissingZero!8905 (index!37992 lt!405331)))))

(declare-fun b!897874 () Bool)

(declare-fun lt!405333 () SeekEntryResult!8905)

(assert (=> b!897874 (= e!502212 (ite ((_ is MissingVacant!8905) lt!405333) (MissingZero!8905 (index!37993 lt!405333)) lt!405333))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52672 (_ BitVec 32)) SeekEntryResult!8905)

(assert (=> b!897874 (= lt!405333 (seekKeyOrZeroReturnVacant!0 (x!76495 lt!405331) (index!37992 lt!405331) (index!37992 lt!405331) key!785 (_keys!10165 thiss!1181) (mask!26105 thiss!1181)))))

(assert (= (and d!111101 c!94814) b!897869))

(assert (= (and d!111101 (not c!94814)) b!897871))

(assert (= (and b!897871 c!94816) b!897870))

(assert (= (and b!897871 (not c!94816)) b!897872))

(assert (= (and b!897872 c!94815) b!897873))

(assert (= (and b!897872 (not c!94815)) b!897874))

(declare-fun m!834569 () Bool)

(assert (=> b!897871 m!834569))

(declare-fun m!834571 () Bool)

(assert (=> d!111101 m!834571))

(declare-fun m!834573 () Bool)

(assert (=> d!111101 m!834573))

(assert (=> d!111101 m!834573))

(declare-fun m!834575 () Bool)

(assert (=> d!111101 m!834575))

(assert (=> d!111101 m!834493))

(declare-fun m!834577 () Bool)

(assert (=> b!897874 m!834577))

(assert (=> b!897766 d!111101))

(declare-fun d!111103 () Bool)

(assert (=> d!111103 (= (array_inv!19840 (_keys!10165 thiss!1181)) (bvsge (size!25768 (_keys!10165 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897772 d!111103))

(declare-fun d!111105 () Bool)

(assert (=> d!111105 (= (array_inv!19841 (_values!5406 thiss!1181)) (bvsge (size!25769 (_values!5406 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897772 d!111105))

(declare-fun mapIsEmpty!29142 () Bool)

(declare-fun mapRes!29142 () Bool)

(assert (=> mapIsEmpty!29142 mapRes!29142))

(declare-fun mapNonEmpty!29142 () Bool)

(declare-fun tp!56067 () Bool)

(declare-fun e!502219 () Bool)

(assert (=> mapNonEmpty!29142 (= mapRes!29142 (and tp!56067 e!502219))))

(declare-fun mapValue!29142 () ValueCell!8682)

(declare-fun mapRest!29142 () (Array (_ BitVec 32) ValueCell!8682))

(declare-fun mapKey!29142 () (_ BitVec 32))

(assert (=> mapNonEmpty!29142 (= mapRest!29136 (store mapRest!29142 mapKey!29142 mapValue!29142))))

(declare-fun b!897881 () Bool)

(assert (=> b!897881 (= e!502219 tp_is_empty!18327)))

(declare-fun b!897882 () Bool)

(declare-fun e!502218 () Bool)

(assert (=> b!897882 (= e!502218 tp_is_empty!18327)))

(declare-fun condMapEmpty!29142 () Bool)

(declare-fun mapDefault!29142 () ValueCell!8682)

(assert (=> mapNonEmpty!29136 (= condMapEmpty!29142 (= mapRest!29136 ((as const (Array (_ BitVec 32) ValueCell!8682)) mapDefault!29142)))))

(assert (=> mapNonEmpty!29136 (= tp!56057 (and e!502218 mapRes!29142))))

(assert (= (and mapNonEmpty!29136 condMapEmpty!29142) mapIsEmpty!29142))

(assert (= (and mapNonEmpty!29136 (not condMapEmpty!29142)) mapNonEmpty!29142))

(assert (= (and mapNonEmpty!29142 ((_ is ValueCellFull!8682) mapValue!29142)) b!897881))

(assert (= (and mapNonEmpty!29136 ((_ is ValueCellFull!8682) mapDefault!29142)) b!897882))

(declare-fun m!834579 () Bool)

(assert (=> mapNonEmpty!29142 m!834579))

(check-sat (not bm!39823) (not b!897856) (not d!111097) (not b!897841) tp_is_empty!18327 (not b!897820) (not b!897840) (not d!111099) (not b!897822) (not bm!39826) (not b!897852) (not mapNonEmpty!29142) (not b!897874) (not b!897851) (not b_next!15999) (not b!897843) (not d!111093) b_and!26309 (not b!897829) (not b!897853) (not d!111101))
(check-sat b_and!26309 (not b_next!15999))
