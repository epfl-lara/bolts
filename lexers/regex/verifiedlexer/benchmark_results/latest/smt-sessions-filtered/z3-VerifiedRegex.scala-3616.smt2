; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207504 () Bool)

(assert start!207504)

(declare-fun b!2129410 () Bool)

(declare-fun b_free!62045 () Bool)

(declare-fun b_next!62749 () Bool)

(assert (=> b!2129410 (= b_free!62045 (not b_next!62749))))

(declare-fun tp!654266 () Bool)

(declare-fun b_and!171625 () Bool)

(assert (=> b!2129410 (= tp!654266 b_and!171625)))

(declare-fun b!2129417 () Bool)

(declare-fun b_free!62047 () Bool)

(declare-fun b_next!62751 () Bool)

(assert (=> b!2129417 (= b_free!62047 (not b_next!62751))))

(declare-fun tp!654288 () Bool)

(declare-fun b_and!171627 () Bool)

(assert (=> b!2129417 (= tp!654288 b_and!171627)))

(declare-fun b!2129397 () Bool)

(declare-fun b_free!62049 () Bool)

(declare-fun b_next!62753 () Bool)

(assert (=> b!2129397 (= b_free!62049 (not b_next!62753))))

(declare-fun tp!654280 () Bool)

(declare-fun b_and!171629 () Bool)

(assert (=> b!2129397 (= tp!654280 b_and!171629)))

(declare-fun b!2129412 () Bool)

(declare-fun b_free!62051 () Bool)

(declare-fun b_next!62755 () Bool)

(assert (=> b!2129412 (= b_free!62051 (not b_next!62755))))

(declare-fun tp!654286 () Bool)

(declare-fun b_and!171631 () Bool)

(assert (=> b!2129412 (= tp!654286 b_and!171631)))

(declare-fun b!2129394 () Bool)

(declare-fun b_free!62053 () Bool)

(declare-fun b_next!62757 () Bool)

(assert (=> b!2129394 (= b_free!62053 (not b_next!62757))))

(declare-fun tp!654272 () Bool)

(declare-fun b_and!171633 () Bool)

(assert (=> b!2129394 (= tp!654272 b_and!171633)))

(declare-fun b!2129405 () Bool)

(declare-fun b_free!62055 () Bool)

(declare-fun b_next!62759 () Bool)

(assert (=> b!2129405 (= b_free!62055 (not b_next!62759))))

(declare-fun tp!654274 () Bool)

(declare-fun b_and!171635 () Bool)

(assert (=> b!2129405 (= tp!654274 b_and!171635)))

(declare-fun b!2129413 () Bool)

(assert (=> b!2129413 true))

(declare-fun bs!444220 () Bool)

(declare-fun b!2129429 () Bool)

(assert (= bs!444220 (and b!2129429 b!2129413)))

(declare-fun lambda!79057 () Int)

(declare-fun lambda!79056 () Int)

(assert (=> bs!444220 (not (= lambda!79057 lambda!79056))))

(assert (=> b!2129429 true))

(declare-fun mapNonEmpty!12394 () Bool)

(declare-fun mapRes!12396 () Bool)

(declare-fun tp!654287 () Bool)

(declare-fun tp!654292 () Bool)

(assert (=> mapNonEmpty!12394 (= mapRes!12396 (and tp!654287 tp!654292))))

