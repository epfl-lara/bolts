; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208304 () Bool)

(assert start!208304)

(declare-fun b!2147772 () Bool)

(declare-fun b_free!63389 () Bool)

(declare-fun b_next!64093 () Bool)

(assert (=> b!2147772 (= b_free!63389 (not b_next!64093))))

(declare-fun tp!666426 () Bool)

(declare-fun b_and!172981 () Bool)

(assert (=> b!2147772 (= tp!666426 b_and!172981)))

(declare-fun b!2147782 () Bool)

(declare-fun b_free!63391 () Bool)

(declare-fun b_next!64095 () Bool)

(assert (=> b!2147782 (= b_free!63391 (not b_next!64095))))

(declare-fun tp!666429 () Bool)

(declare-fun b_and!172983 () Bool)

(assert (=> b!2147782 (= tp!666429 b_and!172983)))

(declare-fun lt!799668 () Int)

(declare-fun b!2147769 () Bool)

(declare-fun from!960 () Int)

(declare-fun lt!799667 () Bool)

(declare-fun e!1373043 () Bool)

(assert (=> b!2147769 (= e!1373043 (and (>= from!960 0) (<= from!960 lt!799668) (not lt!799667)))))

(declare-datatypes ((array!9615 0))(
  ( (array!9616 (arr!4296 (Array (_ BitVec 32) (_ BitVec 64))) (size!19226 (_ BitVec 32))) )
))
(declare-datatypes ((C!11796 0))(
  ( (C!11797 (val!6884 Int)) )
))
(declare-datatypes ((Regex!5825 0))(
  ( (ElementMatch!5825 (c!340920 C!11796)) (Concat!10127 (regOne!12162 Regex!5825) (regTwo!12162 Regex!5825)) (EmptyExpr!5825) (Star!5825 (reg!6154 Regex!5825)) (EmptyLang!5825) (Union!5825 (regOne!12163 Regex!5825) (regTwo!12163 Regex!5825)) )
))
(declare-datatypes ((List!24632 0))(
  ( (Nil!24548) (Cons!24548 (h!29949 Regex!5825) (t!197168 List!24632)) )
))
(declare-datatypes ((Context!2790 0))(
  ( (Context!2791 (exprs!1895 List!24632)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3582 0))(
  ( (tuple3!3583 (_1!14463 (InoxSet Context!2790)) (_2!14463 Int) (_3!2261 Int)) )
))
(declare-datatypes ((tuple2!24404 0))(
  ( (tuple2!24405 (_1!14464 tuple3!3582) (_2!14464 Int)) )
))
(declare-datatypes ((List!24633 0))(
  ( (Nil!24549) (Cons!24549 (h!29950 tuple2!24404) (t!197169 List!24633)) )
))
(declare-datatypes ((array!9617 0))(
  ( (array!9618 (arr!4297 (Array (_ BitVec 32) List!24633)) (size!19227 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5700 0))(
  ( (LongMapFixedSize!5701 (defaultEntry!3215 Int) (mask!7078 (_ BitVec 32)) (extraKeys!3098 (_ BitVec 32)) (zeroValue!3108 List!24633) (minValue!3108 List!24633) (_size!5751 (_ BitVec 32)) (_keys!3147 array!9615) (_values!3130 array!9617) (_vacant!2911 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11225 0))(
  ( (Cell!11226 (v!29133 LongMapFixedSize!5700)) )
))
(declare-datatypes ((MutLongMap!2850 0))(
  ( (LongMap!2850 (underlying!5895 Cell!11225)) (MutLongMapExt!2849 (__x!16726 Int)) )
))
(declare-datatypes ((Cell!11227 0))(
  ( (Cell!11228 (v!29134 MutLongMap!2850)) )
))
(declare-datatypes ((List!24634 0))(
  ( (Nil!24550) (Cons!24550 (h!29951 C!11796) (t!197170 List!24634)) )
))
(declare-datatypes ((IArray!15927 0))(
  ( (IArray!15928 (innerList!8021 List!24634)) )
))
(declare-datatypes ((Conc!7961 0))(
  ( (Node!7961 (left!18844 Conc!7961) (right!19174 Conc!7961) (csize!16152 Int) (cheight!8172 Int)) (Leaf!11641 (xs!10903 IArray!15927) (csize!16153 Int)) (Empty!7961) )
))
(declare-datatypes ((Hashable!2764 0))(
  ( (HashableExt!2763 (__x!16727 Int)) )
))
(declare-datatypes ((MutableMap!2764 0))(
  ( (MutableMapExt!2763 (__x!16728 Int)) (HashMap!2764 (underlying!5896 Cell!11227) (hashF!4687 Hashable!2764) (_size!5752 (_ BitVec 32)) (defaultValue!2926 Int)) )
))
(declare-datatypes ((BalanceConc!15684 0))(
  ( (BalanceConc!15685 (c!340921 Conc!7961)) )
))
(declare-datatypes ((CacheFurthestNullable!886 0))(
  ( (CacheFurthestNullable!887 (cache!3145 MutableMap!2764) (totalInput!3205 BalanceConc!15684)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!886)

(declare-fun size!19228 (BalanceConc!15684) Int)

(assert (=> b!2147769 (= lt!799668 (size!19228 (totalInput!3205 thiss!29173)))))

(declare-fun b!2147771 () Bool)

(declare-fun e!1373047 () Bool)

(declare-fun tp!666427 () Bool)

(declare-fun mapRes!13520 () Bool)

(assert (=> b!2147771 (= e!1373047 (and tp!666427 mapRes!13520))))

(declare-fun condMapEmpty!13520 () Bool)

(declare-fun mapDefault!13520 () List!24633)

(assert (=> b!2147771 (= condMapEmpty!13520 (= (arr!4297 (_values!3130 (v!29133 (underlying!5895 (v!29134 (underlying!5896 (cache!3145 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24633)) mapDefault!13520)))))

(declare-fun e!1373042 () Bool)

(declare-fun tp!666423 () Bool)

(declare-fun tp!666422 () Bool)

(declare-fun array_inv!3076 (array!9615) Bool)

(declare-fun array_inv!3077 (array!9617) Bool)

(assert (=> b!2147772 (= e!1373042 (and tp!666426 tp!666423 tp!666422 (array_inv!3076 (_keys!3147 (v!29133 (underlying!5895 (v!29134 (underlying!5896 (cache!3145 thiss!29173))))))) (array_inv!3077 (_values!3130 (v!29133 (underlying!5895 (v!29134 (underlying!5896 (cache!3145 thiss!29173))))))) e!1373047))))

(declare-fun setIsEmpty!16909 () Bool)

(declare-fun setRes!16909 () Bool)

(assert (=> setIsEmpty!16909 setRes!16909))

(declare-fun mapNonEmpty!13520 () Bool)

(declare-fun tp!666428 () Bool)

(declare-fun tp!666425 () Bool)

(assert (=> mapNonEmpty!13520 (= mapRes!13520 (and tp!666428 tp!666425))))

(declare-fun mapValue!13520 () List!24633)

(declare-fun mapKey!13520 () (_ BitVec 32))

(declare-fun mapRest!13520 () (Array (_ BitVec 32) List!24633))

(assert (=> mapNonEmpty!13520 (= (arr!4297 (_values!3130 (v!29133 (underlying!5895 (v!29134 (underlying!5896 (cache!3145 thiss!29173))))))) (store mapRest!13520 mapKey!13520 mapValue!13520))))

(declare-fun b!2147773 () Bool)

(declare-fun res!926558 () Bool)

(assert (=> b!2147773 (=> (not res!926558) (not e!1373043))))

(declare-fun lastNullablePos!99 () Int)

(declare-fun z!526 () (InoxSet Context!2790))

(declare-fun contains!4182 (MutableMap!2764 tuple3!3582) Bool)

(assert (=> b!2147773 (= res!926558 (not (contains!4182 (cache!3145 thiss!29173) (tuple3!3583 z!526 from!960 lastNullablePos!99))))))

(declare-fun b!2147774 () Bool)

(declare-fun e!1373040 () Bool)

(declare-fun tp!666431 () Bool)

(assert (=> b!2147774 (= e!1373040 tp!666431)))

(declare-fun setElem!16909 () Context!2790)

(declare-fun tp!666424 () Bool)

(declare-fun setNonEmpty!16909 () Bool)

(declare-fun inv!32304 (Context!2790) Bool)

(assert (=> setNonEmpty!16909 (= setRes!16909 (and tp!666424 (inv!32304 setElem!16909) e!1373040))))

(declare-fun setRest!16909 () (InoxSet Context!2790))

(assert (=> setNonEmpty!16909 (= z!526 ((_ map or) (store ((as const (Array Context!2790 Bool)) false) setElem!16909 true) setRest!16909))))

(declare-fun b!2147775 () Bool)

(declare-fun e!1373038 () Bool)

(assert (=> b!2147775 (= e!1373038 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun mapIsEmpty!13520 () Bool)

(assert (=> mapIsEmpty!13520 mapRes!13520))

(declare-fun b!2147776 () Bool)

(declare-fun res!926560 () Bool)

(assert (=> b!2147776 (=> (not res!926560) (not e!1373043))))

(declare-fun validCacheMapFurthestNullable!126 (MutableMap!2764 BalanceConc!15684) Bool)

(assert (=> b!2147776 (= res!926560 (validCacheMapFurthestNullable!126 (cache!3145 thiss!29173) (totalInput!3205 thiss!29173)))))

(declare-fun b!2147777 () Bool)

(declare-fun e!1373037 () Bool)

(declare-fun tp!666430 () Bool)

(declare-fun inv!32305 (Conc!7961) Bool)

(assert (=> b!2147777 (= e!1373037 (and (inv!32305 (c!340921 (totalInput!3205 thiss!29173))) tp!666430))))

(declare-fun b!2147778 () Bool)

(declare-fun e!1373049 () Bool)

(declare-fun e!1373044 () Bool)

(declare-fun inv!32306 (BalanceConc!15684) Bool)

(assert (=> b!2147778 (= e!1373044 (and e!1373049 (inv!32306 (totalInput!3205 thiss!29173)) e!1373037))))

(declare-fun b!2147779 () Bool)

(declare-fun e!1373039 () Bool)

(declare-fun e!1373045 () Bool)

(assert (=> b!2147779 (= e!1373039 e!1373045)))

(declare-fun b!2147770 () Bool)

(declare-fun res!926562 () Bool)

(assert (=> b!2147770 (=> (not res!926562) (not e!1373043))))

(assert (=> b!2147770 (= res!926562 false)))

(declare-fun res!926561 () Bool)

(declare-fun e!1373041 () Bool)

(assert (=> start!208304 (=> (not res!926561) (not e!1373041))))

(assert (=> start!208304 (= res!926561 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208304 e!1373041))

(assert (=> start!208304 true))

(declare-fun inv!32307 (CacheFurthestNullable!886) Bool)

(assert (=> start!208304 (and (inv!32307 thiss!29173) e!1373044)))

(declare-fun condSetEmpty!16909 () Bool)

(assert (=> start!208304 (= condSetEmpty!16909 (= z!526 ((as const (Array Context!2790 Bool)) false)))))

(assert (=> start!208304 setRes!16909))

(declare-fun b!2147780 () Bool)

(assert (=> b!2147780 (= e!1373041 e!1373043)))

(declare-fun res!926559 () Bool)

(assert (=> b!2147780 (=> (not res!926559) (not e!1373043))))

(assert (=> b!2147780 (= res!926559 lt!799667)))

(assert (=> b!2147780 (= lt!799667 e!1373038)))

(declare-fun res!926557 () Bool)

(assert (=> b!2147780 (=> res!926557 e!1373038)))

(declare-fun nullableZipper!171 ((InoxSet Context!2790)) Bool)

(assert (=> b!2147780 (= res!926557 (not (nullableZipper!171 z!526)))))

(declare-fun b!2147781 () Bool)

(declare-fun e!1373048 () Bool)

(declare-fun lt!799666 () MutLongMap!2850)

(get-info :version)

(assert (=> b!2147781 (= e!1373048 (and e!1373039 ((_ is LongMap!2850) lt!799666)))))

(assert (=> b!2147781 (= lt!799666 (v!29134 (underlying!5896 (cache!3145 thiss!29173))))))

(assert (=> b!2147782 (= e!1373049 (and e!1373048 tp!666429))))

(declare-fun b!2147783 () Bool)

(assert (=> b!2147783 (= e!1373045 e!1373042)))

(assert (= (and start!208304 res!926561) b!2147780))

(assert (= (and b!2147780 (not res!926557)) b!2147775))

(assert (= (and b!2147780 res!926559) b!2147776))

(assert (= (and b!2147776 res!926560) b!2147773))

(assert (= (and b!2147773 res!926558) b!2147770))

(assert (= (and b!2147770 res!926562) b!2147769))

(assert (= (and b!2147771 condMapEmpty!13520) mapIsEmpty!13520))

(assert (= (and b!2147771 (not condMapEmpty!13520)) mapNonEmpty!13520))

(assert (= b!2147772 b!2147771))

(assert (= b!2147783 b!2147772))

(assert (= b!2147779 b!2147783))

(assert (= (and b!2147781 ((_ is LongMap!2850) (v!29134 (underlying!5896 (cache!3145 thiss!29173))))) b!2147779))

(assert (= b!2147782 b!2147781))

(assert (= (and b!2147778 ((_ is HashMap!2764) (cache!3145 thiss!29173))) b!2147782))

(assert (= b!2147778 b!2147777))

(assert (= start!208304 b!2147778))

(assert (= (and start!208304 condSetEmpty!16909) setIsEmpty!16909))

(assert (= (and start!208304 (not condSetEmpty!16909)) setNonEmpty!16909))

(assert (= setNonEmpty!16909 b!2147774))

(declare-fun m!2591018 () Bool)

(assert (=> b!2147776 m!2591018))

(declare-fun m!2591020 () Bool)

(assert (=> b!2147780 m!2591020))

(declare-fun m!2591022 () Bool)

(assert (=> mapNonEmpty!13520 m!2591022))

(declare-fun m!2591024 () Bool)

(assert (=> b!2147769 m!2591024))

(declare-fun m!2591026 () Bool)

(assert (=> b!2147778 m!2591026))

(declare-fun m!2591028 () Bool)

(assert (=> setNonEmpty!16909 m!2591028))

(declare-fun m!2591030 () Bool)

(assert (=> start!208304 m!2591030))

(declare-fun m!2591032 () Bool)

(assert (=> b!2147777 m!2591032))

(declare-fun m!2591034 () Bool)

(assert (=> b!2147773 m!2591034))

(declare-fun m!2591036 () Bool)

(assert (=> b!2147772 m!2591036))

(declare-fun m!2591038 () Bool)

(assert (=> b!2147772 m!2591038))

(check-sat (not b!2147771) (not b!2147772) (not b!2147778) (not b!2147780) b_and!172981 (not b_next!64093) (not b!2147769) (not setNonEmpty!16909) (not b!2147774) (not b!2147773) (not b!2147777) (not start!208304) (not mapNonEmpty!13520) b_and!172983 (not b!2147776) (not b_next!64095))
(check-sat b_and!172983 b_and!172981 (not b_next!64095) (not b_next!64093))
