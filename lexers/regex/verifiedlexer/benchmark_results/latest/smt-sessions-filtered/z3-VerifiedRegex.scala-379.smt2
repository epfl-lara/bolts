; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11678 () Bool)

(assert start!11678)

(declare-fun b!113823 () Bool)

(declare-fun b_free!3585 () Bool)

(declare-fun b_next!3585 () Bool)

(assert (=> b!113823 (= b_free!3585 (not b_next!3585))))

(declare-fun tp!62036 () Bool)

(declare-fun b_and!5715 () Bool)

(assert (=> b!113823 (= tp!62036 b_and!5715)))

(declare-fun b!113822 () Bool)

(declare-fun b_free!3587 () Bool)

(declare-fun b_next!3587 () Bool)

(assert (=> b!113822 (= b_free!3587 (not b_next!3587))))

(declare-fun tp!62027 () Bool)

(declare-fun b_and!5717 () Bool)

(assert (=> b!113822 (= tp!62027 b_and!5717)))

(declare-fun b!113810 () Bool)

(declare-fun e!64166 () Bool)

(assert (=> b!113810 (= e!64166 true)))

(declare-datatypes ((C!1868 0))(
  ( (C!1869 (val!660 Int)) )
))
(declare-datatypes ((List!1862 0))(
  ( (Nil!1856) (Cons!1856 (h!7253 C!1868) (t!22339 List!1862)) )
))
(declare-fun lt!33198 () List!1862)

(declare-fun testedP!367 () List!1862)

(declare-fun lt!33196 () List!1862)

(declare-fun ++!318 (List!1862 List!1862) List!1862)

(assert (=> b!113810 (= lt!33198 (++!318 testedP!367 lt!33196))))

(declare-fun testedSuffix!285 () List!1862)

(assert (=> b!113810 (and (= testedSuffix!285 lt!33196) (= lt!33196 testedSuffix!285))))

(declare-fun totalInput!1363 () List!1862)

(declare-datatypes ((Unit!1327 0))(
  ( (Unit!1328) )
))
(declare-fun lt!33194 () Unit!1327)

(declare-fun lemmaSamePrefixThenSameSuffix!10 (List!1862 List!1862 List!1862 List!1862 List!1862) Unit!1327)

(assert (=> b!113810 (= lt!33194 (lemmaSamePrefixThenSameSuffix!10 testedP!367 testedSuffix!285 testedP!367 lt!33196 totalInput!1363))))

(declare-fun getSuffix!11 (List!1862 List!1862) List!1862)

(assert (=> b!113810 (= lt!33196 (getSuffix!11 totalInput!1363 testedP!367))))

(declare-fun mapNonEmpty!1333 () Bool)

(declare-fun mapRes!1333 () Bool)

(declare-fun tp!62031 () Bool)

(declare-fun tp!62035 () Bool)

(assert (=> mapNonEmpty!1333 (= mapRes!1333 (and tp!62031 tp!62035))))

(declare-datatypes ((Regex!473 0))(
  ( (ElementMatch!473 (c!26473 C!1868)) (Concat!857 (regOne!1458 Regex!473) (regTwo!1458 Regex!473)) (EmptyExpr!473) (Star!473 (reg!802 Regex!473)) (EmptyLang!473) (Union!473 (regOne!1459 Regex!473) (regTwo!1459 Regex!473)) )
))
(declare-datatypes ((tuple2!2012 0))(
  ( (tuple2!2013 (_1!1216 Regex!473) (_2!1216 C!1868)) )
))
(declare-datatypes ((tuple2!2014 0))(
  ( (tuple2!2015 (_1!1217 tuple2!2012) (_2!1217 Regex!473)) )
))
(declare-datatypes ((List!1863 0))(
  ( (Nil!1857) (Cons!1857 (h!7254 tuple2!2014) (t!22340 List!1863)) )
))
(declare-fun mapValue!1333 () List!1863)

