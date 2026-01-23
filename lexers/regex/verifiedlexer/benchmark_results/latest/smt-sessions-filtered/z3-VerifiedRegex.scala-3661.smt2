; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208056 () Bool)

(assert start!208056)

(declare-fun b!2143638 () Bool)

(declare-fun b_free!63125 () Bool)

(declare-fun b_next!63829 () Bool)

(assert (=> b!2143638 (= b_free!63125 (not b_next!63829))))

(declare-fun tp!663971 () Bool)

(declare-fun b_and!172705 () Bool)

(assert (=> b!2143638 (= tp!663971 b_and!172705)))

(declare-fun b!2143628 () Bool)

(declare-fun b_free!63127 () Bool)

(declare-fun b_next!63831 () Bool)

(assert (=> b!2143628 (= b_free!63127 (not b_next!63831))))

(declare-fun tp!663957 () Bool)

(declare-fun b_and!172707 () Bool)

(assert (=> b!2143628 (= tp!663957 b_and!172707)))

(declare-fun b!2143642 () Bool)

(declare-fun b_free!63129 () Bool)

(declare-fun b_next!63833 () Bool)

(assert (=> b!2143642 (= b_free!63129 (not b_next!63833))))

(declare-fun tp!663973 () Bool)

(declare-fun b_and!172709 () Bool)

(assert (=> b!2143642 (= tp!663973 b_and!172709)))

(declare-fun b!2143656 () Bool)

(declare-fun b_free!63131 () Bool)

(declare-fun b_next!63835 () Bool)

(assert (=> b!2143656 (= b_free!63131 (not b_next!63835))))

(declare-fun tp!663969 () Bool)

(declare-fun b_and!172711 () Bool)

(assert (=> b!2143656 (= tp!663969 b_and!172711)))

(declare-fun b!2143631 () Bool)

(declare-fun b_free!63133 () Bool)

(declare-fun b_next!63837 () Bool)

(assert (=> b!2143631 (= b_free!63133 (not b_next!63837))))

(declare-fun tp!663959 () Bool)

(declare-fun b_and!172713 () Bool)

(assert (=> b!2143631 (= tp!663959 b_and!172713)))

(declare-fun b!2143630 () Bool)

(declare-fun b_free!63135 () Bool)

(declare-fun b_next!63839 () Bool)

(assert (=> b!2143630 (= b_free!63135 (not b_next!63839))))

(declare-fun tp!663976 () Bool)

(declare-fun b_and!172715 () Bool)

(assert (=> b!2143630 (= tp!663976 b_and!172715)))

(declare-fun b!2143633 () Bool)

(assert (=> b!2143633 true))

(declare-fun bs!445298 () Bool)

(declare-fun b!2143636 () Bool)

(assert (= bs!445298 (and b!2143636 b!2143633)))

(declare-fun lambda!80326 () Int)

(declare-fun lambda!80325 () Int)

(assert (=> bs!445298 (not (= lambda!80326 lambda!80325))))

(assert (=> b!2143636 true))

(declare-fun b!2143625 () Bool)

(declare-fun e!1369668 () Bool)

(declare-fun e!1369674 () Bool)

(assert (=> b!2143625 (= e!1369668 (not e!1369674))))

(declare-fun res!925185 () Bool)

(assert (=> b!2143625 (=> res!925185 e!1369674)))

