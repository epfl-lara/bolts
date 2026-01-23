; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412504 () Bool)

(assert start!412504)

(declare-fun b!4296754 () Bool)

(declare-fun b_free!127807 () Bool)

(declare-fun b_next!128511 () Bool)

(assert (=> b!4296754 (= b_free!127807 (not b_next!128511))))

(declare-fun tp!1319754 () Bool)

(declare-fun b_and!339023 () Bool)

(assert (=> b!4296754 (= tp!1319754 b_and!339023)))

(declare-fun b!4296756 () Bool)

(declare-fun b_free!127809 () Bool)

(declare-fun b_next!128513 () Bool)

(assert (=> b!4296756 (= b_free!127809 (not b_next!128513))))

(declare-fun tp!1319764 () Bool)

(declare-fun b_and!339025 () Bool)

(assert (=> b!4296756 (= tp!1319764 b_and!339025)))

(declare-fun b!4296758 () Bool)

(assert (=> b!4296758 true))

(declare-fun setIsEmpty!26818 () Bool)

(declare-fun setRes!26818 () Bool)

(assert (=> setIsEmpty!26818 setRes!26818))

(declare-fun e!2670338 () Bool)

(declare-fun e!2670330 () Bool)

(assert (=> b!4296754 (= e!2670338 (and e!2670330 tp!1319754))))

(declare-fun b!4296755 () Bool)

(declare-fun e!2670332 () Bool)

(declare-fun tp!1319755 () Bool)

(declare-fun mapRes!20148 () Bool)

(assert (=> b!4296755 (= e!2670332 (and tp!1319755 mapRes!20148))))

(declare-fun condMapEmpty!20148 () Bool)

