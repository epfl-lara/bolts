; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1944 () Bool)

(assert start!1944)

(declare-fun b!35597 () Bool)

(declare-fun b_free!497 () Bool)

(declare-fun b_next!497 () Bool)

(assert (=> b!35597 (= b_free!497 (not b_next!497))))

(declare-fun tp!24520 () Bool)

(declare-fun b_and!531 () Bool)

(assert (=> b!35597 (= tp!24520 b_and!531)))

(declare-fun b!35588 () Bool)

(declare-fun b_free!499 () Bool)

(declare-fun b_next!499 () Bool)

(assert (=> b!35588 (= b_free!499 (not b_next!499))))

(declare-fun tp!24529 () Bool)

(declare-fun b_and!533 () Bool)

(assert (=> b!35588 (= tp!24529 b_and!533)))

(declare-fun b!35587 () Bool)

(declare-fun b_free!501 () Bool)

(declare-fun b_next!501 () Bool)

(assert (=> b!35587 (= b_free!501 (not b_next!501))))

(declare-fun tp!24526 () Bool)

(declare-fun b_and!535 () Bool)

(assert (=> b!35587 (= tp!24526 b_and!535)))

(declare-fun b!35600 () Bool)

(declare-fun b_free!503 () Bool)

(declare-fun b_next!503 () Bool)

(assert (=> b!35600 (= b_free!503 (not b_next!503))))

(declare-fun tp!24525 () Bool)

(declare-fun b_and!537 () Bool)

(assert (=> b!35600 (= tp!24525 b_and!537)))

(declare-fun b!35584 () Bool)

(declare-fun res!28016 () Bool)

(declare-fun e!17228 () Bool)

(assert (=> b!35584 (=> (not res!28016) (not e!17228))))