(declare-datatypes ((C!11544 0))(
  ( (C!11545 (val!6758 Int)) )
))
(declare-datatypes ((Regex!5699 0))(
  ( (ElementMatch!5699 (c!340159 C!11544)) (Concat!10001 (regOne!11910 Regex!5699) (regTwo!11910 Regex!5699)) (EmptyExpr!5699) (Star!5699 (reg!6028 Regex!5699)) (EmptyLang!5699) (Union!5699 (regOne!11911 Regex!5699) (regTwo!11911 Regex!5699)) )
))
(declare-datatypes ((List!23977 0))(
  ( (Nil!23893) (Cons!23893 (h!29294 Regex!5699) (t!196505 List!23977)) )
))
(declare-datatypes ((Context!2538 0))(
  ( (Context!2539 (exprs!1769 List!23977)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3060 0))(
  ( (tuple3!3061 (_1!13801 (InoxSet Context!2538)) (_2!13801 Int) (_3!2000 Int)) )
))
(declare-datatypes ((tuple2!23602 0))(
  ( (tuple2!23603 (_1!13802 tuple3!3060) (_2!13802 Int)) )
))
(declare-datatypes ((List!23978 0))(
  ( (Nil!23894) (Cons!23894 (h!29295 tuple2!23602) (t!196506 List!23978)) )
))
(declare-datatypes ((array!8707 0))(
  ( (array!8708 (arr!3865 (Array (_ BitVec 32) (_ BitVec 64))) (size!18689 (_ BitVec 32))) )
))
(declare-datatypes ((array!8709 0))(
  ( (array!8710 (arr!3866 (Array (_ BitVec 32) List!23978)) (size!18690 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5090 0))(
  ( (LongMapFixedSize!5091 (defaultEntry!2910 Int) (mask!6710 (_ BitVec 32)) (extraKeys!2793 (_ BitVec 32)) (zeroValue!2803 List!23978) (minValue!2803 List!23978) (_size!5141 (_ BitVec 32)) (_keys!2842 array!8707) (_values!2825 array!8709) (_vacant!2606 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10005 0))(
  ( (Cell!10006 (v!28437 LongMapFixedSize!5090)) )
))
(declare-datatypes ((List!23979 0))(
  ( (Nil!23895) (Cons!23895 (h!29296 C!11544) (t!196507 List!23979)) )
))
(declare-datatypes ((IArray!15679 0))(
  ( (IArray!15680 (innerList!7897 List!23979)) )
))
(declare-datatypes ((Conc!7837 0))(
  ( (Node!7837 (left!18443 Conc!7837) (right!18773 Conc!7837) (csize!15904 Int) (cheight!8048 Int)) (Leaf!11454 (xs!10779 IArray!15679) (csize!15905 Int)) (Empty!7837) )
))
(declare-datatypes ((MutLongMap!2545 0))(
  ( (LongMap!2545 (underlying!5285 Cell!10005)) (MutLongMapExt!2544 (__x!15811 Int)) )
))
(declare-datatypes ((Cell!10007 0))(
  ( (Cell!10008 (v!28438 MutLongMap!2545)) )
))
(declare-datatypes ((Hashable!2459 0))(
  ( (HashableExt!2458 (__x!15812 Int)) )
))
(declare-datatypes ((MutableMap!2459 0))(
  ( (MutableMapExt!2458 (__x!15813 Int)) (HashMap!2459 (underlying!5286 Cell!10007) (hashF!4382 Hashable!2459) (_size!5142 (_ BitVec 32)) (defaultValue!2621 Int)) )
))
(declare-datatypes ((BalanceConc!15436 0))(
  ( (BalanceConc!15437 (c!340160 Conc!7837)) )
))
(declare-datatypes ((CacheFurthestNullable!644 0))(
  ( (CacheFurthestNullable!645 (cache!2840 MutableMap!2459) (totalInput!2977 BalanceConc!15436)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!644)

(declare-fun mapValue!12396 () List!23978)

(declare-fun mapKey!12395 () (_ BitVec 32))

(declare-fun mapRest!12394 () (Array (_ BitVec 32) List!23978))

(assert (=> mapNonEmpty!12394 (= (arr!3866 (_values!2825 (v!28437 (underlying!5285 (v!28438 (underlying!5286 (cache!2840 cacheFurthestNullable!114))))))) (store mapRest!12394 mapKey!12395 mapValue!12396))))

(declare-fun b!2129393 () Bool)

(declare-fun e!1357868 () Bool)

(declare-datatypes ((StackFrame!96 0))(
  ( (StackFrame!97 (z!5776 (InoxSet Context!2538)) (from!2662 Int) (lastNullablePos!349 Int) (res!920731 Int) (totalInput!2978 BalanceConc!15436)) )
))
(declare-datatypes ((List!23980 0))(
  ( (Nil!23896) (Cons!23896 (h!29297 StackFrame!96) (t!196508 List!23980)) )
))
(declare-fun stack!8 () List!23980)

(declare-fun tp!654275 () Bool)

(declare-fun inv!31515 (Conc!7837) Bool)

(assert (=> b!2129393 (= e!1357868 (and (inv!31515 (c!340160 (totalInput!2978 (h!29297 stack!8)))) tp!654275))))

(declare-fun e!1357856 () Bool)

(declare-fun e!1357843 () Bool)

(assert (=> b!2129394 (= e!1357856 (and e!1357843 tp!654272))))

(declare-fun setIsEmpty!15660 () Bool)

(declare-fun setRes!15661 () Bool)

(assert (=> setIsEmpty!15660 setRes!15661))

(declare-fun mapIsEmpty!12394 () Bool)

(assert (=> mapIsEmpty!12394 mapRes!12396))

(declare-fun b!2129395 () Bool)

(declare-fun e!1357878 () Bool)

(declare-fun e!1357862 () Bool)

(assert (=> b!2129395 (= e!1357878 e!1357862)))

(declare-fun mapIsEmpty!12395 () Bool)

(declare-fun mapRes!12394 () Bool)

(assert (=> mapIsEmpty!12395 mapRes!12394))

(declare-fun b!2129396 () Bool)

(declare-fun e!1357854 () Bool)

(declare-fun e!1357845 () Bool)

(assert (=> b!2129396 (= e!1357854 e!1357845)))

(declare-fun e!1357876 () Bool)

(declare-fun e!1357877 () Bool)

(assert (=> b!2129397 (= e!1357876 (and e!1357877 tp!654280))))

(declare-fun b!2129398 () Bool)

(declare-fun e!1357864 () Bool)

(assert (=> b!2129398 (= e!1357864 e!1357876)))

(declare-fun setElem!15660 () Context!2538)

(declare-fun tp!654285 () Bool)

(declare-fun setRes!15660 () Bool)

(declare-fun e!1357866 () Bool)

(declare-fun setNonEmpty!15660 () Bool)

(declare-fun inv!31516 (Context!2538) Bool)

(assert (=> setNonEmpty!15660 (= setRes!15660 (and tp!654285 (inv!31516 setElem!15660) e!1357866))))

(declare-fun setRest!15661 () (InoxSet Context!2538))

(assert (=> setNonEmpty!15660 (= (z!5776 (h!29297 stack!8)) ((_ map or) (store ((as const (Array Context!2538 Bool)) false) setElem!15660 true) setRest!15661))))

(declare-fun b!2129399 () Bool)

(declare-fun e!1357875 () Bool)

(declare-fun e!1357853 () Bool)

(assert (=> b!2129399 (= e!1357875 e!1357853)))

(declare-fun res!920729 () Bool)

(assert (=> b!2129399 (=> (not res!920729) (not e!1357853))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796248 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2129399 (= res!920729 (and (= totalInputSize!296 lt!796248) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun totalInput!851 () BalanceConc!15436)

(declare-fun size!18691 (BalanceConc!15436) Int)

(assert (=> b!2129399 (= lt!796248 (size!18691 totalInput!851))))

(declare-fun b!2129400 () Bool)

(declare-fun e!1357870 () Bool)

(declare-fun tp!654273 () Bool)

(declare-fun mapRes!12395 () Bool)

(assert (=> b!2129400 (= e!1357870 (and tp!654273 mapRes!12395))))

(declare-fun condMapEmpty!12395 () Bool)

(declare-datatypes ((tuple3!3062 0))(
  ( (tuple3!3063 (_1!13803 Regex!5699) (_2!13803 Context!2538) (_3!2001 C!11544)) )
))
(declare-datatypes ((tuple2!23604 0))(
  ( (tuple2!23605 (_1!13804 tuple3!3062) (_2!13804 (InoxSet Context!2538))) )
))
(declare-datatypes ((List!23981 0))(
  ( (Nil!23897) (Cons!23897 (h!29298 tuple2!23604) (t!196509 List!23981)) )
))
(declare-datatypes ((Hashable!2460 0))(
  ( (HashableExt!2459 (__x!15814 Int)) )
))
(declare-datatypes ((array!8711 0))(
  ( (array!8712 (arr!3867 (Array (_ BitVec 32) List!23981)) (size!18692 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5092 0))(
  ( (LongMapFixedSize!5093 (defaultEntry!2911 Int) (mask!6711 (_ BitVec 32)) (extraKeys!2794 (_ BitVec 32)) (zeroValue!2804 List!23981) (minValue!2804 List!23981) (_size!5143 (_ BitVec 32)) (_keys!2843 array!8707) (_values!2826 array!8711) (_vacant!2607 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10009 0))(
  ( (Cell!10010 (v!28439 LongMapFixedSize!5092)) )
))
(declare-datatypes ((MutLongMap!2546 0))(
  ( (LongMap!2546 (underlying!5287 Cell!10009)) (MutLongMapExt!2545 (__x!15815 Int)) )
))
(declare-datatypes ((Cell!10011 0))(
  ( (Cell!10012 (v!28440 MutLongMap!2546)) )
))
(declare-datatypes ((MutableMap!2460 0))(
  ( (MutableMapExt!2459 (__x!15816 Int)) (HashMap!2460 (underlying!5288 Cell!10011) (hashF!4383 Hashable!2460) (_size!5144 (_ BitVec 32)) (defaultValue!2622 Int)) )
))
(declare-datatypes ((CacheDown!1692 0))(
  ( (CacheDown!1693 (cache!2841 MutableMap!2460)) )
))
(declare-fun cacheDown!1098 () CacheDown!1692)

(declare-fun mapDefault!12395 () List!23981)

(assert (=> b!2129400 (= condMapEmpty!12395 (= (arr!3867 (_values!2826 (v!28439 (underlying!5287 (v!28440 (underlying!5288 (cache!2841 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23981)) mapDefault!12395)))))

(declare-fun b!2129401 () Bool)

(declare-fun e!1357846 () Bool)

(declare-fun tp!654265 () Bool)

(assert (=> b!2129401 (= e!1357846 (and (inv!31515 (c!340160 totalInput!851)) tp!654265))))

(declare-fun b!2129402 () Bool)

(declare-fun e!1357860 () Bool)

(declare-fun e!1357861 () Bool)

(assert (=> b!2129402 (= e!1357860 e!1357861)))

(declare-fun setIsEmpty!15661 () Bool)

(assert (=> setIsEmpty!15661 setRes!15660))

(declare-fun e!1357855 () Bool)

(declare-fun b!2129403 () Bool)

(declare-fun e!1357871 () Bool)

(declare-fun inv!31517 (BalanceConc!15436) Bool)

(assert (=> b!2129403 (= e!1357855 (and e!1357856 (inv!31517 (totalInput!2977 cacheFurthestNullable!114)) e!1357871))))

(declare-fun b!2129404 () Bool)

(declare-fun e!1357863 () Bool)

(declare-fun tp!654282 () Bool)

(assert (=> b!2129404 (= e!1357863 (and tp!654282 mapRes!12396))))

(declare-fun condMapEmpty!12396 () Bool)

(declare-fun mapDefault!12394 () List!23978)

(assert (=> b!2129404 (= condMapEmpty!12396 (= (arr!3866 (_values!2825 (v!28437 (underlying!5285 (v!28438 (underlying!5286 (cache!2840 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23978)) mapDefault!12394)))))

(declare-fun e!1357872 () Bool)

(declare-fun tp!654284 () Bool)

(declare-fun tp!654277 () Bool)

(declare-fun array_inv!2767 (array!8707) Bool)

(declare-fun array_inv!2768 (array!8711) Bool)

(assert (=> b!2129405 (= e!1357872 (and tp!654274 tp!654277 tp!654284 (array_inv!2767 (_keys!2843 (v!28439 (underlying!5287 (v!28440 (underlying!5288 (cache!2841 cacheDown!1098))))))) (array_inv!2768 (_values!2826 (v!28439 (underlying!5287 (v!28440 (underlying!5288 (cache!2841 cacheDown!1098))))))) e!1357870))))

(declare-fun b!2129406 () Bool)

(declare-fun e!1357851 () Bool)

(assert (=> b!2129406 (= e!1357851 e!1357872)))

(declare-fun b!2129407 () Bool)

(declare-fun e!1357879 () Bool)

(declare-fun z!3839 () (InoxSet Context!2538))

(declare-fun lostCauseZipper!65 ((InoxSet Context!2538)) Bool)

(assert (=> b!2129407 (= e!1357879 (lostCauseZipper!65 z!3839))))

(declare-fun b!2129408 () Bool)

(declare-fun e!1357850 () Bool)

(assert (=> b!2129408 (= e!1357861 e!1357850)))

(declare-fun b!2129409 () Bool)

(declare-fun tp!654269 () Bool)

(assert (=> b!2129409 (= e!1357866 tp!654269)))

(declare-datatypes ((tuple2!23606 0))(
  ( (tuple2!23607 (_1!13805 Context!2538) (_2!13805 C!11544)) )
))
(declare-datatypes ((tuple2!23608 0))(
  ( (tuple2!23609 (_1!13806 tuple2!23606) (_2!13806 (InoxSet Context!2538))) )
))
(declare-datatypes ((List!23982 0))(
  ( (Nil!23898) (Cons!23898 (h!29299 tuple2!23608) (t!196510 List!23982)) )
))
(declare-datatypes ((array!8713 0))(
  ( (array!8714 (arr!3868 (Array (_ BitVec 32) List!23982)) (size!18693 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5094 0))(
  ( (LongMapFixedSize!5095 (defaultEntry!2912 Int) (mask!6712 (_ BitVec 32)) (extraKeys!2795 (_ BitVec 32)) (zeroValue!2805 List!23982) (minValue!2805 List!23982) (_size!5145 (_ BitVec 32)) (_keys!2844 array!8707) (_values!2827 array!8713) (_vacant!2608 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10013 0))(
  ( (Cell!10014 (v!28441 LongMapFixedSize!5094)) )
))
(declare-datatypes ((MutLongMap!2547 0))(
  ( (LongMap!2547 (underlying!5289 Cell!10013)) (MutLongMapExt!2546 (__x!15817 Int)) )
))
(declare-datatypes ((Cell!10015 0))(
  ( (Cell!10016 (v!28442 MutLongMap!2547)) )
))
(declare-datatypes ((Hashable!2461 0))(
  ( (HashableExt!2460 (__x!15818 Int)) )
))
(declare-datatypes ((MutableMap!2461 0))(
  ( (MutableMapExt!2460 (__x!15819 Int)) (HashMap!2461 (underlying!5290 Cell!10015) (hashF!4384 Hashable!2461) (_size!5146 (_ BitVec 32)) (defaultValue!2623 Int)) )
))
(declare-datatypes ((CacheUp!1706 0))(
  ( (CacheUp!1707 (cache!2842 MutableMap!2461)) )
))
(declare-fun cacheUp!979 () CacheUp!1706)

(declare-fun tp!654290 () Bool)

(declare-fun e!1357873 () Bool)

(declare-fun tp!654264 () Bool)

(declare-fun array_inv!2769 (array!8713) Bool)

(assert (=> b!2129410 (= e!1357850 (and tp!654266 tp!654264 tp!654290 (array_inv!2767 (_keys!2844 (v!28441 (underlying!5289 (v!28442 (underlying!5290 (cache!2842 cacheUp!979))))))) (array_inv!2769 (_values!2827 (v!28441 (underlying!5289 (v!28442 (underlying!5290 (cache!2842 cacheUp!979))))))) e!1357873))))

(declare-fun b!2129411 () Bool)

(declare-fun tp!654281 () Bool)

(assert (=> b!2129411 (= e!1357871 (and (inv!31515 (c!340160 (totalInput!2977 cacheFurthestNullable!114))) tp!654281))))

(declare-fun tp!654289 () Bool)

(declare-fun tp!654278 () Bool)

(declare-fun array_inv!2770 (array!8709) Bool)

(assert (=> b!2129412 (= e!1357862 (and tp!654286 tp!654278 tp!654289 (array_inv!2767 (_keys!2842 (v!28437 (underlying!5285 (v!28438 (underlying!5286 (cache!2840 cacheFurthestNullable!114))))))) (array_inv!2770 (_values!2825 (v!28437 (underlying!5285 (v!28438 (underlying!5286 (cache!2840 cacheFurthestNullable!114))))))) e!1357863))))

(declare-fun res!920723 () Bool)

(assert (=> start!207504 (=> (not res!920723) (not e!1357875))))

(assert (=> start!207504 (= res!920723 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207504 e!1357875))

(declare-fun inv!31518 (CacheFurthestNullable!644) Bool)

(assert (=> start!207504 (and (inv!31518 cacheFurthestNullable!114) e!1357855)))

(assert (=> start!207504 true))

(declare-fun inv!31519 (CacheDown!1692) Bool)

(assert (=> start!207504 (and (inv!31519 cacheDown!1098) e!1357854)))

(declare-fun inv!31520 (CacheUp!1706) Bool)

(assert (=> start!207504 (and (inv!31520 cacheUp!979) e!1357864)))

(declare-fun condSetEmpty!15661 () Bool)

(assert (=> start!207504 (= condSetEmpty!15661 (= z!3839 ((as const (Array Context!2538 Bool)) false)))))

(assert (=> start!207504 setRes!15661))

(assert (=> start!207504 (and (inv!31517 totalInput!851) e!1357846)))

(declare-fun e!1357849 () Bool)

(assert (=> start!207504 e!1357849))

(declare-fun e!1357874 () Bool)

(assert (=> b!2129413 (= e!1357853 e!1357874)))

(declare-fun res!920721 () Bool)

(assert (=> b!2129413 (=> (not res!920721) (not e!1357874))))

(declare-fun forall!4897 (List!23980 Int) Bool)

(assert (=> b!2129413 (= res!920721 (forall!4897 stack!8 lambda!79056))))

(declare-fun lt!796247 () Int)

(declare-fun furthestNullablePosition!26 ((InoxSet Context!2538) Int BalanceConc!15436 Int Int) Int)

(assert (=> b!2129413 (= lt!796247 (furthestNullablePosition!26 z!3839 from!1043 totalInput!851 lt!796248 lastNullablePos!123))))

(declare-fun e!1357859 () Bool)

(declare-fun b!2129414 () Bool)

(assert (=> b!2129414 (= e!1357859 (and setRes!15660 (inv!31517 (totalInput!2978 (h!29297 stack!8))) e!1357868))))

(declare-fun condSetEmpty!15660 () Bool)

(assert (=> b!2129414 (= condSetEmpty!15660 (= (z!5776 (h!29297 stack!8)) ((as const (Array Context!2538 Bool)) false)))))

(declare-fun mapIsEmpty!12396 () Bool)

(assert (=> mapIsEmpty!12396 mapRes!12395))

(declare-fun b!2129415 () Bool)

(declare-fun tp!654270 () Bool)

(assert (=> b!2129415 (= e!1357873 (and tp!654270 mapRes!12394))))

(declare-fun condMapEmpty!12394 () Bool)

(declare-fun mapDefault!12396 () List!23982)

(assert (=> b!2129415 (= condMapEmpty!12394 (= (arr!3868 (_values!2827 (v!28441 (underlying!5289 (v!28442 (underlying!5290 (cache!2842 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23982)) mapDefault!12396)))))

(declare-fun b!2129416 () Bool)

(declare-fun res!920730 () Bool)

(assert (=> b!2129416 (=> (not res!920730) (not e!1357853))))

(declare-fun valid!2005 (CacheFurthestNullable!644) Bool)

(assert (=> b!2129416 (= res!920730 (valid!2005 cacheFurthestNullable!114))))

(declare-fun e!1357847 () Bool)

(assert (=> b!2129417 (= e!1357845 (and e!1357847 tp!654288))))

(declare-fun b!2129418 () Bool)

(declare-fun e!1357858 () Bool)

(assert (=> b!2129418 (= e!1357874 (not e!1357858))))

(declare-fun res!920728 () Bool)

(assert (=> b!2129418 (=> res!920728 e!1357858)))

(get-info :version)

(declare-datatypes ((Option!4883 0))(
  ( (None!4882) (Some!4882 (v!28443 Int)) )
))
(declare-fun get!7342 (CacheFurthestNullable!644 (InoxSet Context!2538) Int Int) Option!4883)

(assert (=> b!2129418 (= res!920728 ((_ is Some!4882) (get!7342 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2129418 (forall!4897 stack!8 lambda!79056)))

(declare-fun b!2129419 () Bool)

(declare-fun e!1357869 () Bool)

(assert (=> b!2129419 (= e!1357869 e!1357878)))

(declare-fun b!2129420 () Bool)

(assert (=> b!2129420 (= e!1357858 true)))

(declare-fun lt!796244 () Bool)

(assert (=> b!2129420 (= lt!796244 e!1357879)))

(declare-fun res!920726 () Bool)

(assert (=> b!2129420 (=> res!920726 e!1357879)))

(assert (=> b!2129420 (= res!920726 (= from!1043 totalInputSize!296))))

(declare-fun b!2129421 () Bool)

(declare-fun e!1357865 () Bool)

(assert (=> b!2129421 (= e!1357865 e!1357851)))

(declare-fun e!1357857 () Bool)

(declare-fun setElem!15661 () Context!2538)

(declare-fun setNonEmpty!15661 () Bool)

(declare-fun tp!654291 () Bool)

(assert (=> setNonEmpty!15661 (= setRes!15661 (and tp!654291 (inv!31516 setElem!15661) e!1357857))))

(declare-fun setRest!15660 () (InoxSet Context!2538))

(assert (=> setNonEmpty!15661 (= z!3839 ((_ map or) (store ((as const (Array Context!2538 Bool)) false) setElem!15661 true) setRest!15660))))

(declare-fun b!2129422 () Bool)

(declare-fun res!920724 () Bool)

(assert (=> b!2129422 (=> (not res!920724) (not e!1357853))))

(assert (=> b!2129422 (= res!920724 (= (totalInput!2977 cacheFurthestNullable!114) totalInput!851))))

(declare-fun mapNonEmpty!12395 () Bool)

(declare-fun tp!654283 () Bool)

(declare-fun tp!654276 () Bool)

(assert (=> mapNonEmpty!12395 (= mapRes!12395 (and tp!654283 tp!654276))))

(declare-fun mapKey!12396 () (_ BitVec 32))

(declare-fun mapValue!12394 () List!23981)

(declare-fun mapRest!12395 () (Array (_ BitVec 32) List!23981))

(assert (=> mapNonEmpty!12395 (= (arr!3867 (_values!2826 (v!28439 (underlying!5287 (v!28440 (underlying!5288 (cache!2841 cacheDown!1098))))))) (store mapRest!12395 mapKey!12396 mapValue!12394))))

(declare-fun b!2129423 () Bool)

(declare-fun res!920720 () Bool)

(assert (=> b!2129423 (=> (not res!920720) (not e!1357853))))

(declare-fun e!1357848 () Bool)

(assert (=> b!2129423 (= res!920720 e!1357848)))

(declare-fun res!920719 () Bool)

(assert (=> b!2129423 (=> res!920719 e!1357848)))

(declare-fun nullableZipper!87 ((InoxSet Context!2538)) Bool)

(assert (=> b!2129423 (= res!920719 (not (nullableZipper!87 z!3839)))))

(declare-fun b!2129424 () Bool)

(declare-fun lt!796246 () MutLongMap!2547)

(assert (=> b!2129424 (= e!1357877 (and e!1357860 ((_ is LongMap!2547) lt!796246)))))

(assert (=> b!2129424 (= lt!796246 (v!28442 (underlying!5290 (cache!2842 cacheUp!979))))))

(declare-fun mapNonEmpty!12396 () Bool)

(declare-fun tp!654279 () Bool)

(declare-fun tp!654271 () Bool)

(assert (=> mapNonEmpty!12396 (= mapRes!12394 (and tp!654279 tp!654271))))

(declare-fun mapValue!12395 () List!23982)

(declare-fun mapRest!12396 () (Array (_ BitVec 32) List!23982))

(declare-fun mapKey!12394 () (_ BitVec 32))

(assert (=> mapNonEmpty!12396 (= (arr!3868 (_values!2827 (v!28441 (underlying!5289 (v!28442 (underlying!5290 (cache!2842 cacheUp!979))))))) (store mapRest!12396 mapKey!12394 mapValue!12395))))

(declare-fun b!2129425 () Bool)

(declare-fun res!920725 () Bool)

(assert (=> b!2129425 (=> (not res!920725) (not e!1357853))))

(declare-fun valid!2006 (CacheUp!1706) Bool)

(assert (=> b!2129425 (= res!920725 (valid!2006 cacheUp!979))))

(declare-fun b!2129426 () Bool)

(declare-fun tp!654268 () Bool)

(assert (=> b!2129426 (= e!1357857 tp!654268)))

(declare-fun b!2129427 () Bool)

(declare-fun res!920722 () Bool)

(assert (=> b!2129427 (=> (not res!920722) (not e!1357853))))

(declare-fun valid!2007 (CacheDown!1692) Bool)

(assert (=> b!2129427 (= res!920722 (valid!2007 cacheDown!1098))))

(declare-fun b!2129428 () Bool)

(declare-fun lt!796245 () MutLongMap!2545)

(assert (=> b!2129428 (= e!1357843 (and e!1357869 ((_ is LongMap!2545) lt!796245)))))

(assert (=> b!2129428 (= lt!796245 (v!28438 (underlying!5286 (cache!2840 cacheFurthestNullable!114))))))

(declare-fun res!920727 () Bool)

(assert (=> b!2129429 (=> (not res!920727) (not e!1357874))))

(assert (=> b!2129429 (= res!920727 (forall!4897 stack!8 lambda!79057))))

(declare-fun b!2129430 () Bool)

(declare-fun lt!796243 () MutLongMap!2546)

(assert (=> b!2129430 (= e!1357847 (and e!1357865 ((_ is LongMap!2546) lt!796243)))))

(assert (=> b!2129430 (= lt!796243 (v!28440 (underlying!5288 (cache!2841 cacheDown!1098))))))

(declare-fun b!2129431 () Bool)

(assert (=> b!2129431 (= e!1357848 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2129432 () Bool)

(declare-fun tp!654267 () Bool)

(declare-fun inv!31521 (StackFrame!96) Bool)

(assert (=> b!2129432 (= e!1357849 (and (inv!31521 (h!29297 stack!8)) e!1357859 tp!654267))))

(assert (= (and start!207504 res!920723) b!2129399))

(assert (= (and b!2129399 res!920729) b!2129423))

(assert (= (and b!2129423 (not res!920719)) b!2129431))

(assert (= (and b!2129423 res!920720) b!2129425))

(assert (= (and b!2129425 res!920725) b!2129427))

(assert (= (and b!2129427 res!920722) b!2129416))

(assert (= (and b!2129416 res!920730) b!2129422))

(assert (= (and b!2129422 res!920724) b!2129413))

(assert (= (and b!2129413 res!920721) b!2129429))

(assert (= (and b!2129429 res!920727) b!2129418))

(assert (= (and b!2129418 (not res!920728)) b!2129420))

(assert (= (and b!2129420 (not res!920726)) b!2129407))

(assert (= (and b!2129404 condMapEmpty!12396) mapIsEmpty!12394))

(assert (= (and b!2129404 (not condMapEmpty!12396)) mapNonEmpty!12394))

(assert (= b!2129412 b!2129404))

(assert (= b!2129395 b!2129412))

(assert (= b!2129419 b!2129395))

(assert (= (and b!2129428 ((_ is LongMap!2545) (v!28438 (underlying!5286 (cache!2840 cacheFurthestNullable!114))))) b!2129419))

(assert (= b!2129394 b!2129428))

(assert (= (and b!2129403 ((_ is HashMap!2459) (cache!2840 cacheFurthestNullable!114))) b!2129394))

(assert (= b!2129403 b!2129411))

(assert (= start!207504 b!2129403))

(assert (= (and b!2129400 condMapEmpty!12395) mapIsEmpty!12396))

(assert (= (and b!2129400 (not condMapEmpty!12395)) mapNonEmpty!12395))

(assert (= b!2129405 b!2129400))

(assert (= b!2129406 b!2129405))

(assert (= b!2129421 b!2129406))

(assert (= (and b!2129430 ((_ is LongMap!2546) (v!28440 (underlying!5288 (cache!2841 cacheDown!1098))))) b!2129421))

(assert (= b!2129417 b!2129430))

(assert (= (and b!2129396 ((_ is HashMap!2460) (cache!2841 cacheDown!1098))) b!2129417))

(assert (= start!207504 b!2129396))

(assert (= (and b!2129415 condMapEmpty!12394) mapIsEmpty!12395))

(assert (= (and b!2129415 (not condMapEmpty!12394)) mapNonEmpty!12396))

(assert (= b!2129410 b!2129415))

(assert (= b!2129408 b!2129410))

(assert (= b!2129402 b!2129408))

(assert (= (and b!2129424 ((_ is LongMap!2547) (v!28442 (underlying!5290 (cache!2842 cacheUp!979))))) b!2129402))

(assert (= b!2129397 b!2129424))

(assert (= (and b!2129398 ((_ is HashMap!2461) (cache!2842 cacheUp!979))) b!2129397))

(assert (= start!207504 b!2129398))

(assert (= (and start!207504 condSetEmpty!15661) setIsEmpty!15660))

(assert (= (and start!207504 (not condSetEmpty!15661)) setNonEmpty!15661))

(assert (= setNonEmpty!15661 b!2129426))

(assert (= start!207504 b!2129401))

(assert (= (and b!2129414 condSetEmpty!15660) setIsEmpty!15661))

(assert (= (and b!2129414 (not condSetEmpty!15660)) setNonEmpty!15660))

(assert (= setNonEmpty!15660 b!2129409))

(assert (= b!2129414 b!2129393))

(assert (= b!2129432 b!2129414))

(assert (= (and start!207504 ((_ is Cons!23896) stack!8)) b!2129432))

(declare-fun m!2580078 () Bool)

(assert (=> b!2129413 m!2580078))

(declare-fun m!2580080 () Bool)

(assert (=> b!2129413 m!2580080))

(declare-fun m!2580082 () Bool)

(assert (=> b!2129418 m!2580082))

(assert (=> b!2129418 m!2580078))

(declare-fun m!2580084 () Bool)

(assert (=> b!2129410 m!2580084))

(declare-fun m!2580086 () Bool)

(assert (=> b!2129410 m!2580086))

(declare-fun m!2580088 () Bool)

(assert (=> b!2129429 m!2580088))

(declare-fun m!2580090 () Bool)

(assert (=> b!2129399 m!2580090))

(declare-fun m!2580092 () Bool)

(assert (=> b!2129416 m!2580092))

(declare-fun m!2580094 () Bool)

(assert (=> b!2129432 m!2580094))

(declare-fun m!2580096 () Bool)

(assert (=> b!2129403 m!2580096))

(declare-fun m!2580098 () Bool)

(assert (=> mapNonEmpty!12395 m!2580098))

(declare-fun m!2580100 () Bool)

(assert (=> b!2129427 m!2580100))

(declare-fun m!2580102 () Bool)

(assert (=> b!2129407 m!2580102))

(declare-fun m!2580104 () Bool)

(assert (=> b!2129425 m!2580104))

(declare-fun m!2580106 () Bool)

(assert (=> mapNonEmpty!12396 m!2580106))

(declare-fun m!2580108 () Bool)

(assert (=> b!2129412 m!2580108))

(declare-fun m!2580110 () Bool)

(assert (=> b!2129412 m!2580110))

(declare-fun m!2580112 () Bool)

(assert (=> b!2129401 m!2580112))

(declare-fun m!2580114 () Bool)

(assert (=> b!2129393 m!2580114))

(declare-fun m!2580116 () Bool)

(assert (=> b!2129411 m!2580116))

(declare-fun m!2580118 () Bool)

(assert (=> mapNonEmpty!12394 m!2580118))

(declare-fun m!2580120 () Bool)

(assert (=> start!207504 m!2580120))

(declare-fun m!2580122 () Bool)

(assert (=> start!207504 m!2580122))

(declare-fun m!2580124 () Bool)

(assert (=> start!207504 m!2580124))

(declare-fun m!2580126 () Bool)

(assert (=> start!207504 m!2580126))

(declare-fun m!2580128 () Bool)

(assert (=> b!2129423 m!2580128))

(declare-fun m!2580130 () Bool)

(assert (=> b!2129414 m!2580130))

(declare-fun m!2580132 () Bool)

(assert (=> b!2129405 m!2580132))

(declare-fun m!2580134 () Bool)

(assert (=> b!2129405 m!2580134))

(declare-fun m!2580136 () Bool)

(assert (=> setNonEmpty!15661 m!2580136))

(declare-fun m!2580138 () Bool)

(assert (=> setNonEmpty!15660 m!2580138))

(check-sat (not b!2129393) (not b_next!62751) (not b!2129401) (not b!2129407) (not b_next!62753) (not b_next!62749) (not b!2129425) (not b!2129413) (not b!2129404) (not b_next!62757) (not b_next!62759) (not b!2129415) (not b!2129403) (not mapNonEmpty!12396) b_and!171627 (not b!2129423) (not b!2129399) b_and!171631 (not b!2129410) (not b!2129400) (not b!2129427) (not b!2129429) (not start!207504) b_and!171625 (not b!2129414) (not b!2129411) (not mapNonEmpty!12394) b_and!171633 (not b!2129412) (not b!2129409) (not b!2129416) (not b!2129418) (not mapNonEmpty!12395) (not b!2129426) (not b!2129432) (not b!2129405) b_and!171635 (not setNonEmpty!15661) (not setNonEmpty!15660) (not b_next!62755) b_and!171629)
(check-sat (not b_next!62751) b_and!171627 b_and!171631 (not b_next!62753) (not b_next!62749) b_and!171625 b_and!171633 b_and!171635 (not b_next!62757) (not b_next!62759) (not b_next!62755) b_and!171629)
