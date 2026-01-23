; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228294 () Bool)

(assert start!228294)

(declare-fun b!2314196 () Bool)

(declare-fun b_free!70109 () Bool)

(declare-fun b_next!70813 () Bool)

(assert (=> b!2314196 (= b_free!70109 (not b_next!70813))))

(declare-fun tp!734804 () Bool)

(declare-fun b_and!185009 () Bool)

(assert (=> b!2314196 (= tp!734804 b_and!185009)))

(declare-fun b!2314197 () Bool)

(declare-fun b_free!70111 () Bool)

(declare-fun b_next!70815 () Bool)

(assert (=> b!2314197 (= b_free!70111 (not b_next!70815))))

(declare-fun tp!734801 () Bool)

(declare-fun b_and!185011 () Bool)

(assert (=> b!2314197 (= tp!734801 b_and!185011)))

(declare-fun b!2314179 () Bool)

(declare-fun b_free!70113 () Bool)

(declare-fun b_next!70817 () Bool)

(assert (=> b!2314179 (= b_free!70113 (not b_next!70817))))

(declare-fun tp!734807 () Bool)

(declare-fun b_and!185013 () Bool)

(assert (=> b!2314179 (= tp!734807 b_and!185013)))

(declare-fun b!2314187 () Bool)

(declare-fun b_free!70115 () Bool)

(declare-fun b_next!70819 () Bool)

(assert (=> b!2314187 (= b_free!70115 (not b_next!70819))))

(declare-fun tp!734808 () Bool)

(declare-fun b_and!185015 () Bool)

(assert (=> b!2314187 (= tp!734808 b_and!185015)))

(declare-fun mapNonEmpty!14968 () Bool)

(declare-fun mapRes!14968 () Bool)

(declare-fun tp!734815 () Bool)

(declare-fun tp!734816 () Bool)

(assert (=> mapNonEmpty!14968 (= mapRes!14968 (and tp!734815 tp!734816))))

(declare-fun mapKey!14968 () (_ BitVec 32))

