; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412458 () Bool)

(assert start!412458)

(declare-fun b!4296359 () Bool)

(declare-fun b_free!127791 () Bool)

(declare-fun b_next!128495 () Bool)

(assert (=> b!4296359 (= b_free!127791 (not b_next!128495))))

(declare-fun tp!1319498 () Bool)

(declare-fun b_and!339007 () Bool)

(assert (=> b!4296359 (= tp!1319498 b_and!339007)))

(declare-fun b!4296358 () Bool)

(declare-fun b_free!127793 () Bool)

(declare-fun b_next!128497 () Bool)

(assert (=> b!4296358 (= b_free!127793 (not b_next!128497))))

(declare-fun tp!1319501 () Bool)

(declare-fun b_and!339009 () Bool)

(assert (=> b!4296358 (= tp!1319501 b_and!339009)))

(declare-fun b!4296352 () Bool)

(declare-fun e!2670046 () Bool)

(declare-fun tp!1319496 () Bool)

(assert (=> b!4296352 (= e!2670046 tp!1319496)))

(declare-fun b!4296353 () Bool)

(declare-fun res!1760974 () Bool)

(declare-fun e!2670041 () Bool)

(assert (=> b!4296353 (=> (not res!1760974) (not e!2670041))))

(declare-fun from!940 () Int)

(assert (=> b!4296353 (= res!1760974 (>= from!940 0))))

(declare-fun b!4296354 () Bool)

(declare-fun res!1760972 () Bool)

(declare-fun e!2670039 () Bool)

(assert (=> b!4296354 (=> (not res!1760972) (not e!2670039))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!26192 0))(
  ( (C!26193 (val!15422 Int)) )
))
(declare-datatypes ((Regex!12997 0))(
  ( (ElementMatch!12997 (c!730962 C!26192)) (Concat!21316 (regOne!26506 Regex!12997) (regTwo!26506 Regex!12997)) (EmptyExpr!12997) (Star!12997 (reg!13326 Regex!12997)) (EmptyLang!12997) (Union!12997 (regOne!26507 Regex!12997) (regTwo!26507 Regex!12997)) )
))
(declare-datatypes ((List!47981 0))(
  ( (Nil!47857) (Cons!47857 (h!53277 Regex!12997) (t!354588 List!47981)) )
))
(declare-datatypes ((Context!5774 0))(
  ( (Context!5775 (exprs!3387 List!47981)) )
))
(declare-fun z!500 () (InoxSet Context!5774))

(declare-fun res!14399 () Int)

