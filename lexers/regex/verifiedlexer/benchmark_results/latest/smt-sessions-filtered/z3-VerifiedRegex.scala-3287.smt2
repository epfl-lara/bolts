; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188792 () Bool)

(assert start!188792)

(declare-fun b!1885580 () Bool)

(declare-fun b_free!52437 () Bool)

(declare-fun b_next!53141 () Bool)

(assert (=> b!1885580 (= b_free!52437 (not b_next!53141))))

(declare-fun tp!537389 () Bool)

(declare-fun b_and!145227 () Bool)

(assert (=> b!1885580 (= tp!537389 b_and!145227)))

(declare-fun b!1885588 () Bool)

(declare-fun b_free!52439 () Bool)

(declare-fun b_next!53143 () Bool)

(assert (=> b!1885588 (= b_free!52439 (not b_next!53143))))

(declare-fun tp!537388 () Bool)

(declare-fun b_and!145229 () Bool)

(assert (=> b!1885588 (= tp!537388 b_and!145229)))

(declare-fun b!1885577 () Bool)

(declare-fun b_free!52441 () Bool)

(declare-fun b_next!53145 () Bool)

(assert (=> b!1885577 (= b_free!52441 (not b_next!53145))))

(declare-fun tp!537386 () Bool)

(declare-fun b_and!145231 () Bool)

(assert (=> b!1885577 (= tp!537386 b_and!145231)))

(declare-fun b!1885572 () Bool)

(declare-fun b_free!52443 () Bool)

(declare-fun b_next!53147 () Bool)

(assert (=> b!1885572 (= b_free!52443 (not b_next!53147))))

(declare-fun tp!537379 () Bool)

(declare-fun b_and!145233 () Bool)

(assert (=> b!1885572 (= tp!537379 b_and!145233)))

(declare-fun res!841667 () Bool)

(declare-fun e!1202987 () Bool)

(assert (=> start!188792 (=> (not res!841667) (not e!1202987))))

(declare-fun i!1815 () Int)

(assert (=> start!188792 (= res!841667 (>= i!1815 0))))

(assert (=> start!188792 e!1202987))

(assert (=> start!188792 true))