(declare-datatypes ((C!13720 0))(
  ( (C!13721 (val!7916 Int)) )
))
(declare-datatypes ((Regex!6781 0))(
  ( (ElementMatch!6781 (c!366817 C!13720)) (Concat!11369 (regOne!14074 Regex!6781) (regTwo!14074 Regex!6781)) (EmptyExpr!6781) (Star!6781 (reg!7110 Regex!6781)) (EmptyLang!6781) (Union!6781 (regOne!14075 Regex!6781) (regTwo!14075 Regex!6781)) )
))
(declare-datatypes ((List!27682 0))(
  ( (Nil!27584) (Cons!27584 (h!32985 Regex!6781) (t!207282 List!27682)) )
))
(declare-datatypes ((Context!4206 0))(
  ( (Context!4207 (exprs!2603 List!27682)) )
))
(declare-datatypes ((tuple2!27532 0))(
  ( (tuple2!27533 (_1!16294 Context!4206) (_2!16294 C!13720)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27534 0))(
  ( (tuple2!27535 (_1!16295 tuple2!27532) (_2!16295 (InoxSet Context!4206))) )
))
(declare-datatypes ((List!27683 0))(
  ( (Nil!27585) (Cons!27585 (h!32986 tuple2!27534) (t!207283 List!27683)) )
))
(declare-fun mapRest!14968 () (Array (_ BitVec 32) List!27683))

(declare-datatypes ((array!11211 0))(
  ( (array!11212 (arr!4974 (Array (_ BitVec 32) (_ BitVec 64))) (size!21799 (_ BitVec 32))) )
))
(declare-datatypes ((array!11213 0))(
  ( (array!11214 (arr!4975 (Array (_ BitVec 32) List!27683)) (size!21800 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6396 0))(
  ( (LongMapFixedSize!6397 (defaultEntry!3563 Int) (mask!7960 (_ BitVec 32)) (extraKeys!3446 (_ BitVec 32)) (zeroValue!3456 List!27683) (minValue!3456 List!27683) (_size!6443 (_ BitVec 32)) (_keys!3495 array!11211) (_values!3478 array!11213) (_vacant!3259 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12609 0))(
  ( (Cell!12610 (v!30635 LongMapFixedSize!6396)) )
))
(declare-datatypes ((Hashable!3108 0))(
  ( (HashableExt!3107 (__x!18296 Int)) )
))
(declare-datatypes ((MutLongMap!3198 0))(
  ( (LongMap!3198 (underlying!6601 Cell!12609)) (MutLongMapExt!3197 (__x!18297 Int)) )
))
(declare-datatypes ((Cell!12611 0))(
  ( (Cell!12612 (v!30636 MutLongMap!3198)) )
))
(declare-datatypes ((MutableMap!3108 0))(
  ( (MutableMapExt!3107 (__x!18298 Int)) (HashMap!3108 (underlying!6602 Cell!12611) (hashF!5031 Hashable!3108) (_size!6444 (_ BitVec 32)) (defaultValue!3270 Int)) )
))
(declare-datatypes ((CacheUp!2064 0))(
  ( (CacheUp!2065 (cache!3487 MutableMap!3108)) )
))
(declare-fun cacheUp!965 () CacheUp!2064)

(declare-fun mapValue!14968 () List!27683)

(assert (=> mapNonEmpty!14968 (= (arr!4975 (_values!3478 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))) (store mapRest!14968 mapKey!14968 mapValue!14968))))

(declare-fun b!2314178 () Bool)

(declare-fun e!1483518 () Bool)

(declare-fun tp!734811 () Bool)

(assert (=> b!2314178 (= e!1483518 (and tp!734811 mapRes!14968))))

(declare-fun condMapEmpty!14968 () Bool)

(declare-fun mapDefault!14969 () List!27683)

(assert (=> b!2314178 (= condMapEmpty!14968 (= (arr!4975 (_values!3478 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))) ((as const (Array (_ BitVec 32) List!27683)) mapDefault!14969)))))

(declare-fun e!1483519 () Bool)

(declare-fun e!1483529 () Bool)

(assert (=> b!2314179 (= e!1483519 (and e!1483529 tp!734807))))

(declare-fun res!988967 () Bool)

(declare-fun e!1483525 () Bool)

(assert (=> start!228294 (=> (not res!988967) (not e!1483525))))

(declare-fun from!1022 () Int)

(assert (=> start!228294 (= res!988967 (>= from!1022 0))))

(assert (=> start!228294 e!1483525))

(declare-datatypes ((List!27684 0))(
  ( (Nil!27586) (Cons!27586 (h!32987 C!13720) (t!207284 List!27684)) )
))
(declare-datatypes ((IArray!18027 0))(
  ( (IArray!18028 (innerList!9071 List!27684)) )
))
(declare-datatypes ((Conc!9011 0))(
  ( (Node!9011 (left!20912 Conc!9011) (right!21242 Conc!9011) (csize!18252 Int) (cheight!9222 Int)) (Leaf!13225 (xs!11953 IArray!18027) (csize!18253 Int)) (Empty!9011) )
))
(declare-datatypes ((BalanceConc!17754 0))(
  ( (BalanceConc!17755 (c!366818 Conc!9011)) )
))
(declare-fun totalInput!830 () BalanceConc!17754)

(declare-fun e!1483514 () Bool)

(declare-fun inv!37354 (BalanceConc!17754) Bool)

(assert (=> start!228294 (and (inv!37354 totalInput!830) e!1483514)))

(assert (=> start!228294 true))

(declare-datatypes ((tuple3!4116 0))(
  ( (tuple3!4117 (_1!16296 Regex!6781) (_2!16296 Context!4206) (_3!2528 C!13720)) )
))
(declare-datatypes ((tuple2!27536 0))(
  ( (tuple2!27537 (_1!16297 tuple3!4116) (_2!16297 (InoxSet Context!4206))) )
))
(declare-datatypes ((List!27685 0))(
  ( (Nil!27587) (Cons!27587 (h!32988 tuple2!27536) (t!207285 List!27685)) )
))
(declare-datatypes ((array!11215 0))(
  ( (array!11216 (arr!4976 (Array (_ BitVec 32) List!27685)) (size!21801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6398 0))(
  ( (LongMapFixedSize!6399 (defaultEntry!3564 Int) (mask!7961 (_ BitVec 32)) (extraKeys!3447 (_ BitVec 32)) (zeroValue!3457 List!27685) (minValue!3457 List!27685) (_size!6445 (_ BitVec 32)) (_keys!3496 array!11211) (_values!3479 array!11215) (_vacant!3260 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12613 0))(
  ( (Cell!12614 (v!30637 LongMapFixedSize!6398)) )
))
(declare-datatypes ((Hashable!3109 0))(
  ( (HashableExt!3108 (__x!18299 Int)) )
))
(declare-datatypes ((MutLongMap!3199 0))(
  ( (LongMap!3199 (underlying!6603 Cell!12613)) (MutLongMapExt!3198 (__x!18300 Int)) )
))
(declare-datatypes ((Cell!12615 0))(
  ( (Cell!12616 (v!30638 MutLongMap!3199)) )
))
(declare-datatypes ((MutableMap!3109 0))(
  ( (MutableMapExt!3108 (__x!18301 Int)) (HashMap!3109 (underlying!6604 Cell!12615) (hashF!5032 Hashable!3109) (_size!6446 (_ BitVec 32)) (defaultValue!3271 Int)) )
))
(declare-datatypes ((CacheDown!2168 0))(
  ( (CacheDown!2169 (cache!3488 MutableMap!3109)) )
))
(declare-fun cacheDown!1084 () CacheDown!2168)

(declare-fun e!1483526 () Bool)

(declare-fun inv!37355 (CacheDown!2168) Bool)

(assert (=> start!228294 (and (inv!37355 cacheDown!1084) e!1483526)))

(declare-fun e!1483520 () Bool)

(declare-fun inv!37356 (CacheUp!2064) Bool)

(assert (=> start!228294 (and (inv!37356 cacheUp!965) e!1483520)))

(declare-fun condSetEmpty!20818 () Bool)

(declare-fun z!3800 () (InoxSet Context!4206))

(assert (=> start!228294 (= condSetEmpty!20818 (= z!3800 ((as const (Array Context!4206 Bool)) false)))))

(declare-fun setRes!20818 () Bool)

(assert (=> start!228294 setRes!20818))

(declare-fun b!2314180 () Bool)

(declare-fun e!1483509 () Bool)

(declare-fun e!1483512 () Bool)

(assert (=> b!2314180 (= e!1483509 e!1483512)))

(declare-fun setNonEmpty!20818 () Bool)

(declare-fun setElem!20818 () Context!4206)

(declare-fun e!1483521 () Bool)

(declare-fun tp!734806 () Bool)

(declare-fun inv!37357 (Context!4206) Bool)

(assert (=> setNonEmpty!20818 (= setRes!20818 (and tp!734806 (inv!37357 setElem!20818) e!1483521))))

(declare-fun setRest!20818 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20818 (= z!3800 ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20818 true) setRest!20818))))

(declare-fun b!2314181 () Bool)

(declare-fun res!988972 () Bool)

(declare-fun e!1483524 () Bool)

(assert (=> b!2314181 (=> (not res!988972) (not e!1483524))))

(declare-fun e!1483522 () Bool)

(assert (=> b!2314181 (= res!988972 e!1483522)))

(declare-fun res!988971 () Bool)

(assert (=> b!2314181 (=> res!988971 e!1483522)))

(declare-fun totalInputSize!275 () Int)

(assert (=> b!2314181 (= res!988971 (= from!1022 totalInputSize!275))))

(declare-fun b!2314182 () Bool)

(assert (=> b!2314182 (= e!1483525 e!1483524)))

(declare-fun res!988968 () Bool)

(assert (=> b!2314182 (=> (not res!988968) (not e!1483524))))

(declare-fun lt!858009 () Int)

(assert (=> b!2314182 (= res!988968 (and (<= from!1022 lt!858009) (= totalInputSize!275 lt!858009)))))

(declare-fun size!21802 (BalanceConc!17754) Int)

(assert (=> b!2314182 (= lt!858009 (size!21802 totalInput!830))))

(declare-fun b!2314183 () Bool)

(declare-fun e!1483516 () Bool)

(assert (=> b!2314183 (= e!1483520 e!1483516)))

(declare-fun b!2314184 () Bool)

(declare-fun e!1483513 () Bool)

(declare-fun e!1483511 () Bool)

(assert (=> b!2314184 (= e!1483513 e!1483511)))

(declare-fun mapIsEmpty!14968 () Bool)

(assert (=> mapIsEmpty!14968 mapRes!14968))

(declare-fun b!2314185 () Bool)

(declare-fun res!988969 () Bool)

(declare-fun e!1483528 () Bool)

(assert (=> b!2314185 (=> res!988969 e!1483528)))

(declare-fun valid!2400 (CacheUp!2064) Bool)

(assert (=> b!2314185 (= res!988969 (not (valid!2400 cacheUp!965)))))

(declare-fun b!2314186 () Bool)

(declare-fun lostCauseZipper!405 ((InoxSet Context!4206)) Bool)

(assert (=> b!2314186 (= e!1483522 (lostCauseZipper!405 z!3800))))

(declare-fun tp!734813 () Bool)

(declare-fun e!1483515 () Bool)

(declare-fun tp!734810 () Bool)

(declare-fun e!1483517 () Bool)

(declare-fun array_inv!3574 (array!11211) Bool)

(declare-fun array_inv!3575 (array!11215) Bool)

(assert (=> b!2314187 (= e!1483517 (and tp!734808 tp!734810 tp!734813 (array_inv!3574 (_keys!3496 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))) (array_inv!3575 (_values!3479 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))) e!1483515))))

(declare-fun b!2314188 () Bool)

(declare-fun lt!858011 () MutLongMap!3199)

(get-info :version)

(assert (=> b!2314188 (= e!1483529 (and e!1483513 ((_ is LongMap!3199) lt!858011)))))

(assert (=> b!2314188 (= lt!858011 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))

(declare-fun b!2314189 () Bool)

(assert (=> b!2314189 (= e!1483524 e!1483528)))

(declare-fun res!988970 () Bool)

(assert (=> b!2314189 (=> res!988970 e!1483528)))

(declare-fun findLongestMatchInnerZipperFastV2!15 ((InoxSet Context!4206) Int BalanceConc!17754 Int) Int)

(assert (=> b!2314189 (= res!988970 (not (= 0 (findLongestMatchInnerZipperFastV2!15 z!3800 from!1022 totalInput!830 totalInputSize!275))))))

(declare-fun b!2314190 () Bool)

(declare-fun tp!734817 () Bool)

(assert (=> b!2314190 (= e!1483521 tp!734817)))

(declare-fun b!2314191 () Bool)

(declare-fun valid!2401 (CacheDown!2168) Bool)

(assert (=> b!2314191 (= e!1483528 (not (valid!2401 cacheDown!1084)))))

(declare-fun b!2314192 () Bool)

(declare-fun e!1483523 () Bool)

(declare-fun e!1483510 () Bool)

(declare-fun lt!858010 () MutLongMap!3198)

(assert (=> b!2314192 (= e!1483523 (and e!1483510 ((_ is LongMap!3198) lt!858010)))))

(assert (=> b!2314192 (= lt!858010 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))

(declare-fun setIsEmpty!20818 () Bool)

(assert (=> setIsEmpty!20818 setRes!20818))

(declare-fun b!2314193 () Bool)

(assert (=> b!2314193 (= e!1483510 e!1483509)))

(declare-fun b!2314194 () Bool)

(declare-fun tp!734812 () Bool)

(declare-fun inv!37358 (Conc!9011) Bool)

(assert (=> b!2314194 (= e!1483514 (and (inv!37358 (c!366818 totalInput!830)) tp!734812))))

(declare-fun b!2314195 () Bool)

(assert (=> b!2314195 (= e!1483526 e!1483519)))

(declare-fun tp!734814 () Bool)

(declare-fun tp!734809 () Bool)

(declare-fun array_inv!3576 (array!11213) Bool)

(assert (=> b!2314196 (= e!1483512 (and tp!734804 tp!734814 tp!734809 (array_inv!3574 (_keys!3495 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))) (array_inv!3576 (_values!3478 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))) e!1483518))))

(declare-fun mapIsEmpty!14969 () Bool)

(declare-fun mapRes!14969 () Bool)

(assert (=> mapIsEmpty!14969 mapRes!14969))

(assert (=> b!2314197 (= e!1483516 (and e!1483523 tp!734801))))

(declare-fun b!2314198 () Bool)

(assert (=> b!2314198 (= e!1483511 e!1483517)))

(declare-fun b!2314199 () Bool)

(declare-fun tp!734802 () Bool)

(assert (=> b!2314199 (= e!1483515 (and tp!734802 mapRes!14969))))

(declare-fun condMapEmpty!14969 () Bool)

(declare-fun mapDefault!14968 () List!27685)

(assert (=> b!2314199 (= condMapEmpty!14969 (= (arr!4976 (_values!3479 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))) ((as const (Array (_ BitVec 32) List!27685)) mapDefault!14968)))))

(declare-fun mapNonEmpty!14969 () Bool)

(declare-fun tp!734803 () Bool)

(declare-fun tp!734805 () Bool)

(assert (=> mapNonEmpty!14969 (= mapRes!14969 (and tp!734803 tp!734805))))

(declare-fun mapRest!14969 () (Array (_ BitVec 32) List!27685))

(declare-fun mapValue!14969 () List!27685)

(declare-fun mapKey!14969 () (_ BitVec 32))

(assert (=> mapNonEmpty!14969 (= (arr!4976 (_values!3479 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))) (store mapRest!14969 mapKey!14969 mapValue!14969))))

(assert (= (and start!228294 res!988967) b!2314182))

(assert (= (and b!2314182 res!988968) b!2314181))

(assert (= (and b!2314181 (not res!988971)) b!2314186))

(assert (= (and b!2314181 res!988972) b!2314189))

(assert (= (and b!2314189 (not res!988970)) b!2314185))

(assert (= (and b!2314185 (not res!988969)) b!2314191))

(assert (= start!228294 b!2314194))

(assert (= (and b!2314199 condMapEmpty!14969) mapIsEmpty!14969))

(assert (= (and b!2314199 (not condMapEmpty!14969)) mapNonEmpty!14969))

(assert (= b!2314187 b!2314199))

(assert (= b!2314198 b!2314187))

(assert (= b!2314184 b!2314198))

(assert (= (and b!2314188 ((_ is LongMap!3199) (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))) b!2314184))

