; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12172 () Bool)

(assert start!12172)

(declare-fun b!120434 () Bool)

(declare-fun b_free!3857 () Bool)

(declare-fun b_next!3857 () Bool)

(assert (=> b!120434 (= b_free!3857 (not b_next!3857))))

(declare-fun tp!66179 () Bool)

(declare-fun b_and!5987 () Bool)

(assert (=> b!120434 (= tp!66179 b_and!5987)))

(declare-fun b!120439 () Bool)

(declare-fun b_free!3859 () Bool)

(declare-fun b_next!3859 () Bool)

(assert (=> b!120439 (= b_free!3859 (not b_next!3859))))

(declare-fun tp!66170 () Bool)

(declare-fun b_and!5989 () Bool)

(assert (=> b!120439 (= tp!66170 b_and!5989)))

(declare-fun mapNonEmpty!1571 () Bool)

(declare-fun mapRes!1571 () Bool)

(declare-fun tp!66175 () Bool)

(declare-fun tp!66169 () Bool)

(assert (=> mapNonEmpty!1571 (= mapRes!1571 (and tp!66175 tp!66169))))

(declare-datatypes ((C!2004 0))(
  ( (C!2005 (val!728 Int)) )
))
(declare-datatypes ((Regex!541 0))(
  ( (ElementMatch!541 (c!26923 C!2004)) (Concat!925 (regOne!1594 Regex!541) (regTwo!1594 Regex!541)) (EmptyExpr!541) (Star!541 (reg!870 Regex!541)) (EmptyLang!541) (Union!541 (regOne!1595 Regex!541) (regTwo!1595 Regex!541)) )
))
(declare-datatypes ((tuple2!2298 0))(
  ( (tuple2!2299 (_1!1359 Regex!541) (_2!1359 C!2004)) )
))
(declare-datatypes ((tuple2!2300 0))(
  ( (tuple2!2301 (_1!1360 tuple2!2298) (_2!1360 Regex!541)) )
))
(declare-datatypes ((List!1994 0))(
  ( (Nil!1988) (Cons!1988 (h!7385 tuple2!2300) (t!22471 List!1994)) )
))
(declare-fun mapRest!1571 () (Array (_ BitVec 32) List!1994))

(declare-datatypes ((Hashable!403 0))(
  ( (HashableExt!402 (__x!2146 Int)) )
))
(declare-datatypes ((array!1499 0))(
  ( (array!1500 (arr!698 (Array (_ BitVec 32) (_ BitVec 64))) (size!1838 (_ BitVec 32))) )
))
(declare-datatypes ((array!1501 0))(
  ( (array!1502 (arr!699 (Array (_ BitVec 32) List!1994)) (size!1839 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!814 0))(
  ( (LongMapFixedSize!815 (defaultEntry!746 Int) (mask!1345 (_ BitVec 32)) (extraKeys!653 (_ BitVec 32)) (zeroValue!663 List!1994) (minValue!663 List!1994) (_size!947 (_ BitVec 32)) (_keys!698 array!1499) (_values!685 array!1501) (_vacant!468 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1617 0))(
  ( (Cell!1618 (v!13345 LongMapFixedSize!814)) )
))
(declare-datatypes ((MutLongMap!407 0))(
  ( (LongMap!407 (underlying!1013 Cell!1617)) (MutLongMapExt!406 (__x!2147 Int)) )
))
(declare-datatypes ((Cell!1619 0))(
  ( (Cell!1620 (v!13346 MutLongMap!407)) )
))
(declare-datatypes ((MutableMap!403 0))(
  ( (MutableMapExt!402 (__x!2148 Int)) (HashMap!403 (underlying!1014 Cell!1619) (hashF!2279 Hashable!403) (_size!948 (_ BitVec 32)) (defaultValue!552 Int)) )
))
(declare-datatypes ((Cache!242 0))(
  ( (Cache!243 (cache!855 MutableMap!403)) )
))
(declare-fun cache!470 () Cache!242)

(declare-fun mapKey!1571 () (_ BitVec 32))

(declare-fun mapValue!1571 () List!1994)

(assert (=> mapNonEmpty!1571 (= (arr!699 (_values!685 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470))))))) (store mapRest!1571 mapKey!1571 mapValue!1571))))

(declare-fun b!120433 () Bool)

(declare-fun e!68927 () Bool)

(declare-fun e!68933 () Bool)

(declare-fun lt!35889 () MutLongMap!407)

(get-info :version)

(assert (=> b!120433 (= e!68927 (and e!68933 ((_ is LongMap!407) lt!35889)))))

(assert (=> b!120433 (= lt!35889 (v!13346 (underlying!1014 (cache!855 cache!470))))))

(declare-fun tp!66181 () Bool)

(declare-fun e!68921 () Bool)

(declare-fun tp!66172 () Bool)

(declare-fun e!68920 () Bool)

(declare-fun array_inv!503 (array!1499) Bool)

(declare-fun array_inv!504 (array!1501) Bool)

(assert (=> b!120434 (= e!68920 (and tp!66179 tp!66172 tp!66181 (array_inv!503 (_keys!698 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470))))))) (array_inv!504 (_values!685 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470))))))) e!68921))))

(declare-fun b!120435 () Bool)

(declare-fun e!68919 () Bool)

(declare-fun tp!66167 () Bool)

(declare-fun tp!66174 () Bool)

(assert (=> b!120435 (= e!68919 (and tp!66167 tp!66174))))

(declare-fun mapIsEmpty!1571 () Bool)

(assert (=> mapIsEmpty!1571 mapRes!1571))

(declare-fun b!120436 () Bool)

(declare-fun tp!66177 () Bool)

(assert (=> b!120436 (= e!68921 (and tp!66177 mapRes!1571))))

(declare-fun condMapEmpty!1571 () Bool)

(declare-fun mapDefault!1571 () List!1994)

(assert (=> b!120436 (= condMapEmpty!1571 (= (arr!699 (_values!685 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470))))))) ((as const (Array (_ BitVec 32) List!1994)) mapDefault!1571)))))

(declare-fun b!120437 () Bool)

(declare-fun tp!66176 () Bool)

(assert (=> b!120437 (= e!68919 tp!66176)))

(declare-fun b!120438 () Bool)

(declare-fun e!68928 () Bool)

(declare-fun e!68923 () Bool)

(assert (=> b!120438 (= e!68928 e!68923)))

(declare-fun res!56569 () Bool)

(assert (=> b!120438 (=> (not res!56569) (not e!68923))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!35892 () Int)

(assert (=> b!120438 (= res!56569 (= testedPSize!285 lt!35892))))

(declare-datatypes ((List!1995 0))(
  ( (Nil!1989) (Cons!1989 (h!7386 C!2004) (t!22472 List!1995)) )
))
(declare-fun testedP!367 () List!1995)

(declare-fun size!1840 (List!1995) Int)

(assert (=> b!120438 (= lt!35892 (size!1840 testedP!367))))

(declare-fun b!120440 () Bool)

(declare-datatypes ((Unit!1503 0))(
  ( (Unit!1504) )
))
(declare-fun e!68924 () Unit!1503)

(declare-fun Unit!1505 () Unit!1503)

(assert (=> b!120440 (= e!68924 Unit!1505)))

(declare-fun e!68931 () Bool)

(declare-fun b!120441 () Bool)

(declare-fun testedSuffix!285 () List!1995)

(declare-fun totalInput!1363 () List!1995)

(declare-fun lt!35879 () C!2004)

(declare-fun ++!372 (List!1995 List!1995) List!1995)

(declare-fun tail!231 (List!1995) List!1995)

(assert (=> b!120441 (= e!68931 (= (++!372 testedP!367 (Cons!1989 lt!35879 (tail!231 testedSuffix!285))) totalInput!1363))))

(declare-fun lt!35884 () List!1995)

(declare-fun isPrefix!121 (List!1995 List!1995) Bool)

(declare-fun head!495 (List!1995) C!2004)

(assert (=> b!120441 (isPrefix!121 (++!372 testedP!367 (Cons!1989 (head!495 lt!35884) Nil!1989)) totalInput!1363)))

(declare-fun lt!35888 () Unit!1503)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!24 (List!1995 List!1995) Unit!1503)

(assert (=> b!120441 (= lt!35888 (lemmaAddHeadSuffixToPrefixStillPrefix!24 testedP!367 totalInput!1363))))

(declare-fun lt!35883 () List!1995)

(assert (=> b!120441 (= lt!35883 (++!372 testedP!367 (Cons!1989 lt!35879 Nil!1989)))))

(assert (=> b!120441 (= lt!35879 (head!495 testedSuffix!285))))

(declare-fun b!120442 () Bool)

(declare-fun e!68922 () Bool)

(declare-fun tp_is_empty!1137 () Bool)

(declare-fun tp!66171 () Bool)

(assert (=> b!120442 (= e!68922 (and tp_is_empty!1137 tp!66171))))

(declare-fun b!120443 () Bool)

