; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12262 () Bool)

(assert start!12262)

(declare-fun b!121234 () Bool)

(declare-fun b_free!3881 () Bool)

(declare-fun b_next!3881 () Bool)

(assert (=> b!121234 (= b_free!3881 (not b_next!3881))))

(declare-fun tp!66598 () Bool)

(declare-fun b_and!6011 () Bool)

(assert (=> b!121234 (= tp!66598 b_and!6011)))

(declare-fun b!121246 () Bool)

(declare-fun b_free!3883 () Bool)

(declare-fun b_next!3883 () Bool)

(assert (=> b!121246 (= b_free!3883 (not b_next!3883))))

(declare-fun tp!66595 () Bool)

(declare-fun b_and!6013 () Bool)

(assert (=> b!121246 (= tp!66595 b_and!6013)))

(declare-fun e!69494 () Bool)

(declare-fun e!69496 () Bool)

(assert (=> b!121234 (= e!69494 (and e!69496 tp!66598))))

(declare-fun b!121235 () Bool)

(declare-fun e!69502 () Bool)

(declare-fun tp!66605 () Bool)

(declare-fun tp!66597 () Bool)

(assert (=> b!121235 (= e!69502 (and tp!66605 tp!66597))))

(declare-fun b!121236 () Bool)

(declare-datatypes ((Unit!1520 0))(
  ( (Unit!1521) )
))
(declare-fun e!69488 () Unit!1520)

(declare-fun Unit!1522 () Unit!1520)

(assert (=> b!121236 (= e!69488 Unit!1522)))

(declare-fun b!121237 () Bool)

(declare-fun res!56866 () Bool)

(declare-fun e!69498 () Bool)

(assert (=> b!121237 (=> (not res!56866) (not e!69498))))

(declare-datatypes ((C!2016 0))(
  ( (C!2017 (val!734 Int)) )
))
(declare-datatypes ((Regex!547 0))(
  ( (ElementMatch!547 (c!27002 C!2016)) (Concat!931 (regOne!1606 Regex!547) (regTwo!1606 Regex!547)) (EmptyExpr!547) (Star!547 (reg!876 Regex!547)) (EmptyLang!547) (Union!547 (regOne!1607 Regex!547) (regTwo!1607 Regex!547)) )
))
(declare-datatypes ((Hashable!409 0))(
  ( (HashableExt!408 (__x!2164 Int)) )
))
(declare-datatypes ((tuple2!2322 0))(
  ( (tuple2!2323 (_1!1371 Regex!547) (_2!1371 C!2016)) )
))
(declare-datatypes ((tuple2!2324 0))(
  ( (tuple2!2325 (_1!1372 tuple2!2322) (_2!1372 Regex!547)) )
))
(declare-datatypes ((List!2005 0))(
  ( (Nil!1999) (Cons!1999 (h!7396 tuple2!2324) (t!22482 List!2005)) )
))
(declare-datatypes ((array!1527 0))(
  ( (array!1528 (arr!710 (Array (_ BitVec 32) (_ BitVec 64))) (size!1854 (_ BitVec 32))) )
))
(declare-datatypes ((array!1529 0))(
  ( (array!1530 (arr!711 (Array (_ BitVec 32) List!2005)) (size!1855 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!826 0))(
  ( (LongMapFixedSize!827 (defaultEntry!752 Int) (mask!1354 (_ BitVec 32)) (extraKeys!659 (_ BitVec 32)) (zeroValue!669 List!2005) (minValue!669 List!2005) (_size!959 (_ BitVec 32)) (_keys!704 array!1527) (_values!691 array!1529) (_vacant!474 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1641 0))(
  ( (Cell!1642 (v!13357 LongMapFixedSize!826)) )
))
(declare-datatypes ((MutLongMap!413 0))(
  ( (LongMap!413 (underlying!1025 Cell!1641)) (MutLongMapExt!412 (__x!2165 Int)) )
))
(declare-datatypes ((Cell!1643 0))(
  ( (Cell!1644 (v!13358 MutLongMap!413)) )
))
(declare-datatypes ((MutableMap!409 0))(
  ( (MutableMapExt!408 (__x!2166 Int)) (HashMap!409 (underlying!1026 Cell!1643) (hashF!2285 Hashable!409) (_size!960 (_ BitVec 32)) (defaultValue!558 Int)) )
))
(declare-datatypes ((Cache!254 0))(
  ( (Cache!255 (cache!861 MutableMap!409)) )
))
(declare-fun cache!470 () Cache!254)

(declare-fun valid!371 (Cache!254) Bool)

(assert (=> b!121237 (= res!56866 (valid!371 cache!470))))

(declare-fun b!121238 () Bool)

(declare-fun e!69492 () Bool)

(declare-fun e!69499 () Bool)

(assert (=> b!121238 (= e!69492 e!69499)))

(declare-fun res!56864 () Bool)

(assert (=> b!121238 (=> (not res!56864) (not e!69499))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!36258 () Int)

(assert (=> b!121238 (= res!56864 (= testedPSize!285 lt!36258))))

(declare-datatypes ((List!2006 0))(
  ( (Nil!2000) (Cons!2000 (h!7397 C!2016) (t!22483 List!2006)) )
))
(declare-fun testedP!367 () List!2006)

(declare-fun size!1856 (List!2006) Int)

(assert (=> b!121238 (= lt!36258 (size!1856 testedP!367))))

(declare-fun b!121239 () Bool)

(declare-fun res!56867 () Bool)

(declare-fun e!69500 () Bool)

(assert (=> b!121239 (=> res!56867 e!69500)))

(declare-fun r!15532 () Regex!547)

(declare-fun lt!36264 () C!2016)

(declare-fun validRegex!144 (Regex!547) Bool)

(declare-fun derivativeStep!54 (Regex!547 C!2016) Regex!547)

(assert (=> b!121239 (= res!56867 (not (validRegex!144 (derivativeStep!54 r!15532 lt!36264))))))

(declare-fun b!121240 () Bool)

(declare-fun e!69497 () Bool)

(declare-fun lt!36253 () MutLongMap!413)

(get-info :version)

(assert (=> b!121240 (= e!69496 (and e!69497 ((_ is LongMap!413) lt!36253)))))

(assert (=> b!121240 (= lt!36253 (v!13358 (underlying!1026 (cache!861 cache!470))))))

(declare-fun b!121241 () Bool)

(declare-fun lt!36261 () List!2006)

(assert (=> b!121241 (= e!69500 (= (+ 1 testedPSize!285) (size!1856 lt!36261)))))

(declare-fun b!121242 () Bool)

(declare-fun tp!66608 () Bool)

(assert (=> b!121242 (= e!69502 tp!66608)))

(declare-fun b!121243 () Bool)

(declare-fun tp_is_empty!1149 () Bool)

(assert (=> b!121243 (= e!69502 tp_is_empty!1149)))

(declare-fun b!121244 () Bool)

(declare-fun e!69487 () Bool)

(assert (=> b!121244 (= e!69487 e!69494)))

(declare-fun b!121245 () Bool)

(declare-fun e!69503 () Bool)

(assert (=> b!121245 (= e!69503 e!69500)))

(declare-fun res!56870 () Bool)

(assert (=> b!121245 (=> res!56870 e!69500)))

(declare-fun nullable!85 (Regex!547) Bool)

(assert (=> b!121245 (= res!56870 (not (nullable!85 r!15532)))))

(declare-fun lt!36251 () List!2006)

(declare-fun totalInput!1363 () List!2006)

(declare-fun ++!376 (List!2006 List!2006) List!2006)

(assert (=> b!121245 (= (++!376 lt!36261 lt!36251) totalInput!1363)))

(declare-fun lt!36254 () Unit!1520)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!22 (List!2006 C!2016 List!2006 List!2006) Unit!1520)

(assert (=> b!121245 (= lt!36254 (lemmaMoveElementToOtherListKeepsConcatEq!22 testedP!367 lt!36264 lt!36251 totalInput!1363))))

(declare-fun testedSuffix!285 () List!2006)

(declare-fun tail!235 (List!2006) List!2006)

(assert (=> b!121245 (= lt!36251 (tail!235 testedSuffix!285))))

(declare-fun lt!36257 () List!2006)

(declare-fun isPrefix!125 (List!2006 List!2006) Bool)

(declare-fun head!499 (List!2006) C!2016)

(assert (=> b!121245 (isPrefix!125 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000)) totalInput!1363)))

(declare-fun lt!36252 () Unit!1520)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!28 (List!2006 List!2006) Unit!1520)

(assert (=> b!121245 (= lt!36252 (lemmaAddHeadSuffixToPrefixStillPrefix!28 testedP!367 totalInput!1363))))

(assert (=> b!121245 (= lt!36261 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000)))))

(assert (=> b!121245 (= lt!36264 (head!499 testedSuffix!285))))

(declare-fun e!69489 () Bool)

(declare-fun tp!66609 () Bool)

(declare-fun tp!66602 () Bool)

(declare-fun e!69486 () Bool)

(declare-fun array_inv!511 (array!1527) Bool)

(declare-fun array_inv!512 (array!1529) Bool)

(assert (=> b!121246 (= e!69489 (and tp!66595 tp!66609 tp!66602 (array_inv!511 (_keys!704 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))) (array_inv!512 (_values!691 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))) e!69486))))

(declare-fun b!121247 () Bool)

(declare-fun e!69505 () Bool)

(assert (=> b!121247 (= e!69499 e!69505)))

(declare-fun res!56869 () Bool)

(assert (=> b!121247 (=> (not res!56869) (not e!69505))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!36262 () Int)

(assert (=> b!121247 (= res!56869 (= totalInputSize!643 lt!36262))))

(assert (=> b!121247 (= lt!36262 (size!1856 totalInput!1363))))

(declare-fun b!121248 () Bool)

(declare-fun res!56871 () Bool)

(declare-fun e!69485 () Bool)

(assert (=> b!121248 (=> res!56871 e!69485)))

(assert (=> b!121248 (= res!56871 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!121249 () Bool)

(declare-fun tp!66596 () Bool)

(declare-fun mapRes!1595 () Bool)

(assert (=> b!121249 (= e!69486 (and tp!66596 mapRes!1595))))

(declare-fun condMapEmpty!1595 () Bool)

(declare-fun mapDefault!1595 () List!2005)

(assert (=> b!121249 (= condMapEmpty!1595 (= (arr!711 (_values!691 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))) ((as const (Array (_ BitVec 32) List!2005)) mapDefault!1595)))))

(declare-fun b!121250 () Bool)

(declare-fun e!69490 () Bool)

(assert (=> b!121250 (= e!69497 e!69490)))

(declare-fun b!121251 () Bool)

(assert (=> b!121251 (= e!69485 e!69503)))

(declare-fun res!56872 () Bool)

(assert (=> b!121251 (=> res!56872 e!69503)))

(assert (=> b!121251 (= res!56872 (>= lt!36258 lt!36262))))

(declare-fun lt!36259 () Unit!1520)

(assert (=> b!121251 (= lt!36259 e!69488)))

(declare-fun c!27001 () Bool)

(assert (=> b!121251 (= c!27001 (= lt!36258 lt!36262))))

(assert (=> b!121251 (<= lt!36258 lt!36262)))

(declare-fun lt!36260 () Unit!1520)

(declare-fun lemmaIsPrefixThenSmallerEqSize!37 (List!2006 List!2006) Unit!1520)

(assert (=> b!121251 (= lt!36260 (lemmaIsPrefixThenSmallerEqSize!37 testedP!367 totalInput!1363))))

(declare-fun b!121252 () Bool)

(declare-fun e!69504 () Bool)

(declare-fun tp!66599 () Bool)

(assert (=> b!121252 (= e!69504 (and tp_is_empty!1149 tp!66599))))

(declare-fun b!121253 () Bool)

(assert (=> b!121253 (= e!69490 e!69489)))

(declare-fun b!121254 () Bool)

(declare-fun Unit!1523 () Unit!1520)

(assert (=> b!121254 (= e!69488 Unit!1523)))

(declare-fun lt!36255 () Unit!1520)

(declare-fun lemmaIsPrefixRefl!95 (List!2006 List!2006) Unit!1520)

(assert (=> b!121254 (= lt!36255 (lemmaIsPrefixRefl!95 totalInput!1363 totalInput!1363))))

(assert (=> b!121254 (isPrefix!125 totalInput!1363 totalInput!1363)))

(declare-fun lt!36265 () Unit!1520)

(declare-fun lemmaIsPrefixSameLengthThenSameList!38 (List!2006 List!2006 List!2006) Unit!1520)

(assert (=> b!121254 (= lt!36265 (lemmaIsPrefixSameLengthThenSameList!38 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!121254 false))

(declare-fun mapNonEmpty!1595 () Bool)

(declare-fun tp!66600 () Bool)

(declare-fun tp!66601 () Bool)

(assert (=> mapNonEmpty!1595 (= mapRes!1595 (and tp!66600 tp!66601))))

(declare-fun mapRest!1595 () (Array (_ BitVec 32) List!2005))

(declare-fun mapValue!1595 () List!2005)

(declare-fun mapKey!1595 () (_ BitVec 32))

(assert (=> mapNonEmpty!1595 (= (arr!711 (_values!691 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))) (store mapRest!1595 mapKey!1595 mapValue!1595))))

(declare-fun b!121255 () Bool)

(assert (=> b!121255 (= e!69498 e!69492)))

(declare-fun res!56862 () Bool)

(assert (=> b!121255 (=> (not res!56862) (not e!69492))))

(declare-fun lt!36263 () List!2006)

(assert (=> b!121255 (= res!56862 (= lt!36263 totalInput!1363))))

(assert (=> b!121255 (= lt!36263 (++!376 testedP!367 testedSuffix!285))))

(declare-fun b!121256 () Bool)

(declare-fun e!69493 () Bool)

(declare-fun tp!66607 () Bool)

(assert (=> b!121256 (= e!69493 (and tp_is_empty!1149 tp!66607))))

(declare-fun res!56868 () Bool)

(assert (=> start!12262 (=> (not res!56868) (not e!69498))))

(assert (=> start!12262 (= res!56868 (validRegex!144 r!15532))))

(assert (=> start!12262 e!69498))

(assert (=> start!12262 true))

(assert (=> start!12262 e!69502))

(assert (=> start!12262 e!69504))

(declare-fun e!69495 () Bool)

(assert (=> start!12262 e!69495))

(assert (=> start!12262 e!69493))

(declare-fun inv!2528 (Cache!254) Bool)

(assert (=> start!12262 (and (inv!2528 cache!470) e!69487)))

(declare-fun mapIsEmpty!1595 () Bool)

(assert (=> mapIsEmpty!1595 mapRes!1595))

(declare-fun b!121257 () Bool)

(declare-fun tp!66603 () Bool)

(declare-fun tp!66606 () Bool)

(assert (=> b!121257 (= e!69502 (and tp!66603 tp!66606))))

(declare-fun b!121258 () Bool)

(declare-fun tp!66604 () Bool)

(assert (=> b!121258 (= e!69495 (and tp_is_empty!1149 tp!66604))))

(declare-fun b!121259 () Bool)

(declare-fun e!69501 () Bool)

(assert (=> b!121259 (= e!69505 (not e!69501))))

(declare-fun res!56863 () Bool)

(assert (=> b!121259 (=> res!56863 e!69501)))

(assert (=> b!121259 (= res!56863 (not (isPrefix!125 testedP!367 totalInput!1363)))))

(assert (=> b!121259 (isPrefix!125 testedP!367 lt!36263)))

(declare-fun lt!36266 () Unit!1520)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!69 (List!2006 List!2006) Unit!1520)

(assert (=> b!121259 (= lt!36266 (lemmaConcatTwoListThenFirstIsPrefix!69 testedP!367 testedSuffix!285))))

(declare-fun b!121260 () Bool)

(assert (=> b!121260 (= e!69501 e!69485)))

(declare-fun res!56865 () Bool)

(assert (=> b!121260 (=> res!56865 e!69485)))

(declare-fun lostCause!69 (Regex!547) Bool)

(assert (=> b!121260 (= res!56865 (lostCause!69 r!15532))))

(assert (=> b!121260 (and (= testedSuffix!285 lt!36257) (= lt!36257 testedSuffix!285))))

(declare-fun lt!36256 () Unit!1520)

(declare-fun lemmaSamePrefixThenSameSuffix!60 (List!2006 List!2006 List!2006 List!2006 List!2006) Unit!1520)

(assert (=> b!121260 (= lt!36256 (lemmaSamePrefixThenSameSuffix!60 testedP!367 testedSuffix!285 testedP!367 lt!36257 totalInput!1363))))

(declare-fun getSuffix!64 (List!2006 List!2006) List!2006)

(assert (=> b!121260 (= lt!36257 (getSuffix!64 totalInput!1363 testedP!367))))

(assert (= (and start!12262 res!56868) b!121237))

(assert (= (and b!121237 res!56866) b!121255))

(assert (= (and b!121255 res!56862) b!121238))

(assert (= (and b!121238 res!56864) b!121247))

(assert (= (and b!121247 res!56869) b!121259))

(assert (= (and b!121259 (not res!56863)) b!121260))

(assert (= (and b!121260 (not res!56865)) b!121248))

(assert (= (and b!121248 (not res!56871)) b!121251))

(assert (= (and b!121251 c!27001) b!121254))

(assert (= (and b!121251 (not c!27001)) b!121236))

(assert (= (and b!121251 (not res!56872)) b!121245))

(assert (= (and b!121245 (not res!56870)) b!121239))

(assert (= (and b!121239 (not res!56867)) b!121241))

(assert (= (and start!12262 ((_ is ElementMatch!547) r!15532)) b!121243))

(assert (= (and start!12262 ((_ is Concat!931) r!15532)) b!121257))

(assert (= (and start!12262 ((_ is Star!547) r!15532)) b!121242))

(assert (= (and start!12262 ((_ is Union!547) r!15532)) b!121235))

(assert (= (and start!12262 ((_ is Cons!2000) totalInput!1363)) b!121252))

(assert (= (and start!12262 ((_ is Cons!2000) testedSuffix!285)) b!121258))

(assert (= (and start!12262 ((_ is Cons!2000) testedP!367)) b!121256))

(assert (= (and b!121249 condMapEmpty!1595) mapIsEmpty!1595))

(assert (= (and b!121249 (not condMapEmpty!1595)) mapNonEmpty!1595))

(assert (= b!121246 b!121249))

(assert (= b!121253 b!121246))

(assert (= b!121250 b!121253))

(assert (= (and b!121240 ((_ is LongMap!413) (v!13358 (underlying!1026 (cache!861 cache!470))))) b!121250))

(assert (= b!121234 b!121240))

(assert (= (and b!121244 ((_ is HashMap!409) (cache!861 cache!470))) b!121234))

(assert (= start!12262 b!121244))

(declare-fun m!107539 () Bool)

(assert (=> start!12262 m!107539))

(declare-fun m!107541 () Bool)

(assert (=> start!12262 m!107541))

(declare-fun m!107543 () Bool)

(assert (=> b!121241 m!107543))

(declare-fun m!107545 () Bool)

(assert (=> b!121247 m!107545))

(declare-fun m!107547 () Bool)

(assert (=> b!121246 m!107547))

(declare-fun m!107549 () Bool)

(assert (=> b!121246 m!107549))

(declare-fun m!107551 () Bool)

(assert (=> b!121260 m!107551))

(declare-fun m!107553 () Bool)

(assert (=> b!121260 m!107553))

(declare-fun m!107555 () Bool)

(assert (=> b!121260 m!107555))

(declare-fun m!107557 () Bool)

(assert (=> mapNonEmpty!1595 m!107557))

(declare-fun m!107559 () Bool)

(assert (=> b!121237 m!107559))

(declare-fun m!107561 () Bool)

(assert (=> b!121251 m!107561))

(declare-fun m!107563 () Bool)

(assert (=> b!121259 m!107563))

(declare-fun m!107565 () Bool)

(assert (=> b!121259 m!107565))

(declare-fun m!107567 () Bool)

(assert (=> b!121259 m!107567))

(declare-fun m!107569 () Bool)

(assert (=> b!121255 m!107569))

(declare-fun m!107571 () Bool)

(assert (=> b!121239 m!107571))

(assert (=> b!121239 m!107571))

(declare-fun m!107573 () Bool)

(assert (=> b!121239 m!107573))

(declare-fun m!107575 () Bool)

(assert (=> b!121254 m!107575))

(declare-fun m!107577 () Bool)

(assert (=> b!121254 m!107577))

(declare-fun m!107579 () Bool)

(assert (=> b!121254 m!107579))

(declare-fun m!107581 () Bool)

(assert (=> b!121245 m!107581))

(declare-fun m!107583 () Bool)

(assert (=> b!121245 m!107583))

(declare-fun m!107585 () Bool)

(assert (=> b!121245 m!107585))

(declare-fun m!107587 () Bool)

(assert (=> b!121245 m!107587))

(declare-fun m!107589 () Bool)

(assert (=> b!121245 m!107589))

(declare-fun m!107591 () Bool)

(assert (=> b!121245 m!107591))

(declare-fun m!107593 () Bool)

(assert (=> b!121245 m!107593))

(assert (=> b!121245 m!107585))

(declare-fun m!107595 () Bool)

(assert (=> b!121245 m!107595))

(declare-fun m!107597 () Bool)

(assert (=> b!121245 m!107597))

(declare-fun m!107599 () Bool)

(assert (=> b!121245 m!107599))

(declare-fun m!107601 () Bool)

(assert (=> b!121238 m!107601))

(check-sat b_and!6013 (not b!121252) (not mapNonEmpty!1595) (not b!121260) b_and!6011 (not start!12262) (not b!121238) (not b!121241) (not b!121259) (not b!121235) (not b!121237) (not b!121249) (not b!121247) (not b!121245) (not b!121242) (not b!121246) (not b!121256) (not b!121257) (not b!121258) (not b!121254) (not b!121251) (not b_next!3881) (not b!121255) tp_is_empty!1149 (not b_next!3883) (not b!121239))
(check-sat b_and!6011 b_and!6013 (not b_next!3881) (not b_next!3883))
(get-model)

(declare-fun d!28827 () Bool)

(assert (=> d!28827 (= (head!499 testedSuffix!285) (h!7397 testedSuffix!285))))

(assert (=> b!121245 d!28827))

(declare-fun d!28829 () Bool)

(assert (=> d!28829 (= (tail!235 testedSuffix!285) (t!22483 testedSuffix!285))))

(assert (=> b!121245 d!28829))

(declare-fun d!28831 () Bool)

(assert (=> d!28831 (= (head!499 lt!36257) (h!7397 lt!36257))))

(assert (=> b!121245 d!28831))

(declare-fun d!28833 () Bool)

(declare-fun nullableFct!20 (Regex!547) Bool)

(assert (=> d!28833 (= (nullable!85 r!15532) (nullableFct!20 r!15532))))

(declare-fun bs!11955 () Bool)

(assert (= bs!11955 d!28833))

(declare-fun m!107603 () Bool)

(assert (=> bs!11955 m!107603))

(assert (=> b!121245 d!28833))

(declare-fun d!28835 () Bool)

(assert (=> d!28835 (isPrefix!125 (++!376 testedP!367 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000)) totalInput!1363)))

(declare-fun lt!36269 () Unit!1520)

(declare-fun choose!1573 (List!2006 List!2006) Unit!1520)

(assert (=> d!28835 (= lt!36269 (choose!1573 testedP!367 totalInput!1363))))

(assert (=> d!28835 (isPrefix!125 testedP!367 totalInput!1363)))

(assert (=> d!28835 (= (lemmaAddHeadSuffixToPrefixStillPrefix!28 testedP!367 totalInput!1363) lt!36269)))

(declare-fun bs!11956 () Bool)

(assert (= bs!11956 d!28835))

(assert (=> bs!11956 m!107555))

(assert (=> bs!11956 m!107563))

(declare-fun m!107605 () Bool)

(assert (=> bs!11956 m!107605))

(assert (=> bs!11956 m!107555))

(declare-fun m!107607 () Bool)

(assert (=> bs!11956 m!107607))

(declare-fun m!107609 () Bool)

(assert (=> bs!11956 m!107609))

(assert (=> bs!11956 m!107605))

(declare-fun m!107611 () Bool)

(assert (=> bs!11956 m!107611))

(assert (=> b!121245 d!28835))

(declare-fun b!121269 () Bool)

(declare-fun e!69514 () Bool)

(declare-fun e!69513 () Bool)

(assert (=> b!121269 (= e!69514 e!69513)))

(declare-fun res!56883 () Bool)

(assert (=> b!121269 (=> (not res!56883) (not e!69513))))

(assert (=> b!121269 (= res!56883 (not ((_ is Nil!2000) totalInput!1363)))))

(declare-fun b!121271 () Bool)

(assert (=> b!121271 (= e!69513 (isPrefix!125 (tail!235 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))) (tail!235 totalInput!1363)))))

(declare-fun b!121270 () Bool)

(declare-fun res!56881 () Bool)

(assert (=> b!121270 (=> (not res!56881) (not e!69513))))

(assert (=> b!121270 (= res!56881 (= (head!499 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))) (head!499 totalInput!1363)))))

(declare-fun d!28837 () Bool)

(declare-fun e!69512 () Bool)

(assert (=> d!28837 e!69512))

(declare-fun res!56882 () Bool)

(assert (=> d!28837 (=> res!56882 e!69512)))

(declare-fun lt!36272 () Bool)

(assert (=> d!28837 (= res!56882 (not lt!36272))))

(assert (=> d!28837 (= lt!36272 e!69514)))

(declare-fun res!56884 () Bool)

(assert (=> d!28837 (=> res!56884 e!69514)))

(assert (=> d!28837 (= res!56884 ((_ is Nil!2000) (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))))))

(assert (=> d!28837 (= (isPrefix!125 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000)) totalInput!1363) lt!36272)))

(declare-fun b!121272 () Bool)

(assert (=> b!121272 (= e!69512 (>= (size!1856 totalInput!1363) (size!1856 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000)))))))

(assert (= (and d!28837 (not res!56884)) b!121269))

(assert (= (and b!121269 res!56883) b!121270))

(assert (= (and b!121270 res!56881) b!121271))

(assert (= (and d!28837 (not res!56882)) b!121272))

(assert (=> b!121271 m!107585))

(declare-fun m!107613 () Bool)

(assert (=> b!121271 m!107613))

(declare-fun m!107615 () Bool)

(assert (=> b!121271 m!107615))

(assert (=> b!121271 m!107613))

(assert (=> b!121271 m!107615))

(declare-fun m!107617 () Bool)

(assert (=> b!121271 m!107617))

(assert (=> b!121270 m!107585))

(declare-fun m!107619 () Bool)

(assert (=> b!121270 m!107619))

(declare-fun m!107621 () Bool)

(assert (=> b!121270 m!107621))

(assert (=> b!121272 m!107545))

(assert (=> b!121272 m!107585))

(declare-fun m!107623 () Bool)

(assert (=> b!121272 m!107623))

(assert (=> b!121245 d!28837))

(declare-fun e!69520 () Bool)

(declare-fun b!121284 () Bool)

(declare-fun lt!36275 () List!2006)

(assert (=> b!121284 (= e!69520 (or (not (= (Cons!2000 (head!499 lt!36257) Nil!2000) Nil!2000)) (= lt!36275 testedP!367)))))

(declare-fun b!121283 () Bool)

(declare-fun res!56890 () Bool)

(assert (=> b!121283 (=> (not res!56890) (not e!69520))))

(assert (=> b!121283 (= res!56890 (= (size!1856 lt!36275) (+ (size!1856 testedP!367) (size!1856 (Cons!2000 (head!499 lt!36257) Nil!2000)))))))

(declare-fun b!121282 () Bool)

(declare-fun e!69519 () List!2006)

(assert (=> b!121282 (= e!69519 (Cons!2000 (h!7397 testedP!367) (++!376 (t!22483 testedP!367) (Cons!2000 (head!499 lt!36257) Nil!2000))))))

(declare-fun d!28839 () Bool)

(assert (=> d!28839 e!69520))

(declare-fun res!56889 () Bool)

(assert (=> d!28839 (=> (not res!56889) (not e!69520))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!225 (List!2006) (InoxSet C!2016))

(assert (=> d!28839 (= res!56889 (= (content!225 lt!36275) ((_ map or) (content!225 testedP!367) (content!225 (Cons!2000 (head!499 lt!36257) Nil!2000)))))))

(assert (=> d!28839 (= lt!36275 e!69519)))

(declare-fun c!27005 () Bool)

(assert (=> d!28839 (= c!27005 ((_ is Nil!2000) testedP!367))))

(assert (=> d!28839 (= (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000)) lt!36275)))

(declare-fun b!121281 () Bool)

(assert (=> b!121281 (= e!69519 (Cons!2000 (head!499 lt!36257) Nil!2000))))

(assert (= (and d!28839 c!27005) b!121281))

(assert (= (and d!28839 (not c!27005)) b!121282))

(assert (= (and d!28839 res!56889) b!121283))

(assert (= (and b!121283 res!56890) b!121284))

(declare-fun m!107625 () Bool)

(assert (=> b!121283 m!107625))

(assert (=> b!121283 m!107601))

(declare-fun m!107627 () Bool)

(assert (=> b!121283 m!107627))

(declare-fun m!107629 () Bool)

(assert (=> b!121282 m!107629))

(declare-fun m!107631 () Bool)

(assert (=> d!28839 m!107631))

(declare-fun m!107633 () Bool)

(assert (=> d!28839 m!107633))

(declare-fun m!107635 () Bool)

(assert (=> d!28839 m!107635))

(assert (=> b!121245 d!28839))

(declare-fun e!69522 () Bool)

(declare-fun b!121288 () Bool)

(declare-fun lt!36276 () List!2006)

(assert (=> b!121288 (= e!69522 (or (not (= (Cons!2000 lt!36264 Nil!2000) Nil!2000)) (= lt!36276 testedP!367)))))

(declare-fun b!121287 () Bool)

(declare-fun res!56892 () Bool)

(assert (=> b!121287 (=> (not res!56892) (not e!69522))))

(assert (=> b!121287 (= res!56892 (= (size!1856 lt!36276) (+ (size!1856 testedP!367) (size!1856 (Cons!2000 lt!36264 Nil!2000)))))))

(declare-fun b!121286 () Bool)

(declare-fun e!69521 () List!2006)

(assert (=> b!121286 (= e!69521 (Cons!2000 (h!7397 testedP!367) (++!376 (t!22483 testedP!367) (Cons!2000 lt!36264 Nil!2000))))))

(declare-fun d!28841 () Bool)

(assert (=> d!28841 e!69522))

(declare-fun res!56891 () Bool)

(assert (=> d!28841 (=> (not res!56891) (not e!69522))))

(assert (=> d!28841 (= res!56891 (= (content!225 lt!36276) ((_ map or) (content!225 testedP!367) (content!225 (Cons!2000 lt!36264 Nil!2000)))))))

(assert (=> d!28841 (= lt!36276 e!69521)))

(declare-fun c!27006 () Bool)

(assert (=> d!28841 (= c!27006 ((_ is Nil!2000) testedP!367))))

(assert (=> d!28841 (= (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000)) lt!36276)))

(declare-fun b!121285 () Bool)

(assert (=> b!121285 (= e!69521 (Cons!2000 lt!36264 Nil!2000))))

