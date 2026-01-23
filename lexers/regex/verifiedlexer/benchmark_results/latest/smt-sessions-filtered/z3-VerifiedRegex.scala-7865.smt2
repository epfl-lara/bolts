; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411834 () Bool)

(assert start!411834)

(declare-fun b!4287268 () Bool)

(declare-fun b_free!127151 () Bool)

(declare-fun b_next!127855 () Bool)

(assert (=> b!4287268 (= b_free!127151 (not b_next!127855))))

(declare-fun tp!1313305 () Bool)

(declare-fun b_and!338367 () Bool)

(assert (=> b!4287268 (= tp!1313305 b_and!338367)))

(declare-fun b!4287291 () Bool)

(declare-fun b_free!127153 () Bool)

(declare-fun b_next!127857 () Bool)

(assert (=> b!4287291 (= b_free!127153 (not b_next!127857))))

(declare-fun tp!1313290 () Bool)

(declare-fun b_and!338369 () Bool)

(assert (=> b!4287291 (= tp!1313290 b_and!338369)))

(declare-fun b!4287267 () Bool)

(declare-fun b_free!127155 () Bool)

(declare-fun b_next!127859 () Bool)

(assert (=> b!4287267 (= b_free!127155 (not b_next!127859))))

(declare-fun tp!1313313 () Bool)

(declare-fun b_and!338371 () Bool)

(assert (=> b!4287267 (= tp!1313313 b_and!338371)))

(declare-fun b!4287290 () Bool)

(declare-fun b_free!127157 () Bool)

(declare-fun b_next!127861 () Bool)

(assert (=> b!4287290 (= b_free!127157 (not b_next!127861))))

(declare-fun tp!1313312 () Bool)

(declare-fun b_and!338373 () Bool)

(assert (=> b!4287290 (= tp!1313312 b_and!338373)))

(declare-fun b!4287270 () Bool)

(declare-fun b_free!127159 () Bool)

(declare-fun b_next!127863 () Bool)

(assert (=> b!4287270 (= b_free!127159 (not b_next!127863))))

(declare-fun tp!1313306 () Bool)

(declare-fun b_and!338375 () Bool)

(assert (=> b!4287270 (= tp!1313306 b_and!338375)))

(declare-fun b!4287294 () Bool)

(declare-fun b_free!127161 () Bool)

(declare-fun b_next!127865 () Bool)

(assert (=> b!4287294 (= b_free!127161 (not b_next!127865))))

(declare-fun tp!1313309 () Bool)

(declare-fun b_and!338377 () Bool)

(assert (=> b!4287294 (= tp!1313309 b_and!338377)))

(declare-fun b!4287255 () Bool)

(declare-fun e!2662607 () Bool)

(declare-datatypes ((C!26056 0))(
  ( (C!26057 (val!15354 Int)) )
))
(declare-datatypes ((List!47691 0))(
  ( (Nil!47567) (Cons!47567 (h!52987 C!26056) (t!354290 List!47691)) )
))
(declare-datatypes ((IArray!28803 0))(
  ( (IArray!28804 (innerList!14459 List!47691)) )
))
(declare-datatypes ((Conc!14371 0))(
  ( (Node!14371 (left!35368 Conc!14371) (right!35698 Conc!14371) (csize!28972 Int) (cheight!14582 Int)) (Leaf!22237 (xs!17677 IArray!28803) (csize!28973 Int)) (Empty!14371) )
))
(declare-datatypes ((BalanceConc!28232 0))(
  ( (BalanceConc!28233 (c!730167 Conc!14371)) )
))
(declare-datatypes ((tuple2!45076 0))(
  ( (tuple2!45077 (_1!25712 BalanceConc!28232) (_2!25712 BalanceConc!28232)) )
))
(declare-fun lt!1516248 () tuple2!45076)

(declare-datatypes ((tuple2!45078 0))(
  ( (tuple2!45079 (_1!25713 List!47691) (_2!25713 List!47691)) )
))
(declare-fun lt!1516255 () tuple2!45078)

(declare-fun list!17337 (BalanceConc!28232) List!47691)

(assert (=> b!4287255 (= e!2662607 (= (list!17337 (_2!25712 lt!1516248)) (_2!25713 lt!1516255)))))

(declare-fun b!4287256 () Bool)

(declare-fun e!2662583 () Bool)

(declare-fun e!2662609 () Bool)

