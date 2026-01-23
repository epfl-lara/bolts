; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216784 () Bool)

(assert start!216784)

(declare-fun b!2221746 () Bool)

(declare-fun b_free!64357 () Bool)

(declare-fun b_next!65061 () Bool)

(assert (=> b!2221746 (= b_free!64357 (not b_next!65061))))

(declare-fun tp!692545 () Bool)

(declare-fun b_and!174329 () Bool)

(assert (=> b!2221746 (= tp!692545 b_and!174329)))

(declare-fun b!2221751 () Bool)

(declare-fun b_free!64359 () Bool)

(declare-fun b_next!65063 () Bool)

(assert (=> b!2221751 (= b_free!64359 (not b_next!65063))))

(declare-fun tp!692547 () Bool)

(declare-fun b_and!174331 () Bool)

(assert (=> b!2221751 (= tp!692547 b_and!174331)))

(declare-fun b!2221755 () Bool)

(declare-fun b_free!64361 () Bool)

(declare-fun b_next!65065 () Bool)

(assert (=> b!2221755 (= b_free!64361 (not b_next!65065))))

(declare-fun tp!692540 () Bool)

(declare-fun b_and!174333 () Bool)

(assert (=> b!2221755 (= tp!692540 b_and!174333)))

(declare-fun b!2221740 () Bool)

(declare-fun b_free!64363 () Bool)

(declare-fun b_next!65067 () Bool)

(assert (=> b!2221740 (= b_free!64363 (not b_next!65067))))

(declare-fun tp!692539 () Bool)

(declare-fun b_and!174335 () Bool)

(assert (=> b!2221740 (= tp!692539 b_and!174335)))

(declare-fun b!2221734 () Bool)

(declare-fun e!1419129 () Bool)

(declare-datatypes ((C!12828 0))(
  ( (C!12829 (val!7462 Int)) )
))
(declare-datatypes ((Regex!6341 0))(
  ( (ElementMatch!6341 (c!354765 C!12828)) (Concat!10679 (regOne!13194 Regex!6341) (regTwo!13194 Regex!6341)) (EmptyExpr!6341) (Star!6341 (reg!6670 Regex!6341)) (EmptyLang!6341) (Union!6341 (regOne!13195 Regex!6341) (regTwo!13195 Regex!6341)) )
))
(declare-datatypes ((List!26139 0))(
  ( (Nil!26045) (Cons!26045 (h!31446 Regex!6341) (t!199542 List!26139)) )
))
(declare-datatypes ((Context!3778 0))(
  ( (Context!3779 (exprs!2389 List!26139)) )
))
(declare-fun context!72 () Context!3778)

(declare-fun nullable!1724 (Regex!6341) Bool)

(assert (=> b!2221734 (= e!1419129 (nullable!1724 (h!31446 (exprs!2389 context!72))))))

(declare-fun b!2221735 () Bool)

(declare-datatypes ((tuple2!25214 0))(
  ( (tuple2!25215 (_1!14983 Context!3778) (_2!14983 C!12828)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25216 0))(
  ( (tuple2!25217 (_1!14984 tuple2!25214) (_2!14984 (InoxSet Context!3778))) )
))
(declare-datatypes ((List!26140 0))(
  ( (Nil!26046) (Cons!26046 (h!31447 tuple2!25216) (t!199543 List!26140)) )
))
(declare-datatypes ((tuple3!3812 0))(
  ( (tuple3!3813 (_1!14985 Regex!6341) (_2!14985 Context!3778) (_3!2376 C!12828)) )
))
(declare-datatypes ((tuple2!25218 0))(
  ( (tuple2!25219 (_1!14986 tuple3!3812) (_2!14986 (InoxSet Context!3778))) )
))
(declare-datatypes ((List!26141 0))(
  ( (Nil!26047) (Cons!26047 (h!31448 tuple2!25218) (t!199544 List!26141)) )
))
(declare-datatypes ((array!10200 0))(
  ( (array!10201 (arr!4543 (Array (_ BitVec 32) (_ BitVec 64))) (size!20320 (_ BitVec 32))) )
))
(declare-datatypes ((array!10202 0))(
  ( (array!10203 (arr!4544 (Array (_ BitVec 32) List!26141)) (size!20321 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5950 0))(
  ( (LongMapFixedSize!5951 (defaultEntry!3340 Int) (mask!7499 (_ BitVec 32)) (extraKeys!3223 (_ BitVec 32)) (zeroValue!3233 List!26141) (minValue!3233 List!26141) (_size!5997 (_ BitVec 32)) (_keys!3272 array!10200) (_values!3255 array!10202) (_vacant!3036 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11717 0))(
  ( (Cell!11718 (v!29587 LongMapFixedSize!5950)) )
))
(declare-datatypes ((MutLongMap!2975 0))(
  ( (LongMap!2975 (underlying!6151 Cell!11717)) (MutLongMapExt!2974 (__x!17151 Int)) )
))
(declare-datatypes ((Cell!11719 0))(
  ( (Cell!11720 (v!29588 MutLongMap!2975)) )
))
(declare-datatypes ((Hashable!2885 0))(
  ( (HashableExt!2884 (__x!17152 Int)) )
))
(declare-datatypes ((MutableMap!2885 0))(
  ( (MutableMapExt!2884 (__x!17153 Int)) (HashMap!2885 (underlying!6152 Cell!11719) (hashF!4808 Hashable!2885) (_size!5998 (_ BitVec 32)) (defaultValue!3047 Int)) )
))
(declare-datatypes ((Hashable!2886 0))(
  ( (HashableExt!2885 (__x!17154 Int)) )
))
(declare-datatypes ((array!10204 0))(
  ( (array!10205 (arr!4545 (Array (_ BitVec 32) List!26140)) (size!20322 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5952 0))(
  ( (LongMapFixedSize!5953 (defaultEntry!3341 Int) (mask!7500 (_ BitVec 32)) (extraKeys!3224 (_ BitVec 32)) (zeroValue!3234 List!26140) (minValue!3234 List!26140) (_size!5999 (_ BitVec 32)) (_keys!3273 array!10200) (_values!3256 array!10204) (_vacant!3037 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11721 0))(
  ( (Cell!11722 (v!29589 LongMapFixedSize!5952)) )
))
(declare-datatypes ((MutLongMap!2976 0))(
  ( (LongMap!2976 (underlying!6153 Cell!11721)) (MutLongMapExt!2975 (__x!17155 Int)) )
))
(declare-datatypes ((Cell!11723 0))(
  ( (Cell!11724 (v!29590 MutLongMap!2976)) )
))
(declare-datatypes ((MutableMap!2886 0))(
  ( (MutableMapExt!2885 (__x!17156 Int)) (HashMap!2886 (underlying!6154 Cell!11723) (hashF!4809 Hashable!2886) (_size!6000 (_ BitVec 32)) (defaultValue!3048 Int)) )
))
(declare-datatypes ((CacheUp!1904 0))(
  ( (CacheUp!1905 (cache!3266 MutableMap!2886)) )
))
(declare-datatypes ((CacheDown!1886 0))(
  ( (CacheDown!1887 (cache!3267 MutableMap!2885)) )
))
(declare-datatypes ((tuple3!3814 0))(
  ( (tuple3!3815 (_1!14987 (InoxSet Context!3778)) (_2!14987 CacheUp!1904) (_3!2377 CacheDown!1886)) )
))
(declare-fun e!1419135 () tuple3!3814)

(declare-fun cacheUp!790 () CacheUp!1904)

(declare-fun cacheDown!803 () CacheDown!1886)

(assert (=> b!2221735 (= e!1419135 (tuple3!3815 ((as const (Array Context!3778 Bool)) false) cacheUp!790 cacheDown!803))))

(declare-fun b!2221736 () Bool)

(declare-datatypes ((tuple2!25220 0))(
  ( (tuple2!25221 (_1!14988 (InoxSet Context!3778)) (_2!14988 CacheDown!1886)) )
))
(declare-fun lt!828106 () tuple2!25220)

(declare-fun call!132620 () tuple2!25220)

(assert (=> b!2221736 (= lt!828106 call!132620)))

(assert (=> b!2221736 (= e!1419135 (tuple3!3815 (_1!14988 lt!828106) cacheUp!790 (_2!14988 lt!828106)))))

(declare-fun b!2221737 () Bool)

(declare-fun e!1419132 () Bool)

(declare-fun e!1419123 () Bool)

(assert (=> b!2221737 (= e!1419132 e!1419123)))

(declare-fun b!2221738 () Bool)

(declare-fun e!1419125 () Bool)

(declare-fun e!1419139 () Bool)

(assert (=> b!2221738 (= e!1419125 e!1419139)))

(declare-fun b!2221739 () Bool)

(declare-fun e!1419140 () tuple3!3814)

(assert (=> b!2221739 (= e!1419140 e!1419135)))

(declare-fun c!354763 () Bool)

(get-info :version)

(assert (=> b!2221739 (= c!354763 ((_ is Cons!26045) (exprs!2389 context!72)))))

(declare-fun tp!692549 () Bool)

(declare-fun tp!692552 () Bool)

(declare-fun e!1419138 () Bool)

(declare-fun e!1419136 () Bool)

(declare-fun array_inv!3264 (array!10200) Bool)

(declare-fun array_inv!3265 (array!10204) Bool)

(assert (=> b!2221740 (= e!1419138 (and tp!692539 tp!692549 tp!692552 (array_inv!3264 (_keys!3273 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))) (array_inv!3265 (_values!3256 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))) e!1419136))))

(declare-fun res!953685 () Bool)

(declare-fun e!1419121 () Bool)

(assert (=> start!216784 (=> (not res!953685) (not e!1419121))))

(declare-fun a!1149 () C!12828)

(declare-datatypes ((Option!5056 0))(
  ( (None!5055) (Some!5055 (v!29591 (InoxSet Context!3778))) )
))
(declare-fun get!7807 (CacheUp!1904 Context!3778 C!12828) Option!5056)

(assert (=> start!216784 (= res!953685 (not ((_ is Some!5055) (get!7807 cacheUp!790 context!72 a!1149))))))

(assert (=> start!216784 e!1419121))

(declare-fun e!1419127 () Bool)

(declare-fun inv!35363 (CacheUp!1904) Bool)

(assert (=> start!216784 (and (inv!35363 cacheUp!790) e!1419127)))

(declare-fun e!1419134 () Bool)

(declare-fun inv!35364 (Context!3778) Bool)

(assert (=> start!216784 (and (inv!35364 context!72) e!1419134)))

(declare-fun tp_is_empty!9911 () Bool)

(assert (=> start!216784 tp_is_empty!9911))

(declare-fun e!1419120 () Bool)

(declare-fun inv!35365 (CacheDown!1886) Bool)

(assert (=> start!216784 (and (inv!35365 cacheDown!803) e!1419120)))

(declare-fun b!2221741 () Bool)

(declare-fun e!1419128 () Bool)

(assert (=> b!2221741 (= e!1419128 e!1419125)))

(declare-fun mapNonEmpty!14040 () Bool)

(declare-fun mapRes!14041 () Bool)

(declare-fun tp!692550 () Bool)

(declare-fun tp!692543 () Bool)

(assert (=> mapNonEmpty!14040 (= mapRes!14041 (and tp!692550 tp!692543))))

(declare-fun mapKey!14041 () (_ BitVec 32))

(declare-fun mapValue!14040 () List!26140)

(declare-fun mapRest!14041 () (Array (_ BitVec 32) List!26140))

(assert (=> mapNonEmpty!14040 (= (arr!4545 (_values!3256 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))) (store mapRest!14041 mapKey!14041 mapValue!14040))))

(declare-fun mapIsEmpty!14040 () Bool)

(declare-fun mapRes!14040 () Bool)

(assert (=> mapIsEmpty!14040 mapRes!14040))

(declare-fun mapNonEmpty!14041 () Bool)

(declare-fun tp!692541 () Bool)

(declare-fun tp!692542 () Bool)

(assert (=> mapNonEmpty!14041 (= mapRes!14040 (and tp!692541 tp!692542))))

(declare-fun mapValue!14041 () List!26141)

(declare-fun mapKey!14040 () (_ BitVec 32))

(declare-fun mapRest!14040 () (Array (_ BitVec 32) List!26141))

(assert (=> mapNonEmpty!14041 (= (arr!4544 (_values!3255 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))) (store mapRest!14040 mapKey!14040 mapValue!14041))))

(declare-fun b!2221742 () Bool)

(declare-fun tp!692546 () Bool)

(assert (=> b!2221742 (= e!1419134 tp!692546)))

(declare-fun b!2221743 () Bool)

(declare-fun lt!828110 () tuple2!25220)

(declare-fun lt!828108 () tuple3!3814)

(assert (=> b!2221743 (= e!1419140 (tuple3!3815 ((_ map or) (_1!14988 lt!828110) (_1!14987 lt!828108)) (_2!14987 lt!828108) (_3!2377 lt!828108)))))

(declare-fun lt!828109 () Context!3778)

(assert (=> b!2221743 (= lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72))))))

(assert (=> b!2221743 (= lt!828110 call!132620)))

(declare-fun derivationStepZipperUpMem!3 (Context!3778 C!12828 CacheUp!1904 CacheDown!1886) tuple3!3814)

(assert (=> b!2221743 (= lt!828108 (derivationStepZipperUpMem!3 lt!828109 a!1149 cacheUp!790 (_2!14988 lt!828110)))))

(declare-fun lt!828112 () tuple3!3814)

(declare-fun b!2221744 () Bool)

(declare-fun e!1419130 () Bool)

(declare-fun derivationStepZipperUp!18 (Context!3778 C!12828) (InoxSet Context!3778))

(assert (=> b!2221744 (= e!1419130 (not (= (_1!14987 lt!828112) (derivationStepZipperUp!18 context!72 a!1149))))))

(declare-fun b!2221745 () Bool)

(assert (=> b!2221745 (= e!1419123 e!1419138)))

(declare-fun tp!692551 () Bool)

(declare-fun tp!692544 () Bool)

(declare-fun e!1419131 () Bool)

(declare-fun array_inv!3266 (array!10202) Bool)

(assert (=> b!2221746 (= e!1419139 (and tp!692545 tp!692551 tp!692544 (array_inv!3264 (_keys!3272 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))) (array_inv!3266 (_values!3255 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))) e!1419131))))