(assert (= (and d!28841 c!27006) b!121285))

(assert (= (and d!28841 (not c!27006)) b!121286))

(assert (= (and d!28841 res!56891) b!121287))

(assert (= (and b!121287 res!56892) b!121288))

(declare-fun m!107637 () Bool)

(assert (=> b!121287 m!107637))

(assert (=> b!121287 m!107601))

(declare-fun m!107639 () Bool)

(assert (=> b!121287 m!107639))

(declare-fun m!107641 () Bool)

(assert (=> b!121286 m!107641))

(declare-fun m!107643 () Bool)

(assert (=> d!28841 m!107643))

(assert (=> d!28841 m!107633))

(declare-fun m!107645 () Bool)

(assert (=> d!28841 m!107645))

(assert (=> b!121245 d!28841))

(declare-fun d!28843 () Bool)

(assert (=> d!28843 (= (++!376 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000)) lt!36251) totalInput!1363)))

(declare-fun lt!36279 () Unit!1520)

(declare-fun choose!1574 (List!2006 C!2016 List!2006 List!2006) Unit!1520)

(assert (=> d!28843 (= lt!36279 (choose!1574 testedP!367 lt!36264 lt!36251 totalInput!1363))))

(assert (=> d!28843 (= (++!376 testedP!367 (Cons!2000 lt!36264 lt!36251)) totalInput!1363)))

(assert (=> d!28843 (= (lemmaMoveElementToOtherListKeepsConcatEq!22 testedP!367 lt!36264 lt!36251 totalInput!1363) lt!36279)))

(declare-fun bs!11957 () Bool)

(assert (= bs!11957 d!28843))

(assert (=> bs!11957 m!107595))

(assert (=> bs!11957 m!107595))

(declare-fun m!107647 () Bool)

(assert (=> bs!11957 m!107647))

(declare-fun m!107649 () Bool)

(assert (=> bs!11957 m!107649))

(declare-fun m!107651 () Bool)

(assert (=> bs!11957 m!107651))

(assert (=> b!121245 d!28843))

(declare-fun e!69524 () Bool)

(declare-fun b!121292 () Bool)

(declare-fun lt!36280 () List!2006)

(assert (=> b!121292 (= e!69524 (or (not (= lt!36251 Nil!2000)) (= lt!36280 lt!36261)))))

(declare-fun b!121291 () Bool)

(declare-fun res!56894 () Bool)

(assert (=> b!121291 (=> (not res!56894) (not e!69524))))

(assert (=> b!121291 (= res!56894 (= (size!1856 lt!36280) (+ (size!1856 lt!36261) (size!1856 lt!36251))))))

(declare-fun b!121290 () Bool)

(declare-fun e!69523 () List!2006)

(assert (=> b!121290 (= e!69523 (Cons!2000 (h!7397 lt!36261) (++!376 (t!22483 lt!36261) lt!36251)))))

(declare-fun d!28845 () Bool)

(assert (=> d!28845 e!69524))

(declare-fun res!56893 () Bool)

(assert (=> d!28845 (=> (not res!56893) (not e!69524))))

(assert (=> d!28845 (= res!56893 (= (content!225 lt!36280) ((_ map or) (content!225 lt!36261) (content!225 lt!36251))))))

(assert (=> d!28845 (= lt!36280 e!69523)))

(declare-fun c!27007 () Bool)

(assert (=> d!28845 (= c!27007 ((_ is Nil!2000) lt!36261))))

(assert (=> d!28845 (= (++!376 lt!36261 lt!36251) lt!36280)))

(declare-fun b!121289 () Bool)

(assert (=> b!121289 (= e!69523 lt!36251)))

(assert (= (and d!28845 c!27007) b!121289))

(assert (= (and d!28845 (not c!27007)) b!121290))

(assert (= (and d!28845 res!56893) b!121291))

(assert (= (and b!121291 res!56894) b!121292))

(declare-fun m!107653 () Bool)

(assert (=> b!121291 m!107653))

(assert (=> b!121291 m!107543))

(declare-fun m!107655 () Bool)

(assert (=> b!121291 m!107655))

(declare-fun m!107657 () Bool)

(assert (=> b!121290 m!107657))

(declare-fun m!107659 () Bool)

(assert (=> d!28845 m!107659))

(declare-fun m!107661 () Bool)

(assert (=> d!28845 m!107661))

(declare-fun m!107663 () Bool)

(assert (=> d!28845 m!107663))

(assert (=> b!121245 d!28845))

(declare-fun b!121296 () Bool)

(declare-fun e!69526 () Bool)

(declare-fun lt!36281 () List!2006)

(assert (=> b!121296 (= e!69526 (or (not (= testedSuffix!285 Nil!2000)) (= lt!36281 testedP!367)))))

(declare-fun b!121295 () Bool)

(declare-fun res!56896 () Bool)

(assert (=> b!121295 (=> (not res!56896) (not e!69526))))

(assert (=> b!121295 (= res!56896 (= (size!1856 lt!36281) (+ (size!1856 testedP!367) (size!1856 testedSuffix!285))))))

(declare-fun b!121294 () Bool)

(declare-fun e!69525 () List!2006)

(assert (=> b!121294 (= e!69525 (Cons!2000 (h!7397 testedP!367) (++!376 (t!22483 testedP!367) testedSuffix!285)))))

(declare-fun d!28847 () Bool)

(assert (=> d!28847 e!69526))

(declare-fun res!56895 () Bool)

(assert (=> d!28847 (=> (not res!56895) (not e!69526))))

(assert (=> d!28847 (= res!56895 (= (content!225 lt!36281) ((_ map or) (content!225 testedP!367) (content!225 testedSuffix!285))))))

(assert (=> d!28847 (= lt!36281 e!69525)))

(declare-fun c!27008 () Bool)

(assert (=> d!28847 (= c!27008 ((_ is Nil!2000) testedP!367))))

(assert (=> d!28847 (= (++!376 testedP!367 testedSuffix!285) lt!36281)))

(declare-fun b!121293 () Bool)

(assert (=> b!121293 (= e!69525 testedSuffix!285)))

(assert (= (and d!28847 c!27008) b!121293))

(assert (= (and d!28847 (not c!27008)) b!121294))

(assert (= (and d!28847 res!56895) b!121295))

(assert (= (and b!121295 res!56896) b!121296))

(declare-fun m!107665 () Bool)

(assert (=> b!121295 m!107665))

(assert (=> b!121295 m!107601))

(declare-fun m!107667 () Bool)

(assert (=> b!121295 m!107667))

(declare-fun m!107669 () Bool)

(assert (=> b!121294 m!107669))

(declare-fun m!107671 () Bool)

(assert (=> d!28847 m!107671))

(assert (=> d!28847 m!107633))

(declare-fun m!107673 () Bool)

(assert (=> d!28847 m!107673))

(assert (=> b!121255 d!28847))

(declare-fun d!28849 () Bool)

(assert (=> d!28849 (= (array_inv!511 (_keys!704 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))) (bvsge (size!1854 (_keys!704 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!121246 d!28849))

(declare-fun d!28851 () Bool)

(assert (=> d!28851 (= (array_inv!512 (_values!691 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))) (bvsge (size!1855 (_values!691 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!121246 d!28851))

(declare-fun d!28853 () Bool)

(declare-fun lt!36284 () Int)

(assert (=> d!28853 (>= lt!36284 0)))

(declare-fun e!69529 () Int)

(assert (=> d!28853 (= lt!36284 e!69529)))

(declare-fun c!27011 () Bool)

(assert (=> d!28853 (= c!27011 ((_ is Nil!2000) totalInput!1363))))

(assert (=> d!28853 (= (size!1856 totalInput!1363) lt!36284)))

(declare-fun b!121301 () Bool)

(assert (=> b!121301 (= e!69529 0)))

(declare-fun b!121302 () Bool)

(assert (=> b!121302 (= e!69529 (+ 1 (size!1856 (t!22483 totalInput!1363))))))

(assert (= (and d!28853 c!27011) b!121301))

(assert (= (and d!28853 (not c!27011)) b!121302))

(declare-fun m!107675 () Bool)

(assert (=> b!121302 m!107675))

(assert (=> b!121247 d!28853))

(declare-fun d!28855 () Bool)

(declare-fun validCacheMap!27 (MutableMap!409) Bool)

(assert (=> d!28855 (= (valid!371 cache!470) (validCacheMap!27 (cache!861 cache!470)))))

(declare-fun bs!11958 () Bool)

(assert (= bs!11958 d!28855))

(declare-fun m!107677 () Bool)

(assert (=> bs!11958 m!107677))

(assert (=> b!121237 d!28855))

(declare-fun d!28857 () Bool)

(declare-fun lt!36285 () Int)

(assert (=> d!28857 (>= lt!36285 0)))

(declare-fun e!69530 () Int)

(assert (=> d!28857 (= lt!36285 e!69530)))

(declare-fun c!27012 () Bool)

(assert (=> d!28857 (= c!27012 ((_ is Nil!2000) testedP!367))))

(assert (=> d!28857 (= (size!1856 testedP!367) lt!36285)))

(declare-fun b!121303 () Bool)

(assert (=> b!121303 (= e!69530 0)))

(declare-fun b!121304 () Bool)

(assert (=> b!121304 (= e!69530 (+ 1 (size!1856 (t!22483 testedP!367))))))

(assert (= (and d!28857 c!27012) b!121303))

(assert (= (and d!28857 (not c!27012)) b!121304))

(declare-fun m!107679 () Bool)

(assert (=> b!121304 m!107679))

(assert (=> b!121238 d!28857))

(declare-fun b!121323 () Bool)

(declare-fun e!69550 () Bool)

(declare-fun call!5110 () Bool)

(assert (=> b!121323 (= e!69550 call!5110)))

(declare-fun c!27018 () Bool)

(declare-fun bm!5105 () Bool)

(declare-fun c!27017 () Bool)

(assert (=> bm!5105 (= call!5110 (validRegex!144 (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))))))

(declare-fun call!5111 () Bool)

(declare-fun bm!5106 () Bool)

(assert (=> bm!5106 (= call!5111 (validRegex!144 (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))))))

(declare-fun b!121324 () Bool)

(declare-fun e!69551 () Bool)

(declare-fun e!69545 () Bool)

(assert (=> b!121324 (= e!69551 e!69545)))

(declare-fun res!56908 () Bool)

(assert (=> b!121324 (=> (not res!56908) (not e!69545))))

(assert (=> b!121324 (= res!56908 call!5111)))

(declare-fun b!121325 () Bool)

(declare-fun e!69549 () Bool)

(assert (=> b!121325 (= e!69549 call!5111)))

(declare-fun b!121327 () Bool)

(declare-fun e!69548 () Bool)

(declare-fun e!69547 () Bool)

(assert (=> b!121327 (= e!69548 e!69547)))

(assert (=> b!121327 (= c!27018 ((_ is Star!547) (derivativeStep!54 r!15532 lt!36264)))))

(declare-fun bm!5107 () Bool)

(declare-fun call!5112 () Bool)

(assert (=> bm!5107 (= call!5112 call!5110)))

(declare-fun b!121328 () Bool)

(declare-fun res!56907 () Bool)

(assert (=> b!121328 (=> (not res!56907) (not e!69549))))

(assert (=> b!121328 (= res!56907 call!5112)))

(declare-fun e!69546 () Bool)

(assert (=> b!121328 (= e!69546 e!69549)))

(declare-fun b!121329 () Bool)

(assert (=> b!121329 (= e!69547 e!69550)))

(declare-fun res!56911 () Bool)

(assert (=> b!121329 (= res!56911 (not (nullable!85 (reg!876 (derivativeStep!54 r!15532 lt!36264)))))))

(assert (=> b!121329 (=> (not res!56911) (not e!69550))))

(declare-fun b!121330 () Bool)

(assert (=> b!121330 (= e!69545 call!5112)))

(declare-fun b!121331 () Bool)

(declare-fun res!56910 () Bool)

(assert (=> b!121331 (=> res!56910 e!69551)))

(assert (=> b!121331 (= res!56910 (not ((_ is Concat!931) (derivativeStep!54 r!15532 lt!36264))))))

(assert (=> b!121331 (= e!69546 e!69551)))

(declare-fun b!121326 () Bool)

(assert (=> b!121326 (= e!69547 e!69546)))

(assert (=> b!121326 (= c!27017 ((_ is Union!547) (derivativeStep!54 r!15532 lt!36264)))))

(declare-fun d!28859 () Bool)

(declare-fun res!56909 () Bool)

(assert (=> d!28859 (=> res!56909 e!69548)))

(assert (=> d!28859 (= res!56909 ((_ is ElementMatch!547) (derivativeStep!54 r!15532 lt!36264)))))

(assert (=> d!28859 (= (validRegex!144 (derivativeStep!54 r!15532 lt!36264)) e!69548)))

(assert (= (and d!28859 (not res!56909)) b!121327))

(assert (= (and b!121327 c!27018) b!121329))

(assert (= (and b!121327 (not c!27018)) b!121326))

(assert (= (and b!121329 res!56911) b!121323))

(assert (= (and b!121326 c!27017) b!121328))

(assert (= (and b!121326 (not c!27017)) b!121331))

(assert (= (and b!121328 res!56907) b!121325))

(assert (= (and b!121331 (not res!56910)) b!121324))

(assert (= (and b!121324 res!56908) b!121330))

(assert (= (or b!121325 b!121324) bm!5106))

(assert (= (or b!121328 b!121330) bm!5107))

(assert (= (or b!121323 bm!5107) bm!5105))

(declare-fun m!107681 () Bool)

(assert (=> bm!5105 m!107681))

(declare-fun m!107683 () Bool)

(assert (=> bm!5106 m!107683))

(declare-fun m!107685 () Bool)

(assert (=> b!121329 m!107685))

(assert (=> b!121239 d!28859))

(declare-fun call!5123 () Regex!547)

(declare-fun c!27030 () Bool)

(declare-fun bm!5116 () Bool)

(assert (=> bm!5116 (= call!5123 (derivativeStep!54 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)) lt!36264))))

(declare-fun b!121352 () Bool)

(declare-fun e!69562 () Regex!547)

(declare-fun e!69563 () Regex!547)

(assert (=> b!121352 (= e!69562 e!69563)))

(declare-fun c!27031 () Bool)

(assert (=> b!121352 (= c!27031 ((_ is ElementMatch!547) r!15532))))

(declare-fun b!121353 () Bool)

(assert (=> b!121353 (= c!27030 ((_ is Union!547) r!15532))))

(declare-fun e!69565 () Regex!547)

(assert (=> b!121353 (= e!69563 e!69565)))

(declare-fun b!121354 () Bool)

(declare-fun e!69566 () Regex!547)

(assert (=> b!121354 (= e!69565 e!69566)))

(declare-fun c!27033 () Bool)

(assert (=> b!121354 (= c!27033 ((_ is Star!547) r!15532))))

(declare-fun b!121355 () Bool)

(declare-fun call!5124 () Regex!547)

(assert (=> b!121355 (= e!69565 (Union!547 call!5123 call!5124))))

(declare-fun b!121356 () Bool)

(declare-fun call!5121 () Regex!547)

(assert (=> b!121356 (= e!69566 (Concat!931 call!5121 r!15532))))

(declare-fun bm!5118 () Bool)

(assert (=> bm!5118 (= call!5121 call!5124)))

(declare-fun bm!5119 () Bool)

(assert (=> bm!5119 (= call!5124 (derivativeStep!54 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))) lt!36264))))

(declare-fun call!5122 () Regex!547)

(declare-fun e!69564 () Regex!547)

(declare-fun b!121357 () Bool)

(assert (=> b!121357 (= e!69564 (Union!547 (Concat!931 call!5122 (regTwo!1606 r!15532)) call!5123))))

(declare-fun b!121358 () Bool)

(declare-fun c!27029 () Bool)

(assert (=> b!121358 (= c!27029 (nullable!85 (regOne!1606 r!15532)))))

(assert (=> b!121358 (= e!69566 e!69564)))

(declare-fun b!121359 () Bool)

(assert (=> b!121359 (= e!69563 (ite (= lt!36264 (c!27002 r!15532)) EmptyExpr!547 EmptyLang!547))))

(declare-fun bm!5117 () Bool)

(assert (=> bm!5117 (= call!5122 call!5121)))

(declare-fun d!28861 () Bool)

(declare-fun lt!36288 () Regex!547)

(assert (=> d!28861 (validRegex!144 lt!36288)))

(assert (=> d!28861 (= lt!36288 e!69562)))

(declare-fun c!27032 () Bool)

(assert (=> d!28861 (= c!27032 (or ((_ is EmptyExpr!547) r!15532) ((_ is EmptyLang!547) r!15532)))))

(assert (=> d!28861 (validRegex!144 r!15532)))

(assert (=> d!28861 (= (derivativeStep!54 r!15532 lt!36264) lt!36288)))

(declare-fun b!121360 () Bool)

(assert (=> b!121360 (= e!69562 EmptyLang!547)))

(declare-fun b!121361 () Bool)

(assert (=> b!121361 (= e!69564 (Union!547 (Concat!931 call!5122 (regTwo!1606 r!15532)) EmptyLang!547))))

(assert (= (and d!28861 c!27032) b!121360))

(assert (= (and d!28861 (not c!27032)) b!121352))

(assert (= (and b!121352 c!27031) b!121359))

(assert (= (and b!121352 (not c!27031)) b!121353))

(assert (= (and b!121353 c!27030) b!121355))

(assert (= (and b!121353 (not c!27030)) b!121354))

(assert (= (and b!121354 c!27033) b!121356))

(assert (= (and b!121354 (not c!27033)) b!121358))

(assert (= (and b!121358 c!27029) b!121357))

(assert (= (and b!121358 (not c!27029)) b!121361))

(assert (= (or b!121357 b!121361) bm!5117))

(assert (= (or b!121356 bm!5117) bm!5118))

(assert (= (or b!121355 bm!5118) bm!5119))

(assert (= (or b!121355 b!121357) bm!5116))

(declare-fun m!107687 () Bool)

(assert (=> bm!5116 m!107687))

(declare-fun m!107689 () Bool)

(assert (=> bm!5119 m!107689))

(declare-fun m!107691 () Bool)

(assert (=> b!121358 m!107691))

(declare-fun m!107693 () Bool)

(assert (=> d!28861 m!107693))

(assert (=> d!28861 m!107539))

(assert (=> b!121239 d!28861))

(declare-fun b!121362 () Bool)

(declare-fun e!69569 () Bool)

(declare-fun e!69568 () Bool)

(assert (=> b!121362 (= e!69569 e!69568)))

(declare-fun res!56914 () Bool)

(assert (=> b!121362 (=> (not res!56914) (not e!69568))))

(assert (=> b!121362 (= res!56914 (not ((_ is Nil!2000) totalInput!1363)))))

(declare-fun b!121364 () Bool)

(assert (=> b!121364 (= e!69568 (isPrefix!125 (tail!235 testedP!367) (tail!235 totalInput!1363)))))

(declare-fun b!121363 () Bool)

(declare-fun res!56912 () Bool)

(assert (=> b!121363 (=> (not res!56912) (not e!69568))))

(assert (=> b!121363 (= res!56912 (= (head!499 testedP!367) (head!499 totalInput!1363)))))

(declare-fun d!28863 () Bool)

(declare-fun e!69567 () Bool)

(assert (=> d!28863 e!69567))

(declare-fun res!56913 () Bool)

(assert (=> d!28863 (=> res!56913 e!69567)))

(declare-fun lt!36289 () Bool)

(assert (=> d!28863 (= res!56913 (not lt!36289))))

(assert (=> d!28863 (= lt!36289 e!69569)))

(declare-fun res!56915 () Bool)

(assert (=> d!28863 (=> res!56915 e!69569)))

(assert (=> d!28863 (= res!56915 ((_ is Nil!2000) testedP!367))))

(assert (=> d!28863 (= (isPrefix!125 testedP!367 totalInput!1363) lt!36289)))

(declare-fun b!121365 () Bool)

(assert (=> b!121365 (= e!69567 (>= (size!1856 totalInput!1363) (size!1856 testedP!367)))))

(assert (= (and d!28863 (not res!56915)) b!121362))

(assert (= (and b!121362 res!56914) b!121363))

(assert (= (and b!121363 res!56912) b!121364))

(assert (= (and d!28863 (not res!56913)) b!121365))

(declare-fun m!107695 () Bool)

(assert (=> b!121364 m!107695))

(assert (=> b!121364 m!107615))

(assert (=> b!121364 m!107695))

(assert (=> b!121364 m!107615))

(declare-fun m!107697 () Bool)

(assert (=> b!121364 m!107697))

(declare-fun m!107699 () Bool)

(assert (=> b!121363 m!107699))

(assert (=> b!121363 m!107621))

(assert (=> b!121365 m!107545))

(assert (=> b!121365 m!107601))

(assert (=> b!121259 d!28863))

(declare-fun b!121366 () Bool)

(declare-fun e!69572 () Bool)

(declare-fun e!69571 () Bool)

(assert (=> b!121366 (= e!69572 e!69571)))

(declare-fun res!56918 () Bool)

(assert (=> b!121366 (=> (not res!56918) (not e!69571))))

(assert (=> b!121366 (= res!56918 (not ((_ is Nil!2000) lt!36263)))))

(declare-fun b!121368 () Bool)

(assert (=> b!121368 (= e!69571 (isPrefix!125 (tail!235 testedP!367) (tail!235 lt!36263)))))

(declare-fun b!121367 () Bool)

(declare-fun res!56916 () Bool)

(assert (=> b!121367 (=> (not res!56916) (not e!69571))))

(assert (=> b!121367 (= res!56916 (= (head!499 testedP!367) (head!499 lt!36263)))))

(declare-fun d!28865 () Bool)

(declare-fun e!69570 () Bool)

(assert (=> d!28865 e!69570))

(declare-fun res!56917 () Bool)

(assert (=> d!28865 (=> res!56917 e!69570)))

(declare-fun lt!36290 () Bool)

(assert (=> d!28865 (= res!56917 (not lt!36290))))

(assert (=> d!28865 (= lt!36290 e!69572)))

(declare-fun res!56919 () Bool)

(assert (=> d!28865 (=> res!56919 e!69572)))

(assert (=> d!28865 (= res!56919 ((_ is Nil!2000) testedP!367))))

(assert (=> d!28865 (= (isPrefix!125 testedP!367 lt!36263) lt!36290)))

(declare-fun b!121369 () Bool)

(assert (=> b!121369 (= e!69570 (>= (size!1856 lt!36263) (size!1856 testedP!367)))))

(assert (= (and d!28865 (not res!56919)) b!121366))

(assert (= (and b!121366 res!56918) b!121367))

(assert (= (and b!121367 res!56916) b!121368))

(assert (= (and d!28865 (not res!56917)) b!121369))

(assert (=> b!121368 m!107695))

(declare-fun m!107701 () Bool)

(assert (=> b!121368 m!107701))

(assert (=> b!121368 m!107695))

(assert (=> b!121368 m!107701))

(declare-fun m!107703 () Bool)

(assert (=> b!121368 m!107703))

(assert (=> b!121367 m!107699))

(declare-fun m!107705 () Bool)

(assert (=> b!121367 m!107705))

(declare-fun m!107707 () Bool)

(assert (=> b!121369 m!107707))

(assert (=> b!121369 m!107601))

(assert (=> b!121259 d!28865))

(declare-fun d!28867 () Bool)

(assert (=> d!28867 (isPrefix!125 testedP!367 (++!376 testedP!367 testedSuffix!285))))

(declare-fun lt!36293 () Unit!1520)

(declare-fun choose!1575 (List!2006 List!2006) Unit!1520)

(assert (=> d!28867 (= lt!36293 (choose!1575 testedP!367 testedSuffix!285))))

(assert (=> d!28867 (= (lemmaConcatTwoListThenFirstIsPrefix!69 testedP!367 testedSuffix!285) lt!36293)))

(declare-fun bs!11959 () Bool)

(assert (= bs!11959 d!28867))

(assert (=> bs!11959 m!107569))

(assert (=> bs!11959 m!107569))

(declare-fun m!107709 () Bool)

(assert (=> bs!11959 m!107709))

(declare-fun m!107711 () Bool)

(assert (=> bs!11959 m!107711))

(assert (=> b!121259 d!28867))

(declare-fun d!28869 () Bool)

(assert (=> d!28869 (<= (size!1856 testedP!367) (size!1856 totalInput!1363))))

(declare-fun lt!36296 () Unit!1520)

(declare-fun choose!1576 (List!2006 List!2006) Unit!1520)

(assert (=> d!28869 (= lt!36296 (choose!1576 testedP!367 totalInput!1363))))

(assert (=> d!28869 (isPrefix!125 testedP!367 totalInput!1363)))

(assert (=> d!28869 (= (lemmaIsPrefixThenSmallerEqSize!37 testedP!367 totalInput!1363) lt!36296)))

(declare-fun bs!11960 () Bool)

(assert (= bs!11960 d!28869))

(assert (=> bs!11960 m!107601))

(assert (=> bs!11960 m!107545))

(declare-fun m!107713 () Bool)

(assert (=> bs!11960 m!107713))

(assert (=> bs!11960 m!107563))

(assert (=> b!121251 d!28869))

(declare-fun b!121370 () Bool)

(declare-fun e!69578 () Bool)

(declare-fun call!5125 () Bool)

(assert (=> b!121370 (= e!69578 call!5125)))

(declare-fun c!27034 () Bool)

(declare-fun bm!5120 () Bool)

(declare-fun c!27035 () Bool)

(assert (=> bm!5120 (= call!5125 (validRegex!144 (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))))

(declare-fun bm!5121 () Bool)

(declare-fun call!5126 () Bool)

(assert (=> bm!5121 (= call!5126 (validRegex!144 (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))))))

(declare-fun b!121371 () Bool)

(declare-fun e!69579 () Bool)

(declare-fun e!69573 () Bool)

(assert (=> b!121371 (= e!69579 e!69573)))

(declare-fun res!56921 () Bool)

(assert (=> b!121371 (=> (not res!56921) (not e!69573))))

(assert (=> b!121371 (= res!56921 call!5126)))

(declare-fun b!121372 () Bool)

(declare-fun e!69577 () Bool)

(assert (=> b!121372 (= e!69577 call!5126)))

(declare-fun b!121374 () Bool)

(declare-fun e!69576 () Bool)

(declare-fun e!69575 () Bool)

(assert (=> b!121374 (= e!69576 e!69575)))

(assert (=> b!121374 (= c!27035 ((_ is Star!547) r!15532))))

(declare-fun bm!5122 () Bool)

(declare-fun call!5127 () Bool)

(assert (=> bm!5122 (= call!5127 call!5125)))

(declare-fun b!121375 () Bool)

(declare-fun res!56920 () Bool)

(assert (=> b!121375 (=> (not res!56920) (not e!69577))))

(assert (=> b!121375 (= res!56920 call!5127)))

(declare-fun e!69574 () Bool)

(assert (=> b!121375 (= e!69574 e!69577)))

(declare-fun b!121376 () Bool)

(assert (=> b!121376 (= e!69575 e!69578)))

(declare-fun res!56924 () Bool)

(assert (=> b!121376 (= res!56924 (not (nullable!85 (reg!876 r!15532))))))

(assert (=> b!121376 (=> (not res!56924) (not e!69578))))

(declare-fun b!121377 () Bool)

(assert (=> b!121377 (= e!69573 call!5127)))

(declare-fun b!121378 () Bool)

(declare-fun res!56923 () Bool)

(assert (=> b!121378 (=> res!56923 e!69579)))

(assert (=> b!121378 (= res!56923 (not ((_ is Concat!931) r!15532)))))

(assert (=> b!121378 (= e!69574 e!69579)))

(declare-fun b!121373 () Bool)

(assert (=> b!121373 (= e!69575 e!69574)))

(assert (=> b!121373 (= c!27034 ((_ is Union!547) r!15532))))

(declare-fun d!28871 () Bool)

(declare-fun res!56922 () Bool)

(assert (=> d!28871 (=> res!56922 e!69576)))

(assert (=> d!28871 (= res!56922 ((_ is ElementMatch!547) r!15532))))

(assert (=> d!28871 (= (validRegex!144 r!15532) e!69576)))

(assert (= (and d!28871 (not res!56922)) b!121374))

(assert (= (and b!121374 c!27035) b!121376))

(assert (= (and b!121374 (not c!27035)) b!121373))

(assert (= (and b!121376 res!56924) b!121370))

(assert (= (and b!121373 c!27034) b!121375))

(assert (= (and b!121373 (not c!27034)) b!121378))

(assert (= (and b!121375 res!56920) b!121372))

(assert (= (and b!121378 (not res!56923)) b!121371))

(assert (= (and b!121371 res!56921) b!121377))

(assert (= (or b!121372 b!121371) bm!5121))

(assert (= (or b!121375 b!121377) bm!5122))

(assert (= (or b!121370 bm!5122) bm!5120))

(declare-fun m!107715 () Bool)

(assert (=> bm!5120 m!107715))

(declare-fun m!107717 () Bool)

(assert (=> bm!5121 m!107717))

(declare-fun m!107719 () Bool)

(assert (=> b!121376 m!107719))

(assert (=> start!12262 d!28871))

(declare-fun d!28873 () Bool)

(declare-fun res!56927 () Bool)

(declare-fun e!69582 () Bool)

(assert (=> d!28873 (=> (not res!56927) (not e!69582))))

(assert (=> d!28873 (= res!56927 ((_ is HashMap!409) (cache!861 cache!470)))))

(assert (=> d!28873 (= (inv!2528 cache!470) e!69582)))

(declare-fun b!121381 () Bool)

(assert (=> b!121381 (= e!69582 (validCacheMap!27 (cache!861 cache!470)))))

(assert (= (and d!28873 res!56927) b!121381))

(assert (=> b!121381 m!107677))

(assert (=> start!12262 d!28873))

(declare-fun d!28875 () Bool)

(declare-fun lostCauseFct!30 (Regex!547) Bool)

(assert (=> d!28875 (= (lostCause!69 r!15532) (lostCauseFct!30 r!15532))))

(declare-fun bs!11961 () Bool)

(assert (= bs!11961 d!28875))

(declare-fun m!107721 () Bool)

(assert (=> bs!11961 m!107721))

(assert (=> b!121260 d!28875))

(declare-fun d!28877 () Bool)

(assert (=> d!28877 (= testedSuffix!285 lt!36257)))

(declare-fun lt!36299 () Unit!1520)

(declare-fun choose!1577 (List!2006 List!2006 List!2006 List!2006 List!2006) Unit!1520)

(assert (=> d!28877 (= lt!36299 (choose!1577 testedP!367 testedSuffix!285 testedP!367 lt!36257 totalInput!1363))))

(assert (=> d!28877 (isPrefix!125 testedP!367 totalInput!1363)))

(assert (=> d!28877 (= (lemmaSamePrefixThenSameSuffix!60 testedP!367 testedSuffix!285 testedP!367 lt!36257 totalInput!1363) lt!36299)))

(declare-fun bs!11962 () Bool)

(assert (= bs!11962 d!28877))

(declare-fun m!107723 () Bool)

(assert (=> bs!11962 m!107723))

(assert (=> bs!11962 m!107563))

(assert (=> b!121260 d!28877))

(declare-fun d!28879 () Bool)

(declare-fun lt!36302 () List!2006)

