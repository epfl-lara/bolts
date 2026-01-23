; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209140 () Bool)

(assert start!209140)

(declare-fun b!2155901 () Bool)

(declare-fun b_free!63677 () Bool)

(declare-fun b_next!64381 () Bool)

(assert (=> b!2155901 (= b_free!63677 (not b_next!64381))))

(declare-fun tp!671149 () Bool)

(declare-fun b_and!173293 () Bool)

(assert (=> b!2155901 (= tp!671149 b_and!173293)))

(declare-fun b!2155899 () Bool)

(declare-fun b_free!63679 () Bool)

(declare-fun b_next!64383 () Bool)

(assert (=> b!2155899 (= b_free!63679 (not b_next!64383))))

(declare-fun tp!671150 () Bool)

(declare-fun b_and!173295 () Bool)

(assert (=> b!2155899 (= tp!671150 b_and!173295)))

(declare-fun b!2155900 () Bool)

(assert (=> b!2155900 true))

(declare-fun bs!445850 () Bool)

(declare-fun b!2155894 () Bool)

(assert (= bs!445850 (and b!2155894 b!2155900)))

(declare-fun lambda!81344 () Int)

(declare-fun lambda!81343 () Int)

(assert (=> bs!445850 (not (= lambda!81344 lambda!81343))))

(assert (=> b!2155894 true))

(declare-fun e!1379011 () Bool)

(declare-fun setRes!17632 () Bool)

(declare-fun b!2155889 () Bool)

