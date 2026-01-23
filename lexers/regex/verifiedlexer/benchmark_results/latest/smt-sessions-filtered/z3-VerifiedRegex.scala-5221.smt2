; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268772 () Bool)

(assert start!268772)

(declare-fun b!2781434 () Bool)

(declare-fun b_free!78485 () Bool)

(declare-fun b_next!79189 () Bool)

(assert (=> b!2781434 (= b_free!78485 (not b_next!79189))))

(declare-fun tp!880264 () Bool)

(declare-fun b_and!203223 () Bool)

(assert (=> b!2781434 (= tp!880264 b_and!203223)))

(declare-fun b!2781400 () Bool)

(declare-fun b_free!78487 () Bool)

(declare-fun b_next!79191 () Bool)

(assert (=> b!2781400 (= b_free!78487 (not b_next!79191))))

(declare-fun tp!880271 () Bool)

(declare-fun b_and!203225 () Bool)

(assert (=> b!2781400 (= tp!880271 b_and!203225)))

(declare-fun b!2781428 () Bool)

(declare-fun b_free!78489 () Bool)

(declare-fun b_next!79193 () Bool)

(assert (=> b!2781428 (= b_free!78489 (not b_next!79193))))

(declare-fun tp!880275 () Bool)

(declare-fun b_and!203227 () Bool)

(assert (=> b!2781428 (= tp!880275 b_and!203227)))

(declare-fun b!2781432 () Bool)

(declare-fun b_free!78491 () Bool)

(declare-fun b_next!79195 () Bool)

(assert (=> b!2781432 (= b_free!78491 (not b_next!79195))))

(declare-fun tp!880273 () Bool)

(declare-fun b_and!203229 () Bool)

(assert (=> b!2781432 (= tp!880273 b_and!203229)))

(declare-fun b!2781379 () Bool)

(declare-fun e!1754265 () Bool)

(declare-datatypes ((C!16372 0))(
  ( (C!16373 (val!10120 Int)) )
))
(declare-datatypes ((Regex!8107 0))(
  ( (ElementMatch!8107 (c!452129 C!16372)) (Concat!13195 (regOne!16726 Regex!8107) (regTwo!16726 Regex!8107)) (EmptyExpr!8107) (Star!8107 (reg!8436 Regex!8107)) (EmptyLang!8107) (Union!8107 (regOne!16727 Regex!8107) (regTwo!16727 Regex!8107)) )
))
(declare-datatypes ((List!32192 0))(
  ( (Nil!32092) (Cons!32092 (h!37512 Regex!8107) (t!228332 List!32192)) )
))
(declare-datatypes ((Context!4650 0))(
  ( (Context!4651 (exprs!2825 List!32192)) )
))
(declare-datatypes ((tuple2!32334 0))(
  ( (tuple2!32335 (_1!19103 Context!4650) (_2!19103 C!16372)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32336 0))(
  ( (tuple2!32337 (_1!19104 tuple2!32334) (_2!19104 (InoxSet Context!4650))) )
))
(declare-datatypes ((List!32193 0))(
  ( (Nil!32093) (Cons!32093 (h!37513 tuple2!32336) (t!228333 List!32193)) )
))
(declare-datatypes ((Hashable!3737 0))(
  ( (HashableExt!3736 (__x!21113 Int)) )
))
(declare-datatypes ((array!13598 0))(
  ( (array!13599 (arr!6061 (Array (_ BitVec 32) List!32193)) (size!24886 (_ BitVec 32))) )
))
(declare-datatypes ((array!13600 0))(
  ( (array!13601 (arr!6062 (Array (_ BitVec 32) (_ BitVec 64))) (size!24887 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7642 0))(
  ( (LongMapFixedSize!7643 (defaultEntry!4206 Int) (mask!9611 (_ BitVec 32)) (extraKeys!4070 (_ BitVec 32)) (zeroValue!4080 List!32193) (minValue!4080 List!32193) (_size!7685 (_ BitVec 32)) (_keys!4121 array!13600) (_values!4102 array!13598) (_vacant!3882 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15093 0))(
  ( (Cell!15094 (v!33702 LongMapFixedSize!7642)) )
))
(declare-datatypes ((MutLongMap!3821 0))(
  ( (LongMap!3821 (underlying!7845 Cell!15093)) (MutLongMapExt!3820 (__x!21114 Int)) )
))
(declare-datatypes ((Cell!15095 0))(
  ( (Cell!15096 (v!33703 MutLongMap!3821)) )
))
(declare-datatypes ((MutableMap!3727 0))(
  ( (MutableMapExt!3726 (__x!21115 Int)) (HashMap!3727 (underlying!7846 Cell!15095) (hashF!5769 Hashable!3737) (_size!7686 (_ BitVec 32)) (defaultValue!3898 Int)) )
))
(declare-datatypes ((CacheUp!2432 0))(
  ( (CacheUp!2433 (cache!3870 MutableMap!3727)) )
))
(declare-datatypes ((tuple3!4932 0))(
  ( (tuple3!4933 (_1!19105 Regex!8107) (_2!19105 Context!4650) (_3!2936 C!16372)) )
))
(declare-datatypes ((tuple2!32338 0))(
  ( (tuple2!32339 (_1!19106 tuple3!4932) (_2!19106 (InoxSet Context!4650))) )
))
(declare-datatypes ((List!32194 0))(
  ( (Nil!32094) (Cons!32094 (h!37514 tuple2!32338) (t!228334 List!32194)) )
))
(declare-datatypes ((array!13602 0))(
  ( (array!13603 (arr!6063 (Array (_ BitVec 32) List!32194)) (size!24888 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7644 0))(
  ( (LongMapFixedSize!7645 (defaultEntry!4207 Int) (mask!9612 (_ BitVec 32)) (extraKeys!4071 (_ BitVec 32)) (zeroValue!4081 List!32194) (minValue!4081 List!32194) (_size!7687 (_ BitVec 32)) (_keys!4122 array!13600) (_values!4103 array!13602) (_vacant!3883 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15097 0))(
  ( (Cell!15098 (v!33704 LongMapFixedSize!7644)) )
))
(declare-datatypes ((MutLongMap!3822 0))(
  ( (LongMap!3822 (underlying!7847 Cell!15097)) (MutLongMapExt!3821 (__x!21116 Int)) )
))
(declare-datatypes ((Cell!15099 0))(
  ( (Cell!15100 (v!33705 MutLongMap!3822)) )
))
(declare-datatypes ((Hashable!3738 0))(
  ( (HashableExt!3737 (__x!21117 Int)) )
))
(declare-datatypes ((MutableMap!3728 0))(
  ( (MutableMapExt!3727 (__x!21118 Int)) (HashMap!3728 (underlying!7848 Cell!15099) (hashF!5770 Hashable!3738) (_size!7688 (_ BitVec 32)) (defaultValue!3899 Int)) )
))
(declare-datatypes ((CacheDown!2554 0))(
  ( (CacheDown!2555 (cache!3871 MutableMap!3728)) )
))
(declare-datatypes ((tuple3!4934 0))(
  ( (tuple3!4935 (_1!19107 Int) (_2!19107 CacheUp!2432) (_3!2937 CacheDown!2554)) )
))
(declare-fun lt!993204 () tuple3!4934)

(declare-fun call!182352 () Int)

(assert (=> b!2781379 (= e!1754265 (= (_1!19107 lt!993204) call!182352))))

(declare-fun call!182358 () Int)

(declare-fun bm!182334 () Bool)

(declare-datatypes ((List!32195 0))(
  ( (Nil!32095) (Cons!32095 (h!37515 C!16372) (t!228335 List!32195)) )
))
(declare-datatypes ((IArray!19973 0))(
  ( (IArray!19974 (innerList!10044 List!32195)) )
))
(declare-datatypes ((Conc!9984 0))(
  ( (Node!9984 (left!24427 Conc!9984) (right!24757 Conc!9984) (csize!20198 Int) (cheight!10195 Int)) (Leaf!15206 (xs!13095 IArray!19973) (csize!20199 Int)) (Empty!9984) )
))
(declare-datatypes ((BalanceConc!19582 0))(
  ( (BalanceConc!19583 (c!452130 Conc!9984)) )
))
(declare-fun input!5495 () BalanceConc!19582)

(declare-fun call!182350 () (InoxSet Context!4650))

(declare-fun lt!993200 () List!32195)

(declare-fun lt!993268 () List!32195)

(declare-fun lt!993243 () Int)

(declare-fun findLongestMatchInnerZipperFast!55 ((InoxSet Context!4650) List!32195 Int List!32195 BalanceConc!19582 Int) Int)

(assert (=> bm!182334 (= call!182358 (findLongestMatchInnerZipperFast!55 call!182350 lt!993200 1 lt!993268 input!5495 lt!993243))))

(declare-fun b!2781380 () Bool)

(declare-fun e!1754275 () Bool)

(declare-fun e!1754273 () Bool)

(assert (=> b!2781380 (= e!1754275 e!1754273)))

(declare-fun b!2781381 () Bool)

(declare-datatypes ((tuple3!4936 0))(
  ( (tuple3!4937 (_1!19108 Int) (_2!19108 CacheDown!2554) (_3!2938 CacheUp!2432)) )
))
(declare-fun e!1754244 () tuple3!4936)

(declare-fun lt!993262 () tuple3!4934)

(assert (=> b!2781381 (= e!1754244 (tuple3!4937 0 (_3!2937 lt!993262) (_2!19107 lt!993262)))))

(declare-fun b!2781382 () Bool)

(declare-fun e!1754270 () Int)

(assert (=> b!2781382 (= e!1754270 call!182358)))

(declare-fun b!2781383 () Bool)

(declare-fun e!1754245 () Bool)

(declare-datatypes ((tuple2!32340 0))(
  ( (tuple2!32341 (_1!19109 List!32195) (_2!19109 List!32195)) )
))
(declare-fun lt!993226 () tuple2!32340)

(declare-fun e!1754267 () tuple2!32340)

(assert (=> b!2781383 (= e!1754245 (= lt!993226 e!1754267))))

(declare-fun c!452118 () Bool)

(assert (=> b!2781383 (= c!452118 (= 0 lt!993243))))

(declare-fun b!2781384 () Bool)

(declare-fun lt!993257 () tuple3!4934)

(declare-fun e!1754253 () Bool)

(declare-fun lt!993230 () List!32195)

(declare-fun z!3597 () (InoxSet Context!4650))

(assert (=> b!2781384 (= e!1754253 (= (_1!19107 lt!993257) (findLongestMatchInnerZipperFast!55 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243)))))

(declare-fun b!2781385 () Bool)

(declare-fun e!1754247 () tuple2!32340)

(assert (=> b!2781385 (= e!1754247 (tuple2!32341 Nil!32095 Nil!32095))))

(declare-fun b!2781386 () Bool)

(declare-fun e!1754241 () Bool)

(declare-fun e!1754276 () Bool)

(assert (=> b!2781386 (= e!1754241 e!1754276)))

(declare-fun b!2781387 () Bool)

(declare-fun c!452126 () Bool)

(declare-fun call!182348 () Bool)

(assert (=> b!2781387 (= c!452126 call!182348)))

(declare-fun ++!7937 (List!32195 List!32195) List!32195)

(assert (=> b!2781387 (= (++!7937 lt!993200 lt!993268) lt!993230)))

(declare-fun lt!993269 () C!16372)

(assert (=> b!2781387 (= lt!993200 (++!7937 Nil!32095 (Cons!32095 lt!993269 Nil!32095)))))

(declare-datatypes ((Unit!46367 0))(
  ( (Unit!46368) )
))
(declare-fun lt!993263 () Unit!46367)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!876 (List!32195 C!16372 List!32195 List!32195) Unit!46367)

(assert (=> b!2781387 (= lt!993263 (lemmaMoveElementToOtherListKeepsConcatEq!876 Nil!32095 lt!993269 lt!993268 lt!993230))))

(declare-fun tail!4393 (List!32195) List!32195)

(assert (=> b!2781387 (= lt!993268 (tail!4393 lt!993230))))

(declare-fun apply!7522 (BalanceConc!19582 Int) C!16372)

(assert (=> b!2781387 (= lt!993269 (apply!7522 input!5495 0))))

(declare-fun lt!993219 () List!32195)

(declare-fun isPrefix!2560 (List!32195 List!32195) Bool)

(declare-fun head!6155 (List!32195) C!16372)

(assert (=> b!2781387 (isPrefix!2560 (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095)) lt!993230)))

(declare-fun lt!993225 () Unit!46367)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!464 (List!32195 List!32195) Unit!46367)

(assert (=> b!2781387 (= lt!993225 (lemmaAddHeadSuffixToPrefixStillPrefix!464 Nil!32095 lt!993230))))

(declare-fun lt!993255 () Unit!46367)

(declare-fun e!1754256 () Unit!46367)

(assert (=> b!2781387 (= lt!993255 e!1754256)))

(declare-fun c!452124 () Bool)

(declare-fun lt!993251 () Int)

(assert (=> b!2781387 (= c!452124 (= lt!993251 lt!993243))))

(declare-fun size!24889 (List!32195) Int)

(assert (=> b!2781387 (<= lt!993251 (size!24889 lt!993230))))

(assert (=> b!2781387 (= lt!993251 (size!24889 Nil!32095))))

(declare-fun lt!993209 () Unit!46367)

(declare-fun lemmaIsPrefixThenSmallerEqSize!267 (List!32195 List!32195) Unit!46367)

(assert (=> b!2781387 (= lt!993209 (lemmaIsPrefixThenSmallerEqSize!267 Nil!32095 lt!993230))))

(declare-fun drop!1713 (List!32195 Int) List!32195)

(declare-fun apply!7523 (List!32195 Int) C!16372)

(assert (=> b!2781387 (= (head!6155 (drop!1713 lt!993230 0)) (apply!7523 lt!993230 0))))

(declare-fun lt!993228 () Unit!46367)

(declare-fun lemmaDropApply!919 (List!32195 Int) Unit!46367)

(assert (=> b!2781387 (= lt!993228 (lemmaDropApply!919 lt!993230 0))))

(declare-fun lt!993213 () List!32195)

(declare-fun lt!993248 () List!32195)

(assert (=> b!2781387 (and (= lt!993213 Nil!32095) (= lt!993248 lt!993230))))

(declare-fun lt!993252 () Unit!46367)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!345 (List!32195 List!32195 List!32195 List!32195) Unit!46367)

(assert (=> b!2781387 (= lt!993252 (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993213 lt!993248 Nil!32095 lt!993230))))

(declare-datatypes ((tuple2!32342 0))(
  ( (tuple2!32343 (_1!19110 BalanceConc!19582) (_2!19110 BalanceConc!19582)) )
))
(declare-fun lt!993260 () tuple2!32342)

(declare-fun list!12103 (BalanceConc!19582) List!32195)

(assert (=> b!2781387 (= lt!993248 (list!12103 (_2!19110 lt!993260)))))

(assert (=> b!2781387 (= lt!993213 (list!12103 (_1!19110 lt!993260)))))

(declare-fun splitAt!124 (BalanceConc!19582 Int) tuple2!32342)

(assert (=> b!2781387 (= lt!993260 (splitAt!124 input!5495 0))))

(declare-fun e!1754262 () Int)

(assert (=> b!2781387 (= e!1754262 e!1754270)))

(declare-fun b!2781388 () Bool)

(declare-fun e!1754266 () Bool)

(declare-fun e!1754252 () Bool)

(assert (=> b!2781388 (= e!1754266 e!1754252)))

(declare-fun lt!993216 () tuple3!4934)

(declare-fun bm!182335 () Bool)

(declare-fun call!182346 () Bool)

(declare-fun c!452125 () Bool)

(declare-fun valid!2988 (CacheDown!2554) Bool)

(assert (=> bm!182335 (= call!182346 (valid!2988 (ite c!452125 (_3!2937 lt!993204) (_3!2937 lt!993216))))))

(declare-fun b!2781389 () Bool)

(declare-fun e!1754258 () tuple3!4936)

(assert (=> b!2781389 (= e!1754258 (tuple3!4937 (ite (= (_1!19107 lt!993204) 0) 0 (_1!19107 lt!993204)) (_3!2937 lt!993204) (_2!19107 lt!993204)))))

(declare-datatypes ((tuple3!4938 0))(
  ( (tuple3!4939 (_1!19111 (InoxSet Context!4650)) (_2!19111 CacheUp!2432) (_3!2939 CacheDown!2554)) )
))
(declare-fun lt!993229 () tuple3!4938)

(declare-fun call!182343 () tuple3!4938)

(assert (=> b!2781389 (= lt!993229 call!182343)))

(declare-fun call!182347 () tuple3!4934)

(assert (=> b!2781389 (= lt!993204 call!182347)))

(declare-fun res!1161306 () Bool)

(declare-fun call!182341 () Bool)

(assert (=> b!2781389 (= res!1161306 call!182341)))

(assert (=> b!2781389 (=> (not res!1161306) (not e!1754265))))

(assert (=> b!2781389 e!1754265))

(declare-fun mapIsEmpty!17459 () Bool)

(declare-fun mapRes!17459 () Bool)

(assert (=> mapIsEmpty!17459 mapRes!17459))

(declare-fun b!2781390 () Bool)

(declare-fun e!1754272 () Bool)

(assert (=> b!2781390 (= e!1754276 e!1754272)))

(declare-fun bm!182336 () Bool)

(declare-fun derivationStepZipper!372 ((InoxSet Context!4650) C!16372) (InoxSet Context!4650))

(assert (=> bm!182336 (= call!182350 (derivationStepZipper!372 z!3597 lt!993269))))

(declare-fun mapNonEmpty!17459 () Bool)

(declare-fun tp!880274 () Bool)

(declare-fun tp!880266 () Bool)

(assert (=> mapNonEmpty!17459 (= mapRes!17459 (and tp!880274 tp!880266))))

(declare-fun mapRest!17460 () (Array (_ BitVec 32) List!32194))

(declare-fun mapValue!17460 () List!32194)

(declare-fun mapKey!17460 () (_ BitVec 32))

(declare-fun cacheDown!939 () CacheDown!2554)

(assert (=> mapNonEmpty!17459 (= (arr!6063 (_values!4103 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))) (store mapRest!17460 mapKey!17460 mapValue!17460))))

(declare-fun b!2781391 () Bool)

(declare-fun e!1754242 () tuple2!32340)

(declare-fun call!182340 () tuple2!32340)

(assert (=> b!2781391 (= e!1754242 call!182340)))

(declare-fun bm!182337 () Bool)

(declare-fun lt!993250 () List!32195)

(declare-fun lt!993235 () List!32195)

(declare-fun lt!993207 () tuple3!4938)

(declare-fun findLongestMatchInnerZipperFastMem!48 (CacheUp!2432 CacheDown!2554 (InoxSet Context!4650) List!32195 Int List!32195 BalanceConc!19582 Int) tuple3!4934)

(assert (=> bm!182337 (= call!182347 (findLongestMatchInnerZipperFastMem!48 (ite c!452125 (_2!19111 lt!993229) (_2!19111 lt!993207)) (ite c!452125 (_3!2939 lt!993229) (_3!2939 lt!993207)) (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207)) lt!993235 1 lt!993250 input!5495 lt!993243))))

(declare-fun b!2781392 () Bool)

(declare-fun lt!993264 () Bool)

(declare-fun call!182339 () Bool)

(assert (=> b!2781392 (= lt!993264 call!182339)))

(assert (=> b!2781392 (= lt!993230 Nil!32095)))

(declare-fun lt!993201 () Unit!46367)

(declare-fun call!182353 () Unit!46367)

(assert (=> b!2781392 (= lt!993201 call!182353)))

(declare-fun call!182342 () Bool)

(assert (=> b!2781392 call!182342))

(declare-fun lt!993202 () Unit!46367)

(declare-fun call!182359 () Unit!46367)

(assert (=> b!2781392 (= lt!993202 call!182359)))

(declare-fun e!1754268 () tuple3!4936)

(assert (=> b!2781392 (= e!1754268 (tuple3!4937 0 (_3!2937 lt!993262) (_2!19107 lt!993262)))))

(declare-fun b!2781393 () Bool)

(declare-fun e!1754246 () Bool)

(declare-fun tp!880277 () Bool)

(assert (=> b!2781393 (= e!1754246 (and tp!880277 mapRes!17459))))

(declare-fun condMapEmpty!17460 () Bool)

(declare-fun mapDefault!17459 () List!32194)

(assert (=> b!2781393 (= condMapEmpty!17460 (= (arr!6063 (_values!4103 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32194)) mapDefault!17459)))))

(declare-fun bm!182338 () Bool)

(declare-fun call!182344 () Unit!46367)

(declare-fun lemmaIsPrefixSameLengthThenSameList!467 (List!32195 List!32195 List!32195) Unit!46367)

(assert (=> bm!182338 (= call!182344 (lemmaIsPrefixSameLengthThenSameList!467 lt!993230 Nil!32095 lt!993230))))

(declare-fun b!2781394 () Bool)

(declare-fun e!1754239 () Unit!46367)

(declare-fun Unit!46369 () Unit!46367)

(assert (=> b!2781394 (= e!1754239 Unit!46369)))

(declare-fun bm!182339 () Bool)

(declare-fun lt!993214 () C!16372)

(declare-fun derivationStepZipperMem!99 ((InoxSet Context!4650) C!16372 CacheUp!2432 CacheDown!2554) tuple3!4938)

(assert (=> bm!182339 (= call!182343 (derivationStepZipperMem!99 z!3597 lt!993214 (_2!19107 lt!993262) (_3!2937 lt!993262)))))

(declare-fun mapNonEmpty!17460 () Bool)

(declare-fun mapRes!17460 () Bool)

(declare-fun tp!880267 () Bool)

(declare-fun tp!880263 () Bool)

(assert (=> mapNonEmpty!17460 (= mapRes!17460 (and tp!880267 tp!880263))))

(declare-fun mapValue!17459 () List!32193)

(declare-fun mapKey!17459 () (_ BitVec 32))

(declare-fun cacheUp!820 () CacheUp!2432)

(declare-fun mapRest!17459 () (Array (_ BitVec 32) List!32193))

(assert (=> mapNonEmpty!17460 (= (arr!6061 (_values!4102 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))) (store mapRest!17459 mapKey!17459 mapValue!17459))))

(declare-fun bm!182340 () Bool)

(declare-fun call!182349 () Bool)

(assert (=> bm!182340 (= call!182349 (isPrefix!2560 lt!993230 lt!993230))))

(declare-fun b!2781395 () Bool)

(declare-fun e!1754260 () Bool)

(declare-fun tp!880272 () Bool)

(assert (=> b!2781395 (= e!1754260 (and tp!880272 mapRes!17460))))

(declare-fun condMapEmpty!17459 () Bool)

(declare-fun mapDefault!17460 () List!32193)

(assert (=> b!2781395 (= condMapEmpty!17459 (= (arr!6061 (_values!4102 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32193)) mapDefault!17460)))))

(declare-fun b!2781396 () Bool)

(declare-fun res!1161309 () Bool)

(assert (=> b!2781396 (= res!1161309 call!182346)))

(declare-fun e!1754269 () Bool)

(assert (=> b!2781396 (=> (not res!1161309) (not e!1754269))))

(declare-fun b!2781397 () Bool)

(declare-fun e!1754251 () Bool)

(declare-fun lt!993217 () MutLongMap!3822)

(get-info :version)

(assert (=> b!2781397 (= e!1754251 (and e!1754266 ((_ is LongMap!3822) lt!993217)))))

(assert (=> b!2781397 (= lt!993217 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))

(declare-fun b!2781398 () Bool)

(declare-fun e!1754243 () Bool)

(assert (=> b!2781398 (= e!1754243 (= (_1!19107 lt!993262) (findLongestMatchInnerZipperFast!55 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243)))))

(declare-fun b!2781399 () Bool)

(declare-fun lt!993259 () Int)

(assert (=> b!2781399 (= e!1754270 (ite (= lt!993259 0) 0 lt!993259))))

(assert (=> b!2781399 (= lt!993259 call!182358)))

(declare-fun bm!182341 () Bool)

(declare-fun call!182357 () Bool)

(declare-fun nullableZipper!640 ((InoxSet Context!4650)) Bool)

(assert (=> bm!182341 (= call!182357 (nullableZipper!640 z!3597))))

(declare-fun bm!182342 () Bool)

(declare-fun call!182355 () Bool)

(assert (=> bm!182342 (= call!182355 (isPrefix!2560 lt!993230 lt!993230))))

(assert (=> b!2781400 (= e!1754273 (and e!1754251 tp!880271))))

(declare-fun bm!182343 () Bool)

(assert (=> bm!182343 (= call!182353 (lemmaIsPrefixSameLengthThenSameList!467 lt!993230 Nil!32095 lt!993230))))

(declare-fun b!2781401 () Bool)

(declare-fun res!1161313 () Bool)

(assert (=> b!2781401 (= res!1161313 call!182346)))

(assert (=> b!2781401 (=> (not res!1161313) (not e!1754265))))

(declare-fun bm!182344 () Bool)

(declare-fun call!182345 () Unit!46367)

(declare-fun lemmaIsPrefixRefl!1685 (List!32195 List!32195) Unit!46367)

(assert (=> bm!182344 (= call!182345 (lemmaIsPrefixRefl!1685 lt!993230 lt!993230))))

(declare-fun b!2781402 () Bool)

(declare-fun e!1754261 () Bool)

(declare-fun lt!993254 () Int)

(assert (=> b!2781402 (= e!1754261 (= lt!993254 e!1754262))))

(declare-fun c!452120 () Bool)

(assert (=> b!2781402 (= c!452120 (= 0 lt!993243))))

(declare-fun bm!182345 () Bool)

(declare-fun call!182351 () Unit!46367)

(assert (=> bm!182345 (= call!182351 (lemmaIsPrefixSameLengthThenSameList!467 lt!993230 Nil!32095 lt!993230))))

(declare-fun bm!182346 () Bool)

(declare-fun call!182356 () (InoxSet Context!4650))

(declare-fun lt!993220 () C!16372)

(assert (=> bm!182346 (= call!182356 (derivationStepZipper!372 z!3597 lt!993220))))

(declare-fun b!2781403 () Bool)

(assert (=> b!2781403 (= c!452125 call!182339)))

(assert (=> b!2781403 (= (++!7937 lt!993235 lt!993250) lt!993230)))

(assert (=> b!2781403 (= lt!993235 (++!7937 Nil!32095 (Cons!32095 lt!993214 Nil!32095)))))

(declare-fun lt!993267 () Unit!46367)

(assert (=> b!2781403 (= lt!993267 (lemmaMoveElementToOtherListKeepsConcatEq!876 Nil!32095 lt!993214 lt!993250 lt!993230))))

(assert (=> b!2781403 (= lt!993250 (tail!4393 lt!993230))))

(assert (=> b!2781403 (= lt!993214 (apply!7522 input!5495 0))))

(assert (=> b!2781403 (isPrefix!2560 (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095)) lt!993230)))

(declare-fun lt!993223 () Unit!46367)

(assert (=> b!2781403 (= lt!993223 (lemmaAddHeadSuffixToPrefixStillPrefix!464 Nil!32095 lt!993230))))

(declare-fun lt!993247 () Unit!46367)

(declare-fun e!1754274 () Unit!46367)

(assert (=> b!2781403 (= lt!993247 e!1754274)))

(declare-fun c!452123 () Bool)

(declare-fun lt!993227 () Int)

(assert (=> b!2781403 (= c!452123 (= lt!993227 lt!993243))))

(assert (=> b!2781403 (<= lt!993227 (size!24889 lt!993230))))

(assert (=> b!2781403 (= lt!993227 (size!24889 Nil!32095))))

(declare-fun lt!993203 () Unit!46367)

(assert (=> b!2781403 (= lt!993203 (lemmaIsPrefixThenSmallerEqSize!267 Nil!32095 lt!993230))))

(assert (=> b!2781403 (= (head!6155 (drop!1713 lt!993230 0)) (apply!7523 lt!993230 0))))

(declare-fun lt!993253 () Unit!46367)

(assert (=> b!2781403 (= lt!993253 (lemmaDropApply!919 lt!993230 0))))

(declare-fun lt!993265 () List!32195)

(declare-fun lt!993232 () List!32195)

(assert (=> b!2781403 (and (= lt!993265 Nil!32095) (= lt!993232 lt!993230))))

(declare-fun lt!993256 () Unit!46367)

(assert (=> b!2781403 (= lt!993256 (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993265 lt!993232 Nil!32095 lt!993230))))

(declare-fun lt!993270 () tuple2!32342)

(assert (=> b!2781403 (= lt!993232 (list!12103 (_2!19110 lt!993270)))))

(assert (=> b!2781403 (= lt!993265 (list!12103 (_1!19110 lt!993270)))))

(assert (=> b!2781403 (= lt!993270 (splitAt!124 input!5495 0))))

(assert (=> b!2781403 (= e!1754268 e!1754258)))

(declare-fun bm!182347 () Bool)

(assert (=> bm!182347 (= call!182342 (isPrefix!2560 lt!993230 lt!993230))))

(declare-fun b!2781404 () Bool)

(assert (=> b!2781404 (= e!1754245 (= lt!993226 (tuple2!32341 Nil!32095 lt!993230)))))

(declare-fun b!2781405 () Bool)

(declare-fun res!1161305 () Bool)

(declare-fun e!1754254 () Bool)

(assert (=> b!2781405 (=> (not res!1161305) (not e!1754254))))

(assert (=> b!2781405 (= res!1161305 (valid!2988 cacheDown!939))))

(declare-fun b!2781406 () Bool)

(declare-fun res!1161314 () Bool)

(assert (=> b!2781406 (=> (not res!1161314) (not e!1754253))))

(assert (=> b!2781406 (= res!1161314 (valid!2988 (_3!2937 lt!993257)))))

(declare-fun b!2781407 () Bool)

(declare-fun e!1754257 () Bool)

(declare-fun e!1754255 () Bool)

(assert (=> b!2781407 (= e!1754257 e!1754255)))

(declare-fun e!1754263 () Bool)

(declare-fun lt!993236 () tuple2!32342)

(declare-fun b!2781408 () Bool)

(declare-fun findLongestMatchZipperFast!6 ((InoxSet Context!4650) BalanceConc!19582) tuple2!32342)

(assert (=> b!2781408 (= e!1754263 (= lt!993236 (findLongestMatchZipperFast!6 z!3597 input!5495)))))

(declare-fun b!2781409 () Bool)

(declare-fun Unit!46370 () Unit!46367)

(assert (=> b!2781409 (= e!1754274 Unit!46370)))

(declare-fun b!2781410 () Bool)

(declare-fun Unit!46371 () Unit!46367)

(assert (=> b!2781410 (= e!1754256 Unit!46371)))

(declare-fun lt!993246 () Unit!46367)

(declare-fun call!182354 () Unit!46367)

(assert (=> b!2781410 (= lt!993246 call!182354)))

(assert (=> b!2781410 call!182349))

(declare-fun lt!993221 () Unit!46367)

(assert (=> b!2781410 (= lt!993221 call!182344)))

(assert (=> b!2781410 false))

(declare-fun setIsEmpty!23260 () Bool)

(declare-fun setRes!23260 () Bool)

(assert (=> setIsEmpty!23260 setRes!23260))

(declare-fun b!2781411 () Bool)

(declare-fun e!1754264 () Bool)

(declare-fun tp!880262 () Bool)

(declare-fun inv!43587 (Conc!9984) Bool)

(assert (=> b!2781411 (= e!1754264 (and (inv!43587 (c!452130 input!5495)) tp!880262))))

(declare-fun bm!182348 () Bool)

(assert (=> bm!182348 (= call!182354 (lemmaIsPrefixRefl!1685 lt!993230 lt!993230))))

(declare-fun setElem!23260 () Context!4650)

(declare-fun e!1754250 () Bool)

(declare-fun tp!880278 () Bool)

(declare-fun setNonEmpty!23260 () Bool)

(declare-fun inv!43588 (Context!4650) Bool)

(assert (=> setNonEmpty!23260 (= setRes!23260 (and tp!880278 (inv!43588 setElem!23260) e!1754250))))

(declare-fun setRest!23260 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23260 (= z!3597 ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23260 true) setRest!23260))))

(declare-fun b!2781412 () Bool)

(declare-fun e!1754240 () tuple2!32340)

(declare-fun lt!993242 () tuple2!32340)

(assert (=> b!2781412 (= e!1754240 lt!993242)))

(declare-fun b!2781413 () Bool)

(declare-fun Unit!46372 () Unit!46367)

(assert (=> b!2781413 (= e!1754256 Unit!46372)))

(declare-fun b!2781415 () Bool)

(declare-fun Unit!46373 () Unit!46367)

(assert (=> b!2781415 (= e!1754274 Unit!46373)))

(declare-fun lt!993241 () Unit!46367)

(assert (=> b!2781415 (= lt!993241 call!182359)))

(assert (=> b!2781415 call!182342))

(declare-fun lt!993224 () Unit!46367)

(assert (=> b!2781415 (= lt!993224 call!182353)))

(assert (=> b!2781415 false))

(declare-fun b!2781414 () Bool)

(assert (=> b!2781414 (= e!1754247 (tuple2!32341 Nil!32095 lt!993230))))

(declare-fun res!1161310 () Bool)

(assert (=> start!268772 (=> (not res!1161310) (not e!1754254))))

(declare-fun valid!2989 (CacheUp!2432) Bool)

(assert (=> start!268772 (= res!1161310 (valid!2989 cacheUp!820))))

(assert (=> start!268772 e!1754254))

(declare-fun inv!43589 (CacheUp!2432) Bool)

(assert (=> start!268772 (and (inv!43589 cacheUp!820) e!1754257)))

(declare-fun inv!43590 (CacheDown!2554) Bool)

(assert (=> start!268772 (and (inv!43590 cacheDown!939) e!1754275)))

(declare-fun condSetEmpty!23260 () Bool)

(assert (=> start!268772 (= condSetEmpty!23260 (= z!3597 ((as const (Array Context!4650 Bool)) false)))))

(assert (=> start!268772 setRes!23260))

(declare-fun inv!43591 (BalanceConc!19582) Bool)

(assert (=> start!268772 (and (inv!43591 input!5495) e!1754264)))

(declare-fun b!2781416 () Bool)

(declare-fun e!1754259 () Bool)

