; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486802 () Bool)

(assert start!486802)

(declare-fun b!4760188 () Bool)

(declare-fun b_free!129327 () Bool)

(declare-fun b_next!130031 () Bool)

(assert (=> b!4760188 (= b_free!129327 (not b_next!130031))))

(declare-fun tp!1353224 () Bool)

(declare-fun b_and!340951 () Bool)

(assert (=> b!4760188 (= tp!1353224 b_and!340951)))

(declare-fun b!4760189 () Bool)

(declare-fun b_free!129329 () Bool)

(declare-fun b_next!130033 () Bool)

(assert (=> b!4760189 (= b_free!129329 (not b_next!130033))))

(declare-fun tp!1353222 () Bool)

(declare-fun b_and!340953 () Bool)

(assert (=> b!4760189 (= tp!1353222 b_and!340953)))

(declare-fun b!4760180 () Bool)

(declare-fun e!2970341 () Bool)

(declare-datatypes ((C!26300 0))(
  ( (C!26301 (val!20138 Int)) )
))
(declare-datatypes ((List!53466 0))(
  ( (Nil!53342) (Cons!53342 (h!59753 C!26300) (t!360826 List!53466)) )
))
(declare-datatypes ((IArray!29045 0))(
  ( (IArray!29046 (innerList!14580 List!53466)) )
))
(declare-datatypes ((Conc!14492 0))(
  ( (Node!14492 (left!39129 Conc!14492) (right!39459 Conc!14492) (csize!29214 Int) (cheight!14703 Int)) (Leaf!23590 (xs!17798 IArray!29045) (csize!29215 Int)) (Empty!14492) )
))
(declare-datatypes ((BalanceConc!28474 0))(
  ( (BalanceConc!28475 (c!812095 Conc!14492)) )
))
(declare-fun localTotalInput!8 () BalanceConc!28474)

(declare-fun tp!1353219 () Bool)

(declare-fun inv!68856 (Conc!14492) Bool)

(assert (=> b!4760180 (= e!2970341 (and (inv!68856 (c!812095 localTotalInput!8)) tp!1353219))))

(declare-fun b!4760181 () Bool)

(declare-fun e!2970343 () Bool)

(declare-fun tp!1353223 () Bool)

(declare-fun mapRes!21578 () Bool)

(assert (=> b!4760181 (= e!2970343 (and tp!1353223 mapRes!21578))))

(declare-fun condMapEmpty!21578 () Bool)