(assert (= b!2314179 b!2314188))

(assert (= (and b!2314195 ((_ is HashMap!3109) (cache!3488 cacheDown!1084))) b!2314179))

(assert (= start!228294 b!2314195))

(assert (= (and b!2314178 condMapEmpty!14968) mapIsEmpty!14968))

(assert (= (and b!2314178 (not condMapEmpty!14968)) mapNonEmpty!14968))

(assert (= b!2314196 b!2314178))

(assert (= b!2314180 b!2314196))

(assert (= b!2314193 b!2314180))

(assert (= (and b!2314192 ((_ is LongMap!3198) (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))) b!2314193))

(assert (= b!2314197 b!2314192))

(assert (= (and b!2314183 ((_ is HashMap!3108) (cache!3487 cacheUp!965))) b!2314197))

(assert (= start!228294 b!2314183))

(assert (= (and start!228294 condSetEmpty!20818) setIsEmpty!20818))

(assert (= (and start!228294 (not condSetEmpty!20818)) setNonEmpty!20818))

(assert (= setNonEmpty!20818 b!2314190))

(declare-fun m!2741229 () Bool)

(assert (=> start!228294 m!2741229))

(declare-fun m!2741231 () Bool)

(assert (=> start!228294 m!2741231))

(declare-fun m!2741233 () Bool)

(assert (=> start!228294 m!2741233))

(declare-fun m!2741235 () Bool)

(assert (=> b!2314182 m!2741235))

(declare-fun m!2741237 () Bool)

(assert (=> b!2314186 m!2741237))

(declare-fun m!2741239 () Bool)

(assert (=> b!2314185 m!2741239))

(declare-fun m!2741241 () Bool)

(assert (=> b!2314187 m!2741241))

(declare-fun m!2741243 () Bool)

(assert (=> b!2314187 m!2741243))

(declare-fun m!2741245 () Bool)

(assert (=> mapNonEmpty!14969 m!2741245))

(declare-fun m!2741247 () Bool)

(assert (=> b!2314191 m!2741247))

(declare-fun m!2741249 () Bool)

(assert (=> b!2314189 m!2741249))

(declare-fun m!2741251 () Bool)

(assert (=> b!2314196 m!2741251))

(declare-fun m!2741253 () Bool)

(assert (=> b!2314196 m!2741253))

(declare-fun m!2741255 () Bool)

(assert (=> setNonEmpty!20818 m!2741255))

(declare-fun m!2741257 () Bool)

(assert (=> mapNonEmpty!14968 m!2741257))

(declare-fun m!2741259 () Bool)

(assert (=> b!2314194 m!2741259))

(check-sat (not b!2314190) (not b!2314178) (not b!2314182) b_and!185013 b_and!185009 (not b_next!70817) (not b_next!70815) (not b!2314199) (not b!2314194) b_and!185015 (not b!2314191) (not mapNonEmpty!14969) (not start!228294) (not mapNonEmpty!14968) (not b!2314185) (not b_next!70813) (not setNonEmpty!20818) (not b_next!70819) b_and!185011 (not b!2314186) (not b!2314196) (not b!2314189) (not b!2314187))
(check-sat (not b_next!70813) b_and!185013 b_and!185009 (not b_next!70817) (not b_next!70815) b_and!185015 (not b_next!70819) b_and!185011)
(get-model)

(declare-fun bs!458748 () Bool)

(declare-fun b!2314204 () Bool)

(declare-fun d!684452 () Bool)

(assert (= bs!458748 (and b!2314204 d!684452)))

(declare-fun lambda!86338 () Int)

(declare-fun lambda!86337 () Int)

(assert (=> bs!458748 (not (= lambda!86338 lambda!86337))))

(declare-fun bs!458749 () Bool)

(declare-fun b!2314205 () Bool)

(assert (= bs!458749 (and b!2314205 d!684452)))

(declare-fun lambda!86339 () Int)

(assert (=> bs!458749 (not (= lambda!86339 lambda!86337))))

(declare-fun bs!458750 () Bool)

(assert (= bs!458750 (and b!2314205 b!2314204)))

(assert (=> bs!458750 (= lambda!86339 lambda!86338)))

(declare-datatypes ((List!27686 0))(
  ( (Nil!27588) (Cons!27588 (h!32989 Context!4206) (t!207286 List!27686)) )
))
(declare-fun lt!858028 () List!27686)

(declare-fun call!137430 () Bool)

(declare-fun bm!137425 () Bool)

(declare-fun c!366829 () Bool)

(declare-fun lt!858033 () List!27686)

(declare-fun exists!881 (List!27686 Int) Bool)

(assert (=> bm!137425 (= call!137430 (exists!881 (ite c!366829 lt!858028 lt!858033) (ite c!366829 lambda!86338 lambda!86339)))))

(declare-fun lt!858035 () Bool)

(declare-datatypes ((Option!5416 0))(
  ( (None!5415) (Some!5415 (v!30639 List!27684)) )
))
(declare-fun isEmpty!15751 (Option!5416) Bool)

(declare-fun getLanguageWitness!167 ((InoxSet Context!4206)) Option!5416)

(assert (=> d!684452 (= lt!858035 (isEmpty!15751 (getLanguageWitness!167 z!3800)))))

(declare-fun forall!5514 ((InoxSet Context!4206) Int) Bool)

(assert (=> d!684452 (= lt!858035 (forall!5514 z!3800 lambda!86337))))

(declare-datatypes ((Unit!40456 0))(
  ( (Unit!40457) )
))
(declare-fun lt!858030 () Unit!40456)

(declare-fun e!1483537 () Unit!40456)

(assert (=> d!684452 (= lt!858030 e!1483537)))

(assert (=> d!684452 (= c!366829 (not (forall!5514 z!3800 lambda!86337)))))

(assert (=> d!684452 (= (lostCauseZipper!405 z!3800) lt!858035)))

(declare-fun Unit!40458 () Unit!40456)

(assert (=> b!2314205 (= e!1483537 Unit!40458)))

(declare-fun call!137429 () List!27686)

(assert (=> b!2314205 (= lt!858033 call!137429)))

(declare-fun lt!858031 () Unit!40456)

(declare-fun lemmaForallThenNotExists!68 (List!27686 Int) Unit!40456)

(assert (=> b!2314205 (= lt!858031 (lemmaForallThenNotExists!68 lt!858033 lambda!86337))))

(assert (=> b!2314205 (not call!137430)))

(declare-fun lt!858034 () Unit!40456)

(assert (=> b!2314205 (= lt!858034 lt!858031)))

(declare-fun bm!137424 () Bool)

(declare-fun toList!1406 ((InoxSet Context!4206)) List!27686)

(assert (=> bm!137424 (= call!137429 (toList!1406 z!3800))))

(declare-fun Unit!40459 () Unit!40456)

(assert (=> b!2314204 (= e!1483537 Unit!40459)))

(assert (=> b!2314204 (= lt!858028 call!137429)))

(declare-fun lt!858032 () Unit!40456)

(declare-fun lemmaNotForallThenExists!68 (List!27686 Int) Unit!40456)

(assert (=> b!2314204 (= lt!858032 (lemmaNotForallThenExists!68 lt!858028 lambda!86337))))

(assert (=> b!2314204 call!137430))

(declare-fun lt!858029 () Unit!40456)

(assert (=> b!2314204 (= lt!858029 lt!858032)))

(assert (= (and d!684452 c!366829) b!2314204))

(assert (= (and d!684452 (not c!366829)) b!2314205))

(assert (= (or b!2314204 b!2314205) bm!137424))

(assert (= (or b!2314204 b!2314205) bm!137425))

(declare-fun m!2741261 () Bool)

(assert (=> d!684452 m!2741261))

(assert (=> d!684452 m!2741261))

(declare-fun m!2741263 () Bool)

(assert (=> d!684452 m!2741263))

(declare-fun m!2741265 () Bool)

(assert (=> d!684452 m!2741265))

(assert (=> d!684452 m!2741265))

(declare-fun m!2741267 () Bool)

(assert (=> bm!137425 m!2741267))

(declare-fun m!2741269 () Bool)

(assert (=> b!2314204 m!2741269))

(declare-fun m!2741271 () Bool)

(assert (=> b!2314205 m!2741271))

(declare-fun m!2741273 () Bool)

(assert (=> bm!137424 m!2741273))

(assert (=> b!2314186 d!684452))

(declare-fun d!684454 () Bool)

(declare-fun lt!858038 () Int)

(declare-fun size!21803 (List!27684) Int)

(declare-fun list!10920 (BalanceConc!17754) List!27684)

(assert (=> d!684454 (= lt!858038 (size!21803 (list!10920 totalInput!830)))))

(declare-fun size!21804 (Conc!9011) Int)

(assert (=> d!684454 (= lt!858038 (size!21804 (c!366818 totalInput!830)))))

(assert (=> d!684454 (= (size!21802 totalInput!830) lt!858038)))

(declare-fun bs!458751 () Bool)

(assert (= bs!458751 d!684454))

(declare-fun m!2741275 () Bool)

(assert (=> bs!458751 m!2741275))

(assert (=> bs!458751 m!2741275))

(declare-fun m!2741277 () Bool)

(assert (=> bs!458751 m!2741277))

(declare-fun m!2741279 () Bool)

(assert (=> bs!458751 m!2741279))

