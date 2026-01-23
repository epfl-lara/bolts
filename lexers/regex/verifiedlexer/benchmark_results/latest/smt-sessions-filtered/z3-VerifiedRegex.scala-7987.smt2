; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414070 () Bool)

(assert start!414070)

(declare-fun b!4309215 () Bool)

(declare-fun b_free!128579 () Bool)

(declare-fun b_next!129283 () Bool)

(assert (=> b!4309215 (= b_free!128579 (not b_next!129283))))

(declare-fun tp!1324318 () Bool)

(declare-fun b_and!339993 () Bool)

(assert (=> b!4309215 (= tp!1324318 b_and!339993)))

(declare-fun b!4309216 () Bool)

(declare-fun b_free!128581 () Bool)

(declare-fun b_next!129285 () Bool)

(assert (=> b!4309216 (= b_free!128581 (not b_next!129285))))

(declare-fun tp!1324314 () Bool)

(declare-fun b_and!339995 () Bool)

(assert (=> b!4309216 (= tp!1324314 b_and!339995)))

(declare-fun tp!1324315 () Bool)

(declare-fun e!2679860 () Bool)

(declare-fun e!2679866 () Bool)

(declare-fun tp!1324316 () Bool)

(declare-datatypes ((V!9586 0))(
  ( (V!9587 (val!15765 Int)) )
))
(declare-datatypes ((K!9384 0))(
  ( (K!9385 (val!15766 Int)) )
))
(declare-datatypes ((tuple2!46598 0))(
  ( (tuple2!46599 (_1!26578 K!9384) (_2!26578 V!9586)) )
))
(declare-datatypes ((List!48307 0))(
  ( (Nil!48183) (Cons!48183 (h!53617 tuple2!46598) (t!355106 List!48307)) )
))
(declare-datatypes ((array!16776 0))(
  ( (array!16777 (arr!7495 (Array (_ BitVec 32) (_ BitVec 64))) (size!35534 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4571 0))(
  ( (HashableExt!4570 (__x!29990 Int)) )
))
(declare-datatypes ((array!16778 0))(
  ( (array!16779 (arr!7496 (Array (_ BitVec 32) List!48307)) (size!35535 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9310 0))(
  ( (LongMapFixedSize!9311 (defaultEntry!5040 Int) (mask!13211 (_ BitVec 32)) (extraKeys!4904 (_ BitVec 32)) (zeroValue!4914 List!48307) (minValue!4914 List!48307) (_size!9353 (_ BitVec 32)) (_keys!4955 array!16776) (_values!4936 array!16778) (_vacant!4716 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18429 0))(
  ( (Cell!18430 (v!42299 LongMapFixedSize!9310)) )
))
(declare-datatypes ((MutLongMap!4655 0))(
  ( (LongMap!4655 (underlying!9539 Cell!18429)) (MutLongMapExt!4654 (__x!29991 Int)) )
))
(declare-datatypes ((Cell!18431 0))(
  ( (Cell!18432 (v!42300 MutLongMap!4655)) )
))
(declare-datatypes ((MutableMap!4561 0))(
  ( (MutableMapExt!4560 (__x!29992 Int)) (HashMap!4561 (underlying!9540 Cell!18431) (hashF!6687 Hashable!4571) (_size!9354 (_ BitVec 32)) (defaultValue!4732 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4561)

(declare-fun array_inv!5377 (array!16776) Bool)

(declare-fun array_inv!5378 (array!16778) Bool)

(assert (=> b!4309215 (= e!2679860 (and tp!1324318 tp!1324315 tp!1324316 (array_inv!5377 (_keys!4955 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) (array_inv!5378 (_values!4936 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) e!2679866))))

(declare-fun e!2679865 () Bool)

(declare-fun e!2679861 () Bool)

(assert (=> b!4309216 (= e!2679865 (and e!2679861 tp!1324314))))

(declare-fun b!4309217 () Bool)

(declare-fun e!2679863 () Bool)

(declare-fun lt!1530140 () MutLongMap!4655)

(get-info :version)

(assert (=> b!4309217 (= e!2679861 (and e!2679863 ((_ is LongMap!4655) lt!1530140)))))

(assert (=> b!4309217 (= lt!1530140 (v!42300 (underlying!9540 thiss!42308)))))

(declare-fun b!4309218 () Bool)

(declare-fun res!1766174 () Bool)

(declare-fun e!2679862 () Bool)

(assert (=> b!4309218 (=> (not res!1766174) (not e!2679862))))

(declare-fun valid!3643 (MutableMap!4561) Bool)

(assert (=> b!4309218 (= res!1766174 (valid!3643 thiss!42308))))

(declare-fun b!4309219 () Bool)

(declare-fun e!2679868 () Bool)

(assert (=> b!4309219 (= e!2679863 e!2679868)))

(declare-fun b!4309221 () Bool)

(assert (=> b!4309221 (= e!2679868 e!2679860)))

(declare-fun b!4309222 () Bool)

(declare-fun tp!1324317 () Bool)

(declare-fun mapRes!20788 () Bool)

(assert (=> b!4309222 (= e!2679866 (and tp!1324317 mapRes!20788))))

(declare-fun condMapEmpty!20788 () Bool)

(declare-fun mapDefault!20788 () List!48307)

(assert (=> b!4309222 (= condMapEmpty!20788 (= (arr!7496 (_values!4936 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48307)) mapDefault!20788)))))

(declare-fun mapNonEmpty!20788 () Bool)

(declare-fun tp!1324313 () Bool)

(declare-fun tp!1324319 () Bool)

(assert (=> mapNonEmpty!20788 (= mapRes!20788 (and tp!1324313 tp!1324319))))

(declare-fun mapValue!20788 () List!48307)

(declare-fun mapKey!20788 () (_ BitVec 32))

(declare-fun mapRest!20788 () (Array (_ BitVec 32) List!48307))

(assert (=> mapNonEmpty!20788 (= (arr!7496 (_values!4936 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) (store mapRest!20788 mapKey!20788 mapValue!20788))))

(declare-fun b!4309220 () Bool)

(declare-fun e!2679864 () Bool)

(assert (=> b!4309220 (= e!2679862 e!2679864)))

(declare-fun res!1766175 () Bool)

(assert (=> b!4309220 (=> (not res!1766175) (not e!2679864))))

(declare-fun key!2048 () K!9384)

(declare-fun contains!10150 (MutableMap!4561 K!9384) Bool)

(assert (=> b!4309220 (= res!1766175 (contains!10150 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46600 0))(
  ( (tuple2!46601 (_1!26579 (_ BitVec 64)) (_2!26579 List!48307)) )
))
(declare-datatypes ((List!48308 0))(
  ( (Nil!48184) (Cons!48184 (h!53618 tuple2!46600) (t!355107 List!48308)) )
))
(declare-datatypes ((ListLongMap!1005 0))(
  ( (ListLongMap!1006 (toList!2393 List!48308)) )
))
(declare-fun lt!1530138 () ListLongMap!1005)

(declare-fun map!10170 (MutLongMap!4655) ListLongMap!1005)

(assert (=> b!4309220 (= lt!1530138 (map!10170 (v!42300 (underlying!9540 thiss!42308))))))

(declare-datatypes ((ListMap!1675 0))(
  ( (ListMap!1676 (toList!2394 List!48307)) )
))
(declare-fun lt!1530141 () ListMap!1675)

(declare-fun map!10171 (MutableMap!4561) ListMap!1675)

(assert (=> b!4309220 (= lt!1530141 (map!10171 thiss!42308))))

(declare-fun res!1766173 () Bool)

(assert (=> start!414070 (=> (not res!1766173) (not e!2679862))))

(assert (=> start!414070 (= res!1766173 ((_ is HashMap!4561) thiss!42308))))

(assert (=> start!414070 e!2679862))

(assert (=> start!414070 e!2679865))

(declare-fun tp_is_empty!23725 () Bool)

(assert (=> start!414070 tp_is_empty!23725))

(declare-fun tp_is_empty!23727 () Bool)

(assert (=> start!414070 tp_is_empty!23727))

(declare-fun lt!1530139 () (_ BitVec 64))

(declare-fun b!4309223 () Bool)

(declare-fun v!9179 () V!9586)

(declare-datatypes ((tuple2!46602 0))(
  ( (tuple2!46603 (_1!26580 Bool) (_2!26580 MutLongMap!4655)) )
))
(declare-fun update!428 (MutLongMap!4655 (_ BitVec 64) List!48307) tuple2!46602)

(declare-fun removePairForKey!207 (List!48307 K!9384) List!48307)

(declare-fun apply!11004 (MutLongMap!4655 (_ BitVec 64)) List!48307)

(assert (=> b!4309223 (= e!2679864 (not ((_ is LongMap!4655) (_2!26580 (update!428 (v!42300 (underlying!9540 thiss!42308)) lt!1530139 (Cons!48183 (tuple2!46599 key!2048 v!9179) (removePairForKey!207 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139) key!2048)))))))))

(declare-fun hash!998 (Hashable!4571 K!9384) (_ BitVec 64))

(assert (=> b!4309223 (= lt!1530139 (hash!998 (hashF!6687 thiss!42308) key!2048))))

(declare-fun mapIsEmpty!20788 () Bool)

(assert (=> mapIsEmpty!20788 mapRes!20788))

(assert (= (and start!414070 res!1766173) b!4309218))

(assert (= (and b!4309218 res!1766174) b!4309220))

(assert (= (and b!4309220 res!1766175) b!4309223))

(assert (= (and b!4309222 condMapEmpty!20788) mapIsEmpty!20788))

(assert (= (and b!4309222 (not condMapEmpty!20788)) mapNonEmpty!20788))

(assert (= b!4309215 b!4309222))

(assert (= b!4309221 b!4309215))

(assert (= b!4309219 b!4309221))

(assert (= (and b!4309217 ((_ is LongMap!4655) (v!42300 (underlying!9540 thiss!42308)))) b!4309219))

(assert (= b!4309216 b!4309217))

(assert (= (and start!414070 ((_ is HashMap!4561) thiss!42308)) b!4309216))

(declare-fun m!4902303 () Bool)

(assert (=> b!4309218 m!4902303))

(declare-fun m!4902305 () Bool)

(assert (=> b!4309215 m!4902305))

(declare-fun m!4902307 () Bool)

(assert (=> b!4309215 m!4902307))

(declare-fun m!4902309 () Bool)

(assert (=> b!4309220 m!4902309))

(declare-fun m!4902311 () Bool)

(assert (=> b!4309220 m!4902311))

(declare-fun m!4902313 () Bool)

(assert (=> b!4309220 m!4902313))

(declare-fun m!4902315 () Bool)

(assert (=> mapNonEmpty!20788 m!4902315))

(declare-fun m!4902317 () Bool)

(assert (=> b!4309223 m!4902317))

(assert (=> b!4309223 m!4902317))

(declare-fun m!4902319 () Bool)

(assert (=> b!4309223 m!4902319))

(declare-fun m!4902321 () Bool)

(assert (=> b!4309223 m!4902321))

(declare-fun m!4902323 () Bool)

(assert (=> b!4309223 m!4902323))

(check-sat (not b!4309215) tp_is_empty!23725 (not b_next!129285) (not b!4309222) b_and!339995 b_and!339993 (not b!4309223) tp_is_empty!23727 (not b!4309220) (not b_next!129283) (not b!4309218) (not mapNonEmpty!20788))
(check-sat b_and!339993 b_and!339995 (not b_next!129285) (not b_next!129283))
(get-model)

(declare-fun bm!297757 () Bool)

(declare-fun call!297763 () ListLongMap!1005)

(assert (=> bm!297757 (= call!297763 (map!10170 (v!42300 (underlying!9540 thiss!42308))))))

(declare-fun call!297767 () (_ BitVec 64))

(declare-fun call!297762 () List!48307)

(declare-fun lt!1530201 () ListLongMap!1005)

(declare-fun bm!297758 () Bool)

(declare-fun c!732629 () Bool)

(declare-fun apply!11005 (ListLongMap!1005 (_ BitVec 64)) List!48307)

(assert (=> bm!297758 (= call!297762 (apply!11005 (ite c!732629 lt!1530201 call!297763) call!297767))))

(declare-fun bm!297759 () Bool)

(declare-fun call!297765 () Bool)

(declare-fun contains!10151 (ListLongMap!1005 (_ BitVec 64)) Bool)

(assert (=> bm!297759 (= call!297765 (contains!10151 (ite c!732629 lt!1530201 call!297763) call!297767))))

(declare-fun d!1267854 () Bool)

(declare-fun lt!1530183 () Bool)

(declare-fun contains!10152 (ListMap!1675 K!9384) Bool)

(assert (=> d!1267854 (= lt!1530183 (contains!10152 (map!10171 thiss!42308) key!2048))))

(declare-fun e!2679887 () Bool)

(assert (=> d!1267854 (= lt!1530183 e!2679887)))

(declare-fun res!1766184 () Bool)

(assert (=> d!1267854 (=> (not res!1766184) (not e!2679887))))

(declare-fun lt!1530188 () (_ BitVec 64))

(declare-fun contains!10153 (MutLongMap!4655 (_ BitVec 64)) Bool)

(assert (=> d!1267854 (= res!1766184 (contains!10153 (v!42300 (underlying!9540 thiss!42308)) lt!1530188))))

(declare-datatypes ((Unit!67283 0))(
  ( (Unit!67284) )
))
(declare-fun lt!1530186 () Unit!67283)

(declare-fun e!2679885 () Unit!67283)

(assert (=> d!1267854 (= lt!1530186 e!2679885)))

(declare-fun extractMap!325 (List!48308) ListMap!1675)

(assert (=> d!1267854 (= c!732629 (contains!10152 (extractMap!325 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308))))) key!2048))))

(declare-fun lt!1530185 () Unit!67283)

(declare-fun e!2679884 () Unit!67283)

(assert (=> d!1267854 (= lt!1530185 e!2679884)))

(declare-fun c!732627 () Bool)

(assert (=> d!1267854 (= c!732627 (contains!10153 (v!42300 (underlying!9540 thiss!42308)) lt!1530188))))

(assert (=> d!1267854 (= lt!1530188 (hash!998 (hashF!6687 thiss!42308) key!2048))))

(assert (=> d!1267854 (valid!3643 thiss!42308)))

(assert (=> d!1267854 (= (contains!10150 thiss!42308 key!2048) lt!1530183)))

(declare-fun b!4309246 () Bool)

(declare-fun e!2679889 () Unit!67283)

(declare-fun Unit!67285 () Unit!67283)

(assert (=> b!4309246 (= e!2679889 Unit!67285)))

(declare-fun b!4309247 () Bool)

(assert (=> b!4309247 false))

(declare-fun lt!1530198 () Unit!67283)

(declare-fun lt!1530196 () Unit!67283)

(assert (=> b!4309247 (= lt!1530198 lt!1530196)))

(declare-fun lt!1530184 () ListLongMap!1005)

(assert (=> b!4309247 (contains!10152 (extractMap!325 (toList!2393 lt!1530184)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!130 (ListLongMap!1005 K!9384 Hashable!4571) Unit!67283)

(assert (=> b!4309247 (= lt!1530196 (lemmaInLongMapThenInGenericMap!130 lt!1530184 key!2048 (hashF!6687 thiss!42308)))))

(assert (=> b!4309247 (= lt!1530184 call!297763)))

(declare-fun e!2679883 () Unit!67283)

(declare-fun Unit!67286 () Unit!67283)

(assert (=> b!4309247 (= e!2679883 Unit!67286)))

(declare-fun b!4309248 () Bool)

(declare-fun e!2679888 () Bool)

(declare-fun call!297764 () Bool)

(assert (=> b!4309248 (= e!2679888 call!297764)))

(declare-fun b!4309249 () Bool)

(declare-fun Unit!67287 () Unit!67283)

(assert (=> b!4309249 (= e!2679884 Unit!67287)))

(declare-fun lambda!132867 () Int)

(declare-fun b!4309250 () Bool)

(declare-fun forallContained!1497 (List!48308 Int tuple2!46600) Unit!67283)

(assert (=> b!4309250 (= e!2679884 (forallContained!1497 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308)))) lambda!132867 (tuple2!46601 lt!1530188 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530188))))))

(declare-fun c!732628 () Bool)

(declare-fun contains!10154 (List!48308 tuple2!46600) Bool)

(assert (=> b!4309250 (= c!732628 (not (contains!10154 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308)))) (tuple2!46601 lt!1530188 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530188)))))))

(declare-fun lt!1530194 () Unit!67283)

(assert (=> b!4309250 (= lt!1530194 e!2679889)))

(declare-fun b!4309251 () Bool)

(assert (=> b!4309251 (= e!2679885 e!2679883)))

(declare-fun res!1766183 () Bool)

(assert (=> b!4309251 (= res!1766183 call!297765)))

(declare-fun e!2679886 () Bool)

(assert (=> b!4309251 (=> (not res!1766183) (not e!2679886))))

(declare-fun c!732630 () Bool)

(assert (=> b!4309251 (= c!732630 e!2679886)))

(declare-fun bm!297760 () Bool)

(declare-datatypes ((Option!10222 0))(
  ( (None!10221) (Some!10221 (v!42305 tuple2!46598)) )
))
(declare-fun call!297766 () Option!10222)

(declare-fun isDefined!7524 (Option!10222) Bool)

(assert (=> bm!297760 (= call!297764 (isDefined!7524 call!297766))))

(declare-fun bm!297761 () Bool)

(assert (=> bm!297761 (= call!297767 (hash!998 (hashF!6687 thiss!42308) key!2048))))

(declare-fun b!4309252 () Bool)

(declare-fun Unit!67288 () Unit!67283)

(assert (=> b!4309252 (= e!2679883 Unit!67288)))

(declare-fun b!4309253 () Bool)

(assert (=> b!4309253 false))

(declare-fun lt!1530197 () Unit!67283)

(declare-fun lt!1530200 () Unit!67283)

(assert (=> b!4309253 (= lt!1530197 lt!1530200)))

(declare-fun lt!1530192 () List!48308)

(declare-fun lt!1530187 () List!48307)

(assert (=> b!4309253 (contains!10154 lt!1530192 (tuple2!46601 lt!1530188 lt!1530187))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!141 (List!48308 (_ BitVec 64) List!48307) Unit!67283)

(assert (=> b!4309253 (= lt!1530200 (lemmaGetValueByKeyImpliesContainsTuple!141 lt!1530192 lt!1530188 lt!1530187))))

(assert (=> b!4309253 (= lt!1530187 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530188))))

(assert (=> b!4309253 (= lt!1530192 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308)))))))

