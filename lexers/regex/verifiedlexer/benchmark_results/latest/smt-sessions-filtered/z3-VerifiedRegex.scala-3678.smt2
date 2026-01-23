; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208300 () Bool)

(assert start!208300)

(declare-fun b!2147683 () Bool)

(declare-fun b_free!63381 () Bool)

(declare-fun b_next!64085 () Bool)

(assert (=> b!2147683 (= b_free!63381 (not b_next!64085))))

(declare-fun tp!666368 () Bool)

(declare-fun b_and!172973 () Bool)

(assert (=> b!2147683 (= tp!666368 b_and!172973)))

(declare-fun b!2147686 () Bool)

(declare-fun b_free!63383 () Bool)

(declare-fun b_next!64087 () Bool)

(assert (=> b!2147686 (= b_free!63383 (not b_next!64087))))

(declare-fun tp!666370 () Bool)

(declare-fun b_and!172975 () Bool)

(assert (=> b!2147686 (= tp!666370 b_and!172975)))

(declare-fun b!2147679 () Bool)

(declare-fun e!1372968 () Bool)

(declare-fun tp!666367 () Bool)

(assert (=> b!2147679 (= e!1372968 tp!666367)))

(declare-fun mapIsEmpty!13514 () Bool)

(declare-fun mapRes!13514 () Bool)

(assert (=> mapIsEmpty!13514 mapRes!13514))

(declare-fun b!2147680 () Bool)

(declare-fun e!1372964 () Bool)

(declare-fun e!1372970 () Bool)

