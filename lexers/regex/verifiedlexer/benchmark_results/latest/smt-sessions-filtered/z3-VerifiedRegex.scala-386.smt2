; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11736 () Bool)

(assert start!11736)

(declare-fun b!114888 () Bool)

(declare-fun b_free!3641 () Bool)

(declare-fun b_next!3641 () Bool)

(assert (=> b!114888 (= b_free!3641 (not b_next!3641))))

(declare-fun tp!62734 () Bool)

(declare-fun b_and!5771 () Bool)

(assert (=> b!114888 (= tp!62734 b_and!5771)))

(declare-fun b!114904 () Bool)

(declare-fun b_free!3643 () Bool)

(declare-fun b_next!3643 () Bool)

(assert (=> b!114904 (= b_free!3643 (not b_next!3643))))

(declare-fun tp!62745 () Bool)

(declare-fun b_and!5773 () Bool)

(assert (=> b!114904 (= tp!62745 b_and!5773)))

(declare-fun b!114882 () Bool)

(declare-fun e!64983 () Bool)

(declare-fun e!64977 () Bool)

(assert (=> b!114882 (= e!64983 e!64977)))

(declare-fun res!54686 () Bool)

(assert (=> b!114882 (=> (not res!54686) (not e!64977))))

(declare-datatypes ((C!1896 0))(
  ( (C!1897 (val!674 Int)) )
))
(declare-datatypes ((List!1889 0))(
  ( (Nil!1883) (Cons!1883 (h!7280 C!1896) (t!22366 List!1889)) )
))
(declare-fun lt!33575 () List!1889)

(declare-fun totalInput!1363 () List!1889)

(assert (=> b!114882 (= res!54686 (= lt!33575 totalInput!1363))))

(declare-fun testedP!367 () List!1889)

(declare-fun testedSuffix!285 () List!1889)

(declare-fun ++!329 (List!1889 List!1889) List!1889)

(assert (=> b!114882 (= lt!33575 (++!329 testedP!367 testedSuffix!285))))

(declare-fun b!114883 () Bool)

(declare-fun e!64970 () Bool)

(declare-fun tp!62747 () Bool)

(assert (=> b!114883 (= e!64970 tp!62747)))

(declare-fun b!114884 () Bool)

(declare-fun e!64986 () Bool)

(assert (=> b!114884 (= e!64986 true)))

(declare-fun lt!33578 () List!1889)

(declare-fun head!471 (List!1889) C!1896)

(assert (=> b!114884 (= lt!33578 (++!329 testedP!367 (Cons!1883 (head!471 testedSuffix!285) Nil!1883)))))

(declare-fun b!114885 () Bool)

(declare-fun tp!62742 () Bool)

(declare-fun tp!62737 () Bool)

(assert (=> b!114885 (= e!64970 (and tp!62742 tp!62737))))

(declare-fun b!114886 () Bool)

(declare-fun e!64968 () Bool)

(declare-fun e!64985 () Bool)

(assert (=> b!114886 (= e!64968 e!64985)))

(declare-fun res!54683 () Bool)

(assert (=> b!114886 (=> res!54683 e!64985)))

(declare-datatypes ((Regex!487 0))(
  ( (ElementMatch!487 (c!26515 C!1896)) (Concat!871 (regOne!1486 Regex!487) (regTwo!1486 Regex!487)) (EmptyExpr!487) (Star!487 (reg!816 Regex!487)) (EmptyLang!487) (Union!487 (regOne!1487 Regex!487) (regTwo!1487 Regex!487)) )
))
(declare-fun r!15532 () Regex!487)

(declare-fun lostCause!33 (Regex!487) Bool)

(assert (=> b!114886 (= res!54683 (lostCause!33 r!15532))))

(declare-fun lt!33574 () List!1889)

(assert (=> b!114886 (and (= testedSuffix!285 lt!33574) (= lt!33574 testedSuffix!285))))

(declare-datatypes ((Unit!1358 0))(
  ( (Unit!1359) )
))
(declare-fun lt!33573 () Unit!1358)

