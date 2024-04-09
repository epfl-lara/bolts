; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76608 () Bool)

(assert start!76608)

(declare-fun b!896981 () Bool)

(declare-fun b_free!15975 () Bool)

(declare-fun b_next!15975 () Bool)

(assert (=> b!896981 (= b_free!15975 (not b_next!15975))))

(declare-fun tp!55972 () Bool)

(declare-fun b_and!26285 () Bool)

(assert (=> b!896981 (= tp!55972 b_and!26285)))

(declare-fun mapIsEmpty!29086 () Bool)

(declare-fun mapRes!29086 () Bool)

(assert (=> mapIsEmpty!29086 mapRes!29086))

(declare-fun b!896977 () Bool)

(declare-fun e!501554 () Bool)

(declare-datatypes ((SeekEntryResult!8895 0))(
  ( (MissingZero!8895 (index!37950 (_ BitVec 32))) (Found!8895 (index!37951 (_ BitVec 32))) (Intermediate!8895 (undefined!9707 Bool) (index!37952 (_ BitVec 32)) (x!76403 (_ BitVec 32))) (Undefined!8895) (MissingVacant!8895 (index!37953 (_ BitVec 32))) )
))
(declare-fun lt!405017 () SeekEntryResult!8895)

(declare-datatypes ((array!52616 0))(
  ( (array!52617 (arr!25288 (Array (_ BitVec 32) (_ BitVec 64))) (size!25742 (_ BitVec 32))) )
))
(declare-datatypes ((V!29369 0))(
  ( (V!29370 (val!9202 Int)) )
))
(declare-datatypes ((ValueCell!8670 0))(
  ( (ValueCellFull!8670 (v!11689 V!29369)) (EmptyCell!8670) )
))
(declare-datatypes ((array!52618 0))(
  ( (array!52619 (arr!25289 (Array (_ BitVec 32) ValueCell!8670)) (size!25743 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4356 0))(
  ( (LongMapFixedSize!4357 (defaultEntry!5390 Int) (mask!26057 (_ BitVec 32)) (extraKeys!5097 (_ BitVec 32)) (zeroValue!5201 V!29369) (minValue!5201 V!29369) (_size!2233 (_ BitVec 32)) (_keys!10135 array!52616) (_values!5388 array!52618) (_vacant!2233 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4356)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896977 (= e!501554 (inRange!0 (index!37951 lt!405017) (mask!26057 thiss!1181)))))

(declare-fun b!896978 () Bool)

(declare-fun e!501553 () Bool)

(declare-fun e!501558 () Bool)

(assert (=> b!896978 (= e!501553 (and e!501558 mapRes!29086))))

(declare-fun condMapEmpty!29086 () Bool)

(declare-fun mapDefault!29086 () ValueCell!8670)

(assert (=> b!896978 (= condMapEmpty!29086 (= (arr!25289 (_values!5388 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8670)) mapDefault!29086)))))

(declare-fun mapNonEmpty!29086 () Bool)

(declare-fun tp!55971 () Bool)

(declare-fun e!501555 () Bool)

(assert (=> mapNonEmpty!29086 (= mapRes!29086 (and tp!55971 e!501555))))

(declare-fun mapValue!29086 () ValueCell!8670)

(declare-fun mapRest!29086 () (Array (_ BitVec 32) ValueCell!8670))

(declare-fun mapKey!29086 () (_ BitVec 32))

(assert (=> mapNonEmpty!29086 (= (arr!25289 (_values!5388 thiss!1181)) (store mapRest!29086 mapKey!29086 mapValue!29086))))

(declare-fun b!896979 () Bool)

(declare-fun e!501560 () Bool)

(declare-fun e!501552 () Bool)

(assert (=> b!896979 (= e!501560 (not e!501552))))

(declare-fun res!606488 () Bool)

(assert (=> b!896979 (=> res!606488 e!501552)))

(get-info :version)

(assert (=> b!896979 (= res!606488 (not ((_ is Found!8895) lt!405017)))))

(assert (=> b!896979 e!501554))

(declare-fun res!606487 () Bool)

(assert (=> b!896979 (=> res!606487 e!501554)))

(assert (=> b!896979 (= res!606487 (not ((_ is Found!8895) lt!405017)))))

(declare-datatypes ((Unit!30471 0))(
  ( (Unit!30472) )
))
(declare-fun lt!405016 () Unit!30471)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!84 (array!52616 array!52618 (_ BitVec 32) (_ BitVec 32) V!29369 V!29369 (_ BitVec 64)) Unit!30471)

(assert (=> b!896979 (= lt!405016 (lemmaSeekEntryGivesInRangeIndex!84 (_keys!10135 thiss!1181) (_values!5388 thiss!1181) (mask!26057 thiss!1181) (extraKeys!5097 thiss!1181) (zeroValue!5201 thiss!1181) (minValue!5201 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52616 (_ BitVec 32)) SeekEntryResult!8895)

(assert (=> b!896979 (= lt!405017 (seekEntry!0 key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(declare-fun res!606490 () Bool)

(assert (=> start!76608 (=> (not res!606490) (not e!501560))))

(declare-fun valid!1666 (LongMapFixedSize!4356) Bool)

(assert (=> start!76608 (= res!606490 (valid!1666 thiss!1181))))

(assert (=> start!76608 e!501560))

(declare-fun e!501559 () Bool)

(assert (=> start!76608 e!501559))

(assert (=> start!76608 true))

(declare-fun b!896980 () Bool)

(declare-fun e!501556 () Bool)

(assert (=> b!896980 (= e!501552 e!501556)))

(declare-fun res!606486 () Bool)

(assert (=> b!896980 (=> res!606486 e!501556)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896980 (= res!606486 (not (validMask!0 (mask!26057 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896980 (arrayContainsKey!0 (_keys!10135 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405018 () Unit!30471)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52616 (_ BitVec 64) (_ BitVec 32)) Unit!30471)

(assert (=> b!896980 (= lt!405018 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10135 thiss!1181) key!785 (index!37951 lt!405017)))))

(declare-fun tp_is_empty!18303 () Bool)

(declare-fun array_inv!19822 (array!52616) Bool)

(declare-fun array_inv!19823 (array!52618) Bool)

(assert (=> b!896981 (= e!501559 (and tp!55972 tp_is_empty!18303 (array_inv!19822 (_keys!10135 thiss!1181)) (array_inv!19823 (_values!5388 thiss!1181)) e!501553))))

(declare-fun b!896982 () Bool)

(assert (=> b!896982 (= e!501558 tp_is_empty!18303)))

(declare-fun b!896983 () Bool)

(assert (=> b!896983 (= e!501555 tp_is_empty!18303)))

(declare-fun b!896984 () Bool)

(assert (=> b!896984 (= e!501556 (or (not (= (size!25743 (_values!5388 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26057 thiss!1181)))) (not (= (size!25742 (_keys!10135 thiss!1181)) (size!25743 (_values!5388 thiss!1181)))) (bvslt (mask!26057 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5097 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!896985 () Bool)

(declare-fun res!606489 () Bool)

(assert (=> b!896985 (=> (not res!606489) (not e!501560))))

(assert (=> b!896985 (= res!606489 (not (= key!785 (bvneg key!785))))))

(assert (= (and start!76608 res!606490) b!896985))

(assert (= (and b!896985 res!606489) b!896979))

(assert (= (and b!896979 (not res!606487)) b!896977))

(assert (= (and b!896979 (not res!606488)) b!896980))

(assert (= (and b!896980 (not res!606486)) b!896984))

(assert (= (and b!896978 condMapEmpty!29086) mapIsEmpty!29086))

(assert (= (and b!896978 (not condMapEmpty!29086)) mapNonEmpty!29086))

(assert (= (and mapNonEmpty!29086 ((_ is ValueCellFull!8670) mapValue!29086)) b!896983))

(assert (= (and b!896978 ((_ is ValueCellFull!8670) mapDefault!29086)) b!896982))

(assert (= b!896981 b!896978))

(assert (= start!76608 b!896981))

(declare-fun m!834009 () Bool)

(assert (=> b!896981 m!834009))

(declare-fun m!834011 () Bool)

(assert (=> b!896981 m!834011))

(declare-fun m!834013 () Bool)

(assert (=> mapNonEmpty!29086 m!834013))

(declare-fun m!834015 () Bool)

(assert (=> start!76608 m!834015))

(declare-fun m!834017 () Bool)

(assert (=> b!896979 m!834017))

(declare-fun m!834019 () Bool)

(assert (=> b!896979 m!834019))

(declare-fun m!834021 () Bool)

(assert (=> b!896980 m!834021))

(declare-fun m!834023 () Bool)

(assert (=> b!896980 m!834023))

(declare-fun m!834025 () Bool)

(assert (=> b!896980 m!834025))

(declare-fun m!834027 () Bool)

(assert (=> b!896977 m!834027))

(check-sat (not b!896981) (not b!896980) (not start!76608) (not mapNonEmpty!29086) (not b_next!15975) b_and!26285 (not b!896979) (not b!896977) tp_is_empty!18303)
(check-sat b_and!26285 (not b_next!15975))
(get-model)

(declare-fun d!110955 () Bool)

(declare-fun e!501590 () Bool)

(assert (=> d!110955 e!501590))

(declare-fun res!606508 () Bool)

(assert (=> d!110955 (=> res!606508 e!501590)))

(declare-fun lt!405033 () SeekEntryResult!8895)

(assert (=> d!110955 (= res!606508 (not ((_ is Found!8895) lt!405033)))))

(assert (=> d!110955 (= lt!405033 (seekEntry!0 key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(declare-fun lt!405032 () Unit!30471)

(declare-fun choose!1490 (array!52616 array!52618 (_ BitVec 32) (_ BitVec 32) V!29369 V!29369 (_ BitVec 64)) Unit!30471)

(assert (=> d!110955 (= lt!405032 (choose!1490 (_keys!10135 thiss!1181) (_values!5388 thiss!1181) (mask!26057 thiss!1181) (extraKeys!5097 thiss!1181) (zeroValue!5201 thiss!1181) (minValue!5201 thiss!1181) key!785))))

(assert (=> d!110955 (validMask!0 (mask!26057 thiss!1181))))

(assert (=> d!110955 (= (lemmaSeekEntryGivesInRangeIndex!84 (_keys!10135 thiss!1181) (_values!5388 thiss!1181) (mask!26057 thiss!1181) (extraKeys!5097 thiss!1181) (zeroValue!5201 thiss!1181) (minValue!5201 thiss!1181) key!785) lt!405032)))

(declare-fun b!897015 () Bool)

(assert (=> b!897015 (= e!501590 (inRange!0 (index!37951 lt!405033) (mask!26057 thiss!1181)))))

(assert (= (and d!110955 (not res!606508)) b!897015))

(assert (=> d!110955 m!834019))

(declare-fun m!834049 () Bool)

(assert (=> d!110955 m!834049))

(assert (=> d!110955 m!834021))

(declare-fun m!834051 () Bool)

(assert (=> b!897015 m!834051))

(assert (=> b!896979 d!110955))

(declare-fun d!110957 () Bool)

(declare-fun lt!405044 () SeekEntryResult!8895)

(assert (=> d!110957 (and (or ((_ is MissingVacant!8895) lt!405044) (not ((_ is Found!8895) lt!405044)) (and (bvsge (index!37951 lt!405044) #b00000000000000000000000000000000) (bvslt (index!37951 lt!405044) (size!25742 (_keys!10135 thiss!1181))))) (not ((_ is MissingVacant!8895) lt!405044)) (or (not ((_ is Found!8895) lt!405044)) (= (select (arr!25288 (_keys!10135 thiss!1181)) (index!37951 lt!405044)) key!785)))))

(declare-fun e!501599 () SeekEntryResult!8895)

(assert (=> d!110957 (= lt!405044 e!501599)))

(declare-fun c!94705 () Bool)

(declare-fun lt!405042 () SeekEntryResult!8895)

(assert (=> d!110957 (= c!94705 (and ((_ is Intermediate!8895) lt!405042) (undefined!9707 lt!405042)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52616 (_ BitVec 32)) SeekEntryResult!8895)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110957 (= lt!405042 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26057 thiss!1181)) key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(assert (=> d!110957 (validMask!0 (mask!26057 thiss!1181))))

(assert (=> d!110957 (= (seekEntry!0 key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)) lt!405044)))

(declare-fun b!897028 () Bool)

(assert (=> b!897028 (= e!501599 Undefined!8895)))

(declare-fun b!897029 () Bool)

(declare-fun e!501598 () SeekEntryResult!8895)

(assert (=> b!897029 (= e!501598 (MissingZero!8895 (index!37952 lt!405042)))))

(declare-fun b!897030 () Bool)

(declare-fun lt!405045 () SeekEntryResult!8895)

(assert (=> b!897030 (= e!501598 (ite ((_ is MissingVacant!8895) lt!405045) (MissingZero!8895 (index!37953 lt!405045)) lt!405045))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52616 (_ BitVec 32)) SeekEntryResult!8895)

(assert (=> b!897030 (= lt!405045 (seekKeyOrZeroReturnVacant!0 (x!76403 lt!405042) (index!37952 lt!405042) (index!37952 lt!405042) key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(declare-fun b!897031 () Bool)

(declare-fun e!501597 () SeekEntryResult!8895)

(assert (=> b!897031 (= e!501597 (Found!8895 (index!37952 lt!405042)))))

(declare-fun b!897032 () Bool)

(declare-fun c!94703 () Bool)

(declare-fun lt!405043 () (_ BitVec 64))

(assert (=> b!897032 (= c!94703 (= lt!405043 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!897032 (= e!501597 e!501598)))

(declare-fun b!897033 () Bool)

(assert (=> b!897033 (= e!501599 e!501597)))

(assert (=> b!897033 (= lt!405043 (select (arr!25288 (_keys!10135 thiss!1181)) (index!37952 lt!405042)))))

(declare-fun c!94704 () Bool)

(assert (=> b!897033 (= c!94704 (= lt!405043 key!785))))

(assert (= (and d!110957 c!94705) b!897028))

(assert (= (and d!110957 (not c!94705)) b!897033))

(assert (= (and b!897033 c!94704) b!897031))

(assert (= (and b!897033 (not c!94704)) b!897032))

(assert (= (and b!897032 c!94703) b!897029))

(assert (= (and b!897032 (not c!94703)) b!897030))

(declare-fun m!834053 () Bool)

(assert (=> d!110957 m!834053))

(declare-fun m!834055 () Bool)

(assert (=> d!110957 m!834055))

(assert (=> d!110957 m!834055))

(declare-fun m!834057 () Bool)

(assert (=> d!110957 m!834057))

(assert (=> d!110957 m!834021))

(declare-fun m!834059 () Bool)

(assert (=> b!897030 m!834059))

(declare-fun m!834061 () Bool)

(assert (=> b!897033 m!834061))

(assert (=> b!896979 d!110957))

(declare-fun d!110959 () Bool)

(assert (=> d!110959 (= (validMask!0 (mask!26057 thiss!1181)) (and (or (= (mask!26057 thiss!1181) #b00000000000000000000000000000111) (= (mask!26057 thiss!1181) #b00000000000000000000000000001111) (= (mask!26057 thiss!1181) #b00000000000000000000000000011111) (= (mask!26057 thiss!1181) #b00000000000000000000000000111111) (= (mask!26057 thiss!1181) #b00000000000000000000000001111111) (= (mask!26057 thiss!1181) #b00000000000000000000000011111111) (= (mask!26057 thiss!1181) #b00000000000000000000000111111111) (= (mask!26057 thiss!1181) #b00000000000000000000001111111111) (= (mask!26057 thiss!1181) #b00000000000000000000011111111111) (= (mask!26057 thiss!1181) #b00000000000000000000111111111111) (= (mask!26057 thiss!1181) #b00000000000000000001111111111111) (= (mask!26057 thiss!1181) #b00000000000000000011111111111111) (= (mask!26057 thiss!1181) #b00000000000000000111111111111111) (= (mask!26057 thiss!1181) #b00000000000000001111111111111111) (= (mask!26057 thiss!1181) #b00000000000000011111111111111111) (= (mask!26057 thiss!1181) #b00000000000000111111111111111111) (= (mask!26057 thiss!1181) #b00000000000001111111111111111111) (= (mask!26057 thiss!1181) #b00000000000011111111111111111111) (= (mask!26057 thiss!1181) #b00000000000111111111111111111111) (= (mask!26057 thiss!1181) #b00000000001111111111111111111111) (= (mask!26057 thiss!1181) #b00000000011111111111111111111111) (= (mask!26057 thiss!1181) #b00000000111111111111111111111111) (= (mask!26057 thiss!1181) #b00000001111111111111111111111111) (= (mask!26057 thiss!1181) #b00000011111111111111111111111111) (= (mask!26057 thiss!1181) #b00000111111111111111111111111111) (= (mask!26057 thiss!1181) #b00001111111111111111111111111111) (= (mask!26057 thiss!1181) #b00011111111111111111111111111111) (= (mask!26057 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26057 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!896980 d!110959))

(declare-fun d!110961 () Bool)

(declare-fun res!606513 () Bool)

(declare-fun e!501604 () Bool)

(assert (=> d!110961 (=> res!606513 e!501604)))

(assert (=> d!110961 (= res!606513 (= (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110961 (= (arrayContainsKey!0 (_keys!10135 thiss!1181) key!785 #b00000000000000000000000000000000) e!501604)))

(declare-fun b!897038 () Bool)

(declare-fun e!501605 () Bool)

(assert (=> b!897038 (= e!501604 e!501605)))

(declare-fun res!606514 () Bool)

(assert (=> b!897038 (=> (not res!606514) (not e!501605))))

(assert (=> b!897038 (= res!606514 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25742 (_keys!10135 thiss!1181))))))

(declare-fun b!897039 () Bool)

(assert (=> b!897039 (= e!501605 (arrayContainsKey!0 (_keys!10135 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110961 (not res!606513)) b!897038))

(assert (= (and b!897038 res!606514) b!897039))

(declare-fun m!834063 () Bool)

(assert (=> d!110961 m!834063))

(declare-fun m!834065 () Bool)

(assert (=> b!897039 m!834065))

(assert (=> b!896980 d!110961))

(declare-fun d!110963 () Bool)

(assert (=> d!110963 (arrayContainsKey!0 (_keys!10135 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405048 () Unit!30471)

(declare-fun choose!13 (array!52616 (_ BitVec 64) (_ BitVec 32)) Unit!30471)

(assert (=> d!110963 (= lt!405048 (choose!13 (_keys!10135 thiss!1181) key!785 (index!37951 lt!405017)))))

(assert (=> d!110963 (bvsge (index!37951 lt!405017) #b00000000000000000000000000000000)))

(assert (=> d!110963 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10135 thiss!1181) key!785 (index!37951 lt!405017)) lt!405048)))

(declare-fun bs!25176 () Bool)

(assert (= bs!25176 d!110963))

(assert (=> bs!25176 m!834023))

(declare-fun m!834067 () Bool)

(assert (=> bs!25176 m!834067))

(assert (=> b!896980 d!110963))

(declare-fun d!110965 () Bool)

(assert (=> d!110965 (= (inRange!0 (index!37951 lt!405017) (mask!26057 thiss!1181)) (and (bvsge (index!37951 lt!405017) #b00000000000000000000000000000000) (bvslt (index!37951 lt!405017) (bvadd (mask!26057 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!896977 d!110965))

(declare-fun d!110967 () Bool)

(declare-fun res!606521 () Bool)

(declare-fun e!501608 () Bool)

(assert (=> d!110967 (=> (not res!606521) (not e!501608))))

(declare-fun simpleValid!316 (LongMapFixedSize!4356) Bool)

(assert (=> d!110967 (= res!606521 (simpleValid!316 thiss!1181))))

(assert (=> d!110967 (= (valid!1666 thiss!1181) e!501608)))

(declare-fun b!897046 () Bool)

(declare-fun res!606522 () Bool)

(assert (=> b!897046 (=> (not res!606522) (not e!501608))))

(declare-fun arrayCountValidKeys!0 (array!52616 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!897046 (= res!606522 (= (arrayCountValidKeys!0 (_keys!10135 thiss!1181) #b00000000000000000000000000000000 (size!25742 (_keys!10135 thiss!1181))) (_size!2233 thiss!1181)))))

(declare-fun b!897047 () Bool)

(declare-fun res!606523 () Bool)

(assert (=> b!897047 (=> (not res!606523) (not e!501608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52616 (_ BitVec 32)) Bool)

(assert (=> b!897047 (= res!606523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(declare-fun b!897048 () Bool)

(declare-datatypes ((List!17904 0))(
  ( (Nil!17901) (Cons!17900 (h!19040 (_ BitVec 64)) (t!25251 List!17904)) )
))
(declare-fun arrayNoDuplicates!0 (array!52616 (_ BitVec 32) List!17904) Bool)

(assert (=> b!897048 (= e!501608 (arrayNoDuplicates!0 (_keys!10135 thiss!1181) #b00000000000000000000000000000000 Nil!17901))))

(assert (= (and d!110967 res!606521) b!897046))

(assert (= (and b!897046 res!606522) b!897047))

(assert (= (and b!897047 res!606523) b!897048))

(declare-fun m!834069 () Bool)

(assert (=> d!110967 m!834069))

(declare-fun m!834071 () Bool)

(assert (=> b!897046 m!834071))

(declare-fun m!834073 () Bool)

(assert (=> b!897047 m!834073))

(declare-fun m!834075 () Bool)

(assert (=> b!897048 m!834075))

(assert (=> start!76608 d!110967))

(declare-fun d!110969 () Bool)

(assert (=> d!110969 (= (array_inv!19822 (_keys!10135 thiss!1181)) (bvsge (size!25742 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896981 d!110969))

(declare-fun d!110971 () Bool)

(assert (=> d!110971 (= (array_inv!19823 (_values!5388 thiss!1181)) (bvsge (size!25743 (_values!5388 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896981 d!110971))

(declare-fun mapNonEmpty!29092 () Bool)

(declare-fun mapRes!29092 () Bool)

(declare-fun tp!55981 () Bool)

(declare-fun e!501614 () Bool)

(assert (=> mapNonEmpty!29092 (= mapRes!29092 (and tp!55981 e!501614))))

(declare-fun mapRest!29092 () (Array (_ BitVec 32) ValueCell!8670))

(declare-fun mapValue!29092 () ValueCell!8670)

(declare-fun mapKey!29092 () (_ BitVec 32))

(assert (=> mapNonEmpty!29092 (= mapRest!29086 (store mapRest!29092 mapKey!29092 mapValue!29092))))

(declare-fun b!897056 () Bool)

(declare-fun e!501613 () Bool)

(assert (=> b!897056 (= e!501613 tp_is_empty!18303)))

(declare-fun condMapEmpty!29092 () Bool)

(declare-fun mapDefault!29092 () ValueCell!8670)

(assert (=> mapNonEmpty!29086 (= condMapEmpty!29092 (= mapRest!29086 ((as const (Array (_ BitVec 32) ValueCell!8670)) mapDefault!29092)))))

(assert (=> mapNonEmpty!29086 (= tp!55971 (and e!501613 mapRes!29092))))

(declare-fun mapIsEmpty!29092 () Bool)

(assert (=> mapIsEmpty!29092 mapRes!29092))

(declare-fun b!897055 () Bool)

(assert (=> b!897055 (= e!501614 tp_is_empty!18303)))

(assert (= (and mapNonEmpty!29086 condMapEmpty!29092) mapIsEmpty!29092))

(assert (= (and mapNonEmpty!29086 (not condMapEmpty!29092)) mapNonEmpty!29092))

(assert (= (and mapNonEmpty!29092 ((_ is ValueCellFull!8670) mapValue!29092)) b!897055))

(assert (= (and mapNonEmpty!29086 ((_ is ValueCellFull!8670) mapDefault!29092)) b!897056))

(declare-fun m!834077 () Bool)

(assert (=> mapNonEmpty!29092 m!834077))

(check-sat (not b!897048) (not b!897047) (not mapNonEmpty!29092) (not b!897030) (not b_next!15975) (not b!897046) (not d!110967) (not d!110957) tp_is_empty!18303 (not b!897039) (not d!110955) (not d!110963) (not b!897015) b_and!26285)
(check-sat b_and!26285 (not b_next!15975))
(get-model)

(declare-fun b!897067 () Bool)

(declare-fun e!501625 () Bool)

(declare-fun e!501624 () Bool)

(assert (=> b!897067 (= e!501625 e!501624)))

(declare-fun res!606532 () Bool)

(assert (=> b!897067 (=> (not res!606532) (not e!501624))))

(declare-fun e!501626 () Bool)

(assert (=> b!897067 (= res!606532 (not e!501626))))

(declare-fun res!606531 () Bool)

(assert (=> b!897067 (=> (not res!606531) (not e!501626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!897067 (= res!606531 (validKeyInArray!0 (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897068 () Bool)

(declare-fun e!501623 () Bool)

(declare-fun call!39799 () Bool)

(assert (=> b!897068 (= e!501623 call!39799)))

(declare-fun bm!39796 () Bool)

(declare-fun c!94708 () Bool)

(assert (=> bm!39796 (= call!39799 (arrayNoDuplicates!0 (_keys!10135 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94708 (Cons!17900 (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000) Nil!17901) Nil!17901)))))

(declare-fun b!897069 () Bool)

(declare-fun contains!4391 (List!17904 (_ BitVec 64)) Bool)

(assert (=> b!897069 (= e!501626 (contains!4391 Nil!17901 (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897070 () Bool)

(assert (=> b!897070 (= e!501623 call!39799)))

(declare-fun b!897071 () Bool)

(assert (=> b!897071 (= e!501624 e!501623)))

(assert (=> b!897071 (= c!94708 (validKeyInArray!0 (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110973 () Bool)

(declare-fun res!606530 () Bool)

(assert (=> d!110973 (=> res!606530 e!501625)))

(assert (=> d!110973 (= res!606530 (bvsge #b00000000000000000000000000000000 (size!25742 (_keys!10135 thiss!1181))))))

(assert (=> d!110973 (= (arrayNoDuplicates!0 (_keys!10135 thiss!1181) #b00000000000000000000000000000000 Nil!17901) e!501625)))

(assert (= (and d!110973 (not res!606530)) b!897067))

(assert (= (and b!897067 res!606531) b!897069))

(assert (= (and b!897067 res!606532) b!897071))

(assert (= (and b!897071 c!94708) b!897068))

(assert (= (and b!897071 (not c!94708)) b!897070))

(assert (= (or b!897068 b!897070) bm!39796))

(assert (=> b!897067 m!834063))

(assert (=> b!897067 m!834063))

(declare-fun m!834079 () Bool)

(assert (=> b!897067 m!834079))

(assert (=> bm!39796 m!834063))

(declare-fun m!834081 () Bool)

(assert (=> bm!39796 m!834081))

(assert (=> b!897069 m!834063))

(assert (=> b!897069 m!834063))

(declare-fun m!834083 () Bool)

(assert (=> b!897069 m!834083))

(assert (=> b!897071 m!834063))

(assert (=> b!897071 m!834063))

(assert (=> b!897071 m!834079))

(assert (=> b!897048 d!110973))

(assert (=> d!110963 d!110961))

(declare-fun d!110975 () Bool)

(assert (=> d!110975 (arrayContainsKey!0 (_keys!10135 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!110975 true))

(declare-fun _$60!412 () Unit!30471)

(assert (=> d!110975 (= (choose!13 (_keys!10135 thiss!1181) key!785 (index!37951 lt!405017)) _$60!412)))

(declare-fun bs!25177 () Bool)

(assert (= bs!25177 d!110975))

(assert (=> bs!25177 m!834023))

(assert (=> d!110963 d!110975))

(declare-fun d!110977 () Bool)

(assert (=> d!110977 (= (inRange!0 (index!37951 lt!405033) (mask!26057 thiss!1181)) (and (bvsge (index!37951 lt!405033) #b00000000000000000000000000000000) (bvslt (index!37951 lt!405033) (bvadd (mask!26057 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!897015 d!110977))

(declare-fun b!897090 () Bool)

(declare-fun e!501641 () Bool)

(declare-fun e!501639 () Bool)

(assert (=> b!897090 (= e!501641 e!501639)))

(declare-fun res!606540 () Bool)

(declare-fun lt!405054 () SeekEntryResult!8895)

(assert (=> b!897090 (= res!606540 (and ((_ is Intermediate!8895) lt!405054) (not (undefined!9707 lt!405054)) (bvslt (x!76403 lt!405054) #b01111111111111111111111111111110) (bvsge (x!76403 lt!405054) #b00000000000000000000000000000000) (bvsge (x!76403 lt!405054) #b00000000000000000000000000000000)))))

(assert (=> b!897090 (=> (not res!606540) (not e!501639))))

(declare-fun b!897092 () Bool)

(assert (=> b!897092 (and (bvsge (index!37952 lt!405054) #b00000000000000000000000000000000) (bvslt (index!37952 lt!405054) (size!25742 (_keys!10135 thiss!1181))))))

(declare-fun e!501638 () Bool)

(assert (=> b!897092 (= e!501638 (= (select (arr!25288 (_keys!10135 thiss!1181)) (index!37952 lt!405054)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!897093 () Bool)

(declare-fun e!501637 () SeekEntryResult!8895)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!897093 (= e!501637 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!26057 thiss!1181)) #b00000000000000000000000000000000 (mask!26057 thiss!1181)) key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(declare-fun b!897094 () Bool)

(assert (=> b!897094 (and (bvsge (index!37952 lt!405054) #b00000000000000000000000000000000) (bvslt (index!37952 lt!405054) (size!25742 (_keys!10135 thiss!1181))))))

(declare-fun res!606541 () Bool)

(assert (=> b!897094 (= res!606541 (= (select (arr!25288 (_keys!10135 thiss!1181)) (index!37952 lt!405054)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!897094 (=> res!606541 e!501638)))

(declare-fun d!110979 () Bool)

(assert (=> d!110979 e!501641))

(declare-fun c!94715 () Bool)

(assert (=> d!110979 (= c!94715 (and ((_ is Intermediate!8895) lt!405054) (undefined!9707 lt!405054)))))

(declare-fun e!501640 () SeekEntryResult!8895)

(assert (=> d!110979 (= lt!405054 e!501640)))

(declare-fun c!94716 () Bool)

(assert (=> d!110979 (= c!94716 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!405053 () (_ BitVec 64))

(assert (=> d!110979 (= lt!405053 (select (arr!25288 (_keys!10135 thiss!1181)) (toIndex!0 key!785 (mask!26057 thiss!1181))))))

(assert (=> d!110979 (validMask!0 (mask!26057 thiss!1181))))

(assert (=> d!110979 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26057 thiss!1181)) key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)) lt!405054)))

(declare-fun b!897091 () Bool)

(assert (=> b!897091 (= e!501640 e!501637)))

(declare-fun c!94717 () Bool)

(assert (=> b!897091 (= c!94717 (or (= lt!405053 key!785) (= (bvadd lt!405053 lt!405053) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!897095 () Bool)

(assert (=> b!897095 (= e!501641 (bvsge (x!76403 lt!405054) #b01111111111111111111111111111110))))

(declare-fun b!897096 () Bool)

(assert (=> b!897096 (= e!501637 (Intermediate!8895 false (toIndex!0 key!785 (mask!26057 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!897097 () Bool)

(assert (=> b!897097 (and (bvsge (index!37952 lt!405054) #b00000000000000000000000000000000) (bvslt (index!37952 lt!405054) (size!25742 (_keys!10135 thiss!1181))))))

(declare-fun res!606539 () Bool)

(assert (=> b!897097 (= res!606539 (= (select (arr!25288 (_keys!10135 thiss!1181)) (index!37952 lt!405054)) key!785))))

(assert (=> b!897097 (=> res!606539 e!501638)))

(assert (=> b!897097 (= e!501639 e!501638)))

(declare-fun b!897098 () Bool)

(assert (=> b!897098 (= e!501640 (Intermediate!8895 true (toIndex!0 key!785 (mask!26057 thiss!1181)) #b00000000000000000000000000000000))))

(assert (= (and d!110979 c!94716) b!897098))

(assert (= (and d!110979 (not c!94716)) b!897091))

(assert (= (and b!897091 c!94717) b!897096))

(assert (= (and b!897091 (not c!94717)) b!897093))

(assert (= (and d!110979 c!94715) b!897095))

(assert (= (and d!110979 (not c!94715)) b!897090))

(assert (= (and b!897090 res!606540) b!897097))

(assert (= (and b!897097 (not res!606539)) b!897094))

(assert (= (and b!897094 (not res!606541)) b!897092))

(assert (=> b!897093 m!834055))

(declare-fun m!834085 () Bool)

(assert (=> b!897093 m!834085))

(assert (=> b!897093 m!834085))

(declare-fun m!834087 () Bool)

(assert (=> b!897093 m!834087))

(assert (=> d!110979 m!834055))

(declare-fun m!834089 () Bool)

(assert (=> d!110979 m!834089))

(assert (=> d!110979 m!834021))

(declare-fun m!834091 () Bool)

(assert (=> b!897094 m!834091))

(assert (=> b!897097 m!834091))

(assert (=> b!897092 m!834091))

(assert (=> d!110957 d!110979))

(declare-fun d!110981 () Bool)

(declare-fun lt!405060 () (_ BitVec 32))

(declare-fun lt!405059 () (_ BitVec 32))

(assert (=> d!110981 (= lt!405060 (bvmul (bvxor lt!405059 (bvlshr lt!405059 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110981 (= lt!405059 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110981 (and (bvsge (mask!26057 thiss!1181) #b00000000000000000000000000000000) (let ((res!606542 (let ((h!19041 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76420 (bvmul (bvxor h!19041 (bvlshr h!19041 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76420 (bvlshr x!76420 #b00000000000000000000000000001101)) (mask!26057 thiss!1181)))))) (and (bvslt res!606542 (bvadd (mask!26057 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!606542 #b00000000000000000000000000000000))))))

(assert (=> d!110981 (= (toIndex!0 key!785 (mask!26057 thiss!1181)) (bvand (bvxor lt!405060 (bvlshr lt!405060 #b00000000000000000000000000001101)) (mask!26057 thiss!1181)))))

(assert (=> d!110957 d!110981))

(assert (=> d!110957 d!110959))

(declare-fun b!897108 () Bool)

(declare-fun res!606551 () Bool)

(declare-fun e!501644 () Bool)

(assert (=> b!897108 (=> (not res!606551) (not e!501644))))

(declare-fun size!25746 (LongMapFixedSize!4356) (_ BitVec 32))

(assert (=> b!897108 (= res!606551 (bvsge (size!25746 thiss!1181) (_size!2233 thiss!1181)))))

(declare-fun d!110983 () Bool)

(declare-fun res!606554 () Bool)

(assert (=> d!110983 (=> (not res!606554) (not e!501644))))

(assert (=> d!110983 (= res!606554 (validMask!0 (mask!26057 thiss!1181)))))

(assert (=> d!110983 (= (simpleValid!316 thiss!1181) e!501644)))

(declare-fun b!897109 () Bool)

(declare-fun res!606553 () Bool)

(assert (=> b!897109 (=> (not res!606553) (not e!501644))))

(assert (=> b!897109 (= res!606553 (= (size!25746 thiss!1181) (bvadd (_size!2233 thiss!1181) (bvsdiv (bvadd (extraKeys!5097 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!897110 () Bool)

(assert (=> b!897110 (= e!501644 (and (bvsge (extraKeys!5097 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5097 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2233 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!897107 () Bool)

(declare-fun res!606552 () Bool)

(assert (=> b!897107 (=> (not res!606552) (not e!501644))))

(assert (=> b!897107 (= res!606552 (and (= (size!25743 (_values!5388 thiss!1181)) (bvadd (mask!26057 thiss!1181) #b00000000000000000000000000000001)) (= (size!25742 (_keys!10135 thiss!1181)) (size!25743 (_values!5388 thiss!1181))) (bvsge (_size!2233 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2233 thiss!1181) (bvadd (mask!26057 thiss!1181) #b00000000000000000000000000000001))))))

(assert (= (and d!110983 res!606554) b!897107))

(assert (= (and b!897107 res!606552) b!897108))

(assert (= (and b!897108 res!606551) b!897109))

(assert (= (and b!897109 res!606553) b!897110))

(declare-fun m!834093 () Bool)

(assert (=> b!897108 m!834093))

(assert (=> d!110983 m!834021))

(assert (=> b!897109 m!834093))

(assert (=> d!110967 d!110983))

(declare-fun b!897119 () Bool)

(declare-fun e!501649 () (_ BitVec 32))

(declare-fun call!39802 () (_ BitVec 32))

(assert (=> b!897119 (= e!501649 call!39802)))

(declare-fun d!110985 () Bool)

(declare-fun lt!405063 () (_ BitVec 32))

(assert (=> d!110985 (and (bvsge lt!405063 #b00000000000000000000000000000000) (bvsle lt!405063 (bvsub (size!25742 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!501650 () (_ BitVec 32))

(assert (=> d!110985 (= lt!405063 e!501650)))

(declare-fun c!94722 () Bool)

(assert (=> d!110985 (= c!94722 (bvsge #b00000000000000000000000000000000 (size!25742 (_keys!10135 thiss!1181))))))

(assert (=> d!110985 (and (bvsle #b00000000000000000000000000000000 (size!25742 (_keys!10135 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25742 (_keys!10135 thiss!1181)) (size!25742 (_keys!10135 thiss!1181))))))

(assert (=> d!110985 (= (arrayCountValidKeys!0 (_keys!10135 thiss!1181) #b00000000000000000000000000000000 (size!25742 (_keys!10135 thiss!1181))) lt!405063)))

(declare-fun bm!39799 () Bool)

(assert (=> bm!39799 (= call!39802 (arrayCountValidKeys!0 (_keys!10135 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25742 (_keys!10135 thiss!1181))))))

(declare-fun b!897120 () Bool)

(assert (=> b!897120 (= e!501650 #b00000000000000000000000000000000)))

(declare-fun b!897121 () Bool)

(assert (=> b!897121 (= e!501649 (bvadd #b00000000000000000000000000000001 call!39802))))

(declare-fun b!897122 () Bool)

(assert (=> b!897122 (= e!501650 e!501649)))

(declare-fun c!94723 () Bool)

(assert (=> b!897122 (= c!94723 (validKeyInArray!0 (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110985 c!94722) b!897120))

(assert (= (and d!110985 (not c!94722)) b!897122))

(assert (= (and b!897122 c!94723) b!897121))

(assert (= (and b!897122 (not c!94723)) b!897119))

(assert (= (or b!897121 b!897119) bm!39799))

(declare-fun m!834095 () Bool)

(assert (=> bm!39799 m!834095))

(assert (=> b!897122 m!834063))

(assert (=> b!897122 m!834063))

(assert (=> b!897122 m!834079))

(assert (=> b!897046 d!110985))

(assert (=> d!110955 d!110957))

(declare-fun d!110987 () Bool)

(declare-fun e!501653 () Bool)

(assert (=> d!110987 e!501653))

(declare-fun res!606557 () Bool)

(assert (=> d!110987 (=> res!606557 e!501653)))

(declare-fun lt!405066 () SeekEntryResult!8895)

(assert (=> d!110987 (= res!606557 (not ((_ is Found!8895) lt!405066)))))

(assert (=> d!110987 (= lt!405066 (seekEntry!0 key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(assert (=> d!110987 true))

(declare-fun _$36!360 () Unit!30471)

(assert (=> d!110987 (= (choose!1490 (_keys!10135 thiss!1181) (_values!5388 thiss!1181) (mask!26057 thiss!1181) (extraKeys!5097 thiss!1181) (zeroValue!5201 thiss!1181) (minValue!5201 thiss!1181) key!785) _$36!360)))

(declare-fun b!897125 () Bool)

(assert (=> b!897125 (= e!501653 (inRange!0 (index!37951 lt!405066) (mask!26057 thiss!1181)))))

(assert (= (and d!110987 (not res!606557)) b!897125))

(assert (=> d!110987 m!834019))

(declare-fun m!834097 () Bool)

(assert (=> b!897125 m!834097))

(assert (=> d!110955 d!110987))

(assert (=> d!110955 d!110959))

(declare-fun e!501662 () SeekEntryResult!8895)

(declare-fun b!897138 () Bool)

(assert (=> b!897138 (= e!501662 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76403 lt!405042) #b00000000000000000000000000000001) (nextIndex!0 (index!37952 lt!405042) (x!76403 lt!405042) (mask!26057 thiss!1181)) (index!37952 lt!405042) key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(declare-fun d!110989 () Bool)

(declare-fun lt!405071 () SeekEntryResult!8895)

(assert (=> d!110989 (and (or ((_ is Undefined!8895) lt!405071) (not ((_ is Found!8895) lt!405071)) (and (bvsge (index!37951 lt!405071) #b00000000000000000000000000000000) (bvslt (index!37951 lt!405071) (size!25742 (_keys!10135 thiss!1181))))) (or ((_ is Undefined!8895) lt!405071) ((_ is Found!8895) lt!405071) (not ((_ is MissingVacant!8895) lt!405071)) (not (= (index!37953 lt!405071) (index!37952 lt!405042))) (and (bvsge (index!37953 lt!405071) #b00000000000000000000000000000000) (bvslt (index!37953 lt!405071) (size!25742 (_keys!10135 thiss!1181))))) (or ((_ is Undefined!8895) lt!405071) (ite ((_ is Found!8895) lt!405071) (= (select (arr!25288 (_keys!10135 thiss!1181)) (index!37951 lt!405071)) key!785) (and ((_ is MissingVacant!8895) lt!405071) (= (index!37953 lt!405071) (index!37952 lt!405042)) (= (select (arr!25288 (_keys!10135 thiss!1181)) (index!37953 lt!405071)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!501660 () SeekEntryResult!8895)

(assert (=> d!110989 (= lt!405071 e!501660)))

(declare-fun c!94732 () Bool)

(assert (=> d!110989 (= c!94732 (bvsge (x!76403 lt!405042) #b01111111111111111111111111111110))))

(declare-fun lt!405072 () (_ BitVec 64))

(assert (=> d!110989 (= lt!405072 (select (arr!25288 (_keys!10135 thiss!1181)) (index!37952 lt!405042)))))

(assert (=> d!110989 (validMask!0 (mask!26057 thiss!1181))))

(assert (=> d!110989 (= (seekKeyOrZeroReturnVacant!0 (x!76403 lt!405042) (index!37952 lt!405042) (index!37952 lt!405042) key!785 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)) lt!405071)))

(declare-fun b!897139 () Bool)

(declare-fun e!501661 () SeekEntryResult!8895)

(assert (=> b!897139 (= e!501661 (Found!8895 (index!37952 lt!405042)))))

(declare-fun b!897140 () Bool)

(assert (=> b!897140 (= e!501662 (MissingVacant!8895 (index!37952 lt!405042)))))

(declare-fun b!897141 () Bool)

(assert (=> b!897141 (= e!501660 Undefined!8895)))

(declare-fun b!897142 () Bool)

(declare-fun c!94731 () Bool)

(assert (=> b!897142 (= c!94731 (= lt!405072 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!897142 (= e!501661 e!501662)))

(declare-fun b!897143 () Bool)

(assert (=> b!897143 (= e!501660 e!501661)))

(declare-fun c!94730 () Bool)

(assert (=> b!897143 (= c!94730 (= lt!405072 key!785))))

(assert (= (and d!110989 c!94732) b!897141))

(assert (= (and d!110989 (not c!94732)) b!897143))

(assert (= (and b!897143 c!94730) b!897139))

(assert (= (and b!897143 (not c!94730)) b!897142))

(assert (= (and b!897142 c!94731) b!897140))

(assert (= (and b!897142 (not c!94731)) b!897138))

(declare-fun m!834099 () Bool)

(assert (=> b!897138 m!834099))

(assert (=> b!897138 m!834099))

(declare-fun m!834101 () Bool)

(assert (=> b!897138 m!834101))

(declare-fun m!834103 () Bool)

(assert (=> d!110989 m!834103))

(declare-fun m!834105 () Bool)

(assert (=> d!110989 m!834105))

(assert (=> d!110989 m!834061))

(assert (=> d!110989 m!834021))

(assert (=> b!897030 d!110989))

(declare-fun b!897152 () Bool)

(declare-fun e!501671 () Bool)

(declare-fun e!501669 () Bool)

(assert (=> b!897152 (= e!501671 e!501669)))

(declare-fun c!94735 () Bool)

(assert (=> b!897152 (= c!94735 (validKeyInArray!0 (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39802 () Bool)

(declare-fun call!39805 () Bool)

(assert (=> bm!39802 (= call!39805 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10135 thiss!1181) (mask!26057 thiss!1181)))))

(declare-fun b!897153 () Bool)

(declare-fun e!501670 () Bool)

(assert (=> b!897153 (= e!501669 e!501670)))

(declare-fun lt!405081 () (_ BitVec 64))

(assert (=> b!897153 (= lt!405081 (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405079 () Unit!30471)

(assert (=> b!897153 (= lt!405079 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10135 thiss!1181) lt!405081 #b00000000000000000000000000000000))))

(assert (=> b!897153 (arrayContainsKey!0 (_keys!10135 thiss!1181) lt!405081 #b00000000000000000000000000000000)))

(declare-fun lt!405080 () Unit!30471)

(assert (=> b!897153 (= lt!405080 lt!405079)))

(declare-fun res!606563 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52616 (_ BitVec 32)) SeekEntryResult!8895)

(assert (=> b!897153 (= res!606563 (= (seekEntryOrOpen!0 (select (arr!25288 (_keys!10135 thiss!1181)) #b00000000000000000000000000000000) (_keys!10135 thiss!1181) (mask!26057 thiss!1181)) (Found!8895 #b00000000000000000000000000000000)))))

(assert (=> b!897153 (=> (not res!606563) (not e!501670))))

(declare-fun d!110991 () Bool)

(declare-fun res!606562 () Bool)

(assert (=> d!110991 (=> res!606562 e!501671)))

(assert (=> d!110991 (= res!606562 (bvsge #b00000000000000000000000000000000 (size!25742 (_keys!10135 thiss!1181))))))

(assert (=> d!110991 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10135 thiss!1181) (mask!26057 thiss!1181)) e!501671)))

(declare-fun b!897154 () Bool)

(assert (=> b!897154 (= e!501669 call!39805)))

(declare-fun b!897155 () Bool)

(assert (=> b!897155 (= e!501670 call!39805)))

(assert (= (and d!110991 (not res!606562)) b!897152))

(assert (= (and b!897152 c!94735) b!897153))

(assert (= (and b!897152 (not c!94735)) b!897154))

(assert (= (and b!897153 res!606563) b!897155))

(assert (= (or b!897155 b!897154) bm!39802))

(assert (=> b!897152 m!834063))

(assert (=> b!897152 m!834063))

(assert (=> b!897152 m!834079))

(declare-fun m!834107 () Bool)

(assert (=> bm!39802 m!834107))

(assert (=> b!897153 m!834063))

(declare-fun m!834109 () Bool)

(assert (=> b!897153 m!834109))

(declare-fun m!834111 () Bool)

(assert (=> b!897153 m!834111))

(assert (=> b!897153 m!834063))

(declare-fun m!834113 () Bool)

(assert (=> b!897153 m!834113))

(assert (=> b!897047 d!110991))

(declare-fun d!110993 () Bool)

(declare-fun res!606564 () Bool)

(declare-fun e!501672 () Bool)

(assert (=> d!110993 (=> res!606564 e!501672)))

(assert (=> d!110993 (= res!606564 (= (select (arr!25288 (_keys!10135 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!110993 (= (arrayContainsKey!0 (_keys!10135 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!501672)))

(declare-fun b!897156 () Bool)

(declare-fun e!501673 () Bool)

(assert (=> b!897156 (= e!501672 e!501673)))

(declare-fun res!606565 () Bool)

(assert (=> b!897156 (=> (not res!606565) (not e!501673))))

(assert (=> b!897156 (= res!606565 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25742 (_keys!10135 thiss!1181))))))

(declare-fun b!897157 () Bool)

(assert (=> b!897157 (= e!501673 (arrayContainsKey!0 (_keys!10135 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!110993 (not res!606564)) b!897156))

(assert (= (and b!897156 res!606565) b!897157))

(declare-fun m!834115 () Bool)

(assert (=> d!110993 m!834115))

(declare-fun m!834117 () Bool)

(assert (=> b!897157 m!834117))

(assert (=> b!897039 d!110993))

(declare-fun mapNonEmpty!29093 () Bool)

(declare-fun mapRes!29093 () Bool)

(declare-fun tp!55982 () Bool)

(declare-fun e!501675 () Bool)

(assert (=> mapNonEmpty!29093 (= mapRes!29093 (and tp!55982 e!501675))))

(declare-fun mapValue!29093 () ValueCell!8670)

(declare-fun mapRest!29093 () (Array (_ BitVec 32) ValueCell!8670))

(declare-fun mapKey!29093 () (_ BitVec 32))

(assert (=> mapNonEmpty!29093 (= mapRest!29092 (store mapRest!29093 mapKey!29093 mapValue!29093))))

(declare-fun b!897159 () Bool)

(declare-fun e!501674 () Bool)

(assert (=> b!897159 (= e!501674 tp_is_empty!18303)))

(declare-fun condMapEmpty!29093 () Bool)

(declare-fun mapDefault!29093 () ValueCell!8670)

(assert (=> mapNonEmpty!29092 (= condMapEmpty!29093 (= mapRest!29092 ((as const (Array (_ BitVec 32) ValueCell!8670)) mapDefault!29093)))))

(assert (=> mapNonEmpty!29092 (= tp!55981 (and e!501674 mapRes!29093))))

(declare-fun mapIsEmpty!29093 () Bool)

(assert (=> mapIsEmpty!29093 mapRes!29093))

(declare-fun b!897158 () Bool)

(assert (=> b!897158 (= e!501675 tp_is_empty!18303)))

(assert (= (and mapNonEmpty!29092 condMapEmpty!29093) mapIsEmpty!29093))

(assert (= (and mapNonEmpty!29092 (not condMapEmpty!29093)) mapNonEmpty!29093))

(assert (= (and mapNonEmpty!29093 ((_ is ValueCellFull!8670) mapValue!29093)) b!897158))

(assert (= (and mapNonEmpty!29092 ((_ is ValueCellFull!8670) mapDefault!29093)) b!897159))

(declare-fun m!834119 () Bool)

(assert (=> mapNonEmpty!29093 m!834119))

(check-sat (not bm!39796) (not bm!39802) (not b!897152) (not b!897109) (not b!897153) (not b!897122) (not b!897138) (not d!110975) (not b!897157) (not d!110983) tp_is_empty!18303 (not d!110989) (not b!897069) (not d!110979) (not b!897108) (not bm!39799) (not b!897071) (not b_next!15975) (not b!897125) (not b!897067) b_and!26285 (not mapNonEmpty!29093) (not d!110987) (not b!897093))
(check-sat b_and!26285 (not b_next!15975))