(declare-datatypes ((Regex!163 0))(
  ( (ElementMatch!163 (c!15453 (_ BitVec 16))) (Concat!280 (regOne!838 Regex!163) (regTwo!838 Regex!163)) (EmptyExpr!163) (Star!163 (reg!492 Regex!163)) (EmptyLang!163) (Union!163 (regOne!839 Regex!163) (regTwo!839 Regex!163)) )
))
(declare-datatypes ((List!375 0))(
  ( (Nil!373) (Cons!373 (h!5769 Regex!163) (t!15181 List!375)) )
))
(declare-datatypes ((Context!90 0))(
  ( (Context!91 (exprs!545 List!375)) )
))
(declare-datatypes ((tuple3!106 0))(
  ( (tuple3!107 (_1!211 Regex!163) (_2!211 Context!90) (_3!57 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!308 0))(
  ( (tuple2!309 (_1!212 tuple3!106) (_2!212 (InoxSet Context!90))) )
))
(declare-datatypes ((List!376 0))(
  ( (Nil!374) (Cons!374 (h!5770 tuple2!308) (t!15182 List!376)) )
))
(declare-datatypes ((array!307 0))(
  ( (array!308 (arr!170 (Array (_ BitVec 32) List!376)) (size!422 (_ BitVec 32))) )
))
(declare-datatypes ((array!309 0))(
  ( (array!310 (arr!171 (Array (_ BitVec 32) (_ BitVec 64))) (size!423 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!186 0))(
  ( (LongMapFixedSize!187 (defaultEntry!431 Int) (mask!776 (_ BitVec 32)) (extraKeys!339 (_ BitVec 32)) (zeroValue!349 List!376) (minValue!349 List!376) (_size!318 (_ BitVec 32)) (_keys!384 array!309) (_values!371 array!307) (_vacant!153 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!361 0))(
  ( (Cell!362 (v!12152 LongMapFixedSize!186)) )
))
(declare-datatypes ((MutLongMap!93 0))(
  ( (LongMap!93 (underlying!381 Cell!361)) (MutLongMapExt!92 (__x!697 Int)) )
))
(declare-datatypes ((Cell!363 0))(
  ( (Cell!364 (v!12153 MutLongMap!93)) )
))
(declare-datatypes ((Hashable!89 0))(
  ( (HashableExt!88 (__x!698 Int)) )
))
(declare-datatypes ((MutableMap!89 0))(
  ( (MutableMapExt!88 (__x!699 Int)) (HashMap!89 (underlying!382 Cell!363) (hashF!1956 Hashable!89) (_size!319 (_ BitVec 32)) (defaultValue!238 Int)) )
))
(declare-datatypes ((CacheDown!78 0))(
  ( (CacheDown!79 (cache!568 MutableMap!89)) )
))
(declare-fun cacheDown!381 () CacheDown!78)

(declare-fun valid!104 (CacheDown!78) Bool)

(assert (=> b!35584 (= res!28016 (valid!104 cacheDown!381))))

(declare-fun b!35585 () Bool)

(declare-fun e!17214 () Bool)

(assert (=> b!35585 (= e!17228 e!17214)))

(declare-fun res!28015 () Bool)

(assert (=> b!35585 (=> (not res!28015) (not e!17214))))

(declare-datatypes ((tuple3!108 0))(
  ( (tuple3!109 (_1!213 (InoxSet Context!90)) (_2!213 Int) (_3!58 Int)) )
))
(declare-datatypes ((tuple2!310 0))(
  ( (tuple2!311 (_1!214 tuple3!108) (_2!214 Int)) )
))
(declare-datatypes ((List!377 0))(
  ( (Nil!375) (Cons!375 (h!5771 tuple2!310) (t!15183 List!377)) )
))
(declare-datatypes ((List!378 0))(
  ( (Nil!376) (Cons!376 (h!5772 (_ BitVec 16)) (t!15184 List!378)) )
))
(declare-datatypes ((IArray!117 0))(
  ( (IArray!118 (innerList!116 List!378)) )
))
(declare-datatypes ((Conc!58 0))(
  ( (Node!58 (left!419 Conc!58) (right!749 Conc!58) (csize!346 Int) (cheight!269 Int)) (Leaf!218 (xs!2637 IArray!117) (csize!347 Int)) (Empty!58) )
))
(declare-datatypes ((BalanceConc!116 0))(
  ( (BalanceConc!117 (c!15454 Conc!58)) )
))
(declare-datatypes ((array!311 0))(
  ( (array!312 (arr!172 (Array (_ BitVec 32) List!377)) (size!424 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!188 0))(
  ( (LongMapFixedSize!189 (defaultEntry!432 Int) (mask!777 (_ BitVec 32)) (extraKeys!340 (_ BitVec 32)) (zeroValue!350 List!377) (minValue!350 List!377) (_size!320 (_ BitVec 32)) (_keys!385 array!309) (_values!372 array!311) (_vacant!154 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!90 0))(
  ( (HashableExt!89 (__x!700 Int)) )
))
(declare-datatypes ((Cell!365 0))(
  ( (Cell!366 (v!12154 LongMapFixedSize!188)) )
))
(declare-datatypes ((MutLongMap!94 0))(
  ( (LongMap!94 (underlying!383 Cell!365)) (MutLongMapExt!93 (__x!701 Int)) )
))
(declare-datatypes ((Cell!367 0))(
  ( (Cell!368 (v!12155 MutLongMap!94)) )
))
(declare-datatypes ((MutableMap!90 0))(
  ( (MutableMapExt!89 (__x!702 Int)) (HashMap!90 (underlying!384 Cell!367) (hashF!1957 Hashable!90) (_size!321 (_ BitVec 32)) (defaultValue!239 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!24 0))(
  ( (CacheFurthestNullable!25 (cache!569 MutableMap!90) (totalInput!1488 BalanceConc!116)) )
))
(declare-fun lt!2921 () CacheFurthestNullable!24)

(declare-fun valid!105 (CacheFurthestNullable!24) Bool)

(assert (=> b!35585 (= res!28015 (valid!105 lt!2921))))

(declare-fun hashF!328 () Hashable!90)

(declare-fun lt!2922 () BalanceConc!116)

(declare-fun emptyFurthestNullableCache!9 (Hashable!90 BalanceConc!116 (_ BitVec 32)) CacheFurthestNullable!24)

(assert (=> b!35585 (= lt!2921 (emptyFurthestNullableCache!9 hashF!328 lt!2922 #b00000000000000000000000000010000))))

(declare-datatypes ((String!818 0))(
  ( (String!819 (value!6363 String)) )
))
(declare-fun path!6 () String!818)

(declare-fun openFile!0 (String!818) BalanceConc!116)

(assert (=> b!35585 (= lt!2922 (openFile!0 path!6))))

(declare-fun mapNonEmpty!318 () Bool)

(declare-fun mapRes!319 () Bool)

(declare-fun tp!24533 () Bool)

(declare-fun tp!24532 () Bool)

(assert (=> mapNonEmpty!318 (= mapRes!319 (and tp!24533 tp!24532))))

(declare-datatypes ((tuple2!312 0))(
  ( (tuple2!313 (_1!215 Context!90) (_2!215 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!314 0))(
  ( (tuple2!315 (_1!216 tuple2!312) (_2!216 (InoxSet Context!90))) )
))
(declare-datatypes ((List!379 0))(
  ( (Nil!377) (Cons!377 (h!5773 tuple2!314) (t!15185 List!379)) )
))
(declare-fun mapValue!319 () List!379)

(declare-fun mapRest!319 () (Array (_ BitVec 32) List!379))

(declare-fun mapKey!319 () (_ BitVec 32))

(declare-datatypes ((Hashable!91 0))(
  ( (HashableExt!90 (__x!703 Int)) )
))
(declare-datatypes ((array!313 0))(
  ( (array!314 (arr!173 (Array (_ BitVec 32) List!379)) (size!425 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!190 0))(
  ( (LongMapFixedSize!191 (defaultEntry!433 Int) (mask!778 (_ BitVec 32)) (extraKeys!341 (_ BitVec 32)) (zeroValue!351 List!379) (minValue!351 List!379) (_size!322 (_ BitVec 32)) (_keys!386 array!309) (_values!373 array!313) (_vacant!155 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!369 0))(
  ( (Cell!370 (v!12156 LongMapFixedSize!190)) )
))
(declare-datatypes ((MutLongMap!95 0))(
  ( (LongMap!95 (underlying!385 Cell!369)) (MutLongMapExt!94 (__x!704 Int)) )
))
(declare-datatypes ((Cell!371 0))(
  ( (Cell!372 (v!12157 MutLongMap!95)) )
))
(declare-datatypes ((MutableMap!91 0))(
  ( (MutableMapExt!90 (__x!705 Int)) (HashMap!91 (underlying!386 Cell!371) (hashF!1958 Hashable!91) (_size!323 (_ BitVec 32)) (defaultValue!240 Int)) )
))
(declare-datatypes ((CacheUp!76 0))(
  ( (CacheUp!77 (cache!570 MutableMap!91)) )
))
(declare-fun cacheUp!368 () CacheUp!76)

(assert (=> mapNonEmpty!318 (= (arr!173 (_values!373 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))) (store mapRest!319 mapKey!319 mapValue!319))))

(declare-fun b!35586 () Bool)

(declare-fun e!17223 () Bool)

(declare-fun e!17215 () Bool)

(assert (=> b!35586 (= e!17223 e!17215)))

(declare-fun e!17212 () Bool)

(assert (=> b!35587 (= e!17215 (and e!17212 tp!24526))))

(declare-fun e!17226 () Bool)

(declare-fun tp!24521 () Bool)

(declare-fun tp!24523 () Bool)

(declare-fun e!17216 () Bool)

(declare-fun array_inv!98 (array!309) Bool)

(declare-fun array_inv!99 (array!313) Bool)

(assert (=> b!35588 (= e!17216 (and tp!24529 tp!24521 tp!24523 (array_inv!98 (_keys!386 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))) (array_inv!99 (_values!373 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))) e!17226))))

(declare-fun b!35589 () Bool)

(declare-fun e!17229 () Bool)

(declare-fun e!17220 () Bool)

(declare-fun lt!2919 () MutLongMap!93)

(get-info :version)

(assert (=> b!35589 (= e!17229 (and e!17220 ((_ is LongMap!93) lt!2919)))))

(assert (=> b!35589 (= lt!2919 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))

(declare-fun b!35590 () Bool)

(declare-fun e!17213 () Bool)

(declare-fun e!17217 () Bool)

(assert (=> b!35590 (= e!17213 e!17217)))

(declare-fun b!35591 () Bool)

(declare-fun e!17225 () Bool)

(declare-fun e!17222 () Bool)

(assert (=> b!35591 (= e!17225 e!17222)))

(declare-fun mapNonEmpty!319 () Bool)

(declare-fun mapRes!318 () Bool)

(declare-fun tp!24522 () Bool)

(declare-fun tp!24531 () Bool)

(assert (=> mapNonEmpty!319 (= mapRes!318 (and tp!24522 tp!24531))))

(declare-fun mapKey!318 () (_ BitVec 32))

(declare-fun mapRest!318 () (Array (_ BitVec 32) List!376))

(declare-fun mapValue!318 () List!376)

(assert (=> mapNonEmpty!319 (= (arr!170 (_values!371 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))) (store mapRest!318 mapKey!318 mapValue!318))))

(declare-fun b!35592 () Bool)

(declare-fun tp!24527 () Bool)

(assert (=> b!35592 (= e!17226 (and tp!24527 mapRes!319))))

(declare-fun condMapEmpty!318 () Bool)

(declare-fun mapDefault!319 () List!379)

(assert (=> b!35592 (= condMapEmpty!318 (= (arr!173 (_values!373 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!379)) mapDefault!319)))))

(declare-fun b!35593 () Bool)

(assert (=> b!35593 (= e!17222 e!17216)))

(declare-fun b!35594 () Bool)

(declare-fun e!17221 () Bool)

(declare-fun e!17230 () Bool)

(assert (=> b!35594 (= e!17221 e!17230)))

(declare-fun b!35595 () Bool)

(declare-fun lt!2920 () MutLongMap!95)

(assert (=> b!35595 (= e!17212 (and e!17225 ((_ is LongMap!95) lt!2920)))))

(assert (=> b!35595 (= lt!2920 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))

(declare-fun b!35596 () Bool)

(assert (=> b!35596 (= e!17214 (not (= (totalInput!1488 lt!2921) lt!2922)))))

(declare-fun res!28017 () Bool)

(assert (=> start!1944 (=> (not res!28017) (not e!17228))))

(declare-fun valid!106 (CacheUp!76) Bool)

(assert (=> start!1944 (= res!28017 (valid!106 cacheUp!368))))

(assert (=> start!1944 e!17228))

(declare-fun inv!680 (CacheUp!76) Bool)

(assert (=> start!1944 (and (inv!680 cacheUp!368) e!17223)))

(declare-fun inv!681 (CacheDown!78) Bool)

(assert (=> start!1944 (and (inv!681 cacheDown!381) e!17221)))

(declare-fun inv!677 (String!818) Bool)

(assert (=> start!1944 (inv!677 path!6)))

(assert (=> start!1944 true))

(declare-fun mapIsEmpty!318 () Bool)

(assert (=> mapIsEmpty!318 mapRes!319))

(declare-fun tp!24528 () Bool)

(declare-fun tp!24524 () Bool)

(declare-fun e!17219 () Bool)

(declare-fun array_inv!100 (array!307) Bool)

(assert (=> b!35597 (= e!17217 (and tp!24520 tp!24524 tp!24528 (array_inv!98 (_keys!384 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))) (array_inv!100 (_values!371 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))) e!17219))))

(declare-fun mapIsEmpty!319 () Bool)

(assert (=> mapIsEmpty!319 mapRes!318))

(declare-fun b!35598 () Bool)

(declare-fun tp!24530 () Bool)

(assert (=> b!35598 (= e!17219 (and tp!24530 mapRes!318))))

(declare-fun condMapEmpty!319 () Bool)

(declare-fun mapDefault!318 () List!376)

(assert (=> b!35598 (= condMapEmpty!319 (= (arr!170 (_values!371 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!376)) mapDefault!318)))))

(declare-fun b!35599 () Bool)

(assert (=> b!35599 (= e!17220 e!17213)))

(assert (=> b!35600 (= e!17230 (and e!17229 tp!24525))))

(assert (= (and start!1944 res!28017) b!35584))

(assert (= (and b!35584 res!28016) b!35585))

(assert (= (and b!35585 res!28015) b!35596))

(assert (= (and b!35592 condMapEmpty!318) mapIsEmpty!318))

(assert (= (and b!35592 (not condMapEmpty!318)) mapNonEmpty!318))

(assert (= b!35588 b!35592))

(assert (= b!35593 b!35588))

(assert (= b!35591 b!35593))

(assert (= (and b!35595 ((_ is LongMap!95) (v!12157 (underlying!386 (cache!570 cacheUp!368))))) b!35591))

(assert (= b!35587 b!35595))

(assert (= (and b!35586 ((_ is HashMap!91) (cache!570 cacheUp!368))) b!35587))

(assert (= start!1944 b!35586))

(assert (= (and b!35598 condMapEmpty!319) mapIsEmpty!319))

(assert (= (and b!35598 (not condMapEmpty!319)) mapNonEmpty!319))

(assert (= b!35597 b!35598))

(assert (= b!35590 b!35597))

(assert (= b!35599 b!35590))

(assert (= (and b!35589 ((_ is LongMap!93) (v!12153 (underlying!382 (cache!568 cacheDown!381))))) b!35599))

(assert (= b!35600 b!35589))

(assert (= (and b!35594 ((_ is HashMap!89) (cache!568 cacheDown!381))) b!35600))

(assert (= start!1944 b!35594))

(declare-fun m!11476 () Bool)

(assert (=> mapNonEmpty!318 m!11476))

(declare-fun m!11478 () Bool)

(assert (=> b!35585 m!11478))

(declare-fun m!11480 () Bool)

(assert (=> b!35585 m!11480))

(declare-fun m!11482 () Bool)

(assert (=> b!35585 m!11482))

(declare-fun m!11484 () Bool)

(assert (=> start!1944 m!11484))

(declare-fun m!11486 () Bool)

(assert (=> start!1944 m!11486))

(declare-fun m!11488 () Bool)

(assert (=> start!1944 m!11488))

(declare-fun m!11490 () Bool)

(assert (=> start!1944 m!11490))

(declare-fun m!11492 () Bool)

(assert (=> mapNonEmpty!319 m!11492))

(declare-fun m!11494 () Bool)

(assert (=> b!35584 m!11494))

(declare-fun m!11496 () Bool)

(assert (=> b!35588 m!11496))

(declare-fun m!11498 () Bool)

(assert (=> b!35588 m!11498))

(declare-fun m!11500 () Bool)

(assert (=> b!35597 m!11500))

(declare-fun m!11502 () Bool)

(assert (=> b!35597 m!11502))

(check-sat (not b_next!499) (not b_next!501) (not b!35592) (not mapNonEmpty!318) b_and!535 (not b!35584) (not start!1944) (not b!35585) (not mapNonEmpty!319) b_and!537 (not b_next!497) (not b_next!503) b_and!533 (not b!35588) (not b!35598) b_and!531 (not b!35597))
(check-sat (not b_next!499) (not b_next!501) b_and!535 b_and!531 b_and!537 (not b_next!497) b_and!533 (not b_next!503))
(get-model)

(declare-fun d!3836 () Bool)

(declare-fun validCacheMapUp!9 (MutableMap!91) Bool)

(assert (=> d!3836 (= (valid!106 cacheUp!368) (validCacheMapUp!9 (cache!570 cacheUp!368)))))

(declare-fun bs!4950 () Bool)

(assert (= bs!4950 d!3836))

(declare-fun m!11504 () Bool)

(assert (=> bs!4950 m!11504))

(assert (=> start!1944 d!3836))

(declare-fun d!3838 () Bool)

(declare-fun res!28020 () Bool)

(declare-fun e!17233 () Bool)

(assert (=> d!3838 (=> (not res!28020) (not e!17233))))

(assert (=> d!3838 (= res!28020 ((_ is HashMap!91) (cache!570 cacheUp!368)))))

(assert (=> d!3838 (= (inv!680 cacheUp!368) e!17233)))

(declare-fun b!35603 () Bool)

(assert (=> b!35603 (= e!17233 (validCacheMapUp!9 (cache!570 cacheUp!368)))))

(assert (= (and d!3838 res!28020) b!35603))

(assert (=> b!35603 m!11504))

(assert (=> start!1944 d!3838))

(declare-fun d!3840 () Bool)

(declare-fun res!28023 () Bool)

(declare-fun e!17236 () Bool)

(assert (=> d!3840 (=> (not res!28023) (not e!17236))))

(assert (=> d!3840 (= res!28023 ((_ is HashMap!89) (cache!568 cacheDown!381)))))

(assert (=> d!3840 (= (inv!681 cacheDown!381) e!17236)))

(declare-fun b!35606 () Bool)

(declare-fun validCacheMapDown!11 (MutableMap!89) Bool)

(assert (=> b!35606 (= e!17236 (validCacheMapDown!11 (cache!568 cacheDown!381)))))

(assert (= (and d!3840 res!28023) b!35606))

(declare-fun m!11506 () Bool)

(assert (=> b!35606 m!11506))

(assert (=> start!1944 d!3840))

(declare-fun d!3842 () Bool)

(assert (=> d!3842 (= (inv!677 path!6) (= (mod (str.len (value!6363 path!6)) 2) 0))))

(assert (=> start!1944 d!3842))

(declare-fun d!3844 () Bool)

(assert (=> d!3844 (= (array_inv!98 (_keys!386 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))) (bvsge (size!423 (_keys!386 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))) #b00000000000000000000000000000000))))

(assert (=> b!35588 d!3844))

(declare-fun d!3846 () Bool)

(assert (=> d!3846 (= (array_inv!99 (_values!373 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))) (bvsge (size!425 (_values!373 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368))))))) #b00000000000000000000000000000000))))

(assert (=> b!35588 d!3846))

(declare-fun d!3848 () Bool)

(assert (=> d!3848 (= (array_inv!98 (_keys!384 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))) (bvsge (size!423 (_keys!384 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))) #b00000000000000000000000000000000))))

(assert (=> b!35597 d!3848))

(declare-fun d!3850 () Bool)

(assert (=> d!3850 (= (array_inv!100 (_values!371 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))) (bvsge (size!422 (_values!371 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381))))))) #b00000000000000000000000000000000))))

(assert (=> b!35597 d!3850))

(declare-fun d!3852 () Bool)

(assert (=> d!3852 (= (valid!104 cacheDown!381) (validCacheMapDown!11 (cache!568 cacheDown!381)))))

(declare-fun bs!4951 () Bool)

(assert (= bs!4951 d!3852))

(assert (=> bs!4951 m!11506))

(assert (=> b!35584 d!3852))

(declare-fun d!3854 () Bool)

(declare-fun validCacheMapFurthestNullable!3 (MutableMap!90 BalanceConc!116) Bool)

(assert (=> d!3854 (= (valid!105 lt!2921) (validCacheMapFurthestNullable!3 (cache!569 lt!2921) (totalInput!1488 lt!2921)))))

(declare-fun bs!4952 () Bool)

(assert (= bs!4952 d!3854))

(declare-fun m!11508 () Bool)

(assert (=> bs!4952 m!11508))

(assert (=> b!35585 d!3854))

(declare-fun b!35623 () Bool)

(declare-fun e!17252 () Bool)

(declare-fun lt!2934 () MutLongMap!94)

(assert (=> b!35623 (= e!17252 ((_ is LongMap!94) lt!2934))))

(assert (=> b!35623 (= lt!2934 (v!12155 (underlying!384 (cache!569 (emptyFurthestNullableCache!9 hashF!328 lt!2922 #b00000000000000000000000000010000)))))))

(declare-fun b!35622 () Bool)

(declare-fun e!17251 () Bool)

(assert (=> b!35622 (= e!17251 e!17252)))

(declare-fun b!35621 () Bool)

(declare-fun e!17250 () Bool)

(assert (=> b!35621 (= e!17250 e!17251)))

(declare-fun d!3856 () Bool)

(assert (=> d!3856 (= true e!17250)))

(assert (= b!35622 b!35623))

(assert (= (and b!35621 ((_ is HashMap!90) (cache!569 (emptyFurthestNullableCache!9 hashF!328 lt!2922 #b00000000000000000000000000010000)))) b!35622))

(assert (= d!3856 b!35621))

(declare-fun b!35612 () Bool)

(assert (=> b!35612 true))

(declare-fun lt!2931 () CacheFurthestNullable!24)

(assert (=> d!3856 (valid!105 lt!2931)))

(declare-fun lt!2929 () MutableMap!90)

(assert (=> d!3856 (= lt!2931 (CacheFurthestNullable!25 lt!2929 lt!2922))))

(declare-datatypes ((Unit!194 0))(
  ( (Unit!195) )
))
(declare-fun lt!2930 () Unit!194)

(declare-fun Unit!196 () Unit!194)

(assert (=> d!3856 (= lt!2930 Unit!196)))

(declare-fun e!17243 () Bool)

(assert (=> d!3856 (= (validCacheMapFurthestNullable!3 lt!2929 lt!2922) e!17243)))

(declare-fun res!28028 () Bool)

(assert (=> d!3856 (=> (not res!28028) (not e!17243))))

(declare-fun valid!107 (MutableMap!90) Bool)

(assert (=> d!3856 (= res!28028 (valid!107 lt!2929))))

(declare-fun lambda!621 () Int)

(declare-fun getEmptyHashMap!5 (Int Hashable!90 (_ BitVec 32)) MutableMap!90)

(assert (=> d!3856 (= lt!2929 (getEmptyHashMap!5 lambda!621 hashF!328 #b00000000000000000000000000010000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3856 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!3856 (= (emptyFurthestNullableCache!9 hashF!328 lt!2922 #b00000000000000000000000000010000) lt!2931)))

(declare-fun b!35611 () Bool)

(declare-fun res!28029 () Bool)

(assert (=> b!35611 (=> (not res!28029) (not e!17243))))

(declare-fun invariantList!18 (List!377) Bool)

(declare-datatypes ((ListMap!37 0))(
  ( (ListMap!38 (toList!169 List!377)) )
))
(declare-fun map!208 (MutableMap!90) ListMap!37)

(assert (=> b!35611 (= res!28029 (invariantList!18 (toList!169 (map!208 lt!2929))))))

(declare-fun lambda!622 () Int)

(declare-fun forall!49 (List!377 Int) Bool)

(assert (=> b!35612 (= e!17243 (forall!49 (toList!169 (map!208 lt!2929)) lambda!622))))

(assert (= (and d!3856 res!28028) b!35611))

(assert (= (and b!35611 res!28029) b!35612))

(declare-fun m!11510 () Bool)

(assert (=> d!3856 m!11510))

(declare-fun m!11512 () Bool)

(assert (=> d!3856 m!11512))

(declare-fun m!11514 () Bool)

(assert (=> d!3856 m!11514))

(declare-fun m!11516 () Bool)

(assert (=> d!3856 m!11516))

(declare-fun m!11518 () Bool)

(assert (=> d!3856 m!11518))

(declare-fun m!11520 () Bool)

(assert (=> b!35611 m!11520))

(declare-fun m!11522 () Bool)

(assert (=> b!35611 m!11522))

(assert (=> b!35612 m!11520))

(declare-fun m!11524 () Bool)

(assert (=> b!35612 m!11524))

(assert (=> b!35585 d!3856))

(declare-fun d!3858 () Bool)

(declare-fun choose!360 (String!818) BalanceConc!116)

(assert (=> d!3858 (= (openFile!0 path!6) (choose!360 path!6))))

(declare-fun bs!4953 () Bool)

(assert (= bs!4953 d!3858))

(declare-fun m!11526 () Bool)

(assert (=> bs!4953 m!11526))

(assert (=> b!35585 d!3858))

(declare-fun e!17260 () Bool)

(declare-fun setRes!598 () Bool)

(declare-fun b!35630 () Bool)

(declare-fun tp!24539 () Bool)

(declare-fun inv!682 (Context!90) Bool)

(assert (=> b!35630 (= e!17260 (and (inv!682 (_1!215 (_1!216 (h!5773 mapDefault!319)))) setRes!598 tp!24539))))

(declare-fun condSetEmpty!598 () Bool)

(assert (=> b!35630 (= condSetEmpty!598 (= (_2!216 (h!5773 mapDefault!319)) ((as const (Array Context!90 Bool)) false)))))

(declare-fun setIsEmpty!598 () Bool)

(assert (=> setIsEmpty!598 setRes!598))

(declare-fun setNonEmpty!598 () Bool)

(declare-fun tp!24538 () Bool)

(declare-fun setElem!598 () Context!90)

(assert (=> setNonEmpty!598 (= setRes!598 (and tp!24538 (inv!682 setElem!598)))))

(declare-fun setRest!598 () (InoxSet Context!90))

(assert (=> setNonEmpty!598 (= (_2!216 (h!5773 mapDefault!319)) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!598 true) setRest!598))))

(assert (=> b!35592 (= tp!24527 e!17260)))

(assert (= (and b!35630 condSetEmpty!598) setIsEmpty!598))

(assert (= (and b!35630 (not condSetEmpty!598)) setNonEmpty!598))

(assert (= (and b!35592 ((_ is Cons!377) mapDefault!319)) b!35630))

(declare-fun m!11528 () Bool)

(assert (=> b!35630 m!11528))

(declare-fun m!11530 () Bool)

(assert (=> setNonEmpty!598 m!11530))

(declare-fun setIsEmpty!603 () Bool)

(declare-fun setRes!604 () Bool)

(assert (=> setIsEmpty!603 setRes!604))

(declare-fun setNonEmpty!603 () Bool)

(declare-fun tp!24553 () Bool)

(declare-fun setElem!603 () Context!90)

(assert (=> setNonEmpty!603 (= setRes!604 (and tp!24553 (inv!682 setElem!603)))))

(declare-fun mapDefault!322 () List!376)

(declare-fun setRest!604 () (InoxSet Context!90))

(assert (=> setNonEmpty!603 (= (_2!212 (h!5770 mapDefault!322)) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!603 true) setRest!604))))

(declare-fun e!17277 () Bool)

(declare-fun mapValue!322 () List!376)

(declare-fun setRes!603 () Bool)

(declare-fun b!35637 () Bool)

(declare-fun tp!24552 () Bool)

(assert (=> b!35637 (= e!17277 (and (inv!682 (_2!211 (_1!212 (h!5770 mapValue!322)))) setRes!603 tp!24552))))

(declare-fun condSetEmpty!603 () Bool)

(assert (=> b!35637 (= condSetEmpty!603 (= (_2!212 (h!5770 mapValue!322)) ((as const (Array Context!90 Bool)) false)))))

(declare-fun mapNonEmpty!322 () Bool)

(declare-fun mapRes!322 () Bool)

(declare-fun tp!24554 () Bool)

(assert (=> mapNonEmpty!322 (= mapRes!322 (and tp!24554 e!17277))))

(declare-fun mapKey!322 () (_ BitVec 32))

(declare-fun mapRest!322 () (Array (_ BitVec 32) List!376))

(assert (=> mapNonEmpty!322 (= mapRest!318 (store mapRest!322 mapKey!322 mapValue!322))))

(declare-fun b!35638 () Bool)

(declare-fun e!17279 () Bool)

(declare-fun tp!24550 () Bool)

(assert (=> b!35638 (= e!17279 (and (inv!682 (_2!211 (_1!212 (h!5770 mapDefault!322)))) setRes!604 tp!24550))))

(declare-fun condSetEmpty!604 () Bool)

(assert (=> b!35638 (= condSetEmpty!604 (= (_2!212 (h!5770 mapDefault!322)) ((as const (Array Context!90 Bool)) false)))))

(declare-fun mapIsEmpty!322 () Bool)

(assert (=> mapIsEmpty!322 mapRes!322))

(declare-fun setIsEmpty!604 () Bool)

(assert (=> setIsEmpty!604 setRes!603))

(declare-fun condMapEmpty!322 () Bool)

(assert (=> mapNonEmpty!319 (= condMapEmpty!322 (= mapRest!318 ((as const (Array (_ BitVec 32) List!376)) mapDefault!322)))))

(assert (=> mapNonEmpty!319 (= tp!24522 (and e!17279 mapRes!322))))

(declare-fun setNonEmpty!604 () Bool)

(declare-fun tp!24551 () Bool)

(declare-fun setElem!604 () Context!90)

(assert (=> setNonEmpty!604 (= setRes!603 (and tp!24551 (inv!682 setElem!604)))))

(declare-fun setRest!603 () (InoxSet Context!90))

(assert (=> setNonEmpty!604 (= (_2!212 (h!5770 mapValue!322)) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!604 true) setRest!603))))

(assert (= (and mapNonEmpty!319 condMapEmpty!322) mapIsEmpty!322))

(assert (= (and mapNonEmpty!319 (not condMapEmpty!322)) mapNonEmpty!322))

(assert (= (and b!35637 condSetEmpty!603) setIsEmpty!604))

(assert (= (and b!35637 (not condSetEmpty!603)) setNonEmpty!604))

(assert (= (and mapNonEmpty!322 ((_ is Cons!374) mapValue!322)) b!35637))

(assert (= (and b!35638 condSetEmpty!604) setIsEmpty!603))

(assert (= (and b!35638 (not condSetEmpty!604)) setNonEmpty!603))

(assert (= (and mapNonEmpty!319 ((_ is Cons!374) mapDefault!322)) b!35638))

(declare-fun m!11532 () Bool)

(assert (=> b!35638 m!11532))

(declare-fun m!11534 () Bool)

(assert (=> setNonEmpty!603 m!11534))

(declare-fun m!11536 () Bool)

(assert (=> mapNonEmpty!322 m!11536))

(declare-fun m!11538 () Bool)

(assert (=> b!35637 m!11538))

(declare-fun m!11540 () Bool)

(assert (=> setNonEmpty!604 m!11540))

(declare-fun setRes!607 () Bool)

(declare-fun e!17286 () Bool)

(declare-fun b!35643 () Bool)

(declare-fun tp!24559 () Bool)

(assert (=> b!35643 (= e!17286 (and (inv!682 (_2!211 (_1!212 (h!5770 mapValue!318)))) setRes!607 tp!24559))))

(declare-fun condSetEmpty!607 () Bool)

(assert (=> b!35643 (= condSetEmpty!607 (= (_2!212 (h!5770 mapValue!318)) ((as const (Array Context!90 Bool)) false)))))

(declare-fun setIsEmpty!607 () Bool)

(assert (=> setIsEmpty!607 setRes!607))

(declare-fun setNonEmpty!607 () Bool)

(declare-fun tp!24560 () Bool)

(declare-fun setElem!607 () Context!90)

(assert (=> setNonEmpty!607 (= setRes!607 (and tp!24560 (inv!682 setElem!607)))))

(declare-fun setRest!607 () (InoxSet Context!90))

(assert (=> setNonEmpty!607 (= (_2!212 (h!5770 mapValue!318)) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!607 true) setRest!607))))

(assert (=> mapNonEmpty!319 (= tp!24531 e!17286)))

(assert (= (and b!35643 condSetEmpty!607) setIsEmpty!607))

(assert (= (and b!35643 (not condSetEmpty!607)) setNonEmpty!607))

(assert (= (and mapNonEmpty!319 ((_ is Cons!374) mapValue!318)) b!35643))

(declare-fun m!11542 () Bool)

(assert (=> b!35643 m!11542))

(declare-fun m!11544 () Bool)

(assert (=> setNonEmpty!607 m!11544))

(declare-fun setRes!608 () Bool)

(declare-fun tp!24562 () Bool)

(declare-fun e!17290 () Bool)

(declare-fun b!35644 () Bool)

(assert (=> b!35644 (= e!17290 (and (inv!682 (_1!215 (_1!216 (h!5773 (zeroValue!351 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368)))))))))) setRes!608 tp!24562))))

(declare-fun condSetEmpty!608 () Bool)

(assert (=> b!35644 (= condSetEmpty!608 (= (_2!216 (h!5773 (zeroValue!351 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368)))))))) ((as const (Array Context!90 Bool)) false)))))

(declare-fun setIsEmpty!608 () Bool)

(assert (=> setIsEmpty!608 setRes!608))

(declare-fun setNonEmpty!608 () Bool)

(declare-fun tp!24561 () Bool)

(declare-fun setElem!608 () Context!90)

(assert (=> setNonEmpty!608 (= setRes!608 (and tp!24561 (inv!682 setElem!608)))))

(declare-fun setRest!608 () (InoxSet Context!90))

(assert (=> setNonEmpty!608 (= (_2!216 (h!5773 (zeroValue!351 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368)))))))) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!608 true) setRest!608))))

(assert (=> b!35588 (= tp!24521 e!17290)))

(assert (= (and b!35644 condSetEmpty!608) setIsEmpty!608))

(assert (= (and b!35644 (not condSetEmpty!608)) setNonEmpty!608))

(assert (= (and b!35588 ((_ is Cons!377) (zeroValue!351 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368)))))))) b!35644))

(declare-fun m!11546 () Bool)

(assert (=> b!35644 m!11546))

(declare-fun m!11548 () Bool)

(assert (=> setNonEmpty!608 m!11548))

(declare-fun e!17293 () Bool)

(declare-fun tp!24564 () Bool)

(declare-fun setRes!609 () Bool)

(declare-fun b!35645 () Bool)

(assert (=> b!35645 (= e!17293 (and (inv!682 (_1!215 (_1!216 (h!5773 (minValue!351 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368)))))))))) setRes!609 tp!24564))))

