; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266632 () Bool)

(assert start!266632)

(declare-fun b!2750764 () Bool)

(declare-fun b_free!77797 () Bool)

(declare-fun b_next!78501 () Bool)

(assert (=> b!2750764 (= b_free!77797 (not b_next!78501))))

(declare-fun tp!868792 () Bool)

(declare-fun b_and!202535 () Bool)

(assert (=> b!2750764 (= tp!868792 b_and!202535)))

(declare-fun b!2750765 () Bool)

(declare-fun b_free!77799 () Bool)

(declare-fun b_next!78503 () Bool)

(assert (=> b!2750765 (= b_free!77799 (not b_next!78503))))

(declare-fun tp!868785 () Bool)

(declare-fun b_and!202537 () Bool)

(assert (=> b!2750765 (= tp!868785 b_and!202537)))

(declare-fun b!2750759 () Bool)

(declare-fun b_free!77801 () Bool)

(declare-fun b_next!78505 () Bool)

(assert (=> b!2750759 (= b_free!77801 (not b_next!78505))))

(declare-fun tp!868791 () Bool)

(declare-fun b_and!202539 () Bool)

(assert (=> b!2750759 (= tp!868791 b_and!202539)))

(declare-fun b!2750768 () Bool)

(declare-fun b_free!77803 () Bool)

(declare-fun b_next!78507 () Bool)

(assert (=> b!2750768 (= b_free!77803 (not b_next!78507))))

(declare-fun tp!868790 () Bool)

(declare-fun b_and!202541 () Bool)

(assert (=> b!2750768 (= tp!868790 b_and!202541)))

(declare-fun b!2750754 () Bool)

(declare-fun e!1734073 () Bool)

(declare-fun e!1734079 () Bool)

(assert (=> b!2750754 (= e!1734073 e!1734079)))

(declare-fun b!2750755 () Bool)

(declare-fun e!1734074 () Bool)

