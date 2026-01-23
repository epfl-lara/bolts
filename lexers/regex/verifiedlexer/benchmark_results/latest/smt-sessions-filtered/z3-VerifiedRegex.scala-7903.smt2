; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412562 () Bool)

(assert start!412562)

(declare-fun b!4297203 () Bool)

(declare-fun b_free!127823 () Bool)

(declare-fun b_next!128527 () Bool)

(assert (=> b!4297203 (= b_free!127823 (not b_next!128527))))

(declare-fun tp!1320012 () Bool)

(declare-fun b_and!339039 () Bool)

(assert (=> b!4297203 (= tp!1320012 b_and!339039)))

(declare-fun b!4297199 () Bool)

(declare-fun b_free!127825 () Bool)

(declare-fun b_next!128529 () Bool)

(assert (=> b!4297199 (= b_free!127825 (not b_next!128529))))

(declare-fun tp!1320017 () Bool)

(declare-fun b_and!339041 () Bool)

(assert (=> b!4297199 (= tp!1320017 b_and!339041)))

(declare-fun b!4297197 () Bool)

(assert (=> b!4297197 true))

(declare-fun e!2670648 () Bool)

(declare-datatypes ((C!26208 0))(
  ( (C!26209 (val!15430 Int)) )
))
(declare-datatypes ((Regex!13005 0))(
  ( (ElementMatch!13005 (c!731030 C!26208)) (Concat!21324 (regOne!26522 Regex!13005) (regTwo!26522 Regex!13005)) (EmptyExpr!13005) (Star!13005 (reg!13334 Regex!13005)) (EmptyLang!13005) (Union!13005 (regOne!26523 Regex!13005) (regTwo!26523 Regex!13005)) )
))
(declare-datatypes ((List!48008 0))(
  ( (Nil!47884) (Cons!47884 (h!53304 Regex!13005) (t!354615 List!48008)) )
))
(declare-datatypes ((Context!5790 0))(
  ( (Context!5791 (exprs!3395 List!48008)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45690 0))(
  ( (tuple2!45691 (_1!26124 (InoxSet Context!5790)) (_2!26124 Int)) )
))
(declare-datatypes ((tuple2!45692 0))(
  ( (tuple2!45693 (_1!26125 tuple2!45690) (_2!26125 Int)) )
))
(declare-datatypes ((List!48009 0))(
  ( (Nil!47885) (Cons!47885 (h!53305 tuple2!45692) (t!354616 List!48009)) )
))
(declare-datatypes ((array!16026 0))(
  ( (array!16027 (arr!7159 (Array (_ BitVec 32) (_ BitVec 64))) (size!35195 (_ BitVec 32))) )
))
(declare-datatypes ((array!16028 0))(
  ( (array!16029 (arr!7160 (Array (_ BitVec 32) List!48009)) (size!35196 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8974 0))(
  ( (LongMapFixedSize!8975 (defaultEntry!4872 Int) (mask!12959 (_ BitVec 32)) (extraKeys!4736 (_ BitVec 32)) (zeroValue!4746 List!48009) (minValue!4746 List!48009) (_size!9017 (_ BitVec 32)) (_keys!4787 array!16026) (_values!4768 array!16028) (_vacant!4548 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17757 0))(
  ( (Cell!17758 (v!41811 LongMapFixedSize!8974)) )
))
(declare-datatypes ((MutLongMap!4487 0))(
  ( (LongMap!4487 (underlying!9203 Cell!17757)) (MutLongMapExt!4486 (__x!29486 Int)) )
))
(declare-datatypes ((Cell!17759 0))(
  ( (Cell!17760 (v!41812 MutLongMap!4487)) )
))
(declare-datatypes ((Hashable!4403 0))(
  ( (HashableExt!4402 (__x!29487 Int)) )
))
(declare-datatypes ((MutableMap!4393 0))(
  ( (MutableMapExt!4392 (__x!29488 Int)) (HashMap!4393 (underlying!9204 Cell!17759) (hashF!6435 Hashable!4403) (_size!9018 (_ BitVec 32)) (defaultValue!4564 Int)) )
))
(declare-datatypes ((List!48010 0))(
  ( (Nil!47886) (Cons!47886 (h!53306 C!26208) (t!354617 List!48010)) )
))
(declare-datatypes ((IArray!28953 0))(
  ( (IArray!28954 (innerList!14534 List!48010)) )
))
(declare-datatypes ((Conc!14446 0))(
  ( (Node!14446 (left!35523 Conc!14446) (right!35853 Conc!14446) (csize!29122 Int) (cheight!14657 Int)) (Leaf!22350 (xs!17752 IArray!28953) (csize!29123 Int)) (Empty!14446) )
))
(declare-datatypes ((BalanceConc!28382 0))(
  ( (BalanceConc!28383 (c!731031 Conc!14446)) )
))
(declare-datatypes ((CacheFindLongestMatch!580 0))(
  ( (CacheFindLongestMatch!581 (cache!4533 MutableMap!4393) (totalInput!4433 BalanceConc!28382)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!580)

(declare-fun b!4297191 () Bool)

(declare-fun e!2670655 () Bool)

(declare-fun e!2670646 () Bool)

(declare-fun inv!63468 (BalanceConc!28382) Bool)

(assert (=> b!4297191 (= e!2670646 (and e!2670648 (inv!63468 (totalInput!4433 thiss!29019)) e!2670655))))

(declare-fun b!4297192 () Bool)

(declare-fun e!2670653 () Bool)

(declare-fun tp!1320015 () Bool)

(declare-fun mapRes!20166 () Bool)

(assert (=> b!4297192 (= e!2670653 (and tp!1320015 mapRes!20166))))

(declare-fun condMapEmpty!20166 () Bool)

(declare-fun mapDefault!20166 () List!48009)

(assert (=> b!4297192 (= condMapEmpty!20166 (= (arr!7160 (_values!4768 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!48009)) mapDefault!20166)))))

(declare-fun b!4297193 () Bool)

(declare-fun tp!1320013 () Bool)

(declare-fun inv!63469 (Conc!14446) Bool)

(assert (=> b!4297193 (= e!2670655 (and (inv!63469 (c!731031 (totalInput!4433 thiss!29019))) tp!1320013))))

(declare-fun b!4297194 () Bool)

(declare-fun res!1761244 () Bool)

(declare-fun e!2670659 () Bool)

(assert (=> b!4297194 (=> (not res!1761244) (not e!2670659))))

(declare-fun validCacheMapFindLongestMatch!97 (MutableMap!4393 BalanceConc!28382) Bool)

(assert (=> b!4297194 (= res!1761244 (validCacheMapFindLongestMatch!97 (cache!4533 thiss!29019) (totalInput!4433 thiss!29019)))))

(declare-fun b!4297195 () Bool)

(declare-fun e!2670652 () Bool)

(declare-fun e!2670647 () Bool)

(assert (=> b!4297195 (= e!2670652 e!2670647)))

(declare-fun b!4297196 () Bool)

(declare-fun e!2670654 () Bool)

(declare-fun localTotalInput!12 () BalanceConc!28382)

(declare-fun tp!1320021 () Bool)

(assert (=> b!4297196 (= e!2670654 (and (inv!63469 (c!731031 localTotalInput!12)) tp!1320021))))

(declare-fun e!2670657 () Bool)

(declare-fun e!2670649 () Bool)

(assert (=> b!4297197 (= e!2670657 (not e!2670649))))

(declare-fun res!1761248 () Bool)

(assert (=> b!4297197 (=> (not res!1761248) (not e!2670649))))

(declare-datatypes ((tuple2!45694 0))(
  ( (tuple2!45695 (_1!26126 Bool) (_2!26126 MutableMap!4393)) )
))
(declare-fun lt!1518729 () tuple2!45694)

(assert (=> b!4297197 (= res!1761248 (validCacheMapFindLongestMatch!97 (_2!26126 lt!1518729) (totalInput!4433 thiss!29019)))))

(declare-fun lambda!131786 () Int)

(declare-fun forall!8589 (List!48009 Int) Bool)

(declare-datatypes ((ListMap!1417 0))(
  ( (ListMap!1418 (toList!2151 List!48009)) )
))
(declare-fun map!9840 (MutableMap!4393) ListMap!1417)

(assert (=> b!4297197 (forall!8589 (toList!2151 (map!9840 (_2!26126 lt!1518729))) lambda!131786)))

(declare-fun lt!1518727 () tuple2!45690)

(declare-fun res!14399 () Int)

(declare-fun update!294 (MutableMap!4393 tuple2!45690 Int) tuple2!45694)

(assert (=> b!4297197 (= lt!1518729 (update!294 (cache!4533 thiss!29019) lt!1518727 res!14399))))

(declare-datatypes ((Unit!66503 0))(
  ( (Unit!66504) )
))
(declare-fun lt!1518726 () Unit!66503)

(declare-fun lemmaUpdatePreservesForallPairs!43 (MutableMap!4393 tuple2!45690 Int Int) Unit!66503)

(assert (=> b!4297197 (= lt!1518726 (lemmaUpdatePreservesForallPairs!43 (cache!4533 thiss!29019) lt!1518727 res!14399 lambda!131786))))

(declare-fun z!500 () (InoxSet Context!5790))

(declare-fun from!940 () Int)

(assert (=> b!4297197 (= lt!1518727 (tuple2!45691 z!500 from!940))))

(declare-fun b!4297198 () Bool)

(assert (=> b!4297198 (= e!2670659 e!2670657)))

(declare-fun res!1761246 () Bool)

(assert (=> b!4297198 (=> (not res!1761246) (not e!2670657))))

(declare-fun lt!1518725 () Int)

(assert (=> b!4297198 (= res!1761246 (<= from!940 lt!1518725))))

(declare-fun size!35197 (BalanceConc!28382) Int)

(assert (=> b!4297198 (= lt!1518725 (size!35197 (totalInput!4433 thiss!29019)))))

(declare-fun tp!1320020 () Bool)

(declare-fun tp!1320016 () Bool)

(declare-fun e!2670658 () Bool)

(declare-fun array_inv!5131 (array!16026) Bool)

(declare-fun array_inv!5132 (array!16028) Bool)

(assert (=> b!4297199 (= e!2670658 (and tp!1320017 tp!1320016 tp!1320020 (array_inv!5131 (_keys!4787 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))) (array_inv!5132 (_values!4768 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))) e!2670653))))

(declare-fun res!1761245 () Bool)

(assert (=> start!412562 (=> (not res!1761245) (not e!2670659))))

(assert (=> start!412562 (= res!1761245 (= localTotalInput!12 (totalInput!4433 thiss!29019)))))

(assert (=> start!412562 e!2670659))

(declare-fun condSetEmpty!26860 () Bool)

(assert (=> start!412562 (= condSetEmpty!26860 (= z!500 ((as const (Array Context!5790 Bool)) false)))))

(declare-fun setRes!26860 () Bool)

(assert (=> start!412562 setRes!26860))

(assert (=> start!412562 true))

(declare-fun inv!63470 (CacheFindLongestMatch!580) Bool)

(assert (=> start!412562 (and (inv!63470 thiss!29019) e!2670646)))

(assert (=> start!412562 (and (inv!63468 localTotalInput!12) e!2670654)))

(declare-fun b!4297200 () Bool)

(declare-fun e!2670651 () Bool)

(declare-fun lt!1518728 () MutLongMap!4487)

(get-info :version)

(assert (=> b!4297200 (= e!2670651 (and e!2670652 ((_ is LongMap!4487) lt!1518728)))))

(assert (=> b!4297200 (= lt!1518728 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))

(declare-fun b!4297201 () Bool)

(assert (=> b!4297201 (= e!2670647 e!2670658)))

(declare-fun mapIsEmpty!20166 () Bool)

(assert (=> mapIsEmpty!20166 mapRes!20166))

(declare-fun b!4297202 () Bool)

(declare-fun res!1761249 () Bool)

(assert (=> b!4297202 (=> (not res!1761249) (not e!2670657))))

(declare-fun findLongestMatchInnerZipperFastV2!58 ((InoxSet Context!5790) Int BalanceConc!28382 Int) Int)

(assert (=> b!4297202 (= res!1761249 (= res!14399 (findLongestMatchInnerZipperFastV2!58 z!500 from!940 (totalInput!4433 thiss!29019) lt!1518725)))))

(assert (=> b!4297203 (= e!2670648 (and e!2670651 tp!1320012))))

(declare-fun b!4297204 () Bool)

(assert (=> b!4297204 (= e!2670649 (= (totalInput!4433 thiss!29019) localTotalInput!12))))

(declare-fun b!4297205 () Bool)

(declare-fun e!2670656 () Bool)

(declare-fun tp!1320022 () Bool)

(assert (=> b!4297205 (= e!2670656 tp!1320022)))

(declare-fun b!4297206 () Bool)

(declare-fun res!1761247 () Bool)

(assert (=> b!4297206 (=> (not res!1761247) (not e!2670659))))

(assert (=> b!4297206 (= res!1761247 (>= from!940 0))))

(declare-fun setElem!26860 () Context!5790)

(declare-fun setNonEmpty!26860 () Bool)

(declare-fun tp!1320019 () Bool)

(declare-fun inv!63471 (Context!5790) Bool)

(assert (=> setNonEmpty!26860 (= setRes!26860 (and tp!1320019 (inv!63471 setElem!26860) e!2670656))))

(declare-fun setRest!26860 () (InoxSet Context!5790))

(assert (=> setNonEmpty!26860 (= z!500 ((_ map or) (store ((as const (Array Context!5790 Bool)) false) setElem!26860 true) setRest!26860))))

(declare-fun setIsEmpty!26860 () Bool)

(assert (=> setIsEmpty!26860 setRes!26860))

(declare-fun mapNonEmpty!20166 () Bool)

(declare-fun tp!1320018 () Bool)

(declare-fun tp!1320014 () Bool)

(assert (=> mapNonEmpty!20166 (= mapRes!20166 (and tp!1320018 tp!1320014))))

(declare-fun mapKey!20166 () (_ BitVec 32))

(declare-fun mapValue!20166 () List!48009)

(declare-fun mapRest!20166 () (Array (_ BitVec 32) List!48009))

(assert (=> mapNonEmpty!20166 (= (arr!7160 (_values!4768 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))) (store mapRest!20166 mapKey!20166 mapValue!20166))))

(assert (= (and start!412562 res!1761245) b!4297194))

(assert (= (and b!4297194 res!1761244) b!4297206))

(assert (= (and b!4297206 res!1761247) b!4297198))

(assert (= (and b!4297198 res!1761246) b!4297202))

(assert (= (and b!4297202 res!1761249) b!4297197))

(assert (= (and b!4297197 res!1761248) b!4297204))

(assert (= (and start!412562 condSetEmpty!26860) setIsEmpty!26860))

(assert (= (and start!412562 (not condSetEmpty!26860)) setNonEmpty!26860))

(assert (= setNonEmpty!26860 b!4297205))

(assert (= (and b!4297192 condMapEmpty!20166) mapIsEmpty!20166))

(assert (= (and b!4297192 (not condMapEmpty!20166)) mapNonEmpty!20166))

(assert (= b!4297199 b!4297192))

(assert (= b!4297201 b!4297199))

(assert (= b!4297195 b!4297201))

(assert (= (and b!4297200 ((_ is LongMap!4487) (v!41812 (underlying!9204 (cache!4533 thiss!29019))))) b!4297195))

(assert (= b!4297203 b!4297200))

(assert (= (and b!4297191 ((_ is HashMap!4393) (cache!4533 thiss!29019))) b!4297203))

(assert (= b!4297191 b!4297193))

(assert (= start!412562 b!4297191))

(assert (= start!412562 b!4297196))

(declare-fun m!4889322 () Bool)

(assert (=> setNonEmpty!26860 m!4889322))

(declare-fun m!4889324 () Bool)

(assert (=> b!4297191 m!4889324))

(declare-fun m!4889326 () Bool)

(assert (=> start!412562 m!4889326))

(declare-fun m!4889328 () Bool)

(assert (=> start!412562 m!4889328))

(declare-fun m!4889330 () Bool)

(assert (=> b!4297193 m!4889330))

(declare-fun m!4889332 () Bool)

(assert (=> b!4297202 m!4889332))

(declare-fun m!4889334 () Bool)

(assert (=> b!4297198 m!4889334))

(declare-fun m!4889336 () Bool)

(assert (=> b!4297197 m!4889336))

(declare-fun m!4889338 () Bool)

(assert (=> b!4297197 m!4889338))

(declare-fun m!4889340 () Bool)

(assert (=> b!4297197 m!4889340))

(declare-fun m!4889342 () Bool)

(assert (=> b!4297197 m!4889342))

(declare-fun m!4889344 () Bool)

(assert (=> b!4297197 m!4889344))

(declare-fun m!4889346 () Bool)

(assert (=> b!4297199 m!4889346))

(declare-fun m!4889348 () Bool)

(assert (=> b!4297199 m!4889348))

(declare-fun m!4889350 () Bool)

(assert (=> b!4297194 m!4889350))

(declare-fun m!4889352 () Bool)

(assert (=> b!4297196 m!4889352))

(declare-fun m!4889354 () Bool)

(assert (=> mapNonEmpty!20166 m!4889354))

(check-sat (not b!4297196) (not b!4297202) (not start!412562) (not b!4297205) (not b!4297198) (not b!4297199) (not b_next!128529) (not b!4297191) (not b!4297194) (not b!4297192) b_and!339041 (not b!4297197) (not b!4297193) (not mapNonEmpty!20166) b_and!339039 (not b_next!128527) (not setNonEmpty!26860))
(check-sat b_and!339039 b_and!339041 (not b_next!128527) (not b_next!128529))
(get-model)

(declare-fun d!1266286 () Bool)

(declare-fun isBalanced!3896 (Conc!14446) Bool)

(assert (=> d!1266286 (= (inv!63468 (totalInput!4433 thiss!29019)) (isBalanced!3896 (c!731031 (totalInput!4433 thiss!29019))))))

(declare-fun bs!603839 () Bool)

(assert (= bs!603839 d!1266286))

(declare-fun m!4889356 () Bool)

(assert (=> bs!603839 m!4889356))

(assert (=> b!4297191 d!1266286))

(declare-fun d!1266288 () Bool)

(declare-fun res!1761252 () Bool)

(declare-fun e!2670662 () Bool)

(assert (=> d!1266288 (=> (not res!1761252) (not e!2670662))))

(assert (=> d!1266288 (= res!1761252 ((_ is HashMap!4393) (cache!4533 thiss!29019)))))

(assert (=> d!1266288 (= (inv!63470 thiss!29019) e!2670662)))

(declare-fun b!4297211 () Bool)

(assert (=> b!4297211 (= e!2670662 (validCacheMapFindLongestMatch!97 (cache!4533 thiss!29019) (totalInput!4433 thiss!29019)))))

(assert (= (and d!1266288 res!1761252) b!4297211))

(assert (=> b!4297211 m!4889350))

(assert (=> start!412562 d!1266288))

(declare-fun d!1266290 () Bool)

(assert (=> d!1266290 (= (inv!63468 localTotalInput!12) (isBalanced!3896 (c!731031 localTotalInput!12)))))

(declare-fun bs!603840 () Bool)

(assert (= bs!603840 d!1266290))

(declare-fun m!4889358 () Bool)

(assert (=> bs!603840 m!4889358))

(assert (=> start!412562 d!1266290))

(declare-fun d!1266292 () Bool)

(declare-fun c!731034 () Bool)

(assert (=> d!1266292 (= c!731034 ((_ is Node!14446) (c!731031 localTotalInput!12)))))

(declare-fun e!2670667 () Bool)

(assert (=> d!1266292 (= (inv!63469 (c!731031 localTotalInput!12)) e!2670667)))

(declare-fun b!4297218 () Bool)

(declare-fun inv!63472 (Conc!14446) Bool)

(assert (=> b!4297218 (= e!2670667 (inv!63472 (c!731031 localTotalInput!12)))))

(declare-fun b!4297219 () Bool)

(declare-fun e!2670668 () Bool)

(assert (=> b!4297219 (= e!2670667 e!2670668)))

(declare-fun res!1761255 () Bool)

(assert (=> b!4297219 (= res!1761255 (not ((_ is Leaf!22350) (c!731031 localTotalInput!12))))))

(assert (=> b!4297219 (=> res!1761255 e!2670668)))

(declare-fun b!4297220 () Bool)

(declare-fun inv!63473 (Conc!14446) Bool)

(assert (=> b!4297220 (= e!2670668 (inv!63473 (c!731031 localTotalInput!12)))))

(assert (= (and d!1266292 c!731034) b!4297218))

(assert (= (and d!1266292 (not c!731034)) b!4297219))

(assert (= (and b!4297219 (not res!1761255)) b!4297220))

(declare-fun m!4889360 () Bool)

(assert (=> b!4297218 m!4889360))

(declare-fun m!4889362 () Bool)

(assert (=> b!4297220 m!4889362))

(assert (=> b!4297196 d!1266292))

(declare-fun d!1266294 () Bool)

(declare-fun lt!1518732 () Int)

(declare-fun size!35198 (List!48010) Int)

(declare-fun list!17373 (BalanceConc!28382) List!48010)

(assert (=> d!1266294 (= lt!1518732 (size!35198 (list!17373 (totalInput!4433 thiss!29019))))))

(declare-fun size!35199 (Conc!14446) Int)

(assert (=> d!1266294 (= lt!1518732 (size!35199 (c!731031 (totalInput!4433 thiss!29019))))))

(assert (=> d!1266294 (= (size!35197 (totalInput!4433 thiss!29019)) lt!1518732)))

(declare-fun bs!603841 () Bool)

(assert (= bs!603841 d!1266294))

(declare-fun m!4889364 () Bool)

(assert (=> bs!603841 m!4889364))

(assert (=> bs!603841 m!4889364))

(declare-fun m!4889366 () Bool)

(assert (=> bs!603841 m!4889366))

(declare-fun m!4889368 () Bool)

(assert (=> bs!603841 m!4889368))

(assert (=> b!4297198 d!1266294))

(declare-fun b!4297237 () Bool)

(declare-fun e!2670682 () Int)

(assert (=> b!4297237 (= e!2670682 0)))

(declare-fun d!1266296 () Bool)

(declare-fun lt!1518740 () Int)

(assert (=> d!1266296 (and (>= lt!1518740 0) (<= lt!1518740 (- lt!1518725 from!940)))))

(declare-fun e!2670679 () Int)

(assert (=> d!1266296 (= lt!1518740 e!2670679)))

(declare-fun c!731041 () Bool)

(declare-fun e!2670681 () Bool)

(assert (=> d!1266296 (= c!731041 e!2670681)))

(declare-fun res!1761260 () Bool)

(assert (=> d!1266296 (=> res!1761260 e!2670681)))

(assert (=> d!1266296 (= res!1761260 (= from!940 lt!1518725))))

(declare-fun e!2670683 () Bool)

(assert (=> d!1266296 e!2670683))

(declare-fun res!1761261 () Bool)

(assert (=> d!1266296 (=> (not res!1761261) (not e!2670683))))

(assert (=> d!1266296 (= res!1761261 (>= from!940 0))))

(assert (=> d!1266296 (= (findLongestMatchInnerZipperFastV2!58 z!500 from!940 (totalInput!4433 thiss!29019) lt!1518725) lt!1518740)))

(declare-fun b!4297238 () Bool)

(declare-fun e!2670680 () Int)

(declare-fun lt!1518739 () Int)

(assert (=> b!4297238 (= e!2670680 (+ 1 lt!1518739))))

(declare-fun b!4297239 () Bool)

(declare-fun lostCauseZipper!663 ((InoxSet Context!5790)) Bool)

(assert (=> b!4297239 (= e!2670681 (lostCauseZipper!663 z!500))))

(declare-fun b!4297240 () Bool)

(assert (=> b!4297240 (= e!2670682 1)))

(declare-fun b!4297241 () Bool)

(assert (=> b!4297241 (= e!2670679 e!2670680)))

(declare-fun lt!1518741 () (InoxSet Context!5790))

(declare-fun derivationStepZipper!560 ((InoxSet Context!5790) C!26208) (InoxSet Context!5790))

(declare-fun apply!10862 (BalanceConc!28382 Int) C!26208)

(assert (=> b!4297241 (= lt!1518741 (derivationStepZipper!560 z!500 (apply!10862 (totalInput!4433 thiss!29019) from!940)))))

(assert (=> b!4297241 (= lt!1518739 (findLongestMatchInnerZipperFastV2!58 lt!1518741 (+ from!940 1) (totalInput!4433 thiss!29019) lt!1518725))))

(declare-fun c!731042 () Bool)

(assert (=> b!4297241 (= c!731042 (> lt!1518739 0))))

(declare-fun b!4297242 () Bool)

(assert (=> b!4297242 (= e!2670679 0)))

(declare-fun b!4297243 () Bool)

(declare-fun c!731043 () Bool)

(declare-fun nullableZipper!783 ((InoxSet Context!5790)) Bool)

(assert (=> b!4297243 (= c!731043 (nullableZipper!783 lt!1518741))))

(assert (=> b!4297243 (= e!2670680 e!2670682)))

(declare-fun b!4297244 () Bool)

(assert (=> b!4297244 (= e!2670683 (<= from!940 (size!35197 (totalInput!4433 thiss!29019))))))

(assert (= (and d!1266296 res!1761261) b!4297244))

(assert (= (and d!1266296 (not res!1761260)) b!4297239))

(assert (= (and d!1266296 c!731041) b!4297242))

(assert (= (and d!1266296 (not c!731041)) b!4297241))

(assert (= (and b!4297241 c!731042) b!4297238))

(assert (= (and b!4297241 (not c!731042)) b!4297243))

(assert (= (and b!4297243 c!731043) b!4297240))

(assert (= (and b!4297243 (not c!731043)) b!4297237))

(declare-fun m!4889370 () Bool)

(assert (=> b!4297239 m!4889370))

(declare-fun m!4889372 () Bool)

(assert (=> b!4297241 m!4889372))

(assert (=> b!4297241 m!4889372))

(declare-fun m!4889374 () Bool)

(assert (=> b!4297241 m!4889374))

(declare-fun m!4889376 () Bool)

(assert (=> b!4297241 m!4889376))

(declare-fun m!4889378 () Bool)

(assert (=> b!4297243 m!4889378))

(assert (=> b!4297244 m!4889334))

(assert (=> b!4297202 d!1266296))

(declare-fun d!1266298 () Bool)

(declare-fun lambda!131789 () Int)

(declare-fun forall!8590 (List!48008 Int) Bool)

(assert (=> d!1266298 (= (inv!63471 setElem!26860) (forall!8590 (exprs!3395 setElem!26860) lambda!131789))))

(declare-fun bs!603842 () Bool)

(assert (= bs!603842 d!1266298))

(declare-fun m!4889380 () Bool)

(assert (=> bs!603842 m!4889380))

(assert (=> setNonEmpty!26860 d!1266298))

(declare-fun d!1266300 () Bool)

(declare-fun res!1761266 () Bool)

(declare-fun e!2670688 () Bool)

(assert (=> d!1266300 (=> res!1761266 e!2670688)))

(assert (=> d!1266300 (= res!1761266 ((_ is Nil!47885) (toList!2151 (map!9840 (_2!26126 lt!1518729)))))))

(assert (=> d!1266300 (= (forall!8589 (toList!2151 (map!9840 (_2!26126 lt!1518729))) lambda!131786) e!2670688)))

(declare-fun b!4297249 () Bool)

(declare-fun e!2670689 () Bool)

(assert (=> b!4297249 (= e!2670688 e!2670689)))

(declare-fun res!1761267 () Bool)

(assert (=> b!4297249 (=> (not res!1761267) (not e!2670689))))

(declare-fun dynLambda!20333 (Int tuple2!45692) Bool)

(assert (=> b!4297249 (= res!1761267 (dynLambda!20333 lambda!131786 (h!53305 (toList!2151 (map!9840 (_2!26126 lt!1518729))))))))

(declare-fun b!4297250 () Bool)

(assert (=> b!4297250 (= e!2670689 (forall!8589 (t!354616 (toList!2151 (map!9840 (_2!26126 lt!1518729)))) lambda!131786))))

(assert (= (and d!1266300 (not res!1761266)) b!4297249))

(assert (= (and b!4297249 res!1761267) b!4297250))

(declare-fun b_lambda!126141 () Bool)

(assert (=> (not b_lambda!126141) (not b!4297249)))

(declare-fun m!4889382 () Bool)

(assert (=> b!4297249 m!4889382))

(declare-fun m!4889384 () Bool)

(assert (=> b!4297250 m!4889384))

(assert (=> b!4297197 d!1266300))

(declare-fun d!1266302 () Bool)

(declare-fun lt!1518744 () ListMap!1417)

(declare-fun invariantList!524 (List!48009) Bool)

(assert (=> d!1266302 (invariantList!524 (toList!2151 lt!1518744))))

(declare-datatypes ((tuple2!45696 0))(
  ( (tuple2!45697 (_1!26127 (_ BitVec 64)) (_2!26127 List!48009)) )
))
(declare-datatypes ((List!48011 0))(
  ( (Nil!47887) (Cons!47887 (h!53307 tuple2!45696) (t!354618 List!48011)) )
))
(declare-fun extractMap!258 (List!48011) ListMap!1417)

(declare-datatypes ((ListLongMap!779 0))(
  ( (ListLongMap!780 (toList!2152 List!48011)) )
))
(declare-fun map!9841 (MutLongMap!4487) ListLongMap!779)

(assert (=> d!1266302 (= lt!1518744 (extractMap!258 (toList!2152 (map!9841 (v!41812 (underlying!9204 (_2!26126 lt!1518729)))))))))

(declare-fun valid!3464 (MutableMap!4393) Bool)

(assert (=> d!1266302 (valid!3464 (_2!26126 lt!1518729))))

(assert (=> d!1266302 (= (map!9840 (_2!26126 lt!1518729)) lt!1518744)))

(declare-fun bs!603843 () Bool)

(assert (= bs!603843 d!1266302))

(declare-fun m!4889386 () Bool)

(assert (=> bs!603843 m!4889386))

(declare-fun m!4889388 () Bool)

(assert (=> bs!603843 m!4889388))

(declare-fun m!4889390 () Bool)

(assert (=> bs!603843 m!4889390))

(declare-fun m!4889392 () Bool)

(assert (=> bs!603843 m!4889392))

(assert (=> b!4297197 d!1266302))

(declare-fun bs!603844 () Bool)

(declare-fun b!4297295 () Bool)

(declare-fun b!4297299 () Bool)

(assert (= bs!603844 (and b!4297295 b!4297299)))

(declare-fun lambda!131799 () Int)

(declare-fun lambda!131798 () Int)

(assert (=> bs!603844 (= lambda!131799 lambda!131798)))

(declare-datatypes ((tuple2!45698 0))(
  ( (tuple2!45699 (_1!26128 Bool) (_2!26128 MutLongMap!4487)) )
))
(declare-fun lt!1518864 () tuple2!45698)

(declare-fun b!4297289 () Bool)

(declare-fun lt!1518860 () MutableMap!4393)

(declare-fun e!2670716 () tuple2!45694)

(declare-datatypes ((tuple2!45700 0))(
  ( (tuple2!45701 (_1!26129 Unit!66503) (_2!26129 MutableMap!4393)) )
))
(declare-fun Unit!66505 () Unit!66503)

(declare-fun Unit!66506 () Unit!66503)

(assert (=> b!4297289 (= e!2670716 (tuple2!45695 (_1!26128 lt!1518864) (_2!26129 (ite false (tuple2!45701 Unit!66505 (HashMap!4393 (Cell!17760 (_2!26128 lt!1518864)) (hashF!6435 (cache!4533 thiss!29019)) (bvadd (_size!9018 (cache!4533 thiss!29019)) #b00000000000000000000000000000001) (defaultValue!4564 (cache!4533 thiss!29019)))) (tuple2!45701 Unit!66506 lt!1518860)))))))

(declare-fun lt!1518879 () (_ BitVec 64))

(declare-fun call!294889 () (_ BitVec 64))

(assert (=> b!4297289 (= lt!1518879 call!294889)))

(declare-fun lt!1518886 () List!48009)

(declare-fun call!294873 () List!48009)

(assert (=> b!4297289 (= lt!1518886 call!294873)))

(declare-fun call!294882 () List!48009)

(declare-fun lt!1518872 () List!48009)

(assert (=> b!4297289 (= lt!1518872 (Cons!47885 (tuple2!45693 lt!1518727 res!14399) call!294882))))

(declare-fun call!294893 () tuple2!45698)

(assert (=> b!4297289 (= lt!1518864 call!294893)))

(assert (=> b!4297289 (= lt!1518860 (HashMap!4393 (Cell!17760 (_2!26128 lt!1518864)) (hashF!6435 (cache!4533 thiss!29019)) (_size!9018 (cache!4533 thiss!29019)) (defaultValue!4564 (cache!4533 thiss!29019))))))

(declare-fun c!731058 () Bool)

(assert (=> b!4297289 (= c!731058 (_1!26128 lt!1518864))))

(declare-fun lt!1518906 () Unit!66503)

(declare-fun e!2670712 () Unit!66503)

(assert (=> b!4297289 (= lt!1518906 e!2670712)))

(declare-fun e!2670719 () ListMap!1417)

(declare-fun b!4297290 () Bool)

(declare-fun call!294895 () ListMap!1417)

(declare-fun +!135 (ListMap!1417 tuple2!45692) ListMap!1417)

(assert (=> b!4297290 (= e!2670719 (+!135 call!294895 (tuple2!45693 lt!1518727 res!14399)))))

(declare-fun lt!1518890 () (_ BitVec 64))

(declare-fun lt!1518888 () List!48009)

(declare-fun c!731063 () Bool)

(declare-fun bm!294869 () Bool)

(declare-fun update!295 (MutLongMap!4487 (_ BitVec 64) List!48009) tuple2!45698)

(assert (=> bm!294869 (= call!294893 (update!295 (v!41812 (underlying!9204 (cache!4533 thiss!29019))) (ite c!731063 lt!1518879 lt!1518890) (ite c!731063 lt!1518872 lt!1518888)))))

(declare-fun call!294900 () Bool)

(declare-fun lt!1518899 () MutableMap!4393)

(declare-fun bm!294870 () Bool)

(assert (=> bm!294870 (= call!294900 (valid!3464 (ite c!731063 lt!1518860 lt!1518899)))))

(declare-fun bm!294871 () Bool)

(declare-fun call!294884 () ListMap!1417)

(assert (=> bm!294871 (= call!294884 (map!9840 (ite c!731063 lt!1518860 lt!1518899)))))

(declare-fun bm!294872 () Bool)

(declare-fun call!294902 () Bool)

(declare-fun call!294875 () ListMap!1417)

(declare-fun eq!83 (ListMap!1417 ListMap!1417) Bool)

(assert (=> bm!294872 (= call!294902 (eq!83 call!294875 e!2670719))))

(declare-fun c!731064 () Bool)

(declare-fun c!731061 () Bool)

(assert (=> bm!294872 (= c!731064 c!731061)))

(declare-fun b!4297291 () Bool)

(declare-fun res!1761279 () Bool)

(declare-fun e!2670720 () Bool)

(assert (=> b!4297291 (=> (not res!1761279) (not e!2670720))))

(declare-fun lt!1518883 () tuple2!45694)

(assert (=> b!4297291 (= res!1761279 (valid!3464 (_2!26126 lt!1518883)))))

(declare-fun lt!1518904 () ListMap!1417)

(declare-fun lt!1518908 () ListMap!1417)

(declare-fun call!294886 () Bool)

(declare-fun bm!294873 () Bool)

(declare-fun contains!9805 (ListMap!1417 tuple2!45690) Bool)

(assert (=> bm!294873 (= call!294886 (contains!9805 (ite c!731063 lt!1518904 lt!1518908) lt!1518727))))

(declare-fun bm!294874 () Bool)

(declare-fun call!294877 () Bool)

(declare-fun allKeysSameHash!110 (List!48009 (_ BitVec 64) Hashable!4403) Bool)

(assert (=> bm!294874 (= call!294877 (allKeysSameHash!110 call!294882 (ite c!731063 lt!1518879 lt!1518890) (hashF!6435 (cache!4533 thiss!29019))))))

(declare-fun b!4297292 () Bool)

(declare-fun e!2670713 () Bool)

(declare-fun e!2670714 () Bool)

(assert (=> b!4297292 (= e!2670713 e!2670714)))

(declare-fun res!1761280 () Bool)

(assert (=> b!4297292 (= res!1761280 (contains!9805 call!294875 lt!1518727))))

(assert (=> b!4297292 (=> (not res!1761280) (not e!2670714))))

(declare-fun bm!294875 () Bool)

(declare-fun call!294894 () Bool)

(declare-fun call!294897 () ListLongMap!779)

(declare-fun allKeysSameHashInMap!258 (ListLongMap!779 Hashable!4403) Bool)

(assert (=> bm!294875 (= call!294894 (allKeysSameHashInMap!258 call!294897 (hashF!6435 (cache!4533 thiss!29019))))))

(declare-fun bm!294876 () Bool)

(declare-fun call!294876 () ListMap!1417)

(declare-fun call!294899 () ListLongMap!779)

(assert (=> bm!294876 (= call!294876 (extractMap!258 (toList!2152 call!294899)))))

(declare-fun lt!1518871 () ListMap!1417)

(declare-fun lt!1518887 () ListMap!1417)

(declare-fun bm!294877 () Bool)

(declare-fun call!294881 () Bool)

(assert (=> bm!294877 (= call!294881 (contains!9805 (ite c!731063 lt!1518871 lt!1518887) lt!1518727))))

(declare-fun lt!1518866 () tuple2!45698)

(declare-fun bm!294878 () Bool)

(assert (=> bm!294878 (= call!294897 (map!9841 (ite c!731063 (_2!26128 lt!1518864) (_2!26128 lt!1518866))))))

(declare-fun b!4297293 () Bool)

(declare-fun e!2670718 () Unit!66503)

(declare-fun Unit!66507 () Unit!66503)

(assert (=> b!4297293 (= e!2670718 Unit!66507)))

(declare-fun b!4297294 () Bool)

(assert (=> b!4297294 (= e!2670713 call!294902)))

(declare-fun call!294887 () ListMap!1417)

(assert (=> b!4297295 (contains!9805 call!294887 lt!1518727)))

(declare-fun lt!1518861 () Unit!66503)

(declare-fun Unit!66508 () Unit!66503)

(assert (=> b!4297295 (= lt!1518861 Unit!66508)))

(declare-fun call!294901 () ListMap!1417)

(assert (=> b!4297295 (contains!9805 call!294901 lt!1518727)))

(declare-fun lt!1518900 () Unit!66503)

(declare-fun lt!1518905 () Unit!66503)

(assert (=> b!4297295 (= lt!1518900 lt!1518905)))

(assert (=> b!4297295 (= call!294886 call!294881)))

(declare-fun call!294891 () Unit!66503)

(assert (=> b!4297295 (= lt!1518905 call!294891)))

(assert (=> b!4297295 (= lt!1518887 call!294901)))

(assert (=> b!4297295 (= lt!1518908 call!294887)))

(declare-fun lt!1518889 () Unit!66503)

(declare-fun Unit!66509 () Unit!66503)

(assert (=> b!4297295 (= lt!1518889 Unit!66509)))

(declare-fun call!294896 () Bool)

(assert (=> b!4297295 call!294896))

(declare-fun lt!1518857 () Unit!66503)

(declare-fun Unit!66510 () Unit!66503)

(assert (=> b!4297295 (= lt!1518857 Unit!66510)))

(assert (=> b!4297295 call!294894))

(declare-fun lt!1518884 () Unit!66503)

(declare-fun Unit!66511 () Unit!66503)

(assert (=> b!4297295 (= lt!1518884 Unit!66511)))

(declare-fun call!294883 () Bool)

(assert (=> b!4297295 call!294883))

(declare-fun lt!1518869 () Unit!66503)

(declare-fun lt!1518893 () Unit!66503)

(assert (=> b!4297295 (= lt!1518869 lt!1518893)))

(declare-fun call!294892 () Bool)

(assert (=> b!4297295 call!294892))

(declare-fun lt!1518855 () ListLongMap!779)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!22 (ListLongMap!779 (_ BitVec 64) List!48009 tuple2!45690 Int Hashable!4403) Unit!66503)

(assert (=> b!4297295 (= lt!1518893 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!22 lt!1518855 lt!1518890 lt!1518888 lt!1518727 res!14399 (hashF!6435 (cache!4533 thiss!29019))))))

(declare-fun lt!1518909 () Unit!66503)

(declare-fun lt!1518867 () Unit!66503)

(assert (=> b!4297295 (= lt!1518909 lt!1518867)))

(declare-fun e!2670722 () Bool)

(assert (=> b!4297295 e!2670722))

(declare-fun res!1761278 () Bool)

(assert (=> b!4297295 (=> (not res!1761278) (not e!2670722))))

(declare-fun call!294878 () Bool)

(assert (=> b!4297295 (= res!1761278 call!294878)))

(declare-fun lt!1518891 () ListLongMap!779)

(assert (=> b!4297295 (= lt!1518891 call!294899)))

(declare-fun call!294888 () Unit!66503)

(assert (=> b!4297295 (= lt!1518867 call!294888)))

(declare-fun lt!1518896 () Unit!66503)

(assert (=> b!4297295 (= lt!1518896 e!2670718)))

(declare-fun c!731060 () Bool)

(declare-fun lt!1518870 () List!48009)

(declare-fun isEmpty!28034 (List!48009) Bool)

(assert (=> b!4297295 (= c!731060 (not (isEmpty!28034 lt!1518870)))))

(declare-fun e!2670715 () Unit!66503)

(declare-fun Unit!66512 () Unit!66503)

(assert (=> b!4297295 (= e!2670715 Unit!66512)))

(declare-fun b!4297296 () Bool)

(declare-fun call!294898 () ListMap!1417)

(declare-fun lt!1518876 () ListMap!1417)

(assert (=> b!4297296 (= call!294898 lt!1518876)))

(declare-fun lt!1518897 () Unit!66503)

(declare-fun Unit!66513 () Unit!66503)

(assert (=> b!4297296 (= lt!1518897 Unit!66513)))

(assert (=> b!4297296 call!294900))

(declare-fun Unit!66514 () Unit!66503)

(assert (=> b!4297296 (= e!2670712 Unit!66514)))

(declare-fun bm!294879 () Bool)

(declare-fun call!294880 () Unit!66503)

(declare-fun lemmaRemovePairForKeyPreservesHash!97 (List!48009 tuple2!45690 (_ BitVec 64) Hashable!4403) Unit!66503)

(assert (=> bm!294879 (= call!294880 (lemmaRemovePairForKeyPreservesHash!97 (ite c!731063 lt!1518886 lt!1518870) lt!1518727 (ite c!731063 lt!1518879 lt!1518890) (hashF!6435 (cache!4533 thiss!29019))))))

(declare-fun d!1266304 () Bool)

(assert (=> d!1266304 e!2670720))

(declare-fun res!1761281 () Bool)

(assert (=> d!1266304 (=> (not res!1761281) (not e!2670720))))

(assert (=> d!1266304 (= res!1761281 ((_ is HashMap!4393) (_2!26126 lt!1518883)))))

(declare-fun lt!1518894 () tuple2!45694)

(assert (=> d!1266304 (= lt!1518883 (tuple2!45695 (_1!26126 lt!1518894) (_2!26126 lt!1518894)))))

(assert (=> d!1266304 (= lt!1518894 e!2670716)))

(declare-fun contains!9806 (MutableMap!4393 tuple2!45690) Bool)

(assert (=> d!1266304 (= c!731063 (contains!9806 (cache!4533 thiss!29019) lt!1518727))))

(assert (=> d!1266304 (= lt!1518855 (map!9841 (v!41812 (underlying!9204 (cache!4533 thiss!29019)))))))

(assert (=> d!1266304 (= lt!1518876 (map!9840 (cache!4533 thiss!29019)))))

(assert (=> d!1266304 (valid!3464 (cache!4533 thiss!29019))))

(assert (=> d!1266304 (= (update!294 (cache!4533 thiss!29019) lt!1518727 res!14399) lt!1518883)))

(declare-fun bm!294868 () Bool)

(assert (=> bm!294868 (= call!294887 call!294884)))

(declare-fun b!4297297 () Bool)

(declare-fun e!2670717 () List!48009)

(assert (=> b!4297297 (= e!2670717 call!294873)))

(declare-fun bm!294880 () Bool)

(assert (=> bm!294880 (= call!294896 (eq!83 (ite c!731063 call!294898 call!294887) call!294901))))

(declare-fun bm!294881 () Bool)

(declare-fun lemmaEquivalentThenSameContains!22 (ListMap!1417 ListMap!1417 tuple2!45690) Unit!66503)

(assert (=> bm!294881 (= call!294891 (lemmaEquivalentThenSameContains!22 (ite c!731063 lt!1518904 lt!1518908) (ite c!731063 lt!1518871 lt!1518887) lt!1518727))))

(declare-fun bm!294882 () Bool)

(assert (=> bm!294882 (= call!294875 (map!9840 (_2!26126 lt!1518883)))))

(declare-fun bm!294883 () Bool)

(assert (=> bm!294883 (= call!294895 (map!9840 (cache!4533 thiss!29019)))))

(declare-fun b!4297298 () Bool)

(assert (=> b!4297298 (= e!2670714 call!294902)))

(assert (=> b!4297299 call!294896))

(declare-fun lt!1518868 () Unit!66503)

(declare-fun Unit!66515 () Unit!66503)

(assert (=> b!4297299 (= lt!1518868 Unit!66515)))

(assert (=> b!4297299 call!294894))

(declare-fun lt!1518885 () Unit!66503)

(declare-fun Unit!66516 () Unit!66503)

(assert (=> b!4297299 (= lt!1518885 Unit!66516)))

(assert (=> b!4297299 call!294883))

(declare-fun lt!1518862 () Unit!66503)

(declare-fun lt!1518878 () Unit!66503)

(assert (=> b!4297299 (= lt!1518862 lt!1518878)))

(assert (=> b!4297299 (= call!294886 call!294881)))

(assert (=> b!4297299 (= lt!1518878 call!294891)))

(assert (=> b!4297299 (= lt!1518871 call!294901)))

(assert (=> b!4297299 (= lt!1518904 call!294898)))

(declare-fun lt!1518865 () Unit!66503)

(declare-fun lt!1518902 () Unit!66503)

(assert (=> b!4297299 (= lt!1518865 lt!1518902)))

(assert (=> b!4297299 call!294892))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!22 (ListLongMap!779 (_ BitVec 64) List!48009 tuple2!45690 Int Hashable!4403) Unit!66503)

(assert (=> b!4297299 (= lt!1518902 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!22 lt!1518855 lt!1518879 lt!1518872 lt!1518727 res!14399 (hashF!6435 (cache!4533 thiss!29019))))))

(declare-fun lt!1518856 () Unit!66503)

(declare-fun lt!1518877 () Unit!66503)

(assert (=> b!4297299 (= lt!1518856 lt!1518877)))

(declare-fun e!2670721 () Bool)

(assert (=> b!4297299 e!2670721))

(declare-fun res!1761282 () Bool)

(assert (=> b!4297299 (=> (not res!1761282) (not e!2670721))))

(assert (=> b!4297299 (= res!1761282 call!294878)))

(declare-fun lt!1518858 () ListLongMap!779)

(assert (=> b!4297299 (= lt!1518858 call!294899)))

(assert (=> b!4297299 (= lt!1518877 call!294888)))

(declare-fun lt!1518874 () Unit!66503)

(declare-fun Unit!66517 () Unit!66503)

(assert (=> b!4297299 (= lt!1518874 Unit!66517)))

(declare-fun noDuplicateKeys!138 (List!48009) Bool)

(assert (=> b!4297299 (noDuplicateKeys!138 lt!1518872)))

(declare-fun lt!1518880 () Unit!66503)

(declare-fun Unit!66518 () Unit!66503)

(assert (=> b!4297299 (= lt!1518880 Unit!66518)))

(declare-fun containsKey!215 (List!48009 tuple2!45690) Bool)

(assert (=> b!4297299 (not (containsKey!215 call!294882 lt!1518727))))

(declare-fun lt!1518907 () Unit!66503)

(declare-fun Unit!66519 () Unit!66503)

(assert (=> b!4297299 (= lt!1518907 Unit!66519)))

(declare-fun lt!1518901 () Unit!66503)

(declare-fun lt!1518882 () Unit!66503)

(assert (=> b!4297299 (= lt!1518901 lt!1518882)))

(assert (=> b!4297299 (noDuplicateKeys!138 call!294882)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!115 (List!48009 tuple2!45690) Unit!66503)

(assert (=> b!4297299 (= lt!1518882 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!115 lt!1518886 lt!1518727))))

(declare-fun lt!1518895 () Unit!66503)

(declare-fun lt!1518903 () Unit!66503)

(assert (=> b!4297299 (= lt!1518895 lt!1518903)))

(assert (=> b!4297299 call!294877))

(assert (=> b!4297299 (= lt!1518903 call!294880)))

(declare-fun lt!1518873 () Unit!66503)

(declare-fun lt!1518892 () Unit!66503)

(assert (=> b!4297299 (= lt!1518873 lt!1518892)))

(declare-fun call!294885 () Bool)

(assert (=> b!4297299 call!294885))

(declare-fun call!294903 () Unit!66503)

(assert (=> b!4297299 (= lt!1518892 call!294903)))

(declare-fun Unit!66520 () Unit!66503)

(assert (=> b!4297299 (= e!2670712 Unit!66520)))

(declare-fun bm!294884 () Bool)

(assert (=> bm!294884 (= call!294901 (+!135 lt!1518876 (tuple2!45693 lt!1518727 res!14399)))))

(declare-fun bm!294885 () Bool)

(declare-fun forall!8591 (List!48011 Int) Bool)

(assert (=> bm!294885 (= call!294883 (forall!8591 (toList!2152 call!294897) (ite c!731063 lambda!131798 lambda!131799)))))

(declare-fun bm!294886 () Bool)

(declare-fun call!294874 () ListMap!1417)

(declare-fun call!294879 () ListMap!1417)

(assert (=> bm!294886 (= call!294879 (+!135 call!294874 (tuple2!45693 lt!1518727 res!14399)))))

(declare-fun b!4297300 () Bool)

(assert (=> b!4297300 (= call!294887 lt!1518876)))

(declare-fun lt!1518898 () Unit!66503)

(declare-fun Unit!66521 () Unit!66503)

(assert (=> b!4297300 (= lt!1518898 Unit!66521)))

(assert (=> b!4297300 call!294900))

(declare-fun Unit!66522 () Unit!66503)

(assert (=> b!4297300 (= e!2670715 Unit!66522)))

(declare-fun b!4297301 () Bool)

(declare-fun call!294890 () Bool)

(assert (=> b!4297301 (= e!2670722 call!294890)))

(declare-fun bm!294887 () Bool)

(declare-fun removePairForKey!127 (List!48009 tuple2!45690) List!48009)

(assert (=> bm!294887 (= call!294882 (removePairForKey!127 (ite c!731063 lt!1518886 lt!1518870) lt!1518727))))

(declare-fun bm!294888 () Bool)

(assert (=> bm!294888 (= call!294892 (eq!83 call!294876 call!294879))))

(declare-fun bm!294889 () Bool)

(assert (=> bm!294889 (= call!294898 call!294884)))

(declare-fun b!4297302 () Bool)

(assert (=> b!4297302 (= e!2670717 Nil!47885)))

(declare-fun bm!294890 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!88 (ListLongMap!779 (_ BitVec 64) List!48009 Hashable!4403) Unit!66503)

(assert (=> bm!294890 (= call!294888 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!88 lt!1518855 (ite c!731063 lt!1518879 lt!1518890) (ite c!731063 lt!1518872 lt!1518888) (hashF!6435 (cache!4533 thiss!29019))))))

(declare-fun bm!294891 () Bool)

(assert (=> bm!294891 (= call!294878 (forall!8591 (ite c!731063 (toList!2152 lt!1518858) (toList!2152 lt!1518891)) (ite c!731063 lambda!131798 lambda!131799)))))

(declare-fun bm!294892 () Bool)

(assert (=> bm!294892 (= call!294874 (extractMap!258 (toList!2152 lt!1518855)))))

(declare-fun b!4297303 () Bool)

(declare-fun lt!1518863 () Unit!66503)

(assert (=> b!4297303 (= e!2670718 lt!1518863)))

(declare-fun lt!1518881 () Unit!66503)

(assert (=> b!4297303 (= lt!1518881 call!294903)))

(assert (=> b!4297303 call!294885))

(declare-fun lt!1518859 () Unit!66503)

(assert (=> b!4297303 (= lt!1518859 lt!1518881)))

(assert (=> b!4297303 (= lt!1518863 call!294880)))

(assert (=> b!4297303 call!294877))

(declare-fun bm!294893 () Bool)

(assert (=> bm!294893 (= call!294890 (allKeysSameHashInMap!258 (ite c!731063 lt!1518858 lt!1518891) (hashF!6435 (cache!4533 thiss!29019))))))

(declare-fun b!4297304 () Bool)

(assert (=> b!4297304 (= e!2670720 e!2670713)))

(assert (=> b!4297304 (= c!731061 (_1!26126 lt!1518883))))

(declare-fun b!4297305 () Bool)

(assert (=> b!4297305 (= e!2670719 call!294895)))

(declare-fun bm!294894 () Bool)

(assert (=> bm!294894 (= call!294885 (allKeysSameHash!110 (ite c!731063 lt!1518886 lt!1518870) (ite c!731063 lt!1518879 lt!1518890) (hashF!6435 (cache!4533 thiss!29019))))))

(declare-fun bm!294895 () Bool)

(declare-fun hash!826 (Hashable!4403 tuple2!45690) (_ BitVec 64))

(assert (=> bm!294895 (= call!294889 (hash!826 (hashF!6435 (cache!4533 thiss!29019)) lt!1518727))))

(declare-fun bm!294896 () Bool)

(declare-fun +!136 (ListLongMap!779 tuple2!45696) ListLongMap!779)

(assert (=> bm!294896 (= call!294899 (+!136 lt!1518855 (ite c!731063 (tuple2!45697 lt!1518879 lt!1518872) (tuple2!45697 lt!1518890 lt!1518888))))))

(declare-fun bm!294897 () Bool)

(declare-fun apply!10863 (MutLongMap!4487 (_ BitVec 64)) List!48009)

(assert (=> bm!294897 (= call!294873 (apply!10863 (v!41812 (underlying!9204 (cache!4533 thiss!29019))) (ite c!731063 lt!1518879 lt!1518890)))))

(declare-fun b!4297306 () Bool)

(declare-fun Unit!66523 () Unit!66503)

(declare-fun Unit!66524 () Unit!66503)

(assert (=> b!4297306 (= e!2670716 (tuple2!45695 (_1!26128 lt!1518866) (_2!26129 (ite (_1!26128 lt!1518866) (tuple2!45701 Unit!66523 (HashMap!4393 (Cell!17760 (_2!26128 lt!1518866)) (hashF!6435 (cache!4533 thiss!29019)) (bvadd (_size!9018 (cache!4533 thiss!29019)) #b00000000000000000000000000000001) (defaultValue!4564 (cache!4533 thiss!29019)))) (tuple2!45701 Unit!66524 lt!1518899)))))))

(assert (=> b!4297306 (= lt!1518890 call!294889)))

(declare-fun c!731062 () Bool)

(declare-fun contains!9807 (MutLongMap!4487 (_ BitVec 64)) Bool)

(assert (=> b!4297306 (= c!731062 (contains!9807 (v!41812 (underlying!9204 (cache!4533 thiss!29019))) lt!1518890))))

(assert (=> b!4297306 (= lt!1518870 e!2670717)))

(assert (=> b!4297306 (= lt!1518888 (Cons!47885 (tuple2!45693 lt!1518727 res!14399) lt!1518870))))

(assert (=> b!4297306 (= lt!1518866 call!294893)))

(assert (=> b!4297306 (= lt!1518899 (HashMap!4393 (Cell!17760 (_2!26128 lt!1518866)) (hashF!6435 (cache!4533 thiss!29019)) (_size!9018 (cache!4533 thiss!29019)) (defaultValue!4564 (cache!4533 thiss!29019))))))

(declare-fun c!731059 () Bool)

(assert (=> b!4297306 (= c!731059 (_1!26128 lt!1518866))))

(declare-fun lt!1518875 () Unit!66503)

(assert (=> b!4297306 (= lt!1518875 e!2670715)))

(declare-fun b!4297307 () Bool)

(assert (=> b!4297307 (= e!2670721 call!294890)))

(declare-fun bm!294898 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!101 (List!48011 (_ BitVec 64) List!48009 Hashable!4403) Unit!66503)

(assert (=> bm!294898 (= call!294903 (lemmaInLongMapAllKeySameHashThenForTuple!101 (toList!2152 lt!1518855) (ite c!731063 lt!1518879 lt!1518890) (ite c!731063 lt!1518886 lt!1518870) (hashF!6435 (cache!4533 thiss!29019))))))

(assert (= (and d!1266304 c!731063) b!4297289))

(assert (= (and d!1266304 (not c!731063)) b!4297306))

(assert (= (and b!4297289 c!731058) b!4297299))

(assert (= (and b!4297289 (not c!731058)) b!4297296))

(assert (= (and b!4297299 res!1761282) b!4297307))

(assert (= (or b!4297299 b!4297296) bm!294889))

(assert (= (and b!4297306 c!731062) b!4297297))

(assert (= (and b!4297306 (not c!731062)) b!4297302))

(assert (= (and b!4297306 c!731059) b!4297295))

(assert (= (and b!4297306 (not c!731059)) b!4297300))

(assert (= (and b!4297295 c!731060) b!4297303))

(assert (= (and b!4297295 (not c!731060)) b!4297293))

(assert (= (and b!4297295 res!1761278) b!4297301))

(assert (= (or b!4297295 b!4297300) bm!294868))

(assert (= (or b!4297299 b!4297295) bm!294891))

(assert (= (or b!4297289 b!4297306) bm!294895))

(assert (= (or b!4297289 b!4297297) bm!294897))

(assert (= (or b!4297299 b!4297303) bm!294879))

(assert (= (or b!4297299 b!4297295) bm!294873))

(assert (= (or b!4297289 b!4297306) bm!294869))

(assert (= (or b!4297296 b!4297300) bm!294870))

(assert (= (or b!4297289 b!4297299 b!4297303) bm!294887))

(assert (= (or b!4297299 b!4297295) bm!294892))

(assert (= (or b!4297299 b!4297295) bm!294890))

(assert (= (or b!4297299 b!4297295) bm!294881))

(assert (= (or b!4297299 b!4297295) bm!294877))

(assert (= (or b!4297299 b!4297295) bm!294896))

(assert (= (or b!4297307 b!4297301) bm!294893))

(assert (= (or b!4297299 b!4297303) bm!294898))

(assert (= (or b!4297299 b!4297303) bm!294894))

(assert (= (or b!4297299 b!4297295) bm!294884))

(assert (= (or b!4297299 b!4297295) bm!294878))

(assert (= (or bm!294889 bm!294868) bm!294871))

(assert (= (or b!4297299 b!4297303) bm!294874))

(assert (= (or b!4297299 b!4297295) bm!294876))

(assert (= (or b!4297299 b!4297295) bm!294880))

(assert (= (or b!4297299 b!4297295) bm!294875))

(assert (= (or b!4297299 b!4297295) bm!294885))

(assert (= (or b!4297299 b!4297295) bm!294886))

(assert (= (or b!4297299 b!4297295) bm!294888))

(assert (= (and d!1266304 res!1761281) b!4297291))

(assert (= (and b!4297291 res!1761279) b!4297304))

(assert (= (and b!4297304 c!731061) b!4297292))

(assert (= (and b!4297304 (not c!731061)) b!4297294))

(assert (= (and b!4297292 res!1761280) b!4297298))

(assert (= (or b!4297298 b!4297294) bm!294883))

(assert (= (or b!4297292 b!4297298 b!4297294) bm!294882))

(assert (= (or b!4297298 b!4297294) bm!294872))

(assert (= (and bm!294872 c!731064) b!4297290))

(assert (= (and bm!294872 (not c!731064)) b!4297305))

(declare-fun m!4889394 () Bool)

(assert (=> bm!294893 m!4889394))

(declare-fun m!4889396 () Bool)

(assert (=> bm!294894 m!4889396))

(declare-fun m!4889398 () Bool)

(assert (=> bm!294870 m!4889398))

(declare-fun m!4889400 () Bool)

(assert (=> bm!294880 m!4889400))

(declare-fun m!4889402 () Bool)

(assert (=> d!1266304 m!4889402))

(declare-fun m!4889404 () Bool)

(assert (=> d!1266304 m!4889404))

(declare-fun m!4889406 () Bool)

(assert (=> d!1266304 m!4889406))

(declare-fun m!4889408 () Bool)

(assert (=> d!1266304 m!4889408))

(declare-fun m!4889410 () Bool)

(assert (=> bm!294879 m!4889410))

(declare-fun m!4889412 () Bool)

(assert (=> bm!294897 m!4889412))

(declare-fun m!4889414 () Bool)

(assert (=> bm!294895 m!4889414))

(declare-fun m!4889416 () Bool)

(assert (=> bm!294898 m!4889416))

(declare-fun m!4889418 () Bool)

(assert (=> bm!294873 m!4889418))

(declare-fun m!4889420 () Bool)

(assert (=> b!4297299 m!4889420))

(declare-fun m!4889422 () Bool)

(assert (=> b!4297299 m!4889422))

(declare-fun m!4889424 () Bool)

(assert (=> b!4297299 m!4889424))

(declare-fun m!4889426 () Bool)

(assert (=> b!4297299 m!4889426))

(declare-fun m!4889428 () Bool)

(assert (=> b!4297299 m!4889428))

(declare-fun m!4889430 () Bool)

(assert (=> b!4297292 m!4889430))

(declare-fun m!4889432 () Bool)

(assert (=> bm!294869 m!4889432))

(declare-fun m!4889434 () Bool)

(assert (=> bm!294871 m!4889434))

(declare-fun m!4889436 () Bool)

(assert (=> bm!294885 m!4889436))

(declare-fun m!4889438 () Bool)

(assert (=> bm!294888 m!4889438))

(declare-fun m!4889440 () Bool)

(assert (=> bm!294878 m!4889440))

(declare-fun m!4889442 () Bool)

(assert (=> bm!294887 m!4889442))

(declare-fun m!4889444 () Bool)

(assert (=> bm!294877 m!4889444))

(declare-fun m!4889446 () Bool)

(assert (=> bm!294886 m!4889446))

(declare-fun m!4889448 () Bool)

(assert (=> b!4297291 m!4889448))

(declare-fun m!4889450 () Bool)

(assert (=> b!4297290 m!4889450))

(declare-fun m!4889452 () Bool)

(assert (=> bm!294872 m!4889452))

(declare-fun m!4889454 () Bool)

(assert (=> bm!294876 m!4889454))

(declare-fun m!4889456 () Bool)

(assert (=> bm!294882 m!4889456))

(declare-fun m!4889458 () Bool)

(assert (=> b!4297306 m!4889458))

(declare-fun m!4889460 () Bool)

(assert (=> bm!294884 m!4889460))

(declare-fun m!4889462 () Bool)

(assert (=> bm!294896 m!4889462))

(declare-fun m!4889464 () Bool)

(assert (=> bm!294875 m!4889464))

(declare-fun m!4889466 () Bool)

(assert (=> bm!294892 m!4889466))

(declare-fun m!4889468 () Bool)

(assert (=> b!4297295 m!4889468))

(declare-fun m!4889470 () Bool)

(assert (=> b!4297295 m!4889470))

(declare-fun m!4889472 () Bool)

(assert (=> b!4297295 m!4889472))

(declare-fun m!4889474 () Bool)

(assert (=> b!4297295 m!4889474))

(declare-fun m!4889476 () Bool)

(assert (=> bm!294891 m!4889476))

(declare-fun m!4889478 () Bool)

(assert (=> bm!294874 m!4889478))

(declare-fun m!4889480 () Bool)

(assert (=> bm!294890 m!4889480))

(declare-fun m!4889482 () Bool)

(assert (=> bm!294881 m!4889482))

(assert (=> bm!294883 m!4889406))

(assert (=> b!4297197 d!1266304))

(declare-fun bs!603845 () Bool)

(declare-fun b!4297313 () Bool)

(assert (= bs!603845 (and b!4297313 b!4297197)))

(declare-fun lambda!131802 () Int)

(assert (=> bs!603845 (= (= (totalInput!4433 thiss!29019) localTotalInput!12) (= lambda!131802 lambda!131786))))

(assert (=> b!4297313 true))

(declare-fun d!1266306 () Bool)

(declare-fun res!1761287 () Bool)

(declare-fun e!2670725 () Bool)

(assert (=> d!1266306 (=> (not res!1761287) (not e!2670725))))

(assert (=> d!1266306 (= res!1761287 (valid!3464 (_2!26126 lt!1518729)))))

(assert (=> d!1266306 (= (validCacheMapFindLongestMatch!97 (_2!26126 lt!1518729) (totalInput!4433 thiss!29019)) e!2670725)))

(declare-fun b!4297312 () Bool)

(declare-fun res!1761288 () Bool)

(assert (=> b!4297312 (=> (not res!1761288) (not e!2670725))))

(assert (=> b!4297312 (= res!1761288 (invariantList!524 (toList!2151 (map!9840 (_2!26126 lt!1518729)))))))

(assert (=> b!4297313 (= e!2670725 (forall!8589 (toList!2151 (map!9840 (_2!26126 lt!1518729))) lambda!131802))))

(assert (= (and d!1266306 res!1761287) b!4297312))

(assert (= (and b!4297312 res!1761288) b!4297313))

(assert (=> d!1266306 m!4889392))

(assert (=> b!4297312 m!4889344))

(declare-fun m!4889485 () Bool)

(assert (=> b!4297312 m!4889485))

(assert (=> b!4297313 m!4889344))

(declare-fun m!4889487 () Bool)

(assert (=> b!4297313 m!4889487))

(assert (=> b!4297197 d!1266306))

(declare-fun d!1266308 () Bool)

(declare-fun e!2670728 () Bool)

(assert (=> d!1266308 e!2670728))

(declare-fun res!1761291 () Bool)

(assert (=> d!1266308 (=> (not res!1761291) (not e!2670728))))

(assert (=> d!1266308 (= res!1761291 (and (or (not ((_ is HashMap!4393) (cache!4533 thiss!29019))) ((_ is HashMap!4393) (cache!4533 thiss!29019))) ((_ is HashMap!4393) (cache!4533 thiss!29019))))))

(declare-fun lt!1518926 () Unit!66503)

(declare-fun choose!26161 (MutableMap!4393 tuple2!45690 Int Int) Unit!66503)

(assert (=> d!1266308 (= lt!1518926 (choose!26161 (cache!4533 thiss!29019) lt!1518727 res!14399 lambda!131786))))

(assert (=> d!1266308 (valid!3464 (cache!4533 thiss!29019))))

(assert (=> d!1266308 (= (lemmaUpdatePreservesForallPairs!43 (cache!4533 thiss!29019) lt!1518727 res!14399 lambda!131786) lt!1518926)))

(declare-fun b!4297316 () Bool)

(declare-fun lt!1518927 () MutableMap!4393)

(assert (=> b!4297316 (= e!2670728 (forall!8589 (toList!2151 (map!9840 lt!1518927)) lambda!131786))))

(assert (=> b!4297316 ((_ is HashMap!4393) lt!1518927)))

(declare-fun lt!1518924 () MutableMap!4393)

(assert (=> b!4297316 (= lt!1518927 lt!1518924)))

(assert (=> b!4297316 ((_ is HashMap!4393) lt!1518924)))

(declare-fun lt!1518922 () MutableMap!4393)

(assert (=> b!4297316 (= lt!1518924 lt!1518922)))

(assert (=> b!4297316 ((_ is HashMap!4393) lt!1518922)))

(declare-fun lt!1518925 () tuple2!45694)

(assert (=> b!4297316 (= lt!1518922 (_2!26126 lt!1518925))))

(assert (=> b!4297316 ((_ is HashMap!4393) (_2!26126 lt!1518925))))

(declare-fun lt!1518923 () tuple2!45694)

(assert (=> b!4297316 (= lt!1518925 lt!1518923)))

(assert (=> b!4297316 ((_ is HashMap!4393) (_2!26126 lt!1518923))))

(assert (=> b!4297316 (= lt!1518923 (update!294 (cache!4533 thiss!29019) lt!1518727 res!14399))))

(assert (= (and d!1266308 res!1761291) b!4297316))

(declare-fun m!4889489 () Bool)

(assert (=> d!1266308 m!4889489))

(assert (=> d!1266308 m!4889408))

(declare-fun m!4889491 () Bool)

(assert (=> b!4297316 m!4889491))

(declare-fun m!4889493 () Bool)

(assert (=> b!4297316 m!4889493))

(assert (=> b!4297316 m!4889340))

(assert (=> b!4297197 d!1266308))

(declare-fun bs!603846 () Bool)

(declare-fun b!4297318 () Bool)

(assert (= bs!603846 (and b!4297318 b!4297197)))

(declare-fun lambda!131803 () Int)

(assert (=> bs!603846 (= (= (totalInput!4433 thiss!29019) localTotalInput!12) (= lambda!131803 lambda!131786))))

(declare-fun bs!603847 () Bool)

(assert (= bs!603847 (and b!4297318 b!4297313)))

(assert (=> bs!603847 (= lambda!131803 lambda!131802)))

(assert (=> b!4297318 true))

(declare-fun d!1266310 () Bool)

(declare-fun res!1761292 () Bool)

(declare-fun e!2670729 () Bool)

(assert (=> d!1266310 (=> (not res!1761292) (not e!2670729))))

(assert (=> d!1266310 (= res!1761292 (valid!3464 (cache!4533 thiss!29019)))))

(assert (=> d!1266310 (= (validCacheMapFindLongestMatch!97 (cache!4533 thiss!29019) (totalInput!4433 thiss!29019)) e!2670729)))

(declare-fun b!4297317 () Bool)

(declare-fun res!1761293 () Bool)

(assert (=> b!4297317 (=> (not res!1761293) (not e!2670729))))

(assert (=> b!4297317 (= res!1761293 (invariantList!524 (toList!2151 (map!9840 (cache!4533 thiss!29019)))))))

(assert (=> b!4297318 (= e!2670729 (forall!8589 (toList!2151 (map!9840 (cache!4533 thiss!29019))) lambda!131803))))

(assert (= (and d!1266310 res!1761292) b!4297317))

(assert (= (and b!4297317 res!1761293) b!4297318))

(assert (=> d!1266310 m!4889408))

(assert (=> b!4297317 m!4889406))

(declare-fun m!4889495 () Bool)

(assert (=> b!4297317 m!4889495))

(assert (=> b!4297318 m!4889406))

(declare-fun m!4889497 () Bool)

(assert (=> b!4297318 m!4889497))

(assert (=> b!4297194 d!1266310))

(declare-fun d!1266312 () Bool)

(assert (=> d!1266312 (= (array_inv!5131 (_keys!4787 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))) (bvsge (size!35195 (_keys!4787 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4297199 d!1266312))

(declare-fun d!1266314 () Bool)

(assert (=> d!1266314 (= (array_inv!5132 (_values!4768 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))) (bvsge (size!35196 (_values!4768 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4297199 d!1266314))

(declare-fun d!1266316 () Bool)

(declare-fun c!731065 () Bool)

(assert (=> d!1266316 (= c!731065 ((_ is Node!14446) (c!731031 (totalInput!4433 thiss!29019))))))

(declare-fun e!2670730 () Bool)

(assert (=> d!1266316 (= (inv!63469 (c!731031 (totalInput!4433 thiss!29019))) e!2670730)))

(declare-fun b!4297319 () Bool)

(assert (=> b!4297319 (= e!2670730 (inv!63472 (c!731031 (totalInput!4433 thiss!29019))))))

(declare-fun b!4297320 () Bool)

(declare-fun e!2670731 () Bool)

(assert (=> b!4297320 (= e!2670730 e!2670731)))

(declare-fun res!1761294 () Bool)

(assert (=> b!4297320 (= res!1761294 (not ((_ is Leaf!22350) (c!731031 (totalInput!4433 thiss!29019)))))))

(assert (=> b!4297320 (=> res!1761294 e!2670731)))

(declare-fun b!4297321 () Bool)

(assert (=> b!4297321 (= e!2670731 (inv!63473 (c!731031 (totalInput!4433 thiss!29019))))))

(assert (= (and d!1266316 c!731065) b!4297319))

(assert (= (and d!1266316 (not c!731065)) b!4297320))

(assert (= (and b!4297320 (not res!1761294)) b!4297321))

(declare-fun m!4889499 () Bool)

(assert (=> b!4297319 m!4889499))

(declare-fun m!4889501 () Bool)

(assert (=> b!4297321 m!4889501))

(assert (=> b!4297193 d!1266316))

(declare-fun b!4297326 () Bool)

(declare-fun e!2670734 () Bool)

(declare-fun tp!1320027 () Bool)

(declare-fun tp!1320028 () Bool)

(assert (=> b!4297326 (= e!2670734 (and tp!1320027 tp!1320028))))

(assert (=> b!4297205 (= tp!1320022 e!2670734)))

(assert (= (and b!4297205 ((_ is Cons!47884) (exprs!3395 setElem!26860))) b!4297326))

(declare-fun e!2670739 () Bool)

(declare-fun tp!1320035 () Bool)

(declare-fun b!4297335 () Bool)

(declare-fun tp!1320036 () Bool)

(assert (=> b!4297335 (= e!2670739 (and (inv!63469 (left!35523 (c!731031 localTotalInput!12))) tp!1320036 (inv!63469 (right!35853 (c!731031 localTotalInput!12))) tp!1320035))))

(declare-fun b!4297337 () Bool)

(declare-fun e!2670740 () Bool)

(declare-fun tp!1320037 () Bool)

(assert (=> b!4297337 (= e!2670740 tp!1320037)))

(declare-fun b!4297336 () Bool)

(declare-fun inv!63474 (IArray!28953) Bool)

(assert (=> b!4297336 (= e!2670739 (and (inv!63474 (xs!17752 (c!731031 localTotalInput!12))) e!2670740))))

(assert (=> b!4297196 (= tp!1320021 (and (inv!63469 (c!731031 localTotalInput!12)) e!2670739))))

(assert (= (and b!4297196 ((_ is Node!14446) (c!731031 localTotalInput!12))) b!4297335))

(assert (= b!4297336 b!4297337))

(assert (= (and b!4297196 ((_ is Leaf!22350) (c!731031 localTotalInput!12))) b!4297336))

(declare-fun m!4889503 () Bool)

(assert (=> b!4297335 m!4889503))

(declare-fun m!4889505 () Bool)

(assert (=> b!4297335 m!4889505))

(declare-fun m!4889507 () Bool)

(assert (=> b!4297336 m!4889507))

(assert (=> b!4297196 m!4889352))

(declare-fun setIsEmpty!26863 () Bool)

(declare-fun setRes!26863 () Bool)

(assert (=> setIsEmpty!26863 setRes!26863))

(declare-fun e!2670746 () Bool)

(declare-fun setNonEmpty!26863 () Bool)

(declare-fun tp!1320044 () Bool)

(declare-fun setElem!26863 () Context!5790)

(assert (=> setNonEmpty!26863 (= setRes!26863 (and tp!1320044 (inv!63471 setElem!26863) e!2670746))))

(declare-fun setRest!26863 () (InoxSet Context!5790))

(assert (=> setNonEmpty!26863 (= (_1!26124 (_1!26125 (h!53305 mapDefault!20166))) ((_ map or) (store ((as const (Array Context!5790 Bool)) false) setElem!26863 true) setRest!26863))))

(declare-fun b!4297345 () Bool)

(declare-fun tp!1320046 () Bool)

(assert (=> b!4297345 (= e!2670746 tp!1320046)))

(declare-fun e!2670745 () Bool)

(assert (=> b!4297192 (= tp!1320015 e!2670745)))

(declare-fun b!4297344 () Bool)

(declare-fun tp!1320045 () Bool)

(assert (=> b!4297344 (= e!2670745 (and setRes!26863 tp!1320045))))

(declare-fun condSetEmpty!26863 () Bool)

(assert (=> b!4297344 (= condSetEmpty!26863 (= (_1!26124 (_1!26125 (h!53305 mapDefault!20166))) ((as const (Array Context!5790 Bool)) false)))))

(assert (= (and b!4297344 condSetEmpty!26863) setIsEmpty!26863))

(assert (= (and b!4297344 (not condSetEmpty!26863)) setNonEmpty!26863))

(assert (= setNonEmpty!26863 b!4297345))

(assert (= (and b!4297192 ((_ is Cons!47885) mapDefault!20166)) b!4297344))

(declare-fun m!4889509 () Bool)

(assert (=> setNonEmpty!26863 m!4889509))

(declare-fun condSetEmpty!26866 () Bool)

(assert (=> setNonEmpty!26860 (= condSetEmpty!26866 (= setRest!26860 ((as const (Array Context!5790 Bool)) false)))))

(declare-fun setRes!26866 () Bool)

(assert (=> setNonEmpty!26860 (= tp!1320019 setRes!26866)))

(declare-fun setIsEmpty!26866 () Bool)

(assert (=> setIsEmpty!26866 setRes!26866))

(declare-fun e!2670749 () Bool)

(declare-fun tp!1320052 () Bool)

(declare-fun setElem!26866 () Context!5790)

(declare-fun setNonEmpty!26866 () Bool)

(assert (=> setNonEmpty!26866 (= setRes!26866 (and tp!1320052 (inv!63471 setElem!26866) e!2670749))))

(declare-fun setRest!26866 () (InoxSet Context!5790))

(assert (=> setNonEmpty!26866 (= setRest!26860 ((_ map or) (store ((as const (Array Context!5790 Bool)) false) setElem!26866 true) setRest!26866))))

(declare-fun b!4297350 () Bool)

(declare-fun tp!1320051 () Bool)

(assert (=> b!4297350 (= e!2670749 tp!1320051)))

(assert (= (and setNonEmpty!26860 condSetEmpty!26866) setIsEmpty!26866))

(assert (= (and setNonEmpty!26860 (not condSetEmpty!26866)) setNonEmpty!26866))

(assert (= setNonEmpty!26866 b!4297350))

(declare-fun m!4889511 () Bool)

(assert (=> setNonEmpty!26866 m!4889511))

(declare-fun setNonEmpty!26871 () Bool)

(declare-fun tp!1320072 () Bool)

(declare-fun setRes!26871 () Bool)

(declare-fun e!2670760 () Bool)

(declare-fun setElem!26872 () Context!5790)

(assert (=> setNonEmpty!26871 (= setRes!26871 (and tp!1320072 (inv!63471 setElem!26872) e!2670760))))

(declare-fun mapValue!20169 () List!48009)

(declare-fun setRest!26871 () (InoxSet Context!5790))

(assert (=> setNonEmpty!26871 (= (_1!26124 (_1!26125 (h!53305 mapValue!20169))) ((_ map or) (store ((as const (Array Context!5790 Bool)) false) setElem!26872 true) setRest!26871))))

(declare-fun b!4297361 () Bool)

(declare-fun tp!1320071 () Bool)

(assert (=> b!4297361 (= e!2670760 tp!1320071)))

(declare-fun mapIsEmpty!20169 () Bool)

(declare-fun mapRes!20169 () Bool)

(assert (=> mapIsEmpty!20169 mapRes!20169))

(declare-fun b!4297362 () Bool)

(declare-fun e!2670761 () Bool)

(declare-fun tp!1320073 () Bool)

(assert (=> b!4297362 (= e!2670761 (and setRes!26871 tp!1320073))))

(declare-fun condSetEmpty!26871 () Bool)

(assert (=> b!4297362 (= condSetEmpty!26871 (= (_1!26124 (_1!26125 (h!53305 mapValue!20169))) ((as const (Array Context!5790 Bool)) false)))))

(declare-fun setIsEmpty!26871 () Bool)

(assert (=> setIsEmpty!26871 setRes!26871))

(declare-fun setElem!26871 () Context!5790)

(declare-fun setNonEmpty!26872 () Bool)

(declare-fun tp!1320067 () Bool)

(declare-fun e!2670759 () Bool)

(declare-fun setRes!26872 () Bool)

(assert (=> setNonEmpty!26872 (= setRes!26872 (and tp!1320067 (inv!63471 setElem!26871) e!2670759))))

(declare-fun mapDefault!20169 () List!48009)

(declare-fun setRest!26872 () (InoxSet Context!5790))

(assert (=> setNonEmpty!26872 (= (_1!26124 (_1!26125 (h!53305 mapDefault!20169))) ((_ map or) (store ((as const (Array Context!5790 Bool)) false) setElem!26871 true) setRest!26872))))

(declare-fun mapNonEmpty!20169 () Bool)

(declare-fun tp!1320068 () Bool)

(assert (=> mapNonEmpty!20169 (= mapRes!20169 (and tp!1320068 e!2670761))))

(declare-fun mapKey!20169 () (_ BitVec 32))

(declare-fun mapRest!20169 () (Array (_ BitVec 32) List!48009))

(assert (=> mapNonEmpty!20169 (= mapRest!20166 (store mapRest!20169 mapKey!20169 mapValue!20169))))

(declare-fun condMapEmpty!20169 () Bool)

(assert (=> mapNonEmpty!20166 (= condMapEmpty!20169 (= mapRest!20166 ((as const (Array (_ BitVec 32) List!48009)) mapDefault!20169)))))

(declare-fun e!2670758 () Bool)

(assert (=> mapNonEmpty!20166 (= tp!1320018 (and e!2670758 mapRes!20169))))

(declare-fun b!4297363 () Bool)

(declare-fun tp!1320070 () Bool)

(assert (=> b!4297363 (= e!2670758 (and setRes!26872 tp!1320070))))

(declare-fun condSetEmpty!26872 () Bool)

(assert (=> b!4297363 (= condSetEmpty!26872 (= (_1!26124 (_1!26125 (h!53305 mapDefault!20169))) ((as const (Array Context!5790 Bool)) false)))))

(declare-fun b!4297364 () Bool)

(declare-fun tp!1320069 () Bool)

(assert (=> b!4297364 (= e!2670759 tp!1320069)))

(declare-fun setIsEmpty!26872 () Bool)

(assert (=> setIsEmpty!26872 setRes!26872))

(assert (= (and mapNonEmpty!20166 condMapEmpty!20169) mapIsEmpty!20169))

(assert (= (and mapNonEmpty!20166 (not condMapEmpty!20169)) mapNonEmpty!20169))

(assert (= (and b!4297362 condSetEmpty!26871) setIsEmpty!26871))

(assert (= (and b!4297362 (not condSetEmpty!26871)) setNonEmpty!26871))

(assert (= setNonEmpty!26871 b!4297361))

(assert (= (and mapNonEmpty!20169 ((_ is Cons!47885) mapValue!20169)) b!4297362))

(assert (= (and b!4297363 condSetEmpty!26872) setIsEmpty!26872))

(assert (= (and b!4297363 (not condSetEmpty!26872)) setNonEmpty!26872))

(assert (= setNonEmpty!26872 b!4297364))

(assert (= (and mapNonEmpty!20166 ((_ is Cons!47885) mapDefault!20169)) b!4297363))

(declare-fun m!4889513 () Bool)

(assert (=> setNonEmpty!26871 m!4889513))

(declare-fun m!4889515 () Bool)

(assert (=> setNonEmpty!26872 m!4889515))

(declare-fun m!4889517 () Bool)

(assert (=> mapNonEmpty!20169 m!4889517))

(declare-fun setIsEmpty!26873 () Bool)

(declare-fun setRes!26873 () Bool)

(assert (=> setIsEmpty!26873 setRes!26873))

(declare-fun setNonEmpty!26873 () Bool)

(declare-fun e!2670763 () Bool)

(declare-fun tp!1320074 () Bool)

(declare-fun setElem!26873 () Context!5790)

(assert (=> setNonEmpty!26873 (= setRes!26873 (and tp!1320074 (inv!63471 setElem!26873) e!2670763))))

(declare-fun setRest!26873 () (InoxSet Context!5790))

(assert (=> setNonEmpty!26873 (= (_1!26124 (_1!26125 (h!53305 mapValue!20166))) ((_ map or) (store ((as const (Array Context!5790 Bool)) false) setElem!26873 true) setRest!26873))))

(declare-fun b!4297366 () Bool)

(declare-fun tp!1320076 () Bool)

(assert (=> b!4297366 (= e!2670763 tp!1320076)))

(declare-fun e!2670762 () Bool)

(assert (=> mapNonEmpty!20166 (= tp!1320014 e!2670762)))

(declare-fun b!4297365 () Bool)

(declare-fun tp!1320075 () Bool)

(assert (=> b!4297365 (= e!2670762 (and setRes!26873 tp!1320075))))

(declare-fun condSetEmpty!26873 () Bool)

(assert (=> b!4297365 (= condSetEmpty!26873 (= (_1!26124 (_1!26125 (h!53305 mapValue!20166))) ((as const (Array Context!5790 Bool)) false)))))

(assert (= (and b!4297365 condSetEmpty!26873) setIsEmpty!26873))

(assert (= (and b!4297365 (not condSetEmpty!26873)) setNonEmpty!26873))

(assert (= setNonEmpty!26873 b!4297366))

(assert (= (and mapNonEmpty!20166 ((_ is Cons!47885) mapValue!20166)) b!4297365))

(declare-fun m!4889519 () Bool)

(assert (=> setNonEmpty!26873 m!4889519))

(declare-fun setIsEmpty!26874 () Bool)

(declare-fun setRes!26874 () Bool)

(assert (=> setIsEmpty!26874 setRes!26874))

(declare-fun setNonEmpty!26874 () Bool)

(declare-fun tp!1320077 () Bool)

(declare-fun setElem!26874 () Context!5790)

(declare-fun e!2670765 () Bool)

(assert (=> setNonEmpty!26874 (= setRes!26874 (and tp!1320077 (inv!63471 setElem!26874) e!2670765))))

(declare-fun setRest!26874 () (InoxSet Context!5790))

(assert (=> setNonEmpty!26874 (= (_1!26124 (_1!26125 (h!53305 (zeroValue!4746 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5790 Bool)) false) setElem!26874 true) setRest!26874))))

(declare-fun b!4297368 () Bool)

(declare-fun tp!1320079 () Bool)

(assert (=> b!4297368 (= e!2670765 tp!1320079)))

(declare-fun e!2670764 () Bool)

(assert (=> b!4297199 (= tp!1320016 e!2670764)))

(declare-fun b!4297367 () Bool)

(declare-fun tp!1320078 () Bool)

(assert (=> b!4297367 (= e!2670764 (and setRes!26874 tp!1320078))))

(declare-fun condSetEmpty!26874 () Bool)

(assert (=> b!4297367 (= condSetEmpty!26874 (= (_1!26124 (_1!26125 (h!53305 (zeroValue!4746 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))))) ((as const (Array Context!5790 Bool)) false)))))

(assert (= (and b!4297367 condSetEmpty!26874) setIsEmpty!26874))

(assert (= (and b!4297367 (not condSetEmpty!26874)) setNonEmpty!26874))

(assert (= setNonEmpty!26874 b!4297368))

(assert (= (and b!4297199 ((_ is Cons!47885) (zeroValue!4746 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019)))))))) b!4297367))

(declare-fun m!4889521 () Bool)

(assert (=> setNonEmpty!26874 m!4889521))

(declare-fun setIsEmpty!26875 () Bool)

(declare-fun setRes!26875 () Bool)

(assert (=> setIsEmpty!26875 setRes!26875))

(declare-fun tp!1320080 () Bool)

(declare-fun setNonEmpty!26875 () Bool)

(declare-fun e!2670767 () Bool)

(declare-fun setElem!26875 () Context!5790)

(assert (=> setNonEmpty!26875 (= setRes!26875 (and tp!1320080 (inv!63471 setElem!26875) e!2670767))))

(declare-fun setRest!26875 () (InoxSet Context!5790))

(assert (=> setNonEmpty!26875 (= (_1!26124 (_1!26125 (h!53305 (minValue!4746 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5790 Bool)) false) setElem!26875 true) setRest!26875))))

(declare-fun b!4297370 () Bool)

(declare-fun tp!1320082 () Bool)

(assert (=> b!4297370 (= e!2670767 tp!1320082)))

(declare-fun e!2670766 () Bool)

(assert (=> b!4297199 (= tp!1320020 e!2670766)))

(declare-fun b!4297369 () Bool)

(declare-fun tp!1320081 () Bool)

(assert (=> b!4297369 (= e!2670766 (and setRes!26875 tp!1320081))))

(declare-fun condSetEmpty!26875 () Bool)

(assert (=> b!4297369 (= condSetEmpty!26875 (= (_1!26124 (_1!26125 (h!53305 (minValue!4746 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019))))))))) ((as const (Array Context!5790 Bool)) false)))))

(assert (= (and b!4297369 condSetEmpty!26875) setIsEmpty!26875))

(assert (= (and b!4297369 (not condSetEmpty!26875)) setNonEmpty!26875))

(assert (= setNonEmpty!26875 b!4297370))

(assert (= (and b!4297199 ((_ is Cons!47885) (minValue!4746 (v!41811 (underlying!9203 (v!41812 (underlying!9204 (cache!4533 thiss!29019)))))))) b!4297369))

(declare-fun m!4889523 () Bool)

(assert (=> setNonEmpty!26875 m!4889523))

(declare-fun tp!1320083 () Bool)

(declare-fun b!4297371 () Bool)

(declare-fun tp!1320084 () Bool)

(declare-fun e!2670768 () Bool)

(assert (=> b!4297371 (= e!2670768 (and (inv!63469 (left!35523 (c!731031 (totalInput!4433 thiss!29019)))) tp!1320084 (inv!63469 (right!35853 (c!731031 (totalInput!4433 thiss!29019)))) tp!1320083))))

(declare-fun b!4297373 () Bool)

(declare-fun e!2670769 () Bool)

(declare-fun tp!1320085 () Bool)

(assert (=> b!4297373 (= e!2670769 tp!1320085)))

(declare-fun b!4297372 () Bool)

(assert (=> b!4297372 (= e!2670768 (and (inv!63474 (xs!17752 (c!731031 (totalInput!4433 thiss!29019)))) e!2670769))))

(assert (=> b!4297193 (= tp!1320013 (and (inv!63469 (c!731031 (totalInput!4433 thiss!29019))) e!2670768))))

(assert (= (and b!4297193 ((_ is Node!14446) (c!731031 (totalInput!4433 thiss!29019)))) b!4297371))

(assert (= b!4297372 b!4297373))

(assert (= (and b!4297193 ((_ is Leaf!22350) (c!731031 (totalInput!4433 thiss!29019)))) b!4297372))

(declare-fun m!4889525 () Bool)

(assert (=> b!4297371 m!4889525))

(declare-fun m!4889527 () Bool)

(assert (=> b!4297371 m!4889527))

(declare-fun m!4889529 () Bool)

(assert (=> b!4297372 m!4889529))

(assert (=> b!4297193 m!4889330))

(declare-fun b_lambda!126143 () Bool)

(assert (= b_lambda!126141 (or b!4297197 b_lambda!126143)))

(declare-fun bs!603848 () Bool)

(declare-fun d!1266318 () Bool)

(assert (= bs!603848 (and d!1266318 b!4297197)))

(declare-fun validCacheMapFindLongestMatchBody!14 (tuple2!45692 BalanceConc!28382) Bool)

(assert (=> bs!603848 (= (dynLambda!20333 lambda!131786 (h!53305 (toList!2151 (map!9840 (_2!26126 lt!1518729))))) (validCacheMapFindLongestMatchBody!14 (h!53305 (toList!2151 (map!9840 (_2!26126 lt!1518729)))) localTotalInput!12))))

(declare-fun m!4889531 () Bool)

(assert (=> bs!603848 m!4889531))

(assert (=> b!4297249 d!1266318))

(check-sat (not b!4297196) (not b!4297368) (not b!4297295) (not bm!294885) (not setNonEmpty!26863) (not bm!294876) (not b!4297372) (not bm!294891) (not bm!294871) (not b!4297241) (not b!4297350) (not bm!294881) (not bm!294879) (not bm!294880) (not bm!294896) (not bm!294875) (not bm!294897) (not b!4297306) (not bm!294887) (not setNonEmpty!26874) (not b!4297365) (not b!4297321) (not setNonEmpty!26875) (not b!4297220) (not bm!294892) (not bm!294872) (not b!4297243) (not b!4297193) b_and!339039 (not b_next!128529) (not b!4297218) (not d!1266308) (not b!4297373) (not b!4297318) (not bm!294877) (not b!4297337) (not b!4297363) (not bm!294870) (not b!4297326) (not b!4297370) (not b!4297336) (not b!4297364) (not b_next!128527) (not bs!603848) (not b!4297291) (not bm!294874) (not b!4297362) (not setNonEmpty!26871) (not bm!294888) (not b!4297316) (not bm!294878) (not b!4297366) (not d!1266290) (not b!4297211) (not bm!294894) (not b_lambda!126143) (not bm!294886) (not bm!294873) (not setNonEmpty!26873) (not b!4297239) (not setNonEmpty!26866) (not b!4297250) (not bm!294895) (not bm!294869) (not b!4297299) (not b!4297290) (not b!4297369) (not b!4297319) (not b!4297367) (not bm!294883) (not d!1266298) (not b!4297344) (not b!4297345) (not bm!294890) (not b!4297244) (not b!4297361) (not d!1266310) (not d!1266304) (not mapNonEmpty!20169) (not b!4297313) (not bm!294882) (not bm!294898) (not b!4297312) (not d!1266302) (not b!4297292) b_and!339041 (not d!1266306) (not setNonEmpty!26872) (not d!1266286) (not b!4297371) (not d!1266294) (not bm!294884) (not b!4297335) (not bm!294893) (not b!4297317))
(check-sat b_and!339039 b_and!339041 (not b_next!128527) (not b_next!128529))
