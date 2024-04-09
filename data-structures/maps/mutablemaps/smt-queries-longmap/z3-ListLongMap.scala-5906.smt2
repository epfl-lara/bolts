; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76420 () Bool)

(assert start!76420)

(declare-fun b!895953 () Bool)

(declare-fun b_free!15939 () Bool)

(declare-fun b_next!15939 () Bool)

(assert (=> b!895953 (= b_free!15939 (not b_next!15939))))

(declare-fun tp!55843 () Bool)

(declare-fun b_and!26249 () Bool)

(assert (=> b!895953 (= tp!55843 b_and!26249)))

(declare-fun b!895952 () Bool)

(declare-fun e!500756 () Bool)

(declare-fun tp_is_empty!18267 () Bool)

(assert (=> b!895952 (= e!500756 tp_is_empty!18267)))

(declare-fun mapIsEmpty!29011 () Bool)

(declare-fun mapRes!29011 () Bool)

(assert (=> mapIsEmpty!29011 mapRes!29011))

(declare-fun mapNonEmpty!29011 () Bool)

(declare-fun tp!55842 () Bool)

(assert (=> mapNonEmpty!29011 (= mapRes!29011 (and tp!55842 e!500756))))

(declare-datatypes ((V!29321 0))(
  ( (V!29322 (val!9184 Int)) )
))
(declare-datatypes ((ValueCell!8652 0))(
  ( (ValueCellFull!8652 (v!11671 V!29321)) (EmptyCell!8652) )
))
(declare-fun mapRest!29011 () (Array (_ BitVec 32) ValueCell!8652))

