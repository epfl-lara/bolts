; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208500 () Bool)

(assert start!208500)

(declare-fun b!2149778 () Bool)

(declare-fun b_free!63493 () Bool)

(declare-fun b_next!64197 () Bool)

(assert (=> b!2149778 (= b_free!63493 (not b_next!64197))))

(declare-fun tp!667710 () Bool)

(declare-fun b_and!173097 () Bool)

(assert (=> b!2149778 (= tp!667710 b_and!173097)))

(declare-fun b!2149773 () Bool)

(declare-fun b_free!63495 () Bool)

(declare-fun b_next!64199 () Bool)

(assert (=> b!2149773 (= b_free!63495 (not b_next!64199))))

(declare-fun tp!667715 () Bool)

(declare-fun b_and!173099 () Bool)

(assert (=> b!2149773 (= tp!667715 b_and!173099)))

(declare-fun b!2149777 () Bool)

(assert (=> b!2149777 true))

(declare-fun b!2149762 () Bool)

(declare-fun e!1374636 () Bool)

(declare-fun e!1374646 () Bool)

(assert (=> b!2149762 (= e!1374636 (not e!1374646))))

(declare-fun res!927198 () Bool)

(assert (=> b!2149762 (=> res!927198 e!1374646)))

(declare-datatypes ((C!11848 0))(
  ( (C!11849 (val!6910 Int)) )
))
(declare-datatypes ((List!24714 0))(
  ( (Nil!24630) (Cons!24630 (h!30031 C!11848) (t!197256 List!24714)) )
))
(declare-datatypes ((Regex!5851 0))(
  ( (ElementMatch!5851 (c!341084 C!11848)) (Concat!10153 (regOne!12214 Regex!5851) (regTwo!12214 Regex!5851)) (EmptyExpr!5851) (Star!5851 (reg!6180 Regex!5851)) (EmptyLang!5851) (Union!5851 (regOne!12215 Regex!5851) (regTwo!12215 Regex!5851)) )
))
(declare-datatypes ((List!24715 0))(
  ( (Nil!24631) (Cons!24631 (h!30032 Regex!5851) (t!197257 List!24715)) )
))
(declare-datatypes ((Context!2842 0))(
  ( (Context!2843 (exprs!1921 List!24715)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3634 0))(
  ( (tuple3!3635 (_1!14519 (InoxSet Context!2842)) (_2!14519 Int) (_3!2287 Int)) )
))
(declare-datatypes ((tuple2!24464 0))(
  ( (tuple2!24465 (_1!14520 tuple3!3634) (_2!14520 Int)) )
))
(declare-datatypes ((List!24716 0))(
  ( (Nil!24632) (Cons!24632 (h!30033 tuple2!24464) (t!197258 List!24716)) )
))
(declare-datatypes ((array!9733 0))(
  ( (array!9734 (arr!4348 (Array (_ BitVec 32) (_ BitVec 64))) (size!19293 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2790 0))(
  ( (HashableExt!2789 (__x!16804 Int)) )
))
(declare-datatypes ((array!9735 0))(
  ( (array!9736 (arr!4349 (Array (_ BitVec 32) List!24716)) (size!19294 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5752 0))(
  ( (LongMapFixedSize!5753 (defaultEntry!3241 Int) (mask!7117 (_ BitVec 32)) (extraKeys!3124 (_ BitVec 32)) (zeroValue!3134 List!24716) (minValue!3134 List!24716) (_size!5803 (_ BitVec 32)) (_keys!3173 array!9733) (_values!3156 array!9735) (_vacant!2937 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11329 0))(
  ( (Cell!11330 (v!29196 LongMapFixedSize!5752)) )
))
(declare-datatypes ((MutLongMap!2876 0))(
  ( (LongMap!2876 (underlying!5947 Cell!11329)) (MutLongMapExt!2875 (__x!16805 Int)) )
))
(declare-datatypes ((Cell!11331 0))(
  ( (Cell!11332 (v!29197 MutLongMap!2876)) )
))
(declare-datatypes ((MutableMap!2790 0))(
  ( (MutableMapExt!2789 (__x!16806 Int)) (HashMap!2790 (underlying!5948 Cell!11331) (hashF!4713 Hashable!2790) (_size!5804 (_ BitVec 32)) (defaultValue!2952 Int)) )
))
(declare-datatypes ((IArray!15979 0))(
  ( (IArray!15980 (innerList!8047 List!24714)) )
))
(declare-datatypes ((Conc!7987 0))(
  ( (Node!7987 (left!18919 Conc!7987) (right!19249 Conc!7987) (csize!16204 Int) (cheight!8198 Int)) (Leaf!11680 (xs!10929 IArray!15979) (csize!16205 Int)) (Empty!7987) )
))
(declare-datatypes ((BalanceConc!15736 0))(
  ( (BalanceConc!15737 (c!341085 Conc!7987)) )
))
(declare-datatypes ((CacheFurthestNullable!938 0))(
  ( (CacheFurthestNullable!939 (cache!3171 MutableMap!2790) (totalInput!3240 BalanceConc!15736)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!938)

(declare-fun lt!800329 () tuple3!3634)

(declare-fun contains!4208 (MutableMap!2790 tuple3!3634) Bool)

(assert (=> b!2149762 (= res!927198 (not (contains!4208 (cache!3171 thiss!29110) lt!800329)))))

(declare-fun z!514 () (InoxSet Context!2842))

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2149762 (= lt!800329 (tuple3!3635 z!514 from!952 lastNullablePos!91))))

(declare-fun localTotalInput!13 () BalanceConc!15736)

(declare-fun validCacheMapFurthestNullable!147 (MutableMap!2790 BalanceConc!15736) Bool)

(assert (=> b!2149762 (validCacheMapFurthestNullable!147 (cache!3171 thiss!29110) localTotalInput!13)))

(declare-fun res!927193 () Bool)

(assert (=> start!208500 (=> (not res!927193) (not e!1374636))))

(assert (=> start!208500 (= res!927193 (and (= localTotalInput!13 (totalInput!3240 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208500 e!1374636))

(declare-fun condSetEmpty!17092 () Bool)

(assert (=> start!208500 (= condSetEmpty!17092 (= z!514 ((as const (Array Context!2842 Bool)) false)))))

(declare-fun setRes!17092 () Bool)

(assert (=> start!208500 setRes!17092))

(assert (=> start!208500 true))

(declare-fun e!1374637 () Bool)

(declare-fun inv!32446 (CacheFurthestNullable!938) Bool)

(assert (=> start!208500 (and (inv!32446 thiss!29110) e!1374637)))

(declare-fun e!1374641 () Bool)

(declare-fun inv!32447 (BalanceConc!15736) Bool)

(assert (=> start!208500 (and (inv!32447 localTotalInput!13) e!1374641)))

(declare-fun b!2149763 () Bool)

(declare-fun res!927196 () Bool)

(declare-fun e!1374633 () Bool)

(assert (=> b!2149763 (=> res!927196 e!1374633)))

(declare-fun size!19295 (BalanceConc!15736) Int)

(assert (=> b!2149763 (= res!927196 (> from!952 (size!19295 localTotalInput!13)))))

(declare-fun b!2149764 () Bool)

(declare-fun e!1374634 () Bool)

(declare-fun tp!667714 () Bool)

(declare-fun mapRes!13619 () Bool)

(assert (=> b!2149764 (= e!1374634 (and tp!667714 mapRes!13619))))

(declare-fun condMapEmpty!13619 () Bool)

(declare-fun mapDefault!13619 () List!24716)

(assert (=> b!2149764 (= condMapEmpty!13619 (= (arr!4349 (_values!3156 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24716)) mapDefault!13619)))))

(declare-fun setNonEmpty!17092 () Bool)

(declare-fun tp!667709 () Bool)

(declare-fun setElem!17092 () Context!2842)

(declare-fun e!1374635 () Bool)

(declare-fun inv!32448 (Context!2842) Bool)

(assert (=> setNonEmpty!17092 (= setRes!17092 (and tp!667709 (inv!32448 setElem!17092) e!1374635))))

(declare-fun setRest!17092 () (InoxSet Context!2842))

(assert (=> setNonEmpty!17092 (= z!514 ((_ map or) (store ((as const (Array Context!2842 Bool)) false) setElem!17092 true) setRest!17092))))

(declare-fun mapNonEmpty!13619 () Bool)

(declare-fun tp!667713 () Bool)

(declare-fun tp!667707 () Bool)

(assert (=> mapNonEmpty!13619 (= mapRes!13619 (and tp!667713 tp!667707))))

(declare-fun mapRest!13619 () (Array (_ BitVec 32) List!24716))

(declare-fun mapKey!13619 () (_ BitVec 32))

(declare-fun mapValue!13619 () List!24716)

(assert (=> mapNonEmpty!13619 (= (arr!4349 (_values!3156 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))) (store mapRest!13619 mapKey!13619 mapValue!13619))))

(declare-fun b!2149765 () Bool)

(declare-fun e!1374645 () Bool)

(declare-fun e!1374642 () Bool)

(declare-fun lt!800330 () MutLongMap!2876)

(get-info :version)

(assert (=> b!2149765 (= e!1374645 (and e!1374642 ((_ is LongMap!2876) lt!800330)))))

(assert (=> b!2149765 (= lt!800330 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))

(declare-fun b!2149766 () Bool)

(declare-fun e!1374639 () Bool)

(declare-fun e!1374644 () Bool)

(assert (=> b!2149766 (= e!1374639 e!1374644)))

(declare-fun b!2149767 () Bool)

(assert (=> b!2149767 (= e!1374642 e!1374639)))

(declare-fun b!2149768 () Bool)

(declare-fun tp!667711 () Bool)

(declare-fun inv!32449 (Conc!7987) Bool)

(assert (=> b!2149768 (= e!1374641 (and (inv!32449 (c!341085 localTotalInput!13)) tp!667711))))

(declare-fun b!2149769 () Bool)

(assert (=> b!2149769 (= e!1374633 ((_ is HashMap!2790) (cache!3171 thiss!29110)))))

(declare-fun b!2149770 () Bool)

(declare-fun e!1374643 () Bool)

(assert (=> b!2149770 (= e!1374643 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun e!1374638 () Bool)

(declare-fun b!2149771 () Bool)

(declare-fun e!1374632 () Bool)

(assert (=> b!2149771 (= e!1374637 (and e!1374632 (inv!32447 (totalInput!3240 thiss!29110)) e!1374638))))

(declare-fun b!2149772 () Bool)

(declare-fun tp!667708 () Bool)

(assert (=> b!2149772 (= e!1374635 tp!667708)))

(declare-fun tp!667705 () Bool)

(declare-fun tp!667712 () Bool)

(declare-fun array_inv!3118 (array!9733) Bool)

(declare-fun array_inv!3119 (array!9735) Bool)

(assert (=> b!2149773 (= e!1374644 (and tp!667715 tp!667712 tp!667705 (array_inv!3118 (_keys!3173 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))) (array_inv!3119 (_values!3156 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))) e!1374634))))

(declare-fun mapIsEmpty!13619 () Bool)

(assert (=> mapIsEmpty!13619 mapRes!13619))

(declare-fun b!2149774 () Bool)

(declare-fun res!927197 () Bool)

(assert (=> b!2149774 (=> (not res!927197) (not e!1374636))))

(assert (=> b!2149774 (= res!927197 (validCacheMapFurthestNullable!147 (cache!3171 thiss!29110) (totalInput!3240 thiss!29110)))))

(declare-fun b!2149775 () Bool)

(declare-fun res!927192 () Bool)

(assert (=> b!2149775 (=> (not res!927192) (not e!1374636))))

(assert (=> b!2149775 (= res!927192 e!1374643)))

(declare-fun res!927194 () Bool)

(assert (=> b!2149775 (=> res!927194 e!1374643)))

(declare-fun nullableZipper!190 ((InoxSet Context!2842)) Bool)

(assert (=> b!2149775 (= res!927194 (not (nullableZipper!190 z!514)))))

(declare-fun b!2149776 () Bool)

(declare-fun tp!667706 () Bool)

(assert (=> b!2149776 (= e!1374638 (and (inv!32449 (c!341085 (totalInput!3240 thiss!29110))) tp!667706))))

(declare-fun setIsEmpty!17092 () Bool)

(assert (=> setIsEmpty!17092 setRes!17092))

(assert (=> b!2149777 (= e!1374646 e!1374633)))

(declare-fun res!927195 () Bool)

(assert (=> b!2149777 (=> res!927195 e!1374633)))

(assert (=> b!2149777 (= res!927195 (< from!952 0))))

(declare-fun validCacheMapFurthestNullableBody!25 (tuple2!24464 BalanceConc!15736) Bool)

(declare-fun apply!6017 (MutableMap!2790 tuple3!3634) Int)

(assert (=> b!2149777 (validCacheMapFurthestNullableBody!25 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)) localTotalInput!13)))

(declare-fun lambda!80799 () Int)

(declare-datatypes ((Unit!37800 0))(
  ( (Unit!37801) )
))
(declare-fun lt!800328 () Unit!37800)

(declare-fun lemmaForallPairsThenForLookup!9 (MutableMap!2790 tuple3!3634 Int) Unit!37800)

(assert (=> b!2149777 (= lt!800328 (lemmaForallPairsThenForLookup!9 (cache!3171 thiss!29110) lt!800329 lambda!80799))))

(assert (=> b!2149778 (= e!1374632 (and e!1374645 tp!667710))))

(assert (= (and start!208500 res!927193) b!2149775))

(assert (= (and b!2149775 (not res!927194)) b!2149770))

(assert (= (and b!2149775 res!927192) b!2149774))

(assert (= (and b!2149774 res!927197) b!2149762))

(assert (= (and b!2149762 (not res!927198)) b!2149777))

(assert (= (and b!2149777 (not res!927195)) b!2149763))

(assert (= (and b!2149763 (not res!927196)) b!2149769))

(assert (= (and start!208500 condSetEmpty!17092) setIsEmpty!17092))

(assert (= (and start!208500 (not condSetEmpty!17092)) setNonEmpty!17092))

(assert (= setNonEmpty!17092 b!2149772))

(assert (= (and b!2149764 condMapEmpty!13619) mapIsEmpty!13619))

(assert (= (and b!2149764 (not condMapEmpty!13619)) mapNonEmpty!13619))

(assert (= b!2149773 b!2149764))

(assert (= b!2149766 b!2149773))

(assert (= b!2149767 b!2149766))

(assert (= (and b!2149765 ((_ is LongMap!2876) (v!29197 (underlying!5948 (cache!3171 thiss!29110))))) b!2149767))

(assert (= b!2149778 b!2149765))

(assert (= (and b!2149771 ((_ is HashMap!2790) (cache!3171 thiss!29110))) b!2149778))

(assert (= b!2149771 b!2149776))

(assert (= start!208500 b!2149771))

(assert (= start!208500 b!2149768))

(declare-fun m!2592536 () Bool)

(assert (=> b!2149774 m!2592536))

(declare-fun m!2592538 () Bool)

(assert (=> b!2149762 m!2592538))

(declare-fun m!2592540 () Bool)

(assert (=> b!2149762 m!2592540))

(declare-fun m!2592542 () Bool)

(assert (=> b!2149763 m!2592542))

(declare-fun m!2592544 () Bool)

(assert (=> start!208500 m!2592544))

(declare-fun m!2592546 () Bool)

(assert (=> start!208500 m!2592546))

(declare-fun m!2592548 () Bool)

(assert (=> b!2149771 m!2592548))

(declare-fun m!2592550 () Bool)

(assert (=> b!2149773 m!2592550))

(declare-fun m!2592552 () Bool)

(assert (=> b!2149773 m!2592552))

(declare-fun m!2592554 () Bool)

(assert (=> b!2149776 m!2592554))

(declare-fun m!2592556 () Bool)

(assert (=> b!2149775 m!2592556))

(declare-fun m!2592558 () Bool)

(assert (=> mapNonEmpty!13619 m!2592558))

(declare-fun m!2592560 () Bool)

(assert (=> b!2149768 m!2592560))

(declare-fun m!2592562 () Bool)

(assert (=> setNonEmpty!17092 m!2592562))

(declare-fun m!2592564 () Bool)

(assert (=> b!2149777 m!2592564))

(declare-fun m!2592566 () Bool)

(assert (=> b!2149777 m!2592566))

(declare-fun m!2592568 () Bool)

(assert (=> b!2149777 m!2592568))

(check-sat (not b_next!64199) (not b!2149768) (not b!2149764) b_and!173097 (not setNonEmpty!17092) (not b!2149771) (not b!2149777) b_and!173099 (not b!2149774) (not b!2149775) (not b!2149776) (not b!2149763) (not start!208500) (not mapNonEmpty!13619) (not b_next!64197) (not b!2149773) (not b!2149772) (not b!2149762))
(check-sat b_and!173097 b_and!173099 (not b_next!64199) (not b_next!64197))
(get-model)

(declare-fun d!645547 () Bool)

(assert (=> d!645547 (= (array_inv!3118 (_keys!3173 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))) (bvsge (size!19293 (_keys!3173 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2149773 d!645547))

(declare-fun d!645549 () Bool)

(assert (=> d!645549 (= (array_inv!3119 (_values!3156 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))) (bvsge (size!19294 (_values!3156 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2149773 d!645549))

(declare-fun d!645551 () Bool)

(declare-fun lambda!80802 () Int)

(declare-fun forall!5022 (List!24715 Int) Bool)

(assert (=> d!645551 (= (inv!32448 setElem!17092) (forall!5022 (exprs!1921 setElem!17092) lambda!80802))))

(declare-fun bs!445551 () Bool)

(assert (= bs!445551 d!645551))

(declare-fun m!2592570 () Bool)

(assert (=> bs!445551 m!2592570))

(assert (=> setNonEmpty!17092 d!645551))

(declare-fun b!2149791 () Bool)

(declare-fun res!927209 () Bool)

(declare-fun e!1374651 () Bool)

(assert (=> b!2149791 (=> (not res!927209) (not e!1374651))))

(declare-fun e!1374652 () Bool)

(assert (=> b!2149791 (= res!927209 e!1374652)))

(declare-fun res!927212 () Bool)

(assert (=> b!2149791 (=> res!927212 e!1374652)))

(assert (=> b!2149791 (= res!927212 (not (nullableZipper!190 (_1!14519 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))))))))

(declare-fun b!2149792 () Bool)

(declare-fun res!927213 () Bool)

(assert (=> b!2149792 (=> (not res!927213) (not e!1374651))))

(assert (=> b!2149792 (= res!927213 (and (>= (_3!2287 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))) (- 1)) (< (_3!2287 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))) (_2!14519 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))))))))

(declare-fun b!2149793 () Bool)

(assert (=> b!2149793 (= e!1374652 (= (_3!2287 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))) (- (_2!14519 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))) 1)))))

(declare-fun d!645553 () Bool)

(declare-fun res!927210 () Bool)

(assert (=> d!645553 (=> (not res!927210) (not e!1374651))))

(assert (=> d!645553 (= res!927210 (>= (_2!14519 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))) 0))))

(assert (=> d!645553 (= (validCacheMapFurthestNullableBody!25 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)) localTotalInput!13) e!1374651)))

