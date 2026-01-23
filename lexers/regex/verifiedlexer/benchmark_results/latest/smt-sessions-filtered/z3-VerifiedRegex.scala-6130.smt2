; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297260 () Bool)

(assert start!297260)

(declare-fun b!3174320 () Bool)

(declare-fun b_free!83409 () Bool)

(declare-fun b_next!84113 () Bool)

(assert (=> b!3174320 (= b_free!83409 (not b_next!84113))))

(declare-fun tp!1003341 () Bool)

(declare-fun b_and!209703 () Bool)

(assert (=> b!3174320 (= tp!1003341 b_and!209703)))

(declare-fun b!3174313 () Bool)

(declare-fun b_free!83411 () Bool)

(declare-fun b_next!84115 () Bool)

(assert (=> b!3174313 (= b_free!83411 (not b_next!84115))))

(declare-fun tp!1003348 () Bool)

(declare-fun b_and!209705 () Bool)

(assert (=> b!3174313 (= tp!1003348 b_and!209705)))

(declare-fun mapIsEmpty!19160 () Bool)

(declare-fun mapRes!19160 () Bool)

(assert (=> mapIsEmpty!19160 mapRes!19160))

(declare-fun b!3174307 () Bool)

(declare-fun e!1977149 () Bool)

(declare-fun e!1977142 () Bool)

(assert (=> b!3174307 (= e!1977149 e!1977142)))

(declare-fun b!3174309 () Bool)

(declare-fun e!1977148 () Bool)

(declare-fun tp!1003350 () Bool)

(assert (=> b!3174309 (= e!1977148 tp!1003350)))

(declare-fun b!3174310 () Bool)

(declare-fun tp_is_empty!17185 () Bool)

(assert (=> b!3174310 (= e!1977148 tp_is_empty!17185)))

(declare-fun b!3174311 () Bool)

(declare-fun e!1977145 () Bool)

(declare-datatypes ((C!19808 0))(
  ( (C!19809 (val!11940 Int)) )
))
(declare-datatypes ((Regex!9811 0))(
  ( (ElementMatch!9811 (c!533514 C!19808)) (Concat!15132 (regOne!20134 Regex!9811) (regTwo!20134 Regex!9811)) (EmptyExpr!9811) (Star!9811 (reg!10140 Regex!9811)) (EmptyLang!9811) (Union!9811 (regOne!20135 Regex!9811) (regTwo!20135 Regex!9811)) )
))
(declare-datatypes ((tuple2!34912 0))(
  ( (tuple2!34913 (_1!20588 Regex!9811) (_2!20588 C!19808)) )
))
(declare-datatypes ((tuple2!34914 0))(
  ( (tuple2!34915 (_1!20589 tuple2!34912) (_2!20589 Regex!9811)) )
))
(declare-datatypes ((List!35662 0))(
  ( (Nil!35538) (Cons!35538 (h!40958 tuple2!34914) (t!234753 List!35662)) )
))
(declare-datatypes ((array!15182 0))(
  ( (array!15183 (arr!6754 (Array (_ BitVec 32) (_ BitVec 64))) (size!26840 (_ BitVec 32))) )
))
(declare-datatypes ((array!15184 0))(
  ( (array!15185 (arr!6755 (Array (_ BitVec 32) List!35662)) (size!26841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8464 0))(
  ( (LongMapFixedSize!8465 (defaultEntry!4617 Int) (mask!10931 (_ BitVec 32)) (extraKeys!4481 (_ BitVec 32)) (zeroValue!4491 List!35662) (minValue!4491 List!35662) (_size!8507 (_ BitVec 32)) (_keys!4532 array!15182) (_values!4513 array!15184) (_vacant!4293 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16737 0))(
  ( (Cell!16738 (v!35322 LongMapFixedSize!8464)) )
))
(declare-datatypes ((MutLongMap!4232 0))(
  ( (LongMap!4232 (underlying!8693 Cell!16737)) (MutLongMapExt!4231 (__x!22802 Int)) )
))
(declare-datatypes ((Cell!16739 0))(
  ( (Cell!16740 (v!35323 MutLongMap!4232)) )
))
(declare-datatypes ((Hashable!4148 0))(
  ( (HashableExt!4147 (__x!22803 Int)) )
))
(declare-datatypes ((MutableMap!4138 0))(
  ( (MutableMapExt!4137 (__x!22804 Int)) (HashMap!4138 (underlying!8694 Cell!16739) (hashF!6180 Hashable!4148) (_size!8508 (_ BitVec 32)) (defaultValue!4309 Int)) )
))
(declare-datatypes ((Cache!546 0))(
  ( (Cache!547 (cache!4284 MutableMap!4138)) )
))
(declare-fun thiss!28445 () Cache!546)

(get-info :version)

(assert (=> b!3174311 (= e!1977145 (not ((_ is HashMap!4138) (cache!4284 thiss!28445))))))

(declare-fun b!3174312 () Bool)

(declare-fun tp!1003345 () Bool)

(declare-fun tp!1003346 () Bool)

(assert (=> b!3174312 (= e!1977148 (and tp!1003345 tp!1003346))))

(declare-fun tp!1003343 () Bool)

(declare-fun tp!1003340 () Bool)

(declare-fun e!1977141 () Bool)

(declare-fun array_inv!4846 (array!15182) Bool)

(declare-fun array_inv!4847 (array!15184) Bool)

(assert (=> b!3174313 (= e!1977142 (and tp!1003348 tp!1003343 tp!1003340 (array_inv!4846 (_keys!4532 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))) (array_inv!4847 (_values!4513 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))) e!1977141))))

(declare-fun b!3174314 () Bool)

(declare-fun tp!1003347 () Bool)

(assert (=> b!3174314 (= e!1977141 (and tp!1003347 mapRes!19160))))

(declare-fun condMapEmpty!19160 () Bool)

(declare-fun mapDefault!19160 () List!35662)

(assert (=> b!3174314 (= condMapEmpty!19160 (= (arr!6755 (_values!4513 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35662)) mapDefault!19160)))))

(declare-fun b!3174315 () Bool)

(declare-fun e!1977143 () Bool)

(assert (=> b!3174315 (= e!1977143 e!1977149)))

(declare-fun mapNonEmpty!19160 () Bool)

(declare-fun tp!1003342 () Bool)

(declare-fun tp!1003344 () Bool)

(assert (=> mapNonEmpty!19160 (= mapRes!19160 (and tp!1003342 tp!1003344))))

(declare-fun mapKey!19160 () (_ BitVec 32))

(declare-fun mapRest!19160 () (Array (_ BitVec 32) List!35662))

(declare-fun mapValue!19160 () List!35662)

(assert (=> mapNonEmpty!19160 (= (arr!6755 (_values!4513 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))) (store mapRest!19160 mapKey!19160 mapValue!19160))))