(assert (=> d!28879 (= (++!376 testedP!367 lt!36302) totalInput!1363)))

(declare-fun e!69585 () List!2006)

(assert (=> d!28879 (= lt!36302 e!69585)))

(declare-fun c!27038 () Bool)

(assert (=> d!28879 (= c!27038 ((_ is Cons!2000) testedP!367))))

(assert (=> d!28879 (>= (size!1856 totalInput!1363) (size!1856 testedP!367))))

(assert (=> d!28879 (= (getSuffix!64 totalInput!1363 testedP!367) lt!36302)))

(declare-fun b!121386 () Bool)

(assert (=> b!121386 (= e!69585 (getSuffix!64 (tail!235 totalInput!1363) (t!22483 testedP!367)))))

(declare-fun b!121387 () Bool)

(assert (=> b!121387 (= e!69585 totalInput!1363)))

(assert (= (and d!28879 c!27038) b!121386))

(assert (= (and d!28879 (not c!27038)) b!121387))

(declare-fun m!107725 () Bool)

(assert (=> d!28879 m!107725))

(assert (=> d!28879 m!107545))

(assert (=> d!28879 m!107601))

(assert (=> b!121386 m!107615))

(assert (=> b!121386 m!107615))

(declare-fun m!107727 () Bool)

(assert (=> b!121386 m!107727))

(assert (=> b!121260 d!28879))

(declare-fun d!28881 () Bool)

(declare-fun lt!36303 () Int)

(assert (=> d!28881 (>= lt!36303 0)))

(declare-fun e!69586 () Int)

(assert (=> d!28881 (= lt!36303 e!69586)))

(declare-fun c!27039 () Bool)

(assert (=> d!28881 (= c!27039 ((_ is Nil!2000) lt!36261))))

(assert (=> d!28881 (= (size!1856 lt!36261) lt!36303)))

(declare-fun b!121388 () Bool)

(assert (=> b!121388 (= e!69586 0)))

(declare-fun b!121389 () Bool)

(assert (=> b!121389 (= e!69586 (+ 1 (size!1856 (t!22483 lt!36261))))))

(assert (= (and d!28881 c!27039) b!121388))

(assert (= (and d!28881 (not c!27039)) b!121389))

(declare-fun m!107729 () Bool)

(assert (=> b!121389 m!107729))

(assert (=> b!121241 d!28881))

(declare-fun d!28883 () Bool)

(assert (=> d!28883 (isPrefix!125 totalInput!1363 totalInput!1363)))

(declare-fun lt!36306 () Unit!1520)

(declare-fun choose!1578 (List!2006 List!2006) Unit!1520)

(assert (=> d!28883 (= lt!36306 (choose!1578 totalInput!1363 totalInput!1363))))

(assert (=> d!28883 (= (lemmaIsPrefixRefl!95 totalInput!1363 totalInput!1363) lt!36306)))

(declare-fun bs!11963 () Bool)

(assert (= bs!11963 d!28883))

(assert (=> bs!11963 m!107577))

(declare-fun m!107731 () Bool)

(assert (=> bs!11963 m!107731))

(assert (=> b!121254 d!28883))

(declare-fun b!121390 () Bool)

(declare-fun e!69589 () Bool)

(declare-fun e!69588 () Bool)

(assert (=> b!121390 (= e!69589 e!69588)))

(declare-fun res!56930 () Bool)

(assert (=> b!121390 (=> (not res!56930) (not e!69588))))

(assert (=> b!121390 (= res!56930 (not ((_ is Nil!2000) totalInput!1363)))))

(declare-fun b!121392 () Bool)

(assert (=> b!121392 (= e!69588 (isPrefix!125 (tail!235 totalInput!1363) (tail!235 totalInput!1363)))))

(declare-fun b!121391 () Bool)

(declare-fun res!56928 () Bool)

(assert (=> b!121391 (=> (not res!56928) (not e!69588))))

(assert (=> b!121391 (= res!56928 (= (head!499 totalInput!1363) (head!499 totalInput!1363)))))

(declare-fun d!28885 () Bool)

(declare-fun e!69587 () Bool)

(assert (=> d!28885 e!69587))

(declare-fun res!56929 () Bool)

(assert (=> d!28885 (=> res!56929 e!69587)))

(declare-fun lt!36307 () Bool)

(assert (=> d!28885 (= res!56929 (not lt!36307))))

(assert (=> d!28885 (= lt!36307 e!69589)))

(declare-fun res!56931 () Bool)

(assert (=> d!28885 (=> res!56931 e!69589)))

(assert (=> d!28885 (= res!56931 ((_ is Nil!2000) totalInput!1363))))

(assert (=> d!28885 (= (isPrefix!125 totalInput!1363 totalInput!1363) lt!36307)))

(declare-fun b!121393 () Bool)

(assert (=> b!121393 (= e!69587 (>= (size!1856 totalInput!1363) (size!1856 totalInput!1363)))))

(assert (= (and d!28885 (not res!56931)) b!121390))

(assert (= (and b!121390 res!56930) b!121391))

(assert (= (and b!121391 res!56928) b!121392))

(assert (= (and d!28885 (not res!56929)) b!121393))

(assert (=> b!121392 m!107615))

(assert (=> b!121392 m!107615))

(assert (=> b!121392 m!107615))

(assert (=> b!121392 m!107615))

(declare-fun m!107733 () Bool)

(assert (=> b!121392 m!107733))

(assert (=> b!121391 m!107621))

(assert (=> b!121391 m!107621))

(assert (=> b!121393 m!107545))

(assert (=> b!121393 m!107545))

(assert (=> b!121254 d!28885))

(declare-fun d!28887 () Bool)

(assert (=> d!28887 (= totalInput!1363 testedP!367)))

(declare-fun lt!36310 () Unit!1520)

(declare-fun choose!1579 (List!2006 List!2006 List!2006) Unit!1520)

(assert (=> d!28887 (= lt!36310 (choose!1579 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28887 (isPrefix!125 totalInput!1363 totalInput!1363)))

(assert (=> d!28887 (= (lemmaIsPrefixSameLengthThenSameList!38 totalInput!1363 testedP!367 totalInput!1363) lt!36310)))

(declare-fun bs!11964 () Bool)

(assert (= bs!11964 d!28887))

(declare-fun m!107735 () Bool)

(assert (=> bs!11964 m!107735))

(assert (=> bs!11964 m!107577))

(assert (=> b!121254 d!28887))

(declare-fun b!121404 () Bool)

(declare-fun e!69592 () Bool)

(assert (=> b!121404 (= e!69592 tp_is_empty!1149)))

(declare-fun b!121406 () Bool)

(declare-fun tp!66622 () Bool)

(assert (=> b!121406 (= e!69592 tp!66622)))

(declare-fun b!121407 () Bool)

(declare-fun tp!66623 () Bool)

(declare-fun tp!66621 () Bool)

(assert (=> b!121407 (= e!69592 (and tp!66623 tp!66621))))

(assert (=> b!121235 (= tp!66605 e!69592)))

(declare-fun b!121405 () Bool)

(declare-fun tp!66620 () Bool)

(declare-fun tp!66624 () Bool)

(assert (=> b!121405 (= e!69592 (and tp!66620 tp!66624))))

(assert (= (and b!121235 ((_ is ElementMatch!547) (regOne!1607 r!15532))) b!121404))

(assert (= (and b!121235 ((_ is Concat!931) (regOne!1607 r!15532))) b!121405))

(assert (= (and b!121235 ((_ is Star!547) (regOne!1607 r!15532))) b!121406))

(assert (= (and b!121235 ((_ is Union!547) (regOne!1607 r!15532))) b!121407))

(declare-fun b!121408 () Bool)

(declare-fun e!69593 () Bool)

(assert (=> b!121408 (= e!69593 tp_is_empty!1149)))

(declare-fun b!121410 () Bool)

(declare-fun tp!66627 () Bool)

(assert (=> b!121410 (= e!69593 tp!66627)))

(declare-fun b!121411 () Bool)

(declare-fun tp!66628 () Bool)

(declare-fun tp!66626 () Bool)

(assert (=> b!121411 (= e!69593 (and tp!66628 tp!66626))))

(assert (=> b!121235 (= tp!66597 e!69593)))

(declare-fun b!121409 () Bool)

(declare-fun tp!66625 () Bool)

(declare-fun tp!66629 () Bool)

(assert (=> b!121409 (= e!69593 (and tp!66625 tp!66629))))

(assert (= (and b!121235 ((_ is ElementMatch!547) (regTwo!1607 r!15532))) b!121408))

(assert (= (and b!121235 ((_ is Concat!931) (regTwo!1607 r!15532))) b!121409))

(assert (= (and b!121235 ((_ is Star!547) (regTwo!1607 r!15532))) b!121410))

(assert (= (and b!121235 ((_ is Union!547) (regTwo!1607 r!15532))) b!121411))

(declare-fun b!121416 () Bool)

(declare-fun tp!66638 () Bool)

(declare-fun e!69596 () Bool)

(declare-fun tp!66637 () Bool)

(declare-fun tp!66636 () Bool)

(assert (=> b!121416 (= e!69596 (and tp!66636 tp_is_empty!1149 tp!66637 tp!66638))))

(assert (=> b!121246 (= tp!66609 e!69596)))

(assert (= (and b!121246 ((_ is Cons!1999) (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))) b!121416))

(declare-fun tp!66641 () Bool)

(declare-fun tp!66639 () Bool)

(declare-fun b!121417 () Bool)

(declare-fun tp!66640 () Bool)

(declare-fun e!69597 () Bool)

(assert (=> b!121417 (= e!69597 (and tp!66639 tp_is_empty!1149 tp!66640 tp!66641))))

(assert (=> b!121246 (= tp!66602 e!69597)))

(assert (= (and b!121246 ((_ is Cons!1999) (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))) b!121417))

(declare-fun b!121422 () Bool)

(declare-fun e!69600 () Bool)

(declare-fun tp!66644 () Bool)

(assert (=> b!121422 (= e!69600 (and tp_is_empty!1149 tp!66644))))

(assert (=> b!121256 (= tp!66607 e!69600)))

(assert (= (and b!121256 ((_ is Cons!2000) (t!22483 testedP!367))) b!121422))

(declare-fun b!121423 () Bool)

(declare-fun e!69601 () Bool)

(declare-fun tp!66645 () Bool)

(assert (=> b!121423 (= e!69601 (and tp_is_empty!1149 tp!66645))))

(assert (=> b!121252 (= tp!66599 e!69601)))

(assert (= (and b!121252 ((_ is Cons!2000) (t!22483 totalInput!1363))) b!121423))

(declare-fun b!121424 () Bool)

(declare-fun e!69602 () Bool)

(assert (=> b!121424 (= e!69602 tp_is_empty!1149)))

(declare-fun b!121426 () Bool)

(declare-fun tp!66648 () Bool)

(assert (=> b!121426 (= e!69602 tp!66648)))

(declare-fun b!121427 () Bool)

(declare-fun tp!66649 () Bool)

(declare-fun tp!66647 () Bool)

(assert (=> b!121427 (= e!69602 (and tp!66649 tp!66647))))

(assert (=> b!121242 (= tp!66608 e!69602)))

(declare-fun b!121425 () Bool)

(declare-fun tp!66646 () Bool)

(declare-fun tp!66650 () Bool)

(assert (=> b!121425 (= e!69602 (and tp!66646 tp!66650))))

(assert (= (and b!121242 ((_ is ElementMatch!547) (reg!876 r!15532))) b!121424))

(assert (= (and b!121242 ((_ is Concat!931) (reg!876 r!15532))) b!121425))

(assert (= (and b!121242 ((_ is Star!547) (reg!876 r!15532))) b!121426))

(assert (= (and b!121242 ((_ is Union!547) (reg!876 r!15532))) b!121427))

(declare-fun b!121428 () Bool)

(declare-fun e!69603 () Bool)

(assert (=> b!121428 (= e!69603 tp_is_empty!1149)))

(declare-fun b!121430 () Bool)

(declare-fun tp!66653 () Bool)

(assert (=> b!121430 (= e!69603 tp!66653)))

(declare-fun b!121431 () Bool)

(declare-fun tp!66654 () Bool)

(declare-fun tp!66652 () Bool)

(assert (=> b!121431 (= e!69603 (and tp!66654 tp!66652))))

(assert (=> b!121257 (= tp!66603 e!69603)))

(declare-fun b!121429 () Bool)

(declare-fun tp!66651 () Bool)

(declare-fun tp!66655 () Bool)

(assert (=> b!121429 (= e!69603 (and tp!66651 tp!66655))))

(assert (= (and b!121257 ((_ is ElementMatch!547) (regOne!1606 r!15532))) b!121428))

(assert (= (and b!121257 ((_ is Concat!931) (regOne!1606 r!15532))) b!121429))

(assert (= (and b!121257 ((_ is Star!547) (regOne!1606 r!15532))) b!121430))

(assert (= (and b!121257 ((_ is Union!547) (regOne!1606 r!15532))) b!121431))

(declare-fun b!121432 () Bool)

(declare-fun e!69604 () Bool)

(assert (=> b!121432 (= e!69604 tp_is_empty!1149)))

(declare-fun b!121434 () Bool)

(declare-fun tp!66658 () Bool)

(assert (=> b!121434 (= e!69604 tp!66658)))

(declare-fun b!121435 () Bool)

(declare-fun tp!66659 () Bool)

(declare-fun tp!66657 () Bool)

(assert (=> b!121435 (= e!69604 (and tp!66659 tp!66657))))

(assert (=> b!121257 (= tp!66606 e!69604)))

(declare-fun b!121433 () Bool)

(declare-fun tp!66656 () Bool)

(declare-fun tp!66660 () Bool)

(assert (=> b!121433 (= e!69604 (and tp!66656 tp!66660))))

(assert (= (and b!121257 ((_ is ElementMatch!547) (regTwo!1606 r!15532))) b!121432))

(assert (= (and b!121257 ((_ is Concat!931) (regTwo!1606 r!15532))) b!121433))

(assert (= (and b!121257 ((_ is Star!547) (regTwo!1606 r!15532))) b!121434))

(assert (= (and b!121257 ((_ is Union!547) (regTwo!1606 r!15532))) b!121435))

(declare-fun e!69605 () Bool)

(declare-fun b!121436 () Bool)

(declare-fun tp!66663 () Bool)

(declare-fun tp!66661 () Bool)

(declare-fun tp!66662 () Bool)

(assert (=> b!121436 (= e!69605 (and tp!66661 tp_is_empty!1149 tp!66662 tp!66663))))

(assert (=> b!121249 (= tp!66596 e!69605)))

(assert (= (and b!121249 ((_ is Cons!1999) mapDefault!1595)) b!121436))

(declare-fun b!121437 () Bool)

(declare-fun e!69606 () Bool)

(declare-fun tp!66664 () Bool)

(assert (=> b!121437 (= e!69606 (and tp_is_empty!1149 tp!66664))))

(assert (=> b!121258 (= tp!66604 e!69606)))

(assert (= (and b!121258 ((_ is Cons!2000) (t!22483 testedSuffix!285))) b!121437))

(declare-fun mapIsEmpty!1598 () Bool)

(declare-fun mapRes!1598 () Bool)

(assert (=> mapIsEmpty!1598 mapRes!1598))

(declare-fun tp!66680 () Bool)

(declare-fun e!69611 () Bool)

(declare-fun tp!66684 () Bool)

(declare-fun tp!66685 () Bool)

(declare-fun b!121445 () Bool)

(assert (=> b!121445 (= e!69611 (and tp!66684 tp_is_empty!1149 tp!66685 tp!66680))))

(declare-fun condMapEmpty!1598 () Bool)

(declare-fun mapDefault!1598 () List!2005)

(assert (=> mapNonEmpty!1595 (= condMapEmpty!1598 (= mapRest!1595 ((as const (Array (_ BitVec 32) List!2005)) mapDefault!1598)))))

(assert (=> mapNonEmpty!1595 (= tp!66600 (and e!69611 mapRes!1598))))

(declare-fun tp!66681 () Bool)

(declare-fun tp!66683 () Bool)

(declare-fun b!121444 () Bool)

(declare-fun tp!66682 () Bool)

(declare-fun e!69612 () Bool)

(assert (=> b!121444 (= e!69612 (and tp!66682 tp_is_empty!1149 tp!66683 tp!66681))))

(declare-fun mapNonEmpty!1598 () Bool)

(declare-fun tp!66679 () Bool)

(assert (=> mapNonEmpty!1598 (= mapRes!1598 (and tp!66679 e!69612))))

(declare-fun mapValue!1598 () List!2005)

(declare-fun mapKey!1598 () (_ BitVec 32))

(declare-fun mapRest!1598 () (Array (_ BitVec 32) List!2005))

(assert (=> mapNonEmpty!1598 (= mapRest!1595 (store mapRest!1598 mapKey!1598 mapValue!1598))))

(assert (= (and mapNonEmpty!1595 condMapEmpty!1598) mapIsEmpty!1598))

(assert (= (and mapNonEmpty!1595 (not condMapEmpty!1598)) mapNonEmpty!1598))

(assert (= (and mapNonEmpty!1598 ((_ is Cons!1999) mapValue!1598)) b!121444))

(assert (= (and mapNonEmpty!1595 ((_ is Cons!1999) mapDefault!1598)) b!121445))

(declare-fun m!107737 () Bool)

(assert (=> mapNonEmpty!1598 m!107737))

(declare-fun tp!66687 () Bool)

(declare-fun b!121446 () Bool)

(declare-fun tp!66688 () Bool)

(declare-fun e!69613 () Bool)

(declare-fun tp!66686 () Bool)

(assert (=> b!121446 (= e!69613 (and tp!66686 tp_is_empty!1149 tp!66687 tp!66688))))

(assert (=> mapNonEmpty!1595 (= tp!66601 e!69613)))

(assert (= (and mapNonEmpty!1595 ((_ is Cons!1999) mapValue!1595)) b!121446))

(check-sat (not b!121290) (not d!28839) (not b!121409) (not b!121425) (not b!121271) (not b!121368) (not b!121358) (not b!121282) b_and!6013 (not bm!5106) (not b!121417) (not b!121304) (not b!121410) (not bm!5121) (not b!121423) (not b!121295) (not b!121367) (not b!121411) (not b!121302) (not b!121386) (not b!121283) (not b!121365) (not b!121376) (not b!121407) (not b_next!3881) (not d!28847) (not b!121287) (not b!121435) (not bm!5119) (not b!121436) (not b!121422) (not d!28883) (not mapNonEmpty!1598) (not b!121393) (not b!121363) (not b!121392) (not b!121437) (not d!28841) tp_is_empty!1149 (not bm!5120) (not d!28845) (not b!121286) b_and!6011 (not b!121405) (not b!121364) (not b!121427) (not b!121433) (not b!121426) (not d!28867) (not b!121406) (not b!121329) (not b!121416) (not bm!5105) (not b_next!3883) (not bm!5116) (not b!121444) (not b!121369) (not b!121446) (not b!121381) (not d!28877) (not d!28879) (not b!121391) (not b!121429) (not d!28855) (not d!28835) (not d!28869) (not b!121431) (not d!28843) (not d!28861) (not d!28833) (not b!121445) (not b!121389) (not b!121294) (not b!121430) (not d!28875) (not b!121434) (not d!28887) (not b!121272) (not b!121291) (not b!121270))
(check-sat b_and!6011 b_and!6013 (not b_next!3881) (not b_next!3883))
(get-model)

(declare-fun b!121447 () Bool)

(declare-fun e!69619 () Bool)

(declare-fun call!5128 () Bool)

(assert (=> b!121447 (= e!69619 call!5128)))

(declare-fun bm!5123 () Bool)

(declare-fun c!27041 () Bool)

(declare-fun c!27040 () Bool)

(assert (=> bm!5123 (= call!5128 (validRegex!144 (ite c!27041 (reg!876 (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))) (ite c!27040 (regOne!1607 (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))) (regTwo!1606 (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532))))))))))

(declare-fun bm!5124 () Bool)

(declare-fun call!5129 () Bool)

(assert (=> bm!5124 (= call!5129 (validRegex!144 (ite c!27040 (regTwo!1607 (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))) (regOne!1606 (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))))))

(declare-fun b!121448 () Bool)

(declare-fun e!69620 () Bool)

(declare-fun e!69614 () Bool)

(assert (=> b!121448 (= e!69620 e!69614)))

(declare-fun res!56933 () Bool)

(assert (=> b!121448 (=> (not res!56933) (not e!69614))))

(assert (=> b!121448 (= res!56933 call!5129)))

(declare-fun b!121449 () Bool)

(declare-fun e!69618 () Bool)

(assert (=> b!121449 (= e!69618 call!5129)))

(declare-fun b!121451 () Bool)

(declare-fun e!69617 () Bool)

(declare-fun e!69616 () Bool)

(assert (=> b!121451 (= e!69617 e!69616)))

(assert (=> b!121451 (= c!27041 ((_ is Star!547) (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))))

(declare-fun bm!5125 () Bool)

(declare-fun call!5130 () Bool)

(assert (=> bm!5125 (= call!5130 call!5128)))

(declare-fun b!121452 () Bool)

(declare-fun res!56932 () Bool)

(assert (=> b!121452 (=> (not res!56932) (not e!69618))))

(assert (=> b!121452 (= res!56932 call!5130)))

(declare-fun e!69615 () Bool)

(assert (=> b!121452 (= e!69615 e!69618)))

(declare-fun b!121453 () Bool)

(assert (=> b!121453 (= e!69616 e!69619)))

(declare-fun res!56936 () Bool)

(assert (=> b!121453 (= res!56936 (not (nullable!85 (reg!876 (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))))))

(assert (=> b!121453 (=> (not res!56936) (not e!69619))))

(declare-fun b!121454 () Bool)

(assert (=> b!121454 (= e!69614 call!5130)))

(declare-fun b!121455 () Bool)

(declare-fun res!56935 () Bool)

(assert (=> b!121455 (=> res!56935 e!69620)))

(assert (=> b!121455 (= res!56935 (not ((_ is Concat!931) (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532))))))))

(assert (=> b!121455 (= e!69615 e!69620)))

(declare-fun b!121450 () Bool)

(assert (=> b!121450 (= e!69616 e!69615)))

(assert (=> b!121450 (= c!27040 ((_ is Union!547) (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))))

(declare-fun d!28889 () Bool)

(declare-fun res!56934 () Bool)

(assert (=> d!28889 (=> res!56934 e!69617)))

(assert (=> d!28889 (= res!56934 ((_ is ElementMatch!547) (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))))

(assert (=> d!28889 (= (validRegex!144 (ite c!27035 (reg!876 r!15532) (ite c!27034 (regOne!1607 r!15532) (regTwo!1606 r!15532)))) e!69617)))

(assert (= (and d!28889 (not res!56934)) b!121451))

(assert (= (and b!121451 c!27041) b!121453))

(assert (= (and b!121451 (not c!27041)) b!121450))

(assert (= (and b!121453 res!56936) b!121447))

(assert (= (and b!121450 c!27040) b!121452))

(assert (= (and b!121450 (not c!27040)) b!121455))

(assert (= (and b!121452 res!56932) b!121449))

(assert (= (and b!121455 (not res!56935)) b!121448))

(assert (= (and b!121448 res!56933) b!121454))

(assert (= (or b!121449 b!121448) bm!5124))

(assert (= (or b!121452 b!121454) bm!5125))

(assert (= (or b!121447 bm!5125) bm!5123))

(declare-fun m!107739 () Bool)

(assert (=> bm!5123 m!107739))

(declare-fun m!107741 () Bool)

(assert (=> bm!5124 m!107741))

(declare-fun m!107743 () Bool)

(assert (=> b!121453 m!107743))

(assert (=> bm!5120 d!28889))

(declare-fun d!28891 () Bool)

(declare-fun c!27044 () Bool)

(assert (=> d!28891 (= c!27044 ((_ is Nil!2000) lt!36281))))

(declare-fun e!69623 () (InoxSet C!2016))

(assert (=> d!28891 (= (content!225 lt!36281) e!69623)))

(declare-fun b!121460 () Bool)

(assert (=> b!121460 (= e!69623 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121461 () Bool)

(assert (=> b!121461 (= e!69623 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 lt!36281) true) (content!225 (t!22483 lt!36281))))))

(assert (= (and d!28891 c!27044) b!121460))

(assert (= (and d!28891 (not c!27044)) b!121461))

(declare-fun m!107745 () Bool)

(assert (=> b!121461 m!107745))

(declare-fun m!107747 () Bool)

(assert (=> b!121461 m!107747))

(assert (=> d!28847 d!28891))

(declare-fun d!28893 () Bool)

(declare-fun c!27045 () Bool)

(assert (=> d!28893 (= c!27045 ((_ is Nil!2000) testedP!367))))

(declare-fun e!69624 () (InoxSet C!2016))

(assert (=> d!28893 (= (content!225 testedP!367) e!69624)))

(declare-fun b!121462 () Bool)

(assert (=> b!121462 (= e!69624 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121463 () Bool)

(assert (=> b!121463 (= e!69624 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 testedP!367) true) (content!225 (t!22483 testedP!367))))))

(assert (= (and d!28893 c!27045) b!121462))

(assert (= (and d!28893 (not c!27045)) b!121463))

(declare-fun m!107749 () Bool)

(assert (=> b!121463 m!107749))

(declare-fun m!107751 () Bool)

(assert (=> b!121463 m!107751))

(assert (=> d!28847 d!28893))

(declare-fun d!28895 () Bool)

(declare-fun c!27046 () Bool)

(assert (=> d!28895 (= c!27046 ((_ is Nil!2000) testedSuffix!285))))

(declare-fun e!69625 () (InoxSet C!2016))

(assert (=> d!28895 (= (content!225 testedSuffix!285) e!69625)))

(declare-fun b!121464 () Bool)

(assert (=> b!121464 (= e!69625 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121465 () Bool)

(assert (=> b!121465 (= e!69625 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 testedSuffix!285) true) (content!225 (t!22483 testedSuffix!285))))))

(assert (= (and d!28895 c!27046) b!121464))

(assert (= (and d!28895 (not c!27046)) b!121465))

(declare-fun m!107753 () Bool)

(assert (=> b!121465 m!107753))

(declare-fun m!107755 () Bool)

(assert (=> b!121465 m!107755))

(assert (=> d!28847 d!28895))

(declare-fun d!28897 () Bool)

(assert (=> d!28897 (= (head!499 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))) (h!7397 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))))))

(assert (=> b!121270 d!28897))

(declare-fun d!28899 () Bool)

(assert (=> d!28899 (= (head!499 totalInput!1363) (h!7397 totalInput!1363))))

(assert (=> b!121270 d!28899))

(declare-fun e!69627 () Bool)

(declare-fun lt!36311 () List!2006)

(declare-fun b!121469 () Bool)

(assert (=> b!121469 (= e!69627 (or (not (= lt!36251 Nil!2000)) (= lt!36311 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000)))))))

(declare-fun b!121468 () Bool)

(declare-fun res!56938 () Bool)

(assert (=> b!121468 (=> (not res!56938) (not e!69627))))

(assert (=> b!121468 (= res!56938 (= (size!1856 lt!36311) (+ (size!1856 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000))) (size!1856 lt!36251))))))

(declare-fun b!121467 () Bool)

(declare-fun e!69626 () List!2006)

(assert (=> b!121467 (= e!69626 (Cons!2000 (h!7397 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000))) (++!376 (t!22483 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000))) lt!36251)))))

(declare-fun d!28901 () Bool)

(assert (=> d!28901 e!69627))

(declare-fun res!56937 () Bool)

(assert (=> d!28901 (=> (not res!56937) (not e!69627))))

(assert (=> d!28901 (= res!56937 (= (content!225 lt!36311) ((_ map or) (content!225 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000))) (content!225 lt!36251))))))

(assert (=> d!28901 (= lt!36311 e!69626)))

(declare-fun c!27047 () Bool)

(assert (=> d!28901 (= c!27047 ((_ is Nil!2000) (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000))))))

(assert (=> d!28901 (= (++!376 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000)) lt!36251) lt!36311)))

(declare-fun b!121466 () Bool)

(assert (=> b!121466 (= e!69626 lt!36251)))

(assert (= (and d!28901 c!27047) b!121466))

(assert (= (and d!28901 (not c!27047)) b!121467))

(assert (= (and d!28901 res!56937) b!121468))

(assert (= (and b!121468 res!56938) b!121469))

(declare-fun m!107757 () Bool)

(assert (=> b!121468 m!107757))

(assert (=> b!121468 m!107595))

(declare-fun m!107759 () Bool)

(assert (=> b!121468 m!107759))

(assert (=> b!121468 m!107655))

(declare-fun m!107761 () Bool)

(assert (=> b!121467 m!107761))

(declare-fun m!107763 () Bool)

(assert (=> d!28901 m!107763))

(assert (=> d!28901 m!107595))

(declare-fun m!107765 () Bool)

(assert (=> d!28901 m!107765))

(assert (=> d!28901 m!107663))

(assert (=> d!28843 d!28901))

(assert (=> d!28843 d!28841))

(declare-fun d!28903 () Bool)

(assert (=> d!28903 (= (++!376 (++!376 testedP!367 (Cons!2000 lt!36264 Nil!2000)) lt!36251) totalInput!1363)))

(assert (=> d!28903 true))

(declare-fun _$68!531 () Unit!1520)

(assert (=> d!28903 (= (choose!1574 testedP!367 lt!36264 lt!36251 totalInput!1363) _$68!531)))

(declare-fun bs!11965 () Bool)

(assert (= bs!11965 d!28903))

(assert (=> bs!11965 m!107595))

(assert (=> bs!11965 m!107595))

(assert (=> bs!11965 m!107647))

(assert (=> d!28843 d!28903))

(declare-fun b!121473 () Bool)

(declare-fun lt!36312 () List!2006)

(declare-fun e!69629 () Bool)

(assert (=> b!121473 (= e!69629 (or (not (= (Cons!2000 lt!36264 lt!36251) Nil!2000)) (= lt!36312 testedP!367)))))

(declare-fun b!121472 () Bool)

(declare-fun res!56940 () Bool)

(assert (=> b!121472 (=> (not res!56940) (not e!69629))))

(assert (=> b!121472 (= res!56940 (= (size!1856 lt!36312) (+ (size!1856 testedP!367) (size!1856 (Cons!2000 lt!36264 lt!36251)))))))

(declare-fun e!69628 () List!2006)

(declare-fun b!121471 () Bool)

(assert (=> b!121471 (= e!69628 (Cons!2000 (h!7397 testedP!367) (++!376 (t!22483 testedP!367) (Cons!2000 lt!36264 lt!36251))))))

(declare-fun d!28905 () Bool)

(assert (=> d!28905 e!69629))

(declare-fun res!56939 () Bool)

(assert (=> d!28905 (=> (not res!56939) (not e!69629))))

(assert (=> d!28905 (= res!56939 (= (content!225 lt!36312) ((_ map or) (content!225 testedP!367) (content!225 (Cons!2000 lt!36264 lt!36251)))))))

(assert (=> d!28905 (= lt!36312 e!69628)))

(declare-fun c!27048 () Bool)

(assert (=> d!28905 (= c!27048 ((_ is Nil!2000) testedP!367))))

(assert (=> d!28905 (= (++!376 testedP!367 (Cons!2000 lt!36264 lt!36251)) lt!36312)))