(declare-datatypes ((Regex!12929 0))(
  ( (ElementMatch!12929 (c!730168 C!26056)) (Concat!21248 (regOne!26370 Regex!12929) (regTwo!26370 Regex!12929)) (EmptyExpr!12929) (Star!12929 (reg!13258 Regex!12929)) (EmptyLang!12929) (Union!12929 (regOne!26371 Regex!12929) (regTwo!26371 Regex!12929)) )
))
(declare-datatypes ((List!47692 0))(
  ( (Nil!47568) (Cons!47568 (h!52988 Regex!12929) (t!354291 List!47692)) )
))
(declare-datatypes ((Context!5638 0))(
  ( (Context!5639 (exprs!3319 List!47692)) )
))
(declare-datatypes ((tuple2!45080 0))(
  ( (tuple2!45081 (_1!25714 Context!5638) (_2!25714 C!26056)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45082 0))(
  ( (tuple2!45083 (_1!25715 tuple2!45080) (_2!25715 (InoxSet Context!5638))) )
))
(declare-datatypes ((List!47693 0))(
  ( (Nil!47569) (Cons!47569 (h!52989 tuple2!45082) (t!354292 List!47693)) )
))
(declare-datatypes ((array!15516 0))(
  ( (array!15517 (arr!6928 (Array (_ BitVec 32) List!47693)) (size!34875 (_ BitVec 32))) )
))
(declare-datatypes ((array!15518 0))(
  ( (array!15519 (arr!6929 (Array (_ BitVec 32) (_ BitVec 64))) (size!34876 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8664 0))(
  ( (LongMapFixedSize!8665 (defaultEntry!4717 Int) (mask!12766 (_ BitVec 32)) (extraKeys!4581 (_ BitVec 32)) (zeroValue!4591 List!47693) (minValue!4591 List!47693) (_size!8707 (_ BitVec 32)) (_keys!4632 array!15518) (_values!4613 array!15516) (_vacant!4393 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17137 0))(
  ( (Cell!17138 (v!41474 LongMapFixedSize!8664)) )
))
(declare-datatypes ((MutLongMap!4332 0))(
  ( (LongMap!4332 (underlying!8893 Cell!17137)) (MutLongMapExt!4331 (__x!29021 Int)) )
))
(declare-fun lt!1516253 () MutLongMap!4332)

(get-info :version)

(assert (=> b!4287256 (= e!2662583 (and e!2662609 ((_ is LongMap!4332) lt!1516253)))))

(declare-datatypes ((Cell!17139 0))(
  ( (Cell!17140 (v!41475 MutLongMap!4332)) )
))
(declare-datatypes ((Hashable!4248 0))(
  ( (HashableExt!4247 (__x!29022 Int)) )
))
(declare-datatypes ((MutableMap!4238 0))(
  ( (MutableMapExt!4237 (__x!29023 Int)) (HashMap!4238 (underlying!8894 Cell!17139) (hashF!6280 Hashable!4248) (_size!8708 (_ BitVec 32)) (defaultValue!4409 Int)) )
))
(declare-datatypes ((CacheUp!2768 0))(
  ( (CacheUp!2769 (cache!4378 MutableMap!4238)) )
))
(declare-fun cacheUp!1044 () CacheUp!2768)

(assert (=> b!4287256 (= lt!1516253 (v!41475 (underlying!8894 (cache!4378 cacheUp!1044))))))

(declare-fun b!4287257 () Bool)

(declare-fun res!1758749 () Bool)

(declare-fun e!2662590 () Bool)

(assert (=> b!4287257 (=> (not res!1758749) (not e!2662590))))

(declare-datatypes ((tuple3!5378 0))(
  ( (tuple3!5379 (_1!25716 Regex!12929) (_2!25716 Context!5638) (_3!3174 C!26056)) )
))
(declare-datatypes ((tuple2!45084 0))(
  ( (tuple2!45085 (_1!25717 tuple3!5378) (_2!25717 (InoxSet Context!5638))) )
))
(declare-datatypes ((List!47694 0))(
  ( (Nil!47570) (Cons!47570 (h!52990 tuple2!45084) (t!354293 List!47694)) )
))
(declare-datatypes ((array!15520 0))(
  ( (array!15521 (arr!6930 (Array (_ BitVec 32) List!47694)) (size!34877 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8666 0))(
  ( (LongMapFixedSize!8667 (defaultEntry!4718 Int) (mask!12767 (_ BitVec 32)) (extraKeys!4582 (_ BitVec 32)) (zeroValue!4592 List!47694) (minValue!4592 List!47694) (_size!8709 (_ BitVec 32)) (_keys!4633 array!15518) (_values!4614 array!15520) (_vacant!4394 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17141 0))(
  ( (Cell!17142 (v!41476 LongMapFixedSize!8666)) )
))
(declare-datatypes ((MutLongMap!4333 0))(
  ( (LongMap!4333 (underlying!8895 Cell!17141)) (MutLongMapExt!4332 (__x!29024 Int)) )
))
(declare-datatypes ((Cell!17143 0))(
  ( (Cell!17144 (v!41477 MutLongMap!4333)) )
))
(declare-datatypes ((tuple2!45086 0))(
  ( (tuple2!45087 (_1!25718 (InoxSet Context!5638)) (_2!25718 Int)) )
))
(declare-datatypes ((tuple2!45088 0))(
  ( (tuple2!45089 (_1!25719 tuple2!45086) (_2!25719 Int)) )
))
(declare-datatypes ((List!47695 0))(
  ( (Nil!47571) (Cons!47571 (h!52991 tuple2!45088) (t!354294 List!47695)) )
))
(declare-datatypes ((array!15522 0))(
  ( (array!15523 (arr!6931 (Array (_ BitVec 32) List!47695)) (size!34878 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8668 0))(
  ( (LongMapFixedSize!8669 (defaultEntry!4719 Int) (mask!12768 (_ BitVec 32)) (extraKeys!4583 (_ BitVec 32)) (zeroValue!4593 List!47695) (minValue!4593 List!47695) (_size!8710 (_ BitVec 32)) (_keys!4634 array!15518) (_values!4615 array!15522) (_vacant!4395 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17145 0))(
  ( (Cell!17146 (v!41478 LongMapFixedSize!8668)) )
))
(declare-datatypes ((Hashable!4249 0))(
  ( (HashableExt!4248 (__x!29025 Int)) )
))
(declare-datatypes ((MutableMap!4239 0))(
  ( (MutableMapExt!4238 (__x!29026 Int)) (HashMap!4239 (underlying!8896 Cell!17143) (hashF!6281 Hashable!4249) (_size!8711 (_ BitVec 32)) (defaultValue!4410 Int)) )
))
(declare-datatypes ((CacheDown!2886 0))(
  ( (CacheDown!2887 (cache!4379 MutableMap!4239)) )
))
(declare-datatypes ((MutLongMap!4334 0))(
  ( (LongMap!4334 (underlying!8897 Cell!17145)) (MutLongMapExt!4333 (__x!29027 Int)) )
))
(declare-datatypes ((Cell!17147 0))(
  ( (Cell!17148 (v!41479 MutLongMap!4334)) )
))
(declare-datatypes ((Hashable!4250 0))(
  ( (HashableExt!4249 (__x!29028 Int)) )
))
(declare-datatypes ((MutableMap!4240 0))(
  ( (MutableMapExt!4239 (__x!29029 Int)) (HashMap!4240 (underlying!8898 Cell!17147) (hashF!6282 Hashable!4250) (_size!8712 (_ BitVec 32)) (defaultValue!4411 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!430 0))(
  ( (CacheFindLongestMatch!431 (cache!4380 MutableMap!4240) (totalInput!4325 BalanceConc!28232)) )
))
(declare-datatypes ((tuple4!970 0))(
  ( (tuple4!971 (_1!25720 tuple2!45076) (_2!25720 CacheUp!2768) (_3!3175 CacheDown!2886) (_4!485 CacheFindLongestMatch!430)) )
))
(declare-fun lt!1516256 () tuple4!970)

(declare-fun valid!3365 (CacheUp!2768) Bool)

(assert (=> b!4287257 (= res!1758749 (valid!3365 (_2!25720 lt!1516256)))))

(declare-fun b!4287258 () Bool)

(declare-fun e!2662578 () Bool)

(declare-fun tp!1313292 () Bool)

(declare-fun tp!1313304 () Bool)

(assert (=> b!4287258 (= e!2662578 (and tp!1313292 tp!1313304))))

(declare-fun b!4287259 () Bool)

(declare-fun e!2662584 () Bool)

(declare-fun input!6546 () BalanceConc!28232)

(declare-fun tp!1313303 () Bool)

(declare-fun inv!63032 (Conc!14371) Bool)

(assert (=> b!4287259 (= e!2662584 (and (inv!63032 (c!730167 input!6546)) tp!1313303))))

(declare-fun mapNonEmpty!19569 () Bool)

(declare-fun mapRes!19571 () Bool)

(declare-fun tp!1313298 () Bool)

(declare-fun tp!1313310 () Bool)

(assert (=> mapNonEmpty!19569 (= mapRes!19571 (and tp!1313298 tp!1313310))))

(declare-fun cacheDown!1163 () CacheDown!2886)

(declare-fun mapRest!19571 () (Array (_ BitVec 32) List!47694))

(declare-fun mapKey!19571 () (_ BitVec 32))

(declare-fun mapValue!19569 () List!47694)

(assert (=> mapNonEmpty!19569 (= (arr!6930 (_values!4614 (v!41476 (underlying!8895 (v!41477 (underlying!8896 (cache!4379 cacheDown!1163))))))) (store mapRest!19571 mapKey!19571 mapValue!19569))))

(declare-fun b!4287260 () Bool)

(declare-fun e!2662603 () Bool)

(declare-fun totalInput!1189 () BalanceConc!28232)

(declare-fun tp!1313299 () Bool)

(assert (=> b!4287260 (= e!2662603 (and (inv!63032 (c!730167 totalInput!1189)) tp!1313299))))

(declare-fun b!4287262 () Bool)

(declare-fun e!2662601 () Bool)

(declare-fun e!2662593 () Bool)

(assert (=> b!4287262 (= e!2662601 e!2662593)))

(declare-fun b!4287263 () Bool)

(declare-fun e!2662586 () Bool)

(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!430)

(declare-fun tp!1313301 () Bool)

(assert (=> b!4287263 (= e!2662586 (and (inv!63032 (c!730167 (totalInput!4325 cacheFindLongestMatch!199))) tp!1313301))))

(declare-fun b!4287264 () Bool)

(declare-fun e!2662582 () Bool)

(declare-datatypes ((tuple4!972 0))(
  ( (tuple4!973 (_1!25721 Int) (_2!25721 CacheUp!2768) (_3!3176 CacheDown!2886) (_4!486 CacheFindLongestMatch!430)) )
))
(declare-fun lt!1516251 () tuple4!972)

(declare-fun splitAt!213 (BalanceConc!28232 Int) tuple2!45076)

(assert (=> b!4287264 (= e!2662582 (= lt!1516256 (tuple4!971 (splitAt!213 input!6546 (_1!25721 lt!1516251)) (_2!25721 lt!1516251) (_3!3176 lt!1516251) (_4!486 lt!1516251))))))

(declare-fun b!4287265 () Bool)

(declare-fun e!2662588 () Bool)

(declare-fun e!2662595 () Bool)

(declare-fun lt!1516250 () MutLongMap!4333)

(assert (=> b!4287265 (= e!2662588 (and e!2662595 ((_ is LongMap!4333) lt!1516250)))))

(assert (=> b!4287265 (= lt!1516250 (v!41477 (underlying!8896 (cache!4379 cacheDown!1163))))))

(declare-fun mapIsEmpty!19569 () Bool)

(declare-fun mapRes!19569 () Bool)

(assert (=> mapIsEmpty!19569 mapRes!19569))

(declare-fun b!4287266 () Bool)

(declare-fun e!2662596 () Bool)

(declare-fun tp!1313287 () Bool)

(assert (=> b!4287266 (= e!2662596 (and tp!1313287 mapRes!19571))))

(declare-fun condMapEmpty!19571 () Bool)

(declare-fun mapDefault!19570 () List!47694)

(assert (=> b!4287266 (= condMapEmpty!19571 (= (arr!6930 (_values!4614 (v!41476 (underlying!8895 (v!41477 (underlying!8896 (cache!4379 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47694)) mapDefault!19570)))))

(declare-fun e!2662602 () Bool)

(declare-fun e!2662610 () Bool)

(assert (=> b!4287267 (= e!2662602 (and e!2662610 tp!1313313))))

(declare-fun e!2662581 () Bool)

(assert (=> b!4287268 (= e!2662581 (and e!2662583 tp!1313305))))

(declare-fun b!4287269 () Bool)

(assert (=> b!4287269 (= e!2662609 e!2662601)))

(declare-fun e!2662579 () Bool)

(assert (=> b!4287270 (= e!2662579 (and e!2662588 tp!1313306))))

(declare-fun b!4287271 () Bool)

(declare-fun e!2662599 () Bool)

(declare-fun tp!1313311 () Bool)

(declare-fun mapRes!19570 () Bool)

(assert (=> b!4287271 (= e!2662599 (and tp!1313311 mapRes!19570))))

(declare-fun condMapEmpty!19570 () Bool)

(declare-fun mapDefault!19571 () List!47693)

(assert (=> b!4287271 (= condMapEmpty!19570 (= (arr!6928 (_values!4613 (v!41474 (underlying!8893 (v!41475 (underlying!8894 (cache!4378 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47693)) mapDefault!19571)))))

(declare-fun b!4287272 () Bool)

(declare-fun res!1758745 () Bool)

(declare-fun e!2662577 () Bool)

(assert (=> b!4287272 (=> (not res!1758745) (not e!2662577))))

(assert (=> b!4287272 (= res!1758745 (= (totalInput!4325 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun b!4287273 () Bool)

(declare-fun e!2662604 () Bool)

(declare-fun inv!63033 (BalanceConc!28232) Bool)

(assert (=> b!4287273 (= e!2662604 (and e!2662602 (inv!63033 (totalInput!4325 cacheFindLongestMatch!199)) e!2662586))))

(declare-fun b!4287274 () Bool)

(declare-fun res!1758742 () Bool)

(assert (=> b!4287274 (=> (not res!1758742) (not e!2662590))))

(declare-fun valid!3366 (CacheDown!2886) Bool)

(assert (=> b!4287274 (= res!1758742 (valid!3366 (_3!3175 lt!1516256)))))

(declare-fun b!4287275 () Bool)

(declare-fun e!2662606 () Bool)

(assert (=> b!4287275 (= e!2662595 e!2662606)))

(declare-fun e!2662592 () Bool)

(declare-fun b!4287276 () Bool)

(declare-fun r!15285 () Regex!12929)

(declare-fun findLongestMatchWithZipperSequenceV2!125 (Regex!12929 BalanceConc!28232 BalanceConc!28232) tuple2!45076)

(assert (=> b!4287276 (= e!2662592 (= (findLongestMatchWithZipperSequenceV2!125 r!15285 input!6546 totalInput!1189) lt!1516248))))

(declare-fun b!4287277 () Bool)

(declare-fun res!1758750 () Bool)

(assert (=> b!4287277 (=> (not res!1758750) (not e!2662582))))

(assert (=> b!4287277 (= res!1758750 (valid!3365 (_2!25721 lt!1516251)))))

(declare-fun b!4287278 () Bool)

(declare-fun res!1758740 () Bool)

(assert (=> b!4287278 (=> (not res!1758740) (not e!2662582))))

(declare-fun valid!3367 (CacheFindLongestMatch!430) Bool)

(assert (=> b!4287278 (= res!1758740 (valid!3367 (_4!486 lt!1516251)))))

(declare-fun b!4287279 () Bool)

(declare-fun res!1758753 () Bool)

(assert (=> b!4287279 (=> (not res!1758753) (not e!2662577))))

(assert (=> b!4287279 (= res!1758753 (valid!3366 cacheDown!1163))))

(declare-fun b!4287280 () Bool)

(declare-fun res!1758756 () Bool)

(assert (=> b!4287280 (=> (not res!1758756) (not e!2662582))))

(assert (=> b!4287280 (= res!1758756 (= (totalInput!4325 (_4!486 lt!1516251)) totalInput!1189))))

(declare-fun b!4287281 () Bool)

(declare-fun tp!1313300 () Bool)

(assert (=> b!4287281 (= e!2662578 tp!1313300)))

(declare-fun b!4287282 () Bool)

(declare-fun e!2662587 () Bool)

(assert (=> b!4287282 (= e!2662587 e!2662581)))

(declare-fun b!4287283 () Bool)

(declare-fun e!2662594 () Bool)

(declare-fun tp!1313295 () Bool)

(assert (=> b!4287283 (= e!2662594 (and tp!1313295 mapRes!19569))))

(declare-fun condMapEmpty!19569 () Bool)

(declare-fun mapDefault!19569 () List!47695)

(assert (=> b!4287283 (= condMapEmpty!19569 (= (arr!6931 (_values!4615 (v!41478 (underlying!8897 (v!41479 (underlying!8898 (cache!4380 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47695)) mapDefault!19569)))))

(declare-fun b!4287284 () Bool)

(declare-fun res!1758752 () Bool)

(assert (=> b!4287284 (=> (not res!1758752) (not e!2662577))))

(assert (=> b!4287284 (= res!1758752 (valid!3367 cacheFindLongestMatch!199))))

(declare-fun b!4287285 () Bool)

(declare-fun e!2662605 () Bool)

(assert (=> b!4287285 (= e!2662577 e!2662605)))

(declare-fun res!1758748 () Bool)

(assert (=> b!4287285 (=> (not res!1758748) (not e!2662605))))

(declare-fun lt!1516259 () List!47691)

(declare-fun isSuffix!1021 (List!47691 List!47691) Bool)

(assert (=> b!4287285 (= res!1758748 (isSuffix!1021 lt!1516259 (list!17337 totalInput!1189)))))

(assert (=> b!4287285 (= lt!1516259 (list!17337 input!6546))))

(declare-fun b!4287286 () Bool)

(declare-fun res!1758744 () Bool)

(assert (=> b!4287286 (=> (not res!1758744) (not e!2662590))))

(assert (=> b!4287286 (= res!1758744 (valid!3367 (_4!485 lt!1516256)))))

(declare-fun mapIsEmpty!19570 () Bool)

(assert (=> mapIsEmpty!19570 mapRes!19571))

(declare-fun b!4287287 () Bool)

(declare-fun res!1758747 () Bool)

(assert (=> b!4287287 (=> (not res!1758747) (not e!2662582))))

(assert (=> b!4287287 (= res!1758747 (valid!3366 (_3!3176 lt!1516251)))))

(declare-fun b!4287288 () Bool)

(declare-fun e!2662591 () Bool)

(declare-fun e!2662597 () Bool)

(assert (=> b!4287288 (= e!2662591 e!2662597)))

(declare-fun b!4287289 () Bool)

(declare-fun e!2662598 () Bool)

(assert (=> b!4287289 (= e!2662606 e!2662598)))

(declare-fun tp!1313294 () Bool)

(declare-fun tp!1313308 () Bool)

(declare-fun array_inv!4964 (array!15518) Bool)

(declare-fun array_inv!4965 (array!15522) Bool)

(assert (=> b!4287290 (= e!2662597 (and tp!1313312 tp!1313308 tp!1313294 (array_inv!4964 (_keys!4634 (v!41478 (underlying!8897 (v!41479 (underlying!8898 (cache!4380 cacheFindLongestMatch!199))))))) (array_inv!4965 (_values!4615 (v!41478 (underlying!8897 (v!41479 (underlying!8898 (cache!4380 cacheFindLongestMatch!199))))))) e!2662594))))

(declare-fun tp!1313314 () Bool)

(declare-fun tp!1313288 () Bool)

(declare-fun array_inv!4966 (array!15516) Bool)

(assert (=> b!4287291 (= e!2662593 (and tp!1313290 tp!1313314 tp!1313288 (array_inv!4964 (_keys!4632 (v!41474 (underlying!8893 (v!41475 (underlying!8894 (cache!4378 cacheUp!1044))))))) (array_inv!4966 (_values!4613 (v!41474 (underlying!8893 (v!41475 (underlying!8894 (cache!4378 cacheUp!1044))))))) e!2662599))))

(declare-fun b!4287292 () Bool)

(assert (=> b!4287292 (= e!2662605 (not true))))

(assert (=> b!4287292 e!2662582))

(declare-fun res!1758751 () Bool)

(assert (=> b!4287292 (=> (not res!1758751) (not e!2662582))))

(declare-fun lt!1516247 () Int)

(declare-fun lt!1516257 () (InoxSet Context!5638))

(declare-fun lt!1516249 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!19 ((InoxSet Context!5638) Int BalanceConc!28232 Int) Int)

(assert (=> b!4287292 (= res!1758751 (= (_1!25721 lt!1516251) (findLongestMatchInnerZipperFastV2!19 lt!1516257 lt!1516247 totalInput!1189 lt!1516249)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!1 ((InoxSet Context!5638) Int BalanceConc!28232 Int CacheUp!2768 CacheDown!2886 CacheFindLongestMatch!430) tuple4!972)

(assert (=> b!4287292 (= lt!1516251 (findLongestMatchInnerZipperFastV2Mem!1 lt!1516257 lt!1516247 totalInput!1189 lt!1516249 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(declare-fun size!34879 (BalanceConc!28232) Int)

(assert (=> b!4287292 (= lt!1516247 (- lt!1516249 (size!34879 input!6546)))))

(assert (=> b!4287292 (= lt!1516249 (size!34879 totalInput!1189))))

(assert (=> b!4287292 e!2662590))

(declare-fun res!1758755 () Bool)

(assert (=> b!4287292 (=> (not res!1758755) (not e!2662590))))

(assert (=> b!4287292 (= res!1758755 (= (_1!25720 lt!1516256) lt!1516248))))

(declare-fun findLongestMatchZipperFastV2Mem!3 ((InoxSet Context!5638) BalanceConc!28232 BalanceConc!28232 CacheUp!2768 CacheDown!2886 CacheFindLongestMatch!430) tuple4!970)

(assert (=> b!4287292 (= lt!1516256 (findLongestMatchZipperFastV2Mem!3 lt!1516257 input!6546 totalInput!1189 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(assert (=> b!4287292 e!2662592))

(declare-fun res!1758746 () Bool)

(assert (=> b!4287292 (=> (not res!1758746) (not e!2662592))))

(declare-fun sizeTr!333 (List!47691 Int) Int)

(declare-fun size!34880 (List!47691) Int)

(assert (=> b!4287292 (= res!1758746 (= (sizeTr!333 lt!1516259 0) (size!34880 lt!1516259)))))

(declare-datatypes ((Unit!66395 0))(
  ( (Unit!66396) )
))
(declare-fun lt!1516252 () Unit!66395)

(declare-fun lemmaSizeTrEqualsSize!332 (List!47691 Int) Unit!66395)

(assert (=> b!4287292 (= lt!1516252 (lemmaSizeTrEqualsSize!332 lt!1516259 0))))

(assert (=> b!4287292 e!2662607))

(declare-fun res!1758743 () Bool)

(assert (=> b!4287292 (=> (not res!1758743) (not e!2662607))))

(assert (=> b!4287292 (= res!1758743 (= (list!17337 (_1!25712 lt!1516248)) (_1!25713 lt!1516255)))))

(declare-fun findLongestMatch!1624 (Regex!12929 List!47691) tuple2!45078)

(assert (=> b!4287292 (= lt!1516255 (findLongestMatch!1624 r!15285 lt!1516259))))

(declare-fun findLongestMatchZipperFastV2!19 ((InoxSet Context!5638) BalanceConc!28232 BalanceConc!28232) tuple2!45076)

(assert (=> b!4287292 (= lt!1516248 (findLongestMatchZipperFastV2!19 lt!1516257 input!6546 totalInput!1189))))

(declare-fun lt!1516258 () Unit!66395)

(declare-fun longestMatchV2SameAsRegex!18 (Regex!12929 (InoxSet Context!5638) BalanceConc!28232 BalanceConc!28232) Unit!66395)

(assert (=> b!4287292 (= lt!1516258 (longestMatchV2SameAsRegex!18 r!15285 lt!1516257 input!6546 totalInput!1189))))

(declare-fun focus!320 (Regex!12929) (InoxSet Context!5638))

(assert (=> b!4287292 (= lt!1516257 (focus!320 r!15285))))

(declare-fun b!4287293 () Bool)

(declare-fun tp!1313297 () Bool)

(declare-fun tp!1313293 () Bool)

(assert (=> b!4287293 (= e!2662578 (and tp!1313297 tp!1313293))))

(declare-fun mapIsEmpty!19571 () Bool)

(assert (=> mapIsEmpty!19571 mapRes!19570))

(declare-fun mapNonEmpty!19570 () Bool)

(declare-fun tp!1313315 () Bool)

(declare-fun tp!1313291 () Bool)

(assert (=> mapNonEmpty!19570 (= mapRes!19570 (and tp!1313315 tp!1313291))))

(declare-fun mapValue!19570 () List!47693)

(declare-fun mapKey!19569 () (_ BitVec 32))

(declare-fun mapRest!19569 () (Array (_ BitVec 32) List!47693))

(assert (=> mapNonEmpty!19570 (= (arr!6928 (_values!4613 (v!41474 (underlying!8893 (v!41475 (underlying!8894 (cache!4378 cacheUp!1044))))))) (store mapRest!19569 mapKey!19569 mapValue!19570))))

(declare-fun tp!1313296 () Bool)

(declare-fun tp!1313302 () Bool)

(declare-fun array_inv!4967 (array!15520) Bool)

(assert (=> b!4287294 (= e!2662598 (and tp!1313309 tp!1313302 tp!1313296 (array_inv!4964 (_keys!4633 (v!41476 (underlying!8895 (v!41477 (underlying!8896 (cache!4379 cacheDown!1163))))))) (array_inv!4967 (_values!4614 (v!41476 (underlying!8895 (v!41477 (underlying!8896 (cache!4379 cacheDown!1163))))))) e!2662596))))

(declare-fun b!4287295 () Bool)

(declare-fun e!2662580 () Bool)

(assert (=> b!4287295 (= e!2662580 e!2662579)))

(declare-fun b!4287296 () Bool)

(declare-fun tp_is_empty!23089 () Bool)

(assert (=> b!4287296 (= e!2662578 tp_is_empty!23089)))

(declare-fun b!4287297 () Bool)

(declare-fun res!1758754 () Bool)

(assert (=> b!4287297 (=> (not res!1758754) (not e!2662577))))

(assert (=> b!4287297 (= res!1758754 (valid!3365 cacheUp!1044))))

(declare-fun b!4287298 () Bool)

(assert (=> b!4287298 (= e!2662590 (= (totalInput!4325 (_4!485 lt!1516256)) totalInput!1189))))

(declare-fun b!4287299 () Bool)

(declare-fun e!2662585 () Bool)

(declare-fun lt!1516254 () MutLongMap!4334)

(assert (=> b!4287299 (= e!2662610 (and e!2662585 ((_ is LongMap!4334) lt!1516254)))))

(assert (=> b!4287299 (= lt!1516254 (v!41479 (underlying!8898 (cache!4380 cacheFindLongestMatch!199))))))

(declare-fun mapNonEmpty!19571 () Bool)

(declare-fun tp!1313307 () Bool)

(declare-fun tp!1313289 () Bool)

(assert (=> mapNonEmpty!19571 (= mapRes!19569 (and tp!1313307 tp!1313289))))

(declare-fun mapRest!19570 () (Array (_ BitVec 32) List!47695))

(declare-fun mapValue!19571 () List!47695)

(declare-fun mapKey!19570 () (_ BitVec 32))

(assert (=> mapNonEmpty!19571 (= (arr!6931 (_values!4615 (v!41478 (underlying!8897 (v!41479 (underlying!8898 (cache!4380 cacheFindLongestMatch!199))))))) (store mapRest!19570 mapKey!19570 mapValue!19571))))

(declare-fun b!4287261 () Bool)

(assert (=> b!4287261 (= e!2662585 e!2662591)))

(declare-fun res!1758741 () Bool)

(assert (=> start!411834 (=> (not res!1758741) (not e!2662577))))

(declare-fun validRegex!5850 (Regex!12929) Bool)

(assert (=> start!411834 (= res!1758741 (validRegex!5850 r!15285))))

(assert (=> start!411834 e!2662577))

(assert (=> start!411834 (and (inv!63033 totalInput!1189) e!2662603)))

(assert (=> start!411834 e!2662578))

(assert (=> start!411834 (and (inv!63033 input!6546) e!2662584)))

(declare-fun inv!63034 (CacheFindLongestMatch!430) Bool)

(assert (=> start!411834 (and (inv!63034 cacheFindLongestMatch!199) e!2662604)))

(declare-fun inv!63035 (CacheDown!2886) Bool)

(assert (=> start!411834 (and (inv!63035 cacheDown!1163) e!2662580)))

(declare-fun inv!63036 (CacheUp!2768) Bool)

(assert (=> start!411834 (and (inv!63036 cacheUp!1044) e!2662587)))

(assert (= (and start!411834 res!1758741) b!4287297))

(assert (= (and b!4287297 res!1758754) b!4287279))

(assert (= (and b!4287279 res!1758753) b!4287284))

(assert (= (and b!4287284 res!1758752) b!4287272))

(assert (= (and b!4287272 res!1758745) b!4287285))

(assert (= (and b!4287285 res!1758748) b!4287292))

(assert (= (and b!4287292 res!1758743) b!4287255))

(assert (= (and b!4287292 res!1758746) b!4287276))

(assert (= (and b!4287292 res!1758755) b!4287257))

(assert (= (and b!4287257 res!1758749) b!4287274))

(assert (= (and b!4287274 res!1758742) b!4287286))

(assert (= (and b!4287286 res!1758744) b!4287298))

(assert (= (and b!4287292 res!1758751) b!4287277))

(assert (= (and b!4287277 res!1758750) b!4287287))

(assert (= (and b!4287287 res!1758747) b!4287278))

(assert (= (and b!4287278 res!1758740) b!4287280))

(assert (= (and b!4287280 res!1758756) b!4287264))

(assert (= start!411834 b!4287260))

(assert (= (and start!411834 ((_ is ElementMatch!12929) r!15285)) b!4287296))

(assert (= (and start!411834 ((_ is Concat!21248) r!15285)) b!4287293))

(assert (= (and start!411834 ((_ is Star!12929) r!15285)) b!4287281))

(assert (= (and start!411834 ((_ is Union!12929) r!15285)) b!4287258))

(assert (= start!411834 b!4287259))

(assert (= (and b!4287283 condMapEmpty!19569) mapIsEmpty!19569))

(assert (= (and b!4287283 (not condMapEmpty!19569)) mapNonEmpty!19571))

(assert (= b!4287290 b!4287283))

(assert (= b!4287288 b!4287290))

(assert (= b!4287261 b!4287288))

(assert (= (and b!4287299 ((_ is LongMap!4334) (v!41479 (underlying!8898 (cache!4380 cacheFindLongestMatch!199))))) b!4287261))

(assert (= b!4287267 b!4287299))

(assert (= (and b!4287273 ((_ is HashMap!4240) (cache!4380 cacheFindLongestMatch!199))) b!4287267))

(assert (= b!4287273 b!4287263))

(assert (= start!411834 b!4287273))

(assert (= (and b!4287266 condMapEmpty!19571) mapIsEmpty!19570))

(assert (= (and b!4287266 (not condMapEmpty!19571)) mapNonEmpty!19569))

(assert (= b!4287294 b!4287266))

(assert (= b!4287289 b!4287294))

(assert (= b!4287275 b!4287289))

(assert (= (and b!4287265 ((_ is LongMap!4333) (v!41477 (underlying!8896 (cache!4379 cacheDown!1163))))) b!4287275))

(assert (= b!4287270 b!4287265))

(assert (= (and b!4287295 ((_ is HashMap!4239) (cache!4379 cacheDown!1163))) b!4287270))

(assert (= start!411834 b!4287295))

(assert (= (and b!4287271 condMapEmpty!19570) mapIsEmpty!19571))

(assert (= (and b!4287271 (not condMapEmpty!19570)) mapNonEmpty!19570))

(assert (= b!4287291 b!4287271))

(assert (= b!4287262 b!4287291))

(assert (= b!4287269 b!4287262))

(assert (= (and b!4287256 ((_ is LongMap!4332) (v!41475 (underlying!8894 (cache!4378 cacheUp!1044))))) b!4287269))

(assert (= b!4287268 b!4287256))

(assert (= (and b!4287282 ((_ is HashMap!4238) (cache!4378 cacheUp!1044))) b!4287268))

(assert (= start!411834 b!4287282))

(declare-fun m!4882583 () Bool)

(assert (=> b!4287285 m!4882583))

(assert (=> b!4287285 m!4882583))

(declare-fun m!4882585 () Bool)

(assert (=> b!4287285 m!4882585))

(declare-fun m!4882587 () Bool)

(assert (=> b!4287285 m!4882587))

(declare-fun m!4882589 () Bool)

(assert (=> mapNonEmpty!19569 m!4882589))

(declare-fun m!4882591 () Bool)

(assert (=> b!4287274 m!4882591))

(declare-fun m!4882593 () Bool)

(assert (=> b!4287287 m!4882593))

(declare-fun m!4882595 () Bool)

(assert (=> b!4287263 m!4882595))

(declare-fun m!4882597 () Bool)

(assert (=> b!4287292 m!4882597))

(declare-fun m!4882599 () Bool)

(assert (=> b!4287292 m!4882599))

(declare-fun m!4882601 () Bool)

(assert (=> b!4287292 m!4882601))

(declare-fun m!4882603 () Bool)

(assert (=> b!4287292 m!4882603))

(declare-fun m!4882605 () Bool)

(assert (=> b!4287292 m!4882605))

(declare-fun m!4882607 () Bool)

(assert (=> b!4287292 m!4882607))

(declare-fun m!4882609 () Bool)

(assert (=> b!4287292 m!4882609))

(declare-fun m!4882611 () Bool)

(assert (=> b!4287292 m!4882611))

(declare-fun m!4882613 () Bool)

(assert (=> b!4287292 m!4882613))

(declare-fun m!4882615 () Bool)

(assert (=> b!4287292 m!4882615))

(declare-fun m!4882617 () Bool)

(assert (=> b!4287292 m!4882617))

(declare-fun m!4882619 () Bool)

(assert (=> b!4287292 m!4882619))

(declare-fun m!4882621 () Bool)

(assert (=> b!4287292 m!4882621))

(declare-fun m!4882623 () Bool)

(assert (=> b!4287273 m!4882623))

(declare-fun m!4882625 () Bool)

(assert (=> b!4287279 m!4882625))

(declare-fun m!4882627 () Bool)

(assert (=> b!4287260 m!4882627))

(declare-fun m!4882629 () Bool)

(assert (=> b!4287284 m!4882629))

(declare-fun m!4882631 () Bool)

(assert (=> start!411834 m!4882631))

(declare-fun m!4882633 () Bool)

(assert (=> start!411834 m!4882633))

(declare-fun m!4882635 () Bool)

(assert (=> start!411834 m!4882635))

(declare-fun m!4882637 () Bool)

(assert (=> start!411834 m!4882637))

(declare-fun m!4882639 () Bool)

(assert (=> start!411834 m!4882639))

(declare-fun m!4882641 () Bool)

(assert (=> start!411834 m!4882641))

(declare-fun m!4882643 () Bool)

(assert (=> b!4287264 m!4882643))

(declare-fun m!4882645 () Bool)

(assert (=> b!4287290 m!4882645))

(declare-fun m!4882647 () Bool)

(assert (=> b!4287290 m!4882647))

(declare-fun m!4882649 () Bool)

(assert (=> b!4287276 m!4882649))

(declare-fun m!4882651 () Bool)

(assert (=> b!4287277 m!4882651))

(declare-fun m!4882653 () Bool)

(assert (=> mapNonEmpty!19571 m!4882653))

(declare-fun m!4882655 () Bool)

(assert (=> b!4287255 m!4882655))

(declare-fun m!4882657 () Bool)

(assert (=> b!4287286 m!4882657))

(declare-fun m!4882659 () Bool)

(assert (=> b!4287291 m!4882659))

(declare-fun m!4882661 () Bool)

(assert (=> b!4287291 m!4882661))

(declare-fun m!4882663 () Bool)

(assert (=> b!4287257 m!4882663))

(declare-fun m!4882665 () Bool)

(assert (=> b!4287259 m!4882665))

(declare-fun m!4882667 () Bool)

(assert (=> b!4287297 m!4882667))

(declare-fun m!4882669 () Bool)

(assert (=> b!4287294 m!4882669))

(declare-fun m!4882671 () Bool)

(assert (=> b!4287294 m!4882671))

(declare-fun m!4882673 () Bool)

(assert (=> b!4287278 m!4882673))

(declare-fun m!4882675 () Bool)

(assert (=> mapNonEmpty!19570 m!4882675))

(check-sat (not b!4287274) (not b!4287287) (not b!4287284) (not b!4287277) (not b!4287260) (not b!4287271) (not b!4287281) (not b!4287279) (not mapNonEmpty!19571) (not b_next!127857) (not b!4287278) (not b!4287266) b_and!338375 (not b!4287293) (not b!4287291) (not b!4287264) (not b_next!127865) b_and!338373 (not b!4287292) tp_is_empty!23089 (not mapNonEmpty!19570) (not b!4287258) (not b!4287257) (not b!4287259) (not b!4287294) (not b_next!127855) (not b!4287286) (not b!4287285) (not b!4287276) (not b!4287290) b_and!338377 b_and!338371 (not b!4287273) (not b!4287263) (not b!4287255) (not mapNonEmpty!19569) (not b!4287297) b_and!338369 (not b_next!127859) (not b_next!127863) (not start!411834) (not b!4287283) (not b_next!127861) b_and!338367)
(check-sat (not b_next!127855) (not b_next!127857) b_and!338375 (not b_next!127865) b_and!338373 b_and!338377 b_and!338371 (not b_next!127863) b_and!338369 (not b_next!127859) (not b_next!127861) b_and!338367)
