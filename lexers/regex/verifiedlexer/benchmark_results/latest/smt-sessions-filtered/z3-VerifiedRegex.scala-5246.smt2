; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269518 () Bool)

(assert start!269518)

(declare-fun b!2788407 () Bool)

(declare-fun b_free!78885 () Bool)

(declare-fun b_next!79589 () Bool)

(assert (=> b!2788407 (= b_free!78885 (not b_next!79589))))

(declare-fun tp!884692 () Bool)

(declare-fun b_and!203623 () Bool)

(assert (=> b!2788407 (= tp!884692 b_and!203623)))

(declare-fun b!2788388 () Bool)

(declare-fun b_free!78887 () Bool)

(declare-fun b_next!79591 () Bool)

(assert (=> b!2788388 (= b_free!78887 (not b_next!79591))))

(declare-fun tp!884703 () Bool)

(declare-fun b_and!203625 () Bool)

(assert (=> b!2788388 (= tp!884703 b_and!203625)))

(declare-fun b!2788399 () Bool)

(declare-fun b_free!78889 () Bool)

(declare-fun b_next!79593 () Bool)

(assert (=> b!2788399 (= b_free!78889 (not b_next!79593))))

(declare-fun tp!884705 () Bool)

(declare-fun b_and!203627 () Bool)

(assert (=> b!2788399 (= tp!884705 b_and!203627)))

(declare-fun b!2788377 () Bool)

(declare-fun b_free!78891 () Bool)

(declare-fun b_next!79595 () Bool)

(assert (=> b!2788377 (= b_free!78891 (not b_next!79595))))

(declare-fun tp!884696 () Bool)

(declare-fun b_and!203629 () Bool)

(assert (=> b!2788377 (= tp!884696 b_and!203629)))

(declare-fun e!1760063 () Bool)

(declare-fun e!1760059 () Bool)

(assert (=> b!2788377 (= e!1760063 (and e!1760059 tp!884696))))

(declare-fun b!2788378 () Bool)

(declare-fun e!1760061 () Bool)

(declare-datatypes ((C!16472 0))(
  ( (C!16473 (val!10170 Int)) )
))
(declare-datatypes ((array!13914 0))(
  ( (array!13915 (arr!6201 (Array (_ BitVec 32) (_ BitVec 64))) (size!25113 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8157 0))(
  ( (ElementMatch!8157 (c!452742 C!16472)) (Concat!13245 (regOne!16826 Regex!8157) (regTwo!16826 Regex!8157)) (EmptyExpr!8157) (Star!8157 (reg!8486 Regex!8157)) (EmptyLang!8157) (Union!8157 (regOne!16827 Regex!8157) (regTwo!16827 Regex!8157)) )
))
(declare-datatypes ((List!32386 0))(
  ( (Nil!32286) (Cons!32286 (h!37706 Regex!8157) (t!228528 List!32386)) )
))
(declare-datatypes ((Context!4750 0))(
  ( (Context!4751 (exprs!2875 List!32386)) )
))
(declare-datatypes ((tuple3!5034 0))(
  ( (tuple3!5035 (_1!19328 Regex!8157) (_2!19328 Context!4750) (_3!2987 C!16472)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32682 0))(
  ( (tuple2!32683 (_1!19329 tuple3!5034) (_2!19329 (InoxSet Context!4750))) )
))
(declare-datatypes ((List!32387 0))(
  ( (Nil!32287) (Cons!32287 (h!37707 tuple2!32682) (t!228529 List!32387)) )
))
(declare-datatypes ((array!13916 0))(
  ( (array!13917 (arr!6202 (Array (_ BitVec 32) List!32387)) (size!25114 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7822 0))(
  ( (LongMapFixedSize!7823 (defaultEntry!4296 Int) (mask!9726 (_ BitVec 32)) (extraKeys!4160 (_ BitVec 32)) (zeroValue!4170 List!32387) (minValue!4170 List!32387) (_size!7865 (_ BitVec 32)) (_keys!4211 array!13914) (_values!4192 array!13916) (_vacant!3972 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15453 0))(
  ( (Cell!15454 (v!33892 LongMapFixedSize!7822)) )
))
(declare-datatypes ((MutLongMap!3911 0))(
  ( (LongMap!3911 (underlying!8025 Cell!15453)) (MutLongMapExt!3910 (__x!21383 Int)) )
))
(declare-fun lt!996502 () MutLongMap!3911)

(get-info :version)

(assert (=> b!2788378 (= e!1760059 (and e!1760061 ((_ is LongMap!3911) lt!996502)))))

(declare-datatypes ((Cell!15455 0))(
  ( (Cell!15456 (v!33893 MutLongMap!3911)) )
))
(declare-datatypes ((Hashable!3827 0))(
  ( (HashableExt!3826 (__x!21384 Int)) )
))
(declare-datatypes ((MutableMap!3817 0))(
  ( (MutableMapExt!3816 (__x!21385 Int)) (HashMap!3817 (underlying!8026 Cell!15455) (hashF!5859 Hashable!3827) (_size!7866 (_ BitVec 32)) (defaultValue!3988 Int)) )
))
(declare-datatypes ((CacheDown!2642 0))(
  ( (CacheDown!2643 (cache!3960 MutableMap!3817)) )
))
(declare-fun cacheDown!1009 () CacheDown!2642)

(assert (=> b!2788378 (= lt!996502 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))

(declare-fun mapIsEmpty!17831 () Bool)

(declare-fun mapRes!17832 () Bool)

(assert (=> mapIsEmpty!17831 mapRes!17832))

(declare-fun b!2788380 () Bool)

(declare-fun e!1760053 () Bool)

(declare-fun e!1760054 () Bool)

(assert (=> b!2788380 (= e!1760053 e!1760054)))

(declare-fun res!1163484 () Bool)

(assert (=> b!2788380 (=> (not res!1163484) (not e!1760054))))

(declare-fun testedPSize!143 () Int)

(declare-fun lt!996519 () Int)

(assert (=> b!2788380 (= res!1163484 (= testedPSize!143 lt!996519))))

(declare-datatypes ((List!32388 0))(
  ( (Nil!32288) (Cons!32288 (h!37708 C!16472) (t!228530 List!32388)) )
))
(declare-fun testedP!183 () List!32388)

(declare-fun size!25115 (List!32388) Int)

(assert (=> b!2788380 (= lt!996519 (size!25115 testedP!183))))

(declare-fun b!2788381 () Bool)

(declare-datatypes ((Unit!46503 0))(
  ( (Unit!46504) )
))
(declare-fun e!1760052 () Unit!46503)

(declare-fun Unit!46505 () Unit!46503)

(assert (=> b!2788381 (= e!1760052 Unit!46505)))

(declare-fun b!2788382 () Bool)

(declare-fun e!1760058 () Bool)

(declare-fun e!1760060 () Bool)

(assert (=> b!2788382 (= e!1760058 e!1760060)))

(declare-fun b!2788383 () Bool)

(declare-fun e!1760062 () Bool)

(assert (=> b!2788383 (= e!1760062 e!1760063)))

(declare-fun b!2788384 () Bool)

(declare-fun e!1760055 () Bool)

(assert (=> b!2788384 (= e!1760055 e!1760058)))

(declare-fun mapNonEmpty!17831 () Bool)

(declare-fun mapRes!17831 () Bool)

(declare-fun tp!884701 () Bool)

(declare-fun tp!884691 () Bool)

(assert (=> mapNonEmpty!17831 (= mapRes!17831 (and tp!884701 tp!884691))))

(declare-fun mapValue!17831 () List!32387)

(declare-fun mapKey!17832 () (_ BitVec 32))

(declare-fun mapRest!17832 () (Array (_ BitVec 32) List!32387))

(assert (=> mapNonEmpty!17831 (= (arr!6202 (_values!4192 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))) (store mapRest!17832 mapKey!17832 mapValue!17831))))

(declare-fun b!2788385 () Bool)

(declare-fun e!1760050 () Bool)

(declare-datatypes ((tuple2!32684 0))(
  ( (tuple2!32685 (_1!19330 Context!4750) (_2!19330 C!16472)) )
))
(declare-datatypes ((tuple2!32686 0))(
  ( (tuple2!32687 (_1!19331 tuple2!32684) (_2!19331 (InoxSet Context!4750))) )
))
(declare-datatypes ((List!32389 0))(
  ( (Nil!32289) (Cons!32289 (h!37709 tuple2!32686) (t!228531 List!32389)) )
))
(declare-datatypes ((array!13918 0))(
  ( (array!13919 (arr!6203 (Array (_ BitVec 32) List!32389)) (size!25116 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7824 0))(
  ( (LongMapFixedSize!7825 (defaultEntry!4297 Int) (mask!9727 (_ BitVec 32)) (extraKeys!4161 (_ BitVec 32)) (zeroValue!4171 List!32389) (minValue!4171 List!32389) (_size!7867 (_ BitVec 32)) (_keys!4212 array!13914) (_values!4193 array!13918) (_vacant!3973 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15457 0))(
  ( (Cell!15458 (v!33894 LongMapFixedSize!7824)) )
))
(declare-datatypes ((MutLongMap!3912 0))(
  ( (LongMap!3912 (underlying!8027 Cell!15457)) (MutLongMapExt!3911 (__x!21386 Int)) )
))
(declare-fun lt!996499 () MutLongMap!3912)

(assert (=> b!2788385 (= e!1760050 (and e!1760055 ((_ is LongMap!3912) lt!996499)))))

(declare-datatypes ((Hashable!3828 0))(
  ( (HashableExt!3827 (__x!21387 Int)) )
))
(declare-datatypes ((Cell!15459 0))(
  ( (Cell!15460 (v!33895 MutLongMap!3912)) )
))
(declare-datatypes ((MutableMap!3818 0))(
  ( (MutableMapExt!3817 (__x!21388 Int)) (HashMap!3818 (underlying!8028 Cell!15459) (hashF!5860 Hashable!3828) (_size!7868 (_ BitVec 32)) (defaultValue!3989 Int)) )
))
(declare-datatypes ((CacheUp!2524 0))(
  ( (CacheUp!2525 (cache!3961 MutableMap!3818)) )
))
(declare-fun cacheUp!890 () CacheUp!2524)

(assert (=> b!2788385 (= lt!996499 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))

(declare-fun b!2788386 () Bool)

(declare-fun e!1760064 () Bool)

(declare-fun e!1760074 () Bool)

(assert (=> b!2788386 (= e!1760064 e!1760074)))

(declare-fun res!1163487 () Bool)

(assert (=> b!2788386 (=> res!1163487 e!1760074)))

(declare-fun lt!996513 () List!32388)

(declare-fun lt!996510 () List!32388)

(declare-fun lt!996500 () List!32388)

(declare-fun ++!7973 (List!32388 List!32388) List!32388)

(assert (=> b!2788386 (= res!1163487 (not (= (++!7973 lt!996510 lt!996500) lt!996513)))))

(declare-datatypes ((IArray!20055 0))(
  ( (IArray!20056 (innerList!10085 List!32388)) )
))
(declare-datatypes ((Conc!10025 0))(
  ( (Node!10025 (left!24495 Conc!10025) (right!24825 Conc!10025) (csize!20280 Int) (cheight!10236 Int)) (Leaf!15272 (xs!13136 IArray!20055) (csize!20281 Int)) (Empty!10025) )
))
(declare-datatypes ((BalanceConc!19664 0))(
  ( (BalanceConc!19665 (c!452743 Conc!10025)) )
))
(declare-datatypes ((tuple2!32688 0))(
  ( (tuple2!32689 (_1!19332 BalanceConc!19664) (_2!19332 BalanceConc!19664)) )
))
(declare-fun lt!996498 () tuple2!32688)

(declare-fun list!12151 (BalanceConc!19664) List!32388)

(assert (=> b!2788386 (= lt!996500 (list!12151 (_2!19332 lt!996498)))))

(assert (=> b!2788386 (= lt!996510 (list!12151 (_1!19332 lt!996498)))))

(declare-fun totalInput!758 () BalanceConc!19664)

(declare-fun splitAt!153 (BalanceConc!19664 Int) tuple2!32688)

(assert (=> b!2788386 (= lt!996498 (splitAt!153 totalInput!758 testedPSize!143))))

(declare-fun b!2788387 () Bool)

(declare-fun e!1760078 () Bool)

(declare-fun tp!884704 () Bool)

(assert (=> b!2788387 (= e!1760078 tp!884704)))

(declare-fun e!1760072 () Bool)

(assert (=> b!2788388 (= e!1760072 (and e!1760050 tp!884703))))

(declare-fun mapIsEmpty!17832 () Bool)

(assert (=> mapIsEmpty!17832 mapRes!17831))

(declare-fun b!2788379 () Bool)

(declare-fun e!1760069 () Bool)

(assert (=> b!2788379 (= e!1760054 e!1760069)))

(declare-fun res!1163485 () Bool)

(assert (=> b!2788379 (=> (not res!1163485) (not e!1760069))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!996509 () Int)

(assert (=> b!2788379 (= res!1163485 (= totalInputSize!205 lt!996509))))

(declare-fun size!25117 (BalanceConc!19664) Int)

(assert (=> b!2788379 (= lt!996509 (size!25117 totalInput!758))))

(declare-fun res!1163488 () Bool)

(assert (=> start!269518 (=> (not res!1163488) (not e!1760053))))

(declare-fun lt!996508 () List!32388)

(assert (=> start!269518 (= res!1163488 (= lt!996508 lt!996513))))

(assert (=> start!269518 (= lt!996513 (list!12151 totalInput!758))))

(declare-fun testedSuffix!143 () List!32388)

(assert (=> start!269518 (= lt!996508 (++!7973 testedP!183 testedSuffix!143))))

(assert (=> start!269518 e!1760053))

(declare-fun e!1760075 () Bool)

(declare-fun inv!43867 (BalanceConc!19664) Bool)

(assert (=> start!269518 (and (inv!43867 totalInput!758) e!1760075)))

(declare-fun condSetEmpty!23698 () Bool)

(declare-fun z!3684 () (InoxSet Context!4750))

(assert (=> start!269518 (= condSetEmpty!23698 (= z!3684 ((as const (Array Context!4750 Bool)) false)))))

(declare-fun setRes!23698 () Bool)

(assert (=> start!269518 setRes!23698))

(assert (=> start!269518 true))

(declare-fun e!1760066 () Bool)

(assert (=> start!269518 e!1760066))

(declare-fun e!1760076 () Bool)

(assert (=> start!269518 e!1760076))

(declare-fun inv!43868 (CacheDown!2642) Bool)

(assert (=> start!269518 (and (inv!43868 cacheDown!1009) e!1760062)))

(declare-fun e!1760071 () Bool)

(declare-fun inv!43869 (CacheUp!2524) Bool)

(assert (=> start!269518 (and (inv!43869 cacheUp!890) e!1760071)))

(declare-fun b!2788389 () Bool)

(declare-fun e!1760049 () Bool)

(assert (=> b!2788389 (= e!1760061 e!1760049)))

(declare-fun tp!884702 () Bool)

(declare-fun setElem!23698 () Context!4750)

(declare-fun setNonEmpty!23698 () Bool)

(declare-fun inv!43870 (Context!4750) Bool)

(assert (=> setNonEmpty!23698 (= setRes!23698 (and tp!884702 (inv!43870 setElem!23698) e!1760078))))

(declare-fun setRest!23698 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23698 (= z!3684 ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23698 true) setRest!23698))))

(declare-fun b!2788390 () Bool)

(declare-fun e!1760068 () Bool)

(declare-fun tp!884695 () Bool)

(assert (=> b!2788390 (= e!1760068 (and tp!884695 mapRes!17832))))

(declare-fun condMapEmpty!17831 () Bool)

(declare-fun mapDefault!17832 () List!32389)

(assert (=> b!2788390 (= condMapEmpty!17831 (= (arr!6203 (_values!4193 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32389)) mapDefault!17832)))))

(declare-fun b!2788391 () Bool)

(declare-fun e!1760057 () Bool)

(assert (=> b!2788391 (= e!1760049 e!1760057)))

(declare-fun b!2788392 () Bool)

(declare-fun e!1760065 () Bool)

(declare-fun e!1760051 () Bool)

(assert (=> b!2788392 (= e!1760065 e!1760051)))

(declare-fun res!1163486 () Bool)

(assert (=> b!2788392 (=> res!1163486 e!1760051)))

(assert (=> b!2788392 (= res!1163486 (>= lt!996519 lt!996509))))

(declare-fun lt!996503 () Unit!46503)

(assert (=> b!2788392 (= lt!996503 e!1760052)))

(declare-fun c!452741 () Bool)

(assert (=> b!2788392 (= c!452741 (= lt!996519 lt!996509))))

(assert (=> b!2788392 (<= lt!996519 (size!25115 lt!996513))))

(declare-fun lt!996515 () Unit!46503)

(declare-fun lemmaIsPrefixThenSmallerEqSize!279 (List!32388 List!32388) Unit!46503)

(assert (=> b!2788392 (= lt!996515 (lemmaIsPrefixThenSmallerEqSize!279 testedP!183 lt!996513))))

(declare-fun b!2788393 () Bool)

(declare-fun res!1163495 () Bool)

(assert (=> b!2788393 (=> (not res!1163495) (not e!1760069))))

(declare-fun valid!3056 (CacheUp!2524) Bool)

(assert (=> b!2788393 (= res!1163495 (valid!3056 cacheUp!890))))

(declare-fun b!2788394 () Bool)

(declare-fun e!1760056 () Bool)

(assert (=> b!2788394 (= e!1760069 (not e!1760056))))

(declare-fun res!1163489 () Bool)

(assert (=> b!2788394 (=> res!1163489 e!1760056)))

(declare-fun isPrefix!2592 (List!32388 List!32388) Bool)

(assert (=> b!2788394 (= res!1163489 (not (isPrefix!2592 testedP!183 lt!996513)))))

(assert (=> b!2788394 (isPrefix!2592 testedP!183 lt!996508)))

(declare-fun lt!996501 () Unit!46503)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1702 (List!32388 List!32388) Unit!46503)

(assert (=> b!2788394 (= lt!996501 (lemmaConcatTwoListThenFirstIsPrefix!1702 testedP!183 testedSuffix!143))))

(declare-fun b!2788395 () Bool)

(assert (=> b!2788395 (= e!1760056 e!1760064)))

(declare-fun res!1163493 () Bool)

(assert (=> b!2788395 (=> res!1163493 e!1760064)))

(declare-fun lostCauseZipper!471 ((InoxSet Context!4750)) Bool)

(assert (=> b!2788395 (= res!1163493 (lostCauseZipper!471 z!3684))))

(declare-fun lt!996512 () List!32388)

(assert (=> b!2788395 (and (= testedSuffix!143 lt!996512) (= lt!996512 testedSuffix!143))))

(declare-fun lt!996506 () Unit!46503)

(declare-fun lemmaSamePrefixThenSameSuffix!1172 (List!32388 List!32388 List!32388 List!32388 List!32388) Unit!46503)

(assert (=> b!2788395 (= lt!996506 (lemmaSamePrefixThenSameSuffix!1172 testedP!183 testedSuffix!143 testedP!183 lt!996512 lt!996513))))

(declare-fun getSuffix!1271 (List!32388 List!32388) List!32388)

(assert (=> b!2788395 (= lt!996512 (getSuffix!1271 lt!996513 testedP!183))))

(declare-fun b!2788396 () Bool)

(assert (=> b!2788396 (= e!1760074 e!1760065)))

(declare-fun res!1163490 () Bool)

(assert (=> b!2788396 (=> res!1163490 e!1760065)))

(declare-fun lt!996504 () C!16472)

(declare-fun head!6175 (List!32388) C!16472)

(assert (=> b!2788396 (= res!1163490 (not (= lt!996504 (head!6175 testedSuffix!143))))))

(declare-fun apply!7557 (BalanceConc!19664 Int) C!16472)

(assert (=> b!2788396 (= lt!996504 (apply!7557 totalInput!758 testedPSize!143))))

(declare-fun drop!1729 (List!32388 Int) List!32388)

(declare-fun apply!7558 (List!32388 Int) C!16472)

(assert (=> b!2788396 (= (head!6175 (drop!1729 lt!996513 testedPSize!143)) (apply!7558 lt!996513 testedPSize!143))))

(declare-fun lt!996507 () Unit!46503)

(declare-fun lemmaDropApply!935 (List!32388 Int) Unit!46503)

(assert (=> b!2788396 (= lt!996507 (lemmaDropApply!935 lt!996513 testedPSize!143))))

(assert (=> b!2788396 (not (or (not (= lt!996510 testedP!183)) (not (= lt!996500 testedSuffix!143))))))

(declare-fun lt!996517 () Unit!46503)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!362 (List!32388 List!32388 List!32388 List!32388) Unit!46503)

(assert (=> b!2788396 (= lt!996517 (lemmaConcatSameAndSameSizesThenSameLists!362 lt!996510 lt!996500 testedP!183 testedSuffix!143))))

(declare-fun b!2788397 () Bool)

(declare-fun e!1760067 () Bool)

(assert (=> b!2788397 (= e!1760051 e!1760067)))

(declare-fun res!1163492 () Bool)

(assert (=> b!2788397 (=> res!1163492 e!1760067)))

(declare-fun nullableZipper!645 ((InoxSet Context!4750)) Bool)

(assert (=> b!2788397 (= res!1163492 (nullableZipper!645 z!3684))))

(declare-fun lt!996516 () List!32388)

(assert (=> b!2788397 (= (++!7973 (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288)) lt!996516) lt!996513)))

(declare-fun lt!996514 () Unit!46503)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!881 (List!32388 C!16472 List!32388 List!32388) Unit!46503)

(assert (=> b!2788397 (= lt!996514 (lemmaMoveElementToOtherListKeepsConcatEq!881 testedP!183 lt!996504 lt!996516 lt!996513))))

(declare-fun tail!4407 (List!32388) List!32388)

(assert (=> b!2788397 (= lt!996516 (tail!4407 testedSuffix!143))))

(assert (=> b!2788397 (isPrefix!2592 (++!7973 testedP!183 (Cons!32288 (head!6175 lt!996512) Nil!32288)) lt!996513)))

(declare-fun lt!996505 () Unit!46503)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!472 (List!32388 List!32388) Unit!46503)

(assert (=> b!2788397 (= lt!996505 (lemmaAddHeadSuffixToPrefixStillPrefix!472 testedP!183 lt!996513))))

(declare-fun b!2788398 () Bool)

(declare-fun tp_is_empty!14127 () Bool)

(declare-fun tp!884694 () Bool)

(assert (=> b!2788398 (= e!1760066 (and tp_is_empty!14127 tp!884694))))

(declare-fun e!1760073 () Bool)

(declare-fun tp!884693 () Bool)

(declare-fun tp!884706 () Bool)

(declare-fun array_inv!4439 (array!13914) Bool)

(declare-fun array_inv!4440 (array!13916) Bool)

(assert (=> b!2788399 (= e!1760057 (and tp!884705 tp!884706 tp!884693 (array_inv!4439 (_keys!4211 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))) (array_inv!4440 (_values!4192 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))) e!1760073))))

(declare-fun b!2788400 () Bool)

(declare-fun Unit!46506 () Unit!46503)

(assert (=> b!2788400 (= e!1760052 Unit!46506)))

(declare-fun lt!996518 () Unit!46503)

(declare-fun lemmaIsPrefixRefl!1696 (List!32388 List!32388) Unit!46503)

(assert (=> b!2788400 (= lt!996518 (lemmaIsPrefixRefl!1696 lt!996513 lt!996513))))

(assert (=> b!2788400 (isPrefix!2592 lt!996513 lt!996513)))

(declare-fun lt!996511 () Unit!46503)

(declare-fun lemmaIsPrefixSameLengthThenSameList!476 (List!32388 List!32388 List!32388) Unit!46503)

(assert (=> b!2788400 (= lt!996511 (lemmaIsPrefixSameLengthThenSameList!476 lt!996513 testedP!183 lt!996513))))

(assert (=> b!2788400 false))

(declare-fun setIsEmpty!23698 () Bool)

(assert (=> setIsEmpty!23698 setRes!23698))

(declare-fun b!2788401 () Bool)

(assert (=> b!2788401 (= e!1760071 e!1760072)))

(declare-fun b!2788402 () Bool)

(declare-fun tp!884698 () Bool)

(assert (=> b!2788402 (= e!1760073 (and tp!884698 mapRes!17831))))

(declare-fun condMapEmpty!17832 () Bool)

(declare-fun mapDefault!17831 () List!32387)

(assert (=> b!2788402 (= condMapEmpty!17832 (= (arr!6202 (_values!4192 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32387)) mapDefault!17831)))))

(declare-fun b!2788403 () Bool)

(declare-fun res!1163494 () Bool)

(assert (=> b!2788403 (=> (not res!1163494) (not e!1760069))))

(declare-fun valid!3057 (CacheDown!2642) Bool)

(assert (=> b!2788403 (= res!1163494 (valid!3057 cacheDown!1009))))

(declare-fun b!2788404 () Bool)

(declare-fun res!1163491 () Bool)

(assert (=> b!2788404 (=> res!1163491 e!1760064)))

(assert (=> b!2788404 (= res!1163491 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2788405 () Bool)

(declare-fun res!1163496 () Bool)

(assert (=> b!2788405 (=> res!1163496 e!1760074)))

(assert (=> b!2788405 (= res!1163496 (not (= (size!25117 (_1!19332 lt!996498)) testedPSize!143)))))

(declare-fun b!2788406 () Bool)

(declare-fun tp!884690 () Bool)

(assert (=> b!2788406 (= e!1760076 (and tp_is_empty!14127 tp!884690))))

(declare-fun tp!884699 () Bool)

(declare-fun tp!884708 () Bool)

(declare-fun array_inv!4441 (array!13918) Bool)

(assert (=> b!2788407 (= e!1760060 (and tp!884692 tp!884699 tp!884708 (array_inv!4439 (_keys!4212 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))) (array_inv!4441 (_values!4193 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))) e!1760068))))

(declare-fun b!2788408 () Bool)

(assert (=> b!2788408 (= e!1760067 (and (<= 0 testedPSize!143) (< testedPSize!143 lt!996509)))))

(declare-fun b!2788409 () Bool)

(declare-fun tp!884700 () Bool)

(declare-fun inv!43871 (Conc!10025) Bool)

(assert (=> b!2788409 (= e!1760075 (and (inv!43871 (c!452743 totalInput!758)) tp!884700))))

(declare-fun mapNonEmpty!17832 () Bool)

(declare-fun tp!884707 () Bool)

(declare-fun tp!884697 () Bool)

(assert (=> mapNonEmpty!17832 (= mapRes!17832 (and tp!884707 tp!884697))))

(declare-fun mapValue!17832 () List!32389)

(declare-fun mapRest!17831 () (Array (_ BitVec 32) List!32389))

(declare-fun mapKey!17831 () (_ BitVec 32))

(assert (=> mapNonEmpty!17832 (= (arr!6203 (_values!4193 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))) (store mapRest!17831 mapKey!17831 mapValue!17832))))

