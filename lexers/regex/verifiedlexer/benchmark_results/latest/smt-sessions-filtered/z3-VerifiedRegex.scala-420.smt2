; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12438 () Bool)

(assert start!12438)

(declare-fun b!122927 () Bool)

(declare-fun b_free!3913 () Bool)

(declare-fun b_next!3913 () Bool)

(assert (=> b!122927 (= b_free!3913 (not b_next!3913))))

(declare-fun tp!67410 () Bool)

(declare-fun b_and!6043 () Bool)

(assert (=> b!122927 (= tp!67410 b_and!6043)))

(declare-fun b!122924 () Bool)

(declare-fun b_free!3915 () Bool)

(declare-fun b_next!3915 () Bool)

(assert (=> b!122924 (= b_free!3915 (not b_next!3915))))

(declare-fun tp!67405 () Bool)

(declare-fun b_and!6045 () Bool)

(assert (=> b!122924 (= tp!67405 b_and!6045)))

(declare-fun b!122913 () Bool)

(declare-fun e!70592 () Bool)

(declare-fun tp!67411 () Bool)

(assert (=> b!122913 (= e!70592 tp!67411)))

(declare-fun b!122914 () Bool)

(declare-fun res!57415 () Bool)

(declare-fun e!70582 () Bool)

(assert (=> b!122914 (=> res!57415 e!70582)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!122914 (= res!57415 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!122915 () Bool)

(declare-fun e!70581 () Bool)

(declare-fun e!70583 () Bool)

(assert (=> b!122915 (= e!70581 e!70583)))

(declare-fun res!57418 () Bool)

(assert (=> b!122915 (=> (not res!57418) (not e!70583))))

(declare-fun lt!37058 () Int)

(assert (=> b!122915 (= res!57418 (= totalInputSize!643 lt!37058))))

(declare-datatypes ((C!2032 0))(
  ( (C!2033 (val!742 Int)) )
))
(declare-datatypes ((List!2020 0))(
  ( (Nil!2014) (Cons!2014 (h!7411 C!2032) (t!22497 List!2020)) )
))
(declare-fun totalInput!1363 () List!2020)

(declare-fun size!1875 (List!2020) Int)

(assert (=> b!122915 (= lt!37058 (size!1875 totalInput!1363))))

(declare-fun b!122916 () Bool)

(declare-fun e!70584 () Bool)

(assert (=> b!122916 (= e!70582 e!70584)))

(declare-fun res!57420 () Bool)

(assert (=> b!122916 (=> res!57420 e!70584)))

(declare-fun lt!37066 () Int)

(assert (=> b!122916 (= res!57420 (>= lt!37066 lt!37058))))

(declare-datatypes ((Unit!1556 0))(
  ( (Unit!1557) )
))
(declare-fun lt!37072 () Unit!1556)

(declare-fun e!70589 () Unit!1556)

(assert (=> b!122916 (= lt!37072 e!70589)))

(declare-fun c!27246 () Bool)

(assert (=> b!122916 (= c!27246 (= lt!37066 lt!37058))))

(assert (=> b!122916 (<= lt!37066 lt!37058)))

(declare-fun lt!37070 () Unit!1556)

(declare-fun testedP!367 () List!2020)

(declare-fun lemmaIsPrefixThenSmallerEqSize!43 (List!2020 List!2020) Unit!1556)

(assert (=> b!122916 (= lt!37070 (lemmaIsPrefixThenSmallerEqSize!43 testedP!367 totalInput!1363))))

(declare-fun b!122917 () Bool)

(declare-fun tp!67417 () Bool)

(declare-fun tp!67412 () Bool)

(assert (=> b!122917 (= e!70592 (and tp!67417 tp!67412))))

(declare-fun b!122918 () Bool)

(declare-fun e!70580 () Bool)

(declare-datatypes ((Regex!555 0))(
  ( (ElementMatch!555 (c!27247 C!2032)) (Concat!939 (regOne!1622 Regex!555) (regTwo!1622 Regex!555)) (EmptyExpr!555) (Star!555 (reg!884 Regex!555)) (EmptyLang!555) (Union!555 (regOne!1623 Regex!555) (regTwo!1623 Regex!555)) )
))
(declare-fun r!15532 () Regex!555)

(declare-fun lt!37067 () C!2032)

(declare-fun validRegex!149 (Regex!555) Bool)

(declare-fun derivativeStep!61 (Regex!555 C!2032) Regex!555)

(assert (=> b!122918 (= e!70580 (validRegex!149 (derivativeStep!61 r!15532 lt!37067)))))

(declare-fun b!122919 () Bool)

(declare-fun e!70590 () Bool)

(declare-fun e!70587 () Bool)

(assert (=> b!122919 (= e!70590 e!70587)))

(declare-fun res!57416 () Bool)

(assert (=> b!122919 (=> (not res!57416) (not e!70587))))

(declare-fun lt!37063 () List!2020)

(assert (=> b!122919 (= res!57416 (= lt!37063 totalInput!1363))))

(declare-fun testedSuffix!285 () List!2020)

(declare-fun ++!381 (List!2020 List!2020) List!2020)

(assert (=> b!122919 (= lt!37063 (++!381 testedP!367 testedSuffix!285))))

(declare-fun b!122920 () Bool)

(declare-fun e!70575 () Bool)

(declare-fun e!70586 () Bool)

(assert (=> b!122920 (= e!70575 e!70586)))

(declare-fun b!122921 () Bool)

(declare-fun Unit!1558 () Unit!1556)

(assert (=> b!122921 (= e!70589 Unit!1558)))

(declare-fun mapNonEmpty!1629 () Bool)

(declare-fun mapRes!1629 () Bool)

(declare-fun tp!67415 () Bool)

(declare-fun tp!67419 () Bool)

(assert (=> mapNonEmpty!1629 (= mapRes!1629 (and tp!67415 tp!67419))))

(declare-datatypes ((Hashable!417 0))(
  ( (HashableExt!416 (__x!2188 Int)) )
))
(declare-datatypes ((tuple2!2362 0))(
  ( (tuple2!2363 (_1!1391 Regex!555) (_2!1391 C!2032)) )
))
(declare-datatypes ((tuple2!2364 0))(
  ( (tuple2!2365 (_1!1392 tuple2!2362) (_2!1392 Regex!555)) )
))
(declare-datatypes ((List!2021 0))(
  ( (Nil!2015) (Cons!2015 (h!7412 tuple2!2364) (t!22498 List!2021)) )
))
(declare-datatypes ((array!1565 0))(
  ( (array!1566 (arr!726 (Array (_ BitVec 32) (_ BitVec 64))) (size!1876 (_ BitVec 32))) )
))
(declare-datatypes ((array!1567 0))(
  ( (array!1568 (arr!727 (Array (_ BitVec 32) List!2021)) (size!1877 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!842 0))(
  ( (LongMapFixedSize!843 (defaultEntry!760 Int) (mask!1366 (_ BitVec 32)) (extraKeys!667 (_ BitVec 32)) (zeroValue!677 List!2021) (minValue!677 List!2021) (_size!975 (_ BitVec 32)) (_keys!712 array!1565) (_values!699 array!1567) (_vacant!482 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1673 0))(
  ( (Cell!1674 (v!13374 LongMapFixedSize!842)) )
))
(declare-datatypes ((MutLongMap!421 0))(
  ( (LongMap!421 (underlying!1041 Cell!1673)) (MutLongMapExt!420 (__x!2189 Int)) )
))
(declare-datatypes ((Cell!1675 0))(
  ( (Cell!1676 (v!13375 MutLongMap!421)) )
))
(declare-datatypes ((MutableMap!417 0))(
  ( (MutableMapExt!416 (__x!2190 Int)) (HashMap!417 (underlying!1042 Cell!1675) (hashF!2293 Hashable!417) (_size!976 (_ BitVec 32)) (defaultValue!566 Int)) )
))
(declare-datatypes ((Cache!270 0))(
  ( (Cache!271 (cache!871 MutableMap!417)) )
))
(declare-fun cache!470 () Cache!270)

(declare-fun mapKey!1629 () (_ BitVec 32))

(declare-fun mapRest!1629 () (Array (_ BitVec 32) List!2021))

(declare-fun mapValue!1629 () List!2021)

(assert (=> mapNonEmpty!1629 (= (arr!727 (_values!699 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470))))))) (store mapRest!1629 mapKey!1629 mapValue!1629))))

(declare-fun b!122922 () Bool)

(assert (=> b!122922 (= e!70587 e!70581)))

(declare-fun res!57422 () Bool)

(assert (=> b!122922 (=> (not res!57422) (not e!70581))))

(assert (=> b!122922 (= res!57422 (= testedPSize!285 lt!37066))))

(assert (=> b!122922 (= lt!37066 (size!1875 testedP!367))))

(declare-fun b!122923 () Bool)

(declare-fun Unit!1559 () Unit!1556)

(assert (=> b!122923 (= e!70589 Unit!1559)))

(declare-fun lt!37068 () Unit!1556)

(declare-fun lemmaIsPrefixRefl!101 (List!2020 List!2020) Unit!1556)

(assert (=> b!122923 (= lt!37068 (lemmaIsPrefixRefl!101 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!131 (List!2020 List!2020) Bool)

(assert (=> b!122923 (isPrefix!131 totalInput!1363 totalInput!1363)))

(declare-fun lt!37061 () Unit!1556)

(declare-fun lemmaIsPrefixSameLengthThenSameList!44 (List!2020 List!2020 List!2020) Unit!1556)

(assert (=> b!122923 (= lt!37061 (lemmaIsPrefixSameLengthThenSameList!44 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!122923 false))

(declare-fun tp!67413 () Bool)

(declare-fun tp!67416 () Bool)

(declare-fun e!70574 () Bool)

(declare-fun array_inv!523 (array!1565) Bool)

(declare-fun array_inv!524 (array!1567) Bool)

(assert (=> b!122924 (= e!70586 (and tp!67405 tp!67413 tp!67416 (array_inv!523 (_keys!712 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470))))))) (array_inv!524 (_values!699 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470))))))) e!70574))))

(declare-fun b!122925 () Bool)

(declare-fun e!70578 () Bool)

(declare-fun tp_is_empty!1165 () Bool)

(declare-fun tp!67406 () Bool)

(assert (=> b!122925 (= e!70578 (and tp_is_empty!1165 tp!67406))))

(declare-fun mapIsEmpty!1629 () Bool)

(assert (=> mapIsEmpty!1629 mapRes!1629))