(declare-fun b!2221747 () Bool)

(declare-fun tp!692538 () Bool)

(assert (=> b!2221747 (= e!1419131 (and tp!692538 mapRes!14040))))

(declare-fun condMapEmpty!14041 () Bool)

(declare-fun mapDefault!14041 () List!26141)

(assert (=> b!2221747 (= condMapEmpty!14041 (= (arr!4544 (_values!3255 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))) ((as const (Array (_ BitVec 32) List!26141)) mapDefault!14041)))))

(declare-fun b!2221748 () Bool)

(assert (=> b!2221748 (= e!1419121 e!1419130)))

(declare-fun res!953686 () Bool)

(assert (=> b!2221748 (=> (not res!953686) (not e!1419130))))

(declare-fun validCacheMapUp!268 (MutableMap!2886) Bool)

(assert (=> b!2221748 (= res!953686 (validCacheMapUp!268 (cache!3266 (_2!14987 lt!828112))))))

(assert (=> b!2221748 (= lt!828112 e!1419140)))

(declare-fun c!354764 () Bool)

(assert (=> b!2221748 (= c!354764 e!1419129)))

(declare-fun res!953684 () Bool)

(assert (=> b!2221748 (=> (not res!953684) (not e!1419129))))

(assert (=> b!2221748 (= res!953684 ((_ is Cons!26045) (exprs!2389 context!72)))))

(declare-fun b!2221749 () Bool)

(declare-fun tp!692548 () Bool)

(assert (=> b!2221749 (= e!1419136 (and tp!692548 mapRes!14041))))

(declare-fun condMapEmpty!14040 () Bool)

(declare-fun mapDefault!14040 () List!26140)

(assert (=> b!2221749 (= condMapEmpty!14040 (= (arr!4545 (_values!3256 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26140)) mapDefault!14040)))))

(declare-fun b!2221750 () Bool)

(declare-fun e!1419137 () Bool)

(assert (=> b!2221750 (= e!1419127 e!1419137)))

(declare-fun e!1419124 () Bool)

(declare-fun e!1419126 () Bool)

(assert (=> b!2221751 (= e!1419124 (and e!1419126 tp!692547))))

(declare-fun b!2221752 () Bool)

(declare-fun e!1419122 () Bool)

(declare-fun lt!828111 () MutLongMap!2976)

(assert (=> b!2221752 (= e!1419122 (and e!1419132 ((_ is LongMap!2976) lt!828111)))))

(assert (=> b!2221752 (= lt!828111 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))

(declare-fun b!2221753 () Bool)

(assert (=> b!2221753 (= e!1419120 e!1419124)))

(declare-fun bm!132615 () Bool)

(declare-fun derivationStepZipperDownMem!4 (Regex!6341 Context!3778 C!12828 CacheDown!1886) tuple2!25220)

(assert (=> bm!132615 (= call!132620 (derivationStepZipperDownMem!4 (h!31446 (exprs!2389 context!72)) (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72)))) a!1149 cacheDown!803))))

(declare-fun b!2221754 () Bool)

(declare-fun lt!828107 () MutLongMap!2975)

(assert (=> b!2221754 (= e!1419126 (and e!1419128 ((_ is LongMap!2975) lt!828107)))))