(declare-datatypes ((array!52532 0))(
  ( (array!52533 (arr!25252 (Array (_ BitVec 32) (_ BitVec 64))) (size!25703 (_ BitVec 32))) )
))
(declare-datatypes ((array!52534 0))(
  ( (array!52535 (arr!25253 (Array (_ BitVec 32) ValueCell!8652)) (size!25704 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4320 0))(
  ( (LongMapFixedSize!4321 (defaultEntry!5372 Int) (mask!25989 (_ BitVec 32)) (extraKeys!5070 (_ BitVec 32)) (zeroValue!5174 V!29321) (minValue!5174 V!29321) (_size!2215 (_ BitVec 32)) (_keys!10093 array!52532) (_values!5361 array!52534) (_vacant!2215 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4320)

(declare-fun mapKey!29011 () (_ BitVec 32))

(declare-fun mapValue!29011 () ValueCell!8652)

(assert (=> mapNonEmpty!29011 (= (arr!25253 (_values!5361 thiss!1181)) (store mapRest!29011 mapKey!29011 mapValue!29011))))

(declare-fun e!500755 () Bool)

(declare-fun e!500758 () Bool)

(declare-fun array_inv!19798 (array!52532) Bool)

(declare-fun array_inv!19799 (array!52534) Bool)

(assert (=> b!895953 (= e!500755 (and tp!55843 tp_is_empty!18267 (array_inv!19798 (_keys!10093 thiss!1181)) (array_inv!19799 (_values!5361 thiss!1181)) e!500758))))

(declare-fun b!895954 () Bool)

(declare-fun e!500760 () Bool)

(declare-datatypes ((SeekEntryResult!8880 0))(
  ( (MissingZero!8880 (index!37890 (_ BitVec 32))) (Found!8880 (index!37891 (_ BitVec 32))) (Intermediate!8880 (undefined!9692 Bool) (index!37892 (_ BitVec 32)) (x!76265 (_ BitVec 32))) (Undefined!8880) (MissingVacant!8880 (index!37893 (_ BitVec 32))) )
))
(declare-fun lt!404648 () SeekEntryResult!8880)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!895954 (= e!500760 (inRange!0 (index!37891 lt!404648) (mask!25989 thiss!1181)))))

(declare-fun b!895955 () Bool)

(declare-fun e!500759 () Bool)

(get-info :version)

(assert (=> b!895955 (= e!500759 (not (or (not ((_ is Found!8880) lt!404648)) (bvslt (index!37891 lt!404648) #b00000000000000000000000000000000) (bvsge (index!37891 lt!404648) (size!25703 (_keys!10093 thiss!1181))) (bvslt (size!25703 (_keys!10093 thiss!1181)) #b01111111111111111111111111111111))))))

(assert (=> b!895955 e!500760))

(declare-fun res!606018 () Bool)

(assert (=> b!895955 (=> res!606018 e!500760)))

(assert (=> b!895955 (= res!606018 (not ((_ is Found!8880) lt!404648)))))

(declare-datatypes ((Unit!30447 0))(
  ( (Unit!30448) )
))
(declare-fun lt!404649 () Unit!30447)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!73 (array!52532 array!52534 (_ BitVec 32) (_ BitVec 32) V!29321 V!29321 (_ BitVec 64)) Unit!30447)

(assert (=> b!895955 (= lt!404649 (lemmaSeekEntryGivesInRangeIndex!73 (_keys!10093 thiss!1181) (_values!5361 thiss!1181) (mask!25989 thiss!1181) (extraKeys!5070 thiss!1181) (zeroValue!5174 thiss!1181) (minValue!5174 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52532 (_ BitVec 32)) SeekEntryResult!8880)

(assert (=> b!895955 (= lt!404648 (seekEntry!0 key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(declare-fun b!895957 () Bool)

(declare-fun e!500761 () Bool)

(assert (=> b!895957 (= e!500758 (and e!500761 mapRes!29011))))

(declare-fun condMapEmpty!29011 () Bool)

(declare-fun mapDefault!29011 () ValueCell!8652)

(assert (=> b!895957 (= condMapEmpty!29011 (= (arr!25253 (_values!5361 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8652)) mapDefault!29011)))))

(declare-fun b!895958 () Bool)

(declare-fun res!606016 () Bool)

(assert (=> b!895958 (=> (not res!606016) (not e!500759))))

(assert (=> b!895958 (= res!606016 (not (= key!785 (bvneg key!785))))))

(declare-fun res!606017 () Bool)

(assert (=> start!76420 (=> (not res!606017) (not e!500759))))

(declare-fun valid!1657 (LongMapFixedSize!4320) Bool)

(assert (=> start!76420 (= res!606017 (valid!1657 thiss!1181))))

(assert (=> start!76420 e!500759))

(assert (=> start!76420 e!500755))

(assert (=> start!76420 true))

(declare-fun b!895956 () Bool)

(assert (=> b!895956 (= e!500761 tp_is_empty!18267)))

(assert (= (and start!76420 res!606017) b!895958))

(assert (= (and b!895958 res!606016) b!895955))

(assert (= (and b!895955 (not res!606018)) b!895954))

(assert (= (and b!895957 condMapEmpty!29011) mapIsEmpty!29011))

(assert (= (and b!895957 (not condMapEmpty!29011)) mapNonEmpty!29011))

(assert (= (and mapNonEmpty!29011 ((_ is ValueCellFull!8652) mapValue!29011)) b!895952))

(assert (= (and b!895957 ((_ is ValueCellFull!8652) mapDefault!29011)) b!895956))

(assert (= b!895953 b!895957))

(assert (= start!76420 b!895953))

(declare-fun m!833373 () Bool)

(assert (=> start!76420 m!833373))

(declare-fun m!833375 () Bool)

(assert (=> b!895954 m!833375))

(declare-fun m!833377 () Bool)

(assert (=> b!895953 m!833377))

(declare-fun m!833379 () Bool)

(assert (=> b!895953 m!833379))

(declare-fun m!833381 () Bool)

(assert (=> b!895955 m!833381))

(declare-fun m!833383 () Bool)

(assert (=> b!895955 m!833383))

(declare-fun m!833385 () Bool)

(assert (=> mapNonEmpty!29011 m!833385))

(check-sat (not b!895953) (not b!895954) (not mapNonEmpty!29011) (not b_next!15939) (not b!895955) tp_is_empty!18267 b_and!26249 (not start!76420))
(check-sat b_and!26249 (not b_next!15939))
(get-model)

(declare-fun d!110781 () Bool)

(declare-fun res!606034 () Bool)

(declare-fun e!500785 () Bool)

(assert (=> d!110781 (=> (not res!606034) (not e!500785))))

(declare-fun simpleValid!310 (LongMapFixedSize!4320) Bool)

(assert (=> d!110781 (= res!606034 (simpleValid!310 thiss!1181))))

(assert (=> d!110781 (= (valid!1657 thiss!1181) e!500785)))

(declare-fun b!895986 () Bool)

(declare-fun res!606035 () Bool)

(assert (=> b!895986 (=> (not res!606035) (not e!500785))))

(declare-fun arrayCountValidKeys!0 (array!52532 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895986 (= res!606035 (= (arrayCountValidKeys!0 (_keys!10093 thiss!1181) #b00000000000000000000000000000000 (size!25703 (_keys!10093 thiss!1181))) (_size!2215 thiss!1181)))))

(declare-fun b!895987 () Bool)

(declare-fun res!606036 () Bool)

(assert (=> b!895987 (=> (not res!606036) (not e!500785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52532 (_ BitVec 32)) Bool)

(assert (=> b!895987 (= res!606036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(declare-fun b!895988 () Bool)

(declare-datatypes ((List!17898 0))(
  ( (Nil!17895) (Cons!17894 (h!19031 (_ BitVec 64)) (t!25245 List!17898)) )
))
(declare-fun arrayNoDuplicates!0 (array!52532 (_ BitVec 32) List!17898) Bool)

(assert (=> b!895988 (= e!500785 (arrayNoDuplicates!0 (_keys!10093 thiss!1181) #b00000000000000000000000000000000 Nil!17895))))

(assert (= (and d!110781 res!606034) b!895986))

(assert (= (and b!895986 res!606035) b!895987))

(assert (= (and b!895987 res!606036) b!895988))

(declare-fun m!833401 () Bool)

(assert (=> d!110781 m!833401))

(declare-fun m!833403 () Bool)

(assert (=> b!895986 m!833403))

(declare-fun m!833405 () Bool)

(assert (=> b!895987 m!833405))

(declare-fun m!833407 () Bool)

(assert (=> b!895988 m!833407))

(assert (=> start!76420 d!110781))

(declare-fun d!110783 () Bool)

(declare-fun e!500788 () Bool)

(assert (=> d!110783 e!500788))

(declare-fun res!606039 () Bool)

(assert (=> d!110783 (=> res!606039 e!500788)))

(declare-fun lt!404661 () SeekEntryResult!8880)

(assert (=> d!110783 (= res!606039 (not ((_ is Found!8880) lt!404661)))))

(assert (=> d!110783 (= lt!404661 (seekEntry!0 key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(declare-fun lt!404660 () Unit!30447)

(declare-fun choose!1484 (array!52532 array!52534 (_ BitVec 32) (_ BitVec 32) V!29321 V!29321 (_ BitVec 64)) Unit!30447)

(assert (=> d!110783 (= lt!404660 (choose!1484 (_keys!10093 thiss!1181) (_values!5361 thiss!1181) (mask!25989 thiss!1181) (extraKeys!5070 thiss!1181) (zeroValue!5174 thiss!1181) (minValue!5174 thiss!1181) key!785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!110783 (validMask!0 (mask!25989 thiss!1181))))

(assert (=> d!110783 (= (lemmaSeekEntryGivesInRangeIndex!73 (_keys!10093 thiss!1181) (_values!5361 thiss!1181) (mask!25989 thiss!1181) (extraKeys!5070 thiss!1181) (zeroValue!5174 thiss!1181) (minValue!5174 thiss!1181) key!785) lt!404660)))

(declare-fun b!895991 () Bool)

(assert (=> b!895991 (= e!500788 (inRange!0 (index!37891 lt!404661) (mask!25989 thiss!1181)))))

(assert (= (and d!110783 (not res!606039)) b!895991))

(assert (=> d!110783 m!833383))

(declare-fun m!833409 () Bool)

(assert (=> d!110783 m!833409))

(declare-fun m!833411 () Bool)

(assert (=> d!110783 m!833411))

(declare-fun m!833413 () Bool)

(assert (=> b!895991 m!833413))

(assert (=> b!895955 d!110783))

(declare-fun b!896004 () Bool)

(declare-fun e!500795 () SeekEntryResult!8880)

(declare-fun lt!404670 () SeekEntryResult!8880)

(assert (=> b!896004 (= e!500795 (MissingZero!8880 (index!37892 lt!404670)))))

(declare-fun b!896005 () Bool)

(declare-fun e!500797 () SeekEntryResult!8880)

(assert (=> b!896005 (= e!500797 (Found!8880 (index!37892 lt!404670)))))

(declare-fun b!896006 () Bool)

(declare-fun lt!404671 () SeekEntryResult!8880)

(assert (=> b!896006 (= e!500795 (ite ((_ is MissingVacant!8880) lt!404671) (MissingZero!8880 (index!37893 lt!404671)) lt!404671))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52532 (_ BitVec 32)) SeekEntryResult!8880)

(assert (=> b!896006 (= lt!404671 (seekKeyOrZeroReturnVacant!0 (x!76265 lt!404670) (index!37892 lt!404670) (index!37892 lt!404670) key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(declare-fun b!896007 () Bool)

(declare-fun c!94561 () Bool)

(declare-fun lt!404673 () (_ BitVec 64))

(assert (=> b!896007 (= c!94561 (= lt!404673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!896007 (= e!500797 e!500795)))

(declare-fun b!896008 () Bool)

(declare-fun e!500796 () SeekEntryResult!8880)

(assert (=> b!896008 (= e!500796 e!500797)))

(assert (=> b!896008 (= lt!404673 (select (arr!25252 (_keys!10093 thiss!1181)) (index!37892 lt!404670)))))

(declare-fun c!94560 () Bool)

(assert (=> b!896008 (= c!94560 (= lt!404673 key!785))))

(declare-fun b!896009 () Bool)

(assert (=> b!896009 (= e!500796 Undefined!8880)))

(declare-fun d!110785 () Bool)

(declare-fun lt!404672 () SeekEntryResult!8880)

(assert (=> d!110785 (and (or ((_ is MissingVacant!8880) lt!404672) (not ((_ is Found!8880) lt!404672)) (and (bvsge (index!37891 lt!404672) #b00000000000000000000000000000000) (bvslt (index!37891 lt!404672) (size!25703 (_keys!10093 thiss!1181))))) (not ((_ is MissingVacant!8880) lt!404672)) (or (not ((_ is Found!8880) lt!404672)) (= (select (arr!25252 (_keys!10093 thiss!1181)) (index!37891 lt!404672)) key!785)))))

(assert (=> d!110785 (= lt!404672 e!500796)))

(declare-fun c!94559 () Bool)

(assert (=> d!110785 (= c!94559 (and ((_ is Intermediate!8880) lt!404670) (undefined!9692 lt!404670)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52532 (_ BitVec 32)) SeekEntryResult!8880)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110785 (= lt!404670 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25989 thiss!1181)) key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(assert (=> d!110785 (validMask!0 (mask!25989 thiss!1181))))

(assert (=> d!110785 (= (seekEntry!0 key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)) lt!404672)))

(assert (= (and d!110785 c!94559) b!896009))

(assert (= (and d!110785 (not c!94559)) b!896008))

(assert (= (and b!896008 c!94560) b!896005))

(assert (= (and b!896008 (not c!94560)) b!896007))

(assert (= (and b!896007 c!94561) b!896004))

(assert (= (and b!896007 (not c!94561)) b!896006))

(declare-fun m!833415 () Bool)

(assert (=> b!896006 m!833415))

(declare-fun m!833417 () Bool)

(assert (=> b!896008 m!833417))

(declare-fun m!833419 () Bool)

(assert (=> d!110785 m!833419))

(declare-fun m!833421 () Bool)

(assert (=> d!110785 m!833421))

(assert (=> d!110785 m!833421))

(declare-fun m!833423 () Bool)

(assert (=> d!110785 m!833423))

(assert (=> d!110785 m!833411))

(assert (=> b!895955 d!110785))

(declare-fun d!110787 () Bool)

(assert (=> d!110787 (= (array_inv!19798 (_keys!10093 thiss!1181)) (bvsge (size!25703 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895953 d!110787))

(declare-fun d!110789 () Bool)

(assert (=> d!110789 (= (array_inv!19799 (_values!5361 thiss!1181)) (bvsge (size!25704 (_values!5361 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895953 d!110789))

(declare-fun d!110791 () Bool)

(assert (=> d!110791 (= (inRange!0 (index!37891 lt!404648) (mask!25989 thiss!1181)) (and (bvsge (index!37891 lt!404648) #b00000000000000000000000000000000) (bvslt (index!37891 lt!404648) (bvadd (mask!25989 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!895954 d!110791))

(declare-fun b!896016 () Bool)

(declare-fun e!500803 () Bool)

(assert (=> b!896016 (= e!500803 tp_is_empty!18267)))

(declare-fun condMapEmpty!29017 () Bool)

(declare-fun mapDefault!29017 () ValueCell!8652)

(assert (=> mapNonEmpty!29011 (= condMapEmpty!29017 (= mapRest!29011 ((as const (Array (_ BitVec 32) ValueCell!8652)) mapDefault!29017)))))

(declare-fun e!500802 () Bool)

(declare-fun mapRes!29017 () Bool)

(assert (=> mapNonEmpty!29011 (= tp!55842 (and e!500802 mapRes!29017))))

(declare-fun mapIsEmpty!29017 () Bool)

(assert (=> mapIsEmpty!29017 mapRes!29017))

(declare-fun b!896017 () Bool)

(assert (=> b!896017 (= e!500802 tp_is_empty!18267)))

(declare-fun mapNonEmpty!29017 () Bool)

(declare-fun tp!55852 () Bool)

(assert (=> mapNonEmpty!29017 (= mapRes!29017 (and tp!55852 e!500803))))

(declare-fun mapValue!29017 () ValueCell!8652)

(declare-fun mapRest!29017 () (Array (_ BitVec 32) ValueCell!8652))

(declare-fun mapKey!29017 () (_ BitVec 32))

(assert (=> mapNonEmpty!29017 (= mapRest!29011 (store mapRest!29017 mapKey!29017 mapValue!29017))))

(assert (= (and mapNonEmpty!29011 condMapEmpty!29017) mapIsEmpty!29017))

(assert (= (and mapNonEmpty!29011 (not condMapEmpty!29017)) mapNonEmpty!29017))

(assert (= (and mapNonEmpty!29017 ((_ is ValueCellFull!8652) mapValue!29017)) b!896016))

(assert (= (and mapNonEmpty!29011 ((_ is ValueCellFull!8652) mapDefault!29017)) b!896017))

(declare-fun m!833425 () Bool)

(assert (=> mapNonEmpty!29017 m!833425))

(check-sat (not b!895988) (not b!895986) (not b!895991) (not b_next!15939) (not d!110785) (not d!110783) (not mapNonEmpty!29017) (not b!896006) (not d!110781) b_and!26249 (not b!895987) tp_is_empty!18267)
(check-sat b_and!26249 (not b_next!15939))
(get-model)

(declare-fun b!896030 () Bool)

(declare-fun e!500810 () SeekEntryResult!8880)

(declare-fun e!500811 () SeekEntryResult!8880)

(assert (=> b!896030 (= e!500810 e!500811)))

(declare-fun c!94568 () Bool)

(declare-fun lt!404679 () (_ BitVec 64))

(assert (=> b!896030 (= c!94568 (= lt!404679 key!785))))

(declare-fun lt!404678 () SeekEntryResult!8880)

(declare-fun d!110793 () Bool)

(assert (=> d!110793 (and (or ((_ is Undefined!8880) lt!404678) (not ((_ is Found!8880) lt!404678)) (and (bvsge (index!37891 lt!404678) #b00000000000000000000000000000000) (bvslt (index!37891 lt!404678) (size!25703 (_keys!10093 thiss!1181))))) (or ((_ is Undefined!8880) lt!404678) ((_ is Found!8880) lt!404678) (not ((_ is MissingVacant!8880) lt!404678)) (not (= (index!37893 lt!404678) (index!37892 lt!404670))) (and (bvsge (index!37893 lt!404678) #b00000000000000000000000000000000) (bvslt (index!37893 lt!404678) (size!25703 (_keys!10093 thiss!1181))))) (or ((_ is Undefined!8880) lt!404678) (ite ((_ is Found!8880) lt!404678) (= (select (arr!25252 (_keys!10093 thiss!1181)) (index!37891 lt!404678)) key!785) (and ((_ is MissingVacant!8880) lt!404678) (= (index!37893 lt!404678) (index!37892 lt!404670)) (= (select (arr!25252 (_keys!10093 thiss!1181)) (index!37893 lt!404678)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!110793 (= lt!404678 e!500810)))

(declare-fun c!94570 () Bool)

(assert (=> d!110793 (= c!94570 (bvsge (x!76265 lt!404670) #b01111111111111111111111111111110))))

(assert (=> d!110793 (= lt!404679 (select (arr!25252 (_keys!10093 thiss!1181)) (index!37892 lt!404670)))))

(assert (=> d!110793 (validMask!0 (mask!25989 thiss!1181))))

(assert (=> d!110793 (= (seekKeyOrZeroReturnVacant!0 (x!76265 lt!404670) (index!37892 lt!404670) (index!37892 lt!404670) key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)) lt!404678)))

(declare-fun b!896031 () Bool)

(assert (=> b!896031 (= e!500811 (Found!8880 (index!37892 lt!404670)))))

(declare-fun b!896032 () Bool)

(declare-fun e!500812 () SeekEntryResult!8880)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!896032 (= e!500812 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76265 lt!404670) #b00000000000000000000000000000001) (nextIndex!0 (index!37892 lt!404670) (x!76265 lt!404670) (mask!25989 thiss!1181)) (index!37892 lt!404670) key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(declare-fun b!896033 () Bool)

(assert (=> b!896033 (= e!500810 Undefined!8880)))

(declare-fun b!896034 () Bool)

(declare-fun c!94569 () Bool)

(assert (=> b!896034 (= c!94569 (= lt!404679 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!896034 (= e!500811 e!500812)))

(declare-fun b!896035 () Bool)

(assert (=> b!896035 (= e!500812 (MissingVacant!8880 (index!37892 lt!404670)))))

(assert (= (and d!110793 c!94570) b!896033))

(assert (= (and d!110793 (not c!94570)) b!896030))

(assert (= (and b!896030 c!94568) b!896031))

(assert (= (and b!896030 (not c!94568)) b!896034))

(assert (= (and b!896034 c!94569) b!896035))

(assert (= (and b!896034 (not c!94569)) b!896032))

(declare-fun m!833427 () Bool)

(assert (=> d!110793 m!833427))

(declare-fun m!833429 () Bool)

(assert (=> d!110793 m!833429))

(assert (=> d!110793 m!833417))

(assert (=> d!110793 m!833411))

(declare-fun m!833431 () Bool)

(assert (=> b!896032 m!833431))

(assert (=> b!896032 m!833431))

(declare-fun m!833433 () Bool)

(assert (=> b!896032 m!833433))

(assert (=> b!896006 d!110793))

(declare-fun b!896045 () Bool)

(declare-fun res!606051 () Bool)

(declare-fun e!500815 () Bool)

(assert (=> b!896045 (=> (not res!606051) (not e!500815))))

(declare-fun size!25707 (LongMapFixedSize!4320) (_ BitVec 32))

(assert (=> b!896045 (= res!606051 (bvsge (size!25707 thiss!1181) (_size!2215 thiss!1181)))))

(declare-fun b!896044 () Bool)

(declare-fun res!606049 () Bool)

(assert (=> b!896044 (=> (not res!606049) (not e!500815))))

(assert (=> b!896044 (= res!606049 (and (= (size!25704 (_values!5361 thiss!1181)) (bvadd (mask!25989 thiss!1181) #b00000000000000000000000000000001)) (= (size!25703 (_keys!10093 thiss!1181)) (size!25704 (_values!5361 thiss!1181))) (bvsge (_size!2215 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2215 thiss!1181) (bvadd (mask!25989 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun b!896046 () Bool)

(declare-fun res!606050 () Bool)

(assert (=> b!896046 (=> (not res!606050) (not e!500815))))

(assert (=> b!896046 (= res!606050 (= (size!25707 thiss!1181) (bvadd (_size!2215 thiss!1181) (bvsdiv (bvadd (extraKeys!5070 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!896047 () Bool)

(assert (=> b!896047 (= e!500815 (and (bvsge (extraKeys!5070 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5070 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2215 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun d!110795 () Bool)

(declare-fun res!606048 () Bool)

(assert (=> d!110795 (=> (not res!606048) (not e!500815))))

(assert (=> d!110795 (= res!606048 (validMask!0 (mask!25989 thiss!1181)))))

(assert (=> d!110795 (= (simpleValid!310 thiss!1181) e!500815)))

(assert (= (and d!110795 res!606048) b!896044))

(assert (= (and b!896044 res!606049) b!896045))

(assert (= (and b!896045 res!606051) b!896046))

(assert (= (and b!896046 res!606050) b!896047))

(declare-fun m!833435 () Bool)

(assert (=> b!896045 m!833435))

(assert (=> b!896046 m!833435))

(assert (=> d!110795 m!833411))

(assert (=> d!110781 d!110795))

(declare-fun b!896056 () Bool)

(declare-fun e!500820 () (_ BitVec 32))

(declare-fun call!39772 () (_ BitVec 32))

(assert (=> b!896056 (= e!500820 call!39772)))

(declare-fun bm!39769 () Bool)

(assert (=> bm!39769 (= call!39772 (arrayCountValidKeys!0 (_keys!10093 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25703 (_keys!10093 thiss!1181))))))

(declare-fun b!896057 () Bool)

(declare-fun e!500821 () (_ BitVec 32))

(assert (=> b!896057 (= e!500821 e!500820)))

(declare-fun c!94576 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!896057 (= c!94576 (validKeyInArray!0 (select (arr!25252 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!896058 () Bool)

(assert (=> b!896058 (= e!500820 (bvadd #b00000000000000000000000000000001 call!39772))))

(declare-fun b!896059 () Bool)

(assert (=> b!896059 (= e!500821 #b00000000000000000000000000000000)))

(declare-fun d!110797 () Bool)

(declare-fun lt!404682 () (_ BitVec 32))

(assert (=> d!110797 (and (bvsge lt!404682 #b00000000000000000000000000000000) (bvsle lt!404682 (bvsub (size!25703 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110797 (= lt!404682 e!500821)))

(declare-fun c!94575 () Bool)

(assert (=> d!110797 (= c!94575 (bvsge #b00000000000000000000000000000000 (size!25703 (_keys!10093 thiss!1181))))))

(assert (=> d!110797 (and (bvsle #b00000000000000000000000000000000 (size!25703 (_keys!10093 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25703 (_keys!10093 thiss!1181)) (size!25703 (_keys!10093 thiss!1181))))))

(assert (=> d!110797 (= (arrayCountValidKeys!0 (_keys!10093 thiss!1181) #b00000000000000000000000000000000 (size!25703 (_keys!10093 thiss!1181))) lt!404682)))

(assert (= (and d!110797 c!94575) b!896059))

(assert (= (and d!110797 (not c!94575)) b!896057))

(assert (= (and b!896057 c!94576) b!896058))

(assert (= (and b!896057 (not c!94576)) b!896056))

(assert (= (or b!896058 b!896056) bm!39769))

(declare-fun m!833437 () Bool)

(assert (=> bm!39769 m!833437))

(declare-fun m!833439 () Bool)

(assert (=> b!896057 m!833439))

(assert (=> b!896057 m!833439))

(declare-fun m!833441 () Bool)

(assert (=> b!896057 m!833441))

(assert (=> b!895986 d!110797))

(declare-fun b!896068 () Bool)

(declare-fun e!500829 () Bool)

(declare-fun e!500830 () Bool)

(assert (=> b!896068 (= e!500829 e!500830)))

(declare-fun lt!404690 () (_ BitVec 64))

(assert (=> b!896068 (= lt!404690 (select (arr!25252 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!404691 () Unit!30447)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52532 (_ BitVec 64) (_ BitVec 32)) Unit!30447)

(assert (=> b!896068 (= lt!404691 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10093 thiss!1181) lt!404690 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896068 (arrayContainsKey!0 (_keys!10093 thiss!1181) lt!404690 #b00000000000000000000000000000000)))

(declare-fun lt!404689 () Unit!30447)

(assert (=> b!896068 (= lt!404689 lt!404691)))

(declare-fun res!606056 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52532 (_ BitVec 32)) SeekEntryResult!8880)

(assert (=> b!896068 (= res!606056 (= (seekEntryOrOpen!0 (select (arr!25252 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000) (_keys!10093 thiss!1181) (mask!25989 thiss!1181)) (Found!8880 #b00000000000000000000000000000000)))))

(assert (=> b!896068 (=> (not res!606056) (not e!500830))))

(declare-fun d!110799 () Bool)

(declare-fun res!606057 () Bool)

(declare-fun e!500828 () Bool)

(assert (=> d!110799 (=> res!606057 e!500828)))

(assert (=> d!110799 (= res!606057 (bvsge #b00000000000000000000000000000000 (size!25703 (_keys!10093 thiss!1181))))))

(assert (=> d!110799 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)) e!500828)))

(declare-fun b!896069 () Bool)

(declare-fun call!39775 () Bool)

(assert (=> b!896069 (= e!500829 call!39775)))

(declare-fun b!896070 () Bool)

(assert (=> b!896070 (= e!500830 call!39775)))

(declare-fun bm!39772 () Bool)

(assert (=> bm!39772 (= call!39775 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(declare-fun b!896071 () Bool)

(assert (=> b!896071 (= e!500828 e!500829)))

(declare-fun c!94579 () Bool)

(assert (=> b!896071 (= c!94579 (validKeyInArray!0 (select (arr!25252 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110799 (not res!606057)) b!896071))

(assert (= (and b!896071 c!94579) b!896068))

(assert (= (and b!896071 (not c!94579)) b!896069))

(assert (= (and b!896068 res!606056) b!896070))

(assert (= (or b!896070 b!896069) bm!39772))

(assert (=> b!896068 m!833439))

(declare-fun m!833443 () Bool)

(assert (=> b!896068 m!833443))

(declare-fun m!833445 () Bool)

(assert (=> b!896068 m!833445))

(assert (=> b!896068 m!833439))

(declare-fun m!833447 () Bool)

(assert (=> b!896068 m!833447))

(declare-fun m!833449 () Bool)

(assert (=> bm!39772 m!833449))

(assert (=> b!896071 m!833439))

(assert (=> b!896071 m!833439))

(assert (=> b!896071 m!833441))

(assert (=> b!895987 d!110799))

(declare-fun b!896090 () Bool)

(declare-fun e!500842 () Bool)

(declare-fun e!500845 () Bool)

(assert (=> b!896090 (= e!500842 e!500845)))

(declare-fun res!606064 () Bool)

(declare-fun lt!404696 () SeekEntryResult!8880)

(assert (=> b!896090 (= res!606064 (and ((_ is Intermediate!8880) lt!404696) (not (undefined!9692 lt!404696)) (bvslt (x!76265 lt!404696) #b01111111111111111111111111111110) (bvsge (x!76265 lt!404696) #b00000000000000000000000000000000) (bvsge (x!76265 lt!404696) #b00000000000000000000000000000000)))))

(assert (=> b!896090 (=> (not res!606064) (not e!500845))))

(declare-fun b!896091 () Bool)

(declare-fun e!500841 () SeekEntryResult!8880)

(assert (=> b!896091 (= e!500841 (Intermediate!8880 false (toIndex!0 key!785 (mask!25989 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!896092 () Bool)

(declare-fun e!500844 () SeekEntryResult!8880)

(assert (=> b!896092 (= e!500844 (Intermediate!8880 true (toIndex!0 key!785 (mask!25989 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!896093 () Bool)

(assert (=> b!896093 (and (bvsge (index!37892 lt!404696) #b00000000000000000000000000000000) (bvslt (index!37892 lt!404696) (size!25703 (_keys!10093 thiss!1181))))))

(declare-fun res!606065 () Bool)

(assert (=> b!896093 (= res!606065 (= (select (arr!25252 (_keys!10093 thiss!1181)) (index!37892 lt!404696)) key!785))))

(declare-fun e!500843 () Bool)

(assert (=> b!896093 (=> res!606065 e!500843)))

(assert (=> b!896093 (= e!500845 e!500843)))

(declare-fun b!896094 () Bool)

(assert (=> b!896094 (= e!500844 e!500841)))

(declare-fun c!94586 () Bool)

(declare-fun lt!404697 () (_ BitVec 64))

(assert (=> b!896094 (= c!94586 (or (= lt!404697 key!785) (= (bvadd lt!404697 lt!404697) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!896095 () Bool)

(assert (=> b!896095 (and (bvsge (index!37892 lt!404696) #b00000000000000000000000000000000) (bvslt (index!37892 lt!404696) (size!25703 (_keys!10093 thiss!1181))))))

(declare-fun res!606066 () Bool)

(assert (=> b!896095 (= res!606066 (= (select (arr!25252 (_keys!10093 thiss!1181)) (index!37892 lt!404696)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!896095 (=> res!606066 e!500843)))

(declare-fun b!896096 () Bool)

(assert (=> b!896096 (= e!500842 (bvsge (x!76265 lt!404696) #b01111111111111111111111111111110))))

(declare-fun d!110801 () Bool)

(assert (=> d!110801 e!500842))

(declare-fun c!94587 () Bool)

(assert (=> d!110801 (= c!94587 (and ((_ is Intermediate!8880) lt!404696) (undefined!9692 lt!404696)))))

(assert (=> d!110801 (= lt!404696 e!500844)))

(declare-fun c!94588 () Bool)

(assert (=> d!110801 (= c!94588 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!110801 (= lt!404697 (select (arr!25252 (_keys!10093 thiss!1181)) (toIndex!0 key!785 (mask!25989 thiss!1181))))))

(assert (=> d!110801 (validMask!0 (mask!25989 thiss!1181))))

(assert (=> d!110801 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25989 thiss!1181)) key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)) lt!404696)))

(declare-fun b!896097 () Bool)

(assert (=> b!896097 (and (bvsge (index!37892 lt!404696) #b00000000000000000000000000000000) (bvslt (index!37892 lt!404696) (size!25703 (_keys!10093 thiss!1181))))))

(assert (=> b!896097 (= e!500843 (= (select (arr!25252 (_keys!10093 thiss!1181)) (index!37892 lt!404696)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!896098 () Bool)

(assert (=> b!896098 (= e!500841 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!25989 thiss!1181)) #b00000000000000000000000000000000 (mask!25989 thiss!1181)) key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(assert (= (and d!110801 c!94588) b!896092))

(assert (= (and d!110801 (not c!94588)) b!896094))

(assert (= (and b!896094 c!94586) b!896091))

(assert (= (and b!896094 (not c!94586)) b!896098))

(assert (= (and d!110801 c!94587) b!896096))

(assert (= (and d!110801 (not c!94587)) b!896090))

(assert (= (and b!896090 res!606064) b!896093))

(assert (= (and b!896093 (not res!606065)) b!896095))

(assert (= (and b!896095 (not res!606066)) b!896097))

(assert (=> d!110801 m!833421))

(declare-fun m!833451 () Bool)

(assert (=> d!110801 m!833451))

(assert (=> d!110801 m!833411))

(declare-fun m!833453 () Bool)

(assert (=> b!896093 m!833453))

(assert (=> b!896095 m!833453))

(assert (=> b!896097 m!833453))

(assert (=> b!896098 m!833421))

(declare-fun m!833455 () Bool)

(assert (=> b!896098 m!833455))

(assert (=> b!896098 m!833455))

(declare-fun m!833457 () Bool)

(assert (=> b!896098 m!833457))

(assert (=> d!110785 d!110801))

(declare-fun d!110803 () Bool)

(declare-fun lt!404703 () (_ BitVec 32))

(declare-fun lt!404702 () (_ BitVec 32))

(assert (=> d!110803 (= lt!404703 (bvmul (bvxor lt!404702 (bvlshr lt!404702 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110803 (= lt!404702 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110803 (and (bvsge (mask!25989 thiss!1181) #b00000000000000000000000000000000) (let ((res!606067 (let ((h!19032 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76283 (bvmul (bvxor h!19032 (bvlshr h!19032 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76283 (bvlshr x!76283 #b00000000000000000000000000001101)) (mask!25989 thiss!1181)))))) (and (bvslt res!606067 (bvadd (mask!25989 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!606067 #b00000000000000000000000000000000))))))

(assert (=> d!110803 (= (toIndex!0 key!785 (mask!25989 thiss!1181)) (bvand (bvxor lt!404703 (bvlshr lt!404703 #b00000000000000000000000000001101)) (mask!25989 thiss!1181)))))

(assert (=> d!110785 d!110803))

(declare-fun d!110805 () Bool)

(assert (=> d!110805 (= (validMask!0 (mask!25989 thiss!1181)) (and (or (= (mask!25989 thiss!1181) #b00000000000000000000000000000111) (= (mask!25989 thiss!1181) #b00000000000000000000000000001111) (= (mask!25989 thiss!1181) #b00000000000000000000000000011111) (= (mask!25989 thiss!1181) #b00000000000000000000000000111111) (= (mask!25989 thiss!1181) #b00000000000000000000000001111111) (= (mask!25989 thiss!1181) #b00000000000000000000000011111111) (= (mask!25989 thiss!1181) #b00000000000000000000000111111111) (= (mask!25989 thiss!1181) #b00000000000000000000001111111111) (= (mask!25989 thiss!1181) #b00000000000000000000011111111111) (= (mask!25989 thiss!1181) #b00000000000000000000111111111111) (= (mask!25989 thiss!1181) #b00000000000000000001111111111111) (= (mask!25989 thiss!1181) #b00000000000000000011111111111111) (= (mask!25989 thiss!1181) #b00000000000000000111111111111111) (= (mask!25989 thiss!1181) #b00000000000000001111111111111111) (= (mask!25989 thiss!1181) #b00000000000000011111111111111111) (= (mask!25989 thiss!1181) #b00000000000000111111111111111111) (= (mask!25989 thiss!1181) #b00000000000001111111111111111111) (= (mask!25989 thiss!1181) #b00000000000011111111111111111111) (= (mask!25989 thiss!1181) #b00000000000111111111111111111111) (= (mask!25989 thiss!1181) #b00000000001111111111111111111111) (= (mask!25989 thiss!1181) #b00000000011111111111111111111111) (= (mask!25989 thiss!1181) #b00000000111111111111111111111111) (= (mask!25989 thiss!1181) #b00000001111111111111111111111111) (= (mask!25989 thiss!1181) #b00000011111111111111111111111111) (= (mask!25989 thiss!1181) #b00000111111111111111111111111111) (= (mask!25989 thiss!1181) #b00001111111111111111111111111111) (= (mask!25989 thiss!1181) #b00011111111111111111111111111111) (= (mask!25989 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25989 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> d!110785 d!110805))

(assert (=> d!110783 d!110785))

(declare-fun d!110807 () Bool)

(declare-fun e!500848 () Bool)

(assert (=> d!110807 e!500848))

(declare-fun res!606070 () Bool)

(assert (=> d!110807 (=> res!606070 e!500848)))

(declare-fun lt!404706 () SeekEntryResult!8880)

(assert (=> d!110807 (= res!606070 (not ((_ is Found!8880) lt!404706)))))

(assert (=> d!110807 (= lt!404706 (seekEntry!0 key!785 (_keys!10093 thiss!1181) (mask!25989 thiss!1181)))))

(assert (=> d!110807 true))

(declare-fun _$36!351 () Unit!30447)

(assert (=> d!110807 (= (choose!1484 (_keys!10093 thiss!1181) (_values!5361 thiss!1181) (mask!25989 thiss!1181) (extraKeys!5070 thiss!1181) (zeroValue!5174 thiss!1181) (minValue!5174 thiss!1181) key!785) _$36!351)))

(declare-fun b!896101 () Bool)

(assert (=> b!896101 (= e!500848 (inRange!0 (index!37891 lt!404706) (mask!25989 thiss!1181)))))

(assert (= (and d!110807 (not res!606070)) b!896101))

(assert (=> d!110807 m!833383))

(declare-fun m!833459 () Bool)

(assert (=> b!896101 m!833459))

(assert (=> d!110783 d!110807))

(assert (=> d!110783 d!110805))

(declare-fun d!110809 () Bool)

(declare-fun res!606078 () Bool)

(declare-fun e!500860 () Bool)

(assert (=> d!110809 (=> res!606078 e!500860)))

(assert (=> d!110809 (= res!606078 (bvsge #b00000000000000000000000000000000 (size!25703 (_keys!10093 thiss!1181))))))

(assert (=> d!110809 (= (arrayNoDuplicates!0 (_keys!10093 thiss!1181) #b00000000000000000000000000000000 Nil!17895) e!500860)))

(declare-fun b!896112 () Bool)

(declare-fun e!500857 () Bool)

(declare-fun contains!4388 (List!17898 (_ BitVec 64)) Bool)

(assert (=> b!896112 (= e!500857 (contains!4388 Nil!17895 (select (arr!25252 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!896113 () Bool)

(declare-fun e!500858 () Bool)

(declare-fun e!500859 () Bool)

(assert (=> b!896113 (= e!500858 e!500859)))

(declare-fun c!94591 () Bool)

(assert (=> b!896113 (= c!94591 (validKeyInArray!0 (select (arr!25252 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!896114 () Bool)

(declare-fun call!39778 () Bool)

(assert (=> b!896114 (= e!500859 call!39778)))

(declare-fun b!896115 () Bool)

(assert (=> b!896115 (= e!500860 e!500858)))

(declare-fun res!606077 () Bool)

(assert (=> b!896115 (=> (not res!606077) (not e!500858))))

(assert (=> b!896115 (= res!606077 (not e!500857))))

(declare-fun res!606079 () Bool)

(assert (=> b!896115 (=> (not res!606079) (not e!500857))))

(assert (=> b!896115 (= res!606079 (validKeyInArray!0 (select (arr!25252 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39775 () Bool)

(assert (=> bm!39775 (= call!39778 (arrayNoDuplicates!0 (_keys!10093 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94591 (Cons!17894 (select (arr!25252 (_keys!10093 thiss!1181)) #b00000000000000000000000000000000) Nil!17895) Nil!17895)))))

(declare-fun b!896116 () Bool)

(assert (=> b!896116 (= e!500859 call!39778)))

(assert (= (and d!110809 (not res!606078)) b!896115))

(assert (= (and b!896115 res!606079) b!896112))

(assert (= (and b!896115 res!606077) b!896113))

(assert (= (and b!896113 c!94591) b!896114))

(assert (= (and b!896113 (not c!94591)) b!896116))

(assert (= (or b!896114 b!896116) bm!39775))

(assert (=> b!896112 m!833439))

(assert (=> b!896112 m!833439))

(declare-fun m!833461 () Bool)

(assert (=> b!896112 m!833461))

(assert (=> b!896113 m!833439))

(assert (=> b!896113 m!833439))

(assert (=> b!896113 m!833441))

(assert (=> b!896115 m!833439))

(assert (=> b!896115 m!833439))

(assert (=> b!896115 m!833441))

(assert (=> bm!39775 m!833439))

(declare-fun m!833463 () Bool)

(assert (=> bm!39775 m!833463))

(assert (=> b!895988 d!110809))

(declare-fun d!110811 () Bool)

(assert (=> d!110811 (= (inRange!0 (index!37891 lt!404661) (mask!25989 thiss!1181)) (and (bvsge (index!37891 lt!404661) #b00000000000000000000000000000000) (bvslt (index!37891 lt!404661) (bvadd (mask!25989 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!895991 d!110811))

(declare-fun b!896117 () Bool)

(declare-fun e!500862 () Bool)

(assert (=> b!896117 (= e!500862 tp_is_empty!18267)))

(declare-fun condMapEmpty!29018 () Bool)

(declare-fun mapDefault!29018 () ValueCell!8652)

(assert (=> mapNonEmpty!29017 (= condMapEmpty!29018 (= mapRest!29017 ((as const (Array (_ BitVec 32) ValueCell!8652)) mapDefault!29018)))))

(declare-fun e!500861 () Bool)

(declare-fun mapRes!29018 () Bool)

(assert (=> mapNonEmpty!29017 (= tp!55852 (and e!500861 mapRes!29018))))

(declare-fun mapIsEmpty!29018 () Bool)

(assert (=> mapIsEmpty!29018 mapRes!29018))

(declare-fun b!896118 () Bool)

(assert (=> b!896118 (= e!500861 tp_is_empty!18267)))

(declare-fun mapNonEmpty!29018 () Bool)

(declare-fun tp!55853 () Bool)

(assert (=> mapNonEmpty!29018 (= mapRes!29018 (and tp!55853 e!500862))))

(declare-fun mapRest!29018 () (Array (_ BitVec 32) ValueCell!8652))

(declare-fun mapKey!29018 () (_ BitVec 32))

(declare-fun mapValue!29018 () ValueCell!8652)

(assert (=> mapNonEmpty!29018 (= mapRest!29017 (store mapRest!29018 mapKey!29018 mapValue!29018))))

(assert (= (and mapNonEmpty!29017 condMapEmpty!29018) mapIsEmpty!29018))

(assert (= (and mapNonEmpty!29017 (not condMapEmpty!29018)) mapNonEmpty!29018))

(assert (= (and mapNonEmpty!29018 ((_ is ValueCellFull!8652) mapValue!29018)) b!896117))

(assert (= (and mapNonEmpty!29017 ((_ is ValueCellFull!8652) mapDefault!29018)) b!896118))

(declare-fun m!833465 () Bool)

(assert (=> mapNonEmpty!29018 m!833465))

(check-sat (not b!896112) (not mapNonEmpty!29018) (not d!110801) (not b!896057) (not b!896098) (not b!896032) (not bm!39775) (not b_next!15939) (not d!110807) (not b!896101) (not bm!39769) (not d!110795) b_and!26249 (not bm!39772) (not b!896115) (not d!110793) (not b!896071) (not b!896068) tp_is_empty!18267 (not b!896113) (not b!896045) (not b!896046))
(check-sat b_and!26249 (not b_next!15939))
