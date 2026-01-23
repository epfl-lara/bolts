; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208288 () Bool)

(assert start!208288)

(declare-fun b!2147421 () Bool)

(declare-fun b_free!63357 () Bool)

(declare-fun b_next!64061 () Bool)

(assert (=> b!2147421 (= b_free!63357 (not b_next!64061))))

(declare-fun tp!666184 () Bool)

(declare-fun b_and!172949 () Bool)

(assert (=> b!2147421 (= tp!666184 b_and!172949)))

(declare-fun b!2147416 () Bool)

(declare-fun b_free!63359 () Bool)

(declare-fun b_next!64063 () Bool)

(assert (=> b!2147416 (= b_free!63359 (not b_next!64063))))

(declare-fun tp!666187 () Bool)

(declare-fun b_and!172951 () Bool)

(assert (=> b!2147416 (= tp!666187 b_and!172951)))

(declare-fun b!2147413 () Bool)

(declare-fun e!1372747 () Bool)

(declare-fun e!1372748 () Bool)

(assert (=> b!2147413 (= e!1372747 e!1372748)))

(declare-fun res!926417 () Bool)

(assert (=> b!2147413 (=> (not res!926417) (not e!1372748))))

(declare-fun from!960 () Int)

(declare-fun lt!799620 () Int)

(assert (=> b!2147413 (= res!926417 (<= from!960 lt!799620))))

