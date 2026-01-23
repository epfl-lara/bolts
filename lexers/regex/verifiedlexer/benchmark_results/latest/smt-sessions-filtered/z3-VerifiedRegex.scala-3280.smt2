; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188654 () Bool)

(assert start!188654)

(declare-fun b!1884431 () Bool)

(declare-fun b_free!52389 () Bool)

(declare-fun b_next!53093 () Bool)

(assert (=> b!1884431 (= b_free!52389 (not b_next!53093))))

(declare-fun tp!536498 () Bool)

(declare-fun b_and!145179 () Bool)

(assert (=> b!1884431 (= tp!536498 b_and!145179)))

(declare-fun b!1884424 () Bool)

(declare-fun b_free!52391 () Bool)

(declare-fun b_next!53095 () Bool)

(assert (=> b!1884424 (= b_free!52391 (not b_next!53095))))

(declare-fun tp!536512 () Bool)

(declare-fun b_and!145181 () Bool)

(assert (=> b!1884424 (= tp!536512 b_and!145181)))

(declare-fun b!1884429 () Bool)

(declare-fun b_free!52393 () Bool)

(declare-fun b_next!53097 () Bool)

(assert (=> b!1884429 (= b_free!52393 (not b_next!53097))))

(declare-fun tp!536500 () Bool)

(declare-fun b_and!145183 () Bool)

(assert (=> b!1884429 (= tp!536500 b_and!145183)))

(declare-fun b!1884428 () Bool)

(declare-fun b_free!52395 () Bool)

(declare-fun b_next!53099 () Bool)

(assert (=> b!1884428 (= b_free!52395 (not b_next!53099))))

(declare-fun tp!536506 () Bool)

(declare-fun b_and!145185 () Bool)

(assert (=> b!1884428 (= tp!536506 b_and!145185)))

(declare-fun mapIsEmpty!9050 () Bool)

(declare-fun mapRes!9051 () Bool)

(assert (=> mapIsEmpty!9050 mapRes!9051))

(declare-fun b!1884422 () Bool)

(declare-fun e!1202086 () Bool)

(declare-fun tp!536511 () Bool)

(declare-fun tp!536503 () Bool)

(assert (=> b!1884422 (= e!1202086 (and tp!536511 tp!536503))))

(declare-fun e!1202087 () Bool)

(declare-fun e!1202094 () Bool)

(assert (=> b!1884424 (= e!1202087 (and e!1202094 tp!536512))))

(declare-fun b!1884425 () Bool)

(declare-fun tp!536499 () Bool)

(declare-fun tp!536497 () Bool)

(assert (=> b!1884425 (= e!1202086 (and tp!536499 tp!536497))))

(declare-fun mapNonEmpty!9050 () Bool)

(declare-fun mapRes!9050 () Bool)

(declare-fun tp!536508 () Bool)

(declare-fun tp!536504 () Bool)

(assert (=> mapNonEmpty!9050 (= mapRes!9050 (and tp!536508 tp!536504))))

(declare-datatypes ((C!10416 0))(
  ( (C!10417 (val!6096 Int)) )
))
(declare-datatypes ((Regex!5129 0))(
  ( (ElementMatch!5129 (c!307917 C!10416)) (Concat!8982 (regOne!10770 Regex!5129) (regTwo!10770 Regex!5129)) (EmptyExpr!5129) (Star!5129 (reg!5458 Regex!5129)) (EmptyLang!5129) (Union!5129 (regOne!10771 Regex!5129) (regTwo!10771 Regex!5129)) )
))
(declare-datatypes ((List!21029 0))(
  ( (Nil!20947) (Cons!20947 (h!26348 Regex!5129) (t!175026 List!21029)) )
))
(declare-datatypes ((Context!1966 0))(
  ( (Context!1967 (exprs!1483 List!21029)) )
))
(declare-datatypes ((tuple2!19992 0))(
  ( (tuple2!19993 (_1!11446 Context!1966) (_2!11446 C!10416)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19994 0))(
  ( (tuple2!19995 (_1!11447 tuple2!19992) (_2!11447 (InoxSet Context!1966))) )
))
(declare-datatypes ((List!21030 0))(
  ( (Nil!20948) (Cons!20948 (h!26349 tuple2!19994) (t!175027 List!21030)) )
))
(declare-fun mapRest!9051 () (Array (_ BitVec 32) List!21030))

(declare-fun mapValue!9051 () List!21030)

(declare-fun mapKey!9050 () (_ BitVec 32))

(declare-datatypes ((Hashable!1867 0))(
  ( (HashableExt!1866 (__x!13162 Int)) )
))
(declare-datatypes ((array!6737 0))(
  ( (array!6738 (arr!2991 (Array (_ BitVec 32) List!21030)) (size!16636 (_ BitVec 32))) )
))
(declare-datatypes ((array!6739 0))(
  ( (array!6740 (arr!2992 (Array (_ BitVec 32) (_ BitVec 64))) (size!16637 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3906 0))(
  ( (LongMapFixedSize!3907 (defaultEntry!2318 Int) (mask!5782 (_ BitVec 32)) (extraKeys!2201 (_ BitVec 32)) (zeroValue!2211 List!21030) (minValue!2211 List!21030) (_size!3957 (_ BitVec 32)) (_keys!2250 array!6739) (_values!2233 array!6737) (_vacant!2014 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7637 0))(
  ( (Cell!7638 (v!26223 LongMapFixedSize!3906)) )
))
(declare-datatypes ((MutLongMap!1953 0))(
  ( (LongMap!1953 (underlying!4099 Cell!7637)) (MutLongMapExt!1952 (__x!13163 Int)) )
))
(declare-datatypes ((Cell!7639 0))(
  ( (Cell!7640 (v!26224 MutLongMap!1953)) )
))
(declare-datatypes ((MutableMap!1867 0))(
  ( (MutableMapExt!1866 (__x!13164 Int)) (HashMap!1867 (underlying!4100 Cell!7639) (hashF!3790 Hashable!1867) (_size!3958 (_ BitVec 32)) (defaultValue!2029 Int)) )
))
(declare-datatypes ((CacheUp!1166 0))(
  ( (CacheUp!1167 (cache!2248 MutableMap!1867)) )
))
(declare-fun cacheUp!1015 () CacheUp!1166)

(assert (=> mapNonEmpty!9050 (= (arr!2991 (_values!2233 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))) (store mapRest!9051 mapKey!9050 mapValue!9051))))

(declare-fun b!1884426 () Bool)

(declare-fun e!1202091 () Bool)

(declare-fun e!1202089 () Bool)

(assert (=> b!1884426 (= e!1202091 e!1202089)))

(declare-fun b!1884427 () Bool)

(declare-fun e!1202082 () Bool)

(assert (=> b!1884427 (= e!1202082 e!1202091)))

(declare-fun mapNonEmpty!9051 () Bool)

(declare-fun tp!536514 () Bool)

(declare-fun tp!536513 () Bool)

(assert (=> mapNonEmpty!9051 (= mapRes!9051 (and tp!536514 tp!536513))))

(declare-fun mapKey!9051 () (_ BitVec 32))

(declare-datatypes ((tuple3!1972 0))(
  ( (tuple3!1973 (_1!11448 Regex!5129) (_2!11448 Context!1966) (_3!1450 C!10416)) )
))
(declare-datatypes ((tuple2!19996 0))(
  ( (tuple2!19997 (_1!11449 tuple3!1972) (_2!11449 (InoxSet Context!1966))) )
))
(declare-datatypes ((List!21031 0))(
  ( (Nil!20949) (Cons!20949 (h!26350 tuple2!19996) (t!175028 List!21031)) )
))
(declare-fun mapRest!9050 () (Array (_ BitVec 32) List!21031))

(declare-datatypes ((array!6741 0))(
  ( (array!6742 (arr!2993 (Array (_ BitVec 32) List!21031)) (size!16638 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3908 0))(
  ( (LongMapFixedSize!3909 (defaultEntry!2319 Int) (mask!5783 (_ BitVec 32)) (extraKeys!2202 (_ BitVec 32)) (zeroValue!2212 List!21031) (minValue!2212 List!21031) (_size!3959 (_ BitVec 32)) (_keys!2251 array!6739) (_values!2234 array!6741) (_vacant!2015 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7641 0))(
  ( (Cell!7642 (v!26225 LongMapFixedSize!3908)) )
))
(declare-datatypes ((MutLongMap!1954 0))(
  ( (LongMap!1954 (underlying!4101 Cell!7641)) (MutLongMapExt!1953 (__x!13165 Int)) )
))
(declare-datatypes ((Cell!7643 0))(
  ( (Cell!7644 (v!26226 MutLongMap!1954)) )
))
(declare-datatypes ((Hashable!1868 0))(
  ( (HashableExt!1867 (__x!13166 Int)) )
))
(declare-datatypes ((MutableMap!1868 0))(
  ( (MutableMapExt!1867 (__x!13167 Int)) (HashMap!1868 (underlying!4102 Cell!7643) (hashF!3791 Hashable!1868) (_size!3960 (_ BitVec 32)) (defaultValue!2030 Int)) )
))
(declare-datatypes ((CacheDown!1162 0))(
  ( (CacheDown!1163 (cache!2249 MutableMap!1868)) )
))
(declare-fun cacheDown!1134 () CacheDown!1162)

(declare-fun mapValue!9050 () List!21031)

(assert (=> mapNonEmpty!9051 (= (arr!2993 (_values!2234 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))) (store mapRest!9050 mapKey!9051 mapValue!9050))))

(declare-fun tp!536510 () Bool)

(declare-fun e!1202097 () Bool)

(declare-fun tp!536496 () Bool)

(declare-fun e!1202096 () Bool)

(declare-fun array_inv!2147 (array!6739) Bool)

(declare-fun array_inv!2148 (array!6741) Bool)

(assert (=> b!1884428 (= e!1202097 (and tp!536506 tp!536510 tp!536496 (array_inv!2147 (_keys!2251 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))) (array_inv!2148 (_values!2234 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))) e!1202096))))

(declare-fun e!1202095 () Bool)

(declare-fun tp!536507 () Bool)

(declare-fun tp!536502 () Bool)

(declare-fun array_inv!2149 (array!6737) Bool)

(assert (=> b!1884429 (= e!1202089 (and tp!536500 tp!536507 tp!536502 (array_inv!2147 (_keys!2250 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))) (array_inv!2149 (_values!2233 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))) e!1202095))))

(declare-fun res!841436 () Bool)

(declare-fun e!1202080 () Bool)

(assert (=> start!188654 (=> (not res!841436) (not e!1202080))))

(declare-fun r!13659 () Regex!5129)

(declare-fun validRegex!2099 (Regex!5129) Bool)

(assert (=> start!188654 (= res!841436 (validRegex!2099 r!13659))))

(assert (=> start!188654 e!1202080))

(assert (=> start!188654 e!1202086))

(declare-fun e!1202083 () Bool)

(declare-fun inv!27899 (CacheDown!1162) Bool)

(assert (=> start!188654 (and (inv!27899 cacheDown!1134) e!1202083)))

(declare-datatypes ((List!21032 0))(
  ( (Nil!20950) (Cons!20950 (h!26351 C!10416) (t!175029 List!21032)) )
))
(declare-datatypes ((IArray!13933 0))(
  ( (IArray!13934 (innerList!7024 List!21032)) )
))
(declare-datatypes ((Conc!6964 0))(
  ( (Node!6964 (left!16838 Conc!6964) (right!17168 Conc!6964) (csize!14158 Int) (cheight!7175 Int)) (Leaf!10245 (xs!9854 IArray!13933) (csize!14159 Int)) (Empty!6964) )
))
(declare-datatypes ((BalanceConc!13744 0))(
  ( (BalanceConc!13745 (c!307918 Conc!6964)) )
))
(declare-fun input!6054 () BalanceConc!13744)

(declare-fun e!1202079 () Bool)

(declare-fun inv!27900 (BalanceConc!13744) Bool)

(assert (=> start!188654 (and (inv!27900 input!6054) e!1202079)))

(declare-fun e!1202085 () Bool)

(declare-fun inv!27901 (CacheUp!1166) Bool)

(assert (=> start!188654 (and (inv!27901 cacheUp!1015) e!1202085)))

(declare-fun b!1884423 () Bool)

(assert (=> b!1884423 (= e!1202083 e!1202087)))

(declare-fun b!1884430 () Bool)

(declare-fun e!1202093 () Bool)

(assert (=> b!1884430 (= e!1202085 e!1202093)))

(declare-fun mapIsEmpty!9051 () Bool)

(assert (=> mapIsEmpty!9051 mapRes!9050))

(declare-fun e!1202092 () Bool)

(assert (=> b!1884431 (= e!1202093 (and e!1202092 tp!536498))))

(declare-fun b!1884432 () Bool)

(declare-fun e!1202081 () Bool)

(assert (=> b!1884432 (= e!1202081 e!1202097)))

(declare-fun b!1884433 () Bool)

(declare-fun tp!536505 () Bool)

(assert (=> b!1884433 (= e!1202086 tp!536505)))

(declare-fun lt!723212 () Bool)

(declare-fun lt!723209 () (InoxSet Context!1966))

(declare-fun b!1884434 () Bool)

(declare-datatypes ((tuple3!1974 0))(
  ( (tuple3!1975 (_1!11450 Bool) (_2!11450 CacheUp!1166) (_3!1451 CacheDown!1162)) )
))
(declare-fun matchZipperSequenceMem!3 ((InoxSet Context!1966) BalanceConc!13744 Int CacheUp!1166 CacheDown!1162) tuple3!1974)

(assert (=> b!1884434 (= e!1202080 (not (= (_1!11450 (matchZipperSequenceMem!3 lt!723209 input!6054 0 cacheUp!1015 cacheDown!1134)) lt!723212)))))

(declare-fun lt!723214 () List!21032)

(declare-fun matchZipper!93 ((InoxSet Context!1966) List!21032) Bool)

(assert (=> b!1884434 (= lt!723212 (matchZipper!93 lt!723209 lt!723214))))

(declare-fun matchR!2475 (Regex!5129 List!21032) Bool)

(assert (=> b!1884434 (= lt!723212 (matchR!2475 r!13659 lt!723214))))

(declare-datatypes ((List!21033 0))(
  ( (Nil!20951) (Cons!20951 (h!26352 Context!1966) (t!175030 List!21033)) )
))
(declare-fun lt!723208 () List!21033)

(declare-datatypes ((Unit!35464 0))(
  ( (Unit!35465) )
))
(declare-fun lt!723213 () Unit!35464)

(declare-fun theoremZipperRegexEquiv!15 ((InoxSet Context!1966) List!21033 Regex!5129 List!21032) Unit!35464)

(assert (=> b!1884434 (= lt!723213 (theoremZipperRegexEquiv!15 lt!723209 lt!723208 r!13659 lt!723214))))

(declare-fun list!8560 (BalanceConc!13744) List!21032)

(assert (=> b!1884434 (= lt!723214 (list!8560 input!6054))))

(declare-fun toList!1015 ((InoxSet Context!1966)) List!21033)

(assert (=> b!1884434 (= lt!723208 (toList!1015 lt!723209))))

(declare-fun dropList!756 (BalanceConc!13744 Int) List!21032)

(declare-fun matchZipperSequence!19 ((InoxSet Context!1966) BalanceConc!13744 Int) Bool)

(assert (=> b!1884434 (= (matchZipper!93 lt!723209 (dropList!756 input!6054 0)) (matchZipperSequence!19 lt!723209 input!6054 0))))

(declare-fun lt!723210 () Unit!35464)

(declare-fun lemmaMatchZipperSequenceEquivalent!18 ((InoxSet Context!1966) BalanceConc!13744 Int) Unit!35464)

(assert (=> b!1884434 (= lt!723210 (lemmaMatchZipperSequenceEquivalent!18 lt!723209 input!6054 0))))

(declare-fun focus!254 (Regex!5129) (InoxSet Context!1966))

(assert (=> b!1884434 (= lt!723209 (focus!254 r!13659))))

(declare-fun b!1884435 () Bool)

(declare-fun tp!536509 () Bool)

(declare-fun inv!27902 (Conc!6964) Bool)

(assert (=> b!1884435 (= e!1202079 (and (inv!27902 (c!307918 input!6054)) tp!536509))))

(declare-fun b!1884436 () Bool)

(declare-fun e!1202090 () Bool)

(assert (=> b!1884436 (= e!1202090 e!1202081)))

(declare-fun b!1884437 () Bool)

(declare-fun tp_is_empty!8907 () Bool)

(assert (=> b!1884437 (= e!1202086 tp_is_empty!8907)))

(declare-fun b!1884438 () Bool)

(declare-fun tp!536515 () Bool)

(assert (=> b!1884438 (= e!1202095 (and tp!536515 mapRes!9050))))

(declare-fun condMapEmpty!9050 () Bool)

(declare-fun mapDefault!9050 () List!21030)

(assert (=> b!1884438 (= condMapEmpty!9050 (= (arr!2991 (_values!2233 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))) ((as const (Array (_ BitVec 32) List!21030)) mapDefault!9050)))))

(declare-fun b!1884439 () Bool)

(declare-fun lt!723215 () MutLongMap!1953)

(get-info :version)

(assert (=> b!1884439 (= e!1202092 (and e!1202082 ((_ is LongMap!1953) lt!723215)))))

(assert (=> b!1884439 (= lt!723215 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))

(declare-fun b!1884440 () Bool)

(declare-fun lt!723211 () MutLongMap!1954)

(assert (=> b!1884440 (= e!1202094 (and e!1202090 ((_ is LongMap!1954) lt!723211)))))

(assert (=> b!1884440 (= lt!723211 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))

(declare-fun b!1884441 () Bool)

(declare-fun tp!536501 () Bool)

(assert (=> b!1884441 (= e!1202096 (and tp!536501 mapRes!9051))))

(declare-fun condMapEmpty!9051 () Bool)

(declare-fun mapDefault!9051 () List!21031)

(assert (=> b!1884441 (= condMapEmpty!9051 (= (arr!2993 (_values!2234 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))) ((as const (Array (_ BitVec 32) List!21031)) mapDefault!9051)))))

(assert (= (and start!188654 res!841436) b!1884434))

(assert (= (and start!188654 ((_ is ElementMatch!5129) r!13659)) b!1884437))

(assert (= (and start!188654 ((_ is Concat!8982) r!13659)) b!1884422))

(assert (= (and start!188654 ((_ is Star!5129) r!13659)) b!1884433))

(assert (= (and start!188654 ((_ is Union!5129) r!13659)) b!1884425))

(assert (= (and b!1884441 condMapEmpty!9051) mapIsEmpty!9050))

(assert (= (and b!1884441 (not condMapEmpty!9051)) mapNonEmpty!9051))

(assert (= b!1884428 b!1884441))

(assert (= b!1884432 b!1884428))

(assert (= b!1884436 b!1884432))

(assert (= (and b!1884440 ((_ is LongMap!1954) (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))) b!1884436))

(assert (= b!1884424 b!1884440))

(assert (= (and b!1884423 ((_ is HashMap!1868) (cache!2249 cacheDown!1134))) b!1884424))

(assert (= start!188654 b!1884423))

(assert (= start!188654 b!1884435))

(assert (= (and b!1884438 condMapEmpty!9050) mapIsEmpty!9051))

(assert (= (and b!1884438 (not condMapEmpty!9050)) mapNonEmpty!9050))

(assert (= b!1884429 b!1884438))

(assert (= b!1884426 b!1884429))

(assert (= b!1884427 b!1884426))

(assert (= (and b!1884439 ((_ is LongMap!1953) (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))) b!1884427))

(assert (= b!1884431 b!1884439))

(assert (= (and b!1884430 ((_ is HashMap!1867) (cache!2248 cacheUp!1015))) b!1884431))

(assert (= start!188654 b!1884430))

(declare-fun m!2317711 () Bool)

(assert (=> b!1884428 m!2317711))

(declare-fun m!2317713 () Bool)

(assert (=> b!1884428 m!2317713))

(declare-fun m!2317715 () Bool)

(assert (=> b!1884429 m!2317715))

(declare-fun m!2317717 () Bool)

(assert (=> b!1884429 m!2317717))

(declare-fun m!2317719 () Bool)

(assert (=> mapNonEmpty!9051 m!2317719))

(declare-fun m!2317721 () Bool)

(assert (=> b!1884435 m!2317721))

(declare-fun m!2317723 () Bool)

(assert (=> start!188654 m!2317723))

(declare-fun m!2317725 () Bool)

(assert (=> start!188654 m!2317725))

(declare-fun m!2317727 () Bool)

(assert (=> start!188654 m!2317727))

(declare-fun m!2317729 () Bool)

(assert (=> start!188654 m!2317729))

(declare-fun m!2317731 () Bool)

(assert (=> b!1884434 m!2317731))

(declare-fun m!2317733 () Bool)

(assert (=> b!1884434 m!2317733))

(declare-fun m!2317735 () Bool)

(assert (=> b!1884434 m!2317735))

(declare-fun m!2317737 () Bool)

(assert (=> b!1884434 m!2317737))

(declare-fun m!2317739 () Bool)

(assert (=> b!1884434 m!2317739))

(declare-fun m!2317741 () Bool)

(assert (=> b!1884434 m!2317741))

(declare-fun m!2317743 () Bool)

(assert (=> b!1884434 m!2317743))

(declare-fun m!2317745 () Bool)

(assert (=> b!1884434 m!2317745))

(declare-fun m!2317747 () Bool)

(assert (=> b!1884434 m!2317747))

(assert (=> b!1884434 m!2317747))

(declare-fun m!2317749 () Bool)

(assert (=> b!1884434 m!2317749))

(declare-fun m!2317751 () Bool)

(assert (=> b!1884434 m!2317751))

(declare-fun m!2317753 () Bool)

(assert (=> mapNonEmpty!9050 m!2317753))

(check-sat (not start!188654) (not b!1884422) b_and!145179 (not b_next!53095) tp_is_empty!8907 (not b!1884441) (not b!1884425) (not b_next!53099) (not b_next!53093) (not b!1884433) (not mapNonEmpty!9051) b_and!145185 (not b!1884428) (not mapNonEmpty!9050) b_and!145181 (not b!1884435) (not b!1884429) (not b!1884438) (not b_next!53097) b_and!145183 (not b!1884434))
(check-sat b_and!145179 b_and!145181 (not b_next!53095) (not b_next!53099) (not b_next!53093) b_and!145185 (not b_next!53097) b_and!145183)
(get-model)

(declare-fun d!577677 () Bool)

(assert (=> d!577677 (= (array_inv!2147 (_keys!2250 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))) (bvsge (size!16637 (_keys!2250 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))) #b00000000000000000000000000000000))))

(assert (=> b!1884429 d!577677))

(declare-fun d!577679 () Bool)

(assert (=> d!577679 (= (array_inv!2149 (_values!2233 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))) (bvsge (size!16636 (_values!2233 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))) #b00000000000000000000000000000000))))

(assert (=> b!1884429 d!577679))

(declare-fun d!577681 () Bool)

(declare-fun lt!723222 () tuple3!1974)

(assert (=> d!577681 (= (_1!11450 lt!723222) (matchZipperSequence!19 lt!723209 input!6054 0))))

(declare-fun e!1202103 () tuple3!1974)

(assert (=> d!577681 (= lt!723222 e!1202103)))

(declare-fun c!307921 () Bool)

(declare-fun size!16639 (BalanceConc!13744) Int)

(assert (=> d!577681 (= c!307921 (= 0 (size!16639 input!6054)))))

(declare-fun e!1202102 () Bool)

(assert (=> d!577681 e!1202102))

(declare-fun res!841439 () Bool)

(assert (=> d!577681 (=> (not res!841439) (not e!1202102))))

(assert (=> d!577681 (= res!841439 (>= 0 0))))

(assert (=> d!577681 (= (matchZipperSequenceMem!3 lt!723209 input!6054 0 cacheUp!1015 cacheDown!1134) lt!723222)))

(declare-fun b!1884448 () Bool)

(assert (=> b!1884448 (= e!1202102 (<= 0 (size!16639 input!6054)))))

(declare-fun b!1884449 () Bool)

(declare-fun nullableZipper!42 ((InoxSet Context!1966)) Bool)

(assert (=> b!1884449 (= e!1202103 (tuple3!1975 (nullableZipper!42 lt!723209) cacheUp!1015 cacheDown!1134))))

(declare-fun b!1884450 () Bool)

(declare-fun lt!723223 () tuple3!1974)

(assert (=> b!1884450 (= e!1202103 (tuple3!1975 (_1!11450 lt!723223) (_2!11450 lt!723223) (_3!1451 lt!723223)))))

(declare-datatypes ((tuple3!1976 0))(
  ( (tuple3!1977 (_1!11451 (InoxSet Context!1966)) (_2!11451 CacheUp!1166) (_3!1452 CacheDown!1162)) )
))
(declare-fun lt!723224 () tuple3!1976)

(declare-fun derivationStepZipperMem!6 ((InoxSet Context!1966) C!10416 CacheUp!1166 CacheDown!1162) tuple3!1976)

(declare-fun apply!5538 (BalanceConc!13744 Int) C!10416)

(assert (=> b!1884450 (= lt!723224 (derivationStepZipperMem!6 lt!723209 (apply!5538 input!6054 0) cacheUp!1015 cacheDown!1134))))

(assert (=> b!1884450 (= lt!723223 (matchZipperSequenceMem!3 (_1!11451 lt!723224) input!6054 (+ 0 1) (_2!11451 lt!723224) (_3!1452 lt!723224)))))

(assert (= (and d!577681 res!841439) b!1884448))

(assert (= (and d!577681 c!307921) b!1884449))

(assert (= (and d!577681 (not c!307921)) b!1884450))

(assert (=> d!577681 m!2317739))

(declare-fun m!2317755 () Bool)

(assert (=> d!577681 m!2317755))

(assert (=> b!1884448 m!2317755))

(declare-fun m!2317757 () Bool)

(assert (=> b!1884449 m!2317757))

(declare-fun m!2317759 () Bool)

(assert (=> b!1884450 m!2317759))

(assert (=> b!1884450 m!2317759))

(declare-fun m!2317761 () Bool)

(assert (=> b!1884450 m!2317761))

(declare-fun m!2317763 () Bool)

(assert (=> b!1884450 m!2317763))

(assert (=> b!1884434 d!577681))

(declare-fun d!577683 () Bool)

(assert (=> d!577683 (= (matchR!2475 r!13659 lt!723214) (matchZipper!93 lt!723209 lt!723214))))

(declare-fun lt!723227 () Unit!35464)

(declare-fun choose!11803 ((InoxSet Context!1966) List!21033 Regex!5129 List!21032) Unit!35464)

(assert (=> d!577683 (= lt!723227 (choose!11803 lt!723209 lt!723208 r!13659 lt!723214))))

(assert (=> d!577683 (validRegex!2099 r!13659)))

(assert (=> d!577683 (= (theoremZipperRegexEquiv!15 lt!723209 lt!723208 r!13659 lt!723214) lt!723227)))

(declare-fun bs!412588 () Bool)

(assert (= bs!412588 d!577683))

(assert (=> bs!412588 m!2317737))

(assert (=> bs!412588 m!2317743))

(declare-fun m!2317765 () Bool)

(assert (=> bs!412588 m!2317765))

(assert (=> bs!412588 m!2317723))

(assert (=> b!1884434 d!577683))

(declare-fun d!577685 () Bool)

(declare-fun e!1202106 () Bool)

(assert (=> d!577685 e!1202106))

(declare-fun res!841443 () Bool)

(assert (=> d!577685 (=> (not res!841443) (not e!1202106))))

(assert (=> d!577685 (= res!841443 (validRegex!2099 r!13659))))

(assert (=> d!577685 (= (focus!254 r!13659) (store ((as const (Array Context!1966 Bool)) false) (Context!1967 (Cons!20947 r!13659 Nil!20947)) true))))

(declare-fun b!1884453 () Bool)

(declare-fun unfocusZipper!55 (List!21033) Regex!5129)

(assert (=> b!1884453 (= e!1202106 (= (unfocusZipper!55 (toList!1015 (store ((as const (Array Context!1966 Bool)) false) (Context!1967 (Cons!20947 r!13659 Nil!20947)) true))) r!13659))))

(assert (= (and d!577685 res!841443) b!1884453))

(assert (=> d!577685 m!2317723))

(declare-fun m!2317767 () Bool)

(assert (=> d!577685 m!2317767))

(assert (=> b!1884453 m!2317767))

(assert (=> b!1884453 m!2317767))

(declare-fun m!2317769 () Bool)

(assert (=> b!1884453 m!2317769))

(assert (=> b!1884453 m!2317769))

(declare-fun m!2317771 () Bool)

(assert (=> b!1884453 m!2317771))

(assert (=> b!1884434 d!577685))

(declare-fun b!1884482 () Bool)

(declare-fun res!841463 () Bool)

(declare-fun e!1202124 () Bool)

(assert (=> b!1884482 (=> (not res!841463) (not e!1202124))))

(declare-fun call!116719 () Bool)

(assert (=> b!1884482 (= res!841463 (not call!116719))))

(declare-fun b!1884483 () Bool)

(declare-fun res!841466 () Bool)

(declare-fun e!1202121 () Bool)

(assert (=> b!1884483 (=> res!841466 e!1202121)))

(assert (=> b!1884483 (= res!841466 (not ((_ is ElementMatch!5129) r!13659)))))

(declare-fun e!1202126 () Bool)

(assert (=> b!1884483 (= e!1202126 e!1202121)))

(declare-fun d!577687 () Bool)

(declare-fun e!1202122 () Bool)

(assert (=> d!577687 e!1202122))

(declare-fun c!307929 () Bool)

(assert (=> d!577687 (= c!307929 ((_ is EmptyExpr!5129) r!13659))))

(declare-fun lt!723230 () Bool)

(declare-fun e!1202123 () Bool)

(assert (=> d!577687 (= lt!723230 e!1202123)))

(declare-fun c!307928 () Bool)

(declare-fun isEmpty!12989 (List!21032) Bool)

(assert (=> d!577687 (= c!307928 (isEmpty!12989 lt!723214))))

(assert (=> d!577687 (validRegex!2099 r!13659)))

(assert (=> d!577687 (= (matchR!2475 r!13659 lt!723214) lt!723230)))

(declare-fun b!1884484 () Bool)

(declare-fun e!1202127 () Bool)

(assert (=> b!1884484 (= e!1202121 e!1202127)))

(declare-fun res!841467 () Bool)

(assert (=> b!1884484 (=> (not res!841467) (not e!1202127))))

(assert (=> b!1884484 (= res!841467 (not lt!723230))))

(declare-fun bm!116714 () Bool)

(assert (=> bm!116714 (= call!116719 (isEmpty!12989 lt!723214))))

(declare-fun b!1884485 () Bool)

(declare-fun nullable!1575 (Regex!5129) Bool)

(assert (=> b!1884485 (= e!1202123 (nullable!1575 r!13659))))

(declare-fun b!1884486 () Bool)

(declare-fun e!1202125 () Bool)

(assert (=> b!1884486 (= e!1202127 e!1202125)))

(declare-fun res!841465 () Bool)

(assert (=> b!1884486 (=> res!841465 e!1202125)))

(assert (=> b!1884486 (= res!841465 call!116719)))

(declare-fun b!1884487 () Bool)

(assert (=> b!1884487 (= e!1202126 (not lt!723230))))

(declare-fun b!1884488 () Bool)

(declare-fun res!841462 () Bool)

(assert (=> b!1884488 (=> (not res!841462) (not e!1202124))))

(declare-fun tail!2915 (List!21032) List!21032)

(assert (=> b!1884488 (= res!841462 (isEmpty!12989 (tail!2915 lt!723214)))))

(declare-fun b!1884489 () Bool)

(declare-fun derivativeStep!1334 (Regex!5129 C!10416) Regex!5129)

(declare-fun head!4386 (List!21032) C!10416)

(assert (=> b!1884489 (= e!1202123 (matchR!2475 (derivativeStep!1334 r!13659 (head!4386 lt!723214)) (tail!2915 lt!723214)))))

(declare-fun b!1884490 () Bool)

(assert (=> b!1884490 (= e!1202122 (= lt!723230 call!116719))))

(declare-fun b!1884491 () Bool)

(assert (=> b!1884491 (= e!1202122 e!1202126)))

(declare-fun c!307930 () Bool)

(assert (=> b!1884491 (= c!307930 ((_ is EmptyLang!5129) r!13659))))

(declare-fun b!1884492 () Bool)

(assert (=> b!1884492 (= e!1202125 (not (= (head!4386 lt!723214) (c!307917 r!13659))))))

(declare-fun b!1884493 () Bool)

(declare-fun res!841464 () Bool)

(assert (=> b!1884493 (=> res!841464 e!1202121)))

(assert (=> b!1884493 (= res!841464 e!1202124)))

(declare-fun res!841460 () Bool)

(assert (=> b!1884493 (=> (not res!841460) (not e!1202124))))

(assert (=> b!1884493 (= res!841460 lt!723230)))

(declare-fun b!1884494 () Bool)

(declare-fun res!841461 () Bool)

(assert (=> b!1884494 (=> res!841461 e!1202125)))

(assert (=> b!1884494 (= res!841461 (not (isEmpty!12989 (tail!2915 lt!723214))))))

(declare-fun b!1884495 () Bool)

(assert (=> b!1884495 (= e!1202124 (= (head!4386 lt!723214) (c!307917 r!13659)))))

(assert (= (and d!577687 c!307928) b!1884485))

(assert (= (and d!577687 (not c!307928)) b!1884489))

(assert (= (and d!577687 c!307929) b!1884490))

(assert (= (and d!577687 (not c!307929)) b!1884491))

(assert (= (and b!1884491 c!307930) b!1884487))

(assert (= (and b!1884491 (not c!307930)) b!1884483))

(assert (= (and b!1884483 (not res!841466)) b!1884493))

(assert (= (and b!1884493 res!841460) b!1884482))

(assert (= (and b!1884482 res!841463) b!1884488))

(assert (= (and b!1884488 res!841462) b!1884495))

(assert (= (and b!1884493 (not res!841464)) b!1884484))

(assert (= (and b!1884484 res!841467) b!1884486))

(assert (= (and b!1884486 (not res!841465)) b!1884494))

(assert (= (and b!1884494 (not res!841461)) b!1884492))

(assert (= (or b!1884490 b!1884482 b!1884486) bm!116714))

(declare-fun m!2317773 () Bool)

(assert (=> d!577687 m!2317773))

(assert (=> d!577687 m!2317723))

(declare-fun m!2317775 () Bool)

(assert (=> b!1884488 m!2317775))

(assert (=> b!1884488 m!2317775))

(declare-fun m!2317777 () Bool)

(assert (=> b!1884488 m!2317777))

(assert (=> b!1884494 m!2317775))

(assert (=> b!1884494 m!2317775))

(assert (=> b!1884494 m!2317777))

(declare-fun m!2317779 () Bool)

(assert (=> b!1884495 m!2317779))

(assert (=> b!1884489 m!2317779))

(assert (=> b!1884489 m!2317779))

(declare-fun m!2317781 () Bool)

(assert (=> b!1884489 m!2317781))

(assert (=> b!1884489 m!2317775))

(assert (=> b!1884489 m!2317781))

(assert (=> b!1884489 m!2317775))

(declare-fun m!2317783 () Bool)

(assert (=> b!1884489 m!2317783))

(declare-fun m!2317785 () Bool)

(assert (=> b!1884485 m!2317785))

(assert (=> bm!116714 m!2317773))

(assert (=> b!1884492 m!2317779))

(assert (=> b!1884434 d!577687))

(declare-fun d!577689 () Bool)

(declare-fun drop!1037 (List!21032 Int) List!21032)

(declare-fun list!8561 (Conc!6964) List!21032)

(assert (=> d!577689 (= (dropList!756 input!6054 0) (drop!1037 (list!8561 (c!307918 input!6054)) 0))))

(declare-fun bs!412589 () Bool)

(assert (= bs!412589 d!577689))

(declare-fun m!2317787 () Bool)

(assert (=> bs!412589 m!2317787))

(assert (=> bs!412589 m!2317787))

(declare-fun m!2317789 () Bool)

(assert (=> bs!412589 m!2317789))

(assert (=> b!1884434 d!577689))

(declare-fun d!577691 () Bool)

(assert (=> d!577691 (= (matchZipper!93 lt!723209 (dropList!756 input!6054 0)) (matchZipperSequence!19 lt!723209 input!6054 0))))

(declare-fun lt!723233 () Unit!35464)

(declare-fun choose!11804 ((InoxSet Context!1966) BalanceConc!13744 Int) Unit!35464)

(assert (=> d!577691 (= lt!723233 (choose!11804 lt!723209 input!6054 0))))

(declare-fun e!1202130 () Bool)

(assert (=> d!577691 e!1202130))

(declare-fun res!841470 () Bool)

(assert (=> d!577691 (=> (not res!841470) (not e!1202130))))

(assert (=> d!577691 (= res!841470 (>= 0 0))))

(assert (=> d!577691 (= (lemmaMatchZipperSequenceEquivalent!18 lt!723209 input!6054 0) lt!723233)))

(declare-fun b!1884498 () Bool)

(assert (=> b!1884498 (= e!1202130 (<= 0 (size!16639 input!6054)))))

(assert (= (and d!577691 res!841470) b!1884498))

(assert (=> d!577691 m!2317747))

(assert (=> d!577691 m!2317747))

(assert (=> d!577691 m!2317749))

(assert (=> d!577691 m!2317739))

(declare-fun m!2317791 () Bool)

(assert (=> d!577691 m!2317791))

(assert (=> b!1884498 m!2317755))

(assert (=> b!1884434 d!577691))

(declare-fun d!577693 () Bool)

(declare-fun c!307933 () Bool)

(assert (=> d!577693 (= c!307933 (= 0 (size!16639 input!6054)))))

(declare-fun e!1202133 () Bool)

(assert (=> d!577693 (= (matchZipperSequence!19 lt!723209 input!6054 0) e!1202133)))

(declare-fun b!1884503 () Bool)

(assert (=> b!1884503 (= e!1202133 (nullableZipper!42 lt!723209))))

(declare-fun b!1884504 () Bool)

(declare-fun derivationStepZipper!80 ((InoxSet Context!1966) C!10416) (InoxSet Context!1966))

(assert (=> b!1884504 (= e!1202133 (matchZipperSequence!19 (derivationStepZipper!80 lt!723209 (apply!5538 input!6054 0)) input!6054 (+ 0 1)))))

(assert (= (and d!577693 c!307933) b!1884503))

(assert (= (and d!577693 (not c!307933)) b!1884504))

(assert (=> d!577693 m!2317755))

(assert (=> b!1884503 m!2317757))

(assert (=> b!1884504 m!2317759))

(assert (=> b!1884504 m!2317759))

(declare-fun m!2317793 () Bool)

(assert (=> b!1884504 m!2317793))

(assert (=> b!1884504 m!2317793))

(declare-fun m!2317795 () Bool)

(assert (=> b!1884504 m!2317795))

(assert (=> b!1884434 d!577693))

(declare-fun d!577695 () Bool)

(declare-fun c!307936 () Bool)

(assert (=> d!577695 (= c!307936 (isEmpty!12989 (dropList!756 input!6054 0)))))

(declare-fun e!1202136 () Bool)

(assert (=> d!577695 (= (matchZipper!93 lt!723209 (dropList!756 input!6054 0)) e!1202136)))

(declare-fun b!1884509 () Bool)

(assert (=> b!1884509 (= e!1202136 (nullableZipper!42 lt!723209))))

(declare-fun b!1884510 () Bool)

(assert (=> b!1884510 (= e!1202136 (matchZipper!93 (derivationStepZipper!80 lt!723209 (head!4386 (dropList!756 input!6054 0))) (tail!2915 (dropList!756 input!6054 0))))))

(assert (= (and d!577695 c!307936) b!1884509))

(assert (= (and d!577695 (not c!307936)) b!1884510))

(assert (=> d!577695 m!2317747))

(declare-fun m!2317797 () Bool)

(assert (=> d!577695 m!2317797))

(assert (=> b!1884509 m!2317757))

(assert (=> b!1884510 m!2317747))

(declare-fun m!2317799 () Bool)

(assert (=> b!1884510 m!2317799))

(assert (=> b!1884510 m!2317799))

(declare-fun m!2317801 () Bool)

(assert (=> b!1884510 m!2317801))

(assert (=> b!1884510 m!2317747))

(declare-fun m!2317803 () Bool)

(assert (=> b!1884510 m!2317803))

(assert (=> b!1884510 m!2317801))

(assert (=> b!1884510 m!2317803))

(declare-fun m!2317805 () Bool)

(assert (=> b!1884510 m!2317805))

(assert (=> b!1884434 d!577695))

(declare-fun d!577697 () Bool)

(declare-fun e!1202139 () Bool)

(assert (=> d!577697 e!1202139))

(declare-fun res!841473 () Bool)

(assert (=> d!577697 (=> (not res!841473) (not e!1202139))))

(declare-fun lt!723236 () List!21033)

(declare-fun noDuplicate!272 (List!21033) Bool)

(assert (=> d!577697 (= res!841473 (noDuplicate!272 lt!723236))))

(declare-fun choose!11805 ((InoxSet Context!1966)) List!21033)

(assert (=> d!577697 (= lt!723236 (choose!11805 lt!723209))))

(assert (=> d!577697 (= (toList!1015 lt!723209) lt!723236)))

(declare-fun b!1884513 () Bool)

(declare-fun content!3118 (List!21033) (InoxSet Context!1966))

(assert (=> b!1884513 (= e!1202139 (= (content!3118 lt!723236) lt!723209))))

(assert (= (and d!577697 res!841473) b!1884513))

(declare-fun m!2317807 () Bool)

(assert (=> d!577697 m!2317807))

(declare-fun m!2317809 () Bool)

(assert (=> d!577697 m!2317809))

(declare-fun m!2317811 () Bool)

(assert (=> b!1884513 m!2317811))

(assert (=> b!1884434 d!577697))

(declare-fun d!577699 () Bool)

(assert (=> d!577699 (= (list!8560 input!6054) (list!8561 (c!307918 input!6054)))))

(declare-fun bs!412590 () Bool)

(assert (= bs!412590 d!577699))

(assert (=> bs!412590 m!2317787))

(assert (=> b!1884434 d!577699))

(declare-fun d!577701 () Bool)

(declare-fun c!307937 () Bool)

(assert (=> d!577701 (= c!307937 (isEmpty!12989 lt!723214))))

(declare-fun e!1202140 () Bool)

(assert (=> d!577701 (= (matchZipper!93 lt!723209 lt!723214) e!1202140)))

(declare-fun b!1884514 () Bool)

(assert (=> b!1884514 (= e!1202140 (nullableZipper!42 lt!723209))))

(declare-fun b!1884515 () Bool)

(assert (=> b!1884515 (= e!1202140 (matchZipper!93 (derivationStepZipper!80 lt!723209 (head!4386 lt!723214)) (tail!2915 lt!723214)))))

(assert (= (and d!577701 c!307937) b!1884514))

(assert (= (and d!577701 (not c!307937)) b!1884515))

(assert (=> d!577701 m!2317773))

(assert (=> b!1884514 m!2317757))

(assert (=> b!1884515 m!2317779))

(assert (=> b!1884515 m!2317779))

(declare-fun m!2317813 () Bool)

(assert (=> b!1884515 m!2317813))

(assert (=> b!1884515 m!2317775))

(assert (=> b!1884515 m!2317813))

(assert (=> b!1884515 m!2317775))

(declare-fun m!2317815 () Bool)

(assert (=> b!1884515 m!2317815))

(assert (=> b!1884434 d!577701))

(declare-fun b!1884534 () Bool)

(declare-fun e!1202158 () Bool)

(declare-fun e!1202156 () Bool)

(assert (=> b!1884534 (= e!1202158 e!1202156)))

(declare-fun res!841484 () Bool)

(assert (=> b!1884534 (=> (not res!841484) (not e!1202156))))

(declare-fun call!116727 () Bool)

(assert (=> b!1884534 (= res!841484 call!116727)))

(declare-fun b!1884535 () Bool)

(declare-fun e!1202160 () Bool)

(declare-fun e!1202159 () Bool)

(assert (=> b!1884535 (= e!1202160 e!1202159)))

(declare-fun c!307942 () Bool)

(assert (=> b!1884535 (= c!307942 ((_ is Union!5129) r!13659))))

(declare-fun b!1884536 () Bool)

(declare-fun e!1202157 () Bool)

(assert (=> b!1884536 (= e!1202160 e!1202157)))

(declare-fun res!841487 () Bool)

(assert (=> b!1884536 (= res!841487 (not (nullable!1575 (reg!5458 r!13659))))))

(assert (=> b!1884536 (=> (not res!841487) (not e!1202157))))

(declare-fun b!1884537 () Bool)

(declare-fun call!116728 () Bool)

(assert (=> b!1884537 (= e!1202157 call!116728)))

(declare-fun bm!116721 () Bool)

(declare-fun call!116726 () Bool)

(assert (=> bm!116721 (= call!116726 call!116728)))

(declare-fun b!1884538 () Bool)

(declare-fun res!841488 () Bool)

(assert (=> b!1884538 (=> res!841488 e!1202158)))

(assert (=> b!1884538 (= res!841488 (not ((_ is Concat!8982) r!13659)))))

(assert (=> b!1884538 (= e!1202159 e!1202158)))

(declare-fun b!1884539 () Bool)

(declare-fun e!1202155 () Bool)

(assert (=> b!1884539 (= e!1202155 e!1202160)))

(declare-fun c!307943 () Bool)

(assert (=> b!1884539 (= c!307943 ((_ is Star!5129) r!13659))))

(declare-fun d!577703 () Bool)

(declare-fun res!841486 () Bool)

(assert (=> d!577703 (=> res!841486 e!1202155)))

(assert (=> d!577703 (= res!841486 ((_ is ElementMatch!5129) r!13659))))

(assert (=> d!577703 (= (validRegex!2099 r!13659) e!1202155)))

(declare-fun bm!116722 () Bool)

(assert (=> bm!116722 (= call!116728 (validRegex!2099 (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))))))

(declare-fun bm!116723 () Bool)

(assert (=> bm!116723 (= call!116727 (validRegex!2099 (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))))))

(declare-fun b!1884540 () Bool)

(declare-fun res!841485 () Bool)

(declare-fun e!1202161 () Bool)

(assert (=> b!1884540 (=> (not res!841485) (not e!1202161))))

(assert (=> b!1884540 (= res!841485 call!116727)))

(assert (=> b!1884540 (= e!1202159 e!1202161)))

(declare-fun b!1884541 () Bool)

(assert (=> b!1884541 (= e!1202156 call!116726)))

(declare-fun b!1884542 () Bool)

(assert (=> b!1884542 (= e!1202161 call!116726)))

(assert (= (and d!577703 (not res!841486)) b!1884539))

(assert (= (and b!1884539 c!307943) b!1884536))

(assert (= (and b!1884539 (not c!307943)) b!1884535))

(assert (= (and b!1884536 res!841487) b!1884537))

(assert (= (and b!1884535 c!307942) b!1884540))

(assert (= (and b!1884535 (not c!307942)) b!1884538))

(assert (= (and b!1884540 res!841485) b!1884542))

(assert (= (and b!1884538 (not res!841488)) b!1884534))

(assert (= (and b!1884534 res!841484) b!1884541))

(assert (= (or b!1884540 b!1884534) bm!116723))

(assert (= (or b!1884542 b!1884541) bm!116721))

(assert (= (or b!1884537 bm!116721) bm!116722))

(declare-fun m!2317817 () Bool)

(assert (=> b!1884536 m!2317817))

(declare-fun m!2317819 () Bool)

(assert (=> bm!116722 m!2317819))

(declare-fun m!2317821 () Bool)

(assert (=> bm!116723 m!2317821))

(assert (=> start!188654 d!577703))

(declare-fun d!577705 () Bool)

(declare-fun res!841491 () Bool)

(declare-fun e!1202164 () Bool)

(assert (=> d!577705 (=> (not res!841491) (not e!1202164))))

(assert (=> d!577705 (= res!841491 ((_ is HashMap!1868) (cache!2249 cacheDown!1134)))))

(assert (=> d!577705 (= (inv!27899 cacheDown!1134) e!1202164)))

(declare-fun b!1884545 () Bool)

(declare-fun validCacheMapDown!180 (MutableMap!1868) Bool)

(assert (=> b!1884545 (= e!1202164 (validCacheMapDown!180 (cache!2249 cacheDown!1134)))))

(assert (= (and d!577705 res!841491) b!1884545))

(declare-fun m!2317823 () Bool)

(assert (=> b!1884545 m!2317823))

(assert (=> start!188654 d!577705))

(declare-fun d!577707 () Bool)

(declare-fun isBalanced!2208 (Conc!6964) Bool)

(assert (=> d!577707 (= (inv!27900 input!6054) (isBalanced!2208 (c!307918 input!6054)))))

(declare-fun bs!412591 () Bool)

(assert (= bs!412591 d!577707))

(declare-fun m!2317825 () Bool)

(assert (=> bs!412591 m!2317825))

(assert (=> start!188654 d!577707))

(declare-fun d!577709 () Bool)

(declare-fun res!841494 () Bool)

(declare-fun e!1202167 () Bool)

(assert (=> d!577709 (=> (not res!841494) (not e!1202167))))

(assert (=> d!577709 (= res!841494 ((_ is HashMap!1867) (cache!2248 cacheUp!1015)))))

(assert (=> d!577709 (= (inv!27901 cacheUp!1015) e!1202167)))

(declare-fun b!1884548 () Bool)

(declare-fun validCacheMapUp!182 (MutableMap!1867) Bool)

(assert (=> b!1884548 (= e!1202167 (validCacheMapUp!182 (cache!2248 cacheUp!1015)))))

(assert (= (and d!577709 res!841494) b!1884548))

(declare-fun m!2317827 () Bool)

(assert (=> b!1884548 m!2317827))

(assert (=> start!188654 d!577709))

(declare-fun d!577711 () Bool)

(assert (=> d!577711 (= (array_inv!2147 (_keys!2251 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))) (bvsge (size!16637 (_keys!2251 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))) #b00000000000000000000000000000000))))

(assert (=> b!1884428 d!577711))

(declare-fun d!577713 () Bool)

(assert (=> d!577713 (= (array_inv!2148 (_values!2234 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))) (bvsge (size!16638 (_values!2234 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))) #b00000000000000000000000000000000))))

(assert (=> b!1884428 d!577713))

(declare-fun d!577715 () Bool)

(declare-fun c!307946 () Bool)

(assert (=> d!577715 (= c!307946 ((_ is Node!6964) (c!307918 input!6054)))))

(declare-fun e!1202172 () Bool)

(assert (=> d!577715 (= (inv!27902 (c!307918 input!6054)) e!1202172)))

(declare-fun b!1884555 () Bool)

(declare-fun inv!27903 (Conc!6964) Bool)

(assert (=> b!1884555 (= e!1202172 (inv!27903 (c!307918 input!6054)))))

(declare-fun b!1884556 () Bool)

(declare-fun e!1202173 () Bool)

(assert (=> b!1884556 (= e!1202172 e!1202173)))

(declare-fun res!841497 () Bool)

(assert (=> b!1884556 (= res!841497 (not ((_ is Leaf!10245) (c!307918 input!6054))))))

(assert (=> b!1884556 (=> res!841497 e!1202173)))

(declare-fun b!1884557 () Bool)

(declare-fun inv!27904 (Conc!6964) Bool)

(assert (=> b!1884557 (= e!1202173 (inv!27904 (c!307918 input!6054)))))

(assert (= (and d!577715 c!307946) b!1884555))

(assert (= (and d!577715 (not c!307946)) b!1884556))

(assert (= (and b!1884556 (not res!841497)) b!1884557))

(declare-fun m!2317829 () Bool)

(assert (=> b!1884555 m!2317829))

(declare-fun m!2317831 () Bool)

(assert (=> b!1884557 m!2317831))

(assert (=> b!1884435 d!577715))

(declare-fun setNonEmpty!11613 () Bool)

(declare-fun e!1202189 () Bool)

(declare-fun setElem!11613 () Context!1966)

(declare-fun setRes!11614 () Bool)

(declare-fun tp!536535 () Bool)

(declare-fun inv!27905 (Context!1966) Bool)

(assert (=> setNonEmpty!11613 (= setRes!11614 (and tp!536535 (inv!27905 setElem!11613) e!1202189))))

(declare-fun mapValue!9054 () List!21030)

(declare-fun setRest!11613 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11613 (= (_2!11447 (h!26349 mapValue!9054)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11613 true) setRest!11613))))

(declare-fun e!1202191 () Bool)

(declare-fun e!1202190 () Bool)

(declare-fun tp!536540 () Bool)

(declare-fun b!1884572 () Bool)

(assert (=> b!1884572 (= e!1202190 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 mapValue!9054)))) e!1202191 tp_is_empty!8907 setRes!11614 tp!536540))))

(declare-fun condSetEmpty!11614 () Bool)

(assert (=> b!1884572 (= condSetEmpty!11614 (= (_2!11447 (h!26349 mapValue!9054)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun condMapEmpty!9054 () Bool)

(declare-fun mapDefault!9054 () List!21030)

(assert (=> mapNonEmpty!9050 (= condMapEmpty!9054 (= mapRest!9051 ((as const (Array (_ BitVec 32) List!21030)) mapDefault!9054)))))

(declare-fun e!1202186 () Bool)

(declare-fun mapRes!9054 () Bool)

(assert (=> mapNonEmpty!9050 (= tp!536508 (and e!1202186 mapRes!9054))))

(declare-fun b!1884573 () Bool)

(declare-fun tp!536534 () Bool)

(assert (=> b!1884573 (= e!1202189 tp!536534)))

(declare-fun setRes!11613 () Bool)

(declare-fun tp!536542 () Bool)

(declare-fun e!1202187 () Bool)

(declare-fun b!1884574 () Bool)

(assert (=> b!1884574 (= e!1202186 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 mapDefault!9054)))) e!1202187 tp_is_empty!8907 setRes!11613 tp!536542))))

(declare-fun condSetEmpty!11613 () Bool)

(assert (=> b!1884574 (= condSetEmpty!11613 (= (_2!11447 (h!26349 mapDefault!9054)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setNonEmpty!11614 () Bool)

(declare-fun tp!536541 () Bool)

(declare-fun setElem!11614 () Context!1966)

(declare-fun e!1202188 () Bool)

(assert (=> setNonEmpty!11614 (= setRes!11613 (and tp!536541 (inv!27905 setElem!11614) e!1202188))))

(declare-fun setRest!11614 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11614 (= (_2!11447 (h!26349 mapDefault!9054)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11614 true) setRest!11614))))

(declare-fun b!1884575 () Bool)

(declare-fun tp!536539 () Bool)

(assert (=> b!1884575 (= e!1202187 tp!536539)))

(declare-fun setIsEmpty!11613 () Bool)

(assert (=> setIsEmpty!11613 setRes!11613))

(declare-fun mapNonEmpty!9054 () Bool)

(declare-fun tp!536536 () Bool)

(assert (=> mapNonEmpty!9054 (= mapRes!9054 (and tp!536536 e!1202190))))

(declare-fun mapKey!9054 () (_ BitVec 32))

(declare-fun mapRest!9054 () (Array (_ BitVec 32) List!21030))

(assert (=> mapNonEmpty!9054 (= mapRest!9051 (store mapRest!9054 mapKey!9054 mapValue!9054))))

(declare-fun b!1884576 () Bool)

(declare-fun tp!536537 () Bool)

(assert (=> b!1884576 (= e!1202191 tp!536537)))

(declare-fun mapIsEmpty!9054 () Bool)

(assert (=> mapIsEmpty!9054 mapRes!9054))

(declare-fun b!1884577 () Bool)

(declare-fun tp!536538 () Bool)

(assert (=> b!1884577 (= e!1202188 tp!536538)))

(declare-fun setIsEmpty!11614 () Bool)

(assert (=> setIsEmpty!11614 setRes!11614))

(assert (= (and mapNonEmpty!9050 condMapEmpty!9054) mapIsEmpty!9054))

(assert (= (and mapNonEmpty!9050 (not condMapEmpty!9054)) mapNonEmpty!9054))

(assert (= b!1884572 b!1884576))

(assert (= (and b!1884572 condSetEmpty!11614) setIsEmpty!11614))

(assert (= (and b!1884572 (not condSetEmpty!11614)) setNonEmpty!11613))

(assert (= setNonEmpty!11613 b!1884573))

(assert (= (and mapNonEmpty!9054 ((_ is Cons!20948) mapValue!9054)) b!1884572))

(assert (= b!1884574 b!1884575))

(assert (= (and b!1884574 condSetEmpty!11613) setIsEmpty!11613))

(assert (= (and b!1884574 (not condSetEmpty!11613)) setNonEmpty!11614))

(assert (= setNonEmpty!11614 b!1884577))

(assert (= (and mapNonEmpty!9050 ((_ is Cons!20948) mapDefault!9054)) b!1884574))

(declare-fun m!2317833 () Bool)

(assert (=> b!1884574 m!2317833))

(declare-fun m!2317835 () Bool)

(assert (=> setNonEmpty!11614 m!2317835))

(declare-fun m!2317837 () Bool)

(assert (=> mapNonEmpty!9054 m!2317837))

(declare-fun m!2317839 () Bool)

(assert (=> setNonEmpty!11613 m!2317839))

(declare-fun m!2317841 () Bool)

(assert (=> b!1884572 m!2317841))

(declare-fun e!1202200 () Bool)

(assert (=> mapNonEmpty!9050 (= tp!536504 e!1202200)))

(declare-fun setIsEmpty!11617 () Bool)

(declare-fun setRes!11617 () Bool)

(assert (=> setIsEmpty!11617 setRes!11617))

(declare-fun b!1884586 () Bool)

(declare-fun e!1202198 () Bool)

(declare-fun tp!536553 () Bool)

(assert (=> b!1884586 (= e!1202198 tp!536553)))

(declare-fun setElem!11617 () Context!1966)

(declare-fun tp!536551 () Bool)

(declare-fun setNonEmpty!11617 () Bool)

(declare-fun e!1202199 () Bool)

(assert (=> setNonEmpty!11617 (= setRes!11617 (and tp!536551 (inv!27905 setElem!11617) e!1202199))))

(declare-fun setRest!11617 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11617 (= (_2!11447 (h!26349 mapValue!9051)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11617 true) setRest!11617))))

(declare-fun b!1884587 () Bool)

(declare-fun tp!536554 () Bool)

(assert (=> b!1884587 (= e!1202200 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 mapValue!9051)))) e!1202198 tp_is_empty!8907 setRes!11617 tp!536554))))

(declare-fun condSetEmpty!11617 () Bool)

(assert (=> b!1884587 (= condSetEmpty!11617 (= (_2!11447 (h!26349 mapValue!9051)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884588 () Bool)

(declare-fun tp!536552 () Bool)

(assert (=> b!1884588 (= e!1202199 tp!536552)))

(assert (= b!1884587 b!1884586))

(assert (= (and b!1884587 condSetEmpty!11617) setIsEmpty!11617))

(assert (= (and b!1884587 (not condSetEmpty!11617)) setNonEmpty!11617))

(assert (= setNonEmpty!11617 b!1884588))

(assert (= (and mapNonEmpty!9050 ((_ is Cons!20948) mapValue!9051)) b!1884587))

(declare-fun m!2317843 () Bool)

(assert (=> setNonEmpty!11617 m!2317843))

(declare-fun m!2317845 () Bool)

(assert (=> b!1884587 m!2317845))

(declare-fun e!1202203 () Bool)

(assert (=> b!1884429 (= tp!536507 e!1202203)))

(declare-fun setIsEmpty!11618 () Bool)

(declare-fun setRes!11618 () Bool)

(assert (=> setIsEmpty!11618 setRes!11618))

(declare-fun b!1884589 () Bool)

(declare-fun e!1202201 () Bool)

(declare-fun tp!536557 () Bool)

(assert (=> b!1884589 (= e!1202201 tp!536557)))

(declare-fun setElem!11618 () Context!1966)

(declare-fun e!1202202 () Bool)

(declare-fun tp!536555 () Bool)

(declare-fun setNonEmpty!11618 () Bool)

(assert (=> setNonEmpty!11618 (= setRes!11618 (and tp!536555 (inv!27905 setElem!11618) e!1202202))))

(declare-fun setRest!11618 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11618 (= (_2!11447 (h!26349 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11618 true) setRest!11618))))

(declare-fun tp!536558 () Bool)

(declare-fun b!1884590 () Bool)

(assert (=> b!1884590 (= e!1202203 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))))) e!1202201 tp_is_empty!8907 setRes!11618 tp!536558))))

(declare-fun condSetEmpty!11618 () Bool)

(assert (=> b!1884590 (= condSetEmpty!11618 (= (_2!11447 (h!26349 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884591 () Bool)

(declare-fun tp!536556 () Bool)

(assert (=> b!1884591 (= e!1202202 tp!536556)))

(assert (= b!1884590 b!1884589))

(assert (= (and b!1884590 condSetEmpty!11618) setIsEmpty!11618))

(assert (= (and b!1884590 (not condSetEmpty!11618)) setNonEmpty!11618))

(assert (= setNonEmpty!11618 b!1884591))

(assert (= (and b!1884429 ((_ is Cons!20948) (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))) b!1884590))

(declare-fun m!2317847 () Bool)

(assert (=> setNonEmpty!11618 m!2317847))

(declare-fun m!2317849 () Bool)

(assert (=> b!1884590 m!2317849))

(declare-fun e!1202206 () Bool)

(assert (=> b!1884429 (= tp!536502 e!1202206)))

(declare-fun setIsEmpty!11619 () Bool)

(declare-fun setRes!11619 () Bool)

(assert (=> setIsEmpty!11619 setRes!11619))

(declare-fun b!1884592 () Bool)

(declare-fun e!1202204 () Bool)

(declare-fun tp!536561 () Bool)

(assert (=> b!1884592 (= e!1202204 tp!536561)))

(declare-fun e!1202205 () Bool)

(declare-fun tp!536559 () Bool)

(declare-fun setNonEmpty!11619 () Bool)

(declare-fun setElem!11619 () Context!1966)

(assert (=> setNonEmpty!11619 (= setRes!11619 (and tp!536559 (inv!27905 setElem!11619) e!1202205))))

(declare-fun setRest!11619 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11619 (= (_2!11447 (h!26349 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11619 true) setRest!11619))))

(declare-fun b!1884593 () Bool)

(declare-fun tp!536562 () Bool)

(assert (=> b!1884593 (= e!1202206 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))))) e!1202204 tp_is_empty!8907 setRes!11619 tp!536562))))

(declare-fun condSetEmpty!11619 () Bool)

(assert (=> b!1884593 (= condSetEmpty!11619 (= (_2!11447 (h!26349 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884594 () Bool)

(declare-fun tp!536560 () Bool)

(assert (=> b!1884594 (= e!1202205 tp!536560)))

(assert (= b!1884593 b!1884592))

(assert (= (and b!1884593 condSetEmpty!11619) setIsEmpty!11619))

(assert (= (and b!1884593 (not condSetEmpty!11619)) setNonEmpty!11619))

(assert (= setNonEmpty!11619 b!1884594))

(assert (= (and b!1884429 ((_ is Cons!20948) (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))) b!1884593))

(declare-fun m!2317851 () Bool)

(assert (=> setNonEmpty!11619 m!2317851))

(declare-fun m!2317853 () Bool)

(assert (=> b!1884593 m!2317853))

(declare-fun e!1202215 () Bool)

(assert (=> b!1884428 (= tp!536510 e!1202215)))

(declare-fun b!1884603 () Bool)

(declare-fun e!1202214 () Bool)

(declare-fun tp!536574 () Bool)

(assert (=> b!1884603 (= e!1202214 tp!536574)))

(declare-fun tp!536577 () Bool)

(declare-fun b!1884604 () Bool)

(declare-fun setRes!11622 () Bool)

(declare-fun tp!536575 () Bool)

(assert (=> b!1884604 (= e!1202215 (and tp!536575 (inv!27905 (_2!11448 (_1!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))))) e!1202214 tp_is_empty!8907 setRes!11622 tp!536577))))

(declare-fun condSetEmpty!11622 () Bool)

(assert (=> b!1884604 (= condSetEmpty!11622 (= (_2!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884605 () Bool)

(declare-fun e!1202213 () Bool)

(declare-fun tp!536576 () Bool)

(assert (=> b!1884605 (= e!1202213 tp!536576)))

(declare-fun setIsEmpty!11622 () Bool)

(assert (=> setIsEmpty!11622 setRes!11622))

(declare-fun setNonEmpty!11622 () Bool)

(declare-fun tp!536573 () Bool)

(declare-fun setElem!11622 () Context!1966)

(assert (=> setNonEmpty!11622 (= setRes!11622 (and tp!536573 (inv!27905 setElem!11622) e!1202213))))

(declare-fun setRest!11622 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11622 (= (_2!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11622 true) setRest!11622))))

(assert (= b!1884604 b!1884603))

(assert (= (and b!1884604 condSetEmpty!11622) setIsEmpty!11622))

(assert (= (and b!1884604 (not condSetEmpty!11622)) setNonEmpty!11622))

(assert (= setNonEmpty!11622 b!1884605))

(assert (= (and b!1884428 ((_ is Cons!20949) (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))) b!1884604))

(declare-fun m!2317855 () Bool)

(assert (=> b!1884604 m!2317855))

(declare-fun m!2317857 () Bool)

(assert (=> setNonEmpty!11622 m!2317857))

(declare-fun e!1202218 () Bool)

(assert (=> b!1884428 (= tp!536496 e!1202218)))

(declare-fun b!1884606 () Bool)

(declare-fun e!1202217 () Bool)

(declare-fun tp!536579 () Bool)

(assert (=> b!1884606 (= e!1202217 tp!536579)))

(declare-fun tp!536582 () Bool)

(declare-fun setRes!11623 () Bool)

(declare-fun b!1884607 () Bool)

(declare-fun tp!536580 () Bool)

(assert (=> b!1884607 (= e!1202218 (and tp!536580 (inv!27905 (_2!11448 (_1!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))))) e!1202217 tp_is_empty!8907 setRes!11623 tp!536582))))

(declare-fun condSetEmpty!11623 () Bool)

(assert (=> b!1884607 (= condSetEmpty!11623 (= (_2!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884608 () Bool)

(declare-fun e!1202216 () Bool)

(declare-fun tp!536581 () Bool)

(assert (=> b!1884608 (= e!1202216 tp!536581)))

(declare-fun setIsEmpty!11623 () Bool)

(assert (=> setIsEmpty!11623 setRes!11623))

(declare-fun tp!536578 () Bool)

(declare-fun setElem!11623 () Context!1966)

(declare-fun setNonEmpty!11623 () Bool)

(assert (=> setNonEmpty!11623 (= setRes!11623 (and tp!536578 (inv!27905 setElem!11623) e!1202216))))

(declare-fun setRest!11623 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11623 (= (_2!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11623 true) setRest!11623))))

(assert (= b!1884607 b!1884606))

(assert (= (and b!1884607 condSetEmpty!11623) setIsEmpty!11623))

(assert (= (and b!1884607 (not condSetEmpty!11623)) setNonEmpty!11623))

(assert (= setNonEmpty!11623 b!1884608))

(assert (= (and b!1884428 ((_ is Cons!20949) (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))) b!1884607))

(declare-fun m!2317859 () Bool)

(assert (=> b!1884607 m!2317859))

(declare-fun m!2317861 () Bool)

(assert (=> setNonEmpty!11623 m!2317861))

(declare-fun b!1884621 () Bool)

(declare-fun e!1202221 () Bool)

(declare-fun tp!536597 () Bool)

(assert (=> b!1884621 (= e!1202221 tp!536597)))

(declare-fun b!1884619 () Bool)

(assert (=> b!1884619 (= e!1202221 tp_is_empty!8907)))

(declare-fun b!1884622 () Bool)

(declare-fun tp!536595 () Bool)

(declare-fun tp!536593 () Bool)

(assert (=> b!1884622 (= e!1202221 (and tp!536595 tp!536593))))

(assert (=> b!1884433 (= tp!536505 e!1202221)))

(declare-fun b!1884620 () Bool)

(declare-fun tp!536596 () Bool)

(declare-fun tp!536594 () Bool)

(assert (=> b!1884620 (= e!1202221 (and tp!536596 tp!536594))))

(assert (= (and b!1884433 ((_ is ElementMatch!5129) (reg!5458 r!13659))) b!1884619))

(assert (= (and b!1884433 ((_ is Concat!8982) (reg!5458 r!13659))) b!1884620))

(assert (= (and b!1884433 ((_ is Star!5129) (reg!5458 r!13659))) b!1884621))

(assert (= (and b!1884433 ((_ is Union!5129) (reg!5458 r!13659))) b!1884622))

(declare-fun e!1202224 () Bool)

(assert (=> b!1884438 (= tp!536515 e!1202224)))

(declare-fun setIsEmpty!11624 () Bool)

(declare-fun setRes!11624 () Bool)

(assert (=> setIsEmpty!11624 setRes!11624))

(declare-fun b!1884623 () Bool)

(declare-fun e!1202222 () Bool)

(declare-fun tp!536600 () Bool)

(assert (=> b!1884623 (= e!1202222 tp!536600)))

(declare-fun setElem!11624 () Context!1966)

(declare-fun tp!536598 () Bool)

(declare-fun e!1202223 () Bool)

(declare-fun setNonEmpty!11624 () Bool)

(assert (=> setNonEmpty!11624 (= setRes!11624 (and tp!536598 (inv!27905 setElem!11624) e!1202223))))

(declare-fun setRest!11624 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11624 (= (_2!11447 (h!26349 mapDefault!9050)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11624 true) setRest!11624))))

(declare-fun tp!536601 () Bool)

(declare-fun b!1884624 () Bool)

(assert (=> b!1884624 (= e!1202224 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 mapDefault!9050)))) e!1202222 tp_is_empty!8907 setRes!11624 tp!536601))))

(declare-fun condSetEmpty!11624 () Bool)

(assert (=> b!1884624 (= condSetEmpty!11624 (= (_2!11447 (h!26349 mapDefault!9050)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884625 () Bool)

(declare-fun tp!536599 () Bool)

(assert (=> b!1884625 (= e!1202223 tp!536599)))

(assert (= b!1884624 b!1884623))

(assert (= (and b!1884624 condSetEmpty!11624) setIsEmpty!11624))

(assert (= (and b!1884624 (not condSetEmpty!11624)) setNonEmpty!11624))

(assert (= setNonEmpty!11624 b!1884625))

(assert (= (and b!1884438 ((_ is Cons!20948) mapDefault!9050)) b!1884624))

(declare-fun m!2317863 () Bool)

(assert (=> setNonEmpty!11624 m!2317863))

(declare-fun m!2317865 () Bool)

(assert (=> b!1884624 m!2317865))

(declare-fun b!1884628 () Bool)

(declare-fun e!1202225 () Bool)

(declare-fun tp!536606 () Bool)

(assert (=> b!1884628 (= e!1202225 tp!536606)))

(declare-fun b!1884626 () Bool)

(assert (=> b!1884626 (= e!1202225 tp_is_empty!8907)))

(declare-fun b!1884629 () Bool)

(declare-fun tp!536604 () Bool)

(declare-fun tp!536602 () Bool)

(assert (=> b!1884629 (= e!1202225 (and tp!536604 tp!536602))))

(assert (=> b!1884425 (= tp!536499 e!1202225)))

(declare-fun b!1884627 () Bool)

(declare-fun tp!536605 () Bool)

(declare-fun tp!536603 () Bool)

(assert (=> b!1884627 (= e!1202225 (and tp!536605 tp!536603))))

(assert (= (and b!1884425 ((_ is ElementMatch!5129) (regOne!10771 r!13659))) b!1884626))

(assert (= (and b!1884425 ((_ is Concat!8982) (regOne!10771 r!13659))) b!1884627))

(assert (= (and b!1884425 ((_ is Star!5129) (regOne!10771 r!13659))) b!1884628))

(assert (= (and b!1884425 ((_ is Union!5129) (regOne!10771 r!13659))) b!1884629))

(declare-fun b!1884632 () Bool)

(declare-fun e!1202226 () Bool)

(declare-fun tp!536611 () Bool)

(assert (=> b!1884632 (= e!1202226 tp!536611)))

(declare-fun b!1884630 () Bool)

(assert (=> b!1884630 (= e!1202226 tp_is_empty!8907)))

(declare-fun b!1884633 () Bool)

(declare-fun tp!536609 () Bool)

(declare-fun tp!536607 () Bool)

(assert (=> b!1884633 (= e!1202226 (and tp!536609 tp!536607))))

(assert (=> b!1884425 (= tp!536497 e!1202226)))

(declare-fun b!1884631 () Bool)

(declare-fun tp!536610 () Bool)

(declare-fun tp!536608 () Bool)

(assert (=> b!1884631 (= e!1202226 (and tp!536610 tp!536608))))

(assert (= (and b!1884425 ((_ is ElementMatch!5129) (regTwo!10771 r!13659))) b!1884630))

(assert (= (and b!1884425 ((_ is Concat!8982) (regTwo!10771 r!13659))) b!1884631))

(assert (= (and b!1884425 ((_ is Star!5129) (regTwo!10771 r!13659))) b!1884632))

(assert (= (and b!1884425 ((_ is Union!5129) (regTwo!10771 r!13659))) b!1884633))

(declare-fun tp!536643 () Bool)

(declare-fun setNonEmpty!11629 () Bool)

(declare-fun e!1202241 () Bool)

(declare-fun setElem!11630 () Context!1966)

(declare-fun setRes!11629 () Bool)

(assert (=> setNonEmpty!11629 (= setRes!11629 (and tp!536643 (inv!27905 setElem!11630) e!1202241))))

(declare-fun mapDefault!9057 () List!21031)

(declare-fun setRest!11630 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11629 (= (_2!11449 (h!26350 mapDefault!9057)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11630 true) setRest!11630))))

(declare-fun setRes!11630 () Bool)

(declare-fun tp!536635 () Bool)

(declare-fun setNonEmpty!11630 () Bool)

(declare-fun setElem!11629 () Context!1966)

(declare-fun e!1202242 () Bool)

(assert (=> setNonEmpty!11630 (= setRes!11630 (and tp!536635 (inv!27905 setElem!11629) e!1202242))))

(declare-fun mapValue!9057 () List!21031)

(declare-fun setRest!11629 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11630 (= (_2!11449 (h!26350 mapValue!9057)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11629 true) setRest!11629))))

(declare-fun b!1884648 () Bool)

(declare-fun e!1202239 () Bool)

(declare-fun tp!536634 () Bool)

(assert (=> b!1884648 (= e!1202239 tp!536634)))

(declare-fun setIsEmpty!11629 () Bool)

(assert (=> setIsEmpty!11629 setRes!11630))

(declare-fun e!1202243 () Bool)

(declare-fun tp!536644 () Bool)

(declare-fun b!1884649 () Bool)

(declare-fun tp!536641 () Bool)

(assert (=> b!1884649 (= e!1202243 (and tp!536644 (inv!27905 (_2!11448 (_1!11449 (h!26350 mapValue!9057)))) e!1202239 tp_is_empty!8907 setRes!11630 tp!536641))))

(declare-fun condSetEmpty!11630 () Bool)

(assert (=> b!1884649 (= condSetEmpty!11630 (= (_2!11449 (h!26350 mapValue!9057)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884650 () Bool)

(declare-fun tp!536640 () Bool)

(assert (=> b!1884650 (= e!1202241 tp!536640)))

(declare-fun mapNonEmpty!9057 () Bool)

(declare-fun mapRes!9057 () Bool)

(declare-fun tp!536637 () Bool)

(assert (=> mapNonEmpty!9057 (= mapRes!9057 (and tp!536637 e!1202243))))

(declare-fun mapRest!9057 () (Array (_ BitVec 32) List!21031))

(declare-fun mapKey!9057 () (_ BitVec 32))

(assert (=> mapNonEmpty!9057 (= mapRest!9050 (store mapRest!9057 mapKey!9057 mapValue!9057))))

(declare-fun condMapEmpty!9057 () Bool)

(assert (=> mapNonEmpty!9051 (= condMapEmpty!9057 (= mapRest!9050 ((as const (Array (_ BitVec 32) List!21031)) mapDefault!9057)))))

(declare-fun e!1202240 () Bool)

(assert (=> mapNonEmpty!9051 (= tp!536514 (and e!1202240 mapRes!9057))))

(declare-fun mapIsEmpty!9057 () Bool)

(assert (=> mapIsEmpty!9057 mapRes!9057))

(declare-fun setIsEmpty!11630 () Bool)

(assert (=> setIsEmpty!11630 setRes!11629))

(declare-fun b!1884651 () Bool)

(declare-fun tp!536638 () Bool)

(assert (=> b!1884651 (= e!1202242 tp!536638)))

(declare-fun e!1202244 () Bool)

(declare-fun tp!536639 () Bool)

(declare-fun b!1884652 () Bool)

(declare-fun tp!536642 () Bool)

(assert (=> b!1884652 (= e!1202240 (and tp!536639 (inv!27905 (_2!11448 (_1!11449 (h!26350 mapDefault!9057)))) e!1202244 tp_is_empty!8907 setRes!11629 tp!536642))))

(declare-fun condSetEmpty!11629 () Bool)

(assert (=> b!1884652 (= condSetEmpty!11629 (= (_2!11449 (h!26350 mapDefault!9057)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884653 () Bool)

(declare-fun tp!536636 () Bool)

(assert (=> b!1884653 (= e!1202244 tp!536636)))

(assert (= (and mapNonEmpty!9051 condMapEmpty!9057) mapIsEmpty!9057))

(assert (= (and mapNonEmpty!9051 (not condMapEmpty!9057)) mapNonEmpty!9057))

(assert (= b!1884649 b!1884648))

(assert (= (and b!1884649 condSetEmpty!11630) setIsEmpty!11629))

(assert (= (and b!1884649 (not condSetEmpty!11630)) setNonEmpty!11630))

(assert (= setNonEmpty!11630 b!1884651))

(assert (= (and mapNonEmpty!9057 ((_ is Cons!20949) mapValue!9057)) b!1884649))

(assert (= b!1884652 b!1884653))

(assert (= (and b!1884652 condSetEmpty!11629) setIsEmpty!11630))

(assert (= (and b!1884652 (not condSetEmpty!11629)) setNonEmpty!11629))

(assert (= setNonEmpty!11629 b!1884650))

(assert (= (and mapNonEmpty!9051 ((_ is Cons!20949) mapDefault!9057)) b!1884652))

(declare-fun m!2317867 () Bool)

(assert (=> mapNonEmpty!9057 m!2317867))

(declare-fun m!2317869 () Bool)

(assert (=> b!1884652 m!2317869))

(declare-fun m!2317871 () Bool)

(assert (=> setNonEmpty!11629 m!2317871))

(declare-fun m!2317873 () Bool)

(assert (=> setNonEmpty!11630 m!2317873))

(declare-fun m!2317875 () Bool)

(assert (=> b!1884649 m!2317875))

(declare-fun e!1202247 () Bool)

(assert (=> mapNonEmpty!9051 (= tp!536513 e!1202247)))

(declare-fun b!1884654 () Bool)

(declare-fun e!1202246 () Bool)

(declare-fun tp!536646 () Bool)

(assert (=> b!1884654 (= e!1202246 tp!536646)))

(declare-fun b!1884655 () Bool)

(declare-fun tp!536647 () Bool)

(declare-fun tp!536649 () Bool)

(declare-fun setRes!11631 () Bool)

(assert (=> b!1884655 (= e!1202247 (and tp!536647 (inv!27905 (_2!11448 (_1!11449 (h!26350 mapValue!9050)))) e!1202246 tp_is_empty!8907 setRes!11631 tp!536649))))

(declare-fun condSetEmpty!11631 () Bool)

(assert (=> b!1884655 (= condSetEmpty!11631 (= (_2!11449 (h!26350 mapValue!9050)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884656 () Bool)

(declare-fun e!1202245 () Bool)

(declare-fun tp!536648 () Bool)

(assert (=> b!1884656 (= e!1202245 tp!536648)))

(declare-fun setIsEmpty!11631 () Bool)

(assert (=> setIsEmpty!11631 setRes!11631))

(declare-fun setElem!11631 () Context!1966)

(declare-fun tp!536645 () Bool)

(declare-fun setNonEmpty!11631 () Bool)

(assert (=> setNonEmpty!11631 (= setRes!11631 (and tp!536645 (inv!27905 setElem!11631) e!1202245))))

(declare-fun setRest!11631 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11631 (= (_2!11449 (h!26350 mapValue!9050)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11631 true) setRest!11631))))

(assert (= b!1884655 b!1884654))

(assert (= (and b!1884655 condSetEmpty!11631) setIsEmpty!11631))

(assert (= (and b!1884655 (not condSetEmpty!11631)) setNonEmpty!11631))

(assert (= setNonEmpty!11631 b!1884656))

(assert (= (and mapNonEmpty!9051 ((_ is Cons!20949) mapValue!9050)) b!1884655))

(declare-fun m!2317877 () Bool)

(assert (=> b!1884655 m!2317877))

(declare-fun m!2317879 () Bool)

(assert (=> setNonEmpty!11631 m!2317879))

(declare-fun e!1202253 () Bool)

(declare-fun tp!536657 () Bool)

(declare-fun b!1884665 () Bool)

(declare-fun tp!536658 () Bool)

(assert (=> b!1884665 (= e!1202253 (and (inv!27902 (left!16838 (c!307918 input!6054))) tp!536658 (inv!27902 (right!17168 (c!307918 input!6054))) tp!536657))))

(declare-fun b!1884667 () Bool)

(declare-fun e!1202252 () Bool)

(declare-fun tp!536656 () Bool)

(assert (=> b!1884667 (= e!1202252 tp!536656)))

(declare-fun b!1884666 () Bool)

(declare-fun inv!27906 (IArray!13933) Bool)

(assert (=> b!1884666 (= e!1202253 (and (inv!27906 (xs!9854 (c!307918 input!6054))) e!1202252))))

(assert (=> b!1884435 (= tp!536509 (and (inv!27902 (c!307918 input!6054)) e!1202253))))

(assert (= (and b!1884435 ((_ is Node!6964) (c!307918 input!6054))) b!1884665))

(assert (= b!1884666 b!1884667))

(assert (= (and b!1884435 ((_ is Leaf!10245) (c!307918 input!6054))) b!1884666))

(declare-fun m!2317881 () Bool)

(assert (=> b!1884665 m!2317881))

(declare-fun m!2317883 () Bool)

(assert (=> b!1884665 m!2317883))

(declare-fun m!2317885 () Bool)

(assert (=> b!1884666 m!2317885))

(assert (=> b!1884435 m!2317721))

(declare-fun b!1884670 () Bool)

(declare-fun e!1202254 () Bool)

(declare-fun tp!536663 () Bool)

(assert (=> b!1884670 (= e!1202254 tp!536663)))

(declare-fun b!1884668 () Bool)

(assert (=> b!1884668 (= e!1202254 tp_is_empty!8907)))

(declare-fun b!1884671 () Bool)

(declare-fun tp!536661 () Bool)

(declare-fun tp!536659 () Bool)

(assert (=> b!1884671 (= e!1202254 (and tp!536661 tp!536659))))

(assert (=> b!1884422 (= tp!536511 e!1202254)))

(declare-fun b!1884669 () Bool)

(declare-fun tp!536662 () Bool)

(declare-fun tp!536660 () Bool)

(assert (=> b!1884669 (= e!1202254 (and tp!536662 tp!536660))))

(assert (= (and b!1884422 ((_ is ElementMatch!5129) (regOne!10770 r!13659))) b!1884668))

(assert (= (and b!1884422 ((_ is Concat!8982) (regOne!10770 r!13659))) b!1884669))

(assert (= (and b!1884422 ((_ is Star!5129) (regOne!10770 r!13659))) b!1884670))

(assert (= (and b!1884422 ((_ is Union!5129) (regOne!10770 r!13659))) b!1884671))

(declare-fun b!1884674 () Bool)

(declare-fun e!1202255 () Bool)

(declare-fun tp!536668 () Bool)

(assert (=> b!1884674 (= e!1202255 tp!536668)))

(declare-fun b!1884672 () Bool)

(assert (=> b!1884672 (= e!1202255 tp_is_empty!8907)))

(declare-fun b!1884675 () Bool)

(declare-fun tp!536666 () Bool)

(declare-fun tp!536664 () Bool)

(assert (=> b!1884675 (= e!1202255 (and tp!536666 tp!536664))))

(assert (=> b!1884422 (= tp!536503 e!1202255)))

(declare-fun b!1884673 () Bool)

(declare-fun tp!536667 () Bool)

(declare-fun tp!536665 () Bool)

(assert (=> b!1884673 (= e!1202255 (and tp!536667 tp!536665))))

(assert (= (and b!1884422 ((_ is ElementMatch!5129) (regTwo!10770 r!13659))) b!1884672))

(assert (= (and b!1884422 ((_ is Concat!8982) (regTwo!10770 r!13659))) b!1884673))

(assert (= (and b!1884422 ((_ is Star!5129) (regTwo!10770 r!13659))) b!1884674))

(assert (= (and b!1884422 ((_ is Union!5129) (regTwo!10770 r!13659))) b!1884675))

(declare-fun e!1202258 () Bool)

(assert (=> b!1884441 (= tp!536501 e!1202258)))

(declare-fun b!1884676 () Bool)

(declare-fun e!1202257 () Bool)

(declare-fun tp!536670 () Bool)

(assert (=> b!1884676 (= e!1202257 tp!536670)))

(declare-fun b!1884677 () Bool)

(declare-fun tp!536673 () Bool)

(declare-fun tp!536671 () Bool)

(declare-fun setRes!11632 () Bool)

(assert (=> b!1884677 (= e!1202258 (and tp!536671 (inv!27905 (_2!11448 (_1!11449 (h!26350 mapDefault!9051)))) e!1202257 tp_is_empty!8907 setRes!11632 tp!536673))))

(declare-fun condSetEmpty!11632 () Bool)

(assert (=> b!1884677 (= condSetEmpty!11632 (= (_2!11449 (h!26350 mapDefault!9051)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884678 () Bool)

(declare-fun e!1202256 () Bool)

(declare-fun tp!536672 () Bool)

(assert (=> b!1884678 (= e!1202256 tp!536672)))

(declare-fun setIsEmpty!11632 () Bool)

(assert (=> setIsEmpty!11632 setRes!11632))

(declare-fun setElem!11632 () Context!1966)

(declare-fun setNonEmpty!11632 () Bool)

(declare-fun tp!536669 () Bool)

(assert (=> setNonEmpty!11632 (= setRes!11632 (and tp!536669 (inv!27905 setElem!11632) e!1202256))))

(declare-fun setRest!11632 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11632 (= (_2!11449 (h!26350 mapDefault!9051)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11632 true) setRest!11632))))

(assert (= b!1884677 b!1884676))

(assert (= (and b!1884677 condSetEmpty!11632) setIsEmpty!11632))

(assert (= (and b!1884677 (not condSetEmpty!11632)) setNonEmpty!11632))

(assert (= setNonEmpty!11632 b!1884678))

(assert (= (and b!1884441 ((_ is Cons!20949) mapDefault!9051)) b!1884677))

(declare-fun m!2317887 () Bool)

(assert (=> b!1884677 m!2317887))

(declare-fun m!2317889 () Bool)

(assert (=> setNonEmpty!11632 m!2317889))

(check-sat (not b!1884671) (not b!1884593) (not b!1884666) (not b!1884545) (not b!1884656) (not b!1884449) (not b!1884623) (not setNonEmpty!11622) (not b!1884649) (not b!1884592) (not b!1884509) b_and!145179 (not b!1884654) (not bm!116723) (not b!1884591) (not b!1884624) (not setNonEmpty!11617) b_and!145181 (not b!1884435) (not b!1884503) (not b!1884665) (not b!1884572) (not b!1884603) (not b!1884669) (not d!577691) (not b!1884604) (not setNonEmpty!11631) (not b!1884607) (not b_next!53095) (not b!1884620) (not b!1884676) (not b!1884450) (not b!1884678) tp_is_empty!8907 (not d!577701) (not b!1884594) (not b!1884557) (not b!1884606) (not b!1884629) (not b!1884588) (not b!1884510) (not b!1884653) (not setNonEmpty!11614) (not d!577687) (not setNonEmpty!11619) (not b!1884555) (not setNonEmpty!11632) (not b!1884589) (not d!577683) (not b!1884485) (not b!1884651) (not b!1884655) (not b!1884621) (not b!1884494) (not b!1884587) (not b!1884577) (not b!1884631) (not setNonEmpty!11629) (not b_next!53097) (not b!1884498) b_and!145183 (not d!577689) (not setNonEmpty!11618) (not b!1884586) (not setNonEmpty!11630) (not bm!116714) (not d!577695) (not b!1884673) (not b_next!53099) (not b!1884625) (not setNonEmpty!11623) (not mapNonEmpty!9057) (not b!1884575) (not b!1884513) (not d!577707) (not b!1884514) (not b!1884670) (not b_next!53093) (not d!577697) (not b!1884489) (not mapNonEmpty!9054) (not b!1884515) (not d!577685) (not b!1884652) (not b!1884627) (not b!1884492) (not b!1884648) (not b!1884453) b_and!145185 (not b!1884576) (not b!1884590) (not b!1884622) (not b!1884608) (not b!1884448) (not b!1884667) (not b!1884504) (not b!1884633) (not d!577699) (not b!1884674) (not b!1884574) (not b!1884605) (not d!577693) (not b!1884628) (not setNonEmpty!11613) (not b!1884677) (not bm!116722) (not b!1884548) (not b!1884536) (not d!577681) (not setNonEmpty!11624) (not b!1884675) (not b!1884495) (not b!1884650) (not b!1884632) (not b!1884573) (not b!1884488))
(check-sat b_and!145179 b_and!145181 (not b_next!53095) (not b_next!53099) (not b_next!53093) b_and!145185 (not b_next!53097) b_and!145183)
(get-model)

(declare-fun d!577717 () Bool)

(declare-fun lambda!73819 () Int)

(declare-fun forall!4422 (List!21029 Int) Bool)

(assert (=> d!577717 (= (inv!27905 (_1!11446 (_1!11447 (h!26349 mapValue!9054)))) (forall!4422 (exprs!1483 (_1!11446 (_1!11447 (h!26349 mapValue!9054)))) lambda!73819))))

(declare-fun bs!412592 () Bool)

(assert (= bs!412592 d!577717))

(declare-fun m!2317891 () Bool)

(assert (=> bs!412592 m!2317891))

(assert (=> b!1884572 d!577717))

(declare-fun bs!412593 () Bool)

(declare-fun d!577719 () Bool)

(assert (= bs!412593 (and d!577719 d!577717)))

(declare-fun lambda!73820 () Int)

(assert (=> bs!412593 (= lambda!73820 lambda!73819)))

(assert (=> d!577719 (= (inv!27905 (_2!11448 (_1!11449 (h!26350 mapDefault!9051)))) (forall!4422 (exprs!1483 (_2!11448 (_1!11449 (h!26350 mapDefault!9051)))) lambda!73820))))

(declare-fun bs!412594 () Bool)

(assert (= bs!412594 d!577719))

(declare-fun m!2317893 () Bool)

(assert (=> bs!412594 m!2317893))

(assert (=> b!1884677 d!577719))

(declare-fun d!577721 () Bool)

(declare-fun c!307947 () Bool)

(assert (=> d!577721 (= c!307947 (isEmpty!12989 (tail!2915 lt!723214)))))

(declare-fun e!1202259 () Bool)

(assert (=> d!577721 (= (matchZipper!93 (derivationStepZipper!80 lt!723209 (head!4386 lt!723214)) (tail!2915 lt!723214)) e!1202259)))

(declare-fun b!1884679 () Bool)

(assert (=> b!1884679 (= e!1202259 (nullableZipper!42 (derivationStepZipper!80 lt!723209 (head!4386 lt!723214))))))

(declare-fun b!1884680 () Bool)

(assert (=> b!1884680 (= e!1202259 (matchZipper!93 (derivationStepZipper!80 (derivationStepZipper!80 lt!723209 (head!4386 lt!723214)) (head!4386 (tail!2915 lt!723214))) (tail!2915 (tail!2915 lt!723214))))))

(assert (= (and d!577721 c!307947) b!1884679))

(assert (= (and d!577721 (not c!307947)) b!1884680))

(assert (=> d!577721 m!2317775))

(assert (=> d!577721 m!2317777))

(assert (=> b!1884679 m!2317813))

(declare-fun m!2317895 () Bool)

(assert (=> b!1884679 m!2317895))

(assert (=> b!1884680 m!2317775))

(declare-fun m!2317897 () Bool)

(assert (=> b!1884680 m!2317897))

(assert (=> b!1884680 m!2317813))

(assert (=> b!1884680 m!2317897))

(declare-fun m!2317899 () Bool)

(assert (=> b!1884680 m!2317899))

(assert (=> b!1884680 m!2317775))

(declare-fun m!2317901 () Bool)

(assert (=> b!1884680 m!2317901))

(assert (=> b!1884680 m!2317899))

(assert (=> b!1884680 m!2317901))

(declare-fun m!2317903 () Bool)

(assert (=> b!1884680 m!2317903))

(assert (=> b!1884515 d!577721))

(declare-fun d!577723 () Bool)

(assert (=> d!577723 true))

(declare-fun lambda!73823 () Int)

(declare-fun flatMap!129 ((InoxSet Context!1966) Int) (InoxSet Context!1966))

(assert (=> d!577723 (= (derivationStepZipper!80 lt!723209 (head!4386 lt!723214)) (flatMap!129 lt!723209 lambda!73823))))

(declare-fun bs!412595 () Bool)

(assert (= bs!412595 d!577723))

(declare-fun m!2317905 () Bool)

(assert (=> bs!412595 m!2317905))

(assert (=> b!1884515 d!577723))

(declare-fun d!577725 () Bool)

(assert (=> d!577725 (= (head!4386 lt!723214) (h!26351 lt!723214))))

(assert (=> b!1884515 d!577725))

(declare-fun d!577727 () Bool)

(assert (=> d!577727 (= (tail!2915 lt!723214) (t!175029 lt!723214))))

(assert (=> b!1884515 d!577727))

(declare-fun d!577729 () Bool)

(declare-fun c!307950 () Bool)

(assert (=> d!577729 (= c!307950 ((_ is Node!6964) (left!16838 (c!307918 input!6054))))))

(declare-fun e!1202260 () Bool)

(assert (=> d!577729 (= (inv!27902 (left!16838 (c!307918 input!6054))) e!1202260)))

(declare-fun b!1884683 () Bool)

(assert (=> b!1884683 (= e!1202260 (inv!27903 (left!16838 (c!307918 input!6054))))))

(declare-fun b!1884684 () Bool)

(declare-fun e!1202261 () Bool)

(assert (=> b!1884684 (= e!1202260 e!1202261)))

(declare-fun res!841498 () Bool)

(assert (=> b!1884684 (= res!841498 (not ((_ is Leaf!10245) (left!16838 (c!307918 input!6054)))))))

(assert (=> b!1884684 (=> res!841498 e!1202261)))

(declare-fun b!1884685 () Bool)

(assert (=> b!1884685 (= e!1202261 (inv!27904 (left!16838 (c!307918 input!6054))))))

(assert (= (and d!577729 c!307950) b!1884683))

(assert (= (and d!577729 (not c!307950)) b!1884684))

(assert (= (and b!1884684 (not res!841498)) b!1884685))

(declare-fun m!2317907 () Bool)

(assert (=> b!1884683 m!2317907))

(declare-fun m!2317909 () Bool)

(assert (=> b!1884685 m!2317909))

(assert (=> b!1884665 d!577729))

(declare-fun d!577731 () Bool)

(declare-fun c!307951 () Bool)

(assert (=> d!577731 (= c!307951 ((_ is Node!6964) (right!17168 (c!307918 input!6054))))))

(declare-fun e!1202262 () Bool)

(assert (=> d!577731 (= (inv!27902 (right!17168 (c!307918 input!6054))) e!1202262)))

(declare-fun b!1884686 () Bool)

(assert (=> b!1884686 (= e!1202262 (inv!27903 (right!17168 (c!307918 input!6054))))))

(declare-fun b!1884687 () Bool)

(declare-fun e!1202263 () Bool)

(assert (=> b!1884687 (= e!1202262 e!1202263)))

(declare-fun res!841499 () Bool)

(assert (=> b!1884687 (= res!841499 (not ((_ is Leaf!10245) (right!17168 (c!307918 input!6054)))))))

(assert (=> b!1884687 (=> res!841499 e!1202263)))

(declare-fun b!1884688 () Bool)

(assert (=> b!1884688 (= e!1202263 (inv!27904 (right!17168 (c!307918 input!6054))))))

(assert (= (and d!577731 c!307951) b!1884686))

(assert (= (and d!577731 (not c!307951)) b!1884687))

(assert (= (and b!1884687 (not res!841499)) b!1884688))

(declare-fun m!2317911 () Bool)

(assert (=> b!1884686 m!2317911))

(declare-fun m!2317913 () Bool)

(assert (=> b!1884688 m!2317913))

(assert (=> b!1884665 d!577731))

(declare-fun bs!412596 () Bool)

(declare-fun d!577733 () Bool)

(assert (= bs!412596 (and d!577733 d!577717)))

(declare-fun lambda!73824 () Int)

(assert (=> bs!412596 (= lambda!73824 lambda!73819)))

(declare-fun bs!412597 () Bool)

(assert (= bs!412597 (and d!577733 d!577719)))

(assert (=> bs!412597 (= lambda!73824 lambda!73820)))

(assert (=> d!577733 (= (inv!27905 (_2!11448 (_1!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))))) (forall!4422 (exprs!1483 (_2!11448 (_1!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))))) lambda!73824))))

(declare-fun bs!412598 () Bool)

(assert (= bs!412598 d!577733))

(declare-fun m!2317915 () Bool)

(assert (=> bs!412598 m!2317915))

(assert (=> b!1884607 d!577733))

(declare-fun d!577735 () Bool)

(declare-fun lambda!73827 () Int)

(declare-fun exists!680 ((InoxSet Context!1966) Int) Bool)

(assert (=> d!577735 (= (nullableZipper!42 lt!723209) (exists!680 lt!723209 lambda!73827))))

(declare-fun bs!412599 () Bool)

(assert (= bs!412599 d!577735))

(declare-fun m!2317917 () Bool)

(assert (=> bs!412599 m!2317917))

(assert (=> b!1884509 d!577735))

(declare-fun d!577737 () Bool)

(declare-fun c!307954 () Bool)

(assert (=> d!577737 (= c!307954 (= (+ 0 1) (size!16639 input!6054)))))

(declare-fun e!1202264 () Bool)

(assert (=> d!577737 (= (matchZipperSequence!19 (derivationStepZipper!80 lt!723209 (apply!5538 input!6054 0)) input!6054 (+ 0 1)) e!1202264)))

(declare-fun b!1884689 () Bool)

(assert (=> b!1884689 (= e!1202264 (nullableZipper!42 (derivationStepZipper!80 lt!723209 (apply!5538 input!6054 0))))))

(declare-fun b!1884690 () Bool)

(assert (=> b!1884690 (= e!1202264 (matchZipperSequence!19 (derivationStepZipper!80 (derivationStepZipper!80 lt!723209 (apply!5538 input!6054 0)) (apply!5538 input!6054 (+ 0 1))) input!6054 (+ 0 1 1)))))

(assert (= (and d!577737 c!307954) b!1884689))

(assert (= (and d!577737 (not c!307954)) b!1884690))

(assert (=> d!577737 m!2317755))

(assert (=> b!1884689 m!2317793))

(declare-fun m!2317919 () Bool)

(assert (=> b!1884689 m!2317919))

(declare-fun m!2317921 () Bool)

(assert (=> b!1884690 m!2317921))

(assert (=> b!1884690 m!2317793))

(assert (=> b!1884690 m!2317921))

(declare-fun m!2317923 () Bool)

(assert (=> b!1884690 m!2317923))

(assert (=> b!1884690 m!2317923))

(declare-fun m!2317925 () Bool)

(assert (=> b!1884690 m!2317925))

(assert (=> b!1884504 d!577737))

(declare-fun bs!412600 () Bool)

(declare-fun d!577739 () Bool)

(assert (= bs!412600 (and d!577739 d!577723)))

(declare-fun lambda!73828 () Int)

(assert (=> bs!412600 (= (= (apply!5538 input!6054 0) (head!4386 lt!723214)) (= lambda!73828 lambda!73823))))

(assert (=> d!577739 true))

(assert (=> d!577739 (= (derivationStepZipper!80 lt!723209 (apply!5538 input!6054 0)) (flatMap!129 lt!723209 lambda!73828))))

(declare-fun bs!412601 () Bool)

(assert (= bs!412601 d!577739))

(declare-fun m!2317927 () Bool)

(assert (=> bs!412601 m!2317927))

(assert (=> b!1884504 d!577739))

(declare-fun d!577741 () Bool)

(declare-fun lt!723239 () C!10416)

(declare-fun apply!5539 (List!21032 Int) C!10416)

(assert (=> d!577741 (= lt!723239 (apply!5539 (list!8560 input!6054) 0))))

(declare-fun apply!5540 (Conc!6964 Int) C!10416)

(assert (=> d!577741 (= lt!723239 (apply!5540 (c!307918 input!6054) 0))))

(declare-fun e!1202267 () Bool)

(assert (=> d!577741 e!1202267))

(declare-fun res!841502 () Bool)

(assert (=> d!577741 (=> (not res!841502) (not e!1202267))))

(assert (=> d!577741 (= res!841502 (<= 0 0))))

(assert (=> d!577741 (= (apply!5538 input!6054 0) lt!723239)))

(declare-fun b!1884693 () Bool)

(assert (=> b!1884693 (= e!1202267 (< 0 (size!16639 input!6054)))))

(assert (= (and d!577741 res!841502) b!1884693))

(assert (=> d!577741 m!2317741))

(assert (=> d!577741 m!2317741))

(declare-fun m!2317929 () Bool)

(assert (=> d!577741 m!2317929))

(declare-fun m!2317931 () Bool)

(assert (=> d!577741 m!2317931))

(assert (=> b!1884693 m!2317755))

(assert (=> b!1884504 d!577741))

(declare-fun d!577743 () Bool)

(declare-fun lt!723242 () Int)

(declare-fun size!16640 (List!21032) Int)

(assert (=> d!577743 (= lt!723242 (size!16640 (list!8560 input!6054)))))

(declare-fun size!16641 (Conc!6964) Int)

(assert (=> d!577743 (= lt!723242 (size!16641 (c!307918 input!6054)))))

(assert (=> d!577743 (= (size!16639 input!6054) lt!723242)))

(declare-fun bs!412602 () Bool)

(assert (= bs!412602 d!577743))

(assert (=> bs!412602 m!2317741))

(assert (=> bs!412602 m!2317741))

(declare-fun m!2317933 () Bool)

(assert (=> bs!412602 m!2317933))

(declare-fun m!2317935 () Bool)

(assert (=> bs!412602 m!2317935))

(assert (=> b!1884498 d!577743))

(assert (=> b!1884495 d!577725))

(declare-fun d!577745 () Bool)

(assert (=> d!577745 (= (isEmpty!12989 lt!723214) ((_ is Nil!20950) lt!723214))))

(assert (=> d!577701 d!577745))

(assert (=> d!577685 d!577703))

(declare-fun bs!412603 () Bool)

(declare-fun d!577747 () Bool)

(assert (= bs!412603 (and d!577747 d!577717)))

(declare-fun lambda!73829 () Int)

(assert (=> bs!412603 (= lambda!73829 lambda!73819)))

(declare-fun bs!412604 () Bool)

(assert (= bs!412604 (and d!577747 d!577719)))

(assert (=> bs!412604 (= lambda!73829 lambda!73820)))

(declare-fun bs!412605 () Bool)

(assert (= bs!412605 (and d!577747 d!577733)))

(assert (=> bs!412605 (= lambda!73829 lambda!73824)))

(assert (=> d!577747 (= (inv!27905 setElem!11629) (forall!4422 (exprs!1483 setElem!11629) lambda!73829))))

(declare-fun bs!412606 () Bool)

(assert (= bs!412606 d!577747))

(declare-fun m!2317937 () Bool)

(assert (=> bs!412606 m!2317937))

(assert (=> setNonEmpty!11630 d!577747))

(declare-fun bs!412607 () Bool)

(declare-fun d!577749 () Bool)

(assert (= bs!412607 (and d!577749 d!577717)))

(declare-fun lambda!73830 () Int)

(assert (=> bs!412607 (= lambda!73830 lambda!73819)))

(declare-fun bs!412608 () Bool)

(assert (= bs!412608 (and d!577749 d!577719)))

(assert (=> bs!412608 (= lambda!73830 lambda!73820)))

(declare-fun bs!412609 () Bool)

(assert (= bs!412609 (and d!577749 d!577733)))

(assert (=> bs!412609 (= lambda!73830 lambda!73824)))

(declare-fun bs!412610 () Bool)

(assert (= bs!412610 (and d!577749 d!577747)))

(assert (=> bs!412610 (= lambda!73830 lambda!73829)))

(assert (=> d!577749 (= (inv!27905 setElem!11624) (forall!4422 (exprs!1483 setElem!11624) lambda!73830))))

(declare-fun bs!412611 () Bool)

(assert (= bs!412611 d!577749))

(declare-fun m!2317939 () Bool)

(assert (=> bs!412611 m!2317939))

(assert (=> setNonEmpty!11624 d!577749))

(assert (=> d!577687 d!577745))

(assert (=> d!577687 d!577703))

(declare-fun b!1884706 () Bool)

(declare-fun res!841518 () Bool)

(declare-fun e!1202273 () Bool)

(assert (=> b!1884706 (=> (not res!841518) (not e!1202273))))

(declare-fun isEmpty!12990 (Conc!6964) Bool)

(assert (=> b!1884706 (= res!841518 (not (isEmpty!12990 (left!16838 (c!307918 input!6054)))))))

(declare-fun b!1884707 () Bool)

(declare-fun res!841517 () Bool)

(assert (=> b!1884707 (=> (not res!841517) (not e!1202273))))

(assert (=> b!1884707 (= res!841517 (isBalanced!2208 (left!16838 (c!307918 input!6054))))))

(declare-fun d!577751 () Bool)

(declare-fun res!841519 () Bool)

(declare-fun e!1202272 () Bool)

(assert (=> d!577751 (=> res!841519 e!1202272)))

(assert (=> d!577751 (= res!841519 (not ((_ is Node!6964) (c!307918 input!6054))))))

(assert (=> d!577751 (= (isBalanced!2208 (c!307918 input!6054)) e!1202272)))

(declare-fun b!1884708 () Bool)

(declare-fun res!841516 () Bool)

(assert (=> b!1884708 (=> (not res!841516) (not e!1202273))))

(declare-fun height!1094 (Conc!6964) Int)

(assert (=> b!1884708 (= res!841516 (<= (- (height!1094 (left!16838 (c!307918 input!6054))) (height!1094 (right!17168 (c!307918 input!6054)))) 1))))

(declare-fun b!1884709 () Bool)

(declare-fun res!841520 () Bool)

(assert (=> b!1884709 (=> (not res!841520) (not e!1202273))))

(assert (=> b!1884709 (= res!841520 (isBalanced!2208 (right!17168 (c!307918 input!6054))))))

(declare-fun b!1884710 () Bool)

(assert (=> b!1884710 (= e!1202273 (not (isEmpty!12990 (right!17168 (c!307918 input!6054)))))))

(declare-fun b!1884711 () Bool)

(assert (=> b!1884711 (= e!1202272 e!1202273)))

(declare-fun res!841515 () Bool)

(assert (=> b!1884711 (=> (not res!841515) (not e!1202273))))

(assert (=> b!1884711 (= res!841515 (<= (- 1) (- (height!1094 (left!16838 (c!307918 input!6054))) (height!1094 (right!17168 (c!307918 input!6054))))))))

(assert (= (and d!577751 (not res!841519)) b!1884711))

(assert (= (and b!1884711 res!841515) b!1884708))

(assert (= (and b!1884708 res!841516) b!1884707))

(assert (= (and b!1884707 res!841517) b!1884709))

(assert (= (and b!1884709 res!841520) b!1884706))

(assert (= (and b!1884706 res!841518) b!1884710))

(declare-fun m!2317941 () Bool)

(assert (=> b!1884709 m!2317941))

(declare-fun m!2317943 () Bool)

(assert (=> b!1884710 m!2317943))

(declare-fun m!2317945 () Bool)

(assert (=> b!1884708 m!2317945))

(declare-fun m!2317947 () Bool)

(assert (=> b!1884708 m!2317947))

(declare-fun m!2317949 () Bool)

(assert (=> b!1884706 m!2317949))

(declare-fun m!2317951 () Bool)

(assert (=> b!1884707 m!2317951))

(assert (=> b!1884711 m!2317945))

(assert (=> b!1884711 m!2317947))

(assert (=> d!577707 d!577751))

(declare-fun b!1884712 () Bool)

(declare-fun res!841524 () Bool)

(declare-fun e!1202277 () Bool)

(assert (=> b!1884712 (=> (not res!841524) (not e!1202277))))

(declare-fun call!116729 () Bool)

(assert (=> b!1884712 (= res!841524 (not call!116729))))

(declare-fun b!1884713 () Bool)

(declare-fun res!841527 () Bool)

(declare-fun e!1202274 () Bool)

(assert (=> b!1884713 (=> res!841527 e!1202274)))

(assert (=> b!1884713 (= res!841527 (not ((_ is ElementMatch!5129) (derivativeStep!1334 r!13659 (head!4386 lt!723214)))))))

(declare-fun e!1202279 () Bool)

(assert (=> b!1884713 (= e!1202279 e!1202274)))

(declare-fun d!577753 () Bool)

(declare-fun e!1202275 () Bool)

(assert (=> d!577753 e!1202275))

(declare-fun c!307956 () Bool)

(assert (=> d!577753 (= c!307956 ((_ is EmptyExpr!5129) (derivativeStep!1334 r!13659 (head!4386 lt!723214))))))

(declare-fun lt!723243 () Bool)

(declare-fun e!1202276 () Bool)

(assert (=> d!577753 (= lt!723243 e!1202276)))

(declare-fun c!307955 () Bool)

(assert (=> d!577753 (= c!307955 (isEmpty!12989 (tail!2915 lt!723214)))))

(assert (=> d!577753 (validRegex!2099 (derivativeStep!1334 r!13659 (head!4386 lt!723214)))))

(assert (=> d!577753 (= (matchR!2475 (derivativeStep!1334 r!13659 (head!4386 lt!723214)) (tail!2915 lt!723214)) lt!723243)))

(declare-fun b!1884714 () Bool)

(declare-fun e!1202280 () Bool)

(assert (=> b!1884714 (= e!1202274 e!1202280)))

(declare-fun res!841528 () Bool)

(assert (=> b!1884714 (=> (not res!841528) (not e!1202280))))

(assert (=> b!1884714 (= res!841528 (not lt!723243))))

(declare-fun bm!116724 () Bool)

(assert (=> bm!116724 (= call!116729 (isEmpty!12989 (tail!2915 lt!723214)))))

(declare-fun b!1884715 () Bool)

(assert (=> b!1884715 (= e!1202276 (nullable!1575 (derivativeStep!1334 r!13659 (head!4386 lt!723214))))))

(declare-fun b!1884716 () Bool)

(declare-fun e!1202278 () Bool)

(assert (=> b!1884716 (= e!1202280 e!1202278)))

(declare-fun res!841526 () Bool)

(assert (=> b!1884716 (=> res!841526 e!1202278)))

(assert (=> b!1884716 (= res!841526 call!116729)))

(declare-fun b!1884717 () Bool)

(assert (=> b!1884717 (= e!1202279 (not lt!723243))))

(declare-fun b!1884718 () Bool)

(declare-fun res!841523 () Bool)

(assert (=> b!1884718 (=> (not res!841523) (not e!1202277))))

(assert (=> b!1884718 (= res!841523 (isEmpty!12989 (tail!2915 (tail!2915 lt!723214))))))

(declare-fun b!1884719 () Bool)

(assert (=> b!1884719 (= e!1202276 (matchR!2475 (derivativeStep!1334 (derivativeStep!1334 r!13659 (head!4386 lt!723214)) (head!4386 (tail!2915 lt!723214))) (tail!2915 (tail!2915 lt!723214))))))

(declare-fun b!1884720 () Bool)

(assert (=> b!1884720 (= e!1202275 (= lt!723243 call!116729))))

(declare-fun b!1884721 () Bool)

(assert (=> b!1884721 (= e!1202275 e!1202279)))

(declare-fun c!307957 () Bool)

(assert (=> b!1884721 (= c!307957 ((_ is EmptyLang!5129) (derivativeStep!1334 r!13659 (head!4386 lt!723214))))))

(declare-fun b!1884722 () Bool)

(assert (=> b!1884722 (= e!1202278 (not (= (head!4386 (tail!2915 lt!723214)) (c!307917 (derivativeStep!1334 r!13659 (head!4386 lt!723214))))))))

(declare-fun b!1884723 () Bool)

(declare-fun res!841525 () Bool)

(assert (=> b!1884723 (=> res!841525 e!1202274)))

(assert (=> b!1884723 (= res!841525 e!1202277)))

(declare-fun res!841521 () Bool)

(assert (=> b!1884723 (=> (not res!841521) (not e!1202277))))

(assert (=> b!1884723 (= res!841521 lt!723243)))

(declare-fun b!1884724 () Bool)

(declare-fun res!841522 () Bool)

(assert (=> b!1884724 (=> res!841522 e!1202278)))

(assert (=> b!1884724 (= res!841522 (not (isEmpty!12989 (tail!2915 (tail!2915 lt!723214)))))))

(declare-fun b!1884725 () Bool)

(assert (=> b!1884725 (= e!1202277 (= (head!4386 (tail!2915 lt!723214)) (c!307917 (derivativeStep!1334 r!13659 (head!4386 lt!723214)))))))

(assert (= (and d!577753 c!307955) b!1884715))

(assert (= (and d!577753 (not c!307955)) b!1884719))

(assert (= (and d!577753 c!307956) b!1884720))

(assert (= (and d!577753 (not c!307956)) b!1884721))

(assert (= (and b!1884721 c!307957) b!1884717))

(assert (= (and b!1884721 (not c!307957)) b!1884713))

(assert (= (and b!1884713 (not res!841527)) b!1884723))

(assert (= (and b!1884723 res!841521) b!1884712))

(assert (= (and b!1884712 res!841524) b!1884718))

(assert (= (and b!1884718 res!841523) b!1884725))

(assert (= (and b!1884723 (not res!841525)) b!1884714))

(assert (= (and b!1884714 res!841528) b!1884716))

(assert (= (and b!1884716 (not res!841526)) b!1884724))

(assert (= (and b!1884724 (not res!841522)) b!1884722))

(assert (= (or b!1884720 b!1884712 b!1884716) bm!116724))

(assert (=> d!577753 m!2317775))

(assert (=> d!577753 m!2317777))

(assert (=> d!577753 m!2317781))

(declare-fun m!2317953 () Bool)

(assert (=> d!577753 m!2317953))

(assert (=> b!1884718 m!2317775))

(assert (=> b!1884718 m!2317901))

(assert (=> b!1884718 m!2317901))

(declare-fun m!2317955 () Bool)

(assert (=> b!1884718 m!2317955))

(assert (=> b!1884724 m!2317775))

(assert (=> b!1884724 m!2317901))

(assert (=> b!1884724 m!2317901))

(assert (=> b!1884724 m!2317955))

(assert (=> b!1884725 m!2317775))

(assert (=> b!1884725 m!2317897))

(assert (=> b!1884719 m!2317775))

(assert (=> b!1884719 m!2317897))

(assert (=> b!1884719 m!2317781))

(assert (=> b!1884719 m!2317897))

(declare-fun m!2317957 () Bool)

(assert (=> b!1884719 m!2317957))

(assert (=> b!1884719 m!2317775))

(assert (=> b!1884719 m!2317901))

(assert (=> b!1884719 m!2317957))

(assert (=> b!1884719 m!2317901))

(declare-fun m!2317959 () Bool)

(assert (=> b!1884719 m!2317959))

(assert (=> b!1884715 m!2317781))

(declare-fun m!2317961 () Bool)

(assert (=> b!1884715 m!2317961))

(assert (=> bm!116724 m!2317775))

(assert (=> bm!116724 m!2317777))

(assert (=> b!1884722 m!2317775))

(assert (=> b!1884722 m!2317897))

(assert (=> b!1884489 d!577753))

(declare-fun b!1884746 () Bool)

(declare-fun c!307968 () Bool)

(assert (=> b!1884746 (= c!307968 ((_ is Union!5129) r!13659))))

(declare-fun e!1202294 () Regex!5129)

(declare-fun e!1202293 () Regex!5129)

(assert (=> b!1884746 (= e!1202294 e!1202293)))

(declare-fun bm!116733 () Bool)

(declare-fun call!116739 () Regex!5129)

(declare-fun call!116738 () Regex!5129)

(assert (=> bm!116733 (= call!116739 call!116738)))

(declare-fun call!116741 () Regex!5129)

(declare-fun bm!116734 () Bool)

(assert (=> bm!116734 (= call!116741 (derivativeStep!1334 (ite c!307968 (regOne!10771 r!13659) (regTwo!10770 r!13659)) (head!4386 lt!723214)))))

(declare-fun b!1884747 () Bool)

(declare-fun e!1202295 () Regex!5129)

(assert (=> b!1884747 (= e!1202295 (Concat!8982 call!116739 r!13659))))

(declare-fun b!1884748 () Bool)

(declare-fun e!1202291 () Regex!5129)

(assert (=> b!1884748 (= e!1202291 e!1202294)))

(declare-fun c!307969 () Bool)

(assert (=> b!1884748 (= c!307969 ((_ is ElementMatch!5129) r!13659))))

(declare-fun b!1884749 () Bool)

(assert (=> b!1884749 (= e!1202293 e!1202295)))

(declare-fun c!307970 () Bool)

(assert (=> b!1884749 (= c!307970 ((_ is Star!5129) r!13659))))

(declare-fun e!1202292 () Regex!5129)

(declare-fun call!116740 () Regex!5129)

(declare-fun b!1884750 () Bool)

(assert (=> b!1884750 (= e!1202292 (Union!5129 (Concat!8982 call!116740 (regTwo!10770 r!13659)) call!116741))))

(declare-fun d!577755 () Bool)

(declare-fun lt!723246 () Regex!5129)

(assert (=> d!577755 (validRegex!2099 lt!723246)))

(assert (=> d!577755 (= lt!723246 e!1202291)))

(declare-fun c!307971 () Bool)

(assert (=> d!577755 (= c!307971 (or ((_ is EmptyExpr!5129) r!13659) ((_ is EmptyLang!5129) r!13659)))))

(assert (=> d!577755 (validRegex!2099 r!13659)))

(assert (=> d!577755 (= (derivativeStep!1334 r!13659 (head!4386 lt!723214)) lt!723246)))

(declare-fun b!1884751 () Bool)

(assert (=> b!1884751 (= e!1202291 EmptyLang!5129)))

(declare-fun b!1884752 () Bool)

(assert (=> b!1884752 (= e!1202292 (Union!5129 (Concat!8982 call!116740 (regTwo!10770 r!13659)) EmptyLang!5129))))

(declare-fun bm!116735 () Bool)

(assert (=> bm!116735 (= call!116738 (derivativeStep!1334 (ite c!307968 (regTwo!10771 r!13659) (ite c!307970 (reg!5458 r!13659) (regOne!10770 r!13659))) (head!4386 lt!723214)))))

(declare-fun b!1884753 () Bool)

(assert (=> b!1884753 (= e!1202294 (ite (= (head!4386 lt!723214) (c!307917 r!13659)) EmptyExpr!5129 EmptyLang!5129))))

(declare-fun b!1884754 () Bool)

(declare-fun c!307972 () Bool)

(assert (=> b!1884754 (= c!307972 (nullable!1575 (regOne!10770 r!13659)))))

(assert (=> b!1884754 (= e!1202295 e!1202292)))

(declare-fun b!1884755 () Bool)

(assert (=> b!1884755 (= e!1202293 (Union!5129 call!116741 call!116738))))

(declare-fun bm!116736 () Bool)

(assert (=> bm!116736 (= call!116740 call!116739)))

(assert (= (and d!577755 c!307971) b!1884751))

(assert (= (and d!577755 (not c!307971)) b!1884748))

(assert (= (and b!1884748 c!307969) b!1884753))

(assert (= (and b!1884748 (not c!307969)) b!1884746))

(assert (= (and b!1884746 c!307968) b!1884755))

(assert (= (and b!1884746 (not c!307968)) b!1884749))

(assert (= (and b!1884749 c!307970) b!1884747))

(assert (= (and b!1884749 (not c!307970)) b!1884754))

(assert (= (and b!1884754 c!307972) b!1884750))

(assert (= (and b!1884754 (not c!307972)) b!1884752))

(assert (= (or b!1884750 b!1884752) bm!116736))

(assert (= (or b!1884747 bm!116736) bm!116733))

(assert (= (or b!1884755 b!1884750) bm!116734))

(assert (= (or b!1884755 bm!116733) bm!116735))

(assert (=> bm!116734 m!2317779))

(declare-fun m!2317963 () Bool)

(assert (=> bm!116734 m!2317963))

(declare-fun m!2317965 () Bool)

(assert (=> d!577755 m!2317965))

(assert (=> d!577755 m!2317723))

(assert (=> bm!116735 m!2317779))

(declare-fun m!2317967 () Bool)

(assert (=> bm!116735 m!2317967))

(declare-fun m!2317969 () Bool)

(assert (=> b!1884754 m!2317969))

(assert (=> b!1884489 d!577755))

(assert (=> b!1884489 d!577725))

(assert (=> b!1884489 d!577727))

(declare-fun b!1884764 () Bool)

(declare-fun e!1202300 () List!21032)

(assert (=> b!1884764 (= e!1202300 Nil!20950)))

(declare-fun b!1884767 () Bool)

(declare-fun e!1202301 () List!21032)

(declare-fun ++!5703 (List!21032 List!21032) List!21032)

(assert (=> b!1884767 (= e!1202301 (++!5703 (list!8561 (left!16838 (c!307918 input!6054))) (list!8561 (right!17168 (c!307918 input!6054)))))))

(declare-fun b!1884766 () Bool)

(declare-fun list!8562 (IArray!13933) List!21032)

(assert (=> b!1884766 (= e!1202301 (list!8562 (xs!9854 (c!307918 input!6054))))))

(declare-fun d!577757 () Bool)

(declare-fun c!307977 () Bool)

(assert (=> d!577757 (= c!307977 ((_ is Empty!6964) (c!307918 input!6054)))))

(assert (=> d!577757 (= (list!8561 (c!307918 input!6054)) e!1202300)))

(declare-fun b!1884765 () Bool)

(assert (=> b!1884765 (= e!1202300 e!1202301)))

(declare-fun c!307978 () Bool)

(assert (=> b!1884765 (= c!307978 ((_ is Leaf!10245) (c!307918 input!6054)))))

(assert (= (and d!577757 c!307977) b!1884764))

(assert (= (and d!577757 (not c!307977)) b!1884765))

(assert (= (and b!1884765 c!307978) b!1884766))

(assert (= (and b!1884765 (not c!307978)) b!1884767))

(declare-fun m!2317971 () Bool)

(assert (=> b!1884767 m!2317971))

(declare-fun m!2317973 () Bool)

(assert (=> b!1884767 m!2317973))

(assert (=> b!1884767 m!2317971))

(assert (=> b!1884767 m!2317973))

(declare-fun m!2317975 () Bool)

(assert (=> b!1884767 m!2317975))

(declare-fun m!2317977 () Bool)

(assert (=> b!1884766 m!2317977))

(assert (=> d!577699 d!577757))

(assert (=> b!1884449 d!577735))

(declare-fun d!577759 () Bool)

(declare-fun res!841535 () Bool)

(declare-fun e!1202306 () Bool)

(assert (=> d!577759 (=> (not res!841535) (not e!1202306))))

(declare-fun valid!1567 (MutableMap!1868) Bool)

(assert (=> d!577759 (= res!841535 (valid!1567 (cache!2249 cacheDown!1134)))))

(assert (=> d!577759 (= (validCacheMapDown!180 (cache!2249 cacheDown!1134)) e!1202306)))

(declare-fun b!1884774 () Bool)

(declare-fun res!841536 () Bool)

(assert (=> b!1884774 (=> (not res!841536) (not e!1202306))))

(declare-fun invariantList!263 (List!21031) Bool)

(declare-datatypes ((ListMap!575 0))(
  ( (ListMap!576 (toList!1016 List!21031)) )
))
(declare-fun map!4476 (MutableMap!1868) ListMap!575)

(assert (=> b!1884774 (= res!841536 (invariantList!263 (toList!1016 (map!4476 (cache!2249 cacheDown!1134)))))))

(declare-fun b!1884775 () Bool)

(declare-fun lambda!73833 () Int)

(declare-fun forall!4423 (List!21031 Int) Bool)

(assert (=> b!1884775 (= e!1202306 (forall!4423 (toList!1016 (map!4476 (cache!2249 cacheDown!1134))) lambda!73833))))

(assert (= (and d!577759 res!841535) b!1884774))

(assert (= (and b!1884774 res!841536) b!1884775))

(declare-fun m!2317980 () Bool)

(assert (=> d!577759 m!2317980))

(declare-fun m!2317982 () Bool)

(assert (=> b!1884774 m!2317982))

(declare-fun m!2317984 () Bool)

(assert (=> b!1884774 m!2317984))

(assert (=> b!1884775 m!2317982))

(declare-fun m!2317986 () Bool)

(assert (=> b!1884775 m!2317986))

(assert (=> b!1884545 d!577759))

(declare-fun d!577761 () Bool)

(declare-fun res!841541 () Bool)

(declare-fun e!1202311 () Bool)

(assert (=> d!577761 (=> res!841541 e!1202311)))

(assert (=> d!577761 (= res!841541 ((_ is Nil!20951) lt!723236))))

(assert (=> d!577761 (= (noDuplicate!272 lt!723236) e!1202311)))

(declare-fun b!1884780 () Bool)

(declare-fun e!1202312 () Bool)

(assert (=> b!1884780 (= e!1202311 e!1202312)))

(declare-fun res!841542 () Bool)

(assert (=> b!1884780 (=> (not res!841542) (not e!1202312))))

(declare-fun contains!3824 (List!21033 Context!1966) Bool)

(assert (=> b!1884780 (= res!841542 (not (contains!3824 (t!175030 lt!723236) (h!26352 lt!723236))))))

(declare-fun b!1884781 () Bool)

(assert (=> b!1884781 (= e!1202312 (noDuplicate!272 (t!175030 lt!723236)))))

(assert (= (and d!577761 (not res!841541)) b!1884780))

(assert (= (and b!1884780 res!841542) b!1884781))

(declare-fun m!2317988 () Bool)

(assert (=> b!1884780 m!2317988))

(declare-fun m!2317990 () Bool)

(assert (=> b!1884781 m!2317990))

(assert (=> d!577697 d!577761))

(declare-fun d!577763 () Bool)

(declare-fun e!1202319 () Bool)

(assert (=> d!577763 e!1202319))

(declare-fun res!841548 () Bool)

(assert (=> d!577763 (=> (not res!841548) (not e!1202319))))

(declare-fun res!841547 () List!21033)

(assert (=> d!577763 (= res!841548 (noDuplicate!272 res!841547))))

(declare-fun e!1202320 () Bool)

(assert (=> d!577763 e!1202320))

(assert (=> d!577763 (= (choose!11805 lt!723209) res!841547)))

(declare-fun b!1884789 () Bool)

(declare-fun e!1202321 () Bool)

(declare-fun tp!536678 () Bool)

(assert (=> b!1884789 (= e!1202321 tp!536678)))

(declare-fun tp!536679 () Bool)

(declare-fun b!1884788 () Bool)

(assert (=> b!1884788 (= e!1202320 (and (inv!27905 (h!26352 res!841547)) e!1202321 tp!536679))))

(declare-fun b!1884790 () Bool)

(assert (=> b!1884790 (= e!1202319 (= (content!3118 res!841547) lt!723209))))

(assert (= b!1884788 b!1884789))

(assert (= (and d!577763 ((_ is Cons!20951) res!841547)) b!1884788))

(assert (= (and d!577763 res!841548) b!1884790))

(declare-fun m!2317992 () Bool)

(assert (=> d!577763 m!2317992))

(declare-fun m!2317994 () Bool)

(assert (=> b!1884788 m!2317994))

(declare-fun m!2317996 () Bool)

(assert (=> b!1884790 m!2317996))

(assert (=> d!577697 d!577763))

(declare-fun d!577765 () Bool)

(declare-fun nullableFct!350 (Regex!5129) Bool)

(assert (=> d!577765 (= (nullable!1575 r!13659) (nullableFct!350 r!13659))))

(declare-fun bs!412612 () Bool)

(assert (= bs!412612 d!577765))

(declare-fun m!2317998 () Bool)

(assert (=> bs!412612 m!2317998))

(assert (=> b!1884485 d!577765))

(declare-fun bs!412613 () Bool)

(declare-fun d!577767 () Bool)

(assert (= bs!412613 (and d!577767 d!577749)))

(declare-fun lambda!73834 () Int)

(assert (=> bs!412613 (= lambda!73834 lambda!73830)))

(declare-fun bs!412614 () Bool)

(assert (= bs!412614 (and d!577767 d!577747)))

(assert (=> bs!412614 (= lambda!73834 lambda!73829)))

(declare-fun bs!412615 () Bool)

(assert (= bs!412615 (and d!577767 d!577719)))

(assert (=> bs!412615 (= lambda!73834 lambda!73820)))

(declare-fun bs!412616 () Bool)

(assert (= bs!412616 (and d!577767 d!577717)))

(assert (=> bs!412616 (= lambda!73834 lambda!73819)))

(declare-fun bs!412617 () Bool)

(assert (= bs!412617 (and d!577767 d!577733)))

(assert (=> bs!412617 (= lambda!73834 lambda!73824)))

(assert (=> d!577767 (= (inv!27905 setElem!11617) (forall!4422 (exprs!1483 setElem!11617) lambda!73834))))

(declare-fun bs!412618 () Bool)

(assert (= bs!412618 d!577767))

(declare-fun m!2318000 () Bool)

(assert (=> bs!412618 m!2318000))

(assert (=> setNonEmpty!11617 d!577767))

(declare-fun b!1884791 () Bool)

(declare-fun e!1202325 () Bool)

(declare-fun e!1202323 () Bool)

(assert (=> b!1884791 (= e!1202325 e!1202323)))

(declare-fun res!841549 () Bool)

(assert (=> b!1884791 (=> (not res!841549) (not e!1202323))))

(declare-fun call!116743 () Bool)

(assert (=> b!1884791 (= res!841549 call!116743)))

(declare-fun b!1884792 () Bool)

(declare-fun e!1202327 () Bool)

(declare-fun e!1202326 () Bool)

(assert (=> b!1884792 (= e!1202327 e!1202326)))

(declare-fun c!307979 () Bool)

(assert (=> b!1884792 (= c!307979 ((_ is Union!5129) (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))))))

(declare-fun b!1884793 () Bool)

(declare-fun e!1202324 () Bool)

(assert (=> b!1884793 (= e!1202327 e!1202324)))

(declare-fun res!841552 () Bool)

(assert (=> b!1884793 (= res!841552 (not (nullable!1575 (reg!5458 (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))))))))

(assert (=> b!1884793 (=> (not res!841552) (not e!1202324))))

(declare-fun b!1884794 () Bool)

(declare-fun call!116744 () Bool)

(assert (=> b!1884794 (= e!1202324 call!116744)))

(declare-fun bm!116737 () Bool)

(declare-fun call!116742 () Bool)

(assert (=> bm!116737 (= call!116742 call!116744)))

(declare-fun b!1884795 () Bool)

(declare-fun res!841553 () Bool)

(assert (=> b!1884795 (=> res!841553 e!1202325)))

(assert (=> b!1884795 (= res!841553 (not ((_ is Concat!8982) (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659)))))))

(assert (=> b!1884795 (= e!1202326 e!1202325)))

(declare-fun b!1884796 () Bool)

(declare-fun e!1202322 () Bool)

(assert (=> b!1884796 (= e!1202322 e!1202327)))

(declare-fun c!307980 () Bool)

(assert (=> b!1884796 (= c!307980 ((_ is Star!5129) (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))))))

(declare-fun d!577769 () Bool)

(declare-fun res!841551 () Bool)

(assert (=> d!577769 (=> res!841551 e!1202322)))

(assert (=> d!577769 (= res!841551 ((_ is ElementMatch!5129) (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))))))

(assert (=> d!577769 (= (validRegex!2099 (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))) e!1202322)))

(declare-fun bm!116738 () Bool)

(assert (=> bm!116738 (= call!116744 (validRegex!2099 (ite c!307980 (reg!5458 (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))) (ite c!307979 (regTwo!10771 (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))) (regTwo!10770 (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659)))))))))

(declare-fun bm!116739 () Bool)

(assert (=> bm!116739 (= call!116743 (validRegex!2099 (ite c!307979 (regOne!10771 (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))) (regOne!10770 (ite c!307942 (regOne!10771 r!13659) (regOne!10770 r!13659))))))))

(declare-fun b!1884797 () Bool)

(declare-fun res!841550 () Bool)

(declare-fun e!1202328 () Bool)

(assert (=> b!1884797 (=> (not res!841550) (not e!1202328))))

(assert (=> b!1884797 (= res!841550 call!116743)))

(assert (=> b!1884797 (= e!1202326 e!1202328)))

(declare-fun b!1884798 () Bool)

(assert (=> b!1884798 (= e!1202323 call!116742)))

(declare-fun b!1884799 () Bool)

(assert (=> b!1884799 (= e!1202328 call!116742)))

(assert (= (and d!577769 (not res!841551)) b!1884796))

(assert (= (and b!1884796 c!307980) b!1884793))

(assert (= (and b!1884796 (not c!307980)) b!1884792))

(assert (= (and b!1884793 res!841552) b!1884794))

(assert (= (and b!1884792 c!307979) b!1884797))

(assert (= (and b!1884792 (not c!307979)) b!1884795))

(assert (= (and b!1884797 res!841550) b!1884799))

(assert (= (and b!1884795 (not res!841553)) b!1884791))

(assert (= (and b!1884791 res!841549) b!1884798))

(assert (= (or b!1884797 b!1884791) bm!116739))

(assert (= (or b!1884799 b!1884798) bm!116737))

(assert (= (or b!1884794 bm!116737) bm!116738))

(declare-fun m!2318002 () Bool)

(assert (=> b!1884793 m!2318002))

(declare-fun m!2318004 () Bool)

(assert (=> bm!116738 m!2318004))

(declare-fun m!2318006 () Bool)

(assert (=> bm!116739 m!2318006))

(assert (=> bm!116723 d!577769))

(declare-fun bs!412619 () Bool)

(declare-fun d!577771 () Bool)

(assert (= bs!412619 (and d!577771 d!577749)))

(declare-fun lambda!73835 () Int)

(assert (=> bs!412619 (= lambda!73835 lambda!73830)))

(declare-fun bs!412620 () Bool)

(assert (= bs!412620 (and d!577771 d!577747)))

(assert (=> bs!412620 (= lambda!73835 lambda!73829)))

(declare-fun bs!412621 () Bool)

(assert (= bs!412621 (and d!577771 d!577719)))

(assert (=> bs!412621 (= lambda!73835 lambda!73820)))

(declare-fun bs!412622 () Bool)

(assert (= bs!412622 (and d!577771 d!577767)))

(assert (=> bs!412622 (= lambda!73835 lambda!73834)))

(declare-fun bs!412623 () Bool)

(assert (= bs!412623 (and d!577771 d!577717)))

(assert (=> bs!412623 (= lambda!73835 lambda!73819)))

(declare-fun bs!412624 () Bool)

(assert (= bs!412624 (and d!577771 d!577733)))

(assert (=> bs!412624 (= lambda!73835 lambda!73824)))

(assert (=> d!577771 (= (inv!27905 (_2!11448 (_1!11449 (h!26350 mapValue!9050)))) (forall!4422 (exprs!1483 (_2!11448 (_1!11449 (h!26350 mapValue!9050)))) lambda!73835))))

(declare-fun bs!412625 () Bool)

(assert (= bs!412625 d!577771))

(declare-fun m!2318008 () Bool)

(assert (=> bs!412625 m!2318008))

(assert (=> b!1884655 d!577771))

(assert (=> d!577681 d!577693))

(assert (=> d!577681 d!577743))

(declare-fun d!577773 () Bool)

(declare-fun lt!723249 () Regex!5129)

(assert (=> d!577773 (validRegex!2099 lt!723249)))

(declare-fun generalisedUnion!495 (List!21029) Regex!5129)

(declare-fun unfocusZipperList!19 (List!21033) List!21029)

(assert (=> d!577773 (= lt!723249 (generalisedUnion!495 (unfocusZipperList!19 (toList!1015 (store ((as const (Array Context!1966 Bool)) false) (Context!1967 (Cons!20947 r!13659 Nil!20947)) true)))))))

(assert (=> d!577773 (= (unfocusZipper!55 (toList!1015 (store ((as const (Array Context!1966 Bool)) false) (Context!1967 (Cons!20947 r!13659 Nil!20947)) true))) lt!723249)))

(declare-fun bs!412626 () Bool)

(assert (= bs!412626 d!577773))

(declare-fun m!2318010 () Bool)

(assert (=> bs!412626 m!2318010))

(assert (=> bs!412626 m!2317769))

(declare-fun m!2318012 () Bool)

(assert (=> bs!412626 m!2318012))

(assert (=> bs!412626 m!2318012))

(declare-fun m!2318014 () Bool)

(assert (=> bs!412626 m!2318014))

(assert (=> b!1884453 d!577773))

(declare-fun d!577775 () Bool)

(declare-fun e!1202329 () Bool)

(assert (=> d!577775 e!1202329))

(declare-fun res!841554 () Bool)

(assert (=> d!577775 (=> (not res!841554) (not e!1202329))))

(declare-fun lt!723250 () List!21033)

(assert (=> d!577775 (= res!841554 (noDuplicate!272 lt!723250))))

(assert (=> d!577775 (= lt!723250 (choose!11805 (store ((as const (Array Context!1966 Bool)) false) (Context!1967 (Cons!20947 r!13659 Nil!20947)) true)))))

(assert (=> d!577775 (= (toList!1015 (store ((as const (Array Context!1966 Bool)) false) (Context!1967 (Cons!20947 r!13659 Nil!20947)) true)) lt!723250)))

(declare-fun b!1884800 () Bool)

(assert (=> b!1884800 (= e!1202329 (= (content!3118 lt!723250) (store ((as const (Array Context!1966 Bool)) false) (Context!1967 (Cons!20947 r!13659 Nil!20947)) true)))))

(assert (= (and d!577775 res!841554) b!1884800))

(declare-fun m!2318016 () Bool)

(assert (=> d!577775 m!2318016))

(assert (=> d!577775 m!2317767))

(declare-fun m!2318018 () Bool)

(assert (=> d!577775 m!2318018))

(declare-fun m!2318020 () Bool)

(assert (=> b!1884800 m!2318020))

(assert (=> b!1884453 d!577775))

(declare-fun bs!412627 () Bool)

(declare-fun d!577777 () Bool)

(assert (= bs!412627 (and d!577777 d!577749)))

(declare-fun lambda!73836 () Int)

(assert (=> bs!412627 (= lambda!73836 lambda!73830)))

(declare-fun bs!412628 () Bool)

(assert (= bs!412628 (and d!577777 d!577747)))

(assert (=> bs!412628 (= lambda!73836 lambda!73829)))

(declare-fun bs!412629 () Bool)

(assert (= bs!412629 (and d!577777 d!577719)))

(assert (=> bs!412629 (= lambda!73836 lambda!73820)))

(declare-fun bs!412630 () Bool)

(assert (= bs!412630 (and d!577777 d!577767)))

(assert (=> bs!412630 (= lambda!73836 lambda!73834)))

(declare-fun bs!412631 () Bool)

(assert (= bs!412631 (and d!577777 d!577717)))

(assert (=> bs!412631 (= lambda!73836 lambda!73819)))

(declare-fun bs!412632 () Bool)

(assert (= bs!412632 (and d!577777 d!577733)))

(assert (=> bs!412632 (= lambda!73836 lambda!73824)))

(declare-fun bs!412633 () Bool)

(assert (= bs!412633 (and d!577777 d!577771)))

(assert (=> bs!412633 (= lambda!73836 lambda!73835)))

(assert (=> d!577777 (= (inv!27905 (_1!11446 (_1!11447 (h!26349 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))))) (forall!4422 (exprs!1483 (_1!11446 (_1!11447 (h!26349 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))))) lambda!73836))))

(declare-fun bs!412634 () Bool)

(assert (= bs!412634 d!577777))

(declare-fun m!2318022 () Bool)

(assert (=> bs!412634 m!2318022))

(assert (=> b!1884590 d!577777))

(declare-fun bs!412635 () Bool)

(declare-fun d!577779 () Bool)

(assert (= bs!412635 (and d!577779 d!577749)))

(declare-fun lambda!73837 () Int)

(assert (=> bs!412635 (= lambda!73837 lambda!73830)))

(declare-fun bs!412636 () Bool)

(assert (= bs!412636 (and d!577779 d!577747)))

(assert (=> bs!412636 (= lambda!73837 lambda!73829)))

(declare-fun bs!412637 () Bool)

(assert (= bs!412637 (and d!577779 d!577767)))

(assert (=> bs!412637 (= lambda!73837 lambda!73834)))

(declare-fun bs!412638 () Bool)

(assert (= bs!412638 (and d!577779 d!577717)))

(assert (=> bs!412638 (= lambda!73837 lambda!73819)))

(declare-fun bs!412639 () Bool)

(assert (= bs!412639 (and d!577779 d!577733)))

(assert (=> bs!412639 (= lambda!73837 lambda!73824)))

(declare-fun bs!412640 () Bool)

(assert (= bs!412640 (and d!577779 d!577771)))

(assert (=> bs!412640 (= lambda!73837 lambda!73835)))

(declare-fun bs!412641 () Bool)

(assert (= bs!412641 (and d!577779 d!577777)))

(assert (=> bs!412641 (= lambda!73837 lambda!73836)))

(declare-fun bs!412642 () Bool)

(assert (= bs!412642 (and d!577779 d!577719)))

(assert (=> bs!412642 (= lambda!73837 lambda!73820)))

(assert (=> d!577779 (= (inv!27905 setElem!11619) (forall!4422 (exprs!1483 setElem!11619) lambda!73837))))

(declare-fun bs!412643 () Bool)

(assert (= bs!412643 d!577779))

(declare-fun m!2318024 () Bool)

(assert (=> bs!412643 m!2318024))

(assert (=> setNonEmpty!11619 d!577779))

(declare-fun b!1884801 () Bool)

(declare-fun e!1202333 () Bool)

(declare-fun e!1202331 () Bool)

(assert (=> b!1884801 (= e!1202333 e!1202331)))

(declare-fun res!841555 () Bool)

(assert (=> b!1884801 (=> (not res!841555) (not e!1202331))))

(declare-fun call!116746 () Bool)

(assert (=> b!1884801 (= res!841555 call!116746)))

(declare-fun b!1884802 () Bool)

(declare-fun e!1202335 () Bool)

(declare-fun e!1202334 () Bool)

(assert (=> b!1884802 (= e!1202335 e!1202334)))

(declare-fun c!307981 () Bool)

(assert (=> b!1884802 (= c!307981 ((_ is Union!5129) (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))))))

(declare-fun b!1884803 () Bool)

(declare-fun e!1202332 () Bool)

(assert (=> b!1884803 (= e!1202335 e!1202332)))

(declare-fun res!841558 () Bool)

(assert (=> b!1884803 (= res!841558 (not (nullable!1575 (reg!5458 (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))))))))

(assert (=> b!1884803 (=> (not res!841558) (not e!1202332))))

(declare-fun b!1884804 () Bool)

(declare-fun call!116747 () Bool)

(assert (=> b!1884804 (= e!1202332 call!116747)))

(declare-fun bm!116740 () Bool)

(declare-fun call!116745 () Bool)

(assert (=> bm!116740 (= call!116745 call!116747)))

(declare-fun b!1884805 () Bool)

(declare-fun res!841559 () Bool)

(assert (=> b!1884805 (=> res!841559 e!1202333)))

(assert (=> b!1884805 (= res!841559 (not ((_ is Concat!8982) (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659))))))))

(assert (=> b!1884805 (= e!1202334 e!1202333)))

(declare-fun b!1884806 () Bool)

(declare-fun e!1202330 () Bool)

(assert (=> b!1884806 (= e!1202330 e!1202335)))

(declare-fun c!307982 () Bool)

(assert (=> b!1884806 (= c!307982 ((_ is Star!5129) (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))))))

(declare-fun d!577781 () Bool)

(declare-fun res!841557 () Bool)

(assert (=> d!577781 (=> res!841557 e!1202330)))

(assert (=> d!577781 (= res!841557 ((_ is ElementMatch!5129) (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))))))

(assert (=> d!577781 (= (validRegex!2099 (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))) e!1202330)))

(declare-fun bm!116741 () Bool)

(assert (=> bm!116741 (= call!116747 (validRegex!2099 (ite c!307982 (reg!5458 (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))) (ite c!307981 (regTwo!10771 (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))) (regTwo!10770 (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659))))))))))

(declare-fun bm!116742 () Bool)

(assert (=> bm!116742 (= call!116746 (validRegex!2099 (ite c!307981 (regOne!10771 (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))) (regOne!10770 (ite c!307943 (reg!5458 r!13659) (ite c!307942 (regTwo!10771 r!13659) (regTwo!10770 r!13659)))))))))

(declare-fun b!1884807 () Bool)

(declare-fun res!841556 () Bool)

(declare-fun e!1202336 () Bool)

(assert (=> b!1884807 (=> (not res!841556) (not e!1202336))))

(assert (=> b!1884807 (= res!841556 call!116746)))

(assert (=> b!1884807 (= e!1202334 e!1202336)))

(declare-fun b!1884808 () Bool)

(assert (=> b!1884808 (= e!1202331 call!116745)))

(declare-fun b!1884809 () Bool)

(assert (=> b!1884809 (= e!1202336 call!116745)))

(assert (= (and d!577781 (not res!841557)) b!1884806))

(assert (= (and b!1884806 c!307982) b!1884803))

(assert (= (and b!1884806 (not c!307982)) b!1884802))

(assert (= (and b!1884803 res!841558) b!1884804))

(assert (= (and b!1884802 c!307981) b!1884807))

(assert (= (and b!1884802 (not c!307981)) b!1884805))

(assert (= (and b!1884807 res!841556) b!1884809))

(assert (= (and b!1884805 (not res!841559)) b!1884801))

(assert (= (and b!1884801 res!841555) b!1884808))

(assert (= (or b!1884807 b!1884801) bm!116742))

(assert (= (or b!1884809 b!1884808) bm!116740))

(assert (= (or b!1884804 bm!116740) bm!116741))

(declare-fun m!2318026 () Bool)

(assert (=> b!1884803 m!2318026))

(declare-fun m!2318028 () Bool)

(assert (=> bm!116741 m!2318028))

(declare-fun m!2318030 () Bool)

(assert (=> bm!116742 m!2318030))

(assert (=> bm!116722 d!577781))

(declare-fun d!577783 () Bool)

(declare-fun c!307985 () Bool)

(assert (=> d!577783 (= c!307985 ((_ is Nil!20951) lt!723236))))

(declare-fun e!1202339 () (InoxSet Context!1966))

(assert (=> d!577783 (= (content!3118 lt!723236) e!1202339)))

(declare-fun b!1884814 () Bool)

(assert (=> b!1884814 (= e!1202339 ((as const (Array Context!1966 Bool)) false))))

(declare-fun b!1884815 () Bool)

(assert (=> b!1884815 (= e!1202339 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) (h!26352 lt!723236) true) (content!3118 (t!175030 lt!723236))))))

(assert (= (and d!577783 c!307985) b!1884814))

(assert (= (and d!577783 (not c!307985)) b!1884815))

(declare-fun m!2318032 () Bool)

(assert (=> b!1884815 m!2318032))

(declare-fun m!2318034 () Bool)

(assert (=> b!1884815 m!2318034))

(assert (=> b!1884513 d!577783))

(declare-fun bs!412644 () Bool)

(declare-fun d!577785 () Bool)

(assert (= bs!412644 (and d!577785 d!577749)))

(declare-fun lambda!73838 () Int)

(assert (=> bs!412644 (= lambda!73838 lambda!73830)))

(declare-fun bs!412645 () Bool)

(assert (= bs!412645 (and d!577785 d!577747)))

(assert (=> bs!412645 (= lambda!73838 lambda!73829)))

(declare-fun bs!412646 () Bool)

(assert (= bs!412646 (and d!577785 d!577767)))

(assert (=> bs!412646 (= lambda!73838 lambda!73834)))

(declare-fun bs!412647 () Bool)

(assert (= bs!412647 (and d!577785 d!577717)))

(assert (=> bs!412647 (= lambda!73838 lambda!73819)))

(declare-fun bs!412648 () Bool)

(assert (= bs!412648 (and d!577785 d!577733)))

(assert (=> bs!412648 (= lambda!73838 lambda!73824)))

(declare-fun bs!412649 () Bool)

(assert (= bs!412649 (and d!577785 d!577771)))

(assert (=> bs!412649 (= lambda!73838 lambda!73835)))

(declare-fun bs!412650 () Bool)

(assert (= bs!412650 (and d!577785 d!577779)))

(assert (=> bs!412650 (= lambda!73838 lambda!73837)))

(declare-fun bs!412651 () Bool)

(assert (= bs!412651 (and d!577785 d!577777)))

(assert (=> bs!412651 (= lambda!73838 lambda!73836)))

(declare-fun bs!412652 () Bool)

(assert (= bs!412652 (and d!577785 d!577719)))

(assert (=> bs!412652 (= lambda!73838 lambda!73820)))

(assert (=> d!577785 (= (inv!27905 setElem!11623) (forall!4422 (exprs!1483 setElem!11623) lambda!73838))))

(declare-fun bs!412653 () Bool)

(assert (= bs!412653 d!577785))

(declare-fun m!2318036 () Bool)

(assert (=> bs!412653 m!2318036))

(assert (=> setNonEmpty!11623 d!577785))

(declare-fun bs!412654 () Bool)

(declare-fun d!577787 () Bool)

(assert (= bs!412654 (and d!577787 d!577785)))

(declare-fun lambda!73839 () Int)

(assert (=> bs!412654 (= lambda!73839 lambda!73838)))

(declare-fun bs!412655 () Bool)

(assert (= bs!412655 (and d!577787 d!577749)))

(assert (=> bs!412655 (= lambda!73839 lambda!73830)))

(declare-fun bs!412656 () Bool)

(assert (= bs!412656 (and d!577787 d!577747)))

(assert (=> bs!412656 (= lambda!73839 lambda!73829)))

(declare-fun bs!412657 () Bool)

(assert (= bs!412657 (and d!577787 d!577767)))

(assert (=> bs!412657 (= lambda!73839 lambda!73834)))

(declare-fun bs!412658 () Bool)

(assert (= bs!412658 (and d!577787 d!577717)))

(assert (=> bs!412658 (= lambda!73839 lambda!73819)))

(declare-fun bs!412659 () Bool)

(assert (= bs!412659 (and d!577787 d!577733)))

(assert (=> bs!412659 (= lambda!73839 lambda!73824)))

(declare-fun bs!412660 () Bool)

(assert (= bs!412660 (and d!577787 d!577771)))

(assert (=> bs!412660 (= lambda!73839 lambda!73835)))

(declare-fun bs!412661 () Bool)

(assert (= bs!412661 (and d!577787 d!577779)))

(assert (=> bs!412661 (= lambda!73839 lambda!73837)))

(declare-fun bs!412662 () Bool)

(assert (= bs!412662 (and d!577787 d!577777)))

(assert (=> bs!412662 (= lambda!73839 lambda!73836)))

(declare-fun bs!412663 () Bool)

(assert (= bs!412663 (and d!577787 d!577719)))

(assert (=> bs!412663 (= lambda!73839 lambda!73820)))

(assert (=> d!577787 (= (inv!27905 setElem!11622) (forall!4422 (exprs!1483 setElem!11622) lambda!73839))))

(declare-fun bs!412664 () Bool)

(assert (= bs!412664 d!577787))

(declare-fun m!2318038 () Bool)

(assert (=> bs!412664 m!2318038))

(assert (=> setNonEmpty!11622 d!577787))

(declare-fun bs!412665 () Bool)

(declare-fun d!577789 () Bool)

(assert (= bs!412665 (and d!577789 d!577785)))

(declare-fun lambda!73840 () Int)

(assert (=> bs!412665 (= lambda!73840 lambda!73838)))

(declare-fun bs!412666 () Bool)

(assert (= bs!412666 (and d!577789 d!577749)))

(assert (=> bs!412666 (= lambda!73840 lambda!73830)))

(declare-fun bs!412667 () Bool)

(assert (= bs!412667 (and d!577789 d!577767)))

(assert (=> bs!412667 (= lambda!73840 lambda!73834)))

(declare-fun bs!412668 () Bool)

(assert (= bs!412668 (and d!577789 d!577717)))

(assert (=> bs!412668 (= lambda!73840 lambda!73819)))

(declare-fun bs!412669 () Bool)

(assert (= bs!412669 (and d!577789 d!577733)))

(assert (=> bs!412669 (= lambda!73840 lambda!73824)))

(declare-fun bs!412670 () Bool)

(assert (= bs!412670 (and d!577789 d!577771)))

(assert (=> bs!412670 (= lambda!73840 lambda!73835)))

(declare-fun bs!412671 () Bool)

(assert (= bs!412671 (and d!577789 d!577779)))

(assert (=> bs!412671 (= lambda!73840 lambda!73837)))

(declare-fun bs!412672 () Bool)

(assert (= bs!412672 (and d!577789 d!577787)))

(assert (=> bs!412672 (= lambda!73840 lambda!73839)))

(declare-fun bs!412673 () Bool)

(assert (= bs!412673 (and d!577789 d!577747)))

(assert (=> bs!412673 (= lambda!73840 lambda!73829)))

(declare-fun bs!412674 () Bool)

(assert (= bs!412674 (and d!577789 d!577777)))

(assert (=> bs!412674 (= lambda!73840 lambda!73836)))

(declare-fun bs!412675 () Bool)

(assert (= bs!412675 (and d!577789 d!577719)))

(assert (=> bs!412675 (= lambda!73840 lambda!73820)))

(assert (=> d!577789 (= (inv!27905 (_2!11448 (_1!11449 (h!26350 mapDefault!9057)))) (forall!4422 (exprs!1483 (_2!11448 (_1!11449 (h!26350 mapDefault!9057)))) lambda!73840))))

(declare-fun bs!412676 () Bool)

(assert (= bs!412676 d!577789))

(declare-fun m!2318040 () Bool)

(assert (=> bs!412676 m!2318040))

(assert (=> b!1884652 d!577789))

(declare-fun d!577791 () Bool)

(declare-fun res!841564 () Bool)

(declare-fun e!1202342 () Bool)

(assert (=> d!577791 (=> (not res!841564) (not e!1202342))))

(assert (=> d!577791 (= res!841564 (<= (size!16640 (list!8562 (xs!9854 (c!307918 input!6054)))) 512))))

(assert (=> d!577791 (= (inv!27904 (c!307918 input!6054)) e!1202342)))

(declare-fun b!1884820 () Bool)

(declare-fun res!841565 () Bool)

(assert (=> b!1884820 (=> (not res!841565) (not e!1202342))))

(assert (=> b!1884820 (= res!841565 (= (csize!14159 (c!307918 input!6054)) (size!16640 (list!8562 (xs!9854 (c!307918 input!6054))))))))

(declare-fun b!1884821 () Bool)

(assert (=> b!1884821 (= e!1202342 (and (> (csize!14159 (c!307918 input!6054)) 0) (<= (csize!14159 (c!307918 input!6054)) 512)))))

(assert (= (and d!577791 res!841564) b!1884820))

(assert (= (and b!1884820 res!841565) b!1884821))

(assert (=> d!577791 m!2317977))

(assert (=> d!577791 m!2317977))

(declare-fun m!2318042 () Bool)

(assert (=> d!577791 m!2318042))

(assert (=> b!1884820 m!2317977))

(assert (=> b!1884820 m!2317977))

(assert (=> b!1884820 m!2318042))

(assert (=> b!1884557 d!577791))

(declare-fun d!577793 () Bool)

(declare-fun res!841572 () Bool)

(declare-fun e!1202345 () Bool)

(assert (=> d!577793 (=> (not res!841572) (not e!1202345))))

(assert (=> d!577793 (= res!841572 (= (csize!14158 (c!307918 input!6054)) (+ (size!16641 (left!16838 (c!307918 input!6054))) (size!16641 (right!17168 (c!307918 input!6054))))))))

(assert (=> d!577793 (= (inv!27903 (c!307918 input!6054)) e!1202345)))

(declare-fun b!1884828 () Bool)

(declare-fun res!841573 () Bool)

(assert (=> b!1884828 (=> (not res!841573) (not e!1202345))))

(assert (=> b!1884828 (= res!841573 (and (not (= (left!16838 (c!307918 input!6054)) Empty!6964)) (not (= (right!17168 (c!307918 input!6054)) Empty!6964))))))

(declare-fun b!1884829 () Bool)

(declare-fun res!841574 () Bool)

(assert (=> b!1884829 (=> (not res!841574) (not e!1202345))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1884829 (= res!841574 (= (cheight!7175 (c!307918 input!6054)) (+ (max!0 (height!1094 (left!16838 (c!307918 input!6054))) (height!1094 (right!17168 (c!307918 input!6054)))) 1)))))

(declare-fun b!1884830 () Bool)

(assert (=> b!1884830 (= e!1202345 (<= 0 (cheight!7175 (c!307918 input!6054))))))

(assert (= (and d!577793 res!841572) b!1884828))

(assert (= (and b!1884828 res!841573) b!1884829))

(assert (= (and b!1884829 res!841574) b!1884830))

(declare-fun m!2318044 () Bool)

(assert (=> d!577793 m!2318044))

(declare-fun m!2318046 () Bool)

(assert (=> d!577793 m!2318046))

(assert (=> b!1884829 m!2317945))

(assert (=> b!1884829 m!2317947))

(assert (=> b!1884829 m!2317945))

(assert (=> b!1884829 m!2317947))

(declare-fun m!2318048 () Bool)

(assert (=> b!1884829 m!2318048))

(assert (=> b!1884555 d!577793))

(declare-fun bs!412677 () Bool)

(declare-fun d!577795 () Bool)

(assert (= bs!412677 (and d!577795 d!577785)))

(declare-fun lambda!73841 () Int)

(assert (=> bs!412677 (= lambda!73841 lambda!73838)))

(declare-fun bs!412678 () Bool)

(assert (= bs!412678 (and d!577795 d!577749)))

(assert (=> bs!412678 (= lambda!73841 lambda!73830)))

(declare-fun bs!412679 () Bool)

(assert (= bs!412679 (and d!577795 d!577789)))

(assert (=> bs!412679 (= lambda!73841 lambda!73840)))

(declare-fun bs!412680 () Bool)

(assert (= bs!412680 (and d!577795 d!577767)))

(assert (=> bs!412680 (= lambda!73841 lambda!73834)))

(declare-fun bs!412681 () Bool)

(assert (= bs!412681 (and d!577795 d!577717)))

(assert (=> bs!412681 (= lambda!73841 lambda!73819)))

(declare-fun bs!412682 () Bool)

(assert (= bs!412682 (and d!577795 d!577733)))

(assert (=> bs!412682 (= lambda!73841 lambda!73824)))

(declare-fun bs!412683 () Bool)

(assert (= bs!412683 (and d!577795 d!577771)))

(assert (=> bs!412683 (= lambda!73841 lambda!73835)))

(declare-fun bs!412684 () Bool)

(assert (= bs!412684 (and d!577795 d!577779)))

(assert (=> bs!412684 (= lambda!73841 lambda!73837)))

(declare-fun bs!412685 () Bool)

(assert (= bs!412685 (and d!577795 d!577787)))

(assert (=> bs!412685 (= lambda!73841 lambda!73839)))

(declare-fun bs!412686 () Bool)

(assert (= bs!412686 (and d!577795 d!577747)))

(assert (=> bs!412686 (= lambda!73841 lambda!73829)))

(declare-fun bs!412687 () Bool)

(assert (= bs!412687 (and d!577795 d!577777)))

(assert (=> bs!412687 (= lambda!73841 lambda!73836)))

(declare-fun bs!412688 () Bool)

(assert (= bs!412688 (and d!577795 d!577719)))

(assert (=> bs!412688 (= lambda!73841 lambda!73820)))

(assert (=> d!577795 (= (inv!27905 setElem!11614) (forall!4422 (exprs!1483 setElem!11614) lambda!73841))))

(declare-fun bs!412689 () Bool)

(assert (= bs!412689 d!577795))

(declare-fun m!2318050 () Bool)

(assert (=> bs!412689 m!2318050))

(assert (=> setNonEmpty!11614 d!577795))

(declare-fun bs!412690 () Bool)

(declare-fun d!577797 () Bool)

(assert (= bs!412690 (and d!577797 d!577785)))

(declare-fun lambda!73842 () Int)

(assert (=> bs!412690 (= lambda!73842 lambda!73838)))

(declare-fun bs!412691 () Bool)

(assert (= bs!412691 (and d!577797 d!577749)))

(assert (=> bs!412691 (= lambda!73842 lambda!73830)))

(declare-fun bs!412692 () Bool)

(assert (= bs!412692 (and d!577797 d!577789)))

(assert (=> bs!412692 (= lambda!73842 lambda!73840)))

(declare-fun bs!412693 () Bool)

(assert (= bs!412693 (and d!577797 d!577767)))

(assert (=> bs!412693 (= lambda!73842 lambda!73834)))

(declare-fun bs!412694 () Bool)

(assert (= bs!412694 (and d!577797 d!577717)))

(assert (=> bs!412694 (= lambda!73842 lambda!73819)))

(declare-fun bs!412695 () Bool)

(assert (= bs!412695 (and d!577797 d!577733)))

(assert (=> bs!412695 (= lambda!73842 lambda!73824)))

(declare-fun bs!412696 () Bool)

(assert (= bs!412696 (and d!577797 d!577779)))

(assert (=> bs!412696 (= lambda!73842 lambda!73837)))

(declare-fun bs!412697 () Bool)

(assert (= bs!412697 (and d!577797 d!577787)))

(assert (=> bs!412697 (= lambda!73842 lambda!73839)))

(declare-fun bs!412698 () Bool)

(assert (= bs!412698 (and d!577797 d!577747)))

(assert (=> bs!412698 (= lambda!73842 lambda!73829)))

(declare-fun bs!412699 () Bool)

(assert (= bs!412699 (and d!577797 d!577777)))

(assert (=> bs!412699 (= lambda!73842 lambda!73836)))

(declare-fun bs!412700 () Bool)

(assert (= bs!412700 (and d!577797 d!577719)))

(assert (=> bs!412700 (= lambda!73842 lambda!73820)))

(declare-fun bs!412701 () Bool)

(assert (= bs!412701 (and d!577797 d!577771)))

(assert (=> bs!412701 (= lambda!73842 lambda!73835)))

(declare-fun bs!412702 () Bool)

(assert (= bs!412702 (and d!577797 d!577795)))

(assert (=> bs!412702 (= lambda!73842 lambda!73841)))

(assert (=> d!577797 (= (inv!27905 setElem!11632) (forall!4422 (exprs!1483 setElem!11632) lambda!73842))))

(declare-fun bs!412703 () Bool)

(assert (= bs!412703 d!577797))

(declare-fun m!2318052 () Bool)

(assert (=> bs!412703 m!2318052))

(assert (=> setNonEmpty!11632 d!577797))

(declare-fun d!577799 () Bool)

(assert (=> d!577799 (= (inv!27906 (xs!9854 (c!307918 input!6054))) (<= (size!16640 (innerList!7024 (xs!9854 (c!307918 input!6054)))) 2147483647))))

(declare-fun bs!412704 () Bool)

(assert (= bs!412704 d!577799))

(declare-fun m!2318054 () Bool)

(assert (=> bs!412704 m!2318054))

(assert (=> b!1884666 d!577799))

(assert (=> d!577683 d!577687))

(assert (=> d!577683 d!577701))

(declare-fun d!577801 () Bool)

(assert (=> d!577801 (= (matchR!2475 r!13659 lt!723214) (matchZipper!93 lt!723209 lt!723214))))

(assert (=> d!577801 true))

(declare-fun _$44!1266 () Unit!35464)

(assert (=> d!577801 (= (choose!11803 lt!723209 lt!723208 r!13659 lt!723214) _$44!1266)))

(declare-fun bs!412705 () Bool)

(assert (= bs!412705 d!577801))

(assert (=> bs!412705 m!2317737))

(assert (=> bs!412705 m!2317743))

(assert (=> d!577683 d!577801))

(assert (=> d!577683 d!577703))

(declare-fun d!577803 () Bool)

(assert (=> d!577803 (= (nullable!1575 (reg!5458 r!13659)) (nullableFct!350 (reg!5458 r!13659)))))

(declare-fun bs!412706 () Bool)

(assert (= bs!412706 d!577803))

(declare-fun m!2318056 () Bool)

(assert (=> bs!412706 m!2318056))

(assert (=> b!1884536 d!577803))

(declare-fun bs!412707 () Bool)

(declare-fun d!577805 () Bool)

(assert (= bs!412707 (and d!577805 d!577785)))

(declare-fun lambda!73843 () Int)

(assert (=> bs!412707 (= lambda!73843 lambda!73838)))

(declare-fun bs!412708 () Bool)

(assert (= bs!412708 (and d!577805 d!577749)))

(assert (=> bs!412708 (= lambda!73843 lambda!73830)))

(declare-fun bs!412709 () Bool)

(assert (= bs!412709 (and d!577805 d!577789)))

(assert (=> bs!412709 (= lambda!73843 lambda!73840)))

(declare-fun bs!412710 () Bool)

(assert (= bs!412710 (and d!577805 d!577767)))

(assert (=> bs!412710 (= lambda!73843 lambda!73834)))

(declare-fun bs!412711 () Bool)

(assert (= bs!412711 (and d!577805 d!577717)))

(assert (=> bs!412711 (= lambda!73843 lambda!73819)))

(declare-fun bs!412712 () Bool)

(assert (= bs!412712 (and d!577805 d!577797)))

(assert (=> bs!412712 (= lambda!73843 lambda!73842)))

(declare-fun bs!412713 () Bool)

(assert (= bs!412713 (and d!577805 d!577733)))

(assert (=> bs!412713 (= lambda!73843 lambda!73824)))

(declare-fun bs!412714 () Bool)

(assert (= bs!412714 (and d!577805 d!577779)))

(assert (=> bs!412714 (= lambda!73843 lambda!73837)))

(declare-fun bs!412715 () Bool)

(assert (= bs!412715 (and d!577805 d!577787)))

(assert (=> bs!412715 (= lambda!73843 lambda!73839)))

(declare-fun bs!412716 () Bool)

(assert (= bs!412716 (and d!577805 d!577747)))

(assert (=> bs!412716 (= lambda!73843 lambda!73829)))

(declare-fun bs!412717 () Bool)

(assert (= bs!412717 (and d!577805 d!577777)))

(assert (=> bs!412717 (= lambda!73843 lambda!73836)))

(declare-fun bs!412718 () Bool)

(assert (= bs!412718 (and d!577805 d!577719)))

(assert (=> bs!412718 (= lambda!73843 lambda!73820)))

(declare-fun bs!412719 () Bool)

(assert (= bs!412719 (and d!577805 d!577771)))

(assert (=> bs!412719 (= lambda!73843 lambda!73835)))

(declare-fun bs!412720 () Bool)

(assert (= bs!412720 (and d!577805 d!577795)))

(assert (=> bs!412720 (= lambda!73843 lambda!73841)))

(assert (=> d!577805 (= (inv!27905 (_2!11448 (_1!11449 (h!26350 mapValue!9057)))) (forall!4422 (exprs!1483 (_2!11448 (_1!11449 (h!26350 mapValue!9057)))) lambda!73843))))

(declare-fun bs!412721 () Bool)

(assert (= bs!412721 d!577805))

(declare-fun m!2318058 () Bool)

(assert (=> bs!412721 m!2318058))

(assert (=> b!1884649 d!577805))

(declare-fun bs!412722 () Bool)

(declare-fun d!577807 () Bool)

(assert (= bs!412722 (and d!577807 d!577785)))

(declare-fun lambda!73844 () Int)

(assert (=> bs!412722 (= lambda!73844 lambda!73838)))

(declare-fun bs!412723 () Bool)

(assert (= bs!412723 (and d!577807 d!577749)))

(assert (=> bs!412723 (= lambda!73844 lambda!73830)))

(declare-fun bs!412724 () Bool)

(assert (= bs!412724 (and d!577807 d!577789)))

(assert (=> bs!412724 (= lambda!73844 lambda!73840)))

(declare-fun bs!412725 () Bool)

(assert (= bs!412725 (and d!577807 d!577767)))

(assert (=> bs!412725 (= lambda!73844 lambda!73834)))

(declare-fun bs!412726 () Bool)

(assert (= bs!412726 (and d!577807 d!577717)))

(assert (=> bs!412726 (= lambda!73844 lambda!73819)))

(declare-fun bs!412727 () Bool)

(assert (= bs!412727 (and d!577807 d!577797)))

(assert (=> bs!412727 (= lambda!73844 lambda!73842)))

(declare-fun bs!412728 () Bool)

(assert (= bs!412728 (and d!577807 d!577733)))

(assert (=> bs!412728 (= lambda!73844 lambda!73824)))

(declare-fun bs!412729 () Bool)

(assert (= bs!412729 (and d!577807 d!577779)))

(assert (=> bs!412729 (= lambda!73844 lambda!73837)))

(declare-fun bs!412730 () Bool)

(assert (= bs!412730 (and d!577807 d!577805)))

(assert (=> bs!412730 (= lambda!73844 lambda!73843)))

(declare-fun bs!412731 () Bool)

(assert (= bs!412731 (and d!577807 d!577787)))

(assert (=> bs!412731 (= lambda!73844 lambda!73839)))

(declare-fun bs!412732 () Bool)

(assert (= bs!412732 (and d!577807 d!577747)))

(assert (=> bs!412732 (= lambda!73844 lambda!73829)))

(declare-fun bs!412733 () Bool)

(assert (= bs!412733 (and d!577807 d!577777)))

(assert (=> bs!412733 (= lambda!73844 lambda!73836)))

(declare-fun bs!412734 () Bool)

(assert (= bs!412734 (and d!577807 d!577719)))

(assert (=> bs!412734 (= lambda!73844 lambda!73820)))

(declare-fun bs!412735 () Bool)

(assert (= bs!412735 (and d!577807 d!577771)))

(assert (=> bs!412735 (= lambda!73844 lambda!73835)))

(declare-fun bs!412736 () Bool)

(assert (= bs!412736 (and d!577807 d!577795)))

(assert (=> bs!412736 (= lambda!73844 lambda!73841)))

(assert (=> d!577807 (= (inv!27905 setElem!11613) (forall!4422 (exprs!1483 setElem!11613) lambda!73844))))

(declare-fun bs!412737 () Bool)

(assert (= bs!412737 d!577807))

(declare-fun m!2318060 () Bool)

(assert (=> bs!412737 m!2318060))

(assert (=> setNonEmpty!11613 d!577807))

(assert (=> b!1884514 d!577735))

(declare-fun d!577809 () Bool)

(declare-fun c!307986 () Bool)

(assert (=> d!577809 (= c!307986 (isEmpty!12989 (tail!2915 (dropList!756 input!6054 0))))))

(declare-fun e!1202346 () Bool)

(assert (=> d!577809 (= (matchZipper!93 (derivationStepZipper!80 lt!723209 (head!4386 (dropList!756 input!6054 0))) (tail!2915 (dropList!756 input!6054 0))) e!1202346)))

(declare-fun b!1884831 () Bool)

(assert (=> b!1884831 (= e!1202346 (nullableZipper!42 (derivationStepZipper!80 lt!723209 (head!4386 (dropList!756 input!6054 0)))))))

(declare-fun b!1884832 () Bool)

(assert (=> b!1884832 (= e!1202346 (matchZipper!93 (derivationStepZipper!80 (derivationStepZipper!80 lt!723209 (head!4386 (dropList!756 input!6054 0))) (head!4386 (tail!2915 (dropList!756 input!6054 0)))) (tail!2915 (tail!2915 (dropList!756 input!6054 0)))))))

(assert (= (and d!577809 c!307986) b!1884831))

(assert (= (and d!577809 (not c!307986)) b!1884832))

(assert (=> d!577809 m!2317803))

(declare-fun m!2318062 () Bool)

(assert (=> d!577809 m!2318062))

(assert (=> b!1884831 m!2317801))

(declare-fun m!2318064 () Bool)

(assert (=> b!1884831 m!2318064))

(assert (=> b!1884832 m!2317803))

(declare-fun m!2318066 () Bool)

(assert (=> b!1884832 m!2318066))

(assert (=> b!1884832 m!2317801))

(assert (=> b!1884832 m!2318066))

(declare-fun m!2318068 () Bool)

(assert (=> b!1884832 m!2318068))

(assert (=> b!1884832 m!2317803))

(declare-fun m!2318070 () Bool)

(assert (=> b!1884832 m!2318070))

(assert (=> b!1884832 m!2318068))

(assert (=> b!1884832 m!2318070))

(declare-fun m!2318072 () Bool)

(assert (=> b!1884832 m!2318072))

(assert (=> b!1884510 d!577809))

(declare-fun bs!412738 () Bool)

(declare-fun d!577811 () Bool)

(assert (= bs!412738 (and d!577811 d!577723)))

(declare-fun lambda!73845 () Int)

(assert (=> bs!412738 (= (= (head!4386 (dropList!756 input!6054 0)) (head!4386 lt!723214)) (= lambda!73845 lambda!73823))))

(declare-fun bs!412739 () Bool)

(assert (= bs!412739 (and d!577811 d!577739)))

(assert (=> bs!412739 (= (= (head!4386 (dropList!756 input!6054 0)) (apply!5538 input!6054 0)) (= lambda!73845 lambda!73828))))

(assert (=> d!577811 true))

(assert (=> d!577811 (= (derivationStepZipper!80 lt!723209 (head!4386 (dropList!756 input!6054 0))) (flatMap!129 lt!723209 lambda!73845))))

(declare-fun bs!412740 () Bool)

(assert (= bs!412740 d!577811))

(declare-fun m!2318074 () Bool)

(assert (=> bs!412740 m!2318074))

(assert (=> b!1884510 d!577811))

(declare-fun d!577813 () Bool)

(assert (=> d!577813 (= (head!4386 (dropList!756 input!6054 0)) (h!26351 (dropList!756 input!6054 0)))))

(assert (=> b!1884510 d!577813))

(declare-fun d!577815 () Bool)

(assert (=> d!577815 (= (tail!2915 (dropList!756 input!6054 0)) (t!175029 (dropList!756 input!6054 0)))))

(assert (=> b!1884510 d!577815))

(assert (=> b!1884503 d!577735))

(declare-fun bs!412741 () Bool)

(declare-fun d!577817 () Bool)

(assert (= bs!412741 (and d!577817 d!577785)))

(declare-fun lambda!73846 () Int)

(assert (=> bs!412741 (= lambda!73846 lambda!73838)))

(declare-fun bs!412742 () Bool)

(assert (= bs!412742 (and d!577817 d!577749)))

(assert (=> bs!412742 (= lambda!73846 lambda!73830)))

(declare-fun bs!412743 () Bool)

(assert (= bs!412743 (and d!577817 d!577789)))

(assert (=> bs!412743 (= lambda!73846 lambda!73840)))

(declare-fun bs!412744 () Bool)

(assert (= bs!412744 (and d!577817 d!577767)))

(assert (=> bs!412744 (= lambda!73846 lambda!73834)))

(declare-fun bs!412745 () Bool)

(assert (= bs!412745 (and d!577817 d!577717)))

(assert (=> bs!412745 (= lambda!73846 lambda!73819)))

(declare-fun bs!412746 () Bool)

(assert (= bs!412746 (and d!577817 d!577797)))

(assert (=> bs!412746 (= lambda!73846 lambda!73842)))

(declare-fun bs!412747 () Bool)

(assert (= bs!412747 (and d!577817 d!577733)))

(assert (=> bs!412747 (= lambda!73846 lambda!73824)))

(declare-fun bs!412748 () Bool)

(assert (= bs!412748 (and d!577817 d!577779)))

(assert (=> bs!412748 (= lambda!73846 lambda!73837)))

(declare-fun bs!412749 () Bool)

(assert (= bs!412749 (and d!577817 d!577805)))

(assert (=> bs!412749 (= lambda!73846 lambda!73843)))

(declare-fun bs!412750 () Bool)

(assert (= bs!412750 (and d!577817 d!577807)))

(assert (=> bs!412750 (= lambda!73846 lambda!73844)))

(declare-fun bs!412751 () Bool)

(assert (= bs!412751 (and d!577817 d!577787)))

(assert (=> bs!412751 (= lambda!73846 lambda!73839)))

(declare-fun bs!412752 () Bool)

(assert (= bs!412752 (and d!577817 d!577747)))

(assert (=> bs!412752 (= lambda!73846 lambda!73829)))

(declare-fun bs!412753 () Bool)

(assert (= bs!412753 (and d!577817 d!577777)))

(assert (=> bs!412753 (= lambda!73846 lambda!73836)))

(declare-fun bs!412754 () Bool)

(assert (= bs!412754 (and d!577817 d!577719)))

(assert (=> bs!412754 (= lambda!73846 lambda!73820)))

(declare-fun bs!412755 () Bool)

(assert (= bs!412755 (and d!577817 d!577771)))

(assert (=> bs!412755 (= lambda!73846 lambda!73835)))

(declare-fun bs!412756 () Bool)

(assert (= bs!412756 (and d!577817 d!577795)))

(assert (=> bs!412756 (= lambda!73846 lambda!73841)))

(assert (=> d!577817 (= (inv!27905 setElem!11630) (forall!4422 (exprs!1483 setElem!11630) lambda!73846))))

(declare-fun bs!412757 () Bool)

(assert (= bs!412757 d!577817))

(declare-fun m!2318076 () Bool)

(assert (=> bs!412757 m!2318076))

(assert (=> setNonEmpty!11629 d!577817))

(declare-fun bs!412758 () Bool)

(declare-fun d!577819 () Bool)

(assert (= bs!412758 (and d!577819 d!577785)))

(declare-fun lambda!73847 () Int)

(assert (=> bs!412758 (= lambda!73847 lambda!73838)))

(declare-fun bs!412759 () Bool)

(assert (= bs!412759 (and d!577819 d!577817)))

(assert (=> bs!412759 (= lambda!73847 lambda!73846)))

(declare-fun bs!412760 () Bool)

(assert (= bs!412760 (and d!577819 d!577749)))

(assert (=> bs!412760 (= lambda!73847 lambda!73830)))

(declare-fun bs!412761 () Bool)

(assert (= bs!412761 (and d!577819 d!577789)))

(assert (=> bs!412761 (= lambda!73847 lambda!73840)))

(declare-fun bs!412762 () Bool)

(assert (= bs!412762 (and d!577819 d!577767)))

(assert (=> bs!412762 (= lambda!73847 lambda!73834)))

(declare-fun bs!412763 () Bool)

(assert (= bs!412763 (and d!577819 d!577717)))

(assert (=> bs!412763 (= lambda!73847 lambda!73819)))

(declare-fun bs!412764 () Bool)

(assert (= bs!412764 (and d!577819 d!577797)))

(assert (=> bs!412764 (= lambda!73847 lambda!73842)))

(declare-fun bs!412765 () Bool)

(assert (= bs!412765 (and d!577819 d!577733)))

(assert (=> bs!412765 (= lambda!73847 lambda!73824)))

(declare-fun bs!412766 () Bool)

(assert (= bs!412766 (and d!577819 d!577779)))

(assert (=> bs!412766 (= lambda!73847 lambda!73837)))

(declare-fun bs!412767 () Bool)

(assert (= bs!412767 (and d!577819 d!577805)))

(assert (=> bs!412767 (= lambda!73847 lambda!73843)))

(declare-fun bs!412768 () Bool)

(assert (= bs!412768 (and d!577819 d!577807)))

(assert (=> bs!412768 (= lambda!73847 lambda!73844)))

(declare-fun bs!412769 () Bool)

(assert (= bs!412769 (and d!577819 d!577787)))

(assert (=> bs!412769 (= lambda!73847 lambda!73839)))

(declare-fun bs!412770 () Bool)

(assert (= bs!412770 (and d!577819 d!577747)))

(assert (=> bs!412770 (= lambda!73847 lambda!73829)))

(declare-fun bs!412771 () Bool)

(assert (= bs!412771 (and d!577819 d!577777)))

(assert (=> bs!412771 (= lambda!73847 lambda!73836)))

(declare-fun bs!412772 () Bool)

(assert (= bs!412772 (and d!577819 d!577719)))

(assert (=> bs!412772 (= lambda!73847 lambda!73820)))

(declare-fun bs!412773 () Bool)

(assert (= bs!412773 (and d!577819 d!577771)))

(assert (=> bs!412773 (= lambda!73847 lambda!73835)))

(declare-fun bs!412774 () Bool)

(assert (= bs!412774 (and d!577819 d!577795)))

(assert (=> bs!412774 (= lambda!73847 lambda!73841)))

(assert (=> d!577819 (= (inv!27905 (_1!11446 (_1!11447 (h!26349 mapDefault!9050)))) (forall!4422 (exprs!1483 (_1!11446 (_1!11447 (h!26349 mapDefault!9050)))) lambda!73847))))

(declare-fun bs!412775 () Bool)

(assert (= bs!412775 d!577819))

(declare-fun m!2318078 () Bool)

(assert (=> bs!412775 m!2318078))

(assert (=> b!1884624 d!577819))

(declare-fun d!577821 () Bool)

(assert (=> d!577821 (= (isEmpty!12989 (tail!2915 lt!723214)) ((_ is Nil!20950) (tail!2915 lt!723214)))))

(assert (=> b!1884494 d!577821))

(assert (=> b!1884494 d!577727))

(assert (=> b!1884492 d!577725))

(assert (=> b!1884435 d!577715))

(declare-fun d!577823 () Bool)

(declare-fun e!1202359 () Bool)

(assert (=> d!577823 e!1202359))

(declare-fun res!841577 () Bool)

(assert (=> d!577823 (=> (not res!841577) (not e!1202359))))

(declare-fun lt!723253 () List!21032)

(declare-fun content!3119 (List!21032) (InoxSet C!10416))

(assert (=> d!577823 (= res!841577 (= ((_ map implies) (content!3119 lt!723253) (content!3119 (list!8561 (c!307918 input!6054)))) ((as const (InoxSet C!10416)) true)))))

(declare-fun e!1202360 () List!21032)

(assert (=> d!577823 (= lt!723253 e!1202360)))

(declare-fun c!307995 () Bool)

(assert (=> d!577823 (= c!307995 ((_ is Nil!20950) (list!8561 (c!307918 input!6054))))))

(assert (=> d!577823 (= (drop!1037 (list!8561 (c!307918 input!6054)) 0) lt!723253)))

(declare-fun b!1884851 () Bool)

(declare-fun e!1202361 () Int)

(assert (=> b!1884851 (= e!1202361 0)))

(declare-fun b!1884852 () Bool)

(declare-fun e!1202358 () List!21032)

(assert (=> b!1884852 (= e!1202358 (drop!1037 (t!175029 (list!8561 (c!307918 input!6054))) (- 0 1)))))

(declare-fun bm!116745 () Bool)

(declare-fun call!116750 () Int)

(assert (=> bm!116745 (= call!116750 (size!16640 (list!8561 (c!307918 input!6054))))))

(declare-fun b!1884853 () Bool)

(assert (=> b!1884853 (= e!1202360 e!1202358)))

(declare-fun c!307998 () Bool)

(assert (=> b!1884853 (= c!307998 (<= 0 0))))

(declare-fun b!1884854 () Bool)

(declare-fun e!1202357 () Int)

(assert (=> b!1884854 (= e!1202359 (= (size!16640 lt!723253) e!1202357))))

(declare-fun c!307997 () Bool)

(assert (=> b!1884854 (= c!307997 (<= 0 0))))

(declare-fun b!1884855 () Bool)

(assert (=> b!1884855 (= e!1202360 Nil!20950)))

(declare-fun b!1884856 () Bool)

(assert (=> b!1884856 (= e!1202357 e!1202361)))

(declare-fun c!307996 () Bool)

(assert (=> b!1884856 (= c!307996 (>= 0 call!116750))))

(declare-fun b!1884857 () Bool)

(assert (=> b!1884857 (= e!1202358 (list!8561 (c!307918 input!6054)))))

(declare-fun b!1884858 () Bool)

(assert (=> b!1884858 (= e!1202361 (- call!116750 0))))

(declare-fun b!1884859 () Bool)

(assert (=> b!1884859 (= e!1202357 call!116750)))

(assert (= (and d!577823 c!307995) b!1884855))

(assert (= (and d!577823 (not c!307995)) b!1884853))

(assert (= (and b!1884853 c!307998) b!1884857))

(assert (= (and b!1884853 (not c!307998)) b!1884852))

(assert (= (and d!577823 res!841577) b!1884854))

(assert (= (and b!1884854 c!307997) b!1884859))

(assert (= (and b!1884854 (not c!307997)) b!1884856))

(assert (= (and b!1884856 c!307996) b!1884851))

(assert (= (and b!1884856 (not c!307996)) b!1884858))

(assert (= (or b!1884859 b!1884856 b!1884858) bm!116745))

(declare-fun m!2318080 () Bool)

(assert (=> d!577823 m!2318080))

(assert (=> d!577823 m!2317787))

(declare-fun m!2318082 () Bool)

(assert (=> d!577823 m!2318082))

(declare-fun m!2318084 () Bool)

(assert (=> b!1884852 m!2318084))

(assert (=> bm!116745 m!2317787))

(declare-fun m!2318086 () Bool)

(assert (=> bm!116745 m!2318086))

(declare-fun m!2318088 () Bool)

(assert (=> b!1884854 m!2318088))

(assert (=> d!577689 d!577823))

(assert (=> d!577689 d!577757))

(declare-fun d!577825 () Bool)

(declare-fun res!841582 () Bool)

(declare-fun e!1202364 () Bool)

(assert (=> d!577825 (=> (not res!841582) (not e!1202364))))

(declare-fun valid!1568 (MutableMap!1867) Bool)

(assert (=> d!577825 (= res!841582 (valid!1568 (cache!2248 cacheUp!1015)))))

(assert (=> d!577825 (= (validCacheMapUp!182 (cache!2248 cacheUp!1015)) e!1202364)))

(declare-fun b!1884864 () Bool)

(declare-fun res!841583 () Bool)

(assert (=> b!1884864 (=> (not res!841583) (not e!1202364))))

(declare-fun invariantList!264 (List!21030) Bool)

(declare-datatypes ((ListMap!577 0))(
  ( (ListMap!578 (toList!1017 List!21030)) )
))
(declare-fun map!4477 (MutableMap!1867) ListMap!577)

(assert (=> b!1884864 (= res!841583 (invariantList!264 (toList!1017 (map!4477 (cache!2248 cacheUp!1015)))))))

(declare-fun b!1884865 () Bool)

(declare-fun lambda!73850 () Int)

(declare-fun forall!4424 (List!21030 Int) Bool)

(assert (=> b!1884865 (= e!1202364 (forall!4424 (toList!1017 (map!4477 (cache!2248 cacheUp!1015))) lambda!73850))))

(assert (= (and d!577825 res!841582) b!1884864))

(assert (= (and b!1884864 res!841583) b!1884865))

(declare-fun m!2318091 () Bool)

(assert (=> d!577825 m!2318091))

(declare-fun m!2318093 () Bool)

(assert (=> b!1884864 m!2318093))

(declare-fun m!2318095 () Bool)

(assert (=> b!1884864 m!2318095))

(assert (=> b!1884865 m!2318093))

(declare-fun m!2318097 () Bool)

(assert (=> b!1884865 m!2318097))

(assert (=> b!1884548 d!577825))

(assert (=> b!1884488 d!577821))

(assert (=> b!1884488 d!577727))

(declare-fun bs!412776 () Bool)

(declare-fun d!577827 () Bool)

(assert (= bs!412776 (and d!577827 d!577785)))

(declare-fun lambda!73851 () Int)

(assert (=> bs!412776 (= lambda!73851 lambda!73838)))

(declare-fun bs!412777 () Bool)

(assert (= bs!412777 (and d!577827 d!577817)))

(assert (=> bs!412777 (= lambda!73851 lambda!73846)))

(declare-fun bs!412778 () Bool)

(assert (= bs!412778 (and d!577827 d!577749)))

(assert (=> bs!412778 (= lambda!73851 lambda!73830)))

(declare-fun bs!412779 () Bool)

(assert (= bs!412779 (and d!577827 d!577789)))

(assert (=> bs!412779 (= lambda!73851 lambda!73840)))

(declare-fun bs!412780 () Bool)

(assert (= bs!412780 (and d!577827 d!577767)))

(assert (=> bs!412780 (= lambda!73851 lambda!73834)))

(declare-fun bs!412781 () Bool)

(assert (= bs!412781 (and d!577827 d!577717)))

(assert (=> bs!412781 (= lambda!73851 lambda!73819)))

(declare-fun bs!412782 () Bool)

(assert (= bs!412782 (and d!577827 d!577797)))

(assert (=> bs!412782 (= lambda!73851 lambda!73842)))

(declare-fun bs!412783 () Bool)

(assert (= bs!412783 (and d!577827 d!577733)))

(assert (=> bs!412783 (= lambda!73851 lambda!73824)))

(declare-fun bs!412784 () Bool)

(assert (= bs!412784 (and d!577827 d!577779)))

(assert (=> bs!412784 (= lambda!73851 lambda!73837)))

(declare-fun bs!412785 () Bool)

(assert (= bs!412785 (and d!577827 d!577805)))

(assert (=> bs!412785 (= lambda!73851 lambda!73843)))

(declare-fun bs!412786 () Bool)

(assert (= bs!412786 (and d!577827 d!577807)))

(assert (=> bs!412786 (= lambda!73851 lambda!73844)))

(declare-fun bs!412787 () Bool)

(assert (= bs!412787 (and d!577827 d!577787)))

(assert (=> bs!412787 (= lambda!73851 lambda!73839)))

(declare-fun bs!412788 () Bool)

(assert (= bs!412788 (and d!577827 d!577747)))

(assert (=> bs!412788 (= lambda!73851 lambda!73829)))

(declare-fun bs!412789 () Bool)

(assert (= bs!412789 (and d!577827 d!577819)))

(assert (=> bs!412789 (= lambda!73851 lambda!73847)))

(declare-fun bs!412790 () Bool)

(assert (= bs!412790 (and d!577827 d!577777)))

(assert (=> bs!412790 (= lambda!73851 lambda!73836)))

(declare-fun bs!412791 () Bool)

(assert (= bs!412791 (and d!577827 d!577719)))

(assert (=> bs!412791 (= lambda!73851 lambda!73820)))

(declare-fun bs!412792 () Bool)

(assert (= bs!412792 (and d!577827 d!577771)))

(assert (=> bs!412792 (= lambda!73851 lambda!73835)))

(declare-fun bs!412793 () Bool)

(assert (= bs!412793 (and d!577827 d!577795)))

(assert (=> bs!412793 (= lambda!73851 lambda!73841)))

(assert (=> d!577827 (= (inv!27905 setElem!11631) (forall!4422 (exprs!1483 setElem!11631) lambda!73851))))

(declare-fun bs!412794 () Bool)

(assert (= bs!412794 d!577827))

(declare-fun m!2318099 () Bool)

(assert (=> bs!412794 m!2318099))

(assert (=> setNonEmpty!11631 d!577827))

(declare-fun d!577829 () Bool)

(declare-fun e!1202367 () Bool)

(assert (=> d!577829 e!1202367))

(declare-fun res!841588 () Bool)

(assert (=> d!577829 (=> (not res!841588) (not e!1202367))))

(declare-fun lt!723256 () tuple3!1976)

(assert (=> d!577829 (= res!841588 (= (_1!11451 lt!723256) (derivationStepZipper!80 lt!723209 (apply!5538 input!6054 0))))))

(declare-fun choose!11806 ((InoxSet Context!1966) C!10416 CacheUp!1166 CacheDown!1162) tuple3!1976)

(assert (=> d!577829 (= lt!723256 (choose!11806 lt!723209 (apply!5538 input!6054 0) cacheUp!1015 cacheDown!1134))))

(assert (=> d!577829 (= (derivationStepZipperMem!6 lt!723209 (apply!5538 input!6054 0) cacheUp!1015 cacheDown!1134) lt!723256)))

(declare-fun b!1884870 () Bool)

(declare-fun res!841589 () Bool)

(assert (=> b!1884870 (=> (not res!841589) (not e!1202367))))

(declare-fun valid!1569 (CacheUp!1166) Bool)

(assert (=> b!1884870 (= res!841589 (valid!1569 (_2!11451 lt!723256)))))

(declare-fun b!1884871 () Bool)

(declare-fun valid!1570 (CacheDown!1162) Bool)

(assert (=> b!1884871 (= e!1202367 (valid!1570 (_3!1452 lt!723256)))))

(assert (= (and d!577829 res!841588) b!1884870))

(assert (= (and b!1884870 res!841589) b!1884871))

(assert (=> d!577829 m!2317759))

(assert (=> d!577829 m!2317793))

(assert (=> d!577829 m!2317759))

(declare-fun m!2318101 () Bool)

(assert (=> d!577829 m!2318101))

(declare-fun m!2318103 () Bool)

(assert (=> b!1884870 m!2318103))

(declare-fun m!2318105 () Bool)

(assert (=> b!1884871 m!2318105))

(assert (=> b!1884450 d!577829))

(assert (=> b!1884450 d!577741))

(declare-fun d!577831 () Bool)

(declare-fun lt!723257 () tuple3!1974)

(assert (=> d!577831 (= (_1!11450 lt!723257) (matchZipperSequence!19 (_1!11451 lt!723224) input!6054 (+ 0 1)))))

(declare-fun e!1202369 () tuple3!1974)

(assert (=> d!577831 (= lt!723257 e!1202369)))

(declare-fun c!307999 () Bool)

(assert (=> d!577831 (= c!307999 (= (+ 0 1) (size!16639 input!6054)))))

(declare-fun e!1202368 () Bool)

(assert (=> d!577831 e!1202368))

(declare-fun res!841590 () Bool)

(assert (=> d!577831 (=> (not res!841590) (not e!1202368))))

(assert (=> d!577831 (= res!841590 (>= (+ 0 1) 0))))

(assert (=> d!577831 (= (matchZipperSequenceMem!3 (_1!11451 lt!723224) input!6054 (+ 0 1) (_2!11451 lt!723224) (_3!1452 lt!723224)) lt!723257)))

(declare-fun b!1884872 () Bool)

(assert (=> b!1884872 (= e!1202368 (<= (+ 0 1) (size!16639 input!6054)))))

(declare-fun b!1884873 () Bool)

(assert (=> b!1884873 (= e!1202369 (tuple3!1975 (nullableZipper!42 (_1!11451 lt!723224)) (_2!11451 lt!723224) (_3!1452 lt!723224)))))

(declare-fun b!1884874 () Bool)

(declare-fun lt!723258 () tuple3!1974)

(assert (=> b!1884874 (= e!1202369 (tuple3!1975 (_1!11450 lt!723258) (_2!11450 lt!723258) (_3!1451 lt!723258)))))

(declare-fun lt!723259 () tuple3!1976)

(assert (=> b!1884874 (= lt!723259 (derivationStepZipperMem!6 (_1!11451 lt!723224) (apply!5538 input!6054 (+ 0 1)) (_2!11451 lt!723224) (_3!1452 lt!723224)))))

(assert (=> b!1884874 (= lt!723258 (matchZipperSequenceMem!3 (_1!11451 lt!723259) input!6054 (+ 0 1 1) (_2!11451 lt!723259) (_3!1452 lt!723259)))))

(assert (= (and d!577831 res!841590) b!1884872))

(assert (= (and d!577831 c!307999) b!1884873))

(assert (= (and d!577831 (not c!307999)) b!1884874))

(declare-fun m!2318107 () Bool)

(assert (=> d!577831 m!2318107))

(assert (=> d!577831 m!2317755))

(assert (=> b!1884872 m!2317755))

(declare-fun m!2318109 () Bool)

(assert (=> b!1884873 m!2318109))

(assert (=> b!1884874 m!2317921))

(assert (=> b!1884874 m!2317921))

(declare-fun m!2318111 () Bool)

(assert (=> b!1884874 m!2318111))

(declare-fun m!2318113 () Bool)

(assert (=> b!1884874 m!2318113))

(assert (=> b!1884450 d!577831))

(assert (=> b!1884448 d!577743))

(declare-fun bs!412795 () Bool)

(declare-fun d!577833 () Bool)

(assert (= bs!412795 (and d!577833 d!577785)))

(declare-fun lambda!73852 () Int)

(assert (=> bs!412795 (= lambda!73852 lambda!73838)))

(declare-fun bs!412796 () Bool)

(assert (= bs!412796 (and d!577833 d!577817)))

(assert (=> bs!412796 (= lambda!73852 lambda!73846)))

(declare-fun bs!412797 () Bool)

(assert (= bs!412797 (and d!577833 d!577749)))

(assert (=> bs!412797 (= lambda!73852 lambda!73830)))

(declare-fun bs!412798 () Bool)

(assert (= bs!412798 (and d!577833 d!577789)))

(assert (=> bs!412798 (= lambda!73852 lambda!73840)))

(declare-fun bs!412799 () Bool)

(assert (= bs!412799 (and d!577833 d!577767)))

(assert (=> bs!412799 (= lambda!73852 lambda!73834)))

(declare-fun bs!412800 () Bool)

(assert (= bs!412800 (and d!577833 d!577717)))

(assert (=> bs!412800 (= lambda!73852 lambda!73819)))

(declare-fun bs!412801 () Bool)

(assert (= bs!412801 (and d!577833 d!577797)))

(assert (=> bs!412801 (= lambda!73852 lambda!73842)))

(declare-fun bs!412802 () Bool)

(assert (= bs!412802 (and d!577833 d!577733)))

(assert (=> bs!412802 (= lambda!73852 lambda!73824)))

(declare-fun bs!412803 () Bool)

(assert (= bs!412803 (and d!577833 d!577779)))

(assert (=> bs!412803 (= lambda!73852 lambda!73837)))

(declare-fun bs!412804 () Bool)

(assert (= bs!412804 (and d!577833 d!577805)))

(assert (=> bs!412804 (= lambda!73852 lambda!73843)))

(declare-fun bs!412805 () Bool)

(assert (= bs!412805 (and d!577833 d!577807)))

(assert (=> bs!412805 (= lambda!73852 lambda!73844)))

(declare-fun bs!412806 () Bool)

(assert (= bs!412806 (and d!577833 d!577787)))

(assert (=> bs!412806 (= lambda!73852 lambda!73839)))

(declare-fun bs!412807 () Bool)

(assert (= bs!412807 (and d!577833 d!577747)))

(assert (=> bs!412807 (= lambda!73852 lambda!73829)))

(declare-fun bs!412808 () Bool)

(assert (= bs!412808 (and d!577833 d!577819)))

(assert (=> bs!412808 (= lambda!73852 lambda!73847)))

(declare-fun bs!412809 () Bool)

(assert (= bs!412809 (and d!577833 d!577777)))

(assert (=> bs!412809 (= lambda!73852 lambda!73836)))

(declare-fun bs!412810 () Bool)

(assert (= bs!412810 (and d!577833 d!577719)))

(assert (=> bs!412810 (= lambda!73852 lambda!73820)))

(declare-fun bs!412811 () Bool)

(assert (= bs!412811 (and d!577833 d!577771)))

(assert (=> bs!412811 (= lambda!73852 lambda!73835)))

(declare-fun bs!412812 () Bool)

(assert (= bs!412812 (and d!577833 d!577795)))

(assert (=> bs!412812 (= lambda!73852 lambda!73841)))

(declare-fun bs!412813 () Bool)

(assert (= bs!412813 (and d!577833 d!577827)))

(assert (=> bs!412813 (= lambda!73852 lambda!73851)))

(assert (=> d!577833 (= (inv!27905 (_1!11446 (_1!11447 (h!26349 mapValue!9051)))) (forall!4422 (exprs!1483 (_1!11446 (_1!11447 (h!26349 mapValue!9051)))) lambda!73852))))

(declare-fun bs!412814 () Bool)

(assert (= bs!412814 d!577833))

(declare-fun m!2318115 () Bool)

(assert (=> bs!412814 m!2318115))

(assert (=> b!1884587 d!577833))

(declare-fun bs!412815 () Bool)

(declare-fun d!577835 () Bool)

(assert (= bs!412815 (and d!577835 d!577785)))

(declare-fun lambda!73853 () Int)

(assert (=> bs!412815 (= lambda!73853 lambda!73838)))

(declare-fun bs!412816 () Bool)

(assert (= bs!412816 (and d!577835 d!577817)))

(assert (=> bs!412816 (= lambda!73853 lambda!73846)))

(declare-fun bs!412817 () Bool)

(assert (= bs!412817 (and d!577835 d!577749)))

(assert (=> bs!412817 (= lambda!73853 lambda!73830)))

(declare-fun bs!412818 () Bool)

(assert (= bs!412818 (and d!577835 d!577833)))

(assert (=> bs!412818 (= lambda!73853 lambda!73852)))

(declare-fun bs!412819 () Bool)

(assert (= bs!412819 (and d!577835 d!577789)))

(assert (=> bs!412819 (= lambda!73853 lambda!73840)))

(declare-fun bs!412820 () Bool)

(assert (= bs!412820 (and d!577835 d!577767)))

(assert (=> bs!412820 (= lambda!73853 lambda!73834)))

(declare-fun bs!412821 () Bool)

(assert (= bs!412821 (and d!577835 d!577717)))

(assert (=> bs!412821 (= lambda!73853 lambda!73819)))

(declare-fun bs!412822 () Bool)

(assert (= bs!412822 (and d!577835 d!577797)))

(assert (=> bs!412822 (= lambda!73853 lambda!73842)))

(declare-fun bs!412823 () Bool)

(assert (= bs!412823 (and d!577835 d!577733)))

(assert (=> bs!412823 (= lambda!73853 lambda!73824)))

(declare-fun bs!412824 () Bool)

(assert (= bs!412824 (and d!577835 d!577779)))

(assert (=> bs!412824 (= lambda!73853 lambda!73837)))

(declare-fun bs!412825 () Bool)

(assert (= bs!412825 (and d!577835 d!577805)))

(assert (=> bs!412825 (= lambda!73853 lambda!73843)))

(declare-fun bs!412826 () Bool)

(assert (= bs!412826 (and d!577835 d!577807)))

(assert (=> bs!412826 (= lambda!73853 lambda!73844)))

(declare-fun bs!412827 () Bool)

(assert (= bs!412827 (and d!577835 d!577787)))

(assert (=> bs!412827 (= lambda!73853 lambda!73839)))

(declare-fun bs!412828 () Bool)

(assert (= bs!412828 (and d!577835 d!577747)))

(assert (=> bs!412828 (= lambda!73853 lambda!73829)))

(declare-fun bs!412829 () Bool)

(assert (= bs!412829 (and d!577835 d!577819)))

(assert (=> bs!412829 (= lambda!73853 lambda!73847)))

(declare-fun bs!412830 () Bool)

(assert (= bs!412830 (and d!577835 d!577777)))

(assert (=> bs!412830 (= lambda!73853 lambda!73836)))

(declare-fun bs!412831 () Bool)

(assert (= bs!412831 (and d!577835 d!577719)))

(assert (=> bs!412831 (= lambda!73853 lambda!73820)))

(declare-fun bs!412832 () Bool)

(assert (= bs!412832 (and d!577835 d!577771)))

(assert (=> bs!412832 (= lambda!73853 lambda!73835)))

(declare-fun bs!412833 () Bool)

(assert (= bs!412833 (and d!577835 d!577795)))

(assert (=> bs!412833 (= lambda!73853 lambda!73841)))

(declare-fun bs!412834 () Bool)

(assert (= bs!412834 (and d!577835 d!577827)))

(assert (=> bs!412834 (= lambda!73853 lambda!73851)))

(assert (=> d!577835 (= (inv!27905 setElem!11618) (forall!4422 (exprs!1483 setElem!11618) lambda!73853))))

(declare-fun bs!412835 () Bool)

(assert (= bs!412835 d!577835))

(declare-fun m!2318117 () Bool)

(assert (=> bs!412835 m!2318117))

(assert (=> setNonEmpty!11618 d!577835))

(assert (=> bm!116714 d!577745))

(declare-fun bs!412836 () Bool)

(declare-fun d!577837 () Bool)

(assert (= bs!412836 (and d!577837 d!577785)))

(declare-fun lambda!73854 () Int)

(assert (=> bs!412836 (= lambda!73854 lambda!73838)))

(declare-fun bs!412837 () Bool)

(assert (= bs!412837 (and d!577837 d!577817)))

(assert (=> bs!412837 (= lambda!73854 lambda!73846)))

(declare-fun bs!412838 () Bool)

(assert (= bs!412838 (and d!577837 d!577749)))

(assert (=> bs!412838 (= lambda!73854 lambda!73830)))

(declare-fun bs!412839 () Bool)

(assert (= bs!412839 (and d!577837 d!577833)))

(assert (=> bs!412839 (= lambda!73854 lambda!73852)))

(declare-fun bs!412840 () Bool)

(assert (= bs!412840 (and d!577837 d!577789)))

(assert (=> bs!412840 (= lambda!73854 lambda!73840)))

(declare-fun bs!412841 () Bool)

(assert (= bs!412841 (and d!577837 d!577767)))

(assert (=> bs!412841 (= lambda!73854 lambda!73834)))

(declare-fun bs!412842 () Bool)

(assert (= bs!412842 (and d!577837 d!577717)))

(assert (=> bs!412842 (= lambda!73854 lambda!73819)))

(declare-fun bs!412843 () Bool)

(assert (= bs!412843 (and d!577837 d!577733)))

(assert (=> bs!412843 (= lambda!73854 lambda!73824)))

(declare-fun bs!412844 () Bool)

(assert (= bs!412844 (and d!577837 d!577779)))

(assert (=> bs!412844 (= lambda!73854 lambda!73837)))

(declare-fun bs!412845 () Bool)

(assert (= bs!412845 (and d!577837 d!577805)))

(assert (=> bs!412845 (= lambda!73854 lambda!73843)))

(declare-fun bs!412846 () Bool)

(assert (= bs!412846 (and d!577837 d!577807)))

(assert (=> bs!412846 (= lambda!73854 lambda!73844)))

(declare-fun bs!412847 () Bool)

(assert (= bs!412847 (and d!577837 d!577787)))

(assert (=> bs!412847 (= lambda!73854 lambda!73839)))

(declare-fun bs!412848 () Bool)

(assert (= bs!412848 (and d!577837 d!577747)))

(assert (=> bs!412848 (= lambda!73854 lambda!73829)))

(declare-fun bs!412849 () Bool)

(assert (= bs!412849 (and d!577837 d!577819)))

(assert (=> bs!412849 (= lambda!73854 lambda!73847)))

(declare-fun bs!412850 () Bool)

(assert (= bs!412850 (and d!577837 d!577777)))

(assert (=> bs!412850 (= lambda!73854 lambda!73836)))

(declare-fun bs!412851 () Bool)

(assert (= bs!412851 (and d!577837 d!577719)))

(assert (=> bs!412851 (= lambda!73854 lambda!73820)))

(declare-fun bs!412852 () Bool)

(assert (= bs!412852 (and d!577837 d!577797)))

(assert (=> bs!412852 (= lambda!73854 lambda!73842)))

(declare-fun bs!412853 () Bool)

(assert (= bs!412853 (and d!577837 d!577835)))

(assert (=> bs!412853 (= lambda!73854 lambda!73853)))

(declare-fun bs!412854 () Bool)

(assert (= bs!412854 (and d!577837 d!577771)))

(assert (=> bs!412854 (= lambda!73854 lambda!73835)))

(declare-fun bs!412855 () Bool)

(assert (= bs!412855 (and d!577837 d!577795)))

(assert (=> bs!412855 (= lambda!73854 lambda!73841)))

(declare-fun bs!412856 () Bool)

(assert (= bs!412856 (and d!577837 d!577827)))

(assert (=> bs!412856 (= lambda!73854 lambda!73851)))

(assert (=> d!577837 (= (inv!27905 (_1!11446 (_1!11447 (h!26349 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))))) (forall!4422 (exprs!1483 (_1!11446 (_1!11447 (h!26349 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))))) lambda!73854))))

(declare-fun bs!412857 () Bool)

(assert (= bs!412857 d!577837))

(declare-fun m!2318119 () Bool)

(assert (=> bs!412857 m!2318119))

(assert (=> b!1884593 d!577837))

(declare-fun d!577839 () Bool)

(assert (=> d!577839 (= (isEmpty!12989 (dropList!756 input!6054 0)) ((_ is Nil!20950) (dropList!756 input!6054 0)))))

(assert (=> d!577695 d!577839))

(declare-fun bs!412858 () Bool)

(declare-fun d!577841 () Bool)

(assert (= bs!412858 (and d!577841 d!577785)))

(declare-fun lambda!73855 () Int)

(assert (=> bs!412858 (= lambda!73855 lambda!73838)))

(declare-fun bs!412859 () Bool)

(assert (= bs!412859 (and d!577841 d!577817)))

(assert (=> bs!412859 (= lambda!73855 lambda!73846)))

(declare-fun bs!412860 () Bool)

(assert (= bs!412860 (and d!577841 d!577837)))

(assert (=> bs!412860 (= lambda!73855 lambda!73854)))

(declare-fun bs!412861 () Bool)

(assert (= bs!412861 (and d!577841 d!577749)))

(assert (=> bs!412861 (= lambda!73855 lambda!73830)))

(declare-fun bs!412862 () Bool)

(assert (= bs!412862 (and d!577841 d!577833)))

(assert (=> bs!412862 (= lambda!73855 lambda!73852)))

(declare-fun bs!412863 () Bool)

(assert (= bs!412863 (and d!577841 d!577789)))

(assert (=> bs!412863 (= lambda!73855 lambda!73840)))

(declare-fun bs!412864 () Bool)

(assert (= bs!412864 (and d!577841 d!577767)))

(assert (=> bs!412864 (= lambda!73855 lambda!73834)))

(declare-fun bs!412865 () Bool)

(assert (= bs!412865 (and d!577841 d!577717)))

(assert (=> bs!412865 (= lambda!73855 lambda!73819)))

(declare-fun bs!412866 () Bool)

(assert (= bs!412866 (and d!577841 d!577733)))

(assert (=> bs!412866 (= lambda!73855 lambda!73824)))

(declare-fun bs!412867 () Bool)

(assert (= bs!412867 (and d!577841 d!577779)))

(assert (=> bs!412867 (= lambda!73855 lambda!73837)))

(declare-fun bs!412868 () Bool)

(assert (= bs!412868 (and d!577841 d!577805)))

(assert (=> bs!412868 (= lambda!73855 lambda!73843)))

(declare-fun bs!412869 () Bool)

(assert (= bs!412869 (and d!577841 d!577807)))

(assert (=> bs!412869 (= lambda!73855 lambda!73844)))

(declare-fun bs!412870 () Bool)

(assert (= bs!412870 (and d!577841 d!577787)))

(assert (=> bs!412870 (= lambda!73855 lambda!73839)))

(declare-fun bs!412871 () Bool)

(assert (= bs!412871 (and d!577841 d!577747)))

(assert (=> bs!412871 (= lambda!73855 lambda!73829)))

(declare-fun bs!412872 () Bool)

(assert (= bs!412872 (and d!577841 d!577819)))

(assert (=> bs!412872 (= lambda!73855 lambda!73847)))

(declare-fun bs!412873 () Bool)

(assert (= bs!412873 (and d!577841 d!577777)))

(assert (=> bs!412873 (= lambda!73855 lambda!73836)))

(declare-fun bs!412874 () Bool)

(assert (= bs!412874 (and d!577841 d!577719)))

(assert (=> bs!412874 (= lambda!73855 lambda!73820)))

(declare-fun bs!412875 () Bool)

(assert (= bs!412875 (and d!577841 d!577797)))

(assert (=> bs!412875 (= lambda!73855 lambda!73842)))

(declare-fun bs!412876 () Bool)

(assert (= bs!412876 (and d!577841 d!577835)))

(assert (=> bs!412876 (= lambda!73855 lambda!73853)))

(declare-fun bs!412877 () Bool)

(assert (= bs!412877 (and d!577841 d!577771)))

(assert (=> bs!412877 (= lambda!73855 lambda!73835)))

(declare-fun bs!412878 () Bool)

(assert (= bs!412878 (and d!577841 d!577795)))

(assert (=> bs!412878 (= lambda!73855 lambda!73841)))

(declare-fun bs!412879 () Bool)

(assert (= bs!412879 (and d!577841 d!577827)))

(assert (=> bs!412879 (= lambda!73855 lambda!73851)))

(assert (=> d!577841 (= (inv!27905 (_2!11448 (_1!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))))) (forall!4422 (exprs!1483 (_2!11448 (_1!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))))) lambda!73855))))

(declare-fun bs!412880 () Bool)

(assert (= bs!412880 d!577841))

(declare-fun m!2318121 () Bool)

(assert (=> bs!412880 m!2318121))

(assert (=> b!1884604 d!577841))

(assert (=> d!577693 d!577743))

(declare-fun bs!412881 () Bool)

(declare-fun d!577843 () Bool)

(assert (= bs!412881 (and d!577843 d!577785)))

(declare-fun lambda!73856 () Int)

(assert (=> bs!412881 (= lambda!73856 lambda!73838)))

(declare-fun bs!412882 () Bool)

(assert (= bs!412882 (and d!577843 d!577817)))

(assert (=> bs!412882 (= lambda!73856 lambda!73846)))

(declare-fun bs!412883 () Bool)

(assert (= bs!412883 (and d!577843 d!577837)))

(assert (=> bs!412883 (= lambda!73856 lambda!73854)))

(declare-fun bs!412884 () Bool)

(assert (= bs!412884 (and d!577843 d!577749)))

(assert (=> bs!412884 (= lambda!73856 lambda!73830)))

(declare-fun bs!412885 () Bool)

(assert (= bs!412885 (and d!577843 d!577833)))

(assert (=> bs!412885 (= lambda!73856 lambda!73852)))

(declare-fun bs!412886 () Bool)

(assert (= bs!412886 (and d!577843 d!577789)))

(assert (=> bs!412886 (= lambda!73856 lambda!73840)))

(declare-fun bs!412887 () Bool)

(assert (= bs!412887 (and d!577843 d!577767)))

(assert (=> bs!412887 (= lambda!73856 lambda!73834)))

(declare-fun bs!412888 () Bool)

(assert (= bs!412888 (and d!577843 d!577717)))

(assert (=> bs!412888 (= lambda!73856 lambda!73819)))

(declare-fun bs!412889 () Bool)

(assert (= bs!412889 (and d!577843 d!577733)))

(assert (=> bs!412889 (= lambda!73856 lambda!73824)))

(declare-fun bs!412890 () Bool)

(assert (= bs!412890 (and d!577843 d!577779)))

(assert (=> bs!412890 (= lambda!73856 lambda!73837)))

(declare-fun bs!412891 () Bool)

(assert (= bs!412891 (and d!577843 d!577805)))

(assert (=> bs!412891 (= lambda!73856 lambda!73843)))

(declare-fun bs!412892 () Bool)

(assert (= bs!412892 (and d!577843 d!577807)))

(assert (=> bs!412892 (= lambda!73856 lambda!73844)))

(declare-fun bs!412893 () Bool)

(assert (= bs!412893 (and d!577843 d!577787)))

(assert (=> bs!412893 (= lambda!73856 lambda!73839)))

(declare-fun bs!412894 () Bool)

(assert (= bs!412894 (and d!577843 d!577747)))

(assert (=> bs!412894 (= lambda!73856 lambda!73829)))

(declare-fun bs!412895 () Bool)

(assert (= bs!412895 (and d!577843 d!577819)))

(assert (=> bs!412895 (= lambda!73856 lambda!73847)))

(declare-fun bs!412896 () Bool)

(assert (= bs!412896 (and d!577843 d!577777)))

(assert (=> bs!412896 (= lambda!73856 lambda!73836)))

(declare-fun bs!412897 () Bool)

(assert (= bs!412897 (and d!577843 d!577719)))

(assert (=> bs!412897 (= lambda!73856 lambda!73820)))

(declare-fun bs!412898 () Bool)

(assert (= bs!412898 (and d!577843 d!577797)))

(assert (=> bs!412898 (= lambda!73856 lambda!73842)))

(declare-fun bs!412899 () Bool)

(assert (= bs!412899 (and d!577843 d!577841)))

(assert (=> bs!412899 (= lambda!73856 lambda!73855)))

(declare-fun bs!412900 () Bool)

(assert (= bs!412900 (and d!577843 d!577835)))

(assert (=> bs!412900 (= lambda!73856 lambda!73853)))

(declare-fun bs!412901 () Bool)

(assert (= bs!412901 (and d!577843 d!577771)))

(assert (=> bs!412901 (= lambda!73856 lambda!73835)))

(declare-fun bs!412902 () Bool)

(assert (= bs!412902 (and d!577843 d!577795)))

(assert (=> bs!412902 (= lambda!73856 lambda!73841)))

(declare-fun bs!412903 () Bool)

(assert (= bs!412903 (and d!577843 d!577827)))

(assert (=> bs!412903 (= lambda!73856 lambda!73851)))

(assert (=> d!577843 (= (inv!27905 (_1!11446 (_1!11447 (h!26349 mapDefault!9054)))) (forall!4422 (exprs!1483 (_1!11446 (_1!11447 (h!26349 mapDefault!9054)))) lambda!73856))))

(declare-fun bs!412904 () Bool)

(assert (= bs!412904 d!577843))

(declare-fun m!2318123 () Bool)

(assert (=> bs!412904 m!2318123))

(assert (=> b!1884574 d!577843))

(assert (=> d!577691 d!577695))

(assert (=> d!577691 d!577689))

(assert (=> d!577691 d!577693))

(declare-fun d!577845 () Bool)

(assert (=> d!577845 (= (matchZipper!93 lt!723209 (dropList!756 input!6054 0)) (matchZipperSequence!19 lt!723209 input!6054 0))))

(assert (=> d!577845 true))

(declare-fun _$28!483 () Unit!35464)

(assert (=> d!577845 (= (choose!11804 lt!723209 input!6054 0) _$28!483)))

(declare-fun bs!412905 () Bool)

(assert (= bs!412905 d!577845))

(assert (=> bs!412905 m!2317747))

(assert (=> bs!412905 m!2317747))

(assert (=> bs!412905 m!2317749))

(assert (=> bs!412905 m!2317739))

(assert (=> d!577691 d!577845))

(declare-fun e!1202372 () Bool)

(assert (=> b!1884572 (= tp!536540 e!1202372)))

(declare-fun setIsEmpty!11633 () Bool)

(declare-fun setRes!11633 () Bool)

(assert (=> setIsEmpty!11633 setRes!11633))

(declare-fun b!1884875 () Bool)

(declare-fun e!1202370 () Bool)

(declare-fun tp!536682 () Bool)

(assert (=> b!1884875 (= e!1202370 tp!536682)))

(declare-fun e!1202371 () Bool)

(declare-fun tp!536680 () Bool)

(declare-fun setNonEmpty!11633 () Bool)

(declare-fun setElem!11633 () Context!1966)

(assert (=> setNonEmpty!11633 (= setRes!11633 (and tp!536680 (inv!27905 setElem!11633) e!1202371))))

(declare-fun setRest!11633 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11633 (= (_2!11447 (h!26349 (t!175027 mapValue!9054))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11633 true) setRest!11633))))

(declare-fun b!1884876 () Bool)

(declare-fun tp!536683 () Bool)

(assert (=> b!1884876 (= e!1202372 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 (t!175027 mapValue!9054))))) e!1202370 tp_is_empty!8907 setRes!11633 tp!536683))))

(declare-fun condSetEmpty!11633 () Bool)

(assert (=> b!1884876 (= condSetEmpty!11633 (= (_2!11447 (h!26349 (t!175027 mapValue!9054))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884877 () Bool)

(declare-fun tp!536681 () Bool)

(assert (=> b!1884877 (= e!1202371 tp!536681)))

(assert (= b!1884876 b!1884875))

(assert (= (and b!1884876 condSetEmpty!11633) setIsEmpty!11633))

(assert (= (and b!1884876 (not condSetEmpty!11633)) setNonEmpty!11633))

(assert (= setNonEmpty!11633 b!1884877))

(assert (= (and b!1884572 ((_ is Cons!20948) (t!175027 mapValue!9054))) b!1884876))

(declare-fun m!2318125 () Bool)

(assert (=> setNonEmpty!11633 m!2318125))

(declare-fun m!2318127 () Bool)

(assert (=> b!1884876 m!2318127))

(declare-fun b!1884880 () Bool)

(declare-fun e!1202373 () Bool)

(declare-fun tp!536688 () Bool)

(assert (=> b!1884880 (= e!1202373 tp!536688)))

(declare-fun b!1884878 () Bool)

(assert (=> b!1884878 (= e!1202373 tp_is_empty!8907)))

(declare-fun b!1884881 () Bool)

(declare-fun tp!536686 () Bool)

(declare-fun tp!536684 () Bool)

(assert (=> b!1884881 (= e!1202373 (and tp!536686 tp!536684))))

(assert (=> b!1884677 (= tp!536671 e!1202373)))

(declare-fun b!1884879 () Bool)

(declare-fun tp!536687 () Bool)

(declare-fun tp!536685 () Bool)

(assert (=> b!1884879 (= e!1202373 (and tp!536687 tp!536685))))

(assert (= (and b!1884677 ((_ is ElementMatch!5129) (_1!11448 (_1!11449 (h!26350 mapDefault!9051))))) b!1884878))

(assert (= (and b!1884677 ((_ is Concat!8982) (_1!11448 (_1!11449 (h!26350 mapDefault!9051))))) b!1884879))

(assert (= (and b!1884677 ((_ is Star!5129) (_1!11448 (_1!11449 (h!26350 mapDefault!9051))))) b!1884880))

(assert (= (and b!1884677 ((_ is Union!5129) (_1!11448 (_1!11449 (h!26350 mapDefault!9051))))) b!1884881))

(declare-fun e!1202376 () Bool)

(assert (=> b!1884677 (= tp!536673 e!1202376)))

(declare-fun b!1884882 () Bool)

(declare-fun e!1202375 () Bool)

(declare-fun tp!536690 () Bool)

(assert (=> b!1884882 (= e!1202375 tp!536690)))

(declare-fun b!1884883 () Bool)

(declare-fun tp!536693 () Bool)

(declare-fun setRes!11634 () Bool)

(declare-fun tp!536691 () Bool)

(assert (=> b!1884883 (= e!1202376 (and tp!536691 (inv!27905 (_2!11448 (_1!11449 (h!26350 (t!175028 mapDefault!9051))))) e!1202375 tp_is_empty!8907 setRes!11634 tp!536693))))

(declare-fun condSetEmpty!11634 () Bool)

(assert (=> b!1884883 (= condSetEmpty!11634 (= (_2!11449 (h!26350 (t!175028 mapDefault!9051))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884884 () Bool)

(declare-fun e!1202374 () Bool)

(declare-fun tp!536692 () Bool)

(assert (=> b!1884884 (= e!1202374 tp!536692)))

(declare-fun setIsEmpty!11634 () Bool)

(assert (=> setIsEmpty!11634 setRes!11634))

(declare-fun setNonEmpty!11634 () Bool)

(declare-fun setElem!11634 () Context!1966)

(declare-fun tp!536689 () Bool)

(assert (=> setNonEmpty!11634 (= setRes!11634 (and tp!536689 (inv!27905 setElem!11634) e!1202374))))

(declare-fun setRest!11634 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11634 (= (_2!11449 (h!26350 (t!175028 mapDefault!9051))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11634 true) setRest!11634))))

(assert (= b!1884883 b!1884882))

(assert (= (and b!1884883 condSetEmpty!11634) setIsEmpty!11634))

(assert (= (and b!1884883 (not condSetEmpty!11634)) setNonEmpty!11634))

(assert (= setNonEmpty!11634 b!1884884))

(assert (= (and b!1884677 ((_ is Cons!20949) (t!175028 mapDefault!9051))) b!1884883))

(declare-fun m!2318129 () Bool)

(assert (=> b!1884883 m!2318129))

(declare-fun m!2318131 () Bool)

(assert (=> setNonEmpty!11634 m!2318131))

(declare-fun b!1884887 () Bool)

(declare-fun e!1202377 () Bool)

(declare-fun tp!536698 () Bool)

(assert (=> b!1884887 (= e!1202377 tp!536698)))

(declare-fun b!1884885 () Bool)

(assert (=> b!1884885 (= e!1202377 tp_is_empty!8907)))

(declare-fun b!1884888 () Bool)

(declare-fun tp!536696 () Bool)

(declare-fun tp!536694 () Bool)

(assert (=> b!1884888 (= e!1202377 (and tp!536696 tp!536694))))

(assert (=> b!1884621 (= tp!536597 e!1202377)))

(declare-fun b!1884886 () Bool)

(declare-fun tp!536697 () Bool)

(declare-fun tp!536695 () Bool)

(assert (=> b!1884886 (= e!1202377 (and tp!536697 tp!536695))))

(assert (= (and b!1884621 ((_ is ElementMatch!5129) (reg!5458 (reg!5458 r!13659)))) b!1884885))

(assert (= (and b!1884621 ((_ is Concat!8982) (reg!5458 (reg!5458 r!13659)))) b!1884886))

(assert (= (and b!1884621 ((_ is Star!5129) (reg!5458 (reg!5458 r!13659)))) b!1884887))

(assert (= (and b!1884621 ((_ is Union!5129) (reg!5458 (reg!5458 r!13659)))) b!1884888))

(declare-fun b!1884889 () Bool)

(declare-fun tp!536701 () Bool)

(declare-fun e!1202379 () Bool)

(declare-fun tp!536700 () Bool)

(assert (=> b!1884889 (= e!1202379 (and (inv!27902 (left!16838 (left!16838 (c!307918 input!6054)))) tp!536701 (inv!27902 (right!17168 (left!16838 (c!307918 input!6054)))) tp!536700))))

(declare-fun b!1884891 () Bool)

(declare-fun e!1202378 () Bool)

(declare-fun tp!536699 () Bool)

(assert (=> b!1884891 (= e!1202378 tp!536699)))

(declare-fun b!1884890 () Bool)

(assert (=> b!1884890 (= e!1202379 (and (inv!27906 (xs!9854 (left!16838 (c!307918 input!6054)))) e!1202378))))

(assert (=> b!1884665 (= tp!536658 (and (inv!27902 (left!16838 (c!307918 input!6054))) e!1202379))))

(assert (= (and b!1884665 ((_ is Node!6964) (left!16838 (c!307918 input!6054)))) b!1884889))

(assert (= b!1884890 b!1884891))

(assert (= (and b!1884665 ((_ is Leaf!10245) (left!16838 (c!307918 input!6054)))) b!1884890))

(declare-fun m!2318133 () Bool)

(assert (=> b!1884889 m!2318133))

(declare-fun m!2318135 () Bool)

(assert (=> b!1884889 m!2318135))

(declare-fun m!2318137 () Bool)

(assert (=> b!1884890 m!2318137))

(assert (=> b!1884665 m!2317881))

(declare-fun tp!536704 () Bool)

(declare-fun e!1202381 () Bool)

(declare-fun b!1884892 () Bool)

(declare-fun tp!536703 () Bool)

(assert (=> b!1884892 (= e!1202381 (and (inv!27902 (left!16838 (right!17168 (c!307918 input!6054)))) tp!536704 (inv!27902 (right!17168 (right!17168 (c!307918 input!6054)))) tp!536703))))

(declare-fun b!1884894 () Bool)

(declare-fun e!1202380 () Bool)

(declare-fun tp!536702 () Bool)

(assert (=> b!1884894 (= e!1202380 tp!536702)))

(declare-fun b!1884893 () Bool)

(assert (=> b!1884893 (= e!1202381 (and (inv!27906 (xs!9854 (right!17168 (c!307918 input!6054)))) e!1202380))))

(assert (=> b!1884665 (= tp!536657 (and (inv!27902 (right!17168 (c!307918 input!6054))) e!1202381))))

(assert (= (and b!1884665 ((_ is Node!6964) (right!17168 (c!307918 input!6054)))) b!1884892))

(assert (= b!1884893 b!1884894))

(assert (= (and b!1884665 ((_ is Leaf!10245) (right!17168 (c!307918 input!6054)))) b!1884893))

(declare-fun m!2318139 () Bool)

(assert (=> b!1884892 m!2318139))

(declare-fun m!2318141 () Bool)

(assert (=> b!1884892 m!2318141))

(declare-fun m!2318143 () Bool)

(assert (=> b!1884893 m!2318143))

(assert (=> b!1884665 m!2317883))

(declare-fun b!1884897 () Bool)

(declare-fun e!1202382 () Bool)

(declare-fun tp!536709 () Bool)

(assert (=> b!1884897 (= e!1202382 tp!536709)))

(declare-fun b!1884895 () Bool)

(assert (=> b!1884895 (= e!1202382 tp_is_empty!8907)))

(declare-fun b!1884898 () Bool)

(declare-fun tp!536707 () Bool)

(declare-fun tp!536705 () Bool)

(assert (=> b!1884898 (= e!1202382 (and tp!536707 tp!536705))))

(assert (=> b!1884607 (= tp!536580 e!1202382)))

(declare-fun b!1884896 () Bool)

(declare-fun tp!536708 () Bool)

(declare-fun tp!536706 () Bool)

(assert (=> b!1884896 (= e!1202382 (and tp!536708 tp!536706))))

(assert (= (and b!1884607 ((_ is ElementMatch!5129) (_1!11448 (_1!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) b!1884895))

(assert (= (and b!1884607 ((_ is Concat!8982) (_1!11448 (_1!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) b!1884896))

(assert (= (and b!1884607 ((_ is Star!5129) (_1!11448 (_1!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) b!1884897))

(assert (= (and b!1884607 ((_ is Union!5129) (_1!11448 (_1!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) b!1884898))

(declare-fun e!1202385 () Bool)

(assert (=> b!1884607 (= tp!536582 e!1202385)))

(declare-fun b!1884899 () Bool)

(declare-fun e!1202384 () Bool)

(declare-fun tp!536711 () Bool)

(assert (=> b!1884899 (= e!1202384 tp!536711)))

(declare-fun tp!536712 () Bool)

(declare-fun tp!536714 () Bool)

(declare-fun b!1884900 () Bool)

(declare-fun setRes!11635 () Bool)

(assert (=> b!1884900 (= e!1202385 (and tp!536712 (inv!27905 (_2!11448 (_1!11449 (h!26350 (t!175028 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) e!1202384 tp_is_empty!8907 setRes!11635 tp!536714))))

(declare-fun condSetEmpty!11635 () Bool)

(assert (=> b!1884900 (= condSetEmpty!11635 (= (_2!11449 (h!26350 (t!175028 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884901 () Bool)

(declare-fun e!1202383 () Bool)

(declare-fun tp!536713 () Bool)

(assert (=> b!1884901 (= e!1202383 tp!536713)))

(declare-fun setIsEmpty!11635 () Bool)

(assert (=> setIsEmpty!11635 setRes!11635))

(declare-fun setNonEmpty!11635 () Bool)

(declare-fun setElem!11635 () Context!1966)

(declare-fun tp!536710 () Bool)

(assert (=> setNonEmpty!11635 (= setRes!11635 (and tp!536710 (inv!27905 setElem!11635) e!1202383))))

(declare-fun setRest!11635 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11635 (= (_2!11449 (h!26350 (t!175028 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11635 true) setRest!11635))))

(assert (= b!1884900 b!1884899))

(assert (= (and b!1884900 condSetEmpty!11635) setIsEmpty!11635))

(assert (= (and b!1884900 (not condSetEmpty!11635)) setNonEmpty!11635))

(assert (= setNonEmpty!11635 b!1884901))

(assert (= (and b!1884607 ((_ is Cons!20949) (t!175028 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))) b!1884900))

(declare-fun m!2318145 () Bool)

(assert (=> b!1884900 m!2318145))

(declare-fun m!2318147 () Bool)

(assert (=> setNonEmpty!11635 m!2318147))

(declare-fun b!1884906 () Bool)

(declare-fun e!1202388 () Bool)

(declare-fun tp!536719 () Bool)

(declare-fun tp!536720 () Bool)

(assert (=> b!1884906 (= e!1202388 (and tp!536719 tp!536720))))

(assert (=> b!1884650 (= tp!536640 e!1202388)))

(assert (= (and b!1884650 ((_ is Cons!20947) (exprs!1483 setElem!11630))) b!1884906))

(declare-fun b!1884909 () Bool)

(declare-fun e!1202389 () Bool)

(declare-fun tp!536725 () Bool)

(assert (=> b!1884909 (= e!1202389 tp!536725)))

(declare-fun b!1884907 () Bool)

(assert (=> b!1884907 (= e!1202389 tp_is_empty!8907)))

(declare-fun b!1884910 () Bool)

(declare-fun tp!536723 () Bool)

(declare-fun tp!536721 () Bool)

(assert (=> b!1884910 (= e!1202389 (and tp!536723 tp!536721))))

(assert (=> b!1884632 (= tp!536611 e!1202389)))

(declare-fun b!1884908 () Bool)

(declare-fun tp!536724 () Bool)

(declare-fun tp!536722 () Bool)

(assert (=> b!1884908 (= e!1202389 (and tp!536724 tp!536722))))

(assert (= (and b!1884632 ((_ is ElementMatch!5129) (reg!5458 (regTwo!10771 r!13659)))) b!1884907))

(assert (= (and b!1884632 ((_ is Concat!8982) (reg!5458 (regTwo!10771 r!13659)))) b!1884908))

(assert (= (and b!1884632 ((_ is Star!5129) (reg!5458 (regTwo!10771 r!13659)))) b!1884909))

(assert (= (and b!1884632 ((_ is Union!5129) (reg!5458 (regTwo!10771 r!13659)))) b!1884910))

(declare-fun b!1884911 () Bool)

(declare-fun e!1202390 () Bool)

(declare-fun tp!536726 () Bool)

(declare-fun tp!536727 () Bool)

(assert (=> b!1884911 (= e!1202390 (and tp!536726 tp!536727))))

(assert (=> b!1884625 (= tp!536599 e!1202390)))

(assert (= (and b!1884625 ((_ is Cons!20947) (exprs!1483 setElem!11624))) b!1884911))

(declare-fun b!1884914 () Bool)

(declare-fun e!1202391 () Bool)

(declare-fun tp!536732 () Bool)

(assert (=> b!1884914 (= e!1202391 tp!536732)))

(declare-fun b!1884912 () Bool)

(assert (=> b!1884912 (= e!1202391 tp_is_empty!8907)))

(declare-fun b!1884915 () Bool)

(declare-fun tp!536730 () Bool)

(declare-fun tp!536728 () Bool)

(assert (=> b!1884915 (= e!1202391 (and tp!536730 tp!536728))))

(assert (=> b!1884670 (= tp!536663 e!1202391)))

(declare-fun b!1884913 () Bool)

(declare-fun tp!536731 () Bool)

(declare-fun tp!536729 () Bool)

(assert (=> b!1884913 (= e!1202391 (and tp!536731 tp!536729))))

(assert (= (and b!1884670 ((_ is ElementMatch!5129) (reg!5458 (regOne!10770 r!13659)))) b!1884912))

(assert (= (and b!1884670 ((_ is Concat!8982) (reg!5458 (regOne!10770 r!13659)))) b!1884913))

(assert (= (and b!1884670 ((_ is Star!5129) (reg!5458 (regOne!10770 r!13659)))) b!1884914))

(assert (= (and b!1884670 ((_ is Union!5129) (reg!5458 (regOne!10770 r!13659)))) b!1884915))

(declare-fun condSetEmpty!11638 () Bool)

(assert (=> setNonEmpty!11630 (= condSetEmpty!11638 (= setRest!11629 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11638 () Bool)

(assert (=> setNonEmpty!11630 (= tp!536635 setRes!11638)))

(declare-fun setIsEmpty!11638 () Bool)

(assert (=> setIsEmpty!11638 setRes!11638))

(declare-fun setElem!11638 () Context!1966)

(declare-fun e!1202394 () Bool)

(declare-fun setNonEmpty!11638 () Bool)

(declare-fun tp!536737 () Bool)

(assert (=> setNonEmpty!11638 (= setRes!11638 (and tp!536737 (inv!27905 setElem!11638) e!1202394))))

(declare-fun setRest!11638 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11638 (= setRest!11629 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11638 true) setRest!11638))))

(declare-fun b!1884920 () Bool)

(declare-fun tp!536738 () Bool)

(assert (=> b!1884920 (= e!1202394 tp!536738)))

(assert (= (and setNonEmpty!11630 condSetEmpty!11638) setIsEmpty!11638))

(assert (= (and setNonEmpty!11630 (not condSetEmpty!11638)) setNonEmpty!11638))

(assert (= setNonEmpty!11638 b!1884920))

(declare-fun m!2318149 () Bool)

(assert (=> setNonEmpty!11638 m!2318149))

(declare-fun condSetEmpty!11639 () Bool)

(assert (=> setNonEmpty!11624 (= condSetEmpty!11639 (= setRest!11624 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11639 () Bool)

(assert (=> setNonEmpty!11624 (= tp!536598 setRes!11639)))

(declare-fun setIsEmpty!11639 () Bool)

(assert (=> setIsEmpty!11639 setRes!11639))

(declare-fun tp!536739 () Bool)

(declare-fun e!1202395 () Bool)

(declare-fun setElem!11639 () Context!1966)

(declare-fun setNonEmpty!11639 () Bool)

(assert (=> setNonEmpty!11639 (= setRes!11639 (and tp!536739 (inv!27905 setElem!11639) e!1202395))))

(declare-fun setRest!11639 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11639 (= setRest!11624 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11639 true) setRest!11639))))

(declare-fun b!1884921 () Bool)

(declare-fun tp!536740 () Bool)

(assert (=> b!1884921 (= e!1202395 tp!536740)))

(assert (= (and setNonEmpty!11624 condSetEmpty!11639) setIsEmpty!11639))

(assert (= (and setNonEmpty!11624 (not condSetEmpty!11639)) setNonEmpty!11639))

(assert (= setNonEmpty!11639 b!1884921))

(declare-fun m!2318151 () Bool)

(assert (=> setNonEmpty!11639 m!2318151))

(declare-fun b!1884922 () Bool)

(declare-fun e!1202396 () Bool)

(declare-fun tp!536741 () Bool)

(declare-fun tp!536742 () Bool)

(assert (=> b!1884922 (= e!1202396 (and tp!536741 tp!536742))))

(assert (=> b!1884588 (= tp!536552 e!1202396)))

(assert (= (and b!1884588 ((_ is Cons!20947) (exprs!1483 setElem!11617))) b!1884922))

(declare-fun condSetEmpty!11640 () Bool)

(assert (=> setNonEmpty!11617 (= condSetEmpty!11640 (= setRest!11617 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11640 () Bool)

(assert (=> setNonEmpty!11617 (= tp!536551 setRes!11640)))

(declare-fun setIsEmpty!11640 () Bool)

(assert (=> setIsEmpty!11640 setRes!11640))

(declare-fun setElem!11640 () Context!1966)

(declare-fun e!1202397 () Bool)

(declare-fun setNonEmpty!11640 () Bool)

(declare-fun tp!536743 () Bool)

(assert (=> setNonEmpty!11640 (= setRes!11640 (and tp!536743 (inv!27905 setElem!11640) e!1202397))))

(declare-fun setRest!11640 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11640 (= setRest!11617 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11640 true) setRest!11640))))

(declare-fun b!1884923 () Bool)

(declare-fun tp!536744 () Bool)

(assert (=> b!1884923 (= e!1202397 tp!536744)))

(assert (= (and setNonEmpty!11617 condSetEmpty!11640) setIsEmpty!11640))

(assert (= (and setNonEmpty!11617 (not condSetEmpty!11640)) setNonEmpty!11640))

(assert (= setNonEmpty!11640 b!1884923))

(declare-fun m!2318153 () Bool)

(assert (=> setNonEmpty!11640 m!2318153))

(declare-fun b!1884926 () Bool)

(declare-fun e!1202398 () Bool)

(declare-fun tp!536749 () Bool)

(assert (=> b!1884926 (= e!1202398 tp!536749)))

(declare-fun b!1884924 () Bool)

(assert (=> b!1884924 (= e!1202398 tp_is_empty!8907)))

(declare-fun b!1884927 () Bool)

(declare-fun tp!536747 () Bool)

(declare-fun tp!536745 () Bool)

(assert (=> b!1884927 (= e!1202398 (and tp!536747 tp!536745))))

(assert (=> b!1884655 (= tp!536647 e!1202398)))

(declare-fun b!1884925 () Bool)

(declare-fun tp!536748 () Bool)

(declare-fun tp!536746 () Bool)

(assert (=> b!1884925 (= e!1202398 (and tp!536748 tp!536746))))

(assert (= (and b!1884655 ((_ is ElementMatch!5129) (_1!11448 (_1!11449 (h!26350 mapValue!9050))))) b!1884924))

(assert (= (and b!1884655 ((_ is Concat!8982) (_1!11448 (_1!11449 (h!26350 mapValue!9050))))) b!1884925))

(assert (= (and b!1884655 ((_ is Star!5129) (_1!11448 (_1!11449 (h!26350 mapValue!9050))))) b!1884926))

(assert (= (and b!1884655 ((_ is Union!5129) (_1!11448 (_1!11449 (h!26350 mapValue!9050))))) b!1884927))

(declare-fun e!1202401 () Bool)

(assert (=> b!1884655 (= tp!536649 e!1202401)))

(declare-fun b!1884928 () Bool)

(declare-fun e!1202400 () Bool)

(declare-fun tp!536751 () Bool)

(assert (=> b!1884928 (= e!1202400 tp!536751)))

(declare-fun setRes!11641 () Bool)

(declare-fun tp!536752 () Bool)

(declare-fun b!1884929 () Bool)

(declare-fun tp!536754 () Bool)

(assert (=> b!1884929 (= e!1202401 (and tp!536752 (inv!27905 (_2!11448 (_1!11449 (h!26350 (t!175028 mapValue!9050))))) e!1202400 tp_is_empty!8907 setRes!11641 tp!536754))))

(declare-fun condSetEmpty!11641 () Bool)

(assert (=> b!1884929 (= condSetEmpty!11641 (= (_2!11449 (h!26350 (t!175028 mapValue!9050))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884930 () Bool)

(declare-fun e!1202399 () Bool)

(declare-fun tp!536753 () Bool)

(assert (=> b!1884930 (= e!1202399 tp!536753)))

(declare-fun setIsEmpty!11641 () Bool)

(assert (=> setIsEmpty!11641 setRes!11641))

(declare-fun tp!536750 () Bool)

(declare-fun setNonEmpty!11641 () Bool)

(declare-fun setElem!11641 () Context!1966)

(assert (=> setNonEmpty!11641 (= setRes!11641 (and tp!536750 (inv!27905 setElem!11641) e!1202399))))

(declare-fun setRest!11641 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11641 (= (_2!11449 (h!26350 (t!175028 mapValue!9050))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11641 true) setRest!11641))))

(assert (= b!1884929 b!1884928))

(assert (= (and b!1884929 condSetEmpty!11641) setIsEmpty!11641))

(assert (= (and b!1884929 (not condSetEmpty!11641)) setNonEmpty!11641))

(assert (= setNonEmpty!11641 b!1884930))

(assert (= (and b!1884655 ((_ is Cons!20949) (t!175028 mapValue!9050))) b!1884929))

(declare-fun m!2318155 () Bool)

(assert (=> b!1884929 m!2318155))

(declare-fun m!2318157 () Bool)

(assert (=> setNonEmpty!11641 m!2318157))

(declare-fun b!1884931 () Bool)

(declare-fun e!1202402 () Bool)

(declare-fun tp!536755 () Bool)

(declare-fun tp!536756 () Bool)

(assert (=> b!1884931 (= e!1202402 (and tp!536755 tp!536756))))

(assert (=> b!1884577 (= tp!536538 e!1202402)))

(assert (= (and b!1884577 ((_ is Cons!20947) (exprs!1483 setElem!11614))) b!1884931))

(declare-fun b!1884934 () Bool)

(declare-fun e!1202403 () Bool)

(declare-fun tp!536761 () Bool)

(assert (=> b!1884934 (= e!1202403 tp!536761)))

(declare-fun b!1884932 () Bool)

(assert (=> b!1884932 (= e!1202403 tp_is_empty!8907)))

(declare-fun b!1884935 () Bool)

(declare-fun tp!536759 () Bool)

(declare-fun tp!536757 () Bool)

(assert (=> b!1884935 (= e!1202403 (and tp!536759 tp!536757))))

(assert (=> b!1884628 (= tp!536606 e!1202403)))

(declare-fun b!1884933 () Bool)

(declare-fun tp!536760 () Bool)

(declare-fun tp!536758 () Bool)

(assert (=> b!1884933 (= e!1202403 (and tp!536760 tp!536758))))

(assert (= (and b!1884628 ((_ is ElementMatch!5129) (reg!5458 (regOne!10771 r!13659)))) b!1884932))

(assert (= (and b!1884628 ((_ is Concat!8982) (reg!5458 (regOne!10771 r!13659)))) b!1884933))

(assert (= (and b!1884628 ((_ is Star!5129) (reg!5458 (regOne!10771 r!13659)))) b!1884934))

(assert (= (and b!1884628 ((_ is Union!5129) (reg!5458 (regOne!10771 r!13659)))) b!1884935))

(declare-fun b!1884950 () Bool)

(declare-fun e!1202418 () Bool)

(declare-fun lt!723265 () MutLongMap!1953)

(assert (=> b!1884950 (= e!1202418 ((_ is LongMap!1953) lt!723265))))

(assert (=> b!1884950 (= lt!723265 (v!26224 (underlying!4100 (cache!2248 (_2!11450 (matchZipperSequenceMem!3 lt!723209 input!6054 0 cacheUp!1015 cacheDown!1134))))))))

(declare-fun b!1884951 () Bool)

(declare-fun e!1202417 () Bool)

(declare-fun lt!723264 () MutLongMap!1954)

(assert (=> b!1884951 (= e!1202417 ((_ is LongMap!1954) lt!723264))))

(assert (=> b!1884951 (= lt!723264 (v!26226 (underlying!4102 (cache!2249 (_3!1451 (matchZipperSequenceMem!3 lt!723209 input!6054 0 cacheUp!1015 cacheDown!1134))))))))

(declare-fun b!1884952 () Bool)

(declare-fun e!1202421 () Bool)

(assert (=> b!1884952 (= e!1202421 e!1202418)))

(declare-fun b!1884953 () Bool)

(declare-fun e!1202416 () Bool)

(assert (=> b!1884953 (= e!1202416 e!1202417)))

(declare-fun b!1884954 () Bool)

(declare-fun e!1202420 () Bool)

(assert (=> b!1884954 (= e!1202420 e!1202421)))

(declare-fun b!1884955 () Bool)

(declare-fun e!1202419 () Bool)

(assert (=> b!1884955 (= e!1202419 e!1202416)))

(assert (=> d!577681 (= true (and e!1202420 e!1202419))))

(assert (= b!1884952 b!1884950))

(assert (= (and b!1884954 ((_ is HashMap!1867) (cache!2248 (_2!11450 (matchZipperSequenceMem!3 lt!723209 input!6054 0 cacheUp!1015 cacheDown!1134))))) b!1884952))

(assert (= d!577681 b!1884954))

(assert (= b!1884953 b!1884951))

(assert (= (and b!1884955 ((_ is HashMap!1868) (cache!2249 (_3!1451 (matchZipperSequenceMem!3 lt!723209 input!6054 0 cacheUp!1015 cacheDown!1134))))) b!1884953))

(assert (= d!577681 b!1884955))

(declare-fun b!1884956 () Bool)

(declare-fun e!1202422 () Bool)

(declare-fun tp!536762 () Bool)

(declare-fun tp!536763 () Bool)

(assert (=> b!1884956 (= e!1202422 (and tp!536762 tp!536763))))

(assert (=> b!1884576 (= tp!536537 e!1202422)))

(assert (= (and b!1884576 ((_ is Cons!20947) (exprs!1483 (_1!11446 (_1!11447 (h!26349 mapValue!9054)))))) b!1884956))

(declare-fun b!1884957 () Bool)

(declare-fun e!1202423 () Bool)

(declare-fun tp!536764 () Bool)

(declare-fun tp!536765 () Bool)

(assert (=> b!1884957 (= e!1202423 (and tp!536764 tp!536765))))

(assert (=> b!1884594 (= tp!536560 e!1202423)))

(assert (= (and b!1884594 ((_ is Cons!20947) (exprs!1483 setElem!11619))) b!1884957))

(declare-fun b!1884960 () Bool)

(declare-fun e!1202424 () Bool)

(declare-fun tp!536770 () Bool)

(assert (=> b!1884960 (= e!1202424 tp!536770)))

(declare-fun b!1884958 () Bool)

(assert (=> b!1884958 (= e!1202424 tp_is_empty!8907)))

(declare-fun b!1884961 () Bool)

(declare-fun tp!536768 () Bool)

(declare-fun tp!536766 () Bool)

(assert (=> b!1884961 (= e!1202424 (and tp!536768 tp!536766))))

(assert (=> b!1884675 (= tp!536666 e!1202424)))

(declare-fun b!1884959 () Bool)

(declare-fun tp!536769 () Bool)

(declare-fun tp!536767 () Bool)

(assert (=> b!1884959 (= e!1202424 (and tp!536769 tp!536767))))

(assert (= (and b!1884675 ((_ is ElementMatch!5129) (regOne!10771 (regTwo!10770 r!13659)))) b!1884958))

(assert (= (and b!1884675 ((_ is Concat!8982) (regOne!10771 (regTwo!10770 r!13659)))) b!1884959))

(assert (= (and b!1884675 ((_ is Star!5129) (regOne!10771 (regTwo!10770 r!13659)))) b!1884960))

(assert (= (and b!1884675 ((_ is Union!5129) (regOne!10771 (regTwo!10770 r!13659)))) b!1884961))

(declare-fun b!1884964 () Bool)

(declare-fun e!1202425 () Bool)

(declare-fun tp!536775 () Bool)

(assert (=> b!1884964 (= e!1202425 tp!536775)))

(declare-fun b!1884962 () Bool)

(assert (=> b!1884962 (= e!1202425 tp_is_empty!8907)))

(declare-fun b!1884965 () Bool)

(declare-fun tp!536773 () Bool)

(declare-fun tp!536771 () Bool)

(assert (=> b!1884965 (= e!1202425 (and tp!536773 tp!536771))))

(assert (=> b!1884675 (= tp!536664 e!1202425)))

(declare-fun b!1884963 () Bool)

(declare-fun tp!536774 () Bool)

(declare-fun tp!536772 () Bool)

(assert (=> b!1884963 (= e!1202425 (and tp!536774 tp!536772))))

(assert (= (and b!1884675 ((_ is ElementMatch!5129) (regTwo!10771 (regTwo!10770 r!13659)))) b!1884962))

(assert (= (and b!1884675 ((_ is Concat!8982) (regTwo!10771 (regTwo!10770 r!13659)))) b!1884963))

(assert (= (and b!1884675 ((_ is Star!5129) (regTwo!10771 (regTwo!10770 r!13659)))) b!1884964))

(assert (= (and b!1884675 ((_ is Union!5129) (regTwo!10771 (regTwo!10770 r!13659)))) b!1884965))

(declare-fun e!1202428 () Bool)

(assert (=> b!1884590 (= tp!536558 e!1202428)))

(declare-fun setIsEmpty!11642 () Bool)

(declare-fun setRes!11642 () Bool)

(assert (=> setIsEmpty!11642 setRes!11642))

(declare-fun b!1884966 () Bool)

(declare-fun e!1202426 () Bool)

(declare-fun tp!536778 () Bool)

(assert (=> b!1884966 (= e!1202426 tp!536778)))

(declare-fun setNonEmpty!11642 () Bool)

(declare-fun setElem!11642 () Context!1966)

(declare-fun tp!536776 () Bool)

(declare-fun e!1202427 () Bool)

(assert (=> setNonEmpty!11642 (= setRes!11642 (and tp!536776 (inv!27905 setElem!11642) e!1202427))))

(declare-fun setRest!11642 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11642 (= (_2!11447 (h!26349 (t!175027 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11642 true) setRest!11642))))

(declare-fun b!1884967 () Bool)

(declare-fun tp!536779 () Bool)

(assert (=> b!1884967 (= e!1202428 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 (t!175027 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))))))) e!1202426 tp_is_empty!8907 setRes!11642 tp!536779))))

(declare-fun condSetEmpty!11642 () Bool)

(assert (=> b!1884967 (= condSetEmpty!11642 (= (_2!11447 (h!26349 (t!175027 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884968 () Bool)

(declare-fun tp!536777 () Bool)

(assert (=> b!1884968 (= e!1202427 tp!536777)))

(assert (= b!1884967 b!1884966))

(assert (= (and b!1884967 condSetEmpty!11642) setIsEmpty!11642))

(assert (= (and b!1884967 (not condSetEmpty!11642)) setNonEmpty!11642))

(assert (= setNonEmpty!11642 b!1884968))

(assert (= (and b!1884590 ((_ is Cons!20948) (t!175027 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))))) b!1884967))

(declare-fun m!2318159 () Bool)

(assert (=> setNonEmpty!11642 m!2318159))

(declare-fun m!2318161 () Bool)

(assert (=> b!1884967 m!2318161))

(declare-fun condSetEmpty!11643 () Bool)

(assert (=> setNonEmpty!11619 (= condSetEmpty!11643 (= setRest!11619 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11643 () Bool)

(assert (=> setNonEmpty!11619 (= tp!536559 setRes!11643)))

(declare-fun setIsEmpty!11643 () Bool)

(assert (=> setIsEmpty!11643 setRes!11643))

(declare-fun setNonEmpty!11643 () Bool)

(declare-fun tp!536780 () Bool)

(declare-fun setElem!11643 () Context!1966)

(declare-fun e!1202429 () Bool)

(assert (=> setNonEmpty!11643 (= setRes!11643 (and tp!536780 (inv!27905 setElem!11643) e!1202429))))

(declare-fun setRest!11643 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11643 (= setRest!11619 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11643 true) setRest!11643))))

(declare-fun b!1884969 () Bool)

(declare-fun tp!536781 () Bool)

(assert (=> b!1884969 (= e!1202429 tp!536781)))

(assert (= (and setNonEmpty!11619 condSetEmpty!11643) setIsEmpty!11643))

(assert (= (and setNonEmpty!11619 (not condSetEmpty!11643)) setNonEmpty!11643))

(assert (= setNonEmpty!11643 b!1884969))

(declare-fun m!2318163 () Bool)

(assert (=> setNonEmpty!11643 m!2318163))

(declare-fun b!1884972 () Bool)

(declare-fun e!1202430 () Bool)

(declare-fun tp!536786 () Bool)

(assert (=> b!1884972 (= e!1202430 tp!536786)))

(declare-fun b!1884970 () Bool)

(assert (=> b!1884970 (= e!1202430 tp_is_empty!8907)))

(declare-fun b!1884973 () Bool)

(declare-fun tp!536784 () Bool)

(declare-fun tp!536782 () Bool)

(assert (=> b!1884973 (= e!1202430 (and tp!536784 tp!536782))))

(assert (=> b!1884673 (= tp!536667 e!1202430)))

(declare-fun b!1884971 () Bool)

(declare-fun tp!536785 () Bool)

(declare-fun tp!536783 () Bool)

(assert (=> b!1884971 (= e!1202430 (and tp!536785 tp!536783))))

(assert (= (and b!1884673 ((_ is ElementMatch!5129) (regOne!10770 (regTwo!10770 r!13659)))) b!1884970))

(assert (= (and b!1884673 ((_ is Concat!8982) (regOne!10770 (regTwo!10770 r!13659)))) b!1884971))

(assert (= (and b!1884673 ((_ is Star!5129) (regOne!10770 (regTwo!10770 r!13659)))) b!1884972))

(assert (= (and b!1884673 ((_ is Union!5129) (regOne!10770 (regTwo!10770 r!13659)))) b!1884973))

(declare-fun b!1884976 () Bool)

(declare-fun e!1202431 () Bool)

(declare-fun tp!536791 () Bool)

(assert (=> b!1884976 (= e!1202431 tp!536791)))

(declare-fun b!1884974 () Bool)

(assert (=> b!1884974 (= e!1202431 tp_is_empty!8907)))

(declare-fun b!1884977 () Bool)

(declare-fun tp!536789 () Bool)

(declare-fun tp!536787 () Bool)

(assert (=> b!1884977 (= e!1202431 (and tp!536789 tp!536787))))

(assert (=> b!1884673 (= tp!536665 e!1202431)))

(declare-fun b!1884975 () Bool)

(declare-fun tp!536790 () Bool)

(declare-fun tp!536788 () Bool)

(assert (=> b!1884975 (= e!1202431 (and tp!536790 tp!536788))))

(assert (= (and b!1884673 ((_ is ElementMatch!5129) (regTwo!10770 (regTwo!10770 r!13659)))) b!1884974))

(assert (= (and b!1884673 ((_ is Concat!8982) (regTwo!10770 (regTwo!10770 r!13659)))) b!1884975))

(assert (= (and b!1884673 ((_ is Star!5129) (regTwo!10770 (regTwo!10770 r!13659)))) b!1884976))

(assert (= (and b!1884673 ((_ is Union!5129) (regTwo!10770 (regTwo!10770 r!13659)))) b!1884977))

(declare-fun b!1884978 () Bool)

(declare-fun e!1202432 () Bool)

(declare-fun tp!536792 () Bool)

(declare-fun tp!536793 () Bool)

(assert (=> b!1884978 (= e!1202432 (and tp!536792 tp!536793))))

(assert (=> b!1884589 (= tp!536557 e!1202432)))

(assert (= (and b!1884589 ((_ is Cons!20947) (exprs!1483 (_1!11446 (_1!11447 (h!26349 (zeroValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))))))) b!1884978))

(declare-fun condSetEmpty!11644 () Bool)

(assert (=> setNonEmpty!11623 (= condSetEmpty!11644 (= setRest!11623 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11644 () Bool)

(assert (=> setNonEmpty!11623 (= tp!536578 setRes!11644)))

(declare-fun setIsEmpty!11644 () Bool)

(assert (=> setIsEmpty!11644 setRes!11644))

(declare-fun e!1202433 () Bool)

(declare-fun setNonEmpty!11644 () Bool)

(declare-fun setElem!11644 () Context!1966)

(declare-fun tp!536794 () Bool)

(assert (=> setNonEmpty!11644 (= setRes!11644 (and tp!536794 (inv!27905 setElem!11644) e!1202433))))

(declare-fun setRest!11644 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11644 (= setRest!11623 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11644 true) setRest!11644))))

(declare-fun b!1884979 () Bool)

(declare-fun tp!536795 () Bool)

(assert (=> b!1884979 (= e!1202433 tp!536795)))

(assert (= (and setNonEmpty!11623 condSetEmpty!11644) setIsEmpty!11644))

(assert (= (and setNonEmpty!11623 (not condSetEmpty!11644)) setNonEmpty!11644))

(assert (= setNonEmpty!11644 b!1884979))

(declare-fun m!2318165 () Bool)

(assert (=> setNonEmpty!11644 m!2318165))

(declare-fun condSetEmpty!11645 () Bool)

(assert (=> setNonEmpty!11622 (= condSetEmpty!11645 (= setRest!11622 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11645 () Bool)

(assert (=> setNonEmpty!11622 (= tp!536573 setRes!11645)))

(declare-fun setIsEmpty!11645 () Bool)

(assert (=> setIsEmpty!11645 setRes!11645))

(declare-fun e!1202434 () Bool)

(declare-fun tp!536796 () Bool)

(declare-fun setNonEmpty!11645 () Bool)

(declare-fun setElem!11645 () Context!1966)

(assert (=> setNonEmpty!11645 (= setRes!11645 (and tp!536796 (inv!27905 setElem!11645) e!1202434))))

(declare-fun setRest!11645 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11645 (= setRest!11622 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11645 true) setRest!11645))))

(declare-fun b!1884980 () Bool)

(declare-fun tp!536797 () Bool)

(assert (=> b!1884980 (= e!1202434 tp!536797)))

(assert (= (and setNonEmpty!11622 condSetEmpty!11645) setIsEmpty!11645))

(assert (= (and setNonEmpty!11622 (not condSetEmpty!11645)) setNonEmpty!11645))

(assert (= setNonEmpty!11645 b!1884980))

(declare-fun m!2318167 () Bool)

(assert (=> setNonEmpty!11645 m!2318167))

(declare-fun b!1884983 () Bool)

(declare-fun e!1202435 () Bool)

(declare-fun tp!536802 () Bool)

(assert (=> b!1884983 (= e!1202435 tp!536802)))

(declare-fun b!1884981 () Bool)

(assert (=> b!1884981 (= e!1202435 tp_is_empty!8907)))

(declare-fun b!1884984 () Bool)

(declare-fun tp!536800 () Bool)

(declare-fun tp!536798 () Bool)

(assert (=> b!1884984 (= e!1202435 (and tp!536800 tp!536798))))

(assert (=> b!1884652 (= tp!536639 e!1202435)))

(declare-fun b!1884982 () Bool)

(declare-fun tp!536801 () Bool)

(declare-fun tp!536799 () Bool)

(assert (=> b!1884982 (= e!1202435 (and tp!536801 tp!536799))))

(assert (= (and b!1884652 ((_ is ElementMatch!5129) (_1!11448 (_1!11449 (h!26350 mapDefault!9057))))) b!1884981))

(assert (= (and b!1884652 ((_ is Concat!8982) (_1!11448 (_1!11449 (h!26350 mapDefault!9057))))) b!1884982))

(assert (= (and b!1884652 ((_ is Star!5129) (_1!11448 (_1!11449 (h!26350 mapDefault!9057))))) b!1884983))

(assert (= (and b!1884652 ((_ is Union!5129) (_1!11448 (_1!11449 (h!26350 mapDefault!9057))))) b!1884984))

(declare-fun e!1202438 () Bool)

(assert (=> b!1884652 (= tp!536642 e!1202438)))

(declare-fun b!1884985 () Bool)

(declare-fun e!1202437 () Bool)

(declare-fun tp!536804 () Bool)

(assert (=> b!1884985 (= e!1202437 tp!536804)))

(declare-fun tp!536807 () Bool)

(declare-fun setRes!11646 () Bool)

(declare-fun b!1884986 () Bool)

(declare-fun tp!536805 () Bool)

(assert (=> b!1884986 (= e!1202438 (and tp!536805 (inv!27905 (_2!11448 (_1!11449 (h!26350 (t!175028 mapDefault!9057))))) e!1202437 tp_is_empty!8907 setRes!11646 tp!536807))))

(declare-fun condSetEmpty!11646 () Bool)

(assert (=> b!1884986 (= condSetEmpty!11646 (= (_2!11449 (h!26350 (t!175028 mapDefault!9057))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1884987 () Bool)

(declare-fun e!1202436 () Bool)

(declare-fun tp!536806 () Bool)

(assert (=> b!1884987 (= e!1202436 tp!536806)))

(declare-fun setIsEmpty!11646 () Bool)

(assert (=> setIsEmpty!11646 setRes!11646))

(declare-fun setElem!11646 () Context!1966)

(declare-fun tp!536803 () Bool)

(declare-fun setNonEmpty!11646 () Bool)

(assert (=> setNonEmpty!11646 (= setRes!11646 (and tp!536803 (inv!27905 setElem!11646) e!1202436))))

(declare-fun setRest!11646 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11646 (= (_2!11449 (h!26350 (t!175028 mapDefault!9057))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11646 true) setRest!11646))))

(assert (= b!1884986 b!1884985))

(assert (= (and b!1884986 condSetEmpty!11646) setIsEmpty!11646))

(assert (= (and b!1884986 (not condSetEmpty!11646)) setNonEmpty!11646))

(assert (= setNonEmpty!11646 b!1884987))

(assert (= (and b!1884652 ((_ is Cons!20949) (t!175028 mapDefault!9057))) b!1884986))

(declare-fun m!2318169 () Bool)

(assert (=> b!1884986 m!2318169))

(declare-fun m!2318171 () Bool)

(assert (=> setNonEmpty!11646 m!2318171))

(declare-fun condSetEmpty!11647 () Bool)

(assert (=> setNonEmpty!11614 (= condSetEmpty!11647 (= setRest!11614 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11647 () Bool)

(assert (=> setNonEmpty!11614 (= tp!536541 setRes!11647)))

(declare-fun setIsEmpty!11647 () Bool)

(assert (=> setIsEmpty!11647 setRes!11647))

(declare-fun e!1202439 () Bool)

(declare-fun setNonEmpty!11647 () Bool)

(declare-fun tp!536808 () Bool)

(declare-fun setElem!11647 () Context!1966)

(assert (=> setNonEmpty!11647 (= setRes!11647 (and tp!536808 (inv!27905 setElem!11647) e!1202439))))

(declare-fun setRest!11647 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11647 (= setRest!11614 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11647 true) setRest!11647))))

(declare-fun b!1884988 () Bool)

(declare-fun tp!536809 () Bool)

(assert (=> b!1884988 (= e!1202439 tp!536809)))

(assert (= (and setNonEmpty!11614 condSetEmpty!11647) setIsEmpty!11647))

(assert (= (and setNonEmpty!11614 (not condSetEmpty!11647)) setNonEmpty!11647))

(assert (= setNonEmpty!11647 b!1884988))

(declare-fun m!2318173 () Bool)

(assert (=> setNonEmpty!11647 m!2318173))

(declare-fun condSetEmpty!11648 () Bool)

(assert (=> setNonEmpty!11632 (= condSetEmpty!11648 (= setRest!11632 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11648 () Bool)

(assert (=> setNonEmpty!11632 (= tp!536669 setRes!11648)))

(declare-fun setIsEmpty!11648 () Bool)

(assert (=> setIsEmpty!11648 setRes!11648))

(declare-fun setElem!11648 () Context!1966)

(declare-fun setNonEmpty!11648 () Bool)

(declare-fun e!1202440 () Bool)

(declare-fun tp!536810 () Bool)

(assert (=> setNonEmpty!11648 (= setRes!11648 (and tp!536810 (inv!27905 setElem!11648) e!1202440))))

(declare-fun setRest!11648 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11648 (= setRest!11632 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11648 true) setRest!11648))))

(declare-fun b!1884989 () Bool)

(declare-fun tp!536811 () Bool)

(assert (=> b!1884989 (= e!1202440 tp!536811)))

(assert (= (and setNonEmpty!11632 condSetEmpty!11648) setIsEmpty!11648))

(assert (= (and setNonEmpty!11632 (not condSetEmpty!11648)) setNonEmpty!11648))

(assert (= setNonEmpty!11648 b!1884989))

(declare-fun m!2318175 () Bool)

(assert (=> setNonEmpty!11648 m!2318175))

(declare-fun b!1884992 () Bool)

(declare-fun e!1202441 () Bool)

(declare-fun tp!536816 () Bool)

(assert (=> b!1884992 (= e!1202441 tp!536816)))

(declare-fun b!1884990 () Bool)

(assert (=> b!1884990 (= e!1202441 tp_is_empty!8907)))

(declare-fun b!1884993 () Bool)

(declare-fun tp!536814 () Bool)

(declare-fun tp!536812 () Bool)

(assert (=> b!1884993 (= e!1202441 (and tp!536814 tp!536812))))

(assert (=> b!1884622 (= tp!536595 e!1202441)))

(declare-fun b!1884991 () Bool)

(declare-fun tp!536815 () Bool)

(declare-fun tp!536813 () Bool)

(assert (=> b!1884991 (= e!1202441 (and tp!536815 tp!536813))))

(assert (= (and b!1884622 ((_ is ElementMatch!5129) (regOne!10771 (reg!5458 r!13659)))) b!1884990))

(assert (= (and b!1884622 ((_ is Concat!8982) (regOne!10771 (reg!5458 r!13659)))) b!1884991))

(assert (= (and b!1884622 ((_ is Star!5129) (regOne!10771 (reg!5458 r!13659)))) b!1884992))

(assert (= (and b!1884622 ((_ is Union!5129) (regOne!10771 (reg!5458 r!13659)))) b!1884993))

(declare-fun b!1884996 () Bool)

(declare-fun e!1202442 () Bool)

(declare-fun tp!536821 () Bool)

(assert (=> b!1884996 (= e!1202442 tp!536821)))

(declare-fun b!1884994 () Bool)

(assert (=> b!1884994 (= e!1202442 tp_is_empty!8907)))

(declare-fun b!1884997 () Bool)

(declare-fun tp!536819 () Bool)

(declare-fun tp!536817 () Bool)

(assert (=> b!1884997 (= e!1202442 (and tp!536819 tp!536817))))

(assert (=> b!1884622 (= tp!536593 e!1202442)))

(declare-fun b!1884995 () Bool)

(declare-fun tp!536820 () Bool)

(declare-fun tp!536818 () Bool)

(assert (=> b!1884995 (= e!1202442 (and tp!536820 tp!536818))))

(assert (= (and b!1884622 ((_ is ElementMatch!5129) (regTwo!10771 (reg!5458 r!13659)))) b!1884994))

(assert (= (and b!1884622 ((_ is Concat!8982) (regTwo!10771 (reg!5458 r!13659)))) b!1884995))

(assert (= (and b!1884622 ((_ is Star!5129) (regTwo!10771 (reg!5458 r!13659)))) b!1884996))

(assert (= (and b!1884622 ((_ is Union!5129) (regTwo!10771 (reg!5458 r!13659)))) b!1884997))

(declare-fun b!1884998 () Bool)

(declare-fun e!1202443 () Bool)

(declare-fun tp!536822 () Bool)

(declare-fun tp!536823 () Bool)

(assert (=> b!1884998 (= e!1202443 (and tp!536822 tp!536823))))

(assert (=> b!1884608 (= tp!536581 e!1202443)))

(assert (= (and b!1884608 ((_ is Cons!20947) (exprs!1483 setElem!11623))) b!1884998))

(declare-fun b!1884999 () Bool)

(declare-fun e!1202444 () Bool)

(declare-fun tp!536824 () Bool)

(declare-fun tp!536825 () Bool)

(assert (=> b!1884999 (= e!1202444 (and tp!536824 tp!536825))))

(assert (=> b!1884605 (= tp!536576 e!1202444)))

(assert (= (and b!1884605 ((_ is Cons!20947) (exprs!1483 setElem!11622))) b!1884999))

(declare-fun b!1885000 () Bool)

(declare-fun e!1202445 () Bool)

(declare-fun tp!536826 () Bool)

(declare-fun tp!536827 () Bool)

(assert (=> b!1885000 (= e!1202445 (and tp!536826 tp!536827))))

(assert (=> b!1884606 (= tp!536579 e!1202445)))

(assert (= (and b!1884606 ((_ is Cons!20947) (exprs!1483 (_2!11448 (_1!11449 (h!26350 (minValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))))))) b!1885000))

(declare-fun b!1885001 () Bool)

(declare-fun e!1202446 () Bool)

(declare-fun tp!536828 () Bool)

(declare-fun tp!536829 () Bool)

(assert (=> b!1885001 (= e!1202446 (and tp!536828 tp!536829))))

(assert (=> b!1884603 (= tp!536574 e!1202446)))

(assert (= (and b!1884603 ((_ is Cons!20947) (exprs!1483 (_2!11448 (_1!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134)))))))))))) b!1885001))

(declare-fun setElem!11650 () Context!1966)

(declare-fun setRes!11649 () Bool)

(declare-fun setNonEmpty!11649 () Bool)

(declare-fun e!1202449 () Bool)

(declare-fun tp!536839 () Bool)

(assert (=> setNonEmpty!11649 (= setRes!11649 (and tp!536839 (inv!27905 setElem!11650) e!1202449))))

(declare-fun mapDefault!9058 () List!21031)

(declare-fun setRest!11650 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11649 (= (_2!11449 (h!26350 mapDefault!9058)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11650 true) setRest!11650))))

(declare-fun tp!536831 () Bool)

(declare-fun setRes!11650 () Bool)

(declare-fun e!1202450 () Bool)

(declare-fun setElem!11649 () Context!1966)

(declare-fun setNonEmpty!11650 () Bool)

(assert (=> setNonEmpty!11650 (= setRes!11650 (and tp!536831 (inv!27905 setElem!11649) e!1202450))))

(declare-fun mapValue!9058 () List!21031)

(declare-fun setRest!11649 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11650 (= (_2!11449 (h!26350 mapValue!9058)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11649 true) setRest!11649))))

(declare-fun b!1885002 () Bool)

(declare-fun e!1202447 () Bool)

(declare-fun tp!536830 () Bool)

(assert (=> b!1885002 (= e!1202447 tp!536830)))

(declare-fun setIsEmpty!11649 () Bool)

(assert (=> setIsEmpty!11649 setRes!11650))

(declare-fun tp!536837 () Bool)

(declare-fun b!1885003 () Bool)

(declare-fun tp!536840 () Bool)

(declare-fun e!1202451 () Bool)

(assert (=> b!1885003 (= e!1202451 (and tp!536840 (inv!27905 (_2!11448 (_1!11449 (h!26350 mapValue!9058)))) e!1202447 tp_is_empty!8907 setRes!11650 tp!536837))))

(declare-fun condSetEmpty!11650 () Bool)

(assert (=> b!1885003 (= condSetEmpty!11650 (= (_2!11449 (h!26350 mapValue!9058)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1885004 () Bool)

(declare-fun tp!536836 () Bool)

(assert (=> b!1885004 (= e!1202449 tp!536836)))

(declare-fun mapNonEmpty!9058 () Bool)

(declare-fun mapRes!9058 () Bool)

(declare-fun tp!536833 () Bool)

(assert (=> mapNonEmpty!9058 (= mapRes!9058 (and tp!536833 e!1202451))))

(declare-fun mapKey!9058 () (_ BitVec 32))

(declare-fun mapRest!9058 () (Array (_ BitVec 32) List!21031))

(assert (=> mapNonEmpty!9058 (= mapRest!9057 (store mapRest!9058 mapKey!9058 mapValue!9058))))

(declare-fun condMapEmpty!9058 () Bool)

(assert (=> mapNonEmpty!9057 (= condMapEmpty!9058 (= mapRest!9057 ((as const (Array (_ BitVec 32) List!21031)) mapDefault!9058)))))

(declare-fun e!1202448 () Bool)

(assert (=> mapNonEmpty!9057 (= tp!536637 (and e!1202448 mapRes!9058))))

(declare-fun mapIsEmpty!9058 () Bool)

(assert (=> mapIsEmpty!9058 mapRes!9058))

(declare-fun setIsEmpty!11650 () Bool)

(assert (=> setIsEmpty!11650 setRes!11649))

(declare-fun b!1885005 () Bool)

(declare-fun tp!536834 () Bool)

(assert (=> b!1885005 (= e!1202450 tp!536834)))

(declare-fun b!1885006 () Bool)

(declare-fun e!1202452 () Bool)

(declare-fun tp!536838 () Bool)

(declare-fun tp!536835 () Bool)

(assert (=> b!1885006 (= e!1202448 (and tp!536835 (inv!27905 (_2!11448 (_1!11449 (h!26350 mapDefault!9058)))) e!1202452 tp_is_empty!8907 setRes!11649 tp!536838))))

(declare-fun condSetEmpty!11649 () Bool)

(assert (=> b!1885006 (= condSetEmpty!11649 (= (_2!11449 (h!26350 mapDefault!9058)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1885007 () Bool)

(declare-fun tp!536832 () Bool)

(assert (=> b!1885007 (= e!1202452 tp!536832)))

(assert (= (and mapNonEmpty!9057 condMapEmpty!9058) mapIsEmpty!9058))

(assert (= (and mapNonEmpty!9057 (not condMapEmpty!9058)) mapNonEmpty!9058))

(assert (= b!1885003 b!1885002))

(assert (= (and b!1885003 condSetEmpty!11650) setIsEmpty!11649))

(assert (= (and b!1885003 (not condSetEmpty!11650)) setNonEmpty!11650))

(assert (= setNonEmpty!11650 b!1885005))

(assert (= (and mapNonEmpty!9058 ((_ is Cons!20949) mapValue!9058)) b!1885003))

(assert (= b!1885006 b!1885007))

(assert (= (and b!1885006 condSetEmpty!11649) setIsEmpty!11650))

(assert (= (and b!1885006 (not condSetEmpty!11649)) setNonEmpty!11649))

(assert (= setNonEmpty!11649 b!1885004))

(assert (= (and mapNonEmpty!9057 ((_ is Cons!20949) mapDefault!9058)) b!1885006))

(declare-fun m!2318177 () Bool)

(assert (=> mapNonEmpty!9058 m!2318177))

(declare-fun m!2318179 () Bool)

(assert (=> b!1885006 m!2318179))

(declare-fun m!2318181 () Bool)

(assert (=> setNonEmpty!11649 m!2318181))

(declare-fun m!2318183 () Bool)

(assert (=> setNonEmpty!11650 m!2318183))

(declare-fun m!2318185 () Bool)

(assert (=> b!1885003 m!2318185))

(declare-fun b!1885008 () Bool)

(declare-fun e!1202453 () Bool)

(declare-fun tp!536841 () Bool)

(declare-fun tp!536842 () Bool)

(assert (=> b!1885008 (= e!1202453 (and tp!536841 tp!536842))))

(assert (=> b!1884573 (= tp!536534 e!1202453)))

(assert (= (and b!1884573 ((_ is Cons!20947) (exprs!1483 setElem!11613))) b!1885008))

(declare-fun b!1885009 () Bool)

(declare-fun e!1202454 () Bool)

(declare-fun tp!536843 () Bool)

(declare-fun tp!536844 () Bool)

(assert (=> b!1885009 (= e!1202454 (and tp!536843 tp!536844))))

(assert (=> b!1884678 (= tp!536672 e!1202454)))

(assert (= (and b!1884678 ((_ is Cons!20947) (exprs!1483 setElem!11632))) b!1885009))

(declare-fun b!1885012 () Bool)

(declare-fun e!1202455 () Bool)

(declare-fun tp!536849 () Bool)

(assert (=> b!1885012 (= e!1202455 tp!536849)))

(declare-fun b!1885010 () Bool)

(assert (=> b!1885010 (= e!1202455 tp_is_empty!8907)))

(declare-fun b!1885013 () Bool)

(declare-fun tp!536847 () Bool)

(declare-fun tp!536845 () Bool)

(assert (=> b!1885013 (= e!1202455 (and tp!536847 tp!536845))))

(assert (=> b!1884633 (= tp!536609 e!1202455)))

(declare-fun b!1885011 () Bool)

(declare-fun tp!536848 () Bool)

(declare-fun tp!536846 () Bool)

(assert (=> b!1885011 (= e!1202455 (and tp!536848 tp!536846))))

(assert (= (and b!1884633 ((_ is ElementMatch!5129) (regOne!10771 (regTwo!10771 r!13659)))) b!1885010))

(assert (= (and b!1884633 ((_ is Concat!8982) (regOne!10771 (regTwo!10771 r!13659)))) b!1885011))

(assert (= (and b!1884633 ((_ is Star!5129) (regOne!10771 (regTwo!10771 r!13659)))) b!1885012))

(assert (= (and b!1884633 ((_ is Union!5129) (regOne!10771 (regTwo!10771 r!13659)))) b!1885013))

(declare-fun b!1885016 () Bool)

(declare-fun e!1202456 () Bool)

(declare-fun tp!536854 () Bool)

(assert (=> b!1885016 (= e!1202456 tp!536854)))

(declare-fun b!1885014 () Bool)

(assert (=> b!1885014 (= e!1202456 tp_is_empty!8907)))

(declare-fun b!1885017 () Bool)

(declare-fun tp!536852 () Bool)

(declare-fun tp!536850 () Bool)

(assert (=> b!1885017 (= e!1202456 (and tp!536852 tp!536850))))

(assert (=> b!1884633 (= tp!536607 e!1202456)))

(declare-fun b!1885015 () Bool)

(declare-fun tp!536853 () Bool)

(declare-fun tp!536851 () Bool)

(assert (=> b!1885015 (= e!1202456 (and tp!536853 tp!536851))))

(assert (= (and b!1884633 ((_ is ElementMatch!5129) (regTwo!10771 (regTwo!10771 r!13659)))) b!1885014))

(assert (= (and b!1884633 ((_ is Concat!8982) (regTwo!10771 (regTwo!10771 r!13659)))) b!1885015))

(assert (= (and b!1884633 ((_ is Star!5129) (regTwo!10771 (regTwo!10771 r!13659)))) b!1885016))

(assert (= (and b!1884633 ((_ is Union!5129) (regTwo!10771 (regTwo!10771 r!13659)))) b!1885017))

(declare-fun b!1885020 () Bool)

(declare-fun e!1202457 () Bool)

(declare-fun tp!536859 () Bool)

(assert (=> b!1885020 (= e!1202457 tp!536859)))

(declare-fun b!1885018 () Bool)

(assert (=> b!1885018 (= e!1202457 tp_is_empty!8907)))

(declare-fun b!1885021 () Bool)

(declare-fun tp!536857 () Bool)

(declare-fun tp!536855 () Bool)

(assert (=> b!1885021 (= e!1202457 (and tp!536857 tp!536855))))

(assert (=> b!1884649 (= tp!536644 e!1202457)))

(declare-fun b!1885019 () Bool)

(declare-fun tp!536858 () Bool)

(declare-fun tp!536856 () Bool)

(assert (=> b!1885019 (= e!1202457 (and tp!536858 tp!536856))))

(assert (= (and b!1884649 ((_ is ElementMatch!5129) (_1!11448 (_1!11449 (h!26350 mapValue!9057))))) b!1885018))

(assert (= (and b!1884649 ((_ is Concat!8982) (_1!11448 (_1!11449 (h!26350 mapValue!9057))))) b!1885019))

(assert (= (and b!1884649 ((_ is Star!5129) (_1!11448 (_1!11449 (h!26350 mapValue!9057))))) b!1885020))

(assert (= (and b!1884649 ((_ is Union!5129) (_1!11448 (_1!11449 (h!26350 mapValue!9057))))) b!1885021))

(declare-fun e!1202460 () Bool)

(assert (=> b!1884649 (= tp!536641 e!1202460)))

(declare-fun b!1885022 () Bool)

(declare-fun e!1202459 () Bool)

(declare-fun tp!536861 () Bool)

(assert (=> b!1885022 (= e!1202459 tp!536861)))

(declare-fun tp!536864 () Bool)

(declare-fun setRes!11651 () Bool)

(declare-fun tp!536862 () Bool)

(declare-fun b!1885023 () Bool)

(assert (=> b!1885023 (= e!1202460 (and tp!536862 (inv!27905 (_2!11448 (_1!11449 (h!26350 (t!175028 mapValue!9057))))) e!1202459 tp_is_empty!8907 setRes!11651 tp!536864))))

(declare-fun condSetEmpty!11651 () Bool)

(assert (=> b!1885023 (= condSetEmpty!11651 (= (_2!11449 (h!26350 (t!175028 mapValue!9057))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1885024 () Bool)

(declare-fun e!1202458 () Bool)

(declare-fun tp!536863 () Bool)

(assert (=> b!1885024 (= e!1202458 tp!536863)))

(declare-fun setIsEmpty!11651 () Bool)

(assert (=> setIsEmpty!11651 setRes!11651))

(declare-fun setElem!11651 () Context!1966)

(declare-fun setNonEmpty!11651 () Bool)

(declare-fun tp!536860 () Bool)

(assert (=> setNonEmpty!11651 (= setRes!11651 (and tp!536860 (inv!27905 setElem!11651) e!1202458))))

(declare-fun setRest!11651 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11651 (= (_2!11449 (h!26350 (t!175028 mapValue!9057))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11651 true) setRest!11651))))

(assert (= b!1885023 b!1885022))

(assert (= (and b!1885023 condSetEmpty!11651) setIsEmpty!11651))

(assert (= (and b!1885023 (not condSetEmpty!11651)) setNonEmpty!11651))

(assert (= setNonEmpty!11651 b!1885024))

(assert (= (and b!1884649 ((_ is Cons!20949) (t!175028 mapValue!9057))) b!1885023))

(declare-fun m!2318187 () Bool)

(assert (=> b!1885023 m!2318187))

(declare-fun m!2318189 () Bool)

(assert (=> setNonEmpty!11651 m!2318189))

(declare-fun condSetEmpty!11652 () Bool)

(assert (=> setNonEmpty!11613 (= condSetEmpty!11652 (= setRest!11613 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11652 () Bool)

(assert (=> setNonEmpty!11613 (= tp!536535 setRes!11652)))

(declare-fun setIsEmpty!11652 () Bool)

(assert (=> setIsEmpty!11652 setRes!11652))

(declare-fun e!1202461 () Bool)

(declare-fun setNonEmpty!11652 () Bool)

(declare-fun tp!536865 () Bool)

(declare-fun setElem!11652 () Context!1966)

(assert (=> setNonEmpty!11652 (= setRes!11652 (and tp!536865 (inv!27905 setElem!11652) e!1202461))))

(declare-fun setRest!11652 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11652 (= setRest!11613 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11652 true) setRest!11652))))

(declare-fun b!1885025 () Bool)

(declare-fun tp!536866 () Bool)

(assert (=> b!1885025 (= e!1202461 tp!536866)))

(assert (= (and setNonEmpty!11613 condSetEmpty!11652) setIsEmpty!11652))

(assert (= (and setNonEmpty!11613 (not condSetEmpty!11652)) setNonEmpty!11652))

(assert (= setNonEmpty!11652 b!1885025))

(declare-fun m!2318191 () Bool)

(assert (=> setNonEmpty!11652 m!2318191))

(declare-fun b!1885026 () Bool)

(declare-fun e!1202462 () Bool)

(declare-fun tp!536867 () Bool)

(declare-fun tp!536868 () Bool)

(assert (=> b!1885026 (= e!1202462 (and tp!536867 tp!536868))))

(assert (=> b!1884676 (= tp!536670 e!1202462)))

(assert (= (and b!1884676 ((_ is Cons!20947) (exprs!1483 (_2!11448 (_1!11449 (h!26350 mapDefault!9051)))))) b!1885026))

(declare-fun b!1885029 () Bool)

(declare-fun e!1202463 () Bool)

(declare-fun tp!536873 () Bool)

(assert (=> b!1885029 (= e!1202463 tp!536873)))

(declare-fun b!1885027 () Bool)

(assert (=> b!1885027 (= e!1202463 tp_is_empty!8907)))

(declare-fun b!1885030 () Bool)

(declare-fun tp!536871 () Bool)

(declare-fun tp!536869 () Bool)

(assert (=> b!1885030 (= e!1202463 (and tp!536871 tp!536869))))

(assert (=> b!1884620 (= tp!536596 e!1202463)))

(declare-fun b!1885028 () Bool)

(declare-fun tp!536872 () Bool)

(declare-fun tp!536870 () Bool)

(assert (=> b!1885028 (= e!1202463 (and tp!536872 tp!536870))))

(assert (= (and b!1884620 ((_ is ElementMatch!5129) (regOne!10770 (reg!5458 r!13659)))) b!1885027))

(assert (= (and b!1884620 ((_ is Concat!8982) (regOne!10770 (reg!5458 r!13659)))) b!1885028))

(assert (= (and b!1884620 ((_ is Star!5129) (regOne!10770 (reg!5458 r!13659)))) b!1885029))

(assert (= (and b!1884620 ((_ is Union!5129) (regOne!10770 (reg!5458 r!13659)))) b!1885030))

(declare-fun b!1885033 () Bool)

(declare-fun e!1202464 () Bool)

(declare-fun tp!536878 () Bool)

(assert (=> b!1885033 (= e!1202464 tp!536878)))

(declare-fun b!1885031 () Bool)

(assert (=> b!1885031 (= e!1202464 tp_is_empty!8907)))

(declare-fun b!1885034 () Bool)

(declare-fun tp!536876 () Bool)

(declare-fun tp!536874 () Bool)

(assert (=> b!1885034 (= e!1202464 (and tp!536876 tp!536874))))

(assert (=> b!1884620 (= tp!536594 e!1202464)))

(declare-fun b!1885032 () Bool)

(declare-fun tp!536877 () Bool)

(declare-fun tp!536875 () Bool)

(assert (=> b!1885032 (= e!1202464 (and tp!536877 tp!536875))))

(assert (= (and b!1884620 ((_ is ElementMatch!5129) (regTwo!10770 (reg!5458 r!13659)))) b!1885031))

(assert (= (and b!1884620 ((_ is Concat!8982) (regTwo!10770 (reg!5458 r!13659)))) b!1885032))

(assert (= (and b!1884620 ((_ is Star!5129) (regTwo!10770 (reg!5458 r!13659)))) b!1885033))

(assert (= (and b!1884620 ((_ is Union!5129) (regTwo!10770 (reg!5458 r!13659)))) b!1885034))

(declare-fun b!1885037 () Bool)

(declare-fun e!1202465 () Bool)

(declare-fun tp!536883 () Bool)

(assert (=> b!1885037 (= e!1202465 tp!536883)))

(declare-fun b!1885035 () Bool)

(assert (=> b!1885035 (= e!1202465 tp_is_empty!8907)))

(declare-fun b!1885038 () Bool)

(declare-fun tp!536881 () Bool)

(declare-fun tp!536879 () Bool)

(assert (=> b!1885038 (= e!1202465 (and tp!536881 tp!536879))))

(assert (=> b!1884671 (= tp!536661 e!1202465)))

(declare-fun b!1885036 () Bool)

(declare-fun tp!536882 () Bool)

(declare-fun tp!536880 () Bool)

(assert (=> b!1885036 (= e!1202465 (and tp!536882 tp!536880))))

(assert (= (and b!1884671 ((_ is ElementMatch!5129) (regOne!10771 (regOne!10770 r!13659)))) b!1885035))

(assert (= (and b!1884671 ((_ is Concat!8982) (regOne!10771 (regOne!10770 r!13659)))) b!1885036))

(assert (= (and b!1884671 ((_ is Star!5129) (regOne!10771 (regOne!10770 r!13659)))) b!1885037))

(assert (= (and b!1884671 ((_ is Union!5129) (regOne!10771 (regOne!10770 r!13659)))) b!1885038))

(declare-fun b!1885041 () Bool)

(declare-fun e!1202466 () Bool)

(declare-fun tp!536888 () Bool)

(assert (=> b!1885041 (= e!1202466 tp!536888)))

(declare-fun b!1885039 () Bool)

(assert (=> b!1885039 (= e!1202466 tp_is_empty!8907)))

(declare-fun b!1885042 () Bool)

(declare-fun tp!536886 () Bool)

(declare-fun tp!536884 () Bool)

(assert (=> b!1885042 (= e!1202466 (and tp!536886 tp!536884))))

(assert (=> b!1884671 (= tp!536659 e!1202466)))

(declare-fun b!1885040 () Bool)

(declare-fun tp!536887 () Bool)

(declare-fun tp!536885 () Bool)

(assert (=> b!1885040 (= e!1202466 (and tp!536887 tp!536885))))

(assert (= (and b!1884671 ((_ is ElementMatch!5129) (regTwo!10771 (regOne!10770 r!13659)))) b!1885039))

(assert (= (and b!1884671 ((_ is Concat!8982) (regTwo!10771 (regOne!10770 r!13659)))) b!1885040))

(assert (= (and b!1884671 ((_ is Star!5129) (regTwo!10771 (regOne!10770 r!13659)))) b!1885041))

(assert (= (and b!1884671 ((_ is Union!5129) (regTwo!10771 (regOne!10770 r!13659)))) b!1885042))

(declare-fun b!1885045 () Bool)

(declare-fun e!1202467 () Bool)

(declare-fun tp!536893 () Bool)

(assert (=> b!1885045 (= e!1202467 tp!536893)))

(declare-fun b!1885043 () Bool)

(assert (=> b!1885043 (= e!1202467 tp_is_empty!8907)))

(declare-fun b!1885046 () Bool)

(declare-fun tp!536891 () Bool)

(declare-fun tp!536889 () Bool)

(assert (=> b!1885046 (= e!1202467 (and tp!536891 tp!536889))))

(assert (=> b!1884631 (= tp!536610 e!1202467)))

(declare-fun b!1885044 () Bool)

(declare-fun tp!536892 () Bool)

(declare-fun tp!536890 () Bool)

(assert (=> b!1885044 (= e!1202467 (and tp!536892 tp!536890))))

(assert (= (and b!1884631 ((_ is ElementMatch!5129) (regOne!10770 (regTwo!10771 r!13659)))) b!1885043))

(assert (= (and b!1884631 ((_ is Concat!8982) (regOne!10770 (regTwo!10771 r!13659)))) b!1885044))

(assert (= (and b!1884631 ((_ is Star!5129) (regOne!10770 (regTwo!10771 r!13659)))) b!1885045))

(assert (= (and b!1884631 ((_ is Union!5129) (regOne!10770 (regTwo!10771 r!13659)))) b!1885046))

(declare-fun b!1885049 () Bool)

(declare-fun e!1202468 () Bool)

(declare-fun tp!536898 () Bool)

(assert (=> b!1885049 (= e!1202468 tp!536898)))

(declare-fun b!1885047 () Bool)

(assert (=> b!1885047 (= e!1202468 tp_is_empty!8907)))

(declare-fun b!1885050 () Bool)

(declare-fun tp!536896 () Bool)

(declare-fun tp!536894 () Bool)

(assert (=> b!1885050 (= e!1202468 (and tp!536896 tp!536894))))

(assert (=> b!1884631 (= tp!536608 e!1202468)))

(declare-fun b!1885048 () Bool)

(declare-fun tp!536897 () Bool)

(declare-fun tp!536895 () Bool)

(assert (=> b!1885048 (= e!1202468 (and tp!536897 tp!536895))))

(assert (= (and b!1884631 ((_ is ElementMatch!5129) (regTwo!10770 (regTwo!10771 r!13659)))) b!1885047))

(assert (= (and b!1884631 ((_ is Concat!8982) (regTwo!10770 (regTwo!10771 r!13659)))) b!1885048))

(assert (= (and b!1884631 ((_ is Star!5129) (regTwo!10770 (regTwo!10771 r!13659)))) b!1885049))

(assert (= (and b!1884631 ((_ is Union!5129) (regTwo!10770 (regTwo!10771 r!13659)))) b!1885050))

(declare-fun b!1885051 () Bool)

(declare-fun e!1202469 () Bool)

(declare-fun tp!536899 () Bool)

(declare-fun tp!536900 () Bool)

(assert (=> b!1885051 (= e!1202469 (and tp!536899 tp!536900))))

(assert (=> b!1884648 (= tp!536634 e!1202469)))

(assert (= (and b!1884648 ((_ is Cons!20947) (exprs!1483 (_2!11448 (_1!11449 (h!26350 mapValue!9057)))))) b!1885051))

(declare-fun condSetEmpty!11653 () Bool)

(assert (=> setNonEmpty!11629 (= condSetEmpty!11653 (= setRest!11630 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11653 () Bool)

(assert (=> setNonEmpty!11629 (= tp!536643 setRes!11653)))

(declare-fun setIsEmpty!11653 () Bool)

(assert (=> setIsEmpty!11653 setRes!11653))

(declare-fun setNonEmpty!11653 () Bool)

(declare-fun setElem!11653 () Context!1966)

(declare-fun tp!536901 () Bool)

(declare-fun e!1202470 () Bool)

(assert (=> setNonEmpty!11653 (= setRes!11653 (and tp!536901 (inv!27905 setElem!11653) e!1202470))))

(declare-fun setRest!11653 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11653 (= setRest!11630 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11653 true) setRest!11653))))

(declare-fun b!1885052 () Bool)

(declare-fun tp!536902 () Bool)

(assert (=> b!1885052 (= e!1202470 tp!536902)))

(assert (= (and setNonEmpty!11629 condSetEmpty!11653) setIsEmpty!11653))

(assert (= (and setNonEmpty!11629 (not condSetEmpty!11653)) setNonEmpty!11653))

(assert (= setNonEmpty!11653 b!1885052))

(declare-fun m!2318193 () Bool)

(assert (=> setNonEmpty!11653 m!2318193))

(declare-fun e!1202473 () Bool)

(assert (=> b!1884624 (= tp!536601 e!1202473)))

(declare-fun setIsEmpty!11654 () Bool)

(declare-fun setRes!11654 () Bool)

(assert (=> setIsEmpty!11654 setRes!11654))

(declare-fun b!1885053 () Bool)

(declare-fun e!1202471 () Bool)

(declare-fun tp!536905 () Bool)

(assert (=> b!1885053 (= e!1202471 tp!536905)))

(declare-fun e!1202472 () Bool)

(declare-fun tp!536903 () Bool)

(declare-fun setElem!11654 () Context!1966)

(declare-fun setNonEmpty!11654 () Bool)

(assert (=> setNonEmpty!11654 (= setRes!11654 (and tp!536903 (inv!27905 setElem!11654) e!1202472))))

(declare-fun setRest!11654 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11654 (= (_2!11447 (h!26349 (t!175027 mapDefault!9050))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11654 true) setRest!11654))))

(declare-fun tp!536906 () Bool)

(declare-fun b!1885054 () Bool)

(assert (=> b!1885054 (= e!1202473 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 (t!175027 mapDefault!9050))))) e!1202471 tp_is_empty!8907 setRes!11654 tp!536906))))

(declare-fun condSetEmpty!11654 () Bool)

(assert (=> b!1885054 (= condSetEmpty!11654 (= (_2!11447 (h!26349 (t!175027 mapDefault!9050))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1885055 () Bool)

(declare-fun tp!536904 () Bool)

(assert (=> b!1885055 (= e!1202472 tp!536904)))

(assert (= b!1885054 b!1885053))

(assert (= (and b!1885054 condSetEmpty!11654) setIsEmpty!11654))

(assert (= (and b!1885054 (not condSetEmpty!11654)) setNonEmpty!11654))

(assert (= setNonEmpty!11654 b!1885055))

(assert (= (and b!1884624 ((_ is Cons!20948) (t!175027 mapDefault!9050))) b!1885054))

(declare-fun m!2318195 () Bool)

(assert (=> setNonEmpty!11654 m!2318195))

(declare-fun m!2318197 () Bool)

(assert (=> b!1885054 m!2318197))

(declare-fun b!1885058 () Bool)

(declare-fun e!1202474 () Bool)

(declare-fun tp!536911 () Bool)

(assert (=> b!1885058 (= e!1202474 tp!536911)))

(declare-fun b!1885056 () Bool)

(assert (=> b!1885056 (= e!1202474 tp_is_empty!8907)))

(declare-fun b!1885059 () Bool)

(declare-fun tp!536909 () Bool)

(declare-fun tp!536907 () Bool)

(assert (=> b!1885059 (= e!1202474 (and tp!536909 tp!536907))))

(assert (=> b!1884669 (= tp!536662 e!1202474)))

(declare-fun b!1885057 () Bool)

(declare-fun tp!536910 () Bool)

(declare-fun tp!536908 () Bool)

(assert (=> b!1885057 (= e!1202474 (and tp!536910 tp!536908))))

(assert (= (and b!1884669 ((_ is ElementMatch!5129) (regOne!10770 (regOne!10770 r!13659)))) b!1885056))

(assert (= (and b!1884669 ((_ is Concat!8982) (regOne!10770 (regOne!10770 r!13659)))) b!1885057))

(assert (= (and b!1884669 ((_ is Star!5129) (regOne!10770 (regOne!10770 r!13659)))) b!1885058))

(assert (= (and b!1884669 ((_ is Union!5129) (regOne!10770 (regOne!10770 r!13659)))) b!1885059))

(declare-fun b!1885062 () Bool)

(declare-fun e!1202475 () Bool)

(declare-fun tp!536916 () Bool)

(assert (=> b!1885062 (= e!1202475 tp!536916)))

(declare-fun b!1885060 () Bool)

(assert (=> b!1885060 (= e!1202475 tp_is_empty!8907)))

(declare-fun b!1885063 () Bool)

(declare-fun tp!536914 () Bool)

(declare-fun tp!536912 () Bool)

(assert (=> b!1885063 (= e!1202475 (and tp!536914 tp!536912))))

(assert (=> b!1884669 (= tp!536660 e!1202475)))

(declare-fun b!1885061 () Bool)

(declare-fun tp!536915 () Bool)

(declare-fun tp!536913 () Bool)

(assert (=> b!1885061 (= e!1202475 (and tp!536915 tp!536913))))

(assert (= (and b!1884669 ((_ is ElementMatch!5129) (regTwo!10770 (regOne!10770 r!13659)))) b!1885060))

(assert (= (and b!1884669 ((_ is Concat!8982) (regTwo!10770 (regOne!10770 r!13659)))) b!1885061))

(assert (= (and b!1884669 ((_ is Star!5129) (regTwo!10770 (regOne!10770 r!13659)))) b!1885062))

(assert (= (and b!1884669 ((_ is Union!5129) (regTwo!10770 (regOne!10770 r!13659)))) b!1885063))

(declare-fun b!1885064 () Bool)

(declare-fun e!1202476 () Bool)

(declare-fun tp!536917 () Bool)

(declare-fun tp!536918 () Bool)

(assert (=> b!1885064 (= e!1202476 (and tp!536917 tp!536918))))

(assert (=> b!1884623 (= tp!536600 e!1202476)))

(assert (= (and b!1884623 ((_ is Cons!20947) (exprs!1483 (_1!11446 (_1!11447 (h!26349 mapDefault!9050)))))) b!1885064))

(declare-fun condSetEmpty!11655 () Bool)

(assert (=> setNonEmpty!11631 (= condSetEmpty!11655 (= setRest!11631 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11655 () Bool)

(assert (=> setNonEmpty!11631 (= tp!536645 setRes!11655)))

(declare-fun setIsEmpty!11655 () Bool)

(assert (=> setIsEmpty!11655 setRes!11655))

(declare-fun setElem!11655 () Context!1966)

(declare-fun e!1202477 () Bool)

(declare-fun tp!536919 () Bool)

(declare-fun setNonEmpty!11655 () Bool)

(assert (=> setNonEmpty!11655 (= setRes!11655 (and tp!536919 (inv!27905 setElem!11655) e!1202477))))

(declare-fun setRest!11655 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11655 (= setRest!11631 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11655 true) setRest!11655))))

(declare-fun b!1885065 () Bool)

(declare-fun tp!536920 () Bool)

(assert (=> b!1885065 (= e!1202477 tp!536920)))

(assert (= (and setNonEmpty!11631 condSetEmpty!11655) setIsEmpty!11655))

(assert (= (and setNonEmpty!11631 (not condSetEmpty!11655)) setNonEmpty!11655))

(assert (= setNonEmpty!11655 b!1885065))

(declare-fun m!2318199 () Bool)

(assert (=> setNonEmpty!11655 m!2318199))

(declare-fun b!1885066 () Bool)

(declare-fun e!1202478 () Bool)

(declare-fun tp!536921 () Bool)

(declare-fun tp!536922 () Bool)

(assert (=> b!1885066 (= e!1202478 (and tp!536921 tp!536922))))

(assert (=> b!1884656 (= tp!536648 e!1202478)))

(assert (= (and b!1884656 ((_ is Cons!20947) (exprs!1483 setElem!11631))) b!1885066))

(declare-fun b!1885069 () Bool)

(declare-fun e!1202479 () Bool)

(declare-fun tp!536927 () Bool)

(assert (=> b!1885069 (= e!1202479 tp!536927)))

(declare-fun b!1885067 () Bool)

(assert (=> b!1885067 (= e!1202479 tp_is_empty!8907)))

(declare-fun b!1885070 () Bool)

(declare-fun tp!536925 () Bool)

(declare-fun tp!536923 () Bool)

(assert (=> b!1885070 (= e!1202479 (and tp!536925 tp!536923))))

(assert (=> b!1884629 (= tp!536604 e!1202479)))

(declare-fun b!1885068 () Bool)

(declare-fun tp!536926 () Bool)

(declare-fun tp!536924 () Bool)

(assert (=> b!1885068 (= e!1202479 (and tp!536926 tp!536924))))

(assert (= (and b!1884629 ((_ is ElementMatch!5129) (regOne!10771 (regOne!10771 r!13659)))) b!1885067))

(assert (= (and b!1884629 ((_ is Concat!8982) (regOne!10771 (regOne!10771 r!13659)))) b!1885068))

(assert (= (and b!1884629 ((_ is Star!5129) (regOne!10771 (regOne!10771 r!13659)))) b!1885069))

(assert (= (and b!1884629 ((_ is Union!5129) (regOne!10771 (regOne!10771 r!13659)))) b!1885070))

(declare-fun b!1885073 () Bool)

(declare-fun e!1202480 () Bool)

(declare-fun tp!536932 () Bool)

(assert (=> b!1885073 (= e!1202480 tp!536932)))

(declare-fun b!1885071 () Bool)

(assert (=> b!1885071 (= e!1202480 tp_is_empty!8907)))

(declare-fun b!1885074 () Bool)

(declare-fun tp!536930 () Bool)

(declare-fun tp!536928 () Bool)

(assert (=> b!1885074 (= e!1202480 (and tp!536930 tp!536928))))

(assert (=> b!1884629 (= tp!536602 e!1202480)))

(declare-fun b!1885072 () Bool)

(declare-fun tp!536931 () Bool)

(declare-fun tp!536929 () Bool)

(assert (=> b!1885072 (= e!1202480 (and tp!536931 tp!536929))))

(assert (= (and b!1884629 ((_ is ElementMatch!5129) (regTwo!10771 (regOne!10771 r!13659)))) b!1885071))

(assert (= (and b!1884629 ((_ is Concat!8982) (regTwo!10771 (regOne!10771 r!13659)))) b!1885072))

(assert (= (and b!1884629 ((_ is Star!5129) (regTwo!10771 (regOne!10771 r!13659)))) b!1885073))

(assert (= (and b!1884629 ((_ is Union!5129) (regTwo!10771 (regOne!10771 r!13659)))) b!1885074))

(declare-fun b!1885077 () Bool)

(declare-fun e!1202481 () Bool)

(declare-fun tp!536937 () Bool)

(assert (=> b!1885077 (= e!1202481 tp!536937)))

(declare-fun b!1885075 () Bool)

(assert (=> b!1885075 (= e!1202481 tp_is_empty!8907)))

(declare-fun b!1885078 () Bool)

(declare-fun tp!536935 () Bool)

(declare-fun tp!536933 () Bool)

(assert (=> b!1885078 (= e!1202481 (and tp!536935 tp!536933))))

(assert (=> b!1884627 (= tp!536605 e!1202481)))

(declare-fun b!1885076 () Bool)

(declare-fun tp!536936 () Bool)

(declare-fun tp!536934 () Bool)

(assert (=> b!1885076 (= e!1202481 (and tp!536936 tp!536934))))

(assert (= (and b!1884627 ((_ is ElementMatch!5129) (regOne!10770 (regOne!10771 r!13659)))) b!1885075))

(assert (= (and b!1884627 ((_ is Concat!8982) (regOne!10770 (regOne!10771 r!13659)))) b!1885076))

(assert (= (and b!1884627 ((_ is Star!5129) (regOne!10770 (regOne!10771 r!13659)))) b!1885077))

(assert (= (and b!1884627 ((_ is Union!5129) (regOne!10770 (regOne!10771 r!13659)))) b!1885078))

(declare-fun b!1885081 () Bool)

(declare-fun e!1202482 () Bool)

(declare-fun tp!536942 () Bool)

(assert (=> b!1885081 (= e!1202482 tp!536942)))

(declare-fun b!1885079 () Bool)

(assert (=> b!1885079 (= e!1202482 tp_is_empty!8907)))

(declare-fun b!1885082 () Bool)

(declare-fun tp!536940 () Bool)

(declare-fun tp!536938 () Bool)

(assert (=> b!1885082 (= e!1202482 (and tp!536940 tp!536938))))

(assert (=> b!1884627 (= tp!536603 e!1202482)))

(declare-fun b!1885080 () Bool)

(declare-fun tp!536941 () Bool)

(declare-fun tp!536939 () Bool)

(assert (=> b!1885080 (= e!1202482 (and tp!536941 tp!536939))))

(assert (= (and b!1884627 ((_ is ElementMatch!5129) (regTwo!10770 (regOne!10771 r!13659)))) b!1885079))

(assert (= (and b!1884627 ((_ is Concat!8982) (regTwo!10770 (regOne!10771 r!13659)))) b!1885080))

(assert (= (and b!1884627 ((_ is Star!5129) (regTwo!10770 (regOne!10771 r!13659)))) b!1885081))

(assert (= (and b!1884627 ((_ is Union!5129) (regTwo!10770 (regOne!10771 r!13659)))) b!1885082))

(declare-fun b!1885083 () Bool)

(declare-fun e!1202483 () Bool)

(declare-fun tp!536943 () Bool)

(declare-fun tp!536944 () Bool)

(assert (=> b!1885083 (= e!1202483 (and tp!536943 tp!536944))))

(assert (=> b!1884591 (= tp!536556 e!1202483)))

(assert (= (and b!1884591 ((_ is Cons!20947) (exprs!1483 setElem!11618))) b!1885083))

(declare-fun e!1202486 () Bool)

(assert (=> b!1884587 (= tp!536554 e!1202486)))

(declare-fun setIsEmpty!11656 () Bool)

(declare-fun setRes!11656 () Bool)

(assert (=> setIsEmpty!11656 setRes!11656))

(declare-fun b!1885084 () Bool)

(declare-fun e!1202484 () Bool)

(declare-fun tp!536947 () Bool)

(assert (=> b!1885084 (= e!1202484 tp!536947)))

(declare-fun tp!536945 () Bool)

(declare-fun e!1202485 () Bool)

(declare-fun setElem!11656 () Context!1966)

(declare-fun setNonEmpty!11656 () Bool)

(assert (=> setNonEmpty!11656 (= setRes!11656 (and tp!536945 (inv!27905 setElem!11656) e!1202485))))

(declare-fun setRest!11656 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11656 (= (_2!11447 (h!26349 (t!175027 mapValue!9051))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11656 true) setRest!11656))))

(declare-fun tp!536948 () Bool)

(declare-fun b!1885085 () Bool)

(assert (=> b!1885085 (= e!1202486 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 (t!175027 mapValue!9051))))) e!1202484 tp_is_empty!8907 setRes!11656 tp!536948))))

(declare-fun condSetEmpty!11656 () Bool)

(assert (=> b!1885085 (= condSetEmpty!11656 (= (_2!11447 (h!26349 (t!175027 mapValue!9051))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1885086 () Bool)

(declare-fun tp!536946 () Bool)

(assert (=> b!1885086 (= e!1202485 tp!536946)))

(assert (= b!1885085 b!1885084))

(assert (= (and b!1885085 condSetEmpty!11656) setIsEmpty!11656))

(assert (= (and b!1885085 (not condSetEmpty!11656)) setNonEmpty!11656))

(assert (= setNonEmpty!11656 b!1885086))

(assert (= (and b!1884587 ((_ is Cons!20948) (t!175027 mapValue!9051))) b!1885085))

(declare-fun m!2318201 () Bool)

(assert (=> setNonEmpty!11656 m!2318201))

(declare-fun m!2318203 () Bool)

(assert (=> b!1885085 m!2318203))

(declare-fun condSetEmpty!11657 () Bool)

(assert (=> setNonEmpty!11618 (= condSetEmpty!11657 (= setRest!11618 ((as const (Array Context!1966 Bool)) false)))))

(declare-fun setRes!11657 () Bool)

(assert (=> setNonEmpty!11618 (= tp!536555 setRes!11657)))

(declare-fun setIsEmpty!11657 () Bool)

(assert (=> setIsEmpty!11657 setRes!11657))

(declare-fun setNonEmpty!11657 () Bool)

(declare-fun setElem!11657 () Context!1966)

(declare-fun tp!536949 () Bool)

(declare-fun e!1202487 () Bool)

(assert (=> setNonEmpty!11657 (= setRes!11657 (and tp!536949 (inv!27905 setElem!11657) e!1202487))))

(declare-fun setRest!11657 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11657 (= setRest!11618 ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11657 true) setRest!11657))))

(declare-fun b!1885087 () Bool)

(declare-fun tp!536950 () Bool)

(assert (=> b!1885087 (= e!1202487 tp!536950)))

(assert (= (and setNonEmpty!11618 condSetEmpty!11657) setIsEmpty!11657))

(assert (= (and setNonEmpty!11618 (not condSetEmpty!11657)) setNonEmpty!11657))

(assert (= setNonEmpty!11657 b!1885087))

(declare-fun m!2318205 () Bool)

(assert (=> setNonEmpty!11657 m!2318205))

(declare-fun b!1885088 () Bool)

(declare-fun e!1202488 () Bool)

(declare-fun tp!536951 () Bool)

(declare-fun tp!536952 () Bool)

(assert (=> b!1885088 (= e!1202488 (and tp!536951 tp!536952))))

(assert (=> b!1884586 (= tp!536553 e!1202488)))

(assert (= (and b!1884586 ((_ is Cons!20947) (exprs!1483 (_1!11446 (_1!11447 (h!26349 mapValue!9051)))))) b!1885088))

(declare-fun b!1885089 () Bool)

(declare-fun e!1202489 () Bool)

(declare-fun tp!536953 () Bool)

(declare-fun tp!536954 () Bool)

(assert (=> b!1885089 (= e!1202489 (and tp!536953 tp!536954))))

(assert (=> b!1884654 (= tp!536646 e!1202489)))

(assert (= (and b!1884654 ((_ is Cons!20947) (exprs!1483 (_2!11448 (_1!11449 (h!26350 mapValue!9050)))))) b!1885089))

(declare-fun b!1885090 () Bool)

(declare-fun e!1202490 () Bool)

(declare-fun tp!536955 () Bool)

(declare-fun tp!536956 () Bool)

(assert (=> b!1885090 (= e!1202490 (and tp!536955 tp!536956))))

(assert (=> b!1884653 (= tp!536636 e!1202490)))

(assert (= (and b!1884653 ((_ is Cons!20947) (exprs!1483 (_2!11448 (_1!11449 (h!26350 mapDefault!9057)))))) b!1885090))

(declare-fun setElem!11658 () Context!1966)

(declare-fun setNonEmpty!11658 () Bool)

(declare-fun e!1202494 () Bool)

(declare-fun tp!536958 () Bool)

(declare-fun setRes!11659 () Bool)

(assert (=> setNonEmpty!11658 (= setRes!11659 (and tp!536958 (inv!27905 setElem!11658) e!1202494))))

(declare-fun mapValue!9059 () List!21030)

(declare-fun setRest!11658 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11658 (= (_2!11447 (h!26349 mapValue!9059)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11658 true) setRest!11658))))

(declare-fun e!1202496 () Bool)

(declare-fun tp!536963 () Bool)

(declare-fun b!1885091 () Bool)

(declare-fun e!1202495 () Bool)

(assert (=> b!1885091 (= e!1202495 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 mapValue!9059)))) e!1202496 tp_is_empty!8907 setRes!11659 tp!536963))))

(declare-fun condSetEmpty!11659 () Bool)

(assert (=> b!1885091 (= condSetEmpty!11659 (= (_2!11447 (h!26349 mapValue!9059)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun condMapEmpty!9059 () Bool)

(declare-fun mapDefault!9059 () List!21030)

(assert (=> mapNonEmpty!9054 (= condMapEmpty!9059 (= mapRest!9054 ((as const (Array (_ BitVec 32) List!21030)) mapDefault!9059)))))

(declare-fun e!1202491 () Bool)

(declare-fun mapRes!9059 () Bool)

(assert (=> mapNonEmpty!9054 (= tp!536536 (and e!1202491 mapRes!9059))))

(declare-fun b!1885092 () Bool)

(declare-fun tp!536957 () Bool)

(assert (=> b!1885092 (= e!1202494 tp!536957)))

(declare-fun tp!536965 () Bool)

(declare-fun e!1202492 () Bool)

(declare-fun b!1885093 () Bool)

(declare-fun setRes!11658 () Bool)

(assert (=> b!1885093 (= e!1202491 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 mapDefault!9059)))) e!1202492 tp_is_empty!8907 setRes!11658 tp!536965))))

(declare-fun condSetEmpty!11658 () Bool)

(assert (=> b!1885093 (= condSetEmpty!11658 (= (_2!11447 (h!26349 mapDefault!9059)) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun e!1202493 () Bool)

(declare-fun setElem!11659 () Context!1966)

(declare-fun tp!536964 () Bool)

(declare-fun setNonEmpty!11659 () Bool)

(assert (=> setNonEmpty!11659 (= setRes!11658 (and tp!536964 (inv!27905 setElem!11659) e!1202493))))

(declare-fun setRest!11659 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11659 (= (_2!11447 (h!26349 mapDefault!9059)) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11659 true) setRest!11659))))

(declare-fun b!1885094 () Bool)

(declare-fun tp!536962 () Bool)

(assert (=> b!1885094 (= e!1202492 tp!536962)))

(declare-fun setIsEmpty!11658 () Bool)

(assert (=> setIsEmpty!11658 setRes!11658))

(declare-fun mapNonEmpty!9059 () Bool)

(declare-fun tp!536959 () Bool)

(assert (=> mapNonEmpty!9059 (= mapRes!9059 (and tp!536959 e!1202495))))

(declare-fun mapKey!9059 () (_ BitVec 32))

(declare-fun mapRest!9059 () (Array (_ BitVec 32) List!21030))

(assert (=> mapNonEmpty!9059 (= mapRest!9054 (store mapRest!9059 mapKey!9059 mapValue!9059))))

(declare-fun b!1885095 () Bool)

(declare-fun tp!536960 () Bool)

(assert (=> b!1885095 (= e!1202496 tp!536960)))

(declare-fun mapIsEmpty!9059 () Bool)

(assert (=> mapIsEmpty!9059 mapRes!9059))

(declare-fun b!1885096 () Bool)

(declare-fun tp!536961 () Bool)

(assert (=> b!1885096 (= e!1202493 tp!536961)))

(declare-fun setIsEmpty!11659 () Bool)

(assert (=> setIsEmpty!11659 setRes!11659))

(assert (= (and mapNonEmpty!9054 condMapEmpty!9059) mapIsEmpty!9059))

(assert (= (and mapNonEmpty!9054 (not condMapEmpty!9059)) mapNonEmpty!9059))

(assert (= b!1885091 b!1885095))

(assert (= (and b!1885091 condSetEmpty!11659) setIsEmpty!11659))

(assert (= (and b!1885091 (not condSetEmpty!11659)) setNonEmpty!11658))

(assert (= setNonEmpty!11658 b!1885092))

(assert (= (and mapNonEmpty!9059 ((_ is Cons!20948) mapValue!9059)) b!1885091))

(assert (= b!1885093 b!1885094))

(assert (= (and b!1885093 condSetEmpty!11658) setIsEmpty!11658))

(assert (= (and b!1885093 (not condSetEmpty!11658)) setNonEmpty!11659))

(assert (= setNonEmpty!11659 b!1885096))

(assert (= (and mapNonEmpty!9054 ((_ is Cons!20948) mapDefault!9059)) b!1885093))

(declare-fun m!2318207 () Bool)

(assert (=> b!1885093 m!2318207))

(declare-fun m!2318209 () Bool)

(assert (=> setNonEmpty!11659 m!2318209))

(declare-fun m!2318211 () Bool)

(assert (=> mapNonEmpty!9059 m!2318211))

(declare-fun m!2318213 () Bool)

(assert (=> setNonEmpty!11658 m!2318213))

(declare-fun m!2318215 () Bool)

(assert (=> b!1885091 m!2318215))

(declare-fun e!1202499 () Bool)

(assert (=> b!1884593 (= tp!536562 e!1202499)))

(declare-fun setIsEmpty!11660 () Bool)

(declare-fun setRes!11660 () Bool)

(assert (=> setIsEmpty!11660 setRes!11660))

(declare-fun b!1885097 () Bool)

(declare-fun e!1202497 () Bool)

(declare-fun tp!536968 () Bool)

(assert (=> b!1885097 (= e!1202497 tp!536968)))

(declare-fun e!1202498 () Bool)

(declare-fun tp!536966 () Bool)

(declare-fun setElem!11660 () Context!1966)

(declare-fun setNonEmpty!11660 () Bool)

(assert (=> setNonEmpty!11660 (= setRes!11660 (and tp!536966 (inv!27905 setElem!11660) e!1202498))))

(declare-fun setRest!11660 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11660 (= (_2!11447 (h!26349 (t!175027 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11660 true) setRest!11660))))

(declare-fun tp!536969 () Bool)

(declare-fun b!1885098 () Bool)

(assert (=> b!1885098 (= e!1202499 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 (t!175027 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))))))) e!1202497 tp_is_empty!8907 setRes!11660 tp!536969))))

(declare-fun condSetEmpty!11660 () Bool)

(assert (=> b!1885098 (= condSetEmpty!11660 (= (_2!11447 (h!26349 (t!175027 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1885099 () Bool)

(declare-fun tp!536967 () Bool)

(assert (=> b!1885099 (= e!1202498 tp!536967)))

(assert (= b!1885098 b!1885097))

(assert (= (and b!1885098 condSetEmpty!11660) setIsEmpty!11660))

(assert (= (and b!1885098 (not condSetEmpty!11660)) setNonEmpty!11660))

(assert (= setNonEmpty!11660 b!1885099))

(assert (= (and b!1884593 ((_ is Cons!20948) (t!175027 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015))))))))) b!1885098))

(declare-fun m!2318217 () Bool)

(assert (=> setNonEmpty!11660 m!2318217))

(declare-fun m!2318219 () Bool)

(assert (=> b!1885098 m!2318219))

(declare-fun b!1885102 () Bool)

(declare-fun e!1202500 () Bool)

(declare-fun tp!536974 () Bool)

(assert (=> b!1885102 (= e!1202500 tp!536974)))

(declare-fun b!1885100 () Bool)

(assert (=> b!1885100 (= e!1202500 tp_is_empty!8907)))

(declare-fun b!1885103 () Bool)

(declare-fun tp!536972 () Bool)

(declare-fun tp!536970 () Bool)

(assert (=> b!1885103 (= e!1202500 (and tp!536972 tp!536970))))

(assert (=> b!1884674 (= tp!536668 e!1202500)))

(declare-fun b!1885101 () Bool)

(declare-fun tp!536973 () Bool)

(declare-fun tp!536971 () Bool)

(assert (=> b!1885101 (= e!1202500 (and tp!536973 tp!536971))))

(assert (= (and b!1884674 ((_ is ElementMatch!5129) (reg!5458 (regTwo!10770 r!13659)))) b!1885100))

(assert (= (and b!1884674 ((_ is Concat!8982) (reg!5458 (regTwo!10770 r!13659)))) b!1885101))

(assert (= (and b!1884674 ((_ is Star!5129) (reg!5458 (regTwo!10770 r!13659)))) b!1885102))

(assert (= (and b!1884674 ((_ is Union!5129) (reg!5458 (regTwo!10770 r!13659)))) b!1885103))

(declare-fun b!1885104 () Bool)

(declare-fun e!1202501 () Bool)

(declare-fun tp!536975 () Bool)

(declare-fun tp!536976 () Bool)

(assert (=> b!1885104 (= e!1202501 (and tp!536975 tp!536976))))

(assert (=> b!1884575 (= tp!536539 e!1202501)))

(assert (= (and b!1884575 ((_ is Cons!20947) (exprs!1483 (_1!11446 (_1!11447 (h!26349 mapDefault!9054)))))) b!1885104))

(declare-fun b!1885105 () Bool)

(declare-fun e!1202502 () Bool)

(declare-fun tp!536977 () Bool)

(declare-fun tp!536978 () Bool)

(assert (=> b!1885105 (= e!1202502 (and tp!536977 tp!536978))))

(assert (=> b!1884592 (= tp!536561 e!1202502)))

(assert (= (and b!1884592 ((_ is Cons!20947) (exprs!1483 (_1!11446 (_1!11447 (h!26349 (minValue!2211 (v!26223 (underlying!4099 (v!26224 (underlying!4100 (cache!2248 cacheUp!1015)))))))))))) b!1885105))

(declare-fun b!1885110 () Bool)

(declare-fun e!1202505 () Bool)

(declare-fun tp!536981 () Bool)

(assert (=> b!1885110 (= e!1202505 (and tp_is_empty!8907 tp!536981))))

(assert (=> b!1884667 (= tp!536656 e!1202505)))

(assert (= (and b!1884667 ((_ is Cons!20950) (innerList!7024 (xs!9854 (c!307918 input!6054))))) b!1885110))

(declare-fun b!1885111 () Bool)

(declare-fun e!1202506 () Bool)

(declare-fun tp!536982 () Bool)

(declare-fun tp!536983 () Bool)

(assert (=> b!1885111 (= e!1202506 (and tp!536982 tp!536983))))

(assert (=> b!1884651 (= tp!536638 e!1202506)))

(assert (= (and b!1884651 ((_ is Cons!20947) (exprs!1483 setElem!11629))) b!1885111))

(declare-fun b!1885114 () Bool)

(declare-fun e!1202507 () Bool)

(declare-fun tp!536988 () Bool)

(assert (=> b!1885114 (= e!1202507 tp!536988)))

(declare-fun b!1885112 () Bool)

(assert (=> b!1885112 (= e!1202507 tp_is_empty!8907)))

(declare-fun b!1885115 () Bool)

(declare-fun tp!536986 () Bool)

(declare-fun tp!536984 () Bool)

(assert (=> b!1885115 (= e!1202507 (and tp!536986 tp!536984))))

(assert (=> b!1884604 (= tp!536575 e!1202507)))

(declare-fun b!1885113 () Bool)

(declare-fun tp!536987 () Bool)

(declare-fun tp!536985 () Bool)

(assert (=> b!1885113 (= e!1202507 (and tp!536987 tp!536985))))

(assert (= (and b!1884604 ((_ is ElementMatch!5129) (_1!11448 (_1!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) b!1885112))

(assert (= (and b!1884604 ((_ is Concat!8982) (_1!11448 (_1!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) b!1885113))

(assert (= (and b!1884604 ((_ is Star!5129) (_1!11448 (_1!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) b!1885114))

(assert (= (and b!1884604 ((_ is Union!5129) (_1!11448 (_1!11449 (h!26350 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) b!1885115))

(declare-fun e!1202510 () Bool)

(assert (=> b!1884604 (= tp!536577 e!1202510)))

(declare-fun b!1885116 () Bool)

(declare-fun e!1202509 () Bool)

(declare-fun tp!536990 () Bool)

(assert (=> b!1885116 (= e!1202509 tp!536990)))

(declare-fun setRes!11661 () Bool)

(declare-fun tp!536991 () Bool)

(declare-fun b!1885117 () Bool)

(declare-fun tp!536993 () Bool)

(assert (=> b!1885117 (= e!1202510 (and tp!536991 (inv!27905 (_2!11448 (_1!11449 (h!26350 (t!175028 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))))) e!1202509 tp_is_empty!8907 setRes!11661 tp!536993))))

(declare-fun condSetEmpty!11661 () Bool)

(assert (=> b!1885117 (= condSetEmpty!11661 (= (_2!11449 (h!26350 (t!175028 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1885118 () Bool)

(declare-fun e!1202508 () Bool)

(declare-fun tp!536992 () Bool)

(assert (=> b!1885118 (= e!1202508 tp!536992)))

(declare-fun setIsEmpty!11661 () Bool)

(assert (=> setIsEmpty!11661 setRes!11661))

(declare-fun tp!536989 () Bool)

(declare-fun setNonEmpty!11661 () Bool)

(declare-fun setElem!11661 () Context!1966)

(assert (=> setNonEmpty!11661 (= setRes!11661 (and tp!536989 (inv!27905 setElem!11661) e!1202508))))

(declare-fun setRest!11661 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11661 (= (_2!11449 (h!26350 (t!175028 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11661 true) setRest!11661))))

(assert (= b!1885117 b!1885116))

(assert (= (and b!1885117 condSetEmpty!11661) setIsEmpty!11661))

(assert (= (and b!1885117 (not condSetEmpty!11661)) setNonEmpty!11661))

(assert (= setNonEmpty!11661 b!1885118))

(assert (= (and b!1884604 ((_ is Cons!20949) (t!175028 (zeroValue!2212 (v!26225 (underlying!4101 (v!26226 (underlying!4102 (cache!2249 cacheDown!1134))))))))) b!1885117))

(declare-fun m!2318221 () Bool)

(assert (=> b!1885117 m!2318221))

(declare-fun m!2318223 () Bool)

(assert (=> setNonEmpty!11661 m!2318223))

(declare-fun e!1202513 () Bool)

(assert (=> b!1884574 (= tp!536542 e!1202513)))

(declare-fun setIsEmpty!11662 () Bool)

(declare-fun setRes!11662 () Bool)

(assert (=> setIsEmpty!11662 setRes!11662))

(declare-fun b!1885119 () Bool)

(declare-fun e!1202511 () Bool)

(declare-fun tp!536996 () Bool)

(assert (=> b!1885119 (= e!1202511 tp!536996)))

(declare-fun setElem!11662 () Context!1966)

(declare-fun e!1202512 () Bool)

(declare-fun tp!536994 () Bool)

(declare-fun setNonEmpty!11662 () Bool)

(assert (=> setNonEmpty!11662 (= setRes!11662 (and tp!536994 (inv!27905 setElem!11662) e!1202512))))

(declare-fun setRest!11662 () (InoxSet Context!1966))

(assert (=> setNonEmpty!11662 (= (_2!11447 (h!26349 (t!175027 mapDefault!9054))) ((_ map or) (store ((as const (Array Context!1966 Bool)) false) setElem!11662 true) setRest!11662))))

(declare-fun tp!536997 () Bool)

(declare-fun b!1885120 () Bool)

(assert (=> b!1885120 (= e!1202513 (and (inv!27905 (_1!11446 (_1!11447 (h!26349 (t!175027 mapDefault!9054))))) e!1202511 tp_is_empty!8907 setRes!11662 tp!536997))))

(declare-fun condSetEmpty!11662 () Bool)

(assert (=> b!1885120 (= condSetEmpty!11662 (= (_2!11447 (h!26349 (t!175027 mapDefault!9054))) ((as const (Array Context!1966 Bool)) false)))))

(declare-fun b!1885121 () Bool)

(declare-fun tp!536995 () Bool)

(assert (=> b!1885121 (= e!1202512 tp!536995)))

(assert (= b!1885120 b!1885119))

(assert (= (and b!1885120 condSetEmpty!11662) setIsEmpty!11662))

(assert (= (and b!1885120 (not condSetEmpty!11662)) setNonEmpty!11662))

(assert (= setNonEmpty!11662 b!1885121))

(assert (= (and b!1884574 ((_ is Cons!20948) (t!175027 mapDefault!9054))) b!1885120))

(declare-fun m!2318225 () Bool)

(assert (=> setNonEmpty!11662 m!2318225))

(declare-fun m!2318227 () Bool)

(assert (=> b!1885120 m!2318227))

(check-sat (not b!1884888) (not b!1885110) (not b!1884933) (not b!1885088) (not b!1885091) (not b!1885103) (not b!1884890) (not b!1884881) (not b!1885038) (not b!1885117) (not b!1885092) (not b!1884959) (not b!1884875) (not b!1884930) (not d!577717) (not b!1885068) (not b!1884992) (not b!1884928) (not b!1884854) (not b!1884865) (not b!1885118) (not bm!116738) (not setNonEmpty!11651) (not d!577819) (not setNonEmpty!11660) (not d!577721) (not bm!116741) (not d!577835) (not b!1884901) (not b!1885087) (not b!1885119) (not b!1885026) (not b!1885114) (not d!577755) b_and!145179 (not b!1884884) (not b!1885084) (not b!1884898) (not b!1884880) (not b!1885052) (not b!1884998) (not b!1884718) (not b!1884971) (not b!1884913) (not b!1885019) (not b!1885024) (not setNonEmpty!11641) (not setNonEmpty!11649) (not b!1884968) (not b!1884889) (not d!577763) (not b!1885030) (not b!1885005) (not d!577823) (not b!1884820) (not b!1884988) (not setNonEmpty!11639) b_and!145181 (not d!577791) (not b!1885009) (not b!1884925) (not setNonEmpty!11652) (not b!1884899) (not b!1884989) (not setNonEmpty!11658) (not b!1884665) (not setNonEmpty!11642) (not b!1884864) (not b!1884985) (not setNonEmpty!11638) (not setNonEmpty!11647) (not b!1885044) (not b!1884915) (not b!1885066) (not b!1884780) (not b!1884874) (not b!1884935) (not b!1884975) (not b!1884790) (not b!1884803) (not bm!116745) (not d!577803) (not b!1884995) (not b!1885025) (not b!1884894) (not b!1884911) (not b!1885042) (not b!1885046) (not b!1885094) (not b!1884993) (not b!1884957) (not b!1884886) (not d!577825) (not b!1884882) (not b!1885078) (not b!1885023) (not b!1885082) (not d!577737) (not mapNonEmpty!9058) (not d!577777) (not b!1884896) (not b!1884986) (not b!1885006) (not d!577723) (not b_next!53095) (not b!1884999) (not b!1885003) (not b!1885076) (not b!1884956) (not b!1884900) (not b!1884997) (not setNonEmpty!11645) tp_is_empty!8907 (not b!1885083) (not b!1885086) (not b!1885001) (not d!577817) (not setNonEmpty!11662) (not d!577765) (not b!1884719) (not b!1885020) (not b!1885040) (not d!577787) (not d!577739) (not b!1884908) (not b!1885041) (not b!1885004) (not d!577799) (not b!1885034) (not b!1884996) (not b!1884877) (not d!577841) (not bm!116724) (not b!1885096) (not b!1885090) (not b!1884910) (not setNonEmpty!11635) (not b!1885007) (not b!1884872) (not d!577773) (not b!1884707) (not b!1884683) (not b!1884815) (not d!577759) (not d!577779) (not b!1885077) (not d!577837) (not b!1884871) (not b!1884923) (not d!577789) (not b!1885085) (not b!1884688) (not b!1885002) (not b!1885116) (not d!577733) (not b!1885061) (not b!1885098) (not b!1884870) (not b!1884873) (not b!1885111) (not b!1885081) (not b!1885022) (not d!577741) (not b!1884879) (not b!1885053) (not b!1885036) (not setNonEmpty!11646) (not b!1884887) (not d!577767) (not b!1884969) (not b!1885074) (not b!1884978) (not b!1884709) (not b!1884982) (not b!1884754) (not b!1884766) (not b!1885080) (not b!1884967) (not d!577843) (not b!1885070) (not d!577743) (not b!1884685) (not b!1885069) (not b!1885105) (not b!1885054) (not b!1884686) (not b!1885120) (not b!1884892) (not b!1884906) (not b!1885089) (not setNonEmpty!11633) (not b!1885062) (not d!577833) (not b!1885099) (not b_next!53097) b_and!145183 (not b!1884711) (not b!1884724) (not b!1885063) (not b!1885013) (not b!1884976) (not b!1884832) (not b!1885012) (not b!1884706) (not b!1885028) (not b!1885121) (not b!1884980) (not b!1885113) (not d!577753) (not b!1884964) (not setNonEmpty!11659) (not b!1885059) (not b!1884831) (not b!1885065) (not d!577801) (not b!1884876) (not b!1885029) (not b!1884722) (not bm!116735) (not b!1885064) (not b_next!53099) (not b!1884984) (not d!577811) (not b!1884983) (not b!1884931) (not b!1884987) (not mapNonEmpty!9059) (not b!1885051) (not b!1884914) (not b!1884965) (not b!1884960) (not b!1884921) (not b!1884973) (not b!1884979) (not d!577827) (not b!1884961) (not d!577719) (not b!1884708) (not setNonEmpty!11653) (not b!1884774) (not bm!116734) (not b!1884788) (not b!1885057) (not b!1884891) (not b!1885037) (not b!1884767) (not b!1885055) (not d!577785) (not d!577809) (not b!1884781) (not b_next!53093) (not b!1884829) (not b!1884690) (not d!577749) (not b!1884775) (not b!1884793) (not d!577805) (not b!1884926) (not d!577831) (not b!1884689) (not setNonEmpty!11634) (not b!1885102) (not bm!116739) (not setNonEmpty!11661) (not b!1885016) (not setNonEmpty!11640) (not b!1884800) (not b!1885093) (not b!1884927) (not d!577807) (not b!1884710) (not b!1885017) (not b!1884909) (not b!1884893) (not setNonEmpty!11654) (not b!1884972) (not b!1884920) (not bm!116742) (not setNonEmpty!11655) (not b!1885015) (not b!1885021) (not setNonEmpty!11643) b_and!145185 (not d!577845) (not setNonEmpty!11648) (not d!577747) (not b!1885058) (not d!577829) (not b!1884725) (not b!1884991) (not b!1884897) (not b!1884883) (not b!1885045) (not b!1885032) (not b!1884929) (not b!1885049) (not b!1885115) (not b!1885011) (not setNonEmpty!11657) (not b!1884966) (not b!1885104) (not b!1885033) (not d!577735) (not b!1885101) (not b!1884679) (not b!1884922) (not d!577793) (not setNonEmpty!11656) (not b!1885072) (not d!577775) (not b!1885050) (not b!1884934) (not b!1884715) (not b!1885097) (not b!1884852) (not d!577771) (not b!1885095) (not b!1885048) (not b!1884680) (not b!1885073) (not d!577797) (not setNonEmpty!11644) (not b!1884789) (not b!1884693) (not d!577795) (not b!1885000) (not b!1884977) (not b!1884963) (not setNonEmpty!11650) (not b!1885008))
(check-sat b_and!145179 b_and!145181 (not b_next!53095) (not b_next!53099) (not b_next!53093) b_and!145185 (not b_next!53097) b_and!145183)