(declare-datatypes ((C!26200 0))(
  ( (C!26201 (val!15426 Int)) )
))
(declare-datatypes ((Regex!13001 0))(
  ( (ElementMatch!13001 (c!730996 C!26200)) (Concat!21320 (regOne!26514 Regex!13001) (regTwo!26514 Regex!13001)) (EmptyExpr!13001) (Star!13001 (reg!13330 Regex!13001)) (EmptyLang!13001) (Union!13001 (regOne!26515 Regex!13001) (regTwo!26515 Regex!13001)) )
))
(declare-datatypes ((List!47994 0))(
  ( (Nil!47870) (Cons!47870 (h!53290 Regex!13001) (t!354601 List!47994)) )
))
(declare-datatypes ((Context!5782 0))(
  ( (Context!5783 (exprs!3391 List!47994)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45670 0))(
  ( (tuple2!45671 (_1!26114 (InoxSet Context!5782)) (_2!26114 Int)) )
))
(declare-datatypes ((tuple2!45672 0))(
  ( (tuple2!45673 (_1!26115 tuple2!45670) (_2!26115 Int)) )
))
(declare-datatypes ((List!47995 0))(
  ( (Nil!47871) (Cons!47871 (h!53291 tuple2!45672) (t!354602 List!47995)) )
))
(declare-datatypes ((array!16006 0))(
  ( (array!16007 (arr!7151 (Array (_ BitVec 32) (_ BitVec 64))) (size!35179 (_ BitVec 32))) )
))
(declare-datatypes ((array!16008 0))(
  ( (array!16009 (arr!7152 (Array (_ BitVec 32) List!47995)) (size!35180 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8966 0))(
  ( (LongMapFixedSize!8967 (defaultEntry!4868 Int) (mask!12953 (_ BitVec 32)) (extraKeys!4732 (_ BitVec 32)) (zeroValue!4742 List!47995) (minValue!4742 List!47995) (_size!9009 (_ BitVec 32)) (_keys!4783 array!16006) (_values!4764 array!16008) (_vacant!4544 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17741 0))(
  ( (Cell!17742 (v!41803 LongMapFixedSize!8966)) )
))
(declare-datatypes ((MutLongMap!4483 0))(
  ( (LongMap!4483 (underlying!9195 Cell!17741)) (MutLongMapExt!4482 (__x!29474 Int)) )
))
(declare-datatypes ((Cell!17743 0))(
  ( (Cell!17744 (v!41804 MutLongMap!4483)) )
))
(declare-datatypes ((Hashable!4399 0))(
  ( (HashableExt!4398 (__x!29475 Int)) )
))
(declare-datatypes ((MutableMap!4389 0))(
  ( (MutableMapExt!4388 (__x!29476 Int)) (HashMap!4389 (underlying!9196 Cell!17743) (hashF!6431 Hashable!4399) (_size!9010 (_ BitVec 32)) (defaultValue!4560 Int)) )
))
(declare-datatypes ((List!47996 0))(
  ( (Nil!47872) (Cons!47872 (h!53292 C!26200) (t!354603 List!47996)) )
))
(declare-datatypes ((IArray!28945 0))(
  ( (IArray!28946 (innerList!14530 List!47996)) )
))
(declare-datatypes ((Conc!14442 0))(
  ( (Node!14442 (left!35509 Conc!14442) (right!35839 Conc!14442) (csize!29114 Int) (cheight!14653 Int)) (Leaf!22344 (xs!17748 IArray!28945) (csize!29115 Int)) (Empty!14442) )
))
(declare-datatypes ((BalanceConc!28374 0))(
  ( (BalanceConc!28375 (c!730997 Conc!14442)) )
))
(declare-datatypes ((CacheFindLongestMatch!572 0))(
  ( (CacheFindLongestMatch!573 (cache!4529 MutableMap!4389) (totalInput!4424 BalanceConc!28374)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!572)

(declare-fun mapDefault!20148 () List!47995)

(assert (=> b!4296755 (= condMapEmpty!20148 (= (arr!7152 (_values!4764 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47995)) mapDefault!20148)))))

(declare-fun e!2670333 () Bool)

(declare-fun tp!1319757 () Bool)

(declare-fun tp!1319758 () Bool)

(declare-fun array_inv!5125 (array!16006) Bool)

(declare-fun array_inv!5126 (array!16008) Bool)

(assert (=> b!4296756 (= e!2670333 (and tp!1319764 tp!1319757 tp!1319758 (array_inv!5125 (_keys!4783 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))) (array_inv!5126 (_values!4764 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))) e!2670332))))

(declare-fun b!4296757 () Bool)

(declare-fun e!2670331 () Bool)

(declare-fun localTotalInput!12 () BalanceConc!28374)

(declare-fun tp!1319756 () Bool)

(declare-fun inv!63440 (Conc!14442) Bool)

(assert (=> b!4296757 (= e!2670331 (and (inv!63440 (c!730997 localTotalInput!12)) tp!1319756))))

(declare-fun e!2670341 () Bool)

(declare-fun lambda!131756 () Int)

(declare-fun forall!8582 (List!47995 Int) Bool)

(declare-datatypes ((ListMap!1411 0))(
  ( (ListMap!1412 (toList!2146 List!47995)) )
))
(declare-fun map!9833 (MutableMap!4389) ListMap!1411)

(assert (=> b!4296758 (= e!2670341 (not (forall!8582 (toList!2146 (map!9833 (cache!4529 thiss!29019))) lambda!131756)))))

(declare-fun b!4296759 () Bool)

(declare-fun e!2670335 () Bool)

(declare-fun tp!1319761 () Bool)

(assert (=> b!4296759 (= e!2670335 (and (inv!63440 (c!730997 (totalInput!4424 thiss!29019))) tp!1319761))))

(declare-fun b!4296760 () Bool)

(declare-fun e!2670334 () Bool)

(assert (=> b!4296760 (= e!2670334 e!2670333)))

(declare-fun mapNonEmpty!20148 () Bool)

(declare-fun tp!1319763 () Bool)

(declare-fun tp!1319760 () Bool)

(assert (=> mapNonEmpty!20148 (= mapRes!20148 (and tp!1319763 tp!1319760))))

(declare-fun mapKey!20148 () (_ BitVec 32))

(declare-fun mapValue!20148 () List!47995)

(declare-fun mapRest!20148 () (Array (_ BitVec 32) List!47995))

(assert (=> mapNonEmpty!20148 (= (arr!7152 (_values!4764 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))) (store mapRest!20148 mapKey!20148 mapValue!20148))))

(declare-fun setNonEmpty!26818 () Bool)

(declare-fun e!2670336 () Bool)

(declare-fun tp!1319759 () Bool)

(declare-fun setElem!26818 () Context!5782)

(declare-fun inv!63441 (Context!5782) Bool)

(assert (=> setNonEmpty!26818 (= setRes!26818 (and tp!1319759 (inv!63441 setElem!26818) e!2670336))))

(declare-fun z!500 () (InoxSet Context!5782))

(declare-fun setRest!26818 () (InoxSet Context!5782))

(assert (=> setNonEmpty!26818 (= z!500 ((_ map or) (store ((as const (Array Context!5782 Bool)) false) setElem!26818 true) setRest!26818))))

(declare-fun b!4296761 () Bool)

(declare-fun e!2670342 () Bool)

(assert (=> b!4296761 (= e!2670342 e!2670334)))

(declare-fun b!4296762 () Bool)

(declare-fun res!1761091 () Bool)

(assert (=> b!4296762 (=> (not res!1761091) (not e!2670341))))

(get-info :version)

(assert (=> b!4296762 (= res!1761091 ((_ is HashMap!4389) (cache!4529 thiss!29019)))))

(declare-fun res!1761094 () Bool)

(declare-fun e!2670340 () Bool)

(assert (=> start!412504 (=> (not res!1761094) (not e!2670340))))

(assert (=> start!412504 (= res!1761094 (= localTotalInput!12 (totalInput!4424 thiss!29019)))))

(assert (=> start!412504 e!2670340))

(declare-fun condSetEmpty!26818 () Bool)

(assert (=> start!412504 (= condSetEmpty!26818 (= z!500 ((as const (Array Context!5782 Bool)) false)))))

(assert (=> start!412504 setRes!26818))

(assert (=> start!412504 true))

(declare-fun e!2670337 () Bool)

(declare-fun inv!63442 (CacheFindLongestMatch!572) Bool)

(assert (=> start!412504 (and (inv!63442 thiss!29019) e!2670337)))

(declare-fun inv!63443 (BalanceConc!28374) Bool)

(assert (=> start!412504 (and (inv!63443 localTotalInput!12) e!2670331)))

(declare-fun b!4296763 () Bool)

(assert (=> b!4296763 (= e!2670337 (and e!2670338 (inv!63443 (totalInput!4424 thiss!29019)) e!2670335))))

(declare-fun b!4296764 () Bool)

(declare-fun res!1761097 () Bool)

(assert (=> b!4296764 (=> (not res!1761097) (not e!2670340))))

(declare-fun validCacheMapFindLongestMatch!94 (MutableMap!4389 BalanceConc!28374) Bool)

(assert (=> b!4296764 (= res!1761097 (validCacheMapFindLongestMatch!94 (cache!4529 thiss!29019) (totalInput!4424 thiss!29019)))))

(declare-fun b!4296765 () Bool)

(declare-fun res!1761093 () Bool)

(assert (=> b!4296765 (=> (not res!1761093) (not e!2670340))))

(declare-fun from!940 () Int)

(assert (=> b!4296765 (= res!1761093 (>= from!940 0))))

(declare-fun b!4296766 () Bool)

(assert (=> b!4296766 (= e!2670340 e!2670341)))

(declare-fun res!1761092 () Bool)

(assert (=> b!4296766 (=> (not res!1761092) (not e!2670341))))

(declare-fun lt!1518656 () Int)

(assert (=> b!4296766 (= res!1761092 (<= from!940 lt!1518656))))

(declare-fun size!35181 (BalanceConc!28374) Int)

(assert (=> b!4296766 (= lt!1518656 (size!35181 (totalInput!4424 thiss!29019)))))

(declare-fun b!4296767 () Bool)

(declare-fun tp!1319762 () Bool)

(assert (=> b!4296767 (= e!2670336 tp!1319762)))

(declare-fun b!4296768 () Bool)

(declare-fun res!1761095 () Bool)

(assert (=> b!4296768 (=> (not res!1761095) (not e!2670341))))

(declare-fun valid!3459 (MutableMap!4389) Bool)

(assert (=> b!4296768 (= res!1761095 (valid!3459 (cache!4529 thiss!29019)))))

(declare-fun b!4296769 () Bool)

(declare-fun lt!1518657 () MutLongMap!4483)

(assert (=> b!4296769 (= e!2670330 (and e!2670342 ((_ is LongMap!4483) lt!1518657)))))

(assert (=> b!4296769 (= lt!1518657 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))

(declare-fun b!4296770 () Bool)

(declare-fun res!1761096 () Bool)

(assert (=> b!4296770 (=> (not res!1761096) (not e!2670341))))

(declare-fun res!14399 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!55 ((InoxSet Context!5782) Int BalanceConc!28374 Int) Int)

(assert (=> b!4296770 (= res!1761096 (= res!14399 (findLongestMatchInnerZipperFastV2!55 z!500 from!940 (totalInput!4424 thiss!29019) lt!1518656)))))

(declare-fun mapIsEmpty!20148 () Bool)

(assert (=> mapIsEmpty!20148 mapRes!20148))

(assert (= (and start!412504 res!1761094) b!4296764))

(assert (= (and b!4296764 res!1761097) b!4296765))

(assert (= (and b!4296765 res!1761093) b!4296766))

(assert (= (and b!4296766 res!1761092) b!4296770))

(assert (= (and b!4296770 res!1761096) b!4296762))

(assert (= (and b!4296762 res!1761091) b!4296768))

(assert (= (and b!4296768 res!1761095) b!4296758))

(assert (= (and start!412504 condSetEmpty!26818) setIsEmpty!26818))

(assert (= (and start!412504 (not condSetEmpty!26818)) setNonEmpty!26818))

(assert (= setNonEmpty!26818 b!4296767))

(assert (= (and b!4296755 condMapEmpty!20148) mapIsEmpty!20148))

(assert (= (and b!4296755 (not condMapEmpty!20148)) mapNonEmpty!20148))

(assert (= b!4296756 b!4296755))

(assert (= b!4296760 b!4296756))

(assert (= b!4296761 b!4296760))

(assert (= (and b!4296769 ((_ is LongMap!4483) (v!41804 (underlying!9196 (cache!4529 thiss!29019))))) b!4296761))

(assert (= b!4296754 b!4296769))

(assert (= (and b!4296763 ((_ is HashMap!4389) (cache!4529 thiss!29019))) b!4296754))

(assert (= b!4296763 b!4296759))

(assert (= start!412504 b!4296763))

(assert (= start!412504 b!4296757))

(declare-fun m!4889028 () Bool)

(assert (=> setNonEmpty!26818 m!4889028))

(declare-fun m!4889030 () Bool)

(assert (=> mapNonEmpty!20148 m!4889030))

(declare-fun m!4889032 () Bool)

(assert (=> start!412504 m!4889032))

(declare-fun m!4889034 () Bool)

(assert (=> start!412504 m!4889034))

(declare-fun m!4889036 () Bool)

(assert (=> b!4296758 m!4889036))

(declare-fun m!4889038 () Bool)

(assert (=> b!4296758 m!4889038))

(declare-fun m!4889040 () Bool)

(assert (=> b!4296768 m!4889040))

(declare-fun m!4889042 () Bool)

(assert (=> b!4296757 m!4889042))

(declare-fun m!4889044 () Bool)

(assert (=> b!4296763 m!4889044))

(declare-fun m!4889046 () Bool)

(assert (=> b!4296770 m!4889046))

(declare-fun m!4889048 () Bool)

(assert (=> b!4296759 m!4889048))

(declare-fun m!4889050 () Bool)

(assert (=> b!4296764 m!4889050))

(declare-fun m!4889052 () Bool)

(assert (=> b!4296766 m!4889052))

(declare-fun m!4889054 () Bool)

(assert (=> b!4296756 m!4889054))

(declare-fun m!4889056 () Bool)

(assert (=> b!4296756 m!4889056))

(check-sat (not b!4296764) (not b!4296759) (not b!4296770) (not b!4296766) (not b_next!128513) (not b!4296756) (not b!4296768) (not b!4296758) (not mapNonEmpty!20148) (not setNonEmpty!26818) b_and!339025 (not b!4296757) (not b_next!128511) (not start!412504) (not b!4296767) (not b!4296755) b_and!339023 (not b!4296763))
(check-sat b_and!339023 b_and!339025 (not b_next!128511) (not b_next!128513))
(get-model)

(declare-fun d!1266222 () Bool)

(declare-fun res!1761102 () Bool)

(declare-fun e!2670347 () Bool)

(assert (=> d!1266222 (=> res!1761102 e!2670347)))

(assert (=> d!1266222 (= res!1761102 ((_ is Nil!47871) (toList!2146 (map!9833 (cache!4529 thiss!29019)))))))

(assert (=> d!1266222 (= (forall!8582 (toList!2146 (map!9833 (cache!4529 thiss!29019))) lambda!131756) e!2670347)))

(declare-fun b!4296777 () Bool)

(declare-fun e!2670348 () Bool)

(assert (=> b!4296777 (= e!2670347 e!2670348)))

(declare-fun res!1761103 () Bool)

(assert (=> b!4296777 (=> (not res!1761103) (not e!2670348))))

(declare-fun dynLambda!20331 (Int tuple2!45672) Bool)

(assert (=> b!4296777 (= res!1761103 (dynLambda!20331 lambda!131756 (h!53291 (toList!2146 (map!9833 (cache!4529 thiss!29019))))))))

(declare-fun b!4296778 () Bool)

(assert (=> b!4296778 (= e!2670348 (forall!8582 (t!354602 (toList!2146 (map!9833 (cache!4529 thiss!29019)))) lambda!131756))))

(assert (= (and d!1266222 (not res!1761102)) b!4296777))

(assert (= (and b!4296777 res!1761103) b!4296778))

(declare-fun b_lambda!126133 () Bool)

(assert (=> (not b_lambda!126133) (not b!4296777)))

(declare-fun m!4889058 () Bool)

(assert (=> b!4296777 m!4889058))

(declare-fun m!4889060 () Bool)

(assert (=> b!4296778 m!4889060))

(assert (=> b!4296758 d!1266222))

(declare-fun d!1266224 () Bool)

(declare-fun lt!1518660 () ListMap!1411)

(declare-fun invariantList!522 (List!47995) Bool)

(assert (=> d!1266224 (invariantList!522 (toList!2146 lt!1518660))))

(declare-datatypes ((tuple2!45674 0))(
  ( (tuple2!45675 (_1!26116 (_ BitVec 64)) (_2!26116 List!47995)) )
))
(declare-datatypes ((List!47997 0))(
  ( (Nil!47873) (Cons!47873 (h!53293 tuple2!45674) (t!354604 List!47997)) )
))
(declare-fun extractMap!256 (List!47997) ListMap!1411)

(declare-datatypes ((ListLongMap!775 0))(
  ( (ListLongMap!776 (toList!2147 List!47997)) )
))
(declare-fun map!9834 (MutLongMap!4483) ListLongMap!775)

(assert (=> d!1266224 (= lt!1518660 (extractMap!256 (toList!2147 (map!9834 (v!41804 (underlying!9196 (cache!4529 thiss!29019)))))))))

(assert (=> d!1266224 (valid!3459 (cache!4529 thiss!29019))))

(assert (=> d!1266224 (= (map!9833 (cache!4529 thiss!29019)) lt!1518660)))

(declare-fun bs!603821 () Bool)

(assert (= bs!603821 d!1266224))

(declare-fun m!4889062 () Bool)

(assert (=> bs!603821 m!4889062))

(declare-fun m!4889064 () Bool)

(assert (=> bs!603821 m!4889064))

(declare-fun m!4889066 () Bool)

(assert (=> bs!603821 m!4889066))

(assert (=> bs!603821 m!4889040))

(assert (=> b!4296758 d!1266224))

(declare-fun d!1266226 () Bool)

(declare-fun lt!1518663 () Int)

(declare-fun size!35182 (List!47996) Int)

(declare-fun list!17371 (BalanceConc!28374) List!47996)

(assert (=> d!1266226 (= lt!1518663 (size!35182 (list!17371 (totalInput!4424 thiss!29019))))))

(declare-fun size!35183 (Conc!14442) Int)

(assert (=> d!1266226 (= lt!1518663 (size!35183 (c!730997 (totalInput!4424 thiss!29019))))))

(assert (=> d!1266226 (= (size!35181 (totalInput!4424 thiss!29019)) lt!1518663)))

(declare-fun bs!603822 () Bool)

(assert (= bs!603822 d!1266226))

(declare-fun m!4889068 () Bool)

(assert (=> bs!603822 m!4889068))

(assert (=> bs!603822 m!4889068))

(declare-fun m!4889070 () Bool)

(assert (=> bs!603822 m!4889070))

(declare-fun m!4889072 () Bool)

(assert (=> bs!603822 m!4889072))

(assert (=> b!4296766 d!1266226))

(declare-fun d!1266228 () Bool)

(declare-fun lambda!131759 () Int)

(declare-fun forall!8583 (List!47994 Int) Bool)

(assert (=> d!1266228 (= (inv!63441 setElem!26818) (forall!8583 (exprs!3391 setElem!26818) lambda!131759))))

(declare-fun bs!603823 () Bool)

(assert (= bs!603823 d!1266228))

(declare-fun m!4889074 () Bool)

(assert (=> bs!603823 m!4889074))

(assert (=> setNonEmpty!26818 d!1266228))

(declare-fun d!1266230 () Bool)

(declare-fun c!731000 () Bool)

(assert (=> d!1266230 (= c!731000 ((_ is Node!14442) (c!730997 localTotalInput!12)))))

(declare-fun e!2670353 () Bool)

(assert (=> d!1266230 (= (inv!63440 (c!730997 localTotalInput!12)) e!2670353)))

(declare-fun b!4296785 () Bool)

(declare-fun inv!63444 (Conc!14442) Bool)

(assert (=> b!4296785 (= e!2670353 (inv!63444 (c!730997 localTotalInput!12)))))

(declare-fun b!4296786 () Bool)

(declare-fun e!2670354 () Bool)

(assert (=> b!4296786 (= e!2670353 e!2670354)))

(declare-fun res!1761106 () Bool)

(assert (=> b!4296786 (= res!1761106 (not ((_ is Leaf!22344) (c!730997 localTotalInput!12))))))

(assert (=> b!4296786 (=> res!1761106 e!2670354)))

(declare-fun b!4296787 () Bool)

(declare-fun inv!63445 (Conc!14442) Bool)

(assert (=> b!4296787 (= e!2670354 (inv!63445 (c!730997 localTotalInput!12)))))

(assert (= (and d!1266230 c!731000) b!4296785))

(assert (= (and d!1266230 (not c!731000)) b!4296786))

(assert (= (and b!4296786 (not res!1761106)) b!4296787))

(declare-fun m!4889076 () Bool)

(assert (=> b!4296785 m!4889076))

(declare-fun m!4889078 () Bool)

(assert (=> b!4296787 m!4889078))

(assert (=> b!4296757 d!1266230))

(declare-fun b!4296804 () Bool)

(declare-fun e!2670365 () Int)

(declare-fun lt!1518671 () Int)

(assert (=> b!4296804 (= e!2670365 (+ 1 lt!1518671))))

(declare-fun d!1266232 () Bool)

(declare-fun lt!1518670 () Int)

(assert (=> d!1266232 (and (>= lt!1518670 0) (<= lt!1518670 (- lt!1518656 from!940)))))

(declare-fun e!2670367 () Int)

(assert (=> d!1266232 (= lt!1518670 e!2670367)))

(declare-fun c!731008 () Bool)

(declare-fun e!2670369 () Bool)

(assert (=> d!1266232 (= c!731008 e!2670369)))

(declare-fun res!1761112 () Bool)

(assert (=> d!1266232 (=> res!1761112 e!2670369)))

(assert (=> d!1266232 (= res!1761112 (= from!940 lt!1518656))))

(declare-fun e!2670368 () Bool)

(assert (=> d!1266232 e!2670368))

(declare-fun res!1761111 () Bool)

(assert (=> d!1266232 (=> (not res!1761111) (not e!2670368))))

(assert (=> d!1266232 (= res!1761111 (>= from!940 0))))

(assert (=> d!1266232 (= (findLongestMatchInnerZipperFastV2!55 z!500 from!940 (totalInput!4424 thiss!29019) lt!1518656) lt!1518670)))

(declare-fun b!4296805 () Bool)

(declare-fun e!2670366 () Int)

(assert (=> b!4296805 (= e!2670366 1)))

(declare-fun b!4296806 () Bool)

(assert (=> b!4296806 (= e!2670368 (<= from!940 (size!35181 (totalInput!4424 thiss!29019))))))

(declare-fun b!4296807 () Bool)

(declare-fun lostCauseZipper!661 ((InoxSet Context!5782)) Bool)

(assert (=> b!4296807 (= e!2670369 (lostCauseZipper!661 z!500))))

(declare-fun b!4296808 () Bool)

(declare-fun c!731009 () Bool)

(declare-fun lt!1518672 () (InoxSet Context!5782))

(declare-fun nullableZipper!781 ((InoxSet Context!5782)) Bool)

(assert (=> b!4296808 (= c!731009 (nullableZipper!781 lt!1518672))))

(assert (=> b!4296808 (= e!2670365 e!2670366)))

(declare-fun b!4296809 () Bool)

(assert (=> b!4296809 (= e!2670366 0)))

(declare-fun b!4296810 () Bool)

(assert (=> b!4296810 (= e!2670367 e!2670365)))

(declare-fun derivationStepZipper!558 ((InoxSet Context!5782) C!26200) (InoxSet Context!5782))

(declare-fun apply!10860 (BalanceConc!28374 Int) C!26200)

(assert (=> b!4296810 (= lt!1518672 (derivationStepZipper!558 z!500 (apply!10860 (totalInput!4424 thiss!29019) from!940)))))

(assert (=> b!4296810 (= lt!1518671 (findLongestMatchInnerZipperFastV2!55 lt!1518672 (+ from!940 1) (totalInput!4424 thiss!29019) lt!1518656))))

(declare-fun c!731007 () Bool)

(assert (=> b!4296810 (= c!731007 (> lt!1518671 0))))

(declare-fun b!4296811 () Bool)

(assert (=> b!4296811 (= e!2670367 0)))

(assert (= (and d!1266232 res!1761111) b!4296806))

(assert (= (and d!1266232 (not res!1761112)) b!4296807))

(assert (= (and d!1266232 c!731008) b!4296811))

(assert (= (and d!1266232 (not c!731008)) b!4296810))

(assert (= (and b!4296810 c!731007) b!4296804))

(assert (= (and b!4296810 (not c!731007)) b!4296808))

(assert (= (and b!4296808 c!731009) b!4296805))

(assert (= (and b!4296808 (not c!731009)) b!4296809))

(assert (=> b!4296806 m!4889052))

(declare-fun m!4889080 () Bool)

(assert (=> b!4296807 m!4889080))

(declare-fun m!4889082 () Bool)

(assert (=> b!4296808 m!4889082))

(declare-fun m!4889084 () Bool)

(assert (=> b!4296810 m!4889084))

(assert (=> b!4296810 m!4889084))

(declare-fun m!4889086 () Bool)

(assert (=> b!4296810 m!4889086))

(declare-fun m!4889088 () Bool)

(assert (=> b!4296810 m!4889088))

(assert (=> b!4296770 d!1266232))

(declare-fun d!1266234 () Bool)

(assert (=> d!1266234 (= (array_inv!5125 (_keys!4783 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))) (bvsge (size!35179 (_keys!4783 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296756 d!1266234))

(declare-fun d!1266236 () Bool)

(assert (=> d!1266236 (= (array_inv!5126 (_values!4764 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))) (bvsge (size!35180 (_values!4764 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296756 d!1266236))

(declare-fun bs!603824 () Bool)

(declare-fun b!4296817 () Bool)

(assert (= bs!603824 (and b!4296817 b!4296758)))

(declare-fun lambda!131762 () Int)

(assert (=> bs!603824 (= (= (totalInput!4424 thiss!29019) localTotalInput!12) (= lambda!131762 lambda!131756))))

(assert (=> b!4296817 true))

(declare-fun d!1266238 () Bool)

(declare-fun res!1761117 () Bool)

(declare-fun e!2670372 () Bool)

(assert (=> d!1266238 (=> (not res!1761117) (not e!2670372))))

(assert (=> d!1266238 (= res!1761117 (valid!3459 (cache!4529 thiss!29019)))))

(assert (=> d!1266238 (= (validCacheMapFindLongestMatch!94 (cache!4529 thiss!29019) (totalInput!4424 thiss!29019)) e!2670372)))

(declare-fun b!4296816 () Bool)

(declare-fun res!1761118 () Bool)

(assert (=> b!4296816 (=> (not res!1761118) (not e!2670372))))

(assert (=> b!4296816 (= res!1761118 (invariantList!522 (toList!2146 (map!9833 (cache!4529 thiss!29019)))))))

(assert (=> b!4296817 (= e!2670372 (forall!8582 (toList!2146 (map!9833 (cache!4529 thiss!29019))) lambda!131762))))

(assert (= (and d!1266238 res!1761117) b!4296816))

(assert (= (and b!4296816 res!1761118) b!4296817))

(assert (=> d!1266238 m!4889040))

(assert (=> b!4296816 m!4889036))

(declare-fun m!4889091 () Bool)

(assert (=> b!4296816 m!4889091))

(assert (=> b!4296817 m!4889036))

(declare-fun m!4889093 () Bool)

(assert (=> b!4296817 m!4889093))

(assert (=> b!4296764 d!1266238))

(declare-fun d!1266240 () Bool)

(declare-fun res!1761123 () Bool)

(declare-fun e!2670375 () Bool)

(assert (=> d!1266240 (=> (not res!1761123) (not e!2670375))))

(declare-fun valid!3460 (MutLongMap!4483) Bool)

(assert (=> d!1266240 (= res!1761123 (valid!3460 (v!41804 (underlying!9196 (cache!4529 thiss!29019)))))))

(assert (=> d!1266240 (= (valid!3459 (cache!4529 thiss!29019)) e!2670375)))

(declare-fun b!4296822 () Bool)

(declare-fun res!1761124 () Bool)

(assert (=> b!4296822 (=> (not res!1761124) (not e!2670375))))

(declare-fun lambda!131765 () Int)

(declare-fun forall!8584 (List!47997 Int) Bool)

(assert (=> b!4296822 (= res!1761124 (forall!8584 (toList!2147 (map!9834 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))) lambda!131765))))

(declare-fun b!4296823 () Bool)

(declare-fun allKeysSameHashInMap!256 (ListLongMap!775 Hashable!4399) Bool)

(assert (=> b!4296823 (= e!2670375 (allKeysSameHashInMap!256 (map!9834 (v!41804 (underlying!9196 (cache!4529 thiss!29019)))) (hashF!6431 (cache!4529 thiss!29019))))))

(assert (= (and d!1266240 res!1761123) b!4296822))

(assert (= (and b!4296822 res!1761124) b!4296823))

(declare-fun m!4889095 () Bool)

(assert (=> d!1266240 m!4889095))

(assert (=> b!4296822 m!4889064))

(declare-fun m!4889097 () Bool)

(assert (=> b!4296822 m!4889097))

(assert (=> b!4296823 m!4889064))

(assert (=> b!4296823 m!4889064))

(declare-fun m!4889099 () Bool)

(assert (=> b!4296823 m!4889099))

(assert (=> b!4296768 d!1266240))

(declare-fun d!1266242 () Bool)

(declare-fun isBalanced!3894 (Conc!14442) Bool)

(assert (=> d!1266242 (= (inv!63443 (totalInput!4424 thiss!29019)) (isBalanced!3894 (c!730997 (totalInput!4424 thiss!29019))))))

(declare-fun bs!603825 () Bool)

(assert (= bs!603825 d!1266242))

(declare-fun m!4889101 () Bool)

(assert (=> bs!603825 m!4889101))

(assert (=> b!4296763 d!1266242))

(declare-fun d!1266244 () Bool)

(declare-fun res!1761127 () Bool)

(declare-fun e!2670378 () Bool)

(assert (=> d!1266244 (=> (not res!1761127) (not e!2670378))))

(assert (=> d!1266244 (= res!1761127 ((_ is HashMap!4389) (cache!4529 thiss!29019)))))

(assert (=> d!1266244 (= (inv!63442 thiss!29019) e!2670378)))

(declare-fun b!4296826 () Bool)

(assert (=> b!4296826 (= e!2670378 (validCacheMapFindLongestMatch!94 (cache!4529 thiss!29019) (totalInput!4424 thiss!29019)))))

(assert (= (and d!1266244 res!1761127) b!4296826))

(assert (=> b!4296826 m!4889050))

(assert (=> start!412504 d!1266244))

(declare-fun d!1266246 () Bool)

(assert (=> d!1266246 (= (inv!63443 localTotalInput!12) (isBalanced!3894 (c!730997 localTotalInput!12)))))

(declare-fun bs!603826 () Bool)

(assert (= bs!603826 d!1266246))

(declare-fun m!4889103 () Bool)

(assert (=> bs!603826 m!4889103))

(assert (=> start!412504 d!1266246))

(declare-fun d!1266248 () Bool)

(declare-fun c!731010 () Bool)

(assert (=> d!1266248 (= c!731010 ((_ is Node!14442) (c!730997 (totalInput!4424 thiss!29019))))))

(declare-fun e!2670379 () Bool)

(assert (=> d!1266248 (= (inv!63440 (c!730997 (totalInput!4424 thiss!29019))) e!2670379)))

(declare-fun b!4296827 () Bool)

(assert (=> b!4296827 (= e!2670379 (inv!63444 (c!730997 (totalInput!4424 thiss!29019))))))

(declare-fun b!4296828 () Bool)

(declare-fun e!2670380 () Bool)

(assert (=> b!4296828 (= e!2670379 e!2670380)))

(declare-fun res!1761128 () Bool)

(assert (=> b!4296828 (= res!1761128 (not ((_ is Leaf!22344) (c!730997 (totalInput!4424 thiss!29019)))))))

(assert (=> b!4296828 (=> res!1761128 e!2670380)))

(declare-fun b!4296829 () Bool)

(assert (=> b!4296829 (= e!2670380 (inv!63445 (c!730997 (totalInput!4424 thiss!29019))))))

(assert (= (and d!1266248 c!731010) b!4296827))

(assert (= (and d!1266248 (not c!731010)) b!4296828))

(assert (= (and b!4296828 (not res!1761128)) b!4296829))

(declare-fun m!4889105 () Bool)

(assert (=> b!4296827 m!4889105))

(declare-fun m!4889107 () Bool)

(assert (=> b!4296829 m!4889107))

(assert (=> b!4296759 d!1266248))

(declare-fun b!4296834 () Bool)

(declare-fun e!2670383 () Bool)

(declare-fun tp!1319769 () Bool)

(declare-fun tp!1319770 () Bool)

(assert (=> b!4296834 (= e!2670383 (and tp!1319769 tp!1319770))))

(assert (=> b!4296767 (= tp!1319762 e!2670383)))

(assert (= (and b!4296767 ((_ is Cons!47870) (exprs!3391 setElem!26818))) b!4296834))

(declare-fun condSetEmpty!26821 () Bool)

(assert (=> setNonEmpty!26818 (= condSetEmpty!26821 (= setRest!26818 ((as const (Array Context!5782 Bool)) false)))))

(declare-fun setRes!26821 () Bool)

(assert (=> setNonEmpty!26818 (= tp!1319759 setRes!26821)))

(declare-fun setIsEmpty!26821 () Bool)

(assert (=> setIsEmpty!26821 setRes!26821))

(declare-fun setNonEmpty!26821 () Bool)

(declare-fun e!2670386 () Bool)

(declare-fun tp!1319775 () Bool)

(declare-fun setElem!26821 () Context!5782)

(assert (=> setNonEmpty!26821 (= setRes!26821 (and tp!1319775 (inv!63441 setElem!26821) e!2670386))))

(declare-fun setRest!26821 () (InoxSet Context!5782))

(assert (=> setNonEmpty!26821 (= setRest!26818 ((_ map or) (store ((as const (Array Context!5782 Bool)) false) setElem!26821 true) setRest!26821))))

(declare-fun b!4296839 () Bool)

(declare-fun tp!1319776 () Bool)

(assert (=> b!4296839 (= e!2670386 tp!1319776)))

(assert (= (and setNonEmpty!26818 condSetEmpty!26821) setIsEmpty!26821))

(assert (= (and setNonEmpty!26818 (not condSetEmpty!26821)) setNonEmpty!26821))

(assert (= setNonEmpty!26821 b!4296839))

(declare-fun m!4889109 () Bool)

(assert (=> setNonEmpty!26821 m!4889109))

(declare-fun b!4296848 () Bool)

(declare-fun tp!1319783 () Bool)

(declare-fun tp!1319784 () Bool)

(declare-fun e!2670391 () Bool)

(assert (=> b!4296848 (= e!2670391 (and (inv!63440 (left!35509 (c!730997 localTotalInput!12))) tp!1319784 (inv!63440 (right!35839 (c!730997 localTotalInput!12))) tp!1319783))))

(declare-fun b!4296850 () Bool)

(declare-fun e!2670392 () Bool)

(declare-fun tp!1319785 () Bool)

(assert (=> b!4296850 (= e!2670392 tp!1319785)))

(declare-fun b!4296849 () Bool)

(declare-fun inv!63446 (IArray!28945) Bool)

(assert (=> b!4296849 (= e!2670391 (and (inv!63446 (xs!17748 (c!730997 localTotalInput!12))) e!2670392))))

(assert (=> b!4296757 (= tp!1319756 (and (inv!63440 (c!730997 localTotalInput!12)) e!2670391))))

(assert (= (and b!4296757 ((_ is Node!14442) (c!730997 localTotalInput!12))) b!4296848))

(assert (= b!4296849 b!4296850))

(assert (= (and b!4296757 ((_ is Leaf!22344) (c!730997 localTotalInput!12))) b!4296849))

(declare-fun m!4889111 () Bool)

(assert (=> b!4296848 m!4889111))

(declare-fun m!4889113 () Bool)

(assert (=> b!4296848 m!4889113))

(declare-fun m!4889115 () Bool)

(assert (=> b!4296849 m!4889115))

(assert (=> b!4296757 m!4889042))

(declare-fun b!4296858 () Bool)

(declare-fun e!2670397 () Bool)

(declare-fun tp!1319794 () Bool)

(assert (=> b!4296858 (= e!2670397 tp!1319794)))

(declare-fun setIsEmpty!26824 () Bool)

(declare-fun setRes!26824 () Bool)

(assert (=> setIsEmpty!26824 setRes!26824))

(declare-fun e!2670398 () Bool)

(assert (=> b!4296756 (= tp!1319757 e!2670398)))

(declare-fun tp!1319793 () Bool)

(declare-fun setNonEmpty!26824 () Bool)

(declare-fun setElem!26824 () Context!5782)

(assert (=> setNonEmpty!26824 (= setRes!26824 (and tp!1319793 (inv!63441 setElem!26824) e!2670397))))

(declare-fun setRest!26824 () (InoxSet Context!5782))

(assert (=> setNonEmpty!26824 (= (_1!26114 (_1!26115 (h!53291 (zeroValue!4742 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5782 Bool)) false) setElem!26824 true) setRest!26824))))

(declare-fun b!4296857 () Bool)

(declare-fun tp!1319792 () Bool)

(assert (=> b!4296857 (= e!2670398 (and setRes!26824 tp!1319792))))

(declare-fun condSetEmpty!26824 () Bool)

(assert (=> b!4296857 (= condSetEmpty!26824 (= (_1!26114 (_1!26115 (h!53291 (zeroValue!4742 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))))) ((as const (Array Context!5782 Bool)) false)))))

(assert (= (and b!4296857 condSetEmpty!26824) setIsEmpty!26824))

(assert (= (and b!4296857 (not condSetEmpty!26824)) setNonEmpty!26824))

(assert (= setNonEmpty!26824 b!4296858))

(assert (= (and b!4296756 ((_ is Cons!47871) (zeroValue!4742 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019)))))))) b!4296857))

(declare-fun m!4889117 () Bool)

(assert (=> setNonEmpty!26824 m!4889117))

(declare-fun b!4296860 () Bool)

(declare-fun e!2670399 () Bool)

(declare-fun tp!1319797 () Bool)

(assert (=> b!4296860 (= e!2670399 tp!1319797)))

(declare-fun setIsEmpty!26825 () Bool)

(declare-fun setRes!26825 () Bool)

(assert (=> setIsEmpty!26825 setRes!26825))

(declare-fun e!2670400 () Bool)

(assert (=> b!4296756 (= tp!1319758 e!2670400)))

(declare-fun tp!1319796 () Bool)

(declare-fun setElem!26825 () Context!5782)

(declare-fun setNonEmpty!26825 () Bool)

(assert (=> setNonEmpty!26825 (= setRes!26825 (and tp!1319796 (inv!63441 setElem!26825) e!2670399))))

(declare-fun setRest!26825 () (InoxSet Context!5782))

(assert (=> setNonEmpty!26825 (= (_1!26114 (_1!26115 (h!53291 (minValue!4742 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5782 Bool)) false) setElem!26825 true) setRest!26825))))

(declare-fun b!4296859 () Bool)

(declare-fun tp!1319795 () Bool)

(assert (=> b!4296859 (= e!2670400 (and setRes!26825 tp!1319795))))

(declare-fun condSetEmpty!26825 () Bool)

(assert (=> b!4296859 (= condSetEmpty!26825 (= (_1!26114 (_1!26115 (h!53291 (minValue!4742 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019))))))))) ((as const (Array Context!5782 Bool)) false)))))

