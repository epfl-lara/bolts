; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185570 () Bool)

(assert start!185570)

(declare-fun b!1858957 () Bool)

(declare-fun b_free!51985 () Bool)

(declare-fun b_next!52689 () Bool)

(assert (=> b!1858957 (= b_free!51985 (not b_next!52689))))

(declare-fun tp!529911 () Bool)

(declare-fun b_and!144253 () Bool)

(assert (=> b!1858957 (= tp!529911 b_and!144253)))

(declare-fun e!1187139 () Bool)

(declare-fun tp_is_empty!8591 () Bool)

(declare-fun e!1187141 () Bool)

(declare-datatypes ((V!3898 0))(
  ( (V!3899 (val!5898 Int)) )
))
(declare-datatypes ((array!6579 0))(
  ( (array!6580 (arr!2922 (Array (_ BitVec 32) (_ BitVec 64))) (size!16307 (_ BitVec 32))) )
))
(declare-datatypes ((array!6581 0))(
  ( (array!6582 (arr!2923 (Array (_ BitVec 32) V!3898)) (size!16308 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3824 0))(
  ( (LongMapFixedSize!3825 (defaultEntry!2277 Int) (mask!5632 (_ BitVec 32)) (extraKeys!2160 (_ BitVec 32)) (zeroValue!2170 V!3898) (minValue!2170 V!3898) (_size!3890 (_ BitVec 32)) (_keys!2209 array!6579) (_values!2192 array!6581) (_vacant!1973 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7503 0))(
  ( (Cell!7504 (v!26057 LongMapFixedSize!3824)) )
))
(declare-datatypes ((MutLongMap!1912 0))(
  ( (LongMap!1912 (underlying!4030 Cell!7503)) (MutLongMapExt!1911 (__x!12981 Int)) )
))
(declare-fun thiss!47585 () MutLongMap!1912)

(declare-fun array_inv!2103 (array!6579) Bool)

(declare-fun array_inv!2104 (array!6581) Bool)

(assert (=> b!1858957 (= e!1187139 (and tp!529911 tp_is_empty!8591 (array_inv!2103 (_keys!2209 (v!26057 (underlying!4030 thiss!47585)))) (array_inv!2104 (_values!2192 (v!26057 (underlying!4030 thiss!47585)))) e!1187141))))

(declare-fun b!1858958 () Bool)

(declare-fun mapRes!8884 () Bool)

(assert (=> b!1858958 (= e!1187141 (and tp_is_empty!8591 mapRes!8884))))

(declare-fun condMapEmpty!8884 () Bool)

(declare-fun mapDefault!8884 () V!3898)

(assert (=> b!1858958 (= condMapEmpty!8884 (= (arr!2923 (_values!2192 (v!26057 (underlying!4030 thiss!47585)))) ((as const (Array (_ BitVec 32) V!3898)) mapDefault!8884)))))

(declare-fun bm!115606 () Bool)

(declare-datatypes ((tuple2!19888 0))(
  ( (tuple2!19889 (_1!11371 (_ BitVec 64)) (_2!11371 V!3898)) )
))
(declare-datatypes ((List!20694 0))(
  ( (Nil!20614) (Cons!20614 (h!26015 tuple2!19888) (t!172563 List!20694)) )
))
(declare-datatypes ((ListLongMap!221 0))(
  ( (ListLongMap!222 (toList!996 List!20694)) )
))
(declare-fun call!115612 () ListLongMap!221)

(declare-datatypes ((tuple2!19890 0))(
  ( (tuple2!19891 (_1!11372 Bool) (_2!11372 MutLongMap!1912)) )
))
(declare-fun lt!717362 () tuple2!19890)

(declare-fun abstractMap!69 (MutLongMap!1912) ListLongMap!221)

(assert (=> bm!115606 (= call!115612 (abstractMap!69 (_2!11372 lt!717362)))))

(declare-fun mapNonEmpty!8884 () Bool)

(declare-fun tp!529910 () Bool)

(assert (=> mapNonEmpty!8884 (= mapRes!8884 (and tp!529910 tp_is_empty!8591))))

(declare-fun mapKey!8884 () (_ BitVec 32))

(declare-fun mapRest!8884 () (Array (_ BitVec 32) V!3898))

(declare-fun mapValue!8884 () V!3898)

(assert (=> mapNonEmpty!8884 (= (arr!2923 (_values!2192 (v!26057 (underlying!4030 thiss!47585)))) (store mapRest!8884 mapKey!8884 mapValue!8884))))

(declare-fun b!1858959 () Bool)

(declare-fun e!1187140 () Bool)

(declare-fun call!115611 () ListLongMap!221)

(assert (=> b!1858959 (= e!1187140 (= call!115612 call!115611))))

(declare-fun bm!115607 () Bool)

(assert (=> bm!115607 (= call!115611 (abstractMap!69 thiss!47585))))

(declare-fun b!1858960 () Bool)

(declare-fun e!1187134 () Bool)

(assert (=> b!1858960 (= e!1187134 e!1187140)))

(declare-fun c!302659 () Bool)

(assert (=> b!1858960 (= c!302659 (_1!11372 lt!717362))))

(declare-fun b!1858961 () Bool)

(declare-fun e!1187136 () Bool)

(declare-fun e!1187135 () Bool)

(assert (=> b!1858961 (= e!1187136 e!1187135)))

(declare-fun res!832650 () Bool)

(declare-fun e!1187137 () Bool)

(assert (=> start!185570 (=> (not res!832650) (not e!1187137))))

(get-info :version)

(assert (=> start!185570 (= res!832650 ((_ is MutLongMapExt!1911) thiss!47585))))

(assert (=> start!185570 e!1187137))

(assert (=> start!185570 e!1187136))

(assert (=> start!185570 true))

(declare-fun b!1858962 () Bool)

(declare-fun res!832652 () Bool)

(assert (=> b!1858962 (=> (not res!832652) (not e!1187137))))

(declare-fun valid!1540 (MutLongMap!1912) Bool)

(assert (=> b!1858962 (= res!832652 (valid!1540 thiss!47585))))

(declare-fun b!1858963 () Bool)

(assert (=> b!1858963 (= e!1187135 e!1187139)))

(declare-fun key!7116 () (_ BitVec 64))

(declare-fun b!1858964 () Bool)

(declare-fun -!104 (ListLongMap!221 (_ BitVec 64)) ListLongMap!221)

(assert (=> b!1858964 (= e!1187140 (= call!115612 (-!104 call!115611 key!7116)))))

(declare-fun b!1858965 () Bool)

(assert (=> b!1858965 (= e!1187137 (not e!1187134))))

(declare-fun res!832651 () Bool)

(assert (=> b!1858965 (=> (not res!832651) (not e!1187134))))

(assert (=> b!1858965 (= res!832651 (valid!1540 (_2!11372 lt!717362)))))

(assert (=> b!1858965 ((_ is MutLongMapExt!1911) (_2!11372 lt!717362))))

(declare-fun choose!11691 (MutLongMap!1912 (_ BitVec 64)) tuple2!19890)

(assert (=> b!1858965 (= lt!717362 (choose!11691 thiss!47585 key!7116))))

(declare-fun mapIsEmpty!8884 () Bool)

(assert (=> mapIsEmpty!8884 mapRes!8884))

(assert (= (and start!185570 res!832650) b!1858962))

(assert (= (and b!1858962 res!832652) b!1858965))

(assert (= (and b!1858965 res!832651) b!1858960))

(assert (= (and b!1858960 c!302659) b!1858964))

(assert (= (and b!1858960 (not c!302659)) b!1858959))

(assert (= (or b!1858964 b!1858959) bm!115607))

(assert (= (or b!1858964 b!1858959) bm!115606))

(assert (= (and b!1858958 condMapEmpty!8884) mapIsEmpty!8884))

(assert (= (and b!1858958 (not condMapEmpty!8884)) mapNonEmpty!8884))

(assert (= b!1858957 b!1858958))

(assert (= b!1858963 b!1858957))

(assert (= b!1858961 b!1858963))

(assert (= (and start!185570 ((_ is LongMap!1912) thiss!47585)) b!1858961))

(declare-fun m!2282391 () Bool)

(assert (=> b!1858964 m!2282391))

(declare-fun m!2282393 () Bool)

(assert (=> b!1858965 m!2282393))

(declare-fun m!2282395 () Bool)

(assert (=> b!1858965 m!2282395))

(declare-fun m!2282397 () Bool)

(assert (=> b!1858962 m!2282397))

(declare-fun m!2282399 () Bool)

(assert (=> bm!115607 m!2282399))

(declare-fun m!2282401 () Bool)

(assert (=> bm!115606 m!2282401))

(declare-fun m!2282403 () Bool)

(assert (=> mapNonEmpty!8884 m!2282403))

(declare-fun m!2282405 () Bool)

(assert (=> b!1858957 m!2282405))

(declare-fun m!2282407 () Bool)

(assert (=> b!1858957 m!2282407))

(check-sat (not bm!115606) tp_is_empty!8591 (not b!1858962) (not bm!115607) (not b!1858965) (not b_next!52689) (not b!1858964) (not mapNonEmpty!8884) (not b!1858957) b_and!144253)
(check-sat b_and!144253 (not b_next!52689))
(get-model)

(declare-fun d!567194 () Bool)

(declare-fun c!302662 () Bool)

(assert (=> d!567194 (= c!302662 ((_ is LongMap!1912) thiss!47585))))

(declare-fun e!1187144 () ListLongMap!221)

(assert (=> d!567194 (= (abstractMap!69 thiss!47585) e!1187144)))

(declare-fun b!1858970 () Bool)

(declare-fun abstractMap!70 (MutLongMap!1912) ListLongMap!221)

(assert (=> b!1858970 (= e!1187144 (abstractMap!70 thiss!47585))))

(declare-fun b!1858971 () Bool)

(declare-fun abstractMap!71 (MutLongMap!1912) ListLongMap!221)

(assert (=> b!1858971 (= e!1187144 (abstractMap!71 thiss!47585))))

(assert (= (and d!567194 c!302662) b!1858970))

(assert (= (and d!567194 (not c!302662)) b!1858971))

(declare-fun m!2282409 () Bool)

(assert (=> b!1858970 m!2282409))

(declare-fun m!2282411 () Bool)

(assert (=> b!1858971 m!2282411))

(assert (=> bm!115607 d!567194))

(declare-fun d!567196 () Bool)

(declare-fun lt!717365 () ListLongMap!221)

(declare-fun contains!3803 (ListLongMap!221 (_ BitVec 64)) Bool)

(assert (=> d!567196 (not (contains!3803 lt!717365 key!7116))))

(declare-fun removeStrictlySorted!3 (List!20694 (_ BitVec 64)) List!20694)

(assert (=> d!567196 (= lt!717365 (ListLongMap!222 (removeStrictlySorted!3 (toList!996 call!115611) key!7116)))))

(assert (=> d!567196 (= (-!104 call!115611 key!7116) lt!717365)))

(declare-fun bs!410761 () Bool)

(assert (= bs!410761 d!567196))

(declare-fun m!2282413 () Bool)

(assert (=> bs!410761 m!2282413))

(declare-fun m!2282415 () Bool)

(assert (=> bs!410761 m!2282415))

(assert (=> b!1858964 d!567196))

(declare-fun d!567198 () Bool)

(declare-fun c!302665 () Bool)

(assert (=> d!567198 (= c!302665 ((_ is LongMap!1912) thiss!47585))))

(declare-fun e!1187147 () Bool)

(assert (=> d!567198 (= (valid!1540 thiss!47585) e!1187147)))

(declare-fun b!1858976 () Bool)

(declare-fun valid!1541 (MutLongMap!1912) Bool)

(assert (=> b!1858976 (= e!1187147 (valid!1541 thiss!47585))))

(declare-fun b!1858977 () Bool)

(declare-fun valid!1542 (MutLongMap!1912) Bool)

(assert (=> b!1858977 (= e!1187147 (valid!1542 thiss!47585))))

(assert (= (and d!567198 c!302665) b!1858976))

(assert (= (and d!567198 (not c!302665)) b!1858977))

(declare-fun m!2282417 () Bool)

(assert (=> b!1858976 m!2282417))

(declare-fun m!2282419 () Bool)

(assert (=> b!1858977 m!2282419))

(assert (=> b!1858962 d!567198))

(declare-fun d!567200 () Bool)

(declare-fun c!302666 () Bool)

(assert (=> d!567200 (= c!302666 ((_ is LongMap!1912) (_2!11372 lt!717362)))))

(declare-fun e!1187148 () ListLongMap!221)

(assert (=> d!567200 (= (abstractMap!69 (_2!11372 lt!717362)) e!1187148)))

(declare-fun b!1858978 () Bool)

(assert (=> b!1858978 (= e!1187148 (abstractMap!70 (_2!11372 lt!717362)))))

(declare-fun b!1858979 () Bool)

(assert (=> b!1858979 (= e!1187148 (abstractMap!71 (_2!11372 lt!717362)))))

(assert (= (and d!567200 c!302666) b!1858978))

(assert (= (and d!567200 (not c!302666)) b!1858979))

(declare-fun m!2282421 () Bool)

(assert (=> b!1858978 m!2282421))

(declare-fun m!2282423 () Bool)

(assert (=> b!1858979 m!2282423))

(assert (=> bm!115606 d!567200))

(declare-fun d!567202 () Bool)

(declare-fun c!302667 () Bool)

(assert (=> d!567202 (= c!302667 ((_ is LongMap!1912) (_2!11372 lt!717362)))))

(declare-fun e!1187149 () Bool)

(assert (=> d!567202 (= (valid!1540 (_2!11372 lt!717362)) e!1187149)))

(declare-fun b!1858980 () Bool)

(assert (=> b!1858980 (= e!1187149 (valid!1541 (_2!11372 lt!717362)))))

(declare-fun b!1858981 () Bool)

(assert (=> b!1858981 (= e!1187149 (valid!1542 (_2!11372 lt!717362)))))

(assert (= (and d!567202 c!302667) b!1858980))

(assert (= (and d!567202 (not c!302667)) b!1858981))

(declare-fun m!2282425 () Bool)

(assert (=> b!1858980 m!2282425))

(declare-fun m!2282427 () Bool)

(assert (=> b!1858981 m!2282427))

(assert (=> b!1858965 d!567202))

(declare-fun d!567204 () Bool)

(declare-fun choose!11692 (MutLongMap!1912 (_ BitVec 64)) tuple2!19890)

(assert (=> d!567204 (= (choose!11691 thiss!47585 key!7116) (choose!11692 thiss!47585 key!7116))))

(declare-fun bs!410762 () Bool)

(assert (= bs!410762 d!567204))

(declare-fun m!2282429 () Bool)

(assert (=> bs!410762 m!2282429))

(assert (=> b!1858965 d!567204))

(declare-fun d!567206 () Bool)

(assert (=> d!567206 (= (array_inv!2103 (_keys!2209 (v!26057 (underlying!4030 thiss!47585)))) (bvsge (size!16307 (_keys!2209 (v!26057 (underlying!4030 thiss!47585)))) #b00000000000000000000000000000000))))

(assert (=> b!1858957 d!567206))

(declare-fun d!567208 () Bool)

(assert (=> d!567208 (= (array_inv!2104 (_values!2192 (v!26057 (underlying!4030 thiss!47585)))) (bvsge (size!16308 (_values!2192 (v!26057 (underlying!4030 thiss!47585)))) #b00000000000000000000000000000000))))

(assert (=> b!1858957 d!567208))

(declare-fun condMapEmpty!8887 () Bool)

(declare-fun mapDefault!8887 () V!3898)

(assert (=> mapNonEmpty!8884 (= condMapEmpty!8887 (= mapRest!8884 ((as const (Array (_ BitVec 32) V!3898)) mapDefault!8887)))))

(declare-fun mapRes!8887 () Bool)

(assert (=> mapNonEmpty!8884 (= tp!529910 (and tp_is_empty!8591 mapRes!8887))))

(declare-fun mapIsEmpty!8887 () Bool)

(assert (=> mapIsEmpty!8887 mapRes!8887))

(declare-fun mapNonEmpty!8887 () Bool)

(declare-fun tp!529914 () Bool)

(assert (=> mapNonEmpty!8887 (= mapRes!8887 (and tp!529914 tp_is_empty!8591))))

(declare-fun mapKey!8887 () (_ BitVec 32))

(declare-fun mapRest!8887 () (Array (_ BitVec 32) V!3898))

(declare-fun mapValue!8887 () V!3898)

(assert (=> mapNonEmpty!8887 (= mapRest!8884 (store mapRest!8887 mapKey!8887 mapValue!8887))))

(assert (= (and mapNonEmpty!8884 condMapEmpty!8887) mapIsEmpty!8887))

(assert (= (and mapNonEmpty!8884 (not condMapEmpty!8887)) mapNonEmpty!8887))

(declare-fun m!2282431 () Bool)

(assert (=> mapNonEmpty!8887 m!2282431))

(check-sat (not b!1858979) (not b!1858977) (not d!567204) (not d!567196) (not b_next!52689) (not b!1858976) b_and!144253 tp_is_empty!8591 (not mapNonEmpty!8887) (not b!1858978) (not b!1858981) (not b!1858971) (not b!1858980) (not b!1858970))
(check-sat b_and!144253 (not b_next!52689))
(get-model)

(declare-fun d!567210 () Bool)

(declare-fun map!4361 (MutLongMap!1912) ListLongMap!221)

(assert (=> d!567210 (= (abstractMap!70 (_2!11372 lt!717362)) (map!4361 (_2!11372 lt!717362)))))

(declare-fun bs!410763 () Bool)

(assert (= bs!410763 d!567210))

(declare-fun m!2282433 () Bool)

(assert (=> bs!410763 m!2282433))

(assert (=> b!1858978 d!567210))

(declare-fun d!567212 () Bool)

(declare-fun e!1187154 () Bool)

(assert (=> d!567212 e!1187154))

(declare-fun res!832655 () Bool)

(assert (=> d!567212 (=> res!832655 e!1187154)))

(declare-fun lt!717376 () Bool)

(assert (=> d!567212 (= res!832655 (not lt!717376))))

(declare-fun lt!717375 () Bool)

(assert (=> d!567212 (= lt!717376 lt!717375)))

(declare-datatypes ((Unit!35218 0))(
  ( (Unit!35219) )
))
(declare-fun lt!717377 () Unit!35218)

(declare-fun e!1187155 () Unit!35218)

(assert (=> d!567212 (= lt!717377 e!1187155)))

(declare-fun c!302670 () Bool)

(assert (=> d!567212 (= c!302670 lt!717375)))

(declare-fun containsKey!39 (List!20694 (_ BitVec 64)) Bool)

(assert (=> d!567212 (= lt!717375 (containsKey!39 (toList!996 lt!717365) key!7116))))

(assert (=> d!567212 (= (contains!3803 lt!717365 key!7116) lt!717376)))

(declare-fun b!1858990 () Bool)

(declare-fun lt!717374 () Unit!35218)

(assert (=> b!1858990 (= e!1187155 lt!717374)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!20 (List!20694 (_ BitVec 64)) Unit!35218)

(assert (=> b!1858990 (= lt!717374 (lemmaContainsKeyImpliesGetValueByKeyDefined!20 (toList!996 lt!717365) key!7116))))

(declare-datatypes ((Option!4236 0))(
  ( (None!4235) (Some!4235 (v!26058 V!3898)) )
))
(declare-fun isDefined!3536 (Option!4236) Bool)

(declare-fun getValueByKey!30 (List!20694 (_ BitVec 64)) Option!4236)

(assert (=> b!1858990 (isDefined!3536 (getValueByKey!30 (toList!996 lt!717365) key!7116))))

(declare-fun b!1858991 () Bool)

(declare-fun Unit!35220 () Unit!35218)

(assert (=> b!1858991 (= e!1187155 Unit!35220)))

(declare-fun b!1858992 () Bool)

(assert (=> b!1858992 (= e!1187154 (isDefined!3536 (getValueByKey!30 (toList!996 lt!717365) key!7116)))))

(assert (= (and d!567212 c!302670) b!1858990))

(assert (= (and d!567212 (not c!302670)) b!1858991))

(assert (= (and d!567212 (not res!832655)) b!1858992))

(declare-fun m!2282435 () Bool)

(assert (=> d!567212 m!2282435))

(declare-fun m!2282437 () Bool)

(assert (=> b!1858990 m!2282437))

(declare-fun m!2282439 () Bool)

(assert (=> b!1858990 m!2282439))

(assert (=> b!1858990 m!2282439))

(declare-fun m!2282441 () Bool)

(assert (=> b!1858990 m!2282441))

(assert (=> b!1858992 m!2282439))

(assert (=> b!1858992 m!2282439))

(assert (=> b!1858992 m!2282441))

(assert (=> d!567196 d!567212))

(declare-fun b!1859003 () Bool)

(declare-fun e!1187163 () List!20694)

(declare-fun e!1187162 () List!20694)

(assert (=> b!1859003 (= e!1187163 e!1187162)))

(declare-fun c!302676 () Bool)

(assert (=> b!1859003 (= c!302676 (and ((_ is Cons!20614) (toList!996 call!115611)) (not (= (_1!11371 (h!26015 (toList!996 call!115611))) key!7116))))))

(declare-fun b!1859004 () Bool)

(assert (=> b!1859004 (= e!1187162 Nil!20614)))

(declare-fun b!1859006 () Bool)

(declare-fun $colon$colon!488 (List!20694 tuple2!19888) List!20694)

(assert (=> b!1859006 (= e!1187162 ($colon$colon!488 (removeStrictlySorted!3 (t!172563 (toList!996 call!115611)) key!7116) (h!26015 (toList!996 call!115611))))))

(declare-fun b!1859007 () Bool)

(declare-fun e!1187164 () Bool)

(declare-fun lt!717380 () List!20694)

(assert (=> b!1859007 (= e!1187164 (not (containsKey!39 lt!717380 key!7116)))))

(declare-fun b!1859005 () Bool)

(assert (=> b!1859005 (= e!1187163 (t!172563 (toList!996 call!115611)))))

(declare-fun d!567214 () Bool)

(assert (=> d!567214 e!1187164))

(declare-fun res!832658 () Bool)

(assert (=> d!567214 (=> (not res!832658) (not e!1187164))))

(declare-fun isStrictlySorted!4 (List!20694) Bool)

(assert (=> d!567214 (= res!832658 (isStrictlySorted!4 lt!717380))))

(assert (=> d!567214 (= lt!717380 e!1187163)))

(declare-fun c!302675 () Bool)

(assert (=> d!567214 (= c!302675 (and ((_ is Cons!20614) (toList!996 call!115611)) (= (_1!11371 (h!26015 (toList!996 call!115611))) key!7116)))))

(assert (=> d!567214 (isStrictlySorted!4 (toList!996 call!115611))))

(assert (=> d!567214 (= (removeStrictlySorted!3 (toList!996 call!115611) key!7116) lt!717380)))

(assert (= (and d!567214 c!302675) b!1859005))

(assert (= (and d!567214 (not c!302675)) b!1859003))

(assert (= (and b!1859003 c!302676) b!1859006))

(assert (= (and b!1859003 (not c!302676)) b!1859004))

(assert (= (and d!567214 res!832658) b!1859007))

(declare-fun m!2282443 () Bool)

(assert (=> b!1859006 m!2282443))

(assert (=> b!1859006 m!2282443))

(declare-fun m!2282445 () Bool)

(assert (=> b!1859006 m!2282445))

(declare-fun m!2282447 () Bool)

(assert (=> b!1859007 m!2282447))

(declare-fun m!2282449 () Bool)

(assert (=> d!567214 m!2282449))

(declare-fun m!2282451 () Bool)

(assert (=> d!567214 m!2282451))

(assert (=> d!567196 d!567214))

(declare-fun d!567216 () Bool)

(declare-fun valid!1543 (LongMapFixedSize!3824) Bool)

(assert (=> d!567216 (= (valid!1541 (_2!11372 lt!717362)) (valid!1543 (v!26057 (underlying!4030 (_2!11372 lt!717362)))))))

(declare-fun bs!410764 () Bool)

(assert (= bs!410764 d!567216))

(declare-fun m!2282453 () Bool)

(assert (=> bs!410764 m!2282453))

(assert (=> b!1858980 d!567216))

(declare-fun d!567218 () Bool)

(declare-fun choose!11693 (MutLongMap!1912) ListLongMap!221)

(assert (=> d!567218 (= (abstractMap!71 thiss!47585) (choose!11693 thiss!47585))))

(declare-fun bs!410765 () Bool)

(assert (= bs!410765 d!567218))

(declare-fun m!2282455 () Bool)

(assert (=> bs!410765 m!2282455))

(assert (=> b!1858971 d!567218))

(declare-fun d!567220 () Bool)

(assert (=> d!567220 (= (abstractMap!70 thiss!47585) (map!4361 thiss!47585))))

(declare-fun bs!410766 () Bool)

(assert (= bs!410766 d!567220))

(declare-fun m!2282457 () Bool)

(assert (=> bs!410766 m!2282457))

(assert (=> b!1858970 d!567220))

(declare-fun d!567222 () Bool)

(declare-fun choose!11694 (MutLongMap!1912) Bool)

(assert (=> d!567222 (= (valid!1542 thiss!47585) (choose!11694 thiss!47585))))

(declare-fun bs!410767 () Bool)

(assert (= bs!410767 d!567222))

(declare-fun m!2282459 () Bool)

(assert (=> bs!410767 m!2282459))

(assert (=> b!1858977 d!567222))

(declare-fun d!567224 () Bool)

(assert (=> d!567224 (= (abstractMap!71 (_2!11372 lt!717362)) (choose!11693 (_2!11372 lt!717362)))))

(declare-fun bs!410768 () Bool)

(assert (= bs!410768 d!567224))

(declare-fun m!2282461 () Bool)

(assert (=> bs!410768 m!2282461))

(assert (=> b!1858979 d!567224))

(declare-fun b!1859022 () Bool)

(declare-fun b_free!51987 () Bool)

(declare-fun b_next!52691 () Bool)

(assert (=> b!1859022 (= b_free!51987 (not b_next!52691))))

(declare-fun tp!529919 () Bool)

(declare-fun b_and!144255 () Bool)

(assert (=> b!1859022 (= tp!529919 b_and!144255)))

(declare-fun d!567226 () Bool)

(declare-fun e!1187180 () Bool)

(assert (=> d!567226 e!1187180))

(declare-fun res!832663 () Bool)

(assert (=> d!567226 (=> (not res!832663) (not e!1187180))))

(declare-fun res!832664 () tuple2!19890)

(assert (=> d!567226 (= res!832663 (valid!1540 (_2!11372 res!832664)))))

(assert (=> d!567226 ((_ is MutLongMapExt!1911) (_2!11372 res!832664))))

(declare-fun e!1187182 () Bool)

(declare-fun lt!717383 () tuple2!19890)

(assert (=> d!567226 (and e!1187182 ((_ is MutLongMapExt!1911) (_2!11372 lt!717383)))))

(assert (=> d!567226 (= lt!717383 res!832664)))

(assert (=> d!567226 (= (choose!11692 thiss!47585 key!7116) res!832664)))

(declare-fun e!1187183 () Bool)

(declare-fun e!1187179 () Bool)

(assert (=> b!1859022 (= e!1187179 (and tp!529919 tp_is_empty!8591 (array_inv!2103 (_keys!2209 (v!26057 (underlying!4030 (_2!11372 res!832664))))) (array_inv!2104 (_values!2192 (v!26057 (underlying!4030 (_2!11372 res!832664))))) e!1187183))))

(declare-fun b!1859023 () Bool)

(declare-fun e!1187184 () Bool)

(assert (=> b!1859023 (= e!1187180 e!1187184)))

(declare-fun c!302679 () Bool)

(assert (=> b!1859023 (= c!302679 (_1!11372 res!832664))))

(declare-fun b!1859024 () Bool)

(declare-fun call!115617 () ListLongMap!221)

(declare-fun call!115618 () ListLongMap!221)

(assert (=> b!1859024 (= e!1187184 (= call!115617 call!115618))))

(declare-fun mapNonEmpty!8890 () Bool)

(declare-fun mapRes!8890 () Bool)

(declare-fun tp!529920 () Bool)

(assert (=> mapNonEmpty!8890 (= mapRes!8890 (and tp!529920 tp_is_empty!8591))))

(declare-fun mapKey!8890 () (_ BitVec 32))

(declare-fun mapValue!8890 () V!3898)

(declare-fun mapRest!8890 () (Array (_ BitVec 32) V!3898))

(assert (=> mapNonEmpty!8890 (= (arr!2923 (_values!2192 (v!26057 (underlying!4030 (_2!11372 res!832664))))) (store mapRest!8890 mapKey!8890 mapValue!8890))))

(declare-fun bm!115612 () Bool)

(assert (=> bm!115612 (= call!115618 (abstractMap!69 thiss!47585))))

(declare-fun b!1859025 () Bool)

(declare-fun e!1187185 () Bool)

(assert (=> b!1859025 (= e!1187182 e!1187185)))

(declare-fun mapIsEmpty!8890 () Bool)

(assert (=> mapIsEmpty!8890 mapRes!8890))

(declare-fun b!1859026 () Bool)

(assert (=> b!1859026 (= e!1187185 e!1187179)))

(declare-fun b!1859027 () Bool)

(assert (=> b!1859027 (= e!1187183 (and tp_is_empty!8591 mapRes!8890))))

(declare-fun condMapEmpty!8890 () Bool)

(declare-fun mapDefault!8890 () V!3898)

(assert (=> b!1859027 (= condMapEmpty!8890 (= (arr!2923 (_values!2192 (v!26057 (underlying!4030 (_2!11372 res!832664))))) ((as const (Array (_ BitVec 32) V!3898)) mapDefault!8890)))))

(declare-fun b!1859028 () Bool)

(assert (=> b!1859028 (= e!1187184 (= call!115617 (-!104 call!115618 key!7116)))))

(declare-fun bm!115613 () Bool)

(assert (=> bm!115613 (= call!115617 (abstractMap!69 (_2!11372 res!832664)))))

(assert (= (and b!1859027 condMapEmpty!8890) mapIsEmpty!8890))

(assert (= (and b!1859027 (not condMapEmpty!8890)) mapNonEmpty!8890))

(assert (= b!1859022 b!1859027))

(assert (= b!1859026 b!1859022))

(assert (= b!1859025 b!1859026))

(assert (= (and d!567226 ((_ is LongMap!1912) (_2!11372 res!832664))) b!1859025))

(assert (= (and d!567226 res!832663) b!1859023))

(assert (= (and b!1859023 c!302679) b!1859028))

(assert (= (and b!1859023 (not c!302679)) b!1859024))

(assert (= (or b!1859028 b!1859024) bm!115612))

(assert (= (or b!1859028 b!1859024) bm!115613))

(declare-fun m!2282463 () Bool)

(assert (=> b!1859022 m!2282463))

(declare-fun m!2282465 () Bool)

(assert (=> b!1859022 m!2282465))

(declare-fun m!2282467 () Bool)

(assert (=> mapNonEmpty!8890 m!2282467))

(assert (=> bm!115612 m!2282399))

(declare-fun m!2282469 () Bool)

(assert (=> d!567226 m!2282469))

(declare-fun m!2282471 () Bool)

(assert (=> bm!115613 m!2282471))

(declare-fun m!2282473 () Bool)

(assert (=> b!1859028 m!2282473))

(assert (=> d!567204 d!567226))

(declare-fun d!567228 () Bool)

(assert (=> d!567228 (= (valid!1541 thiss!47585) (valid!1543 (v!26057 (underlying!4030 thiss!47585))))))

(declare-fun bs!410769 () Bool)

(assert (= bs!410769 d!567228))

(declare-fun m!2282475 () Bool)

(assert (=> bs!410769 m!2282475))

(assert (=> b!1858976 d!567228))

(declare-fun d!567230 () Bool)

(assert (=> d!567230 (= (valid!1542 (_2!11372 lt!717362)) (choose!11694 (_2!11372 lt!717362)))))

(declare-fun bs!410770 () Bool)

(assert (= bs!410770 d!567230))

(declare-fun m!2282477 () Bool)

(assert (=> bs!410770 m!2282477))

(assert (=> b!1858981 d!567230))

(declare-fun condMapEmpty!8891 () Bool)

(declare-fun mapDefault!8891 () V!3898)

(assert (=> mapNonEmpty!8887 (= condMapEmpty!8891 (= mapRest!8887 ((as const (Array (_ BitVec 32) V!3898)) mapDefault!8891)))))

(declare-fun mapRes!8891 () Bool)

(assert (=> mapNonEmpty!8887 (= tp!529914 (and tp_is_empty!8591 mapRes!8891))))

(declare-fun mapIsEmpty!8891 () Bool)

(assert (=> mapIsEmpty!8891 mapRes!8891))

(declare-fun mapNonEmpty!8891 () Bool)

(declare-fun tp!529921 () Bool)

(assert (=> mapNonEmpty!8891 (= mapRes!8891 (and tp!529921 tp_is_empty!8591))))

(declare-fun mapRest!8891 () (Array (_ BitVec 32) V!3898))

(declare-fun mapValue!8891 () V!3898)

(declare-fun mapKey!8891 () (_ BitVec 32))

(assert (=> mapNonEmpty!8891 (= mapRest!8887 (store mapRest!8891 mapKey!8891 mapValue!8891))))

(assert (= (and mapNonEmpty!8887 condMapEmpty!8891) mapIsEmpty!8891))

(assert (= (and mapNonEmpty!8887 (not condMapEmpty!8891)) mapNonEmpty!8891))

(declare-fun m!2282479 () Bool)

(assert (=> mapNonEmpty!8891 m!2282479))

(declare-fun lt!717386 () tuple2!19890)

(assert (=> d!567204 (= lt!717386 (choose!11691 thiss!47585 key!7116))))

(assert (=> d!567204 (= true ((_ is MutLongMapExt!1911) (_2!11372 lt!717386)))))

(check-sat tp_is_empty!8591 (not mapNonEmpty!8891) (not d!567216) (not mapNonEmpty!8890) (not d!567230) (not d!567224) (not b!1859022) (not bm!115612) (not d!567218) (not d!567228) (not b!1859006) b_and!144253 b_and!144255 (not b!1859007) (not d!567212) (not b!1859028) (not d!567222) (not d!567210) (not b!1858990) (not d!567214) (not d!567226) (not bm!115613) (not b_next!52689) (not d!567220) (not b_next!52691) (not b!1858992))
(check-sat b_and!144253 b_and!144255 (not b_next!52689) (not b_next!52691))