(declare-fun res!57417 () Bool)

(assert (=> start!12438 (=> (not res!57417) (not e!70590))))

(assert (=> start!12438 (= res!57417 (validRegex!149 r!15532))))

(assert (=> start!12438 e!70590))

(assert (=> start!12438 true))

(assert (=> start!12438 e!70592))

(declare-fun e!70576 () Bool)

(assert (=> start!12438 e!70576))

(declare-fun e!70577 () Bool)

(assert (=> start!12438 e!70577))

(assert (=> start!12438 e!70578))

(declare-fun e!70593 () Bool)

(declare-fun inv!2545 (Cache!270) Bool)

(assert (=> start!12438 (and (inv!2545 cache!470) e!70593)))

(declare-fun b!122926 () Bool)

(declare-fun e!70588 () Bool)

(declare-fun e!70579 () Bool)

(declare-fun lt!37060 () MutLongMap!421)

(get-info :version)

(assert (=> b!122926 (= e!70588 (and e!70579 ((_ is LongMap!421) lt!37060)))))

(assert (=> b!122926 (= lt!37060 (v!13375 (underlying!1042 (cache!871 cache!470))))))

(declare-fun e!70585 () Bool)

(assert (=> b!122927 (= e!70585 (and e!70588 tp!67410))))

(declare-fun b!122928 () Bool)

(declare-fun tp!67408 () Bool)

(declare-fun tp!67409 () Bool)

(assert (=> b!122928 (= e!70592 (and tp!67408 tp!67409))))

(declare-fun b!122929 () Bool)

(declare-fun tp!67407 () Bool)

(assert (=> b!122929 (= e!70574 (and tp!67407 mapRes!1629))))

(declare-fun condMapEmpty!1629 () Bool)

(declare-fun mapDefault!1629 () List!2021)

(assert (=> b!122929 (= condMapEmpty!1629 (= (arr!727 (_values!699 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470))))))) ((as const (Array (_ BitVec 32) List!2021)) mapDefault!1629)))))

(declare-fun b!122930 () Bool)

(declare-fun tp!67418 () Bool)

(assert (=> b!122930 (= e!70576 (and tp_is_empty!1165 tp!67418))))

(declare-fun b!122931 () Bool)

(declare-fun e!70591 () Bool)

(assert (=> b!122931 (= e!70583 (not e!70591))))

(declare-fun res!57413 () Bool)

(assert (=> b!122931 (=> res!57413 e!70591)))

(assert (=> b!122931 (= res!57413 (not (isPrefix!131 testedP!367 totalInput!1363)))))

(assert (=> b!122931 (isPrefix!131 testedP!367 lt!37063)))

(declare-fun lt!37064 () Unit!1556)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!74 (List!2020 List!2020) Unit!1556)

(assert (=> b!122931 (= lt!37064 (lemmaConcatTwoListThenFirstIsPrefix!74 testedP!367 testedSuffix!285))))

(declare-fun b!122932 () Bool)

(declare-fun tp!67414 () Bool)

(assert (=> b!122932 (= e!70577 (and tp_is_empty!1165 tp!67414))))

(declare-fun b!122933 () Bool)

(assert (=> b!122933 (= e!70579 e!70575)))

(declare-fun b!122934 () Bool)

(declare-fun res!57419 () Bool)

(assert (=> b!122934 (=> (not res!57419) (not e!70590))))

(declare-fun valid!378 (Cache!270) Bool)

(assert (=> b!122934 (= res!57419 (valid!378 cache!470))))

(declare-fun b!122935 () Bool)

(assert (=> b!122935 (= e!70592 tp_is_empty!1165)))

(declare-fun b!122936 () Bool)

(assert (=> b!122936 (= e!70591 e!70582)))

(declare-fun res!57421 () Bool)

(assert (=> b!122936 (=> res!57421 e!70582)))

(declare-fun lostCause!74 (Regex!555) Bool)

(assert (=> b!122936 (= res!57421 (lostCause!74 r!15532))))

(declare-fun lt!37071 () List!2020)

(assert (=> b!122936 (and (= testedSuffix!285 lt!37071) (= lt!37071 testedSuffix!285))))

(declare-fun lt!37059 () Unit!1556)

(declare-fun lemmaSamePrefixThenSameSuffix!65 (List!2020 List!2020 List!2020 List!2020 List!2020) Unit!1556)

(assert (=> b!122936 (= lt!37059 (lemmaSamePrefixThenSameSuffix!65 testedP!367 testedSuffix!285 testedP!367 lt!37071 totalInput!1363))))

(declare-fun getSuffix!69 (List!2020 List!2020) List!2020)

(assert (=> b!122936 (= lt!37071 (getSuffix!69 totalInput!1363 testedP!367))))

(declare-fun b!122937 () Bool)

(assert (=> b!122937 (= e!70593 e!70585)))

(declare-fun b!122938 () Bool)

(assert (=> b!122938 (= e!70584 e!70580)))

(declare-fun res!57414 () Bool)

(assert (=> b!122938 (=> res!57414 e!70580)))

(declare-fun nullable!90 (Regex!555) Bool)

(assert (=> b!122938 (= res!57414 (nullable!90 r!15532))))

(declare-fun lt!37073 () List!2020)

(declare-fun lt!37065 () List!2020)

(assert (=> b!122938 (= (++!381 lt!37073 lt!37065) totalInput!1363)))

(declare-fun lt!37069 () Unit!1556)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!27 (List!2020 C!2032 List!2020 List!2020) Unit!1556)

(assert (=> b!122938 (= lt!37069 (lemmaMoveElementToOtherListKeepsConcatEq!27 testedP!367 lt!37067 lt!37065 totalInput!1363))))

(declare-fun tail!240 (List!2020) List!2020)

(assert (=> b!122938 (= lt!37065 (tail!240 testedSuffix!285))))

(declare-fun head!504 (List!2020) C!2032)

(assert (=> b!122938 (isPrefix!131 (++!381 testedP!367 (Cons!2014 (head!504 lt!37071) Nil!2014)) totalInput!1363)))

(declare-fun lt!37062 () Unit!1556)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!33 (List!2020 List!2020) Unit!1556)

(assert (=> b!122938 (= lt!37062 (lemmaAddHeadSuffixToPrefixStillPrefix!33 testedP!367 totalInput!1363))))

(assert (=> b!122938 (= lt!37073 (++!381 testedP!367 (Cons!2014 lt!37067 Nil!2014)))))

(assert (=> b!122938 (= lt!37067 (head!504 testedSuffix!285))))

(assert (= (and start!12438 res!57417) b!122934))

(assert (= (and b!122934 res!57419) b!122919))

(assert (= (and b!122919 res!57416) b!122922))

(assert (= (and b!122922 res!57422) b!122915))

(assert (= (and b!122915 res!57418) b!122931))

(assert (= (and b!122931 (not res!57413)) b!122936))

(assert (= (and b!122936 (not res!57421)) b!122914))

(assert (= (and b!122914 (not res!57415)) b!122916))

(assert (= (and b!122916 c!27246) b!122923))

(assert (= (and b!122916 (not c!27246)) b!122921))

(assert (= (and b!122916 (not res!57420)) b!122938))

(assert (= (and b!122938 (not res!57414)) b!122918))

(assert (= (and start!12438 ((_ is ElementMatch!555) r!15532)) b!122935))

(assert (= (and start!12438 ((_ is Concat!939) r!15532)) b!122917))

(assert (= (and start!12438 ((_ is Star!555) r!15532)) b!122913))

(assert (= (and start!12438 ((_ is Union!555) r!15532)) b!122928))

(assert (= (and start!12438 ((_ is Cons!2014) totalInput!1363)) b!122930))

(assert (= (and start!12438 ((_ is Cons!2014) testedSuffix!285)) b!122932))

(assert (= (and start!12438 ((_ is Cons!2014) testedP!367)) b!122925))

(assert (= (and b!122929 condMapEmpty!1629) mapIsEmpty!1629))

(assert (= (and b!122929 (not condMapEmpty!1629)) mapNonEmpty!1629))

(assert (= b!122924 b!122929))

(assert (= b!122920 b!122924))

(assert (= b!122933 b!122920))

(assert (= (and b!122926 ((_ is LongMap!421) (v!13375 (underlying!1042 (cache!871 cache!470))))) b!122933))

(assert (= b!122927 b!122926))

(assert (= (and b!122937 ((_ is HashMap!417) (cache!871 cache!470))) b!122927))

(assert (= start!12438 b!122937))

(declare-fun m!108870 () Bool)

(assert (=> b!122931 m!108870))

(declare-fun m!108872 () Bool)

(assert (=> b!122931 m!108872))

(declare-fun m!108874 () Bool)

(assert (=> b!122931 m!108874))

(declare-fun m!108876 () Bool)

(assert (=> b!122915 m!108876))

(declare-fun m!108878 () Bool)

(assert (=> b!122918 m!108878))

(assert (=> b!122918 m!108878))

(declare-fun m!108880 () Bool)

(assert (=> b!122918 m!108880))

(declare-fun m!108882 () Bool)

(assert (=> start!12438 m!108882))

(declare-fun m!108884 () Bool)

(assert (=> start!12438 m!108884))

(declare-fun m!108886 () Bool)

(assert (=> mapNonEmpty!1629 m!108886))

(declare-fun m!108888 () Bool)

(assert (=> b!122924 m!108888))

(declare-fun m!108890 () Bool)

(assert (=> b!122924 m!108890))

(declare-fun m!108892 () Bool)

(assert (=> b!122936 m!108892))

(declare-fun m!108894 () Bool)

(assert (=> b!122936 m!108894))

(declare-fun m!108896 () Bool)

(assert (=> b!122936 m!108896))

(declare-fun m!108898 () Bool)

(assert (=> b!122922 m!108898))

(declare-fun m!108900 () Bool)

(assert (=> b!122934 m!108900))

(declare-fun m!108902 () Bool)

(assert (=> b!122919 m!108902))

(declare-fun m!108904 () Bool)

(assert (=> b!122938 m!108904))

(declare-fun m!108906 () Bool)

(assert (=> b!122938 m!108906))

(declare-fun m!108908 () Bool)

(assert (=> b!122938 m!108908))

(declare-fun m!108910 () Bool)

(assert (=> b!122938 m!108910))

(declare-fun m!108912 () Bool)

(assert (=> b!122938 m!108912))

(declare-fun m!108914 () Bool)

(assert (=> b!122938 m!108914))

(declare-fun m!108916 () Bool)

(assert (=> b!122938 m!108916))

