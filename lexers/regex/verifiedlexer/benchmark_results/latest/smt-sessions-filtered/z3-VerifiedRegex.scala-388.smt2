; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11744 () Bool)

(assert start!11744)

(declare-fun b!115190 () Bool)

(declare-fun b_free!3657 () Bool)

(declare-fun b_next!3657 () Bool)

(assert (=> b!115190 (= b_free!3657 (not b_next!3657))))

(declare-fun tp!62927 () Bool)

(declare-fun b_and!5787 () Bool)

(assert (=> b!115190 (= tp!62927 b_and!5787)))

(declare-fun b!115185 () Bool)

(declare-fun b_free!3659 () Bool)

(declare-fun b_next!3659 () Bool)

(assert (=> b!115185 (= b_free!3659 (not b_next!3659))))

(declare-fun tp!62916 () Bool)

(declare-fun b_and!5789 () Bool)

(assert (=> b!115185 (= tp!62916 b_and!5789)))

(declare-fun b!115182 () Bool)

(declare-fun e!65220 () Bool)

(declare-fun e!65212 () Bool)

(assert (=> b!115182 (= e!65220 e!65212)))

(declare-fun res!54795 () Bool)

(assert (=> b!115182 (=> res!54795 e!65212)))

(declare-fun lt!33726 () Int)

(declare-fun lt!33736 () Int)

(assert (=> b!115182 (= res!54795 (>= lt!33726 lt!33736))))

(declare-datatypes ((Unit!1370 0))(
  ( (Unit!1371) )
))
(declare-fun lt!33737 () Unit!1370)

(declare-fun e!65224 () Unit!1370)

(assert (=> b!115182 (= lt!33737 e!65224)))

(declare-fun c!26530 () Bool)

(assert (=> b!115182 (= c!26530 (= lt!33726 lt!33736))))

(assert (=> b!115182 (<= lt!33726 lt!33736)))

(declare-fun lt!33732 () Unit!1370)

(declare-datatypes ((C!1904 0))(
  ( (C!1905 (val!678 Int)) )
))
(declare-datatypes ((List!1896 0))(
  ( (Nil!1890) (Cons!1890 (h!7287 C!1904) (t!22373 List!1896)) )
))
(declare-fun testedP!367 () List!1896)

(declare-fun totalInput!1363 () List!1896)

(declare-fun lemmaIsPrefixThenSmallerEqSize!9 (List!1896 List!1896) Unit!1370)

(assert (=> b!115182 (= lt!33732 (lemmaIsPrefixThenSmallerEqSize!9 testedP!367 totalInput!1363))))

(declare-fun res!54787 () Bool)

(declare-fun e!65216 () Bool)

(assert (=> start!11744 (=> (not res!54787) (not e!65216))))

(declare-datatypes ((Regex!491 0))(
  ( (ElementMatch!491 (c!26531 C!1904)) (Concat!875 (regOne!1494 Regex!491) (regTwo!1494 Regex!491)) (EmptyExpr!491) (Star!491 (reg!820 Regex!491)) (EmptyLang!491) (Union!491 (regOne!1495 Regex!491) (regTwo!1495 Regex!491)) )
))
(declare-fun r!15532 () Regex!491)

(declare-fun validRegex!100 (Regex!491) Bool)

(assert (=> start!11744 (= res!54787 (validRegex!100 r!15532))))

(assert (=> start!11744 e!65216))

(assert (=> start!11744 true))

(declare-fun e!65226 () Bool)

(assert (=> start!11744 e!65226))

(declare-fun e!65209 () Bool)

(assert (=> start!11744 e!65209))

(declare-fun e!65211 () Bool)

(assert (=> start!11744 e!65211))

(declare-fun e!65210 () Bool)

(assert (=> start!11744 e!65210))

(declare-datatypes ((Hashable!353 0))(
  ( (HashableExt!352 (__x!1996 Int)) )
))
(declare-datatypes ((tuple2!2084 0))(
  ( (tuple2!2085 (_1!1252 Regex!491) (_2!1252 C!1904)) )
))
(declare-datatypes ((tuple2!2086 0))(
  ( (tuple2!2087 (_1!1253 tuple2!2084) (_2!1253 Regex!491)) )
))
(declare-datatypes ((List!1897 0))(
  ( (Nil!1891) (Cons!1891 (h!7288 tuple2!2086) (t!22374 List!1897)) )
))
(declare-datatypes ((array!1279 0))(
  ( (array!1280 (arr!598 (Array (_ BitVec 32) (_ BitVec 64))) (size!1695 (_ BitVec 32))) )
))
(declare-datatypes ((array!1281 0))(
  ( (array!1282 (arr!599 (Array (_ BitVec 32) List!1897)) (size!1696 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!714 0))(
  ( (LongMapFixedSize!715 (defaultEntry!696 Int) (mask!1270 (_ BitVec 32)) (extraKeys!603 (_ BitVec 32)) (zeroValue!613 List!1897) (minValue!613 List!1897) (_size!847 (_ BitVec 32)) (_keys!648 array!1279) (_values!635 array!1281) (_vacant!418 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1417 0))(
  ( (Cell!1418 (v!13245 LongMapFixedSize!714)) )
))
(declare-datatypes ((MutLongMap!357 0))(
  ( (LongMap!357 (underlying!913 Cell!1417)) (MutLongMapExt!356 (__x!1997 Int)) )
))
(declare-datatypes ((Cell!1419 0))(
  ( (Cell!1420 (v!13246 MutLongMap!357)) )
))
(declare-datatypes ((MutableMap!353 0))(
  ( (MutableMapExt!352 (__x!1998 Int)) (HashMap!353 (underlying!914 Cell!1419) (hashF!2229 Hashable!353) (_size!848 (_ BitVec 32)) (defaultValue!502 Int)) )
))
(declare-datatypes ((Cache!142 0))(
  ( (Cache!143 (cache!805 MutableMap!353)) )
))
(declare-fun cache!470 () Cache!142)

(declare-fun e!65208 () Bool)

(declare-fun inv!2401 (Cache!142) Bool)

(assert (=> start!11744 (and (inv!2401 cache!470) e!65208)))

(declare-fun b!115183 () Bool)

(declare-fun tp!62924 () Bool)

(declare-fun tp!62926 () Bool)

(assert (=> b!115183 (= e!65226 (and tp!62924 tp!62926))))

(declare-fun b!115184 () Bool)

(declare-fun res!54789 () Bool)

(assert (=> b!115184 (=> res!54789 e!65220)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!115184 (= res!54789 (= testedPSize!285 totalInputSize!643))))

(declare-fun e!65217 () Bool)

(declare-fun e!65213 () Bool)

(assert (=> b!115185 (= e!65217 (and e!65213 tp!62916))))

(declare-fun b!115186 () Bool)

(declare-fun e!65223 () Bool)

(declare-fun lt!33733 () MutLongMap!357)

(get-info :version)

(assert (=> b!115186 (= e!65213 (and e!65223 ((_ is LongMap!357) lt!33733)))))

(assert (=> b!115186 (= lt!33733 (v!13246 (underlying!914 (cache!805 cache!470))))))

(declare-fun b!115187 () Bool)

(declare-fun e!65207 () Bool)

(declare-fun e!65222 () Bool)

(assert (=> b!115187 (= e!65207 e!65222)))

(declare-fun res!54792 () Bool)

(assert (=> b!115187 (=> (not res!54792) (not e!65222))))

(assert (=> b!115187 (= res!54792 (= testedPSize!285 lt!33726))))

(declare-fun size!1697 (List!1896) Int)

(assert (=> b!115187 (= lt!33726 (size!1697 testedP!367))))

(declare-fun b!115188 () Bool)

(declare-fun tp_is_empty!1037 () Bool)

(declare-fun tp!62922 () Bool)

(assert (=> b!115188 (= e!65209 (and tp_is_empty!1037 tp!62922))))

(declare-fun b!115189 () Bool)

(declare-fun Unit!1372 () Unit!1370)

(assert (=> b!115189 (= e!65224 Unit!1372)))

(declare-fun e!65221 () Bool)

(declare-fun tp!62925 () Bool)

(declare-fun tp!62917 () Bool)

(declare-fun e!65219 () Bool)

(declare-fun array_inv!425 (array!1279) Bool)

(declare-fun array_inv!426 (array!1281) Bool)

(assert (=> b!115190 (= e!65219 (and tp!62927 tp!62925 tp!62917 (array_inv!425 (_keys!648 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470))))))) (array_inv!426 (_values!635 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470))))))) e!65221))))

(declare-fun mapIsEmpty!1390 () Bool)