(assert (= (and start!269518 res!1163488) b!2788380))

(assert (= (and b!2788380 res!1163484) b!2788379))

(assert (= (and b!2788379 res!1163485) b!2788393))

(assert (= (and b!2788393 res!1163495) b!2788403))

(assert (= (and b!2788403 res!1163494) b!2788394))

(assert (= (and b!2788394 (not res!1163489)) b!2788395))

(assert (= (and b!2788395 (not res!1163493)) b!2788404))

(assert (= (and b!2788404 (not res!1163491)) b!2788386))

(assert (= (and b!2788386 (not res!1163487)) b!2788405))

(assert (= (and b!2788405 (not res!1163496)) b!2788396))

(assert (= (and b!2788396 (not res!1163490)) b!2788392))

(assert (= (and b!2788392 c!452741) b!2788400))

(assert (= (and b!2788392 (not c!452741)) b!2788381))

(assert (= (and b!2788392 (not res!1163486)) b!2788397))

(assert (= (and b!2788397 (not res!1163492)) b!2788408))

(assert (= start!269518 b!2788409))

(assert (= (and start!269518 condSetEmpty!23698) setIsEmpty!23698))

(assert (= (and start!269518 (not condSetEmpty!23698)) setNonEmpty!23698))

(assert (= setNonEmpty!23698 b!2788387))

(assert (= (and start!269518 ((_ is Cons!32288) testedP!183)) b!2788398))

(assert (= (and start!269518 ((_ is Cons!32288) testedSuffix!143)) b!2788406))

(assert (= (and b!2788402 condMapEmpty!17832) mapIsEmpty!17832))

(assert (= (and b!2788402 (not condMapEmpty!17832)) mapNonEmpty!17831))

(assert (= b!2788399 b!2788402))

(assert (= b!2788391 b!2788399))

(assert (= b!2788389 b!2788391))

(assert (= (and b!2788378 ((_ is LongMap!3911) (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))) b!2788389))

(assert (= b!2788377 b!2788378))

(assert (= (and b!2788383 ((_ is HashMap!3817) (cache!3960 cacheDown!1009))) b!2788377))

(assert (= start!269518 b!2788383))

(assert (= (and b!2788390 condMapEmpty!17831) mapIsEmpty!17831))

(assert (= (and b!2788390 (not condMapEmpty!17831)) mapNonEmpty!17832))

(assert (= b!2788407 b!2788390))

(assert (= b!2788382 b!2788407))

(assert (= b!2788384 b!2788382))

(assert (= (and b!2788385 ((_ is LongMap!3912) (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))) b!2788384))

(assert (= b!2788388 b!2788385))

(assert (= (and b!2788401 ((_ is HashMap!3818) (cache!3961 cacheUp!890))) b!2788388))

(assert (= start!269518 b!2788401))

(declare-fun m!3218743 () Bool)

(assert (=> b!2788392 m!3218743))

(declare-fun m!3218745 () Bool)

(assert (=> b!2788392 m!3218745))

(declare-fun m!3218747 () Bool)

(assert (=> mapNonEmpty!17831 m!3218747))

(declare-fun m!3218749 () Bool)

(assert (=> b!2788403 m!3218749))

(declare-fun m!3218751 () Bool)

(assert (=> b!2788397 m!3218751))

(declare-fun m!3218753 () Bool)

(assert (=> b!2788397 m!3218753))

(declare-fun m!3218755 () Bool)

(assert (=> b!2788397 m!3218755))

(declare-fun m!3218757 () Bool)

(assert (=> b!2788397 m!3218757))

(declare-fun m!3218759 () Bool)

(assert (=> b!2788397 m!3218759))

(declare-fun m!3218761 () Bool)

(assert (=> b!2788397 m!3218761))

(declare-fun m!3218763 () Bool)

(assert (=> b!2788397 m!3218763))

(assert (=> b!2788397 m!3218761))

(declare-fun m!3218765 () Bool)

(assert (=> b!2788397 m!3218765))

(assert (=> b!2788397 m!3218757))

(declare-fun m!3218767 () Bool)

(assert (=> b!2788397 m!3218767))

(declare-fun m!3218769 () Bool)

(assert (=> b!2788394 m!3218769))

(declare-fun m!3218771 () Bool)

(assert (=> b!2788394 m!3218771))

(declare-fun m!3218773 () Bool)

(assert (=> b!2788394 m!3218773))

(declare-fun m!3218775 () Bool)

(assert (=> start!269518 m!3218775))

(declare-fun m!3218777 () Bool)

(assert (=> start!269518 m!3218777))

(declare-fun m!3218779 () Bool)

(assert (=> start!269518 m!3218779))

(declare-fun m!3218781 () Bool)

(assert (=> start!269518 m!3218781))

(declare-fun m!3218783 () Bool)

(assert (=> start!269518 m!3218783))

(declare-fun m!3218785 () Bool)

(assert (=> b!2788380 m!3218785))

(declare-fun m!3218787 () Bool)

(assert (=> mapNonEmpty!17832 m!3218787))

(declare-fun m!3218789 () Bool)

(assert (=> b!2788409 m!3218789))

(declare-fun m!3218791 () Bool)

(assert (=> setNonEmpty!23698 m!3218791))

(declare-fun m!3218793 () Bool)

(assert (=> b!2788393 m!3218793))

(declare-fun m!3218795 () Bool)

(assert (=> b!2788407 m!3218795))

(declare-fun m!3218797 () Bool)

(assert (=> b!2788407 m!3218797))

(declare-fun m!3218799 () Bool)

(assert (=> b!2788395 m!3218799))

(declare-fun m!3218801 () Bool)

(assert (=> b!2788395 m!3218801))

(declare-fun m!3218803 () Bool)

(assert (=> b!2788395 m!3218803))

(declare-fun m!3218805 () Bool)

(assert (=> b!2788405 m!3218805))

(declare-fun m!3218807 () Bool)

(assert (=> b!2788396 m!3218807))

(declare-fun m!3218809 () Bool)

(assert (=> b!2788396 m!3218809))

(declare-fun m!3218811 () Bool)

(assert (=> b!2788396 m!3218811))

(declare-fun m!3218813 () Bool)

(assert (=> b!2788396 m!3218813))

(declare-fun m!3218815 () Bool)

(assert (=> b!2788396 m!3218815))

(declare-fun m!3218817 () Bool)

(assert (=> b!2788396 m!3218817))

(assert (=> b!2788396 m!3218809))

(declare-fun m!3218819 () Bool)

(assert (=> b!2788396 m!3218819))

(declare-fun m!3218821 () Bool)

(assert (=> b!2788386 m!3218821))

(declare-fun m!3218823 () Bool)

(assert (=> b!2788386 m!3218823))

(declare-fun m!3218825 () Bool)

