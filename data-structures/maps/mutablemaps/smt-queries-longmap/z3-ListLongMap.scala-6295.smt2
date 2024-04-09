; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80506 () Bool)

(assert start!80506)

(declare-fun b!945118 () Bool)

(declare-fun b_free!18093 () Bool)

(declare-fun b_next!18093 () Bool)

(assert (=> b!945118 (= b_free!18093 (not b_next!18093))))

(declare-fun tp!62793 () Bool)

(declare-fun b_and!29531 () Bool)

(assert (=> b!945118 (= tp!62793 b_and!29531)))

(declare-fun mapNonEmpty!32731 () Bool)

(declare-fun mapRes!32731 () Bool)

(declare-fun tp!62794 () Bool)

(declare-fun e!531593 () Bool)

(assert (=> mapNonEmpty!32731 (= mapRes!32731 (and tp!62794 e!531593))))

(declare-datatypes ((V!32433 0))(
  ( (V!32434 (val!10351 Int)) )
))
(declare-datatypes ((ValueCell!9819 0))(
  ( (ValueCellFull!9819 (v!12884 V!32433)) (EmptyCell!9819) )
))
(declare-fun mapRest!32731 () (Array (_ BitVec 32) ValueCell!9819))

(declare-fun mapValue!32731 () ValueCell!9819)

(declare-fun mapKey!32731 () (_ BitVec 32))

