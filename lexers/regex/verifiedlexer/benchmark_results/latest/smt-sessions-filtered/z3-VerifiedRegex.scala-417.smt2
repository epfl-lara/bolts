; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12330 () Bool)

(assert start!12330)

(declare-fun b!121984 () Bool)

(declare-fun b_free!3889 () Bool)

(declare-fun b_next!3889 () Bool)

(assert (=> b!121984 (= b_free!3889 (not b_next!3889))))

(declare-fun tp!66981 () Bool)

(declare-fun b_and!6019 () Bool)

(assert (=> b!121984 (= tp!66981 b_and!6019)))

(declare-fun b!121972 () Bool)

(declare-fun b_free!3891 () Bool)

(declare-fun b_next!3891 () Bool)

(assert (=> b!121972 (= b_free!3891 (not b_next!3891))))

(declare-fun tp!66983 () Bool)

(declare-fun b_and!6021 () Bool)

(assert (=> b!121972 (= tp!66983 b_and!6021)))

(declare-fun mapNonEmpty!1605 () Bool)

(declare-fun mapRes!1605 () Bool)

(declare-fun tp!66991 () Bool)

(declare-fun tp!66984 () Bool)

(assert (=> mapNonEmpty!1605 (= mapRes!1605 (and tp!66991 tp!66984))))

(declare-fun mapKey!1605 () (_ BitVec 32))

(declare-datatypes ((C!2020 0))(
  ( (C!2021 (val!736 Int)) )
))
(declare-datatypes ((Regex!549 0))(
  ( (ElementMatch!549 (c!27107 C!2020)) (Concat!933 (regOne!1610 Regex!549) (regTwo!1610 Regex!549)) (EmptyExpr!549) (Star!549 (reg!878 Regex!549)) (EmptyLang!549) (Union!549 (regOne!1611 Regex!549) (regTwo!1611 Regex!549)) )
))
(declare-datatypes ((tuple2!2330 0))(
  ( (tuple2!2331 (_1!1375 Regex!549) (_2!1375 C!2020)) )
))
(declare-datatypes ((tuple2!2332 0))(
  ( (tuple2!2333 (_1!1376 tuple2!2330) (_2!1376 Regex!549)) )
))
(declare-datatypes ((List!2008 0))(
  ( (Nil!2002) (Cons!2002 (h!7399 tuple2!2332) (t!22485 List!2008)) )
))
(declare-fun mapRest!1605 () (Array (_ BitVec 32) List!2008))

