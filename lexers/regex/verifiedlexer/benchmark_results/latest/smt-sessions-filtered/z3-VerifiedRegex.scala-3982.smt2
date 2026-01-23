; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217002 () Bool)

(assert start!217002)

(declare-fun b!2223753 () Bool)

(declare-fun b_free!64425 () Bool)

(declare-fun b_next!65129 () Bool)

(assert (=> b!2223753 (= b_free!64425 (not b_next!65129))))

(declare-fun tp!693933 () Bool)

(declare-fun b_and!174413 () Bool)

(assert (=> b!2223753 (= tp!693933 b_and!174413)))

(declare-fun b!2223748 () Bool)

(declare-fun b_free!64427 () Bool)

(declare-fun b_next!65131 () Bool)

(assert (=> b!2223748 (= b_free!64427 (not b_next!65131))))

(declare-fun tp!693937 () Bool)

(declare-fun b_and!174415 () Bool)

(assert (=> b!2223748 (= tp!693937 b_and!174415)))

(declare-fun e!1420732 () Bool)

(declare-fun e!1420731 () Bool)

(assert (=> b!2223748 (= e!1420732 (and e!1420731 tp!693937))))

(declare-fun mapIsEmpty!14121 () Bool)

(declare-fun mapRes!14121 () Bool)

(assert (=> mapIsEmpty!14121 mapRes!14121))

(declare-fun b!2223749 () Bool)

(declare-fun e!1420727 () Bool)

(declare-fun e!1420729 () Bool)

(assert (=> b!2223749 (= e!1420727 e!1420729)))

(declare-fun b!2223750 () Bool)

(declare-fun e!1420728 () Bool)

(declare-fun tp!693938 () Bool)

(assert (=> b!2223750 (= e!1420728 (and tp!693938 mapRes!14121))))

(declare-fun condMapEmpty!14121 () Bool)

