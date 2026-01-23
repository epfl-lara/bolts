; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269736 () Bool)

(assert start!269736)

(declare-fun b!2789952 () Bool)

(declare-fun b_free!78949 () Bool)

(declare-fun b_next!79653 () Bool)

(assert (=> b!2789952 (= b_free!78949 (not b_next!79653))))

(declare-fun tp!885575 () Bool)

(declare-fun b_and!203687 () Bool)

(assert (=> b!2789952 (= tp!885575 b_and!203687)))

(declare-fun b!2789984 () Bool)

(declare-fun b_free!78951 () Bool)

(declare-fun b_next!79655 () Bool)

(assert (=> b!2789984 (= b_free!78951 (not b_next!79655))))

(declare-fun tp!885573 () Bool)

(declare-fun b_and!203689 () Bool)

(assert (=> b!2789984 (= tp!885573 b_and!203689)))

(declare-fun b!2789964 () Bool)

(declare-fun b_free!78953 () Bool)

(declare-fun b_next!79657 () Bool)

(assert (=> b!2789964 (= b_free!78953 (not b_next!79657))))

(declare-fun tp!885577 () Bool)

(declare-fun b_and!203691 () Bool)

(assert (=> b!2789964 (= tp!885577 b_and!203691)))

(declare-fun b!2789974 () Bool)

(declare-fun b_free!78955 () Bool)

(declare-fun b_next!79659 () Bool)

(assert (=> b!2789974 (= b_free!78955 (not b_next!79659))))

(declare-fun tp!885574 () Bool)

(declare-fun b_and!203693 () Bool)

(assert (=> b!2789974 (= tp!885574 b_and!203693)))

(declare-fun bm!182593 () Bool)

(declare-datatypes ((C!16488 0))(
  ( (C!16489 (val!10178 Int)) )
))
(declare-datatypes ((List!32419 0))(
  ( (Nil!32319) (Cons!32319 (h!37739 C!16488) (t!228561 List!32419)) )
))
(declare-datatypes ((IArray!20067 0))(
  ( (IArray!20068 (innerList!10091 List!32419)) )
))
(declare-datatypes ((Conc!10031 0))(
  ( (Node!10031 (left!24505 Conc!10031) (right!24835 Conc!10031) (csize!20292 Int) (cheight!10242 Int)) (Leaf!15282 (xs!13142 IArray!20067) (csize!20293 Int)) (Empty!10031) )
))
(declare-datatypes ((BalanceConc!19676 0))(
  ( (BalanceConc!19677 (c!452939 Conc!10031)) )
))
(declare-fun totalInput!758 () BalanceConc!19676)

