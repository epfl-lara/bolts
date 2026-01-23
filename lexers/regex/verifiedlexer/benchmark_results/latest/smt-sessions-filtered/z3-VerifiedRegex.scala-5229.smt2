; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268948 () Bool)

(assert start!268948)

(declare-fun b!2783260 () Bool)

(declare-fun b_free!78613 () Bool)

(declare-fun b_next!79317 () Bool)

(assert (=> b!2783260 (= b_free!78613 (not b_next!79317))))

(declare-fun tp!881508 () Bool)

(declare-fun b_and!203351 () Bool)

(assert (=> b!2783260 (= tp!881508 b_and!203351)))

(declare-fun b!2783240 () Bool)

(declare-fun b_free!78615 () Bool)

(declare-fun b_next!79319 () Bool)

(assert (=> b!2783240 (= b_free!78615 (not b_next!79319))))

(declare-fun tp!881512 () Bool)

(declare-fun b_and!203353 () Bool)

(assert (=> b!2783240 (= tp!881512 b_and!203353)))

(declare-fun b!2783242 () Bool)

(declare-fun b_free!78617 () Bool)

(declare-fun b_next!79321 () Bool)

(assert (=> b!2783242 (= b_free!78617 (not b_next!79321))))

(declare-fun tp!881519 () Bool)

(declare-fun b_and!203355 () Bool)

(assert (=> b!2783242 (= tp!881519 b_and!203355)))

(declare-fun b!2783265 () Bool)

(declare-fun b_free!78619 () Bool)

(declare-fun b_next!79323 () Bool)

(assert (=> b!2783265 (= b_free!78619 (not b_next!79323))))

(declare-fun tp!881513 () Bool)

(declare-fun b_and!203357 () Bool)

(assert (=> b!2783265 (= tp!881513 b_and!203357)))

(declare-fun e!1755789 () Bool)

(declare-fun e!1755797 () Bool)

(declare-fun tp!881501 () Bool)