(declare-fun b!121470 () Bool)

(assert (=> b!121470 (= e!69628 (Cons!2000 lt!36264 lt!36251))))

(assert (= (and d!28905 c!27048) b!121470))

(assert (= (and d!28905 (not c!27048)) b!121471))

(assert (= (and d!28905 res!56939) b!121472))

(assert (= (and b!121472 res!56940) b!121473))

(declare-fun m!107767 () Bool)

(assert (=> b!121472 m!107767))

(assert (=> b!121472 m!107601))

(declare-fun m!107769 () Bool)

(assert (=> b!121472 m!107769))

(declare-fun m!107771 () Bool)

(assert (=> b!121471 m!107771))

(declare-fun m!107773 () Bool)

(assert (=> d!28905 m!107773))

(assert (=> d!28905 m!107633))

(declare-fun m!107775 () Bool)

(assert (=> d!28905 m!107775))

(assert (=> d!28843 d!28905))

(declare-fun d!28907 () Bool)

(assert (=> d!28907 (= (head!499 testedP!367) (h!7397 testedP!367))))

(assert (=> b!121367 d!28907))

(declare-fun d!28909 () Bool)

(assert (=> d!28909 (= (head!499 lt!36263) (h!7397 lt!36263))))

(assert (=> b!121367 d!28909))

(declare-fun b!121474 () Bool)

(declare-fun e!69635 () Bool)

(declare-fun call!5131 () Bool)

(assert (=> b!121474 (= e!69635 call!5131)))

(declare-fun c!27049 () Bool)

(declare-fun c!27050 () Bool)

(declare-fun bm!5126 () Bool)

(assert (=> bm!5126 (= call!5131 (validRegex!144 (ite c!27050 (reg!876 (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))) (ite c!27049 (regOne!1607 (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))) (regTwo!1606 (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264)))))))))))

(declare-fun bm!5127 () Bool)

(declare-fun call!5132 () Bool)

(assert (=> bm!5127 (= call!5132 (validRegex!144 (ite c!27049 (regTwo!1607 (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))) (regOne!1606 (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))))))))

(declare-fun b!121475 () Bool)

(declare-fun e!69636 () Bool)

(declare-fun e!69630 () Bool)

(assert (=> b!121475 (= e!69636 e!69630)))

(declare-fun res!56942 () Bool)

(assert (=> b!121475 (=> (not res!56942) (not e!69630))))

(assert (=> b!121475 (= res!56942 call!5132)))

(declare-fun b!121476 () Bool)

(declare-fun e!69634 () Bool)

(assert (=> b!121476 (= e!69634 call!5132)))

(declare-fun b!121478 () Bool)

(declare-fun e!69633 () Bool)

(declare-fun e!69632 () Bool)

(assert (=> b!121478 (= e!69633 e!69632)))

(assert (=> b!121478 (= c!27050 ((_ is Star!547) (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))))))

(declare-fun bm!5128 () Bool)

(declare-fun call!5133 () Bool)

(assert (=> bm!5128 (= call!5133 call!5131)))

(declare-fun b!121479 () Bool)

(declare-fun res!56941 () Bool)

(assert (=> b!121479 (=> (not res!56941) (not e!69634))))

(assert (=> b!121479 (= res!56941 call!5133)))

(declare-fun e!69631 () Bool)

(assert (=> b!121479 (= e!69631 e!69634)))

(declare-fun b!121480 () Bool)

(assert (=> b!121480 (= e!69632 e!69635)))

(declare-fun res!56945 () Bool)

(assert (=> b!121480 (= res!56945 (not (nullable!85 (reg!876 (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))))))))

(assert (=> b!121480 (=> (not res!56945) (not e!69635))))

(declare-fun b!121481 () Bool)

(assert (=> b!121481 (= e!69630 call!5133)))

(declare-fun b!121482 () Bool)

(declare-fun res!56944 () Bool)

(assert (=> b!121482 (=> res!56944 e!69636)))

(assert (=> b!121482 (= res!56944 (not ((_ is Concat!931) (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264)))))))))

(assert (=> b!121482 (= e!69631 e!69636)))

(declare-fun b!121477 () Bool)

(assert (=> b!121477 (= e!69632 e!69631)))

(assert (=> b!121477 (= c!27049 ((_ is Union!547) (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))))))

(declare-fun d!28911 () Bool)

(declare-fun res!56943 () Bool)

(assert (=> d!28911 (=> res!56943 e!69633)))

(assert (=> d!28911 (= res!56943 ((_ is ElementMatch!547) (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))))))

(assert (=> d!28911 (= (validRegex!144 (ite c!27018 (reg!876 (derivativeStep!54 r!15532 lt!36264)) (ite c!27017 (regOne!1607 (derivativeStep!54 r!15532 lt!36264)) (regTwo!1606 (derivativeStep!54 r!15532 lt!36264))))) e!69633)))

(assert (= (and d!28911 (not res!56943)) b!121478))

(assert (= (and b!121478 c!27050) b!121480))

(assert (= (and b!121478 (not c!27050)) b!121477))

(assert (= (and b!121480 res!56945) b!121474))

(assert (= (and b!121477 c!27049) b!121479))

(assert (= (and b!121477 (not c!27049)) b!121482))

(assert (= (and b!121479 res!56941) b!121476))

(assert (= (and b!121482 (not res!56944)) b!121475))

(assert (= (and b!121475 res!56942) b!121481))

(assert (= (or b!121476 b!121475) bm!5127))

(assert (= (or b!121479 b!121481) bm!5128))

(assert (= (or b!121474 bm!5128) bm!5126))

(declare-fun m!107777 () Bool)

(assert (=> bm!5126 m!107777))

(declare-fun m!107779 () Bool)

(assert (=> bm!5127 m!107779))

(declare-fun m!107781 () Bool)

(assert (=> b!121480 m!107781))

(assert (=> bm!5105 d!28911))

(assert (=> b!121272 d!28853))

(declare-fun d!28913 () Bool)

(declare-fun lt!36313 () Int)

(assert (=> d!28913 (>= lt!36313 0)))

(declare-fun e!69637 () Int)

(assert (=> d!28913 (= lt!36313 e!69637)))

(declare-fun c!27051 () Bool)

(assert (=> d!28913 (= c!27051 ((_ is Nil!2000) (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))))))

(assert (=> d!28913 (= (size!1856 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))) lt!36313)))

(declare-fun b!121483 () Bool)

(assert (=> b!121483 (= e!69637 0)))

(declare-fun b!121484 () Bool)

(assert (=> b!121484 (= e!69637 (+ 1 (size!1856 (t!22483 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))))))))

(assert (= (and d!28913 c!27051) b!121483))

(assert (= (and d!28913 (not c!27051)) b!121484))

(declare-fun m!107783 () Bool)

(assert (=> b!121484 m!107783))

(assert (=> b!121272 d!28913))

(declare-fun d!28915 () Bool)

(assert (=> d!28915 (= (nullable!85 (reg!876 r!15532)) (nullableFct!20 (reg!876 r!15532)))))

(declare-fun bs!11966 () Bool)

(assert (= bs!11966 d!28915))

(declare-fun m!107785 () Bool)

(assert (=> bs!11966 m!107785))

(assert (=> b!121376 d!28915))

(declare-fun d!28917 () Bool)

(declare-fun lt!36314 () Int)

(assert (=> d!28917 (>= lt!36314 0)))

(declare-fun e!69638 () Int)

(assert (=> d!28917 (= lt!36314 e!69638)))

(declare-fun c!27052 () Bool)

(assert (=> d!28917 (= c!27052 ((_ is Nil!2000) (t!22483 testedP!367)))))

(assert (=> d!28917 (= (size!1856 (t!22483 testedP!367)) lt!36314)))

(declare-fun b!121485 () Bool)

(assert (=> b!121485 (= e!69638 0)))

(declare-fun b!121486 () Bool)

(assert (=> b!121486 (= e!69638 (+ 1 (size!1856 (t!22483 (t!22483 testedP!367)))))))

(assert (= (and d!28917 c!27052) b!121485))

(assert (= (and d!28917 (not c!27052)) b!121486))

(declare-fun m!107787 () Bool)

(assert (=> b!121486 m!107787))

(assert (=> b!121304 d!28917))

(declare-fun d!28919 () Bool)

(declare-fun lt!36315 () List!2006)

(assert (=> d!28919 (= (++!376 (t!22483 testedP!367) lt!36315) (tail!235 totalInput!1363))))

(declare-fun e!69639 () List!2006)

(assert (=> d!28919 (= lt!36315 e!69639)))

(declare-fun c!27053 () Bool)

(assert (=> d!28919 (= c!27053 ((_ is Cons!2000) (t!22483 testedP!367)))))

(assert (=> d!28919 (>= (size!1856 (tail!235 totalInput!1363)) (size!1856 (t!22483 testedP!367)))))

(assert (=> d!28919 (= (getSuffix!64 (tail!235 totalInput!1363) (t!22483 testedP!367)) lt!36315)))

(declare-fun b!121487 () Bool)

(assert (=> b!121487 (= e!69639 (getSuffix!64 (tail!235 (tail!235 totalInput!1363)) (t!22483 (t!22483 testedP!367))))))

(declare-fun b!121488 () Bool)

(assert (=> b!121488 (= e!69639 (tail!235 totalInput!1363))))

(assert (= (and d!28919 c!27053) b!121487))

(assert (= (and d!28919 (not c!27053)) b!121488))

(declare-fun m!107789 () Bool)

(assert (=> d!28919 m!107789))

(assert (=> d!28919 m!107615))

(declare-fun m!107791 () Bool)

(assert (=> d!28919 m!107791))

(assert (=> d!28919 m!107679))

(assert (=> b!121487 m!107615))

(declare-fun m!107793 () Bool)

(assert (=> b!121487 m!107793))

(assert (=> b!121487 m!107793))

(declare-fun m!107795 () Bool)

(assert (=> b!121487 m!107795))

(assert (=> b!121386 d!28919))

(declare-fun d!28921 () Bool)

(assert (=> d!28921 (= (tail!235 totalInput!1363) (t!22483 totalInput!1363))))

(assert (=> b!121386 d!28921))

(declare-fun d!28923 () Bool)

(declare-fun lt!36316 () Int)

(assert (=> d!28923 (>= lt!36316 0)))

(declare-fun e!69640 () Int)

(assert (=> d!28923 (= lt!36316 e!69640)))

(declare-fun c!27054 () Bool)

(assert (=> d!28923 (= c!27054 ((_ is Nil!2000) lt!36263))))

(assert (=> d!28923 (= (size!1856 lt!36263) lt!36316)))

(declare-fun b!121489 () Bool)

(assert (=> b!121489 (= e!69640 0)))

(declare-fun b!121490 () Bool)

(assert (=> b!121490 (= e!69640 (+ 1 (size!1856 (t!22483 lt!36263))))))

(assert (= (and d!28923 c!27054) b!121489))

(assert (= (and d!28923 (not c!27054)) b!121490))

(declare-fun m!107797 () Bool)

(assert (=> b!121490 m!107797))

(assert (=> b!121369 d!28923))

(assert (=> b!121369 d!28857))

(declare-fun b!121491 () Bool)

(declare-fun e!69643 () Bool)

(declare-fun e!69642 () Bool)

(assert (=> b!121491 (= e!69643 e!69642)))

(declare-fun res!56948 () Bool)

(assert (=> b!121491 (=> (not res!56948) (not e!69642))))

(assert (=> b!121491 (= res!56948 (not ((_ is Nil!2000) (tail!235 totalInput!1363))))))

(declare-fun b!121493 () Bool)

(assert (=> b!121493 (= e!69642 (isPrefix!125 (tail!235 (tail!235 testedP!367)) (tail!235 (tail!235 totalInput!1363))))))

(declare-fun b!121492 () Bool)

(declare-fun res!56946 () Bool)

(assert (=> b!121492 (=> (not res!56946) (not e!69642))))

(assert (=> b!121492 (= res!56946 (= (head!499 (tail!235 testedP!367)) (head!499 (tail!235 totalInput!1363))))))

(declare-fun d!28925 () Bool)

(declare-fun e!69641 () Bool)

(assert (=> d!28925 e!69641))

(declare-fun res!56947 () Bool)

(assert (=> d!28925 (=> res!56947 e!69641)))

(declare-fun lt!36317 () Bool)

(assert (=> d!28925 (= res!56947 (not lt!36317))))

(assert (=> d!28925 (= lt!36317 e!69643)))

(declare-fun res!56949 () Bool)

(assert (=> d!28925 (=> res!56949 e!69643)))

(assert (=> d!28925 (= res!56949 ((_ is Nil!2000) (tail!235 testedP!367)))))

(assert (=> d!28925 (= (isPrefix!125 (tail!235 testedP!367) (tail!235 totalInput!1363)) lt!36317)))

(declare-fun b!121494 () Bool)

(assert (=> b!121494 (= e!69641 (>= (size!1856 (tail!235 totalInput!1363)) (size!1856 (tail!235 testedP!367))))))

(assert (= (and d!28925 (not res!56949)) b!121491))

(assert (= (and b!121491 res!56948) b!121492))

(assert (= (and b!121492 res!56946) b!121493))

(assert (= (and d!28925 (not res!56947)) b!121494))

(assert (=> b!121493 m!107695))

(declare-fun m!107799 () Bool)

(assert (=> b!121493 m!107799))

(assert (=> b!121493 m!107615))

(assert (=> b!121493 m!107793))

(assert (=> b!121493 m!107799))

(assert (=> b!121493 m!107793))

(declare-fun m!107801 () Bool)

(assert (=> b!121493 m!107801))

(assert (=> b!121492 m!107695))

(declare-fun m!107803 () Bool)

(assert (=> b!121492 m!107803))

(assert (=> b!121492 m!107615))

(declare-fun m!107805 () Bool)

(assert (=> b!121492 m!107805))

(assert (=> b!121494 m!107615))

(assert (=> b!121494 m!107791))

(assert (=> b!121494 m!107695))

(declare-fun m!107807 () Bool)

(assert (=> b!121494 m!107807))

(assert (=> b!121364 d!28925))

(declare-fun d!28927 () Bool)

(assert (=> d!28927 (= (tail!235 testedP!367) (t!22483 testedP!367))))

(assert (=> b!121364 d!28927))

(assert (=> b!121364 d!28921))

(declare-fun b!121498 () Bool)

(declare-fun lt!36318 () List!2006)

(declare-fun e!69645 () Bool)

(assert (=> b!121498 (= e!69645 (or (not (= (Cons!2000 (head!499 lt!36257) Nil!2000) Nil!2000)) (= lt!36318 (t!22483 testedP!367))))))

(declare-fun b!121497 () Bool)

(declare-fun res!56951 () Bool)

(assert (=> b!121497 (=> (not res!56951) (not e!69645))))

(assert (=> b!121497 (= res!56951 (= (size!1856 lt!36318) (+ (size!1856 (t!22483 testedP!367)) (size!1856 (Cons!2000 (head!499 lt!36257) Nil!2000)))))))

(declare-fun b!121496 () Bool)

(declare-fun e!69644 () List!2006)

(assert (=> b!121496 (= e!69644 (Cons!2000 (h!7397 (t!22483 testedP!367)) (++!376 (t!22483 (t!22483 testedP!367)) (Cons!2000 (head!499 lt!36257) Nil!2000))))))

(declare-fun d!28929 () Bool)

(assert (=> d!28929 e!69645))

(declare-fun res!56950 () Bool)

(assert (=> d!28929 (=> (not res!56950) (not e!69645))))

(assert (=> d!28929 (= res!56950 (= (content!225 lt!36318) ((_ map or) (content!225 (t!22483 testedP!367)) (content!225 (Cons!2000 (head!499 lt!36257) Nil!2000)))))))

(assert (=> d!28929 (= lt!36318 e!69644)))

(declare-fun c!27055 () Bool)

(assert (=> d!28929 (= c!27055 ((_ is Nil!2000) (t!22483 testedP!367)))))

(assert (=> d!28929 (= (++!376 (t!22483 testedP!367) (Cons!2000 (head!499 lt!36257) Nil!2000)) lt!36318)))

(declare-fun b!121495 () Bool)

(assert (=> b!121495 (= e!69644 (Cons!2000 (head!499 lt!36257) Nil!2000))))

(assert (= (and d!28929 c!27055) b!121495))

(assert (= (and d!28929 (not c!27055)) b!121496))

(assert (= (and d!28929 res!56950) b!121497))

(assert (= (and b!121497 res!56951) b!121498))

(declare-fun m!107809 () Bool)

(assert (=> b!121497 m!107809))

(assert (=> b!121497 m!107679))

(assert (=> b!121497 m!107627))

(declare-fun m!107811 () Bool)

(assert (=> b!121496 m!107811))

(declare-fun m!107813 () Bool)

(assert (=> d!28929 m!107813))

(assert (=> d!28929 m!107751))

(assert (=> d!28929 m!107635))

(assert (=> b!121282 d!28929))

(declare-fun d!28931 () Bool)

(declare-fun lt!36319 () Int)

(assert (=> d!28931 (>= lt!36319 0)))

(declare-fun e!69646 () Int)

(assert (=> d!28931 (= lt!36319 e!69646)))

(declare-fun c!27056 () Bool)

(assert (=> d!28931 (= c!27056 ((_ is Nil!2000) lt!36280))))

(assert (=> d!28931 (= (size!1856 lt!36280) lt!36319)))

(declare-fun b!121499 () Bool)

(assert (=> b!121499 (= e!69646 0)))

(declare-fun b!121500 () Bool)

(assert (=> b!121500 (= e!69646 (+ 1 (size!1856 (t!22483 lt!36280))))))

(assert (= (and d!28931 c!27056) b!121499))

(assert (= (and d!28931 (not c!27056)) b!121500))

(declare-fun m!107815 () Bool)

(assert (=> b!121500 m!107815))

(assert (=> b!121291 d!28931))

(assert (=> b!121291 d!28881))

(declare-fun d!28933 () Bool)

(declare-fun lt!36320 () Int)

(assert (=> d!28933 (>= lt!36320 0)))

(declare-fun e!69647 () Int)

(assert (=> d!28933 (= lt!36320 e!69647)))

(declare-fun c!27057 () Bool)

(assert (=> d!28933 (= c!27057 ((_ is Nil!2000) lt!36251))))

(assert (=> d!28933 (= (size!1856 lt!36251) lt!36320)))

(declare-fun b!121501 () Bool)

(assert (=> b!121501 (= e!69647 0)))

(declare-fun b!121502 () Bool)

(assert (=> b!121502 (= e!69647 (+ 1 (size!1856 (t!22483 lt!36251))))))

(assert (= (and d!28933 c!27057) b!121501))

(assert (= (and d!28933 (not c!27057)) b!121502))

(declare-fun m!107817 () Bool)

(assert (=> b!121502 m!107817))

(assert (=> b!121291 d!28933))

(declare-fun b!121503 () Bool)

(declare-fun e!69650 () Bool)

(declare-fun e!69649 () Bool)

(assert (=> b!121503 (= e!69650 e!69649)))

(declare-fun res!56954 () Bool)

(assert (=> b!121503 (=> (not res!56954) (not e!69649))))

(assert (=> b!121503 (= res!56954 (not ((_ is Nil!2000) (tail!235 totalInput!1363))))))

(declare-fun b!121505 () Bool)

(assert (=> b!121505 (= e!69649 (isPrefix!125 (tail!235 (tail!235 totalInput!1363)) (tail!235 (tail!235 totalInput!1363))))))

(declare-fun b!121504 () Bool)

(declare-fun res!56952 () Bool)

(assert (=> b!121504 (=> (not res!56952) (not e!69649))))

(assert (=> b!121504 (= res!56952 (= (head!499 (tail!235 totalInput!1363)) (head!499 (tail!235 totalInput!1363))))))

(declare-fun d!28935 () Bool)

(declare-fun e!69648 () Bool)

(assert (=> d!28935 e!69648))

(declare-fun res!56953 () Bool)

(assert (=> d!28935 (=> res!56953 e!69648)))

(declare-fun lt!36321 () Bool)

(assert (=> d!28935 (= res!56953 (not lt!36321))))

(assert (=> d!28935 (= lt!36321 e!69650)))

(declare-fun res!56955 () Bool)

(assert (=> d!28935 (=> res!56955 e!69650)))

(assert (=> d!28935 (= res!56955 ((_ is Nil!2000) (tail!235 totalInput!1363)))))

(assert (=> d!28935 (= (isPrefix!125 (tail!235 totalInput!1363) (tail!235 totalInput!1363)) lt!36321)))

(declare-fun b!121506 () Bool)

(assert (=> b!121506 (= e!69648 (>= (size!1856 (tail!235 totalInput!1363)) (size!1856 (tail!235 totalInput!1363))))))

(assert (= (and d!28935 (not res!56955)) b!121503))

(assert (= (and b!121503 res!56954) b!121504))

(assert (= (and b!121504 res!56952) b!121505))

(assert (= (and d!28935 (not res!56953)) b!121506))

(assert (=> b!121505 m!107615))

(assert (=> b!121505 m!107793))

(assert (=> b!121505 m!107615))

(assert (=> b!121505 m!107793))

(assert (=> b!121505 m!107793))

(assert (=> b!121505 m!107793))

(declare-fun m!107819 () Bool)

(assert (=> b!121505 m!107819))

(assert (=> b!121504 m!107615))

(assert (=> b!121504 m!107805))

(assert (=> b!121504 m!107615))

(assert (=> b!121504 m!107805))

(assert (=> b!121506 m!107615))

(assert (=> b!121506 m!107791))

(assert (=> b!121506 m!107615))

(assert (=> b!121506 m!107791))

(assert (=> b!121392 d!28935))

(assert (=> b!121392 d!28921))

(declare-fun d!28937 () Bool)

(declare-fun lt!36322 () Int)

(assert (=> d!28937 (>= lt!36322 0)))

(declare-fun e!69651 () Int)

(assert (=> d!28937 (= lt!36322 e!69651)))

(declare-fun c!27058 () Bool)

(assert (=> d!28937 (= c!27058 ((_ is Nil!2000) (t!22483 totalInput!1363)))))

(assert (=> d!28937 (= (size!1856 (t!22483 totalInput!1363)) lt!36322)))

(declare-fun b!121507 () Bool)

(assert (=> b!121507 (= e!69651 0)))

(declare-fun b!121508 () Bool)

(assert (=> b!121508 (= e!69651 (+ 1 (size!1856 (t!22483 (t!22483 totalInput!1363)))))))

(assert (= (and d!28937 c!27058) b!121507))

(assert (= (and d!28937 (not c!27058)) b!121508))

(declare-fun m!107821 () Bool)

(assert (=> b!121508 m!107821))

(assert (=> b!121302 d!28937))

(declare-fun lt!36323 () List!2006)

(declare-fun b!121512 () Bool)

(declare-fun e!69653 () Bool)

(assert (=> b!121512 (= e!69653 (or (not (= testedSuffix!285 Nil!2000)) (= lt!36323 (t!22483 testedP!367))))))

(declare-fun b!121511 () Bool)

(declare-fun res!56957 () Bool)

(assert (=> b!121511 (=> (not res!56957) (not e!69653))))

(assert (=> b!121511 (= res!56957 (= (size!1856 lt!36323) (+ (size!1856 (t!22483 testedP!367)) (size!1856 testedSuffix!285))))))

(declare-fun b!121510 () Bool)

(declare-fun e!69652 () List!2006)

(assert (=> b!121510 (= e!69652 (Cons!2000 (h!7397 (t!22483 testedP!367)) (++!376 (t!22483 (t!22483 testedP!367)) testedSuffix!285)))))

(declare-fun d!28939 () Bool)

(assert (=> d!28939 e!69653))

(declare-fun res!56956 () Bool)

(assert (=> d!28939 (=> (not res!56956) (not e!69653))))

(assert (=> d!28939 (= res!56956 (= (content!225 lt!36323) ((_ map or) (content!225 (t!22483 testedP!367)) (content!225 testedSuffix!285))))))

(assert (=> d!28939 (= lt!36323 e!69652)))

(declare-fun c!27059 () Bool)

(assert (=> d!28939 (= c!27059 ((_ is Nil!2000) (t!22483 testedP!367)))))

(assert (=> d!28939 (= (++!376 (t!22483 testedP!367) testedSuffix!285) lt!36323)))

(declare-fun b!121509 () Bool)

(assert (=> b!121509 (= e!69652 testedSuffix!285)))

(assert (= (and d!28939 c!27059) b!121509))

(assert (= (and d!28939 (not c!27059)) b!121510))

(assert (= (and d!28939 res!56956) b!121511))

(assert (= (and b!121511 res!56957) b!121512))

(declare-fun m!107823 () Bool)

(assert (=> b!121511 m!107823))

(assert (=> b!121511 m!107679))

(assert (=> b!121511 m!107667))

(declare-fun m!107825 () Bool)

(assert (=> b!121510 m!107825))

(declare-fun m!107827 () Bool)

(assert (=> d!28939 m!107827))

(assert (=> d!28939 m!107751))

(assert (=> d!28939 m!107673))

(assert (=> b!121294 d!28939))

(assert (=> d!28883 d!28885))

(declare-fun d!28941 () Bool)

(assert (=> d!28941 (isPrefix!125 totalInput!1363 totalInput!1363)))

(assert (=> d!28941 true))

(declare-fun _$45!1151 () Unit!1520)

(assert (=> d!28941 (= (choose!1578 totalInput!1363 totalInput!1363) _$45!1151)))

(declare-fun bs!11967 () Bool)

(assert (= bs!11967 d!28941))

(assert (=> bs!11967 m!107577))

(assert (=> d!28883 d!28941))

(declare-fun d!28943 () Bool)

(declare-fun lt!36324 () Int)

(assert (=> d!28943 (>= lt!36324 0)))

(declare-fun e!69654 () Int)

(assert (=> d!28943 (= lt!36324 e!69654)))

(declare-fun c!27060 () Bool)

(assert (=> d!28943 (= c!27060 ((_ is Nil!2000) lt!36276))))

(assert (=> d!28943 (= (size!1856 lt!36276) lt!36324)))

(declare-fun b!121513 () Bool)

(assert (=> b!121513 (= e!69654 0)))

(declare-fun b!121514 () Bool)

(assert (=> b!121514 (= e!69654 (+ 1 (size!1856 (t!22483 lt!36276))))))

(assert (= (and d!28943 c!27060) b!121513))

(assert (= (and d!28943 (not c!27060)) b!121514))

(declare-fun m!107829 () Bool)

(assert (=> b!121514 m!107829))

(assert (=> b!121287 d!28943))

(assert (=> b!121287 d!28857))

(declare-fun d!28945 () Bool)

(declare-fun lt!36325 () Int)

(assert (=> d!28945 (>= lt!36325 0)))

(declare-fun e!69655 () Int)

(assert (=> d!28945 (= lt!36325 e!69655)))

(declare-fun c!27061 () Bool)

(assert (=> d!28945 (= c!27061 ((_ is Nil!2000) (Cons!2000 lt!36264 Nil!2000)))))

(assert (=> d!28945 (= (size!1856 (Cons!2000 lt!36264 Nil!2000)) lt!36325)))

(declare-fun b!121515 () Bool)

(assert (=> b!121515 (= e!69655 0)))

(declare-fun b!121516 () Bool)

(assert (=> b!121516 (= e!69655 (+ 1 (size!1856 (t!22483 (Cons!2000 lt!36264 Nil!2000)))))))

(assert (= (and d!28945 c!27061) b!121515))

(assert (= (and d!28945 (not c!27061)) b!121516))

(declare-fun m!107831 () Bool)

(assert (=> b!121516 m!107831))

(assert (=> b!121287 d!28945))

(declare-fun d!28947 () Bool)

(assert (=> d!28947 (= (nullable!85 (reg!876 (derivativeStep!54 r!15532 lt!36264))) (nullableFct!20 (reg!876 (derivativeStep!54 r!15532 lt!36264))))))

(declare-fun bs!11968 () Bool)

(assert (= bs!11968 d!28947))

(declare-fun m!107833 () Bool)

(assert (=> bs!11968 m!107833))

(assert (=> b!121329 d!28947))

(declare-fun d!28949 () Bool)

(declare-fun res!56964 () Bool)

(declare-fun e!69660 () Bool)

(assert (=> d!28949 (=> (not res!56964) (not e!69660))))

(declare-fun valid!372 (MutableMap!409) Bool)

(assert (=> d!28949 (= res!56964 (valid!372 (cache!861 cache!470)))))

(assert (=> d!28949 (= (validCacheMap!27 (cache!861 cache!470)) e!69660)))

(declare-fun b!121523 () Bool)

(declare-fun res!56965 () Bool)

(assert (=> b!121523 (=> (not res!56965) (not e!69660))))

(declare-fun invariantList!32 (List!2005) Bool)

(declare-datatypes ((ListMap!87 0))(
  ( (ListMap!88 (toList!268 List!2005)) )
))
(declare-fun map!490 (MutableMap!409) ListMap!87)

(assert (=> b!121523 (= res!56965 (invariantList!32 (toList!268 (map!490 (cache!861 cache!470)))))))

(declare-fun b!121524 () Bool)

(declare-fun lambda!3038 () Int)

(declare-fun forall!345 (List!2005 Int) Bool)

(assert (=> b!121524 (= e!69660 (forall!345 (toList!268 (map!490 (cache!861 cache!470))) lambda!3038))))

(assert (= (and d!28949 res!56964) b!121523))

(assert (= (and b!121523 res!56965) b!121524))

(declare-fun m!107836 () Bool)

(assert (=> d!28949 m!107836))

(declare-fun m!107838 () Bool)

(assert (=> b!121523 m!107838))

(declare-fun m!107840 () Bool)

(assert (=> b!121523 m!107840))

(assert (=> b!121524 m!107838))

(declare-fun m!107842 () Bool)

(assert (=> b!121524 m!107842))

(assert (=> d!28855 d!28949))

(declare-fun call!5136 () Regex!547)

(declare-fun bm!5129 () Bool)

(declare-fun c!27063 () Bool)

(assert (=> bm!5129 (= call!5136 (derivativeStep!54 (ite c!27063 (regOne!1607 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))) (regTwo!1606 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)))) lt!36264))))

(declare-fun b!121525 () Bool)

(declare-fun e!69661 () Regex!547)

(declare-fun e!69662 () Regex!547)

(assert (=> b!121525 (= e!69661 e!69662)))

(declare-fun c!27064 () Bool)

(assert (=> b!121525 (= c!27064 ((_ is ElementMatch!547) (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))))))

(declare-fun b!121526 () Bool)

(assert (=> b!121526 (= c!27063 ((_ is Union!547) (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))))))

(declare-fun e!69664 () Regex!547)

(assert (=> b!121526 (= e!69662 e!69664)))

(declare-fun b!121527 () Bool)

(declare-fun e!69665 () Regex!547)

(assert (=> b!121527 (= e!69664 e!69665)))

(declare-fun c!27066 () Bool)

(assert (=> b!121527 (= c!27066 ((_ is Star!547) (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))))))

(declare-fun b!121528 () Bool)

(declare-fun call!5137 () Regex!547)

(assert (=> b!121528 (= e!69664 (Union!547 call!5136 call!5137))))

(declare-fun call!5134 () Regex!547)

(declare-fun b!121529 () Bool)