(assert (=> b!2781416 (= e!1754252 e!1754259)))

(declare-fun lt!993206 () List!32195)

(declare-fun bm!182349 () Bool)

(declare-fun lt!993238 () List!32195)

(declare-fun findLongestMatchInnerZipper!30 ((InoxSet Context!4650) List!32195 Int List!32195 List!32195 Int) tuple2!32340)

(assert (=> bm!182349 (= call!182340 (findLongestMatchInnerZipper!30 call!182356 lt!993238 1 lt!993206 lt!993230 lt!993243))))

(declare-fun b!2781417 () Bool)

(declare-fun c!452119 () Bool)

(assert (=> b!2781417 (= c!452119 call!182357)))

(assert (=> b!2781417 (= lt!993230 Nil!32095)))

(declare-fun lt!993234 () Unit!46367)

(assert (=> b!2781417 (= lt!993234 call!182351)))

(assert (=> b!2781417 call!182355))

(declare-fun lt!993205 () Unit!46367)

(assert (=> b!2781417 (= lt!993205 call!182345)))

(assert (=> b!2781417 (= e!1754267 e!1754247)))

(declare-fun bm!182350 () Bool)

(assert (=> bm!182350 (= call!182348 (nullableZipper!640 z!3597))))

(declare-fun b!2781418 () Bool)

(assert (=> b!2781418 (= e!1754242 e!1754240)))

(assert (=> b!2781418 (= lt!993242 call!182340)))

(declare-fun c!452117 () Bool)

(declare-fun isEmpty!18105 (List!32195) Bool)

(assert (=> b!2781418 (= c!452117 (isEmpty!18105 (_1!19109 lt!993242)))))

(declare-fun bm!182351 () Bool)

(assert (=> bm!182351 (= call!182352 (findLongestMatchInnerZipperFast!55 (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207)) lt!993235 1 lt!993250 input!5495 lt!993243))))

(declare-fun b!2781419 () Bool)

(declare-fun tp!880268 () Bool)

(assert (=> b!2781419 (= e!1754250 tp!880268)))

(declare-fun b!2781420 () Bool)

(assert (=> b!2781420 (= e!1754261 (= lt!993254 0))))

(declare-fun b!2781421 () Bool)

(declare-fun lt!993261 () Bool)

(assert (=> b!2781421 (= lt!993261 call!182348)))

(assert (=> b!2781421 (= lt!993230 Nil!32095)))

(declare-fun lt!993222 () Unit!46367)

(assert (=> b!2781421 (= lt!993222 call!182344)))

(assert (=> b!2781421 call!182349))

(declare-fun lt!993231 () Unit!46367)

(assert (=> b!2781421 (= lt!993231 call!182354)))

(assert (=> b!2781421 (= e!1754262 0)))

(declare-fun b!2781422 () Bool)

(declare-fun res!1161307 () Bool)

(assert (=> b!2781422 (=> (not res!1161307) (not e!1754243))))

(assert (=> b!2781422 (= res!1161307 (valid!2988 (_3!2937 lt!993262)))))

(declare-fun b!2781423 () Bool)

(declare-fun e!1754248 () Bool)

(declare-fun lt!993211 () MutLongMap!3821)

(assert (=> b!2781423 (= e!1754248 (and e!1754241 ((_ is LongMap!3821) lt!993211)))))

(assert (=> b!2781423 (= lt!993211 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))

(declare-fun mapIsEmpty!17460 () Bool)

(assert (=> mapIsEmpty!17460 mapRes!17460))

(declare-fun b!2781424 () Bool)

(assert (=> b!2781424 (= e!1754254 (not e!1754263))))

(declare-fun res!1161308 () Bool)

(assert (=> b!2781424 (=> (not res!1161308) (not e!1754263))))

(declare-fun lt!993208 () Bool)

(assert (=> b!2781424 (= res!1161308 (not lt!993208))))

(declare-fun lt!993272 () List!32195)

(declare-fun lt!993240 () List!32195)

(assert (=> b!2781424 (and (= lt!993272 (_1!19109 lt!993226)) (= lt!993240 (_2!19109 lt!993226)))))

(declare-fun lt!993210 () Unit!46367)

(assert (=> b!2781424 (= lt!993210 (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993272 lt!993240 (_1!19109 lt!993226) (_2!19109 lt!993226)))))

(assert (=> b!2781424 (= lt!993240 (list!12103 (_2!19110 lt!993236)))))

(assert (=> b!2781424 (= lt!993272 (list!12103 (_1!19110 lt!993236)))))

(assert (=> b!2781424 (= lt!993236 (splitAt!124 input!5495 (_1!19107 lt!993262)))))

(assert (=> b!2781424 e!1754245))

(declare-fun c!452128 () Bool)

(declare-fun lt!993212 () Bool)

(assert (=> b!2781424 (= c!452128 lt!993212)))

(assert (=> b!2781424 (= lt!993226 (findLongestMatchInnerZipper!30 z!3597 Nil!32095 0 lt!993230 lt!993230 lt!993243))))

(assert (=> b!2781424 e!1754261))

(declare-fun c!452127 () Bool)

(assert (=> b!2781424 (= c!452127 lt!993212)))

(assert (=> b!2781424 (= lt!993254 (findLongestMatchInnerZipperFast!55 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243))))

(declare-fun lt!993249 () tuple3!4936)

(assert (=> b!2781424 (= lt!993257 (tuple3!4935 (_1!19108 lt!993249) (_3!2938 lt!993249) (_2!19108 lt!993249)))))

(assert (=> b!2781424 (= lt!993249 e!1754244)))

(declare-fun c!452116 () Bool)

(assert (=> b!2781424 (= c!452116 lt!993212)))

(declare-fun lostCauseZipper!446 ((InoxSet Context!4650)) Bool)

(assert (=> b!2781424 (= lt!993212 (lostCauseZipper!446 z!3597))))

(assert (=> b!2781424 (and (= lt!993230 lt!993219) (= lt!993219 lt!993230))))

(declare-fun lt!993237 () Unit!46367)

(declare-fun lemmaSamePrefixThenSameSuffix!1144 (List!32195 List!32195 List!32195 List!32195 List!32195) Unit!46367)

(assert (=> b!2781424 (= lt!993237 (lemmaSamePrefixThenSameSuffix!1144 Nil!32095 lt!993230 Nil!32095 lt!993219 lt!993230))))

(declare-fun getSuffix!1242 (List!32195 List!32195) List!32195)

(assert (=> b!2781424 (= lt!993219 (getSuffix!1242 lt!993230 Nil!32095))))

(assert (=> b!2781424 (isPrefix!2560 Nil!32095 (++!7937 Nil!32095 lt!993230))))

(declare-fun lt!993239 () Unit!46367)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1670 (List!32195 List!32195) Unit!46367)

(assert (=> b!2781424 (= lt!993239 (lemmaConcatTwoListThenFirstIsPrefix!1670 Nil!32095 lt!993230))))

(assert (=> b!2781424 e!1754253))

(declare-fun res!1161311 () Bool)

(assert (=> b!2781424 (=> (not res!1161311) (not e!1754253))))

(assert (=> b!2781424 (= res!1161311 (not lt!993208))))

(assert (=> b!2781424 (= lt!993208 (not (valid!2989 (_2!19107 lt!993257))))))

(assert (=> b!2781424 (= lt!993257 (findLongestMatchInnerZipperFastMem!48 (_2!19107 lt!993262) (_3!2937 lt!993262) z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243))))

(assert (=> b!2781424 e!1754243))

(declare-fun res!1161304 () Bool)

(assert (=> b!2781424 (=> (not res!1161304) (not e!1754243))))

(assert (=> b!2781424 (= res!1161304 (valid!2989 (_2!19107 lt!993262)))))

(assert (=> b!2781424 (= lt!993262 (findLongestMatchInnerZipperFastMem!48 cacheUp!820 cacheDown!939 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243))))

(declare-fun size!24890 (BalanceConc!19582) Int)

(assert (=> b!2781424 (= lt!993243 (size!24890 input!5495))))

(assert (=> b!2781424 (= lt!993230 (list!12103 input!5495))))

(declare-fun bm!182352 () Bool)

(assert (=> bm!182352 (= call!182341 (valid!2989 (ite c!452125 (_2!19107 lt!993204) (_2!19107 lt!993216))))))

(declare-fun b!2781425 () Bool)

(assert (=> b!2781425 (= e!1754240 (tuple2!32341 Nil!32095 lt!993230))))

(declare-fun b!2781426 () Bool)

(assert (=> b!2781426 (= e!1754258 (tuple3!4937 (_1!19107 lt!993216) (_3!2937 lt!993216) (_2!19107 lt!993216)))))

(assert (=> b!2781426 (= lt!993207 call!182343)))

(assert (=> b!2781426 (= lt!993216 call!182347)))

(declare-fun res!1161315 () Bool)

(assert (=> b!2781426 (= res!1161315 call!182341)))

(assert (=> b!2781426 (=> (not res!1161315) (not e!1754269))))

(assert (=> b!2781426 e!1754269))

(declare-fun b!2781427 () Bool)

(assert (=> b!2781427 (= e!1754244 e!1754268)))

(declare-fun c!452122 () Bool)

(assert (=> b!2781427 (= c!452122 (= 0 lt!993243))))

(assert (=> b!2781428 (= e!1754255 (and e!1754248 tp!880275))))

(declare-fun bm!182353 () Bool)

(assert (=> bm!182353 (= call!182359 (lemmaIsPrefixRefl!1685 lt!993230 lt!993230))))

(declare-fun b!2781429 () Bool)

(declare-fun Unit!46374 () Unit!46367)

(assert (=> b!2781429 (= e!1754239 Unit!46374)))

(declare-fun lt!993244 () Unit!46367)

(assert (=> b!2781429 (= lt!993244 call!182345)))

(assert (=> b!2781429 call!182355))

(declare-fun lt!993218 () Unit!46367)

(assert (=> b!2781429 (= lt!993218 call!182351)))

(assert (=> b!2781429 false))

(declare-fun b!2781430 () Bool)

(declare-fun c!452115 () Bool)

(assert (=> b!2781430 (= c!452115 call!182357)))

(assert (=> b!2781430 (= (++!7937 lt!993238 lt!993206) lt!993230)))

(declare-fun lt!993233 () Unit!46367)

(assert (=> b!2781430 (= lt!993233 (lemmaMoveElementToOtherListKeepsConcatEq!876 Nil!32095 lt!993220 lt!993206 lt!993230))))

(assert (=> b!2781430 (= lt!993206 (tail!4393 lt!993230))))

(assert (=> b!2781430 (isPrefix!2560 (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095)) lt!993230)))

(declare-fun lt!993266 () Unit!46367)

(assert (=> b!2781430 (= lt!993266 (lemmaAddHeadSuffixToPrefixStillPrefix!464 Nil!32095 lt!993230))))

(assert (=> b!2781430 (= lt!993238 (++!7937 Nil!32095 (Cons!32095 lt!993220 Nil!32095)))))

(assert (=> b!2781430 (= lt!993220 (head!6155 lt!993230))))

(declare-fun lt!993258 () Unit!46367)

(assert (=> b!2781430 (= lt!993258 e!1754239)))

(declare-fun c!452121 () Bool)

(declare-fun lt!993245 () Int)

(declare-fun lt!993271 () Int)

(assert (=> b!2781430 (= c!452121 (= lt!993245 lt!993271))))

(assert (=> b!2781430 (<= lt!993245 lt!993271)))

(assert (=> b!2781430 (= lt!993271 (size!24889 lt!993230))))

(assert (=> b!2781430 (= lt!993245 (size!24889 Nil!32095))))

(declare-fun lt!993215 () Unit!46367)

(assert (=> b!2781430 (= lt!993215 (lemmaIsPrefixThenSmallerEqSize!267 Nil!32095 lt!993230))))

(assert (=> b!2781430 (= e!1754267 e!1754242)))

(declare-fun b!2781431 () Bool)

(declare-fun res!1161312 () Bool)

(assert (=> b!2781431 (=> (not res!1161312) (not e!1754263))))

(assert (=> b!2781431 (= res!1161312 (valid!2988 (_3!2937 lt!993257)))))

(declare-fun tp!880269 () Bool)

(declare-fun tp!880270 () Bool)

(declare-fun array_inv!4334 (array!13600) Bool)

(declare-fun array_inv!4335 (array!13598) Bool)

(assert (=> b!2781432 (= e!1754272 (and tp!880273 tp!880269 tp!880270 (array_inv!4334 (_keys!4121 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))) (array_inv!4335 (_values!4102 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))) e!1754260))))

(declare-fun b!2781433 () Bool)

(assert (=> b!2781433 (= e!1754269 (= (_1!19107 lt!993216) call!182352))))

(declare-fun bm!182354 () Bool)

(assert (=> bm!182354 (= call!182339 (nullableZipper!640 z!3597))))

(declare-fun tp!880276 () Bool)

(declare-fun tp!880265 () Bool)

(declare-fun array_inv!4336 (array!13602) Bool)

(assert (=> b!2781434 (= e!1754259 (and tp!880264 tp!880276 tp!880265 (array_inv!4334 (_keys!4122 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))) (array_inv!4336 (_values!4103 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))) e!1754246))))

(assert (= (and start!268772 res!1161310) b!2781405))

(assert (= (and b!2781405 res!1161305) b!2781424))

(assert (= (and b!2781424 res!1161304) b!2781422))

(assert (= (and b!2781422 res!1161307) b!2781398))

(assert (= (and b!2781424 res!1161311) b!2781406))

(assert (= (and b!2781406 res!1161314) b!2781384))

(assert (= (and b!2781424 c!452116) b!2781381))

(assert (= (and b!2781424 (not c!452116)) b!2781427))

(assert (= (and b!2781427 c!452122) b!2781392))

(assert (= (and b!2781427 (not c!452122)) b!2781403))

(assert (= (and b!2781403 c!452123) b!2781415))

(assert (= (and b!2781403 (not c!452123)) b!2781409))

(assert (= (and b!2781403 c!452125) b!2781389))

(assert (= (and b!2781403 (not c!452125)) b!2781426))

(assert (= (and b!2781389 res!1161306) b!2781401))

(assert (= (and b!2781401 res!1161313) b!2781379))

(assert (= (and b!2781426 res!1161315) b!2781396))

(assert (= (and b!2781396 res!1161309) b!2781433))

(assert (= (or b!2781401 b!2781396) bm!182335))

(assert (= (or b!2781389 b!2781426) bm!182339))

(assert (= (or b!2781389 b!2781426) bm!182337))

(assert (= (or b!2781379 b!2781433) bm!182351))

(assert (= (or b!2781389 b!2781426) bm!182352))

(assert (= (or b!2781392 b!2781403) bm!182354))

(assert (= (or b!2781392 b!2781415) bm!182353))

(assert (= (or b!2781392 b!2781415) bm!182343))

(assert (= (or b!2781392 b!2781415) bm!182347))

(assert (= (and b!2781424 c!452127) b!2781420))

(assert (= (and b!2781424 (not c!452127)) b!2781402))

(assert (= (and b!2781402 c!452120) b!2781421))

(assert (= (and b!2781402 (not c!452120)) b!2781387))

(assert (= (and b!2781387 c!452124) b!2781410))

(assert (= (and b!2781387 (not c!452124)) b!2781413))

(assert (= (and b!2781387 c!452126) b!2781399))

(assert (= (and b!2781387 (not c!452126)) b!2781382))

(assert (= (or b!2781399 b!2781382) bm!182336))

(assert (= (or b!2781399 b!2781382) bm!182334))

(assert (= (or b!2781421 b!2781387) bm!182350))

(assert (= (or b!2781421 b!2781410) bm!182348))

(assert (= (or b!2781421 b!2781410) bm!182338))

(assert (= (or b!2781421 b!2781410) bm!182340))

(assert (= (and b!2781424 c!452128) b!2781404))

(assert (= (and b!2781424 (not c!452128)) b!2781383))

(assert (= (and b!2781383 c!452118) b!2781417))

(assert (= (and b!2781383 (not c!452118)) b!2781430))

(assert (= (and b!2781417 c!452119) b!2781385))

(assert (= (and b!2781417 (not c!452119)) b!2781414))

(assert (= (and b!2781430 c!452121) b!2781429))

(assert (= (and b!2781430 (not c!452121)) b!2781394))

(assert (= (and b!2781430 c!452115) b!2781418))

(assert (= (and b!2781430 (not c!452115)) b!2781391))

(assert (= (and b!2781418 c!452117) b!2781425))

(assert (= (and b!2781418 (not c!452117)) b!2781412))

(assert (= (or b!2781418 b!2781391) bm!182346))

(assert (= (or b!2781418 b!2781391) bm!182349))

(assert (= (or b!2781417 b!2781430) bm!182341))

(assert (= (or b!2781417 b!2781429) bm!182344))

(assert (= (or b!2781417 b!2781429) bm!182345))

(assert (= (or b!2781417 b!2781429) bm!182342))

(assert (= (and b!2781424 res!1161308) b!2781431))

(assert (= (and b!2781431 res!1161312) b!2781408))

(assert (= (and b!2781395 condMapEmpty!17459) mapIsEmpty!17460))

(assert (= (and b!2781395 (not condMapEmpty!17459)) mapNonEmpty!17460))

(assert (= b!2781432 b!2781395))

(assert (= b!2781390 b!2781432))

(assert (= b!2781386 b!2781390))

(assert (= (and b!2781423 ((_ is LongMap!3821) (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))) b!2781386))

(assert (= b!2781428 b!2781423))

(assert (= (and b!2781407 ((_ is HashMap!3727) (cache!3870 cacheUp!820))) b!2781428))

(assert (= start!268772 b!2781407))

(assert (= (and b!2781393 condMapEmpty!17460) mapIsEmpty!17459))

(assert (= (and b!2781393 (not condMapEmpty!17460)) mapNonEmpty!17459))

(assert (= b!2781434 b!2781393))

(assert (= b!2781416 b!2781434))

(assert (= b!2781388 b!2781416))

(assert (= (and b!2781397 ((_ is LongMap!3822) (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))) b!2781388))

(assert (= b!2781400 b!2781397))

(assert (= (and b!2781380 ((_ is HashMap!3728) (cache!3871 cacheDown!939))) b!2781400))

(assert (= start!268772 b!2781380))

(assert (= (and start!268772 condSetEmpty!23260) setIsEmpty!23260))

(assert (= (and start!268772 (not condSetEmpty!23260)) setNonEmpty!23260))

(assert (= setNonEmpty!23260 b!2781419))

(assert (= start!268772 b!2781411))

(declare-fun m!3212479 () Bool)

(assert (=> setNonEmpty!23260 m!3212479))

(declare-fun m!3212481 () Bool)

(assert (=> bm!182349 m!3212481))

(declare-fun m!3212483 () Bool)

(assert (=> bm!182341 m!3212483))

(declare-fun m!3212485 () Bool)

(assert (=> start!268772 m!3212485))

(declare-fun m!3212487 () Bool)

(assert (=> start!268772 m!3212487))

(declare-fun m!3212489 () Bool)

(assert (=> start!268772 m!3212489))

(declare-fun m!3212491 () Bool)

(assert (=> start!268772 m!3212491))

(declare-fun m!3212493 () Bool)

(assert (=> b!2781405 m!3212493))

(declare-fun m!3212495 () Bool)

(assert (=> bm!182340 m!3212495))

(declare-fun m!3212497 () Bool)

(assert (=> bm!182334 m!3212497))

(declare-fun m!3212499 () Bool)

(assert (=> b!2781422 m!3212499))

(declare-fun m!3212501 () Bool)

(assert (=> bm!182338 m!3212501))

(assert (=> bm!182354 m!3212483))

(declare-fun m!3212503 () Bool)

(assert (=> bm!182337 m!3212503))

(declare-fun m!3212505 () Bool)

(assert (=> bm!182348 m!3212505))

(declare-fun m!3212507 () Bool)

(assert (=> b!2781431 m!3212507))

(declare-fun m!3212509 () Bool)

(assert (=> b!2781434 m!3212509))

(declare-fun m!3212511 () Bool)

(assert (=> b!2781434 m!3212511))

(assert (=> bm!182345 m!3212501))

(assert (=> bm!182342 m!3212495))

(assert (=> bm!182343 m!3212501))

(assert (=> b!2781406 m!3212507))

(declare-fun m!3212513 () Bool)

(assert (=> bm!182351 m!3212513))

(declare-fun m!3212515 () Bool)

(assert (=> bm!182352 m!3212515))

(declare-fun m!3212517 () Bool)

(assert (=> b!2781384 m!3212517))

(assert (=> bm!182353 m!3212505))

(declare-fun m!3212519 () Bool)

(assert (=> bm!182335 m!3212519))

(declare-fun m!3212521 () Bool)

(assert (=> bm!182346 m!3212521))

(declare-fun m!3212523 () Bool)

(assert (=> b!2781403 m!3212523))

(declare-fun m!3212525 () Bool)

(assert (=> b!2781403 m!3212525))

(declare-fun m!3212527 () Bool)

(assert (=> b!2781403 m!3212527))

(declare-fun m!3212529 () Bool)

(assert (=> b!2781403 m!3212529))

(declare-fun m!3212531 () Bool)

(assert (=> b!2781403 m!3212531))

(declare-fun m!3212533 () Bool)

(assert (=> b!2781403 m!3212533))

(declare-fun m!3212535 () Bool)

(assert (=> b!2781403 m!3212535))

(declare-fun m!3212537 () Bool)

(assert (=> b!2781403 m!3212537))

(declare-fun m!3212539 () Bool)

(assert (=> b!2781403 m!3212539))

(declare-fun m!3212541 () Bool)

(assert (=> b!2781403 m!3212541))

(declare-fun m!3212543 () Bool)

(assert (=> b!2781403 m!3212543))

(declare-fun m!3212545 () Bool)

(assert (=> b!2781403 m!3212545))

(declare-fun m!3212547 () Bool)

(assert (=> b!2781403 m!3212547))

(declare-fun m!3212549 () Bool)

(assert (=> b!2781403 m!3212549))

(declare-fun m!3212551 () Bool)

(assert (=> b!2781403 m!3212551))

(assert (=> b!2781403 m!3212531))

(declare-fun m!3212553 () Bool)

(assert (=> b!2781403 m!3212553))

(declare-fun m!3212555 () Bool)

(assert (=> b!2781403 m!3212555))

(declare-fun m!3212557 () Bool)

(assert (=> b!2781403 m!3212557))

(assert (=> b!2781403 m!3212525))

(declare-fun m!3212559 () Bool)

(assert (=> b!2781403 m!3212559))

(declare-fun m!3212561 () Bool)

(assert (=> b!2781403 m!3212561))

(assert (=> b!2781387 m!3212523))

(assert (=> b!2781387 m!3212525))

(assert (=> b!2781387 m!3212527))

(declare-fun m!3212563 () Bool)

(assert (=> b!2781387 m!3212563))

(assert (=> b!2781387 m!3212529))

(declare-fun m!3212565 () Bool)

(assert (=> b!2781387 m!3212565))

(assert (=> b!2781387 m!3212531))

(declare-fun m!3212567 () Bool)

(assert (=> b!2781387 m!3212567))

(assert (=> b!2781387 m!3212535))

(assert (=> b!2781387 m!3212531))

(assert (=> b!2781387 m!3212553))

(assert (=> b!2781387 m!3212541))

(assert (=> b!2781387 m!3212543))

(assert (=> b!2781387 m!3212545))

(assert (=> b!2781387 m!3212525))

(assert (=> b!2781387 m!3212547))

(declare-fun m!3212569 () Bool)

(assert (=> b!2781387 m!3212569))

(declare-fun m!3212571 () Bool)

(assert (=> b!2781387 m!3212571))

(declare-fun m!3212573 () Bool)

(assert (=> b!2781387 m!3212573))

(assert (=> b!2781387 m!3212533))

(assert (=> b!2781387 m!3212559))

(assert (=> b!2781387 m!3212561))

(declare-fun m!3212575 () Bool)

(assert (=> b!2781432 m!3212575))

(declare-fun m!3212577 () Bool)

(assert (=> b!2781432 m!3212577))

(assert (=> bm!182344 m!3212505))

(assert (=> b!2781430 m!3212523))

(declare-fun m!3212579 () Bool)

(assert (=> b!2781430 m!3212579))

(declare-fun m!3212581 () Bool)

(assert (=> b!2781430 m!3212581))

(assert (=> b!2781430 m!3212533))

(assert (=> b!2781430 m!3212535))

(assert (=> b!2781430 m!3212541))

(assert (=> b!2781430 m!3212545))

(assert (=> b!2781430 m!3212559))

(declare-fun m!3212583 () Bool)

(assert (=> b!2781430 m!3212583))

(assert (=> b!2781430 m!3212525))

(assert (=> b!2781430 m!3212527))

(assert (=> b!2781430 m!3212525))

(declare-fun m!3212585 () Bool)

(assert (=> b!2781430 m!3212585))

(declare-fun m!3212587 () Bool)

(assert (=> b!2781408 m!3212587))

(declare-fun m!3212589 () Bool)

(assert (=> b!2781418 m!3212589))

(declare-fun m!3212591 () Bool)

(assert (=> bm!182336 m!3212591))

(declare-fun m!3212593 () Bool)

(assert (=> b!2781411 m!3212593))

(assert (=> bm!182347 m!3212495))

(assert (=> bm!182350 m!3212483))

(declare-fun m!3212595 () Bool)

(assert (=> mapNonEmpty!17460 m!3212595))

(assert (=> b!2781398 m!3212517))

(declare-fun m!3212597 () Bool)

(assert (=> mapNonEmpty!17459 m!3212597))

(declare-fun m!3212599 () Bool)

(assert (=> b!2781424 m!3212599))

(declare-fun m!3212601 () Bool)

(assert (=> b!2781424 m!3212601))

(declare-fun m!3212603 () Bool)

(assert (=> b!2781424 m!3212603))

(declare-fun m!3212605 () Bool)

(assert (=> b!2781424 m!3212605))

(declare-fun m!3212607 () Bool)

(assert (=> b!2781424 m!3212607))

(declare-fun m!3212609 () Bool)

(assert (=> b!2781424 m!3212609))

(declare-fun m!3212611 () Bool)

(assert (=> b!2781424 m!3212611))

(declare-fun m!3212613 () Bool)

(assert (=> b!2781424 m!3212613))

(declare-fun m!3212615 () Bool)

(assert (=> b!2781424 m!3212615))

(assert (=> b!2781424 m!3212613))

(declare-fun m!3212617 () Bool)

(assert (=> b!2781424 m!3212617))

(declare-fun m!3212619 () Bool)

(assert (=> b!2781424 m!3212619))

(declare-fun m!3212621 () Bool)

(assert (=> b!2781424 m!3212621))

(declare-fun m!3212623 () Bool)

(assert (=> b!2781424 m!3212623))

(declare-fun m!3212625 () Bool)

(assert (=> b!2781424 m!3212625))

(declare-fun m!3212627 () Bool)

(assert (=> b!2781424 m!3212627))

(assert (=> b!2781424 m!3212517))

(declare-fun m!3212629 () Bool)

(assert (=> b!2781424 m!3212629))

(declare-fun m!3212631 () Bool)

(assert (=> b!2781424 m!3212631))

(declare-fun m!3212633 () Bool)

(assert (=> bm!182339 m!3212633))

(check-sat (not bm!182337) (not bm!182353) (not bm!182340) (not bm!182346) (not mapNonEmpty!17460) (not bm!182352) (not b!2781431) (not mapNonEmpty!17459) (not setNonEmpty!23260) (not b!2781395) (not b!2781434) (not b!2781387) (not bm!182342) (not b!2781432) (not b_next!79191) (not bm!182343) (not b_next!79195) (not b!2781405) (not b!2781411) (not b!2781430) (not b_next!79189) (not b!2781422) (not bm!182349) b_and!203227 (not bm!182354) (not b!2781419) (not b!2781424) b_and!203223 b_and!203225 b_and!203229 (not bm!182345) (not bm!182344) (not b!2781393) (not bm!182334) (not bm!182335) (not b_next!79193) (not b!2781418) (not bm!182347) (not bm!182338) (not bm!182341) (not bm!182336) (not bm!182348) (not b!2781408) (not bm!182339) (not bm!182350) (not start!268772) (not bm!182351) (not b!2781403) (not b!2781398) (not b!2781406) (not b!2781384))
(check-sat (not b_next!79189) b_and!203227 b_and!203223 (not b_next!79193) (not b_next!79191) (not b_next!79195) b_and!203225 b_and!203229)
(get-model)

(declare-fun b!2781453 () Bool)

(declare-fun e!1754289 () Int)

(declare-fun call!182362 () Int)

(assert (=> b!2781453 (= e!1754289 (- call!182362 0))))

(declare-fun b!2781454 () Bool)

(declare-fun e!1754291 () List!32195)

(assert (=> b!2781454 (= e!1754291 lt!993230)))

(declare-fun b!2781455 () Bool)

(declare-fun e!1754288 () Int)

(assert (=> b!2781455 (= e!1754288 e!1754289)))

(declare-fun c!452141 () Bool)

(assert (=> b!2781455 (= c!452141 (>= 0 call!182362))))

(declare-fun b!2781456 () Bool)

(assert (=> b!2781456 (= e!1754291 (drop!1713 (t!228335 lt!993230) (- 0 1)))))

(declare-fun b!2781457 () Bool)

(declare-fun e!1754290 () Bool)

(declare-fun lt!993275 () List!32195)

(assert (=> b!2781457 (= e!1754290 (= (size!24889 lt!993275) e!1754288))))

(declare-fun c!452139 () Bool)

(assert (=> b!2781457 (= c!452139 (<= 0 0))))

(declare-fun b!2781458 () Bool)

(declare-fun e!1754287 () List!32195)

(assert (=> b!2781458 (= e!1754287 Nil!32095)))

(declare-fun b!2781459 () Bool)

(assert (=> b!2781459 (= e!1754288 call!182362)))

(declare-fun d!810080 () Bool)

(assert (=> d!810080 e!1754290))

(declare-fun res!1161318 () Bool)

(assert (=> d!810080 (=> (not res!1161318) (not e!1754290))))

(declare-fun content!4512 (List!32195) (InoxSet C!16372))

(assert (=> d!810080 (= res!1161318 (= ((_ map implies) (content!4512 lt!993275) (content!4512 lt!993230)) ((as const (InoxSet C!16372)) true)))))

(assert (=> d!810080 (= lt!993275 e!1754287)))

(declare-fun c!452142 () Bool)

(assert (=> d!810080 (= c!452142 ((_ is Nil!32095) lt!993230))))

(assert (=> d!810080 (= (drop!1713 lt!993230 0) lt!993275)))

(declare-fun bm!182357 () Bool)

(assert (=> bm!182357 (= call!182362 (size!24889 lt!993230))))

(declare-fun b!2781460 () Bool)

(assert (=> b!2781460 (= e!1754289 0)))

(declare-fun b!2781461 () Bool)

(assert (=> b!2781461 (= e!1754287 e!1754291)))

(declare-fun c!452140 () Bool)

(assert (=> b!2781461 (= c!452140 (<= 0 0))))

(assert (= (and d!810080 c!452142) b!2781458))

(assert (= (and d!810080 (not c!452142)) b!2781461))

(assert (= (and b!2781461 c!452140) b!2781454))

(assert (= (and b!2781461 (not c!452140)) b!2781456))

(assert (= (and d!810080 res!1161318) b!2781457))

(assert (= (and b!2781457 c!452139) b!2781459))

(assert (= (and b!2781457 (not c!452139)) b!2781455))

(assert (= (and b!2781455 c!452141) b!2781460))

(assert (= (and b!2781455 (not c!452141)) b!2781453))

(assert (= (or b!2781459 b!2781455 b!2781453) bm!182357))

(declare-fun m!3212635 () Bool)

(assert (=> b!2781456 m!3212635))

(declare-fun m!3212637 () Bool)

(assert (=> b!2781457 m!3212637))

(declare-fun m!3212639 () Bool)

(assert (=> d!810080 m!3212639))

(declare-fun m!3212641 () Bool)

(assert (=> d!810080 m!3212641))

(assert (=> bm!182357 m!3212535))

(assert (=> b!2781387 d!810080))

(declare-fun d!810082 () Bool)

(assert (=> d!810082 (= (++!7937 (++!7937 Nil!32095 (Cons!32095 lt!993269 Nil!32095)) lt!993268) lt!993230)))

(declare-fun lt!993278 () Unit!46367)

(declare-fun choose!16309 (List!32195 C!16372 List!32195 List!32195) Unit!46367)

(assert (=> d!810082 (= lt!993278 (choose!16309 Nil!32095 lt!993269 lt!993268 lt!993230))))

(assert (=> d!810082 (= (++!7937 Nil!32095 (Cons!32095 lt!993269 lt!993268)) lt!993230)))

(assert (=> d!810082 (= (lemmaMoveElementToOtherListKeepsConcatEq!876 Nil!32095 lt!993269 lt!993268 lt!993230) lt!993278)))

(declare-fun bs!510755 () Bool)

(assert (= bs!510755 d!810082))

(assert (=> bs!510755 m!3212573))

(assert (=> bs!510755 m!3212573))

(declare-fun m!3212643 () Bool)

(assert (=> bs!510755 m!3212643))

(declare-fun m!3212645 () Bool)

(assert (=> bs!510755 m!3212645))

(declare-fun m!3212647 () Bool)

(assert (=> bs!510755 m!3212647))

(assert (=> b!2781387 d!810082))

(declare-fun d!810084 () Bool)

(declare-fun lt!993281 () Int)

(assert (=> d!810084 (>= lt!993281 0)))

(declare-fun e!1754294 () Int)

(assert (=> d!810084 (= lt!993281 e!1754294)))

(declare-fun c!452145 () Bool)

(assert (=> d!810084 (= c!452145 ((_ is Nil!32095) lt!993230))))

(assert (=> d!810084 (= (size!24889 lt!993230) lt!993281)))

(declare-fun b!2781466 () Bool)

(assert (=> b!2781466 (= e!1754294 0)))

(declare-fun b!2781467 () Bool)

(assert (=> b!2781467 (= e!1754294 (+ 1 (size!24889 (t!228335 lt!993230))))))

(assert (= (and d!810084 c!452145) b!2781466))