(declare-fun b!2149794 () Bool)

(declare-fun furthestNullablePosition!108 ((InoxSet Context!2842) Int BalanceConc!15736 Int Int) Int)

(assert (=> b!2149794 (= e!1374651 (= (_2!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329))) (furthestNullablePosition!108 (_1!14519 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))) (_2!14519 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))) localTotalInput!13 (size!19295 localTotalInput!13) (_3!2287 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))))))))

(declare-fun b!2149795 () Bool)

(declare-fun res!927211 () Bool)

(assert (=> b!2149795 (=> (not res!927211) (not e!1374651))))

(assert (=> b!2149795 (= res!927211 (<= (_2!14519 (_1!14520 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))) (size!19295 localTotalInput!13)))))

(assert (= (and d!645553 res!927210) b!2149795))

(assert (= (and b!2149795 res!927211) b!2149792))

(assert (= (and b!2149792 res!927213) b!2149791))

(assert (= (and b!2149791 (not res!927212)) b!2149793))

(assert (= (and b!2149791 res!927209) b!2149794))

(declare-fun m!2592572 () Bool)

(assert (=> b!2149791 m!2592572))

(assert (=> b!2149794 m!2592542))

(assert (=> b!2149794 m!2592542))

(declare-fun m!2592574 () Bool)

(assert (=> b!2149794 m!2592574))