(assert (=> b!2788386 m!3218825))

(declare-fun m!3218827 () Bool)

(assert (=> b!2788386 m!3218827))

(declare-fun m!3218829 () Bool)

(assert (=> b!2788379 m!3218829))

(declare-fun m!3218831 () Bool)

(assert (=> b!2788399 m!3218831))

(declare-fun m!3218833 () Bool)

(assert (=> b!2788399 m!3218833))

(declare-fun m!3218835 () Bool)

(assert (=> b!2788400 m!3218835))

(declare-fun m!3218837 () Bool)

(assert (=> b!2788400 m!3218837))

(declare-fun m!3218839 () Bool)

(assert (=> b!2788400 m!3218839))

(check-sat (not b_next!79595) (not b!2788386) (not b!2788402) (not b!2788399) b_and!203629 (not b_next!79589) (not b!2788400) (not b!2788407) (not setNonEmpty!23698) b_and!203623 tp_is_empty!14127 (not b!2788405) b_and!203625 b_and!203627 (not start!269518) (not b!2788406) (not b!2788394) (not b!2788397) (not b!2788393) (not b!2788403) (not b_next!79591) (not b!2788392) (not b!2788387) (not mapNonEmpty!17831) (not b_next!79593) (not b!2788380) (not b!2788379) (not b!2788395) (not b!2788396) (not b!2788398) (not b!2788409) (not mapNonEmpty!17832) (not b!2788390))
(check-sat (not b_next!79595) (not b_next!79591) b_and!203629 (not b_next!79589) (not b_next!79593) b_and!203623 b_and!203625 b_and!203627)
(get-model)

(declare-fun d!810999 () Bool)

(declare-fun lt!996522 () Int)

(assert (=> d!810999 (>= lt!996522 0)))

(declare-fun e!1760081 () Int)

(assert (=> d!810999 (= lt!996522 e!1760081)))

(declare-fun c!452746 () Bool)

(assert (=> d!810999 (= c!452746 ((_ is Nil!32288) lt!996513))))

(assert (=> d!810999 (= (size!25115 lt!996513) lt!996522)))

(declare-fun b!2788414 () Bool)

(assert (=> b!2788414 (= e!1760081 0)))

(declare-fun b!2788415 () Bool)

(assert (=> b!2788415 (= e!1760081 (+ 1 (size!25115 (t!228530 lt!996513))))))

(assert (= (and d!810999 c!452746) b!2788414))

(assert (= (and d!810999 (not c!452746)) b!2788415))

(declare-fun m!3218841 () Bool)

(assert (=> b!2788415 m!3218841))

(assert (=> b!2788392 d!810999))

(declare-fun d!811001 () Bool)

(assert (=> d!811001 (<= (size!25115 testedP!183) (size!25115 lt!996513))))

(declare-fun lt!996525 () Unit!46503)

(declare-fun choose!16380 (List!32388 List!32388) Unit!46503)

(assert (=> d!811001 (= lt!996525 (choose!16380 testedP!183 lt!996513))))

(assert (=> d!811001 (isPrefix!2592 testedP!183 lt!996513)))

(assert (=> d!811001 (= (lemmaIsPrefixThenSmallerEqSize!279 testedP!183 lt!996513) lt!996525)))

(declare-fun bs!511020 () Bool)

(assert (= bs!511020 d!811001))

(assert (=> bs!511020 m!3218785))

(assert (=> bs!511020 m!3218743))

(declare-fun m!3218843 () Bool)

(assert (=> bs!511020 m!3218843))

(assert (=> bs!511020 m!3218769))

(assert (=> b!2788392 d!811001))

(declare-fun d!811003 () Bool)

(declare-fun validCacheMapUp!383 (MutableMap!3818) Bool)

(assert (=> d!811003 (= (valid!3056 cacheUp!890) (validCacheMapUp!383 (cache!3961 cacheUp!890)))))

(declare-fun bs!511021 () Bool)

(assert (= bs!511021 d!811003))

(declare-fun m!3218845 () Bool)

(assert (=> bs!511021 m!3218845))

(assert (=> b!2788393 d!811003))

(declare-fun d!811005 () Bool)

(declare-fun validCacheMapDown!414 (MutableMap!3817) Bool)

(assert (=> d!811005 (= (valid!3057 cacheDown!1009) (validCacheMapDown!414 (cache!3960 cacheDown!1009)))))

(declare-fun bs!511022 () Bool)

(assert (= bs!511022 d!811005))

(declare-fun m!3218847 () Bool)

(assert (=> bs!511022 m!3218847))

(assert (=> b!2788403 d!811005))

(declare-fun d!811007 () Bool)

(declare-fun c!452749 () Bool)

(assert (=> d!811007 (= c!452749 ((_ is Node!10025) (c!452743 totalInput!758)))))

(declare-fun e!1760086 () Bool)

(assert (=> d!811007 (= (inv!43871 (c!452743 totalInput!758)) e!1760086)))

(declare-fun b!2788422 () Bool)

(declare-fun inv!43872 (Conc!10025) Bool)

(assert (=> b!2788422 (= e!1760086 (inv!43872 (c!452743 totalInput!758)))))

(declare-fun b!2788423 () Bool)

(declare-fun e!1760087 () Bool)

(assert (=> b!2788423 (= e!1760086 e!1760087)))

(declare-fun res!1163499 () Bool)

(assert (=> b!2788423 (= res!1163499 (not ((_ is Leaf!15272) (c!452743 totalInput!758))))))

(assert (=> b!2788423 (=> res!1163499 e!1760087)))

(declare-fun b!2788424 () Bool)

(declare-fun inv!43873 (Conc!10025) Bool)

(assert (=> b!2788424 (= e!1760087 (inv!43873 (c!452743 totalInput!758)))))

(assert (= (and d!811007 c!452749) b!2788422))

(assert (= (and d!811007 (not c!452749)) b!2788423))

(assert (= (and b!2788423 (not res!1163499)) b!2788424))

(declare-fun m!3218849 () Bool)

(assert (=> b!2788422 m!3218849))

(declare-fun m!3218851 () Bool)

(assert (=> b!2788424 m!3218851))

(assert (=> b!2788409 d!811007))

(declare-fun d!811009 () Bool)

(declare-fun lambda!102305 () Int)

(declare-fun forall!6663 (List!32386 Int) Bool)

(assert (=> d!811009 (= (inv!43870 setElem!23698) (forall!6663 (exprs!2875 setElem!23698) lambda!102305))))

(declare-fun bs!511023 () Bool)

(assert (= bs!511023 d!811009))

(declare-fun m!3218853 () Bool)

(assert (=> bs!511023 m!3218853))

(assert (=> setNonEmpty!23698 d!811009))

(declare-fun d!811011 () Bool)

(assert (=> d!811011 (isPrefix!2592 lt!996513 lt!996513)))

(declare-fun lt!996528 () Unit!46503)

(declare-fun choose!16381 (List!32388 List!32388) Unit!46503)

(assert (=> d!811011 (= lt!996528 (choose!16381 lt!996513 lt!996513))))

(assert (=> d!811011 (= (lemmaIsPrefixRefl!1696 lt!996513 lt!996513) lt!996528)))

(declare-fun bs!511024 () Bool)

(assert (= bs!511024 d!811011))

(assert (=> bs!511024 m!3218837))

(declare-fun m!3218855 () Bool)

(assert (=> bs!511024 m!3218855))

(assert (=> b!2788400 d!811011))

(declare-fun d!811013 () Bool)

(declare-fun e!1760095 () Bool)

(assert (=> d!811013 e!1760095))

(declare-fun res!1163508 () Bool)

(assert (=> d!811013 (=> res!1163508 e!1760095)))

(declare-fun lt!996531 () Bool)

(assert (=> d!811013 (= res!1163508 (not lt!996531))))

(declare-fun e!1760094 () Bool)

(assert (=> d!811013 (= lt!996531 e!1760094)))

(declare-fun res!1163509 () Bool)

(assert (=> d!811013 (=> res!1163509 e!1760094)))

(assert (=> d!811013 (= res!1163509 ((_ is Nil!32288) lt!996513))))

(assert (=> d!811013 (= (isPrefix!2592 lt!996513 lt!996513) lt!996531)))

(declare-fun b!2788434 () Bool)

(declare-fun res!1163510 () Bool)

(declare-fun e!1760096 () Bool)

(assert (=> b!2788434 (=> (not res!1163510) (not e!1760096))))

(assert (=> b!2788434 (= res!1163510 (= (head!6175 lt!996513) (head!6175 lt!996513)))))

(declare-fun b!2788435 () Bool)

(assert (=> b!2788435 (= e!1760096 (isPrefix!2592 (tail!4407 lt!996513) (tail!4407 lt!996513)))))

(declare-fun b!2788436 () Bool)

(assert (=> b!2788436 (= e!1760095 (>= (size!25115 lt!996513) (size!25115 lt!996513)))))

(declare-fun b!2788433 () Bool)

(assert (=> b!2788433 (= e!1760094 e!1760096)))

(declare-fun res!1163511 () Bool)

(assert (=> b!2788433 (=> (not res!1163511) (not e!1760096))))

(assert (=> b!2788433 (= res!1163511 (not ((_ is Nil!32288) lt!996513)))))

(assert (= (and d!811013 (not res!1163509)) b!2788433))

(assert (= (and b!2788433 res!1163511) b!2788434))

(assert (= (and b!2788434 res!1163510) b!2788435))

(assert (= (and d!811013 (not res!1163508)) b!2788436))

(declare-fun m!3218857 () Bool)

(assert (=> b!2788434 m!3218857))

(assert (=> b!2788434 m!3218857))

(declare-fun m!3218859 () Bool)

(assert (=> b!2788435 m!3218859))

(assert (=> b!2788435 m!3218859))

(assert (=> b!2788435 m!3218859))

(assert (=> b!2788435 m!3218859))

(declare-fun m!3218861 () Bool)

(assert (=> b!2788435 m!3218861))

(assert (=> b!2788436 m!3218743))

(assert (=> b!2788436 m!3218743))

(assert (=> b!2788400 d!811013))

(declare-fun d!811015 () Bool)

(assert (=> d!811015 (= lt!996513 testedP!183)))

(declare-fun lt!996534 () Unit!46503)

(declare-fun choose!16382 (List!32388 List!32388 List!32388) Unit!46503)

(assert (=> d!811015 (= lt!996534 (choose!16382 lt!996513 testedP!183 lt!996513))))

(assert (=> d!811015 (isPrefix!2592 lt!996513 lt!996513)))

(assert (=> d!811015 (= (lemmaIsPrefixSameLengthThenSameList!476 lt!996513 testedP!183 lt!996513) lt!996534)))

(declare-fun bs!511025 () Bool)

(assert (= bs!511025 d!811015))

(declare-fun m!3218863 () Bool)

(assert (=> bs!511025 m!3218863))

(assert (=> bs!511025 m!3218837))

(assert (=> b!2788400 d!811015))

(declare-fun d!811017 () Bool)

(declare-fun e!1760102 () Bool)

(assert (=> d!811017 e!1760102))

(declare-fun res!1163517 () Bool)

(assert (=> d!811017 (=> (not res!1163517) (not e!1760102))))

(declare-fun lt!996537 () List!32388)

(declare-fun content!4524 (List!32388) (InoxSet C!16472))

(assert (=> d!811017 (= res!1163517 (= (content!4524 lt!996537) ((_ map or) (content!4524 (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288))) (content!4524 lt!996516))))))

(declare-fun e!1760101 () List!32388)

(assert (=> d!811017 (= lt!996537 e!1760101)))

(declare-fun c!452752 () Bool)

(assert (=> d!811017 (= c!452752 ((_ is Nil!32288) (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288))))))

(assert (=> d!811017 (= (++!7973 (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288)) lt!996516) lt!996537)))

(declare-fun b!2788446 () Bool)

(assert (=> b!2788446 (= e!1760101 (Cons!32288 (h!37708 (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288))) (++!7973 (t!228530 (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288))) lt!996516)))))

(declare-fun b!2788448 () Bool)

(assert (=> b!2788448 (= e!1760102 (or (not (= lt!996516 Nil!32288)) (= lt!996537 (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288)))))))

(declare-fun b!2788445 () Bool)

(assert (=> b!2788445 (= e!1760101 lt!996516)))

(declare-fun b!2788447 () Bool)

(declare-fun res!1163516 () Bool)

(assert (=> b!2788447 (=> (not res!1163516) (not e!1760102))))

(assert (=> b!2788447 (= res!1163516 (= (size!25115 lt!996537) (+ (size!25115 (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288))) (size!25115 lt!996516))))))

(assert (= (and d!811017 c!452752) b!2788445))

(assert (= (and d!811017 (not c!452752)) b!2788446))

(assert (= (and d!811017 res!1163517) b!2788447))

(assert (= (and b!2788447 res!1163516) b!2788448))

(declare-fun m!3218865 () Bool)

(assert (=> d!811017 m!3218865))

(assert (=> d!811017 m!3218761))

(declare-fun m!3218867 () Bool)

(assert (=> d!811017 m!3218867))

(declare-fun m!3218869 () Bool)

(assert (=> d!811017 m!3218869))

(declare-fun m!3218871 () Bool)

(assert (=> b!2788446 m!3218871))

(declare-fun m!3218873 () Bool)

(assert (=> b!2788447 m!3218873))

(assert (=> b!2788447 m!3218761))

(declare-fun m!3218875 () Bool)

(assert (=> b!2788447 m!3218875))

(declare-fun m!3218877 () Bool)

(assert (=> b!2788447 m!3218877))

(assert (=> b!2788397 d!811017))

(declare-fun d!811019 () Bool)

(assert (=> d!811019 (= (head!6175 lt!996512) (h!37708 lt!996512))))

(assert (=> b!2788397 d!811019))

(declare-fun d!811021 () Bool)

(declare-fun e!1760104 () Bool)

(assert (=> d!811021 e!1760104))

(declare-fun res!1163519 () Bool)

(assert (=> d!811021 (=> (not res!1163519) (not e!1760104))))

(declare-fun lt!996538 () List!32388)

(assert (=> d!811021 (= res!1163519 (= (content!4524 lt!996538) ((_ map or) (content!4524 testedP!183) (content!4524 (Cons!32288 lt!996504 Nil!32288)))))))

(declare-fun e!1760103 () List!32388)

(assert (=> d!811021 (= lt!996538 e!1760103)))

(declare-fun c!452753 () Bool)

(assert (=> d!811021 (= c!452753 ((_ is Nil!32288) testedP!183))))

(assert (=> d!811021 (= (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288)) lt!996538)))

(declare-fun b!2788450 () Bool)

(assert (=> b!2788450 (= e!1760103 (Cons!32288 (h!37708 testedP!183) (++!7973 (t!228530 testedP!183) (Cons!32288 lt!996504 Nil!32288))))))

(declare-fun b!2788452 () Bool)

(assert (=> b!2788452 (= e!1760104 (or (not (= (Cons!32288 lt!996504 Nil!32288) Nil!32288)) (= lt!996538 testedP!183)))))

(declare-fun b!2788449 () Bool)

(assert (=> b!2788449 (= e!1760103 (Cons!32288 lt!996504 Nil!32288))))

(declare-fun b!2788451 () Bool)

(declare-fun res!1163518 () Bool)

(assert (=> b!2788451 (=> (not res!1163518) (not e!1760104))))

(assert (=> b!2788451 (= res!1163518 (= (size!25115 lt!996538) (+ (size!25115 testedP!183) (size!25115 (Cons!32288 lt!996504 Nil!32288)))))))

(assert (= (and d!811021 c!452753) b!2788449))

(assert (= (and d!811021 (not c!452753)) b!2788450))

(assert (= (and d!811021 res!1163519) b!2788451))

(assert (= (and b!2788451 res!1163518) b!2788452))

(declare-fun m!3218879 () Bool)

(assert (=> d!811021 m!3218879))

(declare-fun m!3218881 () Bool)

(assert (=> d!811021 m!3218881))

(declare-fun m!3218883 () Bool)

(assert (=> d!811021 m!3218883))

(declare-fun m!3218885 () Bool)

(assert (=> b!2788450 m!3218885))

(declare-fun m!3218887 () Bool)

(assert (=> b!2788451 m!3218887))

(assert (=> b!2788451 m!3218785))

(declare-fun m!3218889 () Bool)

(assert (=> b!2788451 m!3218889))

(assert (=> b!2788397 d!811021))

(declare-fun d!811023 () Bool)

(assert (=> d!811023 (= (tail!4407 testedSuffix!143) (t!228530 testedSuffix!143))))

(assert (=> b!2788397 d!811023))

(declare-fun d!811025 () Bool)

(declare-fun lambda!102308 () Int)

(declare-fun exists!995 ((InoxSet Context!4750) Int) Bool)

(assert (=> d!811025 (= (nullableZipper!645 z!3684) (exists!995 z!3684 lambda!102308))))

(declare-fun bs!511026 () Bool)

