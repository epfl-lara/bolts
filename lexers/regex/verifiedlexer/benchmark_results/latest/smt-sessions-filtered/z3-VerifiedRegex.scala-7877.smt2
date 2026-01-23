; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412070 () Bool)

(assert start!412070)

(declare-fun b!4290683 () Bool)

(declare-fun b_free!127399 () Bool)

(declare-fun b_next!128103 () Bool)

(assert (=> b!4290683 (= b_free!127399 (not b_next!128103))))

(declare-fun tp!1315854 () Bool)

(declare-fun b_and!338615 () Bool)

(assert (=> b!4290683 (= tp!1315854 b_and!338615)))

(declare-fun b!4290677 () Bool)

(declare-fun b_free!127401 () Bool)

(declare-fun b_next!128105 () Bool)

(assert (=> b!4290677 (= b_free!127401 (not b_next!128105))))

(declare-fun tp!1315856 () Bool)

(declare-fun b_and!338617 () Bool)

(assert (=> b!4290677 (= tp!1315856 b_and!338617)))

(declare-fun b!4290676 () Bool)

(declare-fun e!2665330 () Bool)

(declare-datatypes ((C!26104 0))(
  ( (C!26105 (val!15378 Int)) )
))
(declare-datatypes ((List!47803 0))(
  ( (Nil!47679) (Cons!47679 (h!53099 C!26104) (t!354407 List!47803)) )
))
(declare-datatypes ((IArray!28851 0))(
  ( (IArray!28852 (innerList!14483 List!47803)) )
))
(declare-datatypes ((Conc!14395 0))(
  ( (Node!14395 (left!35406 Conc!14395) (right!35736 Conc!14395) (csize!29020 Int) (cheight!14606 Int)) (Leaf!22273 (xs!17701 IArray!28851) (csize!29021 Int)) (Empty!14395) )
))
(declare-datatypes ((BalanceConc!28280 0))(
  ( (BalanceConc!28281 (c!730303 Conc!14395)) )
))
(declare-fun totalInput!812 () BalanceConc!28280)

(declare-fun tp!1315858 () Bool)

(declare-fun inv!63181 (Conc!14395) Bool)

(assert (=> b!4290676 (= e!2665330 (and (inv!63181 (c!730303 totalInput!812)) tp!1315858))))

(declare-fun res!1759685 () Bool)

(declare-fun e!2665325 () Bool)

(assert (=> start!412070 (=> (not res!1759685) (not e!2665325))))

(declare-fun from!999 () Int)

(assert (=> start!412070 (= res!1759685 (>= from!999 0))))

(assert (=> start!412070 e!2665325))

(assert (=> start!412070 true))