(declare-datatypes ((tuple2!45652 0))(
  ( (tuple2!45653 (_1!26105 (InoxSet Context!5774)) (_2!26105 Int)) )
))
(declare-datatypes ((tuple2!45654 0))(
  ( (tuple2!45655 (_1!26106 tuple2!45652) (_2!26106 Int)) )
))
(declare-datatypes ((List!47982 0))(
  ( (Nil!47858) (Cons!47858 (h!53278 tuple2!45654) (t!354589 List!47982)) )
))
(declare-datatypes ((array!15986 0))(
  ( (array!15987 (arr!7143 (Array (_ BitVec 32) (_ BitVec 64))) (size!35164 (_ BitVec 32))) )
))
(declare-datatypes ((array!15988 0))(
  ( (array!15989 (arr!7144 (Array (_ BitVec 32) List!47982)) (size!35165 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8958 0))(
  ( (LongMapFixedSize!8959 (defaultEntry!4864 Int) (mask!12947 (_ BitVec 32)) (extraKeys!4728 (_ BitVec 32)) (zeroValue!4738 List!47982) (minValue!4738 List!47982) (_size!9001 (_ BitVec 32)) (_keys!4779 array!15986) (_values!4760 array!15988) (_vacant!4540 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17725 0))(
  ( (Cell!17726 (v!41795 LongMapFixedSize!8958)) )
))
(declare-datatypes ((MutLongMap!4479 0))(
  ( (LongMap!4479 (underlying!9187 Cell!17725)) (MutLongMapExt!4478 (__x!29462 Int)) )
))
(declare-datatypes ((Cell!17727 0))(
  ( (Cell!17728 (v!41796 MutLongMap!4479)) )
))
(declare-datatypes ((Hashable!4395 0))(
  ( (HashableExt!4394 (__x!29463 Int)) )
))
(declare-datatypes ((MutableMap!4385 0))(
  ( (MutableMapExt!4384 (__x!29464 Int)) (HashMap!4385 (underlying!9188 Cell!17727) (hashF!6427 Hashable!4395) (_size!9002 (_ BitVec 32)) (defaultValue!4556 Int)) )
))
(declare-datatypes ((List!47983 0))(
  ( (Nil!47859) (Cons!47859 (h!53279 C!26192) (t!354590 List!47983)) )
))
(declare-datatypes ((IArray!28937 0))(
  ( (IArray!28938 (innerList!14526 List!47983)) )
))
(declare-datatypes ((Conc!14438 0))(
  ( (Node!14438 (left!35495 Conc!14438) (right!35825 Conc!14438) (csize!29106 Int) (cheight!14649 Int)) (Leaf!22338 (xs!17744 IArray!28937) (csize!29107 Int)) (Empty!14438) )
))
(declare-datatypes ((BalanceConc!28366 0))(
  ( (BalanceConc!28367 (c!730963 Conc!14438)) )
))
(declare-datatypes ((CacheFindLongestMatch!564 0))(
  ( (CacheFindLongestMatch!565 (cache!4525 MutableMap!4385) (totalInput!4416 BalanceConc!28366)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!564)

(declare-fun lt!1518609 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!51 ((InoxSet Context!5774) Int BalanceConc!28366 Int) Int)

(assert (=> b!4296354 (= res!1760972 (= res!14399 (findLongestMatchInnerZipperFastV2!51 z!500 from!940 (totalInput!4416 thiss!29019) lt!1518609)))))

(declare-fun mapNonEmpty!20130 () Bool)

(declare-fun mapRes!20130 () Bool)

(declare-fun tp!1319505 () Bool)

(declare-fun tp!1319499 () Bool)

(assert (=> mapNonEmpty!20130 (= mapRes!20130 (and tp!1319505 tp!1319499))))

(declare-fun mapRest!20130 () (Array (_ BitVec 32) List!47982))

(declare-fun mapValue!20130 () List!47982)

(declare-fun mapKey!20130 () (_ BitVec 32))

(assert (=> mapNonEmpty!20130 (= (arr!7144 (_values!4760 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))) (store mapRest!20130 mapKey!20130 mapValue!20130))))

(declare-fun b!4296355 () Bool)

(declare-fun e!2670043 () Bool)

(declare-fun tp!1319504 () Bool)

(declare-fun inv!63414 (Conc!14438) Bool)

(assert (=> b!4296355 (= e!2670043 (and (inv!63414 (c!730963 (totalInput!4416 thiss!29019))) tp!1319504))))

(declare-fun b!4296356 () Bool)

(declare-fun e!2670047 () Bool)

(declare-fun e!2670048 () Bool)

(assert (=> b!4296356 (= e!2670047 e!2670048)))

(declare-fun b!4296357 () Bool)

(get-info :version)

(assert (=> b!4296357 (= e!2670039 (not ((_ is HashMap!4385) (cache!4525 thiss!29019))))))

(declare-fun e!2670038 () Bool)

(declare-fun e!2670049 () Bool)

(assert (=> b!4296358 (= e!2670038 (and e!2670049 tp!1319501))))

(declare-fun e!2670044 () Bool)

(declare-fun tp!1319502 () Bool)

(declare-fun tp!1319500 () Bool)

(declare-fun e!2670042 () Bool)

(declare-fun array_inv!5121 (array!15986) Bool)

(declare-fun array_inv!5122 (array!15988) Bool)

(assert (=> b!4296359 (= e!2670044 (and tp!1319498 tp!1319502 tp!1319500 (array_inv!5121 (_keys!4779 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))) (array_inv!5122 (_values!4760 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))) e!2670042))))

(declare-fun b!4296360 () Bool)

(declare-fun e!2670045 () Bool)

(declare-fun localTotalInput!12 () BalanceConc!28366)

(declare-fun tp!1319497 () Bool)

(assert (=> b!4296360 (= e!2670045 (and (inv!63414 (c!730963 localTotalInput!12)) tp!1319497))))

(declare-fun b!4296361 () Bool)

(declare-fun tp!1319503 () Bool)

(assert (=> b!4296361 (= e!2670042 (and tp!1319503 mapRes!20130))))

(declare-fun condMapEmpty!20130 () Bool)

(declare-fun mapDefault!20130 () List!47982)

(assert (=> b!4296361 (= condMapEmpty!20130 (= (arr!7144 (_values!4760 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47982)) mapDefault!20130)))))

(declare-fun b!4296362 () Bool)

(assert (=> b!4296362 (= e!2670048 e!2670044)))

(declare-fun b!4296363 () Bool)

(declare-fun lt!1518608 () MutLongMap!4479)

(assert (=> b!4296363 (= e!2670049 (and e!2670047 ((_ is LongMap!4479) lt!1518608)))))

(assert (=> b!4296363 (= lt!1518608 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))

(declare-fun b!4296364 () Bool)

(declare-fun res!1760975 () Bool)

(assert (=> b!4296364 (=> (not res!1760975) (not e!2670041))))

(declare-fun validCacheMapFindLongestMatch!91 (MutableMap!4385 BalanceConc!28366) Bool)

(assert (=> b!4296364 (= res!1760975 (validCacheMapFindLongestMatch!91 (cache!4525 thiss!29019) (totalInput!4416 thiss!29019)))))

(declare-fun b!4296365 () Bool)

(assert (=> b!4296365 (= e!2670041 e!2670039)))

(declare-fun res!1760971 () Bool)

(assert (=> b!4296365 (=> (not res!1760971) (not e!2670039))))

(assert (=> b!4296365 (= res!1760971 (<= from!940 lt!1518609))))

(declare-fun size!35166 (BalanceConc!28366) Int)

(assert (=> b!4296365 (= lt!1518609 (size!35166 (totalInput!4416 thiss!29019)))))

(declare-fun mapIsEmpty!20130 () Bool)

(assert (=> mapIsEmpty!20130 mapRes!20130))

(declare-fun res!1760973 () Bool)

(assert (=> start!412458 (=> (not res!1760973) (not e!2670041))))

(assert (=> start!412458 (= res!1760973 (= localTotalInput!12 (totalInput!4416 thiss!29019)))))

(assert (=> start!412458 e!2670041))

(declare-fun condSetEmpty!26776 () Bool)

(assert (=> start!412458 (= condSetEmpty!26776 (= z!500 ((as const (Array Context!5774 Bool)) false)))))

(declare-fun setRes!26776 () Bool)

(assert (=> start!412458 setRes!26776))

(assert (=> start!412458 true))

(declare-fun e!2670037 () Bool)

(declare-fun inv!63415 (CacheFindLongestMatch!564) Bool)

(assert (=> start!412458 (and (inv!63415 thiss!29019) e!2670037)))

(declare-fun inv!63416 (BalanceConc!28366) Bool)

(assert (=> start!412458 (and (inv!63416 localTotalInput!12) e!2670045)))

(declare-fun setIsEmpty!26776 () Bool)

(assert (=> setIsEmpty!26776 setRes!26776))

(declare-fun setNonEmpty!26776 () Bool)

(declare-fun tp!1319506 () Bool)

(declare-fun setElem!26776 () Context!5774)

(declare-fun inv!63417 (Context!5774) Bool)

(assert (=> setNonEmpty!26776 (= setRes!26776 (and tp!1319506 (inv!63417 setElem!26776) e!2670046))))

(declare-fun setRest!26776 () (InoxSet Context!5774))

(assert (=> setNonEmpty!26776 (= z!500 ((_ map or) (store ((as const (Array Context!5774 Bool)) false) setElem!26776 true) setRest!26776))))

(declare-fun b!4296366 () Bool)

(assert (=> b!4296366 (= e!2670037 (and e!2670038 (inv!63416 (totalInput!4416 thiss!29019)) e!2670043))))

(assert (= (and start!412458 res!1760973) b!4296364))

(assert (= (and b!4296364 res!1760975) b!4296353))

(assert (= (and b!4296353 res!1760974) b!4296365))

(assert (= (and b!4296365 res!1760971) b!4296354))

(assert (= (and b!4296354 res!1760972) b!4296357))

(assert (= (and start!412458 condSetEmpty!26776) setIsEmpty!26776))

(assert (= (and start!412458 (not condSetEmpty!26776)) setNonEmpty!26776))

(assert (= setNonEmpty!26776 b!4296352))

(assert (= (and b!4296361 condMapEmpty!20130) mapIsEmpty!20130))

(assert (= (and b!4296361 (not condMapEmpty!20130)) mapNonEmpty!20130))

(assert (= b!4296359 b!4296361))

(assert (= b!4296362 b!4296359))

(assert (= b!4296356 b!4296362))

(assert (= (and b!4296363 ((_ is LongMap!4479) (v!41796 (underlying!9188 (cache!4525 thiss!29019))))) b!4296356))

(assert (= b!4296358 b!4296363))

(assert (= (and b!4296366 ((_ is HashMap!4385) (cache!4525 thiss!29019))) b!4296358))

(assert (= b!4296366 b!4296355))

(assert (= start!412458 b!4296366))

(assert (= start!412458 b!4296360))

(declare-fun m!4888782 () Bool)

(assert (=> b!4296364 m!4888782))

(declare-fun m!4888784 () Bool)

(assert (=> b!4296355 m!4888784))

(declare-fun m!4888786 () Bool)

(assert (=> b!4296366 m!4888786))

(declare-fun m!4888788 () Bool)

(assert (=> b!4296354 m!4888788))

(declare-fun m!4888790 () Bool)

(assert (=> b!4296365 m!4888790))

(declare-fun m!4888792 () Bool)

(assert (=> mapNonEmpty!20130 m!4888792))

(declare-fun m!4888794 () Bool)

(assert (=> b!4296360 m!4888794))

(declare-fun m!4888796 () Bool)

(assert (=> start!412458 m!4888796))

(declare-fun m!4888798 () Bool)

(assert (=> start!412458 m!4888798))

(declare-fun m!4888800 () Bool)

(assert (=> b!4296359 m!4888800))

(declare-fun m!4888802 () Bool)

(assert (=> b!4296359 m!4888802))

(declare-fun m!4888804 () Bool)

(assert (=> setNonEmpty!26776 m!4888804))

(check-sat (not b!4296364) (not b_next!128497) (not start!412458) (not b!4296360) (not b!4296352) (not b!4296366) (not mapNonEmpty!20130) (not b!4296361) (not b!4296354) (not b!4296355) (not b!4296365) (not b!4296359) b_and!339007 b_and!339009 (not setNonEmpty!26776) (not b_next!128495))
(check-sat b_and!339009 b_and!339007 (not b_next!128497) (not b_next!128495))
(get-model)

(declare-fun d!1266174 () Bool)

(declare-fun res!1760978 () Bool)

(declare-fun e!2670052 () Bool)

(assert (=> d!1266174 (=> (not res!1760978) (not e!2670052))))

(assert (=> d!1266174 (= res!1760978 ((_ is HashMap!4385) (cache!4525 thiss!29019)))))

(assert (=> d!1266174 (= (inv!63415 thiss!29019) e!2670052)))

(declare-fun b!4296369 () Bool)

(assert (=> b!4296369 (= e!2670052 (validCacheMapFindLongestMatch!91 (cache!4525 thiss!29019) (totalInput!4416 thiss!29019)))))

(assert (= (and d!1266174 res!1760978) b!4296369))

(assert (=> b!4296369 m!4888782))

(assert (=> start!412458 d!1266174))

(declare-fun d!1266176 () Bool)

(declare-fun isBalanced!3892 (Conc!14438) Bool)

(assert (=> d!1266176 (= (inv!63416 localTotalInput!12) (isBalanced!3892 (c!730963 localTotalInput!12)))))

(declare-fun bs!603809 () Bool)

(assert (= bs!603809 d!1266176))

(declare-fun m!4888806 () Bool)

(assert (=> bs!603809 m!4888806))

(assert (=> start!412458 d!1266176))

(declare-fun b!4296375 () Bool)

(assert (=> b!4296375 true))

(declare-fun d!1266178 () Bool)

(declare-fun res!1760983 () Bool)

(declare-fun e!2670055 () Bool)

(assert (=> d!1266178 (=> (not res!1760983) (not e!2670055))))

(declare-fun valid!3455 (MutableMap!4385) Bool)

(assert (=> d!1266178 (= res!1760983 (valid!3455 (cache!4525 thiss!29019)))))

(assert (=> d!1266178 (= (validCacheMapFindLongestMatch!91 (cache!4525 thiss!29019) (totalInput!4416 thiss!29019)) e!2670055)))

(declare-fun b!4296374 () Bool)

(declare-fun res!1760984 () Bool)

(assert (=> b!4296374 (=> (not res!1760984) (not e!2670055))))

(declare-fun invariantList!520 (List!47982) Bool)

(declare-datatypes ((ListMap!1405 0))(
  ( (ListMap!1406 (toList!2142 List!47982)) )
))
(declare-fun map!9827 (MutableMap!4385) ListMap!1405)

(assert (=> b!4296374 (= res!1760984 (invariantList!520 (toList!2142 (map!9827 (cache!4525 thiss!29019)))))))

(declare-fun lambda!131738 () Int)

(declare-fun forall!8576 (List!47982 Int) Bool)

(assert (=> b!4296375 (= e!2670055 (forall!8576 (toList!2142 (map!9827 (cache!4525 thiss!29019))) lambda!131738))))

(assert (= (and d!1266178 res!1760983) b!4296374))

(assert (= (and b!4296374 res!1760984) b!4296375))

(declare-fun m!4888809 () Bool)

(assert (=> d!1266178 m!4888809))

(declare-fun m!4888811 () Bool)

(assert (=> b!4296374 m!4888811))

(declare-fun m!4888813 () Bool)

(assert (=> b!4296374 m!4888813))

(assert (=> b!4296375 m!4888811))

(declare-fun m!4888815 () Bool)

(assert (=> b!4296375 m!4888815))

(assert (=> b!4296364 d!1266178))

(declare-fun b!4296394 () Bool)

(declare-fun e!2670066 () Int)

(assert (=> b!4296394 (= e!2670066 0)))

(declare-fun b!4296395 () Bool)

(declare-fun e!2670067 () Int)

(declare-fun lt!1518618 () Int)

(assert (=> b!4296395 (= e!2670067 (+ 1 lt!1518618))))

(declare-fun b!4296396 () Bool)

(assert (=> b!4296396 (= e!2670066 1)))

(declare-fun d!1266180 () Bool)

(declare-fun lt!1518617 () Int)

(assert (=> d!1266180 (and (>= lt!1518617 0) (<= lt!1518617 (- lt!1518609 from!940)))))

(declare-fun e!2670070 () Int)

(assert (=> d!1266180 (= lt!1518617 e!2670070)))

(declare-fun c!730972 () Bool)

(declare-fun e!2670069 () Bool)

(assert (=> d!1266180 (= c!730972 e!2670069)))

(declare-fun res!1760989 () Bool)

(assert (=> d!1266180 (=> res!1760989 e!2670069)))

(assert (=> d!1266180 (= res!1760989 (= from!940 lt!1518609))))

(declare-fun e!2670068 () Bool)

(assert (=> d!1266180 e!2670068))

(declare-fun res!1760990 () Bool)

(assert (=> d!1266180 (=> (not res!1760990) (not e!2670068))))

(assert (=> d!1266180 (= res!1760990 (>= from!940 0))))

(assert (=> d!1266180 (= (findLongestMatchInnerZipperFastV2!51 z!500 from!940 (totalInput!4416 thiss!29019) lt!1518609) lt!1518617)))

(declare-fun b!4296397 () Bool)

(declare-fun lostCauseZipper!659 ((InoxSet Context!5774)) Bool)

(assert (=> b!4296397 (= e!2670069 (lostCauseZipper!659 z!500))))

(declare-fun b!4296398 () Bool)

(assert (=> b!4296398 (= e!2670070 0)))

(declare-fun b!4296399 () Bool)

(assert (=> b!4296399 (= e!2670070 e!2670067)))

(declare-fun lt!1518616 () (InoxSet Context!5774))

(declare-fun derivationStepZipper!556 ((InoxSet Context!5774) C!26192) (InoxSet Context!5774))

(declare-fun apply!10858 (BalanceConc!28366 Int) C!26192)

(assert (=> b!4296399 (= lt!1518616 (derivationStepZipper!556 z!500 (apply!10858 (totalInput!4416 thiss!29019) from!940)))))

(assert (=> b!4296399 (= lt!1518618 (findLongestMatchInnerZipperFastV2!51 lt!1518616 (+ from!940 1) (totalInput!4416 thiss!29019) lt!1518609))))

(declare-fun c!730971 () Bool)

(assert (=> b!4296399 (= c!730971 (> lt!1518618 0))))

(declare-fun b!4296400 () Bool)

(declare-fun c!730970 () Bool)

(declare-fun nullableZipper!779 ((InoxSet Context!5774)) Bool)

(assert (=> b!4296400 (= c!730970 (nullableZipper!779 lt!1518616))))

(assert (=> b!4296400 (= e!2670067 e!2670066)))

(declare-fun b!4296401 () Bool)

(assert (=> b!4296401 (= e!2670068 (<= from!940 (size!35166 (totalInput!4416 thiss!29019))))))

(assert (= (and d!1266180 res!1760990) b!4296401))

(assert (= (and d!1266180 (not res!1760989)) b!4296397))

(assert (= (and d!1266180 c!730972) b!4296398))

(assert (= (and d!1266180 (not c!730972)) b!4296399))

(assert (= (and b!4296399 c!730971) b!4296395))

(assert (= (and b!4296399 (not c!730971)) b!4296400))

(assert (= (and b!4296400 c!730970) b!4296396))

(assert (= (and b!4296400 (not c!730970)) b!4296394))

(declare-fun m!4888817 () Bool)

(assert (=> b!4296397 m!4888817))

(declare-fun m!4888819 () Bool)

(assert (=> b!4296399 m!4888819))

(assert (=> b!4296399 m!4888819))

(declare-fun m!4888821 () Bool)

(assert (=> b!4296399 m!4888821))

(declare-fun m!4888823 () Bool)

(assert (=> b!4296399 m!4888823))

(declare-fun m!4888825 () Bool)

(assert (=> b!4296400 m!4888825))

(assert (=> b!4296401 m!4888790))

(assert (=> b!4296354 d!1266180))

(declare-fun d!1266182 () Bool)

(assert (=> d!1266182 (= (array_inv!5121 (_keys!4779 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))) (bvsge (size!35164 (_keys!4779 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296359 d!1266182))

(declare-fun d!1266184 () Bool)

(assert (=> d!1266184 (= (array_inv!5122 (_values!4760 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))) (bvsge (size!35165 (_values!4760 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296359 d!1266184))

(declare-fun d!1266186 () Bool)

(declare-fun c!730975 () Bool)

(assert (=> d!1266186 (= c!730975 ((_ is Node!14438) (c!730963 localTotalInput!12)))))

(declare-fun e!2670075 () Bool)

(assert (=> d!1266186 (= (inv!63414 (c!730963 localTotalInput!12)) e!2670075)))

(declare-fun b!4296408 () Bool)

(declare-fun inv!63418 (Conc!14438) Bool)

(assert (=> b!4296408 (= e!2670075 (inv!63418 (c!730963 localTotalInput!12)))))

(declare-fun b!4296409 () Bool)

(declare-fun e!2670076 () Bool)

(assert (=> b!4296409 (= e!2670075 e!2670076)))

(declare-fun res!1760993 () Bool)

(assert (=> b!4296409 (= res!1760993 (not ((_ is Leaf!22338) (c!730963 localTotalInput!12))))))

(assert (=> b!4296409 (=> res!1760993 e!2670076)))

(declare-fun b!4296410 () Bool)

(declare-fun inv!63419 (Conc!14438) Bool)

(assert (=> b!4296410 (= e!2670076 (inv!63419 (c!730963 localTotalInput!12)))))

(assert (= (and d!1266186 c!730975) b!4296408))

(assert (= (and d!1266186 (not c!730975)) b!4296409))

(assert (= (and b!4296409 (not res!1760993)) b!4296410))

(declare-fun m!4888827 () Bool)

(assert (=> b!4296408 m!4888827))

(declare-fun m!4888829 () Bool)

(assert (=> b!4296410 m!4888829))

(assert (=> b!4296360 d!1266186))

(declare-fun d!1266188 () Bool)

(declare-fun lt!1518621 () Int)

(declare-fun size!35167 (List!47983) Int)

(declare-fun list!17369 (BalanceConc!28366) List!47983)

(assert (=> d!1266188 (= lt!1518621 (size!35167 (list!17369 (totalInput!4416 thiss!29019))))))

(declare-fun size!35168 (Conc!14438) Int)

(assert (=> d!1266188 (= lt!1518621 (size!35168 (c!730963 (totalInput!4416 thiss!29019))))))

(assert (=> d!1266188 (= (size!35166 (totalInput!4416 thiss!29019)) lt!1518621)))

(declare-fun bs!603810 () Bool)

(assert (= bs!603810 d!1266188))

(declare-fun m!4888831 () Bool)

(assert (=> bs!603810 m!4888831))

(assert (=> bs!603810 m!4888831))

(declare-fun m!4888833 () Bool)

(assert (=> bs!603810 m!4888833))

(declare-fun m!4888835 () Bool)

(assert (=> bs!603810 m!4888835))

(assert (=> b!4296365 d!1266188))

(declare-fun d!1266190 () Bool)

(declare-fun c!730976 () Bool)

(assert (=> d!1266190 (= c!730976 ((_ is Node!14438) (c!730963 (totalInput!4416 thiss!29019))))))

(declare-fun e!2670077 () Bool)

(assert (=> d!1266190 (= (inv!63414 (c!730963 (totalInput!4416 thiss!29019))) e!2670077)))

(declare-fun b!4296411 () Bool)

(assert (=> b!4296411 (= e!2670077 (inv!63418 (c!730963 (totalInput!4416 thiss!29019))))))

(declare-fun b!4296412 () Bool)

(declare-fun e!2670078 () Bool)

(assert (=> b!4296412 (= e!2670077 e!2670078)))

(declare-fun res!1760994 () Bool)

(assert (=> b!4296412 (= res!1760994 (not ((_ is Leaf!22338) (c!730963 (totalInput!4416 thiss!29019)))))))

(assert (=> b!4296412 (=> res!1760994 e!2670078)))

(declare-fun b!4296413 () Bool)

(assert (=> b!4296413 (= e!2670078 (inv!63419 (c!730963 (totalInput!4416 thiss!29019))))))

(assert (= (and d!1266190 c!730976) b!4296411))

(assert (= (and d!1266190 (not c!730976)) b!4296412))

(assert (= (and b!4296412 (not res!1760994)) b!4296413))

(declare-fun m!4888837 () Bool)

(assert (=> b!4296411 m!4888837))

(declare-fun m!4888839 () Bool)

(assert (=> b!4296413 m!4888839))

(assert (=> b!4296355 d!1266190))

(declare-fun d!1266192 () Bool)

(declare-fun lambda!131741 () Int)

(declare-fun forall!8577 (List!47981 Int) Bool)

(assert (=> d!1266192 (= (inv!63417 setElem!26776) (forall!8577 (exprs!3387 setElem!26776) lambda!131741))))

(declare-fun bs!603811 () Bool)

(assert (= bs!603811 d!1266192))

(declare-fun m!4888841 () Bool)

(assert (=> bs!603811 m!4888841))

(assert (=> setNonEmpty!26776 d!1266192))

(declare-fun d!1266194 () Bool)

(assert (=> d!1266194 (= (inv!63416 (totalInput!4416 thiss!29019)) (isBalanced!3892 (c!730963 (totalInput!4416 thiss!29019))))))

(declare-fun bs!603812 () Bool)

(assert (= bs!603812 d!1266194))

(declare-fun m!4888843 () Bool)

(assert (=> bs!603812 m!4888843))

(assert (=> b!4296366 d!1266194))

(declare-fun setIsEmpty!26781 () Bool)

(declare-fun setRes!26781 () Bool)

(assert (=> setIsEmpty!26781 setRes!26781))

(declare-fun setIsEmpty!26782 () Bool)

(declare-fun setRes!26782 () Bool)

(assert (=> setIsEmpty!26782 setRes!26782))

(declare-fun mapNonEmpty!20133 () Bool)

(declare-fun mapRes!20133 () Bool)

(declare-fun tp!1319523 () Bool)

(declare-fun e!2670089 () Bool)

(assert (=> mapNonEmpty!20133 (= mapRes!20133 (and tp!1319523 e!2670089))))

(declare-fun mapRest!20133 () (Array (_ BitVec 32) List!47982))

(declare-fun mapValue!20133 () List!47982)

(declare-fun mapKey!20133 () (_ BitVec 32))

(assert (=> mapNonEmpty!20133 (= mapRest!20130 (store mapRest!20133 mapKey!20133 mapValue!20133))))

(declare-fun mapIsEmpty!20133 () Bool)

(assert (=> mapIsEmpty!20133 mapRes!20133))

(declare-fun e!2670090 () Bool)

(declare-fun tp!1319521 () Bool)

(declare-fun setNonEmpty!26781 () Bool)

(declare-fun setElem!26781 () Context!5774)

(assert (=> setNonEmpty!26781 (= setRes!26781 (and tp!1319521 (inv!63417 setElem!26781) e!2670090))))

(declare-fun mapDefault!20133 () List!47982)

(declare-fun setRest!26781 () (InoxSet Context!5774))

(assert (=> setNonEmpty!26781 (= (_1!26105 (_1!26106 (h!53278 mapDefault!20133))) ((_ map or) (store ((as const (Array Context!5774 Bool)) false) setElem!26781 true) setRest!26781))))

(declare-fun e!2670088 () Bool)

(declare-fun setNonEmpty!26782 () Bool)

(declare-fun setElem!26782 () Context!5774)

(declare-fun tp!1319522 () Bool)

(assert (=> setNonEmpty!26782 (= setRes!26782 (and tp!1319522 (inv!63417 setElem!26782) e!2670088))))

(declare-fun setRest!26782 () (InoxSet Context!5774))

(assert (=> setNonEmpty!26782 (= (_1!26105 (_1!26106 (h!53278 mapValue!20133))) ((_ map or) (store ((as const (Array Context!5774 Bool)) false) setElem!26782 true) setRest!26782))))

(declare-fun b!4296425 () Bool)

(declare-fun tp!1319524 () Bool)

(assert (=> b!4296425 (= e!2670089 (and setRes!26782 tp!1319524))))

(declare-fun condSetEmpty!26782 () Bool)

(assert (=> b!4296425 (= condSetEmpty!26782 (= (_1!26105 (_1!26106 (h!53278 mapValue!20133))) ((as const (Array Context!5774 Bool)) false)))))

(declare-fun b!4296426 () Bool)

(declare-fun tp!1319527 () Bool)

(assert (=> b!4296426 (= e!2670088 tp!1319527)))

(declare-fun b!4296427 () Bool)

(declare-fun e!2670087 () Bool)

(declare-fun tp!1319525 () Bool)

(assert (=> b!4296427 (= e!2670087 (and setRes!26781 tp!1319525))))

(declare-fun condSetEmpty!26781 () Bool)

(assert (=> b!4296427 (= condSetEmpty!26781 (= (_1!26105 (_1!26106 (h!53278 mapDefault!20133))) ((as const (Array Context!5774 Bool)) false)))))

(declare-fun b!4296424 () Bool)

(declare-fun tp!1319526 () Bool)

(assert (=> b!4296424 (= e!2670090 tp!1319526)))

(declare-fun condMapEmpty!20133 () Bool)

(assert (=> mapNonEmpty!20130 (= condMapEmpty!20133 (= mapRest!20130 ((as const (Array (_ BitVec 32) List!47982)) mapDefault!20133)))))

(assert (=> mapNonEmpty!20130 (= tp!1319505 (and e!2670087 mapRes!20133))))

(assert (= (and mapNonEmpty!20130 condMapEmpty!20133) mapIsEmpty!20133))

(assert (= (and mapNonEmpty!20130 (not condMapEmpty!20133)) mapNonEmpty!20133))

(assert (= (and b!4296425 condSetEmpty!26782) setIsEmpty!26782))

(assert (= (and b!4296425 (not condSetEmpty!26782)) setNonEmpty!26782))

(assert (= setNonEmpty!26782 b!4296426))

(assert (= (and mapNonEmpty!20133 ((_ is Cons!47858) mapValue!20133)) b!4296425))

(assert (= (and b!4296427 condSetEmpty!26781) setIsEmpty!26781))

(assert (= (and b!4296427 (not condSetEmpty!26781)) setNonEmpty!26781))

(assert (= setNonEmpty!26781 b!4296424))

(assert (= (and mapNonEmpty!20130 ((_ is Cons!47858) mapDefault!20133)) b!4296427))

(declare-fun m!4888845 () Bool)

(assert (=> mapNonEmpty!20133 m!4888845))

(declare-fun m!4888847 () Bool)

(assert (=> setNonEmpty!26781 m!4888847))

(declare-fun m!4888849 () Bool)

(assert (=> setNonEmpty!26782 m!4888849))

(declare-fun e!2670096 () Bool)

(declare-fun setRes!26785 () Bool)

(declare-fun setNonEmpty!26785 () Bool)

(declare-fun tp!1319534 () Bool)

(declare-fun setElem!26785 () Context!5774)

(assert (=> setNonEmpty!26785 (= setRes!26785 (and tp!1319534 (inv!63417 setElem!26785) e!2670096))))

(declare-fun setRest!26785 () (InoxSet Context!5774))

(assert (=> setNonEmpty!26785 (= (_1!26105 (_1!26106 (h!53278 mapValue!20130))) ((_ map or) (store ((as const (Array Context!5774 Bool)) false) setElem!26785 true) setRest!26785))))

(declare-fun b!4296434 () Bool)

(declare-fun e!2670095 () Bool)

(declare-fun tp!1319536 () Bool)

(assert (=> b!4296434 (= e!2670095 (and setRes!26785 tp!1319536))))

(declare-fun condSetEmpty!26785 () Bool)

(assert (=> b!4296434 (= condSetEmpty!26785 (= (_1!26105 (_1!26106 (h!53278 mapValue!20130))) ((as const (Array Context!5774 Bool)) false)))))

(declare-fun b!4296435 () Bool)

(declare-fun tp!1319535 () Bool)

(assert (=> b!4296435 (= e!2670096 tp!1319535)))

(assert (=> mapNonEmpty!20130 (= tp!1319499 e!2670095)))

(declare-fun setIsEmpty!26785 () Bool)

(assert (=> setIsEmpty!26785 setRes!26785))

(assert (= (and b!4296434 condSetEmpty!26785) setIsEmpty!26785))

(assert (= (and b!4296434 (not condSetEmpty!26785)) setNonEmpty!26785))

(assert (= setNonEmpty!26785 b!4296435))

(assert (= (and mapNonEmpty!20130 ((_ is Cons!47858) mapValue!20130)) b!4296434))

(declare-fun m!4888851 () Bool)

(assert (=> setNonEmpty!26785 m!4888851))

(declare-fun setRes!26786 () Bool)

(declare-fun setNonEmpty!26786 () Bool)

(declare-fun e!2670098 () Bool)

(declare-fun setElem!26786 () Context!5774)

(declare-fun tp!1319537 () Bool)

(assert (=> setNonEmpty!26786 (= setRes!26786 (and tp!1319537 (inv!63417 setElem!26786) e!2670098))))

(declare-fun setRest!26786 () (InoxSet Context!5774))

(assert (=> setNonEmpty!26786 (= (_1!26105 (_1!26106 (h!53278 (zeroValue!4738 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5774 Bool)) false) setElem!26786 true) setRest!26786))))

(declare-fun b!4296436 () Bool)

(declare-fun e!2670097 () Bool)

(declare-fun tp!1319539 () Bool)

(assert (=> b!4296436 (= e!2670097 (and setRes!26786 tp!1319539))))

(declare-fun condSetEmpty!26786 () Bool)

(assert (=> b!4296436 (= condSetEmpty!26786 (= (_1!26105 (_1!26106 (h!53278 (zeroValue!4738 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))))) ((as const (Array Context!5774 Bool)) false)))))

(declare-fun b!4296437 () Bool)

(declare-fun tp!1319538 () Bool)

(assert (=> b!4296437 (= e!2670098 tp!1319538)))

(assert (=> b!4296359 (= tp!1319502 e!2670097)))

(declare-fun setIsEmpty!26786 () Bool)

(assert (=> setIsEmpty!26786 setRes!26786))

(assert (= (and b!4296436 condSetEmpty!26786) setIsEmpty!26786))

(assert (= (and b!4296436 (not condSetEmpty!26786)) setNonEmpty!26786))

(assert (= setNonEmpty!26786 b!4296437))

(assert (= (and b!4296359 ((_ is Cons!47858) (zeroValue!4738 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019)))))))) b!4296436))

(declare-fun m!4888853 () Bool)

(assert (=> setNonEmpty!26786 m!4888853))

(declare-fun tp!1319540 () Bool)

(declare-fun setNonEmpty!26787 () Bool)

(declare-fun setElem!26787 () Context!5774)

(declare-fun e!2670100 () Bool)

(declare-fun setRes!26787 () Bool)

(assert (=> setNonEmpty!26787 (= setRes!26787 (and tp!1319540 (inv!63417 setElem!26787) e!2670100))))

(declare-fun setRest!26787 () (InoxSet Context!5774))

(assert (=> setNonEmpty!26787 (= (_1!26105 (_1!26106 (h!53278 (minValue!4738 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5774 Bool)) false) setElem!26787 true) setRest!26787))))

(declare-fun b!4296438 () Bool)

(declare-fun e!2670099 () Bool)

(declare-fun tp!1319542 () Bool)

(assert (=> b!4296438 (= e!2670099 (and setRes!26787 tp!1319542))))

(declare-fun condSetEmpty!26787 () Bool)

(assert (=> b!4296438 (= condSetEmpty!26787 (= (_1!26105 (_1!26106 (h!53278 (minValue!4738 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019))))))))) ((as const (Array Context!5774 Bool)) false)))))