(assert (=> b!2221754 (= lt!828107 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))

(assert (=> b!2221755 (= e!1419137 (and e!1419122 tp!692540))))

(declare-fun mapIsEmpty!14041 () Bool)

(assert (=> mapIsEmpty!14041 mapRes!14041))

(assert (= (and start!216784 res!953685) b!2221748))

(assert (= (and b!2221748 res!953684) b!2221734))

(assert (= (and b!2221748 c!354764) b!2221743))

(assert (= (and b!2221748 (not c!354764)) b!2221739))

(assert (= (and b!2221739 c!354763) b!2221736))

(assert (= (and b!2221739 (not c!354763)) b!2221735))

(assert (= (or b!2221743 b!2221736) bm!132615))

(assert (= (and b!2221748 res!953686) b!2221744))

(assert (= (and b!2221749 condMapEmpty!14040) mapIsEmpty!14041))

(assert (= (and b!2221749 (not condMapEmpty!14040)) mapNonEmpty!14040))

(assert (= b!2221740 b!2221749))

(assert (= b!2221745 b!2221740))

(assert (= b!2221737 b!2221745))

(assert (= (and b!2221752 ((_ is LongMap!2976) (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))) b!2221737))

(assert (= b!2221755 b!2221752))

(assert (= (and b!2221750 ((_ is HashMap!2886) (cache!3266 cacheUp!790))) b!2221755))

(assert (= start!216784 b!2221750))

(assert (= start!216784 b!2221742))

(assert (= (and b!2221747 condMapEmpty!14041) mapIsEmpty!14040))

(assert (= (and b!2221747 (not condMapEmpty!14041)) mapNonEmpty!14041))

(assert (= b!2221746 b!2221747))

(assert (= b!2221738 b!2221746))

(assert (= b!2221741 b!2221738))

(assert (= (and b!2221754 ((_ is LongMap!2975) (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))) b!2221741))

(assert (= b!2221751 b!2221754))

(assert (= (and b!2221753 ((_ is HashMap!2885) (cache!3267 cacheDown!803))) b!2221751))

(assert (= start!216784 b!2221753))

(declare-fun m!2662206 () Bool)

(assert (=> b!2221744 m!2662206))

(declare-fun m!2662208 () Bool)

(assert (=> b!2221740 m!2662208))

(declare-fun m!2662210 () Bool)

(assert (=> b!2221740 m!2662210))

(declare-fun m!2662212 () Bool)

(assert (=> mapNonEmpty!14040 m!2662212))

(declare-fun m!2662214 () Bool)

(assert (=> mapNonEmpty!14041 m!2662214))

(declare-fun m!2662216 () Bool)

(assert (=> b!2221743 m!2662216))

(declare-fun m!2662218 () Bool)

(assert (=> b!2221748 m!2662218))

(declare-fun m!2662220 () Bool)

(assert (=> b!2221746 m!2662220))

(declare-fun m!2662222 () Bool)

(assert (=> b!2221746 m!2662222))

(declare-fun m!2662224 () Bool)

(assert (=> bm!132615 m!2662224))

(declare-fun m!2662226 () Bool)

(assert (=> b!2221734 m!2662226))

(declare-fun m!2662228 () Bool)

(assert (=> start!216784 m!2662228))

(declare-fun m!2662230 () Bool)

(assert (=> start!216784 m!2662230))

(declare-fun m!2662232 () Bool)

(assert (=> start!216784 m!2662232))

(declare-fun m!2662234 () Bool)

(assert (=> start!216784 m!2662234))

(check-sat (not b!2221748) tp_is_empty!9911 b_and!174331 b_and!174333 (not bm!132615) (not b!2221743) (not b!2221749) (not b!2221734) (not b!2221746) (not start!216784) (not b_next!65065) b_and!174329 (not mapNonEmpty!14041) (not b!2221744) (not b_next!65061) (not b_next!65063) (not b!2221747) (not mapNonEmpty!14040) (not b!2221742) (not b!2221740) (not b_next!65067) b_and!174335)
(check-sat b_and!174331 b_and!174333 (not b_next!65065) b_and!174329 (not b_next!65061) (not b_next!65063) (not b_next!65067) b_and!174335)
(get-model)

(declare-fun b!2221782 () Bool)

(declare-fun e!1419161 () tuple2!25220)

(declare-fun e!1419162 () tuple2!25220)

(assert (=> b!2221782 (= e!1419161 e!1419162)))

(declare-fun c!354780 () Bool)

(assert (=> b!2221782 (= c!354780 ((_ is Star!6341) (h!31446 (exprs!2389 context!72))))))

(declare-fun b!2221783 () Bool)

(declare-fun c!354779 () Bool)

(assert (=> b!2221783 (= c!354779 ((_ is Union!6341) (h!31446 (exprs!2389 context!72))))))

(declare-fun e!1419159 () tuple2!25220)

(declare-fun e!1419157 () tuple2!25220)

(assert (=> b!2221783 (= e!1419159 e!1419157)))

(declare-fun b!2221784 () Bool)

(declare-fun e!1419156 () tuple2!25220)

(declare-fun lt!828134 () Option!5056)

(assert (=> b!2221784 (= e!1419156 (tuple2!25221 (v!29591 lt!828134) cacheDown!803))))

(declare-fun bm!132628 () Bool)

(declare-fun call!132634 () tuple2!25220)

(declare-fun call!132637 () tuple2!25220)

(assert (=> bm!132628 (= call!132634 call!132637)))

(declare-fun b!2221785 () Bool)

(declare-fun c!354778 () Bool)

(assert (=> b!2221785 (= c!354778 ((_ is Concat!10679) (h!31446 (exprs!2389 context!72))))))

(declare-fun e!1419158 () tuple2!25220)

(assert (=> b!2221785 (= e!1419158 e!1419161)))

(declare-fun lt!828136 () tuple2!25220)

(declare-fun d!663994 () Bool)

(declare-fun derivationStepZipperDown!18 (Regex!6341 Context!3778 C!12828) (InoxSet Context!3778))

(assert (=> d!663994 (= (_1!14988 lt!828136) (derivationStepZipperDown!18 (h!31446 (exprs!2389 context!72)) (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72)))) a!1149))))

(assert (=> d!663994 (= lt!828136 e!1419156)))

(declare-fun c!354782 () Bool)

(assert (=> d!663994 (= c!354782 ((_ is Some!5055) lt!828134))))

(declare-fun get!7808 (CacheDown!1886 Regex!6341 Context!3778 C!12828) Option!5056)

(assert (=> d!663994 (= lt!828134 (get!7808 cacheDown!803 (h!31446 (exprs!2389 context!72)) (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72)))) a!1149))))

(declare-fun validRegex!2353 (Regex!6341) Bool)

(assert (=> d!663994 (validRegex!2353 (h!31446 (exprs!2389 context!72)))))

(assert (=> d!663994 (= (derivationStepZipperDownMem!4 (h!31446 (exprs!2389 context!72)) (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72)))) a!1149 cacheDown!803) lt!828136)))

(declare-fun b!2221786 () Bool)

(declare-fun lt!828139 () tuple2!25220)

(assert (=> b!2221786 (= lt!828139 call!132634)))

(assert (=> b!2221786 (= e!1419162 (tuple2!25221 (_1!14988 lt!828139) (_2!14988 lt!828139)))))

(declare-fun b!2221787 () Bool)

(assert (=> b!2221787 (= e!1419157 e!1419158)))

(declare-fun res!953689 () Bool)

(assert (=> b!2221787 (= res!953689 ((_ is Concat!10679) (h!31446 (exprs!2389 context!72))))))

(declare-fun e!1419160 () Bool)

(assert (=> b!2221787 (=> (not res!953689) (not e!1419160))))

(declare-fun c!354781 () Bool)

(assert (=> b!2221787 (= c!354781 e!1419160)))

(declare-fun b!2221788 () Bool)

(declare-fun lt!828137 () tuple2!25220)

(assert (=> b!2221788 (= lt!828137 call!132637)))

(declare-fun lt!828138 () tuple2!25220)

(declare-fun call!132638 () tuple2!25220)

(assert (=> b!2221788 (= lt!828138 call!132638)))

(assert (=> b!2221788 (= e!1419158 (tuple2!25221 ((_ map or) (_1!14988 lt!828138) (_1!14988 lt!828137)) (_2!14988 lt!828137)))))

(declare-fun b!2221789 () Bool)

(declare-fun lt!828135 () tuple2!25220)

(declare-datatypes ((Unit!39001 0))(
  ( (Unit!39002) )
))
(declare-datatypes ((tuple2!25222 0))(
  ( (tuple2!25223 (_1!14989 Unit!39001) (_2!14989 CacheDown!1886)) )
))
(declare-fun update!113 (CacheDown!1886 Regex!6341 Context!3778 C!12828 (InoxSet Context!3778)) tuple2!25222)

(assert (=> b!2221789 (= e!1419156 (tuple2!25221 (_1!14988 lt!828135) (_2!14989 (update!113 (_2!14988 lt!828135) (h!31446 (exprs!2389 context!72)) (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72)))) a!1149 (_1!14988 lt!828135)))))))

(declare-fun c!354783 () Bool)

(assert (=> b!2221789 (= c!354783 (and ((_ is ElementMatch!6341) (h!31446 (exprs!2389 context!72))) (= (c!354765 (h!31446 (exprs!2389 context!72))) a!1149)))))

(assert (=> b!2221789 (= lt!828135 e!1419159)))

(declare-fun bm!132629 () Bool)

(declare-fun call!132635 () List!26139)

(assert (=> bm!132629 (= call!132638 (derivationStepZipperDownMem!4 (ite c!354779 (regOne!13195 (h!31446 (exprs!2389 context!72))) (regOne!13194 (h!31446 (exprs!2389 context!72)))) (ite c!354779 (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72)))) (Context!3779 call!132635)) a!1149 cacheDown!803))))

(declare-fun b!2221790 () Bool)

(declare-fun lt!828131 () tuple2!25220)

(assert (=> b!2221790 (= e!1419161 (tuple2!25221 (_1!14988 lt!828131) (_2!14988 lt!828131)))))

(assert (=> b!2221790 (= lt!828131 call!132634)))

(declare-fun b!2221791 () Bool)

(declare-fun lt!828132 () tuple2!25220)

(declare-fun lt!828133 () tuple2!25220)

(assert (=> b!2221791 (= e!1419157 (tuple2!25221 ((_ map or) (_1!14988 lt!828132) (_1!14988 lt!828133)) (_2!14988 lt!828133)))))

(assert (=> b!2221791 (= lt!828132 call!132638)))

(declare-fun call!132636 () tuple2!25220)

(assert (=> b!2221791 (= lt!828133 call!132636)))

(declare-fun bm!132630 () Bool)

(assert (=> bm!132630 (= call!132637 call!132636)))

(declare-fun call!132633 () List!26139)

(declare-fun bm!132631 () Bool)

(assert (=> bm!132631 (= call!132636 (derivationStepZipperDownMem!4 (ite c!354779 (regTwo!13195 (h!31446 (exprs!2389 context!72))) (ite c!354781 (regTwo!13194 (h!31446 (exprs!2389 context!72))) (ite c!354778 (regOne!13194 (h!31446 (exprs!2389 context!72))) (reg!6670 (h!31446 (exprs!2389 context!72)))))) (ite (or c!354779 c!354781) (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72)))) (Context!3779 call!132633)) a!1149 (ite c!354779 (_2!14988 lt!828132) (ite c!354781 (_2!14988 lt!828138) cacheDown!803))))))

(declare-fun bm!132632 () Bool)

(declare-fun $colon$colon!500 (List!26139 Regex!6341) List!26139)

(assert (=> bm!132632 (= call!132635 ($colon$colon!500 (exprs!2389 (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72))))) (ite (or c!354781 c!354778) (regTwo!13194 (h!31446 (exprs!2389 context!72))) (h!31446 (exprs!2389 context!72)))))))

(declare-fun b!2221792 () Bool)

(assert (=> b!2221792 (= e!1419162 (tuple2!25221 ((as const (Array Context!3778 Bool)) false) cacheDown!803))))

(declare-fun bm!132633 () Bool)

(assert (=> bm!132633 (= call!132633 call!132635)))

(declare-fun b!2221793 () Bool)

(assert (=> b!2221793 (= e!1419160 (nullable!1724 (regOne!13194 (h!31446 (exprs!2389 context!72)))))))

(declare-fun b!2221794 () Bool)

(assert (=> b!2221794 (= e!1419159 (tuple2!25221 (store ((as const (Array Context!3778 Bool)) false) (ite c!354764 lt!828109 (Context!3779 (t!199542 (exprs!2389 context!72)))) true) cacheDown!803))))

(assert (= (and d!663994 c!354782) b!2221784))

(assert (= (and d!663994 (not c!354782)) b!2221789))

(assert (= (and b!2221789 c!354783) b!2221794))

(assert (= (and b!2221789 (not c!354783)) b!2221783))

(assert (= (and b!2221783 c!354779) b!2221791))

