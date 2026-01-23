; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486900 () Bool)

(assert start!486900)

(declare-fun b!4761133 () Bool)

(declare-fun b_free!129375 () Bool)

(declare-fun b_next!130079 () Bool)

(assert (=> b!4761133 (= b_free!129375 (not b_next!130079))))

(declare-fun tp!1353854 () Bool)

(declare-fun b_and!340999 () Bool)

(assert (=> b!4761133 (= tp!1353854 b_and!340999)))

(declare-fun b!4761139 () Bool)

(declare-fun b_free!129377 () Bool)

(declare-fun b_next!130081 () Bool)

(assert (=> b!4761139 (= b_free!129377 (not b_next!130081))))

(declare-fun tp!1353856 () Bool)

(declare-fun b_and!341001 () Bool)

(assert (=> b!4761139 (= tp!1353856 b_and!341001)))

(declare-fun b!4761140 () Bool)

(assert (=> b!4761140 true))

(declare-fun lt!1925056 () Int)

(declare-fun e!2971116 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!26324 0))(
  ( (C!26325 (val!20150 Int)) )
))
(declare-datatypes ((Regex!13063 0))(
  ( (ElementMatch!13063 (c!812183 C!26324)) (Concat!21382 (regOne!26638 Regex!13063) (regTwo!26638 Regex!13063)) (EmptyExpr!13063) (Star!13063 (reg!13392 Regex!13063)) (EmptyLang!13063) (Union!13063 (regOne!26639 Regex!13063) (regTwo!26639 Regex!13063)) )
))
(declare-datatypes ((List!53506 0))(
  ( (Nil!53382) (Cons!53382 (h!59793 Regex!13063) (t!360866 List!53506)) )
))
(declare-datatypes ((Context!5906 0))(
  ( (Context!5907 (exprs!3453 List!53506)) )
))
(declare-fun z!482 () (InoxSet Context!5906))

