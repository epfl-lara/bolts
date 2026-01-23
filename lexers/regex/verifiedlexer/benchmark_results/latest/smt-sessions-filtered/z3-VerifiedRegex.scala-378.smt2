; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11674 () Bool)

(assert start!11674)

(declare-fun b!113706 () Bool)

(declare-fun b_free!3577 () Bool)

(declare-fun b_next!3577 () Bool)

(assert (=> b!113706 (= b_free!3577 (not b_next!3577))))

(declare-fun tp!61935 () Bool)

(declare-fun b_and!5707 () Bool)

(assert (=> b!113706 (= tp!61935 b_and!5707)))

(declare-fun b!113695 () Bool)

(declare-fun b_free!3579 () Bool)

(declare-fun b_next!3579 () Bool)

(assert (=> b!113695 (= b_free!3579 (not b_next!3579))))

(declare-fun tp!61946 () Bool)

(declare-fun b_and!5709 () Bool)

(assert (=> b!113695 (= tp!61946 b_and!5709)))

(declare-fun b!113690 () Bool)

(declare-fun e!64075 () Bool)

(declare-fun tp_is_empty!997 () Bool)

(declare-fun tp!61937 () Bool)

(assert (=> b!113690 (= e!64075 (and tp_is_empty!997 tp!61937))))

(declare-fun b!113691 () Bool)

(declare-fun e!64071 () Bool)

(declare-fun tp!61944 () Bool)

(declare-fun tp!61938 () Bool)

(assert (=> b!113691 (= e!64071 (and tp!61944 tp!61938))))

(declare-fun b!113692 () Bool)

(assert (=> b!113692 (= e!64071 tp_is_empty!997)))

(declare-fun b!113693 () Bool)

(declare-fun e!64081 () Bool)

(declare-fun e!64072 () Bool)

(assert (=> b!113693 (= e!64081 e!64072)))

(declare-fun b!113694 () Bool)

(declare-fun res!54269 () Bool)

(declare-fun e!64082 () Bool)

(assert (=> b!113694 (=> (not res!54269) (not e!64082))))

(declare-fun testedPSize!285 () Int)

(declare-datatypes ((C!1864 0))(
  ( (C!1865 (val!658 Int)) )
))
(declare-datatypes ((List!1858 0))(
  ( (Nil!1852) (Cons!1852 (h!7249 C!1864) (t!22335 List!1858)) )
))
(declare-fun testedP!367 () List!1858)

(declare-fun size!1638 (List!1858) Int)

(assert (=> b!113694 (= res!54269 (= testedPSize!285 (size!1638 testedP!367)))))

(declare-fun e!64077 () Bool)

(declare-fun e!64070 () Bool)

(assert (=> b!113695 (= e!64077 (and e!64070 tp!61946))))

(declare-fun mapNonEmpty!1327 () Bool)

(declare-fun mapRes!1327 () Bool)

(declare-fun tp!61936 () Bool)

(declare-fun tp!61942 () Bool)

(assert (=> mapNonEmpty!1327 (= mapRes!1327 (and tp!61936 tp!61942))))

(declare-datatypes ((Regex!471 0))(
  ( (ElementMatch!471 (c!26471 C!1864)) (Concat!855 (regOne!1454 Regex!471) (regTwo!1454 Regex!471)) (EmptyExpr!471) (Star!471 (reg!800 Regex!471)) (EmptyLang!471) (Union!471 (regOne!1455 Regex!471) (regTwo!1455 Regex!471)) )
))
(declare-datatypes ((tuple2!2004 0))(
  ( (tuple2!2005 (_1!1212 Regex!471) (_2!1212 C!1864)) )
))
(declare-datatypes ((tuple2!2006 0))(
  ( (tuple2!2007 (_1!1213 tuple2!2004) (_2!1213 Regex!471)) )
))
(declare-datatypes ((List!1859 0))(
  ( (Nil!1853) (Cons!1853 (h!7250 tuple2!2006) (t!22336 List!1859)) )
))
(declare-fun mapValue!1327 () List!1859)

