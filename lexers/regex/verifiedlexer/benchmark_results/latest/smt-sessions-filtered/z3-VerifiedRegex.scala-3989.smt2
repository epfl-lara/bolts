; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217116 () Bool)

(assert start!217116)

(declare-fun b!2224880 () Bool)

(declare-fun b_free!64489 () Bool)

(declare-fun b_next!65193 () Bool)

(assert (=> b!2224880 (= b_free!64489 (not b_next!65193))))

(declare-fun tp!694686 () Bool)

(declare-fun b_and!174477 () Bool)

(assert (=> b!2224880 (= tp!694686 b_and!174477)))

(declare-fun b!2224886 () Bool)

(declare-fun b_free!64491 () Bool)

(declare-fun b_next!65195 () Bool)

(assert (=> b!2224886 (= b_free!64491 (not b_next!65195))))

(declare-fun tp!694685 () Bool)

(declare-fun b_and!174479 () Bool)

(assert (=> b!2224886 (= tp!694685 b_and!174479)))

(declare-fun b!2224879 () Bool)

(declare-fun e!1421678 () Bool)

(declare-fun e!1421683 () Bool)

(declare-datatypes ((C!12884 0))(
  ( (C!12885 (val!7490 Int)) )
))
(declare-datatypes ((Regex!6369 0))(
  ( (ElementMatch!6369 (c!355198 C!12884)) (Concat!10707 (regOne!13250 Regex!6369) (regTwo!13250 Regex!6369)) (EmptyExpr!6369) (Star!6369 (reg!6698 Regex!6369)) (EmptyLang!6369) (Union!6369 (regOne!13251 Regex!6369) (regTwo!13251 Regex!6369)) )
))
(declare-datatypes ((List!26206 0))(
  ( (Nil!26112) (Cons!26112 (h!31513 Regex!6369) (t!199618 List!26206)) )
))
(declare-datatypes ((Context!3834 0))(
  ( (Context!3835 (exprs!2417 List!26206)) )
))
(declare-datatypes ((tuple2!25394 0))(
  ( (tuple2!25395 (_1!15081 Context!3834) (_2!15081 C!12884)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25396 0))(
  ( (tuple2!25397 (_1!15082 tuple2!25394) (_2!15082 (InoxSet Context!3834))) )
))
(declare-datatypes ((List!26207 0))(
  ( (Nil!26113) (Cons!26113 (h!31514 tuple2!25396) (t!199619 List!26207)) )
))
(declare-datatypes ((array!10340 0))(
  ( (array!10341 (arr!4601 (Array (_ BitVec 32) (_ BitVec 64))) (size!20382 (_ BitVec 32))) )
))
(declare-datatypes ((array!10342 0))(
  ( (array!10343 (arr!4602 (Array (_ BitVec 32) List!26207)) (size!20383 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6014 0))(
  ( (LongMapFixedSize!6015 (defaultEntry!3372 Int) (mask!7545 (_ BitVec 32)) (extraKeys!3255 (_ BitVec 32)) (zeroValue!3265 List!26207) (minValue!3265 List!26207) (_size!6061 (_ BitVec 32)) (_keys!3304 array!10340) (_values!3287 array!10342) (_vacant!3068 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11845 0))(
  ( (Cell!11846 (v!29678 LongMapFixedSize!6014)) )
))
(declare-datatypes ((MutLongMap!3007 0))(
  ( (LongMap!3007 (underlying!6215 Cell!11845)) (MutLongMapExt!3006 (__x!17247 Int)) )
))
(declare-fun lt!829799 () MutLongMap!3007)

(get-info :version)

(assert (=> b!2224879 (= e!1421678 (and e!1421683 ((_ is LongMap!3007) lt!829799)))))

(declare-datatypes ((Cell!11847 0))(
  ( (Cell!11848 (v!29679 MutLongMap!3007)) )
))
(declare-datatypes ((Hashable!2917 0))(
  ( (HashableExt!2916 (__x!17248 Int)) )
))
(declare-datatypes ((MutableMap!2917 0))(
  ( (MutableMapExt!2916 (__x!17249 Int)) (HashMap!2917 (underlying!6216 Cell!11847) (hashF!4840 Hashable!2917) (_size!6062 (_ BitVec 32)) (defaultValue!3079 Int)) )
))
(declare-datatypes ((CacheUp!1956 0))(
  ( (CacheUp!1957 (cache!3298 MutableMap!2917)) )
))
(declare-fun thiss!28682 () CacheUp!1956)

(assert (=> b!2224879 (= lt!829799 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))

(declare-fun e!1421682 () Bool)

(declare-fun tp!694693 () Bool)

(declare-fun e!1421681 () Bool)

(declare-fun tp!694692 () Bool)

(declare-fun array_inv!3305 (array!10340) Bool)

(declare-fun array_inv!3306 (array!10342) Bool)

(assert (=> b!2224880 (= e!1421682 (and tp!694686 tp!694693 tp!694692 (array_inv!3305 (_keys!3304 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))) (array_inv!3306 (_values!3287 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))) e!1421681))))

(declare-fun b!2224881 () Bool)

(declare-fun e!1421679 () Bool)

(declare-fun e!1421674 () Bool)

(assert (=> b!2224881 (= e!1421679 e!1421674)))

(declare-fun setRes!19763 () Bool)

(declare-fun e!1421675 () Bool)

(declare-fun setElem!19763 () Context!3834)

(declare-fun setNonEmpty!19763 () Bool)

(declare-fun tp!694684 () Bool)

(declare-fun inv!35454 (Context!3834) Bool)

(assert (=> setNonEmpty!19763 (= setRes!19763 (and tp!694684 (inv!35454 setElem!19763) e!1421675))))

(declare-fun res!14206 () (InoxSet Context!3834))

(declare-fun setRest!19763 () (InoxSet Context!3834))

(assert (=> setNonEmpty!19763 (= res!14206 ((_ map or) (store ((as const (Array Context!3834 Bool)) false) setElem!19763 true) setRest!19763))))

(declare-fun b!2224882 () Bool)

(declare-fun e!1421680 () Bool)

(declare-fun tp!694688 () Bool)

(assert (=> b!2224882 (= e!1421680 tp!694688)))

(declare-fun setIsEmpty!19763 () Bool)

(assert (=> setIsEmpty!19763 setRes!19763))

(declare-fun b!2224878 () Bool)

(declare-fun e!1421676 () Bool)

(assert (=> b!2224878 (= e!1421676 (not ((_ is HashMap!2917) (cache!3298 thiss!28682))))))

(declare-fun res!954265 () Bool)

(assert (=> start!217116 (=> (not res!954265) (not e!1421676))))

(declare-fun validCacheMapUp!283 (MutableMap!2917) Bool)

(assert (=> start!217116 (= res!954265 (validCacheMapUp!283 (cache!3298 thiss!28682)))))

(assert (=> start!217116 e!1421676))

(declare-fun inv!35455 (CacheUp!1956) Bool)

(assert (=> start!217116 (and (inv!35455 thiss!28682) e!1421679)))

(declare-fun condSetEmpty!19763 () Bool)

(assert (=> start!217116 (= condSetEmpty!19763 (= res!14206 ((as const (Array Context!3834 Bool)) false)))))

(assert (=> start!217116 setRes!19763))

(declare-fun ctx!44 () Context!3834)

(assert (=> start!217116 (and (inv!35454 ctx!44) e!1421680)))

(declare-fun tp_is_empty!9963 () Bool)

(assert (=> start!217116 tp_is_empty!9963))

(declare-fun b!2224883 () Bool)

(declare-fun tp!694687 () Bool)

(declare-fun mapRes!14184 () Bool)

(assert (=> b!2224883 (= e!1421681 (and tp!694687 mapRes!14184))))

(declare-fun condMapEmpty!14184 () Bool)

(declare-fun mapDefault!14184 () List!26207)

(assert (=> b!2224883 (= condMapEmpty!14184 (= (arr!4602 (_values!3287 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26207)) mapDefault!14184)))))

(declare-fun mapIsEmpty!14184 () Bool)

(assert (=> mapIsEmpty!14184 mapRes!14184))

(declare-fun b!2224884 () Bool)

(declare-fun res!954266 () Bool)

(assert (=> b!2224884 (=> (not res!954266) (not e!1421676))))

(declare-fun a!962 () C!12884)

(declare-fun derivationStepZipperUp!33 (Context!3834 C!12884) (InoxSet Context!3834))

(assert (=> b!2224884 (= res!954266 (= res!14206 (derivationStepZipperUp!33 ctx!44 a!962)))))

(declare-fun b!2224885 () Bool)

(declare-fun e!1421677 () Bool)

(assert (=> b!2224885 (= e!1421677 e!1421682)))

(assert (=> b!2224886 (= e!1421674 (and e!1421678 tp!694685))))

(declare-fun b!2224887 () Bool)

(assert (=> b!2224887 (= e!1421683 e!1421677)))

(declare-fun b!2224888 () Bool)

(declare-fun tp!694690 () Bool)

(assert (=> b!2224888 (= e!1421675 tp!694690)))

(declare-fun mapNonEmpty!14184 () Bool)

(declare-fun tp!694689 () Bool)

(declare-fun tp!694691 () Bool)

(assert (=> mapNonEmpty!14184 (= mapRes!14184 (and tp!694689 tp!694691))))

(declare-fun mapValue!14184 () List!26207)

(declare-fun mapRest!14184 () (Array (_ BitVec 32) List!26207))

(declare-fun mapKey!14184 () (_ BitVec 32))

(assert (=> mapNonEmpty!14184 (= (arr!4602 (_values!3287 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))) (store mapRest!14184 mapKey!14184 mapValue!14184))))

(assert (= (and start!217116 res!954265) b!2224884))

(assert (= (and b!2224884 res!954266) b!2224878))

(assert (= (and b!2224883 condMapEmpty!14184) mapIsEmpty!14184))

(assert (= (and b!2224883 (not condMapEmpty!14184)) mapNonEmpty!14184))

(assert (= b!2224880 b!2224883))

(assert (= b!2224885 b!2224880))

(assert (= b!2224887 b!2224885))

(assert (= (and b!2224879 ((_ is LongMap!3007) (v!29679 (underlying!6216 (cache!3298 thiss!28682))))) b!2224887))

(assert (= b!2224886 b!2224879))

(assert (= (and b!2224881 ((_ is HashMap!2917) (cache!3298 thiss!28682))) b!2224886))

(assert (= start!217116 b!2224881))

(assert (= (and start!217116 condSetEmpty!19763) setIsEmpty!19763))

(assert (= (and start!217116 (not condSetEmpty!19763)) setNonEmpty!19763))

(assert (= setNonEmpty!19763 b!2224888))

(assert (= start!217116 b!2224882))

(declare-fun m!2664787 () Bool)

(assert (=> start!217116 m!2664787))

(declare-fun m!2664789 () Bool)

(assert (=> start!217116 m!2664789))

(declare-fun m!2664791 () Bool)

(assert (=> start!217116 m!2664791))

(declare-fun m!2664793 () Bool)

(assert (=> setNonEmpty!19763 m!2664793))

(declare-fun m!2664795 () Bool)

(assert (=> b!2224884 m!2664795))

(declare-fun m!2664797 () Bool)

(assert (=> mapNonEmpty!14184 m!2664797))

(declare-fun m!2664799 () Bool)

(assert (=> b!2224880 m!2664799))

(declare-fun m!2664801 () Bool)

(assert (=> b!2224880 m!2664801))

(check-sat (not setNonEmpty!19763) (not b!2224882) tp_is_empty!9963 (not b!2224888) b_and!174479 b_and!174477 (not b_next!65195) (not b!2224883) (not start!217116) (not b!2224880) (not mapNonEmpty!14184) (not b_next!65193) (not b!2224884))
(check-sat b_and!174479 b_and!174477 (not b_next!65195) (not b_next!65193))
(get-model)

(declare-fun d!664460 () Bool)

(assert (=> d!664460 (= (array_inv!3305 (_keys!3304 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))) (bvsge (size!20382 (_keys!3304 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2224880 d!664460))

(declare-fun d!664462 () Bool)

(assert (=> d!664462 (= (array_inv!3306 (_values!3287 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))) (bvsge (size!20383 (_values!3287 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2224880 d!664462))

(declare-fun d!664464 () Bool)

(declare-fun lambda!84130 () Int)

(declare-fun forall!5330 (List!26206 Int) Bool)

(assert (=> d!664464 (= (inv!35454 setElem!19763) (forall!5330 (exprs!2417 setElem!19763) lambda!84130))))

(declare-fun bs!453497 () Bool)

(assert (= bs!453497 d!664464))

(declare-fun m!2664803 () Bool)

(assert (=> bs!453497 m!2664803))

(assert (=> setNonEmpty!19763 d!664464))

(declare-fun b!2224900 () Bool)

(declare-fun e!1421693 () Bool)

(declare-fun nullable!1737 (Regex!6369) Bool)

(assert (=> b!2224900 (= e!1421693 (nullable!1737 (h!31513 (exprs!2417 ctx!44))))))

(declare-fun b!2224901 () Bool)

(declare-fun e!1421691 () (InoxSet Context!3834))

(declare-fun e!1421692 () (InoxSet Context!3834))

(assert (=> b!2224901 (= e!1421691 e!1421692)))

(declare-fun c!355203 () Bool)

(assert (=> b!2224901 (= c!355203 ((_ is Cons!26112) (exprs!2417 ctx!44)))))

(declare-fun b!2224902 () Bool)

(declare-fun call!133161 () (InoxSet Context!3834))

(assert (=> b!2224902 (= e!1421691 ((_ map or) call!133161 (derivationStepZipperUp!33 (Context!3835 (t!199618 (exprs!2417 ctx!44))) a!962)))))

(declare-fun bm!133156 () Bool)

(declare-fun derivationStepZipperDown!28 (Regex!6369 Context!3834 C!12884) (InoxSet Context!3834))

(assert (=> bm!133156 (= call!133161 (derivationStepZipperDown!28 (h!31513 (exprs!2417 ctx!44)) (Context!3835 (t!199618 (exprs!2417 ctx!44))) a!962))))

(declare-fun b!2224903 () Bool)

(assert (=> b!2224903 (= e!1421692 ((as const (Array Context!3834 Bool)) false))))

(declare-fun b!2224899 () Bool)

(assert (=> b!2224899 (= e!1421692 call!133161)))

(declare-fun d!664466 () Bool)

(declare-fun c!355204 () Bool)

(assert (=> d!664466 (= c!355204 e!1421693)))

(declare-fun res!954269 () Bool)

(assert (=> d!664466 (=> (not res!954269) (not e!1421693))))

(assert (=> d!664466 (= res!954269 ((_ is Cons!26112) (exprs!2417 ctx!44)))))

(assert (=> d!664466 (= (derivationStepZipperUp!33 ctx!44 a!962) e!1421691)))

(assert (= (and d!664466 res!954269) b!2224900))

(assert (= (and d!664466 c!355204) b!2224902))

(assert (= (and d!664466 (not c!355204)) b!2224901))

(assert (= (and b!2224901 c!355203) b!2224899))

(assert (= (and b!2224901 (not c!355203)) b!2224903))

(assert (= (or b!2224902 b!2224899) bm!133156))

(declare-fun m!2664805 () Bool)

(assert (=> b!2224900 m!2664805))

(declare-fun m!2664807 () Bool)

(assert (=> b!2224902 m!2664807))

(declare-fun m!2664809 () Bool)

(assert (=> bm!133156 m!2664809))

(assert (=> b!2224884 d!664466))

(declare-fun d!664468 () Bool)

(declare-fun res!954274 () Bool)

(declare-fun e!1421696 () Bool)

(assert (=> d!664468 (=> (not res!954274) (not e!1421696))))

(declare-fun valid!2309 (MutableMap!2917) Bool)

(assert (=> d!664468 (= res!954274 (valid!2309 (cache!3298 thiss!28682)))))

(assert (=> d!664468 (= (validCacheMapUp!283 (cache!3298 thiss!28682)) e!1421696)))

(declare-fun b!2224908 () Bool)

(declare-fun res!954275 () Bool)

(assert (=> b!2224908 (=> (not res!954275) (not e!1421696))))

(declare-fun invariantList!353 (List!26207) Bool)

(declare-datatypes ((ListMap!779 0))(
  ( (ListMap!780 (toList!1314 List!26207)) )
))
(declare-fun map!5320 (MutableMap!2917) ListMap!779)

(assert (=> b!2224908 (= res!954275 (invariantList!353 (toList!1314 (map!5320 (cache!3298 thiss!28682)))))))

(declare-fun b!2224909 () Bool)

(declare-fun lambda!84133 () Int)

(declare-fun forall!5331 (List!26207 Int) Bool)

(assert (=> b!2224909 (= e!1421696 (forall!5331 (toList!1314 (map!5320 (cache!3298 thiss!28682))) lambda!84133))))

(assert (= (and d!664468 res!954274) b!2224908))

(assert (= (and b!2224908 res!954275) b!2224909))

(declare-fun m!2664812 () Bool)

(assert (=> d!664468 m!2664812))

(declare-fun m!2664814 () Bool)

(assert (=> b!2224908 m!2664814))

(declare-fun m!2664816 () Bool)

(assert (=> b!2224908 m!2664816))

(assert (=> b!2224909 m!2664814))

(declare-fun m!2664818 () Bool)

(assert (=> b!2224909 m!2664818))

(assert (=> start!217116 d!664468))

(declare-fun d!664470 () Bool)

(declare-fun res!954278 () Bool)

(declare-fun e!1421699 () Bool)

(assert (=> d!664470 (=> (not res!954278) (not e!1421699))))

(assert (=> d!664470 (= res!954278 ((_ is HashMap!2917) (cache!3298 thiss!28682)))))

(assert (=> d!664470 (= (inv!35455 thiss!28682) e!1421699)))

(declare-fun b!2224912 () Bool)

(assert (=> b!2224912 (= e!1421699 (validCacheMapUp!283 (cache!3298 thiss!28682)))))

(assert (= (and d!664470 res!954278) b!2224912))

(assert (=> b!2224912 m!2664787))

(assert (=> start!217116 d!664470))

(declare-fun bs!453498 () Bool)

(declare-fun d!664472 () Bool)

(assert (= bs!453498 (and d!664472 d!664464)))

(declare-fun lambda!84134 () Int)

(assert (=> bs!453498 (= lambda!84134 lambda!84130)))

(assert (=> d!664472 (= (inv!35454 ctx!44) (forall!5330 (exprs!2417 ctx!44) lambda!84134))))

(declare-fun bs!453499 () Bool)

(assert (= bs!453499 d!664472))

(declare-fun m!2664820 () Bool)

(assert (=> bs!453499 m!2664820))

(assert (=> start!217116 d!664472))

(declare-fun setElem!19766 () Context!3834)

(declare-fun setNonEmpty!19766 () Bool)

(declare-fun e!1421708 () Bool)

(declare-fun tp!694704 () Bool)

(declare-fun setRes!19766 () Bool)

(assert (=> setNonEmpty!19766 (= setRes!19766 (and tp!694704 (inv!35454 setElem!19766) e!1421708))))

(declare-fun setRest!19766 () (InoxSet Context!3834))

(assert (=> setNonEmpty!19766 (= (_2!15082 (h!31514 (zeroValue!3265 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3834 Bool)) false) setElem!19766 true) setRest!19766))))

(declare-fun b!2224922 () Bool)

(declare-fun e!1421706 () Bool)

(declare-fun tp!694702 () Bool)

(assert (=> b!2224922 (= e!1421706 tp!694702)))

(declare-fun setIsEmpty!19766 () Bool)

(assert (=> setIsEmpty!19766 setRes!19766))

(declare-fun tp!694703 () Bool)

(declare-fun b!2224923 () Bool)

(declare-fun e!1421707 () Bool)

(assert (=> b!2224923 (= e!1421707 (and (inv!35454 (_1!15081 (_1!15082 (h!31514 (zeroValue!3265 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682)))))))))) e!1421706 tp_is_empty!9963 setRes!19766 tp!694703))))

(declare-fun condSetEmpty!19766 () Bool)

(assert (=> b!2224923 (= condSetEmpty!19766 (= (_2!15082 (h!31514 (zeroValue!3265 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682)))))))) ((as const (Array Context!3834 Bool)) false)))))

