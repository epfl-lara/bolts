; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209274 () Bool)

(assert start!209274)

(declare-fun b!2157212 () Bool)

(declare-fun b_free!63725 () Bool)

(declare-fun b_next!64429 () Bool)

(assert (=> b!2157212 (= b_free!63725 (not b_next!64429))))

(declare-fun tp!672009 () Bool)

(declare-fun b_and!173341 () Bool)

(assert (=> b!2157212 (= tp!672009 b_and!173341)))

(declare-fun b!2157202 () Bool)

(declare-fun b_free!63727 () Bool)

(declare-fun b_next!64431 () Bool)

(assert (=> b!2157202 (= b_free!63727 (not b_next!64431))))

(declare-fun tp!672010 () Bool)

(declare-fun b_and!173343 () Bool)

(assert (=> b!2157202 (= tp!672010 b_and!173343)))

(declare-fun b!2157195 () Bool)

(assert (=> b!2157195 true))

(declare-fun bs!445913 () Bool)

(declare-fun b!2157203 () Bool)

(assert (= bs!445913 (and b!2157203 b!2157195)))

(declare-fun lambda!81419 () Int)

(declare-fun lambda!81418 () Int)

(assert (=> bs!445913 (not (= lambda!81419 lambda!81418))))

(assert (=> b!2157203 true))

(declare-fun res!929758 () Bool)

(declare-fun e!1380001 () Bool)

(assert (=> b!2157195 (=> (not res!929758) (not e!1380001))))