(declare-fun b!4296439 () Bool)

(declare-fun tp!1319541 () Bool)

(assert (=> b!4296439 (= e!2670100 tp!1319541)))

(assert (=> b!4296359 (= tp!1319500 e!2670099)))

(declare-fun setIsEmpty!26787 () Bool)

(assert (=> setIsEmpty!26787 setRes!26787))

(assert (= (and b!4296438 condSetEmpty!26787) setIsEmpty!26787))

(assert (= (and b!4296438 (not condSetEmpty!26787)) setNonEmpty!26787))

(assert (= setNonEmpty!26787 b!4296439))

(assert (= (and b!4296359 ((_ is Cons!47858) (minValue!4738 (v!41795 (underlying!9187 (v!41796 (underlying!9188 (cache!4525 thiss!29019)))))))) b!4296438))

(declare-fun m!4888855 () Bool)

(assert (=> setNonEmpty!26787 m!4888855))

(declare-fun tp!1319551 () Bool)

(declare-fun tp!1319549 () Bool)

(declare-fun b!4296448 () Bool)

(declare-fun e!2670106 () Bool)

(assert (=> b!4296448 (= e!2670106 (and (inv!63414 (left!35495 (c!730963 localTotalInput!12))) tp!1319551 (inv!63414 (right!35825 (c!730963 localTotalInput!12))) tp!1319549))))