(declare-fun mapRes!1390 () Bool)

(assert (=> mapIsEmpty!1390 mapRes!1390))

(declare-fun b!115191 () Bool)

(declare-fun tp!62928 () Bool)

(assert (=> b!115191 (= e!65211 (and tp_is_empty!1037 tp!62928))))

(declare-fun b!115192 () Bool)

(assert (=> b!115192 (= e!65216 e!65207)))

(declare-fun res!54793 () Bool)

(assert (=> b!115192 (=> (not res!54793) (not e!65207))))

(declare-fun lt!33730 () List!1896)

(assert (=> b!115192 (= res!54793 (= lt!33730 totalInput!1363))))

(declare-fun testedSuffix!285 () List!1896)

(declare-fun ++!332 (List!1896 List!1896) List!1896)

(assert (=> b!115192 (= lt!33730 (++!332 testedP!367 testedSuffix!285))))

(declare-fun b!115193 () Bool)

(declare-fun tp!62923 () Bool)

(declare-fun tp!62914 () Bool)

(assert (=> b!115193 (= e!65226 (and tp!62923 tp!62914))))

(declare-fun b!115194 () Bool)

(declare-fun e!65225 () Bool)

(assert (=> b!115194 (= e!65225 e!65219)))

(declare-fun b!115195 () Bool)

(declare-fun tp!62921 () Bool)

(assert (=> b!115195 (= e!65221 (and tp!62921 mapRes!1390))))

(declare-fun condMapEmpty!1390 () Bool)

(declare-fun mapDefault!1390 () List!1897)

(assert (=> b!115195 (= condMapEmpty!1390 (= (arr!599 (_values!635 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470))))))) ((as const (Array (_ BitVec 32) List!1897)) mapDefault!1390)))))

(declare-fun b!115196 () Bool)

(declare-fun e!65214 () Bool)

(assert (=> b!115196 (= e!65222 e!65214)))

(declare-fun res!54794 () Bool)

(assert (=> b!115196 (=> (not res!54794) (not e!65214))))

(assert (=> b!115196 (= res!54794 (= totalInputSize!643 lt!33736))))

(assert (=> b!115196 (= lt!33736 (size!1697 totalInput!1363))))

(declare-fun b!115197 () Bool)

(assert (=> b!115197 (= e!65226 tp_is_empty!1037)))

(declare-fun b!115198 () Bool)

(declare-fun e!65215 () Bool)

(assert (=> b!115198 (= e!65215 e!65220)))

(declare-fun res!54791 () Bool)

(assert (=> b!115198 (=> res!54791 e!65220)))

(declare-fun lostCause!36 (Regex!491) Bool)

(assert (=> b!115198 (= res!54791 (lostCause!36 r!15532))))

(declare-fun lt!33727 () List!1896)

(assert (=> b!115198 (and (= testedSuffix!285 lt!33727) (= lt!33727 testedSuffix!285))))

(declare-fun lt!33729 () Unit!1370)

(declare-fun lemmaSamePrefixThenSameSuffix!24 (List!1896 List!1896 List!1896 List!1896 List!1896) Unit!1370)

(assert (=> b!115198 (= lt!33729 (lemmaSamePrefixThenSameSuffix!24 testedP!367 testedSuffix!285 testedP!367 lt!33727 totalInput!1363))))

(declare-fun getSuffix!25 (List!1896 List!1896) List!1896)

(assert (=> b!115198 (= lt!33727 (getSuffix!25 totalInput!1363 testedP!367))))

(declare-fun mapNonEmpty!1390 () Bool)

(declare-fun tp!62919 () Bool)

(declare-fun tp!62915 () Bool)

(assert (=> mapNonEmpty!1390 (= mapRes!1390 (and tp!62919 tp!62915))))

(declare-fun mapRest!1390 () (Array (_ BitVec 32) List!1897))

(declare-fun mapValue!1390 () List!1897)

(declare-fun mapKey!1390 () (_ BitVec 32))

(assert (=> mapNonEmpty!1390 (= (arr!599 (_values!635 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470))))))) (store mapRest!1390 mapKey!1390 mapValue!1390))))

(declare-fun b!115199 () Bool)

(assert (=> b!115199 (= e!65214 (not e!65215))))

(declare-fun res!54788 () Bool)

(assert (=> b!115199 (=> res!54788 e!65215)))

(declare-fun isPrefix!79 (List!1896 List!1896) Bool)

(assert (=> b!115199 (= res!54788 (not (isPrefix!79 testedP!367 totalInput!1363)))))

(assert (=> b!115199 (isPrefix!79 testedP!367 lt!33730)))

(declare-fun lt!33738 () Unit!1370)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!27 (List!1896 List!1896) Unit!1370)

(assert (=> b!115199 (= lt!33738 (lemmaConcatTwoListThenFirstIsPrefix!27 testedP!367 testedSuffix!285))))

(declare-fun b!115200 () Bool)

(declare-fun Unit!1373 () Unit!1370)

(assert (=> b!115200 (= e!65224 Unit!1373)))

(declare-fun lt!33731 () Unit!1370)

(declare-fun lemmaIsPrefixRefl!63 (List!1896 List!1896) Unit!1370)

(assert (=> b!115200 (= lt!33731 (lemmaIsPrefixRefl!63 totalInput!1363 totalInput!1363))))

(assert (=> b!115200 (isPrefix!79 totalInput!1363 totalInput!1363)))

(declare-fun lt!33728 () Unit!1370)

(declare-fun lemmaIsPrefixSameLengthThenSameList!9 (List!1896 List!1896 List!1896) Unit!1370)