(assert (=> b!2149795 m!2592542))

(assert (=> b!2149777 d!645553))

(declare-fun b!2149808 () Bool)

(declare-fun lt!800391 () Int)

(declare-fun e!1374661 () Bool)

(declare-fun dynLambda!11390 (Int tuple3!3634) Int)

(assert (=> b!2149808 (= e!1374661 (= lt!800391 (dynLambda!11390 (defaultValue!2952 (cache!3171 thiss!29110)) lt!800329)))))

(declare-fun b!2149809 () Bool)

(declare-fun lt!800417 () (_ BitVec 64))

(declare-fun e!1374660 () Int)

(declare-datatypes ((Option!4980 0))(
  ( (None!4979) (Some!4979 (v!29198 tuple2!24464)) )
))
(declare-fun get!7505 (Option!4980) tuple2!24464)

(declare-fun getPair!12 (List!24716 tuple3!3634) Option!4980)

(declare-fun apply!6018 (MutLongMap!2876 (_ BitVec 64)) List!24716)

(assert (=> b!2149809 (= e!1374660 (_2!14520 (get!7505 (getPair!12 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800417) lt!800329))))))

(declare-fun hash!547 (Hashable!2790 tuple3!3634) (_ BitVec 64))

(assert (=> b!2149809 (= lt!800417 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329))))

(declare-fun c!341092 () Bool)

(declare-datatypes ((tuple2!24466 0))(
  ( (tuple2!24467 (_1!14521 (_ BitVec 64)) (_2!14521 List!24716)) )
))
(declare-datatypes ((List!24717 0))(
  ( (Nil!24633) (Cons!24633 (h!30034 tuple2!24466) (t!197261 List!24717)) )
))
(declare-fun contains!4209 (List!24717 tuple2!24466) Bool)

(declare-datatypes ((ListLongMap!249 0))(
  ( (ListLongMap!250 (toList!1102 List!24717)) )
))
(declare-fun map!4954 (MutLongMap!2876) ListLongMap!249)

(assert (=> b!2149809 (= c!341092 (not (contains!4209 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))) (tuple2!24467 lt!800417 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800417)))))))

(declare-fun lt!800412 () Unit!37800)

(declare-fun e!1374659 () Unit!37800)

(assert (=> b!2149809 (= lt!800412 e!1374659)))

(declare-fun lambda!80809 () Int)

(declare-fun lt!800415 () Unit!37800)

(declare-fun forallContained!759 (List!24717 Int tuple2!24466) Unit!37800)

(assert (=> b!2149809 (= lt!800415 (forallContained!759 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))) lambda!80809 (tuple2!24467 lt!800417 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800417))))))

(declare-fun lt!800396 () ListLongMap!249)

(assert (=> b!2149809 (= lt!800396 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110)))))))

(declare-fun lt!800394 () Unit!37800)

(declare-fun lemmaGetPairGetSameValueAsMap!7 (ListLongMap!249 tuple3!3634 Int Hashable!2790) Unit!37800)

(assert (=> b!2149809 (= lt!800394 (lemmaGetPairGetSameValueAsMap!7 lt!800396 lt!800329 (_2!14520 (get!7505 (getPair!12 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800417) lt!800329))) (hashF!4713 (cache!3171 thiss!29110))))))

(declare-fun lt!800409 () Unit!37800)

(declare-fun lemmaInGenMapThenLongMapContainsHash!7 (ListLongMap!249 tuple3!3634 Hashable!2790) Unit!37800)

(assert (=> b!2149809 (= lt!800409 (lemmaInGenMapThenLongMapContainsHash!7 lt!800396 lt!800329 (hashF!4713 (cache!3171 thiss!29110))))))

(declare-fun contains!4210 (ListLongMap!249 (_ BitVec 64)) Bool)

(assert (=> b!2149809 (contains!4210 lt!800396 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329))))

(declare-fun lt!800401 () Unit!37800)

(assert (=> b!2149809 (= lt!800401 lt!800409)))

(declare-fun lt!800406 () (_ BitVec 64))

(assert (=> b!2149809 (= lt!800406 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329))))

(declare-fun lt!800419 () List!24716)

(declare-fun apply!6019 (ListLongMap!249 (_ BitVec 64)) List!24716)

(assert (=> b!2149809 (= lt!800419 (apply!6019 lt!800396 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329)))))

(declare-fun lt!800410 () Unit!37800)

(declare-fun lemmaGetValueImpliesTupleContained!8 (ListLongMap!249 (_ BitVec 64) List!24716) Unit!37800)

(assert (=> b!2149809 (= lt!800410 (lemmaGetValueImpliesTupleContained!8 lt!800396 lt!800406 lt!800419))))

(assert (=> b!2149809 (contains!4209 (toList!1102 lt!800396) (tuple2!24467 lt!800406 lt!800419))))

(declare-fun lt!800414 () Unit!37800)

(assert (=> b!2149809 (= lt!800414 lt!800410)))

(declare-fun lt!800420 () Unit!37800)

(assert (=> b!2149809 (= lt!800420 (forallContained!759 (toList!1102 lt!800396) lambda!80809 (tuple2!24467 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329) (apply!6019 lt!800396 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329)))))))

(declare-fun lt!800400 () Unit!37800)

(declare-fun lemmaInGenMapThenGetPairDefined!7 (ListLongMap!249 tuple3!3634 Hashable!2790) Unit!37800)

(assert (=> b!2149809 (= lt!800400 (lemmaInGenMapThenGetPairDefined!7 lt!800396 lt!800329 (hashF!4713 (cache!3171 thiss!29110))))))

(declare-fun lt!800411 () Unit!37800)

(assert (=> b!2149809 (= lt!800411 (lemmaInGenMapThenLongMapContainsHash!7 lt!800396 lt!800329 (hashF!4713 (cache!3171 thiss!29110))))))

(declare-fun lt!800404 () Unit!37800)

(assert (=> b!2149809 (= lt!800404 lt!800411)))

(declare-fun lt!800393 () (_ BitVec 64))

(assert (=> b!2149809 (= lt!800393 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329))))

(declare-fun lt!800408 () List!24716)

(assert (=> b!2149809 (= lt!800408 (apply!6019 lt!800396 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329)))))

(declare-fun lt!800416 () Unit!37800)

(assert (=> b!2149809 (= lt!800416 (lemmaGetValueImpliesTupleContained!8 lt!800396 lt!800393 lt!800408))))

(assert (=> b!2149809 (contains!4209 (toList!1102 lt!800396) (tuple2!24467 lt!800393 lt!800408))))

(declare-fun lt!800395 () Unit!37800)

(assert (=> b!2149809 (= lt!800395 lt!800416)))

(declare-fun lt!800399 () Unit!37800)

(assert (=> b!2149809 (= lt!800399 (forallContained!759 (toList!1102 lt!800396) lambda!80809 (tuple2!24467 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329) (apply!6019 lt!800396 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329)))))))

(declare-fun isDefined!4090 (Option!4980) Bool)

(assert (=> b!2149809 (isDefined!4090 (getPair!12 (apply!6019 lt!800396 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329)) lt!800329))))

(declare-fun lt!800392 () Unit!37800)

(assert (=> b!2149809 (= lt!800392 lt!800400)))

(declare-datatypes ((Option!4981 0))(
  ( (None!4980) (Some!4980 (v!29199 Int)) )
))
(declare-fun get!7506 (Option!4981) Int)

(declare-fun getValueByKey!45 (List!24716 tuple3!3634) Option!4981)

(declare-datatypes ((ListMap!693 0))(
  ( (ListMap!694 (toList!1103 List!24716)) )
))
(declare-fun extractMap!75 (List!24717) ListMap!693)

(assert (=> b!2149809 (= (_2!14520 (get!7505 (getPair!12 (apply!6019 lt!800396 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329)) lt!800329))) (get!7506 (getValueByKey!45 (toList!1103 (extractMap!75 (toList!1102 lt!800396))) lt!800329)))))

(declare-fun lt!800407 () Unit!37800)

(assert (=> b!2149809 (= lt!800407 lt!800394)))

(declare-fun b!2149810 () Bool)

(declare-fun Unit!37802 () Unit!37800)

(assert (=> b!2149810 (= e!1374659 Unit!37802)))

(declare-fun b!2149811 () Bool)

(declare-fun map!4955 (MutableMap!2790) ListMap!693)

(assert (=> b!2149811 (= e!1374661 (= lt!800391 (get!7506 (getValueByKey!45 (toList!1103 (map!4955 (cache!3171 thiss!29110))) lt!800329))))))

(declare-fun b!2149812 () Bool)

(assert (=> b!2149812 (= e!1374660 (dynLambda!11390 (defaultValue!2952 (cache!3171 thiss!29110)) lt!800329))))

(declare-fun d!645555 () Bool)

(assert (=> d!645555 e!1374661))

(declare-fun c!341093 () Bool)

(assert (=> d!645555 (= c!341093 (contains!4208 (cache!3171 thiss!29110) lt!800329))))

(assert (=> d!645555 (= lt!800391 e!1374660)))

(declare-fun c!341094 () Bool)

(assert (=> d!645555 (= c!341094 (not (contains!4208 (cache!3171 thiss!29110) lt!800329)))))

(declare-fun valid!2219 (MutableMap!2790) Bool)

(assert (=> d!645555 (valid!2219 (cache!3171 thiss!29110))))

(assert (=> d!645555 (= (apply!6017 (cache!3171 thiss!29110) lt!800329) lt!800391)))

(declare-fun b!2149813 () Bool)

(assert (=> b!2149813 false))

(declare-fun lt!800403 () Unit!37800)

(declare-fun lt!800418 () Unit!37800)

(assert (=> b!2149813 (= lt!800403 lt!800418)))

(declare-fun lt!800405 () List!24717)

(declare-fun lt!800402 () List!24716)

(assert (=> b!2149813 (contains!4209 lt!800405 (tuple2!24467 lt!800417 lt!800402))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!13 (List!24717 (_ BitVec 64) List!24716) Unit!37800)

(assert (=> b!2149813 (= lt!800418 (lemmaGetValueByKeyImpliesContainsTuple!13 lt!800405 lt!800417 lt!800402))))

(assert (=> b!2149813 (= lt!800402 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800417))))