(declare-datatypes ((tuple2!55330 0))(
  ( (tuple2!55331 (_1!30959 (InoxSet Context!5906)) (_2!30959 Int)) )
))
(declare-datatypes ((tuple2!55332 0))(
  ( (tuple2!55333 (_1!30960 tuple2!55330) (_2!30960 Int)) )
))
(declare-datatypes ((List!53507 0))(
  ( (Nil!53383) (Cons!53383 (h!59794 tuple2!55332) (t!360867 List!53507)) )
))
(declare-datatypes ((List!53508 0))(
  ( (Nil!53384) (Cons!53384 (h!59795 C!26324) (t!360868 List!53508)) )
))
(declare-datatypes ((IArray!29069 0))(
  ( (IArray!29070 (innerList!14592 List!53508)) )
))
(declare-datatypes ((Conc!14504 0))(
  ( (Node!14504 (left!39161 Conc!14504) (right!39491 Conc!14504) (csize!29238 Int) (cheight!14715 Int)) (Leaf!23608 (xs!17810 IArray!29069) (csize!29239 Int)) (Empty!14504) )
))
(declare-datatypes ((Hashable!6526 0))(
  ( (HashableExt!6525 (__x!32343 Int)) )
))
(declare-datatypes ((array!17746 0))(
  ( (array!17747 (arr!7915 (Array (_ BitVec 32) (_ BitVec 64))) (size!36139 (_ BitVec 32))) )
))
(declare-datatypes ((array!17748 0))(
  ( (array!17749 (arr!7916 (Array (_ BitVec 32) List!53507)) (size!36140 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9730 0))(
  ( (LongMapFixedSize!9731 (defaultEntry!5279 Int) (mask!14583 (_ BitVec 32)) (extraKeys!5135 (_ BitVec 32)) (zeroValue!5148 List!53507) (minValue!5148 List!53507) (_size!9755 (_ BitVec 32)) (_keys!5200 array!17746) (_values!5173 array!17748) (_vacant!4930 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19225 0))(
  ( (Cell!19226 (v!47426 LongMapFixedSize!9730)) )
))
(declare-datatypes ((MutLongMap!4865 0))(
  ( (LongMap!4865 (underlying!9937 Cell!19225)) (MutLongMapExt!4864 (__x!32344 Int)) )
))
(declare-datatypes ((Cell!19227 0))(
  ( (Cell!19228 (v!47427 MutLongMap!4865)) )
))
(declare-datatypes ((MutableMap!4749 0))(
  ( (MutableMapExt!4748 (__x!32345 Int)) (HashMap!4749 (underlying!9938 Cell!19227) (hashF!12336 Hashable!6526) (_size!9756 (_ BitVec 32)) (defaultValue!4920 Int)) )
))
(declare-datatypes ((BalanceConc!28498 0))(
  ( (BalanceConc!28499 (c!812184 Conc!14504)) )
))
(declare-datatypes ((CacheFindLongestMatch!696 0))(
  ( (CacheFindLongestMatch!697 (cache!4591 MutableMap!4749) (totalInput!4517 BalanceConc!28498)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!696)

(declare-fun from!922 () Int)

(declare-fun b!4761127 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!73 ((InoxSet Context!5906) Int BalanceConc!28498 Int) Int)

(declare-fun size!36141 (BalanceConc!28498) Int)

(assert (=> b!4761127 (= e!2971116 (= (findLongestMatchInnerZipperFastV2!73 z!482 from!922 (totalInput!4517 thiss!28909) (size!36141 (totalInput!4517 thiss!28909))) lt!1925056))))

(declare-fun setIsEmpty!27256 () Bool)

(declare-fun setRes!27256 () Bool)

(assert (=> setIsEmpty!27256 setRes!27256))

(declare-fun b!4761128 () Bool)

(declare-fun e!2971113 () Bool)

(declare-fun e!2971119 () Bool)

(assert (=> b!4761128 (= e!2971113 e!2971119)))

(declare-fun e!2971117 () Bool)

(declare-fun e!2971110 () Bool)

(declare-fun e!2971118 () Bool)

(declare-fun b!4761129 () Bool)

(declare-fun inv!68926 (BalanceConc!28498) Bool)

(assert (=> b!4761129 (= e!2971117 (and e!2971110 (inv!68926 (totalInput!4517 thiss!28909)) e!2971118))))

(declare-fun b!4761130 () Bool)

(declare-fun e!2971114 () Bool)

(declare-fun localTotalInput!8 () BalanceConc!28498)

(declare-fun tp!1353857 () Bool)

(declare-fun inv!68927 (Conc!14504) Bool)

(assert (=> b!4761130 (= e!2971114 (and (inv!68927 (c!812184 localTotalInput!8)) tp!1353857))))

(declare-fun res!2019296 () Bool)

(declare-fun e!2971112 () Bool)

(assert (=> start!486900 (=> (not res!2019296) (not e!2971112))))

(assert (=> start!486900 (= res!2019296 (= localTotalInput!8 (totalInput!4517 thiss!28909)))))

(assert (=> start!486900 e!2971112))

(assert (=> start!486900 (and (inv!68926 localTotalInput!8) e!2971114)))

(declare-fun inv!68928 (CacheFindLongestMatch!696) Bool)

(assert (=> start!486900 (and (inv!68928 thiss!28909) e!2971117)))

(assert (=> start!486900 true))

(declare-fun condSetEmpty!27256 () Bool)

(assert (=> start!486900 (= condSetEmpty!27256 (= z!482 ((as const (Array Context!5906 Bool)) false)))))

(assert (=> start!486900 setRes!27256))

(declare-fun b!4761131 () Bool)

(declare-fun e!2971106 () Bool)

(declare-fun lt!1925057 () MutLongMap!4865)

(get-info :version)

(assert (=> b!4761131 (= e!2971106 (and e!2971113 ((_ is LongMap!4865) lt!1925057)))))

(assert (=> b!4761131 (= lt!1925057 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))

(declare-fun b!4761132 () Bool)

(declare-fun res!2019295 () Bool)

(assert (=> b!4761132 (=> (not res!2019295) (not e!2971116))))

(assert (=> b!4761132 (= res!2019295 (<= from!922 (size!36141 localTotalInput!8)))))

(assert (=> b!4761133 (= e!2971110 (and e!2971106 tp!1353854))))

(declare-fun b!4761134 () Bool)

(declare-fun e!2971107 () Bool)

(declare-fun tp!1353855 () Bool)

(assert (=> b!4761134 (= e!2971107 tp!1353855)))

(declare-fun b!4761135 () Bool)

(declare-fun e!2971115 () Bool)

(assert (=> b!4761135 (= e!2971119 e!2971115)))

(declare-fun b!4761136 () Bool)

(declare-fun tp!1353858 () Bool)

(assert (=> b!4761136 (= e!2971118 (and (inv!68927 (c!812184 (totalInput!4517 thiss!28909))) tp!1353858))))

(declare-fun b!4761137 () Bool)

(declare-fun e!2971111 () Bool)

(declare-fun tp!1353859 () Bool)

(declare-fun mapRes!21626 () Bool)

(assert (=> b!4761137 (= e!2971111 (and tp!1353859 mapRes!21626))))

(declare-fun condMapEmpty!21626 () Bool)

(declare-fun mapDefault!21626 () List!53507)

(assert (=> b!4761137 (= condMapEmpty!21626 (= (arr!7916 (_values!5173 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53507)) mapDefault!21626)))))

(declare-fun mapIsEmpty!21626 () Bool)

(assert (=> mapIsEmpty!21626 mapRes!21626))

(declare-fun b!4761138 () Bool)

(declare-fun e!2971108 () Bool)

(assert (=> b!4761138 (= e!2971112 (not e!2971108))))

(declare-fun res!2019293 () Bool)

(assert (=> b!4761138 (=> res!2019293 e!2971108)))

(declare-fun lt!1925055 () tuple2!55330)

(declare-fun contains!16683 (MutableMap!4749 tuple2!55330) Bool)

(assert (=> b!4761138 (= res!2019293 (not (contains!16683 (cache!4591 thiss!28909) lt!1925055)))))

(assert (=> b!4761138 (= lt!1925055 (tuple2!55331 z!482 from!922))))

(declare-fun validCacheMapFindLongestMatch!145 (MutableMap!4749 BalanceConc!28498) Bool)

(assert (=> b!4761138 (validCacheMapFindLongestMatch!145 (cache!4591 thiss!28909) localTotalInput!8)))

(declare-fun mapNonEmpty!21626 () Bool)

(declare-fun tp!1353860 () Bool)

(declare-fun tp!1353850 () Bool)

(assert (=> mapNonEmpty!21626 (= mapRes!21626 (and tp!1353860 tp!1353850))))

(declare-fun mapKey!21626 () (_ BitVec 32))

(declare-fun mapRest!21626 () (Array (_ BitVec 32) List!53507))

(declare-fun mapValue!21626 () List!53507)

(assert (=> mapNonEmpty!21626 (= (arr!7916 (_values!5173 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))) (store mapRest!21626 mapKey!21626 mapValue!21626))))

(declare-fun tp!1353853 () Bool)

(declare-fun tp!1353852 () Bool)

(declare-fun array_inv!5697 (array!17746) Bool)

(declare-fun array_inv!5698 (array!17748) Bool)

(assert (=> b!4761139 (= e!2971115 (and tp!1353856 tp!1353853 tp!1353852 (array_inv!5697 (_keys!5200 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))) (array_inv!5698 (_values!5173 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))) e!2971111))))

(assert (=> b!4761140 (= e!2971108 e!2971116)))

(declare-fun res!2019292 () Bool)

(assert (=> b!4761140 (=> (not res!2019292) (not e!2971116))))

(assert (=> b!4761140 (= res!2019292 (>= from!922 0))))

(declare-fun validCacheMapFindLongestMatchBody!26 (tuple2!55332 BalanceConc!28498) Bool)

(assert (=> b!4761140 (validCacheMapFindLongestMatchBody!26 (tuple2!55333 lt!1925055 lt!1925056) localTotalInput!8)))

(declare-fun apply!12545 (MutableMap!4749 tuple2!55330) Int)

(assert (=> b!4761140 (= lt!1925056 (apply!12545 (cache!4591 thiss!28909) lt!1925055))))

(declare-datatypes ((Unit!137843 0))(
  ( (Unit!137844) )
))
(declare-fun lt!1925054 () Unit!137843)

(declare-fun lambda!223805 () Int)

(declare-fun lemmaForallPairsThenForLookup!72 (MutableMap!4749 tuple2!55330 Int) Unit!137843)

(assert (=> b!4761140 (= lt!1925054 (lemmaForallPairsThenForLookup!72 (cache!4591 thiss!28909) lt!1925055 lambda!223805))))

(declare-fun b!4761141 () Bool)

(declare-fun res!2019294 () Bool)

(assert (=> b!4761141 (=> (not res!2019294) (not e!2971112))))

(assert (=> b!4761141 (= res!2019294 (validCacheMapFindLongestMatch!145 (cache!4591 thiss!28909) (totalInput!4517 thiss!28909)))))

(declare-fun tp!1353851 () Bool)

(declare-fun setElem!27256 () Context!5906)

(declare-fun setNonEmpty!27256 () Bool)

(declare-fun inv!68929 (Context!5906) Bool)

(assert (=> setNonEmpty!27256 (= setRes!27256 (and tp!1353851 (inv!68929 setElem!27256) e!2971107))))

(declare-fun setRest!27256 () (InoxSet Context!5906))

(assert (=> setNonEmpty!27256 (= z!482 ((_ map or) (store ((as const (Array Context!5906 Bool)) false) setElem!27256 true) setRest!27256))))

(assert (= (and start!486900 res!2019296) b!4761141))

(assert (= (and b!4761141 res!2019294) b!4761138))

(assert (= (and b!4761138 (not res!2019293)) b!4761140))

(assert (= (and b!4761140 res!2019292) b!4761132))

(assert (= (and b!4761132 res!2019295) b!4761127))

(assert (= start!486900 b!4761130))

(assert (= (and b!4761137 condMapEmpty!21626) mapIsEmpty!21626))

(assert (= (and b!4761137 (not condMapEmpty!21626)) mapNonEmpty!21626))

(assert (= b!4761139 b!4761137))

(assert (= b!4761135 b!4761139))

(assert (= b!4761128 b!4761135))

(assert (= (and b!4761131 ((_ is LongMap!4865) (v!47427 (underlying!9938 (cache!4591 thiss!28909))))) b!4761128))

(assert (= b!4761133 b!4761131))

(assert (= (and b!4761129 ((_ is HashMap!4749) (cache!4591 thiss!28909))) b!4761133))

(assert (= b!4761129 b!4761136))

(assert (= start!486900 b!4761129))

(assert (= (and start!486900 condSetEmpty!27256) setIsEmpty!27256))

(assert (= (and start!486900 (not condSetEmpty!27256)) setNonEmpty!27256))

(assert (= setNonEmpty!27256 b!4761134))

(declare-fun m!5730249 () Bool)

(assert (=> b!4761130 m!5730249))

(declare-fun m!5730251 () Bool)

(assert (=> b!4761138 m!5730251))

(declare-fun m!5730253 () Bool)

(assert (=> b!4761138 m!5730253))

(declare-fun m!5730255 () Bool)

(assert (=> setNonEmpty!27256 m!5730255))

(declare-fun m!5730257 () Bool)

(assert (=> start!486900 m!5730257))

(declare-fun m!5730259 () Bool)

(assert (=> start!486900 m!5730259))

(declare-fun m!5730261 () Bool)

(assert (=> b!4761136 m!5730261))

(declare-fun m!5730263 () Bool)

(assert (=> b!4761129 m!5730263))

(declare-fun m!5730265 () Bool)

(assert (=> b!4761132 m!5730265))

(declare-fun m!5730267 () Bool)

(assert (=> b!4761139 m!5730267))

(declare-fun m!5730269 () Bool)

(assert (=> b!4761139 m!5730269))

(declare-fun m!5730271 () Bool)

(assert (=> b!4761141 m!5730271))

(declare-fun m!5730273 () Bool)

(assert (=> mapNonEmpty!21626 m!5730273))

(declare-fun m!5730275 () Bool)

(assert (=> b!4761140 m!5730275))

(declare-fun m!5730277 () Bool)

(assert (=> b!4761140 m!5730277))

(declare-fun m!5730279 () Bool)

(assert (=> b!4761140 m!5730279))

(declare-fun m!5730281 () Bool)

(assert (=> b!4761127 m!5730281))

(assert (=> b!4761127 m!5730281))

(declare-fun m!5730283 () Bool)

(assert (=> b!4761127 m!5730283))

(check-sat (not mapNonEmpty!21626) (not b!4761134) b_and!340999 (not setNonEmpty!27256) (not b!4761139) (not b!4761136) (not b!4761130) (not b!4761140) (not start!486900) (not b!4761127) (not b_next!130079) b_and!341001 (not b!4761138) (not b!4761137) (not b!4761132) (not b!4761141) (not b_next!130081) (not b!4761129))
(check-sat b_and!340999 b_and!341001 (not b_next!130081) (not b_next!130079))
(get-model)

(declare-fun d!1521432 () Bool)

(declare-fun isBalanced!3913 (Conc!14504) Bool)

(assert (=> d!1521432 (= (inv!68926 localTotalInput!8) (isBalanced!3913 (c!812184 localTotalInput!8)))))

(declare-fun bs!1147106 () Bool)

(assert (= bs!1147106 d!1521432))

(declare-fun m!5730285 () Bool)

(assert (=> bs!1147106 m!5730285))

(assert (=> start!486900 d!1521432))

(declare-fun d!1521434 () Bool)

(declare-fun res!2019299 () Bool)

(declare-fun e!2971122 () Bool)

(assert (=> d!1521434 (=> (not res!2019299) (not e!2971122))))

(assert (=> d!1521434 (= res!2019299 ((_ is HashMap!4749) (cache!4591 thiss!28909)))))

(assert (=> d!1521434 (= (inv!68928 thiss!28909) e!2971122)))

(declare-fun b!4761146 () Bool)

(assert (=> b!4761146 (= e!2971122 (validCacheMapFindLongestMatch!145 (cache!4591 thiss!28909) (totalInput!4517 thiss!28909)))))

(assert (= (and d!1521434 res!2019299) b!4761146))

(assert (=> b!4761146 m!5730271))

(assert (=> start!486900 d!1521434))

(declare-fun d!1521436 () Bool)

(declare-fun c!812187 () Bool)

(assert (=> d!1521436 (= c!812187 ((_ is Node!14504) (c!812184 (totalInput!4517 thiss!28909))))))

(declare-fun e!2971127 () Bool)

(assert (=> d!1521436 (= (inv!68927 (c!812184 (totalInput!4517 thiss!28909))) e!2971127)))

(declare-fun b!4761153 () Bool)

(declare-fun inv!68930 (Conc!14504) Bool)

(assert (=> b!4761153 (= e!2971127 (inv!68930 (c!812184 (totalInput!4517 thiss!28909))))))

(declare-fun b!4761154 () Bool)

(declare-fun e!2971128 () Bool)

(assert (=> b!4761154 (= e!2971127 e!2971128)))

(declare-fun res!2019302 () Bool)

(assert (=> b!4761154 (= res!2019302 (not ((_ is Leaf!23608) (c!812184 (totalInput!4517 thiss!28909)))))))

(assert (=> b!4761154 (=> res!2019302 e!2971128)))

(declare-fun b!4761155 () Bool)

(declare-fun inv!68931 (Conc!14504) Bool)

(assert (=> b!4761155 (= e!2971128 (inv!68931 (c!812184 (totalInput!4517 thiss!28909))))))

(assert (= (and d!1521436 c!812187) b!4761153))

(assert (= (and d!1521436 (not c!812187)) b!4761154))

(assert (= (and b!4761154 (not res!2019302)) b!4761155))

(declare-fun m!5730287 () Bool)

(assert (=> b!4761153 m!5730287))

(declare-fun m!5730289 () Bool)

(assert (=> b!4761155 m!5730289))

(assert (=> b!4761136 d!1521436))

(declare-fun d!1521438 () Bool)

(assert (=> d!1521438 (= (array_inv!5697 (_keys!5200 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))) (bvsge (size!36139 (_keys!5200 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4761139 d!1521438))

(declare-fun d!1521440 () Bool)

(assert (=> d!1521440 (= (array_inv!5698 (_values!5173 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))) (bvsge (size!36140 (_values!5173 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4761139 d!1521440))

(declare-fun d!1521442 () Bool)

(declare-fun c!812188 () Bool)

(assert (=> d!1521442 (= c!812188 ((_ is Node!14504) (c!812184 localTotalInput!8)))))

(declare-fun e!2971129 () Bool)

(assert (=> d!1521442 (= (inv!68927 (c!812184 localTotalInput!8)) e!2971129)))

(declare-fun b!4761156 () Bool)

(assert (=> b!4761156 (= e!2971129 (inv!68930 (c!812184 localTotalInput!8)))))

(declare-fun b!4761157 () Bool)

(declare-fun e!2971130 () Bool)

(assert (=> b!4761157 (= e!2971129 e!2971130)))

(declare-fun res!2019303 () Bool)

(assert (=> b!4761157 (= res!2019303 (not ((_ is Leaf!23608) (c!812184 localTotalInput!8))))))

(assert (=> b!4761157 (=> res!2019303 e!2971130)))

(declare-fun b!4761158 () Bool)

(assert (=> b!4761158 (= e!2971130 (inv!68931 (c!812184 localTotalInput!8)))))

(assert (= (and d!1521442 c!812188) b!4761156))

(assert (= (and d!1521442 (not c!812188)) b!4761157))

(assert (= (and b!4761157 (not res!2019303)) b!4761158))

(declare-fun m!5730291 () Bool)

(assert (=> b!4761156 m!5730291))

(declare-fun m!5730293 () Bool)

(assert (=> b!4761158 m!5730293))

(assert (=> b!4761130 d!1521442))

(declare-fun bs!1147107 () Bool)

(declare-fun b!4761164 () Bool)

(assert (= bs!1147107 (and b!4761164 b!4761140)))

(declare-fun lambda!223808 () Int)

(assert (=> bs!1147107 (= (= (totalInput!4517 thiss!28909) localTotalInput!8) (= lambda!223808 lambda!223805))))

(assert (=> b!4761164 true))

(declare-fun d!1521444 () Bool)

(declare-fun res!2019308 () Bool)

(declare-fun e!2971133 () Bool)

(assert (=> d!1521444 (=> (not res!2019308) (not e!2971133))))

(declare-fun valid!3861 (MutableMap!4749) Bool)

(assert (=> d!1521444 (= res!2019308 (valid!3861 (cache!4591 thiss!28909)))))

(assert (=> d!1521444 (= (validCacheMapFindLongestMatch!145 (cache!4591 thiss!28909) (totalInput!4517 thiss!28909)) e!2971133)))

(declare-fun b!4761163 () Bool)

(declare-fun res!2019309 () Bool)

(assert (=> b!4761163 (=> (not res!2019309) (not e!2971133))))

(declare-fun invariantList!1650 (List!53507) Bool)

(declare-datatypes ((ListMap!5721 0))(
  ( (ListMap!5722 (toList!6220 List!53507)) )
))
(declare-fun map!11882 (MutableMap!4749) ListMap!5721)

(assert (=> b!4761163 (= res!2019309 (invariantList!1650 (toList!6220 (map!11882 (cache!4591 thiss!28909)))))))

(declare-fun forall!11842 (List!53507 Int) Bool)

(assert (=> b!4761164 (= e!2971133 (forall!11842 (toList!6220 (map!11882 (cache!4591 thiss!28909))) lambda!223808))))

(assert (= (and d!1521444 res!2019308) b!4761163))

(assert (= (and b!4761163 res!2019309) b!4761164))

(declare-fun m!5730296 () Bool)

(assert (=> d!1521444 m!5730296))

(declare-fun m!5730298 () Bool)

(assert (=> b!4761163 m!5730298))

(declare-fun m!5730300 () Bool)

(assert (=> b!4761163 m!5730300))

(assert (=> b!4761164 m!5730298))

(declare-fun m!5730302 () Bool)

(assert (=> b!4761164 m!5730302))

(assert (=> b!4761141 d!1521444))

(declare-fun d!1521446 () Bool)

(declare-fun lt!1925060 () Int)

(declare-fun size!36142 (List!53508) Int)

(declare-fun list!17380 (BalanceConc!28498) List!53508)

(assert (=> d!1521446 (= lt!1925060 (size!36142 (list!17380 localTotalInput!8)))))

(declare-fun size!36143 (Conc!14504) Int)

(assert (=> d!1521446 (= lt!1925060 (size!36143 (c!812184 localTotalInput!8)))))

(assert (=> d!1521446 (= (size!36141 localTotalInput!8) lt!1925060)))

(declare-fun bs!1147108 () Bool)

(assert (= bs!1147108 d!1521446))

(declare-fun m!5730304 () Bool)

(assert (=> bs!1147108 m!5730304))

(assert (=> bs!1147108 m!5730304))

(declare-fun m!5730306 () Bool)

(assert (=> bs!1147108 m!5730306))

(declare-fun m!5730308 () Bool)

(assert (=> bs!1147108 m!5730308))

(assert (=> b!4761132 d!1521446))

(declare-fun d!1521448 () Bool)

(declare-fun res!2019314 () Bool)

(declare-fun e!2971136 () Bool)

(assert (=> d!1521448 (=> (not res!2019314) (not e!2971136))))

(assert (=> d!1521448 (= res!2019314 (>= (_2!30959 (_1!30960 (tuple2!55333 lt!1925055 lt!1925056))) 0))))

(assert (=> d!1521448 (= (validCacheMapFindLongestMatchBody!26 (tuple2!55333 lt!1925055 lt!1925056) localTotalInput!8) e!2971136)))

(declare-fun b!4761169 () Bool)

(declare-fun res!2019315 () Bool)

(assert (=> b!4761169 (=> (not res!2019315) (not e!2971136))))

(assert (=> b!4761169 (= res!2019315 (<= (_2!30959 (_1!30960 (tuple2!55333 lt!1925055 lt!1925056))) (size!36141 localTotalInput!8)))))

(declare-fun b!4761170 () Bool)

(assert (=> b!4761170 (= e!2971136 (= (_2!30960 (tuple2!55333 lt!1925055 lt!1925056)) (findLongestMatchInnerZipperFastV2!73 (_1!30959 (_1!30960 (tuple2!55333 lt!1925055 lt!1925056))) (_2!30959 (_1!30960 (tuple2!55333 lt!1925055 lt!1925056))) localTotalInput!8 (size!36141 localTotalInput!8))))))

(assert (= (and d!1521448 res!2019314) b!4761169))

(assert (= (and b!4761169 res!2019315) b!4761170))

(assert (=> b!4761169 m!5730265))

(assert (=> b!4761170 m!5730265))

(assert (=> b!4761170 m!5730265))

(declare-fun m!5730310 () Bool)

(assert (=> b!4761170 m!5730310))

(assert (=> b!4761140 d!1521448))

(declare-fun b!4761183 () Bool)

(declare-fun lt!1925129 () Int)

(declare-fun e!2971145 () Bool)

(declare-fun dynLambda!21921 (Int tuple2!55330) Int)

(assert (=> b!4761183 (= e!2971145 (= lt!1925129 (dynLambda!21921 (defaultValue!4920 (cache!4591 thiss!28909)) lt!1925055)))))

(declare-fun b!4761184 () Bool)

(declare-fun e!2971144 () Unit!137843)

(declare-fun Unit!137845 () Unit!137843)

(assert (=> b!4761184 (= e!2971144 Unit!137845)))

(declare-fun d!1521450 () Bool)

(assert (=> d!1521450 e!2971145))

(declare-fun c!812196 () Bool)

(assert (=> d!1521450 (= c!812196 (contains!16683 (cache!4591 thiss!28909) lt!1925055))))

(declare-fun e!2971143 () Int)

(assert (=> d!1521450 (= lt!1925129 e!2971143)))

(declare-fun c!812195 () Bool)

(assert (=> d!1521450 (= c!812195 (not (contains!16683 (cache!4591 thiss!28909) lt!1925055)))))

(assert (=> d!1521450 (valid!3861 (cache!4591 thiss!28909))))

(assert (=> d!1521450 (= (apply!12545 (cache!4591 thiss!28909) lt!1925055) lt!1925129)))

(declare-fun lt!1925147 () (_ BitVec 64))

(declare-fun b!4761185 () Bool)

(declare-datatypes ((Option!12608 0))(
  ( (None!12607) (Some!12607 (v!47428 tuple2!55332)) )
))
(declare-fun get!17964 (Option!12608) tuple2!55332)

(declare-fun getPair!622 (List!53507 tuple2!55330) Option!12608)

(declare-fun apply!12546 (MutLongMap!4865 (_ BitVec 64)) List!53507)

(assert (=> b!4761185 (= e!2971143 (_2!30960 (get!17964 (getPair!622 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925147) lt!1925055))))))

(declare-fun hash!4523 (Hashable!6526 tuple2!55330) (_ BitVec 64))

(assert (=> b!4761185 (= lt!1925147 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055))))

(declare-fun c!812197 () Bool)

(declare-datatypes ((tuple2!55334 0))(
  ( (tuple2!55335 (_1!30961 (_ BitVec 64)) (_2!30961 List!53507)) )
))
(declare-datatypes ((List!53509 0))(
  ( (Nil!53385) (Cons!53385 (h!59796 tuple2!55334) (t!360871 List!53509)) )
))
(declare-fun contains!16684 (List!53509 tuple2!55334) Bool)

(declare-datatypes ((ListLongMap!4613 0))(
  ( (ListLongMap!4614 (toList!6221 List!53509)) )
))
(declare-fun map!11883 (MutLongMap!4865) ListLongMap!4613)

(assert (=> b!4761185 (= c!812197 (not (contains!16684 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))) (tuple2!55335 lt!1925147 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925147)))))))

(declare-fun lt!1925149 () Unit!137843)

(assert (=> b!4761185 (= lt!1925149 e!2971144)))

(declare-fun lt!1925137 () Unit!137843)

(declare-fun lambda!223815 () Int)

(declare-fun forallContained!3832 (List!53509 Int tuple2!55334) Unit!137843)

(assert (=> b!4761185 (= lt!1925137 (forallContained!3832 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))) lambda!223815 (tuple2!55335 lt!1925147 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925147))))))

