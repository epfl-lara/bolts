; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16368 () Bool)

(assert start!16368)

(declare-fun b!163034 () Bool)

(declare-fun b_free!3783 () Bool)

(declare-fun b_next!3783 () Bool)

(assert (=> b!163034 (= b_free!3783 (not b_next!3783))))

(declare-fun tp!13925 () Bool)

(declare-fun b_and!10215 () Bool)

(assert (=> b!163034 (= tp!13925 b_and!10215)))

(declare-fun b!163027 () Bool)

(declare-fun e!106960 () Bool)

(declare-fun tp_is_empty!3585 () Bool)

(assert (=> b!163027 (= e!106960 tp_is_empty!3585)))

(declare-fun mapNonEmpty!6072 () Bool)

(declare-fun mapRes!6072 () Bool)

(declare-fun tp!13926 () Bool)

(assert (=> mapNonEmpty!6072 (= mapRes!6072 (and tp!13926 e!106960))))

(declare-datatypes ((V!4427 0))(
  ( (V!4428 (val!1837 Int)) )
))
(declare-datatypes ((ValueCell!1449 0))(
  ( (ValueCellFull!1449 (v!3698 V!4427)) (EmptyCell!1449) )
))
(declare-fun mapRest!6072 () (Array (_ BitVec 32) ValueCell!1449))

(declare-fun mapValue!6072 () ValueCell!1449)

(declare-fun mapKey!6072 () (_ BitVec 32))

