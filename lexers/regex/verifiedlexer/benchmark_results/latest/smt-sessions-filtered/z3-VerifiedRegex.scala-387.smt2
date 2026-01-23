; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11740 () Bool)

(assert start!11740)

(declare-fun b!115054 () Bool)

(declare-fun b_free!3649 () Bool)

(declare-fun b_next!3649 () Bool)

(assert (=> b!115054 (= b_free!3649 (not b_next!3649))))

(declare-fun tp!62829 () Bool)

(declare-fun b_and!5779 () Bool)

(assert (=> b!115054 (= tp!62829 b_and!5779)))

(declare-fun b!115055 () Bool)

(declare-fun b_free!3651 () Bool)

(declare-fun b_next!3651 () Bool)

(assert (=> b!115055 (= b_free!3651 (not b_next!3651))))

(declare-fun tp!62830 () Bool)

(declare-fun b_and!5781 () Bool)

(assert (=> b!115055 (= tp!62830 b_and!5781)))

(declare-fun b!115032 () Bool)

(declare-fun e!65104 () Bool)

(declare-fun e!65095 () Bool)

(assert (=> b!115032 (= e!65104 e!65095)))

(declare-fun res!54740 () Bool)

(assert (=> b!115032 (=> res!54740 e!65095)))

(declare-fun lt!33648 () Int)

(declare-fun lt!33656 () Int)

(assert (=> b!115032 (= res!54740 (>= lt!33648 lt!33656))))

(declare-datatypes ((Unit!1362 0))(
  ( (Unit!1363) )
))
(declare-fun lt!33658 () Unit!1362)

(declare-fun e!65091 () Unit!1362)

(assert (=> b!115032 (= lt!33658 e!65091)))

(declare-fun c!26522 () Bool)

(assert (=> b!115032 (= c!26522 (= lt!33648 lt!33656))))

(assert (=> b!115032 (<= lt!33648 lt!33656)))

(declare-fun lt!33655 () Unit!1362)

(declare-datatypes ((C!1900 0))(
  ( (C!1901 (val!676 Int)) )
))
(declare-datatypes ((List!1892 0))(
  ( (Nil!1886) (Cons!1886 (h!7283 C!1900) (t!22369 List!1892)) )
))
(declare-fun testedP!367 () List!1892)

(declare-fun totalInput!1363 () List!1892)

(declare-fun lemmaIsPrefixThenSmallerEqSize!8 (List!1892 List!1892) Unit!1362)

(assert (=> b!115032 (= lt!33655 (lemmaIsPrefixThenSmallerEqSize!8 testedP!367 totalInput!1363))))

(declare-fun b!115033 () Bool)

(declare-fun e!65093 () Bool)

(declare-fun e!65100 () Bool)

(assert (=> b!115033 (= e!65093 e!65100)))

(declare-fun res!54737 () Bool)

(assert (=> b!115033 (=> (not res!54737) (not e!65100))))

(declare-fun lt!33653 () List!1892)

(assert (=> b!115033 (= res!54737 (= lt!33653 totalInput!1363))))

(declare-fun testedSuffix!285 () List!1892)

(declare-fun ++!330 (List!1892 List!1892) List!1892)

(assert (=> b!115033 (= lt!33653 (++!330 testedP!367 testedSuffix!285))))

(declare-fun b!115034 () Bool)

(declare-fun e!65098 () Bool)

(assert (=> b!115034 (= e!65100 e!65098)))

(declare-fun res!54736 () Bool)

(assert (=> b!115034 (=> (not res!54736) (not e!65098))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!115034 (= res!54736 (= testedPSize!285 lt!33648))))

(declare-fun size!1689 (List!1892) Int)

(assert (=> b!115034 (= lt!33648 (size!1689 testedP!367))))

(declare-fun b!115035 () Bool)

(declare-fun e!65089 () Bool)

(declare-fun e!65097 () Bool)

(assert (=> b!115035 (= e!65089 e!65097)))

(declare-fun b!115036 () Bool)

(declare-fun e!65099 () Bool)

(declare-fun e!65094 () Bool)

(assert (=> b!115036 (= e!65099 e!65094)))

(declare-fun b!115037 () Bool)

(declare-fun e!65106 () Bool)