(declare-fun lt!1925148 () ListLongMap!4613)

(assert (=> b!4761185 (= lt!1925148 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909)))))))

(declare-fun lt!1925127 () Unit!137843)

(declare-fun lemmaGetPairGetSameValueAsMap!49 (ListLongMap!4613 tuple2!55330 Int Hashable!6526) Unit!137843)

(assert (=> b!4761185 (= lt!1925127 (lemmaGetPairGetSameValueAsMap!49 lt!1925148 lt!1925055 (_2!30960 (get!17964 (getPair!622 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925147) lt!1925055))) (hashF!12336 (cache!4591 thiss!28909))))))

(declare-fun lt!1925136 () Unit!137843)

(declare-fun lemmaInGenMapThenLongMapContainsHash!823 (ListLongMap!4613 tuple2!55330 Hashable!6526) Unit!137843)

(assert (=> b!4761185 (= lt!1925136 (lemmaInGenMapThenLongMapContainsHash!823 lt!1925148 lt!1925055 (hashF!12336 (cache!4591 thiss!28909))))))

(declare-fun contains!16685 (ListLongMap!4613 (_ BitVec 64)) Bool)

(assert (=> b!4761185 (contains!16685 lt!1925148 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055))))

(declare-fun lt!1925142 () Unit!137843)

(assert (=> b!4761185 (= lt!1925142 lt!1925136)))

(declare-fun lt!1925144 () (_ BitVec 64))

(assert (=> b!4761185 (= lt!1925144 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055))))

(declare-fun lt!1925135 () List!53507)

(declare-fun apply!12547 (ListLongMap!4613 (_ BitVec 64)) List!53507)

(assert (=> b!4761185 (= lt!1925135 (apply!12547 lt!1925148 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055)))))

(declare-fun lt!1925126 () Unit!137843)

(declare-fun lemmaGetValueImpliesTupleContained!422 (ListLongMap!4613 (_ BitVec 64) List!53507) Unit!137843)

(assert (=> b!4761185 (= lt!1925126 (lemmaGetValueImpliesTupleContained!422 lt!1925148 lt!1925144 lt!1925135))))

(assert (=> b!4761185 (contains!16684 (toList!6221 lt!1925148) (tuple2!55335 lt!1925144 lt!1925135))))

(declare-fun lt!1925145 () Unit!137843)

(assert (=> b!4761185 (= lt!1925145 lt!1925126)))

(declare-fun lt!1925121 () Unit!137843)

(assert (=> b!4761185 (= lt!1925121 (forallContained!3832 (toList!6221 lt!1925148) lambda!223815 (tuple2!55335 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055) (apply!12547 lt!1925148 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055)))))))