(assert (= (and b!2221783 (not c!354779)) b!2221787))

(assert (= (and b!2221787 res!953689) b!2221793))

(assert (= (and b!2221787 c!354781) b!2221788))

(assert (= (and b!2221787 (not c!354781)) b!2221785))

(assert (= (and b!2221785 c!354778) b!2221790))

(assert (= (and b!2221785 (not c!354778)) b!2221782))

(assert (= (and b!2221782 c!354780) b!2221786))

(assert (= (and b!2221782 (not c!354780)) b!2221792))

(assert (= (or b!2221790 b!2221786) bm!132633))

(assert (= (or b!2221790 b!2221786) bm!132628))

(assert (= (or b!2221788 bm!132633) bm!132632))

(assert (= (or b!2221788 bm!132628) bm!132630))

(assert (= (or b!2221791 bm!132630) bm!132631))

(assert (= (or b!2221791 b!2221788) bm!132629))

(declare-fun m!2662236 () Bool)

(assert (=> b!2221794 m!2662236))

(declare-fun m!2662238 () Bool)

(assert (=> bm!132629 m!2662238))

(declare-fun m!2662240 () Bool)

(assert (=> bm!132632 m!2662240))

(declare-fun m!2662242 () Bool)

(assert (=> bm!132631 m!2662242))

(declare-fun m!2662244 () Bool)

(assert (=> d!663994 m!2662244))

(declare-fun m!2662246 () Bool)

(assert (=> d!663994 m!2662246))

(declare-fun m!2662248 () Bool)

(assert (=> d!663994 m!2662248))

(declare-fun m!2662250 () Bool)

(assert (=> b!2221789 m!2662250))

(declare-fun m!2662252 () Bool)

(assert (=> b!2221793 m!2662252))

(assert (=> bm!132615 d!663994))

(declare-fun b!2221809 () Bool)

(declare-fun c!354790 () Bool)

(assert (=> b!2221809 (= c!354790 ((_ is Cons!26045) (exprs!2389 lt!828109)))))

(declare-fun e!1419174 () tuple3!3814)

(declare-fun e!1419172 () tuple3!3814)

(assert (=> b!2221809 (= e!1419174 e!1419172)))

(declare-fun b!2221810 () Bool)

(declare-fun lt!828152 () tuple2!25220)

(assert (=> b!2221810 (= e!1419172 (tuple3!3815 (_1!14988 lt!828152) cacheUp!790 (_2!14988 lt!828152)))))

(declare-fun call!132641 () tuple2!25220)

(assert (=> b!2221810 (= lt!828152 call!132641)))

(declare-fun d!663996 () Bool)

(declare-fun lt!828155 () tuple3!3814)

(assert (=> d!663996 (= (_1!14987 lt!828155) (derivationStepZipperUp!18 lt!828109 a!1149))))

(declare-fun e!1419171 () tuple3!3814)

(assert (=> d!663996 (= lt!828155 e!1419171)))

(declare-fun c!354791 () Bool)

(declare-fun lt!828156 () Option!5056)

(assert (=> d!663996 (= c!354791 ((_ is Some!5055) lt!828156))))

(assert (=> d!663996 (= lt!828156 (get!7807 cacheUp!790 lt!828109 a!1149))))

(assert (=> d!663996 (= (derivationStepZipperUpMem!3 lt!828109 a!1149 cacheUp!790 (_2!14988 lt!828110)) lt!828155)))

(declare-fun b!2221811 () Bool)

(assert (=> b!2221811 (= e!1419172 (tuple3!3815 ((as const (Array Context!3778 Bool)) false) cacheUp!790 (_2!14988 lt!828110)))))

(declare-fun b!2221812 () Bool)

(declare-fun lt!828154 () tuple3!3814)

(declare-datatypes ((tuple2!25224 0))(
  ( (tuple2!25225 (_1!14990 Unit!39001) (_2!14990 CacheUp!1904)) )
))
(declare-fun update!114 (CacheUp!1904 Context!3778 C!12828 (InoxSet Context!3778)) tuple2!25224)

(assert (=> b!2221812 (= e!1419171 (tuple3!3815 (_1!14987 lt!828154) (_2!14990 (update!114 (_2!14987 lt!828154) lt!828109 a!1149 (_1!14987 lt!828154))) (_3!2377 lt!828154)))))

(declare-fun res!953692 () Bool)

(assert (=> b!2221812 (= res!953692 ((_ is Cons!26045) (exprs!2389 lt!828109)))))

(declare-fun e!1419173 () Bool)

(assert (=> b!2221812 (=> (not res!953692) (not e!1419173))))

(declare-fun c!354792 () Bool)

(assert (=> b!2221812 (= c!354792 e!1419173)))

(assert (=> b!2221812 (= lt!828154 e!1419174)))

(declare-fun b!2221813 () Bool)

(assert (=> b!2221813 (= e!1419171 (tuple3!3815 (v!29591 lt!828156) cacheUp!790 (_2!14988 lt!828110)))))

(declare-fun b!2221814 () Bool)

(declare-fun lt!828153 () tuple2!25220)

(declare-fun lt!828157 () tuple3!3814)

(assert (=> b!2221814 (= lt!828157 (derivationStepZipperUpMem!3 (Context!3779 (t!199542 (exprs!2389 lt!828109))) a!1149 cacheUp!790 (_2!14988 lt!828153)))))

(assert (=> b!2221814 (= lt!828153 call!132641)))

(assert (=> b!2221814 (= e!1419174 (tuple3!3815 ((_ map or) (_1!14988 lt!828153) (_1!14987 lt!828157)) (_2!14987 lt!828157) (_3!2377 lt!828157)))))

(declare-fun b!2221815 () Bool)

(assert (=> b!2221815 (= e!1419173 (nullable!1724 (h!31446 (exprs!2389 lt!828109))))))

(declare-fun bm!132636 () Bool)

(assert (=> bm!132636 (= call!132641 (derivationStepZipperDownMem!4 (h!31446 (exprs!2389 lt!828109)) (Context!3779 (t!199542 (exprs!2389 lt!828109))) a!1149 (_2!14988 lt!828110)))))

(assert (= (and d!663996 c!354791) b!2221813))

(assert (= (and d!663996 (not c!354791)) b!2221812))

(assert (= (and b!2221812 res!953692) b!2221815))

(assert (= (and b!2221812 c!354792) b!2221814))

(assert (= (and b!2221812 (not c!354792)) b!2221809))

(assert (= (and b!2221809 c!354790) b!2221810))

(assert (= (and b!2221809 (not c!354790)) b!2221811))

(assert (= (or b!2221814 b!2221810) bm!132636))

(declare-fun m!2662254 () Bool)

(assert (=> b!2221815 m!2662254))

(declare-fun m!2662256 () Bool)

(assert (=> b!2221812 m!2662256))

(declare-fun m!2662258 () Bool)

(assert (=> d!663996 m!2662258))

(declare-fun m!2662260 () Bool)

(assert (=> d!663996 m!2662260))

(declare-fun m!2662262 () Bool)

(assert (=> bm!132636 m!2662262))

(declare-fun m!2662264 () Bool)

(assert (=> b!2221814 m!2662264))

(assert (=> b!2221743 d!663996))

(declare-fun d!663998 () Bool)

(declare-fun res!953697 () Bool)

(declare-fun e!1419177 () Bool)

(assert (=> d!663998 (=> (not res!953697) (not e!1419177))))

(declare-fun valid!2296 (MutableMap!2886) Bool)

(assert (=> d!663998 (= res!953697 (valid!2296 (cache!3266 (_2!14987 lt!828112))))))

(assert (=> d!663998 (= (validCacheMapUp!268 (cache!3266 (_2!14987 lt!828112))) e!1419177)))

(declare-fun b!2221820 () Bool)

(declare-fun res!953698 () Bool)

(assert (=> b!2221820 (=> (not res!953698) (not e!1419177))))

(declare-fun invariantList!344 (List!26140) Bool)

(declare-datatypes ((ListMap!751 0))(
  ( (ListMap!752 (toList!1293 List!26140)) )
))
(declare-fun map!5285 (MutableMap!2886) ListMap!751)

(assert (=> b!2221820 (= res!953698 (invariantList!344 (toList!1293 (map!5285 (cache!3266 (_2!14987 lt!828112))))))))

(declare-fun b!2221821 () Bool)

(declare-fun lambda!83889 () Int)

(declare-fun forall!5302 (List!26140 Int) Bool)

(assert (=> b!2221821 (= e!1419177 (forall!5302 (toList!1293 (map!5285 (cache!3266 (_2!14987 lt!828112)))) lambda!83889))))

(assert (= (and d!663998 res!953697) b!2221820))

(assert (= (and b!2221820 res!953698) b!2221821))

(declare-fun m!2662267 () Bool)

(assert (=> d!663998 m!2662267))

(declare-fun m!2662269 () Bool)

(assert (=> b!2221820 m!2662269))

(declare-fun m!2662271 () Bool)

(assert (=> b!2221820 m!2662271))

(assert (=> b!2221821 m!2662269))

(declare-fun m!2662273 () Bool)

(assert (=> b!2221821 m!2662273))

(assert (=> b!2221748 d!663998))

(declare-fun d!664000 () Bool)