(declare-fun condSetEmpty!609 () Bool)

(assert (=> b!35645 (= condSetEmpty!609 (= (_2!216 (h!5773 (minValue!351 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368)))))))) ((as const (Array Context!90 Bool)) false)))))

(declare-fun setIsEmpty!609 () Bool)

(assert (=> setIsEmpty!609 setRes!609))

(declare-fun setNonEmpty!609 () Bool)

(declare-fun tp!24563 () Bool)

(declare-fun setElem!609 () Context!90)

(assert (=> setNonEmpty!609 (= setRes!609 (and tp!24563 (inv!682 setElem!609)))))

(declare-fun setRest!609 () (InoxSet Context!90))

(assert (=> setNonEmpty!609 (= (_2!216 (h!5773 (minValue!351 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368)))))))) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!609 true) setRest!609))))

(assert (=> b!35588 (= tp!24523 e!17293)))

(assert (= (and b!35645 condSetEmpty!609) setIsEmpty!609))

(assert (= (and b!35645 (not condSetEmpty!609)) setNonEmpty!609))

(assert (= (and b!35588 ((_ is Cons!377) (minValue!351 (v!12156 (underlying!385 (v!12157 (underlying!386 (cache!570 cacheUp!368)))))))) b!35645))

(declare-fun m!11550 () Bool)

