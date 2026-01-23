; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218050 () Bool)

(assert start!218050)

(declare-fun b!2237736 () Bool)

(declare-fun b_free!64937 () Bool)

(declare-fun b_next!65641 () Bool)

(assert (=> b!2237736 (= b_free!64937 (not b_next!65641))))

(declare-fun tp!704114 () Bool)

(declare-fun b_and!174933 () Bool)

(assert (=> b!2237736 (= tp!704114 b_and!174933)))

(declare-fun b!2237743 () Bool)

(declare-fun b_free!64939 () Bool)

(declare-fun b_next!65643 () Bool)

(assert (=> b!2237743 (= b_free!64939 (not b_next!65643))))

(declare-fun tp!704123 () Bool)

(declare-fun b_and!174935 () Bool)

(assert (=> b!2237743 (= tp!704123 b_and!174935)))

(declare-fun mapIsEmpty!14639 () Bool)

(declare-fun mapRes!14639 () Bool)

(assert (=> mapIsEmpty!14639 mapRes!14639))

(declare-fun b!2237735 () Bool)

(declare-fun e!1430431 () Bool)

(declare-fun tp!704122 () Bool)

(assert (=> b!2237735 (= e!1430431 tp!704122)))

(declare-fun mapNonEmpty!14639 () Bool)

(declare-fun tp!704118 () Bool)

(declare-fun tp!704121 () Bool)

(assert (=> mapNonEmpty!14639 (= mapRes!14639 (and tp!704118 tp!704121))))

(declare-datatypes ((C!13108 0))(
  ( (C!13109 (val!7602 Int)) )
))
(declare-datatypes ((Regex!6481 0))(
  ( (ElementMatch!6481 (c!356494 C!13108)) (Concat!10819 (regOne!13474 Regex!6481) (regTwo!13474 Regex!6481)) (EmptyExpr!6481) (Star!6481 (reg!6810 Regex!6481)) (EmptyLang!6481) (Union!6481 (regOne!13475 Regex!6481) (regTwo!13475 Regex!6481)) )
))
(declare-datatypes ((List!26445 0))(
  ( (Nil!26351) (Cons!26351 (h!31752 Regex!6481) (t!199869 List!26445)) )
))
(declare-datatypes ((Context!4058 0))(
  ( (Context!4059 (exprs!2529 List!26445)) )
))
(declare-datatypes ((tuple3!4034 0))(
  ( (tuple3!4035 (_1!15362 Regex!6481) (_2!15362 Context!4058) (_3!2487 C!13108)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25750 0))(
  ( (tuple2!25751 (_1!15363 tuple3!4034) (_2!15363 (InoxSet Context!4058))) )
))
(declare-datatypes ((List!26446 0))(
  ( (Nil!26352) (Cons!26352 (h!31753 tuple2!25750) (t!199870 List!26446)) )
))
(declare-fun mapValue!14639 () List!26446)

(declare-fun mapRest!14639 () (Array (_ BitVec 32) List!26446))

(declare-fun mapKey!14639 () (_ BitVec 32))

(declare-datatypes ((Hashable!3029 0))(
  ( (HashableExt!3028 (__x!17583 Int)) )
))
(declare-datatypes ((array!10864 0))(
  ( (array!10865 (arr!4825 (Array (_ BitVec 32) List!26446)) (size!20606 (_ BitVec 32))) )
))
(declare-datatypes ((array!10866 0))(
  ( (array!10867 (arr!4826 (Array (_ BitVec 32) (_ BitVec 64))) (size!20607 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6238 0))(
  ( (LongMapFixedSize!6239 (defaultEntry!3484 Int) (mask!7713 (_ BitVec 32)) (extraKeys!3367 (_ BitVec 32)) (zeroValue!3377 List!26446) (minValue!3377 List!26446) (_size!6285 (_ BitVec 32)) (_keys!3416 array!10866) (_values!3399 array!10864) (_vacant!3180 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12293 0))(
  ( (Cell!12294 (v!29963 LongMapFixedSize!6238)) )
))
(declare-datatypes ((MutLongMap!3119 0))(
  ( (LongMap!3119 (underlying!6439 Cell!12293)) (MutLongMapExt!3118 (__x!17584 Int)) )
))
(declare-datatypes ((Cell!12295 0))(
  ( (Cell!12296 (v!29964 MutLongMap!3119)) )
))
(declare-datatypes ((MutableMap!3029 0))(
  ( (MutableMapExt!3028 (__x!17585 Int)) (HashMap!3029 (underlying!6440 Cell!12295) (hashF!4952 Hashable!3029) (_size!6286 (_ BitVec 32)) (defaultValue!3191 Int)) )
))
(declare-datatypes ((CacheDown!2104 0))(
  ( (CacheDown!2105 (cache!3410 MutableMap!3029)) )
))
(declare-fun thiss!28743 () CacheDown!2104)

(assert (=> mapNonEmpty!14639 (= (arr!4825 (_values!3399 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))) (store mapRest!14639 mapKey!14639 mapValue!14639))))

(declare-fun e!1430430 () Bool)

(declare-fun e!1430426 () Bool)

(assert (=> b!2237736 (= e!1430430 (and e!1430426 tp!704114))))

(declare-fun res!957121 () Bool)

(declare-fun e!1430424 () Bool)

(assert (=> start!218050 (=> (not res!957121) (not e!1430424))))

(declare-fun validCacheMapDown!327 (MutableMap!3029) Bool)

(assert (=> start!218050 (= res!957121 (validCacheMapDown!327 (cache!3410 thiss!28743)))))

(assert (=> start!218050 e!1430424))

(declare-fun e!1430419 () Bool)

(declare-fun inv!35795 (CacheDown!2104) Bool)

(assert (=> start!218050 (and (inv!35795 thiss!28743) e!1430419)))

(declare-fun ctx!48 () Context!4058)

(declare-fun inv!35796 (Context!4058) Bool)

(assert (=> start!218050 (and (inv!35796 ctx!48) e!1430431)))

(declare-fun e!1430423 () Bool)

(assert (=> start!218050 e!1430423))

(declare-fun tp_is_empty!10183 () Bool)

(assert (=> start!218050 tp_is_empty!10183))

(declare-fun b!2237737 () Bool)

(declare-fun e!1430422 () Bool)

(declare-fun lt!832331 () MutLongMap!3119)

(get-info :version)

(assert (=> b!2237737 (= e!1430426 (and e!1430422 ((_ is LongMap!3119) lt!832331)))))

(assert (=> b!2237737 (= lt!832331 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))

(declare-fun b!2237738 () Bool)

(assert (=> b!2237738 (= e!1430419 e!1430430)))

(declare-fun b!2237739 () Bool)

(declare-fun e!1430421 () Bool)

(declare-fun tp!704124 () Bool)

(assert (=> b!2237739 (= e!1430421 (and tp!704124 mapRes!14639))))

(declare-fun condMapEmpty!14639 () Bool)

(declare-fun mapDefault!14639 () List!26446)

(assert (=> b!2237739 (= condMapEmpty!14639 (= (arr!4825 (_values!3399 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26446)) mapDefault!14639)))))

(declare-fun b!2237740 () Bool)

(declare-fun e!1430420 () Bool)

(assert (=> b!2237740 (= e!1430424 e!1430420)))

(declare-fun res!957122 () Bool)

(assert (=> b!2237740 (=> (not res!957122) (not e!1430420))))

(declare-fun lt!832326 () tuple3!4034)

(declare-fun contains!4413 (MutableMap!3029 tuple3!4034) Bool)

(assert (=> b!2237740 (= res!957122 (contains!4413 (cache!3410 thiss!28743) lt!832326))))

(declare-fun r!4750 () Regex!6481)

(declare-fun a!970 () C!13108)

(assert (=> b!2237740 (= lt!832326 (tuple3!4035 r!4750 ctx!48 a!970))))

(declare-fun b!2237741 () Bool)

(declare-fun e!1430429 () Bool)

(assert (=> b!2237741 (= e!1430422 e!1430429)))

(declare-fun b!2237742 () Bool)

(declare-fun e!1430425 () Bool)

(assert (=> b!2237742 (= e!1430429 e!1430425)))

(declare-fun tp!704113 () Bool)

(declare-fun tp!704112 () Bool)

(declare-fun array_inv!3465 (array!10866) Bool)

(declare-fun array_inv!3466 (array!10864) Bool)

(assert (=> b!2237743 (= e!1430425 (and tp!704123 tp!704113 tp!704112 (array_inv!3465 (_keys!3416 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))) (array_inv!3466 (_values!3399 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))) e!1430421))))

(declare-fun b!2237744 () Bool)

(declare-fun tp!704116 () Bool)

(assert (=> b!2237744 (= e!1430423 tp!704116)))

(declare-fun b!2237745 () Bool)

(assert (=> b!2237745 (= e!1430423 tp_is_empty!10183)))

(declare-fun b!2237746 () Bool)

(declare-fun e!1430428 () Bool)

(declare-fun apply!6484 (MutableMap!3029 tuple3!4034) (InoxSet Context!4058))

(declare-fun derivationStepZipperDown!74 (Regex!6481 Context!4058 C!13108) (InoxSet Context!4058))

(assert (=> b!2237746 (= e!1430428 (= (apply!6484 (cache!3410 thiss!28743) lt!832326) (derivationStepZipperDown!74 (_1!15362 lt!832326) (_2!15362 lt!832326) (_3!2487 lt!832326))))))

(declare-fun lt!832332 () (InoxSet Context!4058))

(assert (=> b!2237746 (= lt!832332 (apply!6484 (cache!3410 thiss!28743) lt!832326))))

(declare-fun lt!832329 () (InoxSet Context!4058))

(assert (=> b!2237746 (= lt!832329 (apply!6484 (cache!3410 thiss!28743) lt!832326))))

(declare-fun lt!832325 () (InoxSet Context!4058))

(assert (=> b!2237746 (= lt!832325 (apply!6484 (cache!3410 thiss!28743) lt!832326))))

(declare-fun lt!832327 () tuple3!4034)

(assert (=> b!2237746 (= lt!832327 lt!832326)))

(declare-fun b!2237747 () Bool)

(assert (=> b!2237747 (= e!1430420 (not ((_ is HashMap!3029) (cache!3410 thiss!28743))))))

(assert (=> b!2237747 e!1430428))

(declare-fun res!957120 () Bool)

(assert (=> b!2237747 (=> (not res!957120) (not e!1430428))))

(declare-fun validRegex!2435 (Regex!6481) Bool)

(assert (=> b!2237747 (= res!957120 (validRegex!2435 (_1!15362 lt!832326)))))

(declare-fun lt!832324 () (InoxSet Context!4058))

(assert (=> b!2237747 (= lt!832324 (apply!6484 (cache!3410 thiss!28743) lt!832326))))

(declare-fun lt!832328 () tuple2!25750)

(assert (=> b!2237747 (= lt!832328 (tuple2!25751 lt!832326 (apply!6484 (cache!3410 thiss!28743) lt!832326)))))

(declare-datatypes ((Unit!39298 0))(
  ( (Unit!39299) )
))
(declare-fun lt!832330 () Unit!39298)

(declare-fun lambda!84565 () Int)

(declare-fun lemmaForallPairsThenForLookup!24 (MutableMap!3029 tuple3!4034 Int) Unit!39298)

(assert (=> b!2237747 (= lt!832330 (lemmaForallPairsThenForLookup!24 (cache!3410 thiss!28743) lt!832326 lambda!84565))))

(declare-fun b!2237748 () Bool)

(declare-fun tp!704115 () Bool)

(declare-fun tp!704117 () Bool)

(assert (=> b!2237748 (= e!1430423 (and tp!704115 tp!704117))))

(declare-fun b!2237749 () Bool)

(declare-fun tp!704119 () Bool)

(declare-fun tp!704120 () Bool)

(assert (=> b!2237749 (= e!1430423 (and tp!704119 tp!704120))))

(assert (= (and start!218050 res!957121) b!2237740))

(assert (= (and b!2237740 res!957122) b!2237747))

(assert (= (and b!2237747 res!957120) b!2237746))

(assert (= (and b!2237739 condMapEmpty!14639) mapIsEmpty!14639))

(assert (= (and b!2237739 (not condMapEmpty!14639)) mapNonEmpty!14639))

(assert (= b!2237743 b!2237739))

(assert (= b!2237742 b!2237743))

(assert (= b!2237741 b!2237742))

(assert (= (and b!2237737 ((_ is LongMap!3119) (v!29964 (underlying!6440 (cache!3410 thiss!28743))))) b!2237741))

(assert (= b!2237736 b!2237737))

(assert (= (and b!2237738 ((_ is HashMap!3029) (cache!3410 thiss!28743))) b!2237736))

(assert (= start!218050 b!2237738))

(assert (= start!218050 b!2237735))

(assert (= (and start!218050 ((_ is ElementMatch!6481) r!4750)) b!2237745))

(assert (= (and start!218050 ((_ is Concat!10819) r!4750)) b!2237748))

(assert (= (and start!218050 ((_ is Star!6481) r!4750)) b!2237744))

(assert (= (and start!218050 ((_ is Union!6481) r!4750)) b!2237749))

(declare-fun m!2671027 () Bool)

(assert (=> b!2237747 m!2671027))

(declare-fun m!2671029 () Bool)

(assert (=> b!2237747 m!2671029))

(declare-fun m!2671031 () Bool)

(assert (=> b!2237747 m!2671031))

(declare-fun m!2671033 () Bool)

(assert (=> start!218050 m!2671033))

(declare-fun m!2671035 () Bool)

(assert (=> start!218050 m!2671035))

(declare-fun m!2671037 () Bool)

(assert (=> start!218050 m!2671037))

(declare-fun m!2671039 () Bool)

(assert (=> b!2237740 m!2671039))

(assert (=> b!2237746 m!2671029))

(declare-fun m!2671041 () Bool)

(assert (=> b!2237746 m!2671041))

(declare-fun m!2671043 () Bool)

(assert (=> b!2237743 m!2671043))

(declare-fun m!2671045 () Bool)

(assert (=> b!2237743 m!2671045))

(declare-fun m!2671047 () Bool)

(assert (=> mapNonEmpty!14639 m!2671047))

(check-sat (not b!2237747) b_and!174933 (not b!2237739) (not b_next!65643) (not b!2237749) b_and!174935 (not b_next!65641) (not start!218050) tp_is_empty!10183 (not mapNonEmpty!14639) (not b!2237735) (not b!2237746) (not b!2237748) (not b!2237743) (not b!2237740) (not b!2237744))
(check-sat b_and!174935 b_and!174933 (not b_next!65641) (not b_next!65643))
(get-model)

(declare-fun b!2237772 () Bool)

(declare-fun e!1430449 () Bool)

(declare-fun call!134914 () Bool)

(assert (=> b!2237772 (= e!1430449 call!134914)))

(declare-fun b!2237773 () Bool)

(assert (=> b!2237773 false))

(declare-fun lt!832379 () Unit!39298)

(declare-fun lt!832388 () Unit!39298)

(assert (=> b!2237773 (= lt!832379 lt!832388)))

(declare-datatypes ((tuple2!25752 0))(
  ( (tuple2!25753 (_1!15364 (_ BitVec 64)) (_2!15364 List!26446)) )
))
(declare-datatypes ((List!26447 0))(
  ( (Nil!26353) (Cons!26353 (h!31754 tuple2!25752) (t!199873 List!26447)) )
))
(declare-datatypes ((ListLongMap!333 0))(
  ( (ListLongMap!334 (toList!1364 List!26447)) )
))
(declare-fun lt!832377 () ListLongMap!333)

(declare-datatypes ((ListMap!849 0))(
  ( (ListMap!850 (toList!1365 List!26446)) )
))
(declare-fun contains!4414 (ListMap!849 tuple3!4034) Bool)

(declare-fun extractMap!111 (List!26447) ListMap!849)

(assert (=> b!2237773 (contains!4414 (extractMap!111 (toList!1364 lt!832377)) lt!832326)))

(declare-fun lemmaInLongMapThenInGenericMap!31 (ListLongMap!333 tuple3!4034 Hashable!3029) Unit!39298)

(assert (=> b!2237773 (= lt!832388 (lemmaInLongMapThenInGenericMap!31 lt!832377 lt!832326 (hashF!4952 (cache!3410 thiss!28743))))))

(declare-fun call!134916 () ListLongMap!333)

(assert (=> b!2237773 (= lt!832377 call!134916)))

(declare-fun e!1430452 () Unit!39298)

(declare-fun Unit!39300 () Unit!39298)

(assert (=> b!2237773 (= e!1430452 Unit!39300)))

(declare-fun bm!134909 () Bool)

(declare-fun call!134919 () (_ BitVec 64))

(declare-fun hash!578 (Hashable!3029 tuple3!4034) (_ BitVec 64))

(assert (=> bm!134909 (= call!134919 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326))))

(declare-fun b!2237774 () Bool)

(declare-fun e!1430448 () Unit!39298)

(assert (=> b!2237774 (= e!1430448 e!1430452)))

(declare-fun res!957129 () Bool)

(declare-fun call!134915 () Bool)

(assert (=> b!2237774 (= res!957129 call!134915)))

(declare-fun e!1430446 () Bool)

(assert (=> b!2237774 (=> (not res!957129) (not e!1430446))))

(declare-fun c!356503 () Bool)

(assert (=> b!2237774 (= c!356503 e!1430446)))

(declare-fun c!356505 () Bool)

(declare-fun call!134918 () List!26446)

(declare-fun bm!134910 () Bool)

(declare-fun lt!832382 () ListLongMap!333)

(declare-fun apply!6485 (ListLongMap!333 (_ BitVec 64)) List!26446)

(assert (=> bm!134910 (= call!134918 (apply!6485 (ite c!356505 lt!832382 call!134916) call!134919))))

(declare-fun bm!134911 () Bool)

(declare-fun map!5426 (MutLongMap!3119) ListLongMap!333)

(assert (=> bm!134911 (= call!134916 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))

(declare-fun b!2237775 () Bool)

(declare-fun e!1430447 () Unit!39298)

(declare-fun Unit!39301 () Unit!39298)

(assert (=> b!2237775 (= e!1430447 Unit!39301)))

(declare-fun bm!134912 () Bool)

(declare-datatypes ((Option!5128 0))(
  ( (None!5127) (Some!5127 (v!29965 tuple2!25750)) )
))
(declare-fun call!134917 () Option!5128)

(declare-fun isDefined!4140 (Option!5128) Bool)

(assert (=> bm!134912 (= call!134914 (isDefined!4140 call!134917))))

(declare-fun lt!832373 () (_ BitVec 64))

(declare-fun e!1430451 () Bool)

(declare-fun b!2237776 () Bool)

(declare-fun getPair!31 (List!26446 tuple3!4034) Option!5128)

(declare-fun apply!6486 (MutLongMap!3119 (_ BitVec 64)) List!26446)

(assert (=> b!2237776 (= e!1430451 (isDefined!4140 (getPair!31 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832373) lt!832326)))))

(declare-fun b!2237777 () Bool)

(declare-fun Unit!39302 () Unit!39298)

(assert (=> b!2237777 (= e!1430452 Unit!39302)))

(declare-fun b!2237778 () Bool)

(assert (=> b!2237778 false))

(declare-fun lt!832386 () Unit!39298)

(declare-fun lt!832387 () Unit!39298)

(assert (=> b!2237778 (= lt!832386 lt!832387)))

(declare-fun lt!832390 () List!26447)

(declare-fun lt!832383 () List!26446)

(declare-fun contains!4415 (List!26447 tuple2!25752) Bool)

(assert (=> b!2237778 (contains!4415 lt!832390 (tuple2!25753 lt!832373 lt!832383))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!32 (List!26447 (_ BitVec 64) List!26446) Unit!39298)

(assert (=> b!2237778 (= lt!832387 (lemmaGetValueByKeyImpliesContainsTuple!32 lt!832390 lt!832373 lt!832383))))

(assert (=> b!2237778 (= lt!832383 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832373))))

(assert (=> b!2237778 (= lt!832390 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))))