(declare-datatypes ((Hashable!411 0))(
  ( (HashableExt!410 (__x!2170 Int)) )
))
(declare-datatypes ((array!1537 0))(
  ( (array!1538 (arr!714 (Array (_ BitVec 32) (_ BitVec 64))) (size!1859 (_ BitVec 32))) )
))
(declare-datatypes ((array!1539 0))(
  ( (array!1540 (arr!715 (Array (_ BitVec 32) List!2008)) (size!1860 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!830 0))(
  ( (LongMapFixedSize!831 (defaultEntry!754 Int) (mask!1357 (_ BitVec 32)) (extraKeys!661 (_ BitVec 32)) (zeroValue!671 List!2008) (minValue!671 List!2008) (_size!963 (_ BitVec 32)) (_keys!706 array!1537) (_values!693 array!1539) (_vacant!476 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1649 0))(
  ( (Cell!1650 (v!13362 LongMapFixedSize!830)) )
))
(declare-datatypes ((MutLongMap!415 0))(
  ( (LongMap!415 (underlying!1029 Cell!1649)) (MutLongMapExt!414 (__x!2171 Int)) )
))
(declare-datatypes ((Cell!1651 0))(
  ( (Cell!1652 (v!13363 MutLongMap!415)) )
))
(declare-datatypes ((MutableMap!411 0))(
  ( (MutableMapExt!410 (__x!2172 Int)) (HashMap!411 (underlying!1030 Cell!1651) (hashF!2287 Hashable!411) (_size!964 (_ BitVec 32)) (defaultValue!560 Int)) )
))
(declare-datatypes ((Cache!258 0))(
  ( (Cache!259 (cache!863 MutableMap!411)) )
))
(declare-fun cache!470 () Cache!258)

(declare-fun mapValue!1605 () List!2008)

(assert (=> mapNonEmpty!1605 (= (arr!715 (_values!693 (v!13362 (underlying!1029 (v!13363 (underlying!1030 (cache!863 cache!470))))))) (store mapRest!1605 mapKey!1605 mapValue!1605))))

(declare-fun b!121964 () Bool)

(declare-fun e!69921 () Bool)

(declare-fun e!69914 () Bool)

(assert (=> b!121964 (= e!69921 e!69914)))

(declare-fun b!121965 () Bool)

(declare-fun e!69919 () Bool)

(declare-fun e!69930 () Bool)

(assert (=> b!121965 (= e!69919 e!69930)))

(declare-fun res!57096 () Bool)

(assert (=> b!121965 (=> res!57096 e!69930)))

(declare-fun r!15532 () Regex!549)

(declare-fun nullable!86 (Regex!549) Bool)

(assert (=> b!121965 (= res!57096 (not (nullable!86 r!15532)))))

(declare-datatypes ((List!2009 0))(
  ( (Nil!2003) (Cons!2003 (h!7400 C!2020) (t!22486 List!2009)) )
))
(declare-fun lt!36442 () List!2009)

(declare-fun lt!36432 () List!2009)

(declare-fun totalInput!1363 () List!2009)

(declare-fun ++!377 (List!2009 List!2009) List!2009)

(assert (=> b!121965 (= (++!377 lt!36442 lt!36432) totalInput!1363)))

(declare-datatypes ((Unit!1524 0))(
  ( (Unit!1525) )
))
(declare-fun lt!36430 () Unit!1524)

(declare-fun testedP!367 () List!2009)

(declare-fun lt!36429 () C!2020)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!23 (List!2009 C!2020 List!2009 List!2009) Unit!1524)

(assert (=> b!121965 (= lt!36430 (lemmaMoveElementToOtherListKeepsConcatEq!23 testedP!367 lt!36429 lt!36432 totalInput!1363))))

(declare-fun testedSuffix!285 () List!2009)

(declare-fun tail!236 (List!2009) List!2009)

(assert (=> b!121965 (= lt!36432 (tail!236 testedSuffix!285))))

(declare-fun lt!36436 () List!2009)

(declare-fun isPrefix!126 (List!2009 List!2009) Bool)

(declare-fun head!500 (List!2009) C!2020)

(assert (=> b!121965 (isPrefix!126 (++!377 testedP!367 (Cons!2003 (head!500 lt!36436) Nil!2003)) totalInput!1363)))

(declare-fun lt!36445 () Unit!1524)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!29 (List!2009 List!2009) Unit!1524)

(assert (=> b!121965 (= lt!36445 (lemmaAddHeadSuffixToPrefixStillPrefix!29 testedP!367 totalInput!1363))))

(assert (=> b!121965 (= lt!36442 (++!377 testedP!367 (Cons!2003 lt!36429 Nil!2003)))))

(assert (=> b!121965 (= lt!36429 (head!500 testedSuffix!285))))

(declare-fun b!121966 () Bool)

(declare-fun e!69923 () Bool)

(declare-fun tp_is_empty!1153 () Bool)

(declare-fun tp!66979 () Bool)

(assert (=> b!121966 (= e!69923 (and tp_is_empty!1153 tp!66979))))

(declare-fun b!121967 () Bool)

(declare-fun res!57091 () Bool)

(assert (=> b!121967 (=> res!57091 e!69930)))

(declare-fun validRegex!145 (Regex!549) Bool)

(declare-fun derivativeStep!55 (Regex!549 C!2020) Regex!549)

(assert (=> b!121967 (= res!57091 (not (validRegex!145 (derivativeStep!55 r!15532 lt!36429))))))

(declare-fun b!121968 () Bool)

(declare-fun e!69917 () Bool)

(assert (=> b!121968 (= e!69917 e!69919)))

(declare-fun res!57098 () Bool)

(assert (=> b!121968 (=> res!57098 e!69919)))

(declare-fun lt!36431 () Int)

(declare-fun lt!36437 () Int)

(assert (=> b!121968 (= res!57098 (>= lt!36431 lt!36437))))

(declare-fun lt!36441 () Unit!1524)

(declare-fun e!69926 () Unit!1524)

(assert (=> b!121968 (= lt!36441 e!69926)))

(declare-fun c!27106 () Bool)

(assert (=> b!121968 (= c!27106 (= lt!36431 lt!36437))))

(assert (=> b!121968 (<= lt!36431 lt!36437)))

(declare-fun lt!36439 () Unit!1524)

(declare-fun lemmaIsPrefixThenSmallerEqSize!38 (List!2009 List!2009) Unit!1524)

(assert (=> b!121968 (= lt!36439 (lemmaIsPrefixThenSmallerEqSize!38 testedP!367 totalInput!1363))))

(declare-fun b!121969 () Bool)

(declare-fun e!69933 () Bool)

(declare-fun e!69913 () Bool)

(assert (=> b!121969 (= e!69933 e!69913)))

(declare-fun res!57090 () Bool)

(assert (=> b!121969 (=> (not res!57090) (not e!69913))))

(declare-fun lt!36433 () List!2009)

(assert (=> b!121969 (= res!57090 (= lt!36433 totalInput!1363))))

(assert (=> b!121969 (= lt!36433 (++!377 testedP!367 testedSuffix!285))))

(declare-fun b!121970 () Bool)

(declare-fun e!69918 () Bool)

(declare-fun tp!66985 () Bool)

(assert (=> b!121970 (= e!69918 tp!66985)))

(declare-fun res!57100 () Bool)

(assert (=> start!12330 (=> (not res!57100) (not e!69933))))

(assert (=> start!12330 (= res!57100 (validRegex!145 r!15532))))

(assert (=> start!12330 e!69933))

(assert (=> start!12330 true))

(assert (=> start!12330 e!69918))

(declare-fun e!69927 () Bool)

(assert (=> start!12330 e!69927))

(declare-fun e!69932 () Bool)

(assert (=> start!12330 e!69932))

(assert (=> start!12330 e!69923))

(declare-fun inv!2532 (Cache!258) Bool)

(assert (=> start!12330 (and (inv!2532 cache!470) e!69921)))

(declare-fun b!121971 () Bool)

(declare-fun Unit!1526 () Unit!1524)

(assert (=> b!121971 (= e!69926 Unit!1526)))

(declare-fun e!69924 () Bool)

(assert (=> b!121972 (= e!69914 (and e!69924 tp!66983))))

(declare-fun b!121973 () Bool)

(declare-fun e!69920 () Bool)

(declare-fun tp!66989 () Bool)

(assert (=> b!121973 (= e!69920 (and tp!66989 mapRes!1605))))

(declare-fun condMapEmpty!1605 () Bool)

(declare-fun mapDefault!1605 () List!2008)

(assert (=> b!121973 (= condMapEmpty!1605 (= (arr!715 (_values!693 (v!13362 (underlying!1029 (v!13363 (underlying!1030 (cache!863 cache!470))))))) ((as const (Array (_ BitVec 32) List!2008)) mapDefault!1605)))))

(declare-fun b!121974 () Bool)

(declare-fun e!69928 () Bool)

(declare-fun lt!36435 () MutLongMap!415)

(get-info :version)

(assert (=> b!121974 (= e!69924 (and e!69928 ((_ is LongMap!415) lt!36435)))))

(assert (=> b!121974 (= lt!36435 (v!13363 (underlying!1030 (cache!863 cache!470))))))

(declare-fun b!121975 () Bool)

(declare-fun e!69922 () Bool)

(assert (=> b!121975 (= e!69922 e!69917)))

(declare-fun res!57099 () Bool)

(assert (=> b!121975 (=> res!57099 e!69917)))

(declare-fun lostCause!70 (Regex!549) Bool)

(assert (=> b!121975 (= res!57099 (lostCause!70 r!15532))))

(assert (=> b!121975 (and (= testedSuffix!285 lt!36436) (= lt!36436 testedSuffix!285))))

(declare-fun lt!36434 () Unit!1524)

(declare-fun lemmaSamePrefixThenSameSuffix!61 (List!2009 List!2009 List!2009 List!2009 List!2009) Unit!1524)

(assert (=> b!121975 (= lt!36434 (lemmaSamePrefixThenSameSuffix!61 testedP!367 testedSuffix!285 testedP!367 lt!36436 totalInput!1363))))

(declare-fun getSuffix!65 (List!2009 List!2009) List!2009)

(assert (=> b!121975 (= lt!36436 (getSuffix!65 totalInput!1363 testedP!367))))

(declare-fun b!121976 () Bool)

(declare-fun res!57094 () Bool)

(assert (=> b!121976 (=> res!57094 e!69917)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!121976 (= res!57094 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!121977 () Bool)

(declare-fun e!69925 () Bool)

(declare-fun e!69915 () Bool)

(assert (=> b!121977 (= e!69925 e!69915)))

(declare-fun res!57097 () Bool)

(assert (=> b!121977 (=> (not res!57097) (not e!69915))))

(assert (=> b!121977 (= res!57097 (= totalInputSize!643 lt!36437))))

(declare-fun size!1861 (List!2009) Int)

(assert (=> b!121977 (= lt!36437 (size!1861 totalInput!1363))))

(declare-fun b!121978 () Bool)

(declare-fun Unit!1527 () Unit!1524)

(assert (=> b!121978 (= e!69926 Unit!1527)))

(declare-fun lt!36438 () Unit!1524)

(declare-fun lemmaIsPrefixRefl!96 (List!2009 List!2009) Unit!1524)

(assert (=> b!121978 (= lt!36438 (lemmaIsPrefixRefl!96 totalInput!1363 totalInput!1363))))

(assert (=> b!121978 (isPrefix!126 totalInput!1363 totalInput!1363)))

(declare-fun lt!36443 () Unit!1524)

(declare-fun lemmaIsPrefixSameLengthThenSameList!39 (List!2009 List!2009 List!2009) Unit!1524)

(assert (=> b!121978 (= lt!36443 (lemmaIsPrefixSameLengthThenSameList!39 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!121978 false))

(declare-fun b!121979 () Bool)

(declare-fun tp!66990 () Bool)

(declare-fun tp!66987 () Bool)

(assert (=> b!121979 (= e!69918 (and tp!66990 tp!66987))))

(declare-fun b!121980 () Bool)

(declare-fun tp!66986 () Bool)

(assert (=> b!121980 (= e!69927 (and tp_is_empty!1153 tp!66986))))

(declare-fun b!121981 () Bool)

(assert (=> b!121981 (= e!69915 (not e!69922))))

(declare-fun res!57095 () Bool)

(assert (=> b!121981 (=> res!57095 e!69922)))

(assert (=> b!121981 (= res!57095 (not (isPrefix!126 testedP!367 totalInput!1363)))))

(assert (=> b!121981 (isPrefix!126 testedP!367 lt!36433)))

(declare-fun lt!36444 () Unit!1524)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!70 (List!2009 List!2009) Unit!1524)

(assert (=> b!121981 (= lt!36444 (lemmaConcatTwoListThenFirstIsPrefix!70 testedP!367 testedSuffix!285))))

(declare-fun b!121982 () Bool)

(assert (=> b!121982 (= e!69918 tp_is_empty!1153)))

(declare-fun b!121983 () Bool)

(declare-fun e!69916 () Bool)

(assert (=> b!121983 (= e!69928 e!69916)))

(declare-fun e!69929 () Bool)

(declare-fun tp!66982 () Bool)

(declare-fun tp!66988 () Bool)

(declare-fun array_inv!513 (array!1537) Bool)

(declare-fun array_inv!514 (array!1539) Bool)

(assert (=> b!121984 (= e!69929 (and tp!66981 tp!66988 tp!66982 (array_inv!513 (_keys!706 (v!13362 (underlying!1029 (v!13363 (underlying!1030 (cache!863 cache!470))))))) (array_inv!514 (_values!693 (v!13362 (underlying!1029 (v!13363 (underlying!1030 (cache!863 cache!470))))))) e!69920))))

(declare-fun b!121985 () Bool)

(declare-fun tp!66977 () Bool)

(assert (=> b!121985 (= e!69932 (and tp_is_empty!1153 tp!66977))))

(declare-fun b!121986 () Bool)

(declare-fun res!57092 () Bool)

(assert (=> b!121986 (=> (not res!57092) (not e!69933))))

(declare-fun valid!373 (Cache!258) Bool)

(assert (=> b!121986 (= res!57092 (valid!373 cache!470))))

(declare-fun mapIsEmpty!1605 () Bool)

(assert (=> mapIsEmpty!1605 mapRes!1605))

(declare-fun b!121987 () Bool)

(assert (=> b!121987 (= e!69916 e!69929)))

(declare-fun b!121988 () Bool)

(declare-fun lt!36440 () Int)

(assert (=> b!121988 (= e!69930 (or (not (= (+ 1 testedPSize!285) lt!36440)) (< (- lt!36437 lt!36440) (- lt!36437 lt!36431))))))

(assert (=> b!121988 (= lt!36440 (size!1861 lt!36442))))

(declare-fun b!121989 () Bool)

(assert (=> b!121989 (= e!69913 e!69925)))

(declare-fun res!57093 () Bool)

(assert (=> b!121989 (=> (not res!57093) (not e!69925))))

(assert (=> b!121989 (= res!57093 (= testedPSize!285 lt!36431))))

(assert (=> b!121989 (= lt!36431 (size!1861 testedP!367))))

(declare-fun b!121990 () Bool)

(declare-fun tp!66978 () Bool)

(declare-fun tp!66980 () Bool)

(assert (=> b!121990 (= e!69918 (and tp!66978 tp!66980))))

(assert (= (and start!12330 res!57100) b!121986))

(assert (= (and b!121986 res!57092) b!121969))

(assert (= (and b!121969 res!57090) b!121989))

(assert (= (and b!121989 res!57093) b!121977))

(assert (= (and b!121977 res!57097) b!121981))

(assert (= (and b!121981 (not res!57095)) b!121975))

(assert (= (and b!121975 (not res!57099)) b!121976))

(assert (= (and b!121976 (not res!57094)) b!121968))

(assert (= (and b!121968 c!27106) b!121978))

(assert (= (and b!121968 (not c!27106)) b!121971))

(assert (= (and b!121968 (not res!57098)) b!121965))

(assert (= (and b!121965 (not res!57096)) b!121967))

(assert (= (and b!121967 (not res!57091)) b!121988))

(assert (= (and start!12330 ((_ is ElementMatch!549) r!15532)) b!121982))

(assert (= (and start!12330 ((_ is Concat!933) r!15532)) b!121990))

(assert (= (and start!12330 ((_ is Star!549) r!15532)) b!121970))

(assert (= (and start!12330 ((_ is Union!549) r!15532)) b!121979))

(assert (= (and start!12330 ((_ is Cons!2003) totalInput!1363)) b!121980))

(assert (= (and start!12330 ((_ is Cons!2003) testedSuffix!285)) b!121985))

(assert (= (and start!12330 ((_ is Cons!2003) testedP!367)) b!121966))

(assert (= (and b!121973 condMapEmpty!1605) mapIsEmpty!1605))

(assert (= (and b!121973 (not condMapEmpty!1605)) mapNonEmpty!1605))

(assert (= b!121984 b!121973))

(assert (= b!121987 b!121984))

(assert (= b!121983 b!121987))

(assert (= (and b!121974 ((_ is LongMap!415) (v!13363 (underlying!1030 (cache!863 cache!470))))) b!121983))

(assert (= b!121972 b!121974))

(assert (= (and b!121964 ((_ is HashMap!411) (cache!863 cache!470))) b!121972))

(assert (= start!12330 b!121964))

(declare-fun m!108064 () Bool)

(assert (=> b!121978 m!108064))

(declare-fun m!108066 () Bool)

(assert (=> b!121978 m!108066))

(declare-fun m!108068 () Bool)

(assert (=> b!121978 m!108068))

(declare-fun m!108070 () Bool)

(assert (=> mapNonEmpty!1605 m!108070))

(declare-fun m!108072 () Bool)

(assert (=> b!121988 m!108072))

(declare-fun m!108074 () Bool)

(assert (=> start!12330 m!108074))

(declare-fun m!108076 () Bool)

(assert (=> start!12330 m!108076))

(declare-fun m!108078 () Bool)

(assert (=> b!121989 m!108078))

(declare-fun m!108080 () Bool)

(assert (=> b!121977 m!108080))

(declare-fun m!108082 () Bool)

(assert (=> b!121969 m!108082))

(declare-fun m!108084 () Bool)

(assert (=> b!121984 m!108084))

(declare-fun m!108086 () Bool)

(assert (=> b!121984 m!108086))

(declare-fun m!108088 () Bool)

(assert (=> b!121986 m!108088))

(declare-fun m!108090 () Bool)

(assert (=> b!121968 m!108090))

(declare-fun m!108092 () Bool)

(assert (=> b!121967 m!108092))

(assert (=> b!121967 m!108092))

(declare-fun m!108094 () Bool)

(assert (=> b!121967 m!108094))

(declare-fun m!108096 () Bool)

(assert (=> b!121975 m!108096))

(declare-fun m!108098 () Bool)

(assert (=> b!121975 m!108098))

(declare-fun m!108100 () Bool)

(assert (=> b!121975 m!108100))

(declare-fun m!108102 () Bool)

(assert (=> b!121981 m!108102))

(declare-fun m!108104 () Bool)

(assert (=> b!121981 m!108104))

(declare-fun m!108106 () Bool)

(assert (=> b!121981 m!108106))

(declare-fun m!108108 () Bool)

(assert (=> b!121965 m!108108))

(declare-fun m!108110 () Bool)

(assert (=> b!121965 m!108110))

(declare-fun m!108112 () Bool)

(assert (=> b!121965 m!108112))

(declare-fun m!108114 () Bool)

(assert (=> b!121965 m!108114))

(declare-fun m!108116 () Bool)

(assert (=> b!121965 m!108116))

(declare-fun m!108118 () Bool)

(assert (=> b!121965 m!108118))

(declare-fun m!108120 () Bool)

(assert (=> b!121965 m!108120))

(declare-fun m!108122 () Bool)

(assert (=> b!121965 m!108122))

(declare-fun m!108124 () Bool)

(assert (=> b!121965 m!108124))

(assert (=> b!121965 m!108114))

(declare-fun m!108126 () Bool)

(assert (=> b!121965 m!108126))

(check-sat b_and!6021 (not b!121980) (not b!121965) (not b!121967) b_and!6019 (not b!121984) tp_is_empty!1153 (not b!121969) (not b!121979) (not b!121981) (not mapNonEmpty!1605) (not b!121975) (not b!121968) (not b!121978) (not b_next!3889) (not b!121989) (not b_next!3891) (not b!121985) (not b!121990) (not b!121973) (not b!121977) (not b!121970) (not b!121966) (not b!121988) (not start!12330) (not b!121986))
(check-sat b_and!6021 b_and!6019 (not b_next!3891) (not b_next!3889))