(assert (= (and b!4296859 condSetEmpty!26825) setIsEmpty!26825))

(assert (= (and b!4296859 (not condSetEmpty!26825)) setNonEmpty!26825))

(assert (= setNonEmpty!26825 b!4296860))

(assert (= (and b!4296756 ((_ is Cons!47871) (minValue!4742 (v!41803 (underlying!9195 (v!41804 (underlying!9196 (cache!4529 thiss!29019)))))))) b!4296859))

(declare-fun m!4889119 () Bool)

(assert (=> setNonEmpty!26825 m!4889119))

(declare-fun setNonEmpty!26830 () Bool)

(declare-fun setElem!26830 () Context!5782)

(declare-fun tp!1319818 () Bool)

(declare-fun e!2670410 () Bool)

(declare-fun setRes!26830 () Bool)

(assert (=> setNonEmpty!26830 (= setRes!26830 (and tp!1319818 (inv!63441 setElem!26830) e!2670410))))

(declare-fun mapValue!20151 () List!47995)

(declare-fun setRest!26831 () (InoxSet Context!5782))

(assert (=> setNonEmpty!26830 (= (_1!26114 (_1!26115 (h!53291 mapValue!20151))) ((_ map or) (store ((as const (Array Context!5782 Bool)) false) setElem!26830 true) setRest!26831))))