(declare-datatypes ((C!12012 0))(
  ( (C!12013 (val!6992 Int)) )
))
(declare-datatypes ((Regex!5933 0))(
  ( (ElementMatch!5933 (c!341604 C!12012)) (Concat!10235 (regOne!12378 Regex!5933) (regTwo!12378 Regex!5933)) (EmptyExpr!5933) (Star!5933 (reg!6262 Regex!5933)) (EmptyLang!5933) (Union!5933 (regOne!12379 Regex!5933) (regTwo!12379 Regex!5933)) )
))
(declare-datatypes ((List!25004 0))(
  ( (Nil!24920) (Cons!24920 (h!30321 Regex!5933) (t!197552 List!25004)) )
))
(declare-datatypes ((List!25005 0))(
  ( (Nil!24921) (Cons!24921 (h!30322 C!12012) (t!197553 List!25005)) )
))
(declare-datatypes ((IArray!16143 0))(
  ( (IArray!16144 (innerList!8129 List!25005)) )
))
(declare-datatypes ((Conc!8069 0))(
  ( (Node!8069 (left!19182 Conc!8069) (right!19512 Conc!8069) (csize!16368 Int) (cheight!8280 Int)) (Leaf!11803 (xs!11011 IArray!16143) (csize!16369 Int)) (Empty!8069) )
))
(declare-datatypes ((Context!3006 0))(
  ( (Context!3007 (exprs!2003 List!25004)) )
))
(declare-datatypes ((BalanceConc!15900 0))(
  ( (BalanceConc!15901 (c!341605 Conc!8069)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!394 0))(
  ( (StackFrame!395 (z!6010 (InoxSet Context!3006)) (from!2851 Int) (lastNullablePos!538 Int) (res!929759 Int) (totalInput!3377 BalanceConc!15900)) )
))
(declare-datatypes ((List!25006 0))(
  ( (Nil!24922) (Cons!24922 (h!30323 StackFrame!394) (t!197554 List!25006)) )
))
(declare-fun stack!12 () List!25006)

(declare-fun forall!5121 (List!25006 Int) Bool)

(assert (=> b!2157195 (= res!929758 (forall!5121 stack!12 lambda!81418))))

(declare-fun b!2157196 () Bool)

(declare-fun e!1380010 () Bool)

(declare-fun e!1380007 () Bool)

(declare-datatypes ((tuple3!3750 0))(
  ( (tuple3!3751 (_1!14652 (InoxSet Context!3006)) (_2!14652 Int) (_3!2345 Int)) )
))
(declare-datatypes ((tuple2!24614 0))(
  ( (tuple2!24615 (_1!14653 tuple3!3750) (_2!14653 Int)) )
))
(declare-datatypes ((List!25007 0))(
  ( (Nil!24923) (Cons!24923 (h!30324 tuple2!24614) (t!197555 List!25007)) )
))
(declare-datatypes ((array!10009 0))(
  ( (array!10010 (arr!4464 (Array (_ BitVec 32) (_ BitVec 64))) (size!19472 (_ BitVec 32))) )
))
(declare-datatypes ((array!10011 0))(
  ( (array!10012 (arr!4465 (Array (_ BitVec 32) List!25007)) (size!19473 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5868 0))(
  ( (LongMapFixedSize!5869 (defaultEntry!3299 Int) (mask!7216 (_ BitVec 32)) (extraKeys!3182 (_ BitVec 32)) (zeroValue!3192 List!25007) (minValue!3192 List!25007) (_size!5919 (_ BitVec 32)) (_keys!3231 array!10009) (_values!3214 array!10011) (_vacant!2995 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11561 0))(
  ( (Cell!11562 (v!29331 LongMapFixedSize!5868)) )
))
(declare-datatypes ((MutLongMap!2934 0))(
  ( (LongMap!2934 (underlying!6063 Cell!11561)) (MutLongMapExt!2933 (__x!16978 Int)) )
))
(declare-fun lt!801675 () MutLongMap!2934)

(get-info :version)

(assert (=> b!2157196 (= e!1380010 (and e!1380007 ((_ is LongMap!2934) lt!801675)))))

(declare-datatypes ((Hashable!2848 0))(
  ( (HashableExt!2847 (__x!16979 Int)) )
))
(declare-datatypes ((Cell!11563 0))(
  ( (Cell!11564 (v!29332 MutLongMap!2934)) )
))
(declare-datatypes ((MutableMap!2848 0))(
  ( (MutableMapExt!2847 (__x!16980 Int)) (HashMap!2848 (underlying!6064 Cell!11563) (hashF!4771 Hashable!2848) (_size!5920 (_ BitVec 32)) (defaultValue!3010 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1054 0))(
  ( (CacheFurthestNullable!1055 (cache!3229 MutableMap!2848) (totalInput!3378 BalanceConc!15900)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1054)

(assert (=> b!2157196 (= lt!801675 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))

(declare-fun b!2157197 () Bool)

(declare-datatypes ((Unit!37975 0))(
  ( (Unit!37976) )
))
(declare-datatypes ((tuple2!24616 0))(
  ( (tuple2!24617 (_1!14654 Unit!37975) (_2!14654 CacheFurthestNullable!1054)) )
))
(declare-fun e!1379999 () tuple2!24616)

(declare-fun Unit!37977 () Unit!37975)

(assert (=> b!2157197 (= e!1379999 (tuple2!24617 Unit!37977 cacheFurthestNullable!118))))

(declare-fun b!2157198 () Bool)

(declare-fun res!929756 () Bool)

(assert (=> b!2157198 (=> (not res!929756) (not e!1380001))))

(declare-fun totalInput!880 () BalanceConc!15900)

(assert (=> b!2157198 (= res!929756 (= (totalInput!3378 cacheFurthestNullable!118) totalInput!880))))

(declare-fun b!2157199 () Bool)

(declare-fun e!1380011 () Bool)

(declare-fun tp!672007 () Bool)

(assert (=> b!2157199 (= e!1380011 tp!672007)))

(declare-fun b!2157200 () Bool)

(declare-fun res!17610 () Int)

(declare-fun update!98 (CacheFurthestNullable!1054 (InoxSet Context!3006) Int Int Int BalanceConc!15900) tuple2!24616)

(assert (=> b!2157200 (= e!1379999 (update!98 cacheFurthestNullable!118 (z!6010 (h!30323 stack!12)) (from!2851 (h!30323 stack!12)) (lastNullablePos!538 (h!30323 stack!12)) res!17610 totalInput!880))))

(declare-fun lt!801676 () Unit!37975)

(declare-fun lemmaInvariant!408 (CacheFurthestNullable!1054) Unit!37975)

(assert (=> b!2157200 (= lt!801676 (lemmaInvariant!408 cacheFurthestNullable!118))))

(declare-fun e!1380006 () Bool)

(declare-fun e!1380004 () Bool)

(declare-fun b!2157201 () Bool)

(declare-fun e!1380005 () Bool)

(declare-fun inv!32964 (BalanceConc!15900) Bool)

(assert (=> b!2157201 (= e!1380005 (and e!1380004 (inv!32964 (totalInput!3378 cacheFurthestNullable!118)) e!1380006))))

(declare-fun mapIsEmpty!13859 () Bool)

(declare-fun mapRes!13859 () Bool)

(assert (=> mapIsEmpty!13859 mapRes!13859))

(assert (=> b!2157202 (= e!1380004 (and e!1380010 tp!672010))))

(declare-fun res!929757 () Bool)

(assert (=> b!2157203 (=> (not res!929757) (not e!1380001))))

(assert (=> b!2157203 (= res!929757 (forall!5121 stack!12 lambda!81419))))

(declare-fun setNonEmpty!17758 () Bool)

(declare-fun setRes!17758 () Bool)

(declare-fun tp!672008 () Bool)

(declare-fun setElem!17758 () Context!3006)

(declare-fun inv!32965 (Context!3006) Bool)

(assert (=> setNonEmpty!17758 (= setRes!17758 (and tp!672008 (inv!32965 setElem!17758) e!1380011))))

(declare-fun setRest!17758 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17758 (= (z!6010 (h!30323 stack!12)) ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17758 true) setRest!17758))))

(declare-fun mapNonEmpty!13859 () Bool)

(declare-fun tp!672016 () Bool)

(declare-fun tp!672011 () Bool)

(assert (=> mapNonEmpty!13859 (= mapRes!13859 (and tp!672016 tp!672011))))

(declare-fun mapRest!13859 () (Array (_ BitVec 32) List!25007))

(declare-fun mapKey!13859 () (_ BitVec 32))

(declare-fun mapValue!13859 () List!25007)

(assert (=> mapNonEmpty!13859 (= (arr!4465 (_values!3214 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))) (store mapRest!13859 mapKey!13859 mapValue!13859))))

(declare-fun res!929753 () Bool)

(assert (=> start!209274 (=> (not res!929753) (not e!1380001))))

(declare-fun valid!2264 (CacheFurthestNullable!1054) Bool)

(assert (=> start!209274 (= res!929753 (valid!2264 cacheFurthestNullable!118))))

(assert (=> start!209274 e!1380001))

(declare-fun inv!32966 (CacheFurthestNullable!1054) Bool)

(assert (=> start!209274 (and (inv!32966 cacheFurthestNullable!118) e!1380005)))

(assert (=> start!209274 true))

(declare-fun e!1380000 () Bool)

(assert (=> start!209274 (and (inv!32964 totalInput!880) e!1380000)))

(declare-fun e!1380009 () Bool)

(assert (=> start!209274 e!1380009))

(declare-fun b!2157204 () Bool)

(declare-fun e!1380008 () Bool)

(declare-fun lt!801677 () tuple2!24616)

(assert (=> b!2157204 (= e!1380008 (not (= (totalInput!3378 (_2!14654 lt!801677)) totalInput!880)))))

(declare-fun e!1380013 () Bool)

(declare-fun e!1380012 () Bool)

(declare-fun b!2157205 () Bool)

(assert (=> b!2157205 (= e!1380013 (and setRes!17758 (inv!32964 (totalInput!3377 (h!30323 stack!12))) e!1380012))))

(declare-fun condSetEmpty!17758 () Bool)

(assert (=> b!2157205 (= condSetEmpty!17758 (= (z!6010 (h!30323 stack!12)) ((as const (Array Context!3006 Bool)) false)))))

(declare-fun setIsEmpty!17758 () Bool)

(assert (=> setIsEmpty!17758 setRes!17758))

(declare-fun b!2157206 () Bool)

(declare-fun tp!672006 () Bool)

(declare-fun inv!32967 (StackFrame!394) Bool)

(assert (=> b!2157206 (= e!1380009 (and (inv!32967 (h!30323 stack!12)) e!1380013 tp!672006))))

(declare-fun b!2157207 () Bool)

(assert (=> b!2157207 (= e!1380001 e!1380008)))

(declare-fun res!929755 () Bool)

(assert (=> b!2157207 (=> res!929755 e!1380008)))

(assert (=> b!2157207 (= res!929755 (not (valid!2264 (_2!14654 lt!801677))))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(declare-fun fillUpCache!11 (List!25006 BalanceConc!15900 Int Int Int CacheFurthestNullable!1054) tuple2!24616)

(assert (=> b!2157207 (= lt!801677 (fillUpCache!11 (t!197554 stack!12) totalInput!880 totalInputSize!324 res!17610 (+ 1 counter!1) (_2!14654 e!1379999)))))

(declare-fun c!341603 () Bool)

(assert (=> b!2157207 (= c!341603 (and (> totalInputSize!324 1048576) (not (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2157208 () Bool)

(declare-fun tp!672017 () Bool)

(declare-fun inv!32968 (Conc!8069) Bool)

(assert (=> b!2157208 (= e!1380012 (and (inv!32968 (c!341605 (totalInput!3377 (h!30323 stack!12)))) tp!672017))))

(declare-fun b!2157209 () Bool)

(declare-fun tp!672015 () Bool)

(assert (=> b!2157209 (= e!1380000 (and (inv!32968 (c!341605 totalInput!880)) tp!672015))))

(declare-fun b!2157210 () Bool)

(declare-fun e!1380002 () Bool)

(declare-fun tp!672005 () Bool)

(assert (=> b!2157210 (= e!1380002 (and tp!672005 mapRes!13859))))

(declare-fun condMapEmpty!13859 () Bool)

(declare-fun mapDefault!13859 () List!25007)

(assert (=> b!2157210 (= condMapEmpty!13859 (= (arr!4465 (_values!3214 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!25007)) mapDefault!13859)))))

(declare-fun b!2157211 () Bool)

(declare-fun res!929754 () Bool)

(assert (=> b!2157211 (=> (not res!929754) (not e!1380001))))

(assert (=> b!2157211 (= res!929754 (not ((_ is Nil!24922) stack!12)))))

(declare-fun e!1380003 () Bool)

(declare-fun tp!672012 () Bool)

(declare-fun tp!672014 () Bool)

(declare-fun array_inv!3202 (array!10009) Bool)

(declare-fun array_inv!3203 (array!10011) Bool)

(assert (=> b!2157212 (= e!1380003 (and tp!672009 tp!672012 tp!672014 (array_inv!3202 (_keys!3231 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))) (array_inv!3203 (_values!3214 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))) e!1380002))))

(declare-fun b!2157213 () Bool)

(declare-fun e!1379998 () Bool)

(assert (=> b!2157213 (= e!1380007 e!1379998)))

(declare-fun b!2157214 () Bool)

(assert (=> b!2157214 (= e!1379998 e!1380003)))

(declare-fun b!2157215 () Bool)

(declare-fun tp!672013 () Bool)

(assert (=> b!2157215 (= e!1380006 (and (inv!32968 (c!341605 (totalInput!3378 cacheFurthestNullable!118))) tp!672013))))

(assert (= (and start!209274 res!929753) b!2157198))

(assert (= (and b!2157198 res!929756) b!2157195))

(assert (= (and b!2157195 res!929758) b!2157203))

(assert (= (and b!2157203 res!929757) b!2157211))

(assert (= (and b!2157211 res!929754) b!2157207))

(assert (= (and b!2157207 c!341603) b!2157197))

(assert (= (and b!2157207 (not c!341603)) b!2157200))

(assert (= (and b!2157207 (not res!929755)) b!2157204))

(assert (= (and b!2157210 condMapEmpty!13859) mapIsEmpty!13859))

(assert (= (and b!2157210 (not condMapEmpty!13859)) mapNonEmpty!13859))

(assert (= b!2157212 b!2157210))

(assert (= b!2157214 b!2157212))

(assert (= b!2157213 b!2157214))

(assert (= (and b!2157196 ((_ is LongMap!2934) (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))) b!2157213))

(assert (= b!2157202 b!2157196))

(assert (= (and b!2157201 ((_ is HashMap!2848) (cache!3229 cacheFurthestNullable!118))) b!2157202))

(assert (= b!2157201 b!2157215))

(assert (= start!209274 b!2157201))

(assert (= start!209274 b!2157209))

(assert (= (and b!2157205 condSetEmpty!17758) setIsEmpty!17758))

(assert (= (and b!2157205 (not condSetEmpty!17758)) setNonEmpty!17758))

(assert (= setNonEmpty!17758 b!2157199))

(assert (= b!2157205 b!2157208))

(assert (= b!2157206 b!2157205))

(assert (= (and start!209274 ((_ is Cons!24922) stack!12)) b!2157206))

(declare-fun m!2597521 () Bool)

(assert (=> setNonEmpty!17758 m!2597521))

(declare-fun m!2597523 () Bool)

(assert (=> b!2157206 m!2597523))

(declare-fun m!2597525 () Bool)

(assert (=> b!2157201 m!2597525))

(declare-fun m!2597527 () Bool)

(assert (=> start!209274 m!2597527))

(declare-fun m!2597529 () Bool)

(assert (=> start!209274 m!2597529))

(declare-fun m!2597531 () Bool)

(assert (=> start!209274 m!2597531))

(declare-fun m!2597533 () Bool)

(assert (=> b!2157207 m!2597533))

(declare-fun m!2597535 () Bool)

(assert (=> b!2157207 m!2597535))

(declare-fun m!2597537 () Bool)

(assert (=> b!2157195 m!2597537))

(declare-fun m!2597539 () Bool)

(assert (=> b!2157215 m!2597539))

(declare-fun m!2597541 () Bool)

(assert (=> b!2157205 m!2597541))

(declare-fun m!2597543 () Bool)

(assert (=> b!2157209 m!2597543))

(declare-fun m!2597545 () Bool)

(assert (=> b!2157200 m!2597545))

(declare-fun m!2597547 () Bool)

(assert (=> b!2157200 m!2597547))

(declare-fun m!2597549 () Bool)

(assert (=> mapNonEmpty!13859 m!2597549))

(declare-fun m!2597551 () Bool)

(assert (=> b!2157208 m!2597551))

(declare-fun m!2597553 () Bool)

(assert (=> b!2157212 m!2597553))

(declare-fun m!2597555 () Bool)

(assert (=> b!2157212 m!2597555))

(declare-fun m!2597557 () Bool)

(assert (=> b!2157203 m!2597557))

(check-sat (not b_next!64431) (not b!2157195) (not b!2157212) (not b!2157199) (not b!2157201) (not setNonEmpty!17758) (not b!2157203) b_and!173343 (not b!2157210) (not b!2157206) (not start!209274) (not b!2157207) (not mapNonEmpty!13859) (not b!2157209) (not b!2157215) (not b!2157208) (not b!2157200) (not b!2157205) b_and!173341 (not b_next!64429))
(check-sat b_and!173343 b_and!173341 (not b_next!64431) (not b_next!64429))
(get-model)

(declare-fun d!646522 () Bool)

(declare-fun validCacheMapFurthestNullable!176 (MutableMap!2848 BalanceConc!15900) Bool)

(assert (=> d!646522 (= (valid!2264 cacheFurthestNullable!118) (validCacheMapFurthestNullable!176 (cache!3229 cacheFurthestNullable!118) (totalInput!3378 cacheFurthestNullable!118)))))

(declare-fun bs!445914 () Bool)

(assert (= bs!445914 d!646522))

(declare-fun m!2597559 () Bool)

(assert (=> bs!445914 m!2597559))

(assert (=> start!209274 d!646522))

(declare-fun d!646524 () Bool)

(declare-fun res!929762 () Bool)

(declare-fun e!1380016 () Bool)

(assert (=> d!646524 (=> (not res!929762) (not e!1380016))))

(assert (=> d!646524 (= res!929762 ((_ is HashMap!2848) (cache!3229 cacheFurthestNullable!118)))))

(assert (=> d!646524 (= (inv!32966 cacheFurthestNullable!118) e!1380016)))

(declare-fun b!2157222 () Bool)

(assert (=> b!2157222 (= e!1380016 (validCacheMapFurthestNullable!176 (cache!3229 cacheFurthestNullable!118) (totalInput!3378 cacheFurthestNullable!118)))))

(assert (= (and d!646524 res!929762) b!2157222))

(assert (=> b!2157222 m!2597559))

(assert (=> start!209274 d!646524))

(declare-fun d!646526 () Bool)

(declare-fun isBalanced!2505 (Conc!8069) Bool)

(assert (=> d!646526 (= (inv!32964 totalInput!880) (isBalanced!2505 (c!341605 totalInput!880)))))

(declare-fun bs!445915 () Bool)

(assert (= bs!445915 d!646526))

(declare-fun m!2597561 () Bool)

(assert (=> bs!445915 m!2597561))

(assert (=> start!209274 d!646526))

(declare-fun d!646528 () Bool)

(declare-fun res!929767 () Bool)

(declare-fun e!1380021 () Bool)

(assert (=> d!646528 (=> res!929767 e!1380021)))

(assert (=> d!646528 (= res!929767 ((_ is Nil!24922) stack!12))))

(assert (=> d!646528 (= (forall!5121 stack!12 lambda!81419) e!1380021)))

(declare-fun b!2157227 () Bool)

(declare-fun e!1380022 () Bool)

(assert (=> b!2157227 (= e!1380021 e!1380022)))

(declare-fun res!929768 () Bool)

(assert (=> b!2157227 (=> (not res!929768) (not e!1380022))))

(declare-fun dynLambda!11419 (Int StackFrame!394) Bool)

(assert (=> b!2157227 (= res!929768 (dynLambda!11419 lambda!81419 (h!30323 stack!12)))))

(declare-fun b!2157228 () Bool)

(assert (=> b!2157228 (= e!1380022 (forall!5121 (t!197554 stack!12) lambda!81419))))

(assert (= (and d!646528 (not res!929767)) b!2157227))

(assert (= (and b!2157227 res!929768) b!2157228))

(declare-fun b_lambda!71013 () Bool)

(assert (=> (not b_lambda!71013) (not b!2157227)))

(declare-fun m!2597563 () Bool)

(assert (=> b!2157227 m!2597563))

(declare-fun m!2597565 () Bool)

(assert (=> b!2157228 m!2597565))

(assert (=> b!2157203 d!646528))

(declare-fun d!646530 () Bool)

(assert (=> d!646530 (= (array_inv!3202 (_keys!3231 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))) (bvsge (size!19472 (_keys!3231 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2157212 d!646530))

(declare-fun d!646532 () Bool)

(assert (=> d!646532 (= (array_inv!3203 (_values!3214 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))) (bvsge (size!19473 (_values!3214 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2157212 d!646532))

(declare-fun d!646534 () Bool)

(declare-fun lambda!81422 () Int)

(declare-fun forall!5122 (List!25004 Int) Bool)

(assert (=> d!646534 (= (inv!32965 setElem!17758) (forall!5122 (exprs!2003 setElem!17758) lambda!81422))))

(declare-fun bs!445916 () Bool)

(assert (= bs!445916 d!646534))

(declare-fun m!2597567 () Bool)

(assert (=> bs!445916 m!2597567))

(assert (=> setNonEmpty!17758 d!646534))

(declare-fun d!646536 () Bool)

(declare-fun res!929769 () Bool)

(declare-fun e!1380023 () Bool)

(assert (=> d!646536 (=> res!929769 e!1380023)))

(assert (=> d!646536 (= res!929769 ((_ is Nil!24922) stack!12))))

(assert (=> d!646536 (= (forall!5121 stack!12 lambda!81418) e!1380023)))

(declare-fun b!2157229 () Bool)

(declare-fun e!1380024 () Bool)

(assert (=> b!2157229 (= e!1380023 e!1380024)))

(declare-fun res!929770 () Bool)

(assert (=> b!2157229 (=> (not res!929770) (not e!1380024))))

(assert (=> b!2157229 (= res!929770 (dynLambda!11419 lambda!81418 (h!30323 stack!12)))))

(declare-fun b!2157230 () Bool)

(assert (=> b!2157230 (= e!1380024 (forall!5121 (t!197554 stack!12) lambda!81418))))

(assert (= (and d!646536 (not res!929769)) b!2157229))

(assert (= (and b!2157229 res!929770) b!2157230))

(declare-fun b_lambda!71015 () Bool)

(assert (=> (not b_lambda!71015) (not b!2157229)))

(declare-fun m!2597569 () Bool)

(assert (=> b!2157229 m!2597569))

(declare-fun m!2597571 () Bool)

(assert (=> b!2157230 m!2597571))

(assert (=> b!2157195 d!646536))

(declare-fun d!646538 () Bool)

(declare-fun c!341608 () Bool)

(assert (=> d!646538 (= c!341608 ((_ is Node!8069) (c!341605 (totalInput!3377 (h!30323 stack!12)))))))

(declare-fun e!1380029 () Bool)

(assert (=> d!646538 (= (inv!32968 (c!341605 (totalInput!3377 (h!30323 stack!12)))) e!1380029)))

(declare-fun b!2157237 () Bool)

(declare-fun inv!32969 (Conc!8069) Bool)

(assert (=> b!2157237 (= e!1380029 (inv!32969 (c!341605 (totalInput!3377 (h!30323 stack!12)))))))

(declare-fun b!2157238 () Bool)

(declare-fun e!1380030 () Bool)

(assert (=> b!2157238 (= e!1380029 e!1380030)))

(declare-fun res!929773 () Bool)

(assert (=> b!2157238 (= res!929773 (not ((_ is Leaf!11803) (c!341605 (totalInput!3377 (h!30323 stack!12))))))))

(assert (=> b!2157238 (=> res!929773 e!1380030)))

(declare-fun b!2157239 () Bool)

(declare-fun inv!32970 (Conc!8069) Bool)

(assert (=> b!2157239 (= e!1380030 (inv!32970 (c!341605 (totalInput!3377 (h!30323 stack!12)))))))

(assert (= (and d!646538 c!341608) b!2157237))

(assert (= (and d!646538 (not c!341608)) b!2157238))

(assert (= (and b!2157238 (not res!929773)) b!2157239))

(declare-fun m!2597573 () Bool)

(assert (=> b!2157237 m!2597573))

(declare-fun m!2597575 () Bool)

(assert (=> b!2157239 m!2597575))

(assert (=> b!2157208 d!646538))

(declare-fun d!646540 () Bool)

(assert (=> d!646540 (= (inv!32964 (totalInput!3378 cacheFurthestNullable!118)) (isBalanced!2505 (c!341605 (totalInput!3378 cacheFurthestNullable!118))))))

(declare-fun bs!445917 () Bool)

(assert (= bs!445917 d!646540))

(declare-fun m!2597577 () Bool)

(assert (=> bs!445917 m!2597577))

(assert (=> b!2157201 d!646540))

(declare-fun d!646542 () Bool)

(declare-fun c!341609 () Bool)

(assert (=> d!646542 (= c!341609 ((_ is Node!8069) (c!341605 totalInput!880)))))

(declare-fun e!1380031 () Bool)

(assert (=> d!646542 (= (inv!32968 (c!341605 totalInput!880)) e!1380031)))

(declare-fun b!2157240 () Bool)

(assert (=> b!2157240 (= e!1380031 (inv!32969 (c!341605 totalInput!880)))))

(declare-fun b!2157241 () Bool)

(declare-fun e!1380032 () Bool)

(assert (=> b!2157241 (= e!1380031 e!1380032)))

(declare-fun res!929774 () Bool)

(assert (=> b!2157241 (= res!929774 (not ((_ is Leaf!11803) (c!341605 totalInput!880))))))

(assert (=> b!2157241 (=> res!929774 e!1380032)))

(declare-fun b!2157242 () Bool)

(assert (=> b!2157242 (= e!1380032 (inv!32970 (c!341605 totalInput!880)))))

(assert (= (and d!646542 c!341609) b!2157240))

(assert (= (and d!646542 (not c!341609)) b!2157241))

(assert (= (and b!2157241 (not res!929774)) b!2157242))

(declare-fun m!2597579 () Bool)

(assert (=> b!2157240 m!2597579))

(declare-fun m!2597581 () Bool)

(assert (=> b!2157242 m!2597581))

(assert (=> b!2157209 d!646542))

(declare-fun b!2157255 () Bool)

(declare-fun e!1380037 () Bool)

(assert (=> b!2157255 (= e!1380037 (= (lastNullablePos!538 (h!30323 stack!12)) (- (from!2851 (h!30323 stack!12)) 1)))))

(declare-fun b!2157256 () Bool)

(declare-fun res!929792 () Bool)

(declare-fun e!1380038 () Bool)

(assert (=> b!2157256 (=> (not res!929792) (not e!1380038))))

(declare-fun size!19474 (BalanceConc!15900) Int)

(assert (=> b!2157256 (= res!929792 (<= (from!2851 (h!30323 stack!12)) (size!19474 (totalInput!3377 (h!30323 stack!12)))))))

(declare-fun b!2157258 () Bool)

(declare-fun res!929790 () Bool)

(assert (=> b!2157258 (=> (not res!929790) (not e!1380038))))

(assert (=> b!2157258 (= res!929790 e!1380037)))

(declare-fun res!929787 () Bool)

(assert (=> b!2157258 (=> res!929787 e!1380037)))

(declare-fun nullableZipper!227 ((InoxSet Context!3006)) Bool)

(assert (=> b!2157258 (= res!929787 (not (nullableZipper!227 (z!6010 (h!30323 stack!12)))))))

(declare-fun d!646544 () Bool)

(declare-fun res!929789 () Bool)

(assert (=> d!646544 (=> (not res!929789) (not e!1380038))))

(assert (=> d!646544 (= res!929789 (>= (from!2851 (h!30323 stack!12)) 0))))

(assert (=> d!646544 (= (inv!32967 (h!30323 stack!12)) e!1380038)))

(declare-fun b!2157257 () Bool)

(declare-fun furthestNullablePosition!139 ((InoxSet Context!3006) Int BalanceConc!15900 Int Int) Int)

(assert (=> b!2157257 (= e!1380038 (= (res!929759 (h!30323 stack!12)) (furthestNullablePosition!139 (z!6010 (h!30323 stack!12)) (from!2851 (h!30323 stack!12)) (totalInput!3377 (h!30323 stack!12)) (size!19474 (totalInput!3377 (h!30323 stack!12))) (lastNullablePos!538 (h!30323 stack!12)))))))

(declare-fun b!2157259 () Bool)

(declare-fun res!929788 () Bool)

(assert (=> b!2157259 (=> (not res!929788) (not e!1380038))))

(assert (=> b!2157259 (= res!929788 (= (size!19474 (totalInput!3377 (h!30323 stack!12))) (size!19474 (totalInput!3377 (h!30323 stack!12)))))))

(declare-fun b!2157260 () Bool)

(declare-fun res!929791 () Bool)

(assert (=> b!2157260 (=> (not res!929791) (not e!1380038))))

(assert (=> b!2157260 (= res!929791 (and (>= (lastNullablePos!538 (h!30323 stack!12)) (- 1)) (< (lastNullablePos!538 (h!30323 stack!12)) (from!2851 (h!30323 stack!12)))))))

(assert (= (and d!646544 res!929789) b!2157256))

(assert (= (and b!2157256 res!929792) b!2157259))

(assert (= (and b!2157259 res!929788) b!2157260))

(assert (= (and b!2157260 res!929791) b!2157258))

(assert (= (and b!2157258 (not res!929787)) b!2157255))

(assert (= (and b!2157258 res!929790) b!2157257))

(declare-fun m!2597583 () Bool)

(assert (=> b!2157256 m!2597583))

(declare-fun m!2597585 () Bool)

(assert (=> b!2157258 m!2597585))

(assert (=> b!2157257 m!2597583))

(assert (=> b!2157257 m!2597583))

(declare-fun m!2597587 () Bool)

(assert (=> b!2157257 m!2597587))

(assert (=> b!2157259 m!2597583))

(assert (=> b!2157206 d!646544))

(declare-fun d!646546 () Bool)

(declare-fun e!1380041 () Bool)

(assert (=> d!646546 e!1380041))

(declare-fun res!929796 () Bool)

(assert (=> d!646546 (=> (not res!929796) (not e!1380041))))

(declare-fun lt!801680 () tuple2!24616)

(assert (=> d!646546 (= res!929796 (validCacheMapFurthestNullable!176 (cache!3229 (_2!14654 lt!801680)) (totalInput!3378 (_2!14654 lt!801680))))))

(declare-fun choose!12713 (CacheFurthestNullable!1054 (InoxSet Context!3006) Int Int Int BalanceConc!15900) tuple2!24616)

(assert (=> d!646546 (= lt!801680 (choose!12713 cacheFurthestNullable!118 (z!6010 (h!30323 stack!12)) (from!2851 (h!30323 stack!12)) (lastNullablePos!538 (h!30323 stack!12)) res!17610 totalInput!880))))

(assert (=> d!646546 (= totalInput!880 (totalInput!3378 cacheFurthestNullable!118))))

(assert (=> d!646546 (= (update!98 cacheFurthestNullable!118 (z!6010 (h!30323 stack!12)) (from!2851 (h!30323 stack!12)) (lastNullablePos!538 (h!30323 stack!12)) res!17610 totalInput!880) lt!801680)))

(declare-fun b!2157263 () Bool)

(assert (=> b!2157263 (= e!1380041 (= (totalInput!3378 (_2!14654 lt!801680)) totalInput!880))))

(assert (= (and d!646546 res!929796) b!2157263))

(declare-fun m!2597589 () Bool)

(assert (=> d!646546 m!2597589))

(declare-fun m!2597591 () Bool)

(assert (=> d!646546 m!2597591))

(assert (=> b!2157200 d!646546))

(declare-fun d!646548 () Bool)

(assert (=> d!646548 (valid!2264 cacheFurthestNullable!118)))

(declare-fun Unit!37978 () Unit!37975)

(assert (=> d!646548 (= (lemmaInvariant!408 cacheFurthestNullable!118) Unit!37978)))

(declare-fun bs!445918 () Bool)

(assert (= bs!445918 d!646548))

(assert (=> bs!445918 m!2597527))

(assert (=> b!2157200 d!646548))

(declare-fun d!646550 () Bool)

(assert (=> d!646550 (= (valid!2264 (_2!14654 lt!801677)) (validCacheMapFurthestNullable!176 (cache!3229 (_2!14654 lt!801677)) (totalInput!3378 (_2!14654 lt!801677))))))

(declare-fun bs!445919 () Bool)

(assert (= bs!445919 d!646550))

(declare-fun m!2597593 () Bool)

(assert (=> bs!445919 m!2597593))

(assert (=> b!2157207 d!646550))

(declare-fun b!2157274 () Bool)

(declare-fun lt!801692 () tuple2!24616)

(assert (=> b!2157274 (= lt!801692 (update!98 (_2!14654 e!1379999) (z!6010 (h!30323 (t!197554 stack!12))) (from!2851 (h!30323 (t!197554 stack!12))) (lastNullablePos!538 (h!30323 (t!197554 stack!12))) res!17610 totalInput!880))))

(declare-fun lt!801689 () Unit!37975)

(assert (=> b!2157274 (= lt!801689 (lemmaInvariant!408 (_2!14654 e!1379999)))))

(declare-fun e!1380048 () tuple2!24616)

(assert (=> b!2157274 (= e!1380048 (tuple2!24617 (_1!14654 lt!801692) (_2!14654 lt!801692)))))

(declare-fun d!646552 () Bool)

(declare-fun e!1380050 () Bool)

(assert (=> d!646552 e!1380050))

(declare-fun res!929800 () Bool)

(assert (=> d!646552 (=> (not res!929800) (not e!1380050))))

(declare-fun lt!801690 () tuple2!24616)

(assert (=> d!646552 (= res!929800 (valid!2264 (_2!14654 lt!801690)))))

(declare-fun e!1380049 () tuple2!24616)

(assert (=> d!646552 (= lt!801690 e!1380049)))

(declare-fun c!341615 () Bool)

(assert (=> d!646552 (= c!341615 ((_ is Nil!24922) (t!197554 stack!12)))))

(assert (=> d!646552 (valid!2264 (_2!14654 e!1379999))))

(assert (=> d!646552 (= (fillUpCache!11 (t!197554 stack!12) totalInput!880 totalInputSize!324 res!17610 (+ 1 counter!1) (_2!14654 e!1379999)) lt!801690)))

(declare-fun b!2157275 () Bool)

(declare-fun lt!801691 () tuple2!24616)

(assert (=> b!2157275 (= e!1380049 (tuple2!24617 (_1!14654 lt!801691) (_2!14654 lt!801691)))))

(declare-fun c!341614 () Bool)

(assert (=> b!2157275 (= c!341614 (and (> totalInputSize!324 1048576) (not (= (- (+ 1 counter!1) (* 10 (ite (>= (+ 1 counter!1) 0) (div (+ 1 counter!1) 10) (- (div (- (+ 1 counter!1)) 10))))) 0))))))

(assert (=> b!2157275 (= lt!801691 (fillUpCache!11 (t!197554 (t!197554 stack!12)) totalInput!880 totalInputSize!324 res!17610 (+ 1 counter!1 1) (_2!14654 e!1380048)))))

(declare-fun b!2157276 () Bool)

(assert (=> b!2157276 (= e!1380050 (= (totalInput!3378 (_2!14654 lt!801690)) totalInput!880))))

(declare-fun b!2157277 () Bool)

(declare-fun Unit!37979 () Unit!37975)

(assert (=> b!2157277 (= e!1380049 (tuple2!24617 Unit!37979 (_2!14654 e!1379999)))))

(declare-fun b!2157278 () Bool)

(declare-fun Unit!37980 () Unit!37975)

(assert (=> b!2157278 (= e!1380048 (tuple2!24617 Unit!37980 (_2!14654 e!1379999)))))

(assert (= (and d!646552 c!341615) b!2157277))

(assert (= (and d!646552 (not c!341615)) b!2157275))

(assert (= (and b!2157275 c!341614) b!2157278))

(assert (= (and b!2157275 (not c!341614)) b!2157274))

(assert (= (and d!646552 res!929800) b!2157276))

(declare-fun m!2597595 () Bool)

(assert (=> b!2157274 m!2597595))

(declare-fun m!2597597 () Bool)

(assert (=> b!2157274 m!2597597))

(declare-fun m!2597599 () Bool)

(assert (=> d!646552 m!2597599))

(declare-fun m!2597601 () Bool)

(assert (=> d!646552 m!2597601))

(declare-fun m!2597603 () Bool)

(assert (=> b!2157275 m!2597603))

(assert (=> b!2157207 d!646552))

(declare-fun d!646554 () Bool)

(assert (=> d!646554 (= (inv!32964 (totalInput!3377 (h!30323 stack!12))) (isBalanced!2505 (c!341605 (totalInput!3377 (h!30323 stack!12)))))))

(declare-fun bs!445920 () Bool)

(assert (= bs!445920 d!646554))

(declare-fun m!2597605 () Bool)

(assert (=> bs!445920 m!2597605))

(assert (=> b!2157205 d!646554))

(declare-fun d!646556 () Bool)

(declare-fun c!341616 () Bool)

(assert (=> d!646556 (= c!341616 ((_ is Node!8069) (c!341605 (totalInput!3378 cacheFurthestNullable!118))))))

(declare-fun e!1380051 () Bool)

(assert (=> d!646556 (= (inv!32968 (c!341605 (totalInput!3378 cacheFurthestNullable!118))) e!1380051)))

(declare-fun b!2157279 () Bool)

(assert (=> b!2157279 (= e!1380051 (inv!32969 (c!341605 (totalInput!3378 cacheFurthestNullable!118))))))

(declare-fun b!2157280 () Bool)

(declare-fun e!1380052 () Bool)

(assert (=> b!2157280 (= e!1380051 e!1380052)))

(declare-fun res!929801 () Bool)

(assert (=> b!2157280 (= res!929801 (not ((_ is Leaf!11803) (c!341605 (totalInput!3378 cacheFurthestNullable!118)))))))

(assert (=> b!2157280 (=> res!929801 e!1380052)))

(declare-fun b!2157281 () Bool)

(assert (=> b!2157281 (= e!1380052 (inv!32970 (c!341605 (totalInput!3378 cacheFurthestNullable!118))))))

(assert (= (and d!646556 c!341616) b!2157279))

(assert (= (and d!646556 (not c!341616)) b!2157280))

(assert (= (and b!2157280 (not res!929801)) b!2157281))

(declare-fun m!2597607 () Bool)

(assert (=> b!2157279 m!2597607))

(declare-fun m!2597609 () Bool)

(assert (=> b!2157281 m!2597609))

(assert (=> b!2157215 d!646556))

(declare-fun b!2157292 () Bool)

(declare-fun e!1380062 () Bool)

(declare-fun e!1380061 () Bool)

(declare-fun tp!672026 () Bool)

(assert (=> b!2157292 (= e!1380062 (and (inv!32967 (h!30323 (t!197554 stack!12))) e!1380061 tp!672026))))

(assert (=> b!2157206 (= tp!672006 e!1380062)))

(declare-fun setRes!17761 () Bool)

(declare-fun setNonEmpty!17761 () Bool)

(declare-fun setElem!17761 () Context!3006)

(declare-fun tp!672027 () Bool)

(declare-fun e!1380064 () Bool)

(assert (=> setNonEmpty!17761 (= setRes!17761 (and tp!672027 (inv!32965 setElem!17761) e!1380064))))

(declare-fun setRest!17761 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17761 (= (z!6010 (h!30323 (t!197554 stack!12))) ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17761 true) setRest!17761))))

(declare-fun b!2157293 () Bool)

(declare-fun e!1380063 () Bool)

(declare-fun tp!672029 () Bool)

(assert (=> b!2157293 (= e!1380063 (and (inv!32968 (c!341605 (totalInput!3377 (h!30323 (t!197554 stack!12))))) tp!672029))))

(declare-fun b!2157294 () Bool)

(declare-fun tp!672028 () Bool)

(assert (=> b!2157294 (= e!1380064 tp!672028)))

(declare-fun b!2157295 () Bool)

(assert (=> b!2157295 (= e!1380061 (and setRes!17761 (inv!32964 (totalInput!3377 (h!30323 (t!197554 stack!12)))) e!1380063))))

(declare-fun condSetEmpty!17761 () Bool)

(assert (=> b!2157295 (= condSetEmpty!17761 (= (z!6010 (h!30323 (t!197554 stack!12))) ((as const (Array Context!3006 Bool)) false)))))

(declare-fun setIsEmpty!17761 () Bool)

(assert (=> setIsEmpty!17761 setRes!17761))

(assert (= (and b!2157295 condSetEmpty!17761) setIsEmpty!17761))

(assert (= (and b!2157295 (not condSetEmpty!17761)) setNonEmpty!17761))

(assert (= setNonEmpty!17761 b!2157294))

(assert (= b!2157295 b!2157293))

(assert (= b!2157292 b!2157295))

(assert (= (and b!2157206 ((_ is Cons!24922) (t!197554 stack!12))) b!2157292))

(declare-fun m!2597611 () Bool)

(assert (=> b!2157292 m!2597611))

(declare-fun m!2597613 () Bool)

(assert (=> setNonEmpty!17761 m!2597613))

(declare-fun m!2597615 () Bool)

(assert (=> b!2157293 m!2597615))

(declare-fun m!2597617 () Bool)

(assert (=> b!2157295 m!2597617))

(declare-fun b!2157300 () Bool)

(declare-fun e!1380067 () Bool)

(declare-fun tp!672034 () Bool)

(declare-fun tp!672035 () Bool)

(assert (=> b!2157300 (= e!1380067 (and tp!672034 tp!672035))))

(assert (=> b!2157199 (= tp!672007 e!1380067)))

(assert (= (and b!2157199 ((_ is Cons!24920) (exprs!2003 setElem!17758))) b!2157300))

(declare-fun e!1380072 () Bool)

(declare-fun setNonEmpty!17764 () Bool)

(declare-fun setRes!17764 () Bool)

(declare-fun tp!672043 () Bool)

(declare-fun setElem!17764 () Context!3006)

(assert (=> setNonEmpty!17764 (= setRes!17764 (and tp!672043 (inv!32965 setElem!17764) e!1380072))))

(declare-fun setRest!17764 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17764 (= (_1!14652 (_1!14653 (h!30324 (zeroValue!3192 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17764 true) setRest!17764))))

(declare-fun setIsEmpty!17764 () Bool)

(assert (=> setIsEmpty!17764 setRes!17764))

(declare-fun e!1380073 () Bool)

(assert (=> b!2157212 (= tp!672012 e!1380073)))

(declare-fun b!2157308 () Bool)

(declare-fun tp!672044 () Bool)

(assert (=> b!2157308 (= e!1380072 tp!672044)))

(declare-fun b!2157307 () Bool)

(declare-fun tp!672042 () Bool)

(assert (=> b!2157307 (= e!1380073 (and setRes!17764 tp!672042))))

(declare-fun condSetEmpty!17764 () Bool)

(assert (=> b!2157307 (= condSetEmpty!17764 (= (_1!14652 (_1!14653 (h!30324 (zeroValue!3192 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))))) ((as const (Array Context!3006 Bool)) false)))))

(assert (= (and b!2157307 condSetEmpty!17764) setIsEmpty!17764))

(assert (= (and b!2157307 (not condSetEmpty!17764)) setNonEmpty!17764))

(assert (= setNonEmpty!17764 b!2157308))

(assert (= (and b!2157212 ((_ is Cons!24923) (zeroValue!3192 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118)))))))) b!2157307))

(declare-fun m!2597619 () Bool)

(assert (=> setNonEmpty!17764 m!2597619))

(declare-fun e!1380074 () Bool)

(declare-fun setNonEmpty!17765 () Bool)

(declare-fun tp!672046 () Bool)

(declare-fun setRes!17765 () Bool)

(declare-fun setElem!17765 () Context!3006)

(assert (=> setNonEmpty!17765 (= setRes!17765 (and tp!672046 (inv!32965 setElem!17765) e!1380074))))

(declare-fun setRest!17765 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17765 (= (_1!14652 (_1!14653 (h!30324 (minValue!3192 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17765 true) setRest!17765))))

(declare-fun setIsEmpty!17765 () Bool)

(assert (=> setIsEmpty!17765 setRes!17765))

(declare-fun e!1380075 () Bool)

(assert (=> b!2157212 (= tp!672014 e!1380075)))

(declare-fun b!2157310 () Bool)

(declare-fun tp!672047 () Bool)

(assert (=> b!2157310 (= e!1380074 tp!672047)))

(declare-fun b!2157309 () Bool)

(declare-fun tp!672045 () Bool)

(assert (=> b!2157309 (= e!1380075 (and setRes!17765 tp!672045))))

(declare-fun condSetEmpty!17765 () Bool)

(assert (=> b!2157309 (= condSetEmpty!17765 (= (_1!14652 (_1!14653 (h!30324 (minValue!3192 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118))))))))) ((as const (Array Context!3006 Bool)) false)))))

(assert (= (and b!2157309 condSetEmpty!17765) setIsEmpty!17765))

(assert (= (and b!2157309 (not condSetEmpty!17765)) setNonEmpty!17765))

(assert (= setNonEmpty!17765 b!2157310))

(assert (= (and b!2157212 ((_ is Cons!24923) (minValue!3192 (v!29331 (underlying!6063 (v!29332 (underlying!6064 (cache!3229 cacheFurthestNullable!118)))))))) b!2157309))

(declare-fun m!2597621 () Bool)

(assert (=> setNonEmpty!17765 m!2597621))

(declare-fun condSetEmpty!17768 () Bool)

(assert (=> setNonEmpty!17758 (= condSetEmpty!17768 (= setRest!17758 ((as const (Array Context!3006 Bool)) false)))))

(declare-fun setRes!17768 () Bool)

(assert (=> setNonEmpty!17758 (= tp!672008 setRes!17768)))

(declare-fun setIsEmpty!17768 () Bool)

(assert (=> setIsEmpty!17768 setRes!17768))

(declare-fun tp!672053 () Bool)

(declare-fun setElem!17768 () Context!3006)

(declare-fun setNonEmpty!17768 () Bool)

(declare-fun e!1380078 () Bool)

(assert (=> setNonEmpty!17768 (= setRes!17768 (and tp!672053 (inv!32965 setElem!17768) e!1380078))))

(declare-fun setRest!17768 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17768 (= setRest!17758 ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17768 true) setRest!17768))))

(declare-fun b!2157315 () Bool)

(declare-fun tp!672052 () Bool)

(assert (=> b!2157315 (= e!1380078 tp!672052)))

(assert (= (and setNonEmpty!17758 condSetEmpty!17768) setIsEmpty!17768))

(assert (= (and setNonEmpty!17758 (not condSetEmpty!17768)) setNonEmpty!17768))

(assert (= setNonEmpty!17768 b!2157315))

(declare-fun m!2597623 () Bool)

(assert (=> setNonEmpty!17768 m!2597623))

(declare-fun setElem!17773 () Context!3006)

(declare-fun setNonEmpty!17773 () Bool)

(declare-fun setRes!17774 () Bool)

(declare-fun tp!672073 () Bool)

(declare-fun e!1380090 () Bool)

(assert (=> setNonEmpty!17773 (= setRes!17774 (and tp!672073 (inv!32965 setElem!17773) e!1380090))))

(declare-fun mapDefault!13862 () List!25007)

(declare-fun setRest!17773 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17773 (= (_1!14652 (_1!14653 (h!30324 mapDefault!13862))) ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17773 true) setRest!17773))))