(assert (=> b!2314182 d!684454))

(declare-fun d!684456 () Bool)

(assert (=> d!684456 (= (array_inv!3574 (_keys!3495 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))) (bvsge (size!21799 (_keys!3495 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))) #b00000000000000000000000000000000))))

(assert (=> b!2314196 d!684456))

(declare-fun d!684458 () Bool)

(assert (=> d!684458 (= (array_inv!3576 (_values!3478 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))) (bvsge (size!21800 (_values!3478 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965))))))) #b00000000000000000000000000000000))))

(assert (=> b!2314196 d!684458))

(declare-fun d!684460 () Bool)

(declare-fun validCacheMapDown!347 (MutableMap!3109) Bool)

(assert (=> d!684460 (= (valid!2401 cacheDown!1084) (validCacheMapDown!347 (cache!3488 cacheDown!1084)))))

(declare-fun bs!458752 () Bool)

(assert (= bs!458752 d!684460))

(declare-fun m!2741281 () Bool)

(assert (=> bs!458752 m!2741281))

(assert (=> b!2314191 d!684460))

(declare-fun d!684462 () Bool)

(declare-fun isBalanced!2710 (Conc!9011) Bool)

(assert (=> d!684462 (= (inv!37354 totalInput!830) (isBalanced!2710 (c!366818 totalInput!830)))))

(declare-fun bs!458753 () Bool)

(assert (= bs!458753 d!684462))

(declare-fun m!2741283 () Bool)

(assert (=> bs!458753 m!2741283))

(assert (=> start!228294 d!684462))

(declare-fun d!684464 () Bool)

(declare-fun res!988975 () Bool)

(declare-fun e!1483540 () Bool)

(assert (=> d!684464 (=> (not res!988975) (not e!1483540))))

(assert (=> d!684464 (= res!988975 ((_ is HashMap!3109) (cache!3488 cacheDown!1084)))))

(assert (=> d!684464 (= (inv!37355 cacheDown!1084) e!1483540)))

(declare-fun b!2314208 () Bool)

(assert (=> b!2314208 (= e!1483540 (validCacheMapDown!347 (cache!3488 cacheDown!1084)))))

(assert (= (and d!684464 res!988975) b!2314208))

(assert (=> b!2314208 m!2741281))

(assert (=> start!228294 d!684464))

(declare-fun d!684466 () Bool)

(declare-fun res!988978 () Bool)

(declare-fun e!1483543 () Bool)

(assert (=> d!684466 (=> (not res!988978) (not e!1483543))))

(assert (=> d!684466 (= res!988978 ((_ is HashMap!3108) (cache!3487 cacheUp!965)))))

(assert (=> d!684466 (= (inv!37356 cacheUp!965) e!1483543)))

(declare-fun b!2314211 () Bool)

(declare-fun validCacheMapUp!316 (MutableMap!3108) Bool)

(assert (=> b!2314211 (= e!1483543 (validCacheMapUp!316 (cache!3487 cacheUp!965)))))

(assert (= (and d!684466 res!988978) b!2314211))

(declare-fun m!2741285 () Bool)

(assert (=> b!2314211 m!2741285))

(assert (=> start!228294 d!684466))

(declare-fun d!684468 () Bool)

(assert (=> d!684468 (= (array_inv!3574 (_keys!3496 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))) (bvsge (size!21799 (_keys!3496 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))) #b00000000000000000000000000000000))))

(assert (=> b!2314187 d!684468))

(declare-fun d!684470 () Bool)

(assert (=> d!684470 (= (array_inv!3575 (_values!3479 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))) (bvsge (size!21801 (_values!3479 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084))))))) #b00000000000000000000000000000000))))

(assert (=> b!2314187 d!684470))

(declare-fun b!2314228 () Bool)

(declare-fun e!1483558 () Int)

(assert (=> b!2314228 (= e!1483558 1)))

(declare-fun b!2314229 () Bool)

(assert (=> b!2314229 (= e!1483558 0)))

(declare-fun b!2314230 () Bool)

(declare-fun e!1483555 () Bool)

(assert (=> b!2314230 (= e!1483555 (lostCauseZipper!405 z!3800))))

(declare-fun b!2314231 () Bool)

(declare-fun e!1483554 () Int)

(declare-fun e!1483556 () Int)

(assert (=> b!2314231 (= e!1483554 e!1483556)))

(declare-fun lt!858045 () (InoxSet Context!4206))

(declare-fun derivationStepZipper!335 ((InoxSet Context!4206) C!13720) (InoxSet Context!4206))

(declare-fun apply!6681 (BalanceConc!17754 Int) C!13720)

(assert (=> b!2314231 (= lt!858045 (derivationStepZipper!335 z!3800 (apply!6681 totalInput!830 from!1022)))))

(declare-fun lt!858047 () Int)

(assert (=> b!2314231 (= lt!858047 (findLongestMatchInnerZipperFastV2!15 lt!858045 (+ from!1022 1) totalInput!830 totalInputSize!275))))

(declare-fun c!366837 () Bool)

(assert (=> b!2314231 (= c!366837 (> lt!858047 0))))

(declare-fun b!2314232 () Bool)

(assert (=> b!2314232 (= e!1483554 0)))

(declare-fun d!684472 () Bool)

(declare-fun lt!858046 () Int)

(assert (=> d!684472 (and (>= lt!858046 0) (<= lt!858046 (- totalInputSize!275 from!1022)))))

(assert (=> d!684472 (= lt!858046 e!1483554)))

(declare-fun c!366836 () Bool)

(assert (=> d!684472 (= c!366836 e!1483555)))

(declare-fun res!988983 () Bool)

(assert (=> d!684472 (=> res!988983 e!1483555)))

(assert (=> d!684472 (= res!988983 (= from!1022 totalInputSize!275))))

(declare-fun e!1483557 () Bool)

(assert (=> d!684472 e!1483557))

(declare-fun res!988984 () Bool)

(assert (=> d!684472 (=> (not res!988984) (not e!1483557))))

(assert (=> d!684472 (= res!988984 (>= from!1022 0))))

(assert (=> d!684472 (= (findLongestMatchInnerZipperFastV2!15 z!3800 from!1022 totalInput!830 totalInputSize!275) lt!858046)))

(declare-fun b!2314233 () Bool)

(assert (=> b!2314233 (= e!1483556 (+ 1 lt!858047))))

(declare-fun b!2314234 () Bool)

(declare-fun c!366838 () Bool)

(declare-fun nullableZipper!594 ((InoxSet Context!4206)) Bool)

(assert (=> b!2314234 (= c!366838 (nullableZipper!594 lt!858045))))

(assert (=> b!2314234 (= e!1483556 e!1483558)))

(declare-fun b!2314235 () Bool)

(assert (=> b!2314235 (= e!1483557 (<= from!1022 (size!21802 totalInput!830)))))

(assert (= (and d!684472 res!988984) b!2314235))

(assert (= (and d!684472 (not res!988983)) b!2314230))

(assert (= (and d!684472 c!366836) b!2314232))

(assert (= (and d!684472 (not c!366836)) b!2314231))

(assert (= (and b!2314231 c!366837) b!2314233))

(assert (= (and b!2314231 (not c!366837)) b!2314234))

(assert (= (and b!2314234 c!366838) b!2314228))

(assert (= (and b!2314234 (not c!366838)) b!2314229))

(assert (=> b!2314230 m!2741237))

(declare-fun m!2741287 () Bool)

(assert (=> b!2314231 m!2741287))

(assert (=> b!2314231 m!2741287))

(declare-fun m!2741289 () Bool)

(assert (=> b!2314231 m!2741289))

(declare-fun m!2741291 () Bool)

(assert (=> b!2314231 m!2741291))

(declare-fun m!2741293 () Bool)

(assert (=> b!2314234 m!2741293))

(assert (=> b!2314235 m!2741235))

(assert (=> b!2314189 d!684472))

(declare-fun d!684474 () Bool)

(assert (=> d!684474 (= (valid!2400 cacheUp!965) (validCacheMapUp!316 (cache!3487 cacheUp!965)))))

(declare-fun bs!458754 () Bool)

(assert (= bs!458754 d!684474))

(assert (=> bs!458754 m!2741285))

(assert (=> b!2314185 d!684474))

(declare-fun d!684476 () Bool)

(declare-fun lambda!86342 () Int)

(declare-fun forall!5515 (List!27682 Int) Bool)

(assert (=> d!684476 (= (inv!37357 setElem!20818) (forall!5515 (exprs!2603 setElem!20818) lambda!86342))))

(declare-fun bs!458755 () Bool)

(assert (= bs!458755 d!684476))

(declare-fun m!2741295 () Bool)

(assert (=> bs!458755 m!2741295))

(assert (=> setNonEmpty!20818 d!684476))

(declare-fun d!684478 () Bool)

(declare-fun c!366841 () Bool)

(assert (=> d!684478 (= c!366841 ((_ is Node!9011) (c!366818 totalInput!830)))))

(declare-fun e!1483563 () Bool)

(assert (=> d!684478 (= (inv!37358 (c!366818 totalInput!830)) e!1483563)))

(declare-fun b!2314242 () Bool)

(declare-fun inv!37359 (Conc!9011) Bool)

(assert (=> b!2314242 (= e!1483563 (inv!37359 (c!366818 totalInput!830)))))

