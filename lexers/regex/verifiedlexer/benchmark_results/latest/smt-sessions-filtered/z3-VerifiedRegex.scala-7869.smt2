; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411886 () Bool)

(assert start!411886)

(declare-fun b!4288450 () Bool)

(declare-fun b_free!127247 () Bool)

(declare-fun b_next!127951 () Bool)

(assert (=> b!4288450 (= b_free!127247 (not b_next!127951))))

(declare-fun tp!1314200 () Bool)

(declare-fun b_and!338463 () Bool)

(assert (=> b!4288450 (= tp!1314200 b_and!338463)))

(declare-fun b!4288457 () Bool)

(declare-fun b_free!127249 () Bool)

(declare-fun b_next!127953 () Bool)

(assert (=> b!4288457 (= b_free!127249 (not b_next!127953))))

(declare-fun tp!1314196 () Bool)

(declare-fun b_and!338465 () Bool)

(assert (=> b!4288457 (= tp!1314196 b_and!338465)))

(declare-fun b!4288452 () Bool)

(declare-fun b_free!127251 () Bool)

(declare-fun b_next!127955 () Bool)

(assert (=> b!4288452 (= b_free!127251 (not b_next!127955))))

(declare-fun tp!1314203 () Bool)

(declare-fun b_and!338467 () Bool)

(assert (=> b!4288452 (= tp!1314203 b_and!338467)))

(declare-fun b!4288459 () Bool)

(declare-fun b_free!127253 () Bool)

(declare-fun b_next!127957 () Bool)

(assert (=> b!4288459 (= b_free!127253 (not b_next!127957))))

(declare-fun tp!1314205 () Bool)

(declare-fun b_and!338469 () Bool)

(assert (=> b!4288459 (= tp!1314205 b_and!338469)))

(declare-fun b!4288444 () Bool)

(declare-fun b_free!127255 () Bool)

(declare-fun b_next!127959 () Bool)

(assert (=> b!4288444 (= b_free!127255 (not b_next!127959))))

(declare-fun tp!1314207 () Bool)

(declare-fun b_and!338471 () Bool)

(assert (=> b!4288444 (= tp!1314207 b_and!338471)))

(declare-fun b!4288483 () Bool)

(declare-fun b_free!127257 () Bool)

(declare-fun b_next!127961 () Bool)

(assert (=> b!4288483 (= b_free!127257 (not b_next!127961))))

(declare-fun tp!1314195 () Bool)

(declare-fun b_and!338473 () Bool)

(assert (=> b!4288483 (= tp!1314195 b_and!338473)))

(declare-fun mapIsEmpty!19650 () Bool)

(declare-fun mapRes!19650 () Bool)

(assert (=> mapIsEmpty!19650 mapRes!19650))

(declare-fun b!4288442 () Bool)

(declare-fun e!2663532 () Bool)