(assert (=> b!2149813 (= lt!800405 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))

(declare-fun lt!800413 () Unit!37800)

(declare-fun lt!800397 () Unit!37800)

(assert (=> b!2149813 (= lt!800413 lt!800397)))

(declare-fun lt!800398 () List!24717)

(declare-datatypes ((Option!4982 0))(
  ( (None!4981) (Some!4981 (v!29200 List!24716)) )
))
(declare-fun isDefined!4091 (Option!4982) Bool)

(declare-fun getValueByKey!46 (List!24717 (_ BitVec 64)) Option!4982)

(assert (=> b!2149813 (isDefined!4091 (getValueByKey!46 lt!800398 lt!800417))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!29 (List!24717 (_ BitVec 64)) Unit!37800)

(assert (=> b!2149813 (= lt!800397 (lemmaContainsKeyImpliesGetValueByKeyDefined!29 lt!800398 lt!800417))))

(assert (=> b!2149813 (= lt!800398 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))

(declare-fun Unit!37803 () Unit!37800)

(assert (=> b!2149813 (= e!1374659 Unit!37803)))

(assert (= (and d!645555 c!341094) b!2149812))

(assert (= (and d!645555 (not c!341094)) b!2149809))

(assert (= (and b!2149809 c!341092) b!2149813))

(assert (= (and b!2149809 (not c!341092)) b!2149810))

(assert (= (and d!645555 c!341093) b!2149811))

(assert (= (and d!645555 (not c!341093)) b!2149808))

(declare-fun b_lambda!70793 () Bool)

(assert (=> (not b_lambda!70793) (not b!2149808)))

(declare-fun t!197260 () Bool)

(declare-fun tb!132295 () Bool)

(assert (=> (and b!2149778 (= (defaultValue!2952 (cache!3171 thiss!29110)) (defaultValue!2952 (cache!3171 thiss!29110))) t!197260) tb!132295))

(declare-fun result!159278 () Bool)

(assert (=> tb!132295 (= result!159278 true)))

(assert (=> b!2149808 t!197260))

(declare-fun b_and!173101 () Bool)

(assert (= b_and!173097 (and (=> t!197260 result!159278) b_and!173101)))

(declare-fun b_lambda!70795 () Bool)

(assert (=> (not b_lambda!70795) (not b!2149812)))

(assert (=> b!2149812 t!197260))

(declare-fun b_and!173103 () Bool)

(assert (= b_and!173101 (and (=> t!197260 result!159278) b_and!173103)))

(declare-fun m!2592576 () Bool)

(assert (=> b!2149809 m!2592576))

(assert (=> b!2149809 m!2592576))

(declare-fun m!2592578 () Bool)

(assert (=> b!2149809 m!2592578))

(declare-fun m!2592580 () Bool)

(assert (=> b!2149809 m!2592580))

(declare-fun m!2592582 () Bool)

(assert (=> b!2149809 m!2592582))

(declare-fun m!2592584 () Bool)

(assert (=> b!2149809 m!2592584))

(declare-fun m!2592586 () Bool)

(assert (=> b!2149809 m!2592586))

(declare-fun m!2592588 () Bool)

(assert (=> b!2149809 m!2592588))

(declare-fun m!2592590 () Bool)

(assert (=> b!2149809 m!2592590))

(declare-fun m!2592592 () Bool)

(assert (=> b!2149809 m!2592592))

(declare-fun m!2592594 () Bool)

(assert (=> b!2149809 m!2592594))

(declare-fun m!2592596 () Bool)

(assert (=> b!2149809 m!2592596))

(assert (=> b!2149809 m!2592578))

(assert (=> b!2149809 m!2592586))

(assert (=> b!2149809 m!2592576))

(declare-fun m!2592598 () Bool)

(assert (=> b!2149809 m!2592598))

(assert (=> b!2149809 m!2592586))

(declare-fun m!2592600 () Bool)

(assert (=> b!2149809 m!2592600))

(declare-fun m!2592602 () Bool)

(assert (=> b!2149809 m!2592602))

(declare-fun m!2592604 () Bool)

(assert (=> b!2149809 m!2592604))

(declare-fun m!2592606 () Bool)

(assert (=> b!2149809 m!2592606))

(declare-fun m!2592608 () Bool)

(assert (=> b!2149809 m!2592608))

(declare-fun m!2592610 () Bool)

(assert (=> b!2149809 m!2592610))

(declare-fun m!2592612 () Bool)

(assert (=> b!2149809 m!2592612))

(declare-fun m!2592614 () Bool)

(assert (=> b!2149809 m!2592614))

(declare-fun m!2592616 () Bool)

(assert (=> b!2149809 m!2592616))

(assert (=> b!2149809 m!2592592))

(assert (=> b!2149809 m!2592594))

(declare-fun m!2592618 () Bool)

(assert (=> b!2149809 m!2592618))

(assert (=> b!2149809 m!2592590))

(declare-fun m!2592620 () Bool)

(assert (=> b!2149809 m!2592620))

(assert (=> b!2149809 m!2592584))

(assert (=> d!645555 m!2592538))

(declare-fun m!2592622 () Bool)

(assert (=> d!645555 m!2592622))

(assert (=> b!2149813 m!2592610))

(declare-fun m!2592624 () Bool)

(assert (=> b!2149813 m!2592624))

(declare-fun m!2592626 () Bool)

(assert (=> b!2149813 m!2592626))

(declare-fun m!2592628 () Bool)

(assert (=> b!2149813 m!2592628))

(assert (=> b!2149813 m!2592624))

(declare-fun m!2592630 () Bool)

(assert (=> b!2149813 m!2592630))

(declare-fun m!2592632 () Bool)

(assert (=> b!2149813 m!2592632))

(assert (=> b!2149813 m!2592592))

(declare-fun m!2592634 () Bool)

(assert (=> b!2149808 m!2592634))

(declare-fun m!2592636 () Bool)

(assert (=> b!2149811 m!2592636))

(declare-fun m!2592638 () Bool)

(assert (=> b!2149811 m!2592638))

(assert (=> b!2149811 m!2592638))

(declare-fun m!2592640 () Bool)

(assert (=> b!2149811 m!2592640))

(assert (=> b!2149812 m!2592634))

(assert (=> b!2149777 d!645555))

(declare-fun d!645557 () Bool)

(declare-fun dynLambda!11391 (Int tuple2!24464) Bool)

(assert (=> d!645557 (dynLambda!11391 lambda!80799 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)))))

(declare-fun lt!800423 () Unit!37800)

(declare-fun choose!12703 (MutableMap!2790 tuple3!3634 Int) Unit!37800)

(assert (=> d!645557 (= lt!800423 (choose!12703 (cache!3171 thiss!29110) lt!800329 lambda!80799))))

(assert (=> d!645557 (valid!2219 (cache!3171 thiss!29110))))

(assert (=> d!645557 (= (lemmaForallPairsThenForLookup!9 (cache!3171 thiss!29110) lt!800329 lambda!80799) lt!800423)))

(declare-fun b_lambda!70797 () Bool)

(assert (=> (not b_lambda!70797) (not d!645557)))

(declare-fun bs!445552 () Bool)

(assert (= bs!445552 d!645557))

(assert (=> bs!445552 m!2592564))

(declare-fun m!2592642 () Bool)

(assert (=> bs!445552 m!2592642))

(declare-fun m!2592644 () Bool)

(assert (=> bs!445552 m!2592644))

(assert (=> bs!445552 m!2592622))

(assert (=> b!2149777 d!645557))

(declare-fun d!645559 () Bool)

(declare-fun c!341097 () Bool)

(assert (=> d!645559 (= c!341097 ((_ is Node!7987) (c!341085 localTotalInput!13)))))

(declare-fun e!1374666 () Bool)

(assert (=> d!645559 (= (inv!32449 (c!341085 localTotalInput!13)) e!1374666)))

(declare-fun b!2149820 () Bool)

(declare-fun inv!32450 (Conc!7987) Bool)

(assert (=> b!2149820 (= e!1374666 (inv!32450 (c!341085 localTotalInput!13)))))

(declare-fun b!2149821 () Bool)

(declare-fun e!1374667 () Bool)

(assert (=> b!2149821 (= e!1374666 e!1374667)))

(declare-fun res!927216 () Bool)

(assert (=> b!2149821 (= res!927216 (not ((_ is Leaf!11680) (c!341085 localTotalInput!13))))))

(assert (=> b!2149821 (=> res!927216 e!1374667)))

(declare-fun b!2149822 () Bool)

(declare-fun inv!32451 (Conc!7987) Bool)

(assert (=> b!2149822 (= e!1374667 (inv!32451 (c!341085 localTotalInput!13)))))

(assert (= (and d!645559 c!341097) b!2149820))

(assert (= (and d!645559 (not c!341097)) b!2149821))

(assert (= (and b!2149821 (not res!927216)) b!2149822))

(declare-fun m!2592646 () Bool)

(assert (=> b!2149820 m!2592646))

(declare-fun m!2592648 () Bool)

(assert (=> b!2149822 m!2592648))

(assert (=> b!2149768 d!645559))

(declare-fun bs!445553 () Bool)

(declare-fun b!2149828 () Bool)

(assert (= bs!445553 (and b!2149828 b!2149777)))

(declare-fun lambda!80812 () Int)

(assert (=> bs!445553 (= (= (totalInput!3240 thiss!29110) localTotalInput!13) (= lambda!80812 lambda!80799))))

(assert (=> b!2149828 true))

(declare-fun d!645561 () Bool)

(declare-fun res!927221 () Bool)

(declare-fun e!1374670 () Bool)

(assert (=> d!645561 (=> (not res!927221) (not e!1374670))))

(assert (=> d!645561 (= res!927221 (valid!2219 (cache!3171 thiss!29110)))))

(assert (=> d!645561 (= (validCacheMapFurthestNullable!147 (cache!3171 thiss!29110) (totalInput!3240 thiss!29110)) e!1374670)))

(declare-fun b!2149827 () Bool)

(declare-fun res!927222 () Bool)

(assert (=> b!2149827 (=> (not res!927222) (not e!1374670))))

(declare-fun invariantList!320 (List!24716) Bool)

(assert (=> b!2149827 (= res!927222 (invariantList!320 (toList!1103 (map!4955 (cache!3171 thiss!29110)))))))

(declare-fun forall!5023 (List!24716 Int) Bool)

(assert (=> b!2149828 (= e!1374670 (forall!5023 (toList!1103 (map!4955 (cache!3171 thiss!29110))) lambda!80812))))

(assert (= (and d!645561 res!927221) b!2149827))

(assert (= (and b!2149827 res!927222) b!2149828))

(assert (=> d!645561 m!2592622))

(assert (=> b!2149827 m!2592636))

(declare-fun m!2592651 () Bool)

(assert (=> b!2149827 m!2592651))

(assert (=> b!2149828 m!2592636))

(declare-fun m!2592653 () Bool)

(assert (=> b!2149828 m!2592653))

(assert (=> b!2149774 d!645561))

(declare-fun d!645563 () Bool)

(declare-fun isBalanced!2475 (Conc!7987) Bool)

(assert (=> d!645563 (= (inv!32447 (totalInput!3240 thiss!29110)) (isBalanced!2475 (c!341085 (totalInput!3240 thiss!29110))))))

(declare-fun bs!445554 () Bool)

(assert (= bs!445554 d!645563))

(declare-fun m!2592655 () Bool)

(assert (=> bs!445554 m!2592655))

(assert (=> b!2149771 d!645563))

(declare-fun d!645565 () Bool)

(declare-fun lambda!80815 () Int)

(declare-fun exists!729 ((InoxSet Context!2842) Int) Bool)

(assert (=> d!645565 (= (nullableZipper!190 z!514) (exists!729 z!514 lambda!80815))))

(declare-fun bs!445555 () Bool)

(assert (= bs!445555 d!645565))

(declare-fun m!2592657 () Bool)

(assert (=> bs!445555 m!2592657))

(assert (=> b!2149775 d!645565))

(declare-fun bs!445556 () Bool)

(declare-fun b!2149858 () Bool)

(assert (= bs!445556 (and b!2149858 b!2149809)))

(declare-fun lambda!80818 () Int)

(assert (=> bs!445556 (= lambda!80818 lambda!80809)))

(declare-fun d!645567 () Bool)

(declare-fun lt!800467 () Bool)

(declare-fun contains!4211 (ListMap!693 tuple3!3634) Bool)

(assert (=> d!645567 (= lt!800467 (contains!4211 (map!4955 (cache!3171 thiss!29110)) lt!800329))))

(declare-fun e!1374688 () Bool)

(assert (=> d!645567 (= lt!800467 e!1374688)))

(declare-fun res!927231 () Bool)

(assert (=> d!645567 (=> (not res!927231) (not e!1374688))))

(declare-fun lt!800468 () (_ BitVec 64))

(declare-fun contains!4212 (MutLongMap!2876 (_ BitVec 64)) Bool)

(assert (=> d!645567 (= res!927231 (contains!4212 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800468))))

(declare-fun lt!800482 () Unit!37800)

(declare-fun e!1374690 () Unit!37800)

(assert (=> d!645567 (= lt!800482 e!1374690)))

(declare-fun c!341111 () Bool)

(assert (=> d!645567 (= c!341111 (contains!4211 (extractMap!75 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110)))))) lt!800329))))