(declare-fun setRes!17773 () Bool)

(declare-fun e!1380087 () Bool)

(declare-fun setElem!17774 () Context!3006)

(declare-fun tp!672074 () Bool)

(declare-fun setNonEmpty!17774 () Bool)

(assert (=> setNonEmpty!17774 (= setRes!17773 (and tp!672074 (inv!32965 setElem!17774) e!1380087))))

(declare-fun mapValue!13862 () List!25007)

(declare-fun setRest!17774 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17774 (= (_1!14652 (_1!14653 (h!30324 mapValue!13862))) ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17774 true) setRest!17774))))

(declare-fun b!2157326 () Bool)

(declare-fun e!1380088 () Bool)

(declare-fun tp!672072 () Bool)

(assert (=> b!2157326 (= e!1380088 (and setRes!17773 tp!672072))))

(declare-fun condSetEmpty!17774 () Bool)

(assert (=> b!2157326 (= condSetEmpty!17774 (= (_1!14652 (_1!14653 (h!30324 mapValue!13862))) ((as const (Array Context!3006 Bool)) false)))))

(declare-fun b!2157327 () Bool)

(declare-fun tp!672070 () Bool)

(assert (=> b!2157327 (= e!1380090 tp!672070)))

(declare-fun setIsEmpty!17773 () Bool)

