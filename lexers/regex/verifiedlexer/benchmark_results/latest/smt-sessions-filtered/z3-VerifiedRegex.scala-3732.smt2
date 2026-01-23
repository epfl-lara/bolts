; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209246 () Bool)

(assert start!209246)

(declare-fun b!2156950 () Bool)

(declare-fun b_free!63717 () Bool)

(declare-fun b_next!64421 () Bool)

(assert (=> b!2156950 (= b_free!63717 (not b_next!64421))))

(declare-fun tp!671850 () Bool)

(declare-fun b_and!173333 () Bool)

(assert (=> b!2156950 (= tp!671850 b_and!173333)))

(declare-fun b!2156940 () Bool)

(declare-fun b_free!63719 () Bool)

(declare-fun b_next!64423 () Bool)

(assert (=> b!2156940 (= b_free!63719 (not b_next!64423))))

(declare-fun tp!671854 () Bool)

(declare-fun b_and!173335 () Bool)

(assert (=> b!2156940 (= tp!671854 b_and!173335)))

(declare-fun b!2156941 () Bool)

(assert (=> b!2156941 true))

(declare-fun bs!445901 () Bool)

(declare-fun b!2156949 () Bool)

(assert (= bs!445901 (and b!2156949 b!2156941)))

(declare-fun lambda!81404 () Int)

(declare-fun lambda!81403 () Int)

(assert (=> bs!445901 (not (= lambda!81404 lambda!81403))))

(assert (=> b!2156949 true))

(declare-fun b!2156938 () Bool)

(declare-fun e!1379825 () Bool)