(declare-datatypes ((array!9583 0))(
  ( (array!9584 (arr!4280 (Array (_ BitVec 32) (_ BitVec 64))) (size!19205 (_ BitVec 32))) )
))
(declare-datatypes ((C!11780 0))(
  ( (C!11781 (val!6876 Int)) )
))
(declare-datatypes ((Regex!5817 0))(
  ( (ElementMatch!5817 (c!340904 C!11780)) (Concat!10119 (regOne!12146 Regex!5817) (regTwo!12146 Regex!5817)) (EmptyExpr!5817) (Star!5817 (reg!6146 Regex!5817)) (EmptyLang!5817) (Union!5817 (regOne!12147 Regex!5817) (regTwo!12147 Regex!5817)) )
))
(declare-datatypes ((List!24608 0))(
  ( (Nil!24524) (Cons!24524 (h!29925 Regex!5817) (t!197144 List!24608)) )
))
(declare-datatypes ((Context!2774 0))(
  ( (Context!2775 (exprs!1887 List!24608)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3566 0))(
  ( (tuple3!3567 (_1!14447 (InoxSet Context!2774)) (_2!14447 Int) (_3!2253 Int)) )
))
(declare-datatypes ((tuple2!24388 0))(
  ( (tuple2!24389 (_1!14448 tuple3!3566) (_2!14448 Int)) )
))
(declare-datatypes ((List!24609 0))(
  ( (Nil!24525) (Cons!24525 (h!29926 tuple2!24388) (t!197145 List!24609)) )
))
(declare-datatypes ((array!9585 0))(
  ( (array!9586 (arr!4281 (Array (_ BitVec 32) List!24609)) (size!19206 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5684 0))(
  ( (LongMapFixedSize!5685 (defaultEntry!3207 Int) (mask!7066 (_ BitVec 32)) (extraKeys!3090 (_ BitVec 32)) (zeroValue!3100 List!24609) (minValue!3100 List!24609) (_size!5735 (_ BitVec 32)) (_keys!3139 array!9583) (_values!3122 array!9585) (_vacant!2903 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11193 0))(
  ( (Cell!11194 (v!29116 LongMapFixedSize!5684)) )
))
(declare-datatypes ((MutLongMap!2842 0))(
  ( (LongMap!2842 (underlying!5879 Cell!11193)) (MutLongMapExt!2841 (__x!16702 Int)) )
))
(declare-datatypes ((Cell!11195 0))(
  ( (Cell!11196 (v!29117 MutLongMap!2842)) )
))
(declare-datatypes ((List!24610 0))(
  ( (Nil!24526) (Cons!24526 (h!29927 C!11780) (t!197146 List!24610)) )
))
(declare-datatypes ((IArray!15911 0))(
  ( (IArray!15912 (innerList!8013 List!24610)) )
))
(declare-datatypes ((Conc!7953 0))(
  ( (Node!7953 (left!18832 Conc!7953) (right!19162 Conc!7953) (csize!16136 Int) (cheight!8164 Int)) (Leaf!11629 (xs!10895 IArray!15911) (csize!16137 Int)) (Empty!7953) )
))
(declare-datatypes ((Hashable!2756 0))(
  ( (HashableExt!2755 (__x!16703 Int)) )
))
(declare-datatypes ((MutableMap!2756 0))(
  ( (MutableMapExt!2755 (__x!16704 Int)) (HashMap!2756 (underlying!5880 Cell!11195) (hashF!4679 Hashable!2756) (_size!5736 (_ BitVec 32)) (defaultValue!2918 Int)) )
))
(declare-datatypes ((BalanceConc!15668 0))(
  ( (BalanceConc!15669 (c!340905 Conc!7953)) )
))
(declare-datatypes ((CacheFurthestNullable!870 0))(
  ( (CacheFurthestNullable!871 (cache!3137 MutableMap!2756) (totalInput!3197 BalanceConc!15668)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!870)

(declare-fun size!19207 (BalanceConc!15668) Int)

(assert (=> b!2147413 (= lt!799620 (size!19207 (totalInput!3197 thiss!29173)))))

(declare-fun b!2147414 () Bool)

(declare-fun e!1372739 () Bool)

(declare-fun tp!666190 () Bool)

(declare-fun inv!32269 (Conc!7953) Bool)

(assert (=> b!2147414 (= e!1372739 (and (inv!32269 (c!340905 (totalInput!3197 thiss!29173))) tp!666190))))

(declare-fun b!2147415 () Bool)

(declare-fun e!1372754 () Bool)

(declare-fun lastNullablePos!99 () Int)

(assert (=> b!2147415 (= e!1372754 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun e!1372744 () Bool)

(declare-fun e!1372751 () Bool)

(assert (=> b!2147416 (= e!1372744 (and e!1372751 tp!666187))))

(declare-fun b!2147417 () Bool)

(declare-fun e!1372740 () Bool)

(declare-fun e!1372753 () Bool)

(assert (=> b!2147417 (= e!1372740 (not e!1372753))))

(declare-fun res!926418 () Bool)

(assert (=> b!2147417 (=> res!926418 e!1372753)))

(declare-fun lt!799616 () tuple3!3566)

(declare-datatypes ((Option!4968 0))(
  ( (None!4967) (Some!4967 (v!29118 Int)) )
))
(declare-fun isEmpty!14344 (Option!4968) Bool)

(declare-fun apply!5999 (MutableMap!2756 tuple3!3566) Int)

(assert (=> b!2147417 (= res!926418 (isEmpty!14344 (Some!4967 (apply!5999 (cache!3137 thiss!29173) lt!799616))))))

(assert (=> b!2147417 e!1372747))

(declare-fun res!926421 () Bool)

(assert (=> b!2147417 (=> (not res!926421) (not e!1372747))))

(assert (=> b!2147417 (= res!926421 (>= from!960 0))))

(declare-datatypes ((Unit!37757 0))(
  ( (Unit!37758) )
))
(declare-fun lt!799619 () Unit!37757)

(declare-fun z!526 () (InoxSet Context!2774))

(declare-fun lemmaIfInCacheThenValid!14 (CacheFurthestNullable!870 (InoxSet Context!2774) Int Int BalanceConc!15668) Unit!37757)

(assert (=> b!2147417 (= lt!799619 (lemmaIfInCacheThenValid!14 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3197 thiss!29173)))))

(declare-fun b!2147418 () Bool)

(declare-fun e!1372752 () Bool)

(declare-fun tp!666186 () Bool)

(declare-fun mapRes!13496 () Bool)

(assert (=> b!2147418 (= e!1372752 (and tp!666186 mapRes!13496))))

(declare-fun condMapEmpty!13496 () Bool)

(declare-fun mapDefault!13496 () List!24609)

(assert (=> b!2147418 (= condMapEmpty!13496 (= (arr!4281 (_values!3122 (v!29116 (underlying!5879 (v!29117 (underlying!5880 (cache!3137 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24609)) mapDefault!13496)))))

(declare-fun b!2147419 () Bool)

(declare-fun e!1372741 () Bool)

(declare-fun inv!32270 (BalanceConc!15668) Bool)

(assert (=> b!2147419 (= e!1372741 (and e!1372744 (inv!32270 (totalInput!3197 thiss!29173)) e!1372739))))

(declare-fun mapNonEmpty!13496 () Bool)

(declare-fun tp!666189 () Bool)

(declare-fun tp!666182 () Bool)

(assert (=> mapNonEmpty!13496 (= mapRes!13496 (and tp!666189 tp!666182))))

(declare-fun mapValue!13496 () List!24609)

(declare-fun mapRest!13496 () (Array (_ BitVec 32) List!24609))

(declare-fun mapKey!13496 () (_ BitVec 32))

(assert (=> mapNonEmpty!13496 (= (arr!4281 (_values!3122 (v!29116 (underlying!5879 (v!29117 (underlying!5880 (cache!3137 thiss!29173))))))) (store mapRest!13496 mapKey!13496 mapValue!13496))))

(declare-fun tp!666183 () Bool)

(declare-fun tp!666188 () Bool)

(declare-fun e!1372749 () Bool)

(declare-fun array_inv!3064 (array!9583) Bool)

(declare-fun array_inv!3065 (array!9585) Bool)

(assert (=> b!2147421 (= e!1372749 (and tp!666184 tp!666183 tp!666188 (array_inv!3064 (_keys!3139 (v!29116 (underlying!5879 (v!29117 (underlying!5880 (cache!3137 thiss!29173))))))) (array_inv!3065 (_values!3122 (v!29116 (underlying!5879 (v!29117 (underlying!5880 (cache!3137 thiss!29173))))))) e!1372752))))

(declare-fun lt!799618 () Int)

(declare-fun b!2147422 () Bool)

(declare-fun lt!799615 () Bool)

(assert (=> b!2147422 (= e!1372753 (or (< from!960 0) (> from!960 lt!799618) lt!799615))))

(assert (=> b!2147422 (= lt!799618 (size!19207 (totalInput!3197 thiss!29173)))))

(declare-fun tp!666191 () Bool)

(declare-fun setNonEmpty!16885 () Bool)

(declare-fun e!1372750 () Bool)

(declare-fun setRes!16885 () Bool)

(declare-fun setElem!16885 () Context!2774)

(declare-fun inv!32271 (Context!2774) Bool)

(assert (=> setNonEmpty!16885 (= setRes!16885 (and tp!666191 (inv!32271 setElem!16885) e!1372750))))

(declare-fun setRest!16885 () (InoxSet Context!2774))

(assert (=> setNonEmpty!16885 (= z!526 ((_ map or) (store ((as const (Array Context!2774 Bool)) false) setElem!16885 true) setRest!16885))))

(declare-fun b!2147423 () Bool)

(declare-fun e!1372746 () Bool)

(assert (=> b!2147423 (= e!1372746 e!1372749)))

(declare-fun b!2147424 () Bool)

(declare-fun e!1372745 () Bool)

(declare-fun lt!799617 () MutLongMap!2842)

(get-info :version)

(assert (=> b!2147424 (= e!1372751 (and e!1372745 ((_ is LongMap!2842) lt!799617)))))

(assert (=> b!2147424 (= lt!799617 (v!29117 (underlying!5880 (cache!3137 thiss!29173))))))

(declare-fun mapIsEmpty!13496 () Bool)

(assert (=> mapIsEmpty!13496 mapRes!13496))

(declare-fun b!2147425 () Bool)

(declare-fun e!1372743 () Bool)

(declare-fun e!1372755 () Bool)

(assert (=> b!2147425 (= e!1372743 e!1372755)))

(declare-fun res!926420 () Bool)

(assert (=> b!2147425 (=> (not res!926420) (not e!1372755))))

(assert (=> b!2147425 (= res!926420 lt!799615)))

(assert (=> b!2147425 (= lt!799615 e!1372754)))

(declare-fun res!926419 () Bool)

(assert (=> b!2147425 (=> res!926419 e!1372754)))

(declare-fun nullableZipper!166 ((InoxSet Context!2774)) Bool)

(assert (=> b!2147425 (= res!926419 (not (nullableZipper!166 z!526)))))

(declare-fun res!926423 () Bool)

(assert (=> start!208288 (=> (not res!926423) (not e!1372743))))

(assert (=> start!208288 (= res!926423 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208288 e!1372743))

(assert (=> start!208288 true))

(declare-fun inv!32272 (CacheFurthestNullable!870) Bool)

(assert (=> start!208288 (and (inv!32272 thiss!29173) e!1372741)))

(declare-fun condSetEmpty!16885 () Bool)

(assert (=> start!208288 (= condSetEmpty!16885 (= z!526 ((as const (Array Context!2774 Bool)) false)))))

(assert (=> start!208288 setRes!16885))

(declare-fun b!2147420 () Bool)

(declare-fun tp!666185 () Bool)

(assert (=> b!2147420 (= e!1372750 tp!666185)))

(declare-fun b!2147426 () Bool)

(assert (=> b!2147426 (= e!1372745 e!1372746)))

(declare-fun b!2147427 () Bool)

(assert (=> b!2147427 (= e!1372755 e!1372740)))

(declare-fun res!926422 () Bool)

(assert (=> b!2147427 (=> (not res!926422) (not e!1372740))))

(declare-fun contains!4175 (MutableMap!2756 tuple3!3566) Bool)

(assert (=> b!2147427 (= res!926422 (contains!4175 (cache!3137 thiss!29173) lt!799616))))

(assert (=> b!2147427 (= lt!799616 (tuple3!3567 z!526 from!960 lastNullablePos!99))))

(declare-fun setIsEmpty!16885 () Bool)

(assert (=> setIsEmpty!16885 setRes!16885))

(declare-fun b!2147428 () Bool)

(declare-fun furthestNullablePosition!102 ((InoxSet Context!2774) Int BalanceConc!15668 Int Int) Int)

(assert (=> b!2147428 (= e!1372748 (= (furthestNullablePosition!102 z!526 from!960 (totalInput!3197 thiss!29173) lt!799620 lastNullablePos!99) (apply!5999 (cache!3137 thiss!29173) lt!799616)))))

(declare-fun b!2147429 () Bool)

(declare-fun res!926424 () Bool)

(assert (=> b!2147429 (=> (not res!926424) (not e!1372755))))

(declare-fun validCacheMapFurthestNullable!120 (MutableMap!2756 BalanceConc!15668) Bool)

(assert (=> b!2147429 (= res!926424 (validCacheMapFurthestNullable!120 (cache!3137 thiss!29173) (totalInput!3197 thiss!29173)))))

(assert (= (and start!208288 res!926423) b!2147425))

(assert (= (and b!2147425 (not res!926419)) b!2147415))

(assert (= (and b!2147425 res!926420) b!2147429))

(assert (= (and b!2147429 res!926424) b!2147427))

(assert (= (and b!2147427 res!926422) b!2147417))

(assert (= (and b!2147417 res!926421) b!2147413))

(assert (= (and b!2147413 res!926417) b!2147428))

(assert (= (and b!2147417 (not res!926418)) b!2147422))

(assert (= (and b!2147418 condMapEmpty!13496) mapIsEmpty!13496))

(assert (= (and b!2147418 (not condMapEmpty!13496)) mapNonEmpty!13496))

(assert (= b!2147421 b!2147418))

(assert (= b!2147423 b!2147421))

(assert (= b!2147426 b!2147423))

(assert (= (and b!2147424 ((_ is LongMap!2842) (v!29117 (underlying!5880 (cache!3137 thiss!29173))))) b!2147426))

(assert (= b!2147416 b!2147424))

(assert (= (and b!2147419 ((_ is HashMap!2756) (cache!3137 thiss!29173))) b!2147416))

(assert (= b!2147419 b!2147414))

(assert (= start!208288 b!2147419))

(assert (= (and start!208288 condSetEmpty!16885) setIsEmpty!16885))

(assert (= (and start!208288 (not condSetEmpty!16885)) setNonEmpty!16885))

(assert (= setNonEmpty!16885 b!2147420))

(declare-fun m!2590838 () Bool)

(assert (=> b!2147428 m!2590838))

(declare-fun m!2590840 () Bool)

(assert (=> b!2147428 m!2590840))

(declare-fun m!2590842 () Bool)

(assert (=> start!208288 m!2590842))

(declare-fun m!2590844 () Bool)

(assert (=> b!2147427 m!2590844))

(declare-fun m!2590846 () Bool)

(assert (=> b!2147422 m!2590846))

(declare-fun m!2590848 () Bool)

(assert (=> b!2147425 m!2590848))

(declare-fun m!2590850 () Bool)

(assert (=> b!2147419 m!2590850))

(assert (=> b!2147417 m!2590840))

(declare-fun m!2590852 () Bool)

(assert (=> b!2147417 m!2590852))

(declare-fun m!2590854 () Bool)

(assert (=> b!2147417 m!2590854))

(declare-fun m!2590856 () Bool)

(assert (=> b!2147429 m!2590856))

(declare-fun m!2590858 () Bool)

(assert (=> setNonEmpty!16885 m!2590858))

(declare-fun m!2590860 () Bool)

(assert (=> b!2147414 m!2590860))

(declare-fun m!2590862 () Bool)

(assert (=> b!2147421 m!2590862))

(declare-fun m!2590864 () Bool)

(assert (=> b!2147421 m!2590864))

(assert (=> b!2147413 m!2590846))

(declare-fun m!2590866 () Bool)

(assert (=> mapNonEmpty!13496 m!2590866))

(check-sat b_and!172951 (not b!2147421) (not b!2147418) (not b!2147417) b_and!172949 (not b!2147425) (not b!2147419) (not b!2147427) (not b_next!64063) (not b_next!64061) (not b!2147414) (not b!2147428) (not mapNonEmpty!13496) (not b!2147420) (not start!208288) (not b!2147422) (not setNonEmpty!16885) (not b!2147429) (not b!2147413))
(check-sat b_and!172951 b_and!172949 (not b_next!64063) (not b_next!64061))