(declare-datatypes ((C!16404 0))(
  ( (C!16405 (val!10136 Int)) )
))
(declare-datatypes ((array!13701 0))(
  ( (array!13702 (arr!6108 (Array (_ BitVec 32) (_ BitVec 64))) (size!24961 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8123 0))(
  ( (ElementMatch!8123 (c!452287 C!16404)) (Concat!13211 (regOne!16758 Regex!8123) (regTwo!16758 Regex!8123)) (EmptyExpr!8123) (Star!8123 (reg!8452 Regex!8123)) (EmptyLang!8123) (Union!8123 (regOne!16759 Regex!8123) (regTwo!16759 Regex!8123)) )
))
(declare-datatypes ((List!32255 0))(
  ( (Nil!32155) (Cons!32155 (h!37575 Regex!8123) (t!228395 List!32255)) )
))
(declare-datatypes ((Context!4682 0))(
  ( (Context!4683 (exprs!2841 List!32255)) )
))
(declare-datatypes ((tuple3!4970 0))(
  ( (tuple3!4971 (_1!19171 Regex!8123) (_2!19171 Context!4682) (_3!2955 C!16404)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32432 0))(
  ( (tuple2!32433 (_1!19172 tuple3!4970) (_2!19172 (InoxSet Context!4682))) )
))
(declare-datatypes ((List!32256 0))(
  ( (Nil!32156) (Cons!32156 (h!37576 tuple2!32432) (t!228396 List!32256)) )
))
(declare-datatypes ((array!13703 0))(
  ( (array!13704 (arr!6109 (Array (_ BitVec 32) List!32256)) (size!24962 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7704 0))(
  ( (LongMapFixedSize!7705 (defaultEntry!4237 Int) (mask!9650 (_ BitVec 32)) (extraKeys!4101 (_ BitVec 32)) (zeroValue!4111 List!32256) (minValue!4111 List!32256) (_size!7747 (_ BitVec 32)) (_keys!4152 array!13701) (_values!4133 array!13703) (_vacant!3913 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15217 0))(
  ( (Cell!15218 (v!33765 LongMapFixedSize!7704)) )
))
(declare-datatypes ((MutLongMap!3852 0))(
  ( (LongMap!3852 (underlying!7907 Cell!15217)) (MutLongMapExt!3851 (__x!21206 Int)) )
))
(declare-datatypes ((Cell!15219 0))(
  ( (Cell!15220 (v!33766 MutLongMap!3852)) )
))
(declare-datatypes ((Hashable!3768 0))(
  ( (HashableExt!3767 (__x!21207 Int)) )
))
(declare-datatypes ((MutableMap!3758 0))(
  ( (MutableMapExt!3757 (__x!21208 Int)) (HashMap!3758 (underlying!7908 Cell!15219) (hashF!5800 Hashable!3768) (_size!7748 (_ BitVec 32)) (defaultValue!3929 Int)) )
))
(declare-datatypes ((CacheDown!2586 0))(
  ( (CacheDown!2587 (cache!3901 MutableMap!3758)) )
))
(declare-fun cacheDown!1009 () CacheDown!2586)

(declare-fun tp!881518 () Bool)

(declare-fun array_inv!4373 (array!13701) Bool)

(declare-fun array_inv!4374 (array!13703) Bool)

(assert (=> b!2783240 (= e!1755797 (and tp!881512 tp!881501 tp!881518 (array_inv!4373 (_keys!4152 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))) (array_inv!4374 (_values!4133 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))) e!1755789))))

(declare-fun b!2783241 () Bool)

(declare-fun e!1755800 () Bool)

(declare-fun e!1755809 () Bool)

(assert (=> b!2783241 (= e!1755800 (not e!1755809))))

(declare-fun res!1161780 () Bool)

(assert (=> b!2783241 (=> res!1161780 e!1755809)))

(declare-datatypes ((List!32257 0))(
  ( (Nil!32157) (Cons!32157 (h!37577 C!16404) (t!228397 List!32257)) )
))
(declare-fun testedP!183 () List!32257)

(declare-fun lt!994103 () List!32257)

(declare-fun isPrefix!2572 (List!32257 List!32257) Bool)

(assert (=> b!2783241 (= res!1161780 (not (isPrefix!2572 testedP!183 lt!994103)))))

(declare-fun lt!994102 () List!32257)

(assert (=> b!2783241 (isPrefix!2572 testedP!183 lt!994102)))

(declare-datatypes ((Unit!46414 0))(
  ( (Unit!46415) )
))
(declare-fun lt!994101 () Unit!46414)

(declare-fun testedSuffix!143 () List!32257)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1682 (List!32257 List!32257) Unit!46414)

(assert (=> b!2783241 (= lt!994101 (lemmaConcatTwoListThenFirstIsPrefix!1682 testedP!183 testedSuffix!143))))

(declare-fun e!1755808 () Bool)

(declare-fun e!1755802 () Bool)

(assert (=> b!2783242 (= e!1755808 (and e!1755802 tp!881519))))

(declare-fun b!2783243 () Bool)

(declare-fun res!1161778 () Bool)

(assert (=> b!2783243 (=> (not res!1161778) (not e!1755800))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!24963 (List!32257) Int)

(assert (=> b!2783243 (= res!1161778 (= testedPSize!143 (size!24963 testedP!183)))))

(declare-fun b!2783244 () Bool)

(declare-fun res!1161785 () Bool)

(assert (=> b!2783244 (=> (not res!1161785) (not e!1755800))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((IArray!20003 0))(
  ( (IArray!20004 (innerList!10059 List!32257)) )
))
(declare-datatypes ((Conc!9999 0))(
  ( (Node!9999 (left!24452 Conc!9999) (right!24782 Conc!9999) (csize!20228 Int) (cheight!10210 Int)) (Leaf!15229 (xs!13110 IArray!20003) (csize!20229 Int)) (Empty!9999) )
))
(declare-datatypes ((BalanceConc!19612 0))(
  ( (BalanceConc!19613 (c!452288 Conc!9999)) )
))
(declare-fun totalInput!758 () BalanceConc!19612)

(declare-fun size!24964 (BalanceConc!19612) Int)

(assert (=> b!2783244 (= res!1161785 (= totalInputSize!205 (size!24964 totalInput!758)))))

(declare-fun res!1161784 () Bool)

(assert (=> start!268948 (=> (not res!1161784) (not e!1755800))))

(assert (=> start!268948 (= res!1161784 (= lt!994102 lt!994103))))

(declare-fun list!12119 (BalanceConc!19612) List!32257)

(assert (=> start!268948 (= lt!994103 (list!12119 totalInput!758))))

(declare-fun ++!7950 (List!32257 List!32257) List!32257)

(assert (=> start!268948 (= lt!994102 (++!7950 testedP!183 testedSuffix!143))))

(assert (=> start!268948 e!1755800))

(declare-fun e!1755805 () Bool)

(declare-fun inv!43679 (BalanceConc!19612) Bool)

(assert (=> start!268948 (and (inv!43679 totalInput!758) e!1755805)))

(declare-fun condSetEmpty!23353 () Bool)

(declare-fun z!3684 () (InoxSet Context!4682))

(assert (=> start!268948 (= condSetEmpty!23353 (= z!3684 ((as const (Array Context!4682 Bool)) false)))))

(declare-fun setRes!23353 () Bool)

(assert (=> start!268948 setRes!23353))

(assert (=> start!268948 true))

(declare-fun e!1755793 () Bool)

(assert (=> start!268948 e!1755793))

(declare-fun e!1755796 () Bool)

(assert (=> start!268948 e!1755796))

(declare-fun e!1755807 () Bool)

(declare-fun inv!43680 (CacheDown!2586) Bool)

(assert (=> start!268948 (and (inv!43680 cacheDown!1009) e!1755807)))

(declare-datatypes ((Hashable!3769 0))(
  ( (HashableExt!3768 (__x!21209 Int)) )
))
(declare-datatypes ((tuple2!32434 0))(
  ( (tuple2!32435 (_1!19173 Context!4682) (_2!19173 C!16404)) )
))
(declare-datatypes ((tuple2!32436 0))(
  ( (tuple2!32437 (_1!19174 tuple2!32434) (_2!19174 (InoxSet Context!4682))) )
))
(declare-datatypes ((List!32258 0))(
  ( (Nil!32158) (Cons!32158 (h!37578 tuple2!32436) (t!228398 List!32258)) )
))
(declare-datatypes ((array!13705 0))(
  ( (array!13706 (arr!6110 (Array (_ BitVec 32) List!32258)) (size!24965 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7706 0))(
  ( (LongMapFixedSize!7707 (defaultEntry!4238 Int) (mask!9651 (_ BitVec 32)) (extraKeys!4102 (_ BitVec 32)) (zeroValue!4112 List!32258) (minValue!4112 List!32258) (_size!7749 (_ BitVec 32)) (_keys!4153 array!13701) (_values!4134 array!13705) (_vacant!3914 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15221 0))(
  ( (Cell!15222 (v!33767 LongMapFixedSize!7706)) )
))
(declare-datatypes ((MutLongMap!3853 0))(
  ( (LongMap!3853 (underlying!7909 Cell!15221)) (MutLongMapExt!3852 (__x!21210 Int)) )
))
(declare-datatypes ((Cell!15223 0))(
  ( (Cell!15224 (v!33768 MutLongMap!3853)) )
))
(declare-datatypes ((MutableMap!3759 0))(
  ( (MutableMapExt!3758 (__x!21211 Int)) (HashMap!3759 (underlying!7910 Cell!15223) (hashF!5801 Hashable!3769) (_size!7750 (_ BitVec 32)) (defaultValue!3930 Int)) )
))
(declare-datatypes ((CacheUp!2462 0))(
  ( (CacheUp!2463 (cache!3902 MutableMap!3759)) )
))
(declare-fun cacheUp!890 () CacheUp!2462)

(declare-fun e!1755806 () Bool)

(declare-fun inv!43681 (CacheUp!2462) Bool)

(assert (=> start!268948 (and (inv!43681 cacheUp!890) e!1755806)))

(declare-fun b!2783245 () Bool)

(declare-fun tp_is_empty!14059 () Bool)

(declare-fun tp!881502 () Bool)

(assert (=> b!2783245 (= e!1755796 (and tp_is_empty!14059 tp!881502))))

(declare-fun b!2783246 () Bool)

(declare-fun tp!881506 () Bool)

(declare-fun mapRes!17573 () Bool)

(assert (=> b!2783246 (= e!1755789 (and tp!881506 mapRes!17573))))

(declare-fun condMapEmpty!17573 () Bool)

(declare-fun mapDefault!17574 () List!32256)

(assert (=> b!2783246 (= condMapEmpty!17573 (= (arr!6109 (_values!4133 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32256)) mapDefault!17574)))))

(declare-fun mapNonEmpty!17573 () Bool)

(declare-fun mapRes!17574 () Bool)

(declare-fun tp!881505 () Bool)

(declare-fun tp!881507 () Bool)

(assert (=> mapNonEmpty!17573 (= mapRes!17574 (and tp!881505 tp!881507))))

(declare-fun mapKey!17573 () (_ BitVec 32))

(declare-fun mapValue!17574 () List!32258)

(declare-fun mapRest!17573 () (Array (_ BitVec 32) List!32258))

(assert (=> mapNonEmpty!17573 (= (arr!6110 (_values!4134 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))) (store mapRest!17573 mapKey!17573 mapValue!17574))))

(declare-fun setNonEmpty!23353 () Bool)

(declare-fun tp!881511 () Bool)

(declare-fun setElem!23353 () Context!4682)

(declare-fun e!1755788 () Bool)

(declare-fun inv!43682 (Context!4682) Bool)

(assert (=> setNonEmpty!23353 (= setRes!23353 (and tp!881511 (inv!43682 setElem!23353) e!1755788))))

(declare-fun setRest!23353 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23353 (= z!3684 ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23353 true) setRest!23353))))

(declare-fun mapIsEmpty!17573 () Bool)

(assert (=> mapIsEmpty!17573 mapRes!17573))

(declare-fun mapIsEmpty!17574 () Bool)

(assert (=> mapIsEmpty!17574 mapRes!17574))

(declare-fun b!2783247 () Bool)

(declare-fun e!1755795 () Bool)

(declare-fun e!1755798 () Bool)

(declare-fun lt!994097 () MutLongMap!3853)

(get-info :version)

(assert (=> b!2783247 (= e!1755795 (and e!1755798 ((_ is LongMap!3853) lt!994097)))))

(assert (=> b!2783247 (= lt!994097 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))

(declare-fun b!2783248 () Bool)

(declare-fun tp!881509 () Bool)

(declare-fun inv!43683 (Conc!9999) Bool)

(assert (=> b!2783248 (= e!1755805 (and (inv!43683 (c!452288 totalInput!758)) tp!881509))))

(declare-fun b!2783249 () Bool)

(declare-fun e!1755799 () Bool)

(declare-fun tp!881504 () Bool)

(assert (=> b!2783249 (= e!1755799 (and tp!881504 mapRes!17574))))

(declare-fun condMapEmpty!17574 () Bool)

(declare-fun mapDefault!17573 () List!32258)

(assert (=> b!2783249 (= condMapEmpty!17574 (= (arr!6110 (_values!4134 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32258)) mapDefault!17573)))))

(declare-fun b!2783250 () Bool)

(declare-fun e!1755790 () Bool)

(assert (=> b!2783250 (= e!1755806 e!1755790)))

(declare-fun b!2783251 () Bool)

(declare-fun e!1755791 () Bool)

(assert (=> b!2783251 (= e!1755798 e!1755791)))

(declare-fun b!2783252 () Bool)

(declare-fun e!1755801 () Bool)

(declare-fun lt!994099 () MutLongMap!3852)

(assert (=> b!2783252 (= e!1755802 (and e!1755801 ((_ is LongMap!3852) lt!994099)))))

(assert (=> b!2783252 (= lt!994099 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))

(declare-fun b!2783253 () Bool)

(declare-fun res!1161781 () Bool)

(declare-fun e!1755792 () Bool)

(assert (=> b!2783253 (=> res!1161781 e!1755792)))

(assert (=> b!2783253 (= res!1161781 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2783254 () Bool)

(assert (=> b!2783254 (= e!1755809 e!1755792)))

(declare-fun res!1161782 () Bool)

(assert (=> b!2783254 (=> res!1161782 e!1755792)))

(declare-fun lostCauseZipper!450 ((InoxSet Context!4682)) Bool)

(assert (=> b!2783254 (= res!1161782 (lostCauseZipper!450 z!3684))))

(declare-fun lt!994098 () List!32257)

(assert (=> b!2783254 (and (= testedSuffix!143 lt!994098) (= lt!994098 testedSuffix!143))))

(declare-fun lt!994100 () Unit!46414)

(declare-fun lemmaSamePrefixThenSameSuffix!1151 (List!32257 List!32257 List!32257 List!32257 List!32257) Unit!46414)

(assert (=> b!2783254 (= lt!994100 (lemmaSamePrefixThenSameSuffix!1151 testedP!183 testedSuffix!143 testedP!183 lt!994098 lt!994103))))

(declare-fun getSuffix!1250 (List!32257 List!32257) List!32257)

(assert (=> b!2783254 (= lt!994098 (getSuffix!1250 lt!994103 testedP!183))))

(declare-fun b!2783255 () Bool)

(declare-fun res!1161783 () Bool)

(assert (=> b!2783255 (=> (not res!1161783) (not e!1755800))))

(declare-fun valid!3014 (CacheDown!2586) Bool)

(assert (=> b!2783255 (= res!1161783 (valid!3014 cacheDown!1009))))

(declare-fun b!2783256 () Bool)

(declare-fun e!1755803 () Bool)

(assert (=> b!2783256 (= e!1755791 e!1755803)))

(declare-fun b!2783257 () Bool)

(declare-fun e!1755794 () Bool)

(assert (=> b!2783257 (= e!1755794 e!1755797)))

(declare-fun setIsEmpty!23353 () Bool)

(assert (=> setIsEmpty!23353 setRes!23353))

(declare-fun b!2783258 () Bool)

(assert (=> b!2783258 (= e!1755801 e!1755794)))

(declare-fun b!2783259 () Bool)

(assert (=> b!2783259 (= e!1755807 e!1755808)))

(declare-fun tp!881516 () Bool)

(declare-fun tp!881503 () Bool)

(declare-fun array_inv!4375 (array!13705) Bool)

(assert (=> b!2783260 (= e!1755803 (and tp!881508 tp!881516 tp!881503 (array_inv!4373 (_keys!4153 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))) (array_inv!4375 (_values!4134 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))) e!1755799))))

(declare-fun b!2783261 () Bool)

(declare-fun res!1161779 () Bool)

(assert (=> b!2783261 (=> (not res!1161779) (not e!1755800))))

(declare-fun valid!3015 (CacheUp!2462) Bool)

(assert (=> b!2783261 (= res!1161779 (valid!3015 cacheUp!890))))

(declare-fun b!2783262 () Bool)

(declare-fun tp!881517 () Bool)

(assert (=> b!2783262 (= e!1755788 tp!881517)))

(declare-fun mapNonEmpty!17574 () Bool)

(declare-fun tp!881510 () Bool)

(declare-fun tp!881514 () Bool)

(assert (=> mapNonEmpty!17574 (= mapRes!17573 (and tp!881510 tp!881514))))

(declare-fun mapValue!17573 () List!32256)

(declare-fun mapKey!17574 () (_ BitVec 32))

(declare-fun mapRest!17574 () (Array (_ BitVec 32) List!32256))

(assert (=> mapNonEmpty!17574 (= (arr!6109 (_values!4133 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))) (store mapRest!17574 mapKey!17574 mapValue!17573))))

(declare-fun b!2783263 () Bool)

(declare-fun tp!881515 () Bool)

(assert (=> b!2783263 (= e!1755793 (and tp_is_empty!14059 tp!881515))))

(declare-fun b!2783264 () Bool)

(declare-fun isBalanced!3050 (Conc!9999) Bool)

(assert (=> b!2783264 (= e!1755792 (isBalanced!3050 (c!452288 totalInput!758)))))

(assert (=> b!2783265 (= e!1755790 (and e!1755795 tp!881513))))

(assert (= (and start!268948 res!1161784) b!2783243))

(assert (= (and b!2783243 res!1161778) b!2783244))

(assert (= (and b!2783244 res!1161785) b!2783261))

(assert (= (and b!2783261 res!1161779) b!2783255))

(assert (= (and b!2783255 res!1161783) b!2783241))

(assert (= (and b!2783241 (not res!1161780)) b!2783254))

(assert (= (and b!2783254 (not res!1161782)) b!2783253))

(assert (= (and b!2783253 (not res!1161781)) b!2783264))

(assert (= start!268948 b!2783248))

(assert (= (and start!268948 condSetEmpty!23353) setIsEmpty!23353))

(assert (= (and start!268948 (not condSetEmpty!23353)) setNonEmpty!23353))

(assert (= setNonEmpty!23353 b!2783262))

(assert (= (and start!268948 ((_ is Cons!32157) testedP!183)) b!2783263))

(assert (= (and start!268948 ((_ is Cons!32157) testedSuffix!143)) b!2783245))

(assert (= (and b!2783246 condMapEmpty!17573) mapIsEmpty!17573))

(assert (= (and b!2783246 (not condMapEmpty!17573)) mapNonEmpty!17574))

(assert (= b!2783240 b!2783246))

(assert (= b!2783257 b!2783240))

(assert (= b!2783258 b!2783257))

(assert (= (and b!2783252 ((_ is LongMap!3852) (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))) b!2783258))

(assert (= b!2783242 b!2783252))

(assert (= (and b!2783259 ((_ is HashMap!3758) (cache!3901 cacheDown!1009))) b!2783242))

(assert (= start!268948 b!2783259))

(assert (= (and b!2783249 condMapEmpty!17574) mapIsEmpty!17574))

(assert (= (and b!2783249 (not condMapEmpty!17574)) mapNonEmpty!17573))

(assert (= b!2783260 b!2783249))

(assert (= b!2783256 b!2783260))

(assert (= b!2783251 b!2783256))

(assert (= (and b!2783247 ((_ is LongMap!3853) (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))) b!2783251))

(assert (= b!2783265 b!2783247))

(assert (= (and b!2783250 ((_ is HashMap!3759) (cache!3902 cacheUp!890))) b!2783265))

(assert (= start!268948 b!2783250))

(declare-fun m!3214167 () Bool)

(assert (=> b!2783264 m!3214167))

(declare-fun m!3214169 () Bool)

(assert (=> b!2783255 m!3214169))

(declare-fun m!3214171 () Bool)

(assert (=> b!2783240 m!3214171))

(declare-fun m!3214173 () Bool)

(assert (=> b!2783240 m!3214173))

(declare-fun m!3214175 () Bool)

(assert (=> b!2783243 m!3214175))

(declare-fun m!3214177 () Bool)

(assert (=> mapNonEmpty!17574 m!3214177))

(declare-fun m!3214179 () Bool)

(assert (=> start!268948 m!3214179))

(declare-fun m!3214181 () Bool)

(assert (=> start!268948 m!3214181))

(declare-fun m!3214183 () Bool)

(assert (=> start!268948 m!3214183))

(declare-fun m!3214185 () Bool)

(assert (=> start!268948 m!3214185))

(declare-fun m!3214187 () Bool)

(assert (=> start!268948 m!3214187))

(declare-fun m!3214189 () Bool)

(assert (=> setNonEmpty!23353 m!3214189))

(declare-fun m!3214191 () Bool)

(assert (=> b!2783254 m!3214191))

(declare-fun m!3214193 () Bool)

(assert (=> b!2783254 m!3214193))

(declare-fun m!3214195 () Bool)

(assert (=> b!2783254 m!3214195))

(declare-fun m!3214197 () Bool)

(assert (=> b!2783244 m!3214197))

(declare-fun m!3214199 () Bool)

(assert (=> b!2783248 m!3214199))

(declare-fun m!3214201 () Bool)

(assert (=> b!2783261 m!3214201))

(declare-fun m!3214203 () Bool)

(assert (=> b!2783260 m!3214203))

(declare-fun m!3214205 () Bool)

(assert (=> b!2783260 m!3214205))

(declare-fun m!3214207 () Bool)

(assert (=> mapNonEmpty!17573 m!3214207))

(declare-fun m!3214209 () Bool)

(assert (=> b!2783241 m!3214209))

(declare-fun m!3214211 () Bool)

(assert (=> b!2783241 m!3214211))

(declare-fun m!3214213 () Bool)

(assert (=> b!2783241 m!3214213))

(check-sat (not b_next!79319) (not b!2783261) b_and!203357 (not b_next!79323) (not b!2783244) (not start!268948) (not b!2783263) b_and!203353 b_and!203351 (not b!2783243) (not b_next!79317) (not b!2783260) (not mapNonEmpty!17574) (not b!2783249) (not b!2783255) (not b!2783241) b_and!203355 (not mapNonEmpty!17573) (not b!2783248) (not b!2783240) (not setNonEmpty!23353) (not b_next!79321) (not b!2783246) (not b!2783254) (not b!2783264) (not b!2783262) tp_is_empty!14059 (not b!2783245))
(check-sat (not b_next!79319) b_and!203357 (not b_next!79323) b_and!203353 b_and!203355 b_and!203351 (not b_next!79321) (not b_next!79317))
(get-model)

(declare-fun d!810316 () Bool)

(assert (=> d!810316 (= (array_inv!4373 (_keys!4152 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))) (bvsge (size!24961 (_keys!4152 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2783240 d!810316))

(declare-fun d!810318 () Bool)

(assert (=> d!810318 (= (array_inv!4374 (_values!4133 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))) (bvsge (size!24962 (_values!4133 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2783240 d!810318))

(declare-fun d!810320 () Bool)

(declare-fun c!452291 () Bool)

(assert (=> d!810320 (= c!452291 ((_ is Node!9999) (c!452288 totalInput!758)))))

(declare-fun e!1755815 () Bool)

(assert (=> d!810320 (= (inv!43683 (c!452288 totalInput!758)) e!1755815)))

(declare-fun b!2783272 () Bool)

(declare-fun inv!43684 (Conc!9999) Bool)

(assert (=> b!2783272 (= e!1755815 (inv!43684 (c!452288 totalInput!758)))))

(declare-fun b!2783273 () Bool)

(declare-fun e!1755816 () Bool)

(assert (=> b!2783273 (= e!1755815 e!1755816)))

(declare-fun res!1161788 () Bool)

(assert (=> b!2783273 (= res!1161788 (not ((_ is Leaf!15229) (c!452288 totalInput!758))))))

(assert (=> b!2783273 (=> res!1161788 e!1755816)))

(declare-fun b!2783274 () Bool)

(declare-fun inv!43685 (Conc!9999) Bool)

(assert (=> b!2783274 (= e!1755816 (inv!43685 (c!452288 totalInput!758)))))

(assert (= (and d!810320 c!452291) b!2783272))

(assert (= (and d!810320 (not c!452291)) b!2783273))

(assert (= (and b!2783273 (not res!1161788)) b!2783274))

(declare-fun m!3214215 () Bool)

(assert (=> b!2783272 m!3214215))

(declare-fun m!3214217 () Bool)

(assert (=> b!2783274 m!3214217))

(assert (=> b!2783248 d!810320))

(declare-fun d!810322 () Bool)

(declare-fun e!1755824 () Bool)

(assert (=> d!810322 e!1755824))

(declare-fun res!1161798 () Bool)

(assert (=> d!810322 (=> res!1161798 e!1755824)))

(declare-fun lt!994106 () Bool)

(assert (=> d!810322 (= res!1161798 (not lt!994106))))

(declare-fun e!1755825 () Bool)

(assert (=> d!810322 (= lt!994106 e!1755825)))

(declare-fun res!1161799 () Bool)

(assert (=> d!810322 (=> res!1161799 e!1755825)))

(assert (=> d!810322 (= res!1161799 ((_ is Nil!32157) testedP!183))))

(assert (=> d!810322 (= (isPrefix!2572 testedP!183 lt!994103) lt!994106)))

(declare-fun b!2783285 () Bool)

(declare-fun e!1755823 () Bool)

(declare-fun tail!4396 (List!32257) List!32257)

(assert (=> b!2783285 (= e!1755823 (isPrefix!2572 (tail!4396 testedP!183) (tail!4396 lt!994103)))))

(declare-fun b!2783283 () Bool)

(assert (=> b!2783283 (= e!1755825 e!1755823)))

(declare-fun res!1161797 () Bool)

(assert (=> b!2783283 (=> (not res!1161797) (not e!1755823))))

(assert (=> b!2783283 (= res!1161797 (not ((_ is Nil!32157) lt!994103)))))

(declare-fun b!2783286 () Bool)

(assert (=> b!2783286 (= e!1755824 (>= (size!24963 lt!994103) (size!24963 testedP!183)))))

(declare-fun b!2783284 () Bool)

(declare-fun res!1161800 () Bool)

(assert (=> b!2783284 (=> (not res!1161800) (not e!1755823))))

(declare-fun head!6158 (List!32257) C!16404)

(assert (=> b!2783284 (= res!1161800 (= (head!6158 testedP!183) (head!6158 lt!994103)))))

(assert (= (and d!810322 (not res!1161799)) b!2783283))

(assert (= (and b!2783283 res!1161797) b!2783284))

(assert (= (and b!2783284 res!1161800) b!2783285))

(assert (= (and d!810322 (not res!1161798)) b!2783286))

(declare-fun m!3214219 () Bool)

(assert (=> b!2783285 m!3214219))

(declare-fun m!3214221 () Bool)

(assert (=> b!2783285 m!3214221))

(assert (=> b!2783285 m!3214219))

(assert (=> b!2783285 m!3214221))

(declare-fun m!3214223 () Bool)

(assert (=> b!2783285 m!3214223))

(declare-fun m!3214225 () Bool)

(assert (=> b!2783286 m!3214225))

(assert (=> b!2783286 m!3214175))

(declare-fun m!3214227 () Bool)

(assert (=> b!2783284 m!3214227))

(declare-fun m!3214229 () Bool)

(assert (=> b!2783284 m!3214229))

(assert (=> b!2783241 d!810322))

(declare-fun d!810324 () Bool)

(declare-fun e!1755827 () Bool)

(assert (=> d!810324 e!1755827))

(declare-fun res!1161802 () Bool)

(assert (=> d!810324 (=> res!1161802 e!1755827)))

(declare-fun lt!994107 () Bool)

(assert (=> d!810324 (= res!1161802 (not lt!994107))))

(declare-fun e!1755828 () Bool)

(assert (=> d!810324 (= lt!994107 e!1755828)))

(declare-fun res!1161803 () Bool)

(assert (=> d!810324 (=> res!1161803 e!1755828)))

(assert (=> d!810324 (= res!1161803 ((_ is Nil!32157) testedP!183))))

(assert (=> d!810324 (= (isPrefix!2572 testedP!183 lt!994102) lt!994107)))

(declare-fun b!2783289 () Bool)

(declare-fun e!1755826 () Bool)

(assert (=> b!2783289 (= e!1755826 (isPrefix!2572 (tail!4396 testedP!183) (tail!4396 lt!994102)))))

(declare-fun b!2783287 () Bool)

(assert (=> b!2783287 (= e!1755828 e!1755826)))

(declare-fun res!1161801 () Bool)

(assert (=> b!2783287 (=> (not res!1161801) (not e!1755826))))

(assert (=> b!2783287 (= res!1161801 (not ((_ is Nil!32157) lt!994102)))))

(declare-fun b!2783290 () Bool)

(assert (=> b!2783290 (= e!1755827 (>= (size!24963 lt!994102) (size!24963 testedP!183)))))

(declare-fun b!2783288 () Bool)

(declare-fun res!1161804 () Bool)

(assert (=> b!2783288 (=> (not res!1161804) (not e!1755826))))

(assert (=> b!2783288 (= res!1161804 (= (head!6158 testedP!183) (head!6158 lt!994102)))))

(assert (= (and d!810324 (not res!1161803)) b!2783287))

(assert (= (and b!2783287 res!1161801) b!2783288))

(assert (= (and b!2783288 res!1161804) b!2783289))

(assert (= (and d!810324 (not res!1161802)) b!2783290))

(assert (=> b!2783289 m!3214219))

(declare-fun m!3214231 () Bool)

(assert (=> b!2783289 m!3214231))

(assert (=> b!2783289 m!3214219))

(assert (=> b!2783289 m!3214231))

(declare-fun m!3214233 () Bool)

(assert (=> b!2783289 m!3214233))

(declare-fun m!3214235 () Bool)

(assert (=> b!2783290 m!3214235))

(assert (=> b!2783290 m!3214175))

(assert (=> b!2783288 m!3214227))

(declare-fun m!3214237 () Bool)

(assert (=> b!2783288 m!3214237))

(assert (=> b!2783241 d!810324))

(declare-fun d!810326 () Bool)

(assert (=> d!810326 (isPrefix!2572 testedP!183 (++!7950 testedP!183 testedSuffix!143))))

(declare-fun lt!994110 () Unit!46414)

(declare-fun choose!16323 (List!32257 List!32257) Unit!46414)

(assert (=> d!810326 (= lt!994110 (choose!16323 testedP!183 testedSuffix!143))))

(assert (=> d!810326 (= (lemmaConcatTwoListThenFirstIsPrefix!1682 testedP!183 testedSuffix!143) lt!994110)))

(declare-fun bs!510824 () Bool)

(assert (= bs!510824 d!810326))

(assert (=> bs!510824 m!3214187))

(assert (=> bs!510824 m!3214187))

(declare-fun m!3214239 () Bool)

(assert (=> bs!510824 m!3214239))

(declare-fun m!3214241 () Bool)

(assert (=> bs!510824 m!3214241))

(assert (=> b!2783241 d!810326))

(declare-fun d!810328 () Bool)

(declare-fun lambda!102134 () Int)

(declare-fun forall!6645 (List!32255 Int) Bool)

(assert (=> d!810328 (= (inv!43682 setElem!23353) (forall!6645 (exprs!2841 setElem!23353) lambda!102134))))

(declare-fun bs!510825 () Bool)

(assert (= bs!510825 d!810328))

(declare-fun m!3214243 () Bool)

(assert (=> bs!510825 m!3214243))

(assert (=> setNonEmpty!23353 d!810328))

(declare-fun bs!510826 () Bool)

(declare-fun b!2783295 () Bool)

(declare-fun d!810330 () Bool)

(assert (= bs!510826 (and b!2783295 d!810330)))

(declare-fun lambda!102148 () Int)

(declare-fun lambda!102147 () Int)

(assert (=> bs!510826 (not (= lambda!102148 lambda!102147))))

(declare-fun bs!510827 () Bool)

(declare-fun b!2783296 () Bool)

(assert (= bs!510827 (and b!2783296 d!810330)))

(declare-fun lambda!102149 () Int)

(assert (=> bs!510827 (not (= lambda!102149 lambda!102147))))

(declare-fun bs!510828 () Bool)

(assert (= bs!510828 (and b!2783296 b!2783295)))

(assert (=> bs!510828 (= lambda!102149 lambda!102148)))

(declare-fun e!1755835 () Unit!46414)

(declare-fun Unit!46416 () Unit!46414)

(assert (=> b!2783296 (= e!1755835 Unit!46416)))

(declare-datatypes ((List!32259 0))(
  ( (Nil!32159) (Cons!32159 (h!37579 Context!4682) (t!228400 List!32259)) )
))
(declare-fun lt!994133 () List!32259)

(declare-fun call!182456 () List!32259)

(assert (=> b!2783296 (= lt!994133 call!182456)))

(declare-fun lt!994130 () Unit!46414)

(declare-fun lemmaForallThenNotExists!87 (List!32259 Int) Unit!46414)

(assert (=> b!2783296 (= lt!994130 (lemmaForallThenNotExists!87 lt!994133 lambda!102147))))

(declare-fun call!182455 () Bool)

(assert (=> b!2783296 (not call!182455)))

(declare-fun lt!994129 () Unit!46414)

(assert (=> b!2783296 (= lt!994129 lt!994130)))

(declare-fun bm!182451 () Bool)

(declare-fun c!452302 () Bool)

(declare-fun lt!994131 () List!32259)

(declare-fun exists!983 (List!32259 Int) Bool)

(assert (=> bm!182451 (= call!182455 (exists!983 (ite c!452302 lt!994131 lt!994133) (ite c!452302 lambda!102148 lambda!102149)))))

(declare-fun lt!994127 () Bool)

(declare-datatypes ((Option!6265 0))(
  ( (None!6264) (Some!6264 (v!33769 List!32257)) )
))
(declare-fun isEmpty!18107 (Option!6265) Bool)

(declare-fun getLanguageWitness!195 ((InoxSet Context!4682)) Option!6265)

(assert (=> d!810330 (= lt!994127 (isEmpty!18107 (getLanguageWitness!195 z!3684)))))

(declare-fun forall!6646 ((InoxSet Context!4682) Int) Bool)

(assert (=> d!810330 (= lt!994127 (forall!6646 z!3684 lambda!102147))))

(declare-fun lt!994128 () Unit!46414)

(assert (=> d!810330 (= lt!994128 e!1755835)))

(assert (=> d!810330 (= c!452302 (not (forall!6646 z!3684 lambda!102147)))))

(assert (=> d!810330 (= (lostCauseZipper!450 z!3684) lt!994127)))

(declare-fun bm!182450 () Bool)

(declare-fun toList!1850 ((InoxSet Context!4682)) List!32259)

(assert (=> bm!182450 (= call!182456 (toList!1850 z!3684))))

(declare-fun Unit!46417 () Unit!46414)

(assert (=> b!2783295 (= e!1755835 Unit!46417)))

(assert (=> b!2783295 (= lt!994131 call!182456)))

(declare-fun lt!994132 () Unit!46414)

(declare-fun lemmaNotForallThenExists!87 (List!32259 Int) Unit!46414)

(assert (=> b!2783295 (= lt!994132 (lemmaNotForallThenExists!87 lt!994131 lambda!102147))))

(assert (=> b!2783295 call!182455))

(declare-fun lt!994134 () Unit!46414)

(assert (=> b!2783295 (= lt!994134 lt!994132)))

(assert (= (and d!810330 c!452302) b!2783295))

(assert (= (and d!810330 (not c!452302)) b!2783296))

(assert (= (or b!2783295 b!2783296) bm!182450))

(assert (= (or b!2783295 b!2783296) bm!182451))

(declare-fun m!3214245 () Bool)

(assert (=> d!810330 m!3214245))

(assert (=> d!810330 m!3214245))

(declare-fun m!3214247 () Bool)

(assert (=> d!810330 m!3214247))

(declare-fun m!3214249 () Bool)

(assert (=> d!810330 m!3214249))

(assert (=> d!810330 m!3214249))

(declare-fun m!3214251 () Bool)

(assert (=> b!2783295 m!3214251))

(declare-fun m!3214253 () Bool)

(assert (=> bm!182450 m!3214253))

(declare-fun m!3214255 () Bool)

(assert (=> bm!182451 m!3214255))

(declare-fun m!3214257 () Bool)

(assert (=> b!2783296 m!3214257))

(assert (=> b!2783254 d!810330))

(declare-fun d!810332 () Bool)

(assert (=> d!810332 (= testedSuffix!143 lt!994098)))

(declare-fun lt!994137 () Unit!46414)

(declare-fun choose!16324 (List!32257 List!32257 List!32257 List!32257 List!32257) Unit!46414)

(assert (=> d!810332 (= lt!994137 (choose!16324 testedP!183 testedSuffix!143 testedP!183 lt!994098 lt!994103))))

(assert (=> d!810332 (isPrefix!2572 testedP!183 lt!994103)))

(assert (=> d!810332 (= (lemmaSamePrefixThenSameSuffix!1151 testedP!183 testedSuffix!143 testedP!183 lt!994098 lt!994103) lt!994137)))

(declare-fun bs!510829 () Bool)

(assert (= bs!510829 d!810332))

(declare-fun m!3214259 () Bool)

(assert (=> bs!510829 m!3214259))

(assert (=> bs!510829 m!3214209))

(assert (=> b!2783254 d!810332))

(declare-fun d!810334 () Bool)

(declare-fun lt!994140 () List!32257)

(assert (=> d!810334 (= (++!7950 testedP!183 lt!994140) lt!994103)))

(declare-fun e!1755838 () List!32257)

(assert (=> d!810334 (= lt!994140 e!1755838)))

(declare-fun c!452305 () Bool)

(assert (=> d!810334 (= c!452305 ((_ is Cons!32157) testedP!183))))

(assert (=> d!810334 (>= (size!24963 lt!994103) (size!24963 testedP!183))))

(assert (=> d!810334 (= (getSuffix!1250 lt!994103 testedP!183) lt!994140)))

(declare-fun b!2783301 () Bool)

(assert (=> b!2783301 (= e!1755838 (getSuffix!1250 (tail!4396 lt!994103) (t!228397 testedP!183)))))

(declare-fun b!2783302 () Bool)

(assert (=> b!2783302 (= e!1755838 lt!994103)))

(assert (= (and d!810334 c!452305) b!2783301))

(assert (= (and d!810334 (not c!452305)) b!2783302))

(declare-fun m!3214261 () Bool)

(assert (=> d!810334 m!3214261))

(assert (=> d!810334 m!3214225))

(assert (=> d!810334 m!3214175))

(assert (=> b!2783301 m!3214221))

(assert (=> b!2783301 m!3214221))

(declare-fun m!3214263 () Bool)

(assert (=> b!2783301 m!3214263))

(assert (=> b!2783254 d!810334))

(declare-fun b!2783315 () Bool)

(declare-fun e!1755843 () Bool)

(declare-fun isEmpty!18108 (Conc!9999) Bool)

(assert (=> b!2783315 (= e!1755843 (not (isEmpty!18108 (right!24782 (c!452288 totalInput!758)))))))

(declare-fun b!2783316 () Bool)

(declare-fun res!1161822 () Bool)

(assert (=> b!2783316 (=> (not res!1161822) (not e!1755843))))

(declare-fun height!1491 (Conc!9999) Int)

(assert (=> b!2783316 (= res!1161822 (<= (- (height!1491 (left!24452 (c!452288 totalInput!758))) (height!1491 (right!24782 (c!452288 totalInput!758)))) 1))))

(declare-fun b!2783317 () Bool)

(declare-fun res!1161818 () Bool)

(assert (=> b!2783317 (=> (not res!1161818) (not e!1755843))))

(assert (=> b!2783317 (= res!1161818 (isBalanced!3050 (right!24782 (c!452288 totalInput!758))))))

(declare-fun d!810336 () Bool)

(declare-fun res!1161817 () Bool)

(declare-fun e!1755844 () Bool)

(assert (=> d!810336 (=> res!1161817 e!1755844)))

(assert (=> d!810336 (= res!1161817 (not ((_ is Node!9999) (c!452288 totalInput!758))))))

(assert (=> d!810336 (= (isBalanced!3050 (c!452288 totalInput!758)) e!1755844)))

(declare-fun b!2783318 () Bool)

(declare-fun res!1161821 () Bool)

(assert (=> b!2783318 (=> (not res!1161821) (not e!1755843))))

(assert (=> b!2783318 (= res!1161821 (isBalanced!3050 (left!24452 (c!452288 totalInput!758))))))

(declare-fun b!2783319 () Bool)

(declare-fun res!1161820 () Bool)

(assert (=> b!2783319 (=> (not res!1161820) (not e!1755843))))

(assert (=> b!2783319 (= res!1161820 (not (isEmpty!18108 (left!24452 (c!452288 totalInput!758)))))))

(declare-fun b!2783320 () Bool)

(assert (=> b!2783320 (= e!1755844 e!1755843)))

(declare-fun res!1161819 () Bool)

(assert (=> b!2783320 (=> (not res!1161819) (not e!1755843))))

(assert (=> b!2783320 (= res!1161819 (<= (- 1) (- (height!1491 (left!24452 (c!452288 totalInput!758))) (height!1491 (right!24782 (c!452288 totalInput!758))))))))

(assert (= (and d!810336 (not res!1161817)) b!2783320))

(assert (= (and b!2783320 res!1161819) b!2783316))

(assert (= (and b!2783316 res!1161822) b!2783318))

(assert (= (and b!2783318 res!1161821) b!2783317))

(assert (= (and b!2783317 res!1161818) b!2783319))

(assert (= (and b!2783319 res!1161820) b!2783315))

(declare-fun m!3214265 () Bool)

(assert (=> b!2783315 m!3214265))

(declare-fun m!3214267 () Bool)

(assert (=> b!2783320 m!3214267))

(declare-fun m!3214269 () Bool)

(assert (=> b!2783320 m!3214269))

(assert (=> b!2783316 m!3214267))

(assert (=> b!2783316 m!3214269))

(declare-fun m!3214271 () Bool)

(assert (=> b!2783317 m!3214271))

(declare-fun m!3214273 () Bool)

(assert (=> b!2783319 m!3214273))

(declare-fun m!3214275 () Bool)

(assert (=> b!2783318 m!3214275))

(assert (=> b!2783264 d!810336))

(declare-fun d!810338 () Bool)

(declare-fun validCacheMapDown!405 (MutableMap!3758) Bool)

(assert (=> d!810338 (= (valid!3014 cacheDown!1009) (validCacheMapDown!405 (cache!3901 cacheDown!1009)))))

(declare-fun bs!510830 () Bool)

(assert (= bs!510830 d!810338))

(declare-fun m!3214277 () Bool)

(assert (=> bs!510830 m!3214277))

(assert (=> b!2783255 d!810338))

(declare-fun d!810340 () Bool)

(declare-fun validCacheMapUp!374 (MutableMap!3759) Bool)

(assert (=> d!810340 (= (valid!3015 cacheUp!890) (validCacheMapUp!374 (cache!3902 cacheUp!890)))))

(declare-fun bs!510831 () Bool)

(assert (= bs!510831 d!810340))

(declare-fun m!3214279 () Bool)

(assert (=> bs!510831 m!3214279))

(assert (=> b!2783261 d!810340))

(declare-fun d!810342 () Bool)

(declare-fun res!1161825 () Bool)

(declare-fun e!1755847 () Bool)

(assert (=> d!810342 (=> (not res!1161825) (not e!1755847))))

(assert (=> d!810342 (= res!1161825 ((_ is HashMap!3759) (cache!3902 cacheUp!890)))))

(assert (=> d!810342 (= (inv!43681 cacheUp!890) e!1755847)))

(declare-fun b!2783323 () Bool)

(assert (=> b!2783323 (= e!1755847 (validCacheMapUp!374 (cache!3902 cacheUp!890)))))

(assert (= (and d!810342 res!1161825) b!2783323))

(assert (=> b!2783323 m!3214279))

(assert (=> start!268948 d!810342))

(declare-fun d!810344 () Bool)

(assert (=> d!810344 (= (inv!43679 totalInput!758) (isBalanced!3050 (c!452288 totalInput!758)))))

(declare-fun bs!510832 () Bool)

(assert (= bs!510832 d!810344))

(assert (=> bs!510832 m!3214167))

(assert (=> start!268948 d!810344))

(declare-fun d!810346 () Bool)

(declare-fun res!1161828 () Bool)

(declare-fun e!1755850 () Bool)

(assert (=> d!810346 (=> (not res!1161828) (not e!1755850))))

(assert (=> d!810346 (= res!1161828 ((_ is HashMap!3758) (cache!3901 cacheDown!1009)))))

(assert (=> d!810346 (= (inv!43680 cacheDown!1009) e!1755850)))

(declare-fun b!2783326 () Bool)

(assert (=> b!2783326 (= e!1755850 (validCacheMapDown!405 (cache!3901 cacheDown!1009)))))

(assert (= (and d!810346 res!1161828) b!2783326))

(assert (=> b!2783326 m!3214277))

(assert (=> start!268948 d!810346))

(declare-fun d!810348 () Bool)

(declare-fun list!12120 (Conc!9999) List!32257)

(assert (=> d!810348 (= (list!12119 totalInput!758) (list!12120 (c!452288 totalInput!758)))))

(declare-fun bs!510833 () Bool)

(assert (= bs!510833 d!810348))

(declare-fun m!3214281 () Bool)

(assert (=> bs!510833 m!3214281))

(assert (=> start!268948 d!810348))

(declare-fun lt!994143 () List!32257)

(declare-fun e!1755856 () Bool)

(declare-fun b!2783338 () Bool)

(assert (=> b!2783338 (= e!1755856 (or (not (= testedSuffix!143 Nil!32157)) (= lt!994143 testedP!183)))))

(declare-fun b!2783335 () Bool)

(declare-fun e!1755855 () List!32257)

(assert (=> b!2783335 (= e!1755855 testedSuffix!143)))

(declare-fun b!2783336 () Bool)

(assert (=> b!2783336 (= e!1755855 (Cons!32157 (h!37577 testedP!183) (++!7950 (t!228397 testedP!183) testedSuffix!143)))))

(declare-fun b!2783337 () Bool)

(declare-fun res!1161834 () Bool)

(assert (=> b!2783337 (=> (not res!1161834) (not e!1755856))))

(assert (=> b!2783337 (= res!1161834 (= (size!24963 lt!994143) (+ (size!24963 testedP!183) (size!24963 testedSuffix!143))))))

(declare-fun d!810350 () Bool)

(assert (=> d!810350 e!1755856))

(declare-fun res!1161833 () Bool)

(assert (=> d!810350 (=> (not res!1161833) (not e!1755856))))

(declare-fun content!4515 (List!32257) (InoxSet C!16404))

(assert (=> d!810350 (= res!1161833 (= (content!4515 lt!994143) ((_ map or) (content!4515 testedP!183) (content!4515 testedSuffix!143))))))

(assert (=> d!810350 (= lt!994143 e!1755855)))

(declare-fun c!452308 () Bool)

(assert (=> d!810350 (= c!452308 ((_ is Nil!32157) testedP!183))))

(assert (=> d!810350 (= (++!7950 testedP!183 testedSuffix!143) lt!994143)))

(assert (= (and d!810350 c!452308) b!2783335))

(assert (= (and d!810350 (not c!452308)) b!2783336))

(assert (= (and d!810350 res!1161833) b!2783337))

(assert (= (and b!2783337 res!1161834) b!2783338))

(declare-fun m!3214283 () Bool)

(assert (=> b!2783336 m!3214283))

(declare-fun m!3214285 () Bool)

(assert (=> b!2783337 m!3214285))

(assert (=> b!2783337 m!3214175))

(declare-fun m!3214287 () Bool)

(assert (=> b!2783337 m!3214287))

(declare-fun m!3214289 () Bool)

(assert (=> d!810350 m!3214289))

(declare-fun m!3214291 () Bool)

(assert (=> d!810350 m!3214291))

(declare-fun m!3214293 () Bool)

(assert (=> d!810350 m!3214293))

(assert (=> start!268948 d!810350))

(declare-fun d!810352 () Bool)

(declare-fun lt!994146 () Int)

(assert (=> d!810352 (= lt!994146 (size!24963 (list!12119 totalInput!758)))))

(declare-fun size!24966 (Conc!9999) Int)

(assert (=> d!810352 (= lt!994146 (size!24966 (c!452288 totalInput!758)))))

(assert (=> d!810352 (= (size!24964 totalInput!758) lt!994146)))

(declare-fun bs!510834 () Bool)

(assert (= bs!510834 d!810352))

(assert (=> bs!510834 m!3214179))

(assert (=> bs!510834 m!3214179))

(declare-fun m!3214295 () Bool)

(assert (=> bs!510834 m!3214295))

(declare-fun m!3214297 () Bool)

(assert (=> bs!510834 m!3214297))

(assert (=> b!2783244 d!810352))

(declare-fun d!810354 () Bool)

(assert (=> d!810354 (= (array_inv!4373 (_keys!4153 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))) (bvsge (size!24961 (_keys!4153 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2783260 d!810354))

(declare-fun d!810356 () Bool)

(assert (=> d!810356 (= (array_inv!4375 (_values!4134 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))) (bvsge (size!24965 (_values!4134 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2783260 d!810356))

(declare-fun d!810358 () Bool)

(declare-fun lt!994149 () Int)

(assert (=> d!810358 (>= lt!994149 0)))

(declare-fun e!1755859 () Int)

(assert (=> d!810358 (= lt!994149 e!1755859)))

(declare-fun c!452311 () Bool)

(assert (=> d!810358 (= c!452311 ((_ is Nil!32157) testedP!183))))

(assert (=> d!810358 (= (size!24963 testedP!183) lt!994149)))

(declare-fun b!2783343 () Bool)

(assert (=> b!2783343 (= e!1755859 0)))

(declare-fun b!2783344 () Bool)

(assert (=> b!2783344 (= e!1755859 (+ 1 (size!24963 (t!228397 testedP!183))))))

(assert (= (and d!810358 c!452311) b!2783343))

(assert (= (and d!810358 (not c!452311)) b!2783344))

(declare-fun m!3214299 () Bool)

(assert (=> b!2783344 m!3214299))

(assert (=> b!2783243 d!810358))

(declare-fun setElem!23356 () Context!4682)

(declare-fun setRes!23356 () Bool)

(declare-fun setNonEmpty!23356 () Bool)

(declare-fun tp!881531 () Bool)

(declare-fun e!1755866 () Bool)

(assert (=> setNonEmpty!23356 (= setRes!23356 (and tp!881531 (inv!43682 setElem!23356) e!1755866))))

(declare-fun setRest!23356 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23356 (= (_2!19172 (h!37576 (zeroValue!4111 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23356 true) setRest!23356))))

(declare-fun e!1755868 () Bool)

(assert (=> b!2783240 (= tp!881501 e!1755868)))

(declare-fun b!2783353 () Bool)

(declare-fun tp!881530 () Bool)

(assert (=> b!2783353 (= e!1755866 tp!881530)))

(declare-fun e!1755867 () Bool)

(declare-fun b!2783354 () Bool)

(declare-fun tp!881532 () Bool)

(declare-fun tp!881534 () Bool)

(assert (=> b!2783354 (= e!1755868 (and tp!881534 (inv!43682 (_2!19171 (_1!19172 (h!37576 (zeroValue!4111 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009)))))))))) e!1755867 tp_is_empty!14059 setRes!23356 tp!881532))))

(declare-fun condSetEmpty!23356 () Bool)

(assert (=> b!2783354 (= condSetEmpty!23356 (= (_2!19172 (h!37576 (zeroValue!4111 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009)))))))) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun setIsEmpty!23356 () Bool)

(assert (=> setIsEmpty!23356 setRes!23356))

(declare-fun b!2783355 () Bool)

(declare-fun tp!881533 () Bool)

(assert (=> b!2783355 (= e!1755867 tp!881533)))

(assert (= b!2783354 b!2783355))

(assert (= (and b!2783354 condSetEmpty!23356) setIsEmpty!23356))

(assert (= (and b!2783354 (not condSetEmpty!23356)) setNonEmpty!23356))

(assert (= setNonEmpty!23356 b!2783353))

(assert (= (and b!2783240 ((_ is Cons!32156) (zeroValue!4111 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009)))))))) b!2783354))

(declare-fun m!3214301 () Bool)

(assert (=> setNonEmpty!23356 m!3214301))

(declare-fun m!3214303 () Bool)

(assert (=> b!2783354 m!3214303))

(declare-fun setElem!23357 () Context!4682)

(declare-fun tp!881536 () Bool)

(declare-fun setNonEmpty!23357 () Bool)

(declare-fun setRes!23357 () Bool)

(declare-fun e!1755869 () Bool)

(assert (=> setNonEmpty!23357 (= setRes!23357 (and tp!881536 (inv!43682 setElem!23357) e!1755869))))

(declare-fun setRest!23357 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23357 (= (_2!19172 (h!37576 (minValue!4111 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23357 true) setRest!23357))))

(declare-fun e!1755871 () Bool)

(assert (=> b!2783240 (= tp!881518 e!1755871)))

(declare-fun b!2783356 () Bool)

(declare-fun tp!881535 () Bool)

(assert (=> b!2783356 (= e!1755869 tp!881535)))

(declare-fun tp!881539 () Bool)

(declare-fun tp!881537 () Bool)

(declare-fun b!2783357 () Bool)

(declare-fun e!1755870 () Bool)

(assert (=> b!2783357 (= e!1755871 (and tp!881539 (inv!43682 (_2!19171 (_1!19172 (h!37576 (minValue!4111 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009)))))))))) e!1755870 tp_is_empty!14059 setRes!23357 tp!881537))))