(assert (= bs!511026 d!811025))

(declare-fun m!3218891 () Bool)

(assert (=> bs!511026 m!3218891))

(assert (=> b!2788397 d!811025))

(declare-fun d!811027 () Bool)

(assert (=> d!811027 (= (++!7973 (++!7973 testedP!183 (Cons!32288 lt!996504 Nil!32288)) lt!996516) lt!996513)))

(declare-fun lt!996541 () Unit!46503)

(declare-fun choose!16383 (List!32388 C!16472 List!32388 List!32388) Unit!46503)

(assert (=> d!811027 (= lt!996541 (choose!16383 testedP!183 lt!996504 lt!996516 lt!996513))))

(assert (=> d!811027 (= (++!7973 testedP!183 (Cons!32288 lt!996504 lt!996516)) lt!996513)))

(assert (=> d!811027 (= (lemmaMoveElementToOtherListKeepsConcatEq!881 testedP!183 lt!996504 lt!996516 lt!996513) lt!996541)))

(declare-fun bs!511027 () Bool)

(assert (= bs!511027 d!811027))

(assert (=> bs!511027 m!3218761))

(assert (=> bs!511027 m!3218761))

(assert (=> bs!511027 m!3218763))

(declare-fun m!3218893 () Bool)

(assert (=> bs!511027 m!3218893))

(declare-fun m!3218895 () Bool)

(assert (=> bs!511027 m!3218895))

(assert (=> b!2788397 d!811027))

(declare-fun d!811029 () Bool)

(assert (=> d!811029 (isPrefix!2592 (++!7973 testedP!183 (Cons!32288 (head!6175 (getSuffix!1271 lt!996513 testedP!183)) Nil!32288)) lt!996513)))

(declare-fun lt!996544 () Unit!46503)

(declare-fun choose!16384 (List!32388 List!32388) Unit!46503)

(assert (=> d!811029 (= lt!996544 (choose!16384 testedP!183 lt!996513))))

(assert (=> d!811029 (isPrefix!2592 testedP!183 lt!996513)))

(assert (=> d!811029 (= (lemmaAddHeadSuffixToPrefixStillPrefix!472 testedP!183 lt!996513) lt!996544)))

(declare-fun bs!511028 () Bool)

(assert (= bs!511028 d!811029))

(assert (=> bs!511028 m!3218769))

(declare-fun m!3218897 () Bool)

(assert (=> bs!511028 m!3218897))

(declare-fun m!3218899 () Bool)

(assert (=> bs!511028 m!3218899))

(declare-fun m!3218901 () Bool)

(assert (=> bs!511028 m!3218901))

(assert (=> bs!511028 m!3218897))

(assert (=> bs!511028 m!3218803))

(declare-fun m!3218903 () Bool)

(assert (=> bs!511028 m!3218903))

(assert (=> bs!511028 m!3218803))

(assert (=> b!2788397 d!811029))

(declare-fun d!811031 () Bool)

(declare-fun e!1760106 () Bool)

(assert (=> d!811031 e!1760106))

(declare-fun res!1163520 () Bool)

(assert (=> d!811031 (=> res!1163520 e!1760106)))

(declare-fun lt!996545 () Bool)

(assert (=> d!811031 (= res!1163520 (not lt!996545))))

(declare-fun e!1760105 () Bool)

(assert (=> d!811031 (= lt!996545 e!1760105)))

(declare-fun res!1163521 () Bool)

(assert (=> d!811031 (=> res!1163521 e!1760105)))

(assert (=> d!811031 (= res!1163521 ((_ is Nil!32288) (++!7973 testedP!183 (Cons!32288 (head!6175 lt!996512) Nil!32288))))))

(assert (=> d!811031 (= (isPrefix!2592 (++!7973 testedP!183 (Cons!32288 (head!6175 lt!996512) Nil!32288)) lt!996513) lt!996545)))

(declare-fun b!2788454 () Bool)

(declare-fun res!1163522 () Bool)

(declare-fun e!1760107 () Bool)

(assert (=> b!2788454 (=> (not res!1163522) (not e!1760107))))

(assert (=> b!2788454 (= res!1163522 (= (head!6175 (++!7973 testedP!183 (Cons!32288 (head!6175 lt!996512) Nil!32288))) (head!6175 lt!996513)))))

(declare-fun b!2788455 () Bool)

(assert (=> b!2788455 (= e!1760107 (isPrefix!2592 (tail!4407 (++!7973 testedP!183 (Cons!32288 (head!6175 lt!996512) Nil!32288))) (tail!4407 lt!996513)))))

(declare-fun b!2788456 () Bool)

(assert (=> b!2788456 (= e!1760106 (>= (size!25115 lt!996513) (size!25115 (++!7973 testedP!183 (Cons!32288 (head!6175 lt!996512) Nil!32288)))))))

(declare-fun b!2788453 () Bool)

(assert (=> b!2788453 (= e!1760105 e!1760107)))

(declare-fun res!1163523 () Bool)

(assert (=> b!2788453 (=> (not res!1163523) (not e!1760107))))

(assert (=> b!2788453 (= res!1163523 (not ((_ is Nil!32288) lt!996513)))))

(assert (= (and d!811031 (not res!1163521)) b!2788453))

(assert (= (and b!2788453 res!1163523) b!2788454))

(assert (= (and b!2788454 res!1163522) b!2788455))

(assert (= (and d!811031 (not res!1163520)) b!2788456))

(assert (=> b!2788454 m!3218757))

(declare-fun m!3218905 () Bool)

(assert (=> b!2788454 m!3218905))

(assert (=> b!2788454 m!3218857))

(assert (=> b!2788455 m!3218757))

(declare-fun m!3218907 () Bool)

(assert (=> b!2788455 m!3218907))

(assert (=> b!2788455 m!3218859))

(assert (=> b!2788455 m!3218907))

(assert (=> b!2788455 m!3218859))

(declare-fun m!3218909 () Bool)

(assert (=> b!2788455 m!3218909))

(assert (=> b!2788456 m!3218743))

(assert (=> b!2788456 m!3218757))

(declare-fun m!3218911 () Bool)

(assert (=> b!2788456 m!3218911))

(assert (=> b!2788397 d!811031))

(declare-fun d!811033 () Bool)

(declare-fun e!1760109 () Bool)

(assert (=> d!811033 e!1760109))

(declare-fun res!1163525 () Bool)

(assert (=> d!811033 (=> (not res!1163525) (not e!1760109))))

(declare-fun lt!996546 () List!32388)

(assert (=> d!811033 (= res!1163525 (= (content!4524 lt!996546) ((_ map or) (content!4524 testedP!183) (content!4524 (Cons!32288 (head!6175 lt!996512) Nil!32288)))))))

(declare-fun e!1760108 () List!32388)

(assert (=> d!811033 (= lt!996546 e!1760108)))

(declare-fun c!452756 () Bool)

(assert (=> d!811033 (= c!452756 ((_ is Nil!32288) testedP!183))))

(assert (=> d!811033 (= (++!7973 testedP!183 (Cons!32288 (head!6175 lt!996512) Nil!32288)) lt!996546)))

(declare-fun b!2788458 () Bool)

(assert (=> b!2788458 (= e!1760108 (Cons!32288 (h!37708 testedP!183) (++!7973 (t!228530 testedP!183) (Cons!32288 (head!6175 lt!996512) Nil!32288))))))

(declare-fun b!2788460 () Bool)

(assert (=> b!2788460 (= e!1760109 (or (not (= (Cons!32288 (head!6175 lt!996512) Nil!32288) Nil!32288)) (= lt!996546 testedP!183)))))

(declare-fun b!2788457 () Bool)

(assert (=> b!2788457 (= e!1760108 (Cons!32288 (head!6175 lt!996512) Nil!32288))))

(declare-fun b!2788459 () Bool)

(declare-fun res!1163524 () Bool)

(assert (=> b!2788459 (=> (not res!1163524) (not e!1760109))))

(assert (=> b!2788459 (= res!1163524 (= (size!25115 lt!996546) (+ (size!25115 testedP!183) (size!25115 (Cons!32288 (head!6175 lt!996512) Nil!32288)))))))

(assert (= (and d!811033 c!452756) b!2788457))

(assert (= (and d!811033 (not c!452756)) b!2788458))

(assert (= (and d!811033 res!1163525) b!2788459))

(assert (= (and b!2788459 res!1163524) b!2788460))

(declare-fun m!3218913 () Bool)

(assert (=> d!811033 m!3218913))

(assert (=> d!811033 m!3218881))

(declare-fun m!3218915 () Bool)

(assert (=> d!811033 m!3218915))

(declare-fun m!3218917 () Bool)

(assert (=> b!2788458 m!3218917))

(declare-fun m!3218919 () Bool)

(assert (=> b!2788459 m!3218919))

(assert (=> b!2788459 m!3218785))

(declare-fun m!3218921 () Bool)

(assert (=> b!2788459 m!3218921))

(assert (=> b!2788397 d!811033))

(declare-fun d!811035 () Bool)