(declare-datatypes ((C!12856 0))(
  ( (C!12857 (val!7476 Int)) )
))
(declare-datatypes ((Regex!6355 0))(
  ( (ElementMatch!6355 (c!355055 C!12856)) (Concat!10693 (regOne!13222 Regex!6355) (regTwo!13222 Regex!6355)) (EmptyExpr!6355) (Star!6355 (reg!6684 Regex!6355)) (EmptyLang!6355) (Union!6355 (regOne!13223 Regex!6355) (regTwo!13223 Regex!6355)) )
))
(declare-datatypes ((List!26174 0))(
  ( (Nil!26080) (Cons!26080 (h!31481 Regex!6355) (t!199586 List!26174)) )
))
(declare-datatypes ((Context!3806 0))(
  ( (Context!3807 (exprs!2403 List!26174)) )
))
(declare-datatypes ((array!10273 0))(
  ( (array!10274 (arr!4572 (Array (_ BitVec 32) (_ BitVec 64))) (size!20353 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25298 0))(
  ( (tuple2!25299 (_1!15031 Context!3806) (_2!15031 C!12856)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25300 0))(
  ( (tuple2!25301 (_1!15032 tuple2!25298) (_2!15032 (InoxSet Context!3806))) )
))
(declare-datatypes ((List!26175 0))(
  ( (Nil!26081) (Cons!26081 (h!31482 tuple2!25300) (t!199587 List!26175)) )
))
(declare-datatypes ((array!10275 0))(
  ( (array!10276 (arr!4573 (Array (_ BitVec 32) List!26175)) (size!20354 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5984 0))(
  ( (LongMapFixedSize!5985 (defaultEntry!3357 Int) (mask!7523 (_ BitVec 32)) (extraKeys!3240 (_ BitVec 32)) (zeroValue!3250 List!26175) (minValue!3250 List!26175) (_size!6031 (_ BitVec 32)) (_keys!3289 array!10273) (_values!3272 array!10275) (_vacant!3053 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11785 0))(
  ( (Cell!11786 (v!29638 LongMapFixedSize!5984)) )
))
(declare-datatypes ((MutLongMap!2992 0))(
  ( (LongMap!2992 (underlying!6185 Cell!11785)) (MutLongMapExt!2991 (__x!17202 Int)) )
))
(declare-datatypes ((Cell!11787 0))(
  ( (Cell!11788 (v!29639 MutLongMap!2992)) )
))
(declare-datatypes ((Hashable!2902 0))(
  ( (HashableExt!2901 (__x!17203 Int)) )
))
(declare-datatypes ((MutableMap!2902 0))(
  ( (MutableMapExt!2901 (__x!17204 Int)) (HashMap!2902 (underlying!6186 Cell!11787) (hashF!4825 Hashable!2902) (_size!6032 (_ BitVec 32)) (defaultValue!3064 Int)) )
))
(declare-datatypes ((CacheUp!1928 0))(
  ( (CacheUp!1929 (cache!3283 MutableMap!2902)) )
))
(declare-fun cacheUp!790 () CacheUp!1928)

(declare-fun mapDefault!14121 () List!26175)

(assert (=> b!2223750 (= condMapEmpty!14121 (= (arr!4573 (_values!3272 (v!29638 (underlying!6185 (v!29639 (underlying!6186 (cache!3283 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26175)) mapDefault!14121)))))

(declare-fun res!954037 () Bool)

(declare-fun e!1420730 () Bool)

(assert (=> start!217002 (=> (not res!954037) (not e!1420730))))

(declare-fun context!72 () Context!3806)

(declare-fun a!1149 () C!12856)

(get-info :version)

(declare-datatypes ((Option!5073 0))(
  ( (None!5072) (Some!5072 (v!29640 (InoxSet Context!3806))) )
))
(declare-fun get!7836 (CacheUp!1928 Context!3806 C!12856) Option!5073)

(assert (=> start!217002 (= res!954037 (not ((_ is Some!5072) (get!7836 cacheUp!790 context!72 a!1149))))))

(assert (=> start!217002 e!1420730))

(declare-fun e!1420734 () Bool)

(declare-fun inv!35408 (CacheUp!1928) Bool)

(assert (=> start!217002 (and (inv!35408 cacheUp!790) e!1420734)))

(declare-fun e!1420735 () Bool)

(declare-fun inv!35409 (Context!3806) Bool)

(assert (=> start!217002 (and (inv!35409 context!72) e!1420735)))

(declare-fun tp_is_empty!9935 () Bool)

(assert (=> start!217002 tp_is_empty!9935))

(declare-fun b!2223751 () Bool)

(declare-fun e!1420736 () Bool)

(declare-fun lt!829040 () MutLongMap!2992)

(assert (=> b!2223751 (= e!1420731 (and e!1420736 ((_ is LongMap!2992) lt!829040)))))

(assert (=> b!2223751 (= lt!829040 (v!29639 (underlying!6186 (cache!3283 cacheUp!790))))))

(declare-fun b!2223752 () Bool)

(assert (=> b!2223752 (= e!1420734 e!1420732)))

(declare-fun tp!693939 () Bool)

(declare-fun tp!693940 () Bool)

(declare-fun array_inv!3286 (array!10273) Bool)

(declare-fun array_inv!3287 (array!10275) Bool)

(assert (=> b!2223753 (= e!1420729 (and tp!693933 tp!693940 tp!693939 (array_inv!3286 (_keys!3289 (v!29638 (underlying!6185 (v!29639 (underlying!6186 (cache!3283 cacheUp!790))))))) (array_inv!3287 (_values!3272 (v!29638 (underlying!6185 (v!29639 (underlying!6186 (cache!3283 cacheUp!790))))))) e!1420728))))

(declare-fun b!2223754 () Bool)

(assert (=> b!2223754 (= e!1420730 false)))

(declare-fun b!2223755 () Bool)

(assert (=> b!2223755 (= e!1420736 e!1420727)))

(declare-fun mapNonEmpty!14121 () Bool)

(declare-fun tp!693936 () Bool)

(declare-fun tp!693935 () Bool)

(assert (=> mapNonEmpty!14121 (= mapRes!14121 (and tp!693936 tp!693935))))

(declare-fun mapValue!14121 () List!26175)

(declare-fun mapRest!14121 () (Array (_ BitVec 32) List!26175))

(declare-fun mapKey!14121 () (_ BitVec 32))

(assert (=> mapNonEmpty!14121 (= (arr!4573 (_values!3272 (v!29638 (underlying!6185 (v!29639 (underlying!6186 (cache!3283 cacheUp!790))))))) (store mapRest!14121 mapKey!14121 mapValue!14121))))

(declare-fun b!2223756 () Bool)

(declare-fun tp!693934 () Bool)

(assert (=> b!2223756 (= e!1420735 tp!693934)))

(assert (= (and start!217002 res!954037) b!2223754))

(assert (= (and b!2223750 condMapEmpty!14121) mapIsEmpty!14121))

(assert (= (and b!2223750 (not condMapEmpty!14121)) mapNonEmpty!14121))

(assert (= b!2223753 b!2223750))

(assert (= b!2223749 b!2223753))

(assert (= b!2223755 b!2223749))

(assert (= (and b!2223751 ((_ is LongMap!2992) (v!29639 (underlying!6186 (cache!3283 cacheUp!790))))) b!2223755))

(assert (= b!2223748 b!2223751))

(assert (= (and b!2223752 ((_ is HashMap!2902) (cache!3283 cacheUp!790))) b!2223748))

(assert (= start!217002 b!2223752))

(assert (= start!217002 b!2223756))

(declare-fun m!2663902 () Bool)

(assert (=> start!217002 m!2663902))

(declare-fun m!2663904 () Bool)

(assert (=> start!217002 m!2663904))

(declare-fun m!2663906 () Bool)

(assert (=> start!217002 m!2663906))

(declare-fun m!2663908 () Bool)

(assert (=> b!2223753 m!2663908))

(declare-fun m!2663910 () Bool)

(assert (=> b!2223753 m!2663910))

(declare-fun m!2663912 () Bool)

(assert (=> mapNonEmpty!14121 m!2663912))

(check-sat tp_is_empty!9935 (not start!217002) (not b!2223753) (not b_next!65131) (not mapNonEmpty!14121) b_and!174413 (not b!2223756) (not b_next!65129) b_and!174415 (not b!2223750))
(check-sat b_and!174415 b_and!174413 (not b_next!65131) (not b_next!65129))