(declare-fun lt!800479 () Unit!37800)

(declare-fun e!1374689 () Unit!37800)

(assert (=> d!645567 (= lt!800479 e!1374689)))

(declare-fun c!341108 () Bool)

(assert (=> d!645567 (= c!341108 (contains!4212 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800468))))

(assert (=> d!645567 (= lt!800468 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329))))

(assert (=> d!645567 (valid!2219 (cache!3171 thiss!29110))))

(assert (=> d!645567 (= (contains!4208 (cache!3171 thiss!29110) lt!800329) lt!800467)))

(declare-fun bm!128956 () Bool)

(declare-fun call!128964 () (_ BitVec 64))

(assert (=> bm!128956 (= call!128964 (hash!547 (hashF!4713 (cache!3171 thiss!29110)) lt!800329))))

(declare-fun bm!128957 () Bool)

(declare-fun call!128963 () ListLongMap!249)

(assert (=> bm!128957 (= call!128963 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110)))))))

(declare-fun b!2149851 () Bool)

(declare-fun lt!800465 () Unit!37800)

(assert (=> b!2149851 (= e!1374690 lt!800465)))

(declare-fun lt!800478 () ListLongMap!249)

(assert (=> b!2149851 (= lt!800478 call!128963)))

(declare-fun lemmaInGenericMapThenInLongMap!12 (ListLongMap!249 tuple3!3634 Hashable!2790) Unit!37800)

(assert (=> b!2149851 (= lt!800465 (lemmaInGenericMapThenInLongMap!12 lt!800478 lt!800329 (hashF!4713 (cache!3171 thiss!29110))))))

(declare-fun res!927230 () Bool)

(declare-fun call!128966 () Bool)

(assert (=> b!2149851 (= res!927230 call!128966)))

(declare-fun e!1374687 () Bool)

(assert (=> b!2149851 (=> (not res!927230) (not e!1374687))))

(assert (=> b!2149851 e!1374687))

(declare-fun bm!128958 () Bool)

(declare-fun call!128962 () Option!4980)

(declare-fun call!128965 () List!24716)

(assert (=> bm!128958 (= call!128962 (getPair!12 call!128965 lt!800329))))

(declare-fun b!2149852 () Bool)

(declare-fun call!128961 () Bool)

(assert (=> b!2149852 (= e!1374687 call!128961)))

(declare-fun b!2149853 () Bool)

(assert (=> b!2149853 false))

(declare-fun lt!800476 () Unit!37800)

(declare-fun lt!800470 () Unit!37800)

(assert (=> b!2149853 (= lt!800476 lt!800470)))

(declare-fun lt!800472 () ListLongMap!249)

(assert (=> b!2149853 (contains!4211 (extractMap!75 (toList!1102 lt!800472)) lt!800329)))

(declare-fun lemmaInLongMapThenInGenericMap!12 (ListLongMap!249 tuple3!3634 Hashable!2790) Unit!37800)

(assert (=> b!2149853 (= lt!800470 (lemmaInLongMapThenInGenericMap!12 lt!800472 lt!800329 (hashF!4713 (cache!3171 thiss!29110))))))

(assert (=> b!2149853 (= lt!800472 call!128963)))

(declare-fun e!1374686 () Unit!37800)

(declare-fun Unit!37804 () Unit!37800)

(assert (=> b!2149853 (= e!1374686 Unit!37804)))

(declare-fun b!2149854 () Bool)

(assert (=> b!2149854 (= e!1374690 e!1374686)))

(declare-fun res!927229 () Bool)

(assert (=> b!2149854 (= res!927229 call!128966)))

(declare-fun e!1374685 () Bool)

(assert (=> b!2149854 (=> (not res!927229) (not e!1374685))))

(declare-fun c!341109 () Bool)

(assert (=> b!2149854 (= c!341109 e!1374685)))

(declare-fun b!2149855 () Bool)

(assert (=> b!2149855 (= e!1374685 call!128961)))

(declare-fun b!2149856 () Bool)

(declare-fun e!1374691 () Unit!37800)

(declare-fun Unit!37805 () Unit!37800)

(assert (=> b!2149856 (= e!1374691 Unit!37805)))

(declare-fun b!2149857 () Bool)

(assert (=> b!2149857 false))

(declare-fun lt!800474 () Unit!37800)

(declare-fun lt!800466 () Unit!37800)

(assert (=> b!2149857 (= lt!800474 lt!800466)))

(declare-fun lt!800464 () List!24717)

(declare-fun lt!800480 () List!24716)

(assert (=> b!2149857 (contains!4209 lt!800464 (tuple2!24467 lt!800468 lt!800480))))

(assert (=> b!2149857 (= lt!800466 (lemmaGetValueByKeyImpliesContainsTuple!13 lt!800464 lt!800468 lt!800480))))

(assert (=> b!2149857 (= lt!800480 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800468))))

(assert (=> b!2149857 (= lt!800464 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))

(declare-fun lt!800483 () Unit!37800)

(declare-fun lt!800471 () Unit!37800)

(assert (=> b!2149857 (= lt!800483 lt!800471)))

(declare-fun lt!800481 () List!24717)

(assert (=> b!2149857 (isDefined!4091 (getValueByKey!46 lt!800481 lt!800468))))

(assert (=> b!2149857 (= lt!800471 (lemmaContainsKeyImpliesGetValueByKeyDefined!29 lt!800481 lt!800468))))

(assert (=> b!2149857 (= lt!800481 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))

(declare-fun lt!800473 () Unit!37800)

(declare-fun lt!800469 () Unit!37800)

(assert (=> b!2149857 (= lt!800473 lt!800469)))

(declare-fun lt!800477 () List!24717)

(declare-fun containsKey!48 (List!24717 (_ BitVec 64)) Bool)

(assert (=> b!2149857 (containsKey!48 lt!800477 lt!800468)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!13 (List!24717 (_ BitVec 64)) Unit!37800)

(assert (=> b!2149857 (= lt!800469 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!13 lt!800477 lt!800468))))

(assert (=> b!2149857 (= lt!800477 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))

(declare-fun Unit!37806 () Unit!37800)

(assert (=> b!2149857 (= e!1374691 Unit!37806)))

(assert (=> b!2149858 (= e!1374689 (forallContained!759 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))) lambda!80818 (tuple2!24467 lt!800468 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800468))))))

(declare-fun c!341110 () Bool)

(assert (=> b!2149858 (= c!341110 (not (contains!4209 (toList!1102 (map!4954 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))) (tuple2!24467 lt!800468 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800468)))))))

(declare-fun lt!800475 () Unit!37800)

(assert (=> b!2149858 (= lt!800475 e!1374691)))

(declare-fun b!2149859 () Bool)

(assert (=> b!2149859 (= e!1374688 (isDefined!4090 (getPair!12 (apply!6018 (v!29197 (underlying!5948 (cache!3171 thiss!29110))) lt!800468) lt!800329)))))

(declare-fun bm!128959 () Bool)

(assert (=> bm!128959 (= call!128966 (contains!4210 (ite c!341111 lt!800478 call!128963) call!128964))))

(declare-fun b!2149860 () Bool)

(declare-fun Unit!37807 () Unit!37800)

(assert (=> b!2149860 (= e!1374689 Unit!37807)))

(declare-fun bm!128960 () Bool)

(assert (=> bm!128960 (= call!128961 (isDefined!4090 call!128962))))

(declare-fun b!2149861 () Bool)

(declare-fun Unit!37808 () Unit!37800)

(assert (=> b!2149861 (= e!1374686 Unit!37808)))