(assert (=> b!121529 (= e!69665 (Concat!931 call!5134 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))))))

(declare-fun bm!5131 () Bool)

(assert (=> bm!5131 (= call!5134 call!5137)))

(declare-fun bm!5132 () Bool)

(assert (=> bm!5132 (= call!5137 (derivativeStep!54 (ite c!27063 (regTwo!1607 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))) (ite c!27066 (reg!876 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))) (regOne!1606 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))))) lt!36264))))

(declare-fun call!5135 () Regex!547)

(declare-fun b!121530 () Bool)

(declare-fun e!69663 () Regex!547)

(assert (=> b!121530 (= e!69663 (Union!547 (Concat!931 call!5135 (regTwo!1606 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)))) call!5136))))

(declare-fun b!121531 () Bool)

(declare-fun c!27062 () Bool)

(assert (=> b!121531 (= c!27062 (nullable!85 (regOne!1606 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))))

(assert (=> b!121531 (= e!69665 e!69663)))

(declare-fun b!121532 () Bool)

(assert (=> b!121532 (= e!69662 (ite (= lt!36264 (c!27002 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)))) EmptyExpr!547 EmptyLang!547))))

(declare-fun bm!5130 () Bool)

(assert (=> bm!5130 (= call!5135 call!5134)))

(declare-fun d!28951 () Bool)

(declare-fun lt!36326 () Regex!547)

(assert (=> d!28951 (validRegex!144 lt!36326)))

(assert (=> d!28951 (= lt!36326 e!69661)))

(declare-fun c!27065 () Bool)

(assert (=> d!28951 (= c!27065 (or ((_ is EmptyExpr!547) (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532))) ((_ is EmptyLang!547) (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))))

(assert (=> d!28951 (validRegex!144 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)))))

(assert (=> d!28951 (= (derivativeStep!54 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)) lt!36264) lt!36326)))

(declare-fun b!121533 () Bool)

(assert (=> b!121533 (= e!69661 EmptyLang!547)))

(declare-fun b!121534 () Bool)

(assert (=> b!121534 (= e!69663 (Union!547 (Concat!931 call!5135 (regTwo!1606 (ite c!27030 (regOne!1607 r!15532) (regTwo!1606 r!15532)))) EmptyLang!547))))

(assert (= (and d!28951 c!27065) b!121533))

(assert (= (and d!28951 (not c!27065)) b!121525))

(assert (= (and b!121525 c!27064) b!121532))

(assert (= (and b!121525 (not c!27064)) b!121526))

(assert (= (and b!121526 c!27063) b!121528))

(assert (= (and b!121526 (not c!27063)) b!121527))

(assert (= (and b!121527 c!27066) b!121529))

(assert (= (and b!121527 (not c!27066)) b!121531))

(assert (= (and b!121531 c!27062) b!121530))

(assert (= (and b!121531 (not c!27062)) b!121534))

(assert (= (or b!121530 b!121534) bm!5130))

(assert (= (or b!121529 bm!5130) bm!5131))

(assert (= (or b!121528 bm!5131) bm!5132))

(assert (= (or b!121528 b!121530) bm!5129))

(declare-fun m!107844 () Bool)

(assert (=> bm!5129 m!107844))

(declare-fun m!107846 () Bool)

(assert (=> bm!5132 m!107846))

(declare-fun m!107848 () Bool)

(assert (=> b!121531 m!107848))

(declare-fun m!107850 () Bool)

(assert (=> d!28951 m!107850))

(declare-fun m!107852 () Bool)

(assert (=> d!28951 m!107852))

(assert (=> bm!5116 d!28951))

(declare-fun b!121535 () Bool)

(declare-fun e!69668 () Bool)

(declare-fun e!69667 () Bool)

(assert (=> b!121535 (= e!69668 e!69667)))

(declare-fun res!56968 () Bool)

(assert (=> b!121535 (=> (not res!56968) (not e!69667))))

(assert (=> b!121535 (= res!56968 (not ((_ is Nil!2000) (++!376 testedP!367 testedSuffix!285))))))

(declare-fun b!121537 () Bool)

(assert (=> b!121537 (= e!69667 (isPrefix!125 (tail!235 testedP!367) (tail!235 (++!376 testedP!367 testedSuffix!285))))))

(declare-fun b!121536 () Bool)

(declare-fun res!56966 () Bool)

(assert (=> b!121536 (=> (not res!56966) (not e!69667))))

(assert (=> b!121536 (= res!56966 (= (head!499 testedP!367) (head!499 (++!376 testedP!367 testedSuffix!285))))))

(declare-fun d!28953 () Bool)

(declare-fun e!69666 () Bool)

(assert (=> d!28953 e!69666))

(declare-fun res!56967 () Bool)

(assert (=> d!28953 (=> res!56967 e!69666)))

(declare-fun lt!36327 () Bool)

(assert (=> d!28953 (= res!56967 (not lt!36327))))

(assert (=> d!28953 (= lt!36327 e!69668)))

(declare-fun res!56969 () Bool)

(assert (=> d!28953 (=> res!56969 e!69668)))

(assert (=> d!28953 (= res!56969 ((_ is Nil!2000) testedP!367))))

(assert (=> d!28953 (= (isPrefix!125 testedP!367 (++!376 testedP!367 testedSuffix!285)) lt!36327)))

(declare-fun b!121538 () Bool)

(assert (=> b!121538 (= e!69666 (>= (size!1856 (++!376 testedP!367 testedSuffix!285)) (size!1856 testedP!367)))))

(assert (= (and d!28953 (not res!56969)) b!121535))

(assert (= (and b!121535 res!56968) b!121536))

(assert (= (and b!121536 res!56966) b!121537))

(assert (= (and d!28953 (not res!56967)) b!121538))

(assert (=> b!121537 m!107695))

(assert (=> b!121537 m!107569))

(declare-fun m!107854 () Bool)

(assert (=> b!121537 m!107854))

(assert (=> b!121537 m!107695))

(assert (=> b!121537 m!107854))

(declare-fun m!107856 () Bool)

(assert (=> b!121537 m!107856))

(assert (=> b!121536 m!107699))

(assert (=> b!121536 m!107569))

(declare-fun m!107858 () Bool)

(assert (=> b!121536 m!107858))

(assert (=> b!121538 m!107569))

(declare-fun m!107860 () Bool)

(assert (=> b!121538 m!107860))

(assert (=> b!121538 m!107601))

(assert (=> d!28867 d!28953))

(assert (=> d!28867 d!28847))

(declare-fun d!28955 () Bool)

(assert (=> d!28955 (isPrefix!125 testedP!367 (++!376 testedP!367 testedSuffix!285))))

(assert (=> d!28955 true))

(declare-fun _$46!722 () Unit!1520)

(assert (=> d!28955 (= (choose!1575 testedP!367 testedSuffix!285) _$46!722)))

(declare-fun bs!11969 () Bool)

(assert (= bs!11969 d!28955))

(assert (=> bs!11969 m!107569))

(assert (=> bs!11969 m!107569))

(assert (=> bs!11969 m!107709))

(assert (=> d!28867 d!28955))

(declare-fun d!28957 () Bool)

(declare-fun lt!36328 () Int)

(assert (=> d!28957 (>= lt!36328 0)))

(declare-fun e!69669 () Int)

(assert (=> d!28957 (= lt!36328 e!69669)))

(declare-fun c!27067 () Bool)

(assert (=> d!28957 (= c!27067 ((_ is Nil!2000) (t!22483 lt!36261)))))

(assert (=> d!28957 (= (size!1856 (t!22483 lt!36261)) lt!36328)))

(declare-fun b!121539 () Bool)

(assert (=> b!121539 (= e!69669 0)))

(declare-fun b!121540 () Bool)

(assert (=> b!121540 (= e!69669 (+ 1 (size!1856 (t!22483 (t!22483 lt!36261)))))))

(assert (= (and d!28957 c!27067) b!121539))

(assert (= (and d!28957 (not c!27067)) b!121540))

(declare-fun m!107862 () Bool)

(assert (=> b!121540 m!107862))

(assert (=> b!121389 d!28957))

(declare-fun d!28959 () Bool)

(declare-fun c!27068 () Bool)

(assert (=> d!28959 (= c!27068 ((_ is Nil!2000) lt!36275))))

(declare-fun e!69670 () (InoxSet C!2016))

(assert (=> d!28959 (= (content!225 lt!36275) e!69670)))

(declare-fun b!121541 () Bool)

(assert (=> b!121541 (= e!69670 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121542 () Bool)

(assert (=> b!121542 (= e!69670 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 lt!36275) true) (content!225 (t!22483 lt!36275))))))

(assert (= (and d!28959 c!27068) b!121541))

(assert (= (and d!28959 (not c!27068)) b!121542))

(declare-fun m!107864 () Bool)

(assert (=> b!121542 m!107864))

(declare-fun m!107866 () Bool)

(assert (=> b!121542 m!107866))

(assert (=> d!28839 d!28959))

(assert (=> d!28839 d!28893))

(declare-fun d!28961 () Bool)

(declare-fun c!27069 () Bool)

(assert (=> d!28961 (= c!27069 ((_ is Nil!2000) (Cons!2000 (head!499 lt!36257) Nil!2000)))))

(declare-fun e!69671 () (InoxSet C!2016))

(assert (=> d!28961 (= (content!225 (Cons!2000 (head!499 lt!36257) Nil!2000)) e!69671)))

(declare-fun b!121543 () Bool)

(assert (=> b!121543 (= e!69671 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121544 () Bool)

(assert (=> b!121544 (= e!69671 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 (Cons!2000 (head!499 lt!36257) Nil!2000)) true) (content!225 (t!22483 (Cons!2000 (head!499 lt!36257) Nil!2000)))))))

(assert (= (and d!28961 c!27069) b!121543))

(assert (= (and d!28961 (not c!27069)) b!121544))

(declare-fun m!107868 () Bool)

(assert (=> b!121544 m!107868))

(declare-fun m!107870 () Bool)

(assert (=> b!121544 m!107870))

(assert (=> d!28839 d!28961))

(declare-fun b!121545 () Bool)

(declare-fun e!69677 () Bool)

(declare-fun call!5138 () Bool)

(assert (=> b!121545 (= e!69677 call!5138)))

(declare-fun bm!5133 () Bool)

(declare-fun c!27070 () Bool)

(declare-fun c!27071 () Bool)

(assert (=> bm!5133 (= call!5138 (validRegex!144 (ite c!27071 (reg!876 (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))) (ite c!27070 (regOne!1607 (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))) (regTwo!1606 (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532)))))))))

(declare-fun bm!5134 () Bool)

(declare-fun call!5139 () Bool)

(assert (=> bm!5134 (= call!5139 (validRegex!144 (ite c!27070 (regTwo!1607 (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))) (regOne!1606 (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))))))))

(declare-fun b!121546 () Bool)

(declare-fun e!69678 () Bool)

(declare-fun e!69672 () Bool)

(assert (=> b!121546 (= e!69678 e!69672)))

(declare-fun res!56971 () Bool)

(assert (=> b!121546 (=> (not res!56971) (not e!69672))))

(assert (=> b!121546 (= res!56971 call!5139)))

(declare-fun b!121547 () Bool)

(declare-fun e!69676 () Bool)

(assert (=> b!121547 (= e!69676 call!5139)))

(declare-fun b!121549 () Bool)

(declare-fun e!69675 () Bool)

(declare-fun e!69674 () Bool)

(assert (=> b!121549 (= e!69675 e!69674)))

(assert (=> b!121549 (= c!27071 ((_ is Star!547) (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))))))

(declare-fun bm!5135 () Bool)

(declare-fun call!5140 () Bool)

(assert (=> bm!5135 (= call!5140 call!5138)))

(declare-fun b!121550 () Bool)

(declare-fun res!56970 () Bool)

(assert (=> b!121550 (=> (not res!56970) (not e!69676))))

(assert (=> b!121550 (= res!56970 call!5140)))

(declare-fun e!69673 () Bool)

(assert (=> b!121550 (= e!69673 e!69676)))

(declare-fun b!121551 () Bool)

(assert (=> b!121551 (= e!69674 e!69677)))

(declare-fun res!56974 () Bool)

(assert (=> b!121551 (= res!56974 (not (nullable!85 (reg!876 (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))))))))

(assert (=> b!121551 (=> (not res!56974) (not e!69677))))

(declare-fun b!121552 () Bool)

(assert (=> b!121552 (= e!69672 call!5140)))

(declare-fun b!121553 () Bool)

(declare-fun res!56973 () Bool)

(assert (=> b!121553 (=> res!56973 e!69678)))

(assert (=> b!121553 (= res!56973 (not ((_ is Concat!931) (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532)))))))

(assert (=> b!121553 (= e!69673 e!69678)))

(declare-fun b!121548 () Bool)

(assert (=> b!121548 (= e!69674 e!69673)))

(assert (=> b!121548 (= c!27070 ((_ is Union!547) (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))))))

(declare-fun d!28963 () Bool)

(declare-fun res!56972 () Bool)

(assert (=> d!28963 (=> res!56972 e!69675)))

(assert (=> d!28963 (= res!56972 ((_ is ElementMatch!547) (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))))))

(assert (=> d!28963 (= (validRegex!144 (ite c!27034 (regTwo!1607 r!15532) (regOne!1606 r!15532))) e!69675)))

(assert (= (and d!28963 (not res!56972)) b!121549))

(assert (= (and b!121549 c!27071) b!121551))

(assert (= (and b!121549 (not c!27071)) b!121548))

(assert (= (and b!121551 res!56974) b!121545))

(assert (= (and b!121548 c!27070) b!121550))

(assert (= (and b!121548 (not c!27070)) b!121553))

(assert (= (and b!121550 res!56970) b!121547))

(assert (= (and b!121553 (not res!56973)) b!121546))

(assert (= (and b!121546 res!56971) b!121552))

(assert (= (or b!121547 b!121546) bm!5134))

(assert (= (or b!121550 b!121552) bm!5135))

(assert (= (or b!121545 bm!5135) bm!5133))

(declare-fun m!107872 () Bool)

(assert (=> bm!5133 m!107872))

(declare-fun m!107874 () Bool)

(assert (=> bm!5134 m!107874))

(declare-fun m!107876 () Bool)

(assert (=> b!121551 m!107876))

(assert (=> bm!5121 d!28963))

(declare-fun d!28965 () Bool)

(declare-fun c!27072 () Bool)

(assert (=> d!28965 (= c!27072 ((_ is Nil!2000) lt!36280))))

(declare-fun e!69679 () (InoxSet C!2016))

(assert (=> d!28965 (= (content!225 lt!36280) e!69679)))

(declare-fun b!121554 () Bool)

(assert (=> b!121554 (= e!69679 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121555 () Bool)

(assert (=> b!121555 (= e!69679 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 lt!36280) true) (content!225 (t!22483 lt!36280))))))

(assert (= (and d!28965 c!27072) b!121554))

(assert (= (and d!28965 (not c!27072)) b!121555))

(declare-fun m!107878 () Bool)

(assert (=> b!121555 m!107878))

(declare-fun m!107880 () Bool)

(assert (=> b!121555 m!107880))

(assert (=> d!28845 d!28965))

(declare-fun d!28967 () Bool)

(declare-fun c!27073 () Bool)

(assert (=> d!28967 (= c!27073 ((_ is Nil!2000) lt!36261))))

(declare-fun e!69680 () (InoxSet C!2016))

(assert (=> d!28967 (= (content!225 lt!36261) e!69680)))

(declare-fun b!121556 () Bool)

(assert (=> b!121556 (= e!69680 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121557 () Bool)

(assert (=> b!121557 (= e!69680 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 lt!36261) true) (content!225 (t!22483 lt!36261))))))

(assert (= (and d!28967 c!27073) b!121556))

(assert (= (and d!28967 (not c!27073)) b!121557))

(declare-fun m!107882 () Bool)

(assert (=> b!121557 m!107882))

(declare-fun m!107884 () Bool)

(assert (=> b!121557 m!107884))

(assert (=> d!28845 d!28967))

(declare-fun d!28969 () Bool)

(declare-fun c!27074 () Bool)

(assert (=> d!28969 (= c!27074 ((_ is Nil!2000) lt!36251))))

(declare-fun e!69681 () (InoxSet C!2016))

(assert (=> d!28969 (= (content!225 lt!36251) e!69681)))

(declare-fun b!121558 () Bool)

(assert (=> b!121558 (= e!69681 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121559 () Bool)

(assert (=> b!121559 (= e!69681 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 lt!36251) true) (content!225 (t!22483 lt!36251))))))

(assert (= (and d!28969 c!27074) b!121558))

(assert (= (and d!28969 (not c!27074)) b!121559))

(declare-fun m!107886 () Bool)

(assert (=> b!121559 m!107886))

(declare-fun m!107888 () Bool)

(assert (=> b!121559 m!107888))

(assert (=> d!28845 d!28969))

(declare-fun b!121560 () Bool)

(declare-fun e!69687 () Bool)

(declare-fun call!5141 () Bool)

(assert (=> b!121560 (= e!69687 call!5141)))

(declare-fun c!27076 () Bool)

(declare-fun bm!5136 () Bool)

(declare-fun c!27075 () Bool)

(assert (=> bm!5136 (= call!5141 (validRegex!144 (ite c!27076 (reg!876 lt!36288) (ite c!27075 (regOne!1607 lt!36288) (regTwo!1606 lt!36288)))))))

(declare-fun bm!5137 () Bool)

(declare-fun call!5142 () Bool)

(assert (=> bm!5137 (= call!5142 (validRegex!144 (ite c!27075 (regTwo!1607 lt!36288) (regOne!1606 lt!36288))))))

(declare-fun b!121561 () Bool)

(declare-fun e!69688 () Bool)

(declare-fun e!69682 () Bool)

(assert (=> b!121561 (= e!69688 e!69682)))

(declare-fun res!56976 () Bool)

(assert (=> b!121561 (=> (not res!56976) (not e!69682))))

(assert (=> b!121561 (= res!56976 call!5142)))

(declare-fun b!121562 () Bool)

(declare-fun e!69686 () Bool)

(assert (=> b!121562 (= e!69686 call!5142)))

(declare-fun b!121564 () Bool)

(declare-fun e!69685 () Bool)

(declare-fun e!69684 () Bool)

(assert (=> b!121564 (= e!69685 e!69684)))

(assert (=> b!121564 (= c!27076 ((_ is Star!547) lt!36288))))

(declare-fun bm!5138 () Bool)

(declare-fun call!5143 () Bool)

(assert (=> bm!5138 (= call!5143 call!5141)))

(declare-fun b!121565 () Bool)

(declare-fun res!56975 () Bool)

(assert (=> b!121565 (=> (not res!56975) (not e!69686))))

(assert (=> b!121565 (= res!56975 call!5143)))

(declare-fun e!69683 () Bool)

(assert (=> b!121565 (= e!69683 e!69686)))

(declare-fun b!121566 () Bool)

(assert (=> b!121566 (= e!69684 e!69687)))

(declare-fun res!56979 () Bool)

(assert (=> b!121566 (= res!56979 (not (nullable!85 (reg!876 lt!36288))))))

(assert (=> b!121566 (=> (not res!56979) (not e!69687))))

(declare-fun b!121567 () Bool)

(assert (=> b!121567 (= e!69682 call!5143)))

(declare-fun b!121568 () Bool)

(declare-fun res!56978 () Bool)

(assert (=> b!121568 (=> res!56978 e!69688)))

(assert (=> b!121568 (= res!56978 (not ((_ is Concat!931) lt!36288)))))

(assert (=> b!121568 (= e!69683 e!69688)))

(declare-fun b!121563 () Bool)

(assert (=> b!121563 (= e!69684 e!69683)))

(assert (=> b!121563 (= c!27075 ((_ is Union!547) lt!36288))))

(declare-fun d!28971 () Bool)

(declare-fun res!56977 () Bool)

(assert (=> d!28971 (=> res!56977 e!69685)))

(assert (=> d!28971 (= res!56977 ((_ is ElementMatch!547) lt!36288))))

(assert (=> d!28971 (= (validRegex!144 lt!36288) e!69685)))

(assert (= (and d!28971 (not res!56977)) b!121564))

(assert (= (and b!121564 c!27076) b!121566))

(assert (= (and b!121564 (not c!27076)) b!121563))

(assert (= (and b!121566 res!56979) b!121560))

(assert (= (and b!121563 c!27075) b!121565))

(assert (= (and b!121563 (not c!27075)) b!121568))

(assert (= (and b!121565 res!56975) b!121562))

(assert (= (and b!121568 (not res!56978)) b!121561))

(assert (= (and b!121561 res!56976) b!121567))

(assert (= (or b!121562 b!121561) bm!5137))

(assert (= (or b!121565 b!121567) bm!5138))

(assert (= (or b!121560 bm!5138) bm!5136))

(declare-fun m!107890 () Bool)

(assert (=> bm!5136 m!107890))

(declare-fun m!107892 () Bool)

(assert (=> bm!5137 m!107892))

(declare-fun m!107894 () Bool)

(assert (=> b!121566 m!107894))

(assert (=> d!28861 d!28971))

(assert (=> d!28861 d!28871))

(declare-fun bm!5139 () Bool)

(declare-fun c!27078 () Bool)

(declare-fun call!5146 () Regex!547)

(assert (=> bm!5139 (= call!5146 (derivativeStep!54 (ite c!27078 (regOne!1607 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))) (regTwo!1606 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))))) lt!36264))))

(declare-fun b!121569 () Bool)

(declare-fun e!69689 () Regex!547)

(declare-fun e!69690 () Regex!547)

(assert (=> b!121569 (= e!69689 e!69690)))

(declare-fun c!27079 () Bool)

(assert (=> b!121569 (= c!27079 ((_ is ElementMatch!547) (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))))))

(declare-fun b!121570 () Bool)

(assert (=> b!121570 (= c!27078 ((_ is Union!547) (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))))))

(declare-fun e!69692 () Regex!547)

(assert (=> b!121570 (= e!69690 e!69692)))

(declare-fun b!121571 () Bool)

(declare-fun e!69693 () Regex!547)

(assert (=> b!121571 (= e!69692 e!69693)))

(declare-fun c!27081 () Bool)

(assert (=> b!121571 (= c!27081 ((_ is Star!547) (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))))))

(declare-fun b!121572 () Bool)

(declare-fun call!5147 () Regex!547)

(assert (=> b!121572 (= e!69692 (Union!547 call!5146 call!5147))))

(declare-fun b!121573 () Bool)

(declare-fun call!5144 () Regex!547)

(assert (=> b!121573 (= e!69693 (Concat!931 call!5144 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))))))

(declare-fun bm!5141 () Bool)

(assert (=> bm!5141 (= call!5144 call!5147)))

(declare-fun bm!5142 () Bool)

(assert (=> bm!5142 (= call!5147 (derivativeStep!54 (ite c!27078 (regTwo!1607 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))) (ite c!27081 (reg!876 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))) (regOne!1606 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))))) lt!36264))))

(declare-fun e!69691 () Regex!547)

(declare-fun b!121574 () Bool)

(declare-fun call!5145 () Regex!547)

(assert (=> b!121574 (= e!69691 (Union!547 (Concat!931 call!5145 (regTwo!1606 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))))) call!5146))))

(declare-fun c!27077 () Bool)

(declare-fun b!121575 () Bool)

(assert (=> b!121575 (= c!27077 (nullable!85 (regOne!1606 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))))))))

(assert (=> b!121575 (= e!69693 e!69691)))

(declare-fun b!121576 () Bool)

(assert (=> b!121576 (= e!69690 (ite (= lt!36264 (c!27002 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))))) EmptyExpr!547 EmptyLang!547))))

(declare-fun bm!5140 () Bool)

(assert (=> bm!5140 (= call!5145 call!5144)))

(declare-fun d!28973 () Bool)

(declare-fun lt!36329 () Regex!547)

(assert (=> d!28973 (validRegex!144 lt!36329)))

(assert (=> d!28973 (= lt!36329 e!69689)))

(declare-fun c!27080 () Bool)

(assert (=> d!28973 (= c!27080 (or ((_ is EmptyExpr!547) (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532)))) ((_ is EmptyLang!547) (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))))))))

(assert (=> d!28973 (validRegex!144 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))))))

(assert (=> d!28973 (= (derivativeStep!54 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))) lt!36264) lt!36329)))

(declare-fun b!121577 () Bool)

(assert (=> b!121577 (= e!69689 EmptyLang!547)))

(declare-fun b!121578 () Bool)

(assert (=> b!121578 (= e!69691 (Union!547 (Concat!931 call!5145 (regTwo!1606 (ite c!27030 (regTwo!1607 r!15532) (ite c!27033 (reg!876 r!15532) (regOne!1606 r!15532))))) EmptyLang!547))))

(assert (= (and d!28973 c!27080) b!121577))

(assert (= (and d!28973 (not c!27080)) b!121569))

(assert (= (and b!121569 c!27079) b!121576))

(assert (= (and b!121569 (not c!27079)) b!121570))

(assert (= (and b!121570 c!27078) b!121572))

(assert (= (and b!121570 (not c!27078)) b!121571))

(assert (= (and b!121571 c!27081) b!121573))

(assert (= (and b!121571 (not c!27081)) b!121575))

(assert (= (and b!121575 c!27077) b!121574))

(assert (= (and b!121575 (not c!27077)) b!121578))

(assert (= (or b!121574 b!121578) bm!5140))

(assert (= (or b!121573 bm!5140) bm!5141))

(assert (= (or b!121572 bm!5141) bm!5142))

(assert (= (or b!121572 b!121574) bm!5139))

(declare-fun m!107896 () Bool)

(assert (=> bm!5139 m!107896))

(declare-fun m!107898 () Bool)

(assert (=> bm!5142 m!107898))

(declare-fun m!107900 () Bool)

(assert (=> b!121575 m!107900))

(declare-fun m!107902 () Bool)

(assert (=> d!28973 m!107902))

(declare-fun m!107904 () Bool)

(assert (=> d!28973 m!107904))

(assert (=> bm!5119 d!28973))

(declare-fun d!28975 () Bool)

(declare-fun c!27082 () Bool)

(assert (=> d!28975 (= c!27082 ((_ is Nil!2000) lt!36276))))

(declare-fun e!69694 () (InoxSet C!2016))

(assert (=> d!28975 (= (content!225 lt!36276) e!69694)))

(declare-fun b!121579 () Bool)

(assert (=> b!121579 (= e!69694 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121580 () Bool)

(assert (=> b!121580 (= e!69694 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 lt!36276) true) (content!225 (t!22483 lt!36276))))))

(assert (= (and d!28975 c!27082) b!121579))

(assert (= (and d!28975 (not c!27082)) b!121580))

(declare-fun m!107906 () Bool)

(assert (=> b!121580 m!107906))

(declare-fun m!107908 () Bool)

(assert (=> b!121580 m!107908))

(assert (=> d!28841 d!28975))

(assert (=> d!28841 d!28893))

(declare-fun d!28977 () Bool)

(declare-fun c!27083 () Bool)

(assert (=> d!28977 (= c!27083 ((_ is Nil!2000) (Cons!2000 lt!36264 Nil!2000)))))

(declare-fun e!69695 () (InoxSet C!2016))

(assert (=> d!28977 (= (content!225 (Cons!2000 lt!36264 Nil!2000)) e!69695)))

(declare-fun b!121581 () Bool)

(assert (=> b!121581 (= e!69695 ((as const (Array C!2016 Bool)) false))))

(declare-fun b!121582 () Bool)

(assert (=> b!121582 (= e!69695 ((_ map or) (store ((as const (Array C!2016 Bool)) false) (h!7397 (Cons!2000 lt!36264 Nil!2000)) true) (content!225 (t!22483 (Cons!2000 lt!36264 Nil!2000)))))))

(assert (= (and d!28977 c!27083) b!121581))

(assert (= (and d!28977 (not c!27083)) b!121582))

(declare-fun m!107910 () Bool)

(assert (=> b!121582 m!107910))

(declare-fun m!107912 () Bool)

(assert (=> b!121582 m!107912))

(assert (=> d!28841 d!28977))

(declare-fun b!121597 () Bool)

(declare-fun e!69708 () Bool)

(declare-fun e!69713 () Bool)

(assert (=> b!121597 (= e!69708 e!69713)))

(declare-fun res!56992 () Bool)

(declare-fun call!5153 () Bool)

(assert (=> b!121597 (= res!56992 call!5153)))

(assert (=> b!121597 (=> (not res!56992) (not e!69713))))

(declare-fun bm!5147 () Bool)

(declare-fun c!27086 () Bool)

(assert (=> bm!5147 (= call!5153 (nullable!85 (ite c!27086 (regOne!1607 r!15532) (regOne!1606 r!15532))))))

(declare-fun b!121598 () Bool)

(declare-fun call!5152 () Bool)

(assert (=> b!121598 (= e!69713 call!5152)))

(declare-fun bm!5148 () Bool)

(assert (=> bm!5148 (= call!5152 (nullable!85 (ite c!27086 (regTwo!1607 r!15532) (regTwo!1606 r!15532))))))

(declare-fun b!121600 () Bool)

(declare-fun e!69711 () Bool)

(assert (=> b!121600 (= e!69711 e!69708)))

(assert (=> b!121600 (= c!27086 ((_ is Union!547) r!15532))))

(declare-fun b!121601 () Bool)

(declare-fun e!69712 () Bool)

(assert (=> b!121601 (= e!69708 e!69712)))

(declare-fun res!56990 () Bool)

(assert (=> b!121601 (= res!56990 call!5153)))

(assert (=> b!121601 (=> res!56990 e!69712)))

(declare-fun b!121599 () Bool)

(declare-fun e!69709 () Bool)

(declare-fun e!69710 () Bool)

(assert (=> b!121599 (= e!69709 e!69710)))

(declare-fun res!56993 () Bool)

(assert (=> b!121599 (=> (not res!56993) (not e!69710))))

(assert (=> b!121599 (= res!56993 (and (not ((_ is EmptyLang!547) r!15532)) (not ((_ is ElementMatch!547) r!15532))))))

(declare-fun d!28979 () Bool)

(declare-fun res!56991 () Bool)

(assert (=> d!28979 (=> res!56991 e!69709)))

(assert (=> d!28979 (= res!56991 ((_ is EmptyExpr!547) r!15532))))

(assert (=> d!28979 (= (nullableFct!20 r!15532) e!69709)))

(declare-fun b!121602 () Bool)

(assert (=> b!121602 (= e!69712 call!5152)))

(declare-fun b!121603 () Bool)

(assert (=> b!121603 (= e!69710 e!69711)))

(declare-fun res!56994 () Bool)

(assert (=> b!121603 (=> res!56994 e!69711)))

(assert (=> b!121603 (= res!56994 ((_ is Star!547) r!15532))))

(assert (= (and d!28979 (not res!56991)) b!121599))

(assert (= (and b!121599 res!56993) b!121603))

(assert (= (and b!121603 (not res!56994)) b!121600))

(assert (= (and b!121600 c!27086) b!121601))

(assert (= (and b!121600 (not c!27086)) b!121597))

(assert (= (and b!121601 (not res!56990)) b!121602))

(assert (= (and b!121597 res!56992) b!121598))

(assert (= (or b!121602 b!121598) bm!5148))

(assert (= (or b!121601 b!121597) bm!5147))

(declare-fun m!107914 () Bool)

(assert (=> bm!5147 m!107914))

