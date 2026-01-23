; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143570 () Bool)

(assert start!143570)

(declare-fun b!1546355 () Bool)

(declare-fun b_free!40611 () Bool)

(declare-fun b_next!41315 () Bool)

(assert (=> b!1546355 (= b_free!40611 (not b_next!41315))))

(declare-fun tp!450287 () Bool)

(declare-fun b_and!107701 () Bool)

(assert (=> b!1546355 (= tp!450287 b_and!107701)))

(declare-fun b!1546364 () Bool)

(declare-fun b_free!40613 () Bool)

(declare-fun b_next!41317 () Bool)

(assert (=> b!1546364 (= b_free!40613 (not b_next!41317))))

(declare-fun tp!450302 () Bool)

(declare-fun b_and!107703 () Bool)

(assert (=> b!1546364 (= tp!450302 b_and!107703)))

(declare-fun b_free!40615 () Bool)

(declare-fun b_next!41319 () Bool)

(assert (=> b!1546364 (= b_free!40615 (not b_next!41319))))

(declare-fun tp!450282 () Bool)

(declare-fun b_and!107705 () Bool)

(assert (=> b!1546364 (= tp!450282 b_and!107705)))

(declare-fun b!1546357 () Bool)

(declare-fun b_free!40617 () Bool)

(declare-fun b_next!41321 () Bool)

(assert (=> b!1546357 (= b_free!40617 (not b_next!41321))))

(declare-fun tp!450288 () Bool)

(declare-fun b_and!107707 () Bool)

(assert (=> b!1546357 (= tp!450288 b_and!107707)))

(declare-fun b!1546347 () Bool)

(declare-fun b_free!40619 () Bool)

(declare-fun b_next!41323 () Bool)

(assert (=> b!1546347 (= b_free!40619 (not b_next!41323))))

(declare-fun tp!450280 () Bool)

(declare-fun b_and!107709 () Bool)

(assert (=> b!1546347 (= tp!450280 b_and!107709)))

(declare-fun b!1546359 () Bool)

(declare-fun b_free!40621 () Bool)

(declare-fun b_next!41325 () Bool)

(assert (=> b!1546359 (= b_free!40621 (not b_next!41325))))

(declare-fun tp!450301 () Bool)

(declare-fun b_and!107711 () Bool)

(assert (=> b!1546359 (= tp!450301 b_and!107711)))

(declare-fun b!1546350 () Bool)

(declare-fun b_free!40623 () Bool)

(declare-fun b_next!41327 () Bool)

(assert (=> b!1546350 (= b_free!40623 (not b_next!41327))))

(declare-fun tp!450293 () Bool)

(declare-fun b_and!107713 () Bool)

(assert (=> b!1546350 (= tp!450293 b_and!107713)))

(declare-fun b!1546342 () Bool)

(declare-fun b_free!40625 () Bool)

(declare-fun b_next!41329 () Bool)

(assert (=> b!1546342 (= b_free!40625 (not b_next!41329))))

(declare-fun tp!450299 () Bool)

(declare-fun b_and!107715 () Bool)

(assert (=> b!1546342 (= tp!450299 b_and!107715)))

(declare-fun e!990554 () Bool)

(declare-fun tp!450284 () Bool)