(declare-fun b!2224921 () Bool)

(declare-fun tp!694705 () Bool)

(assert (=> b!2224921 (= e!1421708 tp!694705)))

(assert (=> b!2224880 (= tp!694693 e!1421707)))

(assert (= b!2224923 b!2224922))

(assert (= (and b!2224923 condSetEmpty!19766) setIsEmpty!19766))

(assert (= (and b!2224923 (not condSetEmpty!19766)) setNonEmpty!19766))

(assert (= setNonEmpty!19766 b!2224921))

(assert (= (and b!2224880 ((_ is Cons!26113) (zeroValue!3265 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682)))))))) b!2224923))

(declare-fun m!2664822 () Bool)

(assert (=> setNonEmpty!19766 m!2664822))

(declare-fun m!2664824 () Bool)

(assert (=> b!2224923 m!2664824))

(declare-fun tp!694708 () Bool)

(declare-fun e!1421711 () Bool)

(declare-fun setRes!19767 () Bool)

(declare-fun setNonEmpty!19767 () Bool)

(declare-fun setElem!19767 () Context!3834)

(assert (=> setNonEmpty!19767 (= setRes!19767 (and tp!694708 (inv!35454 setElem!19767) e!1421711))))

(declare-fun setRest!19767 () (InoxSet Context!3834))