(declare-fun bm!128961 () Bool)

(assert (=> bm!128961 (= call!128965 (apply!6019 (ite c!341111 lt!800478 call!128963) call!128964))))

(assert (= (and d!645567 c!341108) b!2149858))

(assert (= (and d!645567 (not c!341108)) b!2149860))

(assert (= (and b!2149858 c!341110) b!2149857))

(assert (= (and b!2149858 (not c!341110)) b!2149856))

(assert (= (and d!645567 c!341111) b!2149851))

(assert (= (and d!645567 (not c!341111)) b!2149854))

(assert (= (and b!2149851 res!927230) b!2149852))

(assert (= (and b!2149854 res!927229) b!2149855))

(assert (= (and b!2149854 c!341109) b!2149853))

(assert (= (and b!2149854 (not c!341109)) b!2149861))

(assert (= (or b!2149851 b!2149852 b!2149854 b!2149855) bm!128956))

(assert (= (or b!2149851 b!2149854 b!2149855 b!2149853) bm!128957))

(assert (= (or b!2149852 b!2149855) bm!128961))

(assert (= (or b!2149851 b!2149854) bm!128959))

(assert (= (or b!2149852 b!2149855) bm!128958))

(assert (= (or b!2149852 b!2149855) bm!128960))

(assert (= (and d!645567 res!927231) b!2149859))

(declare-fun m!2592659 () Bool)

(assert (=> bm!128960 m!2592659))

(assert (=> b!2149857 m!2592610))

(declare-fun m!2592661 () Bool)

(assert (=> b!2149857 m!2592661))

(declare-fun m!2592663 () Bool)

(assert (=> b!2149857 m!2592663))

(declare-fun m!2592665 () Bool)

(assert (=> b!2149857 m!2592665))

(declare-fun m!2592667 () Bool)

(assert (=> b!2149857 m!2592667))

(declare-fun m!2592669 () Bool)

(assert (=> b!2149857 m!2592669))

(declare-fun m!2592671 () Bool)

(assert (=> b!2149857 m!2592671))

(assert (=> b!2149857 m!2592663))

(declare-fun m!2592673 () Bool)

(assert (=> b!2149857 m!2592673))

(declare-fun m!2592675 () Bool)

(assert (=> b!2149857 m!2592675))

(assert (=> b!2149859 m!2592665))

(assert (=> b!2149859 m!2592665))

(declare-fun m!2592677 () Bool)

(assert (=> b!2149859 m!2592677))

(assert (=> b!2149859 m!2592677))

(declare-fun m!2592679 () Bool)

(assert (=> b!2149859 m!2592679))

(assert (=> bm!128956 m!2592576))

(assert (=> b!2149858 m!2592610))

(assert (=> b!2149858 m!2592665))

(declare-fun m!2592681 () Bool)

(assert (=> b!2149858 m!2592681))

(declare-fun m!2592683 () Bool)

(assert (=> b!2149858 m!2592683))

(declare-fun m!2592685 () Bool)

(assert (=> b!2149851 m!2592685))

(declare-fun m!2592687 () Bool)

(assert (=> b!2149853 m!2592687))

(assert (=> b!2149853 m!2592687))

(declare-fun m!2592689 () Bool)

(assert (=> b!2149853 m!2592689))

(declare-fun m!2592691 () Bool)

(assert (=> b!2149853 m!2592691))

(declare-fun m!2592693 () Bool)

(assert (=> bm!128961 m!2592693))

(declare-fun m!2592695 () Bool)

(assert (=> bm!128959 m!2592695))

(assert (=> bm!128957 m!2592610))

(declare-fun m!2592697 () Bool)

(assert (=> bm!128958 m!2592697))

(declare-fun m!2592699 () Bool)

(assert (=> d!645567 m!2592699))

(assert (=> d!645567 m!2592610))

(declare-fun m!2592701 () Bool)

(assert (=> d!645567 m!2592701))

(assert (=> d!645567 m!2592576))

(assert (=> d!645567 m!2592699))

(declare-fun m!2592703 () Bool)

(assert (=> d!645567 m!2592703))

(assert (=> d!645567 m!2592622))

(assert (=> d!645567 m!2592636))

(declare-fun m!2592705 () Bool)

(assert (=> d!645567 m!2592705))

(assert (=> d!645567 m!2592636))

(assert (=> b!2149762 d!645567))

(declare-fun bs!445557 () Bool)

(declare-fun b!2149863 () Bool)

(assert (= bs!445557 (and b!2149863 b!2149777)))

(declare-fun lambda!80819 () Int)

(assert (=> bs!445557 (= lambda!80819 lambda!80799)))

(declare-fun bs!445558 () Bool)

(assert (= bs!445558 (and b!2149863 b!2149828)))

(assert (=> bs!445558 (= (= localTotalInput!13 (totalInput!3240 thiss!29110)) (= lambda!80819 lambda!80812))))

(assert (=> b!2149863 true))

(declare-fun d!645569 () Bool)

(declare-fun res!927232 () Bool)

(declare-fun e!1374692 () Bool)

(assert (=> d!645569 (=> (not res!927232) (not e!1374692))))

(assert (=> d!645569 (= res!927232 (valid!2219 (cache!3171 thiss!29110)))))

(assert (=> d!645569 (= (validCacheMapFurthestNullable!147 (cache!3171 thiss!29110) localTotalInput!13) e!1374692)))

(declare-fun b!2149862 () Bool)

(declare-fun res!927233 () Bool)

(assert (=> b!2149862 (=> (not res!927233) (not e!1374692))))

(assert (=> b!2149862 (= res!927233 (invariantList!320 (toList!1103 (map!4955 (cache!3171 thiss!29110)))))))

(assert (=> b!2149863 (= e!1374692 (forall!5023 (toList!1103 (map!4955 (cache!3171 thiss!29110))) lambda!80819))))

(assert (= (and d!645569 res!927232) b!2149862))

(assert (= (and b!2149862 res!927233) b!2149863))

(assert (=> d!645569 m!2592622))

(assert (=> b!2149862 m!2592636))

(assert (=> b!2149862 m!2592651))

(assert (=> b!2149863 m!2592636))

(declare-fun m!2592707 () Bool)

(assert (=> b!2149863 m!2592707))

(assert (=> b!2149762 d!645569))

(declare-fun d!645571 () Bool)

(declare-fun res!927236 () Bool)

(declare-fun e!1374695 () Bool)

(assert (=> d!645571 (=> (not res!927236) (not e!1374695))))

(assert (=> d!645571 (= res!927236 ((_ is HashMap!2790) (cache!3171 thiss!29110)))))

(assert (=> d!645571 (= (inv!32446 thiss!29110) e!1374695)))

(declare-fun b!2149866 () Bool)

(assert (=> b!2149866 (= e!1374695 (validCacheMapFurthestNullable!147 (cache!3171 thiss!29110) (totalInput!3240 thiss!29110)))))

(assert (= (and d!645571 res!927236) b!2149866))

(assert (=> b!2149866 m!2592536))

(assert (=> start!208500 d!645571))

(declare-fun d!645573 () Bool)

(assert (=> d!645573 (= (inv!32447 localTotalInput!13) (isBalanced!2475 (c!341085 localTotalInput!13)))))

(declare-fun bs!445559 () Bool)

(assert (= bs!445559 d!645573))

(declare-fun m!2592709 () Bool)

(assert (=> bs!445559 m!2592709))

(assert (=> start!208500 d!645573))

(declare-fun d!645575 () Bool)

(declare-fun lt!800486 () Int)

(declare-fun size!19296 (List!24714) Int)

(declare-fun list!9559 (BalanceConc!15736) List!24714)

(assert (=> d!645575 (= lt!800486 (size!19296 (list!9559 localTotalInput!13)))))

(declare-fun size!19297 (Conc!7987) Int)

(assert (=> d!645575 (= lt!800486 (size!19297 (c!341085 localTotalInput!13)))))

(assert (=> d!645575 (= (size!19295 localTotalInput!13) lt!800486)))

(declare-fun bs!445560 () Bool)

(assert (= bs!445560 d!645575))

(declare-fun m!2592711 () Bool)

(assert (=> bs!445560 m!2592711))

(assert (=> bs!445560 m!2592711))

(declare-fun m!2592713 () Bool)

(assert (=> bs!445560 m!2592713))

(declare-fun m!2592715 () Bool)

(assert (=> bs!445560 m!2592715))

(assert (=> b!2149763 d!645575))

(declare-fun d!645577 () Bool)

(declare-fun c!341112 () Bool)

(assert (=> d!645577 (= c!341112 ((_ is Node!7987) (c!341085 (totalInput!3240 thiss!29110))))))

(declare-fun e!1374696 () Bool)

(assert (=> d!645577 (= (inv!32449 (c!341085 (totalInput!3240 thiss!29110))) e!1374696)))

(declare-fun b!2149867 () Bool)

(assert (=> b!2149867 (= e!1374696 (inv!32450 (c!341085 (totalInput!3240 thiss!29110))))))

(declare-fun b!2149868 () Bool)

(declare-fun e!1374697 () Bool)

(assert (=> b!2149868 (= e!1374696 e!1374697)))

(declare-fun res!927237 () Bool)

(assert (=> b!2149868 (= res!927237 (not ((_ is Leaf!11680) (c!341085 (totalInput!3240 thiss!29110)))))))

(assert (=> b!2149868 (=> res!927237 e!1374697)))

(declare-fun b!2149869 () Bool)

(assert (=> b!2149869 (= e!1374697 (inv!32451 (c!341085 (totalInput!3240 thiss!29110))))))

(assert (= (and d!645577 c!341112) b!2149867))

(assert (= (and d!645577 (not c!341112)) b!2149868))

(assert (= (and b!2149868 (not res!927237)) b!2149869))

(declare-fun m!2592717 () Bool)

(assert (=> b!2149867 m!2592717))

(declare-fun m!2592719 () Bool)

(assert (=> b!2149869 m!2592719))

(assert (=> b!2149776 d!645577))

(declare-fun b!2149874 () Bool)

(declare-fun e!1374700 () Bool)

(declare-fun tp!667720 () Bool)

(declare-fun tp!667721 () Bool)

(assert (=> b!2149874 (= e!1374700 (and tp!667720 tp!667721))))

(assert (=> b!2149772 (= tp!667708 e!1374700)))

