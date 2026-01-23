; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208966 () Bool)

(assert start!208966)

(declare-fun b!2154000 () Bool)

(declare-fun b_free!63613 () Bool)

(declare-fun b_next!64317 () Bool)

(assert (=> b!2154000 (= b_free!63613 (not b_next!64317))))

(declare-fun tp!670062 () Bool)

(declare-fun b_and!173229 () Bool)

(assert (=> b!2154000 (= tp!670062 b_and!173229)))

(declare-fun b!2154006 () Bool)

(declare-fun b_free!63615 () Bool)

(declare-fun b_next!64319 () Bool)

(assert (=> b!2154006 (= b_free!63615 (not b_next!64319))))

(declare-fun tp!670057 () Bool)

(declare-fun b_and!173231 () Bool)

(assert (=> b!2154006 (= tp!670057 b_and!173231)))

(declare-fun b!2154013 () Bool)

(assert (=> b!2154013 true))

(declare-fun bs!445758 () Bool)

(declare-fun b!2154014 () Bool)

(assert (= bs!445758 (and b!2154014 b!2154013)))

(declare-fun lambda!81209 () Int)

(declare-fun lambda!81208 () Int)

(assert (=> bs!445758 (not (= lambda!81209 lambda!81208))))

(assert (=> b!2154014 true))

(declare-fun mapIsEmpty!13742 () Bool)

(declare-fun mapRes!13742 () Bool)

(assert (=> mapIsEmpty!13742 mapRes!13742))

(declare-fun b!2153998 () Bool)

(declare-fun res!928722 () Bool)

(declare-fun e!1377676 () Bool)

(assert (=> b!2153998 (=> (not res!928722) (not e!1377676))))

(declare-datatypes ((C!11956 0))(
  ( (C!11957 (val!6964 Int)) )
))
(declare-datatypes ((List!24895 0))(
  ( (Nil!24811) (Cons!24811 (h!30212 C!11956) (t!197443 List!24895)) )
))
(declare-datatypes ((IArray!16087 0))(
  ( (IArray!16088 (innerList!8101 List!24895)) )
))
(declare-datatypes ((Conc!8041 0))(
  ( (Node!8041 (left!19088 Conc!8041) (right!19418 Conc!8041) (csize!16312 Int) (cheight!8252 Int)) (Leaf!11761 (xs!10983 IArray!16087) (csize!16313 Int)) (Empty!8041) )
))
(declare-datatypes ((BalanceConc!15844 0))(
  ( (BalanceConc!15845 (c!341430 Conc!8041)) )
))
(declare-fun totalInput!880 () BalanceConc!15844)