(assert (=> b!35645 m!11550))

(declare-fun m!11552 () Bool)

(assert (=> setNonEmpty!609 m!11552))

(declare-fun setRes!610 () Bool)

(declare-fun b!35646 () Bool)

(declare-fun e!17295 () Bool)

(declare-fun tp!24565 () Bool)

(assert (=> b!35646 (= e!17295 (and (inv!682 (_2!211 (_1!212 (h!5770 (zeroValue!349 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381)))))))))) setRes!610 tp!24565))))

(declare-fun condSetEmpty!610 () Bool)

(assert (=> b!35646 (= condSetEmpty!610 (= (_2!212 (h!5770 (zeroValue!349 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381)))))))) ((as const (Array Context!90 Bool)) false)))))

(declare-fun setIsEmpty!610 () Bool)

(assert (=> setIsEmpty!610 setRes!610))

(declare-fun setNonEmpty!610 () Bool)

(declare-fun tp!24566 () Bool)

(declare-fun setElem!610 () Context!90)

(assert (=> setNonEmpty!610 (= setRes!610 (and tp!24566 (inv!682 setElem!610)))))

(declare-fun setRest!610 () (InoxSet Context!90))

(assert (=> setNonEmpty!610 (= (_2!212 (h!5770 (zeroValue!349 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381)))))))) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!610 true) setRest!610))))