(declare-datatypes ((C!11988 0))(
  ( (C!11989 (val!6980 Int)) )
))
(declare-datatypes ((Regex!5921 0))(
  ( (ElementMatch!5921 (c!341530 C!11988)) (Concat!10223 (regOne!12354 Regex!5921) (regTwo!12354 Regex!5921)) (EmptyExpr!5921) (Star!5921 (reg!6250 Regex!5921)) (EmptyLang!5921) (Union!5921 (regOne!12355 Regex!5921) (regTwo!12355 Regex!5921)) )
))
(declare-datatypes ((List!24958 0))(
  ( (Nil!24874) (Cons!24874 (h!30275 Regex!5921) (t!197506 List!24958)) )
))
(declare-datatypes ((List!24959 0))(
  ( (Nil!24875) (Cons!24875 (h!30276 C!11988) (t!197507 List!24959)) )
))
(declare-datatypes ((IArray!16119 0))(
  ( (IArray!16120 (innerList!8117 List!24959)) )
))
(declare-datatypes ((Conc!8057 0))(
  ( (Node!8057 (left!19144 Conc!8057) (right!19474 Conc!8057) (csize!16344 Int) (cheight!8268 Int)) (Leaf!11785 (xs!10999 IArray!16119) (csize!16345 Int)) (Empty!8057) )
))
(declare-datatypes ((Context!2982 0))(
  ( (Context!2983 (exprs!1991 List!24958)) )
))
(declare-datatypes ((BalanceConc!15876 0))(
  ( (BalanceConc!15877 (c!341531 Conc!8057)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!374 0))(
  ( (StackFrame!375 (z!5998 (InoxSet Context!2982)) (from!2839 Int) (lastNullablePos!526 Int) (res!929392 Int) (totalInput!3354 BalanceConc!15876)) )
))
(declare-datatypes ((List!24960 0))(
  ( (Nil!24876) (Cons!24876 (h!30277 StackFrame!374) (t!197508 List!24960)) )
))
(declare-fun stack!12 () List!24960)

(declare-fun e!1379017 () Bool)

(declare-fun inv!32886 (BalanceConc!15876) Bool)

(assert (=> b!2155889 (= e!1379011 (and setRes!17632 (inv!32886 (totalInput!3354 (h!30277 stack!12))) e!1379017))))

(declare-fun condSetEmpty!17632 () Bool)

(assert (=> b!2155889 (= condSetEmpty!17632 (= (z!5998 (h!30277 stack!12)) ((as const (Array Context!2982 Bool)) false)))))

(declare-fun b!2155890 () Bool)

(declare-fun e!1379014 () Bool)

(declare-fun tp!671156 () Bool)

(assert (=> b!2155890 (= e!1379014 tp!671156)))

(declare-fun b!2155891 () Bool)

(declare-fun e!1379006 () Bool)

(declare-fun totalInput!880 () BalanceConc!15876)

(declare-fun tp!671155 () Bool)

(declare-fun inv!32887 (Conc!8057) Bool)

(assert (=> b!2155891 (= e!1379006 (and (inv!32887 (c!341531 totalInput!880)) tp!671155))))

(declare-fun tp!671151 () Bool)

(declare-fun b!2155892 () Bool)

(declare-fun e!1379016 () Bool)

(declare-fun inv!32888 (StackFrame!374) Bool)

(assert (=> b!2155892 (= e!1379016 (and (inv!32888 (h!30277 stack!12)) e!1379011 tp!671151))))

(declare-fun b!2155893 () Bool)

(declare-fun e!1379013 () Bool)

(declare-fun e!1379008 () Bool)

(declare-datatypes ((tuple3!3726 0))(
  ( (tuple3!3727 (_1!14625 (InoxSet Context!2982)) (_2!14625 Int) (_3!2333 Int)) )
))
(declare-datatypes ((tuple2!24584 0))(
  ( (tuple2!24585 (_1!14626 tuple3!3726) (_2!14626 Int)) )
))
(declare-datatypes ((List!24961 0))(
  ( (Nil!24877) (Cons!24877 (h!30278 tuple2!24584) (t!197509 List!24961)) )
))
(declare-datatypes ((array!9951 0))(
  ( (array!9952 (arr!4440 (Array (_ BitVec 32) (_ BitVec 64))) (size!19435 (_ BitVec 32))) )
))
(declare-datatypes ((array!9953 0))(
  ( (array!9954 (arr!4441 (Array (_ BitVec 32) List!24961)) (size!19436 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5844 0))(
  ( (LongMapFixedSize!5845 (defaultEntry!3287 Int) (mask!7198 (_ BitVec 32)) (extraKeys!3170 (_ BitVec 32)) (zeroValue!3180 List!24961) (minValue!3180 List!24961) (_size!5895 (_ BitVec 32)) (_keys!3219 array!9951) (_values!3202 array!9953) (_vacant!2983 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11513 0))(
  ( (Cell!11514 (v!29307 LongMapFixedSize!5844)) )
))
(declare-datatypes ((MutLongMap!2922 0))(
  ( (LongMap!2922 (underlying!6039 Cell!11513)) (MutLongMapExt!2921 (__x!16942 Int)) )
))
(declare-fun lt!801576 () MutLongMap!2922)

(get-info :version)

(assert (=> b!2155893 (= e!1379013 (and e!1379008 ((_ is LongMap!2922) lt!801576)))))

(declare-datatypes ((Hashable!2836 0))(
  ( (HashableExt!2835 (__x!16943 Int)) )
))
(declare-datatypes ((Cell!11515 0))(
  ( (Cell!11516 (v!29308 MutLongMap!2922)) )
))
(declare-datatypes ((MutableMap!2836 0))(
  ( (MutableMapExt!2835 (__x!16944 Int)) (HashMap!2836 (underlying!6040 Cell!11515) (hashF!4759 Hashable!2836) (_size!5896 (_ BitVec 32)) (defaultValue!2998 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1030 0))(
  ( (CacheFurthestNullable!1031 (cache!3217 MutableMap!2836) (totalInput!3355 BalanceConc!15876)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1030)

(assert (=> b!2155893 (= lt!801576 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))

(declare-fun mapIsEmpty!13808 () Bool)

(declare-fun mapRes!13808 () Bool)

(assert (=> mapIsEmpty!13808 mapRes!13808))

(declare-fun res!929391 () Bool)

(declare-fun e!1379005 () Bool)

(assert (=> b!2155894 (=> (not res!929391) (not e!1379005))))

(declare-fun forall!5109 (List!24960 Int) Bool)

(assert (=> b!2155894 (= res!929391 (forall!5109 stack!12 lambda!81344))))

(declare-fun b!2155895 () Bool)

(declare-fun tp!671154 () Bool)

(assert (=> b!2155895 (= e!1379017 (and (inv!32887 (c!341531 (totalInput!3354 (h!30277 stack!12)))) tp!671154))))

(declare-fun b!2155896 () Bool)

(declare-fun e!1379015 () Bool)

(declare-fun tp!671153 () Bool)

(assert (=> b!2155896 (= e!1379015 (and (inv!32887 (c!341531 (totalInput!3355 cacheFurthestNullable!118))) tp!671153))))

(declare-fun b!2155898 () Bool)

(declare-fun res!929390 () Bool)

(assert (=> b!2155898 (=> (not res!929390) (not e!1379005))))

(assert (=> b!2155898 (= res!929390 (= (totalInput!3355 cacheFurthestNullable!118) totalInput!880))))

(declare-fun e!1379010 () Bool)

(assert (=> b!2155899 (= e!1379010 (and e!1379013 tp!671150))))

(declare-fun res!929389 () Bool)

(assert (=> b!2155900 (=> (not res!929389) (not e!1379005))))

(assert (=> b!2155900 (= res!929389 (forall!5109 stack!12 lambda!81343))))

(declare-fun tp!671147 () Bool)

(declare-fun setNonEmpty!17632 () Bool)

(declare-fun setElem!17632 () Context!2982)

(declare-fun inv!32889 (Context!2982) Bool)

(assert (=> setNonEmpty!17632 (= setRes!17632 (and tp!671147 (inv!32889 setElem!17632) e!1379014))))

(declare-fun setRest!17632 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17632 (= (z!5998 (h!30277 stack!12)) ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17632 true) setRest!17632))))

(declare-fun tp!671159 () Bool)

(declare-fun e!1379004 () Bool)

(declare-fun e!1379003 () Bool)

(declare-fun tp!671148 () Bool)

(declare-fun array_inv!3186 (array!9951) Bool)

(declare-fun array_inv!3187 (array!9953) Bool)

(assert (=> b!2155901 (= e!1379003 (and tp!671149 tp!671159 tp!671148 (array_inv!3186 (_keys!3219 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))) (array_inv!3187 (_values!3202 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))) e!1379004))))

(declare-fun b!2155902 () Bool)

(declare-fun tp!671157 () Bool)

(assert (=> b!2155902 (= e!1379004 (and tp!671157 mapRes!13808))))

(declare-fun condMapEmpty!13808 () Bool)

(declare-fun mapDefault!13808 () List!24961)

(assert (=> b!2155902 (= condMapEmpty!13808 (= (arr!4441 (_values!3202 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24961)) mapDefault!13808)))))

(declare-fun b!2155903 () Bool)

(declare-fun res!17610 () Int)

(assert (=> b!2155903 (= e!1379005 (not (= (res!929392 (h!30277 stack!12)) res!17610)))))

(declare-datatypes ((Unit!37957 0))(
  ( (Unit!37958) )
))
(declare-fun lt!801577 () Unit!37957)

(declare-fun lemmaInvariant!403 (CacheFurthestNullable!1030) Unit!37957)

(assert (=> b!2155903 (= lt!801577 (lemmaInvariant!403 cacheFurthestNullable!118))))

(declare-fun b!2155904 () Bool)

(declare-fun res!929387 () Bool)

(assert (=> b!2155904 (=> (not res!929387) (not e!1379005))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2155904 (= res!929387 (and (not ((_ is Nil!24876) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun mapNonEmpty!13808 () Bool)

(declare-fun tp!671152 () Bool)

(declare-fun tp!671158 () Bool)

(assert (=> mapNonEmpty!13808 (= mapRes!13808 (and tp!671152 tp!671158))))

(declare-fun mapRest!13808 () (Array (_ BitVec 32) List!24961))

(declare-fun mapValue!13808 () List!24961)

(declare-fun mapKey!13808 () (_ BitVec 32))

(assert (=> mapNonEmpty!13808 (= (arr!4441 (_values!3202 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))) (store mapRest!13808 mapKey!13808 mapValue!13808))))

(declare-fun b!2155905 () Bool)

(declare-fun e!1379009 () Bool)

(assert (=> b!2155905 (= e!1379008 e!1379009)))

(declare-fun setIsEmpty!17632 () Bool)

(assert (=> setIsEmpty!17632 setRes!17632))

(declare-fun b!2155906 () Bool)

(declare-fun e!1379012 () Bool)

(assert (=> b!2155906 (= e!1379012 (and e!1379010 (inv!32886 (totalInput!3355 cacheFurthestNullable!118)) e!1379015))))

(declare-fun res!929388 () Bool)

(assert (=> start!209140 (=> (not res!929388) (not e!1379005))))

(declare-fun valid!2256 (CacheFurthestNullable!1030) Bool)

(assert (=> start!209140 (= res!929388 (valid!2256 cacheFurthestNullable!118))))

(assert (=> start!209140 e!1379005))

(declare-fun inv!32890 (CacheFurthestNullable!1030) Bool)

(assert (=> start!209140 (and (inv!32890 cacheFurthestNullable!118) e!1379012)))

(assert (=> start!209140 true))

(assert (=> start!209140 (and (inv!32886 totalInput!880) e!1379006)))

(assert (=> start!209140 e!1379016))

(declare-fun b!2155897 () Bool)

(assert (=> b!2155897 (= e!1379009 e!1379003)))

(assert (= (and start!209140 res!929388) b!2155898))

(assert (= (and b!2155898 res!929390) b!2155900))

(assert (= (and b!2155900 res!929389) b!2155894))

(assert (= (and b!2155894 res!929391) b!2155904))

(assert (= (and b!2155904 res!929387) b!2155903))

(assert (= (and b!2155902 condMapEmpty!13808) mapIsEmpty!13808))

(assert (= (and b!2155902 (not condMapEmpty!13808)) mapNonEmpty!13808))

(assert (= b!2155901 b!2155902))

(assert (= b!2155897 b!2155901))

(assert (= b!2155905 b!2155897))

(assert (= (and b!2155893 ((_ is LongMap!2922) (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))) b!2155905))

(assert (= b!2155899 b!2155893))

(assert (= (and b!2155906 ((_ is HashMap!2836) (cache!3217 cacheFurthestNullable!118))) b!2155899))

(assert (= b!2155906 b!2155896))

(assert (= start!209140 b!2155906))

(assert (= start!209140 b!2155891))

(assert (= (and b!2155889 condSetEmpty!17632) setIsEmpty!17632))

(assert (= (and b!2155889 (not condSetEmpty!17632)) setNonEmpty!17632))

(assert (= setNonEmpty!17632 b!2155890))

(assert (= b!2155889 b!2155895))

(assert (= b!2155892 b!2155889))

(assert (= (and start!209140 ((_ is Cons!24876) stack!12)) b!2155892))

(declare-fun m!2596699 () Bool)

(assert (=> start!209140 m!2596699))

(declare-fun m!2596701 () Bool)

(assert (=> start!209140 m!2596701))

(declare-fun m!2596703 () Bool)

(assert (=> start!209140 m!2596703))

(declare-fun m!2596705 () Bool)

(assert (=> b!2155895 m!2596705))

(declare-fun m!2596707 () Bool)

(assert (=> b!2155889 m!2596707))

(declare-fun m!2596709 () Bool)

(assert (=> b!2155891 m!2596709))

(declare-fun m!2596711 () Bool)

(assert (=> b!2155892 m!2596711))

(declare-fun m!2596713 () Bool)

(assert (=> b!2155894 m!2596713))

(declare-fun m!2596715 () Bool)

(assert (=> setNonEmpty!17632 m!2596715))

(declare-fun m!2596717 () Bool)

(assert (=> b!2155901 m!2596717))

(declare-fun m!2596719 () Bool)

(assert (=> b!2155901 m!2596719))

(declare-fun m!2596721 () Bool)

(assert (=> b!2155906 m!2596721))

(declare-fun m!2596723 () Bool)

(assert (=> b!2155900 m!2596723))

(declare-fun m!2596725 () Bool)

(assert (=> b!2155896 m!2596725))

(declare-fun m!2596727 () Bool)

(assert (=> mapNonEmpty!13808 m!2596727))

(declare-fun m!2596729 () Bool)

(assert (=> b!2155903 m!2596729))

(check-sat (not mapNonEmpty!13808) (not b!2155895) (not b!2155900) (not b!2155896) (not setNonEmpty!17632) (not b!2155903) b_and!173293 (not b!2155902) (not b!2155894) (not b_next!64381) (not b!2155891) (not b!2155901) (not start!209140) (not b!2155890) (not b!2155889) (not b!2155892) (not b_next!64383) (not b!2155906) b_and!173295)
(check-sat b_and!173295 b_and!173293 (not b_next!64383) (not b_next!64381))
(get-model)

(declare-fun d!646334 () Bool)

(declare-fun validCacheMapFurthestNullable!171 (MutableMap!2836 BalanceConc!15876) Bool)

(assert (=> d!646334 (= (valid!2256 cacheFurthestNullable!118) (validCacheMapFurthestNullable!171 (cache!3217 cacheFurthestNullable!118) (totalInput!3355 cacheFurthestNullable!118)))))

(declare-fun bs!445851 () Bool)

(assert (= bs!445851 d!646334))

(declare-fun m!2596731 () Bool)

(assert (=> bs!445851 m!2596731))

(assert (=> start!209140 d!646334))

(declare-fun d!646336 () Bool)

(declare-fun res!929395 () Bool)

(declare-fun e!1379020 () Bool)

(assert (=> d!646336 (=> (not res!929395) (not e!1379020))))

(assert (=> d!646336 (= res!929395 ((_ is HashMap!2836) (cache!3217 cacheFurthestNullable!118)))))

(assert (=> d!646336 (= (inv!32890 cacheFurthestNullable!118) e!1379020)))

(declare-fun b!2155913 () Bool)

(assert (=> b!2155913 (= e!1379020 (validCacheMapFurthestNullable!171 (cache!3217 cacheFurthestNullable!118) (totalInput!3355 cacheFurthestNullable!118)))))

(assert (= (and d!646336 res!929395) b!2155913))

(assert (=> b!2155913 m!2596731))

(assert (=> start!209140 d!646336))

(declare-fun d!646338 () Bool)

(declare-fun isBalanced!2500 (Conc!8057) Bool)

(assert (=> d!646338 (= (inv!32886 totalInput!880) (isBalanced!2500 (c!341531 totalInput!880)))))

(declare-fun bs!445852 () Bool)

(assert (= bs!445852 d!646338))

(declare-fun m!2596733 () Bool)

(assert (=> bs!445852 m!2596733))

(assert (=> start!209140 d!646338))

(declare-fun d!646340 () Bool)

(assert (=> d!646340 (= (inv!32886 (totalInput!3354 (h!30277 stack!12))) (isBalanced!2500 (c!341531 (totalInput!3354 (h!30277 stack!12)))))))

(declare-fun bs!445853 () Bool)

(assert (= bs!445853 d!646340))

(declare-fun m!2596735 () Bool)

(assert (=> bs!445853 m!2596735))

(assert (=> b!2155889 d!646340))

(declare-fun d!646342 () Bool)

(assert (=> d!646342 (= (inv!32886 (totalInput!3355 cacheFurthestNullable!118)) (isBalanced!2500 (c!341531 (totalInput!3355 cacheFurthestNullable!118))))))

(declare-fun bs!445854 () Bool)

(assert (= bs!445854 d!646342))

(declare-fun m!2596737 () Bool)

(assert (=> bs!445854 m!2596737))

(assert (=> b!2155906 d!646342))

(declare-fun d!646344 () Bool)

(declare-fun res!929400 () Bool)

(declare-fun e!1379025 () Bool)

(assert (=> d!646344 (=> res!929400 e!1379025)))

(assert (=> d!646344 (= res!929400 ((_ is Nil!24876) stack!12))))

(assert (=> d!646344 (= (forall!5109 stack!12 lambda!81343) e!1379025)))

(declare-fun b!2155918 () Bool)

(declare-fun e!1379026 () Bool)

(assert (=> b!2155918 (= e!1379025 e!1379026)))

(declare-fun res!929401 () Bool)

(assert (=> b!2155918 (=> (not res!929401) (not e!1379026))))

(declare-fun dynLambda!11414 (Int StackFrame!374) Bool)

(assert (=> b!2155918 (= res!929401 (dynLambda!11414 lambda!81343 (h!30277 stack!12)))))

(declare-fun b!2155919 () Bool)

(assert (=> b!2155919 (= e!1379026 (forall!5109 (t!197508 stack!12) lambda!81343))))

(assert (= (and d!646344 (not res!929400)) b!2155918))

(assert (= (and b!2155918 res!929401) b!2155919))

(declare-fun b_lambda!70973 () Bool)

(assert (=> (not b_lambda!70973) (not b!2155918)))

(declare-fun m!2596739 () Bool)

(assert (=> b!2155918 m!2596739))

(declare-fun m!2596741 () Bool)

(assert (=> b!2155919 m!2596741))

(assert (=> b!2155900 d!646344))

(declare-fun d!646346 () Bool)

(declare-fun c!341534 () Bool)

(assert (=> d!646346 (= c!341534 ((_ is Node!8057) (c!341531 totalInput!880)))))

(declare-fun e!1379031 () Bool)

(assert (=> d!646346 (= (inv!32887 (c!341531 totalInput!880)) e!1379031)))

(declare-fun b!2155926 () Bool)

(declare-fun inv!32891 (Conc!8057) Bool)

(assert (=> b!2155926 (= e!1379031 (inv!32891 (c!341531 totalInput!880)))))

(declare-fun b!2155927 () Bool)

(declare-fun e!1379032 () Bool)

(assert (=> b!2155927 (= e!1379031 e!1379032)))

(declare-fun res!929404 () Bool)

(assert (=> b!2155927 (= res!929404 (not ((_ is Leaf!11785) (c!341531 totalInput!880))))))

(assert (=> b!2155927 (=> res!929404 e!1379032)))

(declare-fun b!2155928 () Bool)

(declare-fun inv!32892 (Conc!8057) Bool)

(assert (=> b!2155928 (= e!1379032 (inv!32892 (c!341531 totalInput!880)))))

(assert (= (and d!646346 c!341534) b!2155926))

(assert (= (and d!646346 (not c!341534)) b!2155927))

(assert (= (and b!2155927 (not res!929404)) b!2155928))

(declare-fun m!2596743 () Bool)

(assert (=> b!2155926 m!2596743))

(declare-fun m!2596745 () Bool)

(assert (=> b!2155928 m!2596745))

(assert (=> b!2155891 d!646346))

(declare-fun d!646348 () Bool)

(declare-fun lambda!81347 () Int)

(declare-fun forall!5110 (List!24958 Int) Bool)

(assert (=> d!646348 (= (inv!32889 setElem!17632) (forall!5110 (exprs!1991 setElem!17632) lambda!81347))))

(declare-fun bs!445855 () Bool)

(assert (= bs!445855 d!646348))

(declare-fun m!2596747 () Bool)

(assert (=> bs!445855 m!2596747))

(assert (=> setNonEmpty!17632 d!646348))

(declare-fun d!646350 () Bool)

(assert (=> d!646350 (= (array_inv!3186 (_keys!3219 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))) (bvsge (size!19435 (_keys!3219 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2155901 d!646350))

(declare-fun d!646352 () Bool)

(assert (=> d!646352 (= (array_inv!3187 (_values!3202 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))) (bvsge (size!19436 (_values!3202 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2155901 d!646352))

(declare-fun b!2155941 () Bool)

(declare-fun res!929419 () Bool)

(declare-fun e!1379038 () Bool)

(assert (=> b!2155941 (=> (not res!929419) (not e!1379038))))

(declare-fun size!19437 (BalanceConc!15876) Int)

(assert (=> b!2155941 (= res!929419 (= (size!19437 (totalInput!3354 (h!30277 stack!12))) (size!19437 (totalInput!3354 (h!30277 stack!12)))))))

(declare-fun b!2155942 () Bool)

(declare-fun res!929422 () Bool)

(assert (=> b!2155942 (=> (not res!929422) (not e!1379038))))

(declare-fun e!1379037 () Bool)

(assert (=> b!2155942 (= res!929422 e!1379037)))

(declare-fun res!929421 () Bool)

(assert (=> b!2155942 (=> res!929421 e!1379037)))

(declare-fun nullableZipper!222 ((InoxSet Context!2982)) Bool)

(assert (=> b!2155942 (= res!929421 (not (nullableZipper!222 (z!5998 (h!30277 stack!12)))))))

(declare-fun b!2155943 () Bool)

(declare-fun res!929417 () Bool)

(assert (=> b!2155943 (=> (not res!929417) (not e!1379038))))

(assert (=> b!2155943 (= res!929417 (<= (from!2839 (h!30277 stack!12)) (size!19437 (totalInput!3354 (h!30277 stack!12)))))))

(declare-fun b!2155944 () Bool)

(declare-fun furthestNullablePosition!134 ((InoxSet Context!2982) Int BalanceConc!15876 Int Int) Int)

(assert (=> b!2155944 (= e!1379038 (= (res!929392 (h!30277 stack!12)) (furthestNullablePosition!134 (z!5998 (h!30277 stack!12)) (from!2839 (h!30277 stack!12)) (totalInput!3354 (h!30277 stack!12)) (size!19437 (totalInput!3354 (h!30277 stack!12))) (lastNullablePos!526 (h!30277 stack!12)))))))

(declare-fun d!646354 () Bool)

(declare-fun res!929418 () Bool)

(assert (=> d!646354 (=> (not res!929418) (not e!1379038))))

(assert (=> d!646354 (= res!929418 (>= (from!2839 (h!30277 stack!12)) 0))))

(assert (=> d!646354 (= (inv!32888 (h!30277 stack!12)) e!1379038)))

(declare-fun b!2155945 () Bool)

(assert (=> b!2155945 (= e!1379037 (= (lastNullablePos!526 (h!30277 stack!12)) (- (from!2839 (h!30277 stack!12)) 1)))))

(declare-fun b!2155946 () Bool)

(declare-fun res!929420 () Bool)

(assert (=> b!2155946 (=> (not res!929420) (not e!1379038))))

(assert (=> b!2155946 (= res!929420 (and (>= (lastNullablePos!526 (h!30277 stack!12)) (- 1)) (< (lastNullablePos!526 (h!30277 stack!12)) (from!2839 (h!30277 stack!12)))))))

(assert (= (and d!646354 res!929418) b!2155943))

(assert (= (and b!2155943 res!929417) b!2155941))

(assert (= (and b!2155941 res!929419) b!2155946))

(assert (= (and b!2155946 res!929420) b!2155942))

(assert (= (and b!2155942 (not res!929421)) b!2155945))

(assert (= (and b!2155942 res!929422) b!2155944))

(declare-fun m!2596749 () Bool)

(assert (=> b!2155941 m!2596749))

(declare-fun m!2596751 () Bool)

(assert (=> b!2155942 m!2596751))

(assert (=> b!2155943 m!2596749))

(assert (=> b!2155944 m!2596749))

(assert (=> b!2155944 m!2596749))

(declare-fun m!2596753 () Bool)

(assert (=> b!2155944 m!2596753))

(assert (=> b!2155892 d!646354))

(declare-fun d!646356 () Bool)

(assert (=> d!646356 (valid!2256 cacheFurthestNullable!118)))

(declare-fun Unit!37959 () Unit!37957)

(assert (=> d!646356 (= (lemmaInvariant!403 cacheFurthestNullable!118) Unit!37959)))

(declare-fun bs!445856 () Bool)

(assert (= bs!445856 d!646356))

(assert (=> bs!445856 m!2596699))

(assert (=> b!2155903 d!646356))

(declare-fun d!646358 () Bool)

(declare-fun res!929423 () Bool)

(declare-fun e!1379039 () Bool)

(assert (=> d!646358 (=> res!929423 e!1379039)))

(assert (=> d!646358 (= res!929423 ((_ is Nil!24876) stack!12))))

(assert (=> d!646358 (= (forall!5109 stack!12 lambda!81344) e!1379039)))

(declare-fun b!2155947 () Bool)

(declare-fun e!1379040 () Bool)

(assert (=> b!2155947 (= e!1379039 e!1379040)))

(declare-fun res!929424 () Bool)

(assert (=> b!2155947 (=> (not res!929424) (not e!1379040))))

(assert (=> b!2155947 (= res!929424 (dynLambda!11414 lambda!81344 (h!30277 stack!12)))))

(declare-fun b!2155948 () Bool)

(assert (=> b!2155948 (= e!1379040 (forall!5109 (t!197508 stack!12) lambda!81344))))

(assert (= (and d!646358 (not res!929423)) b!2155947))

(assert (= (and b!2155947 res!929424) b!2155948))

(declare-fun b_lambda!70975 () Bool)

(assert (=> (not b_lambda!70975) (not b!2155947)))

(declare-fun m!2596755 () Bool)

(assert (=> b!2155947 m!2596755))

(declare-fun m!2596757 () Bool)

(assert (=> b!2155948 m!2596757))

(assert (=> b!2155894 d!646358))

(declare-fun d!646360 () Bool)

(declare-fun c!341535 () Bool)

(assert (=> d!646360 (= c!341535 ((_ is Node!8057) (c!341531 (totalInput!3354 (h!30277 stack!12)))))))

(declare-fun e!1379041 () Bool)

(assert (=> d!646360 (= (inv!32887 (c!341531 (totalInput!3354 (h!30277 stack!12)))) e!1379041)))

(declare-fun b!2155949 () Bool)

(assert (=> b!2155949 (= e!1379041 (inv!32891 (c!341531 (totalInput!3354 (h!30277 stack!12)))))))

(declare-fun b!2155950 () Bool)

(declare-fun e!1379042 () Bool)

(assert (=> b!2155950 (= e!1379041 e!1379042)))

(declare-fun res!929425 () Bool)

(assert (=> b!2155950 (= res!929425 (not ((_ is Leaf!11785) (c!341531 (totalInput!3354 (h!30277 stack!12))))))))

(assert (=> b!2155950 (=> res!929425 e!1379042)))

(declare-fun b!2155951 () Bool)

(assert (=> b!2155951 (= e!1379042 (inv!32892 (c!341531 (totalInput!3354 (h!30277 stack!12)))))))

(assert (= (and d!646360 c!341535) b!2155949))

(assert (= (and d!646360 (not c!341535)) b!2155950))

(assert (= (and b!2155950 (not res!929425)) b!2155951))

(declare-fun m!2596759 () Bool)

(assert (=> b!2155949 m!2596759))

(declare-fun m!2596761 () Bool)

(assert (=> b!2155951 m!2596761))

(assert (=> b!2155895 d!646360))

(declare-fun d!646362 () Bool)

(declare-fun c!341536 () Bool)

(assert (=> d!646362 (= c!341536 ((_ is Node!8057) (c!341531 (totalInput!3355 cacheFurthestNullable!118))))))

(declare-fun e!1379043 () Bool)

(assert (=> d!646362 (= (inv!32887 (c!341531 (totalInput!3355 cacheFurthestNullable!118))) e!1379043)))

(declare-fun b!2155952 () Bool)

(assert (=> b!2155952 (= e!1379043 (inv!32891 (c!341531 (totalInput!3355 cacheFurthestNullable!118))))))

(declare-fun b!2155953 () Bool)

(declare-fun e!1379044 () Bool)

(assert (=> b!2155953 (= e!1379043 e!1379044)))

(declare-fun res!929426 () Bool)

(assert (=> b!2155953 (= res!929426 (not ((_ is Leaf!11785) (c!341531 (totalInput!3355 cacheFurthestNullable!118)))))))

(assert (=> b!2155953 (=> res!929426 e!1379044)))

(declare-fun b!2155954 () Bool)

(assert (=> b!2155954 (= e!1379044 (inv!32892 (c!341531 (totalInput!3355 cacheFurthestNullable!118))))))

(assert (= (and d!646362 c!341536) b!2155952))

(assert (= (and d!646362 (not c!341536)) b!2155953))

(assert (= (and b!2155953 (not res!929426)) b!2155954))

(declare-fun m!2596763 () Bool)

(assert (=> b!2155952 m!2596763))

(declare-fun m!2596765 () Bool)

(assert (=> b!2155954 m!2596765))

(assert (=> b!2155896 d!646362))

(declare-fun e!1379050 () Bool)

(assert (=> b!2155901 (= tp!671159 e!1379050)))

(declare-fun b!2155961 () Bool)

(declare-fun setRes!17635 () Bool)

(declare-fun tp!671166 () Bool)

(assert (=> b!2155961 (= e!1379050 (and setRes!17635 tp!671166))))

(declare-fun condSetEmpty!17635 () Bool)

(assert (=> b!2155961 (= condSetEmpty!17635 (= (_1!14625 (_1!14626 (h!30278 (zeroValue!3180 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))))) ((as const (Array Context!2982 Bool)) false)))))

(declare-fun b!2155962 () Bool)

(declare-fun e!1379049 () Bool)

(declare-fun tp!671167 () Bool)

(assert (=> b!2155962 (= e!1379049 tp!671167)))

(declare-fun tp!671168 () Bool)

(declare-fun setElem!17635 () Context!2982)

(declare-fun setNonEmpty!17635 () Bool)

(assert (=> setNonEmpty!17635 (= setRes!17635 (and tp!671168 (inv!32889 setElem!17635) e!1379049))))

(declare-fun setRest!17635 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17635 (= (_1!14625 (_1!14626 (h!30278 (zeroValue!3180 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17635 true) setRest!17635))))

(declare-fun setIsEmpty!17635 () Bool)

(assert (=> setIsEmpty!17635 setRes!17635))

(assert (= (and b!2155961 condSetEmpty!17635) setIsEmpty!17635))

(assert (= (and b!2155961 (not condSetEmpty!17635)) setNonEmpty!17635))

(assert (= setNonEmpty!17635 b!2155962))

(assert (= (and b!2155901 ((_ is Cons!24877) (zeroValue!3180 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118)))))))) b!2155961))

(declare-fun m!2596767 () Bool)

(assert (=> setNonEmpty!17635 m!2596767))

(declare-fun e!1379052 () Bool)

(assert (=> b!2155901 (= tp!671148 e!1379052)))

(declare-fun b!2155963 () Bool)

(declare-fun setRes!17636 () Bool)

(declare-fun tp!671169 () Bool)

(assert (=> b!2155963 (= e!1379052 (and setRes!17636 tp!671169))))

(declare-fun condSetEmpty!17636 () Bool)

(assert (=> b!2155963 (= condSetEmpty!17636 (= (_1!14625 (_1!14626 (h!30278 (minValue!3180 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))))) ((as const (Array Context!2982 Bool)) false)))))

(declare-fun b!2155964 () Bool)

(declare-fun e!1379051 () Bool)

(declare-fun tp!671170 () Bool)

(assert (=> b!2155964 (= e!1379051 tp!671170)))

(declare-fun setNonEmpty!17636 () Bool)

(declare-fun tp!671171 () Bool)

(declare-fun setElem!17636 () Context!2982)

(assert (=> setNonEmpty!17636 (= setRes!17636 (and tp!671171 (inv!32889 setElem!17636) e!1379051))))

(declare-fun setRest!17636 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17636 (= (_1!14625 (_1!14626 (h!30278 (minValue!3180 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17636 true) setRest!17636))))

(declare-fun setIsEmpty!17636 () Bool)

(assert (=> setIsEmpty!17636 setRes!17636))

(assert (= (and b!2155963 condSetEmpty!17636) setIsEmpty!17636))

(assert (= (and b!2155963 (not condSetEmpty!17636)) setNonEmpty!17636))

(assert (= setNonEmpty!17636 b!2155964))

(assert (= (and b!2155901 ((_ is Cons!24877) (minValue!3180 (v!29307 (underlying!6039 (v!29308 (underlying!6040 (cache!3217 cacheFurthestNullable!118)))))))) b!2155963))

(declare-fun m!2596769 () Bool)

(assert (=> setNonEmpty!17636 m!2596769))

(declare-fun b!2155975 () Bool)

(declare-fun e!1379061 () Bool)

(declare-fun tp!671181 () Bool)

(assert (=> b!2155975 (= e!1379061 tp!671181)))

(declare-fun e!1379062 () Bool)

(declare-fun e!1379064 () Bool)

(declare-fun tp!671183 () Bool)

(declare-fun b!2155976 () Bool)

(assert (=> b!2155976 (= e!1379062 (and (inv!32888 (h!30277 (t!197508 stack!12))) e!1379064 tp!671183))))

(declare-fun setRes!17639 () Bool)

(declare-fun b!2155977 () Bool)

(declare-fun e!1379063 () Bool)

(assert (=> b!2155977 (= e!1379064 (and setRes!17639 (inv!32886 (totalInput!3354 (h!30277 (t!197508 stack!12)))) e!1379063))))

(declare-fun condSetEmpty!17639 () Bool)

(assert (=> b!2155977 (= condSetEmpty!17639 (= (z!5998 (h!30277 (t!197508 stack!12))) ((as const (Array Context!2982 Bool)) false)))))

(declare-fun b!2155978 () Bool)

(declare-fun tp!671182 () Bool)

(assert (=> b!2155978 (= e!1379063 (and (inv!32887 (c!341531 (totalInput!3354 (h!30277 (t!197508 stack!12))))) tp!671182))))

(declare-fun setNonEmpty!17639 () Bool)

(declare-fun tp!671180 () Bool)

(declare-fun setElem!17639 () Context!2982)

(assert (=> setNonEmpty!17639 (= setRes!17639 (and tp!671180 (inv!32889 setElem!17639) e!1379061))))

(declare-fun setRest!17639 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17639 (= (z!5998 (h!30277 (t!197508 stack!12))) ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17639 true) setRest!17639))))

(assert (=> b!2155892 (= tp!671151 e!1379062)))

(declare-fun setIsEmpty!17639 () Bool)

(assert (=> setIsEmpty!17639 setRes!17639))

(assert (= (and b!2155977 condSetEmpty!17639) setIsEmpty!17639))

(assert (= (and b!2155977 (not condSetEmpty!17639)) setNonEmpty!17639))

(assert (= setNonEmpty!17639 b!2155975))

(assert (= b!2155977 b!2155978))

(assert (= b!2155976 b!2155977))

(assert (= (and b!2155892 ((_ is Cons!24876) (t!197508 stack!12))) b!2155976))

(declare-fun m!2596771 () Bool)

(assert (=> b!2155976 m!2596771))

(declare-fun m!2596773 () Bool)

(assert (=> b!2155977 m!2596773))

(declare-fun m!2596775 () Bool)

(assert (=> b!2155978 m!2596775))

(declare-fun m!2596777 () Bool)

(assert (=> setNonEmpty!17639 m!2596777))

(declare-fun e!1379066 () Bool)

(assert (=> b!2155902 (= tp!671157 e!1379066)))

(declare-fun b!2155979 () Bool)

(declare-fun setRes!17640 () Bool)

(declare-fun tp!671184 () Bool)

(assert (=> b!2155979 (= e!1379066 (and setRes!17640 tp!671184))))

(declare-fun condSetEmpty!17640 () Bool)

(assert (=> b!2155979 (= condSetEmpty!17640 (= (_1!14625 (_1!14626 (h!30278 mapDefault!13808))) ((as const (Array Context!2982 Bool)) false)))))

(declare-fun b!2155980 () Bool)

(declare-fun e!1379065 () Bool)

(declare-fun tp!671185 () Bool)

(assert (=> b!2155980 (= e!1379065 tp!671185)))

(declare-fun setNonEmpty!17640 () Bool)

(declare-fun setElem!17640 () Context!2982)

(declare-fun tp!671186 () Bool)

(assert (=> setNonEmpty!17640 (= setRes!17640 (and tp!671186 (inv!32889 setElem!17640) e!1379065))))

(declare-fun setRest!17640 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17640 (= (_1!14625 (_1!14626 (h!30278 mapDefault!13808))) ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17640 true) setRest!17640))))

(declare-fun setIsEmpty!17640 () Bool)

(assert (=> setIsEmpty!17640 setRes!17640))

(assert (= (and b!2155979 condSetEmpty!17640) setIsEmpty!17640))

(assert (= (and b!2155979 (not condSetEmpty!17640)) setNonEmpty!17640))

(assert (= setNonEmpty!17640 b!2155980))

(assert (= (and b!2155902 ((_ is Cons!24877) mapDefault!13808)) b!2155979))

(declare-fun m!2596779 () Bool)

(assert (=> setNonEmpty!17640 m!2596779))

(declare-fun b!2155985 () Bool)

(declare-fun e!1379069 () Bool)

(declare-fun tp!671191 () Bool)

(declare-fun tp!671192 () Bool)

(assert (=> b!2155985 (= e!1379069 (and tp!671191 tp!671192))))

(assert (=> b!2155890 (= tp!671156 e!1379069)))

(assert (= (and b!2155890 ((_ is Cons!24874) (exprs!1991 setElem!17632))) b!2155985))

(declare-fun e!1379078 () Bool)

(declare-fun setNonEmpty!17645 () Bool)

(declare-fun setElem!17645 () Context!2982)

(declare-fun tp!671207 () Bool)

(declare-fun setRes!17646 () Bool)

(assert (=> setNonEmpty!17645 (= setRes!17646 (and tp!671207 (inv!32889 setElem!17645) e!1379078))))

(declare-fun mapValue!13811 () List!24961)

(declare-fun setRest!17645 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17645 (= (_1!14625 (_1!14626 (h!30278 mapValue!13811))) ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17645 true) setRest!17645))))

(declare-fun b!2155996 () Bool)

(declare-fun e!1379079 () Bool)

(declare-fun tp!671208 () Bool)

(assert (=> b!2155996 (= e!1379079 (and setRes!17646 tp!671208))))

(declare-fun condSetEmpty!17646 () Bool)

(assert (=> b!2155996 (= condSetEmpty!17646 (= (_1!14625 (_1!14626 (h!30278 mapValue!13811))) ((as const (Array Context!2982 Bool)) false)))))

(declare-fun b!2155997 () Bool)

(declare-fun e!1379080 () Bool)

(declare-fun tp!671210 () Bool)

(assert (=> b!2155997 (= e!1379080 tp!671210)))

(declare-fun condMapEmpty!13811 () Bool)

(declare-fun mapDefault!13811 () List!24961)

(assert (=> mapNonEmpty!13808 (= condMapEmpty!13811 (= mapRest!13808 ((as const (Array (_ BitVec 32) List!24961)) mapDefault!13811)))))

(declare-fun e!1379081 () Bool)

(declare-fun mapRes!13811 () Bool)

(assert (=> mapNonEmpty!13808 (= tp!671152 (and e!1379081 mapRes!13811))))

(declare-fun mapIsEmpty!13811 () Bool)

(assert (=> mapIsEmpty!13811 mapRes!13811))

(declare-fun tp!671213 () Bool)

(declare-fun setRes!17645 () Bool)

(declare-fun setNonEmpty!17646 () Bool)

(declare-fun setElem!17646 () Context!2982)

(assert (=> setNonEmpty!17646 (= setRes!17645 (and tp!671213 (inv!32889 setElem!17646) e!1379080))))

(declare-fun setRest!17646 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17646 (= (_1!14625 (_1!14626 (h!30278 mapDefault!13811))) ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17646 true) setRest!17646))))

