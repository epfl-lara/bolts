; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209242 () Bool)

(assert start!209242)

(declare-fun b!2156832 () Bool)

(declare-fun b_free!63709 () Bool)

(declare-fun b_next!64413 () Bool)

(assert (=> b!2156832 (= b_free!63709 (not b_next!64413))))

(declare-fun tp!671774 () Bool)

(declare-fun b_and!173325 () Bool)

(assert (=> b!2156832 (= tp!671774 b_and!173325)))

(declare-fun b!2156826 () Bool)

(declare-fun b_free!63711 () Bool)

(declare-fun b_next!64415 () Bool)

(assert (=> b!2156826 (= b_free!63711 (not b_next!64415))))

(declare-fun tp!671781 () Bool)

(declare-fun b_and!173327 () Bool)

(assert (=> b!2156826 (= tp!671781 b_and!173327)))

(declare-fun b!2156820 () Bool)

(declare-fun e!1379729 () Bool)

(declare-datatypes ((C!12004 0))(
  ( (C!12005 (val!6988 Int)) )
))
(declare-datatypes ((Regex!5929 0))(
  ( (ElementMatch!5929 (c!341575 C!12004)) (Concat!10231 (regOne!12370 Regex!5929) (regTwo!12370 Regex!5929)) (EmptyExpr!5929) (Star!5929 (reg!6258 Regex!5929)) (EmptyLang!5929) (Union!5929 (regOne!12371 Regex!5929) (regTwo!12371 Regex!5929)) )
))
(declare-datatypes ((List!24988 0))(
  ( (Nil!24904) (Cons!24904 (h!30305 Regex!5929) (t!197536 List!24988)) )
))
(declare-datatypes ((Context!2998 0))(
  ( (Context!2999 (exprs!1999 List!24988)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3742 0))(
  ( (tuple3!3743 (_1!14641 (InoxSet Context!2998)) (_2!14641 Int) (_3!2341 Int)) )
))
(declare-datatypes ((tuple2!24600 0))(
  ( (tuple2!24601 (_1!14642 tuple3!3742) (_2!14642 Int)) )
))
(declare-datatypes ((List!24989 0))(
  ( (Nil!24905) (Cons!24905 (h!30306 tuple2!24600) (t!197537 List!24989)) )
))
(declare-datatypes ((array!9991 0))(
  ( (array!9992 (arr!4456 (Array (_ BitVec 32) (_ BitVec 64))) (size!19461 (_ BitVec 32))) )
))
(declare-datatypes ((array!9993 0))(
  ( (array!9994 (arr!4457 (Array (_ BitVec 32) List!24989)) (size!19462 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5860 0))(
  ( (LongMapFixedSize!5861 (defaultEntry!3295 Int) (mask!7210 (_ BitVec 32)) (extraKeys!3178 (_ BitVec 32)) (zeroValue!3188 List!24989) (minValue!3188 List!24989) (_size!5911 (_ BitVec 32)) (_keys!3227 array!9991) (_values!3210 array!9993) (_vacant!2991 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11545 0))(
  ( (Cell!11546 (v!29323 LongMapFixedSize!5860)) )
))
(declare-datatypes ((Hashable!2844 0))(
  ( (HashableExt!2843 (__x!16966 Int)) )
))
(declare-datatypes ((MutLongMap!2930 0))(
  ( (LongMap!2930 (underlying!6055 Cell!11545)) (MutLongMapExt!2929 (__x!16967 Int)) )
))
(declare-datatypes ((Cell!11547 0))(
  ( (Cell!11548 (v!29324 MutLongMap!2930)) )
))
(declare-datatypes ((MutableMap!2844 0))(
  ( (MutableMapExt!2843 (__x!16968 Int)) (HashMap!2844 (underlying!6056 Cell!11547) (hashF!4767 Hashable!2844) (_size!5912 (_ BitVec 32)) (defaultValue!3006 Int)) )
))
(declare-datatypes ((List!24990 0))(
  ( (Nil!24906) (Cons!24906 (h!30307 C!12004) (t!197538 List!24990)) )
))
(declare-datatypes ((IArray!16135 0))(
  ( (IArray!16136 (innerList!8125 List!24990)) )
))
(declare-datatypes ((Conc!8065 0))(
  ( (Node!8065 (left!19168 Conc!8065) (right!19498 Conc!8065) (csize!16360 Int) (cheight!8276 Int)) (Leaf!11797 (xs!11007 IArray!16135) (csize!16361 Int)) (Empty!8065) )
))
(declare-datatypes ((BalanceConc!15892 0))(
  ( (BalanceConc!15893 (c!341576 Conc!8065)) )
))
(declare-datatypes ((CacheFurthestNullable!1046 0))(
  ( (CacheFurthestNullable!1047 (cache!3225 MutableMap!2844) (totalInput!3369 BalanceConc!15892)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1046)

(declare-fun tp!671778 () Bool)

(declare-fun inv!32939 (Conc!8065) Bool)

(assert (=> b!2156820 (= e!1379729 (and (inv!32939 (c!341576 (totalInput!3369 cacheFurthestNullable!118))) tp!671778))))

(declare-fun b!2156821 () Bool)

(declare-fun e!1379724 () Bool)

(declare-datatypes ((StackFrame!386 0))(
  ( (StackFrame!387 (z!6005 (InoxSet Context!2998)) (from!2846 Int) (lastNullablePos!533 Int) (res!929651 Int) (totalInput!3370 BalanceConc!15892)) )
))
(declare-datatypes ((List!24991 0))(
  ( (Nil!24907) (Cons!24907 (h!30308 StackFrame!386) (t!197539 List!24991)) )
))
(declare-fun stack!12 () List!24991)

(declare-fun tp!671777 () Bool)

(assert (=> b!2156821 (= e!1379724 (and (inv!32939 (c!341576 (totalInput!3370 (h!30308 stack!12)))) tp!671777))))

(declare-fun b!2156822 () Bool)

(declare-fun e!1379728 () Bool)

(declare-fun e!1379719 () Bool)

(declare-fun lt!801634 () MutLongMap!2930)

(get-info :version)

(assert (=> b!2156822 (= e!1379728 (and e!1379719 ((_ is LongMap!2930) lt!801634)))))

(assert (=> b!2156822 (= lt!801634 (v!29324 (underlying!6056 (cache!3225 cacheFurthestNullable!118))))))

(declare-fun b!2156823 () Bool)

(declare-fun e!1379726 () Bool)

(assert (=> b!2156823 (= e!1379719 e!1379726)))

(declare-fun b!2156824 () Bool)

(declare-fun e!1379715 () Bool)

(declare-fun tp!671776 () Bool)

(assert (=> b!2156824 (= e!1379715 tp!671776)))

(declare-fun b!2156825 () Bool)

(declare-fun e!1379727 () Bool)

(declare-fun tp!671780 () Bool)

(declare-fun mapRes!13844 () Bool)

(assert (=> b!2156825 (= e!1379727 (and tp!671780 mapRes!13844))))

(declare-fun condMapEmpty!13844 () Bool)

(declare-fun mapDefault!13844 () List!24989)

(assert (=> b!2156825 (= condMapEmpty!13844 (= (arr!4457 (_values!3210 (v!29323 (underlying!6055 (v!29324 (underlying!6056 (cache!3225 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24989)) mapDefault!13844)))))

(declare-fun tp!671771 () Bool)

(declare-fun e!1379721 () Bool)

(declare-fun tp!671775 () Bool)

(declare-fun array_inv!3198 (array!9991) Bool)

(declare-fun array_inv!3199 (array!9993) Bool)

(assert (=> b!2156826 (= e!1379721 (and tp!671781 tp!671775 tp!671771 (array_inv!3198 (_keys!3227 (v!29323 (underlying!6055 (v!29324 (underlying!6056 (cache!3225 cacheFurthestNullable!118))))))) (array_inv!3199 (_values!3210 (v!29323 (underlying!6055 (v!29324 (underlying!6056 (cache!3225 cacheFurthestNullable!118))))))) e!1379727))))

(declare-fun e!1379716 () Bool)

(declare-fun tp!671773 () Bool)

(declare-fun b!2156827 () Bool)

(declare-fun e!1379718 () Bool)

(declare-fun inv!32940 (StackFrame!386) Bool)

(assert (=> b!2156827 (= e!1379716 (and (inv!32940 (h!30308 stack!12)) e!1379718 tp!671773))))

(declare-fun mapNonEmpty!13844 () Bool)

(declare-fun tp!671779 () Bool)

(declare-fun tp!671782 () Bool)

(assert (=> mapNonEmpty!13844 (= mapRes!13844 (and tp!671779 tp!671782))))

(declare-fun mapKey!13844 () (_ BitVec 32))

(declare-fun mapRest!13844 () (Array (_ BitVec 32) List!24989))

(declare-fun mapValue!13844 () List!24989)

(assert (=> mapNonEmpty!13844 (= (arr!4457 (_values!3210 (v!29323 (underlying!6055 (v!29324 (underlying!6056 (cache!3225 cacheFurthestNullable!118))))))) (store mapRest!13844 mapKey!13844 mapValue!13844))))

(declare-fun res!929650 () Bool)

(declare-fun e!1379722 () Bool)

(assert (=> start!209242 (=> (not res!929650) (not e!1379722))))

(declare-fun valid!2262 (CacheFurthestNullable!1046) Bool)

(assert (=> start!209242 (= res!929650 (valid!2262 cacheFurthestNullable!118))))

(assert (=> start!209242 e!1379722))

(declare-fun e!1379717 () Bool)

(declare-fun inv!32941 (CacheFurthestNullable!1046) Bool)

(assert (=> start!209242 (and (inv!32941 cacheFurthestNullable!118) e!1379717)))

(declare-fun totalInput!880 () BalanceConc!15892)

(declare-fun e!1379723 () Bool)

(declare-fun inv!32942 (BalanceConc!15892) Bool)

(assert (=> start!209242 (and (inv!32942 totalInput!880) e!1379723)))

(assert (=> start!209242 e!1379716))

(assert (=> start!209242 true))

(declare-fun tp!671783 () Bool)

(declare-fun setRes!17728 () Bool)

(declare-fun setNonEmpty!17728 () Bool)

(declare-fun setElem!17728 () Context!2998)

(declare-fun inv!32943 (Context!2998) Bool)

(assert (=> setNonEmpty!17728 (= setRes!17728 (and tp!671783 (inv!32943 setElem!17728) e!1379715))))

(declare-fun setRest!17728 () (InoxSet Context!2998))

(assert (=> setNonEmpty!17728 (= (z!6005 (h!30308 stack!12)) ((_ map or) (store ((as const (Array Context!2998 Bool)) false) setElem!17728 true) setRest!17728))))

(declare-fun mapIsEmpty!13844 () Bool)

(assert (=> mapIsEmpty!13844 mapRes!13844))

(declare-fun b!2156828 () Bool)

(assert (=> b!2156828 (= e!1379722 false)))

(declare-fun e!1379725 () Bool)

(declare-fun b!2156829 () Bool)

(assert (=> b!2156829 (= e!1379717 (and e!1379725 (inv!32942 (totalInput!3369 cacheFurthestNullable!118)) e!1379729))))

(declare-fun setIsEmpty!17728 () Bool)

(assert (=> setIsEmpty!17728 setRes!17728))

(declare-fun b!2156830 () Bool)

(declare-fun tp!671772 () Bool)

(assert (=> b!2156830 (= e!1379723 (and (inv!32939 (c!341576 totalInput!880)) tp!671772))))

(declare-fun b!2156831 () Bool)

(assert (=> b!2156831 (= e!1379726 e!1379721)))

(assert (=> b!2156832 (= e!1379725 (and e!1379728 tp!671774))))

(declare-fun b!2156833 () Bool)

(assert (=> b!2156833 (= e!1379718 (and setRes!17728 (inv!32942 (totalInput!3370 (h!30308 stack!12))) e!1379724))))

(declare-fun condSetEmpty!17728 () Bool)

(assert (=> b!2156833 (= condSetEmpty!17728 (= (z!6005 (h!30308 stack!12)) ((as const (Array Context!2998 Bool)) false)))))

(assert (= (and start!209242 res!929650) b!2156828))

(assert (= (and b!2156825 condMapEmpty!13844) mapIsEmpty!13844))

(assert (= (and b!2156825 (not condMapEmpty!13844)) mapNonEmpty!13844))

(assert (= b!2156826 b!2156825))

(assert (= b!2156831 b!2156826))

(assert (= b!2156823 b!2156831))

(assert (= (and b!2156822 ((_ is LongMap!2930) (v!29324 (underlying!6056 (cache!3225 cacheFurthestNullable!118))))) b!2156823))

(assert (= b!2156832 b!2156822))

(assert (= (and b!2156829 ((_ is HashMap!2844) (cache!3225 cacheFurthestNullable!118))) b!2156832))

(assert (= b!2156829 b!2156820))

(assert (= start!209242 b!2156829))

(assert (= start!209242 b!2156830))

(assert (= (and b!2156833 condSetEmpty!17728) setIsEmpty!17728))

(assert (= (and b!2156833 (not condSetEmpty!17728)) setNonEmpty!17728))

(assert (= setNonEmpty!17728 b!2156824))

(assert (= b!2156833 b!2156821))

(assert (= b!2156827 b!2156833))

(assert (= (and start!209242 ((_ is Cons!24907) stack!12)) b!2156827))

(declare-fun m!2597297 () Bool)

(assert (=> start!209242 m!2597297))

(declare-fun m!2597299 () Bool)

(assert (=> start!209242 m!2597299))

(declare-fun m!2597301 () Bool)

(assert (=> start!209242 m!2597301))

(declare-fun m!2597303 () Bool)

(assert (=> b!2156821 m!2597303))

(declare-fun m!2597305 () Bool)

(assert (=> mapNonEmpty!13844 m!2597305))

(declare-fun m!2597307 () Bool)

(assert (=> b!2156833 m!2597307))

(declare-fun m!2597309 () Bool)

(assert (=> b!2156826 m!2597309))

(declare-fun m!2597311 () Bool)

(assert (=> b!2156826 m!2597311))

(declare-fun m!2597313 () Bool)

(assert (=> b!2156830 m!2597313))

(declare-fun m!2597315 () Bool)

(assert (=> b!2156827 m!2597315))

(declare-fun m!2597317 () Bool)

(assert (=> b!2156829 m!2597317))

(declare-fun m!2597319 () Bool)

(assert (=> b!2156820 m!2597319))

(declare-fun m!2597321 () Bool)

(assert (=> setNonEmpty!17728 m!2597321))

(check-sat (not b!2156829) b_and!173325 (not b!2156826) (not b!2156824) (not b!2156833) (not mapNonEmpty!13844) (not b!2156827) (not b_next!64415) (not setNonEmpty!17728) (not b_next!64413) (not start!209242) b_and!173327 (not b!2156820) (not b!2156830) (not b!2156821) (not b!2156825))
(check-sat b_and!173325 b_and!173327 (not b_next!64413) (not b_next!64415))