(declare-fun lt!832381 () Unit!39298)

(declare-fun lt!832385 () Unit!39298)

(assert (=> b!2237778 (= lt!832381 lt!832385)))

(declare-fun lt!832375 () List!26447)

(declare-datatypes ((Option!5129 0))(
  ( (None!5128) (Some!5128 (v!29966 List!26446)) )
))
(declare-fun isDefined!4141 (Option!5129) Bool)

(declare-fun getValueByKey!77 (List!26447 (_ BitVec 64)) Option!5129)

(assert (=> b!2237778 (isDefined!4141 (getValueByKey!77 lt!832375 lt!832373))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!49 (List!26447 (_ BitVec 64)) Unit!39298)

(assert (=> b!2237778 (= lt!832385 (lemmaContainsKeyImpliesGetValueByKeyDefined!49 lt!832375 lt!832373))))

(assert (=> b!2237778 (= lt!832375 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))))

(declare-fun lt!832378 () Unit!39298)

(declare-fun lt!832389 () Unit!39298)

(assert (=> b!2237778 (= lt!832378 lt!832389)))

(declare-fun lt!832384 () List!26447)

(declare-fun containsKey!80 (List!26447 (_ BitVec 64)) Bool)

(assert (=> b!2237778 (containsKey!80 lt!832384 lt!832373)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!32 (List!26447 (_ BitVec 64)) Unit!39298)

(assert (=> b!2237778 (= lt!832389 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!32 lt!832384 lt!832373))))

(assert (=> b!2237778 (= lt!832384 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))))

(declare-fun Unit!39303 () Unit!39298)

(assert (=> b!2237778 (= e!1430447 Unit!39303)))

(declare-fun bm!134913 () Bool)