(declare-datatypes ((Hashable!3842 0))(
  ( (HashableExt!3841 (__x!21428 Int)) )
))
(declare-datatypes ((Regex!8165 0))(
  ( (ElementMatch!8165 (c!452940 C!16488)) (Concat!13253 (regOne!16842 Regex!8165) (regTwo!16842 Regex!8165)) (EmptyExpr!8165) (Star!8165 (reg!8494 Regex!8165)) (EmptyLang!8165) (Union!8165 (regOne!16843 Regex!8165) (regTwo!16843 Regex!8165)) )
))
(declare-datatypes ((List!32420 0))(
  ( (Nil!32320) (Cons!32320 (h!37740 Regex!8165) (t!228562 List!32420)) )
))
(declare-datatypes ((Context!4766 0))(
  ( (Context!4767 (exprs!2883 List!32420)) )
))
(declare-datatypes ((tuple2!32748 0))(
  ( (tuple2!32749 (_1!19374 Context!4766) (_2!19374 C!16488)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32750 0))(
  ( (tuple2!32751 (_1!19375 tuple2!32748) (_2!19375 (InoxSet Context!4766))) )
))
(declare-datatypes ((List!32421 0))(
  ( (Nil!32321) (Cons!32321 (h!37741 tuple2!32750) (t!228563 List!32421)) )
))
(declare-datatypes ((array!13969 0))(
  ( (array!13970 (arr!6224 (Array (_ BitVec 32) List!32421)) (size!25149 (_ BitVec 32))) )
))
(declare-datatypes ((array!13971 0))(
  ( (array!13972 (arr!6225 (Array (_ BitVec 32) (_ BitVec 64))) (size!25150 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7852 0))(
  ( (LongMapFixedSize!7853 (defaultEntry!4311 Int) (mask!9745 (_ BitVec 32)) (extraKeys!4175 (_ BitVec 32)) (zeroValue!4185 List!32421) (minValue!4185 List!32421) (_size!7895 (_ BitVec 32)) (_keys!4226 array!13971) (_values!4207 array!13969) (_vacant!3987 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15513 0))(
  ( (Cell!15514 (v!33925 LongMapFixedSize!7852)) )
))
(declare-datatypes ((MutLongMap!3926 0))(
  ( (LongMap!3926 (underlying!8055 Cell!15513)) (MutLongMapExt!3925 (__x!21429 Int)) )
))
(declare-datatypes ((Cell!15515 0))(
  ( (Cell!15516 (v!33926 MutLongMap!3926)) )
))
(declare-datatypes ((MutableMap!3832 0))(
  ( (MutableMapExt!3831 (__x!21430 Int)) (HashMap!3832 (underlying!8056 Cell!15515) (hashF!5874 Hashable!3842) (_size!7896 (_ BitVec 32)) (defaultValue!4003 Int)) )
))
(declare-datatypes ((CacheUp!2538 0))(
  ( (CacheUp!2539 (cache!3975 MutableMap!3832)) )
))
(declare-datatypes ((tuple3!5060 0))(
  ( (tuple3!5061 (_1!19376 Regex!8165) (_2!19376 Context!4766) (_3!3000 C!16488)) )
))
(declare-datatypes ((tuple2!32752 0))(
  ( (tuple2!32753 (_1!19377 tuple3!5060) (_2!19377 (InoxSet Context!4766))) )
))
(declare-datatypes ((List!32422 0))(
  ( (Nil!32322) (Cons!32322 (h!37742 tuple2!32752) (t!228564 List!32422)) )
))
(declare-datatypes ((array!13973 0))(
  ( (array!13974 (arr!6226 (Array (_ BitVec 32) List!32422)) (size!25151 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7854 0))(
  ( (LongMapFixedSize!7855 (defaultEntry!4312 Int) (mask!9746 (_ BitVec 32)) (extraKeys!4176 (_ BitVec 32)) (zeroValue!4186 List!32422) (minValue!4186 List!32422) (_size!7897 (_ BitVec 32)) (_keys!4227 array!13971) (_values!4208 array!13973) (_vacant!3988 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15517 0))(
  ( (Cell!15518 (v!33927 LongMapFixedSize!7854)) )
))
(declare-datatypes ((MutLongMap!3927 0))(
  ( (LongMap!3927 (underlying!8057 Cell!15517)) (MutLongMapExt!3926 (__x!21431 Int)) )
))
(declare-datatypes ((Cell!15519 0))(
  ( (Cell!15520 (v!33928 MutLongMap!3927)) )
))
(declare-datatypes ((Hashable!3843 0))(
  ( (HashableExt!3842 (__x!21432 Int)) )
))
(declare-datatypes ((MutableMap!3833 0))(
  ( (MutableMapExt!3832 (__x!21433 Int)) (HashMap!3833 (underlying!8058 Cell!15519) (hashF!5875 Hashable!3843) (_size!7898 (_ BitVec 32)) (defaultValue!4004 Int)) )
))
(declare-datatypes ((CacheDown!2658 0))(
  ( (CacheDown!2659 (cache!3976 MutableMap!3833)) )
))
(declare-datatypes ((tuple3!5062 0))(
  ( (tuple3!5063 (_1!19378 (InoxSet Context!4766)) (_2!19378 CacheUp!2538) (_3!3001 CacheDown!2658)) )
))
(declare-fun lt!997387 () tuple3!5062)

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!997402 () List!32419)

(declare-fun c!452937 () Bool)

(declare-fun testedPSize!143 () Int)

(declare-fun lt!997385 () tuple3!5062)

(declare-fun lt!997406 () List!32419)

(declare-datatypes ((tuple3!5064 0))(
  ( (tuple3!5065 (_1!19379 Int) (_2!19379 CacheUp!2538) (_3!3002 CacheDown!2658)) )
))
(declare-fun call!182605 () tuple3!5064)

(declare-fun findLongestMatchInnerZipperFastMem!49 (CacheUp!2538 CacheDown!2658 (InoxSet Context!4766) List!32419 Int List!32419 BalanceConc!19676 Int) tuple3!5064)

(assert (=> bm!182593 (= call!182605 (findLongestMatchInnerZipperFastMem!49 (ite c!452937 (_2!19378 lt!997385) (_2!19378 lt!997387)) (ite c!452937 (_3!3001 lt!997385) (_3!3001 lt!997387)) (ite c!452937 (_1!19378 lt!997385) (_1!19378 lt!997387)) lt!997406 (+ 1 testedPSize!143) lt!997402 totalInput!758 totalInputSize!205))))

(declare-fun bm!182594 () Bool)

(declare-fun call!182601 () Bool)

(declare-fun lt!997389 () List!32419)

(declare-fun isPrefix!2599 (List!32419 List!32419) Bool)

(assert (=> bm!182594 (= call!182601 (isPrefix!2599 lt!997389 lt!997389))))

(declare-fun b!2789949 () Bool)

(declare-fun e!1761336 () Bool)

(declare-fun e!1761320 () Bool)

(assert (=> b!2789949 (= e!1761336 e!1761320)))

(declare-fun call!182602 () Int)

(declare-fun bm!182595 () Bool)

(declare-fun findLongestMatchInnerZipperFast!56 ((InoxSet Context!4766) List!32419 Int List!32419 BalanceConc!19676 Int) Int)

(assert (=> bm!182595 (= call!182602 (findLongestMatchInnerZipperFast!56 (ite c!452937 (_1!19378 lt!997385) (_1!19378 lt!997387)) lt!997406 (+ 1 testedPSize!143) lt!997402 totalInput!758 totalInputSize!205))))

(declare-fun mapIsEmpty!17897 () Bool)

(declare-fun mapRes!17897 () Bool)

(assert (=> mapIsEmpty!17897 mapRes!17897))

(declare-fun b!2789950 () Bool)

(declare-fun e!1761334 () Bool)

(declare-fun e!1761319 () Bool)

(assert (=> b!2789950 (= e!1761334 e!1761319)))

(declare-fun b!2789951 () Bool)

(declare-fun e!1761333 () Bool)

(declare-fun e!1761324 () Bool)

(assert (=> b!2789951 (= e!1761333 e!1761324)))

(declare-fun e!1761348 () Bool)

(declare-fun e!1761329 () Bool)

(assert (=> b!2789952 (= e!1761348 (and e!1761329 tp!885575))))

(declare-fun b!2789953 () Bool)

(declare-fun e!1761343 () Bool)

(declare-fun e!1761330 () Bool)

(assert (=> b!2789953 (= e!1761343 e!1761330)))

(declare-fun res!1164005 () Bool)

(assert (=> b!2789953 (=> (not res!1164005) (not e!1761330))))

(declare-fun lt!997399 () Int)

(assert (=> b!2789953 (= res!1164005 (= testedPSize!143 lt!997399))))

(declare-fun testedP!183 () List!32419)

(declare-fun size!25152 (List!32419) Int)

(assert (=> b!2789953 (= lt!997399 (size!25152 testedP!183))))

(declare-fun b!2789954 () Bool)

(declare-fun res!1164010 () Bool)

(declare-fun call!182598 () Bool)

(assert (=> b!2789954 (= res!1164010 call!182598)))

(declare-fun e!1761346 () Bool)

(assert (=> b!2789954 (=> (not res!1164010) (not e!1761346))))

(declare-fun setIsEmpty!23803 () Bool)

(declare-fun setRes!23803 () Bool)

(assert (=> setIsEmpty!23803 setRes!23803))

(declare-fun b!2789955 () Bool)

(declare-fun e!1761341 () Bool)

(declare-fun lt!997400 () MutLongMap!3927)

(get-info :version)

(assert (=> b!2789955 (= e!1761341 (and e!1761333 ((_ is LongMap!3927) lt!997400)))))

(declare-fun cacheDown!1009 () CacheDown!2658)

(assert (=> b!2789955 (= lt!997400 (v!33928 (underlying!8058 (cache!3976 cacheDown!1009))))))

(declare-fun b!2789956 () Bool)

(declare-fun e!1761332 () Bool)

(declare-fun e!1761327 () Bool)

(assert (=> b!2789956 (= e!1761332 e!1761327)))

(declare-fun res!1164014 () Bool)

(assert (=> b!2789956 (=> res!1164014 e!1761327)))

(declare-datatypes ((tuple3!5066 0))(
  ( (tuple3!5067 (_1!19380 Int) (_2!19380 CacheDown!2658) (_3!3003 CacheUp!2538)) )
))
(declare-fun lt!997378 () tuple3!5066)

(declare-fun valid!3067 (CacheUp!2538) Bool)

(assert (=> b!2789956 (= res!1164014 (not (valid!3067 (_3!3003 lt!997378))))))

(declare-fun e!1761345 () tuple3!5066)

(assert (=> b!2789956 (= lt!997378 e!1761345)))

(declare-fun c!452935 () Bool)

(declare-fun z!3684 () (InoxSet Context!4766))

(declare-fun lostCauseZipper!476 ((InoxSet Context!4766)) Bool)

(assert (=> b!2789956 (= c!452935 (lostCauseZipper!476 z!3684))))

(declare-fun testedSuffix!143 () List!32419)

(declare-fun lt!997386 () List!32419)

(assert (=> b!2789956 (and (= testedSuffix!143 lt!997386) (= lt!997386 testedSuffix!143))))

(declare-datatypes ((Unit!46536 0))(
  ( (Unit!46537) )
))
(declare-fun lt!997383 () Unit!46536)

(declare-fun lemmaSamePrefixThenSameSuffix!1177 (List!32419 List!32419 List!32419 List!32419 List!32419) Unit!46536)

(assert (=> b!2789956 (= lt!997383 (lemmaSamePrefixThenSameSuffix!1177 testedP!183 testedSuffix!143 testedP!183 lt!997386 lt!997389))))

(declare-fun getSuffix!1276 (List!32419 List!32419) List!32419)

(assert (=> b!2789956 (= lt!997386 (getSuffix!1276 lt!997389 testedP!183))))

(declare-fun b!2789957 () Bool)

(declare-fun e!1761331 () Bool)

(declare-fun tp!885568 () Bool)

(declare-fun mapRes!17898 () Bool)

(assert (=> b!2789957 (= e!1761331 (and tp!885568 mapRes!17898))))

(declare-fun condMapEmpty!17897 () Bool)

(declare-fun cacheUp!890 () CacheUp!2538)

(declare-fun mapDefault!17898 () List!32421)

(assert (=> b!2789957 (= condMapEmpty!17897 (= (arr!6224 (_values!4207 (v!33925 (underlying!8055 (v!33926 (underlying!8056 (cache!3975 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32421)) mapDefault!17898)))))

(declare-fun b!2789958 () Bool)

(declare-fun e!1761344 () Bool)

(declare-fun tp_is_empty!14143 () Bool)

(declare-fun tp!885572 () Bool)

(assert (=> b!2789958 (= e!1761344 (and tp_is_empty!14143 tp!885572))))

(declare-fun b!2789959 () Bool)

(declare-fun e!1761325 () Bool)

(declare-fun tp!885565 () Bool)

(assert (=> b!2789959 (= e!1761325 (and tp_is_empty!14143 tp!885565))))

(declare-fun b!2789960 () Bool)

(declare-fun e!1761350 () Int)

(assert (=> b!2789960 (= e!1761350 0)))

(declare-fun b!2789961 () Bool)

(declare-fun lt!997377 () tuple3!5064)

(assert (=> b!2789961 (= e!1761346 (= (_1!19379 lt!997377) call!182602))))

(declare-fun b!2789962 () Bool)

(assert (=> b!2789962 (= e!1761350 testedPSize!143)))

(declare-fun lt!997395 () tuple3!5064)

(declare-fun bm!182596 () Bool)

(declare-fun valid!3068 (CacheDown!2658) Bool)

(assert (=> bm!182596 (= call!182598 (valid!3068 (ite c!452937 (_3!3002 lt!997395) (_3!3002 lt!997377))))))

(declare-fun bm!182597 () Bool)

(declare-fun call!182603 () Bool)

(declare-fun nullableZipper!651 ((InoxSet Context!4766)) Bool)

(assert (=> bm!182597 (= call!182603 (nullableZipper!651 z!3684))))

(declare-fun b!2789963 () Bool)

(declare-fun e!1761321 () Bool)

(assert (=> b!2789963 (= e!1761321 (not e!1761332))))

(declare-fun res!1164013 () Bool)

(assert (=> b!2789963 (=> res!1164013 e!1761332)))

(assert (=> b!2789963 (= res!1164013 (not (isPrefix!2599 testedP!183 lt!997389)))))

(declare-fun lt!997379 () List!32419)

(assert (=> b!2789963 (isPrefix!2599 testedP!183 lt!997379)))

(declare-fun lt!997388 () Unit!46536)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1708 (List!32419 List!32419) Unit!46536)

(assert (=> b!2789963 (= lt!997388 (lemmaConcatTwoListThenFirstIsPrefix!1708 testedP!183 testedSuffix!143))))

(declare-fun e!1761328 () Bool)

(declare-fun tp!885576 () Bool)

(declare-fun tp!885564 () Bool)

(declare-fun array_inv!4457 (array!13971) Bool)

(declare-fun array_inv!4458 (array!13969) Bool)

(assert (=> b!2789964 (= e!1761328 (and tp!885577 tp!885564 tp!885576 (array_inv!4457 (_keys!4226 (v!33925 (underlying!8055 (v!33926 (underlying!8056 (cache!3975 cacheUp!890))))))) (array_inv!4458 (_values!4207 (v!33925 (underlying!8055 (v!33926 (underlying!8056 (cache!3975 cacheUp!890))))))) e!1761331))))

(declare-fun setNonEmpty!23803 () Bool)

(declare-fun tp!885563 () Bool)

(declare-fun setElem!23803 () Context!4766)

(declare-fun e!1761347 () Bool)

(declare-fun inv!43914 (Context!4766) Bool)

(assert (=> setNonEmpty!23803 (= setRes!23803 (and tp!885563 (inv!43914 setElem!23803) e!1761347))))

(declare-fun setRest!23803 () (InoxSet Context!4766))

(assert (=> setNonEmpty!23803 (= z!3684 ((_ map or) (store ((as const (Array Context!4766 Bool)) false) setElem!23803 true) setRest!23803))))

(declare-fun b!2789965 () Bool)

(declare-fun tp!885566 () Bool)

(assert (=> b!2789965 (= e!1761347 tp!885566)))

(declare-fun bm!182598 () Bool)

(declare-fun call!182599 () Unit!46536)

(declare-fun lemmaIsPrefixSameLengthThenSameList!483 (List!32419 List!32419 List!32419) Unit!46536)

(assert (=> bm!182598 (= call!182599 (lemmaIsPrefixSameLengthThenSameList!483 lt!997389 testedP!183 lt!997389))))

(declare-fun b!2789966 () Bool)

(declare-fun res!1164011 () Bool)

(assert (=> b!2789966 (=> (not res!1164011) (not e!1761321))))

(assert (=> b!2789966 (= res!1164011 (valid!3068 cacheDown!1009))))

(declare-fun b!2789967 () Bool)

(declare-fun res!1164008 () Bool)

(assert (=> b!2789967 (= res!1164008 call!182598)))

(declare-fun e!1761342 () Bool)

(assert (=> b!2789967 (=> (not res!1164008) (not e!1761342))))

(declare-fun b!2789968 () Bool)

(assert (=> b!2789968 (= e!1761327 true)))

(declare-fun lt!997393 () Bool)

(assert (=> b!2789968 (= lt!997393 (valid!3068 (_2!19380 lt!997378)))))

(declare-fun b!2789969 () Bool)

(assert (=> b!2789969 (= e!1761345 (tuple3!5067 0 cacheDown!1009 cacheUp!890))))

(declare-fun res!1164015 () Bool)

(assert (=> start!269736 (=> (not res!1164015) (not e!1761343))))

(assert (=> start!269736 (= res!1164015 (= lt!997379 lt!997389))))

(declare-fun list!12160 (BalanceConc!19676) List!32419)

(assert (=> start!269736 (= lt!997389 (list!12160 totalInput!758))))

(declare-fun ++!7980 (List!32419 List!32419) List!32419)

(assert (=> start!269736 (= lt!997379 (++!7980 testedP!183 testedSuffix!143))))

(assert (=> start!269736 e!1761343))

(declare-fun e!1761339 () Bool)

(declare-fun inv!43915 (BalanceConc!19676) Bool)

(assert (=> start!269736 (and (inv!43915 totalInput!758) e!1761339)))

(declare-fun condSetEmpty!23803 () Bool)

(assert (=> start!269736 (= condSetEmpty!23803 (= z!3684 ((as const (Array Context!4766 Bool)) false)))))

(assert (=> start!269736 setRes!23803))

(assert (=> start!269736 true))

(assert (=> start!269736 e!1761325))

(assert (=> start!269736 e!1761344))

(declare-fun inv!43916 (CacheDown!2658) Bool)

(assert (=> start!269736 (and (inv!43916 cacheDown!1009) e!1761336)))

(declare-fun e!1761335 () Bool)

(declare-fun inv!43917 (CacheUp!2538) Bool)

(assert (=> start!269736 (and (inv!43917 cacheUp!890) e!1761335)))

(declare-fun bm!182599 () Bool)

(declare-fun call!182604 () Unit!46536)

(declare-fun lemmaIsPrefixRefl!1703 (List!32419 List!32419) Unit!46536)

(assert (=> bm!182599 (= call!182604 (lemmaIsPrefixRefl!1703 lt!997389 lt!997389))))

(declare-fun mapNonEmpty!17897 () Bool)

(declare-fun tp!885580 () Bool)

(declare-fun tp!885578 () Bool)

(assert (=> mapNonEmpty!17897 (= mapRes!17897 (and tp!885580 tp!885578))))

(declare-fun mapRest!17897 () (Array (_ BitVec 32) List!32422))

(declare-fun mapValue!17898 () List!32422)

(declare-fun mapKey!17897 () (_ BitVec 32))

(assert (=> mapNonEmpty!17897 (= (arr!6226 (_values!4208 (v!33927 (underlying!8057 (v!33928 (underlying!8058 (cache!3976 cacheDown!1009))))))) (store mapRest!17897 mapKey!17897 mapValue!17898))))

(declare-fun b!2789970 () Bool)

(assert (=> b!2789970 (= e!1761330 e!1761321)))

(declare-fun res!1164009 () Bool)

(assert (=> b!2789970 (=> (not res!1164009) (not e!1761321))))

(declare-fun lt!997394 () Int)

(assert (=> b!2789970 (= res!1164009 (= totalInputSize!205 lt!997394))))

(declare-fun size!25153 (BalanceConc!19676) Int)

(assert (=> b!2789970 (= lt!997394 (size!25153 totalInput!758))))

(declare-fun b!2789971 () Bool)

(declare-fun res!1164007 () Bool)

(assert (=> b!2789971 (=> (not res!1164007) (not e!1761321))))

(assert (=> b!2789971 (= res!1164007 (valid!3067 cacheUp!890))))

(declare-fun b!2789972 () Bool)

(assert (=> b!2789972 (= e!1761335 e!1761348)))

(declare-fun b!2789973 () Bool)

(declare-fun e!1761326 () tuple3!5066)

(assert (=> b!2789973 (= e!1761326 (tuple3!5067 (_1!19379 lt!997377) (_3!3002 lt!997377) (_2!19379 lt!997377)))))

(declare-fun call!182606 () tuple3!5062)

(assert (=> b!2789973 (= lt!997387 call!182606)))

(assert (=> b!2789973 (= lt!997377 call!182605)))

(declare-fun res!1164012 () Bool)

(declare-fun call!182600 () Bool)

(assert (=> b!2789973 (= res!1164012 call!182600)))

(assert (=> b!2789973 (=> (not res!1164012) (not e!1761346))))

(assert (=> b!2789973 e!1761346))

(declare-fun tp!885579 () Bool)

(declare-fun tp!885569 () Bool)

(declare-fun e!1761337 () Bool)

(declare-fun e!1761322 () Bool)

(declare-fun array_inv!4459 (array!13973) Bool)

(assert (=> b!2789974 (= e!1761322 (and tp!885574 tp!885579 tp!885569 (array_inv!4457 (_keys!4227 (v!33927 (underlying!8057 (v!33928 (underlying!8058 (cache!3976 cacheDown!1009))))))) (array_inv!4459 (_values!4208 (v!33927 (underlying!8057 (v!33928 (underlying!8058 (cache!3976 cacheDown!1009))))))) e!1761337))))

(declare-fun b!2789975 () Bool)

(assert (=> b!2789975 (= e!1761326 (tuple3!5067 (ite (= (_1!19379 lt!997395) 0) testedPSize!143 (_1!19379 lt!997395)) (_3!3002 lt!997395) (_2!19379 lt!997395)))))

(assert (=> b!2789975 (= lt!997385 call!182606)))

(assert (=> b!2789975 (= lt!997395 call!182605)))

(declare-fun res!1164006 () Bool)

(assert (=> b!2789975 (= res!1164006 call!182600)))

(assert (=> b!2789975 (=> (not res!1164006) (not e!1761342))))

(assert (=> b!2789975 e!1761342))

(declare-fun b!2789976 () Bool)

(declare-fun e!1761323 () Unit!46536)

(declare-fun Unit!46538 () Unit!46536)

(assert (=> b!2789976 (= e!1761323 Unit!46538)))

(declare-fun b!2789977 () Bool)

(declare-fun c!452938 () Bool)

(assert (=> b!2789977 (= c!452938 call!182603)))

(assert (=> b!2789977 (= lt!997389 testedP!183)))

(declare-fun lt!997384 () Unit!46536)

(assert (=> b!2789977 (= lt!997384 call!182599)))

(assert (=> b!2789977 call!182601))

(declare-fun lt!997381 () Unit!46536)

(assert (=> b!2789977 (= lt!997381 call!182604)))

(declare-fun e!1761340 () tuple3!5066)

(assert (=> b!2789977 (= e!1761340 (tuple3!5067 e!1761350 cacheDown!1009 cacheUp!890))))

(declare-fun b!2789978 () Bool)

(assert (=> b!2789978 (= e!1761345 e!1761340)))

(declare-fun c!452934 () Bool)

(assert (=> b!2789978 (= c!452934 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2789979 () Bool)

(declare-fun lt!997398 () MutLongMap!3926)

(assert (=> b!2789979 (= e!1761329 (and e!1761334 ((_ is LongMap!3926) lt!997398)))))

(assert (=> b!2789979 (= lt!997398 (v!33926 (underlying!8056 (cache!3975 cacheUp!890))))))

(declare-fun b!2789980 () Bool)

(declare-fun Unit!46539 () Unit!46536)

(assert (=> b!2789980 (= e!1761323 Unit!46539)))

(declare-fun lt!997403 () Unit!46536)

(assert (=> b!2789980 (= lt!997403 call!182604)))

(assert (=> b!2789980 call!182601))

(declare-fun lt!997397 () Unit!46536)

(assert (=> b!2789980 (= lt!997397 call!182599)))

(assert (=> b!2789980 false))

(declare-fun b!2789981 () Bool)

(assert (=> b!2789981 (= e!1761324 e!1761322)))

(declare-fun b!2789982 () Bool)

(assert (=> b!2789982 (= c!452937 call!182603)))

(assert (=> b!2789982 (= (++!7980 lt!997406 lt!997402) lt!997389)))

(declare-fun lt!997392 () C!16488)

(assert (=> b!2789982 (= lt!997406 (++!7980 testedP!183 (Cons!32319 lt!997392 Nil!32319)))))

(declare-fun lt!997380 () Unit!46536)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!887 (List!32419 C!16488 List!32419 List!32419) Unit!46536)

(assert (=> b!2789982 (= lt!997380 (lemmaMoveElementToOtherListKeepsConcatEq!887 testedP!183 lt!997392 lt!997402 lt!997389))))

(declare-fun tail!4413 (List!32419) List!32419)

(assert (=> b!2789982 (= lt!997402 (tail!4413 testedSuffix!143))))

(declare-fun apply!7568 (BalanceConc!19676 Int) C!16488)

(assert (=> b!2789982 (= lt!997392 (apply!7568 totalInput!758 testedPSize!143))))

(declare-fun head!6181 (List!32419) C!16488)

(assert (=> b!2789982 (isPrefix!2599 (++!7980 testedP!183 (Cons!32319 (head!6181 lt!997386) Nil!32319)) lt!997389)))

(declare-fun lt!997401 () Unit!46536)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!478 (List!32419 List!32419) Unit!46536)

(assert (=> b!2789982 (= lt!997401 (lemmaAddHeadSuffixToPrefixStillPrefix!478 testedP!183 lt!997389))))

(declare-fun lt!997382 () Unit!46536)

(assert (=> b!2789982 (= lt!997382 e!1761323)))

(declare-fun c!452936 () Bool)

(assert (=> b!2789982 (= c!452936 (= lt!997399 lt!997394))))

(assert (=> b!2789982 (<= lt!997399 (size!25152 lt!997389))))

(declare-fun lt!997407 () Unit!46536)

(declare-fun lemmaIsPrefixThenSmallerEqSize!283 (List!32419 List!32419) Unit!46536)

(assert (=> b!2789982 (= lt!997407 (lemmaIsPrefixThenSmallerEqSize!283 testedP!183 lt!997389))))

(declare-fun drop!1733 (List!32419 Int) List!32419)

(declare-fun apply!7569 (List!32419 Int) C!16488)

(assert (=> b!2789982 (= (head!6181 (drop!1733 lt!997389 testedPSize!143)) (apply!7569 lt!997389 testedPSize!143))))

(declare-fun lt!997405 () Unit!46536)

(declare-fun lemmaDropApply!939 (List!32419 Int) Unit!46536)

(assert (=> b!2789982 (= lt!997405 (lemmaDropApply!939 lt!997389 testedPSize!143))))

(declare-fun lt!997404 () List!32419)

(declare-fun lt!997396 () List!32419)

(assert (=> b!2789982 (and (= lt!997396 testedP!183) (= lt!997404 testedSuffix!143))))

(declare-fun lt!997391 () Unit!46536)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!366 (List!32419 List!32419 List!32419 List!32419) Unit!46536)

(assert (=> b!2789982 (= lt!997391 (lemmaConcatSameAndSameSizesThenSameLists!366 lt!997396 lt!997404 testedP!183 testedSuffix!143))))

(declare-datatypes ((tuple2!32754 0))(
  ( (tuple2!32755 (_1!19381 BalanceConc!19676) (_2!19381 BalanceConc!19676)) )
))
(declare-fun lt!997390 () tuple2!32754)

(assert (=> b!2789982 (= lt!997404 (list!12160 (_2!19381 lt!997390)))))

(assert (=> b!2789982 (= lt!997396 (list!12160 (_1!19381 lt!997390)))))

(declare-fun splitAt!160 (BalanceConc!19676 Int) tuple2!32754)

(assert (=> b!2789982 (= lt!997390 (splitAt!160 totalInput!758 testedPSize!143))))

(assert (=> b!2789982 (= e!1761340 e!1761326)))

(declare-fun bm!182600 () Bool)

(declare-fun derivationStepZipperMem!108 ((InoxSet Context!4766) C!16488 CacheUp!2538 CacheDown!2658) tuple3!5062)

(assert (=> bm!182600 (= call!182606 (derivationStepZipperMem!108 z!3684 lt!997392 cacheUp!890 cacheDown!1009))))

(declare-fun b!2789983 () Bool)

(declare-fun tp!885581 () Bool)

(declare-fun inv!43918 (Conc!10031) Bool)

(assert (=> b!2789983 (= e!1761339 (and (inv!43918 (c!452939 totalInput!758)) tp!885581))))

(declare-fun bm!182601 () Bool)

(assert (=> bm!182601 (= call!182600 (valid!3067 (ite c!452937 (_2!19379 lt!997395) (_2!19379 lt!997377))))))

(assert (=> b!2789984 (= e!1761320 (and e!1761341 tp!885573))))

(declare-fun mapNonEmpty!17898 () Bool)

(declare-fun tp!885570 () Bool)

(declare-fun tp!885567 () Bool)

(assert (=> mapNonEmpty!17898 (= mapRes!17898 (and tp!885570 tp!885567))))

(declare-fun mapKey!17898 () (_ BitVec 32))

(declare-fun mapValue!17897 () List!32421)

(declare-fun mapRest!17898 () (Array (_ BitVec 32) List!32421))

(assert (=> mapNonEmpty!17898 (= (arr!6224 (_values!4207 (v!33925 (underlying!8055 (v!33926 (underlying!8056 (cache!3975 cacheUp!890))))))) (store mapRest!17898 mapKey!17898 mapValue!17897))))

(declare-fun b!2789985 () Bool)

(assert (=> b!2789985 (= e!1761342 (= (_1!19379 lt!997395) call!182602))))

(declare-fun mapIsEmpty!17898 () Bool)

(assert (=> mapIsEmpty!17898 mapRes!17898))

(declare-fun b!2789986 () Bool)

(assert (=> b!2789986 (= e!1761319 e!1761328)))

(declare-fun b!2789987 () Bool)

(declare-fun tp!885571 () Bool)

(assert (=> b!2789987 (= e!1761337 (and tp!885571 mapRes!17897))))

(declare-fun condMapEmpty!17898 () Bool)

(declare-fun mapDefault!17897 () List!32422)

(assert (=> b!2789987 (= condMapEmpty!17898 (= (arr!6226 (_values!4208 (v!33927 (underlying!8057 (v!33928 (underlying!8058 (cache!3976 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32422)) mapDefault!17897)))))

(assert (= (and start!269736 res!1164015) b!2789953))

(assert (= (and b!2789953 res!1164005) b!2789970))

(assert (= (and b!2789970 res!1164009) b!2789971))

(assert (= (and b!2789971 res!1164007) b!2789966))

(assert (= (and b!2789966 res!1164011) b!2789963))

(assert (= (and b!2789963 (not res!1164013)) b!2789956))

(assert (= (and b!2789956 c!452935) b!2789969))

(assert (= (and b!2789956 (not c!452935)) b!2789978))

(assert (= (and b!2789978 c!452934) b!2789977))

(assert (= (and b!2789978 (not c!452934)) b!2789982))

(assert (= (and b!2789977 c!452938) b!2789962))

(assert (= (and b!2789977 (not c!452938)) b!2789960))

(assert (= (and b!2789982 c!452936) b!2789980))

(assert (= (and b!2789982 (not c!452936)) b!2789976))

(assert (= (and b!2789982 c!452937) b!2789975))

(assert (= (and b!2789982 (not c!452937)) b!2789973))

(assert (= (and b!2789975 res!1164006) b!2789967))

(assert (= (and b!2789967 res!1164008) b!2789985))

(assert (= (and b!2789973 res!1164012) b!2789954))

(assert (= (and b!2789954 res!1164010) b!2789961))

(assert (= (or b!2789985 b!2789961) bm!182595))

(assert (= (or b!2789975 b!2789973) bm!182593))

(assert (= (or b!2789967 b!2789954) bm!182596))

(assert (= (or b!2789975 b!2789973) bm!182601))

(assert (= (or b!2789975 b!2789973) bm!182600))

(assert (= (or b!2789977 b!2789980) bm!182594))

(assert (= (or b!2789977 b!2789982) bm!182597))

(assert (= (or b!2789977 b!2789980) bm!182599))

(assert (= (or b!2789977 b!2789980) bm!182598))

(assert (= (and b!2789956 (not res!1164014)) b!2789968))

(assert (= start!269736 b!2789983))

(assert (= (and start!269736 condSetEmpty!23803) setIsEmpty!23803))

(assert (= (and start!269736 (not condSetEmpty!23803)) setNonEmpty!23803))

(assert (= setNonEmpty!23803 b!2789965))

(assert (= (and start!269736 ((_ is Cons!32319) testedP!183)) b!2789959))

(assert (= (and start!269736 ((_ is Cons!32319) testedSuffix!143)) b!2789958))

(assert (= (and b!2789987 condMapEmpty!17898) mapIsEmpty!17897))

(assert (= (and b!2789987 (not condMapEmpty!17898)) mapNonEmpty!17897))

(assert (= b!2789974 b!2789987))

(assert (= b!2789981 b!2789974))

(assert (= b!2789951 b!2789981))

(assert (= (and b!2789955 ((_ is LongMap!3927) (v!33928 (underlying!8058 (cache!3976 cacheDown!1009))))) b!2789951))

(assert (= b!2789984 b!2789955))

(assert (= (and b!2789949 ((_ is HashMap!3833) (cache!3976 cacheDown!1009))) b!2789984))

(assert (= start!269736 b!2789949))

(assert (= (and b!2789957 condMapEmpty!17897) mapIsEmpty!17898))

(assert (= (and b!2789957 (not condMapEmpty!17897)) mapNonEmpty!17898))

(assert (= b!2789964 b!2789957))

(assert (= b!2789986 b!2789964))

(assert (= b!2789950 b!2789986))

(assert (= (and b!2789979 ((_ is LongMap!3926) (v!33926 (underlying!8056 (cache!3975 cacheUp!890))))) b!2789950))

(assert (= b!2789952 b!2789979))

(assert (= (and b!2789972 ((_ is HashMap!3832) (cache!3975 cacheUp!890))) b!2789952))

(assert (= start!269736 b!2789972))

(declare-fun m!3220337 () Bool)

(assert (=> bm!182593 m!3220337))

(declare-fun m!3220339 () Bool)

(assert (=> b!2789966 m!3220339))

(declare-fun m!3220341 () Bool)

(assert (=> b!2789964 m!3220341))

(declare-fun m!3220343 () Bool)

(assert (=> b!2789964 m!3220343))

(declare-fun m!3220345 () Bool)

(assert (=> b!2789968 m!3220345))

(declare-fun m!3220347 () Bool)

(assert (=> setNonEmpty!23803 m!3220347))

(declare-fun m!3220349 () Bool)

(assert (=> b!2789974 m!3220349))

(declare-fun m!3220351 () Bool)

(assert (=> b!2789974 m!3220351))

(declare-fun m!3220353 () Bool)

(assert (=> b!2789983 m!3220353))

(declare-fun m!3220355 () Bool)

(assert (=> bm!182594 m!3220355))

(declare-fun m!3220357 () Bool)

(assert (=> mapNonEmpty!17897 m!3220357))

(declare-fun m!3220359 () Bool)

(assert (=> b!2789953 m!3220359))

(declare-fun m!3220361 () Bool)

(assert (=> bm!182599 m!3220361))

(declare-fun m!3220363 () Bool)

(assert (=> b!2789970 m!3220363))

(declare-fun m!3220365 () Bool)

(assert (=> bm!182597 m!3220365))

(declare-fun m!3220367 () Bool)

(assert (=> b!2789963 m!3220367))

(declare-fun m!3220369 () Bool)

(assert (=> b!2789963 m!3220369))

(declare-fun m!3220371 () Bool)

(assert (=> b!2789963 m!3220371))

(declare-fun m!3220373 () Bool)

(assert (=> bm!182600 m!3220373))

(declare-fun m!3220375 () Bool)

(assert (=> b!2789971 m!3220375))

(declare-fun m!3220377 () Bool)

(assert (=> b!2789982 m!3220377))

(declare-fun m!3220379 () Bool)

(assert (=> b!2789982 m!3220379))

(declare-fun m!3220381 () Bool)

(assert (=> b!2789982 m!3220381))

(assert (=> b!2789982 m!3220381))

(declare-fun m!3220383 () Bool)

(assert (=> b!2789982 m!3220383))

(declare-fun m!3220385 () Bool)

(assert (=> b!2789982 m!3220385))

(declare-fun m!3220387 () Bool)

(assert (=> b!2789982 m!3220387))

(declare-fun m!3220389 () Bool)

(assert (=> b!2789982 m!3220389))

(declare-fun m!3220391 () Bool)

(assert (=> b!2789982 m!3220391))

(declare-fun m!3220393 () Bool)

(assert (=> b!2789982 m!3220393))

(declare-fun m!3220395 () Bool)

(assert (=> b!2789982 m!3220395))

(declare-fun m!3220397 () Bool)

(assert (=> b!2789982 m!3220397))

(declare-fun m!3220399 () Bool)

(assert (=> b!2789982 m!3220399))

(declare-fun m!3220401 () Bool)

(assert (=> b!2789982 m!3220401))

(assert (=> b!2789982 m!3220391))

(declare-fun m!3220403 () Bool)

(assert (=> b!2789982 m!3220403))

(declare-fun m!3220405 () Bool)

(assert (=> b!2789982 m!3220405))

(declare-fun m!3220407 () Bool)

(assert (=> b!2789982 m!3220407))

(declare-fun m!3220409 () Bool)

(assert (=> b!2789982 m!3220409))

(declare-fun m!3220411 () Bool)

(assert (=> b!2789982 m!3220411))

(declare-fun m!3220413 () Bool)

(assert (=> b!2789982 m!3220413))

(declare-fun m!3220415 () Bool)

(assert (=> bm!182596 m!3220415))

(declare-fun m!3220417 () Bool)

(assert (=> mapNonEmpty!17898 m!3220417))

(declare-fun m!3220419 () Bool)

(assert (=> bm!182598 m!3220419))

(declare-fun m!3220421 () Bool)

(assert (=> b!2789956 m!3220421))

(declare-fun m!3220423 () Bool)

(assert (=> b!2789956 m!3220423))

(declare-fun m!3220425 () Bool)

(assert (=> b!2789956 m!3220425))

(declare-fun m!3220427 () Bool)

(assert (=> b!2789956 m!3220427))

(declare-fun m!3220429 () Bool)

(assert (=> start!269736 m!3220429))

(declare-fun m!3220431 () Bool)

(assert (=> start!269736 m!3220431))

(declare-fun m!3220433 () Bool)

(assert (=> start!269736 m!3220433))

(declare-fun m!3220435 () Bool)

(assert (=> start!269736 m!3220435))

(declare-fun m!3220437 () Bool)

(assert (=> start!269736 m!3220437))

(declare-fun m!3220439 () Bool)

(assert (=> bm!182601 m!3220439))

(declare-fun m!3220441 () Bool)

(assert (=> bm!182595 m!3220441))

(check-sat (not b_next!79653) (not b_next!79659) (not b!2789982) (not start!269736) b_and!203691 (not bm!182597) (not bm!182599) (not b!2789963) (not mapNonEmpty!17898) (not bm!182601) (not bm!182598) (not b!2789958) (not bm!182593) (not b!2789974) (not bm!182600) (not mapNonEmpty!17897) b_and!203689 (not b!2789970) (not b!2789983) (not bm!182594) (not b!2789966) (not b!2789959) b_and!203687 (not b!2789957) tp_is_empty!14143 (not b!2789953) (not b!2789971) b_and!203693 (not b!2789964) (not b!2789965) (not b!2789968) (not bm!182595) (not b_next!79657) (not setNonEmpty!23803) (not b!2789956) (not bm!182596) (not b_next!79655) (not b!2789987))
(check-sat (not b_next!79653) (not b_next!79659) b_and!203689 b_and!203687 b_and!203691 b_and!203693 (not b_next!79657) (not b_next!79655))