(assert (= (and d!810084 (not c!452145)) b!2781467))

(declare-fun m!3212649 () Bool)

(assert (=> b!2781467 m!3212649))

(assert (=> b!2781387 d!810084))

(declare-fun b!2781478 () Bool)

(declare-fun e!1754303 () Bool)

(assert (=> b!2781478 (= e!1754303 (isPrefix!2560 (tail!4393 (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095))) (tail!4393 lt!993230)))))

(declare-fun b!2781477 () Bool)

(declare-fun res!1161328 () Bool)

(assert (=> b!2781477 (=> (not res!1161328) (not e!1754303))))

(assert (=> b!2781477 (= res!1161328 (= (head!6155 (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095))) (head!6155 lt!993230)))))

(declare-fun b!2781476 () Bool)

(declare-fun e!1754302 () Bool)

(assert (=> b!2781476 (= e!1754302 e!1754303)))

(declare-fun res!1161329 () Bool)

(assert (=> b!2781476 (=> (not res!1161329) (not e!1754303))))

(assert (=> b!2781476 (= res!1161329 (not ((_ is Nil!32095) lt!993230)))))

(declare-fun b!2781479 () Bool)

(declare-fun e!1754301 () Bool)

(assert (=> b!2781479 (= e!1754301 (>= (size!24889 lt!993230) (size!24889 (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095)))))))

(declare-fun d!810086 () Bool)

(assert (=> d!810086 e!1754301))

(declare-fun res!1161327 () Bool)

(assert (=> d!810086 (=> res!1161327 e!1754301)))

(declare-fun lt!993284 () Bool)

(assert (=> d!810086 (= res!1161327 (not lt!993284))))

(assert (=> d!810086 (= lt!993284 e!1754302)))

(declare-fun res!1161330 () Bool)

(assert (=> d!810086 (=> res!1161330 e!1754302)))

(assert (=> d!810086 (= res!1161330 ((_ is Nil!32095) (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095))))))

(assert (=> d!810086 (= (isPrefix!2560 (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095)) lt!993230) lt!993284)))

(assert (= (and d!810086 (not res!1161330)) b!2781476))

(assert (= (and b!2781476 res!1161329) b!2781477))

(assert (= (and b!2781477 res!1161328) b!2781478))

(assert (= (and d!810086 (not res!1161327)) b!2781479))

(assert (=> b!2781478 m!3212525))

(declare-fun m!3212651 () Bool)

(assert (=> b!2781478 m!3212651))

(assert (=> b!2781478 m!3212533))

(assert (=> b!2781478 m!3212651))

(assert (=> b!2781478 m!3212533))

(declare-fun m!3212653 () Bool)

(assert (=> b!2781478 m!3212653))

(assert (=> b!2781477 m!3212525))

(declare-fun m!3212655 () Bool)

(assert (=> b!2781477 m!3212655))

(assert (=> b!2781477 m!3212579))

(assert (=> b!2781479 m!3212535))

(assert (=> b!2781479 m!3212525))

(declare-fun m!3212657 () Bool)

(assert (=> b!2781479 m!3212657))

(assert (=> b!2781387 d!810086))

(declare-fun b!2781489 () Bool)

(declare-fun e!1754309 () List!32195)

(assert (=> b!2781489 (= e!1754309 (Cons!32095 (h!37515 lt!993200) (++!7937 (t!228335 lt!993200) lt!993268)))))

(declare-fun b!2781490 () Bool)

(declare-fun res!1161336 () Bool)

(declare-fun e!1754308 () Bool)

(assert (=> b!2781490 (=> (not res!1161336) (not e!1754308))))

(declare-fun lt!993287 () List!32195)

(assert (=> b!2781490 (= res!1161336 (= (size!24889 lt!993287) (+ (size!24889 lt!993200) (size!24889 lt!993268))))))

(declare-fun d!810088 () Bool)

(assert (=> d!810088 e!1754308))

(declare-fun res!1161335 () Bool)

(assert (=> d!810088 (=> (not res!1161335) (not e!1754308))))

(assert (=> d!810088 (= res!1161335 (= (content!4512 lt!993287) ((_ map or) (content!4512 lt!993200) (content!4512 lt!993268))))))

(assert (=> d!810088 (= lt!993287 e!1754309)))

(declare-fun c!452148 () Bool)

(assert (=> d!810088 (= c!452148 ((_ is Nil!32095) lt!993200))))

(assert (=> d!810088 (= (++!7937 lt!993200 lt!993268) lt!993287)))

(declare-fun b!2781488 () Bool)

(assert (=> b!2781488 (= e!1754309 lt!993268)))

(declare-fun b!2781491 () Bool)

(assert (=> b!2781491 (= e!1754308 (or (not (= lt!993268 Nil!32095)) (= lt!993287 lt!993200)))))

(assert (= (and d!810088 c!452148) b!2781488))

(assert (= (and d!810088 (not c!452148)) b!2781489))

(assert (= (and d!810088 res!1161335) b!2781490))

(assert (= (and b!2781490 res!1161336) b!2781491))

(declare-fun m!3212659 () Bool)

(assert (=> b!2781489 m!3212659))

(declare-fun m!3212661 () Bool)

(assert (=> b!2781490 m!3212661))

(declare-fun m!3212663 () Bool)

(assert (=> b!2781490 m!3212663))

(declare-fun m!3212665 () Bool)

(assert (=> b!2781490 m!3212665))

(declare-fun m!3212667 () Bool)

(assert (=> d!810088 m!3212667))

(declare-fun m!3212669 () Bool)

(assert (=> d!810088 m!3212669))

(declare-fun m!3212671 () Bool)

(assert (=> d!810088 m!3212671))

(assert (=> b!2781387 d!810088))

(declare-fun d!810090 () Bool)

(declare-fun lt!993290 () C!16372)

(declare-fun contains!5999 (List!32195 C!16372) Bool)

(assert (=> d!810090 (contains!5999 lt!993230 lt!993290)))

(declare-fun e!1754314 () C!16372)

(assert (=> d!810090 (= lt!993290 e!1754314)))

(declare-fun c!452151 () Bool)

(assert (=> d!810090 (= c!452151 (= 0 0))))

(declare-fun e!1754315 () Bool)

(assert (=> d!810090 e!1754315))

(declare-fun res!1161339 () Bool)

(assert (=> d!810090 (=> (not res!1161339) (not e!1754315))))

(assert (=> d!810090 (= res!1161339 (<= 0 0))))

(assert (=> d!810090 (= (apply!7523 lt!993230 0) lt!993290)))

(declare-fun b!2781498 () Bool)

(assert (=> b!2781498 (= e!1754315 (< 0 (size!24889 lt!993230)))))

(declare-fun b!2781499 () Bool)

(assert (=> b!2781499 (= e!1754314 (head!6155 lt!993230))))

(declare-fun b!2781500 () Bool)

(assert (=> b!2781500 (= e!1754314 (apply!7523 (tail!4393 lt!993230) (- 0 1)))))

(assert (= (and d!810090 res!1161339) b!2781498))

(assert (= (and d!810090 c!452151) b!2781499))

(assert (= (and d!810090 (not c!452151)) b!2781500))

(declare-fun m!3212673 () Bool)

(assert (=> d!810090 m!3212673))

(assert (=> b!2781498 m!3212535))

(assert (=> b!2781499 m!3212579))

(assert (=> b!2781500 m!3212533))

(assert (=> b!2781500 m!3212533))

(declare-fun m!3212675 () Bool)

(assert (=> b!2781500 m!3212675))

(assert (=> b!2781387 d!810090))

(declare-fun d!810092 () Bool)

(declare-fun list!12104 (Conc!9984) List!32195)

(assert (=> d!810092 (= (list!12103 (_1!19110 lt!993260)) (list!12104 (c!452130 (_1!19110 lt!993260))))))

(declare-fun bs!510756 () Bool)

(assert (= bs!510756 d!810092))

(declare-fun m!3212677 () Bool)

(assert (=> bs!510756 m!3212677))

(assert (=> b!2781387 d!810092))

(declare-fun d!810094 () Bool)

(assert (=> d!810094 (= (head!6155 lt!993219) (h!37515 lt!993219))))

(assert (=> b!2781387 d!810094))

(declare-fun d!810096 () Bool)

(declare-fun lt!993293 () C!16372)

(assert (=> d!810096 (= lt!993293 (apply!7523 (list!12103 input!5495) 0))))

(declare-fun apply!7524 (Conc!9984 Int) C!16372)

(assert (=> d!810096 (= lt!993293 (apply!7524 (c!452130 input!5495) 0))))

(declare-fun e!1754318 () Bool)

(assert (=> d!810096 e!1754318))

(declare-fun res!1161342 () Bool)

(assert (=> d!810096 (=> (not res!1161342) (not e!1754318))))

(assert (=> d!810096 (= res!1161342 (<= 0 0))))

(assert (=> d!810096 (= (apply!7522 input!5495 0) lt!993293)))

(declare-fun b!2781503 () Bool)

(assert (=> b!2781503 (= e!1754318 (< 0 (size!24890 input!5495)))))

(assert (= (and d!810096 res!1161342) b!2781503))

(assert (=> d!810096 m!3212603))

(assert (=> d!810096 m!3212603))

(declare-fun m!3212679 () Bool)

(assert (=> d!810096 m!3212679))

(declare-fun m!3212681 () Bool)

(assert (=> d!810096 m!3212681))

(assert (=> b!2781503 m!3212629))

(assert (=> b!2781387 d!810096))

(declare-fun d!810098 () Bool)

(assert (=> d!810098 (= (head!6155 (drop!1713 lt!993230 0)) (apply!7523 lt!993230 0))))

(declare-fun lt!993296 () Unit!46367)

(declare-fun choose!16310 (List!32195 Int) Unit!46367)

(assert (=> d!810098 (= lt!993296 (choose!16310 lt!993230 0))))

(declare-fun e!1754321 () Bool)

(assert (=> d!810098 e!1754321))

(declare-fun res!1161345 () Bool)

(assert (=> d!810098 (=> (not res!1161345) (not e!1754321))))

(assert (=> d!810098 (= res!1161345 (>= 0 0))))

(assert (=> d!810098 (= (lemmaDropApply!919 lt!993230 0) lt!993296)))

(declare-fun b!2781506 () Bool)

(assert (=> b!2781506 (= e!1754321 (< 0 (size!24889 lt!993230)))))

(assert (= (and d!810098 res!1161345) b!2781506))

(assert (=> d!810098 m!3212531))

(assert (=> d!810098 m!3212531))

(assert (=> d!810098 m!3212553))

(assert (=> d!810098 m!3212561))

(declare-fun m!3212683 () Bool)

(assert (=> d!810098 m!3212683))

(assert (=> b!2781506 m!3212535))

(assert (=> b!2781387 d!810098))

(declare-fun b!2781508 () Bool)

(declare-fun e!1754323 () List!32195)

(assert (=> b!2781508 (= e!1754323 (Cons!32095 (h!37515 Nil!32095) (++!7937 (t!228335 Nil!32095) (Cons!32095 (head!6155 lt!993219) Nil!32095))))))

(declare-fun b!2781509 () Bool)

(declare-fun res!1161347 () Bool)

(declare-fun e!1754322 () Bool)

(assert (=> b!2781509 (=> (not res!1161347) (not e!1754322))))

(declare-fun lt!993297 () List!32195)

(assert (=> b!2781509 (= res!1161347 (= (size!24889 lt!993297) (+ (size!24889 Nil!32095) (size!24889 (Cons!32095 (head!6155 lt!993219) Nil!32095)))))))

(declare-fun d!810100 () Bool)

(assert (=> d!810100 e!1754322))

(declare-fun res!1161346 () Bool)

(assert (=> d!810100 (=> (not res!1161346) (not e!1754322))))

(assert (=> d!810100 (= res!1161346 (= (content!4512 lt!993297) ((_ map or) (content!4512 Nil!32095) (content!4512 (Cons!32095 (head!6155 lt!993219) Nil!32095)))))))

(assert (=> d!810100 (= lt!993297 e!1754323)))

(declare-fun c!452152 () Bool)

(assert (=> d!810100 (= c!452152 ((_ is Nil!32095) Nil!32095))))

(assert (=> d!810100 (= (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993219) Nil!32095)) lt!993297)))

(declare-fun b!2781507 () Bool)

(assert (=> b!2781507 (= e!1754323 (Cons!32095 (head!6155 lt!993219) Nil!32095))))

(declare-fun b!2781510 () Bool)

(assert (=> b!2781510 (= e!1754322 (or (not (= (Cons!32095 (head!6155 lt!993219) Nil!32095) Nil!32095)) (= lt!993297 Nil!32095)))))

(assert (= (and d!810100 c!452152) b!2781507))

(assert (= (and d!810100 (not c!452152)) b!2781508))

(assert (= (and d!810100 res!1161346) b!2781509))

(assert (= (and b!2781509 res!1161347) b!2781510))

(declare-fun m!3212685 () Bool)

(assert (=> b!2781508 m!3212685))

(declare-fun m!3212687 () Bool)

(assert (=> b!2781509 m!3212687))

(assert (=> b!2781509 m!3212545))

(declare-fun m!3212689 () Bool)

(assert (=> b!2781509 m!3212689))

(declare-fun m!3212691 () Bool)

(assert (=> d!810100 m!3212691))

(declare-fun m!3212693 () Bool)

(assert (=> d!810100 m!3212693))

(declare-fun m!3212695 () Bool)

(assert (=> d!810100 m!3212695))

(assert (=> b!2781387 d!810100))

(declare-fun d!810102 () Bool)

(declare-fun lt!993298 () Int)

(assert (=> d!810102 (>= lt!993298 0)))

(declare-fun e!1754324 () Int)

(assert (=> d!810102 (= lt!993298 e!1754324)))

(declare-fun c!452153 () Bool)

(assert (=> d!810102 (= c!452153 ((_ is Nil!32095) Nil!32095))))

(assert (=> d!810102 (= (size!24889 Nil!32095) lt!993298)))

(declare-fun b!2781511 () Bool)

(assert (=> b!2781511 (= e!1754324 0)))

(declare-fun b!2781512 () Bool)

(assert (=> b!2781512 (= e!1754324 (+ 1 (size!24889 (t!228335 Nil!32095))))))

(assert (= (and d!810102 c!452153) b!2781511))

(assert (= (and d!810102 (not c!452153)) b!2781512))

(declare-fun m!3212697 () Bool)

(assert (=> b!2781512 m!3212697))

(assert (=> b!2781387 d!810102))

(declare-fun d!810104 () Bool)

(assert (=> d!810104 (= (head!6155 (drop!1713 lt!993230 0)) (h!37515 (drop!1713 lt!993230 0)))))

(assert (=> b!2781387 d!810104))

(declare-fun d!810106 () Bool)

(assert (=> d!810106 (= (list!12103 (_2!19110 lt!993260)) (list!12104 (c!452130 (_2!19110 lt!993260))))))

(declare-fun bs!510757 () Bool)

(assert (= bs!510757 d!810106))

(declare-fun m!3212699 () Bool)

(assert (=> bs!510757 m!3212699))

(assert (=> b!2781387 d!810106))

(declare-fun d!810108 () Bool)

(assert (=> d!810108 (<= (size!24889 Nil!32095) (size!24889 lt!993230))))

(declare-fun lt!993301 () Unit!46367)

(declare-fun choose!16311 (List!32195 List!32195) Unit!46367)

(assert (=> d!810108 (= lt!993301 (choose!16311 Nil!32095 lt!993230))))

(assert (=> d!810108 (isPrefix!2560 Nil!32095 lt!993230)))

(assert (=> d!810108 (= (lemmaIsPrefixThenSmallerEqSize!267 Nil!32095 lt!993230) lt!993301)))

(declare-fun bs!510758 () Bool)

(assert (= bs!510758 d!810108))

(assert (=> bs!510758 m!3212545))

(assert (=> bs!510758 m!3212535))

(declare-fun m!3212701 () Bool)

(assert (=> bs!510758 m!3212701))

(declare-fun m!3212703 () Bool)

(assert (=> bs!510758 m!3212703))

(assert (=> b!2781387 d!810108))

(declare-fun d!810110 () Bool)

(assert (=> d!810110 (= (tail!4393 lt!993230) (t!228335 lt!993230))))

(assert (=> b!2781387 d!810110))

(declare-fun b!2781514 () Bool)

(declare-fun e!1754326 () List!32195)

(assert (=> b!2781514 (= e!1754326 (Cons!32095 (h!37515 Nil!32095) (++!7937 (t!228335 Nil!32095) (Cons!32095 lt!993269 Nil!32095))))))

(declare-fun b!2781515 () Bool)

(declare-fun res!1161349 () Bool)

(declare-fun e!1754325 () Bool)

(assert (=> b!2781515 (=> (not res!1161349) (not e!1754325))))

(declare-fun lt!993302 () List!32195)

(assert (=> b!2781515 (= res!1161349 (= (size!24889 lt!993302) (+ (size!24889 Nil!32095) (size!24889 (Cons!32095 lt!993269 Nil!32095)))))))

(declare-fun d!810112 () Bool)

(assert (=> d!810112 e!1754325))

(declare-fun res!1161348 () Bool)

(assert (=> d!810112 (=> (not res!1161348) (not e!1754325))))

(assert (=> d!810112 (= res!1161348 (= (content!4512 lt!993302) ((_ map or) (content!4512 Nil!32095) (content!4512 (Cons!32095 lt!993269 Nil!32095)))))))

(assert (=> d!810112 (= lt!993302 e!1754326)))

(declare-fun c!452154 () Bool)

(assert (=> d!810112 (= c!452154 ((_ is Nil!32095) Nil!32095))))

(assert (=> d!810112 (= (++!7937 Nil!32095 (Cons!32095 lt!993269 Nil!32095)) lt!993302)))

(declare-fun b!2781513 () Bool)

(assert (=> b!2781513 (= e!1754326 (Cons!32095 lt!993269 Nil!32095))))

(declare-fun b!2781516 () Bool)

(assert (=> b!2781516 (= e!1754325 (or (not (= (Cons!32095 lt!993269 Nil!32095) Nil!32095)) (= lt!993302 Nil!32095)))))

(assert (= (and d!810112 c!452154) b!2781513))

(assert (= (and d!810112 (not c!452154)) b!2781514))

(assert (= (and d!810112 res!1161348) b!2781515))

(assert (= (and b!2781515 res!1161349) b!2781516))

(declare-fun m!3212705 () Bool)

(assert (=> b!2781514 m!3212705))

(declare-fun m!3212707 () Bool)

(assert (=> b!2781515 m!3212707))

(assert (=> b!2781515 m!3212545))

(declare-fun m!3212709 () Bool)

(assert (=> b!2781515 m!3212709))

(declare-fun m!3212711 () Bool)

(assert (=> d!810112 m!3212711))

(assert (=> d!810112 m!3212693))

(declare-fun m!3212713 () Bool)

(assert (=> d!810112 m!3212713))

(assert (=> b!2781387 d!810112))

(declare-fun d!810114 () Bool)

(assert (=> d!810114 (and (= lt!993213 Nil!32095) (= lt!993248 lt!993230))))

(declare-fun lt!993305 () Unit!46367)

(declare-fun choose!16312 (List!32195 List!32195 List!32195 List!32195) Unit!46367)

(assert (=> d!810114 (= lt!993305 (choose!16312 lt!993213 lt!993248 Nil!32095 lt!993230))))

(assert (=> d!810114 (= (++!7937 lt!993213 lt!993248) (++!7937 Nil!32095 lt!993230))))

(assert (=> d!810114 (= (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993213 lt!993248 Nil!32095 lt!993230) lt!993305)))

(declare-fun bs!510759 () Bool)

(assert (= bs!510759 d!810114))

(declare-fun m!3212715 () Bool)

(assert (=> bs!510759 m!3212715))

(declare-fun m!3212717 () Bool)

(assert (=> bs!510759 m!3212717))

(assert (=> bs!510759 m!3212613))

(assert (=> b!2781387 d!810114))

(declare-fun d!810116 () Bool)

(declare-fun e!1754329 () Bool)

(assert (=> d!810116 e!1754329))

(declare-fun res!1161354 () Bool)

(assert (=> d!810116 (=> (not res!1161354) (not e!1754329))))

(declare-fun lt!993311 () tuple2!32342)

(declare-fun isBalanced!3046 (Conc!9984) Bool)

(assert (=> d!810116 (= res!1161354 (isBalanced!3046 (c!452130 (_1!19110 lt!993311))))))

(declare-datatypes ((tuple2!32344 0))(
  ( (tuple2!32345 (_1!19112 Conc!9984) (_2!19112 Conc!9984)) )
))
(declare-fun lt!993310 () tuple2!32344)

(assert (=> d!810116 (= lt!993311 (tuple2!32343 (BalanceConc!19583 (_1!19112 lt!993310)) (BalanceConc!19583 (_2!19112 lt!993310))))))

(declare-fun splitAt!125 (Conc!9984 Int) tuple2!32344)

(assert (=> d!810116 (= lt!993310 (splitAt!125 (c!452130 input!5495) 0))))

(assert (=> d!810116 (isBalanced!3046 (c!452130 input!5495))))

(assert (=> d!810116 (= (splitAt!124 input!5495 0) lt!993311)))

(declare-fun b!2781521 () Bool)

(declare-fun res!1161355 () Bool)

(assert (=> b!2781521 (=> (not res!1161355) (not e!1754329))))

(assert (=> b!2781521 (= res!1161355 (isBalanced!3046 (c!452130 (_2!19110 lt!993311))))))

(declare-fun b!2781522 () Bool)

(declare-fun splitAtIndex!54 (List!32195 Int) tuple2!32340)

(assert (=> b!2781522 (= e!1754329 (= (tuple2!32341 (list!12103 (_1!19110 lt!993311)) (list!12103 (_2!19110 lt!993311))) (splitAtIndex!54 (list!12103 input!5495) 0)))))

(assert (= (and d!810116 res!1161354) b!2781521))

(assert (= (and b!2781521 res!1161355) b!2781522))

(declare-fun m!3212719 () Bool)

(assert (=> d!810116 m!3212719))

(declare-fun m!3212721 () Bool)

(assert (=> d!810116 m!3212721))

(declare-fun m!3212723 () Bool)

(assert (=> d!810116 m!3212723))

(declare-fun m!3212725 () Bool)

(assert (=> b!2781521 m!3212725))

(declare-fun m!3212727 () Bool)

(assert (=> b!2781522 m!3212727))

(declare-fun m!3212729 () Bool)

(assert (=> b!2781522 m!3212729))

(assert (=> b!2781522 m!3212603))

(assert (=> b!2781522 m!3212603))

(declare-fun m!3212731 () Bool)

(assert (=> b!2781522 m!3212731))

(assert (=> b!2781387 d!810116))

(declare-fun d!810118 () Bool)

(assert (=> d!810118 (isPrefix!2560 (++!7937 Nil!32095 (Cons!32095 (head!6155 (getSuffix!1242 lt!993230 Nil!32095)) Nil!32095)) lt!993230)))

(declare-fun lt!993314 () Unit!46367)

(declare-fun choose!16313 (List!32195 List!32195) Unit!46367)

(assert (=> d!810118 (= lt!993314 (choose!16313 Nil!32095 lt!993230))))

(assert (=> d!810118 (isPrefix!2560 Nil!32095 lt!993230)))

(assert (=> d!810118 (= (lemmaAddHeadSuffixToPrefixStillPrefix!464 Nil!32095 lt!993230) lt!993314)))

(declare-fun bs!510760 () Bool)

(assert (= bs!510760 d!810118))

(assert (=> bs!510760 m!3212703))

(assert (=> bs!510760 m!3212625))

(declare-fun m!3212733 () Bool)

(assert (=> bs!510760 m!3212733))

(assert (=> bs!510760 m!3212625))

(declare-fun m!3212735 () Bool)

(assert (=> bs!510760 m!3212735))

(declare-fun m!3212737 () Bool)

(assert (=> bs!510760 m!3212737))

(declare-fun m!3212739 () Bool)

(assert (=> bs!510760 m!3212739))

(assert (=> bs!510760 m!3212737))

(assert (=> b!2781387 d!810118))

(declare-fun d!810120 () Bool)

(declare-fun lambda!102109 () Int)

(declare-fun forall!6643 (List!32192 Int) Bool)

(assert (=> d!810120 (= (inv!43588 setElem!23260) (forall!6643 (exprs!2825 setElem!23260) lambda!102109))))

(declare-fun bs!510761 () Bool)

(assert (= bs!510761 d!810120))

(declare-fun m!3212741 () Bool)

(assert (=> bs!510761 m!3212741))

(assert (=> setNonEmpty!23260 d!810120))

(declare-fun d!810122 () Bool)

(declare-fun lambda!102112 () Int)

(declare-fun exists!981 ((InoxSet Context!4650) Int) Bool)

(assert (=> d!810122 (= (nullableZipper!640 z!3597) (exists!981 z!3597 lambda!102112))))

(declare-fun bs!510762 () Bool)

(assert (= bs!510762 d!810122))

(declare-fun m!3212743 () Bool)

(assert (=> bs!510762 m!3212743))

(assert (=> bm!182341 d!810122))

(declare-fun b!2781525 () Bool)

(declare-fun e!1754332 () Bool)

(assert (=> b!2781525 (= e!1754332 (isPrefix!2560 (tail!4393 lt!993230) (tail!4393 lt!993230)))))

(declare-fun b!2781524 () Bool)

(declare-fun res!1161357 () Bool)

(assert (=> b!2781524 (=> (not res!1161357) (not e!1754332))))

(assert (=> b!2781524 (= res!1161357 (= (head!6155 lt!993230) (head!6155 lt!993230)))))

(declare-fun b!2781523 () Bool)

(declare-fun e!1754331 () Bool)

(assert (=> b!2781523 (= e!1754331 e!1754332)))

(declare-fun res!1161358 () Bool)

(assert (=> b!2781523 (=> (not res!1161358) (not e!1754332))))

(assert (=> b!2781523 (= res!1161358 (not ((_ is Nil!32095) lt!993230)))))

(declare-fun b!2781526 () Bool)

(declare-fun e!1754330 () Bool)

(assert (=> b!2781526 (= e!1754330 (>= (size!24889 lt!993230) (size!24889 lt!993230)))))

(declare-fun d!810124 () Bool)

(assert (=> d!810124 e!1754330))

(declare-fun res!1161356 () Bool)

(assert (=> d!810124 (=> res!1161356 e!1754330)))

(declare-fun lt!993315 () Bool)

(assert (=> d!810124 (= res!1161356 (not lt!993315))))

(assert (=> d!810124 (= lt!993315 e!1754331)))

(declare-fun res!1161359 () Bool)

(assert (=> d!810124 (=> res!1161359 e!1754331)))

(assert (=> d!810124 (= res!1161359 ((_ is Nil!32095) lt!993230))))

(assert (=> d!810124 (= (isPrefix!2560 lt!993230 lt!993230) lt!993315)))

(assert (= (and d!810124 (not res!1161359)) b!2781523))

(assert (= (and b!2781523 res!1161358) b!2781524))

(assert (= (and b!2781524 res!1161357) b!2781525))

(assert (= (and d!810124 (not res!1161356)) b!2781526))

(assert (=> b!2781525 m!3212533))

(assert (=> b!2781525 m!3212533))

(assert (=> b!2781525 m!3212533))

(assert (=> b!2781525 m!3212533))

(declare-fun m!3212745 () Bool)

(assert (=> b!2781525 m!3212745))

(assert (=> b!2781524 m!3212579))

(assert (=> b!2781524 m!3212579))

(assert (=> b!2781526 m!3212535))

(assert (=> b!2781526 m!3212535))

(assert (=> bm!182342 d!810124))

(declare-fun d!810126 () Bool)

(declare-fun validCacheMapDown!402 (MutableMap!3728) Bool)

(assert (=> d!810126 (= (valid!2988 (ite c!452125 (_3!2937 lt!993204) (_3!2937 lt!993216))) (validCacheMapDown!402 (cache!3871 (ite c!452125 (_3!2937 lt!993204) (_3!2937 lt!993216)))))))

(declare-fun bs!510763 () Bool)

(assert (= bs!510763 d!810126))

(declare-fun m!3212747 () Bool)

(assert (=> bs!510763 m!3212747))

(assert (=> bm!182335 d!810126))

(declare-fun d!810128 () Bool)

(assert (=> d!810128 (isPrefix!2560 lt!993230 lt!993230)))

(declare-fun lt!993318 () Unit!46367)

(declare-fun choose!16314 (List!32195 List!32195) Unit!46367)

(assert (=> d!810128 (= lt!993318 (choose!16314 lt!993230 lt!993230))))

(assert (=> d!810128 (= (lemmaIsPrefixRefl!1685 lt!993230 lt!993230) lt!993318)))

(declare-fun bs!510764 () Bool)

(assert (= bs!510764 d!810128))

(assert (=> bs!510764 m!3212495))

(declare-fun m!3212749 () Bool)

(assert (=> bs!510764 m!3212749))

(assert (=> bm!182353 d!810128))

(declare-fun b!2781551 () Bool)

(declare-fun e!1754350 () Int)

(declare-fun lt!993411 () Int)

(assert (=> b!2781551 (= e!1754350 (ite (= lt!993411 0) 0 lt!993411))))

(declare-fun call!182388 () Int)

(assert (=> b!2781551 (= lt!993411 call!182388)))

(declare-fun bm!182378 () Bool)

(declare-fun c!452169 () Bool)

(declare-fun lt!993414 () List!32195)

(declare-fun lt!993424 () List!32195)

(declare-fun lt!993431 () List!32195)

(declare-fun call!182392 () Bool)

(declare-fun lt!993440 () List!32195)

(assert (=> bm!182378 (= call!182392 (isPrefix!2560 (ite c!452169 lt!993424 lt!993431) (ite c!452169 lt!993440 lt!993414)))))

(declare-fun bm!182379 () Bool)

(declare-fun call!182387 () Unit!46367)

(assert (=> bm!182379 (= call!182387 (lemmaIsPrefixRefl!1685 (ite c!452169 lt!993424 lt!993431) (ite c!452169 lt!993440 lt!993414)))))

(declare-fun bm!182380 () Bool)

(declare-fun call!182391 () List!32195)

(declare-fun call!182386 () C!16372)

(assert (=> bm!182380 (= call!182391 (++!7937 Nil!32095 (Cons!32095 call!182386 Nil!32095)))))

(declare-fun b!2781552 () Bool)

(declare-fun c!452170 () Bool)

(declare-fun call!182385 () Bool)

(assert (=> b!2781552 (= c!452170 call!182385)))

(declare-fun lt!993426 () Unit!46367)

(declare-fun lt!993444 () Unit!46367)

(assert (=> b!2781552 (= lt!993426 lt!993444)))

(declare-fun lt!993419 () C!16372)

(declare-fun lt!993412 () List!32195)

(declare-fun lt!993433 () List!32195)

(assert (=> b!2781552 (= (++!7937 (++!7937 Nil!32095 (Cons!32095 lt!993419 Nil!32095)) lt!993412) lt!993433)))

(assert (=> b!2781552 (= lt!993444 (lemmaMoveElementToOtherListKeepsConcatEq!876 Nil!32095 lt!993419 lt!993412 lt!993433))))

(assert (=> b!2781552 (= lt!993433 (list!12103 input!5495))))

(assert (=> b!2781552 (= lt!993412 (tail!4393 lt!993230))))

(assert (=> b!2781552 (= lt!993419 (apply!7522 input!5495 0))))

(declare-fun lt!993427 () Unit!46367)

(declare-fun lt!993437 () Unit!46367)

(assert (=> b!2781552 (= lt!993427 lt!993437)))

(declare-fun lt!993429 () List!32195)

(assert (=> b!2781552 (isPrefix!2560 (++!7937 Nil!32095 (Cons!32095 (head!6155 (getSuffix!1242 lt!993429 Nil!32095)) Nil!32095)) lt!993429)))

(assert (=> b!2781552 (= lt!993437 (lemmaAddHeadSuffixToPrefixStillPrefix!464 Nil!32095 lt!993429))))

(assert (=> b!2781552 (= lt!993429 (list!12103 input!5495))))

(declare-fun lt!993441 () Unit!46367)

(declare-fun e!1754345 () Unit!46367)

(assert (=> b!2781552 (= lt!993441 e!1754345)))

(declare-fun c!452174 () Bool)

(assert (=> b!2781552 (= c!452174 (= (size!24889 Nil!32095) (size!24890 input!5495)))))

(declare-fun lt!993409 () Unit!46367)

(declare-fun lt!993420 () Unit!46367)

(assert (=> b!2781552 (= lt!993409 lt!993420)))

(declare-fun lt!993421 () List!32195)

(assert (=> b!2781552 (<= (size!24889 Nil!32095) (size!24889 lt!993421))))

(assert (=> b!2781552 (= lt!993420 (lemmaIsPrefixThenSmallerEqSize!267 Nil!32095 lt!993421))))

(assert (=> b!2781552 (= lt!993421 (list!12103 input!5495))))

(declare-fun lt!993405 () Unit!46367)

(declare-fun lt!993408 () Unit!46367)

(assert (=> b!2781552 (= lt!993405 lt!993408)))

(declare-fun lt!993434 () List!32195)

(assert (=> b!2781552 (= (head!6155 (drop!1713 lt!993434 0)) (apply!7523 lt!993434 0))))

(assert (=> b!2781552 (= lt!993408 (lemmaDropApply!919 lt!993434 0))))

(assert (=> b!2781552 (= lt!993434 (list!12103 input!5495))))

(declare-fun lt!993418 () Unit!46367)

(declare-fun lt!993425 () Unit!46367)

(assert (=> b!2781552 (= lt!993418 lt!993425)))

(declare-fun lt!993430 () List!32195)

(declare-fun lt!993404 () List!32195)

(assert (=> b!2781552 (and (= lt!993430 Nil!32095) (= lt!993404 lt!993230))))

(assert (=> b!2781552 (= lt!993425 (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993430 lt!993404 Nil!32095 lt!993230))))

(declare-fun lt!993436 () tuple2!32342)

(assert (=> b!2781552 (= lt!993404 (list!12103 (_2!19110 lt!993436)))))

(declare-fun call!182390 () List!32195)

(assert (=> b!2781552 (= lt!993430 call!182390)))