(declare-fun m!108918 () Bool)

(assert (=> b!122938 m!108918))

(assert (=> b!122938 m!108908))

(declare-fun m!108920 () Bool)

(assert (=> b!122938 m!108920))

(declare-fun m!108922 () Bool)

(assert (=> b!122938 m!108922))

(declare-fun m!108924 () Bool)

(assert (=> b!122923 m!108924))

(declare-fun m!108926 () Bool)

(assert (=> b!122923 m!108926))

(declare-fun m!108928 () Bool)

(assert (=> b!122923 m!108928))

(declare-fun m!108930 () Bool)

(assert (=> b!122916 m!108930))

(check-sat (not b!122931) b_and!6043 (not b!122925) (not b!122938) (not b!122932) (not b!122924) (not b!122930) (not start!12438) (not b!122928) tp_is_empty!1165 (not b!122917) (not b!122919) (not mapNonEmpty!1629) (not b_next!3915) (not b!122916) (not b_next!3913) (not b!122936) (not b!122922) b_and!6045 (not b!122923) (not b!122929) (not b!122918) (not b!122915) (not b!122913) (not b!122934))
(check-sat b_and!6043 b_and!6045 (not b_next!3913) (not b_next!3915))
(get-model)

(declare-fun d!29159 () Bool)

(assert (=> d!29159 (isPrefix!131 totalInput!1363 totalInput!1363)))

(declare-fun lt!37076 () Unit!1556)

(declare-fun choose!1596 (List!2020 List!2020) Unit!1556)

(assert (=> d!29159 (= lt!37076 (choose!1596 totalInput!1363 totalInput!1363))))

(assert (=> d!29159 (= (lemmaIsPrefixRefl!101 totalInput!1363 totalInput!1363) lt!37076)))

(declare-fun bs!12001 () Bool)

(assert (= bs!12001 d!29159))

(assert (=> bs!12001 m!108926))

(declare-fun m!108932 () Bool)

(assert (=> bs!12001 m!108932))

(assert (=> b!122923 d!29159))

(declare-fun b!122950 () Bool)

(declare-fun e!70601 () Bool)

(assert (=> b!122950 (= e!70601 (>= (size!1875 totalInput!1363) (size!1875 totalInput!1363)))))

(declare-fun b!122947 () Bool)

(declare-fun e!70600 () Bool)

(declare-fun e!70602 () Bool)

(assert (=> b!122947 (= e!70600 e!70602)))

(declare-fun res!57434 () Bool)

(assert (=> b!122947 (=> (not res!57434) (not e!70602))))

(assert (=> b!122947 (= res!57434 (not ((_ is Nil!2014) totalInput!1363)))))

(declare-fun d!29161 () Bool)

(assert (=> d!29161 e!70601))

(declare-fun res!57432 () Bool)

(assert (=> d!29161 (=> res!57432 e!70601)))

(declare-fun lt!37079 () Bool)

(assert (=> d!29161 (= res!57432 (not lt!37079))))

(assert (=> d!29161 (= lt!37079 e!70600)))

(declare-fun res!57431 () Bool)

(assert (=> d!29161 (=> res!57431 e!70600)))

(assert (=> d!29161 (= res!57431 ((_ is Nil!2014) totalInput!1363))))

(assert (=> d!29161 (= (isPrefix!131 totalInput!1363 totalInput!1363) lt!37079)))

(declare-fun b!122948 () Bool)

(declare-fun res!57433 () Bool)

(assert (=> b!122948 (=> (not res!57433) (not e!70602))))

(assert (=> b!122948 (= res!57433 (= (head!504 totalInput!1363) (head!504 totalInput!1363)))))

(declare-fun b!122949 () Bool)

(assert (=> b!122949 (= e!70602 (isPrefix!131 (tail!240 totalInput!1363) (tail!240 totalInput!1363)))))

(assert (= (and d!29161 (not res!57431)) b!122947))

(assert (= (and b!122947 res!57434) b!122948))

(assert (= (and b!122948 res!57433) b!122949))

(assert (= (and d!29161 (not res!57432)) b!122950))

(assert (=> b!122950 m!108876))

(assert (=> b!122950 m!108876))

(declare-fun m!108934 () Bool)

(assert (=> b!122948 m!108934))

(assert (=> b!122948 m!108934))

(declare-fun m!108936 () Bool)

(assert (=> b!122949 m!108936))

(assert (=> b!122949 m!108936))

(assert (=> b!122949 m!108936))

(assert (=> b!122949 m!108936))

(declare-fun m!108938 () Bool)

(assert (=> b!122949 m!108938))

(assert (=> b!122923 d!29161))

(declare-fun d!29163 () Bool)

(assert (=> d!29163 (= totalInput!1363 testedP!367)))

(declare-fun lt!37082 () Unit!1556)

(declare-fun choose!1597 (List!2020 List!2020 List!2020) Unit!1556)

