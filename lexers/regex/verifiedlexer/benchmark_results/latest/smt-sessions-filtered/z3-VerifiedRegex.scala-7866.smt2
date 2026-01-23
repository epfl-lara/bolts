; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411838 () Bool)

(assert start!411838)

(declare-fun b!4287546 () Bool)

(declare-fun b_free!127175 () Bool)

(declare-fun b_next!127879 () Bool)

(assert (=> b!4287546 (= b_free!127175 (not b_next!127879))))

(declare-fun tp!1313481 () Bool)

(declare-fun b_and!338391 () Bool)

(assert (=> b!4287546 (= tp!1313481 b_and!338391)))

(declare-fun b!4287589 () Bool)

(declare-fun b_free!127177 () Bool)

(declare-fun b_next!127881 () Bool)

(assert (=> b!4287589 (= b_free!127177 (not b_next!127881))))

(declare-fun tp!1313482 () Bool)

(declare-fun b_and!338393 () Bool)

(assert (=> b!4287589 (= tp!1313482 b_and!338393)))

(declare-fun b!4287570 () Bool)

(declare-fun b_free!127179 () Bool)

(declare-fun b_next!127883 () Bool)

(assert (=> b!4287570 (= b_free!127179 (not b_next!127883))))

(declare-fun tp!1313466 () Bool)

(declare-fun b_and!338395 () Bool)

(assert (=> b!4287570 (= tp!1313466 b_and!338395)))

(declare-fun b!4287562 () Bool)

(declare-fun b_free!127181 () Bool)

(declare-fun b_next!127885 () Bool)

(assert (=> b!4287562 (= b_free!127181 (not b_next!127885))))

(declare-fun tp!1313488 () Bool)

(declare-fun b_and!338397 () Bool)

(assert (=> b!4287562 (= tp!1313488 b_and!338397)))

(declare-fun b!4287550 () Bool)

(declare-fun b_free!127183 () Bool)

(declare-fun b_next!127887 () Bool)

(assert (=> b!4287550 (= b_free!127183 (not b_next!127887))))

(declare-fun tp!1313483 () Bool)

(declare-fun b_and!338399 () Bool)

(assert (=> b!4287550 (= tp!1313483 b_and!338399)))

(declare-fun b!4287588 () Bool)

(declare-fun b_free!127185 () Bool)

(declare-fun b_next!127889 () Bool)

(assert (=> b!4287588 (= b_free!127185 (not b_next!127889))))

(declare-fun tp!1313461 () Bool)

(declare-fun b_and!338401 () Bool)

(assert (=> b!4287588 (= tp!1313461 b_and!338401)))

(declare-fun b!4287545 () Bool)

(declare-fun e!2662818 () Bool)