(declare-fun mapNonEmpty!13811 () Bool)

(declare-fun tp!671209 () Bool)

(assert (=> mapNonEmpty!13811 (= mapRes!13811 (and tp!671209 e!1379079))))

(declare-fun mapRest!13811 () (Array (_ BitVec 32) List!24961))

(declare-fun mapKey!13811 () (_ BitVec 32))

(assert (=> mapNonEmpty!13811 (= mapRest!13808 (store mapRest!13811 mapKey!13811 mapValue!13811))))

(declare-fun b!2155998 () Bool)

(declare-fun tp!671212 () Bool)

(assert (=> b!2155998 (= e!1379081 (and setRes!17645 tp!671212))))

(declare-fun condSetEmpty!17645 () Bool)

(assert (=> b!2155998 (= condSetEmpty!17645 (= (_1!14625 (_1!14626 (h!30278 mapDefault!13811))) ((as const (Array Context!2982 Bool)) false)))))

(declare-fun setIsEmpty!17645 () Bool)

(assert (=> setIsEmpty!17645 setRes!17646))

(declare-fun b!2155999 () Bool)

(declare-fun tp!671211 () Bool)

(assert (=> b!2155999 (= e!1379078 tp!671211)))

(declare-fun setIsEmpty!17646 () Bool)