(assert (=> d!29163 (= lt!37082 (choose!1597 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!29163 (isPrefix!131 totalInput!1363 totalInput!1363)))

(assert (=> d!29163 (= (lemmaIsPrefixSameLengthThenSameList!44 totalInput!1363 testedP!367 totalInput!1363) lt!37082)))

(declare-fun bs!12002 () Bool)

(assert (= bs!12002 d!29163))

(declare-fun m!108940 () Bool)

(assert (=> bs!12002 m!108940))

(assert (=> bs!12002 m!108926))

(assert (=> b!122923 d!29163))

(declare-fun b!122969 () Bool)

(declare-fun e!70621 () Bool)

(declare-fun call!5276 () Bool)

(assert (=> b!122969 (= e!70621 call!5276)))

(declare-fun d!29165 () Bool)

(declare-fun res!57446 () Bool)

(declare-fun e!70618 () Bool)

(assert (=> d!29165 (=> res!57446 e!70618)))

(assert (=> d!29165 (= res!57446 ((_ is ElementMatch!555) r!15532))))

(assert (=> d!29165 (= (validRegex!149 r!15532) e!70618)))

(declare-fun bm!5270 () Bool)

(declare-fun call!5277 () Bool)

(declare-fun c!27252 () Bool)

(assert (=> bm!5270 (= call!5277 (validRegex!149 (ite c!27252 (regOne!1623 r!15532) (regTwo!1622 r!15532))))))

(declare-fun b!122970 () Bool)

(declare-fun e!70622 () Bool)

(declare-fun call!5275 () Bool)

(assert (=> b!122970 (= e!70622 call!5275)))

(declare-fun bm!5271 () Bool)

(assert (=> bm!5271 (= call!5275 call!5276)))

(declare-fun b!122971 () Bool)

(declare-fun e!70620 () Bool)

(declare-fun e!70623 () Bool)

(assert (=> b!122971 (= e!70620 e!70623)))

(assert (=> b!122971 (= c!27252 ((_ is Union!555) r!15532))))

(declare-fun b!122972 () Bool)

(assert (=> b!122972 (= e!70620 e!70621)))

(declare-fun res!57447 () Bool)

(assert (=> b!122972 (= res!57447 (not (nullable!90 (reg!884 r!15532))))))

(assert (=> b!122972 (=> (not res!57447) (not e!70621))))

(declare-fun b!122973 () Bool)

(declare-fun res!57448 () Bool)

(declare-fun e!70617 () Bool)

(assert (=> b!122973 (=> res!57448 e!70617)))

(assert (=> b!122973 (= res!57448 (not ((_ is Concat!939) r!15532)))))

(assert (=> b!122973 (= e!70623 e!70617)))

(declare-fun bm!5272 () Bool)

(declare-fun c!27253 () Bool)

(assert (=> bm!5272 (= call!5276 (validRegex!149 (ite c!27253 (reg!884 r!15532) (ite c!27252 (regTwo!1623 r!15532) (regOne!1622 r!15532)))))))

(declare-fun b!122974 () Bool)

(assert (=> b!122974 (= e!70618 e!70620)))

(assert (=> b!122974 (= c!27253 ((_ is Star!555) r!15532))))

(declare-fun b!122975 () Bool)

(declare-fun res!57449 () Bool)

(assert (=> b!122975 (=> (not res!57449) (not e!70622))))

(assert (=> b!122975 (= res!57449 call!5277)))

(assert (=> b!122975 (= e!70623 e!70622)))

(declare-fun b!122976 () Bool)

(declare-fun e!70619 () Bool)

(assert (=> b!122976 (= e!70617 e!70619)))

(declare-fun res!57445 () Bool)

(assert (=> b!122976 (=> (not res!57445) (not e!70619))))

(assert (=> b!122976 (= res!57445 call!5275)))

(declare-fun b!122977 () Bool)

(assert (=> b!122977 (= e!70619 call!5277)))

(assert (= (and d!29165 (not res!57446)) b!122974))

(assert (= (and b!122974 c!27253) b!122972))

(assert (= (and b!122974 (not c!27253)) b!122971))

(assert (= (and b!122972 res!57447) b!122969))

(assert (= (and b!122971 c!27252) b!122975))

(assert (= (and b!122971 (not c!27252)) b!122973))

(assert (= (and b!122975 res!57449) b!122970))

(assert (= (and b!122973 (not res!57448)) b!122976))

(assert (= (and b!122976 res!57445) b!122977))

(assert (= (or b!122970 b!122976) bm!5271))

(assert (= (or b!122975 b!122977) bm!5270))

(assert (= (or b!122969 bm!5271) bm!5272))

(declare-fun m!108942 () Bool)

(assert (=> bm!5270 m!108942))

(declare-fun m!108944 () Bool)

(assert (=> b!122972 m!108944))

(declare-fun m!108946 () Bool)

(assert (=> bm!5272 m!108946))

(assert (=> start!12438 d!29165))

(declare-fun d!29167 () Bool)

(declare-fun res!57452 () Bool)

(declare-fun e!70626 () Bool)

(assert (=> d!29167 (=> (not res!57452) (not e!70626))))

(assert (=> d!29167 (= res!57452 ((_ is HashMap!417) (cache!871 cache!470)))))

(assert (=> d!29167 (= (inv!2545 cache!470) e!70626)))

(declare-fun b!122980 () Bool)

(declare-fun validCacheMap!30 (MutableMap!417) Bool)

(assert (=> b!122980 (= e!70626 (validCacheMap!30 (cache!871 cache!470)))))

(assert (= (and d!29167 res!57452) b!122980))

(declare-fun m!108948 () Bool)

(assert (=> b!122980 m!108948))

(assert (=> start!12438 d!29167))

(declare-fun d!29169 () Bool)

(assert (=> d!29169 (= (array_inv!523 (_keys!712 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470))))))) (bvsge (size!1876 (_keys!712 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!122924 d!29169))

(declare-fun d!29171 () Bool)

(assert (=> d!29171 (= (array_inv!524 (_values!699 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470))))))) (bvsge (size!1877 (_values!699 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!122924 d!29171))

(declare-fun d!29173 () Bool)

(assert (=> d!29173 (= (valid!378 cache!470) (validCacheMap!30 (cache!871 cache!470)))))

(declare-fun bs!12003 () Bool)

(assert (= bs!12003 d!29173))

(assert (=> bs!12003 m!108948))

(assert (=> b!122934 d!29173))

(declare-fun d!29175 () Bool)

(declare-fun lt!37085 () Int)

(assert (=> d!29175 (>= lt!37085 0)))

(declare-fun e!70629 () Int)

(assert (=> d!29175 (= lt!37085 e!70629)))

(declare-fun c!27256 () Bool)

(assert (=> d!29175 (= c!27256 ((_ is Nil!2014) totalInput!1363))))

(assert (=> d!29175 (= (size!1875 totalInput!1363) lt!37085)))

(declare-fun b!122985 () Bool)

(assert (=> b!122985 (= e!70629 0)))

(declare-fun b!122986 () Bool)

(assert (=> b!122986 (= e!70629 (+ 1 (size!1875 (t!22497 totalInput!1363))))))

(assert (= (and d!29175 c!27256) b!122985))

(assert (= (and d!29175 (not c!27256)) b!122986))

(declare-fun m!108950 () Bool)

(assert (=> b!122986 m!108950))

(assert (=> b!122915 d!29175))

(declare-fun b!122990 () Bool)

(declare-fun e!70631 () Bool)

(assert (=> b!122990 (= e!70631 (>= (size!1875 totalInput!1363) (size!1875 testedP!367)))))

(declare-fun b!122987 () Bool)

(declare-fun e!70630 () Bool)

(declare-fun e!70632 () Bool)

(assert (=> b!122987 (= e!70630 e!70632)))

(declare-fun res!57456 () Bool)

(assert (=> b!122987 (=> (not res!57456) (not e!70632))))

(assert (=> b!122987 (= res!57456 (not ((_ is Nil!2014) totalInput!1363)))))

(declare-fun d!29177 () Bool)

(assert (=> d!29177 e!70631))

(declare-fun res!57454 () Bool)

(assert (=> d!29177 (=> res!57454 e!70631)))

(declare-fun lt!37086 () Bool)

(assert (=> d!29177 (= res!57454 (not lt!37086))))

(assert (=> d!29177 (= lt!37086 e!70630)))

(declare-fun res!57453 () Bool)

(assert (=> d!29177 (=> res!57453 e!70630)))

(assert (=> d!29177 (= res!57453 ((_ is Nil!2014) testedP!367))))

(assert (=> d!29177 (= (isPrefix!131 testedP!367 totalInput!1363) lt!37086)))

(declare-fun b!122988 () Bool)

(declare-fun res!57455 () Bool)

(assert (=> b!122988 (=> (not res!57455) (not e!70632))))

(assert (=> b!122988 (= res!57455 (= (head!504 testedP!367) (head!504 totalInput!1363)))))

(declare-fun b!122989 () Bool)

(assert (=> b!122989 (= e!70632 (isPrefix!131 (tail!240 testedP!367) (tail!240 totalInput!1363)))))

(assert (= (and d!29177 (not res!57453)) b!122987))

(assert (= (and b!122987 res!57456) b!122988))

(assert (= (and b!122988 res!57455) b!122989))

(assert (= (and d!29177 (not res!57454)) b!122990))

(assert (=> b!122990 m!108876))

(assert (=> b!122990 m!108898))

(declare-fun m!108952 () Bool)

(assert (=> b!122988 m!108952))

(assert (=> b!122988 m!108934))

(declare-fun m!108954 () Bool)

(assert (=> b!122989 m!108954))

(assert (=> b!122989 m!108936))

(assert (=> b!122989 m!108954))

(assert (=> b!122989 m!108936))

(declare-fun m!108956 () Bool)

(assert (=> b!122989 m!108956))

(assert (=> b!122931 d!29177))

(declare-fun b!122994 () Bool)

(declare-fun e!70634 () Bool)

(assert (=> b!122994 (= e!70634 (>= (size!1875 lt!37063) (size!1875 testedP!367)))))

(declare-fun b!122991 () Bool)

(declare-fun e!70633 () Bool)

(declare-fun e!70635 () Bool)

(assert (=> b!122991 (= e!70633 e!70635)))

(declare-fun res!57460 () Bool)

(assert (=> b!122991 (=> (not res!57460) (not e!70635))))

(assert (=> b!122991 (= res!57460 (not ((_ is Nil!2014) lt!37063)))))

(declare-fun d!29179 () Bool)

(assert (=> d!29179 e!70634))

(declare-fun res!57458 () Bool)

(assert (=> d!29179 (=> res!57458 e!70634)))

(declare-fun lt!37087 () Bool)

(assert (=> d!29179 (= res!57458 (not lt!37087))))

(assert (=> d!29179 (= lt!37087 e!70633)))

(declare-fun res!57457 () Bool)

(assert (=> d!29179 (=> res!57457 e!70633)))

(assert (=> d!29179 (= res!57457 ((_ is Nil!2014) testedP!367))))

(assert (=> d!29179 (= (isPrefix!131 testedP!367 lt!37063) lt!37087)))

(declare-fun b!122992 () Bool)

(declare-fun res!57459 () Bool)

(assert (=> b!122992 (=> (not res!57459) (not e!70635))))

(assert (=> b!122992 (= res!57459 (= (head!504 testedP!367) (head!504 lt!37063)))))

(declare-fun b!122993 () Bool)

(assert (=> b!122993 (= e!70635 (isPrefix!131 (tail!240 testedP!367) (tail!240 lt!37063)))))

(assert (= (and d!29179 (not res!57457)) b!122991))

(assert (= (and b!122991 res!57460) b!122992))

(assert (= (and b!122992 res!57459) b!122993))

(assert (= (and d!29179 (not res!57458)) b!122994))

(declare-fun m!108958 () Bool)

(assert (=> b!122994 m!108958))

(assert (=> b!122994 m!108898))

(assert (=> b!122992 m!108952))

(declare-fun m!108960 () Bool)

(assert (=> b!122992 m!108960))

(assert (=> b!122993 m!108954))

(declare-fun m!108962 () Bool)

(assert (=> b!122993 m!108962))

(assert (=> b!122993 m!108954))

(assert (=> b!122993 m!108962))

(declare-fun m!108964 () Bool)

(assert (=> b!122993 m!108964))

(assert (=> b!122931 d!29179))

(declare-fun d!29181 () Bool)

(assert (=> d!29181 (isPrefix!131 testedP!367 (++!381 testedP!367 testedSuffix!285))))

(declare-fun lt!37090 () Unit!1556)

(declare-fun choose!1598 (List!2020 List!2020) Unit!1556)

(assert (=> d!29181 (= lt!37090 (choose!1598 testedP!367 testedSuffix!285))))

(assert (=> d!29181 (= (lemmaConcatTwoListThenFirstIsPrefix!74 testedP!367 testedSuffix!285) lt!37090)))

(declare-fun bs!12004 () Bool)

(assert (= bs!12004 d!29181))

(assert (=> bs!12004 m!108902))

(assert (=> bs!12004 m!108902))

(declare-fun m!108966 () Bool)

(assert (=> bs!12004 m!108966))

(declare-fun m!108968 () Bool)

(assert (=> bs!12004 m!108968))

(assert (=> b!122931 d!29181))

(declare-fun d!29183 () Bool)

(declare-fun lt!37091 () Int)

(assert (=> d!29183 (>= lt!37091 0)))

(declare-fun e!70636 () Int)

(assert (=> d!29183 (= lt!37091 e!70636)))

(declare-fun c!27257 () Bool)

(assert (=> d!29183 (= c!27257 ((_ is Nil!2014) testedP!367))))

(assert (=> d!29183 (= (size!1875 testedP!367) lt!37091)))

(declare-fun b!122995 () Bool)

(assert (=> b!122995 (= e!70636 0)))

(declare-fun b!122996 () Bool)

(assert (=> b!122996 (= e!70636 (+ 1 (size!1875 (t!22497 testedP!367))))))

(assert (= (and d!29183 c!27257) b!122995))

(assert (= (and d!29183 (not c!27257)) b!122996))

(declare-fun m!108970 () Bool)

(assert (=> b!122996 m!108970))

(assert (=> b!122922 d!29183))

(declare-fun d!29185 () Bool)

(assert (=> d!29185 (= (head!504 testedSuffix!285) (h!7411 testedSuffix!285))))

(assert (=> b!122938 d!29185))

(declare-fun d!29187 () Bool)

(assert (=> d!29187 (= (tail!240 testedSuffix!285) (t!22497 testedSuffix!285))))

(assert (=> b!122938 d!29187))

(declare-fun d!29189 () Bool)

(assert (=> d!29189 (= (++!381 (++!381 testedP!367 (Cons!2014 lt!37067 Nil!2014)) lt!37065) totalInput!1363)))

(declare-fun lt!37094 () Unit!1556)

(declare-fun choose!1599 (List!2020 C!2032 List!2020 List!2020) Unit!1556)

(assert (=> d!29189 (= lt!37094 (choose!1599 testedP!367 lt!37067 lt!37065 totalInput!1363))))

(assert (=> d!29189 (= (++!381 testedP!367 (Cons!2014 lt!37067 lt!37065)) totalInput!1363)))

(assert (=> d!29189 (= (lemmaMoveElementToOtherListKeepsConcatEq!27 testedP!367 lt!37067 lt!37065 totalInput!1363) lt!37094)))

(declare-fun bs!12005 () Bool)

(assert (= bs!12005 d!29189))

(assert (=> bs!12005 m!108918))

(assert (=> bs!12005 m!108918))

(declare-fun m!108972 () Bool)

(assert (=> bs!12005 m!108972))

(declare-fun m!108974 () Bool)

(assert (=> bs!12005 m!108974))

(declare-fun m!108976 () Bool)

(assert (=> bs!12005 m!108976))

(assert (=> b!122938 d!29189))

(declare-fun d!29191 () Bool)

(declare-fun nullableFct!23 (Regex!555) Bool)

(assert (=> d!29191 (= (nullable!90 r!15532) (nullableFct!23 r!15532))))

(declare-fun bs!12006 () Bool)

(assert (= bs!12006 d!29191))

(declare-fun m!108978 () Bool)

(assert (=> bs!12006 m!108978))

(assert (=> b!122938 d!29191))

(declare-fun d!29193 () Bool)

(assert (=> d!29193 (isPrefix!131 (++!381 testedP!367 (Cons!2014 (head!504 (getSuffix!69 totalInput!1363 testedP!367)) Nil!2014)) totalInput!1363)))

(declare-fun lt!37097 () Unit!1556)

(declare-fun choose!1600 (List!2020 List!2020) Unit!1556)

(assert (=> d!29193 (= lt!37097 (choose!1600 testedP!367 totalInput!1363))))

(assert (=> d!29193 (isPrefix!131 testedP!367 totalInput!1363)))

(assert (=> d!29193 (= (lemmaAddHeadSuffixToPrefixStillPrefix!33 testedP!367 totalInput!1363) lt!37097)))

(declare-fun bs!12007 () Bool)

(assert (= bs!12007 d!29193))

(declare-fun m!108980 () Bool)

(assert (=> bs!12007 m!108980))

(assert (=> bs!12007 m!108980))

(declare-fun m!108982 () Bool)

(assert (=> bs!12007 m!108982))

(assert (=> bs!12007 m!108870))

(declare-fun m!108984 () Bool)

(assert (=> bs!12007 m!108984))

(assert (=> bs!12007 m!108896))

(declare-fun m!108986 () Bool)

(assert (=> bs!12007 m!108986))

(assert (=> bs!12007 m!108896))

(assert (=> b!122938 d!29193))

(declare-fun d!29195 () Bool)

(assert (=> d!29195 (= (head!504 lt!37071) (h!7411 lt!37071))))

(assert (=> b!122938 d!29195))

(declare-fun b!123006 () Bool)

(declare-fun e!70641 () List!2020)

(assert (=> b!123006 (= e!70641 (Cons!2014 (h!7411 testedP!367) (++!381 (t!22497 testedP!367) (Cons!2014 (head!504 lt!37071) Nil!2014))))))

(declare-fun b!123007 () Bool)

(declare-fun res!57466 () Bool)

(declare-fun e!70642 () Bool)

(assert (=> b!123007 (=> (not res!57466) (not e!70642))))

(declare-fun lt!37100 () List!2020)

(assert (=> b!123007 (= res!57466 (= (size!1875 lt!37100) (+ (size!1875 testedP!367) (size!1875 (Cons!2014 (head!504 lt!37071) Nil!2014)))))))

(declare-fun b!123008 () Bool)

(assert (=> b!123008 (= e!70642 (or (not (= (Cons!2014 (head!504 lt!37071) Nil!2014) Nil!2014)) (= lt!37100 testedP!367)))))

(declare-fun d!29197 () Bool)

(assert (=> d!29197 e!70642))

(declare-fun res!57465 () Bool)

(assert (=> d!29197 (=> (not res!57465) (not e!70642))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!228 (List!2020) (InoxSet C!2032))

(assert (=> d!29197 (= res!57465 (= (content!228 lt!37100) ((_ map or) (content!228 testedP!367) (content!228 (Cons!2014 (head!504 lt!37071) Nil!2014)))))))

(assert (=> d!29197 (= lt!37100 e!70641)))

(declare-fun c!27260 () Bool)

(assert (=> d!29197 (= c!27260 ((_ is Nil!2014) testedP!367))))

(assert (=> d!29197 (= (++!381 testedP!367 (Cons!2014 (head!504 lt!37071) Nil!2014)) lt!37100)))

(declare-fun b!123005 () Bool)

(assert (=> b!123005 (= e!70641 (Cons!2014 (head!504 lt!37071) Nil!2014))))

(assert (= (and d!29197 c!27260) b!123005))

(assert (= (and d!29197 (not c!27260)) b!123006))

(assert (= (and d!29197 res!57465) b!123007))

(assert (= (and b!123007 res!57466) b!123008))

(declare-fun m!108988 () Bool)

(assert (=> b!123006 m!108988))

(declare-fun m!108990 () Bool)

(assert (=> b!123007 m!108990))

(assert (=> b!123007 m!108898))

(declare-fun m!108992 () Bool)

(assert (=> b!123007 m!108992))

(declare-fun m!108994 () Bool)

(assert (=> d!29197 m!108994))

(declare-fun m!108996 () Bool)

(assert (=> d!29197 m!108996))

(declare-fun m!108998 () Bool)

(assert (=> d!29197 m!108998))

(assert (=> b!122938 d!29197))

(declare-fun b!123012 () Bool)

(declare-fun e!70644 () Bool)

(assert (=> b!123012 (= e!70644 (>= (size!1875 totalInput!1363) (size!1875 (++!381 testedP!367 (Cons!2014 (head!504 lt!37071) Nil!2014)))))))

(declare-fun b!123009 () Bool)

(declare-fun e!70643 () Bool)

(declare-fun e!70645 () Bool)

(assert (=> b!123009 (= e!70643 e!70645)))

(declare-fun res!57470 () Bool)

(assert (=> b!123009 (=> (not res!57470) (not e!70645))))

(assert (=> b!123009 (= res!57470 (not ((_ is Nil!2014) totalInput!1363)))))

(declare-fun d!29199 () Bool)

(assert (=> d!29199 e!70644))

(declare-fun res!57468 () Bool)

(assert (=> d!29199 (=> res!57468 e!70644)))

(declare-fun lt!37101 () Bool)

(assert (=> d!29199 (= res!57468 (not lt!37101))))

(assert (=> d!29199 (= lt!37101 e!70643)))

(declare-fun res!57467 () Bool)

(assert (=> d!29199 (=> res!57467 e!70643)))

(assert (=> d!29199 (= res!57467 ((_ is Nil!2014) (++!381 testedP!367 (Cons!2014 (head!504 lt!37071) Nil!2014))))))

(assert (=> d!29199 (= (isPrefix!131 (++!381 testedP!367 (Cons!2014 (head!504 lt!37071) Nil!2014)) totalInput!1363) lt!37101)))

(declare-fun b!123010 () Bool)

(declare-fun res!57469 () Bool)

(assert (=> b!123010 (=> (not res!57469) (not e!70645))))

(assert (=> b!123010 (= res!57469 (= (head!504 (++!381 testedP!367 (Cons!2014 (head!504 lt!37071) Nil!2014))) (head!504 totalInput!1363)))))

(declare-fun b!123011 () Bool)

(assert (=> b!123011 (= e!70645 (isPrefix!131 (tail!240 (++!381 testedP!367 (Cons!2014 (head!504 lt!37071) Nil!2014))) (tail!240 totalInput!1363)))))

(assert (= (and d!29199 (not res!57467)) b!123009))

(assert (= (and b!123009 res!57470) b!123010))

(assert (= (and b!123010 res!57469) b!123011))

(assert (= (and d!29199 (not res!57468)) b!123012))

(assert (=> b!123012 m!108876))

(assert (=> b!123012 m!108908))

(declare-fun m!109000 () Bool)

(assert (=> b!123012 m!109000))

(assert (=> b!123010 m!108908))

(declare-fun m!109002 () Bool)

(assert (=> b!123010 m!109002))

(assert (=> b!123010 m!108934))

(assert (=> b!123011 m!108908))

(declare-fun m!109004 () Bool)

(assert (=> b!123011 m!109004))

(assert (=> b!123011 m!108936))

(assert (=> b!123011 m!109004))

(assert (=> b!123011 m!108936))

(declare-fun m!109006 () Bool)

(assert (=> b!123011 m!109006))

(assert (=> b!122938 d!29199))

(declare-fun b!123014 () Bool)

(declare-fun e!70646 () List!2020)

(assert (=> b!123014 (= e!70646 (Cons!2014 (h!7411 lt!37073) (++!381 (t!22497 lt!37073) lt!37065)))))

(declare-fun b!123015 () Bool)

(declare-fun res!57472 () Bool)

(declare-fun e!70647 () Bool)

(assert (=> b!123015 (=> (not res!57472) (not e!70647))))

(declare-fun lt!37102 () List!2020)

(assert (=> b!123015 (= res!57472 (= (size!1875 lt!37102) (+ (size!1875 lt!37073) (size!1875 lt!37065))))))

(declare-fun b!123016 () Bool)

(assert (=> b!123016 (= e!70647 (or (not (= lt!37065 Nil!2014)) (= lt!37102 lt!37073)))))

(declare-fun d!29201 () Bool)

(assert (=> d!29201 e!70647))

(declare-fun res!57471 () Bool)

(assert (=> d!29201 (=> (not res!57471) (not e!70647))))

(assert (=> d!29201 (= res!57471 (= (content!228 lt!37102) ((_ map or) (content!228 lt!37073) (content!228 lt!37065))))))

(assert (=> d!29201 (= lt!37102 e!70646)))

(declare-fun c!27261 () Bool)

(assert (=> d!29201 (= c!27261 ((_ is Nil!2014) lt!37073))))

(assert (=> d!29201 (= (++!381 lt!37073 lt!37065) lt!37102)))

(declare-fun b!123013 () Bool)

(assert (=> b!123013 (= e!70646 lt!37065)))

(assert (= (and d!29201 c!27261) b!123013))

(assert (= (and d!29201 (not c!27261)) b!123014))

(assert (= (and d!29201 res!57471) b!123015))

(assert (= (and b!123015 res!57472) b!123016))

(declare-fun m!109008 () Bool)

(assert (=> b!123014 m!109008))

(declare-fun m!109010 () Bool)

(assert (=> b!123015 m!109010))

(declare-fun m!109012 () Bool)

(assert (=> b!123015 m!109012))

(declare-fun m!109014 () Bool)

(assert (=> b!123015 m!109014))

(declare-fun m!109016 () Bool)

(assert (=> d!29201 m!109016))

(declare-fun m!109018 () Bool)

(assert (=> d!29201 m!109018))

(declare-fun m!109020 () Bool)

(assert (=> d!29201 m!109020))

(assert (=> b!122938 d!29201))

(declare-fun b!123018 () Bool)

(declare-fun e!70648 () List!2020)

(assert (=> b!123018 (= e!70648 (Cons!2014 (h!7411 testedP!367) (++!381 (t!22497 testedP!367) (Cons!2014 lt!37067 Nil!2014))))))

(declare-fun b!123019 () Bool)

(declare-fun res!57474 () Bool)

(declare-fun e!70649 () Bool)

(assert (=> b!123019 (=> (not res!57474) (not e!70649))))

(declare-fun lt!37103 () List!2020)

(assert (=> b!123019 (= res!57474 (= (size!1875 lt!37103) (+ (size!1875 testedP!367) (size!1875 (Cons!2014 lt!37067 Nil!2014)))))))

(declare-fun b!123020 () Bool)

(assert (=> b!123020 (= e!70649 (or (not (= (Cons!2014 lt!37067 Nil!2014) Nil!2014)) (= lt!37103 testedP!367)))))

(declare-fun d!29203 () Bool)

(assert (=> d!29203 e!70649))

(declare-fun res!57473 () Bool)

(assert (=> d!29203 (=> (not res!57473) (not e!70649))))

(assert (=> d!29203 (= res!57473 (= (content!228 lt!37103) ((_ map or) (content!228 testedP!367) (content!228 (Cons!2014 lt!37067 Nil!2014)))))))

(assert (=> d!29203 (= lt!37103 e!70648)))

(declare-fun c!27262 () Bool)

(assert (=> d!29203 (= c!27262 ((_ is Nil!2014) testedP!367))))

(assert (=> d!29203 (= (++!381 testedP!367 (Cons!2014 lt!37067 Nil!2014)) lt!37103)))

(declare-fun b!123017 () Bool)

(assert (=> b!123017 (= e!70648 (Cons!2014 lt!37067 Nil!2014))))

(assert (= (and d!29203 c!27262) b!123017))

(assert (= (and d!29203 (not c!27262)) b!123018))

(assert (= (and d!29203 res!57473) b!123019))

(assert (= (and b!123019 res!57474) b!123020))

(declare-fun m!109022 () Bool)

(assert (=> b!123018 m!109022))

(declare-fun m!109024 () Bool)

(assert (=> b!123019 m!109024))

(assert (=> b!123019 m!108898))

(declare-fun m!109026 () Bool)

(assert (=> b!123019 m!109026))

(declare-fun m!109028 () Bool)

(assert (=> d!29203 m!109028))

(assert (=> d!29203 m!108996))

(declare-fun m!109030 () Bool)

(assert (=> d!29203 m!109030))

(assert (=> b!122938 d!29203))

(declare-fun b!123022 () Bool)

(declare-fun e!70650 () List!2020)

(assert (=> b!123022 (= e!70650 (Cons!2014 (h!7411 testedP!367) (++!381 (t!22497 testedP!367) testedSuffix!285)))))

(declare-fun b!123023 () Bool)

(declare-fun res!57476 () Bool)

(declare-fun e!70651 () Bool)

(assert (=> b!123023 (=> (not res!57476) (not e!70651))))

(declare-fun lt!37104 () List!2020)

(assert (=> b!123023 (= res!57476 (= (size!1875 lt!37104) (+ (size!1875 testedP!367) (size!1875 testedSuffix!285))))))

(declare-fun b!123024 () Bool)

(assert (=> b!123024 (= e!70651 (or (not (= testedSuffix!285 Nil!2014)) (= lt!37104 testedP!367)))))

(declare-fun d!29205 () Bool)

(assert (=> d!29205 e!70651))

(declare-fun res!57475 () Bool)

(assert (=> d!29205 (=> (not res!57475) (not e!70651))))

(assert (=> d!29205 (= res!57475 (= (content!228 lt!37104) ((_ map or) (content!228 testedP!367) (content!228 testedSuffix!285))))))

(assert (=> d!29205 (= lt!37104 e!70650)))

(declare-fun c!27263 () Bool)

(assert (=> d!29205 (= c!27263 ((_ is Nil!2014) testedP!367))))

(assert (=> d!29205 (= (++!381 testedP!367 testedSuffix!285) lt!37104)))

(declare-fun b!123021 () Bool)

(assert (=> b!123021 (= e!70650 testedSuffix!285)))

(assert (= (and d!29205 c!27263) b!123021))

(assert (= (and d!29205 (not c!27263)) b!123022))

(assert (= (and d!29205 res!57475) b!123023))

(assert (= (and b!123023 res!57476) b!123024))

(declare-fun m!109032 () Bool)

(assert (=> b!123022 m!109032))

(declare-fun m!109034 () Bool)

(assert (=> b!123023 m!109034))

(assert (=> b!123023 m!108898))

(declare-fun m!109036 () Bool)

(assert (=> b!123023 m!109036))

(declare-fun m!109038 () Bool)

(assert (=> d!29205 m!109038))

(assert (=> d!29205 m!108996))

(declare-fun m!109040 () Bool)

(assert (=> d!29205 m!109040))

(assert (=> b!122919 d!29205))

(declare-fun d!29207 () Bool)

(assert (=> d!29207 (<= (size!1875 testedP!367) (size!1875 totalInput!1363))))

(declare-fun lt!37107 () Unit!1556)

(declare-fun choose!1601 (List!2020 List!2020) Unit!1556)

(assert (=> d!29207 (= lt!37107 (choose!1601 testedP!367 totalInput!1363))))

(assert (=> d!29207 (isPrefix!131 testedP!367 totalInput!1363)))

(assert (=> d!29207 (= (lemmaIsPrefixThenSmallerEqSize!43 testedP!367 totalInput!1363) lt!37107)))

(declare-fun bs!12008 () Bool)

(assert (= bs!12008 d!29207))

(assert (=> bs!12008 m!108898))

(assert (=> bs!12008 m!108876))

(declare-fun m!109042 () Bool)

(assert (=> bs!12008 m!109042))

(assert (=> bs!12008 m!108870))

(assert (=> b!122916 d!29207))

(declare-fun d!29209 () Bool)

(declare-fun lostCauseFct!33 (Regex!555) Bool)

(assert (=> d!29209 (= (lostCause!74 r!15532) (lostCauseFct!33 r!15532))))

(declare-fun bs!12009 () Bool)

(assert (= bs!12009 d!29209))

(declare-fun m!109044 () Bool)

(assert (=> bs!12009 m!109044))

(assert (=> b!122936 d!29209))

(declare-fun d!29211 () Bool)

(assert (=> d!29211 (= testedSuffix!285 lt!37071)))

(declare-fun lt!37110 () Unit!1556)

(declare-fun choose!1602 (List!2020 List!2020 List!2020 List!2020 List!2020) Unit!1556)

(assert (=> d!29211 (= lt!37110 (choose!1602 testedP!367 testedSuffix!285 testedP!367 lt!37071 totalInput!1363))))

(assert (=> d!29211 (isPrefix!131 testedP!367 totalInput!1363)))

(assert (=> d!29211 (= (lemmaSamePrefixThenSameSuffix!65 testedP!367 testedSuffix!285 testedP!367 lt!37071 totalInput!1363) lt!37110)))

(declare-fun bs!12010 () Bool)

(assert (= bs!12010 d!29211))

(declare-fun m!109046 () Bool)

(assert (=> bs!12010 m!109046))

(assert (=> bs!12010 m!108870))

(assert (=> b!122936 d!29211))

(declare-fun d!29213 () Bool)

(declare-fun lt!37113 () List!2020)

(assert (=> d!29213 (= (++!381 testedP!367 lt!37113) totalInput!1363)))

(declare-fun e!70654 () List!2020)

(assert (=> d!29213 (= lt!37113 e!70654)))

(declare-fun c!27266 () Bool)

(assert (=> d!29213 (= c!27266 ((_ is Cons!2014) testedP!367))))

(assert (=> d!29213 (>= (size!1875 totalInput!1363) (size!1875 testedP!367))))

(assert (=> d!29213 (= (getSuffix!69 totalInput!1363 testedP!367) lt!37113)))

(declare-fun b!123029 () Bool)

(assert (=> b!123029 (= e!70654 (getSuffix!69 (tail!240 totalInput!1363) (t!22497 testedP!367)))))

(declare-fun b!123030 () Bool)

(assert (=> b!123030 (= e!70654 totalInput!1363)))

(assert (= (and d!29213 c!27266) b!123029))

(assert (= (and d!29213 (not c!27266)) b!123030))

(declare-fun m!109048 () Bool)

(assert (=> d!29213 m!109048))

(assert (=> d!29213 m!108876))

(assert (=> d!29213 m!108898))

(assert (=> b!123029 m!108936))

(assert (=> b!123029 m!108936))

(declare-fun m!109050 () Bool)

(assert (=> b!123029 m!109050))

(assert (=> b!122936 d!29213))

(declare-fun b!123031 () Bool)

(declare-fun e!70659 () Bool)

(declare-fun call!5279 () Bool)

(assert (=> b!123031 (= e!70659 call!5279)))

(declare-fun d!29215 () Bool)

(declare-fun res!57478 () Bool)

(declare-fun e!70656 () Bool)

(assert (=> d!29215 (=> res!57478 e!70656)))

(assert (=> d!29215 (= res!57478 ((_ is ElementMatch!555) (derivativeStep!61 r!15532 lt!37067)))))

(assert (=> d!29215 (= (validRegex!149 (derivativeStep!61 r!15532 lt!37067)) e!70656)))

(declare-fun call!5280 () Bool)

(declare-fun c!27267 () Bool)

(declare-fun bm!5273 () Bool)

(assert (=> bm!5273 (= call!5280 (validRegex!149 (ite c!27267 (regOne!1623 (derivativeStep!61 r!15532 lt!37067)) (regTwo!1622 (derivativeStep!61 r!15532 lt!37067)))))))

(declare-fun b!123032 () Bool)

(declare-fun e!70660 () Bool)

(declare-fun call!5278 () Bool)

(assert (=> b!123032 (= e!70660 call!5278)))

(declare-fun bm!5274 () Bool)

(assert (=> bm!5274 (= call!5278 call!5279)))

(declare-fun b!123033 () Bool)

(declare-fun e!70658 () Bool)

(declare-fun e!70661 () Bool)

(assert (=> b!123033 (= e!70658 e!70661)))

(assert (=> b!123033 (= c!27267 ((_ is Union!555) (derivativeStep!61 r!15532 lt!37067)))))

(declare-fun b!123034 () Bool)

(assert (=> b!123034 (= e!70658 e!70659)))

(declare-fun res!57479 () Bool)

(assert (=> b!123034 (= res!57479 (not (nullable!90 (reg!884 (derivativeStep!61 r!15532 lt!37067)))))))

(assert (=> b!123034 (=> (not res!57479) (not e!70659))))

(declare-fun b!123035 () Bool)

(declare-fun res!57480 () Bool)

(declare-fun e!70655 () Bool)

(assert (=> b!123035 (=> res!57480 e!70655)))

(assert (=> b!123035 (= res!57480 (not ((_ is Concat!939) (derivativeStep!61 r!15532 lt!37067))))))

(assert (=> b!123035 (= e!70661 e!70655)))

(declare-fun c!27268 () Bool)

(declare-fun bm!5275 () Bool)

(assert (=> bm!5275 (= call!5279 (validRegex!149 (ite c!27268 (reg!884 (derivativeStep!61 r!15532 lt!37067)) (ite c!27267 (regTwo!1623 (derivativeStep!61 r!15532 lt!37067)) (regOne!1622 (derivativeStep!61 r!15532 lt!37067))))))))

(declare-fun b!123036 () Bool)

(assert (=> b!123036 (= e!70656 e!70658)))

(assert (=> b!123036 (= c!27268 ((_ is Star!555) (derivativeStep!61 r!15532 lt!37067)))))

(declare-fun b!123037 () Bool)

(declare-fun res!57481 () Bool)

(assert (=> b!123037 (=> (not res!57481) (not e!70660))))

(assert (=> b!123037 (= res!57481 call!5280)))

(assert (=> b!123037 (= e!70661 e!70660)))

(declare-fun b!123038 () Bool)

(declare-fun e!70657 () Bool)

(assert (=> b!123038 (= e!70655 e!70657)))

(declare-fun res!57477 () Bool)

(assert (=> b!123038 (=> (not res!57477) (not e!70657))))

(assert (=> b!123038 (= res!57477 call!5278)))

(declare-fun b!123039 () Bool)

(assert (=> b!123039 (= e!70657 call!5280)))

(assert (= (and d!29215 (not res!57478)) b!123036))

(assert (= (and b!123036 c!27268) b!123034))

(assert (= (and b!123036 (not c!27268)) b!123033))

(assert (= (and b!123034 res!57479) b!123031))

(assert (= (and b!123033 c!27267) b!123037))

(assert (= (and b!123033 (not c!27267)) b!123035))

(assert (= (and b!123037 res!57481) b!123032))

(assert (= (and b!123035 (not res!57480)) b!123038))

(assert (= (and b!123038 res!57477) b!123039))

(assert (= (or b!123032 b!123038) bm!5274))

(assert (= (or b!123037 b!123039) bm!5273))

(assert (= (or b!123031 bm!5274) bm!5275))

(declare-fun m!109052 () Bool)

(assert (=> bm!5273 m!109052))

(declare-fun m!109054 () Bool)

(assert (=> b!123034 m!109054))

(declare-fun m!109056 () Bool)

(assert (=> bm!5275 m!109056))

(assert (=> b!122918 d!29215))

(declare-fun b!123060 () Bool)

(declare-fun e!70676 () Regex!555)

(declare-fun e!70674 () Regex!555)

(assert (=> b!123060 (= e!70676 e!70674)))

(declare-fun c!27280 () Bool)

(assert (=> b!123060 (= c!27280 ((_ is Star!555) r!15532))))

(declare-fun b!123061 () Bool)

(declare-fun call!5292 () Regex!555)

(declare-fun call!5289 () Regex!555)

(assert (=> b!123061 (= e!70676 (Union!555 call!5292 call!5289))))

(declare-fun bm!5284 () Bool)

(declare-fun call!5291 () Regex!555)

(assert (=> bm!5284 (= call!5291 call!5289)))

(declare-fun c!27283 () Bool)

(declare-fun bm!5285 () Bool)

(assert (=> bm!5285 (= call!5289 (derivativeStep!61 (ite c!27283 (regTwo!1623 r!15532) (ite c!27280 (reg!884 r!15532) (regOne!1622 r!15532))) lt!37067))))

(declare-fun b!123062 () Bool)

(declare-fun e!70673 () Regex!555)

(assert (=> b!123062 (= e!70673 (ite (= lt!37067 (c!27247 r!15532)) EmptyExpr!555 EmptyLang!555))))

(declare-fun b!123063 () Bool)

(assert (=> b!123063 (= e!70674 (Concat!939 call!5291 r!15532))))

(declare-fun b!123064 () Bool)

(assert (=> b!123064 (= c!27283 ((_ is Union!555) r!15532))))

(assert (=> b!123064 (= e!70673 e!70676)))

(declare-fun b!123065 () Bool)

(declare-fun e!70675 () Regex!555)

(assert (=> b!123065 (= e!70675 e!70673)))

(declare-fun c!27279 () Bool)

(assert (=> b!123065 (= c!27279 ((_ is ElementMatch!555) r!15532))))

(declare-fun bm!5286 () Bool)

(assert (=> bm!5286 (= call!5292 (derivativeStep!61 (ite c!27283 (regOne!1623 r!15532) (regTwo!1622 r!15532)) lt!37067))))

(declare-fun b!123066 () Bool)

(assert (=> b!123066 (= e!70675 EmptyLang!555)))

(declare-fun bm!5287 () Bool)

(declare-fun call!5290 () Regex!555)

(assert (=> bm!5287 (= call!5290 call!5291)))

(declare-fun b!123067 () Bool)

(declare-fun e!70672 () Regex!555)

(assert (=> b!123067 (= e!70672 (Union!555 (Concat!939 call!5290 (regTwo!1622 r!15532)) EmptyLang!555))))

(declare-fun b!123068 () Bool)

(assert (=> b!123068 (= e!70672 (Union!555 (Concat!939 call!5290 (regTwo!1622 r!15532)) call!5292))))

(declare-fun b!123069 () Bool)

(declare-fun c!27282 () Bool)

(assert (=> b!123069 (= c!27282 (nullable!90 (regOne!1622 r!15532)))))

(assert (=> b!123069 (= e!70674 e!70672)))

(declare-fun d!29217 () Bool)

(declare-fun lt!37116 () Regex!555)

(assert (=> d!29217 (validRegex!149 lt!37116)))

(assert (=> d!29217 (= lt!37116 e!70675)))

(declare-fun c!27281 () Bool)

(assert (=> d!29217 (= c!27281 (or ((_ is EmptyExpr!555) r!15532) ((_ is EmptyLang!555) r!15532)))))

(assert (=> d!29217 (validRegex!149 r!15532)))

(assert (=> d!29217 (= (derivativeStep!61 r!15532 lt!37067) lt!37116)))

(assert (= (and d!29217 c!27281) b!123066))

(assert (= (and d!29217 (not c!27281)) b!123065))

(assert (= (and b!123065 c!27279) b!123062))

(assert (= (and b!123065 (not c!27279)) b!123064))

(assert (= (and b!123064 c!27283) b!123061))

(assert (= (and b!123064 (not c!27283)) b!123060))

(assert (= (and b!123060 c!27280) b!123063))

(assert (= (and b!123060 (not c!27280)) b!123069))

(assert (= (and b!123069 c!27282) b!123068))

(assert (= (and b!123069 (not c!27282)) b!123067))

(assert (= (or b!123068 b!123067) bm!5287))

(assert (= (or b!123063 bm!5287) bm!5284))

(assert (= (or b!123061 bm!5284) bm!5285))

(assert (= (or b!123061 b!123068) bm!5286))

(declare-fun m!109058 () Bool)

(assert (=> bm!5285 m!109058))

(declare-fun m!109060 () Bool)

(assert (=> bm!5286 m!109060))

(declare-fun m!109062 () Bool)

(assert (=> b!123069 m!109062))

(declare-fun m!109064 () Bool)

(assert (=> d!29217 m!109064))

(assert (=> d!29217 m!108882))

(assert (=> b!122918 d!29217))

(declare-fun b!123081 () Bool)

(declare-fun e!70679 () Bool)

(declare-fun tp!67434 () Bool)

(declare-fun tp!67432 () Bool)

(assert (=> b!123081 (= e!70679 (and tp!67434 tp!67432))))

(assert (=> b!122913 (= tp!67411 e!70679)))

(declare-fun b!123080 () Bool)

(assert (=> b!123080 (= e!70679 tp_is_empty!1165)))

(declare-fun b!123083 () Bool)

(declare-fun tp!67431 () Bool)

(declare-fun tp!67433 () Bool)

(assert (=> b!123083 (= e!70679 (and tp!67431 tp!67433))))

(declare-fun b!123082 () Bool)

(declare-fun tp!67430 () Bool)

(assert (=> b!123082 (= e!70679 tp!67430)))

(assert (= (and b!122913 ((_ is ElementMatch!555) (reg!884 r!15532))) b!123080))

(assert (= (and b!122913 ((_ is Concat!939) (reg!884 r!15532))) b!123081))

(assert (= (and b!122913 ((_ is Star!555) (reg!884 r!15532))) b!123082))

(assert (= (and b!122913 ((_ is Union!555) (reg!884 r!15532))) b!123083))

(declare-fun b!123085 () Bool)

(declare-fun e!70680 () Bool)

(declare-fun tp!67439 () Bool)

(declare-fun tp!67437 () Bool)

(assert (=> b!123085 (= e!70680 (and tp!67439 tp!67437))))

(assert (=> b!122928 (= tp!67408 e!70680)))

(declare-fun b!123084 () Bool)

(assert (=> b!123084 (= e!70680 tp_is_empty!1165)))

(declare-fun b!123087 () Bool)

(declare-fun tp!67436 () Bool)

(declare-fun tp!67438 () Bool)

(assert (=> b!123087 (= e!70680 (and tp!67436 tp!67438))))

(declare-fun b!123086 () Bool)

(declare-fun tp!67435 () Bool)

(assert (=> b!123086 (= e!70680 tp!67435)))

(assert (= (and b!122928 ((_ is ElementMatch!555) (regOne!1623 r!15532))) b!123084))

(assert (= (and b!122928 ((_ is Concat!939) (regOne!1623 r!15532))) b!123085))

(assert (= (and b!122928 ((_ is Star!555) (regOne!1623 r!15532))) b!123086))

(assert (= (and b!122928 ((_ is Union!555) (regOne!1623 r!15532))) b!123087))

(declare-fun b!123089 () Bool)

(declare-fun e!70681 () Bool)

(declare-fun tp!67444 () Bool)

(declare-fun tp!67442 () Bool)

(assert (=> b!123089 (= e!70681 (and tp!67444 tp!67442))))

(assert (=> b!122928 (= tp!67409 e!70681)))

(declare-fun b!123088 () Bool)

(assert (=> b!123088 (= e!70681 tp_is_empty!1165)))

(declare-fun b!123091 () Bool)

(declare-fun tp!67441 () Bool)

(declare-fun tp!67443 () Bool)

(assert (=> b!123091 (= e!70681 (and tp!67441 tp!67443))))

(declare-fun b!123090 () Bool)

(declare-fun tp!67440 () Bool)

(assert (=> b!123090 (= e!70681 tp!67440)))

(assert (= (and b!122928 ((_ is ElementMatch!555) (regTwo!1623 r!15532))) b!123088))

(assert (= (and b!122928 ((_ is Concat!939) (regTwo!1623 r!15532))) b!123089))

(assert (= (and b!122928 ((_ is Star!555) (regTwo!1623 r!15532))) b!123090))

(assert (= (and b!122928 ((_ is Union!555) (regTwo!1623 r!15532))) b!123091))

(declare-fun e!70684 () Bool)

(declare-fun tp!67453 () Bool)

(declare-fun tp!67452 () Bool)

(declare-fun tp!67451 () Bool)

(declare-fun b!123096 () Bool)

(assert (=> b!123096 (= e!70684 (and tp!67451 tp_is_empty!1165 tp!67452 tp!67453))))

(assert (=> b!122924 (= tp!67413 e!70684)))

(assert (= (and b!122924 ((_ is Cons!2015) (zeroValue!677 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470)))))))) b!123096))

