; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266636 () Bool)

(assert start!266636)

(declare-fun b!2750899 () Bool)

(declare-fun b_free!77813 () Bool)

(declare-fun b_next!78517 () Bool)

(assert (=> b!2750899 (= b_free!77813 (not b_next!78517))))

(declare-fun tp!868889 () Bool)

(declare-fun b_and!202551 () Bool)

(assert (=> b!2750899 (= tp!868889 b_and!202551)))

(declare-fun b!2750909 () Bool)

(declare-fun b_free!77815 () Bool)

(declare-fun b_next!78519 () Bool)

(assert (=> b!2750909 (= b_free!77815 (not b_next!78519))))

(declare-fun tp!868881 () Bool)

(declare-fun b_and!202553 () Bool)

(assert (=> b!2750909 (= tp!868881 b_and!202553)))

(declare-fun b!2750906 () Bool)

(declare-fun b_free!77817 () Bool)

(declare-fun b_next!78521 () Bool)

(assert (=> b!2750906 (= b_free!77817 (not b_next!78521))))

(declare-fun tp!868892 () Bool)

(declare-fun b_and!202555 () Bool)

(assert (=> b!2750906 (= tp!868892 b_and!202555)))

(declare-fun b!2750902 () Bool)

(declare-fun b_free!77819 () Bool)

(declare-fun b_next!78523 () Bool)

(assert (=> b!2750902 (= b_free!77819 (not b_next!78523))))

(declare-fun tp!868884 () Bool)

(declare-fun b_and!202557 () Bool)

(assert (=> b!2750902 (= tp!868884 b_and!202557)))

(declare-fun b!2750887 () Bool)

(declare-fun res!1153432 () Bool)

(declare-fun e!1734199 () Bool)

(assert (=> b!2750887 (=> (not res!1153432) (not e!1734199))))