(declare-datatypes ((C!11724 0))(
  ( (C!11725 (val!6848 Int)) )
))
(declare-datatypes ((Regex!5789 0))(
  ( (ElementMatch!5789 (c!340662 C!11724)) (Concat!10091 (regOne!12090 Regex!5789) (regTwo!12090 Regex!5789)) (EmptyExpr!5789) (Star!5789 (reg!6118 Regex!5789)) (EmptyLang!5789) (Union!5789 (regOne!12091 Regex!5789) (regTwo!12091 Regex!5789)) )
))
(declare-datatypes ((List!24483 0))(
  ( (Nil!24399) (Cons!24399 (h!29800 Regex!5789) (t!197013 List!24483)) )
))
(declare-datatypes ((Context!2718 0))(
  ( (Context!2719 (exprs!1859 List!24483)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3470 0))(
  ( (tuple3!3471 (_1!14328 (InoxSet Context!2718)) (_2!14328 Int) (_3!2205 Int)) )
))
(declare-datatypes ((tuple2!24246 0))(
  ( (tuple2!24247 (_1!14329 tuple3!3470) (_2!14329 Int)) )
))
(declare-datatypes ((List!24484 0))(
  ( (Nil!24400) (Cons!24400 (h!29801 tuple2!24246) (t!197014 List!24484)) )
))
(declare-datatypes ((array!9407 0))(
  ( (array!9408 (arr!4199 (Array (_ BitVec 32) (_ BitVec 64))) (size!19097 (_ BitVec 32))) )
))
(declare-datatypes ((array!9409 0))(
  ( (array!9410 (arr!4200 (Array (_ BitVec 32) List!24484)) (size!19098 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5578 0))(
  ( (LongMapFixedSize!5579 (defaultEntry!3154 Int) (mask!6999 (_ BitVec 32)) (extraKeys!3037 (_ BitVec 32)) (zeroValue!3047 List!24484) (minValue!3047 List!24484) (_size!5629 (_ BitVec 32)) (_keys!3086 array!9407) (_values!3069 array!9409) (_vacant!2850 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10981 0))(
  ( (Cell!10982 (v!28986 LongMapFixedSize!5578)) )
))
(declare-datatypes ((List!24485 0))(
  ( (Nil!24401) (Cons!24401 (h!29802 C!11724) (t!197015 List!24485)) )
))
(declare-datatypes ((IArray!15857 0))(
  ( (IArray!15858 (innerList!7986 List!24485)) )
))
(declare-datatypes ((Conc!7926 0))(
  ( (Node!7926 (left!18757 Conc!7926) (right!19087 Conc!7926) (csize!16082 Int) (cheight!8137 Int)) (Leaf!11588 (xs!10868 IArray!15857) (csize!16083 Int)) (Empty!7926) )
))
(declare-datatypes ((MutLongMap!2789 0))(
  ( (LongMap!2789 (underlying!5773 Cell!10981)) (MutLongMapExt!2788 (__x!16543 Int)) )
))
(declare-datatypes ((Cell!10983 0))(
  ( (Cell!10984 (v!28987 MutLongMap!2789)) )
))
(declare-datatypes ((Hashable!2703 0))(
  ( (HashableExt!2702 (__x!16544 Int)) )
))
(declare-datatypes ((MutableMap!2703 0))(
  ( (MutableMapExt!2702 (__x!16545 Int)) (HashMap!2703 (underlying!5774 Cell!10983) (hashF!4626 Hashable!2703) (_size!5630 (_ BitVec 32)) (defaultValue!2865 Int)) )
))
(declare-datatypes ((BalanceConc!15614 0))(
  ( (BalanceConc!15615 (c!340663 Conc!7926)) )
))
(declare-datatypes ((CacheFurthestNullable!818 0))(
  ( (CacheFurthestNullable!819 (cache!3084 MutableMap!2703) (totalInput!3150 BalanceConc!15614)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!818)

(declare-fun z!3839 () (InoxSet Context!2718))

(declare-fun from!1043 () Int)

(declare-fun lastNullablePos!123 () Int)

(get-info :version)

(declare-datatypes ((Option!4944 0))(
  ( (None!4943) (Some!4943 (v!28988 Int)) )
))
(declare-fun get!7449 (CacheFurthestNullable!818 (InoxSet Context!2718) Int Int) Option!4944)

(assert (=> b!2143625 (= res!925185 ((_ is Some!4943) (get!7449 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-datatypes ((StackFrame!250 0))(
  ( (StackFrame!251 (z!5889 (InoxSet Context!2718)) (from!2756 Int) (lastNullablePos!443 Int) (res!925199 Int) (totalInput!3151 BalanceConc!15614)) )
))
(declare-datatypes ((List!24486 0))(
  ( (Nil!24402) (Cons!24402 (h!29803 StackFrame!250) (t!197016 List!24486)) )
))
(declare-fun stack!8 () List!24486)

(declare-fun forall!4983 (List!24486 Int) Bool)

(assert (=> b!2143625 (forall!4983 stack!8 lambda!80325)))

(declare-fun b!2143626 () Bool)

(declare-fun e!1369678 () Bool)

(declare-fun e!1369669 () Bool)

(declare-datatypes ((tuple2!24248 0))(
  ( (tuple2!24249 (_1!14330 Context!2718) (_2!14330 C!11724)) )
))
(declare-datatypes ((tuple2!24250 0))(
  ( (tuple2!24251 (_1!14331 tuple2!24248) (_2!14331 (InoxSet Context!2718))) )
))
(declare-datatypes ((List!24487 0))(
  ( (Nil!24403) (Cons!24403 (h!29804 tuple2!24250) (t!197017 List!24487)) )
))
(declare-datatypes ((array!9411 0))(
  ( (array!9412 (arr!4201 (Array (_ BitVec 32) List!24487)) (size!19099 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5580 0))(
  ( (LongMapFixedSize!5581 (defaultEntry!3155 Int) (mask!7000 (_ BitVec 32)) (extraKeys!3038 (_ BitVec 32)) (zeroValue!3048 List!24487) (minValue!3048 List!24487) (_size!5631 (_ BitVec 32)) (_keys!3087 array!9407) (_values!3070 array!9411) (_vacant!2851 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10985 0))(
  ( (Cell!10986 (v!28989 LongMapFixedSize!5580)) )
))
(declare-datatypes ((MutLongMap!2790 0))(
  ( (LongMap!2790 (underlying!5775 Cell!10985)) (MutLongMapExt!2789 (__x!16546 Int)) )
))
(declare-fun lt!798501 () MutLongMap!2790)

(assert (=> b!2143626 (= e!1369678 (and e!1369669 ((_ is LongMap!2790) lt!798501)))))

(declare-datatypes ((Cell!10987 0))(
  ( (Cell!10988 (v!28990 MutLongMap!2790)) )
))
(declare-datatypes ((Hashable!2704 0))(
  ( (HashableExt!2703 (__x!16547 Int)) )
))
(declare-datatypes ((MutableMap!2704 0))(
  ( (MutableMapExt!2703 (__x!16548 Int)) (HashMap!2704 (underlying!5776 Cell!10987) (hashF!4627 Hashable!2704) (_size!5632 (_ BitVec 32)) (defaultValue!2866 Int)) )
))
(declare-datatypes ((CacheUp!1860 0))(
  ( (CacheUp!1861 (cache!3085 MutableMap!2704)) )
))
(declare-fun cacheUp!979 () CacheUp!1860)

(assert (=> b!2143626 (= lt!798501 (v!28990 (underlying!5776 (cache!3085 cacheUp!979))))))

(declare-fun b!2143627 () Bool)

(declare-fun res!925196 () Bool)

(declare-fun e!1369658 () Bool)

(assert (=> b!2143627 (=> (not res!925196) (not e!1369658))))

(declare-fun valid!2177 (CacheUp!1860) Bool)

(assert (=> b!2143627 (= res!925196 (valid!2177 cacheUp!979))))

(declare-fun e!1369650 () Bool)

(declare-fun e!1369670 () Bool)

(assert (=> b!2143628 (= e!1369650 (and e!1369670 tp!663957))))

(declare-fun b!2143629 () Bool)

(declare-fun e!1369645 () Bool)

(declare-fun tp!663966 () Bool)

(declare-fun inv!32113 (Conc!7926) Bool)

(assert (=> b!2143629 (= e!1369645 (and (inv!32113 (c!340663 (totalInput!3150 cacheFurthestNullable!114))) tp!663966))))

(declare-fun e!1369656 () Bool)

(declare-fun e!1369644 () Bool)

(declare-datatypes ((tuple3!3472 0))(
  ( (tuple3!3473 (_1!14332 Regex!5789) (_2!14332 Context!2718) (_3!2206 C!11724)) )
))
(declare-datatypes ((tuple2!24252 0))(
  ( (tuple2!24253 (_1!14333 tuple3!3472) (_2!14333 (InoxSet Context!2718))) )
))
(declare-datatypes ((List!24488 0))(
  ( (Nil!24404) (Cons!24404 (h!29805 tuple2!24252) (t!197018 List!24488)) )
))
(declare-datatypes ((Hashable!2705 0))(
  ( (HashableExt!2704 (__x!16549 Int)) )
))
(declare-datatypes ((array!9413 0))(
  ( (array!9414 (arr!4202 (Array (_ BitVec 32) List!24488)) (size!19100 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5582 0))(
  ( (LongMapFixedSize!5583 (defaultEntry!3156 Int) (mask!7001 (_ BitVec 32)) (extraKeys!3039 (_ BitVec 32)) (zeroValue!3049 List!24488) (minValue!3049 List!24488) (_size!5633 (_ BitVec 32)) (_keys!3088 array!9407) (_values!3071 array!9413) (_vacant!2852 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10989 0))(
  ( (Cell!10990 (v!28991 LongMapFixedSize!5582)) )
))
(declare-datatypes ((MutLongMap!2791 0))(
  ( (LongMap!2791 (underlying!5777 Cell!10989)) (MutLongMapExt!2790 (__x!16550 Int)) )
))
(declare-datatypes ((Cell!10991 0))(
  ( (Cell!10992 (v!28992 MutLongMap!2791)) )
))
(declare-datatypes ((MutableMap!2705 0))(
  ( (MutableMapExt!2704 (__x!16551 Int)) (HashMap!2705 (underlying!5778 Cell!10991) (hashF!4628 Hashable!2705) (_size!5634 (_ BitVec 32)) (defaultValue!2867 Int)) )
))
(declare-datatypes ((CacheDown!1852 0))(
  ( (CacheDown!1853 (cache!3086 MutableMap!2705)) )
))
(declare-fun cacheDown!1098 () CacheDown!1852)

(declare-fun tp!663956 () Bool)

(declare-fun tp!663968 () Bool)

(declare-fun array_inv!3005 (array!9407) Bool)

(declare-fun array_inv!3006 (array!9413) Bool)

(assert (=> b!2143631 (= e!1369656 (and tp!663959 tp!663956 tp!663968 (array_inv!3005 (_keys!3088 (v!28991 (underlying!5777 (v!28992 (underlying!5778 (cache!3086 cacheDown!1098))))))) (array_inv!3006 (_values!3071 (v!28991 (underlying!5777 (v!28992 (underlying!5778 (cache!3086 cacheDown!1098))))))) e!1369644))))

(declare-fun b!2143632 () Bool)

(declare-fun e!1369671 () Bool)

(declare-fun e!1369647 () Bool)

(assert (=> b!2143632 (= e!1369671 e!1369647)))

(assert (=> b!2143633 (= e!1369658 e!1369668)))

(declare-fun res!925198 () Bool)

(assert (=> b!2143633 (=> (not res!925198) (not e!1369668))))

(assert (=> b!2143633 (= res!925198 (forall!4983 stack!8 lambda!80325))))

(declare-fun lt!798498 () Int)

(declare-fun lt!798499 () Int)

(declare-fun totalInput!851 () BalanceConc!15614)

(declare-fun furthestNullablePosition!85 ((InoxSet Context!2718) Int BalanceConc!15614 Int Int) Int)

(assert (=> b!2143633 (= lt!798498 (furthestNullablePosition!85 z!3839 from!1043 totalInput!851 lt!798499 lastNullablePos!123))))

(declare-fun e!1369680 () Bool)

(declare-fun setElem!16591 () Context!2718)

(declare-fun tp!663981 () Bool)

(declare-fun setNonEmpty!16590 () Bool)

(declare-fun setRes!16590 () Bool)

(declare-fun inv!32114 (Context!2718) Bool)

(assert (=> setNonEmpty!16590 (= setRes!16590 (and tp!663981 (inv!32114 setElem!16591) e!1369680))))

(declare-fun setRest!16590 () (InoxSet Context!2718))

(assert (=> setNonEmpty!16590 (= z!3839 ((_ map or) (store ((as const (Array Context!2718 Bool)) false) setElem!16591 true) setRest!16590))))

(declare-fun b!2143634 () Bool)

(declare-fun res!925186 () Bool)

(assert (=> b!2143634 (=> res!925186 e!1369674)))

(assert (=> b!2143634 (= res!925186 (not (= lt!798498 lastNullablePos!123)))))

(declare-fun mapNonEmpty!13279 () Bool)

(declare-fun mapRes!13279 () Bool)

(declare-fun tp!663970 () Bool)

(declare-fun tp!663960 () Bool)

(assert (=> mapNonEmpty!13279 (= mapRes!13279 (and tp!663970 tp!663960))))

(declare-fun mapKey!13281 () (_ BitVec 32))

(declare-fun mapRest!13281 () (Array (_ BitVec 32) List!24488))

(declare-fun mapValue!13279 () List!24488)

(assert (=> mapNonEmpty!13279 (= (arr!4202 (_values!3071 (v!28991 (underlying!5777 (v!28992 (underlying!5778 (cache!3086 cacheDown!1098))))))) (store mapRest!13281 mapKey!13281 mapValue!13279))))

(declare-fun b!2143635 () Bool)

(assert (=> b!2143635 (= e!1369674 true)))

(assert (=> b!2143635 (forall!4983 stack!8 lambda!80325)))

(declare-fun res!925188 () Bool)

(assert (=> b!2143636 (=> (not res!925188) (not e!1369668))))

(assert (=> b!2143636 (= res!925188 (forall!4983 stack!8 lambda!80326))))

(declare-fun b!2143637 () Bool)

(declare-fun e!1369653 () Bool)

(declare-fun e!1369665 () Bool)

(assert (=> b!2143637 (= e!1369653 e!1369665)))

(assert (=> b!2143638 (= e!1369647 (and e!1369678 tp!663971))))

(declare-fun b!2143639 () Bool)

(declare-fun tp!663962 () Bool)

(assert (=> b!2143639 (= e!1369644 (and tp!663962 mapRes!13279))))

(declare-fun condMapEmpty!13281 () Bool)

(declare-fun mapDefault!13281 () List!24488)

(assert (=> b!2143639 (= condMapEmpty!13281 (= (arr!4202 (_values!3071 (v!28991 (underlying!5777 (v!28992 (underlying!5778 (cache!3086 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24488)) mapDefault!13281)))))

(declare-fun mapIsEmpty!13279 () Bool)

(declare-fun mapRes!13280 () Bool)

(assert (=> mapIsEmpty!13279 mapRes!13280))

(declare-fun b!2143640 () Bool)

(declare-fun e!1369662 () Bool)

(declare-fun tp!663967 () Bool)

(assert (=> b!2143640 (= e!1369662 tp!663967)))

(declare-fun b!2143641 () Bool)

(declare-fun e!1369660 () Bool)

(assert (=> b!2143641 (= e!1369660 e!1369658)))

(declare-fun res!925194 () Bool)

(assert (=> b!2143641 (=> (not res!925194) (not e!1369658))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2143641 (= res!925194 (and (= totalInputSize!296 lt!798499) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19101 (BalanceConc!15614) Int)

(assert (=> b!2143641 (= lt!798499 (size!19101 totalInput!851))))

(declare-fun mapIsEmpty!13280 () Bool)

(declare-fun mapRes!13281 () Bool)

(assert (=> mapIsEmpty!13280 mapRes!13281))

(declare-fun tp!663975 () Bool)

(declare-fun e!1369648 () Bool)

(declare-fun e!1369649 () Bool)

(declare-fun tp!663977 () Bool)

(declare-fun array_inv!3007 (array!9411) Bool)

(assert (=> b!2143642 (= e!1369649 (and tp!663973 tp!663975 tp!663977 (array_inv!3005 (_keys!3087 (v!28989 (underlying!5775 (v!28990 (underlying!5776 (cache!3085 cacheUp!979))))))) (array_inv!3007 (_values!3070 (v!28989 (underlying!5775 (v!28990 (underlying!5776 (cache!3085 cacheUp!979))))))) e!1369648))))

(declare-fun b!2143643 () Bool)

(declare-fun e!1369672 () Bool)

(declare-fun lostCauseZipper!122 ((InoxSet Context!2718)) Bool)

(assert (=> b!2143643 (= e!1369672 (not (lostCauseZipper!122 z!3839)))))

(declare-fun b!2143644 () Bool)

(declare-fun e!1369651 () Bool)

(declare-fun inv!32115 (BalanceConc!15614) Bool)

(assert (=> b!2143644 (= e!1369651 (and e!1369650 (inv!32115 (totalInput!3150 cacheFurthestNullable!114)) e!1369645))))

(declare-fun b!2143645 () Bool)

(declare-fun e!1369667 () Bool)

(assert (=> b!2143645 (= e!1369667 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2143646 () Bool)

(declare-fun e!1369679 () Bool)

(assert (=> b!2143646 (= e!1369669 e!1369679)))

(declare-fun mapNonEmpty!13280 () Bool)

(declare-fun tp!663953 () Bool)

(declare-fun tp!663972 () Bool)

(assert (=> mapNonEmpty!13280 (= mapRes!13280 (and tp!663953 tp!663972))))

(declare-fun mapValue!13280 () List!24484)

(declare-fun mapRest!13280 () (Array (_ BitVec 32) List!24484))

(declare-fun mapKey!13279 () (_ BitVec 32))

(assert (=> mapNonEmpty!13280 (= (arr!4200 (_values!3069 (v!28986 (underlying!5773 (v!28987 (underlying!5774 (cache!3084 cacheFurthestNullable!114))))))) (store mapRest!13280 mapKey!13279 mapValue!13280))))

(declare-fun e!1369675 () Bool)

(declare-fun b!2143647 () Bool)

(declare-fun e!1369676 () Bool)

(declare-fun tp!663978 () Bool)

(declare-fun inv!32116 (StackFrame!250) Bool)

(assert (=> b!2143647 (= e!1369675 (and (inv!32116 (h!29803 stack!8)) e!1369676 tp!663978))))

(declare-fun b!2143648 () Bool)

(declare-fun res!925189 () Bool)

(assert (=> b!2143648 (=> (not res!925189) (not e!1369658))))

(declare-fun valid!2178 (CacheFurthestNullable!818) Bool)

(assert (=> b!2143648 (= res!925189 (valid!2178 cacheFurthestNullable!114))))

(declare-fun b!2143649 () Bool)

(declare-fun e!1369663 () Bool)

(declare-fun e!1369673 () Bool)

(assert (=> b!2143649 (= e!1369663 e!1369673)))

(declare-fun mapNonEmpty!13281 () Bool)

(declare-fun tp!663961 () Bool)

(declare-fun tp!663954 () Bool)

(assert (=> mapNonEmpty!13281 (= mapRes!13281 (and tp!663961 tp!663954))))

(declare-fun mapValue!13281 () List!24487)

(declare-fun mapKey!13280 () (_ BitVec 32))

(declare-fun mapRest!13279 () (Array (_ BitVec 32) List!24487))

(assert (=> mapNonEmpty!13281 (= (arr!4201 (_values!3070 (v!28989 (underlying!5775 (v!28990 (underlying!5776 (cache!3085 cacheUp!979))))))) (store mapRest!13279 mapKey!13280 mapValue!13281))))

(declare-fun b!2143650 () Bool)

(declare-fun res!925191 () Bool)

(assert (=> b!2143650 (=> (not res!925191) (not e!1369658))))

(assert (=> b!2143650 (= res!925191 e!1369667)))

(declare-fun res!925193 () Bool)

(assert (=> b!2143650 (=> res!925193 e!1369667)))

(declare-fun nullableZipper!147 ((InoxSet Context!2718)) Bool)

(assert (=> b!2143650 (= res!925193 (not (nullableZipper!147 z!3839)))))

(declare-fun setRes!16591 () Bool)

(declare-fun tp!663965 () Bool)

(declare-fun setNonEmpty!16591 () Bool)

(declare-fun setElem!16590 () Context!2718)

(assert (=> setNonEmpty!16591 (= setRes!16591 (and tp!663965 (inv!32114 setElem!16590) e!1369662))))

(declare-fun setRest!16591 () (InoxSet Context!2718))

(assert (=> setNonEmpty!16591 (= (z!5889 (h!29803 stack!8)) ((_ map or) (store ((as const (Array Context!2718 Bool)) false) setElem!16590 true) setRest!16591))))

(declare-fun b!2143651 () Bool)

(declare-fun res!925195 () Bool)

(assert (=> b!2143651 (=> (not res!925195) (not e!1369658))))

(assert (=> b!2143651 (= res!925195 (= (totalInput!3150 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2143652 () Bool)

(declare-fun e!1369646 () Bool)

(assert (=> b!2143652 (= e!1369676 (and setRes!16591 (inv!32115 (totalInput!3151 (h!29803 stack!8))) e!1369646))))

(declare-fun condSetEmpty!16590 () Bool)

(assert (=> b!2143652 (= condSetEmpty!16590 (= (z!5889 (h!29803 stack!8)) ((as const (Array Context!2718 Bool)) false)))))

(declare-fun setIsEmpty!16590 () Bool)

(assert (=> setIsEmpty!16590 setRes!16590))

(declare-fun b!2143653 () Bool)

(declare-fun e!1369659 () Bool)

(assert (=> b!2143653 (= e!1369659 e!1369656)))

(declare-fun b!2143654 () Bool)

(declare-fun res!925197 () Bool)

(assert (=> b!2143654 (=> res!925197 e!1369674)))

(assert (=> b!2143654 (= res!925197 e!1369672)))

(declare-fun res!925192 () Bool)

(assert (=> b!2143654 (=> (not res!925192) (not e!1369672))))

(assert (=> b!2143654 (= res!925192 (not (= from!1043 totalInputSize!296)))))

(declare-fun b!2143655 () Bool)

(declare-fun e!1369652 () Bool)

(declare-fun tp!663974 () Bool)

(assert (=> b!2143655 (= e!1369652 (and tp!663974 mapRes!13280))))

(declare-fun condMapEmpty!13280 () Bool)

(declare-fun mapDefault!13280 () List!24484)

(assert (=> b!2143655 (= condMapEmpty!13280 (= (arr!4200 (_values!3069 (v!28986 (underlying!5773 (v!28987 (underlying!5774 (cache!3084 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24484)) mapDefault!13280)))))

(declare-fun e!1369677 () Bool)

(assert (=> b!2143656 (= e!1369673 (and e!1369677 tp!663969))))

(declare-fun b!2143657 () Bool)

(declare-fun tp!663958 () Bool)

(assert (=> b!2143657 (= e!1369680 tp!663958)))

(declare-fun b!2143658 () Bool)

(declare-fun tp!663964 () Bool)

(assert (=> b!2143658 (= e!1369648 (and tp!663964 mapRes!13281))))

(declare-fun condMapEmpty!13279 () Bool)

(declare-fun mapDefault!13279 () List!24487)

(assert (=> b!2143658 (= condMapEmpty!13279 (= (arr!4201 (_values!3070 (v!28989 (underlying!5775 (v!28990 (underlying!5776 (cache!3085 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24487)) mapDefault!13279)))))

(declare-fun b!2143659 () Bool)

(declare-fun res!925187 () Bool)

(assert (=> b!2143659 (=> (not res!925187) (not e!1369658))))

(declare-fun valid!2179 (CacheDown!1852) Bool)

(assert (=> b!2143659 (= res!925187 (valid!2179 cacheDown!1098))))

(declare-fun b!2143660 () Bool)

(declare-fun tp!663955 () Bool)

(assert (=> b!2143660 (= e!1369646 (and (inv!32113 (c!340663 (totalInput!3151 (h!29803 stack!8)))) tp!663955))))

(declare-fun mapIsEmpty!13281 () Bool)

(assert (=> mapIsEmpty!13281 mapRes!13279))

(declare-fun b!2143661 () Bool)

(declare-fun e!1369666 () Bool)

(declare-fun lt!798497 () MutLongMap!2789)

(assert (=> b!2143661 (= e!1369670 (and e!1369666 ((_ is LongMap!2789) lt!798497)))))

(assert (=> b!2143661 (= lt!798497 (v!28987 (underlying!5774 (cache!3084 cacheFurthestNullable!114))))))

(declare-fun b!2143662 () Bool)

(assert (=> b!2143662 (= e!1369679 e!1369649)))

(declare-fun b!2143663 () Bool)

(declare-fun e!1369661 () Bool)

(assert (=> b!2143663 (= e!1369661 e!1369659)))

(declare-fun b!2143664 () Bool)

(declare-fun e!1369654 () Bool)

(declare-fun tp!663963 () Bool)

(assert (=> b!2143664 (= e!1369654 (and (inv!32113 (c!340663 totalInput!851)) tp!663963))))

(declare-fun b!2143665 () Bool)

(assert (=> b!2143665 (= e!1369666 e!1369653)))

(declare-fun setIsEmpty!16591 () Bool)

(assert (=> setIsEmpty!16591 setRes!16591))

(declare-fun b!2143666 () Bool)

(declare-fun lt!798500 () MutLongMap!2791)

(assert (=> b!2143666 (= e!1369677 (and e!1369661 ((_ is LongMap!2791) lt!798500)))))

(assert (=> b!2143666 (= lt!798500 (v!28992 (underlying!5778 (cache!3086 cacheDown!1098))))))

(declare-fun res!925190 () Bool)

(assert (=> start!208056 (=> (not res!925190) (not e!1369660))))

(assert (=> start!208056 (= res!925190 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208056 e!1369660))

(declare-fun inv!32117 (CacheFurthestNullable!818) Bool)

(assert (=> start!208056 (and (inv!32117 cacheFurthestNullable!114) e!1369651)))

(assert (=> start!208056 true))

(declare-fun inv!32118 (CacheDown!1852) Bool)

(assert (=> start!208056 (and (inv!32118 cacheDown!1098) e!1369663)))

(declare-fun inv!32119 (CacheUp!1860) Bool)

(assert (=> start!208056 (and (inv!32119 cacheUp!979) e!1369671)))

(declare-fun condSetEmpty!16591 () Bool)

(assert (=> start!208056 (= condSetEmpty!16591 (= z!3839 ((as const (Array Context!2718 Bool)) false)))))

(assert (=> start!208056 setRes!16590))

(assert (=> start!208056 (and (inv!32115 totalInput!851) e!1369654)))

(assert (=> start!208056 e!1369675))

(declare-fun tp!663980 () Bool)

(declare-fun tp!663979 () Bool)

(declare-fun array_inv!3008 (array!9409) Bool)

(assert (=> b!2143630 (= e!1369665 (and tp!663976 tp!663979 tp!663980 (array_inv!3005 (_keys!3086 (v!28986 (underlying!5773 (v!28987 (underlying!5774 (cache!3084 cacheFurthestNullable!114))))))) (array_inv!3008 (_values!3069 (v!28986 (underlying!5773 (v!28987 (underlying!5774 (cache!3084 cacheFurthestNullable!114))))))) e!1369652))))

(assert (= (and start!208056 res!925190) b!2143641))

(assert (= (and b!2143641 res!925194) b!2143650))

(assert (= (and b!2143650 (not res!925193)) b!2143645))

(assert (= (and b!2143650 res!925191) b!2143627))

(assert (= (and b!2143627 res!925196) b!2143659))

(assert (= (and b!2143659 res!925187) b!2143648))

(assert (= (and b!2143648 res!925189) b!2143651))

(assert (= (and b!2143651 res!925195) b!2143633))

(assert (= (and b!2143633 res!925198) b!2143636))

(assert (= (and b!2143636 res!925188) b!2143625))

(assert (= (and b!2143625 (not res!925185)) b!2143654))

(assert (= (and b!2143654 res!925192) b!2143643))

(assert (= (and b!2143654 (not res!925197)) b!2143634))

(assert (= (and b!2143634 (not res!925186)) b!2143635))

(assert (= (and b!2143655 condMapEmpty!13280) mapIsEmpty!13279))

(assert (= (and b!2143655 (not condMapEmpty!13280)) mapNonEmpty!13280))

(assert (= b!2143630 b!2143655))

(assert (= b!2143637 b!2143630))

(assert (= b!2143665 b!2143637))

(assert (= (and b!2143661 ((_ is LongMap!2789) (v!28987 (underlying!5774 (cache!3084 cacheFurthestNullable!114))))) b!2143665))

(assert (= b!2143628 b!2143661))

(assert (= (and b!2143644 ((_ is HashMap!2703) (cache!3084 cacheFurthestNullable!114))) b!2143628))

(assert (= b!2143644 b!2143629))

(assert (= start!208056 b!2143644))

(assert (= (and b!2143639 condMapEmpty!13281) mapIsEmpty!13281))

(assert (= (and b!2143639 (not condMapEmpty!13281)) mapNonEmpty!13279))

(assert (= b!2143631 b!2143639))

(assert (= b!2143653 b!2143631))

(assert (= b!2143663 b!2143653))

(assert (= (and b!2143666 ((_ is LongMap!2791) (v!28992 (underlying!5778 (cache!3086 cacheDown!1098))))) b!2143663))

(assert (= b!2143656 b!2143666))

(assert (= (and b!2143649 ((_ is HashMap!2705) (cache!3086 cacheDown!1098))) b!2143656))

(assert (= start!208056 b!2143649))

(assert (= (and b!2143658 condMapEmpty!13279) mapIsEmpty!13280))

(assert (= (and b!2143658 (not condMapEmpty!13279)) mapNonEmpty!13281))

(assert (= b!2143642 b!2143658))

(assert (= b!2143662 b!2143642))

(assert (= b!2143646 b!2143662))

(assert (= (and b!2143626 ((_ is LongMap!2790) (v!28990 (underlying!5776 (cache!3085 cacheUp!979))))) b!2143646))

(assert (= b!2143638 b!2143626))

(assert (= (and b!2143632 ((_ is HashMap!2704) (cache!3085 cacheUp!979))) b!2143638))

(assert (= start!208056 b!2143632))

(assert (= (and start!208056 condSetEmpty!16591) setIsEmpty!16590))

(assert (= (and start!208056 (not condSetEmpty!16591)) setNonEmpty!16590))

(assert (= setNonEmpty!16590 b!2143657))

(assert (= start!208056 b!2143664))

(assert (= (and b!2143652 condSetEmpty!16590) setIsEmpty!16591))

(assert (= (and b!2143652 (not condSetEmpty!16590)) setNonEmpty!16591))

(assert (= setNonEmpty!16591 b!2143640))

(assert (= b!2143652 b!2143660))

(assert (= b!2143647 b!2143652))

(assert (= (and start!208056 ((_ is Cons!24402) stack!8)) b!2143647))

(declare-fun m!2588373 () Bool)

(assert (=> b!2143642 m!2588373))

(declare-fun m!2588375 () Bool)

(assert (=> b!2143642 m!2588375))

(declare-fun m!2588377 () Bool)

(assert (=> b!2143659 m!2588377))

(declare-fun m!2588379 () Bool)

(assert (=> b!2143664 m!2588379))

(declare-fun m!2588381 () Bool)

(assert (=> mapNonEmpty!13279 m!2588381))

(declare-fun m!2588383 () Bool)

(assert (=> b!2143633 m!2588383))

(declare-fun m!2588385 () Bool)

(assert (=> b!2143633 m!2588385))

(declare-fun m!2588387 () Bool)

(assert (=> b!2143652 m!2588387))

(declare-fun m!2588389 () Bool)

(assert (=> b!2143630 m!2588389))

(declare-fun m!2588391 () Bool)

(assert (=> b!2143630 m!2588391))

(declare-fun m!2588393 () Bool)

(assert (=> setNonEmpty!16590 m!2588393))

(declare-fun m!2588395 () Bool)

(assert (=> b!2143625 m!2588395))

(assert (=> b!2143625 m!2588383))

(declare-fun m!2588397 () Bool)

(assert (=> b!2143647 m!2588397))

(declare-fun m!2588399 () Bool)

(assert (=> mapNonEmpty!13281 m!2588399))

(declare-fun m!2588401 () Bool)

(assert (=> b!2143644 m!2588401))

(declare-fun m!2588403 () Bool)

(assert (=> b!2143631 m!2588403))

(declare-fun m!2588405 () Bool)

(assert (=> b!2143631 m!2588405))

(declare-fun m!2588407 () Bool)

(assert (=> b!2143641 m!2588407))

(declare-fun m!2588409 () Bool)

(assert (=> setNonEmpty!16591 m!2588409))

(declare-fun m!2588411 () Bool)

(assert (=> b!2143660 m!2588411))

(assert (=> b!2143635 m!2588383))

(declare-fun m!2588413 () Bool)

(assert (=> mapNonEmpty!13280 m!2588413))

(declare-fun m!2588415 () Bool)

(assert (=> b!2143636 m!2588415))

(declare-fun m!2588417 () Bool)

(assert (=> start!208056 m!2588417))

(declare-fun m!2588419 () Bool)

(assert (=> start!208056 m!2588419))

(declare-fun m!2588421 () Bool)

(assert (=> start!208056 m!2588421))

(declare-fun m!2588423 () Bool)

(assert (=> start!208056 m!2588423))

(declare-fun m!2588425 () Bool)

(assert (=> b!2143650 m!2588425))

(declare-fun m!2588427 () Bool)

(assert (=> b!2143648 m!2588427))

(declare-fun m!2588429 () Bool)

(assert (=> b!2143643 m!2588429))

(declare-fun m!2588431 () Bool)

(assert (=> b!2143629 m!2588431))

(declare-fun m!2588433 () Bool)

(assert (=> b!2143627 m!2588433))

(check-sat (not b_next!63829) b_and!172715 (not b_next!63837) (not setNonEmpty!16590) (not setNonEmpty!16591) (not b!2143643) (not b_next!63831) b_and!172707 (not mapNonEmpty!13280) b_and!172705 b_and!172713 (not b_next!63839) (not start!208056) (not mapNonEmpty!13281) (not b!2143642) (not b!2143629) b_and!172709 (not b!2143652) (not b!2143660) b_and!172711 (not b!2143644) (not b!2143640) (not b!2143664) (not b!2143631) (not b!2143647) (not b!2143627) (not b!2143658) (not b!2143625) (not b!2143636) (not b!2143657) (not mapNonEmpty!13279) (not b_next!63835) (not b!2143659) (not b!2143648) (not b!2143650) (not b!2143633) (not b!2143641) (not b!2143639) (not b!2143635) (not b_next!63833) (not b!2143655) (not b!2143630))
(check-sat (not b_next!63829) (not b_next!63839) b_and!172715 (not b_next!63837) b_and!172709 b_and!172711 (not b_next!63831) (not b_next!63835) (not b_next!63833) b_and!172707 b_and!172705 b_and!172713)