(assert (=> setNonEmpty!19767 (= (_2!15082 (h!31514 (minValue!3265 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3834 Bool)) false) setElem!19767 true) setRest!19767))))

(declare-fun b!2224925 () Bool)

(declare-fun e!1421709 () Bool)

(declare-fun tp!694706 () Bool)

(assert (=> b!2224925 (= e!1421709 tp!694706)))

(declare-fun setIsEmpty!19767 () Bool)

(assert (=> setIsEmpty!19767 setRes!19767))

(declare-fun e!1421710 () Bool)

(declare-fun tp!694707 () Bool)

(declare-fun b!2224926 () Bool)

(assert (=> b!2224926 (= e!1421710 (and (inv!35454 (_1!15081 (_1!15082 (h!31514 (minValue!3265 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682)))))))))) e!1421709 tp_is_empty!9963 setRes!19767 tp!694707))))

(declare-fun condSetEmpty!19767 () Bool)

(assert (=> b!2224926 (= condSetEmpty!19767 (= (_2!15082 (h!31514 (minValue!3265 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682)))))))) ((as const (Array Context!3834 Bool)) false)))))

(declare-fun b!2224924 () Bool)

(declare-fun tp!694709 () Bool)

(assert (=> b!2224924 (= e!1421711 tp!694709)))