(declare-fun contains!4416 (ListLongMap!333 (_ BitVec 64)) Bool)

(assert (=> bm!134913 (= call!134915 (contains!4416 (ite c!356505 lt!832382 call!134916) call!134919))))

(declare-fun e!1430450 () Unit!39298)

(declare-fun lambda!84568 () Int)

(declare-fun b!2237779 () Bool)

(declare-fun forallContained!778 (List!26447 Int tuple2!25752) Unit!39298)

(assert (=> b!2237779 (= e!1430450 (forallContained!778 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))) lambda!84568 (tuple2!25753 lt!832373 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832373))))))

(declare-fun c!356504 () Bool)

(assert (=> b!2237779 (= c!356504 (not (contains!4415 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))) (tuple2!25753 lt!832373 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832373)))))))

(declare-fun lt!832391 () Unit!39298)

(assert (=> b!2237779 (= lt!832391 e!1430447)))

(declare-fun bm!134914 () Bool)

(assert (=> bm!134914 (= call!134917 (getPair!31 call!134918 lt!832326))))

(declare-fun b!2237780 () Bool)

(assert (=> b!2237780 (= e!1430446 call!134914)))

(declare-fun b!2237781 () Bool)

(declare-fun lt!832380 () Unit!39298)

(assert (=> b!2237781 (= e!1430448 lt!832380)))

(assert (=> b!2237781 (= lt!832382 call!134916)))

(declare-fun lemmaInGenericMapThenInLongMap!31 (ListLongMap!333 tuple3!4034 Hashable!3029) Unit!39298)

(assert (=> b!2237781 (= lt!832380 (lemmaInGenericMapThenInLongMap!31 lt!832382 lt!832326 (hashF!4952 (cache!3410 thiss!28743))))))

(declare-fun res!957131 () Bool)

(assert (=> b!2237781 (= res!957131 call!134915)))

(assert (=> b!2237781 (=> (not res!957131) (not e!1430449))))

(assert (=> b!2237781 e!1430449))

(declare-fun b!2237782 () Bool)

(declare-fun Unit!39304 () Unit!39298)

(assert (=> b!2237782 (= e!1430450 Unit!39304)))

(declare-fun d!665540 () Bool)

(declare-fun lt!832376 () Bool)

(declare-fun map!5427 (MutableMap!3029) ListMap!849)

(assert (=> d!665540 (= lt!832376 (contains!4414 (map!5427 (cache!3410 thiss!28743)) lt!832326))))

(assert (=> d!665540 (= lt!832376 e!1430451)))

(declare-fun res!957130 () Bool)

(assert (=> d!665540 (=> (not res!957130) (not e!1430451))))

(declare-fun contains!4417 (MutLongMap!3119 (_ BitVec 64)) Bool)

(assert (=> d!665540 (= res!957130 (contains!4417 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832373))))

(declare-fun lt!832374 () Unit!39298)

(assert (=> d!665540 (= lt!832374 e!1430448)))

(assert (=> d!665540 (= c!356505 (contains!4414 (extractMap!111 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))) lt!832326))))

(declare-fun lt!832392 () Unit!39298)

(assert (=> d!665540 (= lt!832392 e!1430450)))

(declare-fun c!356506 () Bool)

(assert (=> d!665540 (= c!356506 (contains!4417 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832373))))

(assert (=> d!665540 (= lt!832373 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326))))

(declare-fun valid!2352 (MutableMap!3029) Bool)

(assert (=> d!665540 (valid!2352 (cache!3410 thiss!28743))))

(assert (=> d!665540 (= (contains!4413 (cache!3410 thiss!28743) lt!832326) lt!832376)))

(assert (= (and d!665540 c!356506) b!2237779))

(assert (= (and d!665540 (not c!356506)) b!2237782))

(assert (= (and b!2237779 c!356504) b!2237778))

(assert (= (and b!2237779 (not c!356504)) b!2237775))

(assert (= (and d!665540 c!356505) b!2237781))

(assert (= (and d!665540 (not c!356505)) b!2237774))

(assert (= (and b!2237781 res!957131) b!2237772))

(assert (= (and b!2237774 res!957129) b!2237780))

(assert (= (and b!2237774 c!356503) b!2237773))

(assert (= (and b!2237774 (not c!356503)) b!2237777))

(assert (= (or b!2237781 b!2237772 b!2237774 b!2237780) bm!134909))

(assert (= (or b!2237781 b!2237774 b!2237780 b!2237773) bm!134911))

(assert (= (or b!2237781 b!2237774) bm!134913))

(assert (= (or b!2237772 b!2237780) bm!134910))

(assert (= (or b!2237772 b!2237780) bm!134914))

(assert (= (or b!2237772 b!2237780) bm!134912))

(assert (= (and d!665540 res!957130) b!2237776))

(declare-fun m!2671049 () Bool)

(assert (=> b!2237781 m!2671049))

(declare-fun m!2671051 () Bool)

(assert (=> d!665540 m!2671051))

(declare-fun m!2671053 () Bool)

(assert (=> d!665540 m!2671053))

(assert (=> d!665540 m!2671051))

(declare-fun m!2671055 () Bool)

(assert (=> d!665540 m!2671055))

(declare-fun m!2671057 () Bool)

(assert (=> d!665540 m!2671057))

(declare-fun m!2671059 () Bool)

(assert (=> d!665540 m!2671059))

(declare-fun m!2671061 () Bool)

(assert (=> d!665540 m!2671061))

(assert (=> d!665540 m!2671057))

(declare-fun m!2671063 () Bool)

(assert (=> d!665540 m!2671063))

(declare-fun m!2671065 () Bool)

(assert (=> d!665540 m!2671065))

(assert (=> b!2237779 m!2671065))

(declare-fun m!2671067 () Bool)

(assert (=> b!2237779 m!2671067))

(declare-fun m!2671069 () Bool)

(assert (=> b!2237779 m!2671069))

(declare-fun m!2671071 () Bool)

(assert (=> b!2237779 m!2671071))

(declare-fun m!2671073 () Bool)

(assert (=> bm!134910 m!2671073))

(assert (=> bm!134909 m!2671063))

(declare-fun m!2671075 () Bool)

(assert (=> bm!134913 m!2671075))

(declare-fun m!2671077 () Bool)

(assert (=> b!2237773 m!2671077))

(assert (=> b!2237773 m!2671077))

(declare-fun m!2671079 () Bool)

(assert (=> b!2237773 m!2671079))

(declare-fun m!2671081 () Bool)

(assert (=> b!2237773 m!2671081))

(declare-fun m!2671083 () Bool)

(assert (=> bm!134912 m!2671083))

(declare-fun m!2671085 () Bool)

(assert (=> bm!134914 m!2671085))

(assert (=> bm!134911 m!2671065))

(assert (=> b!2237778 m!2671065))

(declare-fun m!2671087 () Bool)

(assert (=> b!2237778 m!2671087))

(declare-fun m!2671089 () Bool)

(assert (=> b!2237778 m!2671089))

(declare-fun m!2671091 () Bool)

(assert (=> b!2237778 m!2671091))

(assert (=> b!2237778 m!2671067))

(assert (=> b!2237778 m!2671087))

(declare-fun m!2671093 () Bool)

(assert (=> b!2237778 m!2671093))

(declare-fun m!2671095 () Bool)

(assert (=> b!2237778 m!2671095))

(declare-fun m!2671097 () Bool)

(assert (=> b!2237778 m!2671097))

(declare-fun m!2671099 () Bool)

(assert (=> b!2237778 m!2671099))

(assert (=> b!2237776 m!2671067))

(assert (=> b!2237776 m!2671067))

(declare-fun m!2671101 () Bool)

(assert (=> b!2237776 m!2671101))

(assert (=> b!2237776 m!2671101))

(declare-fun m!2671103 () Bool)

(assert (=> b!2237776 m!2671103))

(assert (=> b!2237740 d!665540))

(declare-fun bs!454238 () Bool)

(declare-fun b!2237790 () Bool)

(assert (= bs!454238 (and b!2237790 b!2237747)))

(declare-fun lambda!84571 () Int)

(assert (=> bs!454238 (= lambda!84571 lambda!84565)))

(declare-fun d!665542 () Bool)

(declare-fun res!957138 () Bool)

(declare-fun e!1430457 () Bool)

(assert (=> d!665542 (=> (not res!957138) (not e!1430457))))

(assert (=> d!665542 (= res!957138 (valid!2352 (cache!3410 thiss!28743)))))

(assert (=> d!665542 (= (validCacheMapDown!327 (cache!3410 thiss!28743)) e!1430457)))

(declare-fun b!2237789 () Bool)

(declare-fun res!957139 () Bool)

(assert (=> b!2237789 (=> (not res!957139) (not e!1430457))))

(declare-fun invariantList!377 (List!26446) Bool)

(assert (=> b!2237789 (= res!957139 (invariantList!377 (toList!1365 (map!5427 (cache!3410 thiss!28743)))))))

(declare-fun forall!5412 (List!26446 Int) Bool)

(assert (=> b!2237790 (= e!1430457 (forall!5412 (toList!1365 (map!5427 (cache!3410 thiss!28743))) lambda!84571))))

(assert (= (and d!665542 res!957138) b!2237789))

(assert (= (and b!2237789 res!957139) b!2237790))

(assert (=> d!665542 m!2671061))

(assert (=> b!2237789 m!2671057))

(declare-fun m!2671106 () Bool)

(assert (=> b!2237789 m!2671106))

(assert (=> b!2237790 m!2671057))

(declare-fun m!2671108 () Bool)

(assert (=> b!2237790 m!2671108))

(assert (=> start!218050 d!665542))

(declare-fun d!665544 () Bool)

(declare-fun res!957142 () Bool)

(declare-fun e!1430460 () Bool)

(assert (=> d!665544 (=> (not res!957142) (not e!1430460))))

(assert (=> d!665544 (= res!957142 ((_ is HashMap!3029) (cache!3410 thiss!28743)))))

(assert (=> d!665544 (= (inv!35795 thiss!28743) e!1430460)))

(declare-fun b!2237793 () Bool)

(assert (=> b!2237793 (= e!1430460 (validCacheMapDown!327 (cache!3410 thiss!28743)))))

(assert (= (and d!665544 res!957142) b!2237793))

(assert (=> b!2237793 m!2671033))

(assert (=> start!218050 d!665544))

(declare-fun d!665546 () Bool)

(declare-fun lambda!84574 () Int)

(declare-fun forall!5413 (List!26445 Int) Bool)

(assert (=> d!665546 (= (inv!35796 ctx!48) (forall!5413 (exprs!2529 ctx!48) lambda!84574))))

(declare-fun bs!454239 () Bool)

(assert (= bs!454239 d!665546))

(declare-fun m!2671110 () Bool)

(assert (=> bs!454239 m!2671110))

(assert (=> start!218050 d!665546))

(declare-fun bs!454240 () Bool)

(declare-fun b!2237811 () Bool)