(assert (=> setIsEmpty!17646 setRes!17645))

(assert (= (and mapNonEmpty!13808 condMapEmpty!13811) mapIsEmpty!13811))

(assert (= (and mapNonEmpty!13808 (not condMapEmpty!13811)) mapNonEmpty!13811))

(assert (= (and b!2155996 condSetEmpty!17646) setIsEmpty!17645))

(assert (= (and b!2155996 (not condSetEmpty!17646)) setNonEmpty!17645))

(assert (= setNonEmpty!17645 b!2155999))

(assert (= (and mapNonEmpty!13811 ((_ is Cons!24877) mapValue!13811)) b!2155996))

(assert (= (and b!2155998 condSetEmpty!17645) setIsEmpty!17646))

(assert (= (and b!2155998 (not condSetEmpty!17645)) setNonEmpty!17646))

(assert (= setNonEmpty!17646 b!2155997))

(assert (= (and mapNonEmpty!13808 ((_ is Cons!24877) mapDefault!13811)) b!2155998))

(declare-fun m!2596781 () Bool)

(assert (=> setNonEmpty!17645 m!2596781))

(declare-fun m!2596783 () Bool)

(assert (=> setNonEmpty!17646 m!2596783))

(declare-fun m!2596785 () Bool)

(assert (=> mapNonEmpty!13811 m!2596785))

