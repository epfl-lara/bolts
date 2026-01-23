; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412396 () Bool)

(assert start!412396)

(declare-fun b!4295842 () Bool)

(declare-fun b_free!127775 () Bool)

(declare-fun b_next!128479 () Bool)

(assert (=> b!4295842 (= b_free!127775 (not b_next!128479))))

(declare-fun tp!1319248 () Bool)

(declare-fun b_and!338991 () Bool)

(assert (=> b!4295842 (= tp!1319248 b_and!338991)))

(declare-fun b!4295843 () Bool)

(declare-fun b_free!127777 () Bool)

(declare-fun b_next!128481 () Bool)

(assert (=> b!4295843 (= b_free!127777 (not b_next!128481))))

(declare-fun tp!1319245 () Bool)

(declare-fun b_and!338993 () Bool)

(assert (=> b!4295843 (= tp!1319245 b_and!338993)))

(declare-fun b!4295838 () Bool)

(assert (=> b!4295838 true))

(declare-fun b!4295833 () Bool)

(declare-fun res!1760823 () Bool)

(declare-fun e!2669661 () Bool)

(assert (=> b!4295833 (=> (not res!1760823) (not e!2669661))))

(declare-fun from!940 () Int)

(assert (=> b!4295833 (= res!1760823 (>= from!940 0))))

(declare-fun mapNonEmpty!20112 () Bool)

(declare-fun mapRes!20112 () Bool)

(declare-fun tp!1319247 () Bool)

(declare-fun tp!1319240 () Bool)

(assert (=> mapNonEmpty!20112 (= mapRes!20112 (and tp!1319247 tp!1319240))))

(declare-fun mapKey!20112 () (_ BitVec 32))