(assert (= bs!454240 (and b!2237811 b!2237779)))

(declare-fun lambda!84581 () Int)

(assert (=> bs!454240 (= lambda!84581 lambda!84568)))

(declare-fun b!2237806 () Bool)

(declare-fun e!1430469 () (InoxSet Context!4058))

(declare-fun dynLambda!11532 (Int tuple3!4034) (InoxSet Context!4058))

(assert (=> b!2237806 (= e!1430469 (dynLambda!11532 (defaultValue!3191 (cache!3410 thiss!28743)) lt!832326))))

(declare-fun lt!832476 () (InoxSet Context!4058))

(declare-fun b!2237807 () Bool)

(declare-fun e!1430468 () Bool)

(assert (=> b!2237807 (= e!1430468 (= lt!832476 (dynLambda!11532 (defaultValue!3191 (cache!3410 thiss!28743)) lt!832326)))))

(declare-fun d!665548 () Bool)

(assert (=> d!665548 e!1430468))

(declare-fun c!356513 () Bool)

(assert (=> d!665548 (= c!356513 (contains!4413 (cache!3410 thiss!28743) lt!832326))))

(assert (=> d!665548 (= lt!832476 e!1430469)))

(declare-fun c!356514 () Bool)

(assert (=> d!665548 (= c!356514 (not (contains!4413 (cache!3410 thiss!28743) lt!832326)))))

(assert (=> d!665548 (valid!2352 (cache!3410 thiss!28743))))

(assert (=> d!665548 (= (apply!6484 (cache!3410 thiss!28743) lt!832326) lt!832476)))

(declare-fun b!2237808 () Bool)

(declare-datatypes ((Option!5130 0))(
  ( (None!5129) (Some!5129 (v!29967 (InoxSet Context!4058))) )
))
(declare-fun get!7969 (Option!5130) (InoxSet Context!4058))

(declare-fun getValueByKey!78 (List!26446 tuple3!4034) Option!5130)

(assert (=> b!2237808 (= e!1430468 (= lt!832476 (get!7969 (getValueByKey!78 (toList!1365 (map!5427 (cache!3410 thiss!28743))) lt!832326))))))

(declare-fun b!2237809 () Bool)

(declare-fun e!1430467 () Unit!39298)

(declare-fun Unit!39305 () Unit!39298)

(assert (=> b!2237809 (= e!1430467 Unit!39305)))

(declare-fun b!2237810 () Bool)

(assert (=> b!2237810 false))

(declare-fun lt!832470 () Unit!39298)

(declare-fun lt!832466 () Unit!39298)

(assert (=> b!2237810 (= lt!832470 lt!832466)))

(declare-fun lt!832458 () List!26447)

(declare-fun lt!832480 () (_ BitVec 64))

(declare-fun lt!832457 () List!26446)

(assert (=> b!2237810 (contains!4415 lt!832458 (tuple2!25753 lt!832480 lt!832457))))

(assert (=> b!2237810 (= lt!832466 (lemmaGetValueByKeyImpliesContainsTuple!32 lt!832458 lt!832480 lt!832457))))

(assert (=> b!2237810 (= lt!832457 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832480))))

(assert (=> b!2237810 (= lt!832458 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))))

(declare-fun lt!832473 () Unit!39298)

(declare-fun lt!832463 () Unit!39298)

(assert (=> b!2237810 (= lt!832473 lt!832463)))

(declare-fun lt!832464 () List!26447)

(assert (=> b!2237810 (isDefined!4141 (getValueByKey!77 lt!832464 lt!832480))))

(assert (=> b!2237810 (= lt!832463 (lemmaContainsKeyImpliesGetValueByKeyDefined!49 lt!832464 lt!832480))))

(assert (=> b!2237810 (= lt!832464 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))))

(declare-fun Unit!39306 () Unit!39298)

(assert (=> b!2237810 (= e!1430467 Unit!39306)))

(declare-fun get!7970 (Option!5128) tuple2!25750)

(assert (=> b!2237811 (= e!1430469 (_2!15363 (get!7970 (getPair!31 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832480) lt!832326))))))

(assert (=> b!2237811 (= lt!832480 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326))))

(declare-fun c!356515 () Bool)

(assert (=> b!2237811 (= c!356515 (not (contains!4415 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))) (tuple2!25753 lt!832480 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832480)))))))

(declare-fun lt!832462 () Unit!39298)

(assert (=> b!2237811 (= lt!832462 e!1430467)))

(declare-fun lt!832477 () Unit!39298)

(assert (=> b!2237811 (= lt!832477 (forallContained!778 (toList!1364 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))) lambda!84581 (tuple2!25753 lt!832480 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832480))))))

(declare-fun lt!832479 () ListLongMap!333)

(assert (=> b!2237811 (= lt!832479 (map!5426 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))

(declare-fun lt!832461 () Unit!39298)

(declare-fun lemmaGetPairGetSameValueAsMap!19 (ListLongMap!333 tuple3!4034 (InoxSet Context!4058) Hashable!3029) Unit!39298)

(assert (=> b!2237811 (= lt!832461 (lemmaGetPairGetSameValueAsMap!19 lt!832479 lt!832326 (_2!15363 (get!7970 (getPair!31 (apply!6486 (v!29964 (underlying!6440 (cache!3410 thiss!28743))) lt!832480) lt!832326))) (hashF!4952 (cache!3410 thiss!28743))))))

(declare-fun lt!832465 () Unit!39298)

(declare-fun lemmaInGenMapThenLongMapContainsHash!19 (ListLongMap!333 tuple3!4034 Hashable!3029) Unit!39298)

(assert (=> b!2237811 (= lt!832465 (lemmaInGenMapThenLongMapContainsHash!19 lt!832479 lt!832326 (hashF!4952 (cache!3410 thiss!28743))))))

(assert (=> b!2237811 (contains!4416 lt!832479 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326))))

(declare-fun lt!832460 () Unit!39298)

(assert (=> b!2237811 (= lt!832460 lt!832465)))

(declare-fun lt!832454 () (_ BitVec 64))

(assert (=> b!2237811 (= lt!832454 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326))))

(declare-fun lt!832472 () List!26446)

(assert (=> b!2237811 (= lt!832472 (apply!6485 lt!832479 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326)))))

(declare-fun lt!832453 () Unit!39298)

(declare-fun lemmaGetValueImpliesTupleContained!20 (ListLongMap!333 (_ BitVec 64) List!26446) Unit!39298)

(assert (=> b!2237811 (= lt!832453 (lemmaGetValueImpliesTupleContained!20 lt!832479 lt!832454 lt!832472))))

(assert (=> b!2237811 (contains!4415 (toList!1364 lt!832479) (tuple2!25753 lt!832454 lt!832472))))

(declare-fun lt!832471 () Unit!39298)

(assert (=> b!2237811 (= lt!832471 lt!832453)))

(declare-fun lt!832475 () Unit!39298)

(assert (=> b!2237811 (= lt!832475 (forallContained!778 (toList!1364 lt!832479) lambda!84581 (tuple2!25753 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326) (apply!6485 lt!832479 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326)))))))

(declare-fun lt!832482 () Unit!39298)

(declare-fun lemmaInGenMapThenGetPairDefined!19 (ListLongMap!333 tuple3!4034 Hashable!3029) Unit!39298)

(assert (=> b!2237811 (= lt!832482 (lemmaInGenMapThenGetPairDefined!19 lt!832479 lt!832326 (hashF!4952 (cache!3410 thiss!28743))))))

(declare-fun lt!832478 () Unit!39298)

(assert (=> b!2237811 (= lt!832478 (lemmaInGenMapThenLongMapContainsHash!19 lt!832479 lt!832326 (hashF!4952 (cache!3410 thiss!28743))))))

(declare-fun lt!832459 () Unit!39298)

(assert (=> b!2237811 (= lt!832459 lt!832478)))

(declare-fun lt!832467 () (_ BitVec 64))

(assert (=> b!2237811 (= lt!832467 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326))))

(declare-fun lt!832474 () List!26446)

(assert (=> b!2237811 (= lt!832474 (apply!6485 lt!832479 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326)))))

(declare-fun lt!832468 () Unit!39298)

(assert (=> b!2237811 (= lt!832468 (lemmaGetValueImpliesTupleContained!20 lt!832479 lt!832467 lt!832474))))

(assert (=> b!2237811 (contains!4415 (toList!1364 lt!832479) (tuple2!25753 lt!832467 lt!832474))))

(declare-fun lt!832456 () Unit!39298)

(assert (=> b!2237811 (= lt!832456 lt!832468)))

(declare-fun lt!832455 () Unit!39298)

(assert (=> b!2237811 (= lt!832455 (forallContained!778 (toList!1364 lt!832479) lambda!84581 (tuple2!25753 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326) (apply!6485 lt!832479 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326)))))))

(assert (=> b!2237811 (isDefined!4140 (getPair!31 (apply!6485 lt!832479 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326)) lt!832326))))

(declare-fun lt!832481 () Unit!39298)

(assert (=> b!2237811 (= lt!832481 lt!832482)))

(assert (=> b!2237811 (= (_2!15363 (get!7970 (getPair!31 (apply!6485 lt!832479 (hash!578 (hashF!4952 (cache!3410 thiss!28743)) lt!832326)) lt!832326))) (get!7969 (getValueByKey!78 (toList!1365 (extractMap!111 (toList!1364 lt!832479))) lt!832326)))))

(declare-fun lt!832469 () Unit!39298)

(assert (=> b!2237811 (= lt!832469 lt!832461)))

(assert (= (and d!665548 c!356514) b!2237806))

(assert (= (and d!665548 (not c!356514)) b!2237811))

(assert (= (and b!2237811 c!356515) b!2237810))

(assert (= (and b!2237811 (not c!356515)) b!2237809))

(assert (= (and d!665548 c!356513) b!2237808))

(assert (= (and d!665548 (not c!356513)) b!2237807))

(declare-fun b_lambda!71705 () Bool)

(assert (=> (not b_lambda!71705) (not b!2237806)))

(declare-fun t!199872 () Bool)

(declare-fun tb!132855 () Bool)

(assert (=> (and b!2237736 (= (defaultValue!3191 (cache!3410 thiss!28743)) (defaultValue!3191 (cache!3410 thiss!28743))) t!199872) tb!132855))

(assert (=> b!2237806 t!199872))

(declare-fun result!161748 () Bool)

(declare-fun b_and!174937 () Bool)

(assert (= b_and!174933 (and (=> t!199872 result!161748) b_and!174937)))

(declare-fun b_lambda!71707 () Bool)

(assert (=> (not b_lambda!71707) (not b!2237807)))

(assert (=> b!2237807 t!199872))

(declare-fun b_and!174939 () Bool)

(assert (= b_and!174937 (and (=> t!199872 result!161748) b_and!174939)))

(declare-fun m!2671112 () Bool)

(assert (=> b!2237810 m!2671112))

(assert (=> b!2237810 m!2671065))

