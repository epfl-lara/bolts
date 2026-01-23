; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486490 () Bool)

(assert start!486490)

(declare-fun b!4757232 () Bool)

(declare-fun b_free!129167 () Bool)

(declare-fun b_next!129871 () Bool)

(assert (=> b!4757232 (= b_free!129167 (not b_next!129871))))

(declare-fun tp!1351335 () Bool)

(declare-fun b_and!340763 () Bool)

(assert (=> b!4757232 (= tp!1351335 b_and!340763)))

(declare-fun b!4757229 () Bool)

(declare-fun b_free!129169 () Bool)

(declare-fun b_next!129873 () Bool)

(assert (=> b!4757229 (= b_free!129169 (not b_next!129873))))

(declare-fun tp!1351334 () Bool)

(declare-fun b_and!340765 () Bool)

(assert (=> b!4757229 (= tp!1351334 b_and!340765)))

(declare-fun b!4757222 () Bool)

(declare-fun e!2967909 () Bool)

(declare-datatypes ((C!26220 0))(
  ( (C!26221 (val!20098 Int)) )
))
(declare-datatypes ((Regex!13011 0))(
  ( (ElementMatch!13011 (c!811785 C!26220)) (Concat!21330 (regOne!26534 Regex!13011) (regTwo!26534 Regex!13011)) (EmptyExpr!13011) (Star!13011 (reg!13340 Regex!13011)) (EmptyLang!13011) (Union!13011 (regOne!26535 Regex!13011) (regTwo!26535 Regex!13011)) )
))
(declare-datatypes ((List!53337 0))(
  ( (Nil!53213) (Cons!53213 (h!59624 Regex!13011) (t!360683 List!53337)) )
))
(declare-datatypes ((Context!5802 0))(
  ( (Context!5803 (exprs!3401 List!53337)) )
))
(declare-datatypes ((array!17508 0))(
  ( (array!17509 (arr!7811 (Array (_ BitVec 32) (_ BitVec 64))) (size!36004 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6474 0))(
  ( (HashableExt!6473 (__x!32187 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55096 0))(
  ( (tuple2!55097 (_1!30842 (InoxSet Context!5802)) (_2!30842 Int)) )
))
(declare-datatypes ((tuple2!55098 0))(
  ( (tuple2!55099 (_1!30843 tuple2!55096) (_2!30843 Int)) )
))
(declare-datatypes ((List!53338 0))(
  ( (Nil!53214) (Cons!53214 (h!59625 tuple2!55098) (t!360684 List!53338)) )
))
(declare-datatypes ((List!53339 0))(
  ( (Nil!53215) (Cons!53215 (h!59626 C!26220) (t!360685 List!53339)) )
))
(declare-datatypes ((IArray!28965 0))(
  ( (IArray!28966 (innerList!14540 List!53339)) )
))
(declare-datatypes ((Conc!14452 0))(
  ( (Node!14452 (left!39027 Conc!14452) (right!39357 Conc!14452) (csize!29134 Int) (cheight!14663 Int)) (Leaf!23530 (xs!17758 IArray!28965) (csize!29135 Int)) (Empty!14452) )
))
(declare-datatypes ((BalanceConc!28394 0))(
  ( (BalanceConc!28395 (c!811786 Conc!14452)) )
))
(declare-datatypes ((array!17510 0))(
  ( (array!17511 (arr!7812 (Array (_ BitVec 32) List!53338)) (size!36005 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9626 0))(
  ( (LongMapFixedSize!9627 (defaultEntry!5227 Int) (mask!14505 (_ BitVec 32)) (extraKeys!5083 (_ BitVec 32)) (zeroValue!5096 List!53338) (minValue!5096 List!53338) (_size!9651 (_ BitVec 32)) (_keys!5148 array!17508) (_values!5121 array!17510) (_vacant!4878 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19017 0))(
  ( (Cell!19018 (v!47285 LongMapFixedSize!9626)) )
))
(declare-datatypes ((MutLongMap!4813 0))(
  ( (LongMap!4813 (underlying!9833 Cell!19017)) (MutLongMapExt!4812 (__x!32188 Int)) )
))
(declare-datatypes ((Cell!19019 0))(
  ( (Cell!19020 (v!47286 MutLongMap!4813)) )
))
(declare-datatypes ((MutableMap!4697 0))(
  ( (MutableMapExt!4696 (__x!32189 Int)) (HashMap!4697 (underlying!9834 Cell!19019) (hashF!12284 Hashable!6474) (_size!9652 (_ BitVec 32)) (defaultValue!4868 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!592 0))(
  ( (CacheFindLongestMatch!593 (cache!4539 MutableMap!4697) (totalInput!4443 BalanceConc!28394)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!592)

(declare-fun tp!1351336 () Bool)

(declare-fun inv!68640 (Conc!14452) Bool)

(assert (=> b!4757222 (= e!2967909 (and (inv!68640 (c!811786 (totalInput!4443 thiss!28972))) tp!1351336))))

(declare-fun setIsEmpty!26908 () Bool)

(declare-fun setRes!26908 () Bool)

(assert (=> setIsEmpty!26908 setRes!26908))

(declare-fun b!4757223 () Bool)

(declare-fun from!930 () Int)

(declare-fun lt!1923264 () Int)

(declare-fun lt!1923265 () tuple2!55096)

(declare-fun e!2967908 () Bool)

(declare-fun z!490 () (InoxSet Context!5802))

(declare-fun findLongestMatchInnerZipperFastV2!61 ((InoxSet Context!5802) Int BalanceConc!28394 Int) Int)

(declare-fun apply!12501 (MutableMap!4697 tuple2!55096) Int)

(assert (=> b!4757223 (= e!2967908 (= (findLongestMatchInnerZipperFastV2!61 z!490 from!930 (totalInput!4443 thiss!28972) lt!1923264) (apply!12501 (cache!4539 thiss!28972) lt!1923265)))))

(declare-fun tp!1351340 () Bool)

(declare-fun setElem!26908 () Context!5802)

(declare-fun e!2967915 () Bool)

(declare-fun setNonEmpty!26908 () Bool)

(declare-fun inv!68641 (Context!5802) Bool)

(assert (=> setNonEmpty!26908 (= setRes!26908 (and tp!1351340 (inv!68641 setElem!26908) e!2967915))))

(declare-fun setRest!26908 () (InoxSet Context!5802))

(assert (=> setNonEmpty!26908 (= z!490 ((_ map or) (store ((as const (Array Context!5802 Bool)) false) setElem!26908 true) setRest!26908))))

(declare-fun b!4757224 () Bool)

(declare-fun e!2967906 () Bool)

(assert (=> b!4757224 (= e!2967906 e!2967908)))

(declare-fun res!2018259 () Bool)

(assert (=> b!4757224 (=> (not res!2018259) (not e!2967908))))

(assert (=> b!4757224 (= res!2018259 (<= from!930 lt!1923264))))

(declare-fun size!36006 (BalanceConc!28394) Int)

(assert (=> b!4757224 (= lt!1923264 (size!36006 (totalInput!4443 thiss!28972)))))

(declare-fun mapIsEmpty!21425 () Bool)

(declare-fun mapRes!21425 () Bool)

(assert (=> mapIsEmpty!21425 mapRes!21425))

(declare-fun b!4757225 () Bool)

(declare-fun e!2967916 () Bool)

(declare-fun e!2967918 () Bool)

(declare-fun lt!1923266 () MutLongMap!4813)

(get-info :version)

(assert (=> b!4757225 (= e!2967916 (and e!2967918 ((_ is LongMap!4813) lt!1923266)))))

(assert (=> b!4757225 (= lt!1923266 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))

(declare-fun b!4757226 () Bool)

(declare-fun e!2967912 () Bool)

(declare-fun tp!1351338 () Bool)

(assert (=> b!4757226 (= e!2967912 (and tp!1351338 mapRes!21425))))

(declare-fun condMapEmpty!21425 () Bool)

(declare-fun mapDefault!21425 () List!53338)

(assert (=> b!4757226 (= condMapEmpty!21425 (= (arr!7812 (_values!5121 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53338)) mapDefault!21425)))))

(declare-fun b!4757227 () Bool)

(declare-fun e!2967919 () Bool)

(declare-fun valid!3832 (MutableMap!4697) Bool)

(assert (=> b!4757227 (= e!2967919 (valid!3832 (cache!4539 thiss!28972)))))

(declare-fun b!4757228 () Bool)

(declare-fun e!2967911 () Bool)

(assert (=> b!4757228 (= e!2967911 (not e!2967919))))

(declare-fun res!2018257 () Bool)

(assert (=> b!4757228 (=> res!2018257 e!2967919)))

(assert (=> b!4757228 (= res!2018257 (not ((_ is HashMap!4697) (cache!4539 thiss!28972))))))

(assert (=> b!4757228 e!2967906))

(declare-fun res!2018258 () Bool)

(assert (=> b!4757228 (=> (not res!2018258) (not e!2967906))))

(assert (=> b!4757228 (= res!2018258 (>= from!930 0))))

(declare-datatypes ((Unit!137725 0))(
  ( (Unit!137726) )
))
(declare-fun lt!1923263 () Unit!137725)

(declare-fun lemmaIfInCacheThenValid!72 (CacheFindLongestMatch!592 (InoxSet Context!5802) Int BalanceConc!28394) Unit!137725)

(assert (=> b!4757228 (= lt!1923263 (lemmaIfInCacheThenValid!72 thiss!28972 z!490 from!930 (totalInput!4443 thiss!28972)))))

(declare-fun tp!1351339 () Bool)

(declare-fun tp!1351332 () Bool)

(declare-fun e!2967920 () Bool)

(declare-fun array_inv!5623 (array!17508) Bool)

(declare-fun array_inv!5624 (array!17510) Bool)

(assert (=> b!4757229 (= e!2967920 (and tp!1351334 tp!1351339 tp!1351332 (array_inv!5623 (_keys!5148 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))) (array_inv!5624 (_values!5121 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))) e!2967912))))

(declare-fun e!2967910 () Bool)

(declare-fun b!4757230 () Bool)

(declare-fun e!2967913 () Bool)

(declare-fun inv!68642 (BalanceConc!28394) Bool)

(assert (=> b!4757230 (= e!2967913 (and e!2967910 (inv!68642 (totalInput!4443 thiss!28972)) e!2967909))))

(declare-fun b!4757231 () Bool)

(declare-fun e!2967907 () Bool)

(assert (=> b!4757231 (= e!2967918 e!2967907)))

(declare-fun mapNonEmpty!21425 () Bool)

(declare-fun tp!1351331 () Bool)

(declare-fun tp!1351337 () Bool)

(assert (=> mapNonEmpty!21425 (= mapRes!21425 (and tp!1351331 tp!1351337))))

(declare-fun mapValue!21425 () List!53338)

(declare-fun mapKey!21425 () (_ BitVec 32))

(declare-fun mapRest!21425 () (Array (_ BitVec 32) List!53338))

(assert (=> mapNonEmpty!21425 (= (arr!7812 (_values!5121 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))) (store mapRest!21425 mapKey!21425 mapValue!21425))))

(assert (=> b!4757232 (= e!2967910 (and e!2967916 tp!1351335))))

(declare-fun res!2018260 () Bool)

(declare-fun e!2967917 () Bool)

(assert (=> start!486490 (=> (not res!2018260) (not e!2967917))))

(declare-fun validCacheMapFindLongestMatch!101 (MutableMap!4697 BalanceConc!28394) Bool)

(assert (=> start!486490 (= res!2018260 (validCacheMapFindLongestMatch!101 (cache!4539 thiss!28972) (totalInput!4443 thiss!28972)))))

(assert (=> start!486490 e!2967917))

(declare-fun inv!68643 (CacheFindLongestMatch!592) Bool)

(assert (=> start!486490 (and (inv!68643 thiss!28972) e!2967913)))

(declare-fun condSetEmpty!26908 () Bool)

(assert (=> start!486490 (= condSetEmpty!26908 (= z!490 ((as const (Array Context!5802 Bool)) false)))))

(assert (=> start!486490 setRes!26908))

(assert (=> start!486490 true))

(declare-fun b!4757233 () Bool)

(assert (=> b!4757233 (= e!2967917 e!2967911)))

(declare-fun res!2018261 () Bool)

(assert (=> b!4757233 (=> (not res!2018261) (not e!2967911))))

(declare-fun contains!16601 (MutableMap!4697 tuple2!55096) Bool)

(assert (=> b!4757233 (= res!2018261 (contains!16601 (cache!4539 thiss!28972) lt!1923265))))

(assert (=> b!4757233 (= lt!1923265 (tuple2!55097 z!490 from!930))))

(declare-fun b!4757234 () Bool)

(declare-fun tp!1351333 () Bool)

(assert (=> b!4757234 (= e!2967915 tp!1351333)))

(declare-fun b!4757235 () Bool)

(assert (=> b!4757235 (= e!2967907 e!2967920)))

(assert (= (and start!486490 res!2018260) b!4757233))

(assert (= (and b!4757233 res!2018261) b!4757228))

(assert (= (and b!4757228 res!2018258) b!4757224))

(assert (= (and b!4757224 res!2018259) b!4757223))

(assert (= (and b!4757228 (not res!2018257)) b!4757227))

(assert (= (and b!4757226 condMapEmpty!21425) mapIsEmpty!21425))

(assert (= (and b!4757226 (not condMapEmpty!21425)) mapNonEmpty!21425))

(assert (= b!4757229 b!4757226))

(assert (= b!4757235 b!4757229))

(assert (= b!4757231 b!4757235))

(assert (= (and b!4757225 ((_ is LongMap!4813) (v!47286 (underlying!9834 (cache!4539 thiss!28972))))) b!4757231))

(assert (= b!4757232 b!4757225))

(assert (= (and b!4757230 ((_ is HashMap!4697) (cache!4539 thiss!28972))) b!4757232))

(assert (= b!4757230 b!4757222))

(assert (= start!486490 b!4757230))

(assert (= (and start!486490 condSetEmpty!26908) setIsEmpty!26908))

(assert (= (and start!486490 (not condSetEmpty!26908)) setNonEmpty!26908))

(assert (= setNonEmpty!26908 b!4757234))

(declare-fun m!5726946 () Bool)

(assert (=> b!4757230 m!5726946))

(declare-fun m!5726948 () Bool)

(assert (=> b!4757223 m!5726948))

(declare-fun m!5726950 () Bool)

(assert (=> b!4757223 m!5726950))

(declare-fun m!5726952 () Bool)

(assert (=> b!4757222 m!5726952))

(declare-fun m!5726954 () Bool)

(assert (=> b!4757233 m!5726954))

(declare-fun m!5726956 () Bool)

(assert (=> b!4757224 m!5726956))

(declare-fun m!5726958 () Bool)

(assert (=> start!486490 m!5726958))

(declare-fun m!5726960 () Bool)

(assert (=> start!486490 m!5726960))

(declare-fun m!5726962 () Bool)

(assert (=> b!4757227 m!5726962))

(declare-fun m!5726964 () Bool)

(assert (=> setNonEmpty!26908 m!5726964))

(declare-fun m!5726966 () Bool)

(assert (=> b!4757228 m!5726966))

(declare-fun m!5726968 () Bool)

(assert (=> b!4757229 m!5726968))

(declare-fun m!5726970 () Bool)

(assert (=> b!4757229 m!5726970))

(declare-fun m!5726972 () Bool)

(assert (=> mapNonEmpty!21425 m!5726972))

(check-sat (not b!4757233) (not b!4757224) (not b!4757230) (not start!486490) (not b!4757223) b_and!340763 (not b!4757234) (not b!4757229) (not b!4757228) (not setNonEmpty!26908) (not b!4757227) (not b!4757226) (not b_next!129873) (not b_next!129871) (not mapNonEmpty!21425) (not b!4757222) b_and!340765)
(check-sat b_and!340763 b_and!340765 (not b_next!129873) (not b_next!129871))
(get-model)

(declare-fun d!1521018 () Bool)

(declare-fun res!2018266 () Bool)

(declare-fun e!2967923 () Bool)

(assert (=> d!1521018 (=> (not res!2018266) (not e!2967923))))

(declare-fun valid!3833 (MutLongMap!4813) Bool)

(assert (=> d!1521018 (= res!2018266 (valid!3833 (v!47286 (underlying!9834 (cache!4539 thiss!28972)))))))

(assert (=> d!1521018 (= (valid!3832 (cache!4539 thiss!28972)) e!2967923)))

(declare-fun b!4757240 () Bool)

(declare-fun res!2018267 () Bool)

(assert (=> b!4757240 (=> (not res!2018267) (not e!2967923))))

(declare-fun lambda!223556 () Int)

(declare-datatypes ((tuple2!55100 0))(
  ( (tuple2!55101 (_1!30844 (_ BitVec 64)) (_2!30844 List!53338)) )
))
(declare-datatypes ((List!53340 0))(
  ( (Nil!53216) (Cons!53216 (h!59627 tuple2!55100) (t!360688 List!53340)) )
))
(declare-fun forall!11807 (List!53340 Int) Bool)

(declare-datatypes ((ListLongMap!4587 0))(
  ( (ListLongMap!4588 (toList!6191 List!53340)) )
))
(declare-fun map!11827 (MutLongMap!4813) ListLongMap!4587)

(assert (=> b!4757240 (= res!2018267 (forall!11807 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))) lambda!223556))))

(declare-fun b!4757241 () Bool)

(declare-fun allKeysSameHashInMap!1997 (ListLongMap!4587 Hashable!6474) Bool)

(assert (=> b!4757241 (= e!2967923 (allKeysSameHashInMap!1997 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972)))) (hashF!12284 (cache!4539 thiss!28972))))))

(assert (= (and d!1521018 res!2018266) b!4757240))

(assert (= (and b!4757240 res!2018267) b!4757241))

(declare-fun m!5726974 () Bool)

(assert (=> d!1521018 m!5726974))

(declare-fun m!5726976 () Bool)

(assert (=> b!4757240 m!5726976))

(declare-fun m!5726978 () Bool)

(assert (=> b!4757240 m!5726978))

(assert (=> b!4757241 m!5726976))

(assert (=> b!4757241 m!5726976))

(declare-fun m!5726980 () Bool)

(assert (=> b!4757241 m!5726980))

(assert (=> b!4757227 d!1521018))

(declare-fun d!1521020 () Bool)

(declare-fun lambda!223559 () Int)

(declare-fun forall!11808 (List!53337 Int) Bool)

(assert (=> d!1521020 (= (inv!68641 setElem!26908) (forall!11808 (exprs!3401 setElem!26908) lambda!223559))))

(declare-fun bs!1146962 () Bool)

(assert (= bs!1146962 d!1521020))

(declare-fun m!5726982 () Bool)

(assert (=> bs!1146962 m!5726982))

(assert (=> setNonEmpty!26908 d!1521020))

(declare-fun d!1521022 () Bool)

(declare-fun lt!1923269 () Int)

(declare-fun size!36007 (List!53339) Int)

(declare-fun list!17375 (BalanceConc!28394) List!53339)

(assert (=> d!1521022 (= lt!1923269 (size!36007 (list!17375 (totalInput!4443 thiss!28972))))))

(declare-fun size!36008 (Conc!14452) Int)

(assert (=> d!1521022 (= lt!1923269 (size!36008 (c!811786 (totalInput!4443 thiss!28972))))))

(assert (=> d!1521022 (= (size!36006 (totalInput!4443 thiss!28972)) lt!1923269)))

(declare-fun bs!1146963 () Bool)

(assert (= bs!1146963 d!1521022))

(declare-fun m!5726984 () Bool)

(assert (=> bs!1146963 m!5726984))

(assert (=> bs!1146963 m!5726984))

(declare-fun m!5726986 () Bool)

(assert (=> bs!1146963 m!5726986))

(declare-fun m!5726988 () Bool)

(assert (=> bs!1146963 m!5726988))

(assert (=> b!4757224 d!1521022))

(declare-fun d!1521024 () Bool)

(declare-fun e!2967928 () Bool)

(assert (=> d!1521024 e!2967928))

(declare-fun res!2018275 () Bool)

(assert (=> d!1521024 (=> res!2018275 e!2967928)))

(assert (=> d!1521024 (= res!2018275 (not (contains!16601 (cache!4539 thiss!28972) (tuple2!55097 z!490 from!930))))))

(declare-fun lt!1923272 () Unit!137725)

(declare-fun choose!33896 (CacheFindLongestMatch!592 (InoxSet Context!5802) Int BalanceConc!28394) Unit!137725)

(assert (=> d!1521024 (= lt!1923272 (choose!33896 thiss!28972 z!490 from!930 (totalInput!4443 thiss!28972)))))

(assert (=> d!1521024 (= (totalInput!4443 thiss!28972) (totalInput!4443 thiss!28972))))

(assert (=> d!1521024 (= (lemmaIfInCacheThenValid!72 thiss!28972 z!490 from!930 (totalInput!4443 thiss!28972)) lt!1923272)))

(declare-fun b!4757248 () Bool)

(declare-fun e!2967929 () Bool)

(assert (=> b!4757248 (= e!2967928 e!2967929)))

(declare-fun res!2018276 () Bool)

(assert (=> b!4757248 (=> (not res!2018276) (not e!2967929))))

(assert (=> b!4757248 (= res!2018276 (>= from!930 0))))

(declare-fun b!4757249 () Bool)

(declare-fun res!2018274 () Bool)

(assert (=> b!4757249 (=> (not res!2018274) (not e!2967929))))

(assert (=> b!4757249 (= res!2018274 (<= from!930 (size!36006 (totalInput!4443 thiss!28972))))))

(declare-fun b!4757250 () Bool)

(assert (=> b!4757250 (= e!2967929 (= (findLongestMatchInnerZipperFastV2!61 z!490 from!930 (totalInput!4443 thiss!28972) (size!36006 (totalInput!4443 thiss!28972))) (apply!12501 (cache!4539 thiss!28972) (tuple2!55097 z!490 from!930))))))

(assert (= (and d!1521024 (not res!2018275)) b!4757248))

(assert (= (and b!4757248 res!2018276) b!4757249))

(assert (= (and b!4757249 res!2018274) b!4757250))

(declare-fun m!5726990 () Bool)

(assert (=> d!1521024 m!5726990))

(declare-fun m!5726992 () Bool)

(assert (=> d!1521024 m!5726992))

(assert (=> b!4757249 m!5726956))

(assert (=> b!4757250 m!5726956))

(assert (=> b!4757250 m!5726956))

(declare-fun m!5726994 () Bool)

(assert (=> b!4757250 m!5726994))

(declare-fun m!5726996 () Bool)

(assert (=> b!4757250 m!5726996))

(assert (=> b!4757228 d!1521024))

(declare-fun d!1521026 () Bool)

(assert (=> d!1521026 (= (array_inv!5623 (_keys!5148 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))) (bvsge (size!36004 (_keys!5148 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))) #b00000000000000000000000000000000))))

(assert (=> b!4757229 d!1521026))

(declare-fun d!1521028 () Bool)

(assert (=> d!1521028 (= (array_inv!5624 (_values!5121 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))) (bvsge (size!36005 (_values!5121 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))) #b00000000000000000000000000000000))))

(assert (=> b!4757229 d!1521028))

(declare-fun bs!1146964 () Bool)

(declare-fun b!4757280 () Bool)

(assert (= bs!1146964 (and b!4757280 b!4757240)))

(declare-fun lambda!223562 () Int)

(assert (=> bs!1146964 (= lambda!223562 lambda!223556)))

(declare-fun call!333580 () (_ BitVec 64))

(declare-fun call!333584 () ListLongMap!4587)

(declare-fun call!333583 () List!53338)

(declare-fun c!811795 () Bool)

(declare-fun lt!1923330 () ListLongMap!4587)

(declare-fun bm!333575 () Bool)

(declare-fun apply!12502 (ListLongMap!4587 (_ BitVec 64)) List!53338)

(assert (=> bm!333575 (= call!333583 (apply!12502 (ite c!811795 lt!1923330 call!333584) call!333580))))

(declare-fun b!4757273 () Bool)

(declare-fun e!2967948 () Unit!137725)

(declare-fun Unit!137727 () Unit!137725)

(assert (=> b!4757273 (= e!2967948 Unit!137727)))

(declare-fun b!4757274 () Bool)

(declare-fun e!2967946 () Unit!137725)

(declare-fun Unit!137728 () Unit!137725)

(assert (=> b!4757274 (= e!2967946 Unit!137728)))

(declare-fun bm!333576 () Bool)

(declare-fun hash!4511 (Hashable!6474 tuple2!55096) (_ BitVec 64))

(assert (=> bm!333576 (= call!333580 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265))))

(declare-fun d!1521030 () Bool)

(declare-fun lt!1923313 () Bool)

(declare-datatypes ((ListMap!5689 0))(
  ( (ListMap!5690 (toList!6192 List!53338)) )
))
(declare-fun contains!16602 (ListMap!5689 tuple2!55096) Bool)

(declare-fun map!11828 (MutableMap!4697) ListMap!5689)

(assert (=> d!1521030 (= lt!1923313 (contains!16602 (map!11828 (cache!4539 thiss!28972)) lt!1923265))))

(declare-fun e!2967950 () Bool)

(assert (=> d!1521030 (= lt!1923313 e!2967950)))

(declare-fun res!2018283 () Bool)

(assert (=> d!1521030 (=> (not res!2018283) (not e!2967950))))

(declare-fun lt!1923326 () (_ BitVec 64))

(declare-fun contains!16603 (MutLongMap!4813 (_ BitVec 64)) Bool)

(assert (=> d!1521030 (= res!2018283 (contains!16603 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923326))))

(declare-fun lt!1923319 () Unit!137725)

(declare-fun e!2967944 () Unit!137725)

(assert (=> d!1521030 (= lt!1923319 e!2967944)))

(declare-fun extractMap!2110 (List!53340) ListMap!5689)

(assert (=> d!1521030 (= c!811795 (contains!16602 (extractMap!2110 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972)))))) lt!1923265))))

(declare-fun lt!1923328 () Unit!137725)

(assert (=> d!1521030 (= lt!1923328 e!2967946)))

(declare-fun c!811797 () Bool)

(assert (=> d!1521030 (= c!811797 (contains!16603 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923326))))

(assert (=> d!1521030 (= lt!1923326 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265))))