(declare-datatypes ((C!12008 0))(
  ( (C!12009 (val!6990 Int)) )
))
(declare-datatypes ((Regex!5931 0))(
  ( (ElementMatch!5931 (c!341585 C!12008)) (Concat!10233 (regOne!12374 Regex!5931) (regTwo!12374 Regex!5931)) (EmptyExpr!5931) (Star!5931 (reg!6260 Regex!5931)) (EmptyLang!5931) (Union!5931 (regOne!12375 Regex!5931) (regTwo!12375 Regex!5931)) )
))
(declare-datatypes ((List!24996 0))(
  ( (Nil!24912) (Cons!24912 (h!30313 Regex!5931) (t!197544 List!24996)) )
))
(declare-datatypes ((List!24997 0))(
  ( (Nil!24913) (Cons!24913 (h!30314 C!12008) (t!197545 List!24997)) )
))
(declare-datatypes ((IArray!16139 0))(
  ( (IArray!16140 (innerList!8127 List!24997)) )
))
(declare-datatypes ((Conc!8067 0))(
  ( (Node!8067 (left!19175 Conc!8067) (right!19505 Conc!8067) (csize!16364 Int) (cheight!8278 Int)) (Leaf!11800 (xs!11009 IArray!16139) (csize!16365 Int)) (Empty!8067) )
))
(declare-datatypes ((Context!3002 0))(
  ( (Context!3003 (exprs!2001 List!24996)) )
))
(declare-datatypes ((BalanceConc!15896 0))(
  ( (BalanceConc!15897 (c!341586 Conc!8067)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!390 0))(
  ( (StackFrame!391 (z!6007 (InoxSet Context!3002)) (from!2848 Int) (lastNullablePos!535 Int) (res!929683 Int) (totalInput!3373 BalanceConc!15896)) )
))
(declare-datatypes ((List!24998 0))(
  ( (Nil!24914) (Cons!24914 (h!30315 StackFrame!390) (t!197546 List!24998)) )
))
(declare-fun stack!12 () List!24998)

(declare-fun size!19466 (List!24998) Int)

(assert (=> b!2156938 (= e!1379825 (>= (size!19466 (t!197546 stack!12)) (size!19466 stack!12)))))

(declare-datatypes ((tuple3!3746 0))(
  ( (tuple3!3747 (_1!14646 (InoxSet Context!3002)) (_2!14646 Int) (_3!2343 Int)) )
))
(declare-datatypes ((tuple2!24606 0))(
  ( (tuple2!24607 (_1!14647 tuple3!3746) (_2!14647 Int)) )
))
(declare-datatypes ((List!24999 0))(
  ( (Nil!24915) (Cons!24915 (h!30316 tuple2!24606) (t!197547 List!24999)) )
))
(declare-datatypes ((array!9999 0))(
  ( (array!10000 (arr!4460 (Array (_ BitVec 32) (_ BitVec 64))) (size!19467 (_ BitVec 32))) )
))
(declare-datatypes ((array!10001 0))(
  ( (array!10002 (arr!4461 (Array (_ BitVec 32) List!24999)) (size!19468 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5864 0))(
  ( (LongMapFixedSize!5865 (defaultEntry!3297 Int) (mask!7213 (_ BitVec 32)) (extraKeys!3180 (_ BitVec 32)) (zeroValue!3190 List!24999) (minValue!3190 List!24999) (_size!5915 (_ BitVec 32)) (_keys!3229 array!9999) (_values!3212 array!10001) (_vacant!2993 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11553 0))(
  ( (Cell!11554 (v!29327 LongMapFixedSize!5864)) )
))
(declare-datatypes ((Hashable!2846 0))(
  ( (HashableExt!2845 (__x!16972 Int)) )
))
(declare-datatypes ((MutLongMap!2932 0))(
  ( (LongMap!2932 (underlying!6059 Cell!11553)) (MutLongMapExt!2931 (__x!16973 Int)) )
))
(declare-datatypes ((Cell!11555 0))(
  ( (Cell!11556 (v!29328 MutLongMap!2932)) )
))
(declare-datatypes ((MutableMap!2846 0))(
  ( (MutableMapExt!2845 (__x!16974 Int)) (HashMap!2846 (underlying!6060 Cell!11555) (hashF!4769 Hashable!2846) (_size!5916 (_ BitVec 32)) (defaultValue!3008 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1050 0))(
  ( (CacheFurthestNullable!1051 (cache!3227 MutableMap!2846) (totalInput!3374 BalanceConc!15896)) )
))
(declare-datatypes ((Unit!37969 0))(
  ( (Unit!37970) )
))
(declare-datatypes ((tuple2!24608 0))(
  ( (tuple2!24609 (_1!14648 Unit!37969) (_2!14648 CacheFurthestNullable!1050)) )
))
(declare-fun lt!801651 () tuple2!24608)

(declare-fun e!1379815 () tuple2!24608)

(assert (=> b!2156938 (= lt!801651 e!1379815)))

(declare-fun c!341584 () Bool)

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2156938 (= c!341584 (and (> totalInputSize!324 1048576) (not (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun tp!671849 () Bool)

(declare-fun e!1379821 () Bool)

(declare-fun e!1379818 () Bool)

(declare-fun b!2156939 () Bool)

(declare-fun inv!32951 (StackFrame!390) Bool)

(assert (=> b!2156939 (= e!1379821 (and (inv!32951 (h!30315 stack!12)) e!1379818 tp!671849))))

(declare-fun mapIsEmpty!13850 () Bool)

(declare-fun mapRes!13850 () Bool)

(assert (=> mapIsEmpty!13850 mapRes!13850))

(declare-fun e!1379812 () Bool)

(declare-fun e!1379822 () Bool)

(assert (=> b!2156940 (= e!1379812 (and e!1379822 tp!671854))))

(declare-fun setRes!17734 () Bool)

(declare-fun tp!671855 () Bool)

(declare-fun setElem!17734 () Context!3002)

(declare-fun e!1379817 () Bool)

(declare-fun setNonEmpty!17734 () Bool)

(declare-fun inv!32952 (Context!3002) Bool)

(assert (=> setNonEmpty!17734 (= setRes!17734 (and tp!671855 (inv!32952 setElem!17734) e!1379817))))

(declare-fun setRest!17734 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17734 (= (z!6007 (h!30315 stack!12)) ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17734 true) setRest!17734))))

(declare-fun res!929682 () Bool)

(assert (=> b!2156941 (=> (not res!929682) (not e!1379825))))

(declare-fun forall!5119 (List!24998 Int) Bool)

(assert (=> b!2156941 (= res!929682 (forall!5119 stack!12 lambda!81403))))

(declare-fun b!2156942 () Bool)

(declare-fun res!929680 () Bool)

(assert (=> b!2156942 (=> (not res!929680) (not e!1379825))))

(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1050)

(declare-fun totalInput!880 () BalanceConc!15896)

(assert (=> b!2156942 (= res!929680 (= (totalInput!3374 cacheFurthestNullable!118) totalInput!880))))

(declare-fun b!2156944 () Bool)

(declare-fun e!1379811 () Bool)

(declare-fun e!1379814 () Bool)

(assert (=> b!2156944 (= e!1379811 e!1379814)))

(declare-fun b!2156945 () Bool)

(declare-fun res!17610 () Int)

(declare-fun update!97 (CacheFurthestNullable!1050 (InoxSet Context!3002) Int Int Int BalanceConc!15896) tuple2!24608)

(assert (=> b!2156945 (= e!1379815 (update!97 cacheFurthestNullable!118 (z!6007 (h!30315 stack!12)) (from!2848 (h!30315 stack!12)) (lastNullablePos!535 (h!30315 stack!12)) res!17610 totalInput!880))))

(declare-fun lt!801650 () Unit!37969)

(declare-fun lemmaInvariant!407 (CacheFurthestNullable!1050) Unit!37969)

(assert (=> b!2156945 (= lt!801650 (lemmaInvariant!407 cacheFurthestNullable!118))))

(declare-fun e!1379820 () Bool)

(declare-fun b!2156946 () Bool)

(declare-fun inv!32953 (BalanceConc!15896) Bool)

(assert (=> b!2156946 (= e!1379818 (and setRes!17734 (inv!32953 (totalInput!3373 (h!30315 stack!12))) e!1379820))))

(declare-fun condSetEmpty!17734 () Bool)

(assert (=> b!2156946 (= condSetEmpty!17734 (= (z!6007 (h!30315 stack!12)) ((as const (Array Context!3002 Bool)) false)))))

(declare-fun b!2156947 () Bool)

(declare-fun tp!671857 () Bool)

(declare-fun inv!32954 (Conc!8067) Bool)

(assert (=> b!2156947 (= e!1379820 (and (inv!32954 (c!341586 (totalInput!3373 (h!30315 stack!12)))) tp!671857))))

(declare-fun b!2156948 () Bool)

(declare-fun e!1379810 () Bool)

(declare-fun tp!671852 () Bool)

(assert (=> b!2156948 (= e!1379810 (and (inv!32954 (c!341586 totalInput!880)) tp!671852))))

(declare-fun mapNonEmpty!13850 () Bool)

(declare-fun tp!671856 () Bool)

(declare-fun tp!671853 () Bool)

(assert (=> mapNonEmpty!13850 (= mapRes!13850 (and tp!671856 tp!671853))))

(declare-fun mapValue!13850 () List!24999)

(declare-fun mapKey!13850 () (_ BitVec 32))

(declare-fun mapRest!13850 () (Array (_ BitVec 32) List!24999))

(assert (=> mapNonEmpty!13850 (= (arr!4461 (_values!3212 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))) (store mapRest!13850 mapKey!13850 mapValue!13850))))

(declare-fun res!929678 () Bool)

(assert (=> b!2156949 (=> (not res!929678) (not e!1379825))))

(assert (=> b!2156949 (= res!929678 (forall!5119 stack!12 lambda!81404))))

(declare-fun setIsEmpty!17734 () Bool)

(assert (=> setIsEmpty!17734 setRes!17734))

(declare-fun tp!671851 () Bool)

(declare-fun tp!671860 () Bool)

(declare-fun e!1379813 () Bool)

(declare-fun array_inv!3200 (array!9999) Bool)

(declare-fun array_inv!3201 (array!10001) Bool)

(assert (=> b!2156950 (= e!1379814 (and tp!671850 tp!671860 tp!671851 (array_inv!3200 (_keys!3229 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))) (array_inv!3201 (_values!3212 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))) e!1379813))))

(declare-fun b!2156951 () Bool)

(declare-fun Unit!37971 () Unit!37969)

(assert (=> b!2156951 (= e!1379815 (tuple2!24609 Unit!37971 cacheFurthestNullable!118))))

(declare-fun res!929679 () Bool)

(assert (=> start!209246 (=> (not res!929679) (not e!1379825))))

(declare-fun valid!2263 (CacheFurthestNullable!1050) Bool)

(assert (=> start!209246 (= res!929679 (valid!2263 cacheFurthestNullable!118))))

(assert (=> start!209246 e!1379825))

(declare-fun e!1379824 () Bool)

(declare-fun inv!32955 (CacheFurthestNullable!1050) Bool)

(assert (=> start!209246 (and (inv!32955 cacheFurthestNullable!118) e!1379824)))

(assert (=> start!209246 true))

(assert (=> start!209246 (and (inv!32953 totalInput!880) e!1379810)))

(assert (=> start!209246 e!1379821))

(declare-fun b!2156943 () Bool)

(declare-fun e!1379816 () Bool)

(declare-fun tp!671861 () Bool)

(assert (=> b!2156943 (= e!1379816 (and (inv!32954 (c!341586 (totalInput!3374 cacheFurthestNullable!118))) tp!671861))))

(declare-fun b!2156952 () Bool)

(declare-fun e!1379819 () Bool)

(declare-fun lt!801652 () MutLongMap!2932)

(get-info :version)

(assert (=> b!2156952 (= e!1379822 (and e!1379819 ((_ is LongMap!2932) lt!801652)))))

(assert (=> b!2156952 (= lt!801652 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))

(declare-fun b!2156953 () Bool)

(assert (=> b!2156953 (= e!1379819 e!1379811)))

(declare-fun b!2156954 () Bool)

(assert (=> b!2156954 (= e!1379824 (and e!1379812 (inv!32953 (totalInput!3374 cacheFurthestNullable!118)) e!1379816))))

(declare-fun b!2156955 () Bool)

(declare-fun tp!671858 () Bool)

(assert (=> b!2156955 (= e!1379813 (and tp!671858 mapRes!13850))))

(declare-fun condMapEmpty!13850 () Bool)

(declare-fun mapDefault!13850 () List!24999)

(assert (=> b!2156955 (= condMapEmpty!13850 (= (arr!4461 (_values!3212 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24999)) mapDefault!13850)))))

(declare-fun b!2156956 () Bool)

(declare-fun tp!671859 () Bool)

(assert (=> b!2156956 (= e!1379817 tp!671859)))

(declare-fun b!2156957 () Bool)

(declare-fun res!929681 () Bool)

(assert (=> b!2156957 (=> (not res!929681) (not e!1379825))))

(assert (=> b!2156957 (= res!929681 (not ((_ is Nil!24914) stack!12)))))

(assert (= (and start!209246 res!929679) b!2156942))

(assert (= (and b!2156942 res!929680) b!2156941))

(assert (= (and b!2156941 res!929682) b!2156949))

(assert (= (and b!2156949 res!929678) b!2156957))

(assert (= (and b!2156957 res!929681) b!2156938))

(assert (= (and b!2156938 c!341584) b!2156951))

(assert (= (and b!2156938 (not c!341584)) b!2156945))

(assert (= (and b!2156955 condMapEmpty!13850) mapIsEmpty!13850))

(assert (= (and b!2156955 (not condMapEmpty!13850)) mapNonEmpty!13850))

(assert (= b!2156950 b!2156955))

(assert (= b!2156944 b!2156950))

(assert (= b!2156953 b!2156944))

(assert (= (and b!2156952 ((_ is LongMap!2932) (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))) b!2156953))

(assert (= b!2156940 b!2156952))

(assert (= (and b!2156954 ((_ is HashMap!2846) (cache!3227 cacheFurthestNullable!118))) b!2156940))

(assert (= b!2156954 b!2156943))

(assert (= start!209246 b!2156954))

(assert (= start!209246 b!2156948))

(assert (= (and b!2156946 condSetEmpty!17734) setIsEmpty!17734))

(assert (= (and b!2156946 (not condSetEmpty!17734)) setNonEmpty!17734))

(assert (= setNonEmpty!17734 b!2156956))

(assert (= b!2156946 b!2156947))

(assert (= b!2156939 b!2156946))

(assert (= (and start!209246 ((_ is Cons!24914) stack!12)) b!2156939))

(declare-fun m!2597361 () Bool)

(assert (=> b!2156948 m!2597361))

(declare-fun m!2597363 () Bool)

(assert (=> mapNonEmpty!13850 m!2597363))

(declare-fun m!2597365 () Bool)

(assert (=> b!2156938 m!2597365))

(declare-fun m!2597367 () Bool)

(assert (=> b!2156938 m!2597367))

(declare-fun m!2597369 () Bool)

(assert (=> b!2156945 m!2597369))

(declare-fun m!2597371 () Bool)

(assert (=> b!2156945 m!2597371))

(declare-fun m!2597373 () Bool)

(assert (=> b!2156939 m!2597373))

(declare-fun m!2597375 () Bool)

(assert (=> b!2156949 m!2597375))

(declare-fun m!2597377 () Bool)

(assert (=> setNonEmpty!17734 m!2597377))

(declare-fun m!2597379 () Bool)

(assert (=> start!209246 m!2597379))

(declare-fun m!2597381 () Bool)

(assert (=> start!209246 m!2597381))

(declare-fun m!2597383 () Bool)

(assert (=> start!209246 m!2597383))

(declare-fun m!2597385 () Bool)

(assert (=> b!2156946 m!2597385))

(declare-fun m!2597387 () Bool)

(assert (=> b!2156950 m!2597387))

(declare-fun m!2597389 () Bool)

(assert (=> b!2156950 m!2597389))

(declare-fun m!2597391 () Bool)

(assert (=> b!2156943 m!2597391))

(declare-fun m!2597393 () Bool)

(assert (=> b!2156941 m!2597393))

(declare-fun m!2597395 () Bool)

(assert (=> b!2156954 m!2597395))

(declare-fun m!2597397 () Bool)

(assert (=> b!2156947 m!2597397))

(check-sat (not b!2156956) (not b!2156948) (not b!2156947) (not b!2156943) (not b!2156945) (not b_next!64421) b_and!173333 (not b!2156955) (not b!2156950) (not b!2156941) (not b_next!64423) (not start!209246) (not mapNonEmpty!13850) (not b!2156954) (not b!2156946) (not b!2156939) (not b!2156949) b_and!173335 (not b!2156938) (not setNonEmpty!17734))
(check-sat b_and!173335 b_and!173333 (not b_next!64423) (not b_next!64421))
(get-model)

(declare-fun d!646481 () Bool)

(declare-fun res!929688 () Bool)

(declare-fun e!1379830 () Bool)

(assert (=> d!646481 (=> res!929688 e!1379830)))

(assert (=> d!646481 (= res!929688 ((_ is Nil!24914) stack!12))))

(assert (=> d!646481 (= (forall!5119 stack!12 lambda!81403) e!1379830)))

(declare-fun b!2156966 () Bool)

(declare-fun e!1379831 () Bool)

(assert (=> b!2156966 (= e!1379830 e!1379831)))

(declare-fun res!929689 () Bool)

(assert (=> b!2156966 (=> (not res!929689) (not e!1379831))))

(declare-fun dynLambda!11418 (Int StackFrame!390) Bool)

(assert (=> b!2156966 (= res!929689 (dynLambda!11418 lambda!81403 (h!30315 stack!12)))))

(declare-fun b!2156967 () Bool)

(assert (=> b!2156967 (= e!1379831 (forall!5119 (t!197546 stack!12) lambda!81403))))

(assert (= (and d!646481 (not res!929688)) b!2156966))

(assert (= (and b!2156966 res!929689) b!2156967))

(declare-fun b_lambda!71005 () Bool)

(assert (=> (not b_lambda!71005) (not b!2156966)))

(declare-fun m!2597399 () Bool)

(assert (=> b!2156966 m!2597399))

(declare-fun m!2597401 () Bool)

(assert (=> b!2156967 m!2597401))

(assert (=> b!2156941 d!646481))

(declare-fun d!646483 () Bool)

(assert (=> d!646483 (= (array_inv!3200 (_keys!3229 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))) (bvsge (size!19467 (_keys!3229 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2156950 d!646483))

(declare-fun d!646485 () Bool)

(assert (=> d!646485 (= (array_inv!3201 (_values!3212 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))) (bvsge (size!19468 (_values!3212 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2156950 d!646485))

(declare-fun d!646487 () Bool)

(declare-fun validCacheMapFurthestNullable!175 (MutableMap!2846 BalanceConc!15896) Bool)

(assert (=> d!646487 (= (valid!2263 cacheFurthestNullable!118) (validCacheMapFurthestNullable!175 (cache!3227 cacheFurthestNullable!118) (totalInput!3374 cacheFurthestNullable!118)))))

(declare-fun bs!445902 () Bool)

(assert (= bs!445902 d!646487))

(declare-fun m!2597403 () Bool)

(assert (=> bs!445902 m!2597403))

(assert (=> start!209246 d!646487))

(declare-fun d!646489 () Bool)

(declare-fun res!929692 () Bool)

(declare-fun e!1379834 () Bool)

(assert (=> d!646489 (=> (not res!929692) (not e!1379834))))

(assert (=> d!646489 (= res!929692 ((_ is HashMap!2846) (cache!3227 cacheFurthestNullable!118)))))

(assert (=> d!646489 (= (inv!32955 cacheFurthestNullable!118) e!1379834)))

(declare-fun b!2156970 () Bool)

(assert (=> b!2156970 (= e!1379834 (validCacheMapFurthestNullable!175 (cache!3227 cacheFurthestNullable!118) (totalInput!3374 cacheFurthestNullable!118)))))

(assert (= (and d!646489 res!929692) b!2156970))

(assert (=> b!2156970 m!2597403))

(assert (=> start!209246 d!646489))

(declare-fun d!646491 () Bool)

(declare-fun isBalanced!2504 (Conc!8067) Bool)

(assert (=> d!646491 (= (inv!32953 totalInput!880) (isBalanced!2504 (c!341586 totalInput!880)))))

(declare-fun bs!445903 () Bool)

(assert (= bs!445903 d!646491))

(declare-fun m!2597405 () Bool)

(assert (=> bs!445903 m!2597405))

(assert (=> start!209246 d!646491))

(declare-fun d!646493 () Bool)

(declare-fun lambda!81407 () Int)

(declare-fun forall!5120 (List!24996 Int) Bool)

(assert (=> d!646493 (= (inv!32952 setElem!17734) (forall!5120 (exprs!2001 setElem!17734) lambda!81407))))

(declare-fun bs!445904 () Bool)

(assert (= bs!445904 d!646493))

(declare-fun m!2597407 () Bool)

(assert (=> bs!445904 m!2597407))

(assert (=> setNonEmpty!17734 d!646493))

(declare-fun d!646495 () Bool)

(declare-fun res!929693 () Bool)

(declare-fun e!1379835 () Bool)

(assert (=> d!646495 (=> res!929693 e!1379835)))

(assert (=> d!646495 (= res!929693 ((_ is Nil!24914) stack!12))))

(assert (=> d!646495 (= (forall!5119 stack!12 lambda!81404) e!1379835)))

(declare-fun b!2156971 () Bool)

(declare-fun e!1379836 () Bool)

(assert (=> b!2156971 (= e!1379835 e!1379836)))

(declare-fun res!929694 () Bool)

(assert (=> b!2156971 (=> (not res!929694) (not e!1379836))))

(assert (=> b!2156971 (= res!929694 (dynLambda!11418 lambda!81404 (h!30315 stack!12)))))

(declare-fun b!2156972 () Bool)

(assert (=> b!2156972 (= e!1379836 (forall!5119 (t!197546 stack!12) lambda!81404))))

(assert (= (and d!646495 (not res!929693)) b!2156971))

(assert (= (and b!2156971 res!929694) b!2156972))

(declare-fun b_lambda!71007 () Bool)

(assert (=> (not b_lambda!71007) (not b!2156971)))

(declare-fun m!2597409 () Bool)

(assert (=> b!2156971 m!2597409))

(declare-fun m!2597411 () Bool)

(assert (=> b!2156972 m!2597411))

(assert (=> b!2156949 d!646495))

(declare-fun d!646497 () Bool)

(declare-fun lt!801655 () Int)

(assert (=> d!646497 (>= lt!801655 0)))

(declare-fun e!1379839 () Int)

(assert (=> d!646497 (= lt!801655 e!1379839)))

(declare-fun c!341589 () Bool)

(assert (=> d!646497 (= c!341589 ((_ is Nil!24914) (t!197546 stack!12)))))

(assert (=> d!646497 (= (size!19466 (t!197546 stack!12)) lt!801655)))

(declare-fun b!2156977 () Bool)

(assert (=> b!2156977 (= e!1379839 0)))

(declare-fun b!2156978 () Bool)

(assert (=> b!2156978 (= e!1379839 (+ 1 (size!19466 (t!197546 (t!197546 stack!12)))))))

(assert (= (and d!646497 c!341589) b!2156977))

(assert (= (and d!646497 (not c!341589)) b!2156978))

(declare-fun m!2597413 () Bool)

(assert (=> b!2156978 m!2597413))

(assert (=> b!2156938 d!646497))

(declare-fun d!646499 () Bool)

(declare-fun lt!801656 () Int)

(assert (=> d!646499 (>= lt!801656 0)))

(declare-fun e!1379840 () Int)

(assert (=> d!646499 (= lt!801656 e!1379840)))

(declare-fun c!341590 () Bool)

(assert (=> d!646499 (= c!341590 ((_ is Nil!24914) stack!12))))

(assert (=> d!646499 (= (size!19466 stack!12) lt!801656)))

(declare-fun b!2156979 () Bool)

(assert (=> b!2156979 (= e!1379840 0)))

(declare-fun b!2156980 () Bool)

(assert (=> b!2156980 (= e!1379840 (+ 1 (size!19466 (t!197546 stack!12))))))

(assert (= (and d!646499 c!341590) b!2156979))

(assert (= (and d!646499 (not c!341590)) b!2156980))

(assert (=> b!2156980 m!2597365))

(assert (=> b!2156938 d!646499))

(declare-fun d!646501 () Bool)

(assert (=> d!646501 (= (inv!32953 (totalInput!3373 (h!30315 stack!12))) (isBalanced!2504 (c!341586 (totalInput!3373 (h!30315 stack!12)))))))

(declare-fun bs!445905 () Bool)

(assert (= bs!445905 d!646501))

(declare-fun m!2597415 () Bool)

(assert (=> bs!445905 m!2597415))

(assert (=> b!2156946 d!646501))

(declare-fun b!2156993 () Bool)

(declare-fun res!929711 () Bool)

(declare-fun e!1379846 () Bool)

(assert (=> b!2156993 (=> (not res!929711) (not e!1379846))))

(assert (=> b!2156993 (= res!929711 (and (>= (lastNullablePos!535 (h!30315 stack!12)) (- 1)) (< (lastNullablePos!535 (h!30315 stack!12)) (from!2848 (h!30315 stack!12)))))))

(declare-fun b!2156994 () Bool)

(declare-fun e!1379845 () Bool)

(assert (=> b!2156994 (= e!1379845 (= (lastNullablePos!535 (h!30315 stack!12)) (- (from!2848 (h!30315 stack!12)) 1)))))

(declare-fun b!2156995 () Bool)

(declare-fun res!929708 () Bool)

(assert (=> b!2156995 (=> (not res!929708) (not e!1379846))))

(declare-fun size!19469 (BalanceConc!15896) Int)

(assert (=> b!2156995 (= res!929708 (= (size!19469 (totalInput!3373 (h!30315 stack!12))) (size!19469 (totalInput!3373 (h!30315 stack!12)))))))

(declare-fun b!2156996 () Bool)

(declare-fun res!929712 () Bool)

(assert (=> b!2156996 (=> (not res!929712) (not e!1379846))))

(assert (=> b!2156996 (= res!929712 e!1379845)))

(declare-fun res!929707 () Bool)

(assert (=> b!2156996 (=> res!929707 e!1379845)))

(declare-fun nullableZipper!226 ((InoxSet Context!3002)) Bool)

(assert (=> b!2156996 (= res!929707 (not (nullableZipper!226 (z!6007 (h!30315 stack!12)))))))

(declare-fun b!2156997 () Bool)

(declare-fun res!929710 () Bool)

(assert (=> b!2156997 (=> (not res!929710) (not e!1379846))))

(assert (=> b!2156997 (= res!929710 (<= (from!2848 (h!30315 stack!12)) (size!19469 (totalInput!3373 (h!30315 stack!12)))))))

(declare-fun b!2156998 () Bool)

(declare-fun furthestNullablePosition!138 ((InoxSet Context!3002) Int BalanceConc!15896 Int Int) Int)

(assert (=> b!2156998 (= e!1379846 (= (res!929683 (h!30315 stack!12)) (furthestNullablePosition!138 (z!6007 (h!30315 stack!12)) (from!2848 (h!30315 stack!12)) (totalInput!3373 (h!30315 stack!12)) (size!19469 (totalInput!3373 (h!30315 stack!12))) (lastNullablePos!535 (h!30315 stack!12)))))))

(declare-fun d!646503 () Bool)

(declare-fun res!929709 () Bool)

(assert (=> d!646503 (=> (not res!929709) (not e!1379846))))

(assert (=> d!646503 (= res!929709 (>= (from!2848 (h!30315 stack!12)) 0))))

(assert (=> d!646503 (= (inv!32951 (h!30315 stack!12)) e!1379846)))

(assert (= (and d!646503 res!929709) b!2156997))

(assert (= (and b!2156997 res!929710) b!2156995))

(assert (= (and b!2156995 res!929708) b!2156993))

(assert (= (and b!2156993 res!929711) b!2156996))

(assert (= (and b!2156996 (not res!929707)) b!2156994))

(assert (= (and b!2156996 res!929712) b!2156998))

(declare-fun m!2597417 () Bool)

(assert (=> b!2156995 m!2597417))

(declare-fun m!2597419 () Bool)

(assert (=> b!2156996 m!2597419))

(assert (=> b!2156997 m!2597417))

(assert (=> b!2156998 m!2597417))

(assert (=> b!2156998 m!2597417))

(declare-fun m!2597421 () Bool)

(assert (=> b!2156998 m!2597421))

(assert (=> b!2156939 d!646503))

(declare-fun d!646505 () Bool)

(declare-fun c!341593 () Bool)

(assert (=> d!646505 (= c!341593 ((_ is Node!8067) (c!341586 totalInput!880)))))

(declare-fun e!1379851 () Bool)

(assert (=> d!646505 (= (inv!32954 (c!341586 totalInput!880)) e!1379851)))

(declare-fun b!2157005 () Bool)

(declare-fun inv!32956 (Conc!8067) Bool)

(assert (=> b!2157005 (= e!1379851 (inv!32956 (c!341586 totalInput!880)))))

(declare-fun b!2157006 () Bool)

(declare-fun e!1379852 () Bool)

(assert (=> b!2157006 (= e!1379851 e!1379852)))

(declare-fun res!929715 () Bool)

(assert (=> b!2157006 (= res!929715 (not ((_ is Leaf!11800) (c!341586 totalInput!880))))))

(assert (=> b!2157006 (=> res!929715 e!1379852)))

(declare-fun b!2157007 () Bool)

(declare-fun inv!32957 (Conc!8067) Bool)

(assert (=> b!2157007 (= e!1379852 (inv!32957 (c!341586 totalInput!880)))))

(assert (= (and d!646505 c!341593) b!2157005))

(assert (= (and d!646505 (not c!341593)) b!2157006))

(assert (= (and b!2157006 (not res!929715)) b!2157007))

(declare-fun m!2597423 () Bool)

(assert (=> b!2157005 m!2597423))

(declare-fun m!2597425 () Bool)

(assert (=> b!2157007 m!2597425))

(assert (=> b!2156948 d!646505))

(declare-fun d!646507 () Bool)

(declare-fun c!341594 () Bool)

(assert (=> d!646507 (= c!341594 ((_ is Node!8067) (c!341586 (totalInput!3373 (h!30315 stack!12)))))))

(declare-fun e!1379853 () Bool)

(assert (=> d!646507 (= (inv!32954 (c!341586 (totalInput!3373 (h!30315 stack!12)))) e!1379853)))

(declare-fun b!2157008 () Bool)

(assert (=> b!2157008 (= e!1379853 (inv!32956 (c!341586 (totalInput!3373 (h!30315 stack!12)))))))

(declare-fun b!2157009 () Bool)

(declare-fun e!1379854 () Bool)

(assert (=> b!2157009 (= e!1379853 e!1379854)))

(declare-fun res!929716 () Bool)

(assert (=> b!2157009 (= res!929716 (not ((_ is Leaf!11800) (c!341586 (totalInput!3373 (h!30315 stack!12))))))))

(assert (=> b!2157009 (=> res!929716 e!1379854)))

(declare-fun b!2157010 () Bool)

(assert (=> b!2157010 (= e!1379854 (inv!32957 (c!341586 (totalInput!3373 (h!30315 stack!12)))))))

(assert (= (and d!646507 c!341594) b!2157008))

(assert (= (and d!646507 (not c!341594)) b!2157009))

(assert (= (and b!2157009 (not res!929716)) b!2157010))

(declare-fun m!2597427 () Bool)

(assert (=> b!2157008 m!2597427))

(declare-fun m!2597429 () Bool)

(assert (=> b!2157010 m!2597429))

(assert (=> b!2156947 d!646507))

(declare-fun d!646509 () Bool)

(declare-fun c!341595 () Bool)

(assert (=> d!646509 (= c!341595 ((_ is Node!8067) (c!341586 (totalInput!3374 cacheFurthestNullable!118))))))

(declare-fun e!1379855 () Bool)

(assert (=> d!646509 (= (inv!32954 (c!341586 (totalInput!3374 cacheFurthestNullable!118))) e!1379855)))

(declare-fun b!2157011 () Bool)

(assert (=> b!2157011 (= e!1379855 (inv!32956 (c!341586 (totalInput!3374 cacheFurthestNullable!118))))))

(declare-fun b!2157012 () Bool)

(declare-fun e!1379856 () Bool)

(assert (=> b!2157012 (= e!1379855 e!1379856)))

(declare-fun res!929717 () Bool)

(assert (=> b!2157012 (= res!929717 (not ((_ is Leaf!11800) (c!341586 (totalInput!3374 cacheFurthestNullable!118)))))))

(assert (=> b!2157012 (=> res!929717 e!1379856)))

(declare-fun b!2157013 () Bool)

(assert (=> b!2157013 (= e!1379856 (inv!32957 (c!341586 (totalInput!3374 cacheFurthestNullable!118))))))

(assert (= (and d!646509 c!341595) b!2157011))

(assert (= (and d!646509 (not c!341595)) b!2157012))

(assert (= (and b!2157012 (not res!929717)) b!2157013))

(declare-fun m!2597431 () Bool)

(assert (=> b!2157011 m!2597431))

(declare-fun m!2597433 () Bool)

(assert (=> b!2157013 m!2597433))

(assert (=> b!2156943 d!646509))

(declare-fun d!646511 () Bool)

(declare-fun e!1379859 () Bool)

(assert (=> d!646511 e!1379859))

(declare-fun res!929721 () Bool)

(assert (=> d!646511 (=> (not res!929721) (not e!1379859))))

(declare-fun lt!801659 () tuple2!24608)

(assert (=> d!646511 (= res!929721 (validCacheMapFurthestNullable!175 (cache!3227 (_2!14648 lt!801659)) (totalInput!3374 (_2!14648 lt!801659))))))

(declare-fun choose!12712 (CacheFurthestNullable!1050 (InoxSet Context!3002) Int Int Int BalanceConc!15896) tuple2!24608)

(assert (=> d!646511 (= lt!801659 (choose!12712 cacheFurthestNullable!118 (z!6007 (h!30315 stack!12)) (from!2848 (h!30315 stack!12)) (lastNullablePos!535 (h!30315 stack!12)) res!17610 totalInput!880))))

(assert (=> d!646511 (= totalInput!880 (totalInput!3374 cacheFurthestNullable!118))))

(assert (=> d!646511 (= (update!97 cacheFurthestNullable!118 (z!6007 (h!30315 stack!12)) (from!2848 (h!30315 stack!12)) (lastNullablePos!535 (h!30315 stack!12)) res!17610 totalInput!880) lt!801659)))

(declare-fun b!2157016 () Bool)

(assert (=> b!2157016 (= e!1379859 (= (totalInput!3374 (_2!14648 lt!801659)) totalInput!880))))

(assert (= (and d!646511 res!929721) b!2157016))

(declare-fun m!2597435 () Bool)

(assert (=> d!646511 m!2597435))

(declare-fun m!2597437 () Bool)

(assert (=> d!646511 m!2597437))

(assert (=> b!2156945 d!646511))

(declare-fun d!646513 () Bool)

(assert (=> d!646513 (valid!2263 cacheFurthestNullable!118)))

(declare-fun Unit!37972 () Unit!37969)

(assert (=> d!646513 (= (lemmaInvariant!407 cacheFurthestNullable!118) Unit!37972)))

(declare-fun bs!445906 () Bool)

(assert (= bs!445906 d!646513))

(assert (=> bs!445906 m!2597379))

(assert (=> b!2156945 d!646513))

(declare-fun d!646515 () Bool)

(assert (=> d!646515 (= (inv!32953 (totalInput!3374 cacheFurthestNullable!118)) (isBalanced!2504 (c!341586 (totalInput!3374 cacheFurthestNullable!118))))))

(declare-fun bs!445907 () Bool)

(assert (= bs!445907 d!646515))

(declare-fun m!2597439 () Bool)

(assert (=> bs!445907 m!2597439))

(assert (=> b!2156954 d!646515))

(declare-fun e!1379864 () Bool)

(assert (=> b!2156955 (= tp!671858 e!1379864)))

(declare-fun e!1379865 () Bool)

(declare-fun setElem!17737 () Context!3002)

(declare-fun setNonEmpty!17737 () Bool)

(declare-fun tp!671870 () Bool)

(declare-fun setRes!17737 () Bool)

(assert (=> setNonEmpty!17737 (= setRes!17737 (and tp!671870 (inv!32952 setElem!17737) e!1379865))))

(declare-fun setRest!17737 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17737 (= (_1!14646 (_1!14647 (h!30316 mapDefault!13850))) ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17737 true) setRest!17737))))

(declare-fun b!2157023 () Bool)

(declare-fun tp!671869 () Bool)

(assert (=> b!2157023 (= e!1379864 (and setRes!17737 tp!671869))))

(declare-fun condSetEmpty!17737 () Bool)

(assert (=> b!2157023 (= condSetEmpty!17737 (= (_1!14646 (_1!14647 (h!30316 mapDefault!13850))) ((as const (Array Context!3002 Bool)) false)))))

(declare-fun b!2157024 () Bool)

(declare-fun tp!671868 () Bool)

(assert (=> b!2157024 (= e!1379865 tp!671868)))

(declare-fun setIsEmpty!17737 () Bool)

(assert (=> setIsEmpty!17737 setRes!17737))

(assert (= (and b!2157023 condSetEmpty!17737) setIsEmpty!17737))

(assert (= (and b!2157023 (not condSetEmpty!17737)) setNonEmpty!17737))

(assert (= setNonEmpty!17737 b!2157024))

(assert (= (and b!2156955 ((_ is Cons!24915) mapDefault!13850)) b!2157023))

(declare-fun m!2597441 () Bool)

(assert (=> setNonEmpty!17737 m!2597441))

(declare-fun e!1379866 () Bool)

(assert (=> b!2156950 (= tp!671860 e!1379866)))

(declare-fun tp!671873 () Bool)

(declare-fun setRes!17738 () Bool)

(declare-fun setElem!17738 () Context!3002)

(declare-fun e!1379867 () Bool)

(declare-fun setNonEmpty!17738 () Bool)

(assert (=> setNonEmpty!17738 (= setRes!17738 (and tp!671873 (inv!32952 setElem!17738) e!1379867))))

(declare-fun setRest!17738 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17738 (= (_1!14646 (_1!14647 (h!30316 (zeroValue!3190 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17738 true) setRest!17738))))

(declare-fun b!2157025 () Bool)

(declare-fun tp!671872 () Bool)

(assert (=> b!2157025 (= e!1379866 (and setRes!17738 tp!671872))))

(declare-fun condSetEmpty!17738 () Bool)

(assert (=> b!2157025 (= condSetEmpty!17738 (= (_1!14646 (_1!14647 (h!30316 (zeroValue!3190 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))))) ((as const (Array Context!3002 Bool)) false)))))

(declare-fun b!2157026 () Bool)

(declare-fun tp!671871 () Bool)

(assert (=> b!2157026 (= e!1379867 tp!671871)))

(declare-fun setIsEmpty!17738 () Bool)

(assert (=> setIsEmpty!17738 setRes!17738))

(assert (= (and b!2157025 condSetEmpty!17738) setIsEmpty!17738))

(assert (= (and b!2157025 (not condSetEmpty!17738)) setNonEmpty!17738))

(assert (= setNonEmpty!17738 b!2157026))

(assert (= (and b!2156950 ((_ is Cons!24915) (zeroValue!3190 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118)))))))) b!2157025))

(declare-fun m!2597443 () Bool)

(assert (=> setNonEmpty!17738 m!2597443))

(declare-fun e!1379868 () Bool)

(assert (=> b!2156950 (= tp!671851 e!1379868)))

(declare-fun setRes!17739 () Bool)

(declare-fun setNonEmpty!17739 () Bool)

(declare-fun setElem!17739 () Context!3002)

(declare-fun e!1379869 () Bool)

(declare-fun tp!671876 () Bool)

(assert (=> setNonEmpty!17739 (= setRes!17739 (and tp!671876 (inv!32952 setElem!17739) e!1379869))))

(declare-fun setRest!17739 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17739 (= (_1!14646 (_1!14647 (h!30316 (minValue!3190 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17739 true) setRest!17739))))

(declare-fun b!2157027 () Bool)

(declare-fun tp!671875 () Bool)

(assert (=> b!2157027 (= e!1379868 (and setRes!17739 tp!671875))))

(declare-fun condSetEmpty!17739 () Bool)

(assert (=> b!2157027 (= condSetEmpty!17739 (= (_1!14646 (_1!14647 (h!30316 (minValue!3190 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118))))))))) ((as const (Array Context!3002 Bool)) false)))))

