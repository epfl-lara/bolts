; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207898 () Bool)

(assert start!207898)

(declare-fun b!2141139 () Bool)

(declare-fun b_free!62957 () Bool)

(declare-fun b_next!63661 () Bool)

(assert (=> b!2141139 (= b_free!62957 (not b_next!63661))))

(declare-fun tp!662164 () Bool)

(declare-fun b_and!172537 () Bool)

(assert (=> b!2141139 (= tp!662164 b_and!172537)))

(declare-fun b!2141120 () Bool)

(declare-fun b_free!62959 () Bool)

(declare-fun b_next!63663 () Bool)

(assert (=> b!2141120 (= b_free!62959 (not b_next!63663))))

(declare-fun tp!662157 () Bool)

(declare-fun b_and!172539 () Bool)

(assert (=> b!2141120 (= tp!662157 b_and!172539)))

(declare-fun b!2141132 () Bool)

(declare-fun b_free!62961 () Bool)

(declare-fun b_next!63665 () Bool)

(assert (=> b!2141132 (= b_free!62961 (not b_next!63665))))

(declare-fun tp!662159 () Bool)

(declare-fun b_and!172541 () Bool)

(assert (=> b!2141132 (= tp!662159 b_and!172541)))

(declare-fun b!2141125 () Bool)

(declare-fun b_free!62963 () Bool)

(declare-fun b_next!63667 () Bool)

(assert (=> b!2141125 (= b_free!62963 (not b_next!63667))))

(declare-fun tp!662150 () Bool)

(declare-fun b_and!172543 () Bool)

(assert (=> b!2141125 (= tp!662150 b_and!172543)))

(declare-fun b!2141115 () Bool)

(declare-fun b_free!62965 () Bool)

(declare-fun b_next!63669 () Bool)

(assert (=> b!2141115 (= b_free!62965 (not b_next!63669))))

(declare-fun tp!662147 () Bool)

(declare-fun b_and!172545 () Bool)

(assert (=> b!2141115 (= tp!662147 b_and!172545)))

(declare-fun b!2141113 () Bool)

(declare-fun b_free!62967 () Bool)

(declare-fun b_next!63671 () Bool)

(assert (=> b!2141113 (= b_free!62967 (not b_next!63671))))

(declare-fun tp!662165 () Bool)

(declare-fun b_and!172547 () Bool)

(assert (=> b!2141113 (= tp!662165 b_and!172547)))

(declare-fun b!2141104 () Bool)

(assert (=> b!2141104 true))

(declare-fun bs!445183 () Bool)

(declare-fun b!2141106 () Bool)

(assert (= bs!445183 (and b!2141106 b!2141104)))

(declare-fun lambda!80100 () Int)

(declare-fun lambda!80099 () Int)

(assert (=> bs!445183 (not (= lambda!80100 lambda!80099))))

(assert (=> b!2141106 true))

(declare-fun bs!445184 () Bool)

(declare-fun b!2141143 () Bool)

(assert (= bs!445184 (and b!2141143 b!2141104)))

(declare-fun lt!798148 () Int)

(declare-fun lt!798150 () Int)

(declare-fun lambda!80101 () Int)

(assert (=> bs!445184 (= (= lt!798148 lt!798150) (= lambda!80101 lambda!80099))))

(declare-fun bs!445185 () Bool)

(assert (= bs!445185 (and b!2141143 b!2141106)))

(assert (=> bs!445185 (not (= lambda!80101 lambda!80100))))

(assert (=> b!2141143 true))

(declare-fun e!1367559 () Bool)

(declare-fun e!1367538 () Bool)

(assert (=> b!2141104 (= e!1367559 e!1367538)))

(declare-fun res!924457 () Bool)

(assert (=> b!2141104 (=> (not res!924457) (not e!1367538))))