(declare-fun lemmaSamePrefixThenSameSuffix!21 (List!1889 List!1889 List!1889 List!1889 List!1889) Unit!1358)

(assert (=> b!114886 (= lt!33573 (lemmaSamePrefixThenSameSuffix!21 testedP!367 testedSuffix!285 testedP!367 lt!33574 totalInput!1363))))

(declare-fun getSuffix!22 (List!1889 List!1889) List!1889)

(assert (=> b!114886 (= lt!33574 (getSuffix!22 totalInput!1363 testedP!367))))

(declare-fun b!114887 () Bool)

(declare-fun e!64982 () Bool)

(assert (=> b!114887 (= e!64982 (not e!64968))))

(declare-fun res!54681 () Bool)

(assert (=> b!114887 (=> res!54681 e!64968)))

(declare-fun isPrefix!76 (List!1889 List!1889) Bool)

(assert (=> b!114887 (= res!54681 (not (isPrefix!76 testedP!367 totalInput!1363)))))

(assert (=> b!114887 (isPrefix!76 testedP!367 lt!33575)))

(declare-fun lt!33581 () Unit!1358)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!24 (List!1889 List!1889) Unit!1358)

(assert (=> b!114887 (= lt!33581 (lemmaConcatTwoListThenFirstIsPrefix!24 testedP!367 testedSuffix!285))))

(declare-fun e!64978 () Bool)

(declare-fun tp!62744 () Bool)

(declare-fun e!64971 () Bool)

(declare-fun tp!62743 () Bool)