(declare-fun b!2157028 () Bool)

(declare-fun tp!671874 () Bool)

(assert (=> b!2157028 (= e!1379869 tp!671874)))

(declare-fun setIsEmpty!17739 () Bool)

(assert (=> setIsEmpty!17739 setRes!17739))

(assert (= (and b!2157027 condSetEmpty!17739) setIsEmpty!17739))

(assert (= (and b!2157027 (not condSetEmpty!17739)) setNonEmpty!17739))

(assert (= setNonEmpty!17739 b!2157028))

(assert (= (and b!2156950 ((_ is Cons!24915) (minValue!3190 (v!29327 (underlying!6059 (v!29328 (underlying!6060 (cache!3227 cacheFurthestNullable!118)))))))) b!2157027))

(declare-fun m!2597445 () Bool)

(assert (=> setNonEmpty!17739 m!2597445))

(declare-fun e!1379878 () Bool)

(assert (=> b!2156939 (= tp!671849 e!1379878)))

(declare-fun e!1379881 () Bool)

(declare-fun b!2157039 () Bool)

(declare-fun tp!671888 () Bool)

(assert (=> b!2157039 (= e!1379878 (and (inv!32951 (h!30315 (t!197546 stack!12))) e!1379881 tp!671888))))

(declare-fun e!1379880 () Bool)

