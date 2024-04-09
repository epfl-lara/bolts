; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19488 () Bool)

(assert start!19488)

(declare-fun b!191230 () Bool)

(declare-fun b_free!4677 () Bool)

(declare-fun b_next!4677 () Bool)

(assert (=> b!191230 (= b_free!4677 (not b_next!4677))))

(declare-fun tp!16877 () Bool)

(declare-fun b_and!11365 () Bool)

(assert (=> b!191230 (= tp!16877 b_and!11365)))

(declare-fun b!191226 () Bool)

(declare-fun e!125852 () Bool)

(declare-fun e!125850 () Bool)

(assert (=> b!191226 (= e!125852 (not e!125850))))

(declare-fun res!90397 () Bool)

(assert (=> b!191226 (=> res!90397 e!125850)))

(declare-datatypes ((V!5579 0))(
  ( (V!5580 (val!2269 Int)) )
))
(declare-datatypes ((ValueCell!1881 0))(
  ( (ValueCellFull!1881 (v!4202 V!5579)) (EmptyCell!1881) )
))
(declare-datatypes ((array!8134 0))(
  ( (array!8135 (arr!3832 (Array (_ BitVec 32) (_ BitVec 64))) (size!4154 (_ BitVec 32))) )
))
(declare-datatypes ((array!8136 0))(
  ( (array!8137 (arr!3833 (Array (_ BitVec 32) ValueCell!1881)) (size!4155 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2670 0))(
  ( (LongMapFixedSize!2671 (defaultEntry!3903 Int) (mask!9119 (_ BitVec 32)) (extraKeys!3640 (_ BitVec 32)) (zeroValue!3744 V!5579) (minValue!3744 V!5579) (_size!1384 (_ BitVec 32)) (_keys!5880 array!8134) (_values!3886 array!8136) (_vacant!1384 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2670)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!191226 (= res!90397 (not (validMask!0 (mask!9119 thiss!1248))))))

(declare-datatypes ((SeekEntryResult!687 0))(
  ( (MissingZero!687 (index!4918 (_ BitVec 32))) (Found!687 (index!4919 (_ BitVec 32))) (Intermediate!687 (undefined!1499 Bool) (index!4920 (_ BitVec 32)) (x!20541 (_ BitVec 32))) (Undefined!687) (MissingVacant!687 (index!4921 (_ BitVec 32))) )
))
(declare-fun lt!94943 () SeekEntryResult!687)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3524 0))(
  ( (tuple2!3525 (_1!1772 (_ BitVec 64)) (_2!1772 V!5579)) )
))
(declare-datatypes ((List!2442 0))(
  ( (Nil!2439) (Cons!2438 (h!3077 tuple2!3524) (t!7362 List!2442)) )
))
(declare-datatypes ((ListLongMap!2455 0))(
  ( (ListLongMap!2456 (toList!1243 List!2442)) )
))
(declare-fun lt!94940 () ListLongMap!2455)

(declare-fun v!309 () V!5579)

(declare-fun +!301 (ListLongMap!2455 tuple2!3524) ListLongMap!2455)

(declare-fun getCurrentListMap!886 (array!8134 array!8136 (_ BitVec 32) (_ BitVec 32) V!5579 V!5579 (_ BitVec 32) Int) ListLongMap!2455)

(assert (=> b!191226 (= (+!301 lt!94940 (tuple2!3525 key!828 v!309)) (getCurrentListMap!886 (_keys!5880 thiss!1248) (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-datatypes ((Unit!5781 0))(
  ( (Unit!5782) )
))
(declare-fun lt!94939 () Unit!5781)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!107 (array!8134 array!8136 (_ BitVec 32) (_ BitVec 32) V!5579 V!5579 (_ BitVec 32) (_ BitVec 64) V!5579 Int) Unit!5781)

(assert (=> b!191226 (= lt!94939 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!107 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) (index!4919 lt!94943) key!828 v!309 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!94938 () Unit!5781)

(declare-fun e!125851 () Unit!5781)

(assert (=> b!191226 (= lt!94938 e!125851)))

(declare-fun c!34411 () Bool)

(declare-fun contains!1350 (ListLongMap!2455 (_ BitVec 64)) Bool)

(assert (=> b!191226 (= c!34411 (contains!1350 lt!94940 key!828))))

(assert (=> b!191226 (= lt!94940 (getCurrentListMap!886 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun b!191227 () Bool)

(declare-fun e!125848 () Bool)

(declare-fun e!125849 () Bool)

(declare-fun mapRes!7683 () Bool)

(assert (=> b!191227 (= e!125848 (and e!125849 mapRes!7683))))

(declare-fun condMapEmpty!7683 () Bool)

(declare-fun mapDefault!7683 () ValueCell!1881)

(assert (=> b!191227 (= condMapEmpty!7683 (= (arr!3833 (_values!3886 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1881)) mapDefault!7683)))))

(declare-fun b!191228 () Bool)

(declare-fun e!125847 () Bool)

(assert (=> b!191228 (= e!125847 (= (select (arr!3832 (_keys!5880 thiss!1248)) (index!4919 lt!94943)) key!828))))

(declare-fun b!191229 () Bool)

(declare-fun lt!94942 () Unit!5781)

(assert (=> b!191229 (= e!125851 lt!94942)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!173 (array!8134 array!8136 (_ BitVec 32) (_ BitVec 32) V!5579 V!5579 (_ BitVec 64) Int) Unit!5781)

(assert (=> b!191229 (= lt!94942 (lemmaInListMapThenSeekEntryOrOpenFindsIt!173 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) key!828 (defaultEntry!3903 thiss!1248)))))

(declare-fun res!90398 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!191229 (= res!90398 (inRange!0 (index!4919 lt!94943) (mask!9119 thiss!1248)))))

(assert (=> b!191229 (=> (not res!90398) (not e!125847))))

(assert (=> b!191229 e!125847))

(declare-fun tp_is_empty!4449 () Bool)

(declare-fun e!125846 () Bool)

(declare-fun array_inv!2475 (array!8134) Bool)

(declare-fun array_inv!2476 (array!8136) Bool)

(assert (=> b!191230 (= e!125846 (and tp!16877 tp_is_empty!4449 (array_inv!2475 (_keys!5880 thiss!1248)) (array_inv!2476 (_values!3886 thiss!1248)) e!125848))))

(declare-fun b!191231 () Bool)

(declare-fun e!125845 () Bool)

(assert (=> b!191231 (= e!125845 e!125852)))

(declare-fun res!90400 () Bool)

(assert (=> b!191231 (=> (not res!90400) (not e!125852))))

(get-info :version)

(assert (=> b!191231 (= res!90400 (and (not ((_ is Undefined!687) lt!94943)) (not ((_ is MissingVacant!687) lt!94943)) (not ((_ is MissingZero!687) lt!94943)) ((_ is Found!687) lt!94943)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8134 (_ BitVec 32)) SeekEntryResult!687)

(assert (=> b!191231 (= lt!94943 (seekEntryOrOpen!0 key!828 (_keys!5880 thiss!1248) (mask!9119 thiss!1248)))))

(declare-fun b!191232 () Bool)

(declare-fun res!90396 () Bool)

(assert (=> b!191232 (=> (not res!90396) (not e!125845))))

(assert (=> b!191232 (= res!90396 (not (= key!828 (bvneg key!828))))))

(declare-fun b!191233 () Bool)

(declare-fun Unit!5783 () Unit!5781)

(assert (=> b!191233 (= e!125851 Unit!5783)))

(declare-fun lt!94941 () Unit!5781)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!177 (array!8134 array!8136 (_ BitVec 32) (_ BitVec 32) V!5579 V!5579 (_ BitVec 64) Int) Unit!5781)

(assert (=> b!191233 (= lt!94941 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!177 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) key!828 (defaultEntry!3903 thiss!1248)))))

(assert (=> b!191233 false))

(declare-fun mapIsEmpty!7683 () Bool)

(assert (=> mapIsEmpty!7683 mapRes!7683))

(declare-fun b!191234 () Bool)

(assert (=> b!191234 (= e!125849 tp_is_empty!4449)))

(declare-fun mapNonEmpty!7683 () Bool)

(declare-fun tp!16878 () Bool)

(declare-fun e!125854 () Bool)

(assert (=> mapNonEmpty!7683 (= mapRes!7683 (and tp!16878 e!125854))))

(declare-fun mapRest!7683 () (Array (_ BitVec 32) ValueCell!1881))

(declare-fun mapKey!7683 () (_ BitVec 32))

(declare-fun mapValue!7683 () ValueCell!1881)

(assert (=> mapNonEmpty!7683 (= (arr!3833 (_values!3886 thiss!1248)) (store mapRest!7683 mapKey!7683 mapValue!7683))))

(declare-fun res!90399 () Bool)

(assert (=> start!19488 (=> (not res!90399) (not e!125845))))

(declare-fun valid!1088 (LongMapFixedSize!2670) Bool)

(assert (=> start!19488 (= res!90399 (valid!1088 thiss!1248))))

(assert (=> start!19488 e!125845))

(assert (=> start!19488 e!125846))

(assert (=> start!19488 true))

(assert (=> start!19488 tp_is_empty!4449))

(declare-fun b!191235 () Bool)

(assert (=> b!191235 (= e!125854 tp_is_empty!4449)))

(declare-fun b!191236 () Bool)

(assert (=> b!191236 (= e!125850 (or (not (= (size!4155 (_values!3886 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9119 thiss!1248)))) (not (= (size!4154 (_keys!5880 thiss!1248)) (size!4155 (_values!3886 thiss!1248)))) (bvsge (mask!9119 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and start!19488 res!90399) b!191232))

(assert (= (and b!191232 res!90396) b!191231))

(assert (= (and b!191231 res!90400) b!191226))

(assert (= (and b!191226 c!34411) b!191229))

(assert (= (and b!191226 (not c!34411)) b!191233))

(assert (= (and b!191229 res!90398) b!191228))

(assert (= (and b!191226 (not res!90397)) b!191236))

(assert (= (and b!191227 condMapEmpty!7683) mapIsEmpty!7683))

(assert (= (and b!191227 (not condMapEmpty!7683)) mapNonEmpty!7683))

(assert (= (and mapNonEmpty!7683 ((_ is ValueCellFull!1881) mapValue!7683)) b!191235))

(assert (= (and b!191227 ((_ is ValueCellFull!1881) mapDefault!7683)) b!191234))

(assert (= b!191230 b!191227))

(assert (= start!19488 b!191230))

(declare-fun m!217827 () Bool)

(assert (=> start!19488 m!217827))

(declare-fun m!217829 () Bool)

(assert (=> b!191226 m!217829))

(declare-fun m!217831 () Bool)

(assert (=> b!191226 m!217831))

(declare-fun m!217833 () Bool)

(assert (=> b!191226 m!217833))

(declare-fun m!217835 () Bool)

(assert (=> b!191226 m!217835))

(declare-fun m!217837 () Bool)

(assert (=> b!191226 m!217837))

(declare-fun m!217839 () Bool)

(assert (=> b!191226 m!217839))

(declare-fun m!217841 () Bool)

(assert (=> b!191226 m!217841))

(declare-fun m!217843 () Bool)

(assert (=> b!191228 m!217843))

(declare-fun m!217845 () Bool)

(assert (=> mapNonEmpty!7683 m!217845))

(declare-fun m!217847 () Bool)

(assert (=> b!191233 m!217847))

(declare-fun m!217849 () Bool)

(assert (=> b!191230 m!217849))

(declare-fun m!217851 () Bool)

(assert (=> b!191230 m!217851))

(declare-fun m!217853 () Bool)

(assert (=> b!191231 m!217853))

(declare-fun m!217855 () Bool)

(assert (=> b!191229 m!217855))

(declare-fun m!217857 () Bool)

(assert (=> b!191229 m!217857))

(check-sat (not mapNonEmpty!7683) (not b!191230) (not b!191233) b_and!11365 (not b!191231) (not start!19488) (not b!191226) tp_is_empty!4449 (not b!191229) (not b_next!4677))
(check-sat b_and!11365 (not b_next!4677))
(get-model)

(declare-fun b!191286 () Bool)

(declare-fun lt!94966 () SeekEntryResult!687)

(assert (=> b!191286 (and (bvsge (index!4918 lt!94966) #b00000000000000000000000000000000) (bvslt (index!4918 lt!94966) (size!4154 (_keys!5880 thiss!1248))))))

(declare-fun res!90427 () Bool)

(assert (=> b!191286 (= res!90427 (= (select (arr!3832 (_keys!5880 thiss!1248)) (index!4918 lt!94966)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!125894 () Bool)

(assert (=> b!191286 (=> (not res!90427) (not e!125894))))

(declare-fun b!191287 () Bool)

(declare-fun e!125895 () Bool)

(assert (=> b!191287 (= e!125895 e!125894)))

(declare-fun res!90425 () Bool)

(declare-fun call!19297 () Bool)

(assert (=> b!191287 (= res!90425 call!19297)))

(assert (=> b!191287 (=> (not res!90425) (not e!125894))))

(declare-fun d!56043 () Bool)

(assert (=> d!56043 e!125895))

(declare-fun c!34419 () Bool)

(assert (=> d!56043 (= c!34419 ((_ is MissingZero!687) lt!94966))))

(assert (=> d!56043 (= lt!94966 (seekEntryOrOpen!0 key!828 (_keys!5880 thiss!1248) (mask!9119 thiss!1248)))))

(declare-fun lt!94967 () Unit!5781)

(declare-fun choose!1042 (array!8134 array!8136 (_ BitVec 32) (_ BitVec 32) V!5579 V!5579 (_ BitVec 64) Int) Unit!5781)

(assert (=> d!56043 (= lt!94967 (choose!1042 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) key!828 (defaultEntry!3903 thiss!1248)))))

(assert (=> d!56043 (validMask!0 (mask!9119 thiss!1248))))

(assert (=> d!56043 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!177 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) key!828 (defaultEntry!3903 thiss!1248)) lt!94967)))

(declare-fun bm!19294 () Bool)

(assert (=> bm!19294 (= call!19297 (inRange!0 (ite c!34419 (index!4918 lt!94966) (index!4921 lt!94966)) (mask!9119 thiss!1248)))))

(declare-fun b!191288 () Bool)

(declare-fun res!90426 () Bool)

(declare-fun e!125896 () Bool)

(assert (=> b!191288 (=> (not res!90426) (not e!125896))))

(assert (=> b!191288 (= res!90426 (= (select (arr!3832 (_keys!5880 thiss!1248)) (index!4921 lt!94966)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191288 (and (bvsge (index!4921 lt!94966) #b00000000000000000000000000000000) (bvslt (index!4921 lt!94966) (size!4154 (_keys!5880 thiss!1248))))))

(declare-fun b!191289 () Bool)

(declare-fun call!19298 () Bool)

(assert (=> b!191289 (= e!125896 (not call!19298))))

(declare-fun b!191290 () Bool)

(declare-fun res!90424 () Bool)

(assert (=> b!191290 (=> (not res!90424) (not e!125896))))

(assert (=> b!191290 (= res!90424 call!19297)))

(declare-fun e!125893 () Bool)

(assert (=> b!191290 (= e!125893 e!125896)))

(declare-fun b!191291 () Bool)

(assert (=> b!191291 (= e!125893 ((_ is Undefined!687) lt!94966))))

(declare-fun bm!19295 () Bool)

(declare-fun arrayContainsKey!0 (array!8134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19295 (= call!19298 (arrayContainsKey!0 (_keys!5880 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!191292 () Bool)

(assert (=> b!191292 (= e!125895 e!125893)))

(declare-fun c!34420 () Bool)

(assert (=> b!191292 (= c!34420 ((_ is MissingVacant!687) lt!94966))))

(declare-fun b!191293 () Bool)

(assert (=> b!191293 (= e!125894 (not call!19298))))

(assert (= (and d!56043 c!34419) b!191287))

(assert (= (and d!56043 (not c!34419)) b!191292))

(assert (= (and b!191287 res!90425) b!191286))

(assert (= (and b!191286 res!90427) b!191293))

(assert (= (and b!191292 c!34420) b!191290))

(assert (= (and b!191292 (not c!34420)) b!191291))

(assert (= (and b!191290 res!90424) b!191288))

(assert (= (and b!191288 res!90426) b!191289))

(assert (= (or b!191287 b!191290) bm!19294))

(assert (= (or b!191293 b!191289) bm!19295))

(declare-fun m!217891 () Bool)

(assert (=> bm!19294 m!217891))

(assert (=> d!56043 m!217853))

(declare-fun m!217893 () Bool)

(assert (=> d!56043 m!217893))

(assert (=> d!56043 m!217833))

(declare-fun m!217895 () Bool)

(assert (=> bm!19295 m!217895))

(declare-fun m!217897 () Bool)

(assert (=> b!191286 m!217897))

(declare-fun m!217899 () Bool)

(assert (=> b!191288 m!217899))

(assert (=> b!191233 d!56043))

(declare-fun d!56045 () Bool)

(declare-fun e!125899 () Bool)

(assert (=> d!56045 e!125899))

(declare-fun res!90432 () Bool)

(assert (=> d!56045 (=> (not res!90432) (not e!125899))))

(declare-fun lt!94972 () SeekEntryResult!687)

(assert (=> d!56045 (= res!90432 ((_ is Found!687) lt!94972))))

(assert (=> d!56045 (= lt!94972 (seekEntryOrOpen!0 key!828 (_keys!5880 thiss!1248) (mask!9119 thiss!1248)))))

(declare-fun lt!94973 () Unit!5781)

(declare-fun choose!1043 (array!8134 array!8136 (_ BitVec 32) (_ BitVec 32) V!5579 V!5579 (_ BitVec 64) Int) Unit!5781)

(assert (=> d!56045 (= lt!94973 (choose!1043 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) key!828 (defaultEntry!3903 thiss!1248)))))

(assert (=> d!56045 (validMask!0 (mask!9119 thiss!1248))))

(assert (=> d!56045 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!173 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) key!828 (defaultEntry!3903 thiss!1248)) lt!94973)))

(declare-fun b!191298 () Bool)

(declare-fun res!90433 () Bool)

(assert (=> b!191298 (=> (not res!90433) (not e!125899))))

(assert (=> b!191298 (= res!90433 (inRange!0 (index!4919 lt!94972) (mask!9119 thiss!1248)))))

(declare-fun b!191299 () Bool)

(assert (=> b!191299 (= e!125899 (= (select (arr!3832 (_keys!5880 thiss!1248)) (index!4919 lt!94972)) key!828))))

(assert (=> b!191299 (and (bvsge (index!4919 lt!94972) #b00000000000000000000000000000000) (bvslt (index!4919 lt!94972) (size!4154 (_keys!5880 thiss!1248))))))

(assert (= (and d!56045 res!90432) b!191298))

(assert (= (and b!191298 res!90433) b!191299))

(assert (=> d!56045 m!217853))

(declare-fun m!217901 () Bool)

(assert (=> d!56045 m!217901))

(assert (=> d!56045 m!217833))

(declare-fun m!217903 () Bool)

(assert (=> b!191298 m!217903))

(declare-fun m!217905 () Bool)

(assert (=> b!191299 m!217905))

(assert (=> b!191229 d!56045))

(declare-fun d!56047 () Bool)

(assert (=> d!56047 (= (inRange!0 (index!4919 lt!94943) (mask!9119 thiss!1248)) (and (bvsge (index!4919 lt!94943) #b00000000000000000000000000000000) (bvslt (index!4919 lt!94943) (bvadd (mask!9119 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!191229 d!56047))

(declare-fun d!56049 () Bool)

(declare-fun res!90440 () Bool)

(declare-fun e!125902 () Bool)

(assert (=> d!56049 (=> (not res!90440) (not e!125902))))

(declare-fun simpleValid!196 (LongMapFixedSize!2670) Bool)

(assert (=> d!56049 (= res!90440 (simpleValid!196 thiss!1248))))

(assert (=> d!56049 (= (valid!1088 thiss!1248) e!125902)))

(declare-fun b!191306 () Bool)

(declare-fun res!90441 () Bool)

(assert (=> b!191306 (=> (not res!90441) (not e!125902))))

(declare-fun arrayCountValidKeys!0 (array!8134 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!191306 (= res!90441 (= (arrayCountValidKeys!0 (_keys!5880 thiss!1248) #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))) (_size!1384 thiss!1248)))))

(declare-fun b!191307 () Bool)

(declare-fun res!90442 () Bool)

(assert (=> b!191307 (=> (not res!90442) (not e!125902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8134 (_ BitVec 32)) Bool)

(assert (=> b!191307 (= res!90442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5880 thiss!1248) (mask!9119 thiss!1248)))))

(declare-fun b!191308 () Bool)

(declare-datatypes ((List!2443 0))(
  ( (Nil!2440) (Cons!2439 (h!3078 (_ BitVec 64)) (t!7365 List!2443)) )
))
(declare-fun arrayNoDuplicates!0 (array!8134 (_ BitVec 32) List!2443) Bool)

(assert (=> b!191308 (= e!125902 (arrayNoDuplicates!0 (_keys!5880 thiss!1248) #b00000000000000000000000000000000 Nil!2440))))

(assert (= (and d!56049 res!90440) b!191306))

(assert (= (and b!191306 res!90441) b!191307))

(assert (= (and b!191307 res!90442) b!191308))

(declare-fun m!217907 () Bool)

(assert (=> d!56049 m!217907))

(declare-fun m!217909 () Bool)

(assert (=> b!191306 m!217909))

(declare-fun m!217911 () Bool)

(assert (=> b!191307 m!217911))

(declare-fun m!217913 () Bool)

(assert (=> b!191308 m!217913))

(assert (=> start!19488 d!56049))

(declare-fun b!191321 () Bool)

(declare-fun e!125910 () SeekEntryResult!687)

(declare-fun lt!94980 () SeekEntryResult!687)

(assert (=> b!191321 (= e!125910 (Found!687 (index!4920 lt!94980)))))

(declare-fun b!191322 () Bool)

(declare-fun e!125909 () SeekEntryResult!687)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8134 (_ BitVec 32)) SeekEntryResult!687)

(assert (=> b!191322 (= e!125909 (seekKeyOrZeroReturnVacant!0 (x!20541 lt!94980) (index!4920 lt!94980) (index!4920 lt!94980) key!828 (_keys!5880 thiss!1248) (mask!9119 thiss!1248)))))

(declare-fun b!191323 () Bool)

(assert (=> b!191323 (= e!125909 (MissingZero!687 (index!4920 lt!94980)))))

(declare-fun b!191324 () Bool)

(declare-fun c!34428 () Bool)

(declare-fun lt!94981 () (_ BitVec 64))

(assert (=> b!191324 (= c!34428 (= lt!94981 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191324 (= e!125910 e!125909)))

(declare-fun d!56051 () Bool)

(declare-fun lt!94982 () SeekEntryResult!687)

(assert (=> d!56051 (and (or ((_ is Undefined!687) lt!94982) (not ((_ is Found!687) lt!94982)) (and (bvsge (index!4919 lt!94982) #b00000000000000000000000000000000) (bvslt (index!4919 lt!94982) (size!4154 (_keys!5880 thiss!1248))))) (or ((_ is Undefined!687) lt!94982) ((_ is Found!687) lt!94982) (not ((_ is MissingZero!687) lt!94982)) (and (bvsge (index!4918 lt!94982) #b00000000000000000000000000000000) (bvslt (index!4918 lt!94982) (size!4154 (_keys!5880 thiss!1248))))) (or ((_ is Undefined!687) lt!94982) ((_ is Found!687) lt!94982) ((_ is MissingZero!687) lt!94982) (not ((_ is MissingVacant!687) lt!94982)) (and (bvsge (index!4921 lt!94982) #b00000000000000000000000000000000) (bvslt (index!4921 lt!94982) (size!4154 (_keys!5880 thiss!1248))))) (or ((_ is Undefined!687) lt!94982) (ite ((_ is Found!687) lt!94982) (= (select (arr!3832 (_keys!5880 thiss!1248)) (index!4919 lt!94982)) key!828) (ite ((_ is MissingZero!687) lt!94982) (= (select (arr!3832 (_keys!5880 thiss!1248)) (index!4918 lt!94982)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!687) lt!94982) (= (select (arr!3832 (_keys!5880 thiss!1248)) (index!4921 lt!94982)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!125911 () SeekEntryResult!687)

(assert (=> d!56051 (= lt!94982 e!125911)))

(declare-fun c!34427 () Bool)

(assert (=> d!56051 (= c!34427 (and ((_ is Intermediate!687) lt!94980) (undefined!1499 lt!94980)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8134 (_ BitVec 32)) SeekEntryResult!687)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56051 (= lt!94980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9119 thiss!1248)) key!828 (_keys!5880 thiss!1248) (mask!9119 thiss!1248)))))

(assert (=> d!56051 (validMask!0 (mask!9119 thiss!1248))))

(assert (=> d!56051 (= (seekEntryOrOpen!0 key!828 (_keys!5880 thiss!1248) (mask!9119 thiss!1248)) lt!94982)))

(declare-fun b!191325 () Bool)

(assert (=> b!191325 (= e!125911 e!125910)))

(assert (=> b!191325 (= lt!94981 (select (arr!3832 (_keys!5880 thiss!1248)) (index!4920 lt!94980)))))

(declare-fun c!34429 () Bool)

(assert (=> b!191325 (= c!34429 (= lt!94981 key!828))))

(declare-fun b!191326 () Bool)

(assert (=> b!191326 (= e!125911 Undefined!687)))

(assert (= (and d!56051 c!34427) b!191326))

(assert (= (and d!56051 (not c!34427)) b!191325))

(assert (= (and b!191325 c!34429) b!191321))

(assert (= (and b!191325 (not c!34429)) b!191324))

(assert (= (and b!191324 c!34428) b!191323))

(assert (= (and b!191324 (not c!34428)) b!191322))

(declare-fun m!217915 () Bool)

(assert (=> b!191322 m!217915))

(declare-fun m!217917 () Bool)

(assert (=> d!56051 m!217917))

(declare-fun m!217919 () Bool)

(assert (=> d!56051 m!217919))

(assert (=> d!56051 m!217919))

(declare-fun m!217921 () Bool)

(assert (=> d!56051 m!217921))

(declare-fun m!217923 () Bool)

(assert (=> d!56051 m!217923))

(assert (=> d!56051 m!217833))

(declare-fun m!217925 () Bool)

(assert (=> d!56051 m!217925))

(declare-fun m!217927 () Bool)

(assert (=> b!191325 m!217927))

(assert (=> b!191231 d!56051))

(declare-fun d!56053 () Bool)

(assert (=> d!56053 (= (array_inv!2475 (_keys!5880 thiss!1248)) (bvsge (size!4154 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!191230 d!56053))

(declare-fun d!56055 () Bool)

(assert (=> d!56055 (= (array_inv!2476 (_values!3886 thiss!1248)) (bvsge (size!4155 (_values!3886 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!191230 d!56055))

(declare-fun b!191369 () Bool)

(declare-fun e!125949 () Bool)

(declare-fun e!125941 () Bool)

(assert (=> b!191369 (= e!125949 e!125941)))

(declare-fun c!34447 () Bool)

(assert (=> b!191369 (= c!34447 (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!191370 () Bool)

(declare-fun e!125950 () Bool)

(declare-fun e!125940 () Bool)

(assert (=> b!191370 (= e!125950 e!125940)))

(declare-fun res!90466 () Bool)

(declare-fun call!19318 () Bool)

(assert (=> b!191370 (= res!90466 call!19318)))

(assert (=> b!191370 (=> (not res!90466) (not e!125940))))

(declare-fun b!191371 () Bool)

(declare-fun e!125938 () Bool)

(declare-fun lt!95048 () ListLongMap!2455)

(declare-fun apply!181 (ListLongMap!2455 (_ BitVec 64)) V!5579)

(assert (=> b!191371 (= e!125938 (= (apply!181 lt!95048 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3744 thiss!1248)))))

(declare-fun e!125943 () Bool)

(declare-fun b!191372 () Bool)

(declare-fun get!2211 (ValueCell!1881 V!5579) V!5579)

(declare-fun dynLambda!519 (Int (_ BitVec 64)) V!5579)

(assert (=> b!191372 (= e!125943 (= (apply!181 lt!95048 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000)) (get!2211 (select (arr!3833 (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!519 (defaultEntry!3903 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!191372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4155 (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))))))))

(assert (=> b!191372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))

(declare-fun b!191373 () Bool)

(declare-fun e!125946 () ListLongMap!2455)

(declare-fun call!19319 () ListLongMap!2455)

(assert (=> b!191373 (= e!125946 call!19319)))

(declare-fun b!191374 () Bool)

(declare-fun e!125947 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!191374 (= e!125947 (validKeyInArray!0 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191375 () Bool)

(declare-fun e!125945 () ListLongMap!2455)

(declare-fun call!19313 () ListLongMap!2455)

(assert (=> b!191375 (= e!125945 (+!301 call!19313 (tuple2!3525 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3744 thiss!1248))))))

(declare-fun b!191376 () Bool)

(declare-fun call!19315 () Bool)

(assert (=> b!191376 (= e!125941 (not call!19315))))

(declare-fun bm!19310 () Bool)

(declare-fun call!19314 () ListLongMap!2455)

(declare-fun call!19316 () ListLongMap!2455)

(assert (=> bm!19310 (= call!19314 call!19316)))

(declare-fun b!191377 () Bool)

(declare-fun call!19317 () ListLongMap!2455)

(assert (=> b!191377 (= e!125946 call!19317)))

(declare-fun bm!19311 () Bool)

(assert (=> bm!19311 (= call!19317 call!19314)))

(declare-fun b!191378 () Bool)

(declare-fun res!90469 () Bool)

(assert (=> b!191378 (=> (not res!90469) (not e!125949))))

(assert (=> b!191378 (= res!90469 e!125950)))

(declare-fun c!34443 () Bool)

(assert (=> b!191378 (= c!34443 (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!191379 () Bool)

(declare-fun e!125948 () Bool)

(assert (=> b!191379 (= e!125948 e!125943)))

(declare-fun res!90463 () Bool)

(assert (=> b!191379 (=> (not res!90463) (not e!125943))))

(assert (=> b!191379 (= res!90463 (contains!1350 lt!95048 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191379 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))

(declare-fun b!191380 () Bool)

(declare-fun e!125939 () Bool)

(assert (=> b!191380 (= e!125939 (validKeyInArray!0 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191381 () Bool)

(assert (=> b!191381 (= e!125941 e!125938)))

(declare-fun res!90464 () Bool)

(assert (=> b!191381 (= res!90464 call!19315)))

(assert (=> b!191381 (=> (not res!90464) (not e!125938))))

(declare-fun b!191382 () Bool)

(declare-fun e!125942 () Unit!5781)

(declare-fun Unit!5784 () Unit!5781)

(assert (=> b!191382 (= e!125942 Unit!5784)))

(declare-fun b!191383 () Bool)

(declare-fun c!34446 () Bool)

(assert (=> b!191383 (= c!34446 (and (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!125944 () ListLongMap!2455)

(assert (=> b!191383 (= e!125944 e!125946)))

(declare-fun b!191384 () Bool)

(declare-fun lt!95033 () Unit!5781)

(assert (=> b!191384 (= e!125942 lt!95033)))

(declare-fun lt!95039 () ListLongMap!2455)

(declare-fun getCurrentListMapNoExtraKeys!211 (array!8134 array!8136 (_ BitVec 32) (_ BitVec 32) V!5579 V!5579 (_ BitVec 32) Int) ListLongMap!2455)

(assert (=> b!191384 (= lt!95039 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!95030 () (_ BitVec 64))

(assert (=> b!191384 (= lt!95030 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95041 () (_ BitVec 64))

(assert (=> b!191384 (= lt!95041 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95035 () Unit!5781)

(declare-fun addStillContains!157 (ListLongMap!2455 (_ BitVec 64) V!5579 (_ BitVec 64)) Unit!5781)

(assert (=> b!191384 (= lt!95035 (addStillContains!157 lt!95039 lt!95030 (zeroValue!3744 thiss!1248) lt!95041))))

(assert (=> b!191384 (contains!1350 (+!301 lt!95039 (tuple2!3525 lt!95030 (zeroValue!3744 thiss!1248))) lt!95041)))

(declare-fun lt!95038 () Unit!5781)

(assert (=> b!191384 (= lt!95038 lt!95035)))

(declare-fun lt!95044 () ListLongMap!2455)

(assert (=> b!191384 (= lt!95044 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!95040 () (_ BitVec 64))

(assert (=> b!191384 (= lt!95040 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95036 () (_ BitVec 64))

(assert (=> b!191384 (= lt!95036 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95047 () Unit!5781)

(declare-fun addApplyDifferent!157 (ListLongMap!2455 (_ BitVec 64) V!5579 (_ BitVec 64)) Unit!5781)

(assert (=> b!191384 (= lt!95047 (addApplyDifferent!157 lt!95044 lt!95040 (minValue!3744 thiss!1248) lt!95036))))

(assert (=> b!191384 (= (apply!181 (+!301 lt!95044 (tuple2!3525 lt!95040 (minValue!3744 thiss!1248))) lt!95036) (apply!181 lt!95044 lt!95036))))

(declare-fun lt!95029 () Unit!5781)

(assert (=> b!191384 (= lt!95029 lt!95047)))

(declare-fun lt!95042 () ListLongMap!2455)

(assert (=> b!191384 (= lt!95042 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!95032 () (_ BitVec 64))

(assert (=> b!191384 (= lt!95032 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95043 () (_ BitVec 64))

(assert (=> b!191384 (= lt!95043 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95027 () Unit!5781)

(assert (=> b!191384 (= lt!95027 (addApplyDifferent!157 lt!95042 lt!95032 (zeroValue!3744 thiss!1248) lt!95043))))

(assert (=> b!191384 (= (apply!181 (+!301 lt!95042 (tuple2!3525 lt!95032 (zeroValue!3744 thiss!1248))) lt!95043) (apply!181 lt!95042 lt!95043))))

(declare-fun lt!95028 () Unit!5781)

(assert (=> b!191384 (= lt!95028 lt!95027)))

(declare-fun lt!95045 () ListLongMap!2455)

(assert (=> b!191384 (= lt!95045 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!95031 () (_ BitVec 64))

(assert (=> b!191384 (= lt!95031 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95034 () (_ BitVec 64))

(assert (=> b!191384 (= lt!95034 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!191384 (= lt!95033 (addApplyDifferent!157 lt!95045 lt!95031 (minValue!3744 thiss!1248) lt!95034))))

(assert (=> b!191384 (= (apply!181 (+!301 lt!95045 (tuple2!3525 lt!95031 (minValue!3744 thiss!1248))) lt!95034) (apply!181 lt!95045 lt!95034))))

(declare-fun c!34442 () Bool)

(declare-fun c!34445 () Bool)

(declare-fun bm!19312 () Bool)

(assert (=> bm!19312 (= call!19313 (+!301 (ite c!34445 call!19316 (ite c!34442 call!19314 call!19317)) (ite (or c!34445 c!34442) (tuple2!3525 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3744 thiss!1248)) (tuple2!3525 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3744 thiss!1248)))))))

(declare-fun d!56057 () Bool)

(assert (=> d!56057 e!125949))

(declare-fun res!90468 () Bool)

(assert (=> d!56057 (=> (not res!90468) (not e!125949))))

(assert (=> d!56057 (= res!90468 (or (bvsge #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))))

(declare-fun lt!95037 () ListLongMap!2455)

(assert (=> d!56057 (= lt!95048 lt!95037)))

(declare-fun lt!95046 () Unit!5781)

(assert (=> d!56057 (= lt!95046 e!125942)))

(declare-fun c!34444 () Bool)

(assert (=> d!56057 (= c!34444 e!125939)))

(declare-fun res!90461 () Bool)

(assert (=> d!56057 (=> (not res!90461) (not e!125939))))

(assert (=> d!56057 (= res!90461 (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))

(assert (=> d!56057 (= lt!95037 e!125945)))

(assert (=> d!56057 (= c!34445 (and (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56057 (validMask!0 (mask!9119 thiss!1248))))

(assert (=> d!56057 (= (getCurrentListMap!886 (_keys!5880 thiss!1248) (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)) lt!95048)))

(declare-fun b!191385 () Bool)

(assert (=> b!191385 (= e!125950 (not call!19318))))

(declare-fun bm!19313 () Bool)

(assert (=> bm!19313 (= call!19316 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun bm!19314 () Bool)

(assert (=> bm!19314 (= call!19319 call!19313)))

(declare-fun b!191386 () Bool)

(declare-fun res!90467 () Bool)

(assert (=> b!191386 (=> (not res!90467) (not e!125949))))

(assert (=> b!191386 (= res!90467 e!125948)))

(declare-fun res!90465 () Bool)

(assert (=> b!191386 (=> res!90465 e!125948)))

(assert (=> b!191386 (= res!90465 (not e!125947))))

(declare-fun res!90462 () Bool)

(assert (=> b!191386 (=> (not res!90462) (not e!125947))))

(assert (=> b!191386 (= res!90462 (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))

(declare-fun bm!19315 () Bool)

(assert (=> bm!19315 (= call!19318 (contains!1350 lt!95048 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191387 () Bool)

(assert (=> b!191387 (= e!125944 call!19319)))

(declare-fun b!191388 () Bool)

(assert (=> b!191388 (= e!125940 (= (apply!181 lt!95048 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3744 thiss!1248)))))

(declare-fun bm!19316 () Bool)

(assert (=> bm!19316 (= call!19315 (contains!1350 lt!95048 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191389 () Bool)

(assert (=> b!191389 (= e!125945 e!125944)))

(assert (=> b!191389 (= c!34442 (and (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!56057 c!34445) b!191375))

(assert (= (and d!56057 (not c!34445)) b!191389))

(assert (= (and b!191389 c!34442) b!191387))

(assert (= (and b!191389 (not c!34442)) b!191383))

(assert (= (and b!191383 c!34446) b!191373))

(assert (= (and b!191383 (not c!34446)) b!191377))

(assert (= (or b!191373 b!191377) bm!19311))

(assert (= (or b!191387 bm!19311) bm!19310))

(assert (= (or b!191387 b!191373) bm!19314))

(assert (= (or b!191375 bm!19310) bm!19313))

(assert (= (or b!191375 bm!19314) bm!19312))

(assert (= (and d!56057 res!90461) b!191380))

(assert (= (and d!56057 c!34444) b!191384))

(assert (= (and d!56057 (not c!34444)) b!191382))

(assert (= (and d!56057 res!90468) b!191386))

(assert (= (and b!191386 res!90462) b!191374))

(assert (= (and b!191386 (not res!90465)) b!191379))

(assert (= (and b!191379 res!90463) b!191372))

(assert (= (and b!191386 res!90467) b!191378))

(assert (= (and b!191378 c!34443) b!191370))

(assert (= (and b!191378 (not c!34443)) b!191385))

(assert (= (and b!191370 res!90466) b!191388))

(assert (= (or b!191370 b!191385) bm!19315))

(assert (= (and b!191378 res!90469) b!191369))

(assert (= (and b!191369 c!34447) b!191381))

(assert (= (and b!191369 (not c!34447)) b!191376))

(assert (= (and b!191381 res!90464) b!191371))

(assert (= (or b!191381 b!191376) bm!19316))

(declare-fun b_lambda!7421 () Bool)

(assert (=> (not b_lambda!7421) (not b!191372)))

(declare-fun t!7364 () Bool)

(declare-fun tb!2881 () Bool)

(assert (=> (and b!191230 (= (defaultEntry!3903 thiss!1248) (defaultEntry!3903 thiss!1248)) t!7364) tb!2881))

(declare-fun result!4905 () Bool)

(assert (=> tb!2881 (= result!4905 tp_is_empty!4449)))

(assert (=> b!191372 t!7364))

(declare-fun b_and!11369 () Bool)

(assert (= b_and!11365 (and (=> t!7364 result!4905) b_and!11369)))

(assert (=> d!56057 m!217833))

(declare-fun m!217929 () Bool)

(assert (=> b!191374 m!217929))

(assert (=> b!191374 m!217929))

(declare-fun m!217931 () Bool)

(assert (=> b!191374 m!217931))

(declare-fun m!217933 () Bool)

(assert (=> b!191388 m!217933))

(declare-fun m!217935 () Bool)

(assert (=> bm!19316 m!217935))

(assert (=> b!191379 m!217929))

(assert (=> b!191379 m!217929))

(declare-fun m!217937 () Bool)

(assert (=> b!191379 m!217937))

(declare-fun m!217939 () Bool)

(assert (=> bm!19315 m!217939))

(assert (=> b!191380 m!217929))

(assert (=> b!191380 m!217929))

(assert (=> b!191380 m!217931))

(declare-fun m!217941 () Bool)

(assert (=> bm!19312 m!217941))

(declare-fun m!217943 () Bool)

(assert (=> b!191384 m!217943))

(declare-fun m!217945 () Bool)

(assert (=> b!191384 m!217945))

(declare-fun m!217947 () Bool)

(assert (=> b!191384 m!217947))

(declare-fun m!217949 () Bool)

(assert (=> b!191384 m!217949))

(declare-fun m!217951 () Bool)

(assert (=> b!191384 m!217951))

(declare-fun m!217953 () Bool)

(assert (=> b!191384 m!217953))

(declare-fun m!217955 () Bool)

(assert (=> b!191384 m!217955))

(declare-fun m!217957 () Bool)

(assert (=> b!191384 m!217957))

(assert (=> b!191384 m!217929))

(assert (=> b!191384 m!217947))

(declare-fun m!217959 () Bool)

(assert (=> b!191384 m!217959))

(declare-fun m!217961 () Bool)

(assert (=> b!191384 m!217961))

(assert (=> b!191384 m!217949))

(declare-fun m!217963 () Bool)

(assert (=> b!191384 m!217963))

(declare-fun m!217965 () Bool)

(assert (=> b!191384 m!217965))

(declare-fun m!217967 () Bool)

(assert (=> b!191384 m!217967))

(assert (=> b!191384 m!217957))

(declare-fun m!217969 () Bool)

(assert (=> b!191384 m!217969))

(declare-fun m!217971 () Bool)

(assert (=> b!191384 m!217971))

(assert (=> b!191384 m!217953))

(declare-fun m!217973 () Bool)

(assert (=> b!191384 m!217973))

(declare-fun m!217975 () Bool)

(assert (=> b!191372 m!217975))

(assert (=> b!191372 m!217929))

(declare-fun m!217977 () Bool)

(assert (=> b!191372 m!217977))

(assert (=> b!191372 m!217977))

(assert (=> b!191372 m!217975))

(declare-fun m!217979 () Bool)

(assert (=> b!191372 m!217979))

(assert (=> b!191372 m!217929))

(declare-fun m!217981 () Bool)

(assert (=> b!191372 m!217981))

(assert (=> bm!19313 m!217951))

(declare-fun m!217983 () Bool)

(assert (=> b!191375 m!217983))

(declare-fun m!217985 () Bool)

(assert (=> b!191371 m!217985))

(assert (=> b!191226 d!56057))

(declare-fun d!56059 () Bool)

(assert (=> d!56059 (= (validMask!0 (mask!9119 thiss!1248)) (and (or (= (mask!9119 thiss!1248) #b00000000000000000000000000000111) (= (mask!9119 thiss!1248) #b00000000000000000000000000001111) (= (mask!9119 thiss!1248) #b00000000000000000000000000011111) (= (mask!9119 thiss!1248) #b00000000000000000000000000111111) (= (mask!9119 thiss!1248) #b00000000000000000000000001111111) (= (mask!9119 thiss!1248) #b00000000000000000000000011111111) (= (mask!9119 thiss!1248) #b00000000000000000000000111111111) (= (mask!9119 thiss!1248) #b00000000000000000000001111111111) (= (mask!9119 thiss!1248) #b00000000000000000000011111111111) (= (mask!9119 thiss!1248) #b00000000000000000000111111111111) (= (mask!9119 thiss!1248) #b00000000000000000001111111111111) (= (mask!9119 thiss!1248) #b00000000000000000011111111111111) (= (mask!9119 thiss!1248) #b00000000000000000111111111111111) (= (mask!9119 thiss!1248) #b00000000000000001111111111111111) (= (mask!9119 thiss!1248) #b00000000000000011111111111111111) (= (mask!9119 thiss!1248) #b00000000000000111111111111111111) (= (mask!9119 thiss!1248) #b00000000000001111111111111111111) (= (mask!9119 thiss!1248) #b00000000000011111111111111111111) (= (mask!9119 thiss!1248) #b00000000000111111111111111111111) (= (mask!9119 thiss!1248) #b00000000001111111111111111111111) (= (mask!9119 thiss!1248) #b00000000011111111111111111111111) (= (mask!9119 thiss!1248) #b00000000111111111111111111111111) (= (mask!9119 thiss!1248) #b00000001111111111111111111111111) (= (mask!9119 thiss!1248) #b00000011111111111111111111111111) (= (mask!9119 thiss!1248) #b00000111111111111111111111111111) (= (mask!9119 thiss!1248) #b00001111111111111111111111111111) (= (mask!9119 thiss!1248) #b00011111111111111111111111111111) (= (mask!9119 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9119 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!191226 d!56059))

(declare-fun d!56061 () Bool)

(declare-fun e!125953 () Bool)

(assert (=> d!56061 e!125953))

(declare-fun res!90472 () Bool)

(assert (=> d!56061 (=> (not res!90472) (not e!125953))))

(assert (=> d!56061 (= res!90472 (and (bvsge (index!4919 lt!94943) #b00000000000000000000000000000000) (bvslt (index!4919 lt!94943) (size!4155 (_values!3886 thiss!1248)))))))

(declare-fun lt!95051 () Unit!5781)

(declare-fun choose!1044 (array!8134 array!8136 (_ BitVec 32) (_ BitVec 32) V!5579 V!5579 (_ BitVec 32) (_ BitVec 64) V!5579 Int) Unit!5781)

(assert (=> d!56061 (= lt!95051 (choose!1044 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) (index!4919 lt!94943) key!828 v!309 (defaultEntry!3903 thiss!1248)))))

(assert (=> d!56061 (validMask!0 (mask!9119 thiss!1248))))

(assert (=> d!56061 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!107 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) (index!4919 lt!94943) key!828 v!309 (defaultEntry!3903 thiss!1248)) lt!95051)))

(declare-fun b!191394 () Bool)

(assert (=> b!191394 (= e!125953 (= (+!301 (getCurrentListMap!886 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)) (tuple2!3525 key!828 v!309)) (getCurrentListMap!886 (_keys!5880 thiss!1248) (array!8137 (store (arr!3833 (_values!3886 thiss!1248)) (index!4919 lt!94943) (ValueCellFull!1881 v!309)) (size!4155 (_values!3886 thiss!1248))) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248))))))

(assert (= (and d!56061 res!90472) b!191394))

(declare-fun m!217987 () Bool)

(assert (=> d!56061 m!217987))

(assert (=> d!56061 m!217833))

(assert (=> b!191394 m!217835))

(assert (=> b!191394 m!217835))

(declare-fun m!217989 () Bool)

(assert (=> b!191394 m!217989))

(assert (=> b!191394 m!217841))

(assert (=> b!191394 m!217837))

(assert (=> b!191226 d!56061))

(declare-fun b!191395 () Bool)

(declare-fun e!125965 () Bool)

(declare-fun e!125957 () Bool)

(assert (=> b!191395 (= e!125965 e!125957)))

(declare-fun c!34453 () Bool)

(assert (=> b!191395 (= c!34453 (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!191396 () Bool)

(declare-fun e!125966 () Bool)

(declare-fun e!125956 () Bool)

(assert (=> b!191396 (= e!125966 e!125956)))

(declare-fun res!90478 () Bool)

(declare-fun call!19325 () Bool)

(assert (=> b!191396 (= res!90478 call!19325)))

(assert (=> b!191396 (=> (not res!90478) (not e!125956))))

(declare-fun b!191397 () Bool)

(declare-fun e!125954 () Bool)

(declare-fun lt!95073 () ListLongMap!2455)

(assert (=> b!191397 (= e!125954 (= (apply!181 lt!95073 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3744 thiss!1248)))))

(declare-fun b!191398 () Bool)

(declare-fun e!125959 () Bool)

(assert (=> b!191398 (= e!125959 (= (apply!181 lt!95073 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000)) (get!2211 (select (arr!3833 (_values!3886 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!519 (defaultEntry!3903 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!191398 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4155 (_values!3886 thiss!1248))))))

(assert (=> b!191398 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))

(declare-fun b!191399 () Bool)

(declare-fun e!125962 () ListLongMap!2455)

(declare-fun call!19326 () ListLongMap!2455)

(assert (=> b!191399 (= e!125962 call!19326)))

(declare-fun b!191400 () Bool)

(declare-fun e!125963 () Bool)

(assert (=> b!191400 (= e!125963 (validKeyInArray!0 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191401 () Bool)

(declare-fun e!125961 () ListLongMap!2455)

(declare-fun call!19320 () ListLongMap!2455)

(assert (=> b!191401 (= e!125961 (+!301 call!19320 (tuple2!3525 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3744 thiss!1248))))))

(declare-fun b!191402 () Bool)

(declare-fun call!19322 () Bool)

(assert (=> b!191402 (= e!125957 (not call!19322))))

(declare-fun bm!19317 () Bool)

(declare-fun call!19321 () ListLongMap!2455)

(declare-fun call!19323 () ListLongMap!2455)

(assert (=> bm!19317 (= call!19321 call!19323)))

(declare-fun b!191403 () Bool)

(declare-fun call!19324 () ListLongMap!2455)

(assert (=> b!191403 (= e!125962 call!19324)))

(declare-fun bm!19318 () Bool)

(assert (=> bm!19318 (= call!19324 call!19321)))

(declare-fun b!191404 () Bool)

(declare-fun res!90481 () Bool)

(assert (=> b!191404 (=> (not res!90481) (not e!125965))))

(assert (=> b!191404 (= res!90481 e!125966)))

(declare-fun c!34449 () Bool)

(assert (=> b!191404 (= c!34449 (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!191405 () Bool)

(declare-fun e!125964 () Bool)

(assert (=> b!191405 (= e!125964 e!125959)))

(declare-fun res!90475 () Bool)

(assert (=> b!191405 (=> (not res!90475) (not e!125959))))

(assert (=> b!191405 (= res!90475 (contains!1350 lt!95073 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191405 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))

(declare-fun b!191406 () Bool)

(declare-fun e!125955 () Bool)

(assert (=> b!191406 (= e!125955 (validKeyInArray!0 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191407 () Bool)

(assert (=> b!191407 (= e!125957 e!125954)))

(declare-fun res!90476 () Bool)

(assert (=> b!191407 (= res!90476 call!19322)))

(assert (=> b!191407 (=> (not res!90476) (not e!125954))))

(declare-fun b!191408 () Bool)

(declare-fun e!125958 () Unit!5781)

(declare-fun Unit!5785 () Unit!5781)

(assert (=> b!191408 (= e!125958 Unit!5785)))

(declare-fun b!191409 () Bool)

(declare-fun c!34452 () Bool)

(assert (=> b!191409 (= c!34452 (and (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!125960 () ListLongMap!2455)

(assert (=> b!191409 (= e!125960 e!125962)))

(declare-fun b!191410 () Bool)

(declare-fun lt!95058 () Unit!5781)

(assert (=> b!191410 (= e!125958 lt!95058)))

(declare-fun lt!95064 () ListLongMap!2455)

(assert (=> b!191410 (= lt!95064 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!95055 () (_ BitVec 64))

(assert (=> b!191410 (= lt!95055 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95066 () (_ BitVec 64))

(assert (=> b!191410 (= lt!95066 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95060 () Unit!5781)

(assert (=> b!191410 (= lt!95060 (addStillContains!157 lt!95064 lt!95055 (zeroValue!3744 thiss!1248) lt!95066))))

(assert (=> b!191410 (contains!1350 (+!301 lt!95064 (tuple2!3525 lt!95055 (zeroValue!3744 thiss!1248))) lt!95066)))

(declare-fun lt!95063 () Unit!5781)

(assert (=> b!191410 (= lt!95063 lt!95060)))

(declare-fun lt!95069 () ListLongMap!2455)

(assert (=> b!191410 (= lt!95069 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!95065 () (_ BitVec 64))

(assert (=> b!191410 (= lt!95065 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95061 () (_ BitVec 64))

(assert (=> b!191410 (= lt!95061 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95072 () Unit!5781)

(assert (=> b!191410 (= lt!95072 (addApplyDifferent!157 lt!95069 lt!95065 (minValue!3744 thiss!1248) lt!95061))))

(assert (=> b!191410 (= (apply!181 (+!301 lt!95069 (tuple2!3525 lt!95065 (minValue!3744 thiss!1248))) lt!95061) (apply!181 lt!95069 lt!95061))))

(declare-fun lt!95054 () Unit!5781)

(assert (=> b!191410 (= lt!95054 lt!95072)))

(declare-fun lt!95067 () ListLongMap!2455)

(assert (=> b!191410 (= lt!95067 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!95057 () (_ BitVec 64))

(assert (=> b!191410 (= lt!95057 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95068 () (_ BitVec 64))

(assert (=> b!191410 (= lt!95068 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95052 () Unit!5781)

(assert (=> b!191410 (= lt!95052 (addApplyDifferent!157 lt!95067 lt!95057 (zeroValue!3744 thiss!1248) lt!95068))))

(assert (=> b!191410 (= (apply!181 (+!301 lt!95067 (tuple2!3525 lt!95057 (zeroValue!3744 thiss!1248))) lt!95068) (apply!181 lt!95067 lt!95068))))

(declare-fun lt!95053 () Unit!5781)

(assert (=> b!191410 (= lt!95053 lt!95052)))

(declare-fun lt!95070 () ListLongMap!2455)

(assert (=> b!191410 (= lt!95070 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun lt!95056 () (_ BitVec 64))

(assert (=> b!191410 (= lt!95056 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95059 () (_ BitVec 64))

(assert (=> b!191410 (= lt!95059 (select (arr!3832 (_keys!5880 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!191410 (= lt!95058 (addApplyDifferent!157 lt!95070 lt!95056 (minValue!3744 thiss!1248) lt!95059))))

(assert (=> b!191410 (= (apply!181 (+!301 lt!95070 (tuple2!3525 lt!95056 (minValue!3744 thiss!1248))) lt!95059) (apply!181 lt!95070 lt!95059))))

(declare-fun bm!19319 () Bool)

(declare-fun c!34448 () Bool)

(declare-fun c!34451 () Bool)

(assert (=> bm!19319 (= call!19320 (+!301 (ite c!34451 call!19323 (ite c!34448 call!19321 call!19324)) (ite (or c!34451 c!34448) (tuple2!3525 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3744 thiss!1248)) (tuple2!3525 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3744 thiss!1248)))))))

(declare-fun d!56063 () Bool)

(assert (=> d!56063 e!125965))

(declare-fun res!90480 () Bool)

(assert (=> d!56063 (=> (not res!90480) (not e!125965))))

(assert (=> d!56063 (= res!90480 (or (bvsge #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))))

(declare-fun lt!95062 () ListLongMap!2455)

(assert (=> d!56063 (= lt!95073 lt!95062)))

(declare-fun lt!95071 () Unit!5781)

(assert (=> d!56063 (= lt!95071 e!125958)))

(declare-fun c!34450 () Bool)

(assert (=> d!56063 (= c!34450 e!125955)))

(declare-fun res!90473 () Bool)

(assert (=> d!56063 (=> (not res!90473) (not e!125955))))

(assert (=> d!56063 (= res!90473 (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))

(assert (=> d!56063 (= lt!95062 e!125961)))

(assert (=> d!56063 (= c!34451 (and (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56063 (validMask!0 (mask!9119 thiss!1248))))

(assert (=> d!56063 (= (getCurrentListMap!886 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)) lt!95073)))

(declare-fun b!191411 () Bool)

(assert (=> b!191411 (= e!125966 (not call!19325))))

(declare-fun bm!19320 () Bool)

(assert (=> bm!19320 (= call!19323 (getCurrentListMapNoExtraKeys!211 (_keys!5880 thiss!1248) (_values!3886 thiss!1248) (mask!9119 thiss!1248) (extraKeys!3640 thiss!1248) (zeroValue!3744 thiss!1248) (minValue!3744 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3903 thiss!1248)))))

(declare-fun bm!19321 () Bool)

(assert (=> bm!19321 (= call!19326 call!19320)))

(declare-fun b!191412 () Bool)

(declare-fun res!90479 () Bool)

(assert (=> b!191412 (=> (not res!90479) (not e!125965))))

(assert (=> b!191412 (= res!90479 e!125964)))

(declare-fun res!90477 () Bool)

(assert (=> b!191412 (=> res!90477 e!125964)))

(assert (=> b!191412 (= res!90477 (not e!125963))))

(declare-fun res!90474 () Bool)

(assert (=> b!191412 (=> (not res!90474) (not e!125963))))

(assert (=> b!191412 (= res!90474 (bvslt #b00000000000000000000000000000000 (size!4154 (_keys!5880 thiss!1248))))))

(declare-fun bm!19322 () Bool)

(assert (=> bm!19322 (= call!19325 (contains!1350 lt!95073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191413 () Bool)

(assert (=> b!191413 (= e!125960 call!19326)))

(declare-fun b!191414 () Bool)

(assert (=> b!191414 (= e!125956 (= (apply!181 lt!95073 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3744 thiss!1248)))))

(declare-fun bm!19323 () Bool)

(assert (=> bm!19323 (= call!19322 (contains!1350 lt!95073 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191415 () Bool)

(assert (=> b!191415 (= e!125961 e!125960)))

(assert (=> b!191415 (= c!34448 (and (not (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3640 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!56063 c!34451) b!191401))

(assert (= (and d!56063 (not c!34451)) b!191415))

(assert (= (and b!191415 c!34448) b!191413))

(assert (= (and b!191415 (not c!34448)) b!191409))

(assert (= (and b!191409 c!34452) b!191399))

(assert (= (and b!191409 (not c!34452)) b!191403))

(assert (= (or b!191399 b!191403) bm!19318))

(assert (= (or b!191413 bm!19318) bm!19317))

(assert (= (or b!191413 b!191399) bm!19321))

(assert (= (or b!191401 bm!19317) bm!19320))

(assert (= (or b!191401 bm!19321) bm!19319))

(assert (= (and d!56063 res!90473) b!191406))

(assert (= (and d!56063 c!34450) b!191410))

(assert (= (and d!56063 (not c!34450)) b!191408))

(assert (= (and d!56063 res!90480) b!191412))

(assert (= (and b!191412 res!90474) b!191400))

(assert (= (and b!191412 (not res!90477)) b!191405))

(assert (= (and b!191405 res!90475) b!191398))

(assert (= (and b!191412 res!90479) b!191404))

(assert (= (and b!191404 c!34449) b!191396))

(assert (= (and b!191404 (not c!34449)) b!191411))

(assert (= (and b!191396 res!90478) b!191414))

(assert (= (or b!191396 b!191411) bm!19322))

(assert (= (and b!191404 res!90481) b!191395))

(assert (= (and b!191395 c!34453) b!191407))

(assert (= (and b!191395 (not c!34453)) b!191402))

(assert (= (and b!191407 res!90476) b!191397))

(assert (= (or b!191407 b!191402) bm!19323))

(declare-fun b_lambda!7423 () Bool)

(assert (=> (not b_lambda!7423) (not b!191398)))

(assert (=> b!191398 t!7364))

(declare-fun b_and!11371 () Bool)

(assert (= b_and!11369 (and (=> t!7364 result!4905) b_and!11371)))

(assert (=> d!56063 m!217833))

(assert (=> b!191400 m!217929))

(assert (=> b!191400 m!217929))

(assert (=> b!191400 m!217931))

(declare-fun m!217991 () Bool)

(assert (=> b!191414 m!217991))

(declare-fun m!217993 () Bool)

(assert (=> bm!19323 m!217993))

(assert (=> b!191405 m!217929))

(assert (=> b!191405 m!217929))

(declare-fun m!217995 () Bool)

(assert (=> b!191405 m!217995))

(declare-fun m!217997 () Bool)

(assert (=> bm!19322 m!217997))

(assert (=> b!191406 m!217929))

(assert (=> b!191406 m!217929))

(assert (=> b!191406 m!217931))

(declare-fun m!217999 () Bool)

(assert (=> bm!19319 m!217999))

(declare-fun m!218001 () Bool)

(assert (=> b!191410 m!218001))

(declare-fun m!218003 () Bool)

(assert (=> b!191410 m!218003))

(declare-fun m!218005 () Bool)

(assert (=> b!191410 m!218005))

(declare-fun m!218007 () Bool)

(assert (=> b!191410 m!218007))

(declare-fun m!218009 () Bool)

(assert (=> b!191410 m!218009))

(declare-fun m!218011 () Bool)

(assert (=> b!191410 m!218011))

(declare-fun m!218013 () Bool)

(assert (=> b!191410 m!218013))

(declare-fun m!218015 () Bool)

(assert (=> b!191410 m!218015))

(assert (=> b!191410 m!217929))

(assert (=> b!191410 m!218005))

(declare-fun m!218017 () Bool)

(assert (=> b!191410 m!218017))

(declare-fun m!218019 () Bool)

(assert (=> b!191410 m!218019))

(assert (=> b!191410 m!218007))

(declare-fun m!218021 () Bool)

(assert (=> b!191410 m!218021))

(declare-fun m!218023 () Bool)

(assert (=> b!191410 m!218023))

(declare-fun m!218025 () Bool)

(assert (=> b!191410 m!218025))

(assert (=> b!191410 m!218015))

(declare-fun m!218027 () Bool)

(assert (=> b!191410 m!218027))

(declare-fun m!218029 () Bool)

(assert (=> b!191410 m!218029))

(assert (=> b!191410 m!218011))

(declare-fun m!218031 () Bool)

(assert (=> b!191410 m!218031))

(assert (=> b!191398 m!217975))

(assert (=> b!191398 m!217929))

(declare-fun m!218033 () Bool)

(assert (=> b!191398 m!218033))

(assert (=> b!191398 m!218033))

(assert (=> b!191398 m!217975))

(declare-fun m!218035 () Bool)

(assert (=> b!191398 m!218035))

(assert (=> b!191398 m!217929))

(declare-fun m!218037 () Bool)

(assert (=> b!191398 m!218037))

(assert (=> bm!19320 m!218009))

(declare-fun m!218039 () Bool)

(assert (=> b!191401 m!218039))

(declare-fun m!218041 () Bool)

(assert (=> b!191397 m!218041))

(assert (=> b!191226 d!56063))

(declare-fun d!56065 () Bool)

(declare-fun e!125972 () Bool)

(assert (=> d!56065 e!125972))

(declare-fun res!90484 () Bool)

(assert (=> d!56065 (=> res!90484 e!125972)))

(declare-fun lt!95085 () Bool)

(assert (=> d!56065 (= res!90484 (not lt!95085))))

(declare-fun lt!95083 () Bool)

(assert (=> d!56065 (= lt!95085 lt!95083)))

(declare-fun lt!95082 () Unit!5781)

(declare-fun e!125971 () Unit!5781)

(assert (=> d!56065 (= lt!95082 e!125971)))

(declare-fun c!34456 () Bool)

(assert (=> d!56065 (= c!34456 lt!95083)))

(declare-fun containsKey!241 (List!2442 (_ BitVec 64)) Bool)

(assert (=> d!56065 (= lt!95083 (containsKey!241 (toList!1243 lt!94940) key!828))))

(assert (=> d!56065 (= (contains!1350 lt!94940 key!828) lt!95085)))

(declare-fun b!191422 () Bool)

(declare-fun lt!95084 () Unit!5781)

(assert (=> b!191422 (= e!125971 lt!95084)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!190 (List!2442 (_ BitVec 64)) Unit!5781)

(assert (=> b!191422 (= lt!95084 (lemmaContainsKeyImpliesGetValueByKeyDefined!190 (toList!1243 lt!94940) key!828))))

(declare-datatypes ((Option!243 0))(
  ( (Some!242 (v!4206 V!5579)) (None!241) )
))
(declare-fun isDefined!191 (Option!243) Bool)

(declare-fun getValueByKey!237 (List!2442 (_ BitVec 64)) Option!243)

(assert (=> b!191422 (isDefined!191 (getValueByKey!237 (toList!1243 lt!94940) key!828))))

(declare-fun b!191423 () Bool)

(declare-fun Unit!5786 () Unit!5781)

(assert (=> b!191423 (= e!125971 Unit!5786)))

(declare-fun b!191424 () Bool)

(assert (=> b!191424 (= e!125972 (isDefined!191 (getValueByKey!237 (toList!1243 lt!94940) key!828)))))

(assert (= (and d!56065 c!34456) b!191422))

(assert (= (and d!56065 (not c!34456)) b!191423))

(assert (= (and d!56065 (not res!90484)) b!191424))

(declare-fun m!218043 () Bool)

(assert (=> d!56065 m!218043))

(declare-fun m!218045 () Bool)

(assert (=> b!191422 m!218045))

(declare-fun m!218047 () Bool)

(assert (=> b!191422 m!218047))

(assert (=> b!191422 m!218047))

(declare-fun m!218049 () Bool)

(assert (=> b!191422 m!218049))

(assert (=> b!191424 m!218047))

(assert (=> b!191424 m!218047))

(assert (=> b!191424 m!218049))

(assert (=> b!191226 d!56065))

(declare-fun d!56067 () Bool)

(declare-fun e!125975 () Bool)

(assert (=> d!56067 e!125975))

(declare-fun res!90489 () Bool)

(assert (=> d!56067 (=> (not res!90489) (not e!125975))))

(declare-fun lt!95094 () ListLongMap!2455)

(assert (=> d!56067 (= res!90489 (contains!1350 lt!95094 (_1!1772 (tuple2!3525 key!828 v!309))))))

(declare-fun lt!95096 () List!2442)

(assert (=> d!56067 (= lt!95094 (ListLongMap!2456 lt!95096))))

(declare-fun lt!95097 () Unit!5781)

(declare-fun lt!95095 () Unit!5781)

(assert (=> d!56067 (= lt!95097 lt!95095)))

(assert (=> d!56067 (= (getValueByKey!237 lt!95096 (_1!1772 (tuple2!3525 key!828 v!309))) (Some!242 (_2!1772 (tuple2!3525 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!126 (List!2442 (_ BitVec 64) V!5579) Unit!5781)

(assert (=> d!56067 (= lt!95095 (lemmaContainsTupThenGetReturnValue!126 lt!95096 (_1!1772 (tuple2!3525 key!828 v!309)) (_2!1772 (tuple2!3525 key!828 v!309))))))

(declare-fun insertStrictlySorted!128 (List!2442 (_ BitVec 64) V!5579) List!2442)

(assert (=> d!56067 (= lt!95096 (insertStrictlySorted!128 (toList!1243 lt!94940) (_1!1772 (tuple2!3525 key!828 v!309)) (_2!1772 (tuple2!3525 key!828 v!309))))))

(assert (=> d!56067 (= (+!301 lt!94940 (tuple2!3525 key!828 v!309)) lt!95094)))

(declare-fun b!191429 () Bool)

(declare-fun res!90490 () Bool)

(assert (=> b!191429 (=> (not res!90490) (not e!125975))))

(assert (=> b!191429 (= res!90490 (= (getValueByKey!237 (toList!1243 lt!95094) (_1!1772 (tuple2!3525 key!828 v!309))) (Some!242 (_2!1772 (tuple2!3525 key!828 v!309)))))))

(declare-fun b!191430 () Bool)

(declare-fun contains!1351 (List!2442 tuple2!3524) Bool)

(assert (=> b!191430 (= e!125975 (contains!1351 (toList!1243 lt!95094) (tuple2!3525 key!828 v!309)))))

(assert (= (and d!56067 res!90489) b!191429))

(assert (= (and b!191429 res!90490) b!191430))

(declare-fun m!218051 () Bool)

(assert (=> d!56067 m!218051))

(declare-fun m!218053 () Bool)

(assert (=> d!56067 m!218053))

(declare-fun m!218055 () Bool)

(assert (=> d!56067 m!218055))

(declare-fun m!218057 () Bool)

(assert (=> d!56067 m!218057))

(declare-fun m!218059 () Bool)

(assert (=> b!191429 m!218059))

(declare-fun m!218061 () Bool)

(assert (=> b!191430 m!218061))

(assert (=> b!191226 d!56067))

(declare-fun condMapEmpty!7689 () Bool)

(declare-fun mapDefault!7689 () ValueCell!1881)

(assert (=> mapNonEmpty!7683 (= condMapEmpty!7689 (= mapRest!7683 ((as const (Array (_ BitVec 32) ValueCell!1881)) mapDefault!7689)))))

(declare-fun e!125981 () Bool)

(declare-fun mapRes!7689 () Bool)

(assert (=> mapNonEmpty!7683 (= tp!16878 (and e!125981 mapRes!7689))))

(declare-fun mapNonEmpty!7689 () Bool)

(declare-fun tp!16887 () Bool)

(declare-fun e!125980 () Bool)

(assert (=> mapNonEmpty!7689 (= mapRes!7689 (and tp!16887 e!125980))))

(declare-fun mapRest!7689 () (Array (_ BitVec 32) ValueCell!1881))

(declare-fun mapValue!7689 () ValueCell!1881)

(declare-fun mapKey!7689 () (_ BitVec 32))

(assert (=> mapNonEmpty!7689 (= mapRest!7683 (store mapRest!7689 mapKey!7689 mapValue!7689))))

(declare-fun b!191437 () Bool)

(assert (=> b!191437 (= e!125980 tp_is_empty!4449)))

(declare-fun mapIsEmpty!7689 () Bool)

(assert (=> mapIsEmpty!7689 mapRes!7689))

(declare-fun b!191438 () Bool)

(assert (=> b!191438 (= e!125981 tp_is_empty!4449)))

(assert (= (and mapNonEmpty!7683 condMapEmpty!7689) mapIsEmpty!7689))

(assert (= (and mapNonEmpty!7683 (not condMapEmpty!7689)) mapNonEmpty!7689))

(assert (= (and mapNonEmpty!7689 ((_ is ValueCellFull!1881) mapValue!7689)) b!191437))

(assert (= (and mapNonEmpty!7683 ((_ is ValueCellFull!1881) mapDefault!7689)) b!191438))

(declare-fun m!218063 () Bool)

(assert (=> mapNonEmpty!7689 m!218063))

(declare-fun b_lambda!7425 () Bool)

(assert (= b_lambda!7421 (or (and b!191230 b_free!4677) b_lambda!7425)))

(declare-fun b_lambda!7427 () Bool)

(assert (= b_lambda!7423 (or (and b!191230 b_free!4677) b_lambda!7427)))

(check-sat (not b!191298) (not b!191307) (not b!191322) (not b_lambda!7427) (not b!191306) (not b!191410) (not bm!19294) (not b!191380) (not b_next!4677) (not b!191384) (not d!56061) (not b!191372) (not b!191429) (not b!191406) (not bm!19295) (not bm!19315) (not b!191424) (not b!191371) (not b_lambda!7425) (not d!56065) (not b!191414) (not b!191405) (not bm!19313) (not b!191374) (not b!191398) (not b!191388) (not b!191375) (not bm!19312) tp_is_empty!4449 (not b!191430) (not mapNonEmpty!7689) (not bm!19319) (not b!191394) b_and!11371 (not b!191397) (not b!191401) (not d!56051) (not d!56067) (not b!191379) (not bm!19323) (not d!56049) (not d!56043) (not bm!19320) (not bm!19322) (not d!56057) (not d!56045) (not b!191422) (not b!191400) (not bm!19316) (not b!191308) (not d!56063))
(check-sat b_and!11371 (not b_next!4677))