(declare-fun lt!1530189 () Unit!67283)

(declare-fun lt!1530193 () Unit!67283)

(assert (=> b!4309253 (= lt!1530189 lt!1530193)))

(declare-fun lt!1530190 () List!48308)

(declare-datatypes ((Option!10223 0))(
  ( (None!10222) (Some!10222 (v!42306 List!48307)) )
))
(declare-fun isDefined!7525 (Option!10223) Bool)

(declare-fun getValueByKey!251 (List!48308 (_ BitVec 64)) Option!10223)

(assert (=> b!4309253 (isDefined!7525 (getValueByKey!251 lt!1530190 lt!1530188))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!171 (List!48308 (_ BitVec 64)) Unit!67283)

(assert (=> b!4309253 (= lt!1530193 (lemmaContainsKeyImpliesGetValueByKeyDefined!171 lt!1530190 lt!1530188))))

(assert (=> b!4309253 (= lt!1530190 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308)))))))

(declare-fun lt!1530191 () Unit!67283)

(declare-fun lt!1530195 () Unit!67283)

(assert (=> b!4309253 (= lt!1530191 lt!1530195)))

(declare-fun lt!1530182 () List!48308)

(declare-fun containsKey!305 (List!48308 (_ BitVec 64)) Bool)

(assert (=> b!4309253 (containsKey!305 lt!1530182 lt!1530188)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!131 (List!48308 (_ BitVec 64)) Unit!67283)

(assert (=> b!4309253 (= lt!1530195 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!131 lt!1530182 lt!1530188))))