(declare-fun lt!1925132 () Unit!137843)

(declare-fun lemmaInGenMapThenGetPairDefined!413 (ListLongMap!4613 tuple2!55330 Hashable!6526) Unit!137843)

(assert (=> b!4761185 (= lt!1925132 (lemmaInGenMapThenGetPairDefined!413 lt!1925148 lt!1925055 (hashF!12336 (cache!4591 thiss!28909))))))

(declare-fun lt!1925131 () Unit!137843)

(assert (=> b!4761185 (= lt!1925131 (lemmaInGenMapThenLongMapContainsHash!823 lt!1925148 lt!1925055 (hashF!12336 (cache!4591 thiss!28909))))))

(declare-fun lt!1925139 () Unit!137843)

(assert (=> b!4761185 (= lt!1925139 lt!1925131)))

(declare-fun lt!1925138 () (_ BitVec 64))

(assert (=> b!4761185 (= lt!1925138 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055))))

(declare-fun lt!1925150 () List!53507)

(assert (=> b!4761185 (= lt!1925150 (apply!12547 lt!1925148 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055)))))

(declare-fun lt!1925130 () Unit!137843)

(assert (=> b!4761185 (= lt!1925130 (lemmaGetValueImpliesTupleContained!422 lt!1925148 lt!1925138 lt!1925150))))

(assert (=> b!4761185 (contains!16684 (toList!6221 lt!1925148) (tuple2!55335 lt!1925138 lt!1925150))))

(declare-fun lt!1925134 () Unit!137843)

(assert (=> b!4761185 (= lt!1925134 lt!1925130)))

(declare-fun lt!1925124 () Unit!137843)

(assert (=> b!4761185 (= lt!1925124 (forallContained!3832 (toList!6221 lt!1925148) lambda!223815 (tuple2!55335 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055) (apply!12547 lt!1925148 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055)))))))

(declare-fun isDefined!9786 (Option!12608) Bool)

(assert (=> b!4761185 (isDefined!9786 (getPair!622 (apply!12547 lt!1925148 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055)) lt!1925055))))

(declare-fun lt!1925140 () Unit!137843)

(assert (=> b!4761185 (= lt!1925140 lt!1925132)))

(declare-datatypes ((Option!12609 0))(
  ( (None!12608) (Some!12608 (v!47429 Int)) )
))
(declare-fun get!17965 (Option!12609) Int)

(declare-fun getValueByKey!2139 (List!53507 tuple2!55330) Option!12609)

(declare-fun extractMap!2122 (List!53509) ListMap!5721)

(assert (=> b!4761185 (= (_2!30960 (get!17964 (getPair!622 (apply!12547 lt!1925148 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055)) lt!1925055))) (get!17965 (getValueByKey!2139 (toList!6220 (extractMap!2122 (toList!6221 lt!1925148))) lt!1925055)))))

(declare-fun lt!1925128 () Unit!137843)

(assert (=> b!4761185 (= lt!1925128 lt!1925127)))

(declare-fun b!4761186 () Bool)

(assert (=> b!4761186 (= e!2971145 (= lt!1925129 (get!17965 (getValueByKey!2139 (toList!6220 (map!11882 (cache!4591 thiss!28909))) lt!1925055))))))

(declare-fun b!4761187 () Bool)

(assert (=> b!4761187 false))

(declare-fun lt!1925123 () Unit!137843)

(declare-fun lt!1925146 () Unit!137843)

(assert (=> b!4761187 (= lt!1925123 lt!1925146)))

(declare-fun lt!1925122 () List!53509)

(declare-fun lt!1925143 () List!53507)

(assert (=> b!4761187 (contains!16684 lt!1925122 (tuple2!55335 lt!1925147 lt!1925143))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!900 (List!53509 (_ BitVec 64) List!53507) Unit!137843)

(assert (=> b!4761187 (= lt!1925146 (lemmaGetValueByKeyImpliesContainsTuple!900 lt!1925122 lt!1925147 lt!1925143))))

(assert (=> b!4761187 (= lt!1925143 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925147))))

