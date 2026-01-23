; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207156 () Bool)

(assert start!207156)

(declare-fun b!2123504 () Bool)

(declare-fun b_free!61709 () Bool)

(declare-fun b_next!62413 () Bool)

(assert (=> b!2123504 (= b_free!61709 (not b_next!62413))))

(declare-fun tp!650516 () Bool)

(declare-fun b_and!171289 () Bool)

(assert (=> b!2123504 (= tp!650516 b_and!171289)))

(declare-fun b!2123495 () Bool)

(declare-fun b_free!61711 () Bool)

(declare-fun b_next!62415 () Bool)

(assert (=> b!2123495 (= b_free!61711 (not b_next!62415))))

(declare-fun tp!650508 () Bool)

(declare-fun b_and!171291 () Bool)

(assert (=> b!2123495 (= tp!650508 b_and!171291)))

(declare-fun b!2123496 () Bool)

(declare-fun b_free!61713 () Bool)

(declare-fun b_next!62417 () Bool)

(assert (=> b!2123496 (= b_free!61713 (not b_next!62417))))

(declare-fun tp!650521 () Bool)

(declare-fun b_and!171293 () Bool)

(assert (=> b!2123496 (= tp!650521 b_and!171293)))

(declare-fun b!2123524 () Bool)

(declare-fun b_free!61715 () Bool)

(declare-fun b_next!62419 () Bool)

(assert (=> b!2123524 (= b_free!61715 (not b_next!62419))))

(declare-fun tp!650509 () Bool)

(declare-fun b_and!171295 () Bool)

(assert (=> b!2123524 (= tp!650509 b_and!171295)))

(declare-fun b!2123519 () Bool)

(declare-fun b_free!61717 () Bool)

(declare-fun b_next!62421 () Bool)

(assert (=> b!2123519 (= b_free!61717 (not b_next!62421))))

(declare-fun tp!650503 () Bool)

(declare-fun b_and!171297 () Bool)

(assert (=> b!2123519 (= tp!650503 b_and!171297)))

(declare-fun b!2123525 () Bool)

(declare-fun b_free!61719 () Bool)

(declare-fun b_next!62423 () Bool)

(assert (=> b!2123525 (= b_free!61719 (not b_next!62423))))

(declare-fun tp!650515 () Bool)

(declare-fun b_and!171299 () Bool)

(assert (=> b!2123525 (= tp!650515 b_and!171299)))

(declare-fun b!2123563 () Bool)

(declare-fun e!1352998 () Bool)

(declare-fun e!1353005 () Bool)

(declare-datatypes ((C!11488 0))(
  ( (C!11489 (val!6730 Int)) )
))
(declare-datatypes ((Regex!5671 0))(
  ( (ElementMatch!5671 (c!339822 C!11488)) (Concat!9973 (regOne!11854 Regex!5671) (regTwo!11854 Regex!5671)) (EmptyExpr!5671) (Star!5671 (reg!6000 Regex!5671)) (EmptyLang!5671) (Union!5671 (regOne!11855 Regex!5671) (regTwo!11855 Regex!5671)) )
))
(declare-datatypes ((List!23818 0))(
  ( (Nil!23734) (Cons!23734 (h!29135 Regex!5671) (t!196337 List!23818)) )
))
(declare-datatypes ((Context!2482 0))(
  ( (Context!2483 (exprs!1741 List!23818)) )
))
(declare-datatypes ((tuple3!2934 0))(
  ( (tuple3!2935 (_1!13618 Regex!5671) (_2!13618 Context!2482) (_3!1937 C!11488)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23362 0))(
  ( (tuple2!23363 (_1!13619 tuple3!2934) (_2!13619 (InoxSet Context!2482))) )
))
(declare-datatypes ((List!23819 0))(
  ( (Nil!23735) (Cons!23735 (h!29136 tuple2!23362) (t!196338 List!23819)) )
))
(declare-datatypes ((array!8471 0))(
  ( (array!8472 (arr!3757 (Array (_ BitVec 32) List!23819)) (size!18552 (_ BitVec 32))) )
))
(declare-datatypes ((array!8473 0))(
  ( (array!8474 (arr!3758 (Array (_ BitVec 32) (_ BitVec 64))) (size!18553 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4930 0))(
  ( (LongMapFixedSize!4931 (defaultEntry!2830 Int) (mask!6616 (_ BitVec 32)) (extraKeys!2713 (_ BitVec 32)) (zeroValue!2723 List!23819) (minValue!2723 List!23819) (_size!4981 (_ BitVec 32)) (_keys!2762 array!8473) (_values!2745 array!8471) (_vacant!2526 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9685 0))(
  ( (Cell!9686 (v!28264 LongMapFixedSize!4930)) )
))
(declare-datatypes ((MutLongMap!2465 0))(
  ( (LongMap!2465 (underlying!5125 Cell!9685)) (MutLongMapExt!2464 (__x!15571 Int)) )
))
(declare-fun lt!795253 () MutLongMap!2465)

(get-info :version)

(assert (=> b!2123563 (= e!1352998 (and e!1353005 ((_ is LongMap!2465) lt!795253)))))

(declare-datatypes ((tuple2!23364 0))(
  ( (tuple2!23365 (_1!13620 Context!2482) (_2!13620 C!11488)) )
))
(declare-datatypes ((tuple2!23366 0))(
  ( (tuple2!23367 (_1!13621 tuple2!23364) (_2!13621 (InoxSet Context!2482))) )
))
(declare-datatypes ((List!23820 0))(
  ( (Nil!23736) (Cons!23736 (h!29137 tuple2!23366) (t!196339 List!23820)) )
))
(declare-datatypes ((Cell!9687 0))(
  ( (Cell!9688 (v!28265 MutLongMap!2465)) )
))
(declare-datatypes ((List!23821 0))(
  ( (Nil!23737) (Cons!23737 (h!29138 C!11488) (t!196340 List!23821)) )
))
(declare-datatypes ((IArray!15623 0))(
  ( (IArray!15624 (innerList!7869 List!23821)) )
))
(declare-datatypes ((Hashable!2379 0))(
  ( (HashableExt!2378 (__x!15572 Int)) )
))
(declare-datatypes ((Hashable!2380 0))(
  ( (HashableExt!2379 (__x!15573 Int)) )
))
(declare-datatypes ((array!8475 0))(
  ( (array!8476 (arr!3759 (Array (_ BitVec 32) List!23820)) (size!18554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4932 0))(
  ( (LongMapFixedSize!4933 (defaultEntry!2831 Int) (mask!6617 (_ BitVec 32)) (extraKeys!2714 (_ BitVec 32)) (zeroValue!2724 List!23820) (minValue!2724 List!23820) (_size!4982 (_ BitVec 32)) (_keys!2763 array!8473) (_values!2746 array!8475) (_vacant!2527 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9689 0))(
  ( (Cell!9690 (v!28266 LongMapFixedSize!4932)) )
))
(declare-datatypes ((MutLongMap!2466 0))(
  ( (LongMap!2466 (underlying!5126 Cell!9689)) (MutLongMapExt!2465 (__x!15574 Int)) )
))
(declare-datatypes ((Cell!9691 0))(
  ( (Cell!9692 (v!28267 MutLongMap!2466)) )
))
(declare-datatypes ((MutableMap!2379 0))(
  ( (MutableMapExt!2378 (__x!15575 Int)) (HashMap!2379 (underlying!5127 Cell!9691) (hashF!4302 Hashable!2380) (_size!4983 (_ BitVec 32)) (defaultValue!2541 Int)) )
))
(declare-datatypes ((CacheUp!1650 0))(
  ( (CacheUp!1651 (cache!2760 MutableMap!2379)) )
))
(declare-datatypes ((Conc!7809 0))(
  ( (Node!7809 (left!18357 Conc!7809) (right!18687 Conc!7809) (csize!15848 Int) (cheight!8020 Int)) (Leaf!11412 (xs!10751 IArray!15623) (csize!15849 Int)) (Empty!7809) )
))
(declare-datatypes ((BalanceConc!15380 0))(
  ( (BalanceConc!15381 (c!339823 Conc!7809)) )
))
(declare-datatypes ((StackFrame!54 0))(
  ( (StackFrame!55 (z!5735 (InoxSet Context!2482)) (from!2630 Int) (lastNullablePos!317 Int) (res!919411 Int) (totalInput!2920 BalanceConc!15380)) )
))
(declare-datatypes ((List!23822 0))(
  ( (Nil!23738) (Cons!23738 (h!29139 StackFrame!54) (t!196341 List!23822)) )
))
(declare-datatypes ((tuple2!23368 0))(
  ( (tuple2!23369 (_1!13622 Int) (_2!13622 List!23822)) )
))
(declare-datatypes ((MutableMap!2380 0))(
  ( (MutableMapExt!2379 (__x!15576 Int)) (HashMap!2380 (underlying!5128 Cell!9687) (hashF!4303 Hashable!2379) (_size!4984 (_ BitVec 32)) (defaultValue!2542 Int)) )
))
(declare-datatypes ((CacheDown!1636 0))(
  ( (CacheDown!1637 (cache!2761 MutableMap!2380)) )
))
(declare-datatypes ((tuple3!2936 0))(
  ( (tuple3!2937 (_1!13623 tuple2!23368) (_2!13623 CacheUp!1650) (_3!1938 CacheDown!1636)) )
))
(declare-fun lt!795247 () tuple3!2936)

(assert (=> b!2123563 (= lt!795253 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))

(declare-fun b!2123564 () Bool)

(declare-fun e!1352997 () Bool)

(declare-fun e!1353002 () Bool)

(assert (=> b!2123564 (= e!1352997 e!1353002)))

(declare-fun b!2123565 () Bool)

(declare-fun e!1352991 () Bool)

(declare-fun e!1352994 () Bool)

(assert (=> b!2123565 (= e!1352991 e!1352994)))

(declare-fun b!2123566 () Bool)

(declare-fun e!1352996 () Bool)

(declare-fun mapRes!12013 () Bool)

(assert (=> b!2123566 (= e!1352996 mapRes!12013)))

(declare-fun condMapEmpty!12013 () Bool)

(declare-fun mapDefault!12013 () List!23820)

(assert (=> b!2123566 (= condMapEmpty!12013 (= (arr!3759 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))) ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12013)))))

(declare-fun b!2123567 () Bool)

(declare-fun e!1353000 () Bool)

(assert (=> b!2123567 (= e!1353005 e!1353000)))

(declare-fun b!2123568 () Bool)

(declare-fun e!1352999 () Bool)

(assert (=> b!2123568 (= e!1352999 e!1352998)))

(declare-fun b!2123569 () Bool)

(declare-fun e!1352990 () Bool)

(declare-fun setRes!15010 () Bool)

(assert (=> b!2123569 (= e!1352990 setRes!15010)))

(declare-fun condSetEmpty!15010 () Bool)

(assert (=> b!2123569 (= condSetEmpty!15010 (= (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795247)))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2123570 () Bool)

(declare-fun lt!795254 () MutLongMap!2466)

(assert (=> b!2123570 (= e!1352994 (and e!1352997 ((_ is LongMap!2466) lt!795254)))))

(assert (=> b!2123570 (= lt!795254 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))

(declare-fun b!2123571 () Bool)

(declare-fun e!1352995 () Bool)

(declare-fun e!1353003 () Bool)

(assert (=> b!2123571 (= e!1352995 e!1353003)))

(declare-fun b!2123572 () Bool)

(declare-fun e!1353001 () Bool)

(assert (=> b!2123572 (= e!1353001 e!1352996)))

(declare-fun b!2123573 () Bool)

(declare-fun e!1353004 () Bool)

(assert (=> b!2123573 (= e!1353004 e!1352990)))

(declare-fun mapIsEmpty!12012 () Bool)

(declare-fun mapRes!12012 () Bool)

(assert (=> mapIsEmpty!12012 mapRes!12012))

(declare-fun b!2123574 () Bool)

(assert (=> b!2123574 (= e!1353000 e!1352995)))

(declare-fun b!2123575 () Bool)

(declare-fun e!1352993 () Bool)

(assert (=> b!2123575 (= e!1352993 e!1352991)))

(declare-fun b!2123521 () Bool)

(declare-fun e!1352992 () Bool)

(assert (=> b!2123521 (and e!1353004 e!1352993 e!1352992)))

(declare-fun b!2123576 () Bool)

(assert (=> b!2123576 (= e!1352992 e!1352999)))

(declare-fun b!2123577 () Bool)

(assert (=> b!2123577 (= e!1353003 mapRes!12012)))

(declare-fun condMapEmpty!12012 () Bool)

(declare-fun mapDefault!12012 () List!23819)

(assert (=> b!2123577 (= condMapEmpty!12012 (= (arr!3757 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))) ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12012)))))

(declare-fun mapNonEmpty!12012 () Bool)

(assert (=> mapNonEmpty!12012 (= mapRes!12012 true)))

(declare-fun mapRest!12012 () (Array (_ BitVec 32) List!23819))

(declare-fun mapKey!12012 () (_ BitVec 32))

(declare-fun mapValue!12012 () List!23819)

(assert (=> mapNonEmpty!12012 (= (arr!3757 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))) (store mapRest!12012 mapKey!12012 mapValue!12012))))

(declare-fun setIsEmpty!15010 () Bool)

(assert (=> setIsEmpty!15010 setRes!15010))

(declare-fun mapIsEmpty!12013 () Bool)

(assert (=> mapIsEmpty!12013 mapRes!12013))

(declare-fun mapNonEmpty!12013 () Bool)

(assert (=> mapNonEmpty!12013 (= mapRes!12013 true)))

(declare-fun mapValue!12013 () List!23820)

(declare-fun mapKey!12013 () (_ BitVec 32))

(declare-fun mapRest!12013 () (Array (_ BitVec 32) List!23820))

(assert (=> mapNonEmpty!12013 (= (arr!3759 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))) (store mapRest!12013 mapKey!12013 mapValue!12013))))

(declare-fun b!2123578 () Bool)

(assert (=> b!2123578 (= e!1353002 e!1353001)))

(declare-fun setNonEmpty!15010 () Bool)

(assert (=> setNonEmpty!15010 (= setRes!15010 true)))

(declare-fun setElem!15010 () Context!2482)

(declare-fun setRest!15010 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15010 (= (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795247)))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15010 true) setRest!15010))))

(assert (= (and b!2123569 condSetEmpty!15010) setIsEmpty!15010))

(assert (= (and b!2123569 (not condSetEmpty!15010)) setNonEmpty!15010))

(assert (= b!2123573 b!2123569))

(assert (= (and b!2123521 ((_ is Cons!23738) (_2!13622 (_1!13623 lt!795247)))) b!2123573))

(assert (= (and b!2123566 condMapEmpty!12013) mapIsEmpty!12013))

(assert (= (and b!2123566 (not condMapEmpty!12013)) mapNonEmpty!12013))

(assert (= b!2123572 b!2123566))

(assert (= b!2123578 b!2123572))

(assert (= b!2123564 b!2123578))

(assert (= (and b!2123570 ((_ is LongMap!2466) (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))) b!2123564))

(assert (= b!2123565 b!2123570))

(assert (= (and b!2123575 ((_ is HashMap!2379) (cache!2760 (_2!13623 lt!795247)))) b!2123565))

(assert (= b!2123521 b!2123575))

(assert (= (and b!2123577 condMapEmpty!12012) mapIsEmpty!12012))

(assert (= (and b!2123577 (not condMapEmpty!12012)) mapNonEmpty!12012))

(assert (= b!2123571 b!2123577))

(assert (= b!2123574 b!2123571))

(assert (= b!2123567 b!2123574))

(assert (= (and b!2123563 ((_ is LongMap!2465) (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))) b!2123567))

(assert (= b!2123568 b!2123563))

(assert (= (and b!2123576 ((_ is HashMap!2380) (cache!2761 (_3!1938 lt!795247)))) b!2123568))

(assert (= b!2123521 b!2123576))

(declare-fun order!14709 () Int)

(declare-fun lambda!78654 () Int)

(declare-fun order!14711 () Int)

(declare-fun dynLambda!11339 (Int Int) Int)

(declare-fun dynLambda!11340 (Int Int) Int)

(assert (=> b!2123572 (< (dynLambda!11339 order!14709 (defaultEntry!2831 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))) (dynLambda!11340 order!14711 lambda!78654))))

(declare-fun order!14713 () Int)

(declare-fun dynLambda!11341 (Int Int) Int)

(assert (=> b!2123565 (< (dynLambda!11341 order!14713 (defaultValue!2541 (cache!2760 (_2!13623 lt!795247)))) (dynLambda!11340 order!14711 lambda!78654))))

(declare-fun order!14715 () Int)

(declare-fun dynLambda!11342 (Int Int) Int)

(assert (=> b!2123571 (< (dynLambda!11342 order!14715 (defaultEntry!2830 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))) (dynLambda!11340 order!14711 lambda!78654))))

(declare-fun order!14717 () Int)

(declare-fun dynLambda!11343 (Int Int) Int)

(assert (=> b!2123568 (< (dynLambda!11343 order!14717 (defaultValue!2542 (cache!2761 (_3!1938 lt!795247)))) (dynLambda!11340 order!14711 lambda!78654))))

(declare-fun m!2576305 () Bool)

(assert (=> mapNonEmpty!12012 m!2576305))

(declare-fun m!2576307 () Bool)

(assert (=> mapNonEmpty!12013 m!2576307))

(declare-fun bs!442806 () Bool)

(declare-fun b!2123497 () Bool)

(assert (= bs!442806 (and b!2123497 b!2123521)))

(declare-fun lambda!78655 () Int)

(assert (=> bs!442806 (not (= lambda!78655 lambda!78654))))

(assert (=> b!2123497 true))

(declare-fun res!919405 () Bool)

(declare-fun e!1352938 () Bool)

(assert (=> start!207156 (=> (not res!919405) (not e!1352938))))

(declare-fun input!5507 () BalanceConc!15380)

(declare-fun totalInput!886 () BalanceConc!15380)

(declare-fun isSuffix!621 (List!23821 List!23821) Bool)

(declare-fun list!9532 (BalanceConc!15380) List!23821)

(assert (=> start!207156 (= res!919405 (isSuffix!621 (list!9532 input!5507) (list!9532 totalInput!886)))))

(assert (=> start!207156 e!1352938))

(declare-datatypes ((Hashable!2381 0))(
  ( (HashableExt!2380 (__x!15577 Int)) )
))
(declare-datatypes ((tuple3!2938 0))(
  ( (tuple3!2939 (_1!13624 (InoxSet Context!2482)) (_2!13624 Int) (_3!1939 Int)) )
))
(declare-datatypes ((tuple2!23370 0))(
  ( (tuple2!23371 (_1!13625 tuple3!2938) (_2!13625 Int)) )
))
(declare-datatypes ((List!23823 0))(
  ( (Nil!23739) (Cons!23739 (h!29140 tuple2!23370) (t!196342 List!23823)) )
))
(declare-datatypes ((array!8477 0))(
  ( (array!8478 (arr!3760 (Array (_ BitVec 32) List!23823)) (size!18555 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4934 0))(
  ( (LongMapFixedSize!4935 (defaultEntry!2832 Int) (mask!6618 (_ BitVec 32)) (extraKeys!2715 (_ BitVec 32)) (zeroValue!2725 List!23823) (minValue!2725 List!23823) (_size!4985 (_ BitVec 32)) (_keys!2764 array!8473) (_values!2747 array!8477) (_vacant!2528 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9693 0))(
  ( (Cell!9694 (v!28268 LongMapFixedSize!4934)) )
))
(declare-datatypes ((MutLongMap!2467 0))(
  ( (LongMap!2467 (underlying!5129 Cell!9693)) (MutLongMapExt!2466 (__x!15578 Int)) )
))
(declare-datatypes ((Cell!9695 0))(
  ( (Cell!9696 (v!28269 MutLongMap!2467)) )
))
(declare-datatypes ((MutableMap!2381 0))(
  ( (MutableMapExt!2380 (__x!15579 Int)) (HashMap!2381 (underlying!5130 Cell!9695) (hashF!4304 Hashable!2381) (_size!4986 (_ BitVec 32)) (defaultValue!2543 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!596 0))(
  ( (CacheFurthestNullable!597 (cache!2762 MutableMap!2381) (totalInput!2921 BalanceConc!15380)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!596)

(declare-fun e!1352927 () Bool)

(declare-fun inv!31329 (CacheFurthestNullable!596) Bool)

(assert (=> start!207156 (and (inv!31329 cacheFurthestNullable!130) e!1352927)))

(declare-fun condSetEmpty!15007 () Bool)

(declare-fun z!3883 () (InoxSet Context!2482))

(assert (=> start!207156 (= condSetEmpty!15007 (= z!3883 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15007 () Bool)

(assert (=> start!207156 setRes!15007))

(declare-fun e!1352939 () Bool)

(declare-fun inv!31330 (BalanceConc!15380) Bool)

(assert (=> start!207156 (and (inv!31330 input!5507) e!1352939)))

(declare-fun cacheDown!1110 () CacheDown!1636)

(declare-fun e!1352942 () Bool)

(declare-fun inv!31331 (CacheDown!1636) Bool)

(assert (=> start!207156 (and (inv!31331 cacheDown!1110) e!1352942)))

(declare-fun cacheUp!991 () CacheUp!1650)

(declare-fun e!1352945 () Bool)

(declare-fun inv!31332 (CacheUp!1650) Bool)

(assert (=> start!207156 (and (inv!31332 cacheUp!991) e!1352945)))

(declare-fun e!1352948 () Bool)

(assert (=> start!207156 (and (inv!31330 totalInput!886) e!1352948)))

(declare-fun b!2123494 () Bool)

(declare-fun e!1352933 () Bool)

(assert (=> b!2123494 (= e!1352945 e!1352933)))

(declare-fun e!1352934 () Bool)

(declare-fun e!1352936 () Bool)

(assert (=> b!2123495 (= e!1352934 (and e!1352936 tp!650508))))

(declare-fun setIsEmpty!15007 () Bool)

(assert (=> setIsEmpty!15007 setRes!15007))

(declare-fun e!1352950 () Bool)

(declare-fun e!1352955 () Bool)

(declare-fun tp!650510 () Bool)

(declare-fun tp!650507 () Bool)

(declare-fun array_inv!2688 (array!8473) Bool)

(declare-fun array_inv!2689 (array!8471) Bool)

(assert (=> b!2123496 (= e!1352955 (and tp!650521 tp!650507 tp!650510 (array_inv!2688 (_keys!2762 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))) (array_inv!2689 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))) e!1352950))))

(declare-fun e!1352944 () Bool)

(declare-fun forall!4868 (List!23822 Int) Bool)

(assert (=> b!2123497 (= e!1352944 (forall!4868 (_2!13622 (_1!13623 lt!795247)) lambda!78655))))

(declare-fun b!2123498 () Bool)

(declare-fun e!1352941 () Bool)

(declare-fun e!1352928 () Bool)

(assert (=> b!2123498 (= e!1352941 e!1352928)))

(declare-fun b!2123499 () Bool)

(assert (=> b!2123499 (= e!1352928 e!1352955)))

(declare-fun b!2123500 () Bool)

(declare-fun tp!650506 () Bool)

(declare-fun inv!31333 (Conc!7809) Bool)

(assert (=> b!2123500 (= e!1352939 (and (inv!31333 (c!339823 input!5507)) tp!650506))))

(declare-fun mapIsEmpty!12005 () Bool)

(declare-fun mapRes!12005 () Bool)

(assert (=> mapIsEmpty!12005 mapRes!12005))

(declare-fun b!2123501 () Bool)

(declare-fun e!1352931 () Bool)

(declare-fun e!1352926 () Bool)

(assert (=> b!2123501 (= e!1352931 e!1352926)))

(declare-fun b!2123502 () Bool)

(declare-fun res!919409 () Bool)

(declare-fun e!1352957 () Bool)

(assert (=> b!2123502 (=> res!919409 e!1352957)))

(declare-fun isBalanced!2450 (Conc!7809) Bool)

(assert (=> b!2123502 (= res!919409 (not (isBalanced!2450 (c!339823 input!5507))))))

(declare-fun b!2123503 () Bool)

(declare-fun lt!795240 () Int)

(declare-fun lt!795245 () Int)

(assert (=> b!2123503 (= e!1352957 (and (<= 0 lt!795240) (<= lt!795240 lt!795245)))))

(declare-fun e!1352937 () Bool)

(declare-fun e!1352943 () Bool)

(declare-fun tp!650511 () Bool)

(declare-fun tp!650513 () Bool)

(declare-fun array_inv!2690 (array!8475) Bool)

(assert (=> b!2123504 (= e!1352937 (and tp!650516 tp!650511 tp!650513 (array_inv!2688 (_keys!2763 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))) (array_inv!2690 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))) e!1352943))))

(declare-fun b!2123505 () Bool)

(declare-fun res!919403 () Bool)

(assert (=> b!2123505 (=> (not res!919403) (not e!1352938))))

(declare-fun valid!1937 (CacheFurthestNullable!596) Bool)

(assert (=> b!2123505 (= res!919403 (valid!1937 cacheFurthestNullable!130))))

(declare-fun b!2123506 () Bool)

(declare-fun e!1352935 () Bool)

(declare-fun tp!650524 () Bool)

(assert (=> b!2123506 (= e!1352935 tp!650524)))

(declare-fun b!2123507 () Bool)

(declare-fun e!1352932 () Bool)

(assert (=> b!2123507 (= e!1352942 e!1352932)))

(declare-fun b!2123508 () Bool)

(declare-fun e!1352951 () Int)

(declare-fun lt!795246 () Int)

(assert (=> b!2123508 (= e!1352951 (- lt!795246 1))))

(declare-fun b!2123509 () Bool)

(declare-fun e!1352947 () Bool)

(declare-fun lt!795248 () MutLongMap!2466)

(assert (=> b!2123509 (= e!1352947 (and e!1352931 ((_ is LongMap!2466) lt!795248)))))

(assert (=> b!2123509 (= lt!795248 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))

(declare-fun b!2123510 () Bool)

(declare-fun tp!650526 () Bool)

(assert (=> b!2123510 (= e!1352943 (and tp!650526 mapRes!12005))))

(declare-fun condMapEmpty!12005 () Bool)

(declare-fun mapDefault!12007 () List!23820)

(assert (=> b!2123510 (= condMapEmpty!12005 (= (arr!3759 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12007)))))

(declare-fun tp!650523 () Bool)

(declare-fun setNonEmpty!15007 () Bool)

(declare-fun setElem!15007 () Context!2482)

(declare-fun inv!31334 (Context!2482) Bool)

(assert (=> setNonEmpty!15007 (= setRes!15007 (and tp!650523 (inv!31334 setElem!15007) e!1352935))))

(declare-fun setRest!15007 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15007 (= z!3883 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15007 true) setRest!15007))))

(declare-fun b!2123511 () Bool)

(declare-fun e!1352953 () Bool)

(declare-fun e!1352952 () Bool)

(assert (=> b!2123511 (= e!1352953 e!1352952)))

(declare-fun b!2123512 () Bool)

(declare-fun e!1352949 () Bool)

(assert (=> b!2123512 (= e!1352952 e!1352949)))

(declare-fun b!2123513 () Bool)

(declare-fun e!1352946 () Bool)

(declare-fun tp!650505 () Bool)

(assert (=> b!2123513 (= e!1352946 (and (inv!31333 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) tp!650505))))

(declare-fun mapIsEmpty!12006 () Bool)

(declare-fun mapRes!12006 () Bool)

(assert (=> mapIsEmpty!12006 mapRes!12006))

(declare-fun mapNonEmpty!12005 () Bool)

(declare-fun tp!650517 () Bool)

(declare-fun tp!650504 () Bool)

(assert (=> mapNonEmpty!12005 (= mapRes!12006 (and tp!650517 tp!650504))))

(declare-fun mapRest!12005 () (Array (_ BitVec 32) List!23819))

(declare-fun mapKey!12005 () (_ BitVec 32))

(declare-fun mapValue!12006 () List!23819)

(assert (=> mapNonEmpty!12005 (= (arr!3757 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))) (store mapRest!12005 mapKey!12005 mapValue!12006))))

(declare-fun b!2123514 () Bool)

(declare-fun e!1352954 () Bool)

(declare-fun lt!795242 () MutLongMap!2465)

(assert (=> b!2123514 (= e!1352954 (and e!1352941 ((_ is LongMap!2465) lt!795242)))))

(assert (=> b!2123514 (= lt!795242 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))

(declare-fun b!2123515 () Bool)

(declare-fun tp!650525 () Bool)

(assert (=> b!2123515 (= e!1352950 (and tp!650525 mapRes!12006))))

(declare-fun condMapEmpty!12006 () Bool)

(declare-fun mapDefault!12005 () List!23819)

(assert (=> b!2123515 (= condMapEmpty!12006 (= (arr!3757 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12005)))))

(declare-fun b!2123516 () Bool)

(declare-fun res!919408 () Bool)

(assert (=> b!2123516 (=> (not res!919408) (not e!1352938))))

(declare-fun valid!1938 (CacheDown!1636) Bool)

(assert (=> b!2123516 (= res!919408 (valid!1938 cacheDown!1110))))

(declare-fun mapNonEmpty!12006 () Bool)

(declare-fun mapRes!12007 () Bool)

(declare-fun tp!650520 () Bool)

(declare-fun tp!650528 () Bool)

(assert (=> mapNonEmpty!12006 (= mapRes!12007 (and tp!650520 tp!650528))))

(declare-fun mapValue!12007 () List!23823)

(declare-fun mapRest!12007 () (Array (_ BitVec 32) List!23823))

(declare-fun mapKey!12006 () (_ BitVec 32))

(assert (=> mapNonEmpty!12006 (= (arr!3760 (_values!2747 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))) (store mapRest!12007 mapKey!12006 mapValue!12007))))

(declare-fun b!2123517 () Bool)

(assert (=> b!2123517 (= e!1352926 e!1352937)))

(declare-fun b!2123518 () Bool)

(assert (=> b!2123518 (= e!1352927 (and e!1352934 (inv!31330 (totalInput!2921 cacheFurthestNullable!130)) e!1352946))))

(declare-fun tp!650514 () Bool)

(declare-fun tp!650527 () Bool)

(declare-fun e!1352940 () Bool)

(declare-fun array_inv!2691 (array!8477) Bool)

(assert (=> b!2123519 (= e!1352949 (and tp!650503 tp!650527 tp!650514 (array_inv!2688 (_keys!2764 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))) (array_inv!2691 (_values!2747 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))) e!1352940))))

(declare-fun b!2123520 () Bool)

(declare-fun lt!795243 () MutLongMap!2467)

(assert (=> b!2123520 (= e!1352936 (and e!1352953 ((_ is LongMap!2467) lt!795243)))))

(assert (=> b!2123520 (= lt!795243 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))

(declare-fun mapIsEmpty!12007 () Bool)

(assert (=> mapIsEmpty!12007 mapRes!12007))

(assert (=> b!2123521 (= e!1352938 (not e!1352957))))

(declare-fun res!919406 () Bool)

(assert (=> b!2123521 (=> res!919406 e!1352957)))

(assert (=> b!2123521 (= res!919406 (< lt!795240 0))))

(declare-fun lt!795241 () Int)

(declare-datatypes ((Unit!37609 0))(
  ( (Unit!37610) )
))
(declare-datatypes ((tuple2!23372 0))(
  ( (tuple2!23373 (_1!13626 Unit!37609) (_2!13626 CacheFurthestNullable!596)) )
))
(declare-fun lt!795244 () tuple2!23372)

(declare-fun fillUpCache!9 (List!23822 BalanceConc!15380 Int Int Int CacheFurthestNullable!596) tuple2!23372)

(assert (=> b!2123521 (= lt!795244 (fillUpCache!9 (_2!13622 (_1!13623 lt!795247)) totalInput!886 lt!795241 (_1!13622 (_1!13623 lt!795247)) 0 cacheFurthestNullable!130))))

(assert (=> b!2123521 e!1352944))

(declare-fun res!919410 () Bool)

(assert (=> b!2123521 (=> (not res!919410) (not e!1352944))))

(assert (=> b!2123521 (= res!919410 (forall!4868 (_2!13622 (_1!13623 lt!795247)) lambda!78654))))

(assert (=> b!2123521 (= lt!795240 (+ 1 (- (_1!13622 (_1!13623 lt!795247)) lt!795246)))))

(declare-fun furthestNullablePositionStackMem!12 ((InoxSet Context!2482) Int BalanceConc!15380 Int Int List!23822 CacheUp!1650 CacheDown!1636 CacheFurthestNullable!596) tuple3!2936)

(assert (=> b!2123521 (= lt!795247 (furthestNullablePositionStackMem!12 z!3883 lt!795246 totalInput!886 lt!795241 e!1352951 Nil!23738 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339821 () Bool)

(declare-fun nullableZipper!67 ((InoxSet Context!2482)) Bool)

(assert (=> b!2123521 (= c!339821 (nullableZipper!67 z!3883))))

(assert (=> b!2123521 (= lt!795246 (- lt!795241 lt!795245))))

(declare-fun size!18556 (BalanceConc!15380) Int)

(assert (=> b!2123521 (= lt!795245 (size!18556 input!5507))))

(assert (=> b!2123521 (= lt!795241 (size!18556 totalInput!886))))

(declare-fun b!2123522 () Bool)

(declare-fun tp!650519 () Bool)

(assert (=> b!2123522 (= e!1352940 (and tp!650519 mapRes!12007))))

(declare-fun condMapEmpty!12007 () Bool)

(declare-fun mapDefault!12006 () List!23823)

(assert (=> b!2123522 (= condMapEmpty!12007 (= (arr!3760 (_values!2747 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23823)) mapDefault!12006)))))

(declare-fun b!2123523 () Bool)

(declare-fun res!919407 () Bool)

(assert (=> b!2123523 (=> (not res!919407) (not e!1352938))))

(declare-fun valid!1939 (CacheUp!1650) Bool)

(assert (=> b!2123523 (= res!919407 (valid!1939 cacheUp!991))))

(assert (=> b!2123524 (= e!1352933 (and e!1352947 tp!650509))))

(assert (=> b!2123525 (= e!1352932 (and e!1352954 tp!650515))))

(declare-fun b!2123526 () Bool)

(declare-fun tp!650518 () Bool)

(assert (=> b!2123526 (= e!1352948 (and (inv!31333 (c!339823 totalInput!886)) tp!650518))))

(declare-fun mapNonEmpty!12007 () Bool)

(declare-fun tp!650512 () Bool)

(declare-fun tp!650522 () Bool)

(assert (=> mapNonEmpty!12007 (= mapRes!12005 (and tp!650512 tp!650522))))

(declare-fun mapKey!12007 () (_ BitVec 32))

(declare-fun mapRest!12006 () (Array (_ BitVec 32) List!23820))

(declare-fun mapValue!12005 () List!23820)

(assert (=> mapNonEmpty!12007 (= (arr!3759 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))) (store mapRest!12006 mapKey!12007 mapValue!12005))))

(declare-fun b!2123527 () Bool)

(declare-fun res!919404 () Bool)

(assert (=> b!2123527 (=> (not res!919404) (not e!1352938))))

(assert (=> b!2123527 (= res!919404 (= (totalInput!2921 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2123528 () Bool)

(assert (=> b!2123528 (= e!1352951 (- 1))))

(assert (= (and start!207156 res!919405) b!2123523))

(assert (= (and b!2123523 res!919407) b!2123516))

(assert (= (and b!2123516 res!919408) b!2123505))

(assert (= (and b!2123505 res!919403) b!2123527))

(assert (= (and b!2123527 res!919404) b!2123521))

(assert (= (and b!2123521 c!339821) b!2123508))

(assert (= (and b!2123521 (not c!339821)) b!2123528))

(assert (= (and b!2123521 res!919410) b!2123497))

(assert (= (and b!2123521 (not res!919406)) b!2123502))

(assert (= (and b!2123502 (not res!919409)) b!2123503))

(assert (= (and b!2123522 condMapEmpty!12007) mapIsEmpty!12007))

(assert (= (and b!2123522 (not condMapEmpty!12007)) mapNonEmpty!12006))

(assert (= b!2123519 b!2123522))

(assert (= b!2123512 b!2123519))

(assert (= b!2123511 b!2123512))

(assert (= (and b!2123520 ((_ is LongMap!2467) (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))) b!2123511))

(assert (= b!2123495 b!2123520))

(assert (= (and b!2123518 ((_ is HashMap!2381) (cache!2762 cacheFurthestNullable!130))) b!2123495))

(assert (= b!2123518 b!2123513))

(assert (= start!207156 b!2123518))

(assert (= (and start!207156 condSetEmpty!15007) setIsEmpty!15007))

(assert (= (and start!207156 (not condSetEmpty!15007)) setNonEmpty!15007))

(assert (= setNonEmpty!15007 b!2123506))

(assert (= start!207156 b!2123500))

(assert (= (and b!2123515 condMapEmpty!12006) mapIsEmpty!12006))

(assert (= (and b!2123515 (not condMapEmpty!12006)) mapNonEmpty!12005))

(assert (= b!2123496 b!2123515))

(assert (= b!2123499 b!2123496))

(assert (= b!2123498 b!2123499))

(assert (= (and b!2123514 ((_ is LongMap!2465) (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))) b!2123498))

(assert (= b!2123525 b!2123514))

(assert (= (and b!2123507 ((_ is HashMap!2380) (cache!2761 cacheDown!1110))) b!2123525))

(assert (= start!207156 b!2123507))

(assert (= (and b!2123510 condMapEmpty!12005) mapIsEmpty!12005))

(assert (= (and b!2123510 (not condMapEmpty!12005)) mapNonEmpty!12007))

(assert (= b!2123504 b!2123510))

(assert (= b!2123517 b!2123504))

(assert (= b!2123501 b!2123517))

(assert (= (and b!2123509 ((_ is LongMap!2466) (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))) b!2123501))

(assert (= b!2123524 b!2123509))

(assert (= (and b!2123494 ((_ is HashMap!2379) (cache!2760 cacheUp!991))) b!2123524))

(assert (= start!207156 b!2123494))

(assert (= start!207156 b!2123526))

(declare-fun m!2576309 () Bool)

(assert (=> b!2123497 m!2576309))

(declare-fun m!2576311 () Bool)

(assert (=> b!2123505 m!2576311))

(declare-fun m!2576313 () Bool)

(assert (=> b!2123500 m!2576313))

(declare-fun m!2576315 () Bool)

(assert (=> b!2123496 m!2576315))

(declare-fun m!2576317 () Bool)

(assert (=> b!2123496 m!2576317))

(declare-fun m!2576319 () Bool)

(assert (=> b!2123518 m!2576319))

(declare-fun m!2576321 () Bool)

(assert (=> b!2123516 m!2576321))

(declare-fun m!2576323 () Bool)

(assert (=> mapNonEmpty!12005 m!2576323))

(declare-fun m!2576325 () Bool)

(assert (=> b!2123504 m!2576325))

(declare-fun m!2576327 () Bool)

(assert (=> b!2123504 m!2576327))

(declare-fun m!2576329 () Bool)

(assert (=> b!2123519 m!2576329))

(declare-fun m!2576331 () Bool)

(assert (=> b!2123519 m!2576331))

(declare-fun m!2576333 () Bool)

(assert (=> setNonEmpty!15007 m!2576333))

(declare-fun m!2576335 () Bool)

(assert (=> mapNonEmpty!12006 m!2576335))

(declare-fun m!2576337 () Bool)

(assert (=> b!2123523 m!2576337))

(declare-fun m!2576339 () Bool)

(assert (=> mapNonEmpty!12007 m!2576339))

(declare-fun m!2576341 () Bool)

(assert (=> b!2123521 m!2576341))

(declare-fun m!2576343 () Bool)

(assert (=> b!2123521 m!2576343))

(declare-fun m!2576345 () Bool)

(assert (=> b!2123521 m!2576345))

(declare-fun m!2576347 () Bool)

(assert (=> b!2123521 m!2576347))

(declare-fun m!2576349 () Bool)

(assert (=> b!2123521 m!2576349))

(declare-fun m!2576351 () Bool)

(assert (=> b!2123521 m!2576351))

(declare-fun m!2576353 () Bool)

(assert (=> b!2123513 m!2576353))

(declare-fun m!2576355 () Bool)

(assert (=> b!2123526 m!2576355))

(declare-fun m!2576357 () Bool)

(assert (=> b!2123502 m!2576357))

(declare-fun m!2576359 () Bool)

(assert (=> start!207156 m!2576359))

(declare-fun m!2576361 () Bool)

(assert (=> start!207156 m!2576361))

(declare-fun m!2576363 () Bool)

(assert (=> start!207156 m!2576363))

(declare-fun m!2576365 () Bool)

(assert (=> start!207156 m!2576365))

(declare-fun m!2576367 () Bool)

(assert (=> start!207156 m!2576367))

(declare-fun m!2576369 () Bool)

(assert (=> start!207156 m!2576369))

(assert (=> start!207156 m!2576365))

(assert (=> start!207156 m!2576359))

(declare-fun m!2576371 () Bool)

(assert (=> start!207156 m!2576371))

(declare-fun m!2576373 () Bool)

(assert (=> start!207156 m!2576373))

(check-sat (not b!2123504) (not b!2123502) (not b_next!62417) (not b!2123566) (not b!2123505) (not mapNonEmpty!12012) b_and!171295 b_and!171297 (not setNonEmpty!15007) b_and!171299 (not mapNonEmpty!12006) (not b!2123519) (not mapNonEmpty!12005) (not b!2123518) (not b!2123521) (not b!2123516) (not b_next!62419) b_and!171289 (not b!2123497) (not b!2123573) (not setNonEmpty!15010) (not start!207156) (not b!2123500) (not b!2123515) (not b!2123572) (not b!2123506) (not b!2123510) (not mapNonEmpty!12013) (not b!2123571) (not mapNonEmpty!12007) b_and!171293 b_and!171291 (not b_next!62423) (not b!2123496) (not b!2123526) (not b!2123513) (not b_next!62415) (not b_next!62413) (not b!2123523) (not b!2123577) (not b_next!62421) (not b!2123522))
(check-sat (not b_next!62417) (not b_next!62419) b_and!171289 (not b_next!62423) b_and!171295 b_and!171297 (not b_next!62421) b_and!171299 b_and!171293 b_and!171291 (not b_next!62415) (not b_next!62413))
(get-model)

(declare-fun d!643585 () Bool)

(declare-fun validCacheMapFurthestNullable!96 (MutableMap!2381 BalanceConc!15380) Bool)

(assert (=> d!643585 (= (valid!1937 cacheFurthestNullable!130) (validCacheMapFurthestNullable!96 (cache!2762 cacheFurthestNullable!130) (totalInput!2921 cacheFurthestNullable!130)))))

(declare-fun bs!442807 () Bool)

(assert (= bs!442807 d!643585))

(declare-fun m!2576375 () Bool)

(assert (=> bs!442807 m!2576375))

(assert (=> b!2123505 d!643585))

(declare-fun d!643587 () Bool)

(declare-fun lambda!78658 () Int)

(declare-fun exists!694 ((InoxSet Context!2482) Int) Bool)

(assert (=> d!643587 (= (nullableZipper!67 z!3883) (exists!694 z!3883 lambda!78658))))

(declare-fun bs!442808 () Bool)

(assert (= bs!442808 d!643587))

(declare-fun m!2576377 () Bool)

(assert (=> bs!442808 m!2576377))

(assert (=> b!2123521 d!643587))

(declare-fun d!643589 () Bool)

(declare-fun lt!795257 () Int)

(declare-fun size!18557 (List!23821) Int)

(assert (=> d!643589 (= lt!795257 (size!18557 (list!9532 totalInput!886)))))

(declare-fun size!18558 (Conc!7809) Int)

(assert (=> d!643589 (= lt!795257 (size!18558 (c!339823 totalInput!886)))))

(assert (=> d!643589 (= (size!18556 totalInput!886) lt!795257)))

(declare-fun bs!442809 () Bool)

(assert (= bs!442809 d!643589))

(assert (=> bs!442809 m!2576359))

(assert (=> bs!442809 m!2576359))

(declare-fun m!2576379 () Bool)

(assert (=> bs!442809 m!2576379))

(declare-fun m!2576381 () Bool)

(assert (=> bs!442809 m!2576381))

(assert (=> b!2123521 d!643589))

(declare-fun d!643591 () Bool)

(declare-fun e!1353012 () Bool)

(assert (=> d!643591 e!1353012))

(declare-fun res!919415 () Bool)

(assert (=> d!643591 (=> (not res!919415) (not e!1353012))))

(declare-fun lt!795266 () tuple2!23372)

(assert (=> d!643591 (= res!919415 (valid!1937 (_2!13626 lt!795266)))))

(declare-fun e!1353013 () tuple2!23372)

(assert (=> d!643591 (= lt!795266 e!1353013)))

(declare-fun c!339831 () Bool)

(assert (=> d!643591 (= c!339831 ((_ is Nil!23738) (_2!13622 (_1!13623 lt!795247))))))

(assert (=> d!643591 (valid!1937 cacheFurthestNullable!130)))

(assert (=> d!643591 (= (fillUpCache!9 (_2!13622 (_1!13623 lt!795247)) totalInput!886 lt!795241 (_1!13622 (_1!13623 lt!795247)) 0 cacheFurthestNullable!130) lt!795266)))

(declare-fun b!2123591 () Bool)

(assert (=> b!2123591 (= e!1353012 (= (totalInput!2921 (_2!13626 lt!795266)) totalInput!886))))

(declare-fun lt!795269 () tuple2!23372)

(declare-fun b!2123592 () Bool)

(declare-fun update!88 (CacheFurthestNullable!596 (InoxSet Context!2482) Int Int Int BalanceConc!15380) tuple2!23372)

(assert (=> b!2123592 (= lt!795269 (update!88 cacheFurthestNullable!130 (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (from!2630 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (lastNullablePos!317 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (_1!13622 (_1!13623 lt!795247)) totalInput!886))))

(declare-fun lt!795267 () Unit!37609)

(declare-fun lemmaInvariant!382 (CacheFurthestNullable!596) Unit!37609)

(assert (=> b!2123592 (= lt!795267 (lemmaInvariant!382 cacheFurthestNullable!130))))

(declare-fun e!1353014 () tuple2!23372)

(assert (=> b!2123592 (= e!1353014 (tuple2!23373 (_1!13626 lt!795269) (_2!13626 lt!795269)))))

(declare-fun b!2123593 () Bool)

(declare-fun Unit!37611 () Unit!37609)

(assert (=> b!2123593 (= e!1353014 (tuple2!23373 Unit!37611 cacheFurthestNullable!130))))

(declare-fun b!2123594 () Bool)

(declare-fun lt!795268 () tuple2!23372)

(assert (=> b!2123594 (= e!1353013 (tuple2!23373 (_1!13626 lt!795268) (_2!13626 lt!795268)))))

(declare-fun c!339830 () Bool)

(assert (=> b!2123594 (= c!339830 (and (> lt!795241 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(assert (=> b!2123594 (= lt!795268 (fillUpCache!9 (t!196341 (_2!13622 (_1!13623 lt!795247))) totalInput!886 lt!795241 (_1!13622 (_1!13623 lt!795247)) (+ 0 1) (_2!13626 e!1353014)))))

(declare-fun b!2123595 () Bool)

(declare-fun Unit!37612 () Unit!37609)

(assert (=> b!2123595 (= e!1353013 (tuple2!23373 Unit!37612 cacheFurthestNullable!130))))

(assert (= (and d!643591 c!339831) b!2123595))

(assert (= (and d!643591 (not c!339831)) b!2123594))

(assert (= (and b!2123594 c!339830) b!2123593))

(assert (= (and b!2123594 (not c!339830)) b!2123592))

(assert (= (and d!643591 res!919415) b!2123591))

(declare-fun m!2576383 () Bool)

(assert (=> d!643591 m!2576383))

(assert (=> d!643591 m!2576311))

(declare-fun m!2576385 () Bool)

(assert (=> b!2123592 m!2576385))

(declare-fun m!2576387 () Bool)

(assert (=> b!2123592 m!2576387))

(declare-fun m!2576389 () Bool)

(assert (=> b!2123594 m!2576389))

(assert (=> b!2123521 d!643591))

(declare-fun d!643593 () Bool)

(declare-fun res!919420 () Bool)

(declare-fun e!1353019 () Bool)

(assert (=> d!643593 (=> res!919420 e!1353019)))

(assert (=> d!643593 (= res!919420 ((_ is Nil!23738) (_2!13622 (_1!13623 lt!795247))))))

(assert (=> d!643593 (= (forall!4868 (_2!13622 (_1!13623 lt!795247)) lambda!78654) e!1353019)))

(declare-fun b!2123600 () Bool)

(declare-fun e!1353020 () Bool)

(assert (=> b!2123600 (= e!1353019 e!1353020)))

(declare-fun res!919421 () Bool)

(assert (=> b!2123600 (=> (not res!919421) (not e!1353020))))

(declare-fun dynLambda!11344 (Int StackFrame!54) Bool)

(assert (=> b!2123600 (= res!919421 (dynLambda!11344 lambda!78654 (h!29139 (_2!13622 (_1!13623 lt!795247)))))))

(declare-fun b!2123601 () Bool)

(assert (=> b!2123601 (= e!1353020 (forall!4868 (t!196341 (_2!13622 (_1!13623 lt!795247))) lambda!78654))))

(assert (= (and d!643593 (not res!919420)) b!2123600))

(assert (= (and b!2123600 res!919421) b!2123601))

(declare-fun b_lambda!70481 () Bool)

(assert (=> (not b_lambda!70481) (not b!2123600)))

(declare-fun m!2576391 () Bool)

(assert (=> b!2123600 m!2576391))

(declare-fun m!2576393 () Bool)

(assert (=> b!2123601 m!2576393))

(assert (=> b!2123521 d!643593))

(declare-fun bs!442810 () Bool)

(declare-fun d!643595 () Bool)

(assert (= bs!442810 (and d!643595 b!2123521)))

(declare-fun lambda!78673 () Int)

(declare-fun lt!795305 () Int)

(assert (=> bs!442810 (= (= lt!795305 (_1!13622 (_1!13623 lt!795247))) (= lambda!78673 lambda!78654))))

(declare-fun bs!442811 () Bool)

(assert (= bs!442811 (and d!643595 b!2123497)))

(assert (=> bs!442811 (not (= lambda!78673 lambda!78655))))

(assert (=> d!643595 true))

(declare-fun bs!442812 () Bool)

(declare-fun b!2123633 () Bool)

(assert (= bs!442812 (and b!2123633 b!2123521)))

(declare-fun lambda!78674 () Int)

(assert (=> bs!442812 (= (= e!1352951 (_1!13622 (_1!13623 lt!795247))) (= lambda!78674 lambda!78654))))

(declare-fun bs!442813 () Bool)

(assert (= bs!442813 (and b!2123633 b!2123497)))

(assert (=> bs!442813 (not (= lambda!78674 lambda!78655))))

(declare-fun bs!442814 () Bool)

(assert (= bs!442814 (and b!2123633 d!643595)))

(assert (=> bs!442814 (= (= e!1352951 lt!795305) (= lambda!78674 lambda!78673))))

(assert (=> b!2123633 true))

(declare-fun bs!442815 () Bool)

(declare-fun b!2123629 () Bool)

(assert (= bs!442815 (and b!2123629 b!2123521)))

(declare-fun lambda!78675 () Int)

(declare-fun lt!795311 () Int)

(assert (=> bs!442815 (= (= lt!795311 (_1!13622 (_1!13623 lt!795247))) (= lambda!78675 lambda!78654))))

(declare-fun bs!442816 () Bool)

(assert (= bs!442816 (and b!2123629 b!2123497)))

(assert (=> bs!442816 (not (= lambda!78675 lambda!78655))))

(declare-fun bs!442817 () Bool)

(assert (= bs!442817 (and b!2123629 d!643595)))

(assert (=> bs!442817 (= (= lt!795311 lt!795305) (= lambda!78675 lambda!78673))))

(declare-fun bs!442818 () Bool)

(assert (= bs!442818 (and b!2123629 b!2123633)))

(assert (=> bs!442818 (= (= lt!795311 e!1352951) (= lambda!78675 lambda!78674))))

(assert (=> b!2123629 true))

(declare-fun bs!442819 () Bool)

(declare-fun b!2123631 () Bool)

(assert (= bs!442819 (and b!2123631 b!2123497)))

(declare-fun lambda!78676 () Int)

(assert (=> bs!442819 (not (= lambda!78676 lambda!78655))))

(declare-fun bs!442820 () Bool)

(assert (= bs!442820 (and b!2123631 b!2123521)))

(declare-fun lt!795298 () tuple3!2936)

(assert (=> bs!442820 (= (= (_1!13622 (_1!13623 lt!795298)) (_1!13622 (_1!13623 lt!795247))) (= lambda!78676 lambda!78654))))

(declare-fun bs!442821 () Bool)

(assert (= bs!442821 (and b!2123631 b!2123633)))

(assert (=> bs!442821 (= (= (_1!13622 (_1!13623 lt!795298)) e!1352951) (= lambda!78676 lambda!78674))))

(declare-fun bs!442822 () Bool)

(assert (= bs!442822 (and b!2123631 d!643595)))

(assert (=> bs!442822 (= (= (_1!13622 (_1!13623 lt!795298)) lt!795305) (= lambda!78676 lambda!78673))))

(declare-fun bs!442823 () Bool)

(assert (= bs!442823 (and b!2123631 b!2123629)))

(assert (=> bs!442823 (= (= (_1!13622 (_1!13623 lt!795298)) lt!795311) (= lambda!78676 lambda!78675))))

(declare-fun b!2123643 () Bool)

(declare-fun e!1353044 () Bool)

(declare-fun e!1353051 () Bool)

(declare-fun lt!795312 () MutLongMap!2465)

(assert (=> b!2123643 (= e!1353044 (and e!1353051 ((_ is LongMap!2465) lt!795312)))))

(assert (=> b!2123643 (= lt!795312 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298)))))))

(declare-fun b!2123644 () Bool)

(declare-fun e!1353043 () Bool)

(declare-fun e!1353048 () Bool)

(assert (=> b!2123644 (= e!1353043 e!1353048)))

(declare-fun b!2123645 () Bool)

(declare-fun e!1353037 () Bool)

(declare-fun e!1353040 () Bool)

(assert (=> b!2123645 (= e!1353037 e!1353040)))

(declare-fun b!2123646 () Bool)

(declare-fun e!1353042 () Bool)

(declare-fun mapRes!12015 () Bool)

(assert (=> b!2123646 (= e!1353042 mapRes!12015)))

(declare-fun condMapEmpty!12015 () Bool)

(declare-fun mapDefault!12015 () List!23820)

(assert (=> b!2123646 (= condMapEmpty!12015 (= (arr!3759 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298)))))))) ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12015)))))

(declare-fun b!2123647 () Bool)

(declare-fun e!1353046 () Bool)

(assert (=> b!2123647 (= e!1353051 e!1353046)))

(declare-fun b!2123648 () Bool)

(declare-fun e!1353045 () Bool)

(assert (=> b!2123648 (= e!1353045 e!1353044)))

(declare-fun b!2123649 () Bool)

(declare-fun e!1353036 () Bool)

(declare-fun setRes!15011 () Bool)

(assert (=> b!2123649 (= e!1353036 setRes!15011)))

(declare-fun condSetEmpty!15011 () Bool)

(assert (=> b!2123649 (= condSetEmpty!15011 (= (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795298)))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2123650 () Bool)

(declare-fun lt!795313 () MutLongMap!2466)

(assert (=> b!2123650 (= e!1353040 (and e!1353043 ((_ is LongMap!2466) lt!795313)))))

(assert (=> b!2123650 (= lt!795313 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298)))))))

(declare-fun b!2123651 () Bool)

(declare-fun e!1353041 () Bool)

(declare-fun e!1353049 () Bool)

(assert (=> b!2123651 (= e!1353041 e!1353049)))

(declare-fun b!2123652 () Bool)

(declare-fun e!1353047 () Bool)

(assert (=> b!2123652 (= e!1353047 e!1353042)))

(declare-fun b!2123653 () Bool)

(declare-fun e!1353050 () Bool)

(assert (=> b!2123653 (= e!1353050 e!1353036)))

(declare-fun mapIsEmpty!12014 () Bool)

(declare-fun mapRes!12014 () Bool)

(assert (=> mapIsEmpty!12014 mapRes!12014))

(declare-fun b!2123654 () Bool)

(assert (=> b!2123654 (= e!1353046 e!1353041)))

(declare-fun b!2123655 () Bool)

(declare-fun e!1353039 () Bool)

(assert (=> b!2123655 (= e!1353039 e!1353037)))

(declare-fun e!1353038 () Bool)

(assert (=> b!2123631 (and e!1353050 e!1353039 e!1353038)))

(declare-fun b!2123656 () Bool)

(assert (=> b!2123656 (= e!1353038 e!1353045)))

(declare-fun b!2123657 () Bool)

(assert (=> b!2123657 (= e!1353049 mapRes!12014)))

(declare-fun condMapEmpty!12014 () Bool)

(declare-fun mapDefault!12014 () List!23819)

(assert (=> b!2123657 (= condMapEmpty!12014 (= (arr!3757 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298)))))))) ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12014)))))

(declare-fun mapNonEmpty!12014 () Bool)

(assert (=> mapNonEmpty!12014 (= mapRes!12014 true)))

(declare-fun mapKey!12014 () (_ BitVec 32))

(declare-fun mapRest!12014 () (Array (_ BitVec 32) List!23819))

(declare-fun mapValue!12014 () List!23819)

(assert (=> mapNonEmpty!12014 (= (arr!3757 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298)))))))) (store mapRest!12014 mapKey!12014 mapValue!12014))))

(declare-fun setIsEmpty!15011 () Bool)

(assert (=> setIsEmpty!15011 setRes!15011))

(declare-fun mapIsEmpty!12015 () Bool)

(assert (=> mapIsEmpty!12015 mapRes!12015))

(declare-fun mapNonEmpty!12015 () Bool)

(assert (=> mapNonEmpty!12015 (= mapRes!12015 true)))

(declare-fun mapKey!12015 () (_ BitVec 32))

(declare-fun mapValue!12015 () List!23820)

(declare-fun mapRest!12015 () (Array (_ BitVec 32) List!23820))

(assert (=> mapNonEmpty!12015 (= (arr!3759 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298)))))))) (store mapRest!12015 mapKey!12015 mapValue!12015))))

(declare-fun b!2123658 () Bool)

(assert (=> b!2123658 (= e!1353048 e!1353047)))

(declare-fun setNonEmpty!15011 () Bool)

(assert (=> setNonEmpty!15011 (= setRes!15011 true)))

(declare-fun setElem!15011 () Context!2482)

(declare-fun setRest!15011 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15011 (= (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795298)))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15011 true) setRest!15011))))

(assert (= (and b!2123649 condSetEmpty!15011) setIsEmpty!15011))

(assert (= (and b!2123649 (not condSetEmpty!15011)) setNonEmpty!15011))

(assert (= b!2123653 b!2123649))

(assert (= (and b!2123631 ((_ is Cons!23738) (_2!13622 (_1!13623 lt!795298)))) b!2123653))

(assert (= (and b!2123646 condMapEmpty!12015) mapIsEmpty!12015))

(assert (= (and b!2123646 (not condMapEmpty!12015)) mapNonEmpty!12015))

(assert (= b!2123652 b!2123646))

(assert (= b!2123658 b!2123652))

(assert (= b!2123644 b!2123658))

(assert (= (and b!2123650 ((_ is LongMap!2466) (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298)))))) b!2123644))

(assert (= b!2123645 b!2123650))

(assert (= (and b!2123655 ((_ is HashMap!2379) (cache!2760 (_2!13623 lt!795298)))) b!2123645))

(assert (= b!2123631 b!2123655))

(assert (= (and b!2123657 condMapEmpty!12014) mapIsEmpty!12014))

(assert (= (and b!2123657 (not condMapEmpty!12014)) mapNonEmpty!12014))

(assert (= b!2123651 b!2123657))

(assert (= b!2123654 b!2123651))

(assert (= b!2123647 b!2123654))

(assert (= (and b!2123643 ((_ is LongMap!2465) (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298)))))) b!2123647))

(assert (= b!2123648 b!2123643))

(assert (= (and b!2123656 ((_ is HashMap!2380) (cache!2761 (_3!1938 lt!795298)))) b!2123648))

(assert (= b!2123631 b!2123656))

(assert (=> b!2123652 (< (dynLambda!11339 order!14709 (defaultEntry!2831 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298)))))))) (dynLambda!11340 order!14711 lambda!78676))))

(assert (=> b!2123645 (< (dynLambda!11341 order!14713 (defaultValue!2541 (cache!2760 (_2!13623 lt!795298)))) (dynLambda!11340 order!14711 lambda!78676))))

(assert (=> b!2123651 (< (dynLambda!11342 order!14715 (defaultEntry!2830 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298)))))))) (dynLambda!11340 order!14711 lambda!78676))))

(assert (=> b!2123648 (< (dynLambda!11343 order!14717 (defaultValue!2542 (cache!2761 (_3!1938 lt!795298)))) (dynLambda!11340 order!14711 lambda!78676))))

(declare-fun m!2576395 () Bool)

(assert (=> mapNonEmpty!12014 m!2576395))

(declare-fun m!2576397 () Bool)

(assert (=> mapNonEmpty!12015 m!2576397))

(declare-fun bs!442824 () Bool)

(declare-fun b!2123639 () Bool)

(assert (= bs!442824 (and b!2123639 b!2123497)))

(declare-fun lambda!78677 () Int)

(assert (=> bs!442824 (= lambda!78677 lambda!78655)))

(declare-fun bs!442825 () Bool)

(assert (= bs!442825 (and b!2123639 b!2123521)))

(assert (=> bs!442825 (not (= lambda!78677 lambda!78654))))

(declare-fun bs!442826 () Bool)

(assert (= bs!442826 (and b!2123639 d!643595)))

(assert (=> bs!442826 (not (= lambda!78677 lambda!78673))))

(declare-fun bs!442827 () Bool)

(assert (= bs!442827 (and b!2123639 b!2123629)))

(assert (=> bs!442827 (not (= lambda!78677 lambda!78675))))

(declare-fun bs!442828 () Bool)

(assert (= bs!442828 (and b!2123639 b!2123633)))

(assert (=> bs!442828 (not (= lambda!78677 lambda!78674))))

(declare-fun bs!442829 () Bool)

(assert (= bs!442829 (and b!2123639 b!2123631)))

(assert (=> bs!442829 (not (= lambda!78677 lambda!78676))))

(assert (=> b!2123639 true))

(declare-fun b!2123628 () Bool)

(declare-fun e!1353035 () Int)

(assert (=> b!2123628 (= e!1353035 e!1352951)))

(declare-datatypes ((tuple3!2940 0))(
  ( (tuple3!2941 (_1!13627 (InoxSet Context!2482)) (_2!13627 CacheUp!1650) (_3!1940 CacheDown!1636)) )
))
(declare-fun lt!795301 () tuple3!2940)

(declare-fun lt!795308 () Int)

(declare-fun lt!795300 () tuple3!2936)

(assert (=> b!2123629 (= lt!795300 (furthestNullablePositionStackMem!12 (_1!13627 lt!795301) (+ lt!795246 1) totalInput!886 lt!795241 lt!795308 (Cons!23738 (StackFrame!55 z!3883 lt!795246 e!1352951 lt!795305 totalInput!886) Nil!23738) (_2!13627 lt!795301) (_3!1940 lt!795301) cacheFurthestNullable!130))))

(declare-fun lt!795299 () Unit!37609)

(declare-fun lt!795309 () Unit!37609)

(assert (=> b!2123629 (= lt!795299 lt!795309)))

(declare-fun call!128706 () Bool)

(assert (=> b!2123629 call!128706))

(declare-fun call!128707 () Unit!37609)

(assert (=> b!2123629 (= lt!795309 call!128707)))

(declare-fun lt!795304 () Unit!37609)

(declare-fun Unit!37613 () Unit!37609)

(assert (=> b!2123629 (= lt!795304 Unit!37613)))

(declare-fun call!128708 () Bool)

(assert (=> b!2123629 call!128708))

(declare-fun furthestNullablePosition!11 ((InoxSet Context!2482) Int BalanceConc!15380 Int Int) Int)

(assert (=> b!2123629 (= lt!795311 (furthestNullablePosition!11 (_1!13627 lt!795301) (+ lt!795246 1) totalInput!886 (size!18556 totalInput!886) lt!795308))))

(assert (=> b!2123629 (= lt!795308 e!1353035)))

(declare-fun c!339840 () Bool)

(assert (=> b!2123629 (= c!339840 (nullableZipper!67 (_1!13627 lt!795301)))))

(declare-fun derivationStepZipperMem!18 ((InoxSet Context!2482) C!11488 CacheUp!1650 CacheDown!1636) tuple3!2940)

(declare-fun apply!5912 (BalanceConc!15380 Int) C!11488)

(assert (=> b!2123629 (= lt!795301 (derivationStepZipperMem!18 z!3883 (apply!5912 totalInput!886 lt!795246) cacheUp!991 cacheDown!1110))))

(declare-fun e!1353033 () tuple3!2936)

(assert (=> b!2123629 (= e!1353033 (tuple3!2937 (_1!13623 lt!795300) (_2!13623 lt!795300) (_3!1938 lt!795300)))))

(declare-fun b!2123630 () Bool)

(declare-fun e!1353032 () Bool)

(declare-fun lostCauseZipper!58 ((InoxSet Context!2482)) Bool)

(assert (=> b!2123630 (= e!1353032 (lostCauseZipper!58 z!3883))))

(declare-fun res!919441 () Bool)

(declare-fun e!1353034 () Bool)

(assert (=> b!2123631 (=> (not res!919441) (not e!1353034))))

(assert (=> b!2123631 (= res!919441 (forall!4868 (_2!13622 (_1!13623 lt!795298)) lambda!78676))))

(declare-fun b!2123632 () Bool)

(declare-fun res!919437 () Bool)

(assert (=> b!2123632 (=> (not res!919437) (not e!1353034))))

(assert (=> b!2123632 (= res!919437 (= (totalInput!2921 cacheFurthestNullable!130) totalInput!886))))

(assert (=> d!643595 e!1353034))

(declare-fun res!919440 () Bool)

(assert (=> d!643595 (=> (not res!919440) (not e!1353034))))

(assert (=> d!643595 (= res!919440 (= (_1!13622 (_1!13623 lt!795298)) (furthestNullablePosition!11 z!3883 lt!795246 totalInput!886 lt!795241 e!1352951)))))

(declare-fun e!1353031 () tuple3!2936)

(assert (=> d!643595 (= lt!795298 e!1353031)))

(declare-fun c!339839 () Bool)

(declare-datatypes ((Option!4870 0))(
  ( (None!4869) (Some!4869 (v!28270 Int)) )
))
(declare-fun lt!795303 () Option!4870)

(assert (=> d!643595 (= c!339839 ((_ is Some!4869) lt!795303))))

(declare-fun get!7315 (CacheFurthestNullable!596 (InoxSet Context!2482) Int Int) Option!4870)

(assert (=> d!643595 (= lt!795303 (get!7315 cacheFurthestNullable!130 z!3883 lt!795246 e!1352951))))

(declare-fun lt!795302 () Unit!37609)

(declare-fun Unit!37614 () Unit!37609)

(assert (=> d!643595 (= lt!795302 Unit!37614)))

(assert (=> d!643595 (forall!4868 Nil!23738 lambda!78673)))

(assert (=> d!643595 (= lt!795305 (furthestNullablePosition!11 z!3883 lt!795246 totalInput!886 (size!18556 totalInput!886) e!1352951))))

(assert (=> d!643595 (and (>= lt!795246 0) (<= lt!795246 lt!795241))))

(assert (=> d!643595 (= (furthestNullablePositionStackMem!12 z!3883 lt!795246 totalInput!886 lt!795241 e!1352951 Nil!23738 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130) lt!795298)))

(declare-fun lt!795310 () Unit!37609)

(declare-fun lt!795307 () Unit!37609)

(assert (=> b!2123633 (= lt!795310 lt!795307)))

(assert (=> b!2123633 call!128706))

(assert (=> b!2123633 (= lt!795307 call!128707)))

(declare-fun lt!795306 () Unit!37609)

(declare-fun Unit!37615 () Unit!37609)

(assert (=> b!2123633 (= lt!795306 Unit!37615)))

(assert (=> b!2123633 call!128708))

(assert (=> b!2123633 (= e!1353033 (tuple3!2937 (tuple2!23369 e!1352951 Nil!23738) cacheUp!991 cacheDown!1110))))

(declare-fun b!2123634 () Bool)

(declare-fun res!919439 () Bool)

(assert (=> b!2123634 (=> (not res!919439) (not e!1353034))))

(assert (=> b!2123634 (= res!919439 (valid!1938 (_3!1938 lt!795298)))))

(declare-fun b!2123635 () Bool)

(assert (=> b!2123635 (= e!1353031 e!1353033)))

(declare-fun res!919438 () Bool)

(assert (=> b!2123635 (= res!919438 (= lt!795246 lt!795241))))

(assert (=> b!2123635 (=> res!919438 e!1353032)))

(declare-fun c!339838 () Bool)

(assert (=> b!2123635 (= c!339838 e!1353032)))

(declare-fun b!2123636 () Bool)

(declare-fun res!919436 () Bool)

(assert (=> b!2123636 (=> (not res!919436) (not e!1353034))))

(assert (=> b!2123636 (= res!919436 (valid!1939 (_2!13623 lt!795298)))))

(declare-fun b!2123637 () Bool)

(declare-fun res!919442 () Bool)

(assert (=> b!2123637 (=> (not res!919442) (not e!1353034))))

(assert (=> b!2123637 (= res!919442 (valid!1937 cacheFurthestNullable!130))))

(declare-fun b!2123638 () Bool)

(assert (=> b!2123638 (= e!1353035 lt!795246)))

(assert (=> b!2123639 (= e!1353034 (forall!4868 (_2!13622 (_1!13623 lt!795298)) lambda!78677))))

(declare-fun b!2123640 () Bool)

(assert (=> b!2123640 (= e!1353031 (tuple3!2937 (tuple2!23369 (v!28270 lt!795303) Nil!23738) cacheUp!991 cacheDown!1110))))

(declare-fun bm!128701 () Bool)

(assert (=> bm!128701 (= call!128708 (forall!4868 Nil!23738 (ite c!339838 lambda!78673 lambda!78673)))))

(declare-fun bm!128702 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!7 (List!23822 Int Int) Unit!37609)

(assert (=> bm!128702 (= call!128707 (lemmaStackPreservesForEqualRes!7 Nil!23738 lt!795305 (ite c!339838 e!1352951 lt!795311)))))

(declare-fun bm!128703 () Bool)

(assert (=> bm!128703 (= call!128706 (forall!4868 Nil!23738 (ite c!339838 lambda!78674 lambda!78675)))))

(assert (= (and d!643595 c!339839) b!2123640))

(assert (= (and d!643595 (not c!339839)) b!2123635))

(assert (= (and b!2123635 (not res!919438)) b!2123630))

(assert (= (and b!2123635 c!339838) b!2123633))

(assert (= (and b!2123635 (not c!339838)) b!2123629))

(assert (= (and b!2123629 c!339840) b!2123638))

(assert (= (and b!2123629 (not c!339840)) b!2123628))

(assert (= (or b!2123633 b!2123629) bm!128703))

(assert (= (or b!2123633 b!2123629) bm!128701))

(assert (= (or b!2123633 b!2123629) bm!128702))

(assert (= (and d!643595 res!919440) b!2123631))

(assert (= (and b!2123631 res!919441) b!2123636))

(assert (= (and b!2123636 res!919436) b!2123634))

(assert (= (and b!2123634 res!919439) b!2123637))

(assert (= (and b!2123637 res!919442) b!2123632))

(assert (= (and b!2123632 res!919437) b!2123639))

(declare-fun m!2576399 () Bool)

(assert (=> b!2123631 m!2576399))

(assert (=> b!2123629 m!2576349))

(declare-fun m!2576401 () Bool)

(assert (=> b!2123629 m!2576401))

(declare-fun m!2576403 () Bool)

(assert (=> b!2123629 m!2576403))

(declare-fun m!2576405 () Bool)

(assert (=> b!2123629 m!2576405))

(assert (=> b!2123629 m!2576403))

(declare-fun m!2576407 () Bool)

(assert (=> b!2123629 m!2576407))

(declare-fun m!2576409 () Bool)

(assert (=> b!2123629 m!2576409))

(assert (=> b!2123629 m!2576349))

(declare-fun m!2576411 () Bool)

(assert (=> d!643595 m!2576411))

(assert (=> d!643595 m!2576349))

(assert (=> d!643595 m!2576349))

(declare-fun m!2576413 () Bool)

(assert (=> d!643595 m!2576413))

(declare-fun m!2576415 () Bool)

(assert (=> d!643595 m!2576415))

(declare-fun m!2576417 () Bool)

(assert (=> d!643595 m!2576417))

(declare-fun m!2576419 () Bool)

(assert (=> b!2123636 m!2576419))

(assert (=> b!2123637 m!2576311))

(declare-fun m!2576421 () Bool)

(assert (=> b!2123630 m!2576421))

(declare-fun m!2576423 () Bool)

(assert (=> bm!128703 m!2576423))

(declare-fun m!2576425 () Bool)

(assert (=> bm!128702 m!2576425))

(declare-fun m!2576427 () Bool)

(assert (=> b!2123634 m!2576427))

(declare-fun m!2576429 () Bool)

(assert (=> b!2123639 m!2576429))

(declare-fun m!2576431 () Bool)

(assert (=> bm!128701 m!2576431))

(assert (=> b!2123521 d!643595))

(declare-fun d!643597 () Bool)

(declare-fun lt!795314 () Int)

(assert (=> d!643597 (= lt!795314 (size!18557 (list!9532 input!5507)))))

(assert (=> d!643597 (= lt!795314 (size!18558 (c!339823 input!5507)))))

(assert (=> d!643597 (= (size!18556 input!5507) lt!795314)))

(declare-fun bs!442830 () Bool)

(assert (= bs!442830 d!643597))

(assert (=> bs!442830 m!2576365))

(assert (=> bs!442830 m!2576365))

(declare-fun m!2576433 () Bool)

(assert (=> bs!442830 m!2576433))

(declare-fun m!2576435 () Bool)

(assert (=> bs!442830 m!2576435))

(assert (=> b!2123521 d!643597))

(declare-fun d!643599 () Bool)

(assert (=> d!643599 (= (array_inv!2688 (_keys!2763 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))) (bvsge (size!18553 (_keys!2763 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2123504 d!643599))

(declare-fun d!643601 () Bool)

(assert (=> d!643601 (= (array_inv!2690 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))) (bvsge (size!18554 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2123504 d!643601))

(declare-fun d!643603 () Bool)

(declare-fun c!339843 () Bool)

(assert (=> d!643603 (= c!339843 ((_ is Node!7809) (c!339823 (totalInput!2921 cacheFurthestNullable!130))))))

(declare-fun e!1353056 () Bool)

(assert (=> d!643603 (= (inv!31333 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) e!1353056)))

(declare-fun b!2123665 () Bool)

(declare-fun inv!31335 (Conc!7809) Bool)

(assert (=> b!2123665 (= e!1353056 (inv!31335 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))))

(declare-fun b!2123666 () Bool)

(declare-fun e!1353057 () Bool)

(assert (=> b!2123666 (= e!1353056 e!1353057)))

(declare-fun res!919445 () Bool)

(assert (=> b!2123666 (= res!919445 (not ((_ is Leaf!11412) (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(assert (=> b!2123666 (=> res!919445 e!1353057)))

(declare-fun b!2123667 () Bool)

(declare-fun inv!31336 (Conc!7809) Bool)

(assert (=> b!2123667 (= e!1353057 (inv!31336 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))))

(assert (= (and d!643603 c!339843) b!2123665))

(assert (= (and d!643603 (not c!339843)) b!2123666))

(assert (= (and b!2123666 (not res!919445)) b!2123667))

(declare-fun m!2576437 () Bool)

(assert (=> b!2123665 m!2576437))

(declare-fun m!2576439 () Bool)

(assert (=> b!2123667 m!2576439))

(assert (=> b!2123513 d!643603))

(declare-fun d!643605 () Bool)

(declare-fun res!919446 () Bool)

(declare-fun e!1353058 () Bool)

(assert (=> d!643605 (=> res!919446 e!1353058)))

(assert (=> d!643605 (= res!919446 ((_ is Nil!23738) (_2!13622 (_1!13623 lt!795247))))))

(assert (=> d!643605 (= (forall!4868 (_2!13622 (_1!13623 lt!795247)) lambda!78655) e!1353058)))

(declare-fun b!2123668 () Bool)

(declare-fun e!1353059 () Bool)

(assert (=> b!2123668 (= e!1353058 e!1353059)))

(declare-fun res!919447 () Bool)

(assert (=> b!2123668 (=> (not res!919447) (not e!1353059))))

(assert (=> b!2123668 (= res!919447 (dynLambda!11344 lambda!78655 (h!29139 (_2!13622 (_1!13623 lt!795247)))))))

(declare-fun b!2123669 () Bool)

(assert (=> b!2123669 (= e!1353059 (forall!4868 (t!196341 (_2!13622 (_1!13623 lt!795247))) lambda!78655))))

(assert (= (and d!643605 (not res!919446)) b!2123668))

(assert (= (and b!2123668 res!919447) b!2123669))

(declare-fun b_lambda!70483 () Bool)

(assert (=> (not b_lambda!70483) (not b!2123668)))

(declare-fun m!2576441 () Bool)

(assert (=> b!2123668 m!2576441))

(declare-fun m!2576443 () Bool)

(assert (=> b!2123669 m!2576443))

(assert (=> b!2123497 d!643605))

(declare-fun d!643607 () Bool)

(declare-fun validCacheMapUp!246 (MutableMap!2379) Bool)

(assert (=> d!643607 (= (valid!1939 cacheUp!991) (validCacheMapUp!246 (cache!2760 cacheUp!991)))))

(declare-fun bs!442831 () Bool)

(assert (= bs!442831 d!643607))

(declare-fun m!2576445 () Bool)

(assert (=> bs!442831 m!2576445))

(assert (=> b!2123523 d!643607))

(declare-fun d!643609 () Bool)

(assert (=> d!643609 (= (array_inv!2688 (_keys!2762 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))) (bvsge (size!18553 (_keys!2762 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2123496 d!643609))

(declare-fun d!643611 () Bool)

(assert (=> d!643611 (= (array_inv!2689 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))) (bvsge (size!18552 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2123496 d!643611))

(declare-fun d!643613 () Bool)

(declare-fun c!339844 () Bool)

(assert (=> d!643613 (= c!339844 ((_ is Node!7809) (c!339823 input!5507)))))

(declare-fun e!1353060 () Bool)

(assert (=> d!643613 (= (inv!31333 (c!339823 input!5507)) e!1353060)))

(declare-fun b!2123670 () Bool)

(assert (=> b!2123670 (= e!1353060 (inv!31335 (c!339823 input!5507)))))

(declare-fun b!2123671 () Bool)

(declare-fun e!1353061 () Bool)

(assert (=> b!2123671 (= e!1353060 e!1353061)))

(declare-fun res!919448 () Bool)

(assert (=> b!2123671 (= res!919448 (not ((_ is Leaf!11412) (c!339823 input!5507))))))

(assert (=> b!2123671 (=> res!919448 e!1353061)))

(declare-fun b!2123672 () Bool)

(assert (=> b!2123672 (= e!1353061 (inv!31336 (c!339823 input!5507)))))

(assert (= (and d!643613 c!339844) b!2123670))

(assert (= (and d!643613 (not c!339844)) b!2123671))

(assert (= (and b!2123671 (not res!919448)) b!2123672))

(declare-fun m!2576447 () Bool)

(assert (=> b!2123670 m!2576447))

(declare-fun m!2576449 () Bool)

(assert (=> b!2123672 m!2576449))

(assert (=> b!2123500 d!643613))

(declare-fun d!643615 () Bool)

(declare-fun c!339845 () Bool)

(assert (=> d!643615 (= c!339845 ((_ is Node!7809) (c!339823 totalInput!886)))))

(declare-fun e!1353062 () Bool)

(assert (=> d!643615 (= (inv!31333 (c!339823 totalInput!886)) e!1353062)))

(declare-fun b!2123673 () Bool)

(assert (=> b!2123673 (= e!1353062 (inv!31335 (c!339823 totalInput!886)))))

(declare-fun b!2123674 () Bool)

(declare-fun e!1353063 () Bool)

(assert (=> b!2123674 (= e!1353062 e!1353063)))

(declare-fun res!919449 () Bool)

(assert (=> b!2123674 (= res!919449 (not ((_ is Leaf!11412) (c!339823 totalInput!886))))))

(assert (=> b!2123674 (=> res!919449 e!1353063)))

(declare-fun b!2123675 () Bool)

(assert (=> b!2123675 (= e!1353063 (inv!31336 (c!339823 totalInput!886)))))

(assert (= (and d!643615 c!339845) b!2123673))

(assert (= (and d!643615 (not c!339845)) b!2123674))

(assert (= (and b!2123674 (not res!919449)) b!2123675))

(declare-fun m!2576451 () Bool)

(assert (=> b!2123673 m!2576451))

(declare-fun m!2576453 () Bool)

(assert (=> b!2123675 m!2576453))

(assert (=> b!2123526 d!643615))

(declare-fun d!643617 () Bool)

(declare-fun validCacheMapDown!244 (MutableMap!2380) Bool)

(assert (=> d!643617 (= (valid!1938 cacheDown!1110) (validCacheMapDown!244 (cache!2761 cacheDown!1110)))))

(declare-fun bs!442832 () Bool)

(assert (= bs!442832 d!643617))

(declare-fun m!2576455 () Bool)

(assert (=> bs!442832 m!2576455))

(assert (=> b!2123516 d!643617))

(declare-fun d!643619 () Bool)

(assert (=> d!643619 (= (array_inv!2688 (_keys!2764 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))) (bvsge (size!18553 (_keys!2764 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2123519 d!643619))

(declare-fun d!643621 () Bool)

(assert (=> d!643621 (= (array_inv!2691 (_values!2747 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))) (bvsge (size!18555 (_values!2747 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2123519 d!643621))

(declare-fun b!2123688 () Bool)

(declare-fun res!919466 () Bool)

(declare-fun e!1353068 () Bool)

(assert (=> b!2123688 (=> (not res!919466) (not e!1353068))))

(declare-fun height!1235 (Conc!7809) Int)

(assert (=> b!2123688 (= res!919466 (<= (- (height!1235 (left!18357 (c!339823 input!5507))) (height!1235 (right!18687 (c!339823 input!5507)))) 1))))

(declare-fun b!2123689 () Bool)

(declare-fun e!1353069 () Bool)

(assert (=> b!2123689 (= e!1353069 e!1353068)))

(declare-fun res!919464 () Bool)

(assert (=> b!2123689 (=> (not res!919464) (not e!1353068))))

(assert (=> b!2123689 (= res!919464 (<= (- 1) (- (height!1235 (left!18357 (c!339823 input!5507))) (height!1235 (right!18687 (c!339823 input!5507))))))))

(declare-fun b!2123690 () Bool)

(declare-fun isEmpty!14313 (Conc!7809) Bool)

(assert (=> b!2123690 (= e!1353068 (not (isEmpty!14313 (right!18687 (c!339823 input!5507)))))))

(declare-fun b!2123691 () Bool)

(declare-fun res!919462 () Bool)

(assert (=> b!2123691 (=> (not res!919462) (not e!1353068))))

(assert (=> b!2123691 (= res!919462 (isBalanced!2450 (right!18687 (c!339823 input!5507))))))

(declare-fun b!2123692 () Bool)

(declare-fun res!919467 () Bool)

(assert (=> b!2123692 (=> (not res!919467) (not e!1353068))))

(assert (=> b!2123692 (= res!919467 (not (isEmpty!14313 (left!18357 (c!339823 input!5507)))))))

(declare-fun d!643623 () Bool)

(declare-fun res!919463 () Bool)

(assert (=> d!643623 (=> res!919463 e!1353069)))

(assert (=> d!643623 (= res!919463 (not ((_ is Node!7809) (c!339823 input!5507))))))

(assert (=> d!643623 (= (isBalanced!2450 (c!339823 input!5507)) e!1353069)))

(declare-fun b!2123693 () Bool)

(declare-fun res!919465 () Bool)

(assert (=> b!2123693 (=> (not res!919465) (not e!1353068))))

(assert (=> b!2123693 (= res!919465 (isBalanced!2450 (left!18357 (c!339823 input!5507))))))

(assert (= (and d!643623 (not res!919463)) b!2123689))

(assert (= (and b!2123689 res!919464) b!2123688))

(assert (= (and b!2123688 res!919466) b!2123693))

(assert (= (and b!2123693 res!919465) b!2123691))

(assert (= (and b!2123691 res!919462) b!2123692))

(assert (= (and b!2123692 res!919467) b!2123690))

(declare-fun m!2576457 () Bool)

(assert (=> b!2123692 m!2576457))

(declare-fun m!2576459 () Bool)

(assert (=> b!2123689 m!2576459))

(declare-fun m!2576461 () Bool)

(assert (=> b!2123689 m!2576461))

(declare-fun m!2576463 () Bool)

(assert (=> b!2123693 m!2576463))

(declare-fun m!2576465 () Bool)

(assert (=> b!2123690 m!2576465))

(assert (=> b!2123688 m!2576459))

(assert (=> b!2123688 m!2576461))

(declare-fun m!2576467 () Bool)

(assert (=> b!2123691 m!2576467))

(assert (=> b!2123502 d!643623))

(declare-fun d!643625 () Bool)

(declare-fun list!9533 (Conc!7809) List!23821)

(assert (=> d!643625 (= (list!9532 input!5507) (list!9533 (c!339823 input!5507)))))

(declare-fun bs!442833 () Bool)

(assert (= bs!442833 d!643625))

(declare-fun m!2576469 () Bool)

(assert (=> bs!442833 m!2576469))

(assert (=> start!207156 d!643625))

(declare-fun d!643627 () Bool)

(assert (=> d!643627 (= (inv!31330 totalInput!886) (isBalanced!2450 (c!339823 totalInput!886)))))

(declare-fun bs!442834 () Bool)

(assert (= bs!442834 d!643627))

(declare-fun m!2576471 () Bool)

(assert (=> bs!442834 m!2576471))

(assert (=> start!207156 d!643627))

(declare-fun d!643629 () Bool)

(assert (=> d!643629 (= (inv!31330 input!5507) (isBalanced!2450 (c!339823 input!5507)))))

(declare-fun bs!442835 () Bool)

(assert (= bs!442835 d!643629))

(assert (=> bs!442835 m!2576357))

(assert (=> start!207156 d!643629))

(declare-fun d!643631 () Bool)

(assert (=> d!643631 (= (list!9532 totalInput!886) (list!9533 (c!339823 totalInput!886)))))

(declare-fun bs!442836 () Bool)

(assert (= bs!442836 d!643631))

(declare-fun m!2576473 () Bool)

(assert (=> bs!442836 m!2576473))

(assert (=> start!207156 d!643631))

(declare-fun d!643633 () Bool)

(declare-fun res!919470 () Bool)

(declare-fun e!1353072 () Bool)

(assert (=> d!643633 (=> (not res!919470) (not e!1353072))))

(assert (=> d!643633 (= res!919470 ((_ is HashMap!2379) (cache!2760 cacheUp!991)))))

(assert (=> d!643633 (= (inv!31332 cacheUp!991) e!1353072)))

(declare-fun b!2123696 () Bool)

(assert (=> b!2123696 (= e!1353072 (validCacheMapUp!246 (cache!2760 cacheUp!991)))))

(assert (= (and d!643633 res!919470) b!2123696))

(assert (=> b!2123696 m!2576445))

(assert (=> start!207156 d!643633))

(declare-fun d!643635 () Bool)

(declare-fun res!919473 () Bool)

(declare-fun e!1353075 () Bool)

(assert (=> d!643635 (=> (not res!919473) (not e!1353075))))

(assert (=> d!643635 (= res!919473 ((_ is HashMap!2380) (cache!2761 cacheDown!1110)))))

(assert (=> d!643635 (= (inv!31331 cacheDown!1110) e!1353075)))

(declare-fun b!2123699 () Bool)

(assert (=> b!2123699 (= e!1353075 (validCacheMapDown!244 (cache!2761 cacheDown!1110)))))

(assert (= (and d!643635 res!919473) b!2123699))

(assert (=> b!2123699 m!2576455))

(assert (=> start!207156 d!643635))

(declare-fun d!643637 () Bool)

(declare-fun res!919476 () Bool)

(declare-fun e!1353078 () Bool)

(assert (=> d!643637 (=> (not res!919476) (not e!1353078))))

(assert (=> d!643637 (= res!919476 ((_ is HashMap!2381) (cache!2762 cacheFurthestNullable!130)))))

(assert (=> d!643637 (= (inv!31329 cacheFurthestNullable!130) e!1353078)))

(declare-fun b!2123702 () Bool)

(assert (=> b!2123702 (= e!1353078 (validCacheMapFurthestNullable!96 (cache!2762 cacheFurthestNullable!130) (totalInput!2921 cacheFurthestNullable!130)))))

(assert (= (and d!643637 res!919476) b!2123702))

(assert (=> b!2123702 m!2576375))

(assert (=> start!207156 d!643637))

(declare-fun d!643639 () Bool)

(declare-fun e!1353081 () Bool)

(assert (=> d!643639 e!1353081))

(declare-fun res!919479 () Bool)

(assert (=> d!643639 (=> res!919479 e!1353081)))

(declare-fun lt!795317 () Bool)

(assert (=> d!643639 (= res!919479 (not lt!795317))))

(declare-fun drop!1185 (List!23821 Int) List!23821)

(assert (=> d!643639 (= lt!795317 (= (list!9532 input!5507) (drop!1185 (list!9532 totalInput!886) (- (size!18557 (list!9532 totalInput!886)) (size!18557 (list!9532 input!5507))))))))

(assert (=> d!643639 (= (isSuffix!621 (list!9532 input!5507) (list!9532 totalInput!886)) lt!795317)))

(declare-fun b!2123705 () Bool)

(assert (=> b!2123705 (= e!1353081 (>= (size!18557 (list!9532 totalInput!886)) (size!18557 (list!9532 input!5507))))))

(assert (= (and d!643639 (not res!919479)) b!2123705))

(assert (=> d!643639 m!2576359))

(assert (=> d!643639 m!2576379))

(assert (=> d!643639 m!2576365))

(assert (=> d!643639 m!2576433))

(assert (=> d!643639 m!2576359))

(declare-fun m!2576475 () Bool)

(assert (=> d!643639 m!2576475))

(assert (=> b!2123705 m!2576359))

(assert (=> b!2123705 m!2576379))

(assert (=> b!2123705 m!2576365))

(assert (=> b!2123705 m!2576433))

(assert (=> start!207156 d!643639))

(declare-fun d!643641 () Bool)

(declare-fun lambda!78680 () Int)

(declare-fun forall!4869 (List!23818 Int) Bool)

(assert (=> d!643641 (= (inv!31334 setElem!15007) (forall!4869 (exprs!1741 setElem!15007) lambda!78680))))

(declare-fun bs!442837 () Bool)

(assert (= bs!442837 d!643641))

(declare-fun m!2576477 () Bool)

(assert (=> bs!442837 m!2576477))

(assert (=> setNonEmpty!15007 d!643641))

(declare-fun d!643643 () Bool)

(assert (=> d!643643 (= (inv!31330 (totalInput!2921 cacheFurthestNullable!130)) (isBalanced!2450 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))))

(declare-fun bs!442838 () Bool)

(assert (= bs!442838 d!643643))

(declare-fun m!2576479 () Bool)

(assert (=> bs!442838 m!2576479))

(assert (=> b!2123518 d!643643))

(declare-fun e!1353090 () Bool)

(assert (=> b!2123504 (= tp!650511 e!1353090)))

(declare-fun b!2123714 () Bool)

(declare-fun e!1353088 () Bool)

(declare-fun tp!650539 () Bool)

(assert (=> b!2123714 (= e!1353088 tp!650539)))

(declare-fun b!2123715 () Bool)

(declare-fun e!1353089 () Bool)

(declare-fun tp!650537 () Bool)

(assert (=> b!2123715 (= e!1353089 tp!650537)))

(declare-fun tp!650538 () Bool)

(declare-fun setNonEmpty!15014 () Bool)

(declare-fun setRes!15014 () Bool)

(declare-fun setElem!15014 () Context!2482)

(assert (=> setNonEmpty!15014 (= setRes!15014 (and tp!650538 (inv!31334 setElem!15014) e!1353088))))

(declare-fun setRest!15014 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15014 (= (_2!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15014 true) setRest!15014))))

(declare-fun tp_is_empty!9493 () Bool)

(declare-fun b!2123716 () Bool)

(declare-fun tp!650540 () Bool)

(assert (=> b!2123716 (= e!1353090 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))))) e!1353089 tp_is_empty!9493 setRes!15014 tp!650540))))

(declare-fun condSetEmpty!15014 () Bool)

(assert (=> b!2123716 (= condSetEmpty!15014 (= (_2!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15014 () Bool)

(assert (=> setIsEmpty!15014 setRes!15014))

(assert (= b!2123716 b!2123715))

(assert (= (and b!2123716 condSetEmpty!15014) setIsEmpty!15014))

(assert (= (and b!2123716 (not condSetEmpty!15014)) setNonEmpty!15014))

(assert (= setNonEmpty!15014 b!2123714))

(assert (= (and b!2123504 ((_ is Cons!23736) (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))) b!2123716))

(declare-fun m!2576481 () Bool)

(assert (=> setNonEmpty!15014 m!2576481))

(declare-fun m!2576483 () Bool)

(assert (=> b!2123716 m!2576483))

(declare-fun e!1353093 () Bool)

(assert (=> b!2123504 (= tp!650513 e!1353093)))

(declare-fun b!2123717 () Bool)

(declare-fun e!1353091 () Bool)

(declare-fun tp!650543 () Bool)

(assert (=> b!2123717 (= e!1353091 tp!650543)))

(declare-fun b!2123718 () Bool)

(declare-fun e!1353092 () Bool)

(declare-fun tp!650541 () Bool)

(assert (=> b!2123718 (= e!1353092 tp!650541)))

(declare-fun setRes!15015 () Bool)

(declare-fun tp!650542 () Bool)

(declare-fun setElem!15015 () Context!2482)

(declare-fun setNonEmpty!15015 () Bool)

(assert (=> setNonEmpty!15015 (= setRes!15015 (and tp!650542 (inv!31334 setElem!15015) e!1353091))))

(declare-fun setRest!15015 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15015 (= (_2!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15015 true) setRest!15015))))

(declare-fun b!2123719 () Bool)

(declare-fun tp!650544 () Bool)

(assert (=> b!2123719 (= e!1353093 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))))) e!1353092 tp_is_empty!9493 setRes!15015 tp!650544))))

(declare-fun condSetEmpty!15015 () Bool)

(assert (=> b!2123719 (= condSetEmpty!15015 (= (_2!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15015 () Bool)

(assert (=> setIsEmpty!15015 setRes!15015))

(assert (= b!2123719 b!2123718))

(assert (= (and b!2123719 condSetEmpty!15015) setIsEmpty!15015))

(assert (= (and b!2123719 (not condSetEmpty!15015)) setNonEmpty!15015))

(assert (= setNonEmpty!15015 b!2123717))

(assert (= (and b!2123504 ((_ is Cons!23736) (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))) b!2123719))

(declare-fun m!2576485 () Bool)

(assert (=> setNonEmpty!15015 m!2576485))

(declare-fun m!2576487 () Bool)

(assert (=> b!2123719 m!2576487))

(declare-fun b!2123726 () Bool)

(declare-fun e!1353098 () Bool)

(declare-fun setRes!15021 () Bool)

(assert (=> b!2123726 (= e!1353098 setRes!15021)))

(declare-fun condSetEmpty!15021 () Bool)

(declare-fun mapDefault!12018 () List!23819)

(assert (=> b!2123726 (= condSetEmpty!15021 (= (_2!13619 (h!29136 mapDefault!12018)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15020 () Bool)

(assert (=> setIsEmpty!15020 setRes!15021))

(declare-fun setNonEmpty!15020 () Bool)

(assert (=> setNonEmpty!15020 (= setRes!15021 true)))

(declare-fun setElem!15021 () Context!2482)

(declare-fun setRest!15020 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15020 (= (_2!13619 (h!29136 mapDefault!12018)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15021 true) setRest!15020))))

(declare-fun setIsEmpty!15021 () Bool)

(declare-fun setRes!15020 () Bool)

(assert (=> setIsEmpty!15021 setRes!15020))

(declare-fun mapIsEmpty!12018 () Bool)

(declare-fun mapRes!12018 () Bool)

(assert (=> mapIsEmpty!12018 mapRes!12018))

(declare-fun mapNonEmpty!12018 () Bool)

(declare-fun e!1353099 () Bool)

(assert (=> mapNonEmpty!12018 (= mapRes!12018 e!1353099)))

(declare-fun mapValue!12018 () List!23819)

(declare-fun mapKey!12018 () (_ BitVec 32))

(declare-fun mapRest!12018 () (Array (_ BitVec 32) List!23819))

(assert (=> mapNonEmpty!12018 (= mapRest!12012 (store mapRest!12018 mapKey!12018 mapValue!12018))))

(declare-fun b!2123727 () Bool)

(assert (=> b!2123727 (= e!1353099 setRes!15020)))

(declare-fun condSetEmpty!15020 () Bool)

(assert (=> b!2123727 (= condSetEmpty!15020 (= (_2!13619 (h!29136 mapValue!12018)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setNonEmpty!15021 () Bool)

(assert (=> setNonEmpty!15021 (= setRes!15020 true)))

(declare-fun setElem!15020 () Context!2482)

(declare-fun setRest!15021 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15021 (= (_2!13619 (h!29136 mapValue!12018)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15020 true) setRest!15021))))

(declare-fun condMapEmpty!12018 () Bool)

(assert (=> mapNonEmpty!12012 (= condMapEmpty!12018 (= mapRest!12012 ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12018)))))

(assert (=> mapNonEmpty!12012 (and e!1353098 mapRes!12018)))

(assert (= (and mapNonEmpty!12012 condMapEmpty!12018) mapIsEmpty!12018))

(assert (= (and mapNonEmpty!12012 (not condMapEmpty!12018)) mapNonEmpty!12018))

(assert (= (and b!2123727 condSetEmpty!15020) setIsEmpty!15021))

(assert (= (and b!2123727 (not condSetEmpty!15020)) setNonEmpty!15021))

(assert (= (and mapNonEmpty!12018 ((_ is Cons!23735) mapValue!12018)) b!2123727))

(assert (= (and b!2123726 condSetEmpty!15021) setIsEmpty!15020))

(assert (= (and b!2123726 (not condSetEmpty!15021)) setNonEmpty!15020))

(assert (= (and mapNonEmpty!12012 ((_ is Cons!23735) mapDefault!12018)) b!2123726))

(declare-fun m!2576489 () Bool)

(assert (=> mapNonEmpty!12018 m!2576489))

(declare-fun b!2123732 () Bool)

(declare-fun e!1353102 () Bool)

(declare-fun setRes!15024 () Bool)

(assert (=> b!2123732 (= e!1353102 setRes!15024)))

(declare-fun condSetEmpty!15024 () Bool)

(assert (=> b!2123732 (= condSetEmpty!15024 (= (_2!13619 (h!29136 mapValue!12012)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15024 () Bool)

(assert (=> setIsEmpty!15024 setRes!15024))

(declare-fun setNonEmpty!15024 () Bool)

(assert (=> setNonEmpty!15024 (= setRes!15024 true)))

(declare-fun setElem!15024 () Context!2482)

(declare-fun setRest!15024 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15024 (= (_2!13619 (h!29136 mapValue!12012)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15024 true) setRest!15024))))

(assert (=> mapNonEmpty!12012 e!1353102))

(assert (= (and b!2123732 condSetEmpty!15024) setIsEmpty!15024))

(assert (= (and b!2123732 (not condSetEmpty!15024)) setNonEmpty!15024))

(assert (= (and mapNonEmpty!12012 ((_ is Cons!23735) mapValue!12012)) b!2123732))

(declare-fun b!2123733 () Bool)

(declare-fun e!1353103 () Bool)

(declare-fun setRes!15025 () Bool)

(assert (=> b!2123733 (= e!1353103 setRes!15025)))

(declare-fun condSetEmpty!15025 () Bool)

(assert (=> b!2123733 (= condSetEmpty!15025 (= (_2!13619 (h!29136 mapDefault!12012)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15025 () Bool)

(assert (=> setIsEmpty!15025 setRes!15025))

(declare-fun setNonEmpty!15025 () Bool)

(assert (=> setNonEmpty!15025 (= setRes!15025 true)))

(declare-fun setElem!15025 () Context!2482)

(declare-fun setRest!15025 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15025 (= (_2!13619 (h!29136 mapDefault!12012)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15025 true) setRest!15025))))

(assert (=> b!2123577 e!1353103))

(assert (= (and b!2123733 condSetEmpty!15025) setIsEmpty!15025))

(assert (= (and b!2123733 (not condSetEmpty!15025)) setNonEmpty!15025))

(assert (= (and b!2123577 ((_ is Cons!23735) mapDefault!12012)) b!2123733))

(declare-fun setIsEmpty!15028 () Bool)

(declare-fun setRes!15028 () Bool)

(assert (=> setIsEmpty!15028 setRes!15028))

(declare-fun setElem!15028 () Context!2482)

(declare-fun tp!650552 () Bool)

(declare-fun e!1353109 () Bool)

(declare-fun setNonEmpty!15028 () Bool)

(assert (=> setNonEmpty!15028 (= setRes!15028 (and tp!650552 (inv!31334 setElem!15028) e!1353109))))

(declare-fun setRest!15028 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15028 (= (_1!13624 (_1!13625 (h!29140 mapDefault!12006))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15028 true) setRest!15028))))

(declare-fun e!1353108 () Bool)

(assert (=> b!2123522 (= tp!650519 e!1353108)))

(declare-fun b!2123741 () Bool)

(declare-fun tp!650553 () Bool)

(assert (=> b!2123741 (= e!1353109 tp!650553)))

(declare-fun b!2123740 () Bool)

(declare-fun tp!650551 () Bool)

(assert (=> b!2123740 (= e!1353108 (and setRes!15028 tp!650551))))

(declare-fun condSetEmpty!15028 () Bool)

(assert (=> b!2123740 (= condSetEmpty!15028 (= (_1!13624 (_1!13625 (h!29140 mapDefault!12006))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2123740 condSetEmpty!15028) setIsEmpty!15028))

(assert (= (and b!2123740 (not condSetEmpty!15028)) setNonEmpty!15028))

(assert (= setNonEmpty!15028 b!2123741))

(assert (= (and b!2123522 ((_ is Cons!23739) mapDefault!12006)) b!2123740))

(declare-fun m!2576491 () Bool)

(assert (=> setNonEmpty!15028 m!2576491))

(declare-fun b!2123746 () Bool)

(declare-fun e!1353112 () Bool)

(declare-fun tp!650558 () Bool)

(declare-fun tp!650559 () Bool)

(assert (=> b!2123746 (= e!1353112 (and tp!650558 tp!650559))))

(assert (=> b!2123506 (= tp!650524 e!1353112)))

(assert (= (and b!2123506 ((_ is Cons!23734) (exprs!1741 setElem!15007))) b!2123746))

(declare-fun setNonEmpty!15033 () Bool)

(declare-fun setElem!15034 () Context!2482)

(declare-fun tp!650586 () Bool)

(declare-fun setRes!15034 () Bool)

(declare-fun e!1353130 () Bool)

(assert (=> setNonEmpty!15033 (= setRes!15034 (and tp!650586 (inv!31334 setElem!15034) e!1353130))))

(declare-fun mapValue!12021 () List!23820)

(declare-fun setRest!15033 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15033 (= (_2!13621 (h!29137 mapValue!12021)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15034 true) setRest!15033))))

(declare-fun setElem!15033 () Context!2482)

(declare-fun e!1353126 () Bool)

(declare-fun setRes!15033 () Bool)

(declare-fun tp!650580 () Bool)

(declare-fun setNonEmpty!15034 () Bool)

(assert (=> setNonEmpty!15034 (= setRes!15033 (and tp!650580 (inv!31334 setElem!15033) e!1353126))))

(declare-fun mapDefault!12021 () List!23820)

(declare-fun setRest!15034 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15034 (= (_2!13621 (h!29137 mapDefault!12021)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15033 true) setRest!15034))))

(declare-fun condMapEmpty!12021 () Bool)

(assert (=> mapNonEmpty!12007 (= condMapEmpty!12021 (= mapRest!12006 ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12021)))))

(declare-fun e!1353125 () Bool)

(declare-fun mapRes!12021 () Bool)

(assert (=> mapNonEmpty!12007 (= tp!650512 (and e!1353125 mapRes!12021))))

(declare-fun e!1353128 () Bool)

(declare-fun tp!650579 () Bool)

(declare-fun b!2123761 () Bool)

(assert (=> b!2123761 (= e!1353125 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 mapDefault!12021)))) e!1353128 tp_is_empty!9493 setRes!15033 tp!650579))))

(declare-fun condSetEmpty!15034 () Bool)

(assert (=> b!2123761 (= condSetEmpty!15034 (= (_2!13621 (h!29137 mapDefault!12021)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2123762 () Bool)

(declare-fun e!1353129 () Bool)

(declare-fun tp!650584 () Bool)

(assert (=> b!2123762 (= e!1353129 tp!650584)))

(declare-fun b!2123763 () Bool)

(declare-fun tp!650583 () Bool)

(assert (=> b!2123763 (= e!1353128 tp!650583)))

(declare-fun setIsEmpty!15033 () Bool)

(assert (=> setIsEmpty!15033 setRes!15033))

(declare-fun setIsEmpty!15034 () Bool)

(assert (=> setIsEmpty!15034 setRes!15034))

(declare-fun mapIsEmpty!12021 () Bool)

(assert (=> mapIsEmpty!12021 mapRes!12021))

(declare-fun b!2123764 () Bool)

(declare-fun tp!650578 () Bool)

(declare-fun e!1353127 () Bool)

(assert (=> b!2123764 (= e!1353127 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 mapValue!12021)))) e!1353129 tp_is_empty!9493 setRes!15034 tp!650578))))

(declare-fun condSetEmpty!15033 () Bool)

(assert (=> b!2123764 (= condSetEmpty!15033 (= (_2!13621 (h!29137 mapValue!12021)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2123765 () Bool)

(declare-fun tp!650581 () Bool)

(assert (=> b!2123765 (= e!1353126 tp!650581)))

(declare-fun b!2123766 () Bool)

(declare-fun tp!650585 () Bool)

(assert (=> b!2123766 (= e!1353130 tp!650585)))

(declare-fun mapNonEmpty!12021 () Bool)

(declare-fun tp!650582 () Bool)

(assert (=> mapNonEmpty!12021 (= mapRes!12021 (and tp!650582 e!1353127))))

(declare-fun mapKey!12021 () (_ BitVec 32))

(declare-fun mapRest!12021 () (Array (_ BitVec 32) List!23820))

(assert (=> mapNonEmpty!12021 (= mapRest!12006 (store mapRest!12021 mapKey!12021 mapValue!12021))))

(assert (= (and mapNonEmpty!12007 condMapEmpty!12021) mapIsEmpty!12021))

(assert (= (and mapNonEmpty!12007 (not condMapEmpty!12021)) mapNonEmpty!12021))

(assert (= b!2123764 b!2123762))

(assert (= (and b!2123764 condSetEmpty!15033) setIsEmpty!15034))

(assert (= (and b!2123764 (not condSetEmpty!15033)) setNonEmpty!15033))

(assert (= setNonEmpty!15033 b!2123766))

(assert (= (and mapNonEmpty!12021 ((_ is Cons!23736) mapValue!12021)) b!2123764))

(assert (= b!2123761 b!2123763))

(assert (= (and b!2123761 condSetEmpty!15034) setIsEmpty!15033))

(assert (= (and b!2123761 (not condSetEmpty!15034)) setNonEmpty!15034))

(assert (= setNonEmpty!15034 b!2123765))

(assert (= (and mapNonEmpty!12007 ((_ is Cons!23736) mapDefault!12021)) b!2123761))

(declare-fun m!2576493 () Bool)

(assert (=> b!2123764 m!2576493))

(declare-fun m!2576495 () Bool)

(assert (=> setNonEmpty!15033 m!2576495))

(declare-fun m!2576497 () Bool)

(assert (=> mapNonEmpty!12021 m!2576497))

(declare-fun m!2576499 () Bool)

(assert (=> b!2123761 m!2576499))

(declare-fun m!2576501 () Bool)

(assert (=> setNonEmpty!15034 m!2576501))

(declare-fun e!1353133 () Bool)

(assert (=> mapNonEmpty!12007 (= tp!650522 e!1353133)))

(declare-fun b!2123767 () Bool)

(declare-fun e!1353131 () Bool)

(declare-fun tp!650589 () Bool)

(assert (=> b!2123767 (= e!1353131 tp!650589)))

(declare-fun b!2123768 () Bool)

(declare-fun e!1353132 () Bool)

(declare-fun tp!650587 () Bool)

(assert (=> b!2123768 (= e!1353132 tp!650587)))

(declare-fun setRes!15035 () Bool)

(declare-fun setNonEmpty!15035 () Bool)

(declare-fun tp!650588 () Bool)

(declare-fun setElem!15035 () Context!2482)

(assert (=> setNonEmpty!15035 (= setRes!15035 (and tp!650588 (inv!31334 setElem!15035) e!1353131))))

(declare-fun setRest!15035 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15035 (= (_2!13621 (h!29137 mapValue!12005)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15035 true) setRest!15035))))

(declare-fun b!2123769 () Bool)

(declare-fun tp!650590 () Bool)

(assert (=> b!2123769 (= e!1353133 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 mapValue!12005)))) e!1353132 tp_is_empty!9493 setRes!15035 tp!650590))))

(declare-fun condSetEmpty!15035 () Bool)

(assert (=> b!2123769 (= condSetEmpty!15035 (= (_2!13621 (h!29137 mapValue!12005)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15035 () Bool)

(assert (=> setIsEmpty!15035 setRes!15035))

(assert (= b!2123769 b!2123768))

(assert (= (and b!2123769 condSetEmpty!15035) setIsEmpty!15035))

(assert (= (and b!2123769 (not condSetEmpty!15035)) setNonEmpty!15035))

(assert (= setNonEmpty!15035 b!2123767))

(assert (= (and mapNonEmpty!12007 ((_ is Cons!23736) mapValue!12005)) b!2123769))

(declare-fun m!2576503 () Bool)

(assert (=> setNonEmpty!15035 m!2576503))

(declare-fun m!2576505 () Bool)

(assert (=> b!2123769 m!2576505))

(declare-fun tp!650599 () Bool)

(declare-fun b!2123778 () Bool)

(declare-fun tp!650598 () Bool)

(declare-fun e!1353139 () Bool)

(assert (=> b!2123778 (= e!1353139 (and (inv!31333 (left!18357 (c!339823 totalInput!886))) tp!650599 (inv!31333 (right!18687 (c!339823 totalInput!886))) tp!650598))))

(declare-fun b!2123780 () Bool)

(declare-fun e!1353138 () Bool)

(declare-fun tp!650597 () Bool)

(assert (=> b!2123780 (= e!1353138 tp!650597)))

(declare-fun b!2123779 () Bool)

(declare-fun inv!31337 (IArray!15623) Bool)

(assert (=> b!2123779 (= e!1353139 (and (inv!31337 (xs!10751 (c!339823 totalInput!886))) e!1353138))))

(assert (=> b!2123526 (= tp!650518 (and (inv!31333 (c!339823 totalInput!886)) e!1353139))))

(assert (= (and b!2123526 ((_ is Node!7809) (c!339823 totalInput!886))) b!2123778))

(assert (= b!2123779 b!2123780))

(assert (= (and b!2123526 ((_ is Leaf!11412) (c!339823 totalInput!886))) b!2123779))

(declare-fun m!2576507 () Bool)

(assert (=> b!2123778 m!2576507))

(declare-fun m!2576509 () Bool)

(assert (=> b!2123778 m!2576509))

(declare-fun m!2576511 () Bool)

(assert (=> b!2123779 m!2576511))

(assert (=> b!2123526 m!2576355))

(declare-fun e!1353142 () Bool)

(assert (=> b!2123510 (= tp!650526 e!1353142)))

(declare-fun b!2123781 () Bool)

(declare-fun e!1353140 () Bool)

(declare-fun tp!650602 () Bool)

(assert (=> b!2123781 (= e!1353140 tp!650602)))

(declare-fun b!2123782 () Bool)

(declare-fun e!1353141 () Bool)

(declare-fun tp!650600 () Bool)

(assert (=> b!2123782 (= e!1353141 tp!650600)))

(declare-fun setRes!15036 () Bool)

(declare-fun setNonEmpty!15036 () Bool)

(declare-fun tp!650601 () Bool)

(declare-fun setElem!15036 () Context!2482)

(assert (=> setNonEmpty!15036 (= setRes!15036 (and tp!650601 (inv!31334 setElem!15036) e!1353140))))

(declare-fun setRest!15036 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15036 (= (_2!13621 (h!29137 mapDefault!12007)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15036 true) setRest!15036))))

(declare-fun b!2123783 () Bool)

(declare-fun tp!650603 () Bool)

(assert (=> b!2123783 (= e!1353142 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 mapDefault!12007)))) e!1353141 tp_is_empty!9493 setRes!15036 tp!650603))))

(declare-fun condSetEmpty!15036 () Bool)

(assert (=> b!2123783 (= condSetEmpty!15036 (= (_2!13621 (h!29137 mapDefault!12007)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15036 () Bool)

(assert (=> setIsEmpty!15036 setRes!15036))

(assert (= b!2123783 b!2123782))

(assert (= (and b!2123783 condSetEmpty!15036) setIsEmpty!15036))

(assert (= (and b!2123783 (not condSetEmpty!15036)) setNonEmpty!15036))

(assert (= setNonEmpty!15036 b!2123781))

(assert (= (and b!2123510 ((_ is Cons!23736) mapDefault!12007)) b!2123783))

(declare-fun m!2576513 () Bool)

(assert (=> setNonEmpty!15036 m!2576513))

(declare-fun m!2576515 () Bool)

(assert (=> b!2123783 m!2576515))

(declare-fun condSetEmpty!15039 () Bool)

(assert (=> setNonEmpty!15010 (= condSetEmpty!15039 (= setRest!15010 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15039 () Bool)

(assert (=> setNonEmpty!15010 setRes!15039))

(declare-fun setIsEmpty!15039 () Bool)

(assert (=> setIsEmpty!15039 setRes!15039))

(declare-fun setNonEmpty!15039 () Bool)

(assert (=> setNonEmpty!15039 (= setRes!15039 true)))

(declare-fun setElem!15039 () Context!2482)

(declare-fun setRest!15039 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15039 (= setRest!15010 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15039 true) setRest!15039))))

(assert (= (and setNonEmpty!15010 condSetEmpty!15039) setIsEmpty!15039))

(assert (= (and setNonEmpty!15010 (not condSetEmpty!15039)) setNonEmpty!15039))

(declare-fun condSetEmpty!15042 () Bool)

(assert (=> setNonEmpty!15007 (= condSetEmpty!15042 (= setRest!15007 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15042 () Bool)

(assert (=> setNonEmpty!15007 (= tp!650523 setRes!15042)))

(declare-fun setIsEmpty!15042 () Bool)

(assert (=> setIsEmpty!15042 setRes!15042))

(declare-fun tp!650609 () Bool)

(declare-fun setNonEmpty!15042 () Bool)

(declare-fun setElem!15042 () Context!2482)

(declare-fun e!1353145 () Bool)

(assert (=> setNonEmpty!15042 (= setRes!15042 (and tp!650609 (inv!31334 setElem!15042) e!1353145))))

(declare-fun setRest!15042 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15042 (= setRest!15007 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15042 true) setRest!15042))))

(declare-fun b!2123790 () Bool)

(declare-fun tp!650608 () Bool)

(assert (=> b!2123790 (= e!1353145 tp!650608)))

(assert (= (and setNonEmpty!15007 condSetEmpty!15042) setIsEmpty!15042))

(assert (= (and setNonEmpty!15007 (not condSetEmpty!15042)) setNonEmpty!15042))

(assert (= setNonEmpty!15042 b!2123790))

(declare-fun m!2576517 () Bool)

(assert (=> setNonEmpty!15042 m!2576517))

(declare-fun setNonEmpty!15047 () Bool)

(declare-fun setRes!15048 () Bool)

(assert (=> setNonEmpty!15047 (= setRes!15048 true)))

(declare-fun mapValue!12024 () List!23820)

(declare-fun setElem!15047 () Context!2482)

(declare-fun setRest!15048 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15047 (= (_2!13621 (h!29137 mapValue!12024)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15047 true) setRest!15048))))

(declare-fun b!2123797 () Bool)

(declare-fun e!1353150 () Bool)

(declare-fun setRes!15047 () Bool)

(assert (=> b!2123797 (= e!1353150 setRes!15047)))

(declare-fun condSetEmpty!15048 () Bool)

(declare-fun mapDefault!12024 () List!23820)

(assert (=> b!2123797 (= condSetEmpty!15048 (= (_2!13621 (h!29137 mapDefault!12024)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15047 () Bool)

(assert (=> setIsEmpty!15047 setRes!15048))

(declare-fun condMapEmpty!12024 () Bool)

(assert (=> mapNonEmpty!12013 (= condMapEmpty!12024 (= mapRest!12013 ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12024)))))

(declare-fun mapRes!12024 () Bool)

(assert (=> mapNonEmpty!12013 (and e!1353150 mapRes!12024)))

(declare-fun b!2123798 () Bool)

(declare-fun e!1353151 () Bool)

(assert (=> b!2123798 (= e!1353151 setRes!15048)))

(declare-fun condSetEmpty!15047 () Bool)

(assert (=> b!2123798 (= condSetEmpty!15047 (= (_2!13621 (h!29137 mapValue!12024)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun mapNonEmpty!12024 () Bool)

(assert (=> mapNonEmpty!12024 (= mapRes!12024 e!1353151)))

(declare-fun mapKey!12024 () (_ BitVec 32))

(declare-fun mapRest!12024 () (Array (_ BitVec 32) List!23820))

(assert (=> mapNonEmpty!12024 (= mapRest!12013 (store mapRest!12024 mapKey!12024 mapValue!12024))))

(declare-fun mapIsEmpty!12024 () Bool)

(assert (=> mapIsEmpty!12024 mapRes!12024))

(declare-fun setIsEmpty!15048 () Bool)

(assert (=> setIsEmpty!15048 setRes!15047))

(declare-fun setNonEmpty!15048 () Bool)

(assert (=> setNonEmpty!15048 (= setRes!15047 true)))

(declare-fun setElem!15048 () Context!2482)

(declare-fun setRest!15047 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15048 (= (_2!13621 (h!29137 mapDefault!12024)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15048 true) setRest!15047))))

(assert (= (and mapNonEmpty!12013 condMapEmpty!12024) mapIsEmpty!12024))

(assert (= (and mapNonEmpty!12013 (not condMapEmpty!12024)) mapNonEmpty!12024))

(assert (= (and b!2123798 condSetEmpty!15047) setIsEmpty!15047))

(assert (= (and b!2123798 (not condSetEmpty!15047)) setNonEmpty!15047))

(assert (= (and mapNonEmpty!12024 ((_ is Cons!23736) mapValue!12024)) b!2123798))

(assert (= (and b!2123797 condSetEmpty!15048) setIsEmpty!15048))

(assert (= (and b!2123797 (not condSetEmpty!15048)) setNonEmpty!15048))

(assert (= (and mapNonEmpty!12013 ((_ is Cons!23736) mapDefault!12024)) b!2123797))

(declare-fun m!2576519 () Bool)

(assert (=> mapNonEmpty!12024 m!2576519))

(declare-fun b!2123803 () Bool)

(declare-fun e!1353154 () Bool)

(declare-fun setRes!15051 () Bool)

(assert (=> b!2123803 (= e!1353154 setRes!15051)))

(declare-fun condSetEmpty!15051 () Bool)

(assert (=> b!2123803 (= condSetEmpty!15051 (= (_2!13621 (h!29137 mapValue!12013)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15051 () Bool)

(assert (=> setIsEmpty!15051 setRes!15051))

(declare-fun setNonEmpty!15051 () Bool)

(assert (=> setNonEmpty!15051 (= setRes!15051 true)))

(declare-fun setElem!15051 () Context!2482)

(declare-fun setRest!15051 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15051 (= (_2!13621 (h!29137 mapValue!12013)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15051 true) setRest!15051))))

(assert (=> mapNonEmpty!12013 e!1353154))

(assert (= (and b!2123803 condSetEmpty!15051) setIsEmpty!15051))

(assert (= (and b!2123803 (not condSetEmpty!15051)) setNonEmpty!15051))

(assert (= (and mapNonEmpty!12013 ((_ is Cons!23736) mapValue!12013)) b!2123803))

(declare-fun mapNonEmpty!12027 () Bool)

(declare-fun mapRes!12027 () Bool)

(declare-fun tp!650634 () Bool)

(declare-fun e!1353168 () Bool)

(assert (=> mapNonEmpty!12027 (= mapRes!12027 (and tp!650634 e!1353168))))

(declare-fun mapRest!12027 () (Array (_ BitVec 32) List!23819))

(declare-fun mapValue!12027 () List!23819)

(declare-fun mapKey!12027 () (_ BitVec 32))

(assert (=> mapNonEmpty!12027 (= mapRest!12005 (store mapRest!12027 mapKey!12027 mapValue!12027))))

(declare-fun b!2123818 () Bool)

(declare-fun tp!650641 () Bool)

(declare-fun mapDefault!12027 () List!23819)

(declare-fun e!1353172 () Bool)

(declare-fun e!1353170 () Bool)

(declare-fun setRes!15057 () Bool)

(declare-fun tp!650635 () Bool)

(assert (=> b!2123818 (= e!1353170 (and tp!650641 (inv!31334 (_2!13618 (_1!13619 (h!29136 mapDefault!12027)))) e!1353172 tp_is_empty!9493 setRes!15057 tp!650635))))

(declare-fun condSetEmpty!15056 () Bool)

(assert (=> b!2123818 (= condSetEmpty!15056 (= (_2!13619 (h!29136 mapDefault!12027)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun mapIsEmpty!12027 () Bool)

(assert (=> mapIsEmpty!12027 mapRes!12027))

(declare-fun b!2123819 () Bool)

(declare-fun e!1353171 () Bool)

(declare-fun tp!650640 () Bool)

(declare-fun tp!650637 () Bool)

(declare-fun setRes!15056 () Bool)

(assert (=> b!2123819 (= e!1353168 (and tp!650637 (inv!31334 (_2!13618 (_1!13619 (h!29136 mapValue!12027)))) e!1353171 tp_is_empty!9493 setRes!15056 tp!650640))))

(declare-fun condSetEmpty!15057 () Bool)

(assert (=> b!2123819 (= condSetEmpty!15057 (= (_2!13619 (h!29136 mapValue!12027)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2123820 () Bool)

(declare-fun e!1353169 () Bool)

(declare-fun tp!650642 () Bool)

(assert (=> b!2123820 (= e!1353169 tp!650642)))

(declare-fun setIsEmpty!15056 () Bool)

(assert (=> setIsEmpty!15056 setRes!15056))

(declare-fun condMapEmpty!12027 () Bool)

(assert (=> mapNonEmpty!12005 (= condMapEmpty!12027 (= mapRest!12005 ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12027)))))

(assert (=> mapNonEmpty!12005 (= tp!650517 (and e!1353170 mapRes!12027))))

(declare-fun tp!650632 () Bool)

(declare-fun setElem!15056 () Context!2482)

(declare-fun setNonEmpty!15056 () Bool)

(assert (=> setNonEmpty!15056 (= setRes!15056 (and tp!650632 (inv!31334 setElem!15056) e!1353169))))

(declare-fun setRest!15056 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15056 (= (_2!13619 (h!29136 mapValue!12027)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15056 true) setRest!15056))))

(declare-fun setNonEmpty!15057 () Bool)

(declare-fun setElem!15057 () Context!2482)

(declare-fun e!1353167 () Bool)

(declare-fun tp!650638 () Bool)

(assert (=> setNonEmpty!15057 (= setRes!15057 (and tp!650638 (inv!31334 setElem!15057) e!1353167))))

(declare-fun setRest!15057 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15057 (= (_2!13619 (h!29136 mapDefault!12027)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15057 true) setRest!15057))))

(declare-fun setIsEmpty!15057 () Bool)

(assert (=> setIsEmpty!15057 setRes!15057))

(declare-fun b!2123821 () Bool)

(declare-fun tp!650639 () Bool)

(assert (=> b!2123821 (= e!1353167 tp!650639)))

(declare-fun b!2123822 () Bool)

(declare-fun tp!650636 () Bool)

(assert (=> b!2123822 (= e!1353171 tp!650636)))

(declare-fun b!2123823 () Bool)

(declare-fun tp!650633 () Bool)

(assert (=> b!2123823 (= e!1353172 tp!650633)))

(assert (= (and mapNonEmpty!12005 condMapEmpty!12027) mapIsEmpty!12027))

(assert (= (and mapNonEmpty!12005 (not condMapEmpty!12027)) mapNonEmpty!12027))

(assert (= b!2123819 b!2123822))

(assert (= (and b!2123819 condSetEmpty!15057) setIsEmpty!15056))

(assert (= (and b!2123819 (not condSetEmpty!15057)) setNonEmpty!15056))

(assert (= setNonEmpty!15056 b!2123820))

(assert (= (and mapNonEmpty!12027 ((_ is Cons!23735) mapValue!12027)) b!2123819))

(assert (= b!2123818 b!2123823))

(assert (= (and b!2123818 condSetEmpty!15056) setIsEmpty!15057))

(assert (= (and b!2123818 (not condSetEmpty!15056)) setNonEmpty!15057))

(assert (= setNonEmpty!15057 b!2123821))

(assert (= (and mapNonEmpty!12005 ((_ is Cons!23735) mapDefault!12027)) b!2123818))

(declare-fun m!2576521 () Bool)

(assert (=> b!2123818 m!2576521))

(declare-fun m!2576523 () Bool)

(assert (=> mapNonEmpty!12027 m!2576523))

(declare-fun m!2576525 () Bool)

(assert (=> setNonEmpty!15057 m!2576525))

(declare-fun m!2576527 () Bool)

(assert (=> setNonEmpty!15056 m!2576527))

(declare-fun m!2576529 () Bool)

(assert (=> b!2123819 m!2576529))

(declare-fun e!1353180 () Bool)

(assert (=> mapNonEmpty!12005 (= tp!650504 e!1353180)))

(declare-fun b!2123832 () Bool)

(declare-fun e!1353179 () Bool)

(declare-fun tp!650657 () Bool)

(assert (=> b!2123832 (= e!1353179 tp!650657)))

(declare-fun setElem!15060 () Context!2482)

(declare-fun setRes!15060 () Bool)

(declare-fun setNonEmpty!15060 () Bool)

(declare-fun tp!650653 () Bool)

(assert (=> setNonEmpty!15060 (= setRes!15060 (and tp!650653 (inv!31334 setElem!15060) e!1353179))))

(declare-fun setRest!15060 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15060 (= (_2!13619 (h!29136 mapValue!12006)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15060 true) setRest!15060))))

(declare-fun setIsEmpty!15060 () Bool)

(assert (=> setIsEmpty!15060 setRes!15060))

(declare-fun b!2123833 () Bool)

(declare-fun e!1353181 () Bool)

(declare-fun tp!650655 () Bool)

(assert (=> b!2123833 (= e!1353181 tp!650655)))

(declare-fun b!2123834 () Bool)

(declare-fun tp!650656 () Bool)

(declare-fun tp!650654 () Bool)

(assert (=> b!2123834 (= e!1353180 (and tp!650656 (inv!31334 (_2!13618 (_1!13619 (h!29136 mapValue!12006)))) e!1353181 tp_is_empty!9493 setRes!15060 tp!650654))))

(declare-fun condSetEmpty!15060 () Bool)

(assert (=> b!2123834 (= condSetEmpty!15060 (= (_2!13619 (h!29136 mapValue!12006)) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2123834 b!2123833))

(assert (= (and b!2123834 condSetEmpty!15060) setIsEmpty!15060))

(assert (= (and b!2123834 (not condSetEmpty!15060)) setNonEmpty!15060))

(assert (= setNonEmpty!15060 b!2123832))

(assert (= (and mapNonEmpty!12005 ((_ is Cons!23735) mapValue!12006)) b!2123834))

(declare-fun m!2576531 () Bool)

(assert (=> setNonEmpty!15060 m!2576531))

(declare-fun m!2576533 () Bool)

(assert (=> b!2123834 m!2576533))

(declare-fun tp!650659 () Bool)

(declare-fun tp!650660 () Bool)

(declare-fun e!1353183 () Bool)

(declare-fun b!2123835 () Bool)

(assert (=> b!2123835 (= e!1353183 (and (inv!31333 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) tp!650660 (inv!31333 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) tp!650659))))

(declare-fun b!2123837 () Bool)

(declare-fun e!1353182 () Bool)

(declare-fun tp!650658 () Bool)

(assert (=> b!2123837 (= e!1353182 tp!650658)))

(declare-fun b!2123836 () Bool)

(assert (=> b!2123836 (= e!1353183 (and (inv!31337 (xs!10751 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) e!1353182))))

(assert (=> b!2123513 (= tp!650505 (and (inv!31333 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) e!1353183))))

(assert (= (and b!2123513 ((_ is Node!7809) (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) b!2123835))

(assert (= b!2123836 b!2123837))

(assert (= (and b!2123513 ((_ is Leaf!11412) (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) b!2123836))

(declare-fun m!2576535 () Bool)

(assert (=> b!2123835 m!2576535))

(declare-fun m!2576537 () Bool)

(assert (=> b!2123835 m!2576537))

(declare-fun m!2576539 () Bool)

(assert (=> b!2123836 m!2576539))

(assert (=> b!2123513 m!2576353))

(declare-fun e!1353185 () Bool)

(assert (=> b!2123515 (= tp!650525 e!1353185)))

(declare-fun b!2123838 () Bool)

(declare-fun e!1353184 () Bool)

(declare-fun tp!650665 () Bool)

(assert (=> b!2123838 (= e!1353184 tp!650665)))

(declare-fun tp!650661 () Bool)

(declare-fun setNonEmpty!15061 () Bool)

(declare-fun setRes!15061 () Bool)

(declare-fun setElem!15061 () Context!2482)

(assert (=> setNonEmpty!15061 (= setRes!15061 (and tp!650661 (inv!31334 setElem!15061) e!1353184))))

(declare-fun setRest!15061 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15061 (= (_2!13619 (h!29136 mapDefault!12005)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15061 true) setRest!15061))))

(declare-fun setIsEmpty!15061 () Bool)

(assert (=> setIsEmpty!15061 setRes!15061))

(declare-fun b!2123839 () Bool)

(declare-fun e!1353186 () Bool)

(declare-fun tp!650663 () Bool)

(assert (=> b!2123839 (= e!1353186 tp!650663)))

(declare-fun b!2123840 () Bool)

(declare-fun tp!650662 () Bool)

(declare-fun tp!650664 () Bool)

(assert (=> b!2123840 (= e!1353185 (and tp!650664 (inv!31334 (_2!13618 (_1!13619 (h!29136 mapDefault!12005)))) e!1353186 tp_is_empty!9493 setRes!15061 tp!650662))))

(declare-fun condSetEmpty!15061 () Bool)

(assert (=> b!2123840 (= condSetEmpty!15061 (= (_2!13619 (h!29136 mapDefault!12005)) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2123840 b!2123839))

(assert (= (and b!2123840 condSetEmpty!15061) setIsEmpty!15061))

(assert (= (and b!2123840 (not condSetEmpty!15061)) setNonEmpty!15061))

(assert (= setNonEmpty!15061 b!2123838))

(assert (= (and b!2123515 ((_ is Cons!23735) mapDefault!12005)) b!2123840))

(declare-fun m!2576541 () Bool)

(assert (=> setNonEmpty!15061 m!2576541))

(declare-fun m!2576543 () Bool)

(assert (=> b!2123840 m!2576543))

(declare-fun e!1353188 () Bool)

(assert (=> b!2123496 (= tp!650507 e!1353188)))

(declare-fun b!2123841 () Bool)

(declare-fun e!1353187 () Bool)

(declare-fun tp!650670 () Bool)

(assert (=> b!2123841 (= e!1353187 tp!650670)))

(declare-fun setNonEmpty!15062 () Bool)

(declare-fun setRes!15062 () Bool)

(declare-fun setElem!15062 () Context!2482)

(declare-fun tp!650666 () Bool)

(assert (=> setNonEmpty!15062 (= setRes!15062 (and tp!650666 (inv!31334 setElem!15062) e!1353187))))

(declare-fun setRest!15062 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15062 (= (_2!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15062 true) setRest!15062))))

(declare-fun setIsEmpty!15062 () Bool)

(assert (=> setIsEmpty!15062 setRes!15062))

(declare-fun b!2123842 () Bool)

(declare-fun e!1353189 () Bool)

(declare-fun tp!650668 () Bool)

(assert (=> b!2123842 (= e!1353189 tp!650668)))

(declare-fun b!2123843 () Bool)

(declare-fun tp!650669 () Bool)

(declare-fun tp!650667 () Bool)

(assert (=> b!2123843 (= e!1353188 (and tp!650669 (inv!31334 (_2!13618 (_1!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))))) e!1353189 tp_is_empty!9493 setRes!15062 tp!650667))))

(declare-fun condSetEmpty!15062 () Bool)

(assert (=> b!2123843 (= condSetEmpty!15062 (= (_2!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2123843 b!2123842))

(assert (= (and b!2123843 condSetEmpty!15062) setIsEmpty!15062))

(assert (= (and b!2123843 (not condSetEmpty!15062)) setNonEmpty!15062))

(assert (= setNonEmpty!15062 b!2123841))

(assert (= (and b!2123496 ((_ is Cons!23735) (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))) b!2123843))

(declare-fun m!2576545 () Bool)

(assert (=> setNonEmpty!15062 m!2576545))

(declare-fun m!2576547 () Bool)

(assert (=> b!2123843 m!2576547))

(declare-fun e!1353191 () Bool)

(assert (=> b!2123496 (= tp!650510 e!1353191)))

(declare-fun b!2123844 () Bool)

(declare-fun e!1353190 () Bool)

(declare-fun tp!650675 () Bool)

(assert (=> b!2123844 (= e!1353190 tp!650675)))

(declare-fun setNonEmpty!15063 () Bool)

(declare-fun setRes!15063 () Bool)

(declare-fun setElem!15063 () Context!2482)

(declare-fun tp!650671 () Bool)

(assert (=> setNonEmpty!15063 (= setRes!15063 (and tp!650671 (inv!31334 setElem!15063) e!1353190))))

(declare-fun setRest!15063 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15063 (= (_2!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15063 true) setRest!15063))))

(declare-fun setIsEmpty!15063 () Bool)

(assert (=> setIsEmpty!15063 setRes!15063))

(declare-fun b!2123845 () Bool)

(declare-fun e!1353192 () Bool)

(declare-fun tp!650673 () Bool)

(assert (=> b!2123845 (= e!1353192 tp!650673)))

(declare-fun tp!650672 () Bool)

(declare-fun tp!650674 () Bool)

(declare-fun b!2123846 () Bool)

(assert (=> b!2123846 (= e!1353191 (and tp!650674 (inv!31334 (_2!13618 (_1!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))))) e!1353192 tp_is_empty!9493 setRes!15063 tp!650672))))

(declare-fun condSetEmpty!15063 () Bool)

(assert (=> b!2123846 (= condSetEmpty!15063 (= (_2!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2123846 b!2123845))

(assert (= (and b!2123846 condSetEmpty!15063) setIsEmpty!15063))

(assert (= (and b!2123846 (not condSetEmpty!15063)) setNonEmpty!15063))

(assert (= setNonEmpty!15063 b!2123844))

(assert (= (and b!2123496 ((_ is Cons!23735) (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))) b!2123846))

(declare-fun m!2576549 () Bool)

(assert (=> setNonEmpty!15063 m!2576549))

(declare-fun m!2576551 () Bool)

(assert (=> b!2123846 m!2576551))

(declare-fun b!2123847 () Bool)

(declare-fun e!1353193 () Bool)

(declare-fun setRes!15064 () Bool)

(assert (=> b!2123847 (= e!1353193 setRes!15064)))

(declare-fun condSetEmpty!15064 () Bool)

(assert (=> b!2123847 (= condSetEmpty!15064 (= (_2!13621 (h!29137 mapDefault!12013)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15064 () Bool)

(assert (=> setIsEmpty!15064 setRes!15064))

(declare-fun setNonEmpty!15064 () Bool)

(assert (=> setNonEmpty!15064 (= setRes!15064 true)))

(declare-fun setElem!15064 () Context!2482)

(declare-fun setRest!15064 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15064 (= (_2!13621 (h!29137 mapDefault!12013)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15064 true) setRest!15064))))

(assert (=> b!2123566 e!1353193))

(assert (= (and b!2123847 condSetEmpty!15064) setIsEmpty!15064))

(assert (= (and b!2123847 (not condSetEmpty!15064)) setNonEmpty!15064))

(assert (= (and b!2123566 ((_ is Cons!23736) mapDefault!12013)) b!2123847))

(declare-fun b!2123848 () Bool)

(declare-fun e!1353194 () Bool)

(declare-fun setRes!15065 () Bool)

(assert (=> b!2123848 (= e!1353194 setRes!15065)))

(declare-fun condSetEmpty!15065 () Bool)

(assert (=> b!2123848 (= condSetEmpty!15065 (= (_2!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15065 () Bool)

(assert (=> setIsEmpty!15065 setRes!15065))

(declare-fun setNonEmpty!15065 () Bool)

(assert (=> setNonEmpty!15065 (= setRes!15065 true)))

(declare-fun setElem!15065 () Context!2482)

(declare-fun setRest!15065 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15065 (= (_2!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15065 true) setRest!15065))))

(assert (=> b!2123571 e!1353194))

(assert (= (and b!2123848 condSetEmpty!15065) setIsEmpty!15065))

(assert (= (and b!2123848 (not condSetEmpty!15065)) setNonEmpty!15065))

(assert (= (and b!2123571 ((_ is Cons!23735) (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247))))))))) b!2123848))

(declare-fun b!2123849 () Bool)

(declare-fun e!1353195 () Bool)

(declare-fun setRes!15066 () Bool)

(assert (=> b!2123849 (= e!1353195 setRes!15066)))

(declare-fun condSetEmpty!15066 () Bool)

(assert (=> b!2123849 (= condSetEmpty!15066 (= (_2!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15066 () Bool)

(assert (=> setIsEmpty!15066 setRes!15066))

(declare-fun setNonEmpty!15066 () Bool)

(assert (=> setNonEmpty!15066 (= setRes!15066 true)))

(declare-fun setElem!15066 () Context!2482)

(declare-fun setRest!15066 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15066 (= (_2!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15066 true) setRest!15066))))

(assert (=> b!2123571 e!1353195))

(assert (= (and b!2123849 condSetEmpty!15066) setIsEmpty!15066))

(assert (= (and b!2123849 (not condSetEmpty!15066)) setNonEmpty!15066))

(assert (= (and b!2123571 ((_ is Cons!23735) (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247))))))))) b!2123849))

(declare-fun tp!650677 () Bool)

(declare-fun b!2123850 () Bool)

(declare-fun tp!650678 () Bool)

(declare-fun e!1353197 () Bool)

(assert (=> b!2123850 (= e!1353197 (and (inv!31333 (left!18357 (c!339823 input!5507))) tp!650678 (inv!31333 (right!18687 (c!339823 input!5507))) tp!650677))))

(declare-fun b!2123852 () Bool)

(declare-fun e!1353196 () Bool)

(declare-fun tp!650676 () Bool)

(assert (=> b!2123852 (= e!1353196 tp!650676)))

(declare-fun b!2123851 () Bool)

(assert (=> b!2123851 (= e!1353197 (and (inv!31337 (xs!10751 (c!339823 input!5507))) e!1353196))))

(assert (=> b!2123500 (= tp!650506 (and (inv!31333 (c!339823 input!5507)) e!1353197))))

(assert (= (and b!2123500 ((_ is Node!7809) (c!339823 input!5507))) b!2123850))

(assert (= b!2123851 b!2123852))

(assert (= (and b!2123500 ((_ is Leaf!11412) (c!339823 input!5507))) b!2123851))

(declare-fun m!2576553 () Bool)

(assert (=> b!2123850 m!2576553))

(declare-fun m!2576555 () Bool)

(assert (=> b!2123850 m!2576555))

(declare-fun m!2576557 () Bool)

(assert (=> b!2123851 m!2576557))

(assert (=> b!2123500 m!2576313))

(declare-fun mapNonEmpty!12030 () Bool)

(declare-fun mapRes!12030 () Bool)

(declare-fun tp!650699 () Bool)

(declare-fun e!1353209 () Bool)

(assert (=> mapNonEmpty!12030 (= mapRes!12030 (and tp!650699 e!1353209))))

(declare-fun mapKey!12030 () (_ BitVec 32))

(declare-fun mapValue!12030 () List!23823)

(declare-fun mapRest!12030 () (Array (_ BitVec 32) List!23823))

(assert (=> mapNonEmpty!12030 (= mapRest!12007 (store mapRest!12030 mapKey!12030 mapValue!12030))))

(declare-fun setNonEmpty!15071 () Bool)

(declare-fun setElem!15071 () Context!2482)

(declare-fun tp!650695 () Bool)

(declare-fun setRes!15072 () Bool)

(declare-fun e!1353206 () Bool)

(assert (=> setNonEmpty!15071 (= setRes!15072 (and tp!650695 (inv!31334 setElem!15071) e!1353206))))

(declare-fun setRest!15071 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15071 (= (_1!13624 (_1!13625 (h!29140 mapValue!12030))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15071 true) setRest!15071))))

(declare-fun b!2123863 () Bool)

(declare-fun tp!650693 () Bool)

(assert (=> b!2123863 (= e!1353209 (and setRes!15072 tp!650693))))

(declare-fun condSetEmpty!15071 () Bool)

(assert (=> b!2123863 (= condSetEmpty!15071 (= (_1!13624 (_1!13625 (h!29140 mapValue!12030))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2123864 () Bool)

(declare-fun e!1353207 () Bool)

(declare-fun setRes!15071 () Bool)

(declare-fun tp!650698 () Bool)

(assert (=> b!2123864 (= e!1353207 (and setRes!15071 tp!650698))))

(declare-fun condSetEmpty!15072 () Bool)

(declare-fun mapDefault!12030 () List!23823)

(assert (=> b!2123864 (= condSetEmpty!15072 (= (_1!13624 (_1!13625 (h!29140 mapDefault!12030))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun mapIsEmpty!12030 () Bool)

(assert (=> mapIsEmpty!12030 mapRes!12030))

(declare-fun setIsEmpty!15072 () Bool)

(assert (=> setIsEmpty!15072 setRes!15071))

(declare-fun b!2123865 () Bool)

(declare-fun e!1353208 () Bool)

(declare-fun tp!650696 () Bool)

(assert (=> b!2123865 (= e!1353208 tp!650696)))

(declare-fun setElem!15072 () Context!2482)

(declare-fun setNonEmpty!15072 () Bool)

(declare-fun tp!650697 () Bool)

(assert (=> setNonEmpty!15072 (= setRes!15071 (and tp!650697 (inv!31334 setElem!15072) e!1353208))))

(declare-fun setRest!15072 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15072 (= (_1!13624 (_1!13625 (h!29140 mapDefault!12030))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15072 true) setRest!15072))))

(declare-fun b!2123866 () Bool)

(declare-fun tp!650694 () Bool)

(assert (=> b!2123866 (= e!1353206 tp!650694)))

(declare-fun condMapEmpty!12030 () Bool)

(assert (=> mapNonEmpty!12006 (= condMapEmpty!12030 (= mapRest!12007 ((as const (Array (_ BitVec 32) List!23823)) mapDefault!12030)))))

(assert (=> mapNonEmpty!12006 (= tp!650520 (and e!1353207 mapRes!12030))))

(declare-fun setIsEmpty!15071 () Bool)

(assert (=> setIsEmpty!15071 setRes!15072))

(assert (= (and mapNonEmpty!12006 condMapEmpty!12030) mapIsEmpty!12030))

(assert (= (and mapNonEmpty!12006 (not condMapEmpty!12030)) mapNonEmpty!12030))

(assert (= (and b!2123863 condSetEmpty!15071) setIsEmpty!15071))

(assert (= (and b!2123863 (not condSetEmpty!15071)) setNonEmpty!15071))

(assert (= setNonEmpty!15071 b!2123866))

(assert (= (and mapNonEmpty!12030 ((_ is Cons!23739) mapValue!12030)) b!2123863))

(assert (= (and b!2123864 condSetEmpty!15072) setIsEmpty!15072))

(assert (= (and b!2123864 (not condSetEmpty!15072)) setNonEmpty!15072))

(assert (= setNonEmpty!15072 b!2123865))

(assert (= (and mapNonEmpty!12006 ((_ is Cons!23739) mapDefault!12030)) b!2123864))

(declare-fun m!2576559 () Bool)

(assert (=> mapNonEmpty!12030 m!2576559))

(declare-fun m!2576561 () Bool)

(assert (=> setNonEmpty!15071 m!2576561))

(declare-fun m!2576563 () Bool)

(assert (=> setNonEmpty!15072 m!2576563))

(declare-fun setIsEmpty!15073 () Bool)

(declare-fun setRes!15073 () Bool)

(assert (=> setIsEmpty!15073 setRes!15073))

(declare-fun setElem!15073 () Context!2482)

(declare-fun tp!650701 () Bool)

(declare-fun e!1353211 () Bool)

(declare-fun setNonEmpty!15073 () Bool)

(assert (=> setNonEmpty!15073 (= setRes!15073 (and tp!650701 (inv!31334 setElem!15073) e!1353211))))

(declare-fun setRest!15073 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15073 (= (_1!13624 (_1!13625 (h!29140 mapValue!12007))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15073 true) setRest!15073))))

(declare-fun e!1353210 () Bool)

(assert (=> mapNonEmpty!12006 (= tp!650528 e!1353210)))

(declare-fun b!2123868 () Bool)

(declare-fun tp!650702 () Bool)

(assert (=> b!2123868 (= e!1353211 tp!650702)))

(declare-fun b!2123867 () Bool)

(declare-fun tp!650700 () Bool)

(assert (=> b!2123867 (= e!1353210 (and setRes!15073 tp!650700))))

(declare-fun condSetEmpty!15073 () Bool)

(assert (=> b!2123867 (= condSetEmpty!15073 (= (_1!13624 (_1!13625 (h!29140 mapValue!12007))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2123867 condSetEmpty!15073) setIsEmpty!15073))

(assert (= (and b!2123867 (not condSetEmpty!15073)) setNonEmpty!15073))

(assert (= setNonEmpty!15073 b!2123868))

(assert (= (and mapNonEmpty!12006 ((_ is Cons!23739) mapValue!12007)) b!2123867))

(declare-fun m!2576565 () Bool)

(assert (=> setNonEmpty!15073 m!2576565))

(declare-fun setIsEmpty!15074 () Bool)

(declare-fun setRes!15074 () Bool)

(assert (=> setIsEmpty!15074 setRes!15074))

(declare-fun setElem!15074 () Context!2482)

(declare-fun tp!650704 () Bool)

(declare-fun setNonEmpty!15074 () Bool)

(declare-fun e!1353213 () Bool)

(assert (=> setNonEmpty!15074 (= setRes!15074 (and tp!650704 (inv!31334 setElem!15074) e!1353213))))

(declare-fun setRest!15074 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15074 (= (_1!13624 (_1!13625 (h!29140 (zeroValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15074 true) setRest!15074))))

(declare-fun e!1353212 () Bool)

(assert (=> b!2123519 (= tp!650527 e!1353212)))

(declare-fun b!2123870 () Bool)

(declare-fun tp!650705 () Bool)

(assert (=> b!2123870 (= e!1353213 tp!650705)))

(declare-fun b!2123869 () Bool)

(declare-fun tp!650703 () Bool)

(assert (=> b!2123869 (= e!1353212 (and setRes!15074 tp!650703))))

(declare-fun condSetEmpty!15074 () Bool)

(assert (=> b!2123869 (= condSetEmpty!15074 (= (_1!13624 (_1!13625 (h!29140 (zeroValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2123869 condSetEmpty!15074) setIsEmpty!15074))

(assert (= (and b!2123869 (not condSetEmpty!15074)) setNonEmpty!15074))

(assert (= setNonEmpty!15074 b!2123870))

(assert (= (and b!2123519 ((_ is Cons!23739) (zeroValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130)))))))) b!2123869))

(declare-fun m!2576567 () Bool)

(assert (=> setNonEmpty!15074 m!2576567))

(declare-fun setIsEmpty!15075 () Bool)

(declare-fun setRes!15075 () Bool)

(assert (=> setIsEmpty!15075 setRes!15075))

(declare-fun tp!650707 () Bool)

(declare-fun e!1353215 () Bool)

(declare-fun setElem!15075 () Context!2482)

(declare-fun setNonEmpty!15075 () Bool)

(assert (=> setNonEmpty!15075 (= setRes!15075 (and tp!650707 (inv!31334 setElem!15075) e!1353215))))

(declare-fun setRest!15075 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15075 (= (_1!13624 (_1!13625 (h!29140 (minValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15075 true) setRest!15075))))

(declare-fun e!1353214 () Bool)

(assert (=> b!2123519 (= tp!650514 e!1353214)))

(declare-fun b!2123872 () Bool)

(declare-fun tp!650708 () Bool)

(assert (=> b!2123872 (= e!1353215 tp!650708)))

(declare-fun b!2123871 () Bool)

(declare-fun tp!650706 () Bool)

(assert (=> b!2123871 (= e!1353214 (and setRes!15075 tp!650706))))

(declare-fun condSetEmpty!15075 () Bool)

(assert (=> b!2123871 (= condSetEmpty!15075 (= (_1!13624 (_1!13625 (h!29140 (minValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2123871 condSetEmpty!15075) setIsEmpty!15075))

(assert (= (and b!2123871 (not condSetEmpty!15075)) setNonEmpty!15075))

(assert (= setNonEmpty!15075 b!2123872))

(assert (= (and b!2123519 ((_ is Cons!23739) (minValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130)))))))) b!2123871))

(declare-fun m!2576569 () Bool)

(assert (=> setNonEmpty!15075 m!2576569))

(declare-fun b!2123879 () Bool)

(declare-fun e!1353221 () Bool)

(declare-fun e!1353220 () Bool)

(assert (=> b!2123879 (= e!1353221 e!1353220)))

(declare-fun b!2123880 () Bool)

(declare-fun setRes!15078 () Bool)

(assert (=> b!2123880 (= e!1353220 setRes!15078)))

(declare-fun condSetEmpty!15078 () Bool)

(assert (=> b!2123880 (= condSetEmpty!15078 (= (z!5735 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15078 () Bool)

(assert (=> setIsEmpty!15078 setRes!15078))

(assert (=> b!2123573 e!1353221))

(declare-fun setNonEmpty!15078 () Bool)

(assert (=> setNonEmpty!15078 (= setRes!15078 true)))

(declare-fun setElem!15078 () Context!2482)

(declare-fun setRest!15078 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15078 (= (z!5735 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15078 true) setRest!15078))))

(assert (= (and b!2123880 condSetEmpty!15078) setIsEmpty!15078))

(assert (= (and b!2123880 (not condSetEmpty!15078)) setNonEmpty!15078))

(assert (= b!2123879 b!2123880))

(assert (= (and b!2123573 ((_ is Cons!23738) (t!196341 (_2!13622 (_1!13623 lt!795247))))) b!2123879))

(declare-fun b!2123881 () Bool)

(declare-fun e!1353222 () Bool)

(declare-fun setRes!15079 () Bool)

(assert (=> b!2123881 (= e!1353222 setRes!15079)))

(declare-fun condSetEmpty!15079 () Bool)

(assert (=> b!2123881 (= condSetEmpty!15079 (= (_2!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15079 () Bool)

(assert (=> setIsEmpty!15079 setRes!15079))

(declare-fun setNonEmpty!15079 () Bool)

(assert (=> setNonEmpty!15079 (= setRes!15079 true)))

(declare-fun setElem!15079 () Context!2482)

(declare-fun setRest!15079 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15079 (= (_2!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15079 true) setRest!15079))))

(assert (=> b!2123572 e!1353222))

(assert (= (and b!2123881 condSetEmpty!15079) setIsEmpty!15079))

(assert (= (and b!2123881 (not condSetEmpty!15079)) setNonEmpty!15079))

(assert (= (and b!2123572 ((_ is Cons!23736) (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247))))))))) b!2123881))

(declare-fun b!2123882 () Bool)

(declare-fun e!1353223 () Bool)

(declare-fun setRes!15080 () Bool)

(assert (=> b!2123882 (= e!1353223 setRes!15080)))

(declare-fun condSetEmpty!15080 () Bool)

(assert (=> b!2123882 (= condSetEmpty!15080 (= (_2!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15080 () Bool)

(assert (=> setIsEmpty!15080 setRes!15080))

(declare-fun setNonEmpty!15080 () Bool)

(assert (=> setNonEmpty!15080 (= setRes!15080 true)))

(declare-fun setElem!15080 () Context!2482)

(declare-fun setRest!15080 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15080 (= (_2!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15080 true) setRest!15080))))

(assert (=> b!2123572 e!1353223))

(assert (= (and b!2123882 condSetEmpty!15080) setIsEmpty!15080))

(assert (= (and b!2123882 (not condSetEmpty!15080)) setNonEmpty!15080))

(assert (= (and b!2123572 ((_ is Cons!23736) (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247))))))))) b!2123882))

(declare-fun b_lambda!70485 () Bool)

(assert (= b_lambda!70483 (or b!2123497 b_lambda!70485)))

(declare-fun bs!442839 () Bool)

(declare-fun d!643645 () Bool)

(assert (= bs!442839 (and d!643645 b!2123497)))

(assert (=> bs!442839 (= (dynLambda!11344 lambda!78655 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (= (totalInput!2920 (h!29139 (_2!13622 (_1!13623 lt!795247)))) totalInput!886))))

(assert (=> b!2123668 d!643645))

(declare-fun b_lambda!70487 () Bool)

(assert (= b_lambda!70481 (or b!2123521 b_lambda!70487)))

(declare-fun bs!442840 () Bool)

(declare-fun d!643647 () Bool)

(assert (= bs!442840 (and d!643647 b!2123521)))

(assert (=> bs!442840 (= (dynLambda!11344 lambda!78654 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (= (res!919411 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (_1!13622 (_1!13623 lt!795247))))))

(assert (=> b!2123600 d!643647))

(check-sat (not setNonEmpty!15056) tp_is_empty!9493 (not b!2123832) (not setNonEmpty!15079) (not setNonEmpty!15074) (not b!2123689) (not b_lambda!70487) (not b!2123670) (not b!2123866) (not b!2123847) (not b!2123803) (not b!2123848) (not setNonEmpty!15020) (not b!2123780) (not b!2123716) (not d!643589) (not b!2123746) (not b!2123665) (not mapNonEmpty!12015) (not setNonEmpty!15048) (not b!2123818) (not b!2123781) (not b!2123838) (not b!2123763) (not b!2123669) (not b!2123733) (not b!2123879) (not d!643627) (not b!2123782) (not b!2123741) (not b!2123819) (not b_next!62417) (not b!2123844) (not b!2123636) (not b!2123843) (not setNonEmpty!15042) (not b!2123869) (not b!2123881) (not b!2123797) (not setNonEmpty!15057) (not d!643591) (not setNonEmpty!15062) (not b!2123823) (not setNonEmpty!15036) (not setNonEmpty!15021) (not setNonEmpty!15014) (not b!2123764) (not setNonEmpty!15028) (not setNonEmpty!15015) (not b!2123822) (not mapNonEmpty!12018) (not b_next!62419) (not setNonEmpty!15078) b_and!171289 (not d!643607) (not setNonEmpty!15075) (not b!2123845) (not setNonEmpty!15011) (not b!2123634) (not mapNonEmpty!12030) (not setNonEmpty!15072) (not b!2123500) (not setNonEmpty!15034) (not d!643617) (not setNonEmpty!15035) (not b!2123691) (not b!2123768) (not b!2123790) (not b!2123715) (not mapNonEmpty!12027) (not setNonEmpty!15061) (not b!2123865) (not b!2123601) (not setNonEmpty!15064) (not b!2123851) (not setNonEmpty!15073) (not b!2123717) (not b!2123870) (not setNonEmpty!15066) (not setNonEmpty!15024) (not setNonEmpty!15065) (not b!2123841) (not d!643625) (not b!2123714) (not b!2123657) (not bm!128701) (not b!2123779) (not b!2123672) (not b!2123863) (not bm!128702) (not b!2123840) (not b!2123652) (not b!2123693) (not b!2123673) b_and!171293 (not b!2123871) (not b!2123864) (not d!643641) b_and!171291 (not d!643629) (not d!643597) (not d!643643) (not b_next!62423) (not b!2123868) (not d!643631) (not d!643595) (not b!2123836) b_and!171295 (not setNonEmpty!15063) (not d!643587) (not b!2123692) (not mapNonEmpty!12024) (not setNonEmpty!15071) (not b!2123821) (not b!2123842) b_and!171297 (not setNonEmpty!15039) (not b!2123762) (not b!2123526) (not b!2123513) (not b_next!62415) (not b_next!62413) (not b!2123592) (not setNonEmpty!15025) (not bm!128703) (not b_lambda!70485) (not b!2123719) (not b!2123837) (not b!2123867) (not b!2123835) (not b!2123850) (not setNonEmpty!15080) (not b!2123629) (not b!2123732) (not b!2123726) (not b!2123852) (not b!2123690) (not b!2123705) (not b!2123699) (not setNonEmpty!15060) (not b!2123688) (not mapNonEmpty!12014) (not b!2123839) (not b!2123767) (not b!2123846) (not b!2123639) (not b_next!62421) (not b!2123667) (not b!2123646) (not b!2123637) (not b!2123631) (not b!2123833) (not setNonEmpty!15047) (not b!2123594) (not b!2123882) (not b!2123783) (not b!2123849) (not b!2123872) (not d!643585) b_and!171299 (not b!2123798) (not b!2123727) (not b!2123702) (not setNonEmpty!15033) (not b!2123696) (not setNonEmpty!15051) (not b!2123778) (not b!2123769) (not b!2123653) (not b!2123630) (not b!2123820) (not mapNonEmpty!12021) (not b!2123766) (not d!643639) (not b!2123761) (not b!2123718) (not b!2123675) (not b!2123834) (not b!2123765) (not b!2123651) (not b!2123740))
(check-sat (not b_next!62417) (not b_next!62419) b_and!171289 (not b_next!62423) b_and!171295 b_and!171297 (not b_next!62421) b_and!171299 b_and!171293 b_and!171291 (not b_next!62415) (not b_next!62413))
(get-model)

(declare-fun bs!442841 () Bool)

(declare-fun d!643649 () Bool)

(assert (= bs!442841 (and d!643649 d!643641)))

(declare-fun lambda!78681 () Int)

(assert (=> bs!442841 (= lambda!78681 lambda!78680)))

(assert (=> d!643649 (= (inv!31334 setElem!15033) (forall!4869 (exprs!1741 setElem!15033) lambda!78681))))

(declare-fun bs!442842 () Bool)

(assert (= bs!442842 d!643649))

(declare-fun m!2576571 () Bool)

(assert (=> bs!442842 m!2576571))

(assert (=> setNonEmpty!15034 d!643649))

(declare-fun d!643651 () Bool)

(declare-fun e!1353226 () Bool)

(assert (=> d!643651 e!1353226))

(declare-fun res!919483 () Bool)

(assert (=> d!643651 (=> (not res!919483) (not e!1353226))))

(declare-fun lt!795320 () tuple2!23372)

(assert (=> d!643651 (= res!919483 (validCacheMapFurthestNullable!96 (cache!2762 (_2!13626 lt!795320)) (totalInput!2921 (_2!13626 lt!795320))))))

(declare-fun choose!12666 (CacheFurthestNullable!596 (InoxSet Context!2482) Int Int Int BalanceConc!15380) tuple2!23372)

(assert (=> d!643651 (= lt!795320 (choose!12666 cacheFurthestNullable!130 (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (from!2630 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (lastNullablePos!317 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (_1!13622 (_1!13623 lt!795247)) totalInput!886))))

(assert (=> d!643651 (= totalInput!886 (totalInput!2921 cacheFurthestNullable!130))))

(assert (=> d!643651 (= (update!88 cacheFurthestNullable!130 (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (from!2630 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (lastNullablePos!317 (h!29139 (_2!13622 (_1!13623 lt!795247)))) (_1!13622 (_1!13623 lt!795247)) totalInput!886) lt!795320)))

(declare-fun b!2123885 () Bool)

(assert (=> b!2123885 (= e!1353226 (= (totalInput!2921 (_2!13626 lt!795320)) totalInput!886))))

(assert (= (and d!643651 res!919483) b!2123885))

(declare-fun m!2576573 () Bool)

(assert (=> d!643651 m!2576573))

(declare-fun m!2576575 () Bool)

(assert (=> d!643651 m!2576575))

(assert (=> b!2123592 d!643651))

(declare-fun d!643653 () Bool)

(assert (=> d!643653 (valid!1937 cacheFurthestNullable!130)))

(declare-fun Unit!37616 () Unit!37609)

(assert (=> d!643653 (= (lemmaInvariant!382 cacheFurthestNullable!130) Unit!37616)))

(declare-fun bs!442843 () Bool)

(assert (= bs!442843 d!643653))

(assert (=> bs!442843 m!2576311))

(assert (=> b!2123592 d!643653))

(declare-fun b!2123891 () Bool)

(assert (=> b!2123891 true))

(declare-fun d!643655 () Bool)

(declare-fun res!919488 () Bool)

(declare-fun e!1353229 () Bool)

(assert (=> d!643655 (=> (not res!919488) (not e!1353229))))

(declare-fun valid!1940 (MutableMap!2381) Bool)

(assert (=> d!643655 (= res!919488 (valid!1940 (cache!2762 cacheFurthestNullable!130)))))

(assert (=> d!643655 (= (validCacheMapFurthestNullable!96 (cache!2762 cacheFurthestNullable!130) (totalInput!2921 cacheFurthestNullable!130)) e!1353229)))

(declare-fun b!2123890 () Bool)

(declare-fun res!919489 () Bool)

(assert (=> b!2123890 (=> (not res!919489) (not e!1353229))))

(declare-fun invariantList!301 (List!23823) Bool)

(declare-datatypes ((ListMap!651 0))(
  ( (ListMap!652 (toList!1064 List!23823)) )
))
(declare-fun map!4836 (MutableMap!2381) ListMap!651)

(assert (=> b!2123890 (= res!919489 (invariantList!301 (toList!1064 (map!4836 (cache!2762 cacheFurthestNullable!130)))))))

(declare-fun lambda!78684 () Int)

(declare-fun forall!4870 (List!23823 Int) Bool)

(assert (=> b!2123891 (= e!1353229 (forall!4870 (toList!1064 (map!4836 (cache!2762 cacheFurthestNullable!130))) lambda!78684))))

(assert (= (and d!643655 res!919488) b!2123890))

(assert (= (and b!2123890 res!919489) b!2123891))

(declare-fun m!2576578 () Bool)

(assert (=> d!643655 m!2576578))

(declare-fun m!2576580 () Bool)

(assert (=> b!2123890 m!2576580))

(declare-fun m!2576582 () Bool)

(assert (=> b!2123890 m!2576582))

(assert (=> b!2123891 m!2576580))

(declare-fun m!2576584 () Bool)

(assert (=> b!2123891 m!2576584))

(assert (=> b!2123702 d!643655))

(declare-fun bs!442844 () Bool)

(declare-fun d!643657 () Bool)

(assert (= bs!442844 (and d!643657 d!643641)))

(declare-fun lambda!78685 () Int)

(assert (=> bs!442844 (= lambda!78685 lambda!78680)))

(declare-fun bs!442845 () Bool)

(assert (= bs!442845 (and d!643657 d!643649)))

(assert (=> bs!442845 (= lambda!78685 lambda!78681)))

(assert (=> d!643657 (= (inv!31334 (_2!13618 (_1!13619 (h!29136 mapValue!12006)))) (forall!4869 (exprs!1741 (_2!13618 (_1!13619 (h!29136 mapValue!12006)))) lambda!78685))))

(declare-fun bs!442846 () Bool)

(assert (= bs!442846 d!643657))

(declare-fun m!2576586 () Bool)

(assert (=> bs!442846 m!2576586))

(assert (=> b!2123834 d!643657))

(declare-fun bs!442847 () Bool)

(declare-fun d!643659 () Bool)

(assert (= bs!442847 (and d!643659 d!643641)))

(declare-fun lambda!78686 () Int)

(assert (=> bs!442847 (= lambda!78686 lambda!78680)))

(declare-fun bs!442848 () Bool)

(assert (= bs!442848 (and d!643659 d!643649)))

(assert (=> bs!442848 (= lambda!78686 lambda!78681)))

(declare-fun bs!442849 () Bool)

(assert (= bs!442849 (and d!643659 d!643657)))

(assert (=> bs!442849 (= lambda!78686 lambda!78685)))

(assert (=> d!643659 (= (inv!31334 setElem!15036) (forall!4869 (exprs!1741 setElem!15036) lambda!78686))))

(declare-fun bs!442850 () Bool)

(assert (= bs!442850 d!643659))

(declare-fun m!2576588 () Bool)

(assert (=> bs!442850 m!2576588))

(assert (=> setNonEmpty!15036 d!643659))

(assert (=> b!2123629 d!643589))

(declare-fun bs!442851 () Bool)

(declare-fun d!643661 () Bool)

(assert (= bs!442851 (and d!643661 b!2123497)))

(declare-fun lambda!78687 () Int)

(assert (=> bs!442851 (not (= lambda!78687 lambda!78655))))

(declare-fun bs!442852 () Bool)

(assert (= bs!442852 (and d!643661 b!2123521)))

(declare-fun lt!795328 () Int)

(assert (=> bs!442852 (= (= lt!795328 (_1!13622 (_1!13623 lt!795247))) (= lambda!78687 lambda!78654))))

(declare-fun bs!442853 () Bool)

(assert (= bs!442853 (and d!643661 b!2123639)))

(assert (=> bs!442853 (not (= lambda!78687 lambda!78677))))

(declare-fun bs!442854 () Bool)

(assert (= bs!442854 (and d!643661 d!643595)))

(assert (=> bs!442854 (= (= lt!795328 lt!795305) (= lambda!78687 lambda!78673))))

(declare-fun bs!442855 () Bool)

(assert (= bs!442855 (and d!643661 b!2123629)))

(assert (=> bs!442855 (= (= lt!795328 lt!795311) (= lambda!78687 lambda!78675))))

(declare-fun bs!442856 () Bool)

(assert (= bs!442856 (and d!643661 b!2123633)))

(assert (=> bs!442856 (= (= lt!795328 e!1352951) (= lambda!78687 lambda!78674))))

(declare-fun bs!442857 () Bool)

(assert (= bs!442857 (and d!643661 b!2123631)))

(assert (=> bs!442857 (= (= lt!795328 (_1!13622 (_1!13623 lt!795298))) (= lambda!78687 lambda!78676))))

(assert (=> d!643661 true))

(declare-fun bs!442858 () Bool)

(declare-fun b!2123899 () Bool)

(assert (= bs!442858 (and b!2123899 b!2123497)))

(declare-fun lambda!78688 () Int)

(assert (=> bs!442858 (not (= lambda!78688 lambda!78655))))

(declare-fun bs!442859 () Bool)

(assert (= bs!442859 (and b!2123899 b!2123521)))

(assert (=> bs!442859 (= (= lt!795308 (_1!13622 (_1!13623 lt!795247))) (= lambda!78688 lambda!78654))))

(declare-fun bs!442860 () Bool)

(assert (= bs!442860 (and b!2123899 b!2123639)))

(assert (=> bs!442860 (not (= lambda!78688 lambda!78677))))

(declare-fun bs!442861 () Bool)

(assert (= bs!442861 (and b!2123899 d!643595)))

(assert (=> bs!442861 (= (= lt!795308 lt!795305) (= lambda!78688 lambda!78673))))

(declare-fun bs!442862 () Bool)

(assert (= bs!442862 (and b!2123899 d!643661)))

(assert (=> bs!442862 (= (= lt!795308 lt!795328) (= lambda!78688 lambda!78687))))

(declare-fun bs!442863 () Bool)

(assert (= bs!442863 (and b!2123899 b!2123629)))

(assert (=> bs!442863 (= (= lt!795308 lt!795311) (= lambda!78688 lambda!78675))))

(declare-fun bs!442864 () Bool)

(assert (= bs!442864 (and b!2123899 b!2123633)))

(assert (=> bs!442864 (= (= lt!795308 e!1352951) (= lambda!78688 lambda!78674))))

(declare-fun bs!442865 () Bool)

(assert (= bs!442865 (and b!2123899 b!2123631)))

(assert (=> bs!442865 (= (= lt!795308 (_1!13622 (_1!13623 lt!795298))) (= lambda!78688 lambda!78676))))

(assert (=> b!2123899 true))

(declare-fun bs!442866 () Bool)

(declare-fun b!2123895 () Bool)

(assert (= bs!442866 (and b!2123895 b!2123497)))

(declare-fun lambda!78689 () Int)

(assert (=> bs!442866 (not (= lambda!78689 lambda!78655))))

(declare-fun bs!442867 () Bool)

(assert (= bs!442867 (and b!2123895 b!2123521)))

(declare-fun lt!795334 () Int)

(assert (=> bs!442867 (= (= lt!795334 (_1!13622 (_1!13623 lt!795247))) (= lambda!78689 lambda!78654))))

(declare-fun bs!442868 () Bool)

(assert (= bs!442868 (and b!2123895 b!2123639)))

(assert (=> bs!442868 (not (= lambda!78689 lambda!78677))))

(declare-fun bs!442869 () Bool)

(assert (= bs!442869 (and b!2123895 b!2123899)))

(assert (=> bs!442869 (= (= lt!795334 lt!795308) (= lambda!78689 lambda!78688))))

(declare-fun bs!442870 () Bool)

(assert (= bs!442870 (and b!2123895 d!643595)))

(assert (=> bs!442870 (= (= lt!795334 lt!795305) (= lambda!78689 lambda!78673))))

(declare-fun bs!442871 () Bool)

(assert (= bs!442871 (and b!2123895 d!643661)))

(assert (=> bs!442871 (= (= lt!795334 lt!795328) (= lambda!78689 lambda!78687))))

(declare-fun bs!442872 () Bool)

(assert (= bs!442872 (and b!2123895 b!2123629)))

(assert (=> bs!442872 (= (= lt!795334 lt!795311) (= lambda!78689 lambda!78675))))

(declare-fun bs!442873 () Bool)

(assert (= bs!442873 (and b!2123895 b!2123633)))

(assert (=> bs!442873 (= (= lt!795334 e!1352951) (= lambda!78689 lambda!78674))))

(declare-fun bs!442874 () Bool)

(assert (= bs!442874 (and b!2123895 b!2123631)))

(assert (=> bs!442874 (= (= lt!795334 (_1!13622 (_1!13623 lt!795298))) (= lambda!78689 lambda!78676))))

(assert (=> b!2123895 true))

(declare-fun bs!442875 () Bool)

(declare-fun b!2123897 () Bool)

(assert (= bs!442875 (and b!2123897 b!2123497)))

(declare-fun lambda!78690 () Int)

(assert (=> bs!442875 (not (= lambda!78690 lambda!78655))))

(declare-fun bs!442876 () Bool)

(assert (= bs!442876 (and b!2123897 b!2123521)))

(declare-fun lt!795321 () tuple3!2936)

(assert (=> bs!442876 (= (= (_1!13622 (_1!13623 lt!795321)) (_1!13622 (_1!13623 lt!795247))) (= lambda!78690 lambda!78654))))

(declare-fun bs!442877 () Bool)

(assert (= bs!442877 (and b!2123897 b!2123639)))

(assert (=> bs!442877 (not (= lambda!78690 lambda!78677))))

(declare-fun bs!442878 () Bool)

(assert (= bs!442878 (and b!2123897 b!2123899)))

(assert (=> bs!442878 (= (= (_1!13622 (_1!13623 lt!795321)) lt!795308) (= lambda!78690 lambda!78688))))

(declare-fun bs!442879 () Bool)

(assert (= bs!442879 (and b!2123897 d!643595)))

(assert (=> bs!442879 (= (= (_1!13622 (_1!13623 lt!795321)) lt!795305) (= lambda!78690 lambda!78673))))

(declare-fun bs!442880 () Bool)

(assert (= bs!442880 (and b!2123897 b!2123895)))

(assert (=> bs!442880 (= (= (_1!13622 (_1!13623 lt!795321)) lt!795334) (= lambda!78690 lambda!78689))))

(declare-fun bs!442881 () Bool)

(assert (= bs!442881 (and b!2123897 d!643661)))

(assert (=> bs!442881 (= (= (_1!13622 (_1!13623 lt!795321)) lt!795328) (= lambda!78690 lambda!78687))))

(declare-fun bs!442882 () Bool)

(assert (= bs!442882 (and b!2123897 b!2123629)))

(assert (=> bs!442882 (= (= (_1!13622 (_1!13623 lt!795321)) lt!795311) (= lambda!78690 lambda!78675))))

(declare-fun bs!442883 () Bool)

(assert (= bs!442883 (and b!2123897 b!2123633)))

(assert (=> bs!442883 (= (= (_1!13622 (_1!13623 lt!795321)) e!1352951) (= lambda!78690 lambda!78674))))

(declare-fun bs!442884 () Bool)

(assert (= bs!442884 (and b!2123897 b!2123631)))

(assert (=> bs!442884 (= (= (_1!13622 (_1!13623 lt!795321)) (_1!13622 (_1!13623 lt!795298))) (= lambda!78690 lambda!78676))))

(declare-fun b!2123907 () Bool)

(declare-fun e!1353243 () Bool)

(declare-fun e!1353250 () Bool)

(declare-fun lt!795335 () MutLongMap!2465)

(assert (=> b!2123907 (= e!1353243 (and e!1353250 ((_ is LongMap!2465) lt!795335)))))

(assert (=> b!2123907 (= lt!795335 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795321)))))))

(declare-fun b!2123908 () Bool)

(declare-fun e!1353242 () Bool)

(declare-fun e!1353247 () Bool)

(assert (=> b!2123908 (= e!1353242 e!1353247)))

(declare-fun b!2123909 () Bool)

(declare-fun e!1353236 () Bool)

(declare-fun e!1353239 () Bool)

(assert (=> b!2123909 (= e!1353236 e!1353239)))

(declare-fun b!2123910 () Bool)

(declare-fun e!1353241 () Bool)

(declare-fun mapRes!12032 () Bool)

(assert (=> b!2123910 (= e!1353241 mapRes!12032)))

(declare-fun condMapEmpty!12032 () Bool)

(declare-fun mapDefault!12032 () List!23820)

(assert (=> b!2123910 (= condMapEmpty!12032 (= (arr!3759 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795321)))))))) ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12032)))))

(declare-fun b!2123911 () Bool)

(declare-fun e!1353245 () Bool)

(assert (=> b!2123911 (= e!1353250 e!1353245)))

(declare-fun b!2123912 () Bool)

(declare-fun e!1353244 () Bool)

(assert (=> b!2123912 (= e!1353244 e!1353243)))

(declare-fun b!2123913 () Bool)

(declare-fun e!1353235 () Bool)

(declare-fun setRes!15081 () Bool)

(assert (=> b!2123913 (= e!1353235 setRes!15081)))

(declare-fun condSetEmpty!15081 () Bool)

(assert (=> b!2123913 (= condSetEmpty!15081 (= (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795321)))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2123914 () Bool)

(declare-fun lt!795336 () MutLongMap!2466)

(assert (=> b!2123914 (= e!1353239 (and e!1353242 ((_ is LongMap!2466) lt!795336)))))

(assert (=> b!2123914 (= lt!795336 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795321)))))))

(declare-fun b!2123915 () Bool)

(declare-fun e!1353240 () Bool)

(declare-fun e!1353248 () Bool)

(assert (=> b!2123915 (= e!1353240 e!1353248)))

(declare-fun b!2123916 () Bool)

(declare-fun e!1353246 () Bool)

(assert (=> b!2123916 (= e!1353246 e!1353241)))

(declare-fun b!2123917 () Bool)

(declare-fun e!1353249 () Bool)

(assert (=> b!2123917 (= e!1353249 e!1353235)))

(declare-fun mapIsEmpty!12031 () Bool)

(declare-fun mapRes!12031 () Bool)

(assert (=> mapIsEmpty!12031 mapRes!12031))

(declare-fun b!2123918 () Bool)

(assert (=> b!2123918 (= e!1353245 e!1353240)))

(declare-fun b!2123919 () Bool)

(declare-fun e!1353238 () Bool)

(assert (=> b!2123919 (= e!1353238 e!1353236)))

(declare-fun e!1353237 () Bool)

(assert (=> b!2123897 (and e!1353249 e!1353238 e!1353237)))

(declare-fun b!2123920 () Bool)

(assert (=> b!2123920 (= e!1353237 e!1353244)))

(declare-fun b!2123921 () Bool)

(assert (=> b!2123921 (= e!1353248 mapRes!12031)))

(declare-fun condMapEmpty!12031 () Bool)

(declare-fun mapDefault!12031 () List!23819)

(assert (=> b!2123921 (= condMapEmpty!12031 (= (arr!3757 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795321)))))))) ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12031)))))

(declare-fun mapNonEmpty!12031 () Bool)

(assert (=> mapNonEmpty!12031 (= mapRes!12031 true)))

(declare-fun mapRest!12031 () (Array (_ BitVec 32) List!23819))

(declare-fun mapValue!12031 () List!23819)

(declare-fun mapKey!12031 () (_ BitVec 32))

(assert (=> mapNonEmpty!12031 (= (arr!3757 (_values!2745 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795321)))))))) (store mapRest!12031 mapKey!12031 mapValue!12031))))

(declare-fun setIsEmpty!15081 () Bool)

(assert (=> setIsEmpty!15081 setRes!15081))

(declare-fun mapIsEmpty!12032 () Bool)

(assert (=> mapIsEmpty!12032 mapRes!12032))

(declare-fun mapNonEmpty!12032 () Bool)

(assert (=> mapNonEmpty!12032 (= mapRes!12032 true)))

(declare-fun mapKey!12032 () (_ BitVec 32))

(declare-fun mapValue!12032 () List!23820)

(declare-fun mapRest!12032 () (Array (_ BitVec 32) List!23820))

(assert (=> mapNonEmpty!12032 (= (arr!3759 (_values!2746 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795321)))))))) (store mapRest!12032 mapKey!12032 mapValue!12032))))

(declare-fun b!2123922 () Bool)

(assert (=> b!2123922 (= e!1353247 e!1353246)))

(declare-fun setNonEmpty!15081 () Bool)

(assert (=> setNonEmpty!15081 (= setRes!15081 true)))

(declare-fun setElem!15081 () Context!2482)

(declare-fun setRest!15081 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15081 (= (z!5735 (h!29139 (_2!13622 (_1!13623 lt!795321)))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15081 true) setRest!15081))))

(assert (= (and b!2123913 condSetEmpty!15081) setIsEmpty!15081))

(assert (= (and b!2123913 (not condSetEmpty!15081)) setNonEmpty!15081))

(assert (= b!2123917 b!2123913))

(assert (= (and b!2123897 ((_ is Cons!23738) (_2!13622 (_1!13623 lt!795321)))) b!2123917))

(assert (= (and b!2123910 condMapEmpty!12032) mapIsEmpty!12032))

(assert (= (and b!2123910 (not condMapEmpty!12032)) mapNonEmpty!12032))

(assert (= b!2123916 b!2123910))

(assert (= b!2123922 b!2123916))

(assert (= b!2123908 b!2123922))

(assert (= (and b!2123914 ((_ is LongMap!2466) (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795321)))))) b!2123908))

(assert (= b!2123909 b!2123914))

(assert (= (and b!2123919 ((_ is HashMap!2379) (cache!2760 (_2!13623 lt!795321)))) b!2123909))

(assert (= b!2123897 b!2123919))

(assert (= (and b!2123921 condMapEmpty!12031) mapIsEmpty!12031))

(assert (= (and b!2123921 (not condMapEmpty!12031)) mapNonEmpty!12031))

(assert (= b!2123915 b!2123921))

(assert (= b!2123918 b!2123915))

(assert (= b!2123911 b!2123918))

(assert (= (and b!2123907 ((_ is LongMap!2465) (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795321)))))) b!2123911))

(assert (= b!2123912 b!2123907))

(assert (= (and b!2123920 ((_ is HashMap!2380) (cache!2761 (_3!1938 lt!795321)))) b!2123912))

(assert (= b!2123897 b!2123920))

(assert (=> b!2123916 (< (dynLambda!11339 order!14709 (defaultEntry!2831 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795321)))))))) (dynLambda!11340 order!14711 lambda!78690))))

(assert (=> b!2123909 (< (dynLambda!11341 order!14713 (defaultValue!2541 (cache!2760 (_2!13623 lt!795321)))) (dynLambda!11340 order!14711 lambda!78690))))

(assert (=> b!2123915 (< (dynLambda!11342 order!14715 (defaultEntry!2830 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795321)))))))) (dynLambda!11340 order!14711 lambda!78690))))

(assert (=> b!2123912 (< (dynLambda!11343 order!14717 (defaultValue!2542 (cache!2761 (_3!1938 lt!795321)))) (dynLambda!11340 order!14711 lambda!78690))))

(declare-fun m!2576590 () Bool)

(assert (=> mapNonEmpty!12031 m!2576590))

(declare-fun m!2576592 () Bool)

(assert (=> mapNonEmpty!12032 m!2576592))

(declare-fun bs!442885 () Bool)

(declare-fun b!2123905 () Bool)

(assert (= bs!442885 (and b!2123905 b!2123497)))

(declare-fun lambda!78691 () Int)

(assert (=> bs!442885 (= lambda!78691 lambda!78655)))

(declare-fun bs!442886 () Bool)

(assert (= bs!442886 (and b!2123905 b!2123521)))

(assert (=> bs!442886 (not (= lambda!78691 lambda!78654))))

(declare-fun bs!442887 () Bool)

(assert (= bs!442887 (and b!2123905 b!2123639)))

(assert (=> bs!442887 (= lambda!78691 lambda!78677)))

(declare-fun bs!442888 () Bool)

(assert (= bs!442888 (and b!2123905 b!2123899)))

(assert (=> bs!442888 (not (= lambda!78691 lambda!78688))))

(declare-fun bs!442889 () Bool)

(assert (= bs!442889 (and b!2123905 d!643595)))

(assert (=> bs!442889 (not (= lambda!78691 lambda!78673))))

(declare-fun bs!442890 () Bool)

(assert (= bs!442890 (and b!2123905 b!2123895)))

(assert (=> bs!442890 (not (= lambda!78691 lambda!78689))))

(declare-fun bs!442891 () Bool)

(assert (= bs!442891 (and b!2123905 d!643661)))

(assert (=> bs!442891 (not (= lambda!78691 lambda!78687))))

(declare-fun bs!442892 () Bool)

(assert (= bs!442892 (and b!2123905 b!2123897)))

(assert (=> bs!442892 (not (= lambda!78691 lambda!78690))))

(declare-fun bs!442893 () Bool)

(assert (= bs!442893 (and b!2123905 b!2123629)))

(assert (=> bs!442893 (not (= lambda!78691 lambda!78675))))

(declare-fun bs!442894 () Bool)

(assert (= bs!442894 (and b!2123905 b!2123633)))

(assert (=> bs!442894 (not (= lambda!78691 lambda!78674))))

(declare-fun bs!442895 () Bool)

(assert (= bs!442895 (and b!2123905 b!2123631)))

(assert (=> bs!442895 (not (= lambda!78691 lambda!78676))))

(assert (=> b!2123905 true))

(declare-fun b!2123894 () Bool)

(declare-fun e!1353234 () Int)

(assert (=> b!2123894 (= e!1353234 lt!795308)))

(declare-fun lt!795324 () tuple3!2940)

(declare-fun lt!795323 () tuple3!2936)

(declare-fun lt!795331 () Int)

(assert (=> b!2123895 (= lt!795323 (furthestNullablePositionStackMem!12 (_1!13627 lt!795324) (+ lt!795246 1 1) totalInput!886 lt!795241 lt!795331 (Cons!23738 (StackFrame!55 (_1!13627 lt!795301) (+ lt!795246 1) lt!795308 lt!795328 totalInput!886) (Cons!23738 (StackFrame!55 z!3883 lt!795246 e!1352951 lt!795305 totalInput!886) Nil!23738)) (_2!13627 lt!795324) (_3!1940 lt!795324) cacheFurthestNullable!130))))

(declare-fun lt!795322 () Unit!37609)

(declare-fun lt!795332 () Unit!37609)

(assert (=> b!2123895 (= lt!795322 lt!795332)))

(declare-fun call!128709 () Bool)

(assert (=> b!2123895 call!128709))

(declare-fun call!128710 () Unit!37609)

(assert (=> b!2123895 (= lt!795332 call!128710)))

(declare-fun lt!795327 () Unit!37609)

(declare-fun Unit!37617 () Unit!37609)

(assert (=> b!2123895 (= lt!795327 Unit!37617)))

(declare-fun call!128711 () Bool)

(assert (=> b!2123895 call!128711))

(assert (=> b!2123895 (= lt!795334 (furthestNullablePosition!11 (_1!13627 lt!795324) (+ lt!795246 1 1) totalInput!886 (size!18556 totalInput!886) lt!795331))))

(assert (=> b!2123895 (= lt!795331 e!1353234)))

(declare-fun c!339848 () Bool)

(assert (=> b!2123895 (= c!339848 (nullableZipper!67 (_1!13627 lt!795324)))))

(assert (=> b!2123895 (= lt!795324 (derivationStepZipperMem!18 (_1!13627 lt!795301) (apply!5912 totalInput!886 (+ lt!795246 1)) (_2!13627 lt!795301) (_3!1940 lt!795301)))))

(declare-fun e!1353232 () tuple3!2936)

(assert (=> b!2123895 (= e!1353232 (tuple3!2937 (_1!13623 lt!795323) (_2!13623 lt!795323) (_3!1938 lt!795323)))))

(declare-fun b!2123896 () Bool)

(declare-fun e!1353231 () Bool)

(assert (=> b!2123896 (= e!1353231 (lostCauseZipper!58 (_1!13627 lt!795301)))))

(declare-fun res!919495 () Bool)

(declare-fun e!1353233 () Bool)

(assert (=> b!2123897 (=> (not res!919495) (not e!1353233))))

(assert (=> b!2123897 (= res!919495 (forall!4868 (_2!13622 (_1!13623 lt!795321)) lambda!78690))))

(declare-fun b!2123898 () Bool)

(declare-fun res!919491 () Bool)

(assert (=> b!2123898 (=> (not res!919491) (not e!1353233))))

(assert (=> b!2123898 (= res!919491 (= (totalInput!2921 cacheFurthestNullable!130) totalInput!886))))

(assert (=> d!643661 e!1353233))

(declare-fun res!919494 () Bool)

(assert (=> d!643661 (=> (not res!919494) (not e!1353233))))

(assert (=> d!643661 (= res!919494 (= (_1!13622 (_1!13623 lt!795321)) (furthestNullablePosition!11 (_1!13627 lt!795301) (+ lt!795246 1) totalInput!886 lt!795241 lt!795308)))))

(declare-fun e!1353230 () tuple3!2936)

(assert (=> d!643661 (= lt!795321 e!1353230)))

(declare-fun c!339847 () Bool)

(declare-fun lt!795326 () Option!4870)

(assert (=> d!643661 (= c!339847 ((_ is Some!4869) lt!795326))))

(assert (=> d!643661 (= lt!795326 (get!7315 cacheFurthestNullable!130 (_1!13627 lt!795301) (+ lt!795246 1) lt!795308))))

(declare-fun lt!795325 () Unit!37609)

(declare-fun Unit!37618 () Unit!37609)

(assert (=> d!643661 (= lt!795325 Unit!37618)))

(assert (=> d!643661 (forall!4868 (Cons!23738 (StackFrame!55 z!3883 lt!795246 e!1352951 lt!795305 totalInput!886) Nil!23738) lambda!78687)))

(assert (=> d!643661 (= lt!795328 (furthestNullablePosition!11 (_1!13627 lt!795301) (+ lt!795246 1) totalInput!886 (size!18556 totalInput!886) lt!795308))))

(assert (=> d!643661 (and (>= (+ lt!795246 1) 0) (<= (+ lt!795246 1) lt!795241))))

(assert (=> d!643661 (= (furthestNullablePositionStackMem!12 (_1!13627 lt!795301) (+ lt!795246 1) totalInput!886 lt!795241 lt!795308 (Cons!23738 (StackFrame!55 z!3883 lt!795246 e!1352951 lt!795305 totalInput!886) Nil!23738) (_2!13627 lt!795301) (_3!1940 lt!795301) cacheFurthestNullable!130) lt!795321)))

(declare-fun lt!795333 () Unit!37609)

(declare-fun lt!795330 () Unit!37609)

(assert (=> b!2123899 (= lt!795333 lt!795330)))

(assert (=> b!2123899 call!128709))

(assert (=> b!2123899 (= lt!795330 call!128710)))

(declare-fun lt!795329 () Unit!37609)

(declare-fun Unit!37619 () Unit!37609)

(assert (=> b!2123899 (= lt!795329 Unit!37619)))

(assert (=> b!2123899 call!128711))

(assert (=> b!2123899 (= e!1353232 (tuple3!2937 (tuple2!23369 lt!795308 (Cons!23738 (StackFrame!55 z!3883 lt!795246 e!1352951 lt!795305 totalInput!886) Nil!23738)) (_2!13627 lt!795301) (_3!1940 lt!795301)))))

(declare-fun b!2123900 () Bool)

(declare-fun res!919493 () Bool)

(assert (=> b!2123900 (=> (not res!919493) (not e!1353233))))

(assert (=> b!2123900 (= res!919493 (valid!1938 (_3!1938 lt!795321)))))

(declare-fun b!2123901 () Bool)

(assert (=> b!2123901 (= e!1353230 e!1353232)))

(declare-fun res!919492 () Bool)

(assert (=> b!2123901 (= res!919492 (= (+ lt!795246 1) lt!795241))))

(assert (=> b!2123901 (=> res!919492 e!1353231)))

(declare-fun c!339846 () Bool)

(assert (=> b!2123901 (= c!339846 e!1353231)))

(declare-fun b!2123902 () Bool)

(declare-fun res!919490 () Bool)

(assert (=> b!2123902 (=> (not res!919490) (not e!1353233))))

(assert (=> b!2123902 (= res!919490 (valid!1939 (_2!13623 lt!795321)))))

(declare-fun b!2123903 () Bool)

(declare-fun res!919496 () Bool)

(assert (=> b!2123903 (=> (not res!919496) (not e!1353233))))

(assert (=> b!2123903 (= res!919496 (valid!1937 cacheFurthestNullable!130))))

(declare-fun b!2123904 () Bool)

(assert (=> b!2123904 (= e!1353234 (+ lt!795246 1))))

(assert (=> b!2123905 (= e!1353233 (forall!4868 (_2!13622 (_1!13623 lt!795321)) lambda!78691))))

(declare-fun b!2123906 () Bool)

(assert (=> b!2123906 (= e!1353230 (tuple3!2937 (tuple2!23369 (v!28270 lt!795326) Nil!23738) (_2!13627 lt!795301) (_3!1940 lt!795301)))))

(declare-fun bm!128704 () Bool)

(assert (=> bm!128704 (= call!128711 (forall!4868 (Cons!23738 (StackFrame!55 z!3883 lt!795246 e!1352951 lt!795305 totalInput!886) Nil!23738) (ite c!339846 lambda!78687 lambda!78687)))))

(declare-fun bm!128705 () Bool)

(assert (=> bm!128705 (= call!128710 (lemmaStackPreservesForEqualRes!7 (Cons!23738 (StackFrame!55 z!3883 lt!795246 e!1352951 lt!795305 totalInput!886) Nil!23738) lt!795328 (ite c!339846 lt!795308 lt!795334)))))

(declare-fun bm!128706 () Bool)

(assert (=> bm!128706 (= call!128709 (forall!4868 (Cons!23738 (StackFrame!55 z!3883 lt!795246 e!1352951 lt!795305 totalInput!886) Nil!23738) (ite c!339846 lambda!78688 lambda!78689)))))

(assert (= (and d!643661 c!339847) b!2123906))

(assert (= (and d!643661 (not c!339847)) b!2123901))

(assert (= (and b!2123901 (not res!919492)) b!2123896))

(assert (= (and b!2123901 c!339846) b!2123899))

(assert (= (and b!2123901 (not c!339846)) b!2123895))

(assert (= (and b!2123895 c!339848) b!2123904))

(assert (= (and b!2123895 (not c!339848)) b!2123894))

(assert (= (or b!2123899 b!2123895) bm!128706))

(assert (= (or b!2123899 b!2123895) bm!128704))

(assert (= (or b!2123899 b!2123895) bm!128705))

(assert (= (and d!643661 res!919494) b!2123897))

(assert (= (and b!2123897 res!919495) b!2123902))

(assert (= (and b!2123902 res!919490) b!2123900))

(assert (= (and b!2123900 res!919493) b!2123903))

(assert (= (and b!2123903 res!919496) b!2123898))

(assert (= (and b!2123898 res!919491) b!2123905))

(declare-fun m!2576594 () Bool)

(assert (=> b!2123897 m!2576594))

(assert (=> b!2123895 m!2576349))

(declare-fun m!2576596 () Bool)

(assert (=> b!2123895 m!2576596))

(declare-fun m!2576598 () Bool)

(assert (=> b!2123895 m!2576598))

(declare-fun m!2576600 () Bool)

(assert (=> b!2123895 m!2576600))

(assert (=> b!2123895 m!2576598))

(declare-fun m!2576602 () Bool)

(assert (=> b!2123895 m!2576602))

(declare-fun m!2576604 () Bool)

(assert (=> b!2123895 m!2576604))

(assert (=> b!2123895 m!2576349))

(declare-fun m!2576606 () Bool)

(assert (=> d!643661 m!2576606))

(assert (=> d!643661 m!2576349))

(assert (=> d!643661 m!2576349))

(assert (=> d!643661 m!2576401))

(declare-fun m!2576608 () Bool)

(assert (=> d!643661 m!2576608))

(declare-fun m!2576610 () Bool)

(assert (=> d!643661 m!2576610))

(declare-fun m!2576612 () Bool)

(assert (=> b!2123902 m!2576612))

(assert (=> b!2123903 m!2576311))

(declare-fun m!2576614 () Bool)

(assert (=> b!2123896 m!2576614))

(declare-fun m!2576616 () Bool)

(assert (=> bm!128706 m!2576616))

(declare-fun m!2576618 () Bool)

(assert (=> bm!128705 m!2576618))

(declare-fun m!2576620 () Bool)

(assert (=> b!2123900 m!2576620))

(declare-fun m!2576622 () Bool)

(assert (=> b!2123905 m!2576622))

(declare-fun m!2576624 () Bool)

(assert (=> bm!128704 m!2576624))

(assert (=> b!2123629 d!643661))

(declare-fun d!643663 () Bool)

(declare-fun lt!795339 () C!11488)

(declare-fun apply!5913 (List!23821 Int) C!11488)

(assert (=> d!643663 (= lt!795339 (apply!5913 (list!9532 totalInput!886) lt!795246))))

(declare-fun apply!5914 (Conc!7809 Int) C!11488)

(assert (=> d!643663 (= lt!795339 (apply!5914 (c!339823 totalInput!886) lt!795246))))

(declare-fun e!1353253 () Bool)

(assert (=> d!643663 e!1353253))

(declare-fun res!919499 () Bool)

(assert (=> d!643663 (=> (not res!919499) (not e!1353253))))

(assert (=> d!643663 (= res!919499 (<= 0 lt!795246))))

(assert (=> d!643663 (= (apply!5912 totalInput!886 lt!795246) lt!795339)))

(declare-fun b!2123925 () Bool)

(assert (=> b!2123925 (= e!1353253 (< lt!795246 (size!18556 totalInput!886)))))

(assert (= (and d!643663 res!919499) b!2123925))

(assert (=> d!643663 m!2576359))

(assert (=> d!643663 m!2576359))

(declare-fun m!2576626 () Bool)

(assert (=> d!643663 m!2576626))

(declare-fun m!2576628 () Bool)

(assert (=> d!643663 m!2576628))

(assert (=> b!2123925 m!2576349))

(assert (=> b!2123629 d!643663))

(declare-fun bs!442896 () Bool)

(declare-fun d!643665 () Bool)

(assert (= bs!442896 (and d!643665 d!643587)))

(declare-fun lambda!78692 () Int)

(assert (=> bs!442896 (= lambda!78692 lambda!78658)))

(assert (=> d!643665 (= (nullableZipper!67 (_1!13627 lt!795301)) (exists!694 (_1!13627 lt!795301) lambda!78692))))

(declare-fun bs!442897 () Bool)

(assert (= bs!442897 d!643665))

(declare-fun m!2576630 () Bool)

(assert (=> bs!442897 m!2576630))

(assert (=> b!2123629 d!643665))

(declare-fun d!643667 () Bool)

(declare-fun e!1353256 () Bool)

(assert (=> d!643667 e!1353256))

(declare-fun res!919504 () Bool)

(assert (=> d!643667 (=> (not res!919504) (not e!1353256))))

(declare-fun lt!795342 () tuple3!2940)

(declare-fun derivationStepZipper!87 ((InoxSet Context!2482) C!11488) (InoxSet Context!2482))

(assert (=> d!643667 (= res!919504 (= (_1!13627 lt!795342) (derivationStepZipper!87 z!3883 (apply!5912 totalInput!886 lt!795246))))))

(declare-fun choose!12667 ((InoxSet Context!2482) C!11488 CacheUp!1650 CacheDown!1636) tuple3!2940)

(assert (=> d!643667 (= lt!795342 (choose!12667 z!3883 (apply!5912 totalInput!886 lt!795246) cacheUp!991 cacheDown!1110))))

(assert (=> d!643667 (= (derivationStepZipperMem!18 z!3883 (apply!5912 totalInput!886 lt!795246) cacheUp!991 cacheDown!1110) lt!795342)))

(declare-fun b!2123930 () Bool)

(declare-fun res!919505 () Bool)

(assert (=> b!2123930 (=> (not res!919505) (not e!1353256))))

(assert (=> b!2123930 (= res!919505 (valid!1939 (_2!13627 lt!795342)))))

(declare-fun b!2123931 () Bool)

(assert (=> b!2123931 (= e!1353256 (valid!1938 (_3!1940 lt!795342)))))

(assert (= (and d!643667 res!919504) b!2123930))

(assert (= (and b!2123930 res!919505) b!2123931))

(assert (=> d!643667 m!2576403))

(declare-fun m!2576632 () Bool)

(assert (=> d!643667 m!2576632))

(assert (=> d!643667 m!2576403))

(declare-fun m!2576634 () Bool)

(assert (=> d!643667 m!2576634))

(declare-fun m!2576636 () Bool)

(assert (=> b!2123930 m!2576636))

(declare-fun m!2576638 () Bool)

(assert (=> b!2123931 m!2576638))

(assert (=> b!2123629 d!643667))

(declare-fun b!2123942 () Bool)

(declare-fun e!1353263 () Int)

(assert (=> b!2123942 (= e!1353263 lt!795308)))

(declare-fun d!643669 () Bool)

(declare-fun lt!795347 () Int)

(assert (=> d!643669 (and (>= lt!795347 (- 1)) (< lt!795347 (size!18556 totalInput!886)) (>= lt!795347 lt!795308) (or (= lt!795347 lt!795308) (>= lt!795347 (+ lt!795246 1))))))

(declare-fun e!1353264 () Int)

(assert (=> d!643669 (= lt!795347 e!1353264)))

(declare-fun c!339853 () Bool)

(declare-fun e!1353265 () Bool)

(assert (=> d!643669 (= c!339853 e!1353265)))

(declare-fun res!919508 () Bool)

(assert (=> d!643669 (=> res!919508 e!1353265)))

(assert (=> d!643669 (= res!919508 (= (+ lt!795246 1) (size!18556 totalInput!886)))))

(assert (=> d!643669 (and (>= (+ lt!795246 1) 0) (<= (+ lt!795246 1) (size!18556 totalInput!886)))))

(assert (=> d!643669 (= (furthestNullablePosition!11 (_1!13627 lt!795301) (+ lt!795246 1) totalInput!886 (size!18556 totalInput!886) lt!795308) lt!795347)))

(declare-fun b!2123943 () Bool)

(declare-fun lt!795348 () (InoxSet Context!2482))

(assert (=> b!2123943 (= e!1353264 (furthestNullablePosition!11 lt!795348 (+ lt!795246 1 1) totalInput!886 (size!18556 totalInput!886) e!1353263))))

(assert (=> b!2123943 (= lt!795348 (derivationStepZipper!87 (_1!13627 lt!795301) (apply!5912 totalInput!886 (+ lt!795246 1))))))

(declare-fun c!339854 () Bool)

(assert (=> b!2123943 (= c!339854 (nullableZipper!67 lt!795348))))

(declare-fun b!2123944 () Bool)

(assert (=> b!2123944 (= e!1353265 (lostCauseZipper!58 (_1!13627 lt!795301)))))

(declare-fun b!2123945 () Bool)

(assert (=> b!2123945 (= e!1353264 lt!795308)))

(declare-fun b!2123946 () Bool)

(assert (=> b!2123946 (= e!1353263 (+ lt!795246 1))))

(assert (= (and d!643669 (not res!919508)) b!2123944))

(assert (= (and d!643669 c!339853) b!2123945))

(assert (= (and d!643669 (not c!339853)) b!2123943))

(assert (= (and b!2123943 c!339854) b!2123946))

(assert (= (and b!2123943 (not c!339854)) b!2123942))

(assert (=> b!2123943 m!2576349))

(declare-fun m!2576640 () Bool)

(assert (=> b!2123943 m!2576640))

(assert (=> b!2123943 m!2576598))

(assert (=> b!2123943 m!2576598))

(declare-fun m!2576642 () Bool)

(assert (=> b!2123943 m!2576642))

(declare-fun m!2576644 () Bool)

(assert (=> b!2123943 m!2576644))

(assert (=> b!2123944 m!2576614))

(assert (=> b!2123629 d!643669))

(declare-fun b!2123965 () Bool)

(declare-fun e!1353279 () List!23821)

(assert (=> b!2123965 (= e!1353279 (list!9532 totalInput!886))))

(declare-fun b!2123966 () Bool)

(declare-fun e!1353276 () List!23821)

(assert (=> b!2123966 (= e!1353276 Nil!23737)))

(declare-fun b!2123967 () Bool)

(declare-fun e!1353278 () Int)

(declare-fun call!128714 () Int)

(assert (=> b!2123967 (= e!1353278 call!128714)))

(declare-fun b!2123968 () Bool)

(declare-fun e!1353277 () Bool)

(declare-fun lt!795351 () List!23821)

(assert (=> b!2123968 (= e!1353277 (= (size!18557 lt!795351) e!1353278))))

(declare-fun c!339864 () Bool)

(assert (=> b!2123968 (= c!339864 (<= (- (size!18557 (list!9532 totalInput!886)) (size!18557 (list!9532 input!5507))) 0))))

(declare-fun b!2123969 () Bool)

(assert (=> b!2123969 (= e!1353276 e!1353279)))

(declare-fun c!339866 () Bool)

(assert (=> b!2123969 (= c!339866 (<= (- (size!18557 (list!9532 totalInput!886)) (size!18557 (list!9532 input!5507))) 0))))

(declare-fun d!643671 () Bool)

(assert (=> d!643671 e!1353277))

(declare-fun res!919511 () Bool)

(assert (=> d!643671 (=> (not res!919511) (not e!1353277))))

(declare-fun content!3390 (List!23821) (InoxSet C!11488))

(assert (=> d!643671 (= res!919511 (= ((_ map implies) (content!3390 lt!795351) (content!3390 (list!9532 totalInput!886))) ((as const (InoxSet C!11488)) true)))))

(assert (=> d!643671 (= lt!795351 e!1353276)))

(declare-fun c!339865 () Bool)

(assert (=> d!643671 (= c!339865 ((_ is Nil!23737) (list!9532 totalInput!886)))))

(assert (=> d!643671 (= (drop!1185 (list!9532 totalInput!886) (- (size!18557 (list!9532 totalInput!886)) (size!18557 (list!9532 input!5507)))) lt!795351)))

(declare-fun b!2123970 () Bool)

(assert (=> b!2123970 (= e!1353279 (drop!1185 (t!196340 (list!9532 totalInput!886)) (- (- (size!18557 (list!9532 totalInput!886)) (size!18557 (list!9532 input!5507))) 1)))))

(declare-fun b!2123971 () Bool)

(declare-fun e!1353280 () Int)

(assert (=> b!2123971 (= e!1353280 (- call!128714 (- (size!18557 (list!9532 totalInput!886)) (size!18557 (list!9532 input!5507)))))))

(declare-fun bm!128709 () Bool)

(assert (=> bm!128709 (= call!128714 (size!18557 (list!9532 totalInput!886)))))

(declare-fun b!2123972 () Bool)

(assert (=> b!2123972 (= e!1353280 0)))

(declare-fun b!2123973 () Bool)

(assert (=> b!2123973 (= e!1353278 e!1353280)))

(declare-fun c!339863 () Bool)

(assert (=> b!2123973 (= c!339863 (>= (- (size!18557 (list!9532 totalInput!886)) (size!18557 (list!9532 input!5507))) call!128714))))

(assert (= (and d!643671 c!339865) b!2123966))

(assert (= (and d!643671 (not c!339865)) b!2123969))

(assert (= (and b!2123969 c!339866) b!2123965))

(assert (= (and b!2123969 (not c!339866)) b!2123970))

(assert (= (and d!643671 res!919511) b!2123968))

(assert (= (and b!2123968 c!339864) b!2123967))

(assert (= (and b!2123968 (not c!339864)) b!2123973))

(assert (= (and b!2123973 c!339863) b!2123972))

(assert (= (and b!2123973 (not c!339863)) b!2123971))

(assert (= (or b!2123967 b!2123973 b!2123971) bm!128709))

(declare-fun m!2576646 () Bool)

(assert (=> b!2123968 m!2576646))

(declare-fun m!2576648 () Bool)

(assert (=> d!643671 m!2576648))

(assert (=> d!643671 m!2576359))

(declare-fun m!2576650 () Bool)

(assert (=> d!643671 m!2576650))

(declare-fun m!2576652 () Bool)

(assert (=> b!2123970 m!2576652))

(assert (=> bm!128709 m!2576359))

(assert (=> bm!128709 m!2576379))

(assert (=> d!643639 d!643671))

(declare-fun d!643673 () Bool)

(declare-fun lt!795354 () Int)

(assert (=> d!643673 (>= lt!795354 0)))

(declare-fun e!1353283 () Int)

(assert (=> d!643673 (= lt!795354 e!1353283)))

(declare-fun c!339869 () Bool)

(assert (=> d!643673 (= c!339869 ((_ is Nil!23737) (list!9532 totalInput!886)))))

(assert (=> d!643673 (= (size!18557 (list!9532 totalInput!886)) lt!795354)))

(declare-fun b!2123978 () Bool)

(assert (=> b!2123978 (= e!1353283 0)))

(declare-fun b!2123979 () Bool)

(assert (=> b!2123979 (= e!1353283 (+ 1 (size!18557 (t!196340 (list!9532 totalInput!886)))))))

(assert (= (and d!643673 c!339869) b!2123978))

(assert (= (and d!643673 (not c!339869)) b!2123979))

(declare-fun m!2576654 () Bool)

(assert (=> b!2123979 m!2576654))

(assert (=> d!643639 d!643673))

(declare-fun d!643675 () Bool)

(declare-fun lt!795355 () Int)

(assert (=> d!643675 (>= lt!795355 0)))

(declare-fun e!1353284 () Int)

(assert (=> d!643675 (= lt!795355 e!1353284)))

(declare-fun c!339870 () Bool)

(assert (=> d!643675 (= c!339870 ((_ is Nil!23737) (list!9532 input!5507)))))

(assert (=> d!643675 (= (size!18557 (list!9532 input!5507)) lt!795355)))

(declare-fun b!2123980 () Bool)

(assert (=> b!2123980 (= e!1353284 0)))

(declare-fun b!2123981 () Bool)

(assert (=> b!2123981 (= e!1353284 (+ 1 (size!18557 (t!196340 (list!9532 input!5507)))))))

(assert (= (and d!643675 c!339870) b!2123980))

(assert (= (and d!643675 (not c!339870)) b!2123981))

(declare-fun m!2576656 () Bool)

(assert (=> b!2123981 m!2576656))

(assert (=> d!643639 d!643675))

(declare-fun d!643677 () Bool)

(assert (=> d!643677 (= (inv!31337 (xs!10751 (c!339823 totalInput!886))) (<= (size!18557 (innerList!7869 (xs!10751 (c!339823 totalInput!886)))) 2147483647))))

(declare-fun bs!442898 () Bool)

(assert (= bs!442898 d!643677))

(declare-fun m!2576658 () Bool)

(assert (=> bs!442898 m!2576658))

(assert (=> b!2123779 d!643677))

(declare-fun d!643679 () Bool)

(declare-fun c!339871 () Bool)

(assert (=> d!643679 (= c!339871 ((_ is Node!7809) (left!18357 (c!339823 input!5507))))))

(declare-fun e!1353285 () Bool)

(assert (=> d!643679 (= (inv!31333 (left!18357 (c!339823 input!5507))) e!1353285)))

(declare-fun b!2123982 () Bool)

(assert (=> b!2123982 (= e!1353285 (inv!31335 (left!18357 (c!339823 input!5507))))))

(declare-fun b!2123983 () Bool)

(declare-fun e!1353286 () Bool)

(assert (=> b!2123983 (= e!1353285 e!1353286)))

(declare-fun res!919512 () Bool)

(assert (=> b!2123983 (= res!919512 (not ((_ is Leaf!11412) (left!18357 (c!339823 input!5507)))))))

(assert (=> b!2123983 (=> res!919512 e!1353286)))

(declare-fun b!2123984 () Bool)

(assert (=> b!2123984 (= e!1353286 (inv!31336 (left!18357 (c!339823 input!5507))))))

(assert (= (and d!643679 c!339871) b!2123982))

(assert (= (and d!643679 (not c!339871)) b!2123983))

(assert (= (and b!2123983 (not res!919512)) b!2123984))

(declare-fun m!2576660 () Bool)

(assert (=> b!2123982 m!2576660))

(declare-fun m!2576662 () Bool)

(assert (=> b!2123984 m!2576662))

(assert (=> b!2123850 d!643679))

(declare-fun d!643681 () Bool)

(declare-fun c!339872 () Bool)

(assert (=> d!643681 (= c!339872 ((_ is Node!7809) (right!18687 (c!339823 input!5507))))))

(declare-fun e!1353287 () Bool)

(assert (=> d!643681 (= (inv!31333 (right!18687 (c!339823 input!5507))) e!1353287)))

(declare-fun b!2123985 () Bool)

(assert (=> b!2123985 (= e!1353287 (inv!31335 (right!18687 (c!339823 input!5507))))))

(declare-fun b!2123986 () Bool)

(declare-fun e!1353288 () Bool)

(assert (=> b!2123986 (= e!1353287 e!1353288)))

(declare-fun res!919513 () Bool)

(assert (=> b!2123986 (= res!919513 (not ((_ is Leaf!11412) (right!18687 (c!339823 input!5507)))))))

(assert (=> b!2123986 (=> res!919513 e!1353288)))

(declare-fun b!2123987 () Bool)

(assert (=> b!2123987 (= e!1353288 (inv!31336 (right!18687 (c!339823 input!5507))))))

(assert (= (and d!643681 c!339872) b!2123985))

(assert (= (and d!643681 (not c!339872)) b!2123986))

(assert (= (and b!2123986 (not res!919513)) b!2123987))

(declare-fun m!2576664 () Bool)

(assert (=> b!2123985 m!2576664))

(declare-fun m!2576666 () Bool)

(assert (=> b!2123987 m!2576666))

(assert (=> b!2123850 d!643681))

(assert (=> b!2123526 d!643615))

(declare-fun bs!442899 () Bool)

(declare-fun d!643683 () Bool)

(assert (= bs!442899 (and d!643683 d!643641)))

(declare-fun lambda!78693 () Int)

(assert (=> bs!442899 (= lambda!78693 lambda!78680)))

(declare-fun bs!442900 () Bool)

(assert (= bs!442900 (and d!643683 d!643649)))

(assert (=> bs!442900 (= lambda!78693 lambda!78681)))

(declare-fun bs!442901 () Bool)

(assert (= bs!442901 (and d!643683 d!643657)))

(assert (=> bs!442901 (= lambda!78693 lambda!78685)))

(declare-fun bs!442902 () Bool)

(assert (= bs!442902 (and d!643683 d!643659)))

(assert (=> bs!442902 (= lambda!78693 lambda!78686)))

(assert (=> d!643683 (= (inv!31334 setElem!15042) (forall!4869 (exprs!1741 setElem!15042) lambda!78693))))

(declare-fun bs!442903 () Bool)

(assert (= bs!442903 d!643683))

(declare-fun m!2576668 () Bool)

(assert (=> bs!442903 m!2576668))

(assert (=> setNonEmpty!15042 d!643683))

(declare-fun d!643685 () Bool)

(declare-fun e!1353289 () Bool)

(assert (=> d!643685 e!1353289))

(declare-fun res!919514 () Bool)

(assert (=> d!643685 (=> (not res!919514) (not e!1353289))))

(declare-fun lt!795356 () tuple2!23372)

(assert (=> d!643685 (= res!919514 (valid!1937 (_2!13626 lt!795356)))))

(declare-fun e!1353290 () tuple2!23372)

(assert (=> d!643685 (= lt!795356 e!1353290)))

(declare-fun c!339874 () Bool)

(assert (=> d!643685 (= c!339874 ((_ is Nil!23738) (t!196341 (_2!13622 (_1!13623 lt!795247)))))))

(assert (=> d!643685 (valid!1937 (_2!13626 e!1353014))))

(assert (=> d!643685 (= (fillUpCache!9 (t!196341 (_2!13622 (_1!13623 lt!795247))) totalInput!886 lt!795241 (_1!13622 (_1!13623 lt!795247)) (+ 0 1) (_2!13626 e!1353014)) lt!795356)))

(declare-fun b!2123988 () Bool)

(assert (=> b!2123988 (= e!1353289 (= (totalInput!2921 (_2!13626 lt!795356)) totalInput!886))))

(declare-fun lt!795359 () tuple2!23372)

(declare-fun b!2123989 () Bool)

(assert (=> b!2123989 (= lt!795359 (update!88 (_2!13626 e!1353014) (z!5735 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) (from!2630 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) (lastNullablePos!317 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) (_1!13622 (_1!13623 lt!795247)) totalInput!886))))

(declare-fun lt!795357 () Unit!37609)

(assert (=> b!2123989 (= lt!795357 (lemmaInvariant!382 (_2!13626 e!1353014)))))

(declare-fun e!1353291 () tuple2!23372)

(assert (=> b!2123989 (= e!1353291 (tuple2!23373 (_1!13626 lt!795359) (_2!13626 lt!795359)))))

(declare-fun b!2123990 () Bool)

(declare-fun Unit!37620 () Unit!37609)

(assert (=> b!2123990 (= e!1353291 (tuple2!23373 Unit!37620 (_2!13626 e!1353014)))))

(declare-fun b!2123991 () Bool)

(declare-fun lt!795358 () tuple2!23372)

(assert (=> b!2123991 (= e!1353290 (tuple2!23373 (_1!13626 lt!795358) (_2!13626 lt!795358)))))

(declare-fun c!339873 () Bool)

(assert (=> b!2123991 (= c!339873 (and (> lt!795241 1048576) (not (= (- (+ 0 1) (* 10 (ite (>= (+ 0 1) 0) (div (+ 0 1) 10) (- (div (- (+ 0 1)) 10))))) 0))))))

(assert (=> b!2123991 (= lt!795358 (fillUpCache!9 (t!196341 (t!196341 (_2!13622 (_1!13623 lt!795247)))) totalInput!886 lt!795241 (_1!13622 (_1!13623 lt!795247)) (+ 0 1 1) (_2!13626 e!1353291)))))

(declare-fun b!2123992 () Bool)

(declare-fun Unit!37621 () Unit!37609)

(assert (=> b!2123992 (= e!1353290 (tuple2!23373 Unit!37621 (_2!13626 e!1353014)))))

(assert (= (and d!643685 c!339874) b!2123992))

(assert (= (and d!643685 (not c!339874)) b!2123991))

(assert (= (and b!2123991 c!339873) b!2123990))

(assert (= (and b!2123991 (not c!339873)) b!2123989))

(assert (= (and d!643685 res!919514) b!2123988))

(declare-fun m!2576670 () Bool)

(assert (=> d!643685 m!2576670))

(declare-fun m!2576672 () Bool)

(assert (=> d!643685 m!2576672))

(declare-fun m!2576674 () Bool)

(assert (=> b!2123989 m!2576674))

(declare-fun m!2576676 () Bool)

(assert (=> b!2123989 m!2576676))

(declare-fun m!2576678 () Bool)

(assert (=> b!2123991 m!2576678))

(assert (=> b!2123594 d!643685))

(declare-fun d!643687 () Bool)

(declare-fun res!919515 () Bool)

(declare-fun e!1353292 () Bool)

(assert (=> d!643687 (=> res!919515 e!1353292)))

(assert (=> d!643687 (= res!919515 ((_ is Nil!23738) (t!196341 (_2!13622 (_1!13623 lt!795247)))))))

(assert (=> d!643687 (= (forall!4868 (t!196341 (_2!13622 (_1!13623 lt!795247))) lambda!78655) e!1353292)))

(declare-fun b!2123993 () Bool)

(declare-fun e!1353293 () Bool)

(assert (=> b!2123993 (= e!1353292 e!1353293)))

(declare-fun res!919516 () Bool)

(assert (=> b!2123993 (=> (not res!919516) (not e!1353293))))

(assert (=> b!2123993 (= res!919516 (dynLambda!11344 lambda!78655 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))))))

(declare-fun b!2123994 () Bool)

(assert (=> b!2123994 (= e!1353293 (forall!4868 (t!196341 (t!196341 (_2!13622 (_1!13623 lt!795247)))) lambda!78655))))

(assert (= (and d!643687 (not res!919515)) b!2123993))

(assert (= (and b!2123993 res!919516) b!2123994))

(declare-fun b_lambda!70489 () Bool)

(assert (=> (not b_lambda!70489) (not b!2123993)))

(declare-fun m!2576680 () Bool)

(assert (=> b!2123993 m!2576680))

(declare-fun m!2576682 () Bool)

(assert (=> b!2123994 m!2576682))

(assert (=> b!2123669 d!643687))

(declare-fun b!2123995 () Bool)

(declare-fun res!919521 () Bool)

(declare-fun e!1353294 () Bool)

(assert (=> b!2123995 (=> (not res!919521) (not e!1353294))))

(assert (=> b!2123995 (= res!919521 (<= (- (height!1235 (left!18357 (right!18687 (c!339823 input!5507)))) (height!1235 (right!18687 (right!18687 (c!339823 input!5507))))) 1))))

(declare-fun b!2123996 () Bool)

(declare-fun e!1353295 () Bool)

(assert (=> b!2123996 (= e!1353295 e!1353294)))

(declare-fun res!919519 () Bool)

(assert (=> b!2123996 (=> (not res!919519) (not e!1353294))))

(assert (=> b!2123996 (= res!919519 (<= (- 1) (- (height!1235 (left!18357 (right!18687 (c!339823 input!5507)))) (height!1235 (right!18687 (right!18687 (c!339823 input!5507)))))))))

(declare-fun b!2123997 () Bool)

(assert (=> b!2123997 (= e!1353294 (not (isEmpty!14313 (right!18687 (right!18687 (c!339823 input!5507))))))))

(declare-fun b!2123998 () Bool)

(declare-fun res!919517 () Bool)

(assert (=> b!2123998 (=> (not res!919517) (not e!1353294))))

(assert (=> b!2123998 (= res!919517 (isBalanced!2450 (right!18687 (right!18687 (c!339823 input!5507)))))))

(declare-fun b!2123999 () Bool)

(declare-fun res!919522 () Bool)

(assert (=> b!2123999 (=> (not res!919522) (not e!1353294))))

(assert (=> b!2123999 (= res!919522 (not (isEmpty!14313 (left!18357 (right!18687 (c!339823 input!5507))))))))

(declare-fun d!643689 () Bool)

(declare-fun res!919518 () Bool)

(assert (=> d!643689 (=> res!919518 e!1353295)))

(assert (=> d!643689 (= res!919518 (not ((_ is Node!7809) (right!18687 (c!339823 input!5507)))))))

(assert (=> d!643689 (= (isBalanced!2450 (right!18687 (c!339823 input!5507))) e!1353295)))

(declare-fun b!2124000 () Bool)

(declare-fun res!919520 () Bool)

(assert (=> b!2124000 (=> (not res!919520) (not e!1353294))))

(assert (=> b!2124000 (= res!919520 (isBalanced!2450 (left!18357 (right!18687 (c!339823 input!5507)))))))

(assert (= (and d!643689 (not res!919518)) b!2123996))

(assert (= (and b!2123996 res!919519) b!2123995))

(assert (= (and b!2123995 res!919521) b!2124000))

(assert (= (and b!2124000 res!919520) b!2123998))

(assert (= (and b!2123998 res!919517) b!2123999))

(assert (= (and b!2123999 res!919522) b!2123997))

(declare-fun m!2576684 () Bool)

(assert (=> b!2123999 m!2576684))

(declare-fun m!2576686 () Bool)

(assert (=> b!2123996 m!2576686))

(declare-fun m!2576688 () Bool)

(assert (=> b!2123996 m!2576688))

(declare-fun m!2576690 () Bool)

(assert (=> b!2124000 m!2576690))

(declare-fun m!2576692 () Bool)

(assert (=> b!2123997 m!2576692))

(assert (=> b!2123995 m!2576686))

(assert (=> b!2123995 m!2576688))

(declare-fun m!2576694 () Bool)

(assert (=> b!2123998 m!2576694))

(assert (=> b!2123691 d!643689))

(declare-fun d!643691 () Bool)

(assert (=> d!643691 (= (height!1235 (left!18357 (c!339823 input!5507))) (ite ((_ is Empty!7809) (left!18357 (c!339823 input!5507))) 0 (ite ((_ is Leaf!11412) (left!18357 (c!339823 input!5507))) 1 (cheight!8020 (left!18357 (c!339823 input!5507))))))))

(assert (=> b!2123689 d!643691))

(declare-fun d!643693 () Bool)

(assert (=> d!643693 (= (height!1235 (right!18687 (c!339823 input!5507))) (ite ((_ is Empty!7809) (right!18687 (c!339823 input!5507))) 0 (ite ((_ is Leaf!11412) (right!18687 (c!339823 input!5507))) 1 (cheight!8020 (right!18687 (c!339823 input!5507))))))))

(assert (=> b!2123689 d!643693))

(declare-fun d!643695 () Bool)

(declare-fun res!919523 () Bool)

(declare-fun e!1353296 () Bool)

(assert (=> d!643695 (=> res!919523 e!1353296)))

(assert (=> d!643695 (= res!919523 ((_ is Nil!23738) (_2!13622 (_1!13623 lt!795298))))))

(assert (=> d!643695 (= (forall!4868 (_2!13622 (_1!13623 lt!795298)) lambda!78676) e!1353296)))

(declare-fun b!2124001 () Bool)

(declare-fun e!1353297 () Bool)

(assert (=> b!2124001 (= e!1353296 e!1353297)))

(declare-fun res!919524 () Bool)

(assert (=> b!2124001 (=> (not res!919524) (not e!1353297))))

(assert (=> b!2124001 (= res!919524 (dynLambda!11344 lambda!78676 (h!29139 (_2!13622 (_1!13623 lt!795298)))))))

(declare-fun b!2124002 () Bool)

(assert (=> b!2124002 (= e!1353297 (forall!4868 (t!196341 (_2!13622 (_1!13623 lt!795298))) lambda!78676))))

(assert (= (and d!643695 (not res!919523)) b!2124001))

(assert (= (and b!2124001 res!919524) b!2124002))

(declare-fun b_lambda!70491 () Bool)

(assert (=> (not b_lambda!70491) (not b!2124001)))

(declare-fun m!2576696 () Bool)

(assert (=> b!2124001 m!2576696))

(declare-fun m!2576698 () Bool)

(assert (=> b!2124002 m!2576698))

(assert (=> b!2123631 d!643695))

(declare-fun b!2124003 () Bool)

(declare-fun res!919529 () Bool)

(declare-fun e!1353298 () Bool)

(assert (=> b!2124003 (=> (not res!919529) (not e!1353298))))

(assert (=> b!2124003 (= res!919529 (<= (- (height!1235 (left!18357 (left!18357 (c!339823 input!5507)))) (height!1235 (right!18687 (left!18357 (c!339823 input!5507))))) 1))))

(declare-fun b!2124004 () Bool)

(declare-fun e!1353299 () Bool)

(assert (=> b!2124004 (= e!1353299 e!1353298)))

(declare-fun res!919527 () Bool)

(assert (=> b!2124004 (=> (not res!919527) (not e!1353298))))

(assert (=> b!2124004 (= res!919527 (<= (- 1) (- (height!1235 (left!18357 (left!18357 (c!339823 input!5507)))) (height!1235 (right!18687 (left!18357 (c!339823 input!5507)))))))))

(declare-fun b!2124005 () Bool)

(assert (=> b!2124005 (= e!1353298 (not (isEmpty!14313 (right!18687 (left!18357 (c!339823 input!5507))))))))

(declare-fun b!2124006 () Bool)

(declare-fun res!919525 () Bool)

(assert (=> b!2124006 (=> (not res!919525) (not e!1353298))))

(assert (=> b!2124006 (= res!919525 (isBalanced!2450 (right!18687 (left!18357 (c!339823 input!5507)))))))

(declare-fun b!2124007 () Bool)

(declare-fun res!919530 () Bool)

(assert (=> b!2124007 (=> (not res!919530) (not e!1353298))))

(assert (=> b!2124007 (= res!919530 (not (isEmpty!14313 (left!18357 (left!18357 (c!339823 input!5507))))))))

(declare-fun d!643697 () Bool)

(declare-fun res!919526 () Bool)

(assert (=> d!643697 (=> res!919526 e!1353299)))

(assert (=> d!643697 (= res!919526 (not ((_ is Node!7809) (left!18357 (c!339823 input!5507)))))))

(assert (=> d!643697 (= (isBalanced!2450 (left!18357 (c!339823 input!5507))) e!1353299)))

(declare-fun b!2124008 () Bool)

(declare-fun res!919528 () Bool)

(assert (=> b!2124008 (=> (not res!919528) (not e!1353298))))

(assert (=> b!2124008 (= res!919528 (isBalanced!2450 (left!18357 (left!18357 (c!339823 input!5507)))))))

(assert (= (and d!643697 (not res!919526)) b!2124004))

(assert (= (and b!2124004 res!919527) b!2124003))

(assert (= (and b!2124003 res!919529) b!2124008))

(assert (= (and b!2124008 res!919528) b!2124006))

(assert (= (and b!2124006 res!919525) b!2124007))

(assert (= (and b!2124007 res!919530) b!2124005))

(declare-fun m!2576700 () Bool)

(assert (=> b!2124007 m!2576700))

(declare-fun m!2576702 () Bool)

(assert (=> b!2124004 m!2576702))

(declare-fun m!2576704 () Bool)

(assert (=> b!2124004 m!2576704))

(declare-fun m!2576706 () Bool)

(assert (=> b!2124008 m!2576706))

(declare-fun m!2576708 () Bool)

(assert (=> b!2124005 m!2576708))

(assert (=> b!2124003 m!2576702))

(assert (=> b!2124003 m!2576704))

(declare-fun m!2576710 () Bool)

(assert (=> b!2124006 m!2576710))

(assert (=> b!2123693 d!643697))

(declare-fun d!643699 () Bool)

(declare-fun c!339875 () Bool)

(assert (=> d!643699 (= c!339875 ((_ is Node!7809) (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(declare-fun e!1353300 () Bool)

(assert (=> d!643699 (= (inv!31333 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) e!1353300)))

(declare-fun b!2124009 () Bool)

(assert (=> b!2124009 (= e!1353300 (inv!31335 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(declare-fun b!2124010 () Bool)

(declare-fun e!1353301 () Bool)

(assert (=> b!2124010 (= e!1353300 e!1353301)))

(declare-fun res!919531 () Bool)

(assert (=> b!2124010 (= res!919531 (not ((_ is Leaf!11412) (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))))))

(assert (=> b!2124010 (=> res!919531 e!1353301)))

(declare-fun b!2124011 () Bool)

(assert (=> b!2124011 (= e!1353301 (inv!31336 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(assert (= (and d!643699 c!339875) b!2124009))

(assert (= (and d!643699 (not c!339875)) b!2124010))

(assert (= (and b!2124010 (not res!919531)) b!2124011))

(declare-fun m!2576712 () Bool)

(assert (=> b!2124009 m!2576712))

(declare-fun m!2576714 () Bool)

(assert (=> b!2124011 m!2576714))

(assert (=> b!2123835 d!643699))

(declare-fun d!643701 () Bool)

(declare-fun c!339876 () Bool)

(assert (=> d!643701 (= c!339876 ((_ is Node!7809) (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(declare-fun e!1353302 () Bool)

(assert (=> d!643701 (= (inv!31333 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) e!1353302)))

(declare-fun b!2124012 () Bool)

(assert (=> b!2124012 (= e!1353302 (inv!31335 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(declare-fun b!2124013 () Bool)

(declare-fun e!1353303 () Bool)

(assert (=> b!2124013 (= e!1353302 e!1353303)))

(declare-fun res!919532 () Bool)

(assert (=> b!2124013 (= res!919532 (not ((_ is Leaf!11412) (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))))))

(assert (=> b!2124013 (=> res!919532 e!1353303)))

(declare-fun b!2124014 () Bool)

(assert (=> b!2124014 (= e!1353303 (inv!31336 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(assert (= (and d!643701 c!339876) b!2124012))

(assert (= (and d!643701 (not c!339876)) b!2124013))

(assert (= (and b!2124013 (not res!919532)) b!2124014))

(declare-fun m!2576716 () Bool)

(assert (=> b!2124012 m!2576716))

(declare-fun m!2576718 () Bool)

(assert (=> b!2124014 m!2576718))

(assert (=> b!2123835 d!643701))

(declare-fun bs!442904 () Bool)

(declare-fun d!643703 () Bool)

(assert (= bs!442904 (and d!643703 d!643657)))

(declare-fun lambda!78694 () Int)

(assert (=> bs!442904 (= lambda!78694 lambda!78685)))

(declare-fun bs!442905 () Bool)

(assert (= bs!442905 (and d!643703 d!643683)))

(assert (=> bs!442905 (= lambda!78694 lambda!78693)))

(declare-fun bs!442906 () Bool)

(assert (= bs!442906 (and d!643703 d!643649)))

(assert (=> bs!442906 (= lambda!78694 lambda!78681)))

(declare-fun bs!442907 () Bool)

(assert (= bs!442907 (and d!643703 d!643641)))

(assert (=> bs!442907 (= lambda!78694 lambda!78680)))

(declare-fun bs!442908 () Bool)

(assert (= bs!442908 (and d!643703 d!643659)))

(assert (=> bs!442908 (= lambda!78694 lambda!78686)))

(assert (=> d!643703 (= (inv!31334 setElem!15071) (forall!4869 (exprs!1741 setElem!15071) lambda!78694))))

(declare-fun bs!442909 () Bool)

(assert (= bs!442909 d!643703))

(declare-fun m!2576720 () Bool)

(assert (=> bs!442909 m!2576720))

(assert (=> setNonEmpty!15071 d!643703))

(assert (=> b!2123513 d!643603))

(declare-fun bs!442910 () Bool)

(declare-fun d!643705 () Bool)

(assert (= bs!442910 (and d!643705 d!643657)))

(declare-fun lambda!78695 () Int)

(assert (=> bs!442910 (= lambda!78695 lambda!78685)))

(declare-fun bs!442911 () Bool)

(assert (= bs!442911 (and d!643705 d!643683)))

(assert (=> bs!442911 (= lambda!78695 lambda!78693)))

(declare-fun bs!442912 () Bool)

(assert (= bs!442912 (and d!643705 d!643703)))

(assert (=> bs!442912 (= lambda!78695 lambda!78694)))

(declare-fun bs!442913 () Bool)

(assert (= bs!442913 (and d!643705 d!643649)))

(assert (=> bs!442913 (= lambda!78695 lambda!78681)))

(declare-fun bs!442914 () Bool)

(assert (= bs!442914 (and d!643705 d!643641)))

(assert (=> bs!442914 (= lambda!78695 lambda!78680)))

(declare-fun bs!442915 () Bool)

(assert (= bs!442915 (and d!643705 d!643659)))

(assert (=> bs!442915 (= lambda!78695 lambda!78686)))

(assert (=> d!643705 (= (inv!31334 (_1!13620 (_1!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))))) (forall!4869 (exprs!1741 (_1!13620 (_1!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))))) lambda!78695))))

(declare-fun bs!442916 () Bool)

(assert (= bs!442916 d!643705))

(declare-fun m!2576722 () Bool)

(assert (=> bs!442916 m!2576722))

(assert (=> b!2123719 d!643705))

(assert (=> b!2123637 d!643585))

(declare-fun bs!442917 () Bool)

(declare-fun d!643707 () Bool)

(assert (= bs!442917 (and d!643707 d!643657)))

(declare-fun lambda!78696 () Int)

(assert (=> bs!442917 (= lambda!78696 lambda!78685)))

(declare-fun bs!442918 () Bool)

(assert (= bs!442918 (and d!643707 d!643683)))

(assert (=> bs!442918 (= lambda!78696 lambda!78693)))

(declare-fun bs!442919 () Bool)

(assert (= bs!442919 (and d!643707 d!643649)))

(assert (=> bs!442919 (= lambda!78696 lambda!78681)))

(declare-fun bs!442920 () Bool)

(assert (= bs!442920 (and d!643707 d!643641)))

(assert (=> bs!442920 (= lambda!78696 lambda!78680)))

(declare-fun bs!442921 () Bool)

(assert (= bs!442921 (and d!643707 d!643659)))

(assert (=> bs!442921 (= lambda!78696 lambda!78686)))

(declare-fun bs!442922 () Bool)

(assert (= bs!442922 (and d!643707 d!643703)))

(assert (=> bs!442922 (= lambda!78696 lambda!78694)))

(declare-fun bs!442923 () Bool)

(assert (= bs!442923 (and d!643707 d!643705)))

(assert (=> bs!442923 (= lambda!78696 lambda!78695)))

(assert (=> d!643707 (= (inv!31334 setElem!15014) (forall!4869 (exprs!1741 setElem!15014) lambda!78696))))

(declare-fun bs!442924 () Bool)

(assert (= bs!442924 d!643707))

(declare-fun m!2576724 () Bool)

(assert (=> bs!442924 m!2576724))

(assert (=> setNonEmpty!15014 d!643707))

(declare-fun bs!442925 () Bool)

(declare-fun d!643709 () Bool)

(assert (= bs!442925 (and d!643709 d!643657)))

(declare-fun lambda!78697 () Int)

(assert (=> bs!442925 (= lambda!78697 lambda!78685)))

(declare-fun bs!442926 () Bool)

(assert (= bs!442926 (and d!643709 d!643683)))

(assert (=> bs!442926 (= lambda!78697 lambda!78693)))

(declare-fun bs!442927 () Bool)

(assert (= bs!442927 (and d!643709 d!643649)))

(assert (=> bs!442927 (= lambda!78697 lambda!78681)))

(declare-fun bs!442928 () Bool)

(assert (= bs!442928 (and d!643709 d!643641)))

(assert (=> bs!442928 (= lambda!78697 lambda!78680)))

(declare-fun bs!442929 () Bool)

(assert (= bs!442929 (and d!643709 d!643707)))

(assert (=> bs!442929 (= lambda!78697 lambda!78696)))

(declare-fun bs!442930 () Bool)

(assert (= bs!442930 (and d!643709 d!643659)))

(assert (=> bs!442930 (= lambda!78697 lambda!78686)))

(declare-fun bs!442931 () Bool)

(assert (= bs!442931 (and d!643709 d!643703)))

(assert (=> bs!442931 (= lambda!78697 lambda!78694)))

(declare-fun bs!442932 () Bool)

(assert (= bs!442932 (and d!643709 d!643705)))

(assert (=> bs!442932 (= lambda!78697 lambda!78695)))

(assert (=> d!643709 (= (inv!31334 (_1!13620 (_1!13621 (h!29137 mapValue!12005)))) (forall!4869 (exprs!1741 (_1!13620 (_1!13621 (h!29137 mapValue!12005)))) lambda!78697))))

(declare-fun bs!442933 () Bool)

(assert (= bs!442933 d!643709))

(declare-fun m!2576726 () Bool)

(assert (=> bs!442933 m!2576726))

(assert (=> b!2123769 d!643709))

(declare-fun bs!442934 () Bool)

(declare-fun d!643711 () Bool)

(assert (= bs!442934 (and d!643711 d!643657)))

(declare-fun lambda!78698 () Int)

(assert (=> bs!442934 (= lambda!78698 lambda!78685)))

(declare-fun bs!442935 () Bool)

(assert (= bs!442935 (and d!643711 d!643683)))

(assert (=> bs!442935 (= lambda!78698 lambda!78693)))

(declare-fun bs!442936 () Bool)

(assert (= bs!442936 (and d!643711 d!643649)))

(assert (=> bs!442936 (= lambda!78698 lambda!78681)))

(declare-fun bs!442937 () Bool)

(assert (= bs!442937 (and d!643711 d!643641)))

(assert (=> bs!442937 (= lambda!78698 lambda!78680)))

(declare-fun bs!442938 () Bool)

(assert (= bs!442938 (and d!643711 d!643709)))

(assert (=> bs!442938 (= lambda!78698 lambda!78697)))

(declare-fun bs!442939 () Bool)

(assert (= bs!442939 (and d!643711 d!643707)))

(assert (=> bs!442939 (= lambda!78698 lambda!78696)))

(declare-fun bs!442940 () Bool)

(assert (= bs!442940 (and d!643711 d!643659)))

(assert (=> bs!442940 (= lambda!78698 lambda!78686)))

(declare-fun bs!442941 () Bool)

(assert (= bs!442941 (and d!643711 d!643703)))

(assert (=> bs!442941 (= lambda!78698 lambda!78694)))

(declare-fun bs!442942 () Bool)

(assert (= bs!442942 (and d!643711 d!643705)))

(assert (=> bs!442942 (= lambda!78698 lambda!78695)))

(assert (=> d!643711 (= (inv!31334 (_2!13618 (_1!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))))) (forall!4869 (exprs!1741 (_2!13618 (_1!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))))) lambda!78698))))

(declare-fun bs!442943 () Bool)

(assert (= bs!442943 d!643711))

(declare-fun m!2576728 () Bool)

(assert (=> bs!442943 m!2576728))

(assert (=> b!2123846 d!643711))

(declare-fun d!643713 () Bool)

(declare-fun res!919537 () Bool)

(declare-fun e!1353306 () Bool)

(assert (=> d!643713 (=> (not res!919537) (not e!1353306))))

(declare-fun valid!1941 (MutableMap!2379) Bool)

(assert (=> d!643713 (= res!919537 (valid!1941 (cache!2760 cacheUp!991)))))

(assert (=> d!643713 (= (validCacheMapUp!246 (cache!2760 cacheUp!991)) e!1353306)))

(declare-fun b!2124019 () Bool)

(declare-fun res!919538 () Bool)

(assert (=> b!2124019 (=> (not res!919538) (not e!1353306))))

(declare-fun invariantList!302 (List!23820) Bool)

(declare-datatypes ((ListMap!653 0))(
  ( (ListMap!654 (toList!1065 List!23820)) )
))
(declare-fun map!4837 (MutableMap!2379) ListMap!653)

(assert (=> b!2124019 (= res!919538 (invariantList!302 (toList!1065 (map!4837 (cache!2760 cacheUp!991)))))))

(declare-fun b!2124020 () Bool)

(declare-fun lambda!78701 () Int)

(declare-fun forall!4871 (List!23820 Int) Bool)

(assert (=> b!2124020 (= e!1353306 (forall!4871 (toList!1065 (map!4837 (cache!2760 cacheUp!991))) lambda!78701))))

(assert (= (and d!643713 res!919537) b!2124019))

(assert (= (and b!2124019 res!919538) b!2124020))

(declare-fun m!2576731 () Bool)

(assert (=> d!643713 m!2576731))

(declare-fun m!2576733 () Bool)

(assert (=> b!2124019 m!2576733))

(declare-fun m!2576735 () Bool)

(assert (=> b!2124019 m!2576735))

(assert (=> b!2124020 m!2576733))

(declare-fun m!2576737 () Bool)

(assert (=> b!2124020 m!2576737))

(assert (=> d!643607 d!643713))

(assert (=> b!2123500 d!643613))

(declare-fun d!643715 () Bool)

(declare-fun res!919539 () Bool)

(declare-fun e!1353307 () Bool)

(assert (=> d!643715 (=> res!919539 e!1353307)))

(assert (=> d!643715 (= res!919539 ((_ is Nil!23738) (t!196341 (_2!13622 (_1!13623 lt!795247)))))))

(assert (=> d!643715 (= (forall!4868 (t!196341 (_2!13622 (_1!13623 lt!795247))) lambda!78654) e!1353307)))

(declare-fun b!2124021 () Bool)

(declare-fun e!1353308 () Bool)

(assert (=> b!2124021 (= e!1353307 e!1353308)))

(declare-fun res!919540 () Bool)

(assert (=> b!2124021 (=> (not res!919540) (not e!1353308))))

(assert (=> b!2124021 (= res!919540 (dynLambda!11344 lambda!78654 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))))))

(declare-fun b!2124022 () Bool)

(assert (=> b!2124022 (= e!1353308 (forall!4868 (t!196341 (t!196341 (_2!13622 (_1!13623 lt!795247)))) lambda!78654))))

(assert (= (and d!643715 (not res!919539)) b!2124021))

(assert (= (and b!2124021 res!919540) b!2124022))

(declare-fun b_lambda!70493 () Bool)

(assert (=> (not b_lambda!70493) (not b!2124021)))

(declare-fun m!2576739 () Bool)

(assert (=> b!2124021 m!2576739))

(declare-fun m!2576741 () Bool)

(assert (=> b!2124022 m!2576741))

(assert (=> b!2123601 d!643715))

(declare-fun bs!442944 () Bool)

(declare-fun d!643717 () Bool)

(assert (= bs!442944 (and d!643717 d!643657)))

(declare-fun lambda!78702 () Int)

(assert (=> bs!442944 (= lambda!78702 lambda!78685)))

(declare-fun bs!442945 () Bool)

(assert (= bs!442945 (and d!643717 d!643683)))

(assert (=> bs!442945 (= lambda!78702 lambda!78693)))

(declare-fun bs!442946 () Bool)

(assert (= bs!442946 (and d!643717 d!643649)))

(assert (=> bs!442946 (= lambda!78702 lambda!78681)))

(declare-fun bs!442947 () Bool)

(assert (= bs!442947 (and d!643717 d!643641)))

(assert (=> bs!442947 (= lambda!78702 lambda!78680)))

(declare-fun bs!442948 () Bool)

(assert (= bs!442948 (and d!643717 d!643711)))

(assert (=> bs!442948 (= lambda!78702 lambda!78698)))

(declare-fun bs!442949 () Bool)

(assert (= bs!442949 (and d!643717 d!643709)))

(assert (=> bs!442949 (= lambda!78702 lambda!78697)))

(declare-fun bs!442950 () Bool)

(assert (= bs!442950 (and d!643717 d!643707)))

(assert (=> bs!442950 (= lambda!78702 lambda!78696)))

(declare-fun bs!442951 () Bool)

(assert (= bs!442951 (and d!643717 d!643659)))

(assert (=> bs!442951 (= lambda!78702 lambda!78686)))

(declare-fun bs!442952 () Bool)

(assert (= bs!442952 (and d!643717 d!643703)))

(assert (=> bs!442952 (= lambda!78702 lambda!78694)))

(declare-fun bs!442953 () Bool)

(assert (= bs!442953 (and d!643717 d!643705)))

(assert (=> bs!442953 (= lambda!78702 lambda!78695)))

(assert (=> d!643717 (= (inv!31334 setElem!15056) (forall!4869 (exprs!1741 setElem!15056) lambda!78702))))

(declare-fun bs!442954 () Bool)

(assert (= bs!442954 d!643717))

(declare-fun m!2576743 () Bool)

(assert (=> bs!442954 m!2576743))

(assert (=> setNonEmpty!15056 d!643717))

(declare-fun bs!442955 () Bool)

(declare-fun d!643719 () Bool)

(assert (= bs!442955 (and d!643719 d!643657)))

(declare-fun lambda!78703 () Int)

(assert (=> bs!442955 (= lambda!78703 lambda!78685)))

(declare-fun bs!442956 () Bool)

(assert (= bs!442956 (and d!643719 d!643683)))

(assert (=> bs!442956 (= lambda!78703 lambda!78693)))

(declare-fun bs!442957 () Bool)

(assert (= bs!442957 (and d!643719 d!643649)))

(assert (=> bs!442957 (= lambda!78703 lambda!78681)))

(declare-fun bs!442958 () Bool)

(assert (= bs!442958 (and d!643719 d!643717)))

(assert (=> bs!442958 (= lambda!78703 lambda!78702)))

(declare-fun bs!442959 () Bool)

(assert (= bs!442959 (and d!643719 d!643641)))

(assert (=> bs!442959 (= lambda!78703 lambda!78680)))

(declare-fun bs!442960 () Bool)

(assert (= bs!442960 (and d!643719 d!643711)))

(assert (=> bs!442960 (= lambda!78703 lambda!78698)))

(declare-fun bs!442961 () Bool)

(assert (= bs!442961 (and d!643719 d!643709)))

(assert (=> bs!442961 (= lambda!78703 lambda!78697)))

(declare-fun bs!442962 () Bool)

(assert (= bs!442962 (and d!643719 d!643707)))

(assert (=> bs!442962 (= lambda!78703 lambda!78696)))

(declare-fun bs!442963 () Bool)

(assert (= bs!442963 (and d!643719 d!643659)))

(assert (=> bs!442963 (= lambda!78703 lambda!78686)))

(declare-fun bs!442964 () Bool)

(assert (= bs!442964 (and d!643719 d!643703)))

(assert (=> bs!442964 (= lambda!78703 lambda!78694)))

(declare-fun bs!442965 () Bool)

(assert (= bs!442965 (and d!643719 d!643705)))

(assert (=> bs!442965 (= lambda!78703 lambda!78695)))

(assert (=> d!643719 (= (inv!31334 (_2!13618 (_1!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))))) (forall!4869 (exprs!1741 (_2!13618 (_1!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))))) lambda!78703))))

(declare-fun bs!442966 () Bool)

(assert (= bs!442966 d!643719))

(declare-fun m!2576745 () Bool)

(assert (=> bs!442966 m!2576745))

(assert (=> b!2123843 d!643719))

(declare-fun bs!442967 () Bool)

(declare-fun d!643721 () Bool)

(assert (= bs!442967 (and d!643721 d!643657)))

(declare-fun lambda!78704 () Int)

(assert (=> bs!442967 (= lambda!78704 lambda!78685)))

(declare-fun bs!442968 () Bool)

(assert (= bs!442968 (and d!643721 d!643683)))

(assert (=> bs!442968 (= lambda!78704 lambda!78693)))

(declare-fun bs!442969 () Bool)

(assert (= bs!442969 (and d!643721 d!643649)))

(assert (=> bs!442969 (= lambda!78704 lambda!78681)))

(declare-fun bs!442970 () Bool)

(assert (= bs!442970 (and d!643721 d!643717)))

(assert (=> bs!442970 (= lambda!78704 lambda!78702)))

(declare-fun bs!442971 () Bool)

(assert (= bs!442971 (and d!643721 d!643711)))

(assert (=> bs!442971 (= lambda!78704 lambda!78698)))

(declare-fun bs!442972 () Bool)

(assert (= bs!442972 (and d!643721 d!643709)))

(assert (=> bs!442972 (= lambda!78704 lambda!78697)))

(declare-fun bs!442973 () Bool)

(assert (= bs!442973 (and d!643721 d!643707)))

(assert (=> bs!442973 (= lambda!78704 lambda!78696)))

(declare-fun bs!442974 () Bool)

(assert (= bs!442974 (and d!643721 d!643659)))

(assert (=> bs!442974 (= lambda!78704 lambda!78686)))

(declare-fun bs!442975 () Bool)

(assert (= bs!442975 (and d!643721 d!643703)))

(assert (=> bs!442975 (= lambda!78704 lambda!78694)))

(declare-fun bs!442976 () Bool)

(assert (= bs!442976 (and d!643721 d!643705)))

(assert (=> bs!442976 (= lambda!78704 lambda!78695)))

(declare-fun bs!442977 () Bool)

(assert (= bs!442977 (and d!643721 d!643719)))

(assert (=> bs!442977 (= lambda!78704 lambda!78703)))

(declare-fun bs!442978 () Bool)

(assert (= bs!442978 (and d!643721 d!643641)))

(assert (=> bs!442978 (= lambda!78704 lambda!78680)))

(assert (=> d!643721 (= (inv!31334 (_2!13618 (_1!13619 (h!29136 mapDefault!12005)))) (forall!4869 (exprs!1741 (_2!13618 (_1!13619 (h!29136 mapDefault!12005)))) lambda!78704))))

(declare-fun bs!442979 () Bool)

(assert (= bs!442979 d!643721))

(declare-fun m!2576747 () Bool)

(assert (=> bs!442979 m!2576747))

(assert (=> b!2123840 d!643721))

(declare-fun d!643723 () Bool)

(declare-fun res!919541 () Bool)

(declare-fun e!1353309 () Bool)

(assert (=> d!643723 (=> res!919541 e!1353309)))

(assert (=> d!643723 (= res!919541 ((_ is Nil!23738) (_2!13622 (_1!13623 lt!795298))))))

(assert (=> d!643723 (= (forall!4868 (_2!13622 (_1!13623 lt!795298)) lambda!78677) e!1353309)))

(declare-fun b!2124023 () Bool)

(declare-fun e!1353310 () Bool)

(assert (=> b!2124023 (= e!1353309 e!1353310)))

(declare-fun res!919542 () Bool)

(assert (=> b!2124023 (=> (not res!919542) (not e!1353310))))

(assert (=> b!2124023 (= res!919542 (dynLambda!11344 lambda!78677 (h!29139 (_2!13622 (_1!13623 lt!795298)))))))

(declare-fun b!2124024 () Bool)

(assert (=> b!2124024 (= e!1353310 (forall!4868 (t!196341 (_2!13622 (_1!13623 lt!795298))) lambda!78677))))

(assert (= (and d!643723 (not res!919541)) b!2124023))

(assert (= (and b!2124023 res!919542) b!2124024))

(declare-fun b_lambda!70495 () Bool)

(assert (=> (not b_lambda!70495) (not b!2124023)))

(declare-fun m!2576749 () Bool)

(assert (=> b!2124023 m!2576749))

(declare-fun m!2576751 () Bool)

(assert (=> b!2124024 m!2576751))

(assert (=> b!2123639 d!643723))

(declare-fun d!643725 () Bool)

(declare-fun res!919543 () Bool)

(declare-fun e!1353311 () Bool)

(assert (=> d!643725 (=> res!919543 e!1353311)))

(assert (=> d!643725 (= res!919543 ((_ is Nil!23738) Nil!23738))))

(assert (=> d!643725 (= (forall!4868 Nil!23738 (ite c!339838 lambda!78674 lambda!78675)) e!1353311)))

(declare-fun b!2124025 () Bool)

(declare-fun e!1353312 () Bool)

(assert (=> b!2124025 (= e!1353311 e!1353312)))

(declare-fun res!919544 () Bool)

(assert (=> b!2124025 (=> (not res!919544) (not e!1353312))))

(assert (=> b!2124025 (= res!919544 (dynLambda!11344 (ite c!339838 lambda!78674 lambda!78675) (h!29139 Nil!23738)))))

(declare-fun b!2124026 () Bool)

(assert (=> b!2124026 (= e!1353312 (forall!4868 (t!196341 Nil!23738) (ite c!339838 lambda!78674 lambda!78675)))))

(assert (= (and d!643725 (not res!919543)) b!2124025))

(assert (= (and b!2124025 res!919544) b!2124026))

(declare-fun b_lambda!70497 () Bool)

(assert (=> (not b_lambda!70497) (not b!2124025)))

(declare-fun m!2576753 () Bool)

(assert (=> b!2124025 m!2576753))

(declare-fun m!2576755 () Bool)

(assert (=> b!2124026 m!2576755))

(assert (=> bm!128703 d!643725))

(declare-fun bs!442980 () Bool)

(declare-fun d!643727 () Bool)

(assert (= bs!442980 (and d!643727 d!643657)))

(declare-fun lambda!78705 () Int)

(assert (=> bs!442980 (= lambda!78705 lambda!78685)))

(declare-fun bs!442981 () Bool)

(assert (= bs!442981 (and d!643727 d!643683)))

(assert (=> bs!442981 (= lambda!78705 lambda!78693)))

(declare-fun bs!442982 () Bool)

(assert (= bs!442982 (and d!643727 d!643649)))

(assert (=> bs!442982 (= lambda!78705 lambda!78681)))

(declare-fun bs!442983 () Bool)

(assert (= bs!442983 (and d!643727 d!643717)))

(assert (=> bs!442983 (= lambda!78705 lambda!78702)))

(declare-fun bs!442984 () Bool)

(assert (= bs!442984 (and d!643727 d!643711)))

(assert (=> bs!442984 (= lambda!78705 lambda!78698)))

(declare-fun bs!442985 () Bool)

(assert (= bs!442985 (and d!643727 d!643721)))

(assert (=> bs!442985 (= lambda!78705 lambda!78704)))

(declare-fun bs!442986 () Bool)

(assert (= bs!442986 (and d!643727 d!643709)))

(assert (=> bs!442986 (= lambda!78705 lambda!78697)))

(declare-fun bs!442987 () Bool)

(assert (= bs!442987 (and d!643727 d!643707)))

(assert (=> bs!442987 (= lambda!78705 lambda!78696)))

(declare-fun bs!442988 () Bool)

(assert (= bs!442988 (and d!643727 d!643659)))

(assert (=> bs!442988 (= lambda!78705 lambda!78686)))

(declare-fun bs!442989 () Bool)

(assert (= bs!442989 (and d!643727 d!643703)))

(assert (=> bs!442989 (= lambda!78705 lambda!78694)))

(declare-fun bs!442990 () Bool)

(assert (= bs!442990 (and d!643727 d!643705)))

(assert (=> bs!442990 (= lambda!78705 lambda!78695)))

(declare-fun bs!442991 () Bool)

(assert (= bs!442991 (and d!643727 d!643719)))

(assert (=> bs!442991 (= lambda!78705 lambda!78703)))

(declare-fun bs!442992 () Bool)

(assert (= bs!442992 (and d!643727 d!643641)))

(assert (=> bs!442992 (= lambda!78705 lambda!78680)))

(assert (=> d!643727 (= (inv!31334 setElem!15060) (forall!4869 (exprs!1741 setElem!15060) lambda!78705))))

(declare-fun bs!442993 () Bool)

(assert (= bs!442993 d!643727))

(declare-fun m!2576757 () Bool)

(assert (=> bs!442993 m!2576757))

(assert (=> setNonEmpty!15060 d!643727))

(declare-fun d!643729 () Bool)

(declare-fun res!919545 () Bool)

(declare-fun e!1353313 () Bool)

(assert (=> d!643729 (=> res!919545 e!1353313)))

(assert (=> d!643729 (= res!919545 ((_ is Nil!23738) Nil!23738))))

(assert (=> d!643729 (= (forall!4868 Nil!23738 (ite c!339838 lambda!78673 lambda!78673)) e!1353313)))

(declare-fun b!2124027 () Bool)

(declare-fun e!1353314 () Bool)

(assert (=> b!2124027 (= e!1353313 e!1353314)))

(declare-fun res!919546 () Bool)

(assert (=> b!2124027 (=> (not res!919546) (not e!1353314))))

(assert (=> b!2124027 (= res!919546 (dynLambda!11344 (ite c!339838 lambda!78673 lambda!78673) (h!29139 Nil!23738)))))

(declare-fun b!2124028 () Bool)

(assert (=> b!2124028 (= e!1353314 (forall!4868 (t!196341 Nil!23738) (ite c!339838 lambda!78673 lambda!78673)))))

(assert (= (and d!643729 (not res!919545)) b!2124027))

(assert (= (and b!2124027 res!919546) b!2124028))

(declare-fun b_lambda!70499 () Bool)

(assert (=> (not b_lambda!70499) (not b!2124027)))

(declare-fun m!2576759 () Bool)

(assert (=> b!2124027 m!2576759))

(declare-fun m!2576761 () Bool)

(assert (=> b!2124028 m!2576761))

(assert (=> bm!128701 d!643729))

(assert (=> b!2123696 d!643713))

(assert (=> b!2123705 d!643673))

(assert (=> b!2123705 d!643675))

(declare-fun b!2124037 () Bool)

(declare-fun e!1353319 () List!23821)

(assert (=> b!2124037 (= e!1353319 Nil!23737)))

(declare-fun b!2124038 () Bool)

(declare-fun e!1353320 () List!23821)

(assert (=> b!2124038 (= e!1353319 e!1353320)))

(declare-fun c!339882 () Bool)

(assert (=> b!2124038 (= c!339882 ((_ is Leaf!11412) (c!339823 totalInput!886)))))

(declare-fun b!2124040 () Bool)

(declare-fun ++!6316 (List!23821 List!23821) List!23821)

(assert (=> b!2124040 (= e!1353320 (++!6316 (list!9533 (left!18357 (c!339823 totalInput!886))) (list!9533 (right!18687 (c!339823 totalInput!886)))))))

(declare-fun d!643731 () Bool)

(declare-fun c!339881 () Bool)

(assert (=> d!643731 (= c!339881 ((_ is Empty!7809) (c!339823 totalInput!886)))))

(assert (=> d!643731 (= (list!9533 (c!339823 totalInput!886)) e!1353319)))

(declare-fun b!2124039 () Bool)

(declare-fun list!9534 (IArray!15623) List!23821)

(assert (=> b!2124039 (= e!1353320 (list!9534 (xs!10751 (c!339823 totalInput!886))))))

(assert (= (and d!643731 c!339881) b!2124037))

(assert (= (and d!643731 (not c!339881)) b!2124038))

(assert (= (and b!2124038 c!339882) b!2124039))

(assert (= (and b!2124038 (not c!339882)) b!2124040))

(declare-fun m!2576763 () Bool)

(assert (=> b!2124040 m!2576763))

(declare-fun m!2576765 () Bool)

(assert (=> b!2124040 m!2576765))

(assert (=> b!2124040 m!2576763))

(assert (=> b!2124040 m!2576765))

(declare-fun m!2576767 () Bool)

(assert (=> b!2124040 m!2576767))

(declare-fun m!2576769 () Bool)

(assert (=> b!2124039 m!2576769))

(assert (=> d!643631 d!643731))

(declare-fun b!2124041 () Bool)

(declare-fun res!919551 () Bool)

(declare-fun e!1353321 () Bool)

(assert (=> b!2124041 (=> (not res!919551) (not e!1353321))))

(assert (=> b!2124041 (= res!919551 (<= (- (height!1235 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) (height!1235 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) 1))))

(declare-fun b!2124042 () Bool)

(declare-fun e!1353322 () Bool)

(assert (=> b!2124042 (= e!1353322 e!1353321)))

(declare-fun res!919549 () Bool)

(assert (=> b!2124042 (=> (not res!919549) (not e!1353321))))

(assert (=> b!2124042 (= res!919549 (<= (- 1) (- (height!1235 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) (height!1235 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))))

(declare-fun b!2124043 () Bool)

(assert (=> b!2124043 (= e!1353321 (not (isEmpty!14313 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))))))

(declare-fun b!2124044 () Bool)

(declare-fun res!919547 () Bool)

(assert (=> b!2124044 (=> (not res!919547) (not e!1353321))))

(assert (=> b!2124044 (= res!919547 (isBalanced!2450 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(declare-fun b!2124045 () Bool)

(declare-fun res!919552 () Bool)

(assert (=> b!2124045 (=> (not res!919552) (not e!1353321))))

(assert (=> b!2124045 (= res!919552 (not (isEmpty!14313 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))))))

(declare-fun d!643733 () Bool)

(declare-fun res!919548 () Bool)

(assert (=> d!643733 (=> res!919548 e!1353322)))

(assert (=> d!643733 (= res!919548 (not ((_ is Node!7809) (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(assert (=> d!643733 (= (isBalanced!2450 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) e!1353322)))

(declare-fun b!2124046 () Bool)

(declare-fun res!919550 () Bool)

(assert (=> b!2124046 (=> (not res!919550) (not e!1353321))))

(assert (=> b!2124046 (= res!919550 (isBalanced!2450 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(assert (= (and d!643733 (not res!919548)) b!2124042))

(assert (= (and b!2124042 res!919549) b!2124041))

(assert (= (and b!2124041 res!919551) b!2124046))

(assert (= (and b!2124046 res!919550) b!2124044))

(assert (= (and b!2124044 res!919547) b!2124045))

(assert (= (and b!2124045 res!919552) b!2124043))

(declare-fun m!2576771 () Bool)

(assert (=> b!2124045 m!2576771))

(declare-fun m!2576773 () Bool)

(assert (=> b!2124042 m!2576773))

(declare-fun m!2576775 () Bool)

(assert (=> b!2124042 m!2576775))

(declare-fun m!2576777 () Bool)

(assert (=> b!2124046 m!2576777))

(declare-fun m!2576779 () Bool)

(assert (=> b!2124043 m!2576779))

(assert (=> b!2124041 m!2576773))

(assert (=> b!2124041 m!2576775))

(declare-fun m!2576781 () Bool)

(assert (=> b!2124044 m!2576781))

(assert (=> d!643643 d!643733))

(declare-fun bs!442994 () Bool)

(declare-fun d!643735 () Bool)

(assert (= bs!442994 (and d!643735 d!643727)))

(declare-fun lambda!78706 () Int)

(assert (=> bs!442994 (= lambda!78706 lambda!78705)))

(declare-fun bs!442995 () Bool)

(assert (= bs!442995 (and d!643735 d!643657)))

(assert (=> bs!442995 (= lambda!78706 lambda!78685)))

(declare-fun bs!442996 () Bool)

(assert (= bs!442996 (and d!643735 d!643683)))

(assert (=> bs!442996 (= lambda!78706 lambda!78693)))

(declare-fun bs!442997 () Bool)

(assert (= bs!442997 (and d!643735 d!643649)))

(assert (=> bs!442997 (= lambda!78706 lambda!78681)))

(declare-fun bs!442998 () Bool)

(assert (= bs!442998 (and d!643735 d!643717)))

(assert (=> bs!442998 (= lambda!78706 lambda!78702)))

(declare-fun bs!442999 () Bool)

(assert (= bs!442999 (and d!643735 d!643711)))

(assert (=> bs!442999 (= lambda!78706 lambda!78698)))

(declare-fun bs!443000 () Bool)

(assert (= bs!443000 (and d!643735 d!643721)))

(assert (=> bs!443000 (= lambda!78706 lambda!78704)))

(declare-fun bs!443001 () Bool)

(assert (= bs!443001 (and d!643735 d!643709)))

(assert (=> bs!443001 (= lambda!78706 lambda!78697)))

(declare-fun bs!443002 () Bool)

(assert (= bs!443002 (and d!643735 d!643707)))

(assert (=> bs!443002 (= lambda!78706 lambda!78696)))

(declare-fun bs!443003 () Bool)

(assert (= bs!443003 (and d!643735 d!643659)))

(assert (=> bs!443003 (= lambda!78706 lambda!78686)))

(declare-fun bs!443004 () Bool)

(assert (= bs!443004 (and d!643735 d!643703)))

(assert (=> bs!443004 (= lambda!78706 lambda!78694)))

(declare-fun bs!443005 () Bool)

(assert (= bs!443005 (and d!643735 d!643705)))

(assert (=> bs!443005 (= lambda!78706 lambda!78695)))

(declare-fun bs!443006 () Bool)

(assert (= bs!443006 (and d!643735 d!643719)))

(assert (=> bs!443006 (= lambda!78706 lambda!78703)))

(declare-fun bs!443007 () Bool)

(assert (= bs!443007 (and d!643735 d!643641)))

(assert (=> bs!443007 (= lambda!78706 lambda!78680)))

(assert (=> d!643735 (= (inv!31334 setElem!15034) (forall!4869 (exprs!1741 setElem!15034) lambda!78706))))

(declare-fun bs!443008 () Bool)

(assert (= bs!443008 d!643735))

(declare-fun m!2576783 () Bool)

(assert (=> bs!443008 m!2576783))

(assert (=> setNonEmpty!15033 d!643735))

(declare-fun b!2124047 () Bool)

(declare-fun e!1353323 () Int)

(assert (=> b!2124047 (= e!1353323 e!1352951)))

(declare-fun lt!795360 () Int)

(declare-fun d!643737 () Bool)

(assert (=> d!643737 (and (>= lt!795360 (- 1)) (< lt!795360 lt!795241) (>= lt!795360 e!1352951) (or (= lt!795360 e!1352951) (>= lt!795360 lt!795246)))))

(declare-fun e!1353324 () Int)

(assert (=> d!643737 (= lt!795360 e!1353324)))

(declare-fun c!339883 () Bool)

(declare-fun e!1353325 () Bool)

(assert (=> d!643737 (= c!339883 e!1353325)))

(declare-fun res!919553 () Bool)

(assert (=> d!643737 (=> res!919553 e!1353325)))

(assert (=> d!643737 (= res!919553 (= lt!795246 lt!795241))))

(assert (=> d!643737 (and (>= lt!795246 0) (<= lt!795246 lt!795241))))

(assert (=> d!643737 (= (furthestNullablePosition!11 z!3883 lt!795246 totalInput!886 lt!795241 e!1352951) lt!795360)))

(declare-fun lt!795361 () (InoxSet Context!2482))

(declare-fun b!2124048 () Bool)

(assert (=> b!2124048 (= e!1353324 (furthestNullablePosition!11 lt!795361 (+ lt!795246 1) totalInput!886 lt!795241 e!1353323))))

(assert (=> b!2124048 (= lt!795361 (derivationStepZipper!87 z!3883 (apply!5912 totalInput!886 lt!795246)))))

(declare-fun c!339884 () Bool)

(assert (=> b!2124048 (= c!339884 (nullableZipper!67 lt!795361))))

(declare-fun b!2124049 () Bool)

(assert (=> b!2124049 (= e!1353325 (lostCauseZipper!58 z!3883))))

(declare-fun b!2124050 () Bool)

(assert (=> b!2124050 (= e!1353324 e!1352951)))

(declare-fun b!2124051 () Bool)

(assert (=> b!2124051 (= e!1353323 lt!795246)))

(assert (= (and d!643737 (not res!919553)) b!2124049))

(assert (= (and d!643737 c!339883) b!2124050))

(assert (= (and d!643737 (not c!339883)) b!2124048))

(assert (= (and b!2124048 c!339884) b!2124051))

(assert (= (and b!2124048 (not c!339884)) b!2124047))

(declare-fun m!2576785 () Bool)

(assert (=> b!2124048 m!2576785))

(assert (=> b!2124048 m!2576403))

(assert (=> b!2124048 m!2576403))

(assert (=> b!2124048 m!2576632))

(declare-fun m!2576787 () Bool)

(assert (=> b!2124048 m!2576787))

(assert (=> b!2124049 m!2576421))

(assert (=> d!643595 d!643737))

(declare-fun d!643739 () Bool)

(declare-fun res!919554 () Bool)

(declare-fun e!1353326 () Bool)

(assert (=> d!643739 (=> res!919554 e!1353326)))

(assert (=> d!643739 (= res!919554 ((_ is Nil!23738) Nil!23738))))

(assert (=> d!643739 (= (forall!4868 Nil!23738 lambda!78673) e!1353326)))

(declare-fun b!2124052 () Bool)

(declare-fun e!1353327 () Bool)

(assert (=> b!2124052 (= e!1353326 e!1353327)))

(declare-fun res!919555 () Bool)

(assert (=> b!2124052 (=> (not res!919555) (not e!1353327))))

(assert (=> b!2124052 (= res!919555 (dynLambda!11344 lambda!78673 (h!29139 Nil!23738)))))

(declare-fun b!2124053 () Bool)

(assert (=> b!2124053 (= e!1353327 (forall!4868 (t!196341 Nil!23738) lambda!78673))))

(assert (= (and d!643739 (not res!919554)) b!2124052))

(assert (= (and b!2124052 res!919555) b!2124053))

(declare-fun b_lambda!70501 () Bool)

(assert (=> (not b_lambda!70501) (not b!2124052)))

(declare-fun m!2576789 () Bool)

(assert (=> b!2124052 m!2576789))

(declare-fun m!2576791 () Bool)

(assert (=> b!2124053 m!2576791))

(assert (=> d!643595 d!643739))

(assert (=> d!643595 d!643589))

(declare-fun d!643741 () Bool)

(declare-fun e!1353330 () Bool)

(assert (=> d!643741 e!1353330))

(declare-fun res!919558 () Bool)

(assert (=> d!643741 (=> res!919558 e!1353330)))

(declare-fun lt!795364 () Option!4870)

(declare-fun isEmpty!14314 (Option!4870) Bool)

(assert (=> d!643741 (= res!919558 (isEmpty!14314 lt!795364))))

(declare-fun choose!12668 (CacheFurthestNullable!596 (InoxSet Context!2482) Int Int) Option!4870)

(assert (=> d!643741 (= lt!795364 (choose!12668 cacheFurthestNullable!130 z!3883 lt!795246 e!1352951))))

(assert (=> d!643741 (and (>= e!1352951 (- 1)) (< e!1352951 lt!795246))))

(assert (=> d!643741 (= (get!7315 cacheFurthestNullable!130 z!3883 lt!795246 e!1352951) lt!795364)))

(declare-fun b!2124056 () Bool)

(declare-fun get!7316 (Option!4870) Int)

(assert (=> b!2124056 (= e!1353330 (= (get!7316 lt!795364) (furthestNullablePosition!11 z!3883 lt!795246 (totalInput!2921 cacheFurthestNullable!130) (size!18556 (totalInput!2921 cacheFurthestNullable!130)) e!1352951)))))

(assert (= (and d!643741 (not res!919558)) b!2124056))

(declare-fun m!2576793 () Bool)

(assert (=> d!643741 m!2576793))

(declare-fun m!2576795 () Bool)

(assert (=> d!643741 m!2576795))

(declare-fun m!2576797 () Bool)

(assert (=> b!2124056 m!2576797))

(declare-fun m!2576799 () Bool)

(assert (=> b!2124056 m!2576799))

(assert (=> b!2124056 m!2576799))

(declare-fun m!2576801 () Bool)

(assert (=> b!2124056 m!2576801))

(assert (=> d!643595 d!643741))

(declare-fun b!2124057 () Bool)

(declare-fun e!1353331 () Int)

(assert (=> b!2124057 (= e!1353331 e!1352951)))

(declare-fun lt!795365 () Int)

(declare-fun d!643743 () Bool)

(assert (=> d!643743 (and (>= lt!795365 (- 1)) (< lt!795365 (size!18556 totalInput!886)) (>= lt!795365 e!1352951) (or (= lt!795365 e!1352951) (>= lt!795365 lt!795246)))))

(declare-fun e!1353332 () Int)

(assert (=> d!643743 (= lt!795365 e!1353332)))

(declare-fun c!339885 () Bool)

(declare-fun e!1353333 () Bool)

(assert (=> d!643743 (= c!339885 e!1353333)))

(declare-fun res!919559 () Bool)

(assert (=> d!643743 (=> res!919559 e!1353333)))

(assert (=> d!643743 (= res!919559 (= lt!795246 (size!18556 totalInput!886)))))

(assert (=> d!643743 (and (>= lt!795246 0) (<= lt!795246 (size!18556 totalInput!886)))))

(assert (=> d!643743 (= (furthestNullablePosition!11 z!3883 lt!795246 totalInput!886 (size!18556 totalInput!886) e!1352951) lt!795365)))

(declare-fun lt!795366 () (InoxSet Context!2482))

(declare-fun b!2124058 () Bool)

(assert (=> b!2124058 (= e!1353332 (furthestNullablePosition!11 lt!795366 (+ lt!795246 1) totalInput!886 (size!18556 totalInput!886) e!1353331))))

(assert (=> b!2124058 (= lt!795366 (derivationStepZipper!87 z!3883 (apply!5912 totalInput!886 lt!795246)))))

(declare-fun c!339886 () Bool)

(assert (=> b!2124058 (= c!339886 (nullableZipper!67 lt!795366))))

(declare-fun b!2124059 () Bool)

(assert (=> b!2124059 (= e!1353333 (lostCauseZipper!58 z!3883))))

(declare-fun b!2124060 () Bool)

(assert (=> b!2124060 (= e!1353332 e!1352951)))

(declare-fun b!2124061 () Bool)

(assert (=> b!2124061 (= e!1353331 lt!795246)))

(assert (= (and d!643743 (not res!919559)) b!2124059))

(assert (= (and d!643743 c!339885) b!2124060))

(assert (= (and d!643743 (not c!339885)) b!2124058))

(assert (= (and b!2124058 c!339886) b!2124061))

(assert (= (and b!2124058 (not c!339886)) b!2124057))

(assert (=> b!2124058 m!2576349))

(declare-fun m!2576803 () Bool)

(assert (=> b!2124058 m!2576803))

(assert (=> b!2124058 m!2576403))

(assert (=> b!2124058 m!2576403))

(assert (=> b!2124058 m!2576632))

(declare-fun m!2576805 () Bool)

(assert (=> b!2124058 m!2576805))

(assert (=> b!2124059 m!2576421))

(assert (=> d!643595 d!643743))

(declare-fun b!2124062 () Bool)

(declare-fun e!1353334 () List!23821)

(assert (=> b!2124062 (= e!1353334 Nil!23737)))

(declare-fun b!2124063 () Bool)

(declare-fun e!1353335 () List!23821)

(assert (=> b!2124063 (= e!1353334 e!1353335)))

(declare-fun c!339888 () Bool)

(assert (=> b!2124063 (= c!339888 ((_ is Leaf!11412) (c!339823 input!5507)))))

(declare-fun b!2124065 () Bool)

(assert (=> b!2124065 (= e!1353335 (++!6316 (list!9533 (left!18357 (c!339823 input!5507))) (list!9533 (right!18687 (c!339823 input!5507)))))))

(declare-fun d!643745 () Bool)

(declare-fun c!339887 () Bool)

(assert (=> d!643745 (= c!339887 ((_ is Empty!7809) (c!339823 input!5507)))))

(assert (=> d!643745 (= (list!9533 (c!339823 input!5507)) e!1353334)))

(declare-fun b!2124064 () Bool)

(assert (=> b!2124064 (= e!1353335 (list!9534 (xs!10751 (c!339823 input!5507))))))

(assert (= (and d!643745 c!339887) b!2124062))

(assert (= (and d!643745 (not c!339887)) b!2124063))

(assert (= (and b!2124063 c!339888) b!2124064))

(assert (= (and b!2124063 (not c!339888)) b!2124065))

(declare-fun m!2576807 () Bool)

(assert (=> b!2124065 m!2576807))

(declare-fun m!2576809 () Bool)

(assert (=> b!2124065 m!2576809))

(assert (=> b!2124065 m!2576807))

(assert (=> b!2124065 m!2576809))

(declare-fun m!2576811 () Bool)

(assert (=> b!2124065 m!2576811))

(declare-fun m!2576813 () Bool)

(assert (=> b!2124064 m!2576813))

(assert (=> d!643625 d!643745))

(declare-fun bs!443009 () Bool)

(declare-fun d!643747 () Bool)

(assert (= bs!443009 (and d!643747 d!643727)))

(declare-fun lambda!78707 () Int)

(assert (=> bs!443009 (= lambda!78707 lambda!78705)))

(declare-fun bs!443010 () Bool)

(assert (= bs!443010 (and d!643747 d!643657)))

(assert (=> bs!443010 (= lambda!78707 lambda!78685)))

(declare-fun bs!443011 () Bool)

(assert (= bs!443011 (and d!643747 d!643683)))

(assert (=> bs!443011 (= lambda!78707 lambda!78693)))

(declare-fun bs!443012 () Bool)

(assert (= bs!443012 (and d!643747 d!643649)))

(assert (=> bs!443012 (= lambda!78707 lambda!78681)))

(declare-fun bs!443013 () Bool)

(assert (= bs!443013 (and d!643747 d!643717)))

(assert (=> bs!443013 (= lambda!78707 lambda!78702)))

(declare-fun bs!443014 () Bool)

(assert (= bs!443014 (and d!643747 d!643711)))

(assert (=> bs!443014 (= lambda!78707 lambda!78698)))

(declare-fun bs!443015 () Bool)

(assert (= bs!443015 (and d!643747 d!643721)))

(assert (=> bs!443015 (= lambda!78707 lambda!78704)))

(declare-fun bs!443016 () Bool)

(assert (= bs!443016 (and d!643747 d!643709)))

(assert (=> bs!443016 (= lambda!78707 lambda!78697)))

(declare-fun bs!443017 () Bool)

(assert (= bs!443017 (and d!643747 d!643707)))

(assert (=> bs!443017 (= lambda!78707 lambda!78696)))

(declare-fun bs!443018 () Bool)

(assert (= bs!443018 (and d!643747 d!643659)))

(assert (=> bs!443018 (= lambda!78707 lambda!78686)))

(declare-fun bs!443019 () Bool)

(assert (= bs!443019 (and d!643747 d!643703)))

(assert (=> bs!443019 (= lambda!78707 lambda!78694)))

(declare-fun bs!443020 () Bool)

(assert (= bs!443020 (and d!643747 d!643705)))

(assert (=> bs!443020 (= lambda!78707 lambda!78695)))

(declare-fun bs!443021 () Bool)

(assert (= bs!443021 (and d!643747 d!643735)))

(assert (=> bs!443021 (= lambda!78707 lambda!78706)))

(declare-fun bs!443022 () Bool)

(assert (= bs!443022 (and d!643747 d!643719)))

(assert (=> bs!443022 (= lambda!78707 lambda!78703)))

(declare-fun bs!443023 () Bool)

(assert (= bs!443023 (and d!643747 d!643641)))

(assert (=> bs!443023 (= lambda!78707 lambda!78680)))

(assert (=> d!643747 (= (inv!31334 (_1!13620 (_1!13621 (h!29137 mapDefault!12021)))) (forall!4869 (exprs!1741 (_1!13620 (_1!13621 (h!29137 mapDefault!12021)))) lambda!78707))))

(declare-fun bs!443024 () Bool)

(assert (= bs!443024 d!643747))

(declare-fun m!2576815 () Bool)

(assert (=> bs!443024 m!2576815))

(assert (=> b!2123761 d!643747))

(declare-fun bs!443025 () Bool)

(declare-fun d!643749 () Bool)

(assert (= bs!443025 (and d!643749 d!643727)))

(declare-fun lambda!78708 () Int)

(assert (=> bs!443025 (= lambda!78708 lambda!78705)))

(declare-fun bs!443026 () Bool)

(assert (= bs!443026 (and d!643749 d!643657)))

(assert (=> bs!443026 (= lambda!78708 lambda!78685)))

(declare-fun bs!443027 () Bool)

(assert (= bs!443027 (and d!643749 d!643683)))

(assert (=> bs!443027 (= lambda!78708 lambda!78693)))

(declare-fun bs!443028 () Bool)

(assert (= bs!443028 (and d!643749 d!643649)))

(assert (=> bs!443028 (= lambda!78708 lambda!78681)))

(declare-fun bs!443029 () Bool)

(assert (= bs!443029 (and d!643749 d!643717)))

(assert (=> bs!443029 (= lambda!78708 lambda!78702)))

(declare-fun bs!443030 () Bool)

(assert (= bs!443030 (and d!643749 d!643711)))

(assert (=> bs!443030 (= lambda!78708 lambda!78698)))

(declare-fun bs!443031 () Bool)

(assert (= bs!443031 (and d!643749 d!643721)))

(assert (=> bs!443031 (= lambda!78708 lambda!78704)))

(declare-fun bs!443032 () Bool)

(assert (= bs!443032 (and d!643749 d!643709)))

(assert (=> bs!443032 (= lambda!78708 lambda!78697)))

(declare-fun bs!443033 () Bool)

(assert (= bs!443033 (and d!643749 d!643707)))

(assert (=> bs!443033 (= lambda!78708 lambda!78696)))

(declare-fun bs!443034 () Bool)

(assert (= bs!443034 (and d!643749 d!643659)))

(assert (=> bs!443034 (= lambda!78708 lambda!78686)))

(declare-fun bs!443035 () Bool)

(assert (= bs!443035 (and d!643749 d!643703)))

(assert (=> bs!443035 (= lambda!78708 lambda!78694)))

(declare-fun bs!443036 () Bool)

(assert (= bs!443036 (and d!643749 d!643705)))

(assert (=> bs!443036 (= lambda!78708 lambda!78695)))

(declare-fun bs!443037 () Bool)

(assert (= bs!443037 (and d!643749 d!643735)))

(assert (=> bs!443037 (= lambda!78708 lambda!78706)))

(declare-fun bs!443038 () Bool)

(assert (= bs!443038 (and d!643749 d!643719)))

(assert (=> bs!443038 (= lambda!78708 lambda!78703)))

(declare-fun bs!443039 () Bool)

(assert (= bs!443039 (and d!643749 d!643641)))

(assert (=> bs!443039 (= lambda!78708 lambda!78680)))

(declare-fun bs!443040 () Bool)

(assert (= bs!443040 (and d!643749 d!643747)))

(assert (=> bs!443040 (= lambda!78708 lambda!78707)))

(assert (=> d!643749 (= (inv!31334 setElem!15075) (forall!4869 (exprs!1741 setElem!15075) lambda!78708))))

(declare-fun bs!443041 () Bool)

(assert (= bs!443041 d!643749))

(declare-fun m!2576817 () Bool)

(assert (=> bs!443041 m!2576817))

(assert (=> setNonEmpty!15075 d!643749))

(assert (=> b!2123688 d!643691))

(assert (=> b!2123688 d!643693))

(declare-fun bs!443042 () Bool)

(declare-fun d!643751 () Bool)

(assert (= bs!443042 (and d!643751 d!643587)))

(declare-fun lambda!78721 () Int)

(assert (=> bs!443042 (not (= lambda!78721 lambda!78658))))

(declare-fun bs!443043 () Bool)

(assert (= bs!443043 (and d!643751 d!643665)))

(assert (=> bs!443043 (not (= lambda!78721 lambda!78692))))

(declare-fun bs!443044 () Bool)

(declare-fun b!2124070 () Bool)

(assert (= bs!443044 (and b!2124070 d!643587)))

(declare-fun lambda!78722 () Int)

(assert (=> bs!443044 (not (= lambda!78722 lambda!78658))))

(declare-fun bs!443045 () Bool)

(assert (= bs!443045 (and b!2124070 d!643665)))

(assert (=> bs!443045 (not (= lambda!78722 lambda!78692))))

(declare-fun bs!443046 () Bool)

(assert (= bs!443046 (and b!2124070 d!643751)))

(assert (=> bs!443046 (not (= lambda!78722 lambda!78721))))

(declare-fun bs!443047 () Bool)

(declare-fun b!2124071 () Bool)

(assert (= bs!443047 (and b!2124071 d!643587)))

(declare-fun lambda!78723 () Int)

(assert (=> bs!443047 (not (= lambda!78723 lambda!78658))))

(declare-fun bs!443048 () Bool)

(assert (= bs!443048 (and b!2124071 d!643665)))

(assert (=> bs!443048 (not (= lambda!78723 lambda!78692))))

(declare-fun bs!443049 () Bool)

(assert (= bs!443049 (and b!2124071 d!643751)))

(assert (=> bs!443049 (not (= lambda!78723 lambda!78721))))

(declare-fun bs!443050 () Bool)

(assert (= bs!443050 (and b!2124071 b!2124070)))

(assert (=> bs!443050 (= lambda!78723 lambda!78722)))

(declare-fun e!1353342 () Unit!37609)

(declare-fun Unit!37622 () Unit!37609)

(assert (=> b!2124070 (= e!1353342 Unit!37622)))

(declare-datatypes ((List!23824 0))(
  ( (Nil!23740) (Cons!23740 (h!29141 Context!2482) (t!196348 List!23824)) )
))
(declare-fun lt!795384 () List!23824)

(declare-fun call!128719 () List!23824)

(assert (=> b!2124070 (= lt!795384 call!128719)))

(declare-fun lt!795389 () Unit!37609)

(declare-fun lemmaNotForallThenExists!14 (List!23824 Int) Unit!37609)

(assert (=> b!2124070 (= lt!795389 (lemmaNotForallThenExists!14 lt!795384 lambda!78721))))

(declare-fun call!128720 () Bool)

(assert (=> b!2124070 call!128720))

(declare-fun lt!795390 () Unit!37609)

(assert (=> b!2124070 (= lt!795390 lt!795389)))

(declare-fun Unit!37623 () Unit!37609)

(assert (=> b!2124071 (= e!1353342 Unit!37623)))

(declare-fun lt!795388 () List!23824)

(assert (=> b!2124071 (= lt!795388 call!128719)))

(declare-fun lt!795386 () Unit!37609)

(declare-fun lemmaForallThenNotExists!14 (List!23824 Int) Unit!37609)

(assert (=> b!2124071 (= lt!795386 (lemmaForallThenNotExists!14 lt!795388 lambda!78721))))

(assert (=> b!2124071 (not call!128720)))

(declare-fun lt!795387 () Unit!37609)

(assert (=> b!2124071 (= lt!795387 lt!795386)))

(declare-fun lt!795383 () Bool)

(declare-datatypes ((Option!4871 0))(
  ( (None!4870) (Some!4870 (v!28271 List!23821)) )
))
(declare-fun isEmpty!14315 (Option!4871) Bool)

(declare-fun getLanguageWitness!99 ((InoxSet Context!2482)) Option!4871)

(assert (=> d!643751 (= lt!795383 (isEmpty!14315 (getLanguageWitness!99 z!3883)))))

(declare-fun forall!4872 ((InoxSet Context!2482) Int) Bool)

(assert (=> d!643751 (= lt!795383 (forall!4872 z!3883 lambda!78721))))

(declare-fun lt!795385 () Unit!37609)

(assert (=> d!643751 (= lt!795385 e!1353342)))

(declare-fun c!339899 () Bool)

(assert (=> d!643751 (= c!339899 (not (forall!4872 z!3883 lambda!78721)))))

(assert (=> d!643751 (= (lostCauseZipper!58 z!3883) lt!795383)))

(declare-fun bm!128715 () Bool)

(declare-fun toList!1066 ((InoxSet Context!2482)) List!23824)

(assert (=> bm!128715 (= call!128719 (toList!1066 z!3883))))

(declare-fun bm!128714 () Bool)

(declare-fun exists!695 (List!23824 Int) Bool)

(assert (=> bm!128714 (= call!128720 (exists!695 (ite c!339899 lt!795384 lt!795388) (ite c!339899 lambda!78722 lambda!78723)))))

(assert (= (and d!643751 c!339899) b!2124070))

(assert (= (and d!643751 (not c!339899)) b!2124071))

(assert (= (or b!2124070 b!2124071) bm!128714))

(assert (= (or b!2124070 b!2124071) bm!128715))

(declare-fun m!2576819 () Bool)

(assert (=> b!2124071 m!2576819))

(declare-fun m!2576821 () Bool)

(assert (=> bm!128714 m!2576821))

(declare-fun m!2576823 () Bool)

(assert (=> b!2124070 m!2576823))

(declare-fun m!2576825 () Bool)

(assert (=> bm!128715 m!2576825))

(declare-fun m!2576827 () Bool)

(assert (=> d!643751 m!2576827))

(assert (=> d!643751 m!2576827))

(declare-fun m!2576829 () Bool)

(assert (=> d!643751 m!2576829))

(declare-fun m!2576831 () Bool)

(assert (=> d!643751 m!2576831))

(assert (=> d!643751 m!2576831))

(assert (=> b!2123630 d!643751))

(declare-fun bs!443051 () Bool)

(declare-fun d!643753 () Bool)

(assert (= bs!443051 (and d!643753 d!643727)))

(declare-fun lambda!78724 () Int)

(assert (=> bs!443051 (= lambda!78724 lambda!78705)))

(declare-fun bs!443052 () Bool)

(assert (= bs!443052 (and d!643753 d!643657)))

(assert (=> bs!443052 (= lambda!78724 lambda!78685)))

(declare-fun bs!443053 () Bool)

(assert (= bs!443053 (and d!643753 d!643683)))

(assert (=> bs!443053 (= lambda!78724 lambda!78693)))

(declare-fun bs!443054 () Bool)

(assert (= bs!443054 (and d!643753 d!643649)))

(assert (=> bs!443054 (= lambda!78724 lambda!78681)))

(declare-fun bs!443055 () Bool)

(assert (= bs!443055 (and d!643753 d!643717)))

(assert (=> bs!443055 (= lambda!78724 lambda!78702)))

(declare-fun bs!443056 () Bool)

(assert (= bs!443056 (and d!643753 d!643711)))

(assert (=> bs!443056 (= lambda!78724 lambda!78698)))

(declare-fun bs!443057 () Bool)

(assert (= bs!443057 (and d!643753 d!643721)))

(assert (=> bs!443057 (= lambda!78724 lambda!78704)))

(declare-fun bs!443058 () Bool)

(assert (= bs!443058 (and d!643753 d!643709)))

(assert (=> bs!443058 (= lambda!78724 lambda!78697)))

(declare-fun bs!443059 () Bool)

(assert (= bs!443059 (and d!643753 d!643707)))

(assert (=> bs!443059 (= lambda!78724 lambda!78696)))

(declare-fun bs!443060 () Bool)

(assert (= bs!443060 (and d!643753 d!643659)))

(assert (=> bs!443060 (= lambda!78724 lambda!78686)))

(declare-fun bs!443061 () Bool)

(assert (= bs!443061 (and d!643753 d!643703)))

(assert (=> bs!443061 (= lambda!78724 lambda!78694)))

(declare-fun bs!443062 () Bool)

(assert (= bs!443062 (and d!643753 d!643705)))

(assert (=> bs!443062 (= lambda!78724 lambda!78695)))

(declare-fun bs!443063 () Bool)

(assert (= bs!443063 (and d!643753 d!643735)))

(assert (=> bs!443063 (= lambda!78724 lambda!78706)))

(declare-fun bs!443064 () Bool)

(assert (= bs!443064 (and d!643753 d!643749)))

(assert (=> bs!443064 (= lambda!78724 lambda!78708)))

(declare-fun bs!443065 () Bool)

(assert (= bs!443065 (and d!643753 d!643719)))

(assert (=> bs!443065 (= lambda!78724 lambda!78703)))

(declare-fun bs!443066 () Bool)

(assert (= bs!443066 (and d!643753 d!643641)))

(assert (=> bs!443066 (= lambda!78724 lambda!78680)))

(declare-fun bs!443067 () Bool)

(assert (= bs!443067 (and d!643753 d!643747)))

(assert (=> bs!443067 (= lambda!78724 lambda!78707)))

(assert (=> d!643753 (= (inv!31334 (_1!13620 (_1!13621 (h!29137 mapDefault!12007)))) (forall!4869 (exprs!1741 (_1!13620 (_1!13621 (h!29137 mapDefault!12007)))) lambda!78724))))

(declare-fun bs!443068 () Bool)

(assert (= bs!443068 d!643753))

(declare-fun m!2576833 () Bool)

(assert (=> bs!443068 m!2576833))

(assert (=> b!2123783 d!643753))

(declare-fun d!643755 () Bool)

(assert (=> d!643755 (= (valid!1937 (_2!13626 lt!795266)) (validCacheMapFurthestNullable!96 (cache!2762 (_2!13626 lt!795266)) (totalInput!2921 (_2!13626 lt!795266))))))

(declare-fun bs!443069 () Bool)

(assert (= bs!443069 d!643755))

(declare-fun m!2576835 () Bool)

(assert (=> bs!443069 m!2576835))

(assert (=> d!643591 d!643755))

(assert (=> d!643591 d!643585))

(declare-fun d!643757 () Bool)

(declare-fun res!919564 () Bool)

(declare-fun e!1353347 () Bool)

(assert (=> d!643757 (=> res!919564 e!1353347)))

(assert (=> d!643757 (= res!919564 ((_ is Nil!23734) (exprs!1741 setElem!15007)))))

(assert (=> d!643757 (= (forall!4869 (exprs!1741 setElem!15007) lambda!78680) e!1353347)))

(declare-fun b!2124076 () Bool)

(declare-fun e!1353348 () Bool)

(assert (=> b!2124076 (= e!1353347 e!1353348)))

(declare-fun res!919565 () Bool)

(assert (=> b!2124076 (=> (not res!919565) (not e!1353348))))

(declare-fun dynLambda!11345 (Int Regex!5671) Bool)

(assert (=> b!2124076 (= res!919565 (dynLambda!11345 lambda!78680 (h!29135 (exprs!1741 setElem!15007))))))

(declare-fun b!2124077 () Bool)

(assert (=> b!2124077 (= e!1353348 (forall!4869 (t!196337 (exprs!1741 setElem!15007)) lambda!78680))))

(assert (= (and d!643757 (not res!919564)) b!2124076))

(assert (= (and b!2124076 res!919565) b!2124077))

(declare-fun b_lambda!70503 () Bool)

(assert (=> (not b_lambda!70503) (not b!2124076)))

(declare-fun m!2576837 () Bool)

(assert (=> b!2124076 m!2576837))

(declare-fun m!2576839 () Bool)

(assert (=> b!2124077 m!2576839))

(assert (=> d!643641 d!643757))

(declare-fun d!643759 () Bool)

(declare-fun c!339900 () Bool)

(assert (=> d!643759 (= c!339900 ((_ is Node!7809) (left!18357 (c!339823 totalInput!886))))))

(declare-fun e!1353349 () Bool)

(assert (=> d!643759 (= (inv!31333 (left!18357 (c!339823 totalInput!886))) e!1353349)))

(declare-fun b!2124078 () Bool)

(assert (=> b!2124078 (= e!1353349 (inv!31335 (left!18357 (c!339823 totalInput!886))))))

(declare-fun b!2124079 () Bool)

(declare-fun e!1353350 () Bool)

(assert (=> b!2124079 (= e!1353349 e!1353350)))

(declare-fun res!919566 () Bool)

(assert (=> b!2124079 (= res!919566 (not ((_ is Leaf!11412) (left!18357 (c!339823 totalInput!886)))))))

(assert (=> b!2124079 (=> res!919566 e!1353350)))

(declare-fun b!2124080 () Bool)

(assert (=> b!2124080 (= e!1353350 (inv!31336 (left!18357 (c!339823 totalInput!886))))))

(assert (= (and d!643759 c!339900) b!2124078))

(assert (= (and d!643759 (not c!339900)) b!2124079))

(assert (= (and b!2124079 (not res!919566)) b!2124080))

(declare-fun m!2576841 () Bool)

(assert (=> b!2124078 m!2576841))

(declare-fun m!2576843 () Bool)

(assert (=> b!2124080 m!2576843))

(assert (=> b!2123778 d!643759))

(declare-fun d!643761 () Bool)

(declare-fun c!339901 () Bool)

(assert (=> d!643761 (= c!339901 ((_ is Node!7809) (right!18687 (c!339823 totalInput!886))))))

(declare-fun e!1353351 () Bool)

(assert (=> d!643761 (= (inv!31333 (right!18687 (c!339823 totalInput!886))) e!1353351)))

(declare-fun b!2124081 () Bool)

(assert (=> b!2124081 (= e!1353351 (inv!31335 (right!18687 (c!339823 totalInput!886))))))

(declare-fun b!2124082 () Bool)

(declare-fun e!1353352 () Bool)

(assert (=> b!2124082 (= e!1353351 e!1353352)))

(declare-fun res!919567 () Bool)

(assert (=> b!2124082 (= res!919567 (not ((_ is Leaf!11412) (right!18687 (c!339823 totalInput!886)))))))

(assert (=> b!2124082 (=> res!919567 e!1353352)))

(declare-fun b!2124083 () Bool)

(assert (=> b!2124083 (= e!1353352 (inv!31336 (right!18687 (c!339823 totalInput!886))))))

(assert (= (and d!643761 c!339901) b!2124081))

(assert (= (and d!643761 (not c!339901)) b!2124082))

(assert (= (and b!2124082 (not res!919567)) b!2124083))

(declare-fun m!2576845 () Bool)

(assert (=> b!2124081 m!2576845))

(declare-fun m!2576847 () Bool)

(assert (=> b!2124083 m!2576847))

(assert (=> b!2123778 d!643761))

(declare-fun bs!443070 () Bool)

(declare-fun d!643763 () Bool)

(assert (= bs!443070 (and d!643763 d!643727)))

(declare-fun lambda!78725 () Int)

(assert (=> bs!443070 (= lambda!78725 lambda!78705)))

(declare-fun bs!443071 () Bool)

(assert (= bs!443071 (and d!643763 d!643657)))

(assert (=> bs!443071 (= lambda!78725 lambda!78685)))

(declare-fun bs!443072 () Bool)

(assert (= bs!443072 (and d!643763 d!643683)))

(assert (=> bs!443072 (= lambda!78725 lambda!78693)))

(declare-fun bs!443073 () Bool)

(assert (= bs!443073 (and d!643763 d!643649)))

(assert (=> bs!443073 (= lambda!78725 lambda!78681)))

(declare-fun bs!443074 () Bool)

(assert (= bs!443074 (and d!643763 d!643717)))

(assert (=> bs!443074 (= lambda!78725 lambda!78702)))

(declare-fun bs!443075 () Bool)

(assert (= bs!443075 (and d!643763 d!643711)))

(assert (=> bs!443075 (= lambda!78725 lambda!78698)))

(declare-fun bs!443076 () Bool)

(assert (= bs!443076 (and d!643763 d!643721)))

(assert (=> bs!443076 (= lambda!78725 lambda!78704)))

(declare-fun bs!443077 () Bool)

(assert (= bs!443077 (and d!643763 d!643709)))

(assert (=> bs!443077 (= lambda!78725 lambda!78697)))

(declare-fun bs!443078 () Bool)

(assert (= bs!443078 (and d!643763 d!643659)))

(assert (=> bs!443078 (= lambda!78725 lambda!78686)))

(declare-fun bs!443079 () Bool)

(assert (= bs!443079 (and d!643763 d!643703)))

(assert (=> bs!443079 (= lambda!78725 lambda!78694)))

(declare-fun bs!443080 () Bool)

(assert (= bs!443080 (and d!643763 d!643705)))

(assert (=> bs!443080 (= lambda!78725 lambda!78695)))

(declare-fun bs!443081 () Bool)

(assert (= bs!443081 (and d!643763 d!643735)))

(assert (=> bs!443081 (= lambda!78725 lambda!78706)))

(declare-fun bs!443082 () Bool)

(assert (= bs!443082 (and d!643763 d!643749)))

(assert (=> bs!443082 (= lambda!78725 lambda!78708)))

(declare-fun bs!443083 () Bool)

(assert (= bs!443083 (and d!643763 d!643719)))

(assert (=> bs!443083 (= lambda!78725 lambda!78703)))

(declare-fun bs!443084 () Bool)

(assert (= bs!443084 (and d!643763 d!643641)))

(assert (=> bs!443084 (= lambda!78725 lambda!78680)))

(declare-fun bs!443085 () Bool)

(assert (= bs!443085 (and d!643763 d!643747)))

(assert (=> bs!443085 (= lambda!78725 lambda!78707)))

(declare-fun bs!443086 () Bool)

(assert (= bs!443086 (and d!643763 d!643753)))

(assert (=> bs!443086 (= lambda!78725 lambda!78724)))

(declare-fun bs!443087 () Bool)

(assert (= bs!443087 (and d!643763 d!643707)))

(assert (=> bs!443087 (= lambda!78725 lambda!78696)))

(assert (=> d!643763 (= (inv!31334 setElem!15074) (forall!4869 (exprs!1741 setElem!15074) lambda!78725))))

(declare-fun bs!443088 () Bool)

(assert (= bs!443088 d!643763))

(declare-fun m!2576849 () Bool)

(assert (=> bs!443088 m!2576849))

(assert (=> setNonEmpty!15074 d!643763))

(declare-fun d!643765 () Bool)

(declare-fun res!919572 () Bool)

(declare-fun e!1353355 () Bool)

(assert (=> d!643765 (=> (not res!919572) (not e!1353355))))

(assert (=> d!643765 (= res!919572 (<= (size!18557 (list!9534 (xs!10751 (c!339823 totalInput!886)))) 512))))

(assert (=> d!643765 (= (inv!31336 (c!339823 totalInput!886)) e!1353355)))

(declare-fun b!2124088 () Bool)

(declare-fun res!919573 () Bool)

(assert (=> b!2124088 (=> (not res!919573) (not e!1353355))))

(assert (=> b!2124088 (= res!919573 (= (csize!15849 (c!339823 totalInput!886)) (size!18557 (list!9534 (xs!10751 (c!339823 totalInput!886))))))))

(declare-fun b!2124089 () Bool)

(assert (=> b!2124089 (= e!1353355 (and (> (csize!15849 (c!339823 totalInput!886)) 0) (<= (csize!15849 (c!339823 totalInput!886)) 512)))))

(assert (= (and d!643765 res!919572) b!2124088))

(assert (= (and b!2124088 res!919573) b!2124089))

(assert (=> d!643765 m!2576769))

(assert (=> d!643765 m!2576769))

(declare-fun m!2576851 () Bool)

(assert (=> d!643765 m!2576851))

(assert (=> b!2124088 m!2576769))

(assert (=> b!2124088 m!2576769))

(assert (=> b!2124088 m!2576851))

(assert (=> b!2123675 d!643765))

(declare-fun d!643767 () Bool)

(assert (=> d!643767 (= (inv!31337 (xs!10751 (c!339823 input!5507))) (<= (size!18557 (innerList!7869 (xs!10751 (c!339823 input!5507)))) 2147483647))))

(declare-fun bs!443089 () Bool)

(assert (= bs!443089 d!643767))

(declare-fun m!2576853 () Bool)

(assert (=> bs!443089 m!2576853))

(assert (=> b!2123851 d!643767))

(declare-fun d!643769 () Bool)

(declare-fun res!919580 () Bool)

(declare-fun e!1353358 () Bool)

(assert (=> d!643769 (=> (not res!919580) (not e!1353358))))

(assert (=> d!643769 (= res!919580 (= (csize!15848 (c!339823 totalInput!886)) (+ (size!18558 (left!18357 (c!339823 totalInput!886))) (size!18558 (right!18687 (c!339823 totalInput!886))))))))

(assert (=> d!643769 (= (inv!31335 (c!339823 totalInput!886)) e!1353358)))

(declare-fun b!2124096 () Bool)

(declare-fun res!919581 () Bool)

(assert (=> b!2124096 (=> (not res!919581) (not e!1353358))))

(assert (=> b!2124096 (= res!919581 (and (not (= (left!18357 (c!339823 totalInput!886)) Empty!7809)) (not (= (right!18687 (c!339823 totalInput!886)) Empty!7809))))))

(declare-fun b!2124097 () Bool)

(declare-fun res!919582 () Bool)

(assert (=> b!2124097 (=> (not res!919582) (not e!1353358))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2124097 (= res!919582 (= (cheight!8020 (c!339823 totalInput!886)) (+ (max!0 (height!1235 (left!18357 (c!339823 totalInput!886))) (height!1235 (right!18687 (c!339823 totalInput!886)))) 1)))))

(declare-fun b!2124098 () Bool)

(assert (=> b!2124098 (= e!1353358 (<= 0 (cheight!8020 (c!339823 totalInput!886))))))

(assert (= (and d!643769 res!919580) b!2124096))

(assert (= (and b!2124096 res!919581) b!2124097))

(assert (= (and b!2124097 res!919582) b!2124098))

(declare-fun m!2576855 () Bool)

(assert (=> d!643769 m!2576855))

(declare-fun m!2576857 () Bool)

(assert (=> d!643769 m!2576857))

(declare-fun m!2576859 () Bool)

(assert (=> b!2124097 m!2576859))

(declare-fun m!2576861 () Bool)

(assert (=> b!2124097 m!2576861))

(assert (=> b!2124097 m!2576859))

(assert (=> b!2124097 m!2576861))

(declare-fun m!2576863 () Bool)

(assert (=> b!2124097 m!2576863))

(assert (=> b!2123673 d!643769))

(declare-fun d!643771 () Bool)

(declare-fun lt!795393 () Bool)

(declare-fun isEmpty!14316 (List!23821) Bool)

(assert (=> d!643771 (= lt!795393 (isEmpty!14316 (list!9533 (right!18687 (c!339823 input!5507)))))))

(assert (=> d!643771 (= lt!795393 (= (size!18558 (right!18687 (c!339823 input!5507))) 0))))

(assert (=> d!643771 (= (isEmpty!14313 (right!18687 (c!339823 input!5507))) lt!795393)))

(declare-fun bs!443090 () Bool)

(assert (= bs!443090 d!643771))

(assert (=> bs!443090 m!2576809))

(assert (=> bs!443090 m!2576809))

(declare-fun m!2576865 () Bool)

(assert (=> bs!443090 m!2576865))

(declare-fun m!2576867 () Bool)

(assert (=> bs!443090 m!2576867))

(assert (=> b!2123690 d!643771))

(declare-fun bs!443091 () Bool)

(declare-fun d!643773 () Bool)

(assert (= bs!443091 (and d!643773 d!643763)))

(declare-fun lambda!78726 () Int)

(assert (=> bs!443091 (= lambda!78726 lambda!78725)))

(declare-fun bs!443092 () Bool)

(assert (= bs!443092 (and d!643773 d!643727)))

(assert (=> bs!443092 (= lambda!78726 lambda!78705)))

(declare-fun bs!443093 () Bool)

(assert (= bs!443093 (and d!643773 d!643657)))

(assert (=> bs!443093 (= lambda!78726 lambda!78685)))

(declare-fun bs!443094 () Bool)

(assert (= bs!443094 (and d!643773 d!643683)))

(assert (=> bs!443094 (= lambda!78726 lambda!78693)))

(declare-fun bs!443095 () Bool)

(assert (= bs!443095 (and d!643773 d!643649)))

(assert (=> bs!443095 (= lambda!78726 lambda!78681)))

(declare-fun bs!443096 () Bool)

(assert (= bs!443096 (and d!643773 d!643717)))

(assert (=> bs!443096 (= lambda!78726 lambda!78702)))

(declare-fun bs!443097 () Bool)

(assert (= bs!443097 (and d!643773 d!643711)))

(assert (=> bs!443097 (= lambda!78726 lambda!78698)))

(declare-fun bs!443098 () Bool)

(assert (= bs!443098 (and d!643773 d!643721)))

(assert (=> bs!443098 (= lambda!78726 lambda!78704)))

(declare-fun bs!443099 () Bool)

(assert (= bs!443099 (and d!643773 d!643709)))

(assert (=> bs!443099 (= lambda!78726 lambda!78697)))

(declare-fun bs!443100 () Bool)

(assert (= bs!443100 (and d!643773 d!643659)))

(assert (=> bs!443100 (= lambda!78726 lambda!78686)))

(declare-fun bs!443101 () Bool)

(assert (= bs!443101 (and d!643773 d!643703)))

(assert (=> bs!443101 (= lambda!78726 lambda!78694)))

(declare-fun bs!443102 () Bool)

(assert (= bs!443102 (and d!643773 d!643705)))

(assert (=> bs!443102 (= lambda!78726 lambda!78695)))

(declare-fun bs!443103 () Bool)

(assert (= bs!443103 (and d!643773 d!643735)))

(assert (=> bs!443103 (= lambda!78726 lambda!78706)))

(declare-fun bs!443104 () Bool)

(assert (= bs!443104 (and d!643773 d!643749)))

(assert (=> bs!443104 (= lambda!78726 lambda!78708)))

(declare-fun bs!443105 () Bool)

(assert (= bs!443105 (and d!643773 d!643719)))

(assert (=> bs!443105 (= lambda!78726 lambda!78703)))

(declare-fun bs!443106 () Bool)

(assert (= bs!443106 (and d!643773 d!643641)))

(assert (=> bs!443106 (= lambda!78726 lambda!78680)))

(declare-fun bs!443107 () Bool)

(assert (= bs!443107 (and d!643773 d!643747)))

(assert (=> bs!443107 (= lambda!78726 lambda!78707)))

(declare-fun bs!443108 () Bool)

(assert (= bs!443108 (and d!643773 d!643753)))

(assert (=> bs!443108 (= lambda!78726 lambda!78724)))

(declare-fun bs!443109 () Bool)

(assert (= bs!443109 (and d!643773 d!643707)))

(assert (=> bs!443109 (= lambda!78726 lambda!78696)))

(assert (=> d!643773 (= (inv!31334 (_1!13620 (_1!13621 (h!29137 mapValue!12021)))) (forall!4869 (exprs!1741 (_1!13620 (_1!13621 (h!29137 mapValue!12021)))) lambda!78726))))

(declare-fun bs!443110 () Bool)

(assert (= bs!443110 d!643773))

(declare-fun m!2576869 () Bool)

(assert (=> bs!443110 m!2576869))

(assert (=> b!2123764 d!643773))

(declare-fun d!643775 () Bool)

(declare-fun res!919589 () Bool)

(declare-fun e!1353363 () Bool)

(assert (=> d!643775 (=> (not res!919589) (not e!1353363))))

(declare-fun valid!1942 (MutableMap!2380) Bool)

(assert (=> d!643775 (= res!919589 (valid!1942 (cache!2761 cacheDown!1110)))))

(assert (=> d!643775 (= (validCacheMapDown!244 (cache!2761 cacheDown!1110)) e!1353363)))

(declare-fun b!2124105 () Bool)

(declare-fun res!919590 () Bool)

(assert (=> b!2124105 (=> (not res!919590) (not e!1353363))))

(declare-fun invariantList!303 (List!23819) Bool)

(declare-datatypes ((ListMap!655 0))(
  ( (ListMap!656 (toList!1067 List!23819)) )
))
(declare-fun map!4838 (MutableMap!2380) ListMap!655)

(assert (=> b!2124105 (= res!919590 (invariantList!303 (toList!1067 (map!4838 (cache!2761 cacheDown!1110)))))))

(declare-fun b!2124106 () Bool)

(declare-fun lambda!78729 () Int)

(declare-fun forall!4873 (List!23819 Int) Bool)

(assert (=> b!2124106 (= e!1353363 (forall!4873 (toList!1067 (map!4838 (cache!2761 cacheDown!1110))) lambda!78729))))

(assert (= (and d!643775 res!919589) b!2124105))

(assert (= (and b!2124105 res!919590) b!2124106))

(declare-fun m!2576872 () Bool)

(assert (=> d!643775 m!2576872))

(declare-fun m!2576874 () Bool)

(assert (=> b!2124105 m!2576874))

(declare-fun m!2576876 () Bool)

(assert (=> b!2124105 m!2576876))

(assert (=> b!2124106 m!2576874))

(declare-fun m!2576878 () Bool)

(assert (=> b!2124106 m!2576878))

(assert (=> b!2123699 d!643775))

(declare-fun bs!443111 () Bool)

(declare-fun d!643777 () Bool)

(assert (= bs!443111 (and d!643777 d!643763)))

(declare-fun lambda!78730 () Int)

(assert (=> bs!443111 (= lambda!78730 lambda!78725)))

(declare-fun bs!443112 () Bool)

(assert (= bs!443112 (and d!643777 d!643727)))

(assert (=> bs!443112 (= lambda!78730 lambda!78705)))

(declare-fun bs!443113 () Bool)

(assert (= bs!443113 (and d!643777 d!643657)))

(assert (=> bs!443113 (= lambda!78730 lambda!78685)))

(declare-fun bs!443114 () Bool)

(assert (= bs!443114 (and d!643777 d!643683)))

(assert (=> bs!443114 (= lambda!78730 lambda!78693)))

(declare-fun bs!443115 () Bool)

(assert (= bs!443115 (and d!643777 d!643649)))

(assert (=> bs!443115 (= lambda!78730 lambda!78681)))

(declare-fun bs!443116 () Bool)

(assert (= bs!443116 (and d!643777 d!643717)))

(assert (=> bs!443116 (= lambda!78730 lambda!78702)))

(declare-fun bs!443117 () Bool)

(assert (= bs!443117 (and d!643777 d!643711)))

(assert (=> bs!443117 (= lambda!78730 lambda!78698)))

(declare-fun bs!443118 () Bool)

(assert (= bs!443118 (and d!643777 d!643773)))

(assert (=> bs!443118 (= lambda!78730 lambda!78726)))

(declare-fun bs!443119 () Bool)

(assert (= bs!443119 (and d!643777 d!643721)))

(assert (=> bs!443119 (= lambda!78730 lambda!78704)))

(declare-fun bs!443120 () Bool)

(assert (= bs!443120 (and d!643777 d!643709)))

(assert (=> bs!443120 (= lambda!78730 lambda!78697)))

(declare-fun bs!443121 () Bool)

(assert (= bs!443121 (and d!643777 d!643659)))

(assert (=> bs!443121 (= lambda!78730 lambda!78686)))

(declare-fun bs!443122 () Bool)

(assert (= bs!443122 (and d!643777 d!643703)))

(assert (=> bs!443122 (= lambda!78730 lambda!78694)))

(declare-fun bs!443123 () Bool)

(assert (= bs!443123 (and d!643777 d!643705)))

(assert (=> bs!443123 (= lambda!78730 lambda!78695)))

(declare-fun bs!443124 () Bool)

(assert (= bs!443124 (and d!643777 d!643735)))

(assert (=> bs!443124 (= lambda!78730 lambda!78706)))

(declare-fun bs!443125 () Bool)

(assert (= bs!443125 (and d!643777 d!643749)))

(assert (=> bs!443125 (= lambda!78730 lambda!78708)))

(declare-fun bs!443126 () Bool)

(assert (= bs!443126 (and d!643777 d!643719)))

(assert (=> bs!443126 (= lambda!78730 lambda!78703)))

(declare-fun bs!443127 () Bool)

(assert (= bs!443127 (and d!643777 d!643641)))

(assert (=> bs!443127 (= lambda!78730 lambda!78680)))

(declare-fun bs!443128 () Bool)

(assert (= bs!443128 (and d!643777 d!643747)))

(assert (=> bs!443128 (= lambda!78730 lambda!78707)))

(declare-fun bs!443129 () Bool)

(assert (= bs!443129 (and d!643777 d!643753)))

(assert (=> bs!443129 (= lambda!78730 lambda!78724)))

(declare-fun bs!443130 () Bool)

(assert (= bs!443130 (and d!643777 d!643707)))

(assert (=> bs!443130 (= lambda!78730 lambda!78696)))

(assert (=> d!643777 (= (inv!31334 setElem!15063) (forall!4869 (exprs!1741 setElem!15063) lambda!78730))))

(declare-fun bs!443131 () Bool)

(assert (= bs!443131 d!643777))

(declare-fun m!2576880 () Bool)

(assert (=> bs!443131 m!2576880))

(assert (=> setNonEmpty!15063 d!643777))

(declare-fun b!2124107 () Bool)

(declare-fun res!919595 () Bool)

(declare-fun e!1353364 () Bool)

(assert (=> b!2124107 (=> (not res!919595) (not e!1353364))))

(assert (=> b!2124107 (= res!919595 (<= (- (height!1235 (left!18357 (c!339823 totalInput!886))) (height!1235 (right!18687 (c!339823 totalInput!886)))) 1))))

(declare-fun b!2124108 () Bool)

(declare-fun e!1353365 () Bool)

(assert (=> b!2124108 (= e!1353365 e!1353364)))

(declare-fun res!919593 () Bool)

(assert (=> b!2124108 (=> (not res!919593) (not e!1353364))))

(assert (=> b!2124108 (= res!919593 (<= (- 1) (- (height!1235 (left!18357 (c!339823 totalInput!886))) (height!1235 (right!18687 (c!339823 totalInput!886))))))))

(declare-fun b!2124109 () Bool)

(assert (=> b!2124109 (= e!1353364 (not (isEmpty!14313 (right!18687 (c!339823 totalInput!886)))))))

(declare-fun b!2124110 () Bool)

(declare-fun res!919591 () Bool)

(assert (=> b!2124110 (=> (not res!919591) (not e!1353364))))

(assert (=> b!2124110 (= res!919591 (isBalanced!2450 (right!18687 (c!339823 totalInput!886))))))

(declare-fun b!2124111 () Bool)

(declare-fun res!919596 () Bool)

(assert (=> b!2124111 (=> (not res!919596) (not e!1353364))))

(assert (=> b!2124111 (= res!919596 (not (isEmpty!14313 (left!18357 (c!339823 totalInput!886)))))))

(declare-fun d!643779 () Bool)

(declare-fun res!919592 () Bool)

(assert (=> d!643779 (=> res!919592 e!1353365)))

(assert (=> d!643779 (= res!919592 (not ((_ is Node!7809) (c!339823 totalInput!886))))))

(assert (=> d!643779 (= (isBalanced!2450 (c!339823 totalInput!886)) e!1353365)))

(declare-fun b!2124112 () Bool)

(declare-fun res!919594 () Bool)

(assert (=> b!2124112 (=> (not res!919594) (not e!1353364))))

(assert (=> b!2124112 (= res!919594 (isBalanced!2450 (left!18357 (c!339823 totalInput!886))))))

(assert (= (and d!643779 (not res!919592)) b!2124108))

(assert (= (and b!2124108 res!919593) b!2124107))

(assert (= (and b!2124107 res!919595) b!2124112))

(assert (= (and b!2124112 res!919594) b!2124110))

(assert (= (and b!2124110 res!919591) b!2124111))

(assert (= (and b!2124111 res!919596) b!2124109))

(declare-fun m!2576882 () Bool)

(assert (=> b!2124111 m!2576882))

(assert (=> b!2124108 m!2576859))

(assert (=> b!2124108 m!2576861))

(declare-fun m!2576884 () Bool)

(assert (=> b!2124112 m!2576884))

(declare-fun m!2576886 () Bool)

(assert (=> b!2124109 m!2576886))

(assert (=> b!2124107 m!2576859))

(assert (=> b!2124107 m!2576861))

(declare-fun m!2576888 () Bool)

(assert (=> b!2124110 m!2576888))

(assert (=> d!643627 d!643779))

(declare-fun bs!443132 () Bool)

(declare-fun d!643781 () Bool)

(assert (= bs!443132 (and d!643781 d!643763)))

(declare-fun lambda!78731 () Int)

(assert (=> bs!443132 (= lambda!78731 lambda!78725)))

(declare-fun bs!443133 () Bool)

(assert (= bs!443133 (and d!643781 d!643727)))

(assert (=> bs!443133 (= lambda!78731 lambda!78705)))

(declare-fun bs!443134 () Bool)

(assert (= bs!443134 (and d!643781 d!643657)))

(assert (=> bs!443134 (= lambda!78731 lambda!78685)))

(declare-fun bs!443135 () Bool)

(assert (= bs!443135 (and d!643781 d!643683)))

(assert (=> bs!443135 (= lambda!78731 lambda!78693)))

(declare-fun bs!443136 () Bool)

(assert (= bs!443136 (and d!643781 d!643717)))

(assert (=> bs!443136 (= lambda!78731 lambda!78702)))

(declare-fun bs!443137 () Bool)

(assert (= bs!443137 (and d!643781 d!643711)))

(assert (=> bs!443137 (= lambda!78731 lambda!78698)))

(declare-fun bs!443138 () Bool)

(assert (= bs!443138 (and d!643781 d!643773)))

(assert (=> bs!443138 (= lambda!78731 lambda!78726)))

(declare-fun bs!443139 () Bool)

(assert (= bs!443139 (and d!643781 d!643721)))

(assert (=> bs!443139 (= lambda!78731 lambda!78704)))

(declare-fun bs!443140 () Bool)

(assert (= bs!443140 (and d!643781 d!643709)))

(assert (=> bs!443140 (= lambda!78731 lambda!78697)))

(declare-fun bs!443141 () Bool)

(assert (= bs!443141 (and d!643781 d!643659)))

(assert (=> bs!443141 (= lambda!78731 lambda!78686)))

(declare-fun bs!443142 () Bool)

(assert (= bs!443142 (and d!643781 d!643703)))

(assert (=> bs!443142 (= lambda!78731 lambda!78694)))

(declare-fun bs!443143 () Bool)

(assert (= bs!443143 (and d!643781 d!643705)))

(assert (=> bs!443143 (= lambda!78731 lambda!78695)))

(declare-fun bs!443144 () Bool)

(assert (= bs!443144 (and d!643781 d!643735)))

(assert (=> bs!443144 (= lambda!78731 lambda!78706)))

(declare-fun bs!443145 () Bool)

(assert (= bs!443145 (and d!643781 d!643749)))

(assert (=> bs!443145 (= lambda!78731 lambda!78708)))

(declare-fun bs!443146 () Bool)

(assert (= bs!443146 (and d!643781 d!643777)))

(assert (=> bs!443146 (= lambda!78731 lambda!78730)))

(declare-fun bs!443147 () Bool)

(assert (= bs!443147 (and d!643781 d!643649)))

(assert (=> bs!443147 (= lambda!78731 lambda!78681)))

(declare-fun bs!443148 () Bool)

(assert (= bs!443148 (and d!643781 d!643719)))

(assert (=> bs!443148 (= lambda!78731 lambda!78703)))

(declare-fun bs!443149 () Bool)

(assert (= bs!443149 (and d!643781 d!643641)))

(assert (=> bs!443149 (= lambda!78731 lambda!78680)))

(declare-fun bs!443150 () Bool)

(assert (= bs!443150 (and d!643781 d!643747)))

(assert (=> bs!443150 (= lambda!78731 lambda!78707)))

(declare-fun bs!443151 () Bool)

(assert (= bs!443151 (and d!643781 d!643753)))

(assert (=> bs!443151 (= lambda!78731 lambda!78724)))

(declare-fun bs!443152 () Bool)

(assert (= bs!443152 (and d!643781 d!643707)))

(assert (=> bs!443152 (= lambda!78731 lambda!78696)))

(assert (=> d!643781 (= (inv!31334 (_2!13618 (_1!13619 (h!29136 mapValue!12027)))) (forall!4869 (exprs!1741 (_2!13618 (_1!13619 (h!29136 mapValue!12027)))) lambda!78731))))

(declare-fun bs!443153 () Bool)

(assert (= bs!443153 d!643781))

(declare-fun m!2576890 () Bool)

(assert (=> bs!443153 m!2576890))

(assert (=> b!2123819 d!643781))

(declare-fun bs!443154 () Bool)

(declare-fun d!643783 () Bool)

(assert (= bs!443154 (and d!643783 d!643763)))

(declare-fun lambda!78732 () Int)

(assert (=> bs!443154 (= lambda!78732 lambda!78725)))

(declare-fun bs!443155 () Bool)

(assert (= bs!443155 (and d!643783 d!643727)))

(assert (=> bs!443155 (= lambda!78732 lambda!78705)))

(declare-fun bs!443156 () Bool)

(assert (= bs!443156 (and d!643783 d!643657)))

(assert (=> bs!443156 (= lambda!78732 lambda!78685)))

(declare-fun bs!443157 () Bool)

(assert (= bs!443157 (and d!643783 d!643683)))

(assert (=> bs!443157 (= lambda!78732 lambda!78693)))

(declare-fun bs!443158 () Bool)

(assert (= bs!443158 (and d!643783 d!643717)))

(assert (=> bs!443158 (= lambda!78732 lambda!78702)))

(declare-fun bs!443159 () Bool)

(assert (= bs!443159 (and d!643783 d!643711)))

(assert (=> bs!443159 (= lambda!78732 lambda!78698)))

(declare-fun bs!443160 () Bool)

(assert (= bs!443160 (and d!643783 d!643773)))

(assert (=> bs!443160 (= lambda!78732 lambda!78726)))

(declare-fun bs!443161 () Bool)

(assert (= bs!443161 (and d!643783 d!643721)))

(assert (=> bs!443161 (= lambda!78732 lambda!78704)))

(declare-fun bs!443162 () Bool)

(assert (= bs!443162 (and d!643783 d!643781)))

(assert (=> bs!443162 (= lambda!78732 lambda!78731)))

(declare-fun bs!443163 () Bool)

(assert (= bs!443163 (and d!643783 d!643709)))

(assert (=> bs!443163 (= lambda!78732 lambda!78697)))

(declare-fun bs!443164 () Bool)

(assert (= bs!443164 (and d!643783 d!643659)))

(assert (=> bs!443164 (= lambda!78732 lambda!78686)))

(declare-fun bs!443165 () Bool)

(assert (= bs!443165 (and d!643783 d!643703)))

(assert (=> bs!443165 (= lambda!78732 lambda!78694)))

(declare-fun bs!443166 () Bool)

(assert (= bs!443166 (and d!643783 d!643705)))

(assert (=> bs!443166 (= lambda!78732 lambda!78695)))

(declare-fun bs!443167 () Bool)

(assert (= bs!443167 (and d!643783 d!643735)))

(assert (=> bs!443167 (= lambda!78732 lambda!78706)))

(declare-fun bs!443168 () Bool)

(assert (= bs!443168 (and d!643783 d!643749)))

(assert (=> bs!443168 (= lambda!78732 lambda!78708)))

(declare-fun bs!443169 () Bool)

(assert (= bs!443169 (and d!643783 d!643777)))

(assert (=> bs!443169 (= lambda!78732 lambda!78730)))

(declare-fun bs!443170 () Bool)

(assert (= bs!443170 (and d!643783 d!643649)))

(assert (=> bs!443170 (= lambda!78732 lambda!78681)))

(declare-fun bs!443171 () Bool)

(assert (= bs!443171 (and d!643783 d!643719)))

(assert (=> bs!443171 (= lambda!78732 lambda!78703)))

(declare-fun bs!443172 () Bool)

(assert (= bs!443172 (and d!643783 d!643641)))

(assert (=> bs!443172 (= lambda!78732 lambda!78680)))

(declare-fun bs!443173 () Bool)

(assert (= bs!443173 (and d!643783 d!643747)))

(assert (=> bs!443173 (= lambda!78732 lambda!78707)))

(declare-fun bs!443174 () Bool)

(assert (= bs!443174 (and d!643783 d!643753)))

(assert (=> bs!443174 (= lambda!78732 lambda!78724)))

(declare-fun bs!443175 () Bool)

(assert (= bs!443175 (and d!643783 d!643707)))

(assert (=> bs!443175 (= lambda!78732 lambda!78696)))

(assert (=> d!643783 (= (inv!31334 setElem!15062) (forall!4869 (exprs!1741 setElem!15062) lambda!78732))))

(declare-fun bs!443176 () Bool)

(assert (= bs!443176 d!643783))

(declare-fun m!2576892 () Bool)

(assert (=> bs!443176 m!2576892))

(assert (=> setNonEmpty!15062 d!643783))

(declare-fun d!643785 () Bool)

(declare-fun lt!795394 () Bool)

(assert (=> d!643785 (= lt!795394 (isEmpty!14316 (list!9533 (left!18357 (c!339823 input!5507)))))))

(assert (=> d!643785 (= lt!795394 (= (size!18558 (left!18357 (c!339823 input!5507))) 0))))

(assert (=> d!643785 (= (isEmpty!14313 (left!18357 (c!339823 input!5507))) lt!795394)))

(declare-fun bs!443177 () Bool)

(assert (= bs!443177 d!643785))

(assert (=> bs!443177 m!2576807))

(assert (=> bs!443177 m!2576807))

(declare-fun m!2576894 () Bool)

(assert (=> bs!443177 m!2576894))

(declare-fun m!2576896 () Bool)

(assert (=> bs!443177 m!2576896))

(assert (=> b!2123692 d!643785))

(declare-fun bs!443178 () Bool)

(declare-fun d!643787 () Bool)

(assert (= bs!443178 (and d!643787 d!643763)))

(declare-fun lambda!78733 () Int)

(assert (=> bs!443178 (= lambda!78733 lambda!78725)))

(declare-fun bs!443179 () Bool)

(assert (= bs!443179 (and d!643787 d!643727)))

(assert (=> bs!443179 (= lambda!78733 lambda!78705)))

(declare-fun bs!443180 () Bool)

(assert (= bs!443180 (and d!643787 d!643657)))

(assert (=> bs!443180 (= lambda!78733 lambda!78685)))

(declare-fun bs!443181 () Bool)

(assert (= bs!443181 (and d!643787 d!643683)))

(assert (=> bs!443181 (= lambda!78733 lambda!78693)))

(declare-fun bs!443182 () Bool)

(assert (= bs!443182 (and d!643787 d!643783)))

(assert (=> bs!443182 (= lambda!78733 lambda!78732)))

(declare-fun bs!443183 () Bool)

(assert (= bs!443183 (and d!643787 d!643717)))

(assert (=> bs!443183 (= lambda!78733 lambda!78702)))

(declare-fun bs!443184 () Bool)

(assert (= bs!443184 (and d!643787 d!643711)))

(assert (=> bs!443184 (= lambda!78733 lambda!78698)))

(declare-fun bs!443185 () Bool)

(assert (= bs!443185 (and d!643787 d!643773)))

(assert (=> bs!443185 (= lambda!78733 lambda!78726)))

(declare-fun bs!443186 () Bool)

(assert (= bs!443186 (and d!643787 d!643721)))

(assert (=> bs!443186 (= lambda!78733 lambda!78704)))

(declare-fun bs!443187 () Bool)

(assert (= bs!443187 (and d!643787 d!643781)))

(assert (=> bs!443187 (= lambda!78733 lambda!78731)))

(declare-fun bs!443188 () Bool)

(assert (= bs!443188 (and d!643787 d!643709)))

(assert (=> bs!443188 (= lambda!78733 lambda!78697)))

(declare-fun bs!443189 () Bool)

(assert (= bs!443189 (and d!643787 d!643659)))

(assert (=> bs!443189 (= lambda!78733 lambda!78686)))

(declare-fun bs!443190 () Bool)

(assert (= bs!443190 (and d!643787 d!643703)))

(assert (=> bs!443190 (= lambda!78733 lambda!78694)))

(declare-fun bs!443191 () Bool)

(assert (= bs!443191 (and d!643787 d!643705)))

(assert (=> bs!443191 (= lambda!78733 lambda!78695)))

(declare-fun bs!443192 () Bool)

(assert (= bs!443192 (and d!643787 d!643735)))

(assert (=> bs!443192 (= lambda!78733 lambda!78706)))

(declare-fun bs!443193 () Bool)

(assert (= bs!443193 (and d!643787 d!643749)))

(assert (=> bs!443193 (= lambda!78733 lambda!78708)))

(declare-fun bs!443194 () Bool)

(assert (= bs!443194 (and d!643787 d!643777)))

(assert (=> bs!443194 (= lambda!78733 lambda!78730)))

(declare-fun bs!443195 () Bool)

(assert (= bs!443195 (and d!643787 d!643649)))

(assert (=> bs!443195 (= lambda!78733 lambda!78681)))

(declare-fun bs!443196 () Bool)

(assert (= bs!443196 (and d!643787 d!643719)))

(assert (=> bs!443196 (= lambda!78733 lambda!78703)))

(declare-fun bs!443197 () Bool)

(assert (= bs!443197 (and d!643787 d!643641)))

(assert (=> bs!443197 (= lambda!78733 lambda!78680)))

(declare-fun bs!443198 () Bool)

(assert (= bs!443198 (and d!643787 d!643747)))

(assert (=> bs!443198 (= lambda!78733 lambda!78707)))

(declare-fun bs!443199 () Bool)

(assert (= bs!443199 (and d!643787 d!643753)))

(assert (=> bs!443199 (= lambda!78733 lambda!78724)))

(declare-fun bs!443200 () Bool)

(assert (= bs!443200 (and d!643787 d!643707)))

(assert (=> bs!443200 (= lambda!78733 lambda!78696)))

(assert (=> d!643787 (= (inv!31334 (_2!13618 (_1!13619 (h!29136 mapDefault!12027)))) (forall!4869 (exprs!1741 (_2!13618 (_1!13619 (h!29136 mapDefault!12027)))) lambda!78733))))

(declare-fun bs!443201 () Bool)

(assert (= bs!443201 d!643787))

(declare-fun m!2576898 () Bool)

(assert (=> bs!443201 m!2576898))

(assert (=> b!2123818 d!643787))

(declare-fun d!643789 () Bool)

(assert (=> d!643789 (= (valid!1938 (_3!1938 lt!795298)) (validCacheMapDown!244 (cache!2761 (_3!1938 lt!795298))))))

(declare-fun bs!443202 () Bool)

(assert (= bs!443202 d!643789))

(declare-fun m!2576900 () Bool)

(assert (=> bs!443202 m!2576900))

(assert (=> b!2123634 d!643789))

(assert (=> d!643585 d!643655))

(declare-fun bs!443203 () Bool)

(declare-fun d!643791 () Bool)

(assert (= bs!443203 (and d!643791 d!643763)))

(declare-fun lambda!78734 () Int)

(assert (=> bs!443203 (= lambda!78734 lambda!78725)))

(declare-fun bs!443204 () Bool)

(assert (= bs!443204 (and d!643791 d!643727)))

(assert (=> bs!443204 (= lambda!78734 lambda!78705)))

(declare-fun bs!443205 () Bool)

(assert (= bs!443205 (and d!643791 d!643657)))

(assert (=> bs!443205 (= lambda!78734 lambda!78685)))

(declare-fun bs!443206 () Bool)

(assert (= bs!443206 (and d!643791 d!643683)))

(assert (=> bs!443206 (= lambda!78734 lambda!78693)))

(declare-fun bs!443207 () Bool)

(assert (= bs!443207 (and d!643791 d!643783)))

(assert (=> bs!443207 (= lambda!78734 lambda!78732)))

(declare-fun bs!443208 () Bool)

(assert (= bs!443208 (and d!643791 d!643717)))

(assert (=> bs!443208 (= lambda!78734 lambda!78702)))

(declare-fun bs!443209 () Bool)

(assert (= bs!443209 (and d!643791 d!643711)))

(assert (=> bs!443209 (= lambda!78734 lambda!78698)))

(declare-fun bs!443210 () Bool)

(assert (= bs!443210 (and d!643791 d!643773)))

(assert (=> bs!443210 (= lambda!78734 lambda!78726)))

(declare-fun bs!443211 () Bool)

(assert (= bs!443211 (and d!643791 d!643721)))

(assert (=> bs!443211 (= lambda!78734 lambda!78704)))

(declare-fun bs!443212 () Bool)

(assert (= bs!443212 (and d!643791 d!643781)))

(assert (=> bs!443212 (= lambda!78734 lambda!78731)))

(declare-fun bs!443213 () Bool)

(assert (= bs!443213 (and d!643791 d!643659)))

(assert (=> bs!443213 (= lambda!78734 lambda!78686)))

(declare-fun bs!443214 () Bool)

(assert (= bs!443214 (and d!643791 d!643703)))

(assert (=> bs!443214 (= lambda!78734 lambda!78694)))

(declare-fun bs!443215 () Bool)

(assert (= bs!443215 (and d!643791 d!643705)))

(assert (=> bs!443215 (= lambda!78734 lambda!78695)))

(declare-fun bs!443216 () Bool)

(assert (= bs!443216 (and d!643791 d!643735)))

(assert (=> bs!443216 (= lambda!78734 lambda!78706)))

(declare-fun bs!443217 () Bool)

(assert (= bs!443217 (and d!643791 d!643749)))

(assert (=> bs!443217 (= lambda!78734 lambda!78708)))

(declare-fun bs!443218 () Bool)

(assert (= bs!443218 (and d!643791 d!643777)))

(assert (=> bs!443218 (= lambda!78734 lambda!78730)))

(declare-fun bs!443219 () Bool)

(assert (= bs!443219 (and d!643791 d!643649)))

(assert (=> bs!443219 (= lambda!78734 lambda!78681)))

(declare-fun bs!443220 () Bool)

(assert (= bs!443220 (and d!643791 d!643719)))

(assert (=> bs!443220 (= lambda!78734 lambda!78703)))

(declare-fun bs!443221 () Bool)

(assert (= bs!443221 (and d!643791 d!643641)))

(assert (=> bs!443221 (= lambda!78734 lambda!78680)))

(declare-fun bs!443222 () Bool)

(assert (= bs!443222 (and d!643791 d!643747)))

(assert (=> bs!443222 (= lambda!78734 lambda!78707)))

(declare-fun bs!443223 () Bool)

(assert (= bs!443223 (and d!643791 d!643787)))

(assert (=> bs!443223 (= lambda!78734 lambda!78733)))

(declare-fun bs!443224 () Bool)

(assert (= bs!443224 (and d!643791 d!643709)))

(assert (=> bs!443224 (= lambda!78734 lambda!78697)))

(declare-fun bs!443225 () Bool)

(assert (= bs!443225 (and d!643791 d!643753)))

(assert (=> bs!443225 (= lambda!78734 lambda!78724)))

(declare-fun bs!443226 () Bool)

(assert (= bs!443226 (and d!643791 d!643707)))

(assert (=> bs!443226 (= lambda!78734 lambda!78696)))

(assert (=> d!643791 (= (inv!31334 setElem!15028) (forall!4869 (exprs!1741 setElem!15028) lambda!78734))))

(declare-fun bs!443227 () Bool)

(assert (= bs!443227 d!643791))

(declare-fun m!2576902 () Bool)

(assert (=> bs!443227 m!2576902))

(assert (=> setNonEmpty!15028 d!643791))

(declare-fun bs!443228 () Bool)

(declare-fun d!643793 () Bool)

(assert (= bs!443228 (and d!643793 d!643763)))

(declare-fun lambda!78735 () Int)

(assert (=> bs!443228 (= lambda!78735 lambda!78725)))

(declare-fun bs!443229 () Bool)

(assert (= bs!443229 (and d!643793 d!643727)))

(assert (=> bs!443229 (= lambda!78735 lambda!78705)))

(declare-fun bs!443230 () Bool)

(assert (= bs!443230 (and d!643793 d!643657)))

(assert (=> bs!443230 (= lambda!78735 lambda!78685)))

(declare-fun bs!443231 () Bool)

(assert (= bs!443231 (and d!643793 d!643791)))

(assert (=> bs!443231 (= lambda!78735 lambda!78734)))

(declare-fun bs!443232 () Bool)

(assert (= bs!443232 (and d!643793 d!643683)))

(assert (=> bs!443232 (= lambda!78735 lambda!78693)))

(declare-fun bs!443233 () Bool)

(assert (= bs!443233 (and d!643793 d!643783)))

(assert (=> bs!443233 (= lambda!78735 lambda!78732)))

(declare-fun bs!443234 () Bool)

(assert (= bs!443234 (and d!643793 d!643717)))

(assert (=> bs!443234 (= lambda!78735 lambda!78702)))

(declare-fun bs!443235 () Bool)

(assert (= bs!443235 (and d!643793 d!643711)))

(assert (=> bs!443235 (= lambda!78735 lambda!78698)))

(declare-fun bs!443236 () Bool)

(assert (= bs!443236 (and d!643793 d!643773)))

(assert (=> bs!443236 (= lambda!78735 lambda!78726)))

(declare-fun bs!443237 () Bool)

(assert (= bs!443237 (and d!643793 d!643721)))

(assert (=> bs!443237 (= lambda!78735 lambda!78704)))

(declare-fun bs!443238 () Bool)

(assert (= bs!443238 (and d!643793 d!643781)))

(assert (=> bs!443238 (= lambda!78735 lambda!78731)))

(declare-fun bs!443239 () Bool)

(assert (= bs!443239 (and d!643793 d!643659)))

(assert (=> bs!443239 (= lambda!78735 lambda!78686)))

(declare-fun bs!443240 () Bool)

(assert (= bs!443240 (and d!643793 d!643703)))

(assert (=> bs!443240 (= lambda!78735 lambda!78694)))

(declare-fun bs!443241 () Bool)

(assert (= bs!443241 (and d!643793 d!643705)))

(assert (=> bs!443241 (= lambda!78735 lambda!78695)))

(declare-fun bs!443242 () Bool)

(assert (= bs!443242 (and d!643793 d!643735)))

(assert (=> bs!443242 (= lambda!78735 lambda!78706)))

(declare-fun bs!443243 () Bool)

(assert (= bs!443243 (and d!643793 d!643749)))

(assert (=> bs!443243 (= lambda!78735 lambda!78708)))

(declare-fun bs!443244 () Bool)

(assert (= bs!443244 (and d!643793 d!643777)))

(assert (=> bs!443244 (= lambda!78735 lambda!78730)))

(declare-fun bs!443245 () Bool)

(assert (= bs!443245 (and d!643793 d!643649)))

(assert (=> bs!443245 (= lambda!78735 lambda!78681)))

(declare-fun bs!443246 () Bool)

(assert (= bs!443246 (and d!643793 d!643719)))

(assert (=> bs!443246 (= lambda!78735 lambda!78703)))

(declare-fun bs!443247 () Bool)

(assert (= bs!443247 (and d!643793 d!643641)))

(assert (=> bs!443247 (= lambda!78735 lambda!78680)))

(declare-fun bs!443248 () Bool)

(assert (= bs!443248 (and d!643793 d!643747)))

(assert (=> bs!443248 (= lambda!78735 lambda!78707)))

(declare-fun bs!443249 () Bool)

(assert (= bs!443249 (and d!643793 d!643787)))

(assert (=> bs!443249 (= lambda!78735 lambda!78733)))

(declare-fun bs!443250 () Bool)

(assert (= bs!443250 (and d!643793 d!643709)))

(assert (=> bs!443250 (= lambda!78735 lambda!78697)))

(declare-fun bs!443251 () Bool)

(assert (= bs!443251 (and d!643793 d!643753)))

(assert (=> bs!443251 (= lambda!78735 lambda!78724)))

(declare-fun bs!443252 () Bool)

(assert (= bs!443252 (and d!643793 d!643707)))

(assert (=> bs!443252 (= lambda!78735 lambda!78696)))

(assert (=> d!643793 (= (inv!31334 setElem!15035) (forall!4869 (exprs!1741 setElem!15035) lambda!78735))))

(declare-fun bs!443253 () Bool)

(assert (= bs!443253 d!643793))

(declare-fun m!2576904 () Bool)

(assert (=> bs!443253 m!2576904))

(assert (=> setNonEmpty!15035 d!643793))

(assert (=> d!643589 d!643673))

(assert (=> d!643589 d!643631))

(declare-fun d!643795 () Bool)

(declare-fun lt!795397 () Int)

(assert (=> d!643795 (= lt!795397 (size!18557 (list!9533 (c!339823 totalInput!886))))))

(assert (=> d!643795 (= lt!795397 (ite ((_ is Empty!7809) (c!339823 totalInput!886)) 0 (ite ((_ is Leaf!11412) (c!339823 totalInput!886)) (csize!15849 (c!339823 totalInput!886)) (csize!15848 (c!339823 totalInput!886)))))))

(assert (=> d!643795 (= (size!18558 (c!339823 totalInput!886)) lt!795397)))

(declare-fun bs!443254 () Bool)

(assert (= bs!443254 d!643795))

(assert (=> bs!443254 m!2576473))

(assert (=> bs!443254 m!2576473))

(declare-fun m!2576906 () Bool)

(assert (=> bs!443254 m!2576906))

(assert (=> d!643589 d!643795))

(declare-fun d!643797 () Bool)

(assert (=> d!643797 (= (valid!1939 (_2!13623 lt!795298)) (validCacheMapUp!246 (cache!2760 (_2!13623 lt!795298))))))

(declare-fun bs!443255 () Bool)

(assert (= bs!443255 d!643797))

(declare-fun m!2576908 () Bool)

(assert (=> bs!443255 m!2576908))

(assert (=> b!2123636 d!643797))

(declare-fun bs!443256 () Bool)

(declare-fun d!643799 () Bool)

(assert (= bs!443256 (and d!643799 d!643763)))

(declare-fun lambda!78736 () Int)

(assert (=> bs!443256 (= lambda!78736 lambda!78725)))

(declare-fun bs!443257 () Bool)

(assert (= bs!443257 (and d!643799 d!643727)))

(assert (=> bs!443257 (= lambda!78736 lambda!78705)))

(declare-fun bs!443258 () Bool)

(assert (= bs!443258 (and d!643799 d!643657)))

(assert (=> bs!443258 (= lambda!78736 lambda!78685)))

(declare-fun bs!443259 () Bool)

(assert (= bs!443259 (and d!643799 d!643791)))

(assert (=> bs!443259 (= lambda!78736 lambda!78734)))

(declare-fun bs!443260 () Bool)

(assert (= bs!443260 (and d!643799 d!643683)))

(assert (=> bs!443260 (= lambda!78736 lambda!78693)))

(declare-fun bs!443261 () Bool)

(assert (= bs!443261 (and d!643799 d!643783)))

(assert (=> bs!443261 (= lambda!78736 lambda!78732)))

(declare-fun bs!443262 () Bool)

(assert (= bs!443262 (and d!643799 d!643717)))

(assert (=> bs!443262 (= lambda!78736 lambda!78702)))

(declare-fun bs!443263 () Bool)

(assert (= bs!443263 (and d!643799 d!643711)))

(assert (=> bs!443263 (= lambda!78736 lambda!78698)))

(declare-fun bs!443264 () Bool)

(assert (= bs!443264 (and d!643799 d!643773)))

(assert (=> bs!443264 (= lambda!78736 lambda!78726)))

(declare-fun bs!443265 () Bool)

(assert (= bs!443265 (and d!643799 d!643793)))

(assert (=> bs!443265 (= lambda!78736 lambda!78735)))

(declare-fun bs!443266 () Bool)

(assert (= bs!443266 (and d!643799 d!643721)))

(assert (=> bs!443266 (= lambda!78736 lambda!78704)))

(declare-fun bs!443267 () Bool)

(assert (= bs!443267 (and d!643799 d!643781)))

(assert (=> bs!443267 (= lambda!78736 lambda!78731)))

(declare-fun bs!443268 () Bool)

(assert (= bs!443268 (and d!643799 d!643659)))

(assert (=> bs!443268 (= lambda!78736 lambda!78686)))

(declare-fun bs!443269 () Bool)

(assert (= bs!443269 (and d!643799 d!643703)))

(assert (=> bs!443269 (= lambda!78736 lambda!78694)))

(declare-fun bs!443270 () Bool)

(assert (= bs!443270 (and d!643799 d!643705)))

(assert (=> bs!443270 (= lambda!78736 lambda!78695)))

(declare-fun bs!443271 () Bool)

(assert (= bs!443271 (and d!643799 d!643735)))

(assert (=> bs!443271 (= lambda!78736 lambda!78706)))

(declare-fun bs!443272 () Bool)

(assert (= bs!443272 (and d!643799 d!643749)))

(assert (=> bs!443272 (= lambda!78736 lambda!78708)))

(declare-fun bs!443273 () Bool)

(assert (= bs!443273 (and d!643799 d!643777)))

(assert (=> bs!443273 (= lambda!78736 lambda!78730)))

(declare-fun bs!443274 () Bool)

(assert (= bs!443274 (and d!643799 d!643649)))

(assert (=> bs!443274 (= lambda!78736 lambda!78681)))

(declare-fun bs!443275 () Bool)

(assert (= bs!443275 (and d!643799 d!643719)))

(assert (=> bs!443275 (= lambda!78736 lambda!78703)))

(declare-fun bs!443276 () Bool)

(assert (= bs!443276 (and d!643799 d!643641)))

(assert (=> bs!443276 (= lambda!78736 lambda!78680)))

(declare-fun bs!443277 () Bool)

(assert (= bs!443277 (and d!643799 d!643747)))

(assert (=> bs!443277 (= lambda!78736 lambda!78707)))

(declare-fun bs!443278 () Bool)

(assert (= bs!443278 (and d!643799 d!643787)))

(assert (=> bs!443278 (= lambda!78736 lambda!78733)))

(declare-fun bs!443279 () Bool)

(assert (= bs!443279 (and d!643799 d!643709)))

(assert (=> bs!443279 (= lambda!78736 lambda!78697)))

(declare-fun bs!443280 () Bool)

(assert (= bs!443280 (and d!643799 d!643753)))

(assert (=> bs!443280 (= lambda!78736 lambda!78724)))

(declare-fun bs!443281 () Bool)

(assert (= bs!443281 (and d!643799 d!643707)))

(assert (=> bs!443281 (= lambda!78736 lambda!78696)))

(assert (=> d!643799 (= (inv!31334 setElem!15061) (forall!4869 (exprs!1741 setElem!15061) lambda!78736))))

(declare-fun bs!443282 () Bool)

(assert (= bs!443282 d!643799))

(declare-fun m!2576910 () Bool)

(assert (=> bs!443282 m!2576910))

(assert (=> setNonEmpty!15061 d!643799))

(declare-fun d!643801 () Bool)

(assert (=> d!643801 (= (inv!31337 (xs!10751 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) (<= (size!18557 (innerList!7869 (xs!10751 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) 2147483647))))

(declare-fun bs!443283 () Bool)

(assert (= bs!443283 d!643801))

(declare-fun m!2576912 () Bool)

(assert (=> bs!443283 m!2576912))

(assert (=> b!2123836 d!643801))

(declare-fun bs!443284 () Bool)

(declare-fun d!643803 () Bool)

(assert (= bs!443284 (and d!643803 d!643763)))

(declare-fun lambda!78737 () Int)

(assert (=> bs!443284 (= lambda!78737 lambda!78725)))

(declare-fun bs!443285 () Bool)

(assert (= bs!443285 (and d!643803 d!643727)))

(assert (=> bs!443285 (= lambda!78737 lambda!78705)))

(declare-fun bs!443286 () Bool)

(assert (= bs!443286 (and d!643803 d!643657)))

(assert (=> bs!443286 (= lambda!78737 lambda!78685)))

(declare-fun bs!443287 () Bool)

(assert (= bs!443287 (and d!643803 d!643791)))

(assert (=> bs!443287 (= lambda!78737 lambda!78734)))

(declare-fun bs!443288 () Bool)

(assert (= bs!443288 (and d!643803 d!643683)))

(assert (=> bs!443288 (= lambda!78737 lambda!78693)))

(declare-fun bs!443289 () Bool)

(assert (= bs!443289 (and d!643803 d!643783)))

(assert (=> bs!443289 (= lambda!78737 lambda!78732)))

(declare-fun bs!443290 () Bool)

(assert (= bs!443290 (and d!643803 d!643799)))

(assert (=> bs!443290 (= lambda!78737 lambda!78736)))

(declare-fun bs!443291 () Bool)

(assert (= bs!443291 (and d!643803 d!643717)))

(assert (=> bs!443291 (= lambda!78737 lambda!78702)))

(declare-fun bs!443292 () Bool)

(assert (= bs!443292 (and d!643803 d!643711)))

(assert (=> bs!443292 (= lambda!78737 lambda!78698)))

(declare-fun bs!443293 () Bool)

(assert (= bs!443293 (and d!643803 d!643773)))

(assert (=> bs!443293 (= lambda!78737 lambda!78726)))

(declare-fun bs!443294 () Bool)

(assert (= bs!443294 (and d!643803 d!643793)))

(assert (=> bs!443294 (= lambda!78737 lambda!78735)))

(declare-fun bs!443295 () Bool)

(assert (= bs!443295 (and d!643803 d!643721)))

(assert (=> bs!443295 (= lambda!78737 lambda!78704)))

(declare-fun bs!443296 () Bool)

(assert (= bs!443296 (and d!643803 d!643781)))

(assert (=> bs!443296 (= lambda!78737 lambda!78731)))

(declare-fun bs!443297 () Bool)

(assert (= bs!443297 (and d!643803 d!643659)))

(assert (=> bs!443297 (= lambda!78737 lambda!78686)))

(declare-fun bs!443298 () Bool)

(assert (= bs!443298 (and d!643803 d!643703)))

(assert (=> bs!443298 (= lambda!78737 lambda!78694)))

(declare-fun bs!443299 () Bool)

(assert (= bs!443299 (and d!643803 d!643705)))

(assert (=> bs!443299 (= lambda!78737 lambda!78695)))

(declare-fun bs!443300 () Bool)

(assert (= bs!443300 (and d!643803 d!643735)))

(assert (=> bs!443300 (= lambda!78737 lambda!78706)))

(declare-fun bs!443301 () Bool)

(assert (= bs!443301 (and d!643803 d!643749)))

(assert (=> bs!443301 (= lambda!78737 lambda!78708)))

(declare-fun bs!443302 () Bool)

(assert (= bs!443302 (and d!643803 d!643777)))

(assert (=> bs!443302 (= lambda!78737 lambda!78730)))

(declare-fun bs!443303 () Bool)

(assert (= bs!443303 (and d!643803 d!643649)))

(assert (=> bs!443303 (= lambda!78737 lambda!78681)))

(declare-fun bs!443304 () Bool)

(assert (= bs!443304 (and d!643803 d!643719)))

(assert (=> bs!443304 (= lambda!78737 lambda!78703)))

(declare-fun bs!443305 () Bool)

(assert (= bs!443305 (and d!643803 d!643641)))

(assert (=> bs!443305 (= lambda!78737 lambda!78680)))

(declare-fun bs!443306 () Bool)

(assert (= bs!443306 (and d!643803 d!643747)))

(assert (=> bs!443306 (= lambda!78737 lambda!78707)))

(declare-fun bs!443307 () Bool)

(assert (= bs!443307 (and d!643803 d!643787)))

(assert (=> bs!443307 (= lambda!78737 lambda!78733)))

(declare-fun bs!443308 () Bool)

(assert (= bs!443308 (and d!643803 d!643709)))

(assert (=> bs!443308 (= lambda!78737 lambda!78697)))

(declare-fun bs!443309 () Bool)

(assert (= bs!443309 (and d!643803 d!643753)))

(assert (=> bs!443309 (= lambda!78737 lambda!78724)))

(declare-fun bs!443310 () Bool)

(assert (= bs!443310 (and d!643803 d!643707)))

(assert (=> bs!443310 (= lambda!78737 lambda!78696)))

(assert (=> d!643803 (= (inv!31334 setElem!15015) (forall!4869 (exprs!1741 setElem!15015) lambda!78737))))

(declare-fun bs!443311 () Bool)

(assert (= bs!443311 d!643803))

(declare-fun m!2576914 () Bool)

(assert (=> bs!443311 m!2576914))

(assert (=> setNonEmpty!15015 d!643803))

(declare-fun d!643805 () Bool)

(declare-fun res!919597 () Bool)

(declare-fun e!1353366 () Bool)

(assert (=> d!643805 (=> (not res!919597) (not e!1353366))))

(assert (=> d!643805 (= res!919597 (<= (size!18557 (list!9534 (xs!10751 (c!339823 input!5507)))) 512))))

(assert (=> d!643805 (= (inv!31336 (c!339823 input!5507)) e!1353366)))

(declare-fun b!2124113 () Bool)

(declare-fun res!919598 () Bool)

(assert (=> b!2124113 (=> (not res!919598) (not e!1353366))))

(assert (=> b!2124113 (= res!919598 (= (csize!15849 (c!339823 input!5507)) (size!18557 (list!9534 (xs!10751 (c!339823 input!5507))))))))

(declare-fun b!2124114 () Bool)

(assert (=> b!2124114 (= e!1353366 (and (> (csize!15849 (c!339823 input!5507)) 0) (<= (csize!15849 (c!339823 input!5507)) 512)))))

(assert (= (and d!643805 res!919597) b!2124113))

(assert (= (and b!2124113 res!919598) b!2124114))

(assert (=> d!643805 m!2576813))

(assert (=> d!643805 m!2576813))

(declare-fun m!2576916 () Bool)

(assert (=> d!643805 m!2576916))

(assert (=> b!2124113 m!2576813))

(assert (=> b!2124113 m!2576813))

(assert (=> b!2124113 m!2576916))

(assert (=> b!2123672 d!643805))

(declare-fun bs!443312 () Bool)

(declare-fun d!643807 () Bool)

(assert (= bs!443312 (and d!643807 d!643763)))

(declare-fun lambda!78738 () Int)

(assert (=> bs!443312 (= lambda!78738 lambda!78725)))

(declare-fun bs!443313 () Bool)

(assert (= bs!443313 (and d!643807 d!643727)))

(assert (=> bs!443313 (= lambda!78738 lambda!78705)))

(declare-fun bs!443314 () Bool)

(assert (= bs!443314 (and d!643807 d!643657)))

(assert (=> bs!443314 (= lambda!78738 lambda!78685)))

(declare-fun bs!443315 () Bool)

(assert (= bs!443315 (and d!643807 d!643791)))

(assert (=> bs!443315 (= lambda!78738 lambda!78734)))

(declare-fun bs!443316 () Bool)

(assert (= bs!443316 (and d!643807 d!643683)))

(assert (=> bs!443316 (= lambda!78738 lambda!78693)))

(declare-fun bs!443317 () Bool)

(assert (= bs!443317 (and d!643807 d!643783)))

(assert (=> bs!443317 (= lambda!78738 lambda!78732)))

(declare-fun bs!443318 () Bool)

(assert (= bs!443318 (and d!643807 d!643799)))

(assert (=> bs!443318 (= lambda!78738 lambda!78736)))

(declare-fun bs!443319 () Bool)

(assert (= bs!443319 (and d!643807 d!643717)))

(assert (=> bs!443319 (= lambda!78738 lambda!78702)))

(declare-fun bs!443320 () Bool)

(assert (= bs!443320 (and d!643807 d!643773)))

(assert (=> bs!443320 (= lambda!78738 lambda!78726)))

(declare-fun bs!443321 () Bool)

(assert (= bs!443321 (and d!643807 d!643793)))

(assert (=> bs!443321 (= lambda!78738 lambda!78735)))

(declare-fun bs!443322 () Bool)

(assert (= bs!443322 (and d!643807 d!643721)))

(assert (=> bs!443322 (= lambda!78738 lambda!78704)))

(declare-fun bs!443323 () Bool)

(assert (= bs!443323 (and d!643807 d!643781)))

(assert (=> bs!443323 (= lambda!78738 lambda!78731)))

(declare-fun bs!443324 () Bool)

(assert (= bs!443324 (and d!643807 d!643659)))

(assert (=> bs!443324 (= lambda!78738 lambda!78686)))

(declare-fun bs!443325 () Bool)

(assert (= bs!443325 (and d!643807 d!643703)))

(assert (=> bs!443325 (= lambda!78738 lambda!78694)))

(declare-fun bs!443326 () Bool)

(assert (= bs!443326 (and d!643807 d!643705)))

(assert (=> bs!443326 (= lambda!78738 lambda!78695)))

(declare-fun bs!443327 () Bool)

(assert (= bs!443327 (and d!643807 d!643735)))

(assert (=> bs!443327 (= lambda!78738 lambda!78706)))

(declare-fun bs!443328 () Bool)

(assert (= bs!443328 (and d!643807 d!643749)))

(assert (=> bs!443328 (= lambda!78738 lambda!78708)))

(declare-fun bs!443329 () Bool)

(assert (= bs!443329 (and d!643807 d!643777)))

(assert (=> bs!443329 (= lambda!78738 lambda!78730)))

(declare-fun bs!443330 () Bool)

(assert (= bs!443330 (and d!643807 d!643649)))

(assert (=> bs!443330 (= lambda!78738 lambda!78681)))

(declare-fun bs!443331 () Bool)

(assert (= bs!443331 (and d!643807 d!643719)))

(assert (=> bs!443331 (= lambda!78738 lambda!78703)))

(declare-fun bs!443332 () Bool)

(assert (= bs!443332 (and d!643807 d!643641)))

(assert (=> bs!443332 (= lambda!78738 lambda!78680)))

(declare-fun bs!443333 () Bool)

(assert (= bs!443333 (and d!643807 d!643747)))

(assert (=> bs!443333 (= lambda!78738 lambda!78707)))

(declare-fun bs!443334 () Bool)

(assert (= bs!443334 (and d!643807 d!643803)))

(assert (=> bs!443334 (= lambda!78738 lambda!78737)))

(declare-fun bs!443335 () Bool)

(assert (= bs!443335 (and d!643807 d!643711)))

(assert (=> bs!443335 (= lambda!78738 lambda!78698)))

(declare-fun bs!443336 () Bool)

(assert (= bs!443336 (and d!643807 d!643787)))

(assert (=> bs!443336 (= lambda!78738 lambda!78733)))

(declare-fun bs!443337 () Bool)

(assert (= bs!443337 (and d!643807 d!643709)))

(assert (=> bs!443337 (= lambda!78738 lambda!78697)))

(declare-fun bs!443338 () Bool)

(assert (= bs!443338 (and d!643807 d!643753)))

(assert (=> bs!443338 (= lambda!78738 lambda!78724)))

(declare-fun bs!443339 () Bool)

(assert (= bs!443339 (and d!643807 d!643707)))

(assert (=> bs!443339 (= lambda!78738 lambda!78696)))

(assert (=> d!643807 (= (inv!31334 setElem!15072) (forall!4869 (exprs!1741 setElem!15072) lambda!78738))))

(declare-fun bs!443340 () Bool)

(assert (= bs!443340 d!643807))

(declare-fun m!2576918 () Bool)

(assert (=> bs!443340 m!2576918))

(assert (=> setNonEmpty!15072 d!643807))

(declare-fun d!643809 () Bool)

(declare-fun res!919599 () Bool)

(declare-fun e!1353367 () Bool)

(assert (=> d!643809 (=> (not res!919599) (not e!1353367))))

(assert (=> d!643809 (= res!919599 (= (csize!15848 (c!339823 input!5507)) (+ (size!18558 (left!18357 (c!339823 input!5507))) (size!18558 (right!18687 (c!339823 input!5507))))))))

(assert (=> d!643809 (= (inv!31335 (c!339823 input!5507)) e!1353367)))

(declare-fun b!2124115 () Bool)

(declare-fun res!919600 () Bool)

(assert (=> b!2124115 (=> (not res!919600) (not e!1353367))))

(assert (=> b!2124115 (= res!919600 (and (not (= (left!18357 (c!339823 input!5507)) Empty!7809)) (not (= (right!18687 (c!339823 input!5507)) Empty!7809))))))

(declare-fun b!2124116 () Bool)

(declare-fun res!919601 () Bool)

(assert (=> b!2124116 (=> (not res!919601) (not e!1353367))))

(assert (=> b!2124116 (= res!919601 (= (cheight!8020 (c!339823 input!5507)) (+ (max!0 (height!1235 (left!18357 (c!339823 input!5507))) (height!1235 (right!18687 (c!339823 input!5507)))) 1)))))

(declare-fun b!2124117 () Bool)

(assert (=> b!2124117 (= e!1353367 (<= 0 (cheight!8020 (c!339823 input!5507))))))

(assert (= (and d!643809 res!919599) b!2124115))

(assert (= (and b!2124115 res!919600) b!2124116))

(assert (= (and b!2124116 res!919601) b!2124117))

(assert (=> d!643809 m!2576896))

(assert (=> d!643809 m!2576867))

(assert (=> b!2124116 m!2576459))

(assert (=> b!2124116 m!2576461))

(assert (=> b!2124116 m!2576459))

(assert (=> b!2124116 m!2576461))

(declare-fun m!2576920 () Bool)

(assert (=> b!2124116 m!2576920))

(assert (=> b!2123670 d!643809))

(declare-fun bs!443341 () Bool)

(declare-fun d!643811 () Bool)

(assert (= bs!443341 (and d!643811 d!643763)))

(declare-fun lambda!78739 () Int)

(assert (=> bs!443341 (= lambda!78739 lambda!78725)))

(declare-fun bs!443342 () Bool)

(assert (= bs!443342 (and d!643811 d!643727)))

(assert (=> bs!443342 (= lambda!78739 lambda!78705)))

(declare-fun bs!443343 () Bool)

(assert (= bs!443343 (and d!643811 d!643657)))

(assert (=> bs!443343 (= lambda!78739 lambda!78685)))

(declare-fun bs!443344 () Bool)

(assert (= bs!443344 (and d!643811 d!643791)))

(assert (=> bs!443344 (= lambda!78739 lambda!78734)))

(declare-fun bs!443345 () Bool)

(assert (= bs!443345 (and d!643811 d!643683)))

(assert (=> bs!443345 (= lambda!78739 lambda!78693)))

(declare-fun bs!443346 () Bool)

(assert (= bs!443346 (and d!643811 d!643783)))

(assert (=> bs!443346 (= lambda!78739 lambda!78732)))

(declare-fun bs!443347 () Bool)

(assert (= bs!443347 (and d!643811 d!643799)))

(assert (=> bs!443347 (= lambda!78739 lambda!78736)))

(declare-fun bs!443348 () Bool)

(assert (= bs!443348 (and d!643811 d!643717)))

(assert (=> bs!443348 (= lambda!78739 lambda!78702)))

(declare-fun bs!443349 () Bool)

(assert (= bs!443349 (and d!643811 d!643773)))

(assert (=> bs!443349 (= lambda!78739 lambda!78726)))

(declare-fun bs!443350 () Bool)

(assert (= bs!443350 (and d!643811 d!643793)))

(assert (=> bs!443350 (= lambda!78739 lambda!78735)))

(declare-fun bs!443351 () Bool)

(assert (= bs!443351 (and d!643811 d!643721)))

(assert (=> bs!443351 (= lambda!78739 lambda!78704)))

(declare-fun bs!443352 () Bool)

(assert (= bs!443352 (and d!643811 d!643781)))

(assert (=> bs!443352 (= lambda!78739 lambda!78731)))

(declare-fun bs!443353 () Bool)

(assert (= bs!443353 (and d!643811 d!643659)))

(assert (=> bs!443353 (= lambda!78739 lambda!78686)))

(declare-fun bs!443354 () Bool)

(assert (= bs!443354 (and d!643811 d!643703)))

(assert (=> bs!443354 (= lambda!78739 lambda!78694)))

(declare-fun bs!443355 () Bool)

(assert (= bs!443355 (and d!643811 d!643705)))

(assert (=> bs!443355 (= lambda!78739 lambda!78695)))

(declare-fun bs!443356 () Bool)

(assert (= bs!443356 (and d!643811 d!643735)))

(assert (=> bs!443356 (= lambda!78739 lambda!78706)))

(declare-fun bs!443357 () Bool)

(assert (= bs!443357 (and d!643811 d!643749)))

(assert (=> bs!443357 (= lambda!78739 lambda!78708)))

(declare-fun bs!443358 () Bool)

(assert (= bs!443358 (and d!643811 d!643777)))

(assert (=> bs!443358 (= lambda!78739 lambda!78730)))

(declare-fun bs!443359 () Bool)

(assert (= bs!443359 (and d!643811 d!643807)))

(assert (=> bs!443359 (= lambda!78739 lambda!78738)))

(declare-fun bs!443360 () Bool)

(assert (= bs!443360 (and d!643811 d!643649)))

(assert (=> bs!443360 (= lambda!78739 lambda!78681)))

(declare-fun bs!443361 () Bool)

(assert (= bs!443361 (and d!643811 d!643719)))

(assert (=> bs!443361 (= lambda!78739 lambda!78703)))

(declare-fun bs!443362 () Bool)

(assert (= bs!443362 (and d!643811 d!643641)))

(assert (=> bs!443362 (= lambda!78739 lambda!78680)))

(declare-fun bs!443363 () Bool)

(assert (= bs!443363 (and d!643811 d!643747)))

(assert (=> bs!443363 (= lambda!78739 lambda!78707)))

(declare-fun bs!443364 () Bool)

(assert (= bs!443364 (and d!643811 d!643803)))

(assert (=> bs!443364 (= lambda!78739 lambda!78737)))

(declare-fun bs!443365 () Bool)

(assert (= bs!443365 (and d!643811 d!643711)))

(assert (=> bs!443365 (= lambda!78739 lambda!78698)))

(declare-fun bs!443366 () Bool)

(assert (= bs!443366 (and d!643811 d!643787)))

(assert (=> bs!443366 (= lambda!78739 lambda!78733)))

(declare-fun bs!443367 () Bool)

(assert (= bs!443367 (and d!643811 d!643709)))

(assert (=> bs!443367 (= lambda!78739 lambda!78697)))

(declare-fun bs!443368 () Bool)

(assert (= bs!443368 (and d!643811 d!643753)))

(assert (=> bs!443368 (= lambda!78739 lambda!78724)))

(declare-fun bs!443369 () Bool)

(assert (= bs!443369 (and d!643811 d!643707)))

(assert (=> bs!443369 (= lambda!78739 lambda!78696)))

(assert (=> d!643811 (= (inv!31334 (_1!13620 (_1!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))))) (forall!4869 (exprs!1741 (_1!13620 (_1!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))))) lambda!78739))))

(declare-fun bs!443370 () Bool)

(assert (= bs!443370 d!643811))

(declare-fun m!2576922 () Bool)

(assert (=> bs!443370 m!2576922))

(assert (=> b!2123716 d!643811))

(declare-fun bs!443371 () Bool)

(declare-fun d!643813 () Bool)

(assert (= bs!443371 (and d!643813 d!643763)))

(declare-fun lambda!78740 () Int)

(assert (=> bs!443371 (= lambda!78740 lambda!78725)))

(declare-fun bs!443372 () Bool)

(assert (= bs!443372 (and d!643813 d!643727)))

(assert (=> bs!443372 (= lambda!78740 lambda!78705)))

(declare-fun bs!443373 () Bool)

(assert (= bs!443373 (and d!643813 d!643811)))

(assert (=> bs!443373 (= lambda!78740 lambda!78739)))

(declare-fun bs!443374 () Bool)

(assert (= bs!443374 (and d!643813 d!643657)))

(assert (=> bs!443374 (= lambda!78740 lambda!78685)))

(declare-fun bs!443375 () Bool)

(assert (= bs!443375 (and d!643813 d!643791)))

(assert (=> bs!443375 (= lambda!78740 lambda!78734)))

(declare-fun bs!443376 () Bool)

(assert (= bs!443376 (and d!643813 d!643683)))

(assert (=> bs!443376 (= lambda!78740 lambda!78693)))

(declare-fun bs!443377 () Bool)

(assert (= bs!443377 (and d!643813 d!643783)))

(assert (=> bs!443377 (= lambda!78740 lambda!78732)))

(declare-fun bs!443378 () Bool)

(assert (= bs!443378 (and d!643813 d!643799)))

(assert (=> bs!443378 (= lambda!78740 lambda!78736)))

(declare-fun bs!443379 () Bool)

(assert (= bs!443379 (and d!643813 d!643717)))

(assert (=> bs!443379 (= lambda!78740 lambda!78702)))

(declare-fun bs!443380 () Bool)

(assert (= bs!443380 (and d!643813 d!643773)))

(assert (=> bs!443380 (= lambda!78740 lambda!78726)))

(declare-fun bs!443381 () Bool)

(assert (= bs!443381 (and d!643813 d!643793)))

(assert (=> bs!443381 (= lambda!78740 lambda!78735)))

(declare-fun bs!443382 () Bool)

(assert (= bs!443382 (and d!643813 d!643721)))

(assert (=> bs!443382 (= lambda!78740 lambda!78704)))

(declare-fun bs!443383 () Bool)

(assert (= bs!443383 (and d!643813 d!643781)))

(assert (=> bs!443383 (= lambda!78740 lambda!78731)))

(declare-fun bs!443384 () Bool)

(assert (= bs!443384 (and d!643813 d!643659)))

(assert (=> bs!443384 (= lambda!78740 lambda!78686)))

(declare-fun bs!443385 () Bool)

(assert (= bs!443385 (and d!643813 d!643703)))

(assert (=> bs!443385 (= lambda!78740 lambda!78694)))

(declare-fun bs!443386 () Bool)

(assert (= bs!443386 (and d!643813 d!643705)))

(assert (=> bs!443386 (= lambda!78740 lambda!78695)))

(declare-fun bs!443387 () Bool)

(assert (= bs!443387 (and d!643813 d!643735)))

(assert (=> bs!443387 (= lambda!78740 lambda!78706)))

(declare-fun bs!443388 () Bool)

(assert (= bs!443388 (and d!643813 d!643749)))

(assert (=> bs!443388 (= lambda!78740 lambda!78708)))

(declare-fun bs!443389 () Bool)

(assert (= bs!443389 (and d!643813 d!643777)))

(assert (=> bs!443389 (= lambda!78740 lambda!78730)))

(declare-fun bs!443390 () Bool)

(assert (= bs!443390 (and d!643813 d!643807)))

(assert (=> bs!443390 (= lambda!78740 lambda!78738)))

(declare-fun bs!443391 () Bool)

(assert (= bs!443391 (and d!643813 d!643649)))

(assert (=> bs!443391 (= lambda!78740 lambda!78681)))

(declare-fun bs!443392 () Bool)

(assert (= bs!443392 (and d!643813 d!643719)))

(assert (=> bs!443392 (= lambda!78740 lambda!78703)))

(declare-fun bs!443393 () Bool)

(assert (= bs!443393 (and d!643813 d!643641)))

(assert (=> bs!443393 (= lambda!78740 lambda!78680)))

(declare-fun bs!443394 () Bool)

(assert (= bs!443394 (and d!643813 d!643747)))

(assert (=> bs!443394 (= lambda!78740 lambda!78707)))

(declare-fun bs!443395 () Bool)

(assert (= bs!443395 (and d!643813 d!643803)))

(assert (=> bs!443395 (= lambda!78740 lambda!78737)))

(declare-fun bs!443396 () Bool)

(assert (= bs!443396 (and d!643813 d!643711)))

(assert (=> bs!443396 (= lambda!78740 lambda!78698)))

(declare-fun bs!443397 () Bool)

(assert (= bs!443397 (and d!643813 d!643787)))

(assert (=> bs!443397 (= lambda!78740 lambda!78733)))

(declare-fun bs!443398 () Bool)

(assert (= bs!443398 (and d!643813 d!643709)))

(assert (=> bs!443398 (= lambda!78740 lambda!78697)))

(declare-fun bs!443399 () Bool)

(assert (= bs!443399 (and d!643813 d!643753)))

(assert (=> bs!443399 (= lambda!78740 lambda!78724)))

(declare-fun bs!443400 () Bool)

(assert (= bs!443400 (and d!643813 d!643707)))

(assert (=> bs!443400 (= lambda!78740 lambda!78696)))

(assert (=> d!643813 (= (inv!31334 setElem!15073) (forall!4869 (exprs!1741 setElem!15073) lambda!78740))))

(declare-fun bs!443401 () Bool)

(assert (= bs!443401 d!643813))

(declare-fun m!2576924 () Bool)

(assert (=> bs!443401 m!2576924))

(assert (=> setNonEmpty!15073 d!643813))

(assert (=> d!643617 d!643775))

(declare-fun d!643815 () Bool)

(declare-fun res!919602 () Bool)

(declare-fun e!1353368 () Bool)

(assert (=> d!643815 (=> (not res!919602) (not e!1353368))))

(assert (=> d!643815 (= res!919602 (= (csize!15848 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) (+ (size!18558 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) (size!18558 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))))

(assert (=> d!643815 (= (inv!31335 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) e!1353368)))

(declare-fun b!2124118 () Bool)

(declare-fun res!919603 () Bool)

(assert (=> b!2124118 (=> (not res!919603) (not e!1353368))))

(assert (=> b!2124118 (= res!919603 (and (not (= (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) Empty!7809)) (not (= (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) Empty!7809))))))

(declare-fun b!2124119 () Bool)

(declare-fun res!919604 () Bool)

(assert (=> b!2124119 (=> (not res!919604) (not e!1353368))))

(assert (=> b!2124119 (= res!919604 (= (cheight!8020 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) (+ (max!0 (height!1235 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) (height!1235 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) 1)))))

(declare-fun b!2124120 () Bool)

(assert (=> b!2124120 (= e!1353368 (<= 0 (cheight!8020 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))

(assert (= (and d!643815 res!919602) b!2124118))

(assert (= (and b!2124118 res!919603) b!2124119))

(assert (= (and b!2124119 res!919604) b!2124120))

(declare-fun m!2576926 () Bool)

(assert (=> d!643815 m!2576926))

(declare-fun m!2576928 () Bool)

(assert (=> d!643815 m!2576928))

(assert (=> b!2124119 m!2576773))

(assert (=> b!2124119 m!2576775))

(assert (=> b!2124119 m!2576773))

(assert (=> b!2124119 m!2576775))

(declare-fun m!2576930 () Bool)

(assert (=> b!2124119 m!2576930))

(assert (=> b!2123665 d!643815))

(declare-fun bs!443402 () Bool)

(declare-fun d!643817 () Bool)

(assert (= bs!443402 (and d!643817 d!643763)))

(declare-fun lambda!78741 () Int)

(assert (=> bs!443402 (= lambda!78741 lambda!78725)))

(declare-fun bs!443403 () Bool)

(assert (= bs!443403 (and d!643817 d!643727)))

(assert (=> bs!443403 (= lambda!78741 lambda!78705)))

(declare-fun bs!443404 () Bool)

(assert (= bs!443404 (and d!643817 d!643811)))

(assert (=> bs!443404 (= lambda!78741 lambda!78739)))

(declare-fun bs!443405 () Bool)

(assert (= bs!443405 (and d!643817 d!643657)))

(assert (=> bs!443405 (= lambda!78741 lambda!78685)))

(declare-fun bs!443406 () Bool)

(assert (= bs!443406 (and d!643817 d!643791)))

(assert (=> bs!443406 (= lambda!78741 lambda!78734)))

(declare-fun bs!443407 () Bool)

(assert (= bs!443407 (and d!643817 d!643683)))

(assert (=> bs!443407 (= lambda!78741 lambda!78693)))

(declare-fun bs!443408 () Bool)

(assert (= bs!443408 (and d!643817 d!643783)))

(assert (=> bs!443408 (= lambda!78741 lambda!78732)))

(declare-fun bs!443409 () Bool)

(assert (= bs!443409 (and d!643817 d!643799)))

(assert (=> bs!443409 (= lambda!78741 lambda!78736)))

(declare-fun bs!443410 () Bool)

(assert (= bs!443410 (and d!643817 d!643717)))

(assert (=> bs!443410 (= lambda!78741 lambda!78702)))

(declare-fun bs!443411 () Bool)

(assert (= bs!443411 (and d!643817 d!643773)))

(assert (=> bs!443411 (= lambda!78741 lambda!78726)))

(declare-fun bs!443412 () Bool)

(assert (= bs!443412 (and d!643817 d!643793)))

(assert (=> bs!443412 (= lambda!78741 lambda!78735)))

(declare-fun bs!443413 () Bool)

(assert (= bs!443413 (and d!643817 d!643721)))

(assert (=> bs!443413 (= lambda!78741 lambda!78704)))

(declare-fun bs!443414 () Bool)

(assert (= bs!443414 (and d!643817 d!643659)))

(assert (=> bs!443414 (= lambda!78741 lambda!78686)))

(declare-fun bs!443415 () Bool)

(assert (= bs!443415 (and d!643817 d!643703)))

(assert (=> bs!443415 (= lambda!78741 lambda!78694)))

(declare-fun bs!443416 () Bool)

(assert (= bs!443416 (and d!643817 d!643705)))

(assert (=> bs!443416 (= lambda!78741 lambda!78695)))

(declare-fun bs!443417 () Bool)

(assert (= bs!443417 (and d!643817 d!643735)))

(assert (=> bs!443417 (= lambda!78741 lambda!78706)))

(declare-fun bs!443418 () Bool)

(assert (= bs!443418 (and d!643817 d!643749)))

(assert (=> bs!443418 (= lambda!78741 lambda!78708)))

(declare-fun bs!443419 () Bool)

(assert (= bs!443419 (and d!643817 d!643777)))

(assert (=> bs!443419 (= lambda!78741 lambda!78730)))

(declare-fun bs!443420 () Bool)

(assert (= bs!443420 (and d!643817 d!643807)))

(assert (=> bs!443420 (= lambda!78741 lambda!78738)))

(declare-fun bs!443421 () Bool)

(assert (= bs!443421 (and d!643817 d!643649)))

(assert (=> bs!443421 (= lambda!78741 lambda!78681)))

(declare-fun bs!443422 () Bool)

(assert (= bs!443422 (and d!643817 d!643719)))

(assert (=> bs!443422 (= lambda!78741 lambda!78703)))

(declare-fun bs!443423 () Bool)

(assert (= bs!443423 (and d!643817 d!643641)))

(assert (=> bs!443423 (= lambda!78741 lambda!78680)))

(declare-fun bs!443424 () Bool)

(assert (= bs!443424 (and d!643817 d!643747)))

(assert (=> bs!443424 (= lambda!78741 lambda!78707)))

(declare-fun bs!443425 () Bool)

(assert (= bs!443425 (and d!643817 d!643803)))

(assert (=> bs!443425 (= lambda!78741 lambda!78737)))

(declare-fun bs!443426 () Bool)

(assert (= bs!443426 (and d!643817 d!643711)))

(assert (=> bs!443426 (= lambda!78741 lambda!78698)))

(declare-fun bs!443427 () Bool)

(assert (= bs!443427 (and d!643817 d!643781)))

(assert (=> bs!443427 (= lambda!78741 lambda!78731)))

(declare-fun bs!443428 () Bool)

(assert (= bs!443428 (and d!643817 d!643813)))

(assert (=> bs!443428 (= lambda!78741 lambda!78740)))

(declare-fun bs!443429 () Bool)

(assert (= bs!443429 (and d!643817 d!643787)))

(assert (=> bs!443429 (= lambda!78741 lambda!78733)))

(declare-fun bs!443430 () Bool)

(assert (= bs!443430 (and d!643817 d!643709)))

(assert (=> bs!443430 (= lambda!78741 lambda!78697)))

(declare-fun bs!443431 () Bool)

(assert (= bs!443431 (and d!643817 d!643753)))

(assert (=> bs!443431 (= lambda!78741 lambda!78724)))

(declare-fun bs!443432 () Bool)

(assert (= bs!443432 (and d!643817 d!643707)))

(assert (=> bs!443432 (= lambda!78741 lambda!78696)))

(assert (=> d!643817 (= (inv!31334 setElem!15057) (forall!4869 (exprs!1741 setElem!15057) lambda!78741))))

(declare-fun bs!443433 () Bool)

(assert (= bs!443433 d!643817))

(declare-fun m!2576932 () Bool)

(assert (=> bs!443433 m!2576932))

(assert (=> setNonEmpty!15057 d!643817))

(assert (=> d!643629 d!643623))

(declare-fun d!643819 () Bool)

(declare-fun res!919605 () Bool)

(declare-fun e!1353369 () Bool)

(assert (=> d!643819 (=> (not res!919605) (not e!1353369))))

(assert (=> d!643819 (= res!919605 (<= (size!18557 (list!9534 (xs!10751 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) 512))))

(assert (=> d!643819 (= (inv!31336 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) e!1353369)))

(declare-fun b!2124121 () Bool)

(declare-fun res!919606 () Bool)

(assert (=> b!2124121 (=> (not res!919606) (not e!1353369))))

(assert (=> b!2124121 (= res!919606 (= (csize!15849 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) (size!18557 (list!9534 (xs!10751 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))))))

(declare-fun b!2124122 () Bool)

(assert (=> b!2124122 (= e!1353369 (and (> (csize!15849 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) 0) (<= (csize!15849 (c!339823 (totalInput!2921 cacheFurthestNullable!130))) 512)))))

(assert (= (and d!643819 res!919605) b!2124121))

(assert (= (and b!2124121 res!919606) b!2124122))

(declare-fun m!2576934 () Bool)

(assert (=> d!643819 m!2576934))

(assert (=> d!643819 m!2576934))

(declare-fun m!2576936 () Bool)

(assert (=> d!643819 m!2576936))

(assert (=> b!2124121 m!2576934))

(assert (=> b!2124121 m!2576934))

(assert (=> b!2124121 m!2576936))

(assert (=> b!2123667 d!643819))

(declare-fun bs!443434 () Bool)

(declare-fun d!643821 () Bool)

(assert (= bs!443434 (and d!643821 b!2123497)))

(declare-fun lambda!78746 () Int)

(assert (=> bs!443434 (not (= lambda!78746 lambda!78655))))

(declare-fun bs!443435 () Bool)

(assert (= bs!443435 (and d!643821 b!2123521)))

(assert (=> bs!443435 (= (= lt!795305 (_1!13622 (_1!13623 lt!795247))) (= lambda!78746 lambda!78654))))

(declare-fun bs!443436 () Bool)

(assert (= bs!443436 (and d!643821 b!2123905)))

(assert (=> bs!443436 (not (= lambda!78746 lambda!78691))))

(declare-fun bs!443437 () Bool)

(assert (= bs!443437 (and d!643821 b!2123639)))

(assert (=> bs!443437 (not (= lambda!78746 lambda!78677))))

(declare-fun bs!443438 () Bool)

(assert (= bs!443438 (and d!643821 b!2123899)))

(assert (=> bs!443438 (= (= lt!795305 lt!795308) (= lambda!78746 lambda!78688))))

(declare-fun bs!443439 () Bool)

(assert (= bs!443439 (and d!643821 d!643595)))

(assert (=> bs!443439 (= lambda!78746 lambda!78673)))

(declare-fun bs!443440 () Bool)

(assert (= bs!443440 (and d!643821 b!2123895)))

(assert (=> bs!443440 (= (= lt!795305 lt!795334) (= lambda!78746 lambda!78689))))

(declare-fun bs!443441 () Bool)

(assert (= bs!443441 (and d!643821 d!643661)))

(assert (=> bs!443441 (= (= lt!795305 lt!795328) (= lambda!78746 lambda!78687))))

(declare-fun bs!443442 () Bool)

(assert (= bs!443442 (and d!643821 b!2123897)))

(assert (=> bs!443442 (= (= lt!795305 (_1!13622 (_1!13623 lt!795321))) (= lambda!78746 lambda!78690))))

(declare-fun bs!443443 () Bool)

(assert (= bs!443443 (and d!643821 b!2123629)))

(assert (=> bs!443443 (= (= lt!795305 lt!795311) (= lambda!78746 lambda!78675))))

(declare-fun bs!443444 () Bool)

(assert (= bs!443444 (and d!643821 b!2123633)))

(assert (=> bs!443444 (= (= lt!795305 e!1352951) (= lambda!78746 lambda!78674))))

(declare-fun bs!443445 () Bool)

(assert (= bs!443445 (and d!643821 b!2123631)))

(assert (=> bs!443445 (= (= lt!795305 (_1!13622 (_1!13623 lt!795298))) (= lambda!78746 lambda!78676))))

(assert (=> d!643821 true))

(declare-fun lambda!78747 () Int)

(assert (=> bs!443434 (not (= lambda!78747 lambda!78655))))

(assert (=> bs!443435 (= (= (ite c!339838 e!1352951 lt!795311) (_1!13622 (_1!13623 lt!795247))) (= lambda!78747 lambda!78654))))

(assert (=> bs!443436 (not (= lambda!78747 lambda!78691))))

(assert (=> bs!443437 (not (= lambda!78747 lambda!78677))))

(assert (=> bs!443438 (= (= (ite c!339838 e!1352951 lt!795311) lt!795308) (= lambda!78747 lambda!78688))))

(assert (=> bs!443439 (= (= (ite c!339838 e!1352951 lt!795311) lt!795305) (= lambda!78747 lambda!78673))))

(assert (=> bs!443440 (= (= (ite c!339838 e!1352951 lt!795311) lt!795334) (= lambda!78747 lambda!78689))))

(assert (=> bs!443441 (= (= (ite c!339838 e!1352951 lt!795311) lt!795328) (= lambda!78747 lambda!78687))))

(declare-fun bs!443446 () Bool)

(assert (= bs!443446 d!643821))

(assert (=> bs!443446 (= (= (ite c!339838 e!1352951 lt!795311) lt!795305) (= lambda!78747 lambda!78746))))

(assert (=> bs!443442 (= (= (ite c!339838 e!1352951 lt!795311) (_1!13622 (_1!13623 lt!795321))) (= lambda!78747 lambda!78690))))

(assert (=> bs!443443 (= (= (ite c!339838 e!1352951 lt!795311) lt!795311) (= lambda!78747 lambda!78675))))

(assert (=> bs!443444 (= (= (ite c!339838 e!1352951 lt!795311) e!1352951) (= lambda!78747 lambda!78674))))

(assert (=> bs!443445 (= (= (ite c!339838 e!1352951 lt!795311) (_1!13622 (_1!13623 lt!795298))) (= lambda!78747 lambda!78676))))

(assert (=> d!643821 true))

(assert (=> d!643821 (forall!4868 Nil!23738 lambda!78747)))

(declare-fun lt!795400 () Unit!37609)

(declare-fun choose!12669 (List!23822 Int Int) Unit!37609)

(assert (=> d!643821 (= lt!795400 (choose!12669 Nil!23738 lt!795305 (ite c!339838 e!1352951 lt!795311)))))

(assert (=> d!643821 (forall!4868 Nil!23738 lambda!78746)))

(assert (=> d!643821 (= (lemmaStackPreservesForEqualRes!7 Nil!23738 lt!795305 (ite c!339838 e!1352951 lt!795311)) lt!795400)))

(declare-fun m!2576938 () Bool)

(assert (=> bs!443446 m!2576938))

(declare-fun m!2576940 () Bool)

(assert (=> bs!443446 m!2576940))

(declare-fun m!2576942 () Bool)

(assert (=> bs!443446 m!2576942))

(assert (=> bm!128702 d!643821))

(assert (=> d!643597 d!643675))

(assert (=> d!643597 d!643625))

(declare-fun d!643823 () Bool)

(declare-fun lt!795401 () Int)

(assert (=> d!643823 (= lt!795401 (size!18557 (list!9533 (c!339823 input!5507))))))

(assert (=> d!643823 (= lt!795401 (ite ((_ is Empty!7809) (c!339823 input!5507)) 0 (ite ((_ is Leaf!11412) (c!339823 input!5507)) (csize!15849 (c!339823 input!5507)) (csize!15848 (c!339823 input!5507)))))))

(assert (=> d!643823 (= (size!18558 (c!339823 input!5507)) lt!795401)))

(declare-fun bs!443447 () Bool)

(assert (= bs!443447 d!643823))

(assert (=> bs!443447 m!2576469))

(assert (=> bs!443447 m!2576469))

(declare-fun m!2576944 () Bool)

(assert (=> bs!443447 m!2576944))

(assert (=> d!643597 d!643823))

(declare-fun d!643825 () Bool)

(declare-fun lt!795404 () Bool)

(assert (=> d!643825 (= lt!795404 (exists!695 (toList!1066 z!3883) lambda!78658))))

(declare-fun choose!12670 ((InoxSet Context!2482) Int) Bool)

(assert (=> d!643825 (= lt!795404 (choose!12670 z!3883 lambda!78658))))

(assert (=> d!643825 (= (exists!694 z!3883 lambda!78658) lt!795404)))

(declare-fun bs!443448 () Bool)

(assert (= bs!443448 d!643825))

(assert (=> bs!443448 m!2576825))

(assert (=> bs!443448 m!2576825))

(declare-fun m!2576946 () Bool)

(assert (=> bs!443448 m!2576946))

(declare-fun m!2576948 () Bool)

(assert (=> bs!443448 m!2576948))

(assert (=> d!643587 d!643825))

(declare-fun setNonEmpty!15082 () Bool)

(declare-fun setRes!15083 () Bool)

(assert (=> setNonEmpty!15082 (= setRes!15083 true)))

(declare-fun mapValue!12033 () List!23820)

(declare-fun setElem!15082 () Context!2482)

(declare-fun setRest!15083 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15082 (= (_2!13621 (h!29137 mapValue!12033)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15082 true) setRest!15083))))

(declare-fun b!2124123 () Bool)

(declare-fun e!1353370 () Bool)

(declare-fun setRes!15082 () Bool)

(assert (=> b!2124123 (= e!1353370 setRes!15082)))

(declare-fun condSetEmpty!15083 () Bool)

(declare-fun mapDefault!12033 () List!23820)

(assert (=> b!2124123 (= condSetEmpty!15083 (= (_2!13621 (h!29137 mapDefault!12033)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15082 () Bool)

(assert (=> setIsEmpty!15082 setRes!15083))

(declare-fun condMapEmpty!12033 () Bool)

(assert (=> mapNonEmpty!12024 (= condMapEmpty!12033 (= mapRest!12024 ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12033)))))

(declare-fun mapRes!12033 () Bool)

(assert (=> mapNonEmpty!12024 (and e!1353370 mapRes!12033)))

(declare-fun b!2124124 () Bool)

(declare-fun e!1353371 () Bool)

(assert (=> b!2124124 (= e!1353371 setRes!15083)))

(declare-fun condSetEmpty!15082 () Bool)

(assert (=> b!2124124 (= condSetEmpty!15082 (= (_2!13621 (h!29137 mapValue!12033)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun mapNonEmpty!12033 () Bool)

(assert (=> mapNonEmpty!12033 (= mapRes!12033 e!1353371)))

(declare-fun mapKey!12033 () (_ BitVec 32))

(declare-fun mapRest!12033 () (Array (_ BitVec 32) List!23820))

(assert (=> mapNonEmpty!12033 (= mapRest!12024 (store mapRest!12033 mapKey!12033 mapValue!12033))))

(declare-fun mapIsEmpty!12033 () Bool)

(assert (=> mapIsEmpty!12033 mapRes!12033))

(declare-fun setIsEmpty!15083 () Bool)

(assert (=> setIsEmpty!15083 setRes!15082))

(declare-fun setNonEmpty!15083 () Bool)

(assert (=> setNonEmpty!15083 (= setRes!15082 true)))

(declare-fun setElem!15083 () Context!2482)

(declare-fun setRest!15082 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15083 (= (_2!13621 (h!29137 mapDefault!12033)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15083 true) setRest!15082))))

(assert (= (and mapNonEmpty!12024 condMapEmpty!12033) mapIsEmpty!12033))

(assert (= (and mapNonEmpty!12024 (not condMapEmpty!12033)) mapNonEmpty!12033))

(assert (= (and b!2124124 condSetEmpty!15082) setIsEmpty!15082))

(assert (= (and b!2124124 (not condSetEmpty!15082)) setNonEmpty!15082))

(assert (= (and mapNonEmpty!12033 ((_ is Cons!23736) mapValue!12033)) b!2124124))

(assert (= (and b!2124123 condSetEmpty!15083) setIsEmpty!15083))

(assert (= (and b!2124123 (not condSetEmpty!15083)) setNonEmpty!15083))

(assert (= (and mapNonEmpty!12024 ((_ is Cons!23736) mapDefault!12033)) b!2124123))

(declare-fun m!2576950 () Bool)

(assert (=> mapNonEmpty!12033 m!2576950))

(declare-fun b!2124125 () Bool)

(declare-fun e!1353372 () Bool)

(declare-fun tp!650709 () Bool)

(declare-fun tp!650710 () Bool)

(assert (=> b!2124125 (= e!1353372 (and tp!650709 tp!650710))))

(assert (=> b!2123762 (= tp!650584 e!1353372)))

(assert (= (and b!2123762 ((_ is Cons!23734) (exprs!1741 (_1!13620 (_1!13621 (h!29137 mapValue!12021)))))) b!2124125))

(declare-fun b!2124126 () Bool)

(declare-fun e!1353373 () Bool)

(declare-fun tp!650711 () Bool)

(declare-fun tp!650712 () Bool)

(assert (=> b!2124126 (= e!1353373 (and tp!650711 tp!650712))))

(assert (=> b!2123872 (= tp!650708 e!1353373)))

(assert (= (and b!2123872 ((_ is Cons!23734) (exprs!1741 setElem!15075))) b!2124126))

(declare-fun condSetEmpty!15084 () Bool)

(assert (=> setNonEmpty!15036 (= condSetEmpty!15084 (= setRest!15036 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15084 () Bool)

(assert (=> setNonEmpty!15036 (= tp!650601 setRes!15084)))

(declare-fun setIsEmpty!15084 () Bool)

(assert (=> setIsEmpty!15084 setRes!15084))

(declare-fun setElem!15084 () Context!2482)

(declare-fun e!1353374 () Bool)

(declare-fun tp!650714 () Bool)

(declare-fun setNonEmpty!15084 () Bool)

(assert (=> setNonEmpty!15084 (= setRes!15084 (and tp!650714 (inv!31334 setElem!15084) e!1353374))))

(declare-fun setRest!15084 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15084 (= setRest!15036 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15084 true) setRest!15084))))

(declare-fun b!2124127 () Bool)

(declare-fun tp!650713 () Bool)

(assert (=> b!2124127 (= e!1353374 tp!650713)))

(assert (= (and setNonEmpty!15036 condSetEmpty!15084) setIsEmpty!15084))

(assert (= (and setNonEmpty!15036 (not condSetEmpty!15084)) setNonEmpty!15084))

(assert (= setNonEmpty!15084 b!2124127))

(declare-fun m!2576952 () Bool)

(assert (=> setNonEmpty!15084 m!2576952))

(declare-fun tp!650716 () Bool)

(declare-fun tp!650717 () Bool)

(declare-fun b!2124128 () Bool)

(declare-fun e!1353376 () Bool)

(assert (=> b!2124128 (= e!1353376 (and (inv!31333 (left!18357 (left!18357 (c!339823 input!5507)))) tp!650717 (inv!31333 (right!18687 (left!18357 (c!339823 input!5507)))) tp!650716))))

(declare-fun b!2124130 () Bool)

(declare-fun e!1353375 () Bool)

(declare-fun tp!650715 () Bool)

(assert (=> b!2124130 (= e!1353375 tp!650715)))

(declare-fun b!2124129 () Bool)

(assert (=> b!2124129 (= e!1353376 (and (inv!31337 (xs!10751 (left!18357 (c!339823 input!5507)))) e!1353375))))

(assert (=> b!2123850 (= tp!650678 (and (inv!31333 (left!18357 (c!339823 input!5507))) e!1353376))))

(assert (= (and b!2123850 ((_ is Node!7809) (left!18357 (c!339823 input!5507)))) b!2124128))

(assert (= b!2124129 b!2124130))

(assert (= (and b!2123850 ((_ is Leaf!11412) (left!18357 (c!339823 input!5507)))) b!2124129))

(declare-fun m!2576954 () Bool)

(assert (=> b!2124128 m!2576954))

(declare-fun m!2576956 () Bool)

(assert (=> b!2124128 m!2576956))

(declare-fun m!2576958 () Bool)

(assert (=> b!2124129 m!2576958))

(assert (=> b!2123850 m!2576553))

(declare-fun tp!650720 () Bool)

(declare-fun b!2124131 () Bool)

(declare-fun e!1353378 () Bool)

(declare-fun tp!650719 () Bool)

(assert (=> b!2124131 (= e!1353378 (and (inv!31333 (left!18357 (right!18687 (c!339823 input!5507)))) tp!650720 (inv!31333 (right!18687 (right!18687 (c!339823 input!5507)))) tp!650719))))

(declare-fun b!2124133 () Bool)

(declare-fun e!1353377 () Bool)

(declare-fun tp!650718 () Bool)

(assert (=> b!2124133 (= e!1353377 tp!650718)))

(declare-fun b!2124132 () Bool)

(assert (=> b!2124132 (= e!1353378 (and (inv!31337 (xs!10751 (right!18687 (c!339823 input!5507)))) e!1353377))))

(assert (=> b!2123850 (= tp!650677 (and (inv!31333 (right!18687 (c!339823 input!5507))) e!1353378))))

(assert (= (and b!2123850 ((_ is Node!7809) (right!18687 (c!339823 input!5507)))) b!2124131))

(assert (= b!2124132 b!2124133))

(assert (= (and b!2123850 ((_ is Leaf!11412) (right!18687 (c!339823 input!5507)))) b!2124132))

(declare-fun m!2576960 () Bool)

(assert (=> b!2124131 m!2576960))

(declare-fun m!2576962 () Bool)

(assert (=> b!2124131 m!2576962))

(declare-fun m!2576964 () Bool)

(assert (=> b!2124132 m!2576964))

(assert (=> b!2123850 m!2576555))

(declare-fun condSetEmpty!15085 () Bool)

(assert (=> setNonEmpty!15020 (= condSetEmpty!15085 (= setRest!15020 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15085 () Bool)

(assert (=> setNonEmpty!15020 setRes!15085))

(declare-fun setIsEmpty!15085 () Bool)

(assert (=> setIsEmpty!15085 setRes!15085))

(declare-fun setNonEmpty!15085 () Bool)

(assert (=> setNonEmpty!15085 (= setRes!15085 true)))

(declare-fun setElem!15085 () Context!2482)

(declare-fun setRest!15085 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15085 (= setRest!15020 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15085 true) setRest!15085))))

(assert (= (and setNonEmpty!15020 condSetEmpty!15085) setIsEmpty!15085))

(assert (= (and setNonEmpty!15020 (not condSetEmpty!15085)) setNonEmpty!15085))

(declare-fun condSetEmpty!15086 () Bool)

(assert (=> setNonEmpty!15079 (= condSetEmpty!15086 (= setRest!15079 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15086 () Bool)

(assert (=> setNonEmpty!15079 setRes!15086))

(declare-fun setIsEmpty!15086 () Bool)

(assert (=> setIsEmpty!15086 setRes!15086))

(declare-fun setNonEmpty!15086 () Bool)

(assert (=> setNonEmpty!15086 (= setRes!15086 true)))

(declare-fun setElem!15086 () Context!2482)

(declare-fun setRest!15086 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15086 (= setRest!15079 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15086 true) setRest!15086))))

(assert (= (and setNonEmpty!15079 condSetEmpty!15086) setIsEmpty!15086))

(assert (= (and setNonEmpty!15079 (not condSetEmpty!15086)) setNonEmpty!15086))

(declare-fun mapNonEmpty!12034 () Bool)

(declare-fun mapRes!12034 () Bool)

(declare-fun tp!650723 () Bool)

(declare-fun e!1353380 () Bool)

(assert (=> mapNonEmpty!12034 (= mapRes!12034 (and tp!650723 e!1353380))))

(declare-fun mapKey!12034 () (_ BitVec 32))

(declare-fun mapValue!12034 () List!23819)

(declare-fun mapRest!12034 () (Array (_ BitVec 32) List!23819))

(assert (=> mapNonEmpty!12034 (= mapRest!12027 (store mapRest!12034 mapKey!12034 mapValue!12034))))

(declare-fun tp!650724 () Bool)

(declare-fun e!1353382 () Bool)

(declare-fun setRes!15088 () Bool)

(declare-fun mapDefault!12034 () List!23819)

(declare-fun e!1353384 () Bool)

(declare-fun b!2124134 () Bool)

(declare-fun tp!650730 () Bool)

(assert (=> b!2124134 (= e!1353382 (and tp!650730 (inv!31334 (_2!13618 (_1!13619 (h!29136 mapDefault!12034)))) e!1353384 tp_is_empty!9493 setRes!15088 tp!650724))))

(declare-fun condSetEmpty!15087 () Bool)

(assert (=> b!2124134 (= condSetEmpty!15087 (= (_2!13619 (h!29136 mapDefault!12034)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun mapIsEmpty!12034 () Bool)

(assert (=> mapIsEmpty!12034 mapRes!12034))

(declare-fun tp!650726 () Bool)

(declare-fun b!2124135 () Bool)

(declare-fun tp!650729 () Bool)

(declare-fun e!1353383 () Bool)

(declare-fun setRes!15087 () Bool)

(assert (=> b!2124135 (= e!1353380 (and tp!650726 (inv!31334 (_2!13618 (_1!13619 (h!29136 mapValue!12034)))) e!1353383 tp_is_empty!9493 setRes!15087 tp!650729))))

(declare-fun condSetEmpty!15088 () Bool)

(assert (=> b!2124135 (= condSetEmpty!15088 (= (_2!13619 (h!29136 mapValue!12034)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2124136 () Bool)

(declare-fun e!1353381 () Bool)

(declare-fun tp!650731 () Bool)

(assert (=> b!2124136 (= e!1353381 tp!650731)))

(declare-fun setIsEmpty!15087 () Bool)

(assert (=> setIsEmpty!15087 setRes!15087))

(declare-fun condMapEmpty!12034 () Bool)

(assert (=> mapNonEmpty!12027 (= condMapEmpty!12034 (= mapRest!12027 ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12034)))))

(assert (=> mapNonEmpty!12027 (= tp!650634 (and e!1353382 mapRes!12034))))

(declare-fun setElem!15087 () Context!2482)

(declare-fun tp!650721 () Bool)

(declare-fun setNonEmpty!15087 () Bool)

(assert (=> setNonEmpty!15087 (= setRes!15087 (and tp!650721 (inv!31334 setElem!15087) e!1353381))))

(declare-fun setRest!15087 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15087 (= (_2!13619 (h!29136 mapValue!12034)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15087 true) setRest!15087))))

(declare-fun tp!650727 () Bool)

(declare-fun setNonEmpty!15088 () Bool)

(declare-fun e!1353379 () Bool)

(declare-fun setElem!15088 () Context!2482)

(assert (=> setNonEmpty!15088 (= setRes!15088 (and tp!650727 (inv!31334 setElem!15088) e!1353379))))

(declare-fun setRest!15088 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15088 (= (_2!13619 (h!29136 mapDefault!12034)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15088 true) setRest!15088))))

(declare-fun setIsEmpty!15088 () Bool)

(assert (=> setIsEmpty!15088 setRes!15088))

(declare-fun b!2124137 () Bool)

(declare-fun tp!650728 () Bool)

(assert (=> b!2124137 (= e!1353379 tp!650728)))

(declare-fun b!2124138 () Bool)

(declare-fun tp!650725 () Bool)

(assert (=> b!2124138 (= e!1353383 tp!650725)))

(declare-fun b!2124139 () Bool)

(declare-fun tp!650722 () Bool)

(assert (=> b!2124139 (= e!1353384 tp!650722)))

(assert (= (and mapNonEmpty!12027 condMapEmpty!12034) mapIsEmpty!12034))

(assert (= (and mapNonEmpty!12027 (not condMapEmpty!12034)) mapNonEmpty!12034))

(assert (= b!2124135 b!2124138))

(assert (= (and b!2124135 condSetEmpty!15088) setIsEmpty!15087))

(assert (= (and b!2124135 (not condSetEmpty!15088)) setNonEmpty!15087))

(assert (= setNonEmpty!15087 b!2124136))

(assert (= (and mapNonEmpty!12034 ((_ is Cons!23735) mapValue!12034)) b!2124135))

(assert (= b!2124134 b!2124139))

(assert (= (and b!2124134 condSetEmpty!15087) setIsEmpty!15088))

(assert (= (and b!2124134 (not condSetEmpty!15087)) setNonEmpty!15088))

(assert (= setNonEmpty!15088 b!2124137))

(assert (= (and mapNonEmpty!12027 ((_ is Cons!23735) mapDefault!12034)) b!2124134))

(declare-fun m!2576966 () Bool)

(assert (=> b!2124134 m!2576966))

(declare-fun m!2576968 () Bool)

(assert (=> mapNonEmpty!12034 m!2576968))

(declare-fun m!2576970 () Bool)

(assert (=> setNonEmpty!15088 m!2576970))

(declare-fun m!2576972 () Bool)

(assert (=> setNonEmpty!15087 m!2576972))

(declare-fun m!2576974 () Bool)

(assert (=> b!2124135 m!2576974))

(declare-fun b!2124140 () Bool)

(declare-fun e!1353385 () Bool)

(declare-fun setRes!15089 () Bool)

(assert (=> b!2124140 (= e!1353385 setRes!15089)))

(declare-fun condSetEmpty!15089 () Bool)

(assert (=> b!2124140 (= condSetEmpty!15089 (= (_2!13621 (h!29137 (t!196339 mapValue!12013))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15089 () Bool)

(assert (=> setIsEmpty!15089 setRes!15089))

(declare-fun setNonEmpty!15089 () Bool)

(assert (=> setNonEmpty!15089 (= setRes!15089 true)))

(declare-fun setElem!15089 () Context!2482)

(declare-fun setRest!15089 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15089 (= (_2!13621 (h!29137 (t!196339 mapValue!12013))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15089 true) setRest!15089))))

(assert (=> b!2123803 e!1353385))

(assert (= (and b!2124140 condSetEmpty!15089) setIsEmpty!15089))

(assert (= (and b!2124140 (not condSetEmpty!15089)) setNonEmpty!15089))

(assert (= (and b!2123803 ((_ is Cons!23736) (t!196339 mapValue!12013))) b!2124140))

(declare-fun b!2124141 () Bool)

(declare-fun e!1353386 () Bool)

(declare-fun tp!650732 () Bool)

(declare-fun tp!650733 () Bool)

(assert (=> b!2124141 (= e!1353386 (and tp!650732 tp!650733))))

(assert (=> b!2123841 (= tp!650670 e!1353386)))

(assert (= (and b!2123841 ((_ is Cons!23734) (exprs!1741 setElem!15062))) b!2124141))

(declare-fun tp!650742 () Bool)

(declare-fun setRes!15091 () Bool)

(declare-fun e!1353392 () Bool)

(declare-fun setElem!15091 () Context!2482)

(declare-fun setNonEmpty!15090 () Bool)

(assert (=> setNonEmpty!15090 (= setRes!15091 (and tp!650742 (inv!31334 setElem!15091) e!1353392))))

(declare-fun mapValue!12035 () List!23820)

(declare-fun setRest!15090 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15090 (= (_2!13621 (h!29137 mapValue!12035)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15091 true) setRest!15090))))

(declare-fun e!1353388 () Bool)

(declare-fun setElem!15090 () Context!2482)

(declare-fun tp!650736 () Bool)

(declare-fun setNonEmpty!15091 () Bool)

(declare-fun setRes!15090 () Bool)

(assert (=> setNonEmpty!15091 (= setRes!15090 (and tp!650736 (inv!31334 setElem!15090) e!1353388))))

(declare-fun mapDefault!12035 () List!23820)

(declare-fun setRest!15091 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15091 (= (_2!13621 (h!29137 mapDefault!12035)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15090 true) setRest!15091))))

(declare-fun condMapEmpty!12035 () Bool)

(assert (=> mapNonEmpty!12021 (= condMapEmpty!12035 (= mapRest!12021 ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12035)))))

(declare-fun e!1353387 () Bool)

(declare-fun mapRes!12035 () Bool)

(assert (=> mapNonEmpty!12021 (= tp!650582 (and e!1353387 mapRes!12035))))

(declare-fun b!2124142 () Bool)

(declare-fun tp!650735 () Bool)

(declare-fun e!1353390 () Bool)

(assert (=> b!2124142 (= e!1353387 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 mapDefault!12035)))) e!1353390 tp_is_empty!9493 setRes!15090 tp!650735))))

(declare-fun condSetEmpty!15091 () Bool)

(assert (=> b!2124142 (= condSetEmpty!15091 (= (_2!13621 (h!29137 mapDefault!12035)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2124143 () Bool)

(declare-fun e!1353391 () Bool)

(declare-fun tp!650740 () Bool)

(assert (=> b!2124143 (= e!1353391 tp!650740)))

(declare-fun b!2124144 () Bool)

(declare-fun tp!650739 () Bool)

(assert (=> b!2124144 (= e!1353390 tp!650739)))

(declare-fun setIsEmpty!15090 () Bool)

(assert (=> setIsEmpty!15090 setRes!15090))

(declare-fun setIsEmpty!15091 () Bool)

(assert (=> setIsEmpty!15091 setRes!15091))

(declare-fun mapIsEmpty!12035 () Bool)

(assert (=> mapIsEmpty!12035 mapRes!12035))

(declare-fun tp!650734 () Bool)

(declare-fun e!1353389 () Bool)

(declare-fun b!2124145 () Bool)

(assert (=> b!2124145 (= e!1353389 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 mapValue!12035)))) e!1353391 tp_is_empty!9493 setRes!15091 tp!650734))))

(declare-fun condSetEmpty!15090 () Bool)

(assert (=> b!2124145 (= condSetEmpty!15090 (= (_2!13621 (h!29137 mapValue!12035)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2124146 () Bool)

(declare-fun tp!650737 () Bool)

(assert (=> b!2124146 (= e!1353388 tp!650737)))

(declare-fun b!2124147 () Bool)

(declare-fun tp!650741 () Bool)

(assert (=> b!2124147 (= e!1353392 tp!650741)))

(declare-fun mapNonEmpty!12035 () Bool)

(declare-fun tp!650738 () Bool)

(assert (=> mapNonEmpty!12035 (= mapRes!12035 (and tp!650738 e!1353389))))

(declare-fun mapKey!12035 () (_ BitVec 32))

(declare-fun mapRest!12035 () (Array (_ BitVec 32) List!23820))

(assert (=> mapNonEmpty!12035 (= mapRest!12021 (store mapRest!12035 mapKey!12035 mapValue!12035))))

(assert (= (and mapNonEmpty!12021 condMapEmpty!12035) mapIsEmpty!12035))

(assert (= (and mapNonEmpty!12021 (not condMapEmpty!12035)) mapNonEmpty!12035))

(assert (= b!2124145 b!2124143))

(assert (= (and b!2124145 condSetEmpty!15090) setIsEmpty!15091))

(assert (= (and b!2124145 (not condSetEmpty!15090)) setNonEmpty!15090))

(assert (= setNonEmpty!15090 b!2124147))

(assert (= (and mapNonEmpty!12035 ((_ is Cons!23736) mapValue!12035)) b!2124145))

(assert (= b!2124142 b!2124144))

(assert (= (and b!2124142 condSetEmpty!15091) setIsEmpty!15090))

(assert (= (and b!2124142 (not condSetEmpty!15091)) setNonEmpty!15091))

(assert (= setNonEmpty!15091 b!2124146))

(assert (= (and mapNonEmpty!12021 ((_ is Cons!23736) mapDefault!12035)) b!2124142))

(declare-fun m!2576976 () Bool)

(assert (=> b!2124145 m!2576976))

(declare-fun m!2576978 () Bool)

(assert (=> setNonEmpty!15090 m!2576978))

(declare-fun m!2576980 () Bool)

(assert (=> mapNonEmpty!12035 m!2576980))

(declare-fun m!2576982 () Bool)

(assert (=> b!2124142 m!2576982))

(declare-fun m!2576984 () Bool)

(assert (=> setNonEmpty!15091 m!2576984))

(declare-fun b!2124148 () Bool)

(declare-fun e!1353393 () Bool)

(declare-fun tp!650743 () Bool)

(declare-fun tp!650744 () Bool)

(assert (=> b!2124148 (= e!1353393 (and tp!650743 tp!650744))))

(assert (=> b!2123838 (= tp!650665 e!1353393)))

(assert (= (and b!2123838 ((_ is Cons!23734) (exprs!1741 setElem!15061))) b!2124148))

(declare-fun b!2124149 () Bool)

(declare-fun e!1353394 () Bool)

(declare-fun tp!650745 () Bool)

(declare-fun tp!650746 () Bool)

(assert (=> b!2124149 (= e!1353394 (and tp!650745 tp!650746))))

(assert (=> b!2123718 (= tp!650541 e!1353394)))

(assert (= (and b!2123718 ((_ is Cons!23734) (exprs!1741 (_1!13620 (_1!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))))))) b!2124149))

(declare-fun tp!650748 () Bool)

(declare-fun tp!650749 () Bool)

(declare-fun b!2124150 () Bool)

(declare-fun e!1353396 () Bool)

(assert (=> b!2124150 (= e!1353396 (and (inv!31333 (left!18357 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) tp!650749 (inv!31333 (right!18687 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) tp!650748))))

(declare-fun b!2124152 () Bool)

(declare-fun e!1353395 () Bool)

(declare-fun tp!650747 () Bool)

(assert (=> b!2124152 (= e!1353395 tp!650747)))

(declare-fun b!2124151 () Bool)

(assert (=> b!2124151 (= e!1353396 (and (inv!31337 (xs!10751 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) e!1353395))))

(assert (=> b!2123835 (= tp!650660 (and (inv!31333 (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) e!1353396))))

(assert (= (and b!2123835 ((_ is Node!7809) (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) b!2124150))

(assert (= b!2124151 b!2124152))

(assert (= (and b!2123835 ((_ is Leaf!11412) (left!18357 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) b!2124151))

(declare-fun m!2576986 () Bool)

(assert (=> b!2124150 m!2576986))

(declare-fun m!2576988 () Bool)

(assert (=> b!2124150 m!2576988))

(declare-fun m!2576990 () Bool)

(assert (=> b!2124151 m!2576990))

(assert (=> b!2123835 m!2576535))

(declare-fun e!1353398 () Bool)

(declare-fun tp!650752 () Bool)

(declare-fun b!2124153 () Bool)

(declare-fun tp!650751 () Bool)

(assert (=> b!2124153 (= e!1353398 (and (inv!31333 (left!18357 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) tp!650752 (inv!31333 (right!18687 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) tp!650751))))

(declare-fun b!2124155 () Bool)

(declare-fun e!1353397 () Bool)

(declare-fun tp!650750 () Bool)

(assert (=> b!2124155 (= e!1353397 tp!650750)))

(declare-fun b!2124154 () Bool)

(assert (=> b!2124154 (= e!1353398 (and (inv!31337 (xs!10751 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) e!1353397))))

(assert (=> b!2123835 (= tp!650659 (and (inv!31333 (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))) e!1353398))))

(assert (= (and b!2123835 ((_ is Node!7809) (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) b!2124153))

(assert (= b!2124154 b!2124155))

(assert (= (and b!2123835 ((_ is Leaf!11412) (right!18687 (c!339823 (totalInput!2921 cacheFurthestNullable!130))))) b!2124154))

(declare-fun m!2576992 () Bool)

(assert (=> b!2124153 m!2576992))

(declare-fun m!2576994 () Bool)

(assert (=> b!2124153 m!2576994))

(declare-fun m!2576996 () Bool)

(assert (=> b!2124154 m!2576996))

(assert (=> b!2123835 m!2576537))

(declare-fun b!2124156 () Bool)

(declare-fun e!1353399 () Bool)

(declare-fun setRes!15092 () Bool)

(assert (=> b!2124156 (= e!1353399 setRes!15092)))

(declare-fun condSetEmpty!15092 () Bool)

(assert (=> b!2124156 (= condSetEmpty!15092 (= (_2!13619 (h!29136 (t!196338 mapValue!12018))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15092 () Bool)

(assert (=> setIsEmpty!15092 setRes!15092))

(declare-fun setNonEmpty!15092 () Bool)

(assert (=> setNonEmpty!15092 (= setRes!15092 true)))

(declare-fun setElem!15092 () Context!2482)

(declare-fun setRest!15092 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15092 (= (_2!13619 (h!29136 (t!196338 mapValue!12018))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15092 true) setRest!15092))))

(assert (=> b!2123727 e!1353399))

(assert (= (and b!2124156 condSetEmpty!15092) setIsEmpty!15092))

(assert (= (and b!2124156 (not condSetEmpty!15092)) setNonEmpty!15092))

(assert (= (and b!2123727 ((_ is Cons!23735) (t!196338 mapValue!12018))) b!2124156))

(declare-fun b!2124157 () Bool)

(declare-fun e!1353400 () Bool)

(declare-fun tp!650753 () Bool)

(declare-fun tp!650754 () Bool)

(assert (=> b!2124157 (= e!1353400 (and tp!650753 tp!650754))))

(assert (=> b!2123844 (= tp!650675 e!1353400)))

(assert (= (and b!2123844 ((_ is Cons!23734) (exprs!1741 setElem!15063))) b!2124157))

(declare-fun e!1353403 () Bool)

(assert (=> b!2123769 (= tp!650590 e!1353403)))

(declare-fun b!2124158 () Bool)

(declare-fun e!1353401 () Bool)

(declare-fun tp!650757 () Bool)

(assert (=> b!2124158 (= e!1353401 tp!650757)))

(declare-fun b!2124159 () Bool)

(declare-fun e!1353402 () Bool)

(declare-fun tp!650755 () Bool)

(assert (=> b!2124159 (= e!1353402 tp!650755)))

(declare-fun tp!650756 () Bool)

(declare-fun setNonEmpty!15093 () Bool)

(declare-fun setElem!15093 () Context!2482)

(declare-fun setRes!15093 () Bool)

(assert (=> setNonEmpty!15093 (= setRes!15093 (and tp!650756 (inv!31334 setElem!15093) e!1353401))))

(declare-fun setRest!15093 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15093 (= (_2!13621 (h!29137 (t!196339 mapValue!12005))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15093 true) setRest!15093))))

(declare-fun tp!650758 () Bool)

(declare-fun b!2124160 () Bool)

(assert (=> b!2124160 (= e!1353403 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 (t!196339 mapValue!12005))))) e!1353402 tp_is_empty!9493 setRes!15093 tp!650758))))

(declare-fun condSetEmpty!15093 () Bool)

(assert (=> b!2124160 (= condSetEmpty!15093 (= (_2!13621 (h!29137 (t!196339 mapValue!12005))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15093 () Bool)

(assert (=> setIsEmpty!15093 setRes!15093))

(assert (= b!2124160 b!2124159))

(assert (= (and b!2124160 condSetEmpty!15093) setIsEmpty!15093))

(assert (= (and b!2124160 (not condSetEmpty!15093)) setNonEmpty!15093))

(assert (= setNonEmpty!15093 b!2124158))

(assert (= (and b!2123769 ((_ is Cons!23736) (t!196339 mapValue!12005))) b!2124160))

(declare-fun m!2576998 () Bool)

(assert (=> setNonEmpty!15093 m!2576998))

(declare-fun m!2577000 () Bool)

(assert (=> b!2124160 m!2577000))

(declare-fun e!1353406 () Bool)

(assert (=> b!2123846 (= tp!650674 e!1353406)))

(declare-fun b!2124173 () Bool)

(declare-fun tp!650771 () Bool)

(assert (=> b!2124173 (= e!1353406 tp!650771)))

(declare-fun b!2124171 () Bool)

(assert (=> b!2124171 (= e!1353406 tp_is_empty!9493)))

(declare-fun b!2124174 () Bool)

(declare-fun tp!650773 () Bool)

(declare-fun tp!650769 () Bool)

(assert (=> b!2124174 (= e!1353406 (and tp!650773 tp!650769))))

(declare-fun b!2124172 () Bool)

(declare-fun tp!650770 () Bool)

(declare-fun tp!650772 () Bool)

(assert (=> b!2124172 (= e!1353406 (and tp!650770 tp!650772))))

(assert (= (and b!2123846 ((_ is ElementMatch!5671) (_1!13618 (_1!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) b!2124171))

(assert (= (and b!2123846 ((_ is Concat!9973) (_1!13618 (_1!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) b!2124172))

(assert (= (and b!2123846 ((_ is Star!5671) (_1!13618 (_1!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) b!2124173))

(assert (= (and b!2123846 ((_ is Union!5671) (_1!13618 (_1!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) b!2124174))

(declare-fun e!1353408 () Bool)

(assert (=> b!2123846 (= tp!650672 e!1353408)))

(declare-fun b!2124175 () Bool)

(declare-fun e!1353407 () Bool)

(declare-fun tp!650778 () Bool)

(assert (=> b!2124175 (= e!1353407 tp!650778)))

(declare-fun setNonEmpty!15094 () Bool)

(declare-fun setRes!15094 () Bool)

(declare-fun tp!650774 () Bool)

(declare-fun setElem!15094 () Context!2482)

(assert (=> setNonEmpty!15094 (= setRes!15094 (and tp!650774 (inv!31334 setElem!15094) e!1353407))))

(declare-fun setRest!15094 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15094 (= (_2!13619 (h!29136 (t!196338 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15094 true) setRest!15094))))

(declare-fun setIsEmpty!15094 () Bool)

(assert (=> setIsEmpty!15094 setRes!15094))

(declare-fun b!2124176 () Bool)

(declare-fun e!1353409 () Bool)

(declare-fun tp!650776 () Bool)

(assert (=> b!2124176 (= e!1353409 tp!650776)))

(declare-fun b!2124177 () Bool)

(declare-fun tp!650775 () Bool)

(declare-fun tp!650777 () Bool)

(assert (=> b!2124177 (= e!1353408 (and tp!650777 (inv!31334 (_2!13618 (_1!13619 (h!29136 (t!196338 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) e!1353409 tp_is_empty!9493 setRes!15094 tp!650775))))

(declare-fun condSetEmpty!15094 () Bool)

(assert (=> b!2124177 (= condSetEmpty!15094 (= (_2!13619 (h!29136 (t!196338 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2124177 b!2124176))

(assert (= (and b!2124177 condSetEmpty!15094) setIsEmpty!15094))

(assert (= (and b!2124177 (not condSetEmpty!15094)) setNonEmpty!15094))

(assert (= setNonEmpty!15094 b!2124175))

(assert (= (and b!2123846 ((_ is Cons!23735) (t!196338 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))) b!2124177))

(declare-fun m!2577002 () Bool)

(assert (=> setNonEmpty!15094 m!2577002))

(declare-fun m!2577004 () Bool)

(assert (=> b!2124177 m!2577004))

(declare-fun condSetEmpty!15095 () Bool)

(assert (=> setNonEmpty!15080 (= condSetEmpty!15095 (= setRest!15080 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15095 () Bool)

(assert (=> setNonEmpty!15080 setRes!15095))

(declare-fun setIsEmpty!15095 () Bool)

(assert (=> setIsEmpty!15095 setRes!15095))

(declare-fun setNonEmpty!15095 () Bool)

(assert (=> setNonEmpty!15095 (= setRes!15095 true)))

(declare-fun setElem!15095 () Context!2482)

(declare-fun setRest!15095 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15095 (= setRest!15080 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15095 true) setRest!15095))))

(assert (= (and setNonEmpty!15080 condSetEmpty!15095) setIsEmpty!15095))

(assert (= (and setNonEmpty!15080 (not condSetEmpty!15095)) setNonEmpty!15095))

(declare-fun setIsEmpty!15096 () Bool)

(declare-fun setRes!15096 () Bool)

(assert (=> setIsEmpty!15096 setRes!15096))

(declare-fun setElem!15096 () Context!2482)

(declare-fun setNonEmpty!15096 () Bool)

(declare-fun e!1353411 () Bool)

(declare-fun tp!650780 () Bool)

(assert (=> setNonEmpty!15096 (= setRes!15096 (and tp!650780 (inv!31334 setElem!15096) e!1353411))))

(declare-fun setRest!15096 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15096 (= (_1!13624 (_1!13625 (h!29140 (t!196342 mapDefault!12030)))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15096 true) setRest!15096))))

(declare-fun e!1353410 () Bool)

(assert (=> b!2123864 (= tp!650698 e!1353410)))

(declare-fun b!2124179 () Bool)

(declare-fun tp!650781 () Bool)

(assert (=> b!2124179 (= e!1353411 tp!650781)))

(declare-fun b!2124178 () Bool)

(declare-fun tp!650779 () Bool)

(assert (=> b!2124178 (= e!1353410 (and setRes!15096 tp!650779))))

(declare-fun condSetEmpty!15096 () Bool)

(assert (=> b!2124178 (= condSetEmpty!15096 (= (_1!13624 (_1!13625 (h!29140 (t!196342 mapDefault!12030)))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2124178 condSetEmpty!15096) setIsEmpty!15096))

(assert (= (and b!2124178 (not condSetEmpty!15096)) setNonEmpty!15096))

(assert (= setNonEmpty!15096 b!2124179))

(assert (= (and b!2123864 ((_ is Cons!23739) (t!196342 mapDefault!12030))) b!2124178))

(declare-fun m!2577006 () Bool)

(assert (=> setNonEmpty!15096 m!2577006))

(declare-fun b!2124180 () Bool)

(declare-fun e!1353412 () Bool)

(declare-fun tp!650782 () Bool)

(declare-fun tp!650783 () Bool)

(assert (=> b!2124180 (= e!1353412 (and tp!650782 tp!650783))))

(assert (=> b!2123714 (= tp!650539 e!1353412)))

(assert (= (and b!2123714 ((_ is Cons!23734) (exprs!1741 setElem!15014))) b!2124180))

(declare-fun b!2124181 () Bool)

(declare-fun e!1353413 () Bool)

(declare-fun tp!650784 () Bool)

(declare-fun tp!650785 () Bool)

(assert (=> b!2124181 (= e!1353413 (and tp!650784 tp!650785))))

(assert (=> b!2123820 (= tp!650642 e!1353413)))

(assert (= (and b!2123820 ((_ is Cons!23734) (exprs!1741 setElem!15056))) b!2124181))

(declare-fun b!2124182 () Bool)

(declare-fun e!1353414 () Bool)

(declare-fun tp!650786 () Bool)

(declare-fun tp!650787 () Bool)

(assert (=> b!2124182 (= e!1353414 (and tp!650786 tp!650787))))

(assert (=> b!2123865 (= tp!650696 e!1353414)))

(assert (= (and b!2123865 ((_ is Cons!23734) (exprs!1741 setElem!15072))) b!2124182))

(declare-fun e!1353415 () Bool)

(assert (=> b!2123843 (= tp!650669 e!1353415)))

(declare-fun b!2124185 () Bool)

(declare-fun tp!650790 () Bool)

(assert (=> b!2124185 (= e!1353415 tp!650790)))

(declare-fun b!2124183 () Bool)

(assert (=> b!2124183 (= e!1353415 tp_is_empty!9493)))

(declare-fun b!2124186 () Bool)

(declare-fun tp!650792 () Bool)

(declare-fun tp!650788 () Bool)

(assert (=> b!2124186 (= e!1353415 (and tp!650792 tp!650788))))

(declare-fun b!2124184 () Bool)

(declare-fun tp!650789 () Bool)

(declare-fun tp!650791 () Bool)

(assert (=> b!2124184 (= e!1353415 (and tp!650789 tp!650791))))

(assert (= (and b!2123843 ((_ is ElementMatch!5671) (_1!13618 (_1!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) b!2124183))

(assert (= (and b!2123843 ((_ is Concat!9973) (_1!13618 (_1!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) b!2124184))

(assert (= (and b!2123843 ((_ is Star!5671) (_1!13618 (_1!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) b!2124185))

(assert (= (and b!2123843 ((_ is Union!5671) (_1!13618 (_1!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) b!2124186))

(declare-fun e!1353417 () Bool)

(assert (=> b!2123843 (= tp!650667 e!1353417)))

(declare-fun b!2124187 () Bool)

(declare-fun e!1353416 () Bool)

(declare-fun tp!650797 () Bool)

(assert (=> b!2124187 (= e!1353416 tp!650797)))

(declare-fun setNonEmpty!15097 () Bool)

(declare-fun tp!650793 () Bool)

(declare-fun setElem!15097 () Context!2482)

(declare-fun setRes!15097 () Bool)

(assert (=> setNonEmpty!15097 (= setRes!15097 (and tp!650793 (inv!31334 setElem!15097) e!1353416))))

(declare-fun setRest!15097 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15097 (= (_2!13619 (h!29136 (t!196338 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15097 true) setRest!15097))))

(declare-fun setIsEmpty!15097 () Bool)

(assert (=> setIsEmpty!15097 setRes!15097))

(declare-fun b!2124188 () Bool)

(declare-fun e!1353418 () Bool)

(declare-fun tp!650795 () Bool)

(assert (=> b!2124188 (= e!1353418 tp!650795)))

(declare-fun tp!650796 () Bool)

(declare-fun tp!650794 () Bool)

(declare-fun b!2124189 () Bool)

(assert (=> b!2124189 (= e!1353417 (and tp!650796 (inv!31334 (_2!13618 (_1!13619 (h!29136 (t!196338 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))))) e!1353418 tp_is_empty!9493 setRes!15097 tp!650794))))

(declare-fun condSetEmpty!15097 () Bool)

(assert (=> b!2124189 (= condSetEmpty!15097 (= (_2!13619 (h!29136 (t!196338 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2124189 b!2124188))

(assert (= (and b!2124189 condSetEmpty!15097) setIsEmpty!15097))

(assert (= (and b!2124189 (not condSetEmpty!15097)) setNonEmpty!15097))

(assert (= setNonEmpty!15097 b!2124187))

(assert (= (and b!2123843 ((_ is Cons!23735) (t!196338 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110))))))))) b!2124189))

(declare-fun m!2577008 () Bool)

(assert (=> setNonEmpty!15097 m!2577008))

(declare-fun m!2577010 () Bool)

(assert (=> b!2124189 m!2577010))

(declare-fun e!1353419 () Bool)

(assert (=> b!2123840 (= tp!650664 e!1353419)))

(declare-fun b!2124192 () Bool)

(declare-fun tp!650800 () Bool)

(assert (=> b!2124192 (= e!1353419 tp!650800)))

(declare-fun b!2124190 () Bool)

(assert (=> b!2124190 (= e!1353419 tp_is_empty!9493)))

(declare-fun b!2124193 () Bool)

(declare-fun tp!650802 () Bool)

(declare-fun tp!650798 () Bool)

(assert (=> b!2124193 (= e!1353419 (and tp!650802 tp!650798))))

(declare-fun b!2124191 () Bool)

(declare-fun tp!650799 () Bool)

(declare-fun tp!650801 () Bool)

(assert (=> b!2124191 (= e!1353419 (and tp!650799 tp!650801))))

(assert (= (and b!2123840 ((_ is ElementMatch!5671) (_1!13618 (_1!13619 (h!29136 mapDefault!12005))))) b!2124190))

(assert (= (and b!2123840 ((_ is Concat!9973) (_1!13618 (_1!13619 (h!29136 mapDefault!12005))))) b!2124191))

(assert (= (and b!2123840 ((_ is Star!5671) (_1!13618 (_1!13619 (h!29136 mapDefault!12005))))) b!2124192))

(assert (= (and b!2123840 ((_ is Union!5671) (_1!13618 (_1!13619 (h!29136 mapDefault!12005))))) b!2124193))

(declare-fun e!1353421 () Bool)

(assert (=> b!2123840 (= tp!650662 e!1353421)))

(declare-fun b!2124194 () Bool)

(declare-fun e!1353420 () Bool)

(declare-fun tp!650807 () Bool)

(assert (=> b!2124194 (= e!1353420 tp!650807)))

(declare-fun setElem!15098 () Context!2482)

(declare-fun setNonEmpty!15098 () Bool)

(declare-fun setRes!15098 () Bool)

(declare-fun tp!650803 () Bool)

(assert (=> setNonEmpty!15098 (= setRes!15098 (and tp!650803 (inv!31334 setElem!15098) e!1353420))))

(declare-fun setRest!15098 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15098 (= (_2!13619 (h!29136 (t!196338 mapDefault!12005))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15098 true) setRest!15098))))

(declare-fun setIsEmpty!15098 () Bool)

(assert (=> setIsEmpty!15098 setRes!15098))

(declare-fun b!2124195 () Bool)

(declare-fun e!1353422 () Bool)

(declare-fun tp!650805 () Bool)

(assert (=> b!2124195 (= e!1353422 tp!650805)))

(declare-fun tp!650806 () Bool)

(declare-fun b!2124196 () Bool)

(declare-fun tp!650804 () Bool)

(assert (=> b!2124196 (= e!1353421 (and tp!650806 (inv!31334 (_2!13618 (_1!13619 (h!29136 (t!196338 mapDefault!12005))))) e!1353422 tp_is_empty!9493 setRes!15098 tp!650804))))

(declare-fun condSetEmpty!15098 () Bool)

(assert (=> b!2124196 (= condSetEmpty!15098 (= (_2!13619 (h!29136 (t!196338 mapDefault!12005))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2124196 b!2124195))

(assert (= (and b!2124196 condSetEmpty!15098) setIsEmpty!15098))

(assert (= (and b!2124196 (not condSetEmpty!15098)) setNonEmpty!15098))

(assert (= setNonEmpty!15098 b!2124194))

(assert (= (and b!2123840 ((_ is Cons!23735) (t!196338 mapDefault!12005))) b!2124196))

(declare-fun m!2577012 () Bool)

(assert (=> setNonEmpty!15098 m!2577012))

(declare-fun m!2577014 () Bool)

(assert (=> b!2124196 m!2577014))

(declare-fun b!2124197 () Bool)

(declare-fun e!1353423 () Bool)

(declare-fun tp!650808 () Bool)

(declare-fun tp!650809 () Bool)

(assert (=> b!2124197 (= e!1353423 (and tp!650808 tp!650809))))

(assert (=> b!2123868 (= tp!650702 e!1353423)))

(assert (= (and b!2123868 ((_ is Cons!23734) (exprs!1741 setElem!15073))) b!2124197))

(declare-fun b!2124198 () Bool)

(declare-fun e!1353424 () Bool)

(declare-fun setRes!15099 () Bool)

(assert (=> b!2124198 (= e!1353424 setRes!15099)))

(declare-fun condSetEmpty!15099 () Bool)

(assert (=> b!2124198 (= condSetEmpty!15099 (= (_2!13621 (h!29137 (t!196339 mapValue!12024))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15099 () Bool)

(assert (=> setIsEmpty!15099 setRes!15099))

(declare-fun setNonEmpty!15099 () Bool)

(assert (=> setNonEmpty!15099 (= setRes!15099 true)))

(declare-fun setElem!15099 () Context!2482)

(declare-fun setRest!15099 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15099 (= (_2!13621 (h!29137 (t!196339 mapValue!12024))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15099 true) setRest!15099))))

(assert (=> b!2123798 e!1353424))

(assert (= (and b!2124198 condSetEmpty!15099) setIsEmpty!15099))

(assert (= (and b!2124198 (not condSetEmpty!15099)) setNonEmpty!15099))

(assert (= (and b!2123798 ((_ is Cons!23736) (t!196339 mapValue!12024))) b!2124198))

(declare-fun condSetEmpty!15100 () Bool)

(assert (=> setNonEmpty!15060 (= condSetEmpty!15100 (= setRest!15060 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15100 () Bool)

(assert (=> setNonEmpty!15060 (= tp!650653 setRes!15100)))

(declare-fun setIsEmpty!15100 () Bool)

(assert (=> setIsEmpty!15100 setRes!15100))

(declare-fun setElem!15100 () Context!2482)

(declare-fun e!1353425 () Bool)

(declare-fun setNonEmpty!15100 () Bool)

(declare-fun tp!650811 () Bool)

(assert (=> setNonEmpty!15100 (= setRes!15100 (and tp!650811 (inv!31334 setElem!15100) e!1353425))))

(declare-fun setRest!15100 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15100 (= setRest!15060 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15100 true) setRest!15100))))

(declare-fun b!2124199 () Bool)

(declare-fun tp!650810 () Bool)

(assert (=> b!2124199 (= e!1353425 tp!650810)))

(assert (= (and setNonEmpty!15060 condSetEmpty!15100) setIsEmpty!15100))

(assert (= (and setNonEmpty!15060 (not condSetEmpty!15100)) setNonEmpty!15100))

(assert (= setNonEmpty!15100 b!2124199))

(declare-fun m!2577016 () Bool)

(assert (=> setNonEmpty!15100 m!2577016))

(declare-fun b!2124200 () Bool)

(declare-fun e!1353426 () Bool)

(declare-fun setRes!15101 () Bool)

(assert (=> b!2124200 (= e!1353426 setRes!15101)))

(declare-fun condSetEmpty!15101 () Bool)

(assert (=> b!2124200 (= condSetEmpty!15101 (= (_2!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15101 () Bool)

(assert (=> setIsEmpty!15101 setRes!15101))

(declare-fun setNonEmpty!15101 () Bool)

(assert (=> setNonEmpty!15101 (= setRes!15101 true)))

(declare-fun setElem!15101 () Context!2482)

(declare-fun setRest!15101 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15101 (= (_2!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15101 true) setRest!15101))))

(assert (=> b!2123652 e!1353426))

(assert (= (and b!2124200 condSetEmpty!15101) setIsEmpty!15101))

(assert (= (and b!2124200 (not condSetEmpty!15101)) setNonEmpty!15101))

(assert (= (and b!2123652 ((_ is Cons!23736) (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298))))))))) b!2124200))

(declare-fun b!2124201 () Bool)

(declare-fun e!1353427 () Bool)

(declare-fun setRes!15102 () Bool)

(assert (=> b!2124201 (= e!1353427 setRes!15102)))

(declare-fun condSetEmpty!15102 () Bool)

(assert (=> b!2124201 (= condSetEmpty!15102 (= (_2!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15102 () Bool)

(assert (=> setIsEmpty!15102 setRes!15102))

(declare-fun setNonEmpty!15102 () Bool)

(assert (=> setNonEmpty!15102 (= setRes!15102 true)))

(declare-fun setElem!15102 () Context!2482)

(declare-fun setRest!15102 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15102 (= (_2!13621 (h!29137 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15102 true) setRest!15102))))

(assert (=> b!2123652 e!1353427))

(assert (= (and b!2124201 condSetEmpty!15102) setIsEmpty!15102))

(assert (= (and b!2124201 (not condSetEmpty!15102)) setNonEmpty!15102))

(assert (= (and b!2123652 ((_ is Cons!23736) (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795298))))))))) b!2124201))

(declare-fun condSetEmpty!15103 () Bool)

(assert (=> setNonEmpty!15024 (= condSetEmpty!15103 (= setRest!15024 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15103 () Bool)

(assert (=> setNonEmpty!15024 setRes!15103))

(declare-fun setIsEmpty!15103 () Bool)

(assert (=> setIsEmpty!15103 setRes!15103))

(declare-fun setNonEmpty!15103 () Bool)

(assert (=> setNonEmpty!15103 (= setRes!15103 true)))

(declare-fun setElem!15103 () Context!2482)

(declare-fun setRest!15103 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15103 (= setRest!15024 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15103 true) setRest!15103))))

(assert (= (and setNonEmpty!15024 condSetEmpty!15103) setIsEmpty!15103))

(assert (= (and setNonEmpty!15024 (not condSetEmpty!15103)) setNonEmpty!15103))

(declare-fun e!1353430 () Bool)

(assert (=> b!2123761 (= tp!650579 e!1353430)))

(declare-fun b!2124202 () Bool)

(declare-fun e!1353428 () Bool)

(declare-fun tp!650814 () Bool)

(assert (=> b!2124202 (= e!1353428 tp!650814)))

(declare-fun b!2124203 () Bool)

(declare-fun e!1353429 () Bool)

(declare-fun tp!650812 () Bool)

(assert (=> b!2124203 (= e!1353429 tp!650812)))

(declare-fun setElem!15104 () Context!2482)

(declare-fun setRes!15104 () Bool)

(declare-fun tp!650813 () Bool)

(declare-fun setNonEmpty!15104 () Bool)

(assert (=> setNonEmpty!15104 (= setRes!15104 (and tp!650813 (inv!31334 setElem!15104) e!1353428))))

(declare-fun setRest!15104 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15104 (= (_2!13621 (h!29137 (t!196339 mapDefault!12021))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15104 true) setRest!15104))))

(declare-fun b!2124204 () Bool)

(declare-fun tp!650815 () Bool)

(assert (=> b!2124204 (= e!1353430 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 (t!196339 mapDefault!12021))))) e!1353429 tp_is_empty!9493 setRes!15104 tp!650815))))

(declare-fun condSetEmpty!15104 () Bool)

(assert (=> b!2124204 (= condSetEmpty!15104 (= (_2!13621 (h!29137 (t!196339 mapDefault!12021))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15104 () Bool)

(assert (=> setIsEmpty!15104 setRes!15104))

(assert (= b!2124204 b!2124203))

(assert (= (and b!2124204 condSetEmpty!15104) setIsEmpty!15104))

(assert (= (and b!2124204 (not condSetEmpty!15104)) setNonEmpty!15104))

(assert (= setNonEmpty!15104 b!2124202))

(assert (= (and b!2123761 ((_ is Cons!23736) (t!196339 mapDefault!12021))) b!2124204))

(declare-fun m!2577018 () Bool)

(assert (=> setNonEmpty!15104 m!2577018))

(declare-fun m!2577020 () Bool)

(assert (=> b!2124204 m!2577020))

(declare-fun condSetEmpty!15105 () Bool)

(assert (=> setNonEmpty!15048 (= condSetEmpty!15105 (= setRest!15047 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15105 () Bool)

(assert (=> setNonEmpty!15048 setRes!15105))

(declare-fun setIsEmpty!15105 () Bool)

(assert (=> setIsEmpty!15105 setRes!15105))

(declare-fun setNonEmpty!15105 () Bool)

(assert (=> setNonEmpty!15105 (= setRes!15105 true)))

(declare-fun setElem!15105 () Context!2482)

(declare-fun setRest!15105 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15105 (= setRest!15047 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15105 true) setRest!15105))))

(assert (= (and setNonEmpty!15048 condSetEmpty!15105) setIsEmpty!15105))

(assert (= (and setNonEmpty!15048 (not condSetEmpty!15105)) setNonEmpty!15105))

(declare-fun condSetEmpty!15106 () Bool)

(assert (=> setNonEmpty!15075 (= condSetEmpty!15106 (= setRest!15075 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15106 () Bool)

(assert (=> setNonEmpty!15075 (= tp!650707 setRes!15106)))

(declare-fun setIsEmpty!15106 () Bool)

(assert (=> setIsEmpty!15106 setRes!15106))

(declare-fun e!1353431 () Bool)

(declare-fun setNonEmpty!15106 () Bool)

(declare-fun tp!650817 () Bool)

(declare-fun setElem!15106 () Context!2482)

(assert (=> setNonEmpty!15106 (= setRes!15106 (and tp!650817 (inv!31334 setElem!15106) e!1353431))))

(declare-fun setRest!15106 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15106 (= setRest!15075 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15106 true) setRest!15106))))

(declare-fun b!2124205 () Bool)

(declare-fun tp!650816 () Bool)

(assert (=> b!2124205 (= e!1353431 tp!650816)))

(assert (= (and setNonEmpty!15075 condSetEmpty!15106) setIsEmpty!15106))

(assert (= (and setNonEmpty!15075 (not condSetEmpty!15106)) setNonEmpty!15106))

(assert (= setNonEmpty!15106 b!2124205))

(declare-fun m!2577022 () Bool)

(assert (=> setNonEmpty!15106 m!2577022))

(declare-fun setIsEmpty!15107 () Bool)

(declare-fun setRes!15107 () Bool)

(assert (=> setIsEmpty!15107 setRes!15107))

(declare-fun tp!650819 () Bool)

(declare-fun setNonEmpty!15107 () Bool)

(declare-fun e!1353433 () Bool)

(declare-fun setElem!15107 () Context!2482)

(assert (=> setNonEmpty!15107 (= setRes!15107 (and tp!650819 (inv!31334 setElem!15107) e!1353433))))

(declare-fun setRest!15107 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15107 (= (_1!13624 (_1!13625 (h!29140 (t!196342 (zeroValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130)))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15107 true) setRest!15107))))

(declare-fun e!1353432 () Bool)

(assert (=> b!2123869 (= tp!650703 e!1353432)))

(declare-fun b!2124207 () Bool)

(declare-fun tp!650820 () Bool)

(assert (=> b!2124207 (= e!1353433 tp!650820)))

(declare-fun b!2124206 () Bool)

(declare-fun tp!650818 () Bool)

(assert (=> b!2124206 (= e!1353432 (and setRes!15107 tp!650818))))

(declare-fun condSetEmpty!15107 () Bool)

(assert (=> b!2124206 (= condSetEmpty!15107 (= (_1!13624 (_1!13625 (h!29140 (t!196342 (zeroValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130)))))))))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2124206 condSetEmpty!15107) setIsEmpty!15107))

(assert (= (and b!2124206 (not condSetEmpty!15107)) setNonEmpty!15107))

(assert (= setNonEmpty!15107 b!2124207))

(assert (= (and b!2123869 ((_ is Cons!23739) (t!196342 (zeroValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))))) b!2124206))

(declare-fun m!2577024 () Bool)

(assert (=> setNonEmpty!15107 m!2577024))

(declare-fun b!2124208 () Bool)

(declare-fun e!1353434 () Bool)

(declare-fun tp!650821 () Bool)

(declare-fun tp!650822 () Bool)

(assert (=> b!2124208 (= e!1353434 (and tp!650821 tp!650822))))

(assert (=> b!2123782 (= tp!650600 e!1353434)))

(assert (= (and b!2123782 ((_ is Cons!23734) (exprs!1741 (_1!13620 (_1!13621 (h!29137 mapDefault!12007)))))) b!2124208))

(declare-fun tp!650824 () Bool)

(declare-fun b!2124209 () Bool)

(declare-fun tp!650825 () Bool)

(declare-fun e!1353436 () Bool)

(assert (=> b!2124209 (= e!1353436 (and (inv!31333 (left!18357 (left!18357 (c!339823 totalInput!886)))) tp!650825 (inv!31333 (right!18687 (left!18357 (c!339823 totalInput!886)))) tp!650824))))

(declare-fun b!2124211 () Bool)

(declare-fun e!1353435 () Bool)

(declare-fun tp!650823 () Bool)

(assert (=> b!2124211 (= e!1353435 tp!650823)))

(declare-fun b!2124210 () Bool)

(assert (=> b!2124210 (= e!1353436 (and (inv!31337 (xs!10751 (left!18357 (c!339823 totalInput!886)))) e!1353435))))

(assert (=> b!2123778 (= tp!650599 (and (inv!31333 (left!18357 (c!339823 totalInput!886))) e!1353436))))

(assert (= (and b!2123778 ((_ is Node!7809) (left!18357 (c!339823 totalInput!886)))) b!2124209))

(assert (= b!2124210 b!2124211))

(assert (= (and b!2123778 ((_ is Leaf!11412) (left!18357 (c!339823 totalInput!886)))) b!2124210))

(declare-fun m!2577026 () Bool)

(assert (=> b!2124209 m!2577026))

(declare-fun m!2577028 () Bool)

(assert (=> b!2124209 m!2577028))

(declare-fun m!2577030 () Bool)

(assert (=> b!2124210 m!2577030))

(assert (=> b!2123778 m!2576507))

(declare-fun e!1353438 () Bool)

(declare-fun tp!650827 () Bool)

(declare-fun b!2124212 () Bool)

(declare-fun tp!650828 () Bool)

(assert (=> b!2124212 (= e!1353438 (and (inv!31333 (left!18357 (right!18687 (c!339823 totalInput!886)))) tp!650828 (inv!31333 (right!18687 (right!18687 (c!339823 totalInput!886)))) tp!650827))))

(declare-fun b!2124214 () Bool)

(declare-fun e!1353437 () Bool)

(declare-fun tp!650826 () Bool)

(assert (=> b!2124214 (= e!1353437 tp!650826)))

(declare-fun b!2124213 () Bool)

(assert (=> b!2124213 (= e!1353438 (and (inv!31337 (xs!10751 (right!18687 (c!339823 totalInput!886)))) e!1353437))))

(assert (=> b!2123778 (= tp!650598 (and (inv!31333 (right!18687 (c!339823 totalInput!886))) e!1353438))))

(assert (= (and b!2123778 ((_ is Node!7809) (right!18687 (c!339823 totalInput!886)))) b!2124212))

(assert (= b!2124213 b!2124214))

(assert (= (and b!2123778 ((_ is Leaf!11412) (right!18687 (c!339823 totalInput!886)))) b!2124213))

(declare-fun m!2577032 () Bool)

(assert (=> b!2124212 m!2577032))

(declare-fun m!2577034 () Bool)

(assert (=> b!2124212 m!2577034))

(declare-fun m!2577036 () Bool)

(assert (=> b!2124213 m!2577036))

(assert (=> b!2123778 m!2576509))

(declare-fun condSetEmpty!15108 () Bool)

(assert (=> setNonEmpty!15064 (= condSetEmpty!15108 (= setRest!15064 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15108 () Bool)

(assert (=> setNonEmpty!15064 setRes!15108))

(declare-fun setIsEmpty!15108 () Bool)

(assert (=> setIsEmpty!15108 setRes!15108))

(declare-fun setNonEmpty!15108 () Bool)

(assert (=> setNonEmpty!15108 (= setRes!15108 true)))

(declare-fun setElem!15108 () Context!2482)

(declare-fun setRest!15108 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15108 (= setRest!15064 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15108 true) setRest!15108))))

(assert (= (and setNonEmpty!15064 condSetEmpty!15108) setIsEmpty!15108))

(assert (= (and setNonEmpty!15064 (not condSetEmpty!15108)) setNonEmpty!15108))

(declare-fun setIsEmpty!15109 () Bool)

(declare-fun setRes!15109 () Bool)

(assert (=> setIsEmpty!15109 setRes!15109))

(declare-fun setNonEmpty!15109 () Bool)

(declare-fun e!1353440 () Bool)

(declare-fun tp!650830 () Bool)

(declare-fun setElem!15109 () Context!2482)

(assert (=> setNonEmpty!15109 (= setRes!15109 (and tp!650830 (inv!31334 setElem!15109) e!1353440))))

(declare-fun setRest!15109 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15109 (= (_1!13624 (_1!13625 (h!29140 (t!196342 mapDefault!12006)))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15109 true) setRest!15109))))

(declare-fun e!1353439 () Bool)

(assert (=> b!2123740 (= tp!650551 e!1353439)))

(declare-fun b!2124216 () Bool)

(declare-fun tp!650831 () Bool)

(assert (=> b!2124216 (= e!1353440 tp!650831)))

(declare-fun b!2124215 () Bool)

(declare-fun tp!650829 () Bool)

(assert (=> b!2124215 (= e!1353439 (and setRes!15109 tp!650829))))

(declare-fun condSetEmpty!15109 () Bool)

(assert (=> b!2124215 (= condSetEmpty!15109 (= (_1!13624 (_1!13625 (h!29140 (t!196342 mapDefault!12006)))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2124215 condSetEmpty!15109) setIsEmpty!15109))

(assert (= (and b!2124215 (not condSetEmpty!15109)) setNonEmpty!15109))

(assert (= setNonEmpty!15109 b!2124216))

(assert (= (and b!2123740 ((_ is Cons!23739) (t!196342 mapDefault!12006))) b!2124215))

(declare-fun m!2577038 () Bool)

(assert (=> setNonEmpty!15109 m!2577038))

(declare-fun condSetEmpty!15110 () Bool)

(assert (=> setNonEmpty!15011 (= condSetEmpty!15110 (= setRest!15011 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15110 () Bool)

(assert (=> setNonEmpty!15011 setRes!15110))

(declare-fun setIsEmpty!15110 () Bool)

(assert (=> setIsEmpty!15110 setRes!15110))

(declare-fun setNonEmpty!15110 () Bool)

(assert (=> setNonEmpty!15110 (= setRes!15110 true)))

(declare-fun setElem!15110 () Context!2482)

(declare-fun setRest!15110 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15110 (= setRest!15011 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15110 true) setRest!15110))))

(assert (= (and setNonEmpty!15011 condSetEmpty!15110) setIsEmpty!15110))

(assert (= (and setNonEmpty!15011 (not condSetEmpty!15110)) setNonEmpty!15110))

(declare-fun condSetEmpty!15111 () Bool)

(assert (=> setNonEmpty!15025 (= condSetEmpty!15111 (= setRest!15025 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15111 () Bool)

(assert (=> setNonEmpty!15025 setRes!15111))

(declare-fun setIsEmpty!15111 () Bool)

(assert (=> setIsEmpty!15111 setRes!15111))

(declare-fun setNonEmpty!15111 () Bool)

(assert (=> setNonEmpty!15111 (= setRes!15111 true)))

(declare-fun setElem!15111 () Context!2482)

(declare-fun setRest!15111 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15111 (= setRest!15025 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15111 true) setRest!15111))))

(assert (= (and setNonEmpty!15025 condSetEmpty!15111) setIsEmpty!15111))

(assert (= (and setNonEmpty!15025 (not condSetEmpty!15111)) setNonEmpty!15111))

(declare-fun b!2124217 () Bool)

(declare-fun e!1353441 () Bool)

(declare-fun tp!650832 () Bool)

(declare-fun tp!650833 () Bool)

(assert (=> b!2124217 (= e!1353441 (and tp!650832 tp!650833))))

(assert (=> b!2123790 (= tp!650608 e!1353441)))

(assert (= (and b!2123790 ((_ is Cons!23734) (exprs!1741 setElem!15042))) b!2124217))

(declare-fun b!2124218 () Bool)

(declare-fun e!1353442 () Bool)

(declare-fun tp!650834 () Bool)

(declare-fun tp!650835 () Bool)

(assert (=> b!2124218 (= e!1353442 (and tp!650834 tp!650835))))

(assert (=> b!2123717 (= tp!650543 e!1353442)))

(assert (= (and b!2123717 ((_ is Cons!23734) (exprs!1741 setElem!15015))) b!2124218))

(declare-fun setIsEmpty!15112 () Bool)

(declare-fun setRes!15112 () Bool)

(assert (=> setIsEmpty!15112 setRes!15112))

(declare-fun e!1353444 () Bool)

(declare-fun setElem!15112 () Context!2482)

(declare-fun tp!650837 () Bool)

(declare-fun setNonEmpty!15112 () Bool)

(assert (=> setNonEmpty!15112 (= setRes!15112 (and tp!650837 (inv!31334 setElem!15112) e!1353444))))

(declare-fun setRest!15112 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15112 (= (_1!13624 (_1!13625 (h!29140 (t!196342 mapValue!12030)))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15112 true) setRest!15112))))

(declare-fun e!1353443 () Bool)

(assert (=> b!2123863 (= tp!650693 e!1353443)))

(declare-fun b!2124220 () Bool)

(declare-fun tp!650838 () Bool)

(assert (=> b!2124220 (= e!1353444 tp!650838)))

(declare-fun b!2124219 () Bool)

(declare-fun tp!650836 () Bool)

(assert (=> b!2124219 (= e!1353443 (and setRes!15112 tp!650836))))

(declare-fun condSetEmpty!15112 () Bool)

(assert (=> b!2124219 (= condSetEmpty!15112 (= (_1!13624 (_1!13625 (h!29140 (t!196342 mapValue!12030)))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2124219 condSetEmpty!15112) setIsEmpty!15112))

(assert (= (and b!2124219 (not condSetEmpty!15112)) setNonEmpty!15112))

(assert (= setNonEmpty!15112 b!2124220))

(assert (= (and b!2123863 ((_ is Cons!23739) (t!196342 mapValue!12030))) b!2124219))

(declare-fun m!2577040 () Bool)

(assert (=> setNonEmpty!15112 m!2577040))

(declare-fun e!1353445 () Bool)

(assert (=> b!2123819 (= tp!650637 e!1353445)))

(declare-fun b!2124223 () Bool)

(declare-fun tp!650841 () Bool)

(assert (=> b!2124223 (= e!1353445 tp!650841)))

(declare-fun b!2124221 () Bool)

(assert (=> b!2124221 (= e!1353445 tp_is_empty!9493)))

(declare-fun b!2124224 () Bool)

(declare-fun tp!650843 () Bool)

(declare-fun tp!650839 () Bool)

(assert (=> b!2124224 (= e!1353445 (and tp!650843 tp!650839))))

(declare-fun b!2124222 () Bool)

(declare-fun tp!650840 () Bool)

(declare-fun tp!650842 () Bool)

(assert (=> b!2124222 (= e!1353445 (and tp!650840 tp!650842))))

(assert (= (and b!2123819 ((_ is ElementMatch!5671) (_1!13618 (_1!13619 (h!29136 mapValue!12027))))) b!2124221))

(assert (= (and b!2123819 ((_ is Concat!9973) (_1!13618 (_1!13619 (h!29136 mapValue!12027))))) b!2124222))

(assert (= (and b!2123819 ((_ is Star!5671) (_1!13618 (_1!13619 (h!29136 mapValue!12027))))) b!2124223))

(assert (= (and b!2123819 ((_ is Union!5671) (_1!13618 (_1!13619 (h!29136 mapValue!12027))))) b!2124224))

(declare-fun e!1353447 () Bool)

(assert (=> b!2123819 (= tp!650640 e!1353447)))

(declare-fun b!2124225 () Bool)

(declare-fun e!1353446 () Bool)

(declare-fun tp!650848 () Bool)

(assert (=> b!2124225 (= e!1353446 tp!650848)))

(declare-fun setRes!15113 () Bool)

(declare-fun tp!650844 () Bool)

(declare-fun setElem!15113 () Context!2482)

(declare-fun setNonEmpty!15113 () Bool)

(assert (=> setNonEmpty!15113 (= setRes!15113 (and tp!650844 (inv!31334 setElem!15113) e!1353446))))

(declare-fun setRest!15113 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15113 (= (_2!13619 (h!29136 (t!196338 mapValue!12027))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15113 true) setRest!15113))))

(declare-fun setIsEmpty!15113 () Bool)

(assert (=> setIsEmpty!15113 setRes!15113))

(declare-fun b!2124226 () Bool)

(declare-fun e!1353448 () Bool)

(declare-fun tp!650846 () Bool)

(assert (=> b!2124226 (= e!1353448 tp!650846)))

(declare-fun tp!650847 () Bool)

(declare-fun b!2124227 () Bool)

(declare-fun tp!650845 () Bool)

(assert (=> b!2124227 (= e!1353447 (and tp!650847 (inv!31334 (_2!13618 (_1!13619 (h!29136 (t!196338 mapValue!12027))))) e!1353448 tp_is_empty!9493 setRes!15113 tp!650845))))

(declare-fun condSetEmpty!15113 () Bool)

(assert (=> b!2124227 (= condSetEmpty!15113 (= (_2!13619 (h!29136 (t!196338 mapValue!12027))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2124227 b!2124226))

(assert (= (and b!2124227 condSetEmpty!15113) setIsEmpty!15113))

(assert (= (and b!2124227 (not condSetEmpty!15113)) setNonEmpty!15113))

(assert (= setNonEmpty!15113 b!2124225))

(assert (= (and b!2123819 ((_ is Cons!23735) (t!196338 mapValue!12027))) b!2124227))

(declare-fun m!2577042 () Bool)

(assert (=> setNonEmpty!15113 m!2577042))

(declare-fun m!2577044 () Bool)

(assert (=> b!2124227 m!2577044))

(declare-fun b!2124228 () Bool)

(declare-fun e!1353449 () Bool)

(declare-fun tp!650849 () Bool)

(declare-fun tp!650850 () Bool)

(assert (=> b!2124228 (= e!1353449 (and tp!650849 tp!650850))))

(assert (=> b!2123766 (= tp!650585 e!1353449)))

(assert (= (and b!2123766 ((_ is Cons!23734) (exprs!1741 setElem!15034))) b!2124228))

(declare-fun b!2124229 () Bool)

(declare-fun e!1353450 () Bool)

(declare-fun setRes!15115 () Bool)

(assert (=> b!2124229 (= e!1353450 setRes!15115)))

(declare-fun condSetEmpty!15115 () Bool)

(declare-fun mapDefault!12036 () List!23819)

(assert (=> b!2124229 (= condSetEmpty!15115 (= (_2!13619 (h!29136 mapDefault!12036)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15114 () Bool)

(assert (=> setIsEmpty!15114 setRes!15115))

(declare-fun setNonEmpty!15114 () Bool)

(assert (=> setNonEmpty!15114 (= setRes!15115 true)))

(declare-fun setElem!15115 () Context!2482)

(declare-fun setRest!15114 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15114 (= (_2!13619 (h!29136 mapDefault!12036)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15115 true) setRest!15114))))

(declare-fun setIsEmpty!15115 () Bool)

(declare-fun setRes!15114 () Bool)

(assert (=> setIsEmpty!15115 setRes!15114))

(declare-fun mapIsEmpty!12036 () Bool)

(declare-fun mapRes!12036 () Bool)

(assert (=> mapIsEmpty!12036 mapRes!12036))

(declare-fun mapNonEmpty!12036 () Bool)

(declare-fun e!1353451 () Bool)

(assert (=> mapNonEmpty!12036 (= mapRes!12036 e!1353451)))

(declare-fun mapRest!12036 () (Array (_ BitVec 32) List!23819))

(declare-fun mapKey!12036 () (_ BitVec 32))

(declare-fun mapValue!12036 () List!23819)

(assert (=> mapNonEmpty!12036 (= mapRest!12018 (store mapRest!12036 mapKey!12036 mapValue!12036))))

(declare-fun b!2124230 () Bool)

(assert (=> b!2124230 (= e!1353451 setRes!15114)))

(declare-fun condSetEmpty!15114 () Bool)

(assert (=> b!2124230 (= condSetEmpty!15114 (= (_2!13619 (h!29136 mapValue!12036)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setNonEmpty!15115 () Bool)

(assert (=> setNonEmpty!15115 (= setRes!15114 true)))

(declare-fun setElem!15114 () Context!2482)

(declare-fun setRest!15115 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15115 (= (_2!13619 (h!29136 mapValue!12036)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15114 true) setRest!15115))))

(declare-fun condMapEmpty!12036 () Bool)

(assert (=> mapNonEmpty!12018 (= condMapEmpty!12036 (= mapRest!12018 ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12036)))))

(assert (=> mapNonEmpty!12018 (and e!1353450 mapRes!12036)))

(assert (= (and mapNonEmpty!12018 condMapEmpty!12036) mapIsEmpty!12036))

(assert (= (and mapNonEmpty!12018 (not condMapEmpty!12036)) mapNonEmpty!12036))

(assert (= (and b!2124230 condSetEmpty!15114) setIsEmpty!15115))

(assert (= (and b!2124230 (not condSetEmpty!15114)) setNonEmpty!15115))

(assert (= (and mapNonEmpty!12036 ((_ is Cons!23735) mapValue!12036)) b!2124230))

(assert (= (and b!2124229 condSetEmpty!15115) setIsEmpty!15114))

(assert (= (and b!2124229 (not condSetEmpty!15115)) setNonEmpty!15114))

(assert (= (and mapNonEmpty!12018 ((_ is Cons!23735) mapDefault!12036)) b!2124229))

(declare-fun m!2577046 () Bool)

(assert (=> mapNonEmpty!12036 m!2577046))

(declare-fun condSetEmpty!15116 () Bool)

(assert (=> setNonEmpty!15035 (= condSetEmpty!15116 (= setRest!15035 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15116 () Bool)

(assert (=> setNonEmpty!15035 (= tp!650588 setRes!15116)))

(declare-fun setIsEmpty!15116 () Bool)

(assert (=> setIsEmpty!15116 setRes!15116))

(declare-fun tp!650852 () Bool)

(declare-fun e!1353452 () Bool)

(declare-fun setNonEmpty!15116 () Bool)

(declare-fun setElem!15116 () Context!2482)

(assert (=> setNonEmpty!15116 (= setRes!15116 (and tp!650852 (inv!31334 setElem!15116) e!1353452))))

(declare-fun setRest!15116 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15116 (= setRest!15035 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15116 true) setRest!15116))))

(declare-fun b!2124231 () Bool)

(declare-fun tp!650851 () Bool)

(assert (=> b!2124231 (= e!1353452 tp!650851)))

(assert (= (and setNonEmpty!15035 condSetEmpty!15116) setIsEmpty!15116))

(assert (= (and setNonEmpty!15035 (not condSetEmpty!15116)) setNonEmpty!15116))

(assert (= setNonEmpty!15116 b!2124231))

(declare-fun m!2577048 () Bool)

(assert (=> setNonEmpty!15116 m!2577048))

(declare-fun b!2124232 () Bool)

(declare-fun e!1353453 () Bool)

(declare-fun tp!650853 () Bool)

(declare-fun tp!650854 () Bool)

(assert (=> b!2124232 (= e!1353453 (and tp!650853 tp!650854))))

(assert (=> b!2123845 (= tp!650673 e!1353453)))

(assert (= (and b!2123845 ((_ is Cons!23734) (exprs!1741 (_2!13618 (_1!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))))))) b!2124232))

(declare-fun b!2124233 () Bool)

(declare-fun e!1353454 () Bool)

(declare-fun tp!650855 () Bool)

(declare-fun tp!650856 () Bool)

(assert (=> b!2124233 (= e!1353454 (and tp!650855 tp!650856))))

(assert (=> b!2123842 (= tp!650668 e!1353454)))

(assert (= (and b!2123842 ((_ is Cons!23734) (exprs!1741 (_2!13618 (_1!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 cacheDown!1110)))))))))))) b!2124233))

(declare-fun b!2124234 () Bool)

(declare-fun e!1353455 () Bool)

(declare-fun tp!650857 () Bool)

(declare-fun tp!650858 () Bool)

(assert (=> b!2124234 (= e!1353455 (and tp!650857 tp!650858))))

(assert (=> b!2123839 (= tp!650663 e!1353455)))

(assert (= (and b!2123839 ((_ is Cons!23734) (exprs!1741 (_2!13618 (_1!13619 (h!29136 mapDefault!12005)))))) b!2124234))

(declare-fun condSetEmpty!15117 () Bool)

(assert (=> setNonEmpty!15065 (= condSetEmpty!15117 (= setRest!15065 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15117 () Bool)

(assert (=> setNonEmpty!15065 setRes!15117))

(declare-fun setIsEmpty!15117 () Bool)

(assert (=> setIsEmpty!15117 setRes!15117))

(declare-fun setNonEmpty!15117 () Bool)

(assert (=> setNonEmpty!15117 (= setRes!15117 true)))

(declare-fun setElem!15117 () Context!2482)

(declare-fun setRest!15117 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15117 (= setRest!15065 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15117 true) setRest!15117))))

(assert (= (and setNonEmpty!15065 condSetEmpty!15117) setIsEmpty!15117))

(assert (= (and setNonEmpty!15065 (not condSetEmpty!15117)) setNonEmpty!15117))

(declare-fun e!1353458 () Bool)

(assert (=> b!2123716 (= tp!650540 e!1353458)))

(declare-fun b!2124235 () Bool)

(declare-fun e!1353456 () Bool)

(declare-fun tp!650861 () Bool)

(assert (=> b!2124235 (= e!1353456 tp!650861)))

(declare-fun b!2124236 () Bool)

(declare-fun e!1353457 () Bool)

(declare-fun tp!650859 () Bool)

(assert (=> b!2124236 (= e!1353457 tp!650859)))

(declare-fun tp!650860 () Bool)

(declare-fun setNonEmpty!15118 () Bool)

(declare-fun setRes!15118 () Bool)

(declare-fun setElem!15118 () Context!2482)

(assert (=> setNonEmpty!15118 (= setRes!15118 (and tp!650860 (inv!31334 setElem!15118) e!1353456))))

(declare-fun setRest!15118 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15118 (= (_2!13621 (h!29137 (t!196339 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15118 true) setRest!15118))))

(declare-fun b!2124237 () Bool)

(declare-fun tp!650862 () Bool)

(assert (=> b!2124237 (= e!1353458 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 (t!196339 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))))))) e!1353457 tp_is_empty!9493 setRes!15118 tp!650862))))

(declare-fun condSetEmpty!15118 () Bool)

(assert (=> b!2124237 (= condSetEmpty!15118 (= (_2!13621 (h!29137 (t!196339 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15118 () Bool)

(assert (=> setIsEmpty!15118 setRes!15118))

(assert (= b!2124237 b!2124236))

(assert (= (and b!2124237 condSetEmpty!15118) setIsEmpty!15118))

(assert (= (and b!2124237 (not condSetEmpty!15118)) setNonEmpty!15118))

(assert (= setNonEmpty!15118 b!2124235))

(assert (= (and b!2123716 ((_ is Cons!23736) (t!196339 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))))) b!2124237))

(declare-fun m!2577050 () Bool)

(assert (=> setNonEmpty!15118 m!2577050))

(declare-fun m!2577052 () Bool)

(assert (=> b!2124237 m!2577052))

(declare-fun condSetEmpty!15119 () Bool)

(assert (=> setNonEmpty!15073 (= condSetEmpty!15119 (= setRest!15073 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15119 () Bool)

(assert (=> setNonEmpty!15073 (= tp!650701 setRes!15119)))

(declare-fun setIsEmpty!15119 () Bool)

(assert (=> setIsEmpty!15119 setRes!15119))

(declare-fun setNonEmpty!15119 () Bool)

(declare-fun tp!650864 () Bool)

(declare-fun setElem!15119 () Context!2482)

(declare-fun e!1353459 () Bool)

(assert (=> setNonEmpty!15119 (= setRes!15119 (and tp!650864 (inv!31334 setElem!15119) e!1353459))))

(declare-fun setRest!15119 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15119 (= setRest!15073 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15119 true) setRest!15119))))

(declare-fun b!2124238 () Bool)

(declare-fun tp!650863 () Bool)

(assert (=> b!2124238 (= e!1353459 tp!650863)))

(assert (= (and setNonEmpty!15073 condSetEmpty!15119) setIsEmpty!15119))

(assert (= (and setNonEmpty!15073 (not condSetEmpty!15119)) setNonEmpty!15119))

(assert (= setNonEmpty!15119 b!2124238))

(declare-fun m!2577054 () Bool)

(assert (=> setNonEmpty!15119 m!2577054))

(declare-fun condSetEmpty!15120 () Bool)

(assert (=> setNonEmpty!15057 (= condSetEmpty!15120 (= setRest!15057 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15120 () Bool)

(assert (=> setNonEmpty!15057 (= tp!650638 setRes!15120)))

(declare-fun setIsEmpty!15120 () Bool)

(assert (=> setIsEmpty!15120 setRes!15120))

(declare-fun tp!650866 () Bool)

(declare-fun setElem!15120 () Context!2482)

(declare-fun e!1353460 () Bool)

(declare-fun setNonEmpty!15120 () Bool)

(assert (=> setNonEmpty!15120 (= setRes!15120 (and tp!650866 (inv!31334 setElem!15120) e!1353460))))

(declare-fun setRest!15120 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15120 (= setRest!15057 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15120 true) setRest!15120))))

(declare-fun b!2124239 () Bool)

(declare-fun tp!650865 () Bool)

(assert (=> b!2124239 (= e!1353460 tp!650865)))

(assert (= (and setNonEmpty!15057 condSetEmpty!15120) setIsEmpty!15120))

(assert (= (and setNonEmpty!15057 (not condSetEmpty!15120)) setNonEmpty!15120))

(assert (= setNonEmpty!15120 b!2124239))

(declare-fun m!2577056 () Bool)

(assert (=> setNonEmpty!15120 m!2577056))

(declare-fun b!2124240 () Bool)

(declare-fun e!1353461 () Bool)

(declare-fun tp!650867 () Bool)

(declare-fun tp!650868 () Bool)

(assert (=> b!2124240 (= e!1353461 (and tp!650867 tp!650868))))

(assert (=> b!2123832 (= tp!650657 e!1353461)))

(assert (= (and b!2123832 ((_ is Cons!23734) (exprs!1741 setElem!15060))) b!2124240))

(declare-fun b!2124241 () Bool)

(declare-fun e!1353462 () Bool)

(declare-fun tp!650869 () Bool)

(declare-fun tp!650870 () Bool)

(assert (=> b!2124241 (= e!1353462 (and tp!650869 tp!650870))))

(assert (=> b!2123823 (= tp!650633 e!1353462)))

(assert (= (and b!2123823 ((_ is Cons!23734) (exprs!1741 (_2!13618 (_1!13619 (h!29136 mapDefault!12027)))))) b!2124241))

(declare-fun b!2124242 () Bool)

(declare-fun e!1353463 () Bool)

(declare-fun setRes!15121 () Bool)

(assert (=> b!2124242 (= e!1353463 setRes!15121)))

(declare-fun condSetEmpty!15121 () Bool)

(assert (=> b!2124242 (= condSetEmpty!15121 (= (_2!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15121 () Bool)

(assert (=> setIsEmpty!15121 setRes!15121))

(declare-fun setNonEmpty!15121 () Bool)

(assert (=> setNonEmpty!15121 (= setRes!15121 true)))

(declare-fun setElem!15121 () Context!2482)

(declare-fun setRest!15121 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15121 (= (_2!13619 (h!29136 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15121 true) setRest!15121))))

(assert (=> b!2123651 e!1353463))

(assert (= (and b!2124242 condSetEmpty!15121) setIsEmpty!15121))

(assert (= (and b!2124242 (not condSetEmpty!15121)) setNonEmpty!15121))

(assert (= (and b!2123651 ((_ is Cons!23735) (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298))))))))) b!2124242))

(declare-fun b!2124243 () Bool)

(declare-fun e!1353464 () Bool)

(declare-fun setRes!15122 () Bool)

(assert (=> b!2124243 (= e!1353464 setRes!15122)))

(declare-fun condSetEmpty!15122 () Bool)

(assert (=> b!2124243 (= condSetEmpty!15122 (= (_2!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15122 () Bool)

(assert (=> setIsEmpty!15122 setRes!15122))

(declare-fun setNonEmpty!15122 () Bool)

(assert (=> setNonEmpty!15122 (= setRes!15122 true)))

(declare-fun setElem!15122 () Context!2482)

(declare-fun setRest!15122 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15122 (= (_2!13619 (h!29136 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15122 true) setRest!15122))))

(assert (=> b!2123651 e!1353464))

(assert (= (and b!2124243 condSetEmpty!15122) setIsEmpty!15122))

(assert (= (and b!2124243 (not condSetEmpty!15122)) setNonEmpty!15122))

(assert (= (and b!2123651 ((_ is Cons!23735) (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795298))))))))) b!2124243))

(declare-fun condSetEmpty!15123 () Bool)

(assert (=> setNonEmpty!15034 (= condSetEmpty!15123 (= setRest!15034 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15123 () Bool)

(assert (=> setNonEmpty!15034 (= tp!650580 setRes!15123)))

(declare-fun setIsEmpty!15123 () Bool)

(assert (=> setIsEmpty!15123 setRes!15123))

(declare-fun setElem!15123 () Context!2482)

(declare-fun setNonEmpty!15123 () Bool)

(declare-fun tp!650872 () Bool)

(declare-fun e!1353465 () Bool)

(assert (=> setNonEmpty!15123 (= setRes!15123 (and tp!650872 (inv!31334 setElem!15123) e!1353465))))

(declare-fun setRest!15123 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15123 (= setRest!15034 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15123 true) setRest!15123))))

(declare-fun b!2124244 () Bool)

(declare-fun tp!650871 () Bool)

(assert (=> b!2124244 (= e!1353465 tp!650871)))

(assert (= (and setNonEmpty!15034 condSetEmpty!15123) setIsEmpty!15123))

(assert (= (and setNonEmpty!15034 (not condSetEmpty!15123)) setNonEmpty!15123))

(assert (= setNonEmpty!15123 b!2124244))

(declare-fun m!2577058 () Bool)

(assert (=> setNonEmpty!15123 m!2577058))

(declare-fun condSetEmpty!15124 () Bool)

(assert (=> setNonEmpty!15066 (= condSetEmpty!15124 (= setRest!15066 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15124 () Bool)

(assert (=> setNonEmpty!15066 setRes!15124))

(declare-fun setIsEmpty!15124 () Bool)

(assert (=> setIsEmpty!15124 setRes!15124))

(declare-fun setNonEmpty!15124 () Bool)

(assert (=> setNonEmpty!15124 (= setRes!15124 true)))

(declare-fun setElem!15124 () Context!2482)

(declare-fun setRest!15124 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15124 (= setRest!15066 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15124 true) setRest!15124))))

(assert (= (and setNonEmpty!15066 condSetEmpty!15124) setIsEmpty!15124))

(assert (= (and setNonEmpty!15066 (not condSetEmpty!15124)) setNonEmpty!15124))

(declare-fun b!2124245 () Bool)

(declare-fun e!1353466 () Bool)

(declare-fun tp!650873 () Bool)

(declare-fun tp!650874 () Bool)

(assert (=> b!2124245 (= e!1353466 (and tp!650873 tp!650874))))

(assert (=> b!2123781 (= tp!650602 e!1353466)))

(assert (= (and b!2123781 ((_ is Cons!23734) (exprs!1741 setElem!15036))) b!2124245))

(declare-fun e!1353467 () Bool)

(assert (=> b!2123834 (= tp!650656 e!1353467)))

(declare-fun b!2124248 () Bool)

(declare-fun tp!650877 () Bool)

(assert (=> b!2124248 (= e!1353467 tp!650877)))

(declare-fun b!2124246 () Bool)

(assert (=> b!2124246 (= e!1353467 tp_is_empty!9493)))

(declare-fun b!2124249 () Bool)

(declare-fun tp!650879 () Bool)

(declare-fun tp!650875 () Bool)

(assert (=> b!2124249 (= e!1353467 (and tp!650879 tp!650875))))

(declare-fun b!2124247 () Bool)

(declare-fun tp!650876 () Bool)

(declare-fun tp!650878 () Bool)

(assert (=> b!2124247 (= e!1353467 (and tp!650876 tp!650878))))

(assert (= (and b!2123834 ((_ is ElementMatch!5671) (_1!13618 (_1!13619 (h!29136 mapValue!12006))))) b!2124246))

(assert (= (and b!2123834 ((_ is Concat!9973) (_1!13618 (_1!13619 (h!29136 mapValue!12006))))) b!2124247))

(assert (= (and b!2123834 ((_ is Star!5671) (_1!13618 (_1!13619 (h!29136 mapValue!12006))))) b!2124248))

(assert (= (and b!2123834 ((_ is Union!5671) (_1!13618 (_1!13619 (h!29136 mapValue!12006))))) b!2124249))

(declare-fun e!1353469 () Bool)

(assert (=> b!2123834 (= tp!650654 e!1353469)))

(declare-fun b!2124250 () Bool)

(declare-fun e!1353468 () Bool)

(declare-fun tp!650884 () Bool)

(assert (=> b!2124250 (= e!1353468 tp!650884)))

(declare-fun setNonEmpty!15125 () Bool)

(declare-fun setRes!15125 () Bool)

(declare-fun tp!650880 () Bool)

(declare-fun setElem!15125 () Context!2482)

(assert (=> setNonEmpty!15125 (= setRes!15125 (and tp!650880 (inv!31334 setElem!15125) e!1353468))))

(declare-fun setRest!15125 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15125 (= (_2!13619 (h!29136 (t!196338 mapValue!12006))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15125 true) setRest!15125))))

(declare-fun setIsEmpty!15125 () Bool)

(assert (=> setIsEmpty!15125 setRes!15125))

(declare-fun b!2124251 () Bool)

(declare-fun e!1353470 () Bool)

(declare-fun tp!650882 () Bool)

(assert (=> b!2124251 (= e!1353470 tp!650882)))

(declare-fun tp!650881 () Bool)

(declare-fun b!2124252 () Bool)

(declare-fun tp!650883 () Bool)

(assert (=> b!2124252 (= e!1353469 (and tp!650883 (inv!31334 (_2!13618 (_1!13619 (h!29136 (t!196338 mapValue!12006))))) e!1353470 tp_is_empty!9493 setRes!15125 tp!650881))))

(declare-fun condSetEmpty!15125 () Bool)

(assert (=> b!2124252 (= condSetEmpty!15125 (= (_2!13619 (h!29136 (t!196338 mapValue!12006))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2124252 b!2124251))

(assert (= (and b!2124252 condSetEmpty!15125) setIsEmpty!15125))

(assert (= (and b!2124252 (not condSetEmpty!15125)) setNonEmpty!15125))

(assert (= setNonEmpty!15125 b!2124250))

(assert (= (and b!2123834 ((_ is Cons!23735) (t!196338 mapValue!12006))) b!2124252))

(declare-fun m!2577060 () Bool)

(assert (=> setNonEmpty!15125 m!2577060))

(declare-fun m!2577062 () Bool)

(assert (=> b!2124252 m!2577062))

(declare-fun condSetEmpty!15126 () Bool)

(assert (=> setNonEmpty!15042 (= condSetEmpty!15126 (= setRest!15042 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15126 () Bool)

(assert (=> setNonEmpty!15042 (= tp!650609 setRes!15126)))

(declare-fun setIsEmpty!15126 () Bool)

(assert (=> setIsEmpty!15126 setRes!15126))

(declare-fun tp!650886 () Bool)

(declare-fun setNonEmpty!15126 () Bool)

(declare-fun e!1353471 () Bool)

(declare-fun setElem!15126 () Context!2482)

(assert (=> setNonEmpty!15126 (= setRes!15126 (and tp!650886 (inv!31334 setElem!15126) e!1353471))))

(declare-fun setRest!15126 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15126 (= setRest!15042 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15126 true) setRest!15126))))

(declare-fun b!2124253 () Bool)

(declare-fun tp!650885 () Bool)

(assert (=> b!2124253 (= e!1353471 tp!650885)))

(assert (= (and setNonEmpty!15042 condSetEmpty!15126) setIsEmpty!15126))

(assert (= (and setNonEmpty!15042 (not condSetEmpty!15126)) setNonEmpty!15126))

(assert (= setNonEmpty!15126 b!2124253))

(declare-fun m!2577064 () Bool)

(assert (=> setNonEmpty!15126 m!2577064))

(declare-fun b!2124254 () Bool)

(declare-fun e!1353472 () Bool)

(declare-fun setRes!15127 () Bool)

(assert (=> b!2124254 (= e!1353472 setRes!15127)))

(declare-fun condSetEmpty!15127 () Bool)

(assert (=> b!2124254 (= condSetEmpty!15127 (= (_2!13619 (h!29136 (t!196338 mapDefault!12018))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15127 () Bool)

(assert (=> setIsEmpty!15127 setRes!15127))

(declare-fun setNonEmpty!15127 () Bool)

(assert (=> setNonEmpty!15127 (= setRes!15127 true)))

(declare-fun setElem!15127 () Context!2482)

(declare-fun setRest!15127 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15127 (= (_2!13619 (h!29136 (t!196338 mapDefault!12018))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15127 true) setRest!15127))))

(assert (=> b!2123726 e!1353472))

(assert (= (and b!2124254 condSetEmpty!15127) setIsEmpty!15127))

(assert (= (and b!2124254 (not condSetEmpty!15127)) setNonEmpty!15127))

(assert (= (and b!2123726 ((_ is Cons!23735) (t!196338 mapDefault!12018))) b!2124254))

(declare-fun b!2124255 () Bool)

(declare-fun e!1353473 () Bool)

(declare-fun setRes!15129 () Bool)

(assert (=> b!2124255 (= e!1353473 setRes!15129)))

(declare-fun condSetEmpty!15129 () Bool)

(declare-fun mapDefault!12037 () List!23819)

(assert (=> b!2124255 (= condSetEmpty!15129 (= (_2!13619 (h!29136 mapDefault!12037)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15128 () Bool)

(assert (=> setIsEmpty!15128 setRes!15129))

(declare-fun setNonEmpty!15128 () Bool)

(assert (=> setNonEmpty!15128 (= setRes!15129 true)))

(declare-fun setElem!15129 () Context!2482)

(declare-fun setRest!15128 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15128 (= (_2!13619 (h!29136 mapDefault!12037)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15129 true) setRest!15128))))

(declare-fun setIsEmpty!15129 () Bool)

(declare-fun setRes!15128 () Bool)

(assert (=> setIsEmpty!15129 setRes!15128))

(declare-fun mapIsEmpty!12037 () Bool)

(declare-fun mapRes!12037 () Bool)

(assert (=> mapIsEmpty!12037 mapRes!12037))

(declare-fun mapNonEmpty!12037 () Bool)

(declare-fun e!1353474 () Bool)

(assert (=> mapNonEmpty!12037 (= mapRes!12037 e!1353474)))

(declare-fun mapKey!12037 () (_ BitVec 32))

(declare-fun mapRest!12037 () (Array (_ BitVec 32) List!23819))

(declare-fun mapValue!12037 () List!23819)

(assert (=> mapNonEmpty!12037 (= mapRest!12014 (store mapRest!12037 mapKey!12037 mapValue!12037))))

(declare-fun b!2124256 () Bool)

(assert (=> b!2124256 (= e!1353474 setRes!15128)))

(declare-fun condSetEmpty!15128 () Bool)

(assert (=> b!2124256 (= condSetEmpty!15128 (= (_2!13619 (h!29136 mapValue!12037)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setNonEmpty!15129 () Bool)

(assert (=> setNonEmpty!15129 (= setRes!15128 true)))

(declare-fun setElem!15128 () Context!2482)

(declare-fun setRest!15129 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15129 (= (_2!13619 (h!29136 mapValue!12037)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15128 true) setRest!15129))))

(declare-fun condMapEmpty!12037 () Bool)

(assert (=> mapNonEmpty!12014 (= condMapEmpty!12037 (= mapRest!12014 ((as const (Array (_ BitVec 32) List!23819)) mapDefault!12037)))))

(assert (=> mapNonEmpty!12014 (and e!1353473 mapRes!12037)))

(assert (= (and mapNonEmpty!12014 condMapEmpty!12037) mapIsEmpty!12037))

(assert (= (and mapNonEmpty!12014 (not condMapEmpty!12037)) mapNonEmpty!12037))

(assert (= (and b!2124256 condSetEmpty!15128) setIsEmpty!15129))

(assert (= (and b!2124256 (not condSetEmpty!15128)) setNonEmpty!15129))

(assert (= (and mapNonEmpty!12037 ((_ is Cons!23735) mapValue!12037)) b!2124256))

(assert (= (and b!2124255 condSetEmpty!15129) setIsEmpty!15128))

(assert (= (and b!2124255 (not condSetEmpty!15129)) setNonEmpty!15128))

(assert (= (and mapNonEmpty!12014 ((_ is Cons!23735) mapDefault!12037)) b!2124255))

(declare-fun m!2577066 () Bool)

(assert (=> mapNonEmpty!12037 m!2577066))

(declare-fun b!2124257 () Bool)

(declare-fun e!1353475 () Bool)

(declare-fun setRes!15130 () Bool)

(assert (=> b!2124257 (= e!1353475 setRes!15130)))

(declare-fun condSetEmpty!15130 () Bool)

(assert (=> b!2124257 (= condSetEmpty!15130 (= (_2!13619 (h!29136 mapValue!12014)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15130 () Bool)

(assert (=> setIsEmpty!15130 setRes!15130))

(declare-fun setNonEmpty!15130 () Bool)

(assert (=> setNonEmpty!15130 (= setRes!15130 true)))

(declare-fun setElem!15130 () Context!2482)

(declare-fun setRest!15130 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15130 (= (_2!13619 (h!29136 mapValue!12014)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15130 true) setRest!15130))))

(assert (=> mapNonEmpty!12014 e!1353475))

(assert (= (and b!2124257 condSetEmpty!15130) setIsEmpty!15130))

(assert (= (and b!2124257 (not condSetEmpty!15130)) setNonEmpty!15130))

(assert (= (and mapNonEmpty!12014 ((_ is Cons!23735) mapValue!12014)) b!2124257))

(declare-fun b!2124258 () Bool)

(declare-fun e!1353476 () Bool)

(declare-fun setRes!15131 () Bool)

(assert (=> b!2124258 (= e!1353476 setRes!15131)))

(declare-fun condSetEmpty!15131 () Bool)

(assert (=> b!2124258 (= condSetEmpty!15131 (= (_2!13621 (h!29137 (t!196339 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15131 () Bool)

(assert (=> setIsEmpty!15131 setRes!15131))

(declare-fun setNonEmpty!15131 () Bool)

(assert (=> setNonEmpty!15131 (= setRes!15131 true)))

(declare-fun setElem!15131 () Context!2482)

(declare-fun setRest!15131 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15131 (= (_2!13621 (h!29137 (t!196339 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15131 true) setRest!15131))))

(assert (=> b!2123881 e!1353476))

(assert (= (and b!2124258 condSetEmpty!15131) setIsEmpty!15131))

(assert (= (and b!2124258 (not condSetEmpty!15131)) setNonEmpty!15131))

(assert (= (and b!2123881 ((_ is Cons!23736) (t!196339 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))))) b!2124258))

(declare-fun b!2124259 () Bool)

(declare-fun e!1353477 () Bool)

(declare-fun tp!650887 () Bool)

(declare-fun tp!650888 () Bool)

(assert (=> b!2124259 (= e!1353477 (and tp!650887 tp!650888))))

(assert (=> b!2123765 (= tp!650581 e!1353477)))

(assert (= (and b!2123765 ((_ is Cons!23734) (exprs!1741 setElem!15033))) b!2124259))

(declare-fun b!2124264 () Bool)

(declare-fun e!1353480 () Bool)

(declare-fun tp!650891 () Bool)

(assert (=> b!2124264 (= e!1353480 (and tp_is_empty!9493 tp!650891))))

(assert (=> b!2123852 (= tp!650676 e!1353480)))

(assert (= (and b!2123852 ((_ is Cons!23737) (innerList!7869 (xs!10751 (c!339823 input!5507))))) b!2124264))

(declare-fun b!2124265 () Bool)

(declare-fun e!1353481 () Bool)

(declare-fun tp!650892 () Bool)

(declare-fun tp!650893 () Bool)

(assert (=> b!2124265 (= e!1353481 (and tp!650892 tp!650893))))

(assert (=> b!2123741 (= tp!650553 e!1353481)))

(assert (= (and b!2123741 ((_ is Cons!23734) (exprs!1741 setElem!15028))) b!2124265))

(declare-fun b!2124266 () Bool)

(declare-fun e!1353482 () Bool)

(declare-fun tp!650894 () Bool)

(declare-fun tp!650895 () Bool)

(assert (=> b!2124266 (= e!1353482 (and tp!650894 tp!650895))))

(assert (=> b!2123870 (= tp!650705 e!1353482)))

(assert (= (and b!2123870 ((_ is Cons!23734) (exprs!1741 setElem!15074))) b!2124266))

(declare-fun condSetEmpty!15132 () Bool)

(assert (=> setNonEmpty!15071 (= condSetEmpty!15132 (= setRest!15071 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15132 () Bool)

(assert (=> setNonEmpty!15071 (= tp!650695 setRes!15132)))

(declare-fun setIsEmpty!15132 () Bool)

(assert (=> setIsEmpty!15132 setRes!15132))

(declare-fun setNonEmpty!15132 () Bool)

(declare-fun e!1353483 () Bool)

(declare-fun setElem!15132 () Context!2482)

(declare-fun tp!650897 () Bool)

(assert (=> setNonEmpty!15132 (= setRes!15132 (and tp!650897 (inv!31334 setElem!15132) e!1353483))))

(declare-fun setRest!15132 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15132 (= setRest!15071 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15132 true) setRest!15132))))

(declare-fun b!2124267 () Bool)

(declare-fun tp!650896 () Bool)

(assert (=> b!2124267 (= e!1353483 tp!650896)))

(assert (= (and setNonEmpty!15071 condSetEmpty!15132) setIsEmpty!15132))

(assert (= (and setNonEmpty!15071 (not condSetEmpty!15132)) setNonEmpty!15132))

(assert (= setNonEmpty!15132 b!2124267))

(declare-fun m!2577068 () Bool)

(assert (=> setNonEmpty!15132 m!2577068))

(declare-fun e!1353486 () Bool)

(assert (=> b!2123719 (= tp!650544 e!1353486)))

(declare-fun b!2124268 () Bool)

(declare-fun e!1353484 () Bool)

(declare-fun tp!650900 () Bool)

(assert (=> b!2124268 (= e!1353484 tp!650900)))

(declare-fun b!2124269 () Bool)

(declare-fun e!1353485 () Bool)

(declare-fun tp!650898 () Bool)

(assert (=> b!2124269 (= e!1353485 tp!650898)))

(declare-fun setNonEmpty!15133 () Bool)

(declare-fun setRes!15133 () Bool)

(declare-fun setElem!15133 () Context!2482)

(declare-fun tp!650899 () Bool)

(assert (=> setNonEmpty!15133 (= setRes!15133 (and tp!650899 (inv!31334 setElem!15133) e!1353484))))

(declare-fun setRest!15133 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15133 (= (_2!13621 (h!29137 (t!196339 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15133 true) setRest!15133))))

(declare-fun tp!650901 () Bool)

(declare-fun b!2124270 () Bool)

(assert (=> b!2124270 (= e!1353486 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 (t!196339 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))))))) e!1353485 tp_is_empty!9493 setRes!15133 tp!650901))))

(declare-fun condSetEmpty!15133 () Bool)

(assert (=> b!2124270 (= condSetEmpty!15133 (= (_2!13621 (h!29137 (t!196339 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15133 () Bool)

(assert (=> setIsEmpty!15133 setRes!15133))

(assert (= b!2124270 b!2124269))

(assert (= (and b!2124270 condSetEmpty!15133) setIsEmpty!15133))

(assert (= (and b!2124270 (not condSetEmpty!15133)) setNonEmpty!15133))

(assert (= setNonEmpty!15133 b!2124268))

(assert (= (and b!2123719 ((_ is Cons!23736) (t!196339 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991))))))))) b!2124270))

(declare-fun m!2577070 () Bool)

(assert (=> setNonEmpty!15133 m!2577070))

(declare-fun m!2577072 () Bool)

(assert (=> b!2124270 m!2577072))

(declare-fun b!2124271 () Bool)

(declare-fun e!1353487 () Bool)

(declare-fun tp!650902 () Bool)

(assert (=> b!2124271 (= e!1353487 (and tp_is_empty!9493 tp!650902))))

(assert (=> b!2123837 (= tp!650658 e!1353487)))

(assert (= (and b!2123837 ((_ is Cons!23737) (innerList!7869 (xs!10751 (c!339823 (totalInput!2921 cacheFurthestNullable!130)))))) b!2124271))

(declare-fun condSetEmpty!15134 () Bool)

(assert (=> setNonEmpty!15014 (= condSetEmpty!15134 (= setRest!15014 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15134 () Bool)

(assert (=> setNonEmpty!15014 (= tp!650538 setRes!15134)))

(declare-fun setIsEmpty!15134 () Bool)

(assert (=> setIsEmpty!15134 setRes!15134))

(declare-fun setElem!15134 () Context!2482)

(declare-fun tp!650904 () Bool)

(declare-fun setNonEmpty!15134 () Bool)

(declare-fun e!1353488 () Bool)

(assert (=> setNonEmpty!15134 (= setRes!15134 (and tp!650904 (inv!31334 setElem!15134) e!1353488))))

(declare-fun setRest!15134 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15134 (= setRest!15014 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15134 true) setRest!15134))))

(declare-fun b!2124272 () Bool)

(declare-fun tp!650903 () Bool)

(assert (=> b!2124272 (= e!1353488 tp!650903)))

(assert (= (and setNonEmpty!15014 condSetEmpty!15134) setIsEmpty!15134))

(assert (= (and setNonEmpty!15014 (not condSetEmpty!15134)) setNonEmpty!15134))

(assert (= setNonEmpty!15134 b!2124272))

(declare-fun m!2577074 () Bool)

(assert (=> setNonEmpty!15134 m!2577074))

(declare-fun b!2124273 () Bool)

(declare-fun e!1353489 () Bool)

(declare-fun setRes!15135 () Bool)

(assert (=> b!2124273 (= e!1353489 setRes!15135)))

(declare-fun condSetEmpty!15135 () Bool)

(assert (=> b!2124273 (= condSetEmpty!15135 (= (_2!13621 (h!29137 mapDefault!12015)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15135 () Bool)

(assert (=> setIsEmpty!15135 setRes!15135))

(declare-fun setNonEmpty!15135 () Bool)

(assert (=> setNonEmpty!15135 (= setRes!15135 true)))

(declare-fun setElem!15135 () Context!2482)

(declare-fun setRest!15135 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15135 (= (_2!13621 (h!29137 mapDefault!12015)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15135 true) setRest!15135))))

(assert (=> b!2123646 e!1353489))

(assert (= (and b!2124273 condSetEmpty!15135) setIsEmpty!15135))

(assert (= (and b!2124273 (not condSetEmpty!15135)) setNonEmpty!15135))

(assert (= (and b!2123646 ((_ is Cons!23736) mapDefault!12015)) b!2124273))

(declare-fun b!2124274 () Bool)

(declare-fun e!1353490 () Bool)

(declare-fun tp!650905 () Bool)

(declare-fun tp!650906 () Bool)

(assert (=> b!2124274 (= e!1353490 (and tp!650905 tp!650906))))

(assert (=> b!2123768 (= tp!650587 e!1353490)))

(assert (= (and b!2123768 ((_ is Cons!23734) (exprs!1741 (_1!13620 (_1!13621 (h!29137 mapValue!12005)))))) b!2124274))

(declare-fun b!2124275 () Bool)

(declare-fun e!1353491 () Bool)

(declare-fun setRes!15136 () Bool)

(assert (=> b!2124275 (= e!1353491 setRes!15136)))

(declare-fun condSetEmpty!15136 () Bool)

(assert (=> b!2124275 (= condSetEmpty!15136 (= (_2!13621 (h!29137 (t!196339 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15136 () Bool)

(assert (=> setIsEmpty!15136 setRes!15136))

(declare-fun setNonEmpty!15136 () Bool)

(assert (=> setNonEmpty!15136 (= setRes!15136 true)))

(declare-fun setElem!15136 () Context!2482)

(declare-fun setRest!15136 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15136 (= (_2!13621 (h!29137 (t!196339 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15136 true) setRest!15136))))

(assert (=> b!2123882 e!1353491))

(assert (= (and b!2124275 condSetEmpty!15136) setIsEmpty!15136))

(assert (= (and b!2124275 (not condSetEmpty!15136)) setNonEmpty!15136))

(assert (= (and b!2123882 ((_ is Cons!23736) (t!196339 (minValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 (_2!13623 lt!795247)))))))))) b!2124275))

(declare-fun condSetEmpty!15137 () Bool)

(assert (=> setNonEmpty!15051 (= condSetEmpty!15137 (= setRest!15051 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15137 () Bool)

(assert (=> setNonEmpty!15051 setRes!15137))

(declare-fun setIsEmpty!15137 () Bool)

(assert (=> setIsEmpty!15137 setRes!15137))

(declare-fun setNonEmpty!15137 () Bool)

(assert (=> setNonEmpty!15137 (= setRes!15137 true)))

(declare-fun setElem!15137 () Context!2482)

(declare-fun setRest!15137 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15137 (= setRest!15051 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15137 true) setRest!15137))))

(assert (= (and setNonEmpty!15051 condSetEmpty!15137) setIsEmpty!15137))

(assert (= (and setNonEmpty!15051 (not condSetEmpty!15137)) setNonEmpty!15137))

(declare-fun b!2124276 () Bool)

(declare-fun e!1353493 () Bool)

(declare-fun e!1353492 () Bool)

(assert (=> b!2124276 (= e!1353493 e!1353492)))

(declare-fun b!2124277 () Bool)

(declare-fun setRes!15138 () Bool)

(assert (=> b!2124277 (= e!1353492 setRes!15138)))

(declare-fun condSetEmpty!15138 () Bool)

(assert (=> b!2124277 (= condSetEmpty!15138 (= (z!5735 (h!29139 (t!196341 (t!196341 (_2!13622 (_1!13623 lt!795247)))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15138 () Bool)

(assert (=> setIsEmpty!15138 setRes!15138))

(assert (=> b!2123879 e!1353493))

(declare-fun setNonEmpty!15138 () Bool)

(assert (=> setNonEmpty!15138 (= setRes!15138 true)))

(declare-fun setElem!15138 () Context!2482)

(declare-fun setRest!15138 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15138 (= (z!5735 (h!29139 (t!196341 (t!196341 (_2!13622 (_1!13623 lt!795247)))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15138 true) setRest!15138))))

(assert (= (and b!2124277 condSetEmpty!15138) setIsEmpty!15138))

(assert (= (and b!2124277 (not condSetEmpty!15138)) setNonEmpty!15138))

(assert (= b!2124276 b!2124277))

(assert (= (and b!2123879 ((_ is Cons!23738) (t!196341 (t!196341 (_2!13622 (_1!13623 lt!795247)))))) b!2124276))

(declare-fun condSetEmpty!15139 () Bool)

(assert (=> setNonEmpty!15056 (= condSetEmpty!15139 (= setRest!15056 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15139 () Bool)

(assert (=> setNonEmpty!15056 (= tp!650632 setRes!15139)))

(declare-fun setIsEmpty!15139 () Bool)

(assert (=> setIsEmpty!15139 setRes!15139))

(declare-fun setNonEmpty!15139 () Bool)

(declare-fun setElem!15139 () Context!2482)

(declare-fun tp!650908 () Bool)

(declare-fun e!1353494 () Bool)

(assert (=> setNonEmpty!15139 (= setRes!15139 (and tp!650908 (inv!31334 setElem!15139) e!1353494))))

(declare-fun setRest!15139 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15139 (= setRest!15056 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15139 true) setRest!15139))))

(declare-fun b!2124278 () Bool)

(declare-fun tp!650907 () Bool)

(assert (=> b!2124278 (= e!1353494 tp!650907)))

(assert (= (and setNonEmpty!15056 condSetEmpty!15139) setIsEmpty!15139))

(assert (= (and setNonEmpty!15056 (not condSetEmpty!15139)) setNonEmpty!15139))

(assert (= setNonEmpty!15139 b!2124278))

(declare-fun m!2577076 () Bool)

(assert (=> setNonEmpty!15139 m!2577076))

(declare-fun b!2124279 () Bool)

(declare-fun e!1353495 () Bool)

(declare-fun tp!650909 () Bool)

(declare-fun tp!650910 () Bool)

(assert (=> b!2124279 (= e!1353495 (and tp!650909 tp!650910))))

(assert (=> b!2123822 (= tp!650636 e!1353495)))

(assert (= (and b!2123822 ((_ is Cons!23734) (exprs!1741 (_2!13618 (_1!13619 (h!29136 mapValue!12027)))))) b!2124279))

(declare-fun b!2124280 () Bool)

(declare-fun e!1353496 () Bool)

(declare-fun setRes!15140 () Bool)

(assert (=> b!2124280 (= e!1353496 setRes!15140)))

(declare-fun condSetEmpty!15140 () Bool)

(assert (=> b!2124280 (= condSetEmpty!15140 (= (_2!13621 (h!29137 (t!196339 mapDefault!12024))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15140 () Bool)

(assert (=> setIsEmpty!15140 setRes!15140))

(declare-fun setNonEmpty!15140 () Bool)

(assert (=> setNonEmpty!15140 (= setRes!15140 true)))

(declare-fun setElem!15140 () Context!2482)

(declare-fun setRest!15140 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15140 (= (_2!13621 (h!29137 (t!196339 mapDefault!12024))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15140 true) setRest!15140))))

(assert (=> b!2123797 e!1353496))

(assert (= (and b!2124280 condSetEmpty!15140) setIsEmpty!15140))

(assert (= (and b!2124280 (not condSetEmpty!15140)) setNonEmpty!15140))

(assert (= (and b!2123797 ((_ is Cons!23736) (t!196339 mapDefault!12024))) b!2124280))

(declare-fun b!2124281 () Bool)

(declare-fun e!1353497 () Bool)

(declare-fun tp!650911 () Bool)

(declare-fun tp!650912 () Bool)

(assert (=> b!2124281 (= e!1353497 (and tp!650911 tp!650912))))

(assert (=> b!2123866 (= tp!650694 e!1353497)))

(assert (= (and b!2123866 ((_ is Cons!23734) (exprs!1741 setElem!15071))) b!2124281))

(declare-fun setIsEmpty!15141 () Bool)

(declare-fun setRes!15141 () Bool)

(assert (=> setIsEmpty!15141 setRes!15141))

(declare-fun e!1353499 () Bool)

(declare-fun setElem!15141 () Context!2482)

(declare-fun setNonEmpty!15141 () Bool)

(declare-fun tp!650914 () Bool)

(assert (=> setNonEmpty!15141 (= setRes!15141 (and tp!650914 (inv!31334 setElem!15141) e!1353499))))

(declare-fun setRest!15141 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15141 (= (_1!13624 (_1!13625 (h!29140 (t!196342 (minValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130)))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15141 true) setRest!15141))))

(declare-fun e!1353498 () Bool)

(assert (=> b!2123871 (= tp!650706 e!1353498)))

(declare-fun b!2124283 () Bool)

(declare-fun tp!650915 () Bool)

(assert (=> b!2124283 (= e!1353499 tp!650915)))

(declare-fun b!2124282 () Bool)

(declare-fun tp!650913 () Bool)

(assert (=> b!2124282 (= e!1353498 (and setRes!15141 tp!650913))))

(declare-fun condSetEmpty!15141 () Bool)

(assert (=> b!2124282 (= condSetEmpty!15141 (= (_1!13624 (_1!13625 (h!29140 (t!196342 (minValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130)))))))))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2124282 condSetEmpty!15141) setIsEmpty!15141))

(assert (= (and b!2124282 (not condSetEmpty!15141)) setNonEmpty!15141))

(assert (= setNonEmpty!15141 b!2124283))

(assert (= (and b!2123871 ((_ is Cons!23739) (t!196342 (minValue!2725 (v!28268 (underlying!5129 (v!28269 (underlying!5130 (cache!2762 cacheFurthestNullable!130))))))))) b!2124282))

(declare-fun m!2577078 () Bool)

(assert (=> setNonEmpty!15141 m!2577078))

(declare-fun b!2124284 () Bool)

(declare-fun e!1353500 () Bool)

(declare-fun tp!650916 () Bool)

(declare-fun tp!650917 () Bool)

(assert (=> b!2124284 (= e!1353500 (and tp!650916 tp!650917))))

(assert (=> b!2123833 (= tp!650655 e!1353500)))

(assert (= (and b!2123833 ((_ is Cons!23734) (exprs!1741 (_2!13618 (_1!13619 (h!29136 mapValue!12006)))))) b!2124284))

(declare-fun b!2124285 () Bool)

(declare-fun e!1353501 () Bool)

(declare-fun setRes!15142 () Bool)

(assert (=> b!2124285 (= e!1353501 setRes!15142)))

(declare-fun condSetEmpty!15142 () Bool)

(assert (=> b!2124285 (= condSetEmpty!15142 (= (_2!13619 (h!29136 (t!196338 mapValue!12012))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15142 () Bool)

(assert (=> setIsEmpty!15142 setRes!15142))

(declare-fun setNonEmpty!15142 () Bool)

(assert (=> setNonEmpty!15142 (= setRes!15142 true)))

(declare-fun setElem!15142 () Context!2482)

(declare-fun setRest!15142 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15142 (= (_2!13619 (h!29136 (t!196338 mapValue!12012))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15142 true) setRest!15142))))

(assert (=> b!2123732 e!1353501))

(assert (= (and b!2124285 condSetEmpty!15142) setIsEmpty!15142))

(assert (= (and b!2124285 (not condSetEmpty!15142)) setNonEmpty!15142))

(assert (= (and b!2123732 ((_ is Cons!23735) (t!196338 mapValue!12012))) b!2124285))

(declare-fun condSetEmpty!15143 () Bool)

(assert (=> setNonEmpty!15033 (= condSetEmpty!15143 (= setRest!15033 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15143 () Bool)

(assert (=> setNonEmpty!15033 (= tp!650586 setRes!15143)))

(declare-fun setIsEmpty!15143 () Bool)

(assert (=> setIsEmpty!15143 setRes!15143))

(declare-fun e!1353502 () Bool)

(declare-fun tp!650919 () Bool)

(declare-fun setElem!15143 () Context!2482)

(declare-fun setNonEmpty!15143 () Bool)

(assert (=> setNonEmpty!15143 (= setRes!15143 (and tp!650919 (inv!31334 setElem!15143) e!1353502))))

(declare-fun setRest!15143 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15143 (= setRest!15033 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15143 true) setRest!15143))))

(declare-fun b!2124286 () Bool)

(declare-fun tp!650918 () Bool)

(assert (=> b!2124286 (= e!1353502 tp!650918)))

(assert (= (and setNonEmpty!15033 condSetEmpty!15143) setIsEmpty!15143))

(assert (= (and setNonEmpty!15033 (not condSetEmpty!15143)) setNonEmpty!15143))

(assert (= setNonEmpty!15143 b!2124286))

(declare-fun m!2577080 () Bool)

(assert (=> setNonEmpty!15143 m!2577080))

(declare-fun b!2124287 () Bool)

(declare-fun e!1353503 () Bool)

(declare-fun setRes!15144 () Bool)

(assert (=> b!2124287 (= e!1353503 setRes!15144)))

(declare-fun condSetEmpty!15144 () Bool)

(assert (=> b!2124287 (= condSetEmpty!15144 (= (_2!13619 (h!29136 mapDefault!12014)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15144 () Bool)

(assert (=> setIsEmpty!15144 setRes!15144))

(declare-fun setNonEmpty!15144 () Bool)

(assert (=> setNonEmpty!15144 (= setRes!15144 true)))

(declare-fun setElem!15144 () Context!2482)

(declare-fun setRest!15144 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15144 (= (_2!13619 (h!29136 mapDefault!12014)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15144 true) setRest!15144))))

(assert (=> b!2123657 e!1353503))

(assert (= (and b!2124287 condSetEmpty!15144) setIsEmpty!15144))

(assert (= (and b!2124287 (not condSetEmpty!15144)) setNonEmpty!15144))

(assert (= (and b!2123657 ((_ is Cons!23735) mapDefault!12014)) b!2124287))

(declare-fun b!2124288 () Bool)

(declare-fun e!1353504 () Bool)

(declare-fun setRes!15145 () Bool)

(assert (=> b!2124288 (= e!1353504 setRes!15145)))

(declare-fun condSetEmpty!15145 () Bool)

(assert (=> b!2124288 (= condSetEmpty!15145 (= (_2!13621 (h!29137 (t!196339 mapDefault!12013))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15145 () Bool)

(assert (=> setIsEmpty!15145 setRes!15145))

(declare-fun setNonEmpty!15145 () Bool)

(assert (=> setNonEmpty!15145 (= setRes!15145 true)))

(declare-fun setElem!15145 () Context!2482)

(declare-fun setRest!15145 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15145 (= (_2!13621 (h!29137 (t!196339 mapDefault!12013))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15145 true) setRest!15145))))

(assert (=> b!2123847 e!1353504))

(assert (= (and b!2124288 condSetEmpty!15145) setIsEmpty!15145))

(assert (= (and b!2124288 (not condSetEmpty!15145)) setNonEmpty!15145))

(assert (= (and b!2123847 ((_ is Cons!23736) (t!196339 mapDefault!12013))) b!2124288))

(declare-fun b!2124289 () Bool)

(declare-fun e!1353505 () Bool)

(declare-fun tp!650920 () Bool)

(declare-fun tp!650921 () Bool)

(assert (=> b!2124289 (= e!1353505 (and tp!650920 tp!650921))))

(assert (=> b!2123763 (= tp!650583 e!1353505)))

(assert (= (and b!2123763 ((_ is Cons!23734) (exprs!1741 (_1!13620 (_1!13621 (h!29137 mapDefault!12021)))))) b!2124289))

(declare-fun b!2124304 () Bool)

(declare-fun e!1353520 () Bool)

(declare-fun e!1353519 () Bool)

(assert (=> b!2124304 (= e!1353520 e!1353519)))

(declare-fun b!2124305 () Bool)

(declare-fun e!1353521 () Bool)

(declare-fun e!1353523 () Bool)

(assert (=> b!2124305 (= e!1353521 e!1353523)))

(declare-fun b!2124306 () Bool)

(declare-fun lt!795409 () MutLongMap!2466)

(assert (=> b!2124306 (= e!1353523 ((_ is LongMap!2466) lt!795409))))

(assert (=> b!2124306 (= lt!795409 (v!28267 (underlying!5127 (cache!2760 (_2!13623 (furthestNullablePositionStackMem!12 z!3883 lt!795246 totalInput!886 lt!795241 e!1352951 Nil!23738 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))))))

(declare-fun b!2124307 () Bool)

(declare-fun e!1353522 () Bool)

(assert (=> b!2124307 (= e!1353519 e!1353522)))

(declare-fun b!2124308 () Bool)

(declare-fun lt!795410 () MutLongMap!2465)

(assert (=> b!2124308 (= e!1353522 ((_ is LongMap!2465) lt!795410))))

(assert (=> b!2124308 (= lt!795410 (v!28265 (underlying!5128 (cache!2761 (_3!1938 (furthestNullablePositionStackMem!12 z!3883 lt!795246 totalInput!886 lt!795241 e!1352951 Nil!23738 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))))))

(declare-fun e!1353518 () Bool)

(assert (=> d!643595 (= true (and e!1353518 e!1353520))))

(declare-fun b!2124309 () Bool)

(assert (=> b!2124309 (= e!1353518 e!1353521)))

(assert (= b!2124305 b!2124306))

(assert (= (and b!2124309 ((_ is HashMap!2379) (cache!2760 (_2!13623 (furthestNullablePositionStackMem!12 z!3883 lt!795246 totalInput!886 lt!795241 e!1352951 Nil!23738 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))) b!2124305))

(assert (= d!643595 b!2124309))

(assert (= b!2124307 b!2124308))

(assert (= (and b!2124304 ((_ is HashMap!2380) (cache!2761 (_3!1938 (furthestNullablePositionStackMem!12 z!3883 lt!795246 totalInput!886 lt!795241 e!1352951 Nil!23738 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))) b!2124307))

(assert (= d!643595 b!2124304))

(declare-fun e!1353526 () Bool)

(assert (=> b!2123783 (= tp!650603 e!1353526)))

(declare-fun b!2124310 () Bool)

(declare-fun e!1353524 () Bool)

(declare-fun tp!650924 () Bool)

(assert (=> b!2124310 (= e!1353524 tp!650924)))

(declare-fun b!2124311 () Bool)

(declare-fun e!1353525 () Bool)

(declare-fun tp!650922 () Bool)

(assert (=> b!2124311 (= e!1353525 tp!650922)))

(declare-fun setNonEmpty!15146 () Bool)

(declare-fun tp!650923 () Bool)

(declare-fun setRes!15146 () Bool)

(declare-fun setElem!15146 () Context!2482)

(assert (=> setNonEmpty!15146 (= setRes!15146 (and tp!650923 (inv!31334 setElem!15146) e!1353524))))

(declare-fun setRest!15146 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15146 (= (_2!13621 (h!29137 (t!196339 mapDefault!12007))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15146 true) setRest!15146))))

(declare-fun tp!650925 () Bool)

(declare-fun b!2124312 () Bool)

(assert (=> b!2124312 (= e!1353526 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 (t!196339 mapDefault!12007))))) e!1353525 tp_is_empty!9493 setRes!15146 tp!650925))))

(declare-fun condSetEmpty!15146 () Bool)

(assert (=> b!2124312 (= condSetEmpty!15146 (= (_2!13621 (h!29137 (t!196339 mapDefault!12007))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15146 () Bool)

(assert (=> setIsEmpty!15146 setRes!15146))

(assert (= b!2124312 b!2124311))

(assert (= (and b!2124312 condSetEmpty!15146) setIsEmpty!15146))

(assert (= (and b!2124312 (not condSetEmpty!15146)) setNonEmpty!15146))

(assert (= setNonEmpty!15146 b!2124310))

(assert (= (and b!2123783 ((_ is Cons!23736) (t!196339 mapDefault!12007))) b!2124312))

(declare-fun m!2577082 () Bool)

(assert (=> setNonEmpty!15146 m!2577082))

(declare-fun m!2577084 () Bool)

(assert (=> b!2124312 m!2577084))

(declare-fun b!2124323 () Bool)

(declare-fun e!1353535 () Bool)

(declare-fun lt!795413 () MutLongMap!2467)

(assert (=> b!2124323 (= e!1353535 ((_ is LongMap!2467) lt!795413))))

(assert (=> b!2124323 (= lt!795413 (v!28269 (underlying!5130 (cache!2762 (_2!13626 (fillUpCache!9 (_2!13622 (_1!13623 lt!795247)) totalInput!886 lt!795241 (_1!13622 (_1!13623 lt!795247)) 0 cacheFurthestNullable!130))))))))

(declare-fun b!2124322 () Bool)

(declare-fun e!1353534 () Bool)

(assert (=> b!2124322 (= e!1353534 e!1353535)))

(declare-fun b!2124321 () Bool)

(declare-fun e!1353533 () Bool)

(assert (=> b!2124321 (= e!1353533 e!1353534)))

(assert (=> d!643591 (= true e!1353533)))

(assert (= b!2124322 b!2124323))

(assert (= (and b!2124321 ((_ is HashMap!2381) (cache!2762 (_2!13626 (fillUpCache!9 (_2!13622 (_1!13623 lt!795247)) totalInput!886 lt!795241 (_1!13622 (_1!13623 lt!795247)) 0 cacheFurthestNullable!130))))) b!2124322))

(assert (= d!643591 b!2124321))

(declare-fun condSetEmpty!15147 () Bool)

(assert (=> setNonEmpty!15074 (= condSetEmpty!15147 (= setRest!15074 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15147 () Bool)

(assert (=> setNonEmpty!15074 (= tp!650704 setRes!15147)))

(declare-fun setIsEmpty!15147 () Bool)

(assert (=> setIsEmpty!15147 setRes!15147))

(declare-fun setElem!15147 () Context!2482)

(declare-fun setNonEmpty!15147 () Bool)

(declare-fun e!1353536 () Bool)

(declare-fun tp!650927 () Bool)

(assert (=> setNonEmpty!15147 (= setRes!15147 (and tp!650927 (inv!31334 setElem!15147) e!1353536))))

(declare-fun setRest!15147 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15147 (= setRest!15074 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15147 true) setRest!15147))))

(declare-fun b!2124324 () Bool)

(declare-fun tp!650926 () Bool)

(assert (=> b!2124324 (= e!1353536 tp!650926)))

(assert (= (and setNonEmpty!15074 condSetEmpty!15147) setIsEmpty!15147))

(assert (= (and setNonEmpty!15074 (not condSetEmpty!15147)) setNonEmpty!15147))

(assert (= setNonEmpty!15147 b!2124324))

(declare-fun m!2577086 () Bool)

(assert (=> setNonEmpty!15147 m!2577086))

(declare-fun mapNonEmpty!12038 () Bool)

(declare-fun mapRes!12038 () Bool)

(declare-fun tp!650934 () Bool)

(declare-fun e!1353540 () Bool)

(assert (=> mapNonEmpty!12038 (= mapRes!12038 (and tp!650934 e!1353540))))

(declare-fun mapRest!12038 () (Array (_ BitVec 32) List!23823))

(declare-fun mapKey!12038 () (_ BitVec 32))

(declare-fun mapValue!12038 () List!23823)

(assert (=> mapNonEmpty!12038 (= mapRest!12030 (store mapRest!12038 mapKey!12038 mapValue!12038))))

(declare-fun setElem!15148 () Context!2482)

(declare-fun setRes!15149 () Bool)

(declare-fun tp!650930 () Bool)

(declare-fun setNonEmpty!15148 () Bool)

(declare-fun e!1353537 () Bool)

(assert (=> setNonEmpty!15148 (= setRes!15149 (and tp!650930 (inv!31334 setElem!15148) e!1353537))))

(declare-fun setRest!15148 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15148 (= (_1!13624 (_1!13625 (h!29140 mapValue!12038))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15148 true) setRest!15148))))

(declare-fun b!2124325 () Bool)

(declare-fun tp!650928 () Bool)

(assert (=> b!2124325 (= e!1353540 (and setRes!15149 tp!650928))))

(declare-fun condSetEmpty!15148 () Bool)

(assert (=> b!2124325 (= condSetEmpty!15148 (= (_1!13624 (_1!13625 (h!29140 mapValue!12038))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun b!2124326 () Bool)

(declare-fun e!1353538 () Bool)

(declare-fun setRes!15148 () Bool)

(declare-fun tp!650933 () Bool)

(assert (=> b!2124326 (= e!1353538 (and setRes!15148 tp!650933))))

(declare-fun condSetEmpty!15149 () Bool)

(declare-fun mapDefault!12038 () List!23823)

(assert (=> b!2124326 (= condSetEmpty!15149 (= (_1!13624 (_1!13625 (h!29140 mapDefault!12038))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun mapIsEmpty!12038 () Bool)

(assert (=> mapIsEmpty!12038 mapRes!12038))

(declare-fun setIsEmpty!15149 () Bool)

(assert (=> setIsEmpty!15149 setRes!15148))

(declare-fun b!2124327 () Bool)

(declare-fun e!1353539 () Bool)

(declare-fun tp!650931 () Bool)

(assert (=> b!2124327 (= e!1353539 tp!650931)))

(declare-fun tp!650932 () Bool)

(declare-fun setElem!15149 () Context!2482)

(declare-fun setNonEmpty!15149 () Bool)

(assert (=> setNonEmpty!15149 (= setRes!15148 (and tp!650932 (inv!31334 setElem!15149) e!1353539))))

(declare-fun setRest!15149 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15149 (= (_1!13624 (_1!13625 (h!29140 mapDefault!12038))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15149 true) setRest!15149))))

(declare-fun b!2124328 () Bool)

(declare-fun tp!650929 () Bool)

(assert (=> b!2124328 (= e!1353537 tp!650929)))

(declare-fun condMapEmpty!12038 () Bool)

(assert (=> mapNonEmpty!12030 (= condMapEmpty!12038 (= mapRest!12030 ((as const (Array (_ BitVec 32) List!23823)) mapDefault!12038)))))

(assert (=> mapNonEmpty!12030 (= tp!650699 (and e!1353538 mapRes!12038))))

(declare-fun setIsEmpty!15148 () Bool)

(assert (=> setIsEmpty!15148 setRes!15149))

(assert (= (and mapNonEmpty!12030 condMapEmpty!12038) mapIsEmpty!12038))

(assert (= (and mapNonEmpty!12030 (not condMapEmpty!12038)) mapNonEmpty!12038))

(assert (= (and b!2124325 condSetEmpty!15148) setIsEmpty!15148))

(assert (= (and b!2124325 (not condSetEmpty!15148)) setNonEmpty!15148))

(assert (= setNonEmpty!15148 b!2124328))

(assert (= (and mapNonEmpty!12038 ((_ is Cons!23739) mapValue!12038)) b!2124325))

(assert (= (and b!2124326 condSetEmpty!15149) setIsEmpty!15149))

(assert (= (and b!2124326 (not condSetEmpty!15149)) setNonEmpty!15149))

(assert (= setNonEmpty!15149 b!2124327))

(assert (= (and mapNonEmpty!12030 ((_ is Cons!23739) mapDefault!12038)) b!2124326))

(declare-fun m!2577088 () Bool)

(assert (=> mapNonEmpty!12038 m!2577088))

(declare-fun m!2577090 () Bool)

(assert (=> setNonEmpty!15148 m!2577090))

(declare-fun m!2577092 () Bool)

(assert (=> setNonEmpty!15149 m!2577092))

(declare-fun setNonEmpty!15150 () Bool)

(declare-fun setRes!15151 () Bool)

(assert (=> setNonEmpty!15150 (= setRes!15151 true)))

(declare-fun mapValue!12039 () List!23820)

(declare-fun setElem!15150 () Context!2482)

(declare-fun setRest!15151 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15150 (= (_2!13621 (h!29137 mapValue!12039)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15150 true) setRest!15151))))

(declare-fun b!2124329 () Bool)

(declare-fun e!1353541 () Bool)

(declare-fun setRes!15150 () Bool)

(assert (=> b!2124329 (= e!1353541 setRes!15150)))

(declare-fun condSetEmpty!15151 () Bool)

(declare-fun mapDefault!12039 () List!23820)

(assert (=> b!2124329 (= condSetEmpty!15151 (= (_2!13621 (h!29137 mapDefault!12039)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15150 () Bool)

(assert (=> setIsEmpty!15150 setRes!15151))

(declare-fun condMapEmpty!12039 () Bool)

(assert (=> mapNonEmpty!12015 (= condMapEmpty!12039 (= mapRest!12015 ((as const (Array (_ BitVec 32) List!23820)) mapDefault!12039)))))

(declare-fun mapRes!12039 () Bool)

(assert (=> mapNonEmpty!12015 (and e!1353541 mapRes!12039)))

(declare-fun b!2124330 () Bool)

(declare-fun e!1353542 () Bool)

(assert (=> b!2124330 (= e!1353542 setRes!15151)))

(declare-fun condSetEmpty!15150 () Bool)

(assert (=> b!2124330 (= condSetEmpty!15150 (= (_2!13621 (h!29137 mapValue!12039)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun mapNonEmpty!12039 () Bool)

(assert (=> mapNonEmpty!12039 (= mapRes!12039 e!1353542)))

(declare-fun mapKey!12039 () (_ BitVec 32))

(declare-fun mapRest!12039 () (Array (_ BitVec 32) List!23820))

(assert (=> mapNonEmpty!12039 (= mapRest!12015 (store mapRest!12039 mapKey!12039 mapValue!12039))))

(declare-fun mapIsEmpty!12039 () Bool)

(assert (=> mapIsEmpty!12039 mapRes!12039))

(declare-fun setIsEmpty!15151 () Bool)

(assert (=> setIsEmpty!15151 setRes!15150))

(declare-fun setNonEmpty!15151 () Bool)

(assert (=> setNonEmpty!15151 (= setRes!15150 true)))

(declare-fun setElem!15151 () Context!2482)

(declare-fun setRest!15150 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15151 (= (_2!13621 (h!29137 mapDefault!12039)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15151 true) setRest!15150))))

(assert (= (and mapNonEmpty!12015 condMapEmpty!12039) mapIsEmpty!12039))

(assert (= (and mapNonEmpty!12015 (not condMapEmpty!12039)) mapNonEmpty!12039))

(assert (= (and b!2124330 condSetEmpty!15150) setIsEmpty!15150))

(assert (= (and b!2124330 (not condSetEmpty!15150)) setNonEmpty!15150))

(assert (= (and mapNonEmpty!12039 ((_ is Cons!23736) mapValue!12039)) b!2124330))

(assert (= (and b!2124329 condSetEmpty!15151) setIsEmpty!15151))

(assert (= (and b!2124329 (not condSetEmpty!15151)) setNonEmpty!15151))

(assert (= (and mapNonEmpty!12015 ((_ is Cons!23736) mapDefault!12039)) b!2124329))

(declare-fun m!2577094 () Bool)

(assert (=> mapNonEmpty!12039 m!2577094))

(declare-fun b!2124331 () Bool)

(declare-fun e!1353543 () Bool)

(declare-fun setRes!15152 () Bool)

(assert (=> b!2124331 (= e!1353543 setRes!15152)))

(declare-fun condSetEmpty!15152 () Bool)

(assert (=> b!2124331 (= condSetEmpty!15152 (= (_2!13621 (h!29137 mapValue!12015)) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15152 () Bool)

(assert (=> setIsEmpty!15152 setRes!15152))

(declare-fun setNonEmpty!15152 () Bool)

(assert (=> setNonEmpty!15152 (= setRes!15152 true)))

(declare-fun setElem!15152 () Context!2482)

(declare-fun setRest!15152 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15152 (= (_2!13621 (h!29137 mapValue!12015)) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15152 true) setRest!15152))))

(assert (=> mapNonEmpty!12015 e!1353543))

(assert (= (and b!2124331 condSetEmpty!15152) setIsEmpty!15152))

(assert (= (and b!2124331 (not condSetEmpty!15152)) setNonEmpty!15152))

(assert (= (and mapNonEmpty!12015 ((_ is Cons!23736) mapValue!12015)) b!2124331))

(declare-fun b!2124332 () Bool)

(declare-fun e!1353544 () Bool)

(declare-fun tp!650935 () Bool)

(assert (=> b!2124332 (= e!1353544 (and tp_is_empty!9493 tp!650935))))

(assert (=> b!2123780 (= tp!650597 e!1353544)))

(assert (= (and b!2123780 ((_ is Cons!23737) (innerList!7869 (xs!10751 (c!339823 totalInput!886))))) b!2124332))

(declare-fun b!2124333 () Bool)

(declare-fun e!1353545 () Bool)

(declare-fun setRes!15153 () Bool)

(assert (=> b!2124333 (= e!1353545 setRes!15153)))

(declare-fun condSetEmpty!15153 () Bool)

(assert (=> b!2124333 (= condSetEmpty!15153 (= (_2!13619 (h!29136 (t!196338 mapDefault!12012))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15153 () Bool)

(assert (=> setIsEmpty!15153 setRes!15153))

(declare-fun setNonEmpty!15153 () Bool)

(assert (=> setNonEmpty!15153 (= setRes!15153 true)))

(declare-fun setElem!15153 () Context!2482)

(declare-fun setRest!15153 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15153 (= (_2!13619 (h!29136 (t!196338 mapDefault!12012))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15153 true) setRest!15153))))

(assert (=> b!2123733 e!1353545))

(assert (= (and b!2124333 condSetEmpty!15153) setIsEmpty!15153))

(assert (= (and b!2124333 (not condSetEmpty!15153)) setNonEmpty!15153))

(assert (= (and b!2123733 ((_ is Cons!23735) (t!196338 mapDefault!12012))) b!2124333))

(declare-fun e!1353548 () Bool)

(assert (=> b!2123764 (= tp!650578 e!1353548)))

(declare-fun b!2124334 () Bool)

(declare-fun e!1353546 () Bool)

(declare-fun tp!650938 () Bool)

(assert (=> b!2124334 (= e!1353546 tp!650938)))

(declare-fun b!2124335 () Bool)

(declare-fun e!1353547 () Bool)

(declare-fun tp!650936 () Bool)

(assert (=> b!2124335 (= e!1353547 tp!650936)))

(declare-fun setElem!15154 () Context!2482)

(declare-fun setNonEmpty!15154 () Bool)

(declare-fun setRes!15154 () Bool)

(declare-fun tp!650937 () Bool)

(assert (=> setNonEmpty!15154 (= setRes!15154 (and tp!650937 (inv!31334 setElem!15154) e!1353546))))

(declare-fun setRest!15154 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15154 (= (_2!13621 (h!29137 (t!196339 mapValue!12021))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15154 true) setRest!15154))))

(declare-fun tp!650939 () Bool)

(declare-fun b!2124336 () Bool)

(assert (=> b!2124336 (= e!1353548 (and (inv!31334 (_1!13620 (_1!13621 (h!29137 (t!196339 mapValue!12021))))) e!1353547 tp_is_empty!9493 setRes!15154 tp!650939))))

(declare-fun condSetEmpty!15154 () Bool)

(assert (=> b!2124336 (= condSetEmpty!15154 (= (_2!13621 (h!29137 (t!196339 mapValue!12021))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15154 () Bool)

(assert (=> setIsEmpty!15154 setRes!15154))

(assert (= b!2124336 b!2124335))

(assert (= (and b!2124336 condSetEmpty!15154) setIsEmpty!15154))

(assert (= (and b!2124336 (not condSetEmpty!15154)) setNonEmpty!15154))

(assert (= setNonEmpty!15154 b!2124334))

(assert (= (and b!2123764 ((_ is Cons!23736) (t!196339 mapValue!12021))) b!2124336))

(declare-fun m!2577096 () Bool)

(assert (=> setNonEmpty!15154 m!2577096))

(declare-fun m!2577098 () Bool)

(assert (=> b!2124336 m!2577098))

(declare-fun b!2124337 () Bool)

(declare-fun e!1353549 () Bool)

(declare-fun setRes!15155 () Bool)

(assert (=> b!2124337 (= e!1353549 setRes!15155)))

(declare-fun condSetEmpty!15155 () Bool)

(assert (=> b!2124337 (= condSetEmpty!15155 (= (_2!13619 (h!29136 (t!196338 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15155 () Bool)

(assert (=> setIsEmpty!15155 setRes!15155))

(declare-fun setNonEmpty!15155 () Bool)

(assert (=> setNonEmpty!15155 (= setRes!15155 true)))

(declare-fun setElem!15155 () Context!2482)

(declare-fun setRest!15155 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15155 (= (_2!13619 (h!29136 (t!196338 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15155 true) setRest!15155))))

(assert (=> b!2123848 e!1353549))

(assert (= (and b!2124337 condSetEmpty!15155) setIsEmpty!15155))

(assert (= (and b!2124337 (not condSetEmpty!15155)) setNonEmpty!15155))

(assert (= (and b!2123848 ((_ is Cons!23735) (t!196338 (zeroValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))))) b!2124337))

(declare-fun b!2124338 () Bool)

(declare-fun e!1353550 () Bool)

(declare-fun tp!650940 () Bool)

(declare-fun tp!650941 () Bool)

(assert (=> b!2124338 (= e!1353550 (and tp!650940 tp!650941))))

(assert (=> b!2123767 (= tp!650589 e!1353550)))

(assert (= (and b!2123767 ((_ is Cons!23734) (exprs!1741 setElem!15035))) b!2124338))

(declare-fun condSetEmpty!15156 () Bool)

(assert (=> setNonEmpty!15063 (= condSetEmpty!15156 (= setRest!15063 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15156 () Bool)

(assert (=> setNonEmpty!15063 (= tp!650671 setRes!15156)))

(declare-fun setIsEmpty!15156 () Bool)

(assert (=> setIsEmpty!15156 setRes!15156))

(declare-fun setNonEmpty!15156 () Bool)

(declare-fun tp!650943 () Bool)

(declare-fun setElem!15156 () Context!2482)

(declare-fun e!1353551 () Bool)

(assert (=> setNonEmpty!15156 (= setRes!15156 (and tp!650943 (inv!31334 setElem!15156) e!1353551))))

(declare-fun setRest!15156 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15156 (= setRest!15063 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15156 true) setRest!15156))))

(declare-fun b!2124339 () Bool)

(declare-fun tp!650942 () Bool)

(assert (=> b!2124339 (= e!1353551 tp!650942)))

(assert (= (and setNonEmpty!15063 condSetEmpty!15156) setIsEmpty!15156))

(assert (= (and setNonEmpty!15063 (not condSetEmpty!15156)) setNonEmpty!15156))

(assert (= setNonEmpty!15156 b!2124339))

(declare-fun m!2577100 () Bool)

(assert (=> setNonEmpty!15156 m!2577100))

(declare-fun condSetEmpty!15157 () Bool)

(assert (=> setNonEmpty!15021 (= condSetEmpty!15157 (= setRest!15021 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15157 () Bool)

(assert (=> setNonEmpty!15021 setRes!15157))

(declare-fun setIsEmpty!15157 () Bool)

(assert (=> setIsEmpty!15157 setRes!15157))

(declare-fun setNonEmpty!15157 () Bool)

(assert (=> setNonEmpty!15157 (= setRes!15157 true)))

(declare-fun setElem!15157 () Context!2482)

(declare-fun setRest!15157 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15157 (= setRest!15021 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15157 true) setRest!15157))))

(assert (= (and setNonEmpty!15021 condSetEmpty!15157) setIsEmpty!15157))

(assert (= (and setNonEmpty!15021 (not condSetEmpty!15157)) setNonEmpty!15157))

(declare-fun condSetEmpty!15158 () Bool)

(assert (=> setNonEmpty!15062 (= condSetEmpty!15158 (= setRest!15062 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15158 () Bool)

(assert (=> setNonEmpty!15062 (= tp!650666 setRes!15158)))

(declare-fun setIsEmpty!15158 () Bool)

(assert (=> setIsEmpty!15158 setRes!15158))

(declare-fun tp!650945 () Bool)

(declare-fun setNonEmpty!15158 () Bool)

(declare-fun setElem!15158 () Context!2482)

(declare-fun e!1353552 () Bool)

(assert (=> setNonEmpty!15158 (= setRes!15158 (and tp!650945 (inv!31334 setElem!15158) e!1353552))))

(declare-fun setRest!15158 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15158 (= setRest!15062 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15158 true) setRest!15158))))

(declare-fun b!2124340 () Bool)

(declare-fun tp!650944 () Bool)

(assert (=> b!2124340 (= e!1353552 tp!650944)))

(assert (= (and setNonEmpty!15062 condSetEmpty!15158) setIsEmpty!15158))

(assert (= (and setNonEmpty!15062 (not condSetEmpty!15158)) setNonEmpty!15158))

(assert (= setNonEmpty!15158 b!2124340))

(declare-fun m!2577102 () Bool)

(assert (=> setNonEmpty!15158 m!2577102))

(declare-fun e!1353553 () Bool)

(assert (=> b!2123746 (= tp!650558 e!1353553)))

(declare-fun b!2124343 () Bool)

(declare-fun tp!650948 () Bool)

(assert (=> b!2124343 (= e!1353553 tp!650948)))

(declare-fun b!2124341 () Bool)

(assert (=> b!2124341 (= e!1353553 tp_is_empty!9493)))

(declare-fun b!2124344 () Bool)

(declare-fun tp!650950 () Bool)

(declare-fun tp!650946 () Bool)

(assert (=> b!2124344 (= e!1353553 (and tp!650950 tp!650946))))

(declare-fun b!2124342 () Bool)

(declare-fun tp!650947 () Bool)

(declare-fun tp!650949 () Bool)

(assert (=> b!2124342 (= e!1353553 (and tp!650947 tp!650949))))

(assert (= (and b!2123746 ((_ is ElementMatch!5671) (h!29135 (exprs!1741 setElem!15007)))) b!2124341))

(assert (= (and b!2123746 ((_ is Concat!9973) (h!29135 (exprs!1741 setElem!15007)))) b!2124342))

(assert (= (and b!2123746 ((_ is Star!5671) (h!29135 (exprs!1741 setElem!15007)))) b!2124343))

(assert (= (and b!2123746 ((_ is Union!5671) (h!29135 (exprs!1741 setElem!15007)))) b!2124344))

(declare-fun b!2124345 () Bool)

(declare-fun e!1353554 () Bool)

(declare-fun tp!650951 () Bool)

(declare-fun tp!650952 () Bool)

(assert (=> b!2124345 (= e!1353554 (and tp!650951 tp!650952))))

(assert (=> b!2123746 (= tp!650559 e!1353554)))

(assert (= (and b!2123746 ((_ is Cons!23734) (t!196337 (exprs!1741 setElem!15007)))) b!2124345))

(declare-fun e!1353555 () Bool)

(assert (=> b!2123818 (= tp!650641 e!1353555)))

(declare-fun b!2124348 () Bool)

(declare-fun tp!650955 () Bool)

(assert (=> b!2124348 (= e!1353555 tp!650955)))

(declare-fun b!2124346 () Bool)

(assert (=> b!2124346 (= e!1353555 tp_is_empty!9493)))

(declare-fun b!2124349 () Bool)

(declare-fun tp!650957 () Bool)

(declare-fun tp!650953 () Bool)

(assert (=> b!2124349 (= e!1353555 (and tp!650957 tp!650953))))

(declare-fun b!2124347 () Bool)

(declare-fun tp!650954 () Bool)

(declare-fun tp!650956 () Bool)

(assert (=> b!2124347 (= e!1353555 (and tp!650954 tp!650956))))

(assert (= (and b!2123818 ((_ is ElementMatch!5671) (_1!13618 (_1!13619 (h!29136 mapDefault!12027))))) b!2124346))

(assert (= (and b!2123818 ((_ is Concat!9973) (_1!13618 (_1!13619 (h!29136 mapDefault!12027))))) b!2124347))

(assert (= (and b!2123818 ((_ is Star!5671) (_1!13618 (_1!13619 (h!29136 mapDefault!12027))))) b!2124348))

(assert (= (and b!2123818 ((_ is Union!5671) (_1!13618 (_1!13619 (h!29136 mapDefault!12027))))) b!2124349))

(declare-fun e!1353557 () Bool)

(assert (=> b!2123818 (= tp!650635 e!1353557)))

(declare-fun b!2124350 () Bool)

(declare-fun e!1353556 () Bool)

(declare-fun tp!650962 () Bool)

(assert (=> b!2124350 (= e!1353556 tp!650962)))

(declare-fun tp!650958 () Bool)

(declare-fun setRes!15159 () Bool)

(declare-fun setNonEmpty!15159 () Bool)

(declare-fun setElem!15159 () Context!2482)

(assert (=> setNonEmpty!15159 (= setRes!15159 (and tp!650958 (inv!31334 setElem!15159) e!1353556))))

(declare-fun setRest!15159 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15159 (= (_2!13619 (h!29136 (t!196338 mapDefault!12027))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15159 true) setRest!15159))))

(declare-fun setIsEmpty!15159 () Bool)

(assert (=> setIsEmpty!15159 setRes!15159))

(declare-fun b!2124351 () Bool)

(declare-fun e!1353558 () Bool)

(declare-fun tp!650960 () Bool)

(assert (=> b!2124351 (= e!1353558 tp!650960)))

(declare-fun b!2124352 () Bool)

(declare-fun tp!650959 () Bool)

(declare-fun tp!650961 () Bool)

(assert (=> b!2124352 (= e!1353557 (and tp!650961 (inv!31334 (_2!13618 (_1!13619 (h!29136 (t!196338 mapDefault!12027))))) e!1353558 tp_is_empty!9493 setRes!15159 tp!650959))))

(declare-fun condSetEmpty!15159 () Bool)

(assert (=> b!2124352 (= condSetEmpty!15159 (= (_2!13619 (h!29136 (t!196338 mapDefault!12027))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= b!2124352 b!2124351))

(assert (= (and b!2124352 condSetEmpty!15159) setIsEmpty!15159))

(assert (= (and b!2124352 (not condSetEmpty!15159)) setNonEmpty!15159))

(assert (= setNonEmpty!15159 b!2124350))

(assert (= (and b!2123818 ((_ is Cons!23735) (t!196338 mapDefault!12027))) b!2124352))

(declare-fun m!2577104 () Bool)

(assert (=> setNonEmpty!15159 m!2577104))

(declare-fun m!2577106 () Bool)

(assert (=> b!2124352 m!2577106))

(declare-fun condSetEmpty!15160 () Bool)

(assert (=> setNonEmpty!15028 (= condSetEmpty!15160 (= setRest!15028 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15160 () Bool)

(assert (=> setNonEmpty!15028 (= tp!650552 setRes!15160)))

(declare-fun setIsEmpty!15160 () Bool)

(assert (=> setIsEmpty!15160 setRes!15160))

(declare-fun tp!650964 () Bool)

(declare-fun setElem!15160 () Context!2482)

(declare-fun setNonEmpty!15160 () Bool)

(declare-fun e!1353559 () Bool)

(assert (=> setNonEmpty!15160 (= setRes!15160 (and tp!650964 (inv!31334 setElem!15160) e!1353559))))

(declare-fun setRest!15160 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15160 (= setRest!15028 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15160 true) setRest!15160))))

(declare-fun b!2124353 () Bool)

(declare-fun tp!650963 () Bool)

(assert (=> b!2124353 (= e!1353559 tp!650963)))

(assert (= (and setNonEmpty!15028 condSetEmpty!15160) setIsEmpty!15160))

(assert (= (and setNonEmpty!15028 (not condSetEmpty!15160)) setNonEmpty!15160))

(assert (= setNonEmpty!15160 b!2124353))

(declare-fun m!2577108 () Bool)

(assert (=> setNonEmpty!15160 m!2577108))

(declare-fun condSetEmpty!15161 () Bool)

(assert (=> setNonEmpty!15039 (= condSetEmpty!15161 (= setRest!15039 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15161 () Bool)

(assert (=> setNonEmpty!15039 setRes!15161))

(declare-fun setIsEmpty!15161 () Bool)

(assert (=> setIsEmpty!15161 setRes!15161))

(declare-fun setNonEmpty!15161 () Bool)

(assert (=> setNonEmpty!15161 (= setRes!15161 true)))

(declare-fun setElem!15161 () Context!2482)

(declare-fun setRest!15161 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15161 (= setRest!15039 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15161 true) setRest!15161))))

(assert (= (and setNonEmpty!15039 condSetEmpty!15161) setIsEmpty!15161))

(assert (= (and setNonEmpty!15039 (not condSetEmpty!15161)) setNonEmpty!15161))

(declare-fun condSetEmpty!15162 () Bool)

(assert (=> setNonEmpty!15061 (= condSetEmpty!15162 (= setRest!15061 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15162 () Bool)

(assert (=> setNonEmpty!15061 (= tp!650661 setRes!15162)))

(declare-fun setIsEmpty!15162 () Bool)

(assert (=> setIsEmpty!15162 setRes!15162))

(declare-fun e!1353560 () Bool)

(declare-fun setNonEmpty!15162 () Bool)

(declare-fun setElem!15162 () Context!2482)

(declare-fun tp!650966 () Bool)

(assert (=> setNonEmpty!15162 (= setRes!15162 (and tp!650966 (inv!31334 setElem!15162) e!1353560))))

(declare-fun setRest!15162 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15162 (= setRest!15061 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15162 true) setRest!15162))))

(declare-fun b!2124354 () Bool)

(declare-fun tp!650965 () Bool)

(assert (=> b!2124354 (= e!1353560 tp!650965)))

(assert (= (and setNonEmpty!15061 condSetEmpty!15162) setIsEmpty!15162))

(assert (= (and setNonEmpty!15061 (not condSetEmpty!15162)) setNonEmpty!15162))

(assert (= setNonEmpty!15162 b!2124354))

(declare-fun m!2577110 () Bool)

(assert (=> setNonEmpty!15162 m!2577110))

(declare-fun b!2124355 () Bool)

(declare-fun e!1353561 () Bool)

(declare-fun tp!650967 () Bool)

(declare-fun tp!650968 () Bool)

(assert (=> b!2124355 (= e!1353561 (and tp!650967 tp!650968))))

(assert (=> b!2123715 (= tp!650537 e!1353561)))

(assert (= (and b!2123715 ((_ is Cons!23734) (exprs!1741 (_1!13620 (_1!13621 (h!29137 (zeroValue!2724 (v!28266 (underlying!5126 (v!28267 (underlying!5127 (cache!2760 cacheUp!991)))))))))))) b!2124355))

(declare-fun setIsEmpty!15163 () Bool)

(declare-fun setRes!15163 () Bool)

(assert (=> setIsEmpty!15163 setRes!15163))

(declare-fun setElem!15163 () Context!2482)

(declare-fun setNonEmpty!15163 () Bool)

(declare-fun tp!650970 () Bool)

(declare-fun e!1353563 () Bool)

(assert (=> setNonEmpty!15163 (= setRes!15163 (and tp!650970 (inv!31334 setElem!15163) e!1353563))))

(declare-fun setRest!15163 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15163 (= (_1!13624 (_1!13625 (h!29140 (t!196342 mapValue!12007)))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15163 true) setRest!15163))))

(declare-fun e!1353562 () Bool)

(assert (=> b!2123867 (= tp!650700 e!1353562)))

(declare-fun b!2124357 () Bool)

(declare-fun tp!650971 () Bool)

(assert (=> b!2124357 (= e!1353563 tp!650971)))

(declare-fun b!2124356 () Bool)

(declare-fun tp!650969 () Bool)

(assert (=> b!2124356 (= e!1353562 (and setRes!15163 tp!650969))))

(declare-fun condSetEmpty!15163 () Bool)

(assert (=> b!2124356 (= condSetEmpty!15163 (= (_1!13624 (_1!13625 (h!29140 (t!196342 mapValue!12007)))) ((as const (Array Context!2482 Bool)) false)))))

(assert (= (and b!2124356 condSetEmpty!15163) setIsEmpty!15163))

(assert (= (and b!2124356 (not condSetEmpty!15163)) setNonEmpty!15163))

(assert (= setNonEmpty!15163 b!2124357))

(assert (= (and b!2123867 ((_ is Cons!23739) (t!196342 mapValue!12007))) b!2124356))

(declare-fun m!2577112 () Bool)

(assert (=> setNonEmpty!15163 m!2577112))

(declare-fun condSetEmpty!15164 () Bool)

(assert (=> setNonEmpty!15015 (= condSetEmpty!15164 (= setRest!15015 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15164 () Bool)

(assert (=> setNonEmpty!15015 (= tp!650542 setRes!15164)))

(declare-fun setIsEmpty!15164 () Bool)

(assert (=> setIsEmpty!15164 setRes!15164))

(declare-fun setNonEmpty!15164 () Bool)

(declare-fun tp!650973 () Bool)

(declare-fun setElem!15164 () Context!2482)

(declare-fun e!1353564 () Bool)

(assert (=> setNonEmpty!15164 (= setRes!15164 (and tp!650973 (inv!31334 setElem!15164) e!1353564))))

(declare-fun setRest!15164 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15164 (= setRest!15015 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15164 true) setRest!15164))))

(declare-fun b!2124358 () Bool)

(declare-fun tp!650972 () Bool)

(assert (=> b!2124358 (= e!1353564 tp!650972)))

(assert (= (and setNonEmpty!15015 condSetEmpty!15164) setIsEmpty!15164))

(assert (= (and setNonEmpty!15015 (not condSetEmpty!15164)) setNonEmpty!15164))

(assert (= setNonEmpty!15164 b!2124358))

(declare-fun m!2577114 () Bool)

(assert (=> setNonEmpty!15164 m!2577114))

(declare-fun condSetEmpty!15165 () Bool)

(assert (=> setNonEmpty!15047 (= condSetEmpty!15165 (= setRest!15048 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15165 () Bool)

(assert (=> setNonEmpty!15047 setRes!15165))

(declare-fun setIsEmpty!15165 () Bool)

(assert (=> setIsEmpty!15165 setRes!15165))

(declare-fun setNonEmpty!15165 () Bool)

(assert (=> setNonEmpty!15165 (= setRes!15165 true)))

(declare-fun setElem!15165 () Context!2482)

(declare-fun setRest!15165 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15165 (= setRest!15048 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15165 true) setRest!15165))))

(assert (= (and setNonEmpty!15047 condSetEmpty!15165) setIsEmpty!15165))

(assert (= (and setNonEmpty!15047 (not condSetEmpty!15165)) setNonEmpty!15165))

(declare-fun condSetEmpty!15166 () Bool)

(assert (=> setNonEmpty!15072 (= condSetEmpty!15166 (= setRest!15072 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15166 () Bool)

(assert (=> setNonEmpty!15072 (= tp!650697 setRes!15166)))

(declare-fun setIsEmpty!15166 () Bool)

(assert (=> setIsEmpty!15166 setRes!15166))

(declare-fun setNonEmpty!15166 () Bool)

(declare-fun tp!650975 () Bool)

(declare-fun setElem!15166 () Context!2482)

(declare-fun e!1353565 () Bool)

(assert (=> setNonEmpty!15166 (= setRes!15166 (and tp!650975 (inv!31334 setElem!15166) e!1353565))))

(declare-fun setRest!15166 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15166 (= setRest!15072 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15166 true) setRest!15166))))

(declare-fun b!2124359 () Bool)

(declare-fun tp!650974 () Bool)

(assert (=> b!2124359 (= e!1353565 tp!650974)))

(assert (= (and setNonEmpty!15072 condSetEmpty!15166) setIsEmpty!15166))

(assert (= (and setNonEmpty!15072 (not condSetEmpty!15166)) setNonEmpty!15166))

(assert (= setNonEmpty!15166 b!2124359))

(declare-fun m!2577116 () Bool)

(assert (=> setNonEmpty!15166 m!2577116))

(declare-fun b!2124360 () Bool)

(declare-fun e!1353566 () Bool)

(declare-fun setRes!15167 () Bool)

(assert (=> b!2124360 (= e!1353566 setRes!15167)))

(declare-fun condSetEmpty!15167 () Bool)

(assert (=> b!2124360 (= condSetEmpty!15167 (= (_2!13619 (h!29136 (t!196338 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15167 () Bool)

(assert (=> setIsEmpty!15167 setRes!15167))

(declare-fun setNonEmpty!15167 () Bool)

(assert (=> setNonEmpty!15167 (= setRes!15167 true)))

(declare-fun setElem!15167 () Context!2482)

(declare-fun setRest!15167 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15167 (= (_2!13619 (h!29136 (t!196338 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15167 true) setRest!15167))))

(assert (=> b!2123849 e!1353566))

(assert (= (and b!2124360 condSetEmpty!15167) setIsEmpty!15167))

(assert (= (and b!2124360 (not condSetEmpty!15167)) setNonEmpty!15167))

(assert (= (and b!2123849 ((_ is Cons!23735) (t!196338 (minValue!2723 (v!28264 (underlying!5125 (v!28265 (underlying!5128 (cache!2761 (_3!1938 lt!795247)))))))))) b!2124360))

(declare-fun b!2124361 () Bool)

(declare-fun e!1353568 () Bool)

(declare-fun e!1353567 () Bool)

(assert (=> b!2124361 (= e!1353568 e!1353567)))

(declare-fun b!2124362 () Bool)

(declare-fun setRes!15168 () Bool)

(assert (=> b!2124362 (= e!1353567 setRes!15168)))

(declare-fun condSetEmpty!15168 () Bool)

(assert (=> b!2124362 (= condSetEmpty!15168 (= (z!5735 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795298))))) ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setIsEmpty!15168 () Bool)

(assert (=> setIsEmpty!15168 setRes!15168))

(assert (=> b!2123653 e!1353568))

(declare-fun setNonEmpty!15168 () Bool)

(assert (=> setNonEmpty!15168 (= setRes!15168 true)))

(declare-fun setElem!15168 () Context!2482)

(declare-fun setRest!15168 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15168 (= (z!5735 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795298))))) ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15168 true) setRest!15168))))

(assert (= (and b!2124362 condSetEmpty!15168) setIsEmpty!15168))

(assert (= (and b!2124362 (not condSetEmpty!15168)) setNonEmpty!15168))

(assert (= b!2124361 b!2124362))

(assert (= (and b!2123653 ((_ is Cons!23738) (t!196341 (_2!13622 (_1!13623 lt!795298))))) b!2124361))

(declare-fun condSetEmpty!15169 () Bool)

(assert (=> setNonEmpty!15078 (= condSetEmpty!15169 (= setRest!15078 ((as const (Array Context!2482 Bool)) false)))))

(declare-fun setRes!15169 () Bool)

(assert (=> setNonEmpty!15078 setRes!15169))

(declare-fun setIsEmpty!15169 () Bool)

(assert (=> setIsEmpty!15169 setRes!15169))

(declare-fun setNonEmpty!15169 () Bool)

(assert (=> setNonEmpty!15169 (= setRes!15169 true)))

(declare-fun setElem!15169 () Context!2482)

(declare-fun setRest!15169 () (InoxSet Context!2482))

(assert (=> setNonEmpty!15169 (= setRest!15078 ((_ map or) (store ((as const (Array Context!2482 Bool)) false) setElem!15169 true) setRest!15169))))

(assert (= (and setNonEmpty!15078 condSetEmpty!15169) setIsEmpty!15169))

(assert (= (and setNonEmpty!15078 (not condSetEmpty!15169)) setNonEmpty!15169))

(declare-fun b!2124363 () Bool)

(declare-fun e!1353569 () Bool)

(declare-fun tp!650976 () Bool)

(declare-fun tp!650977 () Bool)

(assert (=> b!2124363 (= e!1353569 (and tp!650976 tp!650977))))

(assert (=> b!2123821 (= tp!650639 e!1353569)))

(assert (= (and b!2123821 ((_ is Cons!23734) (exprs!1741 setElem!15057))) b!2124363))

(declare-fun b_lambda!70505 () Bool)

(assert (= b_lambda!70503 (or d!643641 b_lambda!70505)))

(declare-fun bs!443449 () Bool)

(declare-fun d!643827 () Bool)

(assert (= bs!443449 (and d!643827 d!643641)))

(declare-fun validRegex!2231 (Regex!5671) Bool)

(assert (=> bs!443449 (= (dynLambda!11345 lambda!78680 (h!29135 (exprs!1741 setElem!15007))) (validRegex!2231 (h!29135 (exprs!1741 setElem!15007))))))

(declare-fun m!2577118 () Bool)

(assert (=> bs!443449 m!2577118))

(assert (=> b!2124076 d!643827))

(declare-fun b_lambda!70507 () Bool)

(assert (= b_lambda!70501 (or d!643595 b_lambda!70507)))

(declare-fun bs!443450 () Bool)

(declare-fun d!643829 () Bool)

(assert (= bs!443450 (and d!643829 d!643595)))

(assert (=> bs!443450 (= (dynLambda!11344 lambda!78673 (h!29139 Nil!23738)) (= (res!919411 (h!29139 Nil!23738)) lt!795305))))

(assert (=> b!2124052 d!643829))

(declare-fun b_lambda!70509 () Bool)

(assert (= b_lambda!70491 (or b!2123631 b_lambda!70509)))

(declare-fun bs!443451 () Bool)

(declare-fun d!643831 () Bool)

(assert (= bs!443451 (and d!643831 b!2123631)))

(assert (=> bs!443451 (= (dynLambda!11344 lambda!78676 (h!29139 (_2!13622 (_1!13623 lt!795298)))) (= (res!919411 (h!29139 (_2!13622 (_1!13623 lt!795298)))) (_1!13622 (_1!13623 lt!795298))))))

(assert (=> b!2124001 d!643831))

(declare-fun b_lambda!70511 () Bool)

(assert (= b_lambda!70495 (or b!2123639 b_lambda!70511)))

(declare-fun bs!443452 () Bool)

(declare-fun d!643833 () Bool)

(assert (= bs!443452 (and d!643833 b!2123639)))

(assert (=> bs!443452 (= (dynLambda!11344 lambda!78677 (h!29139 (_2!13622 (_1!13623 lt!795298)))) (= (totalInput!2920 (h!29139 (_2!13622 (_1!13623 lt!795298)))) totalInput!886))))

(assert (=> b!2124023 d!643833))

(declare-fun b_lambda!70513 () Bool)

(assert (= b_lambda!70493 (or b!2123521 b_lambda!70513)))

(declare-fun bs!443453 () Bool)

(declare-fun d!643835 () Bool)

(assert (= bs!443453 (and d!643835 b!2123521)))

(assert (=> bs!443453 (= (dynLambda!11344 lambda!78654 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) (= (res!919411 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) (_1!13622 (_1!13623 lt!795247))))))

(assert (=> b!2124021 d!643835))

(declare-fun b_lambda!70515 () Bool)

(assert (= b_lambda!70489 (or b!2123497 b_lambda!70515)))

(declare-fun bs!443454 () Bool)

(declare-fun d!643837 () Bool)

(assert (= bs!443454 (and d!643837 b!2123497)))

(assert (=> bs!443454 (= (dynLambda!11344 lambda!78655 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) (= (totalInput!2920 (h!29139 (t!196341 (_2!13622 (_1!13623 lt!795247))))) totalInput!886))))

(assert (=> b!2123993 d!643837))

(check-sat (not b!2124268) (not setNonEmpty!15095) (not b!2124157) (not setNonEmpty!15121) (not b!2124212) (not b!2124345) (not b!2124006) (not b!2124222) (not d!643665) tp_is_empty!9493 (not b_lambda!70497) (not b!2123896) (not mapNonEmpty!12038) (not b!2124278) (not b!2124230) (not b!2124045) (not setNonEmpty!15107) (not b!2124041) (not setNonEmpty!15165) (not b!2123968) (not setNonEmpty!15152) (not setNonEmpty!15102) (not d!643777) (not b!2124234) (not b!2123987) (not b!2124178) (not b!2124340) (not b!2124146) (not setNonEmpty!15104) (not b!2124128) (not b!2123890) (not mapNonEmpty!12035) (not b_lambda!70487) (not setNonEmpty!15157) (not setNonEmpty!15101) (not setNonEmpty!15163) (not setNonEmpty!15139) (not b!2124252) (not b!2124188) (not b!2124272) (not d!643817) (not b!2124347) (not b!2124282) (not b!2124175) (not b!2124208) (not setNonEmpty!15148) (not b!2124143) (not d!643807) (not setNonEmpty!15125) (not mapNonEmpty!12031) (not b!2124132) (not b!2124130) (not b!2124003) (not d!643717) (not b!2124359) (not b!2124311) (not b!2124244) (not d!643747) (not b!2124177) (not setNonEmpty!15156) (not setNonEmpty!15103) (not b!2124334) (not b!2124088) (not b!2124310) (not b!2124237) (not setNonEmpty!15090) (not b!2124145) (not b!2124332) (not b!2124181) (not b!2124185) (not b!2124119) (not d!643769) (not d!643709) (not b!2123995) (not b!2124326) (not d!643771) (not setNonEmpty!15105) (not b!2123897) (not setNonEmpty!15144) (not bs!443449) (not setNonEmpty!15131) (not b_next!62417) (not setNonEmpty!15149) (not b!2123998) (not b!2124355) (not b!2124286) (not b!2124039) (not b!2124007) (not b!2124276) (not mapNonEmpty!12036) (not b!2124014) (not b!2124109) (not b!2123979) (not b!2124199) (not b!2123970) (not d!643789) (not b!2124351) (not b!2124196) (not b!2124197) (not b!2124312) (not d!643793) (not d!643825) (not b!2124267) (not d!643703) (not b!2124344) (not b!2124363) (not b!2124283) (not setNonEmpty!15132) (not setNonEmpty!15145) (not b!2124200) (not b_lambda!70511) (not b!2124140) (not setNonEmpty!15160) (not b!2124112) (not b!2124210) (not b!2124179) (not b!2124172) (not d!643813) (not b!2124225) (not setNonEmpty!15153) (not b!2124256) (not b!2124274) (not b!2123900) (not b!2124105) (not b!2124108) (not b!2124049) (not setNonEmpty!15159) (not b!2124266) (not b!2124242) (not b!2124219) (not b!2124284) (not b!2124138) (not b!2124235) (not b!2124353) (not b!2123985) (not b!2124223) (not b!2124206) (not setNonEmpty!15100) (not mapNonEmpty!12032) (not setNonEmpty!15146) (not setNonEmpty!15108) (not b_next!62419) (not d!643781) (not d!643801) (not b!2124249) (not setNonEmpty!15137) (not b!2124214) b_and!171289 (not d!643711) (not setNonEmpty!15134) (not b!2124243) (not setNonEmpty!15089) (not setNonEmpty!15083) (not b!2124182) (not b_lambda!70507) (not mapNonEmpty!12037) (not b!2123925) (not d!643651) (not b!2124218) (not d!643663) (not d!643735) (not b!2124358) (not setNonEmpty!15091) (not b!2124224) (not b!2123903) (not setNonEmpty!15129) (not b!2124195) (not d!643683) (not b!2124251) (not b!2124028) (not b!2124011) (not b!2124043) (not bm!128715) (not d!643805) (not setNonEmpty!15115) (not b!2124187) (not b!2124134) (not b!2124059) (not b!2124004) (not d!643659) (not b!2124258) (not d!643751) (not b!2124156) (not setNonEmpty!15093) (not d!643783) (not setNonEmpty!15161) (not setNonEmpty!15106) (not b!2124213) (not b!2124279) (not b!2124149) (not b!2124009) (not d!643795) (not b!2124070) (not d!643803) (not setNonEmpty!15150) (not b!2124116) (not b!2124142) (not setNonEmpty!15112) (not b!2124065) (not b!2124053) (not b!2123996) (not bm!128705) (not b!2124239) (not d!643791) (not d!643685) (not b!2123981) (not d!643649) (not setNonEmpty!15135) (not b!2124125) (not setNonEmpty!15147) (not d!643719) (not b!2124158) (not b!2124148) (not setNonEmpty!15097) (not b!2124275) (not b!2124136) (not b!2124324) (not b!2124002) (not b!2124133) (not b!2124189) (not setNonEmpty!15096) (not b!2123902) (not b!2124204) (not d!643815) (not d!643809) (not b!2124228) (not b!2123930) (not setNonEmpty!15158) (not setNonEmpty!15168) (not b!2124335) (not b!2124361) (not b!2124216) (not b!2123905) (not b!2123943) (not setNonEmpty!15143) (not b!2124106) (not b!2124078) (not b!2124253) (not setNonEmpty!15164) (not b!2124360) b_and!171293 (not b!2124339) (not b!2124040) (not b!2124056) (not b!2124232) (not b!2123915) (not d!643763) (not b_lambda!70509) (not setNonEmpty!15169) b_and!171291 (not b!2123921) (not b!2124110) (not d!643799) (not b!2124356) (not d!643821) (not setNonEmpty!15126) (not b!2124141) (not b!2123994) (not b!2124271) (not b!2123991) (not b!2124152) (not b!2124139) (not setNonEmpty!15119) (not b!2124083) (not b!2124337) (not b!2124215) (not setNonEmpty!15082) (not d!643653) (not b!2124333) (not b_next!62423) (not b!2124264) (not b!2124338) (not b!2124097) (not b!2124124) (not b!2124135) (not b!2124348) (not bm!128704) (not setNonEmpty!15123) (not b!2124019) (not b!2124265) (not b!2124209) (not b!2124058) b_and!171295 (not setNonEmpty!15085) (not b!2124022) (not b!2123999) (not b!2124042) (not d!643705) (not setNonEmpty!15151) (not d!643785) (not b!2124238) (not bm!128709) (not b!2124270) (not b!2124285) (not setNonEmpty!15136) (not b!2124342) (not d!643775) (not b!2124020) (not d!643773) (not b!2124328) (not b!2124248) (not b!2124231) b_and!171297 (not setNonEmpty!15166) (not b!2124289) (not b!2124255) (not setNonEmpty!15111) (not d!643765) (not d!643753) (not b!2124044) (not b!2124137) (not d!643819) (not b!2124191) (not d!643741) (not b_lambda!70499) (not b!2124247) (not setNonEmpty!15130) (not b!2124202) (not b!2124176) (not d!643749) (not b!2124111) (not b!2124147) (not b!2124357) (not b!2124121) (not d!643657) (not setNonEmpty!15098) (not b!2124350) (not b_lambda!70485) (not b!2124226) (not b!2124220) (not b_next!62415) (not b!2124343) (not b_next!62413) (not b!2123916) (not d!643667) (not setNonEmpty!15127) (not b!2124287) (not b!2124173) (not b!2124123) (not b!2124193) (not b!2124331) (not b!2123835) (not b!2124257) (not mapNonEmpty!12039) (not b!2124160) (not b!2124325) (not b!2123850) (not setNonEmpty!15084) (not setNonEmpty!15142) (not b!2124064) (not b_lambda!70515) (not b!2124207) (not b!2124241) (not b!2124129) (not b!2123891) (not d!643755) (not b!2124330) (not setNonEmpty!15086) (not b!2124352) (not b!2124126) (not setNonEmpty!15133) (not bm!128706) (not setNonEmpty!15117) (not b!2124144) (not b!2124280) (not setNonEmpty!15099) (not b!2124071) (not b!2124077) (not setNonEmpty!15167) (not b!2124281) (not b!2124153) (not b_lambda!70505) (not b!2124107) (not b!2124080) (not b!2124259) (not b!2124250) (not b!2124211) (not setNonEmpty!15116) (not setNonEmpty!15109) (not setNonEmpty!15094) (not b!2124201) (not mapNonEmpty!12034) (not b!2124349) (not setNonEmpty!15087) (not mapNonEmpty!12033) (not b!2124354) (not b!2124180) (not setNonEmpty!15081) (not setNonEmpty!15140) (not b!2124288) (not b!2124233) (not setNonEmpty!15122) (not d!643811) (not b!2123895) (not b_next!62421) (not b!2124254) (not setNonEmpty!15113) (not b!2124240) (not b!2123944) (not setNonEmpty!15110) (not b!2124186) (not b!2124229) (not d!643671) (not b!2124159) (not d!643655) (not b!2124131) (not b!2124329) (not b!2123982) (not setNonEmpty!15114) (not setNonEmpty!15088) (not b!2124269) (not b!2124327) (not setNonEmpty!15128) (not b!2124150) (not setNonEmpty!15141) (not b!2124203) (not b!2124194) (not b!2123997) (not setNonEmpty!15120) (not d!643767) b_and!171299 (not b!2124081) (not b!2123984) (not setNonEmpty!15162) (not d!643707) (not setNonEmpty!15138) (not b!2123931) (not setNonEmpty!15124) (not b!2124273) (not d!643797) (not b!2123778) (not b!2124205) (not b!2123989) (not b!2124026) (not setNonEmpty!15092) (not d!643677) (not b!2124151) (not b!2124113) (not b!2124046) (not setNonEmpty!15118) (not b!2124217) (not b!2124192) (not d!643661) (not setNonEmpty!15154) (not b!2124236) (not b!2124198) (not d!643713) (not d!643823) (not d!643721) (not b!2124155) (not b!2123917) (not b!2124336) (not b!2124048) (not setNonEmpty!15155) (not b!2124024) (not bm!128714) (not b!2124012) (not b!2123910) (not b!2124174) (not b!2124127) (not b!2124000) (not b!2124245) (not d!643787) (not b!2124184) (not b_lambda!70513) (not b!2124008) (not b!2124005) (not d!643727) (not b!2124227) (not b!2124154))
(check-sat (not b_next!62417) (not b_next!62419) b_and!171289 (not b_next!62423) b_and!171295 b_and!171297 (not b_next!62421) b_and!171299 b_and!171293 b_and!171291 (not b_next!62415) (not b_next!62413))