(declare-fun b!2157040 () Bool)

(declare-fun setRes!17742 () Bool)

(assert (=> b!2157040 (= e!1379881 (and setRes!17742 (inv!32953 (totalInput!3373 (h!30315 (t!197546 stack!12)))) e!1379880))))

(declare-fun condSetEmpty!17742 () Bool)

(assert (=> b!2157040 (= condSetEmpty!17742 (= (z!6007 (h!30315 (t!197546 stack!12))) ((as const (Array Context!3002 Bool)) false)))))

(declare-fun setIsEmpty!17742 () Bool)

(assert (=> setIsEmpty!17742 setRes!17742))

(declare-fun tp!671886 () Bool)

(declare-fun e!1379879 () Bool)

(declare-fun setElem!17742 () Context!3002)

(declare-fun setNonEmpty!17742 () Bool)

(assert (=> setNonEmpty!17742 (= setRes!17742 (and tp!671886 (inv!32952 setElem!17742) e!1379879))))

(declare-fun setRest!17742 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17742 (= (z!6007 (h!30315 (t!197546 stack!12))) ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17742 true) setRest!17742))))

(declare-fun b!2157041 () Bool)

(declare-fun tp!671885 () Bool)

(assert (=> b!2157041 (= e!1379880 (and (inv!32954 (c!341586 (totalInput!3373 (h!30315 (t!197546 stack!12))))) tp!671885))))