(assert (=> setIsEmpty!17773 setRes!17773))

(declare-fun condMapEmpty!13862 () Bool)

(assert (=> mapNonEmpty!13859 (= condMapEmpty!13862 (= mapRest!13859 ((as const (Array (_ BitVec 32) List!25007)) mapDefault!13862)))))

(declare-fun e!1380089 () Bool)

(declare-fun mapRes!13862 () Bool)

(assert (=> mapNonEmpty!13859 (= tp!672016 (and e!1380089 mapRes!13862))))

(declare-fun mapNonEmpty!13862 () Bool)

(declare-fun tp!672069 () Bool)

(assert (=> mapNonEmpty!13862 (= mapRes!13862 (and tp!672069 e!1380088))))

(declare-fun mapRest!13862 () (Array (_ BitVec 32) List!25007))

(declare-fun mapKey!13862 () (_ BitVec 32))

(assert (=> mapNonEmpty!13862 (= mapRest!13859 (store mapRest!13862 mapKey!13862 mapValue!13862))))

(declare-fun setIsEmpty!17774 () Bool)

(assert (=> setIsEmpty!17774 setRes!17774))

(declare-fun b!2157328 () Bool)

(declare-fun tp!672068 () Bool)

(assert (=> b!2157328 (= e!1380087 tp!672068)))

