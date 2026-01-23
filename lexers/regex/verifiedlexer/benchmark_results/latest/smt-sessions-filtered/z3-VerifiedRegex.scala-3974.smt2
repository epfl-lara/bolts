; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216720 () Bool)

(assert start!216720)

(declare-fun b!2221040 () Bool)

(declare-fun b_free!64341 () Bool)

(declare-fun b_next!65045 () Bool)

(assert (=> b!2221040 (= b_free!64341 (not b_next!65045))))

(declare-fun tp!692143 () Bool)

(declare-fun b_and!174309 () Bool)

(assert (=> b!2221040 (= tp!692143 b_and!174309)))

(declare-fun b!2221048 () Bool)

(declare-fun b_free!64343 () Bool)

(declare-fun b_next!65047 () Bool)

(assert (=> b!2221048 (= b_free!64343 (not b_next!65047))))

(declare-fun tp!692131 () Bool)

(declare-fun b_and!174311 () Bool)

(assert (=> b!2221048 (= tp!692131 b_and!174311)))

(declare-fun b!2221041 () Bool)

(declare-fun b_free!64345 () Bool)

(declare-fun b_next!65049 () Bool)

(assert (=> b!2221041 (= b_free!64345 (not b_next!65049))))

(declare-fun tp!692139 () Bool)

(declare-fun b_and!174313 () Bool)

(assert (=> b!2221041 (= tp!692139 b_and!174313)))

(declare-fun b!2221045 () Bool)

(declare-fun b_free!64347 () Bool)

(declare-fun b_next!65051 () Bool)

(assert (=> b!2221045 (= b_free!64347 (not b_next!65051))))

(declare-fun tp!692138 () Bool)

(declare-fun b_and!174315 () Bool)

(assert (=> b!2221045 (= tp!692138 b_and!174315)))

(declare-fun b!2221038 () Bool)

(declare-datatypes ((C!12824 0))(
  ( (C!12825 (val!7460 Int)) )
))
(declare-datatypes ((Regex!6339 0))(
  ( (ElementMatch!6339 (c!354643 C!12824)) (Concat!10677 (regOne!13190 Regex!6339) (regTwo!13190 Regex!6339)) (EmptyExpr!6339) (Star!6339 (reg!6668 Regex!6339)) (EmptyLang!6339) (Union!6339 (regOne!13191 Regex!6339) (regTwo!13191 Regex!6339)) )
))
(declare-datatypes ((List!26132 0))(
  ( (Nil!26038) (Cons!26038 (h!31439 Regex!6339) (t!199532 List!26132)) )
))
(declare-datatypes ((Context!3774 0))(
  ( (Context!3775 (exprs!2387 List!26132)) )
))
(declare-datatypes ((tuple2!25190 0))(
  ( (tuple2!25191 (_1!14967 Context!3774) (_2!14967 C!12824)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25192 0))(
  ( (tuple2!25193 (_1!14968 tuple2!25190) (_2!14968 (InoxSet Context!3774))) )
))
(declare-datatypes ((List!26133 0))(
  ( (Nil!26039) (Cons!26039 (h!31440 tuple2!25192) (t!199533 List!26133)) )
))
(declare-datatypes ((tuple3!3804 0))(
  ( (tuple3!3805 (_1!14969 Regex!6339) (_2!14969 Context!3774) (_3!2372 C!12824)) )
))
(declare-datatypes ((tuple2!25194 0))(
  ( (tuple2!25195 (_1!14970 tuple3!3804) (_2!14970 (InoxSet Context!3774))) )
))
(declare-datatypes ((List!26134 0))(
  ( (Nil!26040) (Cons!26040 (h!31441 tuple2!25194) (t!199534 List!26134)) )
))
(declare-datatypes ((array!10185 0))(
  ( (array!10186 (arr!4537 (Array (_ BitVec 32) (_ BitVec 64))) (size!20314 (_ BitVec 32))) )
))
(declare-datatypes ((array!10187 0))(
  ( (array!10188 (arr!4538 (Array (_ BitVec 32) List!26134)) (size!20315 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5942 0))(
  ( (LongMapFixedSize!5943 (defaultEntry!3336 Int) (mask!7494 (_ BitVec 32)) (extraKeys!3219 (_ BitVec 32)) (zeroValue!3229 List!26134) (minValue!3229 List!26134) (_size!5989 (_ BitVec 32)) (_keys!3268 array!10185) (_values!3251 array!10187) (_vacant!3032 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11701 0))(
  ( (Cell!11702 (v!29576 LongMapFixedSize!5942)) )
))
(declare-datatypes ((MutLongMap!2971 0))(
  ( (LongMap!2971 (underlying!6143 Cell!11701)) (MutLongMapExt!2970 (__x!17139 Int)) )
))
(declare-datatypes ((Cell!11703 0))(
  ( (Cell!11704 (v!29577 MutLongMap!2971)) )
))
(declare-datatypes ((Hashable!2881 0))(
  ( (HashableExt!2880 (__x!17140 Int)) )
))
(declare-datatypes ((MutableMap!2881 0))(
  ( (MutableMapExt!2880 (__x!17141 Int)) (HashMap!2881 (underlying!6144 Cell!11703) (hashF!4804 Hashable!2881) (_size!5990 (_ BitVec 32)) (defaultValue!3043 Int)) )
))
(declare-datatypes ((Hashable!2882 0))(
  ( (HashableExt!2881 (__x!17142 Int)) )
))
(declare-datatypes ((array!10189 0))(
  ( (array!10190 (arr!4539 (Array (_ BitVec 32) List!26133)) (size!20316 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5944 0))(
  ( (LongMapFixedSize!5945 (defaultEntry!3337 Int) (mask!7495 (_ BitVec 32)) (extraKeys!3220 (_ BitVec 32)) (zeroValue!3230 List!26133) (minValue!3230 List!26133) (_size!5991 (_ BitVec 32)) (_keys!3269 array!10185) (_values!3252 array!10189) (_vacant!3033 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11705 0))(
  ( (Cell!11706 (v!29578 LongMapFixedSize!5944)) )
))
(declare-datatypes ((MutLongMap!2972 0))(
  ( (LongMap!2972 (underlying!6145 Cell!11705)) (MutLongMapExt!2971 (__x!17143 Int)) )
))
(declare-datatypes ((Cell!11707 0))(
  ( (Cell!11708 (v!29579 MutLongMap!2972)) )
))
(declare-datatypes ((MutableMap!2882 0))(
  ( (MutableMapExt!2881 (__x!17144 Int)) (HashMap!2882 (underlying!6146 Cell!11707) (hashF!4805 Hashable!2882) (_size!5992 (_ BitVec 32)) (defaultValue!3044 Int)) )
))
(declare-datatypes ((CacheUp!1900 0))(
  ( (CacheUp!1901 (cache!3262 MutableMap!2882)) )
))
(declare-datatypes ((CacheDown!1882 0))(
  ( (CacheDown!1883 (cache!3263 MutableMap!2881)) )
))
(declare-datatypes ((tuple3!3806 0))(
  ( (tuple3!3807 (_1!14971 (InoxSet Context!3774)) (_2!14971 CacheUp!1900) (_3!2373 CacheDown!1882)) )
))
(declare-fun e!1418602 () tuple3!3806)

(declare-fun cacheUp!790 () CacheUp!1900)

(declare-fun cacheDown!803 () CacheDown!1882)

(assert (=> b!2221038 (= e!1418602 (tuple3!3807 ((as const (Array Context!3774 Bool)) false) cacheUp!790 cacheDown!803))))

(declare-fun b!2221039 () Bool)

(declare-fun e!1418598 () Bool)

(declare-fun e!1418592 () Bool)

(declare-fun lt!827781 () MutLongMap!2971)

(get-info :version)

(assert (=> b!2221039 (= e!1418598 (and e!1418592 ((_ is LongMap!2971) lt!827781)))))

(assert (=> b!2221039 (= lt!827781 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))

(declare-fun c!354641 () Bool)

(declare-fun context!72 () Context!3774)

(declare-fun lt!827778 () Context!3774)

(declare-fun bm!132514 () Bool)

(declare-datatypes ((tuple2!25196 0))(
  ( (tuple2!25197 (_1!14972 (InoxSet Context!3774)) (_2!14972 CacheDown!1882)) )
))
(declare-fun call!132519 () tuple2!25196)

(declare-fun a!1149 () C!12824)

(declare-fun derivationStepZipperDownMem!2 (Regex!6339 Context!3774 C!12824 CacheDown!1882) tuple2!25196)

(assert (=> bm!132514 (= call!132519 (derivationStepZipperDownMem!2 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149 cacheDown!803))))

(declare-fun e!1418604 () Bool)

(declare-fun e!1418587 () Bool)

(assert (=> b!2221040 (= e!1418604 (and e!1418587 tp!692143))))

(declare-fun e!1418600 () Bool)

(assert (=> b!2221041 (= e!1418600 (and e!1418598 tp!692139))))

(declare-fun b!2221042 () Bool)

(declare-fun e!1418590 () Bool)

(declare-fun nullable!1722 (Regex!6339) Bool)

(assert (=> b!2221042 (= e!1418590 (nullable!1722 (h!31439 (exprs!2387 context!72))))))

(declare-fun mapNonEmpty!14020 () Bool)

(declare-fun mapRes!14021 () Bool)

(declare-fun tp!692142 () Bool)

(declare-fun tp!692136 () Bool)

(assert (=> mapNonEmpty!14020 (= mapRes!14021 (and tp!692142 tp!692136))))

(declare-fun mapValue!14021 () List!26133)

(declare-fun mapRest!14020 () (Array (_ BitVec 32) List!26133))

(declare-fun mapKey!14020 () (_ BitVec 32))

(assert (=> mapNonEmpty!14020 (= (arr!4539 (_values!3252 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))) (store mapRest!14020 mapKey!14020 mapValue!14021))))

(declare-fun b!2221044 () Bool)

(declare-fun e!1418588 () Bool)

(declare-fun e!1418597 () tuple3!3806)

(declare-fun validCacheMapUp!266 (MutableMap!2882) Bool)

(assert (=> b!2221044 (= e!1418588 (not (validCacheMapUp!266 (cache!3262 (_2!14971 e!1418597)))))))

(assert (=> b!2221044 (= c!354641 e!1418590)))

(declare-fun res!953559 () Bool)

(assert (=> b!2221044 (=> (not res!953559) (not e!1418590))))

(assert (=> b!2221044 (= res!953559 ((_ is Cons!26038) (exprs!2387 context!72)))))

(declare-fun tp!692144 () Bool)

(declare-fun e!1418596 () Bool)

(declare-fun tp!692141 () Bool)

(declare-fun e!1418594 () Bool)

(declare-fun array_inv!3258 (array!10185) Bool)

(declare-fun array_inv!3259 (array!10189) Bool)

(assert (=> b!2221045 (= e!1418594 (and tp!692138 tp!692144 tp!692141 (array_inv!3258 (_keys!3269 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))) (array_inv!3259 (_values!3252 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))) e!1418596))))

(declare-fun b!2221046 () Bool)

(declare-fun e!1418589 () Bool)

(assert (=> b!2221046 (= e!1418592 e!1418589)))

(declare-fun b!2221047 () Bool)

(declare-fun e!1418603 () Bool)

(declare-fun e!1418601 () Bool)

(assert (=> b!2221047 (= e!1418603 e!1418601)))

(declare-fun e!1418591 () Bool)

(declare-fun tp!692135 () Bool)

(declare-fun tp!692137 () Bool)

(declare-fun e!1418585 () Bool)

(declare-fun array_inv!3260 (array!10187) Bool)

(assert (=> b!2221048 (= e!1418591 (and tp!692131 tp!692137 tp!692135 (array_inv!3258 (_keys!3268 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))) (array_inv!3260 (_values!3251 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))) e!1418585))))

(declare-fun mapIsEmpty!14020 () Bool)

(assert (=> mapIsEmpty!14020 mapRes!14021))

(declare-fun b!2221049 () Bool)

(declare-fun e!1418595 () Bool)

(declare-fun tp!692133 () Bool)

(assert (=> b!2221049 (= e!1418595 tp!692133)))

(declare-fun b!2221050 () Bool)

(assert (=> b!2221050 (= e!1418601 e!1418594)))

(declare-fun mapIsEmpty!14021 () Bool)

(declare-fun mapRes!14020 () Bool)

(assert (=> mapIsEmpty!14021 mapRes!14020))

(declare-fun b!2221051 () Bool)

(assert (=> b!2221051 (= e!1418589 e!1418591)))

(declare-fun b!2221052 () Bool)

(declare-fun tp!692140 () Bool)

(assert (=> b!2221052 (= e!1418596 (and tp!692140 mapRes!14021))))

(declare-fun condMapEmpty!14021 () Bool)

(declare-fun mapDefault!14021 () List!26133)

(assert (=> b!2221052 (= condMapEmpty!14021 (= (arr!4539 (_values!3252 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26133)) mapDefault!14021)))))

(declare-fun res!953560 () Bool)

(assert (=> start!216720 (=> (not res!953560) (not e!1418588))))

(declare-datatypes ((Option!5053 0))(
  ( (None!5052) (Some!5052 (v!29580 (InoxSet Context!3774))) )
))
(declare-fun get!7802 (CacheUp!1900 Context!3774 C!12824) Option!5053)

(assert (=> start!216720 (= res!953560 (not ((_ is Some!5052) (get!7802 cacheUp!790 context!72 a!1149))))))

(assert (=> start!216720 e!1418588))

(declare-fun e!1418599 () Bool)

(declare-fun inv!35357 (CacheUp!1900) Bool)

(assert (=> start!216720 (and (inv!35357 cacheUp!790) e!1418599)))

(declare-fun inv!35358 (Context!3774) Bool)

(assert (=> start!216720 (and (inv!35358 context!72) e!1418595)))

(declare-fun tp_is_empty!9907 () Bool)

(assert (=> start!216720 tp_is_empty!9907))

(declare-fun e!1418586 () Bool)

(declare-fun inv!35359 (CacheDown!1882) Bool)

(assert (=> start!216720 (and (inv!35359 cacheDown!803) e!1418586)))

(declare-fun b!2221043 () Bool)

(assert (=> b!2221043 (= e!1418599 e!1418604)))

(declare-fun b!2221053 () Bool)

(assert (=> b!2221053 (= e!1418597 e!1418602)))

(declare-fun c!354642 () Bool)

(assert (=> b!2221053 (= c!354642 ((_ is Cons!26038) (exprs!2387 context!72)))))

(declare-fun b!2221054 () Bool)

(declare-fun lt!827780 () tuple2!25196)

(declare-fun lt!827779 () tuple3!3806)

(assert (=> b!2221054 (= e!1418597 (tuple3!3807 ((_ map or) (_1!14972 lt!827780) (_1!14971 lt!827779)) (_2!14971 lt!827779) (_3!2373 lt!827779)))))

(assert (=> b!2221054 (= lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72))))))

(assert (=> b!2221054 (= lt!827780 call!132519)))

(declare-fun derivationStepZipperUpMem!1 (Context!3774 C!12824 CacheUp!1900 CacheDown!1882) tuple3!3806)

(assert (=> b!2221054 (= lt!827779 (derivationStepZipperUpMem!1 lt!827778 a!1149 cacheUp!790 (_2!14972 lt!827780)))))

(declare-fun b!2221055 () Bool)

(declare-fun tp!692134 () Bool)

(assert (=> b!2221055 (= e!1418585 (and tp!692134 mapRes!14020))))

(declare-fun condMapEmpty!14020 () Bool)

(declare-fun mapDefault!14020 () List!26134)

(assert (=> b!2221055 (= condMapEmpty!14020 (= (arr!4538 (_values!3251 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))) ((as const (Array (_ BitVec 32) List!26134)) mapDefault!14020)))))

(declare-fun b!2221056 () Bool)

(declare-fun lt!827783 () tuple2!25196)

(assert (=> b!2221056 (= lt!827783 call!132519)))

(assert (=> b!2221056 (= e!1418602 (tuple3!3807 (_1!14972 lt!827783) cacheUp!790 (_2!14972 lt!827783)))))

(declare-fun b!2221057 () Bool)

(assert (=> b!2221057 (= e!1418586 e!1418600)))

(declare-fun b!2221058 () Bool)

(declare-fun lt!827782 () MutLongMap!2972)

(assert (=> b!2221058 (= e!1418587 (and e!1418603 ((_ is LongMap!2972) lt!827782)))))

(assert (=> b!2221058 (= lt!827782 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))

(declare-fun mapNonEmpty!14021 () Bool)

(declare-fun tp!692132 () Bool)

(declare-fun tp!692145 () Bool)

(assert (=> mapNonEmpty!14021 (= mapRes!14020 (and tp!692132 tp!692145))))

(declare-fun mapKey!14021 () (_ BitVec 32))

(declare-fun mapRest!14021 () (Array (_ BitVec 32) List!26134))

(declare-fun mapValue!14020 () List!26134)

(assert (=> mapNonEmpty!14021 (= (arr!4538 (_values!3251 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))) (store mapRest!14021 mapKey!14021 mapValue!14020))))

(assert (= (and start!216720 res!953560) b!2221044))

(assert (= (and b!2221044 res!953559) b!2221042))

(assert (= (and b!2221044 c!354641) b!2221054))

(assert (= (and b!2221044 (not c!354641)) b!2221053))

(assert (= (and b!2221053 c!354642) b!2221056))

(assert (= (and b!2221053 (not c!354642)) b!2221038))

(assert (= (or b!2221054 b!2221056) bm!132514))

(assert (= (and b!2221052 condMapEmpty!14021) mapIsEmpty!14020))

(assert (= (and b!2221052 (not condMapEmpty!14021)) mapNonEmpty!14020))

(assert (= b!2221045 b!2221052))

(assert (= b!2221050 b!2221045))

(assert (= b!2221047 b!2221050))

(assert (= (and b!2221058 ((_ is LongMap!2972) (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))) b!2221047))

(assert (= b!2221040 b!2221058))

(assert (= (and b!2221043 ((_ is HashMap!2882) (cache!3262 cacheUp!790))) b!2221040))

(assert (= start!216720 b!2221043))

(assert (= start!216720 b!2221049))

(assert (= (and b!2221055 condMapEmpty!14020) mapIsEmpty!14021))

(assert (= (and b!2221055 (not condMapEmpty!14020)) mapNonEmpty!14021))

(assert (= b!2221048 b!2221055))

(assert (= b!2221051 b!2221048))

(assert (= b!2221046 b!2221051))

(assert (= (and b!2221039 ((_ is LongMap!2971) (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))) b!2221046))

(assert (= b!2221041 b!2221039))

(assert (= (and b!2221057 ((_ is HashMap!2881) (cache!3263 cacheDown!803))) b!2221041))

(assert (= start!216720 b!2221057))

(declare-fun m!2661614 () Bool)

(assert (=> b!2221054 m!2661614))

(declare-fun m!2661616 () Bool)

(assert (=> b!2221048 m!2661616))

(declare-fun m!2661618 () Bool)

(assert (=> b!2221048 m!2661618))

(declare-fun m!2661620 () Bool)

(assert (=> start!216720 m!2661620))

(declare-fun m!2661622 () Bool)

(assert (=> start!216720 m!2661622))

(declare-fun m!2661624 () Bool)

(assert (=> start!216720 m!2661624))

(declare-fun m!2661626 () Bool)

(assert (=> start!216720 m!2661626))

(declare-fun m!2661628 () Bool)

(assert (=> bm!132514 m!2661628))

(declare-fun m!2661630 () Bool)

(assert (=> b!2221044 m!2661630))

(declare-fun m!2661632 () Bool)

(assert (=> mapNonEmpty!14020 m!2661632))

(declare-fun m!2661634 () Bool)

(assert (=> b!2221042 m!2661634))

(declare-fun m!2661636 () Bool)

(assert (=> b!2221045 m!2661636))

(declare-fun m!2661638 () Bool)

(assert (=> b!2221045 m!2661638))

(declare-fun m!2661640 () Bool)

(assert (=> mapNonEmpty!14021 m!2661640))

(check-sat (not b_next!65045) (not mapNonEmpty!14020) tp_is_empty!9907 (not b_next!65051) (not b!2221049) (not b!2221045) (not bm!132514) b_and!174313 b_and!174311 (not mapNonEmpty!14021) b_and!174309 (not b_next!65047) (not b!2221054) b_and!174315 (not b_next!65049) (not b!2221055) (not b!2221048) (not b!2221052) (not start!216720) (not b!2221042) (not b!2221044))
(check-sat (not b_next!65045) (not b_next!65051) b_and!174313 b_and!174311 b_and!174309 (not b_next!65047) b_and!174315 (not b_next!65049))
(get-model)

(declare-fun d!663861 () Bool)

(declare-fun nullableFct!398 (Regex!6339) Bool)

(assert (=> d!663861 (= (nullable!1722 (h!31439 (exprs!2387 context!72))) (nullableFct!398 (h!31439 (exprs!2387 context!72))))))

(declare-fun bs!452419 () Bool)

(assert (= bs!452419 d!663861))

(declare-fun m!2661642 () Bool)

(assert (=> bs!452419 m!2661642))

(assert (=> b!2221042 d!663861))

(declare-fun b!2221073 () Bool)

(declare-fun lt!827797 () tuple2!25196)

(declare-fun lt!827796 () tuple3!3806)

(assert (=> b!2221073 (= lt!827796 (derivationStepZipperUpMem!1 (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149 cacheUp!790 (_2!14972 lt!827797)))))

(declare-fun call!132522 () tuple2!25196)

(assert (=> b!2221073 (= lt!827797 call!132522)))

(declare-fun e!1418616 () tuple3!3806)

(assert (=> b!2221073 (= e!1418616 (tuple3!3807 ((_ map or) (_1!14972 lt!827797) (_1!14971 lt!827796)) (_2!14971 lt!827796) (_3!2373 lt!827796)))))

(declare-fun b!2221074 () Bool)

(declare-fun e!1418615 () tuple3!3806)

(declare-fun lt!827799 () tuple2!25196)

(assert (=> b!2221074 (= e!1418615 (tuple3!3807 (_1!14972 lt!827799) cacheUp!790 (_2!14972 lt!827799)))))

(assert (=> b!2221074 (= lt!827799 call!132522)))

(declare-fun d!663863 () Bool)

(declare-fun lt!827798 () tuple3!3806)

(declare-fun derivationStepZipperUp!16 (Context!3774 C!12824) (InoxSet Context!3774))

(assert (=> d!663863 (= (_1!14971 lt!827798) (derivationStepZipperUp!16 lt!827778 a!1149))))

(declare-fun e!1418613 () tuple3!3806)

(assert (=> d!663863 (= lt!827798 e!1418613)))

(declare-fun c!354652 () Bool)

(declare-fun lt!827801 () Option!5053)

(assert (=> d!663863 (= c!354652 ((_ is Some!5052) lt!827801))))

(assert (=> d!663863 (= lt!827801 (get!7802 cacheUp!790 lt!827778 a!1149))))

(assert (=> d!663863 (= (derivationStepZipperUpMem!1 lt!827778 a!1149 cacheUp!790 (_2!14972 lt!827780)) lt!827798)))

(declare-fun b!2221075 () Bool)

(declare-fun e!1418614 () Bool)

(assert (=> b!2221075 (= e!1418614 (nullable!1722 (h!31439 (exprs!2387 lt!827778))))))

(declare-fun b!2221076 () Bool)

(assert (=> b!2221076 (= e!1418613 (tuple3!3807 (v!29580 lt!827801) cacheUp!790 (_2!14972 lt!827780)))))

(declare-fun b!2221077 () Bool)

(assert (=> b!2221077 (= e!1418615 (tuple3!3807 ((as const (Array Context!3774 Bool)) false) cacheUp!790 (_2!14972 lt!827780)))))

(declare-fun b!2221078 () Bool)

(declare-fun c!354651 () Bool)

(assert (=> b!2221078 (= c!354651 ((_ is Cons!26038) (exprs!2387 lt!827778)))))

(assert (=> b!2221078 (= e!1418616 e!1418615)))

(declare-fun lt!827800 () tuple3!3806)

(declare-fun b!2221079 () Bool)

(declare-datatypes ((Unit!38990 0))(
  ( (Unit!38991) )
))
(declare-datatypes ((tuple2!25198 0))(
  ( (tuple2!25199 (_1!14973 Unit!38990) (_2!14973 CacheUp!1900)) )
))
(declare-fun update!110 (CacheUp!1900 Context!3774 C!12824 (InoxSet Context!3774)) tuple2!25198)

(assert (=> b!2221079 (= e!1418613 (tuple3!3807 (_1!14971 lt!827800) (_2!14973 (update!110 (_2!14971 lt!827800) lt!827778 a!1149 (_1!14971 lt!827800))) (_3!2373 lt!827800)))))

(declare-fun res!953563 () Bool)

(assert (=> b!2221079 (= res!953563 ((_ is Cons!26038) (exprs!2387 lt!827778)))))

(assert (=> b!2221079 (=> (not res!953563) (not e!1418614))))

(declare-fun c!354650 () Bool)

(assert (=> b!2221079 (= c!354650 e!1418614)))

(assert (=> b!2221079 (= lt!827800 e!1418616)))

(declare-fun bm!132517 () Bool)

(assert (=> bm!132517 (= call!132522 (derivationStepZipperDownMem!2 (h!31439 (exprs!2387 lt!827778)) (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149 (_2!14972 lt!827780)))))

(assert (= (and d!663863 c!354652) b!2221076))

(assert (= (and d!663863 (not c!354652)) b!2221079))

(assert (= (and b!2221079 res!953563) b!2221075))

(assert (= (and b!2221079 c!354650) b!2221073))

(assert (= (and b!2221079 (not c!354650)) b!2221078))

(assert (= (and b!2221078 c!354651) b!2221074))

(assert (= (and b!2221078 (not c!354651)) b!2221077))

(assert (= (or b!2221073 b!2221074) bm!132517))

(declare-fun m!2661644 () Bool)

(assert (=> d!663863 m!2661644))

(declare-fun m!2661646 () Bool)

(assert (=> d!663863 m!2661646))

(declare-fun m!2661648 () Bool)

(assert (=> b!2221079 m!2661648))

(declare-fun m!2661650 () Bool)

(assert (=> b!2221075 m!2661650))

(declare-fun m!2661652 () Bool)

(assert (=> b!2221073 m!2661652))

(declare-fun m!2661654 () Bool)

(assert (=> bm!132517 m!2661654))

(assert (=> b!2221054 d!663863))

(declare-fun d!663865 () Bool)

(assert (=> d!663865 (= (array_inv!3258 (_keys!3269 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))) (bvsge (size!20314 (_keys!3269 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2221045 d!663865))

(declare-fun d!663867 () Bool)

(assert (=> d!663867 (= (array_inv!3259 (_values!3252 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))) (bvsge (size!20316 (_values!3252 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2221045 d!663867))

(declare-fun d!663869 () Bool)

(declare-fun e!1418621 () Bool)

(assert (=> d!663869 e!1418621))

(declare-fun res!953566 () Bool)

(assert (=> d!663869 (=> res!953566 e!1418621)))

(declare-fun lt!827807 () Option!5053)

(declare-fun isEmpty!14870 (Option!5053) Bool)

(assert (=> d!663869 (= res!953566 (isEmpty!14870 lt!827807))))

(declare-fun e!1418622 () Option!5053)

(assert (=> d!663869 (= lt!827807 e!1418622)))

(declare-fun c!354655 () Bool)

(declare-fun contains!4328 (MutableMap!2882 tuple2!25190) Bool)

(assert (=> d!663869 (= c!354655 (contains!4328 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149)))))

(assert (=> d!663869 (validCacheMapUp!266 (cache!3262 cacheUp!790))))

(assert (=> d!663869 (= (get!7802 cacheUp!790 context!72 a!1149) lt!827807)))

(declare-fun b!2221086 () Bool)

(declare-fun apply!6442 (MutableMap!2882 tuple2!25190) (InoxSet Context!3774))

(assert (=> b!2221086 (= e!1418622 (Some!5052 (apply!6442 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149))))))

(declare-fun lt!827806 () Unit!38990)

(declare-fun lemmaIfInCacheThenValid!19 (CacheUp!1900 Context!3774 C!12824) Unit!38990)

(assert (=> b!2221086 (= lt!827806 (lemmaIfInCacheThenValid!19 cacheUp!790 context!72 a!1149))))

(declare-fun b!2221087 () Bool)

(assert (=> b!2221087 (= e!1418622 None!5052)))

(declare-fun b!2221088 () Bool)

(declare-fun get!7803 (Option!5053) (InoxSet Context!3774))

(assert (=> b!2221088 (= e!1418621 (= (get!7803 lt!827807) (derivationStepZipperUp!16 context!72 a!1149)))))

(assert (= (and d!663869 c!354655) b!2221086))

(assert (= (and d!663869 (not c!354655)) b!2221087))

(assert (= (and d!663869 (not res!953566)) b!2221088))

(declare-fun m!2661656 () Bool)

(assert (=> d!663869 m!2661656))

(declare-fun m!2661658 () Bool)

(assert (=> d!663869 m!2661658))

(declare-fun m!2661660 () Bool)

(assert (=> d!663869 m!2661660))

(declare-fun m!2661662 () Bool)

(assert (=> b!2221086 m!2661662))

(declare-fun m!2661664 () Bool)

(assert (=> b!2221086 m!2661664))

(declare-fun m!2661666 () Bool)

(assert (=> b!2221088 m!2661666))

(declare-fun m!2661668 () Bool)

(assert (=> b!2221088 m!2661668))

(assert (=> start!216720 d!663869))

(declare-fun d!663871 () Bool)

(declare-fun res!953569 () Bool)

(declare-fun e!1418625 () Bool)

(assert (=> d!663871 (=> (not res!953569) (not e!1418625))))

(assert (=> d!663871 (= res!953569 ((_ is HashMap!2882) (cache!3262 cacheUp!790)))))

(assert (=> d!663871 (= (inv!35357 cacheUp!790) e!1418625)))

(declare-fun b!2221091 () Bool)

(assert (=> b!2221091 (= e!1418625 (validCacheMapUp!266 (cache!3262 cacheUp!790)))))

(assert (= (and d!663871 res!953569) b!2221091))

(assert (=> b!2221091 m!2661660))

(assert (=> start!216720 d!663871))

(declare-fun d!663873 () Bool)

(declare-fun lambda!83836 () Int)

(declare-fun forall!5298 (List!26132 Int) Bool)

(assert (=> d!663873 (= (inv!35358 context!72) (forall!5298 (exprs!2387 context!72) lambda!83836))))

(declare-fun bs!452420 () Bool)

(assert (= bs!452420 d!663873))

(declare-fun m!2661670 () Bool)

(assert (=> bs!452420 m!2661670))

(assert (=> start!216720 d!663873))

(declare-fun d!663875 () Bool)

(declare-fun res!953572 () Bool)

(declare-fun e!1418628 () Bool)

(assert (=> d!663875 (=> (not res!953572) (not e!1418628))))

(assert (=> d!663875 (= res!953572 ((_ is HashMap!2881) (cache!3263 cacheDown!803)))))

(assert (=> d!663875 (= (inv!35359 cacheDown!803) e!1418628)))

(declare-fun b!2221094 () Bool)

(declare-fun validCacheMapDown!259 (MutableMap!2881) Bool)

(assert (=> b!2221094 (= e!1418628 (validCacheMapDown!259 (cache!3263 cacheDown!803)))))

(assert (= (and d!663875 res!953572) b!2221094))

(declare-fun m!2661672 () Bool)

(assert (=> b!2221094 m!2661672))

(assert (=> start!216720 d!663875))

(declare-fun d!663877 () Bool)

(declare-fun res!953577 () Bool)

(declare-fun e!1418631 () Bool)

(assert (=> d!663877 (=> (not res!953577) (not e!1418631))))

(declare-fun valid!2293 (MutableMap!2882) Bool)

(assert (=> d!663877 (= res!953577 (valid!2293 (cache!3262 (_2!14971 e!1418597))))))

(assert (=> d!663877 (= (validCacheMapUp!266 (cache!3262 (_2!14971 e!1418597))) e!1418631)))

(declare-fun b!2221099 () Bool)

(declare-fun res!953578 () Bool)

(assert (=> b!2221099 (=> (not res!953578) (not e!1418631))))

(declare-fun invariantList!342 (List!26133) Bool)

(declare-datatypes ((ListMap!747 0))(
  ( (ListMap!748 (toList!1290 List!26133)) )
))
(declare-fun map!5281 (MutableMap!2882) ListMap!747)

(assert (=> b!2221099 (= res!953578 (invariantList!342 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597))))))))

(declare-fun b!2221100 () Bool)

(declare-fun lambda!83839 () Int)

(declare-fun forall!5299 (List!26133 Int) Bool)

(assert (=> b!2221100 (= e!1418631 (forall!5299 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597)))) lambda!83839))))

(assert (= (and d!663877 res!953577) b!2221099))

(assert (= (and b!2221099 res!953578) b!2221100))

(declare-fun m!2661675 () Bool)

(assert (=> d!663877 m!2661675))

(declare-fun m!2661677 () Bool)

(assert (=> b!2221099 m!2661677))

(declare-fun m!2661679 () Bool)

(assert (=> b!2221099 m!2661679))

(assert (=> b!2221100 m!2661677))

(declare-fun m!2661681 () Bool)

(assert (=> b!2221100 m!2661681))

(assert (=> b!2221044 d!663877))

(declare-fun b!2221127 () Bool)

(declare-fun e!1418648 () tuple2!25196)

(assert (=> b!2221127 (= e!1418648 (tuple2!25197 (store ((as const (Array Context!3774 Bool)) false) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) true) cacheDown!803))))

(declare-fun b!2221128 () Bool)

(declare-fun e!1418652 () tuple2!25196)

(declare-fun e!1418649 () tuple2!25196)

(assert (=> b!2221128 (= e!1418652 e!1418649)))

(declare-fun c!354668 () Bool)

(assert (=> b!2221128 (= c!354668 ((_ is Star!6339) (h!31439 (exprs!2387 context!72))))))

(declare-fun b!2221129 () Bool)

(declare-fun e!1418650 () tuple2!25196)

(declare-fun e!1418647 () tuple2!25196)

(assert (=> b!2221129 (= e!1418650 e!1418647)))

(declare-fun res!953581 () Bool)

(assert (=> b!2221129 (= res!953581 ((_ is Concat!10677) (h!31439 (exprs!2387 context!72))))))

(declare-fun e!1418646 () Bool)

(assert (=> b!2221129 (=> (not res!953581) (not e!1418646))))

(declare-fun c!354673 () Bool)

(assert (=> b!2221129 (= c!354673 e!1418646)))

(declare-fun b!2221130 () Bool)

(assert (=> b!2221130 (= e!1418649 (tuple2!25197 ((as const (Array Context!3774 Bool)) false) cacheDown!803))))

(declare-fun call!132540 () tuple2!25196)

(declare-fun bm!132530 () Bool)

(declare-fun c!354669 () Bool)

(declare-fun call!132535 () List!26132)

(assert (=> bm!132530 (= call!132540 (derivationStepZipperDownMem!2 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))) (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535)) a!1149 cacheDown!803))))

(declare-fun c!354671 () Bool)

(declare-fun bm!132531 () Bool)

(declare-fun $colon$colon!499 (List!26132 Regex!6339) List!26132)

(assert (=> bm!132531 (= call!132535 ($colon$colon!499 (exprs!2387 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72))))) (ite (or c!354673 c!354671) (regTwo!13190 (h!31439 (exprs!2387 context!72))) (h!31439 (exprs!2387 context!72)))))))

(declare-fun lt!827832 () tuple2!25196)

(declare-fun d!663879 () Bool)

(declare-fun derivationStepZipperDown!17 (Regex!6339 Context!3774 C!12824) (InoxSet Context!3774))

(assert (=> d!663879 (= (_1!14972 lt!827832) (derivationStepZipperDown!17 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149))))

(declare-fun e!1418651 () tuple2!25196)

(assert (=> d!663879 (= lt!827832 e!1418651)))

(declare-fun c!354672 () Bool)

(declare-fun lt!827829 () Option!5053)

(assert (=> d!663879 (= c!354672 ((_ is Some!5052) lt!827829))))

(declare-fun get!7804 (CacheDown!1882 Regex!6339 Context!3774 C!12824) Option!5053)

(assert (=> d!663879 (= lt!827829 (get!7804 cacheDown!803 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149))))

(declare-fun validRegex!2352 (Regex!6339) Bool)

(assert (=> d!663879 (validRegex!2352 (h!31439 (exprs!2387 context!72)))))

(assert (=> d!663879 (= (derivationStepZipperDownMem!2 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149 cacheDown!803) lt!827832)))

(declare-fun b!2221131 () Bool)

(assert (=> b!2221131 (= c!354669 ((_ is Union!6339) (h!31439 (exprs!2387 context!72))))))

(assert (=> b!2221131 (= e!1418648 e!1418650)))

(declare-fun b!2221132 () Bool)

(declare-fun lt!827828 () tuple2!25196)

(declare-fun call!132536 () tuple2!25196)

(assert (=> b!2221132 (= lt!827828 call!132536)))

(declare-fun lt!827826 () tuple2!25196)

(assert (=> b!2221132 (= lt!827826 call!132540)))

(assert (=> b!2221132 (= e!1418647 (tuple2!25197 ((_ map or) (_1!14972 lt!827826) (_1!14972 lt!827828)) (_2!14972 lt!827828)))))

(declare-fun b!2221133 () Bool)

(assert (=> b!2221133 (= e!1418651 (tuple2!25197 (v!29580 lt!827829) cacheDown!803))))

(declare-fun bm!132532 () Bool)

(declare-fun call!132539 () tuple2!25196)

(assert (=> bm!132532 (= call!132536 call!132539)))

(declare-fun b!2221134 () Bool)

(assert (=> b!2221134 (= c!354671 ((_ is Concat!10677) (h!31439 (exprs!2387 context!72))))))

(assert (=> b!2221134 (= e!1418647 e!1418652)))

(declare-fun lt!827833 () tuple2!25196)

(declare-fun bm!132533 () Bool)

(declare-fun call!132538 () List!26132)

(assert (=> bm!132533 (= call!132539 (derivationStepZipperDownMem!2 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))) (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538)) a!1149 (ite c!354669 (_2!14972 lt!827833) (ite c!354673 (_2!14972 lt!827826) cacheDown!803))))))

(declare-fun bm!132534 () Bool)

(declare-fun call!132537 () tuple2!25196)

(assert (=> bm!132534 (= call!132537 call!132536)))

(declare-fun b!2221135 () Bool)

(declare-fun lt!827827 () tuple2!25196)

(declare-datatypes ((tuple2!25200 0))(
  ( (tuple2!25201 (_1!14974 Unit!38990) (_2!14974 CacheDown!1882)) )
))
(declare-fun update!111 (CacheDown!1882 Regex!6339 Context!3774 C!12824 (InoxSet Context!3774)) tuple2!25200)

(assert (=> b!2221135 (= e!1418651 (tuple2!25197 (_1!14972 lt!827827) (_2!14974 (update!111 (_2!14972 lt!827827) (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149 (_1!14972 lt!827827)))))))

(declare-fun c!354670 () Bool)

(assert (=> b!2221135 (= c!354670 (and ((_ is ElementMatch!6339) (h!31439 (exprs!2387 context!72))) (= (c!354643 (h!31439 (exprs!2387 context!72))) a!1149)))))

(assert (=> b!2221135 (= lt!827827 e!1418648)))

(declare-fun b!2221136 () Bool)

(declare-fun lt!827834 () tuple2!25196)

(assert (=> b!2221136 (= e!1418650 (tuple2!25197 ((_ map or) (_1!14972 lt!827833) (_1!14972 lt!827834)) (_2!14972 lt!827834)))))

(assert (=> b!2221136 (= lt!827833 call!132540)))

(assert (=> b!2221136 (= lt!827834 call!132539)))

(declare-fun b!2221137 () Bool)

(assert (=> b!2221137 (= e!1418646 (nullable!1722 (regOne!13190 (h!31439 (exprs!2387 context!72)))))))

(declare-fun bm!132535 () Bool)

(assert (=> bm!132535 (= call!132538 call!132535)))

(declare-fun b!2221138 () Bool)

(declare-fun lt!827831 () tuple2!25196)

(assert (=> b!2221138 (= e!1418652 (tuple2!25197 (_1!14972 lt!827831) (_2!14972 lt!827831)))))

(assert (=> b!2221138 (= lt!827831 call!132537)))

(declare-fun b!2221139 () Bool)

(declare-fun lt!827830 () tuple2!25196)

(assert (=> b!2221139 (= lt!827830 call!132537)))

(assert (=> b!2221139 (= e!1418649 (tuple2!25197 (_1!14972 lt!827830) (_2!14972 lt!827830)))))

(assert (= (and d!663879 c!354672) b!2221133))

(assert (= (and d!663879 (not c!354672)) b!2221135))

(assert (= (and b!2221135 c!354670) b!2221127))

(assert (= (and b!2221135 (not c!354670)) b!2221131))

(assert (= (and b!2221131 c!354669) b!2221136))

(assert (= (and b!2221131 (not c!354669)) b!2221129))

(assert (= (and b!2221129 res!953581) b!2221137))

(assert (= (and b!2221129 c!354673) b!2221132))

(assert (= (and b!2221129 (not c!354673)) b!2221134))

(assert (= (and b!2221134 c!354671) b!2221138))

(assert (= (and b!2221134 (not c!354671)) b!2221128))

(assert (= (and b!2221128 c!354668) b!2221139))

(assert (= (and b!2221128 (not c!354668)) b!2221130))

(assert (= (or b!2221138 b!2221139) bm!132535))

(assert (= (or b!2221138 b!2221139) bm!132534))

(assert (= (or b!2221132 bm!132535) bm!132531))

(assert (= (or b!2221132 bm!132534) bm!132532))

(assert (= (or b!2221136 bm!132532) bm!132533))

(assert (= (or b!2221136 b!2221132) bm!132530))

(declare-fun m!2661683 () Bool)

(assert (=> b!2221137 m!2661683))

(declare-fun m!2661685 () Bool)

(assert (=> d!663879 m!2661685))

(declare-fun m!2661687 () Bool)

(assert (=> d!663879 m!2661687))

(declare-fun m!2661689 () Bool)

(assert (=> d!663879 m!2661689))

(declare-fun m!2661691 () Bool)

(assert (=> bm!132531 m!2661691))

(declare-fun m!2661693 () Bool)

(assert (=> b!2221135 m!2661693))

(declare-fun m!2661695 () Bool)

(assert (=> bm!132533 m!2661695))

(declare-fun m!2661697 () Bool)

(assert (=> bm!132530 m!2661697))

(declare-fun m!2661699 () Bool)

(assert (=> b!2221127 m!2661699))

(assert (=> bm!132514 d!663879))

(declare-fun d!663881 () Bool)

(assert (=> d!663881 (= (array_inv!3258 (_keys!3268 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))) (bvsge (size!20314 (_keys!3268 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2221048 d!663881))

(declare-fun d!663883 () Bool)

(assert (=> d!663883 (= (array_inv!3260 (_values!3251 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))) (bvsge (size!20315 (_values!3251 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2221048 d!663883))

(declare-fun b!2221148 () Bool)

(declare-fun tp!692160 () Bool)

(declare-fun e!1418660 () Bool)

(declare-fun setRes!19427 () Bool)

(declare-fun e!1418661 () Bool)

(declare-fun tp!692159 () Bool)

(assert (=> b!2221148 (= e!1418661 (and tp!692159 (inv!35358 (_2!14969 (_1!14970 (h!31441 mapDefault!14020)))) e!1418660 tp_is_empty!9907 setRes!19427 tp!692160))))

(declare-fun condSetEmpty!19427 () Bool)

(assert (=> b!2221148 (= condSetEmpty!19427 (= (_2!14970 (h!31441 mapDefault!14020)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221149 () Bool)

(declare-fun tp!692157 () Bool)

(assert (=> b!2221149 (= e!1418660 tp!692157)))

(declare-fun b!2221150 () Bool)

(declare-fun e!1418659 () Bool)

(declare-fun tp!692156 () Bool)

(assert (=> b!2221150 (= e!1418659 tp!692156)))

(declare-fun setIsEmpty!19427 () Bool)

(assert (=> setIsEmpty!19427 setRes!19427))

(assert (=> b!2221055 (= tp!692134 e!1418661)))

(declare-fun setElem!19427 () Context!3774)

(declare-fun tp!692158 () Bool)

(declare-fun setNonEmpty!19427 () Bool)

(assert (=> setNonEmpty!19427 (= setRes!19427 (and tp!692158 (inv!35358 setElem!19427) e!1418659))))

(declare-fun setRest!19427 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19427 (= (_2!14970 (h!31441 mapDefault!14020)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19427 true) setRest!19427))))

(assert (= b!2221148 b!2221149))

(assert (= (and b!2221148 condSetEmpty!19427) setIsEmpty!19427))

(assert (= (and b!2221148 (not condSetEmpty!19427)) setNonEmpty!19427))

(assert (= setNonEmpty!19427 b!2221150))

(assert (= (and b!2221055 ((_ is Cons!26040) mapDefault!14020)) b!2221148))

(declare-fun m!2661701 () Bool)

(assert (=> b!2221148 m!2661701))

(declare-fun m!2661703 () Bool)

(assert (=> setNonEmpty!19427 m!2661703))

(declare-fun e!1418669 () Bool)

(assert (=> b!2221045 (= tp!692144 e!1418669)))

(declare-fun setIsEmpty!19430 () Bool)

(declare-fun setRes!19430 () Bool)

(assert (=> setIsEmpty!19430 setRes!19430))

(declare-fun e!1418668 () Bool)

(declare-fun b!2221159 () Bool)

(declare-fun tp!692169 () Bool)

(assert (=> b!2221159 (= e!1418669 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))))) e!1418668 tp_is_empty!9907 setRes!19430 tp!692169))))

(declare-fun condSetEmpty!19430 () Bool)

(assert (=> b!2221159 (= condSetEmpty!19430 (= (_2!14968 (h!31440 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221160 () Bool)

(declare-fun tp!692171 () Bool)

(assert (=> b!2221160 (= e!1418668 tp!692171)))

(declare-fun setNonEmpty!19430 () Bool)

(declare-fun tp!692172 () Bool)

(declare-fun setElem!19430 () Context!3774)

(declare-fun e!1418670 () Bool)

(assert (=> setNonEmpty!19430 (= setRes!19430 (and tp!692172 (inv!35358 setElem!19430) e!1418670))))

(declare-fun setRest!19430 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19430 (= (_2!14968 (h!31440 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19430 true) setRest!19430))))

(declare-fun b!2221161 () Bool)

(declare-fun tp!692170 () Bool)

(assert (=> b!2221161 (= e!1418670 tp!692170)))

(assert (= b!2221159 b!2221160))

(assert (= (and b!2221159 condSetEmpty!19430) setIsEmpty!19430))

(assert (= (and b!2221159 (not condSetEmpty!19430)) setNonEmpty!19430))

(assert (= setNonEmpty!19430 b!2221161))

(assert (= (and b!2221045 ((_ is Cons!26039) (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))) b!2221159))

(declare-fun m!2661705 () Bool)

(assert (=> b!2221159 m!2661705))

(declare-fun m!2661707 () Bool)

(assert (=> setNonEmpty!19430 m!2661707))

(declare-fun e!1418672 () Bool)

(assert (=> b!2221045 (= tp!692141 e!1418672)))

(declare-fun setIsEmpty!19431 () Bool)

(declare-fun setRes!19431 () Bool)

(assert (=> setIsEmpty!19431 setRes!19431))

(declare-fun tp!692173 () Bool)

(declare-fun b!2221162 () Bool)

(declare-fun e!1418671 () Bool)

(assert (=> b!2221162 (= e!1418672 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))))) e!1418671 tp_is_empty!9907 setRes!19431 tp!692173))))

(declare-fun condSetEmpty!19431 () Bool)

(assert (=> b!2221162 (= condSetEmpty!19431 (= (_2!14968 (h!31440 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221163 () Bool)

(declare-fun tp!692175 () Bool)

(assert (=> b!2221163 (= e!1418671 tp!692175)))

(declare-fun setNonEmpty!19431 () Bool)

(declare-fun e!1418673 () Bool)

(declare-fun setElem!19431 () Context!3774)

(declare-fun tp!692176 () Bool)

(assert (=> setNonEmpty!19431 (= setRes!19431 (and tp!692176 (inv!35358 setElem!19431) e!1418673))))

(declare-fun setRest!19431 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19431 (= (_2!14968 (h!31440 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19431 true) setRest!19431))))

(declare-fun b!2221164 () Bool)

(declare-fun tp!692174 () Bool)

(assert (=> b!2221164 (= e!1418673 tp!692174)))

(assert (= b!2221162 b!2221163))

(assert (= (and b!2221162 condSetEmpty!19431) setIsEmpty!19431))

(assert (= (and b!2221162 (not condSetEmpty!19431)) setNonEmpty!19431))

(assert (= setNonEmpty!19431 b!2221164))

(assert (= (and b!2221045 ((_ is Cons!26039) (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))) b!2221162))

(declare-fun m!2661709 () Bool)

(assert (=> b!2221162 m!2661709))

(declare-fun m!2661711 () Bool)

(assert (=> setNonEmpty!19431 m!2661711))

(declare-fun mapNonEmpty!14024 () Bool)

(declare-fun mapRes!14024 () Bool)

(declare-fun tp!692203 () Bool)

(declare-fun e!1418689 () Bool)

(assert (=> mapNonEmpty!14024 (= mapRes!14024 (and tp!692203 e!1418689))))

(declare-fun mapRest!14024 () (Array (_ BitVec 32) List!26134))

(declare-fun mapKey!14024 () (_ BitVec 32))

(declare-fun mapValue!14024 () List!26134)

(assert (=> mapNonEmpty!14024 (= mapRest!14021 (store mapRest!14024 mapKey!14024 mapValue!14024))))

(declare-fun setRes!19436 () Bool)

(declare-fun setElem!19436 () Context!3774)

(declare-fun setNonEmpty!19436 () Bool)

(declare-fun tp!692209 () Bool)

(declare-fun e!1418690 () Bool)

(assert (=> setNonEmpty!19436 (= setRes!19436 (and tp!692209 (inv!35358 setElem!19436) e!1418690))))

(declare-fun mapDefault!14024 () List!26134)

(declare-fun setRest!19437 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19436 (= (_2!14970 (h!31441 mapDefault!14024)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19436 true) setRest!19437))))

(declare-fun b!2221179 () Bool)

(declare-fun e!1418686 () Bool)

(declare-fun tp!692200 () Bool)

(assert (=> b!2221179 (= e!1418686 tp!692200)))

(declare-fun setIsEmpty!19436 () Bool)

(declare-fun setRes!19437 () Bool)

(assert (=> setIsEmpty!19436 setRes!19437))

(declare-fun b!2221180 () Bool)

(declare-fun tp!692208 () Bool)

(declare-fun e!1418687 () Bool)

(declare-fun e!1418691 () Bool)

(declare-fun tp!692202 () Bool)

(assert (=> b!2221180 (= e!1418687 (and tp!692202 (inv!35358 (_2!14969 (_1!14970 (h!31441 mapDefault!14024)))) e!1418691 tp_is_empty!9907 setRes!19436 tp!692208))))

(declare-fun condSetEmpty!19437 () Bool)

(assert (=> b!2221180 (= condSetEmpty!19437 (= (_2!14970 (h!31441 mapDefault!14024)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221181 () Bool)

(declare-fun tp!692204 () Bool)

(assert (=> b!2221181 (= e!1418691 tp!692204)))

(declare-fun condMapEmpty!14024 () Bool)

(assert (=> mapNonEmpty!14021 (= condMapEmpty!14024 (= mapRest!14021 ((as const (Array (_ BitVec 32) List!26134)) mapDefault!14024)))))

(assert (=> mapNonEmpty!14021 (= tp!692132 (and e!1418687 mapRes!14024))))

(declare-fun tp!692205 () Bool)

(declare-fun b!2221182 () Bool)

(declare-fun tp!692207 () Bool)

(assert (=> b!2221182 (= e!1418689 (and tp!692207 (inv!35358 (_2!14969 (_1!14970 (h!31441 mapValue!14024)))) e!1418686 tp_is_empty!9907 setRes!19437 tp!692205))))

(declare-fun condSetEmpty!19436 () Bool)

(assert (=> b!2221182 (= condSetEmpty!19436 (= (_2!14970 (h!31441 mapValue!14024)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun mapIsEmpty!14024 () Bool)

(assert (=> mapIsEmpty!14024 mapRes!14024))

(declare-fun b!2221183 () Bool)

(declare-fun tp!692201 () Bool)

(assert (=> b!2221183 (= e!1418690 tp!692201)))

(declare-fun b!2221184 () Bool)

(declare-fun e!1418688 () Bool)

(declare-fun tp!692206 () Bool)

(assert (=> b!2221184 (= e!1418688 tp!692206)))

(declare-fun setNonEmpty!19437 () Bool)

(declare-fun tp!692199 () Bool)

(declare-fun setElem!19437 () Context!3774)

(assert (=> setNonEmpty!19437 (= setRes!19437 (and tp!692199 (inv!35358 setElem!19437) e!1418688))))

(declare-fun setRest!19436 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19437 (= (_2!14970 (h!31441 mapValue!14024)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19437 true) setRest!19436))))

(declare-fun setIsEmpty!19437 () Bool)

(assert (=> setIsEmpty!19437 setRes!19436))

(assert (= (and mapNonEmpty!14021 condMapEmpty!14024) mapIsEmpty!14024))

(assert (= (and mapNonEmpty!14021 (not condMapEmpty!14024)) mapNonEmpty!14024))

(assert (= b!2221182 b!2221179))

(assert (= (and b!2221182 condSetEmpty!19436) setIsEmpty!19436))

(assert (= (and b!2221182 (not condSetEmpty!19436)) setNonEmpty!19437))

(assert (= setNonEmpty!19437 b!2221184))

(assert (= (and mapNonEmpty!14024 ((_ is Cons!26040) mapValue!14024)) b!2221182))

(assert (= b!2221180 b!2221181))

(assert (= (and b!2221180 condSetEmpty!19437) setIsEmpty!19437))

(assert (= (and b!2221180 (not condSetEmpty!19437)) setNonEmpty!19436))

(assert (= setNonEmpty!19436 b!2221183))

(assert (= (and mapNonEmpty!14021 ((_ is Cons!26040) mapDefault!14024)) b!2221180))

(declare-fun m!2661713 () Bool)

(assert (=> b!2221182 m!2661713))

(declare-fun m!2661715 () Bool)

(assert (=> b!2221180 m!2661715))

(declare-fun m!2661717 () Bool)

(assert (=> mapNonEmpty!14024 m!2661717))

(declare-fun m!2661719 () Bool)

(assert (=> setNonEmpty!19436 m!2661719))

(declare-fun m!2661721 () Bool)

(assert (=> setNonEmpty!19437 m!2661721))

(declare-fun e!1418694 () Bool)

(declare-fun b!2221185 () Bool)

(declare-fun tp!692213 () Bool)

(declare-fun tp!692214 () Bool)

(declare-fun setRes!19438 () Bool)

(declare-fun e!1418693 () Bool)

(assert (=> b!2221185 (= e!1418694 (and tp!692213 (inv!35358 (_2!14969 (_1!14970 (h!31441 mapValue!14020)))) e!1418693 tp_is_empty!9907 setRes!19438 tp!692214))))

(declare-fun condSetEmpty!19438 () Bool)

(assert (=> b!2221185 (= condSetEmpty!19438 (= (_2!14970 (h!31441 mapValue!14020)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221186 () Bool)

(declare-fun tp!692211 () Bool)

(assert (=> b!2221186 (= e!1418693 tp!692211)))

(declare-fun b!2221187 () Bool)

(declare-fun e!1418692 () Bool)

(declare-fun tp!692210 () Bool)

(assert (=> b!2221187 (= e!1418692 tp!692210)))

(declare-fun setIsEmpty!19438 () Bool)

(assert (=> setIsEmpty!19438 setRes!19438))

(assert (=> mapNonEmpty!14021 (= tp!692145 e!1418694)))

(declare-fun setNonEmpty!19438 () Bool)

(declare-fun tp!692212 () Bool)

(declare-fun setElem!19438 () Context!3774)

(assert (=> setNonEmpty!19438 (= setRes!19438 (and tp!692212 (inv!35358 setElem!19438) e!1418692))))

(declare-fun setRest!19438 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19438 (= (_2!14970 (h!31441 mapValue!14020)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19438 true) setRest!19438))))

(assert (= b!2221185 b!2221186))

(assert (= (and b!2221185 condSetEmpty!19438) setIsEmpty!19438))

(assert (= (and b!2221185 (not condSetEmpty!19438)) setNonEmpty!19438))

(assert (= setNonEmpty!19438 b!2221187))

(assert (= (and mapNonEmpty!14021 ((_ is Cons!26040) mapValue!14020)) b!2221185))

(declare-fun m!2661723 () Bool)

(assert (=> b!2221185 m!2661723))

(declare-fun m!2661725 () Bool)

(assert (=> setNonEmpty!19438 m!2661725))

(declare-fun b!2221192 () Bool)

(declare-fun e!1418697 () Bool)

(declare-fun tp!692219 () Bool)

(declare-fun tp!692220 () Bool)

(assert (=> b!2221192 (= e!1418697 (and tp!692219 tp!692220))))

(assert (=> b!2221049 (= tp!692133 e!1418697)))

(assert (= (and b!2221049 ((_ is Cons!26038) (exprs!2387 context!72))) b!2221192))

(declare-fun e!1418699 () Bool)

(assert (=> b!2221052 (= tp!692140 e!1418699)))

(declare-fun setIsEmpty!19439 () Bool)

(declare-fun setRes!19439 () Bool)

(assert (=> setIsEmpty!19439 setRes!19439))

(declare-fun e!1418698 () Bool)

(declare-fun tp!692221 () Bool)

(declare-fun b!2221193 () Bool)

(assert (=> b!2221193 (= e!1418699 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 mapDefault!14021)))) e!1418698 tp_is_empty!9907 setRes!19439 tp!692221))))

(declare-fun condSetEmpty!19439 () Bool)

(assert (=> b!2221193 (= condSetEmpty!19439 (= (_2!14968 (h!31440 mapDefault!14021)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221194 () Bool)

(declare-fun tp!692223 () Bool)

(assert (=> b!2221194 (= e!1418698 tp!692223)))

(declare-fun setNonEmpty!19439 () Bool)

(declare-fun e!1418700 () Bool)

(declare-fun tp!692224 () Bool)

(declare-fun setElem!19439 () Context!3774)

(assert (=> setNonEmpty!19439 (= setRes!19439 (and tp!692224 (inv!35358 setElem!19439) e!1418700))))

(declare-fun setRest!19439 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19439 (= (_2!14968 (h!31440 mapDefault!14021)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19439 true) setRest!19439))))

(declare-fun b!2221195 () Bool)

(declare-fun tp!692222 () Bool)

(assert (=> b!2221195 (= e!1418700 tp!692222)))

(assert (= b!2221193 b!2221194))

(assert (= (and b!2221193 condSetEmpty!19439) setIsEmpty!19439))

(assert (= (and b!2221193 (not condSetEmpty!19439)) setNonEmpty!19439))

(assert (= setNonEmpty!19439 b!2221195))

(assert (= (and b!2221052 ((_ is Cons!26039) mapDefault!14021)) b!2221193))

(declare-fun m!2661727 () Bool)

(assert (=> b!2221193 m!2661727))

(declare-fun m!2661729 () Bool)

(assert (=> setNonEmpty!19439 m!2661729))

(declare-fun b!2221210 () Bool)

(declare-fun e!1418713 () Bool)

(declare-fun tp!692251 () Bool)

(assert (=> b!2221210 (= e!1418713 tp!692251)))

(declare-fun condMapEmpty!14027 () Bool)

(declare-fun mapDefault!14027 () List!26133)

(assert (=> mapNonEmpty!14020 (= condMapEmpty!14027 (= mapRest!14020 ((as const (Array (_ BitVec 32) List!26133)) mapDefault!14027)))))

(declare-fun e!1418714 () Bool)

(declare-fun mapRes!14027 () Bool)

(assert (=> mapNonEmpty!14020 (= tp!692142 (and e!1418714 mapRes!14027))))

(declare-fun b!2221211 () Bool)

(declare-fun e!1418717 () Bool)

(declare-fun tp!692247 () Bool)

(assert (=> b!2221211 (= e!1418717 tp!692247)))

(declare-fun setIsEmpty!19444 () Bool)

(declare-fun setRes!19444 () Bool)

(assert (=> setIsEmpty!19444 setRes!19444))

(declare-fun setNonEmpty!19444 () Bool)

(declare-fun e!1418715 () Bool)

(declare-fun setRes!19445 () Bool)

(declare-fun setElem!19445 () Context!3774)

(declare-fun tp!692246 () Bool)

(assert (=> setNonEmpty!19444 (= setRes!19445 (and tp!692246 (inv!35358 setElem!19445) e!1418715))))

(declare-fun setRest!19444 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19444 (= (_2!14968 (h!31440 mapDefault!14027)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19445 true) setRest!19444))))

(declare-fun b!2221212 () Bool)

(declare-fun e!1418716 () Bool)

(declare-fun tp!692250 () Bool)

(assert (=> b!2221212 (= e!1418716 tp!692250)))

(declare-fun setElem!19444 () Context!3774)

(declare-fun tp!692249 () Bool)

(declare-fun setNonEmpty!19445 () Bool)

(assert (=> setNonEmpty!19445 (= setRes!19444 (and tp!692249 (inv!35358 setElem!19444) e!1418717))))

(declare-fun mapValue!14027 () List!26133)

(declare-fun setRest!19445 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19445 (= (_2!14968 (h!31440 mapValue!14027)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19444 true) setRest!19445))))

(declare-fun e!1418718 () Bool)

(declare-fun tp!692243 () Bool)

(declare-fun b!2221213 () Bool)

(assert (=> b!2221213 (= e!1418718 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 mapValue!14027)))) e!1418713 tp_is_empty!9907 setRes!19444 tp!692243))))

(declare-fun condSetEmpty!19445 () Bool)

(assert (=> b!2221213 (= condSetEmpty!19445 (= (_2!14968 (h!31440 mapValue!14027)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221214 () Bool)

(declare-fun tp!692245 () Bool)

(assert (=> b!2221214 (= e!1418715 tp!692245)))

(declare-fun mapNonEmpty!14027 () Bool)

(declare-fun tp!692248 () Bool)

(assert (=> mapNonEmpty!14027 (= mapRes!14027 (and tp!692248 e!1418718))))

(declare-fun mapRest!14027 () (Array (_ BitVec 32) List!26133))

(declare-fun mapKey!14027 () (_ BitVec 32))

(assert (=> mapNonEmpty!14027 (= mapRest!14020 (store mapRest!14027 mapKey!14027 mapValue!14027))))

(declare-fun mapIsEmpty!14027 () Bool)

(assert (=> mapIsEmpty!14027 mapRes!14027))

(declare-fun setIsEmpty!19445 () Bool)

(assert (=> setIsEmpty!19445 setRes!19445))

(declare-fun tp!692244 () Bool)

(declare-fun b!2221215 () Bool)

(assert (=> b!2221215 (= e!1418714 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 mapDefault!14027)))) e!1418716 tp_is_empty!9907 setRes!19445 tp!692244))))

(declare-fun condSetEmpty!19444 () Bool)

(assert (=> b!2221215 (= condSetEmpty!19444 (= (_2!14968 (h!31440 mapDefault!14027)) ((as const (Array Context!3774 Bool)) false)))))

(assert (= (and mapNonEmpty!14020 condMapEmpty!14027) mapIsEmpty!14027))

(assert (= (and mapNonEmpty!14020 (not condMapEmpty!14027)) mapNonEmpty!14027))

(assert (= b!2221213 b!2221210))

(assert (= (and b!2221213 condSetEmpty!19445) setIsEmpty!19444))

(assert (= (and b!2221213 (not condSetEmpty!19445)) setNonEmpty!19445))

(assert (= setNonEmpty!19445 b!2221211))

(assert (= (and mapNonEmpty!14027 ((_ is Cons!26039) mapValue!14027)) b!2221213))

(assert (= b!2221215 b!2221212))

(assert (= (and b!2221215 condSetEmpty!19444) setIsEmpty!19445))

(assert (= (and b!2221215 (not condSetEmpty!19444)) setNonEmpty!19444))

(assert (= setNonEmpty!19444 b!2221214))

(assert (= (and mapNonEmpty!14020 ((_ is Cons!26039) mapDefault!14027)) b!2221215))

(declare-fun m!2661731 () Bool)

(assert (=> setNonEmpty!19444 m!2661731))

(declare-fun m!2661733 () Bool)

(assert (=> b!2221213 m!2661733))

(declare-fun m!2661735 () Bool)

(assert (=> mapNonEmpty!14027 m!2661735))

(declare-fun m!2661737 () Bool)

(assert (=> b!2221215 m!2661737))

(declare-fun m!2661739 () Bool)

(assert (=> setNonEmpty!19445 m!2661739))

(declare-fun e!1418720 () Bool)

(assert (=> mapNonEmpty!14020 (= tp!692136 e!1418720)))

(declare-fun setIsEmpty!19446 () Bool)

(declare-fun setRes!19446 () Bool)

(assert (=> setIsEmpty!19446 setRes!19446))

(declare-fun tp!692252 () Bool)

(declare-fun e!1418719 () Bool)

(declare-fun b!2221216 () Bool)

(assert (=> b!2221216 (= e!1418720 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 mapValue!14021)))) e!1418719 tp_is_empty!9907 setRes!19446 tp!692252))))

(declare-fun condSetEmpty!19446 () Bool)

(assert (=> b!2221216 (= condSetEmpty!19446 (= (_2!14968 (h!31440 mapValue!14021)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221217 () Bool)

(declare-fun tp!692254 () Bool)

(assert (=> b!2221217 (= e!1418719 tp!692254)))

(declare-fun tp!692255 () Bool)

(declare-fun setElem!19446 () Context!3774)

(declare-fun setNonEmpty!19446 () Bool)

(declare-fun e!1418721 () Bool)

(assert (=> setNonEmpty!19446 (= setRes!19446 (and tp!692255 (inv!35358 setElem!19446) e!1418721))))

(declare-fun setRest!19446 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19446 (= (_2!14968 (h!31440 mapValue!14021)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19446 true) setRest!19446))))

(declare-fun b!2221218 () Bool)

(declare-fun tp!692253 () Bool)

(assert (=> b!2221218 (= e!1418721 tp!692253)))

(assert (= b!2221216 b!2221217))

(assert (= (and b!2221216 condSetEmpty!19446) setIsEmpty!19446))

(assert (= (and b!2221216 (not condSetEmpty!19446)) setNonEmpty!19446))

(assert (= setNonEmpty!19446 b!2221218))

(assert (= (and mapNonEmpty!14020 ((_ is Cons!26039) mapValue!14021)) b!2221216))

(declare-fun m!2661741 () Bool)

(assert (=> b!2221216 m!2661741))

(declare-fun m!2661743 () Bool)

(assert (=> setNonEmpty!19446 m!2661743))

(declare-fun tp!692260 () Bool)

(declare-fun tp!692259 () Bool)

(declare-fun setRes!19447 () Bool)

(declare-fun e!1418724 () Bool)

(declare-fun e!1418723 () Bool)

(declare-fun b!2221219 () Bool)

(assert (=> b!2221219 (= e!1418724 (and tp!692259 (inv!35358 (_2!14969 (_1!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))))) e!1418723 tp_is_empty!9907 setRes!19447 tp!692260))))

(declare-fun condSetEmpty!19447 () Bool)

(assert (=> b!2221219 (= condSetEmpty!19447 (= (_2!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221220 () Bool)

(declare-fun tp!692257 () Bool)

(assert (=> b!2221220 (= e!1418723 tp!692257)))

(declare-fun b!2221221 () Bool)

(declare-fun e!1418722 () Bool)

(declare-fun tp!692256 () Bool)

(assert (=> b!2221221 (= e!1418722 tp!692256)))

(declare-fun setIsEmpty!19447 () Bool)

(assert (=> setIsEmpty!19447 setRes!19447))

(assert (=> b!2221048 (= tp!692137 e!1418724)))

(declare-fun setNonEmpty!19447 () Bool)

(declare-fun tp!692258 () Bool)

(declare-fun setElem!19447 () Context!3774)

(assert (=> setNonEmpty!19447 (= setRes!19447 (and tp!692258 (inv!35358 setElem!19447) e!1418722))))

(declare-fun setRest!19447 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19447 (= (_2!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19447 true) setRest!19447))))

(assert (= b!2221219 b!2221220))

(assert (= (and b!2221219 condSetEmpty!19447) setIsEmpty!19447))

(assert (= (and b!2221219 (not condSetEmpty!19447)) setNonEmpty!19447))

(assert (= setNonEmpty!19447 b!2221221))

(assert (= (and b!2221048 ((_ is Cons!26040) (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))) b!2221219))

(declare-fun m!2661745 () Bool)

(assert (=> b!2221219 m!2661745))

(declare-fun m!2661747 () Bool)

(assert (=> setNonEmpty!19447 m!2661747))

(declare-fun e!1418727 () Bool)

(declare-fun tp!692265 () Bool)

(declare-fun tp!692264 () Bool)

(declare-fun setRes!19448 () Bool)

(declare-fun b!2221222 () Bool)

(declare-fun e!1418726 () Bool)

(assert (=> b!2221222 (= e!1418727 (and tp!692264 (inv!35358 (_2!14969 (_1!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))))) e!1418726 tp_is_empty!9907 setRes!19448 tp!692265))))

(declare-fun condSetEmpty!19448 () Bool)

(assert (=> b!2221222 (= condSetEmpty!19448 (= (_2!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221223 () Bool)

(declare-fun tp!692262 () Bool)

(assert (=> b!2221223 (= e!1418726 tp!692262)))

(declare-fun b!2221224 () Bool)

(declare-fun e!1418725 () Bool)

(declare-fun tp!692261 () Bool)

(assert (=> b!2221224 (= e!1418725 tp!692261)))

(declare-fun setIsEmpty!19448 () Bool)

(assert (=> setIsEmpty!19448 setRes!19448))

(assert (=> b!2221048 (= tp!692135 e!1418727)))

(declare-fun setNonEmpty!19448 () Bool)

(declare-fun setElem!19448 () Context!3774)

(declare-fun tp!692263 () Bool)

(assert (=> setNonEmpty!19448 (= setRes!19448 (and tp!692263 (inv!35358 setElem!19448) e!1418725))))

(declare-fun setRest!19448 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19448 (= (_2!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19448 true) setRest!19448))))

(assert (= b!2221222 b!2221223))

(assert (= (and b!2221222 condSetEmpty!19448) setIsEmpty!19448))

(assert (= (and b!2221222 (not condSetEmpty!19448)) setNonEmpty!19448))

(assert (= setNonEmpty!19448 b!2221224))

(assert (= (and b!2221048 ((_ is Cons!26040) (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))) b!2221222))

(declare-fun m!2661749 () Bool)

(assert (=> b!2221222 m!2661749))

(declare-fun m!2661751 () Bool)

(assert (=> setNonEmpty!19448 m!2661751))

(check-sat (not d!663877) (not b!2221185) (not b!2221150) (not b!2221195) (not mapNonEmpty!14024) (not setNonEmpty!19445) (not bm!132530) (not b!2221148) (not b!2221099) (not b!2221100) (not setNonEmpty!19448) (not setNonEmpty!19447) (not b!2221149) (not setNonEmpty!19444) (not b!2221162) (not d!663863) (not b!2221223) b_and!174309 (not setNonEmpty!19436) (not d!663879) (not setNonEmpty!19430) (not d!663873) (not b_next!65047) (not setNonEmpty!19431) b_and!174315 (not b!2221224) (not b_next!65049) (not d!663869) (not b!2221159) (not b!2221135) (not setNonEmpty!19437) (not b_next!65045) (not bm!132517) (not b!2221216) (not setNonEmpty!19427) (not bm!132533) (not b!2221184) tp_is_empty!9907 (not b!2221073) (not b!2221182) (not b!2221192) (not b!2221180) (not b!2221213) (not b!2221163) (not b!2221222) (not b_next!65051) (not d!663861) (not b!2221187) (not b!2221179) (not b!2221086) (not bm!132531) (not setNonEmpty!19446) (not b!2221164) (not b!2221193) (not b!2221221) (not setNonEmpty!19438) (not b!2221094) (not b!2221211) (not b!2221210) (not b!2221219) (not b!2221161) (not b!2221088) (not b!2221137) (not b!2221214) (not mapNonEmpty!14027) (not b!2221075) (not b!2221160) (not b!2221215) b_and!174313 (not b!2221183) (not b!2221220) (not b!2221181) (not b!2221212) (not b!2221194) (not b!2221186) (not b!2221217) (not setNonEmpty!19439) b_and!174311 (not b!2221091) (not b!2221218) (not b!2221079))
(check-sat (not b_next!65045) (not b_next!65051) b_and!174313 b_and!174311 b_and!174309 (not b_next!65047) b_and!174315 (not b_next!65049))
(get-model)

(declare-fun b!2221247 () Bool)

(declare-fun e!1418740 () Bool)

(assert (=> b!2221247 (= e!1418740 (nullable!1722 (regOne!13190 (h!31439 (exprs!2387 context!72)))))))

(declare-fun b!2221248 () Bool)

(declare-fun e!1418741 () (InoxSet Context!3774))

(declare-fun e!1418744 () (InoxSet Context!3774))

(assert (=> b!2221248 (= e!1418741 e!1418744)))

(declare-fun c!354685 () Bool)

(assert (=> b!2221248 (= c!354685 ((_ is Union!6339) (h!31439 (exprs!2387 context!72))))))

(declare-fun b!2221249 () Bool)

(declare-fun c!354688 () Bool)

(assert (=> b!2221249 (= c!354688 ((_ is Star!6339) (h!31439 (exprs!2387 context!72))))))

(declare-fun e!1418742 () (InoxSet Context!3774))

(declare-fun e!1418745 () (InoxSet Context!3774))

(assert (=> b!2221249 (= e!1418742 e!1418745)))

(declare-fun bm!132548 () Bool)

(declare-fun call!132558 () List!26132)

(declare-fun call!132555 () (InoxSet Context!3774))

(assert (=> bm!132548 (= call!132555 (derivationStepZipperDown!17 (ite c!354685 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))) (ite c!354685 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132558)) a!1149))))

(declare-fun bm!132549 () Bool)

(declare-fun call!132556 () List!26132)

(assert (=> bm!132549 (= call!132556 call!132558)))

(declare-fun c!354687 () Bool)

(declare-fun call!132554 () (InoxSet Context!3774))

(declare-fun c!354684 () Bool)

(declare-fun bm!132550 () Bool)

(assert (=> bm!132550 (= call!132554 (derivationStepZipperDown!17 (ite c!354685 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354687 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354684 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))) (ite (or c!354685 c!354687) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132556)) a!1149))))

(declare-fun bm!132551 () Bool)

(declare-fun call!132553 () (InoxSet Context!3774))

(assert (=> bm!132551 (= call!132553 call!132554)))

(declare-fun b!2221251 () Bool)

(assert (=> b!2221251 (= c!354687 e!1418740)))

(declare-fun res!953584 () Bool)

(assert (=> b!2221251 (=> (not res!953584) (not e!1418740))))

(assert (=> b!2221251 (= res!953584 ((_ is Concat!10677) (h!31439 (exprs!2387 context!72))))))

(declare-fun e!1418743 () (InoxSet Context!3774))

(assert (=> b!2221251 (= e!1418744 e!1418743)))

(declare-fun b!2221252 () Bool)

(assert (=> b!2221252 (= e!1418743 e!1418742)))

(assert (=> b!2221252 (= c!354684 ((_ is Concat!10677) (h!31439 (exprs!2387 context!72))))))

(declare-fun b!2221253 () Bool)

(declare-fun call!132557 () (InoxSet Context!3774))

(assert (=> b!2221253 (= e!1418745 call!132557)))

(declare-fun bm!132552 () Bool)

(assert (=> bm!132552 (= call!132557 call!132553)))

(declare-fun b!2221254 () Bool)

(assert (=> b!2221254 (= e!1418744 ((_ map or) call!132555 call!132554))))

(declare-fun d!663885 () Bool)

(declare-fun c!354686 () Bool)

(assert (=> d!663885 (= c!354686 (and ((_ is ElementMatch!6339) (h!31439 (exprs!2387 context!72))) (= (c!354643 (h!31439 (exprs!2387 context!72))) a!1149)))))

(assert (=> d!663885 (= (derivationStepZipperDown!17 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149) e!1418741)))

(declare-fun b!2221250 () Bool)

(assert (=> b!2221250 (= e!1418745 ((as const (Array Context!3774 Bool)) false))))

(declare-fun b!2221255 () Bool)

(assert (=> b!2221255 (= e!1418741 (store ((as const (Array Context!3774 Bool)) false) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) true))))

(declare-fun bm!132553 () Bool)

(assert (=> bm!132553 (= call!132558 ($colon$colon!499 (exprs!2387 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72))))) (ite (or c!354687 c!354684) (regTwo!13190 (h!31439 (exprs!2387 context!72))) (h!31439 (exprs!2387 context!72)))))))

(declare-fun b!2221256 () Bool)

(assert (=> b!2221256 (= e!1418742 call!132557)))

(declare-fun b!2221257 () Bool)

(assert (=> b!2221257 (= e!1418743 ((_ map or) call!132555 call!132553))))

(assert (= (and d!663885 c!354686) b!2221255))

(assert (= (and d!663885 (not c!354686)) b!2221248))

(assert (= (and b!2221248 c!354685) b!2221254))

(assert (= (and b!2221248 (not c!354685)) b!2221251))

(assert (= (and b!2221251 res!953584) b!2221247))

(assert (= (and b!2221251 c!354687) b!2221257))

(assert (= (and b!2221251 (not c!354687)) b!2221252))

(assert (= (and b!2221252 c!354684) b!2221256))

(assert (= (and b!2221252 (not c!354684)) b!2221249))

(assert (= (and b!2221249 c!354688) b!2221253))

(assert (= (and b!2221249 (not c!354688)) b!2221250))

(assert (= (or b!2221256 b!2221253) bm!132549))

(assert (= (or b!2221256 b!2221253) bm!132552))

(assert (= (or b!2221257 bm!132549) bm!132553))

(assert (= (or b!2221257 bm!132552) bm!132551))

(assert (= (or b!2221254 bm!132551) bm!132550))

(assert (= (or b!2221254 b!2221257) bm!132548))

(declare-fun m!2661753 () Bool)

(assert (=> bm!132553 m!2661753))

(assert (=> b!2221247 m!2661683))

(declare-fun m!2661755 () Bool)

(assert (=> bm!132548 m!2661755))

(declare-fun m!2661757 () Bool)

(assert (=> bm!132550 m!2661757))

(assert (=> b!2221255 m!2661699))

(assert (=> d!663879 d!663885))

(declare-fun d!663887 () Bool)

(declare-fun e!1418748 () Bool)

(assert (=> d!663887 e!1418748))

(declare-fun res!953587 () Bool)

(assert (=> d!663887 (=> res!953587 e!1418748)))

(declare-fun lt!827837 () Option!5053)

(assert (=> d!663887 (= res!953587 (isEmpty!14870 lt!827837))))

(declare-fun choose!13104 (CacheDown!1882 Regex!6339 Context!3774 C!12824) Option!5053)

(assert (=> d!663887 (= lt!827837 (choose!13104 cacheDown!803 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149))))

(assert (=> d!663887 (validCacheMapDown!259 (cache!3263 cacheDown!803))))

(assert (=> d!663887 (= (get!7804 cacheDown!803 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149) lt!827837)))

(declare-fun b!2221260 () Bool)

(assert (=> b!2221260 (= e!1418748 (= (get!7803 lt!827837) (derivationStepZipperDown!17 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149)))))

(assert (= (and d!663887 (not res!953587)) b!2221260))

(declare-fun m!2661759 () Bool)

(assert (=> d!663887 m!2661759))

(declare-fun m!2661761 () Bool)

(assert (=> d!663887 m!2661761))

(assert (=> d!663887 m!2661672))

(declare-fun m!2661763 () Bool)

(assert (=> b!2221260 m!2661763))

(assert (=> b!2221260 m!2661685))

(assert (=> d!663879 d!663887))

(declare-fun b!2221279 () Bool)

(declare-fun e!1418765 () Bool)

(declare-fun call!132565 () Bool)

(assert (=> b!2221279 (= e!1418765 call!132565)))

(declare-fun b!2221280 () Bool)

(declare-fun e!1418764 () Bool)

(declare-fun call!132567 () Bool)

(assert (=> b!2221280 (= e!1418764 call!132567)))

(declare-fun b!2221281 () Bool)

(declare-fun res!953599 () Bool)

(declare-fun e!1418769 () Bool)

(assert (=> b!2221281 (=> res!953599 e!1418769)))

(assert (=> b!2221281 (= res!953599 (not ((_ is Concat!10677) (h!31439 (exprs!2387 context!72)))))))

(declare-fun e!1418768 () Bool)

(assert (=> b!2221281 (= e!1418768 e!1418769)))

(declare-fun bm!132560 () Bool)

(declare-fun call!132566 () Bool)

(assert (=> bm!132560 (= call!132567 call!132566)))

(declare-fun c!354694 () Bool)

(declare-fun bm!132561 () Bool)

(declare-fun c!354693 () Bool)

(assert (=> bm!132561 (= call!132566 (validRegex!2352 (ite c!354694 (reg!6668 (h!31439 (exprs!2387 context!72))) (ite c!354693 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regTwo!13190 (h!31439 (exprs!2387 context!72)))))))))

(declare-fun b!2221282 () Bool)

(declare-fun e!1418763 () Bool)

(declare-fun e!1418767 () Bool)

(assert (=> b!2221282 (= e!1418763 e!1418767)))

(assert (=> b!2221282 (= c!354694 ((_ is Star!6339) (h!31439 (exprs!2387 context!72))))))

(declare-fun b!2221283 () Bool)

(declare-fun e!1418766 () Bool)

(assert (=> b!2221283 (= e!1418766 call!132566)))

(declare-fun b!2221284 () Bool)

(assert (=> b!2221284 (= e!1418767 e!1418766)))

(declare-fun res!953601 () Bool)

(assert (=> b!2221284 (= res!953601 (not (nullable!1722 (reg!6668 (h!31439 (exprs!2387 context!72))))))))

(assert (=> b!2221284 (=> (not res!953601) (not e!1418766))))

(declare-fun b!2221285 () Bool)

(declare-fun res!953600 () Bool)

(assert (=> b!2221285 (=> (not res!953600) (not e!1418765))))

(assert (=> b!2221285 (= res!953600 call!132567)))

(assert (=> b!2221285 (= e!1418768 e!1418765)))

(declare-fun b!2221286 () Bool)

(assert (=> b!2221286 (= e!1418767 e!1418768)))

(assert (=> b!2221286 (= c!354693 ((_ is Union!6339) (h!31439 (exprs!2387 context!72))))))

(declare-fun b!2221287 () Bool)

(assert (=> b!2221287 (= e!1418769 e!1418764)))

(declare-fun res!953602 () Bool)

(assert (=> b!2221287 (=> (not res!953602) (not e!1418764))))

(assert (=> b!2221287 (= res!953602 call!132565)))

(declare-fun d!663889 () Bool)

(declare-fun res!953598 () Bool)

(assert (=> d!663889 (=> res!953598 e!1418763)))

(assert (=> d!663889 (= res!953598 ((_ is ElementMatch!6339) (h!31439 (exprs!2387 context!72))))))

(assert (=> d!663889 (= (validRegex!2352 (h!31439 (exprs!2387 context!72))) e!1418763)))

(declare-fun bm!132562 () Bool)

(assert (=> bm!132562 (= call!132565 (validRegex!2352 (ite c!354693 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))))))

(assert (= (and d!663889 (not res!953598)) b!2221282))

(assert (= (and b!2221282 c!354694) b!2221284))

(assert (= (and b!2221282 (not c!354694)) b!2221286))

(assert (= (and b!2221284 res!953601) b!2221283))

(assert (= (and b!2221286 c!354693) b!2221285))

(assert (= (and b!2221286 (not c!354693)) b!2221281))

(assert (= (and b!2221285 res!953600) b!2221279))

(assert (= (and b!2221281 (not res!953599)) b!2221287))

(assert (= (and b!2221287 res!953602) b!2221280))

(assert (= (or b!2221279 b!2221287) bm!132562))

(assert (= (or b!2221285 b!2221280) bm!132560))

(assert (= (or b!2221283 bm!132560) bm!132561))

(declare-fun m!2661765 () Bool)

(assert (=> bm!132561 m!2661765))

(declare-fun m!2661767 () Bool)

(assert (=> b!2221284 m!2661767))

(declare-fun m!2661769 () Bool)

(assert (=> bm!132562 m!2661769))

(assert (=> d!663879 d!663889))

(declare-fun bs!452421 () Bool)

(declare-fun d!663891 () Bool)

(assert (= bs!452421 (and d!663891 d!663873)))

(declare-fun lambda!83840 () Int)

(assert (=> bs!452421 (= lambda!83840 lambda!83836)))

(assert (=> d!663891 (= (inv!35358 setElem!19436) (forall!5298 (exprs!2387 setElem!19436) lambda!83840))))

(declare-fun bs!452422 () Bool)

(assert (= bs!452422 d!663891))

(declare-fun m!2661771 () Bool)

(assert (=> bs!452422 m!2661771))

(assert (=> setNonEmpty!19436 d!663891))

(declare-fun bs!452423 () Bool)

(declare-fun d!663893 () Bool)

(assert (= bs!452423 (and d!663893 d!663873)))

(declare-fun lambda!83841 () Int)

(assert (=> bs!452423 (= lambda!83841 lambda!83836)))

(declare-fun bs!452424 () Bool)

(assert (= bs!452424 (and d!663893 d!663891)))

(assert (=> bs!452424 (= lambda!83841 lambda!83840)))

(assert (=> d!663893 (= (inv!35358 setElem!19430) (forall!5298 (exprs!2387 setElem!19430) lambda!83841))))

(declare-fun bs!452425 () Bool)

(assert (= bs!452425 d!663893))

(declare-fun m!2661773 () Bool)

(assert (=> bs!452425 m!2661773))

(assert (=> setNonEmpty!19430 d!663893))

(declare-fun bs!452426 () Bool)

(declare-fun d!663895 () Bool)

(assert (= bs!452426 (and d!663895 d!663873)))

(declare-fun lambda!83842 () Int)

(assert (=> bs!452426 (= lambda!83842 lambda!83836)))

(declare-fun bs!452427 () Bool)

(assert (= bs!452427 (and d!663895 d!663891)))

(assert (=> bs!452427 (= lambda!83842 lambda!83840)))

(declare-fun bs!452428 () Bool)

(assert (= bs!452428 (and d!663895 d!663893)))

(assert (=> bs!452428 (= lambda!83842 lambda!83841)))

(assert (=> d!663895 (= (inv!35358 setElem!19448) (forall!5298 (exprs!2387 setElem!19448) lambda!83842))))

(declare-fun bs!452429 () Bool)

(assert (= bs!452429 d!663895))

(declare-fun m!2661775 () Bool)

(assert (=> bs!452429 m!2661775))

(assert (=> setNonEmpty!19448 d!663895))

(declare-fun bs!452430 () Bool)

(declare-fun d!663897 () Bool)

(assert (= bs!452430 (and d!663897 d!663873)))

(declare-fun lambda!83843 () Int)

(assert (=> bs!452430 (= lambda!83843 lambda!83836)))

(declare-fun bs!452431 () Bool)

(assert (= bs!452431 (and d!663897 d!663891)))

(assert (=> bs!452431 (= lambda!83843 lambda!83840)))

(declare-fun bs!452432 () Bool)

(assert (= bs!452432 (and d!663897 d!663893)))

(assert (=> bs!452432 (= lambda!83843 lambda!83841)))

(declare-fun bs!452433 () Bool)

(assert (= bs!452433 (and d!663897 d!663895)))

(assert (=> bs!452433 (= lambda!83843 lambda!83842)))

(assert (=> d!663897 (= (inv!35358 setElem!19447) (forall!5298 (exprs!2387 setElem!19447) lambda!83843))))

(declare-fun bs!452434 () Bool)

(assert (= bs!452434 d!663897))

(declare-fun m!2661777 () Bool)

(assert (=> bs!452434 m!2661777))

(assert (=> setNonEmpty!19447 d!663897))

(declare-fun d!663899 () Bool)

(declare-fun res!953609 () Bool)

(declare-fun e!1418774 () Bool)

(assert (=> d!663899 (=> (not res!953609) (not e!1418774))))

(declare-fun valid!2294 (MutableMap!2881) Bool)

(assert (=> d!663899 (= res!953609 (valid!2294 (cache!3263 cacheDown!803)))))

(assert (=> d!663899 (= (validCacheMapDown!259 (cache!3263 cacheDown!803)) e!1418774)))

(declare-fun b!2221294 () Bool)

(declare-fun res!953610 () Bool)

(assert (=> b!2221294 (=> (not res!953610) (not e!1418774))))

(declare-fun invariantList!343 (List!26134) Bool)

(declare-datatypes ((ListMap!749 0))(
  ( (ListMap!750 (toList!1291 List!26134)) )
))
(declare-fun map!5282 (MutableMap!2881) ListMap!749)

(assert (=> b!2221294 (= res!953610 (invariantList!343 (toList!1291 (map!5282 (cache!3263 cacheDown!803)))))))

(declare-fun b!2221295 () Bool)

(declare-fun lambda!83846 () Int)

(declare-fun forall!5300 (List!26134 Int) Bool)

(assert (=> b!2221295 (= e!1418774 (forall!5300 (toList!1291 (map!5282 (cache!3263 cacheDown!803))) lambda!83846))))

(assert (= (and d!663899 res!953609) b!2221294))

(assert (= (and b!2221294 res!953610) b!2221295))

(declare-fun m!2661780 () Bool)

(assert (=> d!663899 m!2661780))

(declare-fun m!2661782 () Bool)

(assert (=> b!2221294 m!2661782))

(declare-fun m!2661784 () Bool)

(assert (=> b!2221294 m!2661784))

(assert (=> b!2221295 m!2661782))

(declare-fun m!2661786 () Bool)

(assert (=> b!2221295 m!2661786))

(assert (=> b!2221094 d!663899))

(declare-fun b!2221296 () Bool)

(declare-fun e!1418777 () tuple2!25196)

(assert (=> b!2221296 (= e!1418777 (tuple2!25197 (store ((as const (Array Context!3774 Bool)) false) (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538)) true) (ite c!354669 (_2!14972 lt!827833) (ite c!354673 (_2!14972 lt!827826) cacheDown!803))))))

(declare-fun b!2221297 () Bool)

(declare-fun e!1418781 () tuple2!25196)

(declare-fun e!1418778 () tuple2!25196)

(assert (=> b!2221297 (= e!1418781 e!1418778)))

(declare-fun c!354695 () Bool)

(assert (=> b!2221297 (= c!354695 ((_ is Star!6339) (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))))))

(declare-fun b!2221298 () Bool)

(declare-fun e!1418779 () tuple2!25196)

(declare-fun e!1418776 () tuple2!25196)

(assert (=> b!2221298 (= e!1418779 e!1418776)))

(declare-fun res!953611 () Bool)

(assert (=> b!2221298 (= res!953611 ((_ is Concat!10677) (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))))))

(declare-fun e!1418775 () Bool)

(assert (=> b!2221298 (=> (not res!953611) (not e!1418775))))

(declare-fun c!354700 () Bool)

(assert (=> b!2221298 (= c!354700 e!1418775)))

(declare-fun b!2221299 () Bool)

(assert (=> b!2221299 (= e!1418778 (tuple2!25197 ((as const (Array Context!3774 Bool)) false) (ite c!354669 (_2!14972 lt!827833) (ite c!354673 (_2!14972 lt!827826) cacheDown!803))))))

(declare-fun call!132568 () List!26132)

(declare-fun call!132573 () tuple2!25196)

(declare-fun c!354696 () Bool)

(declare-fun bm!132563 () Bool)

(assert (=> bm!132563 (= call!132573 (derivationStepZipperDownMem!2 (ite c!354696 (regOne!13191 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))) (regOne!13190 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))))) (ite c!354696 (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538)) (Context!3775 call!132568)) a!1149 (ite c!354669 (_2!14972 lt!827833) (ite c!354673 (_2!14972 lt!827826) cacheDown!803))))))

(declare-fun c!354698 () Bool)

(declare-fun bm!132564 () Bool)

(assert (=> bm!132564 (= call!132568 ($colon$colon!499 (exprs!2387 (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538))) (ite (or c!354700 c!354698) (regTwo!13190 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))) (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))))))))

(declare-fun d!663901 () Bool)

(declare-fun lt!827844 () tuple2!25196)

(assert (=> d!663901 (= (_1!14972 lt!827844) (derivationStepZipperDown!17 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))) (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538)) a!1149))))

(declare-fun e!1418780 () tuple2!25196)

(assert (=> d!663901 (= lt!827844 e!1418780)))

(declare-fun c!354699 () Bool)

(declare-fun lt!827841 () Option!5053)

(assert (=> d!663901 (= c!354699 ((_ is Some!5052) lt!827841))))

(assert (=> d!663901 (= lt!827841 (get!7804 (ite c!354669 (_2!14972 lt!827833) (ite c!354673 (_2!14972 lt!827826) cacheDown!803)) (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))) (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538)) a!1149))))

(assert (=> d!663901 (validRegex!2352 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))))))

(assert (=> d!663901 (= (derivationStepZipperDownMem!2 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))) (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538)) a!1149 (ite c!354669 (_2!14972 lt!827833) (ite c!354673 (_2!14972 lt!827826) cacheDown!803))) lt!827844)))

(declare-fun b!2221300 () Bool)

(assert (=> b!2221300 (= c!354696 ((_ is Union!6339) (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))))))

(assert (=> b!2221300 (= e!1418777 e!1418779)))

(declare-fun b!2221301 () Bool)

(declare-fun lt!827840 () tuple2!25196)

(declare-fun call!132569 () tuple2!25196)

(assert (=> b!2221301 (= lt!827840 call!132569)))

(declare-fun lt!827838 () tuple2!25196)

(assert (=> b!2221301 (= lt!827838 call!132573)))

(assert (=> b!2221301 (= e!1418776 (tuple2!25197 ((_ map or) (_1!14972 lt!827838) (_1!14972 lt!827840)) (_2!14972 lt!827840)))))

(declare-fun b!2221302 () Bool)

(assert (=> b!2221302 (= e!1418780 (tuple2!25197 (v!29580 lt!827841) (ite c!354669 (_2!14972 lt!827833) (ite c!354673 (_2!14972 lt!827826) cacheDown!803))))))

(declare-fun bm!132565 () Bool)

(declare-fun call!132572 () tuple2!25196)

(assert (=> bm!132565 (= call!132569 call!132572)))

(declare-fun b!2221303 () Bool)

(assert (=> b!2221303 (= c!354698 ((_ is Concat!10677) (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))))))

(assert (=> b!2221303 (= e!1418776 e!1418781)))

(declare-fun lt!827845 () tuple2!25196)

(declare-fun bm!132566 () Bool)

(declare-fun call!132571 () List!26132)

(assert (=> bm!132566 (= call!132572 (derivationStepZipperDownMem!2 (ite c!354696 (regTwo!13191 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))) (ite c!354700 (regTwo!13190 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))) (ite c!354698 (regOne!13190 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))) (reg!6668 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))))))) (ite (or c!354696 c!354700) (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538)) (Context!3775 call!132571)) a!1149 (ite c!354696 (_2!14972 lt!827845) (ite c!354700 (_2!14972 lt!827838) (ite c!354669 (_2!14972 lt!827833) (ite c!354673 (_2!14972 lt!827826) cacheDown!803))))))))

(declare-fun bm!132567 () Bool)

(declare-fun call!132570 () tuple2!25196)

(assert (=> bm!132567 (= call!132570 call!132569)))

(declare-fun lt!827839 () tuple2!25196)

(declare-fun b!2221304 () Bool)

(assert (=> b!2221304 (= e!1418780 (tuple2!25197 (_1!14972 lt!827839) (_2!14974 (update!111 (_2!14972 lt!827839) (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))) (ite (or c!354669 c!354673) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132538)) a!1149 (_1!14972 lt!827839)))))))

(declare-fun c!354697 () Bool)

(assert (=> b!2221304 (= c!354697 (and ((_ is ElementMatch!6339) (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))) (= (c!354643 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72))))))) a!1149)))))

(assert (=> b!2221304 (= lt!827839 e!1418777)))

(declare-fun b!2221305 () Bool)

(declare-fun lt!827846 () tuple2!25196)

(assert (=> b!2221305 (= e!1418779 (tuple2!25197 ((_ map or) (_1!14972 lt!827845) (_1!14972 lt!827846)) (_2!14972 lt!827846)))))

(assert (=> b!2221305 (= lt!827845 call!132573)))

(assert (=> b!2221305 (= lt!827846 call!132572)))

(declare-fun b!2221306 () Bool)

(assert (=> b!2221306 (= e!1418775 (nullable!1722 (regOne!13190 (ite c!354669 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (ite c!354673 (regTwo!13190 (h!31439 (exprs!2387 context!72))) (ite c!354671 (regOne!13190 (h!31439 (exprs!2387 context!72))) (reg!6668 (h!31439 (exprs!2387 context!72)))))))))))

(declare-fun bm!132568 () Bool)

(assert (=> bm!132568 (= call!132571 call!132568)))

(declare-fun b!2221307 () Bool)

(declare-fun lt!827843 () tuple2!25196)

(assert (=> b!2221307 (= e!1418781 (tuple2!25197 (_1!14972 lt!827843) (_2!14972 lt!827843)))))

(assert (=> b!2221307 (= lt!827843 call!132570)))

(declare-fun b!2221308 () Bool)

(declare-fun lt!827842 () tuple2!25196)

(assert (=> b!2221308 (= lt!827842 call!132570)))

(assert (=> b!2221308 (= e!1418778 (tuple2!25197 (_1!14972 lt!827842) (_2!14972 lt!827842)))))

(assert (= (and d!663901 c!354699) b!2221302))

(assert (= (and d!663901 (not c!354699)) b!2221304))

(assert (= (and b!2221304 c!354697) b!2221296))

(assert (= (and b!2221304 (not c!354697)) b!2221300))

(assert (= (and b!2221300 c!354696) b!2221305))

(assert (= (and b!2221300 (not c!354696)) b!2221298))

(assert (= (and b!2221298 res!953611) b!2221306))

(assert (= (and b!2221298 c!354700) b!2221301))

(assert (= (and b!2221298 (not c!354700)) b!2221303))

(assert (= (and b!2221303 c!354698) b!2221307))

(assert (= (and b!2221303 (not c!354698)) b!2221297))

(assert (= (and b!2221297 c!354695) b!2221308))

(assert (= (and b!2221297 (not c!354695)) b!2221299))

(assert (= (or b!2221307 b!2221308) bm!132568))

(assert (= (or b!2221307 b!2221308) bm!132567))

(assert (= (or b!2221301 bm!132568) bm!132564))

(assert (= (or b!2221301 bm!132567) bm!132565))

(assert (= (or b!2221305 bm!132565) bm!132566))

(assert (= (or b!2221305 b!2221301) bm!132563))

(declare-fun m!2661788 () Bool)

(assert (=> b!2221306 m!2661788))

(declare-fun m!2661790 () Bool)

(assert (=> d!663901 m!2661790))

(declare-fun m!2661792 () Bool)

(assert (=> d!663901 m!2661792))

(declare-fun m!2661794 () Bool)

(assert (=> d!663901 m!2661794))

(declare-fun m!2661796 () Bool)

(assert (=> bm!132564 m!2661796))

(declare-fun m!2661798 () Bool)

(assert (=> b!2221304 m!2661798))

(declare-fun m!2661800 () Bool)

(assert (=> bm!132566 m!2661800))

(declare-fun m!2661802 () Bool)

(assert (=> bm!132563 m!2661802))

(declare-fun m!2661804 () Bool)

(assert (=> b!2221296 m!2661804))

(assert (=> bm!132533 d!663901))

(declare-fun bs!452435 () Bool)

(declare-fun d!663903 () Bool)

(assert (= bs!452435 (and d!663903 d!663895)))

(declare-fun lambda!83847 () Int)

(assert (=> bs!452435 (= lambda!83847 lambda!83842)))

(declare-fun bs!452436 () Bool)

(assert (= bs!452436 (and d!663903 d!663897)))

(assert (=> bs!452436 (= lambda!83847 lambda!83843)))

(declare-fun bs!452437 () Bool)

(assert (= bs!452437 (and d!663903 d!663891)))

(assert (=> bs!452437 (= lambda!83847 lambda!83840)))

(declare-fun bs!452438 () Bool)

(assert (= bs!452438 (and d!663903 d!663873)))

(assert (=> bs!452438 (= lambda!83847 lambda!83836)))

(declare-fun bs!452439 () Bool)

(assert (= bs!452439 (and d!663903 d!663893)))

(assert (=> bs!452439 (= lambda!83847 lambda!83841)))

(assert (=> d!663903 (= (inv!35358 (_2!14969 (_1!14970 (h!31441 mapDefault!14024)))) (forall!5298 (exprs!2387 (_2!14969 (_1!14970 (h!31441 mapDefault!14024)))) lambda!83847))))

(declare-fun bs!452440 () Bool)

(assert (= bs!452440 d!663903))

(declare-fun m!2661806 () Bool)

(assert (=> bs!452440 m!2661806))

(assert (=> b!2221180 d!663903))

(declare-fun bs!452441 () Bool)

(declare-fun d!663905 () Bool)

(assert (= bs!452441 (and d!663905 d!663895)))

(declare-fun lambda!83848 () Int)

(assert (=> bs!452441 (= lambda!83848 lambda!83842)))

(declare-fun bs!452442 () Bool)

(assert (= bs!452442 (and d!663905 d!663903)))

(assert (=> bs!452442 (= lambda!83848 lambda!83847)))

(declare-fun bs!452443 () Bool)

(assert (= bs!452443 (and d!663905 d!663897)))

(assert (=> bs!452443 (= lambda!83848 lambda!83843)))

(declare-fun bs!452444 () Bool)

(assert (= bs!452444 (and d!663905 d!663891)))

(assert (=> bs!452444 (= lambda!83848 lambda!83840)))

(declare-fun bs!452445 () Bool)

(assert (= bs!452445 (and d!663905 d!663873)))

(assert (=> bs!452445 (= lambda!83848 lambda!83836)))

(declare-fun bs!452446 () Bool)

(assert (= bs!452446 (and d!663905 d!663893)))

(assert (=> bs!452446 (= lambda!83848 lambda!83841)))

(assert (=> d!663905 (= (inv!35358 (_2!14969 (_1!14970 (h!31441 mapDefault!14020)))) (forall!5298 (exprs!2387 (_2!14969 (_1!14970 (h!31441 mapDefault!14020)))) lambda!83848))))

(declare-fun bs!452447 () Bool)

(assert (= bs!452447 d!663905))

(declare-fun m!2661808 () Bool)

(assert (=> bs!452447 m!2661808))

(assert (=> b!2221148 d!663905))

(declare-fun bs!452448 () Bool)

(declare-fun d!663907 () Bool)

(assert (= bs!452448 (and d!663907 d!663905)))

(declare-fun lambda!83849 () Int)

(assert (=> bs!452448 (= lambda!83849 lambda!83848)))

(declare-fun bs!452449 () Bool)

(assert (= bs!452449 (and d!663907 d!663895)))

(assert (=> bs!452449 (= lambda!83849 lambda!83842)))

(declare-fun bs!452450 () Bool)

(assert (= bs!452450 (and d!663907 d!663903)))

(assert (=> bs!452450 (= lambda!83849 lambda!83847)))

(declare-fun bs!452451 () Bool)

(assert (= bs!452451 (and d!663907 d!663897)))

(assert (=> bs!452451 (= lambda!83849 lambda!83843)))

(declare-fun bs!452452 () Bool)

(assert (= bs!452452 (and d!663907 d!663891)))

(assert (=> bs!452452 (= lambda!83849 lambda!83840)))

(declare-fun bs!452453 () Bool)

(assert (= bs!452453 (and d!663907 d!663873)))

(assert (=> bs!452453 (= lambda!83849 lambda!83836)))

(declare-fun bs!452454 () Bool)

(assert (= bs!452454 (and d!663907 d!663893)))

(assert (=> bs!452454 (= lambda!83849 lambda!83841)))

(assert (=> d!663907 (= (inv!35358 setElem!19427) (forall!5298 (exprs!2387 setElem!19427) lambda!83849))))

(declare-fun bs!452455 () Bool)

(assert (= bs!452455 d!663907))

(declare-fun m!2661810 () Bool)

(assert (=> bs!452455 m!2661810))

(assert (=> setNonEmpty!19427 d!663907))

(declare-fun e!1418788 () (InoxSet Context!3774))

(declare-fun b!2221321 () Bool)

(declare-fun lt!827916 () (_ BitVec 64))

(declare-datatypes ((Option!5054 0))(
  ( (None!5053) (Some!5053 (v!29581 tuple2!25192)) )
))
(declare-fun get!7805 (Option!5054) tuple2!25192)

(declare-fun getPair!22 (List!26133 tuple2!25190) Option!5054)

(declare-fun apply!6443 (MutLongMap!2972 (_ BitVec 64)) List!26133)

(assert (=> b!2221321 (= e!1418788 (_2!14968 (get!7805 (getPair!22 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!827916) (tuple2!25191 context!72 a!1149)))))))

(declare-fun hash!561 (Hashable!2882 tuple2!25190) (_ BitVec 64))

(assert (=> b!2221321 (= lt!827916 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)))))

(declare-fun c!354708 () Bool)

(declare-datatypes ((tuple2!25202 0))(
  ( (tuple2!25203 (_1!14975 (_ BitVec 64)) (_2!14975 List!26133)) )
))
(declare-datatypes ((List!26135 0))(
  ( (Nil!26041) (Cons!26041 (h!31442 tuple2!25202) (t!199538 List!26135)) )
))
(declare-fun contains!4329 (List!26135 tuple2!25202) Bool)

(declare-datatypes ((ListLongMap!287 0))(
  ( (ListLongMap!288 (toList!1292 List!26135)) )
))
(declare-fun map!5283 (MutLongMap!2972) ListLongMap!287)

(assert (=> b!2221321 (= c!354708 (not (contains!4329 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))) (tuple2!25203 lt!827916 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!827916)))))))

(declare-fun lt!827920 () Unit!38990)

(declare-fun e!1418789 () Unit!38990)

(assert (=> b!2221321 (= lt!827920 e!1418789)))

(declare-fun lt!827936 () Unit!38990)

(declare-fun lambda!83856 () Int)

(declare-fun forallContained!769 (List!26135 Int tuple2!25202) Unit!38990)

(assert (=> b!2221321 (= lt!827936 (forallContained!769 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))) lambda!83856 (tuple2!25203 lt!827916 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!827916))))))

(declare-fun lt!827921 () ListLongMap!287)

(assert (=> b!2221321 (= lt!827921 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))

(declare-fun lt!827926 () Unit!38990)

(declare-fun lemmaGetPairGetSameValueAsMap!12 (ListLongMap!287 tuple2!25190 (InoxSet Context!3774) Hashable!2882) Unit!38990)

(assert (=> b!2221321 (= lt!827926 (lemmaGetPairGetSameValueAsMap!12 lt!827921 (tuple2!25191 context!72 a!1149) (_2!14968 (get!7805 (getPair!22 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!827916) (tuple2!25191 context!72 a!1149)))) (hashF!4805 (cache!3262 cacheUp!790))))))

(declare-fun lt!827923 () Unit!38990)

(declare-fun lemmaInGenMapThenLongMapContainsHash!12 (ListLongMap!287 tuple2!25190 Hashable!2882) Unit!38990)

(assert (=> b!2221321 (= lt!827923 (lemmaInGenMapThenLongMapContainsHash!12 lt!827921 (tuple2!25191 context!72 a!1149) (hashF!4805 (cache!3262 cacheUp!790))))))

(declare-fun contains!4330 (ListLongMap!287 (_ BitVec 64)) Bool)

(assert (=> b!2221321 (contains!4330 lt!827921 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)))))

(declare-fun lt!827928 () Unit!38990)

(assert (=> b!2221321 (= lt!827928 lt!827923)))

(declare-fun lt!827919 () (_ BitVec 64))

(assert (=> b!2221321 (= lt!827919 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)))))

(declare-fun lt!827930 () List!26133)

(declare-fun apply!6444 (ListLongMap!287 (_ BitVec 64)) List!26133)

(assert (=> b!2221321 (= lt!827930 (apply!6444 lt!827921 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149))))))

(declare-fun lt!827908 () Unit!38990)

(declare-fun lemmaGetValueImpliesTupleContained!13 (ListLongMap!287 (_ BitVec 64) List!26133) Unit!38990)

(assert (=> b!2221321 (= lt!827908 (lemmaGetValueImpliesTupleContained!13 lt!827921 lt!827919 lt!827930))))

(assert (=> b!2221321 (contains!4329 (toList!1292 lt!827921) (tuple2!25203 lt!827919 lt!827930))))

(declare-fun lt!827934 () Unit!38990)

(assert (=> b!2221321 (= lt!827934 lt!827908)))

(declare-fun lt!827931 () Unit!38990)

(assert (=> b!2221321 (= lt!827931 (forallContained!769 (toList!1292 lt!827921) lambda!83856 (tuple2!25203 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)) (apply!6444 lt!827921 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149))))))))

(declare-fun lt!827932 () Unit!38990)

(declare-fun lemmaInGenMapThenGetPairDefined!12 (ListLongMap!287 tuple2!25190 Hashable!2882) Unit!38990)

(assert (=> b!2221321 (= lt!827932 (lemmaInGenMapThenGetPairDefined!12 lt!827921 (tuple2!25191 context!72 a!1149) (hashF!4805 (cache!3262 cacheUp!790))))))

(declare-fun lt!827935 () Unit!38990)

(assert (=> b!2221321 (= lt!827935 (lemmaInGenMapThenLongMapContainsHash!12 lt!827921 (tuple2!25191 context!72 a!1149) (hashF!4805 (cache!3262 cacheUp!790))))))

(declare-fun lt!827909 () Unit!38990)

(assert (=> b!2221321 (= lt!827909 lt!827935)))

(declare-fun lt!827929 () (_ BitVec 64))

(assert (=> b!2221321 (= lt!827929 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)))))

(declare-fun lt!827912 () List!26133)

(assert (=> b!2221321 (= lt!827912 (apply!6444 lt!827921 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149))))))

(declare-fun lt!827910 () Unit!38990)

(assert (=> b!2221321 (= lt!827910 (lemmaGetValueImpliesTupleContained!13 lt!827921 lt!827929 lt!827912))))

(assert (=> b!2221321 (contains!4329 (toList!1292 lt!827921) (tuple2!25203 lt!827929 lt!827912))))

(declare-fun lt!827924 () Unit!38990)

(assert (=> b!2221321 (= lt!827924 lt!827910)))

(declare-fun lt!827911 () Unit!38990)

(assert (=> b!2221321 (= lt!827911 (forallContained!769 (toList!1292 lt!827921) lambda!83856 (tuple2!25203 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)) (apply!6444 lt!827921 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149))))))))

(declare-fun isDefined!4120 (Option!5054) Bool)

(assert (=> b!2221321 (isDefined!4120 (getPair!22 (apply!6444 lt!827921 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149))) (tuple2!25191 context!72 a!1149)))))

(declare-fun lt!827918 () Unit!38990)

(assert (=> b!2221321 (= lt!827918 lt!827932)))

(declare-fun getValueByKey!61 (List!26133 tuple2!25190) Option!5053)

(declare-fun extractMap!91 (List!26135) ListMap!747)

(assert (=> b!2221321 (= (_2!14968 (get!7805 (getPair!22 (apply!6444 lt!827921 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149))) (tuple2!25191 context!72 a!1149)))) (get!7803 (getValueByKey!61 (toList!1290 (extractMap!91 (toList!1292 lt!827921))) (tuple2!25191 context!72 a!1149))))))

(declare-fun lt!827913 () Unit!38990)

(assert (=> b!2221321 (= lt!827913 lt!827926)))

(declare-fun b!2221322 () Bool)

(declare-fun e!1418790 () Bool)

(declare-fun lt!827927 () (InoxSet Context!3774))

(declare-fun dynLambda!11503 (Int tuple2!25190) (InoxSet Context!3774))

(assert (=> b!2221322 (= e!1418790 (= lt!827927 (dynLambda!11503 (defaultValue!3044 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149))))))

(declare-fun b!2221323 () Bool)

(assert (=> b!2221323 (= e!1418788 (dynLambda!11503 (defaultValue!3044 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)))))

(declare-fun b!2221324 () Bool)

(assert (=> b!2221324 false))

(declare-fun lt!827914 () Unit!38990)

(declare-fun lt!827933 () Unit!38990)

(assert (=> b!2221324 (= lt!827914 lt!827933)))

(declare-fun lt!827915 () List!26135)

(declare-fun lt!827922 () List!26133)

(assert (=> b!2221324 (contains!4329 lt!827915 (tuple2!25203 lt!827916 lt!827922))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!23 (List!26135 (_ BitVec 64) List!26133) Unit!38990)

(assert (=> b!2221324 (= lt!827933 (lemmaGetValueByKeyImpliesContainsTuple!23 lt!827915 lt!827916 lt!827922))))

(assert (=> b!2221324 (= lt!827922 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!827916))))

(assert (=> b!2221324 (= lt!827915 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))

(declare-fun lt!827907 () Unit!38990)

(declare-fun lt!827917 () Unit!38990)

(assert (=> b!2221324 (= lt!827907 lt!827917)))

(declare-fun lt!827925 () List!26135)

(declare-datatypes ((Option!5055 0))(
  ( (None!5054) (Some!5054 (v!29582 List!26133)) )
))
(declare-fun isDefined!4121 (Option!5055) Bool)

(declare-fun getValueByKey!62 (List!26135 (_ BitVec 64)) Option!5055)

(assert (=> b!2221324 (isDefined!4121 (getValueByKey!62 lt!827925 lt!827916))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!40 (List!26135 (_ BitVec 64)) Unit!38990)

(assert (=> b!2221324 (= lt!827917 (lemmaContainsKeyImpliesGetValueByKeyDefined!40 lt!827925 lt!827916))))

(assert (=> b!2221324 (= lt!827925 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))

(declare-fun Unit!38992 () Unit!38990)

(assert (=> b!2221324 (= e!1418789 Unit!38992)))

(declare-fun b!2221325 () Bool)

(assert (=> b!2221325 (= e!1418790 (= lt!827927 (get!7803 (getValueByKey!61 (toList!1290 (map!5281 (cache!3262 cacheUp!790))) (tuple2!25191 context!72 a!1149)))))))

(declare-fun d!663909 () Bool)

(assert (=> d!663909 e!1418790))

(declare-fun c!354707 () Bool)

(assert (=> d!663909 (= c!354707 (contains!4328 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149)))))

(assert (=> d!663909 (= lt!827927 e!1418788)))

(declare-fun c!354709 () Bool)

(assert (=> d!663909 (= c!354709 (not (contains!4328 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149))))))

(assert (=> d!663909 (valid!2293 (cache!3262 cacheUp!790))))

(assert (=> d!663909 (= (apply!6442 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149)) lt!827927)))

(declare-fun b!2221326 () Bool)

(declare-fun Unit!38993 () Unit!38990)

(assert (=> b!2221326 (= e!1418789 Unit!38993)))

(assert (= (and d!663909 c!354709) b!2221323))

(assert (= (and d!663909 (not c!354709)) b!2221321))

(assert (= (and b!2221321 c!354708) b!2221324))

(assert (= (and b!2221321 (not c!354708)) b!2221326))

(assert (= (and d!663909 c!354707) b!2221325))

(assert (= (and d!663909 (not c!354707)) b!2221322))

(declare-fun b_lambda!71537 () Bool)

(assert (=> (not b_lambda!71537) (not b!2221322)))

(declare-fun t!199536 () Bool)

(declare-fun tb!132841 () Bool)

(assert (=> (and b!2221040 (= (defaultValue!3044 (cache!3262 cacheUp!790)) (defaultValue!3044 (cache!3262 cacheUp!790))) t!199536) tb!132841))

(assert (=> b!2221322 t!199536))

(declare-fun result!161302 () Bool)

(declare-fun b_and!174317 () Bool)

(assert (= b_and!174309 (and (=> t!199536 result!161302) b_and!174317)))

(declare-fun b_lambda!71539 () Bool)

(assert (=> (not b_lambda!71539) (not b!2221323)))

(assert (=> b!2221323 t!199536))

(declare-fun b_and!174319 () Bool)

(assert (= b_and!174317 (and (=> t!199536 result!161302) b_and!174319)))

(declare-fun m!2661812 () Bool)

(assert (=> b!2221323 m!2661812))

(assert (=> b!2221322 m!2661812))

(declare-fun m!2661814 () Bool)

(assert (=> b!2221324 m!2661814))

(declare-fun m!2661816 () Bool)

(assert (=> b!2221324 m!2661816))

(declare-fun m!2661818 () Bool)

(assert (=> b!2221324 m!2661818))

(declare-fun m!2661820 () Bool)

(assert (=> b!2221324 m!2661820))

(assert (=> b!2221324 m!2661820))

(declare-fun m!2661822 () Bool)

(assert (=> b!2221324 m!2661822))

(declare-fun m!2661824 () Bool)

(assert (=> b!2221324 m!2661824))

(declare-fun m!2661826 () Bool)

(assert (=> b!2221324 m!2661826))

(declare-fun m!2661828 () Bool)

(assert (=> b!2221321 m!2661828))

(declare-fun m!2661830 () Bool)

(assert (=> b!2221321 m!2661830))

(declare-fun m!2661832 () Bool)

(assert (=> b!2221321 m!2661832))

(declare-fun m!2661834 () Bool)

(assert (=> b!2221321 m!2661834))

(declare-fun m!2661836 () Bool)

(assert (=> b!2221321 m!2661836))

(declare-fun m!2661838 () Bool)

(assert (=> b!2221321 m!2661838))

(assert (=> b!2221321 m!2661828))

(declare-fun m!2661840 () Bool)

(assert (=> b!2221321 m!2661840))

(declare-fun m!2661842 () Bool)

(assert (=> b!2221321 m!2661842))

(declare-fun m!2661844 () Bool)

(assert (=> b!2221321 m!2661844))

(assert (=> b!2221321 m!2661830))

(declare-fun m!2661846 () Bool)

(assert (=> b!2221321 m!2661846))

(declare-fun m!2661848 () Bool)

(assert (=> b!2221321 m!2661848))

(declare-fun m!2661850 () Bool)

(assert (=> b!2221321 m!2661850))

(assert (=> b!2221321 m!2661826))

(assert (=> b!2221321 m!2661842))

(assert (=> b!2221321 m!2661814))

(declare-fun m!2661852 () Bool)

(assert (=> b!2221321 m!2661852))

(declare-fun m!2661854 () Bool)

(assert (=> b!2221321 m!2661854))

(assert (=> b!2221321 m!2661814))

(assert (=> b!2221321 m!2661848))

(declare-fun m!2661856 () Bool)

(assert (=> b!2221321 m!2661856))

(declare-fun m!2661858 () Bool)

(assert (=> b!2221321 m!2661858))

(assert (=> b!2221321 m!2661834))

(declare-fun m!2661860 () Bool)

(assert (=> b!2221321 m!2661860))

(declare-fun m!2661862 () Bool)

(assert (=> b!2221321 m!2661862))

(declare-fun m!2661864 () Bool)

(assert (=> b!2221321 m!2661864))

(assert (=> b!2221321 m!2661842))

(declare-fun m!2661866 () Bool)

(assert (=> b!2221321 m!2661866))

(declare-fun m!2661868 () Bool)

(assert (=> b!2221321 m!2661868))

(assert (=> b!2221321 m!2661844))

(assert (=> b!2221321 m!2661830))

(declare-fun m!2661870 () Bool)

(assert (=> b!2221325 m!2661870))

(declare-fun m!2661872 () Bool)

(assert (=> b!2221325 m!2661872))

(assert (=> b!2221325 m!2661872))

(declare-fun m!2661874 () Bool)

(assert (=> b!2221325 m!2661874))

(assert (=> d!663909 m!2661658))

(declare-fun m!2661876 () Bool)

(assert (=> d!663909 m!2661876))

(assert (=> b!2221086 d!663909))

(declare-fun bs!452456 () Bool)

(declare-fun b!2221333 () Bool)

(assert (= bs!452456 (and b!2221333 b!2221100)))

(declare-fun lambda!83859 () Int)

(assert (=> bs!452456 (= lambda!83859 lambda!83839)))

(declare-fun d!663911 () Bool)

(declare-fun e!1418798 () Bool)

(assert (=> d!663911 e!1418798))

(declare-fun res!953614 () Bool)

(assert (=> d!663911 (=> res!953614 e!1418798)))

(assert (=> d!663911 (= res!953614 (not (contains!4328 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149))))))

(declare-fun lt!827953 () Unit!38990)

(declare-fun e!1418799 () Unit!38990)

(assert (=> d!663911 (= lt!827953 e!1418799)))

(declare-fun c!354712 () Bool)

(assert (=> d!663911 (= c!354712 (contains!4328 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149)))))

(assert (=> d!663911 (validCacheMapUp!266 (cache!3262 cacheUp!790))))

(assert (=> d!663911 (= (lemmaIfInCacheThenValid!19 cacheUp!790 context!72 a!1149) lt!827953)))

(declare-fun lt!827951 () Unit!38990)

(assert (=> b!2221333 (= e!1418799 lt!827951)))

(declare-fun lt!827952 () tuple2!25190)

(assert (=> b!2221333 (= lt!827952 (tuple2!25191 context!72 a!1149))))

(declare-fun lemmaForallPairsThenForLookup!14 (MutableMap!2882 tuple2!25190 Int) Unit!38990)

(assert (=> b!2221333 (= lt!827951 (lemmaForallPairsThenForLookup!14 (cache!3262 cacheUp!790) lt!827952 lambda!83859))))

(declare-fun lt!827954 () tuple2!25192)

(assert (=> b!2221333 (= lt!827954 (tuple2!25193 lt!827952 (apply!6442 (cache!3262 cacheUp!790) lt!827952)))))

(declare-fun lt!827957 () tuple2!25190)

(assert (=> b!2221333 (= lt!827957 lt!827952)))

(declare-fun lt!827955 () (InoxSet Context!3774))

(assert (=> b!2221333 (= lt!827955 (apply!6442 (cache!3262 cacheUp!790) lt!827952))))

(declare-fun lt!827956 () (InoxSet Context!3774))

(assert (=> b!2221333 (= lt!827956 (apply!6442 (cache!3262 cacheUp!790) lt!827952))))

(assert (=> b!2221333 (= (apply!6442 (cache!3262 cacheUp!790) lt!827952) (derivationStepZipperUp!16 (_1!14967 lt!827952) (_2!14967 lt!827952)))))

(declare-fun b!2221334 () Bool)

(declare-fun Unit!38994 () Unit!38990)

(assert (=> b!2221334 (= e!1418799 Unit!38994)))

(declare-fun b!2221335 () Bool)

(assert (=> b!2221335 (= e!1418798 (= (derivationStepZipperUp!16 context!72 a!1149) (apply!6442 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149))))))

(assert (= (and d!663911 c!354712) b!2221333))

(assert (= (and d!663911 (not c!354712)) b!2221334))

(assert (= (and d!663911 (not res!953614)) b!2221335))

(assert (=> d!663911 m!2661658))

(assert (=> d!663911 m!2661660))

(declare-fun m!2661878 () Bool)

(assert (=> b!2221333 m!2661878))

(declare-fun m!2661880 () Bool)

(assert (=> b!2221333 m!2661880))

(declare-fun m!2661882 () Bool)

(assert (=> b!2221333 m!2661882))

(assert (=> b!2221335 m!2661668))

(assert (=> b!2221335 m!2661662))

(assert (=> b!2221086 d!663911))

(declare-fun d!663913 () Bool)

(declare-fun lt!827960 () tuple2!25200)

(assert (=> d!663913 (validCacheMapDown!259 (cache!3263 (_2!14974 lt!827960)))))

(declare-fun choose!13105 (CacheDown!1882 Regex!6339 Context!3774 C!12824 (InoxSet Context!3774)) tuple2!25200)

(assert (=> d!663913 (= lt!827960 (choose!13105 (_2!14972 lt!827827) (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149 (_1!14972 lt!827827)))))

(assert (=> d!663913 (validCacheMapDown!259 (cache!3263 (_2!14972 lt!827827)))))

(assert (=> d!663913 (= (update!111 (_2!14972 lt!827827) (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149 (_1!14972 lt!827827)) lt!827960)))

(declare-fun bs!452457 () Bool)

(assert (= bs!452457 d!663913))

(declare-fun m!2661884 () Bool)

(assert (=> bs!452457 m!2661884))

(declare-fun m!2661886 () Bool)

(assert (=> bs!452457 m!2661886))

(declare-fun m!2661888 () Bool)

(assert (=> bs!452457 m!2661888))

(assert (=> b!2221135 d!663913))

(declare-fun bs!452458 () Bool)

(declare-fun d!663915 () Bool)

(assert (= bs!452458 (and d!663915 d!663905)))

(declare-fun lambda!83860 () Int)

(assert (=> bs!452458 (= lambda!83860 lambda!83848)))

(declare-fun bs!452459 () Bool)

(assert (= bs!452459 (and d!663915 d!663907)))

(assert (=> bs!452459 (= lambda!83860 lambda!83849)))

(declare-fun bs!452460 () Bool)

(assert (= bs!452460 (and d!663915 d!663895)))

(assert (=> bs!452460 (= lambda!83860 lambda!83842)))

(declare-fun bs!452461 () Bool)

(assert (= bs!452461 (and d!663915 d!663903)))

(assert (=> bs!452461 (= lambda!83860 lambda!83847)))

(declare-fun bs!452462 () Bool)

(assert (= bs!452462 (and d!663915 d!663897)))

(assert (=> bs!452462 (= lambda!83860 lambda!83843)))

(declare-fun bs!452463 () Bool)

(assert (= bs!452463 (and d!663915 d!663891)))

(assert (=> bs!452463 (= lambda!83860 lambda!83840)))

(declare-fun bs!452464 () Bool)

(assert (= bs!452464 (and d!663915 d!663873)))

(assert (=> bs!452464 (= lambda!83860 lambda!83836)))

(declare-fun bs!452465 () Bool)

(assert (= bs!452465 (and d!663915 d!663893)))

(assert (=> bs!452465 (= lambda!83860 lambda!83841)))

(assert (=> d!663915 (= (inv!35358 (_2!14969 (_1!14970 (h!31441 mapValue!14024)))) (forall!5298 (exprs!2387 (_2!14969 (_1!14970 (h!31441 mapValue!14024)))) lambda!83860))))

(declare-fun bs!452466 () Bool)

(assert (= bs!452466 d!663915))

(declare-fun m!2661890 () Bool)

(assert (=> bs!452466 m!2661890))

(assert (=> b!2221182 d!663915))

(declare-fun lt!827962 () tuple2!25196)

(declare-fun b!2221336 () Bool)

(declare-fun lt!827961 () tuple3!3806)

(assert (=> b!2221336 (= lt!827961 (derivationStepZipperUpMem!1 (Context!3775 (t!199532 (exprs!2387 (Context!3775 (t!199532 (exprs!2387 lt!827778)))))) a!1149 cacheUp!790 (_2!14972 lt!827962)))))

(declare-fun call!132574 () tuple2!25196)

(assert (=> b!2221336 (= lt!827962 call!132574)))

(declare-fun e!1418803 () tuple3!3806)

(assert (=> b!2221336 (= e!1418803 (tuple3!3807 ((_ map or) (_1!14972 lt!827962) (_1!14971 lt!827961)) (_2!14971 lt!827961) (_3!2373 lt!827961)))))

(declare-fun b!2221337 () Bool)

(declare-fun e!1418802 () tuple3!3806)

(declare-fun lt!827964 () tuple2!25196)

(assert (=> b!2221337 (= e!1418802 (tuple3!3807 (_1!14972 lt!827964) cacheUp!790 (_2!14972 lt!827964)))))

(assert (=> b!2221337 (= lt!827964 call!132574)))

(declare-fun d!663917 () Bool)

(declare-fun lt!827963 () tuple3!3806)

(assert (=> d!663917 (= (_1!14971 lt!827963) (derivationStepZipperUp!16 (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149))))

(declare-fun e!1418800 () tuple3!3806)

(assert (=> d!663917 (= lt!827963 e!1418800)))

(declare-fun c!354715 () Bool)

(declare-fun lt!827966 () Option!5053)

(assert (=> d!663917 (= c!354715 ((_ is Some!5052) lt!827966))))

(assert (=> d!663917 (= lt!827966 (get!7802 cacheUp!790 (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149))))

(assert (=> d!663917 (= (derivationStepZipperUpMem!1 (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149 cacheUp!790 (_2!14972 lt!827797)) lt!827963)))

(declare-fun b!2221338 () Bool)

(declare-fun e!1418801 () Bool)

(assert (=> b!2221338 (= e!1418801 (nullable!1722 (h!31439 (exprs!2387 (Context!3775 (t!199532 (exprs!2387 lt!827778)))))))))

(declare-fun b!2221339 () Bool)

(assert (=> b!2221339 (= e!1418800 (tuple3!3807 (v!29580 lt!827966) cacheUp!790 (_2!14972 lt!827797)))))

(declare-fun b!2221340 () Bool)

(assert (=> b!2221340 (= e!1418802 (tuple3!3807 ((as const (Array Context!3774 Bool)) false) cacheUp!790 (_2!14972 lt!827797)))))

(declare-fun b!2221341 () Bool)

(declare-fun c!354714 () Bool)

(assert (=> b!2221341 (= c!354714 ((_ is Cons!26038) (exprs!2387 (Context!3775 (t!199532 (exprs!2387 lt!827778))))))))

(assert (=> b!2221341 (= e!1418803 e!1418802)))

(declare-fun b!2221342 () Bool)

(declare-fun lt!827965 () tuple3!3806)

(assert (=> b!2221342 (= e!1418800 (tuple3!3807 (_1!14971 lt!827965) (_2!14973 (update!110 (_2!14971 lt!827965) (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149 (_1!14971 lt!827965))) (_3!2373 lt!827965)))))

(declare-fun res!953616 () Bool)

(assert (=> b!2221342 (= res!953616 ((_ is Cons!26038) (exprs!2387 (Context!3775 (t!199532 (exprs!2387 lt!827778))))))))

(assert (=> b!2221342 (=> (not res!953616) (not e!1418801))))

(declare-fun c!354713 () Bool)

(assert (=> b!2221342 (= c!354713 e!1418801)))

(assert (=> b!2221342 (= lt!827965 e!1418803)))

(declare-fun bm!132569 () Bool)

(assert (=> bm!132569 (= call!132574 (derivationStepZipperDownMem!2 (h!31439 (exprs!2387 (Context!3775 (t!199532 (exprs!2387 lt!827778))))) (Context!3775 (t!199532 (exprs!2387 (Context!3775 (t!199532 (exprs!2387 lt!827778)))))) a!1149 (_2!14972 lt!827797)))))

(assert (= (and d!663917 c!354715) b!2221339))

(assert (= (and d!663917 (not c!354715)) b!2221342))

(assert (= (and b!2221342 res!953616) b!2221338))

(assert (= (and b!2221342 c!354713) b!2221336))

(assert (= (and b!2221342 (not c!354713)) b!2221341))

(assert (= (and b!2221341 c!354714) b!2221337))

(assert (= (and b!2221341 (not c!354714)) b!2221340))

(assert (= (or b!2221336 b!2221337) bm!132569))

(declare-fun m!2661892 () Bool)

(assert (=> d!663917 m!2661892))

(declare-fun m!2661894 () Bool)

(assert (=> d!663917 m!2661894))

(declare-fun m!2661896 () Bool)

(assert (=> b!2221342 m!2661896))

(declare-fun m!2661898 () Bool)

(assert (=> b!2221338 m!2661898))

(declare-fun m!2661900 () Bool)

(assert (=> b!2221336 m!2661900))

(declare-fun m!2661902 () Bool)

(assert (=> bm!132569 m!2661902))

(assert (=> b!2221073 d!663917))

(declare-fun bs!452467 () Bool)

(declare-fun d!663919 () Bool)

(assert (= bs!452467 (and d!663919 d!663905)))

(declare-fun lambda!83861 () Int)

(assert (=> bs!452467 (= lambda!83861 lambda!83848)))

(declare-fun bs!452468 () Bool)

(assert (= bs!452468 (and d!663919 d!663907)))

(assert (=> bs!452468 (= lambda!83861 lambda!83849)))

(declare-fun bs!452469 () Bool)

(assert (= bs!452469 (and d!663919 d!663895)))

(assert (=> bs!452469 (= lambda!83861 lambda!83842)))

(declare-fun bs!452470 () Bool)

(assert (= bs!452470 (and d!663919 d!663903)))

(assert (=> bs!452470 (= lambda!83861 lambda!83847)))

(declare-fun bs!452471 () Bool)

(assert (= bs!452471 (and d!663919 d!663897)))

(assert (=> bs!452471 (= lambda!83861 lambda!83843)))

(declare-fun bs!452472 () Bool)

(assert (= bs!452472 (and d!663919 d!663891)))

(assert (=> bs!452472 (= lambda!83861 lambda!83840)))

(declare-fun bs!452473 () Bool)

(assert (= bs!452473 (and d!663919 d!663873)))

(assert (=> bs!452473 (= lambda!83861 lambda!83836)))

(declare-fun bs!452474 () Bool)

(assert (= bs!452474 (and d!663919 d!663893)))

(assert (=> bs!452474 (= lambda!83861 lambda!83841)))

(declare-fun bs!452475 () Bool)

(assert (= bs!452475 (and d!663919 d!663915)))

(assert (=> bs!452475 (= lambda!83861 lambda!83860)))

(assert (=> d!663919 (= (inv!35358 setElem!19437) (forall!5298 (exprs!2387 setElem!19437) lambda!83861))))

(declare-fun bs!452476 () Bool)

(assert (= bs!452476 d!663919))

(declare-fun m!2661904 () Bool)

(assert (=> bs!452476 m!2661904))

(assert (=> setNonEmpty!19437 d!663919))

(declare-fun bs!452477 () Bool)

(declare-fun d!663921 () Bool)

(assert (= bs!452477 (and d!663921 d!663905)))

(declare-fun lambda!83862 () Int)

(assert (=> bs!452477 (= lambda!83862 lambda!83848)))

(declare-fun bs!452478 () Bool)

(assert (= bs!452478 (and d!663921 d!663907)))

(assert (=> bs!452478 (= lambda!83862 lambda!83849)))

(declare-fun bs!452479 () Bool)

(assert (= bs!452479 (and d!663921 d!663895)))

(assert (=> bs!452479 (= lambda!83862 lambda!83842)))

(declare-fun bs!452480 () Bool)

(assert (= bs!452480 (and d!663921 d!663903)))

(assert (=> bs!452480 (= lambda!83862 lambda!83847)))

(declare-fun bs!452481 () Bool)

(assert (= bs!452481 (and d!663921 d!663897)))

(assert (=> bs!452481 (= lambda!83862 lambda!83843)))

(declare-fun bs!452482 () Bool)

(assert (= bs!452482 (and d!663921 d!663919)))

(assert (=> bs!452482 (= lambda!83862 lambda!83861)))

(declare-fun bs!452483 () Bool)

(assert (= bs!452483 (and d!663921 d!663891)))

(assert (=> bs!452483 (= lambda!83862 lambda!83840)))

(declare-fun bs!452484 () Bool)

(assert (= bs!452484 (and d!663921 d!663873)))

(assert (=> bs!452484 (= lambda!83862 lambda!83836)))

(declare-fun bs!452485 () Bool)

(assert (= bs!452485 (and d!663921 d!663893)))

(assert (=> bs!452485 (= lambda!83862 lambda!83841)))

(declare-fun bs!452486 () Bool)

(assert (= bs!452486 (and d!663921 d!663915)))

(assert (=> bs!452486 (= lambda!83862 lambda!83860)))

(assert (=> d!663921 (= (inv!35358 (_1!14967 (_1!14968 (h!31440 mapDefault!14021)))) (forall!5298 (exprs!2387 (_1!14967 (_1!14968 (h!31440 mapDefault!14021)))) lambda!83862))))

(declare-fun bs!452487 () Bool)

(assert (= bs!452487 d!663921))

(declare-fun m!2661906 () Bool)

(assert (=> bs!452487 m!2661906))

(assert (=> b!2221193 d!663921))

(declare-fun bs!452488 () Bool)

(declare-fun d!663923 () Bool)

(assert (= bs!452488 (and d!663923 d!663905)))

(declare-fun lambda!83863 () Int)

(assert (=> bs!452488 (= lambda!83863 lambda!83848)))

(declare-fun bs!452489 () Bool)

(assert (= bs!452489 (and d!663923 d!663907)))

(assert (=> bs!452489 (= lambda!83863 lambda!83849)))

(declare-fun bs!452490 () Bool)

(assert (= bs!452490 (and d!663923 d!663895)))

(assert (=> bs!452490 (= lambda!83863 lambda!83842)))

(declare-fun bs!452491 () Bool)

(assert (= bs!452491 (and d!663923 d!663903)))

(assert (=> bs!452491 (= lambda!83863 lambda!83847)))

(declare-fun bs!452492 () Bool)

(assert (= bs!452492 (and d!663923 d!663897)))

(assert (=> bs!452492 (= lambda!83863 lambda!83843)))

(declare-fun bs!452493 () Bool)

(assert (= bs!452493 (and d!663923 d!663921)))

(assert (=> bs!452493 (= lambda!83863 lambda!83862)))

(declare-fun bs!452494 () Bool)

(assert (= bs!452494 (and d!663923 d!663919)))

(assert (=> bs!452494 (= lambda!83863 lambda!83861)))

(declare-fun bs!452495 () Bool)

(assert (= bs!452495 (and d!663923 d!663891)))

(assert (=> bs!452495 (= lambda!83863 lambda!83840)))

(declare-fun bs!452496 () Bool)

(assert (= bs!452496 (and d!663923 d!663873)))

(assert (=> bs!452496 (= lambda!83863 lambda!83836)))

(declare-fun bs!452497 () Bool)

(assert (= bs!452497 (and d!663923 d!663893)))

(assert (=> bs!452497 (= lambda!83863 lambda!83841)))

(declare-fun bs!452498 () Bool)

(assert (= bs!452498 (and d!663923 d!663915)))

(assert (=> bs!452498 (= lambda!83863 lambda!83860)))

(assert (=> d!663923 (= (inv!35358 setElem!19445) (forall!5298 (exprs!2387 setElem!19445) lambda!83863))))

(declare-fun bs!452499 () Bool)

(assert (= bs!452499 d!663923))

(declare-fun m!2661908 () Bool)

(assert (=> bs!452499 m!2661908))

(assert (=> setNonEmpty!19444 d!663923))

(declare-fun d!663925 () Bool)

(assert (=> d!663925 (= (get!7803 lt!827807) (v!29580 lt!827807))))

(assert (=> b!2221088 d!663925))

(declare-fun b!2221353 () Bool)

(declare-fun e!1418812 () (InoxSet Context!3774))

(assert (=> b!2221353 (= e!1418812 ((as const (Array Context!3774 Bool)) false))))

(declare-fun e!1418810 () (InoxSet Context!3774))

(declare-fun call!132577 () (InoxSet Context!3774))

(declare-fun b!2221354 () Bool)

(assert (=> b!2221354 (= e!1418810 ((_ map or) call!132577 (derivationStepZipperUp!16 (Context!3775 (t!199532 (exprs!2387 context!72))) a!1149)))))

(declare-fun bm!132572 () Bool)

(assert (=> bm!132572 (= call!132577 (derivationStepZipperDown!17 (h!31439 (exprs!2387 context!72)) (Context!3775 (t!199532 (exprs!2387 context!72))) a!1149))))

(declare-fun b!2221355 () Bool)

(declare-fun e!1418811 () Bool)

(assert (=> b!2221355 (= e!1418811 (nullable!1722 (h!31439 (exprs!2387 context!72))))))

(declare-fun d!663927 () Bool)

(declare-fun c!354721 () Bool)

(assert (=> d!663927 (= c!354721 e!1418811)))

(declare-fun res!953619 () Bool)

(assert (=> d!663927 (=> (not res!953619) (not e!1418811))))

(assert (=> d!663927 (= res!953619 ((_ is Cons!26038) (exprs!2387 context!72)))))

(assert (=> d!663927 (= (derivationStepZipperUp!16 context!72 a!1149) e!1418810)))

(declare-fun b!2221356 () Bool)

(assert (=> b!2221356 (= e!1418810 e!1418812)))

(declare-fun c!354720 () Bool)

(assert (=> b!2221356 (= c!354720 ((_ is Cons!26038) (exprs!2387 context!72)))))

(declare-fun b!2221357 () Bool)

(assert (=> b!2221357 (= e!1418812 call!132577)))

(assert (= (and d!663927 res!953619) b!2221355))

(assert (= (and d!663927 c!354721) b!2221354))

(assert (= (and d!663927 (not c!354721)) b!2221356))

(assert (= (and b!2221356 c!354720) b!2221357))

(assert (= (and b!2221356 (not c!354720)) b!2221353))

(assert (= (or b!2221354 b!2221357) bm!132572))

(declare-fun m!2661910 () Bool)

(assert (=> b!2221354 m!2661910))

(declare-fun m!2661912 () Bool)

(assert (=> bm!132572 m!2661912))

(assert (=> b!2221355 m!2661634))

(assert (=> b!2221088 d!663927))

(declare-fun bs!452500 () Bool)

(declare-fun b!2221362 () Bool)

(assert (= bs!452500 (and b!2221362 b!2221321)))

(declare-fun lambda!83866 () Int)

(assert (=> bs!452500 (= lambda!83866 lambda!83856)))

(declare-fun d!663929 () Bool)

(declare-fun res!953624 () Bool)

(declare-fun e!1418815 () Bool)

(assert (=> d!663929 (=> (not res!953624) (not e!1418815))))

(declare-fun valid!2295 (MutLongMap!2972) Bool)

(assert (=> d!663929 (= res!953624 (valid!2295 (v!29579 (underlying!6146 (cache!3262 (_2!14971 e!1418597))))))))

(assert (=> d!663929 (= (valid!2293 (cache!3262 (_2!14971 e!1418597))) e!1418815)))

(declare-fun res!953625 () Bool)

(assert (=> b!2221362 (=> (not res!953625) (not e!1418815))))

(declare-fun forall!5301 (List!26135 Int) Bool)

(assert (=> b!2221362 (= res!953625 (forall!5301 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 (_2!14971 e!1418597)))))) lambda!83866))))

(declare-fun b!2221363 () Bool)

(declare-fun allKeysSameHashInMap!94 (ListLongMap!287 Hashable!2882) Bool)

(assert (=> b!2221363 (= e!1418815 (allKeysSameHashInMap!94 (map!5283 (v!29579 (underlying!6146 (cache!3262 (_2!14971 e!1418597))))) (hashF!4805 (cache!3262 (_2!14971 e!1418597)))))))

(assert (= (and d!663929 res!953624) b!2221362))

(assert (= (and b!2221362 res!953625) b!2221363))

(declare-fun m!2661914 () Bool)

(assert (=> d!663929 m!2661914))

(declare-fun m!2661916 () Bool)

(assert (=> b!2221362 m!2661916))

(declare-fun m!2661918 () Bool)

(assert (=> b!2221362 m!2661918))

(assert (=> b!2221363 m!2661916))

(assert (=> b!2221363 m!2661916))

(declare-fun m!2661920 () Bool)

(assert (=> b!2221363 m!2661920))

(assert (=> d!663877 d!663929))

(declare-fun d!663931 () Bool)

(assert (=> d!663931 (= (nullable!1722 (regOne!13190 (h!31439 (exprs!2387 context!72)))) (nullableFct!398 (regOne!13190 (h!31439 (exprs!2387 context!72)))))))

(declare-fun bs!452501 () Bool)

(assert (= bs!452501 d!663931))

(declare-fun m!2661922 () Bool)

(assert (=> bs!452501 m!2661922))

(assert (=> b!2221137 d!663931))

(declare-fun d!663933 () Bool)

(declare-fun res!953630 () Bool)

(declare-fun e!1418820 () Bool)

(assert (=> d!663933 (=> res!953630 e!1418820)))

(assert (=> d!663933 (= res!953630 ((_ is Nil!26039) (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597))))))))

(assert (=> d!663933 (= (forall!5299 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597)))) lambda!83839) e!1418820)))

(declare-fun b!2221368 () Bool)

(declare-fun e!1418821 () Bool)

(assert (=> b!2221368 (= e!1418820 e!1418821)))

(declare-fun res!953631 () Bool)

(assert (=> b!2221368 (=> (not res!953631) (not e!1418821))))

(declare-fun dynLambda!11504 (Int tuple2!25192) Bool)

(assert (=> b!2221368 (= res!953631 (dynLambda!11504 lambda!83839 (h!31440 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597)))))))))

(declare-fun b!2221369 () Bool)

(assert (=> b!2221369 (= e!1418821 (forall!5299 (t!199533 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597))))) lambda!83839))))

(assert (= (and d!663933 (not res!953630)) b!2221368))

(assert (= (and b!2221368 res!953631) b!2221369))

(declare-fun b_lambda!71541 () Bool)

(assert (=> (not b_lambda!71541) (not b!2221368)))

(declare-fun m!2661924 () Bool)

(assert (=> b!2221368 m!2661924))

(declare-fun m!2661926 () Bool)

(assert (=> b!2221369 m!2661926))

(assert (=> b!2221100 d!663933))

(declare-fun d!663935 () Bool)

(declare-fun lt!827969 () ListMap!747)

(assert (=> d!663935 (invariantList!342 (toList!1290 lt!827969))))

(assert (=> d!663935 (= lt!827969 (extractMap!91 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 (_2!14971 e!1418597))))))))))

(assert (=> d!663935 (valid!2293 (cache!3262 (_2!14971 e!1418597)))))

(assert (=> d!663935 (= (map!5281 (cache!3262 (_2!14971 e!1418597))) lt!827969)))

(declare-fun bs!452502 () Bool)

(assert (= bs!452502 d!663935))

(declare-fun m!2661928 () Bool)

(assert (=> bs!452502 m!2661928))

(assert (=> bs!452502 m!2661916))

(declare-fun m!2661930 () Bool)

(assert (=> bs!452502 m!2661930))

(assert (=> bs!452502 m!2661675))

(assert (=> b!2221100 d!663935))

(declare-fun bs!452503 () Bool)

(declare-fun d!663937 () Bool)

(assert (= bs!452503 (and d!663937 d!663905)))

(declare-fun lambda!83867 () Int)

(assert (=> bs!452503 (= lambda!83867 lambda!83848)))

(declare-fun bs!452504 () Bool)

(assert (= bs!452504 (and d!663937 d!663907)))

(assert (=> bs!452504 (= lambda!83867 lambda!83849)))

(declare-fun bs!452505 () Bool)

(assert (= bs!452505 (and d!663937 d!663903)))

(assert (=> bs!452505 (= lambda!83867 lambda!83847)))

(declare-fun bs!452506 () Bool)

(assert (= bs!452506 (and d!663937 d!663897)))

(assert (=> bs!452506 (= lambda!83867 lambda!83843)))

(declare-fun bs!452507 () Bool)

(assert (= bs!452507 (and d!663937 d!663921)))

(assert (=> bs!452507 (= lambda!83867 lambda!83862)))

(declare-fun bs!452508 () Bool)

(assert (= bs!452508 (and d!663937 d!663919)))

(assert (=> bs!452508 (= lambda!83867 lambda!83861)))

(declare-fun bs!452509 () Bool)

(assert (= bs!452509 (and d!663937 d!663891)))

(assert (=> bs!452509 (= lambda!83867 lambda!83840)))

(declare-fun bs!452510 () Bool)

(assert (= bs!452510 (and d!663937 d!663873)))

(assert (=> bs!452510 (= lambda!83867 lambda!83836)))

(declare-fun bs!452511 () Bool)

(assert (= bs!452511 (and d!663937 d!663893)))

(assert (=> bs!452511 (= lambda!83867 lambda!83841)))

(declare-fun bs!452512 () Bool)

(assert (= bs!452512 (and d!663937 d!663915)))

(assert (=> bs!452512 (= lambda!83867 lambda!83860)))

(declare-fun bs!452513 () Bool)

(assert (= bs!452513 (and d!663937 d!663923)))

(assert (=> bs!452513 (= lambda!83867 lambda!83863)))

(declare-fun bs!452514 () Bool)

(assert (= bs!452514 (and d!663937 d!663895)))

(assert (=> bs!452514 (= lambda!83867 lambda!83842)))

(assert (=> d!663937 (= (inv!35358 (_2!14969 (_1!14970 (h!31441 mapValue!14020)))) (forall!5298 (exprs!2387 (_2!14969 (_1!14970 (h!31441 mapValue!14020)))) lambda!83867))))

(declare-fun bs!452515 () Bool)

(assert (= bs!452515 d!663937))

(declare-fun m!2661932 () Bool)

(assert (=> bs!452515 m!2661932))

(assert (=> b!2221185 d!663937))

(declare-fun d!663939 () Bool)

(assert (=> d!663939 (= (nullable!1722 (h!31439 (exprs!2387 lt!827778))) (nullableFct!398 (h!31439 (exprs!2387 lt!827778))))))

(declare-fun bs!452516 () Bool)

(assert (= bs!452516 d!663939))

(declare-fun m!2661934 () Bool)

(assert (=> bs!452516 m!2661934))

(assert (=> b!2221075 d!663939))

(declare-fun bs!452517 () Bool)

(declare-fun d!663941 () Bool)

(assert (= bs!452517 (and d!663941 d!663905)))

(declare-fun lambda!83868 () Int)

(assert (=> bs!452517 (= lambda!83868 lambda!83848)))

(declare-fun bs!452518 () Bool)

(assert (= bs!452518 (and d!663941 d!663907)))

(assert (=> bs!452518 (= lambda!83868 lambda!83849)))

(declare-fun bs!452519 () Bool)

(assert (= bs!452519 (and d!663941 d!663903)))

(assert (=> bs!452519 (= lambda!83868 lambda!83847)))

(declare-fun bs!452520 () Bool)

(assert (= bs!452520 (and d!663941 d!663897)))

(assert (=> bs!452520 (= lambda!83868 lambda!83843)))

(declare-fun bs!452521 () Bool)

(assert (= bs!452521 (and d!663941 d!663921)))

(assert (=> bs!452521 (= lambda!83868 lambda!83862)))

(declare-fun bs!452522 () Bool)

(assert (= bs!452522 (and d!663941 d!663919)))

(assert (=> bs!452522 (= lambda!83868 lambda!83861)))

(declare-fun bs!452523 () Bool)

(assert (= bs!452523 (and d!663941 d!663891)))

(assert (=> bs!452523 (= lambda!83868 lambda!83840)))

(declare-fun bs!452524 () Bool)

(assert (= bs!452524 (and d!663941 d!663873)))

(assert (=> bs!452524 (= lambda!83868 lambda!83836)))

(declare-fun bs!452525 () Bool)

(assert (= bs!452525 (and d!663941 d!663893)))

(assert (=> bs!452525 (= lambda!83868 lambda!83841)))

(declare-fun bs!452526 () Bool)

(assert (= bs!452526 (and d!663941 d!663937)))

(assert (=> bs!452526 (= lambda!83868 lambda!83867)))

(declare-fun bs!452527 () Bool)

(assert (= bs!452527 (and d!663941 d!663915)))

(assert (=> bs!452527 (= lambda!83868 lambda!83860)))

(declare-fun bs!452528 () Bool)

(assert (= bs!452528 (and d!663941 d!663923)))

(assert (=> bs!452528 (= lambda!83868 lambda!83863)))

(declare-fun bs!452529 () Bool)

(assert (= bs!452529 (and d!663941 d!663895)))

(assert (=> bs!452529 (= lambda!83868 lambda!83842)))

(assert (=> d!663941 (= (inv!35358 (_1!14967 (_1!14968 (h!31440 mapValue!14027)))) (forall!5298 (exprs!2387 (_1!14967 (_1!14968 (h!31440 mapValue!14027)))) lambda!83868))))

(declare-fun bs!452530 () Bool)

(assert (= bs!452530 d!663941))

(declare-fun m!2661936 () Bool)

(assert (=> bs!452530 m!2661936))

(assert (=> b!2221213 d!663941))

(declare-fun d!663943 () Bool)

(declare-fun noDuplicatedKeys!67 (List!26133) Bool)

(assert (=> d!663943 (= (invariantList!342 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597))))) (noDuplicatedKeys!67 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597))))))))

(declare-fun bs!452531 () Bool)

(assert (= bs!452531 d!663943))

(declare-fun m!2661938 () Bool)

(assert (=> bs!452531 m!2661938))

(assert (=> b!2221099 d!663943))

(assert (=> b!2221099 d!663935))

(declare-fun bs!452532 () Bool)

(declare-fun d!663945 () Bool)

(assert (= bs!452532 (and d!663945 d!663905)))

(declare-fun lambda!83869 () Int)

(assert (=> bs!452532 (= lambda!83869 lambda!83848)))

(declare-fun bs!452533 () Bool)

(assert (= bs!452533 (and d!663945 d!663907)))

(assert (=> bs!452533 (= lambda!83869 lambda!83849)))

(declare-fun bs!452534 () Bool)

(assert (= bs!452534 (and d!663945 d!663903)))

(assert (=> bs!452534 (= lambda!83869 lambda!83847)))

(declare-fun bs!452535 () Bool)

(assert (= bs!452535 (and d!663945 d!663897)))

(assert (=> bs!452535 (= lambda!83869 lambda!83843)))

(declare-fun bs!452536 () Bool)

(assert (= bs!452536 (and d!663945 d!663921)))

(assert (=> bs!452536 (= lambda!83869 lambda!83862)))

(declare-fun bs!452537 () Bool)

(assert (= bs!452537 (and d!663945 d!663919)))

(assert (=> bs!452537 (= lambda!83869 lambda!83861)))

(declare-fun bs!452538 () Bool)

(assert (= bs!452538 (and d!663945 d!663941)))

(assert (=> bs!452538 (= lambda!83869 lambda!83868)))

(declare-fun bs!452539 () Bool)

(assert (= bs!452539 (and d!663945 d!663891)))

(assert (=> bs!452539 (= lambda!83869 lambda!83840)))

(declare-fun bs!452540 () Bool)

(assert (= bs!452540 (and d!663945 d!663873)))

(assert (=> bs!452540 (= lambda!83869 lambda!83836)))

(declare-fun bs!452541 () Bool)

(assert (= bs!452541 (and d!663945 d!663893)))

(assert (=> bs!452541 (= lambda!83869 lambda!83841)))

(declare-fun bs!452542 () Bool)

(assert (= bs!452542 (and d!663945 d!663937)))

(assert (=> bs!452542 (= lambda!83869 lambda!83867)))

(declare-fun bs!452543 () Bool)

(assert (= bs!452543 (and d!663945 d!663915)))

(assert (=> bs!452543 (= lambda!83869 lambda!83860)))

(declare-fun bs!452544 () Bool)

(assert (= bs!452544 (and d!663945 d!663923)))

(assert (=> bs!452544 (= lambda!83869 lambda!83863)))

(declare-fun bs!452545 () Bool)

(assert (= bs!452545 (and d!663945 d!663895)))

(assert (=> bs!452545 (= lambda!83869 lambda!83842)))

(assert (=> d!663945 (= (inv!35358 setElem!19439) (forall!5298 (exprs!2387 setElem!19439) lambda!83869))))

(declare-fun bs!452546 () Bool)

(assert (= bs!452546 d!663945))

(declare-fun m!2661940 () Bool)

(assert (=> bs!452546 m!2661940))

(assert (=> setNonEmpty!19439 d!663945))

(declare-fun bs!452547 () Bool)

(declare-fun d!663947 () Bool)

(assert (= bs!452547 (and d!663947 d!663905)))

(declare-fun lambda!83870 () Int)

(assert (=> bs!452547 (= lambda!83870 lambda!83848)))

(declare-fun bs!452548 () Bool)

(assert (= bs!452548 (and d!663947 d!663907)))

(assert (=> bs!452548 (= lambda!83870 lambda!83849)))

(declare-fun bs!452549 () Bool)

(assert (= bs!452549 (and d!663947 d!663903)))

(assert (=> bs!452549 (= lambda!83870 lambda!83847)))

(declare-fun bs!452550 () Bool)

(assert (= bs!452550 (and d!663947 d!663945)))

(assert (=> bs!452550 (= lambda!83870 lambda!83869)))

(declare-fun bs!452551 () Bool)

(assert (= bs!452551 (and d!663947 d!663897)))

(assert (=> bs!452551 (= lambda!83870 lambda!83843)))

(declare-fun bs!452552 () Bool)

(assert (= bs!452552 (and d!663947 d!663921)))

(assert (=> bs!452552 (= lambda!83870 lambda!83862)))

(declare-fun bs!452553 () Bool)

(assert (= bs!452553 (and d!663947 d!663919)))

(assert (=> bs!452553 (= lambda!83870 lambda!83861)))

(declare-fun bs!452554 () Bool)

(assert (= bs!452554 (and d!663947 d!663941)))

(assert (=> bs!452554 (= lambda!83870 lambda!83868)))

(declare-fun bs!452555 () Bool)

(assert (= bs!452555 (and d!663947 d!663891)))

(assert (=> bs!452555 (= lambda!83870 lambda!83840)))

(declare-fun bs!452556 () Bool)

(assert (= bs!452556 (and d!663947 d!663873)))

(assert (=> bs!452556 (= lambda!83870 lambda!83836)))

(declare-fun bs!452557 () Bool)

(assert (= bs!452557 (and d!663947 d!663893)))

(assert (=> bs!452557 (= lambda!83870 lambda!83841)))

(declare-fun bs!452558 () Bool)

(assert (= bs!452558 (and d!663947 d!663937)))

(assert (=> bs!452558 (= lambda!83870 lambda!83867)))

(declare-fun bs!452559 () Bool)

(assert (= bs!452559 (and d!663947 d!663915)))

(assert (=> bs!452559 (= lambda!83870 lambda!83860)))

(declare-fun bs!452560 () Bool)

(assert (= bs!452560 (and d!663947 d!663923)))

(assert (=> bs!452560 (= lambda!83870 lambda!83863)))

(declare-fun bs!452561 () Bool)

(assert (= bs!452561 (and d!663947 d!663895)))

(assert (=> bs!452561 (= lambda!83870 lambda!83842)))

(assert (=> d!663947 (= (inv!35358 setElem!19444) (forall!5298 (exprs!2387 setElem!19444) lambda!83870))))

(declare-fun bs!452562 () Bool)

(assert (= bs!452562 d!663947))

(declare-fun m!2661942 () Bool)

(assert (=> bs!452562 m!2661942))

(assert (=> setNonEmpty!19445 d!663947))

(declare-fun b!2221384 () Bool)

(declare-fun e!1418835 () Bool)

(declare-fun e!1418836 () Bool)

(assert (=> b!2221384 (= e!1418835 e!1418836)))

(declare-fun res!953646 () Bool)

(assert (=> b!2221384 (=> res!953646 e!1418836)))

(assert (=> b!2221384 (= res!953646 ((_ is Star!6339) (h!31439 (exprs!2387 context!72))))))

(declare-fun b!2221385 () Bool)

(declare-fun e!1418839 () Bool)

(declare-fun call!132582 () Bool)

(assert (=> b!2221385 (= e!1418839 call!132582)))

(declare-fun d!663949 () Bool)

(declare-fun res!953645 () Bool)

(declare-fun e!1418834 () Bool)

(assert (=> d!663949 (=> res!953645 e!1418834)))

(assert (=> d!663949 (= res!953645 ((_ is EmptyExpr!6339) (h!31439 (exprs!2387 context!72))))))

(assert (=> d!663949 (= (nullableFct!398 (h!31439 (exprs!2387 context!72))) e!1418834)))

(declare-fun b!2221386 () Bool)

(assert (=> b!2221386 (= e!1418834 e!1418835)))

(declare-fun res!953642 () Bool)

(assert (=> b!2221386 (=> (not res!953642) (not e!1418835))))

(assert (=> b!2221386 (= res!953642 (and (not ((_ is EmptyLang!6339) (h!31439 (exprs!2387 context!72)))) (not ((_ is ElementMatch!6339) (h!31439 (exprs!2387 context!72))))))))

(declare-fun bm!132577 () Bool)

(declare-fun call!132583 () Bool)

(declare-fun c!354724 () Bool)

(assert (=> bm!132577 (= call!132583 (nullable!1722 (ite c!354724 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))))))

(declare-fun b!2221387 () Bool)

(declare-fun e!1418837 () Bool)

(assert (=> b!2221387 (= e!1418836 e!1418837)))

(assert (=> b!2221387 (= c!354724 ((_ is Union!6339) (h!31439 (exprs!2387 context!72))))))

(declare-fun bm!132578 () Bool)

(assert (=> bm!132578 (= call!132582 (nullable!1722 (ite c!354724 (regTwo!13191 (h!31439 (exprs!2387 context!72))) (regTwo!13190 (h!31439 (exprs!2387 context!72))))))))

(declare-fun b!2221388 () Bool)

(assert (=> b!2221388 (= e!1418837 e!1418839)))

(declare-fun res!953644 () Bool)

(assert (=> b!2221388 (= res!953644 call!132583)))

(assert (=> b!2221388 (=> (not res!953644) (not e!1418839))))

(declare-fun b!2221389 () Bool)

(declare-fun e!1418838 () Bool)

(assert (=> b!2221389 (= e!1418837 e!1418838)))

(declare-fun res!953643 () Bool)

(assert (=> b!2221389 (= res!953643 call!132583)))

(assert (=> b!2221389 (=> res!953643 e!1418838)))

(declare-fun b!2221390 () Bool)

(assert (=> b!2221390 (= e!1418838 call!132582)))

(assert (= (and d!663949 (not res!953645)) b!2221386))

(assert (= (and b!2221386 res!953642) b!2221384))

(assert (= (and b!2221384 (not res!953646)) b!2221387))

(assert (= (and b!2221387 c!354724) b!2221389))

(assert (= (and b!2221387 (not c!354724)) b!2221388))

(assert (= (and b!2221389 (not res!953643)) b!2221390))

(assert (= (and b!2221388 res!953644) b!2221385))

(assert (= (or b!2221389 b!2221388) bm!132577))

(assert (= (or b!2221390 b!2221385) bm!132578))

(declare-fun m!2661944 () Bool)

(assert (=> bm!132577 m!2661944))

(declare-fun m!2661946 () Bool)

(assert (=> bm!132578 m!2661946))

(assert (=> d!663861 d!663949))

(declare-fun bs!452563 () Bool)

(declare-fun b!2221392 () Bool)

(assert (= bs!452563 (and b!2221392 b!2221100)))

(declare-fun lambda!83871 () Int)

(assert (=> bs!452563 (= lambda!83871 lambda!83839)))

(declare-fun bs!452564 () Bool)

(assert (= bs!452564 (and b!2221392 b!2221333)))

(assert (=> bs!452564 (= lambda!83871 lambda!83859)))

(declare-fun d!663951 () Bool)

(declare-fun res!953647 () Bool)

(declare-fun e!1418840 () Bool)

(assert (=> d!663951 (=> (not res!953647) (not e!1418840))))

(assert (=> d!663951 (= res!953647 (valid!2293 (cache!3262 cacheUp!790)))))

(assert (=> d!663951 (= (validCacheMapUp!266 (cache!3262 cacheUp!790)) e!1418840)))

(declare-fun b!2221391 () Bool)

(declare-fun res!953648 () Bool)

(assert (=> b!2221391 (=> (not res!953648) (not e!1418840))))

(assert (=> b!2221391 (= res!953648 (invariantList!342 (toList!1290 (map!5281 (cache!3262 cacheUp!790)))))))

(assert (=> b!2221392 (= e!1418840 (forall!5299 (toList!1290 (map!5281 (cache!3262 cacheUp!790))) lambda!83871))))

(assert (= (and d!663951 res!953647) b!2221391))

(assert (= (and b!2221391 res!953648) b!2221392))

(assert (=> d!663951 m!2661876))

(assert (=> b!2221391 m!2661870))

(declare-fun m!2661948 () Bool)

(assert (=> b!2221391 m!2661948))

(assert (=> b!2221392 m!2661870))

(declare-fun m!2661950 () Bool)

(assert (=> b!2221392 m!2661950))

(assert (=> b!2221091 d!663951))

(declare-fun b!2221393 () Bool)

(declare-fun e!1418843 () tuple2!25196)

(assert (=> b!2221393 (= e!1418843 (tuple2!25197 (store ((as const (Array Context!3774 Bool)) false) (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535)) true) cacheDown!803))))

(declare-fun b!2221394 () Bool)

(declare-fun e!1418847 () tuple2!25196)

(declare-fun e!1418844 () tuple2!25196)

(assert (=> b!2221394 (= e!1418847 e!1418844)))

(declare-fun c!354725 () Bool)

(assert (=> b!2221394 (= c!354725 ((_ is Star!6339) (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))))))

(declare-fun b!2221395 () Bool)

(declare-fun e!1418845 () tuple2!25196)

(declare-fun e!1418842 () tuple2!25196)

(assert (=> b!2221395 (= e!1418845 e!1418842)))

(declare-fun res!953649 () Bool)

(assert (=> b!2221395 (= res!953649 ((_ is Concat!10677) (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))))))

(declare-fun e!1418841 () Bool)

(assert (=> b!2221395 (=> (not res!953649) (not e!1418841))))

(declare-fun c!354730 () Bool)

(assert (=> b!2221395 (= c!354730 e!1418841)))

(declare-fun b!2221396 () Bool)

(assert (=> b!2221396 (= e!1418844 (tuple2!25197 ((as const (Array Context!3774 Bool)) false) cacheDown!803))))

(declare-fun call!132589 () tuple2!25196)

(declare-fun bm!132579 () Bool)

(declare-fun call!132584 () List!26132)

(declare-fun c!354726 () Bool)

(assert (=> bm!132579 (= call!132589 (derivationStepZipperDownMem!2 (ite c!354726 (regOne!13191 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))) (regOne!13190 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))))) (ite c!354726 (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535)) (Context!3775 call!132584)) a!1149 cacheDown!803))))

(declare-fun bm!132580 () Bool)

(declare-fun c!354728 () Bool)

(assert (=> bm!132580 (= call!132584 ($colon$colon!499 (exprs!2387 (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535))) (ite (or c!354730 c!354728) (regTwo!13190 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))) (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))))))))

(declare-fun d!663953 () Bool)

(declare-fun lt!827976 () tuple2!25196)

(assert (=> d!663953 (= (_1!14972 lt!827976) (derivationStepZipperDown!17 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))) (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535)) a!1149))))

(declare-fun e!1418846 () tuple2!25196)

(assert (=> d!663953 (= lt!827976 e!1418846)))

(declare-fun c!354729 () Bool)

(declare-fun lt!827973 () Option!5053)

(assert (=> d!663953 (= c!354729 ((_ is Some!5052) lt!827973))))

(assert (=> d!663953 (= lt!827973 (get!7804 cacheDown!803 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))) (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535)) a!1149))))

(assert (=> d!663953 (validRegex!2352 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))))))

(assert (=> d!663953 (= (derivationStepZipperDownMem!2 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))) (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535)) a!1149 cacheDown!803) lt!827976)))

(declare-fun b!2221397 () Bool)

(assert (=> b!2221397 (= c!354726 ((_ is Union!6339) (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))))))

(assert (=> b!2221397 (= e!1418843 e!1418845)))

(declare-fun b!2221398 () Bool)

(declare-fun lt!827972 () tuple2!25196)

(declare-fun call!132585 () tuple2!25196)

(assert (=> b!2221398 (= lt!827972 call!132585)))

(declare-fun lt!827970 () tuple2!25196)

(assert (=> b!2221398 (= lt!827970 call!132589)))

(assert (=> b!2221398 (= e!1418842 (tuple2!25197 ((_ map or) (_1!14972 lt!827970) (_1!14972 lt!827972)) (_2!14972 lt!827972)))))

(declare-fun b!2221399 () Bool)

(assert (=> b!2221399 (= e!1418846 (tuple2!25197 (v!29580 lt!827973) cacheDown!803))))

(declare-fun bm!132581 () Bool)

(declare-fun call!132588 () tuple2!25196)

(assert (=> bm!132581 (= call!132585 call!132588)))

(declare-fun b!2221400 () Bool)

(assert (=> b!2221400 (= c!354728 ((_ is Concat!10677) (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))))))

(assert (=> b!2221400 (= e!1418842 e!1418847)))

(declare-fun lt!827977 () tuple2!25196)

(declare-fun call!132587 () List!26132)

(declare-fun bm!132582 () Bool)

(assert (=> bm!132582 (= call!132588 (derivationStepZipperDownMem!2 (ite c!354726 (regTwo!13191 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))) (ite c!354730 (regTwo!13190 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))) (ite c!354728 (regOne!13190 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))) (reg!6668 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))))))) (ite (or c!354726 c!354730) (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535)) (Context!3775 call!132587)) a!1149 (ite c!354726 (_2!14972 lt!827977) (ite c!354730 (_2!14972 lt!827970) cacheDown!803))))))

(declare-fun bm!132583 () Bool)

(declare-fun call!132586 () tuple2!25196)

(assert (=> bm!132583 (= call!132586 call!132585)))

(declare-fun lt!827971 () tuple2!25196)

(declare-fun b!2221401 () Bool)

(assert (=> b!2221401 (= e!1418846 (tuple2!25197 (_1!14972 lt!827971) (_2!14974 (update!111 (_2!14972 lt!827971) (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))) (ite c!354669 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) (Context!3775 call!132535)) a!1149 (_1!14972 lt!827971)))))))

(declare-fun c!354727 () Bool)

(assert (=> b!2221401 (= c!354727 (and ((_ is ElementMatch!6339) (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))) (= (c!354643 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72))))) a!1149)))))

(assert (=> b!2221401 (= lt!827971 e!1418843)))

(declare-fun b!2221402 () Bool)

(declare-fun lt!827978 () tuple2!25196)

(assert (=> b!2221402 (= e!1418845 (tuple2!25197 ((_ map or) (_1!14972 lt!827977) (_1!14972 lt!827978)) (_2!14972 lt!827978)))))

(assert (=> b!2221402 (= lt!827977 call!132589)))

(assert (=> b!2221402 (= lt!827978 call!132588)))

(declare-fun b!2221403 () Bool)

(assert (=> b!2221403 (= e!1418841 (nullable!1722 (regOne!13190 (ite c!354669 (regOne!13191 (h!31439 (exprs!2387 context!72))) (regOne!13190 (h!31439 (exprs!2387 context!72)))))))))

(declare-fun bm!132584 () Bool)

(assert (=> bm!132584 (= call!132587 call!132584)))

(declare-fun b!2221404 () Bool)

(declare-fun lt!827975 () tuple2!25196)

(assert (=> b!2221404 (= e!1418847 (tuple2!25197 (_1!14972 lt!827975) (_2!14972 lt!827975)))))

(assert (=> b!2221404 (= lt!827975 call!132586)))

(declare-fun b!2221405 () Bool)

(declare-fun lt!827974 () tuple2!25196)

(assert (=> b!2221405 (= lt!827974 call!132586)))

(assert (=> b!2221405 (= e!1418844 (tuple2!25197 (_1!14972 lt!827974) (_2!14972 lt!827974)))))

(assert (= (and d!663953 c!354729) b!2221399))

(assert (= (and d!663953 (not c!354729)) b!2221401))

(assert (= (and b!2221401 c!354727) b!2221393))

(assert (= (and b!2221401 (not c!354727)) b!2221397))

(assert (= (and b!2221397 c!354726) b!2221402))

(assert (= (and b!2221397 (not c!354726)) b!2221395))

(assert (= (and b!2221395 res!953649) b!2221403))

(assert (= (and b!2221395 c!354730) b!2221398))

(assert (= (and b!2221395 (not c!354730)) b!2221400))

(assert (= (and b!2221400 c!354728) b!2221404))

(assert (= (and b!2221400 (not c!354728)) b!2221394))

(assert (= (and b!2221394 c!354725) b!2221405))

(assert (= (and b!2221394 (not c!354725)) b!2221396))

(assert (= (or b!2221404 b!2221405) bm!132584))

(assert (= (or b!2221404 b!2221405) bm!132583))

(assert (= (or b!2221398 bm!132584) bm!132580))

(assert (= (or b!2221398 bm!132583) bm!132581))

(assert (= (or b!2221402 bm!132581) bm!132582))

(assert (= (or b!2221402 b!2221398) bm!132579))

(declare-fun m!2661952 () Bool)

(assert (=> b!2221403 m!2661952))

(declare-fun m!2661954 () Bool)

(assert (=> d!663953 m!2661954))

(declare-fun m!2661956 () Bool)

(assert (=> d!663953 m!2661956))

(declare-fun m!2661958 () Bool)

(assert (=> d!663953 m!2661958))

(declare-fun m!2661960 () Bool)

(assert (=> bm!132580 m!2661960))

(declare-fun m!2661962 () Bool)

(assert (=> b!2221401 m!2661962))

(declare-fun m!2661964 () Bool)

(assert (=> bm!132582 m!2661964))

(declare-fun m!2661966 () Bool)

(assert (=> bm!132579 m!2661966))

(declare-fun m!2661968 () Bool)

(assert (=> b!2221393 m!2661968))

(assert (=> bm!132530 d!663953))

(declare-fun d!663955 () Bool)

(declare-fun res!953654 () Bool)

(declare-fun e!1418852 () Bool)

(assert (=> d!663955 (=> res!953654 e!1418852)))

(assert (=> d!663955 (= res!953654 ((_ is Nil!26038) (exprs!2387 context!72)))))

(assert (=> d!663955 (= (forall!5298 (exprs!2387 context!72) lambda!83836) e!1418852)))

(declare-fun b!2221410 () Bool)

(declare-fun e!1418853 () Bool)

(assert (=> b!2221410 (= e!1418852 e!1418853)))

(declare-fun res!953655 () Bool)

(assert (=> b!2221410 (=> (not res!953655) (not e!1418853))))

(declare-fun dynLambda!11505 (Int Regex!6339) Bool)

(assert (=> b!2221410 (= res!953655 (dynLambda!11505 lambda!83836 (h!31439 (exprs!2387 context!72))))))

(declare-fun b!2221411 () Bool)

(assert (=> b!2221411 (= e!1418853 (forall!5298 (t!199532 (exprs!2387 context!72)) lambda!83836))))

(assert (= (and d!663955 (not res!953654)) b!2221410))

(assert (= (and b!2221410 res!953655) b!2221411))

(declare-fun b_lambda!71543 () Bool)

(assert (=> (not b_lambda!71543) (not b!2221410)))

(declare-fun m!2661970 () Bool)

(assert (=> b!2221410 m!2661970))

(declare-fun m!2661972 () Bool)

(assert (=> b!2221411 m!2661972))

(assert (=> d!663873 d!663955))

(declare-fun bs!452565 () Bool)

(declare-fun d!663957 () Bool)

(assert (= bs!452565 (and d!663957 d!663905)))

(declare-fun lambda!83872 () Int)

(assert (=> bs!452565 (= lambda!83872 lambda!83848)))

(declare-fun bs!452566 () Bool)

(assert (= bs!452566 (and d!663957 d!663907)))

(assert (=> bs!452566 (= lambda!83872 lambda!83849)))

(declare-fun bs!452567 () Bool)

(assert (= bs!452567 (and d!663957 d!663903)))

(assert (=> bs!452567 (= lambda!83872 lambda!83847)))

(declare-fun bs!452568 () Bool)

(assert (= bs!452568 (and d!663957 d!663945)))

(assert (=> bs!452568 (= lambda!83872 lambda!83869)))

(declare-fun bs!452569 () Bool)

(assert (= bs!452569 (and d!663957 d!663897)))

(assert (=> bs!452569 (= lambda!83872 lambda!83843)))

(declare-fun bs!452570 () Bool)

(assert (= bs!452570 (and d!663957 d!663921)))

(assert (=> bs!452570 (= lambda!83872 lambda!83862)))

(declare-fun bs!452571 () Bool)

(assert (= bs!452571 (and d!663957 d!663919)))

(assert (=> bs!452571 (= lambda!83872 lambda!83861)))

(declare-fun bs!452572 () Bool)

(assert (= bs!452572 (and d!663957 d!663941)))

(assert (=> bs!452572 (= lambda!83872 lambda!83868)))

(declare-fun bs!452573 () Bool)

(assert (= bs!452573 (and d!663957 d!663891)))

(assert (=> bs!452573 (= lambda!83872 lambda!83840)))

(declare-fun bs!452574 () Bool)

(assert (= bs!452574 (and d!663957 d!663893)))

(assert (=> bs!452574 (= lambda!83872 lambda!83841)))

(declare-fun bs!452575 () Bool)

(assert (= bs!452575 (and d!663957 d!663937)))

(assert (=> bs!452575 (= lambda!83872 lambda!83867)))

(declare-fun bs!452576 () Bool)

(assert (= bs!452576 (and d!663957 d!663915)))

(assert (=> bs!452576 (= lambda!83872 lambda!83860)))

(declare-fun bs!452577 () Bool)

(assert (= bs!452577 (and d!663957 d!663923)))

(assert (=> bs!452577 (= lambda!83872 lambda!83863)))

(declare-fun bs!452578 () Bool)

(assert (= bs!452578 (and d!663957 d!663895)))

(assert (=> bs!452578 (= lambda!83872 lambda!83842)))

(declare-fun bs!452579 () Bool)

(assert (= bs!452579 (and d!663957 d!663947)))

(assert (=> bs!452579 (= lambda!83872 lambda!83870)))

(declare-fun bs!452580 () Bool)

(assert (= bs!452580 (and d!663957 d!663873)))

(assert (=> bs!452580 (= lambda!83872 lambda!83836)))

(assert (=> d!663957 (= (inv!35358 (_2!14969 (_1!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))))) (forall!5298 (exprs!2387 (_2!14969 (_1!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))))) lambda!83872))))

(declare-fun bs!452581 () Bool)

(assert (= bs!452581 d!663957))

(declare-fun m!2661974 () Bool)

(assert (=> bs!452581 m!2661974))

(assert (=> b!2221222 d!663957))

(declare-fun bs!452582 () Bool)

(declare-fun d!663959 () Bool)

(assert (= bs!452582 (and d!663959 d!663905)))

(declare-fun lambda!83873 () Int)

(assert (=> bs!452582 (= lambda!83873 lambda!83848)))

(declare-fun bs!452583 () Bool)

(assert (= bs!452583 (and d!663959 d!663907)))

(assert (=> bs!452583 (= lambda!83873 lambda!83849)))

(declare-fun bs!452584 () Bool)

(assert (= bs!452584 (and d!663959 d!663903)))

(assert (=> bs!452584 (= lambda!83873 lambda!83847)))

(declare-fun bs!452585 () Bool)

(assert (= bs!452585 (and d!663959 d!663945)))

(assert (=> bs!452585 (= lambda!83873 lambda!83869)))

(declare-fun bs!452586 () Bool)

(assert (= bs!452586 (and d!663959 d!663897)))

(assert (=> bs!452586 (= lambda!83873 lambda!83843)))

(declare-fun bs!452587 () Bool)

(assert (= bs!452587 (and d!663959 d!663921)))

(assert (=> bs!452587 (= lambda!83873 lambda!83862)))

(declare-fun bs!452588 () Bool)

(assert (= bs!452588 (and d!663959 d!663919)))

(assert (=> bs!452588 (= lambda!83873 lambda!83861)))

(declare-fun bs!452589 () Bool)

(assert (= bs!452589 (and d!663959 d!663941)))

(assert (=> bs!452589 (= lambda!83873 lambda!83868)))

(declare-fun bs!452590 () Bool)

(assert (= bs!452590 (and d!663959 d!663891)))

(assert (=> bs!452590 (= lambda!83873 lambda!83840)))

(declare-fun bs!452591 () Bool)

(assert (= bs!452591 (and d!663959 d!663893)))

(assert (=> bs!452591 (= lambda!83873 lambda!83841)))

(declare-fun bs!452592 () Bool)

(assert (= bs!452592 (and d!663959 d!663937)))

(assert (=> bs!452592 (= lambda!83873 lambda!83867)))

(declare-fun bs!452593 () Bool)

(assert (= bs!452593 (and d!663959 d!663915)))

(assert (=> bs!452593 (= lambda!83873 lambda!83860)))

(declare-fun bs!452594 () Bool)

(assert (= bs!452594 (and d!663959 d!663923)))

(assert (=> bs!452594 (= lambda!83873 lambda!83863)))

(declare-fun bs!452595 () Bool)

(assert (= bs!452595 (and d!663959 d!663895)))

(assert (=> bs!452595 (= lambda!83873 lambda!83842)))

(declare-fun bs!452596 () Bool)

(assert (= bs!452596 (and d!663959 d!663957)))

(assert (=> bs!452596 (= lambda!83873 lambda!83872)))

(declare-fun bs!452597 () Bool)

(assert (= bs!452597 (and d!663959 d!663947)))

(assert (=> bs!452597 (= lambda!83873 lambda!83870)))

(declare-fun bs!452598 () Bool)

(assert (= bs!452598 (and d!663959 d!663873)))

(assert (=> bs!452598 (= lambda!83873 lambda!83836)))

(assert (=> d!663959 (= (inv!35358 (_1!14967 (_1!14968 (h!31440 mapDefault!14027)))) (forall!5298 (exprs!2387 (_1!14967 (_1!14968 (h!31440 mapDefault!14027)))) lambda!83873))))

(declare-fun bs!452599 () Bool)

(assert (= bs!452599 d!663959))

(declare-fun m!2661976 () Bool)

(assert (=> bs!452599 m!2661976))

(assert (=> b!2221215 d!663959))

(declare-fun bs!452600 () Bool)

(declare-fun d!663961 () Bool)

(assert (= bs!452600 (and d!663961 d!663905)))

(declare-fun lambda!83874 () Int)

(assert (=> bs!452600 (= lambda!83874 lambda!83848)))

(declare-fun bs!452601 () Bool)

(assert (= bs!452601 (and d!663961 d!663907)))

(assert (=> bs!452601 (= lambda!83874 lambda!83849)))

(declare-fun bs!452602 () Bool)

(assert (= bs!452602 (and d!663961 d!663903)))

(assert (=> bs!452602 (= lambda!83874 lambda!83847)))

(declare-fun bs!452603 () Bool)

(assert (= bs!452603 (and d!663961 d!663897)))

(assert (=> bs!452603 (= lambda!83874 lambda!83843)))

(declare-fun bs!452604 () Bool)

(assert (= bs!452604 (and d!663961 d!663921)))

(assert (=> bs!452604 (= lambda!83874 lambda!83862)))

(declare-fun bs!452605 () Bool)

(assert (= bs!452605 (and d!663961 d!663919)))

(assert (=> bs!452605 (= lambda!83874 lambda!83861)))

(declare-fun bs!452606 () Bool)

(assert (= bs!452606 (and d!663961 d!663941)))

(assert (=> bs!452606 (= lambda!83874 lambda!83868)))

(declare-fun bs!452607 () Bool)

(assert (= bs!452607 (and d!663961 d!663891)))

(assert (=> bs!452607 (= lambda!83874 lambda!83840)))

(declare-fun bs!452608 () Bool)

(assert (= bs!452608 (and d!663961 d!663893)))

(assert (=> bs!452608 (= lambda!83874 lambda!83841)))

(declare-fun bs!452609 () Bool)

(assert (= bs!452609 (and d!663961 d!663937)))

(assert (=> bs!452609 (= lambda!83874 lambda!83867)))

(declare-fun bs!452610 () Bool)

(assert (= bs!452610 (and d!663961 d!663915)))

(assert (=> bs!452610 (= lambda!83874 lambda!83860)))

(declare-fun bs!452611 () Bool)

(assert (= bs!452611 (and d!663961 d!663923)))

(assert (=> bs!452611 (= lambda!83874 lambda!83863)))

(declare-fun bs!452612 () Bool)

(assert (= bs!452612 (and d!663961 d!663895)))

(assert (=> bs!452612 (= lambda!83874 lambda!83842)))

(declare-fun bs!452613 () Bool)

(assert (= bs!452613 (and d!663961 d!663959)))

(assert (=> bs!452613 (= lambda!83874 lambda!83873)))

(declare-fun bs!452614 () Bool)

(assert (= bs!452614 (and d!663961 d!663945)))

(assert (=> bs!452614 (= lambda!83874 lambda!83869)))

(declare-fun bs!452615 () Bool)

(assert (= bs!452615 (and d!663961 d!663957)))

(assert (=> bs!452615 (= lambda!83874 lambda!83872)))

(declare-fun bs!452616 () Bool)

(assert (= bs!452616 (and d!663961 d!663947)))

(assert (=> bs!452616 (= lambda!83874 lambda!83870)))

(declare-fun bs!452617 () Bool)

(assert (= bs!452617 (and d!663961 d!663873)))

(assert (=> bs!452617 (= lambda!83874 lambda!83836)))

(assert (=> d!663961 (= (inv!35358 (_2!14969 (_1!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))))) (forall!5298 (exprs!2387 (_2!14969 (_1!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))))) lambda!83874))))

(declare-fun bs!452618 () Bool)

(assert (= bs!452618 d!663961))

(declare-fun m!2661978 () Bool)

(assert (=> bs!452618 m!2661978))

(assert (=> b!2221219 d!663961))

(declare-fun b!2221412 () Bool)

(declare-fun e!1418856 () tuple2!25196)

(assert (=> b!2221412 (= e!1418856 (tuple2!25197 (store ((as const (Array Context!3774 Bool)) false) (Context!3775 (t!199532 (exprs!2387 lt!827778))) true) (_2!14972 lt!827780)))))

(declare-fun b!2221413 () Bool)

(declare-fun e!1418860 () tuple2!25196)

(declare-fun e!1418857 () tuple2!25196)

(assert (=> b!2221413 (= e!1418860 e!1418857)))

(declare-fun c!354731 () Bool)

(assert (=> b!2221413 (= c!354731 ((_ is Star!6339) (h!31439 (exprs!2387 lt!827778))))))

(declare-fun b!2221414 () Bool)

(declare-fun e!1418858 () tuple2!25196)

(declare-fun e!1418855 () tuple2!25196)

(assert (=> b!2221414 (= e!1418858 e!1418855)))

(declare-fun res!953656 () Bool)

(assert (=> b!2221414 (= res!953656 ((_ is Concat!10677) (h!31439 (exprs!2387 lt!827778))))))

(declare-fun e!1418854 () Bool)

(assert (=> b!2221414 (=> (not res!953656) (not e!1418854))))

(declare-fun c!354736 () Bool)

(assert (=> b!2221414 (= c!354736 e!1418854)))

(declare-fun b!2221415 () Bool)

(assert (=> b!2221415 (= e!1418857 (tuple2!25197 ((as const (Array Context!3774 Bool)) false) (_2!14972 lt!827780)))))

(declare-fun call!132590 () List!26132)

(declare-fun bm!132585 () Bool)

(declare-fun call!132595 () tuple2!25196)

(declare-fun c!354732 () Bool)

(assert (=> bm!132585 (= call!132595 (derivationStepZipperDownMem!2 (ite c!354732 (regOne!13191 (h!31439 (exprs!2387 lt!827778))) (regOne!13190 (h!31439 (exprs!2387 lt!827778)))) (ite c!354732 (Context!3775 (t!199532 (exprs!2387 lt!827778))) (Context!3775 call!132590)) a!1149 (_2!14972 lt!827780)))))

(declare-fun c!354734 () Bool)

(declare-fun bm!132586 () Bool)

(assert (=> bm!132586 (= call!132590 ($colon$colon!499 (exprs!2387 (Context!3775 (t!199532 (exprs!2387 lt!827778)))) (ite (or c!354736 c!354734) (regTwo!13190 (h!31439 (exprs!2387 lt!827778))) (h!31439 (exprs!2387 lt!827778)))))))

(declare-fun d!663963 () Bool)

(declare-fun lt!827985 () tuple2!25196)

(assert (=> d!663963 (= (_1!14972 lt!827985) (derivationStepZipperDown!17 (h!31439 (exprs!2387 lt!827778)) (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149))))

(declare-fun e!1418859 () tuple2!25196)

(assert (=> d!663963 (= lt!827985 e!1418859)))

(declare-fun c!354735 () Bool)

(declare-fun lt!827982 () Option!5053)

(assert (=> d!663963 (= c!354735 ((_ is Some!5052) lt!827982))))

(assert (=> d!663963 (= lt!827982 (get!7804 (_2!14972 lt!827780) (h!31439 (exprs!2387 lt!827778)) (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149))))

(assert (=> d!663963 (validRegex!2352 (h!31439 (exprs!2387 lt!827778)))))

(assert (=> d!663963 (= (derivationStepZipperDownMem!2 (h!31439 (exprs!2387 lt!827778)) (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149 (_2!14972 lt!827780)) lt!827985)))

(declare-fun b!2221416 () Bool)

(assert (=> b!2221416 (= c!354732 ((_ is Union!6339) (h!31439 (exprs!2387 lt!827778))))))

(assert (=> b!2221416 (= e!1418856 e!1418858)))

(declare-fun b!2221417 () Bool)

(declare-fun lt!827981 () tuple2!25196)

(declare-fun call!132591 () tuple2!25196)

(assert (=> b!2221417 (= lt!827981 call!132591)))

(declare-fun lt!827979 () tuple2!25196)

(assert (=> b!2221417 (= lt!827979 call!132595)))

(assert (=> b!2221417 (= e!1418855 (tuple2!25197 ((_ map or) (_1!14972 lt!827979) (_1!14972 lt!827981)) (_2!14972 lt!827981)))))

(declare-fun b!2221418 () Bool)

(assert (=> b!2221418 (= e!1418859 (tuple2!25197 (v!29580 lt!827982) (_2!14972 lt!827780)))))

(declare-fun bm!132587 () Bool)

(declare-fun call!132594 () tuple2!25196)

(assert (=> bm!132587 (= call!132591 call!132594)))

(declare-fun b!2221419 () Bool)

(assert (=> b!2221419 (= c!354734 ((_ is Concat!10677) (h!31439 (exprs!2387 lt!827778))))))

(assert (=> b!2221419 (= e!1418855 e!1418860)))

(declare-fun lt!827986 () tuple2!25196)

(declare-fun bm!132588 () Bool)

(declare-fun call!132593 () List!26132)

(assert (=> bm!132588 (= call!132594 (derivationStepZipperDownMem!2 (ite c!354732 (regTwo!13191 (h!31439 (exprs!2387 lt!827778))) (ite c!354736 (regTwo!13190 (h!31439 (exprs!2387 lt!827778))) (ite c!354734 (regOne!13190 (h!31439 (exprs!2387 lt!827778))) (reg!6668 (h!31439 (exprs!2387 lt!827778)))))) (ite (or c!354732 c!354736) (Context!3775 (t!199532 (exprs!2387 lt!827778))) (Context!3775 call!132593)) a!1149 (ite c!354732 (_2!14972 lt!827986) (ite c!354736 (_2!14972 lt!827979) (_2!14972 lt!827780)))))))

(declare-fun bm!132589 () Bool)

(declare-fun call!132592 () tuple2!25196)

(assert (=> bm!132589 (= call!132592 call!132591)))

(declare-fun b!2221420 () Bool)

(declare-fun lt!827980 () tuple2!25196)

(assert (=> b!2221420 (= e!1418859 (tuple2!25197 (_1!14972 lt!827980) (_2!14974 (update!111 (_2!14972 lt!827980) (h!31439 (exprs!2387 lt!827778)) (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149 (_1!14972 lt!827980)))))))

(declare-fun c!354733 () Bool)

(assert (=> b!2221420 (= c!354733 (and ((_ is ElementMatch!6339) (h!31439 (exprs!2387 lt!827778))) (= (c!354643 (h!31439 (exprs!2387 lt!827778))) a!1149)))))

(assert (=> b!2221420 (= lt!827980 e!1418856)))

(declare-fun b!2221421 () Bool)

(declare-fun lt!827987 () tuple2!25196)

(assert (=> b!2221421 (= e!1418858 (tuple2!25197 ((_ map or) (_1!14972 lt!827986) (_1!14972 lt!827987)) (_2!14972 lt!827987)))))

(assert (=> b!2221421 (= lt!827986 call!132595)))

(assert (=> b!2221421 (= lt!827987 call!132594)))

(declare-fun b!2221422 () Bool)

(assert (=> b!2221422 (= e!1418854 (nullable!1722 (regOne!13190 (h!31439 (exprs!2387 lt!827778)))))))

(declare-fun bm!132590 () Bool)

(assert (=> bm!132590 (= call!132593 call!132590)))

(declare-fun b!2221423 () Bool)

(declare-fun lt!827984 () tuple2!25196)

(assert (=> b!2221423 (= e!1418860 (tuple2!25197 (_1!14972 lt!827984) (_2!14972 lt!827984)))))

(assert (=> b!2221423 (= lt!827984 call!132592)))

(declare-fun b!2221424 () Bool)

(declare-fun lt!827983 () tuple2!25196)

(assert (=> b!2221424 (= lt!827983 call!132592)))

(assert (=> b!2221424 (= e!1418857 (tuple2!25197 (_1!14972 lt!827983) (_2!14972 lt!827983)))))

(assert (= (and d!663963 c!354735) b!2221418))

(assert (= (and d!663963 (not c!354735)) b!2221420))

(assert (= (and b!2221420 c!354733) b!2221412))

(assert (= (and b!2221420 (not c!354733)) b!2221416))

(assert (= (and b!2221416 c!354732) b!2221421))

(assert (= (and b!2221416 (not c!354732)) b!2221414))

(assert (= (and b!2221414 res!953656) b!2221422))

(assert (= (and b!2221414 c!354736) b!2221417))

(assert (= (and b!2221414 (not c!354736)) b!2221419))

(assert (= (and b!2221419 c!354734) b!2221423))

(assert (= (and b!2221419 (not c!354734)) b!2221413))

(assert (= (and b!2221413 c!354731) b!2221424))

(assert (= (and b!2221413 (not c!354731)) b!2221415))

(assert (= (or b!2221423 b!2221424) bm!132590))

(assert (= (or b!2221423 b!2221424) bm!132589))

(assert (= (or b!2221417 bm!132590) bm!132586))

(assert (= (or b!2221417 bm!132589) bm!132587))

(assert (= (or b!2221421 bm!132587) bm!132588))

(assert (= (or b!2221421 b!2221417) bm!132585))

(declare-fun m!2661980 () Bool)

(assert (=> b!2221422 m!2661980))

(declare-fun m!2661982 () Bool)

(assert (=> d!663963 m!2661982))

(declare-fun m!2661984 () Bool)

(assert (=> d!663963 m!2661984))

(declare-fun m!2661986 () Bool)

(assert (=> d!663963 m!2661986))

(declare-fun m!2661988 () Bool)

(assert (=> bm!132586 m!2661988))

(declare-fun m!2661990 () Bool)

(assert (=> b!2221420 m!2661990))

(declare-fun m!2661992 () Bool)

(assert (=> bm!132588 m!2661992))

(declare-fun m!2661994 () Bool)

(assert (=> bm!132585 m!2661994))

(declare-fun m!2661996 () Bool)

(assert (=> b!2221412 m!2661996))

(assert (=> bm!132517 d!663963))

(declare-fun bs!452619 () Bool)

(declare-fun d!663965 () Bool)

(assert (= bs!452619 (and d!663965 d!663905)))

(declare-fun lambda!83875 () Int)

(assert (=> bs!452619 (= lambda!83875 lambda!83848)))

(declare-fun bs!452620 () Bool)

(assert (= bs!452620 (and d!663965 d!663907)))

(assert (=> bs!452620 (= lambda!83875 lambda!83849)))

(declare-fun bs!452621 () Bool)

(assert (= bs!452621 (and d!663965 d!663903)))

(assert (=> bs!452621 (= lambda!83875 lambda!83847)))

(declare-fun bs!452622 () Bool)

(assert (= bs!452622 (and d!663965 d!663897)))

(assert (=> bs!452622 (= lambda!83875 lambda!83843)))

(declare-fun bs!452623 () Bool)

(assert (= bs!452623 (and d!663965 d!663921)))

(assert (=> bs!452623 (= lambda!83875 lambda!83862)))

(declare-fun bs!452624 () Bool)

(assert (= bs!452624 (and d!663965 d!663919)))

(assert (=> bs!452624 (= lambda!83875 lambda!83861)))

(declare-fun bs!452625 () Bool)

(assert (= bs!452625 (and d!663965 d!663941)))

(assert (=> bs!452625 (= lambda!83875 lambda!83868)))

(declare-fun bs!452626 () Bool)

(assert (= bs!452626 (and d!663965 d!663891)))

(assert (=> bs!452626 (= lambda!83875 lambda!83840)))

(declare-fun bs!452627 () Bool)

(assert (= bs!452627 (and d!663965 d!663961)))

(assert (=> bs!452627 (= lambda!83875 lambda!83874)))

(declare-fun bs!452628 () Bool)

(assert (= bs!452628 (and d!663965 d!663893)))

(assert (=> bs!452628 (= lambda!83875 lambda!83841)))

(declare-fun bs!452629 () Bool)

(assert (= bs!452629 (and d!663965 d!663937)))

(assert (=> bs!452629 (= lambda!83875 lambda!83867)))

(declare-fun bs!452630 () Bool)

(assert (= bs!452630 (and d!663965 d!663915)))

(assert (=> bs!452630 (= lambda!83875 lambda!83860)))

(declare-fun bs!452631 () Bool)

(assert (= bs!452631 (and d!663965 d!663923)))

(assert (=> bs!452631 (= lambda!83875 lambda!83863)))

(declare-fun bs!452632 () Bool)

(assert (= bs!452632 (and d!663965 d!663895)))

(assert (=> bs!452632 (= lambda!83875 lambda!83842)))

(declare-fun bs!452633 () Bool)

(assert (= bs!452633 (and d!663965 d!663959)))

(assert (=> bs!452633 (= lambda!83875 lambda!83873)))

(declare-fun bs!452634 () Bool)

(assert (= bs!452634 (and d!663965 d!663945)))

(assert (=> bs!452634 (= lambda!83875 lambda!83869)))

(declare-fun bs!452635 () Bool)

(assert (= bs!452635 (and d!663965 d!663957)))

(assert (=> bs!452635 (= lambda!83875 lambda!83872)))

(declare-fun bs!452636 () Bool)

(assert (= bs!452636 (and d!663965 d!663947)))

(assert (=> bs!452636 (= lambda!83875 lambda!83870)))

(declare-fun bs!452637 () Bool)

(assert (= bs!452637 (and d!663965 d!663873)))

(assert (=> bs!452637 (= lambda!83875 lambda!83836)))

(assert (=> d!663965 (= (inv!35358 setElem!19438) (forall!5298 (exprs!2387 setElem!19438) lambda!83875))))

(declare-fun bs!452638 () Bool)

(assert (= bs!452638 d!663965))

(declare-fun m!2661998 () Bool)

(assert (=> bs!452638 m!2661998))

(assert (=> setNonEmpty!19438 d!663965))

(declare-fun bs!452639 () Bool)

(declare-fun d!663967 () Bool)

(assert (= bs!452639 (and d!663967 b!2221100)))

(declare-fun lambda!83878 () Int)

(assert (=> bs!452639 (= lambda!83878 lambda!83839)))

(declare-fun bs!452640 () Bool)

(assert (= bs!452640 (and d!663967 b!2221333)))

(assert (=> bs!452640 (= lambda!83878 lambda!83859)))

(declare-fun bs!452641 () Bool)

(assert (= bs!452641 (and d!663967 b!2221392)))

(assert (=> bs!452641 (= lambda!83878 lambda!83871)))

(declare-fun lt!827996 () tuple2!25198)

(assert (=> d!663967 (validCacheMapUp!266 (cache!3262 (_2!14973 lt!827996)))))

(declare-fun Unit!38995 () Unit!38990)

(declare-datatypes ((tuple2!25204 0))(
  ( (tuple2!25205 (_1!14976 Bool) (_2!14976 MutableMap!2882)) )
))
(declare-fun update!112 (MutableMap!2882 tuple2!25190 (InoxSet Context!3774)) tuple2!25204)

(assert (=> d!663967 (= lt!827996 (tuple2!25199 Unit!38995 (CacheUp!1901 (_2!14976 (update!112 (cache!3262 (_2!14971 lt!827800)) (tuple2!25191 lt!827778 a!1149) (_1!14971 lt!827800))))))))

(declare-fun lt!827997 () Unit!38990)

(declare-fun lt!827999 () Unit!38990)

(assert (=> d!663967 (= lt!827997 lt!827999)))

(declare-fun lt!827998 () tuple2!25190)

(assert (=> d!663967 (forall!5299 (toList!1290 (map!5281 (_2!14976 (update!112 (cache!3262 (_2!14971 lt!827800)) lt!827998 (_1!14971 lt!827800))))) lambda!83878)))

(declare-fun lemmaUpdatePreservesForallPairs!10 (MutableMap!2882 tuple2!25190 (InoxSet Context!3774) Int) Unit!38990)

(assert (=> d!663967 (= lt!827999 (lemmaUpdatePreservesForallPairs!10 (cache!3262 (_2!14971 lt!827800)) lt!827998 (_1!14971 lt!827800) lambda!83878))))

(assert (=> d!663967 (= lt!827998 (tuple2!25191 lt!827778 a!1149))))

(assert (=> d!663967 (validCacheMapUp!266 (cache!3262 (_2!14971 lt!827800)))))

(assert (=> d!663967 (= (update!110 (_2!14971 lt!827800) lt!827778 a!1149 (_1!14971 lt!827800)) lt!827996)))

(declare-fun bs!452642 () Bool)

(assert (= bs!452642 d!663967))

(declare-fun m!2662000 () Bool)

(assert (=> bs!452642 m!2662000))

(declare-fun m!2662002 () Bool)

(assert (=> bs!452642 m!2662002))

(declare-fun m!2662004 () Bool)

(assert (=> bs!452642 m!2662004))

(declare-fun m!2662006 () Bool)

(assert (=> bs!452642 m!2662006))

(declare-fun m!2662008 () Bool)

(assert (=> bs!452642 m!2662008))

(declare-fun m!2662010 () Bool)

(assert (=> bs!452642 m!2662010))

(declare-fun m!2662012 () Bool)

(assert (=> bs!452642 m!2662012))

(assert (=> b!2221079 d!663967))

(declare-fun bs!452643 () Bool)

(declare-fun d!663969 () Bool)

(assert (= bs!452643 (and d!663969 d!663905)))

(declare-fun lambda!83879 () Int)

(assert (=> bs!452643 (= lambda!83879 lambda!83848)))

(declare-fun bs!452644 () Bool)

(assert (= bs!452644 (and d!663969 d!663907)))

(assert (=> bs!452644 (= lambda!83879 lambda!83849)))

(declare-fun bs!452645 () Bool)

(assert (= bs!452645 (and d!663969 d!663903)))

(assert (=> bs!452645 (= lambda!83879 lambda!83847)))

(declare-fun bs!452646 () Bool)

(assert (= bs!452646 (and d!663969 d!663897)))

(assert (=> bs!452646 (= lambda!83879 lambda!83843)))

(declare-fun bs!452647 () Bool)

(assert (= bs!452647 (and d!663969 d!663921)))

(assert (=> bs!452647 (= lambda!83879 lambda!83862)))

(declare-fun bs!452648 () Bool)

(assert (= bs!452648 (and d!663969 d!663919)))

(assert (=> bs!452648 (= lambda!83879 lambda!83861)))

(declare-fun bs!452649 () Bool)

(assert (= bs!452649 (and d!663969 d!663941)))

(assert (=> bs!452649 (= lambda!83879 lambda!83868)))

(declare-fun bs!452650 () Bool)

(assert (= bs!452650 (and d!663969 d!663891)))

(assert (=> bs!452650 (= lambda!83879 lambda!83840)))

(declare-fun bs!452651 () Bool)

(assert (= bs!452651 (and d!663969 d!663961)))

(assert (=> bs!452651 (= lambda!83879 lambda!83874)))

(declare-fun bs!452652 () Bool)

(assert (= bs!452652 (and d!663969 d!663893)))

(assert (=> bs!452652 (= lambda!83879 lambda!83841)))

(declare-fun bs!452653 () Bool)

(assert (= bs!452653 (and d!663969 d!663937)))

(assert (=> bs!452653 (= lambda!83879 lambda!83867)))

(declare-fun bs!452654 () Bool)

(assert (= bs!452654 (and d!663969 d!663915)))

(assert (=> bs!452654 (= lambda!83879 lambda!83860)))

(declare-fun bs!452655 () Bool)

(assert (= bs!452655 (and d!663969 d!663923)))

(assert (=> bs!452655 (= lambda!83879 lambda!83863)))

(declare-fun bs!452656 () Bool)

(assert (= bs!452656 (and d!663969 d!663895)))

(assert (=> bs!452656 (= lambda!83879 lambda!83842)))

(declare-fun bs!452657 () Bool)

(assert (= bs!452657 (and d!663969 d!663959)))

(assert (=> bs!452657 (= lambda!83879 lambda!83873)))

(declare-fun bs!452658 () Bool)

(assert (= bs!452658 (and d!663969 d!663965)))

(assert (=> bs!452658 (= lambda!83879 lambda!83875)))

(declare-fun bs!452659 () Bool)

(assert (= bs!452659 (and d!663969 d!663945)))

(assert (=> bs!452659 (= lambda!83879 lambda!83869)))

(declare-fun bs!452660 () Bool)

(assert (= bs!452660 (and d!663969 d!663957)))

(assert (=> bs!452660 (= lambda!83879 lambda!83872)))

(declare-fun bs!452661 () Bool)

(assert (= bs!452661 (and d!663969 d!663947)))

(assert (=> bs!452661 (= lambda!83879 lambda!83870)))

(declare-fun bs!452662 () Bool)

(assert (= bs!452662 (and d!663969 d!663873)))

(assert (=> bs!452662 (= lambda!83879 lambda!83836)))

(assert (=> d!663969 (= (inv!35358 setElem!19431) (forall!5298 (exprs!2387 setElem!19431) lambda!83879))))

(declare-fun bs!452663 () Bool)

(assert (= bs!452663 d!663969))

(declare-fun m!2662014 () Bool)

(assert (=> bs!452663 m!2662014))

(assert (=> setNonEmpty!19431 d!663969))

(declare-fun bs!452664 () Bool)

(declare-fun d!663971 () Bool)

(assert (= bs!452664 (and d!663971 d!663905)))

(declare-fun lambda!83880 () Int)

(assert (=> bs!452664 (= lambda!83880 lambda!83848)))

(declare-fun bs!452665 () Bool)

(assert (= bs!452665 (and d!663971 d!663907)))

(assert (=> bs!452665 (= lambda!83880 lambda!83849)))

(declare-fun bs!452666 () Bool)

(assert (= bs!452666 (and d!663971 d!663903)))

(assert (=> bs!452666 (= lambda!83880 lambda!83847)))

(declare-fun bs!452667 () Bool)

(assert (= bs!452667 (and d!663971 d!663897)))

(assert (=> bs!452667 (= lambda!83880 lambda!83843)))

(declare-fun bs!452668 () Bool)

(assert (= bs!452668 (and d!663971 d!663921)))

(assert (=> bs!452668 (= lambda!83880 lambda!83862)))

(declare-fun bs!452669 () Bool)

(assert (= bs!452669 (and d!663971 d!663919)))

(assert (=> bs!452669 (= lambda!83880 lambda!83861)))

(declare-fun bs!452670 () Bool)

(assert (= bs!452670 (and d!663971 d!663941)))

(assert (=> bs!452670 (= lambda!83880 lambda!83868)))

(declare-fun bs!452671 () Bool)

(assert (= bs!452671 (and d!663971 d!663891)))

(assert (=> bs!452671 (= lambda!83880 lambda!83840)))

(declare-fun bs!452672 () Bool)

(assert (= bs!452672 (and d!663971 d!663961)))

(assert (=> bs!452672 (= lambda!83880 lambda!83874)))

(declare-fun bs!452673 () Bool)

(assert (= bs!452673 (and d!663971 d!663893)))

(assert (=> bs!452673 (= lambda!83880 lambda!83841)))

(declare-fun bs!452674 () Bool)

(assert (= bs!452674 (and d!663971 d!663937)))

(assert (=> bs!452674 (= lambda!83880 lambda!83867)))

(declare-fun bs!452675 () Bool)

(assert (= bs!452675 (and d!663971 d!663915)))

(assert (=> bs!452675 (= lambda!83880 lambda!83860)))

(declare-fun bs!452676 () Bool)

(assert (= bs!452676 (and d!663971 d!663923)))

(assert (=> bs!452676 (= lambda!83880 lambda!83863)))

(declare-fun bs!452677 () Bool)

(assert (= bs!452677 (and d!663971 d!663895)))

(assert (=> bs!452677 (= lambda!83880 lambda!83842)))

(declare-fun bs!452678 () Bool)

(assert (= bs!452678 (and d!663971 d!663959)))

(assert (=> bs!452678 (= lambda!83880 lambda!83873)))

(declare-fun bs!452679 () Bool)

(assert (= bs!452679 (and d!663971 d!663965)))

(assert (=> bs!452679 (= lambda!83880 lambda!83875)))

(declare-fun bs!452680 () Bool)

(assert (= bs!452680 (and d!663971 d!663945)))

(assert (=> bs!452680 (= lambda!83880 lambda!83869)))

(declare-fun bs!452681 () Bool)

(assert (= bs!452681 (and d!663971 d!663969)))

(assert (=> bs!452681 (= lambda!83880 lambda!83879)))

(declare-fun bs!452682 () Bool)

(assert (= bs!452682 (and d!663971 d!663957)))

(assert (=> bs!452682 (= lambda!83880 lambda!83872)))

(declare-fun bs!452683 () Bool)

(assert (= bs!452683 (and d!663971 d!663947)))

(assert (=> bs!452683 (= lambda!83880 lambda!83870)))

(declare-fun bs!452684 () Bool)

(assert (= bs!452684 (and d!663971 d!663873)))

(assert (=> bs!452684 (= lambda!83880 lambda!83836)))

(assert (=> d!663971 (= (inv!35358 setElem!19446) (forall!5298 (exprs!2387 setElem!19446) lambda!83880))))

(declare-fun bs!452685 () Bool)

(assert (= bs!452685 d!663971))

(declare-fun m!2662016 () Bool)

(assert (=> bs!452685 m!2662016))

(assert (=> setNonEmpty!19446 d!663971))

(declare-fun bs!452686 () Bool)

(declare-fun d!663973 () Bool)

(assert (= bs!452686 (and d!663973 d!663905)))

(declare-fun lambda!83881 () Int)

(assert (=> bs!452686 (= lambda!83881 lambda!83848)))

(declare-fun bs!452687 () Bool)

(assert (= bs!452687 (and d!663973 d!663907)))

(assert (=> bs!452687 (= lambda!83881 lambda!83849)))

(declare-fun bs!452688 () Bool)

(assert (= bs!452688 (and d!663973 d!663971)))

(assert (=> bs!452688 (= lambda!83881 lambda!83880)))

(declare-fun bs!452689 () Bool)

(assert (= bs!452689 (and d!663973 d!663903)))

(assert (=> bs!452689 (= lambda!83881 lambda!83847)))

(declare-fun bs!452690 () Bool)

(assert (= bs!452690 (and d!663973 d!663897)))

(assert (=> bs!452690 (= lambda!83881 lambda!83843)))

(declare-fun bs!452691 () Bool)

(assert (= bs!452691 (and d!663973 d!663921)))

(assert (=> bs!452691 (= lambda!83881 lambda!83862)))

(declare-fun bs!452692 () Bool)

(assert (= bs!452692 (and d!663973 d!663919)))

(assert (=> bs!452692 (= lambda!83881 lambda!83861)))

(declare-fun bs!452693 () Bool)

(assert (= bs!452693 (and d!663973 d!663941)))

(assert (=> bs!452693 (= lambda!83881 lambda!83868)))

(declare-fun bs!452694 () Bool)

(assert (= bs!452694 (and d!663973 d!663891)))

(assert (=> bs!452694 (= lambda!83881 lambda!83840)))

(declare-fun bs!452695 () Bool)

(assert (= bs!452695 (and d!663973 d!663961)))

(assert (=> bs!452695 (= lambda!83881 lambda!83874)))

(declare-fun bs!452696 () Bool)

(assert (= bs!452696 (and d!663973 d!663893)))

(assert (=> bs!452696 (= lambda!83881 lambda!83841)))

(declare-fun bs!452697 () Bool)

(assert (= bs!452697 (and d!663973 d!663937)))

(assert (=> bs!452697 (= lambda!83881 lambda!83867)))

(declare-fun bs!452698 () Bool)

(assert (= bs!452698 (and d!663973 d!663915)))

(assert (=> bs!452698 (= lambda!83881 lambda!83860)))

(declare-fun bs!452699 () Bool)

(assert (= bs!452699 (and d!663973 d!663923)))

(assert (=> bs!452699 (= lambda!83881 lambda!83863)))

(declare-fun bs!452700 () Bool)

(assert (= bs!452700 (and d!663973 d!663895)))

(assert (=> bs!452700 (= lambda!83881 lambda!83842)))

(declare-fun bs!452701 () Bool)

(assert (= bs!452701 (and d!663973 d!663959)))

(assert (=> bs!452701 (= lambda!83881 lambda!83873)))

(declare-fun bs!452702 () Bool)

(assert (= bs!452702 (and d!663973 d!663965)))

(assert (=> bs!452702 (= lambda!83881 lambda!83875)))

(declare-fun bs!452703 () Bool)

(assert (= bs!452703 (and d!663973 d!663945)))

(assert (=> bs!452703 (= lambda!83881 lambda!83869)))

(declare-fun bs!452704 () Bool)

(assert (= bs!452704 (and d!663973 d!663969)))

(assert (=> bs!452704 (= lambda!83881 lambda!83879)))

(declare-fun bs!452705 () Bool)

(assert (= bs!452705 (and d!663973 d!663957)))

(assert (=> bs!452705 (= lambda!83881 lambda!83872)))

(declare-fun bs!452706 () Bool)

(assert (= bs!452706 (and d!663973 d!663947)))

(assert (=> bs!452706 (= lambda!83881 lambda!83870)))

(declare-fun bs!452707 () Bool)

(assert (= bs!452707 (and d!663973 d!663873)))

(assert (=> bs!452707 (= lambda!83881 lambda!83836)))

(assert (=> d!663973 (= (inv!35358 (_1!14967 (_1!14968 (h!31440 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))))) (forall!5298 (exprs!2387 (_1!14967 (_1!14968 (h!31440 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))))) lambda!83881))))

(declare-fun bs!452708 () Bool)

(assert (= bs!452708 d!663973))

(declare-fun m!2662018 () Bool)

(assert (=> bs!452708 m!2662018))

(assert (=> b!2221159 d!663973))

(declare-fun d!663975 () Bool)

(assert (=> d!663975 (= (isEmpty!14870 lt!827807) (not ((_ is Some!5052) lt!827807)))))

(assert (=> d!663869 d!663975))

(declare-fun bs!452709 () Bool)

(declare-fun b!2221455 () Bool)

(assert (= bs!452709 (and b!2221455 b!2221321)))

(declare-fun lambda!83884 () Int)

(assert (=> bs!452709 (= lambda!83884 lambda!83856)))

(declare-fun bs!452710 () Bool)

(assert (= bs!452710 (and b!2221455 b!2221362)))

(assert (=> bs!452710 (= lambda!83884 lambda!83866)))

(declare-fun b!2221447 () Bool)

(declare-fun e!1418880 () Bool)

(declare-fun call!132608 () Bool)

(assert (=> b!2221447 (= e!1418880 call!132608)))

(declare-fun call!132613 () Option!5054)

(declare-fun call!132610 () List!26133)

(declare-fun bm!132603 () Bool)

(assert (=> bm!132603 (= call!132613 (getPair!22 call!132610 (tuple2!25191 context!72 a!1149)))))

(declare-fun b!2221448 () Bool)

(assert (=> b!2221448 false))

(declare-fun lt!828056 () Unit!38990)

(declare-fun lt!828049 () Unit!38990)

(assert (=> b!2221448 (= lt!828056 lt!828049)))

(declare-fun lt!828051 () ListLongMap!287)

(declare-fun contains!4331 (ListMap!747 tuple2!25190) Bool)

(assert (=> b!2221448 (contains!4331 (extractMap!91 (toList!1292 lt!828051)) (tuple2!25191 context!72 a!1149))))

(declare-fun lemmaInLongMapThenInGenericMap!22 (ListLongMap!287 tuple2!25190 Hashable!2882) Unit!38990)

(assert (=> b!2221448 (= lt!828049 (lemmaInLongMapThenInGenericMap!22 lt!828051 (tuple2!25191 context!72 a!1149) (hashF!4805 (cache!3262 cacheUp!790))))))

(declare-fun call!132612 () ListLongMap!287)

(assert (=> b!2221448 (= lt!828051 call!132612)))

(declare-fun e!1418878 () Unit!38990)

(declare-fun Unit!38996 () Unit!38990)

(assert (=> b!2221448 (= e!1418878 Unit!38996)))

(declare-fun lt!828044 () Bool)

(declare-fun d!663977 () Bool)

(assert (=> d!663977 (= lt!828044 (contains!4331 (map!5281 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)))))

(declare-fun e!1418881 () Bool)

(assert (=> d!663977 (= lt!828044 e!1418881)))

(declare-fun res!953664 () Bool)

(assert (=> d!663977 (=> (not res!953664) (not e!1418881))))

(declare-fun lt!828058 () (_ BitVec 64))

(declare-fun contains!4332 (MutLongMap!2972 (_ BitVec 64)) Bool)

(assert (=> d!663977 (= res!953664 (contains!4332 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!828058))))

(declare-fun lt!828052 () Unit!38990)

(declare-fun e!1418875 () Unit!38990)

(assert (=> d!663977 (= lt!828052 e!1418875)))

(declare-fun c!354746 () Bool)

(assert (=> d!663977 (= c!354746 (contains!4331 (extractMap!91 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))) (tuple2!25191 context!72 a!1149)))))

(declare-fun lt!828043 () Unit!38990)

(declare-fun e!1418879 () Unit!38990)

(assert (=> d!663977 (= lt!828043 e!1418879)))

(declare-fun c!354748 () Bool)

(assert (=> d!663977 (= c!354748 (contains!4332 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!828058))))

(assert (=> d!663977 (= lt!828058 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)))))

(assert (=> d!663977 (valid!2293 (cache!3262 cacheUp!790))))

(assert (=> d!663977 (= (contains!4328 (cache!3262 cacheUp!790) (tuple2!25191 context!72 a!1149)) lt!828044)))

(declare-fun bm!132604 () Bool)

(assert (=> bm!132604 (= call!132608 (isDefined!4120 call!132613))))

(declare-fun b!2221449 () Bool)

(assert (=> b!2221449 (= e!1418875 e!1418878)))

(declare-fun res!953666 () Bool)

(declare-fun call!132609 () Bool)

(assert (=> b!2221449 (= res!953666 call!132609)))

(declare-fun e!1418877 () Bool)

(assert (=> b!2221449 (=> (not res!953666) (not e!1418877))))

(declare-fun c!354747 () Bool)

(assert (=> b!2221449 (= c!354747 e!1418877)))

(declare-fun b!2221450 () Bool)

(declare-fun e!1418876 () Unit!38990)

(declare-fun Unit!38997 () Unit!38990)

(assert (=> b!2221450 (= e!1418876 Unit!38997)))

(declare-fun b!2221451 () Bool)

(declare-fun lt!828048 () Unit!38990)

(assert (=> b!2221451 (= e!1418875 lt!828048)))

(declare-fun lt!828050 () ListLongMap!287)

(assert (=> b!2221451 (= lt!828050 call!132612)))

(declare-fun lemmaInGenericMapThenInLongMap!22 (ListLongMap!287 tuple2!25190 Hashable!2882) Unit!38990)

(assert (=> b!2221451 (= lt!828048 (lemmaInGenericMapThenInLongMap!22 lt!828050 (tuple2!25191 context!72 a!1149) (hashF!4805 (cache!3262 cacheUp!790))))))

(declare-fun res!953665 () Bool)

(assert (=> b!2221451 (= res!953665 call!132609)))

(assert (=> b!2221451 (=> (not res!953665) (not e!1418880))))

(assert (=> b!2221451 e!1418880))

(declare-fun b!2221452 () Bool)

(declare-fun Unit!38998 () Unit!38990)

(assert (=> b!2221452 (= e!1418878 Unit!38998)))

(declare-fun b!2221453 () Bool)

(assert (=> b!2221453 false))

(declare-fun lt!828059 () Unit!38990)

(declare-fun lt!828053 () Unit!38990)

(assert (=> b!2221453 (= lt!828059 lt!828053)))

(declare-fun lt!828046 () List!26135)

(declare-fun lt!828040 () List!26133)

(assert (=> b!2221453 (contains!4329 lt!828046 (tuple2!25203 lt!828058 lt!828040))))

(assert (=> b!2221453 (= lt!828053 (lemmaGetValueByKeyImpliesContainsTuple!23 lt!828046 lt!828058 lt!828040))))

(assert (=> b!2221453 (= lt!828040 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!828058))))

(assert (=> b!2221453 (= lt!828046 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))

(declare-fun lt!828045 () Unit!38990)

(declare-fun lt!828054 () Unit!38990)

(assert (=> b!2221453 (= lt!828045 lt!828054)))

(declare-fun lt!828055 () List!26135)

(assert (=> b!2221453 (isDefined!4121 (getValueByKey!62 lt!828055 lt!828058))))

(assert (=> b!2221453 (= lt!828054 (lemmaContainsKeyImpliesGetValueByKeyDefined!40 lt!828055 lt!828058))))

(assert (=> b!2221453 (= lt!828055 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))

(declare-fun lt!828042 () Unit!38990)

(declare-fun lt!828057 () Unit!38990)

(assert (=> b!2221453 (= lt!828042 lt!828057)))

(declare-fun lt!828041 () List!26135)

(declare-fun containsKey!63 (List!26135 (_ BitVec 64)) Bool)

(assert (=> b!2221453 (containsKey!63 lt!828041 lt!828058)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!23 (List!26135 (_ BitVec 64)) Unit!38990)

(assert (=> b!2221453 (= lt!828057 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!23 lt!828041 lt!828058))))

(assert (=> b!2221453 (= lt!828041 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))

(declare-fun Unit!38999 () Unit!38990)

(assert (=> b!2221453 (= e!1418876 Unit!38999)))

(declare-fun bm!132605 () Bool)

(assert (=> bm!132605 (= call!132612 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))

(declare-fun bm!132606 () Bool)

(declare-fun call!132611 () (_ BitVec 64))

(assert (=> bm!132606 (= call!132610 (apply!6444 (ite c!354746 lt!828050 call!132612) call!132611))))

(declare-fun b!2221454 () Bool)

(assert (=> b!2221454 (= e!1418877 call!132608)))

(assert (=> b!2221455 (= e!1418879 (forallContained!769 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))) lambda!83884 (tuple2!25203 lt!828058 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!828058))))))

(declare-fun c!354745 () Bool)

(assert (=> b!2221455 (= c!354745 (not (contains!4329 (toList!1292 (map!5283 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))) (tuple2!25203 lt!828058 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!828058)))))))

(declare-fun lt!828047 () Unit!38990)

(assert (=> b!2221455 (= lt!828047 e!1418876)))

(declare-fun bm!132607 () Bool)

(assert (=> bm!132607 (= call!132611 (hash!561 (hashF!4805 (cache!3262 cacheUp!790)) (tuple2!25191 context!72 a!1149)))))

(declare-fun bm!132608 () Bool)

(assert (=> bm!132608 (= call!132609 (contains!4330 (ite c!354746 lt!828050 call!132612) call!132611))))

(declare-fun b!2221456 () Bool)

(declare-fun Unit!39000 () Unit!38990)

(assert (=> b!2221456 (= e!1418879 Unit!39000)))

(declare-fun b!2221457 () Bool)

(assert (=> b!2221457 (= e!1418881 (isDefined!4120 (getPair!22 (apply!6443 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))) lt!828058) (tuple2!25191 context!72 a!1149))))))

(assert (= (and d!663977 c!354748) b!2221455))

(assert (= (and d!663977 (not c!354748)) b!2221456))

(assert (= (and b!2221455 c!354745) b!2221453))

(assert (= (and b!2221455 (not c!354745)) b!2221450))

(assert (= (and d!663977 c!354746) b!2221451))

(assert (= (and d!663977 (not c!354746)) b!2221449))

(assert (= (and b!2221451 res!953665) b!2221447))

(assert (= (and b!2221449 res!953666) b!2221454))

(assert (= (and b!2221449 c!354747) b!2221448))

(assert (= (and b!2221449 (not c!354747)) b!2221452))

(assert (= (or b!2221451 b!2221447 b!2221449 b!2221454) bm!132607))

(assert (= (or b!2221451 b!2221449 b!2221454 b!2221448) bm!132605))

(assert (= (or b!2221451 b!2221449) bm!132608))

(assert (= (or b!2221447 b!2221454) bm!132606))

(assert (= (or b!2221447 b!2221454) bm!132603))

(assert (= (or b!2221447 b!2221454) bm!132604))

(assert (= (and d!663977 res!953664) b!2221457))

(assert (=> b!2221453 m!2661826))

(declare-fun m!2662020 () Bool)

(assert (=> b!2221453 m!2662020))

(declare-fun m!2662022 () Bool)

(assert (=> b!2221453 m!2662022))

(declare-fun m!2662024 () Bool)

(assert (=> b!2221453 m!2662024))

(declare-fun m!2662026 () Bool)

(assert (=> b!2221453 m!2662026))

(declare-fun m!2662028 () Bool)

(assert (=> b!2221453 m!2662028))

(assert (=> b!2221453 m!2662020))

(declare-fun m!2662030 () Bool)

(assert (=> b!2221453 m!2662030))

(declare-fun m!2662032 () Bool)

(assert (=> b!2221453 m!2662032))

(declare-fun m!2662034 () Bool)

(assert (=> b!2221453 m!2662034))

(assert (=> bm!132605 m!2661826))

(assert (=> bm!132607 m!2661842))

(assert (=> d!663977 m!2661870))

(assert (=> d!663977 m!2661826))

(declare-fun m!2662036 () Bool)

(assert (=> d!663977 m!2662036))

(assert (=> d!663977 m!2662036))

(declare-fun m!2662038 () Bool)

(assert (=> d!663977 m!2662038))

(assert (=> d!663977 m!2661842))

(assert (=> d!663977 m!2661876))

(declare-fun m!2662040 () Bool)

(assert (=> d!663977 m!2662040))

(assert (=> d!663977 m!2661870))

(declare-fun m!2662042 () Bool)

(assert (=> d!663977 m!2662042))

(assert (=> b!2221457 m!2662032))

(assert (=> b!2221457 m!2662032))

(declare-fun m!2662044 () Bool)

(assert (=> b!2221457 m!2662044))

(assert (=> b!2221457 m!2662044))

(declare-fun m!2662046 () Bool)

(assert (=> b!2221457 m!2662046))

(declare-fun m!2662048 () Bool)

(assert (=> bm!132603 m!2662048))

(declare-fun m!2662050 () Bool)

(assert (=> bm!132606 m!2662050))

(assert (=> b!2221455 m!2661826))

(assert (=> b!2221455 m!2662032))

(declare-fun m!2662052 () Bool)

(assert (=> b!2221455 m!2662052))

(declare-fun m!2662054 () Bool)

(assert (=> b!2221455 m!2662054))

(declare-fun m!2662056 () Bool)

(assert (=> b!2221451 m!2662056))

(declare-fun m!2662058 () Bool)

(assert (=> bm!132604 m!2662058))

(declare-fun m!2662060 () Bool)

(assert (=> b!2221448 m!2662060))

(assert (=> b!2221448 m!2662060))

(declare-fun m!2662062 () Bool)

(assert (=> b!2221448 m!2662062))

(declare-fun m!2662064 () Bool)

(assert (=> b!2221448 m!2662064))

(declare-fun m!2662066 () Bool)

(assert (=> bm!132608 m!2662066))

(assert (=> d!663869 d!663977))

(assert (=> d!663869 d!663951))

(declare-fun b!2221458 () Bool)

(declare-fun e!1418884 () (InoxSet Context!3774))

(assert (=> b!2221458 (= e!1418884 ((as const (Array Context!3774 Bool)) false))))

(declare-fun e!1418882 () (InoxSet Context!3774))

(declare-fun b!2221459 () Bool)

(declare-fun call!132614 () (InoxSet Context!3774))

(assert (=> b!2221459 (= e!1418882 ((_ map or) call!132614 (derivationStepZipperUp!16 (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149)))))

(declare-fun bm!132609 () Bool)

(assert (=> bm!132609 (= call!132614 (derivationStepZipperDown!17 (h!31439 (exprs!2387 lt!827778)) (Context!3775 (t!199532 (exprs!2387 lt!827778))) a!1149))))

(declare-fun b!2221460 () Bool)

(declare-fun e!1418883 () Bool)

(assert (=> b!2221460 (= e!1418883 (nullable!1722 (h!31439 (exprs!2387 lt!827778))))))

(declare-fun d!663979 () Bool)

(declare-fun c!354750 () Bool)

(assert (=> d!663979 (= c!354750 e!1418883)))

(declare-fun res!953667 () Bool)

(assert (=> d!663979 (=> (not res!953667) (not e!1418883))))

(assert (=> d!663979 (= res!953667 ((_ is Cons!26038) (exprs!2387 lt!827778)))))

(assert (=> d!663979 (= (derivationStepZipperUp!16 lt!827778 a!1149) e!1418882)))

(declare-fun b!2221461 () Bool)

(assert (=> b!2221461 (= e!1418882 e!1418884)))

(declare-fun c!354749 () Bool)

(assert (=> b!2221461 (= c!354749 ((_ is Cons!26038) (exprs!2387 lt!827778)))))

(declare-fun b!2221462 () Bool)

(assert (=> b!2221462 (= e!1418884 call!132614)))

(assert (= (and d!663979 res!953667) b!2221460))

(assert (= (and d!663979 c!354750) b!2221459))

(assert (= (and d!663979 (not c!354750)) b!2221461))

(assert (= (and b!2221461 c!354749) b!2221462))

(assert (= (and b!2221461 (not c!354749)) b!2221458))

(assert (= (or b!2221459 b!2221462) bm!132609))

(assert (=> b!2221459 m!2661892))

(assert (=> bm!132609 m!2661982))

(assert (=> b!2221460 m!2661650))

(assert (=> d!663863 d!663979))

(declare-fun d!663981 () Bool)

(declare-fun e!1418885 () Bool)

(assert (=> d!663981 e!1418885))

(declare-fun res!953668 () Bool)

(assert (=> d!663981 (=> res!953668 e!1418885)))

(declare-fun lt!828061 () Option!5053)

(assert (=> d!663981 (= res!953668 (isEmpty!14870 lt!828061))))

(declare-fun e!1418886 () Option!5053)

(assert (=> d!663981 (= lt!828061 e!1418886)))

(declare-fun c!354751 () Bool)

(assert (=> d!663981 (= c!354751 (contains!4328 (cache!3262 cacheUp!790) (tuple2!25191 lt!827778 a!1149)))))

(assert (=> d!663981 (validCacheMapUp!266 (cache!3262 cacheUp!790))))

(assert (=> d!663981 (= (get!7802 cacheUp!790 lt!827778 a!1149) lt!828061)))

(declare-fun b!2221463 () Bool)

(assert (=> b!2221463 (= e!1418886 (Some!5052 (apply!6442 (cache!3262 cacheUp!790) (tuple2!25191 lt!827778 a!1149))))))

(declare-fun lt!828060 () Unit!38990)

(assert (=> b!2221463 (= lt!828060 (lemmaIfInCacheThenValid!19 cacheUp!790 lt!827778 a!1149))))

(declare-fun b!2221464 () Bool)

(assert (=> b!2221464 (= e!1418886 None!5052)))

(declare-fun b!2221465 () Bool)

(assert (=> b!2221465 (= e!1418885 (= (get!7803 lt!828061) (derivationStepZipperUp!16 lt!827778 a!1149)))))

(assert (= (and d!663981 c!354751) b!2221463))

(assert (= (and d!663981 (not c!354751)) b!2221464))

(assert (= (and d!663981 (not res!953668)) b!2221465))

(declare-fun m!2662068 () Bool)

(assert (=> d!663981 m!2662068))

(declare-fun m!2662070 () Bool)

(assert (=> d!663981 m!2662070))

(assert (=> d!663981 m!2661660))

(declare-fun m!2662072 () Bool)

(assert (=> b!2221463 m!2662072))

(declare-fun m!2662074 () Bool)

(assert (=> b!2221463 m!2662074))

(declare-fun m!2662076 () Bool)

(assert (=> b!2221465 m!2662076))

(assert (=> b!2221465 m!2661644))

(assert (=> d!663863 d!663981))

(declare-fun d!663983 () Bool)

(assert (=> d!663983 (= ($colon$colon!499 (exprs!2387 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72))))) (ite (or c!354673 c!354671) (regTwo!13190 (h!31439 (exprs!2387 context!72))) (h!31439 (exprs!2387 context!72)))) (Cons!26038 (ite (or c!354673 c!354671) (regTwo!13190 (h!31439 (exprs!2387 context!72))) (h!31439 (exprs!2387 context!72))) (exprs!2387 (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))))))))

(assert (=> bm!132531 d!663983))

(declare-fun bs!452711 () Bool)

(declare-fun d!663985 () Bool)

(assert (= bs!452711 (and d!663985 d!663905)))

(declare-fun lambda!83885 () Int)

(assert (=> bs!452711 (= lambda!83885 lambda!83848)))

(declare-fun bs!452712 () Bool)

(assert (= bs!452712 (and d!663985 d!663907)))

(assert (=> bs!452712 (= lambda!83885 lambda!83849)))

(declare-fun bs!452713 () Bool)

(assert (= bs!452713 (and d!663985 d!663971)))

(assert (=> bs!452713 (= lambda!83885 lambda!83880)))

(declare-fun bs!452714 () Bool)

(assert (= bs!452714 (and d!663985 d!663903)))

(assert (=> bs!452714 (= lambda!83885 lambda!83847)))

(declare-fun bs!452715 () Bool)

(assert (= bs!452715 (and d!663985 d!663897)))

(assert (=> bs!452715 (= lambda!83885 lambda!83843)))

(declare-fun bs!452716 () Bool)

(assert (= bs!452716 (and d!663985 d!663919)))

(assert (=> bs!452716 (= lambda!83885 lambda!83861)))

(declare-fun bs!452717 () Bool)

(assert (= bs!452717 (and d!663985 d!663941)))

(assert (=> bs!452717 (= lambda!83885 lambda!83868)))

(declare-fun bs!452718 () Bool)

(assert (= bs!452718 (and d!663985 d!663891)))

(assert (=> bs!452718 (= lambda!83885 lambda!83840)))

(declare-fun bs!452719 () Bool)

(assert (= bs!452719 (and d!663985 d!663961)))

(assert (=> bs!452719 (= lambda!83885 lambda!83874)))

(declare-fun bs!452720 () Bool)

(assert (= bs!452720 (and d!663985 d!663893)))

(assert (=> bs!452720 (= lambda!83885 lambda!83841)))

(declare-fun bs!452721 () Bool)

(assert (= bs!452721 (and d!663985 d!663937)))

(assert (=> bs!452721 (= lambda!83885 lambda!83867)))

(declare-fun bs!452722 () Bool)

(assert (= bs!452722 (and d!663985 d!663915)))

(assert (=> bs!452722 (= lambda!83885 lambda!83860)))

(declare-fun bs!452723 () Bool)

(assert (= bs!452723 (and d!663985 d!663923)))

(assert (=> bs!452723 (= lambda!83885 lambda!83863)))

(declare-fun bs!452724 () Bool)

(assert (= bs!452724 (and d!663985 d!663895)))

(assert (=> bs!452724 (= lambda!83885 lambda!83842)))

(declare-fun bs!452725 () Bool)

(assert (= bs!452725 (and d!663985 d!663959)))

(assert (=> bs!452725 (= lambda!83885 lambda!83873)))

(declare-fun bs!452726 () Bool)

(assert (= bs!452726 (and d!663985 d!663965)))

(assert (=> bs!452726 (= lambda!83885 lambda!83875)))

(declare-fun bs!452727 () Bool)

(assert (= bs!452727 (and d!663985 d!663945)))

(assert (=> bs!452727 (= lambda!83885 lambda!83869)))

(declare-fun bs!452728 () Bool)

(assert (= bs!452728 (and d!663985 d!663973)))

(assert (=> bs!452728 (= lambda!83885 lambda!83881)))

(declare-fun bs!452729 () Bool)

(assert (= bs!452729 (and d!663985 d!663921)))

(assert (=> bs!452729 (= lambda!83885 lambda!83862)))

(declare-fun bs!452730 () Bool)

(assert (= bs!452730 (and d!663985 d!663969)))

(assert (=> bs!452730 (= lambda!83885 lambda!83879)))

(declare-fun bs!452731 () Bool)

(assert (= bs!452731 (and d!663985 d!663957)))

(assert (=> bs!452731 (= lambda!83885 lambda!83872)))

(declare-fun bs!452732 () Bool)

(assert (= bs!452732 (and d!663985 d!663947)))

(assert (=> bs!452732 (= lambda!83885 lambda!83870)))

(declare-fun bs!452733 () Bool)

(assert (= bs!452733 (and d!663985 d!663873)))

(assert (=> bs!452733 (= lambda!83885 lambda!83836)))

(assert (=> d!663985 (= (inv!35358 (_1!14967 (_1!14968 (h!31440 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))))) (forall!5298 (exprs!2387 (_1!14967 (_1!14968 (h!31440 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))))) lambda!83885))))

(declare-fun bs!452734 () Bool)

(assert (= bs!452734 d!663985))

(declare-fun m!2662078 () Bool)

(assert (=> bs!452734 m!2662078))

(assert (=> b!2221162 d!663985))

(declare-fun bs!452735 () Bool)

(declare-fun d!663987 () Bool)

(assert (= bs!452735 (and d!663987 d!663905)))

(declare-fun lambda!83886 () Int)

(assert (=> bs!452735 (= lambda!83886 lambda!83848)))

(declare-fun bs!452736 () Bool)

(assert (= bs!452736 (and d!663987 d!663907)))

(assert (=> bs!452736 (= lambda!83886 lambda!83849)))

(declare-fun bs!452737 () Bool)

(assert (= bs!452737 (and d!663987 d!663971)))

(assert (=> bs!452737 (= lambda!83886 lambda!83880)))

(declare-fun bs!452738 () Bool)

(assert (= bs!452738 (and d!663987 d!663903)))

(assert (=> bs!452738 (= lambda!83886 lambda!83847)))

(declare-fun bs!452739 () Bool)

(assert (= bs!452739 (and d!663987 d!663919)))

(assert (=> bs!452739 (= lambda!83886 lambda!83861)))

(declare-fun bs!452740 () Bool)

(assert (= bs!452740 (and d!663987 d!663941)))

(assert (=> bs!452740 (= lambda!83886 lambda!83868)))

(declare-fun bs!452741 () Bool)

(assert (= bs!452741 (and d!663987 d!663891)))

(assert (=> bs!452741 (= lambda!83886 lambda!83840)))

(declare-fun bs!452742 () Bool)

(assert (= bs!452742 (and d!663987 d!663961)))

(assert (=> bs!452742 (= lambda!83886 lambda!83874)))

(declare-fun bs!452743 () Bool)

(assert (= bs!452743 (and d!663987 d!663893)))

(assert (=> bs!452743 (= lambda!83886 lambda!83841)))

(declare-fun bs!452744 () Bool)

(assert (= bs!452744 (and d!663987 d!663937)))

(assert (=> bs!452744 (= lambda!83886 lambda!83867)))

(declare-fun bs!452745 () Bool)

(assert (= bs!452745 (and d!663987 d!663915)))

(assert (=> bs!452745 (= lambda!83886 lambda!83860)))

(declare-fun bs!452746 () Bool)

(assert (= bs!452746 (and d!663987 d!663923)))

(assert (=> bs!452746 (= lambda!83886 lambda!83863)))

(declare-fun bs!452747 () Bool)

(assert (= bs!452747 (and d!663987 d!663895)))

(assert (=> bs!452747 (= lambda!83886 lambda!83842)))

(declare-fun bs!452748 () Bool)

(assert (= bs!452748 (and d!663987 d!663959)))

(assert (=> bs!452748 (= lambda!83886 lambda!83873)))

(declare-fun bs!452749 () Bool)

(assert (= bs!452749 (and d!663987 d!663965)))

(assert (=> bs!452749 (= lambda!83886 lambda!83875)))

(declare-fun bs!452750 () Bool)

(assert (= bs!452750 (and d!663987 d!663945)))

(assert (=> bs!452750 (= lambda!83886 lambda!83869)))

(declare-fun bs!452751 () Bool)

(assert (= bs!452751 (and d!663987 d!663985)))

(assert (=> bs!452751 (= lambda!83886 lambda!83885)))

(declare-fun bs!452752 () Bool)

(assert (= bs!452752 (and d!663987 d!663897)))

(assert (=> bs!452752 (= lambda!83886 lambda!83843)))

(declare-fun bs!452753 () Bool)

(assert (= bs!452753 (and d!663987 d!663973)))

(assert (=> bs!452753 (= lambda!83886 lambda!83881)))

(declare-fun bs!452754 () Bool)

(assert (= bs!452754 (and d!663987 d!663921)))

(assert (=> bs!452754 (= lambda!83886 lambda!83862)))

(declare-fun bs!452755 () Bool)

(assert (= bs!452755 (and d!663987 d!663969)))

(assert (=> bs!452755 (= lambda!83886 lambda!83879)))

(declare-fun bs!452756 () Bool)

(assert (= bs!452756 (and d!663987 d!663957)))

(assert (=> bs!452756 (= lambda!83886 lambda!83872)))

(declare-fun bs!452757 () Bool)

(assert (= bs!452757 (and d!663987 d!663947)))

(assert (=> bs!452757 (= lambda!83886 lambda!83870)))

(declare-fun bs!452758 () Bool)

(assert (= bs!452758 (and d!663987 d!663873)))

(assert (=> bs!452758 (= lambda!83886 lambda!83836)))

(assert (=> d!663987 (= (inv!35358 (_1!14967 (_1!14968 (h!31440 mapValue!14021)))) (forall!5298 (exprs!2387 (_1!14967 (_1!14968 (h!31440 mapValue!14021)))) lambda!83886))))

(declare-fun bs!452759 () Bool)

(assert (= bs!452759 d!663987))

(declare-fun m!2662080 () Bool)

(assert (=> bs!452759 m!2662080))

(assert (=> b!2221216 d!663987))

(declare-fun b!2221466 () Bool)

(declare-fun e!1418887 () Bool)

(declare-fun tp!692266 () Bool)

(declare-fun tp!692267 () Bool)

(assert (=> b!2221466 (= e!1418887 (and tp!692266 tp!692267))))

(assert (=> b!2221179 (= tp!692200 e!1418887)))

(assert (= (and b!2221179 ((_ is Cons!26038) (exprs!2387 (_2!14969 (_1!14970 (h!31441 mapValue!14024)))))) b!2221466))

(declare-fun condSetEmpty!19451 () Bool)

(assert (=> setNonEmpty!19430 (= condSetEmpty!19451 (= setRest!19430 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19451 () Bool)

(assert (=> setNonEmpty!19430 (= tp!692172 setRes!19451)))

(declare-fun setIsEmpty!19451 () Bool)

(assert (=> setIsEmpty!19451 setRes!19451))

(declare-fun e!1418890 () Bool)

(declare-fun tp!692272 () Bool)

(declare-fun setElem!19451 () Context!3774)

(declare-fun setNonEmpty!19451 () Bool)

(assert (=> setNonEmpty!19451 (= setRes!19451 (and tp!692272 (inv!35358 setElem!19451) e!1418890))))

(declare-fun setRest!19451 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19451 (= setRest!19430 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19451 true) setRest!19451))))

(declare-fun b!2221471 () Bool)

(declare-fun tp!692273 () Bool)

(assert (=> b!2221471 (= e!1418890 tp!692273)))

(assert (= (and setNonEmpty!19430 condSetEmpty!19451) setIsEmpty!19451))

(assert (= (and setNonEmpty!19430 (not condSetEmpty!19451)) setNonEmpty!19451))

(assert (= setNonEmpty!19451 b!2221471))

(declare-fun m!2662082 () Bool)

(assert (=> setNonEmpty!19451 m!2662082))

(declare-fun b!2221472 () Bool)

(declare-fun e!1418891 () Bool)

(declare-fun tp!692274 () Bool)

(declare-fun tp!692275 () Bool)

(assert (=> b!2221472 (= e!1418891 (and tp!692274 tp!692275))))

(assert (=> b!2221218 (= tp!692253 e!1418891)))

(assert (= (and b!2221218 ((_ is Cons!26038) (exprs!2387 setElem!19446))) b!2221472))

(declare-fun condSetEmpty!19452 () Bool)

(assert (=> setNonEmpty!19448 (= condSetEmpty!19452 (= setRest!19448 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19452 () Bool)

(assert (=> setNonEmpty!19448 (= tp!692263 setRes!19452)))

(declare-fun setIsEmpty!19452 () Bool)

(assert (=> setIsEmpty!19452 setRes!19452))

(declare-fun setNonEmpty!19452 () Bool)

(declare-fun tp!692276 () Bool)

(declare-fun e!1418892 () Bool)

(declare-fun setElem!19452 () Context!3774)

(assert (=> setNonEmpty!19452 (= setRes!19452 (and tp!692276 (inv!35358 setElem!19452) e!1418892))))

(declare-fun setRest!19452 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19452 (= setRest!19448 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19452 true) setRest!19452))))

(declare-fun b!2221473 () Bool)

(declare-fun tp!692277 () Bool)

(assert (=> b!2221473 (= e!1418892 tp!692277)))

(assert (= (and setNonEmpty!19448 condSetEmpty!19452) setIsEmpty!19452))

(assert (= (and setNonEmpty!19448 (not condSetEmpty!19452)) setNonEmpty!19452))

(assert (= setNonEmpty!19452 b!2221473))

(declare-fun m!2662084 () Bool)

(assert (=> setNonEmpty!19452 m!2662084))

(declare-fun mapNonEmpty!14028 () Bool)

(declare-fun mapRes!14028 () Bool)

(declare-fun tp!692282 () Bool)

(declare-fun e!1418896 () Bool)

(assert (=> mapNonEmpty!14028 (= mapRes!14028 (and tp!692282 e!1418896))))

(declare-fun mapKey!14028 () (_ BitVec 32))

(declare-fun mapRest!14028 () (Array (_ BitVec 32) List!26134))

(declare-fun mapValue!14028 () List!26134)

(assert (=> mapNonEmpty!14028 (= mapRest!14024 (store mapRest!14028 mapKey!14028 mapValue!14028))))

(declare-fun setNonEmpty!19453 () Bool)

(declare-fun setRes!19453 () Bool)

(declare-fun e!1418897 () Bool)

(declare-fun setElem!19453 () Context!3774)

(declare-fun tp!692288 () Bool)

(assert (=> setNonEmpty!19453 (= setRes!19453 (and tp!692288 (inv!35358 setElem!19453) e!1418897))))

(declare-fun mapDefault!14028 () List!26134)

(declare-fun setRest!19454 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19453 (= (_2!14970 (h!31441 mapDefault!14028)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19453 true) setRest!19454))))

(declare-fun b!2221474 () Bool)

(declare-fun e!1418893 () Bool)

(declare-fun tp!692279 () Bool)

(assert (=> b!2221474 (= e!1418893 tp!692279)))

(declare-fun setIsEmpty!19453 () Bool)

(declare-fun setRes!19454 () Bool)

(assert (=> setIsEmpty!19453 setRes!19454))

(declare-fun e!1418898 () Bool)

(declare-fun b!2221475 () Bool)

(declare-fun e!1418894 () Bool)

(declare-fun tp!692281 () Bool)

(declare-fun tp!692287 () Bool)

(assert (=> b!2221475 (= e!1418894 (and tp!692281 (inv!35358 (_2!14969 (_1!14970 (h!31441 mapDefault!14028)))) e!1418898 tp_is_empty!9907 setRes!19453 tp!692287))))

(declare-fun condSetEmpty!19454 () Bool)

(assert (=> b!2221475 (= condSetEmpty!19454 (= (_2!14970 (h!31441 mapDefault!14028)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221476 () Bool)

(declare-fun tp!692283 () Bool)

(assert (=> b!2221476 (= e!1418898 tp!692283)))

(declare-fun condMapEmpty!14028 () Bool)

(assert (=> mapNonEmpty!14024 (= condMapEmpty!14028 (= mapRest!14024 ((as const (Array (_ BitVec 32) List!26134)) mapDefault!14028)))))

(assert (=> mapNonEmpty!14024 (= tp!692203 (and e!1418894 mapRes!14028))))

(declare-fun tp!692284 () Bool)

(declare-fun tp!692286 () Bool)

(declare-fun b!2221477 () Bool)

(assert (=> b!2221477 (= e!1418896 (and tp!692286 (inv!35358 (_2!14969 (_1!14970 (h!31441 mapValue!14028)))) e!1418893 tp_is_empty!9907 setRes!19454 tp!692284))))

(declare-fun condSetEmpty!19453 () Bool)

(assert (=> b!2221477 (= condSetEmpty!19453 (= (_2!14970 (h!31441 mapValue!14028)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun mapIsEmpty!14028 () Bool)

(assert (=> mapIsEmpty!14028 mapRes!14028))

(declare-fun b!2221478 () Bool)

(declare-fun tp!692280 () Bool)

(assert (=> b!2221478 (= e!1418897 tp!692280)))

(declare-fun b!2221479 () Bool)

(declare-fun e!1418895 () Bool)

(declare-fun tp!692285 () Bool)

(assert (=> b!2221479 (= e!1418895 tp!692285)))

(declare-fun tp!692278 () Bool)

(declare-fun setElem!19454 () Context!3774)

(declare-fun setNonEmpty!19454 () Bool)

(assert (=> setNonEmpty!19454 (= setRes!19454 (and tp!692278 (inv!35358 setElem!19454) e!1418895))))

(declare-fun setRest!19453 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19454 (= (_2!14970 (h!31441 mapValue!14028)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19454 true) setRest!19453))))

(declare-fun setIsEmpty!19454 () Bool)

(assert (=> setIsEmpty!19454 setRes!19453))

(assert (= (and mapNonEmpty!14024 condMapEmpty!14028) mapIsEmpty!14028))

(assert (= (and mapNonEmpty!14024 (not condMapEmpty!14028)) mapNonEmpty!14028))

(assert (= b!2221477 b!2221474))

(assert (= (and b!2221477 condSetEmpty!19453) setIsEmpty!19453))

(assert (= (and b!2221477 (not condSetEmpty!19453)) setNonEmpty!19454))

(assert (= setNonEmpty!19454 b!2221479))

(assert (= (and mapNonEmpty!14028 ((_ is Cons!26040) mapValue!14028)) b!2221477))

(assert (= b!2221475 b!2221476))

(assert (= (and b!2221475 condSetEmpty!19454) setIsEmpty!19454))

(assert (= (and b!2221475 (not condSetEmpty!19454)) setNonEmpty!19453))

(assert (= setNonEmpty!19453 b!2221478))

(assert (= (and mapNonEmpty!14024 ((_ is Cons!26040) mapDefault!14028)) b!2221475))

(declare-fun m!2662086 () Bool)

(assert (=> b!2221477 m!2662086))

(declare-fun m!2662088 () Bool)

(assert (=> b!2221475 m!2662088))

(declare-fun m!2662090 () Bool)

(assert (=> mapNonEmpty!14028 m!2662090))

(declare-fun m!2662092 () Bool)

(assert (=> setNonEmpty!19453 m!2662092))

(declare-fun m!2662094 () Bool)

(assert (=> setNonEmpty!19454 m!2662094))

(declare-fun b!2221480 () Bool)

(declare-fun e!1418899 () Bool)

(declare-fun tp!692289 () Bool)

(declare-fun tp!692290 () Bool)

(assert (=> b!2221480 (= e!1418899 (and tp!692289 tp!692290))))

(assert (=> b!2221164 (= tp!692174 e!1418899)))

(assert (= (and b!2221164 ((_ is Cons!26038) (exprs!2387 setElem!19431))) b!2221480))

(declare-fun condSetEmpty!19455 () Bool)

(assert (=> setNonEmpty!19447 (= condSetEmpty!19455 (= setRest!19447 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19455 () Bool)

(assert (=> setNonEmpty!19447 (= tp!692258 setRes!19455)))

(declare-fun setIsEmpty!19455 () Bool)

(assert (=> setIsEmpty!19455 setRes!19455))

(declare-fun setNonEmpty!19455 () Bool)

(declare-fun e!1418900 () Bool)

(declare-fun tp!692291 () Bool)

(declare-fun setElem!19455 () Context!3774)

(assert (=> setNonEmpty!19455 (= setRes!19455 (and tp!692291 (inv!35358 setElem!19455) e!1418900))))

(declare-fun setRest!19455 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19455 (= setRest!19447 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19455 true) setRest!19455))))

(declare-fun b!2221481 () Bool)

(declare-fun tp!692292 () Bool)

(assert (=> b!2221481 (= e!1418900 tp!692292)))

(assert (= (and setNonEmpty!19447 condSetEmpty!19455) setIsEmpty!19455))

(assert (= (and setNonEmpty!19447 (not condSetEmpty!19455)) setNonEmpty!19455))

(assert (= setNonEmpty!19455 b!2221481))

(declare-fun m!2662096 () Bool)

(assert (=> setNonEmpty!19455 m!2662096))

(declare-fun b!2221494 () Bool)

(declare-fun e!1418903 () Bool)

(declare-fun tp!692307 () Bool)

(assert (=> b!2221494 (= e!1418903 tp!692307)))

(declare-fun b!2221495 () Bool)

(declare-fun tp!692303 () Bool)

(declare-fun tp!692306 () Bool)

(assert (=> b!2221495 (= e!1418903 (and tp!692303 tp!692306))))

(declare-fun b!2221493 () Bool)

(declare-fun tp!692305 () Bool)

(declare-fun tp!692304 () Bool)

(assert (=> b!2221493 (= e!1418903 (and tp!692305 tp!692304))))

(assert (=> b!2221180 (= tp!692202 e!1418903)))

(declare-fun b!2221492 () Bool)

(assert (=> b!2221492 (= e!1418903 tp_is_empty!9907)))

(assert (= (and b!2221180 ((_ is ElementMatch!6339) (_1!14969 (_1!14970 (h!31441 mapDefault!14024))))) b!2221492))

(assert (= (and b!2221180 ((_ is Concat!10677) (_1!14969 (_1!14970 (h!31441 mapDefault!14024))))) b!2221493))

(assert (= (and b!2221180 ((_ is Star!6339) (_1!14969 (_1!14970 (h!31441 mapDefault!14024))))) b!2221494))

(assert (= (and b!2221180 ((_ is Union!6339) (_1!14969 (_1!14970 (h!31441 mapDefault!14024))))) b!2221495))

(declare-fun setRes!19456 () Bool)

(declare-fun e!1418906 () Bool)

(declare-fun e!1418905 () Bool)

(declare-fun b!2221496 () Bool)

(declare-fun tp!692312 () Bool)

(declare-fun tp!692311 () Bool)

(assert (=> b!2221496 (= e!1418906 (and tp!692311 (inv!35358 (_2!14969 (_1!14970 (h!31441 (t!199534 mapDefault!14024))))) e!1418905 tp_is_empty!9907 setRes!19456 tp!692312))))

(declare-fun condSetEmpty!19456 () Bool)

(assert (=> b!2221496 (= condSetEmpty!19456 (= (_2!14970 (h!31441 (t!199534 mapDefault!14024))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221497 () Bool)

(declare-fun tp!692309 () Bool)

(assert (=> b!2221497 (= e!1418905 tp!692309)))

(declare-fun b!2221498 () Bool)

(declare-fun e!1418904 () Bool)

(declare-fun tp!692308 () Bool)

(assert (=> b!2221498 (= e!1418904 tp!692308)))

(declare-fun setIsEmpty!19456 () Bool)

(assert (=> setIsEmpty!19456 setRes!19456))

(assert (=> b!2221180 (= tp!692208 e!1418906)))

(declare-fun tp!692310 () Bool)

(declare-fun setElem!19456 () Context!3774)

(declare-fun setNonEmpty!19456 () Bool)

(assert (=> setNonEmpty!19456 (= setRes!19456 (and tp!692310 (inv!35358 setElem!19456) e!1418904))))

(declare-fun setRest!19456 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19456 (= (_2!14970 (h!31441 (t!199534 mapDefault!14024))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19456 true) setRest!19456))))

(assert (= b!2221496 b!2221497))

(assert (= (and b!2221496 condSetEmpty!19456) setIsEmpty!19456))

(assert (= (and b!2221496 (not condSetEmpty!19456)) setNonEmpty!19456))

(assert (= setNonEmpty!19456 b!2221498))

(assert (= (and b!2221180 ((_ is Cons!26040) (t!199534 mapDefault!14024))) b!2221496))

(declare-fun m!2662098 () Bool)

(assert (=> b!2221496 m!2662098))

(declare-fun m!2662100 () Bool)

(assert (=> setNonEmpty!19456 m!2662100))

(declare-fun b!2221501 () Bool)

(declare-fun e!1418907 () Bool)

(declare-fun tp!692317 () Bool)

(assert (=> b!2221501 (= e!1418907 tp!692317)))

(declare-fun b!2221502 () Bool)

(declare-fun tp!692313 () Bool)

(declare-fun tp!692316 () Bool)

(assert (=> b!2221502 (= e!1418907 (and tp!692313 tp!692316))))

(declare-fun b!2221500 () Bool)

(declare-fun tp!692315 () Bool)

(declare-fun tp!692314 () Bool)

(assert (=> b!2221500 (= e!1418907 (and tp!692315 tp!692314))))

(assert (=> b!2221148 (= tp!692159 e!1418907)))

(declare-fun b!2221499 () Bool)

(assert (=> b!2221499 (= e!1418907 tp_is_empty!9907)))

(assert (= (and b!2221148 ((_ is ElementMatch!6339) (_1!14969 (_1!14970 (h!31441 mapDefault!14020))))) b!2221499))

(assert (= (and b!2221148 ((_ is Concat!10677) (_1!14969 (_1!14970 (h!31441 mapDefault!14020))))) b!2221500))

(assert (= (and b!2221148 ((_ is Star!6339) (_1!14969 (_1!14970 (h!31441 mapDefault!14020))))) b!2221501))

(assert (= (and b!2221148 ((_ is Union!6339) (_1!14969 (_1!14970 (h!31441 mapDefault!14020))))) b!2221502))

(declare-fun b!2221503 () Bool)

(declare-fun tp!692321 () Bool)

(declare-fun setRes!19457 () Bool)

(declare-fun tp!692322 () Bool)

(declare-fun e!1418909 () Bool)

(declare-fun e!1418910 () Bool)

(assert (=> b!2221503 (= e!1418910 (and tp!692321 (inv!35358 (_2!14969 (_1!14970 (h!31441 (t!199534 mapDefault!14020))))) e!1418909 tp_is_empty!9907 setRes!19457 tp!692322))))

(declare-fun condSetEmpty!19457 () Bool)

(assert (=> b!2221503 (= condSetEmpty!19457 (= (_2!14970 (h!31441 (t!199534 mapDefault!14020))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221504 () Bool)

(declare-fun tp!692319 () Bool)

(assert (=> b!2221504 (= e!1418909 tp!692319)))

(declare-fun b!2221505 () Bool)

(declare-fun e!1418908 () Bool)

(declare-fun tp!692318 () Bool)

(assert (=> b!2221505 (= e!1418908 tp!692318)))

(declare-fun setIsEmpty!19457 () Bool)

(assert (=> setIsEmpty!19457 setRes!19457))

(assert (=> b!2221148 (= tp!692160 e!1418910)))

(declare-fun tp!692320 () Bool)

(declare-fun setNonEmpty!19457 () Bool)

(declare-fun setElem!19457 () Context!3774)

(assert (=> setNonEmpty!19457 (= setRes!19457 (and tp!692320 (inv!35358 setElem!19457) e!1418908))))

(declare-fun setRest!19457 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19457 (= (_2!14970 (h!31441 (t!199534 mapDefault!14020))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19457 true) setRest!19457))))

(assert (= b!2221503 b!2221504))

(assert (= (and b!2221503 condSetEmpty!19457) setIsEmpty!19457))

(assert (= (and b!2221503 (not condSetEmpty!19457)) setNonEmpty!19457))

(assert (= setNonEmpty!19457 b!2221505))

(assert (= (and b!2221148 ((_ is Cons!26040) (t!199534 mapDefault!14020))) b!2221503))

(declare-fun m!2662102 () Bool)

(assert (=> b!2221503 m!2662102))

(declare-fun m!2662104 () Bool)

(assert (=> setNonEmpty!19457 m!2662104))

(declare-fun condSetEmpty!19458 () Bool)

(assert (=> setNonEmpty!19427 (= condSetEmpty!19458 (= setRest!19427 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19458 () Bool)

(assert (=> setNonEmpty!19427 (= tp!692158 setRes!19458)))

(declare-fun setIsEmpty!19458 () Bool)

(assert (=> setIsEmpty!19458 setRes!19458))

(declare-fun setElem!19458 () Context!3774)

(declare-fun tp!692323 () Bool)

(declare-fun e!1418911 () Bool)

(declare-fun setNonEmpty!19458 () Bool)

(assert (=> setNonEmpty!19458 (= setRes!19458 (and tp!692323 (inv!35358 setElem!19458) e!1418911))))

(declare-fun setRest!19458 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19458 (= setRest!19427 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19458 true) setRest!19458))))

(declare-fun b!2221506 () Bool)

(declare-fun tp!692324 () Bool)

(assert (=> b!2221506 (= e!1418911 tp!692324)))

(assert (= (and setNonEmpty!19427 condSetEmpty!19458) setIsEmpty!19458))

(assert (= (and setNonEmpty!19427 (not condSetEmpty!19458)) setNonEmpty!19458))

(assert (= setNonEmpty!19458 b!2221506))

(declare-fun m!2662106 () Bool)

(assert (=> setNonEmpty!19458 m!2662106))

(declare-fun b!2221507 () Bool)

(declare-fun e!1418912 () Bool)

(declare-fun tp!692325 () Bool)

(declare-fun tp!692326 () Bool)

(assert (=> b!2221507 (= e!1418912 (and tp!692325 tp!692326))))

(assert (=> b!2221211 (= tp!692247 e!1418912)))

(assert (= (and b!2221211 ((_ is Cons!26038) (exprs!2387 setElem!19444))) b!2221507))

(declare-fun b!2221510 () Bool)

(declare-fun e!1418913 () Bool)

(declare-fun tp!692331 () Bool)

(assert (=> b!2221510 (= e!1418913 tp!692331)))

(declare-fun b!2221511 () Bool)

(declare-fun tp!692327 () Bool)

(declare-fun tp!692330 () Bool)

(assert (=> b!2221511 (= e!1418913 (and tp!692327 tp!692330))))

(declare-fun b!2221509 () Bool)

(declare-fun tp!692329 () Bool)

(declare-fun tp!692328 () Bool)

(assert (=> b!2221509 (= e!1418913 (and tp!692329 tp!692328))))

(assert (=> b!2221182 (= tp!692207 e!1418913)))

(declare-fun b!2221508 () Bool)

(assert (=> b!2221508 (= e!1418913 tp_is_empty!9907)))

(assert (= (and b!2221182 ((_ is ElementMatch!6339) (_1!14969 (_1!14970 (h!31441 mapValue!14024))))) b!2221508))

(assert (= (and b!2221182 ((_ is Concat!10677) (_1!14969 (_1!14970 (h!31441 mapValue!14024))))) b!2221509))

(assert (= (and b!2221182 ((_ is Star!6339) (_1!14969 (_1!14970 (h!31441 mapValue!14024))))) b!2221510))

(assert (= (and b!2221182 ((_ is Union!6339) (_1!14969 (_1!14970 (h!31441 mapValue!14024))))) b!2221511))

(declare-fun e!1418916 () Bool)

(declare-fun e!1418915 () Bool)

(declare-fun b!2221512 () Bool)

(declare-fun setRes!19459 () Bool)

(declare-fun tp!692336 () Bool)

(declare-fun tp!692335 () Bool)

(assert (=> b!2221512 (= e!1418916 (and tp!692335 (inv!35358 (_2!14969 (_1!14970 (h!31441 (t!199534 mapValue!14024))))) e!1418915 tp_is_empty!9907 setRes!19459 tp!692336))))

(declare-fun condSetEmpty!19459 () Bool)

(assert (=> b!2221512 (= condSetEmpty!19459 (= (_2!14970 (h!31441 (t!199534 mapValue!14024))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221513 () Bool)

(declare-fun tp!692333 () Bool)

(assert (=> b!2221513 (= e!1418915 tp!692333)))

(declare-fun b!2221514 () Bool)

(declare-fun e!1418914 () Bool)

(declare-fun tp!692332 () Bool)

(assert (=> b!2221514 (= e!1418914 tp!692332)))

(declare-fun setIsEmpty!19459 () Bool)

(assert (=> setIsEmpty!19459 setRes!19459))

(assert (=> b!2221182 (= tp!692205 e!1418916)))

(declare-fun setNonEmpty!19459 () Bool)

(declare-fun tp!692334 () Bool)

(declare-fun setElem!19459 () Context!3774)

(assert (=> setNonEmpty!19459 (= setRes!19459 (and tp!692334 (inv!35358 setElem!19459) e!1418914))))

(declare-fun setRest!19459 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19459 (= (_2!14970 (h!31441 (t!199534 mapValue!14024))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19459 true) setRest!19459))))

(assert (= b!2221512 b!2221513))

(assert (= (and b!2221512 condSetEmpty!19459) setIsEmpty!19459))

(assert (= (and b!2221512 (not condSetEmpty!19459)) setNonEmpty!19459))

(assert (= setNonEmpty!19459 b!2221514))

(assert (= (and b!2221182 ((_ is Cons!26040) (t!199534 mapValue!14024))) b!2221512))

(declare-fun m!2662108 () Bool)

(assert (=> b!2221512 m!2662108))

(declare-fun m!2662110 () Bool)

(assert (=> setNonEmpty!19459 m!2662110))

(declare-fun b!2221515 () Bool)

(declare-fun e!1418917 () Bool)

(declare-fun tp!692337 () Bool)

(declare-fun tp!692338 () Bool)

(assert (=> b!2221515 (= e!1418917 (and tp!692337 tp!692338))))

(assert (=> b!2221150 (= tp!692156 e!1418917)))

(assert (= (and b!2221150 ((_ is Cons!26038) (exprs!2387 setElem!19427))) b!2221515))

(declare-fun condSetEmpty!19460 () Bool)

(assert (=> setNonEmpty!19437 (= condSetEmpty!19460 (= setRest!19436 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19460 () Bool)

(assert (=> setNonEmpty!19437 (= tp!692199 setRes!19460)))

(declare-fun setIsEmpty!19460 () Bool)

(assert (=> setIsEmpty!19460 setRes!19460))

(declare-fun setNonEmpty!19460 () Bool)

(declare-fun tp!692339 () Bool)

(declare-fun e!1418918 () Bool)

(declare-fun setElem!19460 () Context!3774)

(assert (=> setNonEmpty!19460 (= setRes!19460 (and tp!692339 (inv!35358 setElem!19460) e!1418918))))

(declare-fun setRest!19460 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19460 (= setRest!19436 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19460 true) setRest!19460))))

(declare-fun b!2221516 () Bool)

(declare-fun tp!692340 () Bool)

(assert (=> b!2221516 (= e!1418918 tp!692340)))

(assert (= (and setNonEmpty!19437 condSetEmpty!19460) setIsEmpty!19460))

(assert (= (and setNonEmpty!19437 (not condSetEmpty!19460)) setNonEmpty!19460))

(assert (= setNonEmpty!19460 b!2221516))

(declare-fun m!2662112 () Bool)

(assert (=> setNonEmpty!19460 m!2662112))

(declare-fun e!1418920 () Bool)

(assert (=> b!2221193 (= tp!692221 e!1418920)))

(declare-fun setIsEmpty!19461 () Bool)

(declare-fun setRes!19461 () Bool)

(assert (=> setIsEmpty!19461 setRes!19461))

(declare-fun tp!692341 () Bool)

(declare-fun b!2221517 () Bool)

(declare-fun e!1418919 () Bool)

(assert (=> b!2221517 (= e!1418920 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 (t!199533 mapDefault!14021))))) e!1418919 tp_is_empty!9907 setRes!19461 tp!692341))))

(declare-fun condSetEmpty!19461 () Bool)

(assert (=> b!2221517 (= condSetEmpty!19461 (= (_2!14968 (h!31440 (t!199533 mapDefault!14021))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221518 () Bool)

(declare-fun tp!692343 () Bool)

(assert (=> b!2221518 (= e!1418919 tp!692343)))

(declare-fun setElem!19461 () Context!3774)

(declare-fun tp!692344 () Bool)

(declare-fun e!1418921 () Bool)

(declare-fun setNonEmpty!19461 () Bool)

(assert (=> setNonEmpty!19461 (= setRes!19461 (and tp!692344 (inv!35358 setElem!19461) e!1418921))))

(declare-fun setRest!19461 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19461 (= (_2!14968 (h!31440 (t!199533 mapDefault!14021))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19461 true) setRest!19461))))

(declare-fun b!2221519 () Bool)

(declare-fun tp!692342 () Bool)

(assert (=> b!2221519 (= e!1418921 tp!692342)))

(assert (= b!2221517 b!2221518))

(assert (= (and b!2221517 condSetEmpty!19461) setIsEmpty!19461))

(assert (= (and b!2221517 (not condSetEmpty!19461)) setNonEmpty!19461))

(assert (= setNonEmpty!19461 b!2221519))

(assert (= (and b!2221193 ((_ is Cons!26039) (t!199533 mapDefault!14021))) b!2221517))

(declare-fun m!2662114 () Bool)

(assert (=> b!2221517 m!2662114))

(declare-fun m!2662116 () Bool)

(assert (=> setNonEmpty!19461 m!2662116))

(declare-fun condSetEmpty!19462 () Bool)

(assert (=> setNonEmpty!19444 (= condSetEmpty!19462 (= setRest!19444 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19462 () Bool)

(assert (=> setNonEmpty!19444 (= tp!692246 setRes!19462)))

(declare-fun setIsEmpty!19462 () Bool)

(assert (=> setIsEmpty!19462 setRes!19462))

(declare-fun setNonEmpty!19462 () Bool)

(declare-fun tp!692345 () Bool)

(declare-fun setElem!19462 () Context!3774)

(declare-fun e!1418922 () Bool)

(assert (=> setNonEmpty!19462 (= setRes!19462 (and tp!692345 (inv!35358 setElem!19462) e!1418922))))

(declare-fun setRest!19462 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19462 (= setRest!19444 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19462 true) setRest!19462))))

(declare-fun b!2221520 () Bool)

(declare-fun tp!692346 () Bool)

(assert (=> b!2221520 (= e!1418922 tp!692346)))

(assert (= (and setNonEmpty!19444 condSetEmpty!19462) setIsEmpty!19462))

(assert (= (and setNonEmpty!19444 (not condSetEmpty!19462)) setNonEmpty!19462))

(assert (= setNonEmpty!19462 b!2221520))

(declare-fun m!2662118 () Bool)

(assert (=> setNonEmpty!19462 m!2662118))

(declare-fun b!2221521 () Bool)

(declare-fun e!1418923 () Bool)

(declare-fun tp!692347 () Bool)

(declare-fun tp!692348 () Bool)

(assert (=> b!2221521 (= e!1418923 (and tp!692347 tp!692348))))

(assert (=> b!2221183 (= tp!692201 e!1418923)))

(assert (= (and b!2221183 ((_ is Cons!26038) (exprs!2387 setElem!19436))) b!2221521))

(declare-fun condSetEmpty!19463 () Bool)

(assert (=> setNonEmpty!19439 (= condSetEmpty!19463 (= setRest!19439 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19463 () Bool)

(assert (=> setNonEmpty!19439 (= tp!692224 setRes!19463)))

(declare-fun setIsEmpty!19463 () Bool)

(assert (=> setIsEmpty!19463 setRes!19463))

(declare-fun setElem!19463 () Context!3774)

(declare-fun tp!692349 () Bool)

(declare-fun setNonEmpty!19463 () Bool)

(declare-fun e!1418924 () Bool)

(assert (=> setNonEmpty!19463 (= setRes!19463 (and tp!692349 (inv!35358 setElem!19463) e!1418924))))

(declare-fun setRest!19463 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19463 (= setRest!19439 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19463 true) setRest!19463))))

(declare-fun b!2221522 () Bool)

(declare-fun tp!692350 () Bool)

(assert (=> b!2221522 (= e!1418924 tp!692350)))

(assert (= (and setNonEmpty!19439 condSetEmpty!19463) setIsEmpty!19463))

(assert (= (and setNonEmpty!19439 (not condSetEmpty!19463)) setNonEmpty!19463))

(assert (= setNonEmpty!19463 b!2221522))

(declare-fun m!2662120 () Bool)

(assert (=> setNonEmpty!19463 m!2662120))

(declare-fun condSetEmpty!19464 () Bool)

(assert (=> setNonEmpty!19445 (= condSetEmpty!19464 (= setRest!19445 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19464 () Bool)

(assert (=> setNonEmpty!19445 (= tp!692249 setRes!19464)))

(declare-fun setIsEmpty!19464 () Bool)

(assert (=> setIsEmpty!19464 setRes!19464))

(declare-fun setElem!19464 () Context!3774)

(declare-fun tp!692351 () Bool)

(declare-fun setNonEmpty!19464 () Bool)

(declare-fun e!1418925 () Bool)

(assert (=> setNonEmpty!19464 (= setRes!19464 (and tp!692351 (inv!35358 setElem!19464) e!1418925))))

(declare-fun setRest!19464 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19464 (= setRest!19445 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19464 true) setRest!19464))))

(declare-fun b!2221523 () Bool)

(declare-fun tp!692352 () Bool)

(assert (=> b!2221523 (= e!1418925 tp!692352)))

(assert (= (and setNonEmpty!19445 condSetEmpty!19464) setIsEmpty!19464))

(assert (= (and setNonEmpty!19445 (not condSetEmpty!19464)) setNonEmpty!19464))

(assert (= setNonEmpty!19464 b!2221523))

(declare-fun m!2662122 () Bool)

(assert (=> setNonEmpty!19464 m!2662122))

(declare-fun b!2221524 () Bool)

(declare-fun e!1418926 () Bool)

(declare-fun tp!692353 () Bool)

(declare-fun tp!692354 () Bool)

(assert (=> b!2221524 (= e!1418926 (and tp!692353 tp!692354))))

(assert (=> b!2221186 (= tp!692211 e!1418926)))

(assert (= (and b!2221186 ((_ is Cons!26038) (exprs!2387 (_2!14969 (_1!14970 (h!31441 mapValue!14020)))))) b!2221524))

(declare-fun b!2221525 () Bool)

(declare-fun e!1418927 () Bool)

(declare-fun tp!692355 () Bool)

(declare-fun tp!692356 () Bool)

(assert (=> b!2221525 (= e!1418927 (and tp!692355 tp!692356))))

(assert (=> b!2221214 (= tp!692245 e!1418927)))

(assert (= (and b!2221214 ((_ is Cons!26038) (exprs!2387 setElem!19445))) b!2221525))

(declare-fun b!2221526 () Bool)

(declare-fun e!1418928 () Bool)

(declare-fun tp!692357 () Bool)

(declare-fun tp!692358 () Bool)

(assert (=> b!2221526 (= e!1418928 (and tp!692357 tp!692358))))

(assert (=> b!2221223 (= tp!692262 e!1418928)))

(assert (= (and b!2221223 ((_ is Cons!26038) (exprs!2387 (_2!14969 (_1!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))))))) b!2221526))

(declare-fun e!1418930 () Bool)

(assert (=> b!2221215 (= tp!692244 e!1418930)))

(declare-fun setIsEmpty!19465 () Bool)

(declare-fun setRes!19465 () Bool)

(assert (=> setIsEmpty!19465 setRes!19465))

(declare-fun e!1418929 () Bool)

(declare-fun b!2221527 () Bool)

(declare-fun tp!692359 () Bool)

(assert (=> b!2221527 (= e!1418930 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 (t!199533 mapDefault!14027))))) e!1418929 tp_is_empty!9907 setRes!19465 tp!692359))))

(declare-fun condSetEmpty!19465 () Bool)

(assert (=> b!2221527 (= condSetEmpty!19465 (= (_2!14968 (h!31440 (t!199533 mapDefault!14027))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221528 () Bool)

(declare-fun tp!692361 () Bool)

(assert (=> b!2221528 (= e!1418929 tp!692361)))

(declare-fun e!1418931 () Bool)

(declare-fun tp!692362 () Bool)

(declare-fun setNonEmpty!19465 () Bool)

(declare-fun setElem!19465 () Context!3774)

(assert (=> setNonEmpty!19465 (= setRes!19465 (and tp!692362 (inv!35358 setElem!19465) e!1418931))))

(declare-fun setRest!19465 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19465 (= (_2!14968 (h!31440 (t!199533 mapDefault!14027))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19465 true) setRest!19465))))

(declare-fun b!2221529 () Bool)

(declare-fun tp!692360 () Bool)

(assert (=> b!2221529 (= e!1418931 tp!692360)))

(assert (= b!2221527 b!2221528))

(assert (= (and b!2221527 condSetEmpty!19465) setIsEmpty!19465))

(assert (= (and b!2221527 (not condSetEmpty!19465)) setNonEmpty!19465))

(assert (= setNonEmpty!19465 b!2221529))

(assert (= (and b!2221215 ((_ is Cons!26039) (t!199533 mapDefault!14027))) b!2221527))

(declare-fun m!2662124 () Bool)

(assert (=> b!2221527 m!2662124))

(declare-fun m!2662126 () Bool)

(assert (=> setNonEmpty!19465 m!2662126))

(declare-fun b!2221532 () Bool)

(declare-fun e!1418932 () Bool)

(declare-fun tp!692367 () Bool)

(assert (=> b!2221532 (= e!1418932 tp!692367)))

(declare-fun b!2221533 () Bool)

(declare-fun tp!692363 () Bool)

(declare-fun tp!692366 () Bool)

(assert (=> b!2221533 (= e!1418932 (and tp!692363 tp!692366))))

(declare-fun b!2221531 () Bool)

(declare-fun tp!692365 () Bool)

(declare-fun tp!692364 () Bool)

(assert (=> b!2221531 (= e!1418932 (and tp!692365 tp!692364))))

(assert (=> b!2221192 (= tp!692219 e!1418932)))

(declare-fun b!2221530 () Bool)

(assert (=> b!2221530 (= e!1418932 tp_is_empty!9907)))

(assert (= (and b!2221192 ((_ is ElementMatch!6339) (h!31439 (exprs!2387 context!72)))) b!2221530))

(assert (= (and b!2221192 ((_ is Concat!10677) (h!31439 (exprs!2387 context!72)))) b!2221531))

(assert (= (and b!2221192 ((_ is Star!6339) (h!31439 (exprs!2387 context!72)))) b!2221532))

(assert (= (and b!2221192 ((_ is Union!6339) (h!31439 (exprs!2387 context!72)))) b!2221533))

(declare-fun b!2221534 () Bool)

(declare-fun e!1418933 () Bool)

(declare-fun tp!692368 () Bool)

(declare-fun tp!692369 () Bool)

(assert (=> b!2221534 (= e!1418933 (and tp!692368 tp!692369))))

(assert (=> b!2221192 (= tp!692220 e!1418933)))

(assert (= (and b!2221192 ((_ is Cons!26038) (t!199532 (exprs!2387 context!72)))) b!2221534))

(declare-fun condSetEmpty!19466 () Bool)

(assert (=> setNonEmpty!19431 (= condSetEmpty!19466 (= setRest!19431 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19466 () Bool)

(assert (=> setNonEmpty!19431 (= tp!692176 setRes!19466)))

(declare-fun setIsEmpty!19466 () Bool)

(assert (=> setIsEmpty!19466 setRes!19466))

(declare-fun setElem!19466 () Context!3774)

(declare-fun e!1418934 () Bool)

(declare-fun tp!692370 () Bool)

(declare-fun setNonEmpty!19466 () Bool)

(assert (=> setNonEmpty!19466 (= setRes!19466 (and tp!692370 (inv!35358 setElem!19466) e!1418934))))

(declare-fun setRest!19466 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19466 (= setRest!19431 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19466 true) setRest!19466))))

(declare-fun b!2221535 () Bool)

(declare-fun tp!692371 () Bool)

(assert (=> b!2221535 (= e!1418934 tp!692371)))

(assert (= (and setNonEmpty!19431 condSetEmpty!19466) setIsEmpty!19466))

(assert (= (and setNonEmpty!19431 (not condSetEmpty!19466)) setNonEmpty!19466))

(assert (= setNonEmpty!19466 b!2221535))

(declare-fun m!2662128 () Bool)

(assert (=> setNonEmpty!19466 m!2662128))

(declare-fun b!2221536 () Bool)

(declare-fun e!1418935 () Bool)

(declare-fun tp!692372 () Bool)

(declare-fun tp!692373 () Bool)

(assert (=> b!2221536 (= e!1418935 (and tp!692372 tp!692373))))

(assert (=> b!2221160 (= tp!692171 e!1418935)))

(assert (= (and b!2221160 ((_ is Cons!26038) (exprs!2387 (_1!14967 (_1!14968 (h!31440 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))))))) b!2221536))

(declare-fun condSetEmpty!19467 () Bool)

(assert (=> setNonEmpty!19446 (= condSetEmpty!19467 (= setRest!19446 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19467 () Bool)

(assert (=> setNonEmpty!19446 (= tp!692255 setRes!19467)))

(declare-fun setIsEmpty!19467 () Bool)

(assert (=> setIsEmpty!19467 setRes!19467))

(declare-fun tp!692374 () Bool)

(declare-fun setNonEmpty!19467 () Bool)

(declare-fun setElem!19467 () Context!3774)

(declare-fun e!1418936 () Bool)

(assert (=> setNonEmpty!19467 (= setRes!19467 (and tp!692374 (inv!35358 setElem!19467) e!1418936))))

(declare-fun setRest!19467 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19467 (= setRest!19446 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19467 true) setRest!19467))))

(declare-fun b!2221537 () Bool)

(declare-fun tp!692375 () Bool)

(assert (=> b!2221537 (= e!1418936 tp!692375)))

(assert (= (and setNonEmpty!19446 condSetEmpty!19467) setIsEmpty!19467))

(assert (= (and setNonEmpty!19446 (not condSetEmpty!19467)) setNonEmpty!19467))

(assert (= setNonEmpty!19467 b!2221537))

(declare-fun m!2662130 () Bool)

(assert (=> setNonEmpty!19467 m!2662130))

(declare-fun b!2221552 () Bool)

(declare-fun e!1418952 () Bool)

(declare-fun e!1418949 () Bool)

(assert (=> b!2221552 (= e!1418952 e!1418949)))

(declare-fun e!1418950 () Bool)

(declare-fun e!1418951 () Bool)

(assert (=> d!663863 (= true (and e!1418950 e!1418951))))

(declare-fun b!2221553 () Bool)

(declare-fun e!1418954 () Bool)

(declare-fun e!1418953 () Bool)

(assert (=> b!2221553 (= e!1418954 e!1418953)))

(declare-fun b!2221554 () Bool)

(assert (=> b!2221554 (= e!1418951 e!1418954)))

(declare-fun b!2221555 () Bool)

(declare-fun lt!828067 () MutLongMap!2971)

(assert (=> b!2221555 (= e!1418953 ((_ is LongMap!2971) lt!828067))))

(assert (=> b!2221555 (= lt!828067 (v!29577 (underlying!6144 (cache!3263 (_3!2373 (derivationStepZipperUpMem!1 lt!827778 a!1149 cacheUp!790 (_2!14972 lt!827780)))))))))

(declare-fun b!2221556 () Bool)

(declare-fun lt!828066 () MutLongMap!2972)

(assert (=> b!2221556 (= e!1418949 ((_ is LongMap!2972) lt!828066))))

(assert (=> b!2221556 (= lt!828066 (v!29579 (underlying!6146 (cache!3262 (_2!14971 (derivationStepZipperUpMem!1 lt!827778 a!1149 cacheUp!790 (_2!14972 lt!827780)))))))))

(declare-fun b!2221557 () Bool)

(assert (=> b!2221557 (= e!1418950 e!1418952)))

(assert (= b!2221552 b!2221556))

(assert (= (and b!2221557 ((_ is HashMap!2882) (cache!3262 (_2!14971 (derivationStepZipperUpMem!1 lt!827778 a!1149 cacheUp!790 (_2!14972 lt!827780)))))) b!2221552))

(assert (= d!663863 b!2221557))

(assert (= b!2221553 b!2221555))

(assert (= (and b!2221554 ((_ is HashMap!2881) (cache!3263 (_3!2373 (derivationStepZipperUpMem!1 lt!827778 a!1149 cacheUp!790 (_2!14972 lt!827780)))))) b!2221553))

(assert (= d!663863 b!2221554))

(declare-fun e!1418956 () Bool)

(assert (=> b!2221162 (= tp!692173 e!1418956)))

(declare-fun setIsEmpty!19468 () Bool)

(declare-fun setRes!19468 () Bool)

(assert (=> setIsEmpty!19468 setRes!19468))

(declare-fun tp!692376 () Bool)

(declare-fun b!2221558 () Bool)

(declare-fun e!1418955 () Bool)

(assert (=> b!2221558 (= e!1418956 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 (t!199533 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))))) e!1418955 tp_is_empty!9907 setRes!19468 tp!692376))))

(declare-fun condSetEmpty!19468 () Bool)

(assert (=> b!2221558 (= condSetEmpty!19468 (= (_2!14968 (h!31440 (t!199533 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221559 () Bool)

(declare-fun tp!692378 () Bool)

(assert (=> b!2221559 (= e!1418955 tp!692378)))

(declare-fun setNonEmpty!19468 () Bool)

(declare-fun setElem!19468 () Context!3774)

(declare-fun e!1418957 () Bool)

(declare-fun tp!692379 () Bool)

(assert (=> setNonEmpty!19468 (= setRes!19468 (and tp!692379 (inv!35358 setElem!19468) e!1418957))))

(declare-fun setRest!19468 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19468 (= (_2!14968 (h!31440 (t!199533 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19468 true) setRest!19468))))

(declare-fun b!2221560 () Bool)

(declare-fun tp!692377 () Bool)

(assert (=> b!2221560 (= e!1418957 tp!692377)))

(assert (= b!2221558 b!2221559))

(assert (= (and b!2221558 condSetEmpty!19468) setIsEmpty!19468))

(assert (= (and b!2221558 (not condSetEmpty!19468)) setNonEmpty!19468))

(assert (= setNonEmpty!19468 b!2221560))

(assert (= (and b!2221162 ((_ is Cons!26039) (t!199533 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))) b!2221558))

(declare-fun m!2662132 () Bool)

(assert (=> b!2221558 m!2662132))

(declare-fun m!2662134 () Bool)

(assert (=> setNonEmpty!19468 m!2662134))

(declare-fun b!2221561 () Bool)

(declare-fun e!1418958 () Bool)

(declare-fun tp!692380 () Bool)

(declare-fun tp!692381 () Bool)

(assert (=> b!2221561 (= e!1418958 (and tp!692380 tp!692381))))

(assert (=> b!2221220 (= tp!692257 e!1418958)))

(assert (= (and b!2221220 ((_ is Cons!26038) (exprs!2387 (_2!14969 (_1!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803)))))))))))) b!2221561))

(declare-fun e!1418960 () Bool)

(assert (=> b!2221216 (= tp!692252 e!1418960)))

(declare-fun setIsEmpty!19469 () Bool)

(declare-fun setRes!19469 () Bool)

(assert (=> setIsEmpty!19469 setRes!19469))

(declare-fun tp!692382 () Bool)

(declare-fun e!1418959 () Bool)

(declare-fun b!2221562 () Bool)

(assert (=> b!2221562 (= e!1418960 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 (t!199533 mapValue!14021))))) e!1418959 tp_is_empty!9907 setRes!19469 tp!692382))))

(declare-fun condSetEmpty!19469 () Bool)

(assert (=> b!2221562 (= condSetEmpty!19469 (= (_2!14968 (h!31440 (t!199533 mapValue!14021))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221563 () Bool)

(declare-fun tp!692384 () Bool)

(assert (=> b!2221563 (= e!1418959 tp!692384)))

(declare-fun setElem!19469 () Context!3774)

(declare-fun e!1418961 () Bool)

(declare-fun tp!692385 () Bool)

(declare-fun setNonEmpty!19469 () Bool)

(assert (=> setNonEmpty!19469 (= setRes!19469 (and tp!692385 (inv!35358 setElem!19469) e!1418961))))

(declare-fun setRest!19469 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19469 (= (_2!14968 (h!31440 (t!199533 mapValue!14021))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19469 true) setRest!19469))))

(declare-fun b!2221564 () Bool)

(declare-fun tp!692383 () Bool)

(assert (=> b!2221564 (= e!1418961 tp!692383)))

(assert (= b!2221562 b!2221563))

(assert (= (and b!2221562 condSetEmpty!19469) setIsEmpty!19469))

(assert (= (and b!2221562 (not condSetEmpty!19469)) setNonEmpty!19469))

(assert (= setNonEmpty!19469 b!2221564))

(assert (= (and b!2221216 ((_ is Cons!26039) (t!199533 mapValue!14021))) b!2221562))

(declare-fun m!2662136 () Bool)

(assert (=> b!2221562 m!2662136))

(declare-fun m!2662138 () Bool)

(assert (=> setNonEmpty!19469 m!2662138))

(declare-fun b!2221575 () Bool)

(declare-fun e!1418970 () Bool)

(declare-fun lt!828070 () MutLongMap!2971)

(assert (=> b!2221575 (= e!1418970 ((_ is LongMap!2971) lt!828070))))

(assert (=> b!2221575 (= lt!828070 (v!29577 (underlying!6144 (cache!3263 (_2!14972 (derivationStepZipperDownMem!2 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149 cacheDown!803))))))))

(declare-fun b!2221574 () Bool)

(declare-fun e!1418969 () Bool)

(assert (=> b!2221574 (= e!1418969 e!1418970)))

(declare-fun b!2221573 () Bool)

(declare-fun e!1418968 () Bool)

(assert (=> b!2221573 (= e!1418968 e!1418969)))

(assert (=> d!663879 (= true e!1418968)))

(assert (= b!2221574 b!2221575))

(assert (= (and b!2221573 ((_ is HashMap!2881) (cache!3263 (_2!14972 (derivationStepZipperDownMem!2 (h!31439 (exprs!2387 context!72)) (ite c!354641 lt!827778 (Context!3775 (t!199532 (exprs!2387 context!72)))) a!1149 cacheDown!803))))) b!2221574))

(assert (= d!663879 b!2221573))

(declare-fun condSetEmpty!19470 () Bool)

(assert (=> setNonEmpty!19436 (= condSetEmpty!19470 (= setRest!19437 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19470 () Bool)

(assert (=> setNonEmpty!19436 (= tp!692209 setRes!19470)))

(declare-fun setIsEmpty!19470 () Bool)

(assert (=> setIsEmpty!19470 setRes!19470))

(declare-fun setNonEmpty!19470 () Bool)

(declare-fun e!1418971 () Bool)

(declare-fun setElem!19470 () Context!3774)

(declare-fun tp!692386 () Bool)

(assert (=> setNonEmpty!19470 (= setRes!19470 (and tp!692386 (inv!35358 setElem!19470) e!1418971))))

(declare-fun setRest!19470 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19470 (= setRest!19437 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19470 true) setRest!19470))))

(declare-fun b!2221576 () Bool)

(declare-fun tp!692387 () Bool)

(assert (=> b!2221576 (= e!1418971 tp!692387)))

(assert (= (and setNonEmpty!19436 condSetEmpty!19470) setIsEmpty!19470))

(assert (= (and setNonEmpty!19436 (not condSetEmpty!19470)) setNonEmpty!19470))

(assert (= setNonEmpty!19470 b!2221576))

(declare-fun m!2662140 () Bool)

(assert (=> setNonEmpty!19470 m!2662140))

(declare-fun b!2221577 () Bool)

(declare-fun e!1418972 () Bool)

(declare-fun tp!692388 () Bool)

(declare-fun tp!692389 () Bool)

(assert (=> b!2221577 (= e!1418972 (and tp!692388 tp!692389))))

(assert (=> b!2221161 (= tp!692170 e!1418972)))

(assert (= (and b!2221161 ((_ is Cons!26038) (exprs!2387 setElem!19430))) b!2221577))

(declare-fun b!2221578 () Bool)

(declare-fun e!1418973 () Bool)

(declare-fun tp!692390 () Bool)

(declare-fun tp!692391 () Bool)

(assert (=> b!2221578 (= e!1418973 (and tp!692390 tp!692391))))

(assert (=> b!2221149 (= tp!692157 e!1418973)))

(assert (= (and b!2221149 ((_ is Cons!26038) (exprs!2387 (_2!14969 (_1!14970 (h!31441 mapDefault!14020)))))) b!2221578))

(declare-fun b!2221579 () Bool)

(declare-fun e!1418974 () Bool)

(declare-fun tp!692392 () Bool)

(declare-fun tp!692393 () Bool)

(assert (=> b!2221579 (= e!1418974 (and tp!692392 tp!692393))))

(assert (=> b!2221210 (= tp!692251 e!1418974)))

(assert (= (and b!2221210 ((_ is Cons!26038) (exprs!2387 (_1!14967 (_1!14968 (h!31440 mapValue!14027)))))) b!2221579))

(declare-fun b!2221580 () Bool)

(declare-fun e!1418975 () Bool)

(declare-fun tp!692394 () Bool)

(declare-fun tp!692395 () Bool)

(assert (=> b!2221580 (= e!1418975 (and tp!692394 tp!692395))))

(assert (=> b!2221181 (= tp!692204 e!1418975)))

(assert (= (and b!2221181 ((_ is Cons!26038) (exprs!2387 (_2!14969 (_1!14970 (h!31441 mapDefault!14024)))))) b!2221580))

(declare-fun b!2221581 () Bool)

(declare-fun e!1418976 () Bool)

(declare-fun tp!692396 () Bool)

(declare-fun tp!692397 () Bool)

(assert (=> b!2221581 (= e!1418976 (and tp!692396 tp!692397))))

(assert (=> b!2221194 (= tp!692223 e!1418976)))

(assert (= (and b!2221194 ((_ is Cons!26038) (exprs!2387 (_1!14967 (_1!14968 (h!31440 mapDefault!14021)))))) b!2221581))

(declare-fun b!2221582 () Bool)

(declare-fun e!1418977 () Bool)

(declare-fun tp!692398 () Bool)

(declare-fun tp!692399 () Bool)

(assert (=> b!2221582 (= e!1418977 (and tp!692398 tp!692399))))

(assert (=> b!2221212 (= tp!692250 e!1418977)))

(assert (= (and b!2221212 ((_ is Cons!26038) (exprs!2387 (_1!14967 (_1!14968 (h!31440 mapDefault!14027)))))) b!2221582))

(declare-fun b!2221583 () Bool)

(declare-fun e!1418978 () Bool)

(declare-fun tp!692400 () Bool)

(declare-fun tp!692401 () Bool)

(assert (=> b!2221583 (= e!1418978 (and tp!692400 tp!692401))))

(assert (=> b!2221184 (= tp!692206 e!1418978)))

(assert (= (and b!2221184 ((_ is Cons!26038) (exprs!2387 setElem!19437))) b!2221583))

(declare-fun b!2221586 () Bool)

(declare-fun e!1418979 () Bool)

(declare-fun tp!692406 () Bool)

(assert (=> b!2221586 (= e!1418979 tp!692406)))

(declare-fun b!2221587 () Bool)

(declare-fun tp!692402 () Bool)

(declare-fun tp!692405 () Bool)

(assert (=> b!2221587 (= e!1418979 (and tp!692402 tp!692405))))

(declare-fun b!2221585 () Bool)

(declare-fun tp!692404 () Bool)

(declare-fun tp!692403 () Bool)

(assert (=> b!2221585 (= e!1418979 (and tp!692404 tp!692403))))

(assert (=> b!2221185 (= tp!692213 e!1418979)))

(declare-fun b!2221584 () Bool)

(assert (=> b!2221584 (= e!1418979 tp_is_empty!9907)))

(assert (= (and b!2221185 ((_ is ElementMatch!6339) (_1!14969 (_1!14970 (h!31441 mapValue!14020))))) b!2221584))

(assert (= (and b!2221185 ((_ is Concat!10677) (_1!14969 (_1!14970 (h!31441 mapValue!14020))))) b!2221585))

(assert (= (and b!2221185 ((_ is Star!6339) (_1!14969 (_1!14970 (h!31441 mapValue!14020))))) b!2221586))

(assert (= (and b!2221185 ((_ is Union!6339) (_1!14969 (_1!14970 (h!31441 mapValue!14020))))) b!2221587))

(declare-fun b!2221588 () Bool)

(declare-fun e!1418981 () Bool)

(declare-fun tp!692410 () Bool)

(declare-fun setRes!19471 () Bool)

(declare-fun e!1418982 () Bool)

(declare-fun tp!692411 () Bool)

(assert (=> b!2221588 (= e!1418982 (and tp!692410 (inv!35358 (_2!14969 (_1!14970 (h!31441 (t!199534 mapValue!14020))))) e!1418981 tp_is_empty!9907 setRes!19471 tp!692411))))

(declare-fun condSetEmpty!19471 () Bool)

(assert (=> b!2221588 (= condSetEmpty!19471 (= (_2!14970 (h!31441 (t!199534 mapValue!14020))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221589 () Bool)

(declare-fun tp!692408 () Bool)

(assert (=> b!2221589 (= e!1418981 tp!692408)))

(declare-fun b!2221590 () Bool)

(declare-fun e!1418980 () Bool)

(declare-fun tp!692407 () Bool)

(assert (=> b!2221590 (= e!1418980 tp!692407)))

(declare-fun setIsEmpty!19471 () Bool)

(assert (=> setIsEmpty!19471 setRes!19471))

(assert (=> b!2221185 (= tp!692214 e!1418982)))

(declare-fun setElem!19471 () Context!3774)

(declare-fun tp!692409 () Bool)

(declare-fun setNonEmpty!19471 () Bool)

(assert (=> setNonEmpty!19471 (= setRes!19471 (and tp!692409 (inv!35358 setElem!19471) e!1418980))))

(declare-fun setRest!19471 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19471 (= (_2!14970 (h!31441 (t!199534 mapValue!14020))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19471 true) setRest!19471))))

(assert (= b!2221588 b!2221589))

(assert (= (and b!2221588 condSetEmpty!19471) setIsEmpty!19471))

(assert (= (and b!2221588 (not condSetEmpty!19471)) setNonEmpty!19471))

(assert (= setNonEmpty!19471 b!2221590))

(assert (= (and b!2221185 ((_ is Cons!26040) (t!199534 mapValue!14020))) b!2221588))

(declare-fun m!2662142 () Bool)

(assert (=> b!2221588 m!2662142))

(declare-fun m!2662144 () Bool)

(assert (=> setNonEmpty!19471 m!2662144))

(declare-fun b!2221591 () Bool)

(declare-fun e!1418983 () Bool)

(declare-fun tp!692412 () Bool)

(declare-fun tp!692413 () Bool)

(assert (=> b!2221591 (= e!1418983 (and tp!692412 tp!692413))))

(assert (=> b!2221195 (= tp!692222 e!1418983)))

(assert (= (and b!2221195 ((_ is Cons!26038) (exprs!2387 setElem!19439))) b!2221591))

(declare-fun e!1418985 () Bool)

(assert (=> b!2221213 (= tp!692243 e!1418985)))

(declare-fun setIsEmpty!19472 () Bool)

(declare-fun setRes!19472 () Bool)

(assert (=> setIsEmpty!19472 setRes!19472))

(declare-fun tp!692414 () Bool)

(declare-fun e!1418984 () Bool)

(declare-fun b!2221592 () Bool)

(assert (=> b!2221592 (= e!1418985 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 (t!199533 mapValue!14027))))) e!1418984 tp_is_empty!9907 setRes!19472 tp!692414))))

(declare-fun condSetEmpty!19472 () Bool)

(assert (=> b!2221592 (= condSetEmpty!19472 (= (_2!14968 (h!31440 (t!199533 mapValue!14027))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221593 () Bool)

(declare-fun tp!692416 () Bool)

(assert (=> b!2221593 (= e!1418984 tp!692416)))

(declare-fun tp!692417 () Bool)

(declare-fun e!1418986 () Bool)

(declare-fun setElem!19472 () Context!3774)

(declare-fun setNonEmpty!19472 () Bool)

(assert (=> setNonEmpty!19472 (= setRes!19472 (and tp!692417 (inv!35358 setElem!19472) e!1418986))))

(declare-fun setRest!19472 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19472 (= (_2!14968 (h!31440 (t!199533 mapValue!14027))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19472 true) setRest!19472))))

(declare-fun b!2221594 () Bool)

(declare-fun tp!692415 () Bool)

(assert (=> b!2221594 (= e!1418986 tp!692415)))

(assert (= b!2221592 b!2221593))

(assert (= (and b!2221592 condSetEmpty!19472) setIsEmpty!19472))

(assert (= (and b!2221592 (not condSetEmpty!19472)) setNonEmpty!19472))

(assert (= setNonEmpty!19472 b!2221594))

(assert (= (and b!2221213 ((_ is Cons!26039) (t!199533 mapValue!14027))) b!2221592))

(declare-fun m!2662146 () Bool)

(assert (=> b!2221592 m!2662146))

(declare-fun m!2662148 () Bool)

(assert (=> setNonEmpty!19472 m!2662148))

(declare-fun b!2221595 () Bool)

(declare-fun e!1418987 () Bool)

(declare-fun tp!692418 () Bool)

(declare-fun tp!692419 () Bool)

(assert (=> b!2221595 (= e!1418987 (and tp!692418 tp!692419))))

(assert (=> b!2221187 (= tp!692210 e!1418987)))

(assert (= (and b!2221187 ((_ is Cons!26038) (exprs!2387 setElem!19438))) b!2221595))

(declare-fun b!2221596 () Bool)

(declare-fun e!1418988 () Bool)

(declare-fun tp!692428 () Bool)

(assert (=> b!2221596 (= e!1418988 tp!692428)))

(declare-fun condMapEmpty!14029 () Bool)

(declare-fun mapDefault!14029 () List!26133)

(assert (=> mapNonEmpty!14027 (= condMapEmpty!14029 (= mapRest!14027 ((as const (Array (_ BitVec 32) List!26133)) mapDefault!14029)))))

(declare-fun e!1418989 () Bool)

(declare-fun mapRes!14029 () Bool)

(assert (=> mapNonEmpty!14027 (= tp!692248 (and e!1418989 mapRes!14029))))

(declare-fun b!2221597 () Bool)

(declare-fun e!1418992 () Bool)

(declare-fun tp!692424 () Bool)

(assert (=> b!2221597 (= e!1418992 tp!692424)))

(declare-fun setIsEmpty!19473 () Bool)

(declare-fun setRes!19473 () Bool)

(assert (=> setIsEmpty!19473 setRes!19473))

(declare-fun setRes!19474 () Bool)

(declare-fun setNonEmpty!19473 () Bool)

(declare-fun setElem!19474 () Context!3774)

(declare-fun tp!692423 () Bool)

(declare-fun e!1418990 () Bool)

(assert (=> setNonEmpty!19473 (= setRes!19474 (and tp!692423 (inv!35358 setElem!19474) e!1418990))))

(declare-fun setRest!19473 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19473 (= (_2!14968 (h!31440 mapDefault!14029)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19474 true) setRest!19473))))

(declare-fun b!2221598 () Bool)

(declare-fun e!1418991 () Bool)

(declare-fun tp!692427 () Bool)

(assert (=> b!2221598 (= e!1418991 tp!692427)))

(declare-fun setNonEmpty!19474 () Bool)

(declare-fun tp!692426 () Bool)

(declare-fun setElem!19473 () Context!3774)

(assert (=> setNonEmpty!19474 (= setRes!19473 (and tp!692426 (inv!35358 setElem!19473) e!1418992))))

(declare-fun mapValue!14029 () List!26133)

(declare-fun setRest!19474 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19474 (= (_2!14968 (h!31440 mapValue!14029)) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19473 true) setRest!19474))))

(declare-fun b!2221599 () Bool)

(declare-fun tp!692420 () Bool)

(declare-fun e!1418993 () Bool)

(assert (=> b!2221599 (= e!1418993 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 mapValue!14029)))) e!1418988 tp_is_empty!9907 setRes!19473 tp!692420))))

(declare-fun condSetEmpty!19474 () Bool)

(assert (=> b!2221599 (= condSetEmpty!19474 (= (_2!14968 (h!31440 mapValue!14029)) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221600 () Bool)

(declare-fun tp!692422 () Bool)

(assert (=> b!2221600 (= e!1418990 tp!692422)))

(declare-fun mapNonEmpty!14029 () Bool)

(declare-fun tp!692425 () Bool)

(assert (=> mapNonEmpty!14029 (= mapRes!14029 (and tp!692425 e!1418993))))

(declare-fun mapKey!14029 () (_ BitVec 32))

(declare-fun mapRest!14029 () (Array (_ BitVec 32) List!26133))

(assert (=> mapNonEmpty!14029 (= mapRest!14027 (store mapRest!14029 mapKey!14029 mapValue!14029))))

(declare-fun mapIsEmpty!14029 () Bool)

(assert (=> mapIsEmpty!14029 mapRes!14029))

(declare-fun setIsEmpty!19474 () Bool)

(assert (=> setIsEmpty!19474 setRes!19474))

(declare-fun tp!692421 () Bool)

(declare-fun b!2221601 () Bool)

(assert (=> b!2221601 (= e!1418989 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 mapDefault!14029)))) e!1418991 tp_is_empty!9907 setRes!19474 tp!692421))))

(declare-fun condSetEmpty!19473 () Bool)

(assert (=> b!2221601 (= condSetEmpty!19473 (= (_2!14968 (h!31440 mapDefault!14029)) ((as const (Array Context!3774 Bool)) false)))))

(assert (= (and mapNonEmpty!14027 condMapEmpty!14029) mapIsEmpty!14029))

(assert (= (and mapNonEmpty!14027 (not condMapEmpty!14029)) mapNonEmpty!14029))

(assert (= b!2221599 b!2221596))

(assert (= (and b!2221599 condSetEmpty!19474) setIsEmpty!19473))

(assert (= (and b!2221599 (not condSetEmpty!19474)) setNonEmpty!19474))

(assert (= setNonEmpty!19474 b!2221597))

(assert (= (and mapNonEmpty!14029 ((_ is Cons!26039) mapValue!14029)) b!2221599))

(assert (= b!2221601 b!2221598))

(assert (= (and b!2221601 condSetEmpty!19473) setIsEmpty!19474))

(assert (= (and b!2221601 (not condSetEmpty!19473)) setNonEmpty!19473))

(assert (= setNonEmpty!19473 b!2221600))

(assert (= (and mapNonEmpty!14027 ((_ is Cons!26039) mapDefault!14029)) b!2221601))

(declare-fun m!2662150 () Bool)

(assert (=> setNonEmpty!19473 m!2662150))

(declare-fun m!2662152 () Bool)

(assert (=> b!2221599 m!2662152))

(declare-fun m!2662154 () Bool)

(assert (=> mapNonEmpty!14029 m!2662154))

(declare-fun m!2662156 () Bool)

(assert (=> b!2221601 m!2662156))

(declare-fun m!2662158 () Bool)

(assert (=> setNonEmpty!19474 m!2662158))

(declare-fun b!2221604 () Bool)

(declare-fun e!1418994 () Bool)

(declare-fun tp!692433 () Bool)

(assert (=> b!2221604 (= e!1418994 tp!692433)))

(declare-fun b!2221605 () Bool)

(declare-fun tp!692429 () Bool)

(declare-fun tp!692432 () Bool)

(assert (=> b!2221605 (= e!1418994 (and tp!692429 tp!692432))))

(declare-fun b!2221603 () Bool)

(declare-fun tp!692431 () Bool)

(declare-fun tp!692430 () Bool)

(assert (=> b!2221603 (= e!1418994 (and tp!692431 tp!692430))))

(assert (=> b!2221222 (= tp!692264 e!1418994)))

(declare-fun b!2221602 () Bool)

(assert (=> b!2221602 (= e!1418994 tp_is_empty!9907)))

(assert (= (and b!2221222 ((_ is ElementMatch!6339) (_1!14969 (_1!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) b!2221602))

(assert (= (and b!2221222 ((_ is Concat!10677) (_1!14969 (_1!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) b!2221603))

(assert (= (and b!2221222 ((_ is Star!6339) (_1!14969 (_1!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) b!2221604))

(assert (= (and b!2221222 ((_ is Union!6339) (_1!14969 (_1!14970 (h!31441 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) b!2221605))

(declare-fun setRes!19475 () Bool)

(declare-fun tp!692437 () Bool)

(declare-fun e!1418996 () Bool)

(declare-fun e!1418997 () Bool)

(declare-fun tp!692438 () Bool)

(declare-fun b!2221606 () Bool)

(assert (=> b!2221606 (= e!1418997 (and tp!692437 (inv!35358 (_2!14969 (_1!14970 (h!31441 (t!199534 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) e!1418996 tp_is_empty!9907 setRes!19475 tp!692438))))

(declare-fun condSetEmpty!19475 () Bool)

(assert (=> b!2221606 (= condSetEmpty!19475 (= (_2!14970 (h!31441 (t!199534 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221607 () Bool)

(declare-fun tp!692435 () Bool)

(assert (=> b!2221607 (= e!1418996 tp!692435)))

(declare-fun b!2221608 () Bool)

(declare-fun e!1418995 () Bool)

(declare-fun tp!692434 () Bool)

(assert (=> b!2221608 (= e!1418995 tp!692434)))

(declare-fun setIsEmpty!19475 () Bool)

(assert (=> setIsEmpty!19475 setRes!19475))

(assert (=> b!2221222 (= tp!692265 e!1418997)))

(declare-fun setElem!19475 () Context!3774)

(declare-fun tp!692436 () Bool)

(declare-fun setNonEmpty!19475 () Bool)

(assert (=> setNonEmpty!19475 (= setRes!19475 (and tp!692436 (inv!35358 setElem!19475) e!1418995))))

(declare-fun setRest!19475 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19475 (= (_2!14970 (h!31441 (t!199534 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19475 true) setRest!19475))))

(assert (= b!2221606 b!2221607))

(assert (= (and b!2221606 condSetEmpty!19475) setIsEmpty!19475))

(assert (= (and b!2221606 (not condSetEmpty!19475)) setNonEmpty!19475))

(assert (= setNonEmpty!19475 b!2221608))

(assert (= (and b!2221222 ((_ is Cons!26040) (t!199534 (minValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))) b!2221606))

(declare-fun m!2662160 () Bool)

(assert (=> b!2221606 m!2662160))

(declare-fun m!2662162 () Bool)

(assert (=> setNonEmpty!19475 m!2662162))

(declare-fun b!2221611 () Bool)

(declare-fun e!1418998 () Bool)

(declare-fun tp!692443 () Bool)

(assert (=> b!2221611 (= e!1418998 tp!692443)))

(declare-fun b!2221612 () Bool)

(declare-fun tp!692439 () Bool)

(declare-fun tp!692442 () Bool)

(assert (=> b!2221612 (= e!1418998 (and tp!692439 tp!692442))))

(declare-fun b!2221610 () Bool)

(declare-fun tp!692441 () Bool)

(declare-fun tp!692440 () Bool)

(assert (=> b!2221610 (= e!1418998 (and tp!692441 tp!692440))))

(assert (=> b!2221219 (= tp!692259 e!1418998)))

(declare-fun b!2221609 () Bool)

(assert (=> b!2221609 (= e!1418998 tp_is_empty!9907)))

(assert (= (and b!2221219 ((_ is ElementMatch!6339) (_1!14969 (_1!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) b!2221609))

(assert (= (and b!2221219 ((_ is Concat!10677) (_1!14969 (_1!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) b!2221610))

(assert (= (and b!2221219 ((_ is Star!6339) (_1!14969 (_1!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) b!2221611))

(assert (= (and b!2221219 ((_ is Union!6339) (_1!14969 (_1!14970 (h!31441 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) b!2221612))

(declare-fun tp!692448 () Bool)

(declare-fun e!1419000 () Bool)

(declare-fun b!2221613 () Bool)

(declare-fun e!1419001 () Bool)

(declare-fun setRes!19476 () Bool)

(declare-fun tp!692447 () Bool)

(assert (=> b!2221613 (= e!1419001 (and tp!692447 (inv!35358 (_2!14969 (_1!14970 (h!31441 (t!199534 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))))) e!1419000 tp_is_empty!9907 setRes!19476 tp!692448))))

(declare-fun condSetEmpty!19476 () Bool)

(assert (=> b!2221613 (= condSetEmpty!19476 (= (_2!14970 (h!31441 (t!199534 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221614 () Bool)

(declare-fun tp!692445 () Bool)

(assert (=> b!2221614 (= e!1419000 tp!692445)))

(declare-fun b!2221615 () Bool)

(declare-fun e!1418999 () Bool)

(declare-fun tp!692444 () Bool)

(assert (=> b!2221615 (= e!1418999 tp!692444)))

(declare-fun setIsEmpty!19476 () Bool)

(assert (=> setIsEmpty!19476 setRes!19476))

(assert (=> b!2221219 (= tp!692260 e!1419001)))

(declare-fun setElem!19476 () Context!3774)

(declare-fun setNonEmpty!19476 () Bool)

(declare-fun tp!692446 () Bool)

(assert (=> setNonEmpty!19476 (= setRes!19476 (and tp!692446 (inv!35358 setElem!19476) e!1418999))))

(declare-fun setRest!19476 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19476 (= (_2!14970 (h!31441 (t!199534 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19476 true) setRest!19476))))

(assert (= b!2221613 b!2221614))

(assert (= (and b!2221613 condSetEmpty!19476) setIsEmpty!19476))

(assert (= (and b!2221613 (not condSetEmpty!19476)) setNonEmpty!19476))

(assert (= setNonEmpty!19476 b!2221615))

(assert (= (and b!2221219 ((_ is Cons!26040) (t!199534 (zeroValue!3229 (v!29576 (underlying!6143 (v!29577 (underlying!6144 (cache!3263 cacheDown!803))))))))) b!2221613))

(declare-fun m!2662164 () Bool)

(assert (=> b!2221613 m!2662164))

(declare-fun m!2662166 () Bool)

(assert (=> setNonEmpty!19476 m!2662166))

(declare-fun condSetEmpty!19477 () Bool)

(assert (=> setNonEmpty!19438 (= condSetEmpty!19477 (= setRest!19438 ((as const (Array Context!3774 Bool)) false)))))

(declare-fun setRes!19477 () Bool)

(assert (=> setNonEmpty!19438 (= tp!692212 setRes!19477)))

(declare-fun setIsEmpty!19477 () Bool)

(assert (=> setIsEmpty!19477 setRes!19477))

(declare-fun setElem!19477 () Context!3774)

(declare-fun setNonEmpty!19477 () Bool)

(declare-fun tp!692449 () Bool)

(declare-fun e!1419002 () Bool)

(assert (=> setNonEmpty!19477 (= setRes!19477 (and tp!692449 (inv!35358 setElem!19477) e!1419002))))

(declare-fun setRest!19477 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19477 (= setRest!19438 ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19477 true) setRest!19477))))

(declare-fun b!2221616 () Bool)

(declare-fun tp!692450 () Bool)

(assert (=> b!2221616 (= e!1419002 tp!692450)))

(assert (= (and setNonEmpty!19438 condSetEmpty!19477) setIsEmpty!19477))

(assert (= (and setNonEmpty!19438 (not condSetEmpty!19477)) setNonEmpty!19477))

(assert (= setNonEmpty!19477 b!2221616))

(declare-fun m!2662168 () Bool)

(assert (=> setNonEmpty!19477 m!2662168))

(declare-fun e!1419004 () Bool)

(assert (=> b!2221159 (= tp!692169 e!1419004)))

(declare-fun setIsEmpty!19478 () Bool)

(declare-fun setRes!19478 () Bool)

(assert (=> setIsEmpty!19478 setRes!19478))

(declare-fun b!2221617 () Bool)

(declare-fun e!1419003 () Bool)

(declare-fun tp!692451 () Bool)

(assert (=> b!2221617 (= e!1419004 (and (inv!35358 (_1!14967 (_1!14968 (h!31440 (t!199533 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))))) e!1419003 tp_is_empty!9907 setRes!19478 tp!692451))))

(declare-fun condSetEmpty!19478 () Bool)

(assert (=> b!2221617 (= condSetEmpty!19478 (= (_2!14968 (h!31440 (t!199533 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))) ((as const (Array Context!3774 Bool)) false)))))

(declare-fun b!2221618 () Bool)

(declare-fun tp!692453 () Bool)

(assert (=> b!2221618 (= e!1419003 tp!692453)))

(declare-fun setElem!19478 () Context!3774)

(declare-fun setNonEmpty!19478 () Bool)

(declare-fun tp!692454 () Bool)

(declare-fun e!1419005 () Bool)

(assert (=> setNonEmpty!19478 (= setRes!19478 (and tp!692454 (inv!35358 setElem!19478) e!1419005))))

(declare-fun setRest!19478 () (InoxSet Context!3774))

(assert (=> setNonEmpty!19478 (= (_2!14968 (h!31440 (t!199533 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3774 Bool)) false) setElem!19478 true) setRest!19478))))

(declare-fun b!2221619 () Bool)

(declare-fun tp!692452 () Bool)

(assert (=> b!2221619 (= e!1419005 tp!692452)))

(assert (= b!2221617 b!2221618))

(assert (= (and b!2221617 condSetEmpty!19478) setIsEmpty!19478))

(assert (= (and b!2221617 (not condSetEmpty!19478)) setNonEmpty!19478))

(assert (= setNonEmpty!19478 b!2221619))

(assert (= (and b!2221159 ((_ is Cons!26039) (t!199533 (zeroValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790))))))))) b!2221617))

(declare-fun m!2662170 () Bool)

(assert (=> b!2221617 m!2662170))

(declare-fun m!2662172 () Bool)

(assert (=> setNonEmpty!19478 m!2662172))

(declare-fun b!2221620 () Bool)

(declare-fun e!1419006 () Bool)

(declare-fun tp!692455 () Bool)

(declare-fun tp!692456 () Bool)

(assert (=> b!2221620 (= e!1419006 (and tp!692455 tp!692456))))

(assert (=> b!2221217 (= tp!692254 e!1419006)))

(assert (= (and b!2221217 ((_ is Cons!26038) (exprs!2387 (_1!14967 (_1!14968 (h!31440 mapValue!14021)))))) b!2221620))

(declare-fun b!2221621 () Bool)

(declare-fun e!1419007 () Bool)

(declare-fun tp!692457 () Bool)

(declare-fun tp!692458 () Bool)

(assert (=> b!2221621 (= e!1419007 (and tp!692457 tp!692458))))

(assert (=> b!2221224 (= tp!692261 e!1419007)))

(assert (= (and b!2221224 ((_ is Cons!26038) (exprs!2387 setElem!19448))) b!2221621))

(declare-fun b!2221622 () Bool)

(declare-fun e!1419008 () Bool)

(declare-fun tp!692459 () Bool)

(declare-fun tp!692460 () Bool)

(assert (=> b!2221622 (= e!1419008 (and tp!692459 tp!692460))))

(assert (=> b!2221163 (= tp!692175 e!1419008)))

(assert (= (and b!2221163 ((_ is Cons!26038) (exprs!2387 (_1!14967 (_1!14968 (h!31440 (minValue!3230 (v!29578 (underlying!6145 (v!29579 (underlying!6146 (cache!3262 cacheUp!790)))))))))))) b!2221622))

(declare-fun b!2221623 () Bool)

(declare-fun e!1419009 () Bool)

(declare-fun tp!692461 () Bool)

(declare-fun tp!692462 () Bool)

(assert (=> b!2221623 (= e!1419009 (and tp!692461 tp!692462))))

(assert (=> b!2221221 (= tp!692256 e!1419009)))

(assert (= (and b!2221221 ((_ is Cons!26038) (exprs!2387 setElem!19447))) b!2221623))

(declare-fun b_lambda!71545 () Bool)

(assert (= b_lambda!71543 (or d!663873 b_lambda!71545)))

(declare-fun bs!452760 () Bool)

(declare-fun d!663989 () Bool)

(assert (= bs!452760 (and d!663989 d!663873)))

(assert (=> bs!452760 (= (dynLambda!11505 lambda!83836 (h!31439 (exprs!2387 context!72))) (validRegex!2352 (h!31439 (exprs!2387 context!72))))))

(assert (=> bs!452760 m!2661689))

(assert (=> b!2221410 d!663989))

(declare-fun b_lambda!71547 () Bool)

(assert (= b_lambda!71537 (or (and b!2221040 b_free!64341) b_lambda!71547)))

(declare-fun b_lambda!71549 () Bool)

(assert (= b_lambda!71539 (or (and b!2221040 b_free!64341) b_lambda!71549)))

(declare-fun b_lambda!71551 () Bool)

(assert (= b_lambda!71541 (or b!2221100 b_lambda!71551)))

(declare-fun bs!452761 () Bool)

(declare-fun d!663991 () Bool)

(assert (= bs!452761 (and d!663991 b!2221100)))

(assert (=> bs!452761 (= (dynLambda!11504 lambda!83839 (h!31440 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597)))))) (= (_2!14968 (h!31440 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597)))))) (derivationStepZipperUp!16 (_1!14967 (_1!14968 (h!31440 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597))))))) (_2!14967 (_1!14968 (h!31440 (toList!1290 (map!5281 (cache!3262 (_2!14971 e!1418597))))))))))))

(declare-fun m!2662174 () Bool)

(assert (=> bs!452761 m!2662174))

(assert (=> b!2221368 d!663991))

(check-sat (not b!2221403) (not b!2221564) (not b!2221475) (not b!2221617) (not d!663971) (not bm!132609) (not b!2221500) (not b!2221457) (not b!2221448) (not b!2221590) (not setNonEmpty!19463) (not setNonEmpty!19475) (not setNonEmpty!19455) (not b!2221295) (not b!2221599) (not bs!452761) (not d!663969) (not b!2221605) (not d!663911) (not b!2221505) (not b_next!65047) (not setNonEmpty!19474) (not setNonEmpty!19478) (not b!2221594) (not b!2221525) (not b!2221623) (not setNonEmpty!19464) (not b!2221333) (not b!2221465) (not b!2221519) (not b!2221515) (not b!2221529) b_and!174315 (not b!2221401) (not b_next!65049) (not d!663917) (not b!2221580) (not b!2221335) (not setNonEmpty!19469) (not b!2221527) (not b!2221598) (not b!2221471) (not b!2221523) (not b!2221338) (not d!663951) (not b!2221537) (not b_next!65045) (not b!2221504) (not d!663921) (not setNonEmpty!19473) (not b!2221507) (not b!2221612) (not d!663915) (not b!2221585) (not b!2221260) (not setNonEmpty!19461) (not d!663929) tp_is_empty!9907 (not bm!132579) (not d!663897) (not setNonEmpty!19467) (not bm!132572) (not b!2221535) (not d!663923) (not b!2221524) (not b_next!65051) (not bm!132553) (not setNonEmpty!19452) (not setNonEmpty!19460) (not b!2221576) (not setNonEmpty!19451) (not b!2221306) (not b!2221600) (not b!2221531) (not b!2221493) (not d!663909) (not b!2221477) (not b!2221495) (not b!2221294) (not setNonEmpty!19476) (not d!663947) (not b!2221501) (not bm!132563) (not b_lambda!71545) (not d!663963) (not b!2221603) (not b!2221560) (not d!663939) (not b!2221355) (not b!2221601) (not b!2221463) (not b!2221466) (not d!663957) (not b!2221513) (not d!663891) (not bm!132585) (not b!2221532) (not bm!132604) (not b!2221614) (not setNonEmpty!19457) (not d!663959) (not bm!132578) (not d!663985) (not b!2221534) (not b!2221618) (not bm!132550) (not b!2221587) (not b!2221411) (not setNonEmpty!19462) (not b!2221304) (not bm!132588) (not d!663967) (not b!2221451) (not b!2221582) (not bm!132603) (not mapNonEmpty!14029) (not b!2221521) (not b!2221620) (not b!2221422) (not b!2221615) (not b_lambda!71551) (not b!2221354) (not bm!132586) (not bm!132608) (not b!2221577) (not b!2221596) b_and!174313 (not b!2221528) (not b!2221562) (not b!2221321) (not b_lambda!71549) (not b!2221481) (not setNonEmpty!19472) (not d!663953) (not b!2221520) (not b!2221622) (not b!2221509) (not setNonEmpty!19454) (not d!663973) (not bm!132577) (not b!2221597) (not b!2221581) (not b!2221511) (not b!2221369) (not d!663913) (not b!2221476) (not b!2221459) (not d!663907) (not b!2221473) (not setNonEmpty!19456) (not b!2221578) (not d!663899) (not b!2221478) (not d!663987) (not b!2221480) (not setNonEmpty!19459) b_and!174319 (not d!663965) (not b!2221595) (not d!663901) (not bm!132561) (not b!2221591) (not d!663941) (not b!2221579) (not b!2221455) (not tb!132841) (not b!2221453) (not b!2221502) (not bm!132606) b_and!174311 (not b!2221324) (not b!2221592) (not b!2221472) (not b!2221498) (not b!2221516) (not b!2221616) (not d!663935) (not d!663943) (not d!663887) (not bm!132605) (not b!2221522) (not b!2221586) (not b!2221336) (not b!2221583) (not setNonEmpty!19470) (not b!2221613) (not bm!132580) (not b!2221563) (not b!2221420) (not b!2221362) (not b!2221496) (not b!2221611) (not b!2221606) (not d!663977) (not b_lambda!71547) (not b!2221392) (not b!2221559) (not b!2221536) (not b!2221526) (not b!2221589) (not b!2221510) (not b!2221533) (not bm!132562) (not b!2221607) (not d!663981) (not d!663903) (not bm!132566) (not b!2221494) (not b!2221517) (not d!663931) (not b!2221479) (not setNonEmpty!19477) (not bm!132607) (not b!2221514) (not setNonEmpty!19468) (not b!2221342) (not setNonEmpty!19465) (not b!2221512) (not bm!132548) (not b!2221561) (not b!2221610) (not b!2221558) (not bm!132564) (not b!2221497) (not d!663937) (not b!2221503) (not setNonEmpty!19466) (not b!2221608) (not b!2221474) (not b!2221593) (not setNonEmpty!19453) (not bs!452760) (not d!663895) (not b!2221619) (not b!2221284) (not b!2221506) (not d!663893) (not mapNonEmpty!14028) (not b!2221604) (not bm!132582) (not d!663905) (not b!2221460) (not bm!132569) (not d!663945) (not b!2221325) (not b!2221621) (not setNonEmpty!19471) (not setNonEmpty!19458) (not b!2221518) (not b!2221588) (not d!663961) (not b!2221247) (not b!2221363) (not b!2221391) (not d!663919))
(check-sat (not b_next!65047) (not b_next!65045) (not b_next!65051) b_and!174313 b_and!174319 b_and!174311 b_and!174315 (not b_next!65049))
