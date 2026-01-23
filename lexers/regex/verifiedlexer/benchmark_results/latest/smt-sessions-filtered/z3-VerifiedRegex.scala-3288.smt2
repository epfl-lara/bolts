; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188796 () Bool)

(assert start!188796)

(declare-fun b!1885687 () Bool)

(declare-fun b_free!52453 () Bool)

(declare-fun b_next!53157 () Bool)

(assert (=> b!1885687 (= b_free!52453 (not b_next!53157))))

(declare-fun tp!537492 () Bool)

(declare-fun b_and!145243 () Bool)

(assert (=> b!1885687 (= tp!537492 b_and!145243)))

(declare-fun b!1885683 () Bool)

(declare-fun b_free!52455 () Bool)

(declare-fun b_next!53159 () Bool)

(assert (=> b!1885683 (= b_free!52455 (not b_next!53159))))

(declare-fun tp!537494 () Bool)

(declare-fun b_and!145245 () Bool)

(assert (=> b!1885683 (= tp!537494 b_and!145245)))

(declare-fun b!1885697 () Bool)

(declare-fun b_free!52457 () Bool)

(declare-fun b_next!53161 () Bool)

(assert (=> b!1885697 (= b_free!52457 (not b_next!53161))))

(declare-fun tp!537489 () Bool)

(declare-fun b_and!145247 () Bool)

(assert (=> b!1885697 (= tp!537489 b_and!145247)))

(declare-fun b!1885682 () Bool)

(declare-fun b_free!52459 () Bool)

(declare-fun b_next!53163 () Bool)

(assert (=> b!1885682 (= b_free!52459 (not b_next!53163))))

(declare-fun tp!537491 () Bool)

(declare-fun b_and!145249 () Bool)

(assert (=> b!1885682 (= tp!537491 b_and!145249)))

(declare-fun b!1885680 () Bool)

(declare-fun e!1203088 () Bool)

(declare-datatypes ((C!10448 0))(
  ( (C!10449 (val!6112 Int)) )
))
(declare-datatypes ((List!21072 0))(
  ( (Nil!20990) (Cons!20990 (h!26391 C!10448) (t!175071 List!21072)) )
))
(declare-datatypes ((IArray!13963 0))(
  ( (IArray!13964 (innerList!7039 List!21072)) )
))
(declare-datatypes ((Conc!6979 0))(
  ( (Node!6979 (left!16863 Conc!6979) (right!17193 Conc!6979) (csize!14188 Int) (cheight!7190 Int)) (Leaf!10268 (xs!9869 IArray!13963) (csize!14189 Int)) (Empty!6979) )
))
(declare-datatypes ((BalanceConc!13774 0))(
  ( (BalanceConc!13775 (c!308041 Conc!6979)) )
))
(declare-fun input!3724 () BalanceConc!13774)

(declare-fun tp!537482 () Bool)

(declare-fun inv!27974 (Conc!6979) Bool)

(assert (=> b!1885680 (= e!1203088 (and (inv!27974 (c!308041 input!3724)) tp!537482))))

(declare-fun b!1885681 () Bool)

(declare-fun e!1203093 () Bool)

(declare-fun e!1203102 () Bool)

