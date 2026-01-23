; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207426 () Bool)

(assert start!207426)

(declare-fun b!2126895 () Bool)

(declare-fun b_free!61805 () Bool)

(declare-fun b_next!62509 () Bool)

(assert (=> b!2126895 (= b_free!61805 (not b_next!62509))))

(declare-fun tp!652381 () Bool)

(declare-fun b_and!171385 () Bool)

(assert (=> b!2126895 (= tp!652381 b_and!171385)))

(declare-fun b!2126896 () Bool)

(declare-fun b_free!61807 () Bool)

(declare-fun b_next!62511 () Bool)

(assert (=> b!2126896 (= b_free!61807 (not b_next!62511))))

(declare-fun tp!652400 () Bool)

(declare-fun b_and!171387 () Bool)

(assert (=> b!2126896 (= tp!652400 b_and!171387)))

(declare-fun b!2126910 () Bool)

(declare-fun b_free!61809 () Bool)

(declare-fun b_next!62513 () Bool)

(assert (=> b!2126910 (= b_free!61809 (not b_next!62513))))

(declare-fun tp!652394 () Bool)

(declare-fun b_and!171389 () Bool)

(assert (=> b!2126910 (= tp!652394 b_and!171389)))

(declare-fun b!2126893 () Bool)

(declare-fun b_free!61811 () Bool)

(declare-fun b_next!62515 () Bool)

(assert (=> b!2126893 (= b_free!61811 (not b_next!62515))))

(declare-fun tp!652398 () Bool)

(declare-fun b_and!171391 () Bool)

(assert (=> b!2126893 (= tp!652398 b_and!171391)))

(declare-fun b!2126883 () Bool)

(declare-fun b_free!61813 () Bool)

(declare-fun b_next!62517 () Bool)

(assert (=> b!2126883 (= b_free!61813 (not b_next!62517))))

(declare-fun tp!652399 () Bool)

(declare-fun b_and!171393 () Bool)

(assert (=> b!2126883 (= tp!652399 b_and!171393)))

(declare-fun b!2126880 () Bool)

(declare-fun b_free!61815 () Bool)

(declare-fun b_next!62519 () Bool)

(assert (=> b!2126880 (= b_free!61815 (not b_next!62519))))

(declare-fun tp!652385 () Bool)

(declare-fun b_and!171395 () Bool)

(assert (=> b!2126880 (= tp!652385 b_and!171395)))

(declare-fun e!1355622 () Bool)

(declare-fun e!1355616 () Bool)

(assert (=> b!2126880 (= e!1355622 (and e!1355616 tp!652385))))

(declare-fun mapIsEmpty!12205 () Bool)

(declare-fun mapRes!12207 () Bool)

(assert (=> mapIsEmpty!12205 mapRes!12207))

(declare-fun b!2126881 () Bool)

(declare-fun e!1355618 () Bool)