(declare-fun b!2157329 () Bool)

(declare-fun tp!672071 () Bool)

(assert (=> b!2157329 (= e!1380089 (and setRes!17774 tp!672071))))

(declare-fun condSetEmpty!17773 () Bool)

(assert (=> b!2157329 (= condSetEmpty!17773 (= (_1!14652 (_1!14653 (h!30324 mapDefault!13862))) ((as const (Array Context!3006 Bool)) false)))))

(declare-fun mapIsEmpty!13862 () Bool)

(assert (=> mapIsEmpty!13862 mapRes!13862))

(assert (= (and mapNonEmpty!13859 condMapEmpty!13862) mapIsEmpty!13862))

(assert (= (and mapNonEmpty!13859 (not condMapEmpty!13862)) mapNonEmpty!13862))

(assert (= (and b!2157326 condSetEmpty!17774) setIsEmpty!17773))

(assert (= (and b!2157326 (not condSetEmpty!17774)) setNonEmpty!17774))

(assert (= setNonEmpty!17774 b!2157328))

(assert (= (and mapNonEmpty!13862 ((_ is Cons!24923) mapValue!13862)) b!2157326))

(assert (= (and b!2157329 condSetEmpty!17773) setIsEmpty!17774))

(assert (= (and b!2157329 (not condSetEmpty!17773)) setNonEmpty!17773))