(assert (=> b!2781552 (= lt!993436 (splitAt!124 input!5495 0))))

(declare-fun e!1754346 () Int)

(assert (=> b!2781552 (= e!1754346 e!1754350)))

(declare-fun b!2781553 () Bool)

(declare-fun e!1754347 () Int)

(assert (=> b!2781553 (= e!1754347 0)))

(declare-fun b!2781554 () Bool)

(declare-fun c!452172 () Bool)

(assert (=> b!2781554 (= c!452172 call!182385)))

(declare-fun lt!993407 () Unit!46367)

(declare-fun lt!993442 () Unit!46367)

(assert (=> b!2781554 (= lt!993407 lt!993442)))

(declare-fun lt!993417 () List!32195)

(assert (=> b!2781554 (= lt!993417 Nil!32095)))

(declare-fun call!182389 () Unit!46367)

(assert (=> b!2781554 (= lt!993442 call!182389)))

(assert (=> b!2781554 (= lt!993417 call!182390)))

(declare-fun lt!993415 () Unit!46367)

(declare-fun lt!993438 () Unit!46367)

(assert (=> b!2781554 (= lt!993415 lt!993438)))

(assert (=> b!2781554 call!182392))

(assert (=> b!2781554 (= lt!993438 call!182387)))

(assert (=> b!2781554 (= lt!993440 call!182390)))

(assert (=> b!2781554 (= lt!993424 call!182390)))

(declare-fun e!1754349 () Int)

(assert (=> b!2781554 (= e!1754346 e!1754349)))

(declare-fun b!2781555 () Bool)

(declare-fun e!1754348 () List!32195)

(assert (=> b!2781555 (= e!1754348 call!182390)))

(declare-fun b!2781556 () Bool)

(assert (=> b!2781556 (= e!1754348 (list!12103 input!5495))))

(declare-fun bm!182381 () Bool)

(declare-fun c!452171 () Bool)

(assert (=> bm!182381 (= c!452171 c!452169)))

(declare-fun lt!993439 () List!32195)

(assert (=> bm!182381 (= call!182389 (lemmaIsPrefixSameLengthThenSameList!467 (ite c!452169 lt!993417 lt!993439) Nil!32095 e!1754348))))

(declare-fun d!810130 () Bool)

(declare-fun lt!993428 () Int)

(assert (=> d!810130 (= (size!24889 (_1!19109 (findLongestMatchInnerZipper!30 z!3597 Nil!32095 0 lt!993230 (list!12103 input!5495) lt!993243))) lt!993428)))

(assert (=> d!810130 (= lt!993428 e!1754347)))

(declare-fun c!452173 () Bool)

(assert (=> d!810130 (= c!452173 (lostCauseZipper!446 z!3597))))

(declare-fun lt!993423 () Unit!46367)

(declare-fun Unit!46375 () Unit!46367)

(assert (=> d!810130 (= lt!993423 Unit!46375)))

(assert (=> d!810130 (= (getSuffix!1242 (list!12103 input!5495) Nil!32095) lt!993230)))

(declare-fun lt!993416 () Unit!46367)

(declare-fun lt!993403 () Unit!46367)

(assert (=> d!810130 (= lt!993416 lt!993403)))

(declare-fun lt!993443 () List!32195)

(assert (=> d!810130 (= lt!993230 lt!993443)))

(assert (=> d!810130 (= lt!993403 (lemmaSamePrefixThenSameSuffix!1144 Nil!32095 lt!993230 Nil!32095 lt!993443 (list!12103 input!5495)))))

(assert (=> d!810130 (= lt!993443 (getSuffix!1242 (list!12103 input!5495) Nil!32095))))

(declare-fun lt!993422 () Unit!46367)

(declare-fun lt!993435 () Unit!46367)

(assert (=> d!810130 (= lt!993422 lt!993435)))

(assert (=> d!810130 (isPrefix!2560 Nil!32095 (++!7937 Nil!32095 lt!993230))))

(assert (=> d!810130 (= lt!993435 (lemmaConcatTwoListThenFirstIsPrefix!1670 Nil!32095 lt!993230))))

(assert (=> d!810130 (= (++!7937 Nil!32095 lt!993230) (list!12103 input!5495))))

(assert (=> d!810130 (= (findLongestMatchInnerZipperFast!55 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243) lt!993428)))

(declare-fun bm!182382 () Bool)

(assert (=> bm!182382 (= call!182386 (apply!7522 input!5495 0))))

(declare-fun bm!182383 () Bool)

(declare-fun call!182384 () List!32195)

(assert (=> bm!182383 (= call!182384 (tail!4393 lt!993230))))

(declare-fun b!2781557 () Bool)

(assert (=> b!2781557 (= e!1754349 0)))

(declare-fun bm!182384 () Bool)

(assert (=> bm!182384 (= call!182385 (nullableZipper!640 z!3597))))

(declare-fun b!2781558 () Bool)

(assert (=> b!2781558 (= e!1754347 e!1754346)))

(assert (=> b!2781558 (= c!452169 (= 0 lt!993243))))

(declare-fun bm!182385 () Bool)

(assert (=> bm!182385 (= call!182390 (list!12103 (ite c!452169 input!5495 (_1!19110 lt!993436))))))

(declare-fun b!2781559 () Bool)

(assert (=> b!2781559 (= e!1754349 0)))

(declare-fun b!2781560 () Bool)

(declare-fun Unit!46376 () Unit!46367)

(assert (=> b!2781560 (= e!1754345 Unit!46376)))

(declare-fun b!2781561 () Bool)

(declare-fun Unit!46377 () Unit!46367)

(assert (=> b!2781561 (= e!1754345 Unit!46377)))

(assert (=> b!2781561 (= lt!993431 (list!12103 input!5495))))

(assert (=> b!2781561 (= lt!993414 (list!12103 input!5495))))

(declare-fun lt!993406 () Unit!46367)

(assert (=> b!2781561 (= lt!993406 call!182387)))

(assert (=> b!2781561 call!182392))

(declare-fun lt!993410 () Unit!46367)

(assert (=> b!2781561 (= lt!993410 lt!993406)))

(assert (=> b!2781561 (= lt!993439 (list!12103 input!5495))))

(declare-fun lt!993413 () Unit!46367)

(assert (=> b!2781561 (= lt!993413 call!182389)))

(assert (=> b!2781561 (= lt!993439 Nil!32095)))

(declare-fun lt!993432 () Unit!46367)

(assert (=> b!2781561 (= lt!993432 lt!993413)))

(assert (=> b!2781561 false))

(declare-fun call!182383 () (InoxSet Context!4650))

(declare-fun bm!182386 () Bool)

(assert (=> bm!182386 (= call!182388 (findLongestMatchInnerZipperFast!55 call!182383 call!182391 (+ 0 1) call!182384 input!5495 lt!993243))))

(declare-fun b!2781562 () Bool)

(assert (=> b!2781562 (= e!1754350 call!182388)))

(declare-fun bm!182387 () Bool)

(assert (=> bm!182387 (= call!182383 (derivationStepZipper!372 z!3597 call!182386))))

(assert (= (and d!810130 c!452173) b!2781553))

(assert (= (and d!810130 (not c!452173)) b!2781558))

(assert (= (and b!2781558 c!452169) b!2781554))

(assert (= (and b!2781558 (not c!452169)) b!2781552))

(assert (= (and b!2781554 c!452172) b!2781557))

(assert (= (and b!2781554 (not c!452172)) b!2781559))

(assert (= (and b!2781552 c!452174) b!2781561))

(assert (= (and b!2781552 (not c!452174)) b!2781560))

(assert (= (and b!2781552 c!452170) b!2781551))

(assert (= (and b!2781552 (not c!452170)) b!2781562))

(assert (= (or b!2781551 b!2781562) bm!182382))

(assert (= (or b!2781551 b!2781562) bm!182383))

(assert (= (or b!2781551 b!2781562) bm!182387))

(assert (= (or b!2781551 b!2781562) bm!182380))

(assert (= (or b!2781551 b!2781562) bm!182386))

(assert (= (or b!2781554 b!2781561) bm!182378))

(assert (= (or b!2781554 b!2781552) bm!182384))

(assert (= (or b!2781554 b!2781561) bm!182379))

(assert (= (or b!2781554 b!2781552) bm!182385))

(assert (= (or b!2781554 b!2781561) bm!182381))

(assert (= (and bm!182381 c!452171) b!2781555))

(assert (= (and bm!182381 (not c!452171)) b!2781556))

(assert (=> bm!182384 m!3212483))

(assert (=> b!2781556 m!3212603))

(declare-fun m!3212751 () Bool)

(assert (=> bm!182379 m!3212751))

(declare-fun m!3212753 () Bool)

(assert (=> bm!182385 m!3212753))

(declare-fun m!3212755 () Bool)

(assert (=> bm!182380 m!3212755))

(declare-fun m!3212757 () Bool)

(assert (=> b!2781552 m!3212757))

(assert (=> b!2781552 m!3212529))

(declare-fun m!3212759 () Bool)

(assert (=> b!2781552 m!3212759))

(declare-fun m!3212761 () Bool)

(assert (=> b!2781552 m!3212761))

(declare-fun m!3212763 () Bool)

(assert (=> b!2781552 m!3212763))

(declare-fun m!3212765 () Bool)

(assert (=> b!2781552 m!3212765))

(assert (=> b!2781552 m!3212545))

(declare-fun m!3212767 () Bool)

(assert (=> b!2781552 m!3212767))

(declare-fun m!3212769 () Bool)

(assert (=> b!2781552 m!3212769))

(declare-fun m!3212771 () Bool)

(assert (=> b!2781552 m!3212771))

(declare-fun m!3212773 () Bool)

(assert (=> b!2781552 m!3212773))

(assert (=> b!2781552 m!3212769))

(declare-fun m!3212775 () Bool)

(assert (=> b!2781552 m!3212775))

(assert (=> b!2781552 m!3212533))

(assert (=> b!2781552 m!3212543))

(assert (=> b!2781552 m!3212759))

(declare-fun m!3212777 () Bool)

(assert (=> b!2781552 m!3212777))

(declare-fun m!3212779 () Bool)

(assert (=> b!2781552 m!3212779))

(declare-fun m!3212781 () Bool)

(assert (=> b!2781552 m!3212781))

(declare-fun m!3212783 () Bool)

(assert (=> b!2781552 m!3212783))

(assert (=> b!2781552 m!3212763))

(assert (=> b!2781552 m!3212629))

(assert (=> b!2781552 m!3212773))

(declare-fun m!3212785 () Bool)

(assert (=> b!2781552 m!3212785))

(assert (=> b!2781552 m!3212603))

(declare-fun m!3212787 () Bool)

(assert (=> b!2781552 m!3212787))

(assert (=> bm!182383 m!3212533))

(assert (=> d!810130 m!3212603))

(declare-fun m!3212789 () Bool)

(assert (=> d!810130 m!3212789))

(assert (=> d!810130 m!3212603))

(declare-fun m!3212791 () Bool)

(assert (=> d!810130 m!3212791))

(assert (=> d!810130 m!3212607))

(assert (=> d!810130 m!3212613))

(assert (=> d!810130 m!3212603))

(declare-fun m!3212793 () Bool)

(assert (=> d!810130 m!3212793))

(assert (=> d!810130 m!3212613))

(assert (=> d!810130 m!3212615))

(declare-fun m!3212795 () Bool)

(assert (=> d!810130 m!3212795))

(assert (=> d!810130 m!3212603))

(assert (=> d!810130 m!3212605))

(assert (=> b!2781561 m!3212603))

(declare-fun m!3212797 () Bool)

(assert (=> bm!182378 m!3212797))

(declare-fun m!3212799 () Bool)

(assert (=> bm!182386 m!3212799))

(declare-fun m!3212801 () Bool)

(assert (=> bm!182387 m!3212801))

(assert (=> bm!182382 m!3212543))

(declare-fun m!3212803 () Bool)

(assert (=> bm!182381 m!3212803))

(assert (=> b!2781384 d!810130))

(declare-fun d!810132 () Bool)

(declare-fun validCacheMapUp!371 (MutableMap!3727) Bool)

(assert (=> d!810132 (= (valid!2989 (ite c!452125 (_2!19107 lt!993204) (_2!19107 lt!993216))) (validCacheMapUp!371 (cache!3870 (ite c!452125 (_2!19107 lt!993204) (_2!19107 lt!993216)))))))

(declare-fun bs!510765 () Bool)

(assert (= bs!510765 d!810132))

(declare-fun m!3212805 () Bool)

(assert (=> bs!510765 m!3212805))

(assert (=> bm!182352 d!810132))

(declare-fun d!810134 () Bool)

(assert (=> d!810134 (= (valid!2989 cacheUp!820) (validCacheMapUp!371 (cache!3870 cacheUp!820)))))

(declare-fun bs!510766 () Bool)

(assert (= bs!510766 d!810134))

(declare-fun m!3212807 () Bool)

(assert (=> bs!510766 m!3212807))

(assert (=> start!268772 d!810134))

(declare-fun d!810136 () Bool)

(declare-fun res!1161362 () Bool)

(declare-fun e!1754353 () Bool)

(assert (=> d!810136 (=> (not res!1161362) (not e!1754353))))

(assert (=> d!810136 (= res!1161362 ((_ is HashMap!3727) (cache!3870 cacheUp!820)))))

(assert (=> d!810136 (= (inv!43589 cacheUp!820) e!1754353)))

(declare-fun b!2781565 () Bool)

(assert (=> b!2781565 (= e!1754353 (validCacheMapUp!371 (cache!3870 cacheUp!820)))))

(assert (= (and d!810136 res!1161362) b!2781565))

(assert (=> b!2781565 m!3212807))

(assert (=> start!268772 d!810136))

(declare-fun d!810138 () Bool)

(declare-fun res!1161365 () Bool)

(declare-fun e!1754356 () Bool)

(assert (=> d!810138 (=> (not res!1161365) (not e!1754356))))

(assert (=> d!810138 (= res!1161365 ((_ is HashMap!3728) (cache!3871 cacheDown!939)))))

(assert (=> d!810138 (= (inv!43590 cacheDown!939) e!1754356)))

(declare-fun b!2781568 () Bool)

(assert (=> b!2781568 (= e!1754356 (validCacheMapDown!402 (cache!3871 cacheDown!939)))))

(assert (= (and d!810138 res!1161365) b!2781568))

(declare-fun m!3212809 () Bool)

(assert (=> b!2781568 m!3212809))

(assert (=> start!268772 d!810138))

(declare-fun d!810140 () Bool)

(assert (=> d!810140 (= (inv!43591 input!5495) (isBalanced!3046 (c!452130 input!5495)))))

(declare-fun bs!510767 () Bool)

(assert (= bs!510767 d!810140))

(assert (=> bs!510767 m!3212723))

(assert (=> start!268772 d!810140))

(declare-fun d!810142 () Bool)

(declare-fun c!452177 () Bool)

(assert (=> d!810142 (= c!452177 ((_ is Node!9984) (c!452130 input!5495)))))

(declare-fun e!1754361 () Bool)

(assert (=> d!810142 (= (inv!43587 (c!452130 input!5495)) e!1754361)))

(declare-fun b!2781575 () Bool)

(declare-fun inv!43592 (Conc!9984) Bool)

(assert (=> b!2781575 (= e!1754361 (inv!43592 (c!452130 input!5495)))))

(declare-fun b!2781576 () Bool)

(declare-fun e!1754362 () Bool)

(assert (=> b!2781576 (= e!1754361 e!1754362)))

(declare-fun res!1161368 () Bool)

(assert (=> b!2781576 (= res!1161368 (not ((_ is Leaf!15206) (c!452130 input!5495))))))

(assert (=> b!2781576 (=> res!1161368 e!1754362)))

(declare-fun b!2781577 () Bool)

(declare-fun inv!43593 (Conc!9984) Bool)

(assert (=> b!2781577 (= e!1754362 (inv!43593 (c!452130 input!5495)))))

(assert (= (and d!810142 c!452177) b!2781575))

(assert (= (and d!810142 (not c!452177)) b!2781576))

(assert (= (and b!2781576 (not res!1161368)) b!2781577))

(declare-fun m!3212811 () Bool)

(assert (=> b!2781575 m!3212811))

(declare-fun m!3212813 () Bool)

(assert (=> b!2781577 m!3212813))

(assert (=> b!2781411 d!810142))

(assert (=> b!2781398 d!810130))

(assert (=> bm!182348 d!810128))

(declare-fun d!810144 () Bool)

(declare-fun e!1754365 () Bool)

(assert (=> d!810144 e!1754365))

(declare-fun res!1161371 () Bool)

(assert (=> d!810144 (=> (not res!1161371) (not e!1754365))))

(declare-fun lt!993467 () tuple2!32342)

(declare-fun findLongestMatchZipper!7 ((InoxSet Context!4650) List!32195) tuple2!32340)

(assert (=> d!810144 (= res!1161371 (= (tuple2!32341 (list!12103 (_1!19110 lt!993467)) (list!12103 (_2!19110 lt!993467))) (findLongestMatchZipper!7 z!3597 (list!12103 input!5495))))))

(declare-fun lt!993464 () Int)

(assert (=> d!810144 (= lt!993467 (splitAt!124 input!5495 lt!993464))))

(declare-fun lt!993463 () Unit!46367)

(declare-fun lt!993465 () Unit!46367)

(assert (=> d!810144 (= lt!993463 lt!993465)))

(declare-fun lt!993468 () List!32195)

(declare-fun lt!993462 () List!32195)

(declare-fun lt!993466 () List!32195)

(declare-fun lt!993461 () List!32195)

(assert (=> d!810144 (and (= lt!993461 lt!993468) (= lt!993466 lt!993462))))

(assert (=> d!810144 (= lt!993465 (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993461 lt!993466 lt!993468 lt!993462))))

(assert (=> d!810144 (= lt!993462 (_2!19109 (findLongestMatchInnerZipper!30 z!3597 Nil!32095 0 (list!12103 input!5495) (list!12103 input!5495) (size!24890 input!5495))))))

(assert (=> d!810144 (= lt!993468 (_1!19109 (findLongestMatchInnerZipper!30 z!3597 Nil!32095 0 (list!12103 input!5495) (list!12103 input!5495) (size!24890 input!5495))))))

(assert (=> d!810144 (= lt!993466 (list!12103 (_2!19110 (splitAt!124 input!5495 lt!993464))))))

(assert (=> d!810144 (= lt!993461 (list!12103 (_1!19110 (splitAt!124 input!5495 lt!993464))))))

(assert (=> d!810144 (= lt!993464 (findLongestMatchInnerZipperFast!55 z!3597 Nil!32095 0 (list!12103 input!5495) input!5495 (size!24890 input!5495)))))

(assert (=> d!810144 (= (findLongestMatchZipperFast!6 z!3597 input!5495) lt!993467)))

(declare-fun b!2781580 () Bool)

(assert (=> b!2781580 (= e!1754365 (= (++!7937 (list!12103 (_1!19110 lt!993467)) (list!12103 (_2!19110 lt!993467))) (list!12103 input!5495)))))

(assert (= (and d!810144 res!1161371) b!2781580))

(assert (=> d!810144 m!3212603))

(declare-fun m!3212815 () Bool)

(assert (=> d!810144 m!3212815))

(declare-fun m!3212817 () Bool)

(assert (=> d!810144 m!3212817))

(assert (=> d!810144 m!3212629))

(assert (=> d!810144 m!3212603))

(declare-fun m!3212819 () Bool)

(assert (=> d!810144 m!3212819))

(declare-fun m!3212821 () Bool)

(assert (=> d!810144 m!3212821))

(assert (=> d!810144 m!3212603))

(assert (=> d!810144 m!3212629))

(declare-fun m!3212823 () Bool)

(assert (=> d!810144 m!3212823))

(declare-fun m!3212825 () Bool)

(assert (=> d!810144 m!3212825))

(declare-fun m!3212827 () Bool)

(assert (=> d!810144 m!3212827))

(assert (=> d!810144 m!3212603))

(assert (=> d!810144 m!3212603))

(assert (=> d!810144 m!3212629))

(declare-fun m!3212829 () Bool)

(assert (=> d!810144 m!3212829))

(declare-fun m!3212831 () Bool)

(assert (=> d!810144 m!3212831))

(assert (=> b!2781580 m!3212821))

(assert (=> b!2781580 m!3212827))

(assert (=> b!2781580 m!3212821))

(assert (=> b!2781580 m!3212827))

(declare-fun m!3212833 () Bool)

(assert (=> b!2781580 m!3212833))

(assert (=> b!2781580 m!3212603))

(assert (=> b!2781408 d!810144))

(assert (=> bm!182340 d!810124))

(declare-fun b!2781583 () Bool)

(declare-fun e!1754368 () Bool)

(assert (=> b!2781583 (= e!1754368 (isPrefix!2560 (tail!4393 Nil!32095) (tail!4393 (++!7937 Nil!32095 lt!993230))))))

(declare-fun b!2781582 () Bool)

(declare-fun res!1161373 () Bool)

(assert (=> b!2781582 (=> (not res!1161373) (not e!1754368))))

(assert (=> b!2781582 (= res!1161373 (= (head!6155 Nil!32095) (head!6155 (++!7937 Nil!32095 lt!993230))))))

(declare-fun b!2781581 () Bool)

(declare-fun e!1754367 () Bool)

(assert (=> b!2781581 (= e!1754367 e!1754368)))

(declare-fun res!1161374 () Bool)

(assert (=> b!2781581 (=> (not res!1161374) (not e!1754368))))

(assert (=> b!2781581 (= res!1161374 (not ((_ is Nil!32095) (++!7937 Nil!32095 lt!993230))))))

(declare-fun b!2781584 () Bool)

(declare-fun e!1754366 () Bool)

(assert (=> b!2781584 (= e!1754366 (>= (size!24889 (++!7937 Nil!32095 lt!993230)) (size!24889 Nil!32095)))))

(declare-fun d!810146 () Bool)

(assert (=> d!810146 e!1754366))

(declare-fun res!1161372 () Bool)

(assert (=> d!810146 (=> res!1161372 e!1754366)))

(declare-fun lt!993469 () Bool)

(assert (=> d!810146 (= res!1161372 (not lt!993469))))

(assert (=> d!810146 (= lt!993469 e!1754367)))

(declare-fun res!1161375 () Bool)

(assert (=> d!810146 (=> res!1161375 e!1754367)))

(assert (=> d!810146 (= res!1161375 ((_ is Nil!32095) Nil!32095))))

(assert (=> d!810146 (= (isPrefix!2560 Nil!32095 (++!7937 Nil!32095 lt!993230)) lt!993469)))

(assert (= (and d!810146 (not res!1161375)) b!2781581))

(assert (= (and b!2781581 res!1161374) b!2781582))

(assert (= (and b!2781582 res!1161373) b!2781583))

(assert (= (and d!810146 (not res!1161372)) b!2781584))

(declare-fun m!3212835 () Bool)

(assert (=> b!2781583 m!3212835))

(assert (=> b!2781583 m!3212613))

(declare-fun m!3212837 () Bool)

(assert (=> b!2781583 m!3212837))

(assert (=> b!2781583 m!3212835))

(assert (=> b!2781583 m!3212837))

(declare-fun m!3212839 () Bool)

(assert (=> b!2781583 m!3212839))

(declare-fun m!3212841 () Bool)

(assert (=> b!2781582 m!3212841))

(assert (=> b!2781582 m!3212613))

(declare-fun m!3212843 () Bool)

(assert (=> b!2781582 m!3212843))

(assert (=> b!2781584 m!3212613))

(declare-fun m!3212845 () Bool)

(assert (=> b!2781584 m!3212845))

(assert (=> b!2781584 m!3212545))

(assert (=> b!2781424 d!810146))

(declare-fun d!810148 () Bool)

(declare-fun lt!993472 () List!32195)

(assert (=> d!810148 (= (++!7937 Nil!32095 lt!993472) lt!993230)))

(declare-fun e!1754371 () List!32195)

(assert (=> d!810148 (= lt!993472 e!1754371)))

(declare-fun c!452180 () Bool)

(assert (=> d!810148 (= c!452180 ((_ is Cons!32095) Nil!32095))))

(assert (=> d!810148 (>= (size!24889 lt!993230) (size!24889 Nil!32095))))

(assert (=> d!810148 (= (getSuffix!1242 lt!993230 Nil!32095) lt!993472)))

(declare-fun b!2781589 () Bool)

(assert (=> b!2781589 (= e!1754371 (getSuffix!1242 (tail!4393 lt!993230) (t!228335 Nil!32095)))))

(declare-fun b!2781590 () Bool)

(assert (=> b!2781590 (= e!1754371 lt!993230)))

(assert (= (and d!810148 c!452180) b!2781589))

(assert (= (and d!810148 (not c!452180)) b!2781590))

(declare-fun m!3212847 () Bool)

(assert (=> d!810148 m!3212847))

(assert (=> d!810148 m!3212535))

(assert (=> d!810148 m!3212545))

(assert (=> b!2781589 m!3212533))

(assert (=> b!2781589 m!3212533))

(declare-fun m!3212849 () Bool)

(assert (=> b!2781589 m!3212849))

(assert (=> b!2781424 d!810148))

(declare-fun d!810150 () Bool)

(assert (=> d!810150 (= lt!993230 lt!993219)))

(declare-fun lt!993475 () Unit!46367)

(declare-fun choose!16315 (List!32195 List!32195 List!32195 List!32195 List!32195) Unit!46367)

(assert (=> d!810150 (= lt!993475 (choose!16315 Nil!32095 lt!993230 Nil!32095 lt!993219 lt!993230))))

(assert (=> d!810150 (isPrefix!2560 Nil!32095 lt!993230)))

(assert (=> d!810150 (= (lemmaSamePrefixThenSameSuffix!1144 Nil!32095 lt!993230 Nil!32095 lt!993219 lt!993230) lt!993475)))

(declare-fun bs!510768 () Bool)

(assert (= bs!510768 d!810150))

(declare-fun m!3212851 () Bool)

(assert (=> bs!510768 m!3212851))

(assert (=> bs!510768 m!3212703))

(assert (=> b!2781424 d!810150))

(declare-fun d!810152 () Bool)

(assert (=> d!810152 (= (valid!2989 (_2!19107 lt!993262)) (validCacheMapUp!371 (cache!3870 (_2!19107 lt!993262))))))

(declare-fun bs!510769 () Bool)

(assert (= bs!510769 d!810152))

(declare-fun m!3212853 () Bool)

(assert (=> bs!510769 m!3212853))

(assert (=> b!2781424 d!810152))

(declare-fun d!810154 () Bool)

(assert (=> d!810154 (= (valid!2989 (_2!19107 lt!993257)) (validCacheMapUp!371 (cache!3870 (_2!19107 lt!993257))))))

(declare-fun bs!510770 () Bool)

(assert (= bs!510770 d!810154))

(declare-fun m!3212855 () Bool)

(assert (=> bs!510770 m!3212855))

(assert (=> b!2781424 d!810154))

(declare-fun d!810156 () Bool)

(assert (=> d!810156 (= (list!12103 (_1!19110 lt!993236)) (list!12104 (c!452130 (_1!19110 lt!993236))))))

(declare-fun bs!510771 () Bool)

(assert (= bs!510771 d!810156))

(declare-fun m!3212857 () Bool)

(assert (=> bs!510771 m!3212857))

(assert (=> b!2781424 d!810156))

(assert (=> b!2781424 d!810130))

(declare-fun d!810158 () Bool)

(declare-fun e!1754374 () Bool)

(assert (=> d!810158 e!1754374))

(declare-fun res!1161380 () Bool)

(assert (=> d!810158 (=> (not res!1161380) (not e!1754374))))

(declare-fun lt!993478 () tuple3!4934)

(assert (=> d!810158 (= res!1161380 (valid!2989 (_2!19107 lt!993478)))))

(declare-fun choose!16316 (CacheUp!2432 CacheDown!2554 (InoxSet Context!4650) List!32195 Int List!32195 BalanceConc!19582 Int) tuple3!4934)

(assert (=> d!810158 (= lt!993478 (choose!16316 (_2!19107 lt!993262) (_3!2937 lt!993262) z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243))))

(assert (=> d!810158 (= (++!7937 Nil!32095 lt!993230) (list!12103 input!5495))))

(assert (=> d!810158 (= (findLongestMatchInnerZipperFastMem!48 (_2!19107 lt!993262) (_3!2937 lt!993262) z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243) lt!993478)))

(declare-fun b!2781595 () Bool)

(declare-fun res!1161381 () Bool)

(assert (=> b!2781595 (=> (not res!1161381) (not e!1754374))))

(assert (=> b!2781595 (= res!1161381 (valid!2988 (_3!2937 lt!993478)))))

(declare-fun b!2781596 () Bool)

(assert (=> b!2781596 (= e!1754374 (= (_1!19107 lt!993478) (findLongestMatchInnerZipperFast!55 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243)))))

(assert (= (and d!810158 res!1161380) b!2781595))

(assert (= (and b!2781595 res!1161381) b!2781596))

(declare-fun m!3212859 () Bool)

(assert (=> d!810158 m!3212859))

(declare-fun m!3212861 () Bool)

(assert (=> d!810158 m!3212861))

(assert (=> d!810158 m!3212613))

(assert (=> d!810158 m!3212603))

(declare-fun m!3212863 () Bool)

(assert (=> b!2781595 m!3212863))

(assert (=> b!2781596 m!3212517))

(assert (=> b!2781424 d!810158))

(declare-fun d!810160 () Bool)

(declare-fun e!1754391 () Bool)

(assert (=> d!810160 e!1754391))

(declare-fun res!1161386 () Bool)

(assert (=> d!810160 (=> (not res!1161386) (not e!1754391))))

(declare-fun lt!993553 () tuple2!32340)

(assert (=> d!810160 (= res!1161386 (= (++!7937 (_1!19109 lt!993553) (_2!19109 lt!993553)) lt!993230))))

(declare-fun e!1754396 () tuple2!32340)

(assert (=> d!810160 (= lt!993553 e!1754396)))

(declare-fun c!452193 () Bool)

(assert (=> d!810160 (= c!452193 (lostCauseZipper!446 z!3597))))

(declare-fun lt!993543 () Unit!46367)

(declare-fun Unit!46378 () Unit!46367)

(assert (=> d!810160 (= lt!993543 Unit!46378)))

(assert (=> d!810160 (= (getSuffix!1242 lt!993230 Nil!32095) lt!993230)))

(declare-fun lt!993541 () Unit!46367)

(declare-fun lt!993554 () Unit!46367)

(assert (=> d!810160 (= lt!993541 lt!993554)))

(declare-fun lt!993545 () List!32195)

(assert (=> d!810160 (= lt!993230 lt!993545)))

(assert (=> d!810160 (= lt!993554 (lemmaSamePrefixThenSameSuffix!1144 Nil!32095 lt!993230 Nil!32095 lt!993545 lt!993230))))

(assert (=> d!810160 (= lt!993545 (getSuffix!1242 lt!993230 Nil!32095))))

(declare-fun lt!993537 () Unit!46367)

(declare-fun lt!993550 () Unit!46367)

(assert (=> d!810160 (= lt!993537 lt!993550)))

(assert (=> d!810160 (isPrefix!2560 Nil!32095 (++!7937 Nil!32095 lt!993230))))

(assert (=> d!810160 (= lt!993550 (lemmaConcatTwoListThenFirstIsPrefix!1670 Nil!32095 lt!993230))))

(assert (=> d!810160 (= (++!7937 Nil!32095 lt!993230) lt!993230)))

(assert (=> d!810160 (= (findLongestMatchInnerZipper!30 z!3597 Nil!32095 0 lt!993230 lt!993230 lt!993243) lt!993553)))

(declare-fun b!2781625 () Bool)

(declare-fun e!1754395 () tuple2!32340)

(assert (=> b!2781625 (= e!1754396 e!1754395)))

(declare-fun c!452197 () Bool)

(assert (=> b!2781625 (= c!452197 (= 0 lt!993243))))

(declare-fun b!2781626 () Bool)

(declare-fun e!1754398 () tuple2!32340)

(declare-fun call!182409 () tuple2!32340)

(assert (=> b!2781626 (= e!1754398 call!182409)))

(declare-fun b!2781627 () Bool)

(assert (=> b!2781627 (= e!1754396 (tuple2!32341 Nil!32095 lt!993230))))

(declare-fun b!2781628 () Bool)

(declare-fun c!452195 () Bool)

(declare-fun call!182411 () Bool)

(assert (=> b!2781628 (= c!452195 call!182411)))

(declare-fun lt!993534 () Unit!46367)

(declare-fun lt!993540 () Unit!46367)

(assert (=> b!2781628 (= lt!993534 lt!993540)))

(declare-fun lt!993555 () C!16372)

(declare-fun lt!993539 () List!32195)

(assert (=> b!2781628 (= (++!7937 (++!7937 Nil!32095 (Cons!32095 lt!993555 Nil!32095)) lt!993539) lt!993230)))

(assert (=> b!2781628 (= lt!993540 (lemmaMoveElementToOtherListKeepsConcatEq!876 Nil!32095 lt!993555 lt!993539 lt!993230))))

(assert (=> b!2781628 (= lt!993539 (tail!4393 lt!993230))))

(assert (=> b!2781628 (= lt!993555 (head!6155 lt!993230))))

(declare-fun lt!993542 () Unit!46367)

(declare-fun lt!993535 () Unit!46367)

(assert (=> b!2781628 (= lt!993542 lt!993535)))

(assert (=> b!2781628 (isPrefix!2560 (++!7937 Nil!32095 (Cons!32095 (head!6155 (getSuffix!1242 lt!993230 Nil!32095)) Nil!32095)) lt!993230)))

(assert (=> b!2781628 (= lt!993535 (lemmaAddHeadSuffixToPrefixStillPrefix!464 Nil!32095 lt!993230))))

(declare-fun lt!993549 () List!32195)

(assert (=> b!2781628 (= lt!993549 (++!7937 Nil!32095 (Cons!32095 (head!6155 lt!993230) Nil!32095)))))

(declare-fun lt!993552 () Unit!46367)

(declare-fun e!1754393 () Unit!46367)

(assert (=> b!2781628 (= lt!993552 e!1754393)))

(declare-fun c!452196 () Bool)

(assert (=> b!2781628 (= c!452196 (= (size!24889 Nil!32095) (size!24889 lt!993230)))))