(declare-fun mapRest!1327 () (Array (_ BitVec 32) List!1859))

(declare-datatypes ((Hashable!333 0))(
  ( (HashableExt!332 (__x!1936 Int)) )
))
(declare-datatypes ((array!1197 0))(
  ( (array!1198 (arr!558 (Array (_ BitVec 32) (_ BitVec 64))) (size!1639 (_ BitVec 32))) )
))
(declare-datatypes ((array!1199 0))(
  ( (array!1200 (arr!559 (Array (_ BitVec 32) List!1859)) (size!1640 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!674 0))(
  ( (LongMapFixedSize!675 (defaultEntry!676 Int) (mask!1240 (_ BitVec 32)) (extraKeys!583 (_ BitVec 32)) (zeroValue!593 List!1859) (minValue!593 List!1859) (_size!807 (_ BitVec 32)) (_keys!628 array!1197) (_values!615 array!1199) (_vacant!398 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1337 0))(
  ( (Cell!1338 (v!13205 LongMapFixedSize!674)) )
))
(declare-datatypes ((MutLongMap!337 0))(
  ( (LongMap!337 (underlying!873 Cell!1337)) (MutLongMapExt!336 (__x!1937 Int)) )
))
(declare-datatypes ((Cell!1339 0))(
  ( (Cell!1340 (v!13206 MutLongMap!337)) )
))
(declare-datatypes ((MutableMap!333 0))(
  ( (MutableMapExt!332 (__x!1938 Int)) (HashMap!333 (underlying!874 Cell!1339) (hashF!2209 Hashable!333) (_size!808 (_ BitVec 32)) (defaultValue!482 Int)) )
))
(declare-datatypes ((Cache!102 0))(
  ( (Cache!103 (cache!785 MutableMap!333)) )
))
(declare-fun cache!470 () Cache!102)

(declare-fun mapKey!1327 () (_ BitVec 32))

(assert (=> mapNonEmpty!1327 (= (arr!559 (_values!615 (v!13205 (underlying!873 (v!13206 (underlying!874 (cache!785 cache!470))))))) (store mapRest!1327 mapKey!1327 mapValue!1327))))

(declare-fun b!113697 () Bool)

(declare-fun e!64079 () Bool)

(assert (=> b!113697 (= e!64079 e!64081)))

(declare-fun mapIsEmpty!1327 () Bool)

(assert (=> mapIsEmpty!1327 mapRes!1327))

(declare-fun b!113698 () Bool)

(declare-fun lt!33162 () MutLongMap!337)

(get-info :version)

(assert (=> b!113698 (= e!64070 (and e!64079 ((_ is LongMap!337) lt!33162)))))

(assert (=> b!113698 (= lt!33162 (v!13206 (underlying!874 (cache!785 cache!470))))))

(declare-fun b!113699 () Bool)

(declare-fun e!64074 () Bool)

(assert (=> b!113699 (= e!64074 true)))

(declare-fun testedSuffix!285 () List!1858)

(declare-fun lt!33160 () List!1858)

(assert (=> b!113699 (and (= testedSuffix!285 lt!33160) (= lt!33160 testedSuffix!285))))

(declare-datatypes ((Unit!1323 0))(
  ( (Unit!1324) )
))
(declare-fun lt!33158 () Unit!1323)

(declare-fun totalInput!1363 () List!1858)

(declare-fun lemmaSamePrefixThenSameSuffix!8 (List!1858 List!1858 List!1858 List!1858 List!1858) Unit!1323)

(assert (=> b!113699 (= lt!33158 (lemmaSamePrefixThenSameSuffix!8 testedP!367 testedSuffix!285 testedP!367 lt!33160 totalInput!1363))))

(declare-fun getSuffix!9 (List!1858 List!1858) List!1858)

(assert (=> b!113699 (= lt!33160 (getSuffix!9 totalInput!1363 testedP!367))))

(declare-fun b!113700 () Bool)

(declare-fun res!54271 () Bool)

(declare-fun e!64078 () Bool)

(assert (=> b!113700 (=> (not res!54271) (not e!64078))))

(declare-fun valid!312 (Cache!102) Bool)

(assert (=> b!113700 (= res!54271 (valid!312 cache!470))))

(declare-fun b!113701 () Bool)

(declare-fun e!64073 () Bool)

(declare-fun tp!61939 () Bool)

(assert (=> b!113701 (= e!64073 (and tp_is_empty!997 tp!61939))))

(declare-fun b!113702 () Bool)

(declare-fun e!64069 () Bool)

(assert (=> b!113702 (= e!64069 e!64077)))

(declare-fun b!113703 () Bool)

(declare-fun tp!61941 () Bool)

(assert (=> b!113703 (= e!64071 tp!61941)))

(declare-fun b!113704 () Bool)

(declare-fun res!54270 () Bool)

(assert (=> b!113704 (=> (not res!54270) (not e!64082))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!113704 (= res!54270 (= totalInputSize!643 (size!1638 totalInput!1363)))))

(declare-fun b!113705 () Bool)

(assert (=> b!113705 (= e!64082 (not e!64074))))

(declare-fun res!54268 () Bool)

(assert (=> b!113705 (=> res!54268 e!64074)))

(declare-fun isPrefix!62 (List!1858 List!1858) Bool)

(assert (=> b!113705 (= res!54268 (not (isPrefix!62 testedP!367 totalInput!1363)))))

(declare-fun lt!33159 () List!1858)

(assert (=> b!113705 (isPrefix!62 testedP!367 lt!33159)))

(declare-fun lt!33161 () Unit!1323)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!11 (List!1858 List!1858) Unit!1323)

(assert (=> b!113705 (= lt!33161 (lemmaConcatTwoListThenFirstIsPrefix!11 testedP!367 testedSuffix!285))))

(declare-fun tp!61949 () Bool)

(declare-fun tp!61945 () Bool)

(declare-fun e!64080 () Bool)

(declare-fun array_inv!395 (array!1197) Bool)

(declare-fun array_inv!396 (array!1199) Bool)

(assert (=> b!113706 (= e!64072 (and tp!61935 tp!61945 tp!61949 (array_inv!395 (_keys!628 (v!13205 (underlying!873 (v!13206 (underlying!874 (cache!785 cache!470))))))) (array_inv!396 (_values!615 (v!13205 (underlying!873 (v!13206 (underlying!874 (cache!785 cache!470))))))) e!64080))))

(declare-fun b!113707 () Bool)

(declare-fun tp!61947 () Bool)

(declare-fun tp!61940 () Bool)

(assert (=> b!113707 (= e!64071 (and tp!61947 tp!61940))))

(declare-fun b!113708 () Bool)

(declare-fun e!64076 () Bool)

(declare-fun tp!61948 () Bool)

(assert (=> b!113708 (= e!64076 (and tp_is_empty!997 tp!61948))))

(declare-fun b!113709 () Bool)

(assert (=> b!113709 (= e!64078 e!64082)))

(declare-fun res!54266 () Bool)

(assert (=> b!113709 (=> (not res!54266) (not e!64082))))

(assert (=> b!113709 (= res!54266 (= lt!33159 totalInput!1363))))

(declare-fun ++!316 (List!1858 List!1858) List!1858)

(assert (=> b!113709 (= lt!33159 (++!316 testedP!367 testedSuffix!285))))

(declare-fun res!54267 () Bool)

(assert (=> start!11674 (=> (not res!54267) (not e!64078))))

(declare-fun r!15532 () Regex!471)

(declare-fun validRegex!84 (Regex!471) Bool)

(assert (=> start!11674 (= res!54267 (validRegex!84 r!15532))))

(assert (=> start!11674 e!64078))

(assert (=> start!11674 true))

(assert (=> start!11674 e!64071))

(assert (=> start!11674 e!64076))

(assert (=> start!11674 e!64073))

(assert (=> start!11674 e!64075))

(declare-fun inv!2355 (Cache!102) Bool)

(assert (=> start!11674 (and (inv!2355 cache!470) e!64069)))

(declare-fun b!113696 () Bool)

(declare-fun tp!61943 () Bool)

(assert (=> b!113696 (= e!64080 (and tp!61943 mapRes!1327))))

(declare-fun condMapEmpty!1327 () Bool)

(declare-fun mapDefault!1327 () List!1859)

(assert (=> b!113696 (= condMapEmpty!1327 (= (arr!559 (_values!615 (v!13205 (underlying!873 (v!13206 (underlying!874 (cache!785 cache!470))))))) ((as const (Array (_ BitVec 32) List!1859)) mapDefault!1327)))))

(assert (= (and start!11674 res!54267) b!113700))

(assert (= (and b!113700 res!54271) b!113709))

(assert (= (and b!113709 res!54266) b!113694))

(assert (= (and b!113694 res!54269) b!113704))

(assert (= (and b!113704 res!54270) b!113705))

(assert (= (and b!113705 (not res!54268)) b!113699))

(assert (= (and start!11674 ((_ is ElementMatch!471) r!15532)) b!113692))

(assert (= (and start!11674 ((_ is Concat!855) r!15532)) b!113691))

(assert (= (and start!11674 ((_ is Star!471) r!15532)) b!113703))

(assert (= (and start!11674 ((_ is Union!471) r!15532)) b!113707))

(assert (= (and start!11674 ((_ is Cons!1852) totalInput!1363)) b!113708))

(assert (= (and start!11674 ((_ is Cons!1852) testedSuffix!285)) b!113701))

(assert (= (and start!11674 ((_ is Cons!1852) testedP!367)) b!113690))

(assert (= (and b!113696 condMapEmpty!1327) mapIsEmpty!1327))

(assert (= (and b!113696 (not condMapEmpty!1327)) mapNonEmpty!1327))

(assert (= b!113706 b!113696))

(assert (= b!113693 b!113706))

(assert (= b!113697 b!113693))

(assert (= (and b!113698 ((_ is LongMap!337) (v!13206 (underlying!874 (cache!785 cache!470))))) b!113697))

(assert (= b!113695 b!113698))

(assert (= (and b!113702 ((_ is HashMap!333) (cache!785 cache!470))) b!113695))

(assert (= start!11674 b!113702))

(declare-fun m!102874 () Bool)

(assert (=> b!113709 m!102874))

(declare-fun m!102876 () Bool)

(assert (=> b!113705 m!102876))

(declare-fun m!102878 () Bool)

(assert (=> b!113705 m!102878))

(declare-fun m!102880 () Bool)

(assert (=> b!113705 m!102880))

(declare-fun m!102882 () Bool)

(assert (=> b!113704 m!102882))

(declare-fun m!102884 () Bool)

(assert (=> b!113706 m!102884))

(declare-fun m!102886 () Bool)

(assert (=> b!113706 m!102886))

(declare-fun m!102888 () Bool)

(assert (=> mapNonEmpty!1327 m!102888))

(declare-fun m!102890 () Bool)

(assert (=> b!113699 m!102890))

(declare-fun m!102892 () Bool)

(assert (=> b!113699 m!102892))

(declare-fun m!102894 () Bool)

(assert (=> start!11674 m!102894))

(declare-fun m!102896 () Bool)

(assert (=> start!11674 m!102896))

(declare-fun m!102898 () Bool)

(assert (=> b!113700 m!102898))

(declare-fun m!102900 () Bool)

(assert (=> b!113694 m!102900))

(check-sat b_and!5707 (not b!113701) (not b!113690) tp_is_empty!997 (not b!113691) (not b!113699) (not b!113707) (not b!113709) (not start!11674) (not b_next!3579) (not b!113704) (not mapNonEmpty!1327) (not b_next!3577) (not b!113700) (not b!113694) (not b!113708) (not b!113705) (not b!113703) (not b!113696) (not b!113706) b_and!5709)
(check-sat b_and!5709 b_and!5707 (not b_next!3579) (not b_next!3577))