(declare-datatypes ((Regex!13051 0))(
  ( (ElementMatch!13051 (c!812096 C!26300)) (Concat!21370 (regOne!26614 Regex!13051) (regTwo!26614 Regex!13051)) (EmptyExpr!13051) (Star!13051 (reg!13380 Regex!13051)) (EmptyLang!13051) (Union!13051 (regOne!26615 Regex!13051) (regTwo!26615 Regex!13051)) )
))
(declare-datatypes ((List!53467 0))(
  ( (Nil!53343) (Cons!53343 (h!59754 Regex!13051) (t!360827 List!53467)) )
))
(declare-datatypes ((Context!5882 0))(
  ( (Context!5883 (exprs!3441 List!53467)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55274 0))(
  ( (tuple2!55275 (_1!30931 (InoxSet Context!5882)) (_2!30931 Int)) )
))
(declare-datatypes ((tuple2!55276 0))(
  ( (tuple2!55277 (_1!30932 tuple2!55274) (_2!30932 Int)) )
))
(declare-datatypes ((List!53468 0))(
  ( (Nil!53344) (Cons!53344 (h!59755 tuple2!55276) (t!360828 List!53468)) )
))
(declare-datatypes ((Hashable!6514 0))(
  ( (HashableExt!6513 (__x!32307 Int)) )
))
(declare-datatypes ((array!17690 0))(
  ( (array!17691 (arr!7891 (Array (_ BitVec 32) (_ BitVec 64))) (size!36114 (_ BitVec 32))) )
))
(declare-datatypes ((array!17692 0))(
  ( (array!17693 (arr!7892 (Array (_ BitVec 32) List!53468)) (size!36115 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9706 0))(
  ( (LongMapFixedSize!9707 (defaultEntry!5267 Int) (mask!14565 (_ BitVec 32)) (extraKeys!5123 (_ BitVec 32)) (zeroValue!5136 List!53468) (minValue!5136 List!53468) (_size!9731 (_ BitVec 32)) (_keys!5188 array!17690) (_values!5161 array!17692) (_vacant!4918 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19177 0))(
  ( (Cell!19178 (v!47394 LongMapFixedSize!9706)) )
))
(declare-datatypes ((MutLongMap!4853 0))(
  ( (LongMap!4853 (underlying!9913 Cell!19177)) (MutLongMapExt!4852 (__x!32308 Int)) )
))
(declare-datatypes ((Cell!19179 0))(
  ( (Cell!19180 (v!47395 MutLongMap!4853)) )
))
(declare-datatypes ((MutableMap!4737 0))(
  ( (MutableMapExt!4736 (__x!32309 Int)) (HashMap!4737 (underlying!9914 Cell!19179) (hashF!12324 Hashable!6514) (_size!9732 (_ BitVec 32)) (defaultValue!4908 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!672 0))(
  ( (CacheFindLongestMatch!673 (cache!4579 MutableMap!4737) (totalInput!4501 BalanceConc!28474)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!672)

(declare-fun mapDefault!21578 () List!53468)

(assert (=> b!4760181 (= condMapEmpty!21578 (= (arr!7892 (_values!5161 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53468)) mapDefault!21578)))))

(declare-fun b!4760182 () Bool)

(declare-fun e!2970349 () Bool)

(declare-fun tp!1353217 () Bool)

(assert (=> b!4760182 (= e!2970349 tp!1353217)))

(declare-fun mapIsEmpty!21578 () Bool)

(assert (=> mapIsEmpty!21578 mapRes!21578))

(declare-fun b!4760183 () Bool)

(declare-fun e!2970346 () Bool)

(declare-fun valid!3853 (MutableMap!4737) Bool)

(assert (=> b!4760183 (= e!2970346 (valid!3853 (cache!4579 thiss!28909)))))

(declare-fun setIsEmpty!27166 () Bool)

(declare-fun setRes!27166 () Bool)

(assert (=> setIsEmpty!27166 setRes!27166))

(declare-fun b!4760184 () Bool)

(declare-fun e!2970351 () Bool)

(declare-fun e!2970345 () Bool)

(assert (=> b!4760184 (= e!2970351 e!2970345)))

(declare-fun mapNonEmpty!21578 () Bool)

(declare-fun tp!1353220 () Bool)

(declare-fun tp!1353221 () Bool)

(assert (=> mapNonEmpty!21578 (= mapRes!21578 (and tp!1353220 tp!1353221))))

(declare-fun mapRest!21578 () (Array (_ BitVec 32) List!53468))

(declare-fun mapValue!21578 () List!53468)

(declare-fun mapKey!21578 () (_ BitVec 32))

(assert (=> mapNonEmpty!21578 (= (arr!7892 (_values!5161 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))) (store mapRest!21578 mapKey!21578 mapValue!21578))))

(declare-fun b!4760185 () Bool)

(declare-fun e!2970352 () Bool)

(assert (=> b!4760185 (= e!2970352 (not e!2970346))))

(declare-fun res!2019050 () Bool)

(assert (=> b!4760185 (=> res!2019050 e!2970346)))

(declare-fun from!922 () Int)

(declare-fun z!482 () (InoxSet Context!5882))

(declare-fun contains!16658 (MutableMap!4737 tuple2!55274) Bool)

(assert (=> b!4760185 (= res!2019050 (contains!16658 (cache!4579 thiss!28909) (tuple2!55275 z!482 from!922)))))

(declare-fun validCacheMapFindLongestMatch!133 (MutableMap!4737 BalanceConc!28474) Bool)

(assert (=> b!4760185 (validCacheMapFindLongestMatch!133 (cache!4579 thiss!28909) localTotalInput!8)))

(declare-fun b!4760186 () Bool)

(declare-fun res!2019047 () Bool)

(assert (=> b!4760186 (=> res!2019047 e!2970346)))

(get-info :version)

(assert (=> b!4760186 (= res!2019047 (not ((_ is HashMap!4737) (cache!4579 thiss!28909))))))

(declare-fun b!4760187 () Bool)

(declare-fun e!2970342 () Bool)

(declare-fun tp!1353216 () Bool)

(assert (=> b!4760187 (= e!2970342 (and (inv!68856 (c!812095 (totalInput!4501 thiss!28909))) tp!1353216))))

(declare-fun e!2970348 () Bool)

(declare-fun e!2970347 () Bool)

(assert (=> b!4760188 (= e!2970348 (and e!2970347 tp!1353224))))

(declare-fun tp!1353215 () Bool)

(declare-fun tp!1353218 () Bool)

(declare-fun array_inv!5677 (array!17690) Bool)

(declare-fun array_inv!5678 (array!17692) Bool)

(assert (=> b!4760189 (= e!2970345 (and tp!1353222 tp!1353218 tp!1353215 (array_inv!5677 (_keys!5188 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))) (array_inv!5678 (_values!5161 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))) e!2970343))))

(declare-fun b!4760190 () Bool)

(declare-fun e!2970350 () Bool)

(declare-fun inv!68857 (BalanceConc!28474) Bool)

(assert (=> b!4760190 (= e!2970350 (and e!2970348 (inv!68857 (totalInput!4501 thiss!28909)) e!2970342))))

(declare-fun b!4760191 () Bool)

(declare-fun e!2970344 () Bool)

(assert (=> b!4760191 (= e!2970344 e!2970351)))

(declare-fun res!2019048 () Bool)

(assert (=> start!486802 (=> (not res!2019048) (not e!2970352))))

(assert (=> start!486802 (= res!2019048 (= localTotalInput!8 (totalInput!4501 thiss!28909)))))

(assert (=> start!486802 e!2970352))

(assert (=> start!486802 (and (inv!68857 localTotalInput!8) e!2970341)))

(declare-fun inv!68858 (CacheFindLongestMatch!672) Bool)

(assert (=> start!486802 (and (inv!68858 thiss!28909) e!2970350)))

(declare-fun condSetEmpty!27166 () Bool)

(assert (=> start!486802 (= condSetEmpty!27166 (= z!482 ((as const (Array Context!5882 Bool)) false)))))

(assert (=> start!486802 setRes!27166))

(assert (=> start!486802 true))

(declare-fun tp!1353214 () Bool)

(declare-fun setElem!27166 () Context!5882)

(declare-fun setNonEmpty!27166 () Bool)

(declare-fun inv!68859 (Context!5882) Bool)

(assert (=> setNonEmpty!27166 (= setRes!27166 (and tp!1353214 (inv!68859 setElem!27166) e!2970349))))

(declare-fun setRest!27166 () (InoxSet Context!5882))

(assert (=> setNonEmpty!27166 (= z!482 ((_ map or) (store ((as const (Array Context!5882 Bool)) false) setElem!27166 true) setRest!27166))))

(declare-fun b!4760192 () Bool)

(declare-fun lt!1924754 () MutLongMap!4853)

(assert (=> b!4760192 (= e!2970347 (and e!2970344 ((_ is LongMap!4853) lt!1924754)))))

(assert (=> b!4760192 (= lt!1924754 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))

(declare-fun b!4760193 () Bool)

(declare-fun res!2019049 () Bool)

(assert (=> b!4760193 (=> (not res!2019049) (not e!2970352))))

(assert (=> b!4760193 (= res!2019049 (validCacheMapFindLongestMatch!133 (cache!4579 thiss!28909) (totalInput!4501 thiss!28909)))))

(assert (= (and start!486802 res!2019048) b!4760193))

(assert (= (and b!4760193 res!2019049) b!4760185))

(assert (= (and b!4760185 (not res!2019050)) b!4760186))

(assert (= (and b!4760186 (not res!2019047)) b!4760183))

(assert (= start!486802 b!4760180))

(assert (= (and b!4760181 condMapEmpty!21578) mapIsEmpty!21578))

(assert (= (and b!4760181 (not condMapEmpty!21578)) mapNonEmpty!21578))

(assert (= b!4760189 b!4760181))

(assert (= b!4760184 b!4760189))

(assert (= b!4760191 b!4760184))

(assert (= (and b!4760192 ((_ is LongMap!4853) (v!47395 (underlying!9914 (cache!4579 thiss!28909))))) b!4760191))

(assert (= b!4760188 b!4760192))

(assert (= (and b!4760190 ((_ is HashMap!4737) (cache!4579 thiss!28909))) b!4760188))

(assert (= b!4760190 b!4760187))

(assert (= start!486802 b!4760190))

(assert (= (and start!486802 condSetEmpty!27166) setIsEmpty!27166))

(assert (= (and start!486802 (not condSetEmpty!27166)) setNonEmpty!27166))

(assert (= setNonEmpty!27166 b!4760182))

(declare-fun m!5729501 () Bool)

(assert (=> mapNonEmpty!21578 m!5729501))

(declare-fun m!5729503 () Bool)

(assert (=> b!4760189 m!5729503))

(declare-fun m!5729505 () Bool)

(assert (=> b!4760189 m!5729505))

(declare-fun m!5729507 () Bool)

(assert (=> b!4760180 m!5729507))

(declare-fun m!5729509 () Bool)

(assert (=> b!4760193 m!5729509))

(declare-fun m!5729511 () Bool)

(assert (=> setNonEmpty!27166 m!5729511))

(declare-fun m!5729513 () Bool)

(assert (=> start!486802 m!5729513))

(declare-fun m!5729515 () Bool)

(assert (=> start!486802 m!5729515))

(declare-fun m!5729517 () Bool)

(assert (=> b!4760183 m!5729517))

(declare-fun m!5729519 () Bool)

(assert (=> b!4760187 m!5729519))

(declare-fun m!5729521 () Bool)

(assert (=> b!4760185 m!5729521))

(declare-fun m!5729523 () Bool)

(assert (=> b!4760185 m!5729523))

(declare-fun m!5729525 () Bool)

(assert (=> b!4760190 m!5729525))

(check-sat (not start!486802) (not b!4760183) (not b!4760189) b_and!340953 (not setNonEmpty!27166) (not mapNonEmpty!21578) (not b_next!130031) (not b!4760181) (not b!4760182) b_and!340951 (not b!4760180) (not b!4760185) (not b_next!130033) (not b!4760193) (not b!4760190) (not b!4760187))
(check-sat b_and!340951 b_and!340953 (not b_next!130033) (not b_next!130031))
(get-model)

(declare-fun d!1521326 () Bool)

(declare-fun c!812099 () Bool)

(assert (=> d!1521326 (= c!812099 ((_ is Node!14492) (c!812095 localTotalInput!8)))))

(declare-fun e!2970357 () Bool)

(assert (=> d!1521326 (= (inv!68856 (c!812095 localTotalInput!8)) e!2970357)))

(declare-fun b!4760200 () Bool)

(declare-fun inv!68860 (Conc!14492) Bool)

(assert (=> b!4760200 (= e!2970357 (inv!68860 (c!812095 localTotalInput!8)))))

(declare-fun b!4760201 () Bool)

(declare-fun e!2970358 () Bool)

(assert (=> b!4760201 (= e!2970357 e!2970358)))

(declare-fun res!2019053 () Bool)

(assert (=> b!4760201 (= res!2019053 (not ((_ is Leaf!23590) (c!812095 localTotalInput!8))))))

(assert (=> b!4760201 (=> res!2019053 e!2970358)))

(declare-fun b!4760202 () Bool)

(declare-fun inv!68861 (Conc!14492) Bool)

(assert (=> b!4760202 (= e!2970358 (inv!68861 (c!812095 localTotalInput!8)))))

(assert (= (and d!1521326 c!812099) b!4760200))

(assert (= (and d!1521326 (not c!812099)) b!4760201))

(assert (= (and b!4760201 (not res!2019053)) b!4760202))

(declare-fun m!5729527 () Bool)

(assert (=> b!4760200 m!5729527))

(declare-fun m!5729529 () Bool)

(assert (=> b!4760202 m!5729529))

(assert (=> b!4760180 d!1521326))

(declare-fun d!1521328 () Bool)

(declare-fun c!812100 () Bool)

(assert (=> d!1521328 (= c!812100 ((_ is Node!14492) (c!812095 (totalInput!4501 thiss!28909))))))

(declare-fun e!2970359 () Bool)

(assert (=> d!1521328 (= (inv!68856 (c!812095 (totalInput!4501 thiss!28909))) e!2970359)))

(declare-fun b!4760203 () Bool)

(assert (=> b!4760203 (= e!2970359 (inv!68860 (c!812095 (totalInput!4501 thiss!28909))))))

(declare-fun b!4760204 () Bool)

(declare-fun e!2970360 () Bool)

(assert (=> b!4760204 (= e!2970359 e!2970360)))

(declare-fun res!2019054 () Bool)

(assert (=> b!4760204 (= res!2019054 (not ((_ is Leaf!23590) (c!812095 (totalInput!4501 thiss!28909)))))))

(assert (=> b!4760204 (=> res!2019054 e!2970360)))

(declare-fun b!4760205 () Bool)

(assert (=> b!4760205 (= e!2970360 (inv!68861 (c!812095 (totalInput!4501 thiss!28909))))))

(assert (= (and d!1521328 c!812100) b!4760203))

(assert (= (and d!1521328 (not c!812100)) b!4760204))

(assert (= (and b!4760204 (not res!2019054)) b!4760205))

(declare-fun m!5729531 () Bool)

(assert (=> b!4760203 m!5729531))

(declare-fun m!5729533 () Bool)

(assert (=> b!4760205 m!5729533))

(assert (=> b!4760187 d!1521328))

(declare-fun d!1521330 () Bool)

(declare-fun isBalanced!3909 (Conc!14492) Bool)

(assert (=> d!1521330 (= (inv!68857 localTotalInput!8) (isBalanced!3909 (c!812095 localTotalInput!8)))))

(declare-fun bs!1147071 () Bool)

(assert (= bs!1147071 d!1521330))

(declare-fun m!5729535 () Bool)

(assert (=> bs!1147071 m!5729535))

(assert (=> start!486802 d!1521330))

(declare-fun d!1521332 () Bool)

(declare-fun res!2019057 () Bool)

(declare-fun e!2970363 () Bool)

(assert (=> d!1521332 (=> (not res!2019057) (not e!2970363))))

(assert (=> d!1521332 (= res!2019057 ((_ is HashMap!4737) (cache!4579 thiss!28909)))))

(assert (=> d!1521332 (= (inv!68858 thiss!28909) e!2970363)))

(declare-fun b!4760208 () Bool)

(assert (=> b!4760208 (= e!2970363 (validCacheMapFindLongestMatch!133 (cache!4579 thiss!28909) (totalInput!4501 thiss!28909)))))

(assert (= (and d!1521332 res!2019057) b!4760208))

(assert (=> b!4760208 m!5729509))

(assert (=> start!486802 d!1521332))

(declare-fun b!4760214 () Bool)

(assert (=> b!4760214 true))

(declare-fun d!1521334 () Bool)

(declare-fun res!2019062 () Bool)

(declare-fun e!2970366 () Bool)

(assert (=> d!1521334 (=> (not res!2019062) (not e!2970366))))

(assert (=> d!1521334 (= res!2019062 (valid!3853 (cache!4579 thiss!28909)))))

(assert (=> d!1521334 (= (validCacheMapFindLongestMatch!133 (cache!4579 thiss!28909) (totalInput!4501 thiss!28909)) e!2970366)))

(declare-fun b!4760213 () Bool)

(declare-fun res!2019063 () Bool)

(assert (=> b!4760213 (=> (not res!2019063) (not e!2970366))))

(declare-fun invariantList!1646 (List!53468) Bool)

(declare-datatypes ((ListMap!5713 0))(
  ( (ListMap!5714 (toList!6212 List!53468)) )
))
(declare-fun map!11868 (MutableMap!4737) ListMap!5713)

(assert (=> b!4760213 (= res!2019063 (invariantList!1646 (toList!6212 (map!11868 (cache!4579 thiss!28909)))))))

(declare-fun lambda!223747 () Int)

(declare-fun forall!11831 (List!53468 Int) Bool)

(assert (=> b!4760214 (= e!2970366 (forall!11831 (toList!6212 (map!11868 (cache!4579 thiss!28909))) lambda!223747))))

(assert (= (and d!1521334 res!2019062) b!4760213))

(assert (= (and b!4760213 res!2019063) b!4760214))

(assert (=> d!1521334 m!5729517))

(declare-fun m!5729538 () Bool)

(assert (=> b!4760213 m!5729538))

(declare-fun m!5729540 () Bool)

(assert (=> b!4760213 m!5729540))

(assert (=> b!4760214 m!5729538))

(declare-fun m!5729542 () Bool)

(assert (=> b!4760214 m!5729542))

(assert (=> b!4760193 d!1521334))

(declare-fun d!1521336 () Bool)

(declare-fun lambda!223750 () Int)

(declare-fun forall!11832 (List!53467 Int) Bool)

(assert (=> d!1521336 (= (inv!68859 setElem!27166) (forall!11832 (exprs!3441 setElem!27166) lambda!223750))))

(declare-fun bs!1147072 () Bool)

(assert (= bs!1147072 d!1521336))

(declare-fun m!5729544 () Bool)

(assert (=> bs!1147072 m!5729544))

(assert (=> setNonEmpty!27166 d!1521336))

(declare-fun d!1521338 () Bool)

(assert (=> d!1521338 (= (array_inv!5677 (_keys!5188 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))) (bvsge (size!36114 (_keys!5188 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4760189 d!1521338))

(declare-fun d!1521340 () Bool)

(assert (=> d!1521340 (= (array_inv!5678 (_values!5161 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))) (bvsge (size!36115 (_values!5161 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4760189 d!1521340))

(declare-fun d!1521342 () Bool)

(declare-fun res!2019068 () Bool)

(declare-fun e!2970369 () Bool)

(assert (=> d!1521342 (=> (not res!2019068) (not e!2970369))))

(declare-fun valid!3854 (MutLongMap!4853) Bool)

(assert (=> d!1521342 (= res!2019068 (valid!3854 (v!47395 (underlying!9914 (cache!4579 thiss!28909)))))))

(assert (=> d!1521342 (= (valid!3853 (cache!4579 thiss!28909)) e!2970369)))

(declare-fun b!4760221 () Bool)

(declare-fun res!2019069 () Bool)

(assert (=> b!4760221 (=> (not res!2019069) (not e!2970369))))

(declare-fun lambda!223753 () Int)

(declare-datatypes ((tuple2!55278 0))(
  ( (tuple2!55279 (_1!30933 (_ BitVec 64)) (_2!30933 List!53468)) )
))
(declare-datatypes ((List!53469 0))(
  ( (Nil!53345) (Cons!53345 (h!59756 tuple2!55278) (t!360829 List!53469)) )
))
(declare-fun forall!11833 (List!53469 Int) Bool)

(declare-datatypes ((ListLongMap!4605 0))(
  ( (ListLongMap!4606 (toList!6213 List!53469)) )
))
(declare-fun map!11869 (MutLongMap!4853) ListLongMap!4605)

(assert (=> b!4760221 (= res!2019069 (forall!11833 (toList!6213 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))) lambda!223753))))

(declare-fun b!4760222 () Bool)

(declare-fun allKeysSameHashInMap!2001 (ListLongMap!4605 Hashable!6514) Bool)

(assert (=> b!4760222 (= e!2970369 (allKeysSameHashInMap!2001 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909)))) (hashF!12324 (cache!4579 thiss!28909))))))

(assert (= (and d!1521342 res!2019068) b!4760221))

(assert (= (and b!4760221 res!2019069) b!4760222))

(declare-fun m!5729546 () Bool)

(assert (=> d!1521342 m!5729546))

(declare-fun m!5729548 () Bool)

(assert (=> b!4760221 m!5729548))

(declare-fun m!5729550 () Bool)

(assert (=> b!4760221 m!5729550))

(assert (=> b!4760222 m!5729548))

(assert (=> b!4760222 m!5729548))

(declare-fun m!5729552 () Bool)

(assert (=> b!4760222 m!5729552))

(assert (=> b!4760183 d!1521342))

(declare-fun d!1521344 () Bool)

(assert (=> d!1521344 (= (inv!68857 (totalInput!4501 thiss!28909)) (isBalanced!3909 (c!812095 (totalInput!4501 thiss!28909))))))

(declare-fun bs!1147073 () Bool)

(assert (= bs!1147073 d!1521344))

(declare-fun m!5729554 () Bool)

(assert (=> bs!1147073 m!5729554))

(assert (=> b!4760190 d!1521344))

(declare-fun bs!1147074 () Bool)

(declare-fun b!4760247 () Bool)

(assert (= bs!1147074 (and b!4760247 b!4760221)))

(declare-fun lambda!223756 () Int)

(assert (=> bs!1147074 (= lambda!223756 lambda!223753)))

(declare-fun lt!1924813 () ListLongMap!4605)

(declare-fun call!333728 () List!53468)

(declare-fun call!333724 () ListLongMap!4605)

(declare-fun call!333726 () (_ BitVec 64))

(declare-fun bm!333719 () Bool)

(declare-fun c!812112 () Bool)

(declare-fun apply!12536 (ListLongMap!4605 (_ BitVec 64)) List!53468)

(assert (=> bm!333719 (= call!333728 (apply!12536 (ite c!812112 lt!1924813 call!333724) call!333726))))

(declare-fun b!4760245 () Bool)

(assert (=> b!4760245 false))

(declare-datatypes ((Unit!137813 0))(
  ( (Unit!137814) )
))
(declare-fun lt!1924796 () Unit!137813)

(declare-fun lt!1924801 () Unit!137813)

(assert (=> b!4760245 (= lt!1924796 lt!1924801)))

(declare-fun lt!1924810 () ListLongMap!4605)

(declare-fun contains!16659 (ListMap!5713 tuple2!55274) Bool)

(declare-fun extractMap!2118 (List!53469) ListMap!5713)

(assert (=> b!4760245 (contains!16659 (extractMap!2118 (toList!6213 lt!1924810)) (tuple2!55275 z!482 from!922))))

(declare-fun lemmaInLongMapThenInGenericMap!182 (ListLongMap!4605 tuple2!55274 Hashable!6514) Unit!137813)

(assert (=> b!4760245 (= lt!1924801 (lemmaInLongMapThenInGenericMap!182 lt!1924810 (tuple2!55275 z!482 from!922) (hashF!12324 (cache!4579 thiss!28909))))))

(assert (=> b!4760245 (= lt!1924810 call!333724)))

(declare-fun e!2970387 () Unit!137813)

(declare-fun Unit!137815 () Unit!137813)

(assert (=> b!4760245 (= e!2970387 Unit!137815)))

(declare-fun b!4760246 () Bool)

(declare-fun e!2970386 () Unit!137813)

(declare-fun lt!1924795 () Unit!137813)

(assert (=> b!4760246 (= e!2970386 lt!1924795)))

(assert (=> b!4760246 (= lt!1924813 call!333724)))

(declare-fun lemmaInGenericMapThenInLongMap!182 (ListLongMap!4605 tuple2!55274 Hashable!6514) Unit!137813)

(assert (=> b!4760246 (= lt!1924795 (lemmaInGenericMapThenInLongMap!182 lt!1924813 (tuple2!55275 z!482 from!922) (hashF!12324 (cache!4579 thiss!28909))))))

(declare-fun res!2019076 () Bool)

(declare-fun call!333725 () Bool)

(assert (=> b!4760246 (= res!2019076 call!333725)))

(declare-fun e!2970388 () Bool)

(assert (=> b!4760246 (=> (not res!2019076) (not e!2970388))))

(assert (=> b!4760246 e!2970388))

(declare-fun b!4760248 () Bool)

(declare-fun call!333727 () Bool)

(assert (=> b!4760248 (= e!2970388 call!333727)))

(declare-fun bm!333720 () Bool)

(declare-fun hash!4519 (Hashable!6514 tuple2!55274) (_ BitVec 64))

(assert (=> bm!333720 (= call!333726 (hash!4519 (hashF!12324 (cache!4579 thiss!28909)) (tuple2!55275 z!482 from!922)))))

(declare-fun b!4760249 () Bool)

(declare-fun e!2970385 () Bool)

(assert (=> b!4760249 (= e!2970385 call!333727)))

(declare-datatypes ((Option!12600 0))(
  ( (None!12599) (Some!12599 (v!47396 tuple2!55276)) )
))
(declare-fun call!333729 () Option!12600)

(declare-fun bm!333721 () Bool)

(declare-fun getPair!618 (List!53468 tuple2!55274) Option!12600)

(assert (=> bm!333721 (= call!333729 (getPair!618 call!333728 (tuple2!55275 z!482 from!922)))))

(declare-fun b!4760250 () Bool)

(assert (=> b!4760250 false))

(declare-fun lt!1924805 () Unit!137813)

(declare-fun lt!1924802 () Unit!137813)

(assert (=> b!4760250 (= lt!1924805 lt!1924802)))

(declare-fun lt!1924804 () List!53469)

(declare-fun lt!1924811 () (_ BitVec 64))

(declare-fun lt!1924799 () List!53468)

(declare-fun contains!16660 (List!53469 tuple2!55278) Bool)

(assert (=> b!4760250 (contains!16660 lt!1924804 (tuple2!55279 lt!1924811 lt!1924799))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!896 (List!53469 (_ BitVec 64) List!53468) Unit!137813)

(assert (=> b!4760250 (= lt!1924802 (lemmaGetValueByKeyImpliesContainsTuple!896 lt!1924804 lt!1924811 lt!1924799))))

(declare-fun apply!12537 (MutLongMap!4853 (_ BitVec 64)) List!53468)

(assert (=> b!4760250 (= lt!1924799 (apply!12537 (v!47395 (underlying!9914 (cache!4579 thiss!28909))) lt!1924811))))

(assert (=> b!4760250 (= lt!1924804 (toList!6213 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))))

(declare-fun lt!1924812 () Unit!137813)

(declare-fun lt!1924808 () Unit!137813)

(assert (=> b!4760250 (= lt!1924812 lt!1924808)))

(declare-fun lt!1924797 () List!53469)

(declare-datatypes ((Option!12601 0))(
  ( (None!12600) (Some!12600 (v!47397 List!53468)) )
))
(declare-fun isDefined!9778 (Option!12601) Bool)

(declare-fun getValueByKey!2135 (List!53469 (_ BitVec 64)) Option!12601)

(assert (=> b!4760250 (isDefined!9778 (getValueByKey!2135 lt!1924797 lt!1924811))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1954 (List!53469 (_ BitVec 64)) Unit!137813)

(assert (=> b!4760250 (= lt!1924808 (lemmaContainsKeyImpliesGetValueByKeyDefined!1954 lt!1924797 lt!1924811))))

(assert (=> b!4760250 (= lt!1924797 (toList!6213 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))))

(declare-fun lt!1924807 () Unit!137813)

(declare-fun lt!1924800 () Unit!137813)

(assert (=> b!4760250 (= lt!1924807 lt!1924800)))

(declare-fun lt!1924806 () List!53469)

(declare-fun containsKey!3637 (List!53469 (_ BitVec 64)) Bool)

(assert (=> b!4760250 (containsKey!3637 lt!1924806 lt!1924811)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!183 (List!53469 (_ BitVec 64)) Unit!137813)

(assert (=> b!4760250 (= lt!1924800 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!183 lt!1924806 lt!1924811))))

(assert (=> b!4760250 (= lt!1924806 (toList!6213 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))))

(declare-fun e!2970389 () Unit!137813)

(declare-fun Unit!137816 () Unit!137813)

(assert (=> b!4760250 (= e!2970389 Unit!137816)))

(declare-fun lt!1924809 () Bool)

(declare-fun d!1521346 () Bool)

(assert (=> d!1521346 (= lt!1924809 (contains!16659 (map!11868 (cache!4579 thiss!28909)) (tuple2!55275 z!482 from!922)))))

(declare-fun e!2970384 () Bool)

(assert (=> d!1521346 (= lt!1924809 e!2970384)))

(declare-fun res!2019077 () Bool)

(assert (=> d!1521346 (=> (not res!2019077) (not e!2970384))))

(declare-fun contains!16661 (MutLongMap!4853 (_ BitVec 64)) Bool)

(assert (=> d!1521346 (= res!2019077 (contains!16661 (v!47395 (underlying!9914 (cache!4579 thiss!28909))) lt!1924811))))

(declare-fun lt!1924814 () Unit!137813)

(assert (=> d!1521346 (= lt!1924814 e!2970386)))

(assert (=> d!1521346 (= c!812112 (contains!16659 (extractMap!2118 (toList!6213 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909)))))) (tuple2!55275 z!482 from!922)))))

(declare-fun lt!1924798 () Unit!137813)

(declare-fun e!2970390 () Unit!137813)

(assert (=> d!1521346 (= lt!1924798 e!2970390)))

(declare-fun c!812111 () Bool)

(assert (=> d!1521346 (= c!812111 (contains!16661 (v!47395 (underlying!9914 (cache!4579 thiss!28909))) lt!1924811))))

(assert (=> d!1521346 (= lt!1924811 (hash!4519 (hashF!12324 (cache!4579 thiss!28909)) (tuple2!55275 z!482 from!922)))))

(assert (=> d!1521346 (valid!3853 (cache!4579 thiss!28909))))

(assert (=> d!1521346 (= (contains!16658 (cache!4579 thiss!28909) (tuple2!55275 z!482 from!922)) lt!1924809)))

(declare-fun forallContained!3828 (List!53469 Int tuple2!55278) Unit!137813)

(assert (=> b!4760247 (= e!2970390 (forallContained!3828 (toList!6213 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))) lambda!223756 (tuple2!55279 lt!1924811 (apply!12537 (v!47395 (underlying!9914 (cache!4579 thiss!28909))) lt!1924811))))))

(declare-fun c!812110 () Bool)

(assert (=> b!4760247 (= c!812110 (not (contains!16660 (toList!6213 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))) (tuple2!55279 lt!1924811 (apply!12537 (v!47395 (underlying!9914 (cache!4579 thiss!28909))) lt!1924811)))))))

(declare-fun lt!1924803 () Unit!137813)

(assert (=> b!4760247 (= lt!1924803 e!2970389)))

(declare-fun bm!333722 () Bool)

(declare-fun contains!16662 (ListLongMap!4605 (_ BitVec 64)) Bool)

(assert (=> bm!333722 (= call!333725 (contains!16662 (ite c!812112 lt!1924813 call!333724) call!333726))))

(declare-fun b!4760251 () Bool)

(declare-fun Unit!137817 () Unit!137813)

(assert (=> b!4760251 (= e!2970389 Unit!137817)))

(declare-fun b!4760252 () Bool)

(declare-fun Unit!137818 () Unit!137813)

(assert (=> b!4760252 (= e!2970390 Unit!137818)))

(declare-fun bm!333723 () Bool)

(assert (=> bm!333723 (= call!333724 (map!11869 (v!47395 (underlying!9914 (cache!4579 thiss!28909)))))))

(declare-fun b!4760253 () Bool)

(declare-fun isDefined!9779 (Option!12600) Bool)

(assert (=> b!4760253 (= e!2970384 (isDefined!9779 (getPair!618 (apply!12537 (v!47395 (underlying!9914 (cache!4579 thiss!28909))) lt!1924811) (tuple2!55275 z!482 from!922))))))

(declare-fun b!4760254 () Bool)

(declare-fun Unit!137819 () Unit!137813)

(assert (=> b!4760254 (= e!2970387 Unit!137819)))

(declare-fun b!4760255 () Bool)

(assert (=> b!4760255 (= e!2970386 e!2970387)))

(declare-fun res!2019078 () Bool)

(assert (=> b!4760255 (= res!2019078 call!333725)))

(assert (=> b!4760255 (=> (not res!2019078) (not e!2970385))))

(declare-fun c!812109 () Bool)

(assert (=> b!4760255 (= c!812109 e!2970385)))

(declare-fun bm!333724 () Bool)

(assert (=> bm!333724 (= call!333727 (isDefined!9779 call!333729))))

(assert (= (and d!1521346 c!812111) b!4760247))

(assert (= (and d!1521346 (not c!812111)) b!4760252))

(assert (= (and b!4760247 c!812110) b!4760250))

(assert (= (and b!4760247 (not c!812110)) b!4760251))

(assert (= (and d!1521346 c!812112) b!4760246))

(assert (= (and d!1521346 (not c!812112)) b!4760255))

(assert (= (and b!4760246 res!2019076) b!4760248))

(assert (= (and b!4760255 res!2019078) b!4760249))

(assert (= (and b!4760255 c!812109) b!4760245))

(assert (= (and b!4760255 (not c!812109)) b!4760254))

(assert (= (or b!4760246 b!4760248 b!4760255 b!4760249) bm!333720))

(assert (= (or b!4760246 b!4760255 b!4760249 b!4760245) bm!333723))

(assert (= (or b!4760248 b!4760249) bm!333719))

(assert (= (or b!4760246 b!4760255) bm!333722))

(assert (= (or b!4760248 b!4760249) bm!333721))

(assert (= (or b!4760248 b!4760249) bm!333724))

(assert (= (and d!1521346 res!2019077) b!4760253))

(declare-fun m!5729556 () Bool)

(assert (=> b!4760250 m!5729556))

(declare-fun m!5729558 () Bool)

(assert (=> b!4760250 m!5729558))

(declare-fun m!5729560 () Bool)

(assert (=> b!4760250 m!5729560))

(declare-fun m!5729562 () Bool)

(assert (=> b!4760250 m!5729562))

(declare-fun m!5729564 () Bool)

(assert (=> b!4760250 m!5729564))

(assert (=> b!4760250 m!5729548))

(declare-fun m!5729566 () Bool)

(assert (=> b!4760250 m!5729566))

(declare-fun m!5729568 () Bool)

(assert (=> b!4760250 m!5729568))

(declare-fun m!5729570 () Bool)

(assert (=> b!4760250 m!5729570))

(assert (=> b!4760250 m!5729568))

(declare-fun m!5729572 () Bool)

(assert (=> bm!333722 m!5729572))

(declare-fun m!5729574 () Bool)

(assert (=> bm!333724 m!5729574))

(declare-fun m!5729576 () Bool)

(assert (=> b!4760245 m!5729576))

(assert (=> b!4760245 m!5729576))

(declare-fun m!5729578 () Bool)

(assert (=> b!4760245 m!5729578))

(declare-fun m!5729580 () Bool)

(assert (=> b!4760245 m!5729580))

(assert (=> b!4760247 m!5729548))

(assert (=> b!4760247 m!5729556))

(declare-fun m!5729582 () Bool)

(assert (=> b!4760247 m!5729582))

(declare-fun m!5729584 () Bool)

(assert (=> b!4760247 m!5729584))

(declare-fun m!5729586 () Bool)

(assert (=> b!4760246 m!5729586))

(assert (=> b!4760253 m!5729556))

(assert (=> b!4760253 m!5729556))

(declare-fun m!5729588 () Bool)

(assert (=> b!4760253 m!5729588))

(assert (=> b!4760253 m!5729588))

(declare-fun m!5729590 () Bool)

(assert (=> b!4760253 m!5729590))

(declare-fun m!5729592 () Bool)

(assert (=> bm!333719 m!5729592))

(declare-fun m!5729594 () Bool)

(assert (=> bm!333721 m!5729594))

(assert (=> bm!333723 m!5729548))

(declare-fun m!5729596 () Bool)

(assert (=> bm!333720 m!5729596))

(assert (=> d!1521346 m!5729538))

(assert (=> d!1521346 m!5729538))

(declare-fun m!5729598 () Bool)

(assert (=> d!1521346 m!5729598))

(assert (=> d!1521346 m!5729596))

(assert (=> d!1521346 m!5729517))

(assert (=> d!1521346 m!5729548))

(declare-fun m!5729600 () Bool)

(assert (=> d!1521346 m!5729600))

(declare-fun m!5729602 () Bool)

(assert (=> d!1521346 m!5729602))

(declare-fun m!5729604 () Bool)

(assert (=> d!1521346 m!5729604))

(assert (=> d!1521346 m!5729602))

(assert (=> b!4760185 d!1521346))

(declare-fun bs!1147075 () Bool)

(declare-fun b!4760257 () Bool)

(assert (= bs!1147075 (and b!4760257 b!4760214)))

(declare-fun lambda!223757 () Int)

(assert (=> bs!1147075 (= (= localTotalInput!8 (totalInput!4501 thiss!28909)) (= lambda!223757 lambda!223747))))

(assert (=> b!4760257 true))

(declare-fun d!1521348 () Bool)

(declare-fun res!2019079 () Bool)

(declare-fun e!2970391 () Bool)

(assert (=> d!1521348 (=> (not res!2019079) (not e!2970391))))

(assert (=> d!1521348 (= res!2019079 (valid!3853 (cache!4579 thiss!28909)))))

(assert (=> d!1521348 (= (validCacheMapFindLongestMatch!133 (cache!4579 thiss!28909) localTotalInput!8) e!2970391)))

(declare-fun b!4760256 () Bool)

(declare-fun res!2019080 () Bool)

(assert (=> b!4760256 (=> (not res!2019080) (not e!2970391))))

(assert (=> b!4760256 (= res!2019080 (invariantList!1646 (toList!6212 (map!11868 (cache!4579 thiss!28909)))))))

(assert (=> b!4760257 (= e!2970391 (forall!11831 (toList!6212 (map!11868 (cache!4579 thiss!28909))) lambda!223757))))

(assert (= (and d!1521348 res!2019079) b!4760256))

(assert (= (and b!4760256 res!2019080) b!4760257))

(assert (=> d!1521348 m!5729517))

(assert (=> b!4760256 m!5729538))

(assert (=> b!4760256 m!5729540))

(assert (=> b!4760257 m!5729538))

(declare-fun m!5729606 () Bool)

(assert (=> b!4760257 m!5729606))

(assert (=> b!4760185 d!1521348))

(declare-fun tp!1353233 () Bool)

(declare-fun b!4760266 () Bool)

(declare-fun tp!1353231 () Bool)

(declare-fun e!2970397 () Bool)

(assert (=> b!4760266 (= e!2970397 (and (inv!68856 (left!39129 (c!812095 localTotalInput!8))) tp!1353231 (inv!68856 (right!39459 (c!812095 localTotalInput!8))) tp!1353233))))

(declare-fun b!4760268 () Bool)

(declare-fun e!2970396 () Bool)

(declare-fun tp!1353232 () Bool)

(assert (=> b!4760268 (= e!2970396 tp!1353232)))

(declare-fun b!4760267 () Bool)

(declare-fun inv!68862 (IArray!29045) Bool)

(assert (=> b!4760267 (= e!2970397 (and (inv!68862 (xs!17798 (c!812095 localTotalInput!8))) e!2970396))))

(assert (=> b!4760180 (= tp!1353219 (and (inv!68856 (c!812095 localTotalInput!8)) e!2970397))))

(assert (= (and b!4760180 ((_ is Node!14492) (c!812095 localTotalInput!8))) b!4760266))

(assert (= b!4760267 b!4760268))

(assert (= (and b!4760180 ((_ is Leaf!23590) (c!812095 localTotalInput!8))) b!4760267))

(declare-fun m!5729608 () Bool)

(assert (=> b!4760266 m!5729608))

(declare-fun m!5729610 () Bool)

(assert (=> b!4760266 m!5729610))

(declare-fun m!5729612 () Bool)

(assert (=> b!4760267 m!5729612))

(assert (=> b!4760180 m!5729507))

(declare-fun e!2970399 () Bool)

(declare-fun tp!1353236 () Bool)

(declare-fun b!4760269 () Bool)

(declare-fun tp!1353234 () Bool)

(assert (=> b!4760269 (= e!2970399 (and (inv!68856 (left!39129 (c!812095 (totalInput!4501 thiss!28909)))) tp!1353234 (inv!68856 (right!39459 (c!812095 (totalInput!4501 thiss!28909)))) tp!1353236))))

(declare-fun b!4760271 () Bool)

(declare-fun e!2970398 () Bool)

(declare-fun tp!1353235 () Bool)

(assert (=> b!4760271 (= e!2970398 tp!1353235)))

(declare-fun b!4760270 () Bool)

(assert (=> b!4760270 (= e!2970399 (and (inv!68862 (xs!17798 (c!812095 (totalInput!4501 thiss!28909)))) e!2970398))))

(assert (=> b!4760187 (= tp!1353216 (and (inv!68856 (c!812095 (totalInput!4501 thiss!28909))) e!2970399))))

(assert (= (and b!4760187 ((_ is Node!14492) (c!812095 (totalInput!4501 thiss!28909)))) b!4760269))

(assert (= b!4760270 b!4760271))

(assert (= (and b!4760187 ((_ is Leaf!23590) (c!812095 (totalInput!4501 thiss!28909)))) b!4760270))

(declare-fun m!5729614 () Bool)

(assert (=> b!4760269 m!5729614))

(declare-fun m!5729616 () Bool)

(assert (=> b!4760269 m!5729616))

(declare-fun m!5729618 () Bool)

(assert (=> b!4760270 m!5729618))

(assert (=> b!4760187 m!5729519))

(declare-fun condMapEmpty!21581 () Bool)

(declare-fun mapDefault!21581 () List!53468)

(assert (=> mapNonEmpty!21578 (= condMapEmpty!21581 (= mapRest!21578 ((as const (Array (_ BitVec 32) List!53468)) mapDefault!21581)))))

(declare-fun e!2970408 () Bool)

(declare-fun mapRes!21581 () Bool)

(assert (=> mapNonEmpty!21578 (= tp!1353220 (and e!2970408 mapRes!21581))))

(declare-fun tp!1353253 () Bool)

(declare-fun setElem!27171 () Context!5882)

(declare-fun setNonEmpty!27171 () Bool)

(declare-fun e!2970410 () Bool)

(declare-fun setRes!27171 () Bool)

(assert (=> setNonEmpty!27171 (= setRes!27171 (and tp!1353253 (inv!68859 setElem!27171) e!2970410))))

(declare-fun mapValue!21581 () List!53468)

(declare-fun setRest!27171 () (InoxSet Context!5882))

(assert (=> setNonEmpty!27171 (= (_1!30931 (_1!30932 (h!59755 mapValue!21581))) ((_ map or) (store ((as const (Array Context!5882 Bool)) false) setElem!27171 true) setRest!27171))))

(declare-fun b!4760282 () Bool)

(declare-fun setRes!27172 () Bool)

(declare-fun tp!1353254 () Bool)

(assert (=> b!4760282 (= e!2970408 (and setRes!27172 tp!1353254))))

(declare-fun condSetEmpty!27171 () Bool)

(assert (=> b!4760282 (= condSetEmpty!27171 (= (_1!30931 (_1!30932 (h!59755 mapDefault!21581))) ((as const (Array Context!5882 Bool)) false)))))

(declare-fun mapIsEmpty!21581 () Bool)

(assert (=> mapIsEmpty!21581 mapRes!21581))

(declare-fun setIsEmpty!27171 () Bool)

(assert (=> setIsEmpty!27171 setRes!27171))

(declare-fun b!4760283 () Bool)

(declare-fun e!2970409 () Bool)

(declare-fun tp!1353256 () Bool)

(assert (=> b!4760283 (= e!2970409 (and setRes!27171 tp!1353256))))

(declare-fun condSetEmpty!27172 () Bool)

(assert (=> b!4760283 (= condSetEmpty!27172 (= (_1!30931 (_1!30932 (h!59755 mapValue!21581))) ((as const (Array Context!5882 Bool)) false)))))

(declare-fun setIsEmpty!27172 () Bool)

(assert (=> setIsEmpty!27172 setRes!27172))

(declare-fun mapNonEmpty!21581 () Bool)

(declare-fun tp!1353257 () Bool)

(assert (=> mapNonEmpty!21581 (= mapRes!21581 (and tp!1353257 e!2970409))))

(declare-fun mapRest!21581 () (Array (_ BitVec 32) List!53468))

(declare-fun mapKey!21581 () (_ BitVec 32))

(assert (=> mapNonEmpty!21581 (= mapRest!21578 (store mapRest!21581 mapKey!21581 mapValue!21581))))

(declare-fun b!4760284 () Bool)

(declare-fun tp!1353251 () Bool)

(assert (=> b!4760284 (= e!2970410 tp!1353251)))

(declare-fun b!4760285 () Bool)

(declare-fun e!2970411 () Bool)

(declare-fun tp!1353255 () Bool)

(assert (=> b!4760285 (= e!2970411 tp!1353255)))

(declare-fun tp!1353252 () Bool)

(declare-fun setNonEmpty!27172 () Bool)

(declare-fun setElem!27172 () Context!5882)

(assert (=> setNonEmpty!27172 (= setRes!27172 (and tp!1353252 (inv!68859 setElem!27172) e!2970411))))

(declare-fun setRest!27172 () (InoxSet Context!5882))

(assert (=> setNonEmpty!27172 (= (_1!30931 (_1!30932 (h!59755 mapDefault!21581))) ((_ map or) (store ((as const (Array Context!5882 Bool)) false) setElem!27172 true) setRest!27172))))

(assert (= (and mapNonEmpty!21578 condMapEmpty!21581) mapIsEmpty!21581))

(assert (= (and mapNonEmpty!21578 (not condMapEmpty!21581)) mapNonEmpty!21581))

(assert (= (and b!4760283 condSetEmpty!27172) setIsEmpty!27171))

(assert (= (and b!4760283 (not condSetEmpty!27172)) setNonEmpty!27171))

(assert (= setNonEmpty!27171 b!4760284))

(assert (= (and mapNonEmpty!21581 ((_ is Cons!53344) mapValue!21581)) b!4760283))

(assert (= (and b!4760282 condSetEmpty!27171) setIsEmpty!27172))

(assert (= (and b!4760282 (not condSetEmpty!27171)) setNonEmpty!27172))

(assert (= setNonEmpty!27172 b!4760285))

(assert (= (and mapNonEmpty!21578 ((_ is Cons!53344) mapDefault!21581)) b!4760282))

(declare-fun m!5729620 () Bool)

(assert (=> setNonEmpty!27171 m!5729620))

(declare-fun m!5729622 () Bool)

(assert (=> mapNonEmpty!21581 m!5729622))

(declare-fun m!5729624 () Bool)

(assert (=> setNonEmpty!27172 m!5729624))

(declare-fun setIsEmpty!27175 () Bool)

(declare-fun setRes!27175 () Bool)

(assert (=> setIsEmpty!27175 setRes!27175))

(declare-fun setNonEmpty!27175 () Bool)

(declare-fun tp!1353265 () Bool)

(declare-fun setElem!27175 () Context!5882)

(declare-fun e!2970417 () Bool)

(assert (=> setNonEmpty!27175 (= setRes!27175 (and tp!1353265 (inv!68859 setElem!27175) e!2970417))))

(declare-fun setRest!27175 () (InoxSet Context!5882))

(assert (=> setNonEmpty!27175 (= (_1!30931 (_1!30932 (h!59755 mapValue!21578))) ((_ map or) (store ((as const (Array Context!5882 Bool)) false) setElem!27175 true) setRest!27175))))

(declare-fun b!4760293 () Bool)

(declare-fun tp!1353264 () Bool)

(assert (=> b!4760293 (= e!2970417 tp!1353264)))

(declare-fun e!2970416 () Bool)

(assert (=> mapNonEmpty!21578 (= tp!1353221 e!2970416)))

(declare-fun b!4760292 () Bool)

(declare-fun tp!1353266 () Bool)

(assert (=> b!4760292 (= e!2970416 (and setRes!27175 tp!1353266))))

(declare-fun condSetEmpty!27175 () Bool)

(assert (=> b!4760292 (= condSetEmpty!27175 (= (_1!30931 (_1!30932 (h!59755 mapValue!21578))) ((as const (Array Context!5882 Bool)) false)))))

(assert (= (and b!4760292 condSetEmpty!27175) setIsEmpty!27175))

(assert (= (and b!4760292 (not condSetEmpty!27175)) setNonEmpty!27175))

(assert (= setNonEmpty!27175 b!4760293))

(assert (= (and mapNonEmpty!21578 ((_ is Cons!53344) mapValue!21578)) b!4760292))

(declare-fun m!5729626 () Bool)

(assert (=> setNonEmpty!27175 m!5729626))

(declare-fun setIsEmpty!27176 () Bool)

(declare-fun setRes!27176 () Bool)

(assert (=> setIsEmpty!27176 setRes!27176))

(declare-fun tp!1353268 () Bool)

(declare-fun e!2970419 () Bool)

(declare-fun setNonEmpty!27176 () Bool)

(declare-fun setElem!27176 () Context!5882)

(assert (=> setNonEmpty!27176 (= setRes!27176 (and tp!1353268 (inv!68859 setElem!27176) e!2970419))))

(declare-fun setRest!27176 () (InoxSet Context!5882))

(assert (=> setNonEmpty!27176 (= (_1!30931 (_1!30932 (h!59755 mapDefault!21578))) ((_ map or) (store ((as const (Array Context!5882 Bool)) false) setElem!27176 true) setRest!27176))))

(declare-fun b!4760295 () Bool)

(declare-fun tp!1353267 () Bool)

(assert (=> b!4760295 (= e!2970419 tp!1353267)))

(declare-fun e!2970418 () Bool)

(assert (=> b!4760181 (= tp!1353223 e!2970418)))

(declare-fun b!4760294 () Bool)

(declare-fun tp!1353269 () Bool)

(assert (=> b!4760294 (= e!2970418 (and setRes!27176 tp!1353269))))

(declare-fun condSetEmpty!27176 () Bool)

(assert (=> b!4760294 (= condSetEmpty!27176 (= (_1!30931 (_1!30932 (h!59755 mapDefault!21578))) ((as const (Array Context!5882 Bool)) false)))))

(assert (= (and b!4760294 condSetEmpty!27176) setIsEmpty!27176))

(assert (= (and b!4760294 (not condSetEmpty!27176)) setNonEmpty!27176))

(assert (= setNonEmpty!27176 b!4760295))

(assert (= (and b!4760181 ((_ is Cons!53344) mapDefault!21578)) b!4760294))

(declare-fun m!5729628 () Bool)

(assert (=> setNonEmpty!27176 m!5729628))

(declare-fun condSetEmpty!27179 () Bool)

(assert (=> setNonEmpty!27166 (= condSetEmpty!27179 (= setRest!27166 ((as const (Array Context!5882 Bool)) false)))))

(declare-fun setRes!27179 () Bool)

(assert (=> setNonEmpty!27166 (= tp!1353214 setRes!27179)))

(declare-fun setIsEmpty!27179 () Bool)

(assert (=> setIsEmpty!27179 setRes!27179))

(declare-fun e!2970422 () Bool)

(declare-fun setNonEmpty!27179 () Bool)

(declare-fun setElem!27179 () Context!5882)

(declare-fun tp!1353274 () Bool)

(assert (=> setNonEmpty!27179 (= setRes!27179 (and tp!1353274 (inv!68859 setElem!27179) e!2970422))))

(declare-fun setRest!27179 () (InoxSet Context!5882))

(assert (=> setNonEmpty!27179 (= setRest!27166 ((_ map or) (store ((as const (Array Context!5882 Bool)) false) setElem!27179 true) setRest!27179))))

(declare-fun b!4760300 () Bool)

(declare-fun tp!1353275 () Bool)

(assert (=> b!4760300 (= e!2970422 tp!1353275)))

(assert (= (and setNonEmpty!27166 condSetEmpty!27179) setIsEmpty!27179))

(assert (= (and setNonEmpty!27166 (not condSetEmpty!27179)) setNonEmpty!27179))

(assert (= setNonEmpty!27179 b!4760300))

(declare-fun m!5729630 () Bool)

(assert (=> setNonEmpty!27179 m!5729630))

(declare-fun b!4760305 () Bool)

(declare-fun e!2970425 () Bool)

(declare-fun tp!1353280 () Bool)

(declare-fun tp!1353281 () Bool)

(assert (=> b!4760305 (= e!2970425 (and tp!1353280 tp!1353281))))

(assert (=> b!4760182 (= tp!1353217 e!2970425)))

(assert (= (and b!4760182 ((_ is Cons!53343) (exprs!3441 setElem!27166))) b!4760305))

(declare-fun setIsEmpty!27180 () Bool)

(declare-fun setRes!27180 () Bool)

(assert (=> setIsEmpty!27180 setRes!27180))

(declare-fun tp!1353283 () Bool)

(declare-fun setNonEmpty!27180 () Bool)

(declare-fun e!2970427 () Bool)

(declare-fun setElem!27180 () Context!5882)

(assert (=> setNonEmpty!27180 (= setRes!27180 (and tp!1353283 (inv!68859 setElem!27180) e!2970427))))

(declare-fun setRest!27180 () (InoxSet Context!5882))

(assert (=> setNonEmpty!27180 (= (_1!30931 (_1!30932 (h!59755 (zeroValue!5136 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5882 Bool)) false) setElem!27180 true) setRest!27180))))