(assert (=> b!2224880 (= tp!694692 e!1421710)))

(assert (= b!2224926 b!2224925))

(assert (= (and b!2224926 condSetEmpty!19767) setIsEmpty!19767))

(assert (= (and b!2224926 (not condSetEmpty!19767)) setNonEmpty!19767))

(assert (= setNonEmpty!19767 b!2224924))

(assert (= (and b!2224880 ((_ is Cons!26113) (minValue!3265 (v!29678 (underlying!6215 (v!29679 (underlying!6216 (cache!3298 thiss!28682)))))))) b!2224926))

(declare-fun m!2664826 () Bool)

(assert (=> setNonEmpty!19767 m!2664826))

(declare-fun m!2664828 () Bool)

(assert (=> b!2224926 m!2664828))

(declare-fun setElem!19768 () Context!3834)

(declare-fun setNonEmpty!19768 () Bool)

(declare-fun setRes!19768 () Bool)

(declare-fun tp!694712 () Bool)

(declare-fun e!1421714 () Bool)

(assert (=> setNonEmpty!19768 (= setRes!19768 (and tp!694712 (inv!35454 setElem!19768) e!1421714))))

(declare-fun setRest!19768 () (InoxSet Context!3834))

(assert (=> setNonEmpty!19768 (= (_2!15082 (h!31514 mapDefault!14184)) ((_ map or) (store ((as const (Array Context!3834 Bool)) false) setElem!19768 true) setRest!19768))))