(declare-datatypes ((Regex!5141 0))(
  ( (ElementMatch!5141 (c!308042 C!10448)) (Concat!8994 (regOne!10794 Regex!5141) (regTwo!10794 Regex!5141)) (EmptyExpr!5141) (Star!5141 (reg!5470 Regex!5141)) (EmptyLang!5141) (Union!5141 (regOne!10795 Regex!5141) (regTwo!10795 Regex!5141)) )
))
(declare-datatypes ((List!21073 0))(
  ( (Nil!20991) (Cons!20991 (h!26392 Regex!5141) (t!175072 List!21073)) )
))
(declare-datatypes ((Context!1990 0))(
  ( (Context!1991 (exprs!1495 List!21073)) )
))
(declare-datatypes ((tuple3!2004 0))(
  ( (tuple3!2005 (_1!11484 Regex!5141) (_2!11484 Context!1990) (_3!1466 C!10448)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!20036 0))(
  ( (tuple2!20037 (_1!11485 tuple3!2004) (_2!11485 (InoxSet Context!1990))) )
))
(declare-datatypes ((array!6786 0))(
  ( (array!6787 (arr!3014 (Array (_ BitVec 32) (_ BitVec 64))) (size!16678 (_ BitVec 32))) )
))
(declare-datatypes ((List!21074 0))(
  ( (Nil!20992) (Cons!20992 (h!26393 tuple2!20036) (t!175073 List!21074)) )
))
(declare-datatypes ((array!6788 0))(
  ( (array!6789 (arr!3015 (Array (_ BitVec 32) List!21074)) (size!16679 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3936 0))(
  ( (LongMapFixedSize!3937 (defaultEntry!2333 Int) (mask!5805 (_ BitVec 32)) (extraKeys!2216 (_ BitVec 32)) (zeroValue!2226 List!21074) (minValue!2226 List!21074) (_size!3987 (_ BitVec 32)) (_keys!2265 array!6786) (_values!2248 array!6788) (_vacant!2029 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7697 0))(
  ( (Cell!7698 (v!26253 LongMapFixedSize!3936)) )
))
(declare-datatypes ((MutLongMap!1968 0))(
  ( (LongMap!1968 (underlying!4129 Cell!7697)) (MutLongMapExt!1967 (__x!13207 Int)) )
))
(declare-fun lt!723400 () MutLongMap!1968)

(get-info :version)

(assert (=> b!1885681 (= e!1203093 (and e!1203102 ((_ is LongMap!1968) lt!723400)))))

(declare-datatypes ((Hashable!1882 0))(
  ( (HashableExt!1881 (__x!13208 Int)) )
))
(declare-datatypes ((Cell!7699 0))(
  ( (Cell!7700 (v!26254 MutLongMap!1968)) )
))
(declare-datatypes ((MutableMap!1882 0))(
  ( (MutableMapExt!1881 (__x!13209 Int)) (HashMap!1882 (underlying!4130 Cell!7699) (hashF!3805 Hashable!1882) (_size!3988 (_ BitVec 32)) (defaultValue!2044 Int)) )
))
(declare-datatypes ((CacheDown!1178 0))(
  ( (CacheDown!1179 (cache!2263 MutableMap!1882)) )
))
(declare-fun cacheDown!779 () CacheDown!1178)

(assert (=> b!1885681 (= lt!723400 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))

(declare-fun mapIsEmpty!9106 () Bool)

(declare-fun mapRes!9107 () Bool)

(assert (=> mapIsEmpty!9106 mapRes!9107))

(declare-fun mapIsEmpty!9107 () Bool)

(declare-fun mapRes!9106 () Bool)

(assert (=> mapIsEmpty!9107 mapRes!9106))

(declare-fun mapNonEmpty!9106 () Bool)

(declare-fun tp!537479 () Bool)

(declare-fun tp!537488 () Bool)

(assert (=> mapNonEmpty!9106 (= mapRes!9107 (and tp!537479 tp!537488))))

(declare-fun mapKey!9106 () (_ BitVec 32))

(declare-fun mapValue!9106 () List!21074)

(declare-fun mapRest!9106 () (Array (_ BitVec 32) List!21074))

(assert (=> mapNonEmpty!9106 (= (arr!3015 (_values!2248 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))) (store mapRest!9106 mapKey!9106 mapValue!9106))))

(declare-fun e!1203103 () Bool)

(declare-fun e!1203094 () Bool)

(assert (=> b!1885682 (= e!1203103 (and e!1203094 tp!537491))))

(declare-fun e!1203107 () Bool)

(assert (=> b!1885683 (= e!1203107 (and e!1203093 tp!537494))))

(declare-fun b!1885684 () Bool)

(declare-fun e!1203104 () Bool)

(declare-fun tp!537485 () Bool)

(assert (=> b!1885684 (= e!1203104 (and tp!537485 mapRes!9106))))

(declare-fun condMapEmpty!9107 () Bool)

(declare-datatypes ((tuple2!20038 0))(
  ( (tuple2!20039 (_1!11486 Context!1990) (_2!11486 C!10448)) )
))
(declare-datatypes ((tuple2!20040 0))(
  ( (tuple2!20041 (_1!11487 tuple2!20038) (_2!11487 (InoxSet Context!1990))) )
))
(declare-datatypes ((List!21075 0))(
  ( (Nil!20993) (Cons!20993 (h!26394 tuple2!20040) (t!175074 List!21075)) )
))
(declare-datatypes ((array!6790 0))(
  ( (array!6791 (arr!3016 (Array (_ BitVec 32) List!21075)) (size!16680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3938 0))(
  ( (LongMapFixedSize!3939 (defaultEntry!2334 Int) (mask!5806 (_ BitVec 32)) (extraKeys!2217 (_ BitVec 32)) (zeroValue!2227 List!21075) (minValue!2227 List!21075) (_size!3989 (_ BitVec 32)) (_keys!2266 array!6786) (_values!2249 array!6790) (_vacant!2030 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7701 0))(
  ( (Cell!7702 (v!26255 LongMapFixedSize!3938)) )
))
(declare-datatypes ((MutLongMap!1969 0))(
  ( (LongMap!1969 (underlying!4131 Cell!7701)) (MutLongMapExt!1968 (__x!13210 Int)) )
))
(declare-datatypes ((Cell!7703 0))(
  ( (Cell!7704 (v!26256 MutLongMap!1969)) )
))
(declare-datatypes ((Hashable!1883 0))(
  ( (HashableExt!1882 (__x!13211 Int)) )
))
(declare-datatypes ((MutableMap!1883 0))(
  ( (MutableMapExt!1882 (__x!13212 Int)) (HashMap!1883 (underlying!4132 Cell!7703) (hashF!3806 Hashable!1883) (_size!3990 (_ BitVec 32)) (defaultValue!2045 Int)) )
))
(declare-datatypes ((CacheUp!1180 0))(
  ( (CacheUp!1181 (cache!2264 MutableMap!1883)) )
))
(declare-fun cacheUp!766 () CacheUp!1180)

(declare-fun mapDefault!9107 () List!21075)

(assert (=> b!1885684 (= condMapEmpty!9107 (= (arr!3016 (_values!2249 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))) ((as const (Array (_ BitVec 32) List!21075)) mapDefault!9107)))))

(declare-fun b!1885685 () Bool)

(declare-fun e!1203090 () Bool)

(declare-fun tp!537483 () Bool)

(assert (=> b!1885685 (= e!1203090 tp!537483)))

(declare-fun b!1885686 () Bool)

(declare-fun e!1203091 () Bool)

(declare-fun e!1203101 () Bool)

(assert (=> b!1885686 (= e!1203091 e!1203101)))

(declare-fun tp!537486 () Bool)

(declare-fun e!1203096 () Bool)

(declare-fun e!1203089 () Bool)

(declare-fun tp!537487 () Bool)

(declare-fun array_inv!2161 (array!6786) Bool)

(declare-fun array_inv!2162 (array!6788) Bool)

(assert (=> b!1885687 (= e!1203096 (and tp!537492 tp!537487 tp!537486 (array_inv!2161 (_keys!2265 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))) (array_inv!2162 (_values!2248 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))) e!1203089))))

(declare-fun b!1885688 () Bool)

(declare-fun e!1203092 () Bool)

(assert (=> b!1885688 (= e!1203092 e!1203107)))

(declare-fun tp!537495 () Bool)

(declare-fun setRes!11704 () Bool)

(declare-fun setElem!11704 () Context!1990)

(declare-fun setNonEmpty!11704 () Bool)

(declare-fun inv!27975 (Context!1990) Bool)

(assert (=> setNonEmpty!11704 (= setRes!11704 (and tp!537495 (inv!27975 setElem!11704) e!1203090))))

(declare-fun z!580 () (InoxSet Context!1990))

(declare-fun setRest!11704 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11704 (= z!580 ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11704 true) setRest!11704))))

(declare-fun b!1885689 () Bool)

(declare-fun e!1203106 () Bool)

(declare-fun e!1203105 () Bool)

(assert (=> b!1885689 (= e!1203106 e!1203105)))

(declare-fun res!841679 () Bool)

(assert (=> b!1885689 (=> (not res!841679) (not e!1203105))))

(declare-fun i!1815 () Int)

(declare-fun lt!723403 () Int)

(assert (=> b!1885689 (= res!841679 (and (<= i!1815 lt!723403) (not (= i!1815 lt!723403))))))

(declare-fun size!16681 (BalanceConc!13774) Int)

(assert (=> b!1885689 (= lt!723403 (size!16681 input!3724))))

(declare-fun b!1885690 () Bool)

(declare-fun tp!537480 () Bool)

(assert (=> b!1885690 (= e!1203089 (and tp!537480 mapRes!9107))))

(declare-fun condMapEmpty!9106 () Bool)

(declare-fun mapDefault!9106 () List!21074)

(assert (=> b!1885690 (= condMapEmpty!9106 (= (arr!3015 (_values!2248 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))) ((as const (Array (_ BitVec 32) List!21074)) mapDefault!9106)))))

(declare-fun b!1885691 () Bool)

(declare-fun e!1203099 () Bool)

(assert (=> b!1885691 (= e!1203102 e!1203099)))

(declare-fun b!1885692 () Bool)

(declare-fun e!1203098 () Bool)

(declare-fun lt!723402 () MutLongMap!1969)

(assert (=> b!1885692 (= e!1203094 (and e!1203098 ((_ is LongMap!1969) lt!723402)))))

(assert (=> b!1885692 (= lt!723402 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))

(declare-fun b!1885693 () Bool)

(assert (=> b!1885693 (= e!1203098 e!1203091)))

(declare-fun res!841680 () Bool)

(assert (=> start!188796 (=> (not res!841680) (not e!1203106))))

(assert (=> start!188796 (= res!841680 (>= i!1815 0))))

(assert (=> start!188796 e!1203106))

(assert (=> start!188796 true))

(declare-fun e!1203100 () Bool)

(declare-fun inv!27976 (CacheUp!1180) Bool)

(assert (=> start!188796 (and (inv!27976 cacheUp!766) e!1203100)))

(declare-fun inv!27977 (CacheDown!1178) Bool)

(assert (=> start!188796 (and (inv!27977 cacheDown!779) e!1203092)))

(declare-fun condSetEmpty!11704 () Bool)

(assert (=> start!188796 (= condSetEmpty!11704 (= z!580 ((as const (Array Context!1990 Bool)) false)))))

(assert (=> start!188796 setRes!11704))

(declare-fun inv!27978 (BalanceConc!13774) Bool)

(assert (=> start!188796 (and (inv!27978 input!3724) e!1203088)))

(declare-fun b!1885694 () Bool)

(assert (=> b!1885694 (= e!1203099 e!1203096)))

(declare-fun b!1885695 () Bool)

(assert (=> b!1885695 (= e!1203100 e!1203103)))

(declare-fun b!1885696 () Bool)

(declare-datatypes ((tuple3!2006 0))(
  ( (tuple3!2007 (_1!11488 (InoxSet Context!1990)) (_2!11488 CacheUp!1180) (_3!1467 CacheDown!1178)) )
))
(declare-fun lt!723401 () tuple3!2006)

(declare-datatypes ((tuple3!2008 0))(
  ( (tuple3!2009 (_1!11489 Bool) (_2!11489 CacheUp!1180) (_3!1468 CacheDown!1178)) )
))
(declare-fun matchZipperSequenceMem!6 ((InoxSet Context!1990) BalanceConc!13774 Int CacheUp!1180 CacheDown!1178) tuple3!2008)

(declare-fun matchZipperSequence!22 ((InoxSet Context!1990) BalanceConc!13774 Int) Bool)

(assert (=> b!1885696 (= e!1203105 (not (= (_1!11489 (matchZipperSequenceMem!6 (_1!11488 lt!723401) input!3724 (+ 1 i!1815) (_2!11488 lt!723401) (_3!1467 lt!723401))) (matchZipperSequence!22 z!580 input!3724 i!1815))))))

(declare-fun derivationStepZipperMem!11 ((InoxSet Context!1990) C!10448 CacheUp!1180 CacheDown!1178) tuple3!2006)

(declare-fun apply!5547 (BalanceConc!13774 Int) C!10448)

(assert (=> b!1885696 (= lt!723401 (derivationStepZipperMem!11 z!580 (apply!5547 input!3724 i!1815) cacheUp!766 cacheDown!779))))

(declare-fun mapNonEmpty!9107 () Bool)

(declare-fun tp!537493 () Bool)

(declare-fun tp!537484 () Bool)

(assert (=> mapNonEmpty!9107 (= mapRes!9106 (and tp!537493 tp!537484))))

(declare-fun mapValue!9107 () List!21075)

(declare-fun mapKey!9107 () (_ BitVec 32))

(declare-fun mapRest!9107 () (Array (_ BitVec 32) List!21075))

(assert (=> mapNonEmpty!9107 (= (arr!3016 (_values!2249 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))) (store mapRest!9107 mapKey!9107 mapValue!9107))))

(declare-fun setIsEmpty!11704 () Bool)

(assert (=> setIsEmpty!11704 setRes!11704))

(declare-fun tp!537481 () Bool)

(declare-fun tp!537490 () Bool)

(declare-fun array_inv!2163 (array!6790) Bool)

(assert (=> b!1885697 (= e!1203101 (and tp!537489 tp!537481 tp!537490 (array_inv!2161 (_keys!2266 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))) (array_inv!2163 (_values!2249 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))) e!1203104))))

(assert (= (and start!188796 res!841680) b!1885689))

(assert (= (and b!1885689 res!841679) b!1885696))

(assert (= (and b!1885684 condMapEmpty!9107) mapIsEmpty!9107))