(assert (=> b!115037 (= e!65098 e!65106)))

(declare-fun res!54738 () Bool)

(assert (=> b!115037 (=> (not res!54738) (not e!65106))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!115037 (= res!54738 (= totalInputSize!643 lt!33656))))

(assert (=> b!115037 (= lt!33656 (size!1689 totalInput!1363))))

(declare-fun b!115038 () Bool)

(declare-fun e!65092 () Bool)

(declare-fun tp_is_empty!1033 () Bool)

(declare-fun tp!62838 () Bool)

(assert (=> b!115038 (= e!65092 (and tp_is_empty!1033 tp!62838))))

(declare-fun b!115039 () Bool)

(declare-fun Unit!1364 () Unit!1362)

(assert (=> b!115039 (= e!65091 Unit!1364)))

(declare-fun b!115040 () Bool)

(declare-fun Unit!1365 () Unit!1362)

(assert (=> b!115040 (= e!65091 Unit!1365)))

(declare-fun lt!33654 () Unit!1362)

(declare-fun lemmaIsPrefixRefl!61 (List!1892 List!1892) Unit!1362)

(assert (=> b!115040 (= lt!33654 (lemmaIsPrefixRefl!61 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!77 (List!1892 List!1892) Bool)

(assert (=> b!115040 (isPrefix!77 totalInput!1363 totalInput!1363)))

(declare-fun lt!33652 () Unit!1362)

(declare-fun lemmaIsPrefixSameLengthThenSameList!7 (List!1892 List!1892 List!1892) Unit!1362)

(assert (=> b!115040 (= lt!33652 (lemmaIsPrefixSameLengthThenSameList!7 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!115040 false))

(declare-fun b!115041 () Bool)

(declare-fun e!65105 () Bool)

(declare-fun tp!62837 () Bool)

(assert (=> b!115041 (= e!65105 tp!62837)))

(declare-fun b!115043 () Bool)

(declare-fun e!65101 () Bool)

(assert (=> b!115043 (= e!65101 e!65104)))

(declare-fun res!54739 () Bool)

(assert (=> b!115043 (=> res!54739 e!65104)))

(declare-datatypes ((Regex!489 0))(
  ( (ElementMatch!489 (c!26523 C!1900)) (Concat!873 (regOne!1490 Regex!489) (regTwo!1490 Regex!489)) (EmptyExpr!489) (Star!489 (reg!818 Regex!489)) (EmptyLang!489) (Union!489 (regOne!1491 Regex!489) (regTwo!1491 Regex!489)) )
))
(declare-fun r!15532 () Regex!489)

(declare-fun lostCause!34 (Regex!489) Bool)

(assert (=> b!115043 (= res!54739 (lostCause!34 r!15532))))

(declare-fun lt!33649 () List!1892)

(assert (=> b!115043 (and (= testedSuffix!285 lt!33649) (= lt!33649 testedSuffix!285))))

(declare-fun lt!33660 () Unit!1362)

(declare-fun lemmaSamePrefixThenSameSuffix!22 (List!1892 List!1892 List!1892 List!1892 List!1892) Unit!1362)

(assert (=> b!115043 (= lt!33660 (lemmaSamePrefixThenSameSuffix!22 testedP!367 testedSuffix!285 testedP!367 lt!33649 totalInput!1363))))

(declare-fun getSuffix!23 (List!1892 List!1892) List!1892)

(assert (=> b!115043 (= lt!33649 (getSuffix!23 totalInput!1363 testedP!367))))

(declare-fun b!115044 () Bool)

(assert (=> b!115044 (= e!65105 tp_is_empty!1033)))

(declare-fun b!115045 () Bool)

(declare-fun res!54734 () Bool)

(assert (=> b!115045 (=> (not res!54734) (not e!65093))))

(declare-datatypes ((Hashable!351 0))(
  ( (HashableExt!350 (__x!1990 Int)) )
))
(declare-datatypes ((tuple2!2076 0))(
  ( (tuple2!2077 (_1!1248 Regex!489) (_2!1248 C!1900)) )
))
(declare-datatypes ((tuple2!2078 0))(
  ( (tuple2!2079 (_1!1249 tuple2!2076) (_2!1249 Regex!489)) )
))
(declare-datatypes ((List!1893 0))(
  ( (Nil!1887) (Cons!1887 (h!7284 tuple2!2078) (t!22370 List!1893)) )
))
(declare-datatypes ((array!1271 0))(
  ( (array!1272 (arr!594 (Array (_ BitVec 32) (_ BitVec 64))) (size!1690 (_ BitVec 32))) )
))
(declare-datatypes ((array!1273 0))(
  ( (array!1274 (arr!595 (Array (_ BitVec 32) List!1893)) (size!1691 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!710 0))(
  ( (LongMapFixedSize!711 (defaultEntry!694 Int) (mask!1267 (_ BitVec 32)) (extraKeys!601 (_ BitVec 32)) (zeroValue!611 List!1893) (minValue!611 List!1893) (_size!843 (_ BitVec 32)) (_keys!646 array!1271) (_values!633 array!1273) (_vacant!416 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1409 0))(
  ( (Cell!1410 (v!13241 LongMapFixedSize!710)) )
))
(declare-datatypes ((MutLongMap!355 0))(
  ( (LongMap!355 (underlying!909 Cell!1409)) (MutLongMapExt!354 (__x!1991 Int)) )
))
(declare-datatypes ((Cell!1411 0))(
  ( (Cell!1412 (v!13242 MutLongMap!355)) )
))
(declare-datatypes ((MutableMap!351 0))(
  ( (MutableMapExt!350 (__x!1992 Int)) (HashMap!351 (underlying!910 Cell!1411) (hashF!2227 Hashable!351) (_size!844 (_ BitVec 32)) (defaultValue!500 Int)) )
))
(declare-datatypes ((Cache!138 0))(
  ( (Cache!139 (cache!803 MutableMap!351)) )
))
(declare-fun cache!470 () Cache!138)

(declare-fun valid!324 (Cache!138) Bool)

(assert (=> b!115045 (= res!54734 (valid!324 cache!470))))

(declare-fun b!115046 () Bool)

(assert (=> b!115046 (= e!65095 true)))

(declare-fun head!472 (List!1892) C!1900)

(assert (=> b!115046 (isPrefix!77 (++!330 testedP!367 (Cons!1886 (head!472 lt!33649) Nil!1886)) totalInput!1363)))

(declare-fun lt!33651 () Unit!1362)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!2 (List!1892 List!1892) Unit!1362)

(assert (=> b!115046 (= lt!33651 (lemmaAddHeadSuffixToPrefixStillPrefix!2 testedP!367 totalInput!1363))))

(declare-fun lt!33657 () List!1892)

(assert (=> b!115046 (= lt!33657 (++!330 testedP!367 (Cons!1886 (head!472 testedSuffix!285) Nil!1886)))))

(declare-fun b!115047 () Bool)

(declare-fun e!65087 () Bool)

(assert (=> b!115047 (= e!65087 e!65089)))

(declare-fun b!115048 () Bool)

(declare-fun e!65090 () Bool)

(declare-fun tp!62836 () Bool)

(assert (=> b!115048 (= e!65090 (and tp_is_empty!1033 tp!62836))))

(declare-fun b!115049 () Bool)

(declare-fun e!65103 () Bool)

(declare-fun tp!62824 () Bool)

(assert (=> b!115049 (= e!65103 (and tp_is_empty!1033 tp!62824))))

(declare-fun b!115050 () Bool)

(declare-fun res!54735 () Bool)

(assert (=> b!115050 (=> res!54735 e!65104)))

(assert (=> b!115050 (= res!54735 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!115051 () Bool)

(assert (=> b!115051 (= e!65106 (not e!65101))))

(declare-fun res!54741 () Bool)

(assert (=> b!115051 (=> res!54741 e!65101)))

(assert (=> b!115051 (= res!54741 (not (isPrefix!77 testedP!367 totalInput!1363)))))

(assert (=> b!115051 (isPrefix!77 testedP!367 lt!33653)))

(declare-fun lt!33650 () Unit!1362)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!25 (List!1892 List!1892) Unit!1362)

(assert (=> b!115051 (= lt!33650 (lemmaConcatTwoListThenFirstIsPrefix!25 testedP!367 testedSuffix!285))))

(declare-fun b!115052 () Bool)

(declare-fun tp!62828 () Bool)

(declare-fun tp!62834 () Bool)

(assert (=> b!115052 (= e!65105 (and tp!62828 tp!62834))))

(declare-fun b!115053 () Bool)

(declare-fun e!65096 () Bool)

(declare-fun lt!33659 () MutLongMap!355)

(get-info :version)

(assert (=> b!115053 (= e!65096 (and e!65087 ((_ is LongMap!355) lt!33659)))))

(assert (=> b!115053 (= lt!33659 (v!13242 (underlying!910 (cache!803 cache!470))))))

(assert (=> b!115054 (= e!65094 (and e!65096 tp!62829))))

(declare-fun e!65088 () Bool)

(declare-fun tp!62833 () Bool)

(declare-fun tp!62826 () Bool)

(declare-fun array_inv!421 (array!1271) Bool)

(declare-fun array_inv!422 (array!1273) Bool)

(assert (=> b!115055 (= e!65097 (and tp!62830 tp!62833 tp!62826 (array_inv!421 (_keys!646 (v!13241 (underlying!909 (v!13242 (underlying!910 (cache!803 cache!470))))))) (array_inv!422 (_values!633 (v!13241 (underlying!909 (v!13242 (underlying!910 (cache!803 cache!470))))))) e!65088))))

(declare-fun mapIsEmpty!1384 () Bool)

(declare-fun mapRes!1384 () Bool)

(assert (=> mapIsEmpty!1384 mapRes!1384))

(declare-fun b!115042 () Bool)

(declare-fun tp!62835 () Bool)

(assert (=> b!115042 (= e!65088 (and tp!62835 mapRes!1384))))

(declare-fun condMapEmpty!1384 () Bool)

(declare-fun mapDefault!1384 () List!1893)

(assert (=> b!115042 (= condMapEmpty!1384 (= (arr!595 (_values!633 (v!13241 (underlying!909 (v!13242 (underlying!910 (cache!803 cache!470))))))) ((as const (Array (_ BitVec 32) List!1893)) mapDefault!1384)))))

(declare-fun res!54733 () Bool)

(assert (=> start!11740 (=> (not res!54733) (not e!65093))))

(declare-fun validRegex!98 (Regex!489) Bool)

(assert (=> start!11740 (= res!54733 (validRegex!98 r!15532))))

(assert (=> start!11740 e!65093))

(assert (=> start!11740 true))

(assert (=> start!11740 e!65105))

(assert (=> start!11740 e!65092))

(assert (=> start!11740 e!65090))

(assert (=> start!11740 e!65103))

(declare-fun inv!2396 (Cache!138) Bool)

(assert (=> start!11740 (and (inv!2396 cache!470) e!65099)))

(declare-fun b!115056 () Bool)

(declare-fun tp!62827 () Bool)

(declare-fun tp!62831 () Bool)

(assert (=> b!115056 (= e!65105 (and tp!62827 tp!62831))))

(declare-fun mapNonEmpty!1384 () Bool)

(declare-fun tp!62832 () Bool)

(declare-fun tp!62825 () Bool)

(assert (=> mapNonEmpty!1384 (= mapRes!1384 (and tp!62832 tp!62825))))

(declare-fun mapRest!1384 () (Array (_ BitVec 32) List!1893))

(declare-fun mapKey!1384 () (_ BitVec 32))

(declare-fun mapValue!1384 () List!1893)

(assert (=> mapNonEmpty!1384 (= (arr!595 (_values!633 (v!13241 (underlying!909 (v!13242 (underlying!910 (cache!803 cache!470))))))) (store mapRest!1384 mapKey!1384 mapValue!1384))))

(assert (= (and start!11740 res!54733) b!115045))

(assert (= (and b!115045 res!54734) b!115033))

(assert (= (and b!115033 res!54737) b!115034))

(assert (= (and b!115034 res!54736) b!115037))

(assert (= (and b!115037 res!54738) b!115051))

(assert (= (and b!115051 (not res!54741)) b!115043))

(assert (= (and b!115043 (not res!54739)) b!115050))

(assert (= (and b!115050 (not res!54735)) b!115032))

(assert (= (and b!115032 c!26522) b!115040))

(assert (= (and b!115032 (not c!26522)) b!115039))

(assert (= (and b!115032 (not res!54740)) b!115046))

(assert (= (and start!11740 ((_ is ElementMatch!489) r!15532)) b!115044))

(assert (= (and start!11740 ((_ is Concat!873) r!15532)) b!115052))

(assert (= (and start!11740 ((_ is Star!489) r!15532)) b!115041))

(assert (= (and start!11740 ((_ is Union!489) r!15532)) b!115056))

(assert (= (and start!11740 ((_ is Cons!1886) totalInput!1363)) b!115038))

(assert (= (and start!11740 ((_ is Cons!1886) testedSuffix!285)) b!115048))

(assert (= (and start!11740 ((_ is Cons!1886) testedP!367)) b!115049))

(assert (= (and b!115042 condMapEmpty!1384) mapIsEmpty!1384))

(assert (= (and b!115042 (not condMapEmpty!1384)) mapNonEmpty!1384))

(assert (= b!115055 b!115042))

(assert (= b!115035 b!115055))

(assert (= b!115047 b!115035))

(assert (= (and b!115053 ((_ is LongMap!355) (v!13242 (underlying!910 (cache!803 cache!470))))) b!115047))

(assert (= b!115054 b!115053))

(assert (= (and b!115036 ((_ is HashMap!351) (cache!803 cache!470))) b!115054))

(assert (= start!11740 b!115036))

(declare-fun m!103572 () Bool)

(assert (=> start!11740 m!103572))

(declare-fun m!103574 () Bool)

(assert (=> start!11740 m!103574))

(declare-fun m!103576 () Bool)

(assert (=> b!115045 m!103576))

(declare-fun m!103578 () Bool)

(assert (=> b!115033 m!103578))

(declare-fun m!103580 () Bool)

(assert (=> b!115034 m!103580))

(declare-fun m!103582 () Bool)

(assert (=> b!115043 m!103582))

(declare-fun m!103584 () Bool)

(assert (=> b!115043 m!103584))

(declare-fun m!103586 () Bool)

(assert (=> b!115043 m!103586))

(declare-fun m!103588 () Bool)

(assert (=> b!115037 m!103588))

(declare-fun m!103590 () Bool)

(assert (=> b!115032 m!103590))

(declare-fun m!103592 () Bool)

(assert (=> b!115051 m!103592))

(declare-fun m!103594 () Bool)

(assert (=> b!115051 m!103594))

(declare-fun m!103596 () Bool)

(assert (=> b!115051 m!103596))

(declare-fun m!103598 () Bool)

(assert (=> b!115055 m!103598))

(declare-fun m!103600 () Bool)

(assert (=> b!115055 m!103600))

(declare-fun m!103602 () Bool)

(assert (=> b!115040 m!103602))

(declare-fun m!103604 () Bool)

(assert (=> b!115040 m!103604))

(declare-fun m!103606 () Bool)

(assert (=> b!115040 m!103606))

(declare-fun m!103608 () Bool)

(assert (=> b!115046 m!103608))

(declare-fun m!103610 () Bool)

(assert (=> b!115046 m!103610))

(declare-fun m!103612 () Bool)

(assert (=> b!115046 m!103612))

(declare-fun m!103614 () Bool)

(assert (=> b!115046 m!103614))

(assert (=> b!115046 m!103614))

(declare-fun m!103616 () Bool)

(assert (=> b!115046 m!103616))

(declare-fun m!103618 () Bool)

(assert (=> b!115046 m!103618))

(declare-fun m!103620 () Bool)

(assert (=> mapNonEmpty!1384 m!103620))

(check-sat (not b!115038) (not b!115049) (not b!115041) (not b!115032) (not b!115045) (not b_next!3649) (not b!115052) (not b!115056) (not start!11740) (not b!115040) tp_is_empty!1033 (not b!115043) (not b!115034) b_and!5779 (not b!115042) (not b!115051) (not mapNonEmpty!1384) (not b!115033) (not b!115037) (not b!115046) (not b_next!3651) (not b!115055) (not b!115048) b_and!5781)
(check-sat b_and!5779 b_and!5781 (not b_next!3649) (not b_next!3651))