(declare-datatypes ((C!10444 0))(
  ( (C!10445 (val!6110 Int)) )
))
(declare-datatypes ((Regex!5139 0))(
  ( (ElementMatch!5139 (c!308037 C!10444)) (Concat!8992 (regOne!10790 Regex!5139) (regTwo!10790 Regex!5139)) (EmptyExpr!5139) (Star!5139 (reg!5468 Regex!5139)) (EmptyLang!5139) (Union!5139 (regOne!10791 Regex!5139) (regTwo!10791 Regex!5139)) )
))
(declare-datatypes ((List!21064 0))(
  ( (Nil!20982) (Cons!20982 (h!26383 Regex!5139) (t!175063 List!21064)) )
))
(declare-datatypes ((Context!1986 0))(
  ( (Context!1987 (exprs!1493 List!21064)) )
))
(declare-datatypes ((tuple2!20024 0))(
  ( (tuple2!20025 (_1!11475 Context!1986) (_2!11475 C!10444)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!20026 0))(
  ( (tuple2!20027 (_1!11476 tuple2!20024) (_2!11476 (InoxSet Context!1986))) )
))
(declare-datatypes ((List!21065 0))(
  ( (Nil!20983) (Cons!20983 (h!26384 tuple2!20026) (t!175064 List!21065)) )
))
(declare-datatypes ((array!6774 0))(
  ( (array!6775 (arr!3008 (Array (_ BitVec 32) (_ BitVec 64))) (size!16670 (_ BitVec 32))) )
))
(declare-datatypes ((array!6776 0))(
  ( (array!6777 (arr!3009 (Array (_ BitVec 32) List!21065)) (size!16671 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3928 0))(
  ( (LongMapFixedSize!3929 (defaultEntry!2329 Int) (mask!5800 (_ BitVec 32)) (extraKeys!2212 (_ BitVec 32)) (zeroValue!2222 List!21065) (minValue!2222 List!21065) (_size!3979 (_ BitVec 32)) (_keys!2261 array!6774) (_values!2244 array!6776) (_vacant!2025 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7681 0))(
  ( (Cell!7682 (v!26245 LongMapFixedSize!3928)) )
))
(declare-datatypes ((MutLongMap!1964 0))(
  ( (LongMap!1964 (underlying!4121 Cell!7681)) (MutLongMapExt!1963 (__x!13195 Int)) )
))
(declare-datatypes ((Cell!7683 0))(
  ( (Cell!7684 (v!26246 MutLongMap!1964)) )
))
(declare-datatypes ((Hashable!1878 0))(
  ( (HashableExt!1877 (__x!13196 Int)) )
))
(declare-datatypes ((MutableMap!1878 0))(
  ( (MutableMapExt!1877 (__x!13197 Int)) (HashMap!1878 (underlying!4122 Cell!7683) (hashF!3801 Hashable!1878) (_size!3980 (_ BitVec 32)) (defaultValue!2040 Int)) )
))
(declare-datatypes ((CacheUp!1176 0))(
  ( (CacheUp!1177 (cache!2259 MutableMap!1878)) )
))
(declare-fun cacheUp!766 () CacheUp!1176)

(declare-fun e!1202973 () Bool)

(declare-fun inv!27965 (CacheUp!1176) Bool)

(assert (=> start!188792 (and (inv!27965 cacheUp!766) e!1202973)))

(declare-datatypes ((tuple3!1998 0))(
  ( (tuple3!1999 (_1!11477 Regex!5139) (_2!11477 Context!1986) (_3!1463 C!10444)) )
))
(declare-datatypes ((tuple2!20028 0))(
  ( (tuple2!20029 (_1!11478 tuple3!1998) (_2!11478 (InoxSet Context!1986))) )
))
(declare-datatypes ((List!21066 0))(
  ( (Nil!20984) (Cons!20984 (h!26385 tuple2!20028) (t!175065 List!21066)) )
))
(declare-datatypes ((array!6778 0))(
  ( (array!6779 (arr!3010 (Array (_ BitVec 32) List!21066)) (size!16672 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3930 0))(
  ( (LongMapFixedSize!3931 (defaultEntry!2330 Int) (mask!5801 (_ BitVec 32)) (extraKeys!2213 (_ BitVec 32)) (zeroValue!2223 List!21066) (minValue!2223 List!21066) (_size!3981 (_ BitVec 32)) (_keys!2262 array!6774) (_values!2245 array!6778) (_vacant!2026 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7685 0))(
  ( (Cell!7686 (v!26247 LongMapFixedSize!3930)) )
))
(declare-datatypes ((MutLongMap!1965 0))(
  ( (LongMap!1965 (underlying!4123 Cell!7685)) (MutLongMapExt!1964 (__x!13198 Int)) )
))
(declare-datatypes ((Hashable!1879 0))(
  ( (HashableExt!1878 (__x!13199 Int)) )
))
(declare-datatypes ((Cell!7687 0))(
  ( (Cell!7688 (v!26248 MutLongMap!1965)) )
))
(declare-datatypes ((MutableMap!1879 0))(
  ( (MutableMapExt!1878 (__x!13200 Int)) (HashMap!1879 (underlying!4124 Cell!7687) (hashF!3802 Hashable!1879) (_size!3982 (_ BitVec 32)) (defaultValue!2041 Int)) )
))
(declare-datatypes ((CacheDown!1174 0))(
  ( (CacheDown!1175 (cache!2260 MutableMap!1879)) )
))
(declare-fun cacheDown!779 () CacheDown!1174)

(declare-fun e!1202970 () Bool)

(declare-fun inv!27966 (CacheDown!1174) Bool)

(assert (=> start!188792 (and (inv!27966 cacheDown!779) e!1202970)))

(declare-fun condSetEmpty!11698 () Bool)

(declare-fun z!580 () (InoxSet Context!1986))

(assert (=> start!188792 (= condSetEmpty!11698 (= z!580 ((as const (Array Context!1986 Bool)) false)))))

(declare-fun setRes!11698 () Bool)

(assert (=> start!188792 setRes!11698))

(declare-datatypes ((List!21067 0))(
  ( (Nil!20985) (Cons!20985 (h!26386 C!10444) (t!175066 List!21067)) )
))
(declare-datatypes ((IArray!13959 0))(
  ( (IArray!13960 (innerList!7037 List!21067)) )
))
(declare-datatypes ((Conc!6977 0))(
  ( (Node!6977 (left!16860 Conc!6977) (right!17190 Conc!6977) (csize!14184 Int) (cheight!7188 Int)) (Leaf!10265 (xs!9867 IArray!13959) (csize!14185 Int)) (Empty!6977) )
))
(declare-datatypes ((BalanceConc!13770 0))(
  ( (BalanceConc!13771 (c!308038 Conc!6977)) )
))
(declare-fun input!3724 () BalanceConc!13770)

(declare-fun e!1202971 () Bool)

(declare-fun inv!27967 (BalanceConc!13770) Bool)

(assert (=> start!188792 (and (inv!27967 input!3724) e!1202971)))

(declare-fun setNonEmpty!11698 () Bool)

(declare-fun setElem!11698 () Context!1986)

(declare-fun tp!537382 () Bool)

(declare-fun e!1202978 () Bool)

(declare-fun inv!27968 (Context!1986) Bool)

(assert (=> setNonEmpty!11698 (= setRes!11698 (and tp!537382 (inv!27968 setElem!11698) e!1202978))))

(declare-fun setRest!11698 () (InoxSet Context!1986))

(assert (=> setNonEmpty!11698 (= z!580 ((_ map or) (store ((as const (Array Context!1986 Bool)) false) setElem!11698 true) setRest!11698))))

(declare-fun tp!537381 () Bool)

(declare-fun e!1202979 () Bool)

(declare-fun tp!537392 () Bool)

(declare-fun e!1202968 () Bool)

(declare-fun array_inv!2156 (array!6774) Bool)

(declare-fun array_inv!2157 (array!6778) Bool)

(assert (=> b!1885572 (= e!1202968 (and tp!537379 tp!537381 tp!537392 (array_inv!2156 (_keys!2262 (v!26247 (underlying!4123 (v!26248 (underlying!4124 (cache!2260 cacheDown!779))))))) (array_inv!2157 (_values!2245 (v!26247 (underlying!4123 (v!26248 (underlying!4124 (cache!2260 cacheDown!779))))))) e!1202979))))

(declare-fun b!1885573 () Bool)

(declare-fun e!1202972 () Bool)

(assert (=> b!1885573 (= e!1202972 e!1202968)))

(declare-fun b!1885574 () Bool)

(declare-fun e!1202977 () Bool)

(declare-fun e!1202982 () Bool)

(declare-fun lt!723377 () MutLongMap!1965)

(get-info :version)

(assert (=> b!1885574 (= e!1202977 (and e!1202982 ((_ is LongMap!1965) lt!723377)))))

(assert (=> b!1885574 (= lt!723377 (v!26248 (underlying!4124 (cache!2260 cacheDown!779))))))

(declare-fun mapIsEmpty!9094 () Bool)

(declare-fun mapRes!9094 () Bool)

(assert (=> mapIsEmpty!9094 mapRes!9094))

(declare-fun b!1885575 () Bool)

(declare-fun e!1202981 () Bool)

(assert (=> b!1885575 (= e!1202973 e!1202981)))

(declare-fun b!1885576 () Bool)

(declare-fun e!1202985 () Bool)

(declare-fun e!1202975 () Bool)

(declare-fun lt!723378 () MutLongMap!1964)

(assert (=> b!1885576 (= e!1202985 (and e!1202975 ((_ is LongMap!1964) lt!723378)))))

(assert (=> b!1885576 (= lt!723378 (v!26246 (underlying!4122 (cache!2259 cacheUp!766))))))

(declare-fun mapNonEmpty!9094 () Bool)

(declare-fun mapRes!9095 () Bool)

(declare-fun tp!537385 () Bool)

(declare-fun tp!537390 () Bool)

(assert (=> mapNonEmpty!9094 (= mapRes!9095 (and tp!537385 tp!537390))))

(declare-fun mapKey!9094 () (_ BitVec 32))

(declare-fun mapRest!9095 () (Array (_ BitVec 32) List!21066))

(declare-fun mapValue!9094 () List!21066)

(assert (=> mapNonEmpty!9094 (= (arr!3010 (_values!2245 (v!26247 (underlying!4123 (v!26248 (underlying!4124 (cache!2260 cacheDown!779))))))) (store mapRest!9095 mapKey!9094 mapValue!9094))))

(declare-fun mapIsEmpty!9095 () Bool)

(assert (=> mapIsEmpty!9095 mapRes!9095))

(declare-fun tp!537391 () Bool)

(declare-fun tp!537393 () Bool)

(declare-fun e!1202976 () Bool)

(declare-fun e!1202986 () Bool)

(declare-fun array_inv!2158 (array!6776) Bool)

(assert (=> b!1885577 (= e!1202986 (and tp!537386 tp!537391 tp!537393 (array_inv!2156 (_keys!2261 (v!26245 (underlying!4121 (v!26246 (underlying!4122 (cache!2259 cacheUp!766))))))) (array_inv!2158 (_values!2244 (v!26245 (underlying!4121 (v!26246 (underlying!4122 (cache!2259 cacheUp!766))))))) e!1202976))))

(declare-fun b!1885578 () Bool)

(declare-fun tp!537380 () Bool)

(declare-fun inv!27969 (Conc!6977) Bool)

(assert (=> b!1885578 (= e!1202971 (and (inv!27969 (c!308038 input!3724)) tp!537380))))

(declare-fun b!1885579 () Bool)

(declare-fun e!1202980 () Bool)

(assert (=> b!1885579 (= e!1202970 e!1202980)))

(declare-fun setIsEmpty!11698 () Bool)

(assert (=> setIsEmpty!11698 setRes!11698))

(assert (=> b!1885580 (= e!1202980 (and e!1202977 tp!537389))))

(declare-fun b!1885581 () Bool)

(declare-fun tp!537383 () Bool)

(assert (=> b!1885581 (= e!1202978 tp!537383)))

(declare-fun b!1885582 () Bool)

(declare-fun e!1202983 () Bool)

(assert (=> b!1885582 (= e!1202987 e!1202983)))

(declare-fun res!841668 () Bool)

(assert (=> b!1885582 (=> (not res!841668) (not e!1202983))))

(declare-fun lt!723376 () Int)

(assert (=> b!1885582 (= res!841668 (and (<= i!1815 lt!723376) (not (= i!1815 lt!723376))))))

(declare-fun size!16673 (BalanceConc!13770) Int)

(assert (=> b!1885582 (= lt!723376 (size!16673 input!3724))))

(declare-fun b!1885583 () Bool)

(declare-fun tp!537378 () Bool)

(assert (=> b!1885583 (= e!1202976 (and tp!537378 mapRes!9094))))

(declare-fun condMapEmpty!9094 () Bool)

(declare-fun mapDefault!9094 () List!21065)

(assert (=> b!1885583 (= condMapEmpty!9094 (= (arr!3009 (_values!2244 (v!26245 (underlying!4121 (v!26246 (underlying!4122 (cache!2259 cacheUp!766))))))) ((as const (Array (_ BitVec 32) List!21065)) mapDefault!9094)))))

(declare-fun b!1885584 () Bool)

(declare-fun tp!537387 () Bool)

(assert (=> b!1885584 (= e!1202979 (and tp!537387 mapRes!9095))))

(declare-fun condMapEmpty!9095 () Bool)

(declare-fun mapDefault!9095 () List!21066)

(assert (=> b!1885584 (= condMapEmpty!9095 (= (arr!3010 (_values!2245 (v!26247 (underlying!4123 (v!26248 (underlying!4124 (cache!2260 cacheDown!779))))))) ((as const (Array (_ BitVec 32) List!21066)) mapDefault!9095)))))

(declare-fun b!1885585 () Bool)

(assert (=> b!1885585 (= e!1202983 (>= (- lt!723376 (+ 1 i!1815)) (- lt!723376 i!1815)))))

(declare-datatypes ((tuple3!2000 0))(
  ( (tuple3!2001 (_1!11479 (InoxSet Context!1986)) (_2!11479 CacheUp!1176) (_3!1464 CacheDown!1174)) )
))
(declare-fun lt!723379 () tuple3!2000)

(declare-fun derivationStepZipperMem!10 ((InoxSet Context!1986) C!10444 CacheUp!1176 CacheDown!1174) tuple3!2000)

(declare-fun apply!5546 (BalanceConc!13770 Int) C!10444)

(assert (=> b!1885585 (= lt!723379 (derivationStepZipperMem!10 z!580 (apply!5546 input!3724 i!1815) cacheUp!766 cacheDown!779))))

(declare-fun b!1885586 () Bool)

(declare-fun e!1202984 () Bool)

(assert (=> b!1885586 (= e!1202984 e!1202986)))

(declare-fun b!1885587 () Bool)

(assert (=> b!1885587 (= e!1202982 e!1202972)))

(declare-fun mapNonEmpty!9095 () Bool)

(declare-fun tp!537377 () Bool)

(declare-fun tp!537384 () Bool)

(assert (=> mapNonEmpty!9095 (= mapRes!9094 (and tp!537377 tp!537384))))

(declare-fun mapKey!9095 () (_ BitVec 32))

(declare-fun mapValue!9095 () List!21065)

(declare-fun mapRest!9094 () (Array (_ BitVec 32) List!21065))

(assert (=> mapNonEmpty!9095 (= (arr!3009 (_values!2244 (v!26245 (underlying!4121 (v!26246 (underlying!4122 (cache!2259 cacheUp!766))))))) (store mapRest!9094 mapKey!9095 mapValue!9095))))

(assert (=> b!1885588 (= e!1202981 (and e!1202985 tp!537388))))

(declare-fun b!1885589 () Bool)

(assert (=> b!1885589 (= e!1202975 e!1202984)))

(assert (= (and start!188792 res!841667) b!1885582))

(assert (= (and b!1885582 res!841668) b!1885585))

(assert (= (and b!1885583 condMapEmpty!9094) mapIsEmpty!9094))

(assert (= (and b!1885583 (not condMapEmpty!9094)) mapNonEmpty!9095))

(assert (= b!1885577 b!1885583))

(assert (= b!1885586 b!1885577))

(assert (= b!1885589 b!1885586))

(assert (= (and b!1885576 ((_ is LongMap!1964) (v!26246 (underlying!4122 (cache!2259 cacheUp!766))))) b!1885589))

(assert (= b!1885588 b!1885576))

(assert (= (and b!1885575 ((_ is HashMap!1878) (cache!2259 cacheUp!766))) b!1885588))

(assert (= start!188792 b!1885575))

(assert (= (and b!1885584 condMapEmpty!9095) mapIsEmpty!9095))

(assert (= (and b!1885584 (not condMapEmpty!9095)) mapNonEmpty!9094))

(assert (= b!1885572 b!1885584))

(assert (= b!1885573 b!1885572))

(assert (= b!1885587 b!1885573))

(assert (= (and b!1885574 ((_ is LongMap!1965) (v!26248 (underlying!4124 (cache!2260 cacheDown!779))))) b!1885587))

(assert (= b!1885580 b!1885574))

(assert (= (and b!1885579 ((_ is HashMap!1879) (cache!2260 cacheDown!779))) b!1885580))

(assert (= start!188792 b!1885579))

(assert (= (and start!188792 condSetEmpty!11698) setIsEmpty!11698))

(assert (= (and start!188792 (not condSetEmpty!11698)) setNonEmpty!11698))

(assert (= setNonEmpty!11698 b!1885581))

(assert (= start!188792 b!1885578))

(declare-fun m!2318501 () Bool)

(assert (=> mapNonEmpty!9095 m!2318501))

(declare-fun m!2318503 () Bool)

(assert (=> b!1885578 m!2318503))

(declare-fun m!2318505 () Bool)

(assert (=> start!188792 m!2318505))

(declare-fun m!2318507 () Bool)

(assert (=> start!188792 m!2318507))

(declare-fun m!2318509 () Bool)

(assert (=> start!188792 m!2318509))

(declare-fun m!2318511 () Bool)

(assert (=> b!1885582 m!2318511))

(declare-fun m!2318513 () Bool)

(assert (=> b!1885572 m!2318513))

(declare-fun m!2318515 () Bool)

(assert (=> b!1885572 m!2318515))

(declare-fun m!2318517 () Bool)

(assert (=> setNonEmpty!11698 m!2318517))

(declare-fun m!2318519 () Bool)

(assert (=> b!1885585 m!2318519))

(assert (=> b!1885585 m!2318519))

(declare-fun m!2318521 () Bool)

(assert (=> b!1885585 m!2318521))

(declare-fun m!2318523 () Bool)

(assert (=> mapNonEmpty!9094 m!2318523))

(declare-fun m!2318525 () Bool)

(assert (=> b!1885577 m!2318525))

(declare-fun m!2318527 () Bool)

(assert (=> b!1885577 m!2318527))

(check-sat (not b!1885584) (not b!1885577) (not setNonEmpty!11698) (not b!1885585) b_and!145231 b_and!145227 b_and!145229 (not b!1885582) (not b!1885583) (not mapNonEmpty!9095) (not b!1885572) (not start!188792) (not b_next!53141) (not b!1885581) (not b_next!53145) (not b_next!53143) (not b_next!53147) (not b!1885578) b_and!145233 (not mapNonEmpty!9094))
(check-sat (not b_next!53141) b_and!145231 b_and!145227 b_and!145229 (not b_next!53147) b_and!145233 (not b_next!53145) (not b_next!53143))