(declare-fun b!4296450 () Bool)

(declare-fun e!2670105 () Bool)

(declare-fun tp!1319550 () Bool)

(assert (=> b!4296450 (= e!2670105 tp!1319550)))

(declare-fun b!4296449 () Bool)

(declare-fun inv!63420 (IArray!28937) Bool)

(assert (=> b!4296449 (= e!2670106 (and (inv!63420 (xs!17744 (c!730963 localTotalInput!12))) e!2670105))))

(assert (=> b!4296360 (= tp!1319497 (and (inv!63414 (c!730963 localTotalInput!12)) e!2670106))))

(assert (= (and b!4296360 ((_ is Node!14438) (c!730963 localTotalInput!12))) b!4296448))

(assert (= b!4296449 b!4296450))

(assert (= (and b!4296360 ((_ is Leaf!22338) (c!730963 localTotalInput!12))) b!4296449))

(declare-fun m!4888857 () Bool)

(assert (=> b!4296448 m!4888857))

(declare-fun m!4888859 () Bool)

(assert (=> b!4296448 m!4888859))

(declare-fun m!4888861 () Bool)

(assert (=> b!4296449 m!4888861))

(assert (=> b!4296360 m!4888794))

(declare-fun b!4296455 () Bool)

(declare-fun e!2670109 () Bool)