(assert (=> d!811035 (= (array_inv!4439 (_keys!4212 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))) (bvsge (size!25113 (_keys!4212 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2788407 d!811035))

(declare-fun d!811037 () Bool)

(assert (=> d!811037 (= (array_inv!4441 (_values!4193 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))) (bvsge (size!25116 (_values!4193 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2788407 d!811037))

(declare-fun d!811039 () Bool)

(declare-fun lt!996547 () Int)

(assert (=> d!811039 (>= lt!996547 0)))

(declare-fun e!1760110 () Int)

(assert (=> d!811039 (= lt!996547 e!1760110)))

(declare-fun c!452757 () Bool)

(assert (=> d!811039 (= c!452757 ((_ is Nil!32288) testedP!183))))

(assert (=> d!811039 (= (size!25115 testedP!183) lt!996547)))

(declare-fun b!2788461 () Bool)

(assert (=> b!2788461 (= e!1760110 0)))

(declare-fun b!2788462 () Bool)

(assert (=> b!2788462 (= e!1760110 (+ 1 (size!25115 (t!228530 testedP!183))))))

(assert (= (and d!811039 c!452757) b!2788461))

(assert (= (and d!811039 (not c!452757)) b!2788462))

(declare-fun m!3218923 () Bool)

(assert (=> b!2788462 m!3218923))

(assert (=> b!2788380 d!811039))

(declare-fun d!811041 () Bool)

(assert (=> d!811041 (= (array_inv!4439 (_keys!4211 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))) (bvsge (size!25113 (_keys!4211 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2788399 d!811041))

(declare-fun d!811043 () Bool)

(assert (=> d!811043 (= (array_inv!4440 (_values!4192 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))) (bvsge (size!25114 (_values!4192 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2788399 d!811043))

(declare-fun d!811045 () Bool)

(declare-fun res!1163528 () Bool)

(declare-fun e!1760113 () Bool)

(assert (=> d!811045 (=> (not res!1163528) (not e!1760113))))

(assert (=> d!811045 (= res!1163528 ((_ is HashMap!3818) (cache!3961 cacheUp!890)))))

(assert (=> d!811045 (= (inv!43869 cacheUp!890) e!1760113)))

(declare-fun b!2788465 () Bool)

(assert (=> b!2788465 (= e!1760113 (validCacheMapUp!383 (cache!3961 cacheUp!890)))))

(assert (= (and d!811045 res!1163528) b!2788465))

(assert (=> b!2788465 m!3218845))

(assert (=> start!269518 d!811045))

(declare-fun d!811047 () Bool)

(declare-fun isBalanced!3059 (Conc!10025) Bool)

(assert (=> d!811047 (= (inv!43867 totalInput!758) (isBalanced!3059 (c!452743 totalInput!758)))))

(declare-fun bs!511029 () Bool)

(assert (= bs!511029 d!811047))

(declare-fun m!3218925 () Bool)

(assert (=> bs!511029 m!3218925))

(assert (=> start!269518 d!811047))

(declare-fun d!811049 () Bool)

(declare-fun res!1163531 () Bool)

(declare-fun e!1760116 () Bool)

(assert (=> d!811049 (=> (not res!1163531) (not e!1760116))))

(assert (=> d!811049 (= res!1163531 ((_ is HashMap!3817) (cache!3960 cacheDown!1009)))))

(assert (=> d!811049 (= (inv!43868 cacheDown!1009) e!1760116)))

(declare-fun b!2788468 () Bool)

(assert (=> b!2788468 (= e!1760116 (validCacheMapDown!414 (cache!3960 cacheDown!1009)))))

(assert (= (and d!811049 res!1163531) b!2788468))

(assert (=> b!2788468 m!3218847))

(assert (=> start!269518 d!811049))

(declare-fun d!811051 () Bool)

(declare-fun list!12152 (Conc!10025) List!32388)

(assert (=> d!811051 (= (list!12151 totalInput!758) (list!12152 (c!452743 totalInput!758)))))

(declare-fun bs!511030 () Bool)

(assert (= bs!511030 d!811051))

(declare-fun m!3218927 () Bool)

(assert (=> bs!511030 m!3218927))

(assert (=> start!269518 d!811051))

(declare-fun d!811053 () Bool)

(declare-fun e!1760118 () Bool)

(assert (=> d!811053 e!1760118))

(declare-fun res!1163533 () Bool)

(assert (=> d!811053 (=> (not res!1163533) (not e!1760118))))

(declare-fun lt!996548 () List!32388)

(assert (=> d!811053 (= res!1163533 (= (content!4524 lt!996548) ((_ map or) (content!4524 testedP!183) (content!4524 testedSuffix!143))))))

(declare-fun e!1760117 () List!32388)

(assert (=> d!811053 (= lt!996548 e!1760117)))

(declare-fun c!452758 () Bool)

(assert (=> d!811053 (= c!452758 ((_ is Nil!32288) testedP!183))))

(assert (=> d!811053 (= (++!7973 testedP!183 testedSuffix!143) lt!996548)))

(declare-fun b!2788470 () Bool)

(assert (=> b!2788470 (= e!1760117 (Cons!32288 (h!37708 testedP!183) (++!7973 (t!228530 testedP!183) testedSuffix!143)))))

(declare-fun b!2788472 () Bool)

(assert (=> b!2788472 (= e!1760118 (or (not (= testedSuffix!143 Nil!32288)) (= lt!996548 testedP!183)))))

(declare-fun b!2788469 () Bool)

(assert (=> b!2788469 (= e!1760117 testedSuffix!143)))

(declare-fun b!2788471 () Bool)

(declare-fun res!1163532 () Bool)

(assert (=> b!2788471 (=> (not res!1163532) (not e!1760118))))

(assert (=> b!2788471 (= res!1163532 (= (size!25115 lt!996548) (+ (size!25115 testedP!183) (size!25115 testedSuffix!143))))))

(assert (= (and d!811053 c!452758) b!2788469))

(assert (= (and d!811053 (not c!452758)) b!2788470))

(assert (= (and d!811053 res!1163533) b!2788471))

(assert (= (and b!2788471 res!1163532) b!2788472))

(declare-fun m!3218929 () Bool)

(assert (=> d!811053 m!3218929))

(assert (=> d!811053 m!3218881))

(declare-fun m!3218931 () Bool)

(assert (=> d!811053 m!3218931))

(declare-fun m!3218933 () Bool)

(assert (=> b!2788470 m!3218933))

(declare-fun m!3218935 () Bool)

(assert (=> b!2788471 m!3218935))

(assert (=> b!2788471 m!3218785))

(declare-fun m!3218937 () Bool)

(assert (=> b!2788471 m!3218937))

(assert (=> start!269518 d!811053))

(declare-fun d!811055 () Bool)

(declare-fun e!1760120 () Bool)

(assert (=> d!811055 e!1760120))

(declare-fun res!1163534 () Bool)

(assert (=> d!811055 (=> res!1163534 e!1760120)))

(declare-fun lt!996549 () Bool)

(assert (=> d!811055 (= res!1163534 (not lt!996549))))

(declare-fun e!1760119 () Bool)

(assert (=> d!811055 (= lt!996549 e!1760119)))

(declare-fun res!1163535 () Bool)

(assert (=> d!811055 (=> res!1163535 e!1760119)))

(assert (=> d!811055 (= res!1163535 ((_ is Nil!32288) testedP!183))))

(assert (=> d!811055 (= (isPrefix!2592 testedP!183 lt!996513) lt!996549)))

(declare-fun b!2788474 () Bool)

(declare-fun res!1163536 () Bool)

(declare-fun e!1760121 () Bool)

(assert (=> b!2788474 (=> (not res!1163536) (not e!1760121))))

(assert (=> b!2788474 (= res!1163536 (= (head!6175 testedP!183) (head!6175 lt!996513)))))

(declare-fun b!2788475 () Bool)

(assert (=> b!2788475 (= e!1760121 (isPrefix!2592 (tail!4407 testedP!183) (tail!4407 lt!996513)))))

(declare-fun b!2788476 () Bool)

(assert (=> b!2788476 (= e!1760120 (>= (size!25115 lt!996513) (size!25115 testedP!183)))))

(declare-fun b!2788473 () Bool)

(assert (=> b!2788473 (= e!1760119 e!1760121)))

(declare-fun res!1163537 () Bool)

(assert (=> b!2788473 (=> (not res!1163537) (not e!1760121))))

(assert (=> b!2788473 (= res!1163537 (not ((_ is Nil!32288) lt!996513)))))

(assert (= (and d!811055 (not res!1163535)) b!2788473))

(assert (= (and b!2788473 res!1163537) b!2788474))

(assert (= (and b!2788474 res!1163536) b!2788475))

(assert (= (and d!811055 (not res!1163534)) b!2788476))

(declare-fun m!3218939 () Bool)

(assert (=> b!2788474 m!3218939))

(assert (=> b!2788474 m!3218857))

(declare-fun m!3218941 () Bool)

(assert (=> b!2788475 m!3218941))

(assert (=> b!2788475 m!3218859))

(assert (=> b!2788475 m!3218941))

(assert (=> b!2788475 m!3218859))

(declare-fun m!3218943 () Bool)

(assert (=> b!2788475 m!3218943))

(assert (=> b!2788476 m!3218743))

(assert (=> b!2788476 m!3218785))

(assert (=> b!2788394 d!811055))

(declare-fun d!811057 () Bool)

(declare-fun e!1760123 () Bool)

(assert (=> d!811057 e!1760123))

(declare-fun res!1163538 () Bool)

(assert (=> d!811057 (=> res!1163538 e!1760123)))

(declare-fun lt!996550 () Bool)

(assert (=> d!811057 (= res!1163538 (not lt!996550))))

(declare-fun e!1760122 () Bool)

(assert (=> d!811057 (= lt!996550 e!1760122)))

(declare-fun res!1163539 () Bool)

(assert (=> d!811057 (=> res!1163539 e!1760122)))

(assert (=> d!811057 (= res!1163539 ((_ is Nil!32288) testedP!183))))

(assert (=> d!811057 (= (isPrefix!2592 testedP!183 lt!996508) lt!996550)))

(declare-fun b!2788478 () Bool)

(declare-fun res!1163540 () Bool)

(declare-fun e!1760124 () Bool)

(assert (=> b!2788478 (=> (not res!1163540) (not e!1760124))))

(assert (=> b!2788478 (= res!1163540 (= (head!6175 testedP!183) (head!6175 lt!996508)))))

(declare-fun b!2788479 () Bool)

(assert (=> b!2788479 (= e!1760124 (isPrefix!2592 (tail!4407 testedP!183) (tail!4407 lt!996508)))))

(declare-fun b!2788480 () Bool)

(assert (=> b!2788480 (= e!1760123 (>= (size!25115 lt!996508) (size!25115 testedP!183)))))

(declare-fun b!2788477 () Bool)

(assert (=> b!2788477 (= e!1760122 e!1760124)))

(declare-fun res!1163541 () Bool)

(assert (=> b!2788477 (=> (not res!1163541) (not e!1760124))))

(assert (=> b!2788477 (= res!1163541 (not ((_ is Nil!32288) lt!996508)))))

(assert (= (and d!811057 (not res!1163539)) b!2788477))

(assert (= (and b!2788477 res!1163541) b!2788478))

(assert (= (and b!2788478 res!1163540) b!2788479))

(assert (= (and d!811057 (not res!1163538)) b!2788480))

(assert (=> b!2788478 m!3218939))

(declare-fun m!3218945 () Bool)

(assert (=> b!2788478 m!3218945))

(assert (=> b!2788479 m!3218941))

(declare-fun m!3218947 () Bool)

(assert (=> b!2788479 m!3218947))

(assert (=> b!2788479 m!3218941))

(assert (=> b!2788479 m!3218947))

(declare-fun m!3218949 () Bool)

(assert (=> b!2788479 m!3218949))

(declare-fun m!3218951 () Bool)

(assert (=> b!2788480 m!3218951))

(assert (=> b!2788480 m!3218785))

(assert (=> b!2788394 d!811057))

(declare-fun d!811059 () Bool)

(assert (=> d!811059 (isPrefix!2592 testedP!183 (++!7973 testedP!183 testedSuffix!143))))

(declare-fun lt!996553 () Unit!46503)

(declare-fun choose!16385 (List!32388 List!32388) Unit!46503)

(assert (=> d!811059 (= lt!996553 (choose!16385 testedP!183 testedSuffix!143))))

(assert (=> d!811059 (= (lemmaConcatTwoListThenFirstIsPrefix!1702 testedP!183 testedSuffix!143) lt!996553)))

(declare-fun bs!511031 () Bool)

(assert (= bs!511031 d!811059))

(assert (=> bs!511031 m!3218783))

(assert (=> bs!511031 m!3218783))

(declare-fun m!3218953 () Bool)

(assert (=> bs!511031 m!3218953))

(declare-fun m!3218955 () Bool)

(assert (=> bs!511031 m!3218955))

(assert (=> b!2788394 d!811059))

(declare-fun d!811061 () Bool)

(declare-fun e!1760126 () Bool)

(assert (=> d!811061 e!1760126))

(declare-fun res!1163543 () Bool)

(assert (=> d!811061 (=> (not res!1163543) (not e!1760126))))

(declare-fun lt!996554 () List!32388)

(assert (=> d!811061 (= res!1163543 (= (content!4524 lt!996554) ((_ map or) (content!4524 lt!996510) (content!4524 lt!996500))))))

(declare-fun e!1760125 () List!32388)

(assert (=> d!811061 (= lt!996554 e!1760125)))

(declare-fun c!452759 () Bool)

(assert (=> d!811061 (= c!452759 ((_ is Nil!32288) lt!996510))))

(assert (=> d!811061 (= (++!7973 lt!996510 lt!996500) lt!996554)))

(declare-fun b!2788482 () Bool)

(assert (=> b!2788482 (= e!1760125 (Cons!32288 (h!37708 lt!996510) (++!7973 (t!228530 lt!996510) lt!996500)))))

(declare-fun b!2788484 () Bool)

(assert (=> b!2788484 (= e!1760126 (or (not (= lt!996500 Nil!32288)) (= lt!996554 lt!996510)))))

(declare-fun b!2788481 () Bool)

(assert (=> b!2788481 (= e!1760125 lt!996500)))

(declare-fun b!2788483 () Bool)

(declare-fun res!1163542 () Bool)

(assert (=> b!2788483 (=> (not res!1163542) (not e!1760126))))

(assert (=> b!2788483 (= res!1163542 (= (size!25115 lt!996554) (+ (size!25115 lt!996510) (size!25115 lt!996500))))))

(assert (= (and d!811061 c!452759) b!2788481))

(assert (= (and d!811061 (not c!452759)) b!2788482))

(assert (= (and d!811061 res!1163543) b!2788483))

(assert (= (and b!2788483 res!1163542) b!2788484))

(declare-fun m!3218957 () Bool)

(assert (=> d!811061 m!3218957))

(declare-fun m!3218959 () Bool)

(assert (=> d!811061 m!3218959))

(declare-fun m!3218961 () Bool)

(assert (=> d!811061 m!3218961))

(declare-fun m!3218963 () Bool)

(assert (=> b!2788482 m!3218963))

(declare-fun m!3218965 () Bool)

(assert (=> b!2788483 m!3218965))

(declare-fun m!3218967 () Bool)

(assert (=> b!2788483 m!3218967))

(declare-fun m!3218969 () Bool)

(assert (=> b!2788483 m!3218969))

(assert (=> b!2788386 d!811061))

(declare-fun d!811063 () Bool)

(assert (=> d!811063 (= (list!12151 (_2!19332 lt!996498)) (list!12152 (c!452743 (_2!19332 lt!996498))))))

(declare-fun bs!511032 () Bool)

(assert (= bs!511032 d!811063))

(declare-fun m!3218971 () Bool)

(assert (=> bs!511032 m!3218971))

(assert (=> b!2788386 d!811063))

(declare-fun d!811065 () Bool)

(assert (=> d!811065 (= (list!12151 (_1!19332 lt!996498)) (list!12152 (c!452743 (_1!19332 lt!996498))))))

(declare-fun bs!511033 () Bool)

(assert (= bs!511033 d!811065))

(declare-fun m!3218973 () Bool)

(assert (=> bs!511033 m!3218973))

(assert (=> b!2788386 d!811065))

(declare-fun d!811067 () Bool)

(declare-fun e!1760129 () Bool)

(assert (=> d!811067 e!1760129))

(declare-fun res!1163548 () Bool)

(assert (=> d!811067 (=> (not res!1163548) (not e!1760129))))

(declare-fun lt!996559 () tuple2!32688)

(assert (=> d!811067 (= res!1163548 (isBalanced!3059 (c!452743 (_1!19332 lt!996559))))))

(declare-datatypes ((tuple2!32690 0))(
  ( (tuple2!32691 (_1!19333 Conc!10025) (_2!19333 Conc!10025)) )
))
(declare-fun lt!996560 () tuple2!32690)

(assert (=> d!811067 (= lt!996559 (tuple2!32689 (BalanceConc!19665 (_1!19333 lt!996560)) (BalanceConc!19665 (_2!19333 lt!996560))))))

(declare-fun splitAt!154 (Conc!10025 Int) tuple2!32690)

(assert (=> d!811067 (= lt!996560 (splitAt!154 (c!452743 totalInput!758) testedPSize!143))))

(assert (=> d!811067 (isBalanced!3059 (c!452743 totalInput!758))))

(assert (=> d!811067 (= (splitAt!153 totalInput!758 testedPSize!143) lt!996559)))

(declare-fun b!2788489 () Bool)

(declare-fun res!1163549 () Bool)

(assert (=> b!2788489 (=> (not res!1163549) (not e!1760129))))

(assert (=> b!2788489 (= res!1163549 (isBalanced!3059 (c!452743 (_2!19332 lt!996559))))))

(declare-fun b!2788490 () Bool)

(declare-datatypes ((tuple2!32692 0))(
  ( (tuple2!32693 (_1!19334 List!32388) (_2!19334 List!32388)) )
))
(declare-fun splitAtIndex!62 (List!32388 Int) tuple2!32692)

(assert (=> b!2788490 (= e!1760129 (= (tuple2!32693 (list!12151 (_1!19332 lt!996559)) (list!12151 (_2!19332 lt!996559))) (splitAtIndex!62 (list!12151 totalInput!758) testedPSize!143)))))

(assert (= (and d!811067 res!1163548) b!2788489))

(assert (= (and b!2788489 res!1163549) b!2788490))

(declare-fun m!3218975 () Bool)

(assert (=> d!811067 m!3218975))

(declare-fun m!3218977 () Bool)

(assert (=> d!811067 m!3218977))

(assert (=> d!811067 m!3218925))

(declare-fun m!3218979 () Bool)

(assert (=> b!2788489 m!3218979))

(declare-fun m!3218981 () Bool)

(assert (=> b!2788490 m!3218981))

(declare-fun m!3218983 () Bool)

(assert (=> b!2788490 m!3218983))

(assert (=> b!2788490 m!3218775))

(assert (=> b!2788490 m!3218775))

(declare-fun m!3218985 () Bool)

(assert (=> b!2788490 m!3218985))

(assert (=> b!2788386 d!811067))

(declare-fun bs!511034 () Bool)

(declare-fun d!811069 () Bool)

(assert (= bs!511034 (and d!811069 d!811025)))

(declare-fun lambda!102321 () Int)

(assert (=> bs!511034 (not (= lambda!102321 lambda!102308))))

(declare-fun bs!511035 () Bool)

(declare-fun b!2788495 () Bool)

(assert (= bs!511035 (and b!2788495 d!811025)))

(declare-fun lambda!102322 () Int)

(assert (=> bs!511035 (not (= lambda!102322 lambda!102308))))

(declare-fun bs!511036 () Bool)

(assert (= bs!511036 (and b!2788495 d!811069)))

(assert (=> bs!511036 (not (= lambda!102322 lambda!102321))))

(declare-fun bs!511037 () Bool)

(declare-fun b!2788496 () Bool)

(assert (= bs!511037 (and b!2788496 d!811025)))

(declare-fun lambda!102323 () Int)

(assert (=> bs!511037 (not (= lambda!102323 lambda!102308))))

(declare-fun bs!511038 () Bool)

(assert (= bs!511038 (and b!2788496 d!811069)))

(assert (=> bs!511038 (not (= lambda!102323 lambda!102321))))

(declare-fun bs!511039 () Bool)

(assert (= bs!511039 (and b!2788496 b!2788495)))

(assert (=> bs!511039 (= lambda!102323 lambda!102322)))

(declare-fun bm!182525 () Bool)

(declare-datatypes ((List!32390 0))(
  ( (Nil!32290) (Cons!32290 (h!37710 Context!4750) (t!228532 List!32390)) )
))
(declare-fun call!182530 () List!32390)

(declare-fun toList!1859 ((InoxSet Context!4750)) List!32390)

(assert (=> bm!182525 (= call!182530 (toList!1859 z!3684))))

(declare-fun c!452770 () Bool)

(declare-fun call!182531 () Bool)

(declare-fun lt!996584 () List!32390)

(declare-fun bm!182526 () Bool)

(declare-fun lt!996583 () List!32390)

(declare-fun exists!996 (List!32390 Int) Bool)

(assert (=> bm!182526 (= call!182531 (exists!996 (ite c!452770 lt!996583 lt!996584) (ite c!452770 lambda!102322 lambda!102323)))))

(declare-fun lt!996580 () Bool)

(declare-datatypes ((Option!6274 0))(
  ( (None!6273) (Some!6273 (v!33896 List!32388)) )
))
(declare-fun isEmpty!18118 (Option!6274) Bool)

(declare-fun getLanguageWitness!204 ((InoxSet Context!4750)) Option!6274)

(assert (=> d!811069 (= lt!996580 (isEmpty!18118 (getLanguageWitness!204 z!3684)))))

(declare-fun forall!6664 ((InoxSet Context!4750) Int) Bool)

(assert (=> d!811069 (= lt!996580 (forall!6664 z!3684 lambda!102321))))

(declare-fun lt!996577 () Unit!46503)

(declare-fun e!1760136 () Unit!46503)

(assert (=> d!811069 (= lt!996577 e!1760136)))

(assert (=> d!811069 (= c!452770 (not (forall!6664 z!3684 lambda!102321)))))

(assert (=> d!811069 (= (lostCauseZipper!471 z!3684) lt!996580)))

(declare-fun Unit!46507 () Unit!46503)

(assert (=> b!2788496 (= e!1760136 Unit!46507)))

(assert (=> b!2788496 (= lt!996584 call!182530)))

(declare-fun lt!996581 () Unit!46503)

(declare-fun lemmaForallThenNotExists!96 (List!32390 Int) Unit!46503)

(assert (=> b!2788496 (= lt!996581 (lemmaForallThenNotExists!96 lt!996584 lambda!102321))))

(assert (=> b!2788496 (not call!182531)))

(declare-fun lt!996578 () Unit!46503)

(assert (=> b!2788496 (= lt!996578 lt!996581)))

(declare-fun Unit!46508 () Unit!46503)

(assert (=> b!2788495 (= e!1760136 Unit!46508)))

(assert (=> b!2788495 (= lt!996583 call!182530)))

(declare-fun lt!996579 () Unit!46503)

(declare-fun lemmaNotForallThenExists!96 (List!32390 Int) Unit!46503)

(assert (=> b!2788495 (= lt!996579 (lemmaNotForallThenExists!96 lt!996583 lambda!102321))))

(assert (=> b!2788495 call!182531))

(declare-fun lt!996582 () Unit!46503)

(assert (=> b!2788495 (= lt!996582 lt!996579)))

(assert (= (and d!811069 c!452770) b!2788495))

(assert (= (and d!811069 (not c!452770)) b!2788496))

(assert (= (or b!2788495 b!2788496) bm!182525))

(assert (= (or b!2788495 b!2788496) bm!182526))

(declare-fun m!3218987 () Bool)

(assert (=> d!811069 m!3218987))

(assert (=> d!811069 m!3218987))

(declare-fun m!3218989 () Bool)

(assert (=> d!811069 m!3218989))

(declare-fun m!3218991 () Bool)

(assert (=> d!811069 m!3218991))

(assert (=> d!811069 m!3218991))

(declare-fun m!3218993 () Bool)

(assert (=> bm!182525 m!3218993))

(declare-fun m!3218995 () Bool)

(assert (=> b!2788496 m!3218995))

(declare-fun m!3218997 () Bool)

(assert (=> b!2788495 m!3218997))

(declare-fun m!3218999 () Bool)

(assert (=> bm!182526 m!3218999))

(assert (=> b!2788395 d!811069))

(declare-fun d!811071 () Bool)

(assert (=> d!811071 (= testedSuffix!143 lt!996512)))

(declare-fun lt!996587 () Unit!46503)

(declare-fun choose!16386 (List!32388 List!32388 List!32388 List!32388 List!32388) Unit!46503)

(assert (=> d!811071 (= lt!996587 (choose!16386 testedP!183 testedSuffix!143 testedP!183 lt!996512 lt!996513))))

(assert (=> d!811071 (isPrefix!2592 testedP!183 lt!996513)))

(assert (=> d!811071 (= (lemmaSamePrefixThenSameSuffix!1172 testedP!183 testedSuffix!143 testedP!183 lt!996512 lt!996513) lt!996587)))

(declare-fun bs!511040 () Bool)

(assert (= bs!511040 d!811071))

(declare-fun m!3219001 () Bool)

(assert (=> bs!511040 m!3219001))

(assert (=> bs!511040 m!3218769))

(assert (=> b!2788395 d!811071))

(declare-fun d!811073 () Bool)

(declare-fun lt!996590 () List!32388)

(assert (=> d!811073 (= (++!7973 testedP!183 lt!996590) lt!996513)))

(declare-fun e!1760139 () List!32388)

(assert (=> d!811073 (= lt!996590 e!1760139)))

(declare-fun c!452773 () Bool)

(assert (=> d!811073 (= c!452773 ((_ is Cons!32288) testedP!183))))

(assert (=> d!811073 (>= (size!25115 lt!996513) (size!25115 testedP!183))))

(assert (=> d!811073 (= (getSuffix!1271 lt!996513 testedP!183) lt!996590)))

(declare-fun b!2788501 () Bool)

(assert (=> b!2788501 (= e!1760139 (getSuffix!1271 (tail!4407 lt!996513) (t!228530 testedP!183)))))

(declare-fun b!2788502 () Bool)

(assert (=> b!2788502 (= e!1760139 lt!996513)))

(assert (= (and d!811073 c!452773) b!2788501))

(assert (= (and d!811073 (not c!452773)) b!2788502))

(declare-fun m!3219003 () Bool)

(assert (=> d!811073 m!3219003))

(assert (=> d!811073 m!3218743))

(assert (=> d!811073 m!3218785))

(assert (=> b!2788501 m!3218859))

(assert (=> b!2788501 m!3218859))

(declare-fun m!3219005 () Bool)

(assert (=> b!2788501 m!3219005))

(assert (=> b!2788395 d!811073))

(declare-fun d!811075 () Bool)

(declare-fun lt!996593 () Int)

(assert (=> d!811075 (= lt!996593 (size!25115 (list!12151 (_1!19332 lt!996498))))))

(declare-fun size!25118 (Conc!10025) Int)

(assert (=> d!811075 (= lt!996593 (size!25118 (c!452743 (_1!19332 lt!996498))))))

(assert (=> d!811075 (= (size!25117 (_1!19332 lt!996498)) lt!996593)))

(declare-fun bs!511041 () Bool)

(assert (= bs!511041 d!811075))

(assert (=> bs!511041 m!3218825))

(assert (=> bs!511041 m!3218825))

(declare-fun m!3219007 () Bool)

(assert (=> bs!511041 m!3219007))

(declare-fun m!3219009 () Bool)

(assert (=> bs!511041 m!3219009))

(assert (=> b!2788405 d!811075))

(declare-fun d!811077 () Bool)

(declare-fun lt!996596 () C!16472)

(assert (=> d!811077 (= lt!996596 (apply!7558 (list!12151 totalInput!758) testedPSize!143))))

(declare-fun apply!7559 (Conc!10025 Int) C!16472)

(assert (=> d!811077 (= lt!996596 (apply!7559 (c!452743 totalInput!758) testedPSize!143))))

(declare-fun e!1760142 () Bool)

(assert (=> d!811077 e!1760142))

(declare-fun res!1163552 () Bool)

(assert (=> d!811077 (=> (not res!1163552) (not e!1760142))))

(assert (=> d!811077 (= res!1163552 (<= 0 testedPSize!143))))

(assert (=> d!811077 (= (apply!7557 totalInput!758 testedPSize!143) lt!996596)))

(declare-fun b!2788505 () Bool)

(assert (=> b!2788505 (= e!1760142 (< testedPSize!143 (size!25117 totalInput!758)))))

(assert (= (and d!811077 res!1163552) b!2788505))

(assert (=> d!811077 m!3218775))

(assert (=> d!811077 m!3218775))

(declare-fun m!3219011 () Bool)

(assert (=> d!811077 m!3219011))

(declare-fun m!3219013 () Bool)

(assert (=> d!811077 m!3219013))

(assert (=> b!2788505 m!3218829))

(assert (=> b!2788396 d!811077))

(declare-fun d!811079 () Bool)

(assert (=> d!811079 (= (head!6175 (drop!1729 lt!996513 testedPSize!143)) (apply!7558 lt!996513 testedPSize!143))))

(declare-fun lt!996599 () Unit!46503)

(declare-fun choose!16387 (List!32388 Int) Unit!46503)

(assert (=> d!811079 (= lt!996599 (choose!16387 lt!996513 testedPSize!143))))

(declare-fun e!1760145 () Bool)

(assert (=> d!811079 e!1760145))

(declare-fun res!1163555 () Bool)

(assert (=> d!811079 (=> (not res!1163555) (not e!1760145))))

(assert (=> d!811079 (= res!1163555 (>= testedPSize!143 0))))

(assert (=> d!811079 (= (lemmaDropApply!935 lt!996513 testedPSize!143) lt!996599)))

(declare-fun b!2788508 () Bool)

(assert (=> b!2788508 (= e!1760145 (< testedPSize!143 (size!25115 lt!996513)))))

(assert (= (and d!811079 res!1163555) b!2788508))

(assert (=> d!811079 m!3218809))

(assert (=> d!811079 m!3218809))

(assert (=> d!811079 m!3218811))

(assert (=> d!811079 m!3218819))

(declare-fun m!3219015 () Bool)

(assert (=> d!811079 m!3219015))

(assert (=> b!2788508 m!3218743))

(assert (=> b!2788396 d!811079))

(declare-fun d!811081 () Bool)

(declare-fun lt!996602 () C!16472)

(declare-fun contains!6007 (List!32388 C!16472) Bool)

(assert (=> d!811081 (contains!6007 lt!996513 lt!996602)))

(declare-fun e!1760151 () C!16472)

(assert (=> d!811081 (= lt!996602 e!1760151)))

(declare-fun c!452776 () Bool)

(assert (=> d!811081 (= c!452776 (= testedPSize!143 0))))

(declare-fun e!1760150 () Bool)

(assert (=> d!811081 e!1760150))

(declare-fun res!1163558 () Bool)

(assert (=> d!811081 (=> (not res!1163558) (not e!1760150))))

(assert (=> d!811081 (= res!1163558 (<= 0 testedPSize!143))))

(assert (=> d!811081 (= (apply!7558 lt!996513 testedPSize!143) lt!996602)))

(declare-fun b!2788515 () Bool)

(assert (=> b!2788515 (= e!1760150 (< testedPSize!143 (size!25115 lt!996513)))))

(declare-fun b!2788516 () Bool)

(assert (=> b!2788516 (= e!1760151 (head!6175 lt!996513))))

(declare-fun b!2788517 () Bool)

(assert (=> b!2788517 (= e!1760151 (apply!7558 (tail!4407 lt!996513) (- testedPSize!143 1)))))

(assert (= (and d!811081 res!1163558) b!2788515))

(assert (= (and d!811081 c!452776) b!2788516))

(assert (= (and d!811081 (not c!452776)) b!2788517))

(declare-fun m!3219017 () Bool)

(assert (=> d!811081 m!3219017))

(assert (=> b!2788515 m!3218743))

(assert (=> b!2788516 m!3218857))

(assert (=> b!2788517 m!3218859))

(assert (=> b!2788517 m!3218859))

(declare-fun m!3219019 () Bool)

(assert (=> b!2788517 m!3219019))

(assert (=> b!2788396 d!811081))

(declare-fun d!811083 () Bool)

(assert (=> d!811083 (and (= lt!996510 testedP!183) (= lt!996500 testedSuffix!143))))

(declare-fun lt!996605 () Unit!46503)

(declare-fun choose!16388 (List!32388 List!32388 List!32388 List!32388) Unit!46503)

(assert (=> d!811083 (= lt!996605 (choose!16388 lt!996510 lt!996500 testedP!183 testedSuffix!143))))

(assert (=> d!811083 (= (++!7973 lt!996510 lt!996500) (++!7973 testedP!183 testedSuffix!143))))

(assert (=> d!811083 (= (lemmaConcatSameAndSameSizesThenSameLists!362 lt!996510 lt!996500 testedP!183 testedSuffix!143) lt!996605)))

(declare-fun bs!511042 () Bool)

(assert (= bs!511042 d!811083))

(declare-fun m!3219021 () Bool)

(assert (=> bs!511042 m!3219021))

(assert (=> bs!511042 m!3218821))

(assert (=> bs!511042 m!3218783))

(assert (=> b!2788396 d!811083))

(declare-fun d!811085 () Bool)

(assert (=> d!811085 (= (head!6175 testedSuffix!143) (h!37708 testedSuffix!143))))

(assert (=> b!2788396 d!811085))

(declare-fun b!2788536 () Bool)

(declare-fun e!1760166 () List!32388)

(assert (=> b!2788536 (= e!1760166 (drop!1729 (t!228530 lt!996513) (- testedPSize!143 1)))))

(declare-fun b!2788537 () Bool)

(declare-fun e!1760165 () List!32388)

(assert (=> b!2788537 (= e!1760165 e!1760166)))

(declare-fun c!452786 () Bool)

(assert (=> b!2788537 (= c!452786 (<= testedPSize!143 0))))

(declare-fun b!2788538 () Bool)

(assert (=> b!2788538 (= e!1760165 Nil!32288)))

(declare-fun b!2788539 () Bool)

(assert (=> b!2788539 (= e!1760166 lt!996513)))

(declare-fun bm!182529 () Bool)

(declare-fun call!182534 () Int)

(assert (=> bm!182529 (= call!182534 (size!25115 lt!996513))))

(declare-fun b!2788540 () Bool)

(declare-fun e!1760164 () Bool)

(declare-fun lt!996608 () List!32388)

(declare-fun e!1760162 () Int)

(assert (=> b!2788540 (= e!1760164 (= (size!25115 lt!996608) e!1760162))))

(declare-fun c!452787 () Bool)

(assert (=> b!2788540 (= c!452787 (<= testedPSize!143 0))))

(declare-fun b!2788541 () Bool)

(declare-fun e!1760163 () Int)

(assert (=> b!2788541 (= e!1760163 (- call!182534 testedPSize!143))))

(declare-fun b!2788542 () Bool)

(assert (=> b!2788542 (= e!1760162 e!1760163)))

(declare-fun c!452785 () Bool)

(assert (=> b!2788542 (= c!452785 (>= testedPSize!143 call!182534))))

(declare-fun b!2788544 () Bool)

(assert (=> b!2788544 (= e!1760162 call!182534)))

(declare-fun b!2788543 () Bool)

(assert (=> b!2788543 (= e!1760163 0)))

(declare-fun d!811087 () Bool)

(assert (=> d!811087 e!1760164))

(declare-fun res!1163561 () Bool)

(assert (=> d!811087 (=> (not res!1163561) (not e!1760164))))

(assert (=> d!811087 (= res!1163561 (= ((_ map implies) (content!4524 lt!996608) (content!4524 lt!996513)) ((as const (InoxSet C!16472)) true)))))

(assert (=> d!811087 (= lt!996608 e!1760165)))

(declare-fun c!452788 () Bool)

(assert (=> d!811087 (= c!452788 ((_ is Nil!32288) lt!996513))))

(assert (=> d!811087 (= (drop!1729 lt!996513 testedPSize!143) lt!996608)))

(assert (= (and d!811087 c!452788) b!2788538))

(assert (= (and d!811087 (not c!452788)) b!2788537))

(assert (= (and b!2788537 c!452786) b!2788539))

(assert (= (and b!2788537 (not c!452786)) b!2788536))

(assert (= (and d!811087 res!1163561) b!2788540))

(assert (= (and b!2788540 c!452787) b!2788544))

(assert (= (and b!2788540 (not c!452787)) b!2788542))

(assert (= (and b!2788542 c!452785) b!2788543))

(assert (= (and b!2788542 (not c!452785)) b!2788541))

(assert (= (or b!2788544 b!2788542 b!2788541) bm!182529))

(declare-fun m!3219023 () Bool)

(assert (=> b!2788536 m!3219023))

(assert (=> bm!182529 m!3218743))

(declare-fun m!3219025 () Bool)

(assert (=> b!2788540 m!3219025))

(declare-fun m!3219027 () Bool)

(assert (=> d!811087 m!3219027))

(declare-fun m!3219029 () Bool)

(assert (=> d!811087 m!3219029))

(assert (=> b!2788396 d!811087))

(declare-fun d!811089 () Bool)

(assert (=> d!811089 (= (head!6175 (drop!1729 lt!996513 testedPSize!143)) (h!37708 (drop!1729 lt!996513 testedPSize!143)))))

(assert (=> b!2788396 d!811089))

(declare-fun d!811091 () Bool)

(declare-fun lt!996609 () Int)

(assert (=> d!811091 (= lt!996609 (size!25115 (list!12151 totalInput!758)))))

(assert (=> d!811091 (= lt!996609 (size!25118 (c!452743 totalInput!758)))))

(assert (=> d!811091 (= (size!25117 totalInput!758) lt!996609)))

(declare-fun bs!511043 () Bool)

(assert (= bs!511043 d!811091))

(assert (=> bs!511043 m!3218775))

(assert (=> bs!511043 m!3218775))

(declare-fun m!3219031 () Bool)

(assert (=> bs!511043 m!3219031))

(declare-fun m!3219033 () Bool)

(assert (=> bs!511043 m!3219033))

(assert (=> b!2788379 d!811091))

(declare-fun e!1760173 () Bool)

(declare-fun setNonEmpty!23701 () Bool)

(declare-fun tp!884720 () Bool)

(declare-fun setElem!23701 () Context!4750)

(declare-fun setRes!23701 () Bool)

(assert (=> setNonEmpty!23701 (= setRes!23701 (and tp!884720 (inv!43870 setElem!23701) e!1760173))))

(declare-fun setRest!23701 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23701 (= (_2!19329 (h!37707 mapDefault!17831)) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23701 true) setRest!23701))))

(declare-fun b!2788553 () Bool)

(declare-fun e!1760174 () Bool)

(declare-fun tp!884719 () Bool)

(assert (=> b!2788553 (= e!1760174 tp!884719)))

(declare-fun setIsEmpty!23701 () Bool)

(assert (=> setIsEmpty!23701 setRes!23701))

(declare-fun e!1760175 () Bool)

(assert (=> b!2788402 (= tp!884698 e!1760175)))

(declare-fun tp!884723 () Bool)

(declare-fun b!2788554 () Bool)

(declare-fun tp!884722 () Bool)

(assert (=> b!2788554 (= e!1760175 (and tp!884722 (inv!43870 (_2!19328 (_1!19329 (h!37707 mapDefault!17831)))) e!1760174 tp_is_empty!14127 setRes!23701 tp!884723))))

(declare-fun condSetEmpty!23701 () Bool)

(assert (=> b!2788554 (= condSetEmpty!23701 (= (_2!19329 (h!37707 mapDefault!17831)) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun b!2788555 () Bool)

(declare-fun tp!884721 () Bool)

(assert (=> b!2788555 (= e!1760173 tp!884721)))

(assert (= b!2788554 b!2788553))

(assert (= (and b!2788554 condSetEmpty!23701) setIsEmpty!23701))

(assert (= (and b!2788554 (not condSetEmpty!23701)) setNonEmpty!23701))

(assert (= setNonEmpty!23701 b!2788555))

(assert (= (and b!2788402 ((_ is Cons!32287) mapDefault!17831)) b!2788554))

(declare-fun m!3219035 () Bool)

(assert (=> setNonEmpty!23701 m!3219035))

(declare-fun m!3219037 () Bool)

(assert (=> b!2788554 m!3219037))

(declare-fun b!2788570 () Bool)

(declare-fun tp!884750 () Bool)

(declare-fun setRes!23706 () Bool)

(declare-fun e!1760189 () Bool)

(declare-fun mapValue!17835 () List!32387)

(declare-fun e!1760193 () Bool)

(declare-fun tp!884748 () Bool)

(assert (=> b!2788570 (= e!1760193 (and tp!884748 (inv!43870 (_2!19328 (_1!19329 (h!37707 mapValue!17835)))) e!1760189 tp_is_empty!14127 setRes!23706 tp!884750))))

(declare-fun condSetEmpty!23706 () Bool)

(assert (=> b!2788570 (= condSetEmpty!23706 (= (_2!19329 (h!37707 mapValue!17835)) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun b!2788571 () Bool)

(declare-fun tp!884747 () Bool)

(assert (=> b!2788571 (= e!1760189 tp!884747)))

(declare-fun setElem!23706 () Context!4750)

(declare-fun setNonEmpty!23706 () Bool)

(declare-fun e!1760188 () Bool)

(declare-fun tp!884754 () Bool)

(assert (=> setNonEmpty!23706 (= setRes!23706 (and tp!884754 (inv!43870 setElem!23706) e!1760188))))

(declare-fun setRest!23706 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23706 (= (_2!19329 (h!37707 mapValue!17835)) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23706 true) setRest!23706))))

(declare-fun b!2788572 () Bool)

(declare-fun e!1760192 () Bool)

(declare-fun tp!884746 () Bool)

(assert (=> b!2788572 (= e!1760192 tp!884746)))

(declare-fun mapIsEmpty!17835 () Bool)

(declare-fun mapRes!17835 () Bool)

(assert (=> mapIsEmpty!17835 mapRes!17835))

(declare-fun setRes!23707 () Bool)

(declare-fun b!2788573 () Bool)

(declare-fun tp!884753 () Bool)

(declare-fun mapDefault!17835 () List!32387)

(declare-fun e!1760191 () Bool)

(declare-fun tp!884756 () Bool)

(declare-fun e!1760190 () Bool)

(assert (=> b!2788573 (= e!1760190 (and tp!884753 (inv!43870 (_2!19328 (_1!19329 (h!37707 mapDefault!17835)))) e!1760191 tp_is_empty!14127 setRes!23707 tp!884756))))

(declare-fun condSetEmpty!23707 () Bool)

(assert (=> b!2788573 (= condSetEmpty!23707 (= (_2!19329 (h!37707 mapDefault!17835)) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun condMapEmpty!17835 () Bool)

(assert (=> mapNonEmpty!17831 (= condMapEmpty!17835 (= mapRest!17832 ((as const (Array (_ BitVec 32) List!32387)) mapDefault!17835)))))

(assert (=> mapNonEmpty!17831 (= tp!884701 (and e!1760190 mapRes!17835))))

(declare-fun setIsEmpty!23706 () Bool)

(assert (=> setIsEmpty!23706 setRes!23706))

(declare-fun b!2788574 () Bool)

(declare-fun tp!884749 () Bool)

(assert (=> b!2788574 (= e!1760188 tp!884749)))

(declare-fun b!2788575 () Bool)

(declare-fun tp!884755 () Bool)

(assert (=> b!2788575 (= e!1760191 tp!884755)))

(declare-fun tp!884751 () Bool)

(declare-fun setElem!23707 () Context!4750)

(declare-fun setNonEmpty!23707 () Bool)

(assert (=> setNonEmpty!23707 (= setRes!23707 (and tp!884751 (inv!43870 setElem!23707) e!1760192))))

(declare-fun setRest!23707 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23707 (= (_2!19329 (h!37707 mapDefault!17835)) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23707 true) setRest!23707))))

(declare-fun setIsEmpty!23707 () Bool)

(assert (=> setIsEmpty!23707 setRes!23707))

(declare-fun mapNonEmpty!17835 () Bool)

(declare-fun tp!884752 () Bool)

(assert (=> mapNonEmpty!17835 (= mapRes!17835 (and tp!884752 e!1760193))))

(declare-fun mapKey!17835 () (_ BitVec 32))

(declare-fun mapRest!17835 () (Array (_ BitVec 32) List!32387))

(assert (=> mapNonEmpty!17835 (= mapRest!17832 (store mapRest!17835 mapKey!17835 mapValue!17835))))

(assert (= (and mapNonEmpty!17831 condMapEmpty!17835) mapIsEmpty!17835))

(assert (= (and mapNonEmpty!17831 (not condMapEmpty!17835)) mapNonEmpty!17835))

(assert (= b!2788570 b!2788571))

(assert (= (and b!2788570 condSetEmpty!23706) setIsEmpty!23706))

(assert (= (and b!2788570 (not condSetEmpty!23706)) setNonEmpty!23706))

(assert (= setNonEmpty!23706 b!2788574))

(assert (= (and mapNonEmpty!17835 ((_ is Cons!32287) mapValue!17835)) b!2788570))

(assert (= b!2788573 b!2788575))

(assert (= (and b!2788573 condSetEmpty!23707) setIsEmpty!23707))

(assert (= (and b!2788573 (not condSetEmpty!23707)) setNonEmpty!23707))

(assert (= setNonEmpty!23707 b!2788572))

(assert (= (and mapNonEmpty!17831 ((_ is Cons!32287) mapDefault!17835)) b!2788573))

(declare-fun m!3219039 () Bool)

(assert (=> mapNonEmpty!17835 m!3219039))

(declare-fun m!3219041 () Bool)

(assert (=> setNonEmpty!23707 m!3219041))

(declare-fun m!3219043 () Bool)

(assert (=> setNonEmpty!23706 m!3219043))

(declare-fun m!3219045 () Bool)

(assert (=> b!2788573 m!3219045))

(declare-fun m!3219047 () Bool)

(assert (=> b!2788570 m!3219047))

(declare-fun e!1760194 () Bool)

(declare-fun setElem!23708 () Context!4750)

(declare-fun setNonEmpty!23708 () Bool)

(declare-fun tp!884758 () Bool)

(declare-fun setRes!23708 () Bool)

(assert (=> setNonEmpty!23708 (= setRes!23708 (and tp!884758 (inv!43870 setElem!23708) e!1760194))))

(declare-fun setRest!23708 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23708 (= (_2!19329 (h!37707 mapValue!17831)) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23708 true) setRest!23708))))

(declare-fun b!2788576 () Bool)

(declare-fun e!1760195 () Bool)

(declare-fun tp!884757 () Bool)

(assert (=> b!2788576 (= e!1760195 tp!884757)))

(declare-fun setIsEmpty!23708 () Bool)

(assert (=> setIsEmpty!23708 setRes!23708))

(declare-fun e!1760196 () Bool)

(assert (=> mapNonEmpty!17831 (= tp!884691 e!1760196)))

(declare-fun tp!884761 () Bool)

(declare-fun tp!884760 () Bool)

(declare-fun b!2788577 () Bool)

(assert (=> b!2788577 (= e!1760196 (and tp!884760 (inv!43870 (_2!19328 (_1!19329 (h!37707 mapValue!17831)))) e!1760195 tp_is_empty!14127 setRes!23708 tp!884761))))

(declare-fun condSetEmpty!23708 () Bool)

(assert (=> b!2788577 (= condSetEmpty!23708 (= (_2!19329 (h!37707 mapValue!17831)) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun b!2788578 () Bool)

(declare-fun tp!884759 () Bool)

(assert (=> b!2788578 (= e!1760194 tp!884759)))

(assert (= b!2788577 b!2788576))

(assert (= (and b!2788577 condSetEmpty!23708) setIsEmpty!23708))

(assert (= (and b!2788577 (not condSetEmpty!23708)) setNonEmpty!23708))

(assert (= setNonEmpty!23708 b!2788578))

(assert (= (and mapNonEmpty!17831 ((_ is Cons!32287) mapValue!17831)) b!2788577))

(declare-fun m!3219049 () Bool)

(assert (=> setNonEmpty!23708 m!3219049))

(declare-fun m!3219051 () Bool)

(assert (=> b!2788577 m!3219051))

(declare-fun b!2788587 () Bool)

(declare-fun tp!884768 () Bool)

(declare-fun tp!884769 () Bool)

(declare-fun e!1760201 () Bool)

(assert (=> b!2788587 (= e!1760201 (and (inv!43871 (left!24495 (c!452743 totalInput!758))) tp!884769 (inv!43871 (right!24825 (c!452743 totalInput!758))) tp!884768))))

(declare-fun b!2788589 () Bool)

(declare-fun e!1760202 () Bool)

(declare-fun tp!884770 () Bool)

(assert (=> b!2788589 (= e!1760202 tp!884770)))

(declare-fun b!2788588 () Bool)

(declare-fun inv!43874 (IArray!20055) Bool)

(assert (=> b!2788588 (= e!1760201 (and (inv!43874 (xs!13136 (c!452743 totalInput!758))) e!1760202))))

(assert (=> b!2788409 (= tp!884700 (and (inv!43871 (c!452743 totalInput!758)) e!1760201))))

(assert (= (and b!2788409 ((_ is Node!10025) (c!452743 totalInput!758))) b!2788587))

(assert (= b!2788588 b!2788589))

(assert (= (and b!2788409 ((_ is Leaf!15272) (c!452743 totalInput!758))) b!2788588))

(declare-fun m!3219053 () Bool)

(assert (=> b!2788587 m!3219053))

(declare-fun m!3219055 () Bool)

(assert (=> b!2788587 m!3219055))

(declare-fun m!3219057 () Bool)

(assert (=> b!2788588 m!3219057))

(assert (=> b!2788409 m!3218789))

(declare-fun condSetEmpty!23711 () Bool)

(assert (=> setNonEmpty!23698 (= condSetEmpty!23711 (= setRest!23698 ((as const (Array Context!4750 Bool)) false)))))

(declare-fun setRes!23711 () Bool)

(assert (=> setNonEmpty!23698 (= tp!884702 setRes!23711)))

(declare-fun setIsEmpty!23711 () Bool)

(assert (=> setIsEmpty!23711 setRes!23711))

(declare-fun setNonEmpty!23711 () Bool)

(declare-fun e!1760205 () Bool)

(declare-fun setElem!23711 () Context!4750)

(declare-fun tp!884776 () Bool)

(assert (=> setNonEmpty!23711 (= setRes!23711 (and tp!884776 (inv!43870 setElem!23711) e!1760205))))

(declare-fun setRest!23711 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23711 (= setRest!23698 ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23711 true) setRest!23711))))

(declare-fun b!2788594 () Bool)

(declare-fun tp!884775 () Bool)

(assert (=> b!2788594 (= e!1760205 tp!884775)))

(assert (= (and setNonEmpty!23698 condSetEmpty!23711) setIsEmpty!23711))

(assert (= (and setNonEmpty!23698 (not condSetEmpty!23711)) setNonEmpty!23711))

(assert (= setNonEmpty!23711 b!2788594))

(declare-fun m!3219059 () Bool)

(assert (=> setNonEmpty!23711 m!3219059))

(declare-fun e!1760218 () Bool)

(declare-fun tp!884802 () Bool)

(declare-fun b!2788609 () Bool)

(declare-fun e!1760221 () Bool)

(declare-fun setRes!23717 () Bool)

(declare-fun mapDefault!17838 () List!32389)

(assert (=> b!2788609 (= e!1760221 (and (inv!43870 (_1!19330 (_1!19331 (h!37709 mapDefault!17838)))) e!1760218 tp_is_empty!14127 setRes!23717 tp!884802))))

(declare-fun condSetEmpty!23717 () Bool)

(assert (=> b!2788609 (= condSetEmpty!23717 (= (_2!19331 (h!37709 mapDefault!17838)) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun setIsEmpty!23716 () Bool)

(assert (=> setIsEmpty!23716 setRes!23717))

(declare-fun setElem!23716 () Context!4750)

(declare-fun tp!884801 () Bool)

(declare-fun e!1760220 () Bool)

(declare-fun setNonEmpty!23716 () Bool)

(declare-fun setRes!23716 () Bool)

(assert (=> setNonEmpty!23716 (= setRes!23716 (and tp!884801 (inv!43870 setElem!23716) e!1760220))))

(declare-fun mapValue!17838 () List!32389)

(declare-fun setRest!23716 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23716 (= (_2!19331 (h!37709 mapValue!17838)) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23716 true) setRest!23716))))

(declare-fun b!2788610 () Bool)

(declare-fun tp!884795 () Bool)

(assert (=> b!2788610 (= e!1760218 tp!884795)))

(declare-fun b!2788611 () Bool)

(declare-fun e!1760223 () Bool)

(declare-fun tp!884796 () Bool)

(assert (=> b!2788611 (= e!1760223 tp!884796)))

(declare-fun tp!884797 () Bool)

(declare-fun setElem!23717 () Context!4750)

(declare-fun setNonEmpty!23717 () Bool)

(declare-fun e!1760222 () Bool)

(assert (=> setNonEmpty!23717 (= setRes!23717 (and tp!884797 (inv!43870 setElem!23717) e!1760222))))

(declare-fun setRest!23717 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23717 (= (_2!19331 (h!37709 mapDefault!17838)) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23717 true) setRest!23717))))

(declare-fun setIsEmpty!23717 () Bool)

(assert (=> setIsEmpty!23717 setRes!23716))

(declare-fun b!2788612 () Bool)

(declare-fun tp!884799 () Bool)

(assert (=> b!2788612 (= e!1760222 tp!884799)))

(declare-fun condMapEmpty!17838 () Bool)

(assert (=> mapNonEmpty!17832 (= condMapEmpty!17838 (= mapRest!17831 ((as const (Array (_ BitVec 32) List!32389)) mapDefault!17838)))))

(declare-fun mapRes!17838 () Bool)

(assert (=> mapNonEmpty!17832 (= tp!884707 (and e!1760221 mapRes!17838))))

(declare-fun mapIsEmpty!17838 () Bool)

(assert (=> mapIsEmpty!17838 mapRes!17838))

(declare-fun b!2788613 () Bool)

(declare-fun tp!884803 () Bool)

(assert (=> b!2788613 (= e!1760220 tp!884803)))

(declare-fun mapNonEmpty!17838 () Bool)

(declare-fun tp!884800 () Bool)

(declare-fun e!1760219 () Bool)

(assert (=> mapNonEmpty!17838 (= mapRes!17838 (and tp!884800 e!1760219))))

(declare-fun mapRest!17838 () (Array (_ BitVec 32) List!32389))

(declare-fun mapKey!17838 () (_ BitVec 32))

(assert (=> mapNonEmpty!17838 (= mapRest!17831 (store mapRest!17838 mapKey!17838 mapValue!17838))))

(declare-fun b!2788614 () Bool)

(declare-fun tp!884798 () Bool)

(assert (=> b!2788614 (= e!1760219 (and (inv!43870 (_1!19330 (_1!19331 (h!37709 mapValue!17838)))) e!1760223 tp_is_empty!14127 setRes!23716 tp!884798))))

(declare-fun condSetEmpty!23716 () Bool)

(assert (=> b!2788614 (= condSetEmpty!23716 (= (_2!19331 (h!37709 mapValue!17838)) ((as const (Array Context!4750 Bool)) false)))))

(assert (= (and mapNonEmpty!17832 condMapEmpty!17838) mapIsEmpty!17838))

(assert (= (and mapNonEmpty!17832 (not condMapEmpty!17838)) mapNonEmpty!17838))

(assert (= b!2788614 b!2788611))

(assert (= (and b!2788614 condSetEmpty!23716) setIsEmpty!23717))

(assert (= (and b!2788614 (not condSetEmpty!23716)) setNonEmpty!23716))

(assert (= setNonEmpty!23716 b!2788613))

(assert (= (and mapNonEmpty!17838 ((_ is Cons!32289) mapValue!17838)) b!2788614))

(assert (= b!2788609 b!2788610))

(assert (= (and b!2788609 condSetEmpty!23717) setIsEmpty!23716))

(assert (= (and b!2788609 (not condSetEmpty!23717)) setNonEmpty!23717))

(assert (= setNonEmpty!23717 b!2788612))

(assert (= (and mapNonEmpty!17832 ((_ is Cons!32289) mapDefault!17838)) b!2788609))

(declare-fun m!3219061 () Bool)

(assert (=> mapNonEmpty!17838 m!3219061))

(declare-fun m!3219063 () Bool)

(assert (=> setNonEmpty!23716 m!3219063))

(declare-fun m!3219065 () Bool)

(assert (=> b!2788614 m!3219065))

(declare-fun m!3219067 () Bool)

(assert (=> setNonEmpty!23717 m!3219067))

(declare-fun m!3219069 () Bool)

(assert (=> b!2788609 m!3219069))

(declare-fun setIsEmpty!23720 () Bool)

(declare-fun setRes!23720 () Bool)

(assert (=> setIsEmpty!23720 setRes!23720))

(declare-fun b!2788624 () Bool)

(declare-fun e!1760232 () Bool)

(declare-fun tp!884814 () Bool)

(assert (=> b!2788624 (= e!1760232 tp!884814)))

(declare-fun e!1760230 () Bool)

(declare-fun tp!884812 () Bool)

(declare-fun e!1760231 () Bool)

(declare-fun b!2788625 () Bool)

(assert (=> b!2788625 (= e!1760231 (and (inv!43870 (_1!19330 (_1!19331 (h!37709 mapValue!17832)))) e!1760230 tp_is_empty!14127 setRes!23720 tp!884812))))

(declare-fun condSetEmpty!23720 () Bool)

(assert (=> b!2788625 (= condSetEmpty!23720 (= (_2!19331 (h!37709 mapValue!17832)) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun tp!884813 () Bool)

(declare-fun setNonEmpty!23720 () Bool)

(declare-fun setElem!23720 () Context!4750)

(assert (=> setNonEmpty!23720 (= setRes!23720 (and tp!884813 (inv!43870 setElem!23720) e!1760232))))

(declare-fun setRest!23720 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23720 (= (_2!19331 (h!37709 mapValue!17832)) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23720 true) setRest!23720))))

(declare-fun b!2788623 () Bool)

(declare-fun tp!884815 () Bool)

(assert (=> b!2788623 (= e!1760230 tp!884815)))

(assert (=> mapNonEmpty!17832 (= tp!884697 e!1760231)))

(assert (= b!2788625 b!2788623))

(assert (= (and b!2788625 condSetEmpty!23720) setIsEmpty!23720))

(assert (= (and b!2788625 (not condSetEmpty!23720)) setNonEmpty!23720))

(assert (= setNonEmpty!23720 b!2788624))

(assert (= (and mapNonEmpty!17832 ((_ is Cons!32289) mapValue!17832)) b!2788625))

(declare-fun m!3219071 () Bool)

(assert (=> b!2788625 m!3219071))

(declare-fun m!3219073 () Bool)

(assert (=> setNonEmpty!23720 m!3219073))

(declare-fun setIsEmpty!23721 () Bool)

(declare-fun setRes!23721 () Bool)

(assert (=> setIsEmpty!23721 setRes!23721))

(declare-fun b!2788627 () Bool)

(declare-fun e!1760235 () Bool)

(declare-fun tp!884818 () Bool)

(assert (=> b!2788627 (= e!1760235 tp!884818)))

(declare-fun e!1760233 () Bool)

(declare-fun e!1760234 () Bool)

(declare-fun b!2788628 () Bool)

(declare-fun tp!884816 () Bool)

(assert (=> b!2788628 (= e!1760234 (and (inv!43870 (_1!19330 (_1!19331 (h!37709 mapDefault!17832)))) e!1760233 tp_is_empty!14127 setRes!23721 tp!884816))))

(declare-fun condSetEmpty!23721 () Bool)

(assert (=> b!2788628 (= condSetEmpty!23721 (= (_2!19331 (h!37709 mapDefault!17832)) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun tp!884817 () Bool)

(declare-fun setElem!23721 () Context!4750)

(declare-fun setNonEmpty!23721 () Bool)

(assert (=> setNonEmpty!23721 (= setRes!23721 (and tp!884817 (inv!43870 setElem!23721) e!1760235))))

(declare-fun setRest!23721 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23721 (= (_2!19331 (h!37709 mapDefault!17832)) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23721 true) setRest!23721))))

(declare-fun b!2788626 () Bool)

(declare-fun tp!884819 () Bool)

(assert (=> b!2788626 (= e!1760233 tp!884819)))

(assert (=> b!2788390 (= tp!884695 e!1760234)))

(assert (= b!2788628 b!2788626))

(assert (= (and b!2788628 condSetEmpty!23721) setIsEmpty!23721))

(assert (= (and b!2788628 (not condSetEmpty!23721)) setNonEmpty!23721))

(assert (= setNonEmpty!23721 b!2788627))

(assert (= (and b!2788390 ((_ is Cons!32289) mapDefault!17832)) b!2788628))

(declare-fun m!3219075 () Bool)

(assert (=> b!2788628 m!3219075))

(declare-fun m!3219077 () Bool)

(assert (=> setNonEmpty!23721 m!3219077))

(declare-fun setIsEmpty!23722 () Bool)

(declare-fun setRes!23722 () Bool)

(assert (=> setIsEmpty!23722 setRes!23722))

(declare-fun b!2788630 () Bool)

(declare-fun e!1760238 () Bool)

(declare-fun tp!884822 () Bool)

(assert (=> b!2788630 (= e!1760238 tp!884822)))

(declare-fun b!2788631 () Bool)

(declare-fun e!1760236 () Bool)

(declare-fun tp!884820 () Bool)

(declare-fun e!1760237 () Bool)

(assert (=> b!2788631 (= e!1760237 (and (inv!43870 (_1!19330 (_1!19331 (h!37709 (zeroValue!4171 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890)))))))))) e!1760236 tp_is_empty!14127 setRes!23722 tp!884820))))

(declare-fun condSetEmpty!23722 () Bool)

(assert (=> b!2788631 (= condSetEmpty!23722 (= (_2!19331 (h!37709 (zeroValue!4171 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890)))))))) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun setElem!23722 () Context!4750)