(declare-fun e!1379083 () Bool)

(assert (=> mapNonEmpty!13808 (= tp!671158 e!1379083)))

(declare-fun b!2156000 () Bool)

(declare-fun setRes!17647 () Bool)

(declare-fun tp!671214 () Bool)

(assert (=> b!2156000 (= e!1379083 (and setRes!17647 tp!671214))))

(declare-fun condSetEmpty!17647 () Bool)

(assert (=> b!2156000 (= condSetEmpty!17647 (= (_1!14625 (_1!14626 (h!30278 mapValue!13808))) ((as const (Array Context!2982 Bool)) false)))))

(declare-fun b!2156001 () Bool)

(declare-fun e!1379082 () Bool)

(declare-fun tp!671215 () Bool)

(assert (=> b!2156001 (= e!1379082 tp!671215)))

(declare-fun setNonEmpty!17647 () Bool)

(declare-fun tp!671216 () Bool)

(declare-fun setElem!17647 () Context!2982)

(assert (=> setNonEmpty!17647 (= setRes!17647 (and tp!671216 (inv!32889 setElem!17647) e!1379082))))

(declare-fun setRest!17647 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17647 (= (_1!14625 (_1!14626 (h!30278 mapValue!13808))) ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17647 true) setRest!17647))))

(declare-fun setIsEmpty!17647 () Bool)