(declare-fun tp!1319556 () Bool)

(declare-fun tp!1319557 () Bool)

(assert (=> b!4296455 (= e!2670109 (and tp!1319556 tp!1319557))))

(assert (=> b!4296352 (= tp!1319496 e!2670109)))

(assert (= (and b!4296352 ((_ is Cons!47857) (exprs!3387 setElem!26776))) b!4296455))

(declare-fun e!2670111 () Bool)

(declare-fun tp!1319558 () Bool)

(declare-fun tp!1319560 () Bool)

(declare-fun b!4296456 () Bool)

(assert (=> b!4296456 (= e!2670111 (and (inv!63414 (left!35495 (c!730963 (totalInput!4416 thiss!29019)))) tp!1319560 (inv!63414 (right!35825 (c!730963 (totalInput!4416 thiss!29019)))) tp!1319558))))

(declare-fun b!4296458 () Bool)

(declare-fun e!2670110 () Bool)

(declare-fun tp!1319559 () Bool)

(assert (=> b!4296458 (= e!2670110 tp!1319559)))

(declare-fun b!4296457 () Bool)

(assert (=> b!4296457 (= e!2670111 (and (inv!63420 (xs!17744 (c!730963 (totalInput!4416 thiss!29019)))) e!2670110))))

(assert (=> b!4296355 (= tp!1319504 (and (inv!63414 (c!730963 (totalInput!4416 thiss!29019))) e!2670111))))