(assert (= setNonEmpty!17773 b!2157327))

(assert (= (and mapNonEmpty!13859 ((_ is Cons!24923) mapDefault!13862)) b!2157329))

(declare-fun m!2597625 () Bool)

(assert (=> setNonEmpty!17773 m!2597625))

(declare-fun m!2597627 () Bool)

(assert (=> setNonEmpty!17774 m!2597627))

(declare-fun m!2597629 () Bool)

(assert (=> mapNonEmpty!13862 m!2597629))

(declare-fun setNonEmpty!17775 () Bool)

(declare-fun setElem!17775 () Context!3006)

(declare-fun tp!672076 () Bool)

(declare-fun setRes!17775 () Bool)

(declare-fun e!1380091 () Bool)

(assert (=> setNonEmpty!17775 (= setRes!17775 (and tp!672076 (inv!32965 setElem!17775) e!1380091))))

(declare-fun setRest!17775 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17775 (= (_1!14652 (_1!14653 (h!30324 mapValue!13859))) ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17775 true) setRest!17775))))

(declare-fun setIsEmpty!17775 () Bool)

(assert (=> setIsEmpty!17775 setRes!17775))

(declare-fun e!1380092 () Bool)

(assert (=> mapNonEmpty!13859 (= tp!672011 e!1380092)))