(assert (=> b!4761187 (= lt!1925122 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))

(declare-fun lt!1925125 () Unit!137843)

(declare-fun lt!1925141 () Unit!137843)

(assert (=> b!4761187 (= lt!1925125 lt!1925141)))

(declare-fun lt!1925133 () List!53509)

(declare-datatypes ((Option!12610 0))(
  ( (None!12609) (Some!12609 (v!47430 List!53507)) )
))
(declare-fun isDefined!9787 (Option!12610) Bool)

(declare-fun getValueByKey!2140 (List!53509 (_ BitVec 64)) Option!12610)

(assert (=> b!4761187 (isDefined!9787 (getValueByKey!2140 lt!1925133 lt!1925147))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1958 (List!53509 (_ BitVec 64)) Unit!137843)

(assert (=> b!4761187 (= lt!1925141 (lemmaContainsKeyImpliesGetValueByKeyDefined!1958 lt!1925133 lt!1925147))))

(assert (=> b!4761187 (= lt!1925133 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))

(declare-fun Unit!137846 () Unit!137843)

(assert (=> b!4761187 (= e!2971144 Unit!137846)))

(declare-fun b!4761188 () Bool)

(assert (=> b!4761188 (= e!2971143 (dynLambda!21921 (defaultValue!4920 (cache!4591 thiss!28909)) lt!1925055))))

(assert (= (and d!1521450 c!812195) b!4761188))

(assert (= (and d!1521450 (not c!812195)) b!4761185))

(assert (= (and b!4761185 c!812197) b!4761187))

(assert (= (and b!4761185 (not c!812197)) b!4761184))

(assert (= (and d!1521450 c!812196) b!4761186))

(assert (= (and d!1521450 (not c!812196)) b!4761183))

(declare-fun b_lambda!183817 () Bool)

(assert (=> (not b_lambda!183817) (not b!4761183)))

(declare-fun t!360870 () Bool)

(declare-fun tb!257413 () Bool)

(assert (=> (and b!4761133 (= (defaultValue!4920 (cache!4591 thiss!28909)) (defaultValue!4920 (cache!4591 thiss!28909))) t!360870) tb!257413))

(declare-fun result!318976 () Bool)

(assert (=> tb!257413 (= result!318976 true)))

(assert (=> b!4761183 t!360870))

(declare-fun b_and!341003 () Bool)

(assert (= b_and!340999 (and (=> t!360870 result!318976) b_and!341003)))

(declare-fun b_lambda!183819 () Bool)

(assert (=> (not b_lambda!183819) (not b!4761188)))

(assert (=> b!4761188 t!360870))

(declare-fun b_and!341005 () Bool)

(assert (= b_and!341003 (and (=> t!360870 result!318976) b_and!341005)))

(declare-fun m!5730312 () Bool)

(assert (=> b!4761187 m!5730312))

(declare-fun m!5730314 () Bool)

(assert (=> b!4761187 m!5730314))

(declare-fun m!5730316 () Bool)

(assert (=> b!4761187 m!5730316))

(declare-fun m!5730318 () Bool)

(assert (=> b!4761187 m!5730318))

(declare-fun m!5730320 () Bool)

(assert (=> b!4761187 m!5730320))

(declare-fun m!5730322 () Bool)

(assert (=> b!4761187 m!5730322))

(assert (=> b!4761187 m!5730318))

(declare-fun m!5730324 () Bool)

(assert (=> b!4761187 m!5730324))

(assert (=> d!1521450 m!5730251))

(assert (=> d!1521450 m!5730296))

(declare-fun m!5730326 () Bool)

(assert (=> b!4761188 m!5730326))

(declare-fun m!5730328 () Bool)

(assert (=> b!4761185 m!5730328))

(declare-fun m!5730330 () Bool)

(assert (=> b!4761185 m!5730330))

(declare-fun m!5730332 () Bool)

(assert (=> b!4761185 m!5730332))

(declare-fun m!5730334 () Bool)

(assert (=> b!4761185 m!5730334))

(assert (=> b!4761185 m!5730314))

(assert (=> b!4761185 m!5730332))

(declare-fun m!5730336 () Bool)

(assert (=> b!4761185 m!5730336))

(declare-fun m!5730338 () Bool)

(assert (=> b!4761185 m!5730338))

(assert (=> b!4761185 m!5730338))

(assert (=> b!4761185 m!5730330))

(assert (=> b!4761185 m!5730322))

(declare-fun m!5730340 () Bool)

(assert (=> b!4761185 m!5730340))

(declare-fun m!5730342 () Bool)

(assert (=> b!4761185 m!5730342))

(declare-fun m!5730344 () Bool)

(assert (=> b!4761185 m!5730344))

(declare-fun m!5730346 () Bool)

(assert (=> b!4761185 m!5730346))

(assert (=> b!4761185 m!5730332))

(declare-fun m!5730348 () Bool)

(assert (=> b!4761185 m!5730348))

(declare-fun m!5730350 () Bool)

(assert (=> b!4761185 m!5730350))

(declare-fun m!5730352 () Bool)

(assert (=> b!4761185 m!5730352))

(assert (=> b!4761185 m!5730334))

(declare-fun m!5730354 () Bool)

(assert (=> b!4761185 m!5730354))

(assert (=> b!4761185 m!5730338))

(declare-fun m!5730356 () Bool)

(assert (=> b!4761185 m!5730356))

(declare-fun m!5730358 () Bool)

(assert (=> b!4761185 m!5730358))

(assert (=> b!4761185 m!5730322))

(declare-fun m!5730360 () Bool)

(assert (=> b!4761185 m!5730360))

(assert (=> b!4761185 m!5730360))

(declare-fun m!5730362 () Bool)

(assert (=> b!4761185 m!5730362))

(declare-fun m!5730364 () Bool)

(assert (=> b!4761185 m!5730364))

(declare-fun m!5730366 () Bool)

(assert (=> b!4761185 m!5730366))

(assert (=> b!4761185 m!5730328))

(declare-fun m!5730368 () Bool)

(assert (=> b!4761185 m!5730368))

(assert (=> b!4761186 m!5730298))

(declare-fun m!5730370 () Bool)

(assert (=> b!4761186 m!5730370))

(assert (=> b!4761186 m!5730370))

(declare-fun m!5730372 () Bool)

(assert (=> b!4761186 m!5730372))

(assert (=> b!4761183 m!5730326))

(assert (=> b!4761140 d!1521450))

(declare-fun d!1521452 () Bool)

(declare-fun dynLambda!21922 (Int tuple2!55332) Bool)

(assert (=> d!1521452 (dynLambda!21922 lambda!223805 (tuple2!55333 lt!1925055 (apply!12545 (cache!4591 thiss!28909) lt!1925055)))))

(declare-fun lt!1925153 () Unit!137843)

(declare-fun choose!33903 (MutableMap!4749 tuple2!55330 Int) Unit!137843)

(assert (=> d!1521452 (= lt!1925153 (choose!33903 (cache!4591 thiss!28909) lt!1925055 lambda!223805))))

(assert (=> d!1521452 (valid!3861 (cache!4591 thiss!28909))))

(assert (=> d!1521452 (= (lemmaForallPairsThenForLookup!72 (cache!4591 thiss!28909) lt!1925055 lambda!223805) lt!1925153)))

(declare-fun b_lambda!183821 () Bool)

(assert (=> (not b_lambda!183821) (not d!1521452)))

(declare-fun bs!1147109 () Bool)

(assert (= bs!1147109 d!1521452))

(assert (=> bs!1147109 m!5730277))

(declare-fun m!5730374 () Bool)

(assert (=> bs!1147109 m!5730374))

(declare-fun m!5730376 () Bool)

(assert (=> bs!1147109 m!5730376))

(assert (=> bs!1147109 m!5730296))

(assert (=> b!4761140 d!1521452))

(declare-fun b!4761205 () Bool)

(declare-fun e!2971156 () Bool)

(assert (=> b!4761205 (= e!2971156 (<= from!922 (size!36141 (totalInput!4517 thiss!28909))))))

(declare-fun b!4761206 () Bool)

(declare-fun c!812204 () Bool)

(declare-fun lt!1925162 () (InoxSet Context!5906))

(declare-fun nullableZipper!788 ((InoxSet Context!5906)) Bool)

(assert (=> b!4761206 (= c!812204 (nullableZipper!788 lt!1925162))))

(declare-fun e!2971159 () Int)

(declare-fun e!2971157 () Int)

(assert (=> b!4761206 (= e!2971159 e!2971157)))

(declare-fun b!4761207 () Bool)

(declare-fun e!2971158 () Int)

(assert (=> b!4761207 (= e!2971158 e!2971159)))

(declare-fun derivationStepZipper!565 ((InoxSet Context!5906) C!26324) (InoxSet Context!5906))

(declare-fun apply!12548 (BalanceConc!28498 Int) C!26324)

(assert (=> b!4761207 (= lt!1925162 (derivationStepZipper!565 z!482 (apply!12548 (totalInput!4517 thiss!28909) from!922)))))

(declare-fun lt!1925161 () Int)

(assert (=> b!4761207 (= lt!1925161 (findLongestMatchInnerZipperFastV2!73 lt!1925162 (+ from!922 1) (totalInput!4517 thiss!28909) (size!36141 (totalInput!4517 thiss!28909))))))

(declare-fun c!812205 () Bool)

(assert (=> b!4761207 (= c!812205 (> lt!1925161 0))))

(declare-fun b!4761208 () Bool)

(assert (=> b!4761208 (= e!2971158 0)))

(declare-fun b!4761209 () Bool)

(assert (=> b!4761209 (= e!2971159 (+ 1 lt!1925161))))

(declare-fun b!4761211 () Bool)

(declare-fun e!2971160 () Bool)

(declare-fun lostCauseZipper!668 ((InoxSet Context!5906)) Bool)

(assert (=> b!4761211 (= e!2971160 (lostCauseZipper!668 z!482))))

(declare-fun b!4761212 () Bool)

(assert (=> b!4761212 (= e!2971157 1)))

(declare-fun b!4761210 () Bool)

(assert (=> b!4761210 (= e!2971157 0)))

(declare-fun d!1521454 () Bool)

(declare-fun lt!1925160 () Int)

(assert (=> d!1521454 (and (>= lt!1925160 0) (<= lt!1925160 (- (size!36141 (totalInput!4517 thiss!28909)) from!922)))))

(assert (=> d!1521454 (= lt!1925160 e!2971158)))

(declare-fun c!812206 () Bool)

(assert (=> d!1521454 (= c!812206 e!2971160)))

(declare-fun res!2019321 () Bool)

(assert (=> d!1521454 (=> res!2019321 e!2971160)))

(assert (=> d!1521454 (= res!2019321 (= from!922 (size!36141 (totalInput!4517 thiss!28909))))))

(assert (=> d!1521454 e!2971156))

(declare-fun res!2019320 () Bool)

(assert (=> d!1521454 (=> (not res!2019320) (not e!2971156))))

(assert (=> d!1521454 (= res!2019320 (>= from!922 0))))

(assert (=> d!1521454 (= (findLongestMatchInnerZipperFastV2!73 z!482 from!922 (totalInput!4517 thiss!28909) (size!36141 (totalInput!4517 thiss!28909))) lt!1925160)))

(assert (= (and d!1521454 res!2019320) b!4761205))

(assert (= (and d!1521454 (not res!2019321)) b!4761211))

(assert (= (and d!1521454 c!812206) b!4761208))

(assert (= (and d!1521454 (not c!812206)) b!4761207))

(assert (= (and b!4761207 c!812205) b!4761209))

(assert (= (and b!4761207 (not c!812205)) b!4761206))

(assert (= (and b!4761206 c!812204) b!4761212))

(assert (= (and b!4761206 (not c!812204)) b!4761210))

(assert (=> b!4761205 m!5730281))

(declare-fun m!5730378 () Bool)

(assert (=> b!4761206 m!5730378))

(declare-fun m!5730380 () Bool)

(assert (=> b!4761207 m!5730380))

(assert (=> b!4761207 m!5730380))

(declare-fun m!5730382 () Bool)

(assert (=> b!4761207 m!5730382))

(assert (=> b!4761207 m!5730281))

(declare-fun m!5730384 () Bool)

(assert (=> b!4761207 m!5730384))

(declare-fun m!5730386 () Bool)

(assert (=> b!4761211 m!5730386))

(assert (=> b!4761127 d!1521454))

(declare-fun d!1521456 () Bool)

(declare-fun lt!1925163 () Int)

(assert (=> d!1521456 (= lt!1925163 (size!36142 (list!17380 (totalInput!4517 thiss!28909))))))

(assert (=> d!1521456 (= lt!1925163 (size!36143 (c!812184 (totalInput!4517 thiss!28909))))))

(assert (=> d!1521456 (= (size!36141 (totalInput!4517 thiss!28909)) lt!1925163)))

(declare-fun bs!1147110 () Bool)

(assert (= bs!1147110 d!1521456))

(declare-fun m!5730388 () Bool)

(assert (=> bs!1147110 m!5730388))

(assert (=> bs!1147110 m!5730388))

(declare-fun m!5730390 () Bool)

(assert (=> bs!1147110 m!5730390))

(declare-fun m!5730392 () Bool)

(assert (=> bs!1147110 m!5730392))

(assert (=> b!4761127 d!1521456))

(declare-fun bs!1147111 () Bool)

(declare-fun b!4761237 () Bool)

(assert (= bs!1147111 (and b!4761237 b!4761185)))

(declare-fun lambda!223818 () Int)

(assert (=> bs!1147111 (= lambda!223818 lambda!223815)))

(declare-fun d!1521458 () Bool)

(declare-fun lt!1925211 () Bool)

(declare-fun contains!16686 (ListMap!5721 tuple2!55330) Bool)

(assert (=> d!1521458 (= lt!1925211 (contains!16686 (map!11882 (cache!4591 thiss!28909)) lt!1925055))))

(declare-fun e!2971181 () Bool)

(assert (=> d!1521458 (= lt!1925211 e!2971181)))

(declare-fun res!2019329 () Bool)

(assert (=> d!1521458 (=> (not res!2019329) (not e!2971181))))

(declare-fun lt!1925223 () (_ BitVec 64))

(declare-fun contains!16687 (MutLongMap!4865 (_ BitVec 64)) Bool)

(assert (=> d!1521458 (= res!2019329 (contains!16687 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925223))))

(declare-fun lt!1925207 () Unit!137843)

(declare-fun e!2971177 () Unit!137843)

(assert (=> d!1521458 (= lt!1925207 e!2971177)))

(declare-fun c!812216 () Bool)

(assert (=> d!1521458 (= c!812216 (contains!16686 (extractMap!2122 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909)))))) lt!1925055))))

(declare-fun lt!1925219 () Unit!137843)

(declare-fun e!2971176 () Unit!137843)

(assert (=> d!1521458 (= lt!1925219 e!2971176)))

(declare-fun c!812218 () Bool)

(assert (=> d!1521458 (= c!812218 (contains!16687 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925223))))

(assert (=> d!1521458 (= lt!1925223 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055))))

(assert (=> d!1521458 (valid!3861 (cache!4591 thiss!28909))))

(assert (=> d!1521458 (= (contains!16683 (cache!4591 thiss!28909) lt!1925055) lt!1925211)))

(declare-fun call!333800 () List!53507)

(declare-fun call!333797 () (_ BitVec 64))

(declare-fun lt!1925214 () ListLongMap!4613)

(declare-fun bm!333791 () Bool)

(declare-fun call!333798 () ListLongMap!4613)

(assert (=> bm!333791 (= call!333800 (apply!12547 (ite c!812216 lt!1925214 call!333798) call!333797))))

(declare-fun b!4761235 () Bool)

(declare-fun e!2971175 () Unit!137843)

(assert (=> b!4761235 (= e!2971177 e!2971175)))

(declare-fun res!2019330 () Bool)

(declare-fun call!333796 () Bool)

(assert (=> b!4761235 (= res!2019330 call!333796)))

(declare-fun e!2971178 () Bool)

(assert (=> b!4761235 (=> (not res!2019330) (not e!2971178))))

(declare-fun c!812215 () Bool)

(assert (=> b!4761235 (= c!812215 e!2971178)))

(declare-fun bm!333792 () Bool)

(assert (=> bm!333792 (= call!333796 (contains!16685 (ite c!812216 lt!1925214 call!333798) call!333797))))

(declare-fun b!4761236 () Bool)

(declare-fun e!2971179 () Bool)

(declare-fun call!333799 () Bool)

(assert (=> b!4761236 (= e!2971179 call!333799)))

(declare-fun bm!333793 () Bool)

(declare-fun call!333801 () Option!12608)

(assert (=> bm!333793 (= call!333801 (getPair!622 call!333800 lt!1925055))))

(assert (=> b!4761237 (= e!2971176 (forallContained!3832 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))) lambda!223818 (tuple2!55335 lt!1925223 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925223))))))

(declare-fun c!812217 () Bool)

(assert (=> b!4761237 (= c!812217 (not (contains!16684 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))) (tuple2!55335 lt!1925223 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925223)))))))

(declare-fun lt!1925206 () Unit!137843)

(declare-fun e!2971180 () Unit!137843)

(assert (=> b!4761237 (= lt!1925206 e!2971180)))

(declare-fun bm!333794 () Bool)

(assert (=> bm!333794 (= call!333799 (isDefined!9786 call!333801))))

(declare-fun b!4761238 () Bool)

(declare-fun Unit!137847 () Unit!137843)

(assert (=> b!4761238 (= e!2971175 Unit!137847)))

(declare-fun b!4761239 () Bool)

(assert (=> b!4761239 false))

(declare-fun lt!1925209 () Unit!137843)

(declare-fun lt!1925217 () Unit!137843)

(assert (=> b!4761239 (= lt!1925209 lt!1925217)))

(declare-fun lt!1925210 () ListLongMap!4613)

(assert (=> b!4761239 (contains!16686 (extractMap!2122 (toList!6221 lt!1925210)) lt!1925055)))