(assert (=> b!35597 (= tp!24524 e!17295)))

(assert (= (and b!35646 condSetEmpty!610) setIsEmpty!610))

(assert (= (and b!35646 (not condSetEmpty!610)) setNonEmpty!610))

(assert (= (and b!35597 ((_ is Cons!374) (zeroValue!349 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381)))))))) b!35646))

(declare-fun m!11554 () Bool)

(assert (=> b!35646 m!11554))

(declare-fun m!11556 () Bool)

(assert (=> setNonEmpty!610 m!11556))

(declare-fun tp!24567 () Bool)

(declare-fun setRes!611 () Bool)

(declare-fun e!17298 () Bool)

(declare-fun b!35647 () Bool)

(assert (=> b!35647 (= e!17298 (and (inv!682 (_2!211 (_1!212 (h!5770 (minValue!349 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381)))))))))) setRes!611 tp!24567))))

(declare-fun condSetEmpty!611 () Bool)

(assert (=> b!35647 (= condSetEmpty!611 (= (_2!212 (h!5770 (minValue!349 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381)))))))) ((as const (Array Context!90 Bool)) false)))))

(declare-fun setIsEmpty!611 () Bool)

(assert (=> setIsEmpty!611 setRes!611))

(declare-fun setNonEmpty!611 () Bool)