(declare-fun b!2157331 () Bool)

(declare-fun tp!672077 () Bool)

(assert (=> b!2157331 (= e!1380091 tp!672077)))

(declare-fun b!2157330 () Bool)

(declare-fun tp!672075 () Bool)

(assert (=> b!2157330 (= e!1380092 (and setRes!17775 tp!672075))))

(declare-fun condSetEmpty!17775 () Bool)

(assert (=> b!2157330 (= condSetEmpty!17775 (= (_1!14652 (_1!14653 (h!30324 mapValue!13859))) ((as const (Array Context!3006 Bool)) false)))))

(assert (= (and b!2157330 condSetEmpty!17775) setIsEmpty!17775))

(assert (= (and b!2157330 (not condSetEmpty!17775)) setNonEmpty!17775))

(assert (= setNonEmpty!17775 b!2157331))

(assert (= (and mapNonEmpty!13859 ((_ is Cons!24923) mapValue!13859)) b!2157330))

(declare-fun m!2597631 () Bool)

(assert (=> setNonEmpty!17775 m!2597631))

(declare-fun tp!672084 () Bool)

(declare-fun e!1380097 () Bool)

(declare-fun b!2157340 () Bool)

(declare-fun tp!672085 () Bool)

(assert (=> b!2157340 (= e!1380097 (and (inv!32968 (left!19182 (c!341605 (totalInput!3377 (h!30323 stack!12))))) tp!672084 (inv!32968 (right!19512 (c!341605 (totalInput!3377 (h!30323 stack!12))))) tp!672085))))

(declare-fun b!2157342 () Bool)

(declare-fun e!1380098 () Bool)

(declare-fun tp!672086 () Bool)

(assert (=> b!2157342 (= e!1380098 tp!672086)))

(declare-fun b!2157341 () Bool)

(declare-fun inv!32971 (IArray!16143) Bool)

(assert (=> b!2157341 (= e!1380097 (and (inv!32971 (xs!11011 (c!341605 (totalInput!3377 (h!30323 stack!12))))) e!1380098))))

(assert (=> b!2157208 (= tp!672017 (and (inv!32968 (c!341605 (totalInput!3377 (h!30323 stack!12)))) e!1380097))))

(assert (= (and b!2157208 ((_ is Node!8069) (c!341605 (totalInput!3377 (h!30323 stack!12))))) b!2157340))

(assert (= b!2157341 b!2157342))