(declare-datatypes ((Hashable!335 0))(
  ( (HashableExt!334 (__x!1942 Int)) )
))
(declare-datatypes ((array!1205 0))(
  ( (array!1206 (arr!562 (Array (_ BitVec 32) (_ BitVec 64))) (size!1644 (_ BitVec 32))) )
))
(declare-datatypes ((array!1207 0))(
  ( (array!1208 (arr!563 (Array (_ BitVec 32) List!1863)) (size!1645 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!678 0))(
  ( (LongMapFixedSize!679 (defaultEntry!678 Int) (mask!1243 (_ BitVec 32)) (extraKeys!585 (_ BitVec 32)) (zeroValue!595 List!1863) (minValue!595 List!1863) (_size!811 (_ BitVec 32)) (_keys!630 array!1205) (_values!617 array!1207) (_vacant!400 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1345 0))(
  ( (Cell!1346 (v!13209 LongMapFixedSize!678)) )
))
(declare-datatypes ((MutLongMap!339 0))(
  ( (LongMap!339 (underlying!877 Cell!1345)) (MutLongMapExt!338 (__x!1943 Int)) )
))
(declare-datatypes ((Cell!1347 0))(
  ( (Cell!1348 (v!13210 MutLongMap!339)) )
))
(declare-datatypes ((MutableMap!335 0))(
  ( (MutableMapExt!334 (__x!1944 Int)) (HashMap!335 (underlying!878 Cell!1347) (hashF!2211 Hashable!335) (_size!812 (_ BitVec 32)) (defaultValue!484 Int)) )
))
(declare-datatypes ((Cache!106 0))(
  ( (Cache!107 (cache!787 MutableMap!335)) )
))
(declare-fun cache!470 () Cache!106)

(declare-fun mapRest!1333 () (Array (_ BitVec 32) List!1863))

(declare-fun mapKey!1333 () (_ BitVec 32))

(assert (=> mapNonEmpty!1333 (= (arr!563 (_values!617 (v!13209 (underlying!877 (v!13210 (underlying!878 (cache!787 cache!470))))))) (store mapRest!1333 mapKey!1333 mapValue!1333))))

(declare-fun b!113811 () Bool)

(declare-fun e!64170 () Bool)

(declare-fun tp_is_empty!1001 () Bool)

(assert (=> b!113811 (= e!64170 tp_is_empty!1001)))

(declare-fun b!113812 () Bool)

(declare-fun e!64160 () Bool)

(declare-fun e!64169 () Bool)

(assert (=> b!113812 (= e!64160 e!64169)))

(declare-fun b!113813 () Bool)

(declare-fun res!54306 () Bool)

(declare-fun e!64165 () Bool)

(assert (=> b!113813 (=> (not res!54306) (not e!64165))))

(declare-fun testedPSize!285 () Int)

(declare-fun size!1646 (List!1862) Int)

(assert (=> b!113813 (= res!54306 (= testedPSize!285 (size!1646 testedP!367)))))

(declare-fun b!113814 () Bool)

(declare-fun e!64171 () Bool)

(declare-fun tp!62039 () Bool)

(assert (=> b!113814 (= e!64171 (and tp_is_empty!1001 tp!62039))))

(declare-fun mapIsEmpty!1333 () Bool)

(assert (=> mapIsEmpty!1333 mapRes!1333))

(declare-fun b!113816 () Bool)

(declare-fun res!54303 () Bool)

(declare-fun e!64159 () Bool)

(assert (=> b!113816 (=> (not res!54303) (not e!64159))))

(declare-fun valid!314 (Cache!106) Bool)

(assert (=> b!113816 (= res!54303 (valid!314 cache!470))))

(declare-fun b!113817 () Bool)

(declare-fun tp!62034 () Bool)

(declare-fun tp!62030 () Bool)

(assert (=> b!113817 (= e!64170 (and tp!62034 tp!62030))))

(declare-fun b!113818 () Bool)

(declare-fun e!64168 () Bool)

(assert (=> b!113818 (= e!64169 e!64168)))

(declare-fun b!113819 () Bool)

(declare-fun tp!62029 () Bool)

(declare-fun tp!62033 () Bool)

(assert (=> b!113819 (= e!64170 (and tp!62029 tp!62033))))

(declare-fun b!113820 () Bool)

(declare-fun e!64172 () Bool)

(declare-fun tp!62028 () Bool)

(assert (=> b!113820 (= e!64172 (and tp!62028 mapRes!1333))))

(declare-fun condMapEmpty!1333 () Bool)

(declare-fun mapDefault!1333 () List!1863)

(assert (=> b!113820 (= condMapEmpty!1333 (= (arr!563 (_values!617 (v!13209 (underlying!877 (v!13210 (underlying!878 (cache!787 cache!470))))))) ((as const (Array (_ BitVec 32) List!1863)) mapDefault!1333)))))

(declare-fun b!113821 () Bool)

(assert (=> b!113821 (= e!64159 e!64165)))

(declare-fun res!54302 () Bool)

(assert (=> b!113821 (=> (not res!54302) (not e!64165))))

(declare-fun lt!33197 () List!1862)

(assert (=> b!113821 (= res!54302 (= lt!33197 totalInput!1363))))

(assert (=> b!113821 (= lt!33197 (++!318 testedP!367 testedSuffix!285))))

(declare-fun e!64162 () Bool)

(declare-fun e!64158 () Bool)

(assert (=> b!113822 (= e!64162 (and e!64158 tp!62027))))

(declare-fun tp!62038 () Bool)

(declare-fun tp!62026 () Bool)

(declare-fun array_inv!397 (array!1205) Bool)

(declare-fun array_inv!398 (array!1207) Bool)

(assert (=> b!113823 (= e!64168 (and tp!62036 tp!62026 tp!62038 (array_inv!397 (_keys!630 (v!13209 (underlying!877 (v!13210 (underlying!878 (cache!787 cache!470))))))) (array_inv!398 (_values!617 (v!13209 (underlying!877 (v!13210 (underlying!878 (cache!787 cache!470))))))) e!64172))))

(declare-fun b!113824 () Bool)

(declare-fun tp!62025 () Bool)

(assert (=> b!113824 (= e!64170 tp!62025)))

(declare-fun b!113825 () Bool)

(declare-fun res!54304 () Bool)

(assert (=> b!113825 (=> (not res!54304) (not e!64165))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!113825 (= res!54304 (= totalInputSize!643 (size!1646 totalInput!1363)))))

(declare-fun b!113815 () Bool)

(declare-fun e!64163 () Bool)

(declare-fun tp!62037 () Bool)

(assert (=> b!113815 (= e!64163 (and tp_is_empty!1001 tp!62037))))

(declare-fun res!54305 () Bool)

(assert (=> start!11678 (=> (not res!54305) (not e!64159))))

(declare-fun r!15532 () Regex!473)

(declare-fun validRegex!86 (Regex!473) Bool)

(assert (=> start!11678 (= res!54305 (validRegex!86 r!15532))))

(assert (=> start!11678 e!64159))

(assert (=> start!11678 true))

(assert (=> start!11678 e!64170))

(declare-fun e!64161 () Bool)

(assert (=> start!11678 e!64161))

(assert (=> start!11678 e!64163))

(assert (=> start!11678 e!64171))

(declare-fun e!64164 () Bool)

(declare-fun inv!2360 (Cache!106) Bool)

(assert (=> start!11678 (and (inv!2360 cache!470) e!64164)))

(declare-fun b!113826 () Bool)

(declare-fun tp!62032 () Bool)

(assert (=> b!113826 (= e!64161 (and tp_is_empty!1001 tp!62032))))

(declare-fun b!113827 () Bool)

(assert (=> b!113827 (= e!64164 e!64162)))

(declare-fun b!113828 () Bool)

(declare-fun lt!33195 () MutLongMap!339)

(get-info :version)

(assert (=> b!113828 (= e!64158 (and e!64160 ((_ is LongMap!339) lt!33195)))))

(assert (=> b!113828 (= lt!33195 (v!13210 (underlying!878 (cache!787 cache!470))))))

(declare-fun b!113829 () Bool)

(assert (=> b!113829 (= e!64165 (not e!64166))))

(declare-fun res!54307 () Bool)

(assert (=> b!113829 (=> res!54307 e!64166)))

(declare-fun isPrefix!64 (List!1862 List!1862) Bool)

(assert (=> b!113829 (= res!54307 (not (isPrefix!64 testedP!367 totalInput!1363)))))

(assert (=> b!113829 (isPrefix!64 testedP!367 lt!33197)))

(declare-fun lt!33193 () Unit!1327)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!13 (List!1862 List!1862) Unit!1327)

(assert (=> b!113829 (= lt!33193 (lemmaConcatTwoListThenFirstIsPrefix!13 testedP!367 testedSuffix!285))))

(assert (= (and start!11678 res!54305) b!113816))

(assert (= (and b!113816 res!54303) b!113821))

(assert (= (and b!113821 res!54302) b!113813))

(assert (= (and b!113813 res!54306) b!113825))

(assert (= (and b!113825 res!54304) b!113829))

(assert (= (and b!113829 (not res!54307)) b!113810))

(assert (= (and start!11678 ((_ is ElementMatch!473) r!15532)) b!113811))

(assert (= (and start!11678 ((_ is Concat!857) r!15532)) b!113819))

(assert (= (and start!11678 ((_ is Star!473) r!15532)) b!113824))

(assert (= (and start!11678 ((_ is Union!473) r!15532)) b!113817))

(assert (= (and start!11678 ((_ is Cons!1856) totalInput!1363)) b!113826))

(assert (= (and start!11678 ((_ is Cons!1856) testedSuffix!285)) b!113815))

(assert (= (and start!11678 ((_ is Cons!1856) testedP!367)) b!113814))

(assert (= (and b!113820 condMapEmpty!1333) mapIsEmpty!1333))

(assert (= (and b!113820 (not condMapEmpty!1333)) mapNonEmpty!1333))

(assert (= b!113823 b!113820))

(assert (= b!113818 b!113823))

(assert (= b!113812 b!113818))

(assert (= (and b!113828 ((_ is LongMap!339) (v!13210 (underlying!878 (cache!787 cache!470))))) b!113812))

(assert (= b!113822 b!113828))

(assert (= (and b!113827 ((_ is HashMap!335) (cache!787 cache!470))) b!113822))

(assert (= start!11678 b!113827))

(declare-fun m!102932 () Bool)

(assert (=> mapNonEmpty!1333 m!102932))

(declare-fun m!102934 () Bool)

(assert (=> b!113810 m!102934))

(declare-fun m!102936 () Bool)

(assert (=> b!113810 m!102936))

(declare-fun m!102938 () Bool)

(assert (=> b!113810 m!102938))

(declare-fun m!102940 () Bool)

(assert (=> b!113823 m!102940))

(declare-fun m!102942 () Bool)

(assert (=> b!113823 m!102942))

(declare-fun m!102944 () Bool)

(assert (=> b!113825 m!102944))

(declare-fun m!102946 () Bool)

(assert (=> b!113813 m!102946))

(declare-fun m!102948 () Bool)

(assert (=> b!113816 m!102948))

(declare-fun m!102950 () Bool)

(assert (=> b!113829 m!102950))

(declare-fun m!102952 () Bool)

(assert (=> b!113829 m!102952))

(declare-fun m!102954 () Bool)

(assert (=> b!113829 m!102954))

(declare-fun m!102956 () Bool)

(assert (=> start!11678 m!102956))

(declare-fun m!102958 () Bool)

(assert (=> start!11678 m!102958))

(declare-fun m!102960 () Bool)

(assert (=> b!113821 m!102960))

(check-sat (not b!113825) b_and!5715 (not b!113821) (not mapNonEmpty!1333) (not b!113810) b_and!5717 (not b!113813) (not b!113823) (not b!113826) (not b!113819) (not b_next!3585) (not b!113815) (not b_next!3587) (not b!113816) (not b!113820) (not start!11678) (not b!113817) (not b!113829) (not b!113814) (not b!113824) tp_is_empty!1001)
(check-sat b_and!5717 b_and!5715 (not b_next!3587) (not b_next!3585))