(declare-datatypes ((array!57194 0))(
  ( (array!57195 (arr!27517 (Array (_ BitVec 32) ValueCell!9819)) (size!27985 (_ BitVec 32))) )
))
(declare-datatypes ((array!57196 0))(
  ( (array!57197 (arr!27518 (Array (_ BitVec 32) (_ BitVec 64))) (size!27986 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4788 0))(
  ( (LongMapFixedSize!4789 (defaultEntry!5690 Int) (mask!27348 (_ BitVec 32)) (extraKeys!5422 (_ BitVec 32)) (zeroValue!5526 V!32433) (minValue!5526 V!32433) (_size!2449 (_ BitVec 32)) (_keys!10565 array!57196) (_values!5713 array!57194) (_vacant!2449 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4788)

(assert (=> mapNonEmpty!32731 (= (arr!27517 (_values!5713 thiss!1141)) (store mapRest!32731 mapKey!32731 mapValue!32731))))

(declare-fun b!945115 () Bool)

(declare-fun e!531588 () Bool)

(declare-fun tp_is_empty!20601 () Bool)

(assert (=> b!945115 (= e!531588 tp_is_empty!20601)))

(declare-fun b!945116 () Bool)

(declare-fun e!531589 () Bool)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13604 0))(
  ( (tuple2!13605 (_1!6812 (_ BitVec 64)) (_2!6812 V!32433)) )
))
(declare-datatypes ((List!19417 0))(
  ( (Nil!19414) (Cons!19413 (h!20564 tuple2!13604) (t!27744 List!19417)) )
))
(declare-datatypes ((ListLongMap!12315 0))(
  ( (ListLongMap!12316 (toList!6173 List!19417)) )
))
(declare-fun contains!5197 (ListLongMap!12315 (_ BitVec 64)) Bool)

(declare-fun map!13037 (LongMapFixedSize!4788) ListLongMap!12315)

(assert (=> b!945116 (= e!531589 (not (= (not (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (contains!5197 (map!13037 thiss!1141) key!756))))))

(declare-fun b!945117 () Bool)

(declare-fun e!531590 () Bool)

(assert (=> b!945117 (= e!531590 (and e!531588 mapRes!32731))))

(declare-fun condMapEmpty!32731 () Bool)

(declare-fun mapDefault!32731 () ValueCell!9819)

(assert (=> b!945117 (= condMapEmpty!32731 (= (arr!27517 (_values!5713 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9819)) mapDefault!32731)))))

(declare-fun mapIsEmpty!32731 () Bool)

(assert (=> mapIsEmpty!32731 mapRes!32731))

(declare-fun e!531592 () Bool)

(declare-fun array_inv!21322 (array!57196) Bool)

(declare-fun array_inv!21323 (array!57194) Bool)

(assert (=> b!945118 (= e!531592 (and tp!62793 tp_is_empty!20601 (array_inv!21322 (_keys!10565 thiss!1141)) (array_inv!21323 (_values!5713 thiss!1141)) e!531590))))

(declare-fun res!634923 () Bool)

(assert (=> start!80506 (=> (not res!634923) (not e!531589))))

(declare-fun valid!1805 (LongMapFixedSize!4788) Bool)

(assert (=> start!80506 (= res!634923 (valid!1805 thiss!1141))))

(assert (=> start!80506 e!531589))

(assert (=> start!80506 e!531592))

(assert (=> start!80506 true))

(declare-fun b!945119 () Bool)

(assert (=> b!945119 (= e!531593 tp_is_empty!20601)))

(declare-fun b!945120 () Bool)

(declare-fun res!634924 () Bool)

(assert (=> b!945120 (=> (not res!634924) (not e!531589))))

(assert (=> b!945120 (= res!634924 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!80506 res!634923) b!945120))

(assert (= (and b!945120 res!634924) b!945116))

(assert (= (and b!945117 condMapEmpty!32731) mapIsEmpty!32731))

(assert (= (and b!945117 (not condMapEmpty!32731)) mapNonEmpty!32731))

(get-info :version)

(assert (= (and mapNonEmpty!32731 ((_ is ValueCellFull!9819) mapValue!32731)) b!945119))

(assert (= (and b!945117 ((_ is ValueCellFull!9819) mapDefault!32731)) b!945115))

(assert (= b!945118 b!945117))

(assert (= start!80506 b!945118))

(declare-fun m!879091 () Bool)

(assert (=> mapNonEmpty!32731 m!879091))

(declare-fun m!879093 () Bool)

(assert (=> b!945116 m!879093))

(assert (=> b!945116 m!879093))

(declare-fun m!879095 () Bool)

(assert (=> b!945116 m!879095))

(declare-fun m!879097 () Bool)

(assert (=> b!945118 m!879097))

(declare-fun m!879099 () Bool)

(assert (=> b!945118 m!879099))

(declare-fun m!879101 () Bool)

(assert (=> start!80506 m!879101))

(check-sat (not start!80506) (not b_next!18093) b_and!29531 (not b!945118) tp_is_empty!20601 (not b!945116) (not mapNonEmpty!32731))
(check-sat b_and!29531 (not b_next!18093))
(get-model)

(declare-fun d!114297 () Bool)

(assert (=> d!114297 (= (array_inv!21322 (_keys!10565 thiss!1141)) (bvsge (size!27986 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945118 d!114297))

(declare-fun d!114299 () Bool)

(assert (=> d!114299 (= (array_inv!21323 (_values!5713 thiss!1141)) (bvsge (size!27985 (_values!5713 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945118 d!114299))

(declare-fun d!114301 () Bool)

(declare-fun res!634937 () Bool)

(declare-fun e!531614 () Bool)

(assert (=> d!114301 (=> (not res!634937) (not e!531614))))

(declare-fun simpleValid!349 (LongMapFixedSize!4788) Bool)

(assert (=> d!114301 (= res!634937 (simpleValid!349 thiss!1141))))

(assert (=> d!114301 (= (valid!1805 thiss!1141) e!531614)))

(declare-fun b!945145 () Bool)

(declare-fun res!634938 () Bool)

(assert (=> b!945145 (=> (not res!634938) (not e!531614))))

(declare-fun arrayCountValidKeys!0 (array!57196 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!945145 (= res!634938 (= (arrayCountValidKeys!0 (_keys!10565 thiss!1141) #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))) (_size!2449 thiss!1141)))))

(declare-fun b!945146 () Bool)

(declare-fun res!634939 () Bool)

(assert (=> b!945146 (=> (not res!634939) (not e!531614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57196 (_ BitVec 32)) Bool)

(assert (=> b!945146 (= res!634939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10565 thiss!1141) (mask!27348 thiss!1141)))))

(declare-fun b!945147 () Bool)

(declare-datatypes ((List!19419 0))(
  ( (Nil!19416) (Cons!19415 (h!20566 (_ BitVec 64)) (t!27746 List!19419)) )
))
(declare-fun arrayNoDuplicates!0 (array!57196 (_ BitVec 32) List!19419) Bool)

(assert (=> b!945147 (= e!531614 (arrayNoDuplicates!0 (_keys!10565 thiss!1141) #b00000000000000000000000000000000 Nil!19416))))

(assert (= (and d!114301 res!634937) b!945145))

(assert (= (and b!945145 res!634938) b!945146))

(assert (= (and b!945146 res!634939) b!945147))

(declare-fun m!879115 () Bool)

(assert (=> d!114301 m!879115))

(declare-fun m!879117 () Bool)

(assert (=> b!945145 m!879117))

(declare-fun m!879119 () Bool)

(assert (=> b!945146 m!879119))

(declare-fun m!879121 () Bool)

(assert (=> b!945147 m!879121))

(assert (=> start!80506 d!114301))

(declare-fun d!114303 () Bool)

(declare-fun e!531619 () Bool)

(assert (=> d!114303 e!531619))

(declare-fun res!634942 () Bool)

(assert (=> d!114303 (=> res!634942 e!531619)))

(declare-fun lt!425887 () Bool)

(assert (=> d!114303 (= res!634942 (not lt!425887))))

(declare-fun lt!425885 () Bool)

(assert (=> d!114303 (= lt!425887 lt!425885)))

(declare-datatypes ((Unit!31885 0))(
  ( (Unit!31886) )
))
(declare-fun lt!425886 () Unit!31885)

(declare-fun e!531620 () Unit!31885)

(assert (=> d!114303 (= lt!425886 e!531620)))

(declare-fun c!98302 () Bool)

(assert (=> d!114303 (= c!98302 lt!425885)))

(declare-fun containsKey!455 (List!19417 (_ BitVec 64)) Bool)

(assert (=> d!114303 (= lt!425885 (containsKey!455 (toList!6173 (map!13037 thiss!1141)) key!756))))

(assert (=> d!114303 (= (contains!5197 (map!13037 thiss!1141) key!756) lt!425887)))

(declare-fun b!945154 () Bool)

(declare-fun lt!425888 () Unit!31885)

(assert (=> b!945154 (= e!531620 lt!425888)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!350 (List!19417 (_ BitVec 64)) Unit!31885)

(assert (=> b!945154 (= lt!425888 (lemmaContainsKeyImpliesGetValueByKeyDefined!350 (toList!6173 (map!13037 thiss!1141)) key!756))))

(declare-datatypes ((Option!496 0))(
  ( (Some!495 (v!12886 V!32433)) (None!494) )
))
(declare-fun isDefined!360 (Option!496) Bool)

(declare-fun getValueByKey!490 (List!19417 (_ BitVec 64)) Option!496)

(assert (=> b!945154 (isDefined!360 (getValueByKey!490 (toList!6173 (map!13037 thiss!1141)) key!756))))

(declare-fun b!945155 () Bool)

(declare-fun Unit!31887 () Unit!31885)

(assert (=> b!945155 (= e!531620 Unit!31887)))

(declare-fun b!945156 () Bool)

(assert (=> b!945156 (= e!531619 (isDefined!360 (getValueByKey!490 (toList!6173 (map!13037 thiss!1141)) key!756)))))

(assert (= (and d!114303 c!98302) b!945154))

(assert (= (and d!114303 (not c!98302)) b!945155))

(assert (= (and d!114303 (not res!634942)) b!945156))

(declare-fun m!879123 () Bool)

(assert (=> d!114303 m!879123))

(declare-fun m!879125 () Bool)

(assert (=> b!945154 m!879125))

(declare-fun m!879127 () Bool)

(assert (=> b!945154 m!879127))

(assert (=> b!945154 m!879127))

(declare-fun m!879129 () Bool)

(assert (=> b!945154 m!879129))

(assert (=> b!945156 m!879127))

(assert (=> b!945156 m!879127))

(assert (=> b!945156 m!879129))

(assert (=> b!945116 d!114303))

(declare-fun d!114305 () Bool)

(declare-fun getCurrentListMap!3359 (array!57196 array!57194 (_ BitVec 32) (_ BitVec 32) V!32433 V!32433 (_ BitVec 32) Int) ListLongMap!12315)

(assert (=> d!114305 (= (map!13037 thiss!1141) (getCurrentListMap!3359 (_keys!10565 thiss!1141) (_values!5713 thiss!1141) (mask!27348 thiss!1141) (extraKeys!5422 thiss!1141) (zeroValue!5526 thiss!1141) (minValue!5526 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5690 thiss!1141)))))

(declare-fun bs!26567 () Bool)

(assert (= bs!26567 d!114305))

(declare-fun m!879131 () Bool)

(assert (=> bs!26567 m!879131))

(assert (=> b!945116 d!114305))

(declare-fun mapNonEmpty!32737 () Bool)

(declare-fun mapRes!32737 () Bool)

(declare-fun tp!62803 () Bool)

(declare-fun e!531626 () Bool)

(assert (=> mapNonEmpty!32737 (= mapRes!32737 (and tp!62803 e!531626))))

(declare-fun mapRest!32737 () (Array (_ BitVec 32) ValueCell!9819))

(declare-fun mapKey!32737 () (_ BitVec 32))

(declare-fun mapValue!32737 () ValueCell!9819)

(assert (=> mapNonEmpty!32737 (= mapRest!32731 (store mapRest!32737 mapKey!32737 mapValue!32737))))

(declare-fun condMapEmpty!32737 () Bool)

(declare-fun mapDefault!32737 () ValueCell!9819)

(assert (=> mapNonEmpty!32731 (= condMapEmpty!32737 (= mapRest!32731 ((as const (Array (_ BitVec 32) ValueCell!9819)) mapDefault!32737)))))

(declare-fun e!531625 () Bool)

(assert (=> mapNonEmpty!32731 (= tp!62794 (and e!531625 mapRes!32737))))

(declare-fun mapIsEmpty!32737 () Bool)

(assert (=> mapIsEmpty!32737 mapRes!32737))

(declare-fun b!945164 () Bool)

(assert (=> b!945164 (= e!531625 tp_is_empty!20601)))

(declare-fun b!945163 () Bool)

(assert (=> b!945163 (= e!531626 tp_is_empty!20601)))

(assert (= (and mapNonEmpty!32731 condMapEmpty!32737) mapIsEmpty!32737))

(assert (= (and mapNonEmpty!32731 (not condMapEmpty!32737)) mapNonEmpty!32737))

(assert (= (and mapNonEmpty!32737 ((_ is ValueCellFull!9819) mapValue!32737)) b!945163))

(assert (= (and mapNonEmpty!32731 ((_ is ValueCellFull!9819) mapDefault!32737)) b!945164))

(declare-fun m!879133 () Bool)

(assert (=> mapNonEmpty!32737 m!879133))

(check-sat (not b_next!18093) (not b!945154) (not d!114303) (not mapNonEmpty!32737) (not d!114305) (not b!945146) (not b!945145) b_and!29531 (not b!945147) (not d!114301) tp_is_empty!20601 (not b!945156))
(check-sat b_and!29531 (not b_next!18093))
(get-model)

(declare-fun b!945175 () Bool)

(declare-fun e!531635 () Bool)

(declare-fun call!41031 () Bool)

(assert (=> b!945175 (= e!531635 call!41031)))

(declare-fun b!945176 () Bool)

(declare-fun e!531636 () Bool)

(declare-fun contains!5199 (List!19419 (_ BitVec 64)) Bool)

(assert (=> b!945176 (= e!531636 (contains!5199 Nil!19416 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945177 () Bool)

(assert (=> b!945177 (= e!531635 call!41031)))

(declare-fun bm!41028 () Bool)

(declare-fun c!98305 () Bool)

(assert (=> bm!41028 (= call!41031 (arrayNoDuplicates!0 (_keys!10565 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98305 (Cons!19415 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000) Nil!19416) Nil!19416)))))

(declare-fun d!114307 () Bool)

(declare-fun res!634949 () Bool)

(declare-fun e!531638 () Bool)

(assert (=> d!114307 (=> res!634949 e!531638)))

(assert (=> d!114307 (= res!634949 (bvsge #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))))))

(assert (=> d!114307 (= (arrayNoDuplicates!0 (_keys!10565 thiss!1141) #b00000000000000000000000000000000 Nil!19416) e!531638)))

(declare-fun b!945178 () Bool)

(declare-fun e!531637 () Bool)

(assert (=> b!945178 (= e!531637 e!531635)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!945178 (= c!98305 (validKeyInArray!0 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945179 () Bool)

(assert (=> b!945179 (= e!531638 e!531637)))

(declare-fun res!634951 () Bool)

(assert (=> b!945179 (=> (not res!634951) (not e!531637))))

(assert (=> b!945179 (= res!634951 (not e!531636))))

(declare-fun res!634950 () Bool)

(assert (=> b!945179 (=> (not res!634950) (not e!531636))))

(assert (=> b!945179 (= res!634950 (validKeyInArray!0 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114307 (not res!634949)) b!945179))

(assert (= (and b!945179 res!634950) b!945176))

(assert (= (and b!945179 res!634951) b!945178))

(assert (= (and b!945178 c!98305) b!945177))

(assert (= (and b!945178 (not c!98305)) b!945175))

(assert (= (or b!945177 b!945175) bm!41028))

(declare-fun m!879135 () Bool)

(assert (=> b!945176 m!879135))

(assert (=> b!945176 m!879135))

(declare-fun m!879137 () Bool)

(assert (=> b!945176 m!879137))

(assert (=> bm!41028 m!879135))

(declare-fun m!879139 () Bool)

(assert (=> bm!41028 m!879139))

(assert (=> b!945178 m!879135))

(assert (=> b!945178 m!879135))

(declare-fun m!879141 () Bool)

(assert (=> b!945178 m!879141))

(assert (=> b!945179 m!879135))

(assert (=> b!945179 m!879135))

(assert (=> b!945179 m!879141))

(assert (=> b!945147 d!114307))

(declare-fun d!114309 () Bool)

(declare-fun res!634956 () Bool)

(declare-fun e!531643 () Bool)

(assert (=> d!114309 (=> res!634956 e!531643)))

(assert (=> d!114309 (= res!634956 (and ((_ is Cons!19413) (toList!6173 (map!13037 thiss!1141))) (= (_1!6812 (h!20564 (toList!6173 (map!13037 thiss!1141)))) key!756)))))

(assert (=> d!114309 (= (containsKey!455 (toList!6173 (map!13037 thiss!1141)) key!756) e!531643)))

(declare-fun b!945184 () Bool)

(declare-fun e!531644 () Bool)

(assert (=> b!945184 (= e!531643 e!531644)))

(declare-fun res!634957 () Bool)

(assert (=> b!945184 (=> (not res!634957) (not e!531644))))

(assert (=> b!945184 (= res!634957 (and (or (not ((_ is Cons!19413) (toList!6173 (map!13037 thiss!1141)))) (bvsle (_1!6812 (h!20564 (toList!6173 (map!13037 thiss!1141)))) key!756)) ((_ is Cons!19413) (toList!6173 (map!13037 thiss!1141))) (bvslt (_1!6812 (h!20564 (toList!6173 (map!13037 thiss!1141)))) key!756)))))

(declare-fun b!945185 () Bool)

(assert (=> b!945185 (= e!531644 (containsKey!455 (t!27744 (toList!6173 (map!13037 thiss!1141))) key!756))))

(assert (= (and d!114309 (not res!634956)) b!945184))

(assert (= (and b!945184 res!634957) b!945185))

(declare-fun m!879143 () Bool)

(assert (=> b!945185 m!879143))

(assert (=> d!114303 d!114309))

(declare-fun d!114311 () Bool)

(declare-fun isEmpty!708 (Option!496) Bool)

(assert (=> d!114311 (= (isDefined!360 (getValueByKey!490 (toList!6173 (map!13037 thiss!1141)) key!756)) (not (isEmpty!708 (getValueByKey!490 (toList!6173 (map!13037 thiss!1141)) key!756))))))

(declare-fun bs!26568 () Bool)

(assert (= bs!26568 d!114311))

(assert (=> bs!26568 m!879127))

(declare-fun m!879145 () Bool)

(assert (=> bs!26568 m!879145))

(assert (=> b!945156 d!114311))

(declare-fun b!945195 () Bool)

(declare-fun e!531649 () Option!496)

(declare-fun e!531650 () Option!496)

(assert (=> b!945195 (= e!531649 e!531650)))

(declare-fun c!98311 () Bool)

(assert (=> b!945195 (= c!98311 (and ((_ is Cons!19413) (toList!6173 (map!13037 thiss!1141))) (not (= (_1!6812 (h!20564 (toList!6173 (map!13037 thiss!1141)))) key!756))))))

(declare-fun b!945194 () Bool)

(assert (=> b!945194 (= e!531649 (Some!495 (_2!6812 (h!20564 (toList!6173 (map!13037 thiss!1141))))))))

(declare-fun b!945196 () Bool)

(assert (=> b!945196 (= e!531650 (getValueByKey!490 (t!27744 (toList!6173 (map!13037 thiss!1141))) key!756))))

(declare-fun d!114313 () Bool)

(declare-fun c!98310 () Bool)

(assert (=> d!114313 (= c!98310 (and ((_ is Cons!19413) (toList!6173 (map!13037 thiss!1141))) (= (_1!6812 (h!20564 (toList!6173 (map!13037 thiss!1141)))) key!756)))))

(assert (=> d!114313 (= (getValueByKey!490 (toList!6173 (map!13037 thiss!1141)) key!756) e!531649)))

(declare-fun b!945197 () Bool)

(assert (=> b!945197 (= e!531650 None!494)))

(assert (= (and d!114313 c!98310) b!945194))

(assert (= (and d!114313 (not c!98310)) b!945195))

(assert (= (and b!945195 c!98311) b!945196))

(assert (= (and b!945195 (not c!98311)) b!945197))

(declare-fun m!879147 () Bool)

(assert (=> b!945196 m!879147))

(assert (=> b!945156 d!114313))

(declare-fun d!114315 () Bool)

(declare-fun res!634963 () Bool)

(declare-fun e!531659 () Bool)

(assert (=> d!114315 (=> res!634963 e!531659)))

(assert (=> d!114315 (= res!634963 (bvsge #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))))))

(assert (=> d!114315 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10565 thiss!1141) (mask!27348 thiss!1141)) e!531659)))

(declare-fun b!945206 () Bool)

(declare-fun e!531657 () Bool)

(assert (=> b!945206 (= e!531659 e!531657)))

(declare-fun c!98314 () Bool)

(assert (=> b!945206 (= c!98314 (validKeyInArray!0 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945207 () Bool)

(declare-fun e!531658 () Bool)

(assert (=> b!945207 (= e!531657 e!531658)))

(declare-fun lt!425895 () (_ BitVec 64))

(assert (=> b!945207 (= lt!425895 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425896 () Unit!31885)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57196 (_ BitVec 64) (_ BitVec 32)) Unit!31885)

(assert (=> b!945207 (= lt!425896 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10565 thiss!1141) lt!425895 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!945207 (arrayContainsKey!0 (_keys!10565 thiss!1141) lt!425895 #b00000000000000000000000000000000)))

(declare-fun lt!425897 () Unit!31885)

(assert (=> b!945207 (= lt!425897 lt!425896)))

(declare-fun res!634962 () Bool)

(declare-datatypes ((SeekEntryResult!9076 0))(
  ( (MissingZero!9076 (index!38674 (_ BitVec 32))) (Found!9076 (index!38675 (_ BitVec 32))) (Intermediate!9076 (undefined!9888 Bool) (index!38676 (_ BitVec 32)) (x!81208 (_ BitVec 32))) (Undefined!9076) (MissingVacant!9076 (index!38677 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57196 (_ BitVec 32)) SeekEntryResult!9076)

(assert (=> b!945207 (= res!634962 (= (seekEntryOrOpen!0 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000) (_keys!10565 thiss!1141) (mask!27348 thiss!1141)) (Found!9076 #b00000000000000000000000000000000)))))

(assert (=> b!945207 (=> (not res!634962) (not e!531658))))

(declare-fun bm!41031 () Bool)

(declare-fun call!41034 () Bool)

(assert (=> bm!41031 (= call!41034 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10565 thiss!1141) (mask!27348 thiss!1141)))))

(declare-fun b!945208 () Bool)

(assert (=> b!945208 (= e!531657 call!41034)))

(declare-fun b!945209 () Bool)

(assert (=> b!945209 (= e!531658 call!41034)))

(assert (= (and d!114315 (not res!634963)) b!945206))

(assert (= (and b!945206 c!98314) b!945207))

(assert (= (and b!945206 (not c!98314)) b!945208))

(assert (= (and b!945207 res!634962) b!945209))

(assert (= (or b!945209 b!945208) bm!41031))

(assert (=> b!945206 m!879135))

(assert (=> b!945206 m!879135))

(assert (=> b!945206 m!879141))

(assert (=> b!945207 m!879135))

(declare-fun m!879149 () Bool)

(assert (=> b!945207 m!879149))

(declare-fun m!879151 () Bool)

(assert (=> b!945207 m!879151))

(assert (=> b!945207 m!879135))

(declare-fun m!879153 () Bool)

(assert (=> b!945207 m!879153))

(declare-fun m!879155 () Bool)

(assert (=> bm!41031 m!879155))

(assert (=> b!945146 d!114315))

(declare-fun b!945252 () Bool)

(declare-fun e!531693 () ListLongMap!12315)

(declare-fun call!41055 () ListLongMap!12315)

(assert (=> b!945252 (= e!531693 call!41055)))

(declare-fun b!945253 () Bool)

(declare-fun e!531691 () Bool)

(declare-fun lt!425960 () ListLongMap!12315)

(declare-fun apply!903 (ListLongMap!12315 (_ BitVec 64)) V!32433)

(declare-fun get!14484 (ValueCell!9819 V!32433) V!32433)

(declare-fun dynLambda!1656 (Int (_ BitVec 64)) V!32433)

(assert (=> b!945253 (= e!531691 (= (apply!903 lt!425960 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)) (get!14484 (select (arr!27517 (_values!5713 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1656 (defaultEntry!5690 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!945253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27985 (_values!5713 thiss!1141))))))

(assert (=> b!945253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))))))

(declare-fun b!945254 () Bool)

(declare-fun e!531696 () Bool)

(declare-fun e!531687 () Bool)

(assert (=> b!945254 (= e!531696 e!531687)))

(declare-fun c!98332 () Bool)

(assert (=> b!945254 (= c!98332 (not (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!945255 () Bool)

(declare-fun e!531689 () Bool)

(assert (=> b!945255 (= e!531687 e!531689)))

(declare-fun res!634987 () Bool)

(declare-fun call!41050 () Bool)

(assert (=> b!945255 (= res!634987 call!41050)))

(assert (=> b!945255 (=> (not res!634987) (not e!531689))))

(declare-fun b!945256 () Bool)

(declare-fun res!634985 () Bool)

(assert (=> b!945256 (=> (not res!634985) (not e!531696))))

(declare-fun e!531695 () Bool)

(assert (=> b!945256 (= res!634985 e!531695)))

(declare-fun res!634983 () Bool)

(assert (=> b!945256 (=> res!634983 e!531695)))

(declare-fun e!531697 () Bool)

(assert (=> b!945256 (= res!634983 (not e!531697))))

(declare-fun res!634986 () Bool)

(assert (=> b!945256 (=> (not res!634986) (not e!531697))))

(assert (=> b!945256 (= res!634986 (bvslt #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))))))

(declare-fun bm!41046 () Bool)

(declare-fun call!41054 () ListLongMap!12315)

(declare-fun getCurrentListMapNoExtraKeys!3323 (array!57196 array!57194 (_ BitVec 32) (_ BitVec 32) V!32433 V!32433 (_ BitVec 32) Int) ListLongMap!12315)

(assert (=> bm!41046 (= call!41054 (getCurrentListMapNoExtraKeys!3323 (_keys!10565 thiss!1141) (_values!5713 thiss!1141) (mask!27348 thiss!1141) (extraKeys!5422 thiss!1141) (zeroValue!5526 thiss!1141) (minValue!5526 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5690 thiss!1141)))))

(declare-fun b!945257 () Bool)

(declare-fun e!531694 () Unit!31885)

(declare-fun lt!425950 () Unit!31885)

(assert (=> b!945257 (= e!531694 lt!425950)))

(declare-fun lt!425953 () ListLongMap!12315)

(assert (=> b!945257 (= lt!425953 (getCurrentListMapNoExtraKeys!3323 (_keys!10565 thiss!1141) (_values!5713 thiss!1141) (mask!27348 thiss!1141) (extraKeys!5422 thiss!1141) (zeroValue!5526 thiss!1141) (minValue!5526 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5690 thiss!1141)))))

(declare-fun lt!425943 () (_ BitVec 64))

(assert (=> b!945257 (= lt!425943 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425942 () (_ BitVec 64))

(assert (=> b!945257 (= lt!425942 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425961 () Unit!31885)

(declare-fun addStillContains!573 (ListLongMap!12315 (_ BitVec 64) V!32433 (_ BitVec 64)) Unit!31885)

(assert (=> b!945257 (= lt!425961 (addStillContains!573 lt!425953 lt!425943 (zeroValue!5526 thiss!1141) lt!425942))))

(declare-fun +!2817 (ListLongMap!12315 tuple2!13604) ListLongMap!12315)

(assert (=> b!945257 (contains!5197 (+!2817 lt!425953 (tuple2!13605 lt!425943 (zeroValue!5526 thiss!1141))) lt!425942)))

(declare-fun lt!425963 () Unit!31885)

(assert (=> b!945257 (= lt!425963 lt!425961)))

(declare-fun lt!425946 () ListLongMap!12315)

(assert (=> b!945257 (= lt!425946 (getCurrentListMapNoExtraKeys!3323 (_keys!10565 thiss!1141) (_values!5713 thiss!1141) (mask!27348 thiss!1141) (extraKeys!5422 thiss!1141) (zeroValue!5526 thiss!1141) (minValue!5526 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5690 thiss!1141)))))

(declare-fun lt!425957 () (_ BitVec 64))

(assert (=> b!945257 (= lt!425957 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425948 () (_ BitVec 64))

(assert (=> b!945257 (= lt!425948 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425949 () Unit!31885)

(declare-fun addApplyDifferent!447 (ListLongMap!12315 (_ BitVec 64) V!32433 (_ BitVec 64)) Unit!31885)

(assert (=> b!945257 (= lt!425949 (addApplyDifferent!447 lt!425946 lt!425957 (minValue!5526 thiss!1141) lt!425948))))

(assert (=> b!945257 (= (apply!903 (+!2817 lt!425946 (tuple2!13605 lt!425957 (minValue!5526 thiss!1141))) lt!425948) (apply!903 lt!425946 lt!425948))))

(declare-fun lt!425947 () Unit!31885)

(assert (=> b!945257 (= lt!425947 lt!425949)))

(declare-fun lt!425954 () ListLongMap!12315)

(assert (=> b!945257 (= lt!425954 (getCurrentListMapNoExtraKeys!3323 (_keys!10565 thiss!1141) (_values!5713 thiss!1141) (mask!27348 thiss!1141) (extraKeys!5422 thiss!1141) (zeroValue!5526 thiss!1141) (minValue!5526 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5690 thiss!1141)))))

(declare-fun lt!425962 () (_ BitVec 64))

(assert (=> b!945257 (= lt!425962 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425952 () (_ BitVec 64))

(assert (=> b!945257 (= lt!425952 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425958 () Unit!31885)

(assert (=> b!945257 (= lt!425958 (addApplyDifferent!447 lt!425954 lt!425962 (zeroValue!5526 thiss!1141) lt!425952))))

(assert (=> b!945257 (= (apply!903 (+!2817 lt!425954 (tuple2!13605 lt!425962 (zeroValue!5526 thiss!1141))) lt!425952) (apply!903 lt!425954 lt!425952))))

(declare-fun lt!425956 () Unit!31885)

(assert (=> b!945257 (= lt!425956 lt!425958)))

(declare-fun lt!425959 () ListLongMap!12315)

(assert (=> b!945257 (= lt!425959 (getCurrentListMapNoExtraKeys!3323 (_keys!10565 thiss!1141) (_values!5713 thiss!1141) (mask!27348 thiss!1141) (extraKeys!5422 thiss!1141) (zeroValue!5526 thiss!1141) (minValue!5526 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5690 thiss!1141)))))

(declare-fun lt!425955 () (_ BitVec 64))

(assert (=> b!945257 (= lt!425955 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425951 () (_ BitVec 64))

(assert (=> b!945257 (= lt!425951 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945257 (= lt!425950 (addApplyDifferent!447 lt!425959 lt!425955 (minValue!5526 thiss!1141) lt!425951))))

(assert (=> b!945257 (= (apply!903 (+!2817 lt!425959 (tuple2!13605 lt!425955 (minValue!5526 thiss!1141))) lt!425951) (apply!903 lt!425959 lt!425951))))

(declare-fun d!114317 () Bool)

(assert (=> d!114317 e!531696))

(declare-fun res!634984 () Bool)

(assert (=> d!114317 (=> (not res!634984) (not e!531696))))

(assert (=> d!114317 (= res!634984 (or (bvsge #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))))))))

(declare-fun lt!425944 () ListLongMap!12315)

(assert (=> d!114317 (= lt!425960 lt!425944)))

(declare-fun lt!425945 () Unit!31885)

(assert (=> d!114317 (= lt!425945 e!531694)))

(declare-fun c!98331 () Bool)

(declare-fun e!531688 () Bool)

(assert (=> d!114317 (= c!98331 e!531688)))

(declare-fun res!634982 () Bool)

(assert (=> d!114317 (=> (not res!634982) (not e!531688))))

(assert (=> d!114317 (= res!634982 (bvslt #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))))))

(declare-fun e!531686 () ListLongMap!12315)

(assert (=> d!114317 (= lt!425944 e!531686)))

(declare-fun c!98328 () Bool)

(assert (=> d!114317 (= c!98328 (and (not (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!114317 (validMask!0 (mask!27348 thiss!1141))))

(assert (=> d!114317 (= (getCurrentListMap!3359 (_keys!10565 thiss!1141) (_values!5713 thiss!1141) (mask!27348 thiss!1141) (extraKeys!5422 thiss!1141) (zeroValue!5526 thiss!1141) (minValue!5526 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5690 thiss!1141)) lt!425960)))

(declare-fun c!98330 () Bool)

(declare-fun call!41052 () ListLongMap!12315)

(declare-fun call!41051 () ListLongMap!12315)

(declare-fun bm!41047 () Bool)

(declare-fun call!41053 () ListLongMap!12315)

(assert (=> bm!41047 (= call!41053 (+!2817 (ite c!98328 call!41054 (ite c!98330 call!41051 call!41052)) (ite (or c!98328 c!98330) (tuple2!13605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5526 thiss!1141)) (tuple2!13605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5526 thiss!1141)))))))

(declare-fun b!945258 () Bool)

(declare-fun e!531690 () Bool)

(assert (=> b!945258 (= e!531690 (= (apply!903 lt!425960 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5526 thiss!1141)))))

(declare-fun bm!41048 () Bool)

(declare-fun call!41049 () Bool)

(assert (=> bm!41048 (= call!41049 (contains!5197 lt!425960 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!945259 () Bool)

(assert (=> b!945259 (= e!531693 call!41052)))

(declare-fun bm!41049 () Bool)

(assert (=> bm!41049 (= call!41052 call!41051)))

(declare-fun b!945260 () Bool)

(assert (=> b!945260 (= e!531697 (validKeyInArray!0 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945261 () Bool)

(assert (=> b!945261 (= e!531686 (+!2817 call!41053 (tuple2!13605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5526 thiss!1141))))))

(declare-fun b!945262 () Bool)

(declare-fun e!531698 () ListLongMap!12315)

(assert (=> b!945262 (= e!531698 call!41055)))

(declare-fun b!945263 () Bool)

(assert (=> b!945263 (= e!531689 (= (apply!903 lt!425960 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5526 thiss!1141)))))

(declare-fun bm!41050 () Bool)

(assert (=> bm!41050 (= call!41050 (contains!5197 lt!425960 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!945264 () Bool)

(declare-fun e!531692 () Bool)

(assert (=> b!945264 (= e!531692 (not call!41049))))

(declare-fun bm!41051 () Bool)

(assert (=> bm!41051 (= call!41051 call!41054)))

(declare-fun b!945265 () Bool)

(declare-fun res!634988 () Bool)

(assert (=> b!945265 (=> (not res!634988) (not e!531696))))

(assert (=> b!945265 (= res!634988 e!531692)))

(declare-fun c!98327 () Bool)

(assert (=> b!945265 (= c!98327 (not (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!945266 () Bool)

(assert (=> b!945266 (= e!531687 (not call!41050))))

(declare-fun b!945267 () Bool)

(assert (=> b!945267 (= e!531695 e!531691)))

(declare-fun res!634989 () Bool)

(assert (=> b!945267 (=> (not res!634989) (not e!531691))))

(assert (=> b!945267 (= res!634989 (contains!5197 lt!425960 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!945267 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))))))

(declare-fun b!945268 () Bool)

(assert (=> b!945268 (= e!531686 e!531698)))

(assert (=> b!945268 (= c!98330 (and (not (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!945269 () Bool)

(declare-fun c!98329 () Bool)

(assert (=> b!945269 (= c!98329 (and (not (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5422 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!945269 (= e!531698 e!531693)))

(declare-fun b!945270 () Bool)

(assert (=> b!945270 (= e!531692 e!531690)))

(declare-fun res!634990 () Bool)

(assert (=> b!945270 (= res!634990 call!41049)))

(assert (=> b!945270 (=> (not res!634990) (not e!531690))))

(declare-fun b!945271 () Bool)

(declare-fun Unit!31888 () Unit!31885)

(assert (=> b!945271 (= e!531694 Unit!31888)))

(declare-fun bm!41052 () Bool)

(assert (=> bm!41052 (= call!41055 call!41053)))

(declare-fun b!945272 () Bool)

(assert (=> b!945272 (= e!531688 (validKeyInArray!0 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114317 c!98328) b!945261))

(assert (= (and d!114317 (not c!98328)) b!945268))

(assert (= (and b!945268 c!98330) b!945262))

(assert (= (and b!945268 (not c!98330)) b!945269))

(assert (= (and b!945269 c!98329) b!945252))

(assert (= (and b!945269 (not c!98329)) b!945259))

(assert (= (or b!945252 b!945259) bm!41049))

(assert (= (or b!945262 bm!41049) bm!41051))

(assert (= (or b!945262 b!945252) bm!41052))

(assert (= (or b!945261 bm!41051) bm!41046))

(assert (= (or b!945261 bm!41052) bm!41047))

(assert (= (and d!114317 res!634982) b!945272))

(assert (= (and d!114317 c!98331) b!945257))

(assert (= (and d!114317 (not c!98331)) b!945271))

(assert (= (and d!114317 res!634984) b!945256))

(assert (= (and b!945256 res!634986) b!945260))

(assert (= (and b!945256 (not res!634983)) b!945267))

(assert (= (and b!945267 res!634989) b!945253))

(assert (= (and b!945256 res!634985) b!945265))

(assert (= (and b!945265 c!98327) b!945270))

(assert (= (and b!945265 (not c!98327)) b!945264))

(assert (= (and b!945270 res!634990) b!945258))

(assert (= (or b!945270 b!945264) bm!41048))

(assert (= (and b!945265 res!634988) b!945254))

(assert (= (and b!945254 c!98332) b!945255))

(assert (= (and b!945254 (not c!98332)) b!945266))

(assert (= (and b!945255 res!634987) b!945263))

(assert (= (or b!945255 b!945266) bm!41050))

(declare-fun b_lambda!14325 () Bool)

(assert (=> (not b_lambda!14325) (not b!945253)))

(declare-fun t!27748 () Bool)

(declare-fun tb!6179 () Bool)

(assert (=> (and b!945118 (= (defaultEntry!5690 thiss!1141) (defaultEntry!5690 thiss!1141)) t!27748) tb!6179))

(declare-fun result!12217 () Bool)

(assert (=> tb!6179 (= result!12217 tp_is_empty!20601)))

(assert (=> b!945253 t!27748))

(declare-fun b_and!29535 () Bool)

(assert (= b_and!29531 (and (=> t!27748 result!12217) b_and!29535)))

(declare-fun m!879157 () Bool)

(assert (=> d!114317 m!879157))

(declare-fun m!879159 () Bool)

(assert (=> bm!41046 m!879159))

(assert (=> b!945272 m!879135))

(assert (=> b!945272 m!879135))

(assert (=> b!945272 m!879141))

(declare-fun m!879161 () Bool)

(assert (=> b!945257 m!879161))

(declare-fun m!879163 () Bool)

(assert (=> b!945257 m!879163))

(declare-fun m!879165 () Bool)

(assert (=> b!945257 m!879165))

(declare-fun m!879167 () Bool)

(assert (=> b!945257 m!879167))

(declare-fun m!879169 () Bool)

(assert (=> b!945257 m!879169))

(assert (=> b!945257 m!879165))

(assert (=> b!945257 m!879159))

(declare-fun m!879171 () Bool)

(assert (=> b!945257 m!879171))

(declare-fun m!879173 () Bool)

(assert (=> b!945257 m!879173))

(declare-fun m!879175 () Bool)

(assert (=> b!945257 m!879175))

(assert (=> b!945257 m!879169))

(declare-fun m!879177 () Bool)

(assert (=> b!945257 m!879177))

(declare-fun m!879179 () Bool)

(assert (=> b!945257 m!879179))

(declare-fun m!879181 () Bool)

(assert (=> b!945257 m!879181))

(assert (=> b!945257 m!879161))

(assert (=> b!945257 m!879179))

(declare-fun m!879183 () Bool)

(assert (=> b!945257 m!879183))

(declare-fun m!879185 () Bool)

(assert (=> b!945257 m!879185))

(assert (=> b!945257 m!879135))

(declare-fun m!879187 () Bool)

(assert (=> b!945257 m!879187))

(declare-fun m!879189 () Bool)

(assert (=> b!945257 m!879189))

(assert (=> b!945260 m!879135))

(assert (=> b!945260 m!879135))

(assert (=> b!945260 m!879141))

(declare-fun m!879191 () Bool)

(assert (=> b!945261 m!879191))

(declare-fun m!879193 () Bool)

(assert (=> bm!41047 m!879193))

(assert (=> b!945267 m!879135))

(assert (=> b!945267 m!879135))

(declare-fun m!879195 () Bool)

(assert (=> b!945267 m!879195))

(declare-fun m!879197 () Bool)

(assert (=> bm!41048 m!879197))

(declare-fun m!879199 () Bool)

(assert (=> bm!41050 m!879199))

(declare-fun m!879201 () Bool)

(assert (=> b!945253 m!879201))

(declare-fun m!879203 () Bool)

(assert (=> b!945253 m!879203))

(declare-fun m!879205 () Bool)

(assert (=> b!945253 m!879205))

(assert (=> b!945253 m!879135))

(assert (=> b!945253 m!879201))

(assert (=> b!945253 m!879203))

(assert (=> b!945253 m!879135))

(declare-fun m!879207 () Bool)

(assert (=> b!945253 m!879207))

(declare-fun m!879209 () Bool)

(assert (=> b!945263 m!879209))

(declare-fun m!879211 () Bool)

(assert (=> b!945258 m!879211))

(assert (=> d!114305 d!114317))

(declare-fun bm!41055 () Bool)

(declare-fun call!41058 () (_ BitVec 32))

(assert (=> bm!41055 (= call!41058 (arrayCountValidKeys!0 (_keys!10565 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27986 (_keys!10565 thiss!1141))))))

(declare-fun b!945284 () Bool)

(declare-fun e!531704 () (_ BitVec 32))

(declare-fun e!531703 () (_ BitVec 32))

(assert (=> b!945284 (= e!531704 e!531703)))

(declare-fun c!98338 () Bool)

(assert (=> b!945284 (= c!98338 (validKeyInArray!0 (select (arr!27518 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945285 () Bool)

(assert (=> b!945285 (= e!531703 (bvadd #b00000000000000000000000000000001 call!41058))))

(declare-fun b!945286 () Bool)

(assert (=> b!945286 (= e!531703 call!41058)))

(declare-fun b!945283 () Bool)

(assert (=> b!945283 (= e!531704 #b00000000000000000000000000000000)))

(declare-fun d!114319 () Bool)

(declare-fun lt!425966 () (_ BitVec 32))

(assert (=> d!114319 (and (bvsge lt!425966 #b00000000000000000000000000000000) (bvsle lt!425966 (bvsub (size!27986 (_keys!10565 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114319 (= lt!425966 e!531704)))

(declare-fun c!98337 () Bool)

(assert (=> d!114319 (= c!98337 (bvsge #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))))))

(assert (=> d!114319 (and (bvsle #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27986 (_keys!10565 thiss!1141)) (size!27986 (_keys!10565 thiss!1141))))))

(assert (=> d!114319 (= (arrayCountValidKeys!0 (_keys!10565 thiss!1141) #b00000000000000000000000000000000 (size!27986 (_keys!10565 thiss!1141))) lt!425966)))

(assert (= (and d!114319 c!98337) b!945283))

(assert (= (and d!114319 (not c!98337)) b!945284))

(assert (= (and b!945284 c!98338) b!945285))

(assert (= (and b!945284 (not c!98338)) b!945286))

(assert (= (or b!945285 b!945286) bm!41055))

(declare-fun m!879213 () Bool)

(assert (=> bm!41055 m!879213))

(assert (=> b!945284 m!879135))

(assert (=> b!945284 m!879135))

(assert (=> b!945284 m!879141))

(assert (=> b!945145 d!114319))

(declare-fun d!114321 () Bool)

(declare-fun res!635000 () Bool)

(declare-fun e!531707 () Bool)

(assert (=> d!114321 (=> (not res!635000) (not e!531707))))

(assert (=> d!114321 (= res!635000 (validMask!0 (mask!27348 thiss!1141)))))

(assert (=> d!114321 (= (simpleValid!349 thiss!1141) e!531707)))

(declare-fun b!945295 () Bool)

(declare-fun res!635002 () Bool)

(assert (=> b!945295 (=> (not res!635002) (not e!531707))))

(assert (=> b!945295 (= res!635002 (and (= (size!27985 (_values!5713 thiss!1141)) (bvadd (mask!27348 thiss!1141) #b00000000000000000000000000000001)) (= (size!27986 (_keys!10565 thiss!1141)) (size!27985 (_values!5713 thiss!1141))) (bvsge (_size!2449 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2449 thiss!1141) (bvadd (mask!27348 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!945297 () Bool)

(declare-fun res!634999 () Bool)

(assert (=> b!945297 (=> (not res!634999) (not e!531707))))

(declare-fun size!27989 (LongMapFixedSize!4788) (_ BitVec 32))

(assert (=> b!945297 (= res!634999 (= (size!27989 thiss!1141) (bvadd (_size!2449 thiss!1141) (bvsdiv (bvadd (extraKeys!5422 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!945298 () Bool)

(assert (=> b!945298 (= e!531707 (and (bvsge (extraKeys!5422 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5422 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2449 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!945296 () Bool)

(declare-fun res!635001 () Bool)

(assert (=> b!945296 (=> (not res!635001) (not e!531707))))

(assert (=> b!945296 (= res!635001 (bvsge (size!27989 thiss!1141) (_size!2449 thiss!1141)))))

(assert (= (and d!114321 res!635000) b!945295))

(assert (= (and b!945295 res!635002) b!945296))

(assert (= (and b!945296 res!635001) b!945297))

(assert (= (and b!945297 res!634999) b!945298))

(assert (=> d!114321 m!879157))

(declare-fun m!879215 () Bool)

(assert (=> b!945297 m!879215))

(assert (=> b!945296 m!879215))

(assert (=> d!114301 d!114321))

(declare-fun d!114323 () Bool)

(assert (=> d!114323 (isDefined!360 (getValueByKey!490 (toList!6173 (map!13037 thiss!1141)) key!756))))

(declare-fun lt!425969 () Unit!31885)

(declare-fun choose!1578 (List!19417 (_ BitVec 64)) Unit!31885)

(assert (=> d!114323 (= lt!425969 (choose!1578 (toList!6173 (map!13037 thiss!1141)) key!756))))

(declare-fun e!531710 () Bool)

(assert (=> d!114323 e!531710))

(declare-fun res!635005 () Bool)

(assert (=> d!114323 (=> (not res!635005) (not e!531710))))

(declare-fun isStrictlySorted!503 (List!19417) Bool)

(assert (=> d!114323 (= res!635005 (isStrictlySorted!503 (toList!6173 (map!13037 thiss!1141))))))

(assert (=> d!114323 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!350 (toList!6173 (map!13037 thiss!1141)) key!756) lt!425969)))

(declare-fun b!945301 () Bool)

(assert (=> b!945301 (= e!531710 (containsKey!455 (toList!6173 (map!13037 thiss!1141)) key!756))))

(assert (= (and d!114323 res!635005) b!945301))

(assert (=> d!114323 m!879127))

(assert (=> d!114323 m!879127))

(assert (=> d!114323 m!879129))

(declare-fun m!879217 () Bool)

(assert (=> d!114323 m!879217))

(declare-fun m!879219 () Bool)

(assert (=> d!114323 m!879219))

(assert (=> b!945301 m!879123))

(assert (=> b!945154 d!114323))

(assert (=> b!945154 d!114311))

(assert (=> b!945154 d!114313))

(declare-fun mapNonEmpty!32738 () Bool)

(declare-fun mapRes!32738 () Bool)

(declare-fun tp!62804 () Bool)

(declare-fun e!531712 () Bool)

(assert (=> mapNonEmpty!32738 (= mapRes!32738 (and tp!62804 e!531712))))

(declare-fun mapKey!32738 () (_ BitVec 32))

(declare-fun mapRest!32738 () (Array (_ BitVec 32) ValueCell!9819))

(declare-fun mapValue!32738 () ValueCell!9819)

(assert (=> mapNonEmpty!32738 (= mapRest!32737 (store mapRest!32738 mapKey!32738 mapValue!32738))))

(declare-fun condMapEmpty!32738 () Bool)

(declare-fun mapDefault!32738 () ValueCell!9819)

(assert (=> mapNonEmpty!32737 (= condMapEmpty!32738 (= mapRest!32737 ((as const (Array (_ BitVec 32) ValueCell!9819)) mapDefault!32738)))))

(declare-fun e!531711 () Bool)

(assert (=> mapNonEmpty!32737 (= tp!62803 (and e!531711 mapRes!32738))))

(declare-fun mapIsEmpty!32738 () Bool)

(assert (=> mapIsEmpty!32738 mapRes!32738))

(declare-fun b!945303 () Bool)

(assert (=> b!945303 (= e!531711 tp_is_empty!20601)))

(declare-fun b!945302 () Bool)

(assert (=> b!945302 (= e!531712 tp_is_empty!20601)))

(assert (= (and mapNonEmpty!32737 condMapEmpty!32738) mapIsEmpty!32738))

(assert (= (and mapNonEmpty!32737 (not condMapEmpty!32738)) mapNonEmpty!32738))

(assert (= (and mapNonEmpty!32738 ((_ is ValueCellFull!9819) mapValue!32738)) b!945302))

(assert (= (and mapNonEmpty!32737 ((_ is ValueCellFull!9819) mapDefault!32738)) b!945303))

(declare-fun m!879221 () Bool)

(assert (=> mapNonEmpty!32738 m!879221))

(declare-fun b_lambda!14327 () Bool)

(assert (= b_lambda!14325 (or (and b!945118 b_free!18093) b_lambda!14327)))

(check-sat (not b_next!18093) (not b!945176) (not b!945185) (not b!945179) (not b!945207) (not b!945296) (not b_lambda!14327) tp_is_empty!20601 (not b!945263) (not b!945267) (not b!945258) (not b!945253) (not bm!41055) (not bm!41047) (not bm!41046) (not b!945196) (not bm!41048) (not b!945260) (not d!114317) (not b!945297) (not b!945284) (not d!114311) (not d!114321) (not b!945178) (not b!945206) (not bm!41028) (not b!945261) (not b!945257) (not b!945272) (not bm!41031) (not mapNonEmpty!32738) (not b!945301) (not bm!41050) (not d!114323) b_and!29535)
(check-sat b_and!29535 (not b_next!18093))