(declare-fun condSetEmpty!23357 () Bool)

(assert (=> b!2783357 (= condSetEmpty!23357 (= (_2!19172 (h!37576 (minValue!4111 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009)))))))) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun setIsEmpty!23357 () Bool)

(assert (=> setIsEmpty!23357 setRes!23357))

(declare-fun b!2783358 () Bool)

(declare-fun tp!881538 () Bool)

(assert (=> b!2783358 (= e!1755870 tp!881538)))

(assert (= b!2783357 b!2783358))

(assert (= (and b!2783357 condSetEmpty!23357) setIsEmpty!23357))

(assert (= (and b!2783357 (not condSetEmpty!23357)) setNonEmpty!23357))

(assert (= setNonEmpty!23357 b!2783356))

(assert (= (and b!2783240 ((_ is Cons!32156) (minValue!4111 (v!33765 (underlying!7907 (v!33766 (underlying!7908 (cache!3901 cacheDown!1009)))))))) b!2783357))

(declare-fun m!3214305 () Bool)

(assert (=> setNonEmpty!23357 m!3214305))

(declare-fun m!3214307 () Bool)

(assert (=> b!2783357 m!3214307))

(declare-fun b!2783363 () Bool)

(declare-fun e!1755874 () Bool)

(declare-fun tp!881542 () Bool)