(assert (=> setIsEmpty!17647 setRes!17647))

(assert (= (and b!2156000 condSetEmpty!17647) setIsEmpty!17647))

(assert (= (and b!2156000 (not condSetEmpty!17647)) setNonEmpty!17647))

(assert (= setNonEmpty!17647 b!2156001))

(assert (= (and mapNonEmpty!13808 ((_ is Cons!24877) mapValue!13808)) b!2156000))

(declare-fun m!2596787 () Bool)

(assert (=> setNonEmpty!17647 m!2596787))

(declare-fun tp!671225 () Bool)

(declare-fun tp!671224 () Bool)

(declare-fun b!2156010 () Bool)

(declare-fun e!1379088 () Bool)

(assert (=> b!2156010 (= e!1379088 (and (inv!32887 (left!19144 (c!341531 totalInput!880))) tp!671224 (inv!32887 (right!19474 (c!341531 totalInput!880))) tp!671225))))

(declare-fun b!2156012 () Bool)

(declare-fun e!1379089 () Bool)

(declare-fun tp!671223 () Bool)

(assert (=> b!2156012 (= e!1379089 tp!671223)))

(declare-fun b!2156011 () Bool)

(declare-fun inv!32893 (IArray!16119) Bool)

(assert (=> b!2156011 (= e!1379088 (and (inv!32893 (xs!10999 (c!341531 totalInput!880))) e!1379089))))