(assert (=> b!115200 (= lt!33728 (lemmaIsPrefixSameLengthThenSameList!9 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!115200 false))

(declare-fun b!115201 () Bool)

(declare-fun tp!62920 () Bool)

(assert (=> b!115201 (= e!65226 tp!62920)))

(declare-fun b!115202 () Bool)

(assert (=> b!115202 (= e!65208 e!65217)))

(declare-fun b!115203 () Bool)

(declare-fun res!54790 () Bool)

(assert (=> b!115203 (=> (not res!54790) (not e!65216))))

(declare-fun valid!326 (Cache!142) Bool)

(assert (=> b!115203 (= res!54790 (valid!326 cache!470))))

(declare-fun b!115204 () Bool)

(declare-fun tp!62918 () Bool)

(assert (=> b!115204 (= e!65210 (and tp_is_empty!1037 tp!62918))))

(declare-fun b!115205 () Bool)

(assert (=> b!115205 (= e!65212 (not (= testedSuffix!285 Nil!1890)))))

(declare-fun head!474 (List!1896) C!1904)

(assert (=> b!115205 (isPrefix!79 (++!332 testedP!367 (Cons!1890 (head!474 lt!33727) Nil!1890)) totalInput!1363)))

(declare-fun lt!33735 () Unit!1370)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!4 (List!1896 List!1896) Unit!1370)

(assert (=> b!115205 (= lt!33735 (lemmaAddHeadSuffixToPrefixStillPrefix!4 testedP!367 totalInput!1363))))

(declare-fun lt!33734 () List!1896)

(assert (=> b!115205 (= lt!33734 (++!332 testedP!367 (Cons!1890 (head!474 testedSuffix!285) Nil!1890)))))

(declare-fun b!115206 () Bool)

(assert (=> b!115206 (= e!65223 e!65225)))

(assert (= (and start!11744 res!54787) b!115203))

(assert (= (and b!115203 res!54790) b!115192))

(assert (= (and b!115192 res!54793) b!115187))

(assert (= (and b!115187 res!54792) b!115196))

(assert (= (and b!115196 res!54794) b!115199))

(assert (= (and b!115199 (not res!54788)) b!115198))

(assert (= (and b!115198 (not res!54791)) b!115184))

(assert (= (and b!115184 (not res!54789)) b!115182))

(assert (= (and b!115182 c!26530) b!115200))

(assert (= (and b!115182 (not c!26530)) b!115189))

(assert (= (and b!115182 (not res!54795)) b!115205))

(assert (= (and start!11744 ((_ is ElementMatch!491) r!15532)) b!115197))

(assert (= (and start!11744 ((_ is Concat!875) r!15532)) b!115183))

(assert (= (and start!11744 ((_ is Star!491) r!15532)) b!115201))

(assert (= (and start!11744 ((_ is Union!491) r!15532)) b!115193))

(assert (= (and start!11744 ((_ is Cons!1890) totalInput!1363)) b!115188))

(assert (= (and start!11744 ((_ is Cons!1890) testedSuffix!285)) b!115191))

(assert (= (and start!11744 ((_ is Cons!1890) testedP!367)) b!115204))

(assert (= (and b!115195 condMapEmpty!1390) mapIsEmpty!1390))

(assert (= (and b!115195 (not condMapEmpty!1390)) mapNonEmpty!1390))

(assert (= b!115190 b!115195))

(assert (= b!115194 b!115190))

(assert (= b!115206 b!115194))

(assert (= (and b!115186 ((_ is LongMap!357) (v!13246 (underlying!914 (cache!805 cache!470))))) b!115206))

(assert (= b!115185 b!115186))

(assert (= (and b!115202 ((_ is HashMap!353) (cache!805 cache!470))) b!115185))

(assert (= start!11744 b!115202))

(declare-fun m!103672 () Bool)

(assert (=> b!115205 m!103672))

(declare-fun m!103674 () Bool)

(assert (=> b!115205 m!103674))

(assert (=> b!115205 m!103672))

(declare-fun m!103676 () Bool)

(assert (=> b!115205 m!103676))

(declare-fun m!103678 () Bool)

(assert (=> b!115205 m!103678))

(declare-fun m!103680 () Bool)

(assert (=> b!115205 m!103680))

(declare-fun m!103682 () Bool)

(assert (=> b!115205 m!103682))

(declare-fun m!103684 () Bool)

(assert (=> start!11744 m!103684))

(declare-fun m!103686 () Bool)

(assert (=> start!11744 m!103686))

(declare-fun m!103688 () Bool)

(assert (=> b!115200 m!103688))

(declare-fun m!103690 () Bool)

(assert (=> b!115200 m!103690))

(declare-fun m!103692 () Bool)

(assert (=> b!115200 m!103692))

(declare-fun m!103694 () Bool)

(assert (=> b!115198 m!103694))

(declare-fun m!103696 () Bool)

(assert (=> b!115198 m!103696))

(declare-fun m!103698 () Bool)

(assert (=> b!115198 m!103698))

(declare-fun m!103700 () Bool)

(assert (=> b!115187 m!103700))

(declare-fun m!103702 () Bool)

(assert (=> b!115182 m!103702))

(declare-fun m!103704 () Bool)

(assert (=> b!115196 m!103704))

(declare-fun m!103706 () Bool)

(assert (=> b!115192 m!103706))

(declare-fun m!103708 () Bool)

(assert (=> mapNonEmpty!1390 m!103708))

(declare-fun m!103710 () Bool)

(assert (=> b!115190 m!103710))

(declare-fun m!103712 () Bool)

(assert (=> b!115190 m!103712))

(declare-fun m!103714 () Bool)

(assert (=> b!115203 m!103714))

(declare-fun m!103716 () Bool)

(assert (=> b!115199 m!103716))

(declare-fun m!103718 () Bool)

(assert (=> b!115199 m!103718))

(declare-fun m!103720 () Bool)

(assert (=> b!115199 m!103720))

(check-sat (not b!115200) (not b!115188) (not b!115190) (not b!115201) b_and!5789 (not mapNonEmpty!1390) (not b!115183) (not b_next!3659) (not b!115182) (not b!115205) (not b!115195) (not start!11744) (not b!115196) (not b!115204) (not b!115203) (not b!115198) (not b!115193) (not b!115191) tp_is_empty!1037 (not b!115192) (not b!115199) (not b_next!3657) (not b!115187) b_and!5787)
(check-sat b_and!5789 b_and!5787 (not b_next!3659) (not b_next!3657))
(get-model)

(declare-fun d!28239 () Bool)

(declare-fun lt!33741 () Int)

(assert (=> d!28239 (>= lt!33741 0)))

(declare-fun e!65229 () Int)

(assert (=> d!28239 (= lt!33741 e!65229)))

(declare-fun c!26534 () Bool)

(assert (=> d!28239 (= c!26534 ((_ is Nil!1890) totalInput!1363))))

(assert (=> d!28239 (= (size!1697 totalInput!1363) lt!33741)))

(declare-fun b!115211 () Bool)

(assert (=> b!115211 (= e!65229 0)))

(declare-fun b!115212 () Bool)

(assert (=> b!115212 (= e!65229 (+ 1 (size!1697 (t!22373 totalInput!1363))))))

(assert (= (and d!28239 c!26534) b!115211))

(assert (= (and d!28239 (not c!26534)) b!115212))

(declare-fun m!103722 () Bool)

(assert (=> b!115212 m!103722))

(assert (=> b!115196 d!28239))

(declare-fun d!28241 () Bool)

(assert (=> d!28241 (isPrefix!79 totalInput!1363 totalInput!1363)))

(declare-fun lt!33744 () Unit!1370)

(declare-fun choose!1515 (List!1896 List!1896) Unit!1370)

(assert (=> d!28241 (= lt!33744 (choose!1515 totalInput!1363 totalInput!1363))))

(assert (=> d!28241 (= (lemmaIsPrefixRefl!63 totalInput!1363 totalInput!1363) lt!33744)))

(declare-fun bs!11811 () Bool)

(assert (= bs!11811 d!28241))

(assert (=> bs!11811 m!103690))

(declare-fun m!103724 () Bool)

(assert (=> bs!11811 m!103724))

(assert (=> b!115200 d!28241))

(declare-fun d!28243 () Bool)

(declare-fun e!65236 () Bool)

(assert (=> d!28243 e!65236))

(declare-fun res!54807 () Bool)

(assert (=> d!28243 (=> res!54807 e!65236)))

(declare-fun lt!33747 () Bool)

(assert (=> d!28243 (= res!54807 (not lt!33747))))

(declare-fun e!65237 () Bool)

(assert (=> d!28243 (= lt!33747 e!65237)))

(declare-fun res!54806 () Bool)

(assert (=> d!28243 (=> res!54806 e!65237)))

(assert (=> d!28243 (= res!54806 ((_ is Nil!1890) totalInput!1363))))

(assert (=> d!28243 (= (isPrefix!79 totalInput!1363 totalInput!1363) lt!33747)))

(declare-fun b!115223 () Bool)

(declare-fun e!65238 () Bool)

(declare-fun tail!210 (List!1896) List!1896)

(assert (=> b!115223 (= e!65238 (isPrefix!79 (tail!210 totalInput!1363) (tail!210 totalInput!1363)))))

(declare-fun b!115222 () Bool)

(declare-fun res!54804 () Bool)

(assert (=> b!115222 (=> (not res!54804) (not e!65238))))

(assert (=> b!115222 (= res!54804 (= (head!474 totalInput!1363) (head!474 totalInput!1363)))))

(declare-fun b!115224 () Bool)

(assert (=> b!115224 (= e!65236 (>= (size!1697 totalInput!1363) (size!1697 totalInput!1363)))))

(declare-fun b!115221 () Bool)

(assert (=> b!115221 (= e!65237 e!65238)))

(declare-fun res!54805 () Bool)

(assert (=> b!115221 (=> (not res!54805) (not e!65238))))

(assert (=> b!115221 (= res!54805 (not ((_ is Nil!1890) totalInput!1363)))))

(assert (= (and d!28243 (not res!54806)) b!115221))

(assert (= (and b!115221 res!54805) b!115222))

(assert (= (and b!115222 res!54804) b!115223))

(assert (= (and d!28243 (not res!54807)) b!115224))

(declare-fun m!103726 () Bool)

(assert (=> b!115223 m!103726))

(assert (=> b!115223 m!103726))

(assert (=> b!115223 m!103726))

(assert (=> b!115223 m!103726))

(declare-fun m!103728 () Bool)

(assert (=> b!115223 m!103728))

(declare-fun m!103730 () Bool)

(assert (=> b!115222 m!103730))

(assert (=> b!115222 m!103730))

(assert (=> b!115224 m!103704))

(assert (=> b!115224 m!103704))

(assert (=> b!115200 d!28243))

(declare-fun d!28245 () Bool)

(assert (=> d!28245 (= totalInput!1363 testedP!367)))

(declare-fun lt!33750 () Unit!1370)

(declare-fun choose!1516 (List!1896 List!1896 List!1896) Unit!1370)

(assert (=> d!28245 (= lt!33750 (choose!1516 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28245 (isPrefix!79 totalInput!1363 totalInput!1363)))

(assert (=> d!28245 (= (lemmaIsPrefixSameLengthThenSameList!9 totalInput!1363 testedP!367 totalInput!1363) lt!33750)))

(declare-fun bs!11812 () Bool)

(assert (= bs!11812 d!28245))

(declare-fun m!103732 () Bool)

(assert (=> bs!11812 m!103732))

(assert (=> bs!11812 m!103690))

(assert (=> b!115200 d!28245))

(declare-fun d!28247 () Bool)

(declare-fun lt!33751 () Int)

(assert (=> d!28247 (>= lt!33751 0)))

(declare-fun e!65239 () Int)

(assert (=> d!28247 (= lt!33751 e!65239)))

(declare-fun c!26535 () Bool)

(assert (=> d!28247 (= c!26535 ((_ is Nil!1890) testedP!367))))

(assert (=> d!28247 (= (size!1697 testedP!367) lt!33751)))

(declare-fun b!115225 () Bool)

(assert (=> b!115225 (= e!65239 0)))

(declare-fun b!115226 () Bool)

(assert (=> b!115226 (= e!65239 (+ 1 (size!1697 (t!22373 testedP!367))))))

(assert (= (and d!28247 c!26535) b!115225))

(assert (= (and d!28247 (not c!26535)) b!115226))

(declare-fun m!103734 () Bool)

(assert (=> b!115226 m!103734))

(assert (=> b!115187 d!28247))

(declare-fun e!65244 () Bool)

(declare-fun b!115238 () Bool)

(declare-fun lt!33754 () List!1896)

(assert (=> b!115238 (= e!65244 (or (not (= testedSuffix!285 Nil!1890)) (= lt!33754 testedP!367)))))

(declare-fun d!28249 () Bool)

(assert (=> d!28249 e!65244))

(declare-fun res!54813 () Bool)

(assert (=> d!28249 (=> (not res!54813) (not e!65244))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!213 (List!1896) (InoxSet C!1904))

(assert (=> d!28249 (= res!54813 (= (content!213 lt!33754) ((_ map or) (content!213 testedP!367) (content!213 testedSuffix!285))))))

(declare-fun e!65245 () List!1896)

(assert (=> d!28249 (= lt!33754 e!65245)))

(declare-fun c!26538 () Bool)

(assert (=> d!28249 (= c!26538 ((_ is Nil!1890) testedP!367))))

(assert (=> d!28249 (= (++!332 testedP!367 testedSuffix!285) lt!33754)))

(declare-fun b!115235 () Bool)

(assert (=> b!115235 (= e!65245 testedSuffix!285)))

(declare-fun b!115236 () Bool)

(assert (=> b!115236 (= e!65245 (Cons!1890 (h!7287 testedP!367) (++!332 (t!22373 testedP!367) testedSuffix!285)))))

(declare-fun b!115237 () Bool)

(declare-fun res!54812 () Bool)

(assert (=> b!115237 (=> (not res!54812) (not e!65244))))

(assert (=> b!115237 (= res!54812 (= (size!1697 lt!33754) (+ (size!1697 testedP!367) (size!1697 testedSuffix!285))))))

(assert (= (and d!28249 c!26538) b!115235))

(assert (= (and d!28249 (not c!26538)) b!115236))

(assert (= (and d!28249 res!54813) b!115237))

(assert (= (and b!115237 res!54812) b!115238))

(declare-fun m!103736 () Bool)

(assert (=> d!28249 m!103736))

(declare-fun m!103738 () Bool)

(assert (=> d!28249 m!103738))

(declare-fun m!103740 () Bool)

(assert (=> d!28249 m!103740))

(declare-fun m!103742 () Bool)

(assert (=> b!115236 m!103742))

(declare-fun m!103744 () Bool)

(assert (=> b!115237 m!103744))

(assert (=> b!115237 m!103700))

(declare-fun m!103746 () Bool)

(assert (=> b!115237 m!103746))

(assert (=> b!115192 d!28249))

(declare-fun d!28251 () Bool)

(assert (=> d!28251 (<= (size!1697 testedP!367) (size!1697 totalInput!1363))))

(declare-fun lt!33757 () Unit!1370)

(declare-fun choose!1517 (List!1896 List!1896) Unit!1370)

(assert (=> d!28251 (= lt!33757 (choose!1517 testedP!367 totalInput!1363))))

(assert (=> d!28251 (isPrefix!79 testedP!367 totalInput!1363)))

(assert (=> d!28251 (= (lemmaIsPrefixThenSmallerEqSize!9 testedP!367 totalInput!1363) lt!33757)))

(declare-fun bs!11813 () Bool)

(assert (= bs!11813 d!28251))

(assert (=> bs!11813 m!103700))

(assert (=> bs!11813 m!103704))

(declare-fun m!103748 () Bool)

(assert (=> bs!11813 m!103748))

(assert (=> bs!11813 m!103716))

(assert (=> b!115182 d!28251))

(declare-fun d!28253 () Bool)

(declare-fun lostCauseFct!20 (Regex!491) Bool)

(assert (=> d!28253 (= (lostCause!36 r!15532) (lostCauseFct!20 r!15532))))

(declare-fun bs!11814 () Bool)

(assert (= bs!11814 d!28253))

(declare-fun m!103750 () Bool)

(assert (=> bs!11814 m!103750))

(assert (=> b!115198 d!28253))

(declare-fun d!28255 () Bool)

(assert (=> d!28255 (= testedSuffix!285 lt!33727)))

(declare-fun lt!33760 () Unit!1370)

(declare-fun choose!1518 (List!1896 List!1896 List!1896 List!1896 List!1896) Unit!1370)

(assert (=> d!28255 (= lt!33760 (choose!1518 testedP!367 testedSuffix!285 testedP!367 lt!33727 totalInput!1363))))

(assert (=> d!28255 (isPrefix!79 testedP!367 totalInput!1363)))

(assert (=> d!28255 (= (lemmaSamePrefixThenSameSuffix!24 testedP!367 testedSuffix!285 testedP!367 lt!33727 totalInput!1363) lt!33760)))

(declare-fun bs!11815 () Bool)

(assert (= bs!11815 d!28255))

(declare-fun m!103752 () Bool)

(assert (=> bs!11815 m!103752))

(assert (=> bs!11815 m!103716))

(assert (=> b!115198 d!28255))

(declare-fun d!28257 () Bool)

(declare-fun lt!33763 () List!1896)

(assert (=> d!28257 (= (++!332 testedP!367 lt!33763) totalInput!1363)))

(declare-fun e!65248 () List!1896)

(assert (=> d!28257 (= lt!33763 e!65248)))

(declare-fun c!26541 () Bool)

(assert (=> d!28257 (= c!26541 ((_ is Cons!1890) testedP!367))))

(assert (=> d!28257 (>= (size!1697 totalInput!1363) (size!1697 testedP!367))))

(assert (=> d!28257 (= (getSuffix!25 totalInput!1363 testedP!367) lt!33763)))

(declare-fun b!115243 () Bool)

(assert (=> b!115243 (= e!65248 (getSuffix!25 (tail!210 totalInput!1363) (t!22373 testedP!367)))))

(declare-fun b!115244 () Bool)

(assert (=> b!115244 (= e!65248 totalInput!1363)))

(assert (= (and d!28257 c!26541) b!115243))

(assert (= (and d!28257 (not c!26541)) b!115244))

(declare-fun m!103754 () Bool)

(assert (=> d!28257 m!103754))

(assert (=> d!28257 m!103704))

(assert (=> d!28257 m!103700))

(assert (=> b!115243 m!103726))

(assert (=> b!115243 m!103726))

(declare-fun m!103756 () Bool)

(assert (=> b!115243 m!103756))

(assert (=> b!115198 d!28257))

(declare-fun d!28259 () Bool)

(declare-fun validCacheMap!15 (MutableMap!353) Bool)

(assert (=> d!28259 (= (valid!326 cache!470) (validCacheMap!15 (cache!805 cache!470)))))

(declare-fun bs!11816 () Bool)

(assert (= bs!11816 d!28259))

(declare-fun m!103758 () Bool)

(assert (=> bs!11816 m!103758))

(assert (=> b!115203 d!28259))

(declare-fun bm!4880 () Bool)

(declare-fun call!4885 () Bool)

(declare-fun c!26547 () Bool)

(assert (=> bm!4880 (= call!4885 (validRegex!100 (ite c!26547 (regOne!1495 r!15532) (regTwo!1494 r!15532))))))

(declare-fun b!115263 () Bool)

(declare-fun e!65266 () Bool)

(declare-fun e!65269 () Bool)

(assert (=> b!115263 (= e!65266 e!65269)))

(assert (=> b!115263 (= c!26547 ((_ is Union!491) r!15532))))

(declare-fun c!26546 () Bool)

(declare-fun call!4887 () Bool)

(declare-fun bm!4881 () Bool)

(assert (=> bm!4881 (= call!4887 (validRegex!100 (ite c!26546 (reg!820 r!15532) (ite c!26547 (regTwo!1495 r!15532) (regOne!1494 r!15532)))))))

(declare-fun b!115264 () Bool)

(declare-fun res!54827 () Bool)

(declare-fun e!65267 () Bool)

(assert (=> b!115264 (=> res!54827 e!65267)))

(assert (=> b!115264 (= res!54827 (not ((_ is Concat!875) r!15532)))))

(assert (=> b!115264 (= e!65269 e!65267)))

(declare-fun b!115265 () Bool)

(declare-fun e!65268 () Bool)

(assert (=> b!115265 (= e!65266 e!65268)))

(declare-fun res!54828 () Bool)

(declare-fun nullable!61 (Regex!491) Bool)

(assert (=> b!115265 (= res!54828 (not (nullable!61 (reg!820 r!15532))))))

(assert (=> b!115265 (=> (not res!54828) (not e!65268))))

(declare-fun b!115266 () Bool)

(declare-fun e!65264 () Bool)

(assert (=> b!115266 (= e!65264 e!65266)))

(assert (=> b!115266 (= c!26546 ((_ is Star!491) r!15532))))

(declare-fun bm!4882 () Bool)

(declare-fun call!4886 () Bool)

(assert (=> bm!4882 (= call!4886 call!4887)))

(declare-fun b!115267 () Bool)

(assert (=> b!115267 (= e!65268 call!4887)))

(declare-fun b!115268 () Bool)

(declare-fun e!65263 () Bool)

(assert (=> b!115268 (= e!65267 e!65263)))

(declare-fun res!54826 () Bool)

(assert (=> b!115268 (=> (not res!54826) (not e!65263))))

(assert (=> b!115268 (= res!54826 call!4886)))

(declare-fun b!115269 () Bool)

(assert (=> b!115269 (= e!65263 call!4885)))

(declare-fun b!115270 () Bool)

(declare-fun e!65265 () Bool)

(assert (=> b!115270 (= e!65265 call!4886)))

(declare-fun d!28261 () Bool)

(declare-fun res!54824 () Bool)

(assert (=> d!28261 (=> res!54824 e!65264)))

(assert (=> d!28261 (= res!54824 ((_ is ElementMatch!491) r!15532))))

(assert (=> d!28261 (= (validRegex!100 r!15532) e!65264)))

(declare-fun b!115271 () Bool)

(declare-fun res!54825 () Bool)

(assert (=> b!115271 (=> (not res!54825) (not e!65265))))

(assert (=> b!115271 (= res!54825 call!4885)))

(assert (=> b!115271 (= e!65269 e!65265)))

(assert (= (and d!28261 (not res!54824)) b!115266))

(assert (= (and b!115266 c!26546) b!115265))

(assert (= (and b!115266 (not c!26546)) b!115263))

(assert (= (and b!115265 res!54828) b!115267))

(assert (= (and b!115263 c!26547) b!115271))

(assert (= (and b!115263 (not c!26547)) b!115264))

(assert (= (and b!115271 res!54825) b!115270))

(assert (= (and b!115264 (not res!54827)) b!115268))

(assert (= (and b!115268 res!54826) b!115269))

(assert (= (or b!115270 b!115268) bm!4882))

(assert (= (or b!115271 b!115269) bm!4880))

(assert (= (or b!115267 bm!4882) bm!4881))

(declare-fun m!103760 () Bool)

(assert (=> bm!4880 m!103760))

(declare-fun m!103762 () Bool)

(assert (=> bm!4881 m!103762))

(declare-fun m!103764 () Bool)

(assert (=> b!115265 m!103764))

(assert (=> start!11744 d!28261))

(declare-fun d!28263 () Bool)

(declare-fun res!54831 () Bool)

(declare-fun e!65272 () Bool)

(assert (=> d!28263 (=> (not res!54831) (not e!65272))))

(assert (=> d!28263 (= res!54831 ((_ is HashMap!353) (cache!805 cache!470)))))

(assert (=> d!28263 (= (inv!2401 cache!470) e!65272)))

(declare-fun b!115274 () Bool)

(assert (=> b!115274 (= e!65272 (validCacheMap!15 (cache!805 cache!470)))))

(assert (= (and d!28263 res!54831) b!115274))

(assert (=> b!115274 m!103758))

(assert (=> start!11744 d!28263))

(declare-fun d!28265 () Bool)

(declare-fun e!65273 () Bool)

(assert (=> d!28265 e!65273))

(declare-fun res!54835 () Bool)

(assert (=> d!28265 (=> res!54835 e!65273)))

(declare-fun lt!33764 () Bool)

(assert (=> d!28265 (= res!54835 (not lt!33764))))

(declare-fun e!65274 () Bool)

(assert (=> d!28265 (= lt!33764 e!65274)))

(declare-fun res!54834 () Bool)

(assert (=> d!28265 (=> res!54834 e!65274)))

(assert (=> d!28265 (= res!54834 ((_ is Nil!1890) testedP!367))))

(assert (=> d!28265 (= (isPrefix!79 testedP!367 totalInput!1363) lt!33764)))

(declare-fun b!115277 () Bool)

(declare-fun e!65275 () Bool)

(assert (=> b!115277 (= e!65275 (isPrefix!79 (tail!210 testedP!367) (tail!210 totalInput!1363)))))

(declare-fun b!115276 () Bool)

(declare-fun res!54832 () Bool)

(assert (=> b!115276 (=> (not res!54832) (not e!65275))))

(assert (=> b!115276 (= res!54832 (= (head!474 testedP!367) (head!474 totalInput!1363)))))

(declare-fun b!115278 () Bool)

(assert (=> b!115278 (= e!65273 (>= (size!1697 totalInput!1363) (size!1697 testedP!367)))))

(declare-fun b!115275 () Bool)

(assert (=> b!115275 (= e!65274 e!65275)))

(declare-fun res!54833 () Bool)

(assert (=> b!115275 (=> (not res!54833) (not e!65275))))

(assert (=> b!115275 (= res!54833 (not ((_ is Nil!1890) totalInput!1363)))))

(assert (= (and d!28265 (not res!54834)) b!115275))

(assert (= (and b!115275 res!54833) b!115276))

(assert (= (and b!115276 res!54832) b!115277))

(assert (= (and d!28265 (not res!54835)) b!115278))

(declare-fun m!103766 () Bool)

(assert (=> b!115277 m!103766))

(assert (=> b!115277 m!103726))

(assert (=> b!115277 m!103766))

(assert (=> b!115277 m!103726))

(declare-fun m!103768 () Bool)

(assert (=> b!115277 m!103768))

(declare-fun m!103770 () Bool)

(assert (=> b!115276 m!103770))

(assert (=> b!115276 m!103730))

(assert (=> b!115278 m!103704))

(assert (=> b!115278 m!103700))

(assert (=> b!115199 d!28265))

(declare-fun d!28267 () Bool)

(declare-fun e!65276 () Bool)

(assert (=> d!28267 e!65276))

(declare-fun res!54839 () Bool)

(assert (=> d!28267 (=> res!54839 e!65276)))

(declare-fun lt!33765 () Bool)

(assert (=> d!28267 (= res!54839 (not lt!33765))))

(declare-fun e!65277 () Bool)

(assert (=> d!28267 (= lt!33765 e!65277)))

(declare-fun res!54838 () Bool)

(assert (=> d!28267 (=> res!54838 e!65277)))

(assert (=> d!28267 (= res!54838 ((_ is Nil!1890) testedP!367))))

(assert (=> d!28267 (= (isPrefix!79 testedP!367 lt!33730) lt!33765)))

(declare-fun b!115281 () Bool)

(declare-fun e!65278 () Bool)

(assert (=> b!115281 (= e!65278 (isPrefix!79 (tail!210 testedP!367) (tail!210 lt!33730)))))

(declare-fun b!115280 () Bool)

(declare-fun res!54836 () Bool)

(assert (=> b!115280 (=> (not res!54836) (not e!65278))))

(assert (=> b!115280 (= res!54836 (= (head!474 testedP!367) (head!474 lt!33730)))))

(declare-fun b!115282 () Bool)

(assert (=> b!115282 (= e!65276 (>= (size!1697 lt!33730) (size!1697 testedP!367)))))

(declare-fun b!115279 () Bool)

(assert (=> b!115279 (= e!65277 e!65278)))

(declare-fun res!54837 () Bool)

(assert (=> b!115279 (=> (not res!54837) (not e!65278))))

(assert (=> b!115279 (= res!54837 (not ((_ is Nil!1890) lt!33730)))))

(assert (= (and d!28267 (not res!54838)) b!115279))

(assert (= (and b!115279 res!54837) b!115280))

(assert (= (and b!115280 res!54836) b!115281))

(assert (= (and d!28267 (not res!54839)) b!115282))

(assert (=> b!115281 m!103766))

(declare-fun m!103772 () Bool)

(assert (=> b!115281 m!103772))

(assert (=> b!115281 m!103766))

(assert (=> b!115281 m!103772))

(declare-fun m!103774 () Bool)

(assert (=> b!115281 m!103774))

(assert (=> b!115280 m!103770))

(declare-fun m!103776 () Bool)

(assert (=> b!115280 m!103776))

(declare-fun m!103778 () Bool)

(assert (=> b!115282 m!103778))

(assert (=> b!115282 m!103700))

(assert (=> b!115199 d!28267))

(declare-fun d!28269 () Bool)

(assert (=> d!28269 (isPrefix!79 testedP!367 (++!332 testedP!367 testedSuffix!285))))

(declare-fun lt!33768 () Unit!1370)

(declare-fun choose!1519 (List!1896 List!1896) Unit!1370)

(assert (=> d!28269 (= lt!33768 (choose!1519 testedP!367 testedSuffix!285))))

(assert (=> d!28269 (= (lemmaConcatTwoListThenFirstIsPrefix!27 testedP!367 testedSuffix!285) lt!33768)))

(declare-fun bs!11817 () Bool)

(assert (= bs!11817 d!28269))

(assert (=> bs!11817 m!103706))

(assert (=> bs!11817 m!103706))

(declare-fun m!103780 () Bool)

(assert (=> bs!11817 m!103780))

(declare-fun m!103782 () Bool)

(assert (=> bs!11817 m!103782))

(assert (=> b!115199 d!28269))

(declare-fun d!28271 () Bool)

(assert (=> d!28271 (= (array_inv!425 (_keys!648 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470))))))) (bvsge (size!1695 (_keys!648 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!115190 d!28271))

(declare-fun d!28273 () Bool)

(assert (=> d!28273 (= (array_inv!426 (_values!635 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470))))))) (bvsge (size!1696 (_values!635 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!115190 d!28273))

(declare-fun d!28275 () Bool)

(assert (=> d!28275 (= (head!474 testedSuffix!285) (h!7287 testedSuffix!285))))

(assert (=> b!115205 d!28275))

(declare-fun lt!33769 () List!1896)

(declare-fun b!115286 () Bool)

(declare-fun e!65279 () Bool)

(assert (=> b!115286 (= e!65279 (or (not (= (Cons!1890 (head!474 testedSuffix!285) Nil!1890) Nil!1890)) (= lt!33769 testedP!367)))))

(declare-fun d!28277 () Bool)

(assert (=> d!28277 e!65279))

(declare-fun res!54841 () Bool)

(assert (=> d!28277 (=> (not res!54841) (not e!65279))))

(assert (=> d!28277 (= res!54841 (= (content!213 lt!33769) ((_ map or) (content!213 testedP!367) (content!213 (Cons!1890 (head!474 testedSuffix!285) Nil!1890)))))))

(declare-fun e!65280 () List!1896)

(assert (=> d!28277 (= lt!33769 e!65280)))

(declare-fun c!26548 () Bool)

(assert (=> d!28277 (= c!26548 ((_ is Nil!1890) testedP!367))))

(assert (=> d!28277 (= (++!332 testedP!367 (Cons!1890 (head!474 testedSuffix!285) Nil!1890)) lt!33769)))

(declare-fun b!115283 () Bool)

(assert (=> b!115283 (= e!65280 (Cons!1890 (head!474 testedSuffix!285) Nil!1890))))

(declare-fun b!115284 () Bool)

(assert (=> b!115284 (= e!65280 (Cons!1890 (h!7287 testedP!367) (++!332 (t!22373 testedP!367) (Cons!1890 (head!474 testedSuffix!285) Nil!1890))))))

(declare-fun b!115285 () Bool)

(declare-fun res!54840 () Bool)

(assert (=> b!115285 (=> (not res!54840) (not e!65279))))

(assert (=> b!115285 (= res!54840 (= (size!1697 lt!33769) (+ (size!1697 testedP!367) (size!1697 (Cons!1890 (head!474 testedSuffix!285) Nil!1890)))))))

(assert (= (and d!28277 c!26548) b!115283))

(assert (= (and d!28277 (not c!26548)) b!115284))

(assert (= (and d!28277 res!54841) b!115285))

(assert (= (and b!115285 res!54840) b!115286))

(declare-fun m!103784 () Bool)

(assert (=> d!28277 m!103784))

(assert (=> d!28277 m!103738))

(declare-fun m!103786 () Bool)

(assert (=> d!28277 m!103786))

(declare-fun m!103788 () Bool)

(assert (=> b!115284 m!103788))

(declare-fun m!103790 () Bool)

(assert (=> b!115285 m!103790))

(assert (=> b!115285 m!103700))

(declare-fun m!103792 () Bool)

(assert (=> b!115285 m!103792))

(assert (=> b!115205 d!28277))

(declare-fun d!28279 () Bool)

(declare-fun e!65281 () Bool)

(assert (=> d!28279 e!65281))

(declare-fun res!54845 () Bool)

(assert (=> d!28279 (=> res!54845 e!65281)))

(declare-fun lt!33770 () Bool)

(assert (=> d!28279 (= res!54845 (not lt!33770))))

(declare-fun e!65282 () Bool)

(assert (=> d!28279 (= lt!33770 e!65282)))

(declare-fun res!54844 () Bool)

(assert (=> d!28279 (=> res!54844 e!65282)))

(assert (=> d!28279 (= res!54844 ((_ is Nil!1890) (++!332 testedP!367 (Cons!1890 (head!474 lt!33727) Nil!1890))))))

(assert (=> d!28279 (= (isPrefix!79 (++!332 testedP!367 (Cons!1890 (head!474 lt!33727) Nil!1890)) totalInput!1363) lt!33770)))

(declare-fun b!115289 () Bool)

(declare-fun e!65283 () Bool)

(assert (=> b!115289 (= e!65283 (isPrefix!79 (tail!210 (++!332 testedP!367 (Cons!1890 (head!474 lt!33727) Nil!1890))) (tail!210 totalInput!1363)))))

(declare-fun b!115288 () Bool)

(declare-fun res!54842 () Bool)

(assert (=> b!115288 (=> (not res!54842) (not e!65283))))

(assert (=> b!115288 (= res!54842 (= (head!474 (++!332 testedP!367 (Cons!1890 (head!474 lt!33727) Nil!1890))) (head!474 totalInput!1363)))))

(declare-fun b!115290 () Bool)

(assert (=> b!115290 (= e!65281 (>= (size!1697 totalInput!1363) (size!1697 (++!332 testedP!367 (Cons!1890 (head!474 lt!33727) Nil!1890)))))))

(declare-fun b!115287 () Bool)

(assert (=> b!115287 (= e!65282 e!65283)))

(declare-fun res!54843 () Bool)

(assert (=> b!115287 (=> (not res!54843) (not e!65283))))

(assert (=> b!115287 (= res!54843 (not ((_ is Nil!1890) totalInput!1363)))))

(assert (= (and d!28279 (not res!54844)) b!115287))

(assert (= (and b!115287 res!54843) b!115288))

(assert (= (and b!115288 res!54842) b!115289))

(assert (= (and d!28279 (not res!54845)) b!115290))

(assert (=> b!115289 m!103672))

(declare-fun m!103794 () Bool)

(assert (=> b!115289 m!103794))

(assert (=> b!115289 m!103726))

(assert (=> b!115289 m!103794))

(assert (=> b!115289 m!103726))

(declare-fun m!103796 () Bool)

(assert (=> b!115289 m!103796))

(assert (=> b!115288 m!103672))

(declare-fun m!103798 () Bool)

(assert (=> b!115288 m!103798))

(assert (=> b!115288 m!103730))

(assert (=> b!115290 m!103704))

(assert (=> b!115290 m!103672))

(declare-fun m!103800 () Bool)

(assert (=> b!115290 m!103800))

(assert (=> b!115205 d!28279))

(declare-fun lt!33771 () List!1896)

(declare-fun e!65284 () Bool)

(declare-fun b!115294 () Bool)

(assert (=> b!115294 (= e!65284 (or (not (= (Cons!1890 (head!474 lt!33727) Nil!1890) Nil!1890)) (= lt!33771 testedP!367)))))

(declare-fun d!28281 () Bool)

(assert (=> d!28281 e!65284))

(declare-fun res!54847 () Bool)

(assert (=> d!28281 (=> (not res!54847) (not e!65284))))

(assert (=> d!28281 (= res!54847 (= (content!213 lt!33771) ((_ map or) (content!213 testedP!367) (content!213 (Cons!1890 (head!474 lt!33727) Nil!1890)))))))

(declare-fun e!65285 () List!1896)

(assert (=> d!28281 (= lt!33771 e!65285)))

(declare-fun c!26549 () Bool)

(assert (=> d!28281 (= c!26549 ((_ is Nil!1890) testedP!367))))

(assert (=> d!28281 (= (++!332 testedP!367 (Cons!1890 (head!474 lt!33727) Nil!1890)) lt!33771)))

(declare-fun b!115291 () Bool)

(assert (=> b!115291 (= e!65285 (Cons!1890 (head!474 lt!33727) Nil!1890))))

(declare-fun b!115292 () Bool)

(assert (=> b!115292 (= e!65285 (Cons!1890 (h!7287 testedP!367) (++!332 (t!22373 testedP!367) (Cons!1890 (head!474 lt!33727) Nil!1890))))))

(declare-fun b!115293 () Bool)

(declare-fun res!54846 () Bool)

(assert (=> b!115293 (=> (not res!54846) (not e!65284))))

(assert (=> b!115293 (= res!54846 (= (size!1697 lt!33771) (+ (size!1697 testedP!367) (size!1697 (Cons!1890 (head!474 lt!33727) Nil!1890)))))))

(assert (= (and d!28281 c!26549) b!115291))

(assert (= (and d!28281 (not c!26549)) b!115292))

(assert (= (and d!28281 res!54847) b!115293))

(assert (= (and b!115293 res!54846) b!115294))

(declare-fun m!103802 () Bool)

(assert (=> d!28281 m!103802))

(assert (=> d!28281 m!103738))

(declare-fun m!103804 () Bool)

(assert (=> d!28281 m!103804))

(declare-fun m!103806 () Bool)

(assert (=> b!115292 m!103806))

(declare-fun m!103808 () Bool)

(assert (=> b!115293 m!103808))

(assert (=> b!115293 m!103700))

(declare-fun m!103810 () Bool)

(assert (=> b!115293 m!103810))

(assert (=> b!115205 d!28281))

(declare-fun d!28283 () Bool)

(assert (=> d!28283 (isPrefix!79 (++!332 testedP!367 (Cons!1890 (head!474 (getSuffix!25 totalInput!1363 testedP!367)) Nil!1890)) totalInput!1363)))

(declare-fun lt!33774 () Unit!1370)

(declare-fun choose!1520 (List!1896 List!1896) Unit!1370)

(assert (=> d!28283 (= lt!33774 (choose!1520 testedP!367 totalInput!1363))))

(assert (=> d!28283 (isPrefix!79 testedP!367 totalInput!1363)))

(assert (=> d!28283 (= (lemmaAddHeadSuffixToPrefixStillPrefix!4 testedP!367 totalInput!1363) lt!33774)))

(declare-fun bs!11818 () Bool)

(assert (= bs!11818 d!28283))

(declare-fun m!103812 () Bool)

(assert (=> bs!11818 m!103812))

(declare-fun m!103814 () Bool)

(assert (=> bs!11818 m!103814))

(declare-fun m!103816 () Bool)

(assert (=> bs!11818 m!103816))

(assert (=> bs!11818 m!103716))

(assert (=> bs!11818 m!103814))

(assert (=> bs!11818 m!103698))

(declare-fun m!103818 () Bool)

(assert (=> bs!11818 m!103818))

(assert (=> bs!11818 m!103698))

(assert (=> b!115205 d!28283))

(declare-fun d!28285 () Bool)

(assert (=> d!28285 (= (head!474 lt!33727) (h!7287 lt!33727))))

(assert (=> b!115205 d!28285))

(declare-fun b!115308 () Bool)

(declare-fun e!65288 () Bool)

(declare-fun tp!62943 () Bool)

(declare-fun tp!62941 () Bool)

(assert (=> b!115308 (= e!65288 (and tp!62943 tp!62941))))

(declare-fun b!115306 () Bool)

(declare-fun tp!62942 () Bool)

(declare-fun tp!62940 () Bool)

(assert (=> b!115306 (= e!65288 (and tp!62942 tp!62940))))

(assert (=> b!115201 (= tp!62920 e!65288)))

(declare-fun b!115305 () Bool)

(assert (=> b!115305 (= e!65288 tp_is_empty!1037)))

(declare-fun b!115307 () Bool)

(declare-fun tp!62939 () Bool)

(assert (=> b!115307 (= e!65288 tp!62939)))

(assert (= (and b!115201 ((_ is ElementMatch!491) (reg!820 r!15532))) b!115305))

(assert (= (and b!115201 ((_ is Concat!875) (reg!820 r!15532))) b!115306))

(assert (= (and b!115201 ((_ is Star!491) (reg!820 r!15532))) b!115307))

(assert (= (and b!115201 ((_ is Union!491) (reg!820 r!15532))) b!115308))

(declare-fun b!115313 () Bool)

(declare-fun e!65291 () Bool)

(declare-fun tp!62946 () Bool)

(assert (=> b!115313 (= e!65291 (and tp_is_empty!1037 tp!62946))))

(assert (=> b!115191 (= tp!62928 e!65291)))

(assert (= (and b!115191 ((_ is Cons!1890) (t!22373 testedSuffix!285))) b!115313))

(declare-fun b!115317 () Bool)

(declare-fun e!65292 () Bool)

(declare-fun tp!62951 () Bool)

(declare-fun tp!62949 () Bool)

(assert (=> b!115317 (= e!65292 (and tp!62951 tp!62949))))

(declare-fun b!115315 () Bool)

(declare-fun tp!62950 () Bool)

(declare-fun tp!62948 () Bool)

(assert (=> b!115315 (= e!65292 (and tp!62950 tp!62948))))

(assert (=> b!115183 (= tp!62924 e!65292)))

(declare-fun b!115314 () Bool)

(assert (=> b!115314 (= e!65292 tp_is_empty!1037)))

(declare-fun b!115316 () Bool)

(declare-fun tp!62947 () Bool)

(assert (=> b!115316 (= e!65292 tp!62947)))

(assert (= (and b!115183 ((_ is ElementMatch!491) (regOne!1494 r!15532))) b!115314))

(assert (= (and b!115183 ((_ is Concat!875) (regOne!1494 r!15532))) b!115315))

(assert (= (and b!115183 ((_ is Star!491) (regOne!1494 r!15532))) b!115316))

(assert (= (and b!115183 ((_ is Union!491) (regOne!1494 r!15532))) b!115317))

(declare-fun b!115321 () Bool)

(declare-fun e!65293 () Bool)

(declare-fun tp!62956 () Bool)

(declare-fun tp!62954 () Bool)

(assert (=> b!115321 (= e!65293 (and tp!62956 tp!62954))))

(declare-fun b!115319 () Bool)

(declare-fun tp!62955 () Bool)

(declare-fun tp!62953 () Bool)

(assert (=> b!115319 (= e!65293 (and tp!62955 tp!62953))))

(assert (=> b!115183 (= tp!62926 e!65293)))

(declare-fun b!115318 () Bool)

(assert (=> b!115318 (= e!65293 tp_is_empty!1037)))

(declare-fun b!115320 () Bool)

(declare-fun tp!62952 () Bool)

(assert (=> b!115320 (= e!65293 tp!62952)))

(assert (= (and b!115183 ((_ is ElementMatch!491) (regTwo!1494 r!15532))) b!115318))

(assert (= (and b!115183 ((_ is Concat!875) (regTwo!1494 r!15532))) b!115319))

(assert (= (and b!115183 ((_ is Star!491) (regTwo!1494 r!15532))) b!115320))

(assert (= (and b!115183 ((_ is Union!491) (regTwo!1494 r!15532))) b!115321))

(declare-fun b!115322 () Bool)

(declare-fun e!65294 () Bool)

(declare-fun tp!62957 () Bool)

(assert (=> b!115322 (= e!65294 (and tp_is_empty!1037 tp!62957))))

(assert (=> b!115188 (= tp!62922 e!65294)))

(assert (= (and b!115188 ((_ is Cons!1890) (t!22373 totalInput!1363))) b!115322))

(declare-fun b!115326 () Bool)

(declare-fun e!65295 () Bool)

(declare-fun tp!62962 () Bool)

(declare-fun tp!62960 () Bool)

(assert (=> b!115326 (= e!65295 (and tp!62962 tp!62960))))

(declare-fun b!115324 () Bool)

(declare-fun tp!62961 () Bool)

(declare-fun tp!62959 () Bool)

(assert (=> b!115324 (= e!65295 (and tp!62961 tp!62959))))

(assert (=> b!115193 (= tp!62923 e!65295)))

(declare-fun b!115323 () Bool)

(assert (=> b!115323 (= e!65295 tp_is_empty!1037)))

(declare-fun b!115325 () Bool)

(declare-fun tp!62958 () Bool)

(assert (=> b!115325 (= e!65295 tp!62958)))

(assert (= (and b!115193 ((_ is ElementMatch!491) (regOne!1495 r!15532))) b!115323))

(assert (= (and b!115193 ((_ is Concat!875) (regOne!1495 r!15532))) b!115324))

(assert (= (and b!115193 ((_ is Star!491) (regOne!1495 r!15532))) b!115325))

(assert (= (and b!115193 ((_ is Union!491) (regOne!1495 r!15532))) b!115326))

(declare-fun b!115330 () Bool)

(declare-fun e!65296 () Bool)

(declare-fun tp!62967 () Bool)

(declare-fun tp!62965 () Bool)

(assert (=> b!115330 (= e!65296 (and tp!62967 tp!62965))))

(declare-fun b!115328 () Bool)

(declare-fun tp!62966 () Bool)

(declare-fun tp!62964 () Bool)

(assert (=> b!115328 (= e!65296 (and tp!62966 tp!62964))))

(assert (=> b!115193 (= tp!62914 e!65296)))

(declare-fun b!115327 () Bool)

(assert (=> b!115327 (= e!65296 tp_is_empty!1037)))

(declare-fun b!115329 () Bool)

(declare-fun tp!62963 () Bool)

(assert (=> b!115329 (= e!65296 tp!62963)))

(assert (= (and b!115193 ((_ is ElementMatch!491) (regTwo!1495 r!15532))) b!115327))

(assert (= (and b!115193 ((_ is Concat!875) (regTwo!1495 r!15532))) b!115328))

(assert (= (and b!115193 ((_ is Star!491) (regTwo!1495 r!15532))) b!115329))

(assert (= (and b!115193 ((_ is Union!491) (regTwo!1495 r!15532))) b!115330))

(declare-fun tp!62986 () Bool)

(declare-fun tp!62982 () Bool)

(declare-fun e!65301 () Bool)

(declare-fun b!115337 () Bool)

(declare-fun tp!62984 () Bool)

(assert (=> b!115337 (= e!65301 (and tp!62984 tp_is_empty!1037 tp!62982 tp!62986))))

(declare-fun condMapEmpty!1393 () Bool)

(declare-fun mapDefault!1393 () List!1897)

(assert (=> mapNonEmpty!1390 (= condMapEmpty!1393 (= mapRest!1390 ((as const (Array (_ BitVec 32) List!1897)) mapDefault!1393)))))

(declare-fun e!65302 () Bool)

(declare-fun mapRes!1393 () Bool)

(assert (=> mapNonEmpty!1390 (= tp!62919 (and e!65302 mapRes!1393))))

(declare-fun mapIsEmpty!1393 () Bool)

(assert (=> mapIsEmpty!1393 mapRes!1393))

(declare-fun mapNonEmpty!1393 () Bool)

(declare-fun tp!62983 () Bool)

(assert (=> mapNonEmpty!1393 (= mapRes!1393 (and tp!62983 e!65301))))

(declare-fun mapRest!1393 () (Array (_ BitVec 32) List!1897))

(declare-fun mapValue!1393 () List!1897)

(declare-fun mapKey!1393 () (_ BitVec 32))

(assert (=> mapNonEmpty!1393 (= mapRest!1390 (store mapRest!1393 mapKey!1393 mapValue!1393))))

(declare-fun tp!62987 () Bool)

(declare-fun tp!62985 () Bool)

(declare-fun tp!62988 () Bool)

(declare-fun b!115338 () Bool)

(assert (=> b!115338 (= e!65302 (and tp!62987 tp_is_empty!1037 tp!62985 tp!62988))))

(assert (= (and mapNonEmpty!1390 condMapEmpty!1393) mapIsEmpty!1393))

(assert (= (and mapNonEmpty!1390 (not condMapEmpty!1393)) mapNonEmpty!1393))

(assert (= (and mapNonEmpty!1393 ((_ is Cons!1891) mapValue!1393)) b!115337))

(assert (= (and mapNonEmpty!1390 ((_ is Cons!1891) mapDefault!1393)) b!115338))

(declare-fun m!103820 () Bool)

(assert (=> mapNonEmpty!1393 m!103820))

(declare-fun tp!62997 () Bool)

(declare-fun e!65305 () Bool)

(declare-fun b!115343 () Bool)

(declare-fun tp!62996 () Bool)

(declare-fun tp!62995 () Bool)

(assert (=> b!115343 (= e!65305 (and tp!62995 tp_is_empty!1037 tp!62996 tp!62997))))

(assert (=> mapNonEmpty!1390 (= tp!62915 e!65305)))

(assert (= (and mapNonEmpty!1390 ((_ is Cons!1891) mapValue!1390)) b!115343))

(declare-fun b!115344 () Bool)

(declare-fun e!65306 () Bool)

(declare-fun tp!62998 () Bool)

(assert (=> b!115344 (= e!65306 (and tp_is_empty!1037 tp!62998))))

(assert (=> b!115204 (= tp!62918 e!65306)))

(assert (= (and b!115204 ((_ is Cons!1890) (t!22373 testedP!367))) b!115344))

(declare-fun tp!63000 () Bool)

(declare-fun tp!63001 () Bool)

(declare-fun tp!62999 () Bool)

(declare-fun b!115345 () Bool)

(declare-fun e!65307 () Bool)

(assert (=> b!115345 (= e!65307 (and tp!62999 tp_is_empty!1037 tp!63000 tp!63001))))

(assert (=> b!115190 (= tp!62925 e!65307)))

(assert (= (and b!115190 ((_ is Cons!1891) (zeroValue!613 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470)))))))) b!115345))

