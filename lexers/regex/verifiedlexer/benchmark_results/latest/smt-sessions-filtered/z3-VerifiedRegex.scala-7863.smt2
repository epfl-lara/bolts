; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411826 () Bool)

(assert start!411826)

(declare-fun b!4286781 () Bool)

(declare-fun b_free!127103 () Bool)

(declare-fun b_next!127807 () Bool)

(assert (=> b!4286781 (= b_free!127103 (not b_next!127807))))

(declare-fun tp!1312946 () Bool)

(declare-fun b_and!338319 () Bool)

(assert (=> b!4286781 (= tp!1312946 b_and!338319)))

(declare-fun b!4286764 () Bool)

(declare-fun b_free!127105 () Bool)

(declare-fun b_next!127809 () Bool)

(assert (=> b!4286764 (= b_free!127105 (not b_next!127809))))

(declare-fun tp!1312958 () Bool)

(declare-fun b_and!338321 () Bool)

(assert (=> b!4286764 (= tp!1312958 b_and!338321)))

(declare-fun b!4286776 () Bool)

(declare-fun b_free!127107 () Bool)

(declare-fun b_next!127811 () Bool)

(assert (=> b!4286776 (= b_free!127107 (not b_next!127811))))

(declare-fun tp!1312952 () Bool)

(declare-fun b_and!338323 () Bool)

(assert (=> b!4286776 (= tp!1312952 b_and!338323)))

(declare-fun b!4286783 () Bool)

(declare-fun b_free!127109 () Bool)

(declare-fun b_next!127813 () Bool)

(assert (=> b!4286783 (= b_free!127109 (not b_next!127813))))

(declare-fun tp!1312939 () Bool)

(declare-fun b_and!338325 () Bool)

(assert (=> b!4286783 (= tp!1312939 b_and!338325)))

(declare-fun b!4286765 () Bool)

(declare-fun b_free!127111 () Bool)

(declare-fun b_next!127815 () Bool)

(assert (=> b!4286765 (= b_free!127111 (not b_next!127815))))

(declare-fun tp!1312947 () Bool)

(declare-fun b_and!338327 () Bool)

(assert (=> b!4286765 (= tp!1312947 b_and!338327)))

(declare-fun b!4286755 () Bool)

(declare-fun b_free!127113 () Bool)

(declare-fun b_next!127817 () Bool)

(assert (=> b!4286755 (= b_free!127113 (not b_next!127817))))

(declare-fun tp!1312965 () Bool)

(declare-fun b_and!338329 () Bool)

(assert (=> b!4286755 (= tp!1312965 b_and!338329)))

(declare-fun b!4286754 () Bool)

(declare-fun e!2662183 () Bool)

(declare-fun e!2662182 () Bool)