(declare-datatypes ((C!16240 0))(
  ( (C!16241 (val!10054 Int)) )
))
(declare-datatypes ((Regex!8041 0))(
  ( (ElementMatch!8041 (c!445080 C!16240)) (Concat!13129 (regOne!16594 Regex!8041) (regTwo!16594 Regex!8041)) (EmptyExpr!8041) (Star!8041 (reg!8370 Regex!8041)) (EmptyLang!8041) (Union!8041 (regOne!16595 Regex!8041) (regTwo!16595 Regex!8041)) )
))
(declare-datatypes ((List!31909 0))(
  ( (Nil!31809) (Cons!31809 (h!37229 Regex!8041) (t!228013 List!31909)) )
))
(declare-datatypes ((Context!4518 0))(
  ( (Context!4519 (exprs!2759 List!31909)) )
))
(declare-datatypes ((tuple2!31758 0))(
  ( (tuple2!31759 (_1!18620 Context!4518) (_2!18620 C!16240)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31760 0))(
  ( (tuple2!31761 (_1!18621 tuple2!31758) (_2!18621 (InoxSet Context!4518))) )
))
(declare-datatypes ((List!31910 0))(
  ( (Nil!31810) (Cons!31810 (h!37230 tuple2!31760) (t!228014 List!31910)) )
))
(declare-datatypes ((array!13138 0))(
  ( (array!13139 (arr!5864 (Array (_ BitVec 32) List!31910)) (size!24565 (_ BitVec 32))) )
))
(declare-datatypes ((array!13140 0))(
  ( (array!13141 (arr!5865 (Array (_ BitVec 32) (_ BitVec 64))) (size!24566 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7380 0))(
  ( (LongMapFixedSize!7381 (defaultEntry!4075 Int) (mask!9447 (_ BitVec 32)) (extraKeys!3939 (_ BitVec 32)) (zeroValue!3949 List!31910) (minValue!3949 List!31910) (_size!7423 (_ BitVec 32)) (_keys!3990 array!13140) (_values!3971 array!13138) (_vacant!3751 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14569 0))(
  ( (Cell!14570 (v!33419 LongMapFixedSize!7380)) )
))
(declare-datatypes ((MutLongMap!3690 0))(
  ( (LongMap!3690 (underlying!7583 Cell!14569)) (MutLongMapExt!3689 (__x!20720 Int)) )
))
(declare-fun lt!972669 () MutLongMap!3690)

(get-info :version)

(assert (=> b!2750755 (= e!1734074 (and e!1734073 ((_ is LongMap!3690) lt!972669)))))

(declare-datatypes ((Hashable!3606 0))(
  ( (HashableExt!3605 (__x!20721 Int)) )
))
(declare-datatypes ((Cell!14571 0))(
  ( (Cell!14572 (v!33420 MutLongMap!3690)) )
))
(declare-datatypes ((MutableMap!3596 0))(
  ( (MutableMapExt!3595 (__x!20722 Int)) (HashMap!3596 (underlying!7584 Cell!14571) (hashF!5638 Hashable!3606) (_size!7424 (_ BitVec 32)) (defaultValue!3767 Int)) )
))
(declare-datatypes ((CacheUp!2302 0))(
  ( (CacheUp!2303 (cache!3739 MutableMap!3596)) )
))
(declare-fun cacheUp!820 () CacheUp!2302)

(assert (=> b!2750755 (= lt!972669 (v!33420 (underlying!7584 (cache!3739 cacheUp!820))))))

(declare-fun b!2750756 () Bool)

(declare-fun e!1734068 () Bool)

(declare-fun e!1734078 () Bool)

(declare-datatypes ((tuple3!4542 0))(
  ( (tuple3!4543 (_1!18622 Regex!8041) (_2!18622 Context!4518) (_3!2741 C!16240)) )
))
(declare-datatypes ((tuple2!31762 0))(
  ( (tuple2!31763 (_1!18623 tuple3!4542) (_2!18623 (InoxSet Context!4518))) )
))
(declare-datatypes ((List!31911 0))(
  ( (Nil!31811) (Cons!31811 (h!37231 tuple2!31762) (t!228015 List!31911)) )
))
(declare-datatypes ((array!13142 0))(
  ( (array!13143 (arr!5866 (Array (_ BitVec 32) List!31911)) (size!24567 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7382 0))(
  ( (LongMapFixedSize!7383 (defaultEntry!4076 Int) (mask!9448 (_ BitVec 32)) (extraKeys!3940 (_ BitVec 32)) (zeroValue!3950 List!31911) (minValue!3950 List!31911) (_size!7425 (_ BitVec 32)) (_keys!3991 array!13140) (_values!3972 array!13142) (_vacant!3752 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14573 0))(
  ( (Cell!14574 (v!33421 LongMapFixedSize!7382)) )
))
(declare-datatypes ((MutLongMap!3691 0))(
  ( (LongMap!3691 (underlying!7585 Cell!14573)) (MutLongMapExt!3690 (__x!20723 Int)) )
))
(declare-fun lt!972671 () MutLongMap!3691)

(assert (=> b!2750756 (= e!1734068 (and e!1734078 ((_ is LongMap!3691) lt!972671)))))

(declare-datatypes ((Cell!14575 0))(
  ( (Cell!14576 (v!33422 MutLongMap!3691)) )
))
(declare-datatypes ((Hashable!3607 0))(
  ( (HashableExt!3606 (__x!20724 Int)) )
))
(declare-datatypes ((MutableMap!3597 0))(
  ( (MutableMapExt!3596 (__x!20725 Int)) (HashMap!3597 (underlying!7586 Cell!14575) (hashF!5639 Hashable!3607) (_size!7426 (_ BitVec 32)) (defaultValue!3768 Int)) )
))
(declare-datatypes ((CacheDown!2422 0))(
  ( (CacheDown!2423 (cache!3740 MutableMap!3597)) )
))
(declare-fun cacheDown!939 () CacheDown!2422)

(assert (=> b!2750756 (= lt!972671 (v!33422 (underlying!7586 (cache!3740 cacheDown!939))))))

(declare-fun b!2750757 () Bool)

(declare-fun e!1734081 () Bool)

(declare-fun tp!868786 () Bool)

(declare-fun mapRes!16802 () Bool)

(assert (=> b!2750757 (= e!1734081 (and tp!868786 mapRes!16802))))

(declare-fun condMapEmpty!16801 () Bool)

(declare-fun mapDefault!16802 () List!31910)

(assert (=> b!2750757 (= condMapEmpty!16801 (= (arr!5864 (_values!3971 (v!33419 (underlying!7583 (v!33420 (underlying!7584 (cache!3739 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31910)) mapDefault!16802)))))

(declare-fun mapIsEmpty!16801 () Bool)

(assert (=> mapIsEmpty!16801 mapRes!16802))

(declare-fun b!2750758 () Bool)

(declare-fun e!1734075 () Bool)

(declare-fun e!1734072 () Bool)

(assert (=> b!2750758 (= e!1734075 e!1734072)))

(declare-fun e!1734080 () Bool)

(assert (=> b!2750759 (= e!1734080 (and e!1734074 tp!868791))))

(declare-fun b!2750761 () Bool)

(declare-fun res!1153393 () Bool)

(declare-fun e!1734065 () Bool)

(assert (=> b!2750761 (=> (not res!1153393) (not e!1734065))))

(declare-fun valid!2862 (CacheDown!2422) Bool)

(assert (=> b!2750761 (= res!1153393 (valid!2862 cacheDown!939))))

(declare-fun b!2750762 () Bool)

(declare-fun e!1734063 () Bool)

(assert (=> b!2750762 (= e!1734063 e!1734080)))

(declare-fun b!2750763 () Bool)

(declare-fun e!1734071 () Bool)

(declare-fun tp!868793 () Bool)

(declare-fun mapRes!16801 () Bool)

(assert (=> b!2750763 (= e!1734071 (and tp!868793 mapRes!16801))))

(declare-fun condMapEmpty!16802 () Bool)

(declare-fun mapDefault!16801 () List!31911)

(assert (=> b!2750763 (= condMapEmpty!16802 (= (arr!5866 (_values!3972 (v!33421 (underlying!7585 (v!33422 (underlying!7586 (cache!3740 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31911)) mapDefault!16801)))))

(assert (=> b!2750764 (= e!1734072 (and e!1734068 tp!868792))))

(declare-fun mapNonEmpty!16801 () Bool)

(declare-fun tp!868782 () Bool)

(declare-fun tp!868787 () Bool)

(assert (=> mapNonEmpty!16801 (= mapRes!16801 (and tp!868782 tp!868787))))

(declare-fun mapValue!16801 () List!31911)

(declare-fun mapRest!16802 () (Array (_ BitVec 32) List!31911))

(declare-fun mapKey!16802 () (_ BitVec 32))

(assert (=> mapNonEmpty!16801 (= (arr!5866 (_values!3972 (v!33421 (underlying!7585 (v!33422 (underlying!7586 (cache!3740 cacheDown!939))))))) (store mapRest!16802 mapKey!16802 mapValue!16801))))

(declare-fun tp!868788 () Bool)

(declare-fun e!1734070 () Bool)

(declare-fun tp!868781 () Bool)

(declare-fun array_inv!4191 (array!13140) Bool)

(declare-fun array_inv!4192 (array!13138) Bool)

(assert (=> b!2750765 (= e!1734070 (and tp!868785 tp!868788 tp!868781 (array_inv!4191 (_keys!3990 (v!33419 (underlying!7583 (v!33420 (underlying!7584 (cache!3739 cacheUp!820))))))) (array_inv!4192 (_values!3971 (v!33419 (underlying!7583 (v!33420 (underlying!7584 (cache!3739 cacheUp!820))))))) e!1734081))))

(declare-fun b!2750766 () Bool)

(declare-fun e!1734076 () Bool)

(assert (=> b!2750766 (= e!1734076 false)))

(declare-fun lt!972668 () Int)

(declare-datatypes ((List!31912 0))(
  ( (Nil!31812) (Cons!31812 (h!37232 C!16240) (t!228016 List!31912)) )
))
(declare-fun size!24568 (List!31912) Int)

(assert (=> b!2750766 (= lt!972668 (size!24568 Nil!31812))))

(declare-fun b!2750767 () Bool)

(declare-fun e!1734064 () Bool)

(declare-datatypes ((IArray!19851 0))(
  ( (IArray!19852 (innerList!9983 List!31912)) )
))
(declare-datatypes ((Conc!9923 0))(
  ( (Node!9923 (left!24305 Conc!9923) (right!24635 Conc!9923) (csize!20076 Int) (cheight!10134 Int)) (Leaf!15112 (xs!13030 IArray!19851) (csize!20077 Int)) (Empty!9923) )
))
(declare-datatypes ((BalanceConc!19460 0))(
  ( (BalanceConc!19461 (c!445081 Conc!9923)) )
))
(declare-fun input!5495 () BalanceConc!19460)

(declare-fun tp!868780 () Bool)

(declare-fun inv!43195 (Conc!9923) Bool)

(assert (=> b!2750767 (= e!1734064 (and (inv!43195 (c!445081 input!5495)) tp!868780))))

(declare-fun tp!868784 () Bool)

(declare-fun e!1734066 () Bool)

(declare-fun tp!868794 () Bool)

(declare-fun array_inv!4193 (array!13142) Bool)

(assert (=> b!2750768 (= e!1734066 (and tp!868790 tp!868794 tp!868784 (array_inv!4191 (_keys!3991 (v!33421 (underlying!7585 (v!33422 (underlying!7586 (cache!3740 cacheDown!939))))))) (array_inv!4193 (_values!3972 (v!33421 (underlying!7585 (v!33422 (underlying!7586 (cache!3740 cacheDown!939))))))) e!1734071))))

(declare-fun mapIsEmpty!16802 () Bool)

(assert (=> mapIsEmpty!16802 mapRes!16801))

(declare-fun b!2750769 () Bool)

(declare-fun e!1734067 () Bool)

(assert (=> b!2750769 (= e!1734078 e!1734067)))

(declare-fun b!2750770 () Bool)

(assert (=> b!2750770 (= e!1734065 e!1734076)))

(declare-fun res!1153394 () Bool)

(assert (=> b!2750770 (=> (not res!1153394) (not e!1734076))))

(declare-fun lt!972672 () List!31912)

(declare-fun ++!7880 (List!31912 List!31912) List!31912)

(assert (=> b!2750770 (= res!1153394 (= (++!7880 Nil!31812 lt!972672) lt!972672))))

(declare-fun lt!972670 () Int)

(declare-fun size!24569 (BalanceConc!19460) Int)

(assert (=> b!2750770 (= lt!972670 (size!24569 input!5495))))

(declare-fun list!12025 (BalanceConc!19460) List!31912)

(assert (=> b!2750770 (= lt!972672 (list!12025 input!5495))))

(declare-fun b!2750760 () Bool)

(assert (=> b!2750760 (= e!1734067 e!1734066)))

(declare-fun res!1153395 () Bool)

(assert (=> start!266632 (=> (not res!1153395) (not e!1734065))))

(declare-fun valid!2863 (CacheUp!2302) Bool)

(assert (=> start!266632 (= res!1153395 (valid!2863 cacheUp!820))))

(assert (=> start!266632 e!1734065))

(declare-fun inv!43196 (CacheUp!2302) Bool)

(assert (=> start!266632 (and (inv!43196 cacheUp!820) e!1734063)))

(declare-fun inv!43197 (CacheDown!2422) Bool)

(assert (=> start!266632 (and (inv!43197 cacheDown!939) e!1734075)))

(declare-fun inv!43198 (BalanceConc!19460) Bool)

(assert (=> start!266632 (and (inv!43198 input!5495) e!1734064)))

(declare-fun b!2750771 () Bool)

(assert (=> b!2750771 (= e!1734079 e!1734070)))

(declare-fun mapNonEmpty!16802 () Bool)

(declare-fun tp!868783 () Bool)

(declare-fun tp!868789 () Bool)

(assert (=> mapNonEmpty!16802 (= mapRes!16802 (and tp!868783 tp!868789))))

(declare-fun mapRest!16801 () (Array (_ BitVec 32) List!31910))

(declare-fun mapKey!16801 () (_ BitVec 32))

(declare-fun mapValue!16802 () List!31910)

(assert (=> mapNonEmpty!16802 (= (arr!5864 (_values!3971 (v!33419 (underlying!7583 (v!33420 (underlying!7584 (cache!3739 cacheUp!820))))))) (store mapRest!16801 mapKey!16801 mapValue!16802))))

(assert (= (and start!266632 res!1153395) b!2750761))

(assert (= (and b!2750761 res!1153393) b!2750770))

(assert (= (and b!2750770 res!1153394) b!2750766))

(assert (= (and b!2750757 condMapEmpty!16801) mapIsEmpty!16801))

(assert (= (and b!2750757 (not condMapEmpty!16801)) mapNonEmpty!16802))

(assert (= b!2750765 b!2750757))

(assert (= b!2750771 b!2750765))

(assert (= b!2750754 b!2750771))

(assert (= (and b!2750755 ((_ is LongMap!3690) (v!33420 (underlying!7584 (cache!3739 cacheUp!820))))) b!2750754))

(assert (= b!2750759 b!2750755))

(assert (= (and b!2750762 ((_ is HashMap!3596) (cache!3739 cacheUp!820))) b!2750759))

(assert (= start!266632 b!2750762))

(assert (= (and b!2750763 condMapEmpty!16802) mapIsEmpty!16802))

(assert (= (and b!2750763 (not condMapEmpty!16802)) mapNonEmpty!16801))

(assert (= b!2750768 b!2750763))

(assert (= b!2750760 b!2750768))

(assert (= b!2750769 b!2750760))

(assert (= (and b!2750756 ((_ is LongMap!3691) (v!33422 (underlying!7586 (cache!3740 cacheDown!939))))) b!2750769))

(assert (= b!2750764 b!2750756))

(assert (= (and b!2750758 ((_ is HashMap!3597) (cache!3740 cacheDown!939))) b!2750764))

(assert (= start!266632 b!2750758))

(assert (= start!266632 b!2750767))

(declare-fun m!3165653 () Bool)

(assert (=> mapNonEmpty!16802 m!3165653))

(declare-fun m!3165655 () Bool)

(assert (=> b!2750765 m!3165655))

(declare-fun m!3165657 () Bool)

(assert (=> b!2750765 m!3165657))

(declare-fun m!3165659 () Bool)

(assert (=> b!2750761 m!3165659))

(declare-fun m!3165661 () Bool)

(assert (=> b!2750767 m!3165661))

(declare-fun m!3165663 () Bool)

(assert (=> b!2750766 m!3165663))

(declare-fun m!3165665 () Bool)

(assert (=> b!2750768 m!3165665))

(declare-fun m!3165667 () Bool)

(assert (=> b!2750768 m!3165667))

(declare-fun m!3165669 () Bool)

(assert (=> mapNonEmpty!16801 m!3165669))

(declare-fun m!3165671 () Bool)

(assert (=> b!2750770 m!3165671))

(declare-fun m!3165673 () Bool)

(assert (=> b!2750770 m!3165673))

(declare-fun m!3165675 () Bool)

(assert (=> b!2750770 m!3165675))

(declare-fun m!3165677 () Bool)

(assert (=> start!266632 m!3165677))

(declare-fun m!3165679 () Bool)

(assert (=> start!266632 m!3165679))

(declare-fun m!3165681 () Bool)

(assert (=> start!266632 m!3165681))

(declare-fun m!3165683 () Bool)

(assert (=> start!266632 m!3165683))

(check-sat (not b!2750767) (not b_next!78503) (not start!266632) (not b!2750761) b_and!202537 (not b!2750770) (not b_next!78501) b_and!202535 (not b!2750765) (not b_next!78507) (not b_next!78505) (not b!2750768) (not mapNonEmpty!16801) b_and!202541 (not b!2750766) (not b!2750763) b_and!202539 (not mapNonEmpty!16802) (not b!2750757))
(check-sat (not b_next!78503) b_and!202537 (not b_next!78501) b_and!202535 (not b_next!78507) (not b_next!78505) b_and!202541 b_and!202539)