(assert (=> b!4309253 (= lt!1530182 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308)))))))

(declare-fun Unit!67289 () Unit!67283)

(assert (=> b!4309253 (= e!2679889 Unit!67289)))

(declare-fun b!4309254 () Bool)

(assert (=> b!4309254 (= e!2679886 call!297764)))

(declare-fun bm!297762 () Bool)

(declare-fun getPair!130 (List!48307 K!9384) Option!10222)

(assert (=> bm!297762 (= call!297766 (getPair!130 call!297762 key!2048))))

(declare-fun b!4309255 () Bool)

(assert (=> b!4309255 (= e!2679887 (isDefined!7524 (getPair!130 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530188) key!2048)))))

(declare-fun b!4309256 () Bool)

(declare-fun lt!1530199 () Unit!67283)

(assert (=> b!4309256 (= e!2679885 lt!1530199)))

(assert (=> b!4309256 (= lt!1530201 call!297763)))

(declare-fun lemmaInGenericMapThenInLongMap!130 (ListLongMap!1005 K!9384 Hashable!4571) Unit!67283)

(assert (=> b!4309256 (= lt!1530199 (lemmaInGenericMapThenInLongMap!130 lt!1530201 key!2048 (hashF!6687 thiss!42308)))))

(declare-fun res!1766182 () Bool)