(declare-datatypes ((C!26184 0))(
  ( (C!26185 (val!15418 Int)) )
))
(declare-datatypes ((Regex!12993 0))(
  ( (ElementMatch!12993 (c!730886 C!26184)) (Concat!21312 (regOne!26498 Regex!12993) (regTwo!26498 Regex!12993)) (EmptyExpr!12993) (Star!12993 (reg!13322 Regex!12993)) (EmptyLang!12993) (Union!12993 (regOne!26499 Regex!12993) (regTwo!26499 Regex!12993)) )
))
(declare-datatypes ((List!47967 0))(
  ( (Nil!47843) (Cons!47843 (h!53263 Regex!12993) (t!354574 List!47967)) )
))
(declare-datatypes ((Context!5766 0))(
  ( (Context!5767 (exprs!3383 List!47967)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45618 0))(
  ( (tuple2!45619 (_1!26088 (InoxSet Context!5766)) (_2!26088 Int)) )
))
(declare-datatypes ((tuple2!45620 0))(
  ( (tuple2!45621 (_1!26089 tuple2!45618) (_2!26089 Int)) )
))
(declare-datatypes ((List!47968 0))(
  ( (Nil!47844) (Cons!47844 (h!53264 tuple2!45620) (t!354575 List!47968)) )
))
(declare-fun mapValue!20112 () List!47968)

(declare-datatypes ((array!15966 0))(
  ( (array!15967 (arr!7135 (Array (_ BitVec 32) (_ BitVec 64))) (size!35148 (_ BitVec 32))) )
))
(declare-datatypes ((array!15968 0))(
  ( (array!15969 (arr!7136 (Array (_ BitVec 32) List!47968)) (size!35149 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8950 0))(
  ( (LongMapFixedSize!8951 (defaultEntry!4860 Int) (mask!12941 (_ BitVec 32)) (extraKeys!4724 (_ BitVec 32)) (zeroValue!4734 List!47968) (minValue!4734 List!47968) (_size!8993 (_ BitVec 32)) (_keys!4775 array!15966) (_values!4756 array!15968) (_vacant!4536 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17709 0))(
  ( (Cell!17710 (v!41783 LongMapFixedSize!8950)) )
))
(declare-datatypes ((MutLongMap!4475 0))(
  ( (LongMap!4475 (underlying!9179 Cell!17709)) (MutLongMapExt!4474 (__x!29450 Int)) )
))
(declare-datatypes ((Cell!17711 0))(
  ( (Cell!17712 (v!41784 MutLongMap!4475)) )
))
(declare-datatypes ((Hashable!4391 0))(
  ( (HashableExt!4390 (__x!29451 Int)) )
))
(declare-datatypes ((MutableMap!4381 0))(
  ( (MutableMapExt!4380 (__x!29452 Int)) (HashMap!4381 (underlying!9180 Cell!17711) (hashF!6423 Hashable!4391) (_size!8994 (_ BitVec 32)) (defaultValue!4552 Int)) )
))
(declare-datatypes ((List!47969 0))(
  ( (Nil!47845) (Cons!47845 (h!53265 C!26184) (t!354576 List!47969)) )
))
(declare-datatypes ((IArray!28929 0))(
  ( (IArray!28930 (innerList!14522 List!47969)) )
))
(declare-datatypes ((Conc!14434 0))(
  ( (Node!14434 (left!35485 Conc!14434) (right!35815 Conc!14434) (csize!29098 Int) (cheight!14645 Int)) (Leaf!22332 (xs!17740 IArray!28929) (csize!29099 Int)) (Empty!14434) )
))
(declare-datatypes ((BalanceConc!28358 0))(
  ( (BalanceConc!28359 (c!730887 Conc!14434)) )
))
(declare-datatypes ((CacheFindLongestMatch!556 0))(
  ( (CacheFindLongestMatch!557 (cache!4521 MutableMap!4381) (totalInput!4408 BalanceConc!28358)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!556)

(declare-fun mapRest!20112 () (Array (_ BitVec 32) List!47968))

(assert (=> mapNonEmpty!20112 (= (arr!7136 (_values!4756 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))) (store mapRest!20112 mapKey!20112 mapValue!20112))))

(declare-fun b!4295834 () Bool)

(declare-fun e!2669668 () Bool)

(assert (=> b!4295834 (= e!2669661 e!2669668)))

(declare-fun res!1760822 () Bool)

(assert (=> b!4295834 (=> (not res!1760822) (not e!2669668))))

(declare-fun lt!1518169 () Int)

(assert (=> b!4295834 (= res!1760822 (<= from!940 lt!1518169))))

(declare-fun size!35150 (BalanceConc!28358) Int)

(assert (=> b!4295834 (= lt!1518169 (size!35150 (totalInput!4408 thiss!29019)))))

(declare-fun b!4295835 () Bool)

(declare-fun e!2669662 () Bool)

(declare-fun e!2669669 () Bool)

(assert (=> b!4295835 (= e!2669662 e!2669669)))

(declare-fun b!4295836 () Bool)

(declare-fun e!2669671 () Bool)

(assert (=> b!4295836 (= e!2669671 e!2669662)))

(declare-fun b!4295837 () Bool)

(declare-fun res!1760821 () Bool)

(assert (=> b!4295837 (=> (not res!1760821) (not e!2669661))))

(declare-fun validCacheMapFindLongestMatch!88 (MutableMap!4381 BalanceConc!28358) Bool)

(assert (=> b!4295837 (= res!1760821 (validCacheMapFindLongestMatch!88 (cache!4521 thiss!29019) (totalInput!4408 thiss!29019)))))

(declare-fun e!2669665 () Bool)

(assert (=> b!4295838 (= e!2669668 (not e!2669665))))

(declare-fun res!1760818 () Bool)

(assert (=> b!4295838 (=> res!1760818 e!2669665)))

(get-info :version)

(assert (=> b!4295838 (= res!1760818 (not ((_ is HashMap!4381) (cache!4521 thiss!29019))))))

(declare-fun res!14399 () Int)

(declare-fun lt!1518170 () tuple2!45618)

(declare-fun lambda!131694 () Int)

(declare-fun forall!8569 (List!47968 Int) Bool)

(declare-datatypes ((ListMap!1399 0))(
  ( (ListMap!1400 (toList!2137 List!47968)) )
))
(declare-fun map!9820 (MutableMap!4381) ListMap!1399)

(declare-datatypes ((tuple2!45622 0))(
  ( (tuple2!45623 (_1!26090 Bool) (_2!26090 MutableMap!4381)) )
))
(declare-fun update!289 (MutableMap!4381 tuple2!45618 Int) tuple2!45622)

(assert (=> b!4295838 (forall!8569 (toList!2137 (map!9820 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399)))) lambda!131694)))

(declare-datatypes ((Unit!66457 0))(
  ( (Unit!66458) )
))
(declare-fun lt!1518171 () Unit!66457)

(declare-fun lemmaUpdatePreservesForallPairs!40 (MutableMap!4381 tuple2!45618 Int Int) Unit!66457)

(assert (=> b!4295838 (= lt!1518171 (lemmaUpdatePreservesForallPairs!40 (cache!4521 thiss!29019) lt!1518170 res!14399 lambda!131694))))

(declare-fun z!500 () (InoxSet Context!5766))

(assert (=> b!4295838 (= lt!1518170 (tuple2!45619 z!500 from!940))))

(declare-fun b!4295839 () Bool)

(declare-fun e!2669667 () Bool)

(declare-fun tp!1319243 () Bool)

(assert (=> b!4295839 (= e!2669667 (and tp!1319243 mapRes!20112))))

(declare-fun condMapEmpty!20112 () Bool)

(declare-fun mapDefault!20112 () List!47968)

(assert (=> b!4295839 (= condMapEmpty!20112 (= (arr!7136 (_values!4756 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47968)) mapDefault!20112)))))

(declare-fun b!4295840 () Bool)

(declare-fun e!2669660 () Bool)

(declare-fun localTotalInput!12 () BalanceConc!28358)

(declare-fun tp!1319242 () Bool)

(declare-fun inv!63389 (Conc!14434) Bool)

(assert (=> b!4295840 (= e!2669660 (and (inv!63389 (c!730887 localTotalInput!12)) tp!1319242))))

(declare-fun mapIsEmpty!20112 () Bool)

(assert (=> mapIsEmpty!20112 mapRes!20112))

(declare-fun e!2669670 () Bool)

(declare-fun setNonEmpty!26734 () Bool)

(declare-fun tp!1319244 () Bool)

(declare-fun setElem!26734 () Context!5766)

(declare-fun setRes!26734 () Bool)

(declare-fun inv!63390 (Context!5766) Bool)

(assert (=> setNonEmpty!26734 (= setRes!26734 (and tp!1319244 (inv!63390 setElem!26734) e!2669670))))

(declare-fun setRest!26734 () (InoxSet Context!5766))

(assert (=> setNonEmpty!26734 (= z!500 ((_ map or) (store ((as const (Array Context!5766 Bool)) false) setElem!26734 true) setRest!26734))))

(declare-fun e!2669663 () Bool)

(declare-fun e!2669672 () Bool)

(declare-fun e!2669664 () Bool)

(declare-fun b!4295841 () Bool)

(declare-fun inv!63391 (BalanceConc!28358) Bool)

(assert (=> b!4295841 (= e!2669672 (and e!2669664 (inv!63391 (totalInput!4408 thiss!29019)) e!2669663))))

(declare-fun setIsEmpty!26734 () Bool)

(assert (=> setIsEmpty!26734 setRes!26734))

(declare-fun e!2669666 () Bool)

(assert (=> b!4295842 (= e!2669664 (and e!2669666 tp!1319248))))

(declare-fun tp!1319238 () Bool)

(declare-fun tp!1319246 () Bool)

(declare-fun array_inv!5113 (array!15966) Bool)

(declare-fun array_inv!5114 (array!15968) Bool)

(assert (=> b!4295843 (= e!2669669 (and tp!1319245 tp!1319238 tp!1319246 (array_inv!5113 (_keys!4775 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))) (array_inv!5114 (_values!4756 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))) e!2669667))))

(declare-fun b!4295844 () Bool)

(declare-fun valid!3452 (MutableMap!4381) Bool)

(assert (=> b!4295844 (= e!2669665 (valid!3452 (cache!4521 thiss!29019)))))

(declare-fun b!4295845 () Bool)

(declare-fun res!1760819 () Bool)

(assert (=> b!4295845 (=> (not res!1760819) (not e!2669668))))

(declare-fun findLongestMatchInnerZipperFastV2!47 ((InoxSet Context!5766) Int BalanceConc!28358 Int) Int)

(assert (=> b!4295845 (= res!1760819 (= res!14399 (findLongestMatchInnerZipperFastV2!47 z!500 from!940 (totalInput!4408 thiss!29019) lt!1518169)))))

(declare-fun b!4295846 () Bool)

(declare-fun tp!1319241 () Bool)

(assert (=> b!4295846 (= e!2669663 (and (inv!63389 (c!730887 (totalInput!4408 thiss!29019))) tp!1319241))))

(declare-fun b!4295847 () Bool)

(declare-fun lt!1518168 () MutLongMap!4475)

(assert (=> b!4295847 (= e!2669666 (and e!2669671 ((_ is LongMap!4475) lt!1518168)))))

(assert (=> b!4295847 (= lt!1518168 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))

(declare-fun b!4295848 () Bool)

(declare-fun tp!1319239 () Bool)

(assert (=> b!4295848 (= e!2669670 tp!1319239)))

(declare-fun res!1760820 () Bool)

(assert (=> start!412396 (=> (not res!1760820) (not e!2669661))))

(assert (=> start!412396 (= res!1760820 (= localTotalInput!12 (totalInput!4408 thiss!29019)))))

(assert (=> start!412396 e!2669661))

(declare-fun condSetEmpty!26734 () Bool)

(assert (=> start!412396 (= condSetEmpty!26734 (= z!500 ((as const (Array Context!5766 Bool)) false)))))

(assert (=> start!412396 setRes!26734))

(assert (=> start!412396 true))

(declare-fun inv!63392 (CacheFindLongestMatch!556) Bool)

(assert (=> start!412396 (and (inv!63392 thiss!29019) e!2669672)))

(assert (=> start!412396 (and (inv!63391 localTotalInput!12) e!2669660)))

(assert (= (and start!412396 res!1760820) b!4295837))

(assert (= (and b!4295837 res!1760821) b!4295833))

(assert (= (and b!4295833 res!1760823) b!4295834))

(assert (= (and b!4295834 res!1760822) b!4295845))

(assert (= (and b!4295845 res!1760819) b!4295838))

(assert (= (and b!4295838 (not res!1760818)) b!4295844))

(assert (= (and start!412396 condSetEmpty!26734) setIsEmpty!26734))

(assert (= (and start!412396 (not condSetEmpty!26734)) setNonEmpty!26734))

(assert (= setNonEmpty!26734 b!4295848))

(assert (= (and b!4295839 condMapEmpty!20112) mapIsEmpty!20112))

(assert (= (and b!4295839 (not condMapEmpty!20112)) mapNonEmpty!20112))

(assert (= b!4295843 b!4295839))

(assert (= b!4295835 b!4295843))

(assert (= b!4295836 b!4295835))

(assert (= (and b!4295847 ((_ is LongMap!4475) (v!41784 (underlying!9180 (cache!4521 thiss!29019))))) b!4295836))

(assert (= b!4295842 b!4295847))

(assert (= (and b!4295841 ((_ is HashMap!4381) (cache!4521 thiss!29019))) b!4295842))

(assert (= b!4295841 b!4295846))

(assert (= start!412396 b!4295841))

(assert (= start!412396 b!4295840))

(declare-fun m!4888310 () Bool)

(assert (=> mapNonEmpty!20112 m!4888310))

(declare-fun m!4888312 () Bool)

(assert (=> b!4295834 m!4888312))

(declare-fun m!4888314 () Bool)

(assert (=> b!4295845 m!4888314))

(declare-fun m!4888316 () Bool)

(assert (=> b!4295846 m!4888316))

(declare-fun m!4888318 () Bool)

(assert (=> b!4295838 m!4888318))

(declare-fun m!4888320 () Bool)

(assert (=> b!4295838 m!4888320))

(declare-fun m!4888322 () Bool)

(assert (=> b!4295838 m!4888322))

(declare-fun m!4888324 () Bool)

(assert (=> b!4295838 m!4888324))

(declare-fun m!4888326 () Bool)

(assert (=> b!4295843 m!4888326))

(declare-fun m!4888328 () Bool)

(assert (=> b!4295843 m!4888328))

(declare-fun m!4888330 () Bool)

(assert (=> b!4295844 m!4888330))

(declare-fun m!4888332 () Bool)

(assert (=> b!4295841 m!4888332))

(declare-fun m!4888334 () Bool)

(assert (=> b!4295840 m!4888334))

(declare-fun m!4888336 () Bool)

(assert (=> start!412396 m!4888336))

(declare-fun m!4888338 () Bool)

(assert (=> start!412396 m!4888338))

(declare-fun m!4888340 () Bool)

(assert (=> setNonEmpty!26734 m!4888340))

(declare-fun m!4888342 () Bool)

(assert (=> b!4295837 m!4888342))

(check-sat (not b!4295848) (not b!4295839) (not mapNonEmpty!20112) (not b_next!128479) (not b!4295841) (not b!4295840) (not b!4295843) b_and!338991 (not b!4295846) (not b!4295838) (not setNonEmpty!26734) (not b!4295845) b_and!338993 (not start!412396) (not b_next!128481) (not b!4295837) (not b!4295834) (not b!4295844))
(check-sat b_and!338991 b_and!338993 (not b_next!128479) (not b_next!128481))
(get-model)

(declare-fun d!1266106 () Bool)

(assert (=> d!1266106 (= (array_inv!5113 (_keys!4775 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))) (bvsge (size!35148 (_keys!4775 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4295843 d!1266106))

(declare-fun d!1266108 () Bool)

(assert (=> d!1266108 (= (array_inv!5114 (_values!4756 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))) (bvsge (size!35149 (_values!4756 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4295843 d!1266108))

(declare-fun d!1266110 () Bool)

(declare-fun res!1760828 () Bool)

(declare-fun e!2669675 () Bool)

(assert (=> d!1266110 (=> (not res!1760828) (not e!2669675))))

(declare-fun valid!3453 (MutLongMap!4475) Bool)

(assert (=> d!1266110 (= res!1760828 (valid!3453 (v!41784 (underlying!9180 (cache!4521 thiss!29019)))))))

(assert (=> d!1266110 (= (valid!3452 (cache!4521 thiss!29019)) e!2669675)))

(declare-fun b!4295855 () Bool)

(declare-fun res!1760829 () Bool)

(assert (=> b!4295855 (=> (not res!1760829) (not e!2669675))))

(declare-fun lambda!131697 () Int)

(declare-datatypes ((tuple2!45624 0))(
  ( (tuple2!45625 (_1!26091 (_ BitVec 64)) (_2!26091 List!47968)) )
))
(declare-datatypes ((List!47970 0))(
  ( (Nil!47846) (Cons!47846 (h!53266 tuple2!45624) (t!354577 List!47970)) )
))
(declare-fun forall!8570 (List!47970 Int) Bool)

(declare-datatypes ((ListLongMap!769 0))(
  ( (ListLongMap!770 (toList!2138 List!47970)) )
))
(declare-fun map!9821 (MutLongMap!4475) ListLongMap!769)

(assert (=> b!4295855 (= res!1760829 (forall!8570 (toList!2138 (map!9821 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))) lambda!131697))))

(declare-fun b!4295856 () Bool)

(declare-fun allKeysSameHashInMap!253 (ListLongMap!769 Hashable!4391) Bool)

(assert (=> b!4295856 (= e!2669675 (allKeysSameHashInMap!253 (map!9821 (v!41784 (underlying!9180 (cache!4521 thiss!29019)))) (hashF!6423 (cache!4521 thiss!29019))))))

(assert (= (and d!1266110 res!1760828) b!4295855))

(assert (= (and b!4295855 res!1760829) b!4295856))

(declare-fun m!4888344 () Bool)

(assert (=> d!1266110 m!4888344))

(declare-fun m!4888346 () Bool)

(assert (=> b!4295855 m!4888346))

(declare-fun m!4888348 () Bool)

(assert (=> b!4295855 m!4888348))

(assert (=> b!4295856 m!4888346))

(assert (=> b!4295856 m!4888346))

(declare-fun m!4888350 () Bool)

(assert (=> b!4295856 m!4888350))

(assert (=> b!4295844 d!1266110))

(declare-fun d!1266112 () Bool)

(declare-fun lt!1518174 () Int)

(declare-fun size!35151 (List!47969) Int)

(declare-fun list!17367 (BalanceConc!28358) List!47969)

(assert (=> d!1266112 (= lt!1518174 (size!35151 (list!17367 (totalInput!4408 thiss!29019))))))

(declare-fun size!35152 (Conc!14434) Int)

(assert (=> d!1266112 (= lt!1518174 (size!35152 (c!730887 (totalInput!4408 thiss!29019))))))

(assert (=> d!1266112 (= (size!35150 (totalInput!4408 thiss!29019)) lt!1518174)))

(declare-fun bs!603787 () Bool)

(assert (= bs!603787 d!1266112))

(declare-fun m!4888352 () Bool)

(assert (=> bs!603787 m!4888352))

(assert (=> bs!603787 m!4888352))

(declare-fun m!4888354 () Bool)

(assert (=> bs!603787 m!4888354))

(declare-fun m!4888356 () Bool)

(assert (=> bs!603787 m!4888356))

(assert (=> b!4295834 d!1266112))

(declare-fun d!1266114 () Bool)

(declare-fun c!730890 () Bool)

(assert (=> d!1266114 (= c!730890 ((_ is Node!14434) (c!730887 localTotalInput!12)))))

(declare-fun e!2669680 () Bool)

(assert (=> d!1266114 (= (inv!63389 (c!730887 localTotalInput!12)) e!2669680)))

(declare-fun b!4295863 () Bool)

(declare-fun inv!63393 (Conc!14434) Bool)

(assert (=> b!4295863 (= e!2669680 (inv!63393 (c!730887 localTotalInput!12)))))

(declare-fun b!4295864 () Bool)

(declare-fun e!2669681 () Bool)

(assert (=> b!4295864 (= e!2669680 e!2669681)))

(declare-fun res!1760832 () Bool)

(assert (=> b!4295864 (= res!1760832 (not ((_ is Leaf!22332) (c!730887 localTotalInput!12))))))

(assert (=> b!4295864 (=> res!1760832 e!2669681)))

(declare-fun b!4295865 () Bool)

(declare-fun inv!63394 (Conc!14434) Bool)

(assert (=> b!4295865 (= e!2669681 (inv!63394 (c!730887 localTotalInput!12)))))

(assert (= (and d!1266114 c!730890) b!4295863))

(assert (= (and d!1266114 (not c!730890)) b!4295864))

(assert (= (and b!4295864 (not res!1760832)) b!4295865))

(declare-fun m!4888358 () Bool)

(assert (=> b!4295863 m!4888358))

(declare-fun m!4888360 () Bool)

(assert (=> b!4295865 m!4888360))

(assert (=> b!4295840 d!1266114))

(declare-fun d!1266116 () Bool)

(declare-fun c!730891 () Bool)

(assert (=> d!1266116 (= c!730891 ((_ is Node!14434) (c!730887 (totalInput!4408 thiss!29019))))))

(declare-fun e!2669682 () Bool)

(assert (=> d!1266116 (= (inv!63389 (c!730887 (totalInput!4408 thiss!29019))) e!2669682)))

(declare-fun b!4295866 () Bool)

(assert (=> b!4295866 (= e!2669682 (inv!63393 (c!730887 (totalInput!4408 thiss!29019))))))

(declare-fun b!4295867 () Bool)

(declare-fun e!2669683 () Bool)

(assert (=> b!4295867 (= e!2669682 e!2669683)))

(declare-fun res!1760833 () Bool)

(assert (=> b!4295867 (= res!1760833 (not ((_ is Leaf!22332) (c!730887 (totalInput!4408 thiss!29019)))))))

(assert (=> b!4295867 (=> res!1760833 e!2669683)))

(declare-fun b!4295868 () Bool)

(assert (=> b!4295868 (= e!2669683 (inv!63394 (c!730887 (totalInput!4408 thiss!29019))))))

(assert (= (and d!1266116 c!730891) b!4295866))

(assert (= (and d!1266116 (not c!730891)) b!4295867))

(assert (= (and b!4295867 (not res!1760833)) b!4295868))

(declare-fun m!4888362 () Bool)

(assert (=> b!4295866 m!4888362))

(declare-fun m!4888364 () Bool)

(assert (=> b!4295868 m!4888364))

(assert (=> b!4295846 d!1266116))

(declare-fun d!1266118 () Bool)

(declare-fun res!1760838 () Bool)

(declare-fun e!2669688 () Bool)

(assert (=> d!1266118 (=> res!1760838 e!2669688)))

(assert (=> d!1266118 (= res!1760838 ((_ is Nil!47844) (toList!2137 (map!9820 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399))))))))

(assert (=> d!1266118 (= (forall!8569 (toList!2137 (map!9820 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399)))) lambda!131694) e!2669688)))

(declare-fun b!4295873 () Bool)

(declare-fun e!2669689 () Bool)

(assert (=> b!4295873 (= e!2669688 e!2669689)))

(declare-fun res!1760839 () Bool)

(assert (=> b!4295873 (=> (not res!1760839) (not e!2669689))))

(declare-fun dynLambda!20329 (Int tuple2!45620) Bool)

(assert (=> b!4295873 (= res!1760839 (dynLambda!20329 lambda!131694 (h!53264 (toList!2137 (map!9820 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399)))))))))

(declare-fun b!4295874 () Bool)

(assert (=> b!4295874 (= e!2669689 (forall!8569 (t!354575 (toList!2137 (map!9820 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399))))) lambda!131694))))