(declare-datatypes ((C!26072 0))(
  ( (C!26073 (val!15362 Int)) )
))
(declare-datatypes ((Regex!12937 0))(
  ( (ElementMatch!12937 (c!730194 C!26072)) (Concat!21256 (regOne!26386 Regex!12937) (regTwo!26386 Regex!12937)) (EmptyExpr!12937) (Star!12937 (reg!13266 Regex!12937)) (EmptyLang!12937) (Union!12937 (regOne!26387 Regex!12937) (regTwo!26387 Regex!12937)) )
))
(declare-datatypes ((List!47733 0))(
  ( (Nil!47609) (Cons!47609 (h!53029 Regex!12937) (t!354332 List!47733)) )
))
(declare-datatypes ((Context!5654 0))(
  ( (Context!5655 (exprs!3327 List!47733)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45172 0))(
  ( (tuple2!45173 (_1!25776 (InoxSet Context!5654)) (_2!25776 Int)) )
))
(declare-datatypes ((tuple2!45174 0))(
  ( (tuple2!45175 (_1!25777 tuple2!45172) (_2!25777 Int)) )
))
(declare-datatypes ((List!47734 0))(
  ( (Nil!47610) (Cons!47610 (h!53030 tuple2!45174) (t!354333 List!47734)) )
))
(declare-datatypes ((array!15584 0))(
  ( (array!15585 (arr!6960 (Array (_ BitVec 32) (_ BitVec 64))) (size!34916 (_ BitVec 32))) )
))
(declare-datatypes ((array!15586 0))(
  ( (array!15587 (arr!6961 (Array (_ BitVec 32) List!47734)) (size!34917 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8712 0))(
  ( (LongMapFixedSize!8713 (defaultEntry!4741 Int) (mask!12794 (_ BitVec 32)) (extraKeys!4605 (_ BitVec 32)) (zeroValue!4615 List!47734) (minValue!4615 List!47734) (_size!8755 (_ BitVec 32)) (_keys!4656 array!15584) (_values!4637 array!15586) (_vacant!4417 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17233 0))(
  ( (Cell!17234 (v!41522 LongMapFixedSize!8712)) )
))
(declare-datatypes ((MutLongMap!4356 0))(
  ( (LongMap!4356 (underlying!8941 Cell!17233)) (MutLongMapExt!4355 (__x!29093 Int)) )
))
(declare-datatypes ((Cell!17235 0))(
  ( (Cell!17236 (v!41523 MutLongMap!4356)) )
))
(declare-datatypes ((Hashable!4272 0))(
  ( (HashableExt!4271 (__x!29094 Int)) )
))
(declare-datatypes ((MutableMap!4262 0))(
  ( (MutableMapExt!4261 (__x!29095 Int)) (HashMap!4262 (underlying!8942 Cell!17235) (hashF!6304 Hashable!4272) (_size!8756 (_ BitVec 32)) (defaultValue!4433 Int)) )
))
(declare-datatypes ((List!47735 0))(
  ( (Nil!47611) (Cons!47611 (h!53031 C!26072) (t!354334 List!47735)) )
))
(declare-datatypes ((IArray!28819 0))(
  ( (IArray!28820 (innerList!14467 List!47735)) )
))
(declare-datatypes ((Conc!14379 0))(
  ( (Node!14379 (left!35380 Conc!14379) (right!35710 Conc!14379) (csize!28988 Int) (cheight!14590 Int)) (Leaf!22249 (xs!17685 IArray!28819) (csize!28989 Int)) (Empty!14379) )
))
(declare-datatypes ((BalanceConc!28248 0))(
  ( (BalanceConc!28249 (c!730195 Conc!14379)) )
))
(declare-datatypes ((CacheFindLongestMatch!446 0))(
  ( (CacheFindLongestMatch!447 (cache!4402 MutableMap!4262) (totalInput!4333 BalanceConc!28248)) )
))
(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!446)

(declare-fun tp!1314211 () Bool)

(declare-fun inv!63084 (Conc!14379) Bool)

(assert (=> b!4288442 (= e!2663532 (and (inv!63084 (c!730195 (totalInput!4333 cacheFindLongestMatch!199))) tp!1314211))))

(declare-fun b!4288443 () Bool)

(declare-fun e!2663529 () Bool)

(declare-datatypes ((tuple2!45176 0))(
  ( (tuple2!45177 (_1!25778 Context!5654) (_2!25778 C!26072)) )
))
(declare-datatypes ((tuple2!45178 0))(
  ( (tuple2!45179 (_1!25779 tuple2!45176) (_2!25779 (InoxSet Context!5654))) )
))
(declare-datatypes ((List!47736 0))(
  ( (Nil!47612) (Cons!47612 (h!53032 tuple2!45178) (t!354335 List!47736)) )
))
(declare-datatypes ((array!15588 0))(
  ( (array!15589 (arr!6962 (Array (_ BitVec 32) List!47736)) (size!34918 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8714 0))(
  ( (LongMapFixedSize!8715 (defaultEntry!4742 Int) (mask!12795 (_ BitVec 32)) (extraKeys!4606 (_ BitVec 32)) (zeroValue!4616 List!47736) (minValue!4616 List!47736) (_size!8757 (_ BitVec 32)) (_keys!4657 array!15584) (_values!4638 array!15588) (_vacant!4418 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17237 0))(
  ( (Cell!17238 (v!41524 LongMapFixedSize!8714)) )
))
(declare-datatypes ((MutLongMap!4357 0))(
  ( (LongMap!4357 (underlying!8943 Cell!17237)) (MutLongMapExt!4356 (__x!29096 Int)) )
))
(declare-datatypes ((Cell!17239 0))(
  ( (Cell!17240 (v!41525 MutLongMap!4357)) )
))
(declare-datatypes ((Hashable!4273 0))(
  ( (HashableExt!4272 (__x!29097 Int)) )
))
(declare-datatypes ((MutableMap!4263 0))(
  ( (MutableMapExt!4262 (__x!29098 Int)) (HashMap!4263 (underlying!8944 Cell!17239) (hashF!6305 Hashable!4273) (_size!8758 (_ BitVec 32)) (defaultValue!4434 Int)) )
))
(declare-datatypes ((CacheUp!2784 0))(
  ( (CacheUp!2785 (cache!4403 MutableMap!4263)) )
))
(declare-datatypes ((tuple3!5394 0))(
  ( (tuple3!5395 (_1!25780 Regex!12937) (_2!25780 Context!5654) (_3!3190 C!26072)) )
))
(declare-datatypes ((tuple2!45180 0))(
  ( (tuple2!45181 (_1!25781 tuple3!5394) (_2!25781 (InoxSet Context!5654))) )
))
(declare-datatypes ((List!47737 0))(
  ( (Nil!47613) (Cons!47613 (h!53033 tuple2!45180) (t!354336 List!47737)) )
))
(declare-datatypes ((array!15590 0))(
  ( (array!15591 (arr!6963 (Array (_ BitVec 32) List!47737)) (size!34919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8716 0))(
  ( (LongMapFixedSize!8717 (defaultEntry!4743 Int) (mask!12796 (_ BitVec 32)) (extraKeys!4607 (_ BitVec 32)) (zeroValue!4617 List!47737) (minValue!4617 List!47737) (_size!8759 (_ BitVec 32)) (_keys!4658 array!15584) (_values!4639 array!15590) (_vacant!4419 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17241 0))(
  ( (Cell!17242 (v!41526 LongMapFixedSize!8716)) )
))
(declare-datatypes ((MutLongMap!4358 0))(
  ( (LongMap!4358 (underlying!8945 Cell!17241)) (MutLongMapExt!4357 (__x!29099 Int)) )
))
(declare-datatypes ((Cell!17243 0))(
  ( (Cell!17244 (v!41527 MutLongMap!4358)) )
))
(declare-datatypes ((Hashable!4274 0))(
  ( (HashableExt!4273 (__x!29100 Int)) )
))
(declare-datatypes ((tuple2!45182 0))(
  ( (tuple2!45183 (_1!25782 BalanceConc!28248) (_2!25782 BalanceConc!28248)) )
))
(declare-datatypes ((MutableMap!4264 0))(
  ( (MutableMapExt!4263 (__x!29101 Int)) (HashMap!4264 (underlying!8946 Cell!17243) (hashF!6306 Hashable!4274) (_size!8760 (_ BitVec 32)) (defaultValue!4435 Int)) )
))
(declare-datatypes ((CacheDown!2902 0))(
  ( (CacheDown!2903 (cache!4404 MutableMap!4264)) )
))
(declare-datatypes ((tuple4!986 0))(
  ( (tuple4!987 (_1!25783 tuple2!45182) (_2!25783 CacheUp!2784) (_3!3191 CacheDown!2902) (_4!493 CacheFindLongestMatch!446)) )
))
(declare-fun lt!1516472 () tuple4!986)

(declare-fun totalInput!1189 () BalanceConc!28248)

(assert (=> b!4288443 (= e!2663529 (not (= (totalInput!4333 (_4!493 lt!1516472)) totalInput!1189)))))

(declare-fun e!2663513 () Bool)

(assert (=> b!4288443 e!2663513))

(declare-fun res!1759087 () Bool)

(assert (=> b!4288443 (=> (not res!1759087) (not e!2663513))))

(declare-fun lt!1516462 () (InoxSet Context!5654))

(declare-datatypes ((tuple4!988 0))(
  ( (tuple4!989 (_1!25784 Int) (_2!25784 CacheUp!2784) (_3!3192 CacheDown!2902) (_4!494 CacheFindLongestMatch!446)) )
))
(declare-fun lt!1516471 () tuple4!988)

(declare-fun lt!1516467 () Int)

(declare-fun lt!1516460 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!23 ((InoxSet Context!5654) Int BalanceConc!28248 Int) Int)

(assert (=> b!4288443 (= res!1759087 (= (_1!25784 lt!1516471) (findLongestMatchInnerZipperFastV2!23 lt!1516462 lt!1516467 totalInput!1189 lt!1516460)))))

(declare-fun cacheDown!1163 () CacheDown!2902)

(declare-fun cacheUp!1044 () CacheUp!2784)

(declare-fun findLongestMatchInnerZipperFastV2Mem!5 ((InoxSet Context!5654) Int BalanceConc!28248 Int CacheUp!2784 CacheDown!2902 CacheFindLongestMatch!446) tuple4!988)

(assert (=> b!4288443 (= lt!1516471 (findLongestMatchInnerZipperFastV2Mem!5 lt!1516462 lt!1516467 totalInput!1189 lt!1516460 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(declare-fun input!6546 () BalanceConc!28248)

(declare-fun size!34920 (BalanceConc!28248) Int)

(assert (=> b!4288443 (= lt!1516467 (- lt!1516460 (size!34920 input!6546)))))

(assert (=> b!4288443 (= lt!1516460 (size!34920 totalInput!1189))))

(declare-fun e!2663520 () Bool)

(assert (=> b!4288443 e!2663520))

(declare-fun res!1759094 () Bool)

(assert (=> b!4288443 (=> (not res!1759094) (not e!2663520))))

(declare-fun lt!1516468 () tuple2!45182)

(assert (=> b!4288443 (= res!1759094 (= (_1!25783 lt!1516472) lt!1516468))))

(declare-fun findLongestMatchZipperFastV2Mem!7 ((InoxSet Context!5654) BalanceConc!28248 BalanceConc!28248 CacheUp!2784 CacheDown!2902 CacheFindLongestMatch!446) tuple4!986)

(assert (=> b!4288443 (= lt!1516472 (findLongestMatchZipperFastV2Mem!7 lt!1516462 input!6546 totalInput!1189 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(declare-fun e!2663515 () Bool)

(assert (=> b!4288443 e!2663515))

(declare-fun res!1759085 () Bool)

(assert (=> b!4288443 (=> (not res!1759085) (not e!2663515))))

(declare-fun lt!1516466 () List!47735)

(declare-fun sizeTr!337 (List!47735 Int) Int)

(declare-fun size!34921 (List!47735) Int)

(assert (=> b!4288443 (= res!1759085 (= (sizeTr!337 lt!1516466 0) (size!34921 lt!1516466)))))

(declare-datatypes ((Unit!66403 0))(
  ( (Unit!66404) )
))
(declare-fun lt!1516465 () Unit!66403)

(declare-fun lemmaSizeTrEqualsSize!336 (List!47735 Int) Unit!66403)

(assert (=> b!4288443 (= lt!1516465 (lemmaSizeTrEqualsSize!336 lt!1516466 0))))

(declare-fun e!2663528 () Bool)

(assert (=> b!4288443 e!2663528))

(declare-fun res!1759082 () Bool)

(assert (=> b!4288443 (=> (not res!1759082) (not e!2663528))))

(declare-datatypes ((tuple2!45184 0))(
  ( (tuple2!45185 (_1!25785 List!47735) (_2!25785 List!47735)) )
))
(declare-fun lt!1516464 () tuple2!45184)

(declare-fun list!17345 (BalanceConc!28248) List!47735)

(assert (=> b!4288443 (= res!1759082 (= (list!17345 (_1!25782 lt!1516468)) (_1!25785 lt!1516464)))))

(declare-fun r!15285 () Regex!12937)

(declare-fun findLongestMatch!1628 (Regex!12937 List!47735) tuple2!45184)

(assert (=> b!4288443 (= lt!1516464 (findLongestMatch!1628 r!15285 lt!1516466))))

(declare-fun findLongestMatchZipperFastV2!23 ((InoxSet Context!5654) BalanceConc!28248 BalanceConc!28248) tuple2!45182)

(assert (=> b!4288443 (= lt!1516468 (findLongestMatchZipperFastV2!23 lt!1516462 input!6546 totalInput!1189))))

(declare-fun lt!1516461 () Unit!66403)

(declare-fun longestMatchV2SameAsRegex!22 (Regex!12937 (InoxSet Context!5654) BalanceConc!28248 BalanceConc!28248) Unit!66403)

(assert (=> b!4288443 (= lt!1516461 (longestMatchV2SameAsRegex!22 r!15285 lt!1516462 input!6546 totalInput!1189))))

(declare-fun focus!328 (Regex!12937) (InoxSet Context!5654))

(assert (=> b!4288443 (= lt!1516462 (focus!328 r!15285))))

(declare-fun mapNonEmpty!19650 () Bool)

(declare-fun tp!1314191 () Bool)

(declare-fun tp!1314194 () Bool)

(assert (=> mapNonEmpty!19650 (= mapRes!19650 (and tp!1314191 tp!1314194))))

(declare-fun mapRest!19650 () (Array (_ BitVec 32) List!47736))

(declare-fun mapKey!19652 () (_ BitVec 32))

(declare-fun mapValue!19652 () List!47736)

(assert (=> mapNonEmpty!19650 (= (arr!6962 (_values!4638 (v!41524 (underlying!8943 (v!41525 (underlying!8944 (cache!4403 cacheUp!1044))))))) (store mapRest!19650 mapKey!19652 mapValue!19652))))

(declare-fun e!2663534 () Bool)

(declare-fun e!2663512 () Bool)

(assert (=> b!4288444 (= e!2663534 (and e!2663512 tp!1314207))))

(declare-fun b!4288445 () Bool)

(declare-fun e!2663527 () Bool)

(declare-fun e!2663511 () Bool)

(assert (=> b!4288445 (= e!2663527 e!2663511)))

(declare-fun b!4288446 () Bool)

(declare-fun e!2663516 () Bool)

(declare-fun e!2663502 () Bool)

(assert (=> b!4288446 (= e!2663516 e!2663502)))

(declare-fun b!4288447 () Bool)

(declare-fun res!1759093 () Bool)

(assert (=> b!4288447 (=> (not res!1759093) (not e!2663513))))

(declare-fun valid!3386 (CacheDown!2902) Bool)

(assert (=> b!4288447 (= res!1759093 (valid!3386 (_3!3192 lt!1516471)))))

(declare-fun b!4288448 () Bool)

(assert (=> b!4288448 (= e!2663528 (= (list!17345 (_2!25782 lt!1516468)) (_2!25785 lt!1516464)))))

(declare-fun b!4288449 () Bool)

(declare-fun e!2663533 () Bool)

(declare-fun e!2663531 () Bool)

(assert (=> b!4288449 (= e!2663533 e!2663531)))

(declare-fun e!2663522 () Bool)

(declare-fun tp!1314192 () Bool)

(declare-fun e!2663505 () Bool)

(declare-fun tp!1314189 () Bool)

(declare-fun array_inv!4992 (array!15584) Bool)

(declare-fun array_inv!4993 (array!15590) Bool)

(assert (=> b!4288450 (= e!2663505 (and tp!1314200 tp!1314189 tp!1314192 (array_inv!4992 (_keys!4658 (v!41526 (underlying!8945 (v!41527 (underlying!8946 (cache!4404 cacheDown!1163))))))) (array_inv!4993 (_values!4639 (v!41526 (underlying!8945 (v!41527 (underlying!8946 (cache!4404 cacheDown!1163))))))) e!2663522))))

(declare-fun mapIsEmpty!19651 () Bool)

(declare-fun mapRes!19652 () Bool)

(assert (=> mapIsEmpty!19651 mapRes!19652))

(declare-fun b!4288451 () Bool)

(declare-fun res!1759084 () Bool)

(declare-fun e!2663521 () Bool)

(assert (=> b!4288451 (=> (not res!1759084) (not e!2663521))))

(declare-fun valid!3387 (CacheUp!2784) Bool)

(assert (=> b!4288451 (= res!1759084 (valid!3387 cacheUp!1044))))

(declare-fun tp!1314188 () Bool)

(declare-fun tp!1314198 () Bool)

(declare-fun e!2663514 () Bool)

(declare-fun e!2663501 () Bool)

(declare-fun array_inv!4994 (array!15588) Bool)

(assert (=> b!4288452 (= e!2663501 (and tp!1314203 tp!1314198 tp!1314188 (array_inv!4992 (_keys!4657 (v!41524 (underlying!8943 (v!41525 (underlying!8944 (cache!4403 cacheUp!1044))))))) (array_inv!4994 (_values!4638 (v!41524 (underlying!8943 (v!41525 (underlying!8944 (cache!4403 cacheUp!1044))))))) e!2663514))))

(declare-fun b!4288453 () Bool)

(declare-fun res!1759091 () Bool)

(assert (=> b!4288453 (=> (not res!1759091) (not e!2663521))))

(assert (=> b!4288453 (= res!1759091 (valid!3386 cacheDown!1163))))

(declare-fun b!4288454 () Bool)

(declare-fun res!1759086 () Bool)

(assert (=> b!4288454 (=> (not res!1759086) (not e!2663513))))

(assert (=> b!4288454 (= res!1759086 (valid!3387 (_2!25784 lt!1516471)))))

(declare-fun b!4288455 () Bool)

(declare-fun e!2663506 () Bool)

(declare-fun tp!1314204 () Bool)

(declare-fun tp!1314186 () Bool)

(assert (=> b!4288455 (= e!2663506 (and tp!1314204 tp!1314186))))

(declare-fun b!4288456 () Bool)

(declare-fun e!2663519 () Bool)

(declare-fun tp!1314212 () Bool)

(assert (=> b!4288456 (= e!2663519 (and (inv!63084 (c!730195 input!6546)) tp!1314212))))

(declare-fun e!2663517 () Bool)

(assert (=> b!4288457 (= e!2663531 (and e!2663517 tp!1314196))))

(declare-fun b!4288458 () Bool)

(declare-fun splitAt!217 (BalanceConc!28248 Int) tuple2!45182)

(assert (=> b!4288458 (= e!2663513 (= lt!1516472 (tuple4!987 (splitAt!217 input!6546 (_1!25784 lt!1516471)) (_2!25784 lt!1516471) (_3!3192 lt!1516471) (_4!494 lt!1516471))))))

(declare-fun tp!1314208 () Bool)

(declare-fun e!2663518 () Bool)

(declare-fun tp!1314202 () Bool)

(declare-fun e!2663525 () Bool)

(declare-fun array_inv!4995 (array!15586) Bool)

(assert (=> b!4288459 (= e!2663518 (and tp!1314205 tp!1314202 tp!1314208 (array_inv!4992 (_keys!4656 (v!41522 (underlying!8941 (v!41523 (underlying!8942 (cache!4402 cacheFindLongestMatch!199))))))) (array_inv!4995 (_values!4637 (v!41522 (underlying!8941 (v!41523 (underlying!8942 (cache!4402 cacheFindLongestMatch!199))))))) e!2663525))))

(declare-fun b!4288460 () Bool)

(declare-fun tp!1314214 () Bool)

(assert (=> b!4288460 (= e!2663522 (and tp!1314214 mapRes!19652))))

(declare-fun condMapEmpty!19652 () Bool)

(declare-fun mapDefault!19650 () List!47737)

(assert (=> b!4288460 (= condMapEmpty!19652 (= (arr!6963 (_values!4639 (v!41526 (underlying!8945 (v!41527 (underlying!8946 (cache!4404 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47737)) mapDefault!19650)))))

(declare-fun b!4288461 () Bool)

(declare-fun lt!1516469 () MutLongMap!4358)

(get-info :version)

(assert (=> b!4288461 (= e!2663517 (and e!2663527 ((_ is LongMap!4358) lt!1516469)))))

(assert (=> b!4288461 (= lt!1516469 (v!41527 (underlying!8946 (cache!4404 cacheDown!1163))))))

(declare-fun b!4288462 () Bool)

(declare-fun e!2663503 () Bool)

(declare-fun tp!1314187 () Bool)

(assert (=> b!4288462 (= e!2663503 (and (inv!63084 (c!730195 totalInput!1189)) tp!1314187))))

(declare-fun b!4288463 () Bool)

(assert (=> b!4288463 (= e!2663521 e!2663529)))

(declare-fun res!1759080 () Bool)

(assert (=> b!4288463 (=> (not res!1759080) (not e!2663529))))

(declare-fun isSuffix!1028 (List!47735 List!47735) Bool)

(assert (=> b!4288463 (= res!1759080 (isSuffix!1028 lt!1516466 (list!17345 totalInput!1189)))))

(assert (=> b!4288463 (= lt!1516466 (list!17345 input!6546))))

(declare-fun b!4288464 () Bool)

(declare-fun res!1759083 () Bool)

(assert (=> b!4288464 (=> (not res!1759083) (not e!2663520))))

(assert (=> b!4288464 (= res!1759083 (valid!3386 (_3!3191 lt!1516472)))))

(declare-fun res!1759090 () Bool)

(assert (=> start!411886 (=> (not res!1759090) (not e!2663521))))

(declare-fun validRegex!5857 (Regex!12937) Bool)

(assert (=> start!411886 (= res!1759090 (validRegex!5857 r!15285))))

(assert (=> start!411886 e!2663521))

(declare-fun inv!63085 (BalanceConc!28248) Bool)

(assert (=> start!411886 (and (inv!63085 totalInput!1189) e!2663503)))

(assert (=> start!411886 e!2663506))

(assert (=> start!411886 (and (inv!63085 input!6546) e!2663519)))

(declare-fun e!2663509 () Bool)

(declare-fun inv!63086 (CacheFindLongestMatch!446) Bool)

(assert (=> start!411886 (and (inv!63086 cacheFindLongestMatch!199) e!2663509)))

(declare-fun inv!63087 (CacheDown!2902) Bool)

(assert (=> start!411886 (and (inv!63087 cacheDown!1163) e!2663533)))

(declare-fun e!2663524 () Bool)

(declare-fun inv!63088 (CacheUp!2784) Bool)

(assert (=> start!411886 (and (inv!63088 cacheUp!1044) e!2663524)))

(declare-fun b!4288465 () Bool)

(assert (=> b!4288465 (= e!2663502 e!2663518)))

(declare-fun b!4288466 () Bool)

(declare-fun res!1759095 () Bool)

(assert (=> b!4288466 (=> (not res!1759095) (not e!2663521))))

(declare-fun valid!3388 (CacheFindLongestMatch!446) Bool)

(assert (=> b!4288466 (= res!1759095 (valid!3388 cacheFindLongestMatch!199))))

(declare-fun mapIsEmpty!19652 () Bool)

(declare-fun mapRes!19651 () Bool)

(assert (=> mapIsEmpty!19652 mapRes!19651))

(declare-fun b!4288467 () Bool)

(declare-fun res!1759089 () Bool)

(assert (=> b!4288467 (=> (not res!1759089) (not e!2663513))))

(assert (=> b!4288467 (= res!1759089 (valid!3388 (_4!494 lt!1516471)))))

(declare-fun b!4288468 () Bool)

(declare-fun tp!1314210 () Bool)

(assert (=> b!4288468 (= e!2663525 (and tp!1314210 mapRes!19651))))

(declare-fun condMapEmpty!19651 () Bool)

(declare-fun mapDefault!19652 () List!47734)

(assert (=> b!4288468 (= condMapEmpty!19651 (= (arr!6961 (_values!4637 (v!41522 (underlying!8941 (v!41523 (underlying!8942 (cache!4402 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47734)) mapDefault!19652)))))

(declare-fun b!4288469 () Bool)

(declare-fun e!2663523 () Bool)

(assert (=> b!4288469 (= e!2663524 e!2663523)))

(declare-fun b!4288470 () Bool)

(declare-fun lt!1516470 () MutLongMap!4356)

(assert (=> b!4288470 (= e!2663512 (and e!2663516 ((_ is LongMap!4356) lt!1516470)))))

(assert (=> b!4288470 (= lt!1516470 (v!41523 (underlying!8942 (cache!4402 cacheFindLongestMatch!199))))))

(declare-fun b!4288471 () Bool)

(declare-fun e!2663526 () Bool)

(declare-fun e!2663507 () Bool)

(declare-fun lt!1516463 () MutLongMap!4357)

(assert (=> b!4288471 (= e!2663526 (and e!2663507 ((_ is LongMap!4357) lt!1516463)))))

(assert (=> b!4288471 (= lt!1516463 (v!41525 (underlying!8944 (cache!4403 cacheUp!1044))))))

(declare-fun b!4288472 () Bool)

(declare-fun tp!1314201 () Bool)

(assert (=> b!4288472 (= e!2663506 tp!1314201)))

(declare-fun b!4288473 () Bool)

(declare-fun tp!1314197 () Bool)

(assert (=> b!4288473 (= e!2663514 (and tp!1314197 mapRes!19650))))

(declare-fun condMapEmpty!19650 () Bool)

(declare-fun mapDefault!19651 () List!47736)

(assert (=> b!4288473 (= condMapEmpty!19650 (= (arr!6962 (_values!4638 (v!41524 (underlying!8943 (v!41525 (underlying!8944 (cache!4403 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47736)) mapDefault!19651)))))

(declare-fun mapNonEmpty!19651 () Bool)

(declare-fun tp!1314199 () Bool)

(declare-fun tp!1314206 () Bool)

(assert (=> mapNonEmpty!19651 (= mapRes!19651 (and tp!1314199 tp!1314206))))

(declare-fun mapValue!19651 () List!47734)

(declare-fun mapKey!19651 () (_ BitVec 32))

(declare-fun mapRest!19652 () (Array (_ BitVec 32) List!47734))

(assert (=> mapNonEmpty!19651 (= (arr!6961 (_values!4637 (v!41522 (underlying!8941 (v!41523 (underlying!8942 (cache!4402 cacheFindLongestMatch!199))))))) (store mapRest!19652 mapKey!19651 mapValue!19651))))

(declare-fun b!4288474 () Bool)

(declare-fun e!2663508 () Bool)

(assert (=> b!4288474 (= e!2663508 e!2663501)))

(declare-fun b!4288475 () Bool)

(declare-fun tp_is_empty!23105 () Bool)

(assert (=> b!4288475 (= e!2663506 tp_is_empty!23105)))

(declare-fun b!4288476 () Bool)

(declare-fun tp!1314213 () Bool)

(declare-fun tp!1314190 () Bool)

(assert (=> b!4288476 (= e!2663506 (and tp!1314213 tp!1314190))))

(declare-fun b!4288477 () Bool)

(declare-fun res!1759092 () Bool)

(assert (=> b!4288477 (=> (not res!1759092) (not e!2663521))))

(assert (=> b!4288477 (= res!1759092 (= (totalInput!4333 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun b!4288478 () Bool)

(declare-fun res!1759081 () Bool)

(assert (=> b!4288478 (=> (not res!1759081) (not e!2663520))))

(assert (=> b!4288478 (= res!1759081 (valid!3388 (_4!493 lt!1516472)))))

(declare-fun mapNonEmpty!19652 () Bool)

(declare-fun tp!1314193 () Bool)

(declare-fun tp!1314209 () Bool)

(assert (=> mapNonEmpty!19652 (= mapRes!19652 (and tp!1314193 tp!1314209))))

(declare-fun mapRest!19651 () (Array (_ BitVec 32) List!47737))

(declare-fun mapValue!19650 () List!47737)

(declare-fun mapKey!19650 () (_ BitVec 32))

(assert (=> mapNonEmpty!19652 (= (arr!6963 (_values!4639 (v!41526 (underlying!8945 (v!41527 (underlying!8946 (cache!4404 cacheDown!1163))))))) (store mapRest!19651 mapKey!19650 mapValue!19650))))

(declare-fun b!4288479 () Bool)

(assert (=> b!4288479 (= e!2663509 (and e!2663534 (inv!63085 (totalInput!4333 cacheFindLongestMatch!199)) e!2663532))))

(declare-fun b!4288480 () Bool)

(declare-fun res!1759088 () Bool)

(assert (=> b!4288480 (=> (not res!1759088) (not e!2663520))))

(assert (=> b!4288480 (= res!1759088 (valid!3387 (_2!25783 lt!1516472)))))

(declare-fun b!4288481 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!127 (Regex!12937 BalanceConc!28248 BalanceConc!28248) tuple2!45182)

(assert (=> b!4288481 (= e!2663515 (= (findLongestMatchWithZipperSequenceV2!127 r!15285 input!6546 totalInput!1189) lt!1516468))))

(declare-fun b!4288482 () Bool)

(declare-fun res!1759079 () Bool)

(assert (=> b!4288482 (=> (not res!1759079) (not e!2663513))))

(assert (=> b!4288482 (= res!1759079 (= (totalInput!4333 (_4!494 lt!1516471)) totalInput!1189))))

(assert (=> b!4288483 (= e!2663523 (and e!2663526 tp!1314195))))

(declare-fun b!4288484 () Bool)

(assert (=> b!4288484 (= e!2663507 e!2663508)))

(declare-fun b!4288485 () Bool)

(assert (=> b!4288485 (= e!2663520 (= (totalInput!4333 (_4!493 lt!1516472)) totalInput!1189))))

(declare-fun b!4288486 () Bool)

(assert (=> b!4288486 (= e!2663511 e!2663505)))

(assert (= (and start!411886 res!1759090) b!4288451))

(assert (= (and b!4288451 res!1759084) b!4288453))

(assert (= (and b!4288453 res!1759091) b!4288466))

(assert (= (and b!4288466 res!1759095) b!4288477))

(assert (= (and b!4288477 res!1759092) b!4288463))

(assert (= (and b!4288463 res!1759080) b!4288443))

(assert (= (and b!4288443 res!1759082) b!4288448))

(assert (= (and b!4288443 res!1759085) b!4288481))

(assert (= (and b!4288443 res!1759094) b!4288480))

(assert (= (and b!4288480 res!1759088) b!4288464))

(assert (= (and b!4288464 res!1759083) b!4288478))

(assert (= (and b!4288478 res!1759081) b!4288485))

(assert (= (and b!4288443 res!1759087) b!4288454))

(assert (= (and b!4288454 res!1759086) b!4288447))

(assert (= (and b!4288447 res!1759093) b!4288467))

(assert (= (and b!4288467 res!1759089) b!4288482))

(assert (= (and b!4288482 res!1759079) b!4288458))

(assert (= start!411886 b!4288462))

(assert (= (and start!411886 ((_ is ElementMatch!12937) r!15285)) b!4288475))

(assert (= (and start!411886 ((_ is Concat!21256) r!15285)) b!4288476))

(assert (= (and start!411886 ((_ is Star!12937) r!15285)) b!4288472))

(assert (= (and start!411886 ((_ is Union!12937) r!15285)) b!4288455))

(assert (= start!411886 b!4288456))

(assert (= (and b!4288468 condMapEmpty!19651) mapIsEmpty!19652))

(assert (= (and b!4288468 (not condMapEmpty!19651)) mapNonEmpty!19651))

(assert (= b!4288459 b!4288468))

(assert (= b!4288465 b!4288459))

(assert (= b!4288446 b!4288465))

(assert (= (and b!4288470 ((_ is LongMap!4356) (v!41523 (underlying!8942 (cache!4402 cacheFindLongestMatch!199))))) b!4288446))

(assert (= b!4288444 b!4288470))

(assert (= (and b!4288479 ((_ is HashMap!4262) (cache!4402 cacheFindLongestMatch!199))) b!4288444))

(assert (= b!4288479 b!4288442))

(assert (= start!411886 b!4288479))

(assert (= (and b!4288460 condMapEmpty!19652) mapIsEmpty!19651))

(assert (= (and b!4288460 (not condMapEmpty!19652)) mapNonEmpty!19652))

(assert (= b!4288450 b!4288460))

(assert (= b!4288486 b!4288450))

(assert (= b!4288445 b!4288486))

(assert (= (and b!4288461 ((_ is LongMap!4358) (v!41527 (underlying!8946 (cache!4404 cacheDown!1163))))) b!4288445))

(assert (= b!4288457 b!4288461))

(assert (= (and b!4288449 ((_ is HashMap!4264) (cache!4404 cacheDown!1163))) b!4288457))

(assert (= start!411886 b!4288449))

(assert (= (and b!4288473 condMapEmpty!19650) mapIsEmpty!19650))

(assert (= (and b!4288473 (not condMapEmpty!19650)) mapNonEmpty!19650))

(assert (= b!4288452 b!4288473))

(assert (= b!4288474 b!4288452))

(assert (= b!4288484 b!4288474))

(assert (= (and b!4288471 ((_ is LongMap!4357) (v!41525 (underlying!8944 (cache!4403 cacheUp!1044))))) b!4288484))

(assert (= b!4288483 b!4288471))

(assert (= (and b!4288469 ((_ is HashMap!4263) (cache!4403 cacheUp!1044))) b!4288483))

(assert (= start!411886 b!4288469))

(declare-fun m!4883333 () Bool)

(assert (=> b!4288480 m!4883333))

(declare-fun m!4883335 () Bool)

(assert (=> b!4288479 m!4883335))

(declare-fun m!4883337 () Bool)

(assert (=> start!411886 m!4883337))

(declare-fun m!4883339 () Bool)

(assert (=> start!411886 m!4883339))

(declare-fun m!4883341 () Bool)

(assert (=> start!411886 m!4883341))

(declare-fun m!4883343 () Bool)

(assert (=> start!411886 m!4883343))

(declare-fun m!4883345 () Bool)

(assert (=> start!411886 m!4883345))

(declare-fun m!4883347 () Bool)

(assert (=> start!411886 m!4883347))

(declare-fun m!4883349 () Bool)

(assert (=> b!4288456 m!4883349))

(declare-fun m!4883351 () Bool)

(assert (=> b!4288454 m!4883351))

(declare-fun m!4883353 () Bool)

(assert (=> b!4288463 m!4883353))

(assert (=> b!4288463 m!4883353))

(declare-fun m!4883355 () Bool)

(assert (=> b!4288463 m!4883355))

(declare-fun m!4883357 () Bool)

(assert (=> b!4288463 m!4883357))

(declare-fun m!4883359 () Bool)

(assert (=> b!4288453 m!4883359))

(declare-fun m!4883361 () Bool)

(assert (=> mapNonEmpty!19652 m!4883361))

(declare-fun m!4883363 () Bool)

(assert (=> b!4288459 m!4883363))

(declare-fun m!4883365 () Bool)

(assert (=> b!4288459 m!4883365))

(declare-fun m!4883367 () Bool)

(assert (=> b!4288451 m!4883367))

(declare-fun m!4883369 () Bool)

(assert (=> b!4288442 m!4883369))

(declare-fun m!4883371 () Bool)

(assert (=> b!4288466 m!4883371))

(declare-fun m!4883373 () Bool)

(assert (=> b!4288464 m!4883373))

(declare-fun m!4883375 () Bool)

(assert (=> mapNonEmpty!19651 m!4883375))

(declare-fun m!4883377 () Bool)

(assert (=> b!4288452 m!4883377))

(declare-fun m!4883379 () Bool)

(assert (=> b!4288452 m!4883379))

(declare-fun m!4883381 () Bool)

(assert (=> b!4288447 m!4883381))

(declare-fun m!4883383 () Bool)

(assert (=> b!4288462 m!4883383))

(declare-fun m!4883385 () Bool)

(assert (=> b!4288467 m!4883385))

(declare-fun m!4883387 () Bool)

(assert (=> b!4288443 m!4883387))

(declare-fun m!4883389 () Bool)

(assert (=> b!4288443 m!4883389))

(declare-fun m!4883391 () Bool)

(assert (=> b!4288443 m!4883391))

(declare-fun m!4883393 () Bool)

(assert (=> b!4288443 m!4883393))

(declare-fun m!4883395 () Bool)

(assert (=> b!4288443 m!4883395))

(declare-fun m!4883397 () Bool)

(assert (=> b!4288443 m!4883397))

(declare-fun m!4883399 () Bool)

(assert (=> b!4288443 m!4883399))

(declare-fun m!4883401 () Bool)

(assert (=> b!4288443 m!4883401))

(declare-fun m!4883403 () Bool)

(assert (=> b!4288443 m!4883403))

(declare-fun m!4883405 () Bool)

(assert (=> b!4288443 m!4883405))

(declare-fun m!4883407 () Bool)

(assert (=> b!4288443 m!4883407))

(declare-fun m!4883409 () Bool)

(assert (=> b!4288443 m!4883409))

(declare-fun m!4883411 () Bool)

(assert (=> b!4288443 m!4883411))

(declare-fun m!4883413 () Bool)

(assert (=> b!4288448 m!4883413))

(declare-fun m!4883415 () Bool)

(assert (=> mapNonEmpty!19650 m!4883415))

(declare-fun m!4883417 () Bool)

(assert (=> b!4288478 m!4883417))

(declare-fun m!4883419 () Bool)

(assert (=> b!4288481 m!4883419))

(declare-fun m!4883421 () Bool)

(assert (=> b!4288458 m!4883421))

(declare-fun m!4883423 () Bool)

(assert (=> b!4288450 m!4883423))

(declare-fun m!4883425 () Bool)

(assert (=> b!4288450 m!4883425))

(check-sat (not b!4288450) (not mapNonEmpty!19651) (not b!4288472) (not b!4288478) (not b!4288447) (not start!411886) b_and!338469 (not b!4288443) (not b!4288464) (not b_next!127961) (not b!4288453) (not b!4288480) (not b!4288462) (not b!4288455) b_and!338465 (not mapNonEmpty!19650) (not b!4288459) (not b!4288473) (not b_next!127953) (not b!4288476) (not b!4288456) (not b_next!127951) (not b!4288442) (not b!4288458) (not b!4288481) (not b!4288468) tp_is_empty!23105 (not b!4288448) b_and!338473 (not b!4288467) b_and!338467 b_and!338471 (not b!4288454) b_and!338463 (not b!4288466) (not b!4288479) (not b!4288452) (not b_next!127959) (not b!4288460) (not b_next!127955) (not b!4288463) (not b_next!127957) (not mapNonEmpty!19652) (not b!4288451))
(check-sat b_and!338465 (not b_next!127953) (not b_next!127951) b_and!338473 b_and!338469 b_and!338463 (not b_next!127959) (not b_next!127961) b_and!338467 b_and!338471 (not b_next!127955) (not b_next!127957))