(assert (=> d!1521030 (valid!3832 (cache!4539 thiss!28972))))

(assert (=> d!1521030 (= (contains!16601 (cache!4539 thiss!28972) lt!1923265) lt!1923313)))

(declare-fun bm!333577 () Bool)

(declare-datatypes ((Option!12571 0))(
  ( (None!12570) (Some!12570 (v!47287 tuple2!55098)) )
))
(declare-fun call!333581 () Option!12571)

(declare-fun getPair!610 (List!53338 tuple2!55096) Option!12571)

(assert (=> bm!333577 (= call!333581 (getPair!610 call!333583 lt!1923265))))

(declare-fun b!4757275 () Bool)

(declare-fun e!2967949 () Bool)

(declare-fun call!333585 () Bool)

(assert (=> b!4757275 (= e!2967949 call!333585)))

(declare-fun b!4757276 () Bool)

(assert (=> b!4757276 (= e!2967944 e!2967948)))

(declare-fun res!2018285 () Bool)

(declare-fun call!333582 () Bool)

(assert (=> b!4757276 (= res!2018285 call!333582)))

(declare-fun e!2967947 () Bool)

(assert (=> b!4757276 (=> (not res!2018285) (not e!2967947))))

(declare-fun c!811798 () Bool)

(assert (=> b!4757276 (= c!811798 e!2967947)))