(declare-fun tp!67455 () Bool)

(declare-fun tp!67454 () Bool)

(declare-fun tp!67456 () Bool)

(declare-fun b!123097 () Bool)

(declare-fun e!70685 () Bool)

(assert (=> b!123097 (= e!70685 (and tp!67454 tp_is_empty!1165 tp!67455 tp!67456))))

(assert (=> b!122924 (= tp!67416 e!70685)))

(assert (= (and b!122924 ((_ is Cons!2015) (minValue!677 (v!13374 (underlying!1041 (v!13375 (underlying!1042 (cache!871 cache!470)))))))) b!123097))

(declare-fun b!123098 () Bool)

(declare-fun tp!67459 () Bool)

(declare-fun e!70686 () Bool)

(declare-fun tp!67457 () Bool)

(declare-fun tp!67458 () Bool)

(assert (=> b!123098 (= e!70686 (and tp!67457 tp_is_empty!1165 tp!67458 tp!67459))))

(assert (=> b!122929 (= tp!67407 e!70686)))

(assert (= (and b!122929 ((_ is Cons!2015) mapDefault!1629)) b!123098))

(declare-fun b!123103 () Bool)

(declare-fun e!70689 () Bool)

(declare-fun tp!67462 () Bool)

(assert (=> b!123103 (= e!70689 (and tp_is_empty!1165 tp!67462))))