(declare-fun condMapEmpty!20151 () Bool)

(declare-fun mapDefault!20151 () List!47995)

(assert (=> mapNonEmpty!20148 (= condMapEmpty!20151 (= mapRest!20148 ((as const (Array (_ BitVec 32) List!47995)) mapDefault!20151)))))

(declare-fun e!2670412 () Bool)

(declare-fun mapRes!20151 () Bool)

(assert (=> mapNonEmpty!20148 (= tp!1319763 (and e!2670412 mapRes!20151))))

(declare-fun b!4296871 () Bool)

(declare-fun tp!1319812 () Bool)

(assert (=> b!4296871 (= e!2670410 tp!1319812)))

(declare-fun mapIsEmpty!20151 () Bool)

(assert (=> mapIsEmpty!20151 mapRes!20151))

(declare-fun b!4296872 () Bool)

(declare-fun setRes!26831 () Bool)

(declare-fun tp!1319814 () Bool)

(assert (=> b!4296872 (= e!2670412 (and setRes!26831 tp!1319814))))

(declare-fun condSetEmpty!26831 () Bool)

(assert (=> b!4296872 (= condSetEmpty!26831 (= (_1!26114 (_1!26115 (h!53291 mapDefault!20151))) ((as const (Array Context!5782 Bool)) false)))))