(assert (=> b!2155891 (= tp!671155 (and (inv!32887 (c!341531 totalInput!880)) e!1379088))))

(assert (= (and b!2155891 ((_ is Node!8057) (c!341531 totalInput!880))) b!2156010))

(assert (= b!2156011 b!2156012))

(assert (= (and b!2155891 ((_ is Leaf!11785) (c!341531 totalInput!880))) b!2156011))

(declare-fun m!2596789 () Bool)

(assert (=> b!2156010 m!2596789))

(declare-fun m!2596791 () Bool)

(assert (=> b!2156010 m!2596791))

(declare-fun m!2596793 () Bool)

(assert (=> b!2156011 m!2596793))

(assert (=> b!2155891 m!2596709))

(declare-fun e!1379090 () Bool)

(declare-fun tp!671228 () Bool)

(declare-fun b!2156013 () Bool)

(declare-fun tp!671227 () Bool)

(assert (=> b!2156013 (= e!1379090 (and (inv!32887 (left!19144 (c!341531 (totalInput!3354 (h!30277 stack!12))))) tp!671227 (inv!32887 (right!19474 (c!341531 (totalInput!3354 (h!30277 stack!12))))) tp!671228))))

(declare-fun b!2156015 () Bool)

(declare-fun e!1379091 () Bool)