(assert (=> b!2237810 m!2671112))

(declare-fun m!2671114 () Bool)

(assert (=> b!2237810 m!2671114))

(declare-fun m!2671116 () Bool)

(assert (=> b!2237810 m!2671116))

(declare-fun m!2671118 () Bool)

(assert (=> b!2237810 m!2671118))

(declare-fun m!2671120 () Bool)

(assert (=> b!2237810 m!2671120))

(declare-fun m!2671122 () Bool)

(assert (=> b!2237810 m!2671122))

(assert (=> b!2237808 m!2671057))

(declare-fun m!2671124 () Bool)

(assert (=> b!2237808 m!2671124))

(assert (=> b!2237808 m!2671124))

(declare-fun m!2671126 () Bool)

(assert (=> b!2237808 m!2671126))

(declare-fun m!2671128 () Bool)

(assert (=> b!2237806 m!2671128))

(assert (=> d!665548 m!2671039))

(assert (=> d!665548 m!2671061))

(assert (=> b!2237807 m!2671128))

(declare-fun m!2671130 () Bool)

(assert (=> b!2237811 m!2671130))

(declare-fun m!2671132 () Bool)

(assert (=> b!2237811 m!2671132))

(declare-fun m!2671134 () Bool)

(assert (=> b!2237811 m!2671134))

(declare-fun m!2671136 () Bool)

(assert (=> b!2237811 m!2671136))

(declare-fun m!2671138 () Bool)

(assert (=> b!2237811 m!2671138))

(declare-fun m!2671140 () Bool)

(assert (=> b!2237811 m!2671140))

(assert (=> b!2237811 m!2671134))

(declare-fun m!2671142 () Bool)

(assert (=> b!2237811 m!2671142))

(assert (=> b!2237811 m!2671118))

(assert (=> b!2237811 m!2671118))

(declare-fun m!2671144 () Bool)

(assert (=> b!2237811 m!2671144))

(declare-fun m!2671146 () Bool)

(assert (=> b!2237811 m!2671146))

(assert (=> b!2237811 m!2671063))

(declare-fun m!2671148 () Bool)

(assert (=> b!2237811 m!2671148))

(assert (=> b!2237811 m!2671134))

(declare-fun m!2671150 () Bool)

(assert (=> b!2237811 m!2671150))

(declare-fun m!2671152 () Bool)

(assert (=> b!2237811 m!2671152))

(assert (=> b!2237811 m!2671065))

(assert (=> b!2237811 m!2671063))

(declare-fun m!2671154 () Bool)

(assert (=> b!2237811 m!2671154))

(declare-fun m!2671156 () Bool)

(assert (=> b!2237811 m!2671156))

(declare-fun m!2671158 () Bool)

(assert (=> b!2237811 m!2671158))

(assert (=> b!2237811 m!2671144))

(declare-fun m!2671160 () Bool)

(assert (=> b!2237811 m!2671160))

(declare-fun m!2671162 () Bool)

(assert (=> b!2237811 m!2671162))

(assert (=> b!2237811 m!2671158))

(declare-fun m!2671164 () Bool)

(assert (=> b!2237811 m!2671164))

(assert (=> b!2237811 m!2671063))

(assert (=> b!2237811 m!2671132))

(declare-fun m!2671166 () Bool)

(assert (=> b!2237811 m!2671166))

(assert (=> b!2237811 m!2671146))

(declare-fun m!2671168 () Bool)

(assert (=> b!2237811 m!2671168))

(assert (=> b!2237746 d!665548))

(declare-fun b!2237834 () Bool)

(declare-fun c!356528 () Bool)

(declare-fun e!1430486 () Bool)

(assert (=> b!2237834 (= c!356528 e!1430486)))

(declare-fun res!957145 () Bool)

(assert (=> b!2237834 (=> (not res!957145) (not e!1430486))))

(assert (=> b!2237834 (= res!957145 ((_ is Concat!10819) (_1!15362 lt!832326)))))

(declare-fun e!1430485 () (InoxSet Context!4058))

(declare-fun e!1430487 () (InoxSet Context!4058))

(assert (=> b!2237834 (= e!1430485 e!1430487)))

(declare-fun b!2237835 () Bool)

(declare-fun e!1430483 () (InoxSet Context!4058))

(assert (=> b!2237835 (= e!1430487 e!1430483)))

(declare-fun c!356526 () Bool)

(assert (=> b!2237835 (= c!356526 ((_ is Concat!10819) (_1!15362 lt!832326)))))

(declare-fun b!2237836 () Bool)

(declare-fun e!1430484 () (InoxSet Context!4058))

(declare-fun call!134934 () (InoxSet Context!4058))

(assert (=> b!2237836 (= e!1430484 call!134934)))

(declare-fun b!2237837 () Bool)

(declare-fun e!1430482 () (InoxSet Context!4058))

(assert (=> b!2237837 (= e!1430482 (store ((as const (Array Context!4058 Bool)) false) (_2!15362 lt!832326) true))))

(declare-fun b!2237838 () Bool)

(declare-fun c!356529 () Bool)

(assert (=> b!2237838 (= c!356529 ((_ is Star!6481) (_1!15362 lt!832326)))))

(assert (=> b!2237838 (= e!1430483 e!1430484)))

(declare-fun call!134937 () List!26445)

(declare-fun bm!134927 () Bool)

(declare-fun $colon$colon!532 (List!26445 Regex!6481) List!26445)

(assert (=> bm!134927 (= call!134937 ($colon$colon!532 (exprs!2529 (_2!15362 lt!832326)) (ite (or c!356528 c!356526) (regTwo!13474 (_1!15362 lt!832326)) (_1!15362 lt!832326))))))

(declare-fun b!2237839 () Bool)

(declare-fun call!134935 () (InoxSet Context!4058))

(declare-fun call!134936 () (InoxSet Context!4058))

(assert (=> b!2237839 (= e!1430487 ((_ map or) call!134935 call!134936))))

(declare-fun bm!134928 () Bool)

(declare-fun call!134932 () (InoxSet Context!4058))

(assert (=> bm!134928 (= call!134936 call!134932)))

(declare-fun b!2237840 () Bool)

(assert (=> b!2237840 (= e!1430483 call!134934)))

(declare-fun b!2237841 () Bool)

(assert (=> b!2237841 (= e!1430485 ((_ map or) call!134932 call!134935))))

(declare-fun d!665550 () Bool)

(declare-fun c!356530 () Bool)

(assert (=> d!665550 (= c!356530 (and ((_ is ElementMatch!6481) (_1!15362 lt!832326)) (= (c!356494 (_1!15362 lt!832326)) (_3!2487 lt!832326))))))

(assert (=> d!665550 (= (derivationStepZipperDown!74 (_1!15362 lt!832326) (_2!15362 lt!832326) (_3!2487 lt!832326)) e!1430482)))

(declare-fun bm!134929 () Bool)

(declare-fun c!356527 () Bool)

(assert (=> bm!134929 (= call!134935 (derivationStepZipperDown!74 (ite c!356527 (regTwo!13475 (_1!15362 lt!832326)) (regOne!13474 (_1!15362 lt!832326))) (ite c!356527 (_2!15362 lt!832326) (Context!4059 call!134937)) (_3!2487 lt!832326)))))

(declare-fun b!2237842 () Bool)

(assert (=> b!2237842 (= e!1430484 ((as const (Array Context!4058 Bool)) false))))

(declare-fun bm!134930 () Bool)

(declare-fun call!134933 () List!26445)

(assert (=> bm!134930 (= call!134932 (derivationStepZipperDown!74 (ite c!356527 (regOne!13475 (_1!15362 lt!832326)) (ite c!356528 (regTwo!13474 (_1!15362 lt!832326)) (ite c!356526 (regOne!13474 (_1!15362 lt!832326)) (reg!6810 (_1!15362 lt!832326))))) (ite (or c!356527 c!356528) (_2!15362 lt!832326) (Context!4059 call!134933)) (_3!2487 lt!832326)))))

(declare-fun bm!134931 () Bool)

(assert (=> bm!134931 (= call!134933 call!134937)))

(declare-fun bm!134932 () Bool)

(assert (=> bm!134932 (= call!134934 call!134936)))

(declare-fun b!2237843 () Bool)

(declare-fun nullable!1786 (Regex!6481) Bool)

(assert (=> b!2237843 (= e!1430486 (nullable!1786 (regOne!13474 (_1!15362 lt!832326))))))

(declare-fun b!2237844 () Bool)

(assert (=> b!2237844 (= e!1430482 e!1430485)))

(assert (=> b!2237844 (= c!356527 ((_ is Union!6481) (_1!15362 lt!832326)))))

(assert (= (and d!665550 c!356530) b!2237837))

(assert (= (and d!665550 (not c!356530)) b!2237844))

(assert (= (and b!2237844 c!356527) b!2237841))

(assert (= (and b!2237844 (not c!356527)) b!2237834))

(assert (= (and b!2237834 res!957145) b!2237843))

(assert (= (and b!2237834 c!356528) b!2237839))

(assert (= (and b!2237834 (not c!356528)) b!2237835))

(assert (= (and b!2237835 c!356526) b!2237840))

(assert (= (and b!2237835 (not c!356526)) b!2237838))

(assert (= (and b!2237838 c!356529) b!2237836))

(assert (= (and b!2237838 (not c!356529)) b!2237842))

(assert (= (or b!2237840 b!2237836) bm!134931))

(assert (= (or b!2237840 b!2237836) bm!134932))

(assert (= (or b!2237839 bm!134932) bm!134928))

(assert (= (or b!2237839 bm!134931) bm!134927))

(assert (= (or b!2237841 b!2237839) bm!134929))

(assert (= (or b!2237841 bm!134928) bm!134930))

(declare-fun m!2671170 () Bool)

(assert (=> bm!134927 m!2671170))

(declare-fun m!2671172 () Bool)

(assert (=> bm!134929 m!2671172))

(declare-fun m!2671174 () Bool)

(assert (=> b!2237843 m!2671174))

(declare-fun m!2671176 () Bool)

(assert (=> b!2237837 m!2671176))

(declare-fun m!2671178 () Bool)

(assert (=> bm!134930 m!2671178))

(assert (=> b!2237746 d!665550))

(declare-fun b!2237863 () Bool)

(declare-fun e!1430505 () Bool)

(declare-fun call!134945 () Bool)

(assert (=> b!2237863 (= e!1430505 call!134945)))

(declare-fun bm!134939 () Bool)

(declare-fun call!134944 () Bool)

(declare-fun c!356536 () Bool)

(assert (=> bm!134939 (= call!134944 (validRegex!2435 (ite c!356536 (regOne!13475 (_1!15362 lt!832326)) (regOne!13474 (_1!15362 lt!832326)))))))

(declare-fun c!356535 () Bool)

(declare-fun call!134946 () Bool)

(declare-fun bm!134940 () Bool)