(declare-fun m!107916 () Bool)

(assert (=> bm!5148 m!107916))

(assert (=> d!28833 d!28979))

(declare-fun d!28981 () Bool)

(assert (=> d!28981 (= (nullable!85 (regOne!1606 r!15532)) (nullableFct!20 (regOne!1606 r!15532)))))

(declare-fun bs!11970 () Bool)

(assert (= bs!11970 d!28981))

(declare-fun m!107918 () Bool)

(assert (=> bs!11970 m!107918))

(assert (=> b!121358 d!28981))

(declare-fun b!121604 () Bool)

(declare-fun e!69716 () Bool)

(declare-fun e!69715 () Bool)

(assert (=> b!121604 (= e!69716 e!69715)))

(declare-fun res!56997 () Bool)

(assert (=> b!121604 (=> (not res!56997) (not e!69715))))

(assert (=> b!121604 (= res!56997 (not ((_ is Nil!2000) (tail!235 totalInput!1363))))))

(declare-fun b!121606 () Bool)

(assert (=> b!121606 (= e!69715 (isPrefix!125 (tail!235 (tail!235 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000)))) (tail!235 (tail!235 totalInput!1363))))))

(declare-fun b!121605 () Bool)

(declare-fun res!56995 () Bool)

(assert (=> b!121605 (=> (not res!56995) (not e!69715))))

(assert (=> b!121605 (= res!56995 (= (head!499 (tail!235 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000)))) (head!499 (tail!235 totalInput!1363))))))

(declare-fun d!28983 () Bool)

(declare-fun e!69714 () Bool)

(assert (=> d!28983 e!69714))

(declare-fun res!56996 () Bool)

(assert (=> d!28983 (=> res!56996 e!69714)))

(declare-fun lt!36330 () Bool)

(assert (=> d!28983 (= res!56996 (not lt!36330))))

(assert (=> d!28983 (= lt!36330 e!69716)))

(declare-fun res!56998 () Bool)

(assert (=> d!28983 (=> res!56998 e!69716)))

(assert (=> d!28983 (= res!56998 ((_ is Nil!2000) (tail!235 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000)))))))

(assert (=> d!28983 (= (isPrefix!125 (tail!235 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))) (tail!235 totalInput!1363)) lt!36330)))

(declare-fun b!121607 () Bool)

(assert (=> b!121607 (= e!69714 (>= (size!1856 (tail!235 totalInput!1363)) (size!1856 (tail!235 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))))))))

(assert (= (and d!28983 (not res!56998)) b!121604))

(assert (= (and b!121604 res!56997) b!121605))

(assert (= (and b!121605 res!56995) b!121606))

(assert (= (and d!28983 (not res!56996)) b!121607))

(assert (=> b!121606 m!107613))

(declare-fun m!107920 () Bool)

(assert (=> b!121606 m!107920))

(assert (=> b!121606 m!107615))

(assert (=> b!121606 m!107793))

(assert (=> b!121606 m!107920))

(assert (=> b!121606 m!107793))

(declare-fun m!107922 () Bool)

(assert (=> b!121606 m!107922))

(assert (=> b!121605 m!107613))

(declare-fun m!107924 () Bool)

(assert (=> b!121605 m!107924))

(assert (=> b!121605 m!107615))

(assert (=> b!121605 m!107805))

(assert (=> b!121607 m!107615))

(assert (=> b!121607 m!107791))

(assert (=> b!121607 m!107613))

(declare-fun m!107926 () Bool)

(assert (=> b!121607 m!107926))

(assert (=> b!121271 d!28983))

(declare-fun d!28985 () Bool)

(assert (=> d!28985 (= (tail!235 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))) (t!22483 (++!376 testedP!367 (Cons!2000 (head!499 lt!36257) Nil!2000))))))

(assert (=> b!121271 d!28985))

(assert (=> b!121271 d!28921))

(declare-fun d!28987 () Bool)

(assert (=> d!28987 (= totalInput!1363 testedP!367)))

(assert (=> d!28987 true))

(declare-fun _$60!669 () Unit!1520)

(assert (=> d!28987 (= (choose!1579 totalInput!1363 testedP!367 totalInput!1363) _$60!669)))

(assert (=> d!28887 d!28987))

(assert (=> d!28887 d!28885))

(declare-fun b!121608 () Bool)

(declare-fun e!69719 () Bool)

(declare-fun e!69718 () Bool)

(assert (=> b!121608 (= e!69719 e!69718)))

(declare-fun res!57001 () Bool)

(assert (=> b!121608 (=> (not res!57001) (not e!69718))))

(assert (=> b!121608 (= res!57001 (not ((_ is Nil!2000) (tail!235 lt!36263))))))

(declare-fun b!121610 () Bool)

(assert (=> b!121610 (= e!69718 (isPrefix!125 (tail!235 (tail!235 testedP!367)) (tail!235 (tail!235 lt!36263))))))

(declare-fun b!121609 () Bool)

(declare-fun res!56999 () Bool)

(assert (=> b!121609 (=> (not res!56999) (not e!69718))))

(assert (=> b!121609 (= res!56999 (= (head!499 (tail!235 testedP!367)) (head!499 (tail!235 lt!36263))))))

(declare-fun d!28989 () Bool)

(declare-fun e!69717 () Bool)

(assert (=> d!28989 e!69717))

(declare-fun res!57000 () Bool)

(assert (=> d!28989 (=> res!57000 e!69717)))

(declare-fun lt!36331 () Bool)

(assert (=> d!28989 (= res!57000 (not lt!36331))))

(assert (=> d!28989 (= lt!36331 e!69719)))

(declare-fun res!57002 () Bool)

(assert (=> d!28989 (=> res!57002 e!69719)))

(assert (=> d!28989 (= res!57002 ((_ is Nil!2000) (tail!235 testedP!367)))))

(assert (=> d!28989 (= (isPrefix!125 (tail!235 testedP!367) (tail!235 lt!36263)) lt!36331)))

(declare-fun b!121611 () Bool)

(assert (=> b!121611 (= e!69717 (>= (size!1856 (tail!235 lt!36263)) (size!1856 (tail!235 testedP!367))))))

(assert (= (and d!28989 (not res!57002)) b!121608))

(assert (= (and b!121608 res!57001) b!121609))

(assert (= (and b!121609 res!56999) b!121610))

(assert (= (and d!28989 (not res!57000)) b!121611))

(assert (=> b!121610 m!107695))

(assert (=> b!121610 m!107799))

(assert (=> b!121610 m!107701))

(declare-fun m!107928 () Bool)

(assert (=> b!121610 m!107928))

(assert (=> b!121610 m!107799))

(assert (=> b!121610 m!107928))

(declare-fun m!107930 () Bool)

(assert (=> b!121610 m!107930))

(assert (=> b!121609 m!107695))

(assert (=> b!121609 m!107803))

(assert (=> b!121609 m!107701))

(declare-fun m!107932 () Bool)

(assert (=> b!121609 m!107932))

(assert (=> b!121611 m!107701))

(declare-fun m!107934 () Bool)

(assert (=> b!121611 m!107934))

(assert (=> b!121611 m!107695))

(assert (=> b!121611 m!107807))

(assert (=> b!121368 d!28989))

(assert (=> b!121368 d!28927))

(declare-fun d!28991 () Bool)

(assert (=> d!28991 (= (tail!235 lt!36263) (t!22483 lt!36263))))

(assert (=> b!121368 d!28991))

(assert (=> b!121363 d!28907))

(assert (=> b!121363 d!28899))

(declare-fun b!121612 () Bool)

(declare-fun e!69725 () Bool)

(declare-fun call!5154 () Bool)

(assert (=> b!121612 (= e!69725 call!5154)))

(declare-fun c!27087 () Bool)

(declare-fun bm!5149 () Bool)

(declare-fun c!27088 () Bool)

(assert (=> bm!5149 (= call!5154 (validRegex!144 (ite c!27088 (reg!876 (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))) (ite c!27087 (regOne!1607 (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))) (regTwo!1606 (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264))))))))))

(declare-fun call!5155 () Bool)

(declare-fun bm!5150 () Bool)

(assert (=> bm!5150 (= call!5155 (validRegex!144 (ite c!27087 (regTwo!1607 (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))) (regOne!1606 (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))))))))

(declare-fun b!121613 () Bool)

(declare-fun e!69726 () Bool)

(declare-fun e!69720 () Bool)

(assert (=> b!121613 (= e!69726 e!69720)))

(declare-fun res!57004 () Bool)

(assert (=> b!121613 (=> (not res!57004) (not e!69720))))

(assert (=> b!121613 (= res!57004 call!5155)))

(declare-fun b!121614 () Bool)

(declare-fun e!69724 () Bool)

(assert (=> b!121614 (= e!69724 call!5155)))

(declare-fun b!121616 () Bool)

(declare-fun e!69723 () Bool)

(declare-fun e!69722 () Bool)

(assert (=> b!121616 (= e!69723 e!69722)))

(assert (=> b!121616 (= c!27088 ((_ is Star!547) (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))))))

(declare-fun bm!5151 () Bool)

(declare-fun call!5156 () Bool)

(assert (=> bm!5151 (= call!5156 call!5154)))

(declare-fun b!121617 () Bool)

(declare-fun res!57003 () Bool)

(assert (=> b!121617 (=> (not res!57003) (not e!69724))))

(assert (=> b!121617 (= res!57003 call!5156)))

(declare-fun e!69721 () Bool)

(assert (=> b!121617 (= e!69721 e!69724)))

(declare-fun b!121618 () Bool)

(assert (=> b!121618 (= e!69722 e!69725)))

(declare-fun res!57007 () Bool)

(assert (=> b!121618 (= res!57007 (not (nullable!85 (reg!876 (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))))))))

(assert (=> b!121618 (=> (not res!57007) (not e!69725))))

(declare-fun b!121619 () Bool)

(assert (=> b!121619 (= e!69720 call!5156)))

(declare-fun b!121620 () Bool)

(declare-fun res!57006 () Bool)

(assert (=> b!121620 (=> res!57006 e!69726)))

(assert (=> b!121620 (= res!57006 (not ((_ is Concat!931) (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264))))))))

(assert (=> b!121620 (= e!69721 e!69726)))

(declare-fun b!121615 () Bool)

(assert (=> b!121615 (= e!69722 e!69721)))

(assert (=> b!121615 (= c!27087 ((_ is Union!547) (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))))))

(declare-fun d!28993 () Bool)

(declare-fun res!57005 () Bool)

(assert (=> d!28993 (=> res!57005 e!69723)))

(assert (=> d!28993 (= res!57005 ((_ is ElementMatch!547) (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))))))

(assert (=> d!28993 (= (validRegex!144 (ite c!27017 (regTwo!1607 (derivativeStep!54 r!15532 lt!36264)) (regOne!1606 (derivativeStep!54 r!15532 lt!36264)))) e!69723)))

(assert (= (and d!28993 (not res!57005)) b!121616))

(assert (= (and b!121616 c!27088) b!121618))

(assert (= (and b!121616 (not c!27088)) b!121615))

(assert (= (and b!121618 res!57007) b!121612))

(assert (= (and b!121615 c!27087) b!121617))

(assert (= (and b!121615 (not c!27087)) b!121620))

(assert (= (and b!121617 res!57003) b!121614))

(assert (= (and b!121620 (not res!57006)) b!121613))

(assert (= (and b!121613 res!57004) b!121619))

(assert (= (or b!121614 b!121613) bm!5150))

(assert (= (or b!121617 b!121619) bm!5151))

(assert (= (or b!121612 bm!5151) bm!5149))

(declare-fun m!107936 () Bool)

(assert (=> bm!5149 m!107936))

(declare-fun m!107938 () Bool)

(assert (=> bm!5150 m!107938))

(declare-fun m!107940 () Bool)

(assert (=> b!121618 m!107940))

(assert (=> bm!5106 d!28993))

(assert (=> b!121381 d!28949))

(assert (=> b!121365 d!28853))

(assert (=> b!121365 d!28857))

(declare-fun b!121635 () Bool)

(declare-fun e!69741 () Bool)

(declare-fun e!69740 () Bool)

(assert (=> b!121635 (= e!69741 e!69740)))

(declare-fun res!57020 () Bool)

(declare-fun call!5162 () Bool)

(assert (=> b!121635 (= res!57020 call!5162)))

(assert (=> b!121635 (=> res!57020 e!69740)))

(declare-fun b!121636 () Bool)

(declare-fun call!5161 () Bool)

(assert (=> b!121636 (= e!69740 call!5161)))

(declare-fun b!121637 () Bool)

(declare-fun e!69743 () Bool)

(assert (=> b!121637 (= e!69743 e!69741)))

(declare-fun c!27091 () Bool)

(assert (=> b!121637 (= c!27091 ((_ is Union!547) r!15532))))

(declare-fun bm!5156 () Bool)

(assert (=> bm!5156 (= call!5161 (lostCause!69 (ite c!27091 (regOne!1607 r!15532) (regTwo!1606 r!15532))))))

(declare-fun b!121638 () Bool)

(declare-fun e!69739 () Bool)

(assert (=> b!121638 (= e!69741 e!69739)))

(declare-fun res!57018 () Bool)

(assert (=> b!121638 (= res!57018 call!5161)))

(assert (=> b!121638 (=> (not res!57018) (not e!69739))))

(declare-fun b!121639 () Bool)

(assert (=> b!121639 (= e!69739 call!5162)))

(declare-fun b!121640 () Bool)

(declare-fun e!69742 () Bool)

(declare-fun e!69744 () Bool)

(assert (=> b!121640 (= e!69742 e!69744)))

(declare-fun res!57019 () Bool)

(assert (=> b!121640 (=> res!57019 e!69744)))

(assert (=> b!121640 (= res!57019 ((_ is EmptyLang!547) r!15532))))

(declare-fun d!28995 () Bool)

(declare-fun lt!36334 () Bool)

(declare-datatypes ((Option!199 0))(
  ( (None!198) (Some!198 (v!13359 List!2006)) )
))
(declare-fun isEmpty!813 (Option!199) Bool)

(declare-fun getLanguageWitness!27 (Regex!547) Option!199)

(assert (=> d!28995 (= lt!36334 (isEmpty!813 (getLanguageWitness!27 r!15532)))))

(assert (=> d!28995 (= lt!36334 e!69742)))

(declare-fun res!57021 () Bool)

(assert (=> d!28995 (=> (not res!57021) (not e!69742))))

(assert (=> d!28995 (= res!57021 (not ((_ is EmptyExpr!547) r!15532)))))

(assert (=> d!28995 (= (lostCauseFct!30 r!15532) lt!36334)))

(declare-fun b!121641 () Bool)

(assert (=> b!121641 (= e!69744 e!69743)))

(declare-fun res!57022 () Bool)

(assert (=> b!121641 (=> (not res!57022) (not e!69743))))

(assert (=> b!121641 (= res!57022 (and (not ((_ is ElementMatch!547) r!15532)) (not ((_ is Star!547) r!15532))))))

(declare-fun bm!5157 () Bool)

(assert (=> bm!5157 (= call!5162 (lostCause!69 (ite c!27091 (regTwo!1607 r!15532) (regOne!1606 r!15532))))))

(assert (= (and d!28995 res!57021) b!121640))

(assert (= (and b!121640 (not res!57019)) b!121641))

(assert (= (and b!121641 res!57022) b!121637))

(assert (= (and b!121637 c!27091) b!121638))

(assert (= (and b!121637 (not c!27091)) b!121635))

(assert (= (and b!121638 res!57018) b!121639))

(assert (= (and b!121635 (not res!57020)) b!121636))

(assert (= (or b!121639 b!121635) bm!5157))

(assert (= (or b!121638 b!121636) bm!5156))

(declare-fun m!107942 () Bool)

(assert (=> bm!5156 m!107942))

(declare-fun m!107944 () Bool)

(assert (=> d!28995 m!107944))

(assert (=> d!28995 m!107944))

(declare-fun m!107946 () Bool)

(assert (=> d!28995 m!107946))

(declare-fun m!107948 () Bool)

(assert (=> bm!5157 m!107948))

(assert (=> d!28875 d!28995))

(declare-fun b!121645 () Bool)

(declare-fun lt!36335 () List!2006)

(declare-fun e!69746 () Bool)

(assert (=> b!121645 (= e!69746 (or (not (= lt!36251 Nil!2000)) (= lt!36335 (t!22483 lt!36261))))))

(declare-fun b!121644 () Bool)

(declare-fun res!57024 () Bool)

(assert (=> b!121644 (=> (not res!57024) (not e!69746))))

(assert (=> b!121644 (= res!57024 (= (size!1856 lt!36335) (+ (size!1856 (t!22483 lt!36261)) (size!1856 lt!36251))))))

(declare-fun b!121643 () Bool)

(declare-fun e!69745 () List!2006)

(assert (=> b!121643 (= e!69745 (Cons!2000 (h!7397 (t!22483 lt!36261)) (++!376 (t!22483 (t!22483 lt!36261)) lt!36251)))))

(declare-fun d!28997 () Bool)

(assert (=> d!28997 e!69746))

(declare-fun res!57023 () Bool)

(assert (=> d!28997 (=> (not res!57023) (not e!69746))))

(assert (=> d!28997 (= res!57023 (= (content!225 lt!36335) ((_ map or) (content!225 (t!22483 lt!36261)) (content!225 lt!36251))))))

(assert (=> d!28997 (= lt!36335 e!69745)))

(declare-fun c!27092 () Bool)

(assert (=> d!28997 (= c!27092 ((_ is Nil!2000) (t!22483 lt!36261)))))

(assert (=> d!28997 (= (++!376 (t!22483 lt!36261) lt!36251) lt!36335)))

(declare-fun b!121642 () Bool)

(assert (=> b!121642 (= e!69745 lt!36251)))

(assert (= (and d!28997 c!27092) b!121642))

(assert (= (and d!28997 (not c!27092)) b!121643))

(assert (= (and d!28997 res!57023) b!121644))

(assert (= (and b!121644 res!57024) b!121645))

(declare-fun m!107950 () Bool)

(assert (=> b!121644 m!107950))

(assert (=> b!121644 m!107729))

(assert (=> b!121644 m!107655))

(declare-fun m!107952 () Bool)

(assert (=> b!121643 m!107952))

(declare-fun m!107954 () Bool)

(assert (=> d!28997 m!107954))

(assert (=> d!28997 m!107884))

(assert (=> d!28997 m!107663))

(assert (=> b!121290 d!28997))

(assert (=> b!121393 d!28853))

(assert (=> d!28869 d!28857))

(assert (=> d!28869 d!28853))

(declare-fun d!28999 () Bool)

(assert (=> d!28999 (<= (size!1856 testedP!367) (size!1856 totalInput!1363))))

(assert (=> d!28999 true))

(declare-fun _$64!435 () Unit!1520)

(assert (=> d!28999 (= (choose!1576 testedP!367 totalInput!1363) _$64!435)))

(declare-fun bs!11971 () Bool)

(assert (= bs!11971 d!28999))

(assert (=> bs!11971 m!107601))

(assert (=> bs!11971 m!107545))

(assert (=> d!28869 d!28999))

(assert (=> d!28869 d!28863))

(declare-fun d!29001 () Bool)

(declare-fun lt!36336 () Int)

(assert (=> d!29001 (>= lt!36336 0)))

(declare-fun e!69747 () Int)

(assert (=> d!29001 (= lt!36336 e!69747)))

(declare-fun c!27093 () Bool)

(assert (=> d!29001 (= c!27093 ((_ is Nil!2000) lt!36275))))

(assert (=> d!29001 (= (size!1856 lt!36275) lt!36336)))

(declare-fun b!121646 () Bool)

(assert (=> b!121646 (= e!69747 0)))

(declare-fun b!121647 () Bool)

(assert (=> b!121647 (= e!69747 (+ 1 (size!1856 (t!22483 lt!36275))))))

(assert (= (and d!29001 c!27093) b!121646))

(assert (= (and d!29001 (not c!27093)) b!121647))

(declare-fun m!107956 () Bool)

(assert (=> b!121647 m!107956))

(assert (=> b!121283 d!29001))

(assert (=> b!121283 d!28857))

(declare-fun d!29003 () Bool)

(declare-fun lt!36337 () Int)

(assert (=> d!29003 (>= lt!36337 0)))

(declare-fun e!69748 () Int)

(assert (=> d!29003 (= lt!36337 e!69748)))

(declare-fun c!27094 () Bool)

(assert (=> d!29003 (= c!27094 ((_ is Nil!2000) (Cons!2000 (head!499 lt!36257) Nil!2000)))))

(assert (=> d!29003 (= (size!1856 (Cons!2000 (head!499 lt!36257) Nil!2000)) lt!36337)))

(declare-fun b!121648 () Bool)

(assert (=> b!121648 (= e!69748 0)))

(declare-fun b!121649 () Bool)

(assert (=> b!121649 (= e!69748 (+ 1 (size!1856 (t!22483 (Cons!2000 (head!499 lt!36257) Nil!2000)))))))

(assert (= (and d!29003 c!27094) b!121648))

(assert (= (and d!29003 (not c!27094)) b!121649))

(declare-fun m!107958 () Bool)

(assert (=> b!121649 m!107958))

(assert (=> b!121283 d!29003))

(declare-fun lt!36338 () List!2006)

(declare-fun e!69750 () Bool)

(declare-fun b!121653 () Bool)

(assert (=> b!121653 (= e!69750 (or (not (= lt!36302 Nil!2000)) (= lt!36338 testedP!367)))))

(declare-fun b!121652 () Bool)

(declare-fun res!57026 () Bool)

(assert (=> b!121652 (=> (not res!57026) (not e!69750))))

(assert (=> b!121652 (= res!57026 (= (size!1856 lt!36338) (+ (size!1856 testedP!367) (size!1856 lt!36302))))))

(declare-fun b!121651 () Bool)

(declare-fun e!69749 () List!2006)

(assert (=> b!121651 (= e!69749 (Cons!2000 (h!7397 testedP!367) (++!376 (t!22483 testedP!367) lt!36302)))))

(declare-fun d!29005 () Bool)

(assert (=> d!29005 e!69750))

(declare-fun res!57025 () Bool)

(assert (=> d!29005 (=> (not res!57025) (not e!69750))))

(assert (=> d!29005 (= res!57025 (= (content!225 lt!36338) ((_ map or) (content!225 testedP!367) (content!225 lt!36302))))))

(assert (=> d!29005 (= lt!36338 e!69749)))

(declare-fun c!27095 () Bool)

(assert (=> d!29005 (= c!27095 ((_ is Nil!2000) testedP!367))))

(assert (=> d!29005 (= (++!376 testedP!367 lt!36302) lt!36338)))

(declare-fun b!121650 () Bool)

(assert (=> b!121650 (= e!69749 lt!36302)))

(assert (= (and d!29005 c!27095) b!121650))

(assert (= (and d!29005 (not c!27095)) b!121651))

(assert (= (and d!29005 res!57025) b!121652))

(assert (= (and b!121652 res!57026) b!121653))

(declare-fun m!107960 () Bool)

(assert (=> b!121652 m!107960))

(assert (=> b!121652 m!107601))

(declare-fun m!107962 () Bool)

(assert (=> b!121652 m!107962))

(declare-fun m!107964 () Bool)

(assert (=> b!121651 m!107964))

(declare-fun m!107966 () Bool)

(assert (=> d!29005 m!107966))

(assert (=> d!29005 m!107633))

(declare-fun m!107968 () Bool)

(assert (=> d!29005 m!107968))

(assert (=> d!28879 d!29005))

(assert (=> d!28879 d!28853))

(assert (=> d!28879 d!28857))

(assert (=> b!121391 d!28899))

(declare-fun lt!36339 () List!2006)

(declare-fun b!121657 () Bool)

(declare-fun e!69752 () Bool)

(assert (=> b!121657 (= e!69752 (or (not (= (Cons!2000 lt!36264 Nil!2000) Nil!2000)) (= lt!36339 (t!22483 testedP!367))))))

(declare-fun b!121656 () Bool)

(declare-fun res!57028 () Bool)

(assert (=> b!121656 (=> (not res!57028) (not e!69752))))

(assert (=> b!121656 (= res!57028 (= (size!1856 lt!36339) (+ (size!1856 (t!22483 testedP!367)) (size!1856 (Cons!2000 lt!36264 Nil!2000)))))))

(declare-fun b!121655 () Bool)

(declare-fun e!69751 () List!2006)

(assert (=> b!121655 (= e!69751 (Cons!2000 (h!7397 (t!22483 testedP!367)) (++!376 (t!22483 (t!22483 testedP!367)) (Cons!2000 lt!36264 Nil!2000))))))

(declare-fun d!29007 () Bool)

(assert (=> d!29007 e!69752))

(declare-fun res!57027 () Bool)

(assert (=> d!29007 (=> (not res!57027) (not e!69752))))

(assert (=> d!29007 (= res!57027 (= (content!225 lt!36339) ((_ map or) (content!225 (t!22483 testedP!367)) (content!225 (Cons!2000 lt!36264 Nil!2000)))))))

(assert (=> d!29007 (= lt!36339 e!69751)))

(declare-fun c!27096 () Bool)

(assert (=> d!29007 (= c!27096 ((_ is Nil!2000) (t!22483 testedP!367)))))

(assert (=> d!29007 (= (++!376 (t!22483 testedP!367) (Cons!2000 lt!36264 Nil!2000)) lt!36339)))

(declare-fun b!121654 () Bool)

(assert (=> b!121654 (= e!69751 (Cons!2000 lt!36264 Nil!2000))))

(assert (= (and d!29007 c!27096) b!121654))

(assert (= (and d!29007 (not c!27096)) b!121655))

(assert (= (and d!29007 res!57027) b!121656))

(assert (= (and b!121656 res!57028) b!121657))

(declare-fun m!107970 () Bool)

(assert (=> b!121656 m!107970))

(assert (=> b!121656 m!107679))

(assert (=> b!121656 m!107639))

(declare-fun m!107972 () Bool)

(assert (=> b!121655 m!107972))

(declare-fun m!107974 () Bool)

(assert (=> d!29007 m!107974))

(assert (=> d!29007 m!107751))

(assert (=> d!29007 m!107645))

(assert (=> b!121286 d!29007))

(declare-fun d!29009 () Bool)

(assert (=> d!29009 (isPrefix!125 (++!376 testedP!367 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000)) totalInput!1363)))

(assert (=> d!29009 true))

(declare-fun _$65!796 () Unit!1520)

(assert (=> d!29009 (= (choose!1573 testedP!367 totalInput!1363) _$65!796)))

(declare-fun bs!11972 () Bool)

(assert (= bs!11972 d!29009))

(assert (=> bs!11972 m!107555))

(assert (=> bs!11972 m!107555))

(assert (=> bs!11972 m!107607))

(assert (=> bs!11972 m!107605))

(assert (=> bs!11972 m!107605))

(assert (=> bs!11972 m!107611))

(assert (=> d!28835 d!29009))

(assert (=> d!28835 d!28879))

(declare-fun b!121658 () Bool)

(declare-fun e!69755 () Bool)

(declare-fun e!69754 () Bool)

(assert (=> b!121658 (= e!69755 e!69754)))

(declare-fun res!57031 () Bool)

(assert (=> b!121658 (=> (not res!57031) (not e!69754))))

(assert (=> b!121658 (= res!57031 (not ((_ is Nil!2000) totalInput!1363)))))

(declare-fun b!121660 () Bool)

(assert (=> b!121660 (= e!69754 (isPrefix!125 (tail!235 (++!376 testedP!367 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000))) (tail!235 totalInput!1363)))))

(declare-fun b!121659 () Bool)

(declare-fun res!57029 () Bool)

(assert (=> b!121659 (=> (not res!57029) (not e!69754))))

(assert (=> b!121659 (= res!57029 (= (head!499 (++!376 testedP!367 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000))) (head!499 totalInput!1363)))))

(declare-fun d!29011 () Bool)

(declare-fun e!69753 () Bool)

(assert (=> d!29011 e!69753))

(declare-fun res!57030 () Bool)

(assert (=> d!29011 (=> res!57030 e!69753)))

(declare-fun lt!36340 () Bool)

(assert (=> d!29011 (= res!57030 (not lt!36340))))

(assert (=> d!29011 (= lt!36340 e!69755)))

(declare-fun res!57032 () Bool)

(assert (=> d!29011 (=> res!57032 e!69755)))

(assert (=> d!29011 (= res!57032 ((_ is Nil!2000) (++!376 testedP!367 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000))))))

(assert (=> d!29011 (= (isPrefix!125 (++!376 testedP!367 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000)) totalInput!1363) lt!36340)))

(declare-fun b!121661 () Bool)

(assert (=> b!121661 (= e!69753 (>= (size!1856 totalInput!1363) (size!1856 (++!376 testedP!367 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000)))))))

(assert (= (and d!29011 (not res!57032)) b!121658))

(assert (= (and b!121658 res!57031) b!121659))

(assert (= (and b!121659 res!57029) b!121660))

(assert (= (and d!29011 (not res!57030)) b!121661))

(assert (=> b!121660 m!107605))

(declare-fun m!107976 () Bool)

(assert (=> b!121660 m!107976))

(assert (=> b!121660 m!107615))

(assert (=> b!121660 m!107976))

(assert (=> b!121660 m!107615))

(declare-fun m!107978 () Bool)

(assert (=> b!121660 m!107978))

(assert (=> b!121659 m!107605))

(declare-fun m!107980 () Bool)

(assert (=> b!121659 m!107980))

(assert (=> b!121659 m!107621))

(assert (=> b!121661 m!107545))

(assert (=> b!121661 m!107605))

(declare-fun m!107982 () Bool)

(assert (=> b!121661 m!107982))

(assert (=> d!28835 d!29011))

(declare-fun lt!36341 () List!2006)

(declare-fun b!121665 () Bool)

(declare-fun e!69757 () Bool)

(assert (=> b!121665 (= e!69757 (or (not (= (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000) Nil!2000)) (= lt!36341 testedP!367)))))

(declare-fun b!121664 () Bool)

(declare-fun res!57034 () Bool)

(assert (=> b!121664 (=> (not res!57034) (not e!69757))))

(assert (=> b!121664 (= res!57034 (= (size!1856 lt!36341) (+ (size!1856 testedP!367) (size!1856 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000)))))))

(declare-fun b!121663 () Bool)

(declare-fun e!69756 () List!2006)

(assert (=> b!121663 (= e!69756 (Cons!2000 (h!7397 testedP!367) (++!376 (t!22483 testedP!367) (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000))))))

(declare-fun d!29013 () Bool)

(assert (=> d!29013 e!69757))

(declare-fun res!57033 () Bool)

(assert (=> d!29013 (=> (not res!57033) (not e!69757))))

(assert (=> d!29013 (= res!57033 (= (content!225 lt!36341) ((_ map or) (content!225 testedP!367) (content!225 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000)))))))

(assert (=> d!29013 (= lt!36341 e!69756)))

(declare-fun c!27097 () Bool)

(assert (=> d!29013 (= c!27097 ((_ is Nil!2000) testedP!367))))

(assert (=> d!29013 (= (++!376 testedP!367 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000)) lt!36341)))

(declare-fun b!121662 () Bool)

(assert (=> b!121662 (= e!69756 (Cons!2000 (head!499 (getSuffix!64 totalInput!1363 testedP!367)) Nil!2000))))