(declare-datatypes ((C!11792 0))(
  ( (C!11793 (val!6882 Int)) )
))
(declare-datatypes ((Regex!5823 0))(
  ( (ElementMatch!5823 (c!340916 C!11792)) (Concat!10125 (regOne!12158 Regex!5823) (regTwo!12158 Regex!5823)) (EmptyExpr!5823) (Star!5823 (reg!6152 Regex!5823)) (EmptyLang!5823) (Union!5823 (regOne!12159 Regex!5823) (regTwo!12159 Regex!5823)) )
))
(declare-datatypes ((List!24626 0))(
  ( (Nil!24542) (Cons!24542 (h!29943 Regex!5823) (t!197162 List!24626)) )
))
(declare-datatypes ((Context!2786 0))(
  ( (Context!2787 (exprs!1893 List!24626)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3578 0))(
  ( (tuple3!3579 (_1!14459 (InoxSet Context!2786)) (_2!14459 Int) (_3!2259 Int)) )
))
(declare-datatypes ((tuple2!24400 0))(
  ( (tuple2!24401 (_1!14460 tuple3!3578) (_2!14460 Int)) )
))
(declare-datatypes ((List!24627 0))(
  ( (Nil!24543) (Cons!24543 (h!29944 tuple2!24400) (t!197163 List!24627)) )
))
(declare-datatypes ((array!9607 0))(
  ( (array!9608 (arr!4292 (Array (_ BitVec 32) (_ BitVec 64))) (size!19221 (_ BitVec 32))) )
))
(declare-datatypes ((array!9609 0))(
  ( (array!9610 (arr!4293 (Array (_ BitVec 32) List!24627)) (size!19222 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5696 0))(
  ( (LongMapFixedSize!5697 (defaultEntry!3213 Int) (mask!7075 (_ BitVec 32)) (extraKeys!3096 (_ BitVec 32)) (zeroValue!3106 List!24627) (minValue!3106 List!24627) (_size!5747 (_ BitVec 32)) (_keys!3145 array!9607) (_values!3128 array!9609) (_vacant!2909 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11217 0))(
  ( (Cell!11218 (v!29129 LongMapFixedSize!5696)) )
))
(declare-datatypes ((MutLongMap!2848 0))(
  ( (LongMap!2848 (underlying!5891 Cell!11217)) (MutLongMapExt!2847 (__x!16720 Int)) )
))
(declare-fun lt!799650 () MutLongMap!2848)

(get-info :version)

(assert (=> b!2147680 (= e!1372964 (and e!1372970 ((_ is LongMap!2848) lt!799650)))))

(declare-datatypes ((Cell!11219 0))(
  ( (Cell!11220 (v!29130 MutLongMap!2848)) )
))
(declare-datatypes ((List!24628 0))(
  ( (Nil!24544) (Cons!24544 (h!29945 C!11792) (t!197164 List!24628)) )
))
(declare-datatypes ((IArray!15923 0))(
  ( (IArray!15924 (innerList!8019 List!24628)) )
))
(declare-datatypes ((Conc!7959 0))(
  ( (Node!7959 (left!18841 Conc!7959) (right!19171 Conc!7959) (csize!16148 Int) (cheight!8170 Int)) (Leaf!11638 (xs!10901 IArray!15923) (csize!16149 Int)) (Empty!7959) )
))
(declare-datatypes ((Hashable!2762 0))(
  ( (HashableExt!2761 (__x!16721 Int)) )
))
(declare-datatypes ((MutableMap!2762 0))(
  ( (MutableMapExt!2761 (__x!16722 Int)) (HashMap!2762 (underlying!5892 Cell!11219) (hashF!4685 Hashable!2762) (_size!5748 (_ BitVec 32)) (defaultValue!2924 Int)) )
))
(declare-datatypes ((BalanceConc!15680 0))(
  ( (BalanceConc!15681 (c!340917 Conc!7959)) )
))
(declare-datatypes ((CacheFurthestNullable!882 0))(
  ( (CacheFurthestNullable!883 (cache!3143 MutableMap!2762) (totalInput!3203 BalanceConc!15680)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!882)

(assert (=> b!2147680 (= lt!799650 (v!29130 (underlying!5892 (cache!3143 thiss!29173))))))

(declare-fun b!2147681 () Bool)

(declare-fun e!1372966 () Bool)

(assert (=> b!2147681 (= e!1372970 e!1372966)))

(declare-fun mapNonEmpty!13514 () Bool)

(declare-fun tp!666366 () Bool)

(declare-fun tp!666363 () Bool)

(assert (=> mapNonEmpty!13514 (= mapRes!13514 (and tp!666366 tp!666363))))

(declare-fun mapValue!13514 () List!24627)

(declare-fun mapRest!13514 () (Array (_ BitVec 32) List!24627))

(declare-fun mapKey!13514 () (_ BitVec 32))

(assert (=> mapNonEmpty!13514 (= (arr!4293 (_values!3128 (v!29129 (underlying!5891 (v!29130 (underlying!5892 (cache!3143 thiss!29173))))))) (store mapRest!13514 mapKey!13514 mapValue!13514))))

(declare-fun res!926525 () Bool)

(declare-fun e!1372961 () Bool)

(assert (=> start!208300 (=> (not res!926525) (not e!1372961))))

(declare-fun lastNullablePos!99 () Int)

(declare-fun from!960 () Int)

(assert (=> start!208300 (= res!926525 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208300 e!1372961))

(assert (=> start!208300 true))

(declare-fun condSetEmpty!16903 () Bool)

(declare-fun z!526 () (InoxSet Context!2786))

(assert (=> start!208300 (= condSetEmpty!16903 (= z!526 ((as const (Array Context!2786 Bool)) false)))))

(declare-fun setRes!16903 () Bool)

(assert (=> start!208300 setRes!16903))

(declare-fun e!1372960 () Bool)

(declare-fun inv!32297 (CacheFurthestNullable!882) Bool)

(assert (=> start!208300 (and (inv!32297 thiss!29173) e!1372960)))

(declare-fun setElem!16903 () Context!2786)

(declare-fun setNonEmpty!16903 () Bool)

(declare-fun tp!666362 () Bool)

(declare-fun inv!32298 (Context!2786) Bool)

(assert (=> setNonEmpty!16903 (= setRes!16903 (and tp!666362 (inv!32298 setElem!16903) e!1372968))))

(declare-fun setRest!16903 () (InoxSet Context!2786))

(assert (=> setNonEmpty!16903 (= z!526 ((_ map or) (store ((as const (Array Context!2786 Bool)) false) setElem!16903 true) setRest!16903))))

(declare-fun b!2147682 () Bool)

(declare-fun res!926523 () Bool)

(assert (=> b!2147682 (=> (not res!926523) (not e!1372961))))

(declare-fun validCacheMapFurthestNullable!125 (MutableMap!2762 BalanceConc!15680) Bool)

(assert (=> b!2147682 (= res!926523 (validCacheMapFurthestNullable!125 (cache!3143 thiss!29173) (totalInput!3203 thiss!29173)))))

(declare-fun e!1372965 () Bool)

(assert (=> b!2147683 (= e!1372965 (and e!1372964 tp!666368))))

(declare-fun b!2147684 () Bool)

(declare-fun res!926521 () Bool)

(assert (=> b!2147684 (=> (not res!926521) (not e!1372961))))

(declare-fun e!1372971 () Bool)

(assert (=> b!2147684 (= res!926521 e!1372971)))

(declare-fun res!926526 () Bool)

(assert (=> b!2147684 (=> res!926526 e!1372971)))

(declare-fun nullableZipper!170 ((InoxSet Context!2786)) Bool)

(assert (=> b!2147684 (= res!926526 (not (nullableZipper!170 z!526)))))

(declare-fun b!2147685 () Bool)

(assert (=> b!2147685 (= e!1372961 false)))

(declare-fun lt!799649 () Int)

(declare-fun size!19223 (BalanceConc!15680) Int)

(assert (=> b!2147685 (= lt!799649 (size!19223 (totalInput!3203 thiss!29173)))))

(declare-fun setIsEmpty!16903 () Bool)

(assert (=> setIsEmpty!16903 setRes!16903))

(declare-fun e!1372969 () Bool)

(declare-fun tp!666364 () Bool)

(declare-fun e!1372963 () Bool)

(declare-fun tp!666371 () Bool)

(declare-fun array_inv!3074 (array!9607) Bool)

(declare-fun array_inv!3075 (array!9609) Bool)

(assert (=> b!2147686 (= e!1372969 (and tp!666370 tp!666371 tp!666364 (array_inv!3074 (_keys!3145 (v!29129 (underlying!5891 (v!29130 (underlying!5892 (cache!3143 thiss!29173))))))) (array_inv!3075 (_values!3128 (v!29129 (underlying!5891 (v!29130 (underlying!5892 (cache!3143 thiss!29173))))))) e!1372963))))

(declare-fun b!2147687 () Bool)

(declare-fun res!926524 () Bool)

(assert (=> b!2147687 (=> (not res!926524) (not e!1372961))))

(declare-fun contains!4180 (MutableMap!2762 tuple3!3578) Bool)

(assert (=> b!2147687 (= res!926524 (not (contains!4180 (cache!3143 thiss!29173) (tuple3!3579 z!526 from!960 lastNullablePos!99))))))

(declare-fun b!2147688 () Bool)

(declare-fun e!1372967 () Bool)

(declare-fun tp!666369 () Bool)

(declare-fun inv!32299 (Conc!7959) Bool)

(assert (=> b!2147688 (= e!1372967 (and (inv!32299 (c!340917 (totalInput!3203 thiss!29173))) tp!666369))))

(declare-fun b!2147689 () Bool)

(declare-fun tp!666365 () Bool)

(assert (=> b!2147689 (= e!1372963 (and tp!666365 mapRes!13514))))

(declare-fun condMapEmpty!13514 () Bool)

(declare-fun mapDefault!13514 () List!24627)

(assert (=> b!2147689 (= condMapEmpty!13514 (= (arr!4293 (_values!3128 (v!29129 (underlying!5891 (v!29130 (underlying!5892 (cache!3143 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24627)) mapDefault!13514)))))

(declare-fun b!2147690 () Bool)

(declare-fun inv!32300 (BalanceConc!15680) Bool)

(assert (=> b!2147690 (= e!1372960 (and e!1372965 (inv!32300 (totalInput!3203 thiss!29173)) e!1372967))))

(declare-fun b!2147691 () Bool)

(assert (=> b!2147691 (= e!1372971 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun b!2147692 () Bool)

(assert (=> b!2147692 (= e!1372966 e!1372969)))

(declare-fun b!2147693 () Bool)

(declare-fun res!926522 () Bool)

(assert (=> b!2147693 (=> (not res!926522) (not e!1372961))))

(assert (=> b!2147693 (= res!926522 false)))

(assert (= (and start!208300 res!926525) b!2147684))

(assert (= (and b!2147684 (not res!926526)) b!2147691))

(assert (= (and b!2147684 res!926521) b!2147682))

(assert (= (and b!2147682 res!926523) b!2147687))

(assert (= (and b!2147687 res!926524) b!2147693))

(assert (= (and b!2147693 res!926522) b!2147685))

(assert (= (and start!208300 condSetEmpty!16903) setIsEmpty!16903))

(assert (= (and start!208300 (not condSetEmpty!16903)) setNonEmpty!16903))

(assert (= setNonEmpty!16903 b!2147679))

(assert (= (and b!2147689 condMapEmpty!13514) mapIsEmpty!13514))

(assert (= (and b!2147689 (not condMapEmpty!13514)) mapNonEmpty!13514))

(assert (= b!2147686 b!2147689))

(assert (= b!2147692 b!2147686))

(assert (= b!2147681 b!2147692))

(assert (= (and b!2147680 ((_ is LongMap!2848) (v!29130 (underlying!5892 (cache!3143 thiss!29173))))) b!2147681))

(assert (= b!2147683 b!2147680))

(assert (= (and b!2147690 ((_ is HashMap!2762) (cache!3143 thiss!29173))) b!2147683))

(assert (= b!2147690 b!2147688))

(assert (= start!208300 b!2147690))

(declare-fun m!2590974 () Bool)

(assert (=> setNonEmpty!16903 m!2590974))

(declare-fun m!2590976 () Bool)

(assert (=> b!2147684 m!2590976))

(declare-fun m!2590978 () Bool)

(assert (=> b!2147688 m!2590978))

(declare-fun m!2590980 () Bool)

(assert (=> mapNonEmpty!13514 m!2590980))

(declare-fun m!2590982 () Bool)

(assert (=> b!2147690 m!2590982))

(declare-fun m!2590984 () Bool)

(assert (=> start!208300 m!2590984))

(declare-fun m!2590986 () Bool)

(assert (=> b!2147682 m!2590986))

(declare-fun m!2590988 () Bool)

(assert (=> b!2147685 m!2590988))

(declare-fun m!2590990 () Bool)

(assert (=> b!2147686 m!2590990))

(declare-fun m!2590992 () Bool)

(assert (=> b!2147686 m!2590992))

(declare-fun m!2590994 () Bool)

(assert (=> b!2147687 m!2590994))

(check-sat (not b!2147684) (not b!2147689) (not b_next!64087) (not b!2147687) (not b!2147685) (not b!2147686) b_and!172975 (not b!2147679) (not b!2147682) (not b!2147690) (not b!2147688) (not mapNonEmpty!13514) (not b_next!64085) (not start!208300) b_and!172973 (not setNonEmpty!16903))
(check-sat b_and!172973 b_and!172975 (not b_next!64085) (not b_next!64087))