(declare-fun b!4757277 () Bool)

(assert (=> b!4757277 false))

(declare-fun lt!1923327 () Unit!137725)

(declare-fun lt!1923322 () Unit!137725)

(assert (=> b!4757277 (= lt!1923327 lt!1923322)))

(declare-fun lt!1923320 () List!53340)

(declare-fun lt!1923329 () List!53338)

(declare-fun contains!16604 (List!53340 tuple2!55100) Bool)

(assert (=> b!4757277 (contains!16604 lt!1923320 (tuple2!55101 lt!1923326 lt!1923329))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!888 (List!53340 (_ BitVec 64) List!53338) Unit!137725)

(assert (=> b!4757277 (= lt!1923322 (lemmaGetValueByKeyImpliesContainsTuple!888 lt!1923320 lt!1923326 lt!1923329))))

(declare-fun apply!12503 (MutLongMap!4813 (_ BitVec 64)) List!53338)

(assert (=> b!4757277 (= lt!1923329 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923326))))

(assert (=> b!4757277 (= lt!1923320 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))

(declare-fun lt!1923314 () Unit!137725)

(declare-fun lt!1923325 () Unit!137725)

(assert (=> b!4757277 (= lt!1923314 lt!1923325)))

(declare-fun lt!1923324 () List!53340)

(declare-datatypes ((Option!12572 0))(
  ( (None!12571) (Some!12571 (v!47288 List!53338)) )
))
(declare-fun isDefined!9760 (Option!12572) Bool)

(declare-fun getValueByKey!2120 (List!53340 (_ BitVec 64)) Option!12572)

(assert (=> b!4757277 (isDefined!9760 (getValueByKey!2120 lt!1923324 lt!1923326))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1946 (List!53340 (_ BitVec 64)) Unit!137725)

(assert (=> b!4757277 (= lt!1923325 (lemmaContainsKeyImpliesGetValueByKeyDefined!1946 lt!1923324 lt!1923326))))

(assert (=> b!4757277 (= lt!1923324 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))

(declare-fun lt!1923323 () Unit!137725)

(declare-fun lt!1923332 () Unit!137725)

(assert (=> b!4757277 (= lt!1923323 lt!1923332)))

(declare-fun lt!1923315 () List!53340)

(declare-fun containsKey!3629 (List!53340 (_ BitVec 64)) Bool)

(assert (=> b!4757277 (containsKey!3629 lt!1923315 lt!1923326)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!175 (List!53340 (_ BitVec 64)) Unit!137725)

(assert (=> b!4757277 (= lt!1923332 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!175 lt!1923315 lt!1923326))))

(assert (=> b!4757277 (= lt!1923315 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))

(declare-fun e!2967945 () Unit!137725)

(declare-fun Unit!137729 () Unit!137725)

(assert (=> b!4757277 (= e!2967945 Unit!137729)))

(declare-fun b!4757278 () Bool)

(assert (=> b!4757278 (= e!2967947 call!333585)))

(declare-fun bm!333578 () Bool)

(assert (=> bm!333578 (= call!333584 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972)))))))