(assert (=> b!2783363 (= e!1755874 (and tp_is_empty!14059 tp!881542))))

(assert (=> b!2783245 (= tp!881502 e!1755874)))

(assert (= (and b!2783245 ((_ is Cons!32157) (t!228397 testedSuffix!143))) b!2783363))

(declare-fun b!2783378 () Bool)

(declare-fun e!1755888 () Bool)

(declare-fun tp!881574 () Bool)

(assert (=> b!2783378 (= e!1755888 tp!881574)))

(declare-fun condMapEmpty!17577 () Bool)

(declare-fun mapDefault!17577 () List!32256)

(assert (=> mapNonEmpty!17574 (= condMapEmpty!17577 (= mapRest!17574 ((as const (Array (_ BitVec 32) List!32256)) mapDefault!17577)))))

(declare-fun e!1755889 () Bool)

(declare-fun mapRes!17577 () Bool)

(assert (=> mapNonEmpty!17574 (= tp!881510 (and e!1755889 mapRes!17577))))

(declare-fun tp!881571 () Bool)

(declare-fun setNonEmpty!23362 () Bool)

(declare-fun setRes!23363 () Bool)

(declare-fun setElem!23362 () Context!4682)

(assert (=> setNonEmpty!23362 (= setRes!23363 (and tp!881571 (inv!43682 setElem!23362) e!1755888))))