(assert (= (and b!2149772 ((_ is Cons!24631) (exprs!1921 setElem!17092))) b!2149874))

(declare-fun b!2149882 () Bool)

(declare-fun e!1374705 () Bool)

(declare-fun tp!667728 () Bool)

(assert (=> b!2149882 (= e!1374705 tp!667728)))

(declare-fun b!2149881 () Bool)

(declare-fun e!1374706 () Bool)

(declare-fun setRes!17095 () Bool)

(declare-fun tp!667730 () Bool)

(assert (=> b!2149881 (= e!1374706 (and setRes!17095 tp!667730))))

(declare-fun condSetEmpty!17095 () Bool)

(assert (=> b!2149881 (= condSetEmpty!17095 (= (_1!14519 (_1!14520 (h!30033 (zeroValue!3134 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))) ((as const (Array Context!2842 Bool)) false)))))

(declare-fun setElem!17095 () Context!2842)

(declare-fun setNonEmpty!17095 () Bool)

(declare-fun tp!667729 () Bool)

(assert (=> setNonEmpty!17095 (= setRes!17095 (and tp!667729 (inv!32448 setElem!17095) e!1374705))))

(declare-fun setRest!17095 () (InoxSet Context!2842))

(assert (=> setNonEmpty!17095 (= (_1!14519 (_1!14520 (h!30033 (zeroValue!3134 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2842 Bool)) false) setElem!17095 true) setRest!17095))))

(declare-fun setIsEmpty!17095 () Bool)

(assert (=> setIsEmpty!17095 setRes!17095))

(assert (=> b!2149773 (= tp!667712 e!1374706)))

(assert (= (and b!2149881 condSetEmpty!17095) setIsEmpty!17095))

(assert (= (and b!2149881 (not condSetEmpty!17095)) setNonEmpty!17095))

(assert (= setNonEmpty!17095 b!2149882))

(assert (= (and b!2149773 ((_ is Cons!24632) (zeroValue!3134 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110)))))))) b!2149881))

(declare-fun m!2592721 () Bool)

(assert (=> setNonEmpty!17095 m!2592721))

(declare-fun b!2149884 () Bool)

(declare-fun e!1374707 () Bool)

(declare-fun tp!667731 () Bool)

(assert (=> b!2149884 (= e!1374707 tp!667731)))

(declare-fun b!2149883 () Bool)

(declare-fun e!1374708 () Bool)

(declare-fun setRes!17096 () Bool)

(declare-fun tp!667733 () Bool)

(assert (=> b!2149883 (= e!1374708 (and setRes!17096 tp!667733))))

(declare-fun condSetEmpty!17096 () Bool)

(assert (=> b!2149883 (= condSetEmpty!17096 (= (_1!14519 (_1!14520 (h!30033 (minValue!3134 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))) ((as const (Array Context!2842 Bool)) false)))))

(declare-fun tp!667732 () Bool)

(declare-fun setNonEmpty!17096 () Bool)

(declare-fun setElem!17096 () Context!2842)

(assert (=> setNonEmpty!17096 (= setRes!17096 (and tp!667732 (inv!32448 setElem!17096) e!1374707))))

(declare-fun setRest!17096 () (InoxSet Context!2842))

(assert (=> setNonEmpty!17096 (= (_1!14519 (_1!14520 (h!30033 (minValue!3134 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2842 Bool)) false) setElem!17096 true) setRest!17096))))

(declare-fun setIsEmpty!17096 () Bool)

(assert (=> setIsEmpty!17096 setRes!17096))

(assert (=> b!2149773 (= tp!667705 e!1374708)))

(assert (= (and b!2149883 condSetEmpty!17096) setIsEmpty!17096))

(assert (= (and b!2149883 (not condSetEmpty!17096)) setNonEmpty!17096))

(assert (= setNonEmpty!17096 b!2149884))

(assert (= (and b!2149773 ((_ is Cons!24632) (minValue!3134 (v!29196 (underlying!5947 (v!29197 (underlying!5948 (cache!3171 thiss!29110)))))))) b!2149883))

(declare-fun m!2592723 () Bool)

(assert (=> setNonEmpty!17096 m!2592723))

(declare-fun b!2149886 () Bool)

(declare-fun e!1374709 () Bool)

(declare-fun tp!667734 () Bool)

(assert (=> b!2149886 (= e!1374709 tp!667734)))

(declare-fun b!2149885 () Bool)

(declare-fun e!1374710 () Bool)

(declare-fun setRes!17097 () Bool)

(declare-fun tp!667736 () Bool)

(assert (=> b!2149885 (= e!1374710 (and setRes!17097 tp!667736))))

(declare-fun condSetEmpty!17097 () Bool)

(assert (=> b!2149885 (= condSetEmpty!17097 (= (_1!14519 (_1!14520 (h!30033 mapDefault!13619))) ((as const (Array Context!2842 Bool)) false)))))

(declare-fun setElem!17097 () Context!2842)

(declare-fun tp!667735 () Bool)

(declare-fun setNonEmpty!17097 () Bool)

(assert (=> setNonEmpty!17097 (= setRes!17097 (and tp!667735 (inv!32448 setElem!17097) e!1374709))))

(declare-fun setRest!17097 () (InoxSet Context!2842))

(assert (=> setNonEmpty!17097 (= (_1!14519 (_1!14520 (h!30033 mapDefault!13619))) ((_ map or) (store ((as const (Array Context!2842 Bool)) false) setElem!17097 true) setRest!17097))))

(declare-fun setIsEmpty!17097 () Bool)

(assert (=> setIsEmpty!17097 setRes!17097))

(assert (=> b!2149764 (= tp!667714 e!1374710)))

(assert (= (and b!2149885 condSetEmpty!17097) setIsEmpty!17097))

(assert (= (and b!2149885 (not condSetEmpty!17097)) setNonEmpty!17097))

(assert (= setNonEmpty!17097 b!2149886))

(assert (= (and b!2149764 ((_ is Cons!24632) mapDefault!13619)) b!2149885))

(declare-fun m!2592725 () Bool)

(assert (=> setNonEmpty!17097 m!2592725))

(declare-fun condSetEmpty!17100 () Bool)

(assert (=> setNonEmpty!17092 (= condSetEmpty!17100 (= setRest!17092 ((as const (Array Context!2842 Bool)) false)))))

(declare-fun setRes!17100 () Bool)

(assert (=> setNonEmpty!17092 (= tp!667709 setRes!17100)))

(declare-fun setIsEmpty!17100 () Bool)

(assert (=> setIsEmpty!17100 setRes!17100))

(declare-fun setElem!17100 () Context!2842)

(declare-fun e!1374713 () Bool)

(declare-fun tp!667741 () Bool)

(declare-fun setNonEmpty!17100 () Bool)

(assert (=> setNonEmpty!17100 (= setRes!17100 (and tp!667741 (inv!32448 setElem!17100) e!1374713))))

(declare-fun setRest!17100 () (InoxSet Context!2842))

(assert (=> setNonEmpty!17100 (= setRest!17092 ((_ map or) (store ((as const (Array Context!2842 Bool)) false) setElem!17100 true) setRest!17100))))

(declare-fun b!2149891 () Bool)

(declare-fun tp!667742 () Bool)

(assert (=> b!2149891 (= e!1374713 tp!667742)))

(assert (= (and setNonEmpty!17092 condSetEmpty!17100) setIsEmpty!17100))

(assert (= (and setNonEmpty!17092 (not condSetEmpty!17100)) setNonEmpty!17100))

(assert (= setNonEmpty!17100 b!2149891))

(declare-fun m!2592727 () Bool)

(assert (=> setNonEmpty!17100 m!2592727))

(declare-fun b!2149900 () Bool)

(declare-fun tp!667751 () Bool)

(declare-fun tp!667750 () Bool)

(declare-fun e!1374719 () Bool)

(assert (=> b!2149900 (= e!1374719 (and (inv!32449 (left!18919 (c!341085 localTotalInput!13))) tp!667751 (inv!32449 (right!19249 (c!341085 localTotalInput!13))) tp!667750))))

(declare-fun b!2149902 () Bool)

(declare-fun e!1374718 () Bool)

(declare-fun tp!667749 () Bool)

(assert (=> b!2149902 (= e!1374718 tp!667749)))

(declare-fun b!2149901 () Bool)

(declare-fun inv!32452 (IArray!15979) Bool)

(assert (=> b!2149901 (= e!1374719 (and (inv!32452 (xs!10929 (c!341085 localTotalInput!13))) e!1374718))))

(assert (=> b!2149768 (= tp!667711 (and (inv!32449 (c!341085 localTotalInput!13)) e!1374719))))

(assert (= (and b!2149768 ((_ is Node!7987) (c!341085 localTotalInput!13))) b!2149900))

(assert (= b!2149901 b!2149902))

(assert (= (and b!2149768 ((_ is Leaf!11680) (c!341085 localTotalInput!13))) b!2149901))

(declare-fun m!2592729 () Bool)

(assert (=> b!2149900 m!2592729))

(declare-fun m!2592731 () Bool)

(assert (=> b!2149900 m!2592731))

(declare-fun m!2592733 () Bool)

(assert (=> b!2149901 m!2592733))

(assert (=> b!2149768 m!2592560))

(declare-fun tp!667769 () Bool)

(declare-fun setElem!17105 () Context!2842)

(declare-fun setRes!17105 () Bool)

(declare-fun setNonEmpty!17105 () Bool)

(declare-fun e!1374731 () Bool)

(assert (=> setNonEmpty!17105 (= setRes!17105 (and tp!667769 (inv!32448 setElem!17105) e!1374731))))

(declare-fun mapValue!13622 () List!24716)

(declare-fun setRest!17105 () (InoxSet Context!2842))

(assert (=> setNonEmpty!17105 (= (_1!14519 (_1!14520 (h!30033 mapValue!13622))) ((_ map or) (store ((as const (Array Context!2842 Bool)) false) setElem!17105 true) setRest!17105))))

(declare-fun setIsEmpty!17105 () Bool)

(assert (=> setIsEmpty!17105 setRes!17105))

(declare-fun e!1374730 () Bool)

(declare-fun setElem!17106 () Context!2842)

(declare-fun tp!667767 () Bool)

(declare-fun setNonEmpty!17106 () Bool)

(declare-fun setRes!17106 () Bool)