(declare-fun setNonEmpty!26831 () Bool)

(declare-fun e!2670411 () Bool)

(declare-fun setElem!26831 () Context!5782)

(declare-fun tp!1319816 () Bool)

(assert (=> setNonEmpty!26831 (= setRes!26831 (and tp!1319816 (inv!63441 setElem!26831) e!2670411))))

(declare-fun setRest!26830 () (InoxSet Context!5782))

(assert (=> setNonEmpty!26831 (= (_1!26114 (_1!26115 (h!53291 mapDefault!20151))) ((_ map or) (store ((as const (Array Context!5782 Bool)) false) setElem!26831 true) setRest!26830))))

(declare-fun b!4296873 () Bool)

(declare-fun tp!1319813 () Bool)

(assert (=> b!4296873 (= e!2670411 tp!1319813)))

(declare-fun setIsEmpty!26830 () Bool)

(assert (=> setIsEmpty!26830 setRes!26831))

(declare-fun b!4296874 () Bool)

(declare-fun e!2670409 () Bool)

(declare-fun tp!1319817 () Bool)

(assert (=> b!4296874 (= e!2670409 (and setRes!26830 tp!1319817))))

(declare-fun condSetEmpty!26830 () Bool)

(assert (=> b!4296874 (= condSetEmpty!26830 (= (_1!26114 (_1!26115 (h!53291 mapValue!20151))) ((as const (Array Context!5782 Bool)) false)))))