(declare-fun setRest!23362 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23362 (= (_2!19172 (h!37576 mapDefault!17577)) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23362 true) setRest!23362))))

(declare-fun mapNonEmpty!17577 () Bool)

(declare-fun tp!881568 () Bool)

(declare-fun e!1755887 () Bool)

(assert (=> mapNonEmpty!17577 (= mapRes!17577 (and tp!881568 e!1755887))))

(declare-fun mapRest!17577 () (Array (_ BitVec 32) List!32256))

(declare-fun mapKey!17577 () (_ BitVec 32))

(declare-fun mapValue!17577 () List!32256)

(assert (=> mapNonEmpty!17577 (= mapRest!17574 (store mapRest!17577 mapKey!17577 mapValue!17577))))

(declare-fun b!2783379 () Bool)

(declare-fun e!1755891 () Bool)

(declare-fun tp!881575 () Bool)

(declare-fun tp!881572 () Bool)

(declare-fun setRes!23362 () Bool)

(assert (=> b!2783379 (= e!1755887 (and tp!881575 (inv!43682 (_2!19171 (_1!19172 (h!37576 mapValue!17577)))) e!1755891 tp_is_empty!14059 setRes!23362 tp!881572))))

(declare-fun condSetEmpty!23362 () Bool)

(assert (=> b!2783379 (= condSetEmpty!23362 (= (_2!19172 (h!37576 mapValue!17577)) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun b!2783380 () Bool)

(declare-fun e!1755890 () Bool)

(declare-fun tp!881566 () Bool)

(assert (=> b!2783380 (= e!1755890 tp!881566)))

(declare-fun setIsEmpty!23362 () Bool)

(assert (=> setIsEmpty!23362 setRes!23363))

(declare-fun setNonEmpty!23363 () Bool)

(declare-fun setElem!23363 () Context!4682)

(declare-fun tp!881569 () Bool)

(assert (=> setNonEmpty!23363 (= setRes!23362 (and tp!881569 (inv!43682 setElem!23363) e!1755890))))

(declare-fun setRest!23363 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23363 (= (_2!19172 (h!37576 mapValue!17577)) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23363 true) setRest!23363))))

