; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412100 () Bool)

(assert start!412100)

(declare-fun b!4291495 () Bool)

(declare-fun b_free!127471 () Bool)

(declare-fun b_next!128175 () Bool)

(assert (=> b!4291495 (= b_free!127471 (not b_next!128175))))

(declare-fun tp!1316424 () Bool)

(declare-fun b_and!338687 () Bool)

(assert (=> b!4291495 (= tp!1316424 b_and!338687)))

(declare-fun b!4291506 () Bool)

(declare-fun b_free!127473 () Bool)

(declare-fun b_next!128177 () Bool)

(assert (=> b!4291506 (= b_free!127473 (not b_next!128177))))

(declare-fun tp!1316411 () Bool)

(declare-fun b_and!338689 () Bool)

(assert (=> b!4291506 (= tp!1316411 b_and!338689)))

(declare-fun b!4291503 () Bool)

(declare-fun b_free!127475 () Bool)

(declare-fun b_next!128179 () Bool)

(assert (=> b!4291503 (= b_free!127475 (not b_next!128179))))

(declare-fun tp!1316421 () Bool)

(declare-fun b_and!338691 () Bool)

(assert (=> b!4291503 (= tp!1316421 b_and!338691)))

(declare-fun b!4291464 () Bool)

(declare-fun b_free!127477 () Bool)

(declare-fun b_next!128181 () Bool)

(assert (=> b!4291464 (= b_free!127477 (not b_next!128181))))

(declare-fun tp!1316427 () Bool)

(declare-fun b_and!338693 () Bool)

(assert (=> b!4291464 (= tp!1316427 b_and!338693)))

(declare-fun b!4291469 () Bool)

(declare-fun b_free!127479 () Bool)

(declare-fun b_next!128183 () Bool)

(assert (=> b!4291469 (= b_free!127479 (not b_next!128183))))

(declare-fun tp!1316425 () Bool)

(declare-fun b_and!338695 () Bool)

(assert (=> b!4291469 (= tp!1316425 b_and!338695)))

(declare-fun b!4291490 () Bool)

(declare-fun b_free!127481 () Bool)

(declare-fun b_next!128185 () Bool)

(assert (=> b!4291490 (= b_free!127481 (not b_next!128185))))

(declare-fun tp!1316420 () Bool)

(declare-fun b_and!338697 () Bool)

(assert (=> b!4291490 (= tp!1316420 b_and!338697)))

(declare-fun e!2666044 () Bool)

(declare-fun e!2666050 () Bool)

(declare-fun tp!1316416 () Bool)