(declare-fun setIsEmpty!26831 () Bool)

(assert (=> setIsEmpty!26831 setRes!26830))

(declare-fun mapNonEmpty!20151 () Bool)

(declare-fun tp!1319815 () Bool)

(assert (=> mapNonEmpty!20151 (= mapRes!20151 (and tp!1319815 e!2670409))))

(declare-fun mapKey!20151 () (_ BitVec 32))

(declare-fun mapRest!20151 () (Array (_ BitVec 32) List!47995))

(assert (=> mapNonEmpty!20151 (= mapRest!20148 (store mapRest!20151 mapKey!20151 mapValue!20151))))

(assert (= (and mapNonEmpty!20148 condMapEmpty!20151) mapIsEmpty!20151))

(assert (= (and mapNonEmpty!20148 (not condMapEmpty!20151)) mapNonEmpty!20151))

(assert (= (and b!4296874 condSetEmpty!26830) setIsEmpty!26831))

(assert (= (and b!4296874 (not condSetEmpty!26830)) setNonEmpty!26830))

(assert (= setNonEmpty!26830 b!4296871))

(assert (= (and mapNonEmpty!20151 ((_ is Cons!47871) mapValue!20151)) b!4296874))

(assert (= (and b!4296872 condSetEmpty!26831) setIsEmpty!26830))

