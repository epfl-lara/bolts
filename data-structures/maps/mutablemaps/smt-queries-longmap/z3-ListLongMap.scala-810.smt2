; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19706 () Bool)

(assert start!19706)

(declare-fun b!192983 () Bool)

(declare-fun b_free!4701 () Bool)

(declare-fun b_next!4701 () Bool)

(assert (=> b!192983 (= b_free!4701 (not b_next!4701))))

(declare-fun tp!16964 () Bool)

(declare-fun b_and!11421 () Bool)

(assert (=> b!192983 (= tp!16964 b_and!11421)))

(declare-fun mapIsEmpty!7733 () Bool)

(declare-fun mapRes!7733 () Bool)

(assert (=> mapIsEmpty!7733 mapRes!7733))

(declare-fun b!192977 () Bool)

(declare-fun res!91201 () Bool)

(declare-fun e!126991 () Bool)

(assert (=> b!192977 (=> res!91201 e!126991)))

(declare-datatypes ((V!5611 0))(
  ( (V!5612 (val!2281 Int)) )
))
(declare-datatypes ((ValueCell!1893 0))(
  ( (ValueCellFull!1893 (v!4230 V!5611)) (EmptyCell!1893) )
))
(declare-datatypes ((array!8190 0))(
  ( (array!8191 (arr!3856 (Array (_ BitVec 32) (_ BitVec 64))) (size!4180 (_ BitVec 32))) )
))
(declare-datatypes ((array!8192 0))(
  ( (array!8193 (arr!3857 (Array (_ BitVec 32) ValueCell!1893)) (size!4181 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2694 0))(
  ( (LongMapFixedSize!2695 (defaultEntry!3939 Int) (mask!9184 (_ BitVec 32)) (extraKeys!3676 (_ BitVec 32)) (zeroValue!3780 V!5611) (minValue!3780 V!5611) (_size!1396 (_ BitVec 32)) (_keys!5927 array!8190) (_values!3922 array!8192) (_vacant!1396 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2694)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8190 (_ BitVec 32)) Bool)

(assert (=> b!192977 (= res!91201 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5927 thiss!1248) (mask!9184 thiss!1248))))))

(declare-fun e!126986 () Bool)

(declare-datatypes ((SeekEntryResult!695 0))(
  ( (MissingZero!695 (index!4950 (_ BitVec 32))) (Found!695 (index!4951 (_ BitVec 32))) (Intermediate!695 (undefined!1507 Bool) (index!4952 (_ BitVec 32)) (x!20637 (_ BitVec 32))) (Undefined!695) (MissingVacant!695 (index!4953 (_ BitVec 32))) )
))
(declare-fun lt!96063 () SeekEntryResult!695)

(declare-fun b!192978 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!192978 (= e!126986 (= (select (arr!3856 (_keys!5927 thiss!1248)) (index!4951 lt!96063)) key!828))))

(declare-fun b!192979 () Bool)

(declare-fun res!91198 () Bool)

(declare-fun e!126988 () Bool)

(assert (=> b!192979 (=> (not res!91198) (not e!126988))))

(assert (=> b!192979 (= res!91198 (not (= key!828 (bvneg key!828))))))

(declare-fun res!91196 () Bool)

(assert (=> start!19706 (=> (not res!91196) (not e!126988))))

(declare-fun valid!1097 (LongMapFixedSize!2694) Bool)

(assert (=> start!19706 (= res!91196 (valid!1097 thiss!1248))))

(assert (=> start!19706 e!126988))

(declare-fun e!126985 () Bool)

(assert (=> start!19706 e!126985))

(assert (=> start!19706 true))

(declare-fun tp_is_empty!4473 () Bool)

(assert (=> start!19706 tp_is_empty!4473))

(declare-fun b!192980 () Bool)

(declare-fun e!126987 () Bool)

(assert (=> b!192980 (= e!126988 e!126987)))

(declare-fun res!91197 () Bool)

(assert (=> b!192980 (=> (not res!91197) (not e!126987))))

(get-info :version)