(declare-fun b!4757279 () Bool)

(declare-fun isDefined!9761 (Option!12571) Bool)

(assert (=> b!4757279 (= e!2967950 (isDefined!9761 (getPair!610 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923326) lt!1923265)))))

(declare-fun bm!333579 () Bool)

(assert (=> bm!333579 (= call!333585 (isDefined!9761 call!333581))))

(declare-fun forallContained!3820 (List!53340 Int tuple2!55100) Unit!137725)

(assert (=> b!4757280 (= e!2967946 (forallContained!3820 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))) lambda!223562 (tuple2!55101 lt!1923326 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923326))))))

(declare-fun c!811796 () Bool)

(assert (=> b!4757280 (= c!811796 (not (contains!16604 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))) (tuple2!55101 lt!1923326 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923326)))))))

(declare-fun lt!1923316 () Unit!137725)

(assert (=> b!4757280 (= lt!1923316 e!2967945)))

(declare-fun b!4757281 () Bool)

(declare-fun Unit!137730 () Unit!137725)

(assert (=> b!4757281 (= e!2967945 Unit!137730)))

(declare-fun b!4757282 () Bool)

(declare-fun lt!1923331 () Unit!137725)

(assert (=> b!4757282 (= e!2967944 lt!1923331)))

(assert (=> b!4757282 (= lt!1923330 call!333584)))

(declare-fun lemmaInGenericMapThenInLongMap!174 (ListLongMap!4587 tuple2!55096 Hashable!6474) Unit!137725)

(assert (=> b!4757282 (= lt!1923331 (lemmaInGenericMapThenInLongMap!174 lt!1923330 lt!1923265 (hashF!12284 (cache!4539 thiss!28972))))))

(declare-fun res!2018284 () Bool)

(assert (=> b!4757282 (= res!2018284 call!333582)))

(assert (=> b!4757282 (=> (not res!2018284) (not e!2967949))))

(assert (=> b!4757282 e!2967949))

(declare-fun b!4757283 () Bool)

(assert (=> b!4757283 false))

(declare-fun lt!1923318 () Unit!137725)

(declare-fun lt!1923321 () Unit!137725)

(assert (=> b!4757283 (= lt!1923318 lt!1923321)))

(declare-fun lt!1923317 () ListLongMap!4587)

(assert (=> b!4757283 (contains!16602 (extractMap!2110 (toList!6191 lt!1923317)) lt!1923265)))

(declare-fun lemmaInLongMapThenInGenericMap!174 (ListLongMap!4587 tuple2!55096 Hashable!6474) Unit!137725)

(assert (=> b!4757283 (= lt!1923321 (lemmaInLongMapThenInGenericMap!174 lt!1923317 lt!1923265 (hashF!12284 (cache!4539 thiss!28972))))))

(assert (=> b!4757283 (= lt!1923317 call!333584)))

(declare-fun Unit!137731 () Unit!137725)

(assert (=> b!4757283 (= e!2967948 Unit!137731)))

(declare-fun bm!333580 () Bool)

(declare-fun contains!16605 (ListLongMap!4587 (_ BitVec 64)) Bool)

(assert (=> bm!333580 (= call!333582 (contains!16605 (ite c!811795 lt!1923330 call!333584) call!333580))))

(assert (= (and d!1521030 c!811797) b!4757280))

(assert (= (and d!1521030 (not c!811797)) b!4757274))

(assert (= (and b!4757280 c!811796) b!4757277))

(assert (= (and b!4757280 (not c!811796)) b!4757281))

(assert (= (and d!1521030 c!811795) b!4757282))

(assert (= (and d!1521030 (not c!811795)) b!4757276))

(assert (= (and b!4757282 res!2018284) b!4757275))

(assert (= (and b!4757276 res!2018285) b!4757278))

(assert (= (and b!4757276 c!811798) b!4757283))

(assert (= (and b!4757276 (not c!811798)) b!4757273))

(assert (= (or b!4757282 b!4757275 b!4757276 b!4757278) bm!333576))

(assert (= (or b!4757282 b!4757276 b!4757278 b!4757283) bm!333578))

(assert (= (or b!4757282 b!4757276) bm!333580))

(assert (= (or b!4757275 b!4757278) bm!333575))

(assert (= (or b!4757275 b!4757278) bm!333577))

(assert (= (or b!4757275 b!4757278) bm!333579))

(assert (= (and d!1521030 res!2018283) b!4757279))

(declare-fun m!5726998 () Bool)

(assert (=> bm!333575 m!5726998))

(declare-fun m!5727000 () Bool)

(assert (=> bm!333576 m!5727000))

(assert (=> bm!333578 m!5726976))

(assert (=> b!4757280 m!5726976))

(declare-fun m!5727002 () Bool)

(assert (=> b!4757280 m!5727002))

(declare-fun m!5727004 () Bool)

(assert (=> b!4757280 m!5727004))

(declare-fun m!5727006 () Bool)

(assert (=> b!4757280 m!5727006))

(declare-fun m!5727008 () Bool)

(assert (=> b!4757277 m!5727008))

(assert (=> b!4757277 m!5726976))

(declare-fun m!5727010 () Bool)

(assert (=> b!4757277 m!5727010))

(declare-fun m!5727012 () Bool)

(assert (=> b!4757277 m!5727012))

(declare-fun m!5727014 () Bool)

(assert (=> b!4757277 m!5727014))

(declare-fun m!5727016 () Bool)

(assert (=> b!4757277 m!5727016))

(declare-fun m!5727018 () Bool)

(assert (=> b!4757277 m!5727018))

(assert (=> b!4757277 m!5727010))

(assert (=> b!4757277 m!5727002))

(declare-fun m!5727020 () Bool)

(assert (=> b!4757277 m!5727020))

(declare-fun m!5727022 () Bool)

(assert (=> bm!333580 m!5727022))

(declare-fun m!5727024 () Bool)

(assert (=> b!4757283 m!5727024))

(assert (=> b!4757283 m!5727024))

(declare-fun m!5727026 () Bool)

(assert (=> b!4757283 m!5727026))

(declare-fun m!5727028 () Bool)

(assert (=> b!4757283 m!5727028))

(declare-fun m!5727030 () Bool)

(assert (=> b!4757282 m!5727030))

(declare-fun m!5727032 () Bool)

(assert (=> bm!333579 m!5727032))

(assert (=> d!1521030 m!5726976))

(declare-fun m!5727034 () Bool)

(assert (=> d!1521030 m!5727034))

(assert (=> d!1521030 m!5726962))

(declare-fun m!5727036 () Bool)

(assert (=> d!1521030 m!5727036))

(declare-fun m!5727038 () Bool)

(assert (=> d!1521030 m!5727038))

(declare-fun m!5727040 () Bool)

(assert (=> d!1521030 m!5727040))

(declare-fun m!5727042 () Bool)

(assert (=> d!1521030 m!5727042))

(assert (=> d!1521030 m!5727000))

(assert (=> d!1521030 m!5727040))

(assert (=> d!1521030 m!5727036))

(declare-fun m!5727044 () Bool)

(assert (=> bm!333577 m!5727044))

(assert (=> b!4757279 m!5727002))

(assert (=> b!4757279 m!5727002))

(declare-fun m!5727046 () Bool)

(assert (=> b!4757279 m!5727046))

(assert (=> b!4757279 m!5727046))

(declare-fun m!5727048 () Bool)

(assert (=> b!4757279 m!5727048))

(assert (=> b!4757233 d!1521030))

(declare-fun d!1521032 () Bool)

(declare-fun c!811801 () Bool)

(assert (=> d!1521032 (= c!811801 ((_ is Node!14452) (c!811786 (totalInput!4443 thiss!28972))))))

(declare-fun e!2967955 () Bool)

(assert (=> d!1521032 (= (inv!68640 (c!811786 (totalInput!4443 thiss!28972))) e!2967955)))

(declare-fun b!4757290 () Bool)

(declare-fun inv!68644 (Conc!14452) Bool)

(assert (=> b!4757290 (= e!2967955 (inv!68644 (c!811786 (totalInput!4443 thiss!28972))))))

(declare-fun b!4757291 () Bool)

(declare-fun e!2967956 () Bool)

(assert (=> b!4757291 (= e!2967955 e!2967956)))

(declare-fun res!2018288 () Bool)

(assert (=> b!4757291 (= res!2018288 (not ((_ is Leaf!23530) (c!811786 (totalInput!4443 thiss!28972)))))))

(assert (=> b!4757291 (=> res!2018288 e!2967956)))

(declare-fun b!4757292 () Bool)

(declare-fun inv!68645 (Conc!14452) Bool)

(assert (=> b!4757292 (= e!2967956 (inv!68645 (c!811786 (totalInput!4443 thiss!28972))))))

(assert (= (and d!1521032 c!811801) b!4757290))

(assert (= (and d!1521032 (not c!811801)) b!4757291))

(assert (= (and b!4757291 (not res!2018288)) b!4757292))

(declare-fun m!5727050 () Bool)

(assert (=> b!4757290 m!5727050))

(declare-fun m!5727052 () Bool)

(assert (=> b!4757292 m!5727052))

(assert (=> b!4757222 d!1521032))

(declare-fun d!1521034 () Bool)

(declare-fun isBalanced!3898 (Conc!14452) Bool)

(assert (=> d!1521034 (= (inv!68642 (totalInput!4443 thiss!28972)) (isBalanced!3898 (c!811786 (totalInput!4443 thiss!28972))))))

(declare-fun bs!1146965 () Bool)

(assert (= bs!1146965 d!1521034))

(declare-fun m!5727054 () Bool)

(assert (=> bs!1146965 m!5727054))

(assert (=> b!4757230 d!1521034))

(declare-fun b!4757310 () Bool)

(declare-fun e!2967968 () Int)

(declare-fun lt!1923339 () Int)

(assert (=> b!4757310 (= e!2967968 (+ 1 lt!1923339))))