(assert (=> bm!134940 (= call!134946 (validRegex!2435 (ite c!356535 (reg!6810 (_1!15362 lt!832326)) (ite c!356536 (regTwo!13475 (_1!15362 lt!832326)) (regTwo!13474 (_1!15362 lt!832326))))))))

(declare-fun b!2237864 () Bool)

(declare-fun e!1430504 () Bool)

(declare-fun e!1430502 () Bool)

(assert (=> b!2237864 (= e!1430504 e!1430502)))

(declare-fun res!957160 () Bool)

(assert (=> b!2237864 (= res!957160 (not (nullable!1786 (reg!6810 (_1!15362 lt!832326)))))))

(assert (=> b!2237864 (=> (not res!957160) (not e!1430502))))

(declare-fun b!2237865 () Bool)

(declare-fun e!1430503 () Bool)

(assert (=> b!2237865 (= e!1430503 e!1430504)))

(assert (=> b!2237865 (= c!356535 ((_ is Star!6481) (_1!15362 lt!832326)))))

(declare-fun d!665552 () Bool)

(declare-fun res!957159 () Bool)

(assert (=> d!665552 (=> res!957159 e!1430503)))

(assert (=> d!665552 (= res!957159 ((_ is ElementMatch!6481) (_1!15362 lt!832326)))))

(assert (=> d!665552 (= (validRegex!2435 (_1!15362 lt!832326)) e!1430503)))

(declare-fun b!2237866 () Bool)

(declare-fun res!957157 () Bool)

(declare-fun e!1430506 () Bool)

(assert (=> b!2237866 (=> (not res!957157) (not e!1430506))))

(assert (=> b!2237866 (= res!957157 call!134944)))

(declare-fun e!1430508 () Bool)

(assert (=> b!2237866 (= e!1430508 e!1430506)))

(declare-fun b!2237867 () Bool)

(assert (=> b!2237867 (= e!1430502 call!134946)))

(declare-fun bm!134941 () Bool)

(assert (=> bm!134941 (= call!134945 call!134946)))

(declare-fun b!2237868 () Bool)

(assert (=> b!2237868 (= e!1430504 e!1430508)))

(assert (=> b!2237868 (= c!356536 ((_ is Union!6481) (_1!15362 lt!832326)))))

(declare-fun b!2237869 () Bool)

(declare-fun e!1430507 () Bool)

(assert (=> b!2237869 (= e!1430507 e!1430505)))

(declare-fun res!957158 () Bool)

(assert (=> b!2237869 (=> (not res!957158) (not e!1430505))))

(assert (=> b!2237869 (= res!957158 call!134944)))

(declare-fun b!2237870 () Bool)

(assert (=> b!2237870 (= e!1430506 call!134945)))

(declare-fun b!2237871 () Bool)

(declare-fun res!957156 () Bool)

(assert (=> b!2237871 (=> res!957156 e!1430507)))

(assert (=> b!2237871 (= res!957156 (not ((_ is Concat!10819) (_1!15362 lt!832326))))))

(assert (=> b!2237871 (= e!1430508 e!1430507)))

(assert (= (and d!665552 (not res!957159)) b!2237865))

(assert (= (and b!2237865 c!356535) b!2237864))

(assert (= (and b!2237865 (not c!356535)) b!2237868))

(assert (= (and b!2237864 res!957160) b!2237867))

(assert (= (and b!2237868 c!356536) b!2237866))

(assert (= (and b!2237868 (not c!356536)) b!2237871))

(assert (= (and b!2237866 res!957157) b!2237870))

(assert (= (and b!2237871 (not res!957156)) b!2237869))

(assert (= (and b!2237869 res!957158) b!2237863))

(assert (= (or b!2237866 b!2237869) bm!134939))

(assert (= (or b!2237870 b!2237863) bm!134941))

(assert (= (or b!2237867 bm!134941) bm!134940))

(declare-fun m!2671180 () Bool)

(assert (=> bm!134939 m!2671180))

(declare-fun m!2671182 () Bool)

(assert (=> bm!134940 m!2671182))

(declare-fun m!2671184 () Bool)

(assert (=> b!2237864 m!2671184))

(assert (=> b!2237747 d!665552))

(assert (=> b!2237747 d!665548))

(declare-fun d!665554 () Bool)

(declare-fun dynLambda!11533 (Int tuple2!25750) Bool)

(assert (=> d!665554 (dynLambda!11533 lambda!84565 (tuple2!25751 lt!832326 (apply!6484 (cache!3410 thiss!28743) lt!832326)))))

(declare-fun lt!832485 () Unit!39298)

(declare-fun choose!13138 (MutableMap!3029 tuple3!4034 Int) Unit!39298)

(assert (=> d!665554 (= lt!832485 (choose!13138 (cache!3410 thiss!28743) lt!832326 lambda!84565))))

(assert (=> d!665554 (valid!2352 (cache!3410 thiss!28743))))

(assert (=> d!665554 (= (lemmaForallPairsThenForLookup!24 (cache!3410 thiss!28743) lt!832326 lambda!84565) lt!832485)))

(declare-fun b_lambda!71709 () Bool)

(assert (=> (not b_lambda!71709) (not d!665554)))

(declare-fun bs!454241 () Bool)

(assert (= bs!454241 d!665554))

(assert (=> bs!454241 m!2671029))

(declare-fun m!2671186 () Bool)

(assert (=> bs!454241 m!2671186))

(declare-fun m!2671188 () Bool)

(assert (=> bs!454241 m!2671188))

(assert (=> bs!454241 m!2671061))

(assert (=> b!2237747 d!665554))

(declare-fun d!665556 () Bool)