(assert (= (and b!1885684 (not condMapEmpty!9107)) mapNonEmpty!9107))

(assert (= b!1885697 b!1885684))

(assert (= b!1885686 b!1885697))

(assert (= b!1885693 b!1885686))

(assert (= (and b!1885692 ((_ is LongMap!1969) (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))) b!1885693))

(assert (= b!1885682 b!1885692))

(assert (= (and b!1885695 ((_ is HashMap!1883) (cache!2264 cacheUp!766))) b!1885682))

(assert (= start!188796 b!1885695))

(assert (= (and b!1885690 condMapEmpty!9106) mapIsEmpty!9106))

(assert (= (and b!1885690 (not condMapEmpty!9106)) mapNonEmpty!9106))

(assert (= b!1885687 b!1885690))

(assert (= b!1885694 b!1885687))

(assert (= b!1885691 b!1885694))

(assert (= (and b!1885681 ((_ is LongMap!1968) (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))) b!1885691))

(assert (= b!1885683 b!1885681))

(assert (= (and b!1885688 ((_ is HashMap!1882) (cache!2263 cacheDown!779))) b!1885683))

(assert (= start!188796 b!1885688))

(assert (= (and start!188796 condSetEmpty!11704) setIsEmpty!11704))

(assert (= (and start!188796 (not condSetEmpty!11704)) setNonEmpty!11704))

(assert (= setNonEmpty!11704 b!1885685))

(assert (= start!188796 b!1885680))

(declare-fun m!2318561 () Bool)

(assert (=> b!1885687 m!2318561))

(declare-fun m!2318563 () Bool)

(assert (=> b!1885687 m!2318563))

(declare-fun m!2318565 () Bool)

(assert (=> mapNonEmpty!9107 m!2318565))

(declare-fun m!2318567 () Bool)

(assert (=> mapNonEmpty!9106 m!2318567))

(declare-fun m!2318569 () Bool)

(assert (=> setNonEmpty!11704 m!2318569))

(declare-fun m!2318571 () Bool)

(assert (=> b!1885696 m!2318571))

(declare-fun m!2318573 () Bool)

(assert (=> b!1885696 m!2318573))

(declare-fun m!2318575 () Bool)

(assert (=> b!1885696 m!2318575))

(assert (=> b!1885696 m!2318575))

(declare-fun m!2318577 () Bool)

(assert (=> b!1885696 m!2318577))

(declare-fun m!2318579 () Bool)

(assert (=> b!1885689 m!2318579))

(declare-fun m!2318581 () Bool)

(assert (=> b!1885680 m!2318581))

(declare-fun m!2318583 () Bool)

(assert (=> b!1885697 m!2318583))

(declare-fun m!2318585 () Bool)

(assert (=> b!1885697 m!2318585))

(declare-fun m!2318587 () Bool)

(assert (=> start!188796 m!2318587))

(declare-fun m!2318589 () Bool)

(assert (=> start!188796 m!2318589))

(declare-fun m!2318591 () Bool)

(assert (=> start!188796 m!2318591))

(check-sat (not b_next!53159) (not setNonEmpty!11704) (not b_next!53163) (not b!1885687) (not start!188796) (not b!1885680) b_and!145247 (not b!1885696) (not b_next!53157) (not mapNonEmpty!9107) (not b!1885697) b_and!145245 (not b!1885690) b_and!145249 (not b_next!53161) (not b!1885685) (not b!1885689) (not b!1885684) (not mapNonEmpty!9106) b_and!145243)
(check-sat b_and!145245 (not b_next!53159) (not b_next!53163) b_and!145249 (not b_next!53161) b_and!145247 (not b_next!53157) b_and!145243)
(get-model)

(declare-fun d!577879 () Bool)

(declare-fun c!308045 () Bool)

(assert (=> d!577879 (= c!308045 ((_ is Node!6979) (c!308041 input!3724)))))

(declare-fun e!1203112 () Bool)

(assert (=> d!577879 (= (inv!27974 (c!308041 input!3724)) e!1203112)))

(declare-fun b!1885704 () Bool)

(declare-fun inv!27979 (Conc!6979) Bool)

(assert (=> b!1885704 (= e!1203112 (inv!27979 (c!308041 input!3724)))))

(declare-fun b!1885705 () Bool)

(declare-fun e!1203113 () Bool)

(assert (=> b!1885705 (= e!1203112 e!1203113)))

(declare-fun res!841683 () Bool)

(assert (=> b!1885705 (= res!841683 (not ((_ is Leaf!10268) (c!308041 input!3724))))))

(assert (=> b!1885705 (=> res!841683 e!1203113)))

(declare-fun b!1885706 () Bool)

(declare-fun inv!27980 (Conc!6979) Bool)

(assert (=> b!1885706 (= e!1203113 (inv!27980 (c!308041 input!3724)))))

(assert (= (and d!577879 c!308045) b!1885704))

(assert (= (and d!577879 (not c!308045)) b!1885705))

(assert (= (and b!1885705 (not res!841683)) b!1885706))

(declare-fun m!2318593 () Bool)

(assert (=> b!1885704 m!2318593))

(declare-fun m!2318595 () Bool)

(assert (=> b!1885706 m!2318595))

(assert (=> b!1885680 d!577879))

(declare-fun lt!723410 () tuple3!2008)

(declare-fun d!577881 () Bool)

(assert (=> d!577881 (= (_1!11489 lt!723410) (matchZipperSequence!22 (_1!11488 lt!723401) input!3724 (+ 1 i!1815)))))

(declare-fun e!1203118 () tuple3!2008)

(assert (=> d!577881 (= lt!723410 e!1203118)))

(declare-fun c!308048 () Bool)

(assert (=> d!577881 (= c!308048 (= (+ 1 i!1815) (size!16681 input!3724)))))

(declare-fun e!1203119 () Bool)

(assert (=> d!577881 e!1203119))

(declare-fun res!841686 () Bool)

(assert (=> d!577881 (=> (not res!841686) (not e!1203119))))

(assert (=> d!577881 (= res!841686 (>= (+ 1 i!1815) 0))))

(assert (=> d!577881 (= (matchZipperSequenceMem!6 (_1!11488 lt!723401) input!3724 (+ 1 i!1815) (_2!11488 lt!723401) (_3!1467 lt!723401)) lt!723410)))

(declare-fun b!1885713 () Bool)

(assert (=> b!1885713 (= e!1203119 (<= (+ 1 i!1815) (size!16681 input!3724)))))

(declare-fun b!1885714 () Bool)

(declare-fun nullableZipper!47 ((InoxSet Context!1990)) Bool)

(assert (=> b!1885714 (= e!1203118 (tuple3!2009 (nullableZipper!47 (_1!11488 lt!723401)) (_2!11488 lt!723401) (_3!1467 lt!723401)))))

(declare-fun b!1885715 () Bool)

(declare-fun lt!723411 () tuple3!2008)

(assert (=> b!1885715 (= e!1203118 (tuple3!2009 (_1!11489 lt!723411) (_2!11489 lt!723411) (_3!1468 lt!723411)))))

(declare-fun lt!723412 () tuple3!2006)

(assert (=> b!1885715 (= lt!723412 (derivationStepZipperMem!11 (_1!11488 lt!723401) (apply!5547 input!3724 (+ 1 i!1815)) (_2!11488 lt!723401) (_3!1467 lt!723401)))))

(assert (=> b!1885715 (= lt!723411 (matchZipperSequenceMem!6 (_1!11488 lt!723412) input!3724 (+ 1 i!1815 1) (_2!11488 lt!723412) (_3!1467 lt!723412)))))

(assert (= (and d!577881 res!841686) b!1885713))

(assert (= (and d!577881 c!308048) b!1885714))

(assert (= (and d!577881 (not c!308048)) b!1885715))

(declare-fun m!2318597 () Bool)

(assert (=> d!577881 m!2318597))

(assert (=> d!577881 m!2318579))

(assert (=> b!1885713 m!2318579))

(declare-fun m!2318599 () Bool)

(assert (=> b!1885714 m!2318599))

(declare-fun m!2318601 () Bool)

(assert (=> b!1885715 m!2318601))

(assert (=> b!1885715 m!2318601))

(declare-fun m!2318603 () Bool)

(assert (=> b!1885715 m!2318603))

(declare-fun m!2318605 () Bool)

(assert (=> b!1885715 m!2318605))

(assert (=> b!1885696 d!577881))

(declare-fun d!577883 () Bool)

(declare-fun c!308051 () Bool)

(assert (=> d!577883 (= c!308051 (= i!1815 (size!16681 input!3724)))))

(declare-fun e!1203122 () Bool)

(assert (=> d!577883 (= (matchZipperSequence!22 z!580 input!3724 i!1815) e!1203122)))

(declare-fun b!1885720 () Bool)

(assert (=> b!1885720 (= e!1203122 (nullableZipper!47 z!580))))

(declare-fun b!1885721 () Bool)