(declare-fun b!4757311 () Bool)

(declare-fun e!2967971 () Int)

(assert (=> b!4757311 (= e!2967971 1)))

(declare-fun b!4757312 () Bool)

(declare-fun e!2967967 () Int)

(assert (=> b!4757312 (= e!2967967 e!2967968)))

(declare-fun lt!1923340 () (InoxSet Context!5802))

(declare-fun derivationStepZipper!562 ((InoxSet Context!5802) C!26220) (InoxSet Context!5802))

(declare-fun apply!12504 (BalanceConc!28394 Int) C!26220)

(assert (=> b!4757312 (= lt!1923340 (derivationStepZipper!562 z!490 (apply!12504 (totalInput!4443 thiss!28972) from!930)))))

(assert (=> b!4757312 (= lt!1923339 (findLongestMatchInnerZipperFastV2!61 lt!1923340 (+ from!930 1) (totalInput!4443 thiss!28972) lt!1923264))))

(declare-fun c!811809 () Bool)

(assert (=> b!4757312 (= c!811809 (> lt!1923339 0))))

(declare-fun b!4757313 () Bool)

(declare-fun e!2967969 () Bool)

(declare-fun lostCauseZipper!665 ((InoxSet Context!5802)) Bool)

(assert (=> b!4757313 (= e!2967969 (lostCauseZipper!665 z!490))))

(declare-fun b!4757314 () Bool)

(declare-fun e!2967970 () Bool)

(assert (=> b!4757314 (= e!2967970 (<= from!930 (size!36006 (totalInput!4443 thiss!28972))))))

(declare-fun b!4757309 () Bool)

(assert (=> b!4757309 (= e!2967971 0)))

(declare-fun d!1521036 () Bool)

(declare-fun lt!1923341 () Int)

(assert (=> d!1521036 (and (>= lt!1923341 0) (<= lt!1923341 (- lt!1923264 from!930)))))

(assert (=> d!1521036 (= lt!1923341 e!2967967)))

(declare-fun c!811808 () Bool)

(assert (=> d!1521036 (= c!811808 e!2967969)))

(declare-fun res!2018294 () Bool)

(assert (=> d!1521036 (=> res!2018294 e!2967969)))

(assert (=> d!1521036 (= res!2018294 (= from!930 lt!1923264))))

(assert (=> d!1521036 e!2967970))

(declare-fun res!2018293 () Bool)

(assert (=> d!1521036 (=> (not res!2018293) (not e!2967970))))

(assert (=> d!1521036 (= res!2018293 (>= from!930 0))))

(assert (=> d!1521036 (= (findLongestMatchInnerZipperFastV2!61 z!490 from!930 (totalInput!4443 thiss!28972) lt!1923264) lt!1923341)))

(declare-fun b!4757315 () Bool)

(declare-fun c!811810 () Bool)

(declare-fun nullableZipper!785 ((InoxSet Context!5802)) Bool)

(assert (=> b!4757315 (= c!811810 (nullableZipper!785 lt!1923340))))

(assert (=> b!4757315 (= e!2967968 e!2967971)))

(declare-fun b!4757316 () Bool)

(assert (=> b!4757316 (= e!2967967 0)))

(assert (= (and d!1521036 res!2018293) b!4757314))

(assert (= (and d!1521036 (not res!2018294)) b!4757313))

(assert (= (and d!1521036 c!811808) b!4757316))

(assert (= (and d!1521036 (not c!811808)) b!4757312))

(assert (= (and b!4757312 c!811809) b!4757310))

(assert (= (and b!4757312 (not c!811809)) b!4757315))

(assert (= (and b!4757315 c!811810) b!4757311))

(assert (= (and b!4757315 (not c!811810)) b!4757309))

(declare-fun m!5727056 () Bool)

(assert (=> b!4757312 m!5727056))

(assert (=> b!4757312 m!5727056))

(declare-fun m!5727058 () Bool)

(assert (=> b!4757312 m!5727058))

(declare-fun m!5727060 () Bool)

(assert (=> b!4757312 m!5727060))

(declare-fun m!5727062 () Bool)

(assert (=> b!4757313 m!5727062))

(assert (=> b!4757314 m!5726956))

(declare-fun m!5727064 () Bool)

(assert (=> b!4757315 m!5727064))

(assert (=> b!4757223 d!1521036))

(declare-fun bs!1146966 () Bool)

(declare-fun b!4757329 () Bool)

(assert (= bs!1146966 (and b!4757329 b!4757240)))

(declare-fun lambda!223569 () Int)

(assert (=> bs!1146966 (= lambda!223569 lambda!223556)))

(declare-fun bs!1146967 () Bool)

(assert (= bs!1146967 (and b!4757329 b!4757280)))

(assert (=> bs!1146967 (= lambda!223569 lambda!223562)))

(declare-fun lt!1923414 () (_ BitVec 64))

(declare-fun e!2967978 () Int)

(declare-fun get!17922 (Option!12571) tuple2!55098)

(assert (=> b!4757329 (= e!2967978 (_2!30843 (get!17922 (getPair!610 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923414) lt!1923265))))))

(assert (=> b!4757329 (= lt!1923414 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265))))

(declare-fun c!811819 () Bool)

(assert (=> b!4757329 (= c!811819 (not (contains!16604 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))) (tuple2!55101 lt!1923414 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923414)))))))

(declare-fun lt!1923418 () Unit!137725)

(declare-fun e!2967979 () Unit!137725)

(assert (=> b!4757329 (= lt!1923418 e!2967979)))

(declare-fun lt!1923407 () Unit!137725)

(assert (=> b!4757329 (= lt!1923407 (forallContained!3820 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))) lambda!223569 (tuple2!55101 lt!1923414 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923414))))))

(declare-fun lt!1923416 () ListLongMap!4587)

(assert (=> b!4757329 (= lt!1923416 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972)))))))

(declare-fun lt!1923409 () Unit!137725)

(declare-fun lemmaGetPairGetSameValueAsMap!42 (ListLongMap!4587 tuple2!55096 Int Hashable!6474) Unit!137725)

(assert (=> b!4757329 (= lt!1923409 (lemmaGetPairGetSameValueAsMap!42 lt!1923416 lt!1923265 (_2!30843 (get!17922 (getPair!610 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923414) lt!1923265))) (hashF!12284 (cache!4539 thiss!28972))))))

(declare-fun lt!1923415 () Unit!137725)

(declare-fun lemmaInGenMapThenLongMapContainsHash!816 (ListLongMap!4587 tuple2!55096 Hashable!6474) Unit!137725)

(assert (=> b!4757329 (= lt!1923415 (lemmaInGenMapThenLongMapContainsHash!816 lt!1923416 lt!1923265 (hashF!12284 (cache!4539 thiss!28972))))))

(assert (=> b!4757329 (contains!16605 lt!1923416 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265))))

(declare-fun lt!1923428 () Unit!137725)

(assert (=> b!4757329 (= lt!1923428 lt!1923415)))

(declare-fun lt!1923426 () (_ BitVec 64))

(assert (=> b!4757329 (= lt!1923426 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265))))

(declare-fun lt!1923412 () List!53338)

(assert (=> b!4757329 (= lt!1923412 (apply!12502 lt!1923416 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265)))))

(declare-fun lt!1923411 () Unit!137725)

(declare-fun lemmaGetValueImpliesTupleContained!415 (ListLongMap!4587 (_ BitVec 64) List!53338) Unit!137725)

(assert (=> b!4757329 (= lt!1923411 (lemmaGetValueImpliesTupleContained!415 lt!1923416 lt!1923426 lt!1923412))))

(assert (=> b!4757329 (contains!16604 (toList!6191 lt!1923416) (tuple2!55101 lt!1923426 lt!1923412))))

(declare-fun lt!1923430 () Unit!137725)

(assert (=> b!4757329 (= lt!1923430 lt!1923411)))

(declare-fun lt!1923406 () Unit!137725)

(assert (=> b!4757329 (= lt!1923406 (forallContained!3820 (toList!6191 lt!1923416) lambda!223569 (tuple2!55101 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265) (apply!12502 lt!1923416 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265)))))))

(declare-fun lt!1923405 () Unit!137725)

(declare-fun lemmaInGenMapThenGetPairDefined!406 (ListLongMap!4587 tuple2!55096 Hashable!6474) Unit!137725)

(assert (=> b!4757329 (= lt!1923405 (lemmaInGenMapThenGetPairDefined!406 lt!1923416 lt!1923265 (hashF!12284 (cache!4539 thiss!28972))))))

(declare-fun lt!1923410 () Unit!137725)

(assert (=> b!4757329 (= lt!1923410 (lemmaInGenMapThenLongMapContainsHash!816 lt!1923416 lt!1923265 (hashF!12284 (cache!4539 thiss!28972))))))

(declare-fun lt!1923413 () Unit!137725)

(assert (=> b!4757329 (= lt!1923413 lt!1923410)))

(declare-fun lt!1923425 () (_ BitVec 64))

(assert (=> b!4757329 (= lt!1923425 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265))))

(declare-fun lt!1923429 () List!53338)

(assert (=> b!4757329 (= lt!1923429 (apply!12502 lt!1923416 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265)))))

(declare-fun lt!1923420 () Unit!137725)

(assert (=> b!4757329 (= lt!1923420 (lemmaGetValueImpliesTupleContained!415 lt!1923416 lt!1923425 lt!1923429))))

(assert (=> b!4757329 (contains!16604 (toList!6191 lt!1923416) (tuple2!55101 lt!1923425 lt!1923429))))

(declare-fun lt!1923423 () Unit!137725)

(assert (=> b!4757329 (= lt!1923423 lt!1923420)))

(declare-fun lt!1923403 () Unit!137725)

(assert (=> b!4757329 (= lt!1923403 (forallContained!3820 (toList!6191 lt!1923416) lambda!223569 (tuple2!55101 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265) (apply!12502 lt!1923416 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265)))))))

(assert (=> b!4757329 (isDefined!9761 (getPair!610 (apply!12502 lt!1923416 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265)) lt!1923265))))

(declare-fun lt!1923421 () Unit!137725)

(assert (=> b!4757329 (= lt!1923421 lt!1923405)))