(declare-fun tp!671226 () Bool)

(assert (=> b!2156015 (= e!1379091 tp!671226)))

(declare-fun b!2156014 () Bool)

(assert (=> b!2156014 (= e!1379090 (and (inv!32893 (xs!10999 (c!341531 (totalInput!3354 (h!30277 stack!12))))) e!1379091))))

(assert (=> b!2155895 (= tp!671154 (and (inv!32887 (c!341531 (totalInput!3354 (h!30277 stack!12)))) e!1379090))))

(assert (= (and b!2155895 ((_ is Node!8057) (c!341531 (totalInput!3354 (h!30277 stack!12))))) b!2156013))

(assert (= b!2156014 b!2156015))

(assert (= (and b!2155895 ((_ is Leaf!11785) (c!341531 (totalInput!3354 (h!30277 stack!12))))) b!2156014))

(declare-fun m!2596795 () Bool)

(assert (=> b!2156013 m!2596795))

(declare-fun m!2596797 () Bool)

(assert (=> b!2156013 m!2596797))

(declare-fun m!2596799 () Bool)

(assert (=> b!2156014 m!2596799))

(assert (=> b!2155895 m!2596705))

(declare-fun tp!671230 () Bool)

(declare-fun b!2156016 () Bool)

(declare-fun tp!671231 () Bool)

(declare-fun e!1379092 () Bool)

(assert (=> b!2156016 (= e!1379092 (and (inv!32887 (left!19144 (c!341531 (totalInput!3355 cacheFurthestNullable!118)))) tp!671230 (inv!32887 (right!19474 (c!341531 (totalInput!3355 cacheFurthestNullable!118)))) tp!671231))))

(declare-fun b!2156018 () Bool)

(declare-fun e!1379093 () Bool)

(declare-fun tp!671229 () Bool)

(assert (=> b!2156018 (= e!1379093 tp!671229)))

(declare-fun b!2156017 () Bool)

(assert (=> b!2156017 (= e!1379092 (and (inv!32893 (xs!10999 (c!341531 (totalInput!3355 cacheFurthestNullable!118)))) e!1379093))))

(assert (=> b!2155896 (= tp!671153 (and (inv!32887 (c!341531 (totalInput!3355 cacheFurthestNullable!118))) e!1379092))))

(assert (= (and b!2155896 ((_ is Node!8057) (c!341531 (totalInput!3355 cacheFurthestNullable!118)))) b!2156016))

(assert (= b!2156017 b!2156018))

(assert (= (and b!2155896 ((_ is Leaf!11785) (c!341531 (totalInput!3355 cacheFurthestNullable!118)))) b!2156017))

(declare-fun m!2596801 () Bool)

(assert (=> b!2156016 m!2596801))

(declare-fun m!2596803 () Bool)

(assert (=> b!2156016 m!2596803))

(declare-fun m!2596805 () Bool)

(assert (=> b!2156017 m!2596805))

(assert (=> b!2155896 m!2596725))

(declare-fun condSetEmpty!17650 () Bool)

(assert (=> setNonEmpty!17632 (= condSetEmpty!17650 (= setRest!17632 ((as const (Array Context!2982 Bool)) false)))))

(declare-fun setRes!17650 () Bool)

(assert (=> setNonEmpty!17632 (= tp!671147 setRes!17650)))

(declare-fun setIsEmpty!17650 () Bool)

(assert (=> setIsEmpty!17650 setRes!17650))

(declare-fun tp!671236 () Bool)

(declare-fun setElem!17650 () Context!2982)

(declare-fun setNonEmpty!17650 () Bool)

(declare-fun e!1379096 () Bool)

(assert (=> setNonEmpty!17650 (= setRes!17650 (and tp!671236 (inv!32889 setElem!17650) e!1379096))))

(declare-fun setRest!17650 () (InoxSet Context!2982))

(assert (=> setNonEmpty!17650 (= setRest!17632 ((_ map or) (store ((as const (Array Context!2982 Bool)) false) setElem!17650 true) setRest!17650))))

(declare-fun b!2156023 () Bool)

(declare-fun tp!671237 () Bool)

(assert (=> b!2156023 (= e!1379096 tp!671237)))

(assert (= (and setNonEmpty!17632 condSetEmpty!17650) setIsEmpty!17650))

(assert (= (and setNonEmpty!17632 (not condSetEmpty!17650)) setNonEmpty!17650))

(assert (= setNonEmpty!17650 b!2156023))

(declare-fun m!2596807 () Bool)

(assert (=> setNonEmpty!17650 m!2596807))

(declare-fun b_lambda!70977 () Bool)

(assert (= b_lambda!70975 (or b!2155894 b_lambda!70977)))

(declare-fun bs!445857 () Bool)

(declare-fun d!646364 () Bool)

(assert (= bs!445857 (and d!646364 b!2155894)))

(assert (=> bs!445857 (= (dynLambda!11414 lambda!81344 (h!30277 stack!12)) (= (res!929392 (h!30277 stack!12)) res!17610))))

(assert (=> b!2155947 d!646364))

(declare-fun b_lambda!70979 () Bool)

(assert (= b_lambda!70973 (or b!2155900 b_lambda!70979)))

(declare-fun bs!445858 () Bool)

(declare-fun d!646366 () Bool)

(assert (= bs!445858 (and d!646366 b!2155900)))

(assert (=> bs!445858 (= (dynLambda!11414 lambda!81343 (h!30277 stack!12)) (= (totalInput!3354 (h!30277 stack!12)) totalInput!880))))

(assert (=> b!2155918 d!646366))

(check-sat (not b!2155980) (not b!2156017) (not b!2155895) b_and!173293 (not b!2155985) (not d!646356) (not b_next!64381) (not b!2155977) (not setNonEmpty!17639) (not b!2156014) (not b!2155975) (not b!2155919) (not setNonEmpty!17650) (not b!2155998) (not b!2155961) (not b!2156016) (not b!2156000) (not b!2156013) (not b!2156010) (not b!2155952) (not mapNonEmpty!13811) (not d!646342) (not b!2155996) (not d!646338) (not b!2155954) (not b!2155999) (not b_next!64383) (not b!2155944) (not b!2155964) (not b!2155962) (not b!2155926) (not b!2155896) (not b!2155963) (not b!2156011) (not b_lambda!70979) (not b!2155997) (not b!2155951) (not b!2155949) b_and!173295 (not b!2156015) (not b!2155943) (not b!2155976) (not setNonEmpty!17640) (not d!646340) (not setNonEmpty!17645) (not b!2155948) (not d!646334) (not setNonEmpty!17647) (not b!2155942) (not b!2156012) (not b!2155978) (not b!2155979) (not setNonEmpty!17646) (not setNonEmpty!17635) (not d!646348) (not b!2155941) (not b!2156018) (not b!2156001) (not b_lambda!70977) (not setNonEmpty!17636) (not b!2155891) (not b!2155913) (not b!2155928) (not b!2156023))
(check-sat b_and!173295 b_and!173293 (not b_next!64383) (not b_next!64381))