(declare-fun setNonEmpty!23722 () Bool)

(declare-fun tp!884821 () Bool)

(assert (=> setNonEmpty!23722 (= setRes!23722 (and tp!884821 (inv!43870 setElem!23722) e!1760238))))

(declare-fun setRest!23722 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23722 (= (_2!19331 (h!37709 (zeroValue!4171 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23722 true) setRest!23722))))

(declare-fun b!2788629 () Bool)

(declare-fun tp!884823 () Bool)

(assert (=> b!2788629 (= e!1760236 tp!884823)))

(assert (=> b!2788407 (= tp!884699 e!1760237)))

(assert (= b!2788631 b!2788629))

(assert (= (and b!2788631 condSetEmpty!23722) setIsEmpty!23722))

(assert (= (and b!2788631 (not condSetEmpty!23722)) setNonEmpty!23722))

(assert (= setNonEmpty!23722 b!2788630))

(assert (= (and b!2788407 ((_ is Cons!32289) (zeroValue!4171 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890)))))))) b!2788631))

(declare-fun m!3219079 () Bool)

(assert (=> b!2788631 m!3219079))

(declare-fun m!3219081 () Bool)

(assert (=> setNonEmpty!23722 m!3219081))

(declare-fun setIsEmpty!23723 () Bool)