(declare-fun b!4760307 () Bool)

(declare-fun tp!1353282 () Bool)

(assert (=> b!4760307 (= e!2970427 tp!1353282)))

(declare-fun e!2970426 () Bool)

(assert (=> b!4760189 (= tp!1353218 e!2970426)))

(declare-fun b!4760306 () Bool)

(declare-fun tp!1353284 () Bool)

(assert (=> b!4760306 (= e!2970426 (and setRes!27180 tp!1353284))))

(declare-fun condSetEmpty!27180 () Bool)

(assert (=> b!4760306 (= condSetEmpty!27180 (= (_1!30931 (_1!30932 (h!59755 (zeroValue!5136 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))))) ((as const (Array Context!5882 Bool)) false)))))

(assert (= (and b!4760306 condSetEmpty!27180) setIsEmpty!27180))

(assert (= (and b!4760306 (not condSetEmpty!27180)) setNonEmpty!27180))

(assert (= setNonEmpty!27180 b!4760307))

(assert (= (and b!4760189 ((_ is Cons!53344) (zeroValue!5136 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909)))))))) b!4760306))

(declare-fun m!5729632 () Bool)

(assert (=> setNonEmpty!27180 m!5729632))

(declare-fun setIsEmpty!27181 () Bool)

(declare-fun setRes!27181 () Bool)