(declare-fun derivationStepZipper!83 ((InoxSet Context!1990) C!10448) (InoxSet Context!1990))

(assert (=> b!1885721 (= e!1203122 (matchZipperSequence!22 (derivationStepZipper!83 z!580 (apply!5547 input!3724 i!1815)) input!3724 (+ i!1815 1)))))

(assert (= (and d!577883 c!308051) b!1885720))

(assert (= (and d!577883 (not c!308051)) b!1885721))

(assert (=> d!577883 m!2318579))

(declare-fun m!2318607 () Bool)

(assert (=> b!1885720 m!2318607))

(assert (=> b!1885721 m!2318575))

(assert (=> b!1885721 m!2318575))

(declare-fun m!2318609 () Bool)

(assert (=> b!1885721 m!2318609))

(assert (=> b!1885721 m!2318609))

(declare-fun m!2318611 () Bool)

(assert (=> b!1885721 m!2318611))

(assert (=> b!1885696 d!577883))

(declare-fun d!577885 () Bool)

(declare-fun e!1203125 () Bool)

(assert (=> d!577885 e!1203125))

(declare-fun res!841691 () Bool)

(assert (=> d!577885 (=> (not res!841691) (not e!1203125))))

(declare-fun lt!723415 () tuple3!2006)

(assert (=> d!577885 (= res!841691 (= (_1!11488 lt!723415) (derivationStepZipper!83 z!580 (apply!5547 input!3724 i!1815))))))

(declare-fun choose!11807 ((InoxSet Context!1990) C!10448 CacheUp!1180 CacheDown!1178) tuple3!2006)

(assert (=> d!577885 (= lt!723415 (choose!11807 z!580 (apply!5547 input!3724 i!1815) cacheUp!766 cacheDown!779))))

(assert (=> d!577885 (= (derivationStepZipperMem!11 z!580 (apply!5547 input!3724 i!1815) cacheUp!766 cacheDown!779) lt!723415)))

(declare-fun b!1885726 () Bool)

(declare-fun res!841692 () Bool)

(assert (=> b!1885726 (=> (not res!841692) (not e!1203125))))

(declare-fun valid!1571 (CacheUp!1180) Bool)

(assert (=> b!1885726 (= res!841692 (valid!1571 (_2!11488 lt!723415)))))

(declare-fun b!1885727 () Bool)

(declare-fun valid!1572 (CacheDown!1178) Bool)

(assert (=> b!1885727 (= e!1203125 (valid!1572 (_3!1467 lt!723415)))))

(assert (= (and d!577885 res!841691) b!1885726))

(assert (= (and b!1885726 res!841692) b!1885727))

(assert (=> d!577885 m!2318575))

(assert (=> d!577885 m!2318609))

(assert (=> d!577885 m!2318575))

(declare-fun m!2318613 () Bool)

(assert (=> d!577885 m!2318613))

(declare-fun m!2318615 () Bool)

(assert (=> b!1885726 m!2318615))

(declare-fun m!2318617 () Bool)

(assert (=> b!1885727 m!2318617))

(assert (=> b!1885696 d!577885))

(declare-fun d!577887 () Bool)

(declare-fun lt!723418 () C!10448)

(declare-fun apply!5548 (List!21072 Int) C!10448)

(declare-fun list!8565 (BalanceConc!13774) List!21072)

(assert (=> d!577887 (= lt!723418 (apply!5548 (list!8565 input!3724) i!1815))))

(declare-fun apply!5549 (Conc!6979 Int) C!10448)

(assert (=> d!577887 (= lt!723418 (apply!5549 (c!308041 input!3724) i!1815))))

(declare-fun e!1203128 () Bool)

(assert (=> d!577887 e!1203128))

(declare-fun res!841695 () Bool)

(assert (=> d!577887 (=> (not res!841695) (not e!1203128))))

(assert (=> d!577887 (= res!841695 (<= 0 i!1815))))

(assert (=> d!577887 (= (apply!5547 input!3724 i!1815) lt!723418)))

(declare-fun b!1885730 () Bool)

(assert (=> b!1885730 (= e!1203128 (< i!1815 (size!16681 input!3724)))))

(assert (= (and d!577887 res!841695) b!1885730))

(declare-fun m!2318619 () Bool)

(assert (=> d!577887 m!2318619))

(assert (=> d!577887 m!2318619))

(declare-fun m!2318621 () Bool)

(assert (=> d!577887 m!2318621))

(declare-fun m!2318623 () Bool)

(assert (=> d!577887 m!2318623))

(assert (=> b!1885730 m!2318579))

(assert (=> b!1885696 d!577887))

(declare-fun d!577889 () Bool)

(assert (=> d!577889 (= (array_inv!2161 (_keys!2265 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))) (bvsge (size!16678 (_keys!2265 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))) #b00000000000000000000000000000000))))

(assert (=> b!1885687 d!577889))

(declare-fun d!577891 () Bool)

(assert (=> d!577891 (= (array_inv!2162 (_values!2248 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))) (bvsge (size!16679 (_values!2248 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779))))))) #b00000000000000000000000000000000))))

(assert (=> b!1885687 d!577891))

(declare-fun d!577893 () Bool)

(declare-fun lt!723421 () Int)

(declare-fun size!16682 (List!21072) Int)

(assert (=> d!577893 (= lt!723421 (size!16682 (list!8565 input!3724)))))

(declare-fun size!16683 (Conc!6979) Int)

(assert (=> d!577893 (= lt!723421 (size!16683 (c!308041 input!3724)))))

(assert (=> d!577893 (= (size!16681 input!3724) lt!723421)))

(declare-fun bs!412930 () Bool)

(assert (= bs!412930 d!577893))

(assert (=> bs!412930 m!2318619))

(assert (=> bs!412930 m!2318619))

(declare-fun m!2318625 () Bool)

(assert (=> bs!412930 m!2318625))

(declare-fun m!2318627 () Bool)

(assert (=> bs!412930 m!2318627))

(assert (=> b!1885689 d!577893))

(declare-fun d!577895 () Bool)

(declare-fun res!841698 () Bool)

(declare-fun e!1203131 () Bool)

(assert (=> d!577895 (=> (not res!841698) (not e!1203131))))

(assert (=> d!577895 (= res!841698 ((_ is HashMap!1883) (cache!2264 cacheUp!766)))))

(assert (=> d!577895 (= (inv!27976 cacheUp!766) e!1203131)))

(declare-fun b!1885733 () Bool)

(declare-fun validCacheMapUp!183 (MutableMap!1883) Bool)

(assert (=> b!1885733 (= e!1203131 (validCacheMapUp!183 (cache!2264 cacheUp!766)))))

(assert (= (and d!577895 res!841698) b!1885733))

(declare-fun m!2318629 () Bool)

(assert (=> b!1885733 m!2318629))

(assert (=> start!188796 d!577895))

(declare-fun d!577897 () Bool)

(declare-fun res!841701 () Bool)

(declare-fun e!1203134 () Bool)

(assert (=> d!577897 (=> (not res!841701) (not e!1203134))))

(assert (=> d!577897 (= res!841701 ((_ is HashMap!1882) (cache!2263 cacheDown!779)))))

(assert (=> d!577897 (= (inv!27977 cacheDown!779) e!1203134)))

(declare-fun b!1885736 () Bool)

(declare-fun validCacheMapDown!181 (MutableMap!1882) Bool)

(assert (=> b!1885736 (= e!1203134 (validCacheMapDown!181 (cache!2263 cacheDown!779)))))

(assert (= (and d!577897 res!841701) b!1885736))

(declare-fun m!2318631 () Bool)

(assert (=> b!1885736 m!2318631))

(assert (=> start!188796 d!577897))

(declare-fun d!577899 () Bool)

(declare-fun isBalanced!2210 (Conc!6979) Bool)

(assert (=> d!577899 (= (inv!27978 input!3724) (isBalanced!2210 (c!308041 input!3724)))))

(declare-fun bs!412931 () Bool)

(assert (= bs!412931 d!577899))

(declare-fun m!2318633 () Bool)

(assert (=> bs!412931 m!2318633))

(assert (=> start!188796 d!577899))

(declare-fun d!577901 () Bool)

(declare-fun lambda!73871 () Int)

(declare-fun forall!4427 (List!21073 Int) Bool)

(assert (=> d!577901 (= (inv!27975 setElem!11704) (forall!4427 (exprs!1495 setElem!11704) lambda!73871))))

(declare-fun bs!412932 () Bool)

(assert (= bs!412932 d!577901))

(declare-fun m!2318635 () Bool)

(assert (=> bs!412932 m!2318635))

(assert (=> setNonEmpty!11704 d!577901))

(declare-fun d!577903 () Bool)

(assert (=> d!577903 (= (array_inv!2161 (_keys!2266 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))) (bvsge (size!16678 (_keys!2266 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))) #b00000000000000000000000000000000))))

(assert (=> b!1885697 d!577903))

(declare-fun d!577905 () Bool)

(assert (=> d!577905 (= (array_inv!2163 (_values!2249 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))) (bvsge (size!16680 (_values!2249 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766))))))) #b00000000000000000000000000000000))))