(declare-fun b!2157042 () Bool)

(declare-fun tp!671887 () Bool)

(assert (=> b!2157042 (= e!1379879 tp!671887)))

(assert (= (and b!2157040 condSetEmpty!17742) setIsEmpty!17742))

(assert (= (and b!2157040 (not condSetEmpty!17742)) setNonEmpty!17742))

(assert (= setNonEmpty!17742 b!2157042))

(assert (= b!2157040 b!2157041))

(assert (= b!2157039 b!2157040))

(assert (= (and b!2156939 ((_ is Cons!24914) (t!197546 stack!12))) b!2157039))

(declare-fun m!2597447 () Bool)

(assert (=> b!2157039 m!2597447))

(declare-fun m!2597449 () Bool)

(assert (=> b!2157040 m!2597449))

(declare-fun m!2597451 () Bool)

(assert (=> setNonEmpty!17742 m!2597451))

(declare-fun m!2597453 () Bool)

(assert (=> b!2157041 m!2597453))

(declare-fun tp!671897 () Bool)

(declare-fun e!1379887 () Bool)

(declare-fun tp!671895 () Bool)

(declare-fun b!2157051 () Bool)

(assert (=> b!2157051 (= e!1379887 (and (inv!32954 (left!19175 (c!341586 totalInput!880))) tp!671895 (inv!32954 (right!19505 (c!341586 totalInput!880))) tp!671897))))