(declare-fun b!2783381 () Bool)

(declare-fun tp!881573 () Bool)

(assert (=> b!2783381 (= e!1755891 tp!881573)))

(declare-fun setIsEmpty!23363 () Bool)

(assert (=> setIsEmpty!23363 setRes!23362))

(declare-fun mapIsEmpty!17577 () Bool)

(assert (=> mapIsEmpty!17577 mapRes!17577))

(declare-fun b!2783382 () Bool)

(declare-fun e!1755892 () Bool)

(declare-fun tp!881570 () Bool)

(assert (=> b!2783382 (= e!1755892 tp!881570)))

(declare-fun b!2783383 () Bool)

(declare-fun tp!881565 () Bool)

(declare-fun tp!881567 () Bool)

(assert (=> b!2783383 (= e!1755889 (and tp!881565 (inv!43682 (_2!19171 (_1!19172 (h!37576 mapDefault!17577)))) e!1755892 tp_is_empty!14059 setRes!23363 tp!881567))))

(declare-fun condSetEmpty!23363 () Bool)

(assert (=> b!2783383 (= condSetEmpty!23363 (= (_2!19172 (h!37576 mapDefault!17577)) ((as const (Array Context!4682 Bool)) false)))))

(assert (= (and mapNonEmpty!17574 condMapEmpty!17577) mapIsEmpty!17577))

(assert (= (and mapNonEmpty!17574 (not condMapEmpty!17577)) mapNonEmpty!17577))

(assert (= b!2783379 b!2783381))

(assert (= (and b!2783379 condSetEmpty!23362) setIsEmpty!23363))

(assert (= (and b!2783379 (not condSetEmpty!23362)) setNonEmpty!23363))

(assert (= setNonEmpty!23363 b!2783380))

(assert (= (and mapNonEmpty!17577 ((_ is Cons!32156) mapValue!17577)) b!2783379))

(assert (= b!2783383 b!2783382))

(assert (= (and b!2783383 condSetEmpty!23363) setIsEmpty!23362))

(assert (= (and b!2783383 (not condSetEmpty!23363)) setNonEmpty!23362))

(assert (= setNonEmpty!23362 b!2783378))

(assert (= (and mapNonEmpty!17574 ((_ is Cons!32156) mapDefault!17577)) b!2783383))

(declare-fun m!3214309 () Bool)

(assert (=> mapNonEmpty!17577 m!3214309))

(declare-fun m!3214311 () Bool)

(assert (=> b!2783383 m!3214311))

(declare-fun m!3214313 () Bool)

(assert (=> setNonEmpty!23363 m!3214313))

(declare-fun m!3214315 () Bool)

(assert (=> b!2783379 m!3214315))

(declare-fun m!3214317 () Bool)

(assert (=> setNonEmpty!23362 m!3214317))

(declare-fun setRes!23364 () Bool)

(declare-fun setElem!23364 () Context!4682)

(declare-fun setNonEmpty!23364 () Bool)

(declare-fun e!1755893 () Bool)

(declare-fun tp!881577 () Bool)

(assert (=> setNonEmpty!23364 (= setRes!23364 (and tp!881577 (inv!43682 setElem!23364) e!1755893))))

(declare-fun setRest!23364 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23364 (= (_2!19172 (h!37576 mapValue!17573)) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23364 true) setRest!23364))))

(declare-fun e!1755895 () Bool)

(assert (=> mapNonEmpty!17574 (= tp!881514 e!1755895)))

(declare-fun b!2783384 () Bool)

(declare-fun tp!881576 () Bool)

(assert (=> b!2783384 (= e!1755893 tp!881576)))

(declare-fun tp!881578 () Bool)

(declare-fun tp!881580 () Bool)

(declare-fun b!2783385 () Bool)

(declare-fun e!1755894 () Bool)

(assert (=> b!2783385 (= e!1755895 (and tp!881580 (inv!43682 (_2!19171 (_1!19172 (h!37576 mapValue!17573)))) e!1755894 tp_is_empty!14059 setRes!23364 tp!881578))))

(declare-fun condSetEmpty!23364 () Bool)

(assert (=> b!2783385 (= condSetEmpty!23364 (= (_2!19172 (h!37576 mapValue!17573)) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun setIsEmpty!23364 () Bool)

(assert (=> setIsEmpty!23364 setRes!23364))

(declare-fun b!2783386 () Bool)

(declare-fun tp!881579 () Bool)

(assert (=> b!2783386 (= e!1755894 tp!881579)))

(assert (= b!2783385 b!2783386))

(assert (= (and b!2783385 condSetEmpty!23364) setIsEmpty!23364))

(assert (= (and b!2783385 (not condSetEmpty!23364)) setNonEmpty!23364))

(assert (= setNonEmpty!23364 b!2783384))

(assert (= (and mapNonEmpty!17574 ((_ is Cons!32156) mapValue!17573)) b!2783385))

(declare-fun m!3214319 () Bool)

(assert (=> setNonEmpty!23364 m!3214319))

(declare-fun m!3214321 () Bool)

(assert (=> b!2783385 m!3214321))

(declare-fun tp!881589 () Bool)

(declare-fun tp!881587 () Bool)

(declare-fun e!1755901 () Bool)

(declare-fun b!2783395 () Bool)

(assert (=> b!2783395 (= e!1755901 (and (inv!43683 (left!24452 (c!452288 totalInput!758))) tp!881587 (inv!43683 (right!24782 (c!452288 totalInput!758))) tp!881589))))

(declare-fun b!2783397 () Bool)

(declare-fun e!1755900 () Bool)

(declare-fun tp!881588 () Bool)

(assert (=> b!2783397 (= e!1755900 tp!881588)))

(declare-fun b!2783396 () Bool)

(declare-fun inv!43686 (IArray!20003) Bool)

(assert (=> b!2783396 (= e!1755901 (and (inv!43686 (xs!13110 (c!452288 totalInput!758))) e!1755900))))

(assert (=> b!2783248 (= tp!881509 (and (inv!43683 (c!452288 totalInput!758)) e!1755901))))

(assert (= (and b!2783248 ((_ is Node!9999) (c!452288 totalInput!758))) b!2783395))

(assert (= b!2783396 b!2783397))

(assert (= (and b!2783248 ((_ is Leaf!15229) (c!452288 totalInput!758))) b!2783396))

(declare-fun m!3214323 () Bool)

(assert (=> b!2783395 m!3214323))

(declare-fun m!3214325 () Bool)

(assert (=> b!2783395 m!3214325))

(declare-fun m!3214327 () Bool)

(assert (=> b!2783396 m!3214327))

(assert (=> b!2783248 m!3214199))

(declare-fun setRes!23365 () Bool)

(declare-fun e!1755902 () Bool)

(declare-fun tp!881591 () Bool)

(declare-fun setNonEmpty!23365 () Bool)

(declare-fun setElem!23365 () Context!4682)

(assert (=> setNonEmpty!23365 (= setRes!23365 (and tp!881591 (inv!43682 setElem!23365) e!1755902))))

(declare-fun setRest!23365 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23365 (= (_2!19172 (h!37576 mapDefault!17574)) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23365 true) setRest!23365))))