(assert (= (and d!29013 c!27097) b!121662))

(assert (= (and d!29013 (not c!27097)) b!121663))

(assert (= (and d!29013 res!57033) b!121664))

(assert (= (and b!121664 res!57034) b!121665))

(declare-fun m!107984 () Bool)

(assert (=> b!121664 m!107984))

(assert (=> b!121664 m!107601))

(declare-fun m!107986 () Bool)

(assert (=> b!121664 m!107986))

(declare-fun m!107988 () Bool)

(assert (=> b!121663 m!107988))

(declare-fun m!107990 () Bool)

(assert (=> d!29013 m!107990))

(assert (=> d!29013 m!107633))

(declare-fun m!107992 () Bool)

(assert (=> d!29013 m!107992))

(assert (=> d!28835 d!29013))

(assert (=> d!28835 d!28863))

(declare-fun d!29015 () Bool)

(assert (=> d!29015 (= (head!499 (getSuffix!64 totalInput!1363 testedP!367)) (h!7397 (getSuffix!64 totalInput!1363 testedP!367)))))

(assert (=> d!28835 d!29015))

(declare-fun d!29017 () Bool)

(declare-fun lt!36342 () Int)

(assert (=> d!29017 (>= lt!36342 0)))

(declare-fun e!69758 () Int)

(assert (=> d!29017 (= lt!36342 e!69758)))

(declare-fun c!27098 () Bool)

(assert (=> d!29017 (= c!27098 ((_ is Nil!2000) lt!36281))))

(assert (=> d!29017 (= (size!1856 lt!36281) lt!36342)))

(declare-fun b!121666 () Bool)

(assert (=> b!121666 (= e!69758 0)))

(declare-fun b!121667 () Bool)

(assert (=> b!121667 (= e!69758 (+ 1 (size!1856 (t!22483 lt!36281))))))

(assert (= (and d!29017 c!27098) b!121666))

(assert (= (and d!29017 (not c!27098)) b!121667))

(declare-fun m!107994 () Bool)

(assert (=> b!121667 m!107994))

(assert (=> b!121295 d!29017))

(assert (=> b!121295 d!28857))

(declare-fun d!29019 () Bool)

(declare-fun lt!36343 () Int)

(assert (=> d!29019 (>= lt!36343 0)))

(declare-fun e!69759 () Int)

(assert (=> d!29019 (= lt!36343 e!69759)))

(declare-fun c!27099 () Bool)

(assert (=> d!29019 (= c!27099 ((_ is Nil!2000) testedSuffix!285))))

(assert (=> d!29019 (= (size!1856 testedSuffix!285) lt!36343)))

(declare-fun b!121668 () Bool)

(assert (=> b!121668 (= e!69759 0)))

(declare-fun b!121669 () Bool)

(assert (=> b!121669 (= e!69759 (+ 1 (size!1856 (t!22483 testedSuffix!285))))))

(assert (= (and d!29019 c!27099) b!121668))

(assert (= (and d!29019 (not c!27099)) b!121669))

(declare-fun m!107996 () Bool)

(assert (=> b!121669 m!107996))

(assert (=> b!121295 d!29019))

(declare-fun d!29021 () Bool)

(assert (=> d!29021 (= testedSuffix!285 lt!36257)))

(assert (=> d!29021 true))

(declare-fun _$63!522 () Unit!1520)

(assert (=> d!29021 (= (choose!1577 testedP!367 testedSuffix!285 testedP!367 lt!36257 totalInput!1363) _$63!522)))

(assert (=> d!28877 d!29021))

(assert (=> d!28877 d!28863))

(declare-fun b!121670 () Bool)

(declare-fun e!69760 () Bool)

(assert (=> b!121670 (= e!69760 tp_is_empty!1149)))

(declare-fun b!121672 () Bool)

(declare-fun tp!66691 () Bool)

(assert (=> b!121672 (= e!69760 tp!66691)))

(declare-fun b!121673 () Bool)

(declare-fun tp!66692 () Bool)

(declare-fun tp!66690 () Bool)

(assert (=> b!121673 (= e!69760 (and tp!66692 tp!66690))))

(assert (=> b!121444 (= tp!66682 e!69760)))

(declare-fun b!121671 () Bool)

(declare-fun tp!66689 () Bool)

(declare-fun tp!66693 () Bool)

(assert (=> b!121671 (= e!69760 (and tp!66689 tp!66693))))

(assert (= (and b!121444 ((_ is ElementMatch!547) (_1!1371 (_1!1372 (h!7396 mapValue!1598))))) b!121670))

(assert (= (and b!121444 ((_ is Concat!931) (_1!1371 (_1!1372 (h!7396 mapValue!1598))))) b!121671))

(assert (= (and b!121444 ((_ is Star!547) (_1!1371 (_1!1372 (h!7396 mapValue!1598))))) b!121672))

(assert (= (and b!121444 ((_ is Union!547) (_1!1371 (_1!1372 (h!7396 mapValue!1598))))) b!121673))

(declare-fun b!121674 () Bool)

(declare-fun e!69761 () Bool)

(assert (=> b!121674 (= e!69761 tp_is_empty!1149)))

(declare-fun b!121676 () Bool)

(declare-fun tp!66696 () Bool)

(assert (=> b!121676 (= e!69761 tp!66696)))

(declare-fun b!121677 () Bool)

(declare-fun tp!66697 () Bool)

(declare-fun tp!66695 () Bool)

(assert (=> b!121677 (= e!69761 (and tp!66697 tp!66695))))

(assert (=> b!121444 (= tp!66683 e!69761)))

(declare-fun b!121675 () Bool)

(declare-fun tp!66694 () Bool)

(declare-fun tp!66698 () Bool)

(assert (=> b!121675 (= e!69761 (and tp!66694 tp!66698))))

(assert (= (and b!121444 ((_ is ElementMatch!547) (_2!1372 (h!7396 mapValue!1598)))) b!121674))

(assert (= (and b!121444 ((_ is Concat!931) (_2!1372 (h!7396 mapValue!1598)))) b!121675))

(assert (= (and b!121444 ((_ is Star!547) (_2!1372 (h!7396 mapValue!1598)))) b!121676))

(assert (= (and b!121444 ((_ is Union!547) (_2!1372 (h!7396 mapValue!1598)))) b!121677))

(declare-fun b!121678 () Bool)

(declare-fun tp!66701 () Bool)

(declare-fun e!69762 () Bool)

(declare-fun tp!66699 () Bool)

(declare-fun tp!66700 () Bool)

(assert (=> b!121678 (= e!69762 (and tp!66699 tp_is_empty!1149 tp!66700 tp!66701))))

(assert (=> b!121444 (= tp!66681 e!69762)))

(assert (= (and b!121444 ((_ is Cons!1999) (t!22482 mapValue!1598))) b!121678))

(declare-fun b!121679 () Bool)

(declare-fun e!69763 () Bool)

(assert (=> b!121679 (= e!69763 tp_is_empty!1149)))

(declare-fun b!121681 () Bool)

(declare-fun tp!66704 () Bool)

(assert (=> b!121681 (= e!69763 tp!66704)))

(declare-fun b!121682 () Bool)

(declare-fun tp!66705 () Bool)

(declare-fun tp!66703 () Bool)

(assert (=> b!121682 (= e!69763 (and tp!66705 tp!66703))))

(assert (=> b!121436 (= tp!66661 e!69763)))

(declare-fun b!121680 () Bool)

(declare-fun tp!66702 () Bool)

(declare-fun tp!66706 () Bool)

(assert (=> b!121680 (= e!69763 (and tp!66702 tp!66706))))

(assert (= (and b!121436 ((_ is ElementMatch!547) (_1!1371 (_1!1372 (h!7396 mapDefault!1595))))) b!121679))

(assert (= (and b!121436 ((_ is Concat!931) (_1!1371 (_1!1372 (h!7396 mapDefault!1595))))) b!121680))

(assert (= (and b!121436 ((_ is Star!547) (_1!1371 (_1!1372 (h!7396 mapDefault!1595))))) b!121681))

(assert (= (and b!121436 ((_ is Union!547) (_1!1371 (_1!1372 (h!7396 mapDefault!1595))))) b!121682))

(declare-fun b!121683 () Bool)

(declare-fun e!69764 () Bool)

(assert (=> b!121683 (= e!69764 tp_is_empty!1149)))

(declare-fun b!121685 () Bool)

(declare-fun tp!66709 () Bool)

(assert (=> b!121685 (= e!69764 tp!66709)))

(declare-fun b!121686 () Bool)

(declare-fun tp!66710 () Bool)

(declare-fun tp!66708 () Bool)

(assert (=> b!121686 (= e!69764 (and tp!66710 tp!66708))))

(assert (=> b!121436 (= tp!66662 e!69764)))

(declare-fun b!121684 () Bool)

(declare-fun tp!66707 () Bool)

(declare-fun tp!66711 () Bool)

(assert (=> b!121684 (= e!69764 (and tp!66707 tp!66711))))

(assert (= (and b!121436 ((_ is ElementMatch!547) (_2!1372 (h!7396 mapDefault!1595)))) b!121683))

(assert (= (and b!121436 ((_ is Concat!931) (_2!1372 (h!7396 mapDefault!1595)))) b!121684))

(assert (= (and b!121436 ((_ is Star!547) (_2!1372 (h!7396 mapDefault!1595)))) b!121685))

(assert (= (and b!121436 ((_ is Union!547) (_2!1372 (h!7396 mapDefault!1595)))) b!121686))

(declare-fun tp!66714 () Bool)

(declare-fun e!69765 () Bool)

(declare-fun tp!66712 () Bool)

(declare-fun b!121687 () Bool)

(declare-fun tp!66713 () Bool)

(assert (=> b!121687 (= e!69765 (and tp!66712 tp_is_empty!1149 tp!66713 tp!66714))))

(assert (=> b!121436 (= tp!66663 e!69765)))

(assert (= (and b!121436 ((_ is Cons!1999) (t!22482 mapDefault!1595))) b!121687))

(declare-fun mapIsEmpty!1599 () Bool)

(declare-fun mapRes!1599 () Bool)

(assert (=> mapIsEmpty!1599 mapRes!1599))

(declare-fun tp!66720 () Bool)

(declare-fun b!121689 () Bool)

(declare-fun tp!66716 () Bool)

(declare-fun e!69766 () Bool)

(declare-fun tp!66721 () Bool)

(assert (=> b!121689 (= e!69766 (and tp!66720 tp_is_empty!1149 tp!66721 tp!66716))))

(declare-fun condMapEmpty!1599 () Bool)

(declare-fun mapDefault!1599 () List!2005)

(assert (=> mapNonEmpty!1598 (= condMapEmpty!1599 (= mapRest!1598 ((as const (Array (_ BitVec 32) List!2005)) mapDefault!1599)))))

(assert (=> mapNonEmpty!1598 (= tp!66679 (and e!69766 mapRes!1599))))

(declare-fun tp!66718 () Bool)

(declare-fun e!69767 () Bool)

(declare-fun b!121688 () Bool)

(declare-fun tp!66719 () Bool)

(declare-fun tp!66717 () Bool)

(assert (=> b!121688 (= e!69767 (and tp!66718 tp_is_empty!1149 tp!66719 tp!66717))))

(declare-fun mapNonEmpty!1599 () Bool)

(declare-fun tp!66715 () Bool)

(assert (=> mapNonEmpty!1599 (= mapRes!1599 (and tp!66715 e!69767))))

(declare-fun mapKey!1599 () (_ BitVec 32))

(declare-fun mapValue!1599 () List!2005)

(declare-fun mapRest!1599 () (Array (_ BitVec 32) List!2005))

(assert (=> mapNonEmpty!1599 (= mapRest!1598 (store mapRest!1599 mapKey!1599 mapValue!1599))))

(assert (= (and mapNonEmpty!1598 condMapEmpty!1599) mapIsEmpty!1599))

(assert (= (and mapNonEmpty!1598 (not condMapEmpty!1599)) mapNonEmpty!1599))

(assert (= (and mapNonEmpty!1599 ((_ is Cons!1999) mapValue!1599)) b!121688))

(assert (= (and mapNonEmpty!1598 ((_ is Cons!1999) mapDefault!1599)) b!121689))

(declare-fun m!107998 () Bool)

(assert (=> mapNonEmpty!1599 m!107998))

(declare-fun b!121690 () Bool)

(declare-fun e!69768 () Bool)

(assert (=> b!121690 (= e!69768 tp_is_empty!1149)))

(declare-fun b!121692 () Bool)

(declare-fun tp!66724 () Bool)

(assert (=> b!121692 (= e!69768 tp!66724)))

(declare-fun b!121693 () Bool)

(declare-fun tp!66725 () Bool)

(declare-fun tp!66723 () Bool)

(assert (=> b!121693 (= e!69768 (and tp!66725 tp!66723))))

(assert (=> b!121427 (= tp!66649 e!69768)))

(declare-fun b!121691 () Bool)

(declare-fun tp!66722 () Bool)

(declare-fun tp!66726 () Bool)

(assert (=> b!121691 (= e!69768 (and tp!66722 tp!66726))))

(assert (= (and b!121427 ((_ is ElementMatch!547) (regOne!1607 (reg!876 r!15532)))) b!121690))

(assert (= (and b!121427 ((_ is Concat!931) (regOne!1607 (reg!876 r!15532)))) b!121691))

(assert (= (and b!121427 ((_ is Star!547) (regOne!1607 (reg!876 r!15532)))) b!121692))

(assert (= (and b!121427 ((_ is Union!547) (regOne!1607 (reg!876 r!15532)))) b!121693))

(declare-fun b!121694 () Bool)

(declare-fun e!69769 () Bool)

(assert (=> b!121694 (= e!69769 tp_is_empty!1149)))

(declare-fun b!121696 () Bool)

(declare-fun tp!66729 () Bool)

(assert (=> b!121696 (= e!69769 tp!66729)))

(declare-fun b!121697 () Bool)

(declare-fun tp!66730 () Bool)

(declare-fun tp!66728 () Bool)

(assert (=> b!121697 (= e!69769 (and tp!66730 tp!66728))))

(assert (=> b!121427 (= tp!66647 e!69769)))

(declare-fun b!121695 () Bool)

(declare-fun tp!66727 () Bool)

(declare-fun tp!66731 () Bool)

(assert (=> b!121695 (= e!69769 (and tp!66727 tp!66731))))

(assert (= (and b!121427 ((_ is ElementMatch!547) (regTwo!1607 (reg!876 r!15532)))) b!121694))

(assert (= (and b!121427 ((_ is Concat!931) (regTwo!1607 (reg!876 r!15532)))) b!121695))

(assert (= (and b!121427 ((_ is Star!547) (regTwo!1607 (reg!876 r!15532)))) b!121696))

(assert (= (and b!121427 ((_ is Union!547) (regTwo!1607 (reg!876 r!15532)))) b!121697))

(declare-fun b!121698 () Bool)

(declare-fun e!69770 () Bool)

(assert (=> b!121698 (= e!69770 tp_is_empty!1149)))

(declare-fun b!121700 () Bool)

(declare-fun tp!66734 () Bool)

(assert (=> b!121700 (= e!69770 tp!66734)))

(declare-fun b!121701 () Bool)

(declare-fun tp!66735 () Bool)

(declare-fun tp!66733 () Bool)

(assert (=> b!121701 (= e!69770 (and tp!66735 tp!66733))))

(assert (=> b!121407 (= tp!66623 e!69770)))

(declare-fun b!121699 () Bool)

(declare-fun tp!66732 () Bool)

(declare-fun tp!66736 () Bool)

(assert (=> b!121699 (= e!69770 (and tp!66732 tp!66736))))

(assert (= (and b!121407 ((_ is ElementMatch!547) (regOne!1607 (regOne!1607 r!15532)))) b!121698))

(assert (= (and b!121407 ((_ is Concat!931) (regOne!1607 (regOne!1607 r!15532)))) b!121699))

(assert (= (and b!121407 ((_ is Star!547) (regOne!1607 (regOne!1607 r!15532)))) b!121700))

(assert (= (and b!121407 ((_ is Union!547) (regOne!1607 (regOne!1607 r!15532)))) b!121701))

(declare-fun b!121702 () Bool)

(declare-fun e!69771 () Bool)

(assert (=> b!121702 (= e!69771 tp_is_empty!1149)))

(declare-fun b!121704 () Bool)

(declare-fun tp!66739 () Bool)

(assert (=> b!121704 (= e!69771 tp!66739)))

(declare-fun b!121705 () Bool)

(declare-fun tp!66740 () Bool)

(declare-fun tp!66738 () Bool)

(assert (=> b!121705 (= e!69771 (and tp!66740 tp!66738))))

(assert (=> b!121407 (= tp!66621 e!69771)))

(declare-fun b!121703 () Bool)

(declare-fun tp!66737 () Bool)

(declare-fun tp!66741 () Bool)

(assert (=> b!121703 (= e!69771 (and tp!66737 tp!66741))))

(assert (= (and b!121407 ((_ is ElementMatch!547) (regTwo!1607 (regOne!1607 r!15532)))) b!121702))

(assert (= (and b!121407 ((_ is Concat!931) (regTwo!1607 (regOne!1607 r!15532)))) b!121703))

(assert (= (and b!121407 ((_ is Star!547) (regTwo!1607 (regOne!1607 r!15532)))) b!121704))

(assert (= (and b!121407 ((_ is Union!547) (regTwo!1607 (regOne!1607 r!15532)))) b!121705))

(declare-fun b!121706 () Bool)

(declare-fun e!69772 () Bool)

(assert (=> b!121706 (= e!69772 tp_is_empty!1149)))

(declare-fun b!121708 () Bool)

(declare-fun tp!66744 () Bool)

(assert (=> b!121708 (= e!69772 tp!66744)))

(declare-fun b!121709 () Bool)

(declare-fun tp!66745 () Bool)

(declare-fun tp!66743 () Bool)

(assert (=> b!121709 (= e!69772 (and tp!66745 tp!66743))))

(assert (=> b!121426 (= tp!66648 e!69772)))

(declare-fun b!121707 () Bool)

(declare-fun tp!66742 () Bool)

(declare-fun tp!66746 () Bool)

(assert (=> b!121707 (= e!69772 (and tp!66742 tp!66746))))

(assert (= (and b!121426 ((_ is ElementMatch!547) (reg!876 (reg!876 r!15532)))) b!121706))

(assert (= (and b!121426 ((_ is Concat!931) (reg!876 (reg!876 r!15532)))) b!121707))

(assert (= (and b!121426 ((_ is Star!547) (reg!876 (reg!876 r!15532)))) b!121708))

(assert (= (and b!121426 ((_ is Union!547) (reg!876 (reg!876 r!15532)))) b!121709))

(declare-fun b!121710 () Bool)

(declare-fun e!69773 () Bool)

(assert (=> b!121710 (= e!69773 tp_is_empty!1149)))

(declare-fun b!121712 () Bool)

(declare-fun tp!66749 () Bool)

(assert (=> b!121712 (= e!69773 tp!66749)))

(declare-fun b!121713 () Bool)

(declare-fun tp!66750 () Bool)

(declare-fun tp!66748 () Bool)

(assert (=> b!121713 (= e!69773 (and tp!66750 tp!66748))))

(assert (=> b!121406 (= tp!66622 e!69773)))

(declare-fun b!121711 () Bool)

(declare-fun tp!66747 () Bool)

(declare-fun tp!66751 () Bool)

(assert (=> b!121711 (= e!69773 (and tp!66747 tp!66751))))

(assert (= (and b!121406 ((_ is ElementMatch!547) (reg!876 (regOne!1607 r!15532)))) b!121710))

(assert (= (and b!121406 ((_ is Concat!931) (reg!876 (regOne!1607 r!15532)))) b!121711))

(assert (= (and b!121406 ((_ is Star!547) (reg!876 (regOne!1607 r!15532)))) b!121712))

(assert (= (and b!121406 ((_ is Union!547) (reg!876 (regOne!1607 r!15532)))) b!121713))

(declare-fun b!121714 () Bool)

(declare-fun e!69774 () Bool)

(assert (=> b!121714 (= e!69774 tp_is_empty!1149)))

(declare-fun b!121716 () Bool)

(declare-fun tp!66754 () Bool)

(assert (=> b!121716 (= e!69774 tp!66754)))

(declare-fun b!121717 () Bool)

(declare-fun tp!66755 () Bool)

(declare-fun tp!66753 () Bool)

(assert (=> b!121717 (= e!69774 (and tp!66755 tp!66753))))

(assert (=> b!121435 (= tp!66659 e!69774)))

(declare-fun b!121715 () Bool)

(declare-fun tp!66752 () Bool)

(declare-fun tp!66756 () Bool)

(assert (=> b!121715 (= e!69774 (and tp!66752 tp!66756))))

(assert (= (and b!121435 ((_ is ElementMatch!547) (regOne!1607 (regTwo!1606 r!15532)))) b!121714))

(assert (= (and b!121435 ((_ is Concat!931) (regOne!1607 (regTwo!1606 r!15532)))) b!121715))

(assert (= (and b!121435 ((_ is Star!547) (regOne!1607 (regTwo!1606 r!15532)))) b!121716))

(assert (= (and b!121435 ((_ is Union!547) (regOne!1607 (regTwo!1606 r!15532)))) b!121717))

(declare-fun b!121718 () Bool)

(declare-fun e!69775 () Bool)

(assert (=> b!121718 (= e!69775 tp_is_empty!1149)))

(declare-fun b!121720 () Bool)

(declare-fun tp!66759 () Bool)

(assert (=> b!121720 (= e!69775 tp!66759)))

(declare-fun b!121721 () Bool)

(declare-fun tp!66760 () Bool)

(declare-fun tp!66758 () Bool)

(assert (=> b!121721 (= e!69775 (and tp!66760 tp!66758))))

(assert (=> b!121435 (= tp!66657 e!69775)))

(declare-fun b!121719 () Bool)

(declare-fun tp!66757 () Bool)

(declare-fun tp!66761 () Bool)

(assert (=> b!121719 (= e!69775 (and tp!66757 tp!66761))))

(assert (= (and b!121435 ((_ is ElementMatch!547) (regTwo!1607 (regTwo!1606 r!15532)))) b!121718))

(assert (= (and b!121435 ((_ is Concat!931) (regTwo!1607 (regTwo!1606 r!15532)))) b!121719))

(assert (= (and b!121435 ((_ is Star!547) (regTwo!1607 (regTwo!1606 r!15532)))) b!121720))

(assert (= (and b!121435 ((_ is Union!547) (regTwo!1607 (regTwo!1606 r!15532)))) b!121721))

(declare-fun b!121722 () Bool)

(declare-fun e!69776 () Bool)

(assert (=> b!121722 (= e!69776 tp_is_empty!1149)))

(declare-fun b!121724 () Bool)

(declare-fun tp!66764 () Bool)

(assert (=> b!121724 (= e!69776 tp!66764)))

(declare-fun b!121725 () Bool)

(declare-fun tp!66765 () Bool)

(declare-fun tp!66763 () Bool)

(assert (=> b!121725 (= e!69776 (and tp!66765 tp!66763))))

(assert (=> b!121425 (= tp!66646 e!69776)))

(declare-fun b!121723 () Bool)

(declare-fun tp!66762 () Bool)

(declare-fun tp!66766 () Bool)

(assert (=> b!121723 (= e!69776 (and tp!66762 tp!66766))))

(assert (= (and b!121425 ((_ is ElementMatch!547) (regOne!1606 (reg!876 r!15532)))) b!121722))

(assert (= (and b!121425 ((_ is Concat!931) (regOne!1606 (reg!876 r!15532)))) b!121723))

(assert (= (and b!121425 ((_ is Star!547) (regOne!1606 (reg!876 r!15532)))) b!121724))

(assert (= (and b!121425 ((_ is Union!547) (regOne!1606 (reg!876 r!15532)))) b!121725))

(declare-fun b!121726 () Bool)

(declare-fun e!69777 () Bool)

(assert (=> b!121726 (= e!69777 tp_is_empty!1149)))

(declare-fun b!121728 () Bool)

(declare-fun tp!66769 () Bool)

(assert (=> b!121728 (= e!69777 tp!66769)))

(declare-fun b!121729 () Bool)

(declare-fun tp!66770 () Bool)

(declare-fun tp!66768 () Bool)

(assert (=> b!121729 (= e!69777 (and tp!66770 tp!66768))))

(assert (=> b!121425 (= tp!66650 e!69777)))

(declare-fun b!121727 () Bool)

(declare-fun tp!66767 () Bool)

(declare-fun tp!66771 () Bool)

(assert (=> b!121727 (= e!69777 (and tp!66767 tp!66771))))

(assert (= (and b!121425 ((_ is ElementMatch!547) (regTwo!1606 (reg!876 r!15532)))) b!121726))

(assert (= (and b!121425 ((_ is Concat!931) (regTwo!1606 (reg!876 r!15532)))) b!121727))

(assert (= (and b!121425 ((_ is Star!547) (regTwo!1606 (reg!876 r!15532)))) b!121728))

(assert (= (and b!121425 ((_ is Union!547) (regTwo!1606 (reg!876 r!15532)))) b!121729))

(declare-fun b!121730 () Bool)

(declare-fun e!69778 () Bool)

(assert (=> b!121730 (= e!69778 tp_is_empty!1149)))

(declare-fun b!121732 () Bool)

(declare-fun tp!66774 () Bool)

(assert (=> b!121732 (= e!69778 tp!66774)))

(declare-fun b!121733 () Bool)

(declare-fun tp!66775 () Bool)

(declare-fun tp!66773 () Bool)

(assert (=> b!121733 (= e!69778 (and tp!66775 tp!66773))))

(assert (=> b!121405 (= tp!66620 e!69778)))

(declare-fun b!121731 () Bool)

(declare-fun tp!66772 () Bool)

(declare-fun tp!66776 () Bool)

(assert (=> b!121731 (= e!69778 (and tp!66772 tp!66776))))

(assert (= (and b!121405 ((_ is ElementMatch!547) (regOne!1606 (regOne!1607 r!15532)))) b!121730))

(assert (= (and b!121405 ((_ is Concat!931) (regOne!1606 (regOne!1607 r!15532)))) b!121731))

(assert (= (and b!121405 ((_ is Star!547) (regOne!1606 (regOne!1607 r!15532)))) b!121732))

(assert (= (and b!121405 ((_ is Union!547) (regOne!1606 (regOne!1607 r!15532)))) b!121733))

(declare-fun b!121734 () Bool)

(declare-fun e!69779 () Bool)

(assert (=> b!121734 (= e!69779 tp_is_empty!1149)))

(declare-fun b!121736 () Bool)

(declare-fun tp!66779 () Bool)

(assert (=> b!121736 (= e!69779 tp!66779)))

(declare-fun b!121737 () Bool)

(declare-fun tp!66780 () Bool)

(declare-fun tp!66778 () Bool)

(assert (=> b!121737 (= e!69779 (and tp!66780 tp!66778))))

(assert (=> b!121405 (= tp!66624 e!69779)))

(declare-fun b!121735 () Bool)

(declare-fun tp!66777 () Bool)

(declare-fun tp!66781 () Bool)

(assert (=> b!121735 (= e!69779 (and tp!66777 tp!66781))))

(assert (= (and b!121405 ((_ is ElementMatch!547) (regTwo!1606 (regOne!1607 r!15532)))) b!121734))

(assert (= (and b!121405 ((_ is Concat!931) (regTwo!1606 (regOne!1607 r!15532)))) b!121735))

(assert (= (and b!121405 ((_ is Star!547) (regTwo!1606 (regOne!1607 r!15532)))) b!121736))

(assert (= (and b!121405 ((_ is Union!547) (regTwo!1606 (regOne!1607 r!15532)))) b!121737))

(declare-fun b!121738 () Bool)

(declare-fun e!69780 () Bool)

(assert (=> b!121738 (= e!69780 tp_is_empty!1149)))

(declare-fun b!121740 () Bool)

(declare-fun tp!66784 () Bool)

(assert (=> b!121740 (= e!69780 tp!66784)))

(declare-fun b!121741 () Bool)

(declare-fun tp!66785 () Bool)

(declare-fun tp!66783 () Bool)

(assert (=> b!121741 (= e!69780 (and tp!66785 tp!66783))))

(assert (=> b!121434 (= tp!66658 e!69780)))

(declare-fun b!121739 () Bool)

(declare-fun tp!66782 () Bool)

(declare-fun tp!66786 () Bool)

(assert (=> b!121739 (= e!69780 (and tp!66782 tp!66786))))

(assert (= (and b!121434 ((_ is ElementMatch!547) (reg!876 (regTwo!1606 r!15532)))) b!121738))

(assert (= (and b!121434 ((_ is Concat!931) (reg!876 (regTwo!1606 r!15532)))) b!121739))

(assert (= (and b!121434 ((_ is Star!547) (reg!876 (regTwo!1606 r!15532)))) b!121740))

(assert (= (and b!121434 ((_ is Union!547) (reg!876 (regTwo!1606 r!15532)))) b!121741))

(declare-fun b!121742 () Bool)

(declare-fun e!69781 () Bool)

(assert (=> b!121742 (= e!69781 tp_is_empty!1149)))

(declare-fun b!121744 () Bool)

(declare-fun tp!66789 () Bool)

(assert (=> b!121744 (= e!69781 tp!66789)))

(declare-fun b!121745 () Bool)

(declare-fun tp!66790 () Bool)

(declare-fun tp!66788 () Bool)

(assert (=> b!121745 (= e!69781 (and tp!66790 tp!66788))))

(assert (=> b!121433 (= tp!66656 e!69781)))

(declare-fun b!121743 () Bool)

(declare-fun tp!66787 () Bool)

(declare-fun tp!66791 () Bool)

(assert (=> b!121743 (= e!69781 (and tp!66787 tp!66791))))

(assert (= (and b!121433 ((_ is ElementMatch!547) (regOne!1606 (regTwo!1606 r!15532)))) b!121742))

(assert (= (and b!121433 ((_ is Concat!931) (regOne!1606 (regTwo!1606 r!15532)))) b!121743))

(assert (= (and b!121433 ((_ is Star!547) (regOne!1606 (regTwo!1606 r!15532)))) b!121744))

(assert (= (and b!121433 ((_ is Union!547) (regOne!1606 (regTwo!1606 r!15532)))) b!121745))

(declare-fun b!121746 () Bool)

(declare-fun e!69782 () Bool)

(assert (=> b!121746 (= e!69782 tp_is_empty!1149)))

(declare-fun b!121748 () Bool)

(declare-fun tp!66794 () Bool)

(assert (=> b!121748 (= e!69782 tp!66794)))

(declare-fun b!121749 () Bool)

(declare-fun tp!66795 () Bool)

(declare-fun tp!66793 () Bool)

(assert (=> b!121749 (= e!69782 (and tp!66795 tp!66793))))

(assert (=> b!121433 (= tp!66660 e!69782)))

(declare-fun b!121747 () Bool)

(declare-fun tp!66792 () Bool)

(declare-fun tp!66796 () Bool)

(assert (=> b!121747 (= e!69782 (and tp!66792 tp!66796))))

(assert (= (and b!121433 ((_ is ElementMatch!547) (regTwo!1606 (regTwo!1606 r!15532)))) b!121746))

(assert (= (and b!121433 ((_ is Concat!931) (regTwo!1606 (regTwo!1606 r!15532)))) b!121747))

