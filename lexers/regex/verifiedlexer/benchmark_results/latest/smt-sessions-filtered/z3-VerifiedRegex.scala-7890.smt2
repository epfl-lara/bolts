; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412228 () Bool)

(assert start!412228)

(declare-fun b!4294019 () Bool)

(declare-fun b_free!127671 () Bool)

(declare-fun b_next!128375 () Bool)

(assert (=> b!4294019 (= b_free!127671 (not b_next!128375))))

(declare-fun tp!1318032 () Bool)

(declare-fun b_and!338887 () Bool)

(assert (=> b!4294019 (= tp!1318032 b_and!338887)))

(declare-fun b!4294018 () Bool)

(declare-fun b_free!127673 () Bool)

(declare-fun b_next!128377 () Bool)

(assert (=> b!4294018 (= b_free!127673 (not b_next!128377))))

(declare-fun tp!1318027 () Bool)

(declare-fun b_and!338889 () Bool)

(assert (=> b!4294018 (= tp!1318027 b_and!338889)))

(declare-fun b!4294020 () Bool)

(declare-fun b_free!127675 () Bool)

(declare-fun b_next!128379 () Bool)

(assert (=> b!4294020 (= b_free!127675 (not b_next!128379))))

(declare-fun tp!1318024 () Bool)

(declare-fun b_and!338891 () Bool)

(assert (=> b!4294020 (= tp!1318024 b_and!338891)))

(declare-fun b!4294021 () Bool)

(declare-fun b_free!127677 () Bool)

(declare-fun b_next!128381 () Bool)

(assert (=> b!4294021 (= b_free!127677 (not b_next!128381))))

(declare-fun tp!1318030 () Bool)

(declare-fun b_and!338893 () Bool)

(assert (=> b!4294021 (= tp!1318030 b_and!338893)))

(declare-fun b!4294011 () Bool)

(declare-fun b_free!127679 () Bool)

(declare-fun b_next!128383 () Bool)

(assert (=> b!4294011 (= b_free!127679 (not b_next!128383))))

(declare-fun tp!1318013 () Bool)

(declare-fun b_and!338895 () Bool)

(assert (=> b!4294011 (= tp!1318013 b_and!338895)))

(declare-fun b!4294002 () Bool)

(declare-fun b_free!127681 () Bool)

(declare-fun b_next!128385 () Bool)

(assert (=> b!4294002 (= b_free!127681 (not b_next!128385))))

(declare-fun tp!1318035 () Bool)

(declare-fun b_and!338897 () Bool)

(assert (=> b!4294002 (= tp!1318035 b_and!338897)))

(declare-fun b!4294001 () Bool)

(declare-fun e!2668191 () Bool)

(declare-fun e!2668206 () Bool)