(declare-fun lemmaInLongMapThenInGenericMap!186 (ListLongMap!4613 tuple2!55330 Hashable!6526) Unit!137843)

(assert (=> b!4761239 (= lt!1925217 (lemmaInLongMapThenInGenericMap!186 lt!1925210 lt!1925055 (hashF!12336 (cache!4591 thiss!28909))))))

(assert (=> b!4761239 (= lt!1925210 call!333798)))

(declare-fun Unit!137848 () Unit!137843)

(assert (=> b!4761239 (= e!2971175 Unit!137848)))

(declare-fun b!4761240 () Bool)

(assert (=> b!4761240 (= e!2971181 (isDefined!9786 (getPair!622 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925223) lt!1925055)))))

(declare-fun bm!333795 () Bool)

(assert (=> bm!333795 (= call!333798 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909)))))))

(declare-fun b!4761241 () Bool)

(assert (=> b!4761241 false))

(declare-fun lt!1925213 () Unit!137843)

(declare-fun lt!1925215 () Unit!137843)

(assert (=> b!4761241 (= lt!1925213 lt!1925215)))

(declare-fun lt!1925220 () List!53509)

(declare-fun lt!1925212 () List!53507)

(assert (=> b!4761241 (contains!16684 lt!1925220 (tuple2!55335 lt!1925223 lt!1925212))))

(assert (=> b!4761241 (= lt!1925215 (lemmaGetValueByKeyImpliesContainsTuple!900 lt!1925220 lt!1925223 lt!1925212))))

(assert (=> b!4761241 (= lt!1925212 (apply!12546 (v!47427 (underlying!9938 (cache!4591 thiss!28909))) lt!1925223))))

(assert (=> b!4761241 (= lt!1925220 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))

(declare-fun lt!1925216 () Unit!137843)

(declare-fun lt!1925218 () Unit!137843)

(assert (=> b!4761241 (= lt!1925216 lt!1925218)))

(declare-fun lt!1925204 () List!53509)

(assert (=> b!4761241 (isDefined!9787 (getValueByKey!2140 lt!1925204 lt!1925223))))

(assert (=> b!4761241 (= lt!1925218 (lemmaContainsKeyImpliesGetValueByKeyDefined!1958 lt!1925204 lt!1925223))))

(assert (=> b!4761241 (= lt!1925204 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))

(declare-fun lt!1925208 () Unit!137843)

(declare-fun lt!1925221 () Unit!137843)

(assert (=> b!4761241 (= lt!1925208 lt!1925221)))

(declare-fun lt!1925205 () List!53509)

(declare-fun containsKey!3641 (List!53509 (_ BitVec 64)) Bool)

(assert (=> b!4761241 (containsKey!3641 lt!1925205 lt!1925223)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!187 (List!53509 (_ BitVec 64)) Unit!137843)

(assert (=> b!4761241 (= lt!1925221 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!187 lt!1925205 lt!1925223))))

(assert (=> b!4761241 (= lt!1925205 (toList!6221 (map!11883 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))

(declare-fun Unit!137849 () Unit!137843)

(assert (=> b!4761241 (= e!2971180 Unit!137849)))

(declare-fun b!4761242 () Bool)

(declare-fun lt!1925222 () Unit!137843)

(assert (=> b!4761242 (= e!2971177 lt!1925222)))

(assert (=> b!4761242 (= lt!1925214 call!333798)))

(declare-fun lemmaInGenericMapThenInLongMap!186 (ListLongMap!4613 tuple2!55330 Hashable!6526) Unit!137843)

(assert (=> b!4761242 (= lt!1925222 (lemmaInGenericMapThenInLongMap!186 lt!1925214 lt!1925055 (hashF!12336 (cache!4591 thiss!28909))))))

(declare-fun res!2019328 () Bool)

(assert (=> b!4761242 (= res!2019328 call!333796)))

(assert (=> b!4761242 (=> (not res!2019328) (not e!2971179))))

(assert (=> b!4761242 e!2971179))

(declare-fun b!4761243 () Bool)

(assert (=> b!4761243 (= e!2971178 call!333799)))

(declare-fun bm!333796 () Bool)

(assert (=> bm!333796 (= call!333797 (hash!4523 (hashF!12336 (cache!4591 thiss!28909)) lt!1925055))))

(declare-fun b!4761244 () Bool)

(declare-fun Unit!137850 () Unit!137843)

(assert (=> b!4761244 (= e!2971176 Unit!137850)))

(declare-fun b!4761245 () Bool)

(declare-fun Unit!137851 () Unit!137843)

(assert (=> b!4761245 (= e!2971180 Unit!137851)))

(assert (= (and d!1521458 c!812218) b!4761237))

(assert (= (and d!1521458 (not c!812218)) b!4761244))

(assert (= (and b!4761237 c!812217) b!4761241))

(assert (= (and b!4761237 (not c!812217)) b!4761245))

(assert (= (and d!1521458 c!812216) b!4761242))

(assert (= (and d!1521458 (not c!812216)) b!4761235))

(assert (= (and b!4761242 res!2019328) b!4761236))

(assert (= (and b!4761235 res!2019330) b!4761243))

(assert (= (and b!4761235 c!812215) b!4761239))

(assert (= (and b!4761235 (not c!812215)) b!4761238))

(assert (= (or b!4761242 b!4761236 b!4761235 b!4761243) bm!333796))

(assert (= (or b!4761242 b!4761235 b!4761243 b!4761239) bm!333795))

(assert (= (or b!4761236 b!4761243) bm!333791))

(assert (= (or b!4761242 b!4761235) bm!333792))

(assert (= (or b!4761236 b!4761243) bm!333793))

(assert (= (or b!4761236 b!4761243) bm!333794))

(assert (= (and d!1521458 res!2019329) b!4761240))

(declare-fun m!5730394 () Bool)

(assert (=> bm!333794 m!5730394))

(assert (=> b!4761237 m!5730314))

(declare-fun m!5730396 () Bool)

(assert (=> b!4761237 m!5730396))

(declare-fun m!5730398 () Bool)

(assert (=> b!4761237 m!5730398))

(declare-fun m!5730400 () Bool)

(assert (=> b!4761237 m!5730400))

(declare-fun m!5730402 () Bool)

(assert (=> b!4761239 m!5730402))

(assert (=> b!4761239 m!5730402))

(declare-fun m!5730404 () Bool)

(assert (=> b!4761239 m!5730404))

(declare-fun m!5730406 () Bool)

(assert (=> b!4761239 m!5730406))

(declare-fun m!5730408 () Bool)

(assert (=> bm!333791 m!5730408))

(assert (=> bm!333795 m!5730314))

(assert (=> b!4761241 m!5730396))

(declare-fun m!5730410 () Bool)

(assert (=> b!4761241 m!5730410))

(declare-fun m!5730412 () Bool)

(assert (=> b!4761241 m!5730412))

(declare-fun m!5730414 () Bool)

(assert (=> b!4761241 m!5730414))

(assert (=> b!4761241 m!5730314))

(declare-fun m!5730416 () Bool)

(assert (=> b!4761241 m!5730416))

(assert (=> b!4761241 m!5730410))

(declare-fun m!5730418 () Bool)

(assert (=> b!4761241 m!5730418))

(declare-fun m!5730420 () Bool)

(assert (=> b!4761241 m!5730420))

(declare-fun m!5730422 () Bool)

(assert (=> b!4761241 m!5730422))

(assert (=> bm!333796 m!5730338))

(assert (=> d!1521458 m!5730298))

(declare-fun m!5730424 () Bool)

(assert (=> d!1521458 m!5730424))

(declare-fun m!5730426 () Bool)

(assert (=> d!1521458 m!5730426))

(assert (=> d!1521458 m!5730314))

(assert (=> d!1521458 m!5730298))

(declare-fun m!5730428 () Bool)

(assert (=> d!1521458 m!5730428))

(assert (=> d!1521458 m!5730424))

(assert (=> d!1521458 m!5730338))

(assert (=> d!1521458 m!5730296))

(declare-fun m!5730430 () Bool)

(assert (=> d!1521458 m!5730430))

(assert (=> b!4761240 m!5730396))

(assert (=> b!4761240 m!5730396))

(declare-fun m!5730432 () Bool)

(assert (=> b!4761240 m!5730432))

(assert (=> b!4761240 m!5730432))

(declare-fun m!5730434 () Bool)

(assert (=> b!4761240 m!5730434))

(declare-fun m!5730436 () Bool)

(assert (=> bm!333793 m!5730436))

(declare-fun m!5730438 () Bool)

(assert (=> b!4761242 m!5730438))

(declare-fun m!5730440 () Bool)

(assert (=> bm!333792 m!5730440))

(assert (=> b!4761138 d!1521458))

(declare-fun bs!1147112 () Bool)

(declare-fun b!4761247 () Bool)

(assert (= bs!1147112 (and b!4761247 b!4761140)))

(declare-fun lambda!223819 () Int)

(assert (=> bs!1147112 (= lambda!223819 lambda!223805)))

(declare-fun bs!1147113 () Bool)

(assert (= bs!1147113 (and b!4761247 b!4761164)))

(assert (=> bs!1147113 (= (= localTotalInput!8 (totalInput!4517 thiss!28909)) (= lambda!223819 lambda!223808))))

(assert (=> b!4761247 true))

(declare-fun d!1521460 () Bool)

(declare-fun res!2019331 () Bool)

(declare-fun e!2971182 () Bool)

(assert (=> d!1521460 (=> (not res!2019331) (not e!2971182))))

(assert (=> d!1521460 (= res!2019331 (valid!3861 (cache!4591 thiss!28909)))))

(assert (=> d!1521460 (= (validCacheMapFindLongestMatch!145 (cache!4591 thiss!28909) localTotalInput!8) e!2971182)))

(declare-fun b!4761246 () Bool)

(declare-fun res!2019332 () Bool)

(assert (=> b!4761246 (=> (not res!2019332) (not e!2971182))))

(assert (=> b!4761246 (= res!2019332 (invariantList!1650 (toList!6220 (map!11882 (cache!4591 thiss!28909)))))))

(assert (=> b!4761247 (= e!2971182 (forall!11842 (toList!6220 (map!11882 (cache!4591 thiss!28909))) lambda!223819))))

(assert (= (and d!1521460 res!2019331) b!4761246))

(assert (= (and b!4761246 res!2019332) b!4761247))

(assert (=> d!1521460 m!5730296))

(assert (=> b!4761246 m!5730298))

(assert (=> b!4761246 m!5730300))

(assert (=> b!4761247 m!5730298))

(declare-fun m!5730442 () Bool)

(assert (=> b!4761247 m!5730442))

(assert (=> b!4761138 d!1521460))

(declare-fun d!1521462 () Bool)

(declare-fun lambda!223822 () Int)

(declare-fun forall!11843 (List!53506 Int) Bool)

(assert (=> d!1521462 (= (inv!68929 setElem!27256) (forall!11843 (exprs!3453 setElem!27256) lambda!223822))))

(declare-fun bs!1147114 () Bool)

(assert (= bs!1147114 d!1521462))

(declare-fun m!5730444 () Bool)

(assert (=> bs!1147114 m!5730444))

(assert (=> setNonEmpty!27256 d!1521462))

(declare-fun d!1521464 () Bool)

(assert (=> d!1521464 (= (inv!68926 (totalInput!4517 thiss!28909)) (isBalanced!3913 (c!812184 (totalInput!4517 thiss!28909))))))

(declare-fun bs!1147115 () Bool)

(assert (= bs!1147115 d!1521464))

(declare-fun m!5730446 () Bool)

(assert (=> bs!1147115 m!5730446))

(assert (=> b!4761129 d!1521464))

(declare-fun tp!1353868 () Bool)

(declare-fun b!4761256 () Bool)

(declare-fun e!2971188 () Bool)

(declare-fun tp!1353869 () Bool)

(assert (=> b!4761256 (= e!2971188 (and (inv!68927 (left!39161 (c!812184 (totalInput!4517 thiss!28909)))) tp!1353868 (inv!68927 (right!39491 (c!812184 (totalInput!4517 thiss!28909)))) tp!1353869))))

(declare-fun b!4761258 () Bool)

(declare-fun e!2971187 () Bool)

(declare-fun tp!1353867 () Bool)

(assert (=> b!4761258 (= e!2971187 tp!1353867)))

(declare-fun b!4761257 () Bool)

(declare-fun inv!68932 (IArray!29069) Bool)

(assert (=> b!4761257 (= e!2971188 (and (inv!68932 (xs!17810 (c!812184 (totalInput!4517 thiss!28909)))) e!2971187))))

(assert (=> b!4761136 (= tp!1353858 (and (inv!68927 (c!812184 (totalInput!4517 thiss!28909))) e!2971188))))

(assert (= (and b!4761136 ((_ is Node!14504) (c!812184 (totalInput!4517 thiss!28909)))) b!4761256))

(assert (= b!4761257 b!4761258))

(assert (= (and b!4761136 ((_ is Leaf!23608) (c!812184 (totalInput!4517 thiss!28909)))) b!4761257))

(declare-fun m!5730448 () Bool)

(assert (=> b!4761256 m!5730448))

(declare-fun m!5730450 () Bool)

(assert (=> b!4761256 m!5730450))

(declare-fun m!5730452 () Bool)

(assert (=> b!4761257 m!5730452))

(assert (=> b!4761136 m!5730261))

(declare-fun b!4761266 () Bool)

(declare-fun e!2971194 () Bool)

(declare-fun tp!1353877 () Bool)

(assert (=> b!4761266 (= e!2971194 tp!1353877)))

(declare-fun setElem!27259 () Context!5906)

(declare-fun tp!1353876 () Bool)

(declare-fun setNonEmpty!27259 () Bool)

(declare-fun setRes!27259 () Bool)

(assert (=> setNonEmpty!27259 (= setRes!27259 (and tp!1353876 (inv!68929 setElem!27259) e!2971194))))

(declare-fun setRest!27259 () (InoxSet Context!5906))

(assert (=> setNonEmpty!27259 (= (_1!30959 (_1!30960 (h!59794 (zeroValue!5148 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5906 Bool)) false) setElem!27259 true) setRest!27259))))

(declare-fun b!4761265 () Bool)

(declare-fun e!2971193 () Bool)

(declare-fun tp!1353878 () Bool)

(assert (=> b!4761265 (= e!2971193 (and setRes!27259 tp!1353878))))

(declare-fun condSetEmpty!27259 () Bool)

(assert (=> b!4761265 (= condSetEmpty!27259 (= (_1!30959 (_1!30960 (h!59794 (zeroValue!5148 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))) ((as const (Array Context!5906 Bool)) false)))))

(declare-fun setIsEmpty!27259 () Bool)

(assert (=> setIsEmpty!27259 setRes!27259))

(assert (=> b!4761139 (= tp!1353853 e!2971193)))

(assert (= (and b!4761265 condSetEmpty!27259) setIsEmpty!27259))

(assert (= (and b!4761265 (not condSetEmpty!27259)) setNonEmpty!27259))

(assert (= setNonEmpty!27259 b!4761266))

(assert (= (and b!4761139 ((_ is Cons!53383) (zeroValue!5148 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909)))))))) b!4761265))