(assert (=> b!4309256 (= res!1766182 call!297765)))

(assert (=> b!4309256 (=> (not res!1766182) (not e!2679888))))

(assert (=> b!4309256 e!2679888))

(assert (= (and d!1267854 c!732627) b!4309250))

(assert (= (and d!1267854 (not c!732627)) b!4309249))

(assert (= (and b!4309250 c!732628) b!4309253))

(assert (= (and b!4309250 (not c!732628)) b!4309246))

(assert (= (and d!1267854 c!732629) b!4309256))

(assert (= (and d!1267854 (not c!732629)) b!4309251))

(assert (= (and b!4309256 res!1766182) b!4309248))

(assert (= (and b!4309251 res!1766183) b!4309254))

(assert (= (and b!4309251 c!732630) b!4309247))

(assert (= (and b!4309251 (not c!732630)) b!4309252))

(assert (= (or b!4309256 b!4309251 b!4309254 b!4309247) bm!297757))

(assert (= (or b!4309256 b!4309248 b!4309251 b!4309254) bm!297761))

(assert (= (or b!4309248 b!4309254) bm!297758))

(assert (= (or b!4309256 b!4309251) bm!297759))

(assert (= (or b!4309248 b!4309254) bm!297762))

(assert (= (or b!4309248 b!4309254) bm!297760))

(assert (= (and d!1267854 res!1766184) b!4309255))

(assert (=> bm!297757 m!4902311))

(declare-fun m!4902325 () Bool)

(assert (=> b!4309255 m!4902325))

(assert (=> b!4309255 m!4902325))

(declare-fun m!4902327 () Bool)

(assert (=> b!4309255 m!4902327))

(assert (=> b!4309255 m!4902327))

(declare-fun m!4902329 () Bool)

(assert (=> b!4309255 m!4902329))

(declare-fun m!4902331 () Bool)

(assert (=> bm!297762 m!4902331))

(declare-fun m!4902333 () Bool)

(assert (=> b!4309256 m!4902333))

(declare-fun m!4902335 () Bool)

(assert (=> b!4309247 m!4902335))