(declare-fun b!2224928 () Bool)

(declare-fun e!1421712 () Bool)

(declare-fun tp!694710 () Bool)

(assert (=> b!2224928 (= e!1421712 tp!694710)))

(declare-fun setIsEmpty!19768 () Bool)

(assert (=> setIsEmpty!19768 setRes!19768))

(declare-fun tp!694711 () Bool)

(declare-fun e!1421713 () Bool)

(declare-fun b!2224929 () Bool)

(assert (=> b!2224929 (= e!1421713 (and (inv!35454 (_1!15081 (_1!15082 (h!31514 mapDefault!14184)))) e!1421712 tp_is_empty!9963 setRes!19768 tp!694711))))

(declare-fun condSetEmpty!19768 () Bool)

(assert (=> b!2224929 (= condSetEmpty!19768 (= (_2!15082 (h!31514 mapDefault!14184)) ((as const (Array Context!3834 Bool)) false)))))

(declare-fun b!2224927 () Bool)

(declare-fun tp!694713 () Bool)

(assert (=> b!2224927 (= e!1421714 tp!694713)))

(assert (=> b!2224883 (= tp!694687 e!1421713)))

(assert (= b!2224929 b!2224928))

(assert (= (and b!2224929 condSetEmpty!19768) setIsEmpty!19768))