(assert (=> setIsEmpty!27181 setRes!27181))

(declare-fun setNonEmpty!27181 () Bool)

(declare-fun setElem!27181 () Context!5882)

(declare-fun e!2970429 () Bool)

(declare-fun tp!1353286 () Bool)

(assert (=> setNonEmpty!27181 (= setRes!27181 (and tp!1353286 (inv!68859 setElem!27181) e!2970429))))

(declare-fun setRest!27181 () (InoxSet Context!5882))

(assert (=> setNonEmpty!27181 (= (_1!30931 (_1!30932 (h!59755 (minValue!5136 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5882 Bool)) false) setElem!27181 true) setRest!27181))))

(declare-fun b!4760309 () Bool)

(declare-fun tp!1353285 () Bool)

(assert (=> b!4760309 (= e!2970429 tp!1353285)))

(declare-fun e!2970428 () Bool)

(assert (=> b!4760189 (= tp!1353215 e!2970428)))

(declare-fun b!4760308 () Bool)

(declare-fun tp!1353287 () Bool)

(assert (=> b!4760308 (= e!2970428 (and setRes!27181 tp!1353287))))

(declare-fun condSetEmpty!27181 () Bool)

(assert (=> b!4760308 (= condSetEmpty!27181 (= (_1!30931 (_1!30932 (h!59755 (minValue!5136 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909))))))))) ((as const (Array Context!5882 Bool)) false)))))