(assert (= (and b!2157208 ((_ is Leaf!11803) (c!341605 (totalInput!3377 (h!30323 stack!12))))) b!2157341))

(declare-fun m!2597633 () Bool)

(assert (=> b!2157340 m!2597633))

(declare-fun m!2597635 () Bool)

(assert (=> b!2157340 m!2597635))

(declare-fun m!2597637 () Bool)

(assert (=> b!2157341 m!2597637))

(assert (=> b!2157208 m!2597551))

(declare-fun e!1380099 () Bool)

(declare-fun tp!672087 () Bool)

(declare-fun b!2157343 () Bool)

(declare-fun tp!672088 () Bool)

(assert (=> b!2157343 (= e!1380099 (and (inv!32968 (left!19182 (c!341605 totalInput!880))) tp!672087 (inv!32968 (right!19512 (c!341605 totalInput!880))) tp!672088))))

(declare-fun b!2157345 () Bool)

(declare-fun e!1380100 () Bool)

(declare-fun tp!672089 () Bool)

(assert (=> b!2157345 (= e!1380100 tp!672089)))

(declare-fun b!2157344 () Bool)

(assert (=> b!2157344 (= e!1380099 (and (inv!32971 (xs!11011 (c!341605 totalInput!880))) e!1380100))))

(assert (=> b!2157209 (= tp!672015 (and (inv!32968 (c!341605 totalInput!880)) e!1380099))))

(assert (= (and b!2157209 ((_ is Node!8069) (c!341605 totalInput!880))) b!2157343))

(assert (= b!2157344 b!2157345))

(assert (= (and b!2157209 ((_ is Leaf!11803) (c!341605 totalInput!880))) b!2157344))

(declare-fun m!2597639 () Bool)

(assert (=> b!2157343 m!2597639))

(declare-fun m!2597641 () Bool)

(assert (=> b!2157343 m!2597641))

(declare-fun m!2597643 () Bool)

(assert (=> b!2157344 m!2597643))

(assert (=> b!2157209 m!2597543))

(declare-fun tp!672091 () Bool)

(declare-fun setRes!17776 () Bool)

(declare-fun setNonEmpty!17776 () Bool)

(declare-fun setElem!17776 () Context!3006)

(declare-fun e!1380101 () Bool)

(assert (=> setNonEmpty!17776 (= setRes!17776 (and tp!672091 (inv!32965 setElem!17776) e!1380101))))

(declare-fun setRest!17776 () (InoxSet Context!3006))

(assert (=> setNonEmpty!17776 (= (_1!14652 (_1!14653 (h!30324 mapDefault!13859))) ((_ map or) (store ((as const (Array Context!3006 Bool)) false) setElem!17776 true) setRest!17776))))

(declare-fun setIsEmpty!17776 () Bool)

(assert (=> setIsEmpty!17776 setRes!17776))

(declare-fun e!1380102 () Bool)

(assert (=> b!2157210 (= tp!672005 e!1380102)))

(declare-fun b!2157347 () Bool)

(declare-fun tp!672092 () Bool)

(assert (=> b!2157347 (= e!1380101 tp!672092)))

(declare-fun b!2157346 () Bool)

(declare-fun tp!672090 () Bool)

(assert (=> b!2157346 (= e!1380102 (and setRes!17776 tp!672090))))

(declare-fun condSetEmpty!17776 () Bool)

(assert (=> b!2157346 (= condSetEmpty!17776 (= (_1!14652 (_1!14653 (h!30324 mapDefault!13859))) ((as const (Array Context!3006 Bool)) false)))))

(assert (= (and b!2157346 condSetEmpty!17776) setIsEmpty!17776))

(assert (= (and b!2157346 (not condSetEmpty!17776)) setNonEmpty!17776))

(assert (= setNonEmpty!17776 b!2157347))

(assert (= (and b!2157210 ((_ is Cons!24923) mapDefault!13859)) b!2157346))

(declare-fun m!2597645 () Bool)

(assert (=> setNonEmpty!17776 m!2597645))

(declare-fun b!2157348 () Bool)

(declare-fun tp!672093 () Bool)

(declare-fun e!1380103 () Bool)

(declare-fun tp!672094 () Bool)

(assert (=> b!2157348 (= e!1380103 (and (inv!32968 (left!19182 (c!341605 (totalInput!3378 cacheFurthestNullable!118)))) tp!672093 (inv!32968 (right!19512 (c!341605 (totalInput!3378 cacheFurthestNullable!118)))) tp!672094))))

(declare-fun b!2157350 () Bool)

(declare-fun e!1380104 () Bool)

(declare-fun tp!672095 () Bool)

(assert (=> b!2157350 (= e!1380104 tp!672095)))

(declare-fun b!2157349 () Bool)

(assert (=> b!2157349 (= e!1380103 (and (inv!32971 (xs!11011 (c!341605 (totalInput!3378 cacheFurthestNullable!118)))) e!1380104))))

(assert (=> b!2157215 (= tp!672013 (and (inv!32968 (c!341605 (totalInput!3378 cacheFurthestNullable!118))) e!1380103))))

(assert (= (and b!2157215 ((_ is Node!8069) (c!341605 (totalInput!3378 cacheFurthestNullable!118)))) b!2157348))

(assert (= b!2157349 b!2157350))

(assert (= (and b!2157215 ((_ is Leaf!11803) (c!341605 (totalInput!3378 cacheFurthestNullable!118)))) b!2157349))

(declare-fun m!2597647 () Bool)

(assert (=> b!2157348 m!2597647))

(declare-fun m!2597649 () Bool)

(assert (=> b!2157348 m!2597649))

(declare-fun m!2597651 () Bool)

(assert (=> b!2157349 m!2597651))

(assert (=> b!2157215 m!2597539))

(declare-fun b_lambda!71017 () Bool)

(assert (= b_lambda!71013 (or b!2157203 b_lambda!71017)))

(declare-fun bs!445921 () Bool)

(declare-fun d!646558 () Bool)

(assert (= bs!445921 (and d!646558 b!2157203)))

(assert (=> bs!445921 (= (dynLambda!11419 lambda!81419 (h!30323 stack!12)) (= (res!929759 (h!30323 stack!12)) res!17610))))

(assert (=> b!2157227 d!646558))

(declare-fun b_lambda!71019 () Bool)

(assert (= b_lambda!71015 (or b!2157195 b_lambda!71019)))

(declare-fun bs!445922 () Bool)

(declare-fun d!646560 () Bool)

(assert (= bs!445922 (and d!646560 b!2157195)))

(assert (=> bs!445922 (= (dynLambda!11419 lambda!81418 (h!30323 stack!12)) (= (totalInput!3377 (h!30323 stack!12)) totalInput!880))))

(assert (=> b!2157229 d!646560))

(check-sat (not b!2157327) (not setNonEmpty!17764) (not b!2157240) (not b!2157310) (not setNonEmpty!17776) (not d!646548) (not b!2157295) (not d!646540) (not b!2157329) (not b!2157345) (not b_next!64431) (not b!2157209) (not b!2157215) (not b!2157208) (not b!2157259) (not setNonEmpty!17765) (not b!2157258) (not d!646550) (not b!2157242) (not b!2157293) (not d!646526) (not b!2157343) (not b!2157230) (not d!646546) (not setNonEmpty!17775) (not b!2157275) (not b_lambda!71017) (not b!2157341) (not b!2157348) (not b!2157239) (not b!2157347) (not b!2157222) (not b!2157307) (not b!2157326) (not b!2157300) (not b!2157228) (not b!2157292) (not b!2157256) b_and!173343 b_and!173341 (not b!2157328) (not b_next!64429) (not d!646534) (not b!2157309) (not d!646554) (not b!2157330) (not b!2157349) (not b!2157257) (not setNonEmpty!17761) (not b!2157350) (not d!646522) (not b!2157237) (not mapNonEmpty!13862) (not b!2157346) (not b!2157308) (not b!2157281) (not b!2157274) (not b!2157315) (not b!2157279) (not b!2157340) (not b_lambda!71019) (not setNonEmpty!17773) (not d!646552) (not b!2157342) (not setNonEmpty!17768) (not setNonEmpty!17774) (not b!2157344) (not b!2157294) (not b!2157331))
(check-sat b_and!173343 b_and!173341 (not b_next!64431) (not b_next!64429))