(declare-datatypes ((Regex!12953 0))(
  ( (ElementMatch!12953 (c!730304 C!26104)) (Concat!21272 (regOne!26418 Regex!12953) (regTwo!26418 Regex!12953)) (EmptyExpr!12953) (Star!12953 (reg!13282 Regex!12953)) (EmptyLang!12953) (Union!12953 (regOne!26419 Regex!12953) (regTwo!26419 Regex!12953)) )
))
(declare-datatypes ((List!47804 0))(
  ( (Nil!47680) (Cons!47680 (h!53100 Regex!12953) (t!354408 List!47804)) )
))
(declare-datatypes ((Context!5686 0))(
  ( (Context!5687 (exprs!3343 List!47804)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45322 0))(
  ( (tuple2!45323 (_1!25876 (InoxSet Context!5686)) (_2!25876 Int)) )
))
(declare-datatypes ((Hashable!4310 0))(
  ( (HashableExt!4309 (__x!29207 Int)) )
))
(declare-datatypes ((array!15706 0))(
  ( (array!15707 (arr!7014 (Array (_ BitVec 32) (_ BitVec 64))) (size!34991 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!45324 0))(
  ( (tuple2!45325 (_1!25877 tuple2!45322) (_2!25877 Int)) )
))
(declare-datatypes ((List!47805 0))(
  ( (Nil!47681) (Cons!47681 (h!53101 tuple2!45324) (t!354409 List!47805)) )
))
(declare-datatypes ((array!15708 0))(
  ( (array!15709 (arr!7015 (Array (_ BitVec 32) List!47805)) (size!34992 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8788 0))(
  ( (LongMapFixedSize!8789 (defaultEntry!4779 Int) (mask!12840 (_ BitVec 32)) (extraKeys!4643 (_ BitVec 32)) (zeroValue!4653 List!47805) (minValue!4653 List!47805) (_size!8831 (_ BitVec 32)) (_keys!4694 array!15706) (_values!4675 array!15708) (_vacant!4455 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17385 0))(
  ( (Cell!17386 (v!41598 LongMapFixedSize!8788)) )
))
(declare-datatypes ((MutLongMap!4394 0))(
  ( (LongMap!4394 (underlying!9017 Cell!17385)) (MutLongMapExt!4393 (__x!29208 Int)) )
))
(declare-datatypes ((Cell!17387 0))(
  ( (Cell!17388 (v!41599 MutLongMap!4394)) )
))
(declare-datatypes ((MutableMap!4300 0))(
  ( (MutableMapExt!4299 (__x!29209 Int)) (HashMap!4300 (underlying!9018 Cell!17387) (hashF!6342 Hashable!4310) (_size!8832 (_ BitVec 32)) (defaultValue!4471 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!478 0))(
  ( (CacheFindLongestMatch!479 (cache!4440 MutableMap!4300) (totalInput!4357 BalanceConc!28280)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!478)

(declare-fun e!2665322 () Bool)

(declare-fun inv!63182 (CacheFindLongestMatch!478) Bool)

(assert (=> start!412070 (and (inv!63182 cacheFindLongestMatch!183) e!2665322)))

(declare-fun inv!63183 (BalanceConc!28280) Bool)

(assert (=> start!412070 (and (inv!63183 totalInput!812) e!2665330)))

(declare-fun e!2665329 () Bool)

(declare-fun tp!1315860 () Bool)

(declare-fun tp!1315855 () Bool)

(declare-fun e!2665326 () Bool)

(declare-fun array_inv!5033 (array!15706) Bool)

(declare-fun array_inv!5034 (array!15708) Bool)

(assert (=> b!4290677 (= e!2665326 (and tp!1315856 tp!1315855 tp!1315860 (array_inv!5033 (_keys!4694 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))) (array_inv!5034 (_values!4675 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))) e!2665329))))

(declare-fun mapIsEmpty!19791 () Bool)

(declare-fun mapRes!19791 () Bool)

(assert (=> mapIsEmpty!19791 mapRes!19791))

(declare-fun b!4290678 () Bool)

(declare-fun e!2665332 () Bool)

(declare-fun validCacheMapFindLongestMatch!77 (MutableMap!4300 BalanceConc!28280) Bool)

(assert (=> b!4290678 (= e!2665332 (not (validCacheMapFindLongestMatch!77 (cache!4440 cacheFindLongestMatch!183) (totalInput!4357 cacheFindLongestMatch!183))))))

(declare-fun b!4290679 () Bool)

(declare-fun e!2665328 () Bool)

(declare-fun e!2665327 () Bool)

(assert (=> b!4290679 (= e!2665328 e!2665327)))

(declare-fun b!4290680 () Bool)

(declare-fun e!2665333 () Bool)

(declare-fun lt!1516852 () MutLongMap!4394)

(get-info :version)

(assert (=> b!4290680 (= e!2665333 (and e!2665328 ((_ is LongMap!4394) lt!1516852)))))

(assert (=> b!4290680 (= lt!1516852 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))

(declare-fun mapNonEmpty!19791 () Bool)

(declare-fun tp!1315852 () Bool)

(declare-fun tp!1315853 () Bool)

(assert (=> mapNonEmpty!19791 (= mapRes!19791 (and tp!1315852 tp!1315853))))

(declare-fun mapValue!19791 () List!47805)

(declare-fun mapKey!19791 () (_ BitVec 32))

(declare-fun mapRest!19791 () (Array (_ BitVec 32) List!47805))

(assert (=> mapNonEmpty!19791 (= (arr!7015 (_values!4675 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))) (store mapRest!19791 mapKey!19791 mapValue!19791))))

(declare-fun b!4290681 () Bool)

(assert (=> b!4290681 (= e!2665327 e!2665326)))

(declare-fun b!4290682 () Bool)

(declare-fun tp!1315857 () Bool)

(assert (=> b!4290682 (= e!2665329 (and tp!1315857 mapRes!19791))))

(declare-fun condMapEmpty!19791 () Bool)

(declare-fun mapDefault!19791 () List!47805)

(assert (=> b!4290682 (= condMapEmpty!19791 (= (arr!7015 (_values!4675 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47805)) mapDefault!19791)))))

(declare-fun e!2665323 () Bool)

(assert (=> b!4290683 (= e!2665323 (and e!2665333 tp!1315854))))

(declare-fun b!4290684 () Bool)

(declare-fun e!2665324 () Bool)

(assert (=> b!4290684 (= e!2665322 (and e!2665323 (inv!63183 (totalInput!4357 cacheFindLongestMatch!183)) e!2665324))))

(declare-fun b!4290685 () Bool)

(declare-fun tp!1315859 () Bool)

(assert (=> b!4290685 (= e!2665324 (and (inv!63181 (c!730303 (totalInput!4357 cacheFindLongestMatch!183))) tp!1315859))))

(declare-fun b!4290686 () Bool)

(assert (=> b!4290686 (= e!2665325 e!2665332)))

(declare-fun res!1759686 () Bool)

(assert (=> b!4290686 (=> (not res!1759686) (not e!2665332))))

(declare-fun totalInputSize!257 () Int)

(declare-fun lt!1516853 () Int)

(assert (=> b!4290686 (= res!1759686 (and (<= from!999 lt!1516853) (= totalInputSize!257 lt!1516853) (= (totalInput!4357 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!34993 (BalanceConc!28280) Int)

(assert (=> b!4290686 (= lt!1516853 (size!34993 totalInput!812))))

(assert (= (and start!412070 res!1759685) b!4290686))

(assert (= (and b!4290686 res!1759686) b!4290678))

(assert (= (and b!4290682 condMapEmpty!19791) mapIsEmpty!19791))

(assert (= (and b!4290682 (not condMapEmpty!19791)) mapNonEmpty!19791))

(assert (= b!4290677 b!4290682))

(assert (= b!4290681 b!4290677))

(assert (= b!4290679 b!4290681))

(assert (= (and b!4290680 ((_ is LongMap!4394) (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))) b!4290679))

(assert (= b!4290683 b!4290680))

(assert (= (and b!4290684 ((_ is HashMap!4300) (cache!4440 cacheFindLongestMatch!183))) b!4290683))

(assert (= b!4290684 b!4290685))

(assert (= start!412070 b!4290684))

(assert (= start!412070 b!4290676))

(declare-fun m!4885024 () Bool)

(assert (=> b!4290686 m!4885024))

(declare-fun m!4885026 () Bool)

(assert (=> b!4290677 m!4885026))

(declare-fun m!4885028 () Bool)

(assert (=> b!4290677 m!4885028))

(declare-fun m!4885030 () Bool)

(assert (=> mapNonEmpty!19791 m!4885030))

(declare-fun m!4885032 () Bool)

(assert (=> b!4290684 m!4885032))

(declare-fun m!4885034 () Bool)

(assert (=> start!412070 m!4885034))

(declare-fun m!4885036 () Bool)

(assert (=> start!412070 m!4885036))

(declare-fun m!4885038 () Bool)

(assert (=> b!4290678 m!4885038))

(declare-fun m!4885040 () Bool)

(assert (=> b!4290676 m!4885040))

(declare-fun m!4885042 () Bool)

(assert (=> b!4290685 m!4885042))

(check-sat (not b_next!128105) (not b_next!128103) (not start!412070) b_and!338615 b_and!338617 (not b!4290676) (not b!4290682) (not mapNonEmpty!19791) (not b!4290686) (not b!4290678) (not b!4290684) (not b!4290685) (not b!4290677))
(check-sat b_and!338615 b_and!338617 (not b_next!128105) (not b_next!128103))
(get-model)

(declare-fun b!4290692 () Bool)

(assert (=> b!4290692 true))

(declare-fun d!1265644 () Bool)

(declare-fun res!1759691 () Bool)

(declare-fun e!2665336 () Bool)

(assert (=> d!1265644 (=> (not res!1759691) (not e!2665336))))

(declare-fun valid!3413 (MutableMap!4300) Bool)

(assert (=> d!1265644 (= res!1759691 (valid!3413 (cache!4440 cacheFindLongestMatch!183)))))

(assert (=> d!1265644 (= (validCacheMapFindLongestMatch!77 (cache!4440 cacheFindLongestMatch!183) (totalInput!4357 cacheFindLongestMatch!183)) e!2665336)))

(declare-fun b!4290691 () Bool)

(declare-fun res!1759692 () Bool)

(assert (=> b!4290691 (=> (not res!1759692) (not e!2665336))))

(declare-fun invariantList!512 (List!47805) Bool)

(declare-datatypes ((ListMap!1383 0))(
  ( (ListMap!1384 (toList!2125 List!47805)) )
))
(declare-fun map!9791 (MutableMap!4300) ListMap!1383)

(assert (=> b!4290691 (= res!1759692 (invariantList!512 (toList!2125 (map!9791 (cache!4440 cacheFindLongestMatch!183)))))))

(declare-fun lambda!131508 () Int)

(declare-fun forall!8552 (List!47805 Int) Bool)

(assert (=> b!4290692 (= e!2665336 (forall!8552 (toList!2125 (map!9791 (cache!4440 cacheFindLongestMatch!183))) lambda!131508))))

(assert (= (and d!1265644 res!1759691) b!4290691))

(assert (= (and b!4290691 res!1759692) b!4290692))

(declare-fun m!4885045 () Bool)

(assert (=> d!1265644 m!4885045))

(declare-fun m!4885047 () Bool)

(assert (=> b!4290691 m!4885047))

(declare-fun m!4885049 () Bool)

(assert (=> b!4290691 m!4885049))

(assert (=> b!4290692 m!4885047))

(declare-fun m!4885051 () Bool)

(assert (=> b!4290692 m!4885051))

(assert (=> b!4290678 d!1265644))

(declare-fun d!1265646 () Bool)

(declare-fun res!1759695 () Bool)

(declare-fun e!2665339 () Bool)

(assert (=> d!1265646 (=> (not res!1759695) (not e!2665339))))

(assert (=> d!1265646 (= res!1759695 ((_ is HashMap!4300) (cache!4440 cacheFindLongestMatch!183)))))

(assert (=> d!1265646 (= (inv!63182 cacheFindLongestMatch!183) e!2665339)))

(declare-fun b!4290697 () Bool)

(assert (=> b!4290697 (= e!2665339 (validCacheMapFindLongestMatch!77 (cache!4440 cacheFindLongestMatch!183) (totalInput!4357 cacheFindLongestMatch!183)))))

(assert (= (and d!1265646 res!1759695) b!4290697))

(assert (=> b!4290697 m!4885038))

(assert (=> start!412070 d!1265646))

(declare-fun d!1265648 () Bool)

(declare-fun isBalanced!3884 (Conc!14395) Bool)

(assert (=> d!1265648 (= (inv!63183 totalInput!812) (isBalanced!3884 (c!730303 totalInput!812)))))

(declare-fun bs!602960 () Bool)

(assert (= bs!602960 d!1265648))

(declare-fun m!4885053 () Bool)

(assert (=> bs!602960 m!4885053))

(assert (=> start!412070 d!1265648))

(declare-fun d!1265650 () Bool)

(declare-fun lt!1516856 () Int)

(declare-fun size!34994 (List!47803) Int)

(declare-fun list!17360 (BalanceConc!28280) List!47803)

(assert (=> d!1265650 (= lt!1516856 (size!34994 (list!17360 totalInput!812)))))

(declare-fun size!34995 (Conc!14395) Int)

(assert (=> d!1265650 (= lt!1516856 (size!34995 (c!730303 totalInput!812)))))

(assert (=> d!1265650 (= (size!34993 totalInput!812) lt!1516856)))

(declare-fun bs!602961 () Bool)

(assert (= bs!602961 d!1265650))

(declare-fun m!4885055 () Bool)

(assert (=> bs!602961 m!4885055))

(assert (=> bs!602961 m!4885055))

(declare-fun m!4885057 () Bool)

(assert (=> bs!602961 m!4885057))

(declare-fun m!4885059 () Bool)

(assert (=> bs!602961 m!4885059))

(assert (=> b!4290686 d!1265650))

(declare-fun d!1265652 () Bool)

(assert (=> d!1265652 (= (array_inv!5033 (_keys!4694 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))) (bvsge (size!34991 (_keys!4694 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))) #b00000000000000000000000000000000))))

(assert (=> b!4290677 d!1265652))

(declare-fun d!1265654 () Bool)

(assert (=> d!1265654 (= (array_inv!5034 (_values!4675 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))) (bvsge (size!34992 (_values!4675 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))) #b00000000000000000000000000000000))))

(assert (=> b!4290677 d!1265654))

(declare-fun d!1265656 () Bool)

(declare-fun c!730307 () Bool)

(assert (=> d!1265656 (= c!730307 ((_ is Node!14395) (c!730303 (totalInput!4357 cacheFindLongestMatch!183))))))

(declare-fun e!2665344 () Bool)

(assert (=> d!1265656 (= (inv!63181 (c!730303 (totalInput!4357 cacheFindLongestMatch!183))) e!2665344)))

(declare-fun b!4290704 () Bool)

(declare-fun inv!63184 (Conc!14395) Bool)

(assert (=> b!4290704 (= e!2665344 (inv!63184 (c!730303 (totalInput!4357 cacheFindLongestMatch!183))))))

(declare-fun b!4290705 () Bool)

(declare-fun e!2665345 () Bool)

(assert (=> b!4290705 (= e!2665344 e!2665345)))

(declare-fun res!1759698 () Bool)

(assert (=> b!4290705 (= res!1759698 (not ((_ is Leaf!22273) (c!730303 (totalInput!4357 cacheFindLongestMatch!183)))))))

(assert (=> b!4290705 (=> res!1759698 e!2665345)))

(declare-fun b!4290706 () Bool)

(declare-fun inv!63185 (Conc!14395) Bool)

(assert (=> b!4290706 (= e!2665345 (inv!63185 (c!730303 (totalInput!4357 cacheFindLongestMatch!183))))))

(assert (= (and d!1265656 c!730307) b!4290704))

(assert (= (and d!1265656 (not c!730307)) b!4290705))

(assert (= (and b!4290705 (not res!1759698)) b!4290706))

(declare-fun m!4885061 () Bool)

(assert (=> b!4290704 m!4885061))

(declare-fun m!4885063 () Bool)

(assert (=> b!4290706 m!4885063))

(assert (=> b!4290685 d!1265656))

(declare-fun d!1265658 () Bool)

(declare-fun c!730308 () Bool)

(assert (=> d!1265658 (= c!730308 ((_ is Node!14395) (c!730303 totalInput!812)))))

(declare-fun e!2665346 () Bool)

(assert (=> d!1265658 (= (inv!63181 (c!730303 totalInput!812)) e!2665346)))

(declare-fun b!4290707 () Bool)

(assert (=> b!4290707 (= e!2665346 (inv!63184 (c!730303 totalInput!812)))))

(declare-fun b!4290708 () Bool)

(declare-fun e!2665347 () Bool)

(assert (=> b!4290708 (= e!2665346 e!2665347)))

(declare-fun res!1759699 () Bool)

(assert (=> b!4290708 (= res!1759699 (not ((_ is Leaf!22273) (c!730303 totalInput!812))))))

(assert (=> b!4290708 (=> res!1759699 e!2665347)))

(declare-fun b!4290709 () Bool)

(assert (=> b!4290709 (= e!2665347 (inv!63185 (c!730303 totalInput!812)))))

(assert (= (and d!1265658 c!730308) b!4290707))

(assert (= (and d!1265658 (not c!730308)) b!4290708))

(assert (= (and b!4290708 (not res!1759699)) b!4290709))

(declare-fun m!4885065 () Bool)

(assert (=> b!4290707 m!4885065))

(declare-fun m!4885067 () Bool)

(assert (=> b!4290709 m!4885067))

(assert (=> b!4290676 d!1265658))

(declare-fun d!1265660 () Bool)

(assert (=> d!1265660 (= (inv!63183 (totalInput!4357 cacheFindLongestMatch!183)) (isBalanced!3884 (c!730303 (totalInput!4357 cacheFindLongestMatch!183))))))

(declare-fun bs!602962 () Bool)

(assert (= bs!602962 d!1265660))

(declare-fun m!4885069 () Bool)

(assert (=> bs!602962 m!4885069))

(assert (=> b!4290684 d!1265660))

(declare-fun b!4290716 () Bool)

(declare-fun e!2665353 () Bool)

(declare-fun setRes!26433 () Bool)

(declare-fun tp!1315868 () Bool)

(assert (=> b!4290716 (= e!2665353 (and setRes!26433 tp!1315868))))

(declare-fun condSetEmpty!26433 () Bool)

(assert (=> b!4290716 (= condSetEmpty!26433 (= (_1!25876 (_1!25877 (h!53101 mapDefault!19791))) ((as const (Array Context!5686 Bool)) false)))))

(declare-fun setNonEmpty!26433 () Bool)

(declare-fun tp!1315867 () Bool)

(declare-fun setElem!26433 () Context!5686)

(declare-fun e!2665352 () Bool)

(declare-fun inv!63186 (Context!5686) Bool)

(assert (=> setNonEmpty!26433 (= setRes!26433 (and tp!1315867 (inv!63186 setElem!26433) e!2665352))))

(declare-fun setRest!26433 () (InoxSet Context!5686))

(assert (=> setNonEmpty!26433 (= (_1!25876 (_1!25877 (h!53101 mapDefault!19791))) ((_ map or) (store ((as const (Array Context!5686 Bool)) false) setElem!26433 true) setRest!26433))))

(declare-fun setIsEmpty!26433 () Bool)

(assert (=> setIsEmpty!26433 setRes!26433))

(declare-fun b!4290717 () Bool)

(declare-fun tp!1315869 () Bool)

(assert (=> b!4290717 (= e!2665352 tp!1315869)))

(assert (=> b!4290682 (= tp!1315857 e!2665353)))

(assert (= (and b!4290716 condSetEmpty!26433) setIsEmpty!26433))

(assert (= (and b!4290716 (not condSetEmpty!26433)) setNonEmpty!26433))

(assert (= setNonEmpty!26433 b!4290717))

(assert (= (and b!4290682 ((_ is Cons!47681) mapDefault!19791)) b!4290716))

(declare-fun m!4885071 () Bool)

(assert (=> setNonEmpty!26433 m!4885071))

(declare-fun b!4290718 () Bool)

(declare-fun e!2665355 () Bool)

(declare-fun setRes!26434 () Bool)

(declare-fun tp!1315871 () Bool)

(assert (=> b!4290718 (= e!2665355 (and setRes!26434 tp!1315871))))

(declare-fun condSetEmpty!26434 () Bool)

(assert (=> b!4290718 (= condSetEmpty!26434 (= (_1!25876 (_1!25877 (h!53101 (zeroValue!4653 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))))) ((as const (Array Context!5686 Bool)) false)))))

(declare-fun e!2665354 () Bool)

(declare-fun setNonEmpty!26434 () Bool)

(declare-fun tp!1315870 () Bool)

(declare-fun setElem!26434 () Context!5686)

(assert (=> setNonEmpty!26434 (= setRes!26434 (and tp!1315870 (inv!63186 setElem!26434) e!2665354))))

(declare-fun setRest!26434 () (InoxSet Context!5686))

(assert (=> setNonEmpty!26434 (= (_1!25876 (_1!25877 (h!53101 (zeroValue!4653 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))))) ((_ map or) (store ((as const (Array Context!5686 Bool)) false) setElem!26434 true) setRest!26434))))

(declare-fun setIsEmpty!26434 () Bool)

(assert (=> setIsEmpty!26434 setRes!26434))

(declare-fun b!4290719 () Bool)

(declare-fun tp!1315872 () Bool)

(assert (=> b!4290719 (= e!2665354 tp!1315872)))

(assert (=> b!4290677 (= tp!1315855 e!2665355)))

(assert (= (and b!4290718 condSetEmpty!26434) setIsEmpty!26434))

(assert (= (and b!4290718 (not condSetEmpty!26434)) setNonEmpty!26434))

(assert (= setNonEmpty!26434 b!4290719))

(assert (= (and b!4290677 ((_ is Cons!47681) (zeroValue!4653 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183)))))))) b!4290718))

(declare-fun m!4885073 () Bool)

(assert (=> setNonEmpty!26434 m!4885073))

(declare-fun b!4290720 () Bool)

(declare-fun e!2665357 () Bool)

(declare-fun setRes!26435 () Bool)

(declare-fun tp!1315874 () Bool)

(assert (=> b!4290720 (= e!2665357 (and setRes!26435 tp!1315874))))

(declare-fun condSetEmpty!26435 () Bool)

(assert (=> b!4290720 (= condSetEmpty!26435 (= (_1!25876 (_1!25877 (h!53101 (minValue!4653 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))))) ((as const (Array Context!5686 Bool)) false)))))

(declare-fun tp!1315873 () Bool)

(declare-fun setNonEmpty!26435 () Bool)

(declare-fun e!2665356 () Bool)

(declare-fun setElem!26435 () Context!5686)

(assert (=> setNonEmpty!26435 (= setRes!26435 (and tp!1315873 (inv!63186 setElem!26435) e!2665356))))

(declare-fun setRest!26435 () (InoxSet Context!5686))

(assert (=> setNonEmpty!26435 (= (_1!25876 (_1!25877 (h!53101 (minValue!4653 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183))))))))) ((_ map or) (store ((as const (Array Context!5686 Bool)) false) setElem!26435 true) setRest!26435))))

(declare-fun setIsEmpty!26435 () Bool)

(assert (=> setIsEmpty!26435 setRes!26435))

(declare-fun b!4290721 () Bool)

(declare-fun tp!1315875 () Bool)

(assert (=> b!4290721 (= e!2665356 tp!1315875)))

(assert (=> b!4290677 (= tp!1315860 e!2665357)))

(assert (= (and b!4290720 condSetEmpty!26435) setIsEmpty!26435))

(assert (= (and b!4290720 (not condSetEmpty!26435)) setNonEmpty!26435))

(assert (= setNonEmpty!26435 b!4290721))

(assert (= (and b!4290677 ((_ is Cons!47681) (minValue!4653 (v!41598 (underlying!9017 (v!41599 (underlying!9018 (cache!4440 cacheFindLongestMatch!183)))))))) b!4290720))

(declare-fun m!4885075 () Bool)

(assert (=> setNonEmpty!26435 m!4885075))

(declare-fun setNonEmpty!26440 () Bool)

(declare-fun setRes!26441 () Bool)

(declare-fun setElem!26441 () Context!5686)

(declare-fun tp!1315895 () Bool)

(declare-fun e!2665368 () Bool)

(assert (=> setNonEmpty!26440 (= setRes!26441 (and tp!1315895 (inv!63186 setElem!26441) e!2665368))))

(declare-fun mapDefault!19794 () List!47805)

(declare-fun setRest!26441 () (InoxSet Context!5686))

(assert (=> setNonEmpty!26440 (= (_1!25876 (_1!25877 (h!53101 mapDefault!19794))) ((_ map or) (store ((as const (Array Context!5686 Bool)) false) setElem!26441 true) setRest!26441))))

(declare-fun setIsEmpty!26440 () Bool)

(declare-fun setRes!26440 () Bool)

(assert (=> setIsEmpty!26440 setRes!26440))

(declare-fun setIsEmpty!26441 () Bool)

(assert (=> setIsEmpty!26441 setRes!26441))

(declare-fun condMapEmpty!19794 () Bool)

(assert (=> mapNonEmpty!19791 (= condMapEmpty!19794 (= mapRest!19791 ((as const (Array (_ BitVec 32) List!47805)) mapDefault!19794)))))

(declare-fun e!2665369 () Bool)

(declare-fun mapRes!19794 () Bool)

(assert (=> mapNonEmpty!19791 (= tp!1315852 (and e!2665369 mapRes!19794))))

(declare-fun mapNonEmpty!19794 () Bool)

(declare-fun tp!1315896 () Bool)

(declare-fun e!2665367 () Bool)

(assert (=> mapNonEmpty!19794 (= mapRes!19794 (and tp!1315896 e!2665367))))

(declare-fun mapValue!19794 () List!47805)

(declare-fun mapRest!19794 () (Array (_ BitVec 32) List!47805))

(declare-fun mapKey!19794 () (_ BitVec 32))

(assert (=> mapNonEmpty!19794 (= mapRest!19791 (store mapRest!19794 mapKey!19794 mapValue!19794))))

(declare-fun b!4290732 () Bool)

(declare-fun e!2665366 () Bool)

(declare-fun tp!1315891 () Bool)

(assert (=> b!4290732 (= e!2665366 tp!1315891)))

(declare-fun setElem!26440 () Context!5686)

(declare-fun tp!1315893 () Bool)

(declare-fun setNonEmpty!26441 () Bool)

(assert (=> setNonEmpty!26441 (= setRes!26440 (and tp!1315893 (inv!63186 setElem!26440) e!2665366))))

(declare-fun setRest!26440 () (InoxSet Context!5686))

(assert (=> setNonEmpty!26441 (= (_1!25876 (_1!25877 (h!53101 mapValue!19794))) ((_ map or) (store ((as const (Array Context!5686 Bool)) false) setElem!26440 true) setRest!26440))))

(declare-fun b!4290733 () Bool)

(declare-fun tp!1315894 () Bool)

(assert (=> b!4290733 (= e!2665367 (and setRes!26440 tp!1315894))))

(declare-fun condSetEmpty!26440 () Bool)

(assert (=> b!4290733 (= condSetEmpty!26440 (= (_1!25876 (_1!25877 (h!53101 mapValue!19794))) ((as const (Array Context!5686 Bool)) false)))))

(declare-fun mapIsEmpty!19794 () Bool)

(assert (=> mapIsEmpty!19794 mapRes!19794))

(declare-fun b!4290734 () Bool)

(declare-fun tp!1315892 () Bool)

(assert (=> b!4290734 (= e!2665369 (and setRes!26441 tp!1315892))))

(declare-fun condSetEmpty!26441 () Bool)

(assert (=> b!4290734 (= condSetEmpty!26441 (= (_1!25876 (_1!25877 (h!53101 mapDefault!19794))) ((as const (Array Context!5686 Bool)) false)))))

(declare-fun b!4290735 () Bool)

(declare-fun tp!1315890 () Bool)

(assert (=> b!4290735 (= e!2665368 tp!1315890)))

(assert (= (and mapNonEmpty!19791 condMapEmpty!19794) mapIsEmpty!19794))

(assert (= (and mapNonEmpty!19791 (not condMapEmpty!19794)) mapNonEmpty!19794))

(assert (= (and b!4290733 condSetEmpty!26440) setIsEmpty!26440))

(assert (= (and b!4290733 (not condSetEmpty!26440)) setNonEmpty!26441))

(assert (= setNonEmpty!26441 b!4290732))

(assert (= (and mapNonEmpty!19794 ((_ is Cons!47681) mapValue!19794)) b!4290733))

(assert (= (and b!4290734 condSetEmpty!26441) setIsEmpty!26441))

(assert (= (and b!4290734 (not condSetEmpty!26441)) setNonEmpty!26440))

(assert (= setNonEmpty!26440 b!4290735))

(assert (= (and mapNonEmpty!19791 ((_ is Cons!47681) mapDefault!19794)) b!4290734))

(declare-fun m!4885077 () Bool)

(assert (=> setNonEmpty!26440 m!4885077))

(declare-fun m!4885079 () Bool)

(assert (=> mapNonEmpty!19794 m!4885079))

(declare-fun m!4885081 () Bool)

(assert (=> setNonEmpty!26441 m!4885081))

(declare-fun b!4290736 () Bool)

(declare-fun e!2665371 () Bool)

(declare-fun setRes!26442 () Bool)

(declare-fun tp!1315898 () Bool)

(assert (=> b!4290736 (= e!2665371 (and setRes!26442 tp!1315898))))

(declare-fun condSetEmpty!26442 () Bool)

(assert (=> b!4290736 (= condSetEmpty!26442 (= (_1!25876 (_1!25877 (h!53101 mapValue!19791))) ((as const (Array Context!5686 Bool)) false)))))

(declare-fun setElem!26442 () Context!5686)

(declare-fun tp!1315897 () Bool)

(declare-fun e!2665370 () Bool)

(declare-fun setNonEmpty!26442 () Bool)

(assert (=> setNonEmpty!26442 (= setRes!26442 (and tp!1315897 (inv!63186 setElem!26442) e!2665370))))

(declare-fun setRest!26442 () (InoxSet Context!5686))

(assert (=> setNonEmpty!26442 (= (_1!25876 (_1!25877 (h!53101 mapValue!19791))) ((_ map or) (store ((as const (Array Context!5686 Bool)) false) setElem!26442 true) setRest!26442))))

(declare-fun setIsEmpty!26442 () Bool)

(assert (=> setIsEmpty!26442 setRes!26442))

(declare-fun b!4290737 () Bool)

(declare-fun tp!1315899 () Bool)

(assert (=> b!4290737 (= e!2665370 tp!1315899)))

(assert (=> mapNonEmpty!19791 (= tp!1315853 e!2665371)))

(assert (= (and b!4290736 condSetEmpty!26442) setIsEmpty!26442))

(assert (= (and b!4290736 (not condSetEmpty!26442)) setNonEmpty!26442))

(assert (= setNonEmpty!26442 b!4290737))

(assert (= (and mapNonEmpty!19791 ((_ is Cons!47681) mapValue!19791)) b!4290736))

(declare-fun m!4885083 () Bool)

(assert (=> setNonEmpty!26442 m!4885083))

(declare-fun tp!1315906 () Bool)

(declare-fun tp!1315907 () Bool)

(declare-fun b!4290746 () Bool)

(declare-fun e!2665377 () Bool)

(assert (=> b!4290746 (= e!2665377 (and (inv!63181 (left!35406 (c!730303 (totalInput!4357 cacheFindLongestMatch!183)))) tp!1315906 (inv!63181 (right!35736 (c!730303 (totalInput!4357 cacheFindLongestMatch!183)))) tp!1315907))))

(declare-fun b!4290748 () Bool)

(declare-fun e!2665376 () Bool)

(declare-fun tp!1315908 () Bool)

(assert (=> b!4290748 (= e!2665376 tp!1315908)))

(declare-fun b!4290747 () Bool)

(declare-fun inv!63187 (IArray!28851) Bool)

(assert (=> b!4290747 (= e!2665377 (and (inv!63187 (xs!17701 (c!730303 (totalInput!4357 cacheFindLongestMatch!183)))) e!2665376))))

(assert (=> b!4290685 (= tp!1315859 (and (inv!63181 (c!730303 (totalInput!4357 cacheFindLongestMatch!183))) e!2665377))))

(assert (= (and b!4290685 ((_ is Node!14395) (c!730303 (totalInput!4357 cacheFindLongestMatch!183)))) b!4290746))

(assert (= b!4290747 b!4290748))

(assert (= (and b!4290685 ((_ is Leaf!22273) (c!730303 (totalInput!4357 cacheFindLongestMatch!183)))) b!4290747))

(declare-fun m!4885085 () Bool)

(assert (=> b!4290746 m!4885085))

(declare-fun m!4885087 () Bool)

(assert (=> b!4290746 m!4885087))

(declare-fun m!4885089 () Bool)

(assert (=> b!4290747 m!4885089))

(assert (=> b!4290685 m!4885042))

(declare-fun e!2665379 () Bool)

(declare-fun b!4290749 () Bool)

(declare-fun tp!1315909 () Bool)

(declare-fun tp!1315910 () Bool)

(assert (=> b!4290749 (= e!2665379 (and (inv!63181 (left!35406 (c!730303 totalInput!812))) tp!1315909 (inv!63181 (right!35736 (c!730303 totalInput!812))) tp!1315910))))

(declare-fun b!4290751 () Bool)

(declare-fun e!2665378 () Bool)

(declare-fun tp!1315911 () Bool)

(assert (=> b!4290751 (= e!2665378 tp!1315911)))

(declare-fun b!4290750 () Bool)

(assert (=> b!4290750 (= e!2665379 (and (inv!63187 (xs!17701 (c!730303 totalInput!812))) e!2665378))))

(assert (=> b!4290676 (= tp!1315858 (and (inv!63181 (c!730303 totalInput!812)) e!2665379))))

(assert (= (and b!4290676 ((_ is Node!14395) (c!730303 totalInput!812))) b!4290749))

(assert (= b!4290750 b!4290751))

(assert (= (and b!4290676 ((_ is Leaf!22273) (c!730303 totalInput!812))) b!4290750))

(declare-fun m!4885091 () Bool)

(assert (=> b!4290749 m!4885091))

(declare-fun m!4885093 () Bool)

(assert (=> b!4290749 m!4885093))

(declare-fun m!4885095 () Bool)

(assert (=> b!4290750 m!4885095))

(assert (=> b!4290676 m!4885040))

(check-sat (not b_next!128103) (not b!4290732) b_and!338617 (not b!4290709) (not mapNonEmpty!19794) (not b!4290716) (not b!4290736) (not b!4290704) (not b!4290685) (not b!4290721) (not b!4290751) (not b!4290750) (not b!4290720) (not d!1265648) (not b_next!128105) (not b!4290718) (not setNonEmpty!26441) b_and!338615 (not d!1265644) (not b!4290707) (not b!4290746) (not setNonEmpty!26440) (not b!4290734) (not b!4290676) (not b!4290737) (not d!1265660) (not b!4290697) (not b!4290691) (not b!4290706) (not setNonEmpty!26434) (not setNonEmpty!26435) (not b!4290717) (not b!4290733) (not d!1265650) (not b!4290748) (not b!4290747) (not b!4290692) (not b!4290719) (not b!4290735) (not b!4290749) (not setNonEmpty!26433) (not setNonEmpty!26442))
(check-sat b_and!338615 b_and!338617 (not b_next!128105) (not b_next!128103))