(assert (= (and b!4760308 condSetEmpty!27181) setIsEmpty!27181))

(assert (= (and b!4760308 (not condSetEmpty!27181)) setNonEmpty!27181))

(assert (= setNonEmpty!27181 b!4760309))

(assert (= (and b!4760189 ((_ is Cons!53344) (minValue!5136 (v!47394 (underlying!9913 (v!47395 (underlying!9914 (cache!4579 thiss!28909)))))))) b!4760308))

(declare-fun m!5729634 () Bool)

(assert (=> setNonEmpty!27181 m!5729634))

(check-sat (not b!4760285) (not b!4760245) (not b!4760222) (not b_next!130033) (not b!4760268) (not b!4760292) (not b!4760205) (not b!4760246) (not b!4760269) (not setNonEmpty!27180) (not b!4760307) (not b!4760247) (not d!1521336) (not b!4760202) b_and!340951 (not b!4760203) (not b!4760306) (not b!4760295) (not d!1521348) (not b!4760309) (not setNonEmpty!27175) (not b!4760221) (not b!4760282) (not b!4760257) (not b!4760300) (not setNonEmpty!27172) (not setNonEmpty!27176) (not b!4760266) (not b!4760180) (not b!4760284) (not b!4760294) (not b!4760308) (not setNonEmpty!27171) (not b!4760283) (not b!4760267) (not b!4760271) (not bm!333722) b_and!340953 (not b!4760293) (not bm!333720) (not d!1521334) (not b!4760305) (not b!4760213) (not bm!333719) (not b!4760256) (not b!4760187) (not b!4760250) (not b!4760208) (not mapNonEmpty!21581) (not b_next!130031) (not b!4760214) (not d!1521342) (not b!4760200) (not setNonEmpty!27181) (not d!1521346) (not b!4760270) (not d!1521330) (not bm!333723) (not b!4760253) (not setNonEmpty!27179) (not d!1521344) (not bm!333721) (not bm!333724))
(check-sat b_and!340951 b_and!340953 (not b_next!130033) (not b_next!130031))