(declare-fun setRes!23723 () Bool)

(assert (=> setIsEmpty!23723 setRes!23723))

(declare-fun b!2788633 () Bool)

(declare-fun e!1760241 () Bool)

(declare-fun tp!884826 () Bool)

(assert (=> b!2788633 (= e!1760241 tp!884826)))

(declare-fun tp!884824 () Bool)

(declare-fun e!1760239 () Bool)

(declare-fun b!2788634 () Bool)

(declare-fun e!1760240 () Bool)

(assert (=> b!2788634 (= e!1760240 (and (inv!43870 (_1!19330 (_1!19331 (h!37709 (minValue!4171 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890)))))))))) e!1760239 tp_is_empty!14127 setRes!23723 tp!884824))))

(declare-fun condSetEmpty!23723 () Bool)

(assert (=> b!2788634 (= condSetEmpty!23723 (= (_2!19331 (h!37709 (minValue!4171 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890)))))))) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun tp!884825 () Bool)

(declare-fun setNonEmpty!23723 () Bool)

(declare-fun setElem!23723 () Context!4750)

(assert (=> setNonEmpty!23723 (= setRes!23723 (and tp!884825 (inv!43870 setElem!23723) e!1760241))))

(declare-fun setRest!23723 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23723 (= (_2!19331 (h!37709 (minValue!4171 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23723 true) setRest!23723))))