(assert (=> b!122925 (= tp!67406 e!70689)))

(assert (= (and b!122925 ((_ is Cons!2014) (t!22497 testedP!367))) b!123103))

(declare-fun b!123104 () Bool)

(declare-fun e!70690 () Bool)

(declare-fun tp!67463 () Bool)

(assert (=> b!123104 (= e!70690 (and tp_is_empty!1165 tp!67463))))

(assert (=> b!122930 (= tp!67418 e!70690)))

(assert (= (and b!122930 ((_ is Cons!2014) (t!22497 totalInput!1363))) b!123104))

(declare-fun tp!67483 () Bool)

(declare-fun b!123111 () Bool)

(declare-fun tp!67482 () Bool)

(declare-fun tp!67480 () Bool)

(declare-fun e!70695 () Bool)

(assert (=> b!123111 (= e!70695 (and tp!67483 tp_is_empty!1165 tp!67482 tp!67480))))

(declare-fun mapIsEmpty!1632 () Bool)

(declare-fun mapRes!1632 () Bool)

(assert (=> mapIsEmpty!1632 mapRes!1632))

(declare-fun condMapEmpty!1632 () Bool)

(declare-fun mapDefault!1632 () List!2021)

(assert (=> mapNonEmpty!1629 (= condMapEmpty!1632 (= mapRest!1629 ((as const (Array (_ BitVec 32) List!2021)) mapDefault!1632)))))