(declare-fun b!2157053 () Bool)

(declare-fun e!1379886 () Bool)

(declare-fun tp!671896 () Bool)

(assert (=> b!2157053 (= e!1379886 tp!671896)))

(declare-fun b!2157052 () Bool)

(declare-fun inv!32958 (IArray!16139) Bool)

(assert (=> b!2157052 (= e!1379887 (and (inv!32958 (xs!11009 (c!341586 totalInput!880))) e!1379886))))

(assert (=> b!2156948 (= tp!671852 (and (inv!32954 (c!341586 totalInput!880)) e!1379887))))

(assert (= (and b!2156948 ((_ is Node!8067) (c!341586 totalInput!880))) b!2157051))

(assert (= b!2157052 b!2157053))

(assert (= (and b!2156948 ((_ is Leaf!11800) (c!341586 totalInput!880))) b!2157052))

(declare-fun m!2597455 () Bool)

(assert (=> b!2157051 m!2597455))

(declare-fun m!2597457 () Bool)

(assert (=> b!2157051 m!2597457))

(declare-fun m!2597459 () Bool)

(assert (=> b!2157052 m!2597459))

(assert (=> b!2156948 m!2597361))

(declare-fun tp!671900 () Bool)

(declare-fun e!1379889 () Bool)

(declare-fun b!2157054 () Bool)