(assert (= (and b!2224929 (not condSetEmpty!19768)) setNonEmpty!19768))

(assert (= setNonEmpty!19768 b!2224927))

(assert (= (and b!2224883 ((_ is Cons!26113) mapDefault!14184)) b!2224929))

(declare-fun m!2664830 () Bool)

(assert (=> setNonEmpty!19768 m!2664830))

(declare-fun m!2664832 () Bool)

(assert (=> b!2224929 m!2664832))

(declare-fun b!2224944 () Bool)

(declare-fun e!1421731 () Bool)

(declare-fun tp!694738 () Bool)

(assert (=> b!2224944 (= e!1421731 tp!694738)))

(declare-fun b!2224945 () Bool)

(declare-fun e!1421729 () Bool)

(declare-fun tp!694733 () Bool)

(assert (=> b!2224945 (= e!1421729 tp!694733)))

(declare-fun b!2224946 () Bool)

(declare-fun e!1421728 () Bool)

(declare-fun tp!694732 () Bool)

(assert (=> b!2224946 (= e!1421728 tp!694732)))

(declare-fun mapNonEmpty!14187 () Bool)

(declare-fun mapRes!14187 () Bool)

(declare-fun tp!694736 () Bool)

(declare-fun e!1421730 () Bool)

(assert (=> mapNonEmpty!14187 (= mapRes!14187 (and tp!694736 e!1421730))))

(declare-fun mapValue!14187 () List!26207)

(declare-fun mapRest!14187 () (Array (_ BitVec 32) List!26207))

(declare-fun mapKey!14187 () (_ BitVec 32))

(assert (=> mapNonEmpty!14187 (= mapRest!14184 (store mapRest!14187 mapKey!14187 mapValue!14187))))

(declare-fun b!2224947 () Bool)

(declare-fun e!1421732 () Bool)

(declare-fun tp!694735 () Bool)

(assert (=> b!2224947 (= e!1421732 tp!694735)))

(declare-fun setElem!19774 () Context!3834)

(declare-fun setNonEmpty!19773 () Bool)

(declare-fun setRes!19773 () Bool)

(declare-fun tp!694739 () Bool)

(assert (=> setNonEmpty!19773 (= setRes!19773 (and tp!694739 (inv!35454 setElem!19774) e!1421728))))

(declare-fun mapDefault!14187 () List!26207)

(declare-fun setRest!19773 () (InoxSet Context!3834))

(assert (=> setNonEmpty!19773 (= (_2!15082 (h!31514 mapDefault!14187)) ((_ map or) (store ((as const (Array Context!3834 Bool)) false) setElem!19774 true) setRest!19773))))

(declare-fun condMapEmpty!14187 () Bool)

(assert (=> mapNonEmpty!14184 (= condMapEmpty!14187 (= mapRest!14184 ((as const (Array (_ BitVec 32) List!26207)) mapDefault!14187)))))

(declare-fun e!1421727 () Bool)

(assert (=> mapNonEmpty!14184 (= tp!694689 (and e!1421727 mapRes!14187))))