(declare-fun b!3174316 () Bool)

(declare-fun e!1977140 () Bool)

(declare-fun lt!1067459 () MutLongMap!4232)

(assert (=> b!3174316 (= e!1977140 (and e!1977143 ((_ is LongMap!4232) lt!1067459)))))

(assert (=> b!3174316 (= lt!1067459 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))

(declare-fun b!3174317 () Bool)

(declare-fun res!1289828 () Bool)

(assert (=> b!3174317 (=> (not res!1289828) (not e!1977145))))

(declare-fun r!4705 () Regex!9811)

(declare-fun c!6979 () C!19808)

(declare-fun contains!6253 (MutableMap!4138 tuple2!34912) Bool)

(assert (=> b!3174317 (= res!1289828 (not (contains!6253 (cache!4284 thiss!28445) (tuple2!34913 r!4705 c!6979))))))

(declare-fun res!1289829 () Bool)

(assert (=> start!297260 (=> (not res!1289829) (not e!1977145))))

(declare-fun validCacheMap!111 (MutableMap!4138) Bool)

(assert (=> start!297260 (= res!1289829 (validCacheMap!111 (cache!4284 thiss!28445)))))

(assert (=> start!297260 e!1977145))

(declare-fun e!1977144 () Bool)

(declare-fun inv!48279 (Cache!546) Bool)

(assert (=> start!297260 (and (inv!48279 thiss!28445) e!1977144)))

(assert (=> start!297260 e!1977148))

(assert (=> start!297260 tp_is_empty!17185))

(declare-fun b!3174308 () Bool)

(declare-fun tp!1003349 () Bool)

(declare-fun tp!1003339 () Bool)

(assert (=> b!3174308 (= e!1977148 (and tp!1003349 tp!1003339))))

(declare-fun b!3174318 () Bool)

(declare-fun res!1289827 () Bool)

(assert (=> b!3174318 (=> (not res!1289827) (not e!1977145))))

(declare-fun validRegex!4514 (Regex!9811) Bool)

(assert (=> b!3174318 (= res!1289827 (validRegex!4514 r!4705))))

(declare-fun b!3174319 () Bool)

(declare-fun e!1977147 () Bool)

(assert (=> b!3174319 (= e!1977144 e!1977147)))

(assert (=> b!3174320 (= e!1977147 (and e!1977140 tp!1003341))))

(assert (= (and start!297260 res!1289829) b!3174318))

(assert (= (and b!3174318 res!1289827) b!3174317))

(assert (= (and b!3174317 res!1289828) b!3174311))

(assert (= (and b!3174314 condMapEmpty!19160) mapIsEmpty!19160))

(assert (= (and b!3174314 (not condMapEmpty!19160)) mapNonEmpty!19160))

(assert (= b!3174313 b!3174314))

(assert (= b!3174307 b!3174313))

(assert (= b!3174315 b!3174307))

(assert (= (and b!3174316 ((_ is LongMap!4232) (v!35323 (underlying!8694 (cache!4284 thiss!28445))))) b!3174315))

(assert (= b!3174320 b!3174316))

(assert (= (and b!3174319 ((_ is HashMap!4138) (cache!4284 thiss!28445))) b!3174320))

(assert (= start!297260 b!3174319))

(assert (= (and start!297260 ((_ is ElementMatch!9811) r!4705)) b!3174310))

(assert (= (and start!297260 ((_ is Concat!15132) r!4705)) b!3174312))

(assert (= (and start!297260 ((_ is Star!9811) r!4705)) b!3174309))

(assert (= (and start!297260 ((_ is Union!9811) r!4705)) b!3174308))

(declare-fun m!3431672 () Bool)

(assert (=> start!297260 m!3431672))

(declare-fun m!3431674 () Bool)

(assert (=> start!297260 m!3431674))

(declare-fun m!3431676 () Bool)

(assert (=> b!3174313 m!3431676))

(declare-fun m!3431678 () Bool)

(assert (=> b!3174313 m!3431678))

(declare-fun m!3431680 () Bool)

(assert (=> b!3174318 m!3431680))

(declare-fun m!3431682 () Bool)

(assert (=> b!3174317 m!3431682))

(declare-fun m!3431684 () Bool)

(assert (=> mapNonEmpty!19160 m!3431684))

(check-sat (not b!3174314) (not b!3174317) (not b_next!84113) b_and!209703 (not b!3174312) (not mapNonEmpty!19160) (not b!3174308) (not start!297260) (not b!3174318) tp_is_empty!17185 (not b!3174313) b_and!209705 (not b_next!84115) (not b!3174309))
(check-sat b_and!209705 b_and!209703 (not b_next!84115) (not b_next!84113))
(get-model)

(declare-fun d!869429 () Bool)

(declare-fun res!1289836 () Bool)

(declare-fun e!1977154 () Bool)

(assert (=> d!869429 (=> (not res!1289836) (not e!1977154))))

(declare-fun valid!3290 (MutableMap!4138) Bool)

(assert (=> d!869429 (= res!1289836 (valid!3290 (cache!4284 thiss!28445)))))

(assert (=> d!869429 (= (validCacheMap!111 (cache!4284 thiss!28445)) e!1977154)))

(declare-fun b!3174327 () Bool)

(declare-fun res!1289837 () Bool)

(assert (=> b!3174327 (=> (not res!1289837) (not e!1977154))))

(declare-fun invariantList!502 (List!35662) Bool)

(declare-datatypes ((ListMap!1361 0))(
  ( (ListMap!1362 (toList!2103 List!35662)) )
))
(declare-fun map!7984 (MutableMap!4138) ListMap!1361)

(assert (=> b!3174327 (= res!1289837 (invariantList!502 (toList!2103 (map!7984 (cache!4284 thiss!28445)))))))

(declare-fun b!3174328 () Bool)

(declare-fun lambda!116159 () Int)

(declare-fun forall!7186 (List!35662 Int) Bool)

(assert (=> b!3174328 (= e!1977154 (forall!7186 (toList!2103 (map!7984 (cache!4284 thiss!28445))) lambda!116159))))

(assert (= (and d!869429 res!1289836) b!3174327))

(assert (= (and b!3174327 res!1289837) b!3174328))

(declare-fun m!3431687 () Bool)

(assert (=> d!869429 m!3431687))

(declare-fun m!3431689 () Bool)

(assert (=> b!3174327 m!3431689))

(declare-fun m!3431691 () Bool)

(assert (=> b!3174327 m!3431691))

(assert (=> b!3174328 m!3431689))

(declare-fun m!3431693 () Bool)

(assert (=> b!3174328 m!3431693))

(assert (=> start!297260 d!869429))

(declare-fun d!869431 () Bool)

(declare-fun res!1289840 () Bool)

(declare-fun e!1977157 () Bool)

(assert (=> d!869431 (=> (not res!1289840) (not e!1977157))))

(assert (=> d!869431 (= res!1289840 ((_ is HashMap!4138) (cache!4284 thiss!28445)))))

(assert (=> d!869431 (= (inv!48279 thiss!28445) e!1977157)))

(declare-fun b!3174331 () Bool)

(assert (=> b!3174331 (= e!1977157 (validCacheMap!111 (cache!4284 thiss!28445)))))

(assert (= (and d!869431 res!1289840) b!3174331))

(assert (=> b!3174331 m!3431672))

(assert (=> start!297260 d!869431))

(declare-fun b!3174350 () Bool)

(declare-fun e!1977174 () Bool)

(declare-fun e!1977178 () Bool)

(assert (=> b!3174350 (= e!1977174 e!1977178)))

(declare-fun res!1289852 () Bool)

(assert (=> b!3174350 (=> (not res!1289852) (not e!1977178))))

(declare-fun call!230728 () Bool)

(assert (=> b!3174350 (= res!1289852 call!230728)))

(declare-fun c!533520 () Bool)

(declare-fun c!533519 () Bool)

(declare-fun call!230727 () Bool)

(declare-fun bm!230721 () Bool)

(assert (=> bm!230721 (= call!230727 (validRegex!4514 (ite c!533520 (reg!10140 r!4705) (ite c!533519 (regOne!20135 r!4705) (regOne!20134 r!4705)))))))

(declare-fun b!3174351 () Bool)

(declare-fun e!1977175 () Bool)

(assert (=> b!3174351 (= e!1977175 call!230727)))

(declare-fun bm!230722 () Bool)

(declare-fun call!230726 () Bool)

(assert (=> bm!230722 (= call!230726 (validRegex!4514 (ite c!533519 (regTwo!20135 r!4705) (regTwo!20134 r!4705))))))

(declare-fun b!3174352 () Bool)

(declare-fun e!1977177 () Bool)

(assert (=> b!3174352 (= e!1977177 e!1977175)))

(declare-fun res!1289855 () Bool)

(declare-fun nullable!3370 (Regex!9811) Bool)

(assert (=> b!3174352 (= res!1289855 (not (nullable!3370 (reg!10140 r!4705))))))

(assert (=> b!3174352 (=> (not res!1289855) (not e!1977175))))

(declare-fun b!3174353 () Bool)

(declare-fun e!1977172 () Bool)

(assert (=> b!3174353 (= e!1977172 e!1977177)))

(assert (=> b!3174353 (= c!533520 ((_ is Star!9811) r!4705))))

(declare-fun d!869433 () Bool)

(declare-fun res!1289853 () Bool)

(assert (=> d!869433 (=> res!1289853 e!1977172)))

(assert (=> d!869433 (= res!1289853 ((_ is ElementMatch!9811) r!4705))))

(assert (=> d!869433 (= (validRegex!4514 r!4705) e!1977172)))

(declare-fun b!3174354 () Bool)

(declare-fun res!1289851 () Bool)

(assert (=> b!3174354 (=> res!1289851 e!1977174)))

(assert (=> b!3174354 (= res!1289851 (not ((_ is Concat!15132) r!4705)))))

(declare-fun e!1977176 () Bool)

(assert (=> b!3174354 (= e!1977176 e!1977174)))

(declare-fun b!3174355 () Bool)

(assert (=> b!3174355 (= e!1977178 call!230726)))

(declare-fun b!3174356 () Bool)

(declare-fun res!1289854 () Bool)

(declare-fun e!1977173 () Bool)

(assert (=> b!3174356 (=> (not res!1289854) (not e!1977173))))

(assert (=> b!3174356 (= res!1289854 call!230728)))

(assert (=> b!3174356 (= e!1977176 e!1977173)))

(declare-fun b!3174357 () Bool)

(assert (=> b!3174357 (= e!1977173 call!230726)))

(declare-fun b!3174358 () Bool)

(assert (=> b!3174358 (= e!1977177 e!1977176)))

(assert (=> b!3174358 (= c!533519 ((_ is Union!9811) r!4705))))

(declare-fun bm!230723 () Bool)

(assert (=> bm!230723 (= call!230728 call!230727)))

(assert (= (and d!869433 (not res!1289853)) b!3174353))

(assert (= (and b!3174353 c!533520) b!3174352))

(assert (= (and b!3174353 (not c!533520)) b!3174358))

(assert (= (and b!3174352 res!1289855) b!3174351))

(assert (= (and b!3174358 c!533519) b!3174356))

(assert (= (and b!3174358 (not c!533519)) b!3174354))

(assert (= (and b!3174356 res!1289854) b!3174357))

(assert (= (and b!3174354 (not res!1289851)) b!3174350))

(assert (= (and b!3174350 res!1289852) b!3174355))

(assert (= (or b!3174357 b!3174355) bm!230722))

(assert (= (or b!3174356 b!3174350) bm!230723))

(assert (= (or b!3174351 bm!230723) bm!230721))

(declare-fun m!3431695 () Bool)

(assert (=> bm!230721 m!3431695))

(declare-fun m!3431697 () Bool)

(assert (=> bm!230722 m!3431697))

(declare-fun m!3431699 () Bool)

(assert (=> b!3174352 m!3431699))

(assert (=> b!3174318 d!869433))

(declare-fun d!869435 () Bool)

(assert (=> d!869435 (= (array_inv!4846 (_keys!4532 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))) (bvsge (size!26840 (_keys!4532 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3174313 d!869435))

(declare-fun d!869437 () Bool)

(assert (=> d!869437 (= (array_inv!4847 (_values!4513 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))) (bvsge (size!26841 (_values!4513 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3174313 d!869437))

(declare-datatypes ((tuple2!34916 0))(
  ( (tuple2!34917 (_1!20590 (_ BitVec 64)) (_2!20590 List!35662)) )
))
(declare-datatypes ((List!35663 0))(
  ( (Nil!35539) (Cons!35539 (h!40959 tuple2!34916) (t!234754 List!35663)) )
))
(declare-datatypes ((ListLongMap!757 0))(
  ( (ListLongMap!758 (toList!2104 List!35663)) )
))
(declare-fun lt!1067500 () ListLongMap!757)

(declare-fun c!533531 () Bool)

(declare-fun call!230743 () Bool)

(declare-fun call!230746 () (_ BitVec 64))

(declare-fun bm!230736 () Bool)

(declare-fun call!230744 () ListLongMap!757)

(declare-fun contains!6254 (ListLongMap!757 (_ BitVec 64)) Bool)

(assert (=> bm!230736 (= call!230743 (contains!6254 (ite c!533531 lt!1067500 call!230744) call!230746))))

(declare-fun lt!1067507 () Bool)

(declare-fun d!869439 () Bool)

(declare-fun contains!6255 (ListMap!1361 tuple2!34912) Bool)

(assert (=> d!869439 (= lt!1067507 (contains!6255 (map!7984 (cache!4284 thiss!28445)) (tuple2!34913 r!4705 c!6979)))))

(declare-fun e!1977194 () Bool)

(assert (=> d!869439 (= lt!1067507 e!1977194)))

(declare-fun res!1289863 () Bool)

(assert (=> d!869439 (=> (not res!1289863) (not e!1977194))))

(declare-fun lt!1067509 () (_ BitVec 64))

(declare-fun contains!6256 (MutLongMap!4232 (_ BitVec 64)) Bool)

(assert (=> d!869439 (= res!1289863 (contains!6256 (v!35323 (underlying!8694 (cache!4284 thiss!28445))) lt!1067509))))

(declare-datatypes ((Unit!50031 0))(
  ( (Unit!50032) )
))
(declare-fun lt!1067511 () Unit!50031)

(declare-fun e!1977193 () Unit!50031)

(assert (=> d!869439 (= lt!1067511 e!1977193)))

(declare-fun extractMap!248 (List!35663) ListMap!1361)

(declare-fun map!7985 (MutLongMap!4232) ListLongMap!757)

(assert (=> d!869439 (= c!533531 (contains!6255 (extractMap!248 (toList!2104 (map!7985 (v!35323 (underlying!8694 (cache!4284 thiss!28445)))))) (tuple2!34913 r!4705 c!6979)))))

(declare-fun lt!1067519 () Unit!50031)

(declare-fun e!1977197 () Unit!50031)

(assert (=> d!869439 (= lt!1067519 e!1977197)))

(declare-fun c!533529 () Bool)

(assert (=> d!869439 (= c!533529 (contains!6256 (v!35323 (underlying!8694 (cache!4284 thiss!28445))) lt!1067509))))

(declare-fun hash!818 (Hashable!4148 tuple2!34912) (_ BitVec 64))

(assert (=> d!869439 (= lt!1067509 (hash!818 (hashF!6180 (cache!4284 thiss!28445)) (tuple2!34913 r!4705 c!6979)))))

(assert (=> d!869439 (valid!3290 (cache!4284 thiss!28445))))

(assert (=> d!869439 (= (contains!6253 (cache!4284 thiss!28445) (tuple2!34913 r!4705 c!6979)) lt!1067507)))

(declare-fun call!230741 () List!35662)

(declare-datatypes ((Option!6939 0))(
  ( (None!6938) (Some!6938 (v!35324 tuple2!34914)) )
))
(declare-fun call!230745 () Option!6939)

(declare-fun bm!230737 () Bool)

(declare-fun getPair!105 (List!35662 tuple2!34912) Option!6939)

(assert (=> bm!230737 (= call!230745 (getPair!105 call!230741 (tuple2!34913 r!4705 c!6979)))))

(declare-fun b!3174381 () Bool)

(declare-fun e!1977195 () Bool)

(declare-fun call!230742 () Bool)

(assert (=> b!3174381 (= e!1977195 call!230742)))

(declare-fun b!3174382 () Bool)

(declare-fun lambda!116162 () Int)

(declare-fun forallContained!1083 (List!35663 Int tuple2!34916) Unit!50031)

(declare-fun apply!7991 (MutLongMap!4232 (_ BitVec 64)) List!35662)

(assert (=> b!3174382 (= e!1977197 (forallContained!1083 (toList!2104 (map!7985 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))) lambda!116162 (tuple2!34917 lt!1067509 (apply!7991 (v!35323 (underlying!8694 (cache!4284 thiss!28445))) lt!1067509))))))

(declare-fun c!533530 () Bool)

(declare-fun contains!6257 (List!35663 tuple2!34916) Bool)

(assert (=> b!3174382 (= c!533530 (not (contains!6257 (toList!2104 (map!7985 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))) (tuple2!34917 lt!1067509 (apply!7991 (v!35323 (underlying!8694 (cache!4284 thiss!28445))) lt!1067509)))))))

(declare-fun lt!1067504 () Unit!50031)

(declare-fun e!1977196 () Unit!50031)

(assert (=> b!3174382 (= lt!1067504 e!1977196)))

(declare-fun b!3174383 () Bool)

(declare-fun e!1977199 () Unit!50031)

(assert (=> b!3174383 (= e!1977193 e!1977199)))

(declare-fun res!1289862 () Bool)

(assert (=> b!3174383 (= res!1289862 call!230743)))

(assert (=> b!3174383 (=> (not res!1289862) (not e!1977195))))

(declare-fun c!533532 () Bool)

(assert (=> b!3174383 (= c!533532 e!1977195)))

(declare-fun b!3174384 () Bool)

(declare-fun lt!1067506 () Unit!50031)

(assert (=> b!3174384 (= e!1977193 lt!1067506)))

(assert (=> b!3174384 (= lt!1067500 call!230744)))

(declare-fun lemmaInGenericMapThenInLongMap!105 (ListLongMap!757 tuple2!34912 Hashable!4148) Unit!50031)

(assert (=> b!3174384 (= lt!1067506 (lemmaInGenericMapThenInLongMap!105 lt!1067500 (tuple2!34913 r!4705 c!6979) (hashF!6180 (cache!4284 thiss!28445))))))

(declare-fun res!1289864 () Bool)

(assert (=> b!3174384 (= res!1289864 call!230743)))

(declare-fun e!1977198 () Bool)

(assert (=> b!3174384 (=> (not res!1289864) (not e!1977198))))

(assert (=> b!3174384 e!1977198))

(declare-fun bm!230738 () Bool)

(declare-fun isDefined!5445 (Option!6939) Bool)

(assert (=> bm!230738 (= call!230742 (isDefined!5445 call!230745))))

(declare-fun bm!230739 () Bool)

(assert (=> bm!230739 (= call!230744 (map!7985 (v!35323 (underlying!8694 (cache!4284 thiss!28445)))))))

(declare-fun b!3174385 () Bool)

(assert (=> b!3174385 (= e!1977198 call!230742)))

(declare-fun bm!230740 () Bool)

(declare-fun apply!7992 (ListLongMap!757 (_ BitVec 64)) List!35662)

(assert (=> bm!230740 (= call!230741 (apply!7992 (ite c!533531 lt!1067500 call!230744) call!230746))))

(declare-fun b!3174386 () Bool)

(declare-fun Unit!50033 () Unit!50031)

(assert (=> b!3174386 (= e!1977199 Unit!50033)))

(declare-fun b!3174387 () Bool)

(assert (=> b!3174387 false))

(declare-fun lt!1067510 () Unit!50031)

(declare-fun lt!1067515 () Unit!50031)

(assert (=> b!3174387 (= lt!1067510 lt!1067515)))

(declare-fun lt!1067501 () ListLongMap!757)

(assert (=> b!3174387 (contains!6255 (extractMap!248 (toList!2104 lt!1067501)) (tuple2!34913 r!4705 c!6979))))

(declare-fun lemmaInLongMapThenInGenericMap!105 (ListLongMap!757 tuple2!34912 Hashable!4148) Unit!50031)

(assert (=> b!3174387 (= lt!1067515 (lemmaInLongMapThenInGenericMap!105 lt!1067501 (tuple2!34913 r!4705 c!6979) (hashF!6180 (cache!4284 thiss!28445))))))

(assert (=> b!3174387 (= lt!1067501 call!230744)))

(declare-fun Unit!50034 () Unit!50031)

(assert (=> b!3174387 (= e!1977199 Unit!50034)))

(declare-fun b!3174388 () Bool)

(declare-fun Unit!50035 () Unit!50031)

(assert (=> b!3174388 (= e!1977196 Unit!50035)))

(declare-fun b!3174389 () Bool)

(assert (=> b!3174389 (= e!1977194 (isDefined!5445 (getPair!105 (apply!7991 (v!35323 (underlying!8694 (cache!4284 thiss!28445))) lt!1067509) (tuple2!34913 r!4705 c!6979))))))

(declare-fun bm!230741 () Bool)

(assert (=> bm!230741 (= call!230746 (hash!818 (hashF!6180 (cache!4284 thiss!28445)) (tuple2!34913 r!4705 c!6979)))))

(declare-fun b!3174390 () Bool)

(declare-fun Unit!50036 () Unit!50031)

(assert (=> b!3174390 (= e!1977197 Unit!50036)))

(declare-fun b!3174391 () Bool)

(assert (=> b!3174391 false))

(declare-fun lt!1067503 () Unit!50031)

(declare-fun lt!1067505 () Unit!50031)

(assert (=> b!3174391 (= lt!1067503 lt!1067505)))

(declare-fun lt!1067512 () List!35663)

(declare-fun lt!1067513 () List!35662)

(assert (=> b!3174391 (contains!6257 lt!1067512 (tuple2!34917 lt!1067509 lt!1067513))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!111 (List!35663 (_ BitVec 64) List!35662) Unit!50031)

(assert (=> b!3174391 (= lt!1067505 (lemmaGetValueByKeyImpliesContainsTuple!111 lt!1067512 lt!1067509 lt!1067513))))

(assert (=> b!3174391 (= lt!1067513 (apply!7991 (v!35323 (underlying!8694 (cache!4284 thiss!28445))) lt!1067509))))

(assert (=> b!3174391 (= lt!1067512 (toList!2104 (map!7985 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))))

(declare-fun lt!1067508 () Unit!50031)

(declare-fun lt!1067514 () Unit!50031)

(assert (=> b!3174391 (= lt!1067508 lt!1067514)))

(declare-fun lt!1067516 () List!35663)

(declare-datatypes ((Option!6940 0))(
  ( (None!6939) (Some!6939 (v!35325 List!35662)) )
))
(declare-fun isDefined!5446 (Option!6940) Bool)

(declare-fun getValueByKey!195 (List!35663 (_ BitVec 64)) Option!6940)

(assert (=> b!3174391 (isDefined!5446 (getValueByKey!195 lt!1067516 lt!1067509))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!139 (List!35663 (_ BitVec 64)) Unit!50031)

(assert (=> b!3174391 (= lt!1067514 (lemmaContainsKeyImpliesGetValueByKeyDefined!139 lt!1067516 lt!1067509))))

(assert (=> b!3174391 (= lt!1067516 (toList!2104 (map!7985 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))))

(declare-fun lt!1067518 () Unit!50031)

(declare-fun lt!1067502 () Unit!50031)

(assert (=> b!3174391 (= lt!1067518 lt!1067502)))

(declare-fun lt!1067517 () List!35663)

(declare-fun containsKey!207 (List!35663 (_ BitVec 64)) Bool)

(assert (=> b!3174391 (containsKey!207 lt!1067517 lt!1067509)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!106 (List!35663 (_ BitVec 64)) Unit!50031)

(assert (=> b!3174391 (= lt!1067502 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!106 lt!1067517 lt!1067509))))

(assert (=> b!3174391 (= lt!1067517 (toList!2104 (map!7985 (v!35323 (underlying!8694 (cache!4284 thiss!28445))))))))

(declare-fun Unit!50037 () Unit!50031)

(assert (=> b!3174391 (= e!1977196 Unit!50037)))

(assert (= (and d!869439 c!533529) b!3174382))

(assert (= (and d!869439 (not c!533529)) b!3174390))

(assert (= (and b!3174382 c!533530) b!3174391))

(assert (= (and b!3174382 (not c!533530)) b!3174388))

(assert (= (and d!869439 c!533531) b!3174384))

(assert (= (and d!869439 (not c!533531)) b!3174383))

(assert (= (and b!3174384 res!1289864) b!3174385))

(assert (= (and b!3174383 res!1289862) b!3174381))

(assert (= (and b!3174383 c!533532) b!3174387))

(assert (= (and b!3174383 (not c!533532)) b!3174386))

(assert (= (or b!3174384 b!3174383 b!3174381 b!3174387) bm!230739))

(assert (= (or b!3174384 b!3174385 b!3174383 b!3174381) bm!230741))

(assert (= (or b!3174385 b!3174381) bm!230740))

(assert (= (or b!3174384 b!3174383) bm!230736))

(assert (= (or b!3174385 b!3174381) bm!230737))

(assert (= (or b!3174385 b!3174381) bm!230738))

(assert (= (and d!869439 res!1289863) b!3174389))

(assert (=> d!869439 m!3431687))

(declare-fun m!3431701 () Bool)

(assert (=> d!869439 m!3431701))

(declare-fun m!3431703 () Bool)

(assert (=> d!869439 m!3431703))

(declare-fun m!3431705 () Bool)

(assert (=> d!869439 m!3431705))

(declare-fun m!3431707 () Bool)

(assert (=> d!869439 m!3431707))

(assert (=> d!869439 m!3431689))

(declare-fun m!3431709 () Bool)

(assert (=> d!869439 m!3431709))

(assert (=> d!869439 m!3431689))

(declare-fun m!3431711 () Bool)

(assert (=> d!869439 m!3431711))

(assert (=> d!869439 m!3431703))

(declare-fun m!3431713 () Bool)

(assert (=> bm!230740 m!3431713))

(assert (=> bm!230741 m!3431701))

(declare-fun m!3431715 () Bool)

(assert (=> b!3174387 m!3431715))

(assert (=> b!3174387 m!3431715))

(declare-fun m!3431717 () Bool)

(assert (=> b!3174387 m!3431717))

(declare-fun m!3431719 () Bool)

(assert (=> b!3174387 m!3431719))

(declare-fun m!3431721 () Bool)

(assert (=> bm!230736 m!3431721))

(declare-fun m!3431723 () Bool)

(assert (=> b!3174389 m!3431723))

(assert (=> b!3174389 m!3431723))

(declare-fun m!3431725 () Bool)

(assert (=> b!3174389 m!3431725))

(assert (=> b!3174389 m!3431725))

(declare-fun m!3431727 () Bool)

(assert (=> b!3174389 m!3431727))

(assert (=> bm!230739 m!3431709))

(declare-fun m!3431729 () Bool)

(assert (=> b!3174391 m!3431729))

(declare-fun m!3431731 () Bool)

(assert (=> b!3174391 m!3431731))

(assert (=> b!3174391 m!3431731))

(declare-fun m!3431733 () Bool)

(assert (=> b!3174391 m!3431733))

(declare-fun m!3431735 () Bool)

(assert (=> b!3174391 m!3431735))

(declare-fun m!3431737 () Bool)

(assert (=> b!3174391 m!3431737))

(declare-fun m!3431739 () Bool)

(assert (=> b!3174391 m!3431739))

(assert (=> b!3174391 m!3431709))

(assert (=> b!3174391 m!3431723))

(declare-fun m!3431741 () Bool)

(assert (=> b!3174391 m!3431741))

(declare-fun m!3431743 () Bool)

(assert (=> b!3174384 m!3431743))

(declare-fun m!3431745 () Bool)

(assert (=> bm!230737 m!3431745))

(assert (=> b!3174382 m!3431709))

(assert (=> b!3174382 m!3431723))

(declare-fun m!3431747 () Bool)

(assert (=> b!3174382 m!3431747))

(declare-fun m!3431749 () Bool)

(assert (=> b!3174382 m!3431749))

(declare-fun m!3431751 () Bool)

(assert (=> bm!230738 m!3431751))

(assert (=> b!3174317 d!869439))

(declare-fun b!3174405 () Bool)

(declare-fun e!1977202 () Bool)

(declare-fun tp!1003362 () Bool)

(declare-fun tp!1003365 () Bool)

(assert (=> b!3174405 (= e!1977202 (and tp!1003362 tp!1003365))))

(declare-fun b!3174403 () Bool)

(declare-fun tp!1003364 () Bool)

(declare-fun tp!1003361 () Bool)

(assert (=> b!3174403 (= e!1977202 (and tp!1003364 tp!1003361))))

(declare-fun b!3174402 () Bool)

(assert (=> b!3174402 (= e!1977202 tp_is_empty!17185)))

(assert (=> b!3174312 (= tp!1003345 e!1977202)))

(declare-fun b!3174404 () Bool)

(declare-fun tp!1003363 () Bool)

(assert (=> b!3174404 (= e!1977202 tp!1003363)))

(assert (= (and b!3174312 ((_ is ElementMatch!9811) (regOne!20134 r!4705))) b!3174402))

(assert (= (and b!3174312 ((_ is Concat!15132) (regOne!20134 r!4705))) b!3174403))

(assert (= (and b!3174312 ((_ is Star!9811) (regOne!20134 r!4705))) b!3174404))

(assert (= (and b!3174312 ((_ is Union!9811) (regOne!20134 r!4705))) b!3174405))

(declare-fun b!3174409 () Bool)

(declare-fun e!1977203 () Bool)

(declare-fun tp!1003367 () Bool)

(declare-fun tp!1003370 () Bool)

(assert (=> b!3174409 (= e!1977203 (and tp!1003367 tp!1003370))))

(declare-fun b!3174407 () Bool)

(declare-fun tp!1003369 () Bool)

(declare-fun tp!1003366 () Bool)

(assert (=> b!3174407 (= e!1977203 (and tp!1003369 tp!1003366))))

(declare-fun b!3174406 () Bool)

(assert (=> b!3174406 (= e!1977203 tp_is_empty!17185)))

(assert (=> b!3174312 (= tp!1003346 e!1977203)))

(declare-fun b!3174408 () Bool)

(declare-fun tp!1003368 () Bool)

(assert (=> b!3174408 (= e!1977203 tp!1003368)))

(assert (= (and b!3174312 ((_ is ElementMatch!9811) (regTwo!20134 r!4705))) b!3174406))

(assert (= (and b!3174312 ((_ is Concat!15132) (regTwo!20134 r!4705))) b!3174407))

(assert (= (and b!3174312 ((_ is Star!9811) (regTwo!20134 r!4705))) b!3174408))

(assert (= (and b!3174312 ((_ is Union!9811) (regTwo!20134 r!4705))) b!3174409))

(declare-fun mapIsEmpty!19163 () Bool)

(declare-fun mapRes!19163 () Bool)

(assert (=> mapIsEmpty!19163 mapRes!19163))

(declare-fun tp!1003385 () Bool)

(declare-fun tp!1003389 () Bool)

(declare-fun b!3174416 () Bool)

(declare-fun e!1977209 () Bool)

(declare-fun tp!1003390 () Bool)

(assert (=> b!3174416 (= e!1977209 (and tp!1003389 tp_is_empty!17185 tp!1003390 tp!1003385))))

(declare-fun mapNonEmpty!19163 () Bool)

(declare-fun tp!1003388 () Bool)

(assert (=> mapNonEmpty!19163 (= mapRes!19163 (and tp!1003388 e!1977209))))

(declare-fun mapRest!19163 () (Array (_ BitVec 32) List!35662))

(declare-fun mapValue!19163 () List!35662)

(declare-fun mapKey!19163 () (_ BitVec 32))

(assert (=> mapNonEmpty!19163 (= mapRest!19160 (store mapRest!19163 mapKey!19163 mapValue!19163))))

(declare-fun condMapEmpty!19163 () Bool)

(declare-fun mapDefault!19163 () List!35662)

(assert (=> mapNonEmpty!19160 (= condMapEmpty!19163 (= mapRest!19160 ((as const (Array (_ BitVec 32) List!35662)) mapDefault!19163)))))

(declare-fun e!1977208 () Bool)

(assert (=> mapNonEmpty!19160 (= tp!1003342 (and e!1977208 mapRes!19163))))

(declare-fun tp!1003386 () Bool)

(declare-fun b!3174417 () Bool)

(declare-fun tp!1003391 () Bool)

(declare-fun tp!1003387 () Bool)

(assert (=> b!3174417 (= e!1977208 (and tp!1003387 tp_is_empty!17185 tp!1003391 tp!1003386))))

(assert (= (and mapNonEmpty!19160 condMapEmpty!19163) mapIsEmpty!19163))

(assert (= (and mapNonEmpty!19160 (not condMapEmpty!19163)) mapNonEmpty!19163))

(assert (= (and mapNonEmpty!19163 ((_ is Cons!35538) mapValue!19163)) b!3174416))

(assert (= (and mapNonEmpty!19160 ((_ is Cons!35538) mapDefault!19163)) b!3174417))

(declare-fun m!3431753 () Bool)

(assert (=> mapNonEmpty!19163 m!3431753))

(declare-fun tp!1003400 () Bool)

(declare-fun b!3174422 () Bool)

(declare-fun e!1977212 () Bool)

(declare-fun tp!1003398 () Bool)

(declare-fun tp!1003399 () Bool)

(assert (=> b!3174422 (= e!1977212 (and tp!1003398 tp_is_empty!17185 tp!1003399 tp!1003400))))

(assert (=> mapNonEmpty!19160 (= tp!1003344 e!1977212)))

(assert (= (and mapNonEmpty!19160 ((_ is Cons!35538) mapValue!19160)) b!3174422))

(declare-fun b!3174426 () Bool)

(declare-fun e!1977213 () Bool)

(declare-fun tp!1003402 () Bool)

(declare-fun tp!1003405 () Bool)

(assert (=> b!3174426 (= e!1977213 (and tp!1003402 tp!1003405))))

(declare-fun b!3174424 () Bool)

(declare-fun tp!1003404 () Bool)

(declare-fun tp!1003401 () Bool)

(assert (=> b!3174424 (= e!1977213 (and tp!1003404 tp!1003401))))

(declare-fun b!3174423 () Bool)

(assert (=> b!3174423 (= e!1977213 tp_is_empty!17185)))

(assert (=> b!3174309 (= tp!1003350 e!1977213)))

(declare-fun b!3174425 () Bool)

(declare-fun tp!1003403 () Bool)

(assert (=> b!3174425 (= e!1977213 tp!1003403)))

(assert (= (and b!3174309 ((_ is ElementMatch!9811) (reg!10140 r!4705))) b!3174423))

(assert (= (and b!3174309 ((_ is Concat!15132) (reg!10140 r!4705))) b!3174424))

(assert (= (and b!3174309 ((_ is Star!9811) (reg!10140 r!4705))) b!3174425))

(assert (= (and b!3174309 ((_ is Union!9811) (reg!10140 r!4705))) b!3174426))

(declare-fun e!1977214 () Bool)

(declare-fun tp!1003406 () Bool)

(declare-fun tp!1003408 () Bool)

(declare-fun tp!1003407 () Bool)

(declare-fun b!3174427 () Bool)

(assert (=> b!3174427 (= e!1977214 (and tp!1003406 tp_is_empty!17185 tp!1003407 tp!1003408))))

(assert (=> b!3174314 (= tp!1003347 e!1977214)))

(assert (= (and b!3174314 ((_ is Cons!35538) mapDefault!19160)) b!3174427))

(declare-fun b!3174431 () Bool)

(declare-fun e!1977215 () Bool)

(declare-fun tp!1003410 () Bool)

(declare-fun tp!1003413 () Bool)

(assert (=> b!3174431 (= e!1977215 (and tp!1003410 tp!1003413))))

(declare-fun b!3174429 () Bool)

(declare-fun tp!1003412 () Bool)

(declare-fun tp!1003409 () Bool)

(assert (=> b!3174429 (= e!1977215 (and tp!1003412 tp!1003409))))

(declare-fun b!3174428 () Bool)

(assert (=> b!3174428 (= e!1977215 tp_is_empty!17185)))

(assert (=> b!3174308 (= tp!1003349 e!1977215)))

(declare-fun b!3174430 () Bool)

(declare-fun tp!1003411 () Bool)

(assert (=> b!3174430 (= e!1977215 tp!1003411)))

(assert (= (and b!3174308 ((_ is ElementMatch!9811) (regOne!20135 r!4705))) b!3174428))

(assert (= (and b!3174308 ((_ is Concat!15132) (regOne!20135 r!4705))) b!3174429))

(assert (= (and b!3174308 ((_ is Star!9811) (regOne!20135 r!4705))) b!3174430))

(assert (= (and b!3174308 ((_ is Union!9811) (regOne!20135 r!4705))) b!3174431))

(declare-fun b!3174435 () Bool)

(declare-fun e!1977216 () Bool)

(declare-fun tp!1003415 () Bool)

(declare-fun tp!1003418 () Bool)

(assert (=> b!3174435 (= e!1977216 (and tp!1003415 tp!1003418))))

(declare-fun b!3174433 () Bool)

(declare-fun tp!1003417 () Bool)

(declare-fun tp!1003414 () Bool)

(assert (=> b!3174433 (= e!1977216 (and tp!1003417 tp!1003414))))

(declare-fun b!3174432 () Bool)

(assert (=> b!3174432 (= e!1977216 tp_is_empty!17185)))

(assert (=> b!3174308 (= tp!1003339 e!1977216)))

(declare-fun b!3174434 () Bool)

(declare-fun tp!1003416 () Bool)

(assert (=> b!3174434 (= e!1977216 tp!1003416)))

(assert (= (and b!3174308 ((_ is ElementMatch!9811) (regTwo!20135 r!4705))) b!3174432))

(assert (= (and b!3174308 ((_ is Concat!15132) (regTwo!20135 r!4705))) b!3174433))

(assert (= (and b!3174308 ((_ is Star!9811) (regTwo!20135 r!4705))) b!3174434))

(assert (= (and b!3174308 ((_ is Union!9811) (regTwo!20135 r!4705))) b!3174435))

(declare-fun tp!1003419 () Bool)

(declare-fun b!3174436 () Bool)

(declare-fun tp!1003420 () Bool)

(declare-fun tp!1003421 () Bool)

(declare-fun e!1977217 () Bool)

(assert (=> b!3174436 (= e!1977217 (and tp!1003419 tp_is_empty!17185 tp!1003420 tp!1003421))))

(assert (=> b!3174313 (= tp!1003343 e!1977217)))

(assert (= (and b!3174313 ((_ is Cons!35538) (zeroValue!4491 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445)))))))) b!3174436))

(declare-fun b!3174437 () Bool)

(declare-fun tp!1003422 () Bool)

(declare-fun e!1977218 () Bool)

(declare-fun tp!1003424 () Bool)

(declare-fun tp!1003423 () Bool)

(assert (=> b!3174437 (= e!1977218 (and tp!1003422 tp_is_empty!17185 tp!1003423 tp!1003424))))

(assert (=> b!3174313 (= tp!1003340 e!1977218)))

(assert (= (and b!3174313 ((_ is Cons!35538) (minValue!4491 (v!35322 (underlying!8693 (v!35323 (underlying!8694 (cache!4284 thiss!28445)))))))) b!3174437))

(check-sat (not d!869439) (not b!3174426) (not b!3174405) (not b!3174416) (not b!3174433) (not b!3174391) (not b!3174331) (not mapNonEmpty!19163) (not b_next!84113) (not b!3174425) (not b!3174430) b_and!209703 (not bm!230737) (not bm!230722) b_and!209705 (not bm!230739) (not b_next!84115) (not b!3174417) (not bm!230721) (not b!3174389) (not b!3174328) (not b!3174382) (not b!3174403) (not b!3174407) (not b!3174404) (not b!3174436) (not b!3174384) (not b!3174327) (not b!3174424) (not bm!230740) (not b!3174429) (not b!3174427) (not b!3174422) tp_is_empty!17185 (not b!3174434) (not b!3174437) (not bm!230741) (not b!3174409) (not d!869429) (not b!3174408) (not bm!230738) (not b!3174435) (not b!3174431) (not b!3174387) (not bm!230736) (not b!3174352))
(check-sat b_and!209705 b_and!209703 (not b_next!84115) (not b_next!84113))
