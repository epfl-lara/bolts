; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11880 () Bool)

(assert start!11880)

(declare-fun b!116439 () Bool)

(declare-fun b_free!3697 () Bool)

(declare-fun b_next!3697 () Bool)

(assert (=> b!116439 (= b_free!3697 (not b_next!3697))))

(declare-fun tp!63614 () Bool)

(declare-fun b_and!5827 () Bool)

(assert (=> b!116439 (= tp!63614 b_and!5827)))

(declare-fun b!116428 () Bool)

(declare-fun b_free!3699 () Bool)

(declare-fun b_next!3699 () Bool)

(assert (=> b!116428 (= b_free!3699 (not b_next!3699))))

(declare-fun tp!63609 () Bool)

(declare-fun b_and!5829 () Bool)

(assert (=> b!116428 (= tp!63609 b_and!5829)))

(declare-fun res!55245 () Bool)

(declare-fun e!66102 () Bool)

(assert (=> start!11880 (=> (not res!55245) (not e!66102))))

(declare-datatypes ((C!1924 0))(
  ( (C!1925 (val!688 Int)) )
))
(declare-datatypes ((Regex!501 0))(
  ( (ElementMatch!501 (c!26642 C!1924)) (Concat!885 (regOne!1514 Regex!501) (regTwo!1514 Regex!501)) (EmptyExpr!501) (Star!501 (reg!830 Regex!501)) (EmptyLang!501) (Union!501 (regOne!1515 Regex!501) (regTwo!1515 Regex!501)) )
))
(declare-fun r!15532 () Regex!501)

(declare-fun validRegex!109 (Regex!501) Bool)

(assert (=> start!11880 (= res!55245 (validRegex!109 r!15532))))

(assert (=> start!11880 e!66102))

(assert (=> start!11880 true))

(declare-fun e!66095 () Bool)

(assert (=> start!11880 e!66095))

(declare-fun e!66110 () Bool)

(assert (=> start!11880 e!66110))

(declare-fun e!66099 () Bool)

(assert (=> start!11880 e!66099))

(declare-fun e!66111 () Bool)

(assert (=> start!11880 e!66111))