(declare-fun tp!24568 () Bool)

(declare-fun setElem!611 () Context!90)

(assert (=> setNonEmpty!611 (= setRes!611 (and tp!24568 (inv!682 setElem!611)))))

(declare-fun setRest!611 () (InoxSet Context!90))

(assert (=> setNonEmpty!611 (= (_2!212 (h!5770 (minValue!349 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381)))))))) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!611 true) setRest!611))))

(assert (=> b!35597 (= tp!24528 e!17298)))

(assert (= (and b!35647 condSetEmpty!611) setIsEmpty!611))

(assert (= (and b!35647 (not condSetEmpty!611)) setNonEmpty!611))

(assert (= (and b!35597 ((_ is Cons!374) (minValue!349 (v!12152 (underlying!381 (v!12153 (underlying!382 (cache!568 cacheDown!381)))))))) b!35647))

(declare-fun m!11558 () Bool)

(assert (=> b!35647 m!11558))

(declare-fun m!11560 () Bool)

(assert (=> setNonEmpty!611 m!11560))

(declare-fun tp!24569 () Bool)

(declare-fun setRes!612 () Bool)

(declare-fun b!35648 () Bool)

(declare-fun e!17301 () Bool)

(assert (=> b!35648 (= e!17301 (and (inv!682 (_2!211 (_1!212 (h!5770 mapDefault!318)))) setRes!612 tp!24569))))

