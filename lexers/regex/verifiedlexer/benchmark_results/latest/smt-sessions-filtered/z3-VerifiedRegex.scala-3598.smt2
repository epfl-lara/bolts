; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207014 () Bool)

(assert start!207014)

(declare-fun b!2121375 () Bool)

(declare-fun b_free!61613 () Bool)

(declare-fun b_next!62317 () Bool)

(assert (=> b!2121375 (= b_free!61613 (not b_next!62317))))

(declare-fun tp!649364 () Bool)

(declare-fun b_and!171193 () Bool)

(assert (=> b!2121375 (= tp!649364 b_and!171193)))

(declare-fun b!2121363 () Bool)

(declare-fun b_free!61615 () Bool)

(declare-fun b_next!62319 () Bool)

(assert (=> b!2121363 (= b_free!61615 (not b_next!62319))))

(declare-fun tp!649342 () Bool)

(declare-fun b_and!171195 () Bool)

(assert (=> b!2121363 (= tp!649342 b_and!171195)))

(declare-fun b!2121357 () Bool)

(declare-fun b_free!61617 () Bool)

(declare-fun b_next!62321 () Bool)

(assert (=> b!2121357 (= b_free!61617 (not b_next!62321))))

(declare-fun tp!649349 () Bool)

(declare-fun b_and!171197 () Bool)

(assert (=> b!2121357 (= tp!649349 b_and!171197)))

(declare-fun b!2121359 () Bool)

(declare-fun b_free!61619 () Bool)

(declare-fun b_next!62323 () Bool)

(assert (=> b!2121359 (= b_free!61619 (not b_next!62323))))

(declare-fun tp!649358 () Bool)

(declare-fun b_and!171199 () Bool)

(assert (=> b!2121359 (= tp!649358 b_and!171199)))

(declare-fun b!2121372 () Bool)

(declare-fun b_free!61621 () Bool)

(declare-fun b_next!62325 () Bool)

(assert (=> b!2121372 (= b_free!61621 (not b_next!62325))))

(declare-fun tp!649345 () Bool)

(declare-fun b_and!171201 () Bool)

(assert (=> b!2121372 (= tp!649345 b_and!171201)))

(declare-fun b!2121368 () Bool)

(declare-fun b_free!61623 () Bool)

(declare-fun b_next!62327 () Bool)

(assert (=> b!2121368 (= b_free!61623 (not b_next!62327))))

(declare-fun tp!649354 () Bool)

(declare-fun b_and!171203 () Bool)

(assert (=> b!2121368 (= tp!649354 b_and!171203)))

(declare-fun b!2121413 () Bool)

(declare-fun e!1351185 () Bool)

(declare-fun e!1351194 () Bool)

(assert (=> b!2121413 (= e!1351185 e!1351194)))

(declare-fun b!2121414 () Bool)

(declare-fun e!1351191 () Bool)

(declare-fun mapRes!11842 () Bool)

(assert (=> b!2121414 (= e!1351191 mapRes!11842)))

(declare-fun condMapEmpty!11841 () Bool)

