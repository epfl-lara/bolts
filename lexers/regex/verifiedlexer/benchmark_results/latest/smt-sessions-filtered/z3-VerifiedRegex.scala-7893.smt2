; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412344 () Bool)

(assert start!412344)

(declare-fun b!4295248 () Bool)

(declare-fun b_free!127743 () Bool)

(declare-fun b_next!128447 () Bool)

(assert (=> b!4295248 (= b_free!127743 (not b_next!128447))))

(declare-fun tp!1318881 () Bool)

(declare-fun b_and!338959 () Bool)

(assert (=> b!4295248 (= tp!1318881 b_and!338959)))

(declare-fun b!4295247 () Bool)

(declare-fun b_free!127745 () Bool)

(declare-fun b_next!128449 () Bool)

(assert (=> b!4295247 (= b_free!127745 (not b_next!128449))))

(declare-fun tp!1318882 () Bool)

(declare-fun b_and!338961 () Bool)

(assert (=> b!4295247 (= tp!1318882 b_and!338961)))

(declare-fun b!4295245 () Bool)

(declare-fun e!2669208 () Bool)

(declare-fun e!2669210 () Bool)

(declare-datatypes ((C!26168 0))(
  ( (C!26169 (val!15410 Int)) )
))
(declare-datatypes ((Regex!12985 0))(
  ( (ElementMatch!12985 (c!730832 C!26168)) (Concat!21304 (regOne!26482 Regex!12985) (regTwo!26482 Regex!12985)) (EmptyExpr!12985) (Star!12985 (reg!13314 Regex!12985)) (EmptyLang!12985) (Union!12985 (regOne!26483 Regex!12985) (regTwo!26483 Regex!12985)) )
))
(declare-datatypes ((List!47942 0))(
  ( (Nil!47818) (Cons!47818 (h!53238 Regex!12985) (t!354549 List!47942)) )
))
(declare-datatypes ((Context!5750 0))(
  ( (Context!5751 (exprs!3375 List!47942)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45576 0))(
  ( (tuple2!45577 (_1!26067 (InoxSet Context!5750)) (_2!26067 Int)) )
))
(declare-datatypes ((tuple2!45578 0))(
  ( (tuple2!45579 (_1!26068 tuple2!45576) (_2!26068 Int)) )
))
(declare-datatypes ((List!47943 0))(
  ( (Nil!47819) (Cons!47819 (h!53239 tuple2!45578) (t!354550 List!47943)) )
))
(declare-datatypes ((array!15930 0))(
  ( (array!15931 (arr!7119 (Array (_ BitVec 32) (_ BitVec 64))) (size!35124 (_ BitVec 32))) )
))
(declare-datatypes ((array!15932 0))(
  ( (array!15933 (arr!7120 (Array (_ BitVec 32) List!47943)) (size!35125 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8934 0))(
  ( (LongMapFixedSize!8935 (defaultEntry!4852 Int) (mask!12929 (_ BitVec 32)) (extraKeys!4716 (_ BitVec 32)) (zeroValue!4726 List!47943) (minValue!4726 List!47943) (_size!8977 (_ BitVec 32)) (_keys!4767 array!15930) (_values!4748 array!15932) (_vacant!4528 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17677 0))(
  ( (Cell!17678 (v!41765 LongMapFixedSize!8934)) )
))
(declare-datatypes ((MutLongMap!4467 0))(
  ( (LongMap!4467 (underlying!9163 Cell!17677)) (MutLongMapExt!4466 (__x!29426 Int)) )
))
(declare-fun lt!1517895 () MutLongMap!4467)

(get-info :version)

(assert (=> b!4295245 (= e!2669208 (and e!2669210 ((_ is LongMap!4467) lt!1517895)))))

(declare-datatypes ((Cell!17679 0))(
  ( (Cell!17680 (v!41766 MutLongMap!4467)) )
))
(declare-datatypes ((Hashable!4383 0))(
  ( (HashableExt!4382 (__x!29427 Int)) )
))
(declare-datatypes ((MutableMap!4373 0))(
  ( (MutableMapExt!4372 (__x!29428 Int)) (HashMap!4373 (underlying!9164 Cell!17679) (hashF!6415 Hashable!4383) (_size!8978 (_ BitVec 32)) (defaultValue!4544 Int)) )
))
(declare-datatypes ((List!47944 0))(
  ( (Nil!47820) (Cons!47820 (h!53240 C!26168) (t!354551 List!47944)) )
))
(declare-datatypes ((IArray!28913 0))(
  ( (IArray!28914 (innerList!14514 List!47944)) )
))
(declare-datatypes ((Conc!14426 0))(
  ( (Node!14426 (left!35461 Conc!14426) (right!35791 Conc!14426) (csize!29082 Int) (cheight!14637 Int)) (Leaf!22320 (xs!17732 IArray!28913) (csize!29083 Int)) (Empty!14426) )
))
(declare-datatypes ((BalanceConc!28342 0))(
  ( (BalanceConc!28343 (c!730833 Conc!14426)) )
))
(declare-datatypes ((CacheFindLongestMatch!540 0))(
  ( (CacheFindLongestMatch!541 (cache!4513 MutableMap!4373) (totalInput!4398 BalanceConc!28342)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!540)

(assert (=> b!4295245 (= lt!1517895 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))

(declare-fun mapIsEmpty!20082 () Bool)

(declare-fun mapRes!20082 () Bool)

(assert (=> mapIsEmpty!20082 mapRes!20082))

(declare-fun b!4295246 () Bool)

(declare-fun e!2669207 () Bool)

(declare-fun localTotalInput!12 () BalanceConc!28342)

(declare-fun tp!1318876 () Bool)

(declare-fun inv!63350 (Conc!14426) Bool)

(assert (=> b!4295246 (= e!2669207 (and (inv!63350 (c!730833 localTotalInput!12)) tp!1318876))))

(declare-fun e!2669213 () Bool)

(assert (=> b!4295247 (= e!2669213 (and e!2669208 tp!1318882))))

(declare-fun e!2669209 () Bool)

(declare-fun e!2669211 () Bool)

(declare-fun tp!1318874 () Bool)

(declare-fun tp!1318880 () Bool)

(declare-fun array_inv!5101 (array!15930) Bool)

(declare-fun array_inv!5102 (array!15932) Bool)

(assert (=> b!4295248 (= e!2669209 (and tp!1318881 tp!1318880 tp!1318874 (array_inv!5101 (_keys!4767 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))) (array_inv!5102 (_values!4748 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))) e!2669211))))

(declare-fun e!2669212 () Bool)

(declare-fun e!2669214 () Bool)

(declare-fun b!4295249 () Bool)

(declare-fun inv!63351 (BalanceConc!28342) Bool)

(assert (=> b!4295249 (= e!2669214 (and e!2669213 (inv!63351 (totalInput!4398 thiss!29019)) e!2669212))))

(declare-fun b!4295250 () Bool)

(declare-fun tp!1318879 () Bool)

(assert (=> b!4295250 (= e!2669212 (and (inv!63350 (c!730833 (totalInput!4398 thiss!29019))) tp!1318879))))

(declare-fun b!4295251 () Bool)

(declare-fun e!2669205 () Bool)

(assert (=> b!4295251 (= e!2669210 e!2669205)))

(assert (=> start!412344 (and (= localTotalInput!12 (totalInput!4398 thiss!29019)) (not ((_ is HashMap!4373) (cache!4513 thiss!29019))))))

(assert (=> start!412344 (and (inv!63351 localTotalInput!12) e!2669207)))

(declare-fun inv!63352 (CacheFindLongestMatch!540) Bool)

(assert (=> start!412344 (and (inv!63352 thiss!29019) e!2669214)))

(declare-fun b!4295244 () Bool)

(declare-fun tp!1318875 () Bool)

(assert (=> b!4295244 (= e!2669211 (and tp!1318875 mapRes!20082))))

(declare-fun condMapEmpty!20082 () Bool)

(declare-fun mapDefault!20082 () List!47943)

(assert (=> b!4295244 (= condMapEmpty!20082 (= (arr!7120 (_values!4748 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47943)) mapDefault!20082)))))

(declare-fun b!4295252 () Bool)

(assert (=> b!4295252 (= e!2669205 e!2669209)))

(declare-fun mapNonEmpty!20082 () Bool)

(declare-fun tp!1318878 () Bool)

(declare-fun tp!1318877 () Bool)

(assert (=> mapNonEmpty!20082 (= mapRes!20082 (and tp!1318878 tp!1318877))))

(declare-fun mapRest!20082 () (Array (_ BitVec 32) List!47943))

(declare-fun mapValue!20082 () List!47943)

(declare-fun mapKey!20082 () (_ BitVec 32))

(assert (=> mapNonEmpty!20082 (= (arr!7120 (_values!4748 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))) (store mapRest!20082 mapKey!20082 mapValue!20082))))

(assert (= start!412344 b!4295246))

(assert (= (and b!4295244 condMapEmpty!20082) mapIsEmpty!20082))

(assert (= (and b!4295244 (not condMapEmpty!20082)) mapNonEmpty!20082))

(assert (= b!4295248 b!4295244))

(assert (= b!4295252 b!4295248))

(assert (= b!4295251 b!4295252))

(assert (= (and b!4295245 ((_ is LongMap!4467) (v!41766 (underlying!9164 (cache!4513 thiss!29019))))) b!4295251))

(assert (= b!4295247 b!4295245))

(assert (= (and b!4295249 ((_ is HashMap!4373) (cache!4513 thiss!29019))) b!4295247))

(assert (= b!4295249 b!4295250))

(assert (= start!412344 b!4295249))

(declare-fun m!4887879 () Bool)

(assert (=> b!4295248 m!4887879))

(declare-fun m!4887881 () Bool)

(assert (=> b!4295248 m!4887881))

(declare-fun m!4887883 () Bool)

(assert (=> b!4295249 m!4887883))

(declare-fun m!4887885 () Bool)

(assert (=> mapNonEmpty!20082 m!4887885))

(declare-fun m!4887887 () Bool)

(assert (=> b!4295250 m!4887887))

(declare-fun m!4887889 () Bool)

(assert (=> start!412344 m!4887889))

(declare-fun m!4887891 () Bool)

(assert (=> start!412344 m!4887891))

(declare-fun m!4887893 () Bool)

(assert (=> b!4295246 m!4887893))

(check-sat (not b!4295244) (not b_next!128449) b_and!338959 (not start!412344) (not b!4295249) (not b!4295250) b_and!338961 (not b_next!128447) (not mapNonEmpty!20082) (not b!4295246) (not b!4295248))
(check-sat b_and!338961 b_and!338959 (not b_next!128449) (not b_next!128447))
(get-model)

(declare-fun d!1266056 () Bool)

(declare-fun c!730836 () Bool)

(assert (=> d!1266056 (= c!730836 ((_ is Node!14426) (c!730833 (totalInput!4398 thiss!29019))))))

(declare-fun e!2669219 () Bool)

(assert (=> d!1266056 (= (inv!63350 (c!730833 (totalInput!4398 thiss!29019))) e!2669219)))

(declare-fun b!4295259 () Bool)

(declare-fun inv!63353 (Conc!14426) Bool)

(assert (=> b!4295259 (= e!2669219 (inv!63353 (c!730833 (totalInput!4398 thiss!29019))))))

(declare-fun b!4295260 () Bool)

(declare-fun e!2669220 () Bool)

(assert (=> b!4295260 (= e!2669219 e!2669220)))

(declare-fun res!1760644 () Bool)

(assert (=> b!4295260 (= res!1760644 (not ((_ is Leaf!22320) (c!730833 (totalInput!4398 thiss!29019)))))))

(assert (=> b!4295260 (=> res!1760644 e!2669220)))

(declare-fun b!4295261 () Bool)

(declare-fun inv!63354 (Conc!14426) Bool)

(assert (=> b!4295261 (= e!2669220 (inv!63354 (c!730833 (totalInput!4398 thiss!29019))))))

(assert (= (and d!1266056 c!730836) b!4295259))

(assert (= (and d!1266056 (not c!730836)) b!4295260))

(assert (= (and b!4295260 (not res!1760644)) b!4295261))

(declare-fun m!4887895 () Bool)

(assert (=> b!4295259 m!4887895))

(declare-fun m!4887897 () Bool)

(assert (=> b!4295261 m!4887897))

(assert (=> b!4295250 d!1266056))

(declare-fun d!1266058 () Bool)

(declare-fun c!730837 () Bool)

(assert (=> d!1266058 (= c!730837 ((_ is Node!14426) (c!730833 localTotalInput!12)))))

(declare-fun e!2669221 () Bool)

(assert (=> d!1266058 (= (inv!63350 (c!730833 localTotalInput!12)) e!2669221)))

(declare-fun b!4295262 () Bool)

(assert (=> b!4295262 (= e!2669221 (inv!63353 (c!730833 localTotalInput!12)))))

(declare-fun b!4295263 () Bool)

(declare-fun e!2669222 () Bool)

(assert (=> b!4295263 (= e!2669221 e!2669222)))

(declare-fun res!1760645 () Bool)

(assert (=> b!4295263 (= res!1760645 (not ((_ is Leaf!22320) (c!730833 localTotalInput!12))))))

(assert (=> b!4295263 (=> res!1760645 e!2669222)))

(declare-fun b!4295264 () Bool)

(assert (=> b!4295264 (= e!2669222 (inv!63354 (c!730833 localTotalInput!12)))))

(assert (= (and d!1266058 c!730837) b!4295262))

(assert (= (and d!1266058 (not c!730837)) b!4295263))

(assert (= (and b!4295263 (not res!1760645)) b!4295264))

(declare-fun m!4887899 () Bool)

(assert (=> b!4295262 m!4887899))

(declare-fun m!4887901 () Bool)

(assert (=> b!4295264 m!4887901))

(assert (=> b!4295246 d!1266058))

(declare-fun d!1266060 () Bool)

(assert (=> d!1266060 (= (array_inv!5101 (_keys!4767 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))) (bvsge (size!35124 (_keys!4767 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4295248 d!1266060))

(declare-fun d!1266062 () Bool)

(assert (=> d!1266062 (= (array_inv!5102 (_values!4748 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))) (bvsge (size!35125 (_values!4748 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4295248 d!1266062))

(declare-fun d!1266064 () Bool)

(declare-fun isBalanced!3888 (Conc!14426) Bool)

(assert (=> d!1266064 (= (inv!63351 (totalInput!4398 thiss!29019)) (isBalanced!3888 (c!730833 (totalInput!4398 thiss!29019))))))

(declare-fun bs!603769 () Bool)

(assert (= bs!603769 d!1266064))

(declare-fun m!4887903 () Bool)

(assert (=> bs!603769 m!4887903))

(assert (=> b!4295249 d!1266064))

(declare-fun d!1266066 () Bool)

(assert (=> d!1266066 (= (inv!63351 localTotalInput!12) (isBalanced!3888 (c!730833 localTotalInput!12)))))

(declare-fun bs!603770 () Bool)

(assert (= bs!603770 d!1266066))

(declare-fun m!4887905 () Bool)

(assert (=> bs!603770 m!4887905))

(assert (=> start!412344 d!1266066))

(declare-fun d!1266068 () Bool)

(declare-fun res!1760648 () Bool)

(declare-fun e!2669225 () Bool)

(assert (=> d!1266068 (=> (not res!1760648) (not e!2669225))))

(assert (=> d!1266068 (= res!1760648 ((_ is HashMap!4373) (cache!4513 thiss!29019)))))

(assert (=> d!1266068 (= (inv!63352 thiss!29019) e!2669225)))

(declare-fun b!4295267 () Bool)

(declare-fun validCacheMapFindLongestMatch!83 (MutableMap!4373 BalanceConc!28342) Bool)

(assert (=> b!4295267 (= e!2669225 (validCacheMapFindLongestMatch!83 (cache!4513 thiss!29019) (totalInput!4398 thiss!29019)))))

(assert (= (and d!1266068 res!1760648) b!4295267))

(declare-fun m!4887907 () Bool)

(assert (=> b!4295267 m!4887907))

(assert (=> start!412344 d!1266068))

(declare-fun tp!1318890 () Bool)

(declare-fun tp!1318891 () Bool)

(declare-fun e!2669231 () Bool)

(declare-fun b!4295276 () Bool)

(assert (=> b!4295276 (= e!2669231 (and (inv!63350 (left!35461 (c!730833 (totalInput!4398 thiss!29019)))) tp!1318890 (inv!63350 (right!35791 (c!730833 (totalInput!4398 thiss!29019)))) tp!1318891))))

(declare-fun b!4295278 () Bool)

(declare-fun e!2669230 () Bool)

(declare-fun tp!1318889 () Bool)

(assert (=> b!4295278 (= e!2669230 tp!1318889)))

(declare-fun b!4295277 () Bool)

(declare-fun inv!63355 (IArray!28913) Bool)

(assert (=> b!4295277 (= e!2669231 (and (inv!63355 (xs!17732 (c!730833 (totalInput!4398 thiss!29019)))) e!2669230))))

(assert (=> b!4295250 (= tp!1318879 (and (inv!63350 (c!730833 (totalInput!4398 thiss!29019))) e!2669231))))

(assert (= (and b!4295250 ((_ is Node!14426) (c!730833 (totalInput!4398 thiss!29019)))) b!4295276))

(assert (= b!4295277 b!4295278))

(assert (= (and b!4295250 ((_ is Leaf!22320) (c!730833 (totalInput!4398 thiss!29019)))) b!4295277))

(declare-fun m!4887909 () Bool)

(assert (=> b!4295276 m!4887909))

(declare-fun m!4887911 () Bool)

(assert (=> b!4295276 m!4887911))

(declare-fun m!4887913 () Bool)

(assert (=> b!4295277 m!4887913))

(assert (=> b!4295250 m!4887887))

(declare-fun tp!1318893 () Bool)

(declare-fun b!4295279 () Bool)

(declare-fun e!2669233 () Bool)

(declare-fun tp!1318894 () Bool)

(assert (=> b!4295279 (= e!2669233 (and (inv!63350 (left!35461 (c!730833 localTotalInput!12))) tp!1318893 (inv!63350 (right!35791 (c!730833 localTotalInput!12))) tp!1318894))))

(declare-fun b!4295281 () Bool)

(declare-fun e!2669232 () Bool)

(declare-fun tp!1318892 () Bool)

(assert (=> b!4295281 (= e!2669232 tp!1318892)))

(declare-fun b!4295280 () Bool)

(assert (=> b!4295280 (= e!2669233 (and (inv!63355 (xs!17732 (c!730833 localTotalInput!12))) e!2669232))))

(assert (=> b!4295246 (= tp!1318876 (and (inv!63350 (c!730833 localTotalInput!12)) e!2669233))))

(assert (= (and b!4295246 ((_ is Node!14426) (c!730833 localTotalInput!12))) b!4295279))

(assert (= b!4295280 b!4295281))

(assert (= (and b!4295246 ((_ is Leaf!22320) (c!730833 localTotalInput!12))) b!4295280))

(declare-fun m!4887915 () Bool)

(assert (=> b!4295279 m!4887915))

(declare-fun m!4887917 () Bool)

(assert (=> b!4295279 m!4887917))

(declare-fun m!4887919 () Bool)

(assert (=> b!4295280 m!4887919))

(assert (=> b!4295246 m!4887893))

(declare-fun b!4295292 () Bool)

(declare-fun e!2669244 () Bool)

(declare-fun tp!1318912 () Bool)

(assert (=> b!4295292 (= e!2669244 tp!1318912)))

(declare-fun b!4295293 () Bool)

(declare-fun e!2669245 () Bool)

(declare-fun setRes!26694 () Bool)

(declare-fun tp!1318914 () Bool)

(assert (=> b!4295293 (= e!2669245 (and setRes!26694 tp!1318914))))

(declare-fun condSetEmpty!26695 () Bool)

(declare-fun mapValue!20085 () List!47943)

(assert (=> b!4295293 (= condSetEmpty!26695 (= (_1!26067 (_1!26068 (h!53239 mapValue!20085))) ((as const (Array Context!5750 Bool)) false)))))

(declare-fun mapIsEmpty!20085 () Bool)

(declare-fun mapRes!20085 () Bool)

(assert (=> mapIsEmpty!20085 mapRes!20085))

(declare-fun setIsEmpty!26695 () Bool)

(assert (=> setIsEmpty!26695 setRes!26694))

(declare-fun mapNonEmpty!20085 () Bool)

(declare-fun tp!1318909 () Bool)

(assert (=> mapNonEmpty!20085 (= mapRes!20085 (and tp!1318909 e!2669245))))

(declare-fun mapRest!20085 () (Array (_ BitVec 32) List!47943))

(declare-fun mapKey!20085 () (_ BitVec 32))

(assert (=> mapNonEmpty!20085 (= mapRest!20082 (store mapRest!20085 mapKey!20085 mapValue!20085))))

(declare-fun setIsEmpty!26694 () Bool)

(declare-fun setRes!26695 () Bool)

(assert (=> setIsEmpty!26694 setRes!26695))

(declare-fun condMapEmpty!20085 () Bool)

(declare-fun mapDefault!20085 () List!47943)

(assert (=> mapNonEmpty!20082 (= condMapEmpty!20085 (= mapRest!20082 ((as const (Array (_ BitVec 32) List!47943)) mapDefault!20085)))))

(declare-fun e!2669242 () Bool)

(assert (=> mapNonEmpty!20082 (= tp!1318878 (and e!2669242 mapRes!20085))))

(declare-fun setNonEmpty!26694 () Bool)

(declare-fun tp!1318913 () Bool)

(declare-fun setElem!26694 () Context!5750)

(declare-fun inv!63356 (Context!5750) Bool)

(assert (=> setNonEmpty!26694 (= setRes!26695 (and tp!1318913 (inv!63356 setElem!26694) e!2669244))))

(declare-fun setRest!26695 () (InoxSet Context!5750))

(assert (=> setNonEmpty!26694 (= (_1!26067 (_1!26068 (h!53239 mapDefault!20085))) ((_ map or) (store ((as const (Array Context!5750 Bool)) false) setElem!26694 true) setRest!26695))))

(declare-fun setNonEmpty!26695 () Bool)

(declare-fun e!2669243 () Bool)

(declare-fun tp!1318911 () Bool)

(declare-fun setElem!26695 () Context!5750)

(assert (=> setNonEmpty!26695 (= setRes!26694 (and tp!1318911 (inv!63356 setElem!26695) e!2669243))))

(declare-fun setRest!26694 () (InoxSet Context!5750))

(assert (=> setNonEmpty!26695 (= (_1!26067 (_1!26068 (h!53239 mapValue!20085))) ((_ map or) (store ((as const (Array Context!5750 Bool)) false) setElem!26695 true) setRest!26694))))

(declare-fun b!4295294 () Bool)

(declare-fun tp!1318915 () Bool)

(assert (=> b!4295294 (= e!2669242 (and setRes!26695 tp!1318915))))

(declare-fun condSetEmpty!26694 () Bool)

(assert (=> b!4295294 (= condSetEmpty!26694 (= (_1!26067 (_1!26068 (h!53239 mapDefault!20085))) ((as const (Array Context!5750 Bool)) false)))))

(declare-fun b!4295295 () Bool)

(declare-fun tp!1318910 () Bool)

(assert (=> b!4295295 (= e!2669243 tp!1318910)))

(assert (= (and mapNonEmpty!20082 condMapEmpty!20085) mapIsEmpty!20085))

(assert (= (and mapNonEmpty!20082 (not condMapEmpty!20085)) mapNonEmpty!20085))

(assert (= (and b!4295293 condSetEmpty!26695) setIsEmpty!26695))

(assert (= (and b!4295293 (not condSetEmpty!26695)) setNonEmpty!26695))

(assert (= setNonEmpty!26695 b!4295295))

(assert (= (and mapNonEmpty!20085 ((_ is Cons!47819) mapValue!20085)) b!4295293))

(assert (= (and b!4295294 condSetEmpty!26694) setIsEmpty!26694))

(assert (= (and b!4295294 (not condSetEmpty!26694)) setNonEmpty!26694))

(assert (= setNonEmpty!26694 b!4295292))

(assert (= (and mapNonEmpty!20082 ((_ is Cons!47819) mapDefault!20085)) b!4295294))

(declare-fun m!4887921 () Bool)

(assert (=> mapNonEmpty!20085 m!4887921))

(declare-fun m!4887923 () Bool)

(assert (=> setNonEmpty!26694 m!4887923))

(declare-fun m!4887925 () Bool)

(assert (=> setNonEmpty!26695 m!4887925))

(declare-fun b!4295302 () Bool)

(declare-fun e!2669250 () Bool)

(declare-fun setRes!26698 () Bool)

(declare-fun tp!1318923 () Bool)

(assert (=> b!4295302 (= e!2669250 (and setRes!26698 tp!1318923))))

(declare-fun condSetEmpty!26698 () Bool)

(assert (=> b!4295302 (= condSetEmpty!26698 (= (_1!26067 (_1!26068 (h!53239 mapValue!20082))) ((as const (Array Context!5750 Bool)) false)))))

(declare-fun b!4295303 () Bool)

(declare-fun e!2669251 () Bool)

(declare-fun tp!1318922 () Bool)

(assert (=> b!4295303 (= e!2669251 tp!1318922)))

(declare-fun setNonEmpty!26698 () Bool)

(declare-fun setElem!26698 () Context!5750)

(declare-fun tp!1318924 () Bool)

(assert (=> setNonEmpty!26698 (= setRes!26698 (and tp!1318924 (inv!63356 setElem!26698) e!2669251))))

(declare-fun setRest!26698 () (InoxSet Context!5750))

(assert (=> setNonEmpty!26698 (= (_1!26067 (_1!26068 (h!53239 mapValue!20082))) ((_ map or) (store ((as const (Array Context!5750 Bool)) false) setElem!26698 true) setRest!26698))))

(assert (=> mapNonEmpty!20082 (= tp!1318877 e!2669250)))

(declare-fun setIsEmpty!26698 () Bool)

(assert (=> setIsEmpty!26698 setRes!26698))

(assert (= (and b!4295302 condSetEmpty!26698) setIsEmpty!26698))

(assert (= (and b!4295302 (not condSetEmpty!26698)) setNonEmpty!26698))

(assert (= setNonEmpty!26698 b!4295303))

(assert (= (and mapNonEmpty!20082 ((_ is Cons!47819) mapValue!20082)) b!4295302))

(declare-fun m!4887927 () Bool)

(assert (=> setNonEmpty!26698 m!4887927))

(declare-fun b!4295304 () Bool)

(declare-fun e!2669252 () Bool)

(declare-fun setRes!26699 () Bool)

(declare-fun tp!1318926 () Bool)

(assert (=> b!4295304 (= e!2669252 (and setRes!26699 tp!1318926))))

(declare-fun condSetEmpty!26699 () Bool)

(assert (=> b!4295304 (= condSetEmpty!26699 (= (_1!26067 (_1!26068 (h!53239 mapDefault!20082))) ((as const (Array Context!5750 Bool)) false)))))

(declare-fun b!4295305 () Bool)

(declare-fun e!2669253 () Bool)

(declare-fun tp!1318925 () Bool)

(assert (=> b!4295305 (= e!2669253 tp!1318925)))

(declare-fun tp!1318927 () Bool)

(declare-fun setElem!26699 () Context!5750)

(declare-fun setNonEmpty!26699 () Bool)

(assert (=> setNonEmpty!26699 (= setRes!26699 (and tp!1318927 (inv!63356 setElem!26699) e!2669253))))

(declare-fun setRest!26699 () (InoxSet Context!5750))

(assert (=> setNonEmpty!26699 (= (_1!26067 (_1!26068 (h!53239 mapDefault!20082))) ((_ map or) (store ((as const (Array Context!5750 Bool)) false) setElem!26699 true) setRest!26699))))

(assert (=> b!4295244 (= tp!1318875 e!2669252)))

(declare-fun setIsEmpty!26699 () Bool)

(assert (=> setIsEmpty!26699 setRes!26699))

(assert (= (and b!4295304 condSetEmpty!26699) setIsEmpty!26699))

(assert (= (and b!4295304 (not condSetEmpty!26699)) setNonEmpty!26699))

(assert (= setNonEmpty!26699 b!4295305))

(assert (= (and b!4295244 ((_ is Cons!47819) mapDefault!20082)) b!4295304))

(declare-fun m!4887929 () Bool)

(assert (=> setNonEmpty!26699 m!4887929))

(declare-fun b!4295306 () Bool)

(declare-fun e!2669254 () Bool)

(declare-fun setRes!26700 () Bool)

(declare-fun tp!1318929 () Bool)

(assert (=> b!4295306 (= e!2669254 (and setRes!26700 tp!1318929))))

(declare-fun condSetEmpty!26700 () Bool)

(assert (=> b!4295306 (= condSetEmpty!26700 (= (_1!26067 (_1!26068 (h!53239 (zeroValue!4726 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))))) ((as const (Array Context!5750 Bool)) false)))))

(declare-fun b!4295307 () Bool)

(declare-fun e!2669255 () Bool)

(declare-fun tp!1318928 () Bool)

(assert (=> b!4295307 (= e!2669255 tp!1318928)))

(declare-fun setElem!26700 () Context!5750)

(declare-fun tp!1318930 () Bool)

(declare-fun setNonEmpty!26700 () Bool)

(assert (=> setNonEmpty!26700 (= setRes!26700 (and tp!1318930 (inv!63356 setElem!26700) e!2669255))))

(declare-fun setRest!26700 () (InoxSet Context!5750))

(assert (=> setNonEmpty!26700 (= (_1!26067 (_1!26068 (h!53239 (zeroValue!4726 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5750 Bool)) false) setElem!26700 true) setRest!26700))))

(assert (=> b!4295248 (= tp!1318880 e!2669254)))

(declare-fun setIsEmpty!26700 () Bool)

(assert (=> setIsEmpty!26700 setRes!26700))

(assert (= (and b!4295306 condSetEmpty!26700) setIsEmpty!26700))

(assert (= (and b!4295306 (not condSetEmpty!26700)) setNonEmpty!26700))

(assert (= setNonEmpty!26700 b!4295307))

(assert (= (and b!4295248 ((_ is Cons!47819) (zeroValue!4726 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019)))))))) b!4295306))

(declare-fun m!4887931 () Bool)

(assert (=> setNonEmpty!26700 m!4887931))

(declare-fun b!4295308 () Bool)

(declare-fun e!2669256 () Bool)

(declare-fun setRes!26701 () Bool)

(declare-fun tp!1318932 () Bool)

(assert (=> b!4295308 (= e!2669256 (and setRes!26701 tp!1318932))))

(declare-fun condSetEmpty!26701 () Bool)

(assert (=> b!4295308 (= condSetEmpty!26701 (= (_1!26067 (_1!26068 (h!53239 (minValue!4726 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))))) ((as const (Array Context!5750 Bool)) false)))))

(declare-fun b!4295309 () Bool)

(declare-fun e!2669257 () Bool)

(declare-fun tp!1318931 () Bool)

(assert (=> b!4295309 (= e!2669257 tp!1318931)))

(declare-fun tp!1318933 () Bool)

(declare-fun setElem!26701 () Context!5750)

(declare-fun setNonEmpty!26701 () Bool)

(assert (=> setNonEmpty!26701 (= setRes!26701 (and tp!1318933 (inv!63356 setElem!26701) e!2669257))))

(declare-fun setRest!26701 () (InoxSet Context!5750))

(assert (=> setNonEmpty!26701 (= (_1!26067 (_1!26068 (h!53239 (minValue!4726 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5750 Bool)) false) setElem!26701 true) setRest!26701))))

(assert (=> b!4295248 (= tp!1318874 e!2669256)))

(declare-fun setIsEmpty!26701 () Bool)

(assert (=> setIsEmpty!26701 setRes!26701))

(assert (= (and b!4295308 condSetEmpty!26701) setIsEmpty!26701))

(assert (= (and b!4295308 (not condSetEmpty!26701)) setNonEmpty!26701))

(assert (= setNonEmpty!26701 b!4295309))

(assert (= (and b!4295248 ((_ is Cons!47819) (minValue!4726 (v!41765 (underlying!9163 (v!41766 (underlying!9164 (cache!4513 thiss!29019)))))))) b!4295308))

(declare-fun m!4887933 () Bool)

(assert (=> setNonEmpty!26701 m!4887933))

(check-sat (not d!1266064) (not b!4295279) (not b!4295267) (not b!4295309) (not b!4295308) (not b!4295305) (not b_next!128447) (not b!4295307) (not b!4295277) (not mapNonEmpty!20085) (not b!4295293) (not b!4295261) (not b!4295278) (not setNonEmpty!26695) (not b_next!128449) (not b!4295276) (not b!4295259) (not b!4295280) b_and!338959 (not b!4295262) (not b!4295246) (not b!4295281) (not setNonEmpty!26701) (not b!4295250) (not b!4295303) (not b!4295304) (not setNonEmpty!26700) b_and!338961 (not b!4295264) (not b!4295294) (not b!4295306) (not setNonEmpty!26698) (not b!4295292) (not b!4295302) (not setNonEmpty!26699) (not b!4295295) (not d!1266066) (not setNonEmpty!26694))
(check-sat b_and!338961 b_and!338959 (not b_next!128449) (not b_next!128447))