(declare-fun tp!694734 () Bool)

(declare-fun setNonEmpty!19774 () Bool)

(declare-fun setElem!19773 () Context!3834)

(declare-fun setRes!19774 () Bool)

(assert (=> setNonEmpty!19774 (= setRes!19774 (and tp!694734 (inv!35454 setElem!19773) e!1421729))))

(declare-fun setRest!19774 () (InoxSet Context!3834))

(assert (=> setNonEmpty!19774 (= (_2!15082 (h!31514 mapValue!14187)) ((_ map or) (store ((as const (Array Context!3834 Bool)) false) setElem!19773 true) setRest!19774))))

(declare-fun setIsEmpty!19773 () Bool)

(assert (=> setIsEmpty!19773 setRes!19773))

(declare-fun tp!694737 () Bool)

(declare-fun b!2224948 () Bool)

(assert (=> b!2224948 (= e!1421730 (and (inv!35454 (_1!15081 (_1!15082 (h!31514 mapValue!14187)))) e!1421732 tp_is_empty!9963 setRes!19774 tp!694737))))

(declare-fun condSetEmpty!19773 () Bool)

(assert (=> b!2224948 (= condSetEmpty!19773 (= (_2!15082 (h!31514 mapValue!14187)) ((as const (Array Context!3834 Bool)) false)))))

(declare-fun tp!694740 () Bool)

(declare-fun b!2224949 () Bool)

(assert (=> b!2224949 (= e!1421727 (and (inv!35454 (_1!15081 (_1!15082 (h!31514 mapDefault!14187)))) e!1421731 tp_is_empty!9963 setRes!19773 tp!694740))))

(declare-fun condSetEmpty!19774 () Bool)

(assert (=> b!2224949 (= condSetEmpty!19774 (= (_2!15082 (h!31514 mapDefault!14187)) ((as const (Array Context!3834 Bool)) false)))))

(declare-fun mapIsEmpty!14187 () Bool)

(assert (=> mapIsEmpty!14187 mapRes!14187))

(declare-fun setIsEmpty!19774 () Bool)

(assert (=> setIsEmpty!19774 setRes!19774))

(assert (= (and mapNonEmpty!14184 condMapEmpty!14187) mapIsEmpty!14187))

(assert (= (and mapNonEmpty!14184 (not condMapEmpty!14187)) mapNonEmpty!14187))

(assert (= b!2224948 b!2224947))

(assert (= (and b!2224948 condSetEmpty!19773) setIsEmpty!19774))

(assert (= (and b!2224948 (not condSetEmpty!19773)) setNonEmpty!19774))

(assert (= setNonEmpty!19774 b!2224945))

(assert (= (and mapNonEmpty!14187 ((_ is Cons!26113) mapValue!14187)) b!2224948))

(assert (= b!2224949 b!2224944))

(assert (= (and b!2224949 condSetEmpty!19774) setIsEmpty!19773))

(assert (= (and b!2224949 (not condSetEmpty!19774)) setNonEmpty!19773))

(assert (= setNonEmpty!19773 b!2224946))

(assert (= (and mapNonEmpty!14184 ((_ is Cons!26113) mapDefault!14187)) b!2224949))

(declare-fun m!2664834 () Bool)

(assert (=> setNonEmpty!19773 m!2664834))

(declare-fun m!2664836 () Bool)

(assert (=> setNonEmpty!19774 m!2664836))

(declare-fun m!2664838 () Bool)

(assert (=> b!2224949 m!2664838))

(declare-fun m!2664840 () Bool)

(assert (=> b!2224948 m!2664840))

(declare-fun m!2664842 () Bool)

(assert (=> mapNonEmpty!14187 m!2664842))

(declare-fun setElem!19775 () Context!3834)

(declare-fun e!1421735 () Bool)

(declare-fun setNonEmpty!19775 () Bool)

(declare-fun setRes!19775 () Bool)

(declare-fun tp!694743 () Bool)

(assert (=> setNonEmpty!19775 (= setRes!19775 (and tp!694743 (inv!35454 setElem!19775) e!1421735))))

(declare-fun setRest!19775 () (InoxSet Context!3834))

(assert (=> setNonEmpty!19775 (= (_2!15082 (h!31514 mapValue!14184)) ((_ map or) (store ((as const (Array Context!3834 Bool)) false) setElem!19775 true) setRest!19775))))

(declare-fun b!2224951 () Bool)

(declare-fun e!1421733 () Bool)

(declare-fun tp!694741 () Bool)

(assert (=> b!2224951 (= e!1421733 tp!694741)))

(declare-fun setIsEmpty!19775 () Bool)

(assert (=> setIsEmpty!19775 setRes!19775))

(declare-fun b!2224952 () Bool)

(declare-fun e!1421734 () Bool)

(declare-fun tp!694742 () Bool)