(declare-datatypes ((Option!12573 0))(
  ( (None!12572) (Some!12572 (v!47289 Int)) )
))
(declare-fun get!17923 (Option!12573) Int)

(declare-fun getValueByKey!2121 (List!53338 tuple2!55096) Option!12573)

(assert (=> b!4757329 (= (_2!30843 (get!17922 (getPair!610 (apply!12502 lt!1923416 (hash!4511 (hashF!12284 (cache!4539 thiss!28972)) lt!1923265)) lt!1923265))) (get!17923 (getValueByKey!2121 (toList!6192 (extractMap!2110 (toList!6191 lt!1923416))) lt!1923265)))))

(declare-fun lt!1923404 () Unit!137725)

(assert (=> b!4757329 (= lt!1923404 lt!1923409)))

(declare-fun b!4757330 () Bool)

(declare-fun dynLambda!21909 (Int tuple2!55096) Int)

(assert (=> b!4757330 (= e!2967978 (dynLambda!21909 (defaultValue!4868 (cache!4539 thiss!28972)) lt!1923265))))

(declare-fun lt!1923417 () Int)

(declare-fun b!4757332 () Bool)

(declare-fun e!2967980 () Bool)

(assert (=> b!4757332 (= e!2967980 (= lt!1923417 (get!17923 (getValueByKey!2121 (toList!6192 (map!11828 (cache!4539 thiss!28972))) lt!1923265))))))

(declare-fun b!4757333 () Bool)

(assert (=> b!4757333 (= e!2967980 (= lt!1923417 (dynLambda!21909 (defaultValue!4868 (cache!4539 thiss!28972)) lt!1923265)))))

(declare-fun b!4757334 () Bool)

(assert (=> b!4757334 false))

(declare-fun lt!1923427 () Unit!137725)

(declare-fun lt!1923424 () Unit!137725)

(assert (=> b!4757334 (= lt!1923427 lt!1923424)))

(declare-fun lt!1923431 () List!53340)

(declare-fun lt!1923402 () List!53338)

(assert (=> b!4757334 (contains!16604 lt!1923431 (tuple2!55101 lt!1923414 lt!1923402))))

(assert (=> b!4757334 (= lt!1923424 (lemmaGetValueByKeyImpliesContainsTuple!888 lt!1923431 lt!1923414 lt!1923402))))

(assert (=> b!4757334 (= lt!1923402 (apply!12503 (v!47286 (underlying!9834 (cache!4539 thiss!28972))) lt!1923414))))