(declare-fun e!1755904 () Bool)

(assert (=> b!2783246 (= tp!881506 e!1755904)))

(declare-fun b!2783398 () Bool)

(declare-fun tp!881590 () Bool)

(assert (=> b!2783398 (= e!1755902 tp!881590)))

(declare-fun b!2783399 () Bool)

(declare-fun e!1755903 () Bool)

(declare-fun tp!881594 () Bool)

(declare-fun tp!881592 () Bool)

(assert (=> b!2783399 (= e!1755904 (and tp!881594 (inv!43682 (_2!19171 (_1!19172 (h!37576 mapDefault!17574)))) e!1755903 tp_is_empty!14059 setRes!23365 tp!881592))))

(declare-fun condSetEmpty!23365 () Bool)

(assert (=> b!2783399 (= condSetEmpty!23365 (= (_2!19172 (h!37576 mapDefault!17574)) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun setIsEmpty!23365 () Bool)

(assert (=> setIsEmpty!23365 setRes!23365))

(declare-fun b!2783400 () Bool)

(declare-fun tp!881593 () Bool)

(assert (=> b!2783400 (= e!1755903 tp!881593)))

(assert (= b!2783399 b!2783400))

(assert (= (and b!2783399 condSetEmpty!23365) setIsEmpty!23365))

(assert (= (and b!2783399 (not condSetEmpty!23365)) setNonEmpty!23365))

(assert (= setNonEmpty!23365 b!2783398))

(assert (= (and b!2783246 ((_ is Cons!32156) mapDefault!17574)) b!2783399))

(declare-fun m!3214329 () Bool)

(assert (=> setNonEmpty!23365 m!3214329))

(declare-fun m!3214331 () Bool)

(assert (=> b!2783399 m!3214331))

(declare-fun b!2783405 () Bool)

(declare-fun e!1755907 () Bool)

(declare-fun tp!881599 () Bool)

(declare-fun tp!881600 () Bool)

(assert (=> b!2783405 (= e!1755907 (and tp!881599 tp!881600))))

(assert (=> b!2783262 (= tp!881517 e!1755907)))

(assert (= (and b!2783262 ((_ is Cons!32155) (exprs!2841 setElem!23353))) b!2783405))

(declare-fun condSetEmpty!23368 () Bool)

(assert (=> setNonEmpty!23353 (= condSetEmpty!23368 (= setRest!23353 ((as const (Array Context!4682 Bool)) false)))))

(declare-fun setRes!23368 () Bool)

(assert (=> setNonEmpty!23353 (= tp!881511 setRes!23368)))

(declare-fun setIsEmpty!23368 () Bool)

(assert (=> setIsEmpty!23368 setRes!23368))

(declare-fun tp!881605 () Bool)

(declare-fun setElem!23368 () Context!4682)

(declare-fun setNonEmpty!23368 () Bool)

(declare-fun e!1755910 () Bool)

(assert (=> setNonEmpty!23368 (= setRes!23368 (and tp!881605 (inv!43682 setElem!23368) e!1755910))))

(declare-fun setRest!23368 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23368 (= setRest!23353 ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23368 true) setRest!23368))))

(declare-fun b!2783410 () Bool)

(declare-fun tp!881606 () Bool)

(assert (=> b!2783410 (= e!1755910 tp!881606)))

(assert (= (and setNonEmpty!23353 condSetEmpty!23368) setIsEmpty!23368))

(assert (= (and setNonEmpty!23353 (not condSetEmpty!23368)) setNonEmpty!23368))

(assert (= setNonEmpty!23368 b!2783410))

(declare-fun m!3214333 () Bool)

(assert (=> setNonEmpty!23368 m!3214333))

(declare-fun b!2783411 () Bool)

(declare-fun e!1755911 () Bool)

(declare-fun tp!881607 () Bool)

(assert (=> b!2783411 (= e!1755911 (and tp_is_empty!14059 tp!881607))))

(assert (=> b!2783263 (= tp!881515 e!1755911)))

(assert (= (and b!2783263 ((_ is Cons!32157) (t!228397 testedP!183))) b!2783411))

(declare-fun b!2783420 () Bool)

(declare-fun e!1755919 () Bool)

(declare-fun tp!881618 () Bool)

(assert (=> b!2783420 (= e!1755919 tp!881618)))

(declare-fun setIsEmpty!23371 () Bool)

(declare-fun setRes!23371 () Bool)

(assert (=> setIsEmpty!23371 setRes!23371))

(declare-fun e!1755918 () Bool)

(assert (=> b!2783249 (= tp!881504 e!1755918)))

(declare-fun tp!881616 () Bool)

(declare-fun b!2783421 () Bool)

(assert (=> b!2783421 (= e!1755918 (and (inv!43682 (_1!19173 (_1!19174 (h!37578 mapDefault!17573)))) e!1755919 tp_is_empty!14059 setRes!23371 tp!881616))))

(declare-fun condSetEmpty!23371 () Bool)

(assert (=> b!2783421 (= condSetEmpty!23371 (= (_2!19174 (h!37578 mapDefault!17573)) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun b!2783422 () Bool)

(declare-fun e!1755920 () Bool)

(declare-fun tp!881619 () Bool)

(assert (=> b!2783422 (= e!1755920 tp!881619)))

(declare-fun setElem!23371 () Context!4682)

(declare-fun setNonEmpty!23371 () Bool)

(declare-fun tp!881617 () Bool)

(assert (=> setNonEmpty!23371 (= setRes!23371 (and tp!881617 (inv!43682 setElem!23371) e!1755920))))

(declare-fun setRest!23371 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23371 (= (_2!19174 (h!37578 mapDefault!17573)) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23371 true) setRest!23371))))

(assert (= b!2783421 b!2783420))

(assert (= (and b!2783421 condSetEmpty!23371) setIsEmpty!23371))

(assert (= (and b!2783421 (not condSetEmpty!23371)) setNonEmpty!23371))

(assert (= setNonEmpty!23371 b!2783422))

(assert (= (and b!2783249 ((_ is Cons!32158) mapDefault!17573)) b!2783421))

(declare-fun m!3214335 () Bool)

(assert (=> b!2783421 m!3214335))

(declare-fun m!3214337 () Bool)

(assert (=> setNonEmpty!23371 m!3214337))

(declare-fun b!2783437 () Bool)

(declare-fun e!1755934 () Bool)

(declare-fun tp!881640 () Bool)

(assert (=> b!2783437 (= e!1755934 tp!881640)))

(declare-fun mapIsEmpty!17580 () Bool)

(declare-fun mapRes!17580 () Bool)

(assert (=> mapIsEmpty!17580 mapRes!17580))

(declare-fun setRes!23376 () Bool)

(declare-fun setElem!23377 () Context!4682)

(declare-fun tp!881641 () Bool)

(declare-fun setNonEmpty!23376 () Bool)

(declare-fun e!1755937 () Bool)

(assert (=> setNonEmpty!23376 (= setRes!23376 (and tp!881641 (inv!43682 setElem!23377) e!1755937))))

(declare-fun mapDefault!17580 () List!32258)

(declare-fun setRest!23377 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23376 (= (_2!19174 (h!37578 mapDefault!17580)) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23377 true) setRest!23377))))

(declare-fun b!2783438 () Bool)

(declare-fun tp!881642 () Bool)

(assert (=> b!2783438 (= e!1755937 tp!881642)))

(declare-fun condMapEmpty!17580 () Bool)

(assert (=> mapNonEmpty!17573 (= condMapEmpty!17580 (= mapRest!17573 ((as const (Array (_ BitVec 32) List!32258)) mapDefault!17580)))))

(declare-fun e!1755938 () Bool)

(assert (=> mapNonEmpty!17573 (= tp!881505 (and e!1755938 mapRes!17580))))

(declare-fun b!2783439 () Bool)

(declare-fun e!1755933 () Bool)

(declare-fun tp!881639 () Bool)

(assert (=> b!2783439 (= e!1755933 tp!881639)))

(declare-fun mapNonEmpty!17580 () Bool)

(declare-fun tp!881638 () Bool)

(declare-fun e!1755935 () Bool)

(assert (=> mapNonEmpty!17580 (= mapRes!17580 (and tp!881638 e!1755935))))

(declare-fun mapValue!17580 () List!32258)

(declare-fun mapKey!17580 () (_ BitVec 32))

(declare-fun mapRest!17580 () (Array (_ BitVec 32) List!32258))

(assert (=> mapNonEmpty!17580 (= mapRest!17573 (store mapRest!17580 mapKey!17580 mapValue!17580))))

(declare-fun b!2783440 () Bool)

(declare-fun setRes!23377 () Bool)

(declare-fun tp!881645 () Bool)

(declare-fun e!1755936 () Bool)

(assert (=> b!2783440 (= e!1755935 (and (inv!43682 (_1!19173 (_1!19174 (h!37578 mapValue!17580)))) e!1755936 tp_is_empty!14059 setRes!23377 tp!881645))))

(declare-fun condSetEmpty!23376 () Bool)

(assert (=> b!2783440 (= condSetEmpty!23376 (= (_2!19174 (h!37578 mapValue!17580)) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun tp!881646 () Bool)

(declare-fun setNonEmpty!23377 () Bool)

(declare-fun setElem!23376 () Context!4682)

(assert (=> setNonEmpty!23377 (= setRes!23377 (and tp!881646 (inv!43682 setElem!23376) e!1755934))))

(declare-fun setRest!23376 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23377 (= (_2!19174 (h!37578 mapValue!17580)) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23376 true) setRest!23376))))

(declare-fun b!2783441 () Bool)

(declare-fun tp!881644 () Bool)

(assert (=> b!2783441 (= e!1755936 tp!881644)))

(declare-fun setIsEmpty!23376 () Bool)

(assert (=> setIsEmpty!23376 setRes!23377))

(declare-fun b!2783442 () Bool)

(declare-fun tp!881643 () Bool)