(declare-fun lt!993556 () Unit!46367)

(declare-fun lt!993551 () Unit!46367)

(assert (=> b!2781628 (= lt!993556 lt!993551)))

(assert (=> b!2781628 (<= (size!24889 Nil!32095) (size!24889 lt!993230))))

(assert (=> b!2781628 (= lt!993551 (lemmaIsPrefixThenSmallerEqSize!267 Nil!32095 lt!993230))))

(assert (=> b!2781628 (= e!1754395 e!1754398)))

(declare-fun b!2781629 () Bool)

(declare-fun e!1754397 () Bool)

(assert (=> b!2781629 (= e!1754397 (>= (size!24889 (_1!19109 lt!993553)) (size!24889 Nil!32095)))))

(declare-fun b!2781630 () Bool)

(declare-fun e!1754394 () tuple2!32340)

(assert (=> b!2781630 (= e!1754394 (tuple2!32341 Nil!32095 lt!993230))))

(declare-fun b!2781631 () Bool)

(declare-fun e!1754392 () tuple2!32340)

(declare-fun lt!993533 () tuple2!32340)

(assert (=> b!2781631 (= e!1754392 lt!993533)))

(declare-fun bm!182404 () Bool)

(declare-fun call!182416 () List!32195)

(assert (=> bm!182404 (= call!182416 (tail!4393 lt!993230))))

(declare-fun b!2781632 () Bool)

(assert (=> b!2781632 (= e!1754391 e!1754397)))

(declare-fun res!1161387 () Bool)

(assert (=> b!2781632 (=> res!1161387 e!1754397)))

(assert (=> b!2781632 (= res!1161387 (isEmpty!18105 (_1!19109 lt!993553)))))

(declare-fun b!2781633 () Bool)

(declare-fun c!452198 () Bool)

(assert (=> b!2781633 (= c!452198 call!182411)))

(declare-fun lt!993538 () Unit!46367)

(declare-fun lt!993548 () Unit!46367)

(assert (=> b!2781633 (= lt!993538 lt!993548)))

(assert (=> b!2781633 (= lt!993230 Nil!32095)))

(declare-fun call!182413 () Unit!46367)

(assert (=> b!2781633 (= lt!993548 call!182413)))

(declare-fun lt!993547 () Unit!46367)

(declare-fun lt!993544 () Unit!46367)

(assert (=> b!2781633 (= lt!993547 lt!993544)))

(declare-fun call!182415 () Bool)

(assert (=> b!2781633 call!182415))

(declare-fun call!182410 () Unit!46367)

(assert (=> b!2781633 (= lt!993544 call!182410)))

(assert (=> b!2781633 (= e!1754395 e!1754394)))

(declare-fun b!2781634 () Bool)

(assert (=> b!2781634 (= e!1754394 (tuple2!32341 Nil!32095 Nil!32095))))

(declare-fun bm!182405 () Bool)

(assert (=> bm!182405 (= call!182415 (isPrefix!2560 lt!993230 lt!993230))))

(declare-fun bm!182406 () Bool)

(assert (=> bm!182406 (= call!182410 (lemmaIsPrefixRefl!1685 lt!993230 lt!993230))))

(declare-fun b!2781635 () Bool)

(declare-fun Unit!46379 () Unit!46367)

(assert (=> b!2781635 (= e!1754393 Unit!46379)))

(declare-fun lt!993531 () Unit!46367)

(assert (=> b!2781635 (= lt!993531 call!182410)))

(assert (=> b!2781635 call!182415))

(declare-fun lt!993536 () Unit!46367)

(assert (=> b!2781635 (= lt!993536 lt!993531)))

(declare-fun lt!993532 () Unit!46367)

(assert (=> b!2781635 (= lt!993532 call!182413)))

(assert (=> b!2781635 (= lt!993230 Nil!32095)))

(declare-fun lt!993546 () Unit!46367)

(assert (=> b!2781635 (= lt!993546 lt!993532)))

(assert (=> b!2781635 false))

(declare-fun bm!182407 () Bool)

(declare-fun call!182412 () C!16372)

(assert (=> bm!182407 (= call!182412 (head!6155 lt!993230))))

(declare-fun bm!182408 () Bool)

(declare-fun call!182414 () (InoxSet Context!4650))

(assert (=> bm!182408 (= call!182414 (derivationStepZipper!372 z!3597 call!182412))))

(declare-fun b!2781636 () Bool)

(assert (=> b!2781636 (= e!1754392 (tuple2!32341 Nil!32095 lt!993230))))

(declare-fun bm!182409 () Bool)

(assert (=> bm!182409 (= call!182409 (findLongestMatchInnerZipper!30 call!182414 lt!993549 (+ 0 1) call!182416 lt!993230 lt!993243))))

(declare-fun b!2781637 () Bool)

(assert (=> b!2781637 (= e!1754398 e!1754392)))

(assert (=> b!2781637 (= lt!993533 call!182409)))

(declare-fun c!452194 () Bool)

(assert (=> b!2781637 (= c!452194 (isEmpty!18105 (_1!19109 lt!993533)))))

(declare-fun bm!182410 () Bool)

(assert (=> bm!182410 (= call!182411 (nullableZipper!640 z!3597))))

(declare-fun bm!182411 () Bool)

(assert (=> bm!182411 (= call!182413 (lemmaIsPrefixSameLengthThenSameList!467 lt!993230 Nil!32095 lt!993230))))

(declare-fun b!2781638 () Bool)

(declare-fun Unit!46380 () Unit!46367)

(assert (=> b!2781638 (= e!1754393 Unit!46380)))

(assert (= (and d!810160 c!452193) b!2781627))

(assert (= (and d!810160 (not c!452193)) b!2781625))

(assert (= (and b!2781625 c!452197) b!2781633))

(assert (= (and b!2781625 (not c!452197)) b!2781628))

(assert (= (and b!2781633 c!452198) b!2781634))

(assert (= (and b!2781633 (not c!452198)) b!2781630))

(assert (= (and b!2781628 c!452196) b!2781635))

(assert (= (and b!2781628 (not c!452196)) b!2781638))

(assert (= (and b!2781628 c!452195) b!2781637))

(assert (= (and b!2781628 (not c!452195)) b!2781626))

(assert (= (and b!2781637 c!452194) b!2781636))

(assert (= (and b!2781637 (not c!452194)) b!2781631))

(assert (= (or b!2781637 b!2781626) bm!182404))

(assert (= (or b!2781637 b!2781626) bm!182407))

(assert (= (or b!2781637 b!2781626) bm!182408))

(assert (= (or b!2781637 b!2781626) bm!182409))

(assert (= (or b!2781633 b!2781628) bm!182410))

(assert (= (or b!2781633 b!2781635) bm!182406))

(assert (= (or b!2781633 b!2781635) bm!182411))

(assert (= (or b!2781633 b!2781635) bm!182405))

(assert (= (and d!810160 res!1161386) b!2781632))

(assert (= (and b!2781632 (not res!1161387)) b!2781629))

(assert (=> bm!182411 m!3212501))

(assert (=> bm!182406 m!3212505))

(declare-fun m!3212865 () Bool)

(assert (=> b!2781629 m!3212865))

(assert (=> b!2781629 m!3212545))

(declare-fun m!3212867 () Bool)

(assert (=> b!2781637 m!3212867))

(assert (=> bm!182405 m!3212495))

(assert (=> bm!182410 m!3212483))

(assert (=> bm!182404 m!3212533))

(assert (=> b!2781628 m!3212545))

(assert (=> b!2781628 m!3212625))

(assert (=> b!2781628 m!3212733))

(assert (=> b!2781628 m!3212541))

(assert (=> b!2781628 m!3212625))

(assert (=> b!2781628 m!3212579))

(declare-fun m!3212869 () Bool)

(assert (=> b!2781628 m!3212869))

(declare-fun m!3212871 () Bool)

(assert (=> b!2781628 m!3212871))

(assert (=> b!2781628 m!3212535))

(declare-fun m!3212873 () Bool)

(assert (=> b!2781628 m!3212873))

(assert (=> b!2781628 m!3212737))

(assert (=> b!2781628 m!3212559))

(assert (=> b!2781628 m!3212737))

(assert (=> b!2781628 m!3212739))

(assert (=> b!2781628 m!3212869))

(assert (=> b!2781628 m!3212533))

(declare-fun m!3212875 () Bool)

(assert (=> b!2781628 m!3212875))

(declare-fun m!3212877 () Bool)

(assert (=> bm!182409 m!3212877))

(declare-fun m!3212879 () Bool)

(assert (=> bm!182408 m!3212879))

(assert (=> d!810160 m!3212613))

(assert (=> d!810160 m!3212615))

(declare-fun m!3212881 () Bool)

(assert (=> d!810160 m!3212881))

(assert (=> d!810160 m!3212607))

(assert (=> d!810160 m!3212625))

(declare-fun m!3212883 () Bool)

(assert (=> d!810160 m!3212883))

(assert (=> d!810160 m!3212605))

(assert (=> d!810160 m!3212613))

(assert (=> bm!182407 m!3212579))

(declare-fun m!3212885 () Bool)

(assert (=> b!2781632 m!3212885))

(assert (=> b!2781424 d!810160))

(declare-fun d!810162 () Bool)

(declare-fun e!1754399 () Bool)

(assert (=> d!810162 e!1754399))

(declare-fun res!1161388 () Bool)

(assert (=> d!810162 (=> (not res!1161388) (not e!1754399))))

(declare-fun lt!993557 () tuple3!4934)

(assert (=> d!810162 (= res!1161388 (valid!2989 (_2!19107 lt!993557)))))

(assert (=> d!810162 (= lt!993557 (choose!16316 cacheUp!820 cacheDown!939 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243))))

(assert (=> d!810162 (= (++!7937 Nil!32095 lt!993230) (list!12103 input!5495))))

(assert (=> d!810162 (= (findLongestMatchInnerZipperFastMem!48 cacheUp!820 cacheDown!939 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243) lt!993557)))

(declare-fun b!2781639 () Bool)

(declare-fun res!1161389 () Bool)

(assert (=> b!2781639 (=> (not res!1161389) (not e!1754399))))

(assert (=> b!2781639 (= res!1161389 (valid!2988 (_3!2937 lt!993557)))))

(declare-fun b!2781640 () Bool)

(assert (=> b!2781640 (= e!1754399 (= (_1!19107 lt!993557) (findLongestMatchInnerZipperFast!55 z!3597 Nil!32095 0 lt!993230 input!5495 lt!993243)))))

(assert (= (and d!810162 res!1161388) b!2781639))

(assert (= (and b!2781639 res!1161389) b!2781640))

(declare-fun m!3212887 () Bool)

(assert (=> d!810162 m!3212887))

(declare-fun m!3212889 () Bool)

(assert (=> d!810162 m!3212889))

(assert (=> d!810162 m!3212613))

(assert (=> d!810162 m!3212603))

(declare-fun m!3212891 () Bool)

(assert (=> b!2781639 m!3212891))

(assert (=> b!2781640 m!3212517))

(assert (=> b!2781424 d!810162))

(declare-fun d!810164 () Bool)

(assert (=> d!810164 (= (list!12103 (_2!19110 lt!993236)) (list!12104 (c!452130 (_2!19110 lt!993236))))))

(declare-fun bs!510772 () Bool)

(assert (= bs!510772 d!810164))

(declare-fun m!3212893 () Bool)

(assert (=> bs!510772 m!3212893))

(assert (=> b!2781424 d!810164))

(declare-fun bs!510773 () Bool)

(declare-fun d!810166 () Bool)

(assert (= bs!510773 (and d!810166 d!810122)))

(declare-fun lambda!102125 () Int)

(assert (=> bs!510773 (not (= lambda!102125 lambda!102112))))

(declare-fun bs!510774 () Bool)

(declare-fun b!2781645 () Bool)

(assert (= bs!510774 (and b!2781645 d!810122)))

(declare-fun lambda!102126 () Int)

(assert (=> bs!510774 (not (= lambda!102126 lambda!102112))))

(declare-fun bs!510775 () Bool)

(assert (= bs!510775 (and b!2781645 d!810166)))

(assert (=> bs!510775 (not (= lambda!102126 lambda!102125))))

(declare-fun bs!510776 () Bool)

(declare-fun b!2781646 () Bool)

(assert (= bs!510776 (and b!2781646 d!810122)))

(declare-fun lambda!102127 () Int)

(assert (=> bs!510776 (not (= lambda!102127 lambda!102112))))

(declare-fun bs!510777 () Bool)

(assert (= bs!510777 (and b!2781646 d!810166)))

(assert (=> bs!510777 (not (= lambda!102127 lambda!102125))))

(declare-fun bs!510778 () Bool)

(assert (= bs!510778 (and b!2781646 b!2781645)))

(assert (=> bs!510778 (= lambda!102127 lambda!102126)))

(declare-fun e!1754406 () Unit!46367)

(declare-fun Unit!46381 () Unit!46367)

(assert (=> b!2781646 (= e!1754406 Unit!46381)))

(declare-datatypes ((List!32196 0))(
  ( (Nil!32096) (Cons!32096 (h!37516 Context!4650) (t!228336 List!32196)) )
))
(declare-fun lt!993579 () List!32196)

(declare-fun call!182422 () List!32196)

(assert (=> b!2781646 (= lt!993579 call!182422)))

(declare-fun lt!993576 () Unit!46367)

(declare-fun lemmaForallThenNotExists!86 (List!32196 Int) Unit!46367)

(assert (=> b!2781646 (= lt!993576 (lemmaForallThenNotExists!86 lt!993579 lambda!102125))))

(declare-fun call!182421 () Bool)

(assert (=> b!2781646 (not call!182421)))

(declare-fun lt!993575 () Unit!46367)

(assert (=> b!2781646 (= lt!993575 lt!993576)))

(declare-fun Unit!46382 () Unit!46367)

(assert (=> b!2781645 (= e!1754406 Unit!46382)))

(declare-fun lt!993574 () List!32196)

(assert (=> b!2781645 (= lt!993574 call!182422)))

(declare-fun lt!993580 () Unit!46367)

(declare-fun lemmaNotForallThenExists!86 (List!32196 Int) Unit!46367)

(assert (=> b!2781645 (= lt!993580 (lemmaNotForallThenExists!86 lt!993574 lambda!102125))))

(assert (=> b!2781645 call!182421))

(declare-fun lt!993578 () Unit!46367)

(assert (=> b!2781645 (= lt!993578 lt!993580)))

(declare-fun lt!993581 () Bool)

(declare-datatypes ((Option!6264 0))(
  ( (None!6263) (Some!6263 (v!33706 List!32195)) )
))
(declare-fun isEmpty!18106 (Option!6264) Bool)

(declare-fun getLanguageWitness!194 ((InoxSet Context!4650)) Option!6264)

(assert (=> d!810166 (= lt!993581 (isEmpty!18106 (getLanguageWitness!194 z!3597)))))

(declare-fun forall!6644 ((InoxSet Context!4650) Int) Bool)

(assert (=> d!810166 (= lt!993581 (forall!6644 z!3597 lambda!102125))))

(declare-fun lt!993577 () Unit!46367)

(assert (=> d!810166 (= lt!993577 e!1754406)))

(declare-fun c!452209 () Bool)

(assert (=> d!810166 (= c!452209 (not (forall!6644 z!3597 lambda!102125)))))

(assert (=> d!810166 (= (lostCauseZipper!446 z!3597) lt!993581)))

(declare-fun bm!182417 () Bool)

(declare-fun toList!1849 ((InoxSet Context!4650)) List!32196)

(assert (=> bm!182417 (= call!182422 (toList!1849 z!3597))))

(declare-fun bm!182416 () Bool)

(declare-fun exists!982 (List!32196 Int) Bool)

(assert (=> bm!182416 (= call!182421 (exists!982 (ite c!452209 lt!993574 lt!993579) (ite c!452209 lambda!102126 lambda!102127)))))

(assert (= (and d!810166 c!452209) b!2781645))

(assert (= (and d!810166 (not c!452209)) b!2781646))

(assert (= (or b!2781645 b!2781646) bm!182416))

(assert (= (or b!2781645 b!2781646) bm!182417))

(declare-fun m!3212895 () Bool)

(assert (=> bm!182417 m!3212895))

(declare-fun m!3212897 () Bool)

(assert (=> b!2781645 m!3212897))

(declare-fun m!3212899 () Bool)

(assert (=> b!2781646 m!3212899))

(declare-fun m!3212901 () Bool)

(assert (=> d!810166 m!3212901))

(assert (=> d!810166 m!3212901))

(declare-fun m!3212903 () Bool)

(assert (=> d!810166 m!3212903))

(declare-fun m!3212905 () Bool)

(assert (=> d!810166 m!3212905))

(assert (=> d!810166 m!3212905))

(declare-fun m!3212907 () Bool)

(assert (=> bm!182416 m!3212907))

(assert (=> b!2781424 d!810166))

(declare-fun d!810168 () Bool)

(assert (=> d!810168 (= (list!12103 input!5495) (list!12104 (c!452130 input!5495)))))

(declare-fun bs!510779 () Bool)

(assert (= bs!510779 d!810168))

(declare-fun m!3212909 () Bool)

(assert (=> bs!510779 m!3212909))

(assert (=> b!2781424 d!810168))

(declare-fun d!810170 () Bool)

(assert (=> d!810170 (isPrefix!2560 Nil!32095 (++!7937 Nil!32095 lt!993230))))

(declare-fun lt!993584 () Unit!46367)

(declare-fun choose!16317 (List!32195 List!32195) Unit!46367)

(assert (=> d!810170 (= lt!993584 (choose!16317 Nil!32095 lt!993230))))

(assert (=> d!810170 (= (lemmaConcatTwoListThenFirstIsPrefix!1670 Nil!32095 lt!993230) lt!993584)))

(declare-fun bs!510780 () Bool)

(assert (= bs!510780 d!810170))

(assert (=> bs!510780 m!3212613))

(assert (=> bs!510780 m!3212613))

(assert (=> bs!510780 m!3212615))

(declare-fun m!3212911 () Bool)

(assert (=> bs!510780 m!3212911))

(assert (=> b!2781424 d!810170))

(declare-fun d!810172 () Bool)

(assert (=> d!810172 (and (= lt!993272 (_1!19109 lt!993226)) (= lt!993240 (_2!19109 lt!993226)))))

(declare-fun lt!993585 () Unit!46367)

(assert (=> d!810172 (= lt!993585 (choose!16312 lt!993272 lt!993240 (_1!19109 lt!993226) (_2!19109 lt!993226)))))

(assert (=> d!810172 (= (++!7937 lt!993272 lt!993240) (++!7937 (_1!19109 lt!993226) (_2!19109 lt!993226)))))

(assert (=> d!810172 (= (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993272 lt!993240 (_1!19109 lt!993226) (_2!19109 lt!993226)) lt!993585)))

(declare-fun bs!510781 () Bool)

(assert (= bs!510781 d!810172))

(declare-fun m!3212913 () Bool)

(assert (=> bs!510781 m!3212913))

(declare-fun m!3212915 () Bool)

(assert (=> bs!510781 m!3212915))

(declare-fun m!3212917 () Bool)

(assert (=> bs!510781 m!3212917))

(assert (=> b!2781424 d!810172))

(declare-fun d!810174 () Bool)

(declare-fun lt!993588 () Int)

(assert (=> d!810174 (= lt!993588 (size!24889 (list!12103 input!5495)))))

(declare-fun size!24891 (Conc!9984) Int)

(assert (=> d!810174 (= lt!993588 (size!24891 (c!452130 input!5495)))))

(assert (=> d!810174 (= (size!24890 input!5495) lt!993588)))

(declare-fun bs!510782 () Bool)

(assert (= bs!510782 d!810174))

(assert (=> bs!510782 m!3212603))

(assert (=> bs!510782 m!3212603))

(declare-fun m!3212919 () Bool)

(assert (=> bs!510782 m!3212919))

(declare-fun m!3212921 () Bool)

(assert (=> bs!510782 m!3212921))

(assert (=> b!2781424 d!810174))

(declare-fun d!810176 () Bool)

(declare-fun e!1754407 () Bool)

(assert (=> d!810176 e!1754407))

(declare-fun res!1161390 () Bool)

(assert (=> d!810176 (=> (not res!1161390) (not e!1754407))))

(declare-fun lt!993590 () tuple2!32342)

(assert (=> d!810176 (= res!1161390 (isBalanced!3046 (c!452130 (_1!19110 lt!993590))))))

(declare-fun lt!993589 () tuple2!32344)

(assert (=> d!810176 (= lt!993590 (tuple2!32343 (BalanceConc!19583 (_1!19112 lt!993589)) (BalanceConc!19583 (_2!19112 lt!993589))))))

(assert (=> d!810176 (= lt!993589 (splitAt!125 (c!452130 input!5495) (_1!19107 lt!993262)))))

(assert (=> d!810176 (isBalanced!3046 (c!452130 input!5495))))

(assert (=> d!810176 (= (splitAt!124 input!5495 (_1!19107 lt!993262)) lt!993590)))

(declare-fun b!2781647 () Bool)

(declare-fun res!1161391 () Bool)

(assert (=> b!2781647 (=> (not res!1161391) (not e!1754407))))

(assert (=> b!2781647 (= res!1161391 (isBalanced!3046 (c!452130 (_2!19110 lt!993590))))))

(declare-fun b!2781648 () Bool)

(assert (=> b!2781648 (= e!1754407 (= (tuple2!32341 (list!12103 (_1!19110 lt!993590)) (list!12103 (_2!19110 lt!993590))) (splitAtIndex!54 (list!12103 input!5495) (_1!19107 lt!993262))))))

(assert (= (and d!810176 res!1161390) b!2781647))

(assert (= (and b!2781647 res!1161391) b!2781648))

(declare-fun m!3212923 () Bool)

(assert (=> d!810176 m!3212923))

(declare-fun m!3212925 () Bool)

(assert (=> d!810176 m!3212925))

(assert (=> d!810176 m!3212723))

(declare-fun m!3212927 () Bool)

(assert (=> b!2781647 m!3212927))

(declare-fun m!3212929 () Bool)

(assert (=> b!2781648 m!3212929))

(declare-fun m!3212931 () Bool)

(assert (=> b!2781648 m!3212931))

(assert (=> b!2781648 m!3212603))

(assert (=> b!2781648 m!3212603))

(declare-fun m!3212933 () Bool)

(assert (=> b!2781648 m!3212933))

(assert (=> b!2781424 d!810176))

(declare-fun b!2781650 () Bool)

(declare-fun e!1754409 () List!32195)

(assert (=> b!2781650 (= e!1754409 (Cons!32095 (h!37515 Nil!32095) (++!7937 (t!228335 Nil!32095) lt!993230)))))

(declare-fun b!2781651 () Bool)

(declare-fun res!1161393 () Bool)

(declare-fun e!1754408 () Bool)

(assert (=> b!2781651 (=> (not res!1161393) (not e!1754408))))

(declare-fun lt!993591 () List!32195)

(assert (=> b!2781651 (= res!1161393 (= (size!24889 lt!993591) (+ (size!24889 Nil!32095) (size!24889 lt!993230))))))

(declare-fun d!810178 () Bool)

(assert (=> d!810178 e!1754408))

(declare-fun res!1161392 () Bool)

(assert (=> d!810178 (=> (not res!1161392) (not e!1754408))))

(assert (=> d!810178 (= res!1161392 (= (content!4512 lt!993591) ((_ map or) (content!4512 Nil!32095) (content!4512 lt!993230))))))

(assert (=> d!810178 (= lt!993591 e!1754409)))

(declare-fun c!452210 () Bool)

(assert (=> d!810178 (= c!452210 ((_ is Nil!32095) Nil!32095))))

(assert (=> d!810178 (= (++!7937 Nil!32095 lt!993230) lt!993591)))

(declare-fun b!2781649 () Bool)

(assert (=> b!2781649 (= e!1754409 lt!993230)))

(declare-fun b!2781652 () Bool)

(assert (=> b!2781652 (= e!1754408 (or (not (= lt!993230 Nil!32095)) (= lt!993591 Nil!32095)))))

(assert (= (and d!810178 c!452210) b!2781649))

(assert (= (and d!810178 (not c!452210)) b!2781650))

(assert (= (and d!810178 res!1161392) b!2781651))

(assert (= (and b!2781651 res!1161393) b!2781652))

(declare-fun m!3212935 () Bool)

(assert (=> b!2781650 m!3212935))

(declare-fun m!3212937 () Bool)

(assert (=> b!2781651 m!3212937))

(assert (=> b!2781651 m!3212545))

(assert (=> b!2781651 m!3212535))

(declare-fun m!3212939 () Bool)

(assert (=> d!810178 m!3212939))

(assert (=> d!810178 m!3212693))

(assert (=> d!810178 m!3212641))

(assert (=> b!2781424 d!810178))

(declare-fun b!2781653 () Bool)

(declare-fun e!1754415 () Int)

(declare-fun lt!993600 () Int)

(assert (=> b!2781653 (= e!1754415 (ite (= lt!993600 0) 1 lt!993600))))

(declare-fun call!182428 () Int)

(assert (=> b!2781653 (= lt!993600 call!182428)))

(declare-fun call!182432 () Bool)

(declare-fun lt!993603 () List!32195)

(declare-fun c!452211 () Bool)

(declare-fun lt!993629 () List!32195)

(declare-fun bm!182418 () Bool)

(declare-fun lt!993613 () List!32195)

(declare-fun lt!993620 () List!32195)

(assert (=> bm!182418 (= call!182432 (isPrefix!2560 (ite c!452211 lt!993613 lt!993620) (ite c!452211 lt!993629 lt!993603)))))

(declare-fun bm!182419 () Bool)

(declare-fun call!182427 () Unit!46367)

(assert (=> bm!182419 (= call!182427 (lemmaIsPrefixRefl!1685 (ite c!452211 lt!993613 lt!993620) (ite c!452211 lt!993629 lt!993603)))))

(declare-fun bm!182420 () Bool)

(declare-fun call!182431 () List!32195)

(declare-fun call!182426 () C!16372)

(assert (=> bm!182420 (= call!182431 (++!7937 lt!993200 (Cons!32095 call!182426 Nil!32095)))))

(declare-fun b!2781654 () Bool)

(declare-fun c!452212 () Bool)

(declare-fun call!182425 () Bool)

(assert (=> b!2781654 (= c!452212 call!182425)))

(declare-fun lt!993615 () Unit!46367)

(declare-fun lt!993633 () Unit!46367)

(assert (=> b!2781654 (= lt!993615 lt!993633)))

(declare-fun lt!993622 () List!32195)

(declare-fun lt!993601 () List!32195)

(declare-fun lt!993608 () C!16372)

(assert (=> b!2781654 (= (++!7937 (++!7937 lt!993200 (Cons!32095 lt!993608 Nil!32095)) lt!993601) lt!993622)))

(assert (=> b!2781654 (= lt!993633 (lemmaMoveElementToOtherListKeepsConcatEq!876 lt!993200 lt!993608 lt!993601 lt!993622))))

(assert (=> b!2781654 (= lt!993622 (list!12103 input!5495))))

(assert (=> b!2781654 (= lt!993601 (tail!4393 lt!993268))))

(assert (=> b!2781654 (= lt!993608 (apply!7522 input!5495 1))))

(declare-fun lt!993616 () Unit!46367)

(declare-fun lt!993626 () Unit!46367)

(assert (=> b!2781654 (= lt!993616 lt!993626)))

(declare-fun lt!993618 () List!32195)

(assert (=> b!2781654 (isPrefix!2560 (++!7937 lt!993200 (Cons!32095 (head!6155 (getSuffix!1242 lt!993618 lt!993200)) Nil!32095)) lt!993618)))

(assert (=> b!2781654 (= lt!993626 (lemmaAddHeadSuffixToPrefixStillPrefix!464 lt!993200 lt!993618))))

(assert (=> b!2781654 (= lt!993618 (list!12103 input!5495))))

(declare-fun lt!993630 () Unit!46367)

(declare-fun e!1754410 () Unit!46367)

(assert (=> b!2781654 (= lt!993630 e!1754410)))

(declare-fun c!452216 () Bool)

(assert (=> b!2781654 (= c!452216 (= (size!24889 lt!993200) (size!24890 input!5495)))))

(declare-fun lt!993598 () Unit!46367)

(declare-fun lt!993609 () Unit!46367)

(assert (=> b!2781654 (= lt!993598 lt!993609)))

(declare-fun lt!993610 () List!32195)

(assert (=> b!2781654 (<= (size!24889 lt!993200) (size!24889 lt!993610))))

(assert (=> b!2781654 (= lt!993609 (lemmaIsPrefixThenSmallerEqSize!267 lt!993200 lt!993610))))

(assert (=> b!2781654 (= lt!993610 (list!12103 input!5495))))

(declare-fun lt!993594 () Unit!46367)

(declare-fun lt!993597 () Unit!46367)

(assert (=> b!2781654 (= lt!993594 lt!993597)))

(declare-fun lt!993623 () List!32195)

(assert (=> b!2781654 (= (head!6155 (drop!1713 lt!993623 1)) (apply!7523 lt!993623 1))))

(assert (=> b!2781654 (= lt!993597 (lemmaDropApply!919 lt!993623 1))))

(assert (=> b!2781654 (= lt!993623 (list!12103 input!5495))))

(declare-fun lt!993607 () Unit!46367)

(declare-fun lt!993614 () Unit!46367)

(assert (=> b!2781654 (= lt!993607 lt!993614)))

(declare-fun lt!993593 () List!32195)

(declare-fun lt!993619 () List!32195)

(assert (=> b!2781654 (and (= lt!993619 lt!993200) (= lt!993593 lt!993268))))

(assert (=> b!2781654 (= lt!993614 (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993619 lt!993593 lt!993200 lt!993268))))

(declare-fun lt!993625 () tuple2!32342)

(assert (=> b!2781654 (= lt!993593 (list!12103 (_2!19110 lt!993625)))))

(declare-fun call!182430 () List!32195)

(assert (=> b!2781654 (= lt!993619 call!182430)))

(assert (=> b!2781654 (= lt!993625 (splitAt!124 input!5495 1))))

(declare-fun e!1754411 () Int)

(assert (=> b!2781654 (= e!1754411 e!1754415)))

(declare-fun b!2781655 () Bool)

(declare-fun e!1754412 () Int)

(assert (=> b!2781655 (= e!1754412 0)))

(declare-fun b!2781656 () Bool)

(declare-fun c!452214 () Bool)

(assert (=> b!2781656 (= c!452214 call!182425)))

(declare-fun lt!993596 () Unit!46367)

(declare-fun lt!993631 () Unit!46367)

(assert (=> b!2781656 (= lt!993596 lt!993631)))

(declare-fun lt!993606 () List!32195)

(assert (=> b!2781656 (= lt!993606 lt!993200)))

(declare-fun call!182429 () Unit!46367)

(assert (=> b!2781656 (= lt!993631 call!182429)))

(assert (=> b!2781656 (= lt!993606 call!182430)))

(declare-fun lt!993604 () Unit!46367)

(declare-fun lt!993627 () Unit!46367)

(assert (=> b!2781656 (= lt!993604 lt!993627)))

(assert (=> b!2781656 call!182432))

(assert (=> b!2781656 (= lt!993627 call!182427)))

(assert (=> b!2781656 (= lt!993629 call!182430)))

(assert (=> b!2781656 (= lt!993613 call!182430)))

(declare-fun e!1754414 () Int)

(assert (=> b!2781656 (= e!1754411 e!1754414)))

(declare-fun b!2781657 () Bool)

(declare-fun e!1754413 () List!32195)

(assert (=> b!2781657 (= e!1754413 call!182430)))

(declare-fun b!2781658 () Bool)

(assert (=> b!2781658 (= e!1754413 (list!12103 input!5495))))

(declare-fun bm!182421 () Bool)

(declare-fun c!452213 () Bool)

(assert (=> bm!182421 (= c!452213 c!452211)))

(declare-fun lt!993628 () List!32195)

(assert (=> bm!182421 (= call!182429 (lemmaIsPrefixSameLengthThenSameList!467 (ite c!452211 lt!993606 lt!993628) lt!993200 e!1754413))))

(declare-fun d!810180 () Bool)

(declare-fun lt!993617 () Int)

(assert (=> d!810180 (= (size!24889 (_1!19109 (findLongestMatchInnerZipper!30 call!182350 lt!993200 1 lt!993268 (list!12103 input!5495) lt!993243))) lt!993617)))

(assert (=> d!810180 (= lt!993617 e!1754412)))

(declare-fun c!452215 () Bool)

(assert (=> d!810180 (= c!452215 (lostCauseZipper!446 call!182350))))

(declare-fun lt!993612 () Unit!46367)

(declare-fun Unit!46383 () Unit!46367)

(assert (=> d!810180 (= lt!993612 Unit!46383)))

(assert (=> d!810180 (= (getSuffix!1242 (list!12103 input!5495) lt!993200) lt!993268)))

(declare-fun lt!993605 () Unit!46367)

(declare-fun lt!993592 () Unit!46367)

(assert (=> d!810180 (= lt!993605 lt!993592)))

(declare-fun lt!993632 () List!32195)

(assert (=> d!810180 (= lt!993268 lt!993632)))

(assert (=> d!810180 (= lt!993592 (lemmaSamePrefixThenSameSuffix!1144 lt!993200 lt!993268 lt!993200 lt!993632 (list!12103 input!5495)))))

(assert (=> d!810180 (= lt!993632 (getSuffix!1242 (list!12103 input!5495) lt!993200))))

(declare-fun lt!993611 () Unit!46367)

(declare-fun lt!993624 () Unit!46367)

(assert (=> d!810180 (= lt!993611 lt!993624)))

(assert (=> d!810180 (isPrefix!2560 lt!993200 (++!7937 lt!993200 lt!993268))))

(assert (=> d!810180 (= lt!993624 (lemmaConcatTwoListThenFirstIsPrefix!1670 lt!993200 lt!993268))))

(assert (=> d!810180 (= (++!7937 lt!993200 lt!993268) (list!12103 input!5495))))

(assert (=> d!810180 (= (findLongestMatchInnerZipperFast!55 call!182350 lt!993200 1 lt!993268 input!5495 lt!993243) lt!993617)))

(declare-fun bm!182422 () Bool)