(assert (= (and b!4296872 (not condSetEmpty!26831)) setNonEmpty!26831))

(assert (= setNonEmpty!26831 b!4296873))

(assert (= (and mapNonEmpty!20148 ((_ is Cons!47871) mapDefault!20151)) b!4296872))

(declare-fun m!4889121 () Bool)

(assert (=> setNonEmpty!26830 m!4889121))

(declare-fun m!4889123 () Bool)

(assert (=> setNonEmpty!26831 m!4889123))

(declare-fun m!4889125 () Bool)

(assert (=> mapNonEmpty!20151 m!4889125))

(declare-fun b!4296876 () Bool)

(declare-fun e!2670413 () Bool)

(declare-fun tp!1319821 () Bool)

(assert (=> b!4296876 (= e!2670413 tp!1319821)))

(declare-fun setIsEmpty!26832 () Bool)

(declare-fun setRes!26832 () Bool)

(assert (=> setIsEmpty!26832 setRes!26832))

(declare-fun e!2670414 () Bool)

(assert (=> mapNonEmpty!20148 (= tp!1319760 e!2670414)))

(declare-fun setNonEmpty!26832 () Bool)

(declare-fun tp!1319820 () Bool)

(declare-fun setElem!26832 () Context!5782)

(assert (=> setNonEmpty!26832 (= setRes!26832 (and tp!1319820 (inv!63441 setElem!26832) e!2670413))))

(declare-fun setRest!26832 () (InoxSet Context!5782))