(declare-fun m!5730454 () Bool)

(assert (=> setNonEmpty!27259 m!5730454))

(declare-fun b!4761268 () Bool)

(declare-fun e!2971196 () Bool)

(declare-fun tp!1353880 () Bool)

(assert (=> b!4761268 (= e!2971196 tp!1353880)))

(declare-fun tp!1353879 () Bool)

(declare-fun setRes!27260 () Bool)

(declare-fun setElem!27260 () Context!5906)

(declare-fun setNonEmpty!27260 () Bool)

(assert (=> setNonEmpty!27260 (= setRes!27260 (and tp!1353879 (inv!68929 setElem!27260) e!2971196))))

(declare-fun setRest!27260 () (InoxSet Context!5906))

(assert (=> setNonEmpty!27260 (= (_1!30959 (_1!30960 (h!59794 (minValue!5148 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5906 Bool)) false) setElem!27260 true) setRest!27260))))

(declare-fun b!4761267 () Bool)

(declare-fun e!2971195 () Bool)

(declare-fun tp!1353881 () Bool)

(assert (=> b!4761267 (= e!2971195 (and setRes!27260 tp!1353881))))

(declare-fun condSetEmpty!27260 () Bool)

(assert (=> b!4761267 (= condSetEmpty!27260 (= (_1!30959 (_1!30960 (h!59794 (minValue!5148 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909))))))))) ((as const (Array Context!5906 Bool)) false)))))

(declare-fun setIsEmpty!27260 () Bool)

(assert (=> setIsEmpty!27260 setRes!27260))

(assert (=> b!4761139 (= tp!1353852 e!2971195)))

(assert (= (and b!4761267 condSetEmpty!27260) setIsEmpty!27260))

(assert (= (and b!4761267 (not condSetEmpty!27260)) setNonEmpty!27260))

(assert (= setNonEmpty!27260 b!4761268))

(assert (= (and b!4761139 ((_ is Cons!53383) (minValue!5148 (v!47426 (underlying!9937 (v!47427 (underlying!9938 (cache!4591 thiss!28909)))))))) b!4761267))

(declare-fun m!5730456 () Bool)

(assert (=> setNonEmpty!27260 m!5730456))

(declare-fun tp!1353883 () Bool)

(declare-fun b!4761269 () Bool)

(declare-fun tp!1353884 () Bool)

(declare-fun e!2971198 () Bool)

(assert (=> b!4761269 (= e!2971198 (and (inv!68927 (left!39161 (c!812184 localTotalInput!8))) tp!1353883 (inv!68927 (right!39491 (c!812184 localTotalInput!8))) tp!1353884))))

(declare-fun b!4761271 () Bool)

(declare-fun e!2971197 () Bool)

(declare-fun tp!1353882 () Bool)

(assert (=> b!4761271 (= e!2971197 tp!1353882)))

(declare-fun b!4761270 () Bool)

(assert (=> b!4761270 (= e!2971198 (and (inv!68932 (xs!17810 (c!812184 localTotalInput!8))) e!2971197))))

(assert (=> b!4761130 (= tp!1353857 (and (inv!68927 (c!812184 localTotalInput!8)) e!2971198))))

(assert (= (and b!4761130 ((_ is Node!14504) (c!812184 localTotalInput!8))) b!4761269))

(assert (= b!4761270 b!4761271))

(assert (= (and b!4761130 ((_ is Leaf!23608) (c!812184 localTotalInput!8))) b!4761270))

(declare-fun m!5730458 () Bool)

(assert (=> b!4761269 m!5730458))

(declare-fun m!5730460 () Bool)

(assert (=> b!4761269 m!5730460))

(declare-fun m!5730462 () Bool)

(assert (=> b!4761270 m!5730462))

(assert (=> b!4761130 m!5730249))

(declare-fun b!4761273 () Bool)

(declare-fun e!2971200 () Bool)

(declare-fun tp!1353886 () Bool)

(assert (=> b!4761273 (= e!2971200 tp!1353886)))

(declare-fun tp!1353885 () Bool)

(declare-fun setRes!27261 () Bool)

(declare-fun setNonEmpty!27261 () Bool)

(declare-fun setElem!27261 () Context!5906)

(assert (=> setNonEmpty!27261 (= setRes!27261 (and tp!1353885 (inv!68929 setElem!27261) e!2971200))))

(declare-fun setRest!27261 () (InoxSet Context!5906))

(assert (=> setNonEmpty!27261 (= (_1!30959 (_1!30960 (h!59794 mapDefault!21626))) ((_ map or) (store ((as const (Array Context!5906 Bool)) false) setElem!27261 true) setRest!27261))))

(declare-fun b!4761272 () Bool)

(declare-fun e!2971199 () Bool)

(declare-fun tp!1353887 () Bool)

(assert (=> b!4761272 (= e!2971199 (and setRes!27261 tp!1353887))))

(declare-fun condSetEmpty!27261 () Bool)

(assert (=> b!4761272 (= condSetEmpty!27261 (= (_1!30959 (_1!30960 (h!59794 mapDefault!21626))) ((as const (Array Context!5906 Bool)) false)))))

(declare-fun setIsEmpty!27261 () Bool)

(assert (=> setIsEmpty!27261 setRes!27261))

(assert (=> b!4761137 (= tp!1353859 e!2971199)))

(assert (= (and b!4761272 condSetEmpty!27261) setIsEmpty!27261))

(assert (= (and b!4761272 (not condSetEmpty!27261)) setNonEmpty!27261))

(assert (= setNonEmpty!27261 b!4761273))

(assert (= (and b!4761137 ((_ is Cons!53383) mapDefault!21626)) b!4761272))

(declare-fun m!5730464 () Bool)

(assert (=> setNonEmpty!27261 m!5730464))

(declare-fun condSetEmpty!27264 () Bool)

(assert (=> setNonEmpty!27256 (= condSetEmpty!27264 (= setRest!27256 ((as const (Array Context!5906 Bool)) false)))))

(declare-fun setRes!27264 () Bool)

(assert (=> setNonEmpty!27256 (= tp!1353851 setRes!27264)))

(declare-fun setIsEmpty!27264 () Bool)

(assert (=> setIsEmpty!27264 setRes!27264))

(declare-fun setNonEmpty!27264 () Bool)

(declare-fun tp!1353893 () Bool)

(declare-fun setElem!27264 () Context!5906)

(declare-fun e!2971203 () Bool)

(assert (=> setNonEmpty!27264 (= setRes!27264 (and tp!1353893 (inv!68929 setElem!27264) e!2971203))))

(declare-fun setRest!27264 () (InoxSet Context!5906))

(assert (=> setNonEmpty!27264 (= setRest!27256 ((_ map or) (store ((as const (Array Context!5906 Bool)) false) setElem!27264 true) setRest!27264))))

(declare-fun b!4761278 () Bool)

(declare-fun tp!1353892 () Bool)