(declare-datatypes ((Hashable!363 0))(
  ( (HashableExt!362 (__x!2026 Int)) )
))
(declare-datatypes ((tuple2!2124 0))(
  ( (tuple2!2125 (_1!1272 Regex!501) (_2!1272 C!1924)) )
))
(declare-datatypes ((tuple2!2126 0))(
  ( (tuple2!2127 (_1!1273 tuple2!2124) (_2!1273 Regex!501)) )
))
(declare-datatypes ((List!1916 0))(
  ( (Nil!1910) (Cons!1910 (h!7307 tuple2!2126) (t!22393 List!1916)) )
))
(declare-datatypes ((array!1325 0))(
  ( (array!1326 (arr!618 (Array (_ BitVec 32) (_ BitVec 64))) (size!1724 (_ BitVec 32))) )
))
(declare-datatypes ((array!1327 0))(
  ( (array!1328 (arr!619 (Array (_ BitVec 32) List!1916)) (size!1725 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!734 0))(
  ( (LongMapFixedSize!735 (defaultEntry!706 Int) (mask!1285 (_ BitVec 32)) (extraKeys!613 (_ BitVec 32)) (zeroValue!623 List!1916) (minValue!623 List!1916) (_size!867 (_ BitVec 32)) (_keys!658 array!1325) (_values!645 array!1327) (_vacant!428 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1457 0))(
  ( (Cell!1458 (v!13265 LongMapFixedSize!734)) )
))
(declare-datatypes ((MutLongMap!367 0))(
  ( (LongMap!367 (underlying!933 Cell!1457)) (MutLongMapExt!366 (__x!2027 Int)) )
))
(declare-datatypes ((Cell!1459 0))(
  ( (Cell!1460 (v!13266 MutLongMap!367)) )
))
(declare-datatypes ((MutableMap!363 0))(
  ( (MutableMapExt!362 (__x!2028 Int)) (HashMap!363 (underlying!934 Cell!1459) (hashF!2239 Hashable!363) (_size!868 (_ BitVec 32)) (defaultValue!512 Int)) )
))
(declare-datatypes ((Cache!162 0))(
  ( (Cache!163 (cache!815 MutableMap!363)) )
))
(declare-fun cache!470 () Cache!162)

(declare-fun e!66108 () Bool)

(declare-fun inv!2425 (Cache!162) Bool)

(assert (=> start!11880 (and (inv!2425 cache!470) e!66108)))

(declare-fun b!116415 () Bool)

(declare-fun res!55249 () Bool)

(assert (=> b!116415 (=> (not res!55249) (not e!66102))))

(declare-fun valid!333 (Cache!162) Bool)

(assert (=> b!116415 (= res!55249 (valid!333 cache!470))))

(declare-fun b!116416 () Bool)

(declare-fun e!66097 () Bool)

(declare-fun e!66092 () Bool)

(assert (=> b!116416 (= e!66097 e!66092)))

(declare-fun b!116417 () Bool)

(declare-fun e!66100 () Bool)

(assert (=> b!116417 (= e!66092 e!66100)))

(declare-fun b!116418 () Bool)

(declare-datatypes ((Unit!1403 0))(
  ( (Unit!1404) )
))
(declare-fun e!66096 () Unit!1403)

(declare-fun Unit!1405 () Unit!1403)

(assert (=> b!116418 (= e!66096 Unit!1405)))

(declare-fun lt!34338 () Unit!1403)

(declare-datatypes ((List!1917 0))(
  ( (Nil!1911) (Cons!1911 (h!7308 C!1924) (t!22394 List!1917)) )
))
(declare-fun totalInput!1363 () List!1917)

(declare-fun lemmaIsPrefixRefl!70 (List!1917 List!1917) Unit!1403)

(assert (=> b!116418 (= lt!34338 (lemmaIsPrefixRefl!70 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!88 (List!1917 List!1917) Bool)

(assert (=> b!116418 (isPrefix!88 totalInput!1363 totalInput!1363)))

(declare-fun lt!34340 () Unit!1403)

(declare-fun testedP!367 () List!1917)

(declare-fun lemmaIsPrefixSameLengthThenSameList!16 (List!1917 List!1917 List!1917) Unit!1403)

(assert (=> b!116418 (= lt!34340 (lemmaIsPrefixSameLengthThenSameList!16 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!116418 false))

(declare-fun b!116419 () Bool)

(declare-fun tp_is_empty!1057 () Bool)

(declare-fun tp!63611 () Bool)

(assert (=> b!116419 (= e!66110 (and tp_is_empty!1057 tp!63611))))

(declare-fun mapNonEmpty!1429 () Bool)

(declare-fun mapRes!1429 () Bool)

(declare-fun tp!63612 () Bool)

(declare-fun tp!63603 () Bool)

(assert (=> mapNonEmpty!1429 (= mapRes!1429 (and tp!63612 tp!63603))))

(declare-fun mapValue!1429 () List!1916)

(declare-fun mapKey!1429 () (_ BitVec 32))

(declare-fun mapRest!1429 () (Array (_ BitVec 32) List!1916))

(assert (=> mapNonEmpty!1429 (= (arr!619 (_values!645 (v!13265 (underlying!933 (v!13266 (underlying!934 (cache!815 cache!470))))))) (store mapRest!1429 mapKey!1429 mapValue!1429))))

(declare-fun b!116420 () Bool)

(declare-fun e!66103 () Bool)

(declare-fun e!66094 () Bool)

(assert (=> b!116420 (= e!66103 e!66094)))

(declare-fun res!55240 () Bool)

(assert (=> b!116420 (=> (not res!55240) (not e!66094))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!34342 () Int)

(assert (=> b!116420 (= res!55240 (= testedPSize!285 lt!34342))))

(declare-fun size!1726 (List!1917) Int)

(assert (=> b!116420 (= lt!34342 (size!1726 testedP!367))))

(declare-fun b!116421 () Bool)

(declare-fun tp!63601 () Bool)

(assert (=> b!116421 (= e!66099 (and tp_is_empty!1057 tp!63601))))

(declare-fun b!116422 () Bool)

(declare-fun tp!63613 () Bool)

(assert (=> b!116422 (= e!66111 (and tp_is_empty!1057 tp!63613))))

(declare-fun b!116423 () Bool)

(declare-fun e!66093 () Bool)

(declare-fun tp!63604 () Bool)

(assert (=> b!116423 (= e!66093 (and tp!63604 mapRes!1429))))

(declare-fun condMapEmpty!1429 () Bool)

(declare-fun mapDefault!1429 () List!1916)

(assert (=> b!116423 (= condMapEmpty!1429 (= (arr!619 (_values!645 (v!13265 (underlying!933 (v!13266 (underlying!934 (cache!815 cache!470))))))) ((as const (Array (_ BitVec 32) List!1916)) mapDefault!1429)))))

(declare-fun b!116424 () Bool)

(declare-fun e!66104 () Bool)

(declare-fun e!66106 () Bool)

(assert (=> b!116424 (= e!66104 e!66106)))

(declare-fun res!55246 () Bool)

(assert (=> b!116424 (=> res!55246 e!66106)))

(declare-fun nullable!66 (Regex!501) Bool)

(assert (=> b!116424 (= res!55246 (not (nullable!66 r!15532)))))

(declare-fun lt!34335 () List!1917)

(declare-fun lt!34332 () List!1917)

(declare-fun ++!341 (List!1917 List!1917) List!1917)

(assert (=> b!116424 (= (++!341 lt!34335 lt!34332) totalInput!1363)))

(declare-fun lt!34334 () Unit!1403)

(declare-fun lt!34336 () C!1924)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!7 (List!1917 C!1924 List!1917 List!1917) Unit!1403)

(assert (=> b!116424 (= lt!34334 (lemmaMoveElementToOtherListKeepsConcatEq!7 testedP!367 lt!34336 lt!34332 totalInput!1363))))

(declare-fun testedSuffix!285 () List!1917)

(declare-fun tail!217 (List!1917) List!1917)

(assert (=> b!116424 (= lt!34332 (tail!217 testedSuffix!285))))

(declare-fun lt!34328 () List!1917)

(declare-fun head!481 (List!1917) C!1924)

(assert (=> b!116424 (isPrefix!88 (++!341 testedP!367 (Cons!1911 (head!481 lt!34328) Nil!1911)) totalInput!1363)))

(declare-fun lt!34341 () Unit!1403)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!11 (List!1917 List!1917) Unit!1403)

(assert (=> b!116424 (= lt!34341 (lemmaAddHeadSuffixToPrefixStillPrefix!11 testedP!367 totalInput!1363))))

(assert (=> b!116424 (= lt!34335 (++!341 testedP!367 (Cons!1911 lt!34336 Nil!1911)))))

(assert (=> b!116424 (= lt!34336 (head!481 testedSuffix!285))))

(declare-fun mapIsEmpty!1429 () Bool)

(assert (=> mapIsEmpty!1429 mapRes!1429))

(declare-fun b!116425 () Bool)

(declare-fun res!55241 () Bool)

(assert (=> b!116425 (=> res!55241 e!66106)))

(declare-fun derivativeStep!40 (Regex!501 C!1924) Regex!501)

(assert (=> b!116425 (= res!55241 (not (validRegex!109 (derivativeStep!40 r!15532 lt!34336))))))

(declare-fun b!116426 () Bool)

(declare-fun res!55242 () Bool)

(declare-fun e!66105 () Bool)

(assert (=> b!116426 (=> res!55242 e!66105)))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!116426 (= res!55242 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!116427 () Bool)

(declare-fun e!66098 () Bool)

(assert (=> b!116427 (= e!66098 e!66105)))

(declare-fun res!55247 () Bool)

(assert (=> b!116427 (=> res!55247 e!66105)))

(declare-fun lostCause!43 (Regex!501) Bool)

(assert (=> b!116427 (= res!55247 (lostCause!43 r!15532))))

(assert (=> b!116427 (and (= testedSuffix!285 lt!34328) (= lt!34328 testedSuffix!285))))

(declare-fun lt!34330 () Unit!1403)

(declare-fun lemmaSamePrefixThenSameSuffix!31 (List!1917 List!1917 List!1917 List!1917 List!1917) Unit!1403)

(assert (=> b!116427 (= lt!34330 (lemmaSamePrefixThenSameSuffix!31 testedP!367 testedSuffix!285 testedP!367 lt!34328 totalInput!1363))))

(declare-fun getSuffix!32 (List!1917 List!1917) List!1917)

(assert (=> b!116427 (= lt!34328 (getSuffix!32 totalInput!1363 testedP!367))))

(declare-fun e!66107 () Bool)

(declare-fun e!66112 () Bool)

(assert (=> b!116428 (= e!66107 (and e!66112 tp!63609))))

(declare-fun b!116429 () Bool)

(assert (=> b!116429 (= e!66105 e!66104)))

(declare-fun res!55244 () Bool)

(assert (=> b!116429 (=> res!55244 e!66104)))

(declare-fun lt!34331 () Int)

(assert (=> b!116429 (= res!55244 (>= lt!34342 lt!34331))))

(declare-fun lt!34339 () Unit!1403)

(assert (=> b!116429 (= lt!34339 e!66096)))

(declare-fun c!26641 () Bool)

(assert (=> b!116429 (= c!26641 (= lt!34342 lt!34331))))

(assert (=> b!116429 (<= lt!34342 lt!34331)))

(declare-fun lt!34333 () Unit!1403)

(declare-fun lemmaIsPrefixThenSmallerEqSize!16 (List!1917 List!1917) Unit!1403)

(assert (=> b!116429 (= lt!34333 (lemmaIsPrefixThenSmallerEqSize!16 testedP!367 totalInput!1363))))

(declare-fun b!116430 () Bool)

(declare-fun lt!34327 () MutLongMap!367)

(get-info :version)

(assert (=> b!116430 (= e!66112 (and e!66097 ((_ is LongMap!367) lt!34327)))))

(assert (=> b!116430 (= lt!34327 (v!13266 (underlying!934 (cache!815 cache!470))))))

(declare-fun b!116431 () Bool)

(declare-fun tp!63608 () Bool)

(assert (=> b!116431 (= e!66095 tp!63608)))

(declare-fun b!116432 () Bool)

(assert (=> b!116432 (= e!66102 e!66103)))

(declare-fun res!55248 () Bool)

(assert (=> b!116432 (=> (not res!55248) (not e!66103))))

(declare-fun lt!34329 () List!1917)

(assert (=> b!116432 (= res!55248 (= lt!34329 totalInput!1363))))

(assert (=> b!116432 (= lt!34329 (++!341 testedP!367 testedSuffix!285))))

(declare-fun b!116433 () Bool)

(declare-fun e!66101 () Bool)

(assert (=> b!116433 (= e!66101 (not e!66098))))

(declare-fun res!55239 () Bool)

(assert (=> b!116433 (=> res!55239 e!66098)))

(assert (=> b!116433 (= res!55239 (not (isPrefix!88 testedP!367 totalInput!1363)))))

(assert (=> b!116433 (isPrefix!88 testedP!367 lt!34329)))

(declare-fun lt!34337 () Unit!1403)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!35 (List!1917 List!1917) Unit!1403)

(assert (=> b!116433 (= lt!34337 (lemmaConcatTwoListThenFirstIsPrefix!35 testedP!367 testedSuffix!285))))

(declare-fun b!116434 () Bool)

(assert (=> b!116434 (= e!66106 true)))

(declare-fun lt!34343 () Int)

(assert (=> b!116434 (= lt!34343 (size!1726 lt!34335))))

(declare-fun b!116435 () Bool)

(assert (=> b!116435 (= e!66108 e!66107)))

(declare-fun b!116436 () Bool)

(declare-fun Unit!1406 () Unit!1403)

(assert (=> b!116436 (= e!66096 Unit!1406)))

(declare-fun b!116437 () Bool)

(assert (=> b!116437 (= e!66095 tp_is_empty!1057)))

(declare-fun b!116438 () Bool)

(declare-fun tp!63602 () Bool)

(declare-fun tp!63605 () Bool)

(assert (=> b!116438 (= e!66095 (and tp!63602 tp!63605))))

(declare-fun tp!63607 () Bool)

(declare-fun tp!63606 () Bool)

(declare-fun array_inv!441 (array!1325) Bool)

(declare-fun array_inv!442 (array!1327) Bool)

(assert (=> b!116439 (= e!66100 (and tp!63614 tp!63607 tp!63606 (array_inv!441 (_keys!658 (v!13265 (underlying!933 (v!13266 (underlying!934 (cache!815 cache!470))))))) (array_inv!442 (_values!645 (v!13265 (underlying!933 (v!13266 (underlying!934 (cache!815 cache!470))))))) e!66093))))

(declare-fun b!116440 () Bool)

(assert (=> b!116440 (= e!66094 e!66101)))

(declare-fun res!55243 () Bool)

(assert (=> b!116440 (=> (not res!55243) (not e!66101))))

(assert (=> b!116440 (= res!55243 (= totalInputSize!643 lt!34331))))

(assert (=> b!116440 (= lt!34331 (size!1726 totalInput!1363))))

(declare-fun b!116441 () Bool)

(declare-fun tp!63615 () Bool)

(declare-fun tp!63610 () Bool)

(assert (=> b!116441 (= e!66095 (and tp!63615 tp!63610))))

(assert (= (and start!11880 res!55245) b!116415))

(assert (= (and b!116415 res!55249) b!116432))

(assert (= (and b!116432 res!55248) b!116420))

(assert (= (and b!116420 res!55240) b!116440))

(assert (= (and b!116440 res!55243) b!116433))

(assert (= (and b!116433 (not res!55239)) b!116427))

(assert (= (and b!116427 (not res!55247)) b!116426))

(assert (= (and b!116426 (not res!55242)) b!116429))

(assert (= (and b!116429 c!26641) b!116418))

(assert (= (and b!116429 (not c!26641)) b!116436))

(assert (= (and b!116429 (not res!55244)) b!116424))

(assert (= (and b!116424 (not res!55246)) b!116425))

(assert (= (and b!116425 (not res!55241)) b!116434))

(assert (= (and start!11880 ((_ is ElementMatch!501) r!15532)) b!116437))

(assert (= (and start!11880 ((_ is Concat!885) r!15532)) b!116438))

(assert (= (and start!11880 ((_ is Star!501) r!15532)) b!116431))

(assert (= (and start!11880 ((_ is Union!501) r!15532)) b!116441))

(assert (= (and start!11880 ((_ is Cons!1911) totalInput!1363)) b!116419))

(assert (= (and start!11880 ((_ is Cons!1911) testedSuffix!285)) b!116421))

(assert (= (and start!11880 ((_ is Cons!1911) testedP!367)) b!116422))

(assert (= (and b!116423 condMapEmpty!1429) mapIsEmpty!1429))

(assert (= (and b!116423 (not condMapEmpty!1429)) mapNonEmpty!1429))

(assert (= b!116439 b!116423))

(assert (= b!116417 b!116439))

(assert (= b!116416 b!116417))

(assert (= (and b!116430 ((_ is LongMap!367) (v!13266 (underlying!934 (cache!815 cache!470))))) b!116416))

(assert (= b!116428 b!116430))

(assert (= (and b!116435 ((_ is HashMap!363) (cache!815 cache!470))) b!116428))

(assert (= start!11880 b!116435))

(declare-fun m!104594 () Bool)

(assert (=> b!116439 m!104594))

(declare-fun m!104596 () Bool)

(assert (=> b!116439 m!104596))

(declare-fun m!104598 () Bool)

(assert (=> b!116429 m!104598))

(declare-fun m!104600 () Bool)

(assert (=> b!116420 m!104600))

(declare-fun m!104602 () Bool)

(assert (=> b!116424 m!104602))

(declare-fun m!104604 () Bool)

(assert (=> b!116424 m!104604))

(declare-fun m!104606 () Bool)

(assert (=> b!116424 m!104606))

(declare-fun m!104608 () Bool)

(assert (=> b!116424 m!104608))

(declare-fun m!104610 () Bool)

(assert (=> b!116424 m!104610))

(declare-fun m!104612 () Bool)

(assert (=> b!116424 m!104612))

(declare-fun m!104614 () Bool)

(assert (=> b!116424 m!104614))

(declare-fun m!104616 () Bool)

(assert (=> b!116424 m!104616))

(assert (=> b!116424 m!104608))

(declare-fun m!104618 () Bool)

(assert (=> b!116424 m!104618))

(declare-fun m!104620 () Bool)

(assert (=> b!116424 m!104620))

(declare-fun m!104622 () Bool)

(assert (=> b!116433 m!104622))

(declare-fun m!104624 () Bool)

(assert (=> b!116433 m!104624))

(declare-fun m!104626 () Bool)

(assert (=> b!116433 m!104626))

(declare-fun m!104628 () Bool)

(assert (=> b!116432 m!104628))

(declare-fun m!104630 () Bool)

(assert (=> b!116434 m!104630))

(declare-fun m!104632 () Bool)

(assert (=> b!116415 m!104632))

(declare-fun m!104634 () Bool)

(assert (=> start!11880 m!104634))

(declare-fun m!104636 () Bool)

(assert (=> start!11880 m!104636))

(declare-fun m!104638 () Bool)

(assert (=> b!116427 m!104638))

(declare-fun m!104640 () Bool)

(assert (=> b!116427 m!104640))

(declare-fun m!104642 () Bool)

(assert (=> b!116427 m!104642))

(declare-fun m!104644 () Bool)

(assert (=> b!116425 m!104644))

(assert (=> b!116425 m!104644))

(declare-fun m!104646 () Bool)

(assert (=> b!116425 m!104646))

(declare-fun m!104648 () Bool)

(assert (=> b!116418 m!104648))

(declare-fun m!104650 () Bool)

(assert (=> b!116418 m!104650))

(declare-fun m!104652 () Bool)

(assert (=> b!116418 m!104652))

(declare-fun m!104654 () Bool)

(assert (=> mapNonEmpty!1429 m!104654))

(declare-fun m!104656 () Bool)

(assert (=> b!116440 m!104656))

(check-sat (not b!116424) (not mapNonEmpty!1429) b_and!5829 (not b!116418) (not b!116432) (not b!116433) (not b!116440) (not b!116415) (not b!116439) (not b_next!3699) (not b!116420) b_and!5827 (not b_next!3697) (not b!116427) (not b!116441) (not b!116423) (not b!116434) (not b!116425) (not b!116429) tp_is_empty!1057 (not b!116438) (not b!116421) (not start!11880) (not b!116431) (not b!116422) (not b!116419))
(check-sat b_and!5829 b_and!5827 (not b_next!3699) (not b_next!3697))