(declare-datatypes ((C!26156 0))(
  ( (C!26157 (val!15404 Int)) )
))
(declare-datatypes ((Regex!12979 0))(
  ( (ElementMatch!12979 (c!730702 C!26156)) (Concat!21298 (regOne!26470 Regex!12979) (regTwo!26470 Regex!12979)) (EmptyExpr!12979) (Star!12979 (reg!13308 Regex!12979)) (EmptyLang!12979) (Union!12979 (regOne!26471 Regex!12979) (regTwo!26471 Regex!12979)) )
))
(declare-datatypes ((List!47917 0))(
  ( (Nil!47793) (Cons!47793 (h!53213 Regex!12979) (t!354521 List!47917)) )
))
(declare-datatypes ((Context!5738 0))(
  ( (Context!5739 (exprs!3369 List!47917)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45532 0))(
  ( (tuple2!45533 (_1!26035 (InoxSet Context!5738)) (_2!26035 Int)) )
))
(declare-datatypes ((tuple2!45534 0))(
  ( (tuple2!45535 (_1!26036 tuple2!45532) (_2!26036 Int)) )
))
(declare-datatypes ((List!47918 0))(
  ( (Nil!47794) (Cons!47794 (h!53214 tuple2!45534) (t!354522 List!47918)) )
))
(declare-datatypes ((array!15890 0))(
  ( (array!15891 (arr!7101 (Array (_ BitVec 32) (_ BitVec 64))) (size!35101 (_ BitVec 32))) )
))
(declare-datatypes ((array!15892 0))(
  ( (array!15893 (arr!7102 (Array (_ BitVec 32) List!47918)) (size!35102 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8910 0))(
  ( (LongMapFixedSize!8911 (defaultEntry!4840 Int) (mask!12914 (_ BitVec 32)) (extraKeys!4704 (_ BitVec 32)) (zeroValue!4714 List!47918) (minValue!4714 List!47918) (_size!8953 (_ BitVec 32)) (_keys!4755 array!15890) (_values!4736 array!15892) (_vacant!4516 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17629 0))(
  ( (Cell!17630 (v!41736 LongMapFixedSize!8910)) )
))
(declare-datatypes ((MutLongMap!4455 0))(
  ( (LongMap!4455 (underlying!9139 Cell!17629)) (MutLongMapExt!4454 (__x!29390 Int)) )
))
(declare-fun lt!1517626 () MutLongMap!4455)

(get-info :version)

(assert (=> b!4294001 (= e!2668191 (and e!2668206 ((_ is LongMap!4455) lt!1517626)))))

(declare-datatypes ((Hashable!4371 0))(
  ( (HashableExt!4370 (__x!29391 Int)) )
))
(declare-datatypes ((Cell!17631 0))(
  ( (Cell!17632 (v!41737 MutLongMap!4455)) )
))
(declare-datatypes ((MutableMap!4361 0))(
  ( (MutableMapExt!4360 (__x!29392 Int)) (HashMap!4361 (underlying!9140 Cell!17631) (hashF!6403 Hashable!4371) (_size!8954 (_ BitVec 32)) (defaultValue!4532 Int)) )
))
(declare-datatypes ((List!47919 0))(
  ( (Nil!47795) (Cons!47795 (h!53215 C!26156) (t!354523 List!47919)) )
))
(declare-datatypes ((IArray!28901 0))(
  ( (IArray!28902 (innerList!14508 List!47919)) )
))
(declare-datatypes ((Conc!14420 0))(
  ( (Node!14420 (left!35450 Conc!14420) (right!35780 Conc!14420) (csize!29070 Int) (cheight!14631 Int)) (Leaf!22311 (xs!17726 IArray!28901) (csize!29071 Int)) (Empty!14420) )
))
(declare-datatypes ((BalanceConc!28330 0))(
  ( (BalanceConc!28331 (c!730703 Conc!14420)) )
))
(declare-datatypes ((CacheFindLongestMatch!528 0))(
  ( (CacheFindLongestMatch!529 (cache!4501 MutableMap!4361) (totalInput!4388 BalanceConc!28330)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!528)

(assert (=> b!4294001 (= lt!1517626 (v!41737 (underlying!9140 (cache!4501 cacheFindLongestMatch!183))))))

(declare-fun mapNonEmpty!20020 () Bool)

(declare-fun mapRes!20022 () Bool)

(declare-fun tp!1318022 () Bool)

(declare-fun tp!1318028 () Bool)

(assert (=> mapNonEmpty!20020 (= mapRes!20022 (and tp!1318022 tp!1318028))))

(declare-datatypes ((tuple2!45536 0))(
  ( (tuple2!45537 (_1!26037 Context!5738) (_2!26037 C!26156)) )
))
(declare-datatypes ((tuple2!45538 0))(
  ( (tuple2!45539 (_1!26038 tuple2!45536) (_2!26038 (InoxSet Context!5738))) )
))
(declare-datatypes ((List!47920 0))(
  ( (Nil!47796) (Cons!47796 (h!53216 tuple2!45538) (t!354524 List!47920)) )
))
(declare-fun mapRest!20021 () (Array (_ BitVec 32) List!47920))

(declare-fun mapKey!20021 () (_ BitVec 32))

(declare-datatypes ((array!15894 0))(
  ( (array!15895 (arr!7103 (Array (_ BitVec 32) List!47920)) (size!35103 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8912 0))(
  ( (LongMapFixedSize!8913 (defaultEntry!4841 Int) (mask!12915 (_ BitVec 32)) (extraKeys!4705 (_ BitVec 32)) (zeroValue!4715 List!47920) (minValue!4715 List!47920) (_size!8955 (_ BitVec 32)) (_keys!4756 array!15890) (_values!4737 array!15894) (_vacant!4517 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17633 0))(
  ( (Cell!17634 (v!41738 LongMapFixedSize!8912)) )
))
(declare-datatypes ((MutLongMap!4456 0))(
  ( (LongMap!4456 (underlying!9141 Cell!17633)) (MutLongMapExt!4455 (__x!29393 Int)) )
))
(declare-datatypes ((Cell!17635 0))(
  ( (Cell!17636 (v!41739 MutLongMap!4456)) )
))
(declare-datatypes ((Hashable!4372 0))(
  ( (HashableExt!4371 (__x!29394 Int)) )
))
(declare-datatypes ((MutableMap!4362 0))(
  ( (MutableMapExt!4361 (__x!29395 Int)) (HashMap!4362 (underlying!9142 Cell!17635) (hashF!6404 Hashable!4372) (_size!8956 (_ BitVec 32)) (defaultValue!4533 Int)) )
))
(declare-datatypes ((CacheUp!2842 0))(
  ( (CacheUp!2843 (cache!4502 MutableMap!4362)) )
))
(declare-fun cacheUp!947 () CacheUp!2842)

(declare-fun mapValue!20021 () List!47920)

(assert (=> mapNonEmpty!20020 (= (arr!7103 (_values!4737 (v!41738 (underlying!9141 (v!41739 (underlying!9142 (cache!4502 cacheUp!947))))))) (store mapRest!20021 mapKey!20021 mapValue!20021))))

(declare-fun mapIsEmpty!20020 () Bool)

(declare-fun mapRes!20021 () Bool)

(assert (=> mapIsEmpty!20020 mapRes!20021))

(declare-fun setIsEmpty!26592 () Bool)

(declare-fun setRes!26592 () Bool)

(assert (=> setIsEmpty!26592 setRes!26592))

(declare-fun e!2668186 () Bool)

(declare-fun tp!1318021 () Bool)

(declare-fun e!2668204 () Bool)

(declare-fun tp!1318025 () Bool)

(declare-fun array_inv!5089 (array!15890) Bool)

(declare-fun array_inv!5090 (array!15894) Bool)

(assert (=> b!4294002 (= e!2668204 (and tp!1318035 tp!1318025 tp!1318021 (array_inv!5089 (_keys!4756 (v!41738 (underlying!9141 (v!41739 (underlying!9142 (cache!4502 cacheUp!947))))))) (array_inv!5090 (_values!4737 (v!41738 (underlying!9141 (v!41739 (underlying!9142 (cache!4502 cacheUp!947))))))) e!2668186))))

(declare-fun b!4294003 () Bool)

(declare-fun e!2668203 () Bool)

(declare-fun from!999 () Int)

(declare-fun lt!1517627 () Int)

(assert (=> b!4294003 (= e!2668203 (and (>= (+ 1 from!999) 0) (<= (+ 1 from!999) lt!1517627) (>= (- lt!1517627 (+ 1 from!999)) (- lt!1517627 from!999))))))

(declare-datatypes ((tuple3!5480 0))(
  ( (tuple3!5481 (_1!26039 Regex!12979) (_2!26039 Context!5738) (_3!3269 C!26156)) )
))
(declare-datatypes ((tuple2!45540 0))(
  ( (tuple2!45541 (_1!26040 tuple3!5480) (_2!26040 (InoxSet Context!5738))) )
))
(declare-datatypes ((List!47921 0))(
  ( (Nil!47797) (Cons!47797 (h!53217 tuple2!45540) (t!354525 List!47921)) )
))
(declare-datatypes ((Hashable!4373 0))(
  ( (HashableExt!4372 (__x!29396 Int)) )
))
(declare-datatypes ((array!15896 0))(
  ( (array!15897 (arr!7104 (Array (_ BitVec 32) List!47921)) (size!35104 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8914 0))(
  ( (LongMapFixedSize!8915 (defaultEntry!4842 Int) (mask!12916 (_ BitVec 32)) (extraKeys!4706 (_ BitVec 32)) (zeroValue!4716 List!47921) (minValue!4716 List!47921) (_size!8957 (_ BitVec 32)) (_keys!4757 array!15890) (_values!4738 array!15896) (_vacant!4518 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17637 0))(
  ( (Cell!17638 (v!41740 LongMapFixedSize!8914)) )
))
(declare-datatypes ((MutLongMap!4457 0))(
  ( (LongMap!4457 (underlying!9143 Cell!17637)) (MutLongMapExt!4456 (__x!29397 Int)) )
))
(declare-datatypes ((Cell!17639 0))(
  ( (Cell!17640 (v!41741 MutLongMap!4457)) )
))
(declare-datatypes ((MutableMap!4363 0))(
  ( (MutableMapExt!4362 (__x!29398 Int)) (HashMap!4363 (underlying!9144 Cell!17639) (hashF!6405 Hashable!4373) (_size!8958 (_ BitVec 32)) (defaultValue!4534 Int)) )
))
(declare-datatypes ((CacheDown!2960 0))(
  ( (CacheDown!2961 (cache!4503 MutableMap!4363)) )
))
(declare-fun cacheDown!1066 () CacheDown!2960)

(declare-fun z!3765 () (InoxSet Context!5738))

(declare-datatypes ((tuple3!5482 0))(
  ( (tuple3!5483 (_1!26041 (InoxSet Context!5738)) (_2!26041 CacheUp!2842) (_3!3270 CacheDown!2960)) )
))
(declare-fun lt!1517629 () tuple3!5482)

(declare-fun totalInput!812 () BalanceConc!28330)

(declare-fun derivationStepZipperMem!138 ((InoxSet Context!5738) C!26156 CacheUp!2842 CacheDown!2960) tuple3!5482)

(declare-fun apply!10847 (BalanceConc!28330 Int) C!26156)

(assert (=> b!4294003 (= lt!1517629 (derivationStepZipperMem!138 z!3765 (apply!10847 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun b!4294004 () Bool)

(declare-fun e!2668187 () Bool)

(declare-fun e!2668193 () Bool)

(assert (=> b!4294004 (= e!2668187 e!2668193)))

(declare-fun b!4294005 () Bool)

(declare-fun e!2668184 () Bool)

(declare-fun e!2668194 () Bool)

(assert (=> b!4294005 (= e!2668184 e!2668194)))

(declare-fun b!4294006 () Bool)

(declare-fun e!2668198 () Bool)

(assert (=> b!4294006 (= e!2668206 e!2668198)))

(declare-fun b!4294007 () Bool)

(declare-fun e!2668195 () Bool)

(declare-fun tp!1318011 () Bool)

(declare-fun inv!63318 (Conc!14420) Bool)

(assert (=> b!4294007 (= e!2668195 (and (inv!63318 (c!730703 totalInput!812)) tp!1318011))))

(declare-fun b!4294008 () Bool)

(declare-fun e!2668200 () Bool)

(assert (=> b!4294008 (= e!2668200 e!2668204)))

(declare-fun b!4294009 () Bool)

(declare-fun res!1760367 () Bool)

(assert (=> b!4294009 (=> (not res!1760367) (not e!2668203))))

(declare-datatypes ((Option!10146 0))(
  ( (None!10145) (Some!10145 (v!41742 Int)) )
))
(declare-fun get!15467 (CacheFindLongestMatch!528 (InoxSet Context!5738) Int) Option!10146)

(assert (=> b!4294009 (= res!1760367 (not ((_ is Some!10145) (get!15467 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun b!4294010 () Bool)

(declare-fun tp!1318034 () Bool)

(assert (=> b!4294010 (= e!2668186 (and tp!1318034 mapRes!20022))))

(declare-fun condMapEmpty!20022 () Bool)

(declare-fun mapDefault!20022 () List!47920)

(assert (=> b!4294010 (= condMapEmpty!20022 (= (arr!7103 (_values!4737 (v!41738 (underlying!9141 (v!41739 (underlying!9142 (cache!4502 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47920)) mapDefault!20022)))))

(declare-fun e!2668196 () Bool)

(declare-fun tp!1318014 () Bool)

(declare-fun tp!1318016 () Bool)

(declare-fun e!2668205 () Bool)

(declare-fun array_inv!5091 (array!15892) Bool)

(assert (=> b!4294011 (= e!2668196 (and tp!1318013 tp!1318016 tp!1318014 (array_inv!5089 (_keys!4755 (v!41736 (underlying!9139 (v!41737 (underlying!9140 (cache!4501 cacheFindLongestMatch!183))))))) (array_inv!5091 (_values!4736 (v!41736 (underlying!9139 (v!41737 (underlying!9140 (cache!4501 cacheFindLongestMatch!183))))))) e!2668205))))

(declare-fun b!4294012 () Bool)

(declare-fun res!1760368 () Bool)

(assert (=> b!4294012 (=> (not res!1760368) (not e!2668203))))

(declare-fun totalInputSize!257 () Int)

(assert (=> b!4294012 (= res!1760368 (not (= from!999 totalInputSize!257)))))

(declare-fun b!4294013 () Bool)

(declare-fun tp!1318012 () Bool)

(assert (=> b!4294013 (= e!2668205 (and tp!1318012 mapRes!20021))))

(declare-fun condMapEmpty!20021 () Bool)

(declare-fun mapDefault!20021 () List!47918)

(assert (=> b!4294013 (= condMapEmpty!20021 (= (arr!7102 (_values!4736 (v!41736 (underlying!9139 (v!41737 (underlying!9140 (cache!4501 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47918)) mapDefault!20021)))))

(declare-fun b!4294014 () Bool)

(declare-fun e!2668189 () Bool)

(declare-fun e!2668207 () Bool)

(declare-fun lt!1517628 () MutLongMap!4456)

(assert (=> b!4294014 (= e!2668189 (and e!2668207 ((_ is LongMap!4456) lt!1517628)))))

(assert (=> b!4294014 (= lt!1517628 (v!41739 (underlying!9142 (cache!4502 cacheUp!947))))))

(declare-fun mapNonEmpty!20021 () Bool)

(declare-fun mapRes!20020 () Bool)

(declare-fun tp!1318018 () Bool)

(declare-fun tp!1318019 () Bool)

(assert (=> mapNonEmpty!20021 (= mapRes!20020 (and tp!1318018 tp!1318019))))

(declare-fun mapValue!20022 () List!47921)

(declare-fun mapRest!20022 () (Array (_ BitVec 32) List!47921))

(declare-fun mapKey!20020 () (_ BitVec 32))

(assert (=> mapNonEmpty!20021 (= (arr!7104 (_values!4738 (v!41740 (underlying!9143 (v!41741 (underlying!9144 (cache!4503 cacheDown!1066))))))) (store mapRest!20022 mapKey!20020 mapValue!20022))))

(declare-fun b!4294015 () Bool)

(assert (=> b!4294015 (= e!2668198 e!2668196)))

(declare-fun mapIsEmpty!20021 () Bool)

(assert (=> mapIsEmpty!20021 mapRes!20020))

(declare-fun b!4294016 () Bool)

(declare-fun res!1760369 () Bool)

(assert (=> b!4294016 (=> (not res!1760369) (not e!2668203))))

(declare-fun lostCauseZipper!654 ((InoxSet Context!5738)) Bool)

(assert (=> b!4294016 (= res!1760369 (not (lostCauseZipper!654 z!3765)))))

(declare-fun b!4294017 () Bool)

(declare-fun e!2668180 () Bool)

(assert (=> b!4294017 (= e!2668180 e!2668203)))

(declare-fun res!1760365 () Bool)

(assert (=> b!4294017 (=> (not res!1760365) (not e!2668203))))

(assert (=> b!4294017 (= res!1760365 (and (<= from!999 lt!1517627) (= totalInputSize!257 lt!1517627) (= (totalInput!4388 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35105 (BalanceConc!28330) Int)

(assert (=> b!4294017 (= lt!1517627 (size!35105 totalInput!812))))

(declare-fun e!2668199 () Bool)

(assert (=> b!4294018 (= e!2668199 (and e!2668191 tp!1318027))))

(declare-fun res!1760366 () Bool)

(assert (=> start!412228 (=> (not res!1760366) (not e!2668180))))

(assert (=> start!412228 (= res!1760366 (>= from!999 0))))

(assert (=> start!412228 e!2668180))

(declare-fun inv!63319 (CacheDown!2960) Bool)

(assert (=> start!412228 (and (inv!63319 cacheDown!1066) e!2668184)))

(declare-fun e!2668181 () Bool)

(declare-fun inv!63320 (CacheFindLongestMatch!528) Bool)

(assert (=> start!412228 (and (inv!63320 cacheFindLongestMatch!183) e!2668181)))

(declare-fun condSetEmpty!26592 () Bool)

(assert (=> start!412228 (= condSetEmpty!26592 (= z!3765 ((as const (Array Context!5738 Bool)) false)))))

(assert (=> start!412228 setRes!26592))

(assert (=> start!412228 true))

(declare-fun inv!63321 (BalanceConc!28330) Bool)

(assert (=> start!412228 (and (inv!63321 totalInput!812) e!2668195)))

(declare-fun e!2668190 () Bool)

(declare-fun inv!63322 (CacheUp!2842) Bool)

(assert (=> start!412228 (and (inv!63322 cacheUp!947) e!2668190)))

(declare-fun e!2668197 () Bool)

(declare-fun tp!1318023 () Bool)

(declare-fun tp!1318029 () Bool)

(declare-fun array_inv!5092 (array!15896) Bool)

(assert (=> b!4294019 (= e!2668193 (and tp!1318032 tp!1318029 tp!1318023 (array_inv!5089 (_keys!4757 (v!41740 (underlying!9143 (v!41741 (underlying!9144 (cache!4503 cacheDown!1066))))))) (array_inv!5092 (_values!4738 (v!41740 (underlying!9143 (v!41741 (underlying!9144 (cache!4503 cacheDown!1066))))))) e!2668197))))

(declare-fun mapIsEmpty!20022 () Bool)

(assert (=> mapIsEmpty!20022 mapRes!20022))

(declare-fun e!2668208 () Bool)

(assert (=> b!4294020 (= e!2668194 (and e!2668208 tp!1318024))))

(declare-fun e!2668202 () Bool)

(assert (=> b!4294021 (= e!2668202 (and e!2668189 tp!1318030))))

(declare-fun mapNonEmpty!20022 () Bool)

(declare-fun tp!1318026 () Bool)

(declare-fun tp!1318031 () Bool)

(assert (=> mapNonEmpty!20022 (= mapRes!20021 (and tp!1318026 tp!1318031))))

(declare-fun mapRest!20020 () (Array (_ BitVec 32) List!47918))

(declare-fun mapValue!20020 () List!47918)

(declare-fun mapKey!20022 () (_ BitVec 32))

(assert (=> mapNonEmpty!20022 (= (arr!7102 (_values!4736 (v!41736 (underlying!9139 (v!41737 (underlying!9140 (cache!4501 cacheFindLongestMatch!183))))))) (store mapRest!20020 mapKey!20022 mapValue!20020))))

(declare-fun tp!1318015 () Bool)

(declare-fun e!2668201 () Bool)

(declare-fun setNonEmpty!26592 () Bool)

(declare-fun setElem!26592 () Context!5738)

(declare-fun inv!63323 (Context!5738) Bool)

(assert (=> setNonEmpty!26592 (= setRes!26592 (and tp!1318015 (inv!63323 setElem!26592) e!2668201))))

(declare-fun setRest!26592 () (InoxSet Context!5738))

(assert (=> setNonEmpty!26592 (= z!3765 ((_ map or) (store ((as const (Array Context!5738 Bool)) false) setElem!26592 true) setRest!26592))))

(declare-fun b!4294022 () Bool)

(declare-fun e!2668192 () Bool)

(declare-fun tp!1318033 () Bool)

(assert (=> b!4294022 (= e!2668192 (and (inv!63318 (c!730703 (totalInput!4388 cacheFindLongestMatch!183))) tp!1318033))))

(declare-fun b!4294023 () Bool)

(declare-fun e!2668188 () Bool)

(assert (=> b!4294023 (= e!2668188 e!2668187)))

(declare-fun b!4294024 () Bool)

(assert (=> b!4294024 (= e!2668207 e!2668200)))

(declare-fun b!4294025 () Bool)

(declare-fun tp!1318020 () Bool)

(assert (=> b!4294025 (= e!2668201 tp!1318020)))

(declare-fun b!4294026 () Bool)

(assert (=> b!4294026 (= e!2668190 e!2668202)))

(declare-fun b!4294027 () Bool)

(assert (=> b!4294027 (= e!2668181 (and e!2668199 (inv!63321 (totalInput!4388 cacheFindLongestMatch!183)) e!2668192))))

(declare-fun b!4294028 () Bool)

(declare-fun lt!1517630 () MutLongMap!4457)

(assert (=> b!4294028 (= e!2668208 (and e!2668188 ((_ is LongMap!4457) lt!1517630)))))

(assert (=> b!4294028 (= lt!1517630 (v!41741 (underlying!9144 (cache!4503 cacheDown!1066))))))

(declare-fun b!4294029 () Bool)

(declare-fun tp!1318017 () Bool)

(assert (=> b!4294029 (= e!2668197 (and tp!1318017 mapRes!20020))))

(declare-fun condMapEmpty!20020 () Bool)

(declare-fun mapDefault!20020 () List!47921)

(assert (=> b!4294029 (= condMapEmpty!20020 (= (arr!7104 (_values!4738 (v!41740 (underlying!9143 (v!41741 (underlying!9144 (cache!4503 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47921)) mapDefault!20020)))))

(assert (= (and start!412228 res!1760366) b!4294017))

(assert (= (and b!4294017 res!1760365) b!4294009))

(assert (= (and b!4294009 res!1760367) b!4294012))

(assert (= (and b!4294012 res!1760368) b!4294016))

(assert (= (and b!4294016 res!1760369) b!4294003))

(assert (= (and b!4294029 condMapEmpty!20020) mapIsEmpty!20021))

(assert (= (and b!4294029 (not condMapEmpty!20020)) mapNonEmpty!20021))

(assert (= b!4294019 b!4294029))

(assert (= b!4294004 b!4294019))

(assert (= b!4294023 b!4294004))

(assert (= (and b!4294028 ((_ is LongMap!4457) (v!41741 (underlying!9144 (cache!4503 cacheDown!1066))))) b!4294023))

(assert (= b!4294020 b!4294028))

(assert (= (and b!4294005 ((_ is HashMap!4363) (cache!4503 cacheDown!1066))) b!4294020))

(assert (= start!412228 b!4294005))

(assert (= (and b!4294013 condMapEmpty!20021) mapIsEmpty!20020))

(assert (= (and b!4294013 (not condMapEmpty!20021)) mapNonEmpty!20022))

(assert (= b!4294011 b!4294013))

(assert (= b!4294015 b!4294011))

(assert (= b!4294006 b!4294015))

(assert (= (and b!4294001 ((_ is LongMap!4455) (v!41737 (underlying!9140 (cache!4501 cacheFindLongestMatch!183))))) b!4294006))

(assert (= b!4294018 b!4294001))

(assert (= (and b!4294027 ((_ is HashMap!4361) (cache!4501 cacheFindLongestMatch!183))) b!4294018))

(assert (= b!4294027 b!4294022))

(assert (= start!412228 b!4294027))

(assert (= (and start!412228 condSetEmpty!26592) setIsEmpty!26592))

(assert (= (and start!412228 (not condSetEmpty!26592)) setNonEmpty!26592))

(assert (= setNonEmpty!26592 b!4294025))

(assert (= start!412228 b!4294007))

(assert (= (and b!4294010 condMapEmpty!20022) mapIsEmpty!20022))

(assert (= (and b!4294010 (not condMapEmpty!20022)) mapNonEmpty!20020))

(assert (= b!4294002 b!4294010))

(assert (= b!4294008 b!4294002))

(assert (= b!4294024 b!4294008))

(assert (= (and b!4294014 ((_ is LongMap!4456) (v!41739 (underlying!9142 (cache!4502 cacheUp!947))))) b!4294024))

(assert (= b!4294021 b!4294014))

(assert (= (and b!4294026 ((_ is HashMap!4362) (cache!4502 cacheUp!947))) b!4294021))

(assert (= start!412228 b!4294026))

(declare-fun m!4886832 () Bool)

(assert (=> mapNonEmpty!20021 m!4886832))

(declare-fun m!4886834 () Bool)

(assert (=> mapNonEmpty!20020 m!4886834))

(declare-fun m!4886836 () Bool)

(assert (=> b!4294002 m!4886836))

(declare-fun m!4886838 () Bool)

(assert (=> b!4294002 m!4886838))

(declare-fun m!4886840 () Bool)

(assert (=> start!412228 m!4886840))

(declare-fun m!4886842 () Bool)

(assert (=> start!412228 m!4886842))

(declare-fun m!4886844 () Bool)

(assert (=> start!412228 m!4886844))

(declare-fun m!4886846 () Bool)

(assert (=> start!412228 m!4886846))

(declare-fun m!4886848 () Bool)

(assert (=> b!4294022 m!4886848))

(declare-fun m!4886850 () Bool)

(assert (=> b!4294007 m!4886850))

(declare-fun m!4886852 () Bool)

(assert (=> mapNonEmpty!20022 m!4886852))

(declare-fun m!4886854 () Bool)

(assert (=> b!4294017 m!4886854))

(declare-fun m!4886856 () Bool)

(assert (=> b!4294003 m!4886856))

(assert (=> b!4294003 m!4886856))

(declare-fun m!4886858 () Bool)

(assert (=> b!4294003 m!4886858))

(declare-fun m!4886860 () Bool)

(assert (=> setNonEmpty!26592 m!4886860))

(declare-fun m!4886862 () Bool)

(assert (=> b!4294016 m!4886862))

(declare-fun m!4886864 () Bool)

(assert (=> b!4294011 m!4886864))

(declare-fun m!4886866 () Bool)

(assert (=> b!4294011 m!4886866))

(declare-fun m!4886868 () Bool)

(assert (=> b!4294019 m!4886868))

(declare-fun m!4886870 () Bool)

(assert (=> b!4294019 m!4886870))

(declare-fun m!4886872 () Bool)

(assert (=> b!4294009 m!4886872))

(declare-fun m!4886874 () Bool)

(assert (=> b!4294027 m!4886874))

(check-sat (not b_next!128377) (not b!4294017) (not b!4294003) b_and!338897 (not b!4294002) b_and!338889 (not mapNonEmpty!20021) (not b!4294011) (not b!4294019) (not mapNonEmpty!20022) (not mapNonEmpty!20020) (not b!4294022) (not b!4294009) (not b!4294025) (not setNonEmpty!26592) (not b_next!128383) (not b!4294007) b_and!338893 (not b_next!128385) (not b!4294013) (not b_next!128379) (not b_next!128381) (not b!4294016) b_and!338895 (not b_next!128375) (not b!4294029) (not start!412228) b_and!338887 (not b!4294010) b_and!338891 (not b!4294027))
(check-sat (not b_next!128377) b_and!338893 (not b_next!128385) b_and!338895 (not b_next!128375) b_and!338897 b_and!338887 b_and!338889 b_and!338891 (not b_next!128383) (not b_next!128379) (not b_next!128381))