(declare-fun b!2314243 () Bool)

(declare-fun e!1483564 () Bool)

(assert (=> b!2314243 (= e!1483563 e!1483564)))

(declare-fun res!988987 () Bool)

(assert (=> b!2314243 (= res!988987 (not ((_ is Leaf!13225) (c!366818 totalInput!830))))))

(assert (=> b!2314243 (=> res!988987 e!1483564)))

(declare-fun b!2314244 () Bool)

(declare-fun inv!37360 (Conc!9011) Bool)

(assert (=> b!2314244 (= e!1483564 (inv!37360 (c!366818 totalInput!830)))))

(assert (= (and d!684478 c!366841) b!2314242))

(assert (= (and d!684478 (not c!366841)) b!2314243))

(assert (= (and b!2314243 (not res!988987)) b!2314244))

(declare-fun m!2741297 () Bool)

(assert (=> b!2314242 m!2741297))

(declare-fun m!2741299 () Bool)

(assert (=> b!2314244 m!2741299))

(assert (=> b!2314194 d!684478))

(declare-fun mapIsEmpty!14972 () Bool)

(declare-fun mapRes!14972 () Bool)

(assert (=> mapIsEmpty!14972 mapRes!14972))

(declare-fun b!2314259 () Bool)

(declare-fun e!1483578 () Bool)

(declare-fun tp!734843 () Bool)

(assert (=> b!2314259 (= e!1483578 tp!734843)))

(declare-fun condMapEmpty!14972 () Bool)

(declare-fun mapDefault!14972 () List!27685)

(assert (=> mapNonEmpty!14969 (= condMapEmpty!14972 (= mapRest!14969 ((as const (Array (_ BitVec 32) List!27685)) mapDefault!14972)))))

(declare-fun e!1483580 () Bool)

(assert (=> mapNonEmpty!14969 (= tp!734803 (and e!1483580 mapRes!14972))))

(declare-fun setIsEmpty!20823 () Bool)

(declare-fun setRes!20824 () Bool)

(assert (=> setIsEmpty!20823 setRes!20824))

(declare-fun b!2314260 () Bool)

(declare-fun e!1483577 () Bool)

(declare-fun tp!734840 () Bool)

(assert (=> b!2314260 (= e!1483577 tp!734840)))

(declare-fun mapNonEmpty!14972 () Bool)

(declare-fun tp!734849 () Bool)

(declare-fun e!1483582 () Bool)

(assert (=> mapNonEmpty!14972 (= mapRes!14972 (and tp!734849 e!1483582))))

(declare-fun mapKey!14972 () (_ BitVec 32))

(declare-fun mapValue!14972 () List!27685)

(declare-fun mapRest!14972 () (Array (_ BitVec 32) List!27685))

(assert (=> mapNonEmpty!14972 (= mapRest!14969 (store mapRest!14972 mapKey!14972 mapValue!14972))))

(declare-fun setNonEmpty!20823 () Bool)

(declare-fun tp!734844 () Bool)

(declare-fun setRes!20823 () Bool)

(declare-fun setElem!20824 () Context!4206)

(assert (=> setNonEmpty!20823 (= setRes!20823 (and tp!734844 (inv!37357 setElem!20824) e!1483577))))

(declare-fun setRest!20823 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20823 (= (_2!16297 (h!32988 mapDefault!14972)) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20824 true) setRest!20823))))

(declare-fun setIsEmpty!20824 () Bool)

(assert (=> setIsEmpty!20824 setRes!20823))

(declare-fun b!2314261 () Bool)

(declare-fun e!1483581 () Bool)

(declare-fun tp!734847 () Bool)

(assert (=> b!2314261 (= e!1483581 tp!734847)))

(declare-fun b!2314262 () Bool)

(declare-fun e!1483579 () Bool)

(declare-fun tp!734846 () Bool)

(assert (=> b!2314262 (= e!1483579 tp!734846)))

(declare-fun b!2314263 () Bool)

(declare-fun tp!734841 () Bool)

(declare-fun tp!734842 () Bool)

(declare-fun tp_is_empty!10763 () Bool)

(assert (=> b!2314263 (= e!1483580 (and tp!734842 (inv!37357 (_2!16296 (_1!16297 (h!32988 mapDefault!14972)))) e!1483581 tp_is_empty!10763 setRes!20823 tp!734841))))

(declare-fun condSetEmpty!20824 () Bool)

(assert (=> b!2314263 (= condSetEmpty!20824 (= (_2!16297 (h!32988 mapDefault!14972)) ((as const (Array Context!4206 Bool)) false)))))

(declare-fun tp!734845 () Bool)

(declare-fun setNonEmpty!20824 () Bool)

(declare-fun setElem!20823 () Context!4206)

(assert (=> setNonEmpty!20824 (= setRes!20824 (and tp!734845 (inv!37357 setElem!20823) e!1483578))))

(declare-fun setRest!20824 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20824 (= (_2!16297 (h!32988 mapValue!14972)) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20823 true) setRest!20824))))

(declare-fun tp!734848 () Bool)

(declare-fun tp!734850 () Bool)

(declare-fun b!2314264 () Bool)

(assert (=> b!2314264 (= e!1483582 (and tp!734850 (inv!37357 (_2!16296 (_1!16297 (h!32988 mapValue!14972)))) e!1483579 tp_is_empty!10763 setRes!20824 tp!734848))))

(declare-fun condSetEmpty!20823 () Bool)

(assert (=> b!2314264 (= condSetEmpty!20823 (= (_2!16297 (h!32988 mapValue!14972)) ((as const (Array Context!4206 Bool)) false)))))

(assert (= (and mapNonEmpty!14969 condMapEmpty!14972) mapIsEmpty!14972))

(assert (= (and mapNonEmpty!14969 (not condMapEmpty!14972)) mapNonEmpty!14972))

(assert (= b!2314264 b!2314262))

(assert (= (and b!2314264 condSetEmpty!20823) setIsEmpty!20823))

(assert (= (and b!2314264 (not condSetEmpty!20823)) setNonEmpty!20824))

(assert (= setNonEmpty!20824 b!2314259))

(assert (= (and mapNonEmpty!14972 ((_ is Cons!27587) mapValue!14972)) b!2314264))

(assert (= b!2314263 b!2314261))

(assert (= (and b!2314263 condSetEmpty!20824) setIsEmpty!20824))

(assert (= (and b!2314263 (not condSetEmpty!20824)) setNonEmpty!20823))

(assert (= setNonEmpty!20823 b!2314260))

(assert (= (and mapNonEmpty!14969 ((_ is Cons!27587) mapDefault!14972)) b!2314263))

(declare-fun m!2741301 () Bool)

(assert (=> setNonEmpty!20823 m!2741301))

(declare-fun m!2741303 () Bool)

(assert (=> b!2314263 m!2741303))

(declare-fun m!2741305 () Bool)

(assert (=> setNonEmpty!20824 m!2741305))

(declare-fun m!2741307 () Bool)

(assert (=> b!2314264 m!2741307))

(declare-fun m!2741309 () Bool)

(assert (=> mapNonEmpty!14972 m!2741309))

(declare-fun setIsEmpty!20827 () Bool)

(declare-fun setRes!20827 () Bool)

(assert (=> setIsEmpty!20827 setRes!20827))

(declare-fun b!2314273 () Bool)

(declare-fun e!1483590 () Bool)

(declare-fun tp!734864 () Bool)

(assert (=> b!2314273 (= e!1483590 tp!734864)))

(declare-fun tp!734863 () Bool)

(declare-fun b!2314274 () Bool)

(declare-fun tp!734861 () Bool)

(declare-fun e!1483589 () Bool)

(assert (=> b!2314274 (= e!1483589 (and tp!734863 (inv!37357 (_2!16296 (_1!16297 (h!32988 mapValue!14969)))) e!1483590 tp_is_empty!10763 setRes!20827 tp!734861))))

(declare-fun condSetEmpty!20827 () Bool)

(assert (=> b!2314274 (= condSetEmpty!20827 (= (_2!16297 (h!32988 mapValue!14969)) ((as const (Array Context!4206 Bool)) false)))))

(declare-fun b!2314275 () Bool)

(declare-fun e!1483591 () Bool)

(declare-fun tp!734865 () Bool)

(assert (=> b!2314275 (= e!1483591 tp!734865)))

(assert (=> mapNonEmpty!14969 (= tp!734805 e!1483589)))

(declare-fun tp!734862 () Bool)

(declare-fun setElem!20827 () Context!4206)

(declare-fun setNonEmpty!20827 () Bool)

(assert (=> setNonEmpty!20827 (= setRes!20827 (and tp!734862 (inv!37357 setElem!20827) e!1483591))))

(declare-fun setRest!20827 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20827 (= (_2!16297 (h!32988 mapValue!14969)) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20827 true) setRest!20827))))

(assert (= b!2314274 b!2314273))

(assert (= (and b!2314274 condSetEmpty!20827) setIsEmpty!20827))

(assert (= (and b!2314274 (not condSetEmpty!20827)) setNonEmpty!20827))

(assert (= setNonEmpty!20827 b!2314275))

(assert (= (and mapNonEmpty!14969 ((_ is Cons!27587) mapValue!14969)) b!2314274))

(declare-fun m!2741311 () Bool)

(assert (=> b!2314274 m!2741311))

(declare-fun m!2741313 () Bool)