(assert (=> bm!182422 (= call!182426 (apply!7522 input!5495 1))))

(declare-fun bm!182423 () Bool)

(declare-fun call!182424 () List!32195)

(assert (=> bm!182423 (= call!182424 (tail!4393 lt!993268))))

(declare-fun b!2781659 () Bool)

(assert (=> b!2781659 (= e!1754414 1)))

(declare-fun bm!182424 () Bool)

(assert (=> bm!182424 (= call!182425 (nullableZipper!640 call!182350))))

(declare-fun b!2781660 () Bool)

(assert (=> b!2781660 (= e!1754412 e!1754411)))

(assert (=> b!2781660 (= c!452211 (= 1 lt!993243))))

(declare-fun bm!182425 () Bool)

(assert (=> bm!182425 (= call!182430 (list!12103 (ite c!452211 input!5495 (_1!19110 lt!993625))))))

(declare-fun b!2781661 () Bool)

(assert (=> b!2781661 (= e!1754414 0)))

(declare-fun b!2781662 () Bool)

(declare-fun Unit!46384 () Unit!46367)

(assert (=> b!2781662 (= e!1754410 Unit!46384)))

(declare-fun b!2781663 () Bool)

(declare-fun Unit!46385 () Unit!46367)

(assert (=> b!2781663 (= e!1754410 Unit!46385)))

(assert (=> b!2781663 (= lt!993620 (list!12103 input!5495))))

(assert (=> b!2781663 (= lt!993603 (list!12103 input!5495))))

(declare-fun lt!993595 () Unit!46367)

(assert (=> b!2781663 (= lt!993595 call!182427)))

(assert (=> b!2781663 call!182432))

(declare-fun lt!993599 () Unit!46367)

(assert (=> b!2781663 (= lt!993599 lt!993595)))

(assert (=> b!2781663 (= lt!993628 (list!12103 input!5495))))

(declare-fun lt!993602 () Unit!46367)

(assert (=> b!2781663 (= lt!993602 call!182429)))

(assert (=> b!2781663 (= lt!993628 lt!993200)))

(declare-fun lt!993621 () Unit!46367)

(assert (=> b!2781663 (= lt!993621 lt!993602)))

(assert (=> b!2781663 false))

(declare-fun bm!182426 () Bool)

(declare-fun call!182423 () (InoxSet Context!4650))

(assert (=> bm!182426 (= call!182428 (findLongestMatchInnerZipperFast!55 call!182423 call!182431 (+ 1 1) call!182424 input!5495 lt!993243))))

(declare-fun b!2781664 () Bool)

(assert (=> b!2781664 (= e!1754415 call!182428)))

(declare-fun bm!182427 () Bool)

(assert (=> bm!182427 (= call!182423 (derivationStepZipper!372 call!182350 call!182426))))

(assert (= (and d!810180 c!452215) b!2781655))

(assert (= (and d!810180 (not c!452215)) b!2781660))

(assert (= (and b!2781660 c!452211) b!2781656))

(assert (= (and b!2781660 (not c!452211)) b!2781654))

(assert (= (and b!2781656 c!452214) b!2781659))

(assert (= (and b!2781656 (not c!452214)) b!2781661))

(assert (= (and b!2781654 c!452216) b!2781663))

(assert (= (and b!2781654 (not c!452216)) b!2781662))

(assert (= (and b!2781654 c!452212) b!2781653))

(assert (= (and b!2781654 (not c!452212)) b!2781664))

(assert (= (or b!2781653 b!2781664) bm!182422))

(assert (= (or b!2781653 b!2781664) bm!182423))

(assert (= (or b!2781653 b!2781664) bm!182427))

(assert (= (or b!2781653 b!2781664) bm!182420))

(assert (= (or b!2781653 b!2781664) bm!182426))

(assert (= (or b!2781656 b!2781663) bm!182418))

(assert (= (or b!2781656 b!2781654) bm!182424))

(assert (= (or b!2781656 b!2781663) bm!182419))

(assert (= (or b!2781656 b!2781654) bm!182425))

(assert (= (or b!2781656 b!2781663) bm!182421))

(assert (= (and bm!182421 c!452213) b!2781657))

(assert (= (and bm!182421 (not c!452213)) b!2781658))

(declare-fun m!3212941 () Bool)

(assert (=> bm!182424 m!3212941))

(assert (=> b!2781658 m!3212603))

(declare-fun m!3212943 () Bool)

(assert (=> bm!182419 m!3212943))

(declare-fun m!3212945 () Bool)

(assert (=> bm!182425 m!3212945))

(declare-fun m!3212947 () Bool)

(assert (=> bm!182420 m!3212947))

(declare-fun m!3212949 () Bool)

(assert (=> b!2781654 m!3212949))

(declare-fun m!3212951 () Bool)

(assert (=> b!2781654 m!3212951))

(declare-fun m!3212953 () Bool)

(assert (=> b!2781654 m!3212953))

(declare-fun m!3212955 () Bool)

(assert (=> b!2781654 m!3212955))

(declare-fun m!3212957 () Bool)

(assert (=> b!2781654 m!3212957))

(declare-fun m!3212959 () Bool)

(assert (=> b!2781654 m!3212959))

(assert (=> b!2781654 m!3212663))

(declare-fun m!3212961 () Bool)

(assert (=> b!2781654 m!3212961))

(declare-fun m!3212963 () Bool)

(assert (=> b!2781654 m!3212963))

(declare-fun m!3212965 () Bool)

(assert (=> b!2781654 m!3212965))

(declare-fun m!3212967 () Bool)

(assert (=> b!2781654 m!3212967))

(assert (=> b!2781654 m!3212963))

(declare-fun m!3212969 () Bool)

(assert (=> b!2781654 m!3212969))

(declare-fun m!3212971 () Bool)

(assert (=> b!2781654 m!3212971))

(declare-fun m!3212973 () Bool)

(assert (=> b!2781654 m!3212973))

(assert (=> b!2781654 m!3212953))

(declare-fun m!3212975 () Bool)

(assert (=> b!2781654 m!3212975))

(declare-fun m!3212977 () Bool)

(assert (=> b!2781654 m!3212977))

(declare-fun m!3212979 () Bool)

(assert (=> b!2781654 m!3212979))

(declare-fun m!3212981 () Bool)

(assert (=> b!2781654 m!3212981))

(assert (=> b!2781654 m!3212957))

(assert (=> b!2781654 m!3212629))

(assert (=> b!2781654 m!3212967))

(declare-fun m!3212983 () Bool)

(assert (=> b!2781654 m!3212983))

(assert (=> b!2781654 m!3212603))

(declare-fun m!3212985 () Bool)

(assert (=> b!2781654 m!3212985))

(assert (=> bm!182423 m!3212971))

(assert (=> d!810180 m!3212603))

(declare-fun m!3212987 () Bool)

(assert (=> d!810180 m!3212987))

(assert (=> d!810180 m!3212603))

(declare-fun m!3212989 () Bool)

(assert (=> d!810180 m!3212989))

(declare-fun m!3212991 () Bool)

(assert (=> d!810180 m!3212991))

(assert (=> d!810180 m!3212567))

(assert (=> d!810180 m!3212603))

(declare-fun m!3212993 () Bool)

(assert (=> d!810180 m!3212993))

(assert (=> d!810180 m!3212567))

(declare-fun m!3212995 () Bool)

(assert (=> d!810180 m!3212995))

(declare-fun m!3212997 () Bool)

(assert (=> d!810180 m!3212997))

(assert (=> d!810180 m!3212603))

(declare-fun m!3212999 () Bool)

(assert (=> d!810180 m!3212999))

(assert (=> b!2781663 m!3212603))

(declare-fun m!3213001 () Bool)

(assert (=> bm!182418 m!3213001))

(declare-fun m!3213003 () Bool)

(assert (=> bm!182426 m!3213003))

(declare-fun m!3213005 () Bool)

(assert (=> bm!182427 m!3213005))

(assert (=> bm!182422 m!3212973))

(declare-fun m!3213007 () Bool)

(assert (=> bm!182421 m!3213007))

(assert (=> bm!182334 d!810180))

(declare-fun d!810182 () Bool)

(assert (=> d!810182 (= (valid!2988 (_3!2937 lt!993257)) (validCacheMapDown!402 (cache!3871 (_3!2937 lt!993257))))))

(declare-fun bs!510783 () Bool)

(assert (= bs!510783 d!810182))

(declare-fun m!3213009 () Bool)

(assert (=> bs!510783 m!3213009))

(assert (=> b!2781406 d!810182))

(declare-fun d!810184 () Bool)

(declare-fun e!1754418 () Bool)

(assert (=> d!810184 e!1754418))

(declare-fun res!1161398 () Bool)

(assert (=> d!810184 (=> (not res!1161398) (not e!1754418))))

(declare-fun lt!993636 () tuple3!4938)

(assert (=> d!810184 (= res!1161398 (= (_1!19111 lt!993636) (derivationStepZipper!372 z!3597 lt!993214)))))

(declare-fun choose!16318 ((InoxSet Context!4650) C!16372 CacheUp!2432 CacheDown!2554) tuple3!4938)

(assert (=> d!810184 (= lt!993636 (choose!16318 z!3597 lt!993214 (_2!19107 lt!993262) (_3!2937 lt!993262)))))

(assert (=> d!810184 (= (derivationStepZipperMem!99 z!3597 lt!993214 (_2!19107 lt!993262) (_3!2937 lt!993262)) lt!993636)))

(declare-fun b!2781669 () Bool)

(declare-fun res!1161399 () Bool)

(assert (=> b!2781669 (=> (not res!1161399) (not e!1754418))))

(assert (=> b!2781669 (= res!1161399 (valid!2989 (_2!19111 lt!993636)))))

(declare-fun b!2781670 () Bool)

(assert (=> b!2781670 (= e!1754418 (valid!2988 (_3!2939 lt!993636)))))

(assert (= (and d!810184 res!1161398) b!2781669))

(assert (= (and b!2781669 res!1161399) b!2781670))

(declare-fun m!3213011 () Bool)

(assert (=> d!810184 m!3213011))

(declare-fun m!3213013 () Bool)

(assert (=> d!810184 m!3213013))

(declare-fun m!3213015 () Bool)

(assert (=> b!2781669 m!3213015))

(declare-fun m!3213017 () Bool)

(assert (=> b!2781670 m!3213017))

(assert (=> bm!182339 d!810184))

(declare-fun d!810186 () Bool)

(assert (=> d!810186 (= (valid!2988 (_3!2937 lt!993262)) (validCacheMapDown!402 (cache!3871 (_3!2937 lt!993262))))))

(declare-fun bs!510784 () Bool)

(assert (= bs!510784 d!810186))

(declare-fun m!3213019 () Bool)

(assert (=> bs!510784 m!3213019))

(assert (=> b!2781422 d!810186))

(declare-fun b!2781671 () Bool)

(declare-fun e!1754424 () Int)

(declare-fun lt!993645 () Int)

(assert (=> b!2781671 (= e!1754424 (ite (= lt!993645 0) 1 lt!993645))))

(declare-fun call!182438 () Int)

(assert (=> b!2781671 (= lt!993645 call!182438)))

(declare-fun lt!993658 () List!32195)

(declare-fun lt!993648 () List!32195)

(declare-fun c!452217 () Bool)

(declare-fun lt!993665 () List!32195)

(declare-fun bm!182428 () Bool)

(declare-fun lt!993674 () List!32195)

(declare-fun call!182442 () Bool)

(assert (=> bm!182428 (= call!182442 (isPrefix!2560 (ite c!452217 lt!993658 lt!993665) (ite c!452217 lt!993674 lt!993648)))))

(declare-fun call!182437 () Unit!46367)

(declare-fun bm!182429 () Bool)

(assert (=> bm!182429 (= call!182437 (lemmaIsPrefixRefl!1685 (ite c!452217 lt!993658 lt!993665) (ite c!452217 lt!993674 lt!993648)))))

(declare-fun bm!182430 () Bool)

(declare-fun call!182441 () List!32195)

(declare-fun call!182436 () C!16372)

(assert (=> bm!182430 (= call!182441 (++!7937 lt!993235 (Cons!32095 call!182436 Nil!32095)))))

(declare-fun b!2781672 () Bool)

(declare-fun c!452218 () Bool)

(declare-fun call!182435 () Bool)

(assert (=> b!2781672 (= c!452218 call!182435)))

(declare-fun lt!993660 () Unit!46367)

(declare-fun lt!993678 () Unit!46367)

(assert (=> b!2781672 (= lt!993660 lt!993678)))

(declare-fun lt!993653 () C!16372)

(declare-fun lt!993646 () List!32195)

(declare-fun lt!993667 () List!32195)

(assert (=> b!2781672 (= (++!7937 (++!7937 lt!993235 (Cons!32095 lt!993653 Nil!32095)) lt!993646) lt!993667)))

(assert (=> b!2781672 (= lt!993678 (lemmaMoveElementToOtherListKeepsConcatEq!876 lt!993235 lt!993653 lt!993646 lt!993667))))

(assert (=> b!2781672 (= lt!993667 (list!12103 input!5495))))

(assert (=> b!2781672 (= lt!993646 (tail!4393 lt!993250))))

(assert (=> b!2781672 (= lt!993653 (apply!7522 input!5495 1))))

(declare-fun lt!993661 () Unit!46367)

(declare-fun lt!993671 () Unit!46367)

(assert (=> b!2781672 (= lt!993661 lt!993671)))

(declare-fun lt!993663 () List!32195)

(assert (=> b!2781672 (isPrefix!2560 (++!7937 lt!993235 (Cons!32095 (head!6155 (getSuffix!1242 lt!993663 lt!993235)) Nil!32095)) lt!993663)))

(assert (=> b!2781672 (= lt!993671 (lemmaAddHeadSuffixToPrefixStillPrefix!464 lt!993235 lt!993663))))

(assert (=> b!2781672 (= lt!993663 (list!12103 input!5495))))

(declare-fun lt!993675 () Unit!46367)

(declare-fun e!1754419 () Unit!46367)

(assert (=> b!2781672 (= lt!993675 e!1754419)))

(declare-fun c!452222 () Bool)

(assert (=> b!2781672 (= c!452222 (= (size!24889 lt!993235) (size!24890 input!5495)))))

(declare-fun lt!993643 () Unit!46367)

(declare-fun lt!993654 () Unit!46367)

(assert (=> b!2781672 (= lt!993643 lt!993654)))

(declare-fun lt!993655 () List!32195)

(assert (=> b!2781672 (<= (size!24889 lt!993235) (size!24889 lt!993655))))

(assert (=> b!2781672 (= lt!993654 (lemmaIsPrefixThenSmallerEqSize!267 lt!993235 lt!993655))))

(assert (=> b!2781672 (= lt!993655 (list!12103 input!5495))))

(declare-fun lt!993639 () Unit!46367)

(declare-fun lt!993642 () Unit!46367)

(assert (=> b!2781672 (= lt!993639 lt!993642)))

(declare-fun lt!993668 () List!32195)

(assert (=> b!2781672 (= (head!6155 (drop!1713 lt!993668 1)) (apply!7523 lt!993668 1))))

(assert (=> b!2781672 (= lt!993642 (lemmaDropApply!919 lt!993668 1))))

(assert (=> b!2781672 (= lt!993668 (list!12103 input!5495))))

(declare-fun lt!993652 () Unit!46367)

(declare-fun lt!993659 () Unit!46367)

(assert (=> b!2781672 (= lt!993652 lt!993659)))

(declare-fun lt!993638 () List!32195)

(declare-fun lt!993664 () List!32195)

(assert (=> b!2781672 (and (= lt!993664 lt!993235) (= lt!993638 lt!993250))))

(assert (=> b!2781672 (= lt!993659 (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993664 lt!993638 lt!993235 lt!993250))))

(declare-fun lt!993670 () tuple2!32342)

(assert (=> b!2781672 (= lt!993638 (list!12103 (_2!19110 lt!993670)))))

(declare-fun call!182440 () List!32195)

(assert (=> b!2781672 (= lt!993664 call!182440)))

(assert (=> b!2781672 (= lt!993670 (splitAt!124 input!5495 1))))

(declare-fun e!1754420 () Int)

(assert (=> b!2781672 (= e!1754420 e!1754424)))

(declare-fun b!2781673 () Bool)

(declare-fun e!1754421 () Int)

(assert (=> b!2781673 (= e!1754421 0)))

(declare-fun b!2781674 () Bool)

(declare-fun c!452220 () Bool)

(assert (=> b!2781674 (= c!452220 call!182435)))

(declare-fun lt!993641 () Unit!46367)

(declare-fun lt!993676 () Unit!46367)

(assert (=> b!2781674 (= lt!993641 lt!993676)))

(declare-fun lt!993651 () List!32195)

(assert (=> b!2781674 (= lt!993651 lt!993235)))

(declare-fun call!182439 () Unit!46367)

(assert (=> b!2781674 (= lt!993676 call!182439)))

(assert (=> b!2781674 (= lt!993651 call!182440)))

(declare-fun lt!993649 () Unit!46367)

(declare-fun lt!993672 () Unit!46367)

(assert (=> b!2781674 (= lt!993649 lt!993672)))

(assert (=> b!2781674 call!182442))

(assert (=> b!2781674 (= lt!993672 call!182437)))

(assert (=> b!2781674 (= lt!993674 call!182440)))

(assert (=> b!2781674 (= lt!993658 call!182440)))

(declare-fun e!1754423 () Int)

(assert (=> b!2781674 (= e!1754420 e!1754423)))

(declare-fun b!2781675 () Bool)

(declare-fun e!1754422 () List!32195)

(assert (=> b!2781675 (= e!1754422 call!182440)))

(declare-fun b!2781676 () Bool)

(assert (=> b!2781676 (= e!1754422 (list!12103 input!5495))))

(declare-fun bm!182431 () Bool)

(declare-fun c!452219 () Bool)

(assert (=> bm!182431 (= c!452219 c!452217)))

(declare-fun lt!993673 () List!32195)

(assert (=> bm!182431 (= call!182439 (lemmaIsPrefixSameLengthThenSameList!467 (ite c!452217 lt!993651 lt!993673) lt!993235 e!1754422))))

(declare-fun d!810188 () Bool)

(declare-fun lt!993662 () Int)

(assert (=> d!810188 (= (size!24889 (_1!19109 (findLongestMatchInnerZipper!30 (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207)) lt!993235 1 lt!993250 (list!12103 input!5495) lt!993243))) lt!993662)))

(assert (=> d!810188 (= lt!993662 e!1754421)))

(declare-fun c!452221 () Bool)

(assert (=> d!810188 (= c!452221 (lostCauseZipper!446 (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207))))))

(declare-fun lt!993657 () Unit!46367)

(declare-fun Unit!46386 () Unit!46367)

(assert (=> d!810188 (= lt!993657 Unit!46386)))

(assert (=> d!810188 (= (getSuffix!1242 (list!12103 input!5495) lt!993235) lt!993250)))

(declare-fun lt!993650 () Unit!46367)

(declare-fun lt!993637 () Unit!46367)

(assert (=> d!810188 (= lt!993650 lt!993637)))

(declare-fun lt!993677 () List!32195)

(assert (=> d!810188 (= lt!993250 lt!993677)))

(assert (=> d!810188 (= lt!993637 (lemmaSamePrefixThenSameSuffix!1144 lt!993235 lt!993250 lt!993235 lt!993677 (list!12103 input!5495)))))

(assert (=> d!810188 (= lt!993677 (getSuffix!1242 (list!12103 input!5495) lt!993235))))

(declare-fun lt!993656 () Unit!46367)

(declare-fun lt!993669 () Unit!46367)

(assert (=> d!810188 (= lt!993656 lt!993669)))

(assert (=> d!810188 (isPrefix!2560 lt!993235 (++!7937 lt!993235 lt!993250))))

(assert (=> d!810188 (= lt!993669 (lemmaConcatTwoListThenFirstIsPrefix!1670 lt!993235 lt!993250))))

(assert (=> d!810188 (= (++!7937 lt!993235 lt!993250) (list!12103 input!5495))))

(assert (=> d!810188 (= (findLongestMatchInnerZipperFast!55 (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207)) lt!993235 1 lt!993250 input!5495 lt!993243) lt!993662)))

(declare-fun bm!182432 () Bool)

(assert (=> bm!182432 (= call!182436 (apply!7522 input!5495 1))))

(declare-fun bm!182433 () Bool)

(declare-fun call!182434 () List!32195)

(assert (=> bm!182433 (= call!182434 (tail!4393 lt!993250))))

(declare-fun b!2781677 () Bool)

(assert (=> b!2781677 (= e!1754423 1)))

(declare-fun bm!182434 () Bool)

(assert (=> bm!182434 (= call!182435 (nullableZipper!640 (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207))))))

(declare-fun b!2781678 () Bool)

(assert (=> b!2781678 (= e!1754421 e!1754420)))

(assert (=> b!2781678 (= c!452217 (= 1 lt!993243))))

(declare-fun bm!182435 () Bool)

(assert (=> bm!182435 (= call!182440 (list!12103 (ite c!452217 input!5495 (_1!19110 lt!993670))))))

(declare-fun b!2781679 () Bool)

(assert (=> b!2781679 (= e!1754423 0)))

(declare-fun b!2781680 () Bool)

(declare-fun Unit!46387 () Unit!46367)

(assert (=> b!2781680 (= e!1754419 Unit!46387)))

(declare-fun b!2781681 () Bool)

(declare-fun Unit!46388 () Unit!46367)

(assert (=> b!2781681 (= e!1754419 Unit!46388)))

(assert (=> b!2781681 (= lt!993665 (list!12103 input!5495))))

(assert (=> b!2781681 (= lt!993648 (list!12103 input!5495))))

(declare-fun lt!993640 () Unit!46367)

(assert (=> b!2781681 (= lt!993640 call!182437)))

(assert (=> b!2781681 call!182442))

(declare-fun lt!993644 () Unit!46367)

(assert (=> b!2781681 (= lt!993644 lt!993640)))

(assert (=> b!2781681 (= lt!993673 (list!12103 input!5495))))

(declare-fun lt!993647 () Unit!46367)

(assert (=> b!2781681 (= lt!993647 call!182439)))

(assert (=> b!2781681 (= lt!993673 lt!993235)))

(declare-fun lt!993666 () Unit!46367)

(assert (=> b!2781681 (= lt!993666 lt!993647)))

(assert (=> b!2781681 false))

(declare-fun bm!182436 () Bool)

(declare-fun call!182433 () (InoxSet Context!4650))

(assert (=> bm!182436 (= call!182438 (findLongestMatchInnerZipperFast!55 call!182433 call!182441 (+ 1 1) call!182434 input!5495 lt!993243))))

(declare-fun b!2781682 () Bool)

(assert (=> b!2781682 (= e!1754424 call!182438)))

(declare-fun bm!182437 () Bool)

(assert (=> bm!182437 (= call!182433 (derivationStepZipper!372 (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207)) call!182436))))

(assert (= (and d!810188 c!452221) b!2781673))

(assert (= (and d!810188 (not c!452221)) b!2781678))

(assert (= (and b!2781678 c!452217) b!2781674))

(assert (= (and b!2781678 (not c!452217)) b!2781672))

(assert (= (and b!2781674 c!452220) b!2781677))

(assert (= (and b!2781674 (not c!452220)) b!2781679))

(assert (= (and b!2781672 c!452222) b!2781681))

(assert (= (and b!2781672 (not c!452222)) b!2781680))

(assert (= (and b!2781672 c!452218) b!2781671))

(assert (= (and b!2781672 (not c!452218)) b!2781682))

(assert (= (or b!2781671 b!2781682) bm!182432))

(assert (= (or b!2781671 b!2781682) bm!182433))

(assert (= (or b!2781671 b!2781682) bm!182437))

(assert (= (or b!2781671 b!2781682) bm!182430))

(assert (= (or b!2781671 b!2781682) bm!182436))

(assert (= (or b!2781674 b!2781681) bm!182428))

(assert (= (or b!2781674 b!2781672) bm!182434))

(assert (= (or b!2781674 b!2781681) bm!182429))

(assert (= (or b!2781674 b!2781672) bm!182435))

(assert (= (or b!2781674 b!2781681) bm!182431))

(assert (= (and bm!182431 c!452219) b!2781675))

(assert (= (and bm!182431 (not c!452219)) b!2781676))

(declare-fun m!3213021 () Bool)

(assert (=> bm!182434 m!3213021))

(assert (=> b!2781676 m!3212603))

(declare-fun m!3213023 () Bool)

(assert (=> bm!182429 m!3213023))

(declare-fun m!3213025 () Bool)

(assert (=> bm!182435 m!3213025))

(declare-fun m!3213027 () Bool)

(assert (=> bm!182430 m!3213027))

(declare-fun m!3213029 () Bool)

(assert (=> b!2781672 m!3213029))

(assert (=> b!2781672 m!3212951))

(declare-fun m!3213031 () Bool)

(assert (=> b!2781672 m!3213031))

(declare-fun m!3213033 () Bool)

(assert (=> b!2781672 m!3213033))

(declare-fun m!3213035 () Bool)

(assert (=> b!2781672 m!3213035))

(declare-fun m!3213037 () Bool)

(assert (=> b!2781672 m!3213037))

(declare-fun m!3213039 () Bool)

(assert (=> b!2781672 m!3213039))

(declare-fun m!3213041 () Bool)

(assert (=> b!2781672 m!3213041))

(declare-fun m!3213043 () Bool)

(assert (=> b!2781672 m!3213043))

(declare-fun m!3213045 () Bool)

(assert (=> b!2781672 m!3213045))

(declare-fun m!3213047 () Bool)

(assert (=> b!2781672 m!3213047))

(assert (=> b!2781672 m!3213043))

(declare-fun m!3213049 () Bool)

(assert (=> b!2781672 m!3213049))

(declare-fun m!3213051 () Bool)

(assert (=> b!2781672 m!3213051))

(assert (=> b!2781672 m!3212973))

(assert (=> b!2781672 m!3213031))

(declare-fun m!3213053 () Bool)

(assert (=> b!2781672 m!3213053))

(declare-fun m!3213055 () Bool)

(assert (=> b!2781672 m!3213055))

(declare-fun m!3213057 () Bool)

(assert (=> b!2781672 m!3213057))

(declare-fun m!3213059 () Bool)

(assert (=> b!2781672 m!3213059))

(assert (=> b!2781672 m!3213035))

(assert (=> b!2781672 m!3212629))

(assert (=> b!2781672 m!3213047))

(declare-fun m!3213061 () Bool)

(assert (=> b!2781672 m!3213061))

(assert (=> b!2781672 m!3212603))

(declare-fun m!3213063 () Bool)

(assert (=> b!2781672 m!3213063))

(assert (=> bm!182433 m!3213051))

(assert (=> d!810188 m!3212603))

(declare-fun m!3213065 () Bool)

(assert (=> d!810188 m!3213065))

(assert (=> d!810188 m!3212603))

(declare-fun m!3213067 () Bool)

(assert (=> d!810188 m!3213067))

(declare-fun m!3213069 () Bool)

(assert (=> d!810188 m!3213069))

(assert (=> d!810188 m!3212555))

(assert (=> d!810188 m!3212603))

(declare-fun m!3213071 () Bool)

(assert (=> d!810188 m!3213071))

(assert (=> d!810188 m!3212555))

(declare-fun m!3213073 () Bool)

(assert (=> d!810188 m!3213073))

(declare-fun m!3213075 () Bool)

(assert (=> d!810188 m!3213075))

(assert (=> d!810188 m!3212603))

(declare-fun m!3213077 () Bool)

(assert (=> d!810188 m!3213077))

(assert (=> b!2781681 m!3212603))

(declare-fun m!3213079 () Bool)

(assert (=> bm!182428 m!3213079))

(declare-fun m!3213081 () Bool)

(assert (=> bm!182436 m!3213081))

(declare-fun m!3213083 () Bool)

(assert (=> bm!182437 m!3213083))

(assert (=> bm!182432 m!3212973))

(declare-fun m!3213085 () Bool)

(assert (=> bm!182431 m!3213085))

(assert (=> bm!182351 d!810188))

(assert (=> bm!182347 d!810124))

(declare-fun d!810190 () Bool)

(assert (=> d!810190 (= lt!993230 Nil!32095)))

(declare-fun lt!993681 () Unit!46367)

(declare-fun choose!16319 (List!32195 List!32195 List!32195) Unit!46367)

(assert (=> d!810190 (= lt!993681 (choose!16319 lt!993230 Nil!32095 lt!993230))))

(assert (=> d!810190 (isPrefix!2560 lt!993230 lt!993230)))

(assert (=> d!810190 (= (lemmaIsPrefixSameLengthThenSameList!467 lt!993230 Nil!32095 lt!993230) lt!993681)))

(declare-fun bs!510785 () Bool)

(assert (= bs!510785 d!810190))

(declare-fun m!3213087 () Bool)

(assert (=> bs!510785 m!3213087))

(assert (=> bs!510785 m!3212495))

(assert (=> bm!182338 d!810190))

(declare-fun d!810192 () Bool)

(assert (=> d!810192 (= (valid!2988 cacheDown!939) (validCacheMapDown!402 (cache!3871 cacheDown!939)))))

(declare-fun bs!510786 () Bool)

(assert (= bs!510786 d!810192))

(assert (=> bs!510786 m!3212809))

(assert (=> b!2781405 d!810192))

(assert (=> bm!182345 d!810190))

(assert (=> bm!182354 d!810122))

(assert (=> bm!182350 d!810122))

(declare-fun d!810194 () Bool)

(assert (=> d!810194 true))

(declare-fun lambda!102130 () Int)

(declare-fun flatMap!188 ((InoxSet Context!4650) Int) (InoxSet Context!4650))

(assert (=> d!810194 (= (derivationStepZipper!372 z!3597 lt!993220) (flatMap!188 z!3597 lambda!102130))))

(declare-fun bs!510787 () Bool)

(assert (= bs!510787 d!810194))

(declare-fun m!3213089 () Bool)

(assert (=> bs!510787 m!3213089))

(assert (=> bm!182346 d!810194))

(declare-fun d!810196 () Bool)

(declare-fun e!1754425 () Bool)

(assert (=> d!810196 e!1754425))

(declare-fun res!1161400 () Bool)

(assert (=> d!810196 (=> (not res!1161400) (not e!1754425))))

(declare-fun lt!993682 () tuple3!4934)

(assert (=> d!810196 (= res!1161400 (valid!2989 (_2!19107 lt!993682)))))

(assert (=> d!810196 (= lt!993682 (choose!16316 (ite c!452125 (_2!19111 lt!993229) (_2!19111 lt!993207)) (ite c!452125 (_3!2939 lt!993229) (_3!2939 lt!993207)) (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207)) lt!993235 1 lt!993250 input!5495 lt!993243))))

(assert (=> d!810196 (= (++!7937 lt!993235 lt!993250) (list!12103 input!5495))))

(assert (=> d!810196 (= (findLongestMatchInnerZipperFastMem!48 (ite c!452125 (_2!19111 lt!993229) (_2!19111 lt!993207)) (ite c!452125 (_3!2939 lt!993229) (_3!2939 lt!993207)) (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207)) lt!993235 1 lt!993250 input!5495 lt!993243) lt!993682)))

(declare-fun b!2781685 () Bool)

(declare-fun res!1161401 () Bool)

(assert (=> b!2781685 (=> (not res!1161401) (not e!1754425))))

(assert (=> b!2781685 (= res!1161401 (valid!2988 (_3!2937 lt!993682)))))

(declare-fun b!2781686 () Bool)

(assert (=> b!2781686 (= e!1754425 (= (_1!19107 lt!993682) (findLongestMatchInnerZipperFast!55 (ite c!452125 (_1!19111 lt!993229) (_1!19111 lt!993207)) lt!993235 1 lt!993250 input!5495 lt!993243)))))

(assert (= (and d!810196 res!1161400) b!2781685))

(assert (= (and b!2781685 res!1161401) b!2781686))

(declare-fun m!3213091 () Bool)

(assert (=> d!810196 m!3213091))

(declare-fun m!3213093 () Bool)

(assert (=> d!810196 m!3213093))

(assert (=> d!810196 m!3212555))

(assert (=> d!810196 m!3212603))

(declare-fun m!3213095 () Bool)

(assert (=> b!2781685 m!3213095))

(assert (=> b!2781686 m!3212513))

(assert (=> bm!182337 d!810196))

(declare-fun d!810198 () Bool)