(assert (=> d!664000 (= (array_inv!3264 (_keys!3273 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))) (bvsge (size!20320 (_keys!3273 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2221740 d!664000))

(declare-fun d!664002 () Bool)

(assert (=> d!664002 (= (array_inv!3265 (_values!3256 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))) (bvsge (size!20322 (_values!3256 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2221740 d!664002))

(declare-fun d!664004 () Bool)

(declare-fun e!1419182 () Bool)

(assert (=> d!664004 e!1419182))

(declare-fun res!953701 () Bool)

(assert (=> d!664004 (=> res!953701 e!1419182)))

(declare-fun lt!828163 () Option!5056)

(declare-fun isEmpty!14871 (Option!5056) Bool)

(assert (=> d!664004 (= res!953701 (isEmpty!14871 lt!828163))))

(declare-fun e!1419183 () Option!5056)

(assert (=> d!664004 (= lt!828163 e!1419183)))

(declare-fun c!354795 () Bool)

(declare-fun contains!4333 (MutableMap!2886 tuple2!25214) Bool)

(assert (=> d!664004 (= c!354795 (contains!4333 (cache!3266 cacheUp!790) (tuple2!25215 context!72 a!1149)))))

(assert (=> d!664004 (validCacheMapUp!268 (cache!3266 cacheUp!790))))

(assert (=> d!664004 (= (get!7807 cacheUp!790 context!72 a!1149) lt!828163)))

(declare-fun b!2221828 () Bool)

(declare-fun apply!6445 (MutableMap!2886 tuple2!25214) (InoxSet Context!3778))

(assert (=> b!2221828 (= e!1419183 (Some!5055 (apply!6445 (cache!3266 cacheUp!790) (tuple2!25215 context!72 a!1149))))))

(declare-fun lt!828162 () Unit!39001)

(declare-fun lemmaIfInCacheThenValid!20 (CacheUp!1904 Context!3778 C!12828) Unit!39001)

(assert (=> b!2221828 (= lt!828162 (lemmaIfInCacheThenValid!20 cacheUp!790 context!72 a!1149))))

(declare-fun b!2221829 () Bool)

(assert (=> b!2221829 (= e!1419183 None!5055)))

(declare-fun b!2221830 () Bool)

(declare-fun get!7809 (Option!5056) (InoxSet Context!3778))

(assert (=> b!2221830 (= e!1419182 (= (get!7809 lt!828163) (derivationStepZipperUp!18 context!72 a!1149)))))

(assert (= (and d!664004 c!354795) b!2221828))

(assert (= (and d!664004 (not c!354795)) b!2221829))

(assert (= (and d!664004 (not res!953701)) b!2221830))

(declare-fun m!2662275 () Bool)

(assert (=> d!664004 m!2662275))

(declare-fun m!2662277 () Bool)

(assert (=> d!664004 m!2662277))

(declare-fun m!2662279 () Bool)

(assert (=> d!664004 m!2662279))

(declare-fun m!2662281 () Bool)

(assert (=> b!2221828 m!2662281))

(declare-fun m!2662283 () Bool)

(assert (=> b!2221828 m!2662283))

(declare-fun m!2662285 () Bool)

(assert (=> b!2221830 m!2662285))

(assert (=> b!2221830 m!2662206))

(assert (=> start!216784 d!664004))

(declare-fun d!664006 () Bool)

(declare-fun res!953704 () Bool)

(declare-fun e!1419186 () Bool)

(assert (=> d!664006 (=> (not res!953704) (not e!1419186))))

(assert (=> d!664006 (= res!953704 ((_ is HashMap!2886) (cache!3266 cacheUp!790)))))

(assert (=> d!664006 (= (inv!35363 cacheUp!790) e!1419186)))

(declare-fun b!2221833 () Bool)

(assert (=> b!2221833 (= e!1419186 (validCacheMapUp!268 (cache!3266 cacheUp!790)))))

(assert (= (and d!664006 res!953704) b!2221833))

(assert (=> b!2221833 m!2662279))

(assert (=> start!216784 d!664006))

(declare-fun d!664008 () Bool)

(declare-fun lambda!83892 () Int)

(declare-fun forall!5303 (List!26139 Int) Bool)

(assert (=> d!664008 (= (inv!35364 context!72) (forall!5303 (exprs!2389 context!72) lambda!83892))))

(declare-fun bs!452764 () Bool)

(assert (= bs!452764 d!664008))

(declare-fun m!2662287 () Bool)

(assert (=> bs!452764 m!2662287))

(assert (=> start!216784 d!664008))

(declare-fun d!664010 () Bool)

(declare-fun res!953707 () Bool)

(declare-fun e!1419189 () Bool)

(assert (=> d!664010 (=> (not res!953707) (not e!1419189))))

(assert (=> d!664010 (= res!953707 ((_ is HashMap!2885) (cache!3267 cacheDown!803)))))

(assert (=> d!664010 (= (inv!35365 cacheDown!803) e!1419189)))

(declare-fun b!2221836 () Bool)

(declare-fun validCacheMapDown!260 (MutableMap!2885) Bool)

(assert (=> b!2221836 (= e!1419189 (validCacheMapDown!260 (cache!3267 cacheDown!803)))))

(assert (= (and d!664010 res!953707) b!2221836))

(declare-fun m!2662289 () Bool)

(assert (=> b!2221836 m!2662289))

(assert (=> start!216784 d!664010))

(declare-fun b!2221847 () Bool)

(declare-fun call!132644 () (InoxSet Context!3778))

(declare-fun e!1419198 () (InoxSet Context!3778))

(assert (=> b!2221847 (= e!1419198 ((_ map or) call!132644 (derivationStepZipperUp!18 (Context!3779 (t!199542 (exprs!2389 context!72))) a!1149)))))

(declare-fun b!2221848 () Bool)

(declare-fun e!1419197 () (InoxSet Context!3778))

(assert (=> b!2221848 (= e!1419198 e!1419197)))

(declare-fun c!354801 () Bool)

(assert (=> b!2221848 (= c!354801 ((_ is Cons!26045) (exprs!2389 context!72)))))

(declare-fun d!664012 () Bool)

(declare-fun c!354800 () Bool)

(declare-fun e!1419196 () Bool)

(assert (=> d!664012 (= c!354800 e!1419196)))

(declare-fun res!953710 () Bool)

(assert (=> d!664012 (=> (not res!953710) (not e!1419196))))

(assert (=> d!664012 (= res!953710 ((_ is Cons!26045) (exprs!2389 context!72)))))

(assert (=> d!664012 (= (derivationStepZipperUp!18 context!72 a!1149) e!1419198)))

(declare-fun b!2221849 () Bool)

(assert (=> b!2221849 (= e!1419197 call!132644)))

(declare-fun b!2221850 () Bool)

(assert (=> b!2221850 (= e!1419196 (nullable!1724 (h!31446 (exprs!2389 context!72))))))

(declare-fun bm!132639 () Bool)

(assert (=> bm!132639 (= call!132644 (derivationStepZipperDown!18 (h!31446 (exprs!2389 context!72)) (Context!3779 (t!199542 (exprs!2389 context!72))) a!1149))))

(declare-fun b!2221851 () Bool)

(assert (=> b!2221851 (= e!1419197 ((as const (Array Context!3778 Bool)) false))))

(assert (= (and d!664012 res!953710) b!2221850))

(assert (= (and d!664012 c!354800) b!2221847))

(assert (= (and d!664012 (not c!354800)) b!2221848))

(assert (= (and b!2221848 c!354801) b!2221849))

(assert (= (and b!2221848 (not c!354801)) b!2221851))

(assert (= (or b!2221847 b!2221849) bm!132639))

(declare-fun m!2662291 () Bool)

(assert (=> b!2221847 m!2662291))

(assert (=> b!2221850 m!2662226))

(declare-fun m!2662293 () Bool)

(assert (=> bm!132639 m!2662293))

(assert (=> b!2221744 d!664012))

(declare-fun d!664014 () Bool)

(assert (=> d!664014 (= (array_inv!3264 (_keys!3272 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))) (bvsge (size!20320 (_keys!3272 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2221746 d!664014))

(declare-fun d!664016 () Bool)

(assert (=> d!664016 (= (array_inv!3266 (_values!3255 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))) (bvsge (size!20321 (_values!3255 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2221746 d!664016))

(declare-fun d!664018 () Bool)

(declare-fun nullableFct!399 (Regex!6341) Bool)

(assert (=> d!664018 (= (nullable!1724 (h!31446 (exprs!2389 context!72))) (nullableFct!399 (h!31446 (exprs!2389 context!72))))))

(declare-fun bs!452765 () Bool)

(assert (= bs!452765 d!664018))

(declare-fun m!2662295 () Bool)

(assert (=> bs!452765 m!2662295))

(assert (=> b!2221734 d!664018))

(declare-fun b!2221860 () Bool)

(declare-fun e!1419207 () Bool)

(declare-fun tp!692563 () Bool)

(assert (=> b!2221860 (= e!1419207 tp!692563)))

(declare-fun setIsEmpty!19481 () Bool)

(declare-fun setRes!19481 () Bool)

(assert (=> setIsEmpty!19481 setRes!19481))

(declare-fun b!2221861 () Bool)

(declare-fun e!1419205 () Bool)

(declare-fun tp!692562 () Bool)

(assert (=> b!2221861 (= e!1419205 tp!692562)))

(declare-fun setNonEmpty!19481 () Bool)

(declare-fun setElem!19481 () Context!3778)

(declare-fun tp!692561 () Bool)

(assert (=> setNonEmpty!19481 (= setRes!19481 (and tp!692561 (inv!35364 setElem!19481) e!1419207))))

(declare-fun setRest!19481 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19481 (= (_2!14984 (h!31447 (zeroValue!3234 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19481 true) setRest!19481))))

(declare-fun e!1419206 () Bool)

(assert (=> b!2221740 (= tp!692549 e!1419206)))

(declare-fun b!2221862 () Bool)

(declare-fun tp!692564 () Bool)

(assert (=> b!2221862 (= e!1419206 (and (inv!35364 (_1!14983 (_1!14984 (h!31447 (zeroValue!3234 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790)))))))))) e!1419205 tp_is_empty!9911 setRes!19481 tp!692564))))

(declare-fun condSetEmpty!19481 () Bool)

(assert (=> b!2221862 (= condSetEmpty!19481 (= (_2!14984 (h!31447 (zeroValue!3234 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790)))))))) ((as const (Array Context!3778 Bool)) false)))))

(assert (= b!2221862 b!2221861))

(assert (= (and b!2221862 condSetEmpty!19481) setIsEmpty!19481))

(assert (= (and b!2221862 (not condSetEmpty!19481)) setNonEmpty!19481))

(assert (= setNonEmpty!19481 b!2221860))

(assert (= (and b!2221740 ((_ is Cons!26046) (zeroValue!3234 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790)))))))) b!2221862))

(declare-fun m!2662297 () Bool)

(assert (=> setNonEmpty!19481 m!2662297))

(declare-fun m!2662299 () Bool)

(assert (=> b!2221862 m!2662299))

(declare-fun b!2221863 () Bool)

(declare-fun e!1419210 () Bool)

(declare-fun tp!692567 () Bool)