(assert (=> b!4309247 m!4902335))

(declare-fun m!4902337 () Bool)

(assert (=> b!4309247 m!4902337))

(declare-fun m!4902339 () Bool)

(assert (=> b!4309247 m!4902339))

(declare-fun m!4902341 () Bool)

(assert (=> bm!297760 m!4902341))

(assert (=> b!4309250 m!4902311))

(assert (=> b!4309250 m!4902325))

(declare-fun m!4902343 () Bool)

(assert (=> b!4309250 m!4902343))

(declare-fun m!4902345 () Bool)

(assert (=> b!4309250 m!4902345))

(declare-fun m!4902347 () Bool)

(assert (=> b!4309253 m!4902347))

(declare-fun m!4902349 () Bool)

(assert (=> b!4309253 m!4902349))

(assert (=> b!4309253 m!4902325))

(assert (=> b!4309253 m!4902311))

(declare-fun m!4902351 () Bool)

(assert (=> b!4309253 m!4902351))

(declare-fun m!4902353 () Bool)

(assert (=> b!4309253 m!4902353))

(declare-fun m!4902355 () Bool)

(assert (=> b!4309253 m!4902355))

(assert (=> b!4309253 m!4902353))

(declare-fun m!4902357 () Bool)

(assert (=> b!4309253 m!4902357))

(declare-fun m!4902359 () Bool)

(assert (=> b!4309253 m!4902359))

(declare-fun m!4902361 () Bool)

(assert (=> bm!297759 m!4902361))

(declare-fun m!4902363 () Bool)

(assert (=> bm!297758 m!4902363))

(assert (=> d!1267854 m!4902313))

(declare-fun m!4902365 () Bool)

(assert (=> d!1267854 m!4902365))

(assert (=> d!1267854 m!4902311))

(declare-fun m!4902367 () Bool)

(assert (=> d!1267854 m!4902367))

(assert (=> d!1267854 m!4902303))

(declare-fun m!4902369 () Bool)

(assert (=> d!1267854 m!4902369))

(assert (=> d!1267854 m!4902369))

(declare-fun m!4902371 () Bool)

(assert (=> d!1267854 m!4902371))

(assert (=> d!1267854 m!4902313))

(assert (=> d!1267854 m!4902323))

(assert (=> bm!297761 m!4902323))

(assert (=> b!4309220 d!1267854))

(declare-fun d!1267856 () Bool)

(declare-fun map!10172 (LongMapFixedSize!9310) ListLongMap!1005)

(assert (=> d!1267856 (= (map!10170 (v!42300 (underlying!9540 thiss!42308))) (map!10172 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308))))))))

(declare-fun bs!604982 () Bool)

(assert (= bs!604982 d!1267856))

(declare-fun m!4902373 () Bool)

(assert (=> bs!604982 m!4902373))

(assert (=> b!4309220 d!1267856))

(declare-fun d!1267858 () Bool)

(declare-fun lt!1530204 () ListMap!1675)

(declare-fun invariantList!569 (List!48307) Bool)

(assert (=> d!1267858 (invariantList!569 (toList!2394 lt!1530204))))

(assert (=> d!1267858 (= lt!1530204 (extractMap!325 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308))))))))

(assert (=> d!1267858 (valid!3643 thiss!42308)))

(assert (=> d!1267858 (= (map!10171 thiss!42308) lt!1530204)))

(declare-fun bs!604983 () Bool)

(assert (= bs!604983 d!1267858))

(declare-fun m!4902375 () Bool)

(assert (=> bs!604983 m!4902375))

(assert (=> bs!604983 m!4902311))

(assert (=> bs!604983 m!4902369))

(assert (=> bs!604983 m!4902303))

(assert (=> b!4309220 d!1267858))

(declare-fun d!1267860 () Bool)