(assert (=> b!1885697 d!577905))

(declare-fun setIsEmpty!11709 () Bool)

(declare-fun setRes!11710 () Bool)

(assert (=> setIsEmpty!11709 setRes!11710))

(declare-fun b!1885751 () Bool)

(declare-fun e!1203147 () Bool)

(declare-fun tp!537518 () Bool)

(assert (=> b!1885751 (= e!1203147 tp!537518)))

(declare-fun b!1885752 () Bool)

(declare-fun e!1203151 () Bool)

(declare-fun tp!537515 () Bool)

(assert (=> b!1885752 (= e!1203151 tp!537515)))

(declare-fun setElem!11710 () Context!1990)

(declare-fun setRes!11709 () Bool)

(declare-fun setNonEmpty!11709 () Bool)

(declare-fun tp!537521 () Bool)

(assert (=> setNonEmpty!11709 (= setRes!11709 (and tp!537521 (inv!27975 setElem!11710) e!1203147))))

(declare-fun mapValue!9110 () List!21075)

(declare-fun setRest!11709 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11709 (= (_2!11487 (h!26394 mapValue!9110)) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11710 true) setRest!11709))))

(declare-fun setIsEmpty!11710 () Bool)

(assert (=> setIsEmpty!11710 setRes!11709))

(declare-fun tp!537522 () Bool)

(declare-fun setNonEmpty!11710 () Bool)

(declare-fun setElem!11709 () Context!1990)

(assert (=> setNonEmpty!11710 (= setRes!11710 (and tp!537522 (inv!27975 setElem!11709) e!1203151))))

(declare-fun mapDefault!9110 () List!21075)

(declare-fun setRest!11710 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11710 (= (_2!11487 (h!26394 mapDefault!9110)) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11709 true) setRest!11710))))

(declare-fun b!1885753 () Bool)

(declare-fun tp!537520 () Bool)

(declare-fun tp_is_empty!8909 () Bool)

(declare-fun e!1203152 () Bool)

(declare-fun e!1203148 () Bool)

(assert (=> b!1885753 (= e!1203148 (and (inv!27975 (_1!11486 (_1!11487 (h!26394 mapDefault!9110)))) e!1203152 tp_is_empty!8909 setRes!11710 tp!537520))))

(declare-fun condSetEmpty!11709 () Bool)