(assert (= (and b!121433 ((_ is Star!547) (regTwo!1606 (regTwo!1606 r!15532)))) b!121748))

(assert (= (and b!121433 ((_ is Union!547) (regTwo!1606 (regTwo!1606 r!15532)))) b!121749))

(declare-fun b!121750 () Bool)

(declare-fun e!69783 () Bool)

(assert (=> b!121750 (= e!69783 tp_is_empty!1149)))

(declare-fun b!121752 () Bool)

(declare-fun tp!66799 () Bool)

(assert (=> b!121752 (= e!69783 tp!66799)))

(declare-fun b!121753 () Bool)

(declare-fun tp!66800 () Bool)

(declare-fun tp!66798 () Bool)

(assert (=> b!121753 (= e!69783 (and tp!66800 tp!66798))))

(assert (=> b!121417 (= tp!66639 e!69783)))

(declare-fun b!121751 () Bool)

(declare-fun tp!66797 () Bool)

(declare-fun tp!66801 () Bool)

(assert (=> b!121751 (= e!69783 (and tp!66797 tp!66801))))

(assert (= (and b!121417 ((_ is ElementMatch!547) (_1!1371 (_1!1372 (h!7396 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))))) b!121750))

(assert (= (and b!121417 ((_ is Concat!931) (_1!1371 (_1!1372 (h!7396 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))))) b!121751))

(assert (= (and b!121417 ((_ is Star!547) (_1!1371 (_1!1372 (h!7396 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))))) b!121752))

(assert (= (and b!121417 ((_ is Union!547) (_1!1371 (_1!1372 (h!7396 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))))) b!121753))

(declare-fun b!121754 () Bool)

(declare-fun e!69784 () Bool)

(assert (=> b!121754 (= e!69784 tp_is_empty!1149)))

(declare-fun b!121756 () Bool)

(declare-fun tp!66804 () Bool)

(assert (=> b!121756 (= e!69784 tp!66804)))

(declare-fun b!121757 () Bool)

(declare-fun tp!66805 () Bool)

(declare-fun tp!66803 () Bool)

(assert (=> b!121757 (= e!69784 (and tp!66805 tp!66803))))

(assert (=> b!121417 (= tp!66640 e!69784)))

(declare-fun b!121755 () Bool)

(declare-fun tp!66802 () Bool)

(declare-fun tp!66806 () Bool)

(assert (=> b!121755 (= e!69784 (and tp!66802 tp!66806))))

(assert (= (and b!121417 ((_ is ElementMatch!547) (_2!1372 (h!7396 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))))) b!121754))

(assert (= (and b!121417 ((_ is Concat!931) (_2!1372 (h!7396 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))))) b!121755))

(assert (= (and b!121417 ((_ is Star!547) (_2!1372 (h!7396 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))))) b!121756))

(assert (= (and b!121417 ((_ is Union!547) (_2!1372 (h!7396 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))))) b!121757))

(declare-fun e!69785 () Bool)

(declare-fun b!121758 () Bool)

(declare-fun tp!66807 () Bool)

(declare-fun tp!66809 () Bool)

(declare-fun tp!66808 () Bool)

(assert (=> b!121758 (= e!69785 (and tp!66807 tp_is_empty!1149 tp!66808 tp!66809))))

(assert (=> b!121417 (= tp!66641 e!69785)))

(assert (= (and b!121417 ((_ is Cons!1999) (t!22482 (minValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))) b!121758))

(declare-fun b!121759 () Bool)

(declare-fun e!69786 () Bool)

(assert (=> b!121759 (= e!69786 tp_is_empty!1149)))

(declare-fun b!121761 () Bool)

(declare-fun tp!66812 () Bool)

(assert (=> b!121761 (= e!69786 tp!66812)))

(declare-fun b!121762 () Bool)

(declare-fun tp!66813 () Bool)

(declare-fun tp!66811 () Bool)

(assert (=> b!121762 (= e!69786 (and tp!66813 tp!66811))))

(assert (=> b!121446 (= tp!66686 e!69786)))

(declare-fun b!121760 () Bool)

(declare-fun tp!66810 () Bool)

(declare-fun tp!66814 () Bool)

(assert (=> b!121760 (= e!69786 (and tp!66810 tp!66814))))

(assert (= (and b!121446 ((_ is ElementMatch!547) (_1!1371 (_1!1372 (h!7396 mapValue!1595))))) b!121759))

(assert (= (and b!121446 ((_ is Concat!931) (_1!1371 (_1!1372 (h!7396 mapValue!1595))))) b!121760))

(assert (= (and b!121446 ((_ is Star!547) (_1!1371 (_1!1372 (h!7396 mapValue!1595))))) b!121761))

(assert (= (and b!121446 ((_ is Union!547) (_1!1371 (_1!1372 (h!7396 mapValue!1595))))) b!121762))

(declare-fun b!121763 () Bool)

(declare-fun e!69787 () Bool)

(assert (=> b!121763 (= e!69787 tp_is_empty!1149)))

(declare-fun b!121765 () Bool)

(declare-fun tp!66817 () Bool)

(assert (=> b!121765 (= e!69787 tp!66817)))

(declare-fun b!121766 () Bool)

(declare-fun tp!66818 () Bool)

(declare-fun tp!66816 () Bool)

(assert (=> b!121766 (= e!69787 (and tp!66818 tp!66816))))

(assert (=> b!121446 (= tp!66687 e!69787)))

(declare-fun b!121764 () Bool)

(declare-fun tp!66815 () Bool)

(declare-fun tp!66819 () Bool)

(assert (=> b!121764 (= e!69787 (and tp!66815 tp!66819))))

(assert (= (and b!121446 ((_ is ElementMatch!547) (_2!1372 (h!7396 mapValue!1595)))) b!121763))

(assert (= (and b!121446 ((_ is Concat!931) (_2!1372 (h!7396 mapValue!1595)))) b!121764))

(assert (= (and b!121446 ((_ is Star!547) (_2!1372 (h!7396 mapValue!1595)))) b!121765))

(assert (= (and b!121446 ((_ is Union!547) (_2!1372 (h!7396 mapValue!1595)))) b!121766))

(declare-fun b!121767 () Bool)

(declare-fun tp!66820 () Bool)

(declare-fun tp!66822 () Bool)

(declare-fun e!69788 () Bool)

(declare-fun tp!66821 () Bool)

(assert (=> b!121767 (= e!69788 (and tp!66820 tp_is_empty!1149 tp!66821 tp!66822))))

(assert (=> b!121446 (= tp!66688 e!69788)))

(assert (= (and b!121446 ((_ is Cons!1999) (t!22482 mapValue!1595))) b!121767))

(declare-fun b!121768 () Bool)

(declare-fun e!69789 () Bool)

(declare-fun tp!66823 () Bool)

(assert (=> b!121768 (= e!69789 (and tp_is_empty!1149 tp!66823))))

(assert (=> b!121423 (= tp!66645 e!69789)))

(assert (= (and b!121423 ((_ is Cons!2000) (t!22483 (t!22483 totalInput!1363)))) b!121768))

(declare-fun b!121769 () Bool)

(declare-fun e!69790 () Bool)

(assert (=> b!121769 (= e!69790 tp_is_empty!1149)))

(declare-fun b!121771 () Bool)

(declare-fun tp!66826 () Bool)

(assert (=> b!121771 (= e!69790 tp!66826)))

(declare-fun b!121772 () Bool)

(declare-fun tp!66827 () Bool)

(declare-fun tp!66825 () Bool)

(assert (=> b!121772 (= e!69790 (and tp!66827 tp!66825))))

(assert (=> b!121431 (= tp!66654 e!69790)))

(declare-fun b!121770 () Bool)

(declare-fun tp!66824 () Bool)

(declare-fun tp!66828 () Bool)

(assert (=> b!121770 (= e!69790 (and tp!66824 tp!66828))))

(assert (= (and b!121431 ((_ is ElementMatch!547) (regOne!1607 (regOne!1606 r!15532)))) b!121769))

(assert (= (and b!121431 ((_ is Concat!931) (regOne!1607 (regOne!1606 r!15532)))) b!121770))

(assert (= (and b!121431 ((_ is Star!547) (regOne!1607 (regOne!1606 r!15532)))) b!121771))

(assert (= (and b!121431 ((_ is Union!547) (regOne!1607 (regOne!1606 r!15532)))) b!121772))

(declare-fun b!121773 () Bool)

(declare-fun e!69791 () Bool)

(assert (=> b!121773 (= e!69791 tp_is_empty!1149)))

(declare-fun b!121775 () Bool)

(declare-fun tp!66831 () Bool)

(assert (=> b!121775 (= e!69791 tp!66831)))

(declare-fun b!121776 () Bool)

(declare-fun tp!66832 () Bool)

(declare-fun tp!66830 () Bool)

(assert (=> b!121776 (= e!69791 (and tp!66832 tp!66830))))

(assert (=> b!121431 (= tp!66652 e!69791)))

(declare-fun b!121774 () Bool)

(declare-fun tp!66829 () Bool)

(declare-fun tp!66833 () Bool)

(assert (=> b!121774 (= e!69791 (and tp!66829 tp!66833))))

(assert (= (and b!121431 ((_ is ElementMatch!547) (regTwo!1607 (regOne!1606 r!15532)))) b!121773))

(assert (= (and b!121431 ((_ is Concat!931) (regTwo!1607 (regOne!1606 r!15532)))) b!121774))

(assert (= (and b!121431 ((_ is Star!547) (regTwo!1607 (regOne!1606 r!15532)))) b!121775))

(assert (= (and b!121431 ((_ is Union!547) (regTwo!1607 (regOne!1606 r!15532)))) b!121776))

(declare-fun b!121777 () Bool)

(declare-fun e!69792 () Bool)

(assert (=> b!121777 (= e!69792 tp_is_empty!1149)))

(declare-fun b!121779 () Bool)

(declare-fun tp!66836 () Bool)

(assert (=> b!121779 (= e!69792 tp!66836)))

(declare-fun b!121780 () Bool)

(declare-fun tp!66837 () Bool)

(declare-fun tp!66835 () Bool)

(assert (=> b!121780 (= e!69792 (and tp!66837 tp!66835))))

(assert (=> b!121411 (= tp!66628 e!69792)))

(declare-fun b!121778 () Bool)

(declare-fun tp!66834 () Bool)

(declare-fun tp!66838 () Bool)

(assert (=> b!121778 (= e!69792 (and tp!66834 tp!66838))))

(assert (= (and b!121411 ((_ is ElementMatch!547) (regOne!1607 (regTwo!1607 r!15532)))) b!121777))

(assert (= (and b!121411 ((_ is Concat!931) (regOne!1607 (regTwo!1607 r!15532)))) b!121778))

(assert (= (and b!121411 ((_ is Star!547) (regOne!1607 (regTwo!1607 r!15532)))) b!121779))

(assert (= (and b!121411 ((_ is Union!547) (regOne!1607 (regTwo!1607 r!15532)))) b!121780))

(declare-fun b!121781 () Bool)

(declare-fun e!69793 () Bool)

(assert (=> b!121781 (= e!69793 tp_is_empty!1149)))

(declare-fun b!121783 () Bool)

(declare-fun tp!66841 () Bool)

(assert (=> b!121783 (= e!69793 tp!66841)))

(declare-fun b!121784 () Bool)

(declare-fun tp!66842 () Bool)

(declare-fun tp!66840 () Bool)

(assert (=> b!121784 (= e!69793 (and tp!66842 tp!66840))))

(assert (=> b!121411 (= tp!66626 e!69793)))

(declare-fun b!121782 () Bool)

(declare-fun tp!66839 () Bool)

(declare-fun tp!66843 () Bool)

(assert (=> b!121782 (= e!69793 (and tp!66839 tp!66843))))

(assert (= (and b!121411 ((_ is ElementMatch!547) (regTwo!1607 (regTwo!1607 r!15532)))) b!121781))

(assert (= (and b!121411 ((_ is Concat!931) (regTwo!1607 (regTwo!1607 r!15532)))) b!121782))

(assert (= (and b!121411 ((_ is Star!547) (regTwo!1607 (regTwo!1607 r!15532)))) b!121783))

(assert (= (and b!121411 ((_ is Union!547) (regTwo!1607 (regTwo!1607 r!15532)))) b!121784))

(declare-fun b!121785 () Bool)

(declare-fun e!69794 () Bool)

(assert (=> b!121785 (= e!69794 tp_is_empty!1149)))

(declare-fun b!121787 () Bool)

(declare-fun tp!66846 () Bool)

(assert (=> b!121787 (= e!69794 tp!66846)))

(declare-fun b!121788 () Bool)

(declare-fun tp!66847 () Bool)

(declare-fun tp!66845 () Bool)

(assert (=> b!121788 (= e!69794 (and tp!66847 tp!66845))))

(assert (=> b!121416 (= tp!66636 e!69794)))

(declare-fun b!121786 () Bool)

(declare-fun tp!66844 () Bool)

(declare-fun tp!66848 () Bool)

(assert (=> b!121786 (= e!69794 (and tp!66844 tp!66848))))

(assert (= (and b!121416 ((_ is ElementMatch!547) (_1!1371 (_1!1372 (h!7396 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))))) b!121785))

(assert (= (and b!121416 ((_ is Concat!931) (_1!1371 (_1!1372 (h!7396 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))))) b!121786))

(assert (= (and b!121416 ((_ is Star!547) (_1!1371 (_1!1372 (h!7396 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))))) b!121787))

(assert (= (and b!121416 ((_ is Union!547) (_1!1371 (_1!1372 (h!7396 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))))) b!121788))

(declare-fun b!121789 () Bool)

(declare-fun e!69795 () Bool)

(assert (=> b!121789 (= e!69795 tp_is_empty!1149)))

(declare-fun b!121791 () Bool)

(declare-fun tp!66851 () Bool)

(assert (=> b!121791 (= e!69795 tp!66851)))

(declare-fun b!121792 () Bool)

(declare-fun tp!66852 () Bool)

(declare-fun tp!66850 () Bool)

(assert (=> b!121792 (= e!69795 (and tp!66852 tp!66850))))

(assert (=> b!121416 (= tp!66637 e!69795)))

(declare-fun b!121790 () Bool)

(declare-fun tp!66849 () Bool)

(declare-fun tp!66853 () Bool)

(assert (=> b!121790 (= e!69795 (and tp!66849 tp!66853))))

(assert (= (and b!121416 ((_ is ElementMatch!547) (_2!1372 (h!7396 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))))) b!121789))

(assert (= (and b!121416 ((_ is Concat!931) (_2!1372 (h!7396 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))))) b!121790))

(assert (= (and b!121416 ((_ is Star!547) (_2!1372 (h!7396 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))))) b!121791))

(assert (= (and b!121416 ((_ is Union!547) (_2!1372 (h!7396 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470)))))))))) b!121792))

(declare-fun tp!66855 () Bool)

(declare-fun e!69796 () Bool)

(declare-fun tp!66856 () Bool)

(declare-fun b!121793 () Bool)

(declare-fun tp!66854 () Bool)

(assert (=> b!121793 (= e!69796 (and tp!66854 tp_is_empty!1149 tp!66855 tp!66856))))

(assert (=> b!121416 (= tp!66638 e!69796)))

(assert (= (and b!121416 ((_ is Cons!1999) (t!22482 (zeroValue!669 (v!13357 (underlying!1025 (v!13358 (underlying!1026 (cache!861 cache!470))))))))) b!121793))

(declare-fun b!121794 () Bool)

(declare-fun e!69797 () Bool)

(assert (=> b!121794 (= e!69797 tp_is_empty!1149)))

(declare-fun b!121796 () Bool)

(declare-fun tp!66859 () Bool)

(assert (=> b!121796 (= e!69797 tp!66859)))

(declare-fun b!121797 () Bool)

(declare-fun tp!66860 () Bool)

(declare-fun tp!66858 () Bool)

(assert (=> b!121797 (= e!69797 (and tp!66860 tp!66858))))

(assert (=> b!121430 (= tp!66653 e!69797)))

(declare-fun b!121795 () Bool)

(declare-fun tp!66857 () Bool)

(declare-fun tp!66861 () Bool)

(assert (=> b!121795 (= e!69797 (and tp!66857 tp!66861))))

(assert (= (and b!121430 ((_ is ElementMatch!547) (reg!876 (regOne!1606 r!15532)))) b!121794))

(assert (= (and b!121430 ((_ is Concat!931) (reg!876 (regOne!1606 r!15532)))) b!121795))

(assert (= (and b!121430 ((_ is Star!547) (reg!876 (regOne!1606 r!15532)))) b!121796))

(assert (= (and b!121430 ((_ is Union!547) (reg!876 (regOne!1606 r!15532)))) b!121797))

(declare-fun b!121798 () Bool)

(declare-fun e!69798 () Bool)

(assert (=> b!121798 (= e!69798 tp_is_empty!1149)))

(declare-fun b!121800 () Bool)

(declare-fun tp!66864 () Bool)

(assert (=> b!121800 (= e!69798 tp!66864)))

(declare-fun b!121801 () Bool)

(declare-fun tp!66865 () Bool)

(declare-fun tp!66863 () Bool)

(assert (=> b!121801 (= e!69798 (and tp!66865 tp!66863))))

(assert (=> b!121410 (= tp!66627 e!69798)))

(declare-fun b!121799 () Bool)

(declare-fun tp!66862 () Bool)

(declare-fun tp!66866 () Bool)

(assert (=> b!121799 (= e!69798 (and tp!66862 tp!66866))))

(assert (= (and b!121410 ((_ is ElementMatch!547) (reg!876 (regTwo!1607 r!15532)))) b!121798))

(assert (= (and b!121410 ((_ is Concat!931) (reg!876 (regTwo!1607 r!15532)))) b!121799))

(assert (= (and b!121410 ((_ is Star!547) (reg!876 (regTwo!1607 r!15532)))) b!121800))

(assert (= (and b!121410 ((_ is Union!547) (reg!876 (regTwo!1607 r!15532)))) b!121801))

(declare-fun b!121802 () Bool)

(declare-fun e!69799 () Bool)

(declare-fun tp!66867 () Bool)

(assert (=> b!121802 (= e!69799 (and tp_is_empty!1149 tp!66867))))

(assert (=> b!121422 (= tp!66644 e!69799)))

(assert (= (and b!121422 ((_ is Cons!2000) (t!22483 (t!22483 testedP!367)))) b!121802))

(declare-fun b!121803 () Bool)

(declare-fun e!69800 () Bool)

(assert (=> b!121803 (= e!69800 tp_is_empty!1149)))

(declare-fun b!121805 () Bool)

(declare-fun tp!66870 () Bool)

(assert (=> b!121805 (= e!69800 tp!66870)))

(declare-fun b!121806 () Bool)

(declare-fun tp!66871 () Bool)

(declare-fun tp!66869 () Bool)

(assert (=> b!121806 (= e!69800 (and tp!66871 tp!66869))))

(assert (=> b!121429 (= tp!66651 e!69800)))

(declare-fun b!121804 () Bool)

(declare-fun tp!66868 () Bool)

(declare-fun tp!66872 () Bool)

(assert (=> b!121804 (= e!69800 (and tp!66868 tp!66872))))

(assert (= (and b!121429 ((_ is ElementMatch!547) (regOne!1606 (regOne!1606 r!15532)))) b!121803))

(assert (= (and b!121429 ((_ is Concat!931) (regOne!1606 (regOne!1606 r!15532)))) b!121804))

(assert (= (and b!121429 ((_ is Star!547) (regOne!1606 (regOne!1606 r!15532)))) b!121805))

(assert (= (and b!121429 ((_ is Union!547) (regOne!1606 (regOne!1606 r!15532)))) b!121806))

(declare-fun b!121807 () Bool)

(declare-fun e!69801 () Bool)

(assert (=> b!121807 (= e!69801 tp_is_empty!1149)))

(declare-fun b!121809 () Bool)

(declare-fun tp!66875 () Bool)

(assert (=> b!121809 (= e!69801 tp!66875)))

(declare-fun b!121810 () Bool)

(declare-fun tp!66876 () Bool)

(declare-fun tp!66874 () Bool)

(assert (=> b!121810 (= e!69801 (and tp!66876 tp!66874))))

(assert (=> b!121429 (= tp!66655 e!69801)))

(declare-fun b!121808 () Bool)

(declare-fun tp!66873 () Bool)

(declare-fun tp!66877 () Bool)

(assert (=> b!121808 (= e!69801 (and tp!66873 tp!66877))))

(assert (= (and b!121429 ((_ is ElementMatch!547) (regTwo!1606 (regOne!1606 r!15532)))) b!121807))

(assert (= (and b!121429 ((_ is Concat!931) (regTwo!1606 (regOne!1606 r!15532)))) b!121808))

(assert (= (and b!121429 ((_ is Star!547) (regTwo!1606 (regOne!1606 r!15532)))) b!121809))

(assert (= (and b!121429 ((_ is Union!547) (regTwo!1606 (regOne!1606 r!15532)))) b!121810))

(declare-fun b!121811 () Bool)

(declare-fun e!69802 () Bool)

(assert (=> b!121811 (= e!69802 tp_is_empty!1149)))

(declare-fun b!121813 () Bool)

(declare-fun tp!66880 () Bool)

(assert (=> b!121813 (= e!69802 tp!66880)))

(declare-fun b!121814 () Bool)

(declare-fun tp!66881 () Bool)

(declare-fun tp!66879 () Bool)

(assert (=> b!121814 (= e!69802 (and tp!66881 tp!66879))))

(assert (=> b!121409 (= tp!66625 e!69802)))

(declare-fun b!121812 () Bool)

(declare-fun tp!66878 () Bool)

(declare-fun tp!66882 () Bool)

(assert (=> b!121812 (= e!69802 (and tp!66878 tp!66882))))

(assert (= (and b!121409 ((_ is ElementMatch!547) (regOne!1606 (regTwo!1607 r!15532)))) b!121811))

(assert (= (and b!121409 ((_ is Concat!931) (regOne!1606 (regTwo!1607 r!15532)))) b!121812))

(assert (= (and b!121409 ((_ is Star!547) (regOne!1606 (regTwo!1607 r!15532)))) b!121813))

(assert (= (and b!121409 ((_ is Union!547) (regOne!1606 (regTwo!1607 r!15532)))) b!121814))

(declare-fun b!121815 () Bool)

(declare-fun e!69803 () Bool)

(assert (=> b!121815 (= e!69803 tp_is_empty!1149)))

(declare-fun b!121817 () Bool)

(declare-fun tp!66885 () Bool)

(assert (=> b!121817 (= e!69803 tp!66885)))

(declare-fun b!121818 () Bool)

(declare-fun tp!66886 () Bool)

(declare-fun tp!66884 () Bool)

(assert (=> b!121818 (= e!69803 (and tp!66886 tp!66884))))

(assert (=> b!121409 (= tp!66629 e!69803)))

(declare-fun b!121816 () Bool)

(declare-fun tp!66883 () Bool)

(declare-fun tp!66887 () Bool)

(assert (=> b!121816 (= e!69803 (and tp!66883 tp!66887))))

(assert (= (and b!121409 ((_ is ElementMatch!547) (regTwo!1606 (regTwo!1607 r!15532)))) b!121815))

(assert (= (and b!121409 ((_ is Concat!931) (regTwo!1606 (regTwo!1607 r!15532)))) b!121816))

(assert (= (and b!121409 ((_ is Star!547) (regTwo!1606 (regTwo!1607 r!15532)))) b!121817))

(assert (= (and b!121409 ((_ is Union!547) (regTwo!1606 (regTwo!1607 r!15532)))) b!121818))

(declare-fun b!121819 () Bool)

(declare-fun e!69804 () Bool)

(declare-fun tp!66888 () Bool)

(assert (=> b!121819 (= e!69804 (and tp_is_empty!1149 tp!66888))))

(assert (=> b!121437 (= tp!66664 e!69804)))

(assert (= (and b!121437 ((_ is Cons!2000) (t!22483 (t!22483 testedSuffix!285)))) b!121819))

(declare-fun b!121820 () Bool)

(declare-fun e!69805 () Bool)

(assert (=> b!121820 (= e!69805 tp_is_empty!1149)))

(declare-fun b!121822 () Bool)

(declare-fun tp!66891 () Bool)

(assert (=> b!121822 (= e!69805 tp!66891)))

(declare-fun b!121823 () Bool)

(declare-fun tp!66892 () Bool)

(declare-fun tp!66890 () Bool)

(assert (=> b!121823 (= e!69805 (and tp!66892 tp!66890))))

(assert (=> b!121445 (= tp!66684 e!69805)))

(declare-fun b!121821 () Bool)

(declare-fun tp!66889 () Bool)

(declare-fun tp!66893 () Bool)

(assert (=> b!121821 (= e!69805 (and tp!66889 tp!66893))))

(assert (= (and b!121445 ((_ is ElementMatch!547) (_1!1371 (_1!1372 (h!7396 mapDefault!1598))))) b!121820))

(assert (= (and b!121445 ((_ is Concat!931) (_1!1371 (_1!1372 (h!7396 mapDefault!1598))))) b!121821))

(assert (= (and b!121445 ((_ is Star!547) (_1!1371 (_1!1372 (h!7396 mapDefault!1598))))) b!121822))

(assert (= (and b!121445 ((_ is Union!547) (_1!1371 (_1!1372 (h!7396 mapDefault!1598))))) b!121823))

(declare-fun b!121824 () Bool)

(declare-fun e!69806 () Bool)

(assert (=> b!121824 (= e!69806 tp_is_empty!1149)))

(declare-fun b!121826 () Bool)

(declare-fun tp!66896 () Bool)

(assert (=> b!121826 (= e!69806 tp!66896)))

(declare-fun b!121827 () Bool)

(declare-fun tp!66897 () Bool)

(declare-fun tp!66895 () Bool)

(assert (=> b!121827 (= e!69806 (and tp!66897 tp!66895))))

(assert (=> b!121445 (= tp!66685 e!69806)))

(declare-fun b!121825 () Bool)

(declare-fun tp!66894 () Bool)

(declare-fun tp!66898 () Bool)

(assert (=> b!121825 (= e!69806 (and tp!66894 tp!66898))))

(assert (= (and b!121445 ((_ is ElementMatch!547) (_2!1372 (h!7396 mapDefault!1598)))) b!121824))

(assert (= (and b!121445 ((_ is Concat!931) (_2!1372 (h!7396 mapDefault!1598)))) b!121825))

(assert (= (and b!121445 ((_ is Star!547) (_2!1372 (h!7396 mapDefault!1598)))) b!121826))

(assert (= (and b!121445 ((_ is Union!547) (_2!1372 (h!7396 mapDefault!1598)))) b!121827))

(declare-fun b!121828 () Bool)

(declare-fun tp!66899 () Bool)

(declare-fun e!69807 () Bool)

(declare-fun tp!66900 () Bool)

(declare-fun tp!66901 () Bool)

(assert (=> b!121828 (= e!69807 (and tp!66899 tp_is_empty!1149 tp!66900 tp!66901))))

(assert (=> b!121445 (= tp!66680 e!69807)))

(assert (= (and b!121445 ((_ is Cons!1999) (t!22482 mapDefault!1598))) b!121828))

(check-sat (not b!121493) b_and!6013 (not b!121729) (not b!121713) (not b!121649) (not b!121709) (not b!121678) (not d!28939) (not d!28995) (not b!121605) (not b!121494) (not b!121735) (not b!121685) (not bm!5139) (not b!121695) (not b!121505) (not b!121691) (not bm!5149) (not b!121688) (not b!121780) (not bm!5132) (not b!121821) (not b!121692) (not b!121764) (not mapNonEmpty!1599) (not b!121672) (not b!121727) (not bm!5129) (not bm!5142) (not d!28919) (not b!121486) (not b!121461) (not d!29009) (not bm!5137) (not b!121468) (not b!121704) (not b!121516) (not b!121740) (not b!121542) (not b!121643) (not b!121487) (not b!121496) (not b!121607) (not b!121472) (not b!121776) (not b!121737) (not b!121656) (not b!121675) (not b!121772) (not b!121717) (not b!121774) (not b!121720) (not d!28955) (not b!121768) (not b!121783) (not b_next!3881) (not b!121680) (not b!121791) (not b!121786) (not b!121669) (not b!121687) (not b!121752) (not b!121465) (not bm!5136) (not b!121808) (not b!121795) (not bm!5123) (not b!121693) (not b!121659) (not bm!5156) (not b!121492) (not b!121800) (not b!121609) (not b!121762) (not b!121652) (not b!121708) (not b!121804) (not b!121689) (not b!121739) (not b!121537) (not b!121490) (not d!28999) (not b!121610) (not b!121817) (not d!28981) (not b!121802) (not b!121748) (not d!29007) (not b!121810) (not bm!5126) (not b!121731) (not b!121711) (not b!121484) (not b!121721) (not b!121818) (not b!121758) (not bm!5147) (not b!121511) (not b!121796) (not b!121480) (not b!121753) (not b!121793) (not b!121523) (not b!121749) (not b!121790) tp_is_empty!1149 (not b!121822) b_and!6011 (not b!121733) (not d!28929) (not b!121524) (not b!121453) (not b!121770) (not b!121743) (not b!121651) (not b!121805) (not b!121647) (not bm!5150) (not d!28905) (not b!121828) (not b!121506) (not d!28949) (not b!121765) (not b!121582) (not b!121644) (not b!121825) (not b!121751) (not b!121502) (not b!121655) (not bm!5134) (not b!121536) (not b!121544) (not b!121712) (not d!29005) (not d!28941) (not b!121514) (not b!121744) (not b!121827) (not b!121814) (not b!121799) (not b!121761) (not b!121723) (not b!121551) (not b!121756) (not b!121504) (not b!121755) (not b!121611) (not b!121500) (not b!121580) (not b!121463) (not b!121767) (not b!121660) (not b!121682) (not b!121778) (not b!121673) (not d!28997) (not b!121745) (not b!121784) (not b!121531) (not b!121664) (not d!28951) (not bm!5124) (not b!121699) (not b_next!3883) (not b!121697) (not bm!5133) (not b!121716) (not b!121816) (not b!121705) (not b!121787) (not b!121497) (not b!121540) (not b!121703) (not b!121724) (not b!121719) (not d!28973) (not b!121760) (not b!121667) (not b!121775) (not b!121467) (not b!121823) (not b!121686) (not b!121736) (not b!121471) (not b!121728) (not b!121812) (not b!121618) (not b!121559) (not b!121663) (not b!121766) (not b!121684) (not b!121779) (not b!121819) (not bm!5127) (not b!121792) (not b!121771) (not b!121510) (not b!121538) (not b!121715) (not d!28915) (not b!121732) (not b!121747) (not b!121700) (not b!121508) (not b!121788) (not b!121671) (not d!28947) (not b!121757) (not b!121696) (not b!121809) (not b!121575) (not b!121797) (not b!121681) (not b!121555) (not d!29013) (not b!121566) (not b!121707) (not b!121677) (not b!121801) (not b!121782) (not b!121701) (not bm!5148) (not b!121557) (not b!121725) (not b!121826) (not b!121661) (not bm!5157) (not d!28901) (not d!28903) (not b!121813) (not b!121606) (not b!121676) (not b!121806) (not b!121741))
(check-sat b_and!6011 b_and!6013 (not b_next!3881) (not b_next!3883))