(assert (=> b!2221863 (= e!1419210 tp!692567)))

(declare-fun setIsEmpty!19482 () Bool)

(declare-fun setRes!19482 () Bool)

(assert (=> setIsEmpty!19482 setRes!19482))

(declare-fun b!2221864 () Bool)

(declare-fun e!1419208 () Bool)

(declare-fun tp!692566 () Bool)

(assert (=> b!2221864 (= e!1419208 tp!692566)))

(declare-fun setNonEmpty!19482 () Bool)

(declare-fun setElem!19482 () Context!3778)

(declare-fun tp!692565 () Bool)

(assert (=> setNonEmpty!19482 (= setRes!19482 (and tp!692565 (inv!35364 setElem!19482) e!1419210))))

(declare-fun setRest!19482 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19482 (= (_2!14984 (h!31447 (minValue!3234 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19482 true) setRest!19482))))

(declare-fun e!1419209 () Bool)

(assert (=> b!2221740 (= tp!692552 e!1419209)))

(declare-fun b!2221865 () Bool)

(declare-fun tp!692568 () Bool)

(assert (=> b!2221865 (= e!1419209 (and (inv!35364 (_1!14983 (_1!14984 (h!31447 (minValue!3234 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790)))))))))) e!1419208 tp_is_empty!9911 setRes!19482 tp!692568))))

(declare-fun condSetEmpty!19482 () Bool)

(assert (=> b!2221865 (= condSetEmpty!19482 (= (_2!14984 (h!31447 (minValue!3234 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790)))))))) ((as const (Array Context!3778 Bool)) false)))))

(assert (= b!2221865 b!2221864))

(assert (= (and b!2221865 condSetEmpty!19482) setIsEmpty!19482))

(assert (= (and b!2221865 (not condSetEmpty!19482)) setNonEmpty!19482))

(assert (= setNonEmpty!19482 b!2221863))

(assert (= (and b!2221740 ((_ is Cons!26046) (minValue!3234 (v!29589 (underlying!6153 (v!29590 (underlying!6154 (cache!3266 cacheUp!790)))))))) b!2221865))

(declare-fun m!2662301 () Bool)

(assert (=> setNonEmpty!19482 m!2662301))

(declare-fun m!2662303 () Bool)

(assert (=> b!2221865 m!2662303))

(declare-fun tp!692595 () Bool)

(declare-fun setNonEmpty!19487 () Bool)

(declare-fun e!1419223 () Bool)

(declare-fun setRes!19488 () Bool)

(declare-fun setElem!19488 () Context!3778)

(assert (=> setNonEmpty!19487 (= setRes!19488 (and tp!692595 (inv!35364 setElem!19488) e!1419223))))

(declare-fun mapValue!14044 () List!26140)

(declare-fun setRest!19488 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19487 (= (_2!14984 (h!31447 mapValue!14044)) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19488 true) setRest!19488))))

(declare-fun setIsEmpty!19487 () Bool)

(declare-fun setRes!19487 () Bool)

(assert (=> setIsEmpty!19487 setRes!19487))

(declare-fun e!1419225 () Bool)

(declare-fun b!2221880 () Bool)

(declare-fun tp!692590 () Bool)

(declare-fun e!1419228 () Bool)

(assert (=> b!2221880 (= e!1419225 (and (inv!35364 (_1!14983 (_1!14984 (h!31447 mapValue!14044)))) e!1419228 tp_is_empty!9911 setRes!19488 tp!692590))))

(declare-fun condSetEmpty!19488 () Bool)

(assert (=> b!2221880 (= condSetEmpty!19488 (= (_2!14984 (h!31447 mapValue!14044)) ((as const (Array Context!3778 Bool)) false)))))

(declare-fun b!2221881 () Bool)

(declare-fun e!1419226 () Bool)

(declare-fun tp!692593 () Bool)

(assert (=> b!2221881 (= e!1419226 tp!692593)))

(declare-fun mapIsEmpty!14044 () Bool)

(declare-fun mapRes!14044 () Bool)

(assert (=> mapIsEmpty!14044 mapRes!14044))

(declare-fun condMapEmpty!14044 () Bool)

(declare-fun mapDefault!14044 () List!26140)

(assert (=> mapNonEmpty!14040 (= condMapEmpty!14044 (= mapRest!14041 ((as const (Array (_ BitVec 32) List!26140)) mapDefault!14044)))))

(declare-fun e!1419224 () Bool)

(assert (=> mapNonEmpty!14040 (= tp!692550 (and e!1419224 mapRes!14044))))

(declare-fun tp!692589 () Bool)

(declare-fun setElem!19487 () Context!3778)

(declare-fun setNonEmpty!19488 () Bool)

(declare-fun e!1419227 () Bool)

(assert (=> setNonEmpty!19488 (= setRes!19487 (and tp!692589 (inv!35364 setElem!19487) e!1419227))))

(declare-fun setRest!19487 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19488 (= (_2!14984 (h!31447 mapDefault!14044)) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19487 true) setRest!19487))))

(declare-fun setIsEmpty!19488 () Bool)

(assert (=> setIsEmpty!19488 setRes!19488))

(declare-fun b!2221882 () Bool)

(declare-fun tp!692587 () Bool)

(assert (=> b!2221882 (= e!1419228 tp!692587)))

(declare-fun b!2221883 () Bool)

(declare-fun tp!692591 () Bool)

(assert (=> b!2221883 (= e!1419223 tp!692591)))

(declare-fun b!2221884 () Bool)

(declare-fun tp!692592 () Bool)

(assert (=> b!2221884 (= e!1419227 tp!692592)))

(declare-fun tp!692588 () Bool)

(declare-fun b!2221885 () Bool)

(assert (=> b!2221885 (= e!1419224 (and (inv!35364 (_1!14983 (_1!14984 (h!31447 mapDefault!14044)))) e!1419226 tp_is_empty!9911 setRes!19487 tp!692588))))

(declare-fun condSetEmpty!19487 () Bool)

(assert (=> b!2221885 (= condSetEmpty!19487 (= (_2!14984 (h!31447 mapDefault!14044)) ((as const (Array Context!3778 Bool)) false)))))

(declare-fun mapNonEmpty!14044 () Bool)

(declare-fun tp!692594 () Bool)

(assert (=> mapNonEmpty!14044 (= mapRes!14044 (and tp!692594 e!1419225))))

(declare-fun mapKey!14044 () (_ BitVec 32))

(declare-fun mapRest!14044 () (Array (_ BitVec 32) List!26140))

(assert (=> mapNonEmpty!14044 (= mapRest!14041 (store mapRest!14044 mapKey!14044 mapValue!14044))))

(assert (= (and mapNonEmpty!14040 condMapEmpty!14044) mapIsEmpty!14044))

(assert (= (and mapNonEmpty!14040 (not condMapEmpty!14044)) mapNonEmpty!14044))

(assert (= b!2221880 b!2221882))

(assert (= (and b!2221880 condSetEmpty!19488) setIsEmpty!19488))

(assert (= (and b!2221880 (not condSetEmpty!19488)) setNonEmpty!19487))

(assert (= setNonEmpty!19487 b!2221883))

(assert (= (and mapNonEmpty!14044 ((_ is Cons!26046) mapValue!14044)) b!2221880))

(assert (= b!2221885 b!2221881))

(assert (= (and b!2221885 condSetEmpty!19487) setIsEmpty!19487))

(assert (= (and b!2221885 (not condSetEmpty!19487)) setNonEmpty!19488))

(assert (= setNonEmpty!19488 b!2221884))

(assert (= (and mapNonEmpty!14040 ((_ is Cons!26046) mapDefault!14044)) b!2221885))

(declare-fun m!2662305 () Bool)

(assert (=> b!2221885 m!2662305))

(declare-fun m!2662307 () Bool)

(assert (=> setNonEmpty!19488 m!2662307))

(declare-fun m!2662309 () Bool)

(assert (=> b!2221880 m!2662309))

(declare-fun m!2662311 () Bool)

(assert (=> setNonEmpty!19487 m!2662311))

(declare-fun m!2662313 () Bool)

(assert (=> mapNonEmpty!14044 m!2662313))

(declare-fun b!2221886 () Bool)

(declare-fun e!1419231 () Bool)

(declare-fun tp!692598 () Bool)

(assert (=> b!2221886 (= e!1419231 tp!692598)))

(declare-fun setIsEmpty!19489 () Bool)

(declare-fun setRes!19489 () Bool)

(assert (=> setIsEmpty!19489 setRes!19489))

(declare-fun b!2221887 () Bool)

(declare-fun e!1419229 () Bool)

(declare-fun tp!692597 () Bool)

(assert (=> b!2221887 (= e!1419229 tp!692597)))

(declare-fun setNonEmpty!19489 () Bool)

(declare-fun tp!692596 () Bool)

(declare-fun setElem!19489 () Context!3778)

(assert (=> setNonEmpty!19489 (= setRes!19489 (and tp!692596 (inv!35364 setElem!19489) e!1419231))))

(declare-fun setRest!19489 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19489 (= (_2!14984 (h!31447 mapValue!14040)) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19489 true) setRest!19489))))

(declare-fun e!1419230 () Bool)

(assert (=> mapNonEmpty!14040 (= tp!692543 e!1419230)))

(declare-fun b!2221888 () Bool)

(declare-fun tp!692599 () Bool)

(assert (=> b!2221888 (= e!1419230 (and (inv!35364 (_1!14983 (_1!14984 (h!31447 mapValue!14040)))) e!1419229 tp_is_empty!9911 setRes!19489 tp!692599))))

(declare-fun condSetEmpty!19489 () Bool)

(assert (=> b!2221888 (= condSetEmpty!19489 (= (_2!14984 (h!31447 mapValue!14040)) ((as const (Array Context!3778 Bool)) false)))))

(assert (= b!2221888 b!2221887))

(assert (= (and b!2221888 condSetEmpty!19489) setIsEmpty!19489))

(assert (= (and b!2221888 (not condSetEmpty!19489)) setNonEmpty!19489))

(assert (= setNonEmpty!19489 b!2221886))

(assert (= (and mapNonEmpty!14040 ((_ is Cons!26046) mapValue!14040)) b!2221888))

(declare-fun m!2662315 () Bool)