(assert (= (and b!4296355 ((_ is Node!14438) (c!730963 (totalInput!4416 thiss!29019)))) b!4296456))

(assert (= b!4296457 b!4296458))

(assert (= (and b!4296355 ((_ is Leaf!22338) (c!730963 (totalInput!4416 thiss!29019)))) b!4296457))

(declare-fun m!4888863 () Bool)

(assert (=> b!4296456 m!4888863))

(declare-fun m!4888865 () Bool)

(assert (=> b!4296456 m!4888865))

(declare-fun m!4888867 () Bool)

(assert (=> b!4296457 m!4888867))

(assert (=> b!4296355 m!4888784))

(declare-fun tp!1319561 () Bool)

(declare-fun setElem!26788 () Context!5774)

(declare-fun e!2670113 () Bool)

(declare-fun setNonEmpty!26788 () Bool)

(declare-fun setRes!26788 () Bool)

(assert (=> setNonEmpty!26788 (= setRes!26788 (and tp!1319561 (inv!63417 setElem!26788) e!2670113))))

(declare-fun setRest!26788 () (InoxSet Context!5774))

(assert (=> setNonEmpty!26788 (= (_1!26105 (_1!26106 (h!53278 mapDefault!20130))) ((_ map or) (store ((as const (Array Context!5774 Bool)) false) setElem!26788 true) setRest!26788))))