(declare-fun tp!63003 () Bool)

(declare-fun e!65308 () Bool)

(declare-fun b!115346 () Bool)

(declare-fun tp!63002 () Bool)

(declare-fun tp!63004 () Bool)

(assert (=> b!115346 (= e!65308 (and tp!63002 tp_is_empty!1037 tp!63003 tp!63004))))

(assert (=> b!115190 (= tp!62917 e!65308)))

(assert (= (and b!115190 ((_ is Cons!1891) (minValue!613 (v!13245 (underlying!913 (v!13246 (underlying!914 (cache!805 cache!470)))))))) b!115346))

(declare-fun b!115347 () Bool)

(declare-fun tp!63007 () Bool)

(declare-fun tp!63006 () Bool)

(declare-fun tp!63005 () Bool)

(declare-fun e!65309 () Bool)

(assert (=> b!115347 (= e!65309 (and tp!63005 tp_is_empty!1037 tp!63006 tp!63007))))

(assert (=> b!115195 (= tp!62921 e!65309)))

(assert (= (and b!115195 ((_ is Cons!1891) mapDefault!1390)) b!115347))

(check-sat (not b!115345) (not b!115226) (not b!115237) (not b!115222) (not b!115288) (not b!115317) (not b!115282) (not d!28281) (not b!115274) (not d!28269) (not b!115290) (not b!115343) (not bm!4881) (not b!115347) (not b!115326) (not b!115236) (not b!115224) (not b!115289) (not d!28257) (not b!115243) (not d!28251) (not b!115329) (not b!115315) (not mapNonEmpty!1393) (not b!115285) (not b!115324) (not d!28245) (not b!115307) (not b!115337) (not d!28277) b_and!5789 (not b!115280) (not b!115321) (not b!115306) (not b!115338) (not d!28253) (not b!115281) (not b!115346) (not b!115277) (not b!115292) (not b_next!3659) (not b!115320) (not b!115308) (not b!115223) (not b!115276) (not d!28255) (not b!115293) tp_is_empty!1037 (not b!115328) (not b!115319) (not b_next!3657) (not b!115284) (not b!115322) (not b!115316) (not d!28241) (not b!115325) (not b!115330) (not d!28283) (not b!115278) (not b!115265) b_and!5787 (not b!115212) (not d!28249) (not b!115344) (not bm!4880) (not b!115313) (not d!28259))
(check-sat b_and!5789 b_and!5787 (not b_next!3659) (not b_next!3657))