(assert (=> setNonEmpty!26832 (= (_1!26114 (_1!26115 (h!53291 mapValue!20148))) ((_ map or) (store ((as const (Array Context!5782 Bool)) false) setElem!26832 true) setRest!26832))))

(declare-fun b!4296875 () Bool)

(declare-fun tp!1319819 () Bool)

(assert (=> b!4296875 (= e!2670414 (and setRes!26832 tp!1319819))))

(declare-fun condSetEmpty!26832 () Bool)

(assert (=> b!4296875 (= condSetEmpty!26832 (= (_1!26114 (_1!26115 (h!53291 mapValue!20148))) ((as const (Array Context!5782 Bool)) false)))))

(assert (= (and b!4296875 condSetEmpty!26832) setIsEmpty!26832))

(assert (= (and b!4296875 (not condSetEmpty!26832)) setNonEmpty!26832))

(assert (= setNonEmpty!26832 b!4296876))

(assert (= (and mapNonEmpty!20148 ((_ is Cons!47871) mapValue!20148)) b!4296875))

(declare-fun m!4889127 () Bool)

(assert (=> setNonEmpty!26832 m!4889127))

(declare-fun b!4296878 () Bool)

(declare-fun e!2670415 () Bool)

(declare-fun tp!1319824 () Bool)

(assert (=> b!4296878 (= e!2670415 tp!1319824)))

(declare-fun setIsEmpty!26833 () Bool)

(declare-fun setRes!26833 () Bool)

(assert (=> setIsEmpty!26833 setRes!26833))

(declare-fun e!2670416 () Bool)

(assert (=> b!4296755 (= tp!1319755 e!2670416)))

(declare-fun setElem!26833 () Context!5782)

(declare-fun tp!1319823 () Bool)

(declare-fun setNonEmpty!26833 () Bool)

(assert (=> setNonEmpty!26833 (= setRes!26833 (and tp!1319823 (inv!63441 setElem!26833) e!2670415))))

(declare-fun setRest!26833 () (InoxSet Context!5782))

(assert (=> setNonEmpty!26833 (= (_1!26114 (_1!26115 (h!53291 mapDefault!20148))) ((_ map or) (store ((as const (Array Context!5782 Bool)) false) setElem!26833 true) setRest!26833))))

(declare-fun b!4296877 () Bool)

(declare-fun tp!1319822 () Bool)

(assert (=> b!4296877 (= e!2670416 (and setRes!26833 tp!1319822))))

(declare-fun condSetEmpty!26833 () Bool)

(assert (=> b!4296877 (= condSetEmpty!26833 (= (_1!26114 (_1!26115 (h!53291 mapDefault!20148))) ((as const (Array Context!5782 Bool)) false)))))

(assert (= (and b!4296877 condSetEmpty!26833) setIsEmpty!26833))

(assert (= (and b!4296877 (not condSetEmpty!26833)) setNonEmpty!26833))

(assert (= setNonEmpty!26833 b!4296878))

(assert (= (and b!4296755 ((_ is Cons!47871) mapDefault!20148)) b!4296877))

(declare-fun m!4889129 () Bool)

(assert (=> setNonEmpty!26833 m!4889129))

(declare-fun e!2670417 () Bool)

(declare-fun tp!1319825 () Bool)

(declare-fun b!4296879 () Bool)

(declare-fun tp!1319826 () Bool)

(assert (=> b!4296879 (= e!2670417 (and (inv!63440 (left!35509 (c!730997 (totalInput!4424 thiss!29019)))) tp!1319826 (inv!63440 (right!35839 (c!730997 (totalInput!4424 thiss!29019)))) tp!1319825))))

(declare-fun b!4296881 () Bool)

(declare-fun e!2670418 () Bool)

(declare-fun tp!1319827 () Bool)

(assert (=> b!4296881 (= e!2670418 tp!1319827)))

(declare-fun b!4296880 () Bool)

(assert (=> b!4296880 (= e!2670417 (and (inv!63446 (xs!17748 (c!730997 (totalInput!4424 thiss!29019)))) e!2670418))))

(assert (=> b!4296759 (= tp!1319761 (and (inv!63440 (c!730997 (totalInput!4424 thiss!29019))) e!2670417))))

(assert (= (and b!4296759 ((_ is Node!14442) (c!730997 (totalInput!4424 thiss!29019)))) b!4296879))

(assert (= b!4296880 b!4296881))

(assert (= (and b!4296759 ((_ is Leaf!22344) (c!730997 (totalInput!4424 thiss!29019)))) b!4296880))

(declare-fun m!4889131 () Bool)

(assert (=> b!4296879 m!4889131))

(declare-fun m!4889133 () Bool)

(assert (=> b!4296879 m!4889133))

(declare-fun m!4889135 () Bool)

(assert (=> b!4296880 m!4889135))

(assert (=> b!4296759 m!4889048))

(declare-fun b_lambda!126135 () Bool)

(assert (= b_lambda!126133 (or b!4296758 b_lambda!126135)))

(declare-fun bs!603827 () Bool)

(declare-fun d!1266250 () Bool)

(assert (= bs!603827 (and d!1266250 b!4296758)))

(declare-fun validCacheMapFindLongestMatchBody!11 (tuple2!45672 BalanceConc!28374) Bool)

(assert (=> bs!603827 (= (dynLambda!20331 lambda!131756 (h!53291 (toList!2146 (map!9833 (cache!4529 thiss!29019))))) (validCacheMapFindLongestMatchBody!11 (h!53291 (toList!2146 (map!9833 (cache!4529 thiss!29019)))) localTotalInput!12))))

(declare-fun m!4889137 () Bool)

(assert (=> bs!603827 m!4889137))

(assert (=> b!4296777 d!1266250))

(check-sat (not b!4296881) (not b!4296759) (not b!4296827) (not b!4296858) (not setNonEmpty!26831) (not b!4296879) (not b!4296807) (not b!4296880) (not d!1266228) (not b!4296826) (not d!1266242) (not setNonEmpty!26830) (not b!4296850) (not b!4296857) (not b_next!128511) (not d!1266238) (not d!1266246) (not b!4296778) (not d!1266226) (not b!4296787) (not b!4296808) (not b!4296839) (not setNonEmpty!26833) (not setNonEmpty!26832) (not b!4296823) (not mapNonEmpty!20151) (not b!4296871) (not b!4296875) (not b!4296873) (not setNonEmpty!26824) (not b!4296849) (not b!4296859) (not b!4296810) (not setNonEmpty!26821) b_and!339023 (not b!4296816) (not b!4296834) (not b!4296822) (not bs!603827) (not b_next!128513) (not b!4296872) (not setNonEmpty!26825) (not d!1266224) (not b!4296848) (not b!4296785) (not b!4296878) (not b!4296876) (not d!1266240) (not b!4296874) (not b!4296860) (not b!4296877) (not b!4296829) (not b!4296817) (not b!4296806) b_and!339025 (not b_lambda!126135) (not b!4296757))
(check-sat b_and!339023 b_and!339025 (not b_next!128511) (not b_next!128513))