(assert (=> d!810198 (= (array_inv!4334 (_keys!4122 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))) (bvsge (size!24887 (_keys!4122 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2781434 d!810198))

(declare-fun d!810200 () Bool)

(assert (=> d!810200 (= (array_inv!4336 (_values!4103 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))) (bvsge (size!24888 (_values!4103 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2781434 d!810200))

(declare-fun d!810202 () Bool)

(assert (=> d!810202 (= (isEmpty!18105 (_1!19109 lt!993242)) ((_ is Nil!32095) (_1!19109 lt!993242)))))

(assert (=> b!2781418 d!810202))

(assert (=> b!2781403 d!810080))

(declare-fun b!2781688 () Bool)

(declare-fun e!1754427 () List!32195)

(assert (=> b!2781688 (= e!1754427 (Cons!32095 (h!37515 Nil!32095) (++!7937 (t!228335 Nil!32095) (Cons!32095 lt!993214 Nil!32095))))))

(declare-fun b!2781689 () Bool)

(declare-fun res!1161403 () Bool)

(declare-fun e!1754426 () Bool)

(assert (=> b!2781689 (=> (not res!1161403) (not e!1754426))))

(declare-fun lt!993683 () List!32195)

(assert (=> b!2781689 (= res!1161403 (= (size!24889 lt!993683) (+ (size!24889 Nil!32095) (size!24889 (Cons!32095 lt!993214 Nil!32095)))))))

(declare-fun d!810204 () Bool)

(assert (=> d!810204 e!1754426))

(declare-fun res!1161402 () Bool)

(assert (=> d!810204 (=> (not res!1161402) (not e!1754426))))

(assert (=> d!810204 (= res!1161402 (= (content!4512 lt!993683) ((_ map or) (content!4512 Nil!32095) (content!4512 (Cons!32095 lt!993214 Nil!32095)))))))

(assert (=> d!810204 (= lt!993683 e!1754427)))

(declare-fun c!452225 () Bool)

(assert (=> d!810204 (= c!452225 ((_ is Nil!32095) Nil!32095))))

(assert (=> d!810204 (= (++!7937 Nil!32095 (Cons!32095 lt!993214 Nil!32095)) lt!993683)))

(declare-fun b!2781687 () Bool)

(assert (=> b!2781687 (= e!1754427 (Cons!32095 lt!993214 Nil!32095))))

(declare-fun b!2781690 () Bool)

(assert (=> b!2781690 (= e!1754426 (or (not (= (Cons!32095 lt!993214 Nil!32095) Nil!32095)) (= lt!993683 Nil!32095)))))

(assert (= (and d!810204 c!452225) b!2781687))

(assert (= (and d!810204 (not c!452225)) b!2781688))

(assert (= (and d!810204 res!1161402) b!2781689))

(assert (= (and b!2781689 res!1161403) b!2781690))

(declare-fun m!3213097 () Bool)

(assert (=> b!2781688 m!3213097))

(declare-fun m!3213099 () Bool)

(assert (=> b!2781689 m!3213099))

(assert (=> b!2781689 m!3212545))

(declare-fun m!3213101 () Bool)

(assert (=> b!2781689 m!3213101))

(declare-fun m!3213103 () Bool)

(assert (=> d!810204 m!3213103))

(assert (=> d!810204 m!3212693))

(declare-fun m!3213105 () Bool)

(assert (=> d!810204 m!3213105))

(assert (=> b!2781403 d!810204))

(assert (=> b!2781403 d!810084))

(assert (=> b!2781403 d!810110))

(assert (=> b!2781403 d!810086))

(declare-fun d!810206 () Bool)

(assert (=> d!810206 (= (++!7937 (++!7937 Nil!32095 (Cons!32095 lt!993214 Nil!32095)) lt!993250) lt!993230)))

(declare-fun lt!993684 () Unit!46367)

(assert (=> d!810206 (= lt!993684 (choose!16309 Nil!32095 lt!993214 lt!993250 lt!993230))))

(assert (=> d!810206 (= (++!7937 Nil!32095 (Cons!32095 lt!993214 lt!993250)) lt!993230)))

(assert (=> d!810206 (= (lemmaMoveElementToOtherListKeepsConcatEq!876 Nil!32095 lt!993214 lt!993250 lt!993230) lt!993684)))

(declare-fun bs!510788 () Bool)

(assert (= bs!510788 d!810206))

(assert (=> bs!510788 m!3212537))

(assert (=> bs!510788 m!3212537))

(declare-fun m!3213107 () Bool)

(assert (=> bs!510788 m!3213107))

(declare-fun m!3213109 () Bool)

(assert (=> bs!510788 m!3213109))

(declare-fun m!3213111 () Bool)

(assert (=> bs!510788 m!3213111))

(assert (=> b!2781403 d!810206))

(declare-fun d!810208 () Bool)

(assert (=> d!810208 (= (list!12103 (_2!19110 lt!993270)) (list!12104 (c!452130 (_2!19110 lt!993270))))))

(declare-fun bs!510789 () Bool)

(assert (= bs!510789 d!810208))

(declare-fun m!3213113 () Bool)

(assert (=> bs!510789 m!3213113))

(assert (=> b!2781403 d!810208))

(assert (=> b!2781403 d!810090))

(assert (=> b!2781403 d!810094))

(assert (=> b!2781403 d!810096))

(assert (=> b!2781403 d!810098))

(assert (=> b!2781403 d!810100))

(assert (=> b!2781403 d!810104))

(assert (=> b!2781403 d!810108))

(declare-fun d!810210 () Bool)

(assert (=> d!810210 (= (list!12103 (_1!19110 lt!993270)) (list!12104 (c!452130 (_1!19110 lt!993270))))))

(declare-fun bs!510790 () Bool)

(assert (= bs!510790 d!810210))

(declare-fun m!3213115 () Bool)

(assert (=> bs!510790 m!3213115))

(assert (=> b!2781403 d!810210))

(assert (=> b!2781403 d!810116))

(assert (=> b!2781403 d!810118))

(declare-fun b!2781692 () Bool)

(declare-fun e!1754429 () List!32195)

(assert (=> b!2781692 (= e!1754429 (Cons!32095 (h!37515 lt!993235) (++!7937 (t!228335 lt!993235) lt!993250)))))

(declare-fun b!2781693 () Bool)

(declare-fun res!1161405 () Bool)

(declare-fun e!1754428 () Bool)

(assert (=> b!2781693 (=> (not res!1161405) (not e!1754428))))

(declare-fun lt!993685 () List!32195)

(assert (=> b!2781693 (= res!1161405 (= (size!24889 lt!993685) (+ (size!24889 lt!993235) (size!24889 lt!993250))))))

(declare-fun d!810212 () Bool)

(assert (=> d!810212 e!1754428))

(declare-fun res!1161404 () Bool)

(assert (=> d!810212 (=> (not res!1161404) (not e!1754428))))

(assert (=> d!810212 (= res!1161404 (= (content!4512 lt!993685) ((_ map or) (content!4512 lt!993235) (content!4512 lt!993250))))))

(assert (=> d!810212 (= lt!993685 e!1754429)))

(declare-fun c!452226 () Bool)

(assert (=> d!810212 (= c!452226 ((_ is Nil!32095) lt!993235))))

(assert (=> d!810212 (= (++!7937 lt!993235 lt!993250) lt!993685)))

(declare-fun b!2781691 () Bool)

(assert (=> b!2781691 (= e!1754429 lt!993250)))

(declare-fun b!2781694 () Bool)

(assert (=> b!2781694 (= e!1754428 (or (not (= lt!993250 Nil!32095)) (= lt!993685 lt!993235)))))

(assert (= (and d!810212 c!452226) b!2781691))

(assert (= (and d!810212 (not c!452226)) b!2781692))

(assert (= (and d!810212 res!1161404) b!2781693))

(assert (= (and b!2781693 res!1161405) b!2781694))

(declare-fun m!3213117 () Bool)

(assert (=> b!2781692 m!3213117))

(declare-fun m!3213119 () Bool)

(assert (=> b!2781693 m!3213119))

(assert (=> b!2781693 m!3213039))

(declare-fun m!3213121 () Bool)

(assert (=> b!2781693 m!3213121))

(declare-fun m!3213123 () Bool)

(assert (=> d!810212 m!3213123))

(declare-fun m!3213125 () Bool)

(assert (=> d!810212 m!3213125))

(declare-fun m!3213127 () Bool)

(assert (=> d!810212 m!3213127))

(assert (=> b!2781403 d!810212))

(declare-fun d!810214 () Bool)

(assert (=> d!810214 (and (= lt!993265 Nil!32095) (= lt!993232 lt!993230))))

(declare-fun lt!993686 () Unit!46367)

(assert (=> d!810214 (= lt!993686 (choose!16312 lt!993265 lt!993232 Nil!32095 lt!993230))))

(assert (=> d!810214 (= (++!7937 lt!993265 lt!993232) (++!7937 Nil!32095 lt!993230))))

(assert (=> d!810214 (= (lemmaConcatSameAndSameSizesThenSameLists!345 lt!993265 lt!993232 Nil!32095 lt!993230) lt!993686)))

(declare-fun bs!510791 () Bool)

(assert (= bs!510791 d!810214))

(declare-fun m!3213129 () Bool)

(assert (=> bs!510791 m!3213129))

(declare-fun m!3213131 () Bool)

(assert (=> bs!510791 m!3213131))

(assert (=> bs!510791 m!3212613))

(assert (=> b!2781403 d!810214))

(assert (=> b!2781403 d!810102))

(assert (=> b!2781431 d!810182))

(assert (=> bm!182344 d!810128))

(declare-fun bs!510792 () Bool)

(declare-fun d!810216 () Bool)

(assert (= bs!510792 (and d!810216 d!810194)))

(declare-fun lambda!102131 () Int)

(assert (=> bs!510792 (= (= lt!993269 lt!993220) (= lambda!102131 lambda!102130))))

(assert (=> d!810216 true))

(assert (=> d!810216 (= (derivationStepZipper!372 z!3597 lt!993269) (flatMap!188 z!3597 lambda!102131))))

(declare-fun bs!510793 () Bool)

(assert (= bs!510793 d!810216))

(declare-fun m!3213133 () Bool)

(assert (=> bs!510793 m!3213133))

(assert (=> bm!182336 d!810216))

(declare-fun d!810218 () Bool)

(assert (=> d!810218 (= (array_inv!4334 (_keys!4121 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))) (bvsge (size!24887 (_keys!4121 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2781432 d!810218))

(declare-fun d!810220 () Bool)

(assert (=> d!810220 (= (array_inv!4335 (_values!4102 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))) (bvsge (size!24886 (_values!4102 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2781432 d!810220))

(declare-fun d!810222 () Bool)

(declare-fun e!1754430 () Bool)

(assert (=> d!810222 e!1754430))

(declare-fun res!1161406 () Bool)

(assert (=> d!810222 (=> (not res!1161406) (not e!1754430))))

(declare-fun lt!993709 () tuple2!32340)

(assert (=> d!810222 (= res!1161406 (= (++!7937 (_1!19109 lt!993709) (_2!19109 lt!993709)) lt!993230))))

(declare-fun e!1754435 () tuple2!32340)

(assert (=> d!810222 (= lt!993709 e!1754435)))

(declare-fun c!452227 () Bool)

(assert (=> d!810222 (= c!452227 (lostCauseZipper!446 call!182356))))

(declare-fun lt!993699 () Unit!46367)

(declare-fun Unit!46389 () Unit!46367)

(assert (=> d!810222 (= lt!993699 Unit!46389)))

(assert (=> d!810222 (= (getSuffix!1242 lt!993230 lt!993238) lt!993206)))

(declare-fun lt!993697 () Unit!46367)

(declare-fun lt!993710 () Unit!46367)

(assert (=> d!810222 (= lt!993697 lt!993710)))

(declare-fun lt!993701 () List!32195)

(assert (=> d!810222 (= lt!993206 lt!993701)))

(assert (=> d!810222 (= lt!993710 (lemmaSamePrefixThenSameSuffix!1144 lt!993238 lt!993206 lt!993238 lt!993701 lt!993230))))

(assert (=> d!810222 (= lt!993701 (getSuffix!1242 lt!993230 lt!993238))))

(declare-fun lt!993693 () Unit!46367)

(declare-fun lt!993706 () Unit!46367)

(assert (=> d!810222 (= lt!993693 lt!993706)))

(assert (=> d!810222 (isPrefix!2560 lt!993238 (++!7937 lt!993238 lt!993206))))

(assert (=> d!810222 (= lt!993706 (lemmaConcatTwoListThenFirstIsPrefix!1670 lt!993238 lt!993206))))

(assert (=> d!810222 (= (++!7937 lt!993238 lt!993206) lt!993230)))

(assert (=> d!810222 (= (findLongestMatchInnerZipper!30 call!182356 lt!993238 1 lt!993206 lt!993230 lt!993243) lt!993709)))

(declare-fun b!2781695 () Bool)

(declare-fun e!1754434 () tuple2!32340)

(assert (=> b!2781695 (= e!1754435 e!1754434)))

(declare-fun c!452231 () Bool)

(assert (=> b!2781695 (= c!452231 (= 1 lt!993243))))

(declare-fun b!2781696 () Bool)

(declare-fun e!1754437 () tuple2!32340)

(declare-fun call!182443 () tuple2!32340)

(assert (=> b!2781696 (= e!1754437 call!182443)))

(declare-fun b!2781697 () Bool)

(assert (=> b!2781697 (= e!1754435 (tuple2!32341 Nil!32095 lt!993230))))

(declare-fun b!2781698 () Bool)

(declare-fun c!452229 () Bool)

(declare-fun call!182445 () Bool)

(assert (=> b!2781698 (= c!452229 call!182445)))

(declare-fun lt!993690 () Unit!46367)

(declare-fun lt!993696 () Unit!46367)

(assert (=> b!2781698 (= lt!993690 lt!993696)))

(declare-fun lt!993711 () C!16372)

(declare-fun lt!993695 () List!32195)

(assert (=> b!2781698 (= (++!7937 (++!7937 lt!993238 (Cons!32095 lt!993711 Nil!32095)) lt!993695) lt!993230)))

(assert (=> b!2781698 (= lt!993696 (lemmaMoveElementToOtherListKeepsConcatEq!876 lt!993238 lt!993711 lt!993695 lt!993230))))

(assert (=> b!2781698 (= lt!993695 (tail!4393 lt!993206))))

(assert (=> b!2781698 (= lt!993711 (head!6155 lt!993206))))

(declare-fun lt!993698 () Unit!46367)

(declare-fun lt!993691 () Unit!46367)

(assert (=> b!2781698 (= lt!993698 lt!993691)))

(assert (=> b!2781698 (isPrefix!2560 (++!7937 lt!993238 (Cons!32095 (head!6155 (getSuffix!1242 lt!993230 lt!993238)) Nil!32095)) lt!993230)))

(assert (=> b!2781698 (= lt!993691 (lemmaAddHeadSuffixToPrefixStillPrefix!464 lt!993238 lt!993230))))

(declare-fun lt!993705 () List!32195)

(assert (=> b!2781698 (= lt!993705 (++!7937 lt!993238 (Cons!32095 (head!6155 lt!993206) Nil!32095)))))

(declare-fun lt!993708 () Unit!46367)

(declare-fun e!1754432 () Unit!46367)

(assert (=> b!2781698 (= lt!993708 e!1754432)))

(declare-fun c!452230 () Bool)

(assert (=> b!2781698 (= c!452230 (= (size!24889 lt!993238) (size!24889 lt!993230)))))

(declare-fun lt!993712 () Unit!46367)

(declare-fun lt!993707 () Unit!46367)

(assert (=> b!2781698 (= lt!993712 lt!993707)))

(assert (=> b!2781698 (<= (size!24889 lt!993238) (size!24889 lt!993230))))

(assert (=> b!2781698 (= lt!993707 (lemmaIsPrefixThenSmallerEqSize!267 lt!993238 lt!993230))))

(assert (=> b!2781698 (= e!1754434 e!1754437)))

(declare-fun b!2781699 () Bool)

(declare-fun e!1754436 () Bool)

(assert (=> b!2781699 (= e!1754436 (>= (size!24889 (_1!19109 lt!993709)) (size!24889 lt!993238)))))

(declare-fun b!2781700 () Bool)

(declare-fun e!1754433 () tuple2!32340)

(assert (=> b!2781700 (= e!1754433 (tuple2!32341 Nil!32095 lt!993230))))

(declare-fun b!2781701 () Bool)

(declare-fun e!1754431 () tuple2!32340)

(declare-fun lt!993689 () tuple2!32340)

(assert (=> b!2781701 (= e!1754431 lt!993689)))

(declare-fun bm!182438 () Bool)

(declare-fun call!182450 () List!32195)

(assert (=> bm!182438 (= call!182450 (tail!4393 lt!993206))))

(declare-fun b!2781702 () Bool)

(assert (=> b!2781702 (= e!1754430 e!1754436)))

(declare-fun res!1161407 () Bool)

(assert (=> b!2781702 (=> res!1161407 e!1754436)))

(assert (=> b!2781702 (= res!1161407 (isEmpty!18105 (_1!19109 lt!993709)))))

(declare-fun b!2781703 () Bool)

(declare-fun c!452232 () Bool)

(assert (=> b!2781703 (= c!452232 call!182445)))

(declare-fun lt!993694 () Unit!46367)

(declare-fun lt!993704 () Unit!46367)

(assert (=> b!2781703 (= lt!993694 lt!993704)))

(assert (=> b!2781703 (= lt!993230 lt!993238)))

(declare-fun call!182447 () Unit!46367)

(assert (=> b!2781703 (= lt!993704 call!182447)))

(declare-fun lt!993703 () Unit!46367)

(declare-fun lt!993700 () Unit!46367)

(assert (=> b!2781703 (= lt!993703 lt!993700)))

(declare-fun call!182449 () Bool)

(assert (=> b!2781703 call!182449))

(declare-fun call!182444 () Unit!46367)

(assert (=> b!2781703 (= lt!993700 call!182444)))

(assert (=> b!2781703 (= e!1754434 e!1754433)))

(declare-fun b!2781704 () Bool)

(assert (=> b!2781704 (= e!1754433 (tuple2!32341 lt!993238 Nil!32095))))

(declare-fun bm!182439 () Bool)

(assert (=> bm!182439 (= call!182449 (isPrefix!2560 lt!993230 lt!993230))))

(declare-fun bm!182440 () Bool)

(assert (=> bm!182440 (= call!182444 (lemmaIsPrefixRefl!1685 lt!993230 lt!993230))))

(declare-fun b!2781705 () Bool)

(declare-fun Unit!46390 () Unit!46367)

(assert (=> b!2781705 (= e!1754432 Unit!46390)))

(declare-fun lt!993687 () Unit!46367)

(assert (=> b!2781705 (= lt!993687 call!182444)))

(assert (=> b!2781705 call!182449))

(declare-fun lt!993692 () Unit!46367)

(assert (=> b!2781705 (= lt!993692 lt!993687)))

(declare-fun lt!993688 () Unit!46367)

(assert (=> b!2781705 (= lt!993688 call!182447)))

(assert (=> b!2781705 (= lt!993230 lt!993238)))

(declare-fun lt!993702 () Unit!46367)

(assert (=> b!2781705 (= lt!993702 lt!993688)))

(assert (=> b!2781705 false))

(declare-fun bm!182441 () Bool)

(declare-fun call!182446 () C!16372)

(assert (=> bm!182441 (= call!182446 (head!6155 lt!993206))))

(declare-fun bm!182442 () Bool)

(declare-fun call!182448 () (InoxSet Context!4650))

(assert (=> bm!182442 (= call!182448 (derivationStepZipper!372 call!182356 call!182446))))

(declare-fun b!2781706 () Bool)

(assert (=> b!2781706 (= e!1754431 (tuple2!32341 lt!993238 lt!993206))))

(declare-fun bm!182443 () Bool)

(assert (=> bm!182443 (= call!182443 (findLongestMatchInnerZipper!30 call!182448 lt!993705 (+ 1 1) call!182450 lt!993230 lt!993243))))

(declare-fun b!2781707 () Bool)

(assert (=> b!2781707 (= e!1754437 e!1754431)))

(assert (=> b!2781707 (= lt!993689 call!182443)))

(declare-fun c!452228 () Bool)

(assert (=> b!2781707 (= c!452228 (isEmpty!18105 (_1!19109 lt!993689)))))

(declare-fun bm!182444 () Bool)

(assert (=> bm!182444 (= call!182445 (nullableZipper!640 call!182356))))

(declare-fun bm!182445 () Bool)

(assert (=> bm!182445 (= call!182447 (lemmaIsPrefixSameLengthThenSameList!467 lt!993230 lt!993238 lt!993230))))

(declare-fun b!2781708 () Bool)

(declare-fun Unit!46391 () Unit!46367)

(assert (=> b!2781708 (= e!1754432 Unit!46391)))

(assert (= (and d!810222 c!452227) b!2781697))

(assert (= (and d!810222 (not c!452227)) b!2781695))

(assert (= (and b!2781695 c!452231) b!2781703))

(assert (= (and b!2781695 (not c!452231)) b!2781698))

(assert (= (and b!2781703 c!452232) b!2781704))

(assert (= (and b!2781703 (not c!452232)) b!2781700))

(assert (= (and b!2781698 c!452230) b!2781705))

(assert (= (and b!2781698 (not c!452230)) b!2781708))

(assert (= (and b!2781698 c!452229) b!2781707))

(assert (= (and b!2781698 (not c!452229)) b!2781696))

(assert (= (and b!2781707 c!452228) b!2781706))

(assert (= (and b!2781707 (not c!452228)) b!2781701))

(assert (= (or b!2781707 b!2781696) bm!182438))

(assert (= (or b!2781707 b!2781696) bm!182441))

(assert (= (or b!2781707 b!2781696) bm!182442))

(assert (= (or b!2781707 b!2781696) bm!182443))

(assert (= (or b!2781703 b!2781698) bm!182444))

(assert (= (or b!2781703 b!2781705) bm!182440))

(assert (= (or b!2781703 b!2781705) bm!182445))

(assert (= (or b!2781703 b!2781705) bm!182439))

(assert (= (and d!810222 res!1161406) b!2781702))

(assert (= (and b!2781702 (not res!1161407)) b!2781699))

(declare-fun m!3213135 () Bool)

(assert (=> bm!182445 m!3213135))

(assert (=> bm!182440 m!3212505))

(declare-fun m!3213137 () Bool)

(assert (=> b!2781699 m!3213137))

(declare-fun m!3213139 () Bool)

(assert (=> b!2781699 m!3213139))

(declare-fun m!3213141 () Bool)

(assert (=> b!2781707 m!3213141))

(assert (=> bm!182439 m!3212495))

(declare-fun m!3213143 () Bool)

(assert (=> bm!182444 m!3213143))

(declare-fun m!3213145 () Bool)

(assert (=> bm!182438 m!3213145))

(assert (=> b!2781698 m!3213139))

(declare-fun m!3213147 () Bool)

(assert (=> b!2781698 m!3213147))

(declare-fun m!3213149 () Bool)

(assert (=> b!2781698 m!3213149))

(declare-fun m!3213151 () Bool)

(assert (=> b!2781698 m!3213151))

(assert (=> b!2781698 m!3213147))

(declare-fun m!3213153 () Bool)

(assert (=> b!2781698 m!3213153))

(declare-fun m!3213155 () Bool)

(assert (=> b!2781698 m!3213155))

(declare-fun m!3213157 () Bool)

(assert (=> b!2781698 m!3213157))

(assert (=> b!2781698 m!3212535))

(declare-fun m!3213159 () Bool)

(assert (=> b!2781698 m!3213159))

(declare-fun m!3213161 () Bool)

(assert (=> b!2781698 m!3213161))

(declare-fun m!3213163 () Bool)

(assert (=> b!2781698 m!3213163))

(assert (=> b!2781698 m!3213161))

(declare-fun m!3213165 () Bool)

(assert (=> b!2781698 m!3213165))

(assert (=> b!2781698 m!3213155))

(assert (=> b!2781698 m!3213145))

(declare-fun m!3213167 () Bool)

(assert (=> b!2781698 m!3213167))

(declare-fun m!3213169 () Bool)

(assert (=> bm!182443 m!3213169))

(declare-fun m!3213171 () Bool)

(assert (=> bm!182442 m!3213171))

(assert (=> d!810222 m!3212581))

(declare-fun m!3213173 () Bool)

(assert (=> d!810222 m!3213173))

(declare-fun m!3213175 () Bool)

(assert (=> d!810222 m!3213175))

(declare-fun m!3213177 () Bool)

(assert (=> d!810222 m!3213177))

(assert (=> d!810222 m!3213147))

(declare-fun m!3213179 () Bool)

(assert (=> d!810222 m!3213179))

(declare-fun m!3213181 () Bool)

(assert (=> d!810222 m!3213181))

(assert (=> d!810222 m!3212581))

(assert (=> bm!182441 m!3213153))

(declare-fun m!3213183 () Bool)

(assert (=> b!2781702 m!3213183))

(assert (=> bm!182349 d!810222))

(assert (=> bm!182343 d!810190))

(declare-fun d!810224 () Bool)

(assert (=> d!810224 (= (++!7937 (++!7937 Nil!32095 (Cons!32095 lt!993220 Nil!32095)) lt!993206) lt!993230)))

(declare-fun lt!993713 () Unit!46367)

(assert (=> d!810224 (= lt!993713 (choose!16309 Nil!32095 lt!993220 lt!993206 lt!993230))))

(assert (=> d!810224 (= (++!7937 Nil!32095 (Cons!32095 lt!993220 lt!993206)) lt!993230)))

(assert (=> d!810224 (= (lemmaMoveElementToOtherListKeepsConcatEq!876 Nil!32095 lt!993220 lt!993206 lt!993230) lt!993713)))

(declare-fun bs!510794 () Bool)

(assert (= bs!510794 d!810224))

(assert (=> bs!510794 m!3212585))

(assert (=> bs!510794 m!3212585))

(declare-fun m!3213185 () Bool)

(assert (=> bs!510794 m!3213185))

(declare-fun m!3213187 () Bool)

(assert (=> bs!510794 m!3213187))

(declare-fun m!3213189 () Bool)

(assert (=> bs!510794 m!3213189))

(assert (=> b!2781430 d!810224))

(assert (=> b!2781430 d!810084))

(assert (=> b!2781430 d!810110))

(assert (=> b!2781430 d!810086))

(declare-fun b!2781710 () Bool)

(declare-fun e!1754439 () List!32195)

(assert (=> b!2781710 (= e!1754439 (Cons!32095 (h!37515 lt!993238) (++!7937 (t!228335 lt!993238) lt!993206)))))

(declare-fun b!2781711 () Bool)

(declare-fun res!1161409 () Bool)

(declare-fun e!1754438 () Bool)

(assert (=> b!2781711 (=> (not res!1161409) (not e!1754438))))

(declare-fun lt!993714 () List!32195)

(assert (=> b!2781711 (= res!1161409 (= (size!24889 lt!993714) (+ (size!24889 lt!993238) (size!24889 lt!993206))))))

(declare-fun d!810226 () Bool)

(assert (=> d!810226 e!1754438))

(declare-fun res!1161408 () Bool)

(assert (=> d!810226 (=> (not res!1161408) (not e!1754438))))

(assert (=> d!810226 (= res!1161408 (= (content!4512 lt!993714) ((_ map or) (content!4512 lt!993238) (content!4512 lt!993206))))))

(assert (=> d!810226 (= lt!993714 e!1754439)))

(declare-fun c!452233 () Bool)

(assert (=> d!810226 (= c!452233 ((_ is Nil!32095) lt!993238))))

(assert (=> d!810226 (= (++!7937 lt!993238 lt!993206) lt!993714)))

(declare-fun b!2781709 () Bool)

(assert (=> b!2781709 (= e!1754439 lt!993206)))

(declare-fun b!2781712 () Bool)

(assert (=> b!2781712 (= e!1754438 (or (not (= lt!993206 Nil!32095)) (= lt!993714 lt!993238)))))

(assert (= (and d!810226 c!452233) b!2781709))

(assert (= (and d!810226 (not c!452233)) b!2781710))

(assert (= (and d!810226 res!1161408) b!2781711))

(assert (= (and b!2781711 res!1161409) b!2781712))

(declare-fun m!3213191 () Bool)

(assert (=> b!2781710 m!3213191))

(declare-fun m!3213193 () Bool)

(assert (=> b!2781711 m!3213193))

(assert (=> b!2781711 m!3213139))

(declare-fun m!3213195 () Bool)

(assert (=> b!2781711 m!3213195))

(declare-fun m!3213197 () Bool)

(assert (=> d!810226 m!3213197))

(declare-fun m!3213199 () Bool)

(assert (=> d!810226 m!3213199))

(declare-fun m!3213201 () Bool)

(assert (=> d!810226 m!3213201))

(assert (=> b!2781430 d!810226))

(assert (=> b!2781430 d!810094))

(assert (=> b!2781430 d!810100))

(declare-fun b!2781714 () Bool)

(declare-fun e!1754441 () List!32195)

(assert (=> b!2781714 (= e!1754441 (Cons!32095 (h!37515 Nil!32095) (++!7937 (t!228335 Nil!32095) (Cons!32095 lt!993220 Nil!32095))))))

(declare-fun b!2781715 () Bool)

(declare-fun res!1161411 () Bool)

(declare-fun e!1754440 () Bool)

(assert (=> b!2781715 (=> (not res!1161411) (not e!1754440))))

(declare-fun lt!993715 () List!32195)

(assert (=> b!2781715 (= res!1161411 (= (size!24889 lt!993715) (+ (size!24889 Nil!32095) (size!24889 (Cons!32095 lt!993220 Nil!32095)))))))

(declare-fun d!810228 () Bool)

(assert (=> d!810228 e!1754440))

(declare-fun res!1161410 () Bool)

(assert (=> d!810228 (=> (not res!1161410) (not e!1754440))))

(assert (=> d!810228 (= res!1161410 (= (content!4512 lt!993715) ((_ map or) (content!4512 Nil!32095) (content!4512 (Cons!32095 lt!993220 Nil!32095)))))))

(assert (=> d!810228 (= lt!993715 e!1754441)))

(declare-fun c!452234 () Bool)

(assert (=> d!810228 (= c!452234 ((_ is Nil!32095) Nil!32095))))

(assert (=> d!810228 (= (++!7937 Nil!32095 (Cons!32095 lt!993220 Nil!32095)) lt!993715)))

(declare-fun b!2781713 () Bool)

(assert (=> b!2781713 (= e!1754441 (Cons!32095 lt!993220 Nil!32095))))

(declare-fun b!2781716 () Bool)

(assert (=> b!2781716 (= e!1754440 (or (not (= (Cons!32095 lt!993220 Nil!32095) Nil!32095)) (= lt!993715 Nil!32095)))))

(assert (= (and d!810228 c!452234) b!2781713))

(assert (= (and d!810228 (not c!452234)) b!2781714))

(assert (= (and d!810228 res!1161410) b!2781715))

(assert (= (and b!2781715 res!1161411) b!2781716))

(declare-fun m!3213203 () Bool)

(assert (=> b!2781714 m!3213203))

(declare-fun m!3213205 () Bool)

(assert (=> b!2781715 m!3213205))

(assert (=> b!2781715 m!3212545))

(declare-fun m!3213207 () Bool)

(assert (=> b!2781715 m!3213207))

(declare-fun m!3213209 () Bool)

(assert (=> d!810228 m!3213209))

(assert (=> d!810228 m!3212693))

(declare-fun m!3213211 () Bool)

(assert (=> d!810228 m!3213211))

(assert (=> b!2781430 d!810228))

(assert (=> b!2781430 d!810118))

(assert (=> b!2781430 d!810102))

(declare-fun d!810230 () Bool)

(assert (=> d!810230 (= (head!6155 lt!993230) (h!37515 lt!993230))))

(assert (=> b!2781430 d!810230))

(assert (=> b!2781430 d!810108))

(declare-fun tp!880290 () Bool)

(declare-fun e!1754450 () Bool)

(declare-fun setRes!23263 () Bool)

(declare-fun tp!880292 () Bool)

(declare-fun b!2781725 () Bool)

(declare-fun e!1754448 () Bool)

(declare-fun tp_is_empty!14027 () Bool)

(assert (=> b!2781725 (= e!1754450 (and tp!880290 (inv!43588 (_2!19105 (_1!19106 (h!37514 mapDefault!17459)))) e!1754448 tp_is_empty!14027 setRes!23263 tp!880292))))

(declare-fun condSetEmpty!23263 () Bool)

(assert (=> b!2781725 (= condSetEmpty!23263 (= (_2!19106 (h!37514 mapDefault!17459)) ((as const (Array Context!4650 Bool)) false)))))

(assert (=> b!2781393 (= tp!880277 e!1754450)))

(declare-fun b!2781726 () Bool)

(declare-fun e!1754449 () Bool)

(declare-fun tp!880293 () Bool)

(assert (=> b!2781726 (= e!1754449 tp!880293)))

(declare-fun setIsEmpty!23263 () Bool)

(assert (=> setIsEmpty!23263 setRes!23263))

(declare-fun setElem!23263 () Context!4650)

(declare-fun setNonEmpty!23263 () Bool)

(declare-fun tp!880291 () Bool)

(assert (=> setNonEmpty!23263 (= setRes!23263 (and tp!880291 (inv!43588 setElem!23263) e!1754449))))

(declare-fun setRest!23263 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23263 (= (_2!19106 (h!37514 mapDefault!17459)) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23263 true) setRest!23263))))

(declare-fun b!2781727 () Bool)

(declare-fun tp!880289 () Bool)

(assert (=> b!2781727 (= e!1754448 tp!880289)))

(assert (= b!2781725 b!2781727))

(assert (= (and b!2781725 condSetEmpty!23263) setIsEmpty!23263))

(assert (= (and b!2781725 (not condSetEmpty!23263)) setNonEmpty!23263))

(assert (= setNonEmpty!23263 b!2781726))

(assert (= (and b!2781393 ((_ is Cons!32094) mapDefault!17459)) b!2781725))

(declare-fun m!3213213 () Bool)

(assert (=> b!2781725 m!3213213))

(declare-fun m!3213215 () Bool)

(assert (=> setNonEmpty!23263 m!3213215))

(declare-fun condSetEmpty!23266 () Bool)

(assert (=> setNonEmpty!23260 (= condSetEmpty!23266 (= setRest!23260 ((as const (Array Context!4650 Bool)) false)))))

(declare-fun setRes!23266 () Bool)

(assert (=> setNonEmpty!23260 (= tp!880278 setRes!23266)))

(declare-fun setIsEmpty!23266 () Bool)

(assert (=> setIsEmpty!23266 setRes!23266))

(declare-fun tp!880298 () Bool)

(declare-fun e!1754453 () Bool)

(declare-fun setNonEmpty!23266 () Bool)

(declare-fun setElem!23266 () Context!4650)

(assert (=> setNonEmpty!23266 (= setRes!23266 (and tp!880298 (inv!43588 setElem!23266) e!1754453))))

(declare-fun setRest!23266 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23266 (= setRest!23260 ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23266 true) setRest!23266))))

(declare-fun b!2781732 () Bool)

(declare-fun tp!880299 () Bool)

(assert (=> b!2781732 (= e!1754453 tp!880299)))

(assert (= (and setNonEmpty!23260 condSetEmpty!23266) setIsEmpty!23266))

(assert (= (and setNonEmpty!23260 (not condSetEmpty!23266)) setNonEmpty!23266))

(assert (= setNonEmpty!23266 b!2781732))

(declare-fun m!3213217 () Bool)

(assert (=> setNonEmpty!23266 m!3213217))

(declare-fun b!2781737 () Bool)

(declare-fun e!1754456 () Bool)

(declare-fun tp!880304 () Bool)

(declare-fun tp!880305 () Bool)

(assert (=> b!2781737 (= e!1754456 (and tp!880304 tp!880305))))

(assert (=> b!2781419 (= tp!880268 e!1754456)))

(assert (= (and b!2781419 ((_ is Cons!32092) (exprs!2825 setElem!23260))) b!2781737))

(declare-fun e!1754457 () Bool)

(declare-fun tp!880309 () Bool)

(declare-fun setRes!23267 () Bool)

(declare-fun tp!880307 () Bool)

(declare-fun b!2781738 () Bool)

(declare-fun e!1754459 () Bool)

(assert (=> b!2781738 (= e!1754459 (and tp!880307 (inv!43588 (_2!19105 (_1!19106 (h!37514 (zeroValue!4081 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939)))))))))) e!1754457 tp_is_empty!14027 setRes!23267 tp!880309))))

(declare-fun condSetEmpty!23267 () Bool)

(assert (=> b!2781738 (= condSetEmpty!23267 (= (_2!19106 (h!37514 (zeroValue!4081 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939)))))))) ((as const (Array Context!4650 Bool)) false)))))