(assert (=> b!4761278 (= e!2971203 tp!1353892)))

(assert (= (and setNonEmpty!27256 condSetEmpty!27264) setIsEmpty!27264))

(assert (= (and setNonEmpty!27256 (not condSetEmpty!27264)) setNonEmpty!27264))

(assert (= setNonEmpty!27264 b!4761278))

(declare-fun m!5730466 () Bool)

(assert (=> setNonEmpty!27264 m!5730466))

(declare-fun setElem!27269 () Context!5906)

(declare-fun e!2971213 () Bool)

(declare-fun setRes!27270 () Bool)

(declare-fun tp!1353913 () Bool)

(declare-fun setNonEmpty!27269 () Bool)

(assert (=> setNonEmpty!27269 (= setRes!27270 (and tp!1353913 (inv!68929 setElem!27269) e!2971213))))

(declare-fun mapDefault!21629 () List!53507)

(declare-fun setRest!27269 () (InoxSet Context!5906))

(assert (=> setNonEmpty!27269 (= (_1!30959 (_1!30960 (h!59794 mapDefault!21629))) ((_ map or) (store ((as const (Array Context!5906 Bool)) false) setElem!27269 true) setRest!27269))))

(declare-fun mapIsEmpty!21629 () Bool)

(declare-fun mapRes!21629 () Bool)

(assert (=> mapIsEmpty!21629 mapRes!21629))

(declare-fun mapNonEmpty!21629 () Bool)

(declare-fun tp!1353911 () Bool)

(declare-fun e!2971215 () Bool)

(assert (=> mapNonEmpty!21629 (= mapRes!21629 (and tp!1353911 e!2971215))))

(declare-fun mapValue!21629 () List!53507)

(declare-fun mapRest!21629 () (Array (_ BitVec 32) List!53507))

(declare-fun mapKey!21629 () (_ BitVec 32))

(assert (=> mapNonEmpty!21629 (= mapRest!21626 (store mapRest!21629 mapKey!21629 mapValue!21629))))

(declare-fun setNonEmpty!27270 () Bool)

(declare-fun e!2971212 () Bool)

(declare-fun tp!1353910 () Bool)

(declare-fun setRes!27269 () Bool)

(declare-fun setElem!27270 () Context!5906)

(assert (=> setNonEmpty!27270 (= setRes!27269 (and tp!1353910 (inv!68929 setElem!27270) e!2971212))))

(declare-fun setRest!27270 () (InoxSet Context!5906))

(assert (=> setNonEmpty!27270 (= (_1!30959 (_1!30960 (h!59794 mapValue!21629))) ((_ map or) (store ((as const (Array Context!5906 Bool)) false) setElem!27270 true) setRest!27270))))

(declare-fun setIsEmpty!27269 () Bool)

(assert (=> setIsEmpty!27269 setRes!27269))

(declare-fun condMapEmpty!21629 () Bool)

(assert (=> mapNonEmpty!21626 (= condMapEmpty!21629 (= mapRest!21626 ((as const (Array (_ BitVec 32) List!53507)) mapDefault!21629)))))

(declare-fun e!2971214 () Bool)

(assert (=> mapNonEmpty!21626 (= tp!1353860 (and e!2971214 mapRes!21629))))

(declare-fun b!4761289 () Bool)

(declare-fun tp!1353908 () Bool)

(assert (=> b!4761289 (= e!2971213 tp!1353908)))

(declare-fun setIsEmpty!27270 () Bool)

(assert (=> setIsEmpty!27270 setRes!27270))

(declare-fun b!4761290 () Bool)

(declare-fun tp!1353909 () Bool)

(assert (=> b!4761290 (= e!2971215 (and setRes!27269 tp!1353909))))

(declare-fun condSetEmpty!27270 () Bool)

(assert (=> b!4761290 (= condSetEmpty!27270 (= (_1!30959 (_1!30960 (h!59794 mapValue!21629))) ((as const (Array Context!5906 Bool)) false)))))

(declare-fun b!4761291 () Bool)

(declare-fun tp!1353914 () Bool)

(assert (=> b!4761291 (= e!2971212 tp!1353914)))

(declare-fun b!4761292 () Bool)

(declare-fun tp!1353912 () Bool)

(assert (=> b!4761292 (= e!2971214 (and setRes!27270 tp!1353912))))

(declare-fun condSetEmpty!27269 () Bool)

(assert (=> b!4761292 (= condSetEmpty!27269 (= (_1!30959 (_1!30960 (h!59794 mapDefault!21629))) ((as const (Array Context!5906 Bool)) false)))))

(assert (= (and mapNonEmpty!21626 condMapEmpty!21629) mapIsEmpty!21629))

(assert (= (and mapNonEmpty!21626 (not condMapEmpty!21629)) mapNonEmpty!21629))

(assert (= (and b!4761290 condSetEmpty!27270) setIsEmpty!27269))

(assert (= (and b!4761290 (not condSetEmpty!27270)) setNonEmpty!27270))

(assert (= setNonEmpty!27270 b!4761291))

(assert (= (and mapNonEmpty!21629 ((_ is Cons!53383) mapValue!21629)) b!4761290))

(assert (= (and b!4761292 condSetEmpty!27269) setIsEmpty!27270))

(assert (= (and b!4761292 (not condSetEmpty!27269)) setNonEmpty!27269))

(assert (= setNonEmpty!27269 b!4761289))

(assert (= (and mapNonEmpty!21626 ((_ is Cons!53383) mapDefault!21629)) b!4761292))

(declare-fun m!5730468 () Bool)

(assert (=> setNonEmpty!27269 m!5730468))

(declare-fun m!5730470 () Bool)

(assert (=> mapNonEmpty!21629 m!5730470))

(declare-fun m!5730472 () Bool)

(assert (=> setNonEmpty!27270 m!5730472))

(declare-fun b!4761294 () Bool)

(declare-fun e!2971217 () Bool)

(declare-fun tp!1353916 () Bool)

(assert (=> b!4761294 (= e!2971217 tp!1353916)))

(declare-fun tp!1353915 () Bool)

(declare-fun setElem!27271 () Context!5906)

(declare-fun setRes!27271 () Bool)

(declare-fun setNonEmpty!27271 () Bool)

(assert (=> setNonEmpty!27271 (= setRes!27271 (and tp!1353915 (inv!68929 setElem!27271) e!2971217))))

(declare-fun setRest!27271 () (InoxSet Context!5906))

(assert (=> setNonEmpty!27271 (= (_1!30959 (_1!30960 (h!59794 mapValue!21626))) ((_ map or) (store ((as const (Array Context!5906 Bool)) false) setElem!27271 true) setRest!27271))))

(declare-fun b!4761293 () Bool)

(declare-fun e!2971216 () Bool)

(declare-fun tp!1353917 () Bool)

(assert (=> b!4761293 (= e!2971216 (and setRes!27271 tp!1353917))))

(declare-fun condSetEmpty!27271 () Bool)

(assert (=> b!4761293 (= condSetEmpty!27271 (= (_1!30959 (_1!30960 (h!59794 mapValue!21626))) ((as const (Array Context!5906 Bool)) false)))))

(declare-fun setIsEmpty!27271 () Bool)

(assert (=> setIsEmpty!27271 setRes!27271))

(assert (=> mapNonEmpty!21626 (= tp!1353850 e!2971216)))

(assert (= (and b!4761293 condSetEmpty!27271) setIsEmpty!27271))

(assert (= (and b!4761293 (not condSetEmpty!27271)) setNonEmpty!27271))

(assert (= setNonEmpty!27271 b!4761294))

(assert (= (and mapNonEmpty!21626 ((_ is Cons!53383) mapValue!21626)) b!4761293))

(declare-fun m!5730474 () Bool)

(assert (=> setNonEmpty!27271 m!5730474))

(declare-fun b!4761299 () Bool)

(declare-fun e!2971220 () Bool)

(declare-fun tp!1353922 () Bool)

(declare-fun tp!1353923 () Bool)

(assert (=> b!4761299 (= e!2971220 (and tp!1353922 tp!1353923))))

(assert (=> b!4761134 (= tp!1353855 e!2971220)))

(assert (= (and b!4761134 ((_ is Cons!53382) (exprs!3453 setElem!27256))) b!4761299))

(declare-fun b_lambda!183823 () Bool)

(assert (= b_lambda!183817 (or (and b!4761133 b_free!129375) b_lambda!183823)))

(declare-fun b_lambda!183825 () Bool)

(assert (= b_lambda!183819 (or (and b!4761133 b_free!129375) b_lambda!183825)))

(declare-fun b_lambda!183827 () Bool)

(assert (= b_lambda!183821 (or b!4761140 b_lambda!183827)))

(declare-fun bs!1147116 () Bool)

(declare-fun d!1521466 () Bool)

(assert (= bs!1147116 (and d!1521466 b!4761140)))

(assert (=> bs!1147116 (= (dynLambda!21922 lambda!223805 (tuple2!55333 lt!1925055 (apply!12545 (cache!4591 thiss!28909) lt!1925055))) (validCacheMapFindLongestMatchBody!26 (tuple2!55333 lt!1925055 (apply!12545 (cache!4591 thiss!28909) lt!1925055)) localTotalInput!8))))

(declare-fun m!5730476 () Bool)

(assert (=> bs!1147116 m!5730476))

(assert (=> d!1521452 d!1521466))

(check-sat (not b!4761271) (not b!4761239) (not b!4761270) (not b!4761278) (not b_lambda!183827) (not b!4761257) (not bm!333791) (not b!4761155) (not b!4761272) b_and!341001 (not bs!1147116) (not b!4761240) (not b!4761258) (not setNonEmpty!27260) (not b!4761156) (not d!1521458) (not b_lambda!183825) (not setNonEmpty!27269) (not d!1521456) (not b!4761241) b_and!341005 (not b!4761163) (not b!4761299) (not b!4761268) (not b!4761242) (not setNonEmpty!27261) (not b!4761206) (not b!4761136) (not b!4761187) (not bm!333794) (not b!4761256) (not d!1521460) (not b!4761130) (not d!1521432) (not b!4761292) (not bm!333793) (not b!4761153) (not b!4761207) (not setNonEmpty!27270) (not b_next!130081) (not b!4761146) (not b!4761186) (not d!1521450) (not b!4761289) (not b!4761237) (not b!4761164) (not b!4761291) (not b!4761294) (not bm!333795) (not setNonEmpty!27264) (not b!4761169) (not d!1521462) (not b!4761170) (not b!4761205) (not bm!333796) (not setNonEmpty!27271) (not bm!333792) (not b!4761290) (not b!4761266) (not b!4761267) (not b!4761185) (not b!4761158) (not b_next!130079) (not b!4761269) (not d!1521464) (not d!1521452) (not b!4761246) (not d!1521446) (not b!4761293) (not setNonEmpty!27259) (not b!4761211) (not d!1521444) (not mapNonEmpty!21629) (not b!4761265) (not b!4761247) (not b!4761273) (not b_lambda!183823))
(check-sat b_and!341005 b_and!341001 (not b_next!130081) (not b_next!130079))