(assert (= (and d!1266118 (not res!1760838)) b!4295873))

(assert (= (and b!4295873 res!1760839) b!4295874))

(declare-fun b_lambda!126125 () Bool)

(assert (=> (not b_lambda!126125) (not b!4295873)))

(declare-fun m!4888366 () Bool)

(assert (=> b!4295873 m!4888366))

(declare-fun m!4888368 () Bool)

(assert (=> b!4295874 m!4888368))

(assert (=> b!4295838 d!1266118))

(declare-fun d!1266120 () Bool)

(declare-fun lt!1518177 () ListMap!1399)

(declare-fun invariantList!518 (List!47968) Bool)

(assert (=> d!1266120 (invariantList!518 (toList!2137 lt!1518177))))

(declare-fun extractMap!254 (List!47970) ListMap!1399)

(assert (=> d!1266120 (= lt!1518177 (extractMap!254 (toList!2138 (map!9821 (v!41784 (underlying!9180 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399))))))))))

(assert (=> d!1266120 (valid!3452 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399)))))

(assert (=> d!1266120 (= (map!9820 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399))) lt!1518177)))

(declare-fun bs!603788 () Bool)

(assert (= bs!603788 d!1266120))

(declare-fun m!4888370 () Bool)

(assert (=> bs!603788 m!4888370))

(declare-fun m!4888372 () Bool)

(assert (=> bs!603788 m!4888372))

(declare-fun m!4888374 () Bool)

(assert (=> bs!603788 m!4888374))

(declare-fun m!4888376 () Bool)

(assert (=> bs!603788 m!4888376))

(assert (=> b!4295838 d!1266120))

(declare-fun bs!603789 () Bool)

(declare-fun b!4295931 () Bool)

(assert (= bs!603789 (and b!4295931 b!4295855)))

(declare-fun lambda!131706 () Int)

(assert (=> bs!603789 (= lambda!131706 lambda!131697)))

(declare-fun bs!603790 () Bool)

(declare-fun b!4295930 () Bool)

(assert (= bs!603790 (and b!4295930 b!4295855)))

(declare-fun lambda!131707 () Int)

(assert (=> bs!603790 (= lambda!131707 lambda!131697)))

(declare-fun bs!603791 () Bool)

(assert (= bs!603791 (and b!4295930 b!4295931)))

(assert (=> bs!603791 (= lambda!131707 lambda!131706)))

(declare-fun bm!294682 () Bool)

(declare-fun call!294697 () ListMap!1399)

(declare-fun call!294701 () ListLongMap!769)

(assert (=> bm!294682 (= call!294697 (extractMap!254 (toList!2138 call!294701)))))

(declare-fun b!4295913 () Bool)

(declare-fun e!2669720 () Bool)

(declare-fun call!294696 () Bool)

(assert (=> b!4295913 (= e!2669720 call!294696)))

(declare-fun c!730907 () Bool)

(declare-fun lt!1518311 () (_ BitVec 64))

(declare-fun lt!1518317 () (_ BitVec 64))

(declare-fun call!294690 () List!47968)

(declare-fun bm!294683 () Bool)

(declare-fun apply!10854 (MutLongMap!4475 (_ BitVec 64)) List!47968)

(assert (=> bm!294683 (= call!294690 (apply!10854 (v!41784 (underlying!9180 (cache!4521 thiss!29019))) (ite c!730907 lt!1518317 lt!1518311)))))

(declare-fun lt!1518340 () MutableMap!4381)

(declare-fun call!294703 () ListMap!1399)

(declare-fun lt!1518312 () MutableMap!4381)

(declare-fun bm!294684 () Bool)

(assert (=> bm!294684 (= call!294703 (map!9820 (ite c!730907 lt!1518340 lt!1518312)))))

(declare-fun bm!294685 () Bool)

(declare-fun call!294691 () ListMap!1399)

(declare-fun e!2669719 () ListMap!1399)

(declare-fun eq!81 (ListMap!1399 ListMap!1399) Bool)

(assert (=> bm!294685 (= call!294696 (eq!81 call!294691 e!2669719))))

(declare-fun c!730909 () Bool)

(declare-fun c!730908 () Bool)

(assert (=> bm!294685 (= c!730909 c!730908)))

(declare-fun lt!1518308 () ListLongMap!769)

(declare-fun call!294695 () Bool)

(declare-fun bm!294686 () Bool)

(declare-fun lt!1518326 () ListLongMap!769)

(assert (=> bm!294686 (= call!294695 (forall!8570 (ite c!730907 (toList!2138 lt!1518308) (toList!2138 lt!1518326)) (ite c!730907 lambda!131706 lambda!131707)))))

(declare-fun lt!1518292 () ListMap!1399)

(declare-fun lt!1518289 () ListMap!1399)

(declare-fun bm!294687 () Bool)

(declare-fun call!294711 () Bool)

(declare-fun contains!9799 (ListMap!1399 tuple2!45618) Bool)

(assert (=> bm!294687 (= call!294711 (contains!9799 (ite c!730907 lt!1518292 lt!1518289) lt!1518170))))

(declare-fun bm!294688 () Bool)

(declare-fun call!294708 () ListLongMap!769)

(declare-datatypes ((tuple2!45626 0))(
  ( (tuple2!45627 (_1!26092 Bool) (_2!26092 MutLongMap!4475)) )
))
(declare-fun lt!1518297 () tuple2!45626)

(declare-fun lt!1518341 () tuple2!45626)

(assert (=> bm!294688 (= call!294708 (map!9821 (ite c!730907 (_2!26092 lt!1518297) (_2!26092 lt!1518341))))))

(declare-fun lt!1518314 () List!47968)

(declare-fun call!294716 () List!47968)

(declare-fun lt!1518293 () List!47968)

(declare-fun bm!294689 () Bool)

(declare-fun removePairForKey!125 (List!47968 tuple2!45618) List!47968)

(assert (=> bm!294689 (= call!294716 (removePairForKey!125 (ite c!730907 lt!1518314 lt!1518293) lt!1518170))))

(declare-fun bm!294690 () Bool)

(declare-fun lt!1518310 () List!47968)

(declare-fun lt!1518298 () List!47968)

(declare-fun call!294704 () tuple2!45626)

(declare-fun update!290 (MutLongMap!4475 (_ BitVec 64) List!47968) tuple2!45626)

(assert (=> bm!294690 (= call!294704 (update!290 (v!41784 (underlying!9180 (cache!4521 thiss!29019))) (ite c!730907 lt!1518317 lt!1518311) (ite c!730907 lt!1518298 lt!1518310)))))

(declare-fun b!4295914 () Bool)

(declare-fun call!294717 () ListMap!1399)

(declare-fun lt!1518332 () ListMap!1399)

(assert (=> b!4295914 (= call!294717 lt!1518332)))

(declare-fun lt!1518338 () Unit!66457)

(declare-fun Unit!66459 () Unit!66457)

(assert (=> b!4295914 (= lt!1518338 Unit!66459)))

(declare-fun call!294698 () Bool)

(assert (=> b!4295914 call!294698))

(declare-fun e!2669716 () Unit!66457)

(declare-fun Unit!66460 () Unit!66457)

(assert (=> b!4295914 (= e!2669716 Unit!66460)))

(declare-fun b!4295915 () Bool)

(declare-fun e!2669721 () Bool)

(declare-fun e!2669722 () Bool)

(assert (=> b!4295915 (= e!2669721 e!2669722)))

(declare-fun lt!1518339 () tuple2!45622)

(assert (=> b!4295915 (= c!730908 (_1!26090 lt!1518339))))

(declare-fun b!4295916 () Bool)

(declare-fun e!2669713 () Unit!66457)

(declare-fun Unit!66461 () Unit!66457)

(assert (=> b!4295916 (= e!2669713 Unit!66461)))

(declare-fun b!4295917 () Bool)

(declare-fun call!294715 () ListMap!1399)

(assert (=> b!4295917 (= call!294715 lt!1518332)))

(declare-fun lt!1518335 () Unit!66457)

(declare-fun Unit!66462 () Unit!66457)

(assert (=> b!4295917 (= lt!1518335 Unit!66462)))

(assert (=> b!4295917 call!294698))

(declare-fun e!2669717 () Unit!66457)

(declare-fun Unit!66463 () Unit!66457)

(assert (=> b!4295917 (= e!2669717 Unit!66463)))

(declare-fun call!294714 () Bool)

(declare-fun bm!294691 () Bool)

(assert (=> bm!294691 (= call!294714 (forall!8570 (toList!2138 call!294708) (ite c!730907 lambda!131706 lambda!131707)))))

(declare-fun bm!294692 () Bool)

(declare-fun call!294689 () (_ BitVec 64))

(declare-fun hash!824 (Hashable!4391 tuple2!45618) (_ BitVec 64))

(assert (=> bm!294692 (= call!294689 (hash!824 (hashF!6423 (cache!4521 thiss!29019)) lt!1518170))))

(declare-fun bm!294693 () Bool)

(declare-fun call!294713 () ListMap!1399)

(declare-fun call!294709 () Bool)

(assert (=> bm!294693 (= call!294709 (eq!81 (ite c!730907 call!294715 call!294717) call!294713))))

(declare-fun lt!1518328 () ListLongMap!769)

(declare-fun bm!294694 () Bool)

(declare-fun +!131 (ListLongMap!769 tuple2!45624) ListLongMap!769)

(assert (=> bm!294694 (= call!294701 (+!131 lt!1518328 (ite c!730907 (tuple2!45625 lt!1518317 lt!1518298) (tuple2!45625 lt!1518311 lt!1518310))))))

(declare-fun bm!294695 () Bool)

(declare-fun call!294692 () ListMap!1399)