(declare-fun e!70696 () Bool)

(assert (=> mapNonEmpty!1629 (= tp!67415 (and e!70696 mapRes!1632))))

(declare-fun tp!67478 () Bool)

(declare-fun tp!67481 () Bool)

(declare-fun tp!67484 () Bool)

(declare-fun b!123112 () Bool)

(assert (=> b!123112 (= e!70696 (and tp!67484 tp_is_empty!1165 tp!67481 tp!67478))))

(declare-fun mapNonEmpty!1632 () Bool)

(declare-fun tp!67479 () Bool)

(assert (=> mapNonEmpty!1632 (= mapRes!1632 (and tp!67479 e!70695))))

(declare-fun mapKey!1632 () (_ BitVec 32))

(declare-fun mapRest!1632 () (Array (_ BitVec 32) List!2021))

(declare-fun mapValue!1632 () List!2021)

(assert (=> mapNonEmpty!1632 (= mapRest!1629 (store mapRest!1632 mapKey!1632 mapValue!1632))))

(assert (= (and mapNonEmpty!1629 condMapEmpty!1632) mapIsEmpty!1632))

(assert (= (and mapNonEmpty!1629 (not condMapEmpty!1632)) mapNonEmpty!1632))

(assert (= (and mapNonEmpty!1632 ((_ is Cons!2015) mapValue!1632)) b!123111))

