; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412532 () Bool)

(assert start!412532)

(declare-fun b!4296985 () Bool)

(declare-fun b_free!127815 () Bool)

(declare-fun b_next!128519 () Bool)

(assert (=> b!4296985 (= b_free!127815 (not b_next!128519))))

(declare-fun tp!1319893 () Bool)

(declare-fun b_and!339031 () Bool)

(assert (=> b!4296985 (= tp!1319893 b_and!339031)))

(declare-fun b!4296990 () Bool)

(declare-fun b_free!127817 () Bool)

(declare-fun b_next!128521 () Bool)

(assert (=> b!4296990 (= b_free!127817 (not b_next!128521))))

(declare-fun tp!1319892 () Bool)

(declare-fun b_and!339033 () Bool)

(assert (=> b!4296990 (= tp!1319892 b_and!339033)))

(declare-fun b!4296980 () Bool)

(assert (=> b!4296980 true))

(declare-fun b!4296974 () Bool)

(declare-fun e!2670489 () Bool)

(declare-fun e!2670494 () Bool)

(declare-datatypes ((C!26204 0))(
  ( (C!26205 (val!15428 Int)) )
))
(declare-datatypes ((Regex!13003 0))(
  ( (ElementMatch!13003 (c!731013 C!26204)) (Concat!21322 (regOne!26518 Regex!13003) (regTwo!26518 Regex!13003)) (EmptyExpr!13003) (Star!13003 (reg!13332 Regex!13003)) (EmptyLang!13003) (Union!13003 (regOne!26519 Regex!13003) (regTwo!26519 Regex!13003)) )
))
(declare-datatypes ((List!48001 0))(
  ( (Nil!47877) (Cons!47877 (h!53297 Regex!13003) (t!354608 List!48001)) )
))
(declare-datatypes ((Context!5786 0))(
  ( (Context!5787 (exprs!3393 List!48001)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45680 0))(
  ( (tuple2!45681 (_1!26119 (InoxSet Context!5786)) (_2!26119 Int)) )
))
(declare-datatypes ((tuple2!45682 0))(
  ( (tuple2!45683 (_1!26120 tuple2!45680) (_2!26120 Int)) )
))
(declare-datatypes ((List!48002 0))(
  ( (Nil!47878) (Cons!47878 (h!53298 tuple2!45682) (t!354609 List!48002)) )
))
(declare-datatypes ((array!16016 0))(
  ( (array!16017 (arr!7155 (Array (_ BitVec 32) (_ BitVec 64))) (size!35187 (_ BitVec 32))) )
))
(declare-datatypes ((array!16018 0))(
  ( (array!16019 (arr!7156 (Array (_ BitVec 32) List!48002)) (size!35188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8970 0))(
  ( (LongMapFixedSize!8971 (defaultEntry!4870 Int) (mask!12956 (_ BitVec 32)) (extraKeys!4734 (_ BitVec 32)) (zeroValue!4744 List!48002) (minValue!4744 List!48002) (_size!9013 (_ BitVec 32)) (_keys!4785 array!16016) (_values!4766 array!16018) (_vacant!4546 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17749 0))(
  ( (Cell!17750 (v!41807 LongMapFixedSize!8970)) )
))
(declare-datatypes ((MutLongMap!4485 0))(
  ( (LongMap!4485 (underlying!9199 Cell!17749)) (MutLongMapExt!4484 (__x!29480 Int)) )
))
(declare-fun lt!1518683 () MutLongMap!4485)

(get-info :version)

(assert (=> b!4296974 (= e!2670489 (and e!2670494 ((_ is LongMap!4485) lt!1518683)))))

(declare-datatypes ((Cell!17751 0))(
  ( (Cell!17752 (v!41808 MutLongMap!4485)) )
))
(declare-datatypes ((Hashable!4401 0))(
  ( (HashableExt!4400 (__x!29481 Int)) )
))
(declare-datatypes ((MutableMap!4391 0))(
  ( (MutableMapExt!4390 (__x!29482 Int)) (HashMap!4391 (underlying!9200 Cell!17751) (hashF!6433 Hashable!4401) (_size!9014 (_ BitVec 32)) (defaultValue!4562 Int)) )
))
(declare-datatypes ((List!48003 0))(
  ( (Nil!47879) (Cons!47879 (h!53299 C!26204) (t!354610 List!48003)) )
))
(declare-datatypes ((IArray!28949 0))(
  ( (IArray!28950 (innerList!14532 List!48003)) )
))
(declare-datatypes ((Conc!14444 0))(
  ( (Node!14444 (left!35516 Conc!14444) (right!35846 Conc!14444) (csize!29118 Int) (cheight!14655 Int)) (Leaf!22347 (xs!17750 IArray!28949) (csize!29119 Int)) (Empty!14444) )
))
(declare-datatypes ((BalanceConc!28378 0))(
  ( (BalanceConc!28379 (c!731014 Conc!14444)) )
))
(declare-datatypes ((CacheFindLongestMatch!576 0))(
  ( (CacheFindLongestMatch!577 (cache!4531 MutableMap!4391) (totalInput!4428 BalanceConc!28378)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!576)

(assert (=> b!4296974 (= lt!1518683 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))

(declare-fun res!1761170 () Bool)

(declare-fun e!2670484 () Bool)

(assert (=> start!412532 (=> (not res!1761170) (not e!2670484))))

(declare-fun localTotalInput!12 () BalanceConc!28378)

(assert (=> start!412532 (= res!1761170 (= localTotalInput!12 (totalInput!4428 thiss!29019)))))

(assert (=> start!412532 e!2670484))

(declare-fun condSetEmpty!26839 () Bool)

(declare-fun z!500 () (InoxSet Context!5786))

(assert (=> start!412532 (= condSetEmpty!26839 (= z!500 ((as const (Array Context!5786 Bool)) false)))))

(declare-fun setRes!26839 () Bool)

(assert (=> start!412532 setRes!26839))

(assert (=> start!412532 true))

(declare-fun e!2670490 () Bool)

(declare-fun inv!63454 (CacheFindLongestMatch!576) Bool)

(assert (=> start!412532 (and (inv!63454 thiss!29019) e!2670490)))

(declare-fun e!2670488 () Bool)

(declare-fun inv!63455 (BalanceConc!28378) Bool)

(assert (=> start!412532 (and (inv!63455 localTotalInput!12) e!2670488)))

(declare-fun tp!1319883 () Bool)

(declare-fun setNonEmpty!26839 () Bool)

(declare-fun setElem!26839 () Context!5786)

(declare-fun e!2670492 () Bool)

(declare-fun inv!63456 (Context!5786) Bool)

(assert (=> setNonEmpty!26839 (= setRes!26839 (and tp!1319883 (inv!63456 setElem!26839) e!2670492))))

(declare-fun setRest!26839 () (InoxSet Context!5786))

(assert (=> setNonEmpty!26839 (= z!500 ((_ map or) (store ((as const (Array Context!5786 Bool)) false) setElem!26839 true) setRest!26839))))

(declare-fun setIsEmpty!26839 () Bool)

(assert (=> setIsEmpty!26839 setRes!26839))

(declare-fun b!4296975 () Bool)

(declare-fun e!2670491 () Bool)

(assert (=> b!4296975 (= e!2670484 e!2670491)))

(declare-fun res!1761174 () Bool)

(assert (=> b!4296975 (=> (not res!1761174) (not e!2670491))))

(declare-fun from!940 () Int)

(declare-fun lt!1518684 () Int)

(assert (=> b!4296975 (= res!1761174 (<= from!940 lt!1518684))))

(declare-fun size!35189 (BalanceConc!28378) Int)

(assert (=> b!4296975 (= lt!1518684 (size!35189 (totalInput!4428 thiss!29019)))))

(declare-fun mapIsEmpty!20157 () Bool)

(declare-fun mapRes!20157 () Bool)

(assert (=> mapIsEmpty!20157 mapRes!20157))

(declare-fun b!4296976 () Bool)

(declare-fun e!2670493 () Bool)

(declare-fun tp!1319887 () Bool)

(declare-fun inv!63457 (Conc!14444) Bool)

(assert (=> b!4296976 (= e!2670493 (and (inv!63457 (c!731014 (totalInput!4428 thiss!29019))) tp!1319887))))

(declare-fun e!2670496 () Bool)

(declare-fun b!4296977 () Bool)

(assert (=> b!4296977 (= e!2670490 (and e!2670496 (inv!63455 (totalInput!4428 thiss!29019)) e!2670493))))

(declare-fun b!4296978 () Bool)

(declare-fun res!1761175 () Bool)

(assert (=> b!4296978 (=> (not res!1761175) (not e!2670484))))

(assert (=> b!4296978 (= res!1761175 (>= from!940 0))))

(declare-fun mapNonEmpty!20157 () Bool)

(declare-fun tp!1319891 () Bool)

(declare-fun tp!1319885 () Bool)

(assert (=> mapNonEmpty!20157 (= mapRes!20157 (and tp!1319891 tp!1319885))))

(declare-fun mapValue!20157 () List!48002)

(declare-fun mapKey!20157 () (_ BitVec 32))

(declare-fun mapRest!20157 () (Array (_ BitVec 32) List!48002))

(assert (=> mapNonEmpty!20157 (= (arr!7156 (_values!4766 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))) (store mapRest!20157 mapKey!20157 mapValue!20157))))

(declare-fun b!4296979 () Bool)

(declare-fun tp!1319889 () Bool)

(assert (=> b!4296979 (= e!2670492 tp!1319889)))

(declare-fun res!1761172 () Bool)

(assert (=> b!4296980 (=> (not res!1761172) (not e!2670491))))

(declare-fun lambda!131771 () Int)

(declare-fun forall!8586 (List!48002 Int) Bool)

(declare-datatypes ((ListMap!1415 0))(
  ( (ListMap!1416 (toList!2149 List!48002)) )
))
(declare-fun map!9837 (MutableMap!4391) ListMap!1415)

(assert (=> b!4296980 (= res!1761172 (forall!8586 (toList!2149 (map!9837 (cache!4531 thiss!29019))) lambda!131771))))

(declare-fun b!4296981 () Bool)

(declare-fun e!2670487 () Bool)

(assert (=> b!4296981 (= e!2670494 e!2670487)))

(declare-fun b!4296982 () Bool)

(declare-fun e!2670485 () Bool)

(assert (=> b!4296982 (= e!2670487 e!2670485)))

(declare-fun b!4296983 () Bool)

(declare-fun tp!1319888 () Bool)

(assert (=> b!4296983 (= e!2670488 (and (inv!63457 (c!731014 localTotalInput!12)) tp!1319888))))

(declare-fun b!4296984 () Bool)

(declare-fun res!1761169 () Bool)

(assert (=> b!4296984 (=> (not res!1761169) (not e!2670484))))

(declare-fun validCacheMapFindLongestMatch!96 (MutableMap!4391 BalanceConc!28378) Bool)

(assert (=> b!4296984 (= res!1761169 (validCacheMapFindLongestMatch!96 (cache!4531 thiss!29019) (totalInput!4428 thiss!29019)))))

(declare-fun tp!1319886 () Bool)

(declare-fun e!2670495 () Bool)

(declare-fun tp!1319884 () Bool)

(declare-fun array_inv!5129 (array!16016) Bool)

(declare-fun array_inv!5130 (array!16018) Bool)

(assert (=> b!4296985 (= e!2670485 (and tp!1319893 tp!1319884 tp!1319886 (array_inv!5129 (_keys!4785 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))) (array_inv!5130 (_values!4766 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))) e!2670495))))

(declare-fun res!14399 () Int)

(declare-fun b!4296986 () Bool)

(declare-fun validCacheMapFindLongestMatchBody!13 (tuple2!45682 BalanceConc!28378) Bool)

(assert (=> b!4296986 (= e!2670491 (not (validCacheMapFindLongestMatchBody!13 (tuple2!45683 (tuple2!45681 z!500 from!940) res!14399) localTotalInput!12)))))

(declare-fun b!4296987 () Bool)

(declare-fun res!1761173 () Bool)

(assert (=> b!4296987 (=> (not res!1761173) (not e!2670491))))

(assert (=> b!4296987 (= res!1761173 ((_ is HashMap!4391) (cache!4531 thiss!29019)))))

(declare-fun b!4296988 () Bool)

(declare-fun res!1761176 () Bool)

(assert (=> b!4296988 (=> (not res!1761176) (not e!2670491))))

(declare-fun valid!3462 (MutableMap!4391) Bool)

(assert (=> b!4296988 (= res!1761176 (valid!3462 (cache!4531 thiss!29019)))))

(declare-fun b!4296989 () Bool)

(declare-fun res!1761171 () Bool)

(assert (=> b!4296989 (=> (not res!1761171) (not e!2670491))))

(declare-fun findLongestMatchInnerZipperFastV2!57 ((InoxSet Context!5786) Int BalanceConc!28378 Int) Int)

(assert (=> b!4296989 (= res!1761171 (= res!14399 (findLongestMatchInnerZipperFastV2!57 z!500 from!940 (totalInput!4428 thiss!29019) lt!1518684)))))

(assert (=> b!4296990 (= e!2670496 (and e!2670489 tp!1319892))))

(declare-fun b!4296991 () Bool)

(declare-fun tp!1319890 () Bool)

(assert (=> b!4296991 (= e!2670495 (and tp!1319890 mapRes!20157))))

(declare-fun condMapEmpty!20157 () Bool)

(declare-fun mapDefault!20157 () List!48002)

(assert (=> b!4296991 (= condMapEmpty!20157 (= (arr!7156 (_values!4766 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!48002)) mapDefault!20157)))))

(assert (= (and start!412532 res!1761170) b!4296984))

(assert (= (and b!4296984 res!1761169) b!4296978))

(assert (= (and b!4296978 res!1761175) b!4296975))

(assert (= (and b!4296975 res!1761174) b!4296989))

(assert (= (and b!4296989 res!1761171) b!4296987))

(assert (= (and b!4296987 res!1761173) b!4296988))

(assert (= (and b!4296988 res!1761176) b!4296980))

(assert (= (and b!4296980 res!1761172) b!4296986))

(assert (= (and start!412532 condSetEmpty!26839) setIsEmpty!26839))

(assert (= (and start!412532 (not condSetEmpty!26839)) setNonEmpty!26839))

(assert (= setNonEmpty!26839 b!4296979))

(assert (= (and b!4296991 condMapEmpty!20157) mapIsEmpty!20157))

(assert (= (and b!4296991 (not condMapEmpty!20157)) mapNonEmpty!20157))

(assert (= b!4296985 b!4296991))

(assert (= b!4296982 b!4296985))

(assert (= b!4296981 b!4296982))

(assert (= (and b!4296974 ((_ is LongMap!4485) (v!41808 (underlying!9200 (cache!4531 thiss!29019))))) b!4296981))

(assert (= b!4296990 b!4296974))

(assert (= (and b!4296977 ((_ is HashMap!4391) (cache!4531 thiss!29019))) b!4296990))

(assert (= b!4296977 b!4296976))

(assert (= start!412532 b!4296977))

(assert (= start!412532 b!4296983))

(declare-fun m!4889171 () Bool)

(assert (=> b!4296984 m!4889171))

(declare-fun m!4889173 () Bool)

(assert (=> b!4296983 m!4889173))

(declare-fun m!4889175 () Bool)

(assert (=> b!4296975 m!4889175))

(declare-fun m!4889177 () Bool)

(assert (=> b!4296980 m!4889177))

(declare-fun m!4889179 () Bool)

(assert (=> b!4296980 m!4889179))

(declare-fun m!4889181 () Bool)

(assert (=> start!412532 m!4889181))

(declare-fun m!4889183 () Bool)

(assert (=> start!412532 m!4889183))

(declare-fun m!4889185 () Bool)

(assert (=> b!4296976 m!4889185))

(declare-fun m!4889187 () Bool)

(assert (=> b!4296985 m!4889187))

(declare-fun m!4889189 () Bool)

(assert (=> b!4296985 m!4889189))

(declare-fun m!4889191 () Bool)

(assert (=> setNonEmpty!26839 m!4889191))

(declare-fun m!4889193 () Bool)

(assert (=> mapNonEmpty!20157 m!4889193))

(declare-fun m!4889195 () Bool)

(assert (=> b!4296989 m!4889195))

(declare-fun m!4889197 () Bool)

(assert (=> b!4296986 m!4889197))

(declare-fun m!4889199 () Bool)

(assert (=> b!4296988 m!4889199))

(declare-fun m!4889201 () Bool)

(assert (=> b!4296977 m!4889201))

(check-sat (not b!4296980) (not start!412532) (not b!4296984) (not b!4296976) (not mapNonEmpty!20157) b_and!339031 (not setNonEmpty!26839) (not b!4296988) (not b!4296983) (not b!4296989) (not b!4296979) (not b!4296991) (not b!4296975) (not b_next!128519) b_and!339033 (not b!4296985) (not b_next!128521) (not b!4296986) (not b!4296977))
(check-sat b_and!339033 b_and!339031 (not b_next!128521) (not b_next!128519))
(get-model)

(declare-fun d!1266253 () Bool)

(declare-fun res!1761181 () Bool)

(declare-fun e!2670501 () Bool)

(assert (=> d!1266253 (=> res!1761181 e!2670501)))

(assert (=> d!1266253 (= res!1761181 ((_ is Nil!47878) (toList!2149 (map!9837 (cache!4531 thiss!29019)))))))

(assert (=> d!1266253 (= (forall!8586 (toList!2149 (map!9837 (cache!4531 thiss!29019))) lambda!131771) e!2670501)))

(declare-fun b!4296998 () Bool)

(declare-fun e!2670502 () Bool)

(assert (=> b!4296998 (= e!2670501 e!2670502)))

(declare-fun res!1761182 () Bool)

(assert (=> b!4296998 (=> (not res!1761182) (not e!2670502))))

(declare-fun dynLambda!20332 (Int tuple2!45682) Bool)

(assert (=> b!4296998 (= res!1761182 (dynLambda!20332 lambda!131771 (h!53298 (toList!2149 (map!9837 (cache!4531 thiss!29019))))))))

(declare-fun b!4296999 () Bool)

(assert (=> b!4296999 (= e!2670502 (forall!8586 (t!354609 (toList!2149 (map!9837 (cache!4531 thiss!29019)))) lambda!131771))))

(assert (= (and d!1266253 (not res!1761181)) b!4296998))

(assert (= (and b!4296998 res!1761182) b!4296999))

(declare-fun b_lambda!126137 () Bool)

(assert (=> (not b_lambda!126137) (not b!4296998)))

(declare-fun m!4889203 () Bool)

(assert (=> b!4296998 m!4889203))

(declare-fun m!4889205 () Bool)

(assert (=> b!4296999 m!4889205))

(assert (=> b!4296980 d!1266253))

(declare-fun d!1266255 () Bool)

(declare-fun lt!1518687 () ListMap!1415)

(declare-fun invariantList!523 (List!48002) Bool)

(assert (=> d!1266255 (invariantList!523 (toList!2149 lt!1518687))))

(declare-datatypes ((tuple2!45684 0))(
  ( (tuple2!45685 (_1!26121 (_ BitVec 64)) (_2!26121 List!48002)) )
))
(declare-datatypes ((List!48004 0))(
  ( (Nil!47880) (Cons!47880 (h!53300 tuple2!45684) (t!354611 List!48004)) )
))
(declare-fun extractMap!257 (List!48004) ListMap!1415)

(declare-datatypes ((ListLongMap!777 0))(
  ( (ListLongMap!778 (toList!2150 List!48004)) )
))
(declare-fun map!9838 (MutLongMap!4485) ListLongMap!777)

(assert (=> d!1266255 (= lt!1518687 (extractMap!257 (toList!2150 (map!9838 (v!41808 (underlying!9200 (cache!4531 thiss!29019)))))))))

(assert (=> d!1266255 (valid!3462 (cache!4531 thiss!29019))))

(assert (=> d!1266255 (= (map!9837 (cache!4531 thiss!29019)) lt!1518687)))

(declare-fun bs!603830 () Bool)

(assert (= bs!603830 d!1266255))

(declare-fun m!4889207 () Bool)

(assert (=> bs!603830 m!4889207))

(declare-fun m!4889209 () Bool)

(assert (=> bs!603830 m!4889209))

(declare-fun m!4889211 () Bool)

(assert (=> bs!603830 m!4889211))

(assert (=> bs!603830 m!4889199))

(assert (=> b!4296980 d!1266255))

(declare-fun d!1266257 () Bool)

(declare-fun c!731017 () Bool)

(assert (=> d!1266257 (= c!731017 ((_ is Node!14444) (c!731014 localTotalInput!12)))))

(declare-fun e!2670507 () Bool)

(assert (=> d!1266257 (= (inv!63457 (c!731014 localTotalInput!12)) e!2670507)))

(declare-fun b!4297006 () Bool)

(declare-fun inv!63458 (Conc!14444) Bool)

(assert (=> b!4297006 (= e!2670507 (inv!63458 (c!731014 localTotalInput!12)))))

(declare-fun b!4297007 () Bool)

(declare-fun e!2670508 () Bool)

(assert (=> b!4297007 (= e!2670507 e!2670508)))

(declare-fun res!1761185 () Bool)

(assert (=> b!4297007 (= res!1761185 (not ((_ is Leaf!22347) (c!731014 localTotalInput!12))))))

(assert (=> b!4297007 (=> res!1761185 e!2670508)))

(declare-fun b!4297008 () Bool)

(declare-fun inv!63459 (Conc!14444) Bool)

(assert (=> b!4297008 (= e!2670508 (inv!63459 (c!731014 localTotalInput!12)))))

(assert (= (and d!1266257 c!731017) b!4297006))

(assert (= (and d!1266257 (not c!731017)) b!4297007))

(assert (= (and b!4297007 (not res!1761185)) b!4297008))

(declare-fun m!4889213 () Bool)

(assert (=> b!4297006 m!4889213))

(declare-fun m!4889215 () Bool)

(assert (=> b!4297008 m!4889215))

(assert (=> b!4296983 d!1266257))

(declare-fun d!1266259 () Bool)

(declare-fun lt!1518690 () Int)

(declare-fun size!35190 (List!48003) Int)

(declare-fun list!17372 (BalanceConc!28378) List!48003)

(assert (=> d!1266259 (= lt!1518690 (size!35190 (list!17372 (totalInput!4428 thiss!29019))))))

(declare-fun size!35191 (Conc!14444) Int)

(assert (=> d!1266259 (= lt!1518690 (size!35191 (c!731014 (totalInput!4428 thiss!29019))))))

(assert (=> d!1266259 (= (size!35189 (totalInput!4428 thiss!29019)) lt!1518690)))

(declare-fun bs!603831 () Bool)

(assert (= bs!603831 d!1266259))

(declare-fun m!4889217 () Bool)

(assert (=> bs!603831 m!4889217))

(assert (=> bs!603831 m!4889217))

(declare-fun m!4889219 () Bool)

(assert (=> bs!603831 m!4889219))

(declare-fun m!4889221 () Bool)

(assert (=> bs!603831 m!4889221))

(assert (=> b!4296975 d!1266259))

(declare-fun d!1266261 () Bool)

(declare-fun lambda!131774 () Int)

(declare-fun forall!8587 (List!48001 Int) Bool)

(assert (=> d!1266261 (= (inv!63456 setElem!26839) (forall!8587 (exprs!3393 setElem!26839) lambda!131774))))

(declare-fun bs!603832 () Bool)

(assert (= bs!603832 d!1266261))

(declare-fun m!4889223 () Bool)

(assert (=> bs!603832 m!4889223))

(assert (=> setNonEmpty!26839 d!1266261))

(declare-fun d!1266263 () Bool)

(declare-fun res!1761188 () Bool)

(declare-fun e!2670511 () Bool)

(assert (=> d!1266263 (=> (not res!1761188) (not e!2670511))))

(assert (=> d!1266263 (= res!1761188 ((_ is HashMap!4391) (cache!4531 thiss!29019)))))

(assert (=> d!1266263 (= (inv!63454 thiss!29019) e!2670511)))

(declare-fun b!4297011 () Bool)

(assert (=> b!4297011 (= e!2670511 (validCacheMapFindLongestMatch!96 (cache!4531 thiss!29019) (totalInput!4428 thiss!29019)))))

(assert (= (and d!1266263 res!1761188) b!4297011))

(assert (=> b!4297011 m!4889171))

(assert (=> start!412532 d!1266263))

(declare-fun d!1266265 () Bool)

(declare-fun isBalanced!3895 (Conc!14444) Bool)

(assert (=> d!1266265 (= (inv!63455 localTotalInput!12) (isBalanced!3895 (c!731014 localTotalInput!12)))))

(declare-fun bs!603833 () Bool)

(assert (= bs!603833 d!1266265))

(declare-fun m!4889225 () Bool)

(assert (=> bs!603833 m!4889225))

(assert (=> start!412532 d!1266265))

(declare-fun d!1266267 () Bool)

(declare-fun c!731018 () Bool)

(assert (=> d!1266267 (= c!731018 ((_ is Node!14444) (c!731014 (totalInput!4428 thiss!29019))))))

(declare-fun e!2670512 () Bool)

(assert (=> d!1266267 (= (inv!63457 (c!731014 (totalInput!4428 thiss!29019))) e!2670512)))

(declare-fun b!4297012 () Bool)

(assert (=> b!4297012 (= e!2670512 (inv!63458 (c!731014 (totalInput!4428 thiss!29019))))))

(declare-fun b!4297013 () Bool)

(declare-fun e!2670513 () Bool)

(assert (=> b!4297013 (= e!2670512 e!2670513)))

(declare-fun res!1761189 () Bool)

(assert (=> b!4297013 (= res!1761189 (not ((_ is Leaf!22347) (c!731014 (totalInput!4428 thiss!29019)))))))

(assert (=> b!4297013 (=> res!1761189 e!2670513)))

(declare-fun b!4297014 () Bool)

(assert (=> b!4297014 (= e!2670513 (inv!63459 (c!731014 (totalInput!4428 thiss!29019))))))

(assert (= (and d!1266267 c!731018) b!4297012))

(assert (= (and d!1266267 (not c!731018)) b!4297013))

(assert (= (and b!4297013 (not res!1761189)) b!4297014))

(declare-fun m!4889227 () Bool)

(assert (=> b!4297012 m!4889227))

(declare-fun m!4889229 () Bool)

(assert (=> b!4297014 m!4889229))

(assert (=> b!4296976 d!1266267))

(declare-fun d!1266269 () Bool)

(declare-fun res!1761194 () Bool)

(declare-fun e!2670516 () Bool)

(assert (=> d!1266269 (=> (not res!1761194) (not e!2670516))))

(assert (=> d!1266269 (= res!1761194 (>= (_2!26119 (_1!26120 (tuple2!45683 (tuple2!45681 z!500 from!940) res!14399))) 0))))

(assert (=> d!1266269 (= (validCacheMapFindLongestMatchBody!13 (tuple2!45683 (tuple2!45681 z!500 from!940) res!14399) localTotalInput!12) e!2670516)))

(declare-fun b!4297019 () Bool)

(declare-fun res!1761195 () Bool)

(assert (=> b!4297019 (=> (not res!1761195) (not e!2670516))))

(assert (=> b!4297019 (= res!1761195 (<= (_2!26119 (_1!26120 (tuple2!45683 (tuple2!45681 z!500 from!940) res!14399))) (size!35189 localTotalInput!12)))))

(declare-fun b!4297020 () Bool)

(assert (=> b!4297020 (= e!2670516 (= (_2!26120 (tuple2!45683 (tuple2!45681 z!500 from!940) res!14399)) (findLongestMatchInnerZipperFastV2!57 (_1!26119 (_1!26120 (tuple2!45683 (tuple2!45681 z!500 from!940) res!14399))) (_2!26119 (_1!26120 (tuple2!45683 (tuple2!45681 z!500 from!940) res!14399))) localTotalInput!12 (size!35189 localTotalInput!12))))))

(assert (= (and d!1266269 res!1761194) b!4297019))

(assert (= (and b!4297019 res!1761195) b!4297020))

(declare-fun m!4889231 () Bool)

(assert (=> b!4297019 m!4889231))

(assert (=> b!4297020 m!4889231))

(assert (=> b!4297020 m!4889231))

(declare-fun m!4889233 () Bool)

(assert (=> b!4297020 m!4889233))

(assert (=> b!4296986 d!1266269))

(declare-fun bs!603834 () Bool)

(declare-fun b!4297026 () Bool)

(assert (= bs!603834 (and b!4297026 b!4296980)))

(declare-fun lambda!131777 () Int)

(assert (=> bs!603834 (= (= (totalInput!4428 thiss!29019) localTotalInput!12) (= lambda!131777 lambda!131771))))

(assert (=> b!4297026 true))

(declare-fun d!1266271 () Bool)

(declare-fun res!1761200 () Bool)

(declare-fun e!2670519 () Bool)

(assert (=> d!1266271 (=> (not res!1761200) (not e!2670519))))

(assert (=> d!1266271 (= res!1761200 (valid!3462 (cache!4531 thiss!29019)))))

(assert (=> d!1266271 (= (validCacheMapFindLongestMatch!96 (cache!4531 thiss!29019) (totalInput!4428 thiss!29019)) e!2670519)))

(declare-fun b!4297025 () Bool)

(declare-fun res!1761201 () Bool)

(assert (=> b!4297025 (=> (not res!1761201) (not e!2670519))))

(assert (=> b!4297025 (= res!1761201 (invariantList!523 (toList!2149 (map!9837 (cache!4531 thiss!29019)))))))

(assert (=> b!4297026 (= e!2670519 (forall!8586 (toList!2149 (map!9837 (cache!4531 thiss!29019))) lambda!131777))))

(assert (= (and d!1266271 res!1761200) b!4297025))

(assert (= (and b!4297025 res!1761201) b!4297026))

(assert (=> d!1266271 m!4889199))

(assert (=> b!4297025 m!4889177))

(declare-fun m!4889236 () Bool)

(assert (=> b!4297025 m!4889236))

(assert (=> b!4297026 m!4889177))

(declare-fun m!4889238 () Bool)

(assert (=> b!4297026 m!4889238))

(assert (=> b!4296984 d!1266271))

(declare-fun d!1266273 () Bool)

(assert (=> d!1266273 (= (array_inv!5129 (_keys!4785 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))) (bvsge (size!35187 (_keys!4785 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296985 d!1266273))

(declare-fun d!1266275 () Bool)

(assert (=> d!1266275 (= (array_inv!5130 (_values!4766 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))) (bvsge (size!35188 (_values!4766 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296985 d!1266275))

(declare-fun d!1266277 () Bool)

(declare-fun res!1761206 () Bool)

(declare-fun e!2670522 () Bool)

(assert (=> d!1266277 (=> (not res!1761206) (not e!2670522))))

(declare-fun valid!3463 (MutLongMap!4485) Bool)

(assert (=> d!1266277 (= res!1761206 (valid!3463 (v!41808 (underlying!9200 (cache!4531 thiss!29019)))))))

(assert (=> d!1266277 (= (valid!3462 (cache!4531 thiss!29019)) e!2670522)))

(declare-fun b!4297031 () Bool)

(declare-fun res!1761207 () Bool)

(assert (=> b!4297031 (=> (not res!1761207) (not e!2670522))))

(declare-fun lambda!131780 () Int)

(declare-fun forall!8588 (List!48004 Int) Bool)

(assert (=> b!4297031 (= res!1761207 (forall!8588 (toList!2150 (map!9838 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))) lambda!131780))))

(declare-fun b!4297032 () Bool)

(declare-fun allKeysSameHashInMap!257 (ListLongMap!777 Hashable!4401) Bool)

(assert (=> b!4297032 (= e!2670522 (allKeysSameHashInMap!257 (map!9838 (v!41808 (underlying!9200 (cache!4531 thiss!29019)))) (hashF!6433 (cache!4531 thiss!29019))))))

(assert (= (and d!1266277 res!1761206) b!4297031))

(assert (= (and b!4297031 res!1761207) b!4297032))

(declare-fun m!4889240 () Bool)

(assert (=> d!1266277 m!4889240))

(assert (=> b!4297031 m!4889209))

(declare-fun m!4889242 () Bool)

(assert (=> b!4297031 m!4889242))

(assert (=> b!4297032 m!4889209))

(assert (=> b!4297032 m!4889209))

(declare-fun m!4889244 () Bool)

(assert (=> b!4297032 m!4889244))

(assert (=> b!4296988 d!1266277))

(declare-fun b!4297049 () Bool)

(declare-fun e!2670535 () Bool)

(assert (=> b!4297049 (= e!2670535 (<= from!940 (size!35189 (totalInput!4428 thiss!29019))))))

(declare-fun b!4297050 () Bool)

(declare-fun c!731027 () Bool)

(declare-fun lt!1518697 () (InoxSet Context!5786))

(declare-fun nullableZipper!782 ((InoxSet Context!5786)) Bool)

(assert (=> b!4297050 (= c!731027 (nullableZipper!782 lt!1518697))))

(declare-fun e!2670533 () Int)

(declare-fun e!2670534 () Int)

(assert (=> b!4297050 (= e!2670533 e!2670534)))

(declare-fun d!1266279 () Bool)

(declare-fun lt!1518699 () Int)

(assert (=> d!1266279 (and (>= lt!1518699 0) (<= lt!1518699 (- lt!1518684 from!940)))))

(declare-fun e!2670537 () Int)

(assert (=> d!1266279 (= lt!1518699 e!2670537)))

(declare-fun c!731026 () Bool)

(declare-fun e!2670536 () Bool)

(assert (=> d!1266279 (= c!731026 e!2670536)))

(declare-fun res!1761213 () Bool)

(assert (=> d!1266279 (=> res!1761213 e!2670536)))

(assert (=> d!1266279 (= res!1761213 (= from!940 lt!1518684))))

(assert (=> d!1266279 e!2670535))

(declare-fun res!1761212 () Bool)

(assert (=> d!1266279 (=> (not res!1761212) (not e!2670535))))

(assert (=> d!1266279 (= res!1761212 (>= from!940 0))))

(assert (=> d!1266279 (= (findLongestMatchInnerZipperFastV2!57 z!500 from!940 (totalInput!4428 thiss!29019) lt!1518684) lt!1518699)))

(declare-fun b!4297051 () Bool)

(assert (=> b!4297051 (= e!2670537 e!2670533)))

(declare-fun derivationStepZipper!559 ((InoxSet Context!5786) C!26204) (InoxSet Context!5786))

(declare-fun apply!10861 (BalanceConc!28378 Int) C!26204)

(assert (=> b!4297051 (= lt!1518697 (derivationStepZipper!559 z!500 (apply!10861 (totalInput!4428 thiss!29019) from!940)))))

(declare-fun lt!1518698 () Int)

(assert (=> b!4297051 (= lt!1518698 (findLongestMatchInnerZipperFastV2!57 lt!1518697 (+ from!940 1) (totalInput!4428 thiss!29019) lt!1518684))))

(declare-fun c!731025 () Bool)

(assert (=> b!4297051 (= c!731025 (> lt!1518698 0))))

(declare-fun b!4297052 () Bool)

(assert (=> b!4297052 (= e!2670533 (+ 1 lt!1518698))))

(declare-fun b!4297053 () Bool)

(declare-fun lostCauseZipper!662 ((InoxSet Context!5786)) Bool)

(assert (=> b!4297053 (= e!2670536 (lostCauseZipper!662 z!500))))

(declare-fun b!4297054 () Bool)

(assert (=> b!4297054 (= e!2670534 1)))

(declare-fun b!4297055 () Bool)

(assert (=> b!4297055 (= e!2670534 0)))

(declare-fun b!4297056 () Bool)

(assert (=> b!4297056 (= e!2670537 0)))

(assert (= (and d!1266279 res!1761212) b!4297049))

(assert (= (and d!1266279 (not res!1761213)) b!4297053))

(assert (= (and d!1266279 c!731026) b!4297056))

(assert (= (and d!1266279 (not c!731026)) b!4297051))

(assert (= (and b!4297051 c!731025) b!4297052))

(assert (= (and b!4297051 (not c!731025)) b!4297050))

(assert (= (and b!4297050 c!731027) b!4297054))

(assert (= (and b!4297050 (not c!731027)) b!4297055))

(assert (=> b!4297049 m!4889175))

(declare-fun m!4889246 () Bool)

(assert (=> b!4297050 m!4889246))

(declare-fun m!4889248 () Bool)

(assert (=> b!4297051 m!4889248))

(assert (=> b!4297051 m!4889248))

(declare-fun m!4889250 () Bool)

(assert (=> b!4297051 m!4889250))

(declare-fun m!4889252 () Bool)

(assert (=> b!4297051 m!4889252))

(declare-fun m!4889254 () Bool)

(assert (=> b!4297053 m!4889254))

(assert (=> b!4296989 d!1266279))

(declare-fun d!1266281 () Bool)

(assert (=> d!1266281 (= (inv!63455 (totalInput!4428 thiss!29019)) (isBalanced!3895 (c!731014 (totalInput!4428 thiss!29019))))))

(declare-fun bs!603835 () Bool)

(assert (= bs!603835 d!1266281))

(declare-fun m!4889256 () Bool)

(assert (=> bs!603835 m!4889256))

(assert (=> b!4296977 d!1266281))

(declare-fun e!2670542 () Bool)

(declare-fun b!4297065 () Bool)

(declare-fun tp!1319900 () Bool)

(declare-fun tp!1319902 () Bool)

(assert (=> b!4297065 (= e!2670542 (and (inv!63457 (left!35516 (c!731014 (totalInput!4428 thiss!29019)))) tp!1319902 (inv!63457 (right!35846 (c!731014 (totalInput!4428 thiss!29019)))) tp!1319900))))

(declare-fun b!4297067 () Bool)

(declare-fun e!2670543 () Bool)

(declare-fun tp!1319901 () Bool)

(assert (=> b!4297067 (= e!2670543 tp!1319901)))

(declare-fun b!4297066 () Bool)

(declare-fun inv!63460 (IArray!28949) Bool)

(assert (=> b!4297066 (= e!2670542 (and (inv!63460 (xs!17750 (c!731014 (totalInput!4428 thiss!29019)))) e!2670543))))

(assert (=> b!4296976 (= tp!1319887 (and (inv!63457 (c!731014 (totalInput!4428 thiss!29019))) e!2670542))))

(assert (= (and b!4296976 ((_ is Node!14444) (c!731014 (totalInput!4428 thiss!29019)))) b!4297065))

(assert (= b!4297066 b!4297067))

(assert (= (and b!4296976 ((_ is Leaf!22347) (c!731014 (totalInput!4428 thiss!29019)))) b!4297066))

(declare-fun m!4889258 () Bool)

(assert (=> b!4297065 m!4889258))

(declare-fun m!4889260 () Bool)

(assert (=> b!4297065 m!4889260))

(declare-fun m!4889262 () Bool)

(assert (=> b!4297066 m!4889262))

(assert (=> b!4296976 m!4889185))

(declare-fun setIsEmpty!26842 () Bool)

(declare-fun setRes!26842 () Bool)

(assert (=> setIsEmpty!26842 setRes!26842))

(declare-fun e!2670549 () Bool)

(assert (=> b!4296991 (= tp!1319890 e!2670549)))

(declare-fun b!4297074 () Bool)

(declare-fun tp!1319909 () Bool)

(assert (=> b!4297074 (= e!2670549 (and setRes!26842 tp!1319909))))

(declare-fun condSetEmpty!26842 () Bool)

(assert (=> b!4297074 (= condSetEmpty!26842 (= (_1!26119 (_1!26120 (h!53298 mapDefault!20157))) ((as const (Array Context!5786 Bool)) false)))))

(declare-fun b!4297075 () Bool)

(declare-fun e!2670548 () Bool)

(declare-fun tp!1319911 () Bool)

(assert (=> b!4297075 (= e!2670548 tp!1319911)))

(declare-fun tp!1319910 () Bool)

(declare-fun setNonEmpty!26842 () Bool)

(declare-fun setElem!26842 () Context!5786)

(assert (=> setNonEmpty!26842 (= setRes!26842 (and tp!1319910 (inv!63456 setElem!26842) e!2670548))))

(declare-fun setRest!26842 () (InoxSet Context!5786))

(assert (=> setNonEmpty!26842 (= (_1!26119 (_1!26120 (h!53298 mapDefault!20157))) ((_ map or) (store ((as const (Array Context!5786 Bool)) false) setElem!26842 true) setRest!26842))))

(assert (= (and b!4297074 condSetEmpty!26842) setIsEmpty!26842))

(assert (= (and b!4297074 (not condSetEmpty!26842)) setNonEmpty!26842))

(assert (= setNonEmpty!26842 b!4297075))

(assert (= (and b!4296991 ((_ is Cons!47878) mapDefault!20157)) b!4297074))

(declare-fun m!4889264 () Bool)

(assert (=> setNonEmpty!26842 m!4889264))

(declare-fun b!4297080 () Bool)

(declare-fun e!2670552 () Bool)

(declare-fun tp!1319916 () Bool)

(declare-fun tp!1319917 () Bool)

(assert (=> b!4297080 (= e!2670552 (and tp!1319916 tp!1319917))))

(assert (=> b!4296979 (= tp!1319889 e!2670552)))

(assert (= (and b!4296979 ((_ is Cons!47877) (exprs!3393 setElem!26839))) b!4297080))

(declare-fun setIsEmpty!26843 () Bool)

(declare-fun setRes!26843 () Bool)

(assert (=> setIsEmpty!26843 setRes!26843))

(declare-fun e!2670554 () Bool)

(assert (=> b!4296985 (= tp!1319884 e!2670554)))

(declare-fun b!4297081 () Bool)

(declare-fun tp!1319918 () Bool)

(assert (=> b!4297081 (= e!2670554 (and setRes!26843 tp!1319918))))

(declare-fun condSetEmpty!26843 () Bool)

(assert (=> b!4297081 (= condSetEmpty!26843 (= (_1!26119 (_1!26120 (h!53298 (zeroValue!4744 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))))) ((as const (Array Context!5786 Bool)) false)))))

(declare-fun b!4297082 () Bool)

(declare-fun e!2670553 () Bool)

(declare-fun tp!1319920 () Bool)

(assert (=> b!4297082 (= e!2670553 tp!1319920)))

(declare-fun tp!1319919 () Bool)

(declare-fun setNonEmpty!26843 () Bool)

(declare-fun setElem!26843 () Context!5786)

(assert (=> setNonEmpty!26843 (= setRes!26843 (and tp!1319919 (inv!63456 setElem!26843) e!2670553))))

(declare-fun setRest!26843 () (InoxSet Context!5786))

(assert (=> setNonEmpty!26843 (= (_1!26119 (_1!26120 (h!53298 (zeroValue!4744 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5786 Bool)) false) setElem!26843 true) setRest!26843))))

(assert (= (and b!4297081 condSetEmpty!26843) setIsEmpty!26843))

(assert (= (and b!4297081 (not condSetEmpty!26843)) setNonEmpty!26843))

(assert (= setNonEmpty!26843 b!4297082))

(assert (= (and b!4296985 ((_ is Cons!47878) (zeroValue!4744 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019)))))))) b!4297081))

(declare-fun m!4889266 () Bool)

(assert (=> setNonEmpty!26843 m!4889266))

(declare-fun setIsEmpty!26844 () Bool)

(declare-fun setRes!26844 () Bool)

(assert (=> setIsEmpty!26844 setRes!26844))

(declare-fun e!2670556 () Bool)

(assert (=> b!4296985 (= tp!1319886 e!2670556)))

(declare-fun b!4297083 () Bool)

(declare-fun tp!1319921 () Bool)

(assert (=> b!4297083 (= e!2670556 (and setRes!26844 tp!1319921))))

(declare-fun condSetEmpty!26844 () Bool)

(assert (=> b!4297083 (= condSetEmpty!26844 (= (_1!26119 (_1!26120 (h!53298 (minValue!4744 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))))) ((as const (Array Context!5786 Bool)) false)))))

(declare-fun b!4297084 () Bool)

(declare-fun e!2670555 () Bool)

(declare-fun tp!1319923 () Bool)

(assert (=> b!4297084 (= e!2670555 tp!1319923)))

(declare-fun setNonEmpty!26844 () Bool)

(declare-fun tp!1319922 () Bool)

(declare-fun setElem!26844 () Context!5786)

(assert (=> setNonEmpty!26844 (= setRes!26844 (and tp!1319922 (inv!63456 setElem!26844) e!2670555))))

(declare-fun setRest!26844 () (InoxSet Context!5786))

(assert (=> setNonEmpty!26844 (= (_1!26119 (_1!26120 (h!53298 (minValue!4744 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5786 Bool)) false) setElem!26844 true) setRest!26844))))

(assert (= (and b!4297083 condSetEmpty!26844) setIsEmpty!26844))

(assert (= (and b!4297083 (not condSetEmpty!26844)) setNonEmpty!26844))

(assert (= setNonEmpty!26844 b!4297084))

(assert (= (and b!4296985 ((_ is Cons!47878) (minValue!4744 (v!41807 (underlying!9199 (v!41808 (underlying!9200 (cache!4531 thiss!29019)))))))) b!4297083))

(declare-fun m!4889268 () Bool)

(assert (=> setNonEmpty!26844 m!4889268))

(declare-fun e!2670557 () Bool)

(declare-fun b!4297085 () Bool)

(declare-fun tp!1319926 () Bool)

(declare-fun tp!1319924 () Bool)

(assert (=> b!4297085 (= e!2670557 (and (inv!63457 (left!35516 (c!731014 localTotalInput!12))) tp!1319926 (inv!63457 (right!35846 (c!731014 localTotalInput!12))) tp!1319924))))

(declare-fun b!4297087 () Bool)

(declare-fun e!2670558 () Bool)

(declare-fun tp!1319925 () Bool)

(assert (=> b!4297087 (= e!2670558 tp!1319925)))

(declare-fun b!4297086 () Bool)

(assert (=> b!4297086 (= e!2670557 (and (inv!63460 (xs!17750 (c!731014 localTotalInput!12))) e!2670558))))

(assert (=> b!4296983 (= tp!1319888 (and (inv!63457 (c!731014 localTotalInput!12)) e!2670557))))

(assert (= (and b!4296983 ((_ is Node!14444) (c!731014 localTotalInput!12))) b!4297085))

(assert (= b!4297086 b!4297087))

(assert (= (and b!4296983 ((_ is Leaf!22347) (c!731014 localTotalInput!12))) b!4297086))

(declare-fun m!4889270 () Bool)

(assert (=> b!4297085 m!4889270))

(declare-fun m!4889272 () Bool)

(assert (=> b!4297085 m!4889272))

(declare-fun m!4889274 () Bool)

(assert (=> b!4297086 m!4889274))

(assert (=> b!4296983 m!4889173))

(declare-fun b!4297098 () Bool)

(declare-fun e!2670570 () Bool)

(declare-fun setRes!26849 () Bool)

(declare-fun tp!1319941 () Bool)

(assert (=> b!4297098 (= e!2670570 (and setRes!26849 tp!1319941))))

(declare-fun condSetEmpty!26849 () Bool)

(declare-fun mapValue!20160 () List!48002)

(assert (=> b!4297098 (= condSetEmpty!26849 (= (_1!26119 (_1!26120 (h!53298 mapValue!20160))) ((as const (Array Context!5786 Bool)) false)))))

(declare-fun setNonEmpty!26849 () Bool)

(declare-fun setElem!26850 () Context!5786)

(declare-fun tp!1319947 () Bool)

(declare-fun e!2670569 () Bool)

(assert (=> setNonEmpty!26849 (= setRes!26849 (and tp!1319947 (inv!63456 setElem!26850) e!2670569))))

(declare-fun setRest!26850 () (InoxSet Context!5786))

(assert (=> setNonEmpty!26849 (= (_1!26119 (_1!26120 (h!53298 mapValue!20160))) ((_ map or) (store ((as const (Array Context!5786 Bool)) false) setElem!26850 true) setRest!26850))))

(declare-fun tp!1319943 () Bool)

(declare-fun setRes!26850 () Bool)

(declare-fun e!2670568 () Bool)

(declare-fun setNonEmpty!26850 () Bool)

(declare-fun setElem!26849 () Context!5786)

(assert (=> setNonEmpty!26850 (= setRes!26850 (and tp!1319943 (inv!63456 setElem!26849) e!2670568))))

(declare-fun mapDefault!20160 () List!48002)

(declare-fun setRest!26849 () (InoxSet Context!5786))

(assert (=> setNonEmpty!26850 (= (_1!26119 (_1!26120 (h!53298 mapDefault!20160))) ((_ map or) (store ((as const (Array Context!5786 Bool)) false) setElem!26849 true) setRest!26849))))

(declare-fun setIsEmpty!26849 () Bool)

(assert (=> setIsEmpty!26849 setRes!26850))

(declare-fun mapNonEmpty!20160 () Bool)

(declare-fun mapRes!20160 () Bool)

(declare-fun tp!1319946 () Bool)

(assert (=> mapNonEmpty!20160 (= mapRes!20160 (and tp!1319946 e!2670570))))

(declare-fun mapRest!20160 () (Array (_ BitVec 32) List!48002))

(declare-fun mapKey!20160 () (_ BitVec 32))

(assert (=> mapNonEmpty!20160 (= mapRest!20157 (store mapRest!20160 mapKey!20160 mapValue!20160))))

(declare-fun b!4297099 () Bool)

(declare-fun e!2670567 () Bool)

(declare-fun tp!1319944 () Bool)

(assert (=> b!4297099 (= e!2670567 (and setRes!26850 tp!1319944))))

(declare-fun condSetEmpty!26850 () Bool)

(assert (=> b!4297099 (= condSetEmpty!26850 (= (_1!26119 (_1!26120 (h!53298 mapDefault!20160))) ((as const (Array Context!5786 Bool)) false)))))

(declare-fun condMapEmpty!20160 () Bool)

(assert (=> mapNonEmpty!20157 (= condMapEmpty!20160 (= mapRest!20157 ((as const (Array (_ BitVec 32) List!48002)) mapDefault!20160)))))

(assert (=> mapNonEmpty!20157 (= tp!1319891 (and e!2670567 mapRes!20160))))

(declare-fun b!4297100 () Bool)

(declare-fun tp!1319945 () Bool)

(assert (=> b!4297100 (= e!2670568 tp!1319945)))

(declare-fun setIsEmpty!26850 () Bool)

(assert (=> setIsEmpty!26850 setRes!26849))

(declare-fun b!4297101 () Bool)

(declare-fun tp!1319942 () Bool)

(assert (=> b!4297101 (= e!2670569 tp!1319942)))

(declare-fun mapIsEmpty!20160 () Bool)

(assert (=> mapIsEmpty!20160 mapRes!20160))

(assert (= (and mapNonEmpty!20157 condMapEmpty!20160) mapIsEmpty!20160))

(assert (= (and mapNonEmpty!20157 (not condMapEmpty!20160)) mapNonEmpty!20160))

(assert (= (and b!4297098 condSetEmpty!26849) setIsEmpty!26850))

(assert (= (and b!4297098 (not condSetEmpty!26849)) setNonEmpty!26849))

(assert (= setNonEmpty!26849 b!4297101))

(assert (= (and mapNonEmpty!20160 ((_ is Cons!47878) mapValue!20160)) b!4297098))

(assert (= (and b!4297099 condSetEmpty!26850) setIsEmpty!26849))

(assert (= (and b!4297099 (not condSetEmpty!26850)) setNonEmpty!26850))

(assert (= setNonEmpty!26850 b!4297100))

(assert (= (and mapNonEmpty!20157 ((_ is Cons!47878) mapDefault!20160)) b!4297099))

(declare-fun m!4889276 () Bool)

(assert (=> setNonEmpty!26849 m!4889276))

(declare-fun m!4889278 () Bool)

(assert (=> setNonEmpty!26850 m!4889278))

(declare-fun m!4889280 () Bool)

(assert (=> mapNonEmpty!20160 m!4889280))

(declare-fun setIsEmpty!26851 () Bool)

(declare-fun setRes!26851 () Bool)

(assert (=> setIsEmpty!26851 setRes!26851))

(declare-fun e!2670572 () Bool)

(assert (=> mapNonEmpty!20157 (= tp!1319885 e!2670572)))

(declare-fun b!4297102 () Bool)

(declare-fun tp!1319948 () Bool)

(assert (=> b!4297102 (= e!2670572 (and setRes!26851 tp!1319948))))

(declare-fun condSetEmpty!26851 () Bool)

(assert (=> b!4297102 (= condSetEmpty!26851 (= (_1!26119 (_1!26120 (h!53298 mapValue!20157))) ((as const (Array Context!5786 Bool)) false)))))

(declare-fun b!4297103 () Bool)

(declare-fun e!2670571 () Bool)

(declare-fun tp!1319950 () Bool)

(assert (=> b!4297103 (= e!2670571 tp!1319950)))

(declare-fun tp!1319949 () Bool)

(declare-fun setElem!26851 () Context!5786)

(declare-fun setNonEmpty!26851 () Bool)

(assert (=> setNonEmpty!26851 (= setRes!26851 (and tp!1319949 (inv!63456 setElem!26851) e!2670571))))

(declare-fun setRest!26851 () (InoxSet Context!5786))

(assert (=> setNonEmpty!26851 (= (_1!26119 (_1!26120 (h!53298 mapValue!20157))) ((_ map or) (store ((as const (Array Context!5786 Bool)) false) setElem!26851 true) setRest!26851))))

(assert (= (and b!4297102 condSetEmpty!26851) setIsEmpty!26851))

(assert (= (and b!4297102 (not condSetEmpty!26851)) setNonEmpty!26851))

(assert (= setNonEmpty!26851 b!4297103))

(assert (= (and mapNonEmpty!20157 ((_ is Cons!47878) mapValue!20157)) b!4297102))

(declare-fun m!4889282 () Bool)

(assert (=> setNonEmpty!26851 m!4889282))

(declare-fun condSetEmpty!26854 () Bool)

(assert (=> setNonEmpty!26839 (= condSetEmpty!26854 (= setRest!26839 ((as const (Array Context!5786 Bool)) false)))))

(declare-fun setRes!26854 () Bool)

(assert (=> setNonEmpty!26839 (= tp!1319883 setRes!26854)))

(declare-fun setIsEmpty!26854 () Bool)

(assert (=> setIsEmpty!26854 setRes!26854))

(declare-fun tp!1319956 () Bool)

(declare-fun setElem!26854 () Context!5786)

(declare-fun setNonEmpty!26854 () Bool)

(declare-fun e!2670575 () Bool)

(assert (=> setNonEmpty!26854 (= setRes!26854 (and tp!1319956 (inv!63456 setElem!26854) e!2670575))))

(declare-fun setRest!26854 () (InoxSet Context!5786))

(assert (=> setNonEmpty!26854 (= setRest!26839 ((_ map or) (store ((as const (Array Context!5786 Bool)) false) setElem!26854 true) setRest!26854))))

(declare-fun b!4297108 () Bool)

(declare-fun tp!1319955 () Bool)

(assert (=> b!4297108 (= e!2670575 tp!1319955)))

(assert (= (and setNonEmpty!26839 condSetEmpty!26854) setIsEmpty!26854))

(assert (= (and setNonEmpty!26839 (not condSetEmpty!26854)) setNonEmpty!26854))

(assert (= setNonEmpty!26854 b!4297108))

(declare-fun m!4889284 () Bool)

(assert (=> setNonEmpty!26854 m!4889284))

(declare-fun b_lambda!126139 () Bool)

(assert (= b_lambda!126137 (or b!4296980 b_lambda!126139)))

(declare-fun bs!603836 () Bool)

(declare-fun d!1266283 () Bool)

(assert (= bs!603836 (and d!1266283 b!4296980)))

(assert (=> bs!603836 (= (dynLambda!20332 lambda!131771 (h!53298 (toList!2149 (map!9837 (cache!4531 thiss!29019))))) (validCacheMapFindLongestMatchBody!13 (h!53298 (toList!2149 (map!9837 (cache!4531 thiss!29019)))) localTotalInput!12))))

(declare-fun m!4889286 () Bool)

(assert (=> bs!603836 m!4889286))

(assert (=> b!4296998 d!1266283))

(check-sat (not setNonEmpty!26854) (not b!4297087) (not b!4297008) (not b_lambda!126139) b_and!339031 (not setNonEmpty!26851) (not b!4297065) (not d!1266259) (not d!1266255) (not b!4297053) (not b!4297083) (not b!4297049) (not bs!603836) (not setNonEmpty!26842) (not b!4297075) (not b!4297103) (not setNonEmpty!26850) (not b!4297102) (not b!4296976) (not b!4297067) (not d!1266261) (not b!4297026) (not b!4297080) (not b!4297011) (not b_next!128521) (not d!1266265) (not b!4297014) (not b!4297020) (not b!4297006) (not b!4297074) (not b!4296999) (not setNonEmpty!26844) (not b!4297012) (not setNonEmpty!26843) (not b!4297051) (not setNonEmpty!26849) (not b!4296983) (not d!1266271) (not b!4297031) (not mapNonEmpty!20160) (not b!4297032) (not b!4297108) (not b!4297050) (not b!4297085) (not b!4297066) (not d!1266277) (not d!1266281) (not b!4297098) (not b_next!128519) (not b!4297099) (not b!4297101) (not b!4297100) (not b!4297019) (not b!4297025) (not b!4297084) (not b!4297082) (not b!4297086) (not b!4297081) b_and!339033)
(check-sat b_and!339033 b_and!339031 (not b_next!128521) (not b_next!128519))