(declare-datatypes ((C!16244 0))(
  ( (C!16245 (val!10056 Int)) )
))
(declare-datatypes ((Regex!8043 0))(
  ( (ElementMatch!8043 (c!445084 C!16244)) (Concat!13131 (regOne!16598 Regex!8043) (regTwo!16598 Regex!8043)) (EmptyExpr!8043) (Star!8043 (reg!8372 Regex!8043)) (EmptyLang!8043) (Union!8043 (regOne!16599 Regex!8043) (regTwo!16599 Regex!8043)) )
))
(declare-datatypes ((List!31917 0))(
  ( (Nil!31817) (Cons!31817 (h!37237 Regex!8043) (t!228021 List!31917)) )
))
(declare-datatypes ((Context!4522 0))(
  ( (Context!4523 (exprs!2761 List!31917)) )
))
(declare-datatypes ((array!13150 0))(
  ( (array!13151 (arr!5870 (Array (_ BitVec 32) (_ BitVec 64))) (size!24574 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!4548 0))(
  ( (tuple3!4549 (_1!18629 Regex!8043) (_2!18629 Context!4522) (_3!2744 C!16244)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31770 0))(
  ( (tuple2!31771 (_1!18630 tuple3!4548) (_2!18630 (InoxSet Context!4522))) )
))
(declare-datatypes ((List!31918 0))(
  ( (Nil!31818) (Cons!31818 (h!37238 tuple2!31770) (t!228022 List!31918)) )
))
(declare-datatypes ((array!13152 0))(
  ( (array!13153 (arr!5871 (Array (_ BitVec 32) List!31918)) (size!24575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7388 0))(
  ( (LongMapFixedSize!7389 (defaultEntry!4079 Int) (mask!9452 (_ BitVec 32)) (extraKeys!3943 (_ BitVec 32)) (zeroValue!3953 List!31918) (minValue!3953 List!31918) (_size!7431 (_ BitVec 32)) (_keys!3994 array!13150) (_values!3975 array!13152) (_vacant!3755 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14585 0))(
  ( (Cell!14586 (v!33427 LongMapFixedSize!7388)) )
))
(declare-datatypes ((MutLongMap!3694 0))(
  ( (LongMap!3694 (underlying!7591 Cell!14585)) (MutLongMapExt!3693 (__x!20732 Int)) )
))
(declare-datatypes ((Cell!14587 0))(
  ( (Cell!14588 (v!33428 MutLongMap!3694)) )
))
(declare-datatypes ((Hashable!3610 0))(
  ( (HashableExt!3609 (__x!20733 Int)) )
))
(declare-datatypes ((MutableMap!3600 0))(
  ( (MutableMapExt!3599 (__x!20734 Int)) (HashMap!3600 (underlying!7592 Cell!14587) (hashF!5642 Hashable!3610) (_size!7432 (_ BitVec 32)) (defaultValue!3771 Int)) )
))
(declare-datatypes ((CacheDown!2426 0))(
  ( (CacheDown!2427 (cache!3743 MutableMap!3600)) )
))
(declare-fun cacheDown!939 () CacheDown!2426)

(declare-fun valid!2865 (CacheDown!2426) Bool)

(assert (=> b!2750887 (= res!1153432 (valid!2865 cacheDown!939))))

(declare-fun b!2750888 () Bool)

(declare-fun e!1734192 () Bool)

(declare-fun e!1734187 () Bool)

(assert (=> b!2750888 (= e!1734192 e!1734187)))

(declare-fun setRes!21924 () Bool)

(declare-fun setElem!21924 () Context!4522)

(declare-fun setNonEmpty!21924 () Bool)

(declare-fun tp!868885 () Bool)

(declare-fun e!1734206 () Bool)

(declare-fun inv!43202 (Context!4522) Bool)

(assert (=> setNonEmpty!21924 (= setRes!21924 (and tp!868885 (inv!43202 setElem!21924) e!1734206))))

(declare-fun z!3597 () (InoxSet Context!4522))

(declare-fun setRest!21924 () (InoxSet Context!4522))

(assert (=> setNonEmpty!21924 (= z!3597 ((_ map or) (store ((as const (Array Context!4522 Bool)) false) setElem!21924 true) setRest!21924))))

(declare-fun res!1153435 () Bool)

(assert (=> start!266636 (=> (not res!1153435) (not e!1734199))))

(declare-datatypes ((tuple2!31772 0))(
  ( (tuple2!31773 (_1!18631 Context!4522) (_2!18631 C!16244)) )
))
(declare-datatypes ((tuple2!31774 0))(
  ( (tuple2!31775 (_1!18632 tuple2!31772) (_2!18632 (InoxSet Context!4522))) )
))
(declare-datatypes ((List!31919 0))(
  ( (Nil!31819) (Cons!31819 (h!37239 tuple2!31774) (t!228023 List!31919)) )
))
(declare-datatypes ((Hashable!3611 0))(
  ( (HashableExt!3610 (__x!20735 Int)) )
))
(declare-datatypes ((array!13154 0))(
  ( (array!13155 (arr!5872 (Array (_ BitVec 32) List!31919)) (size!24576 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7390 0))(
  ( (LongMapFixedSize!7391 (defaultEntry!4080 Int) (mask!9453 (_ BitVec 32)) (extraKeys!3944 (_ BitVec 32)) (zeroValue!3954 List!31919) (minValue!3954 List!31919) (_size!7433 (_ BitVec 32)) (_keys!3995 array!13150) (_values!3976 array!13154) (_vacant!3756 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14589 0))(
  ( (Cell!14590 (v!33429 LongMapFixedSize!7390)) )
))
(declare-datatypes ((MutLongMap!3695 0))(
  ( (LongMap!3695 (underlying!7593 Cell!14589)) (MutLongMapExt!3694 (__x!20736 Int)) )
))
(declare-datatypes ((Cell!14591 0))(
  ( (Cell!14592 (v!33430 MutLongMap!3695)) )
))
(declare-datatypes ((MutableMap!3601 0))(
  ( (MutableMapExt!3600 (__x!20737 Int)) (HashMap!3601 (underlying!7594 Cell!14591) (hashF!5643 Hashable!3611) (_size!7434 (_ BitVec 32)) (defaultValue!3772 Int)) )
))
(declare-datatypes ((CacheUp!2306 0))(
  ( (CacheUp!2307 (cache!3744 MutableMap!3601)) )
))
(declare-fun cacheUp!820 () CacheUp!2306)

(declare-fun valid!2866 (CacheUp!2306) Bool)

(assert (=> start!266636 (= res!1153435 (valid!2866 cacheUp!820))))

(assert (=> start!266636 e!1734199))

(declare-fun inv!43203 (CacheUp!2306) Bool)

(assert (=> start!266636 (and (inv!43203 cacheUp!820) e!1734192)))

(declare-fun e!1734191 () Bool)

(declare-fun inv!43204 (CacheDown!2426) Bool)

(assert (=> start!266636 (and (inv!43204 cacheDown!939) e!1734191)))

(declare-fun condSetEmpty!21924 () Bool)

(assert (=> start!266636 (= condSetEmpty!21924 (= z!3597 ((as const (Array Context!4522 Bool)) false)))))

(assert (=> start!266636 setRes!21924))

(declare-datatypes ((List!31920 0))(
  ( (Nil!31820) (Cons!31820 (h!37240 C!16244) (t!228024 List!31920)) )
))
(declare-datatypes ((IArray!19855 0))(
  ( (IArray!19856 (innerList!9985 List!31920)) )
))
(declare-datatypes ((Conc!9925 0))(
  ( (Node!9925 (left!24308 Conc!9925) (right!24638 Conc!9925) (csize!20080 Int) (cheight!10136 Int)) (Leaf!15115 (xs!13032 IArray!19855) (csize!20081 Int)) (Empty!9925) )
))
(declare-datatypes ((BalanceConc!19464 0))(
  ( (BalanceConc!19465 (c!445085 Conc!9925)) )
))
(declare-fun input!5495 () BalanceConc!19464)

(declare-fun e!1734202 () Bool)

(declare-fun inv!43205 (BalanceConc!19464) Bool)

(assert (=> start!266636 (and (inv!43205 input!5495) e!1734202)))

(declare-fun b!2750889 () Bool)

(declare-fun tp!868886 () Bool)

(declare-fun inv!43206 (Conc!9925) Bool)

(assert (=> b!2750889 (= e!1734202 (and (inv!43206 (c!445085 input!5495)) tp!868886))))

(declare-fun lt!972708 () List!31920)

(declare-fun e!1734200 () Bool)

(declare-fun b!2750890 () Bool)

(declare-fun lt!972714 () Int)

(declare-datatypes ((tuple3!4550 0))(
  ( (tuple3!4551 (_1!18633 Int) (_2!18633 CacheUp!2306) (_3!2745 CacheDown!2426)) )
))
(declare-fun lt!972712 () tuple3!4550)

(declare-fun findLongestMatchInnerZipperFast!1 ((InoxSet Context!4522) List!31920 Int List!31920 BalanceConc!19464 Int) Int)

(assert (=> b!2750890 (= e!1734200 (= (_1!18633 lt!972712) (findLongestMatchInnerZipperFast!1 z!3597 Nil!31820 0 lt!972708 input!5495 lt!972714)))))

(declare-fun b!2750891 () Bool)

(declare-fun e!1734190 () Bool)

(declare-fun tp!868893 () Bool)

(declare-fun mapRes!16814 () Bool)

(assert (=> b!2750891 (= e!1734190 (and tp!868893 mapRes!16814))))

(declare-fun condMapEmpty!16813 () Bool)

(declare-fun mapDefault!16814 () List!31919)

(assert (=> b!2750891 (= condMapEmpty!16813 (= (arr!5872 (_values!3976 (v!33429 (underlying!7593 (v!33430 (underlying!7594 (cache!3744 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31919)) mapDefault!16814)))))

(declare-fun b!2750892 () Bool)

(declare-fun e!1734203 () Bool)

(declare-fun e!1734207 () Bool)

(assert (=> b!2750892 (= e!1734203 e!1734207)))

(declare-fun b!2750893 () Bool)

(declare-fun res!1153431 () Bool)

(assert (=> b!2750893 (=> (not res!1153431) (not e!1734200))))

(assert (=> b!2750893 (= res!1153431 (valid!2865 (_3!2745 lt!972712)))))

(declare-fun b!2750894 () Bool)

(declare-fun e!1734201 () Bool)

(declare-fun e!1734205 () Bool)

(declare-fun lt!972711 () MutLongMap!3695)

(get-info :version)

(assert (=> b!2750894 (= e!1734201 (and e!1734205 ((_ is LongMap!3695) lt!972711)))))

(assert (=> b!2750894 (= lt!972711 (v!33430 (underlying!7594 (cache!3744 cacheUp!820))))))

(declare-fun b!2750895 () Bool)

(declare-fun e!1734197 () Bool)

(declare-fun e!1734193 () Bool)

(declare-fun lt!972713 () MutLongMap!3694)

(assert (=> b!2750895 (= e!1734197 (and e!1734193 ((_ is LongMap!3694) lt!972713)))))

(assert (=> b!2750895 (= lt!972713 (v!33428 (underlying!7592 (cache!3743 cacheDown!939))))))

(declare-fun b!2750896 () Bool)

(declare-fun e!1734188 () Bool)

(declare-fun e!1734195 () Bool)

(assert (=> b!2750896 (= e!1734188 e!1734195)))

(declare-fun mapNonEmpty!16813 () Bool)

(declare-fun tp!868887 () Bool)

(declare-fun tp!868883 () Bool)

(assert (=> mapNonEmpty!16813 (= mapRes!16814 (and tp!868887 tp!868883))))

(declare-fun mapValue!16814 () List!31919)

(declare-fun mapKey!16814 () (_ BitVec 32))

(declare-fun mapRest!16814 () (Array (_ BitVec 32) List!31919))

(assert (=> mapNonEmpty!16813 (= (arr!5872 (_values!3976 (v!33429 (underlying!7593 (v!33430 (underlying!7594 (cache!3744 cacheUp!820))))))) (store mapRest!16814 mapKey!16814 mapValue!16814))))

(declare-fun b!2750897 () Bool)

(declare-fun e!1734198 () Bool)

(assert (=> b!2750897 (= e!1734199 (not e!1734198))))

(declare-fun res!1153434 () Bool)

(assert (=> b!2750897 (=> res!1153434 e!1734198)))

(declare-fun ++!7882 (List!31920 List!31920) List!31920)

(assert (=> b!2750897 (= res!1153434 (not (= (++!7882 Nil!31820 lt!972708) lt!972708)))))

(assert (=> b!2750897 e!1734200))

(declare-fun res!1153436 () Bool)

(assert (=> b!2750897 (=> (not res!1153436) (not e!1734200))))

(declare-fun lt!972709 () Bool)

(assert (=> b!2750897 (= res!1153436 (not lt!972709))))

(assert (=> b!2750897 (= lt!972709 (not (valid!2866 (_2!18633 lt!972712))))))

(declare-fun findLongestMatchInnerZipperFastMem!2 (CacheUp!2306 CacheDown!2426 (InoxSet Context!4522) List!31920 Int List!31920 BalanceConc!19464 Int) tuple3!4550)

(assert (=> b!2750897 (= lt!972712 (findLongestMatchInnerZipperFastMem!2 cacheUp!820 cacheDown!939 z!3597 Nil!31820 0 lt!972708 input!5495 lt!972714))))

(declare-fun size!24577 (BalanceConc!19464) Int)

(assert (=> b!2750897 (= lt!972714 (size!24577 input!5495))))

(declare-fun list!12027 (BalanceConc!19464) List!31920)

(assert (=> b!2750897 (= lt!972708 (list!12027 input!5495))))

(declare-fun b!2750898 () Bool)

(assert (=> b!2750898 (= e!1734198 true)))

(declare-fun lt!972710 () Bool)

(assert (=> b!2750898 (= lt!972710 (valid!2865 (_3!2745 lt!972712)))))

(declare-fun mapNonEmpty!16814 () Bool)

(declare-fun mapRes!16813 () Bool)

(declare-fun tp!868891 () Bool)

(declare-fun tp!868880 () Bool)

(assert (=> mapNonEmpty!16814 (= mapRes!16813 (and tp!868891 tp!868880))))

(declare-fun mapValue!16813 () List!31918)

(declare-fun mapRest!16813 () (Array (_ BitVec 32) List!31918))

(declare-fun mapKey!16813 () (_ BitVec 32))

(assert (=> mapNonEmpty!16814 (= (arr!5871 (_values!3975 (v!33427 (underlying!7591 (v!33428 (underlying!7592 (cache!3743 cacheDown!939))))))) (store mapRest!16813 mapKey!16813 mapValue!16813))))

(declare-fun e!1734189 () Bool)

(assert (=> b!2750899 (= e!1734189 (and e!1734197 tp!868889))))

(declare-fun mapIsEmpty!16813 () Bool)

(assert (=> mapIsEmpty!16813 mapRes!16813))

(declare-fun b!2750900 () Bool)

(assert (=> b!2750900 (= e!1734191 e!1734189)))

(declare-fun b!2750901 () Bool)

(assert (=> b!2750901 (= e!1734193 e!1734188)))

(declare-fun mapIsEmpty!16814 () Bool)

(assert (=> mapIsEmpty!16814 mapRes!16814))

(declare-fun tp!868890 () Bool)

(declare-fun tp!868882 () Bool)

(declare-fun array_inv!4194 (array!13150) Bool)

(declare-fun array_inv!4195 (array!13154) Bool)

(assert (=> b!2750902 (= e!1734207 (and tp!868884 tp!868890 tp!868882 (array_inv!4194 (_keys!3995 (v!33429 (underlying!7593 (v!33430 (underlying!7594 (cache!3744 cacheUp!820))))))) (array_inv!4195 (_values!3976 (v!33429 (underlying!7593 (v!33430 (underlying!7594 (cache!3744 cacheUp!820))))))) e!1734190))))

(declare-fun b!2750903 () Bool)

(assert (=> b!2750903 (= e!1734205 e!1734203)))

(declare-fun b!2750904 () Bool)

(declare-fun res!1153433 () Bool)

(assert (=> b!2750904 (=> res!1153433 e!1734198)))

(declare-fun size!24578 (List!31920) Int)

(assert (=> b!2750904 (= res!1153433 (not (= 0 (size!24578 Nil!31820))))))

(declare-fun setIsEmpty!21924 () Bool)

(assert (=> setIsEmpty!21924 setRes!21924))

(declare-fun b!2750905 () Bool)

(declare-fun e!1734204 () Bool)

(declare-fun tp!868895 () Bool)

(assert (=> b!2750905 (= e!1734204 (and tp!868895 mapRes!16813))))

(declare-fun condMapEmpty!16814 () Bool)

(declare-fun mapDefault!16813 () List!31918)

(assert (=> b!2750905 (= condMapEmpty!16814 (= (arr!5871 (_values!3975 (v!33427 (underlying!7591 (v!33428 (underlying!7592 (cache!3743 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31918)) mapDefault!16813)))))

(assert (=> b!2750906 (= e!1734187 (and e!1734201 tp!868892))))

(declare-fun b!2750907 () Bool)

(declare-fun tp!868896 () Bool)

(assert (=> b!2750907 (= e!1734206 tp!868896)))

(declare-fun b!2750908 () Bool)

(declare-fun res!1153437 () Bool)

(assert (=> b!2750908 (=> res!1153437 e!1734198)))

(assert (=> b!2750908 (= res!1153437 lt!972709)))

(declare-fun tp!868888 () Bool)

(declare-fun tp!868894 () Bool)

(declare-fun array_inv!4196 (array!13152) Bool)

(assert (=> b!2750909 (= e!1734195 (and tp!868881 tp!868888 tp!868894 (array_inv!4194 (_keys!3994 (v!33427 (underlying!7591 (v!33428 (underlying!7592 (cache!3743 cacheDown!939))))))) (array_inv!4196 (_values!3975 (v!33427 (underlying!7591 (v!33428 (underlying!7592 (cache!3743 cacheDown!939))))))) e!1734204))))

(assert (= (and start!266636 res!1153435) b!2750887))

(assert (= (and b!2750887 res!1153432) b!2750897))

(assert (= (and b!2750897 res!1153436) b!2750893))

(assert (= (and b!2750893 res!1153431) b!2750890))

(assert (= (and b!2750897 (not res!1153434)) b!2750904))

(assert (= (and b!2750904 (not res!1153433)) b!2750908))

(assert (= (and b!2750908 (not res!1153437)) b!2750898))

(assert (= (and b!2750891 condMapEmpty!16813) mapIsEmpty!16814))

(assert (= (and b!2750891 (not condMapEmpty!16813)) mapNonEmpty!16813))

(assert (= b!2750902 b!2750891))

(assert (= b!2750892 b!2750902))

(assert (= b!2750903 b!2750892))

(assert (= (and b!2750894 ((_ is LongMap!3695) (v!33430 (underlying!7594 (cache!3744 cacheUp!820))))) b!2750903))

(assert (= b!2750906 b!2750894))

(assert (= (and b!2750888 ((_ is HashMap!3601) (cache!3744 cacheUp!820))) b!2750906))

(assert (= start!266636 b!2750888))

(assert (= (and b!2750905 condMapEmpty!16814) mapIsEmpty!16813))

(assert (= (and b!2750905 (not condMapEmpty!16814)) mapNonEmpty!16814))

(assert (= b!2750909 b!2750905))

(assert (= b!2750896 b!2750909))

(assert (= b!2750901 b!2750896))

(assert (= (and b!2750895 ((_ is LongMap!3694) (v!33428 (underlying!7592 (cache!3743 cacheDown!939))))) b!2750901))

(assert (= b!2750899 b!2750895))

(assert (= (and b!2750900 ((_ is HashMap!3600) (cache!3743 cacheDown!939))) b!2750899))

(assert (= start!266636 b!2750900))

(assert (= (and start!266636 condSetEmpty!21924) setIsEmpty!21924))

(assert (= (and start!266636 (not condSetEmpty!21924)) setNonEmpty!21924))

(assert (= setNonEmpty!21924 b!2750907))

(assert (= start!266636 b!2750889))

(declare-fun m!3165727 () Bool)

(assert (=> start!266636 m!3165727))

(declare-fun m!3165729 () Bool)

(assert (=> start!266636 m!3165729))

(declare-fun m!3165731 () Bool)

(assert (=> start!266636 m!3165731))

(declare-fun m!3165733 () Bool)

(assert (=> start!266636 m!3165733))

(declare-fun m!3165735 () Bool)

(assert (=> b!2750902 m!3165735))

(declare-fun m!3165737 () Bool)

(assert (=> b!2750902 m!3165737))

(declare-fun m!3165739 () Bool)

(assert (=> mapNonEmpty!16814 m!3165739))

(declare-fun m!3165741 () Bool)

(assert (=> b!2750909 m!3165741))

(declare-fun m!3165743 () Bool)

(assert (=> b!2750909 m!3165743))

(declare-fun m!3165745 () Bool)

(assert (=> b!2750904 m!3165745))

(declare-fun m!3165747 () Bool)

(assert (=> setNonEmpty!21924 m!3165747))

(declare-fun m!3165749 () Bool)

(assert (=> b!2750897 m!3165749))

(declare-fun m!3165751 () Bool)

(assert (=> b!2750897 m!3165751))

(declare-fun m!3165753 () Bool)

(assert (=> b!2750897 m!3165753))

(declare-fun m!3165755 () Bool)

(assert (=> b!2750897 m!3165755))

(declare-fun m!3165757 () Bool)

(assert (=> b!2750897 m!3165757))

(declare-fun m!3165759 () Bool)

(assert (=> b!2750887 m!3165759))

(declare-fun m!3165761 () Bool)

(assert (=> b!2750890 m!3165761))

(declare-fun m!3165763 () Bool)

(assert (=> b!2750898 m!3165763))

(declare-fun m!3165765 () Bool)

(assert (=> b!2750889 m!3165765))

(declare-fun m!3165767 () Bool)

(assert (=> mapNonEmpty!16813 m!3165767))

(assert (=> b!2750893 m!3165763))

(check-sat b_and!202555 (not b!2750907) (not b!2750904) b_and!202551 (not b_next!78519) (not b_next!78517) (not mapNonEmpty!16813) b_and!202553 (not start!266636) (not b!2750898) (not b!2750891) (not b!2750887) b_and!202557 (not b!2750893) (not b!2750890) (not b_next!78521) (not b!2750909) (not b!2750902) (not mapNonEmpty!16814) (not b!2750897) (not b!2750905) (not setNonEmpty!21924) (not b!2750889) (not b_next!78523))
(check-sat b_and!202555 (not b_next!78521) b_and!202551 (not b_next!78519) (not b_next!78517) b_and!202553 (not b_next!78523) b_and!202557)