(declare-datatypes ((array!6252 0))(
  ( (array!6253 (arr!2968 (Array (_ BitVec 32) (_ BitVec 64))) (size!3253 (_ BitVec 32))) )
))
(declare-datatypes ((array!6254 0))(
  ( (array!6255 (arr!2969 (Array (_ BitVec 32) ValueCell!1449)) (size!3254 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1806 0))(
  ( (LongMapFixedSize!1807 (defaultEntry!3345 Int) (mask!7989 (_ BitVec 32)) (extraKeys!3086 (_ BitVec 32)) (zeroValue!3188 V!4427) (minValue!3188 V!4427) (_size!952 (_ BitVec 32)) (_keys!5151 array!6252) (_values!3328 array!6254) (_vacant!952 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1806)

(assert (=> mapNonEmpty!6072 (= (arr!2969 (_values!3328 thiss!1248)) (store mapRest!6072 mapKey!6072 mapValue!6072))))

(declare-fun b!163029 () Bool)

(declare-fun e!106963 () Bool)

(assert (=> b!163029 (= e!106963 (and (= (size!3254 (_values!3328 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7989 thiss!1248))) (not (= (size!3253 (_keys!5151 thiss!1248)) (size!3254 (_values!3328 thiss!1248))))))))

(declare-fun mapIsEmpty!6072 () Bool)

(assert (=> mapIsEmpty!6072 mapRes!6072))

(declare-fun b!163030 () Bool)

(declare-fun e!106964 () Bool)

(assert (=> b!163030 (= e!106964 tp_is_empty!3585)))

(declare-fun b!163031 () Bool)

(declare-fun e!106965 () Bool)

(assert (=> b!163031 (= e!106965 (and e!106964 mapRes!6072))))

(declare-fun condMapEmpty!6072 () Bool)

(declare-fun mapDefault!6072 () ValueCell!1449)

(assert (=> b!163031 (= condMapEmpty!6072 (= (arr!2969 (_values!3328 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1449)) mapDefault!6072)))))

(declare-fun b!163032 () Bool)

(declare-fun res!77199 () Bool)

(assert (=> b!163032 (=> (not res!77199) (not e!106963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163032 (= res!77199 (validMask!0 (mask!7989 thiss!1248)))))

(declare-fun b!163033 () Bool)

(declare-fun res!77197 () Bool)

(declare-fun e!106961 () Bool)

(assert (=> b!163033 (=> (not res!77197) (not e!106961))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163033 (= res!77197 (not (= key!828 (bvneg key!828))))))

(declare-fun e!106962 () Bool)

(declare-fun array_inv!1887 (array!6252) Bool)

(declare-fun array_inv!1888 (array!6254) Bool)

(assert (=> b!163034 (= e!106962 (and tp!13925 tp_is_empty!3585 (array_inv!1887 (_keys!5151 thiss!1248)) (array_inv!1888 (_values!3328 thiss!1248)) e!106965))))

(declare-fun res!77196 () Bool)

(assert (=> start!16368 (=> (not res!77196) (not e!106961))))

(declare-fun valid!803 (LongMapFixedSize!1806) Bool)

(assert (=> start!16368 (= res!77196 (valid!803 thiss!1248))))

(assert (=> start!16368 e!106961))

(assert (=> start!16368 e!106962))

(assert (=> start!16368 true))

(declare-fun b!163028 () Bool)

(assert (=> b!163028 (= e!106961 e!106963)))

(declare-fun res!77198 () Bool)

(assert (=> b!163028 (=> (not res!77198) (not e!106963))))

(declare-datatypes ((SeekEntryResult!405 0))(
  ( (MissingZero!405 (index!3788 (_ BitVec 32))) (Found!405 (index!3789 (_ BitVec 32))) (Intermediate!405 (undefined!1217 Bool) (index!3790 (_ BitVec 32)) (x!18070 (_ BitVec 32))) (Undefined!405) (MissingVacant!405 (index!3791 (_ BitVec 32))) )
))
(declare-fun lt!82628 () SeekEntryResult!405)

(get-info :version)

(assert (=> b!163028 (= res!77198 (and (not ((_ is Undefined!405) lt!82628)) (not ((_ is MissingVacant!405) lt!82628)) (not ((_ is MissingZero!405) lt!82628)) ((_ is Found!405) lt!82628)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6252 (_ BitVec 32)) SeekEntryResult!405)

(assert (=> b!163028 (= lt!82628 (seekEntryOrOpen!0 key!828 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)))))

(assert (= (and start!16368 res!77196) b!163033))

(assert (= (and b!163033 res!77197) b!163028))

(assert (= (and b!163028 res!77198) b!163032))

(assert (= (and b!163032 res!77199) b!163029))

(assert (= (and b!163031 condMapEmpty!6072) mapIsEmpty!6072))

(assert (= (and b!163031 (not condMapEmpty!6072)) mapNonEmpty!6072))

(assert (= (and mapNonEmpty!6072 ((_ is ValueCellFull!1449) mapValue!6072)) b!163027))

(assert (= (and b!163031 ((_ is ValueCellFull!1449) mapDefault!6072)) b!163030))

(assert (= b!163034 b!163031))

(assert (= start!16368 b!163034))

(declare-fun m!193903 () Bool)

(assert (=> b!163034 m!193903))

(declare-fun m!193905 () Bool)

(assert (=> b!163034 m!193905))

(declare-fun m!193907 () Bool)

(assert (=> mapNonEmpty!6072 m!193907))

(declare-fun m!193909 () Bool)

(assert (=> start!16368 m!193909))

(declare-fun m!193911 () Bool)

(assert (=> b!163032 m!193911))

(declare-fun m!193913 () Bool)

(assert (=> b!163028 m!193913))

(check-sat (not b_next!3783) (not b!163032) (not b!163034) (not b!163028) (not start!16368) b_and!10215 (not mapNonEmpty!6072) tp_is_empty!3585)
(check-sat b_and!10215 (not b_next!3783))
(get-model)

(declare-fun d!51311 () Bool)

(assert (=> d!51311 (= (array_inv!1887 (_keys!5151 thiss!1248)) (bvsge (size!3253 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163034 d!51311))

(declare-fun d!51313 () Bool)

(assert (=> d!51313 (= (array_inv!1888 (_values!3328 thiss!1248)) (bvsge (size!3254 (_values!3328 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163034 d!51313))

(declare-fun d!51315 () Bool)

(assert (=> d!51315 (= (validMask!0 (mask!7989 thiss!1248)) (and (or (= (mask!7989 thiss!1248) #b00000000000000000000000000000111) (= (mask!7989 thiss!1248) #b00000000000000000000000000001111) (= (mask!7989 thiss!1248) #b00000000000000000000000000011111) (= (mask!7989 thiss!1248) #b00000000000000000000000000111111) (= (mask!7989 thiss!1248) #b00000000000000000000000001111111) (= (mask!7989 thiss!1248) #b00000000000000000000000011111111) (= (mask!7989 thiss!1248) #b00000000000000000000000111111111) (= (mask!7989 thiss!1248) #b00000000000000000000001111111111) (= (mask!7989 thiss!1248) #b00000000000000000000011111111111) (= (mask!7989 thiss!1248) #b00000000000000000000111111111111) (= (mask!7989 thiss!1248) #b00000000000000000001111111111111) (= (mask!7989 thiss!1248) #b00000000000000000011111111111111) (= (mask!7989 thiss!1248) #b00000000000000000111111111111111) (= (mask!7989 thiss!1248) #b00000000000000001111111111111111) (= (mask!7989 thiss!1248) #b00000000000000011111111111111111) (= (mask!7989 thiss!1248) #b00000000000000111111111111111111) (= (mask!7989 thiss!1248) #b00000000000001111111111111111111) (= (mask!7989 thiss!1248) #b00000000000011111111111111111111) (= (mask!7989 thiss!1248) #b00000000000111111111111111111111) (= (mask!7989 thiss!1248) #b00000000001111111111111111111111) (= (mask!7989 thiss!1248) #b00000000011111111111111111111111) (= (mask!7989 thiss!1248) #b00000000111111111111111111111111) (= (mask!7989 thiss!1248) #b00000001111111111111111111111111) (= (mask!7989 thiss!1248) #b00000011111111111111111111111111) (= (mask!7989 thiss!1248) #b00000111111111111111111111111111) (= (mask!7989 thiss!1248) #b00001111111111111111111111111111) (= (mask!7989 thiss!1248) #b00011111111111111111111111111111) (= (mask!7989 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7989 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!163032 d!51315))

(declare-fun lt!82640 () SeekEntryResult!405)

(declare-fun b!163071 () Bool)

(declare-fun e!106994 () SeekEntryResult!405)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6252 (_ BitVec 32)) SeekEntryResult!405)

(assert (=> b!163071 (= e!106994 (seekKeyOrZeroReturnVacant!0 (x!18070 lt!82640) (index!3790 lt!82640) (index!3790 lt!82640) key!828 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)))))

(declare-fun b!163072 () Bool)

(declare-fun e!106995 () SeekEntryResult!405)

(declare-fun e!106996 () SeekEntryResult!405)

(assert (=> b!163072 (= e!106995 e!106996)))

(declare-fun lt!82639 () (_ BitVec 64))

(assert (=> b!163072 (= lt!82639 (select (arr!2968 (_keys!5151 thiss!1248)) (index!3790 lt!82640)))))

(declare-fun c!30014 () Bool)

(assert (=> b!163072 (= c!30014 (= lt!82639 key!828))))

(declare-fun d!51317 () Bool)

(declare-fun lt!82638 () SeekEntryResult!405)

(assert (=> d!51317 (and (or ((_ is Undefined!405) lt!82638) (not ((_ is Found!405) lt!82638)) (and (bvsge (index!3789 lt!82638) #b00000000000000000000000000000000) (bvslt (index!3789 lt!82638) (size!3253 (_keys!5151 thiss!1248))))) (or ((_ is Undefined!405) lt!82638) ((_ is Found!405) lt!82638) (not ((_ is MissingZero!405) lt!82638)) (and (bvsge (index!3788 lt!82638) #b00000000000000000000000000000000) (bvslt (index!3788 lt!82638) (size!3253 (_keys!5151 thiss!1248))))) (or ((_ is Undefined!405) lt!82638) ((_ is Found!405) lt!82638) ((_ is MissingZero!405) lt!82638) (not ((_ is MissingVacant!405) lt!82638)) (and (bvsge (index!3791 lt!82638) #b00000000000000000000000000000000) (bvslt (index!3791 lt!82638) (size!3253 (_keys!5151 thiss!1248))))) (or ((_ is Undefined!405) lt!82638) (ite ((_ is Found!405) lt!82638) (= (select (arr!2968 (_keys!5151 thiss!1248)) (index!3789 lt!82638)) key!828) (ite ((_ is MissingZero!405) lt!82638) (= (select (arr!2968 (_keys!5151 thiss!1248)) (index!3788 lt!82638)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!405) lt!82638) (= (select (arr!2968 (_keys!5151 thiss!1248)) (index!3791 lt!82638)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51317 (= lt!82638 e!106995)))

(declare-fun c!30013 () Bool)

(assert (=> d!51317 (= c!30013 (and ((_ is Intermediate!405) lt!82640) (undefined!1217 lt!82640)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6252 (_ BitVec 32)) SeekEntryResult!405)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51317 (= lt!82640 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7989 thiss!1248)) key!828 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)))))

(assert (=> d!51317 (validMask!0 (mask!7989 thiss!1248))))

(assert (=> d!51317 (= (seekEntryOrOpen!0 key!828 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)) lt!82638)))

(declare-fun b!163073 () Bool)

(declare-fun c!30015 () Bool)

(assert (=> b!163073 (= c!30015 (= lt!82639 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!163073 (= e!106996 e!106994)))

(declare-fun b!163074 () Bool)

(assert (=> b!163074 (= e!106996 (Found!405 (index!3790 lt!82640)))))

(declare-fun b!163075 () Bool)

(assert (=> b!163075 (= e!106995 Undefined!405)))

(declare-fun b!163076 () Bool)

(assert (=> b!163076 (= e!106994 (MissingZero!405 (index!3790 lt!82640)))))

(assert (= (and d!51317 c!30013) b!163075))

(assert (= (and d!51317 (not c!30013)) b!163072))

(assert (= (and b!163072 c!30014) b!163074))

(assert (= (and b!163072 (not c!30014)) b!163073))

(assert (= (and b!163073 c!30015) b!163076))

(assert (= (and b!163073 (not c!30015)) b!163071))

(declare-fun m!193927 () Bool)

(assert (=> b!163071 m!193927))

(declare-fun m!193929 () Bool)

(assert (=> b!163072 m!193929))

(assert (=> d!51317 m!193911))

(declare-fun m!193931 () Bool)

(assert (=> d!51317 m!193931))

(declare-fun m!193933 () Bool)

(assert (=> d!51317 m!193933))

(declare-fun m!193935 () Bool)

(assert (=> d!51317 m!193935))

(declare-fun m!193937 () Bool)

(assert (=> d!51317 m!193937))

(assert (=> d!51317 m!193937))

(declare-fun m!193939 () Bool)

(assert (=> d!51317 m!193939))

(assert (=> b!163028 d!51317))

(declare-fun d!51319 () Bool)

(declare-fun res!77218 () Bool)

(declare-fun e!106999 () Bool)

(assert (=> d!51319 (=> (not res!77218) (not e!106999))))

(declare-fun simpleValid!119 (LongMapFixedSize!1806) Bool)

(assert (=> d!51319 (= res!77218 (simpleValid!119 thiss!1248))))

(assert (=> d!51319 (= (valid!803 thiss!1248) e!106999)))

(declare-fun b!163083 () Bool)

(declare-fun res!77219 () Bool)

(assert (=> b!163083 (=> (not res!77219) (not e!106999))))

(declare-fun arrayCountValidKeys!0 (array!6252 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163083 (= res!77219 (= (arrayCountValidKeys!0 (_keys!5151 thiss!1248) #b00000000000000000000000000000000 (size!3253 (_keys!5151 thiss!1248))) (_size!952 thiss!1248)))))

(declare-fun b!163084 () Bool)

(declare-fun res!77220 () Bool)

(assert (=> b!163084 (=> (not res!77220) (not e!106999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6252 (_ BitVec 32)) Bool)

(assert (=> b!163084 (= res!77220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)))))

(declare-fun b!163085 () Bool)

(declare-datatypes ((List!2009 0))(
  ( (Nil!2006) (Cons!2005 (h!2619 (_ BitVec 64)) (t!6819 List!2009)) )
))
(declare-fun arrayNoDuplicates!0 (array!6252 (_ BitVec 32) List!2009) Bool)

(assert (=> b!163085 (= e!106999 (arrayNoDuplicates!0 (_keys!5151 thiss!1248) #b00000000000000000000000000000000 Nil!2006))))

(assert (= (and d!51319 res!77218) b!163083))

(assert (= (and b!163083 res!77219) b!163084))

(assert (= (and b!163084 res!77220) b!163085))

(declare-fun m!193941 () Bool)

(assert (=> d!51319 m!193941))

(declare-fun m!193943 () Bool)

(assert (=> b!163083 m!193943))

(declare-fun m!193945 () Bool)

(assert (=> b!163084 m!193945))

(declare-fun m!193947 () Bool)

(assert (=> b!163085 m!193947))

(assert (=> start!16368 d!51319))

(declare-fun mapNonEmpty!6078 () Bool)

(declare-fun mapRes!6078 () Bool)

(declare-fun tp!13935 () Bool)

(declare-fun e!107005 () Bool)

(assert (=> mapNonEmpty!6078 (= mapRes!6078 (and tp!13935 e!107005))))

(declare-fun mapValue!6078 () ValueCell!1449)

(declare-fun mapKey!6078 () (_ BitVec 32))

(declare-fun mapRest!6078 () (Array (_ BitVec 32) ValueCell!1449))

(assert (=> mapNonEmpty!6078 (= mapRest!6072 (store mapRest!6078 mapKey!6078 mapValue!6078))))

(declare-fun mapIsEmpty!6078 () Bool)

(assert (=> mapIsEmpty!6078 mapRes!6078))

(declare-fun b!163093 () Bool)

(declare-fun e!107004 () Bool)

(assert (=> b!163093 (= e!107004 tp_is_empty!3585)))

(declare-fun condMapEmpty!6078 () Bool)

(declare-fun mapDefault!6078 () ValueCell!1449)

(assert (=> mapNonEmpty!6072 (= condMapEmpty!6078 (= mapRest!6072 ((as const (Array (_ BitVec 32) ValueCell!1449)) mapDefault!6078)))))

(assert (=> mapNonEmpty!6072 (= tp!13926 (and e!107004 mapRes!6078))))

(declare-fun b!163092 () Bool)

(assert (=> b!163092 (= e!107005 tp_is_empty!3585)))

(assert (= (and mapNonEmpty!6072 condMapEmpty!6078) mapIsEmpty!6078))

(assert (= (and mapNonEmpty!6072 (not condMapEmpty!6078)) mapNonEmpty!6078))

(assert (= (and mapNonEmpty!6078 ((_ is ValueCellFull!1449) mapValue!6078)) b!163092))

(assert (= (and mapNonEmpty!6072 ((_ is ValueCellFull!1449) mapDefault!6078)) b!163093))

(declare-fun m!193949 () Bool)

(assert (=> mapNonEmpty!6078 m!193949))

(check-sat (not b_next!3783) (not b!163083) (not b!163084) (not d!51317) (not mapNonEmpty!6078) (not d!51319) (not b!163085) b_and!10215 tp_is_empty!3585 (not b!163071))
(check-sat b_and!10215 (not b_next!3783))
(get-model)

(declare-fun b!163112 () Bool)

(declare-fun lt!82646 () SeekEntryResult!405)

(assert (=> b!163112 (and (bvsge (index!3790 lt!82646) #b00000000000000000000000000000000) (bvslt (index!3790 lt!82646) (size!3253 (_keys!5151 thiss!1248))))))

(declare-fun res!77227 () Bool)

(assert (=> b!163112 (= res!77227 (= (select (arr!2968 (_keys!5151 thiss!1248)) (index!3790 lt!82646)) key!828))))

(declare-fun e!107016 () Bool)

(assert (=> b!163112 (=> res!77227 e!107016)))

(declare-fun e!107017 () Bool)

(assert (=> b!163112 (= e!107017 e!107016)))

(declare-fun b!163113 () Bool)

(declare-fun e!107019 () SeekEntryResult!405)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163113 (= e!107019 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!7989 thiss!1248)) #b00000000000000000000000000000000 (mask!7989 thiss!1248)) key!828 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)))))

(declare-fun b!163114 () Bool)

(assert (=> b!163114 (= e!107019 (Intermediate!405 false (toIndex!0 key!828 (mask!7989 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!163115 () Bool)

(declare-fun e!107018 () Bool)

(assert (=> b!163115 (= e!107018 e!107017)))

(declare-fun res!77228 () Bool)

(assert (=> b!163115 (= res!77228 (and ((_ is Intermediate!405) lt!82646) (not (undefined!1217 lt!82646)) (bvslt (x!18070 lt!82646) #b01111111111111111111111111111110) (bvsge (x!18070 lt!82646) #b00000000000000000000000000000000) (bvsge (x!18070 lt!82646) #b00000000000000000000000000000000)))))

(assert (=> b!163115 (=> (not res!77228) (not e!107017))))

(declare-fun d!51321 () Bool)

(assert (=> d!51321 e!107018))

(declare-fun c!30024 () Bool)

(assert (=> d!51321 (= c!30024 (and ((_ is Intermediate!405) lt!82646) (undefined!1217 lt!82646)))))

(declare-fun e!107020 () SeekEntryResult!405)

(assert (=> d!51321 (= lt!82646 e!107020)))

(declare-fun c!30022 () Bool)

(assert (=> d!51321 (= c!30022 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!82645 () (_ BitVec 64))

(assert (=> d!51321 (= lt!82645 (select (arr!2968 (_keys!5151 thiss!1248)) (toIndex!0 key!828 (mask!7989 thiss!1248))))))

(assert (=> d!51321 (validMask!0 (mask!7989 thiss!1248))))

(assert (=> d!51321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7989 thiss!1248)) key!828 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)) lt!82646)))

(declare-fun b!163116 () Bool)

(assert (=> b!163116 (= e!107020 e!107019)))

(declare-fun c!30023 () Bool)

(assert (=> b!163116 (= c!30023 (or (= lt!82645 key!828) (= (bvadd lt!82645 lt!82645) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!163117 () Bool)

(assert (=> b!163117 (and (bvsge (index!3790 lt!82646) #b00000000000000000000000000000000) (bvslt (index!3790 lt!82646) (size!3253 (_keys!5151 thiss!1248))))))

(declare-fun res!77229 () Bool)

(assert (=> b!163117 (= res!77229 (= (select (arr!2968 (_keys!5151 thiss!1248)) (index!3790 lt!82646)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!163117 (=> res!77229 e!107016)))

(declare-fun b!163118 () Bool)

(assert (=> b!163118 (= e!107018 (bvsge (x!18070 lt!82646) #b01111111111111111111111111111110))))

(declare-fun b!163119 () Bool)

(assert (=> b!163119 (and (bvsge (index!3790 lt!82646) #b00000000000000000000000000000000) (bvslt (index!3790 lt!82646) (size!3253 (_keys!5151 thiss!1248))))))

(assert (=> b!163119 (= e!107016 (= (select (arr!2968 (_keys!5151 thiss!1248)) (index!3790 lt!82646)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!163120 () Bool)

(assert (=> b!163120 (= e!107020 (Intermediate!405 true (toIndex!0 key!828 (mask!7989 thiss!1248)) #b00000000000000000000000000000000))))

(assert (= (and d!51321 c!30022) b!163120))

(assert (= (and d!51321 (not c!30022)) b!163116))

(assert (= (and b!163116 c!30023) b!163114))

(assert (= (and b!163116 (not c!30023)) b!163113))

(assert (= (and d!51321 c!30024) b!163118))

(assert (= (and d!51321 (not c!30024)) b!163115))

(assert (= (and b!163115 res!77228) b!163112))

(assert (= (and b!163112 (not res!77227)) b!163117))

(assert (= (and b!163117 (not res!77229)) b!163119))

(declare-fun m!193951 () Bool)

(assert (=> b!163117 m!193951))

(assert (=> b!163119 m!193951))

(assert (=> d!51321 m!193937))

(declare-fun m!193953 () Bool)

(assert (=> d!51321 m!193953))

(assert (=> d!51321 m!193911))

(assert (=> b!163112 m!193951))

(assert (=> b!163113 m!193937))

(declare-fun m!193955 () Bool)

(assert (=> b!163113 m!193955))

(assert (=> b!163113 m!193955))

(declare-fun m!193957 () Bool)

(assert (=> b!163113 m!193957))

(assert (=> d!51317 d!51321))

(declare-fun d!51323 () Bool)

(declare-fun lt!82652 () (_ BitVec 32))

(declare-fun lt!82651 () (_ BitVec 32))

(assert (=> d!51323 (= lt!82652 (bvmul (bvxor lt!82651 (bvlshr lt!82651 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!51323 (= lt!82651 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!51323 (and (bvsge (mask!7989 thiss!1248) #b00000000000000000000000000000000) (let ((res!77230 (let ((h!2620 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!18086 (bvmul (bvxor h!2620 (bvlshr h!2620 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!18086 (bvlshr x!18086 #b00000000000000000000000000001101)) (mask!7989 thiss!1248)))))) (and (bvslt res!77230 (bvadd (mask!7989 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!77230 #b00000000000000000000000000000000))))))

(assert (=> d!51323 (= (toIndex!0 key!828 (mask!7989 thiss!1248)) (bvand (bvxor lt!82652 (bvlshr lt!82652 #b00000000000000000000000000001101)) (mask!7989 thiss!1248)))))

(assert (=> d!51317 d!51323))

(assert (=> d!51317 d!51315))

(declare-fun b!163129 () Bool)

(declare-fun e!107026 () (_ BitVec 32))

(declare-fun e!107025 () (_ BitVec 32))

(assert (=> b!163129 (= e!107026 e!107025)))

(declare-fun c!30030 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!163129 (= c!30030 (validKeyInArray!0 (select (arr!2968 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17291 () Bool)

(declare-fun call!17294 () (_ BitVec 32))

(assert (=> bm!17291 (= call!17294 (arrayCountValidKeys!0 (_keys!5151 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3253 (_keys!5151 thiss!1248))))))

(declare-fun d!51325 () Bool)

(declare-fun lt!82655 () (_ BitVec 32))

(assert (=> d!51325 (and (bvsge lt!82655 #b00000000000000000000000000000000) (bvsle lt!82655 (bvsub (size!3253 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51325 (= lt!82655 e!107026)))

(declare-fun c!30029 () Bool)

(assert (=> d!51325 (= c!30029 (bvsge #b00000000000000000000000000000000 (size!3253 (_keys!5151 thiss!1248))))))

(assert (=> d!51325 (and (bvsle #b00000000000000000000000000000000 (size!3253 (_keys!5151 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3253 (_keys!5151 thiss!1248)) (size!3253 (_keys!5151 thiss!1248))))))

(assert (=> d!51325 (= (arrayCountValidKeys!0 (_keys!5151 thiss!1248) #b00000000000000000000000000000000 (size!3253 (_keys!5151 thiss!1248))) lt!82655)))

(declare-fun b!163130 () Bool)

(assert (=> b!163130 (= e!107025 call!17294)))

(declare-fun b!163131 () Bool)

(assert (=> b!163131 (= e!107025 (bvadd #b00000000000000000000000000000001 call!17294))))

(declare-fun b!163132 () Bool)

(assert (=> b!163132 (= e!107026 #b00000000000000000000000000000000)))

(assert (= (and d!51325 c!30029) b!163132))

(assert (= (and d!51325 (not c!30029)) b!163129))

(assert (= (and b!163129 c!30030) b!163131))

(assert (= (and b!163129 (not c!30030)) b!163130))

(assert (= (or b!163131 b!163130) bm!17291))

(declare-fun m!193959 () Bool)

(assert (=> b!163129 m!193959))

(assert (=> b!163129 m!193959))

(declare-fun m!193961 () Bool)

(assert (=> b!163129 m!193961))

(declare-fun m!193963 () Bool)

(assert (=> bm!17291 m!193963))

(assert (=> b!163083 d!51325))

(declare-fun b!163145 () Bool)

(declare-fun e!107034 () SeekEntryResult!405)

(assert (=> b!163145 (= e!107034 Undefined!405)))

(declare-fun b!163146 () Bool)

(declare-fun e!107035 () SeekEntryResult!405)

(assert (=> b!163146 (= e!107035 (Found!405 (index!3790 lt!82640)))))

(declare-fun b!163147 () Bool)

(declare-fun c!30038 () Bool)

(declare-fun lt!82660 () (_ BitVec 64))

(assert (=> b!163147 (= c!30038 (= lt!82660 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!107033 () SeekEntryResult!405)

(assert (=> b!163147 (= e!107035 e!107033)))

(declare-fun lt!82661 () SeekEntryResult!405)

(declare-fun d!51327 () Bool)

(assert (=> d!51327 (and (or ((_ is Undefined!405) lt!82661) (not ((_ is Found!405) lt!82661)) (and (bvsge (index!3789 lt!82661) #b00000000000000000000000000000000) (bvslt (index!3789 lt!82661) (size!3253 (_keys!5151 thiss!1248))))) (or ((_ is Undefined!405) lt!82661) ((_ is Found!405) lt!82661) (not ((_ is MissingVacant!405) lt!82661)) (not (= (index!3791 lt!82661) (index!3790 lt!82640))) (and (bvsge (index!3791 lt!82661) #b00000000000000000000000000000000) (bvslt (index!3791 lt!82661) (size!3253 (_keys!5151 thiss!1248))))) (or ((_ is Undefined!405) lt!82661) (ite ((_ is Found!405) lt!82661) (= (select (arr!2968 (_keys!5151 thiss!1248)) (index!3789 lt!82661)) key!828) (and ((_ is MissingVacant!405) lt!82661) (= (index!3791 lt!82661) (index!3790 lt!82640)) (= (select (arr!2968 (_keys!5151 thiss!1248)) (index!3791 lt!82661)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!51327 (= lt!82661 e!107034)))

(declare-fun c!30039 () Bool)

(assert (=> d!51327 (= c!30039 (bvsge (x!18070 lt!82640) #b01111111111111111111111111111110))))

(assert (=> d!51327 (= lt!82660 (select (arr!2968 (_keys!5151 thiss!1248)) (index!3790 lt!82640)))))

(assert (=> d!51327 (validMask!0 (mask!7989 thiss!1248))))

(assert (=> d!51327 (= (seekKeyOrZeroReturnVacant!0 (x!18070 lt!82640) (index!3790 lt!82640) (index!3790 lt!82640) key!828 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)) lt!82661)))

(declare-fun b!163148 () Bool)

(assert (=> b!163148 (= e!107034 e!107035)))

(declare-fun c!30037 () Bool)

(assert (=> b!163148 (= c!30037 (= lt!82660 key!828))))

(declare-fun b!163149 () Bool)

(assert (=> b!163149 (= e!107033 (seekKeyOrZeroReturnVacant!0 (bvadd (x!18070 lt!82640) #b00000000000000000000000000000001) (nextIndex!0 (index!3790 lt!82640) (x!18070 lt!82640) (mask!7989 thiss!1248)) (index!3790 lt!82640) key!828 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)))))

(declare-fun b!163150 () Bool)

(assert (=> b!163150 (= e!107033 (MissingVacant!405 (index!3790 lt!82640)))))

(assert (= (and d!51327 c!30039) b!163145))

(assert (= (and d!51327 (not c!30039)) b!163148))

(assert (= (and b!163148 c!30037) b!163146))

(assert (= (and b!163148 (not c!30037)) b!163147))

(assert (= (and b!163147 c!30038) b!163150))

(assert (= (and b!163147 (not c!30038)) b!163149))

(declare-fun m!193965 () Bool)

(assert (=> d!51327 m!193965))

(declare-fun m!193967 () Bool)

(assert (=> d!51327 m!193967))

(assert (=> d!51327 m!193929))

(assert (=> d!51327 m!193911))

(declare-fun m!193969 () Bool)

(assert (=> b!163149 m!193969))

(assert (=> b!163149 m!193969))

(declare-fun m!193971 () Bool)

(assert (=> b!163149 m!193971))

(assert (=> b!163071 d!51327))

(declare-fun b!163159 () Bool)

(declare-fun res!77240 () Bool)

(declare-fun e!107038 () Bool)

(assert (=> b!163159 (=> (not res!77240) (not e!107038))))

(assert (=> b!163159 (= res!77240 (and (= (size!3254 (_values!3328 thiss!1248)) (bvadd (mask!7989 thiss!1248) #b00000000000000000000000000000001)) (= (size!3253 (_keys!5151 thiss!1248)) (size!3254 (_values!3328 thiss!1248))) (bvsge (_size!952 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!952 thiss!1248) (bvadd (mask!7989 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun d!51329 () Bool)

(declare-fun res!77242 () Bool)

(assert (=> d!51329 (=> (not res!77242) (not e!107038))))

(assert (=> d!51329 (= res!77242 (validMask!0 (mask!7989 thiss!1248)))))

(assert (=> d!51329 (= (simpleValid!119 thiss!1248) e!107038)))

(declare-fun b!163160 () Bool)

(declare-fun res!77241 () Bool)

(assert (=> b!163160 (=> (not res!77241) (not e!107038))))

(declare-fun size!3257 (LongMapFixedSize!1806) (_ BitVec 32))

(assert (=> b!163160 (= res!77241 (bvsge (size!3257 thiss!1248) (_size!952 thiss!1248)))))

(declare-fun b!163161 () Bool)

(declare-fun res!77239 () Bool)

(assert (=> b!163161 (=> (not res!77239) (not e!107038))))

(assert (=> b!163161 (= res!77239 (= (size!3257 thiss!1248) (bvadd (_size!952 thiss!1248) (bvsdiv (bvadd (extraKeys!3086 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!163162 () Bool)

(assert (=> b!163162 (= e!107038 (and (bvsge (extraKeys!3086 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3086 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!952 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!51329 res!77242) b!163159))

(assert (= (and b!163159 res!77240) b!163160))

(assert (= (and b!163160 res!77241) b!163161))

(assert (= (and b!163161 res!77239) b!163162))

(assert (=> d!51329 m!193911))

(declare-fun m!193973 () Bool)

(assert (=> b!163160 m!193973))

(assert (=> b!163161 m!193973))

(assert (=> d!51319 d!51329))

(declare-fun b!163171 () Bool)

(declare-fun e!107045 () Bool)

(declare-fun call!17297 () Bool)

(assert (=> b!163171 (= e!107045 call!17297)))

(declare-fun bm!17294 () Bool)

(assert (=> bm!17294 (= call!17297 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5151 thiss!1248) (mask!7989 thiss!1248)))))

(declare-fun b!163172 () Bool)

(declare-fun e!107047 () Bool)

(assert (=> b!163172 (= e!107047 e!107045)))

(declare-fun lt!82669 () (_ BitVec 64))

(assert (=> b!163172 (= lt!82669 (select (arr!2968 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5034 0))(
  ( (Unit!5035) )
))
(declare-fun lt!82668 () Unit!5034)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6252 (_ BitVec 64) (_ BitVec 32)) Unit!5034)

(assert (=> b!163172 (= lt!82668 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5151 thiss!1248) lt!82669 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!163172 (arrayContainsKey!0 (_keys!5151 thiss!1248) lt!82669 #b00000000000000000000000000000000)))

(declare-fun lt!82670 () Unit!5034)

(assert (=> b!163172 (= lt!82670 lt!82668)))

(declare-fun res!77248 () Bool)

(assert (=> b!163172 (= res!77248 (= (seekEntryOrOpen!0 (select (arr!2968 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000) (_keys!5151 thiss!1248) (mask!7989 thiss!1248)) (Found!405 #b00000000000000000000000000000000)))))

(assert (=> b!163172 (=> (not res!77248) (not e!107045))))

(declare-fun d!51331 () Bool)

(declare-fun res!77247 () Bool)

(declare-fun e!107046 () Bool)

(assert (=> d!51331 (=> res!77247 e!107046)))

(assert (=> d!51331 (= res!77247 (bvsge #b00000000000000000000000000000000 (size!3253 (_keys!5151 thiss!1248))))))

(assert (=> d!51331 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5151 thiss!1248) (mask!7989 thiss!1248)) e!107046)))

(declare-fun b!163173 () Bool)

(assert (=> b!163173 (= e!107046 e!107047)))

(declare-fun c!30042 () Bool)

(assert (=> b!163173 (= c!30042 (validKeyInArray!0 (select (arr!2968 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!163174 () Bool)

(assert (=> b!163174 (= e!107047 call!17297)))

(assert (= (and d!51331 (not res!77247)) b!163173))

(assert (= (and b!163173 c!30042) b!163172))

(assert (= (and b!163173 (not c!30042)) b!163174))

(assert (= (and b!163172 res!77248) b!163171))

(assert (= (or b!163171 b!163174) bm!17294))

(declare-fun m!193975 () Bool)

(assert (=> bm!17294 m!193975))

(assert (=> b!163172 m!193959))

(declare-fun m!193977 () Bool)

(assert (=> b!163172 m!193977))

(declare-fun m!193979 () Bool)

(assert (=> b!163172 m!193979))

(assert (=> b!163172 m!193959))

(declare-fun m!193981 () Bool)

(assert (=> b!163172 m!193981))

(assert (=> b!163173 m!193959))

(assert (=> b!163173 m!193959))

(assert (=> b!163173 m!193961))

(assert (=> b!163084 d!51331))

(declare-fun d!51333 () Bool)

(declare-fun res!77256 () Bool)

(declare-fun e!107058 () Bool)

(assert (=> d!51333 (=> res!77256 e!107058)))

(assert (=> d!51333 (= res!77256 (bvsge #b00000000000000000000000000000000 (size!3253 (_keys!5151 thiss!1248))))))

(assert (=> d!51333 (= (arrayNoDuplicates!0 (_keys!5151 thiss!1248) #b00000000000000000000000000000000 Nil!2006) e!107058)))

(declare-fun b!163185 () Bool)

(declare-fun e!107059 () Bool)

(assert (=> b!163185 (= e!107058 e!107059)))

(declare-fun res!77257 () Bool)

(assert (=> b!163185 (=> (not res!77257) (not e!107059))))

(declare-fun e!107057 () Bool)

(assert (=> b!163185 (= res!77257 (not e!107057))))

(declare-fun res!77255 () Bool)

(assert (=> b!163185 (=> (not res!77255) (not e!107057))))

(assert (=> b!163185 (= res!77255 (validKeyInArray!0 (select (arr!2968 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17297 () Bool)

(declare-fun call!17300 () Bool)

(declare-fun c!30045 () Bool)

(assert (=> bm!17297 (= call!17300 (arrayNoDuplicates!0 (_keys!5151 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30045 (Cons!2005 (select (arr!2968 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000) Nil!2006) Nil!2006)))))

(declare-fun b!163186 () Bool)

(declare-fun e!107056 () Bool)

(assert (=> b!163186 (= e!107056 call!17300)))

(declare-fun b!163187 () Bool)

(assert (=> b!163187 (= e!107056 call!17300)))

(declare-fun b!163188 () Bool)

(assert (=> b!163188 (= e!107059 e!107056)))

(assert (=> b!163188 (= c!30045 (validKeyInArray!0 (select (arr!2968 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!163189 () Bool)

(declare-fun contains!1036 (List!2009 (_ BitVec 64)) Bool)

(assert (=> b!163189 (= e!107057 (contains!1036 Nil!2006 (select (arr!2968 (_keys!5151 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51333 (not res!77256)) b!163185))

(assert (= (and b!163185 res!77255) b!163189))

(assert (= (and b!163185 res!77257) b!163188))

(assert (= (and b!163188 c!30045) b!163187))

(assert (= (and b!163188 (not c!30045)) b!163186))

(assert (= (or b!163187 b!163186) bm!17297))

(assert (=> b!163185 m!193959))

(assert (=> b!163185 m!193959))

(assert (=> b!163185 m!193961))

(assert (=> bm!17297 m!193959))

(declare-fun m!193983 () Bool)

(assert (=> bm!17297 m!193983))

(assert (=> b!163188 m!193959))

(assert (=> b!163188 m!193959))

(assert (=> b!163188 m!193961))

(assert (=> b!163189 m!193959))

(assert (=> b!163189 m!193959))

(declare-fun m!193985 () Bool)

(assert (=> b!163189 m!193985))

(assert (=> b!163085 d!51333))

(declare-fun mapNonEmpty!6079 () Bool)

(declare-fun mapRes!6079 () Bool)

(declare-fun tp!13936 () Bool)

(declare-fun e!107061 () Bool)

(assert (=> mapNonEmpty!6079 (= mapRes!6079 (and tp!13936 e!107061))))

(declare-fun mapValue!6079 () ValueCell!1449)

(declare-fun mapRest!6079 () (Array (_ BitVec 32) ValueCell!1449))

(declare-fun mapKey!6079 () (_ BitVec 32))

(assert (=> mapNonEmpty!6079 (= mapRest!6078 (store mapRest!6079 mapKey!6079 mapValue!6079))))

(declare-fun mapIsEmpty!6079 () Bool)

(assert (=> mapIsEmpty!6079 mapRes!6079))

(declare-fun b!163191 () Bool)

(declare-fun e!107060 () Bool)

(assert (=> b!163191 (= e!107060 tp_is_empty!3585)))

(declare-fun condMapEmpty!6079 () Bool)

(declare-fun mapDefault!6079 () ValueCell!1449)

(assert (=> mapNonEmpty!6078 (= condMapEmpty!6079 (= mapRest!6078 ((as const (Array (_ BitVec 32) ValueCell!1449)) mapDefault!6079)))))

(assert (=> mapNonEmpty!6078 (= tp!13935 (and e!107060 mapRes!6079))))

(declare-fun b!163190 () Bool)

(assert (=> b!163190 (= e!107061 tp_is_empty!3585)))

(assert (= (and mapNonEmpty!6078 condMapEmpty!6079) mapIsEmpty!6079))

(assert (= (and mapNonEmpty!6078 (not condMapEmpty!6079)) mapNonEmpty!6079))

(assert (= (and mapNonEmpty!6079 ((_ is ValueCellFull!1449) mapValue!6079)) b!163190))

(assert (= (and mapNonEmpty!6078 ((_ is ValueCellFull!1449) mapDefault!6079)) b!163191))

(declare-fun m!193987 () Bool)

(assert (=> mapNonEmpty!6079 m!193987))

(check-sat (not b_next!3783) (not d!51321) (not b!163189) (not b!163129) (not mapNonEmpty!6079) (not bm!17297) (not b!163172) (not b!163185) (not b!163160) (not d!51329) (not b!163149) (not b!163161) (not d!51327) (not bm!17294) (not b!163173) (not bm!17291) (not b!163113) (not b!163188) b_and!10215 tp_is_empty!3585)
(check-sat b_and!10215 (not b_next!3783))
