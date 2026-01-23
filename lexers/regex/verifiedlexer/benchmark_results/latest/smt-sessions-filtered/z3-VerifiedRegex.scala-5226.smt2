; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268936 () Bool)

(assert start!268936)

(declare-fun b!2782796 () Bool)

(declare-fun b_free!78565 () Bool)

(declare-fun b_next!79269 () Bool)

(assert (=> b!2782796 (= b_free!78565 (not b_next!79269))))

(declare-fun tp!881170 () Bool)

(declare-fun b_and!203303 () Bool)

(assert (=> b!2782796 (= tp!881170 b_and!203303)))

(declare-fun b!2782804 () Bool)

(declare-fun b_free!78567 () Bool)

(declare-fun b_next!79271 () Bool)

(assert (=> b!2782804 (= b_free!78567 (not b_next!79271))))

(declare-fun tp!881173 () Bool)

(declare-fun b_and!203305 () Bool)

(assert (=> b!2782804 (= tp!881173 b_and!203305)))

(declare-fun b!2782788 () Bool)

(declare-fun b_free!78569 () Bool)

(declare-fun b_next!79273 () Bool)

(assert (=> b!2782788 (= b_free!78569 (not b_next!79273))))

(declare-fun tp!881165 () Bool)

(declare-fun b_and!203307 () Bool)

(assert (=> b!2782788 (= tp!881165 b_and!203307)))

(declare-fun b!2782800 () Bool)

(declare-fun b_free!78571 () Bool)

(declare-fun b_next!79275 () Bool)

(assert (=> b!2782800 (= b_free!78571 (not b_next!79275))))

(declare-fun tp!881176 () Bool)

(declare-fun b_and!203309 () Bool)

(assert (=> b!2782800 (= tp!881176 b_and!203309)))

(declare-fun b!2782787 () Bool)

(declare-fun res!1161649 () Bool)

(declare-fun e!1755401 () Bool)