(assert (=> setNonEmpty!19489 m!2662315))

(declare-fun m!2662317 () Bool)

(assert (=> b!2221888 m!2662317))

(declare-fun b!2221889 () Bool)

(declare-fun e!1419234 () Bool)

(declare-fun tp!692602 () Bool)

(assert (=> b!2221889 (= e!1419234 tp!692602)))

(declare-fun setIsEmpty!19490 () Bool)

(declare-fun setRes!19490 () Bool)

(assert (=> setIsEmpty!19490 setRes!19490))

(declare-fun b!2221890 () Bool)

(declare-fun e!1419232 () Bool)

(declare-fun tp!692601 () Bool)

(assert (=> b!2221890 (= e!1419232 tp!692601)))

(declare-fun tp!692600 () Bool)

(declare-fun setNonEmpty!19490 () Bool)

(declare-fun setElem!19490 () Context!3778)

(assert (=> setNonEmpty!19490 (= setRes!19490 (and tp!692600 (inv!35364 setElem!19490) e!1419234))))

(declare-fun setRest!19490 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19490 (= (_2!14984 (h!31447 mapDefault!14040)) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19490 true) setRest!19490))))

(declare-fun e!1419233 () Bool)

(assert (=> b!2221749 (= tp!692548 e!1419233)))

(declare-fun tp!692603 () Bool)

(declare-fun b!2221891 () Bool)

(assert (=> b!2221891 (= e!1419233 (and (inv!35364 (_1!14983 (_1!14984 (h!31447 mapDefault!14040)))) e!1419232 tp_is_empty!9911 setRes!19490 tp!692603))))

(declare-fun condSetEmpty!19490 () Bool)

(assert (=> b!2221891 (= condSetEmpty!19490 (= (_2!14984 (h!31447 mapDefault!14040)) ((as const (Array Context!3778 Bool)) false)))))

(assert (= b!2221891 b!2221890))

(assert (= (and b!2221891 condSetEmpty!19490) setIsEmpty!19490))

(assert (= (and b!2221891 (not condSetEmpty!19490)) setNonEmpty!19490))

(assert (= setNonEmpty!19490 b!2221889))

(assert (= (and b!2221749 ((_ is Cons!26046) mapDefault!14040)) b!2221891))

(declare-fun m!2662319 () Bool)

(assert (=> setNonEmpty!19490 m!2662319))

(declare-fun m!2662321 () Bool)

(assert (=> b!2221891 m!2662321))

(declare-fun tp!692617 () Bool)

(declare-fun tp!692616 () Bool)

(declare-fun e!1419243 () Bool)

(declare-fun setRes!19493 () Bool)

(declare-fun e!1419241 () Bool)

(declare-fun b!2221900 () Bool)

(assert (=> b!2221900 (= e!1419241 (and tp!692617 (inv!35364 (_2!14985 (_1!14986 (h!31448 (zeroValue!3233 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803)))))))))) e!1419243 tp_is_empty!9911 setRes!19493 tp!692616))))

(declare-fun condSetEmpty!19493 () Bool)

(assert (=> b!2221900 (= condSetEmpty!19493 (= (_2!14986 (h!31448 (zeroValue!3233 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803)))))))) ((as const (Array Context!3778 Bool)) false)))))

(declare-fun setElem!19493 () Context!3778)

(declare-fun e!1419242 () Bool)

(declare-fun tp!692618 () Bool)

(declare-fun setNonEmpty!19493 () Bool)

(assert (=> setNonEmpty!19493 (= setRes!19493 (and tp!692618 (inv!35364 setElem!19493) e!1419242))))

(declare-fun setRest!19493 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19493 (= (_2!14986 (h!31448 (zeroValue!3233 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19493 true) setRest!19493))))

(declare-fun setIsEmpty!19493 () Bool)

(assert (=> setIsEmpty!19493 setRes!19493))

(declare-fun b!2221902 () Bool)

(declare-fun tp!692615 () Bool)

(assert (=> b!2221902 (= e!1419242 tp!692615)))

(declare-fun b!2221901 () Bool)

(declare-fun tp!692614 () Bool)

(assert (=> b!2221901 (= e!1419243 tp!692614)))

(assert (=> b!2221746 (= tp!692551 e!1419241)))

(assert (= b!2221900 b!2221901))

(assert (= (and b!2221900 condSetEmpty!19493) setIsEmpty!19493))

(assert (= (and b!2221900 (not condSetEmpty!19493)) setNonEmpty!19493))

(assert (= setNonEmpty!19493 b!2221902))

(assert (= (and b!2221746 ((_ is Cons!26047) (zeroValue!3233 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803)))))))) b!2221900))

(declare-fun m!2662323 () Bool)

(assert (=> b!2221900 m!2662323))

(declare-fun m!2662325 () Bool)

(assert (=> setNonEmpty!19493 m!2662325))

(declare-fun e!1419244 () Bool)

(declare-fun b!2221903 () Bool)

(declare-fun tp!692622 () Bool)

(declare-fun e!1419246 () Bool)

(declare-fun tp!692621 () Bool)

(declare-fun setRes!19494 () Bool)

(assert (=> b!2221903 (= e!1419244 (and tp!692622 (inv!35364 (_2!14985 (_1!14986 (h!31448 (minValue!3233 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803)))))))))) e!1419246 tp_is_empty!9911 setRes!19494 tp!692621))))

(declare-fun condSetEmpty!19494 () Bool)

(assert (=> b!2221903 (= condSetEmpty!19494 (= (_2!14986 (h!31448 (minValue!3233 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803)))))))) ((as const (Array Context!3778 Bool)) false)))))

(declare-fun setElem!19494 () Context!3778)

(declare-fun setNonEmpty!19494 () Bool)

(declare-fun tp!692623 () Bool)

(declare-fun e!1419245 () Bool)

(assert (=> setNonEmpty!19494 (= setRes!19494 (and tp!692623 (inv!35364 setElem!19494) e!1419245))))

(declare-fun setRest!19494 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19494 (= (_2!14986 (h!31448 (minValue!3233 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19494 true) setRest!19494))))

(declare-fun setIsEmpty!19494 () Bool)

(assert (=> setIsEmpty!19494 setRes!19494))

(declare-fun b!2221905 () Bool)

(declare-fun tp!692620 () Bool)

(assert (=> b!2221905 (= e!1419245 tp!692620)))

(declare-fun b!2221904 () Bool)

(declare-fun tp!692619 () Bool)

(assert (=> b!2221904 (= e!1419246 tp!692619)))

(assert (=> b!2221746 (= tp!692544 e!1419244)))

(assert (= b!2221903 b!2221904))

(assert (= (and b!2221903 condSetEmpty!19494) setIsEmpty!19494))

(assert (= (and b!2221903 (not condSetEmpty!19494)) setNonEmpty!19494))

(assert (= setNonEmpty!19494 b!2221905))

(assert (= (and b!2221746 ((_ is Cons!26047) (minValue!3233 (v!29587 (underlying!6151 (v!29588 (underlying!6152 (cache!3267 cacheDown!803)))))))) b!2221903))

(declare-fun m!2662327 () Bool)

(assert (=> b!2221903 m!2662327))

(declare-fun m!2662329 () Bool)

(assert (=> setNonEmpty!19494 m!2662329))

(declare-fun b!2221910 () Bool)

(declare-fun e!1419249 () Bool)

(declare-fun tp!692628 () Bool)

(declare-fun tp!692629 () Bool)

(assert (=> b!2221910 (= e!1419249 (and tp!692628 tp!692629))))

(assert (=> b!2221742 (= tp!692546 e!1419249)))

(assert (= (and b!2221742 ((_ is Cons!26045) (exprs!2389 context!72))) b!2221910))

(declare-fun tp!692633 () Bool)

(declare-fun e!1419250 () Bool)

(declare-fun e!1419252 () Bool)

(declare-fun b!2221911 () Bool)

(declare-fun tp!692632 () Bool)

(declare-fun setRes!19495 () Bool)

(assert (=> b!2221911 (= e!1419250 (and tp!692633 (inv!35364 (_2!14985 (_1!14986 (h!31448 mapDefault!14041)))) e!1419252 tp_is_empty!9911 setRes!19495 tp!692632))))

(declare-fun condSetEmpty!19495 () Bool)

(assert (=> b!2221911 (= condSetEmpty!19495 (= (_2!14986 (h!31448 mapDefault!14041)) ((as const (Array Context!3778 Bool)) false)))))

(declare-fun setElem!19495 () Context!3778)

(declare-fun tp!692634 () Bool)

(declare-fun e!1419251 () Bool)

(declare-fun setNonEmpty!19495 () Bool)

(assert (=> setNonEmpty!19495 (= setRes!19495 (and tp!692634 (inv!35364 setElem!19495) e!1419251))))

(declare-fun setRest!19495 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19495 (= (_2!14986 (h!31448 mapDefault!14041)) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19495 true) setRest!19495))))

(declare-fun setIsEmpty!19495 () Bool)

(assert (=> setIsEmpty!19495 setRes!19495))

(declare-fun b!2221913 () Bool)

(declare-fun tp!692631 () Bool)

(assert (=> b!2221913 (= e!1419251 tp!692631)))

(declare-fun b!2221912 () Bool)

(declare-fun tp!692630 () Bool)

(assert (=> b!2221912 (= e!1419252 tp!692630)))

(assert (=> b!2221747 (= tp!692538 e!1419250)))

(assert (= b!2221911 b!2221912))

(assert (= (and b!2221911 condSetEmpty!19495) setIsEmpty!19495))

(assert (= (and b!2221911 (not condSetEmpty!19495)) setNonEmpty!19495))

(assert (= setNonEmpty!19495 b!2221913))

(assert (= (and b!2221747 ((_ is Cons!26047) mapDefault!14041)) b!2221911))

(declare-fun m!2662331 () Bool)

(assert (=> b!2221911 m!2662331))

(declare-fun m!2662333 () Bool)

(assert (=> setNonEmpty!19495 m!2662333))

(declare-fun b!2221928 () Bool)

(declare-fun e!1419269 () Bool)

(declare-fun tp!692663 () Bool)

(assert (=> b!2221928 (= e!1419269 tp!692663)))

(declare-fun mapIsEmpty!14047 () Bool)