(declare-fun tp!671898 () Bool)

(assert (=> b!2157054 (= e!1379889 (and (inv!32954 (left!19175 (c!341586 (totalInput!3373 (h!30315 stack!12))))) tp!671898 (inv!32954 (right!19505 (c!341586 (totalInput!3373 (h!30315 stack!12))))) tp!671900))))

(declare-fun b!2157056 () Bool)

(declare-fun e!1379888 () Bool)

(declare-fun tp!671899 () Bool)

(assert (=> b!2157056 (= e!1379888 tp!671899)))

(declare-fun b!2157055 () Bool)

(assert (=> b!2157055 (= e!1379889 (and (inv!32958 (xs!11009 (c!341586 (totalInput!3373 (h!30315 stack!12))))) e!1379888))))

(assert (=> b!2156947 (= tp!671857 (and (inv!32954 (c!341586 (totalInput!3373 (h!30315 stack!12)))) e!1379889))))

(assert (= (and b!2156947 ((_ is Node!8067) (c!341586 (totalInput!3373 (h!30315 stack!12))))) b!2157054))

(assert (= b!2157055 b!2157056))

(assert (= (and b!2156947 ((_ is Leaf!11800) (c!341586 (totalInput!3373 (h!30315 stack!12))))) b!2157055))

(declare-fun m!2597461 () Bool)

(assert (=> b!2157054 m!2597461))

(declare-fun m!2597463 () Bool)

(assert (=> b!2157054 m!2597463))

(declare-fun m!2597465 () Bool)

(assert (=> b!2157055 m!2597465))

(assert (=> b!2156947 m!2597397))

(declare-fun b!2157061 () Bool)

(declare-fun e!1379892 () Bool)

(declare-fun tp!671905 () Bool)

(declare-fun tp!671906 () Bool)

(assert (=> b!2157061 (= e!1379892 (and tp!671905 tp!671906))))

(assert (=> b!2156956 (= tp!671859 e!1379892)))

(assert (= (and b!2156956 ((_ is Cons!24912) (exprs!2001 setElem!17734))) b!2157061))

(declare-fun b!2157072 () Bool)

(declare-fun e!1379902 () Bool)

(declare-fun setRes!17748 () Bool)

(declare-fun tp!671922 () Bool)

(assert (=> b!2157072 (= e!1379902 (and setRes!17748 tp!671922))))

(declare-fun condSetEmpty!17748 () Bool)

(declare-fun mapDefault!13853 () List!24999)

(assert (=> b!2157072 (= condSetEmpty!17748 (= (_1!14646 (_1!14647 (h!30316 mapDefault!13853))) ((as const (Array Context!3002 Bool)) false)))))

(declare-fun condMapEmpty!13853 () Bool)

(assert (=> mapNonEmpty!13850 (= condMapEmpty!13853 (= mapRest!13850 ((as const (Array (_ BitVec 32) List!24999)) mapDefault!13853)))))

(declare-fun mapRes!13853 () Bool)

(assert (=> mapNonEmpty!13850 (= tp!671856 (and e!1379902 mapRes!13853))))

(declare-fun setIsEmpty!17747 () Bool)

(assert (=> setIsEmpty!17747 setRes!17748))

(declare-fun mapIsEmpty!13853 () Bool)

(assert (=> mapIsEmpty!13853 mapRes!13853))

(declare-fun b!2157073 () Bool)

(declare-fun e!1379903 () Bool)

(declare-fun tp!671924 () Bool)

(assert (=> b!2157073 (= e!1379903 tp!671924)))

(declare-fun setNonEmpty!17747 () Bool)

(declare-fun e!1379901 () Bool)

(declare-fun setElem!17747 () Context!3002)

(declare-fun tp!671926 () Bool)

(assert (=> setNonEmpty!17747 (= setRes!17748 (and tp!671926 (inv!32952 setElem!17747) e!1379901))))

(declare-fun setRest!17747 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17747 (= (_1!14646 (_1!14647 (h!30316 mapDefault!13853))) ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17747 true) setRest!17747))))

(declare-fun tp!671925 () Bool)

(declare-fun setElem!17748 () Context!3002)

(declare-fun setNonEmpty!17748 () Bool)

(declare-fun setRes!17747 () Bool)

(assert (=> setNonEmpty!17748 (= setRes!17747 (and tp!671925 (inv!32952 setElem!17748) e!1379903))))

(declare-fun mapValue!13853 () List!24999)

(declare-fun setRest!17748 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17748 (= (_1!14646 (_1!14647 (h!30316 mapValue!13853))) ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17748 true) setRest!17748))))

(declare-fun setIsEmpty!17748 () Bool)

(assert (=> setIsEmpty!17748 setRes!17747))

(declare-fun mapNonEmpty!13853 () Bool)

(declare-fun tp!671923 () Bool)

(declare-fun e!1379904 () Bool)

(assert (=> mapNonEmpty!13853 (= mapRes!13853 (and tp!671923 e!1379904))))

(declare-fun mapKey!13853 () (_ BitVec 32))

(declare-fun mapRest!13853 () (Array (_ BitVec 32) List!24999))

(assert (=> mapNonEmpty!13853 (= mapRest!13850 (store mapRest!13853 mapKey!13853 mapValue!13853))))

(declare-fun b!2157074 () Bool)

(declare-fun tp!671921 () Bool)

(assert (=> b!2157074 (= e!1379904 (and setRes!17747 tp!671921))))

(declare-fun condSetEmpty!17747 () Bool)

(assert (=> b!2157074 (= condSetEmpty!17747 (= (_1!14646 (_1!14647 (h!30316 mapValue!13853))) ((as const (Array Context!3002 Bool)) false)))))

(declare-fun b!2157075 () Bool)

(declare-fun tp!671927 () Bool)

(assert (=> b!2157075 (= e!1379901 tp!671927)))

(assert (= (and mapNonEmpty!13850 condMapEmpty!13853) mapIsEmpty!13853))

(assert (= (and mapNonEmpty!13850 (not condMapEmpty!13853)) mapNonEmpty!13853))

(assert (= (and b!2157074 condSetEmpty!17747) setIsEmpty!17748))

(assert (= (and b!2157074 (not condSetEmpty!17747)) setNonEmpty!17748))

(assert (= setNonEmpty!17748 b!2157073))

(assert (= (and mapNonEmpty!13853 ((_ is Cons!24915) mapValue!13853)) b!2157074))

(assert (= (and b!2157072 condSetEmpty!17748) setIsEmpty!17747))

(assert (= (and b!2157072 (not condSetEmpty!17748)) setNonEmpty!17747))

(assert (= setNonEmpty!17747 b!2157075))

(assert (= (and mapNonEmpty!13850 ((_ is Cons!24915) mapDefault!13853)) b!2157072))

(declare-fun m!2597467 () Bool)

(assert (=> setNonEmpty!17747 m!2597467))

(declare-fun m!2597469 () Bool)

