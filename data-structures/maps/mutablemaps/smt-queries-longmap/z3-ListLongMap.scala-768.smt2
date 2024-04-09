; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18090 () Bool)

(assert start!18090)

(declare-fun b!180019 () Bool)

(declare-fun b_free!4449 () Bool)

(declare-fun b_next!4449 () Bool)

(assert (=> b!180019 (= b_free!4449 (not b_next!4449))))

(declare-fun tp!16077 () Bool)

(declare-fun b_and!11001 () Bool)

(assert (=> b!180019 (= tp!16077 b_and!11001)))

(declare-fun b!180012 () Bool)

(declare-fun e!118581 () Bool)

(declare-fun e!118584 () Bool)

(assert (=> b!180012 (= e!118581 e!118584)))

(declare-fun res!85286 () Bool)

(assert (=> b!180012 (=> res!85286 e!118584)))

(declare-datatypes ((V!5275 0))(
  ( (V!5276 (val!2155 Int)) )
))
(declare-datatypes ((ValueCell!1767 0))(
  ( (ValueCellFull!1767 (v!4040 V!5275)) (EmptyCell!1767) )
))
(declare-datatypes ((array!7610 0))(
  ( (array!7611 (arr!3604 (Array (_ BitVec 32) (_ BitVec 64))) (size!3912 (_ BitVec 32))) )
))
(declare-datatypes ((array!7612 0))(
  ( (array!7613 (arr!3605 (Array (_ BitVec 32) ValueCell!1767)) (size!3913 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2442 0))(
  ( (LongMapFixedSize!2443 (defaultEntry!3697 Int) (mask!8692 (_ BitVec 32)) (extraKeys!3434 (_ BitVec 32)) (zeroValue!3538 V!5275) (minValue!3538 V!5275) (_size!1270 (_ BitVec 32)) (_keys!5588 array!7610) (_values!3680 array!7612) (_vacant!1270 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3348 0))(
  ( (tuple2!3349 (_1!1684 Bool) (_2!1684 LongMapFixedSize!2442)) )
))
(declare-fun lt!88911 () tuple2!3348)

(declare-fun valid!1008 (LongMapFixedSize!2442) Bool)

(assert (=> b!180012 (= res!85286 (not (valid!1008 (_2!1684 lt!88911))))))

(declare-datatypes ((SeekEntryResult!599 0))(
  ( (MissingZero!599 (index!4564 (_ BitVec 32))) (Found!599 (index!4565 (_ BitVec 32))) (Intermediate!599 (undefined!1411 Bool) (index!4566 (_ BitVec 32)) (x!19689 (_ BitVec 32))) (Undefined!599) (MissingVacant!599 (index!4567 (_ BitVec 32))) )
))
(declare-fun lt!88909 () SeekEntryResult!599)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!5275)

(declare-fun thiss!1248 () LongMapFixedSize!2442)

(declare-fun updateHelperNewKey!90 (LongMapFixedSize!2442 (_ BitVec 64) V!5275 (_ BitVec 32)) tuple2!3348)

(assert (=> b!180012 (= lt!88911 (updateHelperNewKey!90 thiss!1248 key!828 v!309 (index!4567 lt!88909)))))

(declare-fun res!85284 () Bool)

(declare-fun e!118586 () Bool)

(assert (=> start!18090 (=> (not res!85284) (not e!118586))))

(assert (=> start!18090 (= res!85284 (valid!1008 thiss!1248))))

(assert (=> start!18090 e!118586))

(declare-fun e!118587 () Bool)

(assert (=> start!18090 e!118587))

(assert (=> start!18090 true))

(declare-fun tp_is_empty!4221 () Bool)

(assert (=> start!18090 tp_is_empty!4221))

(declare-fun b!180013 () Bool)

(declare-fun e!118589 () Bool)

(declare-datatypes ((tuple2!3350 0))(
  ( (tuple2!3351 (_1!1685 (_ BitVec 64)) (_2!1685 V!5275)) )
))
(declare-datatypes ((List!2309 0))(
  ( (Nil!2306) (Cons!2305 (h!2930 tuple2!3350) (t!7165 List!2309)) )
))
(declare-datatypes ((ListLongMap!2287 0))(
  ( (ListLongMap!2288 (toList!1159 List!2309)) )
))
(declare-fun call!18185 () ListLongMap!2287)

(declare-fun call!18184 () ListLongMap!2287)

(assert (=> b!180013 (= e!118589 (not (= call!18185 call!18184)))))

(declare-fun b!180014 () Bool)

(assert (=> b!180014 (= e!118584 e!118589)))

(declare-fun c!32233 () Bool)

(assert (=> b!180014 (= c!32233 (_1!1684 lt!88911))))

(declare-fun b!180015 () Bool)

(declare-fun e!118585 () Bool)

(declare-fun lt!88910 () ListLongMap!2287)

(declare-fun +!261 (ListLongMap!2287 tuple2!3350) ListLongMap!2287)

(assert (=> b!180015 (= e!118585 (not (= lt!88910 (+!261 call!18184 (tuple2!3351 key!828 v!309)))))))

(declare-fun b!180016 () Bool)

(assert (=> b!180016 (= e!118589 e!118585)))

(assert (=> b!180016 (= lt!88910 call!18185)))

(declare-fun res!85285 () Bool)

(declare-fun contains!1228 (ListLongMap!2287 (_ BitVec 64)) Bool)

(assert (=> b!180016 (= res!85285 (not (contains!1228 lt!88910 key!828)))))

(assert (=> b!180016 (=> res!85285 e!118585)))

(declare-fun b!180017 () Bool)

(declare-fun e!118588 () Bool)

(declare-fun e!118583 () Bool)

(declare-fun mapRes!7225 () Bool)

(assert (=> b!180017 (= e!118588 (and e!118583 mapRes!7225))))

(declare-fun condMapEmpty!7225 () Bool)

(declare-fun mapDefault!7225 () ValueCell!1767)

(assert (=> b!180017 (= condMapEmpty!7225 (= (arr!3605 (_values!3680 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1767)) mapDefault!7225)))))

(declare-fun mapNonEmpty!7225 () Bool)

(declare-fun tp!16078 () Bool)

(declare-fun e!118582 () Bool)

(assert (=> mapNonEmpty!7225 (= mapRes!7225 (and tp!16078 e!118582))))

(declare-fun mapKey!7225 () (_ BitVec 32))

(declare-fun mapRest!7225 () (Array (_ BitVec 32) ValueCell!1767))

(declare-fun mapValue!7225 () ValueCell!1767)

(assert (=> mapNonEmpty!7225 (= (arr!3605 (_values!3680 thiss!1248)) (store mapRest!7225 mapKey!7225 mapValue!7225))))

(declare-fun b!180018 () Bool)

(declare-fun res!85288 () Bool)

(assert (=> b!180018 (=> (not res!85288) (not e!118586))))

(assert (=> b!180018 (= res!85288 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!2311 (array!7610) Bool)

(declare-fun array_inv!2312 (array!7612) Bool)

(assert (=> b!180019 (= e!118587 (and tp!16077 tp_is_empty!4221 (array_inv!2311 (_keys!5588 thiss!1248)) (array_inv!2312 (_values!3680 thiss!1248)) e!118588))))

(declare-fun bm!18181 () Bool)

(declare-fun map!1932 (LongMapFixedSize!2442) ListLongMap!2287)

(assert (=> bm!18181 (= call!18184 (map!1932 thiss!1248))))

(declare-fun bm!18182 () Bool)

(assert (=> bm!18182 (= call!18185 (map!1932 (_2!1684 lt!88911)))))

(declare-fun mapIsEmpty!7225 () Bool)

(assert (=> mapIsEmpty!7225 mapRes!7225))

(declare-fun b!180020 () Bool)

(assert (=> b!180020 (= e!118586 e!118581)))

(declare-fun res!85287 () Bool)

(assert (=> b!180020 (=> (not res!85287) (not e!118581))))

(get-info :version)

(assert (=> b!180020 (= res!85287 (and (not ((_ is Undefined!599) lt!88909)) ((_ is MissingVacant!599) lt!88909)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7610 (_ BitVec 32)) SeekEntryResult!599)

(assert (=> b!180020 (= lt!88909 (seekEntryOrOpen!0 key!828 (_keys!5588 thiss!1248) (mask!8692 thiss!1248)))))

(declare-fun b!180021 () Bool)

(assert (=> b!180021 (= e!118583 tp_is_empty!4221)))

(declare-fun b!180022 () Bool)

(assert (=> b!180022 (= e!118582 tp_is_empty!4221)))

(assert (= (and start!18090 res!85284) b!180018))

(assert (= (and b!180018 res!85288) b!180020))

(assert (= (and b!180020 res!85287) b!180012))

(assert (= (and b!180012 (not res!85286)) b!180014))

(assert (= (and b!180014 c!32233) b!180016))

(assert (= (and b!180014 (not c!32233)) b!180013))

(assert (= (and b!180016 (not res!85285)) b!180015))

(assert (= (or b!180015 b!180013) bm!18181))

(assert (= (or b!180016 b!180013) bm!18182))

(assert (= (and b!180017 condMapEmpty!7225) mapIsEmpty!7225))

(assert (= (and b!180017 (not condMapEmpty!7225)) mapNonEmpty!7225))

(assert (= (and mapNonEmpty!7225 ((_ is ValueCellFull!1767) mapValue!7225)) b!180022))

(assert (= (and b!180017 ((_ is ValueCellFull!1767) mapDefault!7225)) b!180021))

(assert (= b!180019 b!180017))

(assert (= start!18090 b!180019))

(declare-fun m!208085 () Bool)

(assert (=> mapNonEmpty!7225 m!208085))

(declare-fun m!208087 () Bool)

(assert (=> b!180020 m!208087))

(declare-fun m!208089 () Bool)

(assert (=> bm!18182 m!208089))

(declare-fun m!208091 () Bool)

(assert (=> b!180016 m!208091))

(declare-fun m!208093 () Bool)

(assert (=> start!18090 m!208093))

(declare-fun m!208095 () Bool)

(assert (=> b!180012 m!208095))

(declare-fun m!208097 () Bool)

(assert (=> b!180012 m!208097))

(declare-fun m!208099 () Bool)

(assert (=> bm!18181 m!208099))

(declare-fun m!208101 () Bool)

(assert (=> b!180019 m!208101))

(declare-fun m!208103 () Bool)

(assert (=> b!180019 m!208103))

(declare-fun m!208105 () Bool)

(assert (=> b!180015 m!208105))

(check-sat (not bm!18181) (not start!18090) tp_is_empty!4221 (not mapNonEmpty!7225) (not b_next!4449) (not b!180016) (not b!180019) (not bm!18182) b_and!11001 (not b!180012) (not b!180015) (not b!180020))
(check-sat b_and!11001 (not b_next!4449))
(get-model)

(declare-fun d!54105 () Bool)

(declare-fun e!118623 () Bool)

(assert (=> d!54105 e!118623))

(declare-fun res!85309 () Bool)

(assert (=> d!54105 (=> (not res!85309) (not e!118623))))

(declare-fun lt!88932 () ListLongMap!2287)

(assert (=> d!54105 (= res!85309 (contains!1228 lt!88932 (_1!1685 (tuple2!3351 key!828 v!309))))))

(declare-fun lt!88931 () List!2309)

(assert (=> d!54105 (= lt!88932 (ListLongMap!2288 lt!88931))))

(declare-datatypes ((Unit!5477 0))(
  ( (Unit!5478) )
))
(declare-fun lt!88930 () Unit!5477)

(declare-fun lt!88929 () Unit!5477)

(assert (=> d!54105 (= lt!88930 lt!88929)))

(declare-datatypes ((Option!209 0))(
  ( (Some!208 (v!4043 V!5275)) (None!207) )
))
(declare-fun getValueByKey!203 (List!2309 (_ BitVec 64)) Option!209)

(assert (=> d!54105 (= (getValueByKey!203 lt!88931 (_1!1685 (tuple2!3351 key!828 v!309))) (Some!208 (_2!1685 (tuple2!3351 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!108 (List!2309 (_ BitVec 64) V!5275) Unit!5477)

(assert (=> d!54105 (= lt!88929 (lemmaContainsTupThenGetReturnValue!108 lt!88931 (_1!1685 (tuple2!3351 key!828 v!309)) (_2!1685 (tuple2!3351 key!828 v!309))))))

(declare-fun insertStrictlySorted!110 (List!2309 (_ BitVec 64) V!5275) List!2309)

(assert (=> d!54105 (= lt!88931 (insertStrictlySorted!110 (toList!1159 call!18184) (_1!1685 (tuple2!3351 key!828 v!309)) (_2!1685 (tuple2!3351 key!828 v!309))))))

(assert (=> d!54105 (= (+!261 call!18184 (tuple2!3351 key!828 v!309)) lt!88932)))

(declare-fun b!180060 () Bool)

(declare-fun res!85308 () Bool)

(assert (=> b!180060 (=> (not res!85308) (not e!118623))))

(assert (=> b!180060 (= res!85308 (= (getValueByKey!203 (toList!1159 lt!88932) (_1!1685 (tuple2!3351 key!828 v!309))) (Some!208 (_2!1685 (tuple2!3351 key!828 v!309)))))))

(declare-fun b!180061 () Bool)

(declare-fun contains!1229 (List!2309 tuple2!3350) Bool)

(assert (=> b!180061 (= e!118623 (contains!1229 (toList!1159 lt!88932) (tuple2!3351 key!828 v!309)))))

(assert (= (and d!54105 res!85309) b!180060))

(assert (= (and b!180060 res!85308) b!180061))

(declare-fun m!208129 () Bool)

(assert (=> d!54105 m!208129))

(declare-fun m!208131 () Bool)

(assert (=> d!54105 m!208131))

(declare-fun m!208133 () Bool)

(assert (=> d!54105 m!208133))

(declare-fun m!208135 () Bool)

(assert (=> d!54105 m!208135))

(declare-fun m!208137 () Bool)

(assert (=> b!180060 m!208137))

(declare-fun m!208139 () Bool)

(assert (=> b!180061 m!208139))

(assert (=> b!180015 d!54105))

(declare-fun d!54107 () Bool)

(assert (=> d!54107 (= (array_inv!2311 (_keys!5588 thiss!1248)) (bvsge (size!3912 (_keys!5588 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180019 d!54107))

(declare-fun d!54109 () Bool)

(assert (=> d!54109 (= (array_inv!2312 (_values!3680 thiss!1248)) (bvsge (size!3913 (_values!3680 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180019 d!54109))

(declare-fun d!54111 () Bool)

(declare-fun res!85316 () Bool)

(declare-fun e!118626 () Bool)

(assert (=> d!54111 (=> (not res!85316) (not e!118626))))

(declare-fun simpleValid!162 (LongMapFixedSize!2442) Bool)

(assert (=> d!54111 (= res!85316 (simpleValid!162 thiss!1248))))

(assert (=> d!54111 (= (valid!1008 thiss!1248) e!118626)))

(declare-fun b!180068 () Bool)

(declare-fun res!85317 () Bool)

(assert (=> b!180068 (=> (not res!85317) (not e!118626))))

(declare-fun arrayCountValidKeys!0 (array!7610 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!180068 (= res!85317 (= (arrayCountValidKeys!0 (_keys!5588 thiss!1248) #b00000000000000000000000000000000 (size!3912 (_keys!5588 thiss!1248))) (_size!1270 thiss!1248)))))

(declare-fun b!180069 () Bool)

(declare-fun res!85318 () Bool)

(assert (=> b!180069 (=> (not res!85318) (not e!118626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7610 (_ BitVec 32)) Bool)

(assert (=> b!180069 (= res!85318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5588 thiss!1248) (mask!8692 thiss!1248)))))

(declare-fun b!180070 () Bool)

(declare-datatypes ((List!2311 0))(
  ( (Nil!2308) (Cons!2307 (h!2932 (_ BitVec 64)) (t!7167 List!2311)) )
))
(declare-fun arrayNoDuplicates!0 (array!7610 (_ BitVec 32) List!2311) Bool)

(assert (=> b!180070 (= e!118626 (arrayNoDuplicates!0 (_keys!5588 thiss!1248) #b00000000000000000000000000000000 Nil!2308))))

(assert (= (and d!54111 res!85316) b!180068))

(assert (= (and b!180068 res!85317) b!180069))

(assert (= (and b!180069 res!85318) b!180070))

(declare-fun m!208141 () Bool)

(assert (=> d!54111 m!208141))

(declare-fun m!208143 () Bool)

(assert (=> b!180068 m!208143))

(declare-fun m!208145 () Bool)

(assert (=> b!180069 m!208145))

(declare-fun m!208147 () Bool)

(assert (=> b!180070 m!208147))

(assert (=> start!18090 d!54111))

(declare-fun d!54113 () Bool)

(declare-fun e!118632 () Bool)

(assert (=> d!54113 e!118632))

(declare-fun res!85321 () Bool)

(assert (=> d!54113 (=> res!85321 e!118632)))

(declare-fun lt!88943 () Bool)

(assert (=> d!54113 (= res!85321 (not lt!88943))))

(declare-fun lt!88941 () Bool)

(assert (=> d!54113 (= lt!88943 lt!88941)))

(declare-fun lt!88942 () Unit!5477)

(declare-fun e!118631 () Unit!5477)

(assert (=> d!54113 (= lt!88942 e!118631)))

(declare-fun c!32239 () Bool)

(assert (=> d!54113 (= c!32239 lt!88941)))

(declare-fun containsKey!207 (List!2309 (_ BitVec 64)) Bool)

(assert (=> d!54113 (= lt!88941 (containsKey!207 (toList!1159 lt!88910) key!828))))

(assert (=> d!54113 (= (contains!1228 lt!88910 key!828) lt!88943)))

(declare-fun b!180077 () Bool)

(declare-fun lt!88944 () Unit!5477)

(assert (=> b!180077 (= e!118631 lt!88944)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!156 (List!2309 (_ BitVec 64)) Unit!5477)

(assert (=> b!180077 (= lt!88944 (lemmaContainsKeyImpliesGetValueByKeyDefined!156 (toList!1159 lt!88910) key!828))))

(declare-fun isDefined!157 (Option!209) Bool)

(assert (=> b!180077 (isDefined!157 (getValueByKey!203 (toList!1159 lt!88910) key!828))))

(declare-fun b!180078 () Bool)

(declare-fun Unit!5479 () Unit!5477)

(assert (=> b!180078 (= e!118631 Unit!5479)))

(declare-fun b!180079 () Bool)

(assert (=> b!180079 (= e!118632 (isDefined!157 (getValueByKey!203 (toList!1159 lt!88910) key!828)))))

(assert (= (and d!54113 c!32239) b!180077))

(assert (= (and d!54113 (not c!32239)) b!180078))

(assert (= (and d!54113 (not res!85321)) b!180079))

(declare-fun m!208149 () Bool)

(assert (=> d!54113 m!208149))

(declare-fun m!208151 () Bool)

(assert (=> b!180077 m!208151))

(declare-fun m!208153 () Bool)

(assert (=> b!180077 m!208153))

(assert (=> b!180077 m!208153))

(declare-fun m!208155 () Bool)

(assert (=> b!180077 m!208155))

(assert (=> b!180079 m!208153))

(assert (=> b!180079 m!208153))

(assert (=> b!180079 m!208155))

(assert (=> b!180016 d!54113))

(declare-fun d!54115 () Bool)

(declare-fun getCurrentListMap!805 (array!7610 array!7612 (_ BitVec 32) (_ BitVec 32) V!5275 V!5275 (_ BitVec 32) Int) ListLongMap!2287)

(assert (=> d!54115 (= (map!1932 thiss!1248) (getCurrentListMap!805 (_keys!5588 thiss!1248) (_values!3680 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3697 thiss!1248)))))

(declare-fun bs!7368 () Bool)

(assert (= bs!7368 d!54115))

(declare-fun m!208157 () Bool)

(assert (=> bs!7368 m!208157))

(assert (=> bm!18181 d!54115))

(declare-fun d!54117 () Bool)

(declare-fun res!85322 () Bool)

(declare-fun e!118633 () Bool)

(assert (=> d!54117 (=> (not res!85322) (not e!118633))))

(assert (=> d!54117 (= res!85322 (simpleValid!162 (_2!1684 lt!88911)))))

(assert (=> d!54117 (= (valid!1008 (_2!1684 lt!88911)) e!118633)))

(declare-fun b!180080 () Bool)

(declare-fun res!85323 () Bool)

(assert (=> b!180080 (=> (not res!85323) (not e!118633))))

(assert (=> b!180080 (= res!85323 (= (arrayCountValidKeys!0 (_keys!5588 (_2!1684 lt!88911)) #b00000000000000000000000000000000 (size!3912 (_keys!5588 (_2!1684 lt!88911)))) (_size!1270 (_2!1684 lt!88911))))))

(declare-fun b!180081 () Bool)

(declare-fun res!85324 () Bool)

(assert (=> b!180081 (=> (not res!85324) (not e!118633))))

(assert (=> b!180081 (= res!85324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5588 (_2!1684 lt!88911)) (mask!8692 (_2!1684 lt!88911))))))

(declare-fun b!180082 () Bool)

(assert (=> b!180082 (= e!118633 (arrayNoDuplicates!0 (_keys!5588 (_2!1684 lt!88911)) #b00000000000000000000000000000000 Nil!2308))))

(assert (= (and d!54117 res!85322) b!180080))

(assert (= (and b!180080 res!85323) b!180081))

(assert (= (and b!180081 res!85324) b!180082))

(declare-fun m!208159 () Bool)

(assert (=> d!54117 m!208159))

(declare-fun m!208161 () Bool)

(assert (=> b!180080 m!208161))

(declare-fun m!208163 () Bool)

(assert (=> b!180081 m!208163))

(declare-fun m!208165 () Bool)

(assert (=> b!180082 m!208165))

(assert (=> b!180012 d!54117))

(declare-fun b!180117 () Bool)

(declare-fun e!118655 () Bool)

(declare-fun lt!89008 () SeekEntryResult!599)

(assert (=> b!180117 (= e!118655 ((_ is Undefined!599) lt!89008))))

(declare-fun b!180118 () Bool)

(declare-fun res!85343 () Bool)

(declare-fun e!118657 () Bool)

(assert (=> b!180118 (=> (not res!85343) (not e!118657))))

(assert (=> b!180118 (= res!85343 (= (select (arr!3604 (_keys!5588 thiss!1248)) (index!4564 lt!89008)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180119 () Bool)

(declare-fun res!85346 () Bool)

(declare-fun e!118652 () Bool)

(assert (=> b!180119 (=> (not res!85346) (not e!118652))))

(declare-fun lt!89019 () tuple2!3348)

(assert (=> b!180119 (= res!85346 (valid!1008 (_2!1684 lt!89019)))))

(declare-fun b!180120 () Bool)

(declare-fun res!85350 () Bool)

(assert (=> b!180120 (= res!85350 (= (select (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!89008)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!118656 () Bool)

(assert (=> b!180120 (=> (not res!85350) (not e!118656))))

(declare-fun bm!18197 () Bool)

(declare-fun c!32251 () Bool)

(declare-fun c!32249 () Bool)

(declare-fun lt!89017 () SeekEntryResult!599)

(declare-fun call!18200 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!18197 (= call!18200 (inRange!0 (ite c!32249 (index!4565 lt!89017) (ite c!32251 (index!4564 lt!89008) (index!4567 lt!89008))) (mask!8692 thiss!1248)))))

(declare-fun b!180121 () Bool)

(declare-fun call!18201 () Bool)

(assert (=> b!180121 (= e!118656 (not call!18201))))

(declare-fun b!180122 () Bool)

(declare-fun e!118651 () Unit!5477)

(declare-fun Unit!5480 () Unit!5477)

(assert (=> b!180122 (= e!118651 Unit!5480)))

(declare-fun b!180123 () Bool)

(assert (=> b!180123 (= e!118652 (= (map!1932 (_2!1684 lt!89019)) (+!261 (map!1932 thiss!1248) (tuple2!3351 key!828 v!309))))))

(declare-fun b!180124 () Bool)

(assert (=> b!180124 (= e!118655 e!118656)))

(declare-fun res!85348 () Bool)

(declare-fun call!18203 () Bool)

(assert (=> b!180124 (= res!85348 call!18203)))

(assert (=> b!180124 (=> (not res!85348) (not e!118656))))

(declare-fun b!180125 () Bool)

(declare-fun e!118653 () Unit!5477)

(declare-fun lt!89014 () Unit!5477)

(assert (=> b!180125 (= e!118653 lt!89014)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!139 (array!7610 array!7612 (_ BitVec 32) (_ BitVec 32) V!5275 V!5275 (_ BitVec 64) Int) Unit!5477)

(assert (=> b!180125 (= lt!89014 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!139 (_keys!5588 thiss!1248) (_values!3680 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) key!828 (defaultEntry!3697 thiss!1248)))))

(declare-fun call!18202 () SeekEntryResult!599)

(assert (=> b!180125 (= lt!89008 call!18202)))

(assert (=> b!180125 (= c!32251 ((_ is MissingZero!599) lt!89008))))

(declare-fun e!118654 () Bool)

(assert (=> b!180125 e!118654))

(declare-fun bm!18198 () Bool)

(declare-fun arrayContainsKey!0 (array!7610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!18198 (= call!18201 (arrayContainsKey!0 (_keys!5588 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun bm!18199 () Bool)

(assert (=> bm!18199 (= call!18202 (seekEntryOrOpen!0 key!828 (_keys!5588 thiss!1248) (mask!8692 thiss!1248)))))

(declare-fun b!180126 () Bool)

(declare-fun res!85345 () Bool)

(assert (=> b!180126 (=> (not res!85345) (not e!118657))))

(assert (=> b!180126 (= res!85345 call!18203)))

(assert (=> b!180126 (= e!118654 e!118657)))

(declare-fun b!180127 () Bool)

(declare-fun Unit!5481 () Unit!5477)

(assert (=> b!180127 (= e!118651 Unit!5481)))

(declare-fun lt!89029 () Unit!5477)

(declare-fun lemmaArrayContainsKeyThenInListMap!50 (array!7610 array!7612 (_ BitVec 32) (_ BitVec 32) V!5275 V!5275 (_ BitVec 64) (_ BitVec 32) Int) Unit!5477)

(assert (=> b!180127 (= lt!89029 (lemmaArrayContainsKeyThenInListMap!50 (_keys!5588 thiss!1248) (_values!3680 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) key!828 #b00000000000000000000000000000000 (defaultEntry!3697 thiss!1248)))))

(assert (=> b!180127 (contains!1228 (getCurrentListMap!805 (_keys!5588 thiss!1248) (_values!3680 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3697 thiss!1248)) key!828)))

(declare-fun lt!89025 () Unit!5477)

(assert (=> b!180127 (= lt!89025 lt!89029)))

(assert (=> b!180127 false))

(declare-fun b!180128 () Bool)

(assert (=> b!180128 (= e!118657 (not call!18201))))

(declare-fun b!180129 () Bool)

(declare-fun res!85347 () Bool)

(assert (=> b!180129 (=> (not res!85347) (not e!118652))))

(assert (=> b!180129 (= res!85347 (contains!1228 (map!1932 (_2!1684 lt!89019)) key!828))))

(declare-fun d!54119 () Bool)

(assert (=> d!54119 e!118652))

(declare-fun res!85351 () Bool)

(assert (=> d!54119 (=> (not res!85351) (not e!118652))))

(assert (=> d!54119 (= res!85351 (_1!1684 lt!89019))))

(assert (=> d!54119 (= lt!89019 (tuple2!3349 true (LongMapFixedSize!2443 (defaultEntry!3697 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) (bvadd (_size!1270 thiss!1248) #b00000000000000000000000000000001) (array!7611 (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (size!3912 (_keys!5588 thiss!1248))) (array!7613 (store (arr!3605 (_values!3680 thiss!1248)) (index!4567 lt!88909) (ValueCellFull!1767 v!309)) (size!3913 (_values!3680 thiss!1248))) (_vacant!1270 thiss!1248))))))

(declare-fun lt!89028 () Unit!5477)

(declare-fun lt!89026 () Unit!5477)

(assert (=> d!54119 (= lt!89028 lt!89026)))

(declare-fun lt!89013 () array!7612)

(declare-fun lt!89018 () array!7610)

(assert (=> d!54119 (contains!1228 (getCurrentListMap!805 lt!89018 lt!89013 (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3697 thiss!1248)) (select (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (index!4567 lt!88909)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!141 (array!7610 array!7612 (_ BitVec 32) (_ BitVec 32) V!5275 V!5275 (_ BitVec 32) Int) Unit!5477)

(assert (=> d!54119 (= lt!89026 (lemmaValidKeyInArrayIsInListMap!141 lt!89018 lt!89013 (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) (index!4567 lt!88909) (defaultEntry!3697 thiss!1248)))))

(assert (=> d!54119 (= lt!89013 (array!7613 (store (arr!3605 (_values!3680 thiss!1248)) (index!4567 lt!88909) (ValueCellFull!1767 v!309)) (size!3913 (_values!3680 thiss!1248))))))

(assert (=> d!54119 (= lt!89018 (array!7611 (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (size!3912 (_keys!5588 thiss!1248))))))

(declare-fun lt!89012 () Unit!5477)

(declare-fun lt!89023 () Unit!5477)

(assert (=> d!54119 (= lt!89012 lt!89023)))

(declare-fun lt!89020 () array!7610)

(assert (=> d!54119 (= (arrayCountValidKeys!0 lt!89020 (index!4567 lt!88909) (bvadd (index!4567 lt!88909) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!7610 (_ BitVec 32)) Unit!5477)

(assert (=> d!54119 (= lt!89023 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!89020 (index!4567 lt!88909)))))

(assert (=> d!54119 (= lt!89020 (array!7611 (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (size!3912 (_keys!5588 thiss!1248))))))

(declare-fun lt!89010 () Unit!5477)

(declare-fun lt!89031 () Unit!5477)

(assert (=> d!54119 (= lt!89010 lt!89031)))

(declare-fun lt!89024 () array!7610)

(assert (=> d!54119 (arrayContainsKey!0 lt!89024 key!828 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7610 (_ BitVec 64) (_ BitVec 32)) Unit!5477)

(assert (=> d!54119 (= lt!89031 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!89024 key!828 (index!4567 lt!88909)))))

(assert (=> d!54119 (= lt!89024 (array!7611 (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (size!3912 (_keys!5588 thiss!1248))))))

(declare-fun lt!89027 () Unit!5477)

(declare-fun lt!89005 () Unit!5477)

(assert (=> d!54119 (= lt!89027 lt!89005)))

(assert (=> d!54119 (= (+!261 (getCurrentListMap!805 (_keys!5588 thiss!1248) (_values!3680 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3697 thiss!1248)) (tuple2!3351 key!828 v!309)) (getCurrentListMap!805 (array!7611 (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (size!3912 (_keys!5588 thiss!1248))) (array!7613 (store (arr!3605 (_values!3680 thiss!1248)) (index!4567 lt!88909) (ValueCellFull!1767 v!309)) (size!3913 (_values!3680 thiss!1248))) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3697 thiss!1248)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!50 (array!7610 array!7612 (_ BitVec 32) (_ BitVec 32) V!5275 V!5275 (_ BitVec 32) (_ BitVec 64) V!5275 Int) Unit!5477)

(assert (=> d!54119 (= lt!89005 (lemmaAddValidKeyToArrayThenAddPairToListMap!50 (_keys!5588 thiss!1248) (_values!3680 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) (index!4567 lt!88909) key!828 v!309 (defaultEntry!3697 thiss!1248)))))

(declare-fun lt!89021 () Unit!5477)

(declare-fun lt!89011 () Unit!5477)

(assert (=> d!54119 (= lt!89021 lt!89011)))

(assert (=> d!54119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!7611 (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (size!3912 (_keys!5588 thiss!1248))) (mask!8692 thiss!1248))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!7610 (_ BitVec 32) (_ BitVec 32)) Unit!5477)

(assert (=> d!54119 (= lt!89011 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!828 (_keys!5588 thiss!1248) (index!4567 lt!88909) (mask!8692 thiss!1248)))))

(declare-fun lt!89006 () Unit!5477)

(declare-fun lt!89033 () Unit!5477)

(assert (=> d!54119 (= lt!89006 lt!89033)))

(assert (=> d!54119 (= (arrayCountValidKeys!0 (array!7611 (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (size!3912 (_keys!5588 thiss!1248))) #b00000000000000000000000000000000 (size!3912 (_keys!5588 thiss!1248))) (bvadd (arrayCountValidKeys!0 (_keys!5588 thiss!1248) #b00000000000000000000000000000000 (size!3912 (_keys!5588 thiss!1248))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!7610 (_ BitVec 32) (_ BitVec 64)) Unit!5477)

(assert (=> d!54119 (= lt!89033 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!5588 thiss!1248) (index!4567 lt!88909) key!828))))

(declare-fun lt!89009 () Unit!5477)

(declare-fun lt!89007 () Unit!5477)

(assert (=> d!54119 (= lt!89009 lt!89007)))

(declare-fun lt!89015 () List!2311)

(declare-fun lt!89030 () (_ BitVec 32))

(assert (=> d!54119 (arrayNoDuplicates!0 (array!7611 (store (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!88909) key!828) (size!3912 (_keys!5588 thiss!1248))) lt!89030 lt!89015)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!7610 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!2311) Unit!5477)

(assert (=> d!54119 (= lt!89007 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!5588 thiss!1248) key!828 (index!4567 lt!88909) lt!89030 lt!89015))))

(assert (=> d!54119 (= lt!89015 Nil!2308)))

(assert (=> d!54119 (= lt!89030 #b00000000000000000000000000000000)))

(declare-fun lt!89032 () Unit!5477)

(assert (=> d!54119 (= lt!89032 e!118651)))

(declare-fun c!32250 () Bool)

(assert (=> d!54119 (= c!32250 (arrayContainsKey!0 (_keys!5588 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun lt!89022 () Unit!5477)

(assert (=> d!54119 (= lt!89022 e!118653)))

(assert (=> d!54119 (= c!32249 (contains!1228 (getCurrentListMap!805 (_keys!5588 thiss!1248) (_values!3680 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3697 thiss!1248)) key!828))))

(assert (=> d!54119 (valid!1008 thiss!1248)))

(assert (=> d!54119 (= (updateHelperNewKey!90 thiss!1248 key!828 v!309 (index!4567 lt!88909)) lt!89019)))

(declare-fun b!180130 () Bool)

(declare-fun res!85344 () Bool)

(assert (=> b!180130 (= res!85344 call!18200)))

(declare-fun e!118650 () Bool)

(assert (=> b!180130 (=> (not res!85344) (not e!118650))))

(declare-fun b!180131 () Bool)

(declare-fun Unit!5482 () Unit!5477)

(assert (=> b!180131 (= e!118653 Unit!5482)))

(declare-fun lt!89034 () Unit!5477)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!141 (array!7610 array!7612 (_ BitVec 32) (_ BitVec 32) V!5275 V!5275 (_ BitVec 64) Int) Unit!5477)

(assert (=> b!180131 (= lt!89034 (lemmaInListMapThenSeekEntryOrOpenFindsIt!141 (_keys!5588 thiss!1248) (_values!3680 thiss!1248) (mask!8692 thiss!1248) (extraKeys!3434 thiss!1248) (zeroValue!3538 thiss!1248) (minValue!3538 thiss!1248) key!828 (defaultEntry!3697 thiss!1248)))))

(assert (=> b!180131 (= lt!89017 call!18202)))

(declare-fun res!85349 () Bool)

(assert (=> b!180131 (= res!85349 ((_ is Found!599) lt!89017))))

(assert (=> b!180131 (=> (not res!85349) (not e!118650))))

(assert (=> b!180131 e!118650))

(declare-fun lt!89016 () Unit!5477)

(assert (=> b!180131 (= lt!89016 lt!89034)))

(assert (=> b!180131 false))

(declare-fun bm!18200 () Bool)

(assert (=> bm!18200 (= call!18203 call!18200)))

(declare-fun b!180132 () Bool)

(assert (=> b!180132 (= e!118650 (= (select (arr!3604 (_keys!5588 thiss!1248)) (index!4565 lt!89017)) key!828))))

(declare-fun b!180133 () Bool)

(declare-fun c!32248 () Bool)

(assert (=> b!180133 (= c!32248 ((_ is MissingVacant!599) lt!89008))))

(assert (=> b!180133 (= e!118654 e!118655)))

(assert (= (and d!54119 c!32249) b!180131))

(assert (= (and d!54119 (not c!32249)) b!180125))

(assert (= (and b!180131 res!85349) b!180130))

(assert (= (and b!180130 res!85344) b!180132))

(assert (= (and b!180125 c!32251) b!180126))

(assert (= (and b!180125 (not c!32251)) b!180133))

(assert (= (and b!180126 res!85345) b!180118))

(assert (= (and b!180118 res!85343) b!180128))

(assert (= (and b!180133 c!32248) b!180124))

(assert (= (and b!180133 (not c!32248)) b!180117))

(assert (= (and b!180124 res!85348) b!180120))

(assert (= (and b!180120 res!85350) b!180121))

(assert (= (or b!180126 b!180124) bm!18200))

(assert (= (or b!180128 b!180121) bm!18198))

(assert (= (or b!180130 bm!18200) bm!18197))

(assert (= (or b!180131 b!180125) bm!18199))

(assert (= (and d!54119 c!32250) b!180127))

(assert (= (and d!54119 (not c!32250)) b!180122))

(assert (= (and d!54119 res!85351) b!180119))

(assert (= (and b!180119 res!85346) b!180129))

(assert (= (and b!180129 res!85347) b!180123))

(declare-fun m!208167 () Bool)

(assert (=> b!180119 m!208167))

(declare-fun m!208169 () Bool)

(assert (=> bm!18198 m!208169))

(declare-fun m!208171 () Bool)

(assert (=> d!54119 m!208171))

(declare-fun m!208173 () Bool)

(assert (=> d!54119 m!208173))

(declare-fun m!208175 () Bool)

(assert (=> d!54119 m!208175))

(declare-fun m!208177 () Bool)

(assert (=> d!54119 m!208177))

(declare-fun m!208179 () Bool)

(assert (=> d!54119 m!208179))

(declare-fun m!208181 () Bool)

(assert (=> d!54119 m!208181))

(assert (=> d!54119 m!208143))

(declare-fun m!208183 () Bool)

(assert (=> d!54119 m!208183))

(declare-fun m!208185 () Bool)

(assert (=> d!54119 m!208185))

(declare-fun m!208187 () Bool)

(assert (=> d!54119 m!208187))

(declare-fun m!208189 () Bool)

(assert (=> d!54119 m!208189))

(declare-fun m!208191 () Bool)

(assert (=> d!54119 m!208191))

(declare-fun m!208193 () Bool)

(assert (=> d!54119 m!208193))

(assert (=> d!54119 m!208157))

(assert (=> d!54119 m!208169))

(declare-fun m!208195 () Bool)

(assert (=> d!54119 m!208195))

(declare-fun m!208197 () Bool)

(assert (=> d!54119 m!208197))

(assert (=> d!54119 m!208157))

(declare-fun m!208199 () Bool)

(assert (=> d!54119 m!208199))

(assert (=> d!54119 m!208157))

(declare-fun m!208201 () Bool)

(assert (=> d!54119 m!208201))

(assert (=> d!54119 m!208179))

(declare-fun m!208203 () Bool)

(assert (=> d!54119 m!208203))

(assert (=> d!54119 m!208177))

(declare-fun m!208205 () Bool)

(assert (=> d!54119 m!208205))

(declare-fun m!208207 () Bool)

(assert (=> d!54119 m!208207))

(assert (=> d!54119 m!208093))

(declare-fun m!208209 () Bool)

(assert (=> d!54119 m!208209))

(declare-fun m!208211 () Bool)

(assert (=> b!180125 m!208211))

(declare-fun m!208213 () Bool)

(assert (=> b!180118 m!208213))

(declare-fun m!208215 () Bool)

(assert (=> b!180131 m!208215))

(declare-fun m!208217 () Bool)

(assert (=> b!180120 m!208217))

(assert (=> bm!18199 m!208087))

(declare-fun m!208219 () Bool)

(assert (=> b!180127 m!208219))

(assert (=> b!180127 m!208157))

(assert (=> b!180127 m!208157))

(assert (=> b!180127 m!208199))

(declare-fun m!208221 () Bool)

(assert (=> b!180129 m!208221))

(assert (=> b!180129 m!208221))

(declare-fun m!208223 () Bool)

(assert (=> b!180129 m!208223))

(declare-fun m!208225 () Bool)

(assert (=> b!180132 m!208225))

(assert (=> b!180123 m!208221))

(assert (=> b!180123 m!208099))

(assert (=> b!180123 m!208099))

(declare-fun m!208227 () Bool)

(assert (=> b!180123 m!208227))

(declare-fun m!208229 () Bool)

(assert (=> bm!18197 m!208229))

(assert (=> b!180012 d!54119))

(declare-fun d!54121 () Bool)

(assert (=> d!54121 (= (map!1932 (_2!1684 lt!88911)) (getCurrentListMap!805 (_keys!5588 (_2!1684 lt!88911)) (_values!3680 (_2!1684 lt!88911)) (mask!8692 (_2!1684 lt!88911)) (extraKeys!3434 (_2!1684 lt!88911)) (zeroValue!3538 (_2!1684 lt!88911)) (minValue!3538 (_2!1684 lt!88911)) #b00000000000000000000000000000000 (defaultEntry!3697 (_2!1684 lt!88911))))))

(declare-fun bs!7369 () Bool)

(assert (= bs!7369 d!54121))

(declare-fun m!208231 () Bool)

(assert (=> bs!7369 m!208231))

(assert (=> bm!18182 d!54121))

(declare-fun b!180146 () Bool)

(declare-fun e!118665 () SeekEntryResult!599)

(declare-fun lt!89043 () SeekEntryResult!599)

(assert (=> b!180146 (= e!118665 (Found!599 (index!4566 lt!89043)))))

(declare-fun b!180147 () Bool)

(declare-fun e!118666 () SeekEntryResult!599)

(assert (=> b!180147 (= e!118666 e!118665)))

(declare-fun lt!89042 () (_ BitVec 64))

(assert (=> b!180147 (= lt!89042 (select (arr!3604 (_keys!5588 thiss!1248)) (index!4566 lt!89043)))))

(declare-fun c!32259 () Bool)

(assert (=> b!180147 (= c!32259 (= lt!89042 key!828))))

(declare-fun b!180148 () Bool)

(assert (=> b!180148 (= e!118666 Undefined!599)))

(declare-fun b!180149 () Bool)

(declare-fun c!32260 () Bool)

(assert (=> b!180149 (= c!32260 (= lt!89042 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!118664 () SeekEntryResult!599)

(assert (=> b!180149 (= e!118665 e!118664)))

(declare-fun d!54123 () Bool)

(declare-fun lt!89041 () SeekEntryResult!599)

(assert (=> d!54123 (and (or ((_ is Undefined!599) lt!89041) (not ((_ is Found!599) lt!89041)) (and (bvsge (index!4565 lt!89041) #b00000000000000000000000000000000) (bvslt (index!4565 lt!89041) (size!3912 (_keys!5588 thiss!1248))))) (or ((_ is Undefined!599) lt!89041) ((_ is Found!599) lt!89041) (not ((_ is MissingZero!599) lt!89041)) (and (bvsge (index!4564 lt!89041) #b00000000000000000000000000000000) (bvslt (index!4564 lt!89041) (size!3912 (_keys!5588 thiss!1248))))) (or ((_ is Undefined!599) lt!89041) ((_ is Found!599) lt!89041) ((_ is MissingZero!599) lt!89041) (not ((_ is MissingVacant!599) lt!89041)) (and (bvsge (index!4567 lt!89041) #b00000000000000000000000000000000) (bvslt (index!4567 lt!89041) (size!3912 (_keys!5588 thiss!1248))))) (or ((_ is Undefined!599) lt!89041) (ite ((_ is Found!599) lt!89041) (= (select (arr!3604 (_keys!5588 thiss!1248)) (index!4565 lt!89041)) key!828) (ite ((_ is MissingZero!599) lt!89041) (= (select (arr!3604 (_keys!5588 thiss!1248)) (index!4564 lt!89041)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!599) lt!89041) (= (select (arr!3604 (_keys!5588 thiss!1248)) (index!4567 lt!89041)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54123 (= lt!89041 e!118666)))

(declare-fun c!32258 () Bool)

(assert (=> d!54123 (= c!32258 (and ((_ is Intermediate!599) lt!89043) (undefined!1411 lt!89043)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7610 (_ BitVec 32)) SeekEntryResult!599)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54123 (= lt!89043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8692 thiss!1248)) key!828 (_keys!5588 thiss!1248) (mask!8692 thiss!1248)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!54123 (validMask!0 (mask!8692 thiss!1248))))

(assert (=> d!54123 (= (seekEntryOrOpen!0 key!828 (_keys!5588 thiss!1248) (mask!8692 thiss!1248)) lt!89041)))

(declare-fun b!180150 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7610 (_ BitVec 32)) SeekEntryResult!599)

(assert (=> b!180150 (= e!118664 (seekKeyOrZeroReturnVacant!0 (x!19689 lt!89043) (index!4566 lt!89043) (index!4566 lt!89043) key!828 (_keys!5588 thiss!1248) (mask!8692 thiss!1248)))))

(declare-fun b!180151 () Bool)

(assert (=> b!180151 (= e!118664 (MissingZero!599 (index!4566 lt!89043)))))

(assert (= (and d!54123 c!32258) b!180148))

(assert (= (and d!54123 (not c!32258)) b!180147))

(assert (= (and b!180147 c!32259) b!180146))

(assert (= (and b!180147 (not c!32259)) b!180149))

(assert (= (and b!180149 c!32260) b!180151))

(assert (= (and b!180149 (not c!32260)) b!180150))

(declare-fun m!208233 () Bool)

(assert (=> b!180147 m!208233))

(declare-fun m!208235 () Bool)

(assert (=> d!54123 m!208235))

(declare-fun m!208237 () Bool)

(assert (=> d!54123 m!208237))

(declare-fun m!208239 () Bool)

(assert (=> d!54123 m!208239))

(declare-fun m!208241 () Bool)

(assert (=> d!54123 m!208241))

(declare-fun m!208243 () Bool)

(assert (=> d!54123 m!208243))

(declare-fun m!208245 () Bool)

(assert (=> d!54123 m!208245))

(assert (=> d!54123 m!208235))

(declare-fun m!208247 () Bool)

(assert (=> b!180150 m!208247))

(assert (=> b!180020 d!54123))

(declare-fun b!180159 () Bool)

(declare-fun e!118672 () Bool)

(assert (=> b!180159 (= e!118672 tp_is_empty!4221)))

(declare-fun mapIsEmpty!7231 () Bool)

(declare-fun mapRes!7231 () Bool)

(assert (=> mapIsEmpty!7231 mapRes!7231))

(declare-fun condMapEmpty!7231 () Bool)

(declare-fun mapDefault!7231 () ValueCell!1767)

(assert (=> mapNonEmpty!7225 (= condMapEmpty!7231 (= mapRest!7225 ((as const (Array (_ BitVec 32) ValueCell!1767)) mapDefault!7231)))))

(assert (=> mapNonEmpty!7225 (= tp!16078 (and e!118672 mapRes!7231))))

(declare-fun b!180158 () Bool)

(declare-fun e!118671 () Bool)

(assert (=> b!180158 (= e!118671 tp_is_empty!4221)))

(declare-fun mapNonEmpty!7231 () Bool)

(declare-fun tp!16087 () Bool)

(assert (=> mapNonEmpty!7231 (= mapRes!7231 (and tp!16087 e!118671))))

(declare-fun mapRest!7231 () (Array (_ BitVec 32) ValueCell!1767))

(declare-fun mapValue!7231 () ValueCell!1767)

(declare-fun mapKey!7231 () (_ BitVec 32))

(assert (=> mapNonEmpty!7231 (= mapRest!7225 (store mapRest!7231 mapKey!7231 mapValue!7231))))

(assert (= (and mapNonEmpty!7225 condMapEmpty!7231) mapIsEmpty!7231))

(assert (= (and mapNonEmpty!7225 (not condMapEmpty!7231)) mapNonEmpty!7231))

(assert (= (and mapNonEmpty!7231 ((_ is ValueCellFull!1767) mapValue!7231)) b!180158))

(assert (= (and mapNonEmpty!7225 ((_ is ValueCellFull!1767) mapDefault!7231)) b!180159))

(declare-fun m!208249 () Bool)

(assert (=> mapNonEmpty!7231 m!208249))

(check-sat (not b!180069) (not b!180060) (not b!180079) (not b!180131) (not b_next!4449) (not b!180119) (not b!180068) (not d!54111) (not d!54117) (not b!180150) (not d!54123) b_and!11001 (not mapNonEmpty!7231) (not b!180123) (not b!180070) (not b!180077) (not d!54115) (not d!54119) tp_is_empty!4221 (not d!54121) (not b!180081) (not bm!18197) (not bm!18199) (not b!180082) (not d!54105) (not b!180080) (not b!180127) (not d!54113) (not b!180061) (not b!180129) (not b!180125) (not bm!18198))
(check-sat b_and!11001 (not b_next!4449))