(assert (=> b!2781434 (= tp!880276 e!1754459)))

(declare-fun b!2781739 () Bool)

(declare-fun e!1754458 () Bool)

(declare-fun tp!880310 () Bool)

(assert (=> b!2781739 (= e!1754458 tp!880310)))

(declare-fun setIsEmpty!23267 () Bool)

(assert (=> setIsEmpty!23267 setRes!23267))

(declare-fun tp!880308 () Bool)

(declare-fun setElem!23267 () Context!4650)

(declare-fun setNonEmpty!23267 () Bool)

(assert (=> setNonEmpty!23267 (= setRes!23267 (and tp!880308 (inv!43588 setElem!23267) e!1754458))))

(declare-fun setRest!23267 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23267 (= (_2!19106 (h!37514 (zeroValue!4081 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23267 true) setRest!23267))))

(declare-fun b!2781740 () Bool)

(declare-fun tp!880306 () Bool)

(assert (=> b!2781740 (= e!1754457 tp!880306)))

(assert (= b!2781738 b!2781740))

(assert (= (and b!2781738 condSetEmpty!23267) setIsEmpty!23267))

(assert (= (and b!2781738 (not condSetEmpty!23267)) setNonEmpty!23267))

(assert (= setNonEmpty!23267 b!2781739))

(assert (= (and b!2781434 ((_ is Cons!32094) (zeroValue!4081 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939)))))))) b!2781738))

(declare-fun m!3213219 () Bool)

(assert (=> b!2781738 m!3213219))

(declare-fun m!3213221 () Bool)

(assert (=> setNonEmpty!23267 m!3213221))

(declare-fun tp!880312 () Bool)

(declare-fun setRes!23268 () Bool)

(declare-fun b!2781741 () Bool)

(declare-fun e!1754462 () Bool)

(declare-fun e!1754460 () Bool)

(declare-fun tp!880314 () Bool)

(assert (=> b!2781741 (= e!1754462 (and tp!880312 (inv!43588 (_2!19105 (_1!19106 (h!37514 (minValue!4081 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939)))))))))) e!1754460 tp_is_empty!14027 setRes!23268 tp!880314))))

(declare-fun condSetEmpty!23268 () Bool)

(assert (=> b!2781741 (= condSetEmpty!23268 (= (_2!19106 (h!37514 (minValue!4081 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939)))))))) ((as const (Array Context!4650 Bool)) false)))))

(assert (=> b!2781434 (= tp!880265 e!1754462)))

(declare-fun b!2781742 () Bool)

(declare-fun e!1754461 () Bool)

(declare-fun tp!880315 () Bool)

(assert (=> b!2781742 (= e!1754461 tp!880315)))

(declare-fun setIsEmpty!23268 () Bool)

(assert (=> setIsEmpty!23268 setRes!23268))

(declare-fun tp!880313 () Bool)

(declare-fun setNonEmpty!23268 () Bool)

(declare-fun setElem!23268 () Context!4650)

(assert (=> setNonEmpty!23268 (= setRes!23268 (and tp!880313 (inv!43588 setElem!23268) e!1754461))))

(declare-fun setRest!23268 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23268 (= (_2!19106 (h!37514 (minValue!4081 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23268 true) setRest!23268))))

(declare-fun b!2781743 () Bool)

(declare-fun tp!880311 () Bool)

(assert (=> b!2781743 (= e!1754460 tp!880311)))

(assert (= b!2781741 b!2781743))

(assert (= (and b!2781741 condSetEmpty!23268) setIsEmpty!23268))

(assert (= (and b!2781741 (not condSetEmpty!23268)) setNonEmpty!23268))

(assert (= setNonEmpty!23268 b!2781742))

(assert (= (and b!2781434 ((_ is Cons!32094) (minValue!4081 (v!33704 (underlying!7847 (v!33705 (underlying!7848 (cache!3871 cacheDown!939)))))))) b!2781741))

(declare-fun m!3213223 () Bool)

(assert (=> b!2781741 m!3213223))

(declare-fun m!3213225 () Bool)

(assert (=> setNonEmpty!23268 m!3213225))

(declare-fun b!2781752 () Bool)

(declare-fun e!1754467 () Bool)

(declare-fun tp!880322 () Bool)

(declare-fun tp!880324 () Bool)

(assert (=> b!2781752 (= e!1754467 (and (inv!43587 (left!24427 (c!452130 input!5495))) tp!880322 (inv!43587 (right!24757 (c!452130 input!5495))) tp!880324))))

(declare-fun b!2781754 () Bool)

(declare-fun e!1754468 () Bool)

(declare-fun tp!880323 () Bool)

(assert (=> b!2781754 (= e!1754468 tp!880323)))

(declare-fun b!2781753 () Bool)

(declare-fun inv!43594 (IArray!19973) Bool)

(assert (=> b!2781753 (= e!1754467 (and (inv!43594 (xs!13095 (c!452130 input!5495))) e!1754468))))

(assert (=> b!2781411 (= tp!880262 (and (inv!43587 (c!452130 input!5495)) e!1754467))))

(assert (= (and b!2781411 ((_ is Node!9984) (c!452130 input!5495))) b!2781752))

(assert (= b!2781753 b!2781754))

(assert (= (and b!2781411 ((_ is Leaf!15206) (c!452130 input!5495))) b!2781753))

(declare-fun m!3213227 () Bool)

(assert (=> b!2781752 m!3213227))

(declare-fun m!3213229 () Bool)

(assert (=> b!2781752 m!3213229))

(declare-fun m!3213231 () Bool)

(assert (=> b!2781753 m!3213231))

(assert (=> b!2781411 m!3212593))

(declare-fun e!1754476 () Bool)

(declare-fun b!2781763 () Bool)

(declare-fun tp!880334 () Bool)

(declare-fun setRes!23271 () Bool)

(declare-fun e!1754477 () Bool)

(assert (=> b!2781763 (= e!1754477 (and (inv!43588 (_1!19103 (_1!19104 (h!37513 (zeroValue!4080 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820)))))))))) e!1754476 tp_is_empty!14027 setRes!23271 tp!880334))))

(declare-fun condSetEmpty!23271 () Bool)

(assert (=> b!2781763 (= condSetEmpty!23271 (= (_2!19104 (h!37513 (zeroValue!4080 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820)))))))) ((as const (Array Context!4650 Bool)) false)))))

(declare-fun b!2781764 () Bool)

(declare-fun e!1754475 () Bool)

(declare-fun tp!880333 () Bool)

(assert (=> b!2781764 (= e!1754475 tp!880333)))

(declare-fun b!2781765 () Bool)

(declare-fun tp!880336 () Bool)

(assert (=> b!2781765 (= e!1754476 tp!880336)))

(declare-fun setIsEmpty!23271 () Bool)

(assert (=> setIsEmpty!23271 setRes!23271))

(declare-fun setElem!23271 () Context!4650)

(declare-fun setNonEmpty!23271 () Bool)

(declare-fun tp!880335 () Bool)

(assert (=> setNonEmpty!23271 (= setRes!23271 (and tp!880335 (inv!43588 setElem!23271) e!1754475))))

(declare-fun setRest!23271 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23271 (= (_2!19104 (h!37513 (zeroValue!4080 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23271 true) setRest!23271))))

(assert (=> b!2781432 (= tp!880269 e!1754477)))

(assert (= b!2781763 b!2781765))

(assert (= (and b!2781763 condSetEmpty!23271) setIsEmpty!23271))

(assert (= (and b!2781763 (not condSetEmpty!23271)) setNonEmpty!23271))

(assert (= setNonEmpty!23271 b!2781764))

(assert (= (and b!2781432 ((_ is Cons!32093) (zeroValue!4080 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820)))))))) b!2781763))

(declare-fun m!3213233 () Bool)

(assert (=> b!2781763 m!3213233))

(declare-fun m!3213235 () Bool)

(assert (=> setNonEmpty!23271 m!3213235))

(declare-fun b!2781766 () Bool)

(declare-fun setRes!23272 () Bool)

(declare-fun e!1754479 () Bool)

(declare-fun tp!880338 () Bool)

(declare-fun e!1754480 () Bool)

(assert (=> b!2781766 (= e!1754480 (and (inv!43588 (_1!19103 (_1!19104 (h!37513 (minValue!4080 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820)))))))))) e!1754479 tp_is_empty!14027 setRes!23272 tp!880338))))

(declare-fun condSetEmpty!23272 () Bool)

(assert (=> b!2781766 (= condSetEmpty!23272 (= (_2!19104 (h!37513 (minValue!4080 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820)))))))) ((as const (Array Context!4650 Bool)) false)))))

(declare-fun b!2781767 () Bool)

(declare-fun e!1754478 () Bool)

(declare-fun tp!880337 () Bool)

(assert (=> b!2781767 (= e!1754478 tp!880337)))

(declare-fun b!2781768 () Bool)

(declare-fun tp!880340 () Bool)

(assert (=> b!2781768 (= e!1754479 tp!880340)))

(declare-fun setIsEmpty!23272 () Bool)

(assert (=> setIsEmpty!23272 setRes!23272))

(declare-fun tp!880339 () Bool)

(declare-fun setNonEmpty!23272 () Bool)

(declare-fun setElem!23272 () Context!4650)

(assert (=> setNonEmpty!23272 (= setRes!23272 (and tp!880339 (inv!43588 setElem!23272) e!1754478))))

(declare-fun setRest!23272 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23272 (= (_2!19104 (h!37513 (minValue!4080 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23272 true) setRest!23272))))

(assert (=> b!2781432 (= tp!880270 e!1754480)))

(assert (= b!2781766 b!2781768))

(assert (= (and b!2781766 condSetEmpty!23272) setIsEmpty!23272))

(assert (= (and b!2781766 (not condSetEmpty!23272)) setNonEmpty!23272))

(assert (= setNonEmpty!23272 b!2781767))

(assert (= (and b!2781432 ((_ is Cons!32093) (minValue!4080 (v!33702 (underlying!7845 (v!33703 (underlying!7846 (cache!3870 cacheUp!820)))))))) b!2781766))

(declare-fun m!3213237 () Bool)

(assert (=> b!2781766 m!3213237))

(declare-fun m!3213239 () Bool)

(assert (=> setNonEmpty!23272 m!3213239))

(declare-fun tp!880342 () Bool)

(declare-fun setRes!23273 () Bool)

(declare-fun e!1754482 () Bool)

(declare-fun b!2781769 () Bool)

(declare-fun e!1754483 () Bool)

(assert (=> b!2781769 (= e!1754483 (and (inv!43588 (_1!19103 (_1!19104 (h!37513 mapDefault!17460)))) e!1754482 tp_is_empty!14027 setRes!23273 tp!880342))))

(declare-fun condSetEmpty!23273 () Bool)

(assert (=> b!2781769 (= condSetEmpty!23273 (= (_2!19104 (h!37513 mapDefault!17460)) ((as const (Array Context!4650 Bool)) false)))))

(declare-fun b!2781770 () Bool)

(declare-fun e!1754481 () Bool)

(declare-fun tp!880341 () Bool)

(assert (=> b!2781770 (= e!1754481 tp!880341)))

(declare-fun b!2781771 () Bool)

(declare-fun tp!880344 () Bool)

(assert (=> b!2781771 (= e!1754482 tp!880344)))

(declare-fun setIsEmpty!23273 () Bool)

(assert (=> setIsEmpty!23273 setRes!23273))

(declare-fun setElem!23273 () Context!4650)

(declare-fun setNonEmpty!23273 () Bool)

(declare-fun tp!880343 () Bool)

(assert (=> setNonEmpty!23273 (= setRes!23273 (and tp!880343 (inv!43588 setElem!23273) e!1754481))))

(declare-fun setRest!23273 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23273 (= (_2!19104 (h!37513 mapDefault!17460)) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23273 true) setRest!23273))))

(assert (=> b!2781395 (= tp!880272 e!1754483)))

(assert (= b!2781769 b!2781771))

(assert (= (and b!2781769 condSetEmpty!23273) setIsEmpty!23273))

(assert (= (and b!2781769 (not condSetEmpty!23273)) setNonEmpty!23273))

(assert (= setNonEmpty!23273 b!2781770))

(assert (= (and b!2781395 ((_ is Cons!32093) mapDefault!17460)) b!2781769))

(declare-fun m!3213241 () Bool)

(assert (=> b!2781769 m!3213241))

(declare-fun m!3213243 () Bool)

(assert (=> setNonEmpty!23273 m!3213243))

(declare-fun e!1754500 () Bool)

(declare-fun tp!880369 () Bool)

(declare-fun e!1754501 () Bool)

(declare-fun b!2781786 () Bool)

(declare-fun setRes!23278 () Bool)

(declare-fun mapDefault!17463 () List!32194)

(declare-fun tp!880374 () Bool)

(assert (=> b!2781786 (= e!1754501 (and tp!880374 (inv!43588 (_2!19105 (_1!19106 (h!37514 mapDefault!17463)))) e!1754500 tp_is_empty!14027 setRes!23278 tp!880369))))

(declare-fun condSetEmpty!23279 () Bool)

(assert (=> b!2781786 (= condSetEmpty!23279 (= (_2!19106 (h!37514 mapDefault!17463)) ((as const (Array Context!4650 Bool)) false)))))

(declare-fun b!2781787 () Bool)

(declare-fun e!1754499 () Bool)

(declare-fun tp!880376 () Bool)

(assert (=> b!2781787 (= e!1754499 tp!880376)))

(declare-fun setNonEmpty!23278 () Bool)

(declare-fun setElem!23278 () Context!4650)

(declare-fun e!1754498 () Bool)

(declare-fun tp!880373 () Bool)

(assert (=> setNonEmpty!23278 (= setRes!23278 (and tp!880373 (inv!43588 setElem!23278) e!1754498))))

(declare-fun setRest!23279 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23278 (= (_2!19106 (h!37514 mapDefault!17463)) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23278 true) setRest!23279))))

(declare-fun tp!880368 () Bool)

(declare-fun setElem!23279 () Context!4650)

(declare-fun setRes!23279 () Bool)

(declare-fun setNonEmpty!23279 () Bool)

(assert (=> setNonEmpty!23279 (= setRes!23279 (and tp!880368 (inv!43588 setElem!23279) e!1754499))))

(declare-fun mapValue!17463 () List!32194)

(declare-fun setRest!23278 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23279 (= (_2!19106 (h!37514 mapValue!17463)) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23279 true) setRest!23278))))

(declare-fun b!2781788 () Bool)

(declare-fun e!1754496 () Bool)

(declare-fun tp!880377 () Bool)

(assert (=> b!2781788 (= e!1754496 tp!880377)))

(declare-fun b!2781789 () Bool)

(declare-fun tp!880375 () Bool)

(assert (=> b!2781789 (= e!1754500 tp!880375)))

(declare-fun b!2781790 () Bool)

(declare-fun tp!880372 () Bool)

(assert (=> b!2781790 (= e!1754498 tp!880372)))

(declare-fun condMapEmpty!17463 () Bool)

(assert (=> mapNonEmpty!17459 (= condMapEmpty!17463 (= mapRest!17460 ((as const (Array (_ BitVec 32) List!32194)) mapDefault!17463)))))

(declare-fun mapRes!17463 () Bool)

(assert (=> mapNonEmpty!17459 (= tp!880274 (and e!1754501 mapRes!17463))))

(declare-fun setIsEmpty!23278 () Bool)

(assert (=> setIsEmpty!23278 setRes!23278))

(declare-fun setIsEmpty!23279 () Bool)

(assert (=> setIsEmpty!23279 setRes!23279))

(declare-fun tp!880371 () Bool)

(declare-fun e!1754497 () Bool)

(declare-fun tp!880370 () Bool)

(declare-fun b!2781791 () Bool)

(assert (=> b!2781791 (= e!1754497 (and tp!880370 (inv!43588 (_2!19105 (_1!19106 (h!37514 mapValue!17463)))) e!1754496 tp_is_empty!14027 setRes!23279 tp!880371))))

(declare-fun condSetEmpty!23278 () Bool)

(assert (=> b!2781791 (= condSetEmpty!23278 (= (_2!19106 (h!37514 mapValue!17463)) ((as const (Array Context!4650 Bool)) false)))))

(declare-fun mapIsEmpty!17463 () Bool)

(assert (=> mapIsEmpty!17463 mapRes!17463))

(declare-fun mapNonEmpty!17463 () Bool)

(declare-fun tp!880367 () Bool)

(assert (=> mapNonEmpty!17463 (= mapRes!17463 (and tp!880367 e!1754497))))

(declare-fun mapRest!17463 () (Array (_ BitVec 32) List!32194))

(declare-fun mapKey!17463 () (_ BitVec 32))

(assert (=> mapNonEmpty!17463 (= mapRest!17460 (store mapRest!17463 mapKey!17463 mapValue!17463))))

(assert (= (and mapNonEmpty!17459 condMapEmpty!17463) mapIsEmpty!17463))

(assert (= (and mapNonEmpty!17459 (not condMapEmpty!17463)) mapNonEmpty!17463))

(assert (= b!2781791 b!2781788))

(assert (= (and b!2781791 condSetEmpty!23278) setIsEmpty!23279))

(assert (= (and b!2781791 (not condSetEmpty!23278)) setNonEmpty!23279))

(assert (= setNonEmpty!23279 b!2781787))

(assert (= (and mapNonEmpty!17463 ((_ is Cons!32094) mapValue!17463)) b!2781791))

(assert (= b!2781786 b!2781789))

(assert (= (and b!2781786 condSetEmpty!23279) setIsEmpty!23278))

(assert (= (and b!2781786 (not condSetEmpty!23279)) setNonEmpty!23278))

(assert (= setNonEmpty!23278 b!2781790))

(assert (= (and mapNonEmpty!17459 ((_ is Cons!32094) mapDefault!17463)) b!2781786))

(declare-fun m!3213245 () Bool)

(assert (=> b!2781786 m!3213245))

(declare-fun m!3213247 () Bool)

(assert (=> mapNonEmpty!17463 m!3213247))

(declare-fun m!3213249 () Bool)

(assert (=> setNonEmpty!23278 m!3213249))

(declare-fun m!3213251 () Bool)

(assert (=> b!2781791 m!3213251))

(declare-fun m!3213253 () Bool)

(assert (=> setNonEmpty!23279 m!3213253))

(declare-fun e!1754504 () Bool)

(declare-fun tp!880381 () Bool)

(declare-fun b!2781792 () Bool)

(declare-fun setRes!23280 () Bool)

(declare-fun tp!880379 () Bool)

(declare-fun e!1754502 () Bool)

(assert (=> b!2781792 (= e!1754504 (and tp!880379 (inv!43588 (_2!19105 (_1!19106 (h!37514 mapValue!17460)))) e!1754502 tp_is_empty!14027 setRes!23280 tp!880381))))

(declare-fun condSetEmpty!23280 () Bool)

(assert (=> b!2781792 (= condSetEmpty!23280 (= (_2!19106 (h!37514 mapValue!17460)) ((as const (Array Context!4650 Bool)) false)))))

(assert (=> mapNonEmpty!17459 (= tp!880266 e!1754504)))

(declare-fun b!2781793 () Bool)

(declare-fun e!1754503 () Bool)

(declare-fun tp!880382 () Bool)

(assert (=> b!2781793 (= e!1754503 tp!880382)))

(declare-fun setIsEmpty!23280 () Bool)

(assert (=> setIsEmpty!23280 setRes!23280))

(declare-fun setNonEmpty!23280 () Bool)

(declare-fun tp!880380 () Bool)

(declare-fun setElem!23280 () Context!4650)

(assert (=> setNonEmpty!23280 (= setRes!23280 (and tp!880380 (inv!43588 setElem!23280) e!1754503))))

(declare-fun setRest!23280 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23280 (= (_2!19106 (h!37514 mapValue!17460)) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23280 true) setRest!23280))))

(declare-fun b!2781794 () Bool)

(declare-fun tp!880378 () Bool)

(assert (=> b!2781794 (= e!1754502 tp!880378)))

(assert (= b!2781792 b!2781794))

(assert (= (and b!2781792 condSetEmpty!23280) setIsEmpty!23280))

(assert (= (and b!2781792 (not condSetEmpty!23280)) setNonEmpty!23280))

(assert (= setNonEmpty!23280 b!2781793))

(assert (= (and mapNonEmpty!17459 ((_ is Cons!32094) mapValue!17460)) b!2781792))

(declare-fun m!3213255 () Bool)

(assert (=> b!2781792 m!3213255))

(declare-fun m!3213257 () Bool)

(assert (=> setNonEmpty!23280 m!3213257))

(declare-fun condMapEmpty!17466 () Bool)

(declare-fun mapDefault!17466 () List!32193)

(assert (=> mapNonEmpty!17460 (= condMapEmpty!17466 (= mapRest!17459 ((as const (Array (_ BitVec 32) List!32193)) mapDefault!17466)))))

(declare-fun e!1754521 () Bool)

(declare-fun mapRes!17466 () Bool)

(assert (=> mapNonEmpty!17460 (= tp!880267 (and e!1754521 mapRes!17466))))

(declare-fun setIsEmpty!23285 () Bool)

(declare-fun setRes!23285 () Bool)

(assert (=> setIsEmpty!23285 setRes!23285))

(declare-fun setNonEmpty!23285 () Bool)

(declare-fun e!1754520 () Bool)

(declare-fun setElem!23286 () Context!4650)

(declare-fun tp!880401 () Bool)

(declare-fun setRes!23286 () Bool)

(assert (=> setNonEmpty!23285 (= setRes!23286 (and tp!880401 (inv!43588 setElem!23286) e!1754520))))

(declare-fun setRest!23286 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23285 (= (_2!19104 (h!37513 mapDefault!17466)) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23286 true) setRest!23286))))

(declare-fun tp!880402 () Bool)

(declare-fun setElem!23285 () Context!4650)

(declare-fun setNonEmpty!23286 () Bool)

(declare-fun e!1754522 () Bool)

(assert (=> setNonEmpty!23286 (= setRes!23285 (and tp!880402 (inv!43588 setElem!23285) e!1754522))))

(declare-fun mapValue!17466 () List!32193)

(declare-fun setRest!23285 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23286 (= (_2!19104 (h!37513 mapValue!17466)) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23285 true) setRest!23285))))

(declare-fun mapNonEmpty!17466 () Bool)

(declare-fun tp!880407 () Bool)

(declare-fun e!1754519 () Bool)

(assert (=> mapNonEmpty!17466 (= mapRes!17466 (and tp!880407 e!1754519))))

(declare-fun mapKey!17466 () (_ BitVec 32))

(declare-fun mapRest!17466 () (Array (_ BitVec 32) List!32193))

(assert (=> mapNonEmpty!17466 (= mapRest!17459 (store mapRest!17466 mapKey!17466 mapValue!17466))))

(declare-fun tp!880404 () Bool)

(declare-fun b!2781809 () Bool)

(declare-fun e!1754517 () Bool)

(assert (=> b!2781809 (= e!1754521 (and (inv!43588 (_1!19103 (_1!19104 (h!37513 mapDefault!17466)))) e!1754517 tp_is_empty!14027 setRes!23286 tp!880404))))

(declare-fun condSetEmpty!23285 () Bool)

(assert (=> b!2781809 (= condSetEmpty!23285 (= (_2!19104 (h!37513 mapDefault!17466)) ((as const (Array Context!4650 Bool)) false)))))

(declare-fun b!2781810 () Bool)

(declare-fun tp!880406 () Bool)

(assert (=> b!2781810 (= e!1754517 tp!880406)))

(declare-fun b!2781811 () Bool)

(declare-fun e!1754518 () Bool)

(declare-fun tp!880403 () Bool)

(assert (=> b!2781811 (= e!1754518 tp!880403)))

(declare-fun b!2781812 () Bool)

(declare-fun tp!880408 () Bool)

(assert (=> b!2781812 (= e!1754519 (and (inv!43588 (_1!19103 (_1!19104 (h!37513 mapValue!17466)))) e!1754518 tp_is_empty!14027 setRes!23285 tp!880408))))

(declare-fun condSetEmpty!23286 () Bool)

(assert (=> b!2781812 (= condSetEmpty!23286 (= (_2!19104 (h!37513 mapValue!17466)) ((as const (Array Context!4650 Bool)) false)))))

(declare-fun b!2781813 () Bool)

(declare-fun tp!880409 () Bool)

(assert (=> b!2781813 (= e!1754520 tp!880409)))

(declare-fun b!2781814 () Bool)

(declare-fun tp!880405 () Bool)

(assert (=> b!2781814 (= e!1754522 tp!880405)))

(declare-fun mapIsEmpty!17466 () Bool)

(assert (=> mapIsEmpty!17466 mapRes!17466))

(declare-fun setIsEmpty!23286 () Bool)

(assert (=> setIsEmpty!23286 setRes!23286))

(assert (= (and mapNonEmpty!17460 condMapEmpty!17466) mapIsEmpty!17466))

(assert (= (and mapNonEmpty!17460 (not condMapEmpty!17466)) mapNonEmpty!17466))

(assert (= b!2781812 b!2781811))

(assert (= (and b!2781812 condSetEmpty!23286) setIsEmpty!23285))

(assert (= (and b!2781812 (not condSetEmpty!23286)) setNonEmpty!23286))

(assert (= setNonEmpty!23286 b!2781814))

(assert (= (and mapNonEmpty!17466 ((_ is Cons!32093) mapValue!17466)) b!2781812))

(assert (= b!2781809 b!2781810))

(assert (= (and b!2781809 condSetEmpty!23285) setIsEmpty!23286))

(assert (= (and b!2781809 (not condSetEmpty!23285)) setNonEmpty!23285))

(assert (= setNonEmpty!23285 b!2781813))

(assert (= (and mapNonEmpty!17460 ((_ is Cons!32093) mapDefault!17466)) b!2781809))

(declare-fun m!3213259 () Bool)

(assert (=> mapNonEmpty!17466 m!3213259))

(declare-fun m!3213261 () Bool)

(assert (=> setNonEmpty!23286 m!3213261))

(declare-fun m!3213263 () Bool)

(assert (=> b!2781812 m!3213263))

(declare-fun m!3213265 () Bool)

(assert (=> b!2781809 m!3213265))

(declare-fun m!3213267 () Bool)

(assert (=> setNonEmpty!23285 m!3213267))

(declare-fun e!1754524 () Bool)

(declare-fun b!2781815 () Bool)

(declare-fun setRes!23287 () Bool)

(declare-fun e!1754525 () Bool)

(declare-fun tp!880411 () Bool)

(assert (=> b!2781815 (= e!1754525 (and (inv!43588 (_1!19103 (_1!19104 (h!37513 mapValue!17459)))) e!1754524 tp_is_empty!14027 setRes!23287 tp!880411))))

(declare-fun condSetEmpty!23287 () Bool)

(assert (=> b!2781815 (= condSetEmpty!23287 (= (_2!19104 (h!37513 mapValue!17459)) ((as const (Array Context!4650 Bool)) false)))))

(declare-fun b!2781816 () Bool)

(declare-fun e!1754523 () Bool)

(declare-fun tp!880410 () Bool)

(assert (=> b!2781816 (= e!1754523 tp!880410)))

(declare-fun b!2781817 () Bool)

(declare-fun tp!880413 () Bool)

(assert (=> b!2781817 (= e!1754524 tp!880413)))

(declare-fun setIsEmpty!23287 () Bool)

(assert (=> setIsEmpty!23287 setRes!23287))

(declare-fun setNonEmpty!23287 () Bool)

(declare-fun tp!880412 () Bool)

(declare-fun setElem!23287 () Context!4650)

(assert (=> setNonEmpty!23287 (= setRes!23287 (and tp!880412 (inv!43588 setElem!23287) e!1754523))))

(declare-fun setRest!23287 () (InoxSet Context!4650))

(assert (=> setNonEmpty!23287 (= (_2!19104 (h!37513 mapValue!17459)) ((_ map or) (store ((as const (Array Context!4650 Bool)) false) setElem!23287 true) setRest!23287))))

(assert (=> mapNonEmpty!17460 (= tp!880263 e!1754525)))

(assert (= b!2781815 b!2781817))

(assert (= (and b!2781815 condSetEmpty!23287) setIsEmpty!23287))

(assert (= (and b!2781815 (not condSetEmpty!23287)) setNonEmpty!23287))

(assert (= setNonEmpty!23287 b!2781816))

(assert (= (and mapNonEmpty!17460 ((_ is Cons!32093) mapValue!17459)) b!2781815))

(declare-fun m!3213269 () Bool)

(assert (=> b!2781815 m!3213269))

(declare-fun m!3213271 () Bool)

(assert (=> setNonEmpty!23287 m!3213271))

(check-sat (not setNonEmpty!23271) (not b!2781742) (not d!810106) (not b!2781663) (not b!2781813) (not d!810118) (not d!810080) (not d!810088) (not bm!182418) (not b!2781577) (not b!2781583) (not b!2781498) (not b!2781514) (not b!2781639) (not setNonEmpty!23278) (not b!2781714) (not b!2781629) (not b!2781503) (not d!810228) (not b_next!79191) (not b!2781526) (not b!2781456) (not b_next!79195) (not bm!182444) (not b!2781515) (not bm!182379) (not b!2781732) (not b!2781816) (not bm!182385) (not d!810108) (not b!2781753) (not b!2781640) (not bm!182436) (not b!2781792) (not bm!182357) (not bm!182425) (not b!2781411) (not bm!182381) (not b!2781637) (not bm!182441) (not bm!182439) (not b!2781651) (not d!810196) (not mapNonEmpty!17463) (not d!810148) (not d!810158) (not b!2781646) (not bm!182437) (not b!2781499) (not b!2781739) (not b!2781726) (not d!810178) (not d!810188) (not d!810100) (not b!2781763) (not bm!182386) (not d!810140) (not b!2781770) (not setNonEmpty!23280) (not b!2781478) (not b_next!79189) (not bm!182442) (not bm!182445) (not b!2781477) (not b!2781556) (not d!810170) (not b!2781793) (not bm!182387) (not b!2781815) (not b!2781676) (not d!810206) (not setNonEmpty!23272) (not b!2781650) (not bm!182430) (not b!2781589) (not b!2781689) (not bm!182422) (not b!2781508) (not b!2781737) (not bm!182380) (not b!2781645) (not bm!182417) (not d!810120) (not d!810122) (not b!2781725) (not bm!182438) (not b!2781789) (not bm!182420) (not b!2781524) (not b!2781698) (not d!810216) (not d!810096) (not d!810224) (not d!810154) (not b!2781522) (not b!2781575) (not b!2781457) (not bm!182423) (not bm!182426) (not bm!182419) (not b!2781811) (not bm!182443) b_and!203227 (not b!2781710) (not b!2781658) (not d!810166) (not b!2781467) (not d!810152) (not b!2781765) (not bm!182424) (not bm!182429) (not b!2781787) (not b!2781489) (not b!2781681) (not b!2781647) (not b!2781754) (not b!2781809) (not b!2781685) (not b!2781506) (not bm!182411) (not d!810134) (not d!810226) (not bm!182433) (not d!810116) (not b!2781766) (not b!2781707) (not b!2781628) (not d!810190) b_and!203223 (not d!810082) b_and!203225 (not b!2781810) (not bm!182378) b_and!203229 (not d!810130) (not setNonEmpty!23273) (not b!2781727) (not d!810174) (not d!810144) (not setNonEmpty!23263) (not d!810182) (not b!2781741) (not bm!182434) (not b!2781743) (not b!2781509) (not b!2781596) (not bm!182431) (not b!2781771) (not b!2781812) (not b!2781648) (not d!810156) (not b!2781740) (not setNonEmpty!23285) (not b!2781568) (not bm!182382) (not setNonEmpty!23266) (not bm!182407) (not bm!182409) (not d!810150) (not setNonEmpty!23267) (not mapNonEmpty!17466) (not b!2781711) (not d!810092) (not b!2781738) (not bm!182416) (not bm!182428) (not b!2781790) (not b!2781565) (not d!810168) (not b!2781525) (not d!810126) (not b!2781521) (not b!2781686) (not d!810192) (not b!2781715) (not d!810204) (not d!810090) (not b!2781654) (not b!2781752) (not b!2781512) (not setNonEmpty!23279) (not b!2781688) (not b_next!79193) (not setNonEmpty!23286) (not d!810212) (not b!2781693) (not d!810180) (not d!810112) (not b!2781500) (not d!810132) (not b!2781672) (not d!810210) (not b!2781794) (not bm!182406) (not b!2781702) (not d!810194) (not d!810162) (not d!810114) (not setNonEmpty!23268) (not b!2781788) (not b!2781767) (not bm!182432) (not b!2781595) (not d!810184) (not bm!182427) (not d!810208) (not d!810160) (not b!2781490) (not bm!182440) (not d!810214) (not bm!182404) (not bm!182408) (not bm!182383) (not d!810098) (not d!810176) (not d!810164) (not b!2781791) (not b!2781692) (not bm!182421) (not b!2781479) (not setNonEmpty!23287) tp_is_empty!14027 (not b!2781632) (not b!2781817) (not d!810186) (not bm!182435) (not bm!182405) (not b!2781669) (not b!2781786) (not b!2781699) (not b!2781814) (not b!2781582) (not b!2781769) (not b!2781670) (not b!2781561) (not b!2781768) (not bm!182410) (not d!810172) (not b!2781552) (not bm!182384) (not d!810128) (not b!2781580) (not b!2781764) (not d!810222) (not b!2781584))
(check-sat (not b_next!79189) b_and!203227 b_and!203223 (not b_next!79193) (not b_next!79191) (not b_next!79195) b_and!203225 b_and!203229)