(assert (= (and mapNonEmpty!1629 ((_ is Cons!2015) mapDefault!1632)) b!123112))

(declare-fun m!109066 () Bool)

(assert (=> mapNonEmpty!1632 m!109066))

(declare-fun e!70697 () Bool)

(declare-fun tp!67485 () Bool)

(declare-fun tp!67487 () Bool)

(declare-fun tp!67486 () Bool)

(declare-fun b!123113 () Bool)

(assert (=> b!123113 (= e!70697 (and tp!67485 tp_is_empty!1165 tp!67486 tp!67487))))

(assert (=> mapNonEmpty!1629 (= tp!67419 e!70697)))

(assert (= (and mapNonEmpty!1629 ((_ is Cons!2015) mapValue!1629)) b!123113))

(declare-fun b!123115 () Bool)

(declare-fun e!70698 () Bool)

(declare-fun tp!67492 () Bool)

(declare-fun tp!67490 () Bool)

(assert (=> b!123115 (= e!70698 (and tp!67492 tp!67490))))

(assert (=> b!122917 (= tp!67417 e!70698)))

(declare-fun b!123114 () Bool)

(assert (=> b!123114 (= e!70698 tp_is_empty!1165)))

(declare-fun b!123117 () Bool)

(declare-fun tp!67489 () Bool)

(declare-fun tp!67491 () Bool)

(assert (=> b!123117 (= e!70698 (and tp!67489 tp!67491))))

(declare-fun b!123116 () Bool)

(declare-fun tp!67488 () Bool)

(assert (=> b!123116 (= e!70698 tp!67488)))

(assert (= (and b!122917 ((_ is ElementMatch!555) (regOne!1622 r!15532))) b!123114))

(assert (= (and b!122917 ((_ is Concat!939) (regOne!1622 r!15532))) b!123115))

(assert (= (and b!122917 ((_ is Star!555) (regOne!1622 r!15532))) b!123116))

(assert (= (and b!122917 ((_ is Union!555) (regOne!1622 r!15532))) b!123117))

(declare-fun b!123119 () Bool)

(declare-fun e!70699 () Bool)

(declare-fun tp!67497 () Bool)

(declare-fun tp!67495 () Bool)

(assert (=> b!123119 (= e!70699 (and tp!67497 tp!67495))))

(assert (=> b!122917 (= tp!67412 e!70699)))

(declare-fun b!123118 () Bool)

(assert (=> b!123118 (= e!70699 tp_is_empty!1165)))

(declare-fun b!123121 () Bool)

(declare-fun tp!67494 () Bool)

(declare-fun tp!67496 () Bool)

(assert (=> b!123121 (= e!70699 (and tp!67494 tp!67496))))

(declare-fun b!123120 () Bool)

(declare-fun tp!67493 () Bool)

(assert (=> b!123120 (= e!70699 tp!67493)))

(assert (= (and b!122917 ((_ is ElementMatch!555) (regTwo!1622 r!15532))) b!123118))

(assert (= (and b!122917 ((_ is Concat!939) (regTwo!1622 r!15532))) b!123119))

(assert (= (and b!122917 ((_ is Star!555) (regTwo!1622 r!15532))) b!123120))

(assert (= (and b!122917 ((_ is Union!555) (regTwo!1622 r!15532))) b!123121))

(declare-fun b!123122 () Bool)

(declare-fun e!70700 () Bool)

(declare-fun tp!67498 () Bool)

(assert (=> b!123122 (= e!70700 (and tp_is_empty!1165 tp!67498))))

(assert (=> b!122932 (= tp!67414 e!70700)))

(assert (= (and b!122932 ((_ is Cons!2014) (t!22497 testedSuffix!285))) b!123122))

(check-sat (not b!122992) (not b!123086) (not b!122950) (not b!123012) (not b!123069) (not b!123090) (not b!122990) (not b!123122) (not b!123034) (not bm!5273) (not b!123089) (not b!123011) (not b!123081) (not b!123112) (not b!123007) (not bm!5272) (not b!123111) b_and!6043 (not d!29207) (not b!123085) (not d!29209) (not d!29159) (not d!29213) (not mapNonEmpty!1632) (not b!123119) (not b_next!3915) (not b!123014) (not b!122994) (not d!29189) (not b_next!3913) (not bm!5275) b_and!6045 (not b!123098) (not b!123120) (not b!123010) (not b!123117) (not d!29191) (not b!123097) (not b!123113) (not d!29203) (not bm!5286) (not d!29181) (not b!123029) (not d!29173) (not b!123023) (not b!123006) (not b!122948) (not b!123087) (not b!123116) (not d!29211) (not b!122980) (not b!122986) (not b!122993) (not b!123115) (not b!122949) (not d!29205) (not b!123015) (not d!29193) (not d!29201) (not bm!5285) (not d!29217) (not b!123103) (not b!122996) (not b!123104) (not bm!5270) (not b!123096) (not b!122989) (not b!123083) (not b!123022) (not b!123018) (not b!123091) (not b!122972) (not b!122988) (not b!123121) (not d!29163) (not b!123019) (not d!29197) tp_is_empty!1165 (not b!123082))
(check-sat b_and!6043 b_and!6045 (not b_next!3913) (not b_next!3915))