(declare-datatypes ((C!8640 0))(
  ( (C!8641 (val!4892 Int)) )
))
(declare-datatypes ((Regex!4231 0))(
  ( (ElementMatch!4231 (c!252123 C!8640)) (Concat!7224 (regOne!8974 Regex!4231) (regTwo!8974 Regex!4231)) (EmptyExpr!4231) (Star!4231 (reg!4560 Regex!4231)) (EmptyLang!4231) (Union!4231 (regOne!8975 Regex!4231) (regTwo!8975 Regex!4231)) )
))
(declare-datatypes ((List!16629 0))(
  ( (Nil!16561) (Cons!16561 (h!21962 Regex!4231) (t!141032 List!16629)) )
))
(declare-datatypes ((Context!1498 0))(
  ( (Context!1499 (exprs!1249 List!16629)) )
))
(declare-datatypes ((tuple3!1626 0))(
  ( (tuple3!1627 (_1!9094 Regex!4231) (_2!9094 Context!1498) (_3!1224 C!8640)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15740 0))(
  ( (tuple2!15741 (_1!9095 tuple3!1626) (_2!9095 (InoxSet Context!1498))) )
))
(declare-datatypes ((List!16630 0))(
  ( (Nil!16562) (Cons!16562 (h!21963 tuple2!15740) (t!141033 List!16630)) )
))
(declare-datatypes ((array!5810 0))(
  ( (array!5811 (arr!2582 (Array (_ BitVec 32) (_ BitVec 64))) (size!13376 (_ BitVec 32))) )
))
(declare-datatypes ((array!5812 0))(
  ( (array!5813 (arr!2583 (Array (_ BitVec 32) List!16630)) (size!13377 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3352 0))(
  ( (LongMapFixedSize!3353 (defaultEntry!2036 Int) (mask!4880 (_ BitVec 32)) (extraKeys!1923 (_ BitVec 32)) (zeroValue!1933 List!16630) (minValue!1933 List!16630) (_size!3433 (_ BitVec 32)) (_keys!1970 array!5810) (_values!1955 array!5812) (_vacant!1737 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6589 0))(
  ( (Cell!6590 (v!23373 LongMapFixedSize!3352)) )
))
(declare-datatypes ((MutLongMap!1676 0))(
  ( (LongMap!1676 (underlying!3561 Cell!6589)) (MutLongMapExt!1675 (__x!10744 Int)) )
))
(declare-datatypes ((Cell!6591 0))(
  ( (Cell!6592 (v!23374 MutLongMap!1676)) )
))
(declare-datatypes ((Hashable!1620 0))(
  ( (HashableExt!1619 (__x!10745 Int)) )
))
(declare-datatypes ((MutableMap!1620 0))(
  ( (MutableMapExt!1619 (__x!10746 Int)) (HashMap!1620 (underlying!3562 Cell!6591) (hashF!3539 Hashable!1620) (_size!3434 (_ BitVec 32)) (defaultValue!1780 Int)) )
))
(declare-datatypes ((CacheDown!986 0))(
  ( (CacheDown!987 (cache!2001 MutableMap!1620)) )
))
(declare-fun cacheDown!768 () CacheDown!986)

(declare-fun tp!450296 () Bool)

(declare-fun e!990535 () Bool)

(declare-fun array_inv!1859 (array!5810) Bool)

(declare-fun array_inv!1860 (array!5812) Bool)

(assert (=> b!1546342 (= e!990535 (and tp!450299 tp!450296 tp!450284 (array_inv!1859 (_keys!1970 (v!23373 (underlying!3561 (v!23374 (underlying!3562 (cache!2001 cacheDown!768))))))) (array_inv!1860 (_values!1955 (v!23373 (underlying!3561 (v!23374 (underlying!3562 (cache!2001 cacheDown!768))))))) e!990554))))

(declare-fun b!1546343 () Bool)

(declare-fun e!990544 () Bool)

(declare-fun e!990556 () Bool)

(declare-fun lt!535591 () MutLongMap!1676)

(get-info :version)

(assert (=> b!1546343 (= e!990544 (and e!990556 ((_ is LongMap!1676) lt!535591)))))

(assert (=> b!1546343 (= lt!535591 (v!23374 (underlying!3562 (cache!2001 cacheDown!768))))))

(declare-fun b!1546344 () Bool)

(declare-fun e!990562 () Bool)

(assert (=> b!1546344 (= e!990562 e!990535)))

(declare-fun mapIsEmpty!7885 () Bool)

(declare-fun mapRes!7884 () Bool)

(assert (=> mapIsEmpty!7885 mapRes!7884))

(declare-fun b!1546345 () Bool)

(declare-fun e!990547 () Bool)

(declare-fun e!990563 () Bool)

(assert (=> b!1546345 (= e!990547 e!990563)))

(declare-fun b!1546346 () Bool)

(declare-fun e!990552 () Bool)

(declare-fun e!990549 () Bool)

(assert (=> b!1546346 (= e!990552 e!990549)))

(declare-datatypes ((tuple3!1628 0))(
  ( (tuple3!1629 (_1!9096 (InoxSet Context!1498)) (_2!9096 Int) (_3!1225 Int)) )
))
(declare-datatypes ((tuple2!15742 0))(
  ( (tuple2!15743 (_1!9097 tuple3!1628) (_2!9097 Int)) )
))
(declare-datatypes ((List!16631 0))(
  ( (Nil!16563) (Cons!16563 (h!21964 tuple2!15742) (t!141034 List!16631)) )
))
(declare-datatypes ((array!5814 0))(
  ( (array!5815 (arr!2584 (Array (_ BitVec 32) List!16631)) (size!13378 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3354 0))(
  ( (LongMapFixedSize!3355 (defaultEntry!2037 Int) (mask!4881 (_ BitVec 32)) (extraKeys!1924 (_ BitVec 32)) (zeroValue!1934 List!16631) (minValue!1934 List!16631) (_size!3435 (_ BitVec 32)) (_keys!1971 array!5810) (_values!1956 array!5814) (_vacant!1738 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6593 0))(
  ( (Cell!6594 (v!23375 LongMapFixedSize!3354)) )
))
(declare-datatypes ((Hashable!1621 0))(
  ( (HashableExt!1620 (__x!10747 Int)) )
))
(declare-datatypes ((List!16632 0))(
  ( (Nil!16564) (Cons!16564 (h!21965 C!8640) (t!141035 List!16632)) )
))
(declare-datatypes ((IArray!11047 0))(
  ( (IArray!11048 (innerList!5581 List!16632)) )
))
(declare-datatypes ((Conc!5521 0))(
  ( (Node!5521 (left!13517 Conc!5521) (right!13847 Conc!5521) (csize!11272 Int) (cheight!5732 Int)) (Leaf!8182 (xs!8321 IArray!11047) (csize!11273 Int)) (Empty!5521) )
))
(declare-datatypes ((BalanceConc!10984 0))(
  ( (BalanceConc!10985 (c!252124 Conc!5521)) )
))
(declare-datatypes ((MutLongMap!1677 0))(
  ( (LongMap!1677 (underlying!3563 Cell!6593)) (MutLongMapExt!1676 (__x!10748 Int)) )
))
(declare-datatypes ((Cell!6595 0))(
  ( (Cell!6596 (v!23376 MutLongMap!1677)) )
))
(declare-datatypes ((MutableMap!1621 0))(
  ( (MutableMapExt!1620 (__x!10749 Int)) (HashMap!1621 (underlying!3564 Cell!6595) (hashF!3540 Hashable!1621) (_size!3436 (_ BitVec 32)) (defaultValue!1781 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!404 0))(
  ( (CacheFurthestNullable!405 (cache!2002 MutableMap!1621) (totalInput!2405 BalanceConc!10984)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!404)

(declare-fun tp!450281 () Bool)

(declare-fun tp!450306 () Bool)

(declare-fun e!990564 () Bool)

(declare-fun e!990540 () Bool)

(declare-fun array_inv!1861 (array!5814) Bool)

(assert (=> b!1546347 (= e!990540 (and tp!450280 tp!450306 tp!450281 (array_inv!1859 (_keys!1971 (v!23375 (underlying!3563 (v!23376 (underlying!3564 (cache!2002 cacheFurthestNullable!103))))))) (array_inv!1861 (_values!1956 (v!23375 (underlying!3563 (v!23376 (underlying!3564 (cache!2002 cacheFurthestNullable!103))))))) e!990564))))

(declare-fun mapNonEmpty!7884 () Bool)

(declare-fun mapRes!7885 () Bool)

(declare-fun tp!450304 () Bool)

(declare-fun tp!450294 () Bool)

(assert (=> mapNonEmpty!7884 (= mapRes!7885 (and tp!450304 tp!450294))))

(declare-datatypes ((tuple2!15744 0))(
  ( (tuple2!15745 (_1!9098 Context!1498) (_2!9098 C!8640)) )
))
(declare-datatypes ((tuple2!15746 0))(
  ( (tuple2!15747 (_1!9099 tuple2!15744) (_2!9099 (InoxSet Context!1498))) )
))
(declare-datatypes ((List!16633 0))(
  ( (Nil!16565) (Cons!16565 (h!21966 tuple2!15746) (t!141036 List!16633)) )
))
(declare-datatypes ((array!5816 0))(
  ( (array!5817 (arr!2585 (Array (_ BitVec 32) List!16633)) (size!13379 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1622 0))(
  ( (HashableExt!1621 (__x!10750 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3356 0))(
  ( (LongMapFixedSize!3357 (defaultEntry!2038 Int) (mask!4882 (_ BitVec 32)) (extraKeys!1925 (_ BitVec 32)) (zeroValue!1935 List!16633) (minValue!1935 List!16633) (_size!3437 (_ BitVec 32)) (_keys!1972 array!5810) (_values!1957 array!5816) (_vacant!1739 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6597 0))(
  ( (Cell!6598 (v!23377 LongMapFixedSize!3356)) )
))
(declare-datatypes ((MutLongMap!1678 0))(
  ( (LongMap!1678 (underlying!3565 Cell!6597)) (MutLongMapExt!1677 (__x!10751 Int)) )
))
(declare-datatypes ((Cell!6599 0))(
  ( (Cell!6600 (v!23378 MutLongMap!1678)) )
))
(declare-datatypes ((MutableMap!1622 0))(
  ( (MutableMapExt!1621 (__x!10752 Int)) (HashMap!1622 (underlying!3566 Cell!6599) (hashF!3541 Hashable!1622) (_size!3438 (_ BitVec 32)) (defaultValue!1782 Int)) )
))
(declare-datatypes ((CacheUp!978 0))(
  ( (CacheUp!979 (cache!2003 MutableMap!1622)) )
))
(declare-fun cacheUp!755 () CacheUp!978)

(declare-fun mapValue!7885 () List!16633)

(declare-fun mapKey!7885 () (_ BitVec 32))

(declare-fun mapRest!7885 () (Array (_ BitVec 32) List!16633))

(assert (=> mapNonEmpty!7884 (= (arr!2585 (_values!1957 (v!23377 (underlying!3565 (v!23378 (underlying!3566 (cache!2003 cacheUp!755))))))) (store mapRest!7885 mapKey!7885 mapValue!7885))))

(declare-fun b!1546348 () Bool)

(declare-fun e!990551 () Bool)

(declare-fun tp!450290 () Bool)

(declare-fun inv!21836 (Conc!5521) Bool)

(assert (=> b!1546348 (= e!990551 (and (inv!21836 (c!252124 (totalInput!2405 cacheFurthestNullable!103))) tp!450290))))

(declare-fun b!1546349 () Bool)

(declare-fun res!691688 () Bool)

(declare-fun e!990555 () Bool)

(assert (=> b!1546349 (=> (not res!691688) (not e!990555))))

(declare-fun valid!1357 (CacheUp!978) Bool)

(assert (=> b!1546349 (= res!691688 (valid!1357 cacheUp!755))))

(declare-fun e!990561 () Bool)

(declare-fun e!990543 () Bool)

(declare-fun tp!450292 () Bool)

(declare-fun tp!450300 () Bool)

(declare-fun array_inv!1862 (array!5816) Bool)

(assert (=> b!1546350 (= e!990561 (and tp!450293 tp!450292 tp!450300 (array_inv!1859 (_keys!1972 (v!23377 (underlying!3565 (v!23378 (underlying!3566 (cache!2003 cacheUp!755))))))) (array_inv!1862 (_values!1957 (v!23377 (underlying!3565 (v!23378 (underlying!3566 (cache!2003 cacheUp!755))))))) e!990543))))

(declare-fun b!1546351 () Bool)

(declare-fun e!990536 () Bool)

(declare-fun e!990542 () Bool)

(assert (=> b!1546351 (= e!990536 e!990542)))

(declare-fun b!1546352 () Bool)

(declare-fun e!990538 () Bool)

(declare-fun totalInput!568 () BalanceConc!10984)

(declare-fun tp!450286 () Bool)

(assert (=> b!1546352 (= e!990538 (and (inv!21836 (c!252124 totalInput!568)) tp!450286))))

(declare-fun b!1546353 () Bool)

(declare-fun tp!450297 () Bool)

(declare-fun mapRes!7886 () Bool)

(assert (=> b!1546353 (= e!990564 (and tp!450297 mapRes!7886))))

(declare-fun condMapEmpty!7884 () Bool)

(declare-fun mapDefault!7885 () List!16631)

(assert (=> b!1546353 (= condMapEmpty!7884 (= (arr!2584 (_values!1956 (v!23375 (underlying!3563 (v!23376 (underlying!3564 (cache!2002 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16631)) mapDefault!7885)))))

(declare-fun b!1546354 () Bool)

(assert (=> b!1546354 (= e!990555 false)))

(assert (=> b!1546355 (= e!990563 (and e!990544 tp!450287))))

(declare-fun mapNonEmpty!7885 () Bool)

(declare-fun tp!450305 () Bool)

(declare-fun tp!450303 () Bool)

(assert (=> mapNonEmpty!7885 (= mapRes!7884 (and tp!450305 tp!450303))))

(declare-fun mapKey!7884 () (_ BitVec 32))

(declare-fun mapRest!7886 () (Array (_ BitVec 32) List!16630))

(declare-fun mapValue!7886 () List!16630)

(assert (=> mapNonEmpty!7885 (= (arr!2583 (_values!1955 (v!23373 (underlying!3561 (v!23374 (underlying!3562 (cache!2001 cacheDown!768))))))) (store mapRest!7886 mapKey!7884 mapValue!7886))))

(declare-fun mapNonEmpty!7886 () Bool)

(declare-fun tp!450283 () Bool)

(declare-fun tp!450289 () Bool)

(assert (=> mapNonEmpty!7886 (= mapRes!7886 (and tp!450283 tp!450289))))

(declare-fun mapKey!7886 () (_ BitVec 32))

(declare-fun mapRest!7884 () (Array (_ BitVec 32) List!16631))

(declare-fun mapValue!7884 () List!16631)

(assert (=> mapNonEmpty!7886 (= (arr!2584 (_values!1956 (v!23375 (underlying!3563 (v!23376 (underlying!3564 (cache!2002 cacheFurthestNullable!103))))))) (store mapRest!7884 mapKey!7886 mapValue!7884))))

(declare-fun res!691686 () Bool)

(assert (=> start!143570 (=> (not res!691686) (not e!990555))))

(declare-datatypes ((LexerInterface!2552 0))(
  ( (LexerInterfaceExt!2549 (__x!10753 Int)) (Lexer!2550) )
))
(declare-fun thiss!16438 () LexerInterface!2552)

(assert (=> start!143570 (= res!691686 ((_ is Lexer!2550) thiss!16438))))

(assert (=> start!143570 e!990555))

(declare-fun inv!21837 (BalanceConc!10984) Bool)

(assert (=> start!143570 (and (inv!21837 totalInput!568) e!990538)))

(declare-fun inv!21838 (CacheUp!978) Bool)

(assert (=> start!143570 (and (inv!21838 cacheUp!755) e!990536)))

(declare-fun e!990557 () Bool)

(declare-fun inv!21839 (CacheFurthestNullable!404) Bool)

(assert (=> start!143570 (and (inv!21839 cacheFurthestNullable!103) e!990557)))

(declare-fun input!1676 () BalanceConc!10984)

(declare-fun e!990560 () Bool)

(assert (=> start!143570 (and (inv!21837 input!1676) e!990560)))

(declare-fun e!990537 () Bool)

(assert (=> start!143570 e!990537))

(declare-fun inv!21840 (CacheDown!986) Bool)

(assert (=> start!143570 (and (inv!21840 cacheDown!768) e!990547)))

(assert (=> start!143570 true))

(declare-fun mapIsEmpty!7884 () Bool)

(assert (=> mapIsEmpty!7884 mapRes!7886))

(declare-fun b!1546356 () Bool)

(declare-fun res!691687 () Bool)

(assert (=> b!1546356 (=> (not res!691687) (not e!990555))))

(declare-fun valid!1358 (CacheDown!986) Bool)

(assert (=> b!1546356 (= res!691687 (valid!1358 cacheDown!768))))

(declare-fun mapIsEmpty!7886 () Bool)

(assert (=> mapIsEmpty!7886 mapRes!7885))

(declare-fun e!990558 () Bool)

(assert (=> b!1546357 (= e!990542 (and e!990558 tp!450288))))

(declare-fun b!1546358 () Bool)

(declare-fun res!691693 () Bool)

(assert (=> b!1546358 (=> (not res!691693) (not e!990555))))

(declare-fun isSuffix!346 (List!16632 List!16632) Bool)

(declare-fun list!6450 (BalanceConc!10984) List!16632)

(assert (=> b!1546358 (= res!691693 (isSuffix!346 (list!6450 input!1676) (list!6450 totalInput!568)))))

(declare-fun e!990546 () Bool)

(declare-fun e!990545 () Bool)

(assert (=> b!1546359 (= e!990546 (and e!990545 tp!450301))))

(declare-fun b!1546360 () Bool)

(declare-fun tp!450295 () Bool)

(assert (=> b!1546360 (= e!990543 (and tp!450295 mapRes!7885))))

(declare-fun condMapEmpty!7886 () Bool)

(declare-fun mapDefault!7884 () List!16633)

(assert (=> b!1546360 (= condMapEmpty!7886 (= (arr!2585 (_values!1957 (v!23377 (underlying!3565 (v!23378 (underlying!3566 (cache!2003 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16633)) mapDefault!7884)))))

(declare-fun b!1546361 () Bool)

(declare-fun e!990550 () Bool)

(declare-fun lt!535590 () MutLongMap!1678)

(assert (=> b!1546361 (= e!990558 (and e!990550 ((_ is LongMap!1678) lt!535590)))))

(assert (=> b!1546361 (= lt!535590 (v!23378 (underlying!3566 (cache!2003 cacheUp!755))))))

(declare-fun b!1546362 () Bool)

(declare-fun tp!450291 () Bool)

(assert (=> b!1546362 (= e!990560 (and (inv!21836 (c!252124 input!1676)) tp!450291))))

(declare-fun b!1546363 () Bool)

(declare-fun res!691690 () Bool)

(assert (=> b!1546363 (=> (not res!691690) (not e!990555))))

(assert (=> b!1546363 (= res!691690 (= (totalInput!2405 cacheFurthestNullable!103) totalInput!568))))

(declare-fun e!990548 () Bool)

(assert (=> b!1546364 (= e!990548 (and tp!450302 tp!450282))))

(declare-fun b!1546365 () Bool)

(declare-fun lt!535589 () MutLongMap!1677)

(assert (=> b!1546365 (= e!990545 (and e!990552 ((_ is LongMap!1677) lt!535589)))))

(assert (=> b!1546365 (= lt!535589 (v!23376 (underlying!3564 (cache!2002 cacheFurthestNullable!103))))))

(declare-fun b!1546366 () Bool)

(assert (=> b!1546366 (= e!990549 e!990540)))

(declare-fun b!1546367 () Bool)

(declare-fun res!691689 () Bool)

(assert (=> b!1546367 (=> (not res!691689) (not e!990555))))

(declare-datatypes ((List!16634 0))(
  ( (Nil!16566) (Cons!16566 (h!21967 (_ BitVec 16)) (t!141037 List!16634)) )
))
(declare-datatypes ((TokenValue!2993 0))(
  ( (FloatLiteralValue!5986 (text!21396 List!16634)) (TokenValueExt!2992 (__x!10754 Int)) (Broken!14965 (value!92369 List!16634)) (Object!3060) (End!2993) (Def!2993) (Underscore!2993) (Match!2993) (Else!2993) (Error!2993) (Case!2993) (If!2993) (Extends!2993) (Abstract!2993) (Class!2993) (Val!2993) (DelimiterValue!5986 (del!3053 List!16634)) (KeywordValue!2999 (value!92370 List!16634)) (CommentValue!5986 (value!92371 List!16634)) (WhitespaceValue!5986 (value!92372 List!16634)) (IndentationValue!2993 (value!92373 List!16634)) (String!19252) (Int32!2993) (Broken!14966 (value!92374 List!16634)) (Boolean!2994) (Unit!25930) (OperatorValue!2996 (op!3053 List!16634)) (IdentifierValue!5986 (value!92375 List!16634)) (IdentifierValue!5987 (value!92376 List!16634)) (WhitespaceValue!5987 (value!92377 List!16634)) (True!5986) (False!5986) (Broken!14967 (value!92378 List!16634)) (Broken!14968 (value!92379 List!16634)) (True!5987) (RightBrace!2993) (RightBracket!2993) (Colon!2993) (Null!2993) (Comma!2993) (LeftBracket!2993) (False!5987) (LeftBrace!2993) (ImaginaryLiteralValue!2993 (text!21397 List!16634)) (StringLiteralValue!8979 (value!92380 List!16634)) (EOFValue!2993 (value!92381 List!16634)) (IdentValue!2993 (value!92382 List!16634)) (DelimiterValue!5987 (value!92383 List!16634)) (DedentValue!2993 (value!92384 List!16634)) (NewLineValue!2993 (value!92385 List!16634)) (IntegerValue!8979 (value!92386 (_ BitVec 32)) (text!21398 List!16634)) (IntegerValue!8980 (value!92387 Int) (text!21399 List!16634)) (Times!2993) (Or!2993) (Equal!2993) (Minus!2993) (Broken!14969 (value!92388 List!16634)) (And!2993) (Div!2993) (LessEqual!2993) (Mod!2993) (Concat!7225) (Not!2993) (Plus!2993) (SpaceValue!2993 (value!92389 List!16634)) (IntegerValue!8981 (value!92390 Int) (text!21400 List!16634)) (StringLiteralValue!8980 (text!21401 List!16634)) (FloatLiteralValue!5987 (text!21402 List!16634)) (BytesLiteralValue!2993 (value!92391 List!16634)) (CommentValue!5987 (value!92392 List!16634)) (StringLiteralValue!8981 (value!92393 List!16634)) (ErrorTokenValue!2993 (msg!3054 List!16634)) )
))
(declare-datatypes ((String!19253 0))(
  ( (String!19254 (value!92394 String)) )
))
(declare-datatypes ((TokenValueInjection!5646 0))(
  ( (TokenValueInjection!5647 (toValue!4266 Int) (toChars!4125 Int)) )
))
(declare-datatypes ((Rule!5606 0))(
  ( (Rule!5607 (regex!2903 Regex!4231) (tag!3167 String!19253) (isSeparator!2903 Bool) (transformation!2903 TokenValueInjection!5646)) )
))
(declare-fun rule!240 () Rule!5606)

(declare-fun ruleValid!657 (LexerInterface!2552 Rule!5606) Bool)

(assert (=> b!1546367 (= res!691689 (ruleValid!657 thiss!16438 rule!240))))

(declare-fun b!1546368 () Bool)

(declare-fun res!691692 () Bool)

(assert (=> b!1546368 (=> (not res!691692) (not e!990555))))

(declare-fun valid!1359 (CacheFurthestNullable!404) Bool)

(assert (=> b!1546368 (= res!691692 (valid!1359 cacheFurthestNullable!103))))

(declare-fun b!1546369 () Bool)

(assert (=> b!1546369 (= e!990557 (and e!990546 (inv!21837 (totalInput!2405 cacheFurthestNullable!103)) e!990551))))

(declare-fun b!1546370 () Bool)

(declare-fun tp!450285 () Bool)

(declare-fun inv!21835 (String!19253) Bool)

(declare-fun inv!21841 (TokenValueInjection!5646) Bool)

(assert (=> b!1546370 (= e!990537 (and tp!450285 (inv!21835 (tag!3167 rule!240)) (inv!21841 (transformation!2903 rule!240)) e!990548))))

(declare-fun b!1546371 () Bool)

(declare-fun res!691691 () Bool)

(assert (=> b!1546371 (=> (not res!691691) (not e!990555))))

(declare-fun isEmpty!10046 (BalanceConc!10984) Bool)

(declare-datatypes ((tuple2!15748 0))(
  ( (tuple2!15749 (_1!9100 BalanceConc!10984) (_2!9100 BalanceConc!10984)) )
))
(declare-datatypes ((tuple4!822 0))(
  ( (tuple4!823 (_1!9101 tuple2!15748) (_2!9101 CacheUp!978) (_3!1226 CacheDown!986) (_4!411 CacheFurthestNullable!404)) )
))
(declare-fun findLongestMatchWithZipperSequenceV3Mem!18 (Regex!4231 BalanceConc!10984 BalanceConc!10984 CacheUp!978 CacheDown!986 CacheFurthestNullable!404) tuple4!822)

(assert (=> b!1546371 (= res!691691 (not (isEmpty!10046 (_1!9100 (_1!9101 (findLongestMatchWithZipperSequenceV3Mem!18 (regex!2903 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1546372 () Bool)

(assert (=> b!1546372 (= e!990556 e!990562)))

(declare-fun b!1546373 () Bool)

(declare-fun e!990541 () Bool)

(assert (=> b!1546373 (= e!990550 e!990541)))

(declare-fun b!1546374 () Bool)

(declare-fun tp!450298 () Bool)

(assert (=> b!1546374 (= e!990554 (and tp!450298 mapRes!7884))))

(declare-fun condMapEmpty!7885 () Bool)

(declare-fun mapDefault!7886 () List!16630)

(assert (=> b!1546374 (= condMapEmpty!7885 (= (arr!2583 (_values!1955 (v!23373 (underlying!3561 (v!23374 (underlying!3562 (cache!2001 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16630)) mapDefault!7886)))))

(declare-fun b!1546375 () Bool)

(assert (=> b!1546375 (= e!990541 e!990561)))

(assert (= (and start!143570 res!691686) b!1546367))

(assert (= (and b!1546367 res!691689) b!1546349))

(assert (= (and b!1546349 res!691688) b!1546356))

(assert (= (and b!1546356 res!691687) b!1546368))

(assert (= (and b!1546368 res!691692) b!1546358))

(assert (= (and b!1546358 res!691693) b!1546363))

(assert (= (and b!1546363 res!691690) b!1546371))

(assert (= (and b!1546371 res!691691) b!1546354))

(assert (= start!143570 b!1546352))

(assert (= (and b!1546360 condMapEmpty!7886) mapIsEmpty!7886))

(assert (= (and b!1546360 (not condMapEmpty!7886)) mapNonEmpty!7884))

(assert (= b!1546350 b!1546360))

(assert (= b!1546375 b!1546350))

(assert (= b!1546373 b!1546375))

(assert (= (and b!1546361 ((_ is LongMap!1678) (v!23378 (underlying!3566 (cache!2003 cacheUp!755))))) b!1546373))

(assert (= b!1546357 b!1546361))

(assert (= (and b!1546351 ((_ is HashMap!1622) (cache!2003 cacheUp!755))) b!1546357))

(assert (= start!143570 b!1546351))

(assert (= (and b!1546353 condMapEmpty!7884) mapIsEmpty!7884))

(assert (= (and b!1546353 (not condMapEmpty!7884)) mapNonEmpty!7886))

(assert (= b!1546347 b!1546353))

(assert (= b!1546366 b!1546347))

(assert (= b!1546346 b!1546366))

(assert (= (and b!1546365 ((_ is LongMap!1677) (v!23376 (underlying!3564 (cache!2002 cacheFurthestNullable!103))))) b!1546346))

(assert (= b!1546359 b!1546365))

(assert (= (and b!1546369 ((_ is HashMap!1621) (cache!2002 cacheFurthestNullable!103))) b!1546359))

(assert (= b!1546369 b!1546348))

(assert (= start!143570 b!1546369))

(assert (= start!143570 b!1546362))

(assert (= b!1546370 b!1546364))

(assert (= start!143570 b!1546370))

(assert (= (and b!1546374 condMapEmpty!7885) mapIsEmpty!7885))

(assert (= (and b!1546374 (not condMapEmpty!7885)) mapNonEmpty!7885))

(assert (= b!1546342 b!1546374))

(assert (= b!1546344 b!1546342))

(assert (= b!1546372 b!1546344))

(assert (= (and b!1546343 ((_ is LongMap!1676) (v!23374 (underlying!3562 (cache!2001 cacheDown!768))))) b!1546372))

(assert (= b!1546355 b!1546343))

(assert (= (and b!1546345 ((_ is HashMap!1620) (cache!2001 cacheDown!768))) b!1546355))

(assert (= start!143570 b!1546345))

(declare-fun m!1820063 () Bool)

(assert (=> mapNonEmpty!7884 m!1820063))

(declare-fun m!1820065 () Bool)

(assert (=> b!1546347 m!1820065))

(declare-fun m!1820067 () Bool)

(assert (=> b!1546347 m!1820067))

(declare-fun m!1820069 () Bool)

(assert (=> b!1546362 m!1820069))

(declare-fun m!1820071 () Bool)

(assert (=> b!1546342 m!1820071))

(declare-fun m!1820073 () Bool)

(assert (=> b!1546342 m!1820073))

(declare-fun m!1820075 () Bool)

(assert (=> b!1546371 m!1820075))

(declare-fun m!1820077 () Bool)

(assert (=> b!1546371 m!1820077))

(declare-fun m!1820079 () Bool)

(assert (=> b!1546368 m!1820079))

(declare-fun m!1820081 () Bool)

(assert (=> b!1546369 m!1820081))

(declare-fun m!1820083 () Bool)

(assert (=> b!1546349 m!1820083))

(declare-fun m!1820085 () Bool)

(assert (=> b!1546358 m!1820085))

(declare-fun m!1820087 () Bool)

(assert (=> b!1546358 m!1820087))

(assert (=> b!1546358 m!1820085))

(assert (=> b!1546358 m!1820087))

(declare-fun m!1820089 () Bool)

(assert (=> b!1546358 m!1820089))

(declare-fun m!1820091 () Bool)

(assert (=> b!1546352 m!1820091))

(declare-fun m!1820093 () Bool)

(assert (=> b!1546350 m!1820093))

(declare-fun m!1820095 () Bool)

(assert (=> b!1546350 m!1820095))

(declare-fun m!1820097 () Bool)

(assert (=> b!1546356 m!1820097))

(declare-fun m!1820099 () Bool)

(assert (=> b!1546367 m!1820099))

(declare-fun m!1820101 () Bool)

(assert (=> mapNonEmpty!7885 m!1820101))

(declare-fun m!1820103 () Bool)

(assert (=> start!143570 m!1820103))

(declare-fun m!1820105 () Bool)

(assert (=> start!143570 m!1820105))

(declare-fun m!1820107 () Bool)

(assert (=> start!143570 m!1820107))

(declare-fun m!1820109 () Bool)

(assert (=> start!143570 m!1820109))

(declare-fun m!1820111 () Bool)

(assert (=> start!143570 m!1820111))

(declare-fun m!1820113 () Bool)

(assert (=> mapNonEmpty!7886 m!1820113))

(declare-fun m!1820115 () Bool)

(assert (=> b!1546348 m!1820115))

(declare-fun m!1820117 () Bool)

(assert (=> b!1546370 m!1820117))

(declare-fun m!1820119 () Bool)

(assert (=> b!1546370 m!1820119))

(check-sat (not b!1546356) (not b!1546374) b_and!107703 (not b_next!41329) b_and!107713 (not mapNonEmpty!7885) (not b_next!41325) (not mapNonEmpty!7886) (not b_next!41321) (not b_next!41327) (not b!1546347) (not b!1546353) (not b!1546348) (not b!1546367) (not b!1546360) b_and!107709 (not b!1546371) (not b!1546352) (not b!1546358) b_and!107707 b_and!107711 (not start!143570) (not b!1546349) (not b!1546370) (not b!1546342) b_and!107715 (not mapNonEmpty!7884) (not b_next!41317) (not b!1546368) (not b!1546350) b_and!107705 (not b_next!41315) (not b!1546369) (not b_next!41319) (not b_next!41323) (not b!1546362) b_and!107701)
(check-sat (not b_next!41327) b_and!107709 b_and!107703 b_and!107715 (not b_next!41317) b_and!107705 (not b_next!41329) b_and!107713 (not b_next!41315) (not b_next!41325) b_and!107701 (not b_next!41321) b_and!107707 b_and!107711 (not b_next!41319) (not b_next!41323))