(declare-fun condSetEmpty!612 () Bool)

(assert (=> b!35648 (= condSetEmpty!612 (= (_2!212 (h!5770 mapDefault!318)) ((as const (Array Context!90 Bool)) false)))))

(declare-fun setIsEmpty!612 () Bool)

(assert (=> setIsEmpty!612 setRes!612))

(declare-fun setNonEmpty!612 () Bool)

(declare-fun tp!24570 () Bool)

(declare-fun setElem!612 () Context!90)

(assert (=> setNonEmpty!612 (= setRes!612 (and tp!24570 (inv!682 setElem!612)))))

(declare-fun setRest!612 () (InoxSet Context!90))

(assert (=> setNonEmpty!612 (= (_2!212 (h!5770 mapDefault!318)) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!612 true) setRest!612))))

(assert (=> b!35598 (= tp!24530 e!17301)))

(assert (= (and b!35648 condSetEmpty!612) setIsEmpty!612))

(assert (= (and b!35648 (not condSetEmpty!612)) setNonEmpty!612))

(assert (= (and b!35598 ((_ is Cons!374) mapDefault!318)) b!35648))

(declare-fun m!11562 () Bool)

(assert (=> b!35648 m!11562))

(declare-fun m!11564 () Bool)

(assert (=> setNonEmpty!612 m!11564))

(declare-fun mapValue!325 () List!379)

(declare-fun setRes!617 () Bool)

(declare-fun b!35655 () Bool)

(declare-fun tp!24583 () Bool)

(declare-fun e!17319 () Bool)

(assert (=> b!35655 (= e!17319 (and (inv!682 (_1!215 (_1!216 (h!5773 mapValue!325)))) setRes!617 tp!24583))))

(declare-fun condSetEmpty!617 () Bool)

(assert (=> b!35655 (= condSetEmpty!617 (= (_2!216 (h!5773 mapValue!325)) ((as const (Array Context!90 Bool)) false)))))

(declare-fun mapNonEmpty!325 () Bool)

(declare-fun mapRes!325 () Bool)

(declare-fun tp!24585 () Bool)

(assert (=> mapNonEmpty!325 (= mapRes!325 (and tp!24585 e!17319))))