(assert (=> b!2782787 (=> (not res!1161649) (not e!1755401))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((C!16392 0))(
  ( (C!16393 (val!10130 Int)) )
))
(declare-datatypes ((List!32233 0))(
  ( (Nil!32133) (Cons!32133 (h!37553 C!16392) (t!228373 List!32233)) )
))
(declare-datatypes ((IArray!19993 0))(
  ( (IArray!19994 (innerList!10054 List!32233)) )
))
(declare-datatypes ((Conc!9994 0))(
  ( (Node!9994 (left!24444 Conc!9994) (right!24774 Conc!9994) (csize!20218 Int) (cheight!10205 Int)) (Leaf!15221 (xs!13105 IArray!19993) (csize!20219 Int)) (Empty!9994) )
))
(declare-datatypes ((BalanceConc!19602 0))(
  ( (BalanceConc!19603 (c!452276 Conc!9994)) )
))
(declare-fun totalInput!758 () BalanceConc!19602)

(declare-fun size!24935 (BalanceConc!19602) Int)

(assert (=> b!2782787 (= res!1161649 (= totalInputSize!205 (size!24935 totalInput!758)))))

(declare-fun e!1755390 () Bool)

(declare-fun tp!881163 () Bool)

(declare-fun tp!881162 () Bool)

(declare-fun e!1755400 () Bool)

(declare-datatypes ((array!13667 0))(
  ( (array!13668 (arr!6091 (Array (_ BitVec 32) (_ BitVec 64))) (size!24936 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8117 0))(
  ( (ElementMatch!8117 (c!452277 C!16392)) (Concat!13205 (regOne!16746 Regex!8117) (regTwo!16746 Regex!8117)) (EmptyExpr!8117) (Star!8117 (reg!8446 Regex!8117)) (EmptyLang!8117) (Union!8117 (regOne!16747 Regex!8117) (regTwo!16747 Regex!8117)) )
))
(declare-datatypes ((List!32234 0))(
  ( (Nil!32134) (Cons!32134 (h!37554 Regex!8117) (t!228374 List!32234)) )
))
(declare-datatypes ((Context!4670 0))(
  ( (Context!4671 (exprs!2835 List!32234)) )
))
(declare-datatypes ((tuple3!4958 0))(
  ( (tuple3!4959 (_1!19149 Regex!8117) (_2!19149 Context!4670) (_3!2949 C!16392)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32400 0))(
  ( (tuple2!32401 (_1!19150 tuple3!4958) (_2!19150 (InoxSet Context!4670))) )
))
(declare-datatypes ((List!32235 0))(
  ( (Nil!32135) (Cons!32135 (h!37555 tuple2!32400) (t!228375 List!32235)) )
))
(declare-datatypes ((array!13669 0))(
  ( (array!13670 (arr!6092 (Array (_ BitVec 32) List!32235)) (size!24937 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7682 0))(
  ( (LongMapFixedSize!7683 (defaultEntry!4226 Int) (mask!9636 (_ BitVec 32)) (extraKeys!4090 (_ BitVec 32)) (zeroValue!4100 List!32235) (minValue!4100 List!32235) (_size!7725 (_ BitVec 32)) (_keys!4141 array!13667) (_values!4122 array!13669) (_vacant!3902 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15173 0))(
  ( (Cell!15174 (v!33743 LongMapFixedSize!7682)) )
))
(declare-datatypes ((MutLongMap!3841 0))(
  ( (LongMap!3841 (underlying!7885 Cell!15173)) (MutLongMapExt!3840 (__x!21173 Int)) )
))
(declare-datatypes ((Cell!15175 0))(
  ( (Cell!15176 (v!33744 MutLongMap!3841)) )
))
(declare-datatypes ((Hashable!3757 0))(
  ( (HashableExt!3756 (__x!21174 Int)) )
))
(declare-datatypes ((MutableMap!3747 0))(
  ( (MutableMapExt!3746 (__x!21175 Int)) (HashMap!3747 (underlying!7886 Cell!15175) (hashF!5789 Hashable!3757) (_size!7726 (_ BitVec 32)) (defaultValue!3918 Int)) )
))
(declare-datatypes ((CacheDown!2574 0))(
  ( (CacheDown!2575 (cache!3890 MutableMap!3747)) )
))
(declare-fun cacheDown!1009 () CacheDown!2574)

(declare-fun array_inv!4359 (array!13667) Bool)

(declare-fun array_inv!4360 (array!13669) Bool)

(assert (=> b!2782788 (= e!1755400 (and tp!881165 tp!881162 tp!881163 (array_inv!4359 (_keys!4141 (v!33743 (underlying!7885 (v!33744 (underlying!7886 (cache!3890 cacheDown!1009))))))) (array_inv!4360 (_values!4122 (v!33743 (underlying!7885 (v!33744 (underlying!7886 (cache!3890 cacheDown!1009))))))) e!1755390))))

(declare-fun b!2782789 () Bool)

(declare-fun e!1755399 () Bool)

(declare-fun tp_is_empty!14047 () Bool)

(declare-fun tp!881168 () Bool)

(assert (=> b!2782789 (= e!1755399 (and tp_is_empty!14047 tp!881168))))

(declare-fun b!2782790 () Bool)

(declare-fun res!1161651 () Bool)

(assert (=> b!2782790 (=> (not res!1161651) (not e!1755401))))

(declare-datatypes ((Hashable!3758 0))(
  ( (HashableExt!3757 (__x!21176 Int)) )
))
(declare-datatypes ((tuple2!32402 0))(
  ( (tuple2!32403 (_1!19151 Context!4670) (_2!19151 C!16392)) )
))
(declare-datatypes ((tuple2!32404 0))(
  ( (tuple2!32405 (_1!19152 tuple2!32402) (_2!19152 (InoxSet Context!4670))) )
))
(declare-datatypes ((List!32236 0))(
  ( (Nil!32136) (Cons!32136 (h!37556 tuple2!32404) (t!228376 List!32236)) )
))
(declare-datatypes ((array!13671 0))(
  ( (array!13672 (arr!6093 (Array (_ BitVec 32) List!32236)) (size!24938 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7684 0))(
  ( (LongMapFixedSize!7685 (defaultEntry!4227 Int) (mask!9637 (_ BitVec 32)) (extraKeys!4091 (_ BitVec 32)) (zeroValue!4101 List!32236) (minValue!4101 List!32236) (_size!7727 (_ BitVec 32)) (_keys!4142 array!13667) (_values!4123 array!13671) (_vacant!3903 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15177 0))(
  ( (Cell!15178 (v!33745 LongMapFixedSize!7684)) )
))
(declare-datatypes ((MutLongMap!3842 0))(
  ( (LongMap!3842 (underlying!7887 Cell!15177)) (MutLongMapExt!3841 (__x!21177 Int)) )
))
(declare-datatypes ((Cell!15179 0))(
  ( (Cell!15180 (v!33746 MutLongMap!3842)) )
))
(declare-datatypes ((MutableMap!3748 0))(
  ( (MutableMapExt!3747 (__x!21178 Int)) (HashMap!3748 (underlying!7888 Cell!15179) (hashF!5790 Hashable!3758) (_size!7728 (_ BitVec 32)) (defaultValue!3919 Int)) )
))
(declare-datatypes ((CacheUp!2452 0))(
  ( (CacheUp!2453 (cache!3891 MutableMap!3748)) )
))
(declare-fun cacheUp!890 () CacheUp!2452)

(declare-fun valid!3005 (CacheUp!2452) Bool)

(assert (=> b!2782790 (= res!1161651 (valid!3005 cacheUp!890))))

(declare-fun res!1161648 () Bool)

(assert (=> start!268936 (=> (not res!1161648) (not e!1755401))))

(declare-fun lt!993955 () List!32233)

(declare-fun lt!993958 () List!32233)

(assert (=> start!268936 (= res!1161648 (= lt!993955 lt!993958))))

(declare-fun list!12114 (BalanceConc!19602) List!32233)

(assert (=> start!268936 (= lt!993958 (list!12114 totalInput!758))))

(declare-fun testedP!183 () List!32233)

(declare-fun testedSuffix!143 () List!32233)

(declare-fun ++!7945 (List!32233 List!32233) List!32233)

(assert (=> start!268936 (= lt!993955 (++!7945 testedP!183 testedSuffix!143))))

(assert (=> start!268936 e!1755401))

(declare-fun e!1755382 () Bool)

(declare-fun inv!43646 (BalanceConc!19602) Bool)

(assert (=> start!268936 (and (inv!43646 totalInput!758) e!1755382)))

(assert (=> start!268936 true))

(assert (=> start!268936 e!1755399))

(declare-fun e!1755394 () Bool)

(assert (=> start!268936 e!1755394))

(declare-fun e!1755392 () Bool)

(declare-fun inv!43647 (CacheDown!2574) Bool)

(assert (=> start!268936 (and (inv!43647 cacheDown!1009) e!1755392)))

(declare-fun e!1755387 () Bool)

(declare-fun inv!43648 (CacheUp!2452) Bool)

(assert (=> start!268936 (and (inv!43648 cacheUp!890) e!1755387)))

(declare-fun b!2782791 () Bool)

(declare-fun res!1161652 () Bool)

(assert (=> b!2782791 (=> (not res!1161652) (not e!1755401))))

(declare-fun valid!3006 (CacheDown!2574) Bool)

(assert (=> b!2782791 (= res!1161652 (valid!3006 cacheDown!1009))))

(declare-fun b!2782792 () Bool)

(declare-fun e!1755391 () Bool)

(declare-fun e!1755395 () Bool)

(assert (=> b!2782792 (= e!1755391 e!1755395)))

(declare-fun b!2782793 () Bool)

(declare-fun e!1755384 () Bool)

(assert (=> b!2782793 (= e!1755384 true)))

(declare-fun lt!993954 () Int)

(declare-fun size!24939 (List!32233) Int)

(assert (=> b!2782793 (= lt!993954 (size!24939 lt!993958))))

(declare-fun lt!993952 () List!32233)

(assert (=> b!2782793 (= testedSuffix!143 lt!993952)))

(declare-datatypes ((Unit!46404 0))(
  ( (Unit!46405) )
))
(declare-fun lt!993956 () Unit!46404)

(declare-fun lemmaSamePrefixThenSameSuffix!1147 (List!32233 List!32233 List!32233 List!32233 List!32233) Unit!46404)

(assert (=> b!2782793 (= lt!993956 (lemmaSamePrefixThenSameSuffix!1147 testedP!183 testedSuffix!143 testedP!183 lt!993952 lt!993958))))

(declare-fun getSuffix!1246 (List!32233 List!32233) List!32233)

(assert (=> b!2782793 (= lt!993952 (getSuffix!1246 lt!993958 testedP!183))))

(declare-fun b!2782794 () Bool)

(declare-fun e!1755389 () Bool)

(assert (=> b!2782794 (= e!1755392 e!1755389)))

(declare-fun b!2782795 () Bool)

(declare-fun res!1161653 () Bool)

(assert (=> b!2782795 (=> (not res!1161653) (not e!1755401))))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2782795 (= res!1161653 (= testedPSize!143 (size!24939 testedP!183)))))

(declare-fun e!1755385 () Bool)

(assert (=> b!2782796 (= e!1755389 (and e!1755385 tp!881170))))

(declare-fun b!2782797 () Bool)

(declare-fun e!1755393 () Bool)

(assert (=> b!2782797 (= e!1755387 e!1755393)))

(declare-fun mapIsEmpty!17537 () Bool)

(declare-fun mapRes!17537 () Bool)

(assert (=> mapIsEmpty!17537 mapRes!17537))

(declare-fun mapNonEmpty!17537 () Bool)

(declare-fun tp!881172 () Bool)

(declare-fun tp!881164 () Bool)

(assert (=> mapNonEmpty!17537 (= mapRes!17537 (and tp!881172 tp!881164))))

(declare-fun mapKey!17538 () (_ BitVec 32))

(declare-fun mapRest!17538 () (Array (_ BitVec 32) List!32235))

(declare-fun mapValue!17537 () List!32235)

(assert (=> mapNonEmpty!17537 (= (arr!6092 (_values!4122 (v!33743 (underlying!7885 (v!33744 (underlying!7886 (cache!3890 cacheDown!1009))))))) (store mapRest!17538 mapKey!17538 mapValue!17537))))

(declare-fun b!2782798 () Bool)

(declare-fun tp!881166 () Bool)

(assert (=> b!2782798 (= e!1755394 (and tp_is_empty!14047 tp!881166))))

(declare-fun b!2782799 () Bool)

(declare-fun e!1755397 () Bool)

(assert (=> b!2782799 (= e!1755397 e!1755400)))

(declare-fun mapNonEmpty!17538 () Bool)

(declare-fun mapRes!17538 () Bool)

(declare-fun tp!881171 () Bool)

(declare-fun tp!881167 () Bool)

(assert (=> mapNonEmpty!17538 (= mapRes!17538 (and tp!881171 tp!881167))))

(declare-fun mapRest!17537 () (Array (_ BitVec 32) List!32236))

(declare-fun mapKey!17537 () (_ BitVec 32))

(declare-fun mapValue!17538 () List!32236)

(assert (=> mapNonEmpty!17538 (= (arr!6093 (_values!4123 (v!33745 (underlying!7887 (v!33746 (underlying!7888 (cache!3891 cacheUp!890))))))) (store mapRest!17537 mapKey!17537 mapValue!17538))))

(declare-fun mapIsEmpty!17538 () Bool)

(assert (=> mapIsEmpty!17538 mapRes!17538))

(declare-fun e!1755383 () Bool)

(declare-fun tp!881161 () Bool)

(declare-fun tp!881175 () Bool)

(declare-fun e!1755402 () Bool)

(declare-fun array_inv!4361 (array!13671) Bool)

(assert (=> b!2782800 (= e!1755383 (and tp!881176 tp!881161 tp!881175 (array_inv!4359 (_keys!4142 (v!33745 (underlying!7887 (v!33746 (underlying!7888 (cache!3891 cacheUp!890))))))) (array_inv!4361 (_values!4123 (v!33745 (underlying!7887 (v!33746 (underlying!7888 (cache!3891 cacheUp!890))))))) e!1755402))))

(declare-fun b!2782801 () Bool)

(declare-fun e!1755386 () Bool)

(assert (=> b!2782801 (= e!1755386 e!1755397)))

(declare-fun b!2782802 () Bool)

(declare-fun tp!881174 () Bool)

(assert (=> b!2782802 (= e!1755390 (and tp!881174 mapRes!17537))))

(declare-fun condMapEmpty!17538 () Bool)

(declare-fun mapDefault!17537 () List!32235)

(assert (=> b!2782802 (= condMapEmpty!17538 (= (arr!6092 (_values!4122 (v!33743 (underlying!7885 (v!33744 (underlying!7886 (cache!3890 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32235)) mapDefault!17537)))))

(declare-fun b!2782803 () Bool)

(declare-fun e!1755396 () Bool)

(declare-fun lt!993959 () MutLongMap!3842)

(get-info :version)

(assert (=> b!2782803 (= e!1755396 (and e!1755391 ((_ is LongMap!3842) lt!993959)))))

(assert (=> b!2782803 (= lt!993959 (v!33746 (underlying!7888 (cache!3891 cacheUp!890))))))

(assert (=> b!2782804 (= e!1755393 (and e!1755396 tp!881173))))

(declare-fun b!2782805 () Bool)

(declare-fun lt!993953 () MutLongMap!3841)

(assert (=> b!2782805 (= e!1755385 (and e!1755386 ((_ is LongMap!3841) lt!993953)))))

(assert (=> b!2782805 (= lt!993953 (v!33744 (underlying!7886 (cache!3890 cacheDown!1009))))))

(declare-fun b!2782806 () Bool)

(assert (=> b!2782806 (= e!1755401 (not e!1755384))))

(declare-fun res!1161650 () Bool)

(assert (=> b!2782806 (=> res!1161650 e!1755384)))

(declare-fun isPrefix!2567 (List!32233 List!32233) Bool)

(assert (=> b!2782806 (= res!1161650 (not (isPrefix!2567 testedP!183 lt!993958)))))

(assert (=> b!2782806 (isPrefix!2567 testedP!183 lt!993955)))

(declare-fun lt!993957 () Unit!46404)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1677 (List!32233 List!32233) Unit!46404)

(assert (=> b!2782806 (= lt!993957 (lemmaConcatTwoListThenFirstIsPrefix!1677 testedP!183 testedSuffix!143))))

(declare-fun b!2782807 () Bool)

(declare-fun tp!881169 () Bool)

(declare-fun inv!43649 (Conc!9994) Bool)

(assert (=> b!2782807 (= e!1755382 (and (inv!43649 (c!452276 totalInput!758)) tp!881169))))

(declare-fun b!2782808 () Bool)

(declare-fun tp!881177 () Bool)

(assert (=> b!2782808 (= e!1755402 (and tp!881177 mapRes!17538))))

(declare-fun condMapEmpty!17537 () Bool)

(declare-fun mapDefault!17538 () List!32236)

(assert (=> b!2782808 (= condMapEmpty!17537 (= (arr!6093 (_values!4123 (v!33745 (underlying!7887 (v!33746 (underlying!7888 (cache!3891 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32236)) mapDefault!17538)))))

(declare-fun b!2782809 () Bool)

(assert (=> b!2782809 (= e!1755395 e!1755383)))

(assert (= (and start!268936 res!1161648) b!2782795))

(assert (= (and b!2782795 res!1161653) b!2782787))

(assert (= (and b!2782787 res!1161649) b!2782790))

(assert (= (and b!2782790 res!1161651) b!2782791))

(assert (= (and b!2782791 res!1161652) b!2782806))

(assert (= (and b!2782806 (not res!1161650)) b!2782793))

(assert (= start!268936 b!2782807))

(assert (= (and start!268936 ((_ is Cons!32133) testedP!183)) b!2782789))

(assert (= (and start!268936 ((_ is Cons!32133) testedSuffix!143)) b!2782798))

(assert (= (and b!2782802 condMapEmpty!17538) mapIsEmpty!17537))

(assert (= (and b!2782802 (not condMapEmpty!17538)) mapNonEmpty!17537))

(assert (= b!2782788 b!2782802))

(assert (= b!2782799 b!2782788))

(assert (= b!2782801 b!2782799))

(assert (= (and b!2782805 ((_ is LongMap!3841) (v!33744 (underlying!7886 (cache!3890 cacheDown!1009))))) b!2782801))

(assert (= b!2782796 b!2782805))

(assert (= (and b!2782794 ((_ is HashMap!3747) (cache!3890 cacheDown!1009))) b!2782796))

(assert (= start!268936 b!2782794))

(assert (= (and b!2782808 condMapEmpty!17537) mapIsEmpty!17538))

(assert (= (and b!2782808 (not condMapEmpty!17537)) mapNonEmpty!17538))

(assert (= b!2782800 b!2782808))

(assert (= b!2782809 b!2782800))

(assert (= b!2782792 b!2782809))

(assert (= (and b!2782803 ((_ is LongMap!3842) (v!33746 (underlying!7888 (cache!3891 cacheUp!890))))) b!2782792))

(assert (= b!2782804 b!2782803))

(assert (= (and b!2782797 ((_ is HashMap!3748) (cache!3891 cacheUp!890))) b!2782804))

(assert (= start!268936 b!2782797))

(declare-fun m!3213879 () Bool)

(assert (=> b!2782787 m!3213879))

(declare-fun m!3213881 () Bool)

(assert (=> b!2782807 m!3213881))

(declare-fun m!3213883 () Bool)

(assert (=> b!2782793 m!3213883))

(declare-fun m!3213885 () Bool)

(assert (=> b!2782793 m!3213885))

(declare-fun m!3213887 () Bool)

(assert (=> b!2782793 m!3213887))

(declare-fun m!3213889 () Bool)

(assert (=> start!268936 m!3213889))

(declare-fun m!3213891 () Bool)

(assert (=> start!268936 m!3213891))

(declare-fun m!3213893 () Bool)

(assert (=> start!268936 m!3213893))

(declare-fun m!3213895 () Bool)

(assert (=> start!268936 m!3213895))

(declare-fun m!3213897 () Bool)

(assert (=> start!268936 m!3213897))

(declare-fun m!3213899 () Bool)

(assert (=> b!2782788 m!3213899))

(declare-fun m!3213901 () Bool)

(assert (=> b!2782788 m!3213901))

(declare-fun m!3213903 () Bool)

(assert (=> b!2782791 m!3213903))

(declare-fun m!3213905 () Bool)

(assert (=> mapNonEmpty!17538 m!3213905))

(declare-fun m!3213907 () Bool)

(assert (=> b!2782800 m!3213907))

(declare-fun m!3213909 () Bool)

(assert (=> b!2782800 m!3213909))

(declare-fun m!3213911 () Bool)

(assert (=> mapNonEmpty!17537 m!3213911))

(declare-fun m!3213913 () Bool)

(assert (=> b!2782790 m!3213913))

(declare-fun m!3213915 () Bool)

(assert (=> b!2782806 m!3213915))

(declare-fun m!3213917 () Bool)

(assert (=> b!2782806 m!3213917))

(declare-fun m!3213919 () Bool)

(assert (=> b!2782806 m!3213919))

(declare-fun m!3213921 () Bool)

(assert (=> b!2782795 m!3213921))

(check-sat (not b!2782789) (not b!2782798) (not b!2782787) (not b_next!79269) (not b!2782793) b_and!203303 (not b!2782788) (not b!2782791) (not b!2782800) (not b!2782808) (not b!2782790) (not mapNonEmpty!17538) (not b_next!79271) b_and!203305 (not b!2782795) b_and!203307 (not b!2782807) (not start!268936) (not b!2782802) b_and!203309 (not b_next!79275) (not b_next!79273) (not b!2782806) (not mapNonEmpty!17537) tp_is_empty!14047)
(check-sat b_and!203305 (not b_next!79269) b_and!203303 b_and!203307 b_and!203309 (not b_next!79271) (not b_next!79275) (not b_next!79273))