(assert (=> setNonEmpty!20827 m!2741313))

(declare-fun b!2314284 () Bool)

(declare-fun e!1483598 () Bool)

(declare-fun tp!734875 () Bool)

(assert (=> b!2314284 (= e!1483598 tp!734875)))

(declare-fun setIsEmpty!20830 () Bool)

(declare-fun setRes!20830 () Bool)

(assert (=> setIsEmpty!20830 setRes!20830))

(declare-fun tp!734877 () Bool)

(declare-fun e!1483600 () Bool)

(declare-fun setNonEmpty!20830 () Bool)

(declare-fun setElem!20830 () Context!4206)

(assert (=> setNonEmpty!20830 (= setRes!20830 (and tp!734877 (inv!37357 setElem!20830) e!1483600))))

(declare-fun setRest!20830 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20830 (= (_2!16295 (h!32986 (zeroValue!3456 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965)))))))) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20830 true) setRest!20830))))

(declare-fun b!2314286 () Bool)

(declare-fun tp!734874 () Bool)

(assert (=> b!2314286 (= e!1483600 tp!734874)))

(declare-fun b!2314285 () Bool)

(declare-fun e!1483599 () Bool)

(declare-fun tp!734876 () Bool)

(assert (=> b!2314285 (= e!1483599 (and (inv!37357 (_1!16294 (_1!16295 (h!32986 (zeroValue!3456 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965)))))))))) e!1483598 tp_is_empty!10763 setRes!20830 tp!734876))))

(declare-fun condSetEmpty!20830 () Bool)

(assert (=> b!2314285 (= condSetEmpty!20830 (= (_2!16295 (h!32986 (zeroValue!3456 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965)))))))) ((as const (Array Context!4206 Bool)) false)))))

(assert (=> b!2314196 (= tp!734814 e!1483599)))

(assert (= b!2314285 b!2314284))

(assert (= (and b!2314285 condSetEmpty!20830) setIsEmpty!20830))

(assert (= (and b!2314285 (not condSetEmpty!20830)) setNonEmpty!20830))

(assert (= setNonEmpty!20830 b!2314286))

(assert (= (and b!2314196 ((_ is Cons!27585) (zeroValue!3456 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965)))))))) b!2314285))

(declare-fun m!2741315 () Bool)

(assert (=> setNonEmpty!20830 m!2741315))

(declare-fun m!2741317 () Bool)

(assert (=> b!2314285 m!2741317))

(declare-fun b!2314287 () Bool)

(declare-fun e!1483601 () Bool)

(declare-fun tp!734879 () Bool)

(assert (=> b!2314287 (= e!1483601 tp!734879)))

(declare-fun setIsEmpty!20831 () Bool)

(declare-fun setRes!20831 () Bool)

(assert (=> setIsEmpty!20831 setRes!20831))

(declare-fun tp!734881 () Bool)

(declare-fun e!1483603 () Bool)

(declare-fun setElem!20831 () Context!4206)

(declare-fun setNonEmpty!20831 () Bool)

(assert (=> setNonEmpty!20831 (= setRes!20831 (and tp!734881 (inv!37357 setElem!20831) e!1483603))))

(declare-fun setRest!20831 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20831 (= (_2!16295 (h!32986 (minValue!3456 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965)))))))) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20831 true) setRest!20831))))

(declare-fun b!2314289 () Bool)

(declare-fun tp!734878 () Bool)

(assert (=> b!2314289 (= e!1483603 tp!734878)))

(declare-fun b!2314288 () Bool)

(declare-fun tp!734880 () Bool)

(declare-fun e!1483602 () Bool)

(assert (=> b!2314288 (= e!1483602 (and (inv!37357 (_1!16294 (_1!16295 (h!32986 (minValue!3456 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965)))))))))) e!1483601 tp_is_empty!10763 setRes!20831 tp!734880))))

(declare-fun condSetEmpty!20831 () Bool)

(assert (=> b!2314288 (= condSetEmpty!20831 (= (_2!16295 (h!32986 (minValue!3456 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965)))))))) ((as const (Array Context!4206 Bool)) false)))))

(assert (=> b!2314196 (= tp!734809 e!1483602)))

(assert (= b!2314288 b!2314287))

(assert (= (and b!2314288 condSetEmpty!20831) setIsEmpty!20831))

(assert (= (and b!2314288 (not condSetEmpty!20831)) setNonEmpty!20831))

(assert (= setNonEmpty!20831 b!2314289))

(assert (= (and b!2314196 ((_ is Cons!27585) (minValue!3456 (v!30635 (underlying!6601 (v!30636 (underlying!6602 (cache!3487 cacheUp!965)))))))) b!2314288))

(declare-fun m!2741319 () Bool)

(assert (=> setNonEmpty!20831 m!2741319))

(declare-fun m!2741321 () Bool)

(assert (=> b!2314288 m!2741321))

(declare-fun setIsEmpty!20836 () Bool)

(declare-fun setRes!20837 () Bool)

(assert (=> setIsEmpty!20836 setRes!20837))

(declare-fun b!2314304 () Bool)

(declare-fun e!1483619 () Bool)

(declare-fun tp!734906 () Bool)

(assert (=> b!2314304 (= e!1483619 tp!734906)))

(declare-fun tp!734908 () Bool)

(declare-fun e!1483620 () Bool)

(declare-fun b!2314305 () Bool)

(declare-fun setRes!20836 () Bool)

(declare-fun e!1483616 () Bool)

(declare-fun mapDefault!14975 () List!27683)

(assert (=> b!2314305 (= e!1483620 (and (inv!37357 (_1!16294 (_1!16295 (h!32986 mapDefault!14975)))) e!1483616 tp_is_empty!10763 setRes!20836 tp!734908))))

(declare-fun condSetEmpty!20837 () Bool)

(assert (=> b!2314305 (= condSetEmpty!20837 (= (_2!16295 (h!32986 mapDefault!14975)) ((as const (Array Context!4206 Bool)) false)))))

(declare-fun mapNonEmpty!14975 () Bool)

(declare-fun mapRes!14975 () Bool)

(declare-fun tp!734905 () Bool)

(declare-fun e!1483617 () Bool)

(assert (=> mapNonEmpty!14975 (= mapRes!14975 (and tp!734905 e!1483617))))

(declare-fun mapKey!14975 () (_ BitVec 32))

(declare-fun mapValue!14975 () List!27683)

(declare-fun mapRest!14975 () (Array (_ BitVec 32) List!27683))

(assert (=> mapNonEmpty!14975 (= mapRest!14968 (store mapRest!14975 mapKey!14975 mapValue!14975))))

(declare-fun b!2314306 () Bool)

(declare-fun e!1483621 () Bool)

(declare-fun tp!734901 () Bool)

(assert (=> b!2314306 (= e!1483621 tp!734901)))

(declare-fun setNonEmpty!20836 () Bool)

(declare-fun setElem!20836 () Context!4206)

(declare-fun e!1483618 () Bool)

(declare-fun tp!734900 () Bool)

(assert (=> setNonEmpty!20836 (= setRes!20836 (and tp!734900 (inv!37357 setElem!20836) e!1483618))))

(declare-fun setRest!20837 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20836 (= (_2!16295 (h!32986 mapDefault!14975)) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20836 true) setRest!20837))))

(declare-fun setIsEmpty!20837 () Bool)

(assert (=> setIsEmpty!20837 setRes!20836))

(declare-fun b!2314308 () Bool)

(declare-fun tp!734907 () Bool)

(assert (=> b!2314308 (= e!1483616 tp!734907)))

(declare-fun setNonEmpty!20837 () Bool)

(declare-fun tp!734903 () Bool)

(declare-fun setElem!20837 () Context!4206)

(assert (=> setNonEmpty!20837 (= setRes!20837 (and tp!734903 (inv!37357 setElem!20837) e!1483619))))

(declare-fun setRest!20836 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20837 (= (_2!16295 (h!32986 mapValue!14975)) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20837 true) setRest!20836))))

(declare-fun mapIsEmpty!14975 () Bool)

(assert (=> mapIsEmpty!14975 mapRes!14975))

(declare-fun b!2314309 () Bool)

(declare-fun tp!734902 () Bool)

(assert (=> b!2314309 (= e!1483618 tp!734902)))

(declare-fun tp!734904 () Bool)

(declare-fun b!2314307 () Bool)

(assert (=> b!2314307 (= e!1483617 (and (inv!37357 (_1!16294 (_1!16295 (h!32986 mapValue!14975)))) e!1483621 tp_is_empty!10763 setRes!20837 tp!734904))))

(declare-fun condSetEmpty!20836 () Bool)

(assert (=> b!2314307 (= condSetEmpty!20836 (= (_2!16295 (h!32986 mapValue!14975)) ((as const (Array Context!4206 Bool)) false)))))

(declare-fun condMapEmpty!14975 () Bool)

(assert (=> mapNonEmpty!14968 (= condMapEmpty!14975 (= mapRest!14968 ((as const (Array (_ BitVec 32) List!27683)) mapDefault!14975)))))

(assert (=> mapNonEmpty!14968 (= tp!734815 (and e!1483620 mapRes!14975))))

(assert (= (and mapNonEmpty!14968 condMapEmpty!14975) mapIsEmpty!14975))

(assert (= (and mapNonEmpty!14968 (not condMapEmpty!14975)) mapNonEmpty!14975))