(assert (=> bm!294695 (= call!294692 (map!9820 (cache!4521 thiss!29019)))))

(declare-fun bm!294696 () Bool)

(declare-fun call!294707 () ListMap!1399)

(declare-fun call!294699 () ListMap!1399)

(declare-fun +!132 (ListMap!1399 tuple2!45620) ListMap!1399)

(assert (=> bm!294696 (= call!294699 (+!132 call!294707 (tuple2!45621 lt!1518170 res!14399)))))

(declare-fun call!294687 () Bool)

(declare-fun bm!294697 () Bool)

(assert (=> bm!294697 (= call!294687 (allKeysSameHashInMap!253 (ite c!730907 lt!1518308 lt!1518326) (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun bm!294698 () Bool)

(assert (=> bm!294698 (= call!294713 (+!132 lt!1518332 (tuple2!45621 lt!1518170 res!14399)))))

(declare-fun b!4295918 () Bool)

(declare-fun e!2669718 () Bool)

(assert (=> b!4295918 (= e!2669718 call!294687)))

(declare-fun b!4295919 () Bool)

(assert (=> b!4295919 (= e!2669722 e!2669720)))

(declare-fun res!1760854 () Bool)

(assert (=> b!4295919 (= res!1760854 (contains!9799 call!294691 lt!1518170))))

(assert (=> b!4295919 (=> (not res!1760854) (not e!2669720))))

(declare-fun bm!294699 () Bool)

(assert (=> bm!294699 (= call!294707 (extractMap!254 (toList!2138 lt!1518328)))))

(declare-fun bm!294700 () Bool)

(declare-fun call!294710 () Bool)

(assert (=> bm!294700 (= call!294710 (allKeysSameHashInMap!253 call!294708 (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun call!294688 () Unit!66457)

(declare-fun bm!294701 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!86 (ListLongMap!769 (_ BitVec 64) List!47968 Hashable!4391) Unit!66457)

(assert (=> bm!294701 (= call!294688 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!86 lt!1518328 (ite c!730907 lt!1518317 lt!1518311) (ite c!730907 lt!1518298 lt!1518310) (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun b!4295920 () Bool)

(assert (=> b!4295920 (= e!2669719 call!294692)))

(declare-fun bm!294702 () Bool)

(declare-fun call!294694 () Bool)

(declare-fun allKeysSameHash!108 (List!47968 (_ BitVec 64) Hashable!4391) Bool)

(assert (=> bm!294702 (= call!294694 (allKeysSameHash!108 call!294716 (ite c!730907 lt!1518317 lt!1518311) (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun bm!294703 () Bool)

(declare-fun call!294706 () Unit!66457)

(declare-fun lemmaRemovePairForKeyPreservesHash!95 (List!47968 tuple2!45618 (_ BitVec 64) Hashable!4391) Unit!66457)

(assert (=> bm!294703 (= call!294706 (lemmaRemovePairForKeyPreservesHash!95 (ite c!730907 lt!1518314 lt!1518293) lt!1518170 (ite c!730907 lt!1518317 lt!1518311) (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun d!1266122 () Bool)

(assert (=> d!1266122 e!2669721))

(declare-fun res!1760851 () Bool)

(assert (=> d!1266122 (=> (not res!1760851) (not e!2669721))))

(assert (=> d!1266122 (= res!1760851 ((_ is HashMap!4381) (_2!26090 lt!1518339)))))

(declare-fun lt!1518307 () tuple2!45622)

(assert (=> d!1266122 (= lt!1518339 (tuple2!45623 (_1!26090 lt!1518307) (_2!26090 lt!1518307)))))

(declare-fun e!2669712 () tuple2!45622)

(assert (=> d!1266122 (= lt!1518307 e!2669712)))

(declare-fun contains!9800 (MutableMap!4381 tuple2!45618) Bool)

(assert (=> d!1266122 (= c!730907 (contains!9800 (cache!4521 thiss!29019) lt!1518170))))

(assert (=> d!1266122 (= lt!1518328 (map!9821 (v!41784 (underlying!9180 (cache!4521 thiss!29019)))))))

(assert (=> d!1266122 (= lt!1518332 (map!9820 (cache!4521 thiss!29019)))))

(assert (=> d!1266122 (valid!3452 (cache!4521 thiss!29019))))

(assert (=> d!1266122 (= (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399) lt!1518339)))

(declare-fun b!4295921 () Bool)

(declare-fun e!2669714 () Bool)

(assert (=> b!4295921 (= e!2669714 call!294687)))

(declare-fun call!294693 () Unit!66457)

(declare-fun bm!294704 () Bool)

(declare-fun lt!1518302 () ListMap!1399)

(declare-fun lt!1518305 () ListMap!1399)

(declare-fun lemmaEquivalentThenSameContains!20 (ListMap!1399 ListMap!1399 tuple2!45618) Unit!66457)

(assert (=> bm!294704 (= call!294693 (lemmaEquivalentThenSameContains!20 (ite c!730907 lt!1518292 lt!1518289) (ite c!730907 lt!1518305 lt!1518302) lt!1518170))))

(declare-fun b!4295922 () Bool)

(assert (=> b!4295922 (= e!2669722 call!294696)))

(declare-fun b!4295923 () Bool)

(declare-fun e!2669715 () List!47968)

(assert (=> b!4295923 (= e!2669715 call!294690)))

(declare-fun bm!294705 () Bool)

(assert (=> bm!294705 (= call!294717 call!294703)))

(declare-fun b!4295924 () Bool)

(declare-fun lt!1518290 () Unit!66457)

(assert (=> b!4295924 (= e!2669713 lt!1518290)))

(declare-fun lt!1518323 () Unit!66457)

(declare-fun call!294705 () Unit!66457)

(assert (=> b!4295924 (= lt!1518323 call!294705)))

(declare-fun call!294702 () Bool)

(assert (=> b!4295924 call!294702))

(declare-fun lt!1518296 () Unit!66457)

(assert (=> b!4295924 (= lt!1518296 lt!1518323)))

(assert (=> b!4295924 (= lt!1518290 call!294706)))

(assert (=> b!4295924 call!294694))

(declare-fun bm!294706 () Bool)

(declare-fun call!294700 () Bool)

(assert (=> bm!294706 (= call!294700 (contains!9799 (ite c!730907 lt!1518305 call!294717) lt!1518170))))

(declare-fun b!4295925 () Bool)

(assert (=> b!4295925 (= e!2669715 Nil!47844)))

(declare-fun bm!294707 () Bool)

(assert (=> bm!294707 (= call!294715 call!294703)))

(declare-fun bm!294708 () Bool)

(assert (=> bm!294708 (= call!294691 (map!9820 (_2!26090 lt!1518339)))))

(declare-fun bm!294709 () Bool)

(assert (=> bm!294709 (= call!294698 (valid!3452 (ite c!730907 lt!1518340 lt!1518312)))))

(declare-fun b!4295926 () Bool)

(assert (=> b!4295926 (= e!2669719 (+!132 call!294692 (tuple2!45621 lt!1518170 res!14399)))))

(declare-fun b!4295927 () Bool)

(declare-datatypes ((tuple2!45628 0))(
  ( (tuple2!45629 (_1!26093 Unit!66457) (_2!26093 MutableMap!4381)) )
))
(declare-fun Unit!66464 () Unit!66457)

(declare-fun Unit!66465 () Unit!66457)

(assert (=> b!4295927 (= e!2669712 (tuple2!45623 (_1!26092 lt!1518341) (_2!26093 (ite (_1!26092 lt!1518341) (tuple2!45629 Unit!66464 (HashMap!4381 (Cell!17712 (_2!26092 lt!1518341)) (hashF!6423 (cache!4521 thiss!29019)) (bvadd (_size!8994 (cache!4521 thiss!29019)) #b00000000000000000000000000000001) (defaultValue!4552 (cache!4521 thiss!29019)))) (tuple2!45629 Unit!66465 lt!1518312)))))))

(assert (=> b!4295927 (= lt!1518311 call!294689)))

(declare-fun c!730911 () Bool)

(declare-fun contains!9801 (MutLongMap!4475 (_ BitVec 64)) Bool)

(assert (=> b!4295927 (= c!730911 (contains!9801 (v!41784 (underlying!9180 (cache!4521 thiss!29019))) lt!1518311))))

(assert (=> b!4295927 (= lt!1518293 e!2669715)))

(assert (=> b!4295927 (= lt!1518310 (Cons!47844 (tuple2!45621 lt!1518170 res!14399) lt!1518293))))

(assert (=> b!4295927 (= lt!1518341 call!294704)))

(assert (=> b!4295927 (= lt!1518312 (HashMap!4381 (Cell!17712 (_2!26092 lt!1518341)) (hashF!6423 (cache!4521 thiss!29019)) (_size!8994 (cache!4521 thiss!29019)) (defaultValue!4552 (cache!4521 thiss!29019))))))

(declare-fun c!730906 () Bool)

(assert (=> b!4295927 (= c!730906 (_1!26092 lt!1518341))))

(declare-fun lt!1518303 () Unit!66457)

(assert (=> b!4295927 (= lt!1518303 e!2669716)))

(declare-fun b!4295928 () Bool)

(declare-fun res!1760850 () Bool)

(assert (=> b!4295928 (=> (not res!1760850) (not e!2669721))))

(assert (=> b!4295928 (= res!1760850 (valid!3452 (_2!26090 lt!1518339)))))

(declare-fun bm!294710 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!99 (List!47970 (_ BitVec 64) List!47968 Hashable!4391) Unit!66457)

(assert (=> bm!294710 (= call!294705 (lemmaInLongMapAllKeySameHashThenForTuple!99 (toList!2138 lt!1518328) (ite c!730907 lt!1518317 lt!1518311) (ite c!730907 lt!1518314 lt!1518293) (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun b!4295929 () Bool)

(declare-fun Unit!66466 () Unit!66457)

(declare-fun Unit!66467 () Unit!66457)

(assert (=> b!4295929 (= e!2669712 (tuple2!45623 (_1!26092 lt!1518297) (_2!26093 (ite false (tuple2!45629 Unit!66466 (HashMap!4381 (Cell!17712 (_2!26092 lt!1518297)) (hashF!6423 (cache!4521 thiss!29019)) (bvadd (_size!8994 (cache!4521 thiss!29019)) #b00000000000000000000000000000001) (defaultValue!4552 (cache!4521 thiss!29019)))) (tuple2!45629 Unit!66467 lt!1518340)))))))

(assert (=> b!4295929 (= lt!1518317 call!294689)))

(assert (=> b!4295929 (= lt!1518314 call!294690)))

(assert (=> b!4295929 (= lt!1518298 (Cons!47844 (tuple2!45621 lt!1518170 res!14399) call!294716))))

(assert (=> b!4295929 (= lt!1518297 call!294704)))

(assert (=> b!4295929 (= lt!1518340 (HashMap!4381 (Cell!17712 (_2!26092 lt!1518297)) (hashF!6423 (cache!4521 thiss!29019)) (_size!8994 (cache!4521 thiss!29019)) (defaultValue!4552 (cache!4521 thiss!29019))))))

(declare-fun c!730912 () Bool)

(assert (=> b!4295929 (= c!730912 (_1!26092 lt!1518297))))

(declare-fun lt!1518304 () Unit!66457)

(assert (=> b!4295929 (= lt!1518304 e!2669717)))

(assert (=> b!4295930 call!294700))

(declare-fun lt!1518313 () Unit!66457)

(declare-fun Unit!66468 () Unit!66457)

(assert (=> b!4295930 (= lt!1518313 Unit!66468)))

(assert (=> b!4295930 (contains!9799 call!294713 lt!1518170)))

(declare-fun lt!1518301 () Unit!66457)

(declare-fun lt!1518291 () Unit!66457)

(assert (=> b!4295930 (= lt!1518301 lt!1518291)))

(assert (=> b!4295930 (= call!294711 (contains!9799 lt!1518302 lt!1518170))))

(assert (=> b!4295930 (= lt!1518291 call!294693)))

(assert (=> b!4295930 (= lt!1518302 call!294713)))

(assert (=> b!4295930 (= lt!1518289 call!294717)))

(declare-fun lt!1518325 () Unit!66457)

(declare-fun Unit!66469 () Unit!66457)

(assert (=> b!4295930 (= lt!1518325 Unit!66469)))

(assert (=> b!4295930 call!294709))

(declare-fun lt!1518320 () Unit!66457)

(declare-fun Unit!66470 () Unit!66457)

(assert (=> b!4295930 (= lt!1518320 Unit!66470)))

(assert (=> b!4295930 call!294710))

(declare-fun lt!1518288 () Unit!66457)

(declare-fun Unit!66471 () Unit!66457)

(assert (=> b!4295930 (= lt!1518288 Unit!66471)))

(assert (=> b!4295930 call!294714))

(declare-fun lt!1518306 () Unit!66457)

(declare-fun lt!1518322 () Unit!66457)

(assert (=> b!4295930 (= lt!1518306 lt!1518322)))

(declare-fun call!294712 () Bool)

(assert (=> b!4295930 call!294712))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!20 (ListLongMap!769 (_ BitVec 64) List!47968 tuple2!45618 Int Hashable!4391) Unit!66457)

(assert (=> b!4295930 (= lt!1518322 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!20 lt!1518328 lt!1518311 lt!1518310 lt!1518170 res!14399 (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun lt!1518329 () Unit!66457)

(declare-fun lt!1518342 () Unit!66457)

(assert (=> b!4295930 (= lt!1518329 lt!1518342)))

(assert (=> b!4295930 e!2669718))

(declare-fun res!1760853 () Bool)

(assert (=> b!4295930 (=> (not res!1760853) (not e!2669718))))

(assert (=> b!4295930 (= res!1760853 call!294695)))

(assert (=> b!4295930 (= lt!1518326 call!294701)))

(assert (=> b!4295930 (= lt!1518342 call!294688)))

(declare-fun lt!1518327 () Unit!66457)

(assert (=> b!4295930 (= lt!1518327 e!2669713)))

(declare-fun c!730910 () Bool)

(declare-fun isEmpty!28032 (List!47968) Bool)

(assert (=> b!4295930 (= c!730910 (not (isEmpty!28032 lt!1518293)))))

(declare-fun Unit!66472 () Unit!66457)

(assert (=> b!4295930 (= e!2669716 Unit!66472)))

(declare-fun bm!294711 () Bool)

(assert (=> bm!294711 (= call!294702 (allKeysSameHash!108 (ite c!730907 lt!1518314 lt!1518293) (ite c!730907 lt!1518317 lt!1518311) (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun bm!294712 () Bool)

(assert (=> bm!294712 (= call!294712 (eq!81 call!294697 call!294699))))

(assert (=> b!4295931 call!294709))

(declare-fun lt!1518330 () Unit!66457)

(declare-fun Unit!66473 () Unit!66457)

(assert (=> b!4295931 (= lt!1518330 Unit!66473)))

(assert (=> b!4295931 call!294710))

(declare-fun lt!1518318 () Unit!66457)

(declare-fun Unit!66474 () Unit!66457)

(assert (=> b!4295931 (= lt!1518318 Unit!66474)))

(assert (=> b!4295931 call!294714))

(declare-fun lt!1518294 () Unit!66457)

(declare-fun lt!1518337 () Unit!66457)

(assert (=> b!4295931 (= lt!1518294 lt!1518337)))

(assert (=> b!4295931 (= call!294711 call!294700)))

(assert (=> b!4295931 (= lt!1518337 call!294693)))

(assert (=> b!4295931 (= lt!1518305 call!294713)))

(assert (=> b!4295931 (= lt!1518292 call!294715)))

(declare-fun lt!1518333 () Unit!66457)

(declare-fun lt!1518315 () Unit!66457)

(assert (=> b!4295931 (= lt!1518333 lt!1518315)))

(assert (=> b!4295931 call!294712))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!20 (ListLongMap!769 (_ BitVec 64) List!47968 tuple2!45618 Int Hashable!4391) Unit!66457)

(assert (=> b!4295931 (= lt!1518315 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!20 lt!1518328 lt!1518317 lt!1518298 lt!1518170 res!14399 (hashF!6423 (cache!4521 thiss!29019))))))

(declare-fun lt!1518334 () Unit!66457)

(declare-fun lt!1518299 () Unit!66457)

(assert (=> b!4295931 (= lt!1518334 lt!1518299)))

(assert (=> b!4295931 e!2669714))

(declare-fun res!1760852 () Bool)

(assert (=> b!4295931 (=> (not res!1760852) (not e!2669714))))

(assert (=> b!4295931 (= res!1760852 call!294695)))

(assert (=> b!4295931 (= lt!1518308 call!294701)))

(assert (=> b!4295931 (= lt!1518299 call!294688)))

(declare-fun lt!1518316 () Unit!66457)

(declare-fun Unit!66475 () Unit!66457)

(assert (=> b!4295931 (= lt!1518316 Unit!66475)))

(declare-fun noDuplicateKeys!136 (List!47968) Bool)

(assert (=> b!4295931 (noDuplicateKeys!136 lt!1518298)))

(declare-fun lt!1518331 () Unit!66457)

(declare-fun Unit!66476 () Unit!66457)

(assert (=> b!4295931 (= lt!1518331 Unit!66476)))

(declare-fun containsKey!213 (List!47968 tuple2!45618) Bool)

(assert (=> b!4295931 (not (containsKey!213 call!294716 lt!1518170))))

(declare-fun lt!1518336 () Unit!66457)

(declare-fun Unit!66477 () Unit!66457)

(assert (=> b!4295931 (= lt!1518336 Unit!66477)))

(declare-fun lt!1518309 () Unit!66457)

(declare-fun lt!1518324 () Unit!66457)

(assert (=> b!4295931 (= lt!1518309 lt!1518324)))

(assert (=> b!4295931 (noDuplicateKeys!136 call!294716)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!113 (List!47968 tuple2!45618) Unit!66457)

(assert (=> b!4295931 (= lt!1518324 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!113 lt!1518314 lt!1518170))))

(declare-fun lt!1518319 () Unit!66457)

(declare-fun lt!1518321 () Unit!66457)

(assert (=> b!4295931 (= lt!1518319 lt!1518321)))

(assert (=> b!4295931 call!294694))

(assert (=> b!4295931 (= lt!1518321 call!294706)))

(declare-fun lt!1518300 () Unit!66457)

(declare-fun lt!1518295 () Unit!66457)

(assert (=> b!4295931 (= lt!1518300 lt!1518295)))

(assert (=> b!4295931 call!294702))

(assert (=> b!4295931 (= lt!1518295 call!294705)))

(declare-fun Unit!66478 () Unit!66457)

(assert (=> b!4295931 (= e!2669717 Unit!66478)))

(assert (= (and d!1266122 c!730907) b!4295929))

(assert (= (and d!1266122 (not c!730907)) b!4295927))

(assert (= (and b!4295929 c!730912) b!4295931))

(assert (= (and b!4295929 (not c!730912)) b!4295917))

(assert (= (and b!4295931 res!1760852) b!4295921))

(assert (= (or b!4295931 b!4295917) bm!294707))

(assert (= (and b!4295927 c!730911) b!4295923))

(assert (= (and b!4295927 (not c!730911)) b!4295925))

(assert (= (and b!4295927 c!730906) b!4295930))

(assert (= (and b!4295927 (not c!730906)) b!4295914))

(assert (= (and b!4295930 c!730910) b!4295924))

(assert (= (and b!4295930 (not c!730910)) b!4295916))

(assert (= (and b!4295930 res!1760853) b!4295918))

(assert (= (or b!4295930 b!4295914) bm!294705))

(assert (= (or bm!294707 bm!294705) bm!294684))

(assert (= (or b!4295931 b!4295930) bm!294698))

(assert (= (or b!4295929 b!4295927) bm!294692))

(assert (= (or b!4295929 b!4295931 b!4295924) bm!294689))

(assert (= (or b!4295931 b!4295924) bm!294703))

(assert (= (or b!4295931 b!4295930) bm!294701))

(assert (= (or b!4295931 b!4295930) bm!294706))

(assert (= (or b!4295931 b!4295930) bm!294686))

(assert (= (or b!4295929 b!4295927) bm!294690))

(assert (= (or b!4295931 b!4295924) bm!294711))

(assert (= (or b!4295931 b!4295924) bm!294710))

(assert (= (or b!4295931 b!4295930) bm!294688))

(assert (= (or b!4295929 b!4295923) bm!294683))

(assert (= (or b!4295931 b!4295930) bm!294694))

(assert (= (or b!4295921 b!4295918) bm!294697))

(assert (= (or b!4295917 b!4295914) bm!294709))

(assert (= (or b!4295931 b!4295930) bm!294699))

(assert (= (or b!4295931 b!4295930) bm!294704))

(assert (= (or b!4295931 b!4295930) bm!294687))

(assert (= (or b!4295931 b!4295930) bm!294693))

(assert (= (or b!4295931 b!4295930) bm!294691))

(assert (= (or b!4295931 b!4295930) bm!294682))

(assert (= (or b!4295931 b!4295924) bm!294702))

(assert (= (or b!4295931 b!4295930) bm!294696))

(assert (= (or b!4295931 b!4295930) bm!294700))

(assert (= (or b!4295931 b!4295930) bm!294712))

(assert (= (and d!1266122 res!1760851) b!4295928))

(assert (= (and b!4295928 res!1760850) b!4295915))

(assert (= (and b!4295915 c!730908) b!4295919))

(assert (= (and b!4295915 (not c!730908)) b!4295922))

(assert (= (and b!4295919 res!1760854) b!4295913))

(assert (= (or b!4295913 b!4295922) bm!294695))

(assert (= (or b!4295919 b!4295913 b!4295922) bm!294708))

(assert (= (or b!4295913 b!4295922) bm!294685))

(assert (= (and bm!294685 c!730909) b!4295926))

(assert (= (and bm!294685 (not c!730909)) b!4295920))

(declare-fun m!4888378 () Bool)

(assert (=> bm!294696 m!4888378))

(declare-fun m!4888380 () Bool)

(assert (=> b!4295930 m!4888380))

(declare-fun m!4888382 () Bool)

(assert (=> b!4295930 m!4888382))

(declare-fun m!4888384 () Bool)

(assert (=> b!4295930 m!4888384))

(declare-fun m!4888386 () Bool)

(assert (=> b!4295930 m!4888386))

(declare-fun m!4888388 () Bool)

(assert (=> bm!294699 m!4888388))

(declare-fun m!4888390 () Bool)

(assert (=> bm!294703 m!4888390))

(declare-fun m!4888392 () Bool)

(assert (=> bm!294688 m!4888392))

(declare-fun m!4888394 () Bool)

(assert (=> d!1266122 m!4888394))

(assert (=> d!1266122 m!4888346))

(declare-fun m!4888396 () Bool)

(assert (=> d!1266122 m!4888396))

(assert (=> d!1266122 m!4888330))

(declare-fun m!4888398 () Bool)

(assert (=> bm!294712 m!4888398))

(declare-fun m!4888400 () Bool)

(assert (=> bm!294684 m!4888400))

(declare-fun m!4888402 () Bool)

(assert (=> bm!294685 m!4888402))

(declare-fun m!4888404 () Bool)

(assert (=> bm!294693 m!4888404))

(declare-fun m!4888406 () Bool)

(assert (=> bm!294698 m!4888406))

(declare-fun m!4888408 () Bool)

(assert (=> bm!294700 m!4888408))

(declare-fun m!4888410 () Bool)

(assert (=> bm!294692 m!4888410))

(declare-fun m!4888412 () Bool)

(assert (=> bm!294702 m!4888412))

(declare-fun m!4888414 () Bool)

(assert (=> bm!294709 m!4888414))

(declare-fun m!4888416 () Bool)

(assert (=> b!4295926 m!4888416))

(declare-fun m!4888418 () Bool)

(assert (=> bm!294704 m!4888418))

(declare-fun m!4888420 () Bool)

(assert (=> bm!294683 m!4888420))

(declare-fun m!4888422 () Bool)

(assert (=> bm!294682 m!4888422))

(declare-fun m!4888424 () Bool)

(assert (=> bm!294689 m!4888424))

(declare-fun m!4888426 () Bool)

(assert (=> bm!294701 m!4888426))

(declare-fun m!4888428 () Bool)

(assert (=> bm!294711 m!4888428))

(declare-fun m!4888430 () Bool)

(assert (=> bm!294710 m!4888430))

(declare-fun m!4888432 () Bool)

(assert (=> bm!294686 m!4888432))

(assert (=> bm!294695 m!4888396))

(declare-fun m!4888434 () Bool)

(assert (=> bm!294691 m!4888434))

(declare-fun m!4888436 () Bool)

(assert (=> bm!294694 m!4888436))

(declare-fun m!4888438 () Bool)

(assert (=> bm!294690 m!4888438))

(declare-fun m!4888440 () Bool)

(assert (=> b!4295927 m!4888440))

(declare-fun m!4888442 () Bool)

(assert (=> bm!294687 m!4888442))

(declare-fun m!4888444 () Bool)

(assert (=> bm!294697 m!4888444))

(declare-fun m!4888446 () Bool)

(assert (=> b!4295931 m!4888446))

(declare-fun m!4888448 () Bool)

(assert (=> b!4295931 m!4888448))

(declare-fun m!4888450 () Bool)

(assert (=> b!4295931 m!4888450))

(declare-fun m!4888452 () Bool)

(assert (=> b!4295931 m!4888452))

(declare-fun m!4888454 () Bool)

(assert (=> b!4295931 m!4888454))

(declare-fun m!4888456 () Bool)

(assert (=> b!4295928 m!4888456))

(declare-fun m!4888458 () Bool)

(assert (=> bm!294706 m!4888458))

(declare-fun m!4888460 () Bool)

(assert (=> b!4295919 m!4888460))

(declare-fun m!4888462 () Bool)

(assert (=> bm!294708 m!4888462))

(assert (=> b!4295838 d!1266122))

(declare-fun d!1266124 () Bool)

(declare-fun e!2669725 () Bool)

(assert (=> d!1266124 e!2669725))

(declare-fun res!1760857 () Bool)

(assert (=> d!1266124 (=> (not res!1760857) (not e!2669725))))

(assert (=> d!1266124 (= res!1760857 (and (or (not ((_ is HashMap!4381) (cache!4521 thiss!29019))) ((_ is HashMap!4381) (cache!4521 thiss!29019))) ((_ is HashMap!4381) (cache!4521 thiss!29019))))))

(declare-fun lt!1518358 () Unit!66457)

(declare-fun choose!26159 (MutableMap!4381 tuple2!45618 Int Int) Unit!66457)

(assert (=> d!1266124 (= lt!1518358 (choose!26159 (cache!4521 thiss!29019) lt!1518170 res!14399 lambda!131694))))

(assert (=> d!1266124 (valid!3452 (cache!4521 thiss!29019))))

(assert (=> d!1266124 (= (lemmaUpdatePreservesForallPairs!40 (cache!4521 thiss!29019) lt!1518170 res!14399 lambda!131694) lt!1518358)))

(declare-fun b!4295934 () Bool)

(declare-fun lt!1518356 () MutableMap!4381)

(assert (=> b!4295934 (= e!2669725 (forall!8569 (toList!2137 (map!9820 lt!1518356)) lambda!131694))))

(assert (=> b!4295934 ((_ is HashMap!4381) lt!1518356)))

(declare-fun lt!1518359 () MutableMap!4381)

(assert (=> b!4295934 (= lt!1518356 lt!1518359)))

(assert (=> b!4295934 ((_ is HashMap!4381) lt!1518359)))

(declare-fun lt!1518357 () MutableMap!4381)

(assert (=> b!4295934 (= lt!1518359 lt!1518357)))

(assert (=> b!4295934 ((_ is HashMap!4381) lt!1518357)))

(declare-fun lt!1518355 () tuple2!45622)

(assert (=> b!4295934 (= lt!1518357 (_2!26090 lt!1518355))))

(assert (=> b!4295934 ((_ is HashMap!4381) (_2!26090 lt!1518355))))

(declare-fun lt!1518360 () tuple2!45622)

(assert (=> b!4295934 (= lt!1518355 lt!1518360)))

(assert (=> b!4295934 ((_ is HashMap!4381) (_2!26090 lt!1518360))))

(assert (=> b!4295934 (= lt!1518360 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399))))

(assert (= (and d!1266124 res!1760857) b!4295934))

(declare-fun m!4888464 () Bool)

(assert (=> d!1266124 m!4888464))

(assert (=> d!1266124 m!4888330))

(declare-fun m!4888466 () Bool)

(assert (=> b!4295934 m!4888466))

(declare-fun m!4888468 () Bool)

(assert (=> b!4295934 m!4888468))

(assert (=> b!4295934 m!4888318))

(assert (=> b!4295838 d!1266124))

(declare-fun d!1266126 () Bool)

(declare-fun res!1760860 () Bool)

(declare-fun e!2669728 () Bool)

(assert (=> d!1266126 (=> (not res!1760860) (not e!2669728))))

(assert (=> d!1266126 (= res!1760860 ((_ is HashMap!4381) (cache!4521 thiss!29019)))))

(assert (=> d!1266126 (= (inv!63392 thiss!29019) e!2669728)))

(declare-fun b!4295937 () Bool)

(assert (=> b!4295937 (= e!2669728 (validCacheMapFindLongestMatch!88 (cache!4521 thiss!29019) (totalInput!4408 thiss!29019)))))

(assert (= (and d!1266126 res!1760860) b!4295937))

(assert (=> b!4295937 m!4888342))

(assert (=> start!412396 d!1266126))

(declare-fun d!1266128 () Bool)

(declare-fun isBalanced!3890 (Conc!14434) Bool)

(assert (=> d!1266128 (= (inv!63391 localTotalInput!12) (isBalanced!3890 (c!730887 localTotalInput!12)))))

(declare-fun bs!603792 () Bool)

(assert (= bs!603792 d!1266128))

(declare-fun m!4888470 () Bool)

(assert (=> bs!603792 m!4888470))

(assert (=> start!412396 d!1266128))

(declare-fun bs!603793 () Bool)

(declare-fun b!4295943 () Bool)

(assert (= bs!603793 (and b!4295943 b!4295838)))

(declare-fun lambda!131710 () Int)

(assert (=> bs!603793 (= (= (totalInput!4408 thiss!29019) localTotalInput!12) (= lambda!131710 lambda!131694))))

(assert (=> b!4295943 true))

(declare-fun d!1266130 () Bool)

(declare-fun res!1760865 () Bool)

(declare-fun e!2669731 () Bool)

(assert (=> d!1266130 (=> (not res!1760865) (not e!2669731))))

(assert (=> d!1266130 (= res!1760865 (valid!3452 (cache!4521 thiss!29019)))))

(assert (=> d!1266130 (= (validCacheMapFindLongestMatch!88 (cache!4521 thiss!29019) (totalInput!4408 thiss!29019)) e!2669731)))

(declare-fun b!4295942 () Bool)

(declare-fun res!1760866 () Bool)

(assert (=> b!4295942 (=> (not res!1760866) (not e!2669731))))

(assert (=> b!4295942 (= res!1760866 (invariantList!518 (toList!2137 (map!9820 (cache!4521 thiss!29019)))))))

(assert (=> b!4295943 (= e!2669731 (forall!8569 (toList!2137 (map!9820 (cache!4521 thiss!29019))) lambda!131710))))

(assert (= (and d!1266130 res!1760865) b!4295942))

(assert (= (and b!4295942 res!1760866) b!4295943))

(assert (=> d!1266130 m!4888330))

(assert (=> b!4295942 m!4888396))

(declare-fun m!4888473 () Bool)

(assert (=> b!4295942 m!4888473))

(assert (=> b!4295943 m!4888396))

(declare-fun m!4888475 () Bool)

(assert (=> b!4295943 m!4888475))

(assert (=> b!4295837 d!1266130))

(declare-fun d!1266132 () Bool)

(declare-fun lambda!131713 () Int)

(declare-fun forall!8571 (List!47967 Int) Bool)

(assert (=> d!1266132 (= (inv!63390 setElem!26734) (forall!8571 (exprs!3383 setElem!26734) lambda!131713))))

(declare-fun bs!603794 () Bool)

(assert (= bs!603794 d!1266132))

(declare-fun m!4888477 () Bool)

(assert (=> bs!603794 m!4888477))

(assert (=> setNonEmpty!26734 d!1266132))

(declare-fun d!1266134 () Bool)

(assert (=> d!1266134 (= (inv!63391 (totalInput!4408 thiss!29019)) (isBalanced!3890 (c!730887 (totalInput!4408 thiss!29019))))))

(declare-fun bs!603795 () Bool)

(assert (= bs!603795 d!1266134))

(declare-fun m!4888479 () Bool)

(assert (=> bs!603795 m!4888479))

(assert (=> b!4295841 d!1266134))

(declare-fun b!4295960 () Bool)

(declare-fun c!730921 () Bool)

(declare-fun lt!1518367 () (InoxSet Context!5766))

(declare-fun nullableZipper!777 ((InoxSet Context!5766)) Bool)

(assert (=> b!4295960 (= c!730921 (nullableZipper!777 lt!1518367))))

(declare-fun e!2669742 () Int)

(declare-fun e!2669744 () Int)

(assert (=> b!4295960 (= e!2669742 e!2669744)))

(declare-fun b!4295961 () Bool)

(declare-fun e!2669745 () Bool)

(assert (=> b!4295961 (= e!2669745 (<= from!940 (size!35150 (totalInput!4408 thiss!29019))))))

(declare-fun b!4295962 () Bool)

(assert (=> b!4295962 (= e!2669744 1)))

(declare-fun b!4295963 () Bool)

(assert (=> b!4295963 (= e!2669744 0)))

(declare-fun b!4295964 () Bool)

(declare-fun lt!1518369 () Int)

(assert (=> b!4295964 (= e!2669742 (+ 1 lt!1518369))))

(declare-fun b!4295965 () Bool)

(declare-fun e!2669746 () Int)

(assert (=> b!4295965 (= e!2669746 e!2669742)))

(declare-fun derivationStepZipper!554 ((InoxSet Context!5766) C!26184) (InoxSet Context!5766))

(declare-fun apply!10855 (BalanceConc!28358 Int) C!26184)

(assert (=> b!4295965 (= lt!1518367 (derivationStepZipper!554 z!500 (apply!10855 (totalInput!4408 thiss!29019) from!940)))))

(assert (=> b!4295965 (= lt!1518369 (findLongestMatchInnerZipperFastV2!47 lt!1518367 (+ from!940 1) (totalInput!4408 thiss!29019) lt!1518169))))

(declare-fun c!730919 () Bool)

(assert (=> b!4295965 (= c!730919 (> lt!1518369 0))))

(declare-fun d!1266136 () Bool)

(declare-fun lt!1518368 () Int)

(assert (=> d!1266136 (and (>= lt!1518368 0) (<= lt!1518368 (- lt!1518169 from!940)))))

(assert (=> d!1266136 (= lt!1518368 e!2669746)))

(declare-fun c!730920 () Bool)

(declare-fun e!2669743 () Bool)

(assert (=> d!1266136 (= c!730920 e!2669743)))

(declare-fun res!1760872 () Bool)

(assert (=> d!1266136 (=> res!1760872 e!2669743)))

(assert (=> d!1266136 (= res!1760872 (= from!940 lt!1518169))))

(assert (=> d!1266136 e!2669745))

(declare-fun res!1760871 () Bool)

(assert (=> d!1266136 (=> (not res!1760871) (not e!2669745))))

(assert (=> d!1266136 (= res!1760871 (>= from!940 0))))

(assert (=> d!1266136 (= (findLongestMatchInnerZipperFastV2!47 z!500 from!940 (totalInput!4408 thiss!29019) lt!1518169) lt!1518368)))

(declare-fun b!4295966 () Bool)

(declare-fun lostCauseZipper!657 ((InoxSet Context!5766)) Bool)

(assert (=> b!4295966 (= e!2669743 (lostCauseZipper!657 z!500))))

(declare-fun b!4295967 () Bool)

(assert (=> b!4295967 (= e!2669746 0)))

(assert (= (and d!1266136 res!1760871) b!4295961))

(assert (= (and d!1266136 (not res!1760872)) b!4295966))

(assert (= (and d!1266136 c!730920) b!4295967))

(assert (= (and d!1266136 (not c!730920)) b!4295965))

(assert (= (and b!4295965 c!730919) b!4295964))

(assert (= (and b!4295965 (not c!730919)) b!4295960))

(assert (= (and b!4295960 c!730921) b!4295962))

(assert (= (and b!4295960 (not c!730921)) b!4295963))

(declare-fun m!4888481 () Bool)

(assert (=> b!4295960 m!4888481))

(assert (=> b!4295961 m!4888312))

(declare-fun m!4888483 () Bool)

(assert (=> b!4295965 m!4888483))

(assert (=> b!4295965 m!4888483))

(declare-fun m!4888485 () Bool)

(assert (=> b!4295965 m!4888485))

(declare-fun m!4888487 () Bool)

(assert (=> b!4295965 m!4888487))

(declare-fun m!4888489 () Bool)

(assert (=> b!4295966 m!4888489))

(assert (=> b!4295845 d!1266136))

(declare-fun e!2669752 () Bool)

(declare-fun setRes!26737 () Bool)

(declare-fun setElem!26737 () Context!5766)

(declare-fun setNonEmpty!26737 () Bool)

(declare-fun tp!1319257 () Bool)

(assert (=> setNonEmpty!26737 (= setRes!26737 (and tp!1319257 (inv!63390 setElem!26737) e!2669752))))

(declare-fun setRest!26737 () (InoxSet Context!5766))

(assert (=> setNonEmpty!26737 (= (_1!26088 (_1!26089 (h!53264 (zeroValue!4734 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5766 Bool)) false) setElem!26737 true) setRest!26737))))

(declare-fun b!4295974 () Bool)

(declare-fun e!2669751 () Bool)

(declare-fun tp!1319256 () Bool)

(assert (=> b!4295974 (= e!2669751 (and setRes!26737 tp!1319256))))

(declare-fun condSetEmpty!26737 () Bool)

(assert (=> b!4295974 (= condSetEmpty!26737 (= (_1!26088 (_1!26089 (h!53264 (zeroValue!4734 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))))) ((as const (Array Context!5766 Bool)) false)))))

(assert (=> b!4295843 (= tp!1319238 e!2669751)))

(declare-fun b!4295975 () Bool)

(declare-fun tp!1319255 () Bool)

(assert (=> b!4295975 (= e!2669752 tp!1319255)))

(declare-fun setIsEmpty!26737 () Bool)

(assert (=> setIsEmpty!26737 setRes!26737))

(assert (= (and b!4295974 condSetEmpty!26737) setIsEmpty!26737))

(assert (= (and b!4295974 (not condSetEmpty!26737)) setNonEmpty!26737))

(assert (= setNonEmpty!26737 b!4295975))

(assert (= (and b!4295843 ((_ is Cons!47844) (zeroValue!4734 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019)))))))) b!4295974))

(declare-fun m!4888491 () Bool)

(assert (=> setNonEmpty!26737 m!4888491))

(declare-fun tp!1319260 () Bool)

(declare-fun e!2669754 () Bool)

(declare-fun setNonEmpty!26738 () Bool)

(declare-fun setRes!26738 () Bool)

(declare-fun setElem!26738 () Context!5766)

(assert (=> setNonEmpty!26738 (= setRes!26738 (and tp!1319260 (inv!63390 setElem!26738) e!2669754))))

(declare-fun setRest!26738 () (InoxSet Context!5766))

(assert (=> setNonEmpty!26738 (= (_1!26088 (_1!26089 (h!53264 (minValue!4734 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5766 Bool)) false) setElem!26738 true) setRest!26738))))

(declare-fun b!4295976 () Bool)

(declare-fun e!2669753 () Bool)

(declare-fun tp!1319259 () Bool)

(assert (=> b!4295976 (= e!2669753 (and setRes!26738 tp!1319259))))

(declare-fun condSetEmpty!26738 () Bool)

(assert (=> b!4295976 (= condSetEmpty!26738 (= (_1!26088 (_1!26089 (h!53264 (minValue!4734 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019))))))))) ((as const (Array Context!5766 Bool)) false)))))

(assert (=> b!4295843 (= tp!1319246 e!2669753)))

(declare-fun b!4295977 () Bool)

(declare-fun tp!1319258 () Bool)

(assert (=> b!4295977 (= e!2669754 tp!1319258)))

(declare-fun setIsEmpty!26738 () Bool)

(assert (=> setIsEmpty!26738 setRes!26738))

(assert (= (and b!4295976 condSetEmpty!26738) setIsEmpty!26738))

(assert (= (and b!4295976 (not condSetEmpty!26738)) setNonEmpty!26738))

(assert (= setNonEmpty!26738 b!4295977))

(assert (= (and b!4295843 ((_ is Cons!47844) (minValue!4734 (v!41783 (underlying!9179 (v!41784 (underlying!9180 (cache!4521 thiss!29019)))))))) b!4295976))

(declare-fun m!4888493 () Bool)

(assert (=> setNonEmpty!26738 m!4888493))

(declare-fun b!4295982 () Bool)

(declare-fun e!2669757 () Bool)

(declare-fun tp!1319265 () Bool)

(declare-fun tp!1319266 () Bool)

(assert (=> b!4295982 (= e!2669757 (and tp!1319265 tp!1319266))))

(assert (=> b!4295848 (= tp!1319239 e!2669757)))

(assert (= (and b!4295848 ((_ is Cons!47843) (exprs!3383 setElem!26734))) b!4295982))

(declare-fun tp!1319275 () Bool)

(declare-fun e!2669763 () Bool)

(declare-fun tp!1319274 () Bool)

(declare-fun b!4295991 () Bool)

(assert (=> b!4295991 (= e!2669763 (and (inv!63389 (left!35485 (c!730887 localTotalInput!12))) tp!1319274 (inv!63389 (right!35815 (c!730887 localTotalInput!12))) tp!1319275))))

(declare-fun b!4295993 () Bool)

(declare-fun e!2669762 () Bool)

(declare-fun tp!1319273 () Bool)

(assert (=> b!4295993 (= e!2669762 tp!1319273)))

(declare-fun b!4295992 () Bool)

(declare-fun inv!63395 (IArray!28929) Bool)

(assert (=> b!4295992 (= e!2669763 (and (inv!63395 (xs!17740 (c!730887 localTotalInput!12))) e!2669762))))

(assert (=> b!4295840 (= tp!1319242 (and (inv!63389 (c!730887 localTotalInput!12)) e!2669763))))

(assert (= (and b!4295840 ((_ is Node!14434) (c!730887 localTotalInput!12))) b!4295991))

(assert (= b!4295992 b!4295993))

(assert (= (and b!4295840 ((_ is Leaf!22332) (c!730887 localTotalInput!12))) b!4295992))

(declare-fun m!4888495 () Bool)

(assert (=> b!4295991 m!4888495))

(declare-fun m!4888497 () Bool)

(assert (=> b!4295991 m!4888497))

(declare-fun m!4888499 () Bool)

(assert (=> b!4295992 m!4888499))

(assert (=> b!4295840 m!4888334))

(declare-fun tp!1319278 () Bool)

(declare-fun tp!1319277 () Bool)

(declare-fun e!2669765 () Bool)

(declare-fun b!4295994 () Bool)

(assert (=> b!4295994 (= e!2669765 (and (inv!63389 (left!35485 (c!730887 (totalInput!4408 thiss!29019)))) tp!1319277 (inv!63389 (right!35815 (c!730887 (totalInput!4408 thiss!29019)))) tp!1319278))))

(declare-fun b!4295996 () Bool)

(declare-fun e!2669764 () Bool)

(declare-fun tp!1319276 () Bool)

(assert (=> b!4295996 (= e!2669764 tp!1319276)))

(declare-fun b!4295995 () Bool)

(assert (=> b!4295995 (= e!2669765 (and (inv!63395 (xs!17740 (c!730887 (totalInput!4408 thiss!29019)))) e!2669764))))

(assert (=> b!4295846 (= tp!1319241 (and (inv!63389 (c!730887 (totalInput!4408 thiss!29019))) e!2669765))))

(assert (= (and b!4295846 ((_ is Node!14434) (c!730887 (totalInput!4408 thiss!29019)))) b!4295994))

(assert (= b!4295995 b!4295996))

(assert (= (and b!4295846 ((_ is Leaf!22332) (c!730887 (totalInput!4408 thiss!29019)))) b!4295995))

(declare-fun m!4888501 () Bool)

(assert (=> b!4295994 m!4888501))

(declare-fun m!4888503 () Bool)

(assert (=> b!4295994 m!4888503))

(declare-fun m!4888505 () Bool)

(assert (=> b!4295995 m!4888505))

(assert (=> b!4295846 m!4888316))

(declare-fun b!4296007 () Bool)

(declare-fun e!2669776 () Bool)

(declare-fun tp!1319295 () Bool)

(assert (=> b!4296007 (= e!2669776 tp!1319295)))

(declare-fun b!4296008 () Bool)

(declare-fun e!2669777 () Bool)

(declare-fun setRes!26743 () Bool)

(declare-fun tp!1319298 () Bool)

(assert (=> b!4296008 (= e!2669777 (and setRes!26743 tp!1319298))))

(declare-fun condSetEmpty!26744 () Bool)

(declare-fun mapValue!20115 () List!47968)

(assert (=> b!4296008 (= condSetEmpty!26744 (= (_1!26088 (_1!26089 (h!53264 mapValue!20115))) ((as const (Array Context!5766 Bool)) false)))))

(declare-fun b!4296009 () Bool)

(declare-fun e!2669774 () Bool)

(declare-fun setRes!26744 () Bool)

(declare-fun tp!1319297 () Bool)

(assert (=> b!4296009 (= e!2669774 (and setRes!26744 tp!1319297))))

(declare-fun condSetEmpty!26743 () Bool)

(declare-fun mapDefault!20115 () List!47968)

(assert (=> b!4296009 (= condSetEmpty!26743 (= (_1!26088 (_1!26089 (h!53264 mapDefault!20115))) ((as const (Array Context!5766 Bool)) false)))))

(declare-fun b!4296010 () Bool)

(declare-fun e!2669775 () Bool)

(declare-fun tp!1319296 () Bool)

(assert (=> b!4296010 (= e!2669775 tp!1319296)))

(declare-fun mapIsEmpty!20115 () Bool)

(declare-fun mapRes!20115 () Bool)

(assert (=> mapIsEmpty!20115 mapRes!20115))

(declare-fun tp!1319299 () Bool)

(declare-fun setNonEmpty!26743 () Bool)

(declare-fun setElem!26744 () Context!5766)

(assert (=> setNonEmpty!26743 (= setRes!26743 (and tp!1319299 (inv!63390 setElem!26744) e!2669776))))

(declare-fun setRest!26744 () (InoxSet Context!5766))

(assert (=> setNonEmpty!26743 (= (_1!26088 (_1!26089 (h!53264 mapValue!20115))) ((_ map or) (store ((as const (Array Context!5766 Bool)) false) setElem!26744 true) setRest!26744))))

(declare-fun setIsEmpty!26743 () Bool)

(assert (=> setIsEmpty!26743 setRes!26744))

(declare-fun mapNonEmpty!20115 () Bool)

(declare-fun tp!1319293 () Bool)

(assert (=> mapNonEmpty!20115 (= mapRes!20115 (and tp!1319293 e!2669777))))

(declare-fun mapKey!20115 () (_ BitVec 32))

(declare-fun mapRest!20115 () (Array (_ BitVec 32) List!47968))

(assert (=> mapNonEmpty!20115 (= mapRest!20112 (store mapRest!20115 mapKey!20115 mapValue!20115))))

(declare-fun condMapEmpty!20115 () Bool)

(assert (=> mapNonEmpty!20112 (= condMapEmpty!20115 (= mapRest!20112 ((as const (Array (_ BitVec 32) List!47968)) mapDefault!20115)))))

(assert (=> mapNonEmpty!20112 (= tp!1319247 (and e!2669774 mapRes!20115))))

(declare-fun setNonEmpty!26744 () Bool)

(declare-fun setElem!26743 () Context!5766)

(declare-fun tp!1319294 () Bool)

(assert (=> setNonEmpty!26744 (= setRes!26744 (and tp!1319294 (inv!63390 setElem!26743) e!2669775))))

(declare-fun setRest!26743 () (InoxSet Context!5766))

(assert (=> setNonEmpty!26744 (= (_1!26088 (_1!26089 (h!53264 mapDefault!20115))) ((_ map or) (store ((as const (Array Context!5766 Bool)) false) setElem!26743 true) setRest!26743))))

(declare-fun setIsEmpty!26744 () Bool)

(assert (=> setIsEmpty!26744 setRes!26743))

(assert (= (and mapNonEmpty!20112 condMapEmpty!20115) mapIsEmpty!20115))

(assert (= (and mapNonEmpty!20112 (not condMapEmpty!20115)) mapNonEmpty!20115))

(assert (= (and b!4296008 condSetEmpty!26744) setIsEmpty!26744))

(assert (= (and b!4296008 (not condSetEmpty!26744)) setNonEmpty!26743))

(assert (= setNonEmpty!26743 b!4296007))

(assert (= (and mapNonEmpty!20115 ((_ is Cons!47844) mapValue!20115)) b!4296008))

(assert (= (and b!4296009 condSetEmpty!26743) setIsEmpty!26743))

(assert (= (and b!4296009 (not condSetEmpty!26743)) setNonEmpty!26744))

(assert (= setNonEmpty!26744 b!4296010))

(assert (= (and mapNonEmpty!20112 ((_ is Cons!47844) mapDefault!20115)) b!4296009))

(declare-fun m!4888507 () Bool)

(assert (=> setNonEmpty!26743 m!4888507))

(declare-fun m!4888509 () Bool)

(assert (=> mapNonEmpty!20115 m!4888509))

(declare-fun m!4888511 () Bool)

(assert (=> setNonEmpty!26744 m!4888511))

(declare-fun e!2669779 () Bool)

(declare-fun setNonEmpty!26745 () Bool)

(declare-fun setRes!26745 () Bool)

(declare-fun setElem!26745 () Context!5766)

(declare-fun tp!1319302 () Bool)

(assert (=> setNonEmpty!26745 (= setRes!26745 (and tp!1319302 (inv!63390 setElem!26745) e!2669779))))

(declare-fun setRest!26745 () (InoxSet Context!5766))

(assert (=> setNonEmpty!26745 (= (_1!26088 (_1!26089 (h!53264 mapValue!20112))) ((_ map or) (store ((as const (Array Context!5766 Bool)) false) setElem!26745 true) setRest!26745))))

(declare-fun b!4296011 () Bool)

(declare-fun e!2669778 () Bool)

(declare-fun tp!1319301 () Bool)

(assert (=> b!4296011 (= e!2669778 (and setRes!26745 tp!1319301))))

(declare-fun condSetEmpty!26745 () Bool)

(assert (=> b!4296011 (= condSetEmpty!26745 (= (_1!26088 (_1!26089 (h!53264 mapValue!20112))) ((as const (Array Context!5766 Bool)) false)))))

(assert (=> mapNonEmpty!20112 (= tp!1319240 e!2669778)))

(declare-fun b!4296012 () Bool)

(declare-fun tp!1319300 () Bool)

(assert (=> b!4296012 (= e!2669779 tp!1319300)))

(declare-fun setIsEmpty!26745 () Bool)

(assert (=> setIsEmpty!26745 setRes!26745))

(assert (= (and b!4296011 condSetEmpty!26745) setIsEmpty!26745))

(assert (= (and b!4296011 (not condSetEmpty!26745)) setNonEmpty!26745))

(assert (= setNonEmpty!26745 b!4296012))

(assert (= (and mapNonEmpty!20112 ((_ is Cons!47844) mapValue!20112)) b!4296011))

(declare-fun m!4888513 () Bool)

(assert (=> setNonEmpty!26745 m!4888513))

(declare-fun e!2669781 () Bool)

(declare-fun setNonEmpty!26746 () Bool)

(declare-fun setElem!26746 () Context!5766)

(declare-fun setRes!26746 () Bool)

(declare-fun tp!1319305 () Bool)

(assert (=> setNonEmpty!26746 (= setRes!26746 (and tp!1319305 (inv!63390 setElem!26746) e!2669781))))

(declare-fun setRest!26746 () (InoxSet Context!5766))

(assert (=> setNonEmpty!26746 (= (_1!26088 (_1!26089 (h!53264 mapDefault!20112))) ((_ map or) (store ((as const (Array Context!5766 Bool)) false) setElem!26746 true) setRest!26746))))

(declare-fun b!4296013 () Bool)

(declare-fun e!2669780 () Bool)

(declare-fun tp!1319304 () Bool)

(assert (=> b!4296013 (= e!2669780 (and setRes!26746 tp!1319304))))

(declare-fun condSetEmpty!26746 () Bool)

(assert (=> b!4296013 (= condSetEmpty!26746 (= (_1!26088 (_1!26089 (h!53264 mapDefault!20112))) ((as const (Array Context!5766 Bool)) false)))))

(assert (=> b!4295839 (= tp!1319243 e!2669780)))

(declare-fun b!4296014 () Bool)

(declare-fun tp!1319303 () Bool)

(assert (=> b!4296014 (= e!2669781 tp!1319303)))

(declare-fun setIsEmpty!26746 () Bool)

(assert (=> setIsEmpty!26746 setRes!26746))

(assert (= (and b!4296013 condSetEmpty!26746) setIsEmpty!26746))

(assert (= (and b!4296013 (not condSetEmpty!26746)) setNonEmpty!26746))

(assert (= setNonEmpty!26746 b!4296014))

(assert (= (and b!4295839 ((_ is Cons!47844) mapDefault!20112)) b!4296013))

(declare-fun m!4888515 () Bool)

(assert (=> setNonEmpty!26746 m!4888515))

(declare-fun condSetEmpty!26749 () Bool)

(assert (=> setNonEmpty!26734 (= condSetEmpty!26749 (= setRest!26734 ((as const (Array Context!5766 Bool)) false)))))

(declare-fun setRes!26749 () Bool)

(assert (=> setNonEmpty!26734 (= tp!1319244 setRes!26749)))

(declare-fun setIsEmpty!26749 () Bool)

(assert (=> setIsEmpty!26749 setRes!26749))

(declare-fun setElem!26749 () Context!5766)

(declare-fun tp!1319310 () Bool)

(declare-fun setNonEmpty!26749 () Bool)

(declare-fun e!2669784 () Bool)

(assert (=> setNonEmpty!26749 (= setRes!26749 (and tp!1319310 (inv!63390 setElem!26749) e!2669784))))

(declare-fun setRest!26749 () (InoxSet Context!5766))

(assert (=> setNonEmpty!26749 (= setRest!26734 ((_ map or) (store ((as const (Array Context!5766 Bool)) false) setElem!26749 true) setRest!26749))))

(declare-fun b!4296019 () Bool)

(declare-fun tp!1319311 () Bool)

(assert (=> b!4296019 (= e!2669784 tp!1319311)))

(assert (= (and setNonEmpty!26734 condSetEmpty!26749) setIsEmpty!26749))

(assert (= (and setNonEmpty!26734 (not condSetEmpty!26749)) setNonEmpty!26749))

(assert (= setNonEmpty!26749 b!4296019))

(declare-fun m!4888517 () Bool)

(assert (=> setNonEmpty!26749 m!4888517))

(declare-fun b_lambda!126127 () Bool)

(assert (= b_lambda!126125 (or b!4295838 b_lambda!126127)))

(declare-fun bs!603796 () Bool)

(declare-fun d!1266138 () Bool)

(assert (= bs!603796 (and d!1266138 b!4295838)))

(declare-fun validCacheMapFindLongestMatchBody!9 (tuple2!45620 BalanceConc!28358) Bool)

(assert (=> bs!603796 (= (dynLambda!20329 lambda!131694 (h!53264 (toList!2137 (map!9820 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399)))))) (validCacheMapFindLongestMatchBody!9 (h!53264 (toList!2137 (map!9820 (_2!26090 (update!289 (cache!4521 thiss!29019) lt!1518170 res!14399))))) localTotalInput!12))))

(declare-fun m!4888519 () Bool)

(assert (=> bs!603796 m!4888519))

(assert (=> b!4295873 d!1266138))

(check-sat (not bm!294706) (not setNonEmpty!26746) (not b!4296008) (not b!4295927) (not bm!294689) (not b!4296011) (not setNonEmpty!26743) (not b!4295863) (not b!4295996) (not bm!294695) (not bm!294712) (not b!4295865) (not d!1266112) (not b!4295934) (not b!4295930) (not setNonEmpty!26744) (not b!4295943) (not b_lambda!126127) (not b!4295995) (not bm!294701) (not b!4295926) (not d!1266122) (not bm!294682) (not b!4295919) (not bm!294709) (not b!4295874) b_and!338993 (not b!4295965) (not setNonEmpty!26749) (not b!4296013) (not d!1266128) (not setNonEmpty!26745) (not b!4295977) (not b!4295991) (not b_next!128479) (not b!4296009) (not bm!294688) (not bm!294686) (not setNonEmpty!26737) (not b!4295982) (not b!4295961) (not bm!294698) (not bm!294697) (not b!4295928) (not bm!294693) (not bm!294702) (not b!4296019) (not b!4295840) (not b!4295994) (not b!4295855) (not bm!294690) (not d!1266134) (not b!4296014) (not b!4295992) (not d!1266120) (not b!4295974) (not bm!294687) (not b_next!128481) (not b!4295856) (not d!1266130) (not bm!294704) (not b!4295868) (not d!1266124) (not bm!294683) (not b!4295942) (not b!4295960) (not b!4295931) (not b!4295937) (not mapNonEmpty!20115) b_and!338991 (not b!4295975) (not bm!294692) (not b!4295846) (not bm!294694) (not bm!294710) (not setNonEmpty!26738) (not bm!294700) (not b!4296010) (not bm!294691) (not bm!294685) (not bs!603796) (not b!4295966) (not bm!294703) (not bm!294696) (not d!1266132) (not b!4295993) (not bm!294699) (not b!4295976) (not b!4295866) (not b!4296012) (not b!4296007) (not d!1266110) (not bm!294684) (not bm!294711) (not bm!294708))
(check-sat b_and!338991 b_and!338993 (not b_next!128479) (not b_next!128481))