(declare-datatypes ((C!26120 0))(
  ( (C!26121 (val!15386 Int)) )
))
(declare-datatypes ((Regex!12961 0))(
  ( (ElementMatch!12961 (c!730376 C!26120)) (Concat!21280 (regOne!26434 Regex!12961) (regTwo!26434 Regex!12961)) (EmptyExpr!12961) (Star!12961 (reg!13290 Regex!12961)) (EmptyLang!12961) (Union!12961 (regOne!26435 Regex!12961) (regTwo!26435 Regex!12961)) )
))
(declare-datatypes ((List!47830 0))(
  ( (Nil!47706) (Cons!47706 (h!53126 Regex!12961) (t!354434 List!47830)) )
))
(declare-datatypes ((Context!5702 0))(
  ( (Context!5703 (exprs!3351 List!47830)) )
))
(declare-datatypes ((tuple2!45364 0))(
  ( (tuple2!45365 (_1!25904 Context!5702) (_2!25904 C!26120)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45366 0))(
  ( (tuple2!45367 (_1!25905 tuple2!45364) (_2!25905 (InoxSet Context!5702))) )
))
(declare-datatypes ((List!47831 0))(
  ( (Nil!47707) (Cons!47707 (h!53127 tuple2!45366) (t!354435 List!47831)) )
))
(declare-datatypes ((array!15748 0))(
  ( (array!15749 (arr!7034 (Array (_ BitVec 32) (_ BitVec 64))) (size!35019 (_ BitVec 32))) )
))
(declare-datatypes ((array!15750 0))(
  ( (array!15751 (arr!7035 (Array (_ BitVec 32) List!47831)) (size!35020 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8812 0))(
  ( (LongMapFixedSize!8813 (defaultEntry!4791 Int) (mask!12856 (_ BitVec 32)) (extraKeys!4655 (_ BitVec 32)) (zeroValue!4665 List!47831) (minValue!4665 List!47831) (_size!8855 (_ BitVec 32)) (_keys!4706 array!15748) (_values!4687 array!15750) (_vacant!4467 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17433 0))(
  ( (Cell!17434 (v!41626 LongMapFixedSize!8812)) )
))
(declare-datatypes ((MutLongMap!4406 0))(
  ( (LongMap!4406 (underlying!9041 Cell!17433)) (MutLongMapExt!4405 (__x!29243 Int)) )
))
(declare-datatypes ((Cell!17435 0))(
  ( (Cell!17436 (v!41627 MutLongMap!4406)) )
))
(declare-datatypes ((Hashable!4322 0))(
  ( (HashableExt!4321 (__x!29244 Int)) )
))
(declare-datatypes ((MutableMap!4312 0))(
  ( (MutableMapExt!4311 (__x!29245 Int)) (HashMap!4312 (underlying!9042 Cell!17435) (hashF!6354 Hashable!4322) (_size!8856 (_ BitVec 32)) (defaultValue!4483 Int)) )
))
(declare-datatypes ((CacheUp!2810 0))(
  ( (CacheUp!2811 (cache!4452 MutableMap!4312)) )
))
(declare-fun cacheUp!947 () CacheUp!2810)

(declare-fun tp!1316407 () Bool)

(declare-fun array_inv!5047 (array!15748) Bool)

(declare-fun array_inv!5048 (array!15750) Bool)

(assert (=> b!4291464 (= e!2666044 (and tp!1316427 tp!1316416 tp!1316407 (array_inv!5047 (_keys!4706 (v!41626 (underlying!9041 (v!41627 (underlying!9042 (cache!4452 cacheUp!947))))))) (array_inv!5048 (_values!4687 (v!41626 (underlying!9041 (v!41627 (underlying!9042 (cache!4452 cacheUp!947))))))) e!2666050))))

(declare-fun setIsEmpty!26466 () Bool)

(declare-fun setRes!26466 () Bool)

(assert (=> setIsEmpty!26466 setRes!26466))

(declare-fun b!4291465 () Bool)

(declare-fun res!1759855 () Bool)

(declare-fun e!2666031 () Bool)

(assert (=> b!4291465 (=> (not res!1759855) (not e!2666031))))

(declare-datatypes ((tuple2!45368 0))(
  ( (tuple2!45369 (_1!25906 (InoxSet Context!5702)) (_2!25906 Int)) )
))
(declare-datatypes ((Hashable!4323 0))(
  ( (HashableExt!4322 (__x!29246 Int)) )
))
(declare-datatypes ((tuple2!45370 0))(
  ( (tuple2!45371 (_1!25907 tuple2!45368) (_2!25907 Int)) )
))
(declare-datatypes ((List!47832 0))(
  ( (Nil!47708) (Cons!47708 (h!53128 tuple2!45370) (t!354436 List!47832)) )
))
(declare-datatypes ((array!15752 0))(
  ( (array!15753 (arr!7036 (Array (_ BitVec 32) List!47832)) (size!35021 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8814 0))(
  ( (LongMapFixedSize!8815 (defaultEntry!4792 Int) (mask!12857 (_ BitVec 32)) (extraKeys!4656 (_ BitVec 32)) (zeroValue!4666 List!47832) (minValue!4666 List!47832) (_size!8857 (_ BitVec 32)) (_keys!4707 array!15748) (_values!4688 array!15752) (_vacant!4468 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17437 0))(
  ( (Cell!17438 (v!41628 LongMapFixedSize!8814)) )
))
(declare-datatypes ((MutLongMap!4407 0))(
  ( (LongMap!4407 (underlying!9043 Cell!17437)) (MutLongMapExt!4406 (__x!29247 Int)) )
))
(declare-datatypes ((Cell!17439 0))(
  ( (Cell!17440 (v!41629 MutLongMap!4407)) )
))
(declare-datatypes ((MutableMap!4313 0))(
  ( (MutableMapExt!4312 (__x!29248 Int)) (HashMap!4313 (underlying!9044 Cell!17439) (hashF!6355 Hashable!4323) (_size!8858 (_ BitVec 32)) (defaultValue!4484 Int)) )
))
(declare-datatypes ((List!47833 0))(
  ( (Nil!47709) (Cons!47709 (h!53129 C!26120) (t!354437 List!47833)) )
))
(declare-datatypes ((IArray!28865 0))(
  ( (IArray!28866 (innerList!14490 List!47833)) )
))
(declare-datatypes ((Conc!14402 0))(
  ( (Node!14402 (left!35419 Conc!14402) (right!35749 Conc!14402) (csize!29034 Int) (cheight!14613 Int)) (Leaf!22284 (xs!17708 IArray!28865) (csize!29035 Int)) (Empty!14402) )
))
(declare-datatypes ((BalanceConc!28294 0))(
  ( (BalanceConc!28295 (c!730377 Conc!14402)) )
))
(declare-datatypes ((CacheFindLongestMatch!492 0))(
  ( (CacheFindLongestMatch!493 (cache!4453 MutableMap!4313) (totalInput!4365 BalanceConc!28294)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!492)

(declare-fun z!3765 () (InoxSet Context!5702))

(declare-fun from!999 () Int)

(get-info :version)

(declare-datatypes ((Option!10134 0))(
  ( (None!10133) (Some!10133 (v!41630 Int)) )
))
(declare-fun get!15446 (CacheFindLongestMatch!492 (InoxSet Context!5702) Int) Option!10134)

(assert (=> b!4291465 (= res!1759855 (not ((_ is Some!10133) (get!15446 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun mapIsEmpty!19852 () Bool)

(declare-fun mapRes!19853 () Bool)

(assert (=> mapIsEmpty!19852 mapRes!19853))

(declare-fun b!4291466 () Bool)

(declare-fun e!2666047 () Bool)

(assert (=> b!4291466 (= e!2666047 e!2666031)))

(declare-fun res!1759852 () Bool)

(assert (=> b!4291466 (=> (not res!1759852) (not e!2666031))))

(declare-fun lt!1517003 () Int)

(declare-fun totalInput!812 () BalanceConc!28294)

(declare-fun totalInputSize!257 () Int)

(assert (=> b!4291466 (= res!1759852 (and (<= from!999 lt!1517003) (= totalInputSize!257 lt!1517003) (= (totalInput!4365 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35022 (BalanceConc!28294) Int)

(assert (=> b!4291466 (= lt!1517003 (size!35022 totalInput!812))))

(declare-fun b!4291467 () Bool)

(declare-fun e!2666038 () Int)

(assert (=> b!4291467 (= e!2666038 0)))

(declare-fun b!4291468 () Bool)

(declare-fun e!2666021 () Bool)

(declare-fun tp!1316406 () Bool)

(declare-fun inv!63220 (Conc!14402) Bool)

(assert (=> b!4291468 (= e!2666021 (and (inv!63220 (c!730377 totalInput!812)) tp!1316406))))

(declare-fun e!2666034 () Bool)

(declare-fun e!2666035 () Bool)

(assert (=> b!4291469 (= e!2666034 (and e!2666035 tp!1316425))))

(declare-fun b!4291470 () Bool)

(declare-fun e!2666049 () Bool)

(declare-fun e!2666043 () Bool)

(assert (=> b!4291470 (= e!2666049 e!2666043)))

(declare-fun b!4291471 () Bool)

(declare-fun e!2666024 () Bool)

(assert (=> b!4291471 (= e!2666043 e!2666024)))

(declare-fun b!4291472 () Bool)

(declare-fun e!2666045 () Bool)

(declare-fun e!2666046 () Bool)

(assert (=> b!4291472 (= e!2666045 e!2666046)))

(declare-datatypes ((tuple3!5426 0))(
  ( (tuple3!5427 (_1!25908 Regex!12961) (_2!25908 Context!5702) (_3!3222 C!26120)) )
))
(declare-datatypes ((tuple2!45372 0))(
  ( (tuple2!45373 (_1!25909 tuple3!5426) (_2!25909 (InoxSet Context!5702))) )
))
(declare-datatypes ((List!47834 0))(
  ( (Nil!47710) (Cons!47710 (h!53130 tuple2!45372) (t!354438 List!47834)) )
))
(declare-datatypes ((Hashable!4324 0))(
  ( (HashableExt!4323 (__x!29249 Int)) )
))
(declare-datatypes ((array!15754 0))(
  ( (array!15755 (arr!7037 (Array (_ BitVec 32) List!47834)) (size!35023 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8816 0))(
  ( (LongMapFixedSize!8817 (defaultEntry!4793 Int) (mask!12858 (_ BitVec 32)) (extraKeys!4657 (_ BitVec 32)) (zeroValue!4667 List!47834) (minValue!4667 List!47834) (_size!8859 (_ BitVec 32)) (_keys!4708 array!15748) (_values!4689 array!15754) (_vacant!4469 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17441 0))(
  ( (Cell!17442 (v!41631 LongMapFixedSize!8816)) )
))
(declare-datatypes ((MutLongMap!4408 0))(
  ( (LongMap!4408 (underlying!9045 Cell!17441)) (MutLongMapExt!4407 (__x!29250 Int)) )
))
(declare-datatypes ((Cell!17443 0))(
  ( (Cell!17444 (v!41632 MutLongMap!4408)) )
))
(declare-datatypes ((MutableMap!4314 0))(
  ( (MutableMapExt!4313 (__x!29251 Int)) (HashMap!4314 (underlying!9046 Cell!17443) (hashF!6356 Hashable!4324) (_size!8860 (_ BitVec 32)) (defaultValue!4485 Int)) )
))
(declare-datatypes ((CacheDown!2930 0))(
  ( (CacheDown!2931 (cache!4454 MutableMap!4314)) )
))
(declare-fun cacheDown!1066 () CacheDown!2930)

(declare-datatypes ((tuple4!1018 0))(
  ( (tuple4!1019 (_1!25910 Int) (_2!25910 CacheFindLongestMatch!492) (_3!3223 CacheDown!2930) (_4!509 CacheUp!2810)) )
))
(declare-fun e!2666057 () tuple4!1018)

(declare-fun b!4291473 () Bool)

(assert (=> b!4291473 (= e!2666057 (tuple4!1019 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4291474 () Bool)

(declare-fun e!2666032 () Bool)

(declare-fun e!2666048 () Bool)

(declare-fun lt!1517005 () MutLongMap!4406)

(assert (=> b!4291474 (= e!2666032 (and e!2666048 ((_ is LongMap!4406) lt!1517005)))))

(assert (=> b!4291474 (= lt!1517005 (v!41627 (underlying!9042 (cache!4452 cacheUp!947))))))

(declare-fun b!4291475 () Bool)

(declare-fun res!1759854 () Bool)

(declare-datatypes ((tuple4!1020 0))(
  ( (tuple4!1021 (_1!25911 Int) (_2!25911 CacheUp!2810) (_3!3224 CacheDown!2930) (_4!510 CacheFindLongestMatch!492)) )
))
(declare-fun lt!1517004 () tuple4!1020)

(declare-fun valid!3417 (CacheFindLongestMatch!492) Bool)

(assert (=> b!4291475 (= res!1759854 (valid!3417 (_4!510 lt!1517004)))))

(declare-fun e!2666028 () Bool)

(assert (=> b!4291475 (=> (not res!1759854) (not e!2666028))))

(declare-fun mapIsEmpty!19853 () Bool)

(declare-fun mapRes!19852 () Bool)

(assert (=> mapIsEmpty!19853 mapRes!19852))

(declare-fun res!1759848 () Bool)

(assert (=> start!412100 (=> (not res!1759848) (not e!2666047))))

(assert (=> start!412100 (= res!1759848 (>= from!999 0))))

(assert (=> start!412100 e!2666047))

(declare-fun e!2666023 () Bool)

(declare-fun inv!63221 (CacheDown!2930) Bool)

(assert (=> start!412100 (and (inv!63221 cacheDown!1066) e!2666023)))

(declare-fun e!2666054 () Bool)

(declare-fun inv!63222 (CacheFindLongestMatch!492) Bool)

(assert (=> start!412100 (and (inv!63222 cacheFindLongestMatch!183) e!2666054)))

(declare-fun condSetEmpty!26466 () Bool)

(assert (=> start!412100 (= condSetEmpty!26466 (= z!3765 ((as const (Array Context!5702 Bool)) false)))))

(assert (=> start!412100 setRes!26466))

(assert (=> start!412100 true))

(declare-fun inv!63223 (BalanceConc!28294) Bool)

(assert (=> start!412100 (and (inv!63223 totalInput!812) e!2666021)))

(declare-fun e!2666053 () Bool)

(declare-fun inv!63224 (CacheUp!2810) Bool)

(assert (=> start!412100 (and (inv!63224 cacheUp!947) e!2666053)))

(declare-fun b!4291476 () Bool)

(assert (=> b!4291476 (= e!2666031 (not true))))

(declare-fun e!2666052 () Bool)

(assert (=> b!4291476 e!2666052))

(declare-fun c!730372 () Bool)

(declare-fun lt!1517001 () Bool)

(assert (=> b!4291476 (= c!730372 lt!1517001)))

(declare-fun lt!1517002 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!31 ((InoxSet Context!5702) Int BalanceConc!28294 Int) Int)

(assert (=> b!4291476 (= lt!1517002 (findLongestMatchInnerZipperFastV2!31 z!3765 from!999 totalInput!812 totalInputSize!257))))

(declare-fun lt!1516999 () tuple4!1018)

(assert (=> b!4291476 (= lt!1516999 e!2666057)))

(declare-fun c!730370 () Bool)

(assert (=> b!4291476 (= c!730370 lt!1517001)))

(declare-fun e!2666041 () Bool)

(assert (=> b!4291476 (= lt!1517001 e!2666041)))

(declare-fun res!1759850 () Bool)

(assert (=> b!4291476 (=> res!1759850 e!2666041)))

(assert (=> b!4291476 (= res!1759850 (= from!999 totalInputSize!257))))

(declare-fun b!4291477 () Bool)

(declare-fun lt!1517000 () MutLongMap!4408)

(assert (=> b!4291477 (= e!2666035 (and e!2666049 ((_ is LongMap!4408) lt!1517000)))))

(assert (=> b!4291477 (= lt!1517000 (v!41632 (underlying!9046 (cache!4454 cacheDown!1066))))))

(declare-fun b!4291478 () Bool)

(declare-fun c!730375 () Bool)

(declare-datatypes ((tuple3!5428 0))(
  ( (tuple3!5429 (_1!25912 (InoxSet Context!5702)) (_2!25912 CacheUp!2810) (_3!3225 CacheDown!2930)) )
))
(declare-fun lt!1516998 () tuple3!5428)

(declare-fun nullableZipper!763 ((InoxSet Context!5702)) Bool)

(assert (=> b!4291478 (= c!730375 (nullableZipper!763 (_1!25912 lt!1516998)))))

(declare-fun e!2666026 () Int)

(declare-fun e!2666025 () Int)

(assert (=> b!4291478 (= e!2666026 e!2666025)))

(declare-fun b!4291479 () Bool)

(declare-fun lostCauseZipper!643 ((InoxSet Context!5702)) Bool)

(assert (=> b!4291479 (= e!2666041 (lostCauseZipper!643 z!3765))))

(declare-fun mapNonEmpty!19852 () Bool)

(declare-fun tp!1316404 () Bool)

(declare-fun tp!1316403 () Bool)

(assert (=> mapNonEmpty!19852 (= mapRes!19853 (and tp!1316404 tp!1316403))))

(declare-fun mapKey!19854 () (_ BitVec 32))

(declare-fun mapRest!19854 () (Array (_ BitVec 32) List!47831))

(declare-fun mapValue!19853 () List!47831)

(assert (=> mapNonEmpty!19852 (= (arr!7035 (_values!4687 (v!41626 (underlying!9041 (v!41627 (underlying!9042 (cache!4452 cacheUp!947))))))) (store mapRest!19854 mapKey!19854 mapValue!19853))))

(declare-fun b!4291480 () Bool)

(assert (=> b!4291480 (= e!2666026 (+ 1 (_1!25911 lt!1517004)))))

(declare-fun b!4291481 () Bool)

(declare-fun e!2666042 () Bool)

(assert (=> b!4291481 (= e!2666042 e!2666044)))

(declare-fun mapIsEmpty!19854 () Bool)

(declare-fun mapRes!19854 () Bool)

(assert (=> mapIsEmpty!19854 mapRes!19854))

(declare-fun b!4291482 () Bool)

(declare-fun e!2666036 () Bool)

(declare-fun tp!1316405 () Bool)

(assert (=> b!4291482 (= e!2666036 (and tp!1316405 mapRes!19854))))

(declare-fun condMapEmpty!19852 () Bool)

(declare-fun mapDefault!19854 () List!47834)

(assert (=> b!4291482 (= condMapEmpty!19852 (= (arr!7037 (_values!4689 (v!41631 (underlying!9045 (v!41632 (underlying!9046 (cache!4454 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47834)) mapDefault!19854)))))

(declare-fun b!4291483 () Bool)

(assert (=> b!4291483 (= e!2666025 1)))

(declare-fun b!4291484 () Bool)

(declare-fun e!2666055 () Bool)

(declare-fun tp!1316417 () Bool)

(assert (=> b!4291484 (= e!2666055 tp!1316417)))

(declare-fun b!4291485 () Bool)

(declare-fun res!1759849 () Bool)

(declare-fun valid!3418 (CacheDown!2930) Bool)

(assert (=> b!4291485 (= res!1759849 (valid!3418 (_3!3224 lt!1517004)))))

(assert (=> b!4291485 (=> (not res!1759849) (not e!2666028))))

(declare-fun mapNonEmpty!19853 () Bool)

(declare-fun tp!1316415 () Bool)

(declare-fun tp!1316413 () Bool)

(assert (=> mapNonEmpty!19853 (= mapRes!19852 (and tp!1316415 tp!1316413))))

(declare-fun mapValue!19852 () List!47832)

(declare-fun mapKey!19852 () (_ BitVec 32))

(declare-fun mapRest!19852 () (Array (_ BitVec 32) List!47832))

(assert (=> mapNonEmpty!19853 (= (arr!7036 (_values!4688 (v!41628 (underlying!9043 (v!41629 (underlying!9044 (cache!4453 cacheFindLongestMatch!183))))))) (store mapRest!19852 mapKey!19852 mapValue!19852))))

(declare-fun b!4291486 () Bool)

(declare-fun tp!1316423 () Bool)

(assert (=> b!4291486 (= e!2666050 (and tp!1316423 mapRes!19853))))

(declare-fun condMapEmpty!19853 () Bool)

(declare-fun mapDefault!19852 () List!47831)

(assert (=> b!4291486 (= condMapEmpty!19853 (= (arr!7035 (_values!4687 (v!41626 (underlying!9041 (v!41627 (underlying!9042 (cache!4452 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47831)) mapDefault!19852)))))

(declare-fun b!4291487 () Bool)

(assert (=> b!4291487 (= e!2666038 1)))

(declare-fun b!4291488 () Bool)

(declare-fun e!2666051 () Bool)

(assert (=> b!4291488 (= e!2666053 e!2666051)))

(declare-fun b!4291489 () Bool)

(assert (=> b!4291489 (= e!2666048 e!2666042)))

(assert (=> b!4291490 (= e!2666051 (and e!2666032 tp!1316420))))

(declare-fun b!4291491 () Bool)

(declare-fun c!730373 () Bool)

(declare-fun lt!1516997 () (InoxSet Context!5702))

(assert (=> b!4291491 (= c!730373 (nullableZipper!763 lt!1516997))))

(declare-fun e!2666022 () Int)

(assert (=> b!4291491 (= e!2666022 e!2666038)))

(declare-fun b!4291492 () Bool)

(declare-fun e!2666027 () Bool)

(declare-fun tp!1316408 () Bool)

(assert (=> b!4291492 (= e!2666027 (and (inv!63220 (c!730377 (totalInput!4365 cacheFindLongestMatch!183))) tp!1316408))))

(declare-fun b!4291493 () Bool)

(declare-fun e!2666029 () Bool)

(assert (=> b!4291493 (= e!2666046 e!2666029)))

(declare-fun e!2666033 () Bool)

(declare-fun b!4291494 () Bool)

(assert (=> b!4291494 (= e!2666054 (and e!2666033 (inv!63223 (totalInput!4365 cacheFindLongestMatch!183)) e!2666027))))

(declare-fun tp!1316409 () Bool)

(declare-fun e!2666037 () Bool)

(declare-fun tp!1316410 () Bool)

(declare-fun array_inv!5049 (array!15752) Bool)

(assert (=> b!4291495 (= e!2666029 (and tp!1316424 tp!1316410 tp!1316409 (array_inv!5047 (_keys!4707 (v!41628 (underlying!9043 (v!41629 (underlying!9044 (cache!4453 cacheFindLongestMatch!183))))))) (array_inv!5049 (_values!4688 (v!41628 (underlying!9043 (v!41629 (underlying!9044 (cache!4453 cacheFindLongestMatch!183))))))) e!2666037))))

(declare-fun b!4291496 () Bool)

(assert (=> b!4291496 (= e!2666023 e!2666034)))

(declare-fun b!4291497 () Bool)

(declare-fun tp!1316419 () Bool)

(assert (=> b!4291497 (= e!2666037 (and tp!1316419 mapRes!19852))))

(declare-fun condMapEmpty!19854 () Bool)

(declare-fun mapDefault!19853 () List!47832)

(assert (=> b!4291497 (= condMapEmpty!19854 (= (arr!7036 (_values!4688 (v!41628 (underlying!9043 (v!41629 (underlying!9044 (cache!4453 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47832)) mapDefault!19853)))))

(declare-fun b!4291498 () Bool)

(assert (=> b!4291498 (= e!2666028 (= (totalInput!4365 (_4!510 lt!1517004)) totalInput!812))))

(declare-fun b!4291499 () Bool)

(declare-fun e!2666056 () Bool)

(declare-fun lt!1516996 () MutLongMap!4407)

(assert (=> b!4291499 (= e!2666056 (and e!2666045 ((_ is LongMap!4407) lt!1516996)))))

(assert (=> b!4291499 (= lt!1516996 (v!41629 (underlying!9044 (cache!4453 cacheFindLongestMatch!183))))))

(declare-fun mapNonEmpty!19854 () Bool)

(declare-fun tp!1316412 () Bool)

(declare-fun tp!1316418 () Bool)

(assert (=> mapNonEmpty!19854 (= mapRes!19854 (and tp!1316412 tp!1316418))))

(declare-fun mapRest!19853 () (Array (_ BitVec 32) List!47834))

(declare-fun mapValue!19854 () List!47834)

(declare-fun mapKey!19853 () (_ BitVec 32))

(assert (=> mapNonEmpty!19854 (= (arr!7037 (_values!4689 (v!41631 (underlying!9045 (v!41632 (underlying!9046 (cache!4454 cacheDown!1066))))))) (store mapRest!19853 mapKey!19853 mapValue!19854))))

(declare-fun b!4291500 () Bool)

(declare-fun lt!1517006 () Int)

(assert (=> b!4291500 (= e!2666022 (+ 1 lt!1517006))))

(declare-fun b!4291501 () Bool)

(assert (=> b!4291501 (= e!2666052 (= lt!1517002 0))))

(declare-fun tp!1316414 () Bool)

(declare-fun setElem!26466 () Context!5702)

(declare-fun setNonEmpty!26466 () Bool)

(declare-fun inv!63225 (Context!5702) Bool)

(assert (=> setNonEmpty!26466 (= setRes!26466 (and tp!1316414 (inv!63225 setElem!26466) e!2666055))))

(declare-fun setRest!26466 () (InoxSet Context!5702))

(assert (=> setNonEmpty!26466 (= z!3765 ((_ map or) (store ((as const (Array Context!5702 Bool)) false) setElem!26466 true) setRest!26466))))

(declare-fun b!4291502 () Bool)

(assert (=> b!4291502 (= e!2666052 (= lt!1517002 e!2666022))))

(declare-fun derivationStepZipper!543 ((InoxSet Context!5702) C!26120) (InoxSet Context!5702))

(declare-fun apply!10832 (BalanceConc!28294 Int) C!26120)

(assert (=> b!4291502 (= lt!1516997 (derivationStepZipper!543 z!3765 (apply!10832 totalInput!812 from!999)))))

(assert (=> b!4291502 (= lt!1517006 (findLongestMatchInnerZipperFastV2!31 lt!1516997 (+ 1 from!999) totalInput!812 totalInputSize!257))))

(declare-fun c!730371 () Bool)

(assert (=> b!4291502 (= c!730371 (> lt!1517006 0))))

(declare-fun tp!1316426 () Bool)

(declare-fun tp!1316422 () Bool)

(declare-fun array_inv!5050 (array!15754) Bool)

(assert (=> b!4291503 (= e!2666024 (and tp!1316421 tp!1316426 tp!1316422 (array_inv!5047 (_keys!4708 (v!41631 (underlying!9045 (v!41632 (underlying!9046 (cache!4454 cacheDown!1066))))))) (array_inv!5050 (_values!4689 (v!41631 (underlying!9045 (v!41632 (underlying!9046 (cache!4454 cacheDown!1066))))))) e!2666036))))

(declare-fun b!4291504 () Bool)

(assert (=> b!4291504 (= e!2666025 0)))

(declare-fun b!4291505 () Bool)

(assert (=> b!4291505 (= e!2666057 (tuple4!1019 e!2666026 (_4!510 lt!1517004) (_3!3224 lt!1517004) (_2!25911 lt!1517004)))))

(declare-fun derivationStepZipperMem!129 ((InoxSet Context!5702) C!26120 CacheUp!2810 CacheDown!2930) tuple3!5428)

(assert (=> b!4291505 (= lt!1516998 (derivationStepZipperMem!129 z!3765 (apply!10832 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!13 ((InoxSet Context!5702) Int BalanceConc!28294 Int CacheUp!2810 CacheDown!2930 CacheFindLongestMatch!492) tuple4!1020)

(assert (=> b!4291505 (= lt!1517004 (findLongestMatchInnerZipperFastV2Mem!13 (_1!25912 lt!1516998) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25912 lt!1516998) (_3!3225 lt!1516998) cacheFindLongestMatch!183))))

(declare-fun res!1759853 () Bool)

(assert (=> b!4291505 (= res!1759853 (= (_1!25911 lt!1517004) (findLongestMatchInnerZipperFastV2!31 (_1!25912 lt!1516998) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(assert (=> b!4291505 (=> (not res!1759853) (not e!2666028))))

(assert (=> b!4291505 e!2666028))

(declare-fun c!730374 () Bool)

(assert (=> b!4291505 (= c!730374 (> (_1!25911 lt!1517004) 0))))

(assert (=> b!4291506 (= e!2666033 (and e!2666056 tp!1316411))))

(declare-fun b!4291507 () Bool)

(declare-fun res!1759851 () Bool)

(declare-fun valid!3419 (CacheUp!2810) Bool)

(assert (=> b!4291507 (= res!1759851 (valid!3419 (_2!25911 lt!1517004)))))

(assert (=> b!4291507 (=> (not res!1759851) (not e!2666028))))

(assert (= (and start!412100 res!1759848) b!4291466))

(assert (= (and b!4291466 res!1759852) b!4291465))

(assert (= (and b!4291465 res!1759855) b!4291476))

(assert (= (and b!4291476 (not res!1759850)) b!4291479))

(assert (= (and b!4291476 c!730370) b!4291473))

(assert (= (and b!4291476 (not c!730370)) b!4291505))

(assert (= (and b!4291505 res!1759853) b!4291507))

(assert (= (and b!4291507 res!1759851) b!4291485))

(assert (= (and b!4291485 res!1759849) b!4291475))

(assert (= (and b!4291475 res!1759854) b!4291498))

(assert (= (and b!4291505 c!730374) b!4291480))

(assert (= (and b!4291505 (not c!730374)) b!4291478))

(assert (= (and b!4291478 c!730375) b!4291483))

(assert (= (and b!4291478 (not c!730375)) b!4291504))

(assert (= (and b!4291476 c!730372) b!4291501))

(assert (= (and b!4291476 (not c!730372)) b!4291502))

(assert (= (and b!4291502 c!730371) b!4291500))

(assert (= (and b!4291502 (not c!730371)) b!4291491))

(assert (= (and b!4291491 c!730373) b!4291487))

(assert (= (and b!4291491 (not c!730373)) b!4291467))

(assert (= (and b!4291482 condMapEmpty!19852) mapIsEmpty!19854))

(assert (= (and b!4291482 (not condMapEmpty!19852)) mapNonEmpty!19854))

(assert (= b!4291503 b!4291482))

(assert (= b!4291471 b!4291503))

(assert (= b!4291470 b!4291471))

(assert (= (and b!4291477 ((_ is LongMap!4408) (v!41632 (underlying!9046 (cache!4454 cacheDown!1066))))) b!4291470))

(assert (= b!4291469 b!4291477))

(assert (= (and b!4291496 ((_ is HashMap!4314) (cache!4454 cacheDown!1066))) b!4291469))

(assert (= start!412100 b!4291496))

(assert (= (and b!4291497 condMapEmpty!19854) mapIsEmpty!19853))

(assert (= (and b!4291497 (not condMapEmpty!19854)) mapNonEmpty!19853))

(assert (= b!4291495 b!4291497))

(assert (= b!4291493 b!4291495))

(assert (= b!4291472 b!4291493))

(assert (= (and b!4291499 ((_ is LongMap!4407) (v!41629 (underlying!9044 (cache!4453 cacheFindLongestMatch!183))))) b!4291472))

(assert (= b!4291506 b!4291499))

(assert (= (and b!4291494 ((_ is HashMap!4313) (cache!4453 cacheFindLongestMatch!183))) b!4291506))

(assert (= b!4291494 b!4291492))

(assert (= start!412100 b!4291494))

(assert (= (and start!412100 condSetEmpty!26466) setIsEmpty!26466))

(assert (= (and start!412100 (not condSetEmpty!26466)) setNonEmpty!26466))

(assert (= setNonEmpty!26466 b!4291484))

(assert (= start!412100 b!4291468))

(assert (= (and b!4291486 condMapEmpty!19853) mapIsEmpty!19852))

(assert (= (and b!4291486 (not condMapEmpty!19853)) mapNonEmpty!19852))

(assert (= b!4291464 b!4291486))

(assert (= b!4291481 b!4291464))

(assert (= b!4291489 b!4291481))

(assert (= (and b!4291474 ((_ is LongMap!4406) (v!41627 (underlying!9042 (cache!4452 cacheUp!947))))) b!4291489))

(assert (= b!4291490 b!4291474))

(assert (= (and b!4291488 ((_ is HashMap!4312) (cache!4452 cacheUp!947))) b!4291490))

(assert (= start!412100 b!4291488))

(declare-fun m!4885409 () Bool)

(assert (=> setNonEmpty!26466 m!4885409))

(declare-fun m!4885411 () Bool)

(assert (=> b!4291479 m!4885411))

(declare-fun m!4885413 () Bool)

(assert (=> b!4291502 m!4885413))

(assert (=> b!4291502 m!4885413))

(declare-fun m!4885415 () Bool)

(assert (=> b!4291502 m!4885415))

(declare-fun m!4885417 () Bool)

(assert (=> b!4291502 m!4885417))

(declare-fun m!4885419 () Bool)

(assert (=> b!4291494 m!4885419))

(declare-fun m!4885421 () Bool)

(assert (=> start!412100 m!4885421))

(declare-fun m!4885423 () Bool)

(assert (=> start!412100 m!4885423))

(declare-fun m!4885425 () Bool)

(assert (=> start!412100 m!4885425))

(declare-fun m!4885427 () Bool)

(assert (=> start!412100 m!4885427))

(declare-fun m!4885429 () Bool)

(assert (=> b!4291464 m!4885429))

(declare-fun m!4885431 () Bool)

(assert (=> b!4291464 m!4885431))

(declare-fun m!4885433 () Bool)

(assert (=> mapNonEmpty!19852 m!4885433))

(declare-fun m!4885435 () Bool)

(assert (=> b!4291475 m!4885435))

(declare-fun m!4885437 () Bool)

(assert (=> b!4291495 m!4885437))

(declare-fun m!4885439 () Bool)

(assert (=> b!4291495 m!4885439))

(declare-fun m!4885441 () Bool)

(assert (=> mapNonEmpty!19853 m!4885441))

(declare-fun m!4885443 () Bool)

(assert (=> b!4291507 m!4885443))

(declare-fun m!4885445 () Bool)

(assert (=> b!4291492 m!4885445))

(declare-fun m!4885447 () Bool)

(assert (=> b!4291491 m!4885447))

(assert (=> b!4291505 m!4885413))

(assert (=> b!4291505 m!4885413))

(declare-fun m!4885449 () Bool)

(assert (=> b!4291505 m!4885449))

(declare-fun m!4885451 () Bool)

(assert (=> b!4291505 m!4885451))

(declare-fun m!4885453 () Bool)

(assert (=> b!4291505 m!4885453))

(declare-fun m!4885455 () Bool)

(assert (=> b!4291465 m!4885455))

(declare-fun m!4885457 () Bool)

(assert (=> b!4291476 m!4885457))

(declare-fun m!4885459 () Bool)

(assert (=> mapNonEmpty!19854 m!4885459))

(declare-fun m!4885461 () Bool)

(assert (=> b!4291466 m!4885461))

(declare-fun m!4885463 () Bool)

(assert (=> b!4291485 m!4885463))

(declare-fun m!4885465 () Bool)

(assert (=> b!4291478 m!4885465))

(declare-fun m!4885467 () Bool)

(assert (=> b!4291468 m!4885467))

(declare-fun m!4885469 () Bool)

(assert (=> b!4291503 m!4885469))

(declare-fun m!4885471 () Bool)

(assert (=> b!4291503 m!4885471))

(check-sat (not setNonEmpty!26466) (not b!4291507) (not b!4291502) (not b!4291468) (not b!4291479) (not b!4291486) (not b!4291505) b_and!338695 (not b!4291466) (not b!4291492) (not b_next!128183) b_and!338691 (not start!412100) (not b!4291464) (not b!4291465) (not b_next!128177) b_and!338689 (not b!4291484) b_and!338693 b_and!338687 (not b!4291482) (not mapNonEmpty!19854) (not mapNonEmpty!19853) b_and!338697 (not b!4291495) (not mapNonEmpty!19852) (not b!4291485) (not b!4291494) (not b!4291491) (not b!4291475) (not b_next!128185) (not b!4291497) (not b!4291503) (not b_next!128181) (not b_next!128179) (not b!4291478) (not b_next!128175) (not b!4291476))
(check-sat b_and!338691 b_and!338697 b_and!338695 (not b_next!128185) (not b_next!128183) (not b_next!128175) (not b_next!128177) b_and!338689 b_and!338693 b_and!338687 (not b_next!128181) (not b_next!128179))