(assert (=> b!4757334 (= lt!1923431 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))

(declare-fun lt!1923408 () Unit!137725)

(declare-fun lt!1923422 () Unit!137725)

(assert (=> b!4757334 (= lt!1923408 lt!1923422)))

(declare-fun lt!1923419 () List!53340)

(assert (=> b!4757334 (isDefined!9760 (getValueByKey!2120 lt!1923419 lt!1923414))))

(assert (=> b!4757334 (= lt!1923422 (lemmaContainsKeyImpliesGetValueByKeyDefined!1946 lt!1923419 lt!1923414))))

(assert (=> b!4757334 (= lt!1923419 (toList!6191 (map!11827 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))

(declare-fun Unit!137732 () Unit!137725)

(assert (=> b!4757334 (= e!2967979 Unit!137732)))

(declare-fun d!1521038 () Bool)

(assert (=> d!1521038 e!2967980))

(declare-fun c!811818 () Bool)

(assert (=> d!1521038 (= c!811818 (contains!16601 (cache!4539 thiss!28972) lt!1923265))))

(assert (=> d!1521038 (= lt!1923417 e!2967978)))

(declare-fun c!811817 () Bool)

(assert (=> d!1521038 (= c!811817 (not (contains!16601 (cache!4539 thiss!28972) lt!1923265)))))

(assert (=> d!1521038 (valid!3832 (cache!4539 thiss!28972))))

(assert (=> d!1521038 (= (apply!12501 (cache!4539 thiss!28972) lt!1923265) lt!1923417)))

(declare-fun b!4757331 () Bool)

(declare-fun Unit!137733 () Unit!137725)

(assert (=> b!4757331 (= e!2967979 Unit!137733)))

(assert (= (and d!1521038 c!811817) b!4757330))

(assert (= (and d!1521038 (not c!811817)) b!4757329))

(assert (= (and b!4757329 c!811819) b!4757334))

(assert (= (and b!4757329 (not c!811819)) b!4757331))

(assert (= (and d!1521038 c!811818) b!4757332))

(assert (= (and d!1521038 (not c!811818)) b!4757333))

(declare-fun b_lambda!183741 () Bool)

(assert (=> (not b_lambda!183741) (not b!4757330)))

(declare-fun t!360687 () Bool)

(declare-fun tb!257399 () Bool)

(assert (=> (and b!4757232 (= (defaultValue!4868 (cache!4539 thiss!28972)) (defaultValue!4868 (cache!4539 thiss!28972))) t!360687) tb!257399))

(declare-fun result!318824 () Bool)

(assert (=> tb!257399 (= result!318824 true)))

(assert (=> b!4757330 t!360687))

(declare-fun b_and!340767 () Bool)

(assert (= b_and!340763 (and (=> t!360687 result!318824) b_and!340767)))

(declare-fun b_lambda!183743 () Bool)

(assert (=> (not b_lambda!183743) (not b!4757333)))

(assert (=> b!4757333 t!360687))

(declare-fun b_and!340769 () Bool)

(assert (= b_and!340767 (and (=> t!360687 result!318824) b_and!340769)))

(declare-fun m!5727066 () Bool)

(assert (=> b!4757334 m!5727066))

(declare-fun m!5727068 () Bool)

(assert (=> b!4757334 m!5727068))

(declare-fun m!5727070 () Bool)

(assert (=> b!4757334 m!5727070))

(assert (=> b!4757334 m!5727070))

(declare-fun m!5727072 () Bool)

(assert (=> b!4757334 m!5727072))

(assert (=> b!4757334 m!5726976))

(declare-fun m!5727074 () Bool)

(assert (=> b!4757334 m!5727074))

(declare-fun m!5727076 () Bool)

(assert (=> b!4757334 m!5727076))

(declare-fun m!5727078 () Bool)

(assert (=> b!4757329 m!5727078))

(declare-fun m!5727080 () Bool)

(assert (=> b!4757329 m!5727080))

(declare-fun m!5727082 () Bool)

(assert (=> b!4757329 m!5727082))

(assert (=> b!4757329 m!5727000))

(declare-fun m!5727084 () Bool)

(assert (=> b!4757329 m!5727084))

(declare-fun m!5727086 () Bool)

(assert (=> b!4757329 m!5727086))

(declare-fun m!5727088 () Bool)

(assert (=> b!4757329 m!5727088))

(declare-fun m!5727090 () Bool)

(assert (=> b!4757329 m!5727090))

(declare-fun m!5727092 () Bool)

(assert (=> b!4757329 m!5727092))

(declare-fun m!5727094 () Bool)

(assert (=> b!4757329 m!5727094))

(declare-fun m!5727096 () Bool)

(assert (=> b!4757329 m!5727096))

(declare-fun m!5727098 () Bool)

(assert (=> b!4757329 m!5727098))

(declare-fun m!5727100 () Bool)

(assert (=> b!4757329 m!5727100))

(assert (=> b!4757329 m!5727000))

(assert (=> b!4757329 m!5727092))

(declare-fun m!5727102 () Bool)

(assert (=> b!4757329 m!5727102))

(assert (=> b!4757329 m!5727066))

(assert (=> b!4757329 m!5727080))

(declare-fun m!5727104 () Bool)

(assert (=> b!4757329 m!5727104))

(declare-fun m!5727106 () Bool)

(assert (=> b!4757329 m!5727106))

(declare-fun m!5727108 () Bool)

(assert (=> b!4757329 m!5727108))

(assert (=> b!4757329 m!5727066))

(assert (=> b!4757329 m!5727000))

(declare-fun m!5727110 () Bool)

(assert (=> b!4757329 m!5727110))

(assert (=> b!4757329 m!5727100))

(assert (=> b!4757329 m!5727096))

(declare-fun m!5727112 () Bool)

(assert (=> b!4757329 m!5727112))

(declare-fun m!5727114 () Bool)

(assert (=> b!4757329 m!5727114))

(declare-fun m!5727116 () Bool)

(assert (=> b!4757329 m!5727116))

(assert (=> b!4757329 m!5726976))

(assert (=> b!4757329 m!5727110))

(assert (=> b!4757329 m!5727096))

(assert (=> b!4757332 m!5727040))

(declare-fun m!5727118 () Bool)

(assert (=> b!4757332 m!5727118))

(assert (=> b!4757332 m!5727118))

(declare-fun m!5727120 () Bool)

(assert (=> b!4757332 m!5727120))

(assert (=> d!1521038 m!5726954))

(assert (=> d!1521038 m!5726962))

(declare-fun m!5727122 () Bool)

(assert (=> b!4757330 m!5727122))

(assert (=> b!4757333 m!5727122))

(assert (=> b!4757223 d!1521038))

(declare-fun b!4757340 () Bool)

(assert (=> b!4757340 true))

(declare-fun d!1521040 () Bool)

(declare-fun res!2018299 () Bool)

(declare-fun e!2967983 () Bool)

(assert (=> d!1521040 (=> (not res!2018299) (not e!2967983))))

(assert (=> d!1521040 (= res!2018299 (valid!3832 (cache!4539 thiss!28972)))))

(assert (=> d!1521040 (= (validCacheMapFindLongestMatch!101 (cache!4539 thiss!28972) (totalInput!4443 thiss!28972)) e!2967983)))

(declare-fun b!4757339 () Bool)

(declare-fun res!2018300 () Bool)

(assert (=> b!4757339 (=> (not res!2018300) (not e!2967983))))

(declare-fun invariantList!1635 (List!53338) Bool)

(assert (=> b!4757339 (= res!2018300 (invariantList!1635 (toList!6192 (map!11828 (cache!4539 thiss!28972)))))))

(declare-fun lambda!223572 () Int)

(declare-fun forall!11809 (List!53338 Int) Bool)

(assert (=> b!4757340 (= e!2967983 (forall!11809 (toList!6192 (map!11828 (cache!4539 thiss!28972))) lambda!223572))))

(assert (= (and d!1521040 res!2018299) b!4757339))

(assert (= (and b!4757339 res!2018300) b!4757340))

(assert (=> d!1521040 m!5726962))

(assert (=> b!4757339 m!5727040))

(declare-fun m!5727125 () Bool)

(assert (=> b!4757339 m!5727125))

(assert (=> b!4757340 m!5727040))

(declare-fun m!5727127 () Bool)

(assert (=> b!4757340 m!5727127))

(assert (=> start!486490 d!1521040))

(declare-fun d!1521042 () Bool)

(declare-fun res!2018303 () Bool)

(declare-fun e!2967986 () Bool)

(assert (=> d!1521042 (=> (not res!2018303) (not e!2967986))))

(assert (=> d!1521042 (= res!2018303 ((_ is HashMap!4697) (cache!4539 thiss!28972)))))

(assert (=> d!1521042 (= (inv!68643 thiss!28972) e!2967986)))

(declare-fun b!4757345 () Bool)

(assert (=> b!4757345 (= e!2967986 (validCacheMapFindLongestMatch!101 (cache!4539 thiss!28972) (totalInput!4443 thiss!28972)))))

(assert (= (and d!1521042 res!2018303) b!4757345))

(assert (=> b!4757345 m!5726958))

(assert (=> start!486490 d!1521042))

(declare-fun setNonEmpty!26913 () Bool)

(declare-fun setRes!26913 () Bool)

(declare-fun e!2967997 () Bool)

(declare-fun setElem!26913 () Context!5802)

(declare-fun tp!1351355 () Bool)

(assert (=> setNonEmpty!26913 (= setRes!26913 (and tp!1351355 (inv!68641 setElem!26913) e!2967997))))

(declare-fun mapDefault!21428 () List!53338)

(declare-fun setRest!26913 () (InoxSet Context!5802))

(assert (=> setNonEmpty!26913 (= (_1!30842 (_1!30843 (h!59625 mapDefault!21428))) ((_ map or) (store ((as const (Array Context!5802 Bool)) false) setElem!26913 true) setRest!26913))))

(declare-fun setIsEmpty!26913 () Bool)

(declare-fun setRes!26914 () Bool)

(assert (=> setIsEmpty!26913 setRes!26914))

(declare-fun mapNonEmpty!21428 () Bool)

(declare-fun mapRes!21428 () Bool)

(declare-fun tp!1351357 () Bool)

(declare-fun e!2967998 () Bool)

(assert (=> mapNonEmpty!21428 (= mapRes!21428 (and tp!1351357 e!2967998))))

(declare-fun mapKey!21428 () (_ BitVec 32))

(declare-fun mapValue!21428 () List!53338)

(declare-fun mapRest!21428 () (Array (_ BitVec 32) List!53338))

(assert (=> mapNonEmpty!21428 (= mapRest!21425 (store mapRest!21428 mapKey!21428 mapValue!21428))))

(declare-fun e!2967995 () Bool)

(declare-fun setElem!26914 () Context!5802)

(declare-fun setNonEmpty!26914 () Bool)

(declare-fun tp!1351358 () Bool)

(assert (=> setNonEmpty!26914 (= setRes!26914 (and tp!1351358 (inv!68641 setElem!26914) e!2967995))))

(declare-fun setRest!26914 () (InoxSet Context!5802))

(assert (=> setNonEmpty!26914 (= (_1!30842 (_1!30843 (h!59625 mapValue!21428))) ((_ map or) (store ((as const (Array Context!5802 Bool)) false) setElem!26914 true) setRest!26914))))

(declare-fun condMapEmpty!21428 () Bool)

(assert (=> mapNonEmpty!21425 (= condMapEmpty!21428 (= mapRest!21425 ((as const (Array (_ BitVec 32) List!53338)) mapDefault!21428)))))

(declare-fun e!2967996 () Bool)

(assert (=> mapNonEmpty!21425 (= tp!1351331 (and e!2967996 mapRes!21428))))

(declare-fun b!4757356 () Bool)

(declare-fun tp!1351361 () Bool)

(assert (=> b!4757356 (= e!2967997 tp!1351361)))

(declare-fun b!4757357 () Bool)

(declare-fun tp!1351360 () Bool)

(assert (=> b!4757357 (= e!2967998 (and setRes!26914 tp!1351360))))

(declare-fun condSetEmpty!26913 () Bool)

(assert (=> b!4757357 (= condSetEmpty!26913 (= (_1!30842 (_1!30843 (h!59625 mapValue!21428))) ((as const (Array Context!5802 Bool)) false)))))

(declare-fun b!4757358 () Bool)

(declare-fun tp!1351359 () Bool)

(assert (=> b!4757358 (= e!2967995 tp!1351359)))

(declare-fun mapIsEmpty!21428 () Bool)

(assert (=> mapIsEmpty!21428 mapRes!21428))

(declare-fun b!4757359 () Bool)

(declare-fun tp!1351356 () Bool)

(assert (=> b!4757359 (= e!2967996 (and setRes!26913 tp!1351356))))

(declare-fun condSetEmpty!26914 () Bool)

(assert (=> b!4757359 (= condSetEmpty!26914 (= (_1!30842 (_1!30843 (h!59625 mapDefault!21428))) ((as const (Array Context!5802 Bool)) false)))))

(declare-fun setIsEmpty!26914 () Bool)

(assert (=> setIsEmpty!26914 setRes!26913))

(assert (= (and mapNonEmpty!21425 condMapEmpty!21428) mapIsEmpty!21428))

(assert (= (and mapNonEmpty!21425 (not condMapEmpty!21428)) mapNonEmpty!21428))

(assert (= (and b!4757357 condSetEmpty!26913) setIsEmpty!26913))

(assert (= (and b!4757357 (not condSetEmpty!26913)) setNonEmpty!26914))

(assert (= setNonEmpty!26914 b!4757358))

(assert (= (and mapNonEmpty!21428 ((_ is Cons!53214) mapValue!21428)) b!4757357))

(assert (= (and b!4757359 condSetEmpty!26914) setIsEmpty!26914))

(assert (= (and b!4757359 (not condSetEmpty!26914)) setNonEmpty!26913))

(assert (= setNonEmpty!26913 b!4757356))

(assert (= (and mapNonEmpty!21425 ((_ is Cons!53214) mapDefault!21428)) b!4757359))

(declare-fun m!5727129 () Bool)

(assert (=> setNonEmpty!26913 m!5727129))

(declare-fun m!5727131 () Bool)

(assert (=> mapNonEmpty!21428 m!5727131))

(declare-fun m!5727133 () Bool)

(assert (=> setNonEmpty!26914 m!5727133))

(declare-fun b!4757366 () Bool)

(declare-fun e!2968004 () Bool)

(declare-fun setRes!26917 () Bool)

(declare-fun tp!1351369 () Bool)

(assert (=> b!4757366 (= e!2968004 (and setRes!26917 tp!1351369))))

(declare-fun condSetEmpty!26917 () Bool)

(assert (=> b!4757366 (= condSetEmpty!26917 (= (_1!30842 (_1!30843 (h!59625 mapValue!21425))) ((as const (Array Context!5802 Bool)) false)))))

(assert (=> mapNonEmpty!21425 (= tp!1351337 e!2968004)))

(declare-fun b!4757367 () Bool)

(declare-fun e!2968003 () Bool)

(declare-fun tp!1351370 () Bool)

(assert (=> b!4757367 (= e!2968003 tp!1351370)))

(declare-fun setIsEmpty!26917 () Bool)

(assert (=> setIsEmpty!26917 setRes!26917))

(declare-fun tp!1351368 () Bool)

(declare-fun setElem!26917 () Context!5802)

(declare-fun setNonEmpty!26917 () Bool)

(assert (=> setNonEmpty!26917 (= setRes!26917 (and tp!1351368 (inv!68641 setElem!26917) e!2968003))))

(declare-fun setRest!26917 () (InoxSet Context!5802))

(assert (=> setNonEmpty!26917 (= (_1!30842 (_1!30843 (h!59625 mapValue!21425))) ((_ map or) (store ((as const (Array Context!5802 Bool)) false) setElem!26917 true) setRest!26917))))

(assert (= (and b!4757366 condSetEmpty!26917) setIsEmpty!26917))

(assert (= (and b!4757366 (not condSetEmpty!26917)) setNonEmpty!26917))

(assert (= setNonEmpty!26917 b!4757367))

(assert (= (and mapNonEmpty!21425 ((_ is Cons!53214) mapValue!21425)) b!4757366))

(declare-fun m!5727135 () Bool)

(assert (=> setNonEmpty!26917 m!5727135))

(declare-fun condSetEmpty!26920 () Bool)

(assert (=> setNonEmpty!26908 (= condSetEmpty!26920 (= setRest!26908 ((as const (Array Context!5802 Bool)) false)))))

(declare-fun setRes!26920 () Bool)

(assert (=> setNonEmpty!26908 (= tp!1351340 setRes!26920)))

(declare-fun setIsEmpty!26920 () Bool)

(assert (=> setIsEmpty!26920 setRes!26920))

(declare-fun e!2968007 () Bool)

(declare-fun setNonEmpty!26920 () Bool)

(declare-fun setElem!26920 () Context!5802)

(declare-fun tp!1351376 () Bool)

(assert (=> setNonEmpty!26920 (= setRes!26920 (and tp!1351376 (inv!68641 setElem!26920) e!2968007))))

(declare-fun setRest!26920 () (InoxSet Context!5802))

(assert (=> setNonEmpty!26920 (= setRest!26908 ((_ map or) (store ((as const (Array Context!5802 Bool)) false) setElem!26920 true) setRest!26920))))

(declare-fun b!4757372 () Bool)

(declare-fun tp!1351375 () Bool)

(assert (=> b!4757372 (= e!2968007 tp!1351375)))

(assert (= (and setNonEmpty!26908 condSetEmpty!26920) setIsEmpty!26920))

(assert (= (and setNonEmpty!26908 (not condSetEmpty!26920)) setNonEmpty!26920))

(assert (= setNonEmpty!26920 b!4757372))

(declare-fun m!5727137 () Bool)

(assert (=> setNonEmpty!26920 m!5727137))

(declare-fun b!4757373 () Bool)

(declare-fun e!2968009 () Bool)

(declare-fun setRes!26921 () Bool)

(declare-fun tp!1351378 () Bool)

(assert (=> b!4757373 (= e!2968009 (and setRes!26921 tp!1351378))))

(declare-fun condSetEmpty!26921 () Bool)

(assert (=> b!4757373 (= condSetEmpty!26921 (= (_1!30842 (_1!30843 (h!59625 (zeroValue!5096 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))) ((as const (Array Context!5802 Bool)) false)))))

(assert (=> b!4757229 (= tp!1351339 e!2968009)))

(declare-fun b!4757374 () Bool)

(declare-fun e!2968008 () Bool)

(declare-fun tp!1351379 () Bool)

(assert (=> b!4757374 (= e!2968008 tp!1351379)))

(declare-fun setIsEmpty!26921 () Bool)

(assert (=> setIsEmpty!26921 setRes!26921))

(declare-fun tp!1351377 () Bool)

(declare-fun setNonEmpty!26921 () Bool)

(declare-fun setElem!26921 () Context!5802)

(assert (=> setNonEmpty!26921 (= setRes!26921 (and tp!1351377 (inv!68641 setElem!26921) e!2968008))))

(declare-fun setRest!26921 () (InoxSet Context!5802))

(assert (=> setNonEmpty!26921 (= (_1!30842 (_1!30843 (h!59625 (zeroValue!5096 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))) ((_ map or) (store ((as const (Array Context!5802 Bool)) false) setElem!26921 true) setRest!26921))))

(assert (= (and b!4757373 condSetEmpty!26921) setIsEmpty!26921))

(assert (= (and b!4757373 (not condSetEmpty!26921)) setNonEmpty!26921))

(assert (= setNonEmpty!26921 b!4757374))

(assert (= (and b!4757229 ((_ is Cons!53214) (zeroValue!5096 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972)))))))) b!4757373))

(declare-fun m!5727139 () Bool)

(assert (=> setNonEmpty!26921 m!5727139))

(declare-fun b!4757375 () Bool)

(declare-fun e!2968011 () Bool)

(declare-fun setRes!26922 () Bool)

(declare-fun tp!1351381 () Bool)

(assert (=> b!4757375 (= e!2968011 (and setRes!26922 tp!1351381))))

(declare-fun condSetEmpty!26922 () Bool)

(assert (=> b!4757375 (= condSetEmpty!26922 (= (_1!30842 (_1!30843 (h!59625 (minValue!5096 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))) ((as const (Array Context!5802 Bool)) false)))))

(assert (=> b!4757229 (= tp!1351332 e!2968011)))

(declare-fun b!4757376 () Bool)

(declare-fun e!2968010 () Bool)

(declare-fun tp!1351382 () Bool)

(assert (=> b!4757376 (= e!2968010 tp!1351382)))

(declare-fun setIsEmpty!26922 () Bool)

(assert (=> setIsEmpty!26922 setRes!26922))

(declare-fun setElem!26922 () Context!5802)

(declare-fun setNonEmpty!26922 () Bool)

(declare-fun tp!1351380 () Bool)

(assert (=> setNonEmpty!26922 (= setRes!26922 (and tp!1351380 (inv!68641 setElem!26922) e!2968010))))

(declare-fun setRest!26922 () (InoxSet Context!5802))

(assert (=> setNonEmpty!26922 (= (_1!30842 (_1!30843 (h!59625 (minValue!5096 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972))))))))) ((_ map or) (store ((as const (Array Context!5802 Bool)) false) setElem!26922 true) setRest!26922))))