(declare-fun res!56566 () Bool)

(declare-fun e!68929 () Bool)

(assert (=> b!120443 (=> (not res!56566) (not e!68929))))

(declare-fun valid!368 (Cache!242) Bool)

(assert (=> b!120443 (= res!56566 (valid!368 cache!470))))

(declare-fun b!120444 () Bool)

(declare-fun tp!66178 () Bool)

(declare-fun tp!66173 () Bool)

(assert (=> b!120444 (= e!68919 (and tp!66178 tp!66173))))

(declare-fun b!120445 () Bool)

(declare-fun e!68917 () Bool)

(declare-fun e!68916 () Bool)

(assert (=> b!120445 (= e!68917 (not e!68916))))

(declare-fun res!56565 () Bool)

(assert (=> b!120445 (=> res!56565 e!68916)))

(assert (=> b!120445 (= res!56565 (not (isPrefix!121 testedP!367 totalInput!1363)))))

(declare-fun lt!35890 () List!1995)

(assert (=> b!120445 (isPrefix!121 testedP!367 lt!35890)))

(declare-fun lt!35881 () Unit!1503)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!65 (List!1995 List!1995) Unit!1503)

(assert (=> b!120445 (= lt!35881 (lemmaConcatTwoListThenFirstIsPrefix!65 testedP!367 testedSuffix!285))))

(declare-fun b!120446 () Bool)

(declare-fun e!68935 () Bool)

(declare-fun tp!66168 () Bool)

(assert (=> b!120446 (= e!68935 (and tp_is_empty!1137 tp!66168))))

(declare-fun b!120447 () Bool)

(assert (=> b!120447 (= e!68923 e!68917)))

(declare-fun res!56572 () Bool)