(declare-datatypes ((C!11696 0))(
  ( (C!11697 (val!6834 Int)) )
))
(declare-datatypes ((Regex!5775 0))(
  ( (ElementMatch!5775 (c!340562 C!11696)) (Concat!10077 (regOne!12062 Regex!5775) (regTwo!12062 Regex!5775)) (EmptyExpr!5775) (Star!5775 (reg!6104 Regex!5775)) (EmptyLang!5775) (Union!5775 (regOne!12063 Regex!5775) (regTwo!12063 Regex!5775)) )
))
(declare-datatypes ((List!24406 0))(
  ( (Nil!24322) (Cons!24322 (h!29723 Regex!5775) (t!196936 List!24406)) )
))
(declare-datatypes ((Context!2690 0))(
  ( (Context!2691 (exprs!1845 List!24406)) )
))
(declare-datatypes ((List!24407 0))(
  ( (Nil!24323) (Cons!24323 (h!29724 C!11696) (t!196937 List!24407)) )
))
(declare-datatypes ((IArray!15831 0))(
  ( (IArray!15832 (innerList!7973 List!24407)) )
))
(declare-datatypes ((Conc!7913 0))(
  ( (Node!7913 (left!18709 Conc!7913) (right!19039 Conc!7913) (csize!16056 Int) (cheight!8124 Int)) (Leaf!11568 (xs!10855 IArray!15831) (csize!16057 Int)) (Empty!7913) )
))
(declare-datatypes ((BalanceConc!15588 0))(
  ( (BalanceConc!15589 (c!340563 Conc!7913)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!228 0))(
  ( (StackFrame!229 (z!5865 (InoxSet Context!2690)) (from!2739 Int) (lastNullablePos!426 Int) (res!924461 Int) (totalInput!3124 BalanceConc!15588)) )
))
(declare-datatypes ((List!24408 0))(
  ( (Nil!24324) (Cons!24324 (h!29725 StackFrame!228) (t!196938 List!24408)) )
))
(declare-fun stack!8 () List!24408)

(declare-fun forall!4968 (List!24408 Int) Bool)

(assert (=> b!2141104 (= res!924457 (forall!4968 stack!8 lambda!80099))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!798152 () Int)

(declare-fun from!1043 () Int)

(declare-fun z!3839 () (InoxSet Context!2690))

(declare-fun totalInput!851 () BalanceConc!15588)

(declare-fun furthestNullablePosition!75 ((InoxSet Context!2690) Int BalanceConc!15588 Int Int) Int)

(assert (=> b!2141104 (= lt!798150 (furthestNullablePosition!75 z!3839 from!1043 totalInput!851 lt!798152 lastNullablePos!123))))

(declare-fun b!2141105 () Bool)

(declare-fun e!1367570 () Bool)

(declare-fun e!1367561 () Bool)

(assert (=> b!2141105 (= e!1367570 e!1367561)))

(declare-fun res!924450 () Bool)

(assert (=> b!2141105 (=> res!924450 e!1367561)))

(assert (=> b!2141105 (= res!924450 (not (= lt!798150 lt!798148)))))

(declare-fun e!1367572 () Int)

(declare-datatypes ((tuple3!3414 0))(
  ( (tuple3!3415 (_1!14251 Regex!5775) (_2!14251 Context!2690) (_3!2177 C!11696)) )
))
(declare-datatypes ((tuple2!24148 0))(
  ( (tuple2!24149 (_1!14252 tuple3!3414) (_2!14252 (InoxSet Context!2690))) )
))
(declare-datatypes ((List!24409 0))(
  ( (Nil!24325) (Cons!24325 (h!29726 tuple2!24148) (t!196939 List!24409)) )
))
(declare-datatypes ((tuple2!24150 0))(
  ( (tuple2!24151 (_1!14253 Context!2690) (_2!14253 C!11696)) )
))
(declare-datatypes ((tuple2!24152 0))(
  ( (tuple2!24153 (_1!14254 tuple2!24150) (_2!14254 (InoxSet Context!2690))) )
))
(declare-datatypes ((List!24410 0))(
  ( (Nil!24326) (Cons!24326 (h!29727 tuple2!24152) (t!196940 List!24410)) )
))
(declare-datatypes ((Hashable!2666 0))(
  ( (HashableExt!2665 (__x!16432 Int)) )
))
(declare-datatypes ((Hashable!2667 0))(
  ( (HashableExt!2666 (__x!16433 Int)) )
))
(declare-datatypes ((array!9293 0))(
  ( (array!9294 (arr!4148 (Array (_ BitVec 32) (_ BitVec 64))) (size!19030 (_ BitVec 32))) )
))
(declare-datatypes ((array!9295 0))(
  ( (array!9296 (arr!4149 (Array (_ BitVec 32) List!24410)) (size!19031 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5504 0))(
  ( (LongMapFixedSize!5505 (defaultEntry!3117 Int) (mask!6955 (_ BitVec 32)) (extraKeys!3000 (_ BitVec 32)) (zeroValue!3010 List!24410) (minValue!3010 List!24410) (_size!5555 (_ BitVec 32)) (_keys!3049 array!9293) (_values!3032 array!9295) (_vacant!2813 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10833 0))(
  ( (Cell!10834 (v!28903 LongMapFixedSize!5504)) )
))
(declare-datatypes ((MutLongMap!2752 0))(
  ( (LongMap!2752 (underlying!5699 Cell!10833)) (MutLongMapExt!2751 (__x!16434 Int)) )
))
(declare-datatypes ((Cell!10835 0))(
  ( (Cell!10836 (v!28904 MutLongMap!2752)) )
))
(declare-datatypes ((MutableMap!2666 0))(
  ( (MutableMapExt!2665 (__x!16435 Int)) (HashMap!2666 (underlying!5700 Cell!10835) (hashF!4589 Hashable!2666) (_size!5556 (_ BitVec 32)) (defaultValue!2828 Int)) )
))
(declare-datatypes ((CacheUp!1836 0))(
  ( (CacheUp!1837 (cache!3047 MutableMap!2666)) )
))
(declare-datatypes ((array!9297 0))(
  ( (array!9298 (arr!4150 (Array (_ BitVec 32) List!24409)) (size!19032 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5506 0))(
  ( (LongMapFixedSize!5507 (defaultEntry!3118 Int) (mask!6956 (_ BitVec 32)) (extraKeys!3001 (_ BitVec 32)) (zeroValue!3011 List!24409) (minValue!3011 List!24409) (_size!5557 (_ BitVec 32)) (_keys!3050 array!9293) (_values!3033 array!9297) (_vacant!2814 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10837 0))(
  ( (Cell!10838 (v!28905 LongMapFixedSize!5506)) )
))
(declare-datatypes ((MutLongMap!2753 0))(
  ( (LongMap!2753 (underlying!5701 Cell!10837)) (MutLongMapExt!2752 (__x!16436 Int)) )
))
(declare-datatypes ((Cell!10839 0))(
  ( (Cell!10840 (v!28906 MutLongMap!2753)) )
))
(declare-datatypes ((MutableMap!2667 0))(
  ( (MutableMapExt!2666 (__x!16437 Int)) (HashMap!2667 (underlying!5702 Cell!10839) (hashF!4590 Hashable!2667) (_size!5558 (_ BitVec 32)) (defaultValue!2829 Int)) )
))
(declare-datatypes ((CacheDown!1826 0))(
  ( (CacheDown!1827 (cache!3048 MutableMap!2667)) )
))
(declare-datatypes ((tuple3!3416 0))(
  ( (tuple3!3417 (_1!14255 (InoxSet Context!2690)) (_2!14255 CacheUp!1836) (_3!2178 CacheDown!1826)) )
))
(declare-fun lt!798147 () tuple3!3416)

(assert (=> b!2141105 (= lt!798148 (furthestNullablePosition!75 (_1!14255 lt!798147) (+ 1 from!1043) totalInput!851 lt!798152 e!1367572))))

(declare-fun c!340561 () Bool)

(declare-fun nullableZipper!138 ((InoxSet Context!2690)) Bool)

(assert (=> b!2141105 (= c!340561 (nullableZipper!138 (_1!14255 lt!798147)))))

(declare-fun cacheDown!1098 () CacheDown!1826)

(declare-fun cacheUp!979 () CacheUp!1836)

(declare-fun derivationStepZipperMem!56 ((InoxSet Context!2690) C!11696 CacheUp!1836 CacheDown!1826) tuple3!3416)

(declare-fun apply!5964 (BalanceConc!15588 Int) C!11696)

(assert (=> b!2141105 (= lt!798147 (derivationStepZipperMem!56 z!3839 (apply!5964 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun res!924460 () Bool)

(assert (=> b!2141106 (=> (not res!924460) (not e!1367538))))

(assert (=> b!2141106 (= res!924460 (forall!4968 stack!8 lambda!80100))))

(declare-fun setRes!16377 () Bool)

(declare-fun setElem!16377 () Context!2690)

(declare-fun e!1367548 () Bool)

(declare-fun tp!662169 () Bool)

(declare-fun setNonEmpty!16377 () Bool)

(declare-fun inv!32010 (Context!2690) Bool)

(assert (=> setNonEmpty!16377 (= setRes!16377 (and tp!662169 (inv!32010 setElem!16377) e!1367548))))

(declare-fun setRest!16378 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16377 (= z!3839 ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16377 true) setRest!16378))))

(declare-fun b!2141107 () Bool)

(declare-fun res!924448 () Bool)

(assert (=> b!2141107 (=> (not res!924448) (not e!1367559))))

(declare-fun valid!2150 (CacheUp!1836) Bool)

(assert (=> b!2141107 (= res!924448 (valid!2150 cacheUp!979))))

(declare-fun b!2141108 () Bool)

(declare-fun e!1367541 () Bool)

(declare-fun e!1367551 () Bool)

(assert (=> b!2141108 (= e!1367541 e!1367551)))

(declare-fun mapNonEmpty!13126 () Bool)

(declare-fun mapRes!13126 () Bool)

(declare-fun tp!662167 () Bool)

(declare-fun tp!662160 () Bool)

(assert (=> mapNonEmpty!13126 (= mapRes!13126 (and tp!662167 tp!662160))))

(declare-fun mapRest!13127 () (Array (_ BitVec 32) List!24410))

(declare-fun mapValue!13126 () List!24410)

(declare-fun mapKey!13126 () (_ BitVec 32))

(assert (=> mapNonEmpty!13126 (= (arr!4149 (_values!3032 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))) (store mapRest!13127 mapKey!13126 mapValue!13126))))

(declare-fun mapNonEmpty!13127 () Bool)

(declare-fun mapRes!13127 () Bool)

(declare-fun tp!662161 () Bool)

(declare-fun tp!662153 () Bool)

(assert (=> mapNonEmpty!13127 (= mapRes!13127 (and tp!662161 tp!662153))))

(declare-fun mapKey!13128 () (_ BitVec 32))

(declare-datatypes ((tuple3!3418 0))(
  ( (tuple3!3419 (_1!14256 (InoxSet Context!2690)) (_2!14256 Int) (_3!2179 Int)) )
))
(declare-datatypes ((tuple2!24154 0))(
  ( (tuple2!24155 (_1!14257 tuple3!3418) (_2!14257 Int)) )
))
(declare-datatypes ((List!24411 0))(
  ( (Nil!24327) (Cons!24327 (h!29728 tuple2!24154) (t!196941 List!24411)) )
))
(declare-datatypes ((array!9299 0))(
  ( (array!9300 (arr!4151 (Array (_ BitVec 32) List!24411)) (size!19033 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5508 0))(
  ( (LongMapFixedSize!5509 (defaultEntry!3119 Int) (mask!6957 (_ BitVec 32)) (extraKeys!3002 (_ BitVec 32)) (zeroValue!3012 List!24411) (minValue!3012 List!24411) (_size!5559 (_ BitVec 32)) (_keys!3051 array!9293) (_values!3034 array!9299) (_vacant!2815 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10841 0))(
  ( (Cell!10842 (v!28907 LongMapFixedSize!5508)) )
))
(declare-datatypes ((MutLongMap!2754 0))(
  ( (LongMap!2754 (underlying!5703 Cell!10841)) (MutLongMapExt!2753 (__x!16438 Int)) )
))
(declare-datatypes ((Cell!10843 0))(
  ( (Cell!10844 (v!28908 MutLongMap!2754)) )
))
(declare-datatypes ((Hashable!2668 0))(
  ( (HashableExt!2667 (__x!16439 Int)) )
))
(declare-datatypes ((MutableMap!2668 0))(
  ( (MutableMapExt!2667 (__x!16440 Int)) (HashMap!2668 (underlying!5704 Cell!10843) (hashF!4591 Hashable!2668) (_size!5560 (_ BitVec 32)) (defaultValue!2830 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!794 0))(
  ( (CacheFurthestNullable!795 (cache!3049 MutableMap!2668) (totalInput!3125 BalanceConc!15588)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!794)

(declare-fun mapValue!13127 () List!24411)

(declare-fun mapRest!13126 () (Array (_ BitVec 32) List!24411))

(assert (=> mapNonEmpty!13127 (= (arr!4151 (_values!3034 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))) (store mapRest!13126 mapKey!13128 mapValue!13127))))

(declare-fun e!1367549 () Bool)

(declare-fun e!1367573 () Bool)

(declare-fun b!2141109 () Bool)

(declare-fun e!1367547 () Bool)

(declare-fun inv!32011 (BalanceConc!15588) Bool)

(assert (=> b!2141109 (= e!1367549 (and e!1367573 (inv!32011 (totalInput!3125 cacheFurthestNullable!114)) e!1367547))))

(declare-fun b!2141110 () Bool)

(declare-fun e!1367545 () Bool)

(declare-fun e!1367550 () Bool)

(declare-fun lt!798151 () MutLongMap!2753)

(get-info :version)

(assert (=> b!2141110 (= e!1367545 (and e!1367550 ((_ is LongMap!2753) lt!798151)))))

(assert (=> b!2141110 (= lt!798151 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))

(declare-fun b!2141111 () Bool)

(declare-fun e!1367536 () Bool)

(declare-fun tp!662162 () Bool)

(assert (=> b!2141111 (= e!1367536 (and tp!662162 mapRes!13126))))

(declare-fun condMapEmpty!13126 () Bool)

(declare-fun mapDefault!13127 () List!24410)

(assert (=> b!2141111 (= condMapEmpty!13126 (= (arr!4149 (_values!3032 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24410)) mapDefault!13127)))))

(declare-fun b!2141112 () Bool)

(declare-fun res!924453 () Bool)

(assert (=> b!2141112 (=> (not res!924453) (not e!1367559))))

(declare-fun valid!2151 (CacheFurthestNullable!794) Bool)

(assert (=> b!2141112 (= res!924453 (valid!2151 cacheFurthestNullable!114))))

(declare-fun e!1367537 () Bool)

(declare-fun e!1367558 () Bool)

(assert (=> b!2141113 (= e!1367537 (and e!1367558 tp!662165))))

(declare-fun b!2141114 () Bool)

(declare-fun e!1367560 () Bool)

(assert (=> b!2141114 (= e!1367560 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun tp!662175 () Bool)

(declare-fun tp!662155 () Bool)

(declare-fun e!1367539 () Bool)

(declare-fun e!1367568 () Bool)

(declare-fun array_inv!2965 (array!9293) Bool)

(declare-fun array_inv!2966 (array!9299) Bool)

(assert (=> b!2141115 (= e!1367539 (and tp!662147 tp!662175 tp!662155 (array_inv!2965 (_keys!3051 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))) (array_inv!2966 (_values!3034 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))) e!1367568))))

(declare-fun b!2141116 () Bool)

(declare-fun e!1367563 () Bool)

(declare-fun e!1367569 () Bool)

(assert (=> b!2141116 (= e!1367563 e!1367569)))

(declare-fun b!2141117 () Bool)

(declare-fun e!1367544 () Bool)

(assert (=> b!2141117 (= e!1367544 e!1367537)))

(declare-fun tp!662170 () Bool)

(declare-fun e!1367555 () Bool)

(declare-fun b!2141118 () Bool)

(declare-fun e!1367540 () Bool)

(declare-fun inv!32012 (StackFrame!228) Bool)

(assert (=> b!2141118 (= e!1367540 (and (inv!32012 (h!29725 stack!8)) e!1367555 tp!662170))))

(declare-fun b!2141119 () Bool)

(declare-fun res!924451 () Bool)

(assert (=> b!2141119 (=> (not res!924451) (not e!1367559))))

(assert (=> b!2141119 (= res!924451 e!1367560)))

(declare-fun res!924458 () Bool)

(assert (=> b!2141119 (=> res!924458 e!1367560)))

(assert (=> b!2141119 (= res!924458 (not (nullableZipper!138 z!3839)))))

(declare-fun mapNonEmpty!13128 () Bool)

(declare-fun mapRes!13128 () Bool)

(declare-fun tp!662171 () Bool)

(declare-fun tp!662154 () Bool)

(assert (=> mapNonEmpty!13128 (= mapRes!13128 (and tp!662171 tp!662154))))

(declare-fun mapRest!13128 () (Array (_ BitVec 32) List!24409))

(declare-fun mapValue!13128 () List!24409)

(declare-fun mapKey!13127 () (_ BitVec 32))

(assert (=> mapNonEmpty!13128 (= (arr!4150 (_values!3033 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))) (store mapRest!13128 mapKey!13127 mapValue!13128))))

(declare-fun tp!662148 () Bool)

(declare-fun e!1367565 () Bool)

(declare-fun tp!662174 () Bool)

(declare-fun array_inv!2967 (array!9295) Bool)

(assert (=> b!2141120 (= e!1367565 (and tp!662157 tp!662148 tp!662174 (array_inv!2965 (_keys!3049 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))) (array_inv!2967 (_values!3032 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))) e!1367536))))

(declare-fun b!2141121 () Bool)

(declare-fun e!1367574 () Bool)

(declare-fun e!1367562 () Bool)

(declare-fun lt!798149 () MutLongMap!2754)

(assert (=> b!2141121 (= e!1367574 (and e!1367562 ((_ is LongMap!2754) lt!798149)))))

(assert (=> b!2141121 (= lt!798149 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))

(declare-fun b!2141122 () Bool)

(declare-fun e!1367546 () Bool)

(declare-fun tp!662173 () Bool)

(declare-fun inv!32013 (Conc!7913) Bool)

(assert (=> b!2141122 (= e!1367546 (and (inv!32013 (c!340563 (totalInput!3124 (h!29725 stack!8)))) tp!662173))))

(declare-fun b!2141123 () Bool)

(declare-fun res!924446 () Bool)

(assert (=> b!2141123 (=> (not res!924446) (not e!1367559))))

(assert (=> b!2141123 (= res!924446 (= (totalInput!3125 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2141124 () Bool)

(declare-fun e!1367542 () Bool)

(assert (=> b!2141124 (= e!1367542 (forall!4968 (Cons!24324 (StackFrame!229 z!3839 from!1043 lastNullablePos!123 lt!798150 totalInput!851) stack!8) lambda!80101))))

(declare-fun tp!662172 () Bool)

(declare-fun setRes!16378 () Bool)

(declare-fun setNonEmpty!16378 () Bool)

(declare-fun e!1367566 () Bool)

(declare-fun setElem!16378 () Context!2690)

(assert (=> setNonEmpty!16378 (= setRes!16378 (and tp!662172 (inv!32010 setElem!16378) e!1367566))))

(declare-fun setRest!16377 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16378 (= (z!5865 (h!29725 stack!8)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16378 true) setRest!16377))))

(declare-fun setIsEmpty!16377 () Bool)

(assert (=> setIsEmpty!16377 setRes!16378))

(declare-fun tp!662166 () Bool)

(declare-fun e!1367557 () Bool)

(declare-fun tp!662156 () Bool)

(declare-fun e!1367571 () Bool)

(declare-fun array_inv!2968 (array!9297) Bool)

(assert (=> b!2141125 (= e!1367571 (and tp!662150 tp!662166 tp!662156 (array_inv!2965 (_keys!3050 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))) (array_inv!2968 (_values!3033 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))) e!1367557))))

(declare-fun b!2141126 () Bool)

(declare-fun res!924455 () Bool)

(assert (=> b!2141126 (=> res!924455 e!1367570)))

(declare-fun lostCauseZipper!115 ((InoxSet Context!2690)) Bool)

(assert (=> b!2141126 (= res!924455 (lostCauseZipper!115 z!3839))))

(declare-fun b!2141127 () Bool)

(declare-fun e!1367552 () Bool)

(assert (=> b!2141127 (= e!1367550 e!1367552)))

(declare-fun b!2141128 () Bool)

(declare-fun tp!662151 () Bool)

(assert (=> b!2141128 (= e!1367568 (and tp!662151 mapRes!13127))))

(declare-fun condMapEmpty!13128 () Bool)

(declare-fun mapDefault!13126 () List!24411)

(assert (=> b!2141128 (= condMapEmpty!13128 (= (arr!4151 (_values!3034 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24411)) mapDefault!13126)))))

(declare-fun b!2141129 () Bool)

(assert (=> b!2141129 (= e!1367569 e!1367565)))

(declare-fun setIsEmpty!16378 () Bool)

(assert (=> setIsEmpty!16378 setRes!16377))

(declare-fun b!2141130 () Bool)

(assert (=> b!2141130 (= e!1367555 (and setRes!16378 (inv!32011 (totalInput!3124 (h!29725 stack!8))) e!1367546))))

(declare-fun condSetEmpty!16378 () Bool)

(assert (=> b!2141130 (= condSetEmpty!16378 (= (z!5865 (h!29725 stack!8)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141131 () Bool)

(assert (=> b!2141131 (= e!1367572 from!1043)))

(assert (=> b!2141132 (= e!1367573 (and e!1367574 tp!662159))))

(declare-fun b!2141133 () Bool)

(declare-fun e!1367543 () Bool)

(assert (=> b!2141133 (= e!1367543 e!1367539)))

(declare-fun b!2141134 () Bool)

(declare-fun res!924449 () Bool)

(assert (=> b!2141134 (=> res!924449 e!1367570)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2141134 (= res!924449 (= from!1043 totalInputSize!296))))

(declare-fun b!2141135 () Bool)

(assert (=> b!2141135 (= e!1367552 e!1367571)))

(declare-fun b!2141136 () Bool)

(assert (=> b!2141136 (= e!1367538 (not e!1367570))))

(declare-fun res!924454 () Bool)

(assert (=> b!2141136 (=> res!924454 e!1367570)))

(declare-datatypes ((Option!4935 0))(
  ( (None!4934) (Some!4934 (v!28909 Int)) )
))
(declare-fun get!7433 (CacheFurthestNullable!794 (InoxSet Context!2690) Int Int) Option!4935)

(assert (=> b!2141136 (= res!924454 ((_ is Some!4934) (get!7433 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2141136 (forall!4968 stack!8 lambda!80099)))

(declare-fun b!2141137 () Bool)

(assert (=> b!2141137 (= e!1367572 lastNullablePos!123)))

(declare-fun b!2141138 () Bool)

(declare-fun tp!662152 () Bool)

(assert (=> b!2141138 (= e!1367566 tp!662152)))

(assert (=> b!2141139 (= e!1367551 (and e!1367545 tp!662164))))

(declare-fun b!2141140 () Bool)

(declare-fun res!924456 () Bool)

(assert (=> b!2141140 (=> (not res!924456) (not e!1367559))))

(declare-fun valid!2152 (CacheDown!1826) Bool)

(assert (=> b!2141140 (= res!924456 (valid!2152 cacheDown!1098))))

(declare-fun mapIsEmpty!13126 () Bool)

(assert (=> mapIsEmpty!13126 mapRes!13126))

(declare-fun b!2141141 () Bool)

(declare-fun e!1367556 () Bool)

(assert (=> b!2141141 (= e!1367556 e!1367559)))

(declare-fun res!924459 () Bool)

(assert (=> b!2141141 (=> (not res!924459) (not e!1367559))))

(assert (=> b!2141141 (= res!924459 (and (= totalInputSize!296 lt!798152) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19034 (BalanceConc!15588) Int)

(assert (=> b!2141141 (= lt!798152 (size!19034 totalInput!851))))

(declare-fun b!2141142 () Bool)

(declare-fun tp!662158 () Bool)

(assert (=> b!2141142 (= e!1367557 (and tp!662158 mapRes!13128))))

(declare-fun condMapEmpty!13127 () Bool)

(declare-fun mapDefault!13128 () List!24409)

(assert (=> b!2141142 (= condMapEmpty!13127 (= (arr!4150 (_values!3033 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24409)) mapDefault!13128)))))

(declare-fun mapIsEmpty!13127 () Bool)

(assert (=> mapIsEmpty!13127 mapRes!13128))

(declare-fun res!924452 () Bool)

(assert (=> start!207898 (=> (not res!924452) (not e!1367556))))

(assert (=> start!207898 (= res!924452 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207898 e!1367556))

(declare-fun inv!32014 (CacheFurthestNullable!794) Bool)

(assert (=> start!207898 (and (inv!32014 cacheFurthestNullable!114) e!1367549)))

(assert (=> start!207898 true))

(declare-fun inv!32015 (CacheDown!1826) Bool)

(assert (=> start!207898 (and (inv!32015 cacheDown!1098) e!1367541)))

(declare-fun inv!32016 (CacheUp!1836) Bool)

(assert (=> start!207898 (and (inv!32016 cacheUp!979) e!1367544)))

(declare-fun condSetEmpty!16377 () Bool)

(assert (=> start!207898 (= condSetEmpty!16377 (= z!3839 ((as const (Array Context!2690 Bool)) false)))))

(assert (=> start!207898 setRes!16377))

(declare-fun e!1367567 () Bool)

(assert (=> start!207898 (and (inv!32011 totalInput!851) e!1367567)))

(assert (=> start!207898 e!1367540))

(assert (=> b!2141143 (= e!1367561 e!1367542)))

(declare-fun res!924447 () Bool)

(assert (=> b!2141143 (=> res!924447 e!1367542)))

(assert (=> b!2141143 (= res!924447 (not (forall!4968 stack!8 lambda!80101)))))

(assert (=> b!2141143 (forall!4968 stack!8 lambda!80101)))

(declare-datatypes ((Unit!37695 0))(
  ( (Unit!37696) )
))
(declare-fun lt!798153 () Unit!37695)

(declare-fun lemmaStackPreservesForEqualRes!27 (List!24408 Int Int) Unit!37695)

(assert (=> b!2141143 (= lt!798153 (lemmaStackPreservesForEqualRes!27 stack!8 lt!798150 lt!798148))))

(assert (=> b!2141143 (forall!4968 stack!8 lambda!80099)))

(declare-fun b!2141144 () Bool)

(assert (=> b!2141144 (= e!1367562 e!1367543)))

(declare-fun b!2141145 () Bool)

(declare-fun lt!798146 () MutLongMap!2752)

(assert (=> b!2141145 (= e!1367558 (and e!1367563 ((_ is LongMap!2752) lt!798146)))))

(assert (=> b!2141145 (= lt!798146 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))

(declare-fun b!2141146 () Bool)

(declare-fun tp!662149 () Bool)

(assert (=> b!2141146 (= e!1367548 tp!662149)))

(declare-fun b!2141147 () Bool)

(declare-fun tp!662163 () Bool)

(assert (=> b!2141147 (= e!1367567 (and (inv!32013 (c!340563 totalInput!851)) tp!662163))))

(declare-fun b!2141148 () Bool)

(declare-fun tp!662168 () Bool)

(assert (=> b!2141148 (= e!1367547 (and (inv!32013 (c!340563 (totalInput!3125 cacheFurthestNullable!114))) tp!662168))))

(declare-fun mapIsEmpty!13128 () Bool)

(assert (=> mapIsEmpty!13128 mapRes!13127))

(assert (= (and start!207898 res!924452) b!2141141))

(assert (= (and b!2141141 res!924459) b!2141119))

(assert (= (and b!2141119 (not res!924458)) b!2141114))

(assert (= (and b!2141119 res!924451) b!2141107))

(assert (= (and b!2141107 res!924448) b!2141140))

(assert (= (and b!2141140 res!924456) b!2141112))

(assert (= (and b!2141112 res!924453) b!2141123))

(assert (= (and b!2141123 res!924446) b!2141104))

(assert (= (and b!2141104 res!924457) b!2141106))

(assert (= (and b!2141106 res!924460) b!2141136))

(assert (= (and b!2141136 (not res!924454)) b!2141134))

(assert (= (and b!2141134 (not res!924449)) b!2141126))

(assert (= (and b!2141126 (not res!924455)) b!2141105))

(assert (= (and b!2141105 c!340561) b!2141131))

(assert (= (and b!2141105 (not c!340561)) b!2141137))

(assert (= (and b!2141105 (not res!924450)) b!2141143))

(assert (= (and b!2141143 (not res!924447)) b!2141124))

(assert (= (and b!2141128 condMapEmpty!13128) mapIsEmpty!13128))

(assert (= (and b!2141128 (not condMapEmpty!13128)) mapNonEmpty!13127))

(assert (= b!2141115 b!2141128))

(assert (= b!2141133 b!2141115))

(assert (= b!2141144 b!2141133))

(assert (= (and b!2141121 ((_ is LongMap!2754) (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))) b!2141144))

(assert (= b!2141132 b!2141121))

(assert (= (and b!2141109 ((_ is HashMap!2668) (cache!3049 cacheFurthestNullable!114))) b!2141132))

(assert (= b!2141109 b!2141148))

(assert (= start!207898 b!2141109))

(assert (= (and b!2141142 condMapEmpty!13127) mapIsEmpty!13127))

(assert (= (and b!2141142 (not condMapEmpty!13127)) mapNonEmpty!13128))

(assert (= b!2141125 b!2141142))

(assert (= b!2141135 b!2141125))

(assert (= b!2141127 b!2141135))

(assert (= (and b!2141110 ((_ is LongMap!2753) (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))) b!2141127))

(assert (= b!2141139 b!2141110))

(assert (= (and b!2141108 ((_ is HashMap!2667) (cache!3048 cacheDown!1098))) b!2141139))

(assert (= start!207898 b!2141108))

(assert (= (and b!2141111 condMapEmpty!13126) mapIsEmpty!13126))

(assert (= (and b!2141111 (not condMapEmpty!13126)) mapNonEmpty!13126))

(assert (= b!2141120 b!2141111))

(assert (= b!2141129 b!2141120))

(assert (= b!2141116 b!2141129))

(assert (= (and b!2141145 ((_ is LongMap!2752) (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))) b!2141116))

(assert (= b!2141113 b!2141145))

(assert (= (and b!2141117 ((_ is HashMap!2666) (cache!3047 cacheUp!979))) b!2141113))

(assert (= start!207898 b!2141117))

(assert (= (and start!207898 condSetEmpty!16377) setIsEmpty!16378))

(assert (= (and start!207898 (not condSetEmpty!16377)) setNonEmpty!16377))

(assert (= setNonEmpty!16377 b!2141146))

(assert (= start!207898 b!2141147))

(assert (= (and b!2141130 condSetEmpty!16378) setIsEmpty!16377))

(assert (= (and b!2141130 (not condSetEmpty!16378)) setNonEmpty!16378))

(assert (= setNonEmpty!16378 b!2141138))

(assert (= b!2141130 b!2141122))

(assert (= b!2141118 b!2141130))

(assert (= (and start!207898 ((_ is Cons!24324) stack!8)) b!2141118))

(declare-fun m!2586853 () Bool)

(assert (=> setNonEmpty!16378 m!2586853))

(declare-fun m!2586855 () Bool)

(assert (=> b!2141125 m!2586855))

(declare-fun m!2586857 () Bool)

(assert (=> b!2141125 m!2586857))

(declare-fun m!2586859 () Bool)

(assert (=> mapNonEmpty!13126 m!2586859))

(declare-fun m!2586861 () Bool)

(assert (=> b!2141122 m!2586861))

(declare-fun m!2586863 () Bool)

(assert (=> b!2141141 m!2586863))

(declare-fun m!2586865 () Bool)

(assert (=> b!2141124 m!2586865))

(declare-fun m!2586867 () Bool)

(assert (=> mapNonEmpty!13128 m!2586867))

(declare-fun m!2586869 () Bool)

(assert (=> b!2141120 m!2586869))

(declare-fun m!2586871 () Bool)

(assert (=> b!2141120 m!2586871))

(declare-fun m!2586873 () Bool)

(assert (=> b!2141140 m!2586873))

(declare-fun m!2586875 () Bool)

(assert (=> b!2141104 m!2586875))

(declare-fun m!2586877 () Bool)

(assert (=> b!2141104 m!2586877))

(declare-fun m!2586879 () Bool)

(assert (=> b!2141107 m!2586879))

(declare-fun m!2586881 () Bool)

(assert (=> mapNonEmpty!13127 m!2586881))

(declare-fun m!2586883 () Bool)

(assert (=> b!2141136 m!2586883))

(assert (=> b!2141136 m!2586875))

(declare-fun m!2586885 () Bool)

(assert (=> b!2141119 m!2586885))

(declare-fun m!2586887 () Bool)

(assert (=> b!2141112 m!2586887))

(declare-fun m!2586889 () Bool)

(assert (=> b!2141115 m!2586889))

(declare-fun m!2586891 () Bool)

(assert (=> b!2141115 m!2586891))

(declare-fun m!2586893 () Bool)

(assert (=> b!2141147 m!2586893))

(declare-fun m!2586895 () Bool)

(assert (=> b!2141126 m!2586895))

(declare-fun m!2586897 () Bool)

(assert (=> setNonEmpty!16377 m!2586897))

(declare-fun m!2586899 () Bool)

(assert (=> b!2141105 m!2586899))

(declare-fun m!2586901 () Bool)

(assert (=> b!2141105 m!2586901))

(declare-fun m!2586903 () Bool)

(assert (=> b!2141105 m!2586903))

(assert (=> b!2141105 m!2586903))

(declare-fun m!2586905 () Bool)

(assert (=> b!2141105 m!2586905))

(declare-fun m!2586907 () Bool)

(assert (=> b!2141109 m!2586907))

(declare-fun m!2586909 () Bool)

(assert (=> b!2141106 m!2586909))

(declare-fun m!2586911 () Bool)

(assert (=> b!2141130 m!2586911))

(declare-fun m!2586913 () Bool)

(assert (=> b!2141143 m!2586913))

(assert (=> b!2141143 m!2586913))

(declare-fun m!2586915 () Bool)

(assert (=> b!2141143 m!2586915))

(assert (=> b!2141143 m!2586875))

(declare-fun m!2586917 () Bool)

(assert (=> b!2141148 m!2586917))

(declare-fun m!2586919 () Bool)

(assert (=> start!207898 m!2586919))

(declare-fun m!2586921 () Bool)

(assert (=> start!207898 m!2586921))

(declare-fun m!2586923 () Bool)

(assert (=> start!207898 m!2586923))

(declare-fun m!2586925 () Bool)

(assert (=> start!207898 m!2586925))

(declare-fun m!2586927 () Bool)

(assert (=> b!2141118 m!2586927))

(check-sat (not b!2141105) (not b!2141118) (not b_next!63671) (not b!2141141) (not setNonEmpty!16377) (not b!2141112) (not b!2141148) (not start!207898) (not b!2141124) (not b!2141140) b_and!172537 (not b!2141119) (not b!2141125) (not b!2141126) b_and!172541 (not mapNonEmpty!13128) (not b!2141111) (not b!2141120) (not b!2141136) (not b_next!63663) b_and!172545 (not b_next!63669) (not b!2141146) (not b!2141106) (not b!2141143) (not b!2141138) (not b!2141115) (not b!2141147) (not b!2141130) b_and!172547 (not b_next!63661) (not b!2141122) b_and!172539 b_and!172543 (not setNonEmpty!16378) (not b_next!63665) (not b!2141109) (not b_next!63667) (not b!2141104) (not b!2141142) (not b!2141128) (not mapNonEmpty!13126) (not mapNonEmpty!13127) (not b!2141107))
(check-sat b_and!172541 (not b_next!63663) (not b_next!63671) b_and!172547 (not b_next!63661) (not b_next!63665) (not b_next!63667) b_and!172537 b_and!172545 (not b_next!63669) b_and!172539 b_and!172543)
(get-model)

(declare-fun d!644845 () Bool)

(declare-fun res!924466 () Bool)

(declare-fun e!1367579 () Bool)

(assert (=> d!644845 (=> res!924466 e!1367579)))

(assert (=> d!644845 (= res!924466 ((_ is Nil!24324) stack!8))))

(assert (=> d!644845 (= (forall!4968 stack!8 lambda!80101) e!1367579)))

(declare-fun b!2141157 () Bool)

(declare-fun e!1367580 () Bool)

(assert (=> b!2141157 (= e!1367579 e!1367580)))

(declare-fun res!924467 () Bool)

(assert (=> b!2141157 (=> (not res!924467) (not e!1367580))))

(declare-fun dynLambda!11372 (Int StackFrame!228) Bool)

(assert (=> b!2141157 (= res!924467 (dynLambda!11372 lambda!80101 (h!29725 stack!8)))))

(declare-fun b!2141158 () Bool)

(assert (=> b!2141158 (= e!1367580 (forall!4968 (t!196938 stack!8) lambda!80101))))

(assert (= (and d!644845 (not res!924466)) b!2141157))

(assert (= (and b!2141157 res!924467) b!2141158))

(declare-fun b_lambda!70645 () Bool)

(assert (=> (not b_lambda!70645) (not b!2141157)))

(declare-fun m!2586929 () Bool)

(assert (=> b!2141157 m!2586929))

(declare-fun m!2586931 () Bool)

(assert (=> b!2141158 m!2586931))

(assert (=> b!2141143 d!644845))

(declare-fun bs!445186 () Bool)

(declare-fun d!644847 () Bool)

(assert (= bs!445186 (and d!644847 b!2141104)))

(declare-fun lambda!80106 () Int)

(assert (=> bs!445186 (= lambda!80106 lambda!80099)))

(declare-fun bs!445187 () Bool)

(assert (= bs!445187 (and d!644847 b!2141106)))

(assert (=> bs!445187 (not (= lambda!80106 lambda!80100))))

(declare-fun bs!445188 () Bool)

(assert (= bs!445188 (and d!644847 b!2141143)))

(assert (=> bs!445188 (= (= lt!798150 lt!798148) (= lambda!80106 lambda!80101))))

(assert (=> d!644847 true))

(declare-fun lambda!80107 () Int)

(assert (=> bs!445186 (= (= lt!798148 lt!798150) (= lambda!80107 lambda!80099))))

(assert (=> bs!445187 (not (= lambda!80107 lambda!80100))))

(assert (=> bs!445188 (= lambda!80107 lambda!80101)))

(declare-fun bs!445189 () Bool)

(assert (= bs!445189 d!644847))

(assert (=> bs!445189 (= (= lt!798148 lt!798150) (= lambda!80107 lambda!80106))))

(assert (=> d!644847 true))

(assert (=> d!644847 (forall!4968 stack!8 lambda!80107)))

(declare-fun lt!798156 () Unit!37695)

(declare-fun choose!12685 (List!24408 Int Int) Unit!37695)

(assert (=> d!644847 (= lt!798156 (choose!12685 stack!8 lt!798150 lt!798148))))

(assert (=> d!644847 (forall!4968 stack!8 lambda!80106)))

(assert (=> d!644847 (= (lemmaStackPreservesForEqualRes!27 stack!8 lt!798150 lt!798148) lt!798156)))

(declare-fun m!2586933 () Bool)

(assert (=> bs!445189 m!2586933))

(declare-fun m!2586935 () Bool)

(assert (=> bs!445189 m!2586935))

(declare-fun m!2586937 () Bool)

(assert (=> bs!445189 m!2586937))

(assert (=> b!2141143 d!644847))

(declare-fun d!644849 () Bool)

(declare-fun res!924468 () Bool)

(declare-fun e!1367581 () Bool)

(assert (=> d!644849 (=> res!924468 e!1367581)))

(assert (=> d!644849 (= res!924468 ((_ is Nil!24324) stack!8))))

(assert (=> d!644849 (= (forall!4968 stack!8 lambda!80099) e!1367581)))

(declare-fun b!2141159 () Bool)

(declare-fun e!1367582 () Bool)

(assert (=> b!2141159 (= e!1367581 e!1367582)))

(declare-fun res!924469 () Bool)

(assert (=> b!2141159 (=> (not res!924469) (not e!1367582))))

(assert (=> b!2141159 (= res!924469 (dynLambda!11372 lambda!80099 (h!29725 stack!8)))))

(declare-fun b!2141160 () Bool)

(assert (=> b!2141160 (= e!1367582 (forall!4968 (t!196938 stack!8) lambda!80099))))

(assert (= (and d!644849 (not res!924468)) b!2141159))

(assert (= (and b!2141159 res!924469) b!2141160))

(declare-fun b_lambda!70647 () Bool)

(assert (=> (not b_lambda!70647) (not b!2141159)))

(declare-fun m!2586939 () Bool)

(assert (=> b!2141159 m!2586939))

(declare-fun m!2586941 () Bool)

(assert (=> b!2141160 m!2586941))

(assert (=> b!2141143 d!644849))

(declare-fun bs!445190 () Bool)

(declare-fun b!2141165 () Bool)

(declare-fun d!644851 () Bool)

(assert (= bs!445190 (and b!2141165 d!644851)))

(declare-fun lambda!80121 () Int)

(declare-fun lambda!80120 () Int)

(assert (=> bs!445190 (not (= lambda!80121 lambda!80120))))

(declare-fun bs!445191 () Bool)

(declare-fun b!2141166 () Bool)

(assert (= bs!445191 (and b!2141166 d!644851)))

(declare-fun lambda!80122 () Int)

(assert (=> bs!445191 (not (= lambda!80122 lambda!80120))))

(declare-fun bs!445192 () Bool)

(assert (= bs!445192 (and b!2141166 b!2141165)))

(assert (=> bs!445192 (= lambda!80122 lambda!80121)))

(declare-fun e!1367589 () Unit!37695)

(declare-fun Unit!37697 () Unit!37695)

(assert (=> b!2141166 (= e!1367589 Unit!37697)))

(declare-datatypes ((List!24412 0))(
  ( (Nil!24328) (Cons!24328 (h!29729 Context!2690) (t!196942 List!24412)) )
))
(declare-fun lt!798180 () List!24412)

(declare-fun call!128813 () List!24412)

(assert (=> b!2141166 (= lt!798180 call!128813)))

(declare-fun lt!798173 () Unit!37695)

(declare-fun lemmaForallThenNotExists!20 (List!24412 Int) Unit!37695)

(assert (=> b!2141166 (= lt!798173 (lemmaForallThenNotExists!20 lt!798180 lambda!80120))))

(declare-fun call!128812 () Bool)

(assert (=> b!2141166 (not call!128812)))

(declare-fun lt!798175 () Unit!37695)

(assert (=> b!2141166 (= lt!798175 lt!798173)))

(declare-fun bm!128808 () Bool)

(declare-fun toList!1080 ((InoxSet Context!2690)) List!24412)

(assert (=> bm!128808 (= call!128813 (toList!1080 z!3839))))

(declare-fun lt!798178 () Bool)

(declare-datatypes ((Option!4936 0))(
  ( (None!4935) (Some!4935 (v!28910 List!24407)) )
))
(declare-fun isEmpty!14330 (Option!4936) Bool)

(declare-fun getLanguageWitness!105 ((InoxSet Context!2690)) Option!4936)

(assert (=> d!644851 (= lt!798178 (isEmpty!14330 (getLanguageWitness!105 z!3839)))))

(declare-fun forall!4969 ((InoxSet Context!2690) Int) Bool)

(assert (=> d!644851 (= lt!798178 (forall!4969 z!3839 lambda!80120))))

(declare-fun lt!798179 () Unit!37695)

(assert (=> d!644851 (= lt!798179 e!1367589)))

(declare-fun c!340574 () Bool)

(assert (=> d!644851 (= c!340574 (not (forall!4969 z!3839 lambda!80120)))))

(assert (=> d!644851 (= (lostCauseZipper!115 z!3839) lt!798178)))

(declare-fun Unit!37698 () Unit!37695)

(assert (=> b!2141165 (= e!1367589 Unit!37698)))

(declare-fun lt!798177 () List!24412)

(assert (=> b!2141165 (= lt!798177 call!128813)))

(declare-fun lt!798176 () Unit!37695)

(declare-fun lemmaNotForallThenExists!20 (List!24412 Int) Unit!37695)

(assert (=> b!2141165 (= lt!798176 (lemmaNotForallThenExists!20 lt!798177 lambda!80120))))

(assert (=> b!2141165 call!128812))

(declare-fun lt!798174 () Unit!37695)

(assert (=> b!2141165 (= lt!798174 lt!798176)))

(declare-fun bm!128807 () Bool)

(declare-fun exists!710 (List!24412 Int) Bool)

(assert (=> bm!128807 (= call!128812 (exists!710 (ite c!340574 lt!798177 lt!798180) (ite c!340574 lambda!80121 lambda!80122)))))

(assert (= (and d!644851 c!340574) b!2141165))

(assert (= (and d!644851 (not c!340574)) b!2141166))

(assert (= (or b!2141165 b!2141166) bm!128807))

(assert (= (or b!2141165 b!2141166) bm!128808))

(declare-fun m!2586943 () Bool)

(assert (=> b!2141165 m!2586943))

(declare-fun m!2586945 () Bool)

(assert (=> d!644851 m!2586945))

(assert (=> d!644851 m!2586945))

(declare-fun m!2586947 () Bool)

(assert (=> d!644851 m!2586947))

(declare-fun m!2586949 () Bool)

(assert (=> d!644851 m!2586949))

(assert (=> d!644851 m!2586949))

(declare-fun m!2586951 () Bool)

(assert (=> b!2141166 m!2586951))

(declare-fun m!2586953 () Bool)

(assert (=> bm!128808 m!2586953))

(declare-fun m!2586955 () Bool)

(assert (=> bm!128807 m!2586955))

(assert (=> b!2141126 d!644851))

(declare-fun d!644853 () Bool)

(assert (=> d!644853 (= (array_inv!2965 (_keys!3050 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))) (bvsge (size!19030 (_keys!3050 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141125 d!644853))

(declare-fun d!644855 () Bool)

(assert (=> d!644855 (= (array_inv!2968 (_values!3033 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))) (bvsge (size!19032 (_values!3033 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141125 d!644855))

(declare-fun d!644857 () Bool)

(declare-fun isBalanced!2460 (Conc!7913) Bool)

(assert (=> d!644857 (= (inv!32011 (totalInput!3125 cacheFurthestNullable!114)) (isBalanced!2460 (c!340563 (totalInput!3125 cacheFurthestNullable!114))))))

(declare-fun bs!445193 () Bool)

(assert (= bs!445193 d!644857))

(declare-fun m!2586957 () Bool)

(assert (=> bs!445193 m!2586957))

(assert (=> b!2141109 d!644857))

(declare-fun d!644859 () Bool)

(declare-fun c!340577 () Bool)

(assert (=> d!644859 (= c!340577 ((_ is Node!7913) (c!340563 totalInput!851)))))

(declare-fun e!1367594 () Bool)

(assert (=> d!644859 (= (inv!32013 (c!340563 totalInput!851)) e!1367594)))

(declare-fun b!2141173 () Bool)

(declare-fun inv!32017 (Conc!7913) Bool)

(assert (=> b!2141173 (= e!1367594 (inv!32017 (c!340563 totalInput!851)))))

(declare-fun b!2141174 () Bool)

(declare-fun e!1367595 () Bool)

(assert (=> b!2141174 (= e!1367594 e!1367595)))

(declare-fun res!924472 () Bool)

(assert (=> b!2141174 (= res!924472 (not ((_ is Leaf!11568) (c!340563 totalInput!851))))))

(assert (=> b!2141174 (=> res!924472 e!1367595)))

(declare-fun b!2141175 () Bool)

(declare-fun inv!32018 (Conc!7913) Bool)

(assert (=> b!2141175 (= e!1367595 (inv!32018 (c!340563 totalInput!851)))))

(assert (= (and d!644859 c!340577) b!2141173))

(assert (= (and d!644859 (not c!340577)) b!2141174))

(assert (= (and b!2141174 (not res!924472)) b!2141175))

(declare-fun m!2586959 () Bool)

(assert (=> b!2141173 m!2586959))

(declare-fun m!2586961 () Bool)

(assert (=> b!2141175 m!2586961))

(assert (=> b!2141147 d!644859))

(declare-fun d!644861 () Bool)

(declare-fun res!924475 () Bool)

(declare-fun e!1367598 () Bool)

(assert (=> d!644861 (=> (not res!924475) (not e!1367598))))

(assert (=> d!644861 (= res!924475 ((_ is HashMap!2668) (cache!3049 cacheFurthestNullable!114)))))

(assert (=> d!644861 (= (inv!32014 cacheFurthestNullable!114) e!1367598)))

(declare-fun b!2141178 () Bool)

(declare-fun validCacheMapFurthestNullable!106 (MutableMap!2668 BalanceConc!15588) Bool)

(assert (=> b!2141178 (= e!1367598 (validCacheMapFurthestNullable!106 (cache!3049 cacheFurthestNullable!114) (totalInput!3125 cacheFurthestNullable!114)))))

(assert (= (and d!644861 res!924475) b!2141178))

(declare-fun m!2586963 () Bool)

(assert (=> b!2141178 m!2586963))

(assert (=> start!207898 d!644861))

(declare-fun d!644863 () Bool)

(declare-fun res!924478 () Bool)

(declare-fun e!1367601 () Bool)

(assert (=> d!644863 (=> (not res!924478) (not e!1367601))))

(assert (=> d!644863 (= res!924478 ((_ is HashMap!2667) (cache!3048 cacheDown!1098)))))

(assert (=> d!644863 (= (inv!32015 cacheDown!1098) e!1367601)))

(declare-fun b!2141181 () Bool)

(declare-fun validCacheMapDown!254 (MutableMap!2667) Bool)

(assert (=> b!2141181 (= e!1367601 (validCacheMapDown!254 (cache!3048 cacheDown!1098)))))

(assert (= (and d!644863 res!924478) b!2141181))

(declare-fun m!2586965 () Bool)

(assert (=> b!2141181 m!2586965))

(assert (=> start!207898 d!644863))

(declare-fun d!644865 () Bool)

(declare-fun res!924481 () Bool)

(declare-fun e!1367604 () Bool)

(assert (=> d!644865 (=> (not res!924481) (not e!1367604))))

(assert (=> d!644865 (= res!924481 ((_ is HashMap!2666) (cache!3047 cacheUp!979)))))

(assert (=> d!644865 (= (inv!32016 cacheUp!979) e!1367604)))

(declare-fun b!2141184 () Bool)

(declare-fun validCacheMapUp!256 (MutableMap!2666) Bool)

(assert (=> b!2141184 (= e!1367604 (validCacheMapUp!256 (cache!3047 cacheUp!979)))))

(assert (= (and d!644865 res!924481) b!2141184))

(declare-fun m!2586967 () Bool)

(assert (=> b!2141184 m!2586967))

(assert (=> start!207898 d!644865))

(declare-fun d!644867 () Bool)

(assert (=> d!644867 (= (inv!32011 totalInput!851) (isBalanced!2460 (c!340563 totalInput!851)))))

(declare-fun bs!445194 () Bool)

(assert (= bs!445194 d!644867))

(declare-fun m!2586969 () Bool)

(assert (=> bs!445194 m!2586969))

(assert (=> start!207898 d!644867))

(assert (=> b!2141104 d!644849))

(declare-fun e!1367612 () Int)

(declare-fun b!2141195 () Bool)

(declare-fun lt!798185 () (InoxSet Context!2690))

(declare-fun e!1367613 () Int)

(assert (=> b!2141195 (= e!1367613 (furthestNullablePosition!75 lt!798185 (+ from!1043 1) totalInput!851 lt!798152 e!1367612))))

(declare-fun derivationStepZipper!95 ((InoxSet Context!2690) C!11696) (InoxSet Context!2690))

(assert (=> b!2141195 (= lt!798185 (derivationStepZipper!95 z!3839 (apply!5964 totalInput!851 from!1043)))))

(declare-fun c!340582 () Bool)

(assert (=> b!2141195 (= c!340582 (nullableZipper!138 lt!798185))))

(declare-fun b!2141196 () Bool)

(assert (=> b!2141196 (= e!1367613 lastNullablePos!123)))

(declare-fun b!2141197 () Bool)

(assert (=> b!2141197 (= e!1367612 from!1043)))

(declare-fun b!2141198 () Bool)

(assert (=> b!2141198 (= e!1367612 lastNullablePos!123)))

(declare-fun b!2141199 () Bool)

(declare-fun e!1367611 () Bool)

(assert (=> b!2141199 (= e!1367611 (lostCauseZipper!115 z!3839))))

(declare-fun d!644869 () Bool)

(declare-fun lt!798186 () Int)

(assert (=> d!644869 (and (>= lt!798186 (- 1)) (< lt!798186 lt!798152) (>= lt!798186 lastNullablePos!123) (or (= lt!798186 lastNullablePos!123) (>= lt!798186 from!1043)))))

(assert (=> d!644869 (= lt!798186 e!1367613)))

(declare-fun c!340583 () Bool)

(assert (=> d!644869 (= c!340583 e!1367611)))

(declare-fun res!924484 () Bool)

(assert (=> d!644869 (=> res!924484 e!1367611)))

(assert (=> d!644869 (= res!924484 (= from!1043 lt!798152))))

(assert (=> d!644869 (and (>= from!1043 0) (<= from!1043 lt!798152))))

(assert (=> d!644869 (= (furthestNullablePosition!75 z!3839 from!1043 totalInput!851 lt!798152 lastNullablePos!123) lt!798186)))

(assert (= (and d!644869 (not res!924484)) b!2141199))

(assert (= (and d!644869 c!340583) b!2141196))

(assert (= (and d!644869 (not c!340583)) b!2141195))

(assert (= (and b!2141195 c!340582) b!2141197))

(assert (= (and b!2141195 (not c!340582)) b!2141198))

(declare-fun m!2586971 () Bool)

(assert (=> b!2141195 m!2586971))

(assert (=> b!2141195 m!2586903))

(assert (=> b!2141195 m!2586903))

(declare-fun m!2586973 () Bool)

(assert (=> b!2141195 m!2586973))

(declare-fun m!2586975 () Bool)

(assert (=> b!2141195 m!2586975))

(assert (=> b!2141199 m!2586895))

(assert (=> b!2141104 d!644869))

(declare-fun b!2141200 () Bool)

(declare-fun e!1367615 () Int)

(declare-fun lt!798187 () (InoxSet Context!2690))

(declare-fun e!1367616 () Int)

(assert (=> b!2141200 (= e!1367616 (furthestNullablePosition!75 lt!798187 (+ 1 from!1043 1) totalInput!851 lt!798152 e!1367615))))

(assert (=> b!2141200 (= lt!798187 (derivationStepZipper!95 (_1!14255 lt!798147) (apply!5964 totalInput!851 (+ 1 from!1043))))))

(declare-fun c!340584 () Bool)

(assert (=> b!2141200 (= c!340584 (nullableZipper!138 lt!798187))))

(declare-fun b!2141201 () Bool)

(assert (=> b!2141201 (= e!1367616 e!1367572)))

(declare-fun b!2141202 () Bool)

(assert (=> b!2141202 (= e!1367615 (+ 1 from!1043))))

(declare-fun b!2141203 () Bool)

(assert (=> b!2141203 (= e!1367615 e!1367572)))

(declare-fun b!2141204 () Bool)

(declare-fun e!1367614 () Bool)

(assert (=> b!2141204 (= e!1367614 (lostCauseZipper!115 (_1!14255 lt!798147)))))

(declare-fun d!644871 () Bool)

(declare-fun lt!798188 () Int)

(assert (=> d!644871 (and (>= lt!798188 (- 1)) (< lt!798188 lt!798152) (>= lt!798188 e!1367572) (or (= lt!798188 e!1367572) (>= lt!798188 (+ 1 from!1043))))))

(assert (=> d!644871 (= lt!798188 e!1367616)))

(declare-fun c!340585 () Bool)

(assert (=> d!644871 (= c!340585 e!1367614)))

(declare-fun res!924485 () Bool)

(assert (=> d!644871 (=> res!924485 e!1367614)))

(assert (=> d!644871 (= res!924485 (= (+ 1 from!1043) lt!798152))))

(assert (=> d!644871 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) lt!798152))))

(assert (=> d!644871 (= (furthestNullablePosition!75 (_1!14255 lt!798147) (+ 1 from!1043) totalInput!851 lt!798152 e!1367572) lt!798188)))

(assert (= (and d!644871 (not res!924485)) b!2141204))

(assert (= (and d!644871 c!340585) b!2141201))

(assert (= (and d!644871 (not c!340585)) b!2141200))

(assert (= (and b!2141200 c!340584) b!2141202))

(assert (= (and b!2141200 (not c!340584)) b!2141203))

(declare-fun m!2586977 () Bool)

(assert (=> b!2141200 m!2586977))

(declare-fun m!2586979 () Bool)

(assert (=> b!2141200 m!2586979))

(assert (=> b!2141200 m!2586979))

(declare-fun m!2586981 () Bool)

(assert (=> b!2141200 m!2586981))

(declare-fun m!2586983 () Bool)

(assert (=> b!2141200 m!2586983))

(declare-fun m!2586985 () Bool)

(assert (=> b!2141204 m!2586985))

(assert (=> b!2141105 d!644871))

(declare-fun bs!445195 () Bool)

(declare-fun d!644873 () Bool)

(assert (= bs!445195 (and d!644873 d!644851)))

(declare-fun lambda!80125 () Int)

(assert (=> bs!445195 (not (= lambda!80125 lambda!80120))))

(declare-fun bs!445196 () Bool)

(assert (= bs!445196 (and d!644873 b!2141165)))

(assert (=> bs!445196 (not (= lambda!80125 lambda!80121))))

(declare-fun bs!445197 () Bool)

(assert (= bs!445197 (and d!644873 b!2141166)))

(assert (=> bs!445197 (not (= lambda!80125 lambda!80122))))

(declare-fun exists!711 ((InoxSet Context!2690) Int) Bool)

(assert (=> d!644873 (= (nullableZipper!138 (_1!14255 lt!798147)) (exists!711 (_1!14255 lt!798147) lambda!80125))))

(declare-fun bs!445198 () Bool)

(assert (= bs!445198 d!644873))

(declare-fun m!2586987 () Bool)

(assert (=> bs!445198 m!2586987))

(assert (=> b!2141105 d!644873))

(declare-fun d!644875 () Bool)

(declare-fun e!1367619 () Bool)

(assert (=> d!644875 e!1367619))

(declare-fun res!924490 () Bool)

(assert (=> d!644875 (=> (not res!924490) (not e!1367619))))

(declare-fun lt!798191 () tuple3!3416)

(assert (=> d!644875 (= res!924490 (= (_1!14255 lt!798191) (derivationStepZipper!95 z!3839 (apply!5964 totalInput!851 from!1043))))))

(declare-fun choose!12686 ((InoxSet Context!2690) C!11696 CacheUp!1836 CacheDown!1826) tuple3!3416)

(assert (=> d!644875 (= lt!798191 (choose!12686 z!3839 (apply!5964 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(assert (=> d!644875 (= (derivationStepZipperMem!56 z!3839 (apply!5964 totalInput!851 from!1043) cacheUp!979 cacheDown!1098) lt!798191)))

(declare-fun b!2141209 () Bool)

(declare-fun res!924491 () Bool)

(assert (=> b!2141209 (=> (not res!924491) (not e!1367619))))

(assert (=> b!2141209 (= res!924491 (valid!2150 (_2!14255 lt!798191)))))

(declare-fun b!2141210 () Bool)

(assert (=> b!2141210 (= e!1367619 (valid!2152 (_3!2178 lt!798191)))))

(assert (= (and d!644875 res!924490) b!2141209))

(assert (= (and b!2141209 res!924491) b!2141210))

(assert (=> d!644875 m!2586903))

(assert (=> d!644875 m!2586973))

(assert (=> d!644875 m!2586903))

(declare-fun m!2586989 () Bool)

(assert (=> d!644875 m!2586989))

(declare-fun m!2586991 () Bool)

(assert (=> b!2141209 m!2586991))

(declare-fun m!2586993 () Bool)

(assert (=> b!2141210 m!2586993))

(assert (=> b!2141105 d!644875))

(declare-fun d!644877 () Bool)

(declare-fun lt!798194 () C!11696)

(declare-fun apply!5965 (List!24407 Int) C!11696)

(declare-fun list!9550 (BalanceConc!15588) List!24407)

(assert (=> d!644877 (= lt!798194 (apply!5965 (list!9550 totalInput!851) from!1043))))

(declare-fun apply!5966 (Conc!7913 Int) C!11696)

(assert (=> d!644877 (= lt!798194 (apply!5966 (c!340563 totalInput!851) from!1043))))

(declare-fun e!1367622 () Bool)

(assert (=> d!644877 e!1367622))

(declare-fun res!924494 () Bool)

(assert (=> d!644877 (=> (not res!924494) (not e!1367622))))

(assert (=> d!644877 (= res!924494 (<= 0 from!1043))))

(assert (=> d!644877 (= (apply!5964 totalInput!851 from!1043) lt!798194)))

(declare-fun b!2141213 () Bool)

(assert (=> b!2141213 (= e!1367622 (< from!1043 (size!19034 totalInput!851)))))

(assert (= (and d!644877 res!924494) b!2141213))

(declare-fun m!2586995 () Bool)

(assert (=> d!644877 m!2586995))

(assert (=> d!644877 m!2586995))

(declare-fun m!2586997 () Bool)

(assert (=> d!644877 m!2586997))

(declare-fun m!2586999 () Bool)

(assert (=> d!644877 m!2586999))

(assert (=> b!2141213 m!2586863))

(assert (=> b!2141105 d!644877))

(declare-fun d!644879 () Bool)

(declare-fun c!340588 () Bool)

(assert (=> d!644879 (= c!340588 ((_ is Node!7913) (c!340563 (totalInput!3124 (h!29725 stack!8)))))))

(declare-fun e!1367623 () Bool)

(assert (=> d!644879 (= (inv!32013 (c!340563 (totalInput!3124 (h!29725 stack!8)))) e!1367623)))

(declare-fun b!2141214 () Bool)

(assert (=> b!2141214 (= e!1367623 (inv!32017 (c!340563 (totalInput!3124 (h!29725 stack!8)))))))

(declare-fun b!2141215 () Bool)

(declare-fun e!1367624 () Bool)

(assert (=> b!2141215 (= e!1367623 e!1367624)))

(declare-fun res!924495 () Bool)

(assert (=> b!2141215 (= res!924495 (not ((_ is Leaf!11568) (c!340563 (totalInput!3124 (h!29725 stack!8))))))))

(assert (=> b!2141215 (=> res!924495 e!1367624)))

(declare-fun b!2141216 () Bool)

(assert (=> b!2141216 (= e!1367624 (inv!32018 (c!340563 (totalInput!3124 (h!29725 stack!8)))))))

(assert (= (and d!644879 c!340588) b!2141214))

(assert (= (and d!644879 (not c!340588)) b!2141215))

(assert (= (and b!2141215 (not res!924495)) b!2141216))

(declare-fun m!2587001 () Bool)

(assert (=> b!2141214 m!2587001))

(declare-fun m!2587003 () Bool)

(assert (=> b!2141216 m!2587003))

(assert (=> b!2141122 d!644879))

(declare-fun d!644881 () Bool)

(assert (=> d!644881 (= (valid!2152 cacheDown!1098) (validCacheMapDown!254 (cache!3048 cacheDown!1098)))))

(declare-fun bs!445199 () Bool)

(assert (= bs!445199 d!644881))

(assert (=> bs!445199 m!2586965))

(assert (=> b!2141140 d!644881))

(declare-fun d!644883 () Bool)

(declare-fun res!924496 () Bool)

(declare-fun e!1367625 () Bool)

(assert (=> d!644883 (=> res!924496 e!1367625)))

(assert (=> d!644883 (= res!924496 ((_ is Nil!24324) (Cons!24324 (StackFrame!229 z!3839 from!1043 lastNullablePos!123 lt!798150 totalInput!851) stack!8)))))

(assert (=> d!644883 (= (forall!4968 (Cons!24324 (StackFrame!229 z!3839 from!1043 lastNullablePos!123 lt!798150 totalInput!851) stack!8) lambda!80101) e!1367625)))

(declare-fun b!2141217 () Bool)

(declare-fun e!1367626 () Bool)

(assert (=> b!2141217 (= e!1367625 e!1367626)))

(declare-fun res!924497 () Bool)

(assert (=> b!2141217 (=> (not res!924497) (not e!1367626))))

(assert (=> b!2141217 (= res!924497 (dynLambda!11372 lambda!80101 (h!29725 (Cons!24324 (StackFrame!229 z!3839 from!1043 lastNullablePos!123 lt!798150 totalInput!851) stack!8))))))

(declare-fun b!2141218 () Bool)

(assert (=> b!2141218 (= e!1367626 (forall!4968 (t!196938 (Cons!24324 (StackFrame!229 z!3839 from!1043 lastNullablePos!123 lt!798150 totalInput!851) stack!8)) lambda!80101))))

(assert (= (and d!644883 (not res!924496)) b!2141217))

(assert (= (and b!2141217 res!924497) b!2141218))

(declare-fun b_lambda!70649 () Bool)

(assert (=> (not b_lambda!70649) (not b!2141217)))

(declare-fun m!2587005 () Bool)

(assert (=> b!2141217 m!2587005))

(declare-fun m!2587007 () Bool)

(assert (=> b!2141218 m!2587007))

(assert (=> b!2141124 d!644883))

(declare-fun d!644885 () Bool)

(declare-fun lt!798197 () Int)

(declare-fun size!19035 (List!24407) Int)

(assert (=> d!644885 (= lt!798197 (size!19035 (list!9550 totalInput!851)))))

(declare-fun size!19036 (Conc!7913) Int)

(assert (=> d!644885 (= lt!798197 (size!19036 (c!340563 totalInput!851)))))

(assert (=> d!644885 (= (size!19034 totalInput!851) lt!798197)))

(declare-fun bs!445200 () Bool)

(assert (= bs!445200 d!644885))

(assert (=> bs!445200 m!2586995))

(assert (=> bs!445200 m!2586995))

(declare-fun m!2587009 () Bool)

(assert (=> bs!445200 m!2587009))

(declare-fun m!2587011 () Bool)

(assert (=> bs!445200 m!2587011))

(assert (=> b!2141141 d!644885))

(declare-fun d!644887 () Bool)

(declare-fun res!924498 () Bool)

(declare-fun e!1367627 () Bool)

(assert (=> d!644887 (=> res!924498 e!1367627)))

(assert (=> d!644887 (= res!924498 ((_ is Nil!24324) stack!8))))

(assert (=> d!644887 (= (forall!4968 stack!8 lambda!80100) e!1367627)))

(declare-fun b!2141219 () Bool)

(declare-fun e!1367628 () Bool)

(assert (=> b!2141219 (= e!1367627 e!1367628)))

(declare-fun res!924499 () Bool)

(assert (=> b!2141219 (=> (not res!924499) (not e!1367628))))

(assert (=> b!2141219 (= res!924499 (dynLambda!11372 lambda!80100 (h!29725 stack!8)))))

(declare-fun b!2141220 () Bool)

(assert (=> b!2141220 (= e!1367628 (forall!4968 (t!196938 stack!8) lambda!80100))))

(assert (= (and d!644887 (not res!924498)) b!2141219))

(assert (= (and b!2141219 res!924499) b!2141220))

(declare-fun b_lambda!70651 () Bool)

(assert (=> (not b_lambda!70651) (not b!2141219)))

(declare-fun m!2587013 () Bool)

(assert (=> b!2141219 m!2587013))

(declare-fun m!2587015 () Bool)

(assert (=> b!2141220 m!2587015))

(assert (=> b!2141106 d!644887))

(declare-fun d!644889 () Bool)

(assert (=> d!644889 (= (valid!2150 cacheUp!979) (validCacheMapUp!256 (cache!3047 cacheUp!979)))))

(declare-fun bs!445201 () Bool)

(assert (= bs!445201 d!644889))

(assert (=> bs!445201 m!2586967))

(assert (=> b!2141107 d!644889))

(declare-fun d!644891 () Bool)

(declare-fun lambda!80128 () Int)

(declare-fun forall!4970 (List!24406 Int) Bool)

(assert (=> d!644891 (= (inv!32010 setElem!16378) (forall!4970 (exprs!1845 setElem!16378) lambda!80128))))

(declare-fun bs!445202 () Bool)

(assert (= bs!445202 d!644891))

(declare-fun m!2587017 () Bool)

(assert (=> bs!445202 m!2587017))

(assert (=> setNonEmpty!16378 d!644891))

(declare-fun bs!445203 () Bool)

(declare-fun d!644893 () Bool)

(assert (= bs!445203 (and d!644893 d!644891)))

(declare-fun lambda!80129 () Int)

(assert (=> bs!445203 (= lambda!80129 lambda!80128)))

(assert (=> d!644893 (= (inv!32010 setElem!16377) (forall!4970 (exprs!1845 setElem!16377) lambda!80129))))

(declare-fun bs!445204 () Bool)

(assert (= bs!445204 d!644893))

(declare-fun m!2587019 () Bool)

(assert (=> bs!445204 m!2587019))

(assert (=> setNonEmpty!16377 d!644893))

(declare-fun b!2141233 () Bool)

(declare-fun res!924514 () Bool)

(declare-fun e!1367633 () Bool)

(assert (=> b!2141233 (=> (not res!924514) (not e!1367633))))

(assert (=> b!2141233 (= res!924514 (= (size!19034 (totalInput!3124 (h!29725 stack!8))) (size!19034 (totalInput!3124 (h!29725 stack!8)))))))

(declare-fun b!2141234 () Bool)

(assert (=> b!2141234 (= e!1367633 (= (res!924461 (h!29725 stack!8)) (furthestNullablePosition!75 (z!5865 (h!29725 stack!8)) (from!2739 (h!29725 stack!8)) (totalInput!3124 (h!29725 stack!8)) (size!19034 (totalInput!3124 (h!29725 stack!8))) (lastNullablePos!426 (h!29725 stack!8)))))))

(declare-fun b!2141235 () Bool)

(declare-fun res!924512 () Bool)

(assert (=> b!2141235 (=> (not res!924512) (not e!1367633))))

(declare-fun e!1367634 () Bool)

(assert (=> b!2141235 (= res!924512 e!1367634)))

(declare-fun res!924517 () Bool)

(assert (=> b!2141235 (=> res!924517 e!1367634)))

(assert (=> b!2141235 (= res!924517 (not (nullableZipper!138 (z!5865 (h!29725 stack!8)))))))

(declare-fun b!2141236 () Bool)

(declare-fun res!924513 () Bool)

(assert (=> b!2141236 (=> (not res!924513) (not e!1367633))))

(assert (=> b!2141236 (= res!924513 (and (>= (lastNullablePos!426 (h!29725 stack!8)) (- 1)) (< (lastNullablePos!426 (h!29725 stack!8)) (from!2739 (h!29725 stack!8)))))))

(declare-fun b!2141237 () Bool)

(declare-fun res!924516 () Bool)

(assert (=> b!2141237 (=> (not res!924516) (not e!1367633))))

(assert (=> b!2141237 (= res!924516 (<= (from!2739 (h!29725 stack!8)) (size!19034 (totalInput!3124 (h!29725 stack!8)))))))

(declare-fun b!2141238 () Bool)

(assert (=> b!2141238 (= e!1367634 (= (lastNullablePos!426 (h!29725 stack!8)) (- (from!2739 (h!29725 stack!8)) 1)))))

(declare-fun d!644895 () Bool)

(declare-fun res!924515 () Bool)

(assert (=> d!644895 (=> (not res!924515) (not e!1367633))))

(assert (=> d!644895 (= res!924515 (>= (from!2739 (h!29725 stack!8)) 0))))

(assert (=> d!644895 (= (inv!32012 (h!29725 stack!8)) e!1367633)))

(assert (= (and d!644895 res!924515) b!2141237))

(assert (= (and b!2141237 res!924516) b!2141233))

(assert (= (and b!2141233 res!924514) b!2141236))

(assert (= (and b!2141236 res!924513) b!2141235))

(assert (= (and b!2141235 (not res!924517)) b!2141238))

(assert (= (and b!2141235 res!924512) b!2141234))

(declare-fun m!2587021 () Bool)

(assert (=> b!2141233 m!2587021))

(assert (=> b!2141234 m!2587021))

(assert (=> b!2141234 m!2587021))

(declare-fun m!2587023 () Bool)

(assert (=> b!2141234 m!2587023))

(declare-fun m!2587025 () Bool)

(assert (=> b!2141235 m!2587025))

(assert (=> b!2141237 m!2587021))

(assert (=> b!2141118 d!644895))

(declare-fun bs!445205 () Bool)

(declare-fun d!644897 () Bool)

(assert (= bs!445205 (and d!644897 d!644851)))

(declare-fun lambda!80130 () Int)

(assert (=> bs!445205 (not (= lambda!80130 lambda!80120))))

(declare-fun bs!445206 () Bool)

(assert (= bs!445206 (and d!644897 b!2141165)))

(assert (=> bs!445206 (not (= lambda!80130 lambda!80121))))

(declare-fun bs!445207 () Bool)

(assert (= bs!445207 (and d!644897 b!2141166)))

(assert (=> bs!445207 (not (= lambda!80130 lambda!80122))))

(declare-fun bs!445208 () Bool)

(assert (= bs!445208 (and d!644897 d!644873)))

(assert (=> bs!445208 (= lambda!80130 lambda!80125)))

(assert (=> d!644897 (= (nullableZipper!138 z!3839) (exists!711 z!3839 lambda!80130))))

(declare-fun bs!445209 () Bool)

(assert (= bs!445209 d!644897))

(declare-fun m!2587027 () Bool)

(assert (=> bs!445209 m!2587027))

(assert (=> b!2141119 d!644897))

(declare-fun d!644899 () Bool)

(declare-fun e!1367637 () Bool)

(assert (=> d!644899 e!1367637))

(declare-fun res!924520 () Bool)

(assert (=> d!644899 (=> res!924520 e!1367637)))

(declare-fun lt!798200 () Option!4935)

(declare-fun isEmpty!14331 (Option!4935) Bool)

(assert (=> d!644899 (= res!924520 (isEmpty!14331 lt!798200))))

(declare-fun choose!12687 (CacheFurthestNullable!794 (InoxSet Context!2690) Int Int) Option!4935)

(assert (=> d!644899 (= lt!798200 (choose!12687 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!644899 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!644899 (= (get!7433 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!798200)))

(declare-fun b!2141241 () Bool)

(declare-fun get!7434 (Option!4935) Int)

(assert (=> b!2141241 (= e!1367637 (= (get!7434 lt!798200) (furthestNullablePosition!75 z!3839 from!1043 (totalInput!3125 cacheFurthestNullable!114) (size!19034 (totalInput!3125 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!644899 (not res!924520)) b!2141241))

(declare-fun m!2587029 () Bool)

(assert (=> d!644899 m!2587029))

(declare-fun m!2587031 () Bool)

(assert (=> d!644899 m!2587031))

(declare-fun m!2587033 () Bool)

(assert (=> b!2141241 m!2587033))

(declare-fun m!2587035 () Bool)

(assert (=> b!2141241 m!2587035))

(assert (=> b!2141241 m!2587035))

(declare-fun m!2587037 () Bool)

(assert (=> b!2141241 m!2587037))

(assert (=> b!2141136 d!644899))

(assert (=> b!2141136 d!644849))

(declare-fun d!644901 () Bool)

(assert (=> d!644901 (= (array_inv!2965 (_keys!3049 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))) (bvsge (size!19030 (_keys!3049 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141120 d!644901))

(declare-fun d!644903 () Bool)

(assert (=> d!644903 (= (array_inv!2967 (_values!3032 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))) (bvsge (size!19031 (_values!3032 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141120 d!644903))

(declare-fun d!644905 () Bool)

(declare-fun c!340589 () Bool)

(assert (=> d!644905 (= c!340589 ((_ is Node!7913) (c!340563 (totalInput!3125 cacheFurthestNullable!114))))))

(declare-fun e!1367638 () Bool)

(assert (=> d!644905 (= (inv!32013 (c!340563 (totalInput!3125 cacheFurthestNullable!114))) e!1367638)))

(declare-fun b!2141242 () Bool)

(assert (=> b!2141242 (= e!1367638 (inv!32017 (c!340563 (totalInput!3125 cacheFurthestNullable!114))))))

(declare-fun b!2141243 () Bool)

(declare-fun e!1367639 () Bool)

(assert (=> b!2141243 (= e!1367638 e!1367639)))

(declare-fun res!924521 () Bool)

(assert (=> b!2141243 (= res!924521 (not ((_ is Leaf!11568) (c!340563 (totalInput!3125 cacheFurthestNullable!114)))))))

(assert (=> b!2141243 (=> res!924521 e!1367639)))

(declare-fun b!2141244 () Bool)

(assert (=> b!2141244 (= e!1367639 (inv!32018 (c!340563 (totalInput!3125 cacheFurthestNullable!114))))))

(assert (= (and d!644905 c!340589) b!2141242))

(assert (= (and d!644905 (not c!340589)) b!2141243))

(assert (= (and b!2141243 (not res!924521)) b!2141244))

(declare-fun m!2587039 () Bool)

(assert (=> b!2141242 m!2587039))

(declare-fun m!2587041 () Bool)

(assert (=> b!2141244 m!2587041))

(assert (=> b!2141148 d!644905))

(declare-fun d!644907 () Bool)

(assert (=> d!644907 (= (inv!32011 (totalInput!3124 (h!29725 stack!8))) (isBalanced!2460 (c!340563 (totalInput!3124 (h!29725 stack!8)))))))

(declare-fun bs!445210 () Bool)

(assert (= bs!445210 d!644907))

(declare-fun m!2587043 () Bool)

(assert (=> bs!445210 m!2587043))

(assert (=> b!2141130 d!644907))

(declare-fun d!644909 () Bool)

(assert (=> d!644909 (= (valid!2151 cacheFurthestNullable!114) (validCacheMapFurthestNullable!106 (cache!3049 cacheFurthestNullable!114) (totalInput!3125 cacheFurthestNullable!114)))))

(declare-fun bs!445211 () Bool)

(assert (= bs!445211 d!644909))

(assert (=> bs!445211 m!2586963))

(assert (=> b!2141112 d!644909))

(declare-fun d!644911 () Bool)

(assert (=> d!644911 (= (array_inv!2965 (_keys!3051 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))) (bvsge (size!19030 (_keys!3051 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141115 d!644911))

(declare-fun d!644913 () Bool)

(assert (=> d!644913 (= (array_inv!2966 (_values!3034 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))) (bvsge (size!19033 (_values!3034 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141115 d!644913))

(declare-fun setRes!16381 () Bool)

(declare-fun e!1367648 () Bool)

(declare-fun e!1367649 () Bool)

(declare-fun b!2141255 () Bool)

(assert (=> b!2141255 (= e!1367649 (and setRes!16381 (inv!32011 (totalInput!3124 (h!29725 (t!196938 stack!8)))) e!1367648))))

(declare-fun condSetEmpty!16381 () Bool)

(assert (=> b!2141255 (= condSetEmpty!16381 (= (z!5865 (h!29725 (t!196938 stack!8))) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141257 () Bool)

(declare-fun tp!662186 () Bool)

(assert (=> b!2141257 (= e!1367648 (and (inv!32013 (c!340563 (totalInput!3124 (h!29725 (t!196938 stack!8))))) tp!662186))))

(declare-fun setNonEmpty!16381 () Bool)

(declare-fun tp!662187 () Bool)

(declare-fun setElem!16381 () Context!2690)

(declare-fun e!1367650 () Bool)

(assert (=> setNonEmpty!16381 (= setRes!16381 (and tp!662187 (inv!32010 setElem!16381) e!1367650))))

(declare-fun setRest!16381 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16381 (= (z!5865 (h!29725 (t!196938 stack!8))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16381 true) setRest!16381))))

(declare-fun e!1367651 () Bool)

(assert (=> b!2141118 (= tp!662170 e!1367651)))

(declare-fun b!2141256 () Bool)

(declare-fun tp!662184 () Bool)

(assert (=> b!2141256 (= e!1367650 tp!662184)))

(declare-fun setIsEmpty!16381 () Bool)

(assert (=> setIsEmpty!16381 setRes!16381))

(declare-fun tp!662185 () Bool)

(declare-fun b!2141258 () Bool)

(assert (=> b!2141258 (= e!1367651 (and (inv!32012 (h!29725 (t!196938 stack!8))) e!1367649 tp!662185))))

(assert (= (and b!2141255 condSetEmpty!16381) setIsEmpty!16381))

(assert (= (and b!2141255 (not condSetEmpty!16381)) setNonEmpty!16381))

(assert (= setNonEmpty!16381 b!2141256))

(assert (= b!2141255 b!2141257))

(assert (= b!2141258 b!2141255))

(assert (= (and b!2141118 ((_ is Cons!24324) (t!196938 stack!8))) b!2141258))

(declare-fun m!2587045 () Bool)

(assert (=> b!2141255 m!2587045))

(declare-fun m!2587047 () Bool)

(assert (=> b!2141257 m!2587047))

(declare-fun m!2587049 () Bool)

(assert (=> setNonEmpty!16381 m!2587049))

(declare-fun m!2587051 () Bool)

(assert (=> b!2141258 m!2587051))

(declare-fun b!2141273 () Bool)

(declare-fun e!1367665 () Bool)

(declare-fun tp!662209 () Bool)

(assert (=> b!2141273 (= e!1367665 tp!662209)))

(declare-fun setIsEmpty!16386 () Bool)

(declare-fun setRes!16387 () Bool)

(assert (=> setIsEmpty!16386 setRes!16387))

(declare-fun condMapEmpty!13131 () Bool)

(declare-fun mapDefault!13131 () List!24410)

(assert (=> mapNonEmpty!13126 (= condMapEmpty!13131 (= mapRest!13127 ((as const (Array (_ BitVec 32) List!24410)) mapDefault!13131)))))

(declare-fun e!1367669 () Bool)

(declare-fun mapRes!13131 () Bool)

(assert (=> mapNonEmpty!13126 (= tp!662167 (and e!1367669 mapRes!13131))))

(declare-fun setIsEmpty!16387 () Bool)

(declare-fun setRes!16386 () Bool)

(assert (=> setIsEmpty!16387 setRes!16386))

(declare-fun tp_is_empty!9513 () Bool)

(declare-fun e!1367666 () Bool)

(declare-fun b!2141274 () Bool)

(declare-fun tp!662206 () Bool)

(assert (=> b!2141274 (= e!1367669 (and (inv!32010 (_1!14253 (_1!14254 (h!29727 mapDefault!13131)))) e!1367666 tp_is_empty!9513 setRes!16386 tp!662206))))

(declare-fun condSetEmpty!16387 () Bool)

(assert (=> b!2141274 (= condSetEmpty!16387 (= (_2!14254 (h!29727 mapDefault!13131)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun mapIsEmpty!13131 () Bool)

(assert (=> mapIsEmpty!13131 mapRes!13131))

(declare-fun setElem!16387 () Context!2690)

(declare-fun setNonEmpty!16386 () Bool)

(declare-fun tp!662214 () Bool)

(declare-fun e!1367667 () Bool)

(assert (=> setNonEmpty!16386 (= setRes!16386 (and tp!662214 (inv!32010 setElem!16387) e!1367667))))

(declare-fun setRest!16387 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16386 (= (_2!14254 (h!29727 mapDefault!13131)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16387 true) setRest!16387))))

(declare-fun mapValue!13131 () List!24410)

(declare-fun b!2141275 () Bool)

(declare-fun e!1367668 () Bool)

(declare-fun tp!662208 () Bool)

(declare-fun e!1367664 () Bool)

(assert (=> b!2141275 (= e!1367668 (and (inv!32010 (_1!14253 (_1!14254 (h!29727 mapValue!13131)))) e!1367664 tp_is_empty!9513 setRes!16387 tp!662208))))

(declare-fun condSetEmpty!16386 () Bool)

(assert (=> b!2141275 (= condSetEmpty!16386 (= (_2!14254 (h!29727 mapValue!13131)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141276 () Bool)

(declare-fun tp!662213 () Bool)

(assert (=> b!2141276 (= e!1367664 tp!662213)))

(declare-fun mapNonEmpty!13131 () Bool)

(declare-fun tp!662207 () Bool)

(assert (=> mapNonEmpty!13131 (= mapRes!13131 (and tp!662207 e!1367668))))

(declare-fun mapKey!13131 () (_ BitVec 32))

(declare-fun mapRest!13131 () (Array (_ BitVec 32) List!24410))

(assert (=> mapNonEmpty!13131 (= mapRest!13127 (store mapRest!13131 mapKey!13131 mapValue!13131))))

(declare-fun b!2141277 () Bool)

(declare-fun tp!662212 () Bool)

(assert (=> b!2141277 (= e!1367666 tp!662212)))

(declare-fun setElem!16386 () Context!2690)

(declare-fun tp!662211 () Bool)

(declare-fun setNonEmpty!16387 () Bool)

(assert (=> setNonEmpty!16387 (= setRes!16387 (and tp!662211 (inv!32010 setElem!16386) e!1367665))))

(declare-fun setRest!16386 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16387 (= (_2!14254 (h!29727 mapValue!13131)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16386 true) setRest!16386))))

(declare-fun b!2141278 () Bool)

(declare-fun tp!662210 () Bool)

(assert (=> b!2141278 (= e!1367667 tp!662210)))

(assert (= (and mapNonEmpty!13126 condMapEmpty!13131) mapIsEmpty!13131))

(assert (= (and mapNonEmpty!13126 (not condMapEmpty!13131)) mapNonEmpty!13131))

(assert (= b!2141275 b!2141276))

(assert (= (and b!2141275 condSetEmpty!16386) setIsEmpty!16386))

(assert (= (and b!2141275 (not condSetEmpty!16386)) setNonEmpty!16387))

(assert (= setNonEmpty!16387 b!2141273))

(assert (= (and mapNonEmpty!13131 ((_ is Cons!24326) mapValue!13131)) b!2141275))

(assert (= b!2141274 b!2141277))

(assert (= (and b!2141274 condSetEmpty!16387) setIsEmpty!16387))

(assert (= (and b!2141274 (not condSetEmpty!16387)) setNonEmpty!16386))

(assert (= setNonEmpty!16386 b!2141278))

(assert (= (and mapNonEmpty!13126 ((_ is Cons!24326) mapDefault!13131)) b!2141274))

(declare-fun m!2587053 () Bool)

(assert (=> mapNonEmpty!13131 m!2587053))

(declare-fun m!2587055 () Bool)

(assert (=> b!2141274 m!2587055))

(declare-fun m!2587057 () Bool)

(assert (=> b!2141275 m!2587057))

(declare-fun m!2587059 () Bool)

(assert (=> setNonEmpty!16386 m!2587059))

(declare-fun m!2587061 () Bool)

(assert (=> setNonEmpty!16387 m!2587061))

(declare-fun setIsEmpty!16390 () Bool)

(declare-fun setRes!16390 () Bool)

(assert (=> setIsEmpty!16390 setRes!16390))

(declare-fun e!1367677 () Bool)

(declare-fun e!1367678 () Bool)

(declare-fun b!2141287 () Bool)

(declare-fun tp!662226 () Bool)

(assert (=> b!2141287 (= e!1367678 (and (inv!32010 (_1!14253 (_1!14254 (h!29727 mapValue!13126)))) e!1367677 tp_is_empty!9513 setRes!16390 tp!662226))))

(declare-fun condSetEmpty!16390 () Bool)

(assert (=> b!2141287 (= condSetEmpty!16390 (= (_2!14254 (h!29727 mapValue!13126)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141288 () Bool)

(declare-fun e!1367676 () Bool)

(declare-fun tp!662224 () Bool)

(assert (=> b!2141288 (= e!1367676 tp!662224)))

(assert (=> mapNonEmpty!13126 (= tp!662160 e!1367678)))

(declare-fun b!2141289 () Bool)

(declare-fun tp!662223 () Bool)

(assert (=> b!2141289 (= e!1367677 tp!662223)))

(declare-fun setElem!16390 () Context!2690)

(declare-fun setNonEmpty!16390 () Bool)

(declare-fun tp!662225 () Bool)

(assert (=> setNonEmpty!16390 (= setRes!16390 (and tp!662225 (inv!32010 setElem!16390) e!1367676))))

(declare-fun setRest!16390 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16390 (= (_2!14254 (h!29727 mapValue!13126)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16390 true) setRest!16390))))

(assert (= b!2141287 b!2141289))

(assert (= (and b!2141287 condSetEmpty!16390) setIsEmpty!16390))

(assert (= (and b!2141287 (not condSetEmpty!16390)) setNonEmpty!16390))

(assert (= setNonEmpty!16390 b!2141288))

(assert (= (and mapNonEmpty!13126 ((_ is Cons!24326) mapValue!13126)) b!2141287))

(declare-fun m!2587063 () Bool)

(assert (=> b!2141287 m!2587063))

(declare-fun m!2587065 () Bool)

(assert (=> setNonEmpty!16390 m!2587065))

(declare-fun b!2141298 () Bool)

(declare-fun e!1367687 () Bool)

(declare-fun tp!662240 () Bool)

(assert (=> b!2141298 (= e!1367687 tp!662240)))

(declare-fun b!2141299 () Bool)

(declare-fun e!1367685 () Bool)

(declare-fun tp!662238 () Bool)

(assert (=> b!2141299 (= e!1367685 tp!662238)))

(declare-fun e!1367686 () Bool)

(assert (=> b!2141125 (= tp!662166 e!1367686)))

(declare-fun tp!662237 () Bool)

(declare-fun tp!662239 () Bool)

(declare-fun setRes!16393 () Bool)

(declare-fun b!2141300 () Bool)

(assert (=> b!2141300 (= e!1367686 (and tp!662239 (inv!32010 (_2!14251 (_1!14252 (h!29726 (zeroValue!3011 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098)))))))))) e!1367687 tp_is_empty!9513 setRes!16393 tp!662237))))

(declare-fun condSetEmpty!16393 () Bool)

(assert (=> b!2141300 (= condSetEmpty!16393 (= (_2!14252 (h!29726 (zeroValue!3011 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098)))))))) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun setIsEmpty!16393 () Bool)

(assert (=> setIsEmpty!16393 setRes!16393))

(declare-fun tp!662241 () Bool)

(declare-fun setElem!16393 () Context!2690)

(declare-fun setNonEmpty!16393 () Bool)

(assert (=> setNonEmpty!16393 (= setRes!16393 (and tp!662241 (inv!32010 setElem!16393) e!1367685))))

(declare-fun setRest!16393 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16393 (= (_2!14252 (h!29726 (zeroValue!3011 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16393 true) setRest!16393))))

(assert (= b!2141300 b!2141298))

(assert (= (and b!2141300 condSetEmpty!16393) setIsEmpty!16393))

(assert (= (and b!2141300 (not condSetEmpty!16393)) setNonEmpty!16393))

(assert (= setNonEmpty!16393 b!2141299))

(assert (= (and b!2141125 ((_ is Cons!24325) (zeroValue!3011 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098)))))))) b!2141300))

(declare-fun m!2587067 () Bool)

(assert (=> b!2141300 m!2587067))

(declare-fun m!2587069 () Bool)

(assert (=> setNonEmpty!16393 m!2587069))

(declare-fun b!2141301 () Bool)

(declare-fun e!1367690 () Bool)

(declare-fun tp!662245 () Bool)

(assert (=> b!2141301 (= e!1367690 tp!662245)))

(declare-fun b!2141302 () Bool)

(declare-fun e!1367688 () Bool)

(declare-fun tp!662243 () Bool)

(assert (=> b!2141302 (= e!1367688 tp!662243)))

(declare-fun e!1367689 () Bool)

(assert (=> b!2141125 (= tp!662156 e!1367689)))

(declare-fun b!2141303 () Bool)

(declare-fun tp!662244 () Bool)

(declare-fun setRes!16394 () Bool)

(declare-fun tp!662242 () Bool)

(assert (=> b!2141303 (= e!1367689 (and tp!662244 (inv!32010 (_2!14251 (_1!14252 (h!29726 (minValue!3011 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098)))))))))) e!1367690 tp_is_empty!9513 setRes!16394 tp!662242))))

(declare-fun condSetEmpty!16394 () Bool)

(assert (=> b!2141303 (= condSetEmpty!16394 (= (_2!14252 (h!29726 (minValue!3011 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098)))))))) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun setIsEmpty!16394 () Bool)

(assert (=> setIsEmpty!16394 setRes!16394))

(declare-fun tp!662246 () Bool)

(declare-fun setElem!16394 () Context!2690)

(declare-fun setNonEmpty!16394 () Bool)

(assert (=> setNonEmpty!16394 (= setRes!16394 (and tp!662246 (inv!32010 setElem!16394) e!1367688))))

(declare-fun setRest!16394 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16394 (= (_2!14252 (h!29726 (minValue!3011 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16394 true) setRest!16394))))

(assert (= b!2141303 b!2141301))

(assert (= (and b!2141303 condSetEmpty!16394) setIsEmpty!16394))

(assert (= (and b!2141303 (not condSetEmpty!16394)) setNonEmpty!16394))

(assert (= setNonEmpty!16394 b!2141302))

(assert (= (and b!2141125 ((_ is Cons!24325) (minValue!3011 (v!28905 (underlying!5701 (v!28906 (underlying!5702 (cache!3048 cacheDown!1098)))))))) b!2141303))

(declare-fun m!2587071 () Bool)

(assert (=> b!2141303 m!2587071))

(declare-fun m!2587073 () Bool)

(assert (=> setNonEmpty!16394 m!2587073))

(declare-fun b!2141314 () Bool)

(declare-fun e!1367702 () Bool)

(declare-fun setRes!16399 () Bool)

(declare-fun tp!662262 () Bool)

(assert (=> b!2141314 (= e!1367702 (and setRes!16399 tp!662262))))

(declare-fun condSetEmpty!16400 () Bool)

(declare-fun mapDefault!13134 () List!24411)

(assert (=> b!2141314 (= condSetEmpty!16400 (= (_1!14256 (_1!14257 (h!29728 mapDefault!13134))) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun setIsEmpty!16399 () Bool)

(assert (=> setIsEmpty!16399 setRes!16399))

(declare-fun setIsEmpty!16400 () Bool)

(declare-fun setRes!16400 () Bool)

(assert (=> setIsEmpty!16400 setRes!16400))

(declare-fun mapIsEmpty!13134 () Bool)

(declare-fun mapRes!13134 () Bool)

(assert (=> mapIsEmpty!13134 mapRes!13134))

(declare-fun b!2141315 () Bool)

(declare-fun e!1367700 () Bool)

(declare-fun tp!662263 () Bool)

(assert (=> b!2141315 (= e!1367700 tp!662263)))

(declare-fun b!2141316 () Bool)

(declare-fun e!1367701 () Bool)

(declare-fun tp!662264 () Bool)

(assert (=> b!2141316 (= e!1367701 (and setRes!16400 tp!662264))))

(declare-fun condSetEmpty!16399 () Bool)

(declare-fun mapValue!13134 () List!24411)

(assert (=> b!2141316 (= condSetEmpty!16399 (= (_1!14256 (_1!14257 (h!29728 mapValue!13134))) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141317 () Bool)

(declare-fun e!1367699 () Bool)

(declare-fun tp!662265 () Bool)

(assert (=> b!2141317 (= e!1367699 tp!662265)))

(declare-fun tp!662261 () Bool)

(declare-fun setNonEmpty!16399 () Bool)

(declare-fun setElem!16399 () Context!2690)

(assert (=> setNonEmpty!16399 (= setRes!16400 (and tp!662261 (inv!32010 setElem!16399) e!1367699))))

(declare-fun setRest!16399 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16399 (= (_1!14256 (_1!14257 (h!29728 mapValue!13134))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16399 true) setRest!16399))))

(declare-fun setElem!16400 () Context!2690)

(declare-fun tp!662266 () Bool)

(declare-fun setNonEmpty!16400 () Bool)

(assert (=> setNonEmpty!16400 (= setRes!16399 (and tp!662266 (inv!32010 setElem!16400) e!1367700))))

(declare-fun setRest!16400 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16400 (= (_1!14256 (_1!14257 (h!29728 mapDefault!13134))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16400 true) setRest!16400))))

(declare-fun mapNonEmpty!13134 () Bool)

(declare-fun tp!662267 () Bool)

(assert (=> mapNonEmpty!13134 (= mapRes!13134 (and tp!662267 e!1367701))))

(declare-fun mapKey!13134 () (_ BitVec 32))

(declare-fun mapRest!13134 () (Array (_ BitVec 32) List!24411))

(assert (=> mapNonEmpty!13134 (= mapRest!13126 (store mapRest!13134 mapKey!13134 mapValue!13134))))

(declare-fun condMapEmpty!13134 () Bool)

(assert (=> mapNonEmpty!13127 (= condMapEmpty!13134 (= mapRest!13126 ((as const (Array (_ BitVec 32) List!24411)) mapDefault!13134)))))

(assert (=> mapNonEmpty!13127 (= tp!662161 (and e!1367702 mapRes!13134))))

(assert (= (and mapNonEmpty!13127 condMapEmpty!13134) mapIsEmpty!13134))

(assert (= (and mapNonEmpty!13127 (not condMapEmpty!13134)) mapNonEmpty!13134))

(assert (= (and b!2141316 condSetEmpty!16399) setIsEmpty!16400))

(assert (= (and b!2141316 (not condSetEmpty!16399)) setNonEmpty!16399))

(assert (= setNonEmpty!16399 b!2141317))

(assert (= (and mapNonEmpty!13134 ((_ is Cons!24327) mapValue!13134)) b!2141316))

(assert (= (and b!2141314 condSetEmpty!16400) setIsEmpty!16399))

(assert (= (and b!2141314 (not condSetEmpty!16400)) setNonEmpty!16400))

(assert (= setNonEmpty!16400 b!2141315))

(assert (= (and mapNonEmpty!13127 ((_ is Cons!24327) mapDefault!13134)) b!2141314))

(declare-fun m!2587075 () Bool)

(assert (=> setNonEmpty!16399 m!2587075))

(declare-fun m!2587077 () Bool)

(assert (=> setNonEmpty!16400 m!2587077))

(declare-fun m!2587079 () Bool)

(assert (=> mapNonEmpty!13134 m!2587079))

(declare-fun b!2141324 () Bool)

(declare-fun e!1367707 () Bool)

(declare-fun setRes!16403 () Bool)

(declare-fun tp!662275 () Bool)

(assert (=> b!2141324 (= e!1367707 (and setRes!16403 tp!662275))))

(declare-fun condSetEmpty!16403 () Bool)

(assert (=> b!2141324 (= condSetEmpty!16403 (= (_1!14256 (_1!14257 (h!29728 mapValue!13127))) ((as const (Array Context!2690 Bool)) false)))))

(assert (=> mapNonEmpty!13127 (= tp!662153 e!1367707)))

(declare-fun b!2141325 () Bool)

(declare-fun e!1367708 () Bool)

(declare-fun tp!662276 () Bool)

(assert (=> b!2141325 (= e!1367708 tp!662276)))

(declare-fun setIsEmpty!16403 () Bool)

(assert (=> setIsEmpty!16403 setRes!16403))

(declare-fun setNonEmpty!16403 () Bool)

(declare-fun setElem!16403 () Context!2690)

(declare-fun tp!662274 () Bool)

(assert (=> setNonEmpty!16403 (= setRes!16403 (and tp!662274 (inv!32010 setElem!16403) e!1367708))))

(declare-fun setRest!16403 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16403 (= (_1!14256 (_1!14257 (h!29728 mapValue!13127))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16403 true) setRest!16403))))

(assert (= (and b!2141324 condSetEmpty!16403) setIsEmpty!16403))

(assert (= (and b!2141324 (not condSetEmpty!16403)) setNonEmpty!16403))

(assert (= setNonEmpty!16403 b!2141325))

(assert (= (and mapNonEmpty!13127 ((_ is Cons!24327) mapValue!13127)) b!2141324))

(declare-fun m!2587081 () Bool)

(assert (=> setNonEmpty!16403 m!2587081))

(declare-fun e!1367713 () Bool)

(declare-fun tp!662285 () Bool)

(declare-fun tp!662283 () Bool)

(declare-fun b!2141334 () Bool)

(assert (=> b!2141334 (= e!1367713 (and (inv!32013 (left!18709 (c!340563 totalInput!851))) tp!662283 (inv!32013 (right!19039 (c!340563 totalInput!851))) tp!662285))))

(declare-fun b!2141336 () Bool)

(declare-fun e!1367714 () Bool)

(declare-fun tp!662284 () Bool)

(assert (=> b!2141336 (= e!1367714 tp!662284)))

(declare-fun b!2141335 () Bool)

(declare-fun inv!32019 (IArray!15831) Bool)

(assert (=> b!2141335 (= e!1367713 (and (inv!32019 (xs!10855 (c!340563 totalInput!851))) e!1367714))))

(assert (=> b!2141147 (= tp!662163 (and (inv!32013 (c!340563 totalInput!851)) e!1367713))))

(assert (= (and b!2141147 ((_ is Node!7913) (c!340563 totalInput!851))) b!2141334))

(assert (= b!2141335 b!2141336))

(assert (= (and b!2141147 ((_ is Leaf!11568) (c!340563 totalInput!851))) b!2141335))

(declare-fun m!2587083 () Bool)

(assert (=> b!2141334 m!2587083))

(declare-fun m!2587085 () Bool)

(assert (=> b!2141334 m!2587085))

(declare-fun m!2587087 () Bool)

(assert (=> b!2141335 m!2587087))

(assert (=> b!2141147 m!2586893))

(declare-fun setIsEmpty!16404 () Bool)

(declare-fun setRes!16404 () Bool)

(assert (=> setIsEmpty!16404 setRes!16404))

(declare-fun tp!662289 () Bool)

(declare-fun e!1367716 () Bool)

(declare-fun b!2141337 () Bool)

(declare-fun e!1367717 () Bool)

(assert (=> b!2141337 (= e!1367717 (and (inv!32010 (_1!14253 (_1!14254 (h!29727 (zeroValue!3010 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979)))))))))) e!1367716 tp_is_empty!9513 setRes!16404 tp!662289))))

(declare-fun condSetEmpty!16404 () Bool)

(assert (=> b!2141337 (= condSetEmpty!16404 (= (_2!14254 (h!29727 (zeroValue!3010 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979)))))))) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141338 () Bool)

(declare-fun e!1367715 () Bool)

(declare-fun tp!662287 () Bool)

(assert (=> b!2141338 (= e!1367715 tp!662287)))

(assert (=> b!2141120 (= tp!662148 e!1367717)))

(declare-fun b!2141339 () Bool)

(declare-fun tp!662286 () Bool)

(assert (=> b!2141339 (= e!1367716 tp!662286)))

(declare-fun setElem!16404 () Context!2690)

(declare-fun tp!662288 () Bool)

(declare-fun setNonEmpty!16404 () Bool)

(assert (=> setNonEmpty!16404 (= setRes!16404 (and tp!662288 (inv!32010 setElem!16404) e!1367715))))

(declare-fun setRest!16404 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16404 (= (_2!14254 (h!29727 (zeroValue!3010 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16404 true) setRest!16404))))

(assert (= b!2141337 b!2141339))

(assert (= (and b!2141337 condSetEmpty!16404) setIsEmpty!16404))

(assert (= (and b!2141337 (not condSetEmpty!16404)) setNonEmpty!16404))

(assert (= setNonEmpty!16404 b!2141338))

(assert (= (and b!2141120 ((_ is Cons!24326) (zeroValue!3010 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979)))))))) b!2141337))

(declare-fun m!2587089 () Bool)

(assert (=> b!2141337 m!2587089))

(declare-fun m!2587091 () Bool)

(assert (=> setNonEmpty!16404 m!2587091))

(declare-fun setIsEmpty!16405 () Bool)

(declare-fun setRes!16405 () Bool)

(assert (=> setIsEmpty!16405 setRes!16405))

(declare-fun b!2141340 () Bool)

(declare-fun tp!662293 () Bool)

(declare-fun e!1367719 () Bool)

(declare-fun e!1367720 () Bool)

(assert (=> b!2141340 (= e!1367720 (and (inv!32010 (_1!14253 (_1!14254 (h!29727 (minValue!3010 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979)))))))))) e!1367719 tp_is_empty!9513 setRes!16405 tp!662293))))

(declare-fun condSetEmpty!16405 () Bool)

(assert (=> b!2141340 (= condSetEmpty!16405 (= (_2!14254 (h!29727 (minValue!3010 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979)))))))) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141341 () Bool)

(declare-fun e!1367718 () Bool)

(declare-fun tp!662291 () Bool)

(assert (=> b!2141341 (= e!1367718 tp!662291)))

(assert (=> b!2141120 (= tp!662174 e!1367720)))

(declare-fun b!2141342 () Bool)

(declare-fun tp!662290 () Bool)

(assert (=> b!2141342 (= e!1367719 tp!662290)))

(declare-fun tp!662292 () Bool)

(declare-fun setNonEmpty!16405 () Bool)

(declare-fun setElem!16405 () Context!2690)

(assert (=> setNonEmpty!16405 (= setRes!16405 (and tp!662292 (inv!32010 setElem!16405) e!1367718))))

(declare-fun setRest!16405 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16405 (= (_2!14254 (h!29727 (minValue!3010 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16405 true) setRest!16405))))

(assert (= b!2141340 b!2141342))

(assert (= (and b!2141340 condSetEmpty!16405) setIsEmpty!16405))

(assert (= (and b!2141340 (not condSetEmpty!16405)) setNonEmpty!16405))

(assert (= setNonEmpty!16405 b!2141341))

(assert (= (and b!2141120 ((_ is Cons!24326) (minValue!3010 (v!28903 (underlying!5699 (v!28904 (underlying!5700 (cache!3047 cacheUp!979)))))))) b!2141340))

(declare-fun m!2587093 () Bool)

(assert (=> b!2141340 m!2587093))

(declare-fun m!2587095 () Bool)

(assert (=> setNonEmpty!16405 m!2587095))

(declare-fun b!2141347 () Bool)

(declare-fun e!1367723 () Bool)

(declare-fun tp!662298 () Bool)

(declare-fun tp!662299 () Bool)

(assert (=> b!2141347 (= e!1367723 (and tp!662298 tp!662299))))

(assert (=> b!2141138 (= tp!662152 e!1367723)))

(assert (= (and b!2141138 ((_ is Cons!24322) (exprs!1845 setElem!16378))) b!2141347))

(declare-fun b!2141348 () Bool)

(declare-fun e!1367724 () Bool)

(declare-fun setRes!16406 () Bool)

(declare-fun tp!662301 () Bool)

(assert (=> b!2141348 (= e!1367724 (and setRes!16406 tp!662301))))

(declare-fun condSetEmpty!16406 () Bool)

(assert (=> b!2141348 (= condSetEmpty!16406 (= (_1!14256 (_1!14257 (h!29728 mapDefault!13126))) ((as const (Array Context!2690 Bool)) false)))))

(assert (=> b!2141128 (= tp!662151 e!1367724)))

(declare-fun b!2141349 () Bool)

(declare-fun e!1367725 () Bool)

(declare-fun tp!662302 () Bool)

(assert (=> b!2141349 (= e!1367725 tp!662302)))

(declare-fun setIsEmpty!16406 () Bool)

(assert (=> setIsEmpty!16406 setRes!16406))

(declare-fun setElem!16406 () Context!2690)

(declare-fun setNonEmpty!16406 () Bool)

(declare-fun tp!662300 () Bool)

(assert (=> setNonEmpty!16406 (= setRes!16406 (and tp!662300 (inv!32010 setElem!16406) e!1367725))))

(declare-fun setRest!16406 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16406 (= (_1!14256 (_1!14257 (h!29728 mapDefault!13126))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16406 true) setRest!16406))))

(assert (= (and b!2141348 condSetEmpty!16406) setIsEmpty!16406))

(assert (= (and b!2141348 (not condSetEmpty!16406)) setNonEmpty!16406))

(assert (= setNonEmpty!16406 b!2141349))

(assert (= (and b!2141128 ((_ is Cons!24327) mapDefault!13126)) b!2141348))

(declare-fun m!2587097 () Bool)

(assert (=> setNonEmpty!16406 m!2587097))

(declare-fun b!2141350 () Bool)

(declare-fun e!1367726 () Bool)

(declare-fun tp!662303 () Bool)

(declare-fun tp!662304 () Bool)

(assert (=> b!2141350 (= e!1367726 (and tp!662303 tp!662304))))

(assert (=> b!2141146 (= tp!662149 e!1367726)))

(assert (= (and b!2141146 ((_ is Cons!24322) (exprs!1845 setElem!16377))) b!2141350))

(declare-fun e!1367743 () Bool)

(declare-fun e!1367741 () Bool)

(declare-fun b!2141365 () Bool)

(declare-fun mapValue!13137 () List!24409)

(declare-fun tp!662330 () Bool)

(declare-fun setRes!16411 () Bool)

(declare-fun tp!662331 () Bool)

(assert (=> b!2141365 (= e!1367741 (and tp!662331 (inv!32010 (_2!14251 (_1!14252 (h!29726 mapValue!13137)))) e!1367743 tp_is_empty!9513 setRes!16411 tp!662330))))

(declare-fun condSetEmpty!16412 () Bool)

(assert (=> b!2141365 (= condSetEmpty!16412 (= (_2!14252 (h!29726 mapValue!13137)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun e!1367740 () Bool)

(declare-fun setNonEmpty!16411 () Bool)

(declare-fun setElem!16412 () Context!2690)

(declare-fun tp!662335 () Bool)

(assert (=> setNonEmpty!16411 (= setRes!16411 (and tp!662335 (inv!32010 setElem!16412) e!1367740))))

(declare-fun setRest!16411 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16411 (= (_2!14252 (h!29726 mapValue!13137)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16412 true) setRest!16411))))

(declare-fun setNonEmpty!16412 () Bool)

(declare-fun e!1367739 () Bool)

(declare-fun setRes!16412 () Bool)

(declare-fun tp!662327 () Bool)

(declare-fun setElem!16411 () Context!2690)

(assert (=> setNonEmpty!16412 (= setRes!16412 (and tp!662327 (inv!32010 setElem!16411) e!1367739))))

(declare-fun mapDefault!13137 () List!24409)

(declare-fun setRest!16412 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16412 (= (_2!14252 (h!29726 mapDefault!13137)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16411 true) setRest!16412))))

(declare-fun setIsEmpty!16411 () Bool)

(assert (=> setIsEmpty!16411 setRes!16412))

(declare-fun mapNonEmpty!13137 () Bool)

(declare-fun mapRes!13137 () Bool)

(declare-fun tp!662328 () Bool)

(assert (=> mapNonEmpty!13137 (= mapRes!13137 (and tp!662328 e!1367741))))

(declare-fun mapRest!13137 () (Array (_ BitVec 32) List!24409))

(declare-fun mapKey!13137 () (_ BitVec 32))

(assert (=> mapNonEmpty!13137 (= mapRest!13128 (store mapRest!13137 mapKey!13137 mapValue!13137))))

(declare-fun mapIsEmpty!13137 () Bool)

(assert (=> mapIsEmpty!13137 mapRes!13137))

(declare-fun setIsEmpty!16412 () Bool)

(assert (=> setIsEmpty!16412 setRes!16411))

(declare-fun condMapEmpty!13137 () Bool)

(assert (=> mapNonEmpty!13128 (= condMapEmpty!13137 (= mapRest!13128 ((as const (Array (_ BitVec 32) List!24409)) mapDefault!13137)))))

(declare-fun e!1367742 () Bool)

(assert (=> mapNonEmpty!13128 (= tp!662171 (and e!1367742 mapRes!13137))))

(declare-fun b!2141366 () Bool)

(declare-fun e!1367744 () Bool)

(declare-fun tp!662333 () Bool)

(assert (=> b!2141366 (= e!1367744 tp!662333)))

(declare-fun b!2141367 () Bool)

(declare-fun tp!662329 () Bool)

(assert (=> b!2141367 (= e!1367739 tp!662329)))

(declare-fun tp!662334 () Bool)

(declare-fun b!2141368 () Bool)

(declare-fun tp!662336 () Bool)

(assert (=> b!2141368 (= e!1367742 (and tp!662336 (inv!32010 (_2!14251 (_1!14252 (h!29726 mapDefault!13137)))) e!1367744 tp_is_empty!9513 setRes!16412 tp!662334))))

(declare-fun condSetEmpty!16411 () Bool)

(assert (=> b!2141368 (= condSetEmpty!16411 (= (_2!14252 (h!29726 mapDefault!13137)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141369 () Bool)

(declare-fun tp!662337 () Bool)

(assert (=> b!2141369 (= e!1367743 tp!662337)))

(declare-fun b!2141370 () Bool)

(declare-fun tp!662332 () Bool)

(assert (=> b!2141370 (= e!1367740 tp!662332)))

(assert (= (and mapNonEmpty!13128 condMapEmpty!13137) mapIsEmpty!13137))

(assert (= (and mapNonEmpty!13128 (not condMapEmpty!13137)) mapNonEmpty!13137))

(assert (= b!2141365 b!2141369))

(assert (= (and b!2141365 condSetEmpty!16412) setIsEmpty!16412))

(assert (= (and b!2141365 (not condSetEmpty!16412)) setNonEmpty!16411))

(assert (= setNonEmpty!16411 b!2141370))

(assert (= (and mapNonEmpty!13137 ((_ is Cons!24325) mapValue!13137)) b!2141365))

(assert (= b!2141368 b!2141366))

(assert (= (and b!2141368 condSetEmpty!16411) setIsEmpty!16411))

(assert (= (and b!2141368 (not condSetEmpty!16411)) setNonEmpty!16412))

(assert (= setNonEmpty!16412 b!2141367))

(assert (= (and mapNonEmpty!13128 ((_ is Cons!24325) mapDefault!13137)) b!2141368))

(declare-fun m!2587099 () Bool)

(assert (=> b!2141365 m!2587099))

(declare-fun m!2587101 () Bool)

(assert (=> b!2141368 m!2587101))

(declare-fun m!2587103 () Bool)

(assert (=> setNonEmpty!16411 m!2587103))

(declare-fun m!2587105 () Bool)

(assert (=> setNonEmpty!16412 m!2587105))

(declare-fun m!2587107 () Bool)

(assert (=> mapNonEmpty!13137 m!2587107))

(declare-fun b!2141371 () Bool)

(declare-fun e!1367747 () Bool)

(declare-fun tp!662341 () Bool)

(assert (=> b!2141371 (= e!1367747 tp!662341)))

(declare-fun b!2141372 () Bool)

(declare-fun e!1367745 () Bool)

(declare-fun tp!662339 () Bool)

(assert (=> b!2141372 (= e!1367745 tp!662339)))

(declare-fun e!1367746 () Bool)

(assert (=> mapNonEmpty!13128 (= tp!662154 e!1367746)))

(declare-fun setRes!16413 () Bool)

(declare-fun tp!662340 () Bool)

(declare-fun b!2141373 () Bool)

(declare-fun tp!662338 () Bool)

(assert (=> b!2141373 (= e!1367746 (and tp!662340 (inv!32010 (_2!14251 (_1!14252 (h!29726 mapValue!13128)))) e!1367747 tp_is_empty!9513 setRes!16413 tp!662338))))

(declare-fun condSetEmpty!16413 () Bool)

(assert (=> b!2141373 (= condSetEmpty!16413 (= (_2!14252 (h!29726 mapValue!13128)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun setIsEmpty!16413 () Bool)

(assert (=> setIsEmpty!16413 setRes!16413))

(declare-fun setNonEmpty!16413 () Bool)

(declare-fun tp!662342 () Bool)

(declare-fun setElem!16413 () Context!2690)

(assert (=> setNonEmpty!16413 (= setRes!16413 (and tp!662342 (inv!32010 setElem!16413) e!1367745))))

(declare-fun setRest!16413 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16413 (= (_2!14252 (h!29726 mapValue!13128)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16413 true) setRest!16413))))

(assert (= b!2141373 b!2141371))

(assert (= (and b!2141373 condSetEmpty!16413) setIsEmpty!16413))

(assert (= (and b!2141373 (not condSetEmpty!16413)) setNonEmpty!16413))

(assert (= setNonEmpty!16413 b!2141372))

(assert (= (and mapNonEmpty!13128 ((_ is Cons!24325) mapValue!13128)) b!2141373))

(declare-fun m!2587109 () Bool)

(assert (=> b!2141373 m!2587109))

(declare-fun m!2587111 () Bool)

(assert (=> setNonEmpty!16413 m!2587111))

(declare-fun tp!662345 () Bool)

(declare-fun tp!662343 () Bool)

(declare-fun b!2141374 () Bool)

(declare-fun e!1367748 () Bool)

(assert (=> b!2141374 (= e!1367748 (and (inv!32013 (left!18709 (c!340563 (totalInput!3125 cacheFurthestNullable!114)))) tp!662343 (inv!32013 (right!19039 (c!340563 (totalInput!3125 cacheFurthestNullable!114)))) tp!662345))))

(declare-fun b!2141376 () Bool)

(declare-fun e!1367749 () Bool)

(declare-fun tp!662344 () Bool)

(assert (=> b!2141376 (= e!1367749 tp!662344)))

(declare-fun b!2141375 () Bool)

(assert (=> b!2141375 (= e!1367748 (and (inv!32019 (xs!10855 (c!340563 (totalInput!3125 cacheFurthestNullable!114)))) e!1367749))))

(assert (=> b!2141148 (= tp!662168 (and (inv!32013 (c!340563 (totalInput!3125 cacheFurthestNullable!114))) e!1367748))))

(assert (= (and b!2141148 ((_ is Node!7913) (c!340563 (totalInput!3125 cacheFurthestNullable!114)))) b!2141374))

(assert (= b!2141375 b!2141376))

(assert (= (and b!2141148 ((_ is Leaf!11568) (c!340563 (totalInput!3125 cacheFurthestNullable!114)))) b!2141375))

(declare-fun m!2587113 () Bool)

(assert (=> b!2141374 m!2587113))

(declare-fun m!2587115 () Bool)

(assert (=> b!2141374 m!2587115))

(declare-fun m!2587117 () Bool)

(assert (=> b!2141375 m!2587117))

(assert (=> b!2141148 m!2586917))

(declare-fun setIsEmpty!16414 () Bool)

(declare-fun setRes!16414 () Bool)

(assert (=> setIsEmpty!16414 setRes!16414))

(declare-fun tp!662349 () Bool)

(declare-fun e!1367752 () Bool)

(declare-fun b!2141377 () Bool)

(declare-fun e!1367751 () Bool)

(assert (=> b!2141377 (= e!1367752 (and (inv!32010 (_1!14253 (_1!14254 (h!29727 mapDefault!13127)))) e!1367751 tp_is_empty!9513 setRes!16414 tp!662349))))

(declare-fun condSetEmpty!16414 () Bool)

(assert (=> b!2141377 (= condSetEmpty!16414 (= (_2!14254 (h!29727 mapDefault!13127)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun b!2141378 () Bool)

(declare-fun e!1367750 () Bool)

(declare-fun tp!662347 () Bool)

(assert (=> b!2141378 (= e!1367750 tp!662347)))

(assert (=> b!2141111 (= tp!662162 e!1367752)))

(declare-fun b!2141379 () Bool)

(declare-fun tp!662346 () Bool)

(assert (=> b!2141379 (= e!1367751 tp!662346)))

(declare-fun setNonEmpty!16414 () Bool)

(declare-fun setElem!16414 () Context!2690)

(declare-fun tp!662348 () Bool)

(assert (=> setNonEmpty!16414 (= setRes!16414 (and tp!662348 (inv!32010 setElem!16414) e!1367750))))

(declare-fun setRest!16414 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16414 (= (_2!14254 (h!29727 mapDefault!13127)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16414 true) setRest!16414))))

(assert (= b!2141377 b!2141379))

(assert (= (and b!2141377 condSetEmpty!16414) setIsEmpty!16414))

(assert (= (and b!2141377 (not condSetEmpty!16414)) setNonEmpty!16414))

(assert (= setNonEmpty!16414 b!2141378))

(assert (= (and b!2141111 ((_ is Cons!24326) mapDefault!13127)) b!2141377))

(declare-fun m!2587119 () Bool)

(assert (=> b!2141377 m!2587119))

(declare-fun m!2587121 () Bool)

(assert (=> setNonEmpty!16414 m!2587121))

(declare-fun e!1367753 () Bool)

(declare-fun b!2141380 () Bool)

(declare-fun tp!662352 () Bool)

(declare-fun tp!662350 () Bool)

(assert (=> b!2141380 (= e!1367753 (and (inv!32013 (left!18709 (c!340563 (totalInput!3124 (h!29725 stack!8))))) tp!662350 (inv!32013 (right!19039 (c!340563 (totalInput!3124 (h!29725 stack!8))))) tp!662352))))

(declare-fun b!2141382 () Bool)

(declare-fun e!1367754 () Bool)

(declare-fun tp!662351 () Bool)

(assert (=> b!2141382 (= e!1367754 tp!662351)))

(declare-fun b!2141381 () Bool)

(assert (=> b!2141381 (= e!1367753 (and (inv!32019 (xs!10855 (c!340563 (totalInput!3124 (h!29725 stack!8))))) e!1367754))))

(assert (=> b!2141122 (= tp!662173 (and (inv!32013 (c!340563 (totalInput!3124 (h!29725 stack!8)))) e!1367753))))

(assert (= (and b!2141122 ((_ is Node!7913) (c!340563 (totalInput!3124 (h!29725 stack!8))))) b!2141380))

(assert (= b!2141381 b!2141382))

(assert (= (and b!2141122 ((_ is Leaf!11568) (c!340563 (totalInput!3124 (h!29725 stack!8))))) b!2141381))

(declare-fun m!2587123 () Bool)

(assert (=> b!2141380 m!2587123))

(declare-fun m!2587125 () Bool)

(assert (=> b!2141380 m!2587125))

(declare-fun m!2587127 () Bool)

(assert (=> b!2141381 m!2587127))

(assert (=> b!2141122 m!2586861))

(declare-fun condSetEmpty!16417 () Bool)

(assert (=> setNonEmpty!16378 (= condSetEmpty!16417 (= setRest!16377 ((as const (Array Context!2690 Bool)) false)))))

(declare-fun setRes!16417 () Bool)

(assert (=> setNonEmpty!16378 (= tp!662172 setRes!16417)))

(declare-fun setIsEmpty!16417 () Bool)

(assert (=> setIsEmpty!16417 setRes!16417))

(declare-fun setNonEmpty!16417 () Bool)

(declare-fun setElem!16417 () Context!2690)

(declare-fun e!1367757 () Bool)

(declare-fun tp!662358 () Bool)

(assert (=> setNonEmpty!16417 (= setRes!16417 (and tp!662358 (inv!32010 setElem!16417) e!1367757))))

(declare-fun setRest!16417 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16417 (= setRest!16377 ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16417 true) setRest!16417))))

(declare-fun b!2141387 () Bool)

(declare-fun tp!662357 () Bool)

(assert (=> b!2141387 (= e!1367757 tp!662357)))

(assert (= (and setNonEmpty!16378 condSetEmpty!16417) setIsEmpty!16417))

(assert (= (and setNonEmpty!16378 (not condSetEmpty!16417)) setNonEmpty!16417))

(assert (= setNonEmpty!16417 b!2141387))

(declare-fun m!2587129 () Bool)

(assert (=> setNonEmpty!16417 m!2587129))

(declare-fun b!2141388 () Bool)

(declare-fun e!1367760 () Bool)

(declare-fun tp!662362 () Bool)

(assert (=> b!2141388 (= e!1367760 tp!662362)))

(declare-fun b!2141389 () Bool)

(declare-fun e!1367758 () Bool)

(declare-fun tp!662360 () Bool)

(assert (=> b!2141389 (= e!1367758 tp!662360)))

(declare-fun e!1367759 () Bool)

(assert (=> b!2141142 (= tp!662158 e!1367759)))

(declare-fun b!2141390 () Bool)

(declare-fun tp!662359 () Bool)

(declare-fun setRes!16418 () Bool)

(declare-fun tp!662361 () Bool)

(assert (=> b!2141390 (= e!1367759 (and tp!662361 (inv!32010 (_2!14251 (_1!14252 (h!29726 mapDefault!13128)))) e!1367760 tp_is_empty!9513 setRes!16418 tp!662359))))

(declare-fun condSetEmpty!16418 () Bool)

(assert (=> b!2141390 (= condSetEmpty!16418 (= (_2!14252 (h!29726 mapDefault!13128)) ((as const (Array Context!2690 Bool)) false)))))

(declare-fun setIsEmpty!16418 () Bool)

(assert (=> setIsEmpty!16418 setRes!16418))

(declare-fun setElem!16418 () Context!2690)

(declare-fun tp!662363 () Bool)

(declare-fun setNonEmpty!16418 () Bool)

(assert (=> setNonEmpty!16418 (= setRes!16418 (and tp!662363 (inv!32010 setElem!16418) e!1367758))))

(declare-fun setRest!16418 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16418 (= (_2!14252 (h!29726 mapDefault!13128)) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16418 true) setRest!16418))))

(assert (= b!2141390 b!2141388))

(assert (= (and b!2141390 condSetEmpty!16418) setIsEmpty!16418))

(assert (= (and b!2141390 (not condSetEmpty!16418)) setNonEmpty!16418))

(assert (= setNonEmpty!16418 b!2141389))

(assert (= (and b!2141142 ((_ is Cons!24325) mapDefault!13128)) b!2141390))

(declare-fun m!2587131 () Bool)

(assert (=> b!2141390 m!2587131))

(declare-fun m!2587133 () Bool)

(assert (=> setNonEmpty!16418 m!2587133))

(declare-fun b!2141391 () Bool)

(declare-fun e!1367761 () Bool)

(declare-fun setRes!16419 () Bool)

(declare-fun tp!662365 () Bool)

(assert (=> b!2141391 (= e!1367761 (and setRes!16419 tp!662365))))

(declare-fun condSetEmpty!16419 () Bool)

(assert (=> b!2141391 (= condSetEmpty!16419 (= (_1!14256 (_1!14257 (h!29728 (zeroValue!3012 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))))) ((as const (Array Context!2690 Bool)) false)))))

(assert (=> b!2141115 (= tp!662175 e!1367761)))

(declare-fun b!2141392 () Bool)

(declare-fun e!1367762 () Bool)

(declare-fun tp!662366 () Bool)

(assert (=> b!2141392 (= e!1367762 tp!662366)))

(declare-fun setIsEmpty!16419 () Bool)

(assert (=> setIsEmpty!16419 setRes!16419))

(declare-fun setNonEmpty!16419 () Bool)

(declare-fun tp!662364 () Bool)

(declare-fun setElem!16419 () Context!2690)

(assert (=> setNonEmpty!16419 (= setRes!16419 (and tp!662364 (inv!32010 setElem!16419) e!1367762))))

(declare-fun setRest!16419 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16419 (= (_1!14256 (_1!14257 (h!29728 (zeroValue!3012 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16419 true) setRest!16419))))

(assert (= (and b!2141391 condSetEmpty!16419) setIsEmpty!16419))

(assert (= (and b!2141391 (not condSetEmpty!16419)) setNonEmpty!16419))

(assert (= setNonEmpty!16419 b!2141392))

(assert (= (and b!2141115 ((_ is Cons!24327) (zeroValue!3012 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114)))))))) b!2141391))

(declare-fun m!2587135 () Bool)

(assert (=> setNonEmpty!16419 m!2587135))

(declare-fun b!2141393 () Bool)

(declare-fun e!1367763 () Bool)

(declare-fun setRes!16420 () Bool)

(declare-fun tp!662368 () Bool)

(assert (=> b!2141393 (= e!1367763 (and setRes!16420 tp!662368))))

(declare-fun condSetEmpty!16420 () Bool)

(assert (=> b!2141393 (= condSetEmpty!16420 (= (_1!14256 (_1!14257 (h!29728 (minValue!3012 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))))) ((as const (Array Context!2690 Bool)) false)))))

(assert (=> b!2141115 (= tp!662155 e!1367763)))

(declare-fun b!2141394 () Bool)

(declare-fun e!1367764 () Bool)

(declare-fun tp!662369 () Bool)

(assert (=> b!2141394 (= e!1367764 tp!662369)))

(declare-fun setIsEmpty!16420 () Bool)

(assert (=> setIsEmpty!16420 setRes!16420))

(declare-fun setElem!16420 () Context!2690)

(declare-fun setNonEmpty!16420 () Bool)

(declare-fun tp!662367 () Bool)

(assert (=> setNonEmpty!16420 (= setRes!16420 (and tp!662367 (inv!32010 setElem!16420) e!1367764))))

(declare-fun setRest!16420 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16420 (= (_1!14256 (_1!14257 (h!29728 (minValue!3012 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16420 true) setRest!16420))))

(assert (= (and b!2141393 condSetEmpty!16420) setIsEmpty!16420))

(assert (= (and b!2141393 (not condSetEmpty!16420)) setNonEmpty!16420))

(assert (= setNonEmpty!16420 b!2141394))

(assert (= (and b!2141115 ((_ is Cons!24327) (minValue!3012 (v!28907 (underlying!5703 (v!28908 (underlying!5704 (cache!3049 cacheFurthestNullable!114)))))))) b!2141393))

(declare-fun m!2587137 () Bool)

(assert (=> setNonEmpty!16420 m!2587137))

(declare-fun condSetEmpty!16421 () Bool)

(assert (=> setNonEmpty!16377 (= condSetEmpty!16421 (= setRest!16378 ((as const (Array Context!2690 Bool)) false)))))

(declare-fun setRes!16421 () Bool)

(assert (=> setNonEmpty!16377 (= tp!662169 setRes!16421)))

(declare-fun setIsEmpty!16421 () Bool)

(assert (=> setIsEmpty!16421 setRes!16421))

(declare-fun tp!662371 () Bool)

(declare-fun setElem!16421 () Context!2690)

(declare-fun e!1367765 () Bool)

(declare-fun setNonEmpty!16421 () Bool)

(assert (=> setNonEmpty!16421 (= setRes!16421 (and tp!662371 (inv!32010 setElem!16421) e!1367765))))

(declare-fun setRest!16421 () (InoxSet Context!2690))

(assert (=> setNonEmpty!16421 (= setRest!16378 ((_ map or) (store ((as const (Array Context!2690 Bool)) false) setElem!16421 true) setRest!16421))))

(declare-fun b!2141395 () Bool)

(declare-fun tp!662370 () Bool)

(assert (=> b!2141395 (= e!1367765 tp!662370)))

(assert (= (and setNonEmpty!16377 condSetEmpty!16421) setIsEmpty!16421))

(assert (= (and setNonEmpty!16377 (not condSetEmpty!16421)) setNonEmpty!16421))

(assert (= setNonEmpty!16421 b!2141395))

(declare-fun m!2587139 () Bool)

(assert (=> setNonEmpty!16421 m!2587139))

(declare-fun b_lambda!70653 () Bool)

(assert (= b_lambda!70645 (or b!2141143 b_lambda!70653)))

(declare-fun bs!445212 () Bool)

(declare-fun d!644915 () Bool)

(assert (= bs!445212 (and d!644915 b!2141143)))

(assert (=> bs!445212 (= (dynLambda!11372 lambda!80101 (h!29725 stack!8)) (= (res!924461 (h!29725 stack!8)) lt!798148))))

(assert (=> b!2141157 d!644915))

(declare-fun b_lambda!70655 () Bool)

(assert (= b_lambda!70649 (or b!2141143 b_lambda!70655)))

(declare-fun bs!445213 () Bool)

(declare-fun d!644917 () Bool)

(assert (= bs!445213 (and d!644917 b!2141143)))

(assert (=> bs!445213 (= (dynLambda!11372 lambda!80101 (h!29725 (Cons!24324 (StackFrame!229 z!3839 from!1043 lastNullablePos!123 lt!798150 totalInput!851) stack!8))) (= (res!924461 (h!29725 (Cons!24324 (StackFrame!229 z!3839 from!1043 lastNullablePos!123 lt!798150 totalInput!851) stack!8))) lt!798148))))

(assert (=> b!2141217 d!644917))

(declare-fun b_lambda!70657 () Bool)

(assert (= b_lambda!70647 (or b!2141104 b_lambda!70657)))

(declare-fun bs!445214 () Bool)

(declare-fun d!644919 () Bool)

(assert (= bs!445214 (and d!644919 b!2141104)))

(assert (=> bs!445214 (= (dynLambda!11372 lambda!80099 (h!29725 stack!8)) (= (res!924461 (h!29725 stack!8)) lt!798150))))

(assert (=> b!2141159 d!644919))

(declare-fun b_lambda!70659 () Bool)

(assert (= b_lambda!70651 (or b!2141106 b_lambda!70659)))

(declare-fun bs!445215 () Bool)

(declare-fun d!644921 () Bool)

(assert (= bs!445215 (and d!644921 b!2141106)))

(assert (=> bs!445215 (= (dynLambda!11372 lambda!80100 (h!29725 stack!8)) (= (totalInput!3124 (h!29725 stack!8)) totalInput!851))))

(assert (=> b!2141219 d!644921))

(check-sat (not b!2141273) (not b!2141336) (not b!2141389) b_and!172541 (not setNonEmpty!16414) (not setNonEmpty!16403) (not b!2141173) tp_is_empty!9513 (not b!2141390) (not b!2141366) (not b!2141287) (not mapNonEmpty!13134) (not b!2141274) (not b_next!63663) (not setNonEmpty!16420) (not b!2141378) (not setNonEmpty!16419) (not d!644877) (not b!2141335) (not b!2141375) (not b!2141200) (not b!2141369) (not setNonEmpty!16404) (not b!2141394) b_and!172545 (not b_next!63669) (not b!2141181) (not d!644847) (not b!2141299) (not d!644889) (not b!2141395) (not b!2141242) (not b!2141257) (not b!2141374) (not b!2141288) (not b!2141371) (not b!2141391) (not b!2141199) (not b!2141175) (not d!644907) (not b!2141213) (not d!644899) (not setNonEmpty!16387) (not b!2141368) (not d!644885) (not b!2141147) (not setNonEmpty!16411) (not setNonEmpty!16394) (not b!2141158) (not d!644857) (not b!2141184) (not b!2141365) (not d!644875) (not setNonEmpty!16386) (not b!2141380) (not b!2141325) (not d!644873) (not b!2141370) (not bm!128808) (not b_next!63671) (not bm!128807) (not setNonEmpty!16399) (not b!2141218) (not b!2141317) (not d!644867) (not b!2141387) (not b!2141334) (not b!2141373) (not b!2141160) (not b!2141388) (not b!2141233) (not b!2141244) (not setNonEmpty!16413) (not d!644851) (not b!2141393) (not setNonEmpty!16381) (not b!2141276) (not b!2141278) (not b!2141341) (not b!2141377) (not b!2141302) b_and!172547 (not d!644893) (not b!2141350) (not b!2141220) (not b_next!63661) (not setNonEmpty!16417) (not b!2141315) (not b_lambda!70659) (not b!2141214) (not b!2141277) (not b!2141122) (not b!2141216) (not d!644909) (not b!2141337) (not b!2141234) (not b!2141342) (not b!2141376) (not b!2141379) (not b!2141316) (not b_lambda!70655) (not b!2141275) (not mapNonEmpty!13137) (not b!2141256) (not b!2141372) (not b!2141348) (not b!2141209) b_and!172539 (not b!2141237) b_and!172543 (not d!644891) (not b!2141165) (not b!2141258) (not d!644881) (not b!2141148) (not b_lambda!70657) (not b!2141392) (not b_next!63665) (not setNonEmpty!16405) (not b!2141314) (not b!2141300) (not b!2141235) (not b!2141349) (not setNonEmpty!16421) (not b!2141324) (not b!2141340) (not setNonEmpty!16418) (not b!2141367) (not b_next!63667) (not b!2141204) (not b!2141241) (not setNonEmpty!16393) (not b!2141303) (not b!2141166) (not setNonEmpty!16406) (not b!2141382) (not setNonEmpty!16390) (not b!2141210) (not b!2141381) (not setNonEmpty!16412) (not b_lambda!70653) (not b!2141255) (not b!2141298) (not b!2141338) (not b!2141339) (not b!2141195) b_and!172537 (not mapNonEmpty!13131) (not d!644897) (not b!2141347) (not b!2141289) (not setNonEmpty!16400) (not b!2141301) (not b!2141178))
(check-sat b_and!172541 (not b_next!63663) (not b_next!63671) b_and!172547 (not b_next!63661) (not b_next!63665) (not b_next!63667) b_and!172537 b_and!172545 (not b_next!63669) b_and!172539 b_and!172543)