(declare-datatypes ((Regex!5905 0))(
  ( (ElementMatch!5905 (c!341431 C!11956)) (Concat!10207 (regOne!12322 Regex!5905) (regTwo!12322 Regex!5905)) (EmptyExpr!5905) (Star!5905 (reg!6234 Regex!5905)) (EmptyLang!5905) (Union!5905 (regOne!12323 Regex!5905) (regTwo!12323 Regex!5905)) )
))
(declare-datatypes ((List!24896 0))(
  ( (Nil!24812) (Cons!24812 (h!30213 Regex!5905) (t!197444 List!24896)) )
))
(declare-datatypes ((Context!2950 0))(
  ( (Context!2951 (exprs!1975 List!24896)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3694 0))(
  ( (tuple3!3695 (_1!14587 (InoxSet Context!2950)) (_2!14587 Int) (_3!2317 Int)) )
))
(declare-datatypes ((tuple2!24540 0))(
  ( (tuple2!24541 (_1!14588 tuple3!3694) (_2!14588 Int)) )
))
(declare-datatypes ((List!24897 0))(
  ( (Nil!24813) (Cons!24813 (h!30214 tuple2!24540) (t!197445 List!24897)) )
))
(declare-datatypes ((array!9875 0))(
  ( (array!9876 (arr!4408 (Array (_ BitVec 32) (_ BitVec 64))) (size!19388 (_ BitVec 32))) )
))
(declare-datatypes ((array!9877 0))(
  ( (array!9878 (arr!4409 (Array (_ BitVec 32) List!24897)) (size!19389 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5812 0))(
  ( (LongMapFixedSize!5813 (defaultEntry!3271 Int) (mask!7174 (_ BitVec 32)) (extraKeys!3154 (_ BitVec 32)) (zeroValue!3164 List!24897) (minValue!3164 List!24897) (_size!5863 (_ BitVec 32)) (_keys!3203 array!9875) (_values!3186 array!9877) (_vacant!2967 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11449 0))(
  ( (Cell!11450 (v!29275 LongMapFixedSize!5812)) )
))
(declare-datatypes ((Hashable!2820 0))(
  ( (HashableExt!2819 (__x!16894 Int)) )
))
(declare-datatypes ((MutLongMap!2906 0))(
  ( (LongMap!2906 (underlying!6007 Cell!11449)) (MutLongMapExt!2905 (__x!16895 Int)) )
))
(declare-datatypes ((Cell!11451 0))(
  ( (Cell!11452 (v!29276 MutLongMap!2906)) )
))
(declare-datatypes ((MutableMap!2820 0))(
  ( (MutableMapExt!2819 (__x!16896 Int)) (HashMap!2820 (underlying!6008 Cell!11451) (hashF!4743 Hashable!2820) (_size!5864 (_ BitVec 32)) (defaultValue!2982 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!998 0))(
  ( (CacheFurthestNullable!999 (cache!3201 MutableMap!2820) (totalInput!3319 BalanceConc!15844)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!998)

(assert (=> b!2153998 (= res!928722 (= totalInput!880 (totalInput!3319 cacheFurthestNullable!118)))))

(declare-fun b!2153999 () Bool)

(declare-fun e!1377687 () Bool)

(assert (=> b!2153999 (= e!1377687 e!1377676)))

(declare-fun res!928723 () Bool)

(assert (=> b!2153999 (=> (not res!928723) (not e!1377676))))

(declare-datatypes ((StackFrame!344 0))(
  ( (StackFrame!345 (z!5976 (InoxSet Context!2950)) (from!2818 Int) (lastNullablePos!505 Int) (res!928725 Int) (totalInput!3320 BalanceConc!15844)) )
))
(declare-datatypes ((List!24898 0))(
  ( (Nil!24814) (Cons!24814 (h!30215 StackFrame!344) (t!197446 List!24898)) )
))
(declare-fun stack!12 () List!24898)

(declare-fun lt!801405 () Int)

(assert (=> b!2153999 (= res!928723 (<= (from!2818 (h!30215 stack!12)) lt!801405))))

(declare-fun size!19390 (BalanceConc!15844) Int)

(assert (=> b!2153999 (= lt!801405 (size!19390 totalInput!880))))

(declare-fun setIsEmpty!17476 () Bool)

(declare-fun setRes!17476 () Bool)

(assert (=> setIsEmpty!17476 setRes!17476))

(declare-fun e!1377681 () Bool)

(declare-fun tp!670063 () Bool)

(declare-fun e!1377678 () Bool)

(declare-fun tp!670059 () Bool)

(declare-fun array_inv!3162 (array!9875) Bool)

(declare-fun array_inv!3163 (array!9877) Bool)

(assert (=> b!2154000 (= e!1377681 (and tp!670062 tp!670059 tp!670063 (array_inv!3162 (_keys!3203 (v!29275 (underlying!6007 (v!29276 (underlying!6008 (cache!3201 cacheFurthestNullable!118))))))) (array_inv!3163 (_values!3186 (v!29275 (underlying!6007 (v!29276 (underlying!6008 (cache!3201 cacheFurthestNullable!118))))))) e!1377678))))

(declare-fun b!2154001 () Bool)

(declare-fun tp!670064 () Bool)

(assert (=> b!2154001 (= e!1377678 (and tp!670064 mapRes!13742))))

(declare-fun condMapEmpty!13742 () Bool)

(declare-fun mapDefault!13742 () List!24897)

(assert (=> b!2154001 (= condMapEmpty!13742 (= (arr!4409 (_values!3186 (v!29275 (underlying!6007 (v!29276 (underlying!6008 (cache!3201 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24897)) mapDefault!13742)))))

(declare-fun b!2154002 () Bool)

(declare-fun e!1377683 () Bool)

(assert (=> b!2154002 (= e!1377683 e!1377681)))

(declare-fun b!2154003 () Bool)

(declare-fun res!928717 () Bool)

(declare-fun e!1377691 () Bool)

(assert (=> b!2154003 (=> (not res!928717) (not e!1377691))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(get-info :version)

(assert (=> b!2154003 (= res!928717 (and (not ((_ is Nil!24814) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun res!928720 () Bool)

(assert (=> start!208966 (=> (not res!928720) (not e!1377691))))

(declare-fun valid!2242 (CacheFurthestNullable!998) Bool)

(assert (=> start!208966 (= res!928720 (valid!2242 cacheFurthestNullable!118))))

(assert (=> start!208966 e!1377691))

(declare-fun e!1377686 () Bool)

(declare-fun inv!32777 (CacheFurthestNullable!998) Bool)

(assert (=> start!208966 (and (inv!32777 cacheFurthestNullable!118) e!1377686)))

(assert (=> start!208966 true))

(declare-fun e!1377679 () Bool)

(declare-fun inv!32778 (BalanceConc!15844) Bool)

(assert (=> start!208966 (and (inv!32778 totalInput!880) e!1377679)))

(declare-fun e!1377684 () Bool)

(assert (=> start!208966 e!1377684))

(declare-fun b!2154004 () Bool)

(assert (=> b!2154004 (= e!1377676 (> (from!2818 (h!30215 stack!12)) (size!19390 (totalInput!3319 cacheFurthestNullable!118))))))

(declare-fun b!2154005 () Bool)

(declare-fun e!1377677 () Bool)

(declare-fun tp!670067 () Bool)

(declare-fun inv!32779 (StackFrame!344) Bool)

(assert (=> b!2154005 (= e!1377684 (and (inv!32779 (h!30215 stack!12)) e!1377677 tp!670067))))

(declare-fun e!1377688 () Bool)

(declare-fun e!1377675 () Bool)

(assert (=> b!2154006 (= e!1377688 (and e!1377675 tp!670057))))

(declare-fun setNonEmpty!17476 () Bool)

(declare-fun e!1377685 () Bool)

(declare-fun setElem!17476 () Context!2950)

(declare-fun tp!670056 () Bool)

(declare-fun inv!32780 (Context!2950) Bool)

(assert (=> setNonEmpty!17476 (= setRes!17476 (and tp!670056 (inv!32780 setElem!17476) e!1377685))))

(declare-fun setRest!17476 () (InoxSet Context!2950))

(assert (=> setNonEmpty!17476 (= (z!5976 (h!30215 stack!12)) ((_ map or) (store ((as const (Array Context!2950 Bool)) false) setElem!17476 true) setRest!17476))))

(declare-fun b!2154007 () Bool)

(declare-fun tp!670061 () Bool)

(assert (=> b!2154007 (= e!1377685 tp!670061)))

(declare-fun b!2154008 () Bool)

(declare-fun e!1377689 () Bool)

(assert (=> b!2154008 (= e!1377677 (and setRes!17476 (inv!32778 (totalInput!3320 (h!30215 stack!12))) e!1377689))))

(declare-fun condSetEmpty!17476 () Bool)

(assert (=> b!2154008 (= condSetEmpty!17476 (= (z!5976 (h!30215 stack!12)) ((as const (Array Context!2950 Bool)) false)))))

(declare-fun b!2154009 () Bool)

(declare-fun res!928721 () Bool)

(assert (=> b!2154009 (=> (not res!928721) (not e!1377691))))

(assert (=> b!2154009 (= res!928721 (= (totalInput!3319 cacheFurthestNullable!118) totalInput!880))))

(declare-fun e!1377682 () Bool)

(declare-fun b!2154010 () Bool)

(assert (=> b!2154010 (= e!1377686 (and e!1377688 (inv!32778 (totalInput!3319 cacheFurthestNullable!118)) e!1377682))))

(declare-fun b!2154011 () Bool)

(declare-fun e!1377690 () Bool)

(assert (=> b!2154011 (= e!1377690 e!1377683)))

(declare-fun b!2154012 () Bool)

(assert (=> b!2154012 (= e!1377691 e!1377687)))

(declare-fun res!928716 () Bool)

(assert (=> b!2154012 (=> (not res!928716) (not e!1377687))))

(declare-fun res!17610 () Int)

(assert (=> b!2154012 (= res!928716 (and (= (res!928725 (h!30215 stack!12)) res!17610) (>= (from!2818 (h!30215 stack!12)) 0)))))

(declare-datatypes ((Unit!37923 0))(
  ( (Unit!37924) )
))
(declare-fun lt!801407 () Unit!37923)

(declare-fun lemmaInvariant!392 (CacheFurthestNullable!998) Unit!37923)

(assert (=> b!2154012 (= lt!801407 (lemmaInvariant!392 cacheFurthestNullable!118))))

(declare-fun res!928719 () Bool)

(assert (=> b!2154013 (=> (not res!928719) (not e!1377691))))

(declare-fun forall!5086 (List!24898 Int) Bool)

(assert (=> b!2154013 (= res!928719 (forall!5086 stack!12 lambda!81208))))

(declare-fun res!928724 () Bool)

(assert (=> b!2154014 (=> (not res!928724) (not e!1377691))))

(assert (=> b!2154014 (= res!928724 (forall!5086 stack!12 lambda!81209))))

(declare-fun b!2154015 () Bool)

(declare-fun tp!670066 () Bool)

(declare-fun inv!32781 (Conc!8041) Bool)

(assert (=> b!2154015 (= e!1377679 (and (inv!32781 (c!341430 totalInput!880)) tp!670066))))

(declare-fun mapNonEmpty!13742 () Bool)

(declare-fun tp!670058 () Bool)

(declare-fun tp!670055 () Bool)

(assert (=> mapNonEmpty!13742 (= mapRes!13742 (and tp!670058 tp!670055))))

(declare-fun mapRest!13742 () (Array (_ BitVec 32) List!24897))

(declare-fun mapKey!13742 () (_ BitVec 32))

(declare-fun mapValue!13742 () List!24897)

(assert (=> mapNonEmpty!13742 (= (arr!4409 (_values!3186 (v!29275 (underlying!6007 (v!29276 (underlying!6008 (cache!3201 cacheFurthestNullable!118))))))) (store mapRest!13742 mapKey!13742 mapValue!13742))))

(declare-fun b!2154016 () Bool)

(declare-fun res!928718 () Bool)

(assert (=> b!2154016 (=> (not res!928718) (not e!1377676))))

(declare-fun furthestNullablePosition!124 ((InoxSet Context!2950) Int BalanceConc!15844 Int Int) Int)

(assert (=> b!2154016 (= res!928718 (= res!17610 (furthestNullablePosition!124 (z!5976 (h!30215 stack!12)) (from!2818 (h!30215 stack!12)) totalInput!880 lt!801405 (lastNullablePos!505 (h!30215 stack!12)))))))

(declare-fun b!2154017 () Bool)

(declare-fun tp!670060 () Bool)

(assert (=> b!2154017 (= e!1377682 (and (inv!32781 (c!341430 (totalInput!3319 cacheFurthestNullable!118))) tp!670060))))

(declare-fun b!2154018 () Bool)

(declare-fun res!928715 () Bool)

(assert (=> b!2154018 (=> (not res!928715) (not e!1377676))))

(declare-fun validCacheMapFurthestNullable!162 (MutableMap!2820 BalanceConc!15844) Bool)

(assert (=> b!2154018 (= res!928715 (validCacheMapFurthestNullable!162 (cache!3201 cacheFurthestNullable!118) (totalInput!3319 cacheFurthestNullable!118)))))

(declare-fun b!2154019 () Bool)

(declare-fun lt!801406 () MutLongMap!2906)

(assert (=> b!2154019 (= e!1377675 (and e!1377690 ((_ is LongMap!2906) lt!801406)))))

(assert (=> b!2154019 (= lt!801406 (v!29276 (underlying!6008 (cache!3201 cacheFurthestNullable!118))))))

(declare-fun b!2154020 () Bool)

(declare-fun tp!670065 () Bool)

(assert (=> b!2154020 (= e!1377689 (and (inv!32781 (c!341430 (totalInput!3320 (h!30215 stack!12)))) tp!670065))))

(assert (= (and start!208966 res!928720) b!2154009))

(assert (= (and b!2154009 res!928721) b!2154013))

(assert (= (and b!2154013 res!928719) b!2154014))

(assert (= (and b!2154014 res!928724) b!2154003))

(assert (= (and b!2154003 res!928717) b!2154012))

(assert (= (and b!2154012 res!928716) b!2153999))

(assert (= (and b!2153999 res!928723) b!2154016))

(assert (= (and b!2154016 res!928718) b!2153998))

(assert (= (and b!2153998 res!928722) b!2154018))

(assert (= (and b!2154018 res!928715) b!2154004))

(assert (= (and b!2154001 condMapEmpty!13742) mapIsEmpty!13742))

(assert (= (and b!2154001 (not condMapEmpty!13742)) mapNonEmpty!13742))

(assert (= b!2154000 b!2154001))

(assert (= b!2154002 b!2154000))

(assert (= b!2154011 b!2154002))

(assert (= (and b!2154019 ((_ is LongMap!2906) (v!29276 (underlying!6008 (cache!3201 cacheFurthestNullable!118))))) b!2154011))

(assert (= b!2154006 b!2154019))

(assert (= (and b!2154010 ((_ is HashMap!2820) (cache!3201 cacheFurthestNullable!118))) b!2154006))

(assert (= b!2154010 b!2154017))

(assert (= start!208966 b!2154010))

(assert (= start!208966 b!2154015))

(assert (= (and b!2154008 condSetEmpty!17476) setIsEmpty!17476))

(assert (= (and b!2154008 (not condSetEmpty!17476)) setNonEmpty!17476))

(assert (= setNonEmpty!17476 b!2154007))

(assert (= b!2154008 b!2154020))

(assert (= b!2154005 b!2154008))

(assert (= (and start!208966 ((_ is Cons!24814) stack!12)) b!2154005))

(declare-fun m!2595519 () Bool)

(assert (=> mapNonEmpty!13742 m!2595519))

(declare-fun m!2595521 () Bool)

(assert (=> b!2154016 m!2595521))

(declare-fun m!2595523 () Bool)

(assert (=> b!2153999 m!2595523))

(declare-fun m!2595525 () Bool)

(assert (=> b!2154000 m!2595525))

(declare-fun m!2595527 () Bool)

(assert (=> b!2154000 m!2595527))

(declare-fun m!2595529 () Bool)

(assert (=> b!2154010 m!2595529))

(declare-fun m!2595531 () Bool)

(assert (=> start!208966 m!2595531))

(declare-fun m!2595533 () Bool)

(assert (=> start!208966 m!2595533))

(declare-fun m!2595535 () Bool)

(assert (=> start!208966 m!2595535))

(declare-fun m!2595537 () Bool)

(assert (=> b!2154020 m!2595537))

(declare-fun m!2595539 () Bool)

(assert (=> b!2154005 m!2595539))

(declare-fun m!2595541 () Bool)

(assert (=> b!2154013 m!2595541))

(declare-fun m!2595543 () Bool)

(assert (=> b!2154015 m!2595543))

(declare-fun m!2595545 () Bool)

(assert (=> b!2154014 m!2595545))

(declare-fun m!2595547 () Bool)

(assert (=> b!2154018 m!2595547))

(declare-fun m!2595549 () Bool)

(assert (=> b!2154017 m!2595549))

(declare-fun m!2595551 () Bool)

(assert (=> b!2154004 m!2595551))

(declare-fun m!2595553 () Bool)

(assert (=> b!2154008 m!2595553))

(declare-fun m!2595555 () Bool)

(assert (=> b!2154012 m!2595555))

(declare-fun m!2595557 () Bool)

(assert (=> setNonEmpty!17476 m!2595557))

(check-sat (not b!2154004) (not mapNonEmpty!13742) (not b!2154008) (not b!2154013) (not b!2154014) (not b!2154007) (not b!2154018) (not b!2154020) (not b_next!64319) b_and!173229 (not b!2154012) (not b!2154017) (not b!2154010) b_and!173231 (not b!2154015) (not setNonEmpty!17476) (not b!2153999) (not start!208966) (not b!2154000) (not b!2154001) (not b_next!64317) (not b!2154005) (not b!2154016))
(check-sat b_and!173231 b_and!173229 (not b_next!64319) (not b_next!64317))
