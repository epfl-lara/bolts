; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11782 () Bool)

(assert start!11782)

(declare-fun b!115487 () Bool)

(declare-fun b_free!3665 () Bool)

(declare-fun b_next!3665 () Bool)

(assert (=> b!115487 (= b_free!3665 (not b_next!3665))))

(declare-fun tp!63091 () Bool)

(declare-fun b_and!5795 () Bool)

(assert (=> b!115487 (= tp!63091 b_and!5795)))

(declare-fun b!115478 () Bool)

(declare-fun b_free!3667 () Bool)

(declare-fun b_next!3667 () Bool)

(assert (=> b!115478 (= b_free!3667 (not b_next!3667))))

(declare-fun tp!63090 () Bool)

(declare-fun b_and!5797 () Bool)

(assert (=> b!115478 (= tp!63090 b_and!5797)))

(declare-fun mapIsEmpty!1399 () Bool)

(declare-fun mapRes!1399 () Bool)

(assert (=> mapIsEmpty!1399 mapRes!1399))

(declare-fun b!115473 () Bool)

(declare-fun res!54894 () Bool)

(declare-fun e!65419 () Bool)

(assert (=> b!115473 (=> (not res!54894) (not e!65419))))

(declare-datatypes ((C!1908 0))(
  ( (C!1909 (val!680 Int)) )
))
(declare-datatypes ((Regex!493 0))(
  ( (ElementMatch!493 (c!26557 C!1908)) (Concat!877 (regOne!1498 Regex!493) (regTwo!1498 Regex!493)) (EmptyExpr!493) (Star!493 (reg!822 Regex!493)) (EmptyLang!493) (Union!493 (regOne!1499 Regex!493) (regTwo!1499 Regex!493)) )
))
(declare-datatypes ((Hashable!355 0))(
  ( (HashableExt!354 (__x!2002 Int)) )
))
(declare-datatypes ((tuple2!2092 0))(
  ( (tuple2!2093 (_1!1256 Regex!493) (_2!1256 C!1908)) )
))
(declare-datatypes ((tuple2!2094 0))(
  ( (tuple2!2095 (_1!1257 tuple2!2092) (_2!1257 Regex!493)) )
))
(declare-datatypes ((List!1900 0))(
  ( (Nil!1894) (Cons!1894 (h!7291 tuple2!2094) (t!22377 List!1900)) )
))
(declare-datatypes ((array!1289 0))(
  ( (array!1290 (arr!602 (Array (_ BitVec 32) (_ BitVec 64))) (size!1701 (_ BitVec 32))) )
))
(declare-datatypes ((array!1291 0))(
  ( (array!1292 (arr!603 (Array (_ BitVec 32) List!1900)) (size!1702 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!718 0))(
  ( (LongMapFixedSize!719 (defaultEntry!698 Int) (mask!1273 (_ BitVec 32)) (extraKeys!605 (_ BitVec 32)) (zeroValue!615 List!1900) (minValue!615 List!1900) (_size!851 (_ BitVec 32)) (_keys!650 array!1289) (_values!637 array!1291) (_vacant!420 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1425 0))(
  ( (Cell!1426 (v!13249 LongMapFixedSize!718)) )
))
(declare-datatypes ((MutLongMap!359 0))(
  ( (LongMap!359 (underlying!917 Cell!1425)) (MutLongMapExt!358 (__x!2003 Int)) )
))
(declare-datatypes ((Cell!1427 0))(
  ( (Cell!1428 (v!13250 MutLongMap!359)) )
))
(declare-datatypes ((MutableMap!355 0))(
  ( (MutableMapExt!354 (__x!2004 Int)) (HashMap!355 (underlying!918 Cell!1427) (hashF!2231 Hashable!355) (_size!852 (_ BitVec 32)) (defaultValue!504 Int)) )
))
(declare-datatypes ((Cache!146 0))(
  ( (Cache!147 (cache!807 MutableMap!355)) )
))
(declare-fun cache!470 () Cache!146)

(declare-fun valid!327 (Cache!146) Bool)

(assert (=> b!115473 (= res!54894 (valid!327 cache!470))))

(declare-fun b!115474 () Bool)

(declare-fun e!65423 () Bool)

(declare-fun tp_is_empty!1041 () Bool)

(declare-fun tp!63097 () Bool)

(assert (=> b!115474 (= e!65423 (and tp_is_empty!1041 tp!63097))))

(declare-fun b!115475 () Bool)

(declare-fun e!65425 () Bool)

(assert (=> b!115475 (= e!65425 true)))

(declare-fun lt!33850 () C!1908)

(declare-datatypes ((List!1901 0))(
  ( (Nil!1895) (Cons!1895 (h!7292 C!1908) (t!22378 List!1901)) )
))
(declare-fun testedP!367 () List!1901)

(declare-fun lt!33858 () List!1901)

(declare-fun testedSuffix!285 () List!1901)

(declare-fun ++!333 (List!1901 List!1901) List!1901)

(declare-fun tail!211 (List!1901) List!1901)

(assert (=> b!115475 (= lt!33858 (++!333 testedP!367 (Cons!1895 lt!33850 (tail!211 testedSuffix!285))))))

(declare-fun lt!33863 () List!1901)

(declare-fun totalInput!1363 () List!1901)

(declare-fun isPrefix!80 (List!1901 List!1901) Bool)

(declare-fun head!475 (List!1901) C!1908)

(assert (=> b!115475 (isPrefix!80 (++!333 testedP!367 (Cons!1895 (head!475 lt!33863) Nil!1895)) totalInput!1363)))

(declare-datatypes ((Unit!1374 0))(
  ( (Unit!1375) )
))
(declare-fun lt!33851 () Unit!1374)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!5 (List!1901 List!1901) Unit!1374)

(assert (=> b!115475 (= lt!33851 (lemmaAddHeadSuffixToPrefixStillPrefix!5 testedP!367 totalInput!1363))))

(declare-fun lt!33864 () List!1901)

(assert (=> b!115475 (= lt!33864 (++!333 testedP!367 (Cons!1895 lt!33850 Nil!1895)))))

(assert (=> b!115475 (= lt!33850 (head!475 testedSuffix!285))))

(declare-fun b!115477 () Bool)

(declare-fun e!65416 () Bool)

(declare-fun tp!63084 () Bool)

(assert (=> b!115477 (= e!65416 (and tp_is_empty!1041 tp!63084))))

(declare-fun e!65424 () Bool)

(declare-fun e!65428 () Bool)

(declare-fun tp!63083 () Bool)

(declare-fun tp!63085 () Bool)

(declare-fun array_inv!427 (array!1289) Bool)

(declare-fun array_inv!428 (array!1291) Bool)

(assert (=> b!115478 (= e!65424 (and tp!63090 tp!63085 tp!63083 (array_inv!427 (_keys!650 (v!13249 (underlying!917 (v!13250 (underlying!918 (cache!807 cache!470))))))) (array_inv!428 (_values!637 (v!13249 (underlying!917 (v!13250 (underlying!918 (cache!807 cache!470))))))) e!65428))))

(declare-fun b!115479 () Bool)

(declare-fun e!65417 () Bool)

(declare-fun e!65410 () Bool)

(assert (=> b!115479 (= e!65417 e!65410)))

(declare-fun b!115480 () Bool)

(declare-fun e!65414 () Bool)

(declare-fun e!65415 () Bool)

(assert (=> b!115480 (= e!65414 (not e!65415))))

(declare-fun res!54901 () Bool)

(assert (=> b!115480 (=> res!54901 e!65415)))

(assert (=> b!115480 (= res!54901 (not (isPrefix!80 testedP!367 totalInput!1363)))))

(declare-fun lt!33861 () List!1901)

(assert (=> b!115480 (isPrefix!80 testedP!367 lt!33861)))

(declare-fun lt!33860 () Unit!1374)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!28 (List!1901 List!1901) Unit!1374)

(assert (=> b!115480 (= lt!33860 (lemmaConcatTwoListThenFirstIsPrefix!28 testedP!367 testedSuffix!285))))

(declare-fun b!115481 () Bool)

(declare-fun e!65421 () Bool)

(declare-fun e!65412 () Bool)

(declare-fun lt!33854 () MutLongMap!359)

(get-info :version)

(assert (=> b!115481 (= e!65421 (and e!65412 ((_ is LongMap!359) lt!33854)))))

(assert (=> b!115481 (= lt!33854 (v!13250 (underlying!918 (cache!807 cache!470))))))

(declare-fun b!115482 () Bool)

(declare-fun e!65413 () Bool)

(declare-fun tp!63092 () Bool)

(declare-fun tp!63096 () Bool)

(assert (=> b!115482 (= e!65413 (and tp!63092 tp!63096))))

(declare-fun b!115483 () Bool)

(declare-fun tp!63086 () Bool)

(assert (=> b!115483 (= e!65413 tp!63086)))

(declare-fun res!54898 () Bool)

(assert (=> start!11782 (=> (not res!54898) (not e!65419))))

(declare-fun r!15532 () Regex!493)

(declare-fun validRegex!101 (Regex!493) Bool)

(assert (=> start!11782 (= res!54898 (validRegex!101 r!15532))))

(assert (=> start!11782 e!65419))

(assert (=> start!11782 true))

(assert (=> start!11782 e!65413))

(assert (=> start!11782 e!65423))

(declare-fun e!65418 () Bool)

(assert (=> start!11782 e!65418))

(assert (=> start!11782 e!65416))

(declare-fun inv!2405 (Cache!146) Bool)

(assert (=> start!11782 (and (inv!2405 cache!470) e!65417)))

(declare-fun b!115476 () Bool)

(assert (=> b!115476 (= e!65413 tp_is_empty!1041)))

(declare-fun b!115484 () Bool)

(declare-fun res!54893 () Bool)

(declare-fun e!65427 () Bool)

(assert (=> b!115484 (=> res!54893 e!65427)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!115484 (= res!54893 (= testedPSize!285 totalInputSize!643))))

(declare-fun mapNonEmpty!1399 () Bool)

(declare-fun tp!63093 () Bool)

(declare-fun tp!63089 () Bool)

(assert (=> mapNonEmpty!1399 (= mapRes!1399 (and tp!63093 tp!63089))))

(declare-fun mapKey!1399 () (_ BitVec 32))

(declare-fun mapRest!1399 () (Array (_ BitVec 32) List!1900))

(declare-fun mapValue!1399 () List!1900)

(assert (=> mapNonEmpty!1399 (= (arr!603 (_values!637 (v!13249 (underlying!917 (v!13250 (underlying!918 (cache!807 cache!470))))))) (store mapRest!1399 mapKey!1399 mapValue!1399))))

(declare-fun b!115485 () Bool)

(declare-fun e!65420 () Unit!1374)

(declare-fun Unit!1376 () Unit!1374)

(assert (=> b!115485 (= e!65420 Unit!1376)))

(declare-fun lt!33857 () Unit!1374)

(declare-fun lemmaIsPrefixRefl!64 (List!1901 List!1901) Unit!1374)

(assert (=> b!115485 (= lt!33857 (lemmaIsPrefixRefl!64 totalInput!1363 totalInput!1363))))

(assert (=> b!115485 (isPrefix!80 totalInput!1363 totalInput!1363)))

(declare-fun lt!33856 () Unit!1374)

(declare-fun lemmaIsPrefixSameLengthThenSameList!10 (List!1901 List!1901 List!1901) Unit!1374)

(assert (=> b!115485 (= lt!33856 (lemmaIsPrefixSameLengthThenSameList!10 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!115485 false))

(declare-fun b!115486 () Bool)

(declare-fun e!65411 () Bool)

(assert (=> b!115486 (= e!65411 e!65424)))

(assert (=> b!115487 (= e!65410 (and e!65421 tp!63091))))

(declare-fun b!115488 () Bool)

(declare-fun tp!63094 () Bool)

(assert (=> b!115488 (= e!65428 (and tp!63094 mapRes!1399))))

(declare-fun condMapEmpty!1399 () Bool)

(declare-fun mapDefault!1399 () List!1900)

(assert (=> b!115488 (= condMapEmpty!1399 (= (arr!603 (_values!637 (v!13249 (underlying!917 (v!13250 (underlying!918 (cache!807 cache!470))))))) ((as const (Array (_ BitVec 32) List!1900)) mapDefault!1399)))))

(declare-fun b!115489 () Bool)

(declare-fun e!65422 () Bool)

(assert (=> b!115489 (= e!65419 e!65422)))

(declare-fun res!54896 () Bool)

(assert (=> b!115489 (=> (not res!54896) (not e!65422))))

(assert (=> b!115489 (= res!54896 (= lt!33861 totalInput!1363))))

(assert (=> b!115489 (= lt!33861 (++!333 testedP!367 testedSuffix!285))))

(declare-fun b!115490 () Bool)

(declare-fun tp!63088 () Bool)

(declare-fun tp!63087 () Bool)

(assert (=> b!115490 (= e!65413 (and tp!63088 tp!63087))))

(declare-fun b!115491 () Bool)

(assert (=> b!115491 (= e!65412 e!65411)))

(declare-fun b!115492 () Bool)

(declare-fun e!65426 () Bool)

(assert (=> b!115492 (= e!65422 e!65426)))

(declare-fun res!54899 () Bool)

(assert (=> b!115492 (=> (not res!54899) (not e!65426))))

(declare-fun lt!33853 () Int)

(assert (=> b!115492 (= res!54899 (= testedPSize!285 lt!33853))))

(declare-fun size!1703 (List!1901) Int)

(assert (=> b!115492 (= lt!33853 (size!1703 testedP!367))))

(declare-fun b!115493 () Bool)

(assert (=> b!115493 (= e!65427 e!65425)))

(declare-fun res!54900 () Bool)

(assert (=> b!115493 (=> res!54900 e!65425)))

(declare-fun lt!33852 () Int)

(assert (=> b!115493 (= res!54900 (>= lt!33853 lt!33852))))

(declare-fun lt!33859 () Unit!1374)

(assert (=> b!115493 (= lt!33859 e!65420)))

(declare-fun c!26556 () Bool)

(assert (=> b!115493 (= c!26556 (= lt!33853 lt!33852))))

(assert (=> b!115493 (<= lt!33853 lt!33852)))

(declare-fun lt!33855 () Unit!1374)

(declare-fun lemmaIsPrefixThenSmallerEqSize!10 (List!1901 List!1901) Unit!1374)

(assert (=> b!115493 (= lt!33855 (lemmaIsPrefixThenSmallerEqSize!10 testedP!367 totalInput!1363))))

(declare-fun b!115494 () Bool)

(declare-fun tp!63095 () Bool)

(assert (=> b!115494 (= e!65418 (and tp_is_empty!1041 tp!63095))))

(declare-fun b!115495 () Bool)

(assert (=> b!115495 (= e!65426 e!65414)))

(declare-fun res!54897 () Bool)

(assert (=> b!115495 (=> (not res!54897) (not e!65414))))

(assert (=> b!115495 (= res!54897 (= totalInputSize!643 lt!33852))))

(assert (=> b!115495 (= lt!33852 (size!1703 totalInput!1363))))

(declare-fun b!115496 () Bool)

(assert (=> b!115496 (= e!65415 e!65427)))

(declare-fun res!54895 () Bool)

(assert (=> b!115496 (=> res!54895 e!65427)))

(declare-fun lostCause!37 (Regex!493) Bool)

(assert (=> b!115496 (= res!54895 (lostCause!37 r!15532))))

(assert (=> b!115496 (and (= testedSuffix!285 lt!33863) (= lt!33863 testedSuffix!285))))

(declare-fun lt!33862 () Unit!1374)

(declare-fun lemmaSamePrefixThenSameSuffix!25 (List!1901 List!1901 List!1901 List!1901 List!1901) Unit!1374)

(assert (=> b!115496 (= lt!33862 (lemmaSamePrefixThenSameSuffix!25 testedP!367 testedSuffix!285 testedP!367 lt!33863 totalInput!1363))))

(declare-fun getSuffix!26 (List!1901 List!1901) List!1901)

(assert (=> b!115496 (= lt!33863 (getSuffix!26 totalInput!1363 testedP!367))))

(declare-fun b!115497 () Bool)

(declare-fun Unit!1377 () Unit!1374)

(assert (=> b!115497 (= e!65420 Unit!1377)))

(assert (= (and start!11782 res!54898) b!115473))

(assert (= (and b!115473 res!54894) b!115489))

(assert (= (and b!115489 res!54896) b!115492))

(assert (= (and b!115492 res!54899) b!115495))

(assert (= (and b!115495 res!54897) b!115480))

(assert (= (and b!115480 (not res!54901)) b!115496))

(assert (= (and b!115496 (not res!54895)) b!115484))

(assert (= (and b!115484 (not res!54893)) b!115493))

(assert (= (and b!115493 c!26556) b!115485))

(assert (= (and b!115493 (not c!26556)) b!115497))

(assert (= (and b!115493 (not res!54900)) b!115475))

(assert (= (and start!11782 ((_ is ElementMatch!493) r!15532)) b!115476))

(assert (= (and start!11782 ((_ is Concat!877) r!15532)) b!115482))

(assert (= (and start!11782 ((_ is Star!493) r!15532)) b!115483))

(assert (= (and start!11782 ((_ is Union!493) r!15532)) b!115490))

(assert (= (and start!11782 ((_ is Cons!1895) totalInput!1363)) b!115474))

(assert (= (and start!11782 ((_ is Cons!1895) testedSuffix!285)) b!115494))

(assert (= (and start!11782 ((_ is Cons!1895) testedP!367)) b!115477))

(assert (= (and b!115488 condMapEmpty!1399) mapIsEmpty!1399))

(assert (= (and b!115488 (not condMapEmpty!1399)) mapNonEmpty!1399))

(assert (= b!115478 b!115488))

(assert (= b!115486 b!115478))

(assert (= b!115491 b!115486))

(assert (= (and b!115481 ((_ is LongMap!359) (v!13250 (underlying!918 (cache!807 cache!470))))) b!115491))

(assert (= b!115487 b!115481))

(assert (= (and b!115479 ((_ is HashMap!355) (cache!807 cache!470))) b!115487))

(assert (= start!11782 b!115479))

(declare-fun m!103876 () Bool)

(assert (=> b!115496 m!103876))

(declare-fun m!103878 () Bool)

(assert (=> b!115496 m!103878))

(declare-fun m!103880 () Bool)

(assert (=> b!115496 m!103880))

(declare-fun m!103882 () Bool)

(assert (=> b!115489 m!103882))

(declare-fun m!103884 () Bool)

(assert (=> b!115475 m!103884))

(declare-fun m!103886 () Bool)

(assert (=> b!115475 m!103886))

(declare-fun m!103888 () Bool)

(assert (=> b!115475 m!103888))

(declare-fun m!103890 () Bool)

(assert (=> b!115475 m!103890))

(declare-fun m!103892 () Bool)

(assert (=> b!115475 m!103892))

(declare-fun m!103894 () Bool)

(assert (=> b!115475 m!103894))

(assert (=> b!115475 m!103890))

(declare-fun m!103896 () Bool)

(assert (=> b!115475 m!103896))

(declare-fun m!103898 () Bool)

(assert (=> b!115475 m!103898))

(declare-fun m!103900 () Bool)

(assert (=> mapNonEmpty!1399 m!103900))

(declare-fun m!103902 () Bool)

(assert (=> start!11782 m!103902))

(declare-fun m!103904 () Bool)

(assert (=> start!11782 m!103904))

(declare-fun m!103906 () Bool)

(assert (=> b!115480 m!103906))

(declare-fun m!103908 () Bool)

(assert (=> b!115480 m!103908))

(declare-fun m!103910 () Bool)

(assert (=> b!115480 m!103910))

(declare-fun m!103912 () Bool)

(assert (=> b!115495 m!103912))

(declare-fun m!103914 () Bool)

(assert (=> b!115473 m!103914))

(declare-fun m!103916 () Bool)

(assert (=> b!115493 m!103916))

(declare-fun m!103918 () Bool)

(assert (=> b!115492 m!103918))

(declare-fun m!103920 () Bool)

(assert (=> b!115478 m!103920))

(declare-fun m!103922 () Bool)

(assert (=> b!115478 m!103922))

(declare-fun m!103924 () Bool)

(assert (=> b!115485 m!103924))

(declare-fun m!103926 () Bool)

(assert (=> b!115485 m!103926))

(declare-fun m!103928 () Bool)

(assert (=> b!115485 m!103928))

(check-sat (not b!115480) (not b!115483) b_and!5795 tp_is_empty!1041 (not b!115493) (not b!115477) (not b!115482) (not b_next!3667) b_and!5797 (not mapNonEmpty!1399) (not b!115496) (not b!115485) (not start!11782) (not b!115492) (not b!115488) (not b!115490) (not b!115495) (not b!115489) (not b!115474) (not b!115473) (not b!115475) (not b!115478) (not b!115494) (not b_next!3665))
(check-sat b_and!5795 b_and!5797 (not b_next!3665) (not b_next!3667))