(assert (=> b!120447 (=> (not res!56572) (not e!68917))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!35880 () Int)

(assert (=> b!120447 (= res!56572 (= totalInputSize!643 lt!35880))))

(assert (=> b!120447 (= lt!35880 (size!1840 totalInput!1363))))

(declare-fun b!120448 () Bool)

(assert (=> b!120448 (= e!68929 e!68928)))

(declare-fun res!56571 () Bool)

(assert (=> b!120448 (=> (not res!56571) (not e!68928))))

(assert (=> b!120448 (= res!56571 (= lt!35890 totalInput!1363))))

(assert (=> b!120448 (= lt!35890 (++!372 testedP!367 testedSuffix!285))))

(declare-fun b!120449 () Bool)

(declare-fun e!68925 () Bool)

(assert (=> b!120449 (= e!68933 e!68925)))

(declare-fun b!120450 () Bool)

(assert (=> b!120450 (= e!68919 tp_is_empty!1137)))

(declare-fun b!120451 () Bool)

(declare-fun e!68926 () Bool)

(assert (=> b!120451 (= e!68916 e!68926)))

(declare-fun res!56568 () Bool)

(assert (=> b!120451 (=> res!56568 e!68926)))

(declare-fun r!15532 () Regex!541)

(declare-fun lostCause!64 (Regex!541) Bool)

(assert (=> b!120451 (= res!56568 (lostCause!64 r!15532))))

(assert (=> b!120451 (and (= testedSuffix!285 lt!35884) (= lt!35884 testedSuffix!285))))

(declare-fun lt!35885 () Unit!1503)

(declare-fun lemmaSamePrefixThenSameSuffix!55 (List!1995 List!1995 List!1995 List!1995 List!1995) Unit!1503)

(assert (=> b!120451 (= lt!35885 (lemmaSamePrefixThenSameSuffix!55 testedP!367 testedSuffix!285 testedP!367 lt!35884 totalInput!1363))))

(declare-fun getSuffix!59 (List!1995 List!1995) List!1995)

(assert (=> b!120451 (= lt!35884 (getSuffix!59 totalInput!1363 testedP!367))))

(declare-fun b!120452 () Bool)

(declare-fun e!68934 () Bool)

(declare-fun e!68930 () Bool)

(assert (=> b!120452 (= e!68934 e!68930)))

(declare-fun b!120453 () Bool)

(declare-fun res!56567 () Bool)

(assert (=> b!120453 (=> res!56567 e!68926)))

(assert (=> b!120453 (= res!56567 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!120454 () Bool)

(declare-fun e!68932 () Bool)

(declare-fun tp!66180 () Bool)

(assert (=> b!120454 (= e!68932 (and tp_is_empty!1137 tp!66180))))

(declare-fun b!120455 () Bool)

(assert (=> b!120455 (= e!68925 e!68920)))

(declare-fun res!56573 () Bool)

(assert (=> start!12172 (=> (not res!56573) (not e!68929))))

(declare-fun validRegex!140 (Regex!541) Bool)

(assert (=> start!12172 (= res!56573 (validRegex!140 r!15532))))

(assert (=> start!12172 e!68929))

(assert (=> start!12172 true))

(assert (=> start!12172 e!68919))

(assert (=> start!12172 e!68922))

(assert (=> start!12172 e!68932))

(assert (=> start!12172 e!68935))

(declare-fun inv!2515 (Cache!242) Bool)

(assert (=> start!12172 (and (inv!2515 cache!470) e!68934)))

(assert (=> b!120439 (= e!68930 (and e!68927 tp!66170))))

(declare-fun b!120456 () Bool)

(assert (=> b!120456 (= e!68926 e!68931)))

(declare-fun res!56570 () Bool)

(assert (=> b!120456 (=> res!56570 e!68931)))

(assert (=> b!120456 (= res!56570 (>= lt!35892 lt!35880))))

(declare-fun lt!35882 () Unit!1503)

(assert (=> b!120456 (= lt!35882 e!68924)))

(declare-fun c!26922 () Bool)

(assert (=> b!120456 (= c!26922 (= lt!35892 lt!35880))))

(assert (=> b!120456 (<= lt!35892 lt!35880)))

(declare-fun lt!35886 () Unit!1503)

(declare-fun lemmaIsPrefixThenSmallerEqSize!34 (List!1995 List!1995) Unit!1503)

(assert (=> b!120456 (= lt!35886 (lemmaIsPrefixThenSmallerEqSize!34 testedP!367 totalInput!1363))))

(declare-fun b!120457 () Bool)

(declare-fun Unit!1506 () Unit!1503)

(assert (=> b!120457 (= e!68924 Unit!1506)))

(declare-fun lt!35891 () Unit!1503)

(declare-fun lemmaIsPrefixRefl!91 (List!1995 List!1995) Unit!1503)

(assert (=> b!120457 (= lt!35891 (lemmaIsPrefixRefl!91 totalInput!1363 totalInput!1363))))

(assert (=> b!120457 (isPrefix!121 totalInput!1363 totalInput!1363)))

(declare-fun lt!35887 () Unit!1503)

(declare-fun lemmaIsPrefixSameLengthThenSameList!34 (List!1995 List!1995 List!1995) Unit!1503)

(assert (=> b!120457 (= lt!35887 (lemmaIsPrefixSameLengthThenSameList!34 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!120457 false))

(assert (= (and start!12172 res!56573) b!120443))

(assert (= (and b!120443 res!56566) b!120448))

(assert (= (and b!120448 res!56571) b!120438))

(assert (= (and b!120438 res!56569) b!120447))

(assert (= (and b!120447 res!56572) b!120445))

(assert (= (and b!120445 (not res!56565)) b!120451))

(assert (= (and b!120451 (not res!56568)) b!120453))

(assert (= (and b!120453 (not res!56567)) b!120456))

(assert (= (and b!120456 c!26922) b!120457))

(assert (= (and b!120456 (not c!26922)) b!120440))

(assert (= (and b!120456 (not res!56570)) b!120441))

(assert (= (and start!12172 ((_ is ElementMatch!541) r!15532)) b!120450))

(assert (= (and start!12172 ((_ is Concat!925) r!15532)) b!120435))

(assert (= (and start!12172 ((_ is Star!541) r!15532)) b!120437))

(assert (= (and start!12172 ((_ is Union!541) r!15532)) b!120444))

(assert (= (and start!12172 ((_ is Cons!1989) totalInput!1363)) b!120442))

(assert (= (and start!12172 ((_ is Cons!1989) testedSuffix!285)) b!120454))

(assert (= (and start!12172 ((_ is Cons!1989) testedP!367)) b!120446))

(assert (= (and b!120436 condMapEmpty!1571) mapIsEmpty!1571))

(assert (= (and b!120436 (not condMapEmpty!1571)) mapNonEmpty!1571))

(assert (= b!120434 b!120436))

(assert (= b!120455 b!120434))

(assert (= b!120449 b!120455))

(assert (= (and b!120433 ((_ is LongMap!407) (v!13346 (underlying!1014 (cache!855 cache!470))))) b!120449))

(assert (= b!120439 b!120433))

(assert (= (and b!120452 ((_ is HashMap!403) (cache!855 cache!470))) b!120439))

(assert (= start!12172 b!120452))

(declare-fun m!106927 () Bool)

(assert (=> b!120447 m!106927))

(declare-fun m!106929 () Bool)

(assert (=> mapNonEmpty!1571 m!106929))

(declare-fun m!106931 () Bool)

(assert (=> b!120448 m!106931))

(declare-fun m!106933 () Bool)

(assert (=> b!120434 m!106933))

(declare-fun m!106935 () Bool)

(assert (=> b!120434 m!106935))

(declare-fun m!106937 () Bool)

(assert (=> b!120451 m!106937))

(declare-fun m!106939 () Bool)

(assert (=> b!120451 m!106939))

(declare-fun m!106941 () Bool)

(assert (=> b!120451 m!106941))

(declare-fun m!106943 () Bool)

(assert (=> b!120441 m!106943))

(declare-fun m!106945 () Bool)

(assert (=> b!120441 m!106945))

(declare-fun m!106947 () Bool)

(assert (=> b!120441 m!106947))

(declare-fun m!106949 () Bool)

(assert (=> b!120441 m!106949))

(declare-fun m!106951 () Bool)

(assert (=> b!120441 m!106951))

(assert (=> b!120441 m!106943))

(declare-fun m!106953 () Bool)

(assert (=> b!120441 m!106953))

(declare-fun m!106955 () Bool)

(assert (=> b!120441 m!106955))

(declare-fun m!106957 () Bool)

(assert (=> b!120441 m!106957))

(declare-fun m!106959 () Bool)

(assert (=> b!120443 m!106959))

(declare-fun m!106961 () Bool)

(assert (=> start!12172 m!106961))

(declare-fun m!106963 () Bool)

(assert (=> start!12172 m!106963))

(declare-fun m!106965 () Bool)

(assert (=> b!120457 m!106965))

(declare-fun m!106967 () Bool)

(assert (=> b!120457 m!106967))

(declare-fun m!106969 () Bool)

(assert (=> b!120457 m!106969))

(declare-fun m!106971 () Bool)

(assert (=> b!120445 m!106971))

(declare-fun m!106973 () Bool)

(assert (=> b!120445 m!106973))

(declare-fun m!106975 () Bool)

(assert (=> b!120445 m!106975))

(declare-fun m!106977 () Bool)

(assert (=> b!120456 m!106977))

(declare-fun m!106979 () Bool)

(assert (=> b!120438 m!106979))

(check-sat (not b!120445) (not b!120448) (not b!120447) (not b_next!3859) (not b!120436) (not b!120438) tp_is_empty!1137 (not b!120457) (not b!120451) (not start!12172) (not b!120442) b_and!5989 (not b!120444) (not b!120437) (not b!120434) b_and!5987 (not b!120443) (not b!120454) (not b!120435) (not b!120441) (not b_next!3857) (not b!120446) (not mapNonEmpty!1571) (not b!120456))
(check-sat b_and!5989 b_and!5987 (not b_next!3859) (not b_next!3857))
(get-model)

(declare-fun d!28712 () Bool)

(declare-fun lostCauseFct!28 (Regex!541) Bool)

(assert (=> d!28712 (= (lostCause!64 r!15532) (lostCauseFct!28 r!15532))))

(declare-fun bs!11931 () Bool)

(assert (= bs!11931 d!28712))

(declare-fun m!106981 () Bool)

(assert (=> bs!11931 m!106981))

(assert (=> b!120451 d!28712))

(declare-fun d!28714 () Bool)

(assert (=> d!28714 (= testedSuffix!285 lt!35884)))

(declare-fun lt!35895 () Unit!1503)

(declare-fun choose!1560 (List!1995 List!1995 List!1995 List!1995 List!1995) Unit!1503)

(assert (=> d!28714 (= lt!35895 (choose!1560 testedP!367 testedSuffix!285 testedP!367 lt!35884 totalInput!1363))))

(assert (=> d!28714 (isPrefix!121 testedP!367 totalInput!1363)))

(assert (=> d!28714 (= (lemmaSamePrefixThenSameSuffix!55 testedP!367 testedSuffix!285 testedP!367 lt!35884 totalInput!1363) lt!35895)))

(declare-fun bs!11932 () Bool)

(assert (= bs!11932 d!28714))

(declare-fun m!106983 () Bool)

(assert (=> bs!11932 m!106983))

(assert (=> bs!11932 m!106971))

(assert (=> b!120451 d!28714))

(declare-fun d!28716 () Bool)

(declare-fun lt!35898 () List!1995)

(assert (=> d!28716 (= (++!372 testedP!367 lt!35898) totalInput!1363)))

(declare-fun e!68938 () List!1995)

(assert (=> d!28716 (= lt!35898 e!68938)))

(declare-fun c!26926 () Bool)

(assert (=> d!28716 (= c!26926 ((_ is Cons!1989) testedP!367))))

(assert (=> d!28716 (>= (size!1840 totalInput!1363) (size!1840 testedP!367))))

(assert (=> d!28716 (= (getSuffix!59 totalInput!1363 testedP!367) lt!35898)))

(declare-fun b!120462 () Bool)

(assert (=> b!120462 (= e!68938 (getSuffix!59 (tail!231 totalInput!1363) (t!22472 testedP!367)))))

(declare-fun b!120463 () Bool)

(assert (=> b!120463 (= e!68938 totalInput!1363)))

(assert (= (and d!28716 c!26926) b!120462))

(assert (= (and d!28716 (not c!26926)) b!120463))

(declare-fun m!106985 () Bool)

(assert (=> d!28716 m!106985))

(assert (=> d!28716 m!106927))

(assert (=> d!28716 m!106979))

(declare-fun m!106987 () Bool)

(assert (=> b!120462 m!106987))

(assert (=> b!120462 m!106987))

(declare-fun m!106989 () Bool)

(assert (=> b!120462 m!106989))

(assert (=> b!120451 d!28716))

(declare-fun d!28718 () Bool)

(assert (=> d!28718 (= (tail!231 testedSuffix!285) (t!22472 testedSuffix!285))))

(assert (=> b!120441 d!28718))

(declare-fun e!68943 () Bool)

(declare-fun lt!35901 () List!1995)

(declare-fun b!120475 () Bool)

(assert (=> b!120475 (= e!68943 (or (not (= (Cons!1989 lt!35879 (tail!231 testedSuffix!285)) Nil!1989)) (= lt!35901 testedP!367)))))

(declare-fun b!120472 () Bool)

(declare-fun e!68944 () List!1995)

(assert (=> b!120472 (= e!68944 (Cons!1989 lt!35879 (tail!231 testedSuffix!285)))))

(declare-fun b!120474 () Bool)

(declare-fun res!56578 () Bool)

(assert (=> b!120474 (=> (not res!56578) (not e!68943))))

(assert (=> b!120474 (= res!56578 (= (size!1840 lt!35901) (+ (size!1840 testedP!367) (size!1840 (Cons!1989 lt!35879 (tail!231 testedSuffix!285))))))))

(declare-fun b!120473 () Bool)

(assert (=> b!120473 (= e!68944 (Cons!1989 (h!7386 testedP!367) (++!372 (t!22472 testedP!367) (Cons!1989 lt!35879 (tail!231 testedSuffix!285)))))))

(declare-fun d!28720 () Bool)

(assert (=> d!28720 e!68943))

(declare-fun res!56579 () Bool)

(assert (=> d!28720 (=> (not res!56579) (not e!68943))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!223 (List!1995) (InoxSet C!2004))

(assert (=> d!28720 (= res!56579 (= (content!223 lt!35901) ((_ map or) (content!223 testedP!367) (content!223 (Cons!1989 lt!35879 (tail!231 testedSuffix!285))))))))

(assert (=> d!28720 (= lt!35901 e!68944)))

(declare-fun c!26929 () Bool)

(assert (=> d!28720 (= c!26929 ((_ is Nil!1989) testedP!367))))

(assert (=> d!28720 (= (++!372 testedP!367 (Cons!1989 lt!35879 (tail!231 testedSuffix!285))) lt!35901)))

(assert (= (and d!28720 c!26929) b!120472))

(assert (= (and d!28720 (not c!26929)) b!120473))

(assert (= (and d!28720 res!56579) b!120474))

(assert (= (and b!120474 res!56578) b!120475))

(declare-fun m!106991 () Bool)

(assert (=> b!120474 m!106991))

(assert (=> b!120474 m!106979))

(declare-fun m!106993 () Bool)

(assert (=> b!120474 m!106993))

(declare-fun m!106995 () Bool)

(assert (=> b!120473 m!106995))

(declare-fun m!106997 () Bool)

(assert (=> d!28720 m!106997))

(declare-fun m!106999 () Bool)

(assert (=> d!28720 m!106999))

(declare-fun m!107001 () Bool)

(assert (=> d!28720 m!107001))

(assert (=> b!120441 d!28720))

(declare-fun d!28722 () Bool)

(assert (=> d!28722 (isPrefix!121 (++!372 testedP!367 (Cons!1989 (head!495 (getSuffix!59 totalInput!1363 testedP!367)) Nil!1989)) totalInput!1363)))

(declare-fun lt!35904 () Unit!1503)

(declare-fun choose!1561 (List!1995 List!1995) Unit!1503)

(assert (=> d!28722 (= lt!35904 (choose!1561 testedP!367 totalInput!1363))))

(assert (=> d!28722 (isPrefix!121 testedP!367 totalInput!1363)))

(assert (=> d!28722 (= (lemmaAddHeadSuffixToPrefixStillPrefix!24 testedP!367 totalInput!1363) lt!35904)))

(declare-fun bs!11933 () Bool)

(assert (= bs!11933 d!28722))

(declare-fun m!107003 () Bool)

(assert (=> bs!11933 m!107003))

(assert (=> bs!11933 m!106941))

(declare-fun m!107005 () Bool)

(assert (=> bs!11933 m!107005))

(declare-fun m!107007 () Bool)

(assert (=> bs!11933 m!107007))

(declare-fun m!107009 () Bool)

(assert (=> bs!11933 m!107009))

(assert (=> bs!11933 m!107007))

(assert (=> bs!11933 m!106971))

(assert (=> bs!11933 m!106941))

(assert (=> b!120441 d!28722))

(declare-fun lt!35905 () List!1995)

(declare-fun e!68945 () Bool)

(declare-fun b!120479 () Bool)

(assert (=> b!120479 (= e!68945 (or (not (= (Cons!1989 lt!35879 Nil!1989) Nil!1989)) (= lt!35905 testedP!367)))))

(declare-fun b!120476 () Bool)

(declare-fun e!68946 () List!1995)

(assert (=> b!120476 (= e!68946 (Cons!1989 lt!35879 Nil!1989))))

(declare-fun b!120478 () Bool)

(declare-fun res!56580 () Bool)

(assert (=> b!120478 (=> (not res!56580) (not e!68945))))

(assert (=> b!120478 (= res!56580 (= (size!1840 lt!35905) (+ (size!1840 testedP!367) (size!1840 (Cons!1989 lt!35879 Nil!1989)))))))

(declare-fun b!120477 () Bool)

(assert (=> b!120477 (= e!68946 (Cons!1989 (h!7386 testedP!367) (++!372 (t!22472 testedP!367) (Cons!1989 lt!35879 Nil!1989))))))

(declare-fun d!28724 () Bool)

(assert (=> d!28724 e!68945))

(declare-fun res!56581 () Bool)

(assert (=> d!28724 (=> (not res!56581) (not e!68945))))

(assert (=> d!28724 (= res!56581 (= (content!223 lt!35905) ((_ map or) (content!223 testedP!367) (content!223 (Cons!1989 lt!35879 Nil!1989)))))))

(assert (=> d!28724 (= lt!35905 e!68946)))

(declare-fun c!26930 () Bool)

(assert (=> d!28724 (= c!26930 ((_ is Nil!1989) testedP!367))))

(assert (=> d!28724 (= (++!372 testedP!367 (Cons!1989 lt!35879 Nil!1989)) lt!35905)))

(assert (= (and d!28724 c!26930) b!120476))

(assert (= (and d!28724 (not c!26930)) b!120477))

(assert (= (and d!28724 res!56581) b!120478))

(assert (= (and b!120478 res!56580) b!120479))

(declare-fun m!107011 () Bool)

(assert (=> b!120478 m!107011))

(assert (=> b!120478 m!106979))

(declare-fun m!107013 () Bool)

(assert (=> b!120478 m!107013))

(declare-fun m!107015 () Bool)

(assert (=> b!120477 m!107015))

(declare-fun m!107017 () Bool)

(assert (=> d!28724 m!107017))

(assert (=> d!28724 m!106999))

(declare-fun m!107019 () Bool)

(assert (=> d!28724 m!107019))

(assert (=> b!120441 d!28724))

(declare-fun e!68954 () Bool)

(declare-fun b!120491 () Bool)

(assert (=> b!120491 (= e!68954 (>= (size!1840 totalInput!1363) (size!1840 (++!372 testedP!367 (Cons!1989 (head!495 lt!35884) Nil!1989)))))))

(declare-fun b!120490 () Bool)

(declare-fun e!68953 () Bool)

(assert (=> b!120490 (= e!68953 (isPrefix!121 (tail!231 (++!372 testedP!367 (Cons!1989 (head!495 lt!35884) Nil!1989))) (tail!231 totalInput!1363)))))

(declare-fun d!28726 () Bool)

(assert (=> d!28726 e!68954))

(declare-fun res!56590 () Bool)

(assert (=> d!28726 (=> res!56590 e!68954)))

(declare-fun lt!35908 () Bool)

(assert (=> d!28726 (= res!56590 (not lt!35908))))

(declare-fun e!68955 () Bool)

(assert (=> d!28726 (= lt!35908 e!68955)))

(declare-fun res!56592 () Bool)

(assert (=> d!28726 (=> res!56592 e!68955)))

(assert (=> d!28726 (= res!56592 ((_ is Nil!1989) (++!372 testedP!367 (Cons!1989 (head!495 lt!35884) Nil!1989))))))

(assert (=> d!28726 (= (isPrefix!121 (++!372 testedP!367 (Cons!1989 (head!495 lt!35884) Nil!1989)) totalInput!1363) lt!35908)))

(declare-fun b!120488 () Bool)

(assert (=> b!120488 (= e!68955 e!68953)))

(declare-fun res!56591 () Bool)

(assert (=> b!120488 (=> (not res!56591) (not e!68953))))

(assert (=> b!120488 (= res!56591 (not ((_ is Nil!1989) totalInput!1363)))))

(declare-fun b!120489 () Bool)

(declare-fun res!56593 () Bool)

(assert (=> b!120489 (=> (not res!56593) (not e!68953))))

(assert (=> b!120489 (= res!56593 (= (head!495 (++!372 testedP!367 (Cons!1989 (head!495 lt!35884) Nil!1989))) (head!495 totalInput!1363)))))

(assert (= (and d!28726 (not res!56592)) b!120488))

(assert (= (and b!120488 res!56591) b!120489))

(assert (= (and b!120489 res!56593) b!120490))

(assert (= (and d!28726 (not res!56590)) b!120491))

(assert (=> b!120491 m!106927))

(assert (=> b!120491 m!106943))

(declare-fun m!107021 () Bool)

(assert (=> b!120491 m!107021))

(assert (=> b!120490 m!106943))

(declare-fun m!107023 () Bool)

(assert (=> b!120490 m!107023))

(assert (=> b!120490 m!106987))

(assert (=> b!120490 m!107023))

(assert (=> b!120490 m!106987))

(declare-fun m!107025 () Bool)

(assert (=> b!120490 m!107025))

(assert (=> b!120489 m!106943))

(declare-fun m!107027 () Bool)

(assert (=> b!120489 m!107027))

(declare-fun m!107029 () Bool)

(assert (=> b!120489 m!107029))

(assert (=> b!120441 d!28726))

(declare-fun lt!35909 () List!1995)

(declare-fun b!120495 () Bool)

(declare-fun e!68956 () Bool)

(assert (=> b!120495 (= e!68956 (or (not (= (Cons!1989 (head!495 lt!35884) Nil!1989) Nil!1989)) (= lt!35909 testedP!367)))))

(declare-fun b!120492 () Bool)

(declare-fun e!68957 () List!1995)

(assert (=> b!120492 (= e!68957 (Cons!1989 (head!495 lt!35884) Nil!1989))))

(declare-fun b!120494 () Bool)

(declare-fun res!56594 () Bool)

(assert (=> b!120494 (=> (not res!56594) (not e!68956))))

(assert (=> b!120494 (= res!56594 (= (size!1840 lt!35909) (+ (size!1840 testedP!367) (size!1840 (Cons!1989 (head!495 lt!35884) Nil!1989)))))))

(declare-fun b!120493 () Bool)

(assert (=> b!120493 (= e!68957 (Cons!1989 (h!7386 testedP!367) (++!372 (t!22472 testedP!367) (Cons!1989 (head!495 lt!35884) Nil!1989))))))

(declare-fun d!28728 () Bool)

(assert (=> d!28728 e!68956))

(declare-fun res!56595 () Bool)

(assert (=> d!28728 (=> (not res!56595) (not e!68956))))

(assert (=> d!28728 (= res!56595 (= (content!223 lt!35909) ((_ map or) (content!223 testedP!367) (content!223 (Cons!1989 (head!495 lt!35884) Nil!1989)))))))

(assert (=> d!28728 (= lt!35909 e!68957)))

(declare-fun c!26931 () Bool)

(assert (=> d!28728 (= c!26931 ((_ is Nil!1989) testedP!367))))

(assert (=> d!28728 (= (++!372 testedP!367 (Cons!1989 (head!495 lt!35884) Nil!1989)) lt!35909)))

(assert (= (and d!28728 c!26931) b!120492))

(assert (= (and d!28728 (not c!26931)) b!120493))

(assert (= (and d!28728 res!56595) b!120494))

(assert (= (and b!120494 res!56594) b!120495))

(declare-fun m!107031 () Bool)

(assert (=> b!120494 m!107031))

(assert (=> b!120494 m!106979))

(declare-fun m!107033 () Bool)

(assert (=> b!120494 m!107033))

(declare-fun m!107035 () Bool)

(assert (=> b!120493 m!107035))

(declare-fun m!107037 () Bool)

(assert (=> d!28728 m!107037))

(assert (=> d!28728 m!106999))

(declare-fun m!107039 () Bool)

(assert (=> d!28728 m!107039))

(assert (=> b!120441 d!28728))

(declare-fun d!28730 () Bool)

(assert (=> d!28730 (= (head!495 lt!35884) (h!7386 lt!35884))))

(assert (=> b!120441 d!28730))

(declare-fun d!28732 () Bool)

(assert (=> d!28732 (= (head!495 testedSuffix!285) (h!7386 testedSuffix!285))))

(assert (=> b!120441 d!28732))

(declare-fun d!28734 () Bool)

(assert (=> d!28734 (<= (size!1840 testedP!367) (size!1840 totalInput!1363))))

(declare-fun lt!35912 () Unit!1503)

(declare-fun choose!1562 (List!1995 List!1995) Unit!1503)

(assert (=> d!28734 (= lt!35912 (choose!1562 testedP!367 totalInput!1363))))

(assert (=> d!28734 (isPrefix!121 testedP!367 totalInput!1363)))

(assert (=> d!28734 (= (lemmaIsPrefixThenSmallerEqSize!34 testedP!367 totalInput!1363) lt!35912)))

(declare-fun bs!11934 () Bool)

(assert (= bs!11934 d!28734))

(assert (=> bs!11934 m!106979))

(assert (=> bs!11934 m!106927))

(declare-fun m!107041 () Bool)

(assert (=> bs!11934 m!107041))

(assert (=> bs!11934 m!106971))

(assert (=> b!120456 d!28734))

(declare-fun b!120499 () Bool)

(declare-fun e!68959 () Bool)

(assert (=> b!120499 (= e!68959 (>= (size!1840 totalInput!1363) (size!1840 testedP!367)))))

(declare-fun b!120498 () Bool)

(declare-fun e!68958 () Bool)

(assert (=> b!120498 (= e!68958 (isPrefix!121 (tail!231 testedP!367) (tail!231 totalInput!1363)))))

(declare-fun d!28736 () Bool)

(assert (=> d!28736 e!68959))

(declare-fun res!56596 () Bool)

(assert (=> d!28736 (=> res!56596 e!68959)))

(declare-fun lt!35913 () Bool)

(assert (=> d!28736 (= res!56596 (not lt!35913))))

(declare-fun e!68960 () Bool)

(assert (=> d!28736 (= lt!35913 e!68960)))

(declare-fun res!56598 () Bool)

(assert (=> d!28736 (=> res!56598 e!68960)))

(assert (=> d!28736 (= res!56598 ((_ is Nil!1989) testedP!367))))

(assert (=> d!28736 (= (isPrefix!121 testedP!367 totalInput!1363) lt!35913)))

(declare-fun b!120496 () Bool)

(assert (=> b!120496 (= e!68960 e!68958)))

(declare-fun res!56597 () Bool)

(assert (=> b!120496 (=> (not res!56597) (not e!68958))))

(assert (=> b!120496 (= res!56597 (not ((_ is Nil!1989) totalInput!1363)))))

(declare-fun b!120497 () Bool)

(declare-fun res!56599 () Bool)

(assert (=> b!120497 (=> (not res!56599) (not e!68958))))

(assert (=> b!120497 (= res!56599 (= (head!495 testedP!367) (head!495 totalInput!1363)))))

(assert (= (and d!28736 (not res!56598)) b!120496))

(assert (= (and b!120496 res!56597) b!120497))

(assert (= (and b!120497 res!56599) b!120498))

(assert (= (and d!28736 (not res!56596)) b!120499))

(assert (=> b!120499 m!106927))

(assert (=> b!120499 m!106979))

(declare-fun m!107043 () Bool)

(assert (=> b!120498 m!107043))

(assert (=> b!120498 m!106987))

(assert (=> b!120498 m!107043))

(assert (=> b!120498 m!106987))

(declare-fun m!107045 () Bool)

(assert (=> b!120498 m!107045))

(declare-fun m!107047 () Bool)

(assert (=> b!120497 m!107047))

(assert (=> b!120497 m!107029))

(assert (=> b!120445 d!28736))

(declare-fun b!120503 () Bool)

(declare-fun e!68962 () Bool)

(assert (=> b!120503 (= e!68962 (>= (size!1840 lt!35890) (size!1840 testedP!367)))))

(declare-fun b!120502 () Bool)

(declare-fun e!68961 () Bool)

(assert (=> b!120502 (= e!68961 (isPrefix!121 (tail!231 testedP!367) (tail!231 lt!35890)))))

(declare-fun d!28738 () Bool)

(assert (=> d!28738 e!68962))

(declare-fun res!56600 () Bool)

(assert (=> d!28738 (=> res!56600 e!68962)))

(declare-fun lt!35914 () Bool)

(assert (=> d!28738 (= res!56600 (not lt!35914))))

(declare-fun e!68963 () Bool)

(assert (=> d!28738 (= lt!35914 e!68963)))

(declare-fun res!56602 () Bool)

(assert (=> d!28738 (=> res!56602 e!68963)))

(assert (=> d!28738 (= res!56602 ((_ is Nil!1989) testedP!367))))

(assert (=> d!28738 (= (isPrefix!121 testedP!367 lt!35890) lt!35914)))

(declare-fun b!120500 () Bool)

(assert (=> b!120500 (= e!68963 e!68961)))

(declare-fun res!56601 () Bool)

(assert (=> b!120500 (=> (not res!56601) (not e!68961))))

(assert (=> b!120500 (= res!56601 (not ((_ is Nil!1989) lt!35890)))))

(declare-fun b!120501 () Bool)

(declare-fun res!56603 () Bool)

(assert (=> b!120501 (=> (not res!56603) (not e!68961))))

(assert (=> b!120501 (= res!56603 (= (head!495 testedP!367) (head!495 lt!35890)))))

(assert (= (and d!28738 (not res!56602)) b!120500))

(assert (= (and b!120500 res!56601) b!120501))

(assert (= (and b!120501 res!56603) b!120502))

(assert (= (and d!28738 (not res!56600)) b!120503))

(declare-fun m!107049 () Bool)

(assert (=> b!120503 m!107049))

(assert (=> b!120503 m!106979))

(assert (=> b!120502 m!107043))

(declare-fun m!107051 () Bool)

(assert (=> b!120502 m!107051))

(assert (=> b!120502 m!107043))

(assert (=> b!120502 m!107051))

(declare-fun m!107053 () Bool)

(assert (=> b!120502 m!107053))

(assert (=> b!120501 m!107047))

(declare-fun m!107055 () Bool)

(assert (=> b!120501 m!107055))

(assert (=> b!120445 d!28738))

(declare-fun d!28740 () Bool)

(assert (=> d!28740 (isPrefix!121 testedP!367 (++!372 testedP!367 testedSuffix!285))))

(declare-fun lt!35917 () Unit!1503)

(declare-fun choose!1563 (List!1995 List!1995) Unit!1503)

(assert (=> d!28740 (= lt!35917 (choose!1563 testedP!367 testedSuffix!285))))

(assert (=> d!28740 (= (lemmaConcatTwoListThenFirstIsPrefix!65 testedP!367 testedSuffix!285) lt!35917)))

(declare-fun bs!11935 () Bool)

(assert (= bs!11935 d!28740))

(assert (=> bs!11935 m!106931))

(assert (=> bs!11935 m!106931))

(declare-fun m!107057 () Bool)

(assert (=> bs!11935 m!107057))

(declare-fun m!107059 () Bool)

(assert (=> bs!11935 m!107059))

(assert (=> b!120445 d!28740))

(declare-fun d!28742 () Bool)

(declare-fun validCacheMap!25 (MutableMap!403) Bool)

(assert (=> d!28742 (= (valid!368 cache!470) (validCacheMap!25 (cache!855 cache!470)))))

(declare-fun bs!11936 () Bool)

(assert (= bs!11936 d!28742))

(declare-fun m!107061 () Bool)

(assert (=> bs!11936 m!107061))

(assert (=> b!120443 d!28742))

(declare-fun d!28744 () Bool)

(assert (=> d!28744 (= (array_inv!503 (_keys!698 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470))))))) (bvsge (size!1838 (_keys!698 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!120434 d!28744))

(declare-fun d!28746 () Bool)

(assert (=> d!28746 (= (array_inv!504 (_values!685 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470))))))) (bvsge (size!1839 (_values!685 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!120434 d!28746))

(declare-fun d!28748 () Bool)

(declare-fun lt!35920 () Int)

(assert (=> d!28748 (>= lt!35920 0)))

(declare-fun e!68966 () Int)

(assert (=> d!28748 (= lt!35920 e!68966)))

(declare-fun c!26934 () Bool)

(assert (=> d!28748 (= c!26934 ((_ is Nil!1989) totalInput!1363))))

(assert (=> d!28748 (= (size!1840 totalInput!1363) lt!35920)))

(declare-fun b!120508 () Bool)

(assert (=> b!120508 (= e!68966 0)))

(declare-fun b!120509 () Bool)

(assert (=> b!120509 (= e!68966 (+ 1 (size!1840 (t!22472 totalInput!1363))))))

(assert (= (and d!28748 c!26934) b!120508))

(assert (= (and d!28748 (not c!26934)) b!120509))

(declare-fun m!107063 () Bool)

(assert (=> b!120509 m!107063))

(assert (=> b!120447 d!28748))

(declare-fun lt!35921 () List!1995)

(declare-fun b!120513 () Bool)

(declare-fun e!68967 () Bool)

(assert (=> b!120513 (= e!68967 (or (not (= testedSuffix!285 Nil!1989)) (= lt!35921 testedP!367)))))

(declare-fun b!120510 () Bool)

(declare-fun e!68968 () List!1995)

(assert (=> b!120510 (= e!68968 testedSuffix!285)))

(declare-fun b!120512 () Bool)

(declare-fun res!56604 () Bool)

(assert (=> b!120512 (=> (not res!56604) (not e!68967))))

(assert (=> b!120512 (= res!56604 (= (size!1840 lt!35921) (+ (size!1840 testedP!367) (size!1840 testedSuffix!285))))))

(declare-fun b!120511 () Bool)

(assert (=> b!120511 (= e!68968 (Cons!1989 (h!7386 testedP!367) (++!372 (t!22472 testedP!367) testedSuffix!285)))))

(declare-fun d!28750 () Bool)

(assert (=> d!28750 e!68967))

(declare-fun res!56605 () Bool)

(assert (=> d!28750 (=> (not res!56605) (not e!68967))))

(assert (=> d!28750 (= res!56605 (= (content!223 lt!35921) ((_ map or) (content!223 testedP!367) (content!223 testedSuffix!285))))))

(assert (=> d!28750 (= lt!35921 e!68968)))

(declare-fun c!26935 () Bool)

(assert (=> d!28750 (= c!26935 ((_ is Nil!1989) testedP!367))))

(assert (=> d!28750 (= (++!372 testedP!367 testedSuffix!285) lt!35921)))

(assert (= (and d!28750 c!26935) b!120510))

(assert (= (and d!28750 (not c!26935)) b!120511))

(assert (= (and d!28750 res!56605) b!120512))

(assert (= (and b!120512 res!56604) b!120513))

(declare-fun m!107065 () Bool)

(assert (=> b!120512 m!107065))

(assert (=> b!120512 m!106979))

(declare-fun m!107067 () Bool)

(assert (=> b!120512 m!107067))

(declare-fun m!107069 () Bool)

(assert (=> b!120511 m!107069))

(declare-fun m!107071 () Bool)

(assert (=> d!28750 m!107071))

(assert (=> d!28750 m!106999))

(declare-fun m!107073 () Bool)

(assert (=> d!28750 m!107073))

(assert (=> b!120448 d!28750))

(declare-fun bm!5072 () Bool)

(declare-fun call!5078 () Bool)

(declare-fun c!26941 () Bool)

(assert (=> bm!5072 (= call!5078 (validRegex!140 (ite c!26941 (regTwo!1595 r!15532) (regOne!1594 r!15532))))))

(declare-fun b!120532 () Bool)

(declare-fun e!68985 () Bool)

(declare-fun call!5077 () Bool)

(assert (=> b!120532 (= e!68985 call!5077)))

(declare-fun b!120533 () Bool)

(declare-fun res!56618 () Bool)

(declare-fun e!68987 () Bool)

(assert (=> b!120533 (=> res!56618 e!68987)))

(assert (=> b!120533 (= res!56618 (not ((_ is Concat!925) r!15532)))))

(declare-fun e!68983 () Bool)

(assert (=> b!120533 (= e!68983 e!68987)))

(declare-fun b!120534 () Bool)

(assert (=> b!120534 (= e!68987 e!68985)))

(declare-fun res!56617 () Bool)

(assert (=> b!120534 (=> (not res!56617) (not e!68985))))

(assert (=> b!120534 (= res!56617 call!5078)))

(declare-fun b!120535 () Bool)

(declare-fun e!68989 () Bool)

(declare-fun call!5079 () Bool)

(assert (=> b!120535 (= e!68989 call!5079)))

(declare-fun b!120536 () Bool)

(declare-fun e!68986 () Bool)

(assert (=> b!120536 (= e!68986 e!68983)))

(assert (=> b!120536 (= c!26941 ((_ is Union!541) r!15532))))

(declare-fun bm!5073 () Bool)

(assert (=> bm!5073 (= call!5077 call!5079)))

(declare-fun b!120537 () Bool)

(declare-fun e!68988 () Bool)

(assert (=> b!120537 (= e!68988 e!68986)))

(declare-fun c!26940 () Bool)

(assert (=> b!120537 (= c!26940 ((_ is Star!541) r!15532))))

(declare-fun d!28752 () Bool)

(declare-fun res!56619 () Bool)

(assert (=> d!28752 (=> res!56619 e!68988)))

(assert (=> d!28752 (= res!56619 ((_ is ElementMatch!541) r!15532))))

(assert (=> d!28752 (= (validRegex!140 r!15532) e!68988)))

(declare-fun bm!5074 () Bool)

(assert (=> bm!5074 (= call!5079 (validRegex!140 (ite c!26940 (reg!870 r!15532) (ite c!26941 (regOne!1595 r!15532) (regTwo!1594 r!15532)))))))

(declare-fun b!120538 () Bool)

(assert (=> b!120538 (= e!68986 e!68989)))

(declare-fun res!56620 () Bool)

(declare-fun nullable!81 (Regex!541) Bool)

(assert (=> b!120538 (= res!56620 (not (nullable!81 (reg!870 r!15532))))))

(assert (=> b!120538 (=> (not res!56620) (not e!68989))))

(declare-fun b!120539 () Bool)

(declare-fun res!56616 () Bool)

(declare-fun e!68984 () Bool)

(assert (=> b!120539 (=> (not res!56616) (not e!68984))))

(assert (=> b!120539 (= res!56616 call!5077)))

(assert (=> b!120539 (= e!68983 e!68984)))

(declare-fun b!120540 () Bool)

(assert (=> b!120540 (= e!68984 call!5078)))

(assert (= (and d!28752 (not res!56619)) b!120537))

(assert (= (and b!120537 c!26940) b!120538))

(assert (= (and b!120537 (not c!26940)) b!120536))

(assert (= (and b!120538 res!56620) b!120535))

(assert (= (and b!120536 c!26941) b!120539))

(assert (= (and b!120536 (not c!26941)) b!120533))

(assert (= (and b!120539 res!56616) b!120540))

(assert (= (and b!120533 (not res!56618)) b!120534))

(assert (= (and b!120534 res!56617) b!120532))

(assert (= (or b!120540 b!120534) bm!5072))

(assert (= (or b!120539 b!120532) bm!5073))

(assert (= (or b!120535 bm!5073) bm!5074))

(declare-fun m!107075 () Bool)

(assert (=> bm!5072 m!107075))

(declare-fun m!107077 () Bool)

(assert (=> bm!5074 m!107077))

(declare-fun m!107079 () Bool)

(assert (=> b!120538 m!107079))

(assert (=> start!12172 d!28752))

(declare-fun d!28754 () Bool)

(declare-fun res!56623 () Bool)

(declare-fun e!68992 () Bool)

(assert (=> d!28754 (=> (not res!56623) (not e!68992))))

(assert (=> d!28754 (= res!56623 ((_ is HashMap!403) (cache!855 cache!470)))))

(assert (=> d!28754 (= (inv!2515 cache!470) e!68992)))

(declare-fun b!120543 () Bool)

(assert (=> b!120543 (= e!68992 (validCacheMap!25 (cache!855 cache!470)))))

(assert (= (and d!28754 res!56623) b!120543))

(assert (=> b!120543 m!107061))

(assert (=> start!12172 d!28754))

(declare-fun d!28756 () Bool)

(assert (=> d!28756 (isPrefix!121 totalInput!1363 totalInput!1363)))

(declare-fun lt!35924 () Unit!1503)

(declare-fun choose!1564 (List!1995 List!1995) Unit!1503)

(assert (=> d!28756 (= lt!35924 (choose!1564 totalInput!1363 totalInput!1363))))

(assert (=> d!28756 (= (lemmaIsPrefixRefl!91 totalInput!1363 totalInput!1363) lt!35924)))

(declare-fun bs!11937 () Bool)

(assert (= bs!11937 d!28756))

(assert (=> bs!11937 m!106967))

(declare-fun m!107081 () Bool)

(assert (=> bs!11937 m!107081))

(assert (=> b!120457 d!28756))

(declare-fun b!120547 () Bool)

(declare-fun e!68994 () Bool)

(assert (=> b!120547 (= e!68994 (>= (size!1840 totalInput!1363) (size!1840 totalInput!1363)))))

(declare-fun b!120546 () Bool)

(declare-fun e!68993 () Bool)

(assert (=> b!120546 (= e!68993 (isPrefix!121 (tail!231 totalInput!1363) (tail!231 totalInput!1363)))))

(declare-fun d!28758 () Bool)

(assert (=> d!28758 e!68994))

(declare-fun res!56624 () Bool)

(assert (=> d!28758 (=> res!56624 e!68994)))

(declare-fun lt!35925 () Bool)

(assert (=> d!28758 (= res!56624 (not lt!35925))))

(declare-fun e!68995 () Bool)

(assert (=> d!28758 (= lt!35925 e!68995)))

(declare-fun res!56626 () Bool)

(assert (=> d!28758 (=> res!56626 e!68995)))

(assert (=> d!28758 (= res!56626 ((_ is Nil!1989) totalInput!1363))))

(assert (=> d!28758 (= (isPrefix!121 totalInput!1363 totalInput!1363) lt!35925)))

(declare-fun b!120544 () Bool)

(assert (=> b!120544 (= e!68995 e!68993)))

(declare-fun res!56625 () Bool)

(assert (=> b!120544 (=> (not res!56625) (not e!68993))))

(assert (=> b!120544 (= res!56625 (not ((_ is Nil!1989) totalInput!1363)))))

(declare-fun b!120545 () Bool)

(declare-fun res!56627 () Bool)

(assert (=> b!120545 (=> (not res!56627) (not e!68993))))

(assert (=> b!120545 (= res!56627 (= (head!495 totalInput!1363) (head!495 totalInput!1363)))))

(assert (= (and d!28758 (not res!56626)) b!120544))

(assert (= (and b!120544 res!56625) b!120545))

(assert (= (and b!120545 res!56627) b!120546))

(assert (= (and d!28758 (not res!56624)) b!120547))

(assert (=> b!120547 m!106927))

(assert (=> b!120547 m!106927))

(assert (=> b!120546 m!106987))

(assert (=> b!120546 m!106987))

(assert (=> b!120546 m!106987))

(assert (=> b!120546 m!106987))

(declare-fun m!107083 () Bool)

(assert (=> b!120546 m!107083))

(assert (=> b!120545 m!107029))

(assert (=> b!120545 m!107029))

(assert (=> b!120457 d!28758))

(declare-fun d!28760 () Bool)

(assert (=> d!28760 (= totalInput!1363 testedP!367)))

(declare-fun lt!35928 () Unit!1503)

(declare-fun choose!1565 (List!1995 List!1995 List!1995) Unit!1503)

(assert (=> d!28760 (= lt!35928 (choose!1565 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28760 (isPrefix!121 totalInput!1363 totalInput!1363)))

(assert (=> d!28760 (= (lemmaIsPrefixSameLengthThenSameList!34 totalInput!1363 testedP!367 totalInput!1363) lt!35928)))

(declare-fun bs!11938 () Bool)

(assert (= bs!11938 d!28760))

(declare-fun m!107085 () Bool)

(assert (=> bs!11938 m!107085))

(assert (=> bs!11938 m!106967))

(assert (=> b!120457 d!28760))

(declare-fun d!28762 () Bool)

(declare-fun lt!35929 () Int)

(assert (=> d!28762 (>= lt!35929 0)))

(declare-fun e!68996 () Int)

(assert (=> d!28762 (= lt!35929 e!68996)))

(declare-fun c!26942 () Bool)

(assert (=> d!28762 (= c!26942 ((_ is Nil!1989) testedP!367))))

(assert (=> d!28762 (= (size!1840 testedP!367) lt!35929)))

(declare-fun b!120548 () Bool)

(assert (=> b!120548 (= e!68996 0)))

(declare-fun b!120549 () Bool)

(assert (=> b!120549 (= e!68996 (+ 1 (size!1840 (t!22472 testedP!367))))))

(assert (= (and d!28762 c!26942) b!120548))

(assert (= (and d!28762 (not c!26942)) b!120549))

(declare-fun m!107087 () Bool)

(assert (=> b!120549 m!107087))

(assert (=> b!120438 d!28762))

(declare-fun b!120554 () Bool)

(declare-fun e!68999 () Bool)

(declare-fun tp!66184 () Bool)

(assert (=> b!120554 (= e!68999 (and tp_is_empty!1137 tp!66184))))

(assert (=> b!120442 (= tp!66171 e!68999)))

(assert (= (and b!120442 ((_ is Cons!1989) (t!22472 totalInput!1363))) b!120554))

(declare-fun b!120562 () Bool)

(declare-fun tp!66203 () Bool)

(declare-fun tp!66201 () Bool)

(declare-fun tp!66200 () Bool)

(declare-fun e!69005 () Bool)

(assert (=> b!120562 (= e!69005 (and tp!66203 tp_is_empty!1137 tp!66200 tp!66201))))

(declare-fun mapIsEmpty!1574 () Bool)

(declare-fun mapRes!1574 () Bool)

(assert (=> mapIsEmpty!1574 mapRes!1574))

(declare-fun tp!66199 () Bool)

(declare-fun tp!66202 () Bool)

(declare-fun tp!66205 () Bool)

(declare-fun e!69004 () Bool)

(declare-fun b!120561 () Bool)

(assert (=> b!120561 (= e!69004 (and tp!66199 tp_is_empty!1137 tp!66202 tp!66205))))

(declare-fun mapNonEmpty!1574 () Bool)

(declare-fun tp!66204 () Bool)

(assert (=> mapNonEmpty!1574 (= mapRes!1574 (and tp!66204 e!69004))))

(declare-fun mapKey!1574 () (_ BitVec 32))

(declare-fun mapRest!1574 () (Array (_ BitVec 32) List!1994))

(declare-fun mapValue!1574 () List!1994)

(assert (=> mapNonEmpty!1574 (= mapRest!1571 (store mapRest!1574 mapKey!1574 mapValue!1574))))

(declare-fun condMapEmpty!1574 () Bool)

(declare-fun mapDefault!1574 () List!1994)

(assert (=> mapNonEmpty!1571 (= condMapEmpty!1574 (= mapRest!1571 ((as const (Array (_ BitVec 32) List!1994)) mapDefault!1574)))))

(assert (=> mapNonEmpty!1571 (= tp!66175 (and e!69005 mapRes!1574))))

(assert (= (and mapNonEmpty!1571 condMapEmpty!1574) mapIsEmpty!1574))

(assert (= (and mapNonEmpty!1571 (not condMapEmpty!1574)) mapNonEmpty!1574))

(assert (= (and mapNonEmpty!1574 ((_ is Cons!1988) mapValue!1574)) b!120561))

(assert (= (and mapNonEmpty!1571 ((_ is Cons!1988) mapDefault!1574)) b!120562))

(declare-fun m!107089 () Bool)

(assert (=> mapNonEmpty!1574 m!107089))

(declare-fun e!69008 () Bool)

(declare-fun tp!66212 () Bool)

(declare-fun tp!66214 () Bool)

(declare-fun tp!66213 () Bool)

(declare-fun b!120567 () Bool)

(assert (=> b!120567 (= e!69008 (and tp!66212 tp_is_empty!1137 tp!66213 tp!66214))))

(assert (=> mapNonEmpty!1571 (= tp!66169 e!69008)))

(assert (= (and mapNonEmpty!1571 ((_ is Cons!1988) mapValue!1571)) b!120567))

(declare-fun b!120578 () Bool)

(declare-fun e!69011 () Bool)

(assert (=> b!120578 (= e!69011 tp_is_empty!1137)))

(declare-fun b!120580 () Bool)

(declare-fun tp!66227 () Bool)

(assert (=> b!120580 (= e!69011 tp!66227)))

(declare-fun b!120581 () Bool)

(declare-fun tp!66225 () Bool)

(declare-fun tp!66228 () Bool)

(assert (=> b!120581 (= e!69011 (and tp!66225 tp!66228))))

(assert (=> b!120437 (= tp!66176 e!69011)))

(declare-fun b!120579 () Bool)

(declare-fun tp!66226 () Bool)

(declare-fun tp!66229 () Bool)

(assert (=> b!120579 (= e!69011 (and tp!66226 tp!66229))))

(assert (= (and b!120437 ((_ is ElementMatch!541) (reg!870 r!15532))) b!120578))

(assert (= (and b!120437 ((_ is Concat!925) (reg!870 r!15532))) b!120579))

(assert (= (and b!120437 ((_ is Star!541) (reg!870 r!15532))) b!120580))

(assert (= (and b!120437 ((_ is Union!541) (reg!870 r!15532))) b!120581))

(declare-fun b!120582 () Bool)

(declare-fun e!69012 () Bool)

(declare-fun tp!66230 () Bool)

(assert (=> b!120582 (= e!69012 (and tp_is_empty!1137 tp!66230))))

(assert (=> b!120446 (= tp!66168 e!69012)))

(assert (= (and b!120446 ((_ is Cons!1989) (t!22472 testedP!367))) b!120582))

(declare-fun tp!66231 () Bool)

(declare-fun tp!66232 () Bool)

(declare-fun e!69013 () Bool)

(declare-fun tp!66233 () Bool)

(declare-fun b!120583 () Bool)

(assert (=> b!120583 (= e!69013 (and tp!66231 tp_is_empty!1137 tp!66232 tp!66233))))

(assert (=> b!120436 (= tp!66177 e!69013)))

(assert (= (and b!120436 ((_ is Cons!1988) mapDefault!1571)) b!120583))

(declare-fun b!120584 () Bool)

(declare-fun e!69014 () Bool)

(assert (=> b!120584 (= e!69014 tp_is_empty!1137)))

(declare-fun b!120586 () Bool)

(declare-fun tp!66236 () Bool)

(assert (=> b!120586 (= e!69014 tp!66236)))

(declare-fun b!120587 () Bool)

(declare-fun tp!66234 () Bool)

(declare-fun tp!66237 () Bool)

(assert (=> b!120587 (= e!69014 (and tp!66234 tp!66237))))

(assert (=> b!120435 (= tp!66167 e!69014)))

(declare-fun b!120585 () Bool)

(declare-fun tp!66235 () Bool)

(declare-fun tp!66238 () Bool)

(assert (=> b!120585 (= e!69014 (and tp!66235 tp!66238))))

(assert (= (and b!120435 ((_ is ElementMatch!541) (regOne!1594 r!15532))) b!120584))

(assert (= (and b!120435 ((_ is Concat!925) (regOne!1594 r!15532))) b!120585))

(assert (= (and b!120435 ((_ is Star!541) (regOne!1594 r!15532))) b!120586))

(assert (= (and b!120435 ((_ is Union!541) (regOne!1594 r!15532))) b!120587))

(declare-fun b!120588 () Bool)

(declare-fun e!69015 () Bool)

(assert (=> b!120588 (= e!69015 tp_is_empty!1137)))

(declare-fun b!120590 () Bool)

(declare-fun tp!66241 () Bool)

(assert (=> b!120590 (= e!69015 tp!66241)))

(declare-fun b!120591 () Bool)

(declare-fun tp!66239 () Bool)

(declare-fun tp!66242 () Bool)

(assert (=> b!120591 (= e!69015 (and tp!66239 tp!66242))))

(assert (=> b!120435 (= tp!66174 e!69015)))

(declare-fun b!120589 () Bool)

(declare-fun tp!66240 () Bool)

(declare-fun tp!66243 () Bool)

(assert (=> b!120589 (= e!69015 (and tp!66240 tp!66243))))

(assert (= (and b!120435 ((_ is ElementMatch!541) (regTwo!1594 r!15532))) b!120588))

(assert (= (and b!120435 ((_ is Concat!925) (regTwo!1594 r!15532))) b!120589))

(assert (= (and b!120435 ((_ is Star!541) (regTwo!1594 r!15532))) b!120590))

(assert (= (and b!120435 ((_ is Union!541) (regTwo!1594 r!15532))) b!120591))

(declare-fun b!120592 () Bool)

(declare-fun e!69016 () Bool)

(declare-fun tp!66244 () Bool)

(assert (=> b!120592 (= e!69016 (and tp_is_empty!1137 tp!66244))))

(assert (=> b!120454 (= tp!66180 e!69016)))

(assert (= (and b!120454 ((_ is Cons!1989) (t!22472 testedSuffix!285))) b!120592))

(declare-fun b!120593 () Bool)

(declare-fun e!69017 () Bool)

(assert (=> b!120593 (= e!69017 tp_is_empty!1137)))

(declare-fun b!120595 () Bool)

(declare-fun tp!66247 () Bool)

(assert (=> b!120595 (= e!69017 tp!66247)))

(declare-fun b!120596 () Bool)

(declare-fun tp!66245 () Bool)

(declare-fun tp!66248 () Bool)

(assert (=> b!120596 (= e!69017 (and tp!66245 tp!66248))))

(assert (=> b!120444 (= tp!66178 e!69017)))

(declare-fun b!120594 () Bool)

(declare-fun tp!66246 () Bool)

(declare-fun tp!66249 () Bool)

(assert (=> b!120594 (= e!69017 (and tp!66246 tp!66249))))

(assert (= (and b!120444 ((_ is ElementMatch!541) (regOne!1595 r!15532))) b!120593))

(assert (= (and b!120444 ((_ is Concat!925) (regOne!1595 r!15532))) b!120594))

(assert (= (and b!120444 ((_ is Star!541) (regOne!1595 r!15532))) b!120595))

(assert (= (and b!120444 ((_ is Union!541) (regOne!1595 r!15532))) b!120596))

(declare-fun b!120597 () Bool)

(declare-fun e!69018 () Bool)

(assert (=> b!120597 (= e!69018 tp_is_empty!1137)))

(declare-fun b!120599 () Bool)

(declare-fun tp!66252 () Bool)

(assert (=> b!120599 (= e!69018 tp!66252)))

(declare-fun b!120600 () Bool)

(declare-fun tp!66250 () Bool)

(declare-fun tp!66253 () Bool)

(assert (=> b!120600 (= e!69018 (and tp!66250 tp!66253))))

(assert (=> b!120444 (= tp!66173 e!69018)))

(declare-fun b!120598 () Bool)

(declare-fun tp!66251 () Bool)

(declare-fun tp!66254 () Bool)

(assert (=> b!120598 (= e!69018 (and tp!66251 tp!66254))))

(assert (= (and b!120444 ((_ is ElementMatch!541) (regTwo!1595 r!15532))) b!120597))

(assert (= (and b!120444 ((_ is Concat!925) (regTwo!1595 r!15532))) b!120598))

(assert (= (and b!120444 ((_ is Star!541) (regTwo!1595 r!15532))) b!120599))

(assert (= (and b!120444 ((_ is Union!541) (regTwo!1595 r!15532))) b!120600))

(declare-fun b!120601 () Bool)

(declare-fun tp!66255 () Bool)

(declare-fun e!69019 () Bool)

(declare-fun tp!66257 () Bool)

(declare-fun tp!66256 () Bool)

(assert (=> b!120601 (= e!69019 (and tp!66255 tp_is_empty!1137 tp!66256 tp!66257))))

(assert (=> b!120434 (= tp!66172 e!69019)))

(assert (= (and b!120434 ((_ is Cons!1988) (zeroValue!663 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470)))))))) b!120601))

(declare-fun b!120602 () Bool)

(declare-fun tp!66259 () Bool)

(declare-fun tp!66258 () Bool)

(declare-fun tp!66260 () Bool)

(declare-fun e!69020 () Bool)

(assert (=> b!120602 (= e!69020 (and tp!66258 tp_is_empty!1137 tp!66259 tp!66260))))

(assert (=> b!120434 (= tp!66181 e!69020)))

(assert (= (and b!120434 ((_ is Cons!1988) (minValue!663 (v!13345 (underlying!1013 (v!13346 (underlying!1014 (cache!855 cache!470)))))))) b!120602))

(check-sat (not d!28728) (not b!120501) (not b!120586) (not b!120462) (not b!120594) (not b!120580) (not b!120512) (not b!120509) (not d!28724) (not b!120602) (not b!120567) b_and!5987 (not b!120590) (not b!120549) (not b!120473) (not b!120596) (not b!120543) (not b!120561) (not b!120599) (not d!28714) (not b!120502) (not d!28750) (not b!120494) (not b!120579) (not b!120538) (not b!120591) (not d!28716) (not d!28760) (not b_next!3857) (not d!28720) (not b!120585) (not d!28742) (not b!120592) (not b_next!3859) (not b!120503) (not b!120489) (not d!28712) (not b!120601) (not d!28722) (not b!120547) (not b!120600) (not b!120499) tp_is_empty!1137 (not b!120583) (not b!120474) (not b!120498) (not b!120554) (not b!120546) (not b!120582) (not mapNonEmpty!1574) (not d!28756) (not b!120478) (not d!28740) (not b!120562) (not bm!5072) (not b!120497) (not b!120589) (not b!120491) (not d!28734) (not b!120598) (not bm!5074) (not b!120595) (not b!120581) (not b!120587) (not b!120477) (not b!120545) b_and!5989 (not b!120511) (not b!120490) (not b!120493))
(check-sat b_and!5989 b_and!5987 (not b_next!3859) (not b_next!3857))