(assert (=> b!1885753 (= condSetEmpty!11709 (= (_2!11487 (h!26394 mapDefault!9110)) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun condMapEmpty!9110 () Bool)

(assert (=> mapNonEmpty!9107 (= condMapEmpty!9110 (= mapRest!9107 ((as const (Array (_ BitVec 32) List!21075)) mapDefault!9110)))))

(declare-fun mapRes!9110 () Bool)

(assert (=> mapNonEmpty!9107 (= tp!537493 (and e!1203148 mapRes!9110))))

(declare-fun e!1203149 () Bool)

(declare-fun b!1885754 () Bool)

(declare-fun tp!537517 () Bool)

(declare-fun e!1203150 () Bool)

(assert (=> b!1885754 (= e!1203149 (and (inv!27975 (_1!11486 (_1!11487 (h!26394 mapValue!9110)))) e!1203150 tp_is_empty!8909 setRes!11709 tp!537517))))

(declare-fun condSetEmpty!11710 () Bool)

(assert (=> b!1885754 (= condSetEmpty!11710 (= (_2!11487 (h!26394 mapValue!9110)) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun mapIsEmpty!9110 () Bool)

(assert (=> mapIsEmpty!9110 mapRes!9110))

(declare-fun b!1885755 () Bool)

(declare-fun tp!537514 () Bool)

(assert (=> b!1885755 (= e!1203150 tp!537514)))

(declare-fun mapNonEmpty!9110 () Bool)

(declare-fun tp!537519 () Bool)

(assert (=> mapNonEmpty!9110 (= mapRes!9110 (and tp!537519 e!1203149))))

(declare-fun mapRest!9110 () (Array (_ BitVec 32) List!21075))

(declare-fun mapKey!9110 () (_ BitVec 32))

(assert (=> mapNonEmpty!9110 (= mapRest!9107 (store mapRest!9110 mapKey!9110 mapValue!9110))))

(declare-fun b!1885756 () Bool)

(declare-fun tp!537516 () Bool)

(assert (=> b!1885756 (= e!1203152 tp!537516)))

(assert (= (and mapNonEmpty!9107 condMapEmpty!9110) mapIsEmpty!9110))

(assert (= (and mapNonEmpty!9107 (not condMapEmpty!9110)) mapNonEmpty!9110))

(assert (= b!1885754 b!1885755))

(assert (= (and b!1885754 condSetEmpty!11710) setIsEmpty!11710))

(assert (= (and b!1885754 (not condSetEmpty!11710)) setNonEmpty!11709))

(assert (= setNonEmpty!11709 b!1885751))

(assert (= (and mapNonEmpty!9110 ((_ is Cons!20993) mapValue!9110)) b!1885754))

(assert (= b!1885753 b!1885756))

(assert (= (and b!1885753 condSetEmpty!11709) setIsEmpty!11709))

(assert (= (and b!1885753 (not condSetEmpty!11709)) setNonEmpty!11710))

(assert (= setNonEmpty!11710 b!1885752))

(assert (= (and mapNonEmpty!9107 ((_ is Cons!20993) mapDefault!9110)) b!1885753))

(declare-fun m!2318637 () Bool)

(assert (=> b!1885754 m!2318637))

(declare-fun m!2318639 () Bool)

(assert (=> mapNonEmpty!9110 m!2318639))

(declare-fun m!2318641 () Bool)

(assert (=> setNonEmpty!11709 m!2318641))

(declare-fun m!2318643 () Bool)

(assert (=> b!1885753 m!2318643))

(declare-fun m!2318645 () Bool)

(assert (=> setNonEmpty!11710 m!2318645))

(declare-fun e!1203161 () Bool)

(assert (=> mapNonEmpty!9107 (= tp!537484 e!1203161)))

(declare-fun setIsEmpty!11713 () Bool)

(declare-fun setRes!11713 () Bool)

(assert (=> setIsEmpty!11713 setRes!11713))

(declare-fun setNonEmpty!11713 () Bool)

(declare-fun tp!537533 () Bool)

(declare-fun setElem!11713 () Context!1990)

(declare-fun e!1203160 () Bool)

(assert (=> setNonEmpty!11713 (= setRes!11713 (and tp!537533 (inv!27975 setElem!11713) e!1203160))))

(declare-fun setRest!11713 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11713 (= (_2!11487 (h!26394 mapValue!9107)) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11713 true) setRest!11713))))

(declare-fun tp!537532 () Bool)

(declare-fun e!1203159 () Bool)

(declare-fun b!1885765 () Bool)

(assert (=> b!1885765 (= e!1203161 (and (inv!27975 (_1!11486 (_1!11487 (h!26394 mapValue!9107)))) e!1203159 tp_is_empty!8909 setRes!11713 tp!537532))))

(declare-fun condSetEmpty!11713 () Bool)

(assert (=> b!1885765 (= condSetEmpty!11713 (= (_2!11487 (h!26394 mapValue!9107)) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun b!1885766 () Bool)

(declare-fun tp!537534 () Bool)

(assert (=> b!1885766 (= e!1203160 tp!537534)))

(declare-fun b!1885767 () Bool)

(declare-fun tp!537531 () Bool)

(assert (=> b!1885767 (= e!1203159 tp!537531)))

(assert (= b!1885765 b!1885767))

(assert (= (and b!1885765 condSetEmpty!11713) setIsEmpty!11713))

(assert (= (and b!1885765 (not condSetEmpty!11713)) setNonEmpty!11713))

(assert (= setNonEmpty!11713 b!1885766))

(assert (= (and mapNonEmpty!9107 ((_ is Cons!20993) mapValue!9107)) b!1885765))

(declare-fun m!2318647 () Bool)

(assert (=> setNonEmpty!11713 m!2318647))

(declare-fun m!2318649 () Bool)

(assert (=> b!1885765 m!2318649))

(declare-fun tp!537543 () Bool)

(declare-fun b!1885776 () Bool)

(declare-fun tp!537542 () Bool)

(declare-fun e!1203167 () Bool)

(assert (=> b!1885776 (= e!1203167 (and (inv!27974 (left!16863 (c!308041 input!3724))) tp!537543 (inv!27974 (right!17193 (c!308041 input!3724))) tp!537542))))

(declare-fun b!1885778 () Bool)

(declare-fun e!1203166 () Bool)

(declare-fun tp!537541 () Bool)

(assert (=> b!1885778 (= e!1203166 tp!537541)))

(declare-fun b!1885777 () Bool)

(declare-fun inv!27981 (IArray!13963) Bool)

(assert (=> b!1885777 (= e!1203167 (and (inv!27981 (xs!9869 (c!308041 input!3724))) e!1203166))))

(assert (=> b!1885680 (= tp!537482 (and (inv!27974 (c!308041 input!3724)) e!1203167))))

(assert (= (and b!1885680 ((_ is Node!6979) (c!308041 input!3724))) b!1885776))

(assert (= b!1885777 b!1885778))

(assert (= (and b!1885680 ((_ is Leaf!10268) (c!308041 input!3724))) b!1885777))

(declare-fun m!2318651 () Bool)

(assert (=> b!1885776 m!2318651))

(declare-fun m!2318653 () Bool)

(assert (=> b!1885776 m!2318653))

(declare-fun m!2318655 () Bool)

(assert (=> b!1885777 m!2318655))

(assert (=> b!1885680 m!2318581))

(declare-fun mapIsEmpty!9113 () Bool)

(declare-fun mapRes!9113 () Bool)

(assert (=> mapIsEmpty!9113 mapRes!9113))

(declare-fun b!1885793 () Bool)

(declare-fun e!1203184 () Bool)

(declare-fun tp!537571 () Bool)

(assert (=> b!1885793 (= e!1203184 tp!537571)))

(declare-fun b!1885794 () Bool)

(declare-fun e!1203185 () Bool)

(declare-fun tp!537575 () Bool)

(assert (=> b!1885794 (= e!1203185 tp!537575)))

(declare-fun mapDefault!9113 () List!21074)

(declare-fun b!1885795 () Bool)

(declare-fun e!1203182 () Bool)

(declare-fun tp!537576 () Bool)

(declare-fun setRes!11719 () Bool)

(declare-fun tp!537574 () Bool)

(assert (=> b!1885795 (= e!1203182 (and tp!537574 (inv!27975 (_2!11484 (_1!11485 (h!26393 mapDefault!9113)))) e!1203185 tp_is_empty!8909 setRes!11719 tp!537576))))

(declare-fun condSetEmpty!11718 () Bool)

(assert (=> b!1885795 (= condSetEmpty!11718 (= (_2!11485 (h!26393 mapDefault!9113)) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun setNonEmpty!11718 () Bool)

(declare-fun e!1203180 () Bool)

(declare-fun setElem!11719 () Context!1990)

(declare-fun tp!537573 () Bool)

(assert (=> setNonEmpty!11718 (= setRes!11719 (and tp!537573 (inv!27975 setElem!11719) e!1203180))))

(declare-fun setRest!11719 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11718 (= (_2!11485 (h!26393 mapDefault!9113)) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11719 true) setRest!11719))))

(declare-fun b!1885796 () Bool)

(declare-fun e!1203181 () Bool)

(declare-fun tp!537572 () Bool)

(assert (=> b!1885796 (= e!1203181 tp!537572)))

(declare-fun condMapEmpty!9113 () Bool)

(assert (=> mapNonEmpty!9106 (= condMapEmpty!9113 (= mapRest!9106 ((as const (Array (_ BitVec 32) List!21074)) mapDefault!9113)))))

(assert (=> mapNonEmpty!9106 (= tp!537479 (and e!1203182 mapRes!9113))))

(declare-fun setNonEmpty!11719 () Bool)

(declare-fun setElem!11718 () Context!1990)

(declare-fun setRes!11718 () Bool)

(declare-fun tp!537570 () Bool)

(assert (=> setNonEmpty!11719 (= setRes!11718 (and tp!537570 (inv!27975 setElem!11718) e!1203184))))

(declare-fun mapValue!9113 () List!21074)

(declare-fun setRest!11718 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11719 (= (_2!11485 (h!26393 mapValue!9113)) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11718 true) setRest!11718))))

(declare-fun e!1203183 () Bool)

(declare-fun tp!537567 () Bool)

(declare-fun b!1885797 () Bool)

(declare-fun tp!537568 () Bool)

(assert (=> b!1885797 (= e!1203183 (and tp!537567 (inv!27975 (_2!11484 (_1!11485 (h!26393 mapValue!9113)))) e!1203181 tp_is_empty!8909 setRes!11718 tp!537568))))

(declare-fun condSetEmpty!11719 () Bool)

(assert (=> b!1885797 (= condSetEmpty!11719 (= (_2!11485 (h!26393 mapValue!9113)) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun mapNonEmpty!9113 () Bool)

(declare-fun tp!537566 () Bool)

(assert (=> mapNonEmpty!9113 (= mapRes!9113 (and tp!537566 e!1203183))))

(declare-fun mapKey!9113 () (_ BitVec 32))

(declare-fun mapRest!9113 () (Array (_ BitVec 32) List!21074))

(assert (=> mapNonEmpty!9113 (= mapRest!9106 (store mapRest!9113 mapKey!9113 mapValue!9113))))

(declare-fun setIsEmpty!11718 () Bool)

(assert (=> setIsEmpty!11718 setRes!11718))

(declare-fun setIsEmpty!11719 () Bool)

(assert (=> setIsEmpty!11719 setRes!11719))

(declare-fun b!1885798 () Bool)

(declare-fun tp!537569 () Bool)

(assert (=> b!1885798 (= e!1203180 tp!537569)))

(assert (= (and mapNonEmpty!9106 condMapEmpty!9113) mapIsEmpty!9113))

(assert (= (and mapNonEmpty!9106 (not condMapEmpty!9113)) mapNonEmpty!9113))

(assert (= b!1885797 b!1885796))

(assert (= (and b!1885797 condSetEmpty!11719) setIsEmpty!11718))

(assert (= (and b!1885797 (not condSetEmpty!11719)) setNonEmpty!11719))

(assert (= setNonEmpty!11719 b!1885793))

(assert (= (and mapNonEmpty!9113 ((_ is Cons!20992) mapValue!9113)) b!1885797))

(assert (= b!1885795 b!1885794))

(assert (= (and b!1885795 condSetEmpty!11718) setIsEmpty!11719))

(assert (= (and b!1885795 (not condSetEmpty!11718)) setNonEmpty!11718))

(assert (= setNonEmpty!11718 b!1885798))

(assert (= (and mapNonEmpty!9106 ((_ is Cons!20992) mapDefault!9113)) b!1885795))

(declare-fun m!2318657 () Bool)

(assert (=> b!1885795 m!2318657))

(declare-fun m!2318659 () Bool)

(assert (=> b!1885797 m!2318659))

(declare-fun m!2318661 () Bool)

(assert (=> mapNonEmpty!9113 m!2318661))

(declare-fun m!2318663 () Bool)

(assert (=> setNonEmpty!11718 m!2318663))

(declare-fun m!2318665 () Bool)

(assert (=> setNonEmpty!11719 m!2318665))

(declare-fun setIsEmpty!11722 () Bool)

(declare-fun setRes!11722 () Bool)

(assert (=> setIsEmpty!11722 setRes!11722))

(declare-fun b!1885807 () Bool)

(declare-fun e!1203194 () Bool)

(declare-fun tp!537589 () Bool)

(assert (=> b!1885807 (= e!1203194 tp!537589)))

(declare-fun e!1203193 () Bool)

(declare-fun e!1203192 () Bool)

(declare-fun tp!537590 () Bool)

(declare-fun tp!537588 () Bool)

(declare-fun b!1885808 () Bool)

(assert (=> b!1885808 (= e!1203193 (and tp!537588 (inv!27975 (_2!11484 (_1!11485 (h!26393 mapValue!9106)))) e!1203192 tp_is_empty!8909 setRes!11722 tp!537590))))

(declare-fun condSetEmpty!11722 () Bool)

(assert (=> b!1885808 (= condSetEmpty!11722 (= (_2!11485 (h!26393 mapValue!9106)) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun setNonEmpty!11722 () Bool)

(declare-fun setElem!11722 () Context!1990)

(declare-fun tp!537591 () Bool)

(assert (=> setNonEmpty!11722 (= setRes!11722 (and tp!537591 (inv!27975 setElem!11722) e!1203194))))

(declare-fun setRest!11722 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11722 (= (_2!11485 (h!26393 mapValue!9106)) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11722 true) setRest!11722))))

(declare-fun b!1885809 () Bool)

(declare-fun tp!537587 () Bool)

(assert (=> b!1885809 (= e!1203192 tp!537587)))

(assert (=> mapNonEmpty!9106 (= tp!537488 e!1203193)))

(assert (= b!1885808 b!1885809))

(assert (= (and b!1885808 condSetEmpty!11722) setIsEmpty!11722))

(assert (= (and b!1885808 (not condSetEmpty!11722)) setNonEmpty!11722))

(assert (= setNonEmpty!11722 b!1885807))

(assert (= (and mapNonEmpty!9106 ((_ is Cons!20992) mapValue!9106)) b!1885808))

(declare-fun m!2318667 () Bool)

(assert (=> b!1885808 m!2318667))

(declare-fun m!2318669 () Bool)

(assert (=> setNonEmpty!11722 m!2318669))

(declare-fun setIsEmpty!11723 () Bool)

(declare-fun setRes!11723 () Bool)

(assert (=> setIsEmpty!11723 setRes!11723))

(declare-fun b!1885810 () Bool)

(declare-fun e!1203197 () Bool)

(declare-fun tp!537594 () Bool)

(assert (=> b!1885810 (= e!1203197 tp!537594)))

(declare-fun tp!537593 () Bool)

(declare-fun e!1203196 () Bool)

(declare-fun e!1203195 () Bool)

(declare-fun b!1885811 () Bool)

(declare-fun tp!537595 () Bool)

(assert (=> b!1885811 (= e!1203196 (and tp!537593 (inv!27975 (_2!11484 (_1!11485 (h!26393 (zeroValue!2226 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779)))))))))) e!1203195 tp_is_empty!8909 setRes!11723 tp!537595))))

(declare-fun condSetEmpty!11723 () Bool)

(assert (=> b!1885811 (= condSetEmpty!11723 (= (_2!11485 (h!26393 (zeroValue!2226 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779)))))))) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun setElem!11723 () Context!1990)

