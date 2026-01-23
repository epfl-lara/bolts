; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217274 () Bool)

(assert start!217274)

(declare-fun b!2226672 () Bool)

(declare-fun b_free!64577 () Bool)

(declare-fun b_next!65281 () Bool)

(assert (=> b!2226672 (= b_free!64577 (not b_next!65281))))

(declare-fun tp!696130 () Bool)

(declare-fun b_and!174565 () Bool)

(assert (=> b!2226672 (= tp!696130 b_and!174565)))

(declare-fun b!2226685 () Bool)

(declare-fun b_free!64579 () Bool)

(declare-fun b_next!65283 () Bool)

(assert (=> b!2226685 (= b_free!64579 (not b_next!65283))))

(declare-fun tp!696127 () Bool)

(declare-fun b_and!174567 () Bool)

(assert (=> b!2226685 (= tp!696127 b_and!174567)))

(declare-fun b!2226671 () Bool)

(declare-fun e!1423025 () Bool)

(declare-fun e!1423020 () Bool)

(assert (=> b!2226671 (= e!1423025 e!1423020)))

(declare-fun tp!696137 () Bool)

(declare-fun e!1423016 () Bool)

(declare-fun tp!696136 () Bool)

(declare-datatypes ((C!12928 0))(
  ( (C!12929 (val!7512 Int)) )
))
(declare-datatypes ((Regex!6391 0))(
  ( (ElementMatch!6391 (c!355315 C!12928)) (Concat!10729 (regOne!13294 Regex!6391) (regTwo!13294 Regex!6391)) (EmptyExpr!6391) (Star!6391 (reg!6720 Regex!6391)) (EmptyLang!6391) (Union!6391 (regOne!13295 Regex!6391) (regTwo!13295 Regex!6391)) )
))
(declare-datatypes ((List!26253 0))(
  ( (Nil!26159) (Cons!26159 (h!31560 Regex!6391) (t!199665 List!26253)) )
))
(declare-datatypes ((Context!3878 0))(
  ( (Context!3879 (exprs!2439 List!26253)) )
))
(declare-datatypes ((array!10444 0))(
  ( (array!10445 (arr!4645 (Array (_ BitVec 32) (_ BitVec 64))) (size!20426 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3854 0))(
  ( (tuple3!3855 (_1!15134 Regex!6391) (_2!15134 Context!3878) (_3!2397 C!12928)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25474 0))(
  ( (tuple2!25475 (_1!15135 tuple3!3854) (_2!15135 (InoxSet Context!3878))) )
))
(declare-datatypes ((List!26254 0))(
  ( (Nil!26160) (Cons!26160 (h!31561 tuple2!25474) (t!199666 List!26254)) )
))
(declare-datatypes ((array!10446 0))(
  ( (array!10447 (arr!4646 (Array (_ BitVec 32) List!26254)) (size!20427 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6058 0))(
  ( (LongMapFixedSize!6059 (defaultEntry!3394 Int) (mask!7578 (_ BitVec 32)) (extraKeys!3277 (_ BitVec 32)) (zeroValue!3287 List!26254) (minValue!3287 List!26254) (_size!6105 (_ BitVec 32)) (_keys!3326 array!10444) (_values!3309 array!10446) (_vacant!3090 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11933 0))(
  ( (Cell!11934 (v!29730 LongMapFixedSize!6058)) )
))
(declare-datatypes ((MutLongMap!3029 0))(
  ( (LongMap!3029 (underlying!6259 Cell!11933)) (MutLongMapExt!3028 (__x!17313 Int)) )
))
(declare-datatypes ((Cell!11935 0))(
  ( (Cell!11936 (v!29731 MutLongMap!3029)) )
))
(declare-datatypes ((Hashable!2939 0))(
  ( (HashableExt!2938 (__x!17314 Int)) )
))
(declare-datatypes ((MutableMap!2939 0))(
  ( (MutableMapExt!2938 (__x!17315 Int)) (HashMap!2939 (underlying!6260 Cell!11935) (hashF!4862 Hashable!2939) (_size!6106 (_ BitVec 32)) (defaultValue!3101 Int)) )
))
(declare-datatypes ((CacheDown!1924 0))(
  ( (CacheDown!1925 (cache!3320 MutableMap!2939)) )
))
(declare-fun cacheDown!839 () CacheDown!1924)

(declare-fun array_inv!3333 (array!10444) Bool)

(declare-fun array_inv!3334 (array!10446) Bool)

(assert (=> b!2226672 (= e!1423020 (and tp!696130 tp!696136 tp!696137 (array_inv!3333 (_keys!3326 (v!29730 (underlying!6259 (v!29731 (underlying!6260 (cache!3320 cacheDown!839))))))) (array_inv!3334 (_values!3309 (v!29730 (underlying!6259 (v!29731 (underlying!6260 (cache!3320 cacheDown!839))))))) e!1423016))))

(declare-fun b!2226674 () Bool)

(declare-fun e!1423023 () Bool)

(declare-fun tp!696134 () Bool)

(assert (=> b!2226674 (= e!1423023 tp!696134)))

(declare-fun b!2226675 () Bool)

(declare-fun res!954664 () Bool)

(declare-fun e!1423022 () Bool)

(assert (=> b!2226675 (=> (not res!954664) (not e!1423022))))

(declare-fun expr!64 () Regex!6391)

(declare-fun a!1167 () C!12928)

(get-info :version)

(assert (=> b!2226675 (= res!954664 (and (or (not ((_ is ElementMatch!6391) expr!64)) (not (= (c!355315 expr!64) a!1167))) (not ((_ is Union!6391) expr!64)) ((_ is Concat!10729) expr!64)))))

(declare-fun b!2226676 () Bool)

(declare-fun res!954666 () Bool)

(assert (=> b!2226676 (=> (not res!954666) (not e!1423022))))

(declare-fun context!86 () Context!3878)

(declare-datatypes ((Option!5083 0))(
  ( (None!5082) (Some!5082 (v!29732 (InoxSet Context!3878))) )
))
(declare-fun get!7869 (CacheDown!1924 Regex!6391 Context!3878 C!12928) Option!5083)

(assert (=> b!2226676 (= res!954666 (not ((_ is Some!5082) (get!7869 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2226677 () Bool)

(declare-fun e!1423019 () Bool)

(declare-fun e!1423015 () Bool)

(assert (=> b!2226677 (= e!1423019 e!1423015)))

(declare-fun mapNonEmpty!14274 () Bool)

(declare-fun mapRes!14274 () Bool)

(declare-fun tp!696133 () Bool)

(declare-fun tp!696135 () Bool)

(assert (=> mapNonEmpty!14274 (= mapRes!14274 (and tp!696133 tp!696135))))

(declare-fun mapKey!14274 () (_ BitVec 32))

(declare-fun mapRest!14274 () (Array (_ BitVec 32) List!26254))

(declare-fun mapValue!14274 () List!26254)

(assert (=> mapNonEmpty!14274 (= (arr!4646 (_values!3309 (v!29730 (underlying!6259 (v!29731 (underlying!6260 (cache!3320 cacheDown!839))))))) (store mapRest!14274 mapKey!14274 mapValue!14274))))

(declare-fun b!2226678 () Bool)

(declare-fun tp!696129 () Bool)

(declare-fun tp!696132 () Bool)

(assert (=> b!2226678 (= e!1423023 (and tp!696129 tp!696132))))

(declare-fun b!2226679 () Bool)

(declare-fun e!1423024 () Bool)

(assert (=> b!2226679 (= e!1423024 e!1423025)))

(declare-fun b!2226680 () Bool)

(declare-fun tp_is_empty!10007 () Bool)

(assert (=> b!2226680 (= e!1423023 tp_is_empty!10007)))

(declare-fun b!2226681 () Bool)

(declare-fun tp!696126 () Bool)

(assert (=> b!2226681 (= e!1423016 (and tp!696126 mapRes!14274))))

(declare-fun condMapEmpty!14274 () Bool)

(declare-fun mapDefault!14274 () List!26254)

(assert (=> b!2226681 (= condMapEmpty!14274 (= (arr!4646 (_values!3309 (v!29730 (underlying!6259 (v!29731 (underlying!6260 (cache!3320 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26254)) mapDefault!14274)))))

(declare-fun mapIsEmpty!14274 () Bool)

(assert (=> mapIsEmpty!14274 mapRes!14274))

(declare-fun b!2226673 () Bool)

(declare-fun res!954667 () Bool)

(assert (=> b!2226673 (=> (not res!954667) (not e!1423022))))

(declare-fun nullable!1745 (Regex!6391) Bool)

(assert (=> b!2226673 (= res!954667 (nullable!1745 (regOne!13294 expr!64)))))

(declare-fun res!954668 () Bool)

(assert (=> start!217274 (=> (not res!954668) (not e!1423022))))

(declare-fun validRegex!2370 (Regex!6391) Bool)

(assert (=> start!217274 (= res!954668 (validRegex!2370 expr!64))))

(assert (=> start!217274 e!1423022))

(assert (=> start!217274 e!1423023))

(declare-fun inv!35516 (CacheDown!1924) Bool)

(assert (=> start!217274 (and (inv!35516 cacheDown!839) e!1423019)))

(declare-fun e!1423017 () Bool)

(declare-fun inv!35517 (Context!3878) Bool)

(assert (=> start!217274 (and (inv!35517 context!86) e!1423017)))

(assert (=> start!217274 tp_is_empty!10007))

(declare-fun b!2226682 () Bool)

(assert (=> b!2226682 (= e!1423022 false)))

(declare-datatypes ((tuple2!25476 0))(
  ( (tuple2!25477 (_1!15136 (InoxSet Context!3878)) (_2!15136 CacheDown!1924)) )
))
(declare-fun lt!830132 () tuple2!25476)

(declare-fun derivationStepZipperDownMem!12 (Regex!6391 Context!3878 C!12928 CacheDown!1924) tuple2!25476)

(declare-fun $colon$colon!506 (List!26253 Regex!6391) List!26253)

(assert (=> b!2226682 (= lt!830132 (derivationStepZipperDownMem!12 (regOne!13294 expr!64) (Context!3879 ($colon$colon!506 (exprs!2439 context!86) (regTwo!13294 expr!64))) a!1167 cacheDown!839))))

(declare-fun b!2226683 () Bool)

(declare-fun tp!696125 () Bool)

(assert (=> b!2226683 (= e!1423017 tp!696125)))

(declare-fun b!2226684 () Bool)

(declare-fun tp!696131 () Bool)

(declare-fun tp!696128 () Bool)

(assert (=> b!2226684 (= e!1423023 (and tp!696131 tp!696128))))

(declare-fun e!1423018 () Bool)

(assert (=> b!2226685 (= e!1423015 (and e!1423018 tp!696127))))

(declare-fun b!2226686 () Bool)

(declare-fun lt!830131 () MutLongMap!3029)

(assert (=> b!2226686 (= e!1423018 (and e!1423024 ((_ is LongMap!3029) lt!830131)))))

(assert (=> b!2226686 (= lt!830131 (v!29731 (underlying!6260 (cache!3320 cacheDown!839))))))

(declare-fun b!2226687 () Bool)

(declare-fun res!954665 () Bool)

(assert (=> b!2226687 (=> (not res!954665) (not e!1423022))))

(assert (=> b!2226687 (= res!954665 (validRegex!2370 (regTwo!13294 expr!64)))))

(assert (= (and start!217274 res!954668) b!2226676))

(assert (= (and b!2226676 res!954666) b!2226675))

(assert (= (and b!2226675 res!954664) b!2226673))

(assert (= (and b!2226673 res!954667) b!2226687))

(assert (= (and b!2226687 res!954665) b!2226682))

(assert (= (and start!217274 ((_ is ElementMatch!6391) expr!64)) b!2226680))

(assert (= (and start!217274 ((_ is Concat!10729) expr!64)) b!2226678))

(assert (= (and start!217274 ((_ is Star!6391) expr!64)) b!2226674))

(assert (= (and start!217274 ((_ is Union!6391) expr!64)) b!2226684))

(assert (= (and b!2226681 condMapEmpty!14274) mapIsEmpty!14274))

(assert (= (and b!2226681 (not condMapEmpty!14274)) mapNonEmpty!14274))

(assert (= b!2226672 b!2226681))

(assert (= b!2226671 b!2226672))

(assert (= b!2226679 b!2226671))

(assert (= (and b!2226686 ((_ is LongMap!3029) (v!29731 (underlying!6260 (cache!3320 cacheDown!839))))) b!2226679))

(assert (= b!2226685 b!2226686))

(assert (= (and b!2226677 ((_ is HashMap!2939) (cache!3320 cacheDown!839))) b!2226685))

(assert (= start!217274 b!2226677))

(assert (= start!217274 b!2226683))

(declare-fun m!2665720 () Bool)

(assert (=> b!2226673 m!2665720))

(declare-fun m!2665722 () Bool)

(assert (=> b!2226672 m!2665722))

(declare-fun m!2665724 () Bool)

(assert (=> b!2226672 m!2665724))

(declare-fun m!2665726 () Bool)

(assert (=> b!2226676 m!2665726))

(declare-fun m!2665728 () Bool)

(assert (=> b!2226687 m!2665728))

(declare-fun m!2665730 () Bool)

(assert (=> start!217274 m!2665730))

(declare-fun m!2665732 () Bool)

(assert (=> start!217274 m!2665732))

(declare-fun m!2665734 () Bool)

(assert (=> start!217274 m!2665734))

(declare-fun m!2665736 () Bool)

(assert (=> b!2226682 m!2665736))

(declare-fun m!2665738 () Bool)

(assert (=> b!2226682 m!2665738))

(declare-fun m!2665740 () Bool)

(assert (=> mapNonEmpty!14274 m!2665740))

(check-sat (not b!2226672) (not b_next!65283) tp_is_empty!10007 (not b!2226683) (not b!2226681) (not mapNonEmpty!14274) (not b!2226687) b_and!174565 (not start!217274) (not b!2226676) (not b!2226674) (not b!2226684) b_and!174567 (not b!2226682) (not b!2226678) (not b!2226673) (not b_next!65281))
(check-sat b_and!174567 b_and!174565 (not b_next!65281) (not b_next!65283))