(assert (=> b!2224952 (= e!1421734 (and (inv!35454 (_1!15081 (_1!15082 (h!31514 mapValue!14184)))) e!1421733 tp_is_empty!9963 setRes!19775 tp!694742))))

(declare-fun condSetEmpty!19775 () Bool)

(assert (=> b!2224952 (= condSetEmpty!19775 (= (_2!15082 (h!31514 mapValue!14184)) ((as const (Array Context!3834 Bool)) false)))))

(declare-fun b!2224950 () Bool)

(declare-fun tp!694744 () Bool)

(assert (=> b!2224950 (= e!1421735 tp!694744)))

(assert (=> mapNonEmpty!14184 (= tp!694691 e!1421734)))

(assert (= b!2224952 b!2224951))

(assert (= (and b!2224952 condSetEmpty!19775) setIsEmpty!19775))

(assert (= (and b!2224952 (not condSetEmpty!19775)) setNonEmpty!19775))

(assert (= setNonEmpty!19775 b!2224950))

(assert (= (and mapNonEmpty!14184 ((_ is Cons!26113) mapValue!14184)) b!2224952))

(declare-fun m!2664844 () Bool)

(assert (=> setNonEmpty!19775 m!2664844))

(declare-fun m!2664846 () Bool)

(assert (=> b!2224952 m!2664846))

(declare-fun b!2224957 () Bool)

(declare-fun e!1421738 () Bool)

(declare-fun tp!694749 () Bool)

(declare-fun tp!694750 () Bool)

(assert (=> b!2224957 (= e!1421738 (and tp!694749 tp!694750))))

(assert (=> b!2224888 (= tp!694690 e!1421738)))

(assert (= (and b!2224888 ((_ is Cons!26112) (exprs!2417 setElem!19763))) b!2224957))

(declare-fun condSetEmpty!19778 () Bool)

(assert (=> setNonEmpty!19763 (= condSetEmpty!19778 (= setRest!19763 ((as const (Array Context!3834 Bool)) false)))))

(declare-fun setRes!19778 () Bool)

(assert (=> setNonEmpty!19763 (= tp!694684 setRes!19778)))

(declare-fun setIsEmpty!19778 () Bool)

(assert (=> setIsEmpty!19778 setRes!19778))

(declare-fun setNonEmpty!19778 () Bool)

(declare-fun e!1421741 () Bool)

(declare-fun setElem!19778 () Context!3834)

(declare-fun tp!694756 () Bool)

(assert (=> setNonEmpty!19778 (= setRes!19778 (and tp!694756 (inv!35454 setElem!19778) e!1421741))))

(declare-fun setRest!19778 () (InoxSet Context!3834))

(assert (=> setNonEmpty!19778 (= setRest!19763 ((_ map or) (store ((as const (Array Context!3834 Bool)) false) setElem!19778 true) setRest!19778))))

(declare-fun b!2224962 () Bool)

(declare-fun tp!694755 () Bool)

(assert (=> b!2224962 (= e!1421741 tp!694755)))

(assert (= (and setNonEmpty!19763 condSetEmpty!19778) setIsEmpty!19778))

(assert (= (and setNonEmpty!19763 (not condSetEmpty!19778)) setNonEmpty!19778))

(assert (= setNonEmpty!19778 b!2224962))

(declare-fun m!2664848 () Bool)

(assert (=> setNonEmpty!19778 m!2664848))

(declare-fun b!2224963 () Bool)

(declare-fun e!1421742 () Bool)

(declare-fun tp!694757 () Bool)

(declare-fun tp!694758 () Bool)

(assert (=> b!2224963 (= e!1421742 (and tp!694757 tp!694758))))

(assert (=> b!2224882 (= tp!694688 e!1421742)))

(assert (= (and b!2224882 ((_ is Cons!26112) (exprs!2417 ctx!44))) b!2224963))

(check-sat (not setNonEmpty!19767) (not d!664468) (not b!2224922) (not b!2224900) (not b!2224957) (not b_next!65195) (not b!2224951) (not b!2224945) (not b!2224927) (not b!2224912) (not setNonEmpty!19774) (not b!2224909) (not bm!133156) (not b!2224928) (not b!2224924) (not b!2224923) (not b!2224921) (not b!2224926) (not b!2224963) (not b!2224944) (not b!2224962) (not b_next!65193) (not b!2224908) (not setNonEmpty!19775) tp_is_empty!9963 (not b!2224948) (not b!2224902) (not b!2224952) (not setNonEmpty!19778) (not b!2224947) (not b!2224946) (not d!664472) (not setNonEmpty!19773) (not mapNonEmpty!14187) b_and!174479 (not b!2224929) (not b!2224949) b_and!174477 (not setNonEmpty!19766) (not b!2224925) (not b!2224950) (not d!664464) (not setNonEmpty!19768))
(check-sat b_and!174479 b_and!174477 (not b_next!65195) (not b_next!65193))