(declare-fun mapKey!325 () (_ BitVec 32))

(declare-fun mapRest!325 () (Array (_ BitVec 32) List!379))

(assert (=> mapNonEmpty!325 (= mapRest!319 (store mapRest!325 mapKey!325 mapValue!325))))

(declare-fun setNonEmpty!617 () Bool)

(declare-fun setRes!618 () Bool)

(declare-fun tp!24582 () Bool)

(declare-fun setElem!618 () Context!90)

(assert (=> setNonEmpty!617 (= setRes!618 (and tp!24582 (inv!682 setElem!618)))))

(declare-fun mapDefault!325 () List!379)

(declare-fun setRest!617 () (InoxSet Context!90))

(assert (=> setNonEmpty!617 (= (_2!216 (h!5773 mapDefault!325)) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!618 true) setRest!617))))

(declare-fun condMapEmpty!325 () Bool)

(assert (=> mapNonEmpty!318 (= condMapEmpty!325 (= mapRest!319 ((as const (Array (_ BitVec 32) List!379)) mapDefault!325)))))

(declare-fun e!17318 () Bool)

(assert (=> mapNonEmpty!318 (= tp!24533 (and e!17318 mapRes!325))))

(declare-fun setIsEmpty!617 () Bool)

(assert (=> setIsEmpty!617 setRes!617))

(declare-fun setIsEmpty!618 () Bool)

(assert (=> setIsEmpty!618 setRes!618))

(declare-fun setNonEmpty!618 () Bool)

(declare-fun tp!24584 () Bool)

(declare-fun setElem!617 () Context!90)

(assert (=> setNonEmpty!618 (= setRes!617 (and tp!24584 (inv!682 setElem!617)))))

(declare-fun setRest!618 () (InoxSet Context!90))

(assert (=> setNonEmpty!618 (= (_2!216 (h!5773 mapValue!325)) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!617 true) setRest!618))))

(declare-fun tp!24581 () Bool)

(declare-fun b!35656 () Bool)

(assert (=> b!35656 (= e!17318 (and (inv!682 (_1!215 (_1!216 (h!5773 mapDefault!325)))) setRes!618 tp!24581))))

(declare-fun condSetEmpty!618 () Bool)

(assert (=> b!35656 (= condSetEmpty!618 (= (_2!216 (h!5773 mapDefault!325)) ((as const (Array Context!90 Bool)) false)))))

(declare-fun mapIsEmpty!325 () Bool)

(assert (=> mapIsEmpty!325 mapRes!325))

(assert (= (and mapNonEmpty!318 condMapEmpty!325) mapIsEmpty!325))

(assert (= (and mapNonEmpty!318 (not condMapEmpty!325)) mapNonEmpty!325))

(assert (= (and b!35655 condSetEmpty!617) setIsEmpty!617))

(assert (= (and b!35655 (not condSetEmpty!617)) setNonEmpty!618))

(assert (= (and mapNonEmpty!325 ((_ is Cons!377) mapValue!325)) b!35655))

(assert (= (and b!35656 condSetEmpty!618) setIsEmpty!618))

(assert (= (and b!35656 (not condSetEmpty!618)) setNonEmpty!617))

(assert (= (and mapNonEmpty!318 ((_ is Cons!377) mapDefault!325)) b!35656))

(declare-fun m!11566 () Bool)

(assert (=> b!35656 m!11566))

(declare-fun m!11568 () Bool)

(assert (=> setNonEmpty!617 m!11568))

(declare-fun m!11570 () Bool)

(assert (=> mapNonEmpty!325 m!11570))

(declare-fun m!11572 () Bool)

(assert (=> b!35655 m!11572))

(declare-fun m!11574 () Bool)

(assert (=> setNonEmpty!618 m!11574))

(declare-fun tp!24587 () Bool)

(declare-fun setRes!619 () Bool)

(declare-fun b!35657 () Bool)

(declare-fun e!17323 () Bool)

(assert (=> b!35657 (= e!17323 (and (inv!682 (_1!215 (_1!216 (h!5773 mapValue!319)))) setRes!619 tp!24587))))

(declare-fun condSetEmpty!619 () Bool)

(assert (=> b!35657 (= condSetEmpty!619 (= (_2!216 (h!5773 mapValue!319)) ((as const (Array Context!90 Bool)) false)))))

(declare-fun setIsEmpty!619 () Bool)

(assert (=> setIsEmpty!619 setRes!619))

(declare-fun setNonEmpty!619 () Bool)

(declare-fun tp!24586 () Bool)

(declare-fun setElem!619 () Context!90)

(assert (=> setNonEmpty!619 (= setRes!619 (and tp!24586 (inv!682 setElem!619)))))

(declare-fun setRest!619 () (InoxSet Context!90))

(assert (=> setNonEmpty!619 (= (_2!216 (h!5773 mapValue!319)) ((_ map or) (store ((as const (Array Context!90 Bool)) false) setElem!619 true) setRest!619))))

(assert (=> mapNonEmpty!318 (= tp!24532 e!17323)))

(assert (= (and b!35657 condSetEmpty!619) setIsEmpty!619))

(assert (= (and b!35657 (not condSetEmpty!619)) setNonEmpty!619))

(assert (= (and mapNonEmpty!318 ((_ is Cons!377) mapValue!319)) b!35657))

(declare-fun m!11576 () Bool)

(assert (=> b!35657 m!11576))

(declare-fun m!11578 () Bool)

(assert (=> setNonEmpty!619 m!11578))

(check-sat (not setNonEmpty!617) (not b!35643) (not mapNonEmpty!322) (not setNonEmpty!619) (not setNonEmpty!618) (not setNonEmpty!610) (not b_next!501) (not setNonEmpty!607) (not b!35648) (not setNonEmpty!611) (not b!35647) (not b!35657) (not b!35606) (not b!35612) (not b!35656) (not setNonEmpty!603) b_and!531 (not b!35655) (not d!3836) (not setNonEmpty!608) (not setNonEmpty!598) (not setNonEmpty!604) (not setNonEmpty!609) (not d!3852) (not d!3856) (not b_next!499) (not b!35646) (not mapNonEmpty!325) (not b!35603) (not b!35638) (not b!35644) (not b!35637) (not b_next!497) (not setNonEmpty!612) b_and!537 (not b!35630) b_and!535 (not b!35645) (not d!3858) b_and!533 (not b!35611) (not b_next!503) (not d!3854))
(check-sat (not b_next!499) (not b_next!501) b_and!535 b_and!531 b_and!537 (not b_next!497) b_and!533 (not b_next!503))