(assert (=> d!1267860 (= (array_inv!5377 (_keys!4955 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) (bvsge (size!35534 (_keys!4955 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4309215 d!1267860))

(declare-fun d!1267862 () Bool)

(assert (=> d!1267862 (= (array_inv!5378 (_values!4936 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) (bvsge (size!35535 (_values!4936 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4309215 d!1267862))

(declare-fun bs!604984 () Bool)

(declare-fun b!4309261 () Bool)

(assert (= bs!604984 (and b!4309261 b!4309250)))

(declare-fun lambda!132870 () Int)

(assert (=> bs!604984 (= lambda!132870 lambda!132867)))

(declare-fun d!1267864 () Bool)

(declare-fun res!1766189 () Bool)

(declare-fun e!2679892 () Bool)

(assert (=> d!1267864 (=> (not res!1766189) (not e!2679892))))

(declare-fun valid!3644 (MutLongMap!4655) Bool)

(assert (=> d!1267864 (= res!1766189 (valid!3644 (v!42300 (underlying!9540 thiss!42308))))))

(assert (=> d!1267864 (= (valid!3643 thiss!42308) e!2679892)))

(declare-fun res!1766190 () Bool)

(assert (=> b!4309261 (=> (not res!1766190) (not e!2679892))))

(declare-fun forall!8725 (List!48308 Int) Bool)

(assert (=> b!4309261 (= res!1766190 (forall!8725 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308)))) lambda!132870))))

(declare-fun b!4309262 () Bool)

(declare-fun allKeysSameHashInMap!333 (ListLongMap!1005 Hashable!4571) Bool)

(assert (=> b!4309262 (= e!2679892 (allKeysSameHashInMap!333 (map!10170 (v!42300 (underlying!9540 thiss!42308))) (hashF!6687 thiss!42308)))))

(assert (= (and d!1267864 res!1766189) b!4309261))

(assert (= (and b!4309261 res!1766190) b!4309262))

(declare-fun m!4902377 () Bool)

(assert (=> d!1267864 m!4902377))

(assert (=> b!4309261 m!4902311))

(declare-fun m!4902379 () Bool)

(assert (=> b!4309261 m!4902379))

(assert (=> b!4309262 m!4902311))

(assert (=> b!4309262 m!4902311))

(declare-fun m!4902381 () Bool)

(assert (=> b!4309262 m!4902381))

(assert (=> b!4309218 d!1267864))

(declare-fun d!1267866 () Bool)

(declare-fun e!2679907 () Bool)

(assert (=> d!1267866 e!2679907))

(declare-fun res!1766198 () Bool)

(assert (=> d!1267866 (=> (not res!1766198) (not e!2679907))))

(declare-fun lt!1530215 () tuple2!46602)

(assert (=> d!1267866 (= res!1766198 ((_ is LongMap!4655) (_2!26580 lt!1530215)))))

(declare-fun e!2679906 () tuple2!46602)

(assert (=> d!1267866 (= lt!1530215 e!2679906)))

(declare-fun c!732639 () Bool)

(declare-fun lt!1530213 () tuple2!46602)

(assert (=> d!1267866 (= c!732639 (_1!26580 lt!1530213))))

(declare-fun e!2679903 () tuple2!46602)

(assert (=> d!1267866 (= lt!1530213 e!2679903)))

(declare-fun c!732637 () Bool)

(declare-fun imbalanced!48 (MutLongMap!4655) Bool)

(assert (=> d!1267866 (= c!732637 (imbalanced!48 (v!42300 (underlying!9540 thiss!42308))))))

(assert (=> d!1267866 (valid!3644 (v!42300 (underlying!9540 thiss!42308)))))

(assert (=> d!1267866 (= (update!428 (v!42300 (underlying!9540 thiss!42308)) lt!1530139 (Cons!48183 (tuple2!46599 key!2048 v!9179) (removePairForKey!207 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139) key!2048))) lt!1530215)))

(declare-fun call!297772 () ListLongMap!1005)

(declare-fun call!297773 () ListLongMap!1005)

(declare-fun e!2679904 () Bool)

(declare-fun b!4309281 () Bool)

(declare-fun +!265 (ListLongMap!1005 tuple2!46600) ListLongMap!1005)

(assert (=> b!4309281 (= e!2679904 (= call!297773 (+!265 call!297772 (tuple2!46601 lt!1530139 (Cons!48183 (tuple2!46599 key!2048 v!9179) (removePairForKey!207 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139) key!2048))))))))

(declare-fun b!4309282 () Bool)

(declare-fun lt!1530216 () tuple2!46602)

(assert (=> b!4309282 (= e!2679903 (tuple2!46603 (_1!26580 lt!1530216) (_2!26580 lt!1530216)))))

(declare-fun repack!52 (MutLongMap!4655) tuple2!46602)

(assert (=> b!4309282 (= lt!1530216 (repack!52 (v!42300 (underlying!9540 thiss!42308))))))

(declare-fun bm!297767 () Bool)

(assert (=> bm!297767 (= call!297772 (map!10170 (v!42300 (underlying!9540 thiss!42308))))))

(declare-fun b!4309283 () Bool)

(declare-fun e!2679905 () Bool)

(assert (=> b!4309283 (= e!2679905 (= call!297773 call!297772))))

(declare-fun b!4309284 () Bool)

(assert (=> b!4309284 (= e!2679907 e!2679905)))

(declare-fun c!732638 () Bool)

(assert (=> b!4309284 (= c!732638 (_1!26580 lt!1530215))))

(declare-fun b!4309285 () Bool)

(assert (=> b!4309285 (= e!2679906 (tuple2!46603 false (_2!26580 lt!1530213)))))

(declare-fun bm!297768 () Bool)

(assert (=> bm!297768 (= call!297773 (map!10170 (_2!26580 lt!1530215)))))

(declare-fun b!4309286 () Bool)

(assert (=> b!4309286 (= e!2679903 (tuple2!46603 true (v!42300 (underlying!9540 thiss!42308))))))

(declare-fun b!4309287 () Bool)

(assert (=> b!4309287 (= e!2679905 e!2679904)))

(declare-fun res!1766199 () Bool)

(assert (=> b!4309287 (= res!1766199 (contains!10151 call!297773 lt!1530139))))

(assert (=> b!4309287 (=> (not res!1766199) (not e!2679904))))

(declare-fun b!4309288 () Bool)

(declare-datatypes ((tuple2!46604 0))(
  ( (tuple2!46605 (_1!26581 Bool) (_2!26581 LongMapFixedSize!9310)) )
))
(declare-fun lt!1530214 () tuple2!46604)

(assert (=> b!4309288 (= e!2679906 (tuple2!46603 (_1!26581 lt!1530214) (LongMap!4655 (Cell!18430 (_2!26581 lt!1530214)))))))

(declare-fun update!429 (LongMapFixedSize!9310 (_ BitVec 64) List!48307) tuple2!46604)

(assert (=> b!4309288 (= lt!1530214 (update!429 (v!42299 (underlying!9539 (_2!26580 lt!1530213))) lt!1530139 (Cons!48183 (tuple2!46599 key!2048 v!9179) (removePairForKey!207 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139) key!2048))))))

(declare-fun b!4309289 () Bool)

(declare-fun res!1766197 () Bool)

(assert (=> b!4309289 (=> (not res!1766197) (not e!2679907))))

(assert (=> b!4309289 (= res!1766197 (valid!3644 (_2!26580 lt!1530215)))))

(assert (= (and d!1267866 c!732637) b!4309282))

(assert (= (and d!1267866 (not c!732637)) b!4309286))

(assert (= (and d!1267866 c!732639) b!4309288))

(assert (= (and d!1267866 (not c!732639)) b!4309285))

(assert (= (and d!1267866 res!1766198) b!4309289))

(assert (= (and b!4309289 res!1766197) b!4309284))

(assert (= (and b!4309284 c!732638) b!4309287))

(assert (= (and b!4309284 (not c!732638)) b!4309283))

(assert (= (and b!4309287 res!1766199) b!4309281))

(assert (= (or b!4309287 b!4309281 b!4309283) bm!297768))

(assert (= (or b!4309281 b!4309283) bm!297767))

(declare-fun m!4902383 () Bool)

(assert (=> b!4309289 m!4902383))

(declare-fun m!4902385 () Bool)

(assert (=> bm!297768 m!4902385))

(declare-fun m!4902387 () Bool)

(assert (=> b!4309281 m!4902387))

(assert (=> bm!297767 m!4902311))

(declare-fun m!4902389 () Bool)

(assert (=> b!4309288 m!4902389))

(declare-fun m!4902391 () Bool)

(assert (=> d!1267866 m!4902391))

(assert (=> d!1267866 m!4902377))

(declare-fun m!4902393 () Bool)

(assert (=> b!4309282 m!4902393))

(declare-fun m!4902395 () Bool)

(assert (=> b!4309287 m!4902395))

(assert (=> b!4309223 d!1267866))

(declare-fun b!4309300 () Bool)

(declare-fun e!2679913 () List!48307)

(assert (=> b!4309300 (= e!2679913 (Cons!48183 (h!53617 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139)) (removePairForKey!207 (t!355106 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139)) key!2048)))))

(declare-fun b!4309299 () Bool)

(declare-fun e!2679912 () List!48307)

(assert (=> b!4309299 (= e!2679912 e!2679913)))

(declare-fun c!732644 () Bool)

(assert (=> b!4309299 (= c!732644 ((_ is Cons!48183) (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139)))))

(declare-fun b!4309301 () Bool)

(assert (=> b!4309301 (= e!2679913 Nil!48183)))

(declare-fun d!1267868 () Bool)

(declare-fun lt!1530219 () List!48307)

(declare-fun containsKey!306 (List!48307 K!9384) Bool)

(assert (=> d!1267868 (not (containsKey!306 lt!1530219 key!2048))))

(assert (=> d!1267868 (= lt!1530219 e!2679912)))

(declare-fun c!732645 () Bool)

(assert (=> d!1267868 (= c!732645 (and ((_ is Cons!48183) (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139)) (= (_1!26578 (h!53617 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139))) key!2048)))))

