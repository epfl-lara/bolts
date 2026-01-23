; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11686 () Bool)

(assert start!11686)

(declare-fun b!114077 () Bool)

(declare-fun b_free!3601 () Bool)

(declare-fun b_next!3601 () Bool)

(assert (=> b!114077 (= b_free!3601 (not b_next!3601))))

(declare-fun tp!62208 () Bool)

(declare-fun b_and!5731 () Bool)

(assert (=> b!114077 (= tp!62208 b_and!5731)))

(declare-fun b!114075 () Bool)

(declare-fun b_free!3603 () Bool)

(declare-fun b_next!3603 () Bool)

(assert (=> b!114075 (= b_free!3603 (not b_next!3603))))

(declare-fun tp!62218 () Bool)

(declare-fun b_and!5733 () Bool)

(assert (=> b!114075 (= tp!62218 b_and!5733)))

(declare-fun b!114061 () Bool)

(declare-fun e!64356 () Bool)

(declare-fun tp!62219 () Bool)

(declare-fun mapRes!1345 () Bool)

(assert (=> b!114061 (= e!64356 (and tp!62219 mapRes!1345))))

(declare-fun condMapEmpty!1345 () Bool)

(declare-datatypes ((C!1876 0))(
  ( (C!1877 (val!664 Int)) )
))
(declare-datatypes ((Regex!477 0))(
  ( (ElementMatch!477 (c!26477 C!1876)) (Concat!861 (regOne!1466 Regex!477) (regTwo!1466 Regex!477)) (EmptyExpr!477) (Star!477 (reg!806 Regex!477)) (EmptyLang!477) (Union!477 (regOne!1467 Regex!477) (regTwo!1467 Regex!477)) )
))
(declare-datatypes ((Hashable!339 0))(
  ( (HashableExt!338 (__x!1954 Int)) )
))
(declare-datatypes ((tuple2!2028 0))(
  ( (tuple2!2029 (_1!1224 Regex!477) (_2!1224 C!1876)) )
))
(declare-datatypes ((tuple2!2030 0))(
  ( (tuple2!2031 (_1!1225 tuple2!2028) (_2!1225 Regex!477)) )
))
(declare-datatypes ((List!1869 0))(
  ( (Nil!1863) (Cons!1863 (h!7260 tuple2!2030) (t!22346 List!1869)) )
))
(declare-datatypes ((array!1221 0))(
  ( (array!1222 (arr!570 (Array (_ BitVec 32) (_ BitVec 64))) (size!1654 (_ BitVec 32))) )
))
(declare-datatypes ((array!1223 0))(
  ( (array!1224 (arr!571 (Array (_ BitVec 32) List!1869)) (size!1655 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!686 0))(
  ( (LongMapFixedSize!687 (defaultEntry!682 Int) (mask!1249 (_ BitVec 32)) (extraKeys!589 (_ BitVec 32)) (zeroValue!599 List!1869) (minValue!599 List!1869) (_size!819 (_ BitVec 32)) (_keys!634 array!1221) (_values!621 array!1223) (_vacant!404 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1361 0))(
  ( (Cell!1362 (v!13217 LongMapFixedSize!686)) )
))
(declare-datatypes ((MutLongMap!343 0))(
  ( (LongMap!343 (underlying!885 Cell!1361)) (MutLongMapExt!342 (__x!1955 Int)) )
))
(declare-datatypes ((Cell!1363 0))(
  ( (Cell!1364 (v!13218 MutLongMap!343)) )
))
(declare-datatypes ((MutableMap!339 0))(
  ( (MutableMapExt!338 (__x!1956 Int)) (HashMap!339 (underlying!886 Cell!1363) (hashF!2215 Hashable!339) (_size!820 (_ BitVec 32)) (defaultValue!488 Int)) )
))
(declare-datatypes ((Cache!114 0))(
  ( (Cache!115 (cache!791 MutableMap!339)) )
))
(declare-fun cache!470 () Cache!114)

(declare-fun mapDefault!1345 () List!1869)

(assert (=> b!114061 (= condMapEmpty!1345 (= (arr!571 (_values!621 (v!13217 (underlying!885 (v!13218 (underlying!886 (cache!791 cache!470))))))) ((as const (Array (_ BitVec 32) List!1869)) mapDefault!1345)))))

(declare-fun b!114062 () Bool)

(declare-fun res!54385 () Bool)

(declare-fun e!64353 () Bool)

(assert (=> b!114062 (=> (not res!54385) (not e!64353))))

(declare-fun testedPSize!285 () Int)

(declare-datatypes ((List!1870 0))(
  ( (Nil!1864) (Cons!1864 (h!7261 C!1876) (t!22347 List!1870)) )
))
(declare-fun testedP!367 () List!1870)

(declare-fun size!1656 (List!1870) Int)

(assert (=> b!114062 (= res!54385 (= testedPSize!285 (size!1656 testedP!367)))))

(declare-fun b!114063 () Bool)

(declare-fun res!54388 () Bool)

(declare-fun e!64352 () Bool)

(assert (=> b!114063 (=> res!54388 e!64352)))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!114063 (= res!54388 (not (= testedPSize!285 totalInputSize!643)))))

(declare-fun b!114064 () Bool)

(declare-fun e!64346 () Bool)

(declare-fun tp_is_empty!1009 () Bool)

(assert (=> b!114064 (= e!64346 tp_is_empty!1009)))

(declare-fun b!114065 () Bool)

(declare-fun e!64349 () Bool)

(assert (=> b!114065 (= e!64349 e!64352)))

(declare-fun res!54389 () Bool)

(assert (=> b!114065 (=> res!54389 e!64352)))

(declare-fun r!15532 () Regex!477)

(declare-fun lostCause!25 (Regex!477) Bool)

(assert (=> b!114065 (= res!54389 (lostCause!25 r!15532))))

(declare-fun testedSuffix!285 () List!1870)

(declare-fun lt!33268 () List!1870)

(assert (=> b!114065 (and (= testedSuffix!285 lt!33268) (= lt!33268 testedSuffix!285))))

(declare-datatypes ((Unit!1333 0))(
  ( (Unit!1334) )
))
(declare-fun lt!33266 () Unit!1333)

(declare-fun totalInput!1363 () List!1870)

(declare-fun lemmaSamePrefixThenSameSuffix!13 (List!1870 List!1870 List!1870 List!1870 List!1870) Unit!1333)

(assert (=> b!114065 (= lt!33266 (lemmaSamePrefixThenSameSuffix!13 testedP!367 testedSuffix!285 testedP!367 lt!33268 totalInput!1363))))

(declare-fun getSuffix!14 (List!1870 List!1870) List!1870)

(assert (=> b!114065 (= lt!33268 (getSuffix!14 totalInput!1363 testedP!367))))

(declare-fun b!114066 () Bool)

(declare-fun tp!62207 () Bool)

(declare-fun tp!62205 () Bool)

(assert (=> b!114066 (= e!64346 (and tp!62207 tp!62205))))

(declare-fun b!114067 () Bool)

(declare-fun res!54387 () Bool)

(declare-fun e!64351 () Bool)

(assert (=> b!114067 (=> (not res!54387) (not e!64351))))

(declare-fun valid!316 (Cache!114) Bool)

(assert (=> b!114067 (= res!54387 (valid!316 cache!470))))

(declare-fun b!114068 () Bool)

(declare-fun e!64354 () Bool)

(declare-fun tp!62217 () Bool)

(assert (=> b!114068 (= e!64354 (and tp_is_empty!1009 tp!62217))))

(declare-fun b!114069 () Bool)

(assert (=> b!114069 (= e!64351 e!64353)))

(declare-fun res!54384 () Bool)

(assert (=> b!114069 (=> (not res!54384) (not e!64353))))

(declare-fun lt!33270 () List!1870)

(assert (=> b!114069 (= res!54384 (= lt!33270 totalInput!1363))))

(declare-fun ++!320 (List!1870 List!1870) List!1870)

(assert (=> b!114069 (= lt!33270 (++!320 testedP!367 testedSuffix!285))))

(declare-fun b!114070 () Bool)

(declare-fun e!64347 () Bool)

(declare-fun e!64345 () Bool)

(declare-fun lt!33269 () MutLongMap!343)

(get-info :version)

(assert (=> b!114070 (= e!64347 (and e!64345 ((_ is LongMap!343) lt!33269)))))

(assert (=> b!114070 (= lt!33269 (v!13218 (underlying!886 (cache!791 cache!470))))))

(declare-fun b!114071 () Bool)

(assert (=> b!114071 (= e!64353 (not e!64349))))

(declare-fun res!54390 () Bool)

(assert (=> b!114071 (=> res!54390 e!64349)))

(declare-fun isPrefix!66 (List!1870 List!1870) Bool)

(assert (=> b!114071 (= res!54390 (not (isPrefix!66 testedP!367 totalInput!1363)))))

(assert (=> b!114071 (isPrefix!66 testedP!367 lt!33270)))

(declare-fun lt!33265 () Unit!1333)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!15 (List!1870 List!1870) Unit!1333)

(assert (=> b!114071 (= lt!33265 (lemmaConcatTwoListThenFirstIsPrefix!15 testedP!367 testedSuffix!285))))

(declare-fun b!114072 () Bool)

(declare-fun e!64358 () Bool)

(assert (=> b!114072 (= e!64345 e!64358)))

(declare-fun b!114073 () Bool)

(declare-fun e!64350 () Bool)

(assert (=> b!114073 (= e!64358 e!64350)))

(declare-fun b!114074 () Bool)

(declare-fun e!64355 () Bool)

(declare-fun tp!62214 () Bool)

(assert (=> b!114074 (= e!64355 (and tp_is_empty!1009 tp!62214))))

(declare-fun mapIsEmpty!1345 () Bool)

(assert (=> mapIsEmpty!1345 mapRes!1345))

(declare-fun e!64344 () Bool)

(assert (=> b!114075 (= e!64344 (and e!64347 tp!62218))))

(declare-fun b!114076 () Bool)

(declare-fun tp!62211 () Bool)

(assert (=> b!114076 (= e!64346 tp!62211)))

(declare-fun b!114060 () Bool)

(declare-fun tp!62212 () Bool)

(declare-fun tp!62215 () Bool)

(assert (=> b!114060 (= e!64346 (and tp!62212 tp!62215))))

(declare-fun res!54386 () Bool)

(assert (=> start!11686 (=> (not res!54386) (not e!64351))))

(declare-fun validRegex!88 (Regex!477) Bool)

(assert (=> start!11686 (= res!54386 (validRegex!88 r!15532))))

(assert (=> start!11686 e!64351))

(assert (=> start!11686 true))

(assert (=> start!11686 e!64346))

(assert (=> start!11686 e!64354))

(assert (=> start!11686 e!64355))

(declare-fun e!64343 () Bool)

(assert (=> start!11686 e!64343))

(declare-fun e!64348 () Bool)

(declare-fun inv!2368 (Cache!114) Bool)

(assert (=> start!11686 (and (inv!2368 cache!470) e!64348)))

(declare-fun mapNonEmpty!1345 () Bool)

(declare-fun tp!62210 () Bool)

(declare-fun tp!62213 () Bool)

(assert (=> mapNonEmpty!1345 (= mapRes!1345 (and tp!62210 tp!62213))))

(declare-fun mapRest!1345 () (Array (_ BitVec 32) List!1869))

(declare-fun mapKey!1345 () (_ BitVec 32))

(declare-fun mapValue!1345 () List!1869)

(assert (=> mapNonEmpty!1345 (= (arr!571 (_values!621 (v!13217 (underlying!885 (v!13218 (underlying!886 (cache!791 cache!470))))))) (store mapRest!1345 mapKey!1345 mapValue!1345))))

(declare-fun tp!62206 () Bool)

(declare-fun tp!62209 () Bool)

(declare-fun array_inv!401 (array!1221) Bool)

(declare-fun array_inv!402 (array!1223) Bool)

(assert (=> b!114077 (= e!64350 (and tp!62208 tp!62206 tp!62209 (array_inv!401 (_keys!634 (v!13217 (underlying!885 (v!13218 (underlying!886 (cache!791 cache!470))))))) (array_inv!402 (_values!621 (v!13217 (underlying!885 (v!13218 (underlying!886 (cache!791 cache!470))))))) e!64356))))

(declare-fun b!114078 () Bool)

(declare-fun tp!62216 () Bool)

(assert (=> b!114078 (= e!64343 (and tp_is_empty!1009 tp!62216))))

(declare-fun b!114079 () Bool)

(assert (=> b!114079 (= e!64348 e!64344)))

(declare-fun b!114080 () Bool)

(assert (=> b!114080 (= e!64352 true)))

(assert (=> b!114080 (isPrefix!66 totalInput!1363 totalInput!1363)))

(declare-fun lt!33267 () Unit!1333)

(declare-fun lemmaIsPrefixRefl!53 (List!1870 List!1870) Unit!1333)

(assert (=> b!114080 (= lt!33267 (lemmaIsPrefixRefl!53 totalInput!1363 totalInput!1363))))

(declare-fun b!114081 () Bool)

(declare-fun res!54391 () Bool)

(assert (=> b!114081 (=> (not res!54391) (not e!64353))))

(assert (=> b!114081 (= res!54391 (= totalInputSize!643 (size!1656 totalInput!1363)))))

(assert (= (and start!11686 res!54386) b!114067))

(assert (= (and b!114067 res!54387) b!114069))

(assert (= (and b!114069 res!54384) b!114062))

(assert (= (and b!114062 res!54385) b!114081))

(assert (= (and b!114081 res!54391) b!114071))

(assert (= (and b!114071 (not res!54390)) b!114065))

(assert (= (and b!114065 (not res!54389)) b!114063))

(assert (= (and b!114063 (not res!54388)) b!114080))

(assert (= (and start!11686 ((_ is ElementMatch!477) r!15532)) b!114064))

(assert (= (and start!11686 ((_ is Concat!861) r!15532)) b!114066))

(assert (= (and start!11686 ((_ is Star!477) r!15532)) b!114076))

(assert (= (and start!11686 ((_ is Union!477) r!15532)) b!114060))

(assert (= (and start!11686 ((_ is Cons!1864) totalInput!1363)) b!114068))

(assert (= (and start!11686 ((_ is Cons!1864) testedSuffix!285)) b!114074))

(assert (= (and start!11686 ((_ is Cons!1864) testedP!367)) b!114078))

(assert (= (and b!114061 condMapEmpty!1345) mapIsEmpty!1345))

(assert (= (and b!114061 (not condMapEmpty!1345)) mapNonEmpty!1345))

(assert (= b!114077 b!114061))

(assert (= b!114073 b!114077))

(assert (= b!114072 b!114073))

(assert (= (and b!114070 ((_ is LongMap!343) (v!13218 (underlying!886 (cache!791 cache!470))))) b!114072))

(assert (= b!114075 b!114070))

(assert (= (and b!114079 ((_ is HashMap!339) (cache!791 cache!470))) b!114075))

(assert (= start!11686 b!114079))

(declare-fun m!103056 () Bool)

(assert (=> mapNonEmpty!1345 m!103056))

(declare-fun m!103058 () Bool)

(assert (=> b!114077 m!103058))

(declare-fun m!103060 () Bool)

(assert (=> b!114077 m!103060))

(declare-fun m!103062 () Bool)

(assert (=> start!11686 m!103062))

(declare-fun m!103064 () Bool)

(assert (=> start!11686 m!103064))

(declare-fun m!103066 () Bool)

(assert (=> b!114071 m!103066))

(declare-fun m!103068 () Bool)

(assert (=> b!114071 m!103068))

(declare-fun m!103070 () Bool)

(assert (=> b!114071 m!103070))

(declare-fun m!103072 () Bool)

(assert (=> b!114069 m!103072))

(declare-fun m!103074 () Bool)

(assert (=> b!114067 m!103074))

(declare-fun m!103076 () Bool)

(assert (=> b!114065 m!103076))

(declare-fun m!103078 () Bool)

(assert (=> b!114065 m!103078))

(declare-fun m!103080 () Bool)

(assert (=> b!114065 m!103080))

(declare-fun m!103082 () Bool)

(assert (=> b!114081 m!103082))

(declare-fun m!103084 () Bool)

(assert (=> b!114080 m!103084))

(declare-fun m!103086 () Bool)

(assert (=> b!114080 m!103086))

(declare-fun m!103088 () Bool)

(assert (=> b!114062 m!103088))

(check-sat (not b!114062) (not b!114076) b_and!5733 (not b!114061) (not b!114078) (not b!114067) (not b!114080) (not b!114066) (not b!114077) (not mapNonEmpty!1345) (not b!114074) (not b_next!3603) (not b!114068) (not b!114060) (not b!114071) (not start!11686) (not b_next!3601) (not b!114081) (not b!114065) b_and!5731 (not b!114069) tp_is_empty!1009)
(check-sat b_and!5733 b_and!5731 (not b_next!3603) (not b_next!3601))