(assert (=> b!2783442 (= e!1755938 (and (inv!43682 (_1!19173 (_1!19174 (h!37578 mapDefault!17580)))) e!1755933 tp_is_empty!14059 setRes!23376 tp!881643))))

(declare-fun condSetEmpty!23377 () Bool)

(assert (=> b!2783442 (= condSetEmpty!23377 (= (_2!19174 (h!37578 mapDefault!17580)) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun setIsEmpty!23377 () Bool)

(assert (=> setIsEmpty!23377 setRes!23376))

(assert (= (and mapNonEmpty!17573 condMapEmpty!17580) mapIsEmpty!17580))

(assert (= (and mapNonEmpty!17573 (not condMapEmpty!17580)) mapNonEmpty!17580))

(assert (= b!2783440 b!2783441))

(assert (= (and b!2783440 condSetEmpty!23376) setIsEmpty!23376))

(assert (= (and b!2783440 (not condSetEmpty!23376)) setNonEmpty!23377))

(assert (= setNonEmpty!23377 b!2783437))

(assert (= (and mapNonEmpty!17580 ((_ is Cons!32158) mapValue!17580)) b!2783440))

(assert (= b!2783442 b!2783439))

(assert (= (and b!2783442 condSetEmpty!23377) setIsEmpty!23377))

(assert (= (and b!2783442 (not condSetEmpty!23377)) setNonEmpty!23376))

(assert (= setNonEmpty!23376 b!2783438))

(assert (= (and mapNonEmpty!17573 ((_ is Cons!32158) mapDefault!17580)) b!2783442))

(declare-fun m!3214339 () Bool)

(assert (=> setNonEmpty!23376 m!3214339))

(declare-fun m!3214341 () Bool)

(assert (=> b!2783440 m!3214341))

(declare-fun m!3214343 () Bool)

(assert (=> b!2783442 m!3214343))

(declare-fun m!3214345 () Bool)

(assert (=> setNonEmpty!23377 m!3214345))

(declare-fun m!3214347 () Bool)

(assert (=> mapNonEmpty!17580 m!3214347))

(declare-fun b!2783443 () Bool)

(declare-fun e!1755940 () Bool)

(declare-fun tp!881649 () Bool)

(assert (=> b!2783443 (= e!1755940 tp!881649)))

(declare-fun setIsEmpty!23378 () Bool)

(declare-fun setRes!23378 () Bool)

(assert (=> setIsEmpty!23378 setRes!23378))

(declare-fun e!1755939 () Bool)

(assert (=> mapNonEmpty!17573 (= tp!881507 e!1755939)))

(declare-fun tp!881647 () Bool)

(declare-fun b!2783444 () Bool)

(assert (=> b!2783444 (= e!1755939 (and (inv!43682 (_1!19173 (_1!19174 (h!37578 mapValue!17574)))) e!1755940 tp_is_empty!14059 setRes!23378 tp!881647))))

(declare-fun condSetEmpty!23378 () Bool)

(assert (=> b!2783444 (= condSetEmpty!23378 (= (_2!19174 (h!37578 mapValue!17574)) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun b!2783445 () Bool)

(declare-fun e!1755941 () Bool)

(declare-fun tp!881650 () Bool)

(assert (=> b!2783445 (= e!1755941 tp!881650)))

(declare-fun setNonEmpty!23378 () Bool)

(declare-fun tp!881648 () Bool)

(declare-fun setElem!23378 () Context!4682)

(assert (=> setNonEmpty!23378 (= setRes!23378 (and tp!881648 (inv!43682 setElem!23378) e!1755941))))

(declare-fun setRest!23378 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23378 (= (_2!19174 (h!37578 mapValue!17574)) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23378 true) setRest!23378))))

(assert (= b!2783444 b!2783443))

(assert (= (and b!2783444 condSetEmpty!23378) setIsEmpty!23378))

(assert (= (and b!2783444 (not condSetEmpty!23378)) setNonEmpty!23378))

(assert (= setNonEmpty!23378 b!2783445))

(assert (= (and mapNonEmpty!17573 ((_ is Cons!32158) mapValue!17574)) b!2783444))

(declare-fun m!3214349 () Bool)

(assert (=> b!2783444 m!3214349))

(declare-fun m!3214351 () Bool)

(assert (=> setNonEmpty!23378 m!3214351))

(declare-fun b!2783446 () Bool)

(declare-fun e!1755943 () Bool)

(declare-fun tp!881653 () Bool)

(assert (=> b!2783446 (= e!1755943 tp!881653)))

(declare-fun setIsEmpty!23379 () Bool)

(declare-fun setRes!23379 () Bool)

(assert (=> setIsEmpty!23379 setRes!23379))

(declare-fun e!1755942 () Bool)

(assert (=> b!2783260 (= tp!881516 e!1755942)))

(declare-fun tp!881651 () Bool)

(declare-fun b!2783447 () Bool)

(assert (=> b!2783447 (= e!1755942 (and (inv!43682 (_1!19173 (_1!19174 (h!37578 (zeroValue!4112 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890)))))))))) e!1755943 tp_is_empty!14059 setRes!23379 tp!881651))))

(declare-fun condSetEmpty!23379 () Bool)

(assert (=> b!2783447 (= condSetEmpty!23379 (= (_2!19174 (h!37578 (zeroValue!4112 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890)))))))) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun b!2783448 () Bool)

(declare-fun e!1755944 () Bool)

(declare-fun tp!881654 () Bool)

(assert (=> b!2783448 (= e!1755944 tp!881654)))

(declare-fun setElem!23379 () Context!4682)

(declare-fun setNonEmpty!23379 () Bool)

(declare-fun tp!881652 () Bool)

(assert (=> setNonEmpty!23379 (= setRes!23379 (and tp!881652 (inv!43682 setElem!23379) e!1755944))))

(declare-fun setRest!23379 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23379 (= (_2!19174 (h!37578 (zeroValue!4112 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23379 true) setRest!23379))))

(assert (= b!2783447 b!2783446))

(assert (= (and b!2783447 condSetEmpty!23379) setIsEmpty!23379))

(assert (= (and b!2783447 (not condSetEmpty!23379)) setNonEmpty!23379))

(assert (= setNonEmpty!23379 b!2783448))

(assert (= (and b!2783260 ((_ is Cons!32158) (zeroValue!4112 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890)))))))) b!2783447))

(declare-fun m!3214353 () Bool)

(assert (=> b!2783447 m!3214353))

(declare-fun m!3214355 () Bool)

(assert (=> setNonEmpty!23379 m!3214355))

(declare-fun b!2783449 () Bool)

(declare-fun e!1755946 () Bool)

(declare-fun tp!881657 () Bool)

(assert (=> b!2783449 (= e!1755946 tp!881657)))

(declare-fun setIsEmpty!23380 () Bool)

(declare-fun setRes!23380 () Bool)

(assert (=> setIsEmpty!23380 setRes!23380))

(declare-fun e!1755945 () Bool)

(assert (=> b!2783260 (= tp!881503 e!1755945)))

(declare-fun tp!881655 () Bool)

(declare-fun b!2783450 () Bool)

(assert (=> b!2783450 (= e!1755945 (and (inv!43682 (_1!19173 (_1!19174 (h!37578 (minValue!4112 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890)))))))))) e!1755946 tp_is_empty!14059 setRes!23380 tp!881655))))

(declare-fun condSetEmpty!23380 () Bool)

(assert (=> b!2783450 (= condSetEmpty!23380 (= (_2!19174 (h!37578 (minValue!4112 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890)))))))) ((as const (Array Context!4682 Bool)) false)))))

(declare-fun b!2783451 () Bool)

(declare-fun e!1755947 () Bool)

(declare-fun tp!881658 () Bool)

(assert (=> b!2783451 (= e!1755947 tp!881658)))

(declare-fun tp!881656 () Bool)

(declare-fun setNonEmpty!23380 () Bool)

(declare-fun setElem!23380 () Context!4682)

(assert (=> setNonEmpty!23380 (= setRes!23380 (and tp!881656 (inv!43682 setElem!23380) e!1755947))))

(declare-fun setRest!23380 () (InoxSet Context!4682))

(assert (=> setNonEmpty!23380 (= (_2!19174 (h!37578 (minValue!4112 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4682 Bool)) false) setElem!23380 true) setRest!23380))))

(assert (= b!2783450 b!2783449))

(assert (= (and b!2783450 condSetEmpty!23380) setIsEmpty!23380))

(assert (= (and b!2783450 (not condSetEmpty!23380)) setNonEmpty!23380))

(assert (= setNonEmpty!23380 b!2783451))

(assert (= (and b!2783260 ((_ is Cons!32158) (minValue!4112 (v!33767 (underlying!7909 (v!33768 (underlying!7910 (cache!3902 cacheUp!890)))))))) b!2783450))

(declare-fun m!3214357 () Bool)

(assert (=> b!2783450 m!3214357))

(declare-fun m!3214359 () Bool)

(assert (=> setNonEmpty!23380 m!3214359))

(check-sat (not b!2783443) (not setNonEmpty!23378) (not b!2783448) (not b_next!79319) (not d!810352) (not b!2783285) (not d!810330) (not d!810348) (not b!2783315) (not b!2783379) (not d!810338) (not setNonEmpty!23365) (not b!2783399) (not b!2783441) (not mapNonEmpty!17577) b_and!203357 (not b_next!79323) (not b!2783320) (not b!2783316) (not b!2783446) (not b!2783336) (not setNonEmpty!23376) (not setNonEmpty!23362) (not b!2783400) (not d!810332) (not b!2783438) (not b!2783437) (not b!2783356) (not b!2783440) (not b!2783398) (not setNonEmpty!23371) (not b!2783405) (not b!2783318) (not b!2783385) (not b!2783286) (not b!2783397) (not b!2783363) (not b!2783395) (not b!2783344) (not b!2783382) (not b!2783317) (not b!2783420) b_and!203353 (not b!2783301) (not b!2783354) (not b!2783326) (not b!2783410) (not d!810344) (not b!2783357) b_and!203355 b_and!203351 (not b!2783323) (not b!2783442) (not b!2783444) (not setNonEmpty!23377) (not d!810334) (not d!810350) (not b!2783358) (not b!2783248) (not b!2783355) (not b!2783411) (not b!2783445) (not b!2783288) (not b!2783439) (not setNonEmpty!23368) (not b_next!79321) (not b!2783422) (not b_next!79317) (not b!2783284) (not b!2783386) (not setNonEmpty!23356) (not b!2783447) (not b!2783289) (not b!2783274) (not b!2783384) (not setNonEmpty!23364) (not setNonEmpty!23379) (not mapNonEmpty!17580) (not b!2783451) (not b!2783383) (not b!2783295) (not b!2783396) (not b!2783449) (not d!810340) (not b!2783290) (not d!810328) (not b!2783337) (not b!2783380) (not b!2783381) (not setNonEmpty!23357) (not b!2783319) (not b!2783272) (not setNonEmpty!23363) (not setNonEmpty!23380) (not b!2783378) (not bm!182451) (not d!810326) (not b!2783296) (not b!2783353) tp_is_empty!14059 (not bm!182450) (not b!2783421) (not b!2783450))
(check-sat (not b_next!79319) b_and!203357 (not b_next!79323) b_and!203353 b_and!203355 b_and!203351 (not b_next!79321) (not b_next!79317))