(assert (= b!2314307 b!2314306))

(assert (= (and b!2314307 condSetEmpty!20836) setIsEmpty!20836))

(assert (= (and b!2314307 (not condSetEmpty!20836)) setNonEmpty!20837))

(assert (= setNonEmpty!20837 b!2314304))

(assert (= (and mapNonEmpty!14975 ((_ is Cons!27585) mapValue!14975)) b!2314307))

(assert (= b!2314305 b!2314308))

(assert (= (and b!2314305 condSetEmpty!20837) setIsEmpty!20837))

(assert (= (and b!2314305 (not condSetEmpty!20837)) setNonEmpty!20836))

(assert (= setNonEmpty!20836 b!2314309))

(assert (= (and mapNonEmpty!14968 ((_ is Cons!27585) mapDefault!14975)) b!2314305))

(declare-fun m!2741323 () Bool)

(assert (=> b!2314305 m!2741323))

(declare-fun m!2741325 () Bool)

(assert (=> setNonEmpty!20837 m!2741325))

(declare-fun m!2741327 () Bool)

(assert (=> setNonEmpty!20836 m!2741327))

(declare-fun m!2741329 () Bool)

(assert (=> b!2314307 m!2741329))

(declare-fun m!2741331 () Bool)

(assert (=> mapNonEmpty!14975 m!2741331))

(declare-fun b!2314310 () Bool)

(declare-fun e!1483622 () Bool)

(declare-fun tp!734910 () Bool)

(assert (=> b!2314310 (= e!1483622 tp!734910)))

(declare-fun setIsEmpty!20838 () Bool)

(declare-fun setRes!20838 () Bool)

(assert (=> setIsEmpty!20838 setRes!20838))

(declare-fun setElem!20838 () Context!4206)

(declare-fun setNonEmpty!20838 () Bool)

(declare-fun tp!734912 () Bool)

(declare-fun e!1483624 () Bool)

(assert (=> setNonEmpty!20838 (= setRes!20838 (and tp!734912 (inv!37357 setElem!20838) e!1483624))))

(declare-fun setRest!20838 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20838 (= (_2!16295 (h!32986 mapValue!14968)) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20838 true) setRest!20838))))

(declare-fun b!2314312 () Bool)

(declare-fun tp!734909 () Bool)

(assert (=> b!2314312 (= e!1483624 tp!734909)))

(declare-fun e!1483623 () Bool)

(declare-fun tp!734911 () Bool)

(declare-fun b!2314311 () Bool)

(assert (=> b!2314311 (= e!1483623 (and (inv!37357 (_1!16294 (_1!16295 (h!32986 mapValue!14968)))) e!1483622 tp_is_empty!10763 setRes!20838 tp!734911))))

(declare-fun condSetEmpty!20838 () Bool)

(assert (=> b!2314311 (= condSetEmpty!20838 (= (_2!16295 (h!32986 mapValue!14968)) ((as const (Array Context!4206 Bool)) false)))))

(assert (=> mapNonEmpty!14968 (= tp!734816 e!1483623)))

(assert (= b!2314311 b!2314310))

(assert (= (and b!2314311 condSetEmpty!20838) setIsEmpty!20838))

(assert (= (and b!2314311 (not condSetEmpty!20838)) setNonEmpty!20838))

(assert (= setNonEmpty!20838 b!2314312))

(assert (= (and mapNonEmpty!14968 ((_ is Cons!27585) mapValue!14968)) b!2314311))

(declare-fun m!2741333 () Bool)

(assert (=> setNonEmpty!20838 m!2741333))

(declare-fun m!2741335 () Bool)

(assert (=> b!2314311 m!2741335))

(declare-fun b!2314313 () Bool)

(declare-fun e!1483625 () Bool)

(declare-fun tp!734914 () Bool)

(assert (=> b!2314313 (= e!1483625 tp!734914)))

(declare-fun setIsEmpty!20839 () Bool)

(declare-fun setRes!20839 () Bool)

(assert (=> setIsEmpty!20839 setRes!20839))

(declare-fun setNonEmpty!20839 () Bool)

(declare-fun e!1483627 () Bool)

(declare-fun tp!734916 () Bool)

(declare-fun setElem!20839 () Context!4206)

(assert (=> setNonEmpty!20839 (= setRes!20839 (and tp!734916 (inv!37357 setElem!20839) e!1483627))))

(declare-fun setRest!20839 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20839 (= (_2!16295 (h!32986 mapDefault!14969)) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20839 true) setRest!20839))))

(declare-fun b!2314315 () Bool)

(declare-fun tp!734913 () Bool)

(assert (=> b!2314315 (= e!1483627 tp!734913)))

(declare-fun tp!734915 () Bool)

(declare-fun e!1483626 () Bool)

(declare-fun b!2314314 () Bool)

(assert (=> b!2314314 (= e!1483626 (and (inv!37357 (_1!16294 (_1!16295 (h!32986 mapDefault!14969)))) e!1483625 tp_is_empty!10763 setRes!20839 tp!734915))))

(declare-fun condSetEmpty!20839 () Bool)

(assert (=> b!2314314 (= condSetEmpty!20839 (= (_2!16295 (h!32986 mapDefault!14969)) ((as const (Array Context!4206 Bool)) false)))))

(assert (=> b!2314178 (= tp!734811 e!1483626)))

(assert (= b!2314314 b!2314313))

(assert (= (and b!2314314 condSetEmpty!20839) setIsEmpty!20839))

(assert (= (and b!2314314 (not condSetEmpty!20839)) setNonEmpty!20839))

(assert (= setNonEmpty!20839 b!2314315))

(assert (= (and b!2314178 ((_ is Cons!27585) mapDefault!14969)) b!2314314))

(declare-fun m!2741337 () Bool)

(assert (=> setNonEmpty!20839 m!2741337))

(declare-fun m!2741339 () Bool)

(assert (=> b!2314314 m!2741339))

(declare-fun setIsEmpty!20840 () Bool)

(declare-fun setRes!20840 () Bool)

(assert (=> setIsEmpty!20840 setRes!20840))

(declare-fun b!2314316 () Bool)

(declare-fun e!1483629 () Bool)

(declare-fun tp!734920 () Bool)

(assert (=> b!2314316 (= e!1483629 tp!734920)))

(declare-fun b!2314317 () Bool)

(declare-fun tp!734917 () Bool)

(declare-fun tp!734919 () Bool)

(declare-fun e!1483628 () Bool)

(assert (=> b!2314317 (= e!1483628 (and tp!734919 (inv!37357 (_2!16296 (_1!16297 (h!32988 (zeroValue!3457 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084)))))))))) e!1483629 tp_is_empty!10763 setRes!20840 tp!734917))))

(declare-fun condSetEmpty!20840 () Bool)

(assert (=> b!2314317 (= condSetEmpty!20840 (= (_2!16297 (h!32988 (zeroValue!3457 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084)))))))) ((as const (Array Context!4206 Bool)) false)))))

(declare-fun b!2314318 () Bool)

(declare-fun e!1483630 () Bool)

(declare-fun tp!734921 () Bool)

(assert (=> b!2314318 (= e!1483630 tp!734921)))

(assert (=> b!2314187 (= tp!734810 e!1483628)))

(declare-fun tp!734918 () Bool)

(declare-fun setElem!20840 () Context!4206)

(declare-fun setNonEmpty!20840 () Bool)

(assert (=> setNonEmpty!20840 (= setRes!20840 (and tp!734918 (inv!37357 setElem!20840) e!1483630))))

(declare-fun setRest!20840 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20840 (= (_2!16297 (h!32988 (zeroValue!3457 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084)))))))) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20840 true) setRest!20840))))

(assert (= b!2314317 b!2314316))

(assert (= (and b!2314317 condSetEmpty!20840) setIsEmpty!20840))

(assert (= (and b!2314317 (not condSetEmpty!20840)) setNonEmpty!20840))

(assert (= setNonEmpty!20840 b!2314318))

(assert (= (and b!2314187 ((_ is Cons!27587) (zeroValue!3457 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084)))))))) b!2314317))

(declare-fun m!2741341 () Bool)

(assert (=> b!2314317 m!2741341))

(declare-fun m!2741343 () Bool)

(assert (=> setNonEmpty!20840 m!2741343))

(declare-fun setIsEmpty!20841 () Bool)

(declare-fun setRes!20841 () Bool)

(assert (=> setIsEmpty!20841 setRes!20841))

(declare-fun b!2314319 () Bool)

(declare-fun e!1483632 () Bool)

(declare-fun tp!734925 () Bool)

(assert (=> b!2314319 (= e!1483632 tp!734925)))

(declare-fun tp!734924 () Bool)

(declare-fun b!2314320 () Bool)

(declare-fun tp!734922 () Bool)

(declare-fun e!1483631 () Bool)

(assert (=> b!2314320 (= e!1483631 (and tp!734924 (inv!37357 (_2!16296 (_1!16297 (h!32988 (minValue!3457 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084)))))))))) e!1483632 tp_is_empty!10763 setRes!20841 tp!734922))))

(declare-fun condSetEmpty!20841 () Bool)

(assert (=> b!2314320 (= condSetEmpty!20841 (= (_2!16297 (h!32988 (minValue!3457 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084)))))))) ((as const (Array Context!4206 Bool)) false)))))

(declare-fun b!2314321 () Bool)