(declare-fun tp!537596 () Bool)

(declare-fun setNonEmpty!11723 () Bool)

(assert (=> setNonEmpty!11723 (= setRes!11723 (and tp!537596 (inv!27975 setElem!11723) e!1203197))))

(declare-fun setRest!11723 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11723 (= (_2!11485 (h!26393 (zeroValue!2226 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779)))))))) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11723 true) setRest!11723))))

(declare-fun b!1885812 () Bool)

(declare-fun tp!537592 () Bool)

(assert (=> b!1885812 (= e!1203195 tp!537592)))

(assert (=> b!1885687 (= tp!537487 e!1203196)))

(assert (= b!1885811 b!1885812))

(assert (= (and b!1885811 condSetEmpty!11723) setIsEmpty!11723))

(assert (= (and b!1885811 (not condSetEmpty!11723)) setNonEmpty!11723))

(assert (= setNonEmpty!11723 b!1885810))

(assert (= (and b!1885687 ((_ is Cons!20992) (zeroValue!2226 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779)))))))) b!1885811))

(declare-fun m!2318671 () Bool)

(assert (=> b!1885811 m!2318671))

(declare-fun m!2318673 () Bool)

(assert (=> setNonEmpty!11723 m!2318673))

(declare-fun setIsEmpty!11724 () Bool)

(declare-fun setRes!11724 () Bool)

(assert (=> setIsEmpty!11724 setRes!11724))

(declare-fun b!1885813 () Bool)

(declare-fun e!1203200 () Bool)

(declare-fun tp!537599 () Bool)

(assert (=> b!1885813 (= e!1203200 tp!537599)))

(declare-fun tp!537600 () Bool)

(declare-fun b!1885814 () Bool)

(declare-fun e!1203199 () Bool)

(declare-fun e!1203198 () Bool)

(declare-fun tp!537598 () Bool)

(assert (=> b!1885814 (= e!1203199 (and tp!537598 (inv!27975 (_2!11484 (_1!11485 (h!26393 (minValue!2226 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779)))))))))) e!1203198 tp_is_empty!8909 setRes!11724 tp!537600))))

(declare-fun condSetEmpty!11724 () Bool)

(assert (=> b!1885814 (= condSetEmpty!11724 (= (_2!11485 (h!26393 (minValue!2226 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779)))))))) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun setNonEmpty!11724 () Bool)

(declare-fun tp!537601 () Bool)

(declare-fun setElem!11724 () Context!1990)

(assert (=> setNonEmpty!11724 (= setRes!11724 (and tp!537601 (inv!27975 setElem!11724) e!1203200))))

(declare-fun setRest!11724 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11724 (= (_2!11485 (h!26393 (minValue!2226 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779)))))))) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11724 true) setRest!11724))))

(declare-fun b!1885815 () Bool)

(declare-fun tp!537597 () Bool)

(assert (=> b!1885815 (= e!1203198 tp!537597)))

(assert (=> b!1885687 (= tp!537486 e!1203199)))

(assert (= b!1885814 b!1885815))

(assert (= (and b!1885814 condSetEmpty!11724) setIsEmpty!11724))

(assert (= (and b!1885814 (not condSetEmpty!11724)) setNonEmpty!11724))

(assert (= setNonEmpty!11724 b!1885813))

(assert (= (and b!1885687 ((_ is Cons!20992) (minValue!2226 (v!26253 (underlying!4129 (v!26254 (underlying!4130 (cache!2263 cacheDown!779)))))))) b!1885814))

(declare-fun m!2318675 () Bool)

(assert (=> b!1885814 m!2318675))

(declare-fun m!2318677 () Bool)

(assert (=> setNonEmpty!11724 m!2318677))

(declare-fun b!1885820 () Bool)

(declare-fun e!1203203 () Bool)

(declare-fun tp!537606 () Bool)

(declare-fun tp!537607 () Bool)

(assert (=> b!1885820 (= e!1203203 (and tp!537606 tp!537607))))

(assert (=> b!1885685 (= tp!537483 e!1203203)))

(assert (= (and b!1885685 ((_ is Cons!20991) (exprs!1495 setElem!11704))) b!1885820))

(declare-fun setIsEmpty!11725 () Bool)

(declare-fun setRes!11725 () Bool)

(assert (=> setIsEmpty!11725 setRes!11725))

(declare-fun b!1885821 () Bool)

(declare-fun e!1203206 () Bool)

(declare-fun tp!537610 () Bool)

(assert (=> b!1885821 (= e!1203206 tp!537610)))

(declare-fun e!1203205 () Bool)

(declare-fun b!1885822 () Bool)

(declare-fun tp!537611 () Bool)

(declare-fun tp!537609 () Bool)

(declare-fun e!1203204 () Bool)

(assert (=> b!1885822 (= e!1203205 (and tp!537609 (inv!27975 (_2!11484 (_1!11485 (h!26393 mapDefault!9106)))) e!1203204 tp_is_empty!8909 setRes!11725 tp!537611))))

(declare-fun condSetEmpty!11725 () Bool)

(assert (=> b!1885822 (= condSetEmpty!11725 (= (_2!11485 (h!26393 mapDefault!9106)) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun tp!537612 () Bool)

(declare-fun setNonEmpty!11725 () Bool)

(declare-fun setElem!11725 () Context!1990)

(assert (=> setNonEmpty!11725 (= setRes!11725 (and tp!537612 (inv!27975 setElem!11725) e!1203206))))

(declare-fun setRest!11725 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11725 (= (_2!11485 (h!26393 mapDefault!9106)) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11725 true) setRest!11725))))

(declare-fun b!1885823 () Bool)

(declare-fun tp!537608 () Bool)

(assert (=> b!1885823 (= e!1203204 tp!537608)))

(assert (=> b!1885690 (= tp!537480 e!1203205)))

(assert (= b!1885822 b!1885823))

(assert (= (and b!1885822 condSetEmpty!11725) setIsEmpty!11725))

(assert (= (and b!1885822 (not condSetEmpty!11725)) setNonEmpty!11725))

(assert (= setNonEmpty!11725 b!1885821))

(assert (= (and b!1885690 ((_ is Cons!20992) mapDefault!9106)) b!1885822))

(declare-fun m!2318679 () Bool)

(assert (=> b!1885822 m!2318679))

(declare-fun m!2318681 () Bool)

(assert (=> setNonEmpty!11725 m!2318681))

(declare-fun condSetEmpty!11728 () Bool)

(assert (=> setNonEmpty!11704 (= condSetEmpty!11728 (= setRest!11704 ((as const (Array Context!1990 Bool)) false)))))

(declare-fun setRes!11728 () Bool)

(assert (=> setNonEmpty!11704 (= tp!537495 setRes!11728)))

(declare-fun setIsEmpty!11728 () Bool)

(assert (=> setIsEmpty!11728 setRes!11728))

(declare-fun setElem!11728 () Context!1990)

(declare-fun e!1203209 () Bool)

(declare-fun setNonEmpty!11728 () Bool)

(declare-fun tp!537618 () Bool)

(assert (=> setNonEmpty!11728 (= setRes!11728 (and tp!537618 (inv!27975 setElem!11728) e!1203209))))

(declare-fun setRest!11728 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11728 (= setRest!11704 ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11728 true) setRest!11728))))

(declare-fun b!1885828 () Bool)

(declare-fun tp!537617 () Bool)

(assert (=> b!1885828 (= e!1203209 tp!537617)))

(assert (= (and setNonEmpty!11704 condSetEmpty!11728) setIsEmpty!11728))

(assert (= (and setNonEmpty!11704 (not condSetEmpty!11728)) setNonEmpty!11728))

(assert (= setNonEmpty!11728 b!1885828))

(declare-fun m!2318683 () Bool)

(assert (=> setNonEmpty!11728 m!2318683))

(declare-fun e!1203212 () Bool)

(assert (=> b!1885684 (= tp!537485 e!1203212)))