(declare-datatypes ((C!26060 0))(
  ( (C!26061 (val!15356 Int)) )
))
(declare-datatypes ((Regex!12931 0))(
  ( (ElementMatch!12931 (c!730171 C!26060)) (Concat!21250 (regOne!26374 Regex!12931) (regTwo!26374 Regex!12931)) (EmptyExpr!12931) (Star!12931 (reg!13260 Regex!12931)) (EmptyLang!12931) (Union!12931 (regOne!26375 Regex!12931) (regTwo!26375 Regex!12931)) )
))
(declare-datatypes ((List!47701 0))(
  ( (Nil!47577) (Cons!47577 (h!52997 Regex!12931) (t!354300 List!47701)) )
))
(declare-datatypes ((Context!5642 0))(
  ( (Context!5643 (exprs!3321 List!47701)) )
))
(declare-datatypes ((tuple2!45104 0))(
  ( (tuple2!45105 (_1!25732 Context!5642) (_2!25732 C!26060)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45106 0))(
  ( (tuple2!45107 (_1!25733 tuple2!45104) (_2!25733 (InoxSet Context!5642))) )
))
(declare-datatypes ((List!47702 0))(
  ( (Nil!47578) (Cons!47578 (h!52998 tuple2!45106) (t!354301 List!47702)) )
))
(declare-datatypes ((array!15532 0))(
  ( (array!15533 (arr!6936 (Array (_ BitVec 32) List!47702)) (size!34887 (_ BitVec 32))) )
))
(declare-datatypes ((array!15534 0))(
  ( (array!15535 (arr!6937 (Array (_ BitVec 32) (_ BitVec 64))) (size!34888 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8676 0))(
  ( (LongMapFixedSize!8677 (defaultEntry!4723 Int) (mask!12773 (_ BitVec 32)) (extraKeys!4587 (_ BitVec 32)) (zeroValue!4597 List!47702) (minValue!4597 List!47702) (_size!8719 (_ BitVec 32)) (_keys!4638 array!15534) (_values!4619 array!15532) (_vacant!4399 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17161 0))(
  ( (Cell!17162 (v!41486 LongMapFixedSize!8676)) )
))
(declare-datatypes ((MutLongMap!4338 0))(
  ( (LongMap!4338 (underlying!8905 Cell!17161)) (MutLongMapExt!4337 (__x!29039 Int)) )
))
(declare-datatypes ((Cell!17163 0))(
  ( (Cell!17164 (v!41487 MutLongMap!4338)) )
))
(declare-datatypes ((Hashable!4254 0))(
  ( (HashableExt!4253 (__x!29040 Int)) )
))
(declare-datatypes ((MutableMap!4244 0))(
  ( (MutableMapExt!4243 (__x!29041 Int)) (HashMap!4244 (underlying!8906 Cell!17163) (hashF!6286 Hashable!4254) (_size!8720 (_ BitVec 32)) (defaultValue!4415 Int)) )
))
(declare-datatypes ((CacheUp!2772 0))(
  ( (CacheUp!2773 (cache!4384 MutableMap!4244)) )
))
(declare-datatypes ((tuple3!5382 0))(
  ( (tuple3!5383 (_1!25734 Regex!12931) (_2!25734 Context!5642) (_3!3180 C!26060)) )
))
(declare-datatypes ((tuple2!45108 0))(
  ( (tuple2!45109 (_1!25735 tuple3!5382) (_2!25735 (InoxSet Context!5642))) )
))
(declare-datatypes ((List!47703 0))(
  ( (Nil!47579) (Cons!47579 (h!52999 tuple2!45108) (t!354302 List!47703)) )
))
(declare-datatypes ((array!15536 0))(
  ( (array!15537 (arr!6938 (Array (_ BitVec 32) List!47703)) (size!34889 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8678 0))(
  ( (LongMapFixedSize!8679 (defaultEntry!4724 Int) (mask!12774 (_ BitVec 32)) (extraKeys!4588 (_ BitVec 32)) (zeroValue!4598 List!47703) (minValue!4598 List!47703) (_size!8721 (_ BitVec 32)) (_keys!4639 array!15534) (_values!4620 array!15536) (_vacant!4400 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17165 0))(
  ( (Cell!17166 (v!41488 LongMapFixedSize!8678)) )
))
(declare-datatypes ((MutLongMap!4339 0))(
  ( (LongMap!4339 (underlying!8907 Cell!17165)) (MutLongMapExt!4338 (__x!29042 Int)) )
))
(declare-datatypes ((Cell!17167 0))(
  ( (Cell!17168 (v!41489 MutLongMap!4339)) )
))
(declare-datatypes ((tuple2!45110 0))(
  ( (tuple2!45111 (_1!25736 (InoxSet Context!5642)) (_2!25736 Int)) )
))
(declare-datatypes ((tuple2!45112 0))(
  ( (tuple2!45113 (_1!25737 tuple2!45110) (_2!25737 Int)) )
))
(declare-datatypes ((List!47704 0))(
  ( (Nil!47580) (Cons!47580 (h!53000 tuple2!45112) (t!354303 List!47704)) )
))
(declare-datatypes ((array!15538 0))(
  ( (array!15539 (arr!6939 (Array (_ BitVec 32) List!47704)) (size!34890 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8680 0))(
  ( (LongMapFixedSize!8681 (defaultEntry!4725 Int) (mask!12775 (_ BitVec 32)) (extraKeys!4589 (_ BitVec 32)) (zeroValue!4599 List!47704) (minValue!4599 List!47704) (_size!8722 (_ BitVec 32)) (_keys!4640 array!15534) (_values!4621 array!15538) (_vacant!4401 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17169 0))(
  ( (Cell!17170 (v!41490 LongMapFixedSize!8680)) )
))
(declare-datatypes ((List!47705 0))(
  ( (Nil!47581) (Cons!47581 (h!53001 C!26060) (t!354304 List!47705)) )
))
(declare-datatypes ((IArray!28807 0))(
  ( (IArray!28808 (innerList!14461 List!47705)) )
))
(declare-datatypes ((Conc!14373 0))(
  ( (Node!14373 (left!35371 Conc!14373) (right!35701 Conc!14373) (csize!28976 Int) (cheight!14584 Int)) (Leaf!22240 (xs!17679 IArray!28807) (csize!28977 Int)) (Empty!14373) )
))
(declare-datatypes ((Hashable!4255 0))(
  ( (HashableExt!4254 (__x!29043 Int)) )
))
(declare-datatypes ((BalanceConc!28236 0))(
  ( (BalanceConc!28237 (c!730172 Conc!14373)) )
))
(declare-datatypes ((tuple2!45114 0))(
  ( (tuple2!45115 (_1!25738 BalanceConc!28236) (_2!25738 BalanceConc!28236)) )
))
(declare-datatypes ((MutableMap!4245 0))(
  ( (MutableMapExt!4244 (__x!29044 Int)) (HashMap!4245 (underlying!8908 Cell!17167) (hashF!6287 Hashable!4255) (_size!8723 (_ BitVec 32)) (defaultValue!4416 Int)) )
))
(declare-datatypes ((CacheDown!2890 0))(
  ( (CacheDown!2891 (cache!4385 MutableMap!4245)) )
))
(declare-datatypes ((MutLongMap!4340 0))(
  ( (LongMap!4340 (underlying!8909 Cell!17169)) (MutLongMapExt!4339 (__x!29045 Int)) )
))
(declare-datatypes ((Cell!17171 0))(
  ( (Cell!17172 (v!41491 MutLongMap!4340)) )
))
(declare-datatypes ((Hashable!4256 0))(
  ( (HashableExt!4255 (__x!29046 Int)) )
))
(declare-datatypes ((MutableMap!4246 0))(
  ( (MutableMapExt!4245 (__x!29047 Int)) (HashMap!4246 (underlying!8910 Cell!17171) (hashF!6288 Hashable!4256) (_size!8724 (_ BitVec 32)) (defaultValue!4417 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!434 0))(
  ( (CacheFindLongestMatch!435 (cache!4386 MutableMap!4246) (totalInput!4327 BalanceConc!28236)) )
))
(declare-datatypes ((tuple4!978 0))(
  ( (tuple4!979 (_1!25739 tuple2!45114) (_2!25739 CacheUp!2772) (_3!3181 CacheDown!2890) (_4!489 CacheFindLongestMatch!434)) )
))
(declare-fun lt!1516342 () tuple4!978)

(declare-fun totalInput!1189 () BalanceConc!28236)

(assert (=> b!4287545 (= e!2662818 (= (totalInput!4327 (_4!489 lt!1516342)) totalInput!1189))))

(declare-fun tp!1313487 () Bool)

(declare-fun e!2662788 () Bool)

(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!434)

(declare-fun e!2662796 () Bool)

(declare-fun tp!1313484 () Bool)

(declare-fun array_inv!4972 (array!15534) Bool)

(declare-fun array_inv!4973 (array!15538) Bool)

(assert (=> b!4287546 (= e!2662788 (and tp!1313481 tp!1313487 tp!1313484 (array_inv!4972 (_keys!4640 (v!41490 (underlying!8909 (v!41491 (underlying!8910 (cache!4386 cacheFindLongestMatch!199))))))) (array_inv!4973 (_values!4621 (v!41490 (underlying!8909 (v!41491 (underlying!8910 (cache!4386 cacheFindLongestMatch!199))))))) e!2662796))))

(declare-fun b!4287547 () Bool)

(declare-fun res!1758865 () Bool)

(declare-fun e!2662794 () Bool)

(assert (=> b!4287547 (=> (not res!1758865) (not e!2662794))))

(declare-fun lt!1516333 () tuple4!978)

(declare-fun valid!3371 (CacheFindLongestMatch!434) Bool)

(assert (=> b!4287547 (= res!1758865 (valid!3371 (_4!489 lt!1516333)))))

(declare-fun b!4287548 () Bool)

(declare-fun tp!1313478 () Bool)

(declare-fun mapRes!19587 () Bool)

(assert (=> b!4287548 (= e!2662796 (and tp!1313478 mapRes!19587))))

(declare-fun condMapEmpty!19587 () Bool)

(declare-fun mapDefault!19588 () List!47704)

(assert (=> b!4287548 (= condMapEmpty!19587 (= (arr!6939 (_values!4621 (v!41490 (underlying!8909 (v!41491 (underlying!8910 (cache!4386 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47704)) mapDefault!19588)))))

(declare-fun b!4287549 () Bool)

(declare-fun e!2662790 () Bool)

(assert (=> b!4287549 (= e!2662790 e!2662788)))

(declare-fun e!2662801 () Bool)

(declare-fun e!2662805 () Bool)

(assert (=> b!4287550 (= e!2662801 (and e!2662805 tp!1313483))))

(declare-fun b!4287551 () Bool)

(declare-fun res!1758867 () Bool)

(assert (=> b!4287551 (=> (not res!1758867) (not e!2662818))))

(declare-fun valid!3372 (CacheDown!2890) Bool)

(assert (=> b!4287551 (= res!1758867 (valid!3372 (_3!3181 lt!1516342)))))

(declare-fun lt!1516337 () tuple2!45114)

(declare-fun b!4287552 () Bool)

(declare-fun r!15285 () Regex!12931)

(declare-fun input!6546 () BalanceConc!28236)

(declare-fun e!2662811 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!126 (Regex!12931 BalanceConc!28236 BalanceConc!28236) tuple2!45114)

(assert (=> b!4287552 (= e!2662811 (= (findLongestMatchWithZipperSequenceV2!126 r!15285 input!6546 totalInput!1189) lt!1516337))))

(declare-fun b!4287553 () Bool)

(declare-fun e!2662814 () Bool)

(declare-fun tp!1313465 () Bool)

(declare-fun tp!1313472 () Bool)

(assert (=> b!4287553 (= e!2662814 (and tp!1313465 tp!1313472))))

(declare-fun b!4287554 () Bool)

(declare-fun e!2662802 () Bool)

(declare-fun tp!1313480 () Bool)

(declare-fun inv!63045 (Conc!14373) Bool)

(assert (=> b!4287554 (= e!2662802 (and (inv!63045 (c!730172 input!6546)) tp!1313480))))

(declare-fun b!4287555 () Bool)

(declare-fun e!2662791 () Bool)

(declare-fun lt!1516338 () MutLongMap!4339)

(get-info :version)

(assert (=> b!4287555 (= e!2662805 (and e!2662791 ((_ is LongMap!4339) lt!1516338)))))

(declare-fun cacheDown!1163 () CacheDown!2890)

(assert (=> b!4287555 (= lt!1516338 (v!41489 (underlying!8908 (cache!4385 cacheDown!1163))))))

(declare-fun b!4287556 () Bool)

(declare-fun res!1758869 () Bool)

(declare-fun e!2662809 () Bool)

(assert (=> b!4287556 (=> (not res!1758869) (not e!2662809))))

(declare-datatypes ((tuple4!980 0))(
  ( (tuple4!981 (_1!25740 Int) (_2!25740 CacheUp!2772) (_3!3182 CacheDown!2890) (_4!490 CacheFindLongestMatch!434)) )
))
(declare-fun lt!1516343 () tuple4!980)

(declare-fun valid!3373 (CacheUp!2772) Bool)

(assert (=> b!4287556 (= res!1758869 (valid!3373 (_2!25740 lt!1516343)))))

(declare-fun b!4287557 () Bool)

(declare-fun tp!1313479 () Bool)

(declare-fun tp!1313476 () Bool)

(assert (=> b!4287557 (= e!2662814 (and tp!1313479 tp!1313476))))

(declare-fun mapIsEmpty!19587 () Bool)

(assert (=> mapIsEmpty!19587 mapRes!19587))

(declare-fun b!4287558 () Bool)

(declare-fun tp_is_empty!23093 () Bool)

(assert (=> b!4287558 (= e!2662814 tp_is_empty!23093)))

(declare-fun b!4287559 () Bool)

(declare-fun res!1758876 () Bool)

(assert (=> b!4287559 (=> (not res!1758876) (not e!2662809))))

(assert (=> b!4287559 (= res!1758876 (valid!3372 (_3!3182 lt!1516343)))))

(declare-fun b!4287560 () Bool)

(declare-fun e!2662787 () Bool)

(declare-fun e!2662820 () Bool)

(assert (=> b!4287560 (= e!2662787 e!2662820)))

(declare-fun b!4287561 () Bool)

(declare-fun res!1758874 () Bool)

(assert (=> b!4287561 (=> (not res!1758874) (not e!2662794))))

(assert (=> b!4287561 (= res!1758874 (valid!3372 (_3!3181 lt!1516333)))))

(declare-fun e!2662789 () Bool)

(declare-fun e!2662798 () Bool)

(assert (=> b!4287562 (= e!2662789 (and e!2662798 tp!1313488))))

(declare-fun b!4287563 () Bool)

(declare-fun e!2662804 () Bool)

(declare-fun tp!1313486 () Bool)

(declare-fun mapRes!19588 () Bool)

(assert (=> b!4287563 (= e!2662804 (and tp!1313486 mapRes!19588))))

(declare-fun condMapEmpty!19589 () Bool)

(declare-fun cacheUp!1044 () CacheUp!2772)

(declare-fun mapDefault!19587 () List!47702)

(assert (=> b!4287563 (= condMapEmpty!19589 (= (arr!6936 (_values!4619 (v!41486 (underlying!8905 (v!41487 (underlying!8906 (cache!4384 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47702)) mapDefault!19587)))))

(declare-fun b!4287564 () Bool)

(declare-fun e!2662819 () Bool)

(declare-fun e!2662812 () Bool)

(assert (=> b!4287564 (= e!2662819 e!2662812)))

(declare-fun b!4287565 () Bool)

(declare-fun e!2662792 () Bool)

(declare-fun tp!1313470 () Bool)

(declare-fun mapRes!19589 () Bool)

(assert (=> b!4287565 (= e!2662792 (and tp!1313470 mapRes!19589))))

(declare-fun condMapEmpty!19588 () Bool)

(declare-fun mapDefault!19589 () List!47703)

(assert (=> b!4287565 (= condMapEmpty!19588 (= (arr!6938 (_values!4620 (v!41488 (underlying!8907 (v!41489 (underlying!8908 (cache!4385 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47703)) mapDefault!19589)))))

(declare-fun b!4287566 () Bool)

(declare-fun tp!1313469 () Bool)

(assert (=> b!4287566 (= e!2662814 tp!1313469)))

(declare-fun b!4287567 () Bool)

(declare-fun e!2662797 () Bool)

(declare-fun e!2662806 () Bool)

(assert (=> b!4287567 (= e!2662797 e!2662806)))

(declare-fun res!1758871 () Bool)

(assert (=> b!4287567 (=> (not res!1758871) (not e!2662806))))

(declare-fun lt!1516339 () List!47705)

(declare-fun isSuffix!1023 (List!47705 List!47705) Bool)

(declare-fun list!17339 (BalanceConc!28236) List!47705)

(assert (=> b!4287567 (= res!1758871 (isSuffix!1023 lt!1516339 (list!17339 totalInput!1189)))))

(assert (=> b!4287567 (= lt!1516339 (list!17339 input!6546))))

(declare-fun b!4287568 () Bool)

(declare-fun res!1758862 () Bool)

(assert (=> b!4287568 (=> (not res!1758862) (not e!2662794))))

(assert (=> b!4287568 (= res!1758862 (valid!3373 (_2!25739 lt!1516333)))))

(declare-fun b!4287569 () Bool)

(declare-fun res!1758873 () Bool)

(assert (=> b!4287569 (=> (not res!1758873) (not e!2662797))))

(assert (=> b!4287569 (= res!1758873 (valid!3371 cacheFindLongestMatch!199))))

(declare-fun mapIsEmpty!19588 () Bool)

(assert (=> mapIsEmpty!19588 mapRes!19589))

(declare-fun e!2662799 () Bool)

(declare-fun e!2662808 () Bool)

(assert (=> b!4287570 (= e!2662799 (and e!2662808 tp!1313466))))

(declare-fun mapIsEmpty!19589 () Bool)

(assert (=> mapIsEmpty!19589 mapRes!19588))

(declare-fun b!4287571 () Bool)

(declare-fun e!2662786 () Bool)

(declare-datatypes ((tuple2!45116 0))(
  ( (tuple2!45117 (_1!25741 List!47705) (_2!25741 List!47705)) )
))
(declare-fun lt!1516330 () tuple2!45116)

(assert (=> b!4287571 (= e!2662786 (= (list!17339 (_2!25738 lt!1516337)) (_2!25741 lt!1516330)))))

(declare-fun res!1758877 () Bool)

(assert (=> start!411838 (=> (not res!1758877) (not e!2662797))))

(declare-fun validRegex!5852 (Regex!12931) Bool)

(assert (=> start!411838 (= res!1758877 (validRegex!5852 r!15285))))

(assert (=> start!411838 e!2662797))

(declare-fun e!2662816 () Bool)

(declare-fun inv!63046 (BalanceConc!28236) Bool)

(assert (=> start!411838 (and (inv!63046 totalInput!1189) e!2662816)))

(assert (=> start!411838 e!2662814))

(assert (=> start!411838 (and (inv!63046 input!6546) e!2662802)))

(declare-fun e!2662807 () Bool)

(declare-fun inv!63047 (CacheFindLongestMatch!434) Bool)

(assert (=> start!411838 (and (inv!63047 cacheFindLongestMatch!199) e!2662807)))

(declare-fun e!2662793 () Bool)

(declare-fun inv!63048 (CacheDown!2890) Bool)

(assert (=> start!411838 (and (inv!63048 cacheDown!1163) e!2662793)))

(declare-fun e!2662817 () Bool)

(declare-fun inv!63049 (CacheUp!2772) Bool)

(assert (=> start!411838 (and (inv!63049 cacheUp!1044) e!2662817)))

(declare-fun b!4287572 () Bool)

(declare-fun res!1758866 () Bool)

(assert (=> b!4287572 (=> (not res!1758866) (not e!2662797))))

(assert (=> b!4287572 (= res!1758866 (valid!3373 cacheUp!1044))))

(declare-fun b!4287573 () Bool)

(declare-fun splitAt!215 (BalanceConc!28236 Int) tuple2!45114)

(assert (=> b!4287573 (= e!2662809 (= lt!1516342 (tuple4!979 (splitAt!215 input!6546 (_1!25740 lt!1516343)) (_2!25740 lt!1516343) (_3!3182 lt!1516343) (_4!490 lt!1516343))))))

(declare-fun b!4287574 () Bool)

(declare-fun e!2662810 () Bool)

(assert (=> b!4287574 (= e!2662810 e!2662790)))

(declare-fun b!4287575 () Bool)

(declare-fun e!2662813 () Bool)

(declare-fun tp!1313468 () Bool)

(assert (=> b!4287575 (= e!2662813 (and (inv!63045 (c!730172 (totalInput!4327 cacheFindLongestMatch!199))) tp!1313468))))

(declare-fun b!4287576 () Bool)

(assert (=> b!4287576 (= e!2662794 (= (totalInput!4327 (_4!489 lt!1516333)) totalInput!1189))))

(declare-fun b!4287577 () Bool)

(declare-fun res!1758863 () Bool)

(assert (=> b!4287577 (=> (not res!1758863) (not e!2662797))))

(assert (=> b!4287577 (= res!1758863 (valid!3372 cacheDown!1163))))

(declare-fun b!4287578 () Bool)

(declare-fun res!1758872 () Bool)

(assert (=> b!4287578 (=> (not res!1758872) (not e!2662818))))

(assert (=> b!4287578 (= res!1758872 (valid!3371 (_4!489 lt!1516342)))))

(declare-fun b!4287579 () Bool)

(assert (=> b!4287579 (= e!2662806 (not true))))

(assert (=> b!4287579 e!2662794))

(declare-fun res!1758870 () Bool)

(assert (=> b!4287579 (=> (not res!1758870) (not e!2662794))))

(assert (=> b!4287579 (= res!1758870 (= (_1!25739 lt!1516333) lt!1516337))))

(declare-fun lt!1516341 () (InoxSet Context!5642))

(declare-fun findLongestMatchZipperFastV2Mem!5 ((InoxSet Context!5642) BalanceConc!28236 BalanceConc!28236 CacheUp!2772 CacheDown!2890 CacheFindLongestMatch!434) tuple4!978)

(assert (=> b!4287579 (= lt!1516333 (findLongestMatchZipperFastV2Mem!5 lt!1516341 input!6546 totalInput!1189 (_2!25739 lt!1516342) (_3!3181 lt!1516342) (_4!489 lt!1516342)))))

(assert (=> b!4287579 e!2662809))

(declare-fun res!1758880 () Bool)

(assert (=> b!4287579 (=> (not res!1758880) (not e!2662809))))

(declare-fun lt!1516331 () Int)

(declare-fun lt!1516332 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!21 ((InoxSet Context!5642) Int BalanceConc!28236 Int) Int)

(assert (=> b!4287579 (= res!1758880 (= (_1!25740 lt!1516343) (findLongestMatchInnerZipperFastV2!21 lt!1516341 lt!1516332 totalInput!1189 lt!1516331)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!3 ((InoxSet Context!5642) Int BalanceConc!28236 Int CacheUp!2772 CacheDown!2890 CacheFindLongestMatch!434) tuple4!980)

(assert (=> b!4287579 (= lt!1516343 (findLongestMatchInnerZipperFastV2Mem!3 lt!1516341 lt!1516332 totalInput!1189 lt!1516331 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(declare-fun size!34891 (BalanceConc!28236) Int)

(assert (=> b!4287579 (= lt!1516332 (- lt!1516331 (size!34891 input!6546)))))

(assert (=> b!4287579 (= lt!1516331 (size!34891 totalInput!1189))))

(assert (=> b!4287579 e!2662818))

(declare-fun res!1758875 () Bool)

(assert (=> b!4287579 (=> (not res!1758875) (not e!2662818))))

(assert (=> b!4287579 (= res!1758875 (= (_1!25739 lt!1516342) lt!1516337))))

(assert (=> b!4287579 (= lt!1516342 (findLongestMatchZipperFastV2Mem!5 lt!1516341 input!6546 totalInput!1189 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(assert (=> b!4287579 e!2662811))

(declare-fun res!1758879 () Bool)

(assert (=> b!4287579 (=> (not res!1758879) (not e!2662811))))

(declare-fun sizeTr!335 (List!47705 Int) Int)

(declare-fun size!34892 (List!47705) Int)

(assert (=> b!4287579 (= res!1758879 (= (sizeTr!335 lt!1516339 0) (size!34892 lt!1516339)))))

(declare-datatypes ((Unit!66399 0))(
  ( (Unit!66400) )
))
(declare-fun lt!1516336 () Unit!66399)

(declare-fun lemmaSizeTrEqualsSize!334 (List!47705 Int) Unit!66399)

(assert (=> b!4287579 (= lt!1516336 (lemmaSizeTrEqualsSize!334 lt!1516339 0))))

(assert (=> b!4287579 e!2662786))

(declare-fun res!1758881 () Bool)

(assert (=> b!4287579 (=> (not res!1758881) (not e!2662786))))

(assert (=> b!4287579 (= res!1758881 (= (list!17339 (_1!25738 lt!1516337)) (_1!25741 lt!1516330)))))

(declare-fun findLongestMatch!1626 (Regex!12931 List!47705) tuple2!45116)

(assert (=> b!4287579 (= lt!1516330 (findLongestMatch!1626 r!15285 lt!1516339))))

(declare-fun findLongestMatchZipperFastV2!21 ((InoxSet Context!5642) BalanceConc!28236 BalanceConc!28236) tuple2!45114)

(assert (=> b!4287579 (= lt!1516337 (findLongestMatchZipperFastV2!21 lt!1516341 input!6546 totalInput!1189))))

(declare-fun lt!1516335 () Unit!66399)

(declare-fun longestMatchV2SameAsRegex!20 (Regex!12931 (InoxSet Context!5642) BalanceConc!28236 BalanceConc!28236) Unit!66399)

(assert (=> b!4287579 (= lt!1516335 (longestMatchV2SameAsRegex!20 r!15285 lt!1516341 input!6546 totalInput!1189))))

(declare-fun focus!322 (Regex!12931) (InoxSet Context!5642))

(assert (=> b!4287579 (= lt!1516341 (focus!322 r!15285))))

(declare-fun b!4287580 () Bool)

(declare-fun e!2662803 () Bool)

(assert (=> b!4287580 (= e!2662820 e!2662803)))

(declare-fun b!4287581 () Bool)

(declare-fun res!1758864 () Bool)

(assert (=> b!4287581 (=> (not res!1758864) (not e!2662809))))

(assert (=> b!4287581 (= res!1758864 (valid!3371 (_4!490 lt!1516343)))))

(declare-fun b!4287582 () Bool)

(assert (=> b!4287582 (= e!2662817 e!2662799)))

(declare-fun b!4287583 () Bool)

(declare-fun lt!1516340 () MutLongMap!4338)

(assert (=> b!4287583 (= e!2662808 (and e!2662787 ((_ is LongMap!4338) lt!1516340)))))

(assert (=> b!4287583 (= lt!1516340 (v!41487 (underlying!8906 (cache!4384 cacheUp!1044))))))

(declare-fun b!4287584 () Bool)

(declare-fun res!1758882 () Bool)

(assert (=> b!4287584 (=> (not res!1758882) (not e!2662818))))

(assert (=> b!4287584 (= res!1758882 (valid!3373 (_2!25739 lt!1516342)))))

(declare-fun mapNonEmpty!19587 () Bool)

(declare-fun tp!1313489 () Bool)

(declare-fun tp!1313471 () Bool)

(assert (=> mapNonEmpty!19587 (= mapRes!19587 (and tp!1313489 tp!1313471))))

(declare-fun mapValue!19587 () List!47704)

(declare-fun mapRest!19587 () (Array (_ BitVec 32) List!47704))

(declare-fun mapKey!19587 () (_ BitVec 32))

(assert (=> mapNonEmpty!19587 (= (arr!6939 (_values!4621 (v!41490 (underlying!8909 (v!41491 (underlying!8910 (cache!4386 cacheFindLongestMatch!199))))))) (store mapRest!19587 mapKey!19587 mapValue!19587))))

(declare-fun b!4287585 () Bool)

(declare-fun tp!1313474 () Bool)

(assert (=> b!4287585 (= e!2662816 (and (inv!63045 (c!730172 totalInput!1189)) tp!1313474))))

(declare-fun b!4287586 () Bool)

(assert (=> b!4287586 (= e!2662791 e!2662819)))

(declare-fun b!4287587 () Bool)

(declare-fun res!1758878 () Bool)

(assert (=> b!4287587 (=> (not res!1758878) (not e!2662797))))

(assert (=> b!4287587 (= res!1758878 (= (totalInput!4327 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun mapNonEmpty!19588 () Bool)

(declare-fun tp!1313464 () Bool)

(declare-fun tp!1313477 () Bool)

(assert (=> mapNonEmpty!19588 (= mapRes!19588 (and tp!1313464 tp!1313477))))

(declare-fun mapKey!19589 () (_ BitVec 32))

(declare-fun mapRest!19589 () (Array (_ BitVec 32) List!47702))

(declare-fun mapValue!19588 () List!47702)

(assert (=> mapNonEmpty!19588 (= (arr!6936 (_values!4619 (v!41486 (underlying!8905 (v!41487 (underlying!8906 (cache!4384 cacheUp!1044))))))) (store mapRest!19589 mapKey!19589 mapValue!19588))))

(declare-fun tp!1313475 () Bool)

(declare-fun tp!1313463 () Bool)

(declare-fun array_inv!4974 (array!15536) Bool)

(assert (=> b!4287588 (= e!2662812 (and tp!1313461 tp!1313475 tp!1313463 (array_inv!4972 (_keys!4639 (v!41488 (underlying!8907 (v!41489 (underlying!8908 (cache!4385 cacheDown!1163))))))) (array_inv!4974 (_values!4620 (v!41488 (underlying!8907 (v!41489 (underlying!8908 (cache!4385 cacheDown!1163))))))) e!2662792))))

(declare-fun tp!1313485 () Bool)

(declare-fun tp!1313467 () Bool)

(declare-fun array_inv!4975 (array!15532) Bool)

(assert (=> b!4287589 (= e!2662803 (and tp!1313482 tp!1313467 tp!1313485 (array_inv!4972 (_keys!4638 (v!41486 (underlying!8905 (v!41487 (underlying!8906 (cache!4384 cacheUp!1044))))))) (array_inv!4975 (_values!4619 (v!41486 (underlying!8905 (v!41487 (underlying!8906 (cache!4384 cacheUp!1044))))))) e!2662804))))

(declare-fun b!4287590 () Bool)

(assert (=> b!4287590 (= e!2662793 e!2662801)))

(declare-fun b!4287591 () Bool)

(declare-fun res!1758868 () Bool)

(assert (=> b!4287591 (=> (not res!1758868) (not e!2662809))))

(assert (=> b!4287591 (= res!1758868 (= (totalInput!4327 (_4!490 lt!1516343)) totalInput!1189))))

(declare-fun b!4287592 () Bool)

(declare-fun lt!1516334 () MutLongMap!4340)

(assert (=> b!4287592 (= e!2662798 (and e!2662810 ((_ is LongMap!4340) lt!1516334)))))

(assert (=> b!4287592 (= lt!1516334 (v!41491 (underlying!8910 (cache!4386 cacheFindLongestMatch!199))))))

(declare-fun b!4287593 () Bool)

(assert (=> b!4287593 (= e!2662807 (and e!2662789 (inv!63046 (totalInput!4327 cacheFindLongestMatch!199)) e!2662813))))

(declare-fun mapNonEmpty!19589 () Bool)

(declare-fun tp!1313473 () Bool)

(declare-fun tp!1313462 () Bool)

(assert (=> mapNonEmpty!19589 (= mapRes!19589 (and tp!1313473 tp!1313462))))

(declare-fun mapKey!19588 () (_ BitVec 32))

(declare-fun mapRest!19588 () (Array (_ BitVec 32) List!47703))

(declare-fun mapValue!19589 () List!47703)

(assert (=> mapNonEmpty!19589 (= (arr!6938 (_values!4620 (v!41488 (underlying!8907 (v!41489 (underlying!8908 (cache!4385 cacheDown!1163))))))) (store mapRest!19588 mapKey!19588 mapValue!19589))))

(assert (= (and start!411838 res!1758877) b!4287572))

(assert (= (and b!4287572 res!1758866) b!4287577))

(assert (= (and b!4287577 res!1758863) b!4287569))

(assert (= (and b!4287569 res!1758873) b!4287587))

(assert (= (and b!4287587 res!1758878) b!4287567))

(assert (= (and b!4287567 res!1758871) b!4287579))

(assert (= (and b!4287579 res!1758881) b!4287571))

(assert (= (and b!4287579 res!1758879) b!4287552))

(assert (= (and b!4287579 res!1758875) b!4287584))

(assert (= (and b!4287584 res!1758882) b!4287551))

(assert (= (and b!4287551 res!1758867) b!4287578))

(assert (= (and b!4287578 res!1758872) b!4287545))

(assert (= (and b!4287579 res!1758880) b!4287556))

(assert (= (and b!4287556 res!1758869) b!4287559))

(assert (= (and b!4287559 res!1758876) b!4287581))

(assert (= (and b!4287581 res!1758864) b!4287591))

(assert (= (and b!4287591 res!1758868) b!4287573))

(assert (= (and b!4287579 res!1758870) b!4287568))

(assert (= (and b!4287568 res!1758862) b!4287561))

(assert (= (and b!4287561 res!1758874) b!4287547))

(assert (= (and b!4287547 res!1758865) b!4287576))

(assert (= start!411838 b!4287585))

(assert (= (and start!411838 ((_ is ElementMatch!12931) r!15285)) b!4287558))

(assert (= (and start!411838 ((_ is Concat!21250) r!15285)) b!4287557))

(assert (= (and start!411838 ((_ is Star!12931) r!15285)) b!4287566))

(assert (= (and start!411838 ((_ is Union!12931) r!15285)) b!4287553))

(assert (= start!411838 b!4287554))

(assert (= (and b!4287548 condMapEmpty!19587) mapIsEmpty!19587))

(assert (= (and b!4287548 (not condMapEmpty!19587)) mapNonEmpty!19587))

(assert (= b!4287546 b!4287548))

(assert (= b!4287549 b!4287546))

(assert (= b!4287574 b!4287549))

(assert (= (and b!4287592 ((_ is LongMap!4340) (v!41491 (underlying!8910 (cache!4386 cacheFindLongestMatch!199))))) b!4287574))

(assert (= b!4287562 b!4287592))

(assert (= (and b!4287593 ((_ is HashMap!4246) (cache!4386 cacheFindLongestMatch!199))) b!4287562))

(assert (= b!4287593 b!4287575))

(assert (= start!411838 b!4287593))

(assert (= (and b!4287565 condMapEmpty!19588) mapIsEmpty!19588))

(assert (= (and b!4287565 (not condMapEmpty!19588)) mapNonEmpty!19589))

(assert (= b!4287588 b!4287565))

(assert (= b!4287564 b!4287588))

(assert (= b!4287586 b!4287564))

(assert (= (and b!4287555 ((_ is LongMap!4339) (v!41489 (underlying!8908 (cache!4385 cacheDown!1163))))) b!4287586))

(assert (= b!4287550 b!4287555))

(assert (= (and b!4287590 ((_ is HashMap!4245) (cache!4385 cacheDown!1163))) b!4287550))

(assert (= start!411838 b!4287590))

(assert (= (and b!4287563 condMapEmpty!19589) mapIsEmpty!19589))

(assert (= (and b!4287563 (not condMapEmpty!19589)) mapNonEmpty!19588))

(assert (= b!4287589 b!4287563))

(assert (= b!4287580 b!4287589))

(assert (= b!4287560 b!4287580))

(assert (= (and b!4287583 ((_ is LongMap!4338) (v!41487 (underlying!8906 (cache!4384 cacheUp!1044))))) b!4287560))

(assert (= b!4287570 b!4287583))

(assert (= (and b!4287582 ((_ is HashMap!4244) (cache!4384 cacheUp!1044))) b!4287570))

(assert (= start!411838 b!4287582))

(declare-fun m!4882779 () Bool)

(assert (=> mapNonEmpty!19589 m!4882779))

(declare-fun m!4882781 () Bool)

(assert (=> b!4287568 m!4882781))

(declare-fun m!4882783 () Bool)

(assert (=> b!4287578 m!4882783))

(declare-fun m!4882785 () Bool)

(assert (=> b!4287547 m!4882785))

(declare-fun m!4882787 () Bool)

(assert (=> b!4287559 m!4882787))

(declare-fun m!4882789 () Bool)

(assert (=> b!4287571 m!4882789))

(declare-fun m!4882791 () Bool)

(assert (=> b!4287569 m!4882791))

(declare-fun m!4882793 () Bool)

(assert (=> b!4287577 m!4882793))

(declare-fun m!4882795 () Bool)

(assert (=> b!4287556 m!4882795))

(declare-fun m!4882797 () Bool)

(assert (=> mapNonEmpty!19588 m!4882797))

(declare-fun m!4882799 () Bool)

(assert (=> start!411838 m!4882799))

(declare-fun m!4882801 () Bool)

(assert (=> start!411838 m!4882801))

(declare-fun m!4882803 () Bool)

(assert (=> start!411838 m!4882803))

(declare-fun m!4882805 () Bool)

(assert (=> start!411838 m!4882805))

(declare-fun m!4882807 () Bool)

(assert (=> start!411838 m!4882807))

(declare-fun m!4882809 () Bool)

(assert (=> start!411838 m!4882809))

(declare-fun m!4882811 () Bool)

(assert (=> b!4287584 m!4882811))

(declare-fun m!4882813 () Bool)

(assert (=> b!4287552 m!4882813))

(declare-fun m!4882815 () Bool)

(assert (=> b!4287573 m!4882815))

(declare-fun m!4882817 () Bool)

(assert (=> b!4287593 m!4882817))

(declare-fun m!4882819 () Bool)

(assert (=> b!4287575 m!4882819))

(declare-fun m!4882821 () Bool)

(assert (=> b!4287572 m!4882821))

(declare-fun m!4882823 () Bool)

(assert (=> b!4287561 m!4882823))

(declare-fun m!4882825 () Bool)

(assert (=> b!4287551 m!4882825))

(declare-fun m!4882827 () Bool)

(assert (=> b!4287546 m!4882827))

(declare-fun m!4882829 () Bool)

(assert (=> b!4287546 m!4882829))

(declare-fun m!4882831 () Bool)

(assert (=> b!4287589 m!4882831))

(declare-fun m!4882833 () Bool)

(assert (=> b!4287589 m!4882833))

(declare-fun m!4882835 () Bool)

(assert (=> mapNonEmpty!19587 m!4882835))

(declare-fun m!4882837 () Bool)

(assert (=> b!4287585 m!4882837))

(declare-fun m!4882839 () Bool)

(assert (=> b!4287581 m!4882839))

(declare-fun m!4882841 () Bool)

(assert (=> b!4287579 m!4882841))

(declare-fun m!4882843 () Bool)

(assert (=> b!4287579 m!4882843))

(declare-fun m!4882845 () Bool)

(assert (=> b!4287579 m!4882845))

(declare-fun m!4882847 () Bool)

(assert (=> b!4287579 m!4882847))

(declare-fun m!4882849 () Bool)

(assert (=> b!4287579 m!4882849))

(declare-fun m!4882851 () Bool)

(assert (=> b!4287579 m!4882851))

(declare-fun m!4882853 () Bool)

(assert (=> b!4287579 m!4882853))

(declare-fun m!4882855 () Bool)

(assert (=> b!4287579 m!4882855))

(declare-fun m!4882857 () Bool)

(assert (=> b!4287579 m!4882857))

(declare-fun m!4882859 () Bool)

(assert (=> b!4287579 m!4882859))

(declare-fun m!4882861 () Bool)

(assert (=> b!4287579 m!4882861))

(declare-fun m!4882863 () Bool)

(assert (=> b!4287579 m!4882863))

(declare-fun m!4882865 () Bool)

(assert (=> b!4287579 m!4882865))

(declare-fun m!4882867 () Bool)

(assert (=> b!4287579 m!4882867))

(declare-fun m!4882869 () Bool)

(assert (=> b!4287588 m!4882869))

(declare-fun m!4882871 () Bool)

(assert (=> b!4287588 m!4882871))

(declare-fun m!4882873 () Bool)

(assert (=> b!4287567 m!4882873))

(assert (=> b!4287567 m!4882873))

(declare-fun m!4882875 () Bool)

(assert (=> b!4287567 m!4882875))

(declare-fun m!4882877 () Bool)

(assert (=> b!4287567 m!4882877))

(declare-fun m!4882879 () Bool)

(assert (=> b!4287554 m!4882879))

(check-sat (not mapNonEmpty!19589) (not b!4287568) (not b!4287572) b_and!338395 (not b_next!127887) (not mapNonEmpty!19588) (not b!4287552) (not b!4287554) (not b!4287573) (not b!4287581) (not b_next!127879) (not b!4287561) tp_is_empty!23093 b_and!338401 (not b!4287584) (not b!4287575) (not b!4287577) (not b_next!127883) b_and!338397 (not b!4287589) (not b!4287546) (not b!4287551) (not b!4287556) (not b!4287571) (not b!4287566) (not b!4287588) (not b!4287553) (not start!411838) (not b_next!127889) (not b!4287563) (not b!4287565) (not b!4287547) b_and!338391 (not b!4287578) (not b_next!127881) b_and!338399 (not b!4287548) (not b!4287567) (not b!4287557) (not b!4287579) (not b!4287585) (not mapNonEmpty!19587) (not b!4287569) b_and!338393 (not b!4287559) (not b_next!127885) (not b!4287593))
(check-sat (not b_next!127879) b_and!338401 b_and!338395 (not b_next!127887) (not b_next!127889) b_and!338391 b_and!338393 (not b_next!127885) (not b_next!127883) b_and!338397 (not b_next!127881) b_and!338399)