(declare-fun mapRes!14047 () Bool)

(assert (=> mapIsEmpty!14047 mapRes!14047))

(declare-fun mapNonEmpty!14047 () Bool)

(declare-fun tp!692665 () Bool)

(declare-fun e!1419267 () Bool)

(assert (=> mapNonEmpty!14047 (= mapRes!14047 (and tp!692665 e!1419267))))

(declare-fun mapRest!14047 () (Array (_ BitVec 32) List!26141))

(declare-fun mapValue!14047 () List!26141)

(declare-fun mapKey!14047 () (_ BitVec 32))

(assert (=> mapNonEmpty!14047 (= mapRest!14040 (store mapRest!14047 mapKey!14047 mapValue!14047))))

(declare-fun e!1419266 () Bool)

(declare-fun tp!692658 () Bool)

(declare-fun tp!692666 () Bool)

(declare-fun setRes!19500 () Bool)

(declare-fun b!2221929 () Bool)

(assert (=> b!2221929 (= e!1419267 (and tp!692666 (inv!35364 (_2!14985 (_1!14986 (h!31448 mapValue!14047)))) e!1419266 tp_is_empty!9911 setRes!19500 tp!692658))))

(declare-fun condSetEmpty!19501 () Bool)

(assert (=> b!2221929 (= condSetEmpty!19501 (= (_2!14986 (h!31448 mapValue!14047)) ((as const (Array Context!3778 Bool)) false)))))

(declare-fun b!2221930 () Bool)

(declare-fun tp!692667 () Bool)

(assert (=> b!2221930 (= e!1419266 tp!692667)))

(declare-fun setIsEmpty!19500 () Bool)

(assert (=> setIsEmpty!19500 setRes!19500))

(declare-fun tp!692661 () Bool)

(declare-fun setRes!19501 () Bool)

(declare-fun tp!692660 () Bool)

(declare-fun e!1419265 () Bool)

(declare-fun mapDefault!14047 () List!26141)

(declare-fun b!2221931 () Bool)

(assert (=> b!2221931 (= e!1419265 (and tp!692660 (inv!35364 (_2!14985 (_1!14986 (h!31448 mapDefault!14047)))) e!1419269 tp_is_empty!9911 setRes!19501 tp!692661))))

(declare-fun condSetEmpty!19500 () Bool)

(assert (=> b!2221931 (= condSetEmpty!19500 (= (_2!14986 (h!31448 mapDefault!14047)) ((as const (Array Context!3778 Bool)) false)))))

(declare-fun setIsEmpty!19501 () Bool)

(assert (=> setIsEmpty!19501 setRes!19501))

(declare-fun tp!692664 () Bool)

(declare-fun setElem!19501 () Context!3778)

(declare-fun e!1419268 () Bool)

(declare-fun setNonEmpty!19500 () Bool)

(assert (=> setNonEmpty!19500 (= setRes!19500 (and tp!692664 (inv!35364 setElem!19501) e!1419268))))

(declare-fun setRest!19500 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19500 (= (_2!14986 (h!31448 mapValue!14047)) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19501 true) setRest!19500))))

(declare-fun b!2221932 () Bool)

(declare-fun tp!692662 () Bool)

(assert (=> b!2221932 (= e!1419268 tp!692662)))

(declare-fun condMapEmpty!14047 () Bool)

(assert (=> mapNonEmpty!14041 (= condMapEmpty!14047 (= mapRest!14040 ((as const (Array (_ BitVec 32) List!26141)) mapDefault!14047)))))

(assert (=> mapNonEmpty!14041 (= tp!692541 (and e!1419265 mapRes!14047))))

(declare-fun tp!692659 () Bool)

(declare-fun e!1419270 () Bool)

(declare-fun setElem!19500 () Context!3778)

(declare-fun setNonEmpty!19501 () Bool)

(assert (=> setNonEmpty!19501 (= setRes!19501 (and tp!692659 (inv!35364 setElem!19500) e!1419270))))

(declare-fun setRest!19501 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19501 (= (_2!14986 (h!31448 mapDefault!14047)) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19500 true) setRest!19501))))

(declare-fun b!2221933 () Bool)

(declare-fun tp!692657 () Bool)

(assert (=> b!2221933 (= e!1419270 tp!692657)))

(assert (= (and mapNonEmpty!14041 condMapEmpty!14047) mapIsEmpty!14047))

(assert (= (and mapNonEmpty!14041 (not condMapEmpty!14047)) mapNonEmpty!14047))

(assert (= b!2221929 b!2221930))

(assert (= (and b!2221929 condSetEmpty!19501) setIsEmpty!19500))

(assert (= (and b!2221929 (not condSetEmpty!19501)) setNonEmpty!19500))

(assert (= setNonEmpty!19500 b!2221932))

(assert (= (and mapNonEmpty!14047 ((_ is Cons!26047) mapValue!14047)) b!2221929))

(assert (= b!2221931 b!2221928))

(assert (= (and b!2221931 condSetEmpty!19500) setIsEmpty!19501))

(assert (= (and b!2221931 (not condSetEmpty!19500)) setNonEmpty!19501))

(assert (= setNonEmpty!19501 b!2221933))

(assert (= (and mapNonEmpty!14041 ((_ is Cons!26047) mapDefault!14047)) b!2221931))

(declare-fun m!2662335 () Bool)

(assert (=> b!2221929 m!2662335))

(declare-fun m!2662337 () Bool)

(assert (=> setNonEmpty!19501 m!2662337))

(declare-fun m!2662339 () Bool)

(assert (=> b!2221931 m!2662339))

(declare-fun m!2662341 () Bool)

(assert (=> mapNonEmpty!14047 m!2662341))

(declare-fun m!2662343 () Bool)

(assert (=> setNonEmpty!19500 m!2662343))

(declare-fun e!1419271 () Bool)

(declare-fun tp!692670 () Bool)

(declare-fun e!1419273 () Bool)

(declare-fun setRes!19502 () Bool)

(declare-fun b!2221934 () Bool)

(declare-fun tp!692671 () Bool)

(assert (=> b!2221934 (= e!1419271 (and tp!692671 (inv!35364 (_2!14985 (_1!14986 (h!31448 mapValue!14041)))) e!1419273 tp_is_empty!9911 setRes!19502 tp!692670))))

(declare-fun condSetEmpty!19502 () Bool)

(assert (=> b!2221934 (= condSetEmpty!19502 (= (_2!14986 (h!31448 mapValue!14041)) ((as const (Array Context!3778 Bool)) false)))))

(declare-fun setElem!19502 () Context!3778)

(declare-fun e!1419272 () Bool)

(declare-fun setNonEmpty!19502 () Bool)

(declare-fun tp!692672 () Bool)

(assert (=> setNonEmpty!19502 (= setRes!19502 (and tp!692672 (inv!35364 setElem!19502) e!1419272))))

(declare-fun setRest!19502 () (InoxSet Context!3778))

(assert (=> setNonEmpty!19502 (= (_2!14986 (h!31448 mapValue!14041)) ((_ map or) (store ((as const (Array Context!3778 Bool)) false) setElem!19502 true) setRest!19502))))

(declare-fun setIsEmpty!19502 () Bool)

(assert (=> setIsEmpty!19502 setRes!19502))

(declare-fun b!2221936 () Bool)

(declare-fun tp!692669 () Bool)

(assert (=> b!2221936 (= e!1419272 tp!692669)))

(declare-fun b!2221935 () Bool)

(declare-fun tp!692668 () Bool)

(assert (=> b!2221935 (= e!1419273 tp!692668)))

(assert (=> mapNonEmpty!14041 (= tp!692542 e!1419271)))

(assert (= b!2221934 b!2221935))

(assert (= (and b!2221934 condSetEmpty!19502) setIsEmpty!19502))

(assert (= (and b!2221934 (not condSetEmpty!19502)) setNonEmpty!19502))

(assert (= setNonEmpty!19502 b!2221936))

(assert (= (and mapNonEmpty!14041 ((_ is Cons!26047) mapValue!14041)) b!2221934))

(declare-fun m!2662345 () Bool)

(assert (=> b!2221934 m!2662345))

(declare-fun m!2662347 () Bool)

(assert (=> setNonEmpty!19502 m!2662347))

(check-sat (not setNonEmpty!19487) (not b!2221931) (not d!663996) b_and!174333 (not b!2221862) (not b!2221933) (not setNonEmpty!19501) (not d!663994) (not b!2221865) (not setNonEmpty!19489) (not b!2221913) (not setNonEmpty!19494) (not b!2221863) (not b!2221883) (not b!2221847) (not d!663998) (not b!2221887) (not b!2221882) (not bm!132632) (not bm!132636) (not d!664018) (not setNonEmpty!19502) (not b!2221821) (not b!2221904) (not b!2221891) (not b!2221889) (not b!2221932) (not setNonEmpty!19488) (not b!2221833) (not b_next!65065) b_and!174329 tp_is_empty!9911 (not d!664004) (not b!2221789) (not b!2221881) (not mapNonEmpty!14044) (not setNonEmpty!19495) (not b!2221930) (not b!2221888) (not b!2221884) (not b!2221934) (not bm!132631) (not setNonEmpty!19490) (not b!2221880) (not b!2221861) b_and!174331 (not b!2221830) (not b!2221885) (not b!2221890) (not b!2221812) (not b_next!65061) (not b_next!65063) (not b!2221910) (not b!2221820) (not b!2221864) (not b!2221900) (not d!664008) (not b!2221936) (not b!2221814) (not b!2221911) (not b!2221828) (not b!2221836) (not b!2221793) (not b!2221929) (not b!2221901) (not b!2221850) (not mapNonEmpty!14047) (not b!2221902) (not bm!132629) (not b!2221886) (not b!2221905) (not b!2221935) (not b!2221815) (not setNonEmpty!19481) (not b!2221912) (not setNonEmpty!19500) (not b!2221860) (not b!2221928) (not setNonEmpty!19482) (not setNonEmpty!19493) (not b_next!65067) b_and!174335 (not bm!132639) (not b!2221903))
(check-sat b_and!174331 b_and!174333 (not b_next!65065) b_and!174329 (not b_next!65061) (not b_next!65063) (not b_next!65067) b_and!174335)