(declare-fun e!1483633 () Bool)

(declare-fun tp!734926 () Bool)

(assert (=> b!2314321 (= e!1483633 tp!734926)))

(assert (=> b!2314187 (= tp!734813 e!1483631)))

(declare-fun setNonEmpty!20841 () Bool)

(declare-fun tp!734923 () Bool)

(declare-fun setElem!20841 () Context!4206)

(assert (=> setNonEmpty!20841 (= setRes!20841 (and tp!734923 (inv!37357 setElem!20841) e!1483633))))

(declare-fun setRest!20841 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20841 (= (_2!16297 (h!32988 (minValue!3457 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084)))))))) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20841 true) setRest!20841))))

(assert (= b!2314320 b!2314319))

(assert (= (and b!2314320 condSetEmpty!20841) setIsEmpty!20841))

(assert (= (and b!2314320 (not condSetEmpty!20841)) setNonEmpty!20841))

(assert (= setNonEmpty!20841 b!2314321))

(assert (= (and b!2314187 ((_ is Cons!27587) (minValue!3457 (v!30637 (underlying!6603 (v!30638 (underlying!6604 (cache!3488 cacheDown!1084)))))))) b!2314320))

(declare-fun m!2741345 () Bool)

(assert (=> b!2314320 m!2741345))

(declare-fun m!2741347 () Bool)

(assert (=> setNonEmpty!20841 m!2741347))

(declare-fun b!2314326 () Bool)

(declare-fun e!1483636 () Bool)

(declare-fun tp!734931 () Bool)

(declare-fun tp!734932 () Bool)

(assert (=> b!2314326 (= e!1483636 (and tp!734931 tp!734932))))

(assert (=> b!2314190 (= tp!734817 e!1483636)))

(assert (= (and b!2314190 ((_ is Cons!27584) (exprs!2603 setElem!20818))) b!2314326))

(declare-fun setIsEmpty!20842 () Bool)

(declare-fun setRes!20842 () Bool)

(assert (=> setIsEmpty!20842 setRes!20842))

(declare-fun b!2314327 () Bool)

(declare-fun e!1483638 () Bool)

(declare-fun tp!734936 () Bool)

(assert (=> b!2314327 (= e!1483638 tp!734936)))

(declare-fun e!1483637 () Bool)

(declare-fun b!2314328 () Bool)

(declare-fun tp!734935 () Bool)

(declare-fun tp!734933 () Bool)

(assert (=> b!2314328 (= e!1483637 (and tp!734935 (inv!37357 (_2!16296 (_1!16297 (h!32988 mapDefault!14968)))) e!1483638 tp_is_empty!10763 setRes!20842 tp!734933))))

(declare-fun condSetEmpty!20842 () Bool)

(assert (=> b!2314328 (= condSetEmpty!20842 (= (_2!16297 (h!32988 mapDefault!14968)) ((as const (Array Context!4206 Bool)) false)))))

(declare-fun b!2314329 () Bool)

(declare-fun e!1483639 () Bool)

(declare-fun tp!734937 () Bool)

(assert (=> b!2314329 (= e!1483639 tp!734937)))

(assert (=> b!2314199 (= tp!734802 e!1483637)))

(declare-fun setElem!20842 () Context!4206)

(declare-fun tp!734934 () Bool)

(declare-fun setNonEmpty!20842 () Bool)

(assert (=> setNonEmpty!20842 (= setRes!20842 (and tp!734934 (inv!37357 setElem!20842) e!1483639))))

(declare-fun setRest!20842 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20842 (= (_2!16297 (h!32988 mapDefault!14968)) ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20842 true) setRest!20842))))

(assert (= b!2314328 b!2314327))

(assert (= (and b!2314328 condSetEmpty!20842) setIsEmpty!20842))

(assert (= (and b!2314328 (not condSetEmpty!20842)) setNonEmpty!20842))

(assert (= setNonEmpty!20842 b!2314329))

(assert (= (and b!2314199 ((_ is Cons!27587) mapDefault!14968)) b!2314328))

(declare-fun m!2741349 () Bool)

(assert (=> b!2314328 m!2741349))

(declare-fun m!2741351 () Bool)

(assert (=> setNonEmpty!20842 m!2741351))

(declare-fun condSetEmpty!20845 () Bool)

(assert (=> setNonEmpty!20818 (= condSetEmpty!20845 (= setRest!20818 ((as const (Array Context!4206 Bool)) false)))))

(declare-fun setRes!20845 () Bool)

(assert (=> setNonEmpty!20818 (= tp!734806 setRes!20845)))

(declare-fun setIsEmpty!20845 () Bool)

(assert (=> setIsEmpty!20845 setRes!20845))

(declare-fun tp!734943 () Bool)

(declare-fun e!1483642 () Bool)

(declare-fun setNonEmpty!20845 () Bool)

(declare-fun setElem!20845 () Context!4206)

(assert (=> setNonEmpty!20845 (= setRes!20845 (and tp!734943 (inv!37357 setElem!20845) e!1483642))))

(declare-fun setRest!20845 () (InoxSet Context!4206))

(assert (=> setNonEmpty!20845 (= setRest!20818 ((_ map or) (store ((as const (Array Context!4206 Bool)) false) setElem!20845 true) setRest!20845))))

(declare-fun b!2314334 () Bool)

(declare-fun tp!734942 () Bool)

(assert (=> b!2314334 (= e!1483642 tp!734942)))

(assert (= (and setNonEmpty!20818 condSetEmpty!20845) setIsEmpty!20845))

(assert (= (and setNonEmpty!20818 (not condSetEmpty!20845)) setNonEmpty!20845))

(assert (= setNonEmpty!20845 b!2314334))

(declare-fun m!2741353 () Bool)

(assert (=> setNonEmpty!20845 m!2741353))

(declare-fun e!1483648 () Bool)

(declare-fun tp!734952 () Bool)

(declare-fun tp!734950 () Bool)

(declare-fun b!2314343 () Bool)

(assert (=> b!2314343 (= e!1483648 (and (inv!37358 (left!20912 (c!366818 totalInput!830))) tp!734950 (inv!37358 (right!21242 (c!366818 totalInput!830))) tp!734952))))

(declare-fun b!2314345 () Bool)

(declare-fun e!1483647 () Bool)

(declare-fun tp!734951 () Bool)

(assert (=> b!2314345 (= e!1483647 tp!734951)))

(declare-fun b!2314344 () Bool)

(declare-fun inv!37361 (IArray!18027) Bool)

(assert (=> b!2314344 (= e!1483648 (and (inv!37361 (xs!11953 (c!366818 totalInput!830))) e!1483647))))

(assert (=> b!2314194 (= tp!734812 (and (inv!37358 (c!366818 totalInput!830)) e!1483648))))

(assert (= (and b!2314194 ((_ is Node!9011) (c!366818 totalInput!830))) b!2314343))

(assert (= b!2314344 b!2314345))

(assert (= (and b!2314194 ((_ is Leaf!13225) (c!366818 totalInput!830))) b!2314344))

(declare-fun m!2741355 () Bool)

(assert (=> b!2314343 m!2741355))

(declare-fun m!2741357 () Bool)

(assert (=> b!2314343 m!2741357))

(declare-fun m!2741359 () Bool)

(assert (=> b!2314344 m!2741359))

(assert (=> b!2314194 m!2741259))

(check-sat (not b!2314345) (not b!2314305) b_and!185013 (not b_next!70817) (not b!2314275) (not setNonEmpty!20839) (not d!684476) (not b!2314235) (not mapNonEmpty!14975) (not b!2314286) (not b!2314306) (not b!2314309) (not b!2314310) (not d!684462) (not b!2314284) (not b!2314289) (not b!2314260) (not b!2314244) (not b!2314274) (not b!2314231) (not b!2314312) (not b!2314230) (not setNonEmpty!20837) (not setNonEmpty!20836) (not b_next!70813) (not b!2314334) (not b!2314344) (not b!2314285) (not b!2314343) (not bm!137424) (not b!2314234) (not setNonEmpty!20838) (not b!2314326) (not b_next!70819) (not b!2314319) (not d!684474) b_and!185011 (not b!2314307) (not b!2314273) b_and!185009 (not setNonEmpty!20827) (not setNonEmpty!20824) (not b!2314327) (not b!2314263) (not setNonEmpty!20842) (not d!684460) (not setNonEmpty!20841) (not b!2314211) (not b!2314288) (not b!2314314) (not d!684452) (not b_next!70815) (not b!2314304) (not b!2314311) (not setNonEmpty!20830) (not b!2314194) (not b!2314308) (not b!2314318) tp_is_empty!10763 (not bm!137425) (not b!2314208) (not b!2314242) (not b!2314264) (not b!2314259) b_and!185015 (not b!2314313) (not mapNonEmpty!14972) (not b!2314261) (not b!2314321) (not b!2314205) (not b!2314287) (not setNonEmpty!20840) (not setNonEmpty!20831) (not b!2314317) (not b!2314315) (not setNonEmpty!20845) (not b!2314262) (not b!2314204) (not b!2314328) (not b!2314329) (not b!2314316) (not b!2314320) (not setNonEmpty!20823) (not d!684454))
(check-sat (not b_next!70813) b_and!185013 b_and!185009 (not b_next!70817) (not b_next!70815) b_and!185015 (not b_next!70819) b_and!185011)