(declare-datatypes ((C!11472 0))(
  ( (C!11473 (val!6722 Int)) )
))
(declare-datatypes ((Regex!5663 0))(
  ( (ElementMatch!5663 (c!339716 C!11472)) (Concat!9965 (regOne!11838 Regex!5663) (regTwo!11838 Regex!5663)) (EmptyExpr!5663) (Star!5663 (reg!5992 Regex!5663)) (EmptyLang!5663) (Union!5663 (regOne!11839 Regex!5663) (regTwo!11839 Regex!5663)) )
))
(declare-datatypes ((List!23774 0))(
  ( (Nil!23690) (Cons!23690 (h!29091 Regex!5663) (t!196290 List!23774)) )
))
(declare-datatypes ((Context!2466 0))(
  ( (Context!2467 (exprs!1733 List!23774)) )
))
(declare-datatypes ((tuple3!2888 0))(
  ( (tuple3!2889 (_1!13556 Regex!5663) (_2!13556 Context!2466) (_3!1914 C!11472)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23284 0))(
  ( (tuple2!23285 (_1!13557 tuple3!2888) (_2!13557 (InoxSet Context!2466))) )
))
(declare-datatypes ((tuple2!23286 0))(
  ( (tuple2!23287 (_1!13558 Context!2466) (_2!13558 C!11472)) )
))
(declare-datatypes ((tuple2!23288 0))(
  ( (tuple2!23289 (_1!13559 tuple2!23286) (_2!13559 (InoxSet Context!2466))) )
))
(declare-datatypes ((List!23775 0))(
  ( (Nil!23691) (Cons!23691 (h!29092 tuple2!23288) (t!196291 List!23775)) )
))
(declare-datatypes ((List!23776 0))(
  ( (Nil!23692) (Cons!23692 (h!29093 tuple2!23284) (t!196292 List!23776)) )
))
(declare-datatypes ((array!8403 0))(
  ( (array!8404 (arr!3729 (Array (_ BitVec 32) (_ BitVec 64))) (size!18514 (_ BitVec 32))) )
))
(declare-datatypes ((array!8405 0))(
  ( (array!8406 (arr!3730 (Array (_ BitVec 32) List!23776)) (size!18515 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4890 0))(
  ( (LongMapFixedSize!4891 (defaultEntry!2810 Int) (mask!6592 (_ BitVec 32)) (extraKeys!2693 (_ BitVec 32)) (zeroValue!2703 List!23776) (minValue!2703 List!23776) (_size!4941 (_ BitVec 32)) (_keys!2742 array!8403) (_values!2725 array!8405) (_vacant!2506 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9605 0))(
  ( (Cell!9606 (v!28221 LongMapFixedSize!4890)) )
))
(declare-datatypes ((MutLongMap!2445 0))(
  ( (LongMap!2445 (underlying!5085 Cell!9605)) (MutLongMapExt!2444 (__x!15511 Int)) )
))
(declare-datatypes ((Cell!9607 0))(
  ( (Cell!9608 (v!28222 MutLongMap!2445)) )
))
(declare-datatypes ((List!23777 0))(
  ( (Nil!23693) (Cons!23693 (h!29094 C!11472) (t!196293 List!23777)) )
))
(declare-datatypes ((IArray!15607 0))(
  ( (IArray!15608 (innerList!7861 List!23777)) )
))
(declare-datatypes ((Hashable!2359 0))(
  ( (HashableExt!2358 (__x!15512 Int)) )
))
(declare-datatypes ((Hashable!2360 0))(
  ( (HashableExt!2359 (__x!15513 Int)) )
))
(declare-datatypes ((array!8407 0))(
  ( (array!8408 (arr!3731 (Array (_ BitVec 32) List!23775)) (size!18516 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4892 0))(
  ( (LongMapFixedSize!4893 (defaultEntry!2811 Int) (mask!6593 (_ BitVec 32)) (extraKeys!2694 (_ BitVec 32)) (zeroValue!2704 List!23775) (minValue!2704 List!23775) (_size!4942 (_ BitVec 32)) (_keys!2743 array!8403) (_values!2726 array!8407) (_vacant!2507 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9609 0))(
  ( (Cell!9610 (v!28223 LongMapFixedSize!4892)) )
))
(declare-datatypes ((MutLongMap!2446 0))(
  ( (LongMap!2446 (underlying!5086 Cell!9609)) (MutLongMapExt!2445 (__x!15514 Int)) )
))
(declare-datatypes ((Cell!9611 0))(
  ( (Cell!9612 (v!28224 MutLongMap!2446)) )
))
(declare-datatypes ((MutableMap!2359 0))(
  ( (MutableMapExt!2358 (__x!15515 Int)) (HashMap!2359 (underlying!5087 Cell!9611) (hashF!4282 Hashable!2360) (_size!4943 (_ BitVec 32)) (defaultValue!2521 Int)) )
))
(declare-datatypes ((CacheUp!1634 0))(
  ( (CacheUp!1635 (cache!2740 MutableMap!2359)) )
))
(declare-datatypes ((Conc!7801 0))(
  ( (Node!7801 (left!18329 Conc!7801) (right!18659 Conc!7801) (csize!15832 Int) (cheight!8012 Int)) (Leaf!11400 (xs!10743 IArray!15607) (csize!15833 Int)) (Empty!7801) )
))
(declare-datatypes ((BalanceConc!15364 0))(
  ( (BalanceConc!15365 (c!339717 Conc!7801)) )
))
(declare-datatypes ((StackFrame!38 0))(
  ( (StackFrame!39 (z!5721 (InoxSet Context!2466)) (from!2619 Int) (lastNullablePos!306 Int) (res!919019 Int) (totalInput!2902 BalanceConc!15364)) )
))
(declare-datatypes ((List!23778 0))(
  ( (Nil!23694) (Cons!23694 (h!29095 StackFrame!38) (t!196294 List!23778)) )
))
(declare-datatypes ((tuple2!23290 0))(
  ( (tuple2!23291 (_1!13560 Int) (_2!13560 List!23778)) )
))
(declare-datatypes ((MutableMap!2360 0))(
  ( (MutableMapExt!2359 (__x!15516 Int)) (HashMap!2360 (underlying!5088 Cell!9607) (hashF!4283 Hashable!2359) (_size!4944 (_ BitVec 32)) (defaultValue!2522 Int)) )
))
(declare-datatypes ((CacheDown!1620 0))(
  ( (CacheDown!1621 (cache!2741 MutableMap!2360)) )
))
(declare-datatypes ((tuple3!2890 0))(
  ( (tuple3!2891 (_1!13561 tuple2!23290) (_2!13561 CacheUp!1634) (_3!1915 CacheDown!1620)) )
))
(declare-fun lt!794824 () tuple3!2890)

(declare-fun mapDefault!11842 () List!23776)

(assert (=> b!2121414 (= condMapEmpty!11841 (= (arr!3730 (_values!2725 (v!28221 (underlying!5085 (v!28222 (underlying!5088 (cache!2741 (_3!1915 lt!794824)))))))) ((as const (Array (_ BitVec 32) List!23776)) mapDefault!11842)))))

(declare-fun b!2121415 () Bool)

(declare-fun e!1351199 () Bool)

(declare-fun e!1351187 () Bool)

(assert (=> b!2121415 (= e!1351199 e!1351187)))

(declare-fun b!2121416 () Bool)

(declare-fun e!1351184 () Bool)

(declare-fun e!1351189 () Bool)

(assert (=> b!2121416 (= e!1351184 e!1351189)))

(declare-fun b!2121417 () Bool)

(declare-fun e!1351198 () Bool)

(assert (=> b!2121417 (= e!1351198 e!1351191)))

(declare-fun b!2121418 () Bool)

(declare-fun e!1351186 () Bool)

(declare-fun e!1351190 () Bool)

(assert (=> b!2121418 (= e!1351186 e!1351190)))

(declare-fun mapNonEmpty!11841 () Bool)

(declare-fun mapRes!11841 () Bool)

(assert (=> mapNonEmpty!11841 (= mapRes!11841 true)))

(declare-fun mapRest!11842 () (Array (_ BitVec 32) List!23775))

(declare-fun mapKey!11842 () (_ BitVec 32))

(declare-fun mapValue!11841 () List!23775)

(assert (=> mapNonEmpty!11841 (= (arr!3731 (_values!2726 (v!28223 (underlying!5086 (v!28224 (underlying!5087 (cache!2740 (_2!13561 lt!794824)))))))) (store mapRest!11842 mapKey!11842 mapValue!11841))))

(declare-fun b!2121371 () Bool)

(assert (=> b!2121371 (and e!1351184 e!1351185 e!1351186)))

(declare-fun b!2121419 () Bool)

(declare-fun setRes!14752 () Bool)

(assert (=> b!2121419 (= e!1351189 setRes!14752)))

(declare-fun condSetEmpty!14752 () Bool)

(assert (=> b!2121419 (= condSetEmpty!14752 (= (z!5721 (h!29095 (_2!13560 (_1!13561 lt!794824)))) ((as const (Array Context!2466 Bool)) false)))))

(declare-fun b!2121420 () Bool)

(declare-fun e!1351196 () Bool)

(assert (=> b!2121420 (= e!1351196 e!1351198)))

(declare-fun setIsEmpty!14752 () Bool)

(assert (=> setIsEmpty!14752 setRes!14752))

(declare-fun setNonEmpty!14752 () Bool)

(assert (=> setNonEmpty!14752 (= setRes!14752 true)))

(declare-fun setElem!14752 () Context!2466)

(declare-fun setRest!14752 () (InoxSet Context!2466))

(assert (=> setNonEmpty!14752 (= (z!5721 (h!29095 (_2!13560 (_1!13561 lt!794824)))) ((_ map or) (store ((as const (Array Context!2466 Bool)) false) setElem!14752 true) setRest!14752))))

(declare-fun b!2121421 () Bool)

(declare-fun e!1351197 () Bool)

(assert (=> b!2121421 (= e!1351197 mapRes!11841)))

(declare-fun condMapEmpty!11842 () Bool)

(declare-fun mapDefault!11841 () List!23775)

(assert (=> b!2121421 (= condMapEmpty!11842 (= (arr!3731 (_values!2726 (v!28223 (underlying!5086 (v!28224 (underlying!5087 (cache!2740 (_2!13561 lt!794824)))))))) ((as const (Array (_ BitVec 32) List!23775)) mapDefault!11841)))))

(declare-fun b!2121422 () Bool)

(declare-fun e!1351193 () Bool)

(assert (=> b!2121422 (= e!1351193 e!1351196)))

(declare-fun mapNonEmpty!11842 () Bool)

(assert (=> mapNonEmpty!11842 (= mapRes!11842 true)))

(declare-fun mapRest!11841 () (Array (_ BitVec 32) List!23776))

(declare-fun mapKey!11841 () (_ BitVec 32))

(declare-fun mapValue!11842 () List!23776)

(assert (=> mapNonEmpty!11842 (= (arr!3730 (_values!2725 (v!28221 (underlying!5085 (v!28222 (underlying!5088 (cache!2741 (_3!1915 lt!794824)))))))) (store mapRest!11841 mapKey!11841 mapValue!11842))))

(declare-fun b!2121423 () Bool)

(declare-fun e!1351195 () Bool)

(assert (=> b!2121423 (= e!1351195 e!1351199)))

(declare-fun mapIsEmpty!11841 () Bool)

(assert (=> mapIsEmpty!11841 mapRes!11841))

(declare-fun b!2121424 () Bool)

(declare-fun e!1351188 () Bool)

(assert (=> b!2121424 (= e!1351190 e!1351188)))

(declare-fun b!2121425 () Bool)

(declare-fun e!1351192 () Bool)

(assert (=> b!2121425 (= e!1351194 e!1351192)))

(declare-fun b!2121426 () Bool)

(assert (=> b!2121426 (= e!1351187 e!1351197)))

(declare-fun mapIsEmpty!11842 () Bool)

(assert (=> mapIsEmpty!11842 mapRes!11842))

(declare-fun b!2121427 () Bool)

(declare-fun lt!794830 () MutLongMap!2445)

(get-info :version)

(assert (=> b!2121427 (= e!1351188 (and e!1351193 ((_ is LongMap!2445) lt!794830)))))

(assert (=> b!2121427 (= lt!794830 (v!28222 (underlying!5088 (cache!2741 (_3!1915 lt!794824)))))))

(declare-fun b!2121428 () Bool)

(declare-fun lt!794831 () MutLongMap!2446)

(assert (=> b!2121428 (= e!1351192 (and e!1351195 ((_ is LongMap!2446) lt!794831)))))

(assert (=> b!2121428 (= lt!794831 (v!28224 (underlying!5087 (cache!2740 (_2!13561 lt!794824)))))))

(assert (= (and b!2121419 condSetEmpty!14752) setIsEmpty!14752))

(assert (= (and b!2121419 (not condSetEmpty!14752)) setNonEmpty!14752))

(assert (= b!2121416 b!2121419))

(assert (= (and b!2121371 ((_ is Cons!23694) (_2!13560 (_1!13561 lt!794824)))) b!2121416))

(assert (= (and b!2121421 condMapEmpty!11842) mapIsEmpty!11841))

(assert (= (and b!2121421 (not condMapEmpty!11842)) mapNonEmpty!11841))

(assert (= b!2121426 b!2121421))

(assert (= b!2121415 b!2121426))

(assert (= b!2121423 b!2121415))

(assert (= (and b!2121428 ((_ is LongMap!2446) (v!28224 (underlying!5087 (cache!2740 (_2!13561 lt!794824)))))) b!2121423))

(assert (= b!2121425 b!2121428))

(assert (= (and b!2121413 ((_ is HashMap!2359) (cache!2740 (_2!13561 lt!794824)))) b!2121425))

(assert (= b!2121371 b!2121413))

(assert (= (and b!2121414 condMapEmpty!11841) mapIsEmpty!11842))

(assert (= (and b!2121414 (not condMapEmpty!11841)) mapNonEmpty!11842))

(assert (= b!2121417 b!2121414))

(assert (= b!2121420 b!2121417))

(assert (= b!2121422 b!2121420))

(assert (= (and b!2121427 ((_ is LongMap!2445) (v!28222 (underlying!5088 (cache!2741 (_3!1915 lt!794824)))))) b!2121422))

(assert (= b!2121424 b!2121427))

(assert (= (and b!2121418 ((_ is HashMap!2360) (cache!2741 (_3!1915 lt!794824)))) b!2121424))

(assert (= b!2121371 b!2121418))

(declare-fun order!14629 () Int)

(declare-fun lambda!78530 () Int)

(declare-fun order!14631 () Int)

(declare-fun dynLambda!11316 (Int Int) Int)

(declare-fun dynLambda!11317 (Int Int) Int)

(assert (=> b!2121424 (< (dynLambda!11316 order!14629 (defaultValue!2522 (cache!2741 (_3!1915 lt!794824)))) (dynLambda!11317 order!14631 lambda!78530))))

(declare-fun order!14633 () Int)

(declare-fun dynLambda!11318 (Int Int) Int)

(assert (=> b!2121426 (< (dynLambda!11318 order!14633 (defaultEntry!2811 (v!28223 (underlying!5086 (v!28224 (underlying!5087 (cache!2740 (_2!13561 lt!794824)))))))) (dynLambda!11317 order!14631 lambda!78530))))

(declare-fun order!14635 () Int)

(declare-fun dynLambda!11319 (Int Int) Int)

(assert (=> b!2121425 (< (dynLambda!11319 order!14635 (defaultValue!2521 (cache!2740 (_2!13561 lt!794824)))) (dynLambda!11317 order!14631 lambda!78530))))

(declare-fun order!14637 () Int)

(declare-fun dynLambda!11320 (Int Int) Int)

(assert (=> b!2121417 (< (dynLambda!11320 order!14637 (defaultEntry!2810 (v!28221 (underlying!5085 (v!28222 (underlying!5088 (cache!2741 (_3!1915 lt!794824)))))))) (dynLambda!11317 order!14631 lambda!78530))))

(declare-fun m!2575159 () Bool)

(assert (=> mapNonEmpty!11841 m!2575159))

(declare-fun m!2575161 () Bool)

(assert (=> mapNonEmpty!11842 m!2575161))

(declare-fun bs!442688 () Bool)

(declare-fun b!2121365 () Bool)

(assert (= bs!442688 (and b!2121365 b!2121371)))

(declare-fun lambda!78531 () Int)

(assert (=> bs!442688 (not (= lambda!78531 lambda!78530))))

(assert (=> b!2121365 true))

(declare-fun lambda!78532 () Int)

(assert (=> b!2121371 (not (= lambda!78532 lambda!78530))))

(assert (=> bs!442688 (= lambda!78532 lambda!78531)))

(assert (=> b!2121371 true))

(declare-fun b!2121345 () Bool)

(declare-fun e!1351143 () Bool)

(declare-fun e!1351135 () Bool)

(assert (=> b!2121345 (= e!1351143 e!1351135)))

(declare-fun b!2121346 () Bool)

(declare-fun e!1351151 () Bool)

(declare-fun e!1351148 () Bool)

(declare-fun lt!794825 () MutLongMap!2445)

(assert (=> b!2121346 (= e!1351151 (and e!1351148 ((_ is LongMap!2445) lt!794825)))))

(declare-fun cacheDown!1110 () CacheDown!1620)

(assert (=> b!2121346 (= lt!794825 (v!28222 (underlying!5088 (cache!2741 cacheDown!1110))))))

(declare-fun b!2121347 () Bool)

(declare-fun e!1351142 () Bool)

(declare-fun e!1351139 () Bool)

(assert (=> b!2121347 (= e!1351142 e!1351139)))

(declare-fun b!2121348 () Bool)

(declare-fun e!1351131 () Bool)

(declare-fun e!1351127 () Bool)

(declare-fun lt!794821 () MutLongMap!2446)

(assert (=> b!2121348 (= e!1351131 (and e!1351127 ((_ is LongMap!2446) lt!794821)))))

(declare-fun cacheUp!991 () CacheUp!1634)

(assert (=> b!2121348 (= lt!794821 (v!28224 (underlying!5087 (cache!2740 cacheUp!991))))))

(declare-fun b!2121349 () Bool)

(declare-fun e!1351125 () Bool)

(declare-fun forall!4861 (List!23778 Int) Bool)

(assert (=> b!2121349 (= e!1351125 (forall!4861 (_2!13560 (_1!13561 lt!794824)) lambda!78530))))

(declare-fun b!2121350 () Bool)

(assert (=> b!2121350 (= e!1351148 e!1351143)))

(declare-fun b!2121351 () Bool)

(declare-fun e!1351144 () Bool)

(declare-fun tp!649351 () Bool)

(declare-fun mapRes!11834 () Bool)

(assert (=> b!2121351 (= e!1351144 (and tp!649351 mapRes!11834))))

(declare-fun condMapEmpty!11834 () Bool)

(declare-fun mapDefault!11836 () List!23775)

(assert (=> b!2121351 (= condMapEmpty!11834 (= (arr!3731 (_values!2726 (v!28223 (underlying!5086 (v!28224 (underlying!5087 (cache!2740 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23775)) mapDefault!11836)))))

(declare-fun b!2121352 () Bool)

(declare-fun e!1351145 () Bool)

(declare-fun input!5507 () BalanceConc!15364)

(declare-fun tp!649343 () Bool)

(declare-fun inv!31284 (Conc!7801) Bool)

(assert (=> b!2121352 (= e!1351145 (and (inv!31284 (c!339717 input!5507)) tp!649343))))

(declare-fun b!2121353 () Bool)

(declare-fun res!919013 () Bool)

(declare-fun e!1351123 () Bool)

(assert (=> b!2121353 (=> (not res!919013) (not e!1351123))))

(declare-datatypes ((Hashable!2361 0))(
  ( (HashableExt!2360 (__x!15517 Int)) )
))
(declare-datatypes ((tuple3!2892 0))(
  ( (tuple3!2893 (_1!13562 (InoxSet Context!2466)) (_2!13562 Int) (_3!1916 Int)) )
))
(declare-datatypes ((tuple2!23292 0))(
  ( (tuple2!23293 (_1!13563 tuple3!2892) (_2!13563 Int)) )
))
(declare-datatypes ((List!23779 0))(
  ( (Nil!23695) (Cons!23695 (h!29096 tuple2!23292) (t!196295 List!23779)) )
))
(declare-datatypes ((array!8409 0))(
  ( (array!8410 (arr!3732 (Array (_ BitVec 32) List!23779)) (size!18517 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4894 0))(
  ( (LongMapFixedSize!4895 (defaultEntry!2812 Int) (mask!6594 (_ BitVec 32)) (extraKeys!2695 (_ BitVec 32)) (zeroValue!2705 List!23779) (minValue!2705 List!23779) (_size!4945 (_ BitVec 32)) (_keys!2744 array!8403) (_values!2727 array!8409) (_vacant!2508 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9613 0))(
  ( (Cell!9614 (v!28225 LongMapFixedSize!4894)) )
))
(declare-datatypes ((MutLongMap!2447 0))(
  ( (LongMap!2447 (underlying!5089 Cell!9613)) (MutLongMapExt!2446 (__x!15518 Int)) )
))
(declare-datatypes ((Cell!9615 0))(
  ( (Cell!9616 (v!28226 MutLongMap!2447)) )
))
(declare-datatypes ((MutableMap!2361 0))(
  ( (MutableMapExt!2360 (__x!15519 Int)) (HashMap!2361 (underlying!5090 Cell!9615) (hashF!4284 Hashable!2361) (_size!4946 (_ BitVec 32)) (defaultValue!2523 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!588 0))(
  ( (CacheFurthestNullable!589 (cache!2742 MutableMap!2361) (totalInput!2903 BalanceConc!15364)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!588)

(declare-fun totalInput!886 () BalanceConc!15364)

(assert (=> b!2121353 (= res!919013 (= (totalInput!2903 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2121354 () Bool)

(declare-fun e!1351141 () Bool)

(declare-fun lt!794820 () MutLongMap!2447)

(assert (=> b!2121354 (= e!1351141 (and e!1351142 ((_ is LongMap!2447) lt!794820)))))

(assert (=> b!2121354 (= lt!794820 (v!28226 (underlying!5090 (cache!2742 cacheFurthestNullable!130))))))

(declare-fun b!2121356 () Bool)

(declare-fun e!1351150 () Int)

(assert (=> b!2121356 (= e!1351150 (- 1))))

(declare-fun e!1351132 () Bool)

(assert (=> b!2121357 (= e!1351132 (and e!1351151 tp!649349))))

(declare-fun mapIsEmpty!11834 () Bool)

(assert (=> mapIsEmpty!11834 mapRes!11834))

(declare-fun b!2121358 () Bool)

(declare-fun e!1351147 () Bool)

(declare-fun tp!649357 () Bool)

(assert (=> b!2121358 (= e!1351147 tp!649357)))

(declare-fun e!1351146 () Bool)

(declare-fun tp!649363 () Bool)

(declare-fun tp!649350 () Bool)

(declare-fun array_inv!2672 (array!8403) Bool)

(declare-fun array_inv!2673 (array!8407) Bool)

(assert (=> b!2121359 (= e!1351146 (and tp!649358 tp!649350 tp!649363 (array_inv!2672 (_keys!2743 (v!28223 (underlying!5086 (v!28224 (underlying!5087 (cache!2740 cacheUp!991))))))) (array_inv!2673 (_values!2726 (v!28223 (underlying!5086 (v!28224 (underlying!5087 (cache!2740 cacheUp!991))))))) e!1351144))))

(declare-fun mapNonEmpty!11834 () Bool)

(declare-fun mapRes!11836 () Bool)

(declare-fun tp!649353 () Bool)

(declare-fun tp!649359 () Bool)

(assert (=> mapNonEmpty!11834 (= mapRes!11836 (and tp!649353 tp!649359))))

(declare-fun mapRest!11835 () (Array (_ BitVec 32) List!23779))

(declare-fun mapValue!11836 () List!23779)

(declare-fun mapKey!11834 () (_ BitVec 32))

(assert (=> mapNonEmpty!11834 (= (arr!3732 (_values!2727 (v!28225 (underlying!5089 (v!28226 (underlying!5090 (cache!2742 cacheFurthestNullable!130))))))) (store mapRest!11835 mapKey!11834 mapValue!11836))))

(declare-fun b!2121360 () Bool)

(declare-fun res!919015 () Bool)

(assert (=> b!2121360 (=> (not res!919015) (not e!1351123))))

(declare-fun valid!1925 (CacheDown!1620) Bool)

(assert (=> b!2121360 (= res!919015 (valid!1925 cacheDown!1110))))

(declare-fun mapNonEmpty!11835 () Bool)

(declare-fun tp!649355 () Bool)

(declare-fun tp!649360 () Bool)

(assert (=> mapNonEmpty!11835 (= mapRes!11834 (and tp!649355 tp!649360))))

(declare-fun mapRest!11834 () (Array (_ BitVec 32) List!23775))

(declare-fun mapKey!11836 () (_ BitVec 32))

(declare-fun mapValue!11835 () List!23775)

(assert (=> mapNonEmpty!11835 (= (arr!3731 (_values!2726 (v!28223 (underlying!5086 (v!28224 (underlying!5087 (cache!2740 cacheUp!991))))))) (store mapRest!11834 mapKey!11836 mapValue!11835))))

(declare-fun b!2121361 () Bool)

(declare-fun lt!794823 () Int)

(assert (=> b!2121361 (= e!1351150 (- lt!794823 1))))

(declare-fun b!2121362 () Bool)

(declare-fun e!1351124 () Bool)

(assert (=> b!2121362 (= e!1351127 e!1351124)))

(declare-fun mapIsEmpty!11835 () Bool)

(assert (=> mapIsEmpty!11835 mapRes!11836))

(declare-fun e!1351136 () Bool)

(assert (=> b!2121363 (= e!1351136 (and e!1351141 tp!649342))))

(declare-fun b!2121364 () Bool)

(declare-fun e!1351128 () Bool)

(declare-fun tp!649346 () Bool)

(assert (=> b!2121364 (= e!1351128 (and (inv!31284 (c!339717 (totalInput!2903 cacheFurthestNullable!130))) tp!649346))))

(declare-fun e!1351134 () Bool)

(assert (=> b!2121365 (= e!1351134 (forall!4861 (_2!13560 (_1!13561 lt!794824)) lambda!78531))))

(declare-fun mapIsEmpty!11836 () Bool)

(declare-fun mapRes!11835 () Bool)

(assert (=> mapIsEmpty!11836 mapRes!11835))

(declare-fun mapNonEmpty!11836 () Bool)

(declare-fun tp!649344 () Bool)

(declare-fun tp!649362 () Bool)

(assert (=> mapNonEmpty!11836 (= mapRes!11835 (and tp!649344 tp!649362))))

(declare-fun mapRest!11836 () (Array (_ BitVec 32) List!23776))

(declare-fun mapKey!11835 () (_ BitVec 32))

(declare-fun mapValue!11834 () List!23776)

(assert (=> mapNonEmpty!11836 (= (arr!3730 (_values!2725 (v!28221 (underlying!5085 (v!28222 (underlying!5088 (cache!2741 cacheDown!1110))))))) (store mapRest!11836 mapKey!11835 mapValue!11834))))

(declare-fun b!2121366 () Bool)

(declare-fun res!919012 () Bool)

(assert (=> b!2121366 (=> (not res!919012) (not e!1351123))))

(declare-fun valid!1926 (CacheUp!1634) Bool)

(assert (=> b!2121366 (= res!919012 (valid!1926 cacheUp!991))))

(declare-fun b!2121367 () Bool)

(declare-fun e!1351149 () Bool)

(declare-fun tp!649339 () Bool)

(assert (=> b!2121367 (= e!1351149 (and tp!649339 mapRes!11835))))

(declare-fun condMapEmpty!11835 () Bool)

(declare-fun mapDefault!11834 () List!23776)

(assert (=> b!2121367 (= condMapEmpty!11835 (= (arr!3730 (_values!2725 (v!28221 (underlying!5085 (v!28222 (underlying!5088 (cache!2741 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23776)) mapDefault!11834)))))

(declare-fun e!1351121 () Bool)

(assert (=> b!2121368 (= e!1351121 (and e!1351131 tp!649354))))

(declare-fun b!2121369 () Bool)

(declare-fun e!1351130 () Bool)

(declare-fun tp!649341 () Bool)

(assert (=> b!2121369 (= e!1351130 (and tp!649341 mapRes!11836))))

(declare-fun condMapEmpty!11836 () Bool)

(declare-fun mapDefault!11835 () List!23779)

(assert (=> b!2121369 (= condMapEmpty!11836 (= (arr!3732 (_values!2727 (v!28225 (underlying!5089 (v!28226 (underlying!5090 (cache!2742 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23779)) mapDefault!11835)))))

(declare-fun setNonEmpty!14749 () Bool)

(declare-fun setRes!14749 () Bool)

(declare-fun tp!649340 () Bool)

(declare-fun setElem!14749 () Context!2466)

(declare-fun inv!31285 (Context!2466) Bool)

(assert (=> setNonEmpty!14749 (= setRes!14749 (and tp!649340 (inv!31285 setElem!14749) e!1351147))))

(declare-fun z!3883 () (InoxSet Context!2466))

(declare-fun setRest!14749 () (InoxSet Context!2466))

(assert (=> setNonEmpty!14749 (= z!3883 ((_ map or) (store ((as const (Array Context!2466 Bool)) false) setElem!14749 true) setRest!14749))))

(declare-fun b!2121370 () Bool)

(declare-fun e!1351138 () Bool)

(assert (=> b!2121370 (= e!1351138 e!1351121)))

(assert (=> b!2121371 (= e!1351123 (not e!1351125))))

(declare-fun res!919017 () Bool)

(assert (=> b!2121371 (=> res!919017 e!1351125)))

(assert (=> b!2121371 (= res!919017 (not (forall!4861 (_2!13560 (_1!13561 lt!794824)) lambda!78532)))))

(assert (=> b!2121371 e!1351134))

(declare-fun res!919018 () Bool)

(assert (=> b!2121371 (=> (not res!919018) (not e!1351134))))

(assert (=> b!2121371 (= res!919018 (forall!4861 (_2!13560 (_1!13561 lt!794824)) lambda!78530))))

(declare-fun lt!794822 () Int)

(declare-fun furthestNullablePositionStackMem!8 ((InoxSet Context!2466) Int BalanceConc!15364 Int Int List!23778 CacheUp!1634 CacheDown!1620 CacheFurthestNullable!588) tuple3!2890)

(assert (=> b!2121371 (= lt!794824 (furthestNullablePositionStackMem!8 z!3883 lt!794823 totalInput!886 lt!794822 e!1351150 Nil!23694 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339715 () Bool)

(declare-fun nullableZipper!63 ((InoxSet Context!2466)) Bool)

(assert (=> b!2121371 (= c!339715 (nullableZipper!63 z!3883))))

(declare-fun size!18518 (BalanceConc!15364) Int)

(assert (=> b!2121371 (= lt!794823 (- lt!794822 (size!18518 input!5507)))))

(assert (=> b!2121371 (= lt!794822 (size!18518 totalInput!886))))

(declare-fun e!1351126 () Bool)

(declare-fun tp!649356 () Bool)

(declare-fun tp!649348 () Bool)

(declare-fun array_inv!2674 (array!8409) Bool)

(assert (=> b!2121372 (= e!1351126 (and tp!649345 tp!649348 tp!649356 (array_inv!2672 (_keys!2744 (v!28225 (underlying!5089 (v!28226 (underlying!5090 (cache!2742 cacheFurthestNullable!130))))))) (array_inv!2674 (_values!2727 (v!28225 (underlying!5089 (v!28226 (underlying!5090 (cache!2742 cacheFurthestNullable!130))))))) e!1351130))))

(declare-fun b!2121373 () Bool)

(assert (=> b!2121373 (= e!1351139 e!1351126)))

(declare-fun e!1351133 () Bool)

(declare-fun b!2121374 () Bool)

(declare-fun inv!31286 (BalanceConc!15364) Bool)

(assert (=> b!2121374 (= e!1351133 (and e!1351136 (inv!31286 (totalInput!2903 cacheFurthestNullable!130)) e!1351128))))

(declare-fun tp!649352 () Bool)

(declare-fun tp!649347 () Bool)

(declare-fun array_inv!2675 (array!8405) Bool)

(assert (=> b!2121375 (= e!1351135 (and tp!649364 tp!649352 tp!649347 (array_inv!2672 (_keys!2742 (v!28221 (underlying!5085 (v!28222 (underlying!5088 (cache!2741 cacheDown!1110))))))) (array_inv!2675 (_values!2725 (v!28221 (underlying!5085 (v!28222 (underlying!5088 (cache!2741 cacheDown!1110))))))) e!1351149))))

(declare-fun b!2121376 () Bool)

(declare-fun res!919016 () Bool)

(assert (=> b!2121376 (=> (not res!919016) (not e!1351123))))

(declare-fun valid!1927 (CacheFurthestNullable!588) Bool)

(assert (=> b!2121376 (= res!919016 (valid!1927 cacheFurthestNullable!130))))

(declare-fun setIsEmpty!14749 () Bool)

(assert (=> setIsEmpty!14749 setRes!14749))

(declare-fun b!2121377 () Bool)

(declare-fun e!1351120 () Bool)

(assert (=> b!2121377 (= e!1351120 e!1351132)))

(declare-fun b!2121378 () Bool)

(declare-fun e!1351137 () Bool)

(declare-fun tp!649361 () Bool)

(assert (=> b!2121378 (= e!1351137 (and (inv!31284 (c!339717 totalInput!886)) tp!649361))))

(declare-fun b!2121355 () Bool)

(assert (=> b!2121355 (= e!1351124 e!1351146)))

(declare-fun res!919014 () Bool)

(assert (=> start!207014 (=> (not res!919014) (not e!1351123))))

(declare-fun isSuffix!617 (List!23777 List!23777) Bool)

(declare-fun list!9525 (BalanceConc!15364) List!23777)

(assert (=> start!207014 (= res!919014 (isSuffix!617 (list!9525 input!5507) (list!9525 totalInput!886)))))

(assert (=> start!207014 e!1351123))

(declare-fun inv!31287 (CacheFurthestNullable!588) Bool)

(assert (=> start!207014 (and (inv!31287 cacheFurthestNullable!130) e!1351133)))

(declare-fun condSetEmpty!14749 () Bool)

(assert (=> start!207014 (= condSetEmpty!14749 (= z!3883 ((as const (Array Context!2466 Bool)) false)))))

(assert (=> start!207014 setRes!14749))

(assert (=> start!207014 (and (inv!31286 input!5507) e!1351145)))

(declare-fun inv!31288 (CacheDown!1620) Bool)

(assert (=> start!207014 (and (inv!31288 cacheDown!1110) e!1351120)))

(declare-fun inv!31289 (CacheUp!1634) Bool)

(assert (=> start!207014 (and (inv!31289 cacheUp!991) e!1351138)))

(assert (=> start!207014 (and (inv!31286 totalInput!886) e!1351137)))

(assert (= (and start!207014 res!919014) b!2121366))

(assert (= (and b!2121366 res!919012) b!2121360))

(assert (= (and b!2121360 res!919015) b!2121376))

(assert (= (and b!2121376 res!919016) b!2121353))

(assert (= (and b!2121353 res!919013) b!2121371))

(assert (= (and b!2121371 c!339715) b!2121361))

(assert (= (and b!2121371 (not c!339715)) b!2121356))

(assert (= (and b!2121371 res!919018) b!2121365))

(assert (= (and b!2121371 (not res!919017)) b!2121349))

(assert (= (and b!2121369 condMapEmpty!11836) mapIsEmpty!11835))

(assert (= (and b!2121369 (not condMapEmpty!11836)) mapNonEmpty!11834))

(assert (= b!2121372 b!2121369))

(assert (= b!2121373 b!2121372))

(assert (= b!2121347 b!2121373))

(assert (= (and b!2121354 ((_ is LongMap!2447) (v!28226 (underlying!5090 (cache!2742 cacheFurthestNullable!130))))) b!2121347))

(assert (= b!2121363 b!2121354))

(assert (= (and b!2121374 ((_ is HashMap!2361) (cache!2742 cacheFurthestNullable!130))) b!2121363))

(assert (= b!2121374 b!2121364))

(assert (= start!207014 b!2121374))

(assert (= (and start!207014 condSetEmpty!14749) setIsEmpty!14749))

(assert (= (and start!207014 (not condSetEmpty!14749)) setNonEmpty!14749))

(assert (= setNonEmpty!14749 b!2121358))

(assert (= start!207014 b!2121352))

(assert (= (and b!2121367 condMapEmpty!11835) mapIsEmpty!11836))

(assert (= (and b!2121367 (not condMapEmpty!11835)) mapNonEmpty!11836))

(assert (= b!2121375 b!2121367))

(assert (= b!2121345 b!2121375))

(assert (= b!2121350 b!2121345))

(assert (= (and b!2121346 ((_ is LongMap!2445) (v!28222 (underlying!5088 (cache!2741 cacheDown!1110))))) b!2121350))

(assert (= b!2121357 b!2121346))

(assert (= (and b!2121377 ((_ is HashMap!2360) (cache!2741 cacheDown!1110))) b!2121357))

(assert (= start!207014 b!2121377))

(assert (= (and b!2121351 condMapEmpty!11834) mapIsEmpty!11834))

(assert (= (and b!2121351 (not condMapEmpty!11834)) mapNonEmpty!11835))

(assert (= b!2121359 b!2121351))

(assert (= b!2121355 b!2121359))

(assert (= b!2121362 b!2121355))

(assert (= (and b!2121348 ((_ is LongMap!2446) (v!28224 (underlying!5087 (cache!2740 cacheUp!991))))) b!2121362))

(assert (= b!2121368 b!2121348))

(assert (= (and b!2121370 ((_ is HashMap!2359) (cache!2740 cacheUp!991))) b!2121368))

(assert (= start!207014 b!2121370))

(assert (= start!207014 b!2121378))

(declare-fun m!2575163 () Bool)

(assert (=> b!2121364 m!2575163))

(declare-fun m!2575165 () Bool)

(assert (=> b!2121365 m!2575165))

(declare-fun m!2575167 () Bool)

(assert (=> start!207014 m!2575167))

(declare-fun m!2575169 () Bool)

(assert (=> start!207014 m!2575169))

(declare-fun m!2575171 () Bool)

(assert (=> start!207014 m!2575171))

(declare-fun m!2575173 () Bool)

(assert (=> start!207014 m!2575173))

(declare-fun m!2575175 () Bool)

(assert (=> start!207014 m!2575175))

(declare-fun m!2575177 () Bool)

(assert (=> start!207014 m!2575177))

(assert (=> start!207014 m!2575173))

(assert (=> start!207014 m!2575167))

(declare-fun m!2575179 () Bool)

(assert (=> start!207014 m!2575179))

(declare-fun m!2575181 () Bool)

(assert (=> start!207014 m!2575181))

(declare-fun m!2575183 () Bool)

(assert (=> setNonEmpty!14749 m!2575183))

(declare-fun m!2575185 () Bool)

(assert (=> mapNonEmpty!11835 m!2575185))

(declare-fun m!2575187 () Bool)

(assert (=> b!2121360 m!2575187))

(declare-fun m!2575189 () Bool)

(assert (=> b!2121366 m!2575189))

(declare-fun m!2575191 () Bool)

(assert (=> b!2121349 m!2575191))

(declare-fun m!2575193 () Bool)

(assert (=> b!2121359 m!2575193))

(declare-fun m!2575195 () Bool)

(assert (=> b!2121359 m!2575195))

(declare-fun m!2575197 () Bool)

(assert (=> mapNonEmpty!11834 m!2575197))

(declare-fun m!2575199 () Bool)

(assert (=> b!2121352 m!2575199))

(declare-fun m!2575201 () Bool)

(assert (=> b!2121375 m!2575201))

(declare-fun m!2575203 () Bool)

(assert (=> b!2121375 m!2575203))

(declare-fun m!2575205 () Bool)

(assert (=> b!2121376 m!2575205))

(declare-fun m!2575207 () Bool)

(assert (=> mapNonEmpty!11836 m!2575207))

(declare-fun m!2575209 () Bool)

(assert (=> b!2121372 m!2575209))

(declare-fun m!2575211 () Bool)

(assert (=> b!2121372 m!2575211))

(declare-fun m!2575213 () Bool)

(assert (=> b!2121371 m!2575213))

(declare-fun m!2575215 () Bool)

(assert (=> b!2121371 m!2575215))

(declare-fun m!2575217 () Bool)

(assert (=> b!2121371 m!2575217))

(declare-fun m!2575219 () Bool)

(assert (=> b!2121371 m!2575219))

(assert (=> b!2121371 m!2575191))

(declare-fun m!2575221 () Bool)

(assert (=> b!2121371 m!2575221))

(declare-fun m!2575223 () Bool)

(assert (=> b!2121378 m!2575223))

(declare-fun m!2575225 () Bool)

(assert (=> b!2121374 m!2575225))

(check-sat (not b!2121378) (not mapNonEmpty!11842) (not b!2121358) (not b!2121374) b_and!171199 (not b!2121366) (not b_next!62323) (not b!2121417) b_and!171203 (not b_next!62327) b_and!171195 (not b!2121351) (not b_next!62317) (not b_next!62321) b_and!171201 (not b!2121414) (not b!2121376) (not b!2121365) (not b!2121369) (not b!2121367) (not mapNonEmpty!11835) (not b!2121349) (not b!2121375) (not b!2121372) (not b!2121364) b_and!171193 (not b!2121421) (not mapNonEmpty!11834) b_and!171197 (not b!2121426) (not b_next!62319) (not start!207014) (not setNonEmpty!14752) (not b_next!62325) (not b!2121359) (not b!2121371) (not b!2121352) (not b!2121416) (not b!2121360) (not mapNonEmpty!11841) (not mapNonEmpty!11836) (not setNonEmpty!14749))
(check-sat b_and!171199 (not b_next!62323) b_and!171193 b_and!171197 b_and!171203 (not b_next!62319) (not b_next!62325) (not b_next!62327) b_and!171195 (not b_next!62317) (not b_next!62321) b_and!171201)