(assert (=> setNonEmpty!17748 m!2597469))

(declare-fun m!2597471 () Bool)

(assert (=> mapNonEmpty!13853 m!2597471))

(declare-fun e!1379905 () Bool)

(assert (=> mapNonEmpty!13850 (= tp!671853 e!1379905)))

(declare-fun setRes!17749 () Bool)

(declare-fun setNonEmpty!17749 () Bool)

(declare-fun e!1379906 () Bool)

(declare-fun setElem!17749 () Context!3002)

(declare-fun tp!671930 () Bool)

(assert (=> setNonEmpty!17749 (= setRes!17749 (and tp!671930 (inv!32952 setElem!17749) e!1379906))))

(declare-fun setRest!17749 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17749 (= (_1!14646 (_1!14647 (h!30316 mapValue!13850))) ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17749 true) setRest!17749))))

(declare-fun b!2157076 () Bool)

(declare-fun tp!671929 () Bool)

(assert (=> b!2157076 (= e!1379905 (and setRes!17749 tp!671929))))

(declare-fun condSetEmpty!17749 () Bool)

(assert (=> b!2157076 (= condSetEmpty!17749 (= (_1!14646 (_1!14647 (h!30316 mapValue!13850))) ((as const (Array Context!3002 Bool)) false)))))

(declare-fun b!2157077 () Bool)

(declare-fun tp!671928 () Bool)

(assert (=> b!2157077 (= e!1379906 tp!671928)))

(declare-fun setIsEmpty!17749 () Bool)

(assert (=> setIsEmpty!17749 setRes!17749))

(assert (= (and b!2157076 condSetEmpty!17749) setIsEmpty!17749))

(assert (= (and b!2157076 (not condSetEmpty!17749)) setNonEmpty!17749))

(assert (= setNonEmpty!17749 b!2157077))

(assert (= (and mapNonEmpty!13850 ((_ is Cons!24915) mapValue!13850)) b!2157076))

(declare-fun m!2597473 () Bool)

(assert (=> setNonEmpty!17749 m!2597473))

(declare-fun e!1379908 () Bool)

(declare-fun tp!671933 () Bool)

(declare-fun tp!671931 () Bool)

(declare-fun b!2157078 () Bool)

(assert (=> b!2157078 (= e!1379908 (and (inv!32954 (left!19175 (c!341586 (totalInput!3374 cacheFurthestNullable!118)))) tp!671931 (inv!32954 (right!19505 (c!341586 (totalInput!3374 cacheFurthestNullable!118)))) tp!671933))))

(declare-fun b!2157080 () Bool)

(declare-fun e!1379907 () Bool)

(declare-fun tp!671932 () Bool)

(assert (=> b!2157080 (= e!1379907 tp!671932)))

(declare-fun b!2157079 () Bool)

(assert (=> b!2157079 (= e!1379908 (and (inv!32958 (xs!11009 (c!341586 (totalInput!3374 cacheFurthestNullable!118)))) e!1379907))))

(assert (=> b!2156943 (= tp!671861 (and (inv!32954 (c!341586 (totalInput!3374 cacheFurthestNullable!118))) e!1379908))))

(assert (= (and b!2156943 ((_ is Node!8067) (c!341586 (totalInput!3374 cacheFurthestNullable!118)))) b!2157078))

(assert (= b!2157079 b!2157080))

(assert (= (and b!2156943 ((_ is Leaf!11800) (c!341586 (totalInput!3374 cacheFurthestNullable!118)))) b!2157079))

(declare-fun m!2597475 () Bool)

(assert (=> b!2157078 m!2597475))

(declare-fun m!2597477 () Bool)

(assert (=> b!2157078 m!2597477))

(declare-fun m!2597479 () Bool)

(assert (=> b!2157079 m!2597479))

(assert (=> b!2156943 m!2597391))

(declare-fun condSetEmpty!17752 () Bool)

(assert (=> setNonEmpty!17734 (= condSetEmpty!17752 (= setRest!17734 ((as const (Array Context!3002 Bool)) false)))))

(declare-fun setRes!17752 () Bool)

(assert (=> setNonEmpty!17734 (= tp!671855 setRes!17752)))

(declare-fun setIsEmpty!17752 () Bool)

(assert (=> setIsEmpty!17752 setRes!17752))

(declare-fun setNonEmpty!17752 () Bool)

(declare-fun setElem!17752 () Context!3002)

(declare-fun tp!671938 () Bool)

(declare-fun e!1379911 () Bool)

(assert (=> setNonEmpty!17752 (= setRes!17752 (and tp!671938 (inv!32952 setElem!17752) e!1379911))))

(declare-fun setRest!17752 () (InoxSet Context!3002))

(assert (=> setNonEmpty!17752 (= setRest!17734 ((_ map or) (store ((as const (Array Context!3002 Bool)) false) setElem!17752 true) setRest!17752))))

(declare-fun b!2157085 () Bool)

(declare-fun tp!671939 () Bool)

(assert (=> b!2157085 (= e!1379911 tp!671939)))

(assert (= (and setNonEmpty!17734 condSetEmpty!17752) setIsEmpty!17752))

(assert (= (and setNonEmpty!17734 (not condSetEmpty!17752)) setNonEmpty!17752))

(assert (= setNonEmpty!17752 b!2157085))

(declare-fun m!2597481 () Bool)

(assert (=> setNonEmpty!17752 m!2597481))

(declare-fun b_lambda!71009 () Bool)

(assert (= b_lambda!71007 (or b!2156949 b_lambda!71009)))

(declare-fun bs!445908 () Bool)

(declare-fun d!646517 () Bool)

(assert (= bs!445908 (and d!646517 b!2156949)))

(assert (=> bs!445908 (= (dynLambda!11418 lambda!81404 (h!30315 stack!12)) (= (res!929683 (h!30315 stack!12)) res!17610))))

(assert (=> b!2156971 d!646517))

(declare-fun b_lambda!71011 () Bool)

(assert (= b_lambda!71005 (or b!2156941 b_lambda!71011)))

(declare-fun bs!445909 () Bool)

(declare-fun d!646519 () Bool)

(assert (= bs!445909 (and d!646519 b!2156941)))

(assert (=> bs!445909 (= (dynLambda!11418 lambda!81403 (h!30315 stack!12)) (= (totalInput!3373 (h!30315 stack!12)) totalInput!880))))

(assert (=> b!2156966 d!646519))

(check-sat (not b!2157024) (not b!2156972) (not b!2157028) (not b!2157054) (not setNonEmpty!17752) (not mapNonEmpty!13853) (not b!2157008) (not b!2157027) (not b!2156998) (not b!2157078) (not b!2157080) (not d!646491) (not d!646501) (not b!2157040) (not b_lambda!71009) (not b!2157061) (not b!2157055) (not b!2156948) (not b!2157075) (not b!2157042) (not b_lambda!71011) (not b!2157039) (not d!646511) (not b!2157074) (not b!2157011) (not b!2157023) (not d!646515) (not b!2156947) (not d!646513) (not b!2157052) (not b!2157007) (not b!2157026) (not b!2156943) (not b!2156997) (not b!2157005) (not setNonEmpty!17748) (not setNonEmpty!17737) (not b!2156996) (not b_next!64421) (not setNonEmpty!17749) (not b!2157073) (not b!2156995) b_and!173333 (not setNonEmpty!17738) (not b!2157041) (not b!2157072) (not b!2157051) (not b!2156970) (not b!2157085) (not setNonEmpty!17747) (not b!2157056) (not b!2157010) (not b!2157079) (not b!2157025) (not d!646487) (not b_next!64423) (not b!2157053) (not b!2157013) b_and!173335 (not b!2156978) (not b!2157076) (not setNonEmpty!17739) (not setNonEmpty!17742) (not b!2156980) (not d!646493) (not b!2157077) (not b!2156967))
(check-sat b_and!173335 b_and!173333 (not b_next!64423) (not b_next!64421))