(declare-fun noDuplicateKeys!207 (List!48307) Bool)

(assert (=> d!1267868 (noDuplicateKeys!207 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139))))

(assert (=> d!1267868 (= (removePairForKey!207 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139) key!2048) lt!1530219)))

(declare-fun b!4309298 () Bool)

(assert (=> b!4309298 (= e!2679912 (t!355106 (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139)))))

(assert (= (and d!1267868 c!732645) b!4309298))

(assert (= (and d!1267868 (not c!732645)) b!4309299))

(assert (= (and b!4309299 c!732644) b!4309300))

(assert (= (and b!4309299 (not c!732644)) b!4309301))

(declare-fun m!4902397 () Bool)

(assert (=> b!4309300 m!4902397))

(declare-fun m!4902399 () Bool)

(assert (=> d!1267868 m!4902399))

(assert (=> d!1267868 m!4902317))

(declare-fun m!4902401 () Bool)

(assert (=> d!1267868 m!4902401))

(assert (=> b!4309223 d!1267868))

(declare-fun d!1267870 () Bool)

(declare-fun e!2679916 () Bool)

(assert (=> d!1267870 e!2679916))

(declare-fun c!732648 () Bool)

(assert (=> d!1267870 (= c!732648 (contains!10153 (v!42300 (underlying!9540 thiss!42308)) lt!1530139))))

(declare-fun lt!1530222 () List!48307)

(declare-fun apply!11006 (LongMapFixedSize!9310 (_ BitVec 64)) List!48307)

(assert (=> d!1267870 (= lt!1530222 (apply!11006 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))) lt!1530139))))

(assert (=> d!1267870 (valid!3644 (v!42300 (underlying!9540 thiss!42308)))))

(assert (=> d!1267870 (= (apply!11004 (v!42300 (underlying!9540 thiss!42308)) lt!1530139) lt!1530222)))

(declare-fun b!4309306 () Bool)

(declare-fun get!15587 (Option!10223) List!48307)

(assert (=> b!4309306 (= e!2679916 (= lt!1530222 (get!15587 (getValueByKey!251 (toList!2393 (map!10170 (v!42300 (underlying!9540 thiss!42308)))) lt!1530139))))))

(declare-fun b!4309307 () Bool)

(declare-fun dynLambda!20421 (Int (_ BitVec 64)) List!48307)

(assert (=> b!4309307 (= e!2679916 (= lt!1530222 (dynLambda!20421 (defaultEntry!5040 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308))))) lt!1530139)))))

(assert (=> b!4309307 ((_ is LongMap!4655) (v!42300 (underlying!9540 thiss!42308)))))

(assert (= (and d!1267870 c!732648) b!4309306))

(assert (= (and d!1267870 (not c!732648)) b!4309307))

(declare-fun b_lambda!126583 () Bool)

(assert (=> (not b_lambda!126583) (not b!4309307)))

(declare-fun t!355109 () Bool)

(declare-fun tb!257285 () Bool)

(assert (=> (and b!4309215 (= (defaultEntry!5040 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308))))) (defaultEntry!5040 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308)))))) t!355109) tb!257285))

(assert (=> b!4309307 t!355109))

(declare-fun result!314670 () Bool)

(declare-fun b_and!339997 () Bool)

(assert (= b_and!339993 (and (=> t!355109 result!314670) b_and!339997)))

(declare-fun m!4902403 () Bool)

(assert (=> d!1267870 m!4902403))

(declare-fun m!4902405 () Bool)

(assert (=> d!1267870 m!4902405))

(assert (=> d!1267870 m!4902377))

(assert (=> b!4309306 m!4902311))

(declare-fun m!4902407 () Bool)

(assert (=> b!4309306 m!4902407))

(assert (=> b!4309306 m!4902407))

(declare-fun m!4902409 () Bool)

(assert (=> b!4309306 m!4902409))

(declare-fun m!4902411 () Bool)

(assert (=> b!4309307 m!4902411))