(declare-fun b!4296459 () Bool)

(declare-fun e!2670112 () Bool)

(declare-fun tp!1319563 () Bool)

(assert (=> b!4296459 (= e!2670112 (and setRes!26788 tp!1319563))))

(declare-fun condSetEmpty!26788 () Bool)

(assert (=> b!4296459 (= condSetEmpty!26788 (= (_1!26105 (_1!26106 (h!53278 mapDefault!20130))) ((as const (Array Context!5774 Bool)) false)))))

(declare-fun b!4296460 () Bool)

(declare-fun tp!1319562 () Bool)

(assert (=> b!4296460 (= e!2670113 tp!1319562)))

(assert (=> b!4296361 (= tp!1319503 e!2670112)))

(declare-fun setIsEmpty!26788 () Bool)

(assert (=> setIsEmpty!26788 setRes!26788))

(assert (= (and b!4296459 condSetEmpty!26788) setIsEmpty!26788))

(assert (= (and b!4296459 (not condSetEmpty!26788)) setNonEmpty!26788))

(assert (= setNonEmpty!26788 b!4296460))

(assert (= (and b!4296361 ((_ is Cons!47858) mapDefault!20130)) b!4296459))

(declare-fun m!4888869 () Bool)

(assert (=> setNonEmpty!26788 m!4888869))