(declare-datatypes ((array!15484 0))(
  ( (array!15485 (arr!6912 (Array (_ BitVec 32) (_ BitVec 64))) (size!34856 (_ BitVec 32))) )
))
(declare-datatypes ((C!26048 0))(
  ( (C!26049 (val!15350 Int)) )
))
(declare-datatypes ((Regex!12925 0))(
  ( (ElementMatch!12925 (c!730159 C!26048)) (Concat!21244 (regOne!26362 Regex!12925) (regTwo!26362 Regex!12925)) (EmptyExpr!12925) (Star!12925 (reg!13254 Regex!12925)) (EmptyLang!12925) (Union!12925 (regOne!26363 Regex!12925) (regTwo!26363 Regex!12925)) )
))
(declare-datatypes ((List!47671 0))(
  ( (Nil!47547) (Cons!47547 (h!52967 Regex!12925) (t!354270 List!47671)) )
))
(declare-datatypes ((Context!5630 0))(
  ( (Context!5631 (exprs!3315 List!47671)) )
))
(declare-datatypes ((tuple3!5370 0))(
  ( (tuple3!5371 (_1!25677 Regex!12925) (_2!25677 Context!5630) (_3!3166 C!26048)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45022 0))(
  ( (tuple2!45023 (_1!25678 tuple3!5370) (_2!25678 (InoxSet Context!5630))) )
))
(declare-datatypes ((List!47672 0))(
  ( (Nil!47548) (Cons!47548 (h!52968 tuple2!45022) (t!354271 List!47672)) )
))
(declare-datatypes ((array!15486 0))(
  ( (array!15487 (arr!6913 (Array (_ BitVec 32) List!47672)) (size!34857 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8640 0))(
  ( (LongMapFixedSize!8641 (defaultEntry!4705 Int) (mask!12752 (_ BitVec 32)) (extraKeys!4569 (_ BitVec 32)) (zeroValue!4579 List!47672) (minValue!4579 List!47672) (_size!8683 (_ BitVec 32)) (_keys!4620 array!15484) (_values!4601 array!15486) (_vacant!4381 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17089 0))(
  ( (Cell!17090 (v!41450 LongMapFixedSize!8640)) )
))
(declare-datatypes ((MutLongMap!4320 0))(
  ( (LongMap!4320 (underlying!8869 Cell!17089)) (MutLongMapExt!4319 (__x!28985 Int)) )
))
(declare-fun lt!1516116 () MutLongMap!4320)

(get-info :version)

(assert (=> b!4286754 (= e!2662183 (and e!2662182 ((_ is LongMap!4320) lt!1516116)))))

(declare-datatypes ((Cell!17091 0))(
  ( (Cell!17092 (v!41451 MutLongMap!4320)) )
))
(declare-datatypes ((Hashable!4236 0))(
  ( (HashableExt!4235 (__x!28986 Int)) )
))
(declare-datatypes ((MutableMap!4226 0))(
  ( (MutableMapExt!4225 (__x!28987 Int)) (HashMap!4226 (underlying!8870 Cell!17091) (hashF!6268 Hashable!4236) (_size!8684 (_ BitVec 32)) (defaultValue!4397 Int)) )
))
(declare-datatypes ((CacheDown!2878 0))(
  ( (CacheDown!2879 (cache!4366 MutableMap!4226)) )
))
(declare-fun cacheDown!1163 () CacheDown!2878)

(assert (=> b!4286754 (= lt!1516116 (v!41451 (underlying!8870 (cache!4366 cacheDown!1163))))))

(declare-fun mapNonEmpty!19533 () Bool)

(declare-fun mapRes!19535 () Bool)

(declare-fun tp!1312964 () Bool)

(declare-fun tp!1312955 () Bool)

(assert (=> mapNonEmpty!19533 (= mapRes!19535 (and tp!1312964 tp!1312955))))

(declare-fun mapKey!19535 () (_ BitVec 32))

(declare-datatypes ((tuple2!45024 0))(
  ( (tuple2!45025 (_1!25679 Context!5630) (_2!25679 C!26048)) )
))
(declare-datatypes ((tuple2!45026 0))(
  ( (tuple2!45027 (_1!25680 tuple2!45024) (_2!25680 (InoxSet Context!5630))) )
))
(declare-datatypes ((List!47673 0))(
  ( (Nil!47549) (Cons!47549 (h!52969 tuple2!45026) (t!354272 List!47673)) )
))
(declare-fun mapRest!19533 () (Array (_ BitVec 32) List!47673))

(declare-fun mapValue!19534 () List!47673)

(declare-datatypes ((array!15488 0))(
  ( (array!15489 (arr!6914 (Array (_ BitVec 32) List!47673)) (size!34858 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8642 0))(
  ( (LongMapFixedSize!8643 (defaultEntry!4706 Int) (mask!12753 (_ BitVec 32)) (extraKeys!4570 (_ BitVec 32)) (zeroValue!4580 List!47673) (minValue!4580 List!47673) (_size!8685 (_ BitVec 32)) (_keys!4621 array!15484) (_values!4602 array!15488) (_vacant!4382 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17093 0))(
  ( (Cell!17094 (v!41452 LongMapFixedSize!8642)) )
))
(declare-datatypes ((MutLongMap!4321 0))(
  ( (LongMap!4321 (underlying!8871 Cell!17093)) (MutLongMapExt!4320 (__x!28988 Int)) )
))
(declare-datatypes ((Cell!17095 0))(
  ( (Cell!17096 (v!41453 MutLongMap!4321)) )
))
(declare-datatypes ((Hashable!4237 0))(
  ( (HashableExt!4236 (__x!28989 Int)) )
))
(declare-datatypes ((MutableMap!4227 0))(
  ( (MutableMapExt!4226 (__x!28990 Int)) (HashMap!4227 (underlying!8872 Cell!17095) (hashF!6269 Hashable!4237) (_size!8686 (_ BitVec 32)) (defaultValue!4398 Int)) )
))
(declare-datatypes ((CacheUp!2760 0))(
  ( (CacheUp!2761 (cache!4367 MutableMap!4227)) )
))
(declare-fun cacheUp!1044 () CacheUp!2760)

(assert (=> mapNonEmpty!19533 (= (arr!6914 (_values!4602 (v!41452 (underlying!8871 (v!41453 (underlying!8872 (cache!4367 cacheUp!1044))))))) (store mapRest!19533 mapKey!19535 mapValue!19534))))

(declare-fun mapNonEmpty!19534 () Bool)

(declare-fun mapRes!19534 () Bool)

(declare-fun tp!1312951 () Bool)

(declare-fun tp!1312957 () Bool)

(assert (=> mapNonEmpty!19534 (= mapRes!19534 (and tp!1312951 tp!1312957))))

(declare-fun mapKey!19533 () (_ BitVec 32))

(declare-fun mapValue!19535 () List!47672)

(declare-fun mapRest!19534 () (Array (_ BitVec 32) List!47672))

(assert (=> mapNonEmpty!19534 (= (arr!6913 (_values!4601 (v!41450 (underlying!8869 (v!41451 (underlying!8870 (cache!4366 cacheDown!1163))))))) (store mapRest!19534 mapKey!19533 mapValue!19535))))

(declare-datatypes ((tuple2!45028 0))(
  ( (tuple2!45029 (_1!25681 (InoxSet Context!5630)) (_2!25681 Int)) )
))
(declare-datatypes ((tuple2!45030 0))(
  ( (tuple2!45031 (_1!25682 tuple2!45028) (_2!25682 Int)) )
))
(declare-datatypes ((List!47674 0))(
  ( (Nil!47550) (Cons!47550 (h!52970 tuple2!45030) (t!354273 List!47674)) )
))
(declare-datatypes ((array!15490 0))(
  ( (array!15491 (arr!6915 (Array (_ BitVec 32) List!47674)) (size!34859 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8644 0))(
  ( (LongMapFixedSize!8645 (defaultEntry!4707 Int) (mask!12754 (_ BitVec 32)) (extraKeys!4571 (_ BitVec 32)) (zeroValue!4581 List!47674) (minValue!4581 List!47674) (_size!8687 (_ BitVec 32)) (_keys!4622 array!15484) (_values!4603 array!15490) (_vacant!4383 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17097 0))(
  ( (Cell!17098 (v!41454 LongMapFixedSize!8644)) )
))
(declare-datatypes ((MutLongMap!4322 0))(
  ( (LongMap!4322 (underlying!8873 Cell!17097)) (MutLongMapExt!4321 (__x!28991 Int)) )
))
(declare-datatypes ((Cell!17099 0))(
  ( (Cell!17100 (v!41455 MutLongMap!4322)) )
))
(declare-datatypes ((Hashable!4238 0))(
  ( (HashableExt!4237 (__x!28992 Int)) )
))
(declare-datatypes ((MutableMap!4228 0))(
  ( (MutableMapExt!4227 (__x!28993 Int)) (HashMap!4228 (underlying!8874 Cell!17099) (hashF!6270 Hashable!4238) (_size!8688 (_ BitVec 32)) (defaultValue!4399 Int)) )
))
(declare-datatypes ((List!47675 0))(
  ( (Nil!47551) (Cons!47551 (h!52971 C!26048) (t!354274 List!47675)) )
))
(declare-datatypes ((IArray!28795 0))(
  ( (IArray!28796 (innerList!14455 List!47675)) )
))
(declare-datatypes ((Conc!14367 0))(
  ( (Node!14367 (left!35362 Conc!14367) (right!35692 Conc!14367) (csize!28964 Int) (cheight!14578 Int)) (Leaf!22231 (xs!17673 IArray!28795) (csize!28965 Int)) (Empty!14367) )
))
(declare-datatypes ((BalanceConc!28224 0))(
  ( (BalanceConc!28225 (c!730160 Conc!14367)) )
))
(declare-datatypes ((CacheFindLongestMatch!422 0))(
  ( (CacheFindLongestMatch!423 (cache!4368 MutableMap!4228) (totalInput!4321 BalanceConc!28224)) )
))
(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!422)

(declare-fun tp!1312959 () Bool)

(declare-fun tp!1312945 () Bool)

(declare-fun e!2662193 () Bool)

(declare-fun e!2662207 () Bool)

(declare-fun array_inv!4951 (array!15484) Bool)

(declare-fun array_inv!4952 (array!15490) Bool)

(assert (=> b!4286755 (= e!2662193 (and tp!1312965 tp!1312959 tp!1312945 (array_inv!4951 (_keys!4622 (v!41454 (underlying!8873 (v!41455 (underlying!8874 (cache!4368 cacheFindLongestMatch!199))))))) (array_inv!4952 (_values!4603 (v!41454 (underlying!8873 (v!41455 (underlying!8874 (cache!4368 cacheFindLongestMatch!199))))))) e!2662207))))

(declare-fun b!4286756 () Bool)

(declare-fun e!2662199 () Bool)

(declare-fun tp!1312961 () Bool)

(declare-fun tp!1312963 () Bool)

(assert (=> b!4286756 (= e!2662199 (and tp!1312961 tp!1312963))))

(declare-fun b!4286757 () Bool)

(declare-fun e!2662204 () Bool)

(assert (=> b!4286757 (= e!2662182 e!2662204)))

(declare-fun b!4286758 () Bool)

(declare-fun e!2662195 () Bool)

(assert (=> b!4286758 (= e!2662195 e!2662193)))

(declare-fun b!4286759 () Bool)

(declare-fun res!1758581 () Bool)

(declare-fun e!2662203 () Bool)

(assert (=> b!4286759 (=> (not res!1758581) (not e!2662203))))

(declare-fun totalInput!1189 () BalanceConc!28224)

(assert (=> b!4286759 (= res!1758581 (= (totalInput!4321 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun b!4286760 () Bool)

(declare-fun e!2662184 () Bool)

(declare-fun e!2662198 () Bool)

(assert (=> b!4286760 (= e!2662184 e!2662198)))

(declare-fun b!4286761 () Bool)

(declare-fun e!2662178 () Bool)

(declare-fun tp!1312949 () Bool)

(assert (=> b!4286761 (= e!2662178 (and tp!1312949 mapRes!19534))))

(declare-fun condMapEmpty!19534 () Bool)

(declare-fun mapDefault!19535 () List!47672)

(assert (=> b!4286761 (= condMapEmpty!19534 (= (arr!6913 (_values!4601 (v!41450 (underlying!8869 (v!41451 (underlying!8870 (cache!4366 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47672)) mapDefault!19535)))))

(declare-fun b!4286762 () Bool)

(declare-fun e!2662197 () Bool)

(declare-fun input!6546 () BalanceConc!28224)

(declare-fun tp!1312944 () Bool)

(declare-fun inv!63010 (Conc!14367) Bool)

(assert (=> b!4286762 (= e!2662197 (and (inv!63010 (c!730160 input!6546)) tp!1312944))))

(declare-fun b!4286763 () Bool)

(declare-fun e!2662202 () Bool)

(declare-fun e!2662186 () Bool)

(assert (=> b!4286763 (= e!2662202 e!2662186)))

(declare-fun tp!1312953 () Bool)

(declare-fun e!2662205 () Bool)

(declare-fun tp!1312956 () Bool)

(declare-fun array_inv!4953 (array!15486) Bool)

(assert (=> b!4286764 (= e!2662205 (and tp!1312958 tp!1312956 tp!1312953 (array_inv!4951 (_keys!4620 (v!41450 (underlying!8869 (v!41451 (underlying!8870 (cache!4366 cacheDown!1163))))))) (array_inv!4953 (_values!4601 (v!41450 (underlying!8869 (v!41451 (underlying!8870 (cache!4366 cacheDown!1163))))))) e!2662178))))

(declare-fun e!2662189 () Bool)

(declare-fun e!2662187 () Bool)

(declare-fun tp!1312962 () Bool)

(declare-fun tp!1312954 () Bool)

(declare-fun array_inv!4954 (array!15488) Bool)

(assert (=> b!4286765 (= e!2662189 (and tp!1312947 tp!1312954 tp!1312962 (array_inv!4951 (_keys!4621 (v!41452 (underlying!8871 (v!41453 (underlying!8872 (cache!4367 cacheUp!1044))))))) (array_inv!4954 (_values!4602 (v!41452 (underlying!8871 (v!41453 (underlying!8872 (cache!4367 cacheUp!1044))))))) e!2662187))))

(declare-fun b!4286766 () Bool)

(declare-fun res!1758577 () Bool)

(assert (=> b!4286766 (=> (not res!1758577) (not e!2662203))))

(declare-fun valid!3353 (CacheDown!2878) Bool)

(assert (=> b!4286766 (= res!1758577 (valid!3353 cacheDown!1163))))

(declare-fun e!2662190 () Bool)

(declare-fun b!4286767 () Bool)

(declare-fun e!2662191 () Bool)

(declare-fun e!2662208 () Bool)

(declare-fun inv!63011 (BalanceConc!28224) Bool)

(assert (=> b!4286767 (= e!2662208 (and e!2662190 (inv!63011 (totalInput!4321 cacheFindLongestMatch!199)) e!2662191))))

(declare-fun b!4286768 () Bool)

(declare-fun e!2662177 () Bool)

(assert (=> b!4286768 (= e!2662177 e!2662195)))

(declare-fun b!4286769 () Bool)

(declare-fun e!2662206 () Bool)

(declare-fun e!2662185 () Bool)

(assert (=> b!4286769 (= e!2662206 e!2662185)))

(declare-fun b!4286770 () Bool)

(declare-fun e!2662200 () Bool)

(assert (=> b!4286770 (= e!2662200 (not true))))

(declare-fun e!2662179 () Bool)

(assert (=> b!4286770 e!2662179))

(declare-fun res!1758579 () Bool)

(assert (=> b!4286770 (=> (not res!1758579) (not e!2662179))))

(declare-fun lt!1516114 () List!47675)

(declare-fun sizeTr!330 (List!47675 Int) Int)

(declare-fun size!34860 (List!47675) Int)

(assert (=> b!4286770 (= res!1758579 (= (sizeTr!330 lt!1516114 0) (size!34860 lt!1516114)))))

(declare-datatypes ((Unit!66389 0))(
  ( (Unit!66390) )
))
(declare-fun lt!1516113 () Unit!66389)

(declare-fun lemmaSizeTrEqualsSize!329 (List!47675 Int) Unit!66389)

(assert (=> b!4286770 (= lt!1516113 (lemmaSizeTrEqualsSize!329 lt!1516114 0))))

(declare-fun e!2662201 () Bool)

(assert (=> b!4286770 e!2662201))

(declare-fun res!1758576 () Bool)

(assert (=> b!4286770 (=> (not res!1758576) (not e!2662201))))

(declare-datatypes ((tuple2!45032 0))(
  ( (tuple2!45033 (_1!25683 BalanceConc!28224) (_2!25683 BalanceConc!28224)) )
))
(declare-fun lt!1516119 () tuple2!45032)

(declare-datatypes ((tuple2!45034 0))(
  ( (tuple2!45035 (_1!25684 List!47675) (_2!25684 List!47675)) )
))
(declare-fun lt!1516115 () tuple2!45034)

(declare-fun list!17334 (BalanceConc!28224) List!47675)

(assert (=> b!4286770 (= res!1758576 (= (list!17334 (_1!25683 lt!1516119)) (_1!25684 lt!1516115)))))

(declare-fun r!15285 () Regex!12925)

(declare-fun findLongestMatch!1621 (Regex!12925 List!47675) tuple2!45034)

(assert (=> b!4286770 (= lt!1516115 (findLongestMatch!1621 r!15285 lt!1516114))))

(declare-fun lt!1516121 () (InoxSet Context!5630))

(declare-fun findLongestMatchZipperFastV2!16 ((InoxSet Context!5630) BalanceConc!28224 BalanceConc!28224) tuple2!45032)

(assert (=> b!4286770 (= lt!1516119 (findLongestMatchZipperFastV2!16 lt!1516121 input!6546 totalInput!1189))))

(declare-fun lt!1516117 () Unit!66389)

(declare-fun longestMatchV2SameAsRegex!15 (Regex!12925 (InoxSet Context!5630) BalanceConc!28224 BalanceConc!28224) Unit!66389)

(assert (=> b!4286770 (= lt!1516117 (longestMatchV2SameAsRegex!15 r!15285 lt!1516121 input!6546 totalInput!1189))))

(declare-fun focus!317 (Regex!12925) (InoxSet Context!5630))

(assert (=> b!4286770 (= lt!1516121 (focus!317 r!15285))))

(declare-fun b!4286771 () Bool)

(declare-fun res!1758580 () Bool)

(assert (=> b!4286771 (=> (not res!1758580) (not e!2662203))))

(declare-fun valid!3354 (CacheUp!2760) Bool)

(assert (=> b!4286771 (= res!1758580 (valid!3354 cacheUp!1044))))

(declare-fun b!4286772 () Bool)

(declare-fun tp_is_empty!23081 () Bool)

(assert (=> b!4286772 (= e!2662199 tp_is_empty!23081)))

(declare-fun b!4286773 () Bool)

(assert (=> b!4286773 (= e!2662186 e!2662189)))

(declare-fun b!4286774 () Bool)

(declare-fun res!1758575 () Bool)

(assert (=> b!4286774 (=> (not res!1758575) (not e!2662203))))

(declare-fun valid!3355 (CacheFindLongestMatch!422) Bool)

(assert (=> b!4286774 (= res!1758575 (valid!3355 cacheFindLongestMatch!199))))

(declare-fun b!4286775 () Bool)

(declare-fun tp!1312940 () Bool)

(assert (=> b!4286775 (= e!2662199 tp!1312940)))

(declare-fun e!2662188 () Bool)

(assert (=> b!4286776 (= e!2662198 (and e!2662188 tp!1312952))))

(declare-fun mapIsEmpty!19533 () Bool)

(assert (=> mapIsEmpty!19533 mapRes!19535))

(declare-fun b!4286777 () Bool)

(declare-fun tp!1312966 () Bool)

(assert (=> b!4286777 (= e!2662187 (and tp!1312966 mapRes!19535))))

(declare-fun condMapEmpty!19533 () Bool)

(declare-fun mapDefault!19534 () List!47673)

(assert (=> b!4286777 (= condMapEmpty!19533 (= (arr!6914 (_values!4602 (v!41452 (underlying!8871 (v!41453 (underlying!8872 (cache!4367 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47673)) mapDefault!19534)))))

(declare-fun mapIsEmpty!19534 () Bool)

(assert (=> mapIsEmpty!19534 mapRes!19534))

(declare-fun b!4286778 () Bool)

(assert (=> b!4286778 (= e!2662203 e!2662200)))

(declare-fun res!1758582 () Bool)

(assert (=> b!4286778 (=> (not res!1758582) (not e!2662200))))

(declare-fun isSuffix!1019 (List!47675 List!47675) Bool)

(assert (=> b!4286778 (= res!1758582 (isSuffix!1019 lt!1516114 (list!17334 totalInput!1189)))))

(assert (=> b!4286778 (= lt!1516114 (list!17334 input!6546))))

(declare-fun b!4286779 () Bool)

(declare-fun e!2662192 () Bool)

(declare-fun lt!1516120 () MutLongMap!4322)

(assert (=> b!4286779 (= e!2662192 (and e!2662177 ((_ is LongMap!4322) lt!1516120)))))

(assert (=> b!4286779 (= lt!1516120 (v!41455 (underlying!8874 (cache!4368 cacheFindLongestMatch!199))))))

(declare-fun b!4286780 () Bool)

(declare-fun tp!1312943 () Bool)

(assert (=> b!4286780 (= e!2662191 (and (inv!63010 (c!730160 (totalInput!4321 cacheFindLongestMatch!199))) tp!1312943))))

(assert (=> b!4286781 (= e!2662190 (and e!2662192 tp!1312946))))

(declare-fun b!4286782 () Bool)

(declare-fun tp!1312967 () Bool)

(declare-fun mapRes!19533 () Bool)

(assert (=> b!4286782 (= e!2662207 (and tp!1312967 mapRes!19533))))

(declare-fun condMapEmpty!19535 () Bool)

(declare-fun mapDefault!19533 () List!47674)

(assert (=> b!4286782 (= condMapEmpty!19535 (= (arr!6915 (_values!4603 (v!41454 (underlying!8873 (v!41455 (underlying!8874 (cache!4368 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47674)) mapDefault!19533)))))

(assert (=> b!4286783 (= e!2662185 (and e!2662183 tp!1312939))))

(declare-fun b!4286784 () Bool)

(declare-fun e!2662194 () Bool)

(declare-fun tp!1312950 () Bool)

(assert (=> b!4286784 (= e!2662194 (and (inv!63010 (c!730160 totalInput!1189)) tp!1312950))))

(declare-fun b!4286785 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!123 (Regex!12925 BalanceConc!28224 BalanceConc!28224) tuple2!45032)

(assert (=> b!4286785 (= e!2662179 (= (findLongestMatchWithZipperSequenceV2!123 r!15285 input!6546 totalInput!1189) lt!1516119))))

(declare-fun mapIsEmpty!19535 () Bool)

(assert (=> mapIsEmpty!19535 mapRes!19533))

(declare-fun b!4286786 () Bool)

(declare-fun tp!1312948 () Bool)

(declare-fun tp!1312942 () Bool)

(assert (=> b!4286786 (= e!2662199 (and tp!1312948 tp!1312942))))

(declare-fun res!1758578 () Bool)

(assert (=> start!411826 (=> (not res!1758578) (not e!2662203))))

(declare-fun validRegex!5847 (Regex!12925) Bool)

(assert (=> start!411826 (= res!1758578 (validRegex!5847 r!15285))))

(assert (=> start!411826 e!2662203))

(assert (=> start!411826 (and (inv!63011 totalInput!1189) e!2662194)))

(assert (=> start!411826 e!2662199))

(assert (=> start!411826 (and (inv!63011 input!6546) e!2662197)))

(declare-fun inv!63012 (CacheFindLongestMatch!422) Bool)

(assert (=> start!411826 (and (inv!63012 cacheFindLongestMatch!199) e!2662208)))

(declare-fun inv!63013 (CacheDown!2878) Bool)

(assert (=> start!411826 (and (inv!63013 cacheDown!1163) e!2662206)))

(declare-fun inv!63014 (CacheUp!2760) Bool)

(assert (=> start!411826 (and (inv!63014 cacheUp!1044) e!2662184)))

(declare-fun b!4286787 () Bool)

(assert (=> b!4286787 (= e!2662204 e!2662205)))

(declare-fun b!4286788 () Bool)

(assert (=> b!4286788 (= e!2662201 (= (list!17334 (_2!25683 lt!1516119)) (_2!25684 lt!1516115)))))

(declare-fun b!4286789 () Bool)

(declare-fun lt!1516118 () MutLongMap!4321)

(assert (=> b!4286789 (= e!2662188 (and e!2662202 ((_ is LongMap!4321) lt!1516118)))))

(assert (=> b!4286789 (= lt!1516118 (v!41453 (underlying!8872 (cache!4367 cacheUp!1044))))))

(declare-fun mapNonEmpty!19535 () Bool)

(declare-fun tp!1312960 () Bool)

(declare-fun tp!1312941 () Bool)

(assert (=> mapNonEmpty!19535 (= mapRes!19533 (and tp!1312960 tp!1312941))))

(declare-fun mapValue!19533 () List!47674)

(declare-fun mapRest!19535 () (Array (_ BitVec 32) List!47674))

(declare-fun mapKey!19534 () (_ BitVec 32))

(assert (=> mapNonEmpty!19535 (= (arr!6915 (_values!4603 (v!41454 (underlying!8873 (v!41455 (underlying!8874 (cache!4368 cacheFindLongestMatch!199))))))) (store mapRest!19535 mapKey!19534 mapValue!19533))))

(assert (= (and start!411826 res!1758578) b!4286771))

(assert (= (and b!4286771 res!1758580) b!4286766))

(assert (= (and b!4286766 res!1758577) b!4286774))

(assert (= (and b!4286774 res!1758575) b!4286759))

(assert (= (and b!4286759 res!1758581) b!4286778))

(assert (= (and b!4286778 res!1758582) b!4286770))

(assert (= (and b!4286770 res!1758576) b!4286788))

(assert (= (and b!4286770 res!1758579) b!4286785))

(assert (= start!411826 b!4286784))

(assert (= (and start!411826 ((_ is ElementMatch!12925) r!15285)) b!4286772))

(assert (= (and start!411826 ((_ is Concat!21244) r!15285)) b!4286756))

(assert (= (and start!411826 ((_ is Star!12925) r!15285)) b!4286775))

(assert (= (and start!411826 ((_ is Union!12925) r!15285)) b!4286786))

(assert (= start!411826 b!4286762))

(assert (= (and b!4286782 condMapEmpty!19535) mapIsEmpty!19535))

(assert (= (and b!4286782 (not condMapEmpty!19535)) mapNonEmpty!19535))

(assert (= b!4286755 b!4286782))

(assert (= b!4286758 b!4286755))

(assert (= b!4286768 b!4286758))

(assert (= (and b!4286779 ((_ is LongMap!4322) (v!41455 (underlying!8874 (cache!4368 cacheFindLongestMatch!199))))) b!4286768))

(assert (= b!4286781 b!4286779))

(assert (= (and b!4286767 ((_ is HashMap!4228) (cache!4368 cacheFindLongestMatch!199))) b!4286781))

(assert (= b!4286767 b!4286780))

(assert (= start!411826 b!4286767))

(assert (= (and b!4286761 condMapEmpty!19534) mapIsEmpty!19534))

(assert (= (and b!4286761 (not condMapEmpty!19534)) mapNonEmpty!19534))

(assert (= b!4286764 b!4286761))

(assert (= b!4286787 b!4286764))

(assert (= b!4286757 b!4286787))

(assert (= (and b!4286754 ((_ is LongMap!4320) (v!41451 (underlying!8870 (cache!4366 cacheDown!1163))))) b!4286757))

(assert (= b!4286783 b!4286754))

(assert (= (and b!4286769 ((_ is HashMap!4226) (cache!4366 cacheDown!1163))) b!4286783))

(assert (= start!411826 b!4286769))

(assert (= (and b!4286777 condMapEmpty!19533) mapIsEmpty!19533))

(assert (= (and b!4286777 (not condMapEmpty!19533)) mapNonEmpty!19533))

(assert (= b!4286765 b!4286777))

(assert (= b!4286773 b!4286765))

(assert (= b!4286763 b!4286773))

(assert (= (and b!4286789 ((_ is LongMap!4321) (v!41453 (underlying!8872 (cache!4367 cacheUp!1044))))) b!4286763))

(assert (= b!4286776 b!4286789))

(assert (= (and b!4286760 ((_ is HashMap!4227) (cache!4367 cacheUp!1044))) b!4286776))

(assert (= start!411826 b!4286760))

(declare-fun m!4882263 () Bool)

(assert (=> b!4286771 m!4882263))

(declare-fun m!4882265 () Bool)

(assert (=> b!4286764 m!4882265))

(declare-fun m!4882267 () Bool)

(assert (=> b!4286764 m!4882267))

(declare-fun m!4882269 () Bool)

(assert (=> b!4286770 m!4882269))

(declare-fun m!4882271 () Bool)

(assert (=> b!4286770 m!4882271))

(declare-fun m!4882273 () Bool)

(assert (=> b!4286770 m!4882273))

(declare-fun m!4882275 () Bool)

(assert (=> b!4286770 m!4882275))

(declare-fun m!4882277 () Bool)

(assert (=> b!4286770 m!4882277))

(declare-fun m!4882279 () Bool)

(assert (=> b!4286770 m!4882279))

(declare-fun m!4882281 () Bool)

(assert (=> b!4286770 m!4882281))

(declare-fun m!4882283 () Bool)

(assert (=> b!4286770 m!4882283))

(declare-fun m!4882285 () Bool)

(assert (=> b!4286774 m!4882285))

(declare-fun m!4882287 () Bool)

(assert (=> mapNonEmpty!19533 m!4882287))

(declare-fun m!4882289 () Bool)

(assert (=> b!4286762 m!4882289))

(declare-fun m!4882291 () Bool)

(assert (=> b!4286785 m!4882291))

(declare-fun m!4882293 () Bool)

(assert (=> b!4286784 m!4882293))

(declare-fun m!4882295 () Bool)

(assert (=> mapNonEmpty!19534 m!4882295))

(declare-fun m!4882297 () Bool)

(assert (=> start!411826 m!4882297))

(declare-fun m!4882299 () Bool)

(assert (=> start!411826 m!4882299))

(declare-fun m!4882301 () Bool)

(assert (=> start!411826 m!4882301))

(declare-fun m!4882303 () Bool)

(assert (=> start!411826 m!4882303))

(declare-fun m!4882305 () Bool)

(assert (=> start!411826 m!4882305))

(declare-fun m!4882307 () Bool)

(assert (=> start!411826 m!4882307))

(declare-fun m!4882309 () Bool)

(assert (=> b!4286788 m!4882309))

(declare-fun m!4882311 () Bool)

(assert (=> b!4286767 m!4882311))

(declare-fun m!4882313 () Bool)

(assert (=> b!4286778 m!4882313))

(assert (=> b!4286778 m!4882313))

(declare-fun m!4882315 () Bool)

(assert (=> b!4286778 m!4882315))

(declare-fun m!4882317 () Bool)

(assert (=> b!4286778 m!4882317))

(declare-fun m!4882319 () Bool)

(assert (=> b!4286780 m!4882319))

(declare-fun m!4882321 () Bool)

(assert (=> b!4286755 m!4882321))

(declare-fun m!4882323 () Bool)

(assert (=> b!4286755 m!4882323))

(declare-fun m!4882325 () Bool)

(assert (=> b!4286766 m!4882325))

(declare-fun m!4882327 () Bool)

(assert (=> mapNonEmpty!19535 m!4882327))

(declare-fun m!4882329 () Bool)

(assert (=> b!4286765 m!4882329))

(declare-fun m!4882331 () Bool)

(assert (=> b!4286765 m!4882331))

(check-sat (not b!4286756) (not mapNonEmpty!19535) (not b!4286785) (not start!411826) b_and!338329 (not b!4286770) (not b!4286766) b_and!338321 (not b!4286761) (not b!4286774) (not b!4286786) (not b_next!127817) (not b!4286777) (not b!4286775) (not b!4286782) (not b_next!127813) (not b!4286788) (not mapNonEmpty!19533) b_and!338323 (not b!4286765) (not b_next!127811) (not b!4286762) (not b!4286778) (not b!4286780) (not b!4286784) (not mapNonEmpty!19534) (not b_next!127815) b_and!338319 (not b!4286771) (not b_next!127807) (not b_next!127809) tp_is_empty!23081 (not b!4286764) (not b!4286755) b_and!338327 b_and!338325 (not b!4286767))
(check-sat (not b_next!127817) (not b_next!127813) (not b_next!127815) b_and!338329 (not b_next!127809) b_and!338327 b_and!338325 b_and!338321 b_and!338323 (not b_next!127811) b_and!338319 (not b_next!127807))