(assert (=> d!665556 (= (array_inv!3465 (_keys!3416 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))) (bvsge (size!20607 (_keys!3416 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2237743 d!665556))

(declare-fun d!665558 () Bool)

(assert (=> d!665558 (= (array_inv!3466 (_values!3399 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))) (bvsge (size!20606 (_values!3399 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2237743 d!665558))

(declare-fun b!2237876 () Bool)

(declare-fun e!1430511 () Bool)

(declare-fun tp!704129 () Bool)

(declare-fun tp!704130 () Bool)

(assert (=> b!2237876 (= e!1430511 (and tp!704129 tp!704130))))

(assert (=> b!2237735 (= tp!704122 e!1430511)))

(assert (= (and b!2237735 ((_ is Cons!26351) (exprs!2529 ctx!48))) b!2237876))

(declare-fun tp!704141 () Bool)

(declare-fun e!1430520 () Bool)

(declare-fun setRes!20446 () Bool)

(declare-fun tp!704142 () Bool)

(declare-fun b!2237885 () Bool)

(declare-fun e!1430519 () Bool)

(assert (=> b!2237885 (= e!1430520 (and tp!704142 (inv!35796 (_2!15362 (_1!15363 (h!31753 mapDefault!14639)))) e!1430519 tp_is_empty!10183 setRes!20446 tp!704141))))

(declare-fun condSetEmpty!20446 () Bool)

(assert (=> b!2237885 (= condSetEmpty!20446 (= (_2!15363 (h!31753 mapDefault!14639)) ((as const (Array Context!4058 Bool)) false)))))

(declare-fun setNonEmpty!20446 () Bool)

(declare-fun e!1430518 () Bool)

(declare-fun tp!704144 () Bool)

(declare-fun setElem!20446 () Context!4058)

(assert (=> setNonEmpty!20446 (= setRes!20446 (and tp!704144 (inv!35796 setElem!20446) e!1430518))))

(declare-fun setRest!20446 () (InoxSet Context!4058))

(assert (=> setNonEmpty!20446 (= (_2!15363 (h!31753 mapDefault!14639)) ((_ map or) (store ((as const (Array Context!4058 Bool)) false) setElem!20446 true) setRest!20446))))

(declare-fun b!2237886 () Bool)

(declare-fun tp!704145 () Bool)

(assert (=> b!2237886 (= e!1430519 tp!704145)))

(declare-fun b!2237887 () Bool)

(declare-fun tp!704143 () Bool)

(assert (=> b!2237887 (= e!1430518 tp!704143)))

(assert (=> b!2237739 (= tp!704124 e!1430520)))

(declare-fun setIsEmpty!20446 () Bool)

(assert (=> setIsEmpty!20446 setRes!20446))

(assert (= b!2237885 b!2237886))

(assert (= (and b!2237885 condSetEmpty!20446) setIsEmpty!20446))

(assert (= (and b!2237885 (not condSetEmpty!20446)) setNonEmpty!20446))

(assert (= setNonEmpty!20446 b!2237887))

(assert (= (and b!2237739 ((_ is Cons!26352) mapDefault!14639)) b!2237885))

(declare-fun m!2671190 () Bool)

(assert (=> b!2237885 m!2671190))

(declare-fun m!2671192 () Bool)

(assert (=> setNonEmpty!20446 m!2671192))

(declare-fun b!2237902 () Bool)

(declare-fun e!1430537 () Bool)

(declare-fun tp!704173 () Bool)

(assert (=> b!2237902 (= e!1430537 tp!704173)))

(declare-fun b!2237903 () Bool)

(declare-fun e!1430538 () Bool)

(declare-fun tp!704168 () Bool)

(assert (=> b!2237903 (= e!1430538 tp!704168)))

(declare-fun setIsEmpty!20451 () Bool)

(declare-fun setRes!20451 () Bool)

(assert (=> setIsEmpty!20451 setRes!20451))

(declare-fun mapIsEmpty!14642 () Bool)

(declare-fun mapRes!14642 () Bool)

(assert (=> mapIsEmpty!14642 mapRes!14642))

(declare-fun condMapEmpty!14642 () Bool)

(declare-fun mapDefault!14642 () List!26446)

(assert (=> mapNonEmpty!14639 (= condMapEmpty!14642 (= mapRest!14639 ((as const (Array (_ BitVec 32) List!26446)) mapDefault!14642)))))

(declare-fun e!1430536 () Bool)

(assert (=> mapNonEmpty!14639 (= tp!704118 (and e!1430536 mapRes!14642))))

(declare-fun setNonEmpty!20451 () Bool)

(declare-fun setElem!20452 () Context!4058)

(declare-fun e!1430533 () Bool)

(declare-fun tp!704172 () Bool)

(assert (=> setNonEmpty!20451 (= setRes!20451 (and tp!704172 (inv!35796 setElem!20452) e!1430533))))

(declare-fun mapValue!14642 () List!26446)

(declare-fun setRest!20451 () (InoxSet Context!4058))

(assert (=> setNonEmpty!20451 (= (_2!15363 (h!31753 mapValue!14642)) ((_ map or) (store ((as const (Array Context!4058 Bool)) false) setElem!20452 true) setRest!20451))))

(declare-fun b!2237904 () Bool)

(declare-fun tp!704175 () Bool)

(assert (=> b!2237904 (= e!1430533 tp!704175)))

(declare-fun setRes!20452 () Bool)

(declare-fun tp!704170 () Bool)

(declare-fun b!2237905 () Bool)

(declare-fun tp!704174 () Bool)

(assert (=> b!2237905 (= e!1430536 (and tp!704174 (inv!35796 (_2!15362 (_1!15363 (h!31753 mapDefault!14642)))) e!1430538 tp_is_empty!10183 setRes!20452 tp!704170))))

(declare-fun condSetEmpty!20451 () Bool)

(assert (=> b!2237905 (= condSetEmpty!20451 (= (_2!15363 (h!31753 mapDefault!14642)) ((as const (Array Context!4058 Bool)) false)))))

(declare-fun setIsEmpty!20452 () Bool)

(assert (=> setIsEmpty!20452 setRes!20452))

(declare-fun mapNonEmpty!14642 () Bool)

(declare-fun tp!704178 () Bool)

(declare-fun e!1430535 () Bool)

(assert (=> mapNonEmpty!14642 (= mapRes!14642 (and tp!704178 e!1430535))))

(declare-fun mapRest!14642 () (Array (_ BitVec 32) List!26446))

(declare-fun mapKey!14642 () (_ BitVec 32))

(assert (=> mapNonEmpty!14642 (= mapRest!14639 (store mapRest!14642 mapKey!14642 mapValue!14642))))

(declare-fun tp!704177 () Bool)

(declare-fun b!2237906 () Bool)

(declare-fun tp!704176 () Bool)

(assert (=> b!2237906 (= e!1430535 (and tp!704177 (inv!35796 (_2!15362 (_1!15363 (h!31753 mapValue!14642)))) e!1430537 tp_is_empty!10183 setRes!20451 tp!704176))))

(declare-fun condSetEmpty!20452 () Bool)

(assert (=> b!2237906 (= condSetEmpty!20452 (= (_2!15363 (h!31753 mapValue!14642)) ((as const (Array Context!4058 Bool)) false)))))

(declare-fun b!2237907 () Bool)

(declare-fun e!1430534 () Bool)

(declare-fun tp!704169 () Bool)

(assert (=> b!2237907 (= e!1430534 tp!704169)))

(declare-fun setElem!20451 () Context!4058)

(declare-fun tp!704171 () Bool)

(declare-fun setNonEmpty!20452 () Bool)

(assert (=> setNonEmpty!20452 (= setRes!20452 (and tp!704171 (inv!35796 setElem!20451) e!1430534))))

(declare-fun setRest!20452 () (InoxSet Context!4058))

(assert (=> setNonEmpty!20452 (= (_2!15363 (h!31753 mapDefault!14642)) ((_ map or) (store ((as const (Array Context!4058 Bool)) false) setElem!20451 true) setRest!20452))))

(assert (= (and mapNonEmpty!14639 condMapEmpty!14642) mapIsEmpty!14642))

(assert (= (and mapNonEmpty!14639 (not condMapEmpty!14642)) mapNonEmpty!14642))

(assert (= b!2237906 b!2237902))

(assert (= (and b!2237906 condSetEmpty!20452) setIsEmpty!20451))

(assert (= (and b!2237906 (not condSetEmpty!20452)) setNonEmpty!20451))

(assert (= setNonEmpty!20451 b!2237904))

(assert (= (and mapNonEmpty!14642 ((_ is Cons!26352) mapValue!14642)) b!2237906))

(assert (= b!2237905 b!2237903))

(assert (= (and b!2237905 condSetEmpty!20451) setIsEmpty!20452))

(assert (= (and b!2237905 (not condSetEmpty!20451)) setNonEmpty!20452))

(assert (= setNonEmpty!20452 b!2237907))

(assert (= (and mapNonEmpty!14639 ((_ is Cons!26352) mapDefault!14642)) b!2237905))

(declare-fun m!2671194 () Bool)

(assert (=> b!2237906 m!2671194))

(declare-fun m!2671196 () Bool)

(assert (=> setNonEmpty!20452 m!2671196))

(declare-fun m!2671198 () Bool)

(assert (=> setNonEmpty!20451 m!2671198))

(declare-fun m!2671200 () Bool)

(assert (=> b!2237905 m!2671200))

(declare-fun m!2671202 () Bool)

(assert (=> mapNonEmpty!14642 m!2671202))

(declare-fun tp!704180 () Bool)

(declare-fun setRes!20453 () Bool)

(declare-fun e!1430541 () Bool)

(declare-fun b!2237908 () Bool)

(declare-fun e!1430540 () Bool)

(declare-fun tp!704179 () Bool)

(assert (=> b!2237908 (= e!1430541 (and tp!704180 (inv!35796 (_2!15362 (_1!15363 (h!31753 mapValue!14639)))) e!1430540 tp_is_empty!10183 setRes!20453 tp!704179))))

(declare-fun condSetEmpty!20453 () Bool)

(assert (=> b!2237908 (= condSetEmpty!20453 (= (_2!15363 (h!31753 mapValue!14639)) ((as const (Array Context!4058 Bool)) false)))))

(declare-fun tp!704182 () Bool)

(declare-fun setElem!20453 () Context!4058)

(declare-fun e!1430539 () Bool)

(declare-fun setNonEmpty!20453 () Bool)

(assert (=> setNonEmpty!20453 (= setRes!20453 (and tp!704182 (inv!35796 setElem!20453) e!1430539))))

(declare-fun setRest!20453 () (InoxSet Context!4058))

(assert (=> setNonEmpty!20453 (= (_2!15363 (h!31753 mapValue!14639)) ((_ map or) (store ((as const (Array Context!4058 Bool)) false) setElem!20453 true) setRest!20453))))

(declare-fun b!2237909 () Bool)

(declare-fun tp!704183 () Bool)

(assert (=> b!2237909 (= e!1430540 tp!704183)))

(declare-fun b!2237910 () Bool)

(declare-fun tp!704181 () Bool)

(assert (=> b!2237910 (= e!1430539 tp!704181)))

(assert (=> mapNonEmpty!14639 (= tp!704121 e!1430541)))

(declare-fun setIsEmpty!20453 () Bool)

(assert (=> setIsEmpty!20453 setRes!20453))

(assert (= b!2237908 b!2237909))

(assert (= (and b!2237908 condSetEmpty!20453) setIsEmpty!20453))

(assert (= (and b!2237908 (not condSetEmpty!20453)) setNonEmpty!20453))

(assert (= setNonEmpty!20453 b!2237910))

(assert (= (and mapNonEmpty!14639 ((_ is Cons!26352) mapValue!14639)) b!2237908))

(declare-fun m!2671204 () Bool)

(assert (=> b!2237908 m!2671204))

(declare-fun m!2671206 () Bool)

(assert (=> setNonEmpty!20453 m!2671206))

(declare-fun b!2237921 () Bool)

(declare-fun e!1430544 () Bool)

(assert (=> b!2237921 (= e!1430544 tp_is_empty!10183)))

(declare-fun b!2237923 () Bool)

(declare-fun tp!704196 () Bool)

(assert (=> b!2237923 (= e!1430544 tp!704196)))

(declare-fun b!2237922 () Bool)

(declare-fun tp!704198 () Bool)

(declare-fun tp!704195 () Bool)

(assert (=> b!2237922 (= e!1430544 (and tp!704198 tp!704195))))

(assert (=> b!2237748 (= tp!704115 e!1430544)))

(declare-fun b!2237924 () Bool)

(declare-fun tp!704197 () Bool)

(declare-fun tp!704194 () Bool)

(assert (=> b!2237924 (= e!1430544 (and tp!704197 tp!704194))))

(assert (= (and b!2237748 ((_ is ElementMatch!6481) (regOne!13474 r!4750))) b!2237921))

(assert (= (and b!2237748 ((_ is Concat!10819) (regOne!13474 r!4750))) b!2237922))

(assert (= (and b!2237748 ((_ is Star!6481) (regOne!13474 r!4750))) b!2237923))

(assert (= (and b!2237748 ((_ is Union!6481) (regOne!13474 r!4750))) b!2237924))

(declare-fun b!2237925 () Bool)

(declare-fun e!1430545 () Bool)

(assert (=> b!2237925 (= e!1430545 tp_is_empty!10183)))

(declare-fun b!2237927 () Bool)

(declare-fun tp!704201 () Bool)

(assert (=> b!2237927 (= e!1430545 tp!704201)))

(declare-fun b!2237926 () Bool)

(declare-fun tp!704203 () Bool)

(declare-fun tp!704200 () Bool)

(assert (=> b!2237926 (= e!1430545 (and tp!704203 tp!704200))))

(assert (=> b!2237748 (= tp!704117 e!1430545)))

(declare-fun b!2237928 () Bool)

(declare-fun tp!704202 () Bool)

(declare-fun tp!704199 () Bool)

(assert (=> b!2237928 (= e!1430545 (and tp!704202 tp!704199))))

(assert (= (and b!2237748 ((_ is ElementMatch!6481) (regTwo!13474 r!4750))) b!2237925))

(assert (= (and b!2237748 ((_ is Concat!10819) (regTwo!13474 r!4750))) b!2237926))

(assert (= (and b!2237748 ((_ is Star!6481) (regTwo!13474 r!4750))) b!2237927))

(assert (= (and b!2237748 ((_ is Union!6481) (regTwo!13474 r!4750))) b!2237928))

(declare-fun b!2237929 () Bool)

(declare-fun e!1430546 () Bool)

(assert (=> b!2237929 (= e!1430546 tp_is_empty!10183)))

(declare-fun b!2237931 () Bool)

(declare-fun tp!704206 () Bool)

(assert (=> b!2237931 (= e!1430546 tp!704206)))

(declare-fun b!2237930 () Bool)

(declare-fun tp!704208 () Bool)

(declare-fun tp!704205 () Bool)

(assert (=> b!2237930 (= e!1430546 (and tp!704208 tp!704205))))

(assert (=> b!2237744 (= tp!704116 e!1430546)))

(declare-fun b!2237932 () Bool)

(declare-fun tp!704207 () Bool)

(declare-fun tp!704204 () Bool)

(assert (=> b!2237932 (= e!1430546 (and tp!704207 tp!704204))))

(assert (= (and b!2237744 ((_ is ElementMatch!6481) (reg!6810 r!4750))) b!2237929))

(assert (= (and b!2237744 ((_ is Concat!10819) (reg!6810 r!4750))) b!2237930))

(assert (= (and b!2237744 ((_ is Star!6481) (reg!6810 r!4750))) b!2237931))

(assert (= (and b!2237744 ((_ is Union!6481) (reg!6810 r!4750))) b!2237932))

(declare-fun b!2237933 () Bool)

(declare-fun e!1430547 () Bool)

(assert (=> b!2237933 (= e!1430547 tp_is_empty!10183)))

(declare-fun b!2237935 () Bool)

(declare-fun tp!704211 () Bool)

(assert (=> b!2237935 (= e!1430547 tp!704211)))

(declare-fun b!2237934 () Bool)

(declare-fun tp!704213 () Bool)

(declare-fun tp!704210 () Bool)

(assert (=> b!2237934 (= e!1430547 (and tp!704213 tp!704210))))

(assert (=> b!2237749 (= tp!704119 e!1430547)))

(declare-fun b!2237936 () Bool)

(declare-fun tp!704212 () Bool)

(declare-fun tp!704209 () Bool)

(assert (=> b!2237936 (= e!1430547 (and tp!704212 tp!704209))))

(assert (= (and b!2237749 ((_ is ElementMatch!6481) (regOne!13475 r!4750))) b!2237933))

(assert (= (and b!2237749 ((_ is Concat!10819) (regOne!13475 r!4750))) b!2237934))

(assert (= (and b!2237749 ((_ is Star!6481) (regOne!13475 r!4750))) b!2237935))

(assert (= (and b!2237749 ((_ is Union!6481) (regOne!13475 r!4750))) b!2237936))

(declare-fun b!2237937 () Bool)

(declare-fun e!1430548 () Bool)

(assert (=> b!2237937 (= e!1430548 tp_is_empty!10183)))

(declare-fun b!2237939 () Bool)

(declare-fun tp!704216 () Bool)

(assert (=> b!2237939 (= e!1430548 tp!704216)))

(declare-fun b!2237938 () Bool)

(declare-fun tp!704218 () Bool)

(declare-fun tp!704215 () Bool)

(assert (=> b!2237938 (= e!1430548 (and tp!704218 tp!704215))))

(assert (=> b!2237749 (= tp!704120 e!1430548)))

(declare-fun b!2237940 () Bool)

(declare-fun tp!704217 () Bool)

(declare-fun tp!704214 () Bool)

(assert (=> b!2237940 (= e!1430548 (and tp!704217 tp!704214))))

(assert (= (and b!2237749 ((_ is ElementMatch!6481) (regTwo!13475 r!4750))) b!2237937))

(assert (= (and b!2237749 ((_ is Concat!10819) (regTwo!13475 r!4750))) b!2237938))

(assert (= (and b!2237749 ((_ is Star!6481) (regTwo!13475 r!4750))) b!2237939))

(assert (= (and b!2237749 ((_ is Union!6481) (regTwo!13475 r!4750))) b!2237940))

(declare-fun setRes!20454 () Bool)

(declare-fun tp!704220 () Bool)

(declare-fun e!1430550 () Bool)

(declare-fun tp!704219 () Bool)

(declare-fun b!2237941 () Bool)

(declare-fun e!1430551 () Bool)

(assert (=> b!2237941 (= e!1430551 (and tp!704220 (inv!35796 (_2!15362 (_1!15363 (h!31753 (zeroValue!3377 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))))) e!1430550 tp_is_empty!10183 setRes!20454 tp!704219))))

(declare-fun condSetEmpty!20454 () Bool)

(assert (=> b!2237941 (= condSetEmpty!20454 (= (_2!15363 (h!31753 (zeroValue!3377 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))) ((as const (Array Context!4058 Bool)) false)))))

(declare-fun setNonEmpty!20454 () Bool)

(declare-fun e!1430549 () Bool)

(declare-fun setElem!20454 () Context!4058)

(declare-fun tp!704222 () Bool)

(assert (=> setNonEmpty!20454 (= setRes!20454 (and tp!704222 (inv!35796 setElem!20454) e!1430549))))

(declare-fun setRest!20454 () (InoxSet Context!4058))

(assert (=> setNonEmpty!20454 (= (_2!15363 (h!31753 (zeroValue!3377 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4058 Bool)) false) setElem!20454 true) setRest!20454))))

(declare-fun b!2237942 () Bool)

(declare-fun tp!704223 () Bool)

(assert (=> b!2237942 (= e!1430550 tp!704223)))

(declare-fun b!2237943 () Bool)

(declare-fun tp!704221 () Bool)

(assert (=> b!2237943 (= e!1430549 tp!704221)))

(assert (=> b!2237743 (= tp!704113 e!1430551)))

(declare-fun setIsEmpty!20454 () Bool)

(assert (=> setIsEmpty!20454 setRes!20454))

(assert (= b!2237941 b!2237942))

(assert (= (and b!2237941 condSetEmpty!20454) setIsEmpty!20454))

(assert (= (and b!2237941 (not condSetEmpty!20454)) setNonEmpty!20454))

(assert (= setNonEmpty!20454 b!2237943))

(assert (= (and b!2237743 ((_ is Cons!26352) (zeroValue!3377 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))) b!2237941))

(declare-fun m!2671208 () Bool)

(assert (=> b!2237941 m!2671208))

(declare-fun m!2671210 () Bool)

(assert (=> setNonEmpty!20454 m!2671210))

(declare-fun setRes!20455 () Bool)

(declare-fun tp!704225 () Bool)

(declare-fun b!2237944 () Bool)

(declare-fun e!1430554 () Bool)

(declare-fun tp!704224 () Bool)

(declare-fun e!1430553 () Bool)

(assert (=> b!2237944 (= e!1430554 (and tp!704225 (inv!35796 (_2!15362 (_1!15363 (h!31753 (minValue!3377 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))))) e!1430553 tp_is_empty!10183 setRes!20455 tp!704224))))

(declare-fun condSetEmpty!20455 () Bool)

(assert (=> b!2237944 (= condSetEmpty!20455 (= (_2!15363 (h!31753 (minValue!3377 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))) ((as const (Array Context!4058 Bool)) false)))))

(declare-fun setNonEmpty!20455 () Bool)

(declare-fun tp!704227 () Bool)

(declare-fun setElem!20455 () Context!4058)

(declare-fun e!1430552 () Bool)

(assert (=> setNonEmpty!20455 (= setRes!20455 (and tp!704227 (inv!35796 setElem!20455) e!1430552))))

(declare-fun setRest!20455 () (InoxSet Context!4058))

(assert (=> setNonEmpty!20455 (= (_2!15363 (h!31753 (minValue!3377 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4058 Bool)) false) setElem!20455 true) setRest!20455))))

(declare-fun b!2237945 () Bool)

(declare-fun tp!704228 () Bool)

(assert (=> b!2237945 (= e!1430553 tp!704228)))

(declare-fun b!2237946 () Bool)

(declare-fun tp!704226 () Bool)

(assert (=> b!2237946 (= e!1430552 tp!704226)))

(assert (=> b!2237743 (= tp!704112 e!1430554)))

(declare-fun setIsEmpty!20455 () Bool)

(assert (=> setIsEmpty!20455 setRes!20455))

(assert (= b!2237944 b!2237945))

(assert (= (and b!2237944 condSetEmpty!20455) setIsEmpty!20455))

(assert (= (and b!2237944 (not condSetEmpty!20455)) setNonEmpty!20455))

(assert (= setNonEmpty!20455 b!2237946))

(assert (= (and b!2237743 ((_ is Cons!26352) (minValue!3377 (v!29963 (underlying!6439 (v!29964 (underlying!6440 (cache!3410 thiss!28743)))))))) b!2237944))

(declare-fun m!2671212 () Bool)

(assert (=> b!2237944 m!2671212))

(declare-fun m!2671214 () Bool)

(assert (=> setNonEmpty!20455 m!2671214))

(declare-fun b_lambda!71711 () Bool)

(assert (= b_lambda!71705 (or (and b!2237736 b_free!64937) b_lambda!71711)))

(declare-fun b_lambda!71713 () Bool)

(assert (= b_lambda!71707 (or (and b!2237736 b_free!64937) b_lambda!71713)))

(declare-fun b_lambda!71715 () Bool)

(assert (= b_lambda!71709 (or b!2237747 b_lambda!71715)))

(declare-fun bs!454242 () Bool)

(declare-fun d!665560 () Bool)

(assert (= bs!454242 (and d!665560 b!2237747)))

(declare-fun res!957161 () Bool)

(declare-fun e!1430555 () Bool)

(assert (=> bs!454242 (=> (not res!957161) (not e!1430555))))

(assert (=> bs!454242 (= res!957161 (validRegex!2435 (_1!15362 (_1!15363 (tuple2!25751 lt!832326 (apply!6484 (cache!3410 thiss!28743) lt!832326))))))))

(assert (=> bs!454242 (= (dynLambda!11533 lambda!84565 (tuple2!25751 lt!832326 (apply!6484 (cache!3410 thiss!28743) lt!832326))) e!1430555)))

(declare-fun b!2237947 () Bool)

(assert (=> b!2237947 (= e!1430555 (= (_2!15363 (tuple2!25751 lt!832326 (apply!6484 (cache!3410 thiss!28743) lt!832326))) (derivationStepZipperDown!74 (_1!15362 (_1!15363 (tuple2!25751 lt!832326 (apply!6484 (cache!3410 thiss!28743) lt!832326)))) (_2!15362 (_1!15363 (tuple2!25751 lt!832326 (apply!6484 (cache!3410 thiss!28743) lt!832326)))) (_3!2487 (_1!15363 (tuple2!25751 lt!832326 (apply!6484 (cache!3410 thiss!28743) lt!832326)))))))))

(assert (= (and bs!454242 res!957161) b!2237947))

(declare-fun m!2671216 () Bool)

(assert (=> bs!454242 m!2671216))

(declare-fun m!2671218 () Bool)

(assert (=> b!2237947 m!2671218))

(assert (=> d!665554 d!665560))

(check-sat (not b_next!65643) (not setNonEmpty!20453) (not b!2237811) (not b!2237930) (not b_lambda!71713) (not bm!134910) (not b!2237934) (not b!2237932) (not d!665548) (not bm!134939) (not setNonEmpty!20446) (not b!2237945) (not bm!134930) (not b!2237904) (not b!2237790) (not b!2237947) (not b!2237864) (not b!2237778) (not setNonEmpty!20452) (not b_lambda!71715) (not b!2237887) b_and!174939 (not b!2237931) (not b!2237941) (not setNonEmpty!20454) b_and!174935 (not bm!134912) (not bm!134909) (not b!2237922) (not d!665554) (not bm!134913) (not b!2237885) (not b!2237924) (not setNonEmpty!20455) (not b!2237808) (not bs!454242) (not b!2237927) (not b!2237876) (not b!2237935) (not b!2237943) (not b!2237781) (not b!2237810) (not b_lambda!71711) (not b!2237843) (not bm!134927) (not b!2237779) (not b!2237902) (not b_next!65641) (not b!2237907) (not b!2237938) (not b!2237886) (not b!2237940) (not d!665546) (not b!2237942) (not mapNonEmpty!14642) (not d!665542) (not bm!134929) (not bm!134911) (not b!2237928) tp_is_empty!10183 (not b!2237926) (not b!2237923) (not bm!134914) (not setNonEmpty!20451) (not b!2237909) (not b!2237944) (not b!2237906) (not b!2237910) (not b!2237908) (not b!2237776) (not b!2237939) (not b!2237773) (not b!2237936) (not b!2237905) (not b!2237946) (not bm!134940) (not d!665540) (not b!2237793) (not b!2237903) (not b!2237789) (not tb!132855))
(check-sat b_and!174935 b_and!174939 (not b_next!65641) (not b_next!65643))