(assert (=> setNonEmpty!17106 (= setRes!17106 (and tp!667767 (inv!32448 setElem!17106) e!1374730))))

(declare-fun mapDefault!13622 () List!24716)

(declare-fun setRest!17106 () (InoxSet Context!2842))

(assert (=> setNonEmpty!17106 (= (_1!14519 (_1!14520 (h!30033 mapDefault!13622))) ((_ map or) (store ((as const (Array Context!2842 Bool)) false) setElem!17106 true) setRest!17106))))

(declare-fun setIsEmpty!17106 () Bool)

(assert (=> setIsEmpty!17106 setRes!17106))

(declare-fun b!2149913 () Bool)

(declare-fun e!1374729 () Bool)

(declare-fun tp!667766 () Bool)

(assert (=> b!2149913 (= e!1374729 (and setRes!17105 tp!667766))))

(declare-fun condSetEmpty!17106 () Bool)

(assert (=> b!2149913 (= condSetEmpty!17106 (= (_1!14519 (_1!14520 (h!30033 mapValue!13622))) ((as const (Array Context!2842 Bool)) false)))))

(declare-fun condMapEmpty!13622 () Bool)

(assert (=> mapNonEmpty!13619 (= condMapEmpty!13622 (= mapRest!13619 ((as const (Array (_ BitVec 32) List!24716)) mapDefault!13622)))))

(declare-fun e!1374728 () Bool)

(declare-fun mapRes!13622 () Bool)

(assert (=> mapNonEmpty!13619 (= tp!667713 (and e!1374728 mapRes!13622))))

(declare-fun b!2149914 () Bool)

(declare-fun tp!667771 () Bool)

(assert (=> b!2149914 (= e!1374731 tp!667771)))

(declare-fun mapNonEmpty!13622 () Bool)

(declare-fun tp!667772 () Bool)

(assert (=> mapNonEmpty!13622 (= mapRes!13622 (and tp!667772 e!1374729))))

(declare-fun mapKey!13622 () (_ BitVec 32))

(declare-fun mapRest!13622 () (Array (_ BitVec 32) List!24716))

(assert (=> mapNonEmpty!13622 (= mapRest!13619 (store mapRest!13622 mapKey!13622 mapValue!13622))))

(declare-fun mapIsEmpty!13622 () Bool)

(assert (=> mapIsEmpty!13622 mapRes!13622))

(declare-fun b!2149915 () Bool)

(declare-fun tp!667770 () Bool)

(assert (=> b!2149915 (= e!1374728 (and setRes!17106 tp!667770))))

(declare-fun condSetEmpty!17105 () Bool)

(assert (=> b!2149915 (= condSetEmpty!17105 (= (_1!14519 (_1!14520 (h!30033 mapDefault!13622))) ((as const (Array Context!2842 Bool)) false)))))

(declare-fun b!2149916 () Bool)

(declare-fun tp!667768 () Bool)

(assert (=> b!2149916 (= e!1374730 tp!667768)))

(assert (= (and mapNonEmpty!13619 condMapEmpty!13622) mapIsEmpty!13622))

(assert (= (and mapNonEmpty!13619 (not condMapEmpty!13622)) mapNonEmpty!13622))

(assert (= (and b!2149913 condSetEmpty!17106) setIsEmpty!17105))

(assert (= (and b!2149913 (not condSetEmpty!17106)) setNonEmpty!17105))

(assert (= setNonEmpty!17105 b!2149914))

(assert (= (and mapNonEmpty!13622 ((_ is Cons!24632) mapValue!13622)) b!2149913))

(assert (= (and b!2149915 condSetEmpty!17105) setIsEmpty!17106))

(assert (= (and b!2149915 (not condSetEmpty!17105)) setNonEmpty!17106))

(assert (= setNonEmpty!17106 b!2149916))

(assert (= (and mapNonEmpty!13619 ((_ is Cons!24632) mapDefault!13622)) b!2149915))

(declare-fun m!2592735 () Bool)

(assert (=> setNonEmpty!17105 m!2592735))

(declare-fun m!2592737 () Bool)

(assert (=> setNonEmpty!17106 m!2592737))

(declare-fun m!2592739 () Bool)

(assert (=> mapNonEmpty!13622 m!2592739))

(declare-fun b!2149918 () Bool)

(declare-fun e!1374732 () Bool)

(declare-fun tp!667773 () Bool)

(assert (=> b!2149918 (= e!1374732 tp!667773)))

(declare-fun b!2149917 () Bool)

(declare-fun e!1374733 () Bool)

(declare-fun setRes!17107 () Bool)

(declare-fun tp!667775 () Bool)

(assert (=> b!2149917 (= e!1374733 (and setRes!17107 tp!667775))))

(declare-fun condSetEmpty!17107 () Bool)

(assert (=> b!2149917 (= condSetEmpty!17107 (= (_1!14519 (_1!14520 (h!30033 mapValue!13619))) ((as const (Array Context!2842 Bool)) false)))))

(declare-fun tp!667774 () Bool)

(declare-fun setElem!17107 () Context!2842)

(declare-fun setNonEmpty!17107 () Bool)

(assert (=> setNonEmpty!17107 (= setRes!17107 (and tp!667774 (inv!32448 setElem!17107) e!1374732))))

(declare-fun setRest!17107 () (InoxSet Context!2842))

(assert (=> setNonEmpty!17107 (= (_1!14519 (_1!14520 (h!30033 mapValue!13619))) ((_ map or) (store ((as const (Array Context!2842 Bool)) false) setElem!17107 true) setRest!17107))))

(declare-fun setIsEmpty!17107 () Bool)

(assert (=> setIsEmpty!17107 setRes!17107))

(assert (=> mapNonEmpty!13619 (= tp!667707 e!1374733)))

(assert (= (and b!2149917 condSetEmpty!17107) setIsEmpty!17107))

(assert (= (and b!2149917 (not condSetEmpty!17107)) setNonEmpty!17107))

(assert (= setNonEmpty!17107 b!2149918))

(assert (= (and mapNonEmpty!13619 ((_ is Cons!24632) mapValue!13619)) b!2149917))

(declare-fun m!2592741 () Bool)

(assert (=> setNonEmpty!17107 m!2592741))

(declare-fun e!1374735 () Bool)

(declare-fun tp!667777 () Bool)

(declare-fun b!2149919 () Bool)

(declare-fun tp!667778 () Bool)

(assert (=> b!2149919 (= e!1374735 (and (inv!32449 (left!18919 (c!341085 (totalInput!3240 thiss!29110)))) tp!667778 (inv!32449 (right!19249 (c!341085 (totalInput!3240 thiss!29110)))) tp!667777))))

(declare-fun b!2149921 () Bool)

(declare-fun e!1374734 () Bool)

(declare-fun tp!667776 () Bool)

(assert (=> b!2149921 (= e!1374734 tp!667776)))

(declare-fun b!2149920 () Bool)

(assert (=> b!2149920 (= e!1374735 (and (inv!32452 (xs!10929 (c!341085 (totalInput!3240 thiss!29110)))) e!1374734))))

(assert (=> b!2149776 (= tp!667706 (and (inv!32449 (c!341085 (totalInput!3240 thiss!29110))) e!1374735))))

(assert (= (and b!2149776 ((_ is Node!7987) (c!341085 (totalInput!3240 thiss!29110)))) b!2149919))

(assert (= b!2149920 b!2149921))

(assert (= (and b!2149776 ((_ is Leaf!11680) (c!341085 (totalInput!3240 thiss!29110)))) b!2149920))

(declare-fun m!2592743 () Bool)

(assert (=> b!2149919 m!2592743))

(declare-fun m!2592745 () Bool)

(assert (=> b!2149919 m!2592745))

(declare-fun m!2592747 () Bool)

(assert (=> b!2149920 m!2592747))

(assert (=> b!2149776 m!2592554))

(declare-fun b_lambda!70799 () Bool)

(assert (= b_lambda!70793 (or (and b!2149778 b_free!63493) b_lambda!70799)))

(declare-fun b_lambda!70801 () Bool)

(assert (= b_lambda!70795 (or (and b!2149778 b_free!63493) b_lambda!70801)))

(declare-fun b_lambda!70803 () Bool)

(assert (= b_lambda!70797 (or b!2149777 b_lambda!70803)))

(declare-fun bs!445561 () Bool)

(declare-fun d!645579 () Bool)

(assert (= bs!445561 (and d!645579 b!2149777)))

(assert (=> bs!445561 (= (dynLambda!11391 lambda!80799 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329))) (validCacheMapFurthestNullableBody!25 (tuple2!24465 lt!800329 (apply!6017 (cache!3171 thiss!29110) lt!800329)) localTotalInput!13))))

(assert (=> bs!445561 m!2592566))

(assert (=> d!645557 d!645579))

(check-sat (not b_next!64199) (not b!2149776) (not b!2149866) (not b!2149901) (not b!2149900) (not bm!128956) (not b_lambda!70799) (not b!2149857) (not b!2149867) (not d!645557) (not b!2149794) (not b!2149891) (not b!2149859) (not b!2149827) (not b!2149851) (not b!2149882) (not setNonEmpty!17105) (not b!2149886) (not bm!128961) (not d!645573) (not b!2149853) (not b!2149820) (not b_lambda!70803) (not bm!128959) (not d!645575) (not b!2149902) (not b!2149768) (not setNonEmpty!17097) (not d!645561) (not b_lambda!70801) (not b!2149883) (not b!2149862) (not b!2149915) (not b!2149881) (not b!2149809) (not setNonEmpty!17096) (not setNonEmpty!17100) (not b!2149885) (not b!2149858) (not setNonEmpty!17107) (not bm!128957) (not b!2149828) (not d!645565) (not bm!128958) (not b!2149874) (not b!2149791) (not b!2149913) b_and!173103 (not b!2149822) (not d!645551) (not setNonEmpty!17106) (not b!2149919) (not bs!445561) (not mapNonEmpty!13622) (not setNonEmpty!17095) (not b!2149914) (not b!2149916) (not b!2149813) (not b_next!64197) (not d!645563) (not b!2149918) (not b!2149869) (not b!2149920) (not b!2149917) (not b!2149811) b_and!173099 (not d!645567) (not b!2149921) (not b!2149795) (not d!645569) (not b!2149863) (not bm!128960) (not b!2149884) (not d!645555))
(check-sat b_and!173103 b_and!173099 (not b_next!64199) (not b_next!64197))