(declare-fun condSetEmpty!26791 () Bool)

(assert (=> setNonEmpty!26776 (= condSetEmpty!26791 (= setRest!26776 ((as const (Array Context!5774 Bool)) false)))))

(declare-fun setRes!26791 () Bool)

(assert (=> setNonEmpty!26776 (= tp!1319506 setRes!26791)))

(declare-fun setIsEmpty!26791 () Bool)

(assert (=> setIsEmpty!26791 setRes!26791))

(declare-fun setNonEmpty!26791 () Bool)

(declare-fun setElem!26791 () Context!5774)

(declare-fun e!2670116 () Bool)

(declare-fun tp!1319568 () Bool)

(assert (=> setNonEmpty!26791 (= setRes!26791 (and tp!1319568 (inv!63417 setElem!26791) e!2670116))))

(declare-fun setRest!26791 () (InoxSet Context!5774))

(assert (=> setNonEmpty!26791 (= setRest!26776 ((_ map or) (store ((as const (Array Context!5774 Bool)) false) setElem!26791 true) setRest!26791))))

(declare-fun b!4296465 () Bool)

(declare-fun tp!1319569 () Bool)

(assert (=> b!4296465 (= e!2670116 tp!1319569)))

(assert (= (and setNonEmpty!26776 condSetEmpty!26791) setIsEmpty!26791))

(assert (= (and setNonEmpty!26776 (not condSetEmpty!26791)) setNonEmpty!26791))

(assert (= setNonEmpty!26791 b!4296465))

(declare-fun m!4888871 () Bool)

(assert (=> setNonEmpty!26791 m!4888871))

(check-sat (not d!1266192) (not b!4296401) (not b!4296399) (not d!1266178) (not b!4296458) (not b!4296435) (not b_next!128495) (not mapNonEmpty!20133) (not b!4296413) (not d!1266188) (not d!1266176) (not b!4296455) (not b!4296424) (not b!4296375) (not b_next!128497) (not b!4296465) (not b!4296355) (not setNonEmpty!26782) (not b!4296459) (not setNonEmpty!26788) (not b!4296448) (not b!4296425) (not b!4296360) (not b!4296456) (not setNonEmpty!26785) (not b!4296437) b_and!339007 b_and!339009 (not b!4296400) (not b!4296374) (not setNonEmpty!26786) (not b!4296460) (not b!4296427) (not b!4296369) (not b!4296438) (not b!4296439) (not b!4296411) (not b!4296410) (not b!4296436) (not b!4296449) (not setNonEmpty!26791) (not b!4296457) (not d!1266194) (not b!4296426) (not setNonEmpty!26787) (not setNonEmpty!26781) (not b!4296434) (not b!4296408) (not b!4296450) (not b!4296397))
(check-sat b_and!339009 b_and!339007 (not b_next!128497) (not b_next!128495))