(assert (=> b!4309223 d!1267870))

(declare-fun d!1267872 () Bool)

(declare-fun hash!999 (Hashable!4571 K!9384) (_ BitVec 64))

(assert (=> d!1267872 (= (hash!998 (hashF!6687 thiss!42308) key!2048) (hash!999 (hashF!6687 thiss!42308) key!2048))))

(declare-fun bs!604985 () Bool)

(assert (= bs!604985 d!1267872))

(declare-fun m!4902413 () Bool)

(assert (=> bs!604985 m!4902413))

(assert (=> b!4309223 d!1267872))

(declare-fun e!2679919 () Bool)

(declare-fun b!4309312 () Bool)

(declare-fun tp!1324322 () Bool)

(assert (=> b!4309312 (= e!2679919 (and tp_is_empty!23725 tp_is_empty!23727 tp!1324322))))

(assert (=> b!4309215 (= tp!1324315 e!2679919)))

(assert (= (and b!4309215 ((_ is Cons!48183) (zeroValue!4914 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308))))))) b!4309312))

(declare-fun tp!1324323 () Bool)

(declare-fun e!2679920 () Bool)

(declare-fun b!4309313 () Bool)

(assert (=> b!4309313 (= e!2679920 (and tp_is_empty!23725 tp_is_empty!23727 tp!1324323))))

(assert (=> b!4309215 (= tp!1324316 e!2679920)))

(assert (= (and b!4309215 ((_ is Cons!48183) (minValue!4914 (v!42299 (underlying!9539 (v!42300 (underlying!9540 thiss!42308))))))) b!4309313))

(declare-fun b!4309314 () Bool)

(declare-fun e!2679921 () Bool)

(declare-fun tp!1324324 () Bool)

(assert (=> b!4309314 (= e!2679921 (and tp_is_empty!23725 tp_is_empty!23727 tp!1324324))))

(assert (=> b!4309222 (= tp!1324317 e!2679921)))

(assert (= (and b!4309222 ((_ is Cons!48183) mapDefault!20788)) b!4309314))

(declare-fun tp!1324333 () Bool)

(declare-fun e!2679926 () Bool)

(declare-fun b!4309321 () Bool)

(assert (=> b!4309321 (= e!2679926 (and tp_is_empty!23725 tp_is_empty!23727 tp!1324333))))

(declare-fun mapIsEmpty!20791 () Bool)

(declare-fun mapRes!20791 () Bool)

(assert (=> mapIsEmpty!20791 mapRes!20791))

(declare-fun tp!1324332 () Bool)

(declare-fun e!2679927 () Bool)

(declare-fun b!4309322 () Bool)

(assert (=> b!4309322 (= e!2679927 (and tp_is_empty!23725 tp_is_empty!23727 tp!1324332))))

(declare-fun mapNonEmpty!20791 () Bool)

(declare-fun tp!1324331 () Bool)

(assert (=> mapNonEmpty!20791 (= mapRes!20791 (and tp!1324331 e!2679926))))

(declare-fun mapValue!20791 () List!48307)

(declare-fun mapKey!20791 () (_ BitVec 32))

(declare-fun mapRest!20791 () (Array (_ BitVec 32) List!48307))

(assert (=> mapNonEmpty!20791 (= mapRest!20788 (store mapRest!20791 mapKey!20791 mapValue!20791))))

(declare-fun condMapEmpty!20791 () Bool)

(declare-fun mapDefault!20791 () List!48307)

(assert (=> mapNonEmpty!20788 (= condMapEmpty!20791 (= mapRest!20788 ((as const (Array (_ BitVec 32) List!48307)) mapDefault!20791)))))

(assert (=> mapNonEmpty!20788 (= tp!1324313 (and e!2679927 mapRes!20791))))

(assert (= (and mapNonEmpty!20788 condMapEmpty!20791) mapIsEmpty!20791))

(assert (= (and mapNonEmpty!20788 (not condMapEmpty!20791)) mapNonEmpty!20791))

(assert (= (and mapNonEmpty!20791 ((_ is Cons!48183) mapValue!20791)) b!4309321))

(assert (= (and mapNonEmpty!20788 ((_ is Cons!48183) mapDefault!20791)) b!4309322))

(declare-fun m!4902415 () Bool)

(assert (=> mapNonEmpty!20791 m!4902415))

(declare-fun b!4309323 () Bool)

(declare-fun tp!1324334 () Bool)

(declare-fun e!2679928 () Bool)

(assert (=> b!4309323 (= e!2679928 (and tp_is_empty!23725 tp_is_empty!23727 tp!1324334))))

(assert (=> mapNonEmpty!20788 (= tp!1324319 e!2679928)))

(assert (= (and mapNonEmpty!20788 ((_ is Cons!48183) mapValue!20788)) b!4309323))

(declare-fun b_lambda!126585 () Bool)

(assert (= b_lambda!126583 (or (and b!4309215 b_free!128579) b_lambda!126585)))

(check-sat (not bm!297762) (not bm!297760) (not b!4309323) (not b_next!129285) (not b!4309255) (not bm!297768) (not b!4309289) (not b!4309262) (not b!4309282) tp_is_empty!23727 (not b!4309321) (not tb!257285) (not b!4309256) (not bm!297767) (not b!4309250) b_and!339997 tp_is_empty!23725 (not d!1267854) (not b!4309306) (not d!1267868) (not b!4309288) (not b!4309253) (not b!4309261) (not bm!297761) (not d!1267870) (not bm!297757) (not b!4309281) (not b!4309300) (not bm!297758) (not b_lambda!126585) (not b!4309314) (not b!4309313) (not d!1267856) (not d!1267858) (not b!4309322) b_and!339995 (not b!4309247) (not bm!297759) (not d!1267872) (not b!4309287) (not b!4309312) (not mapNonEmpty!20791) (not d!1267866) (not b_next!129283) (not d!1267864))
(check-sat b_and!339997 b_and!339995 (not b_next!129285) (not b_next!129283))