(declare-fun setIsEmpty!11729 () Bool)

(declare-fun setRes!11729 () Bool)

(assert (=> setIsEmpty!11729 setRes!11729))

(declare-fun setElem!11729 () Context!1990)

(declare-fun tp!537621 () Bool)

(declare-fun e!1203211 () Bool)

(declare-fun setNonEmpty!11729 () Bool)

(assert (=> setNonEmpty!11729 (= setRes!11729 (and tp!537621 (inv!27975 setElem!11729) e!1203211))))

(declare-fun setRest!11729 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11729 (= (_2!11487 (h!26394 mapDefault!9107)) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11729 true) setRest!11729))))

(declare-fun tp!537620 () Bool)

(declare-fun e!1203210 () Bool)

(declare-fun b!1885829 () Bool)

(assert (=> b!1885829 (= e!1203212 (and (inv!27975 (_1!11486 (_1!11487 (h!26394 mapDefault!9107)))) e!1203210 tp_is_empty!8909 setRes!11729 tp!537620))))

(declare-fun condSetEmpty!11729 () Bool)

(assert (=> b!1885829 (= condSetEmpty!11729 (= (_2!11487 (h!26394 mapDefault!9107)) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun b!1885830 () Bool)

(declare-fun tp!537622 () Bool)

(assert (=> b!1885830 (= e!1203211 tp!537622)))

(declare-fun b!1885831 () Bool)

(declare-fun tp!537619 () Bool)

(assert (=> b!1885831 (= e!1203210 tp!537619)))

(assert (= b!1885829 b!1885831))

(assert (= (and b!1885829 condSetEmpty!11729) setIsEmpty!11729))

(assert (= (and b!1885829 (not condSetEmpty!11729)) setNonEmpty!11729))

(assert (= setNonEmpty!11729 b!1885830))

(assert (= (and b!1885684 ((_ is Cons!20993) mapDefault!9107)) b!1885829))

(declare-fun m!2318685 () Bool)

(assert (=> setNonEmpty!11729 m!2318685))

(declare-fun m!2318687 () Bool)

(assert (=> b!1885829 m!2318687))

(declare-fun e!1203215 () Bool)

(assert (=> b!1885697 (= tp!537481 e!1203215)))

(declare-fun setIsEmpty!11730 () Bool)

(declare-fun setRes!11730 () Bool)

(assert (=> setIsEmpty!11730 setRes!11730))

(declare-fun setNonEmpty!11730 () Bool)

(declare-fun e!1203214 () Bool)

(declare-fun setElem!11730 () Context!1990)

(declare-fun tp!537625 () Bool)

(assert (=> setNonEmpty!11730 (= setRes!11730 (and tp!537625 (inv!27975 setElem!11730) e!1203214))))

(declare-fun setRest!11730 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11730 (= (_2!11487 (h!26394 (zeroValue!2227 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766)))))))) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11730 true) setRest!11730))))

(declare-fun b!1885832 () Bool)

(declare-fun tp!537624 () Bool)

(declare-fun e!1203213 () Bool)

(assert (=> b!1885832 (= e!1203215 (and (inv!27975 (_1!11486 (_1!11487 (h!26394 (zeroValue!2227 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766)))))))))) e!1203213 tp_is_empty!8909 setRes!11730 tp!537624))))

(declare-fun condSetEmpty!11730 () Bool)

(assert (=> b!1885832 (= condSetEmpty!11730 (= (_2!11487 (h!26394 (zeroValue!2227 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766)))))))) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun b!1885833 () Bool)

(declare-fun tp!537626 () Bool)

(assert (=> b!1885833 (= e!1203214 tp!537626)))

(declare-fun b!1885834 () Bool)

(declare-fun tp!537623 () Bool)

(assert (=> b!1885834 (= e!1203213 tp!537623)))

(assert (= b!1885832 b!1885834))

(assert (= (and b!1885832 condSetEmpty!11730) setIsEmpty!11730))

(assert (= (and b!1885832 (not condSetEmpty!11730)) setNonEmpty!11730))

(assert (= setNonEmpty!11730 b!1885833))

(assert (= (and b!1885697 ((_ is Cons!20993) (zeroValue!2227 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766)))))))) b!1885832))

(declare-fun m!2318689 () Bool)

(assert (=> setNonEmpty!11730 m!2318689))

(declare-fun m!2318691 () Bool)

(assert (=> b!1885832 m!2318691))

(declare-fun e!1203218 () Bool)

(assert (=> b!1885697 (= tp!537490 e!1203218)))

(declare-fun setIsEmpty!11731 () Bool)

(declare-fun setRes!11731 () Bool)

(assert (=> setIsEmpty!11731 setRes!11731))

(declare-fun setNonEmpty!11731 () Bool)

(declare-fun e!1203217 () Bool)

(declare-fun tp!537629 () Bool)

(declare-fun setElem!11731 () Context!1990)

(assert (=> setNonEmpty!11731 (= setRes!11731 (and tp!537629 (inv!27975 setElem!11731) e!1203217))))

(declare-fun setRest!11731 () (InoxSet Context!1990))

(assert (=> setNonEmpty!11731 (= (_2!11487 (h!26394 (minValue!2227 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766)))))))) ((_ map or) (store ((as const (Array Context!1990 Bool)) false) setElem!11731 true) setRest!11731))))

(declare-fun b!1885835 () Bool)

(declare-fun tp!537628 () Bool)

(declare-fun e!1203216 () Bool)

(assert (=> b!1885835 (= e!1203218 (and (inv!27975 (_1!11486 (_1!11487 (h!26394 (minValue!2227 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766)))))))))) e!1203216 tp_is_empty!8909 setRes!11731 tp!537628))))

(declare-fun condSetEmpty!11731 () Bool)

(assert (=> b!1885835 (= condSetEmpty!11731 (= (_2!11487 (h!26394 (minValue!2227 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766)))))))) ((as const (Array Context!1990 Bool)) false)))))

(declare-fun b!1885836 () Bool)

(declare-fun tp!537630 () Bool)

(assert (=> b!1885836 (= e!1203217 tp!537630)))

(declare-fun b!1885837 () Bool)

(declare-fun tp!537627 () Bool)

(assert (=> b!1885837 (= e!1203216 tp!537627)))

(assert (= b!1885835 b!1885837))

(assert (= (and b!1885835 condSetEmpty!11731) setIsEmpty!11731))

(assert (= (and b!1885835 (not condSetEmpty!11731)) setNonEmpty!11731))

(assert (= setNonEmpty!11731 b!1885836))

(assert (= (and b!1885697 ((_ is Cons!20993) (minValue!2227 (v!26255 (underlying!4131 (v!26256 (underlying!4132 (cache!2264 cacheUp!766)))))))) b!1885835))

(declare-fun m!2318693 () Bool)

(assert (=> setNonEmpty!11731 m!2318693))

(declare-fun m!2318695 () Bool)

(assert (=> b!1885835 m!2318695))

(check-sat (not b_next!53159) (not b!1885727) (not b!1885808) (not b_next!53157) b_and!145243 (not b!1885798) (not b!1885821) (not setNonEmpty!11718) (not setNonEmpty!11723) b_and!145245 (not b!1885823) (not b!1885812) (not b!1885755) (not b!1885807) (not b!1885730) (not b!1885714) (not b!1885795) (not b!1885754) (not b!1885706) (not b!1885721) (not b_next!53163) (not b!1885811) (not b!1885831) (not b!1885704) (not b!1885834) (not d!577885) (not b!1885833) (not setNonEmpty!11709) (not setNonEmpty!11725) b_and!145249 (not b!1885796) (not b_next!53161) (not b!1885809) (not b!1885835) (not b!1885778) (not setNonEmpty!11722) (not b!1885813) (not b!1885765) (not setNonEmpty!11724) (not b!1885836) (not d!577881) (not b!1885820) (not setNonEmpty!11730) (not b!1885793) (not mapNonEmpty!9110) (not b!1885815) (not b!1885830) (not d!577901) (not b!1885720) (not b!1885777) tp_is_empty!8909 (not b!1885837) (not b!1885680) b_and!145247 (not setNonEmpty!11710) (not b!1885715) (not b!1885810) (not b!1885753) (not b!1885828) (not d!577899) (not setNonEmpty!11719) (not b!1885751) (not mapNonEmpty!9113) (not b!1885767) (not b!1885752) (not b!1885829) (not b!1885766) (not d!577883) (not b!1885797) (not setNonEmpty!11728) (not b!1885736) (not b!1885726) (not b!1885756) (not b!1885713) (not b!1885814) (not b!1885822) (not setNonEmpty!11713) (not b!1885794) (not d!577887) (not b!1885832) (not setNonEmpty!11729) (not d!577893) (not b!1885776) (not b!1885733) (not setNonEmpty!11731))
(check-sat b_and!145245 (not b_next!53159) (not b_next!53163) b_and!145249 (not b_next!53161) b_and!145247 (not b_next!53157) b_and!145243)