(declare-datatypes ((Hashable!349 0))(
  ( (HashableExt!348 (__x!1984 Int)) )
))
(declare-datatypes ((tuple2!2068 0))(
  ( (tuple2!2069 (_1!1244 Regex!487) (_2!1244 C!1896)) )
))
(declare-datatypes ((tuple2!2070 0))(
  ( (tuple2!2071 (_1!1245 tuple2!2068) (_2!1245 Regex!487)) )
))
(declare-datatypes ((List!1890 0))(
  ( (Nil!1884) (Cons!1884 (h!7281 tuple2!2070) (t!22367 List!1890)) )
))
(declare-datatypes ((array!1263 0))(
  ( (array!1264 (arr!590 (Array (_ BitVec 32) (_ BitVec 64))) (size!1684 (_ BitVec 32))) )
))
(declare-datatypes ((array!1265 0))(
  ( (array!1266 (arr!591 (Array (_ BitVec 32) List!1890)) (size!1685 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!706 0))(
  ( (LongMapFixedSize!707 (defaultEntry!692 Int) (mask!1264 (_ BitVec 32)) (extraKeys!599 (_ BitVec 32)) (zeroValue!609 List!1890) (minValue!609 List!1890) (_size!839 (_ BitVec 32)) (_keys!644 array!1263) (_values!631 array!1265) (_vacant!414 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1401 0))(
  ( (Cell!1402 (v!13237 LongMapFixedSize!706)) )
))
(declare-datatypes ((MutLongMap!353 0))(
  ( (LongMap!353 (underlying!905 Cell!1401)) (MutLongMapExt!352 (__x!1985 Int)) )
))
(declare-datatypes ((Cell!1403 0))(
  ( (Cell!1404 (v!13238 MutLongMap!353)) )
))
(declare-datatypes ((MutableMap!349 0))(
  ( (MutableMapExt!348 (__x!1986 Int)) (HashMap!349 (underlying!906 Cell!1403) (hashF!2225 Hashable!349) (_size!840 (_ BitVec 32)) (defaultValue!498 Int)) )
))
(declare-datatypes ((Cache!134 0))(
  ( (Cache!135 (cache!801 MutableMap!349)) )
))
(declare-fun cache!470 () Cache!134)

(declare-fun array_inv!419 (array!1263) Bool)

(declare-fun array_inv!420 (array!1265) Bool)

(assert (=> b!114888 (= e!64978 (and tp!62734 tp!62744 tp!62743 (array_inv!419 (_keys!644 (v!13237 (underlying!905 (v!13238 (underlying!906 (cache!801 cache!470))))))) (array_inv!420 (_values!631 (v!13237 (underlying!905 (v!13238 (underlying!906 (cache!801 cache!470))))))) e!64971))))

(declare-fun b!114889 () Bool)

(declare-fun e!64972 () Unit!1358)

(declare-fun Unit!1360 () Unit!1358)

(assert (=> b!114889 (= e!64972 Unit!1360)))

(declare-fun mapIsEmpty!1378 () Bool)

(declare-fun mapRes!1378 () Bool)

(assert (=> mapIsEmpty!1378 mapRes!1378))

(declare-fun b!114891 () Bool)

(declare-fun Unit!1361 () Unit!1358)

(assert (=> b!114891 (= e!64972 Unit!1361)))

(declare-fun lt!33580 () Unit!1358)

(declare-fun lemmaIsPrefixRefl!60 (List!1889 List!1889) Unit!1358)

(assert (=> b!114891 (= lt!33580 (lemmaIsPrefixRefl!60 totalInput!1363 totalInput!1363))))

(assert (=> b!114891 (isPrefix!76 totalInput!1363 totalInput!1363)))

(declare-fun lt!33576 () Unit!1358)

(declare-fun lemmaIsPrefixSameLengthThenSameList!6 (List!1889 List!1889 List!1889) Unit!1358)

(assert (=> b!114891 (= lt!33576 (lemmaIsPrefixSameLengthThenSameList!6 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!114891 false))

(declare-fun b!114892 () Bool)

(declare-fun tp_is_empty!1029 () Bool)

(assert (=> b!114892 (= e!64970 tp_is_empty!1029)))

(declare-fun b!114893 () Bool)

(declare-fun e!64984 () Bool)

(declare-fun e!64976 () Bool)

(assert (=> b!114893 (= e!64984 e!64976)))

(declare-fun b!114894 () Bool)

(assert (=> b!114894 (= e!64985 e!64986)))

(declare-fun res!54682 () Bool)

(assert (=> b!114894 (=> res!54682 e!64986)))

(declare-fun lt!33572 () Int)

(declare-fun lt!33571 () Int)

(assert (=> b!114894 (= res!54682 (>= lt!33572 lt!33571))))

(declare-fun lt!33577 () Unit!1358)

(assert (=> b!114894 (= lt!33577 e!64972)))

(declare-fun c!26514 () Bool)

(assert (=> b!114894 (= c!26514 (= lt!33572 lt!33571))))

(assert (=> b!114894 (<= lt!33572 lt!33571)))

(declare-fun lt!33579 () Unit!1358)

(declare-fun lemmaIsPrefixThenSmallerEqSize!7 (List!1889 List!1889) Unit!1358)

(assert (=> b!114894 (= lt!33579 (lemmaIsPrefixThenSmallerEqSize!7 testedP!367 totalInput!1363))))

(declare-fun b!114895 () Bool)

(declare-fun e!64974 () Bool)

(declare-fun tp!62739 () Bool)

(assert (=> b!114895 (= e!64974 (and tp_is_empty!1029 tp!62739))))

(declare-fun b!114896 () Bool)

(declare-fun e!64973 () Bool)

(declare-fun e!64979 () Bool)

(assert (=> b!114896 (= e!64973 e!64979)))

(declare-fun b!114897 () Bool)

(declare-fun e!64967 () Bool)

(declare-fun lt!33582 () MutLongMap!353)

(get-info :version)

(assert (=> b!114897 (= e!64967 (and e!64973 ((_ is LongMap!353) lt!33582)))))

(assert (=> b!114897 (= lt!33582 (v!13238 (underlying!906 (cache!801 cache!470))))))

(declare-fun b!114898 () Bool)

(assert (=> b!114898 (= e!64979 e!64978)))

(declare-fun b!114890 () Bool)

(declare-fun e!64981 () Bool)

(assert (=> b!114890 (= e!64981 e!64982)))

(declare-fun res!54680 () Bool)

(assert (=> b!114890 (=> (not res!54680) (not e!64982))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!114890 (= res!54680 (= totalInputSize!643 lt!33571))))

(declare-fun size!1686 (List!1889) Int)

(assert (=> b!114890 (= lt!33571 (size!1686 totalInput!1363))))

(declare-fun res!54679 () Bool)

(assert (=> start!11736 (=> (not res!54679) (not e!64983))))

(declare-fun validRegex!97 (Regex!487) Bool)

(assert (=> start!11736 (= res!54679 (validRegex!97 r!15532))))

(assert (=> start!11736 e!64983))

(assert (=> start!11736 true))

(assert (=> start!11736 e!64970))

(declare-fun e!64980 () Bool)

(assert (=> start!11736 e!64980))

(declare-fun e!64975 () Bool)

(assert (=> start!11736 e!64975))

(assert (=> start!11736 e!64974))

(declare-fun inv!2392 (Cache!134) Bool)

(assert (=> start!11736 (and (inv!2392 cache!470) e!64984)))

(declare-fun b!114899 () Bool)

(declare-fun tp!62741 () Bool)

(assert (=> b!114899 (= e!64980 (and tp_is_empty!1029 tp!62741))))

(declare-fun b!114900 () Bool)

(assert (=> b!114900 (= e!64977 e!64981)))

(declare-fun res!54684 () Bool)

(assert (=> b!114900 (=> (not res!54684) (not e!64981))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!114900 (= res!54684 (= testedPSize!285 lt!33572))))

(assert (=> b!114900 (= lt!33572 (size!1686 testedP!367))))

(declare-fun mapNonEmpty!1378 () Bool)

(declare-fun tp!62738 () Bool)

(declare-fun tp!62736 () Bool)

(assert (=> mapNonEmpty!1378 (= mapRes!1378 (and tp!62738 tp!62736))))

(declare-fun mapValue!1378 () List!1890)

(declare-fun mapRest!1378 () (Array (_ BitVec 32) List!1890))

(declare-fun mapKey!1378 () (_ BitVec 32))

(assert (=> mapNonEmpty!1378 (= (arr!591 (_values!631 (v!13237 (underlying!905 (v!13238 (underlying!906 (cache!801 cache!470))))))) (store mapRest!1378 mapKey!1378 mapValue!1378))))

(declare-fun b!114901 () Bool)

(declare-fun tp!62748 () Bool)

(assert (=> b!114901 (= e!64975 (and tp_is_empty!1029 tp!62748))))

(declare-fun b!114902 () Bool)

(declare-fun res!54687 () Bool)

(assert (=> b!114902 (=> res!54687 e!64985)))

(assert (=> b!114902 (= res!54687 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!114903 () Bool)

(declare-fun tp!62740 () Bool)

(assert (=> b!114903 (= e!64971 (and tp!62740 mapRes!1378))))

(declare-fun condMapEmpty!1378 () Bool)

(declare-fun mapDefault!1378 () List!1890)

(assert (=> b!114903 (= condMapEmpty!1378 (= (arr!591 (_values!631 (v!13237 (underlying!905 (v!13238 (underlying!906 (cache!801 cache!470))))))) ((as const (Array (_ BitVec 32) List!1890)) mapDefault!1378)))))

(assert (=> b!114904 (= e!64976 (and e!64967 tp!62745))))

(declare-fun b!114905 () Bool)

(declare-fun res!54685 () Bool)

(assert (=> b!114905 (=> (not res!54685) (not e!64983))))

(declare-fun valid!323 (Cache!134) Bool)

(assert (=> b!114905 (= res!54685 (valid!323 cache!470))))

(declare-fun b!114906 () Bool)

(declare-fun tp!62746 () Bool)

(declare-fun tp!62735 () Bool)

(assert (=> b!114906 (= e!64970 (and tp!62746 tp!62735))))

(assert (= (and start!11736 res!54679) b!114905))

(assert (= (and b!114905 res!54685) b!114882))

(assert (= (and b!114882 res!54686) b!114900))

(assert (= (and b!114900 res!54684) b!114890))

(assert (= (and b!114890 res!54680) b!114887))

(assert (= (and b!114887 (not res!54681)) b!114886))

(assert (= (and b!114886 (not res!54683)) b!114902))

(assert (= (and b!114902 (not res!54687)) b!114894))

(assert (= (and b!114894 c!26514) b!114891))

(assert (= (and b!114894 (not c!26514)) b!114889))

(assert (= (and b!114894 (not res!54682)) b!114884))

(assert (= (and start!11736 ((_ is ElementMatch!487) r!15532)) b!114892))

(assert (= (and start!11736 ((_ is Concat!871) r!15532)) b!114906))

(assert (= (and start!11736 ((_ is Star!487) r!15532)) b!114883))

(assert (= (and start!11736 ((_ is Union!487) r!15532)) b!114885))

(assert (= (and start!11736 ((_ is Cons!1883) totalInput!1363)) b!114899))

(assert (= (and start!11736 ((_ is Cons!1883) testedSuffix!285)) b!114901))

(assert (= (and start!11736 ((_ is Cons!1883) testedP!367)) b!114895))

(assert (= (and b!114903 condMapEmpty!1378) mapIsEmpty!1378))

(assert (= (and b!114903 (not condMapEmpty!1378)) mapNonEmpty!1378))

(assert (= b!114888 b!114903))

(assert (= b!114898 b!114888))

(assert (= b!114896 b!114898))

(assert (= (and b!114897 ((_ is LongMap!353) (v!13238 (underlying!906 (cache!801 cache!470))))) b!114896))

(assert (= b!114904 b!114897))

(assert (= (and b!114893 ((_ is HashMap!349) (cache!801 cache!470))) b!114904))

(assert (= start!11736 b!114893))

(declare-fun m!103480 () Bool)

(assert (=> b!114890 m!103480))

(declare-fun m!103482 () Bool)

(assert (=> b!114888 m!103482))

(declare-fun m!103484 () Bool)

(assert (=> b!114888 m!103484))

(declare-fun m!103486 () Bool)

(assert (=> b!114894 m!103486))

(declare-fun m!103488 () Bool)

(assert (=> mapNonEmpty!1378 m!103488))

(declare-fun m!103490 () Bool)

(assert (=> b!114884 m!103490))

(declare-fun m!103492 () Bool)

(assert (=> b!114884 m!103492))

(declare-fun m!103494 () Bool)

(assert (=> b!114887 m!103494))

(declare-fun m!103496 () Bool)

(assert (=> b!114887 m!103496))

(declare-fun m!103498 () Bool)

(assert (=> b!114887 m!103498))

(declare-fun m!103500 () Bool)

(assert (=> b!114882 m!103500))

(declare-fun m!103502 () Bool)

(assert (=> b!114891 m!103502))

(declare-fun m!103504 () Bool)

(assert (=> b!114891 m!103504))

(declare-fun m!103506 () Bool)

(assert (=> b!114891 m!103506))

(declare-fun m!103508 () Bool)

(assert (=> b!114900 m!103508))

(declare-fun m!103510 () Bool)

(assert (=> start!11736 m!103510))

(declare-fun m!103512 () Bool)

(assert (=> start!11736 m!103512))

(declare-fun m!103514 () Bool)

(assert (=> b!114905 m!103514))

(declare-fun m!103516 () Bool)

(assert (=> b!114886 m!103516))

(declare-fun m!103518 () Bool)

(assert (=> b!114886 m!103518))

(declare-fun m!103520 () Bool)

(assert (=> b!114886 m!103520))

(check-sat (not b!114886) (not b!114887) (not b!114890) (not b!114882) (not b!114901) (not b_next!3643) (not b!114888) (not b!114891) (not b!114906) (not b!114894) (not start!11736) (not b!114895) (not b!114885) (not b!114903) (not b!114899) tp_is_empty!1029 (not b_next!3641) (not b!114900) (not b!114905) b_and!5771 (not mapNonEmpty!1378) b_and!5773 (not b!114884) (not b!114883))
(check-sat b_and!5773 b_and!5771 (not b_next!3643) (not b_next!3641))