(declare-fun b!2788632 () Bool)

(declare-fun tp!884827 () Bool)

(assert (=> b!2788632 (= e!1760239 tp!884827)))

(assert (=> b!2788407 (= tp!884708 e!1760240)))

(assert (= b!2788634 b!2788632))

(assert (= (and b!2788634 condSetEmpty!23723) setIsEmpty!23723))

(assert (= (and b!2788634 (not condSetEmpty!23723)) setNonEmpty!23723))

(assert (= setNonEmpty!23723 b!2788633))

(assert (= (and b!2788407 ((_ is Cons!32289) (minValue!4171 (v!33894 (underlying!8027 (v!33895 (underlying!8028 (cache!3961 cacheUp!890)))))))) b!2788634))

(declare-fun m!3219083 () Bool)

(assert (=> b!2788634 m!3219083))

(declare-fun m!3219085 () Bool)

(assert (=> setNonEmpty!23723 m!3219085))

(declare-fun b!2788639 () Bool)

(declare-fun e!1760244 () Bool)

(declare-fun tp!884830 () Bool)

(assert (=> b!2788639 (= e!1760244 (and tp_is_empty!14127 tp!884830))))

(assert (=> b!2788398 (= tp!884694 e!1760244)))

(assert (= (and b!2788398 ((_ is Cons!32288) (t!228530 testedP!183))) b!2788639))

(declare-fun setNonEmpty!23724 () Bool)

(declare-fun tp!884832 () Bool)

(declare-fun e!1760245 () Bool)

(declare-fun setElem!23724 () Context!4750)

(declare-fun setRes!23724 () Bool)

(assert (=> setNonEmpty!23724 (= setRes!23724 (and tp!884832 (inv!43870 setElem!23724) e!1760245))))

(declare-fun setRest!23724 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23724 (= (_2!19329 (h!37707 (zeroValue!4170 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23724 true) setRest!23724))))

(declare-fun b!2788640 () Bool)

(declare-fun e!1760246 () Bool)

(declare-fun tp!884831 () Bool)

(assert (=> b!2788640 (= e!1760246 tp!884831)))

(declare-fun setIsEmpty!23724 () Bool)

(assert (=> setIsEmpty!23724 setRes!23724))

(declare-fun e!1760247 () Bool)

(assert (=> b!2788399 (= tp!884706 e!1760247)))

(declare-fun tp!884835 () Bool)

(declare-fun b!2788641 () Bool)

(declare-fun tp!884834 () Bool)

(assert (=> b!2788641 (= e!1760247 (and tp!884834 (inv!43870 (_2!19328 (_1!19329 (h!37707 (zeroValue!4170 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009)))))))))) e!1760246 tp_is_empty!14127 setRes!23724 tp!884835))))

(declare-fun condSetEmpty!23724 () Bool)

(assert (=> b!2788641 (= condSetEmpty!23724 (= (_2!19329 (h!37707 (zeroValue!4170 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009)))))))) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun b!2788642 () Bool)

(declare-fun tp!884833 () Bool)

(assert (=> b!2788642 (= e!1760245 tp!884833)))

(assert (= b!2788641 b!2788640))

(assert (= (and b!2788641 condSetEmpty!23724) setIsEmpty!23724))

(assert (= (and b!2788641 (not condSetEmpty!23724)) setNonEmpty!23724))

(assert (= setNonEmpty!23724 b!2788642))

(assert (= (and b!2788399 ((_ is Cons!32287) (zeroValue!4170 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009)))))))) b!2788641))

(declare-fun m!3219087 () Bool)

(assert (=> setNonEmpty!23724 m!3219087))

(declare-fun m!3219089 () Bool)

(assert (=> b!2788641 m!3219089))

(declare-fun tp!884837 () Bool)

(declare-fun e!1760248 () Bool)

(declare-fun setElem!23725 () Context!4750)

(declare-fun setRes!23725 () Bool)

(declare-fun setNonEmpty!23725 () Bool)

(assert (=> setNonEmpty!23725 (= setRes!23725 (and tp!884837 (inv!43870 setElem!23725) e!1760248))))

(declare-fun setRest!23725 () (InoxSet Context!4750))

(assert (=> setNonEmpty!23725 (= (_2!19329 (h!37707 (minValue!4170 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4750 Bool)) false) setElem!23725 true) setRest!23725))))

(declare-fun b!2788643 () Bool)

(declare-fun e!1760249 () Bool)

(declare-fun tp!884836 () Bool)

(assert (=> b!2788643 (= e!1760249 tp!884836)))

(declare-fun setIsEmpty!23725 () Bool)

(assert (=> setIsEmpty!23725 setRes!23725))

(declare-fun e!1760250 () Bool)

(assert (=> b!2788399 (= tp!884693 e!1760250)))

(declare-fun tp!884839 () Bool)

(declare-fun b!2788644 () Bool)

(declare-fun tp!884840 () Bool)

(assert (=> b!2788644 (= e!1760250 (and tp!884839 (inv!43870 (_2!19328 (_1!19329 (h!37707 (minValue!4170 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009)))))))))) e!1760249 tp_is_empty!14127 setRes!23725 tp!884840))))

(declare-fun condSetEmpty!23725 () Bool)

(assert (=> b!2788644 (= condSetEmpty!23725 (= (_2!19329 (h!37707 (minValue!4170 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009)))))))) ((as const (Array Context!4750 Bool)) false)))))

(declare-fun b!2788645 () Bool)

(declare-fun tp!884838 () Bool)

(assert (=> b!2788645 (= e!1760248 tp!884838)))

(assert (= b!2788644 b!2788643))

(assert (= (and b!2788644 condSetEmpty!23725) setIsEmpty!23725))

(assert (= (and b!2788644 (not condSetEmpty!23725)) setNonEmpty!23725))

(assert (= setNonEmpty!23725 b!2788645))

(assert (= (and b!2788399 ((_ is Cons!32287) (minValue!4170 (v!33892 (underlying!8025 (v!33893 (underlying!8026 (cache!3960 cacheDown!1009)))))))) b!2788644))

(declare-fun m!3219091 () Bool)

(assert (=> setNonEmpty!23725 m!3219091))

(declare-fun m!3219093 () Bool)

(assert (=> b!2788644 m!3219093))

(declare-fun b!2788650 () Bool)

(declare-fun e!1760253 () Bool)

(declare-fun tp!884845 () Bool)

(declare-fun tp!884846 () Bool)

(assert (=> b!2788650 (= e!1760253 (and tp!884845 tp!884846))))

(assert (=> b!2788387 (= tp!884704 e!1760253)))

(assert (= (and b!2788387 ((_ is Cons!32286) (exprs!2875 setElem!23698))) b!2788650))

(declare-fun b!2788651 () Bool)

(declare-fun e!1760254 () Bool)

(declare-fun tp!884847 () Bool)

(assert (=> b!2788651 (= e!1760254 (and tp_is_empty!14127 tp!884847))))

(assert (=> b!2788406 (= tp!884690 e!1760254)))

(assert (= (and b!2788406 ((_ is Cons!32288) (t!228530 testedSuffix!143))) b!2788651))

(check-sat (not b!2788573) (not b!2788570) (not b!2788480) (not b!2788575) (not d!811021) (not b!2788644) (not d!811047) (not d!811053) (not b!2788434) (not b!2788435) (not d!811051) (not d!811075) (not b!2788641) (not b!2788455) (not b!2788613) (not d!811087) (not bm!182529) (not b!2788610) (not b_next!79595) (not b!2788458) (not d!811091) (not b!2788489) (not setNonEmpty!23716) (not b_next!79591) (not d!811065) (not b!2788454) (not b!2788629) (not d!811067) (not setNonEmpty!23708) (not b!2788505) (not b!2788651) (not b!2788574) (not setNonEmpty!23701) (not b!2788555) (not setNonEmpty!23723) (not b!2788650) (not setNonEmpty!23707) (not b!2788611) (not b!2788483) (not d!811073) (not setNonEmpty!23721) (not d!811027) (not b!2788478) (not setNonEmpty!23722) (not b!2788495) (not d!811029) (not b!2788468) (not b!2788501) (not b!2788470) (not b!2788536) (not b!2788578) (not b!2788640) (not b!2788540) (not d!811005) b_and!203629 (not b!2788496) (not b!2788571) (not b!2788465) (not b!2788577) (not b!2788625) (not b!2788459) (not b!2788554) (not b!2788462) (not b!2788436) (not b!2788482) (not b_next!79589) (not d!811079) (not b!2788632) (not d!811011) (not b!2788516) (not b!2788612) (not d!811017) (not b!2788415) (not b_next!79593) (not d!811025) (not d!811077) (not d!811081) (not b!2788643) (not b!2788628) (not d!811009) (not b!2788594) (not b!2788572) (not b!2788490) (not b!2788471) (not b!2788624) (not b!2788609) (not b!2788630) (not d!811071) (not b!2788451) (not b!2788517) (not setNonEmpty!23725) (not b!2788479) (not b!2788589) (not b!2788422) (not b!2788627) (not b!2788588) (not d!811015) (not setNonEmpty!23711) (not b!2788424) (not b!2788474) b_and!203623 (not b!2788508) (not b!2788626) (not b!2788409) (not b!2788645) (not b!2788642) (not b!2788447) (not mapNonEmpty!17838) (not setNonEmpty!23720) (not d!811003) tp_is_empty!14127 (not b!2788475) (not setNonEmpty!23724) (not b!2788576) (not d!811063) (not b!2788456) (not d!811061) (not mapNonEmpty!17835) (not b!2788631) (not d!811059) (not bm!182525) (not d!811001) (not setNonEmpty!23717) b_and!203625 (not b!2788634) (not b!2788476) (not b!2788515) b_and!203627 (not bm!182526) (not b!2788587) (not b!2788623) (not b!2788446) (not d!811033) (not setNonEmpty!23706) (not b!2788639) (not d!811069) (not b!2788450) (not b!2788553) (not b!2788633) (not b!2788614) (not d!811083))
(check-sat (not b_next!79595) (not b_next!79591) b_and!203629 (not b_next!79589) (not b_next!79593) b_and!203623 b_and!203625 b_and!203627)