(assert (= (and b!4757375 condSetEmpty!26922) setIsEmpty!26922))

(assert (= (and b!4757375 (not condSetEmpty!26922)) setNonEmpty!26922))

(assert (= setNonEmpty!26922 b!4757376))

(assert (= (and b!4757229 ((_ is Cons!53214) (minValue!5096 (v!47285 (underlying!9833 (v!47286 (underlying!9834 (cache!4539 thiss!28972)))))))) b!4757375))

(declare-fun m!5727141 () Bool)

(assert (=> setNonEmpty!26922 m!5727141))

(declare-fun b!4757381 () Bool)

(declare-fun e!2968014 () Bool)

(declare-fun tp!1351387 () Bool)

(declare-fun tp!1351388 () Bool)

(assert (=> b!4757381 (= e!2968014 (and tp!1351387 tp!1351388))))

(assert (=> b!4757234 (= tp!1351333 e!2968014)))

(assert (= (and b!4757234 ((_ is Cons!53213) (exprs!3401 setElem!26908))) b!4757381))

(declare-fun b!4757390 () Bool)

(declare-fun tp!1351396 () Bool)

(declare-fun e!2968019 () Bool)

(declare-fun tp!1351395 () Bool)

(assert (=> b!4757390 (= e!2968019 (and (inv!68640 (left!39027 (c!811786 (totalInput!4443 thiss!28972)))) tp!1351395 (inv!68640 (right!39357 (c!811786 (totalInput!4443 thiss!28972)))) tp!1351396))))

(declare-fun b!4757392 () Bool)

(declare-fun e!2968020 () Bool)

(declare-fun tp!1351397 () Bool)

(assert (=> b!4757392 (= e!2968020 tp!1351397)))

(declare-fun b!4757391 () Bool)

(declare-fun inv!68646 (IArray!28965) Bool)

(assert (=> b!4757391 (= e!2968019 (and (inv!68646 (xs!17758 (c!811786 (totalInput!4443 thiss!28972)))) e!2968020))))

(assert (=> b!4757222 (= tp!1351336 (and (inv!68640 (c!811786 (totalInput!4443 thiss!28972))) e!2968019))))

(assert (= (and b!4757222 ((_ is Node!14452) (c!811786 (totalInput!4443 thiss!28972)))) b!4757390))

(assert (= b!4757391 b!4757392))

(assert (= (and b!4757222 ((_ is Leaf!23530) (c!811786 (totalInput!4443 thiss!28972)))) b!4757391))

(declare-fun m!5727143 () Bool)

(assert (=> b!4757390 m!5727143))

(declare-fun m!5727145 () Bool)

(assert (=> b!4757390 m!5727145))

(declare-fun m!5727147 () Bool)

(assert (=> b!4757391 m!5727147))

(assert (=> b!4757222 m!5726952))

(declare-fun b!4757393 () Bool)

(declare-fun e!2968022 () Bool)

(declare-fun setRes!26923 () Bool)

(declare-fun tp!1351399 () Bool)

(assert (=> b!4757393 (= e!2968022 (and setRes!26923 tp!1351399))))

(declare-fun condSetEmpty!26923 () Bool)

(assert (=> b!4757393 (= condSetEmpty!26923 (= (_1!30842 (_1!30843 (h!59625 mapDefault!21425))) ((as const (Array Context!5802 Bool)) false)))))

(assert (=> b!4757226 (= tp!1351338 e!2968022)))

(declare-fun b!4757394 () Bool)

(declare-fun e!2968021 () Bool)

(declare-fun tp!1351400 () Bool)

(assert (=> b!4757394 (= e!2968021 tp!1351400)))

(declare-fun setIsEmpty!26923 () Bool)

(assert (=> setIsEmpty!26923 setRes!26923))

(declare-fun setNonEmpty!26923 () Bool)

(declare-fun setElem!26923 () Context!5802)

(declare-fun tp!1351398 () Bool)

(assert (=> setNonEmpty!26923 (= setRes!26923 (and tp!1351398 (inv!68641 setElem!26923) e!2968021))))

(declare-fun setRest!26923 () (InoxSet Context!5802))

(assert (=> setNonEmpty!26923 (= (_1!30842 (_1!30843 (h!59625 mapDefault!21425))) ((_ map or) (store ((as const (Array Context!5802 Bool)) false) setElem!26923 true) setRest!26923))))

(assert (= (and b!4757393 condSetEmpty!26923) setIsEmpty!26923))

(assert (= (and b!4757393 (not condSetEmpty!26923)) setNonEmpty!26923))

(assert (= setNonEmpty!26923 b!4757394))

(assert (= (and b!4757226 ((_ is Cons!53214) mapDefault!21425)) b!4757393))

(declare-fun m!5727149 () Bool)

(assert (=> setNonEmpty!26923 m!5727149))

(declare-fun b_lambda!183745 () Bool)

(assert (= b_lambda!183741 (or (and b!4757232 b_free!129167) b_lambda!183745)))

(declare-fun b_lambda!183747 () Bool)

(assert (= b_lambda!183743 (or (and b!4757232 b_free!129167) b_lambda!183747)))

(check-sat (not b!4757292) (not b!4757313) (not b!4757356) (not setNonEmpty!26922) (not b!4757283) (not b!4757392) (not b!4757376) (not d!1521018) (not bm!333576) (not b!4757277) (not b!4757240) (not b!4757241) (not b!4757280) (not b!4757315) (not b!4757334) (not d!1521038) (not b!4757394) (not b!4757375) b_and!340769 (not b!4757279) (not d!1521040) (not b!4757373) (not b_lambda!183747) (not bm!333579) (not bm!333575) (not b!4757393) (not b!4757329) (not setNonEmpty!26914) (not b!4757359) (not b!4757314) (not d!1521024) (not b!4757312) (not b!4757381) (not d!1521022) (not b!4757250) (not b_next!129873) (not bm!333577) (not b!4757374) (not bm!333578) (not setNonEmpty!26917) (not b!4757357) (not b!4757290) (not b_lambda!183745) (not setNonEmpty!26920) (not d!1521034) (not b!4757282) (not d!1521020) (not b!4757367) (not b!4757391) (not d!1521030) (not b!4757339) (not setNonEmpty!26921) (not b!4757345) (not b!4757366) (not b!4757249) (not b_next!129871) (not b!4757222) b_and!340765 (not b!4757358) (not setNonEmpty!26923) (not b!4757332) (not b!4757372) (not setNonEmpty!26913) (not b!4757340) (not b!4757390) (not bm!333580) (not mapNonEmpty!21428))
(check-sat b_and!340769 b_and!340765 (not b_next!129873) (not b_next!129871))