(declare-datatypes ((C!11504 0))(
  ( (C!11505 (val!6738 Int)) )
))
(declare-datatypes ((Regex!5679 0))(
  ( (ElementMatch!5679 (c!340106 C!11504)) (Concat!9981 (regOne!11870 Regex!5679) (regTwo!11870 Regex!5679)) (EmptyExpr!5679) (Star!5679 (reg!6008 Regex!5679)) (EmptyLang!5679) (Union!5679 (regOne!11871 Regex!5679) (regTwo!11871 Regex!5679)) )
))
(declare-datatypes ((List!23864 0))(
  ( (Nil!23780) (Cons!23780 (h!29181 Regex!5679) (t!196392 List!23864)) )
))
(declare-datatypes ((Context!2498 0))(
  ( (Context!2499 (exprs!1749 List!23864)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!2982 0))(
  ( (tuple3!2983 (_1!13683 (InoxSet Context!2498)) (_2!13683 Int) (_3!1961 Int)) )
))
(declare-datatypes ((tuple2!23444 0))(
  ( (tuple2!23445 (_1!13684 tuple3!2982) (_2!13684 Int)) )
))
(declare-datatypes ((List!23865 0))(
  ( (Nil!23781) (Cons!23781 (h!29182 tuple2!23444) (t!196393 List!23865)) )
))
(declare-datatypes ((array!8545 0))(
  ( (array!8546 (arr!3786 (Array (_ BitVec 32) (_ BitVec 64))) (size!18594 (_ BitVec 32))) )
))
(declare-datatypes ((array!8547 0))(
  ( (array!8548 (arr!3787 (Array (_ BitVec 32) List!23865)) (size!18595 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4972 0))(
  ( (LongMapFixedSize!4973 (defaultEntry!2851 Int) (mask!6641 (_ BitVec 32)) (extraKeys!2734 (_ BitVec 32)) (zeroValue!2744 List!23865) (minValue!2744 List!23865) (_size!5023 (_ BitVec 32)) (_keys!2783 array!8545) (_values!2766 array!8547) (_vacant!2547 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9769 0))(
  ( (Cell!9770 (v!28312 LongMapFixedSize!4972)) )
))
(declare-datatypes ((List!23866 0))(
  ( (Nil!23782) (Cons!23782 (h!29183 C!11504) (t!196394 List!23866)) )
))
(declare-datatypes ((IArray!15639 0))(
  ( (IArray!15640 (innerList!7877 List!23866)) )
))
(declare-datatypes ((Conc!7817 0))(
  ( (Node!7817 (left!18381 Conc!7817) (right!18711 Conc!7817) (csize!15864 Int) (cheight!8028 Int)) (Leaf!11424 (xs!10759 IArray!15639) (csize!15865 Int)) (Empty!7817) )
))
(declare-datatypes ((MutLongMap!2486 0))(
  ( (LongMap!2486 (underlying!5167 Cell!9769)) (MutLongMapExt!2485 (__x!15634 Int)) )
))
(declare-datatypes ((Cell!9771 0))(
  ( (Cell!9772 (v!28313 MutLongMap!2486)) )
))
(declare-datatypes ((Hashable!2400 0))(
  ( (HashableExt!2399 (__x!15635 Int)) )
))
(declare-datatypes ((MutableMap!2400 0))(
  ( (MutableMapExt!2399 (__x!15636 Int)) (HashMap!2400 (underlying!5168 Cell!9771) (hashF!4323 Hashable!2400) (_size!5024 (_ BitVec 32)) (defaultValue!2562 Int)) )
))
(declare-datatypes ((BalanceConc!15396 0))(
  ( (BalanceConc!15397 (c!340107 Conc!7817)) )
))
(declare-datatypes ((CacheFurthestNullable!606 0))(
  ( (CacheFurthestNullable!607 (cache!2781 MutableMap!2400) (totalInput!2942 BalanceConc!15396)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!606)

(declare-fun tp!652397 () Bool)

(declare-fun inv!31383 (Conc!7817) Bool)

(assert (=> b!2126881 (= e!1355618 (and (inv!31383 (c!340107 (totalInput!2942 cacheFurthestNullable!114))) tp!652397))))

(declare-fun b!2126882 () Bool)

(declare-fun e!1355608 () Bool)

(declare-fun e!1355615 () Bool)

(declare-fun lt!795919 () MutLongMap!2486)

(get-info :version)

(assert (=> b!2126882 (= e!1355608 (and e!1355615 ((_ is LongMap!2486) lt!795919)))))

(assert (=> b!2126882 (= lt!795919 (v!28313 (underlying!5168 (cache!2781 cacheFurthestNullable!114))))))

(declare-fun e!1355601 () Bool)

(declare-fun tp!652402 () Bool)

(declare-fun tp!652390 () Bool)

(declare-fun e!1355597 () Bool)

(declare-fun array_inv!2707 (array!8545) Bool)

(declare-fun array_inv!2708 (array!8547) Bool)

(assert (=> b!2126883 (= e!1355601 (and tp!652399 tp!652390 tp!652402 (array_inv!2707 (_keys!2783 (v!28312 (underlying!5167 (v!28313 (underlying!5168 (cache!2781 cacheFurthestNullable!114))))))) (array_inv!2708 (_values!2766 (v!28312 (underlying!5167 (v!28313 (underlying!5168 (cache!2781 cacheFurthestNullable!114))))))) e!1355597))))

(declare-fun res!920061 () Bool)

(declare-fun e!1355617 () Bool)

(assert (=> start!207426 (=> (not res!920061) (not e!1355617))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207426 (= res!920061 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207426 e!1355617))

(declare-fun e!1355611 () Bool)

(declare-fun inv!31384 (CacheFurthestNullable!606) Bool)

(assert (=> start!207426 (and (inv!31384 cacheFurthestNullable!114) e!1355611)))

(assert (=> start!207426 true))

(declare-datatypes ((tuple3!2984 0))(
  ( (tuple3!2985 (_1!13685 Regex!5679) (_2!13685 Context!2498) (_3!1962 C!11504)) )
))
(declare-datatypes ((tuple2!23446 0))(
  ( (tuple2!23447 (_1!13686 tuple3!2984) (_2!13686 (InoxSet Context!2498))) )
))
(declare-datatypes ((List!23867 0))(
  ( (Nil!23783) (Cons!23783 (h!29184 tuple2!23446) (t!196395 List!23867)) )
))
(declare-datatypes ((Hashable!2401 0))(
  ( (HashableExt!2400 (__x!15637 Int)) )
))
(declare-datatypes ((array!8549 0))(
  ( (array!8550 (arr!3788 (Array (_ BitVec 32) List!23867)) (size!18596 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4974 0))(
  ( (LongMapFixedSize!4975 (defaultEntry!2852 Int) (mask!6642 (_ BitVec 32)) (extraKeys!2735 (_ BitVec 32)) (zeroValue!2745 List!23867) (minValue!2745 List!23867) (_size!5025 (_ BitVec 32)) (_keys!2784 array!8545) (_values!2767 array!8549) (_vacant!2548 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9773 0))(
  ( (Cell!9774 (v!28314 LongMapFixedSize!4974)) )
))
(declare-datatypes ((MutLongMap!2487 0))(
  ( (LongMap!2487 (underlying!5169 Cell!9773)) (MutLongMapExt!2486 (__x!15638 Int)) )
))
(declare-datatypes ((Cell!9775 0))(
  ( (Cell!9776 (v!28315 MutLongMap!2487)) )
))
(declare-datatypes ((MutableMap!2401 0))(
  ( (MutableMapExt!2400 (__x!15639 Int)) (HashMap!2401 (underlying!5170 Cell!9775) (hashF!4324 Hashable!2401) (_size!5026 (_ BitVec 32)) (defaultValue!2563 Int)) )
))
(declare-datatypes ((CacheDown!1652 0))(
  ( (CacheDown!1653 (cache!2782 MutableMap!2401)) )
))
(declare-fun cacheDown!1098 () CacheDown!1652)

(declare-fun e!1355612 () Bool)

(declare-fun inv!31385 (CacheDown!1652) Bool)

(assert (=> start!207426 (and (inv!31385 cacheDown!1098) e!1355612)))

(declare-datatypes ((tuple2!23448 0))(
  ( (tuple2!23449 (_1!13687 Context!2498) (_2!13687 C!11504)) )
))
(declare-datatypes ((tuple2!23450 0))(
  ( (tuple2!23451 (_1!13688 tuple2!23448) (_2!13688 (InoxSet Context!2498))) )
))
(declare-datatypes ((List!23868 0))(
  ( (Nil!23784) (Cons!23784 (h!29185 tuple2!23450) (t!196396 List!23868)) )
))
(declare-datatypes ((array!8551 0))(
  ( (array!8552 (arr!3789 (Array (_ BitVec 32) List!23868)) (size!18597 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4976 0))(
  ( (LongMapFixedSize!4977 (defaultEntry!2853 Int) (mask!6643 (_ BitVec 32)) (extraKeys!2736 (_ BitVec 32)) (zeroValue!2746 List!23868) (minValue!2746 List!23868) (_size!5027 (_ BitVec 32)) (_keys!2785 array!8545) (_values!2768 array!8551) (_vacant!2549 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9777 0))(
  ( (Cell!9778 (v!28316 LongMapFixedSize!4976)) )
))
(declare-datatypes ((MutLongMap!2488 0))(
  ( (LongMap!2488 (underlying!5171 Cell!9777)) (MutLongMapExt!2487 (__x!15640 Int)) )
))
(declare-datatypes ((Cell!9779 0))(
  ( (Cell!9780 (v!28317 MutLongMap!2488)) )
))
(declare-datatypes ((Hashable!2402 0))(
  ( (HashableExt!2401 (__x!15641 Int)) )
))
(declare-datatypes ((MutableMap!2402 0))(
  ( (MutableMapExt!2401 (__x!15642 Int)) (HashMap!2402 (underlying!5172 Cell!9779) (hashF!4325 Hashable!2402) (_size!5028 (_ BitVec 32)) (defaultValue!2564 Int)) )
))
(declare-datatypes ((CacheUp!1666 0))(
  ( (CacheUp!1667 (cache!2783 MutableMap!2402)) )
))
(declare-fun cacheUp!979 () CacheUp!1666)

(declare-fun e!1355619 () Bool)

(declare-fun inv!31386 (CacheUp!1666) Bool)

(assert (=> start!207426 (and (inv!31386 cacheUp!979) e!1355619)))

(declare-fun condSetEmpty!15510 () Bool)

(declare-fun z!3839 () (InoxSet Context!2498))

(assert (=> start!207426 (= condSetEmpty!15510 (= z!3839 ((as const (Array Context!2498 Bool)) false)))))

(declare-fun setRes!15510 () Bool)

(assert (=> start!207426 setRes!15510))

(declare-fun totalInput!851 () BalanceConc!15396)

(declare-fun e!1355609 () Bool)

(declare-fun inv!31387 (BalanceConc!15396) Bool)

(assert (=> start!207426 (and (inv!31387 totalInput!851) e!1355609)))

(declare-fun b!2126884 () Bool)

(declare-fun e!1355604 () Bool)

(assert (=> b!2126884 (= e!1355617 e!1355604)))

(declare-fun res!920057 () Bool)

(assert (=> b!2126884 (=> (not res!920057) (not e!1355604))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!795918 () Int)

(assert (=> b!2126884 (= res!920057 (and (= totalInputSize!296 lt!795918) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18598 (BalanceConc!15396) Int)

(assert (=> b!2126884 (= lt!795918 (size!18598 totalInput!851))))

(declare-fun mapIsEmpty!12206 () Bool)

(declare-fun mapRes!12206 () Bool)

(assert (=> mapIsEmpty!12206 mapRes!12206))

(declare-fun b!2126885 () Bool)

(declare-fun e!1355613 () Bool)

(declare-fun tp!652401 () Bool)

(assert (=> b!2126885 (= e!1355613 (and tp!652401 mapRes!12207))))

(declare-fun condMapEmpty!12207 () Bool)

(declare-fun mapDefault!12205 () List!23867)

(assert (=> b!2126885 (= condMapEmpty!12207 (= (arr!3788 (_values!2767 (v!28314 (underlying!5169 (v!28315 (underlying!5170 (cache!2782 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23867)) mapDefault!12205)))))

(declare-fun b!2126886 () Bool)

(assert (=> b!2126886 (= e!1355604 (and (= (totalInput!2942 cacheFurthestNullable!114) totalInput!851) (> from!1043 lt!795918)))))

(declare-fun b!2126887 () Bool)

(declare-fun tp!652380 () Bool)

(assert (=> b!2126887 (= e!1355609 (and (inv!31383 (c!340107 totalInput!851)) tp!652380))))

(declare-fun b!2126888 () Bool)

(declare-fun e!1355625 () Bool)

(declare-fun tp!652395 () Bool)

(assert (=> b!2126888 (= e!1355625 tp!652395)))

(declare-fun mapIsEmpty!12207 () Bool)

(declare-fun mapRes!12205 () Bool)

(assert (=> mapIsEmpty!12207 mapRes!12205))

(declare-fun b!2126889 () Bool)

(declare-fun res!920059 () Bool)

(assert (=> b!2126889 (=> (not res!920059) (not e!1355604))))

(declare-fun valid!1958 (CacheDown!1652) Bool)

(assert (=> b!2126889 (= res!920059 (valid!1958 cacheDown!1098))))

(declare-fun b!2126890 () Bool)

(declare-fun e!1355623 () Bool)

(assert (=> b!2126890 (= e!1355623 e!1355601)))

(declare-fun b!2126891 () Bool)

(declare-fun e!1355607 () Bool)

(declare-fun e!1355626 () Bool)

(declare-fun lt!795921 () MutLongMap!2488)

(assert (=> b!2126891 (= e!1355607 (and e!1355626 ((_ is LongMap!2488) lt!795921)))))

(assert (=> b!2126891 (= lt!795921 (v!28317 (underlying!5172 (cache!2783 cacheUp!979))))))

(declare-fun mapNonEmpty!12205 () Bool)

(declare-fun tp!652384 () Bool)

(declare-fun tp!652383 () Bool)

(assert (=> mapNonEmpty!12205 (= mapRes!12205 (and tp!652384 tp!652383))))

(declare-fun mapValue!12205 () List!23868)

(declare-fun mapKey!12206 () (_ BitVec 32))

(declare-fun mapRest!12206 () (Array (_ BitVec 32) List!23868))

(assert (=> mapNonEmpty!12205 (= (arr!3789 (_values!2768 (v!28316 (underlying!5171 (v!28317 (underlying!5172 (cache!2783 cacheUp!979))))))) (store mapRest!12206 mapKey!12206 mapValue!12205))))

(declare-fun b!2126892 () Bool)

(declare-fun res!920056 () Bool)

(assert (=> b!2126892 (=> (not res!920056) (not e!1355604))))

(declare-fun valid!1959 (CacheUp!1666) Bool)

(assert (=> b!2126892 (= res!920056 (valid!1959 cacheUp!979))))

(declare-fun e!1355610 () Bool)

(assert (=> b!2126893 (= e!1355610 (and e!1355608 tp!652398))))

(declare-fun b!2126894 () Bool)

(declare-fun tp!652392 () Bool)

(assert (=> b!2126894 (= e!1355597 (and tp!652392 mapRes!12206))))

(declare-fun condMapEmpty!12206 () Bool)

(declare-fun mapDefault!12207 () List!23865)

(assert (=> b!2126894 (= condMapEmpty!12206 (= (arr!3787 (_values!2766 (v!28312 (underlying!5167 (v!28313 (underlying!5168 (cache!2781 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23865)) mapDefault!12207)))))

(declare-fun e!1355605 () Bool)

(declare-fun tp!652403 () Bool)

(declare-fun tp!652393 () Bool)

(declare-fun e!1355614 () Bool)

(declare-fun array_inv!2709 (array!8551) Bool)

(assert (=> b!2126895 (= e!1355605 (and tp!652381 tp!652393 tp!652403 (array_inv!2707 (_keys!2785 (v!28316 (underlying!5171 (v!28317 (underlying!5172 (cache!2783 cacheUp!979))))))) (array_inv!2709 (_values!2768 (v!28316 (underlying!5171 (v!28317 (underlying!5172 (cache!2783 cacheUp!979))))))) e!1355614))))

(declare-fun e!1355600 () Bool)

(declare-fun tp!652391 () Bool)

(declare-fun tp!652389 () Bool)

(declare-fun array_inv!2710 (array!8549) Bool)

(assert (=> b!2126896 (= e!1355600 (and tp!652400 tp!652389 tp!652391 (array_inv!2707 (_keys!2784 (v!28314 (underlying!5169 (v!28315 (underlying!5170 (cache!2782 cacheDown!1098))))))) (array_inv!2710 (_values!2767 (v!28314 (underlying!5169 (v!28315 (underlying!5170 (cache!2782 cacheDown!1098))))))) e!1355613))))

(declare-fun setIsEmpty!15510 () Bool)

(assert (=> setIsEmpty!15510 setRes!15510))

(declare-fun b!2126897 () Bool)

(declare-fun e!1355624 () Bool)

(assert (=> b!2126897 (= e!1355626 e!1355624)))

(declare-fun b!2126898 () Bool)

(assert (=> b!2126898 (= e!1355612 e!1355622)))

(declare-fun b!2126899 () Bool)

(declare-fun e!1355602 () Bool)

(assert (=> b!2126899 (= e!1355602 e!1355600)))

(declare-fun b!2126900 () Bool)

(assert (=> b!2126900 (= e!1355611 (and e!1355610 (inv!31387 (totalInput!2942 cacheFurthestNullable!114)) e!1355618))))

(declare-fun mapNonEmpty!12206 () Bool)

(declare-fun tp!652382 () Bool)

(declare-fun tp!652396 () Bool)

(assert (=> mapNonEmpty!12206 (= mapRes!12207 (and tp!652382 tp!652396))))

(declare-fun mapValue!12206 () List!23867)

(declare-fun mapRest!12205 () (Array (_ BitVec 32) List!23867))

(declare-fun mapKey!12207 () (_ BitVec 32))

(assert (=> mapNonEmpty!12206 (= (arr!3788 (_values!2767 (v!28314 (underlying!5169 (v!28315 (underlying!5170 (cache!2782 cacheDown!1098))))))) (store mapRest!12205 mapKey!12207 mapValue!12206))))

(declare-fun b!2126901 () Bool)

(declare-fun res!920055 () Bool)

(assert (=> b!2126901 (=> (not res!920055) (not e!1355604))))

(declare-fun e!1355606 () Bool)

(assert (=> b!2126901 (= res!920055 e!1355606)))

(declare-fun res!920058 () Bool)

(assert (=> b!2126901 (=> res!920058 e!1355606)))

(declare-fun nullableZipper!72 ((InoxSet Context!2498)) Bool)

(assert (=> b!2126901 (= res!920058 (not (nullableZipper!72 z!3839)))))

(declare-fun b!2126902 () Bool)

(declare-fun e!1355598 () Bool)

(declare-fun lt!795920 () MutLongMap!2487)

(assert (=> b!2126902 (= e!1355616 (and e!1355598 ((_ is LongMap!2487) lt!795920)))))

(assert (=> b!2126902 (= lt!795920 (v!28315 (underlying!5170 (cache!2782 cacheDown!1098))))))

(declare-fun mapNonEmpty!12207 () Bool)

(declare-fun tp!652386 () Bool)

(declare-fun tp!652404 () Bool)

(assert (=> mapNonEmpty!12207 (= mapRes!12206 (and tp!652386 tp!652404))))

(declare-fun mapRest!12207 () (Array (_ BitVec 32) List!23865))

(declare-fun mapValue!12207 () List!23865)

(declare-fun mapKey!12205 () (_ BitVec 32))

(assert (=> mapNonEmpty!12207 (= (arr!3787 (_values!2766 (v!28312 (underlying!5167 (v!28313 (underlying!5168 (cache!2781 cacheFurthestNullable!114))))))) (store mapRest!12207 mapKey!12205 mapValue!12207))))

(declare-fun b!2126903 () Bool)

(declare-fun res!920060 () Bool)

(assert (=> b!2126903 (=> (not res!920060) (not e!1355604))))

(declare-fun valid!1960 (CacheFurthestNullable!606) Bool)

(assert (=> b!2126903 (= res!920060 (valid!1960 cacheFurthestNullable!114))))

(declare-fun b!2126904 () Bool)

(assert (=> b!2126904 (= e!1355598 e!1355602)))

(declare-fun b!2126905 () Bool)

(assert (=> b!2126905 (= e!1355606 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2126906 () Bool)

(declare-fun tp!652388 () Bool)

(assert (=> b!2126906 (= e!1355614 (and tp!652388 mapRes!12205))))

(declare-fun condMapEmpty!12205 () Bool)

(declare-fun mapDefault!12206 () List!23868)

(assert (=> b!2126906 (= condMapEmpty!12205 (= (arr!3789 (_values!2768 (v!28316 (underlying!5171 (v!28317 (underlying!5172 (cache!2783 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23868)) mapDefault!12206)))))

(declare-fun b!2126907 () Bool)

(assert (=> b!2126907 (= e!1355624 e!1355605)))

(declare-fun b!2126908 () Bool)

(assert (=> b!2126908 (= e!1355615 e!1355623)))

(declare-fun b!2126909 () Bool)

(declare-fun e!1355620 () Bool)

(assert (=> b!2126909 (= e!1355619 e!1355620)))

(declare-fun setNonEmpty!15510 () Bool)

(declare-fun tp!652387 () Bool)

(declare-fun setElem!15510 () Context!2498)

(declare-fun inv!31388 (Context!2498) Bool)

(assert (=> setNonEmpty!15510 (= setRes!15510 (and tp!652387 (inv!31388 setElem!15510) e!1355625))))

(declare-fun setRest!15510 () (InoxSet Context!2498))

(assert (=> setNonEmpty!15510 (= z!3839 ((_ map or) (store ((as const (Array Context!2498 Bool)) false) setElem!15510 true) setRest!15510))))

(assert (=> b!2126910 (= e!1355620 (and e!1355607 tp!652394))))

(assert (= (and start!207426 res!920061) b!2126884))

(assert (= (and b!2126884 res!920057) b!2126901))

(assert (= (and b!2126901 (not res!920058)) b!2126905))

(assert (= (and b!2126901 res!920055) b!2126892))

(assert (= (and b!2126892 res!920056) b!2126889))

(assert (= (and b!2126889 res!920059) b!2126903))

(assert (= (and b!2126903 res!920060) b!2126886))

(assert (= (and b!2126894 condMapEmpty!12206) mapIsEmpty!12206))

(assert (= (and b!2126894 (not condMapEmpty!12206)) mapNonEmpty!12207))

(assert (= b!2126883 b!2126894))

(assert (= b!2126890 b!2126883))

(assert (= b!2126908 b!2126890))

(assert (= (and b!2126882 ((_ is LongMap!2486) (v!28313 (underlying!5168 (cache!2781 cacheFurthestNullable!114))))) b!2126908))

(assert (= b!2126893 b!2126882))

(assert (= (and b!2126900 ((_ is HashMap!2400) (cache!2781 cacheFurthestNullable!114))) b!2126893))

(assert (= b!2126900 b!2126881))

(assert (= start!207426 b!2126900))

(assert (= (and b!2126885 condMapEmpty!12207) mapIsEmpty!12205))

(assert (= (and b!2126885 (not condMapEmpty!12207)) mapNonEmpty!12206))

(assert (= b!2126896 b!2126885))

(assert (= b!2126899 b!2126896))

(assert (= b!2126904 b!2126899))

(assert (= (and b!2126902 ((_ is LongMap!2487) (v!28315 (underlying!5170 (cache!2782 cacheDown!1098))))) b!2126904))

(assert (= b!2126880 b!2126902))

(assert (= (and b!2126898 ((_ is HashMap!2401) (cache!2782 cacheDown!1098))) b!2126880))

(assert (= start!207426 b!2126898))

(assert (= (and b!2126906 condMapEmpty!12205) mapIsEmpty!12207))

(assert (= (and b!2126906 (not condMapEmpty!12205)) mapNonEmpty!12205))

(assert (= b!2126895 b!2126906))

(assert (= b!2126907 b!2126895))

(assert (= b!2126897 b!2126907))

(assert (= (and b!2126891 ((_ is LongMap!2488) (v!28317 (underlying!5172 (cache!2783 cacheUp!979))))) b!2126897))

(assert (= b!2126910 b!2126891))

(assert (= (and b!2126909 ((_ is HashMap!2402) (cache!2783 cacheUp!979))) b!2126910))

(assert (= start!207426 b!2126909))

(assert (= (and start!207426 condSetEmpty!15510) setIsEmpty!15510))

(assert (= (and start!207426 (not condSetEmpty!15510)) setNonEmpty!15510))

(assert (= setNonEmpty!15510 b!2126888))

(assert (= start!207426 b!2126887))

(declare-fun m!2578793 () Bool)

(assert (=> start!207426 m!2578793))

(declare-fun m!2578795 () Bool)

(assert (=> start!207426 m!2578795))

(declare-fun m!2578797 () Bool)

(assert (=> start!207426 m!2578797))

(declare-fun m!2578799 () Bool)

(assert (=> start!207426 m!2578799))

(declare-fun m!2578801 () Bool)

(assert (=> b!2126903 m!2578801))

(declare-fun m!2578803 () Bool)

(assert (=> mapNonEmpty!12206 m!2578803))

(declare-fun m!2578805 () Bool)

(assert (=> b!2126901 m!2578805))

(declare-fun m!2578807 () Bool)

(assert (=> setNonEmpty!15510 m!2578807))

(declare-fun m!2578809 () Bool)

(assert (=> b!2126884 m!2578809))

(declare-fun m!2578811 () Bool)

(assert (=> mapNonEmpty!12205 m!2578811))

(declare-fun m!2578813 () Bool)

(assert (=> b!2126892 m!2578813))

(declare-fun m!2578815 () Bool)

(assert (=> b!2126900 m!2578815))

(declare-fun m!2578817 () Bool)

(assert (=> b!2126887 m!2578817))

(declare-fun m!2578819 () Bool)

(assert (=> mapNonEmpty!12207 m!2578819))

(declare-fun m!2578821 () Bool)

(assert (=> b!2126883 m!2578821))

(declare-fun m!2578823 () Bool)

(assert (=> b!2126883 m!2578823))

(declare-fun m!2578825 () Bool)

(assert (=> b!2126895 m!2578825))

(declare-fun m!2578827 () Bool)

(assert (=> b!2126895 m!2578827))

(declare-fun m!2578829 () Bool)

(assert (=> b!2126896 m!2578829))

(declare-fun m!2578831 () Bool)

(assert (=> b!2126896 m!2578831))

(declare-fun m!2578833 () Bool)

(assert (=> b!2126881 m!2578833))

(declare-fun m!2578835 () Bool)

(assert (=> b!2126889 m!2578835))

(check-sat (not b!2126889) (not b!2126884) (not b_next!62513) (not b!2126903) (not b!2126887) (not b!2126901) (not b!2126894) (not b!2126895) (not b!2126906) (not b!2126896) (not b!2126883) (not b!2126888) (not b_next!62509) (not mapNonEmpty!12205) b_and!171395 (not b!2126881) (not mapNonEmpty!12206) b_and!171389 (not b!2126885) b_and!171391 (not mapNonEmpty!12207) (not setNonEmpty!15510) (not b_next!62515) (not start!207426) b_and!171393 (not b!2126900) b_and!171385 (not b_next!62519) (not b_next!62517) (not b!2126892) b_and!171387 (not b_next!62511))
(check-sat (not b_next!62513) (not b_next!62509) b_and!171395 b_and!171389 b_and!171391 b_and!171385 (not b_next!62515) b_and!171393 (not b_next!62519) (not b_next!62517) b_and!171387 (not b_next!62511))