(assert (=> b!192980 (= res!91197 (and (not ((_ is Undefined!695) lt!96063)) (not ((_ is MissingVacant!695) lt!96063)) (not ((_ is MissingZero!695) lt!96063)) ((_ is Found!695) lt!96063)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8190 (_ BitVec 32)) SeekEntryResult!695)

(assert (=> b!192980 (= lt!96063 (seekEntryOrOpen!0 key!828 (_keys!5927 thiss!1248) (mask!9184 thiss!1248)))))

(declare-fun b!192981 () Bool)

(declare-fun e!126990 () Bool)

(assert (=> b!192981 (= e!126990 tp_is_empty!4473)))

(declare-fun b!192982 () Bool)

(declare-datatypes ((Unit!5841 0))(
  ( (Unit!5842) )
))
(declare-fun e!126993 () Unit!5841)

(declare-fun lt!96062 () Unit!5841)

(assert (=> b!192982 (= e!126993 lt!96062)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!180 (array!8190 array!8192 (_ BitVec 32) (_ BitVec 32) V!5611 V!5611 (_ BitVec 64) Int) Unit!5841)

(assert (=> b!192982 (= lt!96062 (lemmaInListMapThenSeekEntryOrOpenFindsIt!180 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) key!828 (defaultEntry!3939 thiss!1248)))))

(declare-fun res!91200 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!192982 (= res!91200 (inRange!0 (index!4951 lt!96063) (mask!9184 thiss!1248)))))

(assert (=> b!192982 (=> (not res!91200) (not e!126986))))

(assert (=> b!192982 e!126986))

(declare-fun e!126992 () Bool)

(declare-fun array_inv!2491 (array!8190) Bool)

(declare-fun array_inv!2492 (array!8192) Bool)

(assert (=> b!192983 (= e!126985 (and tp!16964 tp_is_empty!4473 (array_inv!2491 (_keys!5927 thiss!1248)) (array_inv!2492 (_values!3922 thiss!1248)) e!126992))))

(declare-fun b!192984 () Bool)

(assert (=> b!192984 (= e!126987 (not e!126991))))

(declare-fun res!91195 () Bool)

(assert (=> b!192984 (=> res!91195 e!126991)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!192984 (= res!91195 (not (validMask!0 (mask!9184 thiss!1248))))))

(declare-fun v!309 () V!5611)

(declare-datatypes ((tuple2!3538 0))(
  ( (tuple2!3539 (_1!1779 (_ BitVec 64)) (_2!1779 V!5611)) )
))
(declare-datatypes ((List!2453 0))(
  ( (Nil!2450) (Cons!2449 (h!3090 tuple2!3538) (t!7381 List!2453)) )
))
(declare-datatypes ((ListLongMap!2469 0))(
  ( (ListLongMap!2470 (toList!1250 List!2453)) )
))
(declare-fun lt!96059 () ListLongMap!2469)

(declare-fun +!308 (ListLongMap!2469 tuple2!3538) ListLongMap!2469)

(declare-fun getCurrentListMap!893 (array!8190 array!8192 (_ BitVec 32) (_ BitVec 32) V!5611 V!5611 (_ BitVec 32) Int) ListLongMap!2469)

(assert (=> b!192984 (= (+!308 lt!96059 (tuple2!3539 key!828 v!309)) (getCurrentListMap!893 (_keys!5927 thiss!1248) (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96064 () Unit!5841)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!114 (array!8190 array!8192 (_ BitVec 32) (_ BitVec 32) V!5611 V!5611 (_ BitVec 32) (_ BitVec 64) V!5611 Int) Unit!5841)

(assert (=> b!192984 (= lt!96064 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!114 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) (index!4951 lt!96063) key!828 v!309 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96061 () Unit!5841)

(assert (=> b!192984 (= lt!96061 e!126993)))

(declare-fun c!34792 () Bool)

(declare-fun contains!1363 (ListLongMap!2469 (_ BitVec 64)) Bool)

(assert (=> b!192984 (= c!34792 (contains!1363 lt!96059 key!828))))

(assert (=> b!192984 (= lt!96059 (getCurrentListMap!893 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun mapNonEmpty!7733 () Bool)

(declare-fun tp!16963 () Bool)

(assert (=> mapNonEmpty!7733 (= mapRes!7733 (and tp!16963 e!126990))))

(declare-fun mapRest!7733 () (Array (_ BitVec 32) ValueCell!1893))

(declare-fun mapValue!7733 () ValueCell!1893)

(declare-fun mapKey!7733 () (_ BitVec 32))

(assert (=> mapNonEmpty!7733 (= (arr!3857 (_values!3922 thiss!1248)) (store mapRest!7733 mapKey!7733 mapValue!7733))))

(declare-fun b!192985 () Bool)

(declare-fun res!91199 () Bool)

(assert (=> b!192985 (=> res!91199 e!126991)))

(assert (=> b!192985 (= res!91199 (or (not (= (size!4181 (_values!3922 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9184 thiss!1248)))) (not (= (size!4180 (_keys!5927 thiss!1248)) (size!4181 (_values!3922 thiss!1248)))) (bvslt (mask!9184 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3676 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3676 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!192986 () Bool)

(declare-fun Unit!5843 () Unit!5841)

(assert (=> b!192986 (= e!126993 Unit!5843)))

(declare-fun lt!96060 () Unit!5841)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!187 (array!8190 array!8192 (_ BitVec 32) (_ BitVec 32) V!5611 V!5611 (_ BitVec 64) Int) Unit!5841)

(assert (=> b!192986 (= lt!96060 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!187 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) key!828 (defaultEntry!3939 thiss!1248)))))

(assert (=> b!192986 false))

(declare-fun b!192987 () Bool)

(declare-fun e!126989 () Bool)

(assert (=> b!192987 (= e!126992 (and e!126989 mapRes!7733))))

(declare-fun condMapEmpty!7733 () Bool)

(declare-fun mapDefault!7733 () ValueCell!1893)

(assert (=> b!192987 (= condMapEmpty!7733 (= (arr!3857 (_values!3922 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1893)) mapDefault!7733)))))

(declare-fun b!192988 () Bool)

(assert (=> b!192988 (= e!126989 tp_is_empty!4473)))

(declare-fun b!192989 () Bool)

(declare-datatypes ((List!2454 0))(
  ( (Nil!2451) (Cons!2450 (h!3091 (_ BitVec 64)) (t!7382 List!2454)) )
))
(declare-fun arrayNoDuplicates!0 (array!8190 (_ BitVec 32) List!2454) Bool)

(assert (=> b!192989 (= e!126991 (arrayNoDuplicates!0 (_keys!5927 thiss!1248) #b00000000000000000000000000000000 Nil!2451))))

(assert (= (and start!19706 res!91196) b!192979))

(assert (= (and b!192979 res!91198) b!192980))

(assert (= (and b!192980 res!91197) b!192984))

(assert (= (and b!192984 c!34792) b!192982))

(assert (= (and b!192984 (not c!34792)) b!192986))

(assert (= (and b!192982 res!91200) b!192978))

(assert (= (and b!192984 (not res!91195)) b!192985))

(assert (= (and b!192985 (not res!91199)) b!192977))

(assert (= (and b!192977 (not res!91201)) b!192989))

(assert (= (and b!192987 condMapEmpty!7733) mapIsEmpty!7733))

(assert (= (and b!192987 (not condMapEmpty!7733)) mapNonEmpty!7733))

(assert (= (and mapNonEmpty!7733 ((_ is ValueCellFull!1893) mapValue!7733)) b!192981))

(assert (= (and b!192987 ((_ is ValueCellFull!1893) mapDefault!7733)) b!192988))

(assert (= b!192983 b!192987))

(assert (= start!19706 b!192983))

(declare-fun m!219823 () Bool)

(assert (=> b!192989 m!219823))

(declare-fun m!219825 () Bool)

(assert (=> b!192977 m!219825))

(declare-fun m!219827 () Bool)

(assert (=> mapNonEmpty!7733 m!219827))

(declare-fun m!219829 () Bool)

(assert (=> start!19706 m!219829))

(declare-fun m!219831 () Bool)

(assert (=> b!192978 m!219831))

(declare-fun m!219833 () Bool)

(assert (=> b!192986 m!219833))

(declare-fun m!219835 () Bool)

(assert (=> b!192982 m!219835))

(declare-fun m!219837 () Bool)

(assert (=> b!192982 m!219837))

(declare-fun m!219839 () Bool)

(assert (=> b!192980 m!219839))

(declare-fun m!219841 () Bool)

(assert (=> b!192983 m!219841))

(declare-fun m!219843 () Bool)

(assert (=> b!192983 m!219843))

(declare-fun m!219845 () Bool)

(assert (=> b!192984 m!219845))

(declare-fun m!219847 () Bool)

(assert (=> b!192984 m!219847))

(declare-fun m!219849 () Bool)

(assert (=> b!192984 m!219849))

(declare-fun m!219851 () Bool)

(assert (=> b!192984 m!219851))

(declare-fun m!219853 () Bool)

(assert (=> b!192984 m!219853))

(declare-fun m!219855 () Bool)

(assert (=> b!192984 m!219855))

(declare-fun m!219857 () Bool)

(assert (=> b!192984 m!219857))

(check-sat tp_is_empty!4473 (not b!192984) (not b!192982) (not b!192983) (not b!192986) (not start!19706) (not b!192977) (not mapNonEmpty!7733) (not b!192980) b_and!11421 (not b!192989) (not b_next!4701))
(check-sat b_and!11421 (not b_next!4701))
(get-model)

(declare-fun b!193039 () Bool)

(declare-fun e!127034 () Bool)

(declare-fun e!127035 () Bool)

(assert (=> b!193039 (= e!127034 e!127035)))

(declare-fun c!34798 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!193039 (= c!34798 (validKeyInArray!0 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193040 () Bool)

(declare-fun call!19490 () Bool)

(assert (=> b!193040 (= e!127035 call!19490)))

(declare-fun bm!19487 () Bool)

(assert (=> bm!19487 (= call!19490 (arrayNoDuplicates!0 (_keys!5927 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!34798 (Cons!2450 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000) Nil!2451) Nil!2451)))))

(declare-fun b!193042 () Bool)

(assert (=> b!193042 (= e!127035 call!19490)))

(declare-fun b!193043 () Bool)

(declare-fun e!127032 () Bool)

(assert (=> b!193043 (= e!127032 e!127034)))

(declare-fun res!91230 () Bool)

(assert (=> b!193043 (=> (not res!91230) (not e!127034))))

(declare-fun e!127033 () Bool)

(assert (=> b!193043 (= res!91230 (not e!127033))))

(declare-fun res!91229 () Bool)

(assert (=> b!193043 (=> (not res!91229) (not e!127033))))

(assert (=> b!193043 (= res!91229 (validKeyInArray!0 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!56457 () Bool)

(declare-fun res!91231 () Bool)

(assert (=> d!56457 (=> res!91231 e!127032)))

(assert (=> d!56457 (= res!91231 (bvsge #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(assert (=> d!56457 (= (arrayNoDuplicates!0 (_keys!5927 thiss!1248) #b00000000000000000000000000000000 Nil!2451) e!127032)))

(declare-fun b!193041 () Bool)

(declare-fun contains!1365 (List!2454 (_ BitVec 64)) Bool)

(assert (=> b!193041 (= e!127033 (contains!1365 Nil!2451 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!56457 (not res!91231)) b!193043))

(assert (= (and b!193043 res!91229) b!193041))

(assert (= (and b!193043 res!91230) b!193039))

(assert (= (and b!193039 c!34798) b!193042))

(assert (= (and b!193039 (not c!34798)) b!193040))

(assert (= (or b!193042 b!193040) bm!19487))

(declare-fun m!219895 () Bool)

(assert (=> b!193039 m!219895))

(assert (=> b!193039 m!219895))

(declare-fun m!219897 () Bool)

(assert (=> b!193039 m!219897))

(assert (=> bm!19487 m!219895))

(declare-fun m!219899 () Bool)

(assert (=> bm!19487 m!219899))

(assert (=> b!193043 m!219895))

(assert (=> b!193043 m!219895))

(assert (=> b!193043 m!219897))

(assert (=> b!193041 m!219895))

(assert (=> b!193041 m!219895))

(declare-fun m!219901 () Bool)

(assert (=> b!193041 m!219901))

(assert (=> b!192989 d!56457))

(declare-fun b!193056 () Bool)

(declare-fun e!127042 () SeekEntryResult!695)

(declare-fun lt!96090 () SeekEntryResult!695)

(assert (=> b!193056 (= e!127042 (Found!695 (index!4952 lt!96090)))))

(declare-fun b!193057 () Bool)

(declare-fun e!127043 () SeekEntryResult!695)

(assert (=> b!193057 (= e!127043 e!127042)))

(declare-fun lt!96089 () (_ BitVec 64))

(assert (=> b!193057 (= lt!96089 (select (arr!3856 (_keys!5927 thiss!1248)) (index!4952 lt!96090)))))

(declare-fun c!34807 () Bool)

(assert (=> b!193057 (= c!34807 (= lt!96089 key!828))))

(declare-fun b!193058 () Bool)

(declare-fun e!127044 () SeekEntryResult!695)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8190 (_ BitVec 32)) SeekEntryResult!695)

(assert (=> b!193058 (= e!127044 (seekKeyOrZeroReturnVacant!0 (x!20637 lt!96090) (index!4952 lt!96090) (index!4952 lt!96090) key!828 (_keys!5927 thiss!1248) (mask!9184 thiss!1248)))))

(declare-fun d!56459 () Bool)

(declare-fun lt!96091 () SeekEntryResult!695)

(assert (=> d!56459 (and (or ((_ is Undefined!695) lt!96091) (not ((_ is Found!695) lt!96091)) (and (bvsge (index!4951 lt!96091) #b00000000000000000000000000000000) (bvslt (index!4951 lt!96091) (size!4180 (_keys!5927 thiss!1248))))) (or ((_ is Undefined!695) lt!96091) ((_ is Found!695) lt!96091) (not ((_ is MissingZero!695) lt!96091)) (and (bvsge (index!4950 lt!96091) #b00000000000000000000000000000000) (bvslt (index!4950 lt!96091) (size!4180 (_keys!5927 thiss!1248))))) (or ((_ is Undefined!695) lt!96091) ((_ is Found!695) lt!96091) ((_ is MissingZero!695) lt!96091) (not ((_ is MissingVacant!695) lt!96091)) (and (bvsge (index!4953 lt!96091) #b00000000000000000000000000000000) (bvslt (index!4953 lt!96091) (size!4180 (_keys!5927 thiss!1248))))) (or ((_ is Undefined!695) lt!96091) (ite ((_ is Found!695) lt!96091) (= (select (arr!3856 (_keys!5927 thiss!1248)) (index!4951 lt!96091)) key!828) (ite ((_ is MissingZero!695) lt!96091) (= (select (arr!3856 (_keys!5927 thiss!1248)) (index!4950 lt!96091)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!695) lt!96091) (= (select (arr!3856 (_keys!5927 thiss!1248)) (index!4953 lt!96091)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!56459 (= lt!96091 e!127043)))

(declare-fun c!34806 () Bool)

(assert (=> d!56459 (= c!34806 (and ((_ is Intermediate!695) lt!96090) (undefined!1507 lt!96090)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8190 (_ BitVec 32)) SeekEntryResult!695)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56459 (= lt!96090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9184 thiss!1248)) key!828 (_keys!5927 thiss!1248) (mask!9184 thiss!1248)))))

(assert (=> d!56459 (validMask!0 (mask!9184 thiss!1248))))

(assert (=> d!56459 (= (seekEntryOrOpen!0 key!828 (_keys!5927 thiss!1248) (mask!9184 thiss!1248)) lt!96091)))

(declare-fun b!193059 () Bool)

(declare-fun c!34805 () Bool)

(assert (=> b!193059 (= c!34805 (= lt!96089 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!193059 (= e!127042 e!127044)))

(declare-fun b!193060 () Bool)

(assert (=> b!193060 (= e!127043 Undefined!695)))

(declare-fun b!193061 () Bool)

(assert (=> b!193061 (= e!127044 (MissingZero!695 (index!4952 lt!96090)))))

(assert (= (and d!56459 c!34806) b!193060))

(assert (= (and d!56459 (not c!34806)) b!193057))

(assert (= (and b!193057 c!34807) b!193056))

(assert (= (and b!193057 (not c!34807)) b!193059))

(assert (= (and b!193059 c!34805) b!193061))

(assert (= (and b!193059 (not c!34805)) b!193058))

(declare-fun m!219903 () Bool)

(assert (=> b!193057 m!219903))

(declare-fun m!219905 () Bool)

(assert (=> b!193058 m!219905))

(declare-fun m!219907 () Bool)

(assert (=> d!56459 m!219907))

(declare-fun m!219909 () Bool)

(assert (=> d!56459 m!219909))

(declare-fun m!219911 () Bool)

(assert (=> d!56459 m!219911))

(declare-fun m!219913 () Bool)

(assert (=> d!56459 m!219913))

(declare-fun m!219915 () Bool)

(assert (=> d!56459 m!219915))

(assert (=> d!56459 m!219851))

(assert (=> d!56459 m!219911))

(assert (=> b!192980 d!56459))

(declare-fun d!56461 () Bool)

(declare-fun res!91238 () Bool)

(declare-fun e!127047 () Bool)

(assert (=> d!56461 (=> (not res!91238) (not e!127047))))

(declare-fun simpleValid!200 (LongMapFixedSize!2694) Bool)

(assert (=> d!56461 (= res!91238 (simpleValid!200 thiss!1248))))

(assert (=> d!56461 (= (valid!1097 thiss!1248) e!127047)))

(declare-fun b!193068 () Bool)

(declare-fun res!91239 () Bool)

(assert (=> b!193068 (=> (not res!91239) (not e!127047))))

(declare-fun arrayCountValidKeys!0 (array!8190 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!193068 (= res!91239 (= (arrayCountValidKeys!0 (_keys!5927 thiss!1248) #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))) (_size!1396 thiss!1248)))))

(declare-fun b!193069 () Bool)

(declare-fun res!91240 () Bool)

(assert (=> b!193069 (=> (not res!91240) (not e!127047))))

(assert (=> b!193069 (= res!91240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5927 thiss!1248) (mask!9184 thiss!1248)))))

(declare-fun b!193070 () Bool)

(assert (=> b!193070 (= e!127047 (arrayNoDuplicates!0 (_keys!5927 thiss!1248) #b00000000000000000000000000000000 Nil!2451))))

(assert (= (and d!56461 res!91238) b!193068))

(assert (= (and b!193068 res!91239) b!193069))

(assert (= (and b!193069 res!91240) b!193070))

(declare-fun m!219917 () Bool)

(assert (=> d!56461 m!219917))

(declare-fun m!219919 () Bool)

(assert (=> b!193068 m!219919))

(assert (=> b!193069 m!219825))

(assert (=> b!193070 m!219823))

(assert (=> start!19706 d!56461))

(declare-fun d!56463 () Bool)

(declare-fun e!127050 () Bool)

(assert (=> d!56463 e!127050))

(declare-fun res!91246 () Bool)

(assert (=> d!56463 (=> (not res!91246) (not e!127050))))

(declare-fun lt!96096 () SeekEntryResult!695)

(assert (=> d!56463 (= res!91246 ((_ is Found!695) lt!96096))))

(assert (=> d!56463 (= lt!96096 (seekEntryOrOpen!0 key!828 (_keys!5927 thiss!1248) (mask!9184 thiss!1248)))))

(declare-fun lt!96097 () Unit!5841)

(declare-fun choose!1062 (array!8190 array!8192 (_ BitVec 32) (_ BitVec 32) V!5611 V!5611 (_ BitVec 64) Int) Unit!5841)

(assert (=> d!56463 (= lt!96097 (choose!1062 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) key!828 (defaultEntry!3939 thiss!1248)))))

(assert (=> d!56463 (validMask!0 (mask!9184 thiss!1248))))

(assert (=> d!56463 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!180 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) key!828 (defaultEntry!3939 thiss!1248)) lt!96097)))

(declare-fun b!193075 () Bool)

(declare-fun res!91245 () Bool)

(assert (=> b!193075 (=> (not res!91245) (not e!127050))))

(assert (=> b!193075 (= res!91245 (inRange!0 (index!4951 lt!96096) (mask!9184 thiss!1248)))))

(declare-fun b!193076 () Bool)

(assert (=> b!193076 (= e!127050 (= (select (arr!3856 (_keys!5927 thiss!1248)) (index!4951 lt!96096)) key!828))))

(assert (=> b!193076 (and (bvsge (index!4951 lt!96096) #b00000000000000000000000000000000) (bvslt (index!4951 lt!96096) (size!4180 (_keys!5927 thiss!1248))))))

(assert (= (and d!56463 res!91246) b!193075))

(assert (= (and b!193075 res!91245) b!193076))

(assert (=> d!56463 m!219839))

(declare-fun m!219921 () Bool)

(assert (=> d!56463 m!219921))

(assert (=> d!56463 m!219851))

(declare-fun m!219923 () Bool)

(assert (=> b!193075 m!219923))

(declare-fun m!219925 () Bool)

(assert (=> b!193076 m!219925))

(assert (=> b!192982 d!56463))

(declare-fun d!56465 () Bool)

(assert (=> d!56465 (= (inRange!0 (index!4951 lt!96063) (mask!9184 thiss!1248)) (and (bvsge (index!4951 lt!96063) #b00000000000000000000000000000000) (bvslt (index!4951 lt!96063) (bvadd (mask!9184 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!192982 d!56465))

(declare-fun b!193093 () Bool)

(declare-fun lt!96103 () SeekEntryResult!695)

(assert (=> b!193093 (and (bvsge (index!4950 lt!96103) #b00000000000000000000000000000000) (bvslt (index!4950 lt!96103) (size!4180 (_keys!5927 thiss!1248))))))

(declare-fun res!91257 () Bool)

(assert (=> b!193093 (= res!91257 (= (select (arr!3856 (_keys!5927 thiss!1248)) (index!4950 lt!96103)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!127060 () Bool)

(assert (=> b!193093 (=> (not res!91257) (not e!127060))))

(declare-fun b!193094 () Bool)

(declare-fun call!19496 () Bool)

(assert (=> b!193094 (= e!127060 (not call!19496))))

(declare-fun b!193095 () Bool)

(declare-fun res!91256 () Bool)

(declare-fun e!127062 () Bool)

(assert (=> b!193095 (=> (not res!91256) (not e!127062))))

(assert (=> b!193095 (= res!91256 (= (select (arr!3856 (_keys!5927 thiss!1248)) (index!4953 lt!96103)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!193095 (and (bvsge (index!4953 lt!96103) #b00000000000000000000000000000000) (bvslt (index!4953 lt!96103) (size!4180 (_keys!5927 thiss!1248))))))

(declare-fun call!19495 () Bool)

(declare-fun bm!19492 () Bool)

(declare-fun c!34813 () Bool)

(assert (=> bm!19492 (= call!19495 (inRange!0 (ite c!34813 (index!4950 lt!96103) (index!4953 lt!96103)) (mask!9184 thiss!1248)))))

(declare-fun d!56467 () Bool)

(declare-fun e!127059 () Bool)

(assert (=> d!56467 e!127059))

(assert (=> d!56467 (= c!34813 ((_ is MissingZero!695) lt!96103))))

(assert (=> d!56467 (= lt!96103 (seekEntryOrOpen!0 key!828 (_keys!5927 thiss!1248) (mask!9184 thiss!1248)))))

(declare-fun lt!96102 () Unit!5841)

(declare-fun choose!1063 (array!8190 array!8192 (_ BitVec 32) (_ BitVec 32) V!5611 V!5611 (_ BitVec 64) Int) Unit!5841)

(assert (=> d!56467 (= lt!96102 (choose!1063 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) key!828 (defaultEntry!3939 thiss!1248)))))

(assert (=> d!56467 (validMask!0 (mask!9184 thiss!1248))))

(assert (=> d!56467 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!187 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) key!828 (defaultEntry!3939 thiss!1248)) lt!96102)))

(declare-fun b!193096 () Bool)

(declare-fun e!127061 () Bool)

(assert (=> b!193096 (= e!127061 ((_ is Undefined!695) lt!96103))))

(declare-fun bm!19493 () Bool)

(declare-fun arrayContainsKey!0 (array!8190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19493 (= call!19496 (arrayContainsKey!0 (_keys!5927 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!193097 () Bool)

(assert (=> b!193097 (= e!127062 (not call!19496))))

(declare-fun b!193098 () Bool)

(declare-fun res!91255 () Bool)

(assert (=> b!193098 (=> (not res!91255) (not e!127062))))

(assert (=> b!193098 (= res!91255 call!19495)))

(assert (=> b!193098 (= e!127061 e!127062)))

(declare-fun b!193099 () Bool)

(assert (=> b!193099 (= e!127059 e!127061)))

(declare-fun c!34812 () Bool)

(assert (=> b!193099 (= c!34812 ((_ is MissingVacant!695) lt!96103))))

(declare-fun b!193100 () Bool)

(assert (=> b!193100 (= e!127059 e!127060)))

(declare-fun res!91258 () Bool)

(assert (=> b!193100 (= res!91258 call!19495)))

(assert (=> b!193100 (=> (not res!91258) (not e!127060))))

(assert (= (and d!56467 c!34813) b!193100))

(assert (= (and d!56467 (not c!34813)) b!193099))

(assert (= (and b!193100 res!91258) b!193093))

(assert (= (and b!193093 res!91257) b!193094))

(assert (= (and b!193099 c!34812) b!193098))

(assert (= (and b!193099 (not c!34812)) b!193096))

(assert (= (and b!193098 res!91255) b!193095))

(assert (= (and b!193095 res!91256) b!193097))

(assert (= (or b!193100 b!193098) bm!19492))

(assert (= (or b!193094 b!193097) bm!19493))

(assert (=> d!56467 m!219839))

(declare-fun m!219927 () Bool)

(assert (=> d!56467 m!219927))

(assert (=> d!56467 m!219851))

(declare-fun m!219929 () Bool)

(assert (=> bm!19493 m!219929))

(declare-fun m!219931 () Bool)

(assert (=> b!193095 m!219931))

(declare-fun m!219933 () Bool)

(assert (=> b!193093 m!219933))

(declare-fun m!219935 () Bool)

(assert (=> bm!19492 m!219935))

(assert (=> b!192986 d!56467))

(declare-fun b!193109 () Bool)

(declare-fun e!127069 () Bool)

(declare-fun call!19499 () Bool)

(assert (=> b!193109 (= e!127069 call!19499)))

(declare-fun bm!19496 () Bool)

(assert (=> bm!19496 (= call!19499 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5927 thiss!1248) (mask!9184 thiss!1248)))))

(declare-fun b!193110 () Bool)

(declare-fun e!127071 () Bool)

(declare-fun e!127070 () Bool)

(assert (=> b!193110 (= e!127071 e!127070)))

(declare-fun c!34816 () Bool)

(assert (=> b!193110 (= c!34816 (validKeyInArray!0 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193111 () Bool)

(assert (=> b!193111 (= e!127070 call!19499)))

(declare-fun b!193112 () Bool)

(assert (=> b!193112 (= e!127070 e!127069)))

(declare-fun lt!96111 () (_ BitVec 64))

(assert (=> b!193112 (= lt!96111 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96112 () Unit!5841)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8190 (_ BitVec 64) (_ BitVec 32)) Unit!5841)

(assert (=> b!193112 (= lt!96112 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5927 thiss!1248) lt!96111 #b00000000000000000000000000000000))))

(assert (=> b!193112 (arrayContainsKey!0 (_keys!5927 thiss!1248) lt!96111 #b00000000000000000000000000000000)))

(declare-fun lt!96110 () Unit!5841)

(assert (=> b!193112 (= lt!96110 lt!96112)))

(declare-fun res!91263 () Bool)

(assert (=> b!193112 (= res!91263 (= (seekEntryOrOpen!0 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000) (_keys!5927 thiss!1248) (mask!9184 thiss!1248)) (Found!695 #b00000000000000000000000000000000)))))

(assert (=> b!193112 (=> (not res!91263) (not e!127069))))

(declare-fun d!56469 () Bool)

(declare-fun res!91264 () Bool)

(assert (=> d!56469 (=> res!91264 e!127071)))

(assert (=> d!56469 (= res!91264 (bvsge #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(assert (=> d!56469 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5927 thiss!1248) (mask!9184 thiss!1248)) e!127071)))

(assert (= (and d!56469 (not res!91264)) b!193110))

(assert (= (and b!193110 c!34816) b!193112))

(assert (= (and b!193110 (not c!34816)) b!193111))

(assert (= (and b!193112 res!91263) b!193109))

(assert (= (or b!193109 b!193111) bm!19496))

(declare-fun m!219937 () Bool)

(assert (=> bm!19496 m!219937))

(assert (=> b!193110 m!219895))

(assert (=> b!193110 m!219895))

(assert (=> b!193110 m!219897))

(assert (=> b!193112 m!219895))

(declare-fun m!219939 () Bool)

(assert (=> b!193112 m!219939))

(declare-fun m!219941 () Bool)

(assert (=> b!193112 m!219941))

(assert (=> b!193112 m!219895))

(declare-fun m!219943 () Bool)

(assert (=> b!193112 m!219943))

(assert (=> b!192977 d!56469))

(declare-fun d!56471 () Bool)

(assert (=> d!56471 (= (array_inv!2491 (_keys!5927 thiss!1248)) (bvsge (size!4180 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192983 d!56471))

(declare-fun d!56473 () Bool)

(assert (=> d!56473 (= (array_inv!2492 (_values!3922 thiss!1248)) (bvsge (size!4181 (_values!3922 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192983 d!56473))

(declare-fun b!193155 () Bool)

(declare-fun e!127106 () ListLongMap!2469)

(declare-fun call!19518 () ListLongMap!2469)

(assert (=> b!193155 (= e!127106 (+!308 call!19518 (tuple2!3539 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3780 thiss!1248))))))

(declare-fun b!193156 () Bool)

(declare-fun e!127100 () ListLongMap!2469)

(assert (=> b!193156 (= e!127106 e!127100)))

(declare-fun c!34831 () Bool)

(assert (=> b!193156 (= c!34831 (and (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19511 () Bool)

(declare-fun call!19514 () ListLongMap!2469)

(declare-fun getCurrentListMapNoExtraKeys!215 (array!8190 array!8192 (_ BitVec 32) (_ BitVec 32) V!5611 V!5611 (_ BitVec 32) Int) ListLongMap!2469)

(assert (=> bm!19511 (= call!19514 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun bm!19512 () Bool)

(declare-fun call!19517 () Bool)

(declare-fun lt!96169 () ListLongMap!2469)

(assert (=> bm!19512 (= call!19517 (contains!1363 lt!96169 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193157 () Bool)

(declare-fun e!127110 () Bool)

(assert (=> b!193157 (= e!127110 (not call!19517))))

(declare-fun b!193158 () Bool)

(declare-fun e!127107 () Bool)

(declare-fun apply!185 (ListLongMap!2469 (_ BitVec 64)) V!5611)

(assert (=> b!193158 (= e!127107 (= (apply!185 lt!96169 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3780 thiss!1248)))))

(declare-fun bm!19513 () Bool)

(declare-fun call!19515 () ListLongMap!2469)

(assert (=> bm!19513 (= call!19515 call!19514)))

(declare-fun bm!19514 () Bool)

(declare-fun call!19516 () ListLongMap!2469)

(assert (=> bm!19514 (= call!19516 call!19515)))

(declare-fun b!193159 () Bool)

(declare-fun e!127105 () Bool)

(assert (=> b!193159 (= e!127105 (= (apply!185 lt!96169 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3780 thiss!1248)))))

(declare-fun b!193160 () Bool)

(declare-fun e!127109 () Unit!5841)

(declare-fun Unit!5847 () Unit!5841)

(assert (=> b!193160 (= e!127109 Unit!5847)))

(declare-fun b!193161 () Bool)

(declare-fun e!127103 () Bool)

(assert (=> b!193161 (= e!127103 (validKeyInArray!0 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19515 () Bool)

(declare-fun call!19519 () Bool)

(assert (=> bm!19515 (= call!19519 (contains!1363 lt!96169 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193162 () Bool)

(declare-fun lt!96161 () Unit!5841)

(assert (=> b!193162 (= e!127109 lt!96161)))

(declare-fun lt!96160 () ListLongMap!2469)

(assert (=> b!193162 (= lt!96160 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96159 () (_ BitVec 64))

(assert (=> b!193162 (= lt!96159 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96174 () (_ BitVec 64))

(assert (=> b!193162 (= lt!96174 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96176 () Unit!5841)

(declare-fun addStillContains!161 (ListLongMap!2469 (_ BitVec 64) V!5611 (_ BitVec 64)) Unit!5841)

(assert (=> b!193162 (= lt!96176 (addStillContains!161 lt!96160 lt!96159 (zeroValue!3780 thiss!1248) lt!96174))))

(assert (=> b!193162 (contains!1363 (+!308 lt!96160 (tuple2!3539 lt!96159 (zeroValue!3780 thiss!1248))) lt!96174)))

(declare-fun lt!96165 () Unit!5841)

(assert (=> b!193162 (= lt!96165 lt!96176)))

(declare-fun lt!96164 () ListLongMap!2469)

(assert (=> b!193162 (= lt!96164 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96175 () (_ BitVec 64))

(assert (=> b!193162 (= lt!96175 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96157 () (_ BitVec 64))

(assert (=> b!193162 (= lt!96157 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96167 () Unit!5841)

(declare-fun addApplyDifferent!161 (ListLongMap!2469 (_ BitVec 64) V!5611 (_ BitVec 64)) Unit!5841)

(assert (=> b!193162 (= lt!96167 (addApplyDifferent!161 lt!96164 lt!96175 (minValue!3780 thiss!1248) lt!96157))))

(assert (=> b!193162 (= (apply!185 (+!308 lt!96164 (tuple2!3539 lt!96175 (minValue!3780 thiss!1248))) lt!96157) (apply!185 lt!96164 lt!96157))))

(declare-fun lt!96168 () Unit!5841)

(assert (=> b!193162 (= lt!96168 lt!96167)))

(declare-fun lt!96158 () ListLongMap!2469)

(assert (=> b!193162 (= lt!96158 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96177 () (_ BitVec 64))

(assert (=> b!193162 (= lt!96177 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96166 () (_ BitVec 64))

(assert (=> b!193162 (= lt!96166 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96170 () Unit!5841)

(assert (=> b!193162 (= lt!96170 (addApplyDifferent!161 lt!96158 lt!96177 (zeroValue!3780 thiss!1248) lt!96166))))

(assert (=> b!193162 (= (apply!185 (+!308 lt!96158 (tuple2!3539 lt!96177 (zeroValue!3780 thiss!1248))) lt!96166) (apply!185 lt!96158 lt!96166))))

(declare-fun lt!96173 () Unit!5841)

(assert (=> b!193162 (= lt!96173 lt!96170)))

(declare-fun lt!96163 () ListLongMap!2469)

(assert (=> b!193162 (= lt!96163 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96178 () (_ BitVec 64))

(assert (=> b!193162 (= lt!96178 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96162 () (_ BitVec 64))

(assert (=> b!193162 (= lt!96162 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193162 (= lt!96161 (addApplyDifferent!161 lt!96163 lt!96178 (minValue!3780 thiss!1248) lt!96162))))

(assert (=> b!193162 (= (apply!185 (+!308 lt!96163 (tuple2!3539 lt!96178 (minValue!3780 thiss!1248))) lt!96162) (apply!185 lt!96163 lt!96162))))

(declare-fun b!193163 () Bool)

(declare-fun e!127098 () Bool)

(declare-fun get!2229 (ValueCell!1893 V!5611) V!5611)

(declare-fun dynLambda!523 (Int (_ BitVec 64)) V!5611)

(assert (=> b!193163 (= e!127098 (= (apply!185 lt!96169 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)) (get!2229 (select (arr!3857 (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!523 (defaultEntry!3939 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!193163 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4181 (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))))))))

(assert (=> b!193163 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(declare-fun b!193164 () Bool)

(declare-fun e!127102 () Bool)

(assert (=> b!193164 (= e!127102 (validKeyInArray!0 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193165 () Bool)

(declare-fun e!127099 () Bool)

(assert (=> b!193165 (= e!127099 e!127105)))

(declare-fun res!91291 () Bool)

(assert (=> b!193165 (= res!91291 call!19519)))

(assert (=> b!193165 (=> (not res!91291) (not e!127105))))

(declare-fun b!193166 () Bool)

(declare-fun c!34832 () Bool)

(assert (=> b!193166 (= c!34832 (and (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!127101 () ListLongMap!2469)

(assert (=> b!193166 (= e!127100 e!127101)))

(declare-fun b!193167 () Bool)

(declare-fun res!91289 () Bool)

(declare-fun e!127108 () Bool)

(assert (=> b!193167 (=> (not res!91289) (not e!127108))))

(declare-fun e!127104 () Bool)

(assert (=> b!193167 (= res!91289 e!127104)))

(declare-fun res!91288 () Bool)

(assert (=> b!193167 (=> res!91288 e!127104)))

(assert (=> b!193167 (= res!91288 (not e!127102))))

(declare-fun res!91286 () Bool)

(assert (=> b!193167 (=> (not res!91286) (not e!127102))))

(assert (=> b!193167 (= res!91286 (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(declare-fun b!193168 () Bool)

(assert (=> b!193168 (= e!127108 e!127099)))

(declare-fun c!34833 () Bool)

(assert (=> b!193168 (= c!34833 (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19516 () Bool)

(declare-fun call!19520 () ListLongMap!2469)

(assert (=> bm!19516 (= call!19520 call!19518)))

(declare-fun b!193169 () Bool)

(assert (=> b!193169 (= e!127110 e!127107)))

(declare-fun res!91283 () Bool)

(assert (=> b!193169 (= res!91283 call!19517)))

(assert (=> b!193169 (=> (not res!91283) (not e!127107))))

(declare-fun b!193170 () Bool)

(declare-fun res!91285 () Bool)

(assert (=> b!193170 (=> (not res!91285) (not e!127108))))

(assert (=> b!193170 (= res!91285 e!127110)))

(declare-fun c!34830 () Bool)

(assert (=> b!193170 (= c!34830 (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!193171 () Bool)

(assert (=> b!193171 (= e!127100 call!19520)))

(declare-fun b!193172 () Bool)

(assert (=> b!193172 (= e!127104 e!127098)))

(declare-fun res!91287 () Bool)

(assert (=> b!193172 (=> (not res!91287) (not e!127098))))

(assert (=> b!193172 (= res!91287 (contains!1363 lt!96169 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!193172 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(declare-fun c!34829 () Bool)

(declare-fun bm!19517 () Bool)

(assert (=> bm!19517 (= call!19518 (+!308 (ite c!34829 call!19514 (ite c!34831 call!19515 call!19516)) (ite (or c!34829 c!34831) (tuple2!3539 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3780 thiss!1248)) (tuple2!3539 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3780 thiss!1248)))))))

(declare-fun b!193173 () Bool)

(assert (=> b!193173 (= e!127101 call!19520)))

(declare-fun d!56475 () Bool)

(assert (=> d!56475 e!127108))

(declare-fun res!91290 () Bool)

(assert (=> d!56475 (=> (not res!91290) (not e!127108))))

(assert (=> d!56475 (= res!91290 (or (bvsge #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))))

(declare-fun lt!96172 () ListLongMap!2469)

(assert (=> d!56475 (= lt!96169 lt!96172)))

(declare-fun lt!96171 () Unit!5841)

(assert (=> d!56475 (= lt!96171 e!127109)))

(declare-fun c!34834 () Bool)

(assert (=> d!56475 (= c!34834 e!127103)))

(declare-fun res!91284 () Bool)

(assert (=> d!56475 (=> (not res!91284) (not e!127103))))

(assert (=> d!56475 (= res!91284 (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(assert (=> d!56475 (= lt!96172 e!127106)))

(assert (=> d!56475 (= c!34829 (and (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56475 (validMask!0 (mask!9184 thiss!1248))))

(assert (=> d!56475 (= (getCurrentListMap!893 (_keys!5927 thiss!1248) (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)) lt!96169)))

(declare-fun b!193174 () Bool)

(assert (=> b!193174 (= e!127101 call!19516)))

(declare-fun b!193175 () Bool)

(assert (=> b!193175 (= e!127099 (not call!19519))))

(assert (= (and d!56475 c!34829) b!193155))

(assert (= (and d!56475 (not c!34829)) b!193156))

(assert (= (and b!193156 c!34831) b!193171))

(assert (= (and b!193156 (not c!34831)) b!193166))

(assert (= (and b!193166 c!34832) b!193173))

(assert (= (and b!193166 (not c!34832)) b!193174))

(assert (= (or b!193173 b!193174) bm!19514))

(assert (= (or b!193171 bm!19514) bm!19513))

(assert (= (or b!193171 b!193173) bm!19516))

(assert (= (or b!193155 bm!19513) bm!19511))

(assert (= (or b!193155 bm!19516) bm!19517))

(assert (= (and d!56475 res!91284) b!193161))

(assert (= (and d!56475 c!34834) b!193162))

(assert (= (and d!56475 (not c!34834)) b!193160))

(assert (= (and d!56475 res!91290) b!193167))

(assert (= (and b!193167 res!91286) b!193164))

(assert (= (and b!193167 (not res!91288)) b!193172))

(assert (= (and b!193172 res!91287) b!193163))

(assert (= (and b!193167 res!91289) b!193170))

(assert (= (and b!193170 c!34830) b!193169))

(assert (= (and b!193170 (not c!34830)) b!193157))

(assert (= (and b!193169 res!91283) b!193158))

(assert (= (or b!193169 b!193157) bm!19512))

(assert (= (and b!193170 res!91285) b!193168))

(assert (= (and b!193168 c!34833) b!193165))

(assert (= (and b!193168 (not c!34833)) b!193175))

(assert (= (and b!193165 res!91291) b!193159))

(assert (= (or b!193165 b!193175) bm!19515))

(declare-fun b_lambda!7485 () Bool)

(assert (=> (not b_lambda!7485) (not b!193163)))

(declare-fun t!7386 () Bool)

(declare-fun tb!2889 () Bool)

(assert (=> (and b!192983 (= (defaultEntry!3939 thiss!1248) (defaultEntry!3939 thiss!1248)) t!7386) tb!2889))

(declare-fun result!4929 () Bool)

(assert (=> tb!2889 (= result!4929 tp_is_empty!4473)))

(assert (=> b!193163 t!7386))

(declare-fun b_and!11425 () Bool)

(assert (= b_and!11421 (and (=> t!7386 result!4929) b_and!11425)))

(declare-fun m!219945 () Bool)

(assert (=> bm!19512 m!219945))

(declare-fun m!219947 () Bool)

(assert (=> b!193155 m!219947))

(assert (=> d!56475 m!219851))

(assert (=> b!193172 m!219895))

(assert (=> b!193172 m!219895))

(declare-fun m!219949 () Bool)

(assert (=> b!193172 m!219949))

(declare-fun m!219951 () Bool)

(assert (=> bm!19517 m!219951))

(declare-fun m!219953 () Bool)

(assert (=> bm!19511 m!219953))

(declare-fun m!219955 () Bool)

(assert (=> bm!19515 m!219955))

(declare-fun m!219957 () Bool)

(assert (=> b!193162 m!219957))

(declare-fun m!219959 () Bool)

(assert (=> b!193162 m!219959))

(assert (=> b!193162 m!219895))

(declare-fun m!219961 () Bool)

(assert (=> b!193162 m!219961))

(assert (=> b!193162 m!219961))

(declare-fun m!219963 () Bool)

(assert (=> b!193162 m!219963))

(declare-fun m!219965 () Bool)

(assert (=> b!193162 m!219965))

(declare-fun m!219967 () Bool)

(assert (=> b!193162 m!219967))

(declare-fun m!219969 () Bool)

(assert (=> b!193162 m!219969))

(assert (=> b!193162 m!219957))

(declare-fun m!219971 () Bool)

(assert (=> b!193162 m!219971))

(assert (=> b!193162 m!219959))

(declare-fun m!219973 () Bool)

(assert (=> b!193162 m!219973))

(declare-fun m!219975 () Bool)

(assert (=> b!193162 m!219975))

(declare-fun m!219977 () Bool)

(assert (=> b!193162 m!219977))

(declare-fun m!219979 () Bool)

(assert (=> b!193162 m!219979))

(assert (=> b!193162 m!219953))

(assert (=> b!193162 m!219977))

(declare-fun m!219981 () Bool)

(assert (=> b!193162 m!219981))

(declare-fun m!219983 () Bool)

(assert (=> b!193162 m!219983))

(declare-fun m!219985 () Bool)

(assert (=> b!193162 m!219985))

(declare-fun m!219987 () Bool)

(assert (=> b!193159 m!219987))

(declare-fun m!219989 () Bool)

(assert (=> b!193163 m!219989))

(declare-fun m!219991 () Bool)

(assert (=> b!193163 m!219991))

(declare-fun m!219993 () Bool)

(assert (=> b!193163 m!219993))

(assert (=> b!193163 m!219991))

(assert (=> b!193163 m!219895))

(declare-fun m!219995 () Bool)

(assert (=> b!193163 m!219995))

(assert (=> b!193163 m!219895))

(assert (=> b!193163 m!219989))

(declare-fun m!219997 () Bool)

(assert (=> b!193158 m!219997))

(assert (=> b!193161 m!219895))

(assert (=> b!193161 m!219895))

(assert (=> b!193161 m!219897))

(assert (=> b!193164 m!219895))

(assert (=> b!193164 m!219895))

(assert (=> b!193164 m!219897))

(assert (=> b!192984 d!56475))

(declare-fun d!56477 () Bool)

(declare-fun e!127113 () Bool)

(assert (=> d!56477 e!127113))

(declare-fun res!91294 () Bool)

(assert (=> d!56477 (=> (not res!91294) (not e!127113))))

(assert (=> d!56477 (= res!91294 (and (bvsge (index!4951 lt!96063) #b00000000000000000000000000000000) (bvslt (index!4951 lt!96063) (size!4181 (_values!3922 thiss!1248)))))))

(declare-fun lt!96181 () Unit!5841)

(declare-fun choose!1064 (array!8190 array!8192 (_ BitVec 32) (_ BitVec 32) V!5611 V!5611 (_ BitVec 32) (_ BitVec 64) V!5611 Int) Unit!5841)

(assert (=> d!56477 (= lt!96181 (choose!1064 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) (index!4951 lt!96063) key!828 v!309 (defaultEntry!3939 thiss!1248)))))

(assert (=> d!56477 (validMask!0 (mask!9184 thiss!1248))))

(assert (=> d!56477 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!114 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) (index!4951 lt!96063) key!828 v!309 (defaultEntry!3939 thiss!1248)) lt!96181)))

(declare-fun b!193180 () Bool)

(assert (=> b!193180 (= e!127113 (= (+!308 (getCurrentListMap!893 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)) (tuple2!3539 key!828 v!309)) (getCurrentListMap!893 (_keys!5927 thiss!1248) (array!8193 (store (arr!3857 (_values!3922 thiss!1248)) (index!4951 lt!96063) (ValueCellFull!1893 v!309)) (size!4181 (_values!3922 thiss!1248))) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248))))))

(assert (= (and d!56477 res!91294) b!193180))

(declare-fun m!219999 () Bool)

(assert (=> d!56477 m!219999))

(assert (=> d!56477 m!219851))

(assert (=> b!193180 m!219845))

(assert (=> b!193180 m!219845))

(declare-fun m!220001 () Bool)

(assert (=> b!193180 m!220001))

(assert (=> b!193180 m!219855))

(assert (=> b!193180 m!219853))

(assert (=> b!192984 d!56477))

(declare-fun d!56479 () Bool)

(assert (=> d!56479 (= (validMask!0 (mask!9184 thiss!1248)) (and (or (= (mask!9184 thiss!1248) #b00000000000000000000000000000111) (= (mask!9184 thiss!1248) #b00000000000000000000000000001111) (= (mask!9184 thiss!1248) #b00000000000000000000000000011111) (= (mask!9184 thiss!1248) #b00000000000000000000000000111111) (= (mask!9184 thiss!1248) #b00000000000000000000000001111111) (= (mask!9184 thiss!1248) #b00000000000000000000000011111111) (= (mask!9184 thiss!1248) #b00000000000000000000000111111111) (= (mask!9184 thiss!1248) #b00000000000000000000001111111111) (= (mask!9184 thiss!1248) #b00000000000000000000011111111111) (= (mask!9184 thiss!1248) #b00000000000000000000111111111111) (= (mask!9184 thiss!1248) #b00000000000000000001111111111111) (= (mask!9184 thiss!1248) #b00000000000000000011111111111111) (= (mask!9184 thiss!1248) #b00000000000000000111111111111111) (= (mask!9184 thiss!1248) #b00000000000000001111111111111111) (= (mask!9184 thiss!1248) #b00000000000000011111111111111111) (= (mask!9184 thiss!1248) #b00000000000000111111111111111111) (= (mask!9184 thiss!1248) #b00000000000001111111111111111111) (= (mask!9184 thiss!1248) #b00000000000011111111111111111111) (= (mask!9184 thiss!1248) #b00000000000111111111111111111111) (= (mask!9184 thiss!1248) #b00000000001111111111111111111111) (= (mask!9184 thiss!1248) #b00000000011111111111111111111111) (= (mask!9184 thiss!1248) #b00000000111111111111111111111111) (= (mask!9184 thiss!1248) #b00000001111111111111111111111111) (= (mask!9184 thiss!1248) #b00000011111111111111111111111111) (= (mask!9184 thiss!1248) #b00000111111111111111111111111111) (= (mask!9184 thiss!1248) #b00001111111111111111111111111111) (= (mask!9184 thiss!1248) #b00011111111111111111111111111111) (= (mask!9184 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9184 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!192984 d!56479))

(declare-fun d!56481 () Bool)

(declare-fun e!127116 () Bool)

(assert (=> d!56481 e!127116))

(declare-fun res!91300 () Bool)

(assert (=> d!56481 (=> (not res!91300) (not e!127116))))

(declare-fun lt!96192 () ListLongMap!2469)

(assert (=> d!56481 (= res!91300 (contains!1363 lt!96192 (_1!1779 (tuple2!3539 key!828 v!309))))))

(declare-fun lt!96193 () List!2453)

(assert (=> d!56481 (= lt!96192 (ListLongMap!2470 lt!96193))))

(declare-fun lt!96191 () Unit!5841)

(declare-fun lt!96190 () Unit!5841)

(assert (=> d!56481 (= lt!96191 lt!96190)))

(declare-datatypes ((Option!247 0))(
  ( (Some!246 (v!4234 V!5611)) (None!245) )
))
(declare-fun getValueByKey!241 (List!2453 (_ BitVec 64)) Option!247)

(assert (=> d!56481 (= (getValueByKey!241 lt!96193 (_1!1779 (tuple2!3539 key!828 v!309))) (Some!246 (_2!1779 (tuple2!3539 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!130 (List!2453 (_ BitVec 64) V!5611) Unit!5841)

(assert (=> d!56481 (= lt!96190 (lemmaContainsTupThenGetReturnValue!130 lt!96193 (_1!1779 (tuple2!3539 key!828 v!309)) (_2!1779 (tuple2!3539 key!828 v!309))))))

(declare-fun insertStrictlySorted!132 (List!2453 (_ BitVec 64) V!5611) List!2453)

(assert (=> d!56481 (= lt!96193 (insertStrictlySorted!132 (toList!1250 lt!96059) (_1!1779 (tuple2!3539 key!828 v!309)) (_2!1779 (tuple2!3539 key!828 v!309))))))

(assert (=> d!56481 (= (+!308 lt!96059 (tuple2!3539 key!828 v!309)) lt!96192)))

(declare-fun b!193185 () Bool)

(declare-fun res!91299 () Bool)

(assert (=> b!193185 (=> (not res!91299) (not e!127116))))

(assert (=> b!193185 (= res!91299 (= (getValueByKey!241 (toList!1250 lt!96192) (_1!1779 (tuple2!3539 key!828 v!309))) (Some!246 (_2!1779 (tuple2!3539 key!828 v!309)))))))

(declare-fun b!193186 () Bool)

(declare-fun contains!1366 (List!2453 tuple2!3538) Bool)

(assert (=> b!193186 (= e!127116 (contains!1366 (toList!1250 lt!96192) (tuple2!3539 key!828 v!309)))))

(assert (= (and d!56481 res!91300) b!193185))

(assert (= (and b!193185 res!91299) b!193186))

(declare-fun m!220003 () Bool)

(assert (=> d!56481 m!220003))

(declare-fun m!220005 () Bool)

(assert (=> d!56481 m!220005))

(declare-fun m!220007 () Bool)

(assert (=> d!56481 m!220007))

(declare-fun m!220009 () Bool)

(assert (=> d!56481 m!220009))

(declare-fun m!220011 () Bool)

(assert (=> b!193185 m!220011))

(declare-fun m!220013 () Bool)

(assert (=> b!193186 m!220013))

(assert (=> b!192984 d!56481))

(declare-fun d!56483 () Bool)

(declare-fun e!127122 () Bool)

(assert (=> d!56483 e!127122))

(declare-fun res!91303 () Bool)

(assert (=> d!56483 (=> res!91303 e!127122)))

(declare-fun lt!96205 () Bool)

(assert (=> d!56483 (= res!91303 (not lt!96205))))

(declare-fun lt!96204 () Bool)

(assert (=> d!56483 (= lt!96205 lt!96204)))

(declare-fun lt!96202 () Unit!5841)

(declare-fun e!127121 () Unit!5841)

(assert (=> d!56483 (= lt!96202 e!127121)))

(declare-fun c!34837 () Bool)

(assert (=> d!56483 (= c!34837 lt!96204)))

(declare-fun containsKey!245 (List!2453 (_ BitVec 64)) Bool)

(assert (=> d!56483 (= lt!96204 (containsKey!245 (toList!1250 lt!96059) key!828))))

(assert (=> d!56483 (= (contains!1363 lt!96059 key!828) lt!96205)))

(declare-fun b!193193 () Bool)

(declare-fun lt!96203 () Unit!5841)

(assert (=> b!193193 (= e!127121 lt!96203)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!194 (List!2453 (_ BitVec 64)) Unit!5841)

(assert (=> b!193193 (= lt!96203 (lemmaContainsKeyImpliesGetValueByKeyDefined!194 (toList!1250 lt!96059) key!828))))

(declare-fun isDefined!195 (Option!247) Bool)

(assert (=> b!193193 (isDefined!195 (getValueByKey!241 (toList!1250 lt!96059) key!828))))

(declare-fun b!193194 () Bool)

(declare-fun Unit!5848 () Unit!5841)

(assert (=> b!193194 (= e!127121 Unit!5848)))

(declare-fun b!193195 () Bool)

(assert (=> b!193195 (= e!127122 (isDefined!195 (getValueByKey!241 (toList!1250 lt!96059) key!828)))))

(assert (= (and d!56483 c!34837) b!193193))

(assert (= (and d!56483 (not c!34837)) b!193194))

(assert (= (and d!56483 (not res!91303)) b!193195))

(declare-fun m!220015 () Bool)

(assert (=> d!56483 m!220015))

(declare-fun m!220017 () Bool)

(assert (=> b!193193 m!220017))

(declare-fun m!220019 () Bool)

(assert (=> b!193193 m!220019))

(assert (=> b!193193 m!220019))

(declare-fun m!220021 () Bool)

(assert (=> b!193193 m!220021))

(assert (=> b!193195 m!220019))

(assert (=> b!193195 m!220019))

(assert (=> b!193195 m!220021))

(assert (=> b!192984 d!56483))

(declare-fun b!193196 () Bool)

(declare-fun e!127131 () ListLongMap!2469)

(declare-fun call!19525 () ListLongMap!2469)

(assert (=> b!193196 (= e!127131 (+!308 call!19525 (tuple2!3539 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3780 thiss!1248))))))

(declare-fun b!193197 () Bool)

(declare-fun e!127125 () ListLongMap!2469)

(assert (=> b!193197 (= e!127131 e!127125)))

(declare-fun c!34840 () Bool)

(assert (=> b!193197 (= c!34840 (and (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19518 () Bool)

(declare-fun call!19521 () ListLongMap!2469)

(assert (=> bm!19518 (= call!19521 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun bm!19519 () Bool)

(declare-fun call!19524 () Bool)

(declare-fun lt!96218 () ListLongMap!2469)

(assert (=> bm!19519 (= call!19524 (contains!1363 lt!96218 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193198 () Bool)

(declare-fun e!127135 () Bool)

(assert (=> b!193198 (= e!127135 (not call!19524))))

(declare-fun b!193199 () Bool)

(declare-fun e!127132 () Bool)

(assert (=> b!193199 (= e!127132 (= (apply!185 lt!96218 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3780 thiss!1248)))))

(declare-fun bm!19520 () Bool)

(declare-fun call!19522 () ListLongMap!2469)

(assert (=> bm!19520 (= call!19522 call!19521)))

(declare-fun bm!19521 () Bool)

(declare-fun call!19523 () ListLongMap!2469)

(assert (=> bm!19521 (= call!19523 call!19522)))

(declare-fun b!193200 () Bool)

(declare-fun e!127130 () Bool)

(assert (=> b!193200 (= e!127130 (= (apply!185 lt!96218 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3780 thiss!1248)))))

(declare-fun b!193201 () Bool)

(declare-fun e!127134 () Unit!5841)

(declare-fun Unit!5849 () Unit!5841)

(assert (=> b!193201 (= e!127134 Unit!5849)))

(declare-fun b!193202 () Bool)

(declare-fun e!127128 () Bool)

(assert (=> b!193202 (= e!127128 (validKeyInArray!0 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19522 () Bool)

(declare-fun call!19526 () Bool)

(assert (=> bm!19522 (= call!19526 (contains!1363 lt!96218 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193203 () Bool)

(declare-fun lt!96210 () Unit!5841)

(assert (=> b!193203 (= e!127134 lt!96210)))

(declare-fun lt!96209 () ListLongMap!2469)

(assert (=> b!193203 (= lt!96209 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96208 () (_ BitVec 64))

(assert (=> b!193203 (= lt!96208 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96223 () (_ BitVec 64))

(assert (=> b!193203 (= lt!96223 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96225 () Unit!5841)

(assert (=> b!193203 (= lt!96225 (addStillContains!161 lt!96209 lt!96208 (zeroValue!3780 thiss!1248) lt!96223))))

(assert (=> b!193203 (contains!1363 (+!308 lt!96209 (tuple2!3539 lt!96208 (zeroValue!3780 thiss!1248))) lt!96223)))

(declare-fun lt!96214 () Unit!5841)

(assert (=> b!193203 (= lt!96214 lt!96225)))

(declare-fun lt!96213 () ListLongMap!2469)

(assert (=> b!193203 (= lt!96213 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96224 () (_ BitVec 64))

(assert (=> b!193203 (= lt!96224 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96206 () (_ BitVec 64))

(assert (=> b!193203 (= lt!96206 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96216 () Unit!5841)

(assert (=> b!193203 (= lt!96216 (addApplyDifferent!161 lt!96213 lt!96224 (minValue!3780 thiss!1248) lt!96206))))

(assert (=> b!193203 (= (apply!185 (+!308 lt!96213 (tuple2!3539 lt!96224 (minValue!3780 thiss!1248))) lt!96206) (apply!185 lt!96213 lt!96206))))

(declare-fun lt!96217 () Unit!5841)

(assert (=> b!193203 (= lt!96217 lt!96216)))

(declare-fun lt!96207 () ListLongMap!2469)

(assert (=> b!193203 (= lt!96207 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96226 () (_ BitVec 64))

(assert (=> b!193203 (= lt!96226 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96215 () (_ BitVec 64))

(assert (=> b!193203 (= lt!96215 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96219 () Unit!5841)

(assert (=> b!193203 (= lt!96219 (addApplyDifferent!161 lt!96207 lt!96226 (zeroValue!3780 thiss!1248) lt!96215))))

(assert (=> b!193203 (= (apply!185 (+!308 lt!96207 (tuple2!3539 lt!96226 (zeroValue!3780 thiss!1248))) lt!96215) (apply!185 lt!96207 lt!96215))))

(declare-fun lt!96222 () Unit!5841)

(assert (=> b!193203 (= lt!96222 lt!96219)))

(declare-fun lt!96212 () ListLongMap!2469)

(assert (=> b!193203 (= lt!96212 (getCurrentListMapNoExtraKeys!215 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)))))

(declare-fun lt!96227 () (_ BitVec 64))

(assert (=> b!193203 (= lt!96227 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96211 () (_ BitVec 64))

(assert (=> b!193203 (= lt!96211 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193203 (= lt!96210 (addApplyDifferent!161 lt!96212 lt!96227 (minValue!3780 thiss!1248) lt!96211))))

(assert (=> b!193203 (= (apply!185 (+!308 lt!96212 (tuple2!3539 lt!96227 (minValue!3780 thiss!1248))) lt!96211) (apply!185 lt!96212 lt!96211))))

(declare-fun b!193204 () Bool)

(declare-fun e!127123 () Bool)

(assert (=> b!193204 (= e!127123 (= (apply!185 lt!96218 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)) (get!2229 (select (arr!3857 (_values!3922 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!523 (defaultEntry!3939 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!193204 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4181 (_values!3922 thiss!1248))))))

(assert (=> b!193204 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(declare-fun b!193205 () Bool)

(declare-fun e!127127 () Bool)

(assert (=> b!193205 (= e!127127 (validKeyInArray!0 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193206 () Bool)

(declare-fun e!127124 () Bool)

(assert (=> b!193206 (= e!127124 e!127130)))

(declare-fun res!91312 () Bool)

(assert (=> b!193206 (= res!91312 call!19526)))

(assert (=> b!193206 (=> (not res!91312) (not e!127130))))

(declare-fun b!193207 () Bool)

(declare-fun c!34841 () Bool)

(assert (=> b!193207 (= c!34841 (and (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!127126 () ListLongMap!2469)

(assert (=> b!193207 (= e!127125 e!127126)))

(declare-fun b!193208 () Bool)

(declare-fun res!91310 () Bool)

(declare-fun e!127133 () Bool)

(assert (=> b!193208 (=> (not res!91310) (not e!127133))))

(declare-fun e!127129 () Bool)

(assert (=> b!193208 (= res!91310 e!127129)))

(declare-fun res!91309 () Bool)

(assert (=> b!193208 (=> res!91309 e!127129)))

(assert (=> b!193208 (= res!91309 (not e!127127))))

(declare-fun res!91307 () Bool)

(assert (=> b!193208 (=> (not res!91307) (not e!127127))))

(assert (=> b!193208 (= res!91307 (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(declare-fun b!193209 () Bool)

(assert (=> b!193209 (= e!127133 e!127124)))

(declare-fun c!34842 () Bool)

(assert (=> b!193209 (= c!34842 (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19523 () Bool)

(declare-fun call!19527 () ListLongMap!2469)

(assert (=> bm!19523 (= call!19527 call!19525)))

(declare-fun b!193210 () Bool)

(assert (=> b!193210 (= e!127135 e!127132)))

(declare-fun res!91304 () Bool)

(assert (=> b!193210 (= res!91304 call!19524)))

(assert (=> b!193210 (=> (not res!91304) (not e!127132))))

(declare-fun b!193211 () Bool)

(declare-fun res!91306 () Bool)

(assert (=> b!193211 (=> (not res!91306) (not e!127133))))

(assert (=> b!193211 (= res!91306 e!127135)))

(declare-fun c!34839 () Bool)

(assert (=> b!193211 (= c!34839 (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!193212 () Bool)

(assert (=> b!193212 (= e!127125 call!19527)))

(declare-fun b!193213 () Bool)

(assert (=> b!193213 (= e!127129 e!127123)))

(declare-fun res!91308 () Bool)

(assert (=> b!193213 (=> (not res!91308) (not e!127123))))

(assert (=> b!193213 (= res!91308 (contains!1363 lt!96218 (select (arr!3856 (_keys!5927 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!193213 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(declare-fun bm!19524 () Bool)

(declare-fun c!34838 () Bool)

(assert (=> bm!19524 (= call!19525 (+!308 (ite c!34838 call!19521 (ite c!34840 call!19522 call!19523)) (ite (or c!34838 c!34840) (tuple2!3539 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3780 thiss!1248)) (tuple2!3539 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3780 thiss!1248)))))))

(declare-fun b!193214 () Bool)

(assert (=> b!193214 (= e!127126 call!19527)))

(declare-fun d!56485 () Bool)

(assert (=> d!56485 e!127133))

(declare-fun res!91311 () Bool)

(assert (=> d!56485 (=> (not res!91311) (not e!127133))))

(assert (=> d!56485 (= res!91311 (or (bvsge #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))))

(declare-fun lt!96221 () ListLongMap!2469)

(assert (=> d!56485 (= lt!96218 lt!96221)))

(declare-fun lt!96220 () Unit!5841)

(assert (=> d!56485 (= lt!96220 e!127134)))

(declare-fun c!34843 () Bool)

(assert (=> d!56485 (= c!34843 e!127128)))

(declare-fun res!91305 () Bool)

(assert (=> d!56485 (=> (not res!91305) (not e!127128))))

(assert (=> d!56485 (= res!91305 (bvslt #b00000000000000000000000000000000 (size!4180 (_keys!5927 thiss!1248))))))

(assert (=> d!56485 (= lt!96221 e!127131)))

(assert (=> d!56485 (= c!34838 (and (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3676 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56485 (validMask!0 (mask!9184 thiss!1248))))

(assert (=> d!56485 (= (getCurrentListMap!893 (_keys!5927 thiss!1248) (_values!3922 thiss!1248) (mask!9184 thiss!1248) (extraKeys!3676 thiss!1248) (zeroValue!3780 thiss!1248) (minValue!3780 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3939 thiss!1248)) lt!96218)))

(declare-fun b!193215 () Bool)

(assert (=> b!193215 (= e!127126 call!19523)))

(declare-fun b!193216 () Bool)

(assert (=> b!193216 (= e!127124 (not call!19526))))

(assert (= (and d!56485 c!34838) b!193196))

(assert (= (and d!56485 (not c!34838)) b!193197))

(assert (= (and b!193197 c!34840) b!193212))

(assert (= (and b!193197 (not c!34840)) b!193207))

(assert (= (and b!193207 c!34841) b!193214))

(assert (= (and b!193207 (not c!34841)) b!193215))

(assert (= (or b!193214 b!193215) bm!19521))

(assert (= (or b!193212 bm!19521) bm!19520))

(assert (= (or b!193212 b!193214) bm!19523))

(assert (= (or b!193196 bm!19520) bm!19518))

(assert (= (or b!193196 bm!19523) bm!19524))

(assert (= (and d!56485 res!91305) b!193202))

(assert (= (and d!56485 c!34843) b!193203))

(assert (= (and d!56485 (not c!34843)) b!193201))

(assert (= (and d!56485 res!91311) b!193208))

(assert (= (and b!193208 res!91307) b!193205))

(assert (= (and b!193208 (not res!91309)) b!193213))

(assert (= (and b!193213 res!91308) b!193204))

(assert (= (and b!193208 res!91310) b!193211))

(assert (= (and b!193211 c!34839) b!193210))

(assert (= (and b!193211 (not c!34839)) b!193198))

(assert (= (and b!193210 res!91304) b!193199))

(assert (= (or b!193210 b!193198) bm!19519))

(assert (= (and b!193211 res!91306) b!193209))

(assert (= (and b!193209 c!34842) b!193206))

(assert (= (and b!193209 (not c!34842)) b!193216))

(assert (= (and b!193206 res!91312) b!193200))

(assert (= (or b!193206 b!193216) bm!19522))

(declare-fun b_lambda!7487 () Bool)

(assert (=> (not b_lambda!7487) (not b!193204)))

(assert (=> b!193204 t!7386))

(declare-fun b_and!11427 () Bool)

(assert (= b_and!11425 (and (=> t!7386 result!4929) b_and!11427)))

(declare-fun m!220023 () Bool)

(assert (=> bm!19519 m!220023))

(declare-fun m!220025 () Bool)

(assert (=> b!193196 m!220025))

(assert (=> d!56485 m!219851))

(assert (=> b!193213 m!219895))

(assert (=> b!193213 m!219895))

(declare-fun m!220027 () Bool)

(assert (=> b!193213 m!220027))

(declare-fun m!220029 () Bool)

(assert (=> bm!19524 m!220029))

(declare-fun m!220031 () Bool)

(assert (=> bm!19518 m!220031))

(declare-fun m!220033 () Bool)

(assert (=> bm!19522 m!220033))

(declare-fun m!220035 () Bool)

(assert (=> b!193203 m!220035))

(declare-fun m!220037 () Bool)

(assert (=> b!193203 m!220037))

(assert (=> b!193203 m!219895))

(declare-fun m!220039 () Bool)

(assert (=> b!193203 m!220039))

(assert (=> b!193203 m!220039))

(declare-fun m!220041 () Bool)

(assert (=> b!193203 m!220041))

(declare-fun m!220043 () Bool)

(assert (=> b!193203 m!220043))

(declare-fun m!220045 () Bool)

(assert (=> b!193203 m!220045))

(declare-fun m!220047 () Bool)

(assert (=> b!193203 m!220047))

(assert (=> b!193203 m!220035))

(declare-fun m!220049 () Bool)

(assert (=> b!193203 m!220049))

(assert (=> b!193203 m!220037))

(declare-fun m!220051 () Bool)

(assert (=> b!193203 m!220051))

(declare-fun m!220053 () Bool)

(assert (=> b!193203 m!220053))

(declare-fun m!220055 () Bool)

(assert (=> b!193203 m!220055))

(declare-fun m!220057 () Bool)

(assert (=> b!193203 m!220057))

(assert (=> b!193203 m!220031))

(assert (=> b!193203 m!220055))

(declare-fun m!220059 () Bool)

(assert (=> b!193203 m!220059))

(declare-fun m!220061 () Bool)

(assert (=> b!193203 m!220061))

(declare-fun m!220063 () Bool)

(assert (=> b!193203 m!220063))

(declare-fun m!220065 () Bool)

(assert (=> b!193200 m!220065))

(declare-fun m!220067 () Bool)

(assert (=> b!193204 m!220067))

(assert (=> b!193204 m!219991))

(declare-fun m!220069 () Bool)

(assert (=> b!193204 m!220069))

(assert (=> b!193204 m!219991))

(assert (=> b!193204 m!219895))

(declare-fun m!220071 () Bool)

(assert (=> b!193204 m!220071))

(assert (=> b!193204 m!219895))

(assert (=> b!193204 m!220067))

(declare-fun m!220073 () Bool)

(assert (=> b!193199 m!220073))

(assert (=> b!193202 m!219895))

(assert (=> b!193202 m!219895))

(assert (=> b!193202 m!219897))

(assert (=> b!193205 m!219895))

(assert (=> b!193205 m!219895))

(assert (=> b!193205 m!219897))

(assert (=> b!192984 d!56485))

(declare-fun b!193224 () Bool)

(declare-fun e!127140 () Bool)

(assert (=> b!193224 (= e!127140 tp_is_empty!4473)))

(declare-fun mapIsEmpty!7739 () Bool)

(declare-fun mapRes!7739 () Bool)

(assert (=> mapIsEmpty!7739 mapRes!7739))

(declare-fun mapNonEmpty!7739 () Bool)

(declare-fun tp!16973 () Bool)

(declare-fun e!127141 () Bool)

(assert (=> mapNonEmpty!7739 (= mapRes!7739 (and tp!16973 e!127141))))

(declare-fun mapKey!7739 () (_ BitVec 32))

(declare-fun mapValue!7739 () ValueCell!1893)

(declare-fun mapRest!7739 () (Array (_ BitVec 32) ValueCell!1893))

(assert (=> mapNonEmpty!7739 (= mapRest!7733 (store mapRest!7739 mapKey!7739 mapValue!7739))))

(declare-fun b!193223 () Bool)

(assert (=> b!193223 (= e!127141 tp_is_empty!4473)))

(declare-fun condMapEmpty!7739 () Bool)

(declare-fun mapDefault!7739 () ValueCell!1893)

(assert (=> mapNonEmpty!7733 (= condMapEmpty!7739 (= mapRest!7733 ((as const (Array (_ BitVec 32) ValueCell!1893)) mapDefault!7739)))))

(assert (=> mapNonEmpty!7733 (= tp!16963 (and e!127140 mapRes!7739))))

(assert (= (and mapNonEmpty!7733 condMapEmpty!7739) mapIsEmpty!7739))

(assert (= (and mapNonEmpty!7733 (not condMapEmpty!7739)) mapNonEmpty!7739))

(assert (= (and mapNonEmpty!7739 ((_ is ValueCellFull!1893) mapValue!7739)) b!193223))

(assert (= (and mapNonEmpty!7733 ((_ is ValueCellFull!1893) mapDefault!7739)) b!193224))

(declare-fun m!220075 () Bool)

(assert (=> mapNonEmpty!7739 m!220075))

(declare-fun b_lambda!7489 () Bool)

(assert (= b_lambda!7485 (or (and b!192983 b_free!4701) b_lambda!7489)))

(declare-fun b_lambda!7491 () Bool)

(assert (= b_lambda!7487 (or (and b!192983 b_free!4701) b_lambda!7491)))

(check-sat tp_is_empty!4473 b_and!11427 (not b!193069) (not b!193112) (not b!193195) (not mapNonEmpty!7739) (not b_next!4701) (not b!193172) (not bm!19512) (not bm!19493) (not b!193110) (not bm!19511) (not b!193075) (not bm!19487) (not bm!19524) (not bm!19517) (not d!56483) (not b!193186) (not b!193068) (not bm!19492) (not b!193180) (not b!193200) (not b_lambda!7489) (not b!193043) (not b!193202) (not b!193159) (not b!193058) (not d!56461) (not d!56485) (not d!56475) (not d!56467) (not b_lambda!7491) (not b!193158) (not b!193204) (not d!56477) (not b!193155) (not b!193039) (not d!56481) (not bm!19515) (not b!193161) (not b!193205) (not b!193070) (not b!193162) (not d!56459) (not b!193185) (not bm!19518) (not d!56463) (not bm!19522) (not b!193164) (not bm!19496) (not b!193163) (not b!193199) (not bm!19519) (not b!193196) (not b!193193) (not b!193041) (not b!193213) (not b!193203))
(check-sat b_and!11427 (not b_next!4701))
