; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270362 () Bool)

(assert start!270362)

(declare-fun b!2796707 () Bool)

(declare-fun b_free!79237 () Bool)

(declare-fun b_next!79941 () Bool)

(assert (=> b!2796707 (= b_free!79237 (not b_next!79941))))

(declare-fun tp!890140 () Bool)

(declare-fun b_and!203975 () Bool)

(assert (=> b!2796707 (= tp!890140 b_and!203975)))

(declare-fun b!2796700 () Bool)

(declare-fun b_free!79239 () Bool)

(declare-fun b_next!79943 () Bool)

(assert (=> b!2796700 (= b_free!79239 (not b_next!79943))))

(declare-fun tp!890125 () Bool)

(declare-fun b_and!203977 () Bool)

(assert (=> b!2796700 (= tp!890125 b_and!203977)))

(declare-fun b!2796715 () Bool)

(declare-fun b_free!79241 () Bool)

(declare-fun b_next!79945 () Bool)

(assert (=> b!2796715 (= b_free!79241 (not b_next!79945))))

(declare-fun tp!890135 () Bool)

(declare-fun b_and!203979 () Bool)

(assert (=> b!2796715 (= tp!890135 b_and!203979)))

(declare-fun b!2796702 () Bool)

(declare-fun b_free!79243 () Bool)

(declare-fun b_next!79947 () Bool)

(assert (=> b!2796702 (= b_free!79243 (not b_next!79947))))

(declare-fun tp!890131 () Bool)

(declare-fun b_and!203981 () Bool)

(assert (=> b!2796702 (= tp!890131 b_and!203981)))

(declare-fun b!2796692 () Bool)

(declare-fun e!1766427 () Bool)

(declare-fun e!1766429 () Bool)

(assert (=> b!2796692 (= e!1766427 e!1766429)))

(declare-fun res!1165835 () Bool)

(assert (=> b!2796692 (=> (not res!1165835) (not e!1766429))))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2796692 (= res!1165835 (>= testedPSize!143 0))))

(declare-datatypes ((C!16560 0))(
  ( (C!16561 (val!10214 Int)) )
))
(declare-datatypes ((List!32568 0))(
  ( (Nil!32468) (Cons!32468 (h!37888 C!16560) (t!228728 List!32568)) )
))
(declare-fun testedP!183 () List!32568)

(declare-fun testedSuffix!143 () List!32568)

(declare-fun lt!999150 () List!32568)

(declare-fun lt!999156 () List!32568)

(assert (=> b!2796692 (not (or (not (= lt!999156 testedP!183)) (not (= lt!999150 testedSuffix!143))))))

(declare-datatypes ((Unit!46606 0))(
  ( (Unit!46607) )
))
(declare-fun lt!999157 () Unit!46606)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!372 (List!32568 List!32568 List!32568 List!32568) Unit!46606)

(assert (=> b!2796692 (= lt!999157 (lemmaConcatSameAndSameSizesThenSameLists!372 lt!999156 lt!999150 testedP!183 testedSuffix!143))))

(declare-fun mapNonEmpty!18171 () Bool)

(declare-fun mapRes!18172 () Bool)

(declare-fun tp!890142 () Bool)

(declare-fun tp!890141 () Bool)

(assert (=> mapNonEmpty!18171 (= mapRes!18172 (and tp!890142 tp!890141))))

(declare-datatypes ((Regex!8201 0))(
  ( (ElementMatch!8201 (c!453654 C!16560)) (Concat!13289 (regOne!16914 Regex!8201) (regTwo!16914 Regex!8201)) (EmptyExpr!8201) (Star!8201 (reg!8530 Regex!8201)) (EmptyLang!8201) (Union!8201 (regOne!16915 Regex!8201) (regTwo!16915 Regex!8201)) )
))
(declare-datatypes ((List!32569 0))(
  ( (Nil!32469) (Cons!32469 (h!37889 Regex!8201) (t!228729 List!32569)) )
))
(declare-datatypes ((Context!4838 0))(
  ( (Context!4839 (exprs!2919 List!32569)) )
))
(declare-datatypes ((tuple2!33012 0))(
  ( (tuple2!33013 (_1!19544 Context!4838) (_2!19544 C!16560)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33014 0))(
  ( (tuple2!33015 (_1!19545 tuple2!33012) (_2!19545 (InoxSet Context!4838))) )
))
(declare-datatypes ((List!32570 0))(
  ( (Nil!32470) (Cons!32470 (h!37890 tuple2!33014) (t!228730 List!32570)) )
))
(declare-fun mapValue!18171 () List!32570)

(declare-datatypes ((Hashable!3911 0))(
  ( (HashableExt!3910 (__x!21635 Int)) )
))
(declare-datatypes ((array!14203 0))(
  ( (array!14204 (arr!6329 (Array (_ BitVec 32) List!32570)) (size!25317 (_ BitVec 32))) )
))
(declare-datatypes ((array!14205 0))(
  ( (array!14206 (arr!6330 (Array (_ BitVec 32) (_ BitVec 64))) (size!25318 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7990 0))(
  ( (LongMapFixedSize!7991 (defaultEntry!4380 Int) (mask!9832 (_ BitVec 32)) (extraKeys!4244 (_ BitVec 32)) (zeroValue!4254 List!32570) (minValue!4254 List!32570) (_size!8033 (_ BitVec 32)) (_keys!4295 array!14205) (_values!4276 array!14203) (_vacant!4056 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15789 0))(
  ( (Cell!15790 (v!34070 LongMapFixedSize!7990)) )
))
(declare-datatypes ((MutLongMap!3995 0))(
  ( (LongMap!3995 (underlying!8193 Cell!15789)) (MutLongMapExt!3994 (__x!21636 Int)) )
))
(declare-datatypes ((Cell!15791 0))(
  ( (Cell!15792 (v!34071 MutLongMap!3995)) )
))
(declare-datatypes ((MutableMap!3901 0))(
  ( (MutableMapExt!3900 (__x!21637 Int)) (HashMap!3901 (underlying!8194 Cell!15791) (hashF!5943 Hashable!3911) (_size!8034 (_ BitVec 32)) (defaultValue!4072 Int)) )
))
(declare-datatypes ((CacheUp!2606 0))(
  ( (CacheUp!2607 (cache!4044 MutableMap!3901)) )
))
(declare-fun cacheUp!890 () CacheUp!2606)

(declare-fun mapRest!18172 () (Array (_ BitVec 32) List!32570))

(declare-fun mapKey!18171 () (_ BitVec 32))

(assert (=> mapNonEmpty!18171 (= (arr!6329 (_values!4276 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))) (store mapRest!18172 mapKey!18171 mapValue!18171))))

(declare-fun b!2796693 () Bool)

(declare-fun e!1766434 () Bool)

(declare-fun e!1766425 () Bool)

(assert (=> b!2796693 (= e!1766434 e!1766425)))

(declare-fun b!2796694 () Bool)

(declare-fun e!1766418 () Bool)

(declare-fun e!1766415 () Bool)

(assert (=> b!2796694 (= e!1766418 (not e!1766415))))

(declare-fun res!1165841 () Bool)

(assert (=> b!2796694 (=> res!1165841 e!1766415)))

(declare-fun lt!999153 () List!32568)

(declare-fun isPrefix!2624 (List!32568 List!32568) Bool)

(assert (=> b!2796694 (= res!1165841 (not (isPrefix!2624 testedP!183 lt!999153)))))

(declare-fun lt!999155 () List!32568)

(assert (=> b!2796694 (isPrefix!2624 testedP!183 lt!999155)))

(declare-fun lt!999154 () Unit!46606)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1732 (List!32568 List!32568) Unit!46606)

(assert (=> b!2796694 (= lt!999154 (lemmaConcatTwoListThenFirstIsPrefix!1732 testedP!183 testedSuffix!143))))

(declare-fun mapNonEmpty!18172 () Bool)

(declare-fun mapRes!18171 () Bool)

(declare-fun tp!890127 () Bool)

(declare-fun tp!890136 () Bool)

(assert (=> mapNonEmpty!18172 (= mapRes!18171 (and tp!890127 tp!890136))))

(declare-datatypes ((tuple3!5136 0))(
  ( (tuple3!5137 (_1!19546 Regex!8201) (_2!19546 Context!4838) (_3!3038 C!16560)) )
))
(declare-datatypes ((tuple2!33016 0))(
  ( (tuple2!33017 (_1!19547 tuple3!5136) (_2!19547 (InoxSet Context!4838))) )
))
(declare-datatypes ((List!32571 0))(
  ( (Nil!32471) (Cons!32471 (h!37891 tuple2!33016) (t!228731 List!32571)) )
))
(declare-fun mapRest!18171 () (Array (_ BitVec 32) List!32571))

(declare-fun mapKey!18172 () (_ BitVec 32))

(declare-fun mapValue!18172 () List!32571)

(declare-datatypes ((array!14207 0))(
  ( (array!14208 (arr!6331 (Array (_ BitVec 32) List!32571)) (size!25319 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7992 0))(
  ( (LongMapFixedSize!7993 (defaultEntry!4381 Int) (mask!9833 (_ BitVec 32)) (extraKeys!4245 (_ BitVec 32)) (zeroValue!4255 List!32571) (minValue!4255 List!32571) (_size!8035 (_ BitVec 32)) (_keys!4296 array!14205) (_values!4277 array!14207) (_vacant!4057 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15793 0))(
  ( (Cell!15794 (v!34072 LongMapFixedSize!7992)) )
))
(declare-datatypes ((MutLongMap!3996 0))(
  ( (LongMap!3996 (underlying!8195 Cell!15793)) (MutLongMapExt!3995 (__x!21638 Int)) )
))
(declare-datatypes ((Cell!15795 0))(
  ( (Cell!15796 (v!34073 MutLongMap!3996)) )
))
(declare-datatypes ((Hashable!3912 0))(
  ( (HashableExt!3911 (__x!21639 Int)) )
))
(declare-datatypes ((MutableMap!3902 0))(
  ( (MutableMapExt!3901 (__x!21640 Int)) (HashMap!3902 (underlying!8196 Cell!15795) (hashF!5944 Hashable!3912) (_size!8036 (_ BitVec 32)) (defaultValue!4073 Int)) )
))
(declare-datatypes ((CacheDown!2728 0))(
  ( (CacheDown!2729 (cache!4045 MutableMap!3902)) )
))
(declare-fun cacheDown!1009 () CacheDown!2728)

(assert (=> mapNonEmpty!18172 (= (arr!6331 (_values!4277 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))) (store mapRest!18171 mapKey!18172 mapValue!18172))))

(declare-fun b!2796695 () Bool)

(declare-fun e!1766412 () Bool)

(assert (=> b!2796695 (= e!1766412 e!1766427)))

(declare-fun res!1165837 () Bool)

(assert (=> b!2796695 (=> res!1165837 e!1766427)))

(declare-fun ++!8011 (List!32568 List!32568) List!32568)

(assert (=> b!2796695 (= res!1165837 (not (= (++!8011 lt!999156 lt!999150) lt!999153)))))

(declare-datatypes ((IArray!20131 0))(
  ( (IArray!20132 (innerList!10123 List!32568)) )
))
(declare-datatypes ((Conc!10063 0))(
  ( (Node!10063 (left!24561 Conc!10063) (right!24891 Conc!10063) (csize!20356 Int) (cheight!10274 Int)) (Leaf!15332 (xs!13175 IArray!20131) (csize!20357 Int)) (Empty!10063) )
))
(declare-datatypes ((BalanceConc!19740 0))(
  ( (BalanceConc!19741 (c!453655 Conc!10063)) )
))
(declare-datatypes ((tuple2!33018 0))(
  ( (tuple2!33019 (_1!19548 BalanceConc!19740) (_2!19548 BalanceConc!19740)) )
))
(declare-fun lt!999152 () tuple2!33018)

(declare-fun list!12199 (BalanceConc!19740) List!32568)

(assert (=> b!2796695 (= lt!999150 (list!12199 (_2!19548 lt!999152)))))

(assert (=> b!2796695 (= lt!999156 (list!12199 (_1!19548 lt!999152)))))

(declare-fun totalInput!758 () BalanceConc!19740)

(declare-fun splitAt!181 (BalanceConc!19740 Int) tuple2!33018)

(assert (=> b!2796695 (= lt!999152 (splitAt!181 totalInput!758 testedPSize!143))))

(declare-fun b!2796696 () Bool)

(declare-fun e!1766436 () Bool)

(declare-fun tp!890130 () Bool)

(assert (=> b!2796696 (= e!1766436 (and tp!890130 mapRes!18172))))

(declare-fun condMapEmpty!18172 () Bool)

(declare-fun mapDefault!18172 () List!32570)

(assert (=> b!2796696 (= condMapEmpty!18172 (= (arr!6329 (_values!4276 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32570)) mapDefault!18172)))))

(declare-fun b!2796698 () Bool)

(declare-fun e!1766428 () Bool)

(declare-fun e!1766433 () Bool)

(assert (=> b!2796698 (= e!1766428 e!1766433)))

(declare-fun b!2796699 () Bool)

(declare-fun res!1165833 () Bool)

(assert (=> b!2796699 (=> (not res!1165833) (not e!1766418))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!25320 (BalanceConc!19740) Int)

(assert (=> b!2796699 (= res!1165833 (= totalInputSize!205 (size!25320 totalInput!758)))))

(declare-fun e!1766422 () Bool)

(declare-fun tp!890138 () Bool)

(declare-fun tp!890133 () Bool)

(declare-fun e!1766414 () Bool)

(declare-fun array_inv!4533 (array!14205) Bool)

(declare-fun array_inv!4534 (array!14207) Bool)

(assert (=> b!2796700 (= e!1766414 (and tp!890125 tp!890138 tp!890133 (array_inv!4533 (_keys!4296 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))) (array_inv!4534 (_values!4277 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))) e!1766422))))

(declare-fun b!2796701 () Bool)

(declare-fun size!25321 (List!32568) Int)

(assert (=> b!2796701 (= e!1766429 (< testedPSize!143 (size!25321 lt!999153)))))

(declare-fun mapIsEmpty!18171 () Bool)

(assert (=> mapIsEmpty!18171 mapRes!18171))

(declare-fun e!1766435 () Bool)

(assert (=> b!2796702 (= e!1766433 (and e!1766435 tp!890131))))

(declare-fun b!2796703 () Bool)

(assert (=> b!2796703 (= e!1766415 e!1766412)))

(declare-fun res!1165838 () Bool)

(assert (=> b!2796703 (=> res!1165838 e!1766412)))

(declare-fun z!3684 () (InoxSet Context!4838))

(declare-fun lostCauseZipper!495 ((InoxSet Context!4838)) Bool)

(assert (=> b!2796703 (= res!1165838 (lostCauseZipper!495 z!3684))))

(declare-fun lt!999151 () List!32568)

(assert (=> b!2796703 (and (= testedSuffix!143 lt!999151) (= lt!999151 testedSuffix!143))))

(declare-fun lt!999158 () Unit!46606)

(declare-fun lemmaSamePrefixThenSameSuffix!1198 (List!32568 List!32568 List!32568 List!32568 List!32568) Unit!46606)

(assert (=> b!2796703 (= lt!999158 (lemmaSamePrefixThenSameSuffix!1198 testedP!183 testedSuffix!143 testedP!183 lt!999151 lt!999153))))

(declare-fun getSuffix!1300 (List!32568 List!32568) List!32568)

(assert (=> b!2796703 (= lt!999151 (getSuffix!1300 lt!999153 testedP!183))))

(declare-fun b!2796704 () Bool)

(declare-fun res!1165839 () Bool)

(assert (=> b!2796704 (=> res!1165839 e!1766427)))

(assert (=> b!2796704 (= res!1165839 (not (= (size!25320 (_1!19548 lt!999152)) testedPSize!143)))))

(declare-fun b!2796705 () Bool)

(declare-fun res!1165832 () Bool)

(assert (=> b!2796705 (=> (not res!1165832) (not e!1766418))))

(assert (=> b!2796705 (= res!1165832 (= testedPSize!143 (size!25321 testedP!183)))))

(declare-fun b!2796706 () Bool)

(declare-fun res!1165840 () Bool)

(assert (=> b!2796706 (=> (not res!1165840) (not e!1766418))))

(declare-fun valid!3130 (CacheDown!2728) Bool)

(assert (=> b!2796706 (= res!1165840 (valid!3130 cacheDown!1009))))

(declare-fun setIsEmpty!24257 () Bool)

(declare-fun setRes!24257 () Bool)

(assert (=> setIsEmpty!24257 setRes!24257))

(declare-fun e!1766431 () Bool)

(declare-fun e!1766426 () Bool)

(assert (=> b!2796707 (= e!1766431 (and e!1766426 tp!890140))))

(declare-fun b!2796708 () Bool)

(declare-fun res!1165836 () Bool)

(assert (=> b!2796708 (=> res!1165836 e!1766412)))

(assert (=> b!2796708 (= res!1165836 (= testedPSize!143 totalInputSize!205))))

(declare-fun res!1165842 () Bool)

(assert (=> start!270362 (=> (not res!1165842) (not e!1766418))))

(assert (=> start!270362 (= res!1165842 (= lt!999155 lt!999153))))

(assert (=> start!270362 (= lt!999153 (list!12199 totalInput!758))))

(assert (=> start!270362 (= lt!999155 (++!8011 testedP!183 testedSuffix!143))))

(assert (=> start!270362 e!1766418))

(declare-fun e!1766417 () Bool)

(declare-fun inv!44101 (BalanceConc!19740) Bool)

(assert (=> start!270362 (and (inv!44101 totalInput!758) e!1766417)))

(declare-fun condSetEmpty!24257 () Bool)

(assert (=> start!270362 (= condSetEmpty!24257 (= z!3684 ((as const (Array Context!4838 Bool)) false)))))

(assert (=> start!270362 setRes!24257))

(assert (=> start!270362 true))

(declare-fun e!1766424 () Bool)

(assert (=> start!270362 e!1766424))

(declare-fun e!1766419 () Bool)

(assert (=> start!270362 e!1766419))

(declare-fun inv!44102 (CacheDown!2728) Bool)

(assert (=> start!270362 (and (inv!44102 cacheDown!1009) e!1766428)))

(declare-fun e!1766423 () Bool)

(declare-fun inv!44103 (CacheUp!2606) Bool)

(assert (=> start!270362 (and (inv!44103 cacheUp!890) e!1766423)))

(declare-fun b!2796697 () Bool)

(declare-fun tp_is_empty!14215 () Bool)

(declare-fun tp!890126 () Bool)

(assert (=> b!2796697 (= e!1766424 (and tp_is_empty!14215 tp!890126))))

(declare-fun b!2796709 () Bool)

(declare-fun e!1766421 () Bool)

(declare-fun lt!999160 () MutLongMap!3996)

(get-info :version)

(assert (=> b!2796709 (= e!1766435 (and e!1766421 ((_ is LongMap!3996) lt!999160)))))

(assert (=> b!2796709 (= lt!999160 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))

(declare-fun b!2796710 () Bool)

(declare-fun tp!890132 () Bool)

(declare-fun inv!44104 (Conc!10063) Bool)

(assert (=> b!2796710 (= e!1766417 (and (inv!44104 (c!453655 totalInput!758)) tp!890132))))

(declare-fun b!2796711 () Bool)

(declare-fun e!1766420 () Bool)

(assert (=> b!2796711 (= e!1766425 e!1766420)))

(declare-fun b!2796712 () Bool)

(declare-fun tp!890129 () Bool)

(assert (=> b!2796712 (= e!1766422 (and tp!890129 mapRes!18171))))

(declare-fun condMapEmpty!18171 () Bool)

(declare-fun mapDefault!18171 () List!32571)

(assert (=> b!2796712 (= condMapEmpty!18171 (= (arr!6331 (_values!4277 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32571)) mapDefault!18171)))))

(declare-fun b!2796713 () Bool)

(assert (=> b!2796713 (= e!1766423 e!1766431)))

(declare-fun b!2796714 () Bool)

(declare-fun e!1766416 () Bool)

(assert (=> b!2796714 (= e!1766421 e!1766416)))

(declare-fun tp!890137 () Bool)

(declare-fun tp!890139 () Bool)

(declare-fun array_inv!4535 (array!14203) Bool)

(assert (=> b!2796715 (= e!1766420 (and tp!890135 tp!890137 tp!890139 (array_inv!4533 (_keys!4295 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))) (array_inv!4535 (_values!4276 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))) e!1766436))))

(declare-fun mapIsEmpty!18172 () Bool)

(assert (=> mapIsEmpty!18172 mapRes!18172))

(declare-fun b!2796716 () Bool)

(assert (=> b!2796716 (= e!1766416 e!1766414)))

(declare-fun b!2796717 () Bool)

(declare-fun res!1165834 () Bool)

(assert (=> b!2796717 (=> (not res!1165834) (not e!1766418))))

(declare-fun valid!3131 (CacheUp!2606) Bool)

(assert (=> b!2796717 (= res!1165834 (valid!3131 cacheUp!890))))

(declare-fun tp!890134 () Bool)

(declare-fun e!1766432 () Bool)

(declare-fun setElem!24257 () Context!4838)

(declare-fun setNonEmpty!24257 () Bool)

(declare-fun inv!44105 (Context!4838) Bool)

(assert (=> setNonEmpty!24257 (= setRes!24257 (and tp!890134 (inv!44105 setElem!24257) e!1766432))))

(declare-fun setRest!24257 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24257 (= z!3684 ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24257 true) setRest!24257))))

(declare-fun b!2796718 () Bool)

(declare-fun tp!890124 () Bool)

(assert (=> b!2796718 (= e!1766419 (and tp_is_empty!14215 tp!890124))))

(declare-fun b!2796719 () Bool)

(declare-fun tp!890128 () Bool)

(assert (=> b!2796719 (= e!1766432 tp!890128)))

(declare-fun b!2796720 () Bool)

(declare-fun lt!999159 () MutLongMap!3995)

(assert (=> b!2796720 (= e!1766426 (and e!1766434 ((_ is LongMap!3995) lt!999159)))))

(assert (=> b!2796720 (= lt!999159 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))

(assert (= (and start!270362 res!1165842) b!2796705))

(assert (= (and b!2796705 res!1165832) b!2796699))

(assert (= (and b!2796699 res!1165833) b!2796717))

(assert (= (and b!2796717 res!1165834) b!2796706))

(assert (= (and b!2796706 res!1165840) b!2796694))

(assert (= (and b!2796694 (not res!1165841)) b!2796703))

(assert (= (and b!2796703 (not res!1165838)) b!2796708))

(assert (= (and b!2796708 (not res!1165836)) b!2796695))

(assert (= (and b!2796695 (not res!1165837)) b!2796704))

(assert (= (and b!2796704 (not res!1165839)) b!2796692))

(assert (= (and b!2796692 res!1165835) b!2796701))

(assert (= start!270362 b!2796710))

(assert (= (and start!270362 condSetEmpty!24257) setIsEmpty!24257))

(assert (= (and start!270362 (not condSetEmpty!24257)) setNonEmpty!24257))

(assert (= setNonEmpty!24257 b!2796719))

(assert (= (and start!270362 ((_ is Cons!32468) testedP!183)) b!2796697))

(assert (= (and start!270362 ((_ is Cons!32468) testedSuffix!143)) b!2796718))

(assert (= (and b!2796712 condMapEmpty!18171) mapIsEmpty!18171))

(assert (= (and b!2796712 (not condMapEmpty!18171)) mapNonEmpty!18172))

(assert (= b!2796700 b!2796712))

(assert (= b!2796716 b!2796700))

(assert (= b!2796714 b!2796716))

(assert (= (and b!2796709 ((_ is LongMap!3996) (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))) b!2796714))

(assert (= b!2796702 b!2796709))

(assert (= (and b!2796698 ((_ is HashMap!3902) (cache!4045 cacheDown!1009))) b!2796702))

(assert (= start!270362 b!2796698))

(assert (= (and b!2796696 condMapEmpty!18172) mapIsEmpty!18172))

(assert (= (and b!2796696 (not condMapEmpty!18172)) mapNonEmpty!18171))

(assert (= b!2796715 b!2796696))

(assert (= b!2796711 b!2796715))

(assert (= b!2796693 b!2796711))

(assert (= (and b!2796720 ((_ is LongMap!3995) (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))) b!2796693))

(assert (= b!2796707 b!2796720))

(assert (= (and b!2796713 ((_ is HashMap!3901) (cache!4044 cacheUp!890))) b!2796707))

(assert (= start!270362 b!2796713))

(declare-fun m!3226281 () Bool)

(assert (=> b!2796715 m!3226281))

(declare-fun m!3226283 () Bool)

(assert (=> b!2796715 m!3226283))

(declare-fun m!3226285 () Bool)

(assert (=> mapNonEmpty!18172 m!3226285))

(declare-fun m!3226287 () Bool)

(assert (=> b!2796706 m!3226287))

(declare-fun m!3226289 () Bool)

(assert (=> b!2796705 m!3226289))

(declare-fun m!3226291 () Bool)

(assert (=> setNonEmpty!24257 m!3226291))

(declare-fun m!3226293 () Bool)

(assert (=> start!270362 m!3226293))

(declare-fun m!3226295 () Bool)

(assert (=> start!270362 m!3226295))

(declare-fun m!3226297 () Bool)

(assert (=> start!270362 m!3226297))

(declare-fun m!3226299 () Bool)

(assert (=> start!270362 m!3226299))

(declare-fun m!3226301 () Bool)

(assert (=> start!270362 m!3226301))

(declare-fun m!3226303 () Bool)

(assert (=> b!2796700 m!3226303))

(declare-fun m!3226305 () Bool)

(assert (=> b!2796700 m!3226305))

(declare-fun m!3226307 () Bool)

(assert (=> b!2796701 m!3226307))

(declare-fun m!3226309 () Bool)

(assert (=> b!2796699 m!3226309))

(declare-fun m!3226311 () Bool)

(assert (=> b!2796692 m!3226311))

(declare-fun m!3226313 () Bool)

(assert (=> b!2796703 m!3226313))

(declare-fun m!3226315 () Bool)

(assert (=> b!2796703 m!3226315))

(declare-fun m!3226317 () Bool)

(assert (=> b!2796703 m!3226317))

(declare-fun m!3226319 () Bool)

(assert (=> b!2796710 m!3226319))

(declare-fun m!3226321 () Bool)

(assert (=> b!2796695 m!3226321))

(declare-fun m!3226323 () Bool)

(assert (=> b!2796695 m!3226323))

(declare-fun m!3226325 () Bool)

(assert (=> b!2796695 m!3226325))

(declare-fun m!3226327 () Bool)

(assert (=> b!2796695 m!3226327))

(declare-fun m!3226329 () Bool)

(assert (=> b!2796717 m!3226329))

(declare-fun m!3226331 () Bool)

(assert (=> mapNonEmpty!18171 m!3226331))

(declare-fun m!3226333 () Bool)

(assert (=> b!2796704 m!3226333))

(declare-fun m!3226335 () Bool)

(assert (=> b!2796694 m!3226335))

(declare-fun m!3226337 () Bool)

(assert (=> b!2796694 m!3226337))

(declare-fun m!3226339 () Bool)

(assert (=> b!2796694 m!3226339))

(check-sat (not b_next!79945) (not b!2796701) (not b!2796699) (not b!2796694) (not b!2796695) (not b!2796705) (not b!2796704) (not b!2796717) (not mapNonEmpty!18172) b_and!203975 (not b_next!79943) (not b_next!79941) (not b!2796712) (not start!270362) (not b!2796700) (not mapNonEmpty!18171) (not b_next!79947) (not b!2796718) b_and!203977 (not b!2796706) (not b!2796703) (not b!2796692) b_and!203979 (not b!2796710) (not setNonEmpty!24257) (not b!2796697) (not b!2796719) (not b!2796696) (not b!2796715) b_and!203981 tp_is_empty!14215)
(check-sat (not b_next!79945) (not b_next!79947) b_and!203977 b_and!203979 b_and!203981 b_and!203975 (not b_next!79943) (not b_next!79941))
(get-model)

(declare-fun d!812807 () Bool)

(declare-fun res!1165845 () Bool)

(declare-fun e!1766439 () Bool)

(assert (=> d!812807 (=> (not res!1165845) (not e!1766439))))

(assert (=> d!812807 (= res!1165845 ((_ is HashMap!3901) (cache!4044 cacheUp!890)))))

(assert (=> d!812807 (= (inv!44103 cacheUp!890) e!1766439)))

(declare-fun b!2796723 () Bool)

(declare-fun validCacheMapUp!394 (MutableMap!3901) Bool)

(assert (=> b!2796723 (= e!1766439 (validCacheMapUp!394 (cache!4044 cacheUp!890)))))

(assert (= (and d!812807 res!1165845) b!2796723))

(declare-fun m!3226341 () Bool)

(assert (=> b!2796723 m!3226341))

(assert (=> start!270362 d!812807))

(declare-fun d!812809 () Bool)

(declare-fun isBalanced!3070 (Conc!10063) Bool)

(assert (=> d!812809 (= (inv!44101 totalInput!758) (isBalanced!3070 (c!453655 totalInput!758)))))

(declare-fun bs!515037 () Bool)

(assert (= bs!515037 d!812809))

(declare-fun m!3226343 () Bool)

(assert (=> bs!515037 m!3226343))

(assert (=> start!270362 d!812809))

(declare-fun d!812811 () Bool)

(declare-fun res!1165848 () Bool)

(declare-fun e!1766442 () Bool)

(assert (=> d!812811 (=> (not res!1165848) (not e!1766442))))

(assert (=> d!812811 (= res!1165848 ((_ is HashMap!3902) (cache!4045 cacheDown!1009)))))

(assert (=> d!812811 (= (inv!44102 cacheDown!1009) e!1766442)))

(declare-fun b!2796726 () Bool)

(declare-fun validCacheMapDown!425 (MutableMap!3902) Bool)

(assert (=> b!2796726 (= e!1766442 (validCacheMapDown!425 (cache!4045 cacheDown!1009)))))

(assert (= (and d!812811 res!1165848) b!2796726))

(declare-fun m!3226345 () Bool)

(assert (=> b!2796726 m!3226345))

(assert (=> start!270362 d!812811))

(declare-fun d!812813 () Bool)

(declare-fun list!12200 (Conc!10063) List!32568)

(assert (=> d!812813 (= (list!12199 totalInput!758) (list!12200 (c!453655 totalInput!758)))))

(declare-fun bs!515038 () Bool)

(assert (= bs!515038 d!812813))

(declare-fun m!3226347 () Bool)

(assert (=> bs!515038 m!3226347))

(assert (=> start!270362 d!812813))

(declare-fun b!2796736 () Bool)

(declare-fun e!1766448 () List!32568)

(assert (=> b!2796736 (= e!1766448 (Cons!32468 (h!37888 testedP!183) (++!8011 (t!228728 testedP!183) testedSuffix!143)))))

(declare-fun b!2796738 () Bool)

(declare-fun e!1766447 () Bool)

(declare-fun lt!999163 () List!32568)

(assert (=> b!2796738 (= e!1766447 (or (not (= testedSuffix!143 Nil!32468)) (= lt!999163 testedP!183)))))

(declare-fun d!812815 () Bool)

(assert (=> d!812815 e!1766447))

(declare-fun res!1165854 () Bool)

(assert (=> d!812815 (=> (not res!1165854) (not e!1766447))))

(declare-fun content!4538 (List!32568) (InoxSet C!16560))

(assert (=> d!812815 (= res!1165854 (= (content!4538 lt!999163) ((_ map or) (content!4538 testedP!183) (content!4538 testedSuffix!143))))))

(assert (=> d!812815 (= lt!999163 e!1766448)))

(declare-fun c!453658 () Bool)

(assert (=> d!812815 (= c!453658 ((_ is Nil!32468) testedP!183))))

(assert (=> d!812815 (= (++!8011 testedP!183 testedSuffix!143) lt!999163)))

(declare-fun b!2796735 () Bool)

(assert (=> b!2796735 (= e!1766448 testedSuffix!143)))

(declare-fun b!2796737 () Bool)

(declare-fun res!1165853 () Bool)

(assert (=> b!2796737 (=> (not res!1165853) (not e!1766447))))

(assert (=> b!2796737 (= res!1165853 (= (size!25321 lt!999163) (+ (size!25321 testedP!183) (size!25321 testedSuffix!143))))))

(assert (= (and d!812815 c!453658) b!2796735))

(assert (= (and d!812815 (not c!453658)) b!2796736))

(assert (= (and d!812815 res!1165854) b!2796737))

(assert (= (and b!2796737 res!1165853) b!2796738))

(declare-fun m!3226349 () Bool)

(assert (=> b!2796736 m!3226349))

(declare-fun m!3226351 () Bool)

(assert (=> d!812815 m!3226351))

(declare-fun m!3226353 () Bool)

(assert (=> d!812815 m!3226353))

(declare-fun m!3226355 () Bool)

(assert (=> d!812815 m!3226355))

(declare-fun m!3226357 () Bool)

(assert (=> b!2796737 m!3226357))

(assert (=> b!2796737 m!3226289))

(declare-fun m!3226359 () Bool)

(assert (=> b!2796737 m!3226359))

(assert (=> start!270362 d!812815))

(declare-fun d!812817 () Bool)

(declare-fun c!453661 () Bool)

(assert (=> d!812817 (= c!453661 ((_ is Node!10063) (c!453655 totalInput!758)))))

(declare-fun e!1766453 () Bool)

(assert (=> d!812817 (= (inv!44104 (c!453655 totalInput!758)) e!1766453)))

(declare-fun b!2796745 () Bool)

(declare-fun inv!44106 (Conc!10063) Bool)

(assert (=> b!2796745 (= e!1766453 (inv!44106 (c!453655 totalInput!758)))))

(declare-fun b!2796746 () Bool)

(declare-fun e!1766454 () Bool)

(assert (=> b!2796746 (= e!1766453 e!1766454)))

(declare-fun res!1165857 () Bool)

(assert (=> b!2796746 (= res!1165857 (not ((_ is Leaf!15332) (c!453655 totalInput!758))))))

(assert (=> b!2796746 (=> res!1165857 e!1766454)))

(declare-fun b!2796747 () Bool)

(declare-fun inv!44107 (Conc!10063) Bool)

(assert (=> b!2796747 (= e!1766454 (inv!44107 (c!453655 totalInput!758)))))

(assert (= (and d!812817 c!453661) b!2796745))

(assert (= (and d!812817 (not c!453661)) b!2796746))

(assert (= (and b!2796746 (not res!1165857)) b!2796747))

(declare-fun m!3226361 () Bool)

(assert (=> b!2796745 m!3226361))

(declare-fun m!3226363 () Bool)

(assert (=> b!2796747 m!3226363))

(assert (=> b!2796710 d!812817))

(declare-fun b!2796758 () Bool)

(declare-fun e!1766463 () Bool)

(declare-fun tail!4421 (List!32568) List!32568)

(assert (=> b!2796758 (= e!1766463 (isPrefix!2624 (tail!4421 testedP!183) (tail!4421 lt!999153)))))

(declare-fun d!812819 () Bool)

(declare-fun e!1766461 () Bool)

(assert (=> d!812819 e!1766461))

(declare-fun res!1165866 () Bool)

(assert (=> d!812819 (=> res!1165866 e!1766461)))

(declare-fun lt!999166 () Bool)

(assert (=> d!812819 (= res!1165866 (not lt!999166))))

(declare-fun e!1766462 () Bool)

(assert (=> d!812819 (= lt!999166 e!1766462)))

(declare-fun res!1165868 () Bool)

(assert (=> d!812819 (=> res!1165868 e!1766462)))

(assert (=> d!812819 (= res!1165868 ((_ is Nil!32468) testedP!183))))

(assert (=> d!812819 (= (isPrefix!2624 testedP!183 lt!999153) lt!999166)))

(declare-fun b!2796759 () Bool)

(assert (=> b!2796759 (= e!1766461 (>= (size!25321 lt!999153) (size!25321 testedP!183)))))

(declare-fun b!2796756 () Bool)

(assert (=> b!2796756 (= e!1766462 e!1766463)))

(declare-fun res!1165867 () Bool)

(assert (=> b!2796756 (=> (not res!1165867) (not e!1766463))))

(assert (=> b!2796756 (= res!1165867 (not ((_ is Nil!32468) lt!999153)))))

(declare-fun b!2796757 () Bool)

(declare-fun res!1165869 () Bool)

(assert (=> b!2796757 (=> (not res!1165869) (not e!1766463))))

(declare-fun head!6190 (List!32568) C!16560)

(assert (=> b!2796757 (= res!1165869 (= (head!6190 testedP!183) (head!6190 lt!999153)))))

(assert (= (and d!812819 (not res!1165868)) b!2796756))

(assert (= (and b!2796756 res!1165867) b!2796757))

(assert (= (and b!2796757 res!1165869) b!2796758))

(assert (= (and d!812819 (not res!1165866)) b!2796759))

(declare-fun m!3226365 () Bool)

(assert (=> b!2796758 m!3226365))

(declare-fun m!3226367 () Bool)

(assert (=> b!2796758 m!3226367))

(assert (=> b!2796758 m!3226365))

(assert (=> b!2796758 m!3226367))

(declare-fun m!3226369 () Bool)

(assert (=> b!2796758 m!3226369))

(assert (=> b!2796759 m!3226307))

(assert (=> b!2796759 m!3226289))

(declare-fun m!3226371 () Bool)

(assert (=> b!2796757 m!3226371))

(declare-fun m!3226373 () Bool)

(assert (=> b!2796757 m!3226373))

(assert (=> b!2796694 d!812819))

(declare-fun b!2796762 () Bool)

(declare-fun e!1766466 () Bool)

(assert (=> b!2796762 (= e!1766466 (isPrefix!2624 (tail!4421 testedP!183) (tail!4421 lt!999155)))))

(declare-fun d!812821 () Bool)

(declare-fun e!1766464 () Bool)

(assert (=> d!812821 e!1766464))

(declare-fun res!1165870 () Bool)

(assert (=> d!812821 (=> res!1165870 e!1766464)))

(declare-fun lt!999167 () Bool)

(assert (=> d!812821 (= res!1165870 (not lt!999167))))

(declare-fun e!1766465 () Bool)

(assert (=> d!812821 (= lt!999167 e!1766465)))

(declare-fun res!1165872 () Bool)

(assert (=> d!812821 (=> res!1165872 e!1766465)))

(assert (=> d!812821 (= res!1165872 ((_ is Nil!32468) testedP!183))))

(assert (=> d!812821 (= (isPrefix!2624 testedP!183 lt!999155) lt!999167)))

(declare-fun b!2796763 () Bool)

(assert (=> b!2796763 (= e!1766464 (>= (size!25321 lt!999155) (size!25321 testedP!183)))))

(declare-fun b!2796760 () Bool)

(assert (=> b!2796760 (= e!1766465 e!1766466)))

(declare-fun res!1165871 () Bool)

(assert (=> b!2796760 (=> (not res!1165871) (not e!1766466))))

(assert (=> b!2796760 (= res!1165871 (not ((_ is Nil!32468) lt!999155)))))

(declare-fun b!2796761 () Bool)

(declare-fun res!1165873 () Bool)

(assert (=> b!2796761 (=> (not res!1165873) (not e!1766466))))

(assert (=> b!2796761 (= res!1165873 (= (head!6190 testedP!183) (head!6190 lt!999155)))))

(assert (= (and d!812821 (not res!1165872)) b!2796760))

(assert (= (and b!2796760 res!1165871) b!2796761))

(assert (= (and b!2796761 res!1165873) b!2796762))

(assert (= (and d!812821 (not res!1165870)) b!2796763))

(assert (=> b!2796762 m!3226365))

(declare-fun m!3226375 () Bool)

(assert (=> b!2796762 m!3226375))

(assert (=> b!2796762 m!3226365))

(assert (=> b!2796762 m!3226375))

(declare-fun m!3226377 () Bool)

(assert (=> b!2796762 m!3226377))

(declare-fun m!3226379 () Bool)

(assert (=> b!2796763 m!3226379))

(assert (=> b!2796763 m!3226289))

(assert (=> b!2796761 m!3226371))

(declare-fun m!3226381 () Bool)

(assert (=> b!2796761 m!3226381))

(assert (=> b!2796694 d!812821))

(declare-fun d!812823 () Bool)

(assert (=> d!812823 (isPrefix!2624 testedP!183 (++!8011 testedP!183 testedSuffix!143))))

(declare-fun lt!999170 () Unit!46606)

(declare-fun choose!16446 (List!32568 List!32568) Unit!46606)

(assert (=> d!812823 (= lt!999170 (choose!16446 testedP!183 testedSuffix!143))))

(assert (=> d!812823 (= (lemmaConcatTwoListThenFirstIsPrefix!1732 testedP!183 testedSuffix!143) lt!999170)))

(declare-fun bs!515039 () Bool)

(assert (= bs!515039 d!812823))

(assert (=> bs!515039 m!3226301))

(assert (=> bs!515039 m!3226301))

(declare-fun m!3226383 () Bool)

(assert (=> bs!515039 m!3226383))

(declare-fun m!3226385 () Bool)

(assert (=> bs!515039 m!3226385))

(assert (=> b!2796694 d!812823))

(declare-fun bs!515040 () Bool)

(declare-fun b!2796768 () Bool)

(declare-fun d!812825 () Bool)

(assert (= bs!515040 (and b!2796768 d!812825)))

(declare-fun lambda!102722 () Int)

(declare-fun lambda!102721 () Int)

(assert (=> bs!515040 (not (= lambda!102722 lambda!102721))))

(declare-fun bs!515041 () Bool)

(declare-fun b!2796769 () Bool)

(assert (= bs!515041 (and b!2796769 d!812825)))

(declare-fun lambda!102723 () Int)

(assert (=> bs!515041 (not (= lambda!102723 lambda!102721))))

(declare-fun bs!515042 () Bool)

(assert (= bs!515042 (and b!2796769 b!2796768)))

(assert (=> bs!515042 (= lambda!102723 lambda!102722)))

(declare-fun lt!999187 () Bool)

(declare-datatypes ((Option!6283 0))(
  ( (None!6282) (Some!6282 (v!34074 List!32568)) )
))
(declare-fun isEmpty!18132 (Option!6283) Bool)

(declare-fun getLanguageWitness!217 ((InoxSet Context!4838)) Option!6283)

(assert (=> d!812825 (= lt!999187 (isEmpty!18132 (getLanguageWitness!217 z!3684)))))

(declare-fun forall!6695 ((InoxSet Context!4838) Int) Bool)

(assert (=> d!812825 (= lt!999187 (forall!6695 z!3684 lambda!102721))))

(declare-fun lt!999194 () Unit!46606)

(declare-fun e!1766473 () Unit!46606)

(assert (=> d!812825 (= lt!999194 e!1766473)))

(declare-fun c!453672 () Bool)

(assert (=> d!812825 (= c!453672 (not (forall!6695 z!3684 lambda!102721)))))

(assert (=> d!812825 (= (lostCauseZipper!495 z!3684) lt!999187)))

(declare-fun Unit!46608 () Unit!46606)

(assert (=> b!2796769 (= e!1766473 Unit!46608)))

(declare-datatypes ((List!32572 0))(
  ( (Nil!32472) (Cons!32472 (h!37892 Context!4838) (t!228732 List!32572)) )
))
(declare-fun lt!999189 () List!32572)

(declare-fun call!182785 () List!32572)

(assert (=> b!2796769 (= lt!999189 call!182785)))

(declare-fun lt!999193 () Unit!46606)

(declare-fun lemmaForallThenNotExists!105 (List!32572 Int) Unit!46606)

(assert (=> b!2796769 (= lt!999193 (lemmaForallThenNotExists!105 lt!999189 lambda!102721))))

(declare-fun call!182784 () Bool)

(assert (=> b!2796769 (not call!182784)))

(declare-fun lt!999192 () Unit!46606)

(assert (=> b!2796769 (= lt!999192 lt!999193)))

(declare-fun bm!182780 () Bool)

(declare-fun lt!999190 () List!32572)

(declare-fun exists!1011 (List!32572 Int) Bool)

(assert (=> bm!182780 (= call!182784 (exists!1011 (ite c!453672 lt!999190 lt!999189) (ite c!453672 lambda!102722 lambda!102723)))))

(declare-fun Unit!46609 () Unit!46606)

(assert (=> b!2796768 (= e!1766473 Unit!46609)))

(assert (=> b!2796768 (= lt!999190 call!182785)))

(declare-fun lt!999191 () Unit!46606)

(declare-fun lemmaNotForallThenExists!105 (List!32572 Int) Unit!46606)

(assert (=> b!2796768 (= lt!999191 (lemmaNotForallThenExists!105 lt!999190 lambda!102721))))

(assert (=> b!2796768 call!182784))

(declare-fun lt!999188 () Unit!46606)

(assert (=> b!2796768 (= lt!999188 lt!999191)))

(declare-fun bm!182779 () Bool)

(declare-fun toList!1878 ((InoxSet Context!4838)) List!32572)

(assert (=> bm!182779 (= call!182785 (toList!1878 z!3684))))

(assert (= (and d!812825 c!453672) b!2796768))

(assert (= (and d!812825 (not c!453672)) b!2796769))

(assert (= (or b!2796768 b!2796769) bm!182779))

(assert (= (or b!2796768 b!2796769) bm!182780))

(declare-fun m!3226387 () Bool)

(assert (=> b!2796768 m!3226387))

(declare-fun m!3226389 () Bool)

(assert (=> b!2796769 m!3226389))

(declare-fun m!3226391 () Bool)

(assert (=> bm!182780 m!3226391))

(declare-fun m!3226393 () Bool)

(assert (=> d!812825 m!3226393))

(assert (=> d!812825 m!3226393))

(declare-fun m!3226395 () Bool)

(assert (=> d!812825 m!3226395))

(declare-fun m!3226397 () Bool)

(assert (=> d!812825 m!3226397))

(assert (=> d!812825 m!3226397))

(declare-fun m!3226399 () Bool)

(assert (=> bm!182779 m!3226399))

(assert (=> b!2796703 d!812825))

(declare-fun d!812827 () Bool)

(assert (=> d!812827 (= testedSuffix!143 lt!999151)))

(declare-fun lt!999197 () Unit!46606)

(declare-fun choose!16447 (List!32568 List!32568 List!32568 List!32568 List!32568) Unit!46606)

(assert (=> d!812827 (= lt!999197 (choose!16447 testedP!183 testedSuffix!143 testedP!183 lt!999151 lt!999153))))

(assert (=> d!812827 (isPrefix!2624 testedP!183 lt!999153)))

(assert (=> d!812827 (= (lemmaSamePrefixThenSameSuffix!1198 testedP!183 testedSuffix!143 testedP!183 lt!999151 lt!999153) lt!999197)))

(declare-fun bs!515043 () Bool)

(assert (= bs!515043 d!812827))

(declare-fun m!3226401 () Bool)

(assert (=> bs!515043 m!3226401))

(assert (=> bs!515043 m!3226335))

(assert (=> b!2796703 d!812827))

(declare-fun d!812829 () Bool)

(declare-fun lt!999200 () List!32568)

(assert (=> d!812829 (= (++!8011 testedP!183 lt!999200) lt!999153)))

(declare-fun e!1766476 () List!32568)

(assert (=> d!812829 (= lt!999200 e!1766476)))

(declare-fun c!453675 () Bool)

(assert (=> d!812829 (= c!453675 ((_ is Cons!32468) testedP!183))))

(assert (=> d!812829 (>= (size!25321 lt!999153) (size!25321 testedP!183))))

(assert (=> d!812829 (= (getSuffix!1300 lt!999153 testedP!183) lt!999200)))

(declare-fun b!2796774 () Bool)

(assert (=> b!2796774 (= e!1766476 (getSuffix!1300 (tail!4421 lt!999153) (t!228728 testedP!183)))))

(declare-fun b!2796775 () Bool)

(assert (=> b!2796775 (= e!1766476 lt!999153)))

(assert (= (and d!812829 c!453675) b!2796774))

(assert (= (and d!812829 (not c!453675)) b!2796775))

(declare-fun m!3226403 () Bool)

(assert (=> d!812829 m!3226403))

(assert (=> d!812829 m!3226307))

(assert (=> d!812829 m!3226289))

(assert (=> b!2796774 m!3226367))

(assert (=> b!2796774 m!3226367))

(declare-fun m!3226405 () Bool)

(assert (=> b!2796774 m!3226405))

(assert (=> b!2796703 d!812829))

(declare-fun d!812831 () Bool)

(declare-fun lt!999203 () Int)

(assert (=> d!812831 (= lt!999203 (size!25321 (list!12199 (_1!19548 lt!999152))))))

(declare-fun size!25322 (Conc!10063) Int)

(assert (=> d!812831 (= lt!999203 (size!25322 (c!453655 (_1!19548 lt!999152))))))

(assert (=> d!812831 (= (size!25320 (_1!19548 lt!999152)) lt!999203)))

(declare-fun bs!515044 () Bool)

(assert (= bs!515044 d!812831))

(assert (=> bs!515044 m!3226325))

(assert (=> bs!515044 m!3226325))

(declare-fun m!3226407 () Bool)

(assert (=> bs!515044 m!3226407))

(declare-fun m!3226409 () Bool)

(assert (=> bs!515044 m!3226409))

(assert (=> b!2796704 d!812831))

(declare-fun b!2796777 () Bool)

(declare-fun e!1766478 () List!32568)

(assert (=> b!2796777 (= e!1766478 (Cons!32468 (h!37888 lt!999156) (++!8011 (t!228728 lt!999156) lt!999150)))))

(declare-fun b!2796779 () Bool)

(declare-fun lt!999204 () List!32568)

(declare-fun e!1766477 () Bool)

(assert (=> b!2796779 (= e!1766477 (or (not (= lt!999150 Nil!32468)) (= lt!999204 lt!999156)))))

(declare-fun d!812833 () Bool)

(assert (=> d!812833 e!1766477))

(declare-fun res!1165875 () Bool)

(assert (=> d!812833 (=> (not res!1165875) (not e!1766477))))

(assert (=> d!812833 (= res!1165875 (= (content!4538 lt!999204) ((_ map or) (content!4538 lt!999156) (content!4538 lt!999150))))))

(assert (=> d!812833 (= lt!999204 e!1766478)))

(declare-fun c!453676 () Bool)

(assert (=> d!812833 (= c!453676 ((_ is Nil!32468) lt!999156))))

(assert (=> d!812833 (= (++!8011 lt!999156 lt!999150) lt!999204)))

(declare-fun b!2796776 () Bool)

(assert (=> b!2796776 (= e!1766478 lt!999150)))

(declare-fun b!2796778 () Bool)

(declare-fun res!1165874 () Bool)

(assert (=> b!2796778 (=> (not res!1165874) (not e!1766477))))

(assert (=> b!2796778 (= res!1165874 (= (size!25321 lt!999204) (+ (size!25321 lt!999156) (size!25321 lt!999150))))))

(assert (= (and d!812833 c!453676) b!2796776))

(assert (= (and d!812833 (not c!453676)) b!2796777))

(assert (= (and d!812833 res!1165875) b!2796778))

(assert (= (and b!2796778 res!1165874) b!2796779))

(declare-fun m!3226411 () Bool)

(assert (=> b!2796777 m!3226411))

(declare-fun m!3226413 () Bool)

(assert (=> d!812833 m!3226413))

(declare-fun m!3226415 () Bool)

(assert (=> d!812833 m!3226415))

(declare-fun m!3226417 () Bool)

(assert (=> d!812833 m!3226417))

(declare-fun m!3226419 () Bool)

(assert (=> b!2796778 m!3226419))

(declare-fun m!3226421 () Bool)

(assert (=> b!2796778 m!3226421))

(declare-fun m!3226423 () Bool)

(assert (=> b!2796778 m!3226423))

(assert (=> b!2796695 d!812833))

(declare-fun d!812835 () Bool)

(assert (=> d!812835 (= (list!12199 (_2!19548 lt!999152)) (list!12200 (c!453655 (_2!19548 lt!999152))))))

(declare-fun bs!515045 () Bool)

(assert (= bs!515045 d!812835))

(declare-fun m!3226425 () Bool)

(assert (=> bs!515045 m!3226425))

(assert (=> b!2796695 d!812835))

(declare-fun d!812837 () Bool)

(assert (=> d!812837 (= (list!12199 (_1!19548 lt!999152)) (list!12200 (c!453655 (_1!19548 lt!999152))))))

(declare-fun bs!515046 () Bool)

(assert (= bs!515046 d!812837))

(declare-fun m!3226427 () Bool)

(assert (=> bs!515046 m!3226427))

(assert (=> b!2796695 d!812837))

(declare-fun d!812839 () Bool)

(declare-fun e!1766481 () Bool)

(assert (=> d!812839 e!1766481))

(declare-fun res!1165881 () Bool)

(assert (=> d!812839 (=> (not res!1165881) (not e!1766481))))

(declare-fun lt!999210 () tuple2!33018)

(assert (=> d!812839 (= res!1165881 (isBalanced!3070 (c!453655 (_1!19548 lt!999210))))))

(declare-datatypes ((tuple2!33020 0))(
  ( (tuple2!33021 (_1!19549 Conc!10063) (_2!19549 Conc!10063)) )
))
(declare-fun lt!999209 () tuple2!33020)

(assert (=> d!812839 (= lt!999210 (tuple2!33019 (BalanceConc!19741 (_1!19549 lt!999209)) (BalanceConc!19741 (_2!19549 lt!999209))))))

(declare-fun splitAt!182 (Conc!10063 Int) tuple2!33020)

(assert (=> d!812839 (= lt!999209 (splitAt!182 (c!453655 totalInput!758) testedPSize!143))))

(assert (=> d!812839 (isBalanced!3070 (c!453655 totalInput!758))))

(assert (=> d!812839 (= (splitAt!181 totalInput!758 testedPSize!143) lt!999210)))

(declare-fun b!2796784 () Bool)

(declare-fun res!1165880 () Bool)

(assert (=> b!2796784 (=> (not res!1165880) (not e!1766481))))

(assert (=> b!2796784 (= res!1165880 (isBalanced!3070 (c!453655 (_2!19548 lt!999210))))))

(declare-fun b!2796785 () Bool)

(declare-datatypes ((tuple2!33022 0))(
  ( (tuple2!33023 (_1!19550 List!32568) (_2!19550 List!32568)) )
))
(declare-fun splitAtIndex!70 (List!32568 Int) tuple2!33022)

(assert (=> b!2796785 (= e!1766481 (= (tuple2!33023 (list!12199 (_1!19548 lt!999210)) (list!12199 (_2!19548 lt!999210))) (splitAtIndex!70 (list!12199 totalInput!758) testedPSize!143)))))

(assert (= (and d!812839 res!1165881) b!2796784))

(assert (= (and b!2796784 res!1165880) b!2796785))

(declare-fun m!3226429 () Bool)

(assert (=> d!812839 m!3226429))

(declare-fun m!3226431 () Bool)

(assert (=> d!812839 m!3226431))

(assert (=> d!812839 m!3226343))

(declare-fun m!3226433 () Bool)

(assert (=> b!2796784 m!3226433))

(declare-fun m!3226435 () Bool)

(assert (=> b!2796785 m!3226435))

(declare-fun m!3226437 () Bool)

(assert (=> b!2796785 m!3226437))

(assert (=> b!2796785 m!3226293))

(assert (=> b!2796785 m!3226293))

(declare-fun m!3226439 () Bool)

(assert (=> b!2796785 m!3226439))

(assert (=> b!2796695 d!812839))

(declare-fun d!812841 () Bool)

(declare-fun lt!999213 () Int)

(assert (=> d!812841 (>= lt!999213 0)))

(declare-fun e!1766484 () Int)

(assert (=> d!812841 (= lt!999213 e!1766484)))

(declare-fun c!453679 () Bool)

(assert (=> d!812841 (= c!453679 ((_ is Nil!32468) testedP!183))))

(assert (=> d!812841 (= (size!25321 testedP!183) lt!999213)))

(declare-fun b!2796790 () Bool)

(assert (=> b!2796790 (= e!1766484 0)))

(declare-fun b!2796791 () Bool)

(assert (=> b!2796791 (= e!1766484 (+ 1 (size!25321 (t!228728 testedP!183))))))

(assert (= (and d!812841 c!453679) b!2796790))

(assert (= (and d!812841 (not c!453679)) b!2796791))

(declare-fun m!3226441 () Bool)

(assert (=> b!2796791 m!3226441))

(assert (=> b!2796705 d!812841))

(declare-fun d!812843 () Bool)

(assert (=> d!812843 (= (array_inv!4533 (_keys!4295 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))) (bvsge (size!25318 (_keys!4295 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2796715 d!812843))

(declare-fun d!812845 () Bool)

(assert (=> d!812845 (= (array_inv!4535 (_values!4276 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))) (bvsge (size!25317 (_values!4276 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2796715 d!812845))

(declare-fun d!812847 () Bool)

(assert (=> d!812847 (= (valid!3130 cacheDown!1009) (validCacheMapDown!425 (cache!4045 cacheDown!1009)))))

(declare-fun bs!515047 () Bool)

(assert (= bs!515047 d!812847))

(assert (=> bs!515047 m!3226345))

(assert (=> b!2796706 d!812847))

(declare-fun d!812849 () Bool)

(assert (=> d!812849 (= (valid!3131 cacheUp!890) (validCacheMapUp!394 (cache!4044 cacheUp!890)))))

(declare-fun bs!515048 () Bool)

(assert (= bs!515048 d!812849))

(assert (=> bs!515048 m!3226341))

(assert (=> b!2796717 d!812849))

(declare-fun d!812851 () Bool)

(declare-fun lt!999214 () Int)

(assert (=> d!812851 (= lt!999214 (size!25321 (list!12199 totalInput!758)))))

(assert (=> d!812851 (= lt!999214 (size!25322 (c!453655 totalInput!758)))))

(assert (=> d!812851 (= (size!25320 totalInput!758) lt!999214)))

(declare-fun bs!515049 () Bool)

(assert (= bs!515049 d!812851))

(assert (=> bs!515049 m!3226293))

(assert (=> bs!515049 m!3226293))

(declare-fun m!3226443 () Bool)

(assert (=> bs!515049 m!3226443))

(declare-fun m!3226445 () Bool)

(assert (=> bs!515049 m!3226445))

(assert (=> b!2796699 d!812851))

(declare-fun d!812853 () Bool)

(declare-fun lambda!102726 () Int)

(declare-fun forall!6696 (List!32569 Int) Bool)

(assert (=> d!812853 (= (inv!44105 setElem!24257) (forall!6696 (exprs!2919 setElem!24257) lambda!102726))))

(declare-fun bs!515050 () Bool)

(assert (= bs!515050 d!812853))

(declare-fun m!3226447 () Bool)

(assert (=> bs!515050 m!3226447))

(assert (=> setNonEmpty!24257 d!812853))

(declare-fun d!812855 () Bool)

(assert (=> d!812855 (= (array_inv!4533 (_keys!4296 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))) (bvsge (size!25318 (_keys!4296 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2796700 d!812855))

(declare-fun d!812857 () Bool)

(assert (=> d!812857 (= (array_inv!4534 (_values!4277 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))) (bvsge (size!25319 (_values!4277 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2796700 d!812857))

(declare-fun d!812859 () Bool)

(assert (=> d!812859 (and (= lt!999156 testedP!183) (= lt!999150 testedSuffix!143))))

(declare-fun lt!999217 () Unit!46606)

(declare-fun choose!16448 (List!32568 List!32568 List!32568 List!32568) Unit!46606)

(assert (=> d!812859 (= lt!999217 (choose!16448 lt!999156 lt!999150 testedP!183 testedSuffix!143))))

(assert (=> d!812859 (= (++!8011 lt!999156 lt!999150) (++!8011 testedP!183 testedSuffix!143))))

(assert (=> d!812859 (= (lemmaConcatSameAndSameSizesThenSameLists!372 lt!999156 lt!999150 testedP!183 testedSuffix!143) lt!999217)))

(declare-fun bs!515051 () Bool)

(assert (= bs!515051 d!812859))

(declare-fun m!3226449 () Bool)

(assert (=> bs!515051 m!3226449))

(assert (=> bs!515051 m!3226321))

(assert (=> bs!515051 m!3226301))

(assert (=> b!2796692 d!812859))

(declare-fun d!812861 () Bool)

(declare-fun lt!999218 () Int)

(assert (=> d!812861 (>= lt!999218 0)))

(declare-fun e!1766485 () Int)

(assert (=> d!812861 (= lt!999218 e!1766485)))

(declare-fun c!453680 () Bool)

(assert (=> d!812861 (= c!453680 ((_ is Nil!32468) lt!999153))))

(assert (=> d!812861 (= (size!25321 lt!999153) lt!999218)))

(declare-fun b!2796792 () Bool)

(assert (=> b!2796792 (= e!1766485 0)))

(declare-fun b!2796793 () Bool)

(assert (=> b!2796793 (= e!1766485 (+ 1 (size!25321 (t!228728 lt!999153))))))

(assert (= (and d!812861 c!453680) b!2796792))

(assert (= (and d!812861 (not c!453680)) b!2796793))

(declare-fun m!3226451 () Bool)

(assert (=> b!2796793 m!3226451))

(assert (=> b!2796701 d!812861))

(declare-fun b!2796802 () Bool)

(declare-fun e!1766491 () Bool)

(declare-fun tp!890150 () Bool)

(declare-fun tp!890149 () Bool)

(assert (=> b!2796802 (= e!1766491 (and (inv!44104 (left!24561 (c!453655 totalInput!758))) tp!890149 (inv!44104 (right!24891 (c!453655 totalInput!758))) tp!890150))))

(declare-fun b!2796804 () Bool)

(declare-fun e!1766490 () Bool)

(declare-fun tp!890151 () Bool)

(assert (=> b!2796804 (= e!1766490 tp!890151)))

(declare-fun b!2796803 () Bool)

(declare-fun inv!44108 (IArray!20131) Bool)

(assert (=> b!2796803 (= e!1766491 (and (inv!44108 (xs!13175 (c!453655 totalInput!758))) e!1766490))))

(assert (=> b!2796710 (= tp!890132 (and (inv!44104 (c!453655 totalInput!758)) e!1766491))))

(assert (= (and b!2796710 ((_ is Node!10063) (c!453655 totalInput!758))) b!2796802))

(assert (= b!2796803 b!2796804))

(assert (= (and b!2796710 ((_ is Leaf!15332) (c!453655 totalInput!758))) b!2796803))

(declare-fun m!3226453 () Bool)

(assert (=> b!2796802 m!3226453))

(declare-fun m!3226455 () Bool)

(assert (=> b!2796802 m!3226455))

(declare-fun m!3226457 () Bool)

(assert (=> b!2796803 m!3226457))

(assert (=> b!2796710 m!3226319))

(declare-fun e!1766500 () Bool)

(declare-fun setRes!24260 () Bool)

(declare-fun tp!890162 () Bool)

(declare-fun b!2796813 () Bool)

(declare-fun e!1766499 () Bool)

(assert (=> b!2796813 (= e!1766500 (and (inv!44105 (_1!19544 (_1!19545 (h!37890 mapDefault!18172)))) e!1766499 tp_is_empty!14215 setRes!24260 tp!890162))))

(declare-fun condSetEmpty!24260 () Bool)

(assert (=> b!2796813 (= condSetEmpty!24260 (= (_2!19545 (h!37890 mapDefault!18172)) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun b!2796814 () Bool)

(declare-fun e!1766498 () Bool)

(declare-fun tp!890163 () Bool)

(assert (=> b!2796814 (= e!1766498 tp!890163)))

(declare-fun setElem!24260 () Context!4838)

(declare-fun setNonEmpty!24260 () Bool)

(declare-fun tp!890160 () Bool)

(assert (=> setNonEmpty!24260 (= setRes!24260 (and tp!890160 (inv!44105 setElem!24260) e!1766498))))

(declare-fun setRest!24260 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24260 (= (_2!19545 (h!37890 mapDefault!18172)) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24260 true) setRest!24260))))

(assert (=> b!2796696 (= tp!890130 e!1766500)))

(declare-fun setIsEmpty!24260 () Bool)

(assert (=> setIsEmpty!24260 setRes!24260))

(declare-fun b!2796815 () Bool)

(declare-fun tp!890161 () Bool)

(assert (=> b!2796815 (= e!1766499 tp!890161)))

(assert (= b!2796813 b!2796815))

(assert (= (and b!2796813 condSetEmpty!24260) setIsEmpty!24260))

(assert (= (and b!2796813 (not condSetEmpty!24260)) setNonEmpty!24260))

(assert (= setNonEmpty!24260 b!2796814))

(assert (= (and b!2796696 ((_ is Cons!32470) mapDefault!18172)) b!2796813))

(declare-fun m!3226459 () Bool)

(assert (=> b!2796813 m!3226459))

(declare-fun m!3226461 () Bool)

(assert (=> setNonEmpty!24260 m!3226461))

(declare-fun b!2796820 () Bool)

(declare-fun e!1766503 () Bool)

(declare-fun tp!890168 () Bool)

(declare-fun tp!890169 () Bool)

(assert (=> b!2796820 (= e!1766503 (and tp!890168 tp!890169))))

(assert (=> b!2796719 (= tp!890128 e!1766503)))

(assert (= (and b!2796719 ((_ is Cons!32469) (exprs!2919 setElem!24257))) b!2796820))

(declare-fun setRes!24265 () Bool)

(declare-fun b!2796835 () Bool)

(declare-fun tp!890190 () Bool)

(declare-fun mapDefault!18175 () List!32570)

(declare-fun e!1766520 () Bool)

(declare-fun e!1766519 () Bool)

(assert (=> b!2796835 (= e!1766519 (and (inv!44105 (_1!19544 (_1!19545 (h!37890 mapDefault!18175)))) e!1766520 tp_is_empty!14215 setRes!24265 tp!890190))))

(declare-fun condSetEmpty!24266 () Bool)

(assert (=> b!2796835 (= condSetEmpty!24266 (= (_2!19545 (h!37890 mapDefault!18175)) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun mapNonEmpty!18175 () Bool)

(declare-fun mapRes!18175 () Bool)

(declare-fun tp!890192 () Bool)

(declare-fun e!1766516 () Bool)

(assert (=> mapNonEmpty!18175 (= mapRes!18175 (and tp!890192 e!1766516))))

(declare-fun mapValue!18175 () List!32570)

(declare-fun mapKey!18175 () (_ BitVec 32))

(declare-fun mapRest!18175 () (Array (_ BitVec 32) List!32570))

(assert (=> mapNonEmpty!18175 (= mapRest!18172 (store mapRest!18175 mapKey!18175 mapValue!18175))))

(declare-fun b!2796836 () Bool)

(declare-fun e!1766521 () Bool)

(declare-fun tp!890194 () Bool)

(assert (=> b!2796836 (= e!1766521 tp!890194)))

(declare-fun b!2796837 () Bool)

(declare-fun tp!890189 () Bool)

(assert (=> b!2796837 (= e!1766520 tp!890189)))

(declare-fun b!2796838 () Bool)

(declare-fun tp!890188 () Bool)

(declare-fun setRes!24266 () Bool)

(assert (=> b!2796838 (= e!1766516 (and (inv!44105 (_1!19544 (_1!19545 (h!37890 mapValue!18175)))) e!1766521 tp_is_empty!14215 setRes!24266 tp!890188))))

(declare-fun condSetEmpty!24265 () Bool)

(assert (=> b!2796838 (= condSetEmpty!24265 (= (_2!19545 (h!37890 mapValue!18175)) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun setIsEmpty!24265 () Bool)

(assert (=> setIsEmpty!24265 setRes!24265))

(declare-fun setElem!24266 () Context!4838)

(declare-fun tp!890196 () Bool)

(declare-fun setNonEmpty!24265 () Bool)

(declare-fun e!1766517 () Bool)

(assert (=> setNonEmpty!24265 (= setRes!24265 (and tp!890196 (inv!44105 setElem!24266) e!1766517))))

(declare-fun setRest!24266 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24265 (= (_2!19545 (h!37890 mapDefault!18175)) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24266 true) setRest!24266))))

(declare-fun condMapEmpty!18175 () Bool)

(assert (=> mapNonEmpty!18171 (= condMapEmpty!18175 (= mapRest!18172 ((as const (Array (_ BitVec 32) List!32570)) mapDefault!18175)))))

(assert (=> mapNonEmpty!18171 (= tp!890142 (and e!1766519 mapRes!18175))))

(declare-fun b!2796839 () Bool)

(declare-fun e!1766518 () Bool)

(declare-fun tp!890193 () Bool)

(assert (=> b!2796839 (= e!1766518 tp!890193)))

(declare-fun setIsEmpty!24266 () Bool)

(assert (=> setIsEmpty!24266 setRes!24266))

(declare-fun mapIsEmpty!18175 () Bool)

(assert (=> mapIsEmpty!18175 mapRes!18175))

(declare-fun setElem!24265 () Context!4838)

(declare-fun tp!890195 () Bool)

(declare-fun setNonEmpty!24266 () Bool)

(assert (=> setNonEmpty!24266 (= setRes!24266 (and tp!890195 (inv!44105 setElem!24265) e!1766518))))

(declare-fun setRest!24265 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24266 (= (_2!19545 (h!37890 mapValue!18175)) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24265 true) setRest!24265))))

(declare-fun b!2796840 () Bool)

(declare-fun tp!890191 () Bool)

(assert (=> b!2796840 (= e!1766517 tp!890191)))

(assert (= (and mapNonEmpty!18171 condMapEmpty!18175) mapIsEmpty!18175))

(assert (= (and mapNonEmpty!18171 (not condMapEmpty!18175)) mapNonEmpty!18175))

(assert (= b!2796838 b!2796836))

(assert (= (and b!2796838 condSetEmpty!24265) setIsEmpty!24266))

(assert (= (and b!2796838 (not condSetEmpty!24265)) setNonEmpty!24266))

(assert (= setNonEmpty!24266 b!2796839))

(assert (= (and mapNonEmpty!18175 ((_ is Cons!32470) mapValue!18175)) b!2796838))

(assert (= b!2796835 b!2796837))

(assert (= (and b!2796835 condSetEmpty!24266) setIsEmpty!24265))

(assert (= (and b!2796835 (not condSetEmpty!24266)) setNonEmpty!24265))

(assert (= setNonEmpty!24265 b!2796840))

(assert (= (and mapNonEmpty!18171 ((_ is Cons!32470) mapDefault!18175)) b!2796835))

(declare-fun m!3226463 () Bool)

(assert (=> b!2796835 m!3226463))

(declare-fun m!3226465 () Bool)

(assert (=> setNonEmpty!24266 m!3226465))

(declare-fun m!3226467 () Bool)

(assert (=> setNonEmpty!24265 m!3226467))

(declare-fun m!3226469 () Bool)

(assert (=> mapNonEmpty!18175 m!3226469))

(declare-fun m!3226471 () Bool)

(assert (=> b!2796838 m!3226471))

(declare-fun setRes!24267 () Bool)

(declare-fun e!1766523 () Bool)

(declare-fun b!2796841 () Bool)

(declare-fun tp!890199 () Bool)

(declare-fun e!1766524 () Bool)

(assert (=> b!2796841 (= e!1766524 (and (inv!44105 (_1!19544 (_1!19545 (h!37890 mapValue!18171)))) e!1766523 tp_is_empty!14215 setRes!24267 tp!890199))))

(declare-fun condSetEmpty!24267 () Bool)

(assert (=> b!2796841 (= condSetEmpty!24267 (= (_2!19545 (h!37890 mapValue!18171)) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun b!2796842 () Bool)

(declare-fun e!1766522 () Bool)

(declare-fun tp!890200 () Bool)

(assert (=> b!2796842 (= e!1766522 tp!890200)))

(declare-fun setElem!24267 () Context!4838)

(declare-fun tp!890197 () Bool)

(declare-fun setNonEmpty!24267 () Bool)

(assert (=> setNonEmpty!24267 (= setRes!24267 (and tp!890197 (inv!44105 setElem!24267) e!1766522))))

(declare-fun setRest!24267 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24267 (= (_2!19545 (h!37890 mapValue!18171)) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24267 true) setRest!24267))))

(assert (=> mapNonEmpty!18171 (= tp!890141 e!1766524)))

(declare-fun setIsEmpty!24267 () Bool)

(assert (=> setIsEmpty!24267 setRes!24267))

(declare-fun b!2796843 () Bool)

(declare-fun tp!890198 () Bool)

(assert (=> b!2796843 (= e!1766523 tp!890198)))

(assert (= b!2796841 b!2796843))

(assert (= (and b!2796841 condSetEmpty!24267) setIsEmpty!24267))

(assert (= (and b!2796841 (not condSetEmpty!24267)) setNonEmpty!24267))

(assert (= setNonEmpty!24267 b!2796842))

(assert (= (and mapNonEmpty!18171 ((_ is Cons!32470) mapValue!18171)) b!2796841))

(declare-fun m!3226473 () Bool)

(assert (=> b!2796841 m!3226473))

(declare-fun m!3226475 () Bool)

(assert (=> setNonEmpty!24267 m!3226475))

(declare-fun b!2796848 () Bool)

(declare-fun e!1766527 () Bool)

(declare-fun tp!890203 () Bool)

(assert (=> b!2796848 (= e!1766527 (and tp_is_empty!14215 tp!890203))))

(assert (=> b!2796697 (= tp!890126 e!1766527)))

(assert (= (and b!2796697 ((_ is Cons!32468) (t!228728 testedP!183))) b!2796848))

(declare-fun b!2796857 () Bool)

(declare-fun e!1766536 () Bool)

(declare-fun tp!890215 () Bool)

(assert (=> b!2796857 (= e!1766536 tp!890215)))

(declare-fun setElem!24270 () Context!4838)

(declare-fun setNonEmpty!24270 () Bool)

(declare-fun setRes!24270 () Bool)

(declare-fun e!1766534 () Bool)

(declare-fun tp!890216 () Bool)

(assert (=> setNonEmpty!24270 (= setRes!24270 (and tp!890216 (inv!44105 setElem!24270) e!1766534))))

(declare-fun setRest!24270 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24270 (= (_2!19547 (h!37891 mapDefault!18171)) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24270 true) setRest!24270))))

(declare-fun b!2796858 () Bool)

(declare-fun tp!890217 () Bool)

(assert (=> b!2796858 (= e!1766534 tp!890217)))

(declare-fun e!1766535 () Bool)

(assert (=> b!2796712 (= tp!890129 e!1766535)))

(declare-fun tp!890218 () Bool)

(declare-fun b!2796859 () Bool)

(declare-fun tp!890214 () Bool)

(assert (=> b!2796859 (= e!1766535 (and tp!890218 (inv!44105 (_2!19546 (_1!19547 (h!37891 mapDefault!18171)))) e!1766536 tp_is_empty!14215 setRes!24270 tp!890214))))

(declare-fun condSetEmpty!24270 () Bool)

(assert (=> b!2796859 (= condSetEmpty!24270 (= (_2!19547 (h!37891 mapDefault!18171)) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun setIsEmpty!24270 () Bool)

(assert (=> setIsEmpty!24270 setRes!24270))

(assert (= b!2796859 b!2796857))

(assert (= (and b!2796859 condSetEmpty!24270) setIsEmpty!24270))

(assert (= (and b!2796859 (not condSetEmpty!24270)) setNonEmpty!24270))

(assert (= setNonEmpty!24270 b!2796858))

(assert (= (and b!2796712 ((_ is Cons!32471) mapDefault!18171)) b!2796859))

(declare-fun m!3226477 () Bool)

(assert (=> setNonEmpty!24270 m!3226477))

(declare-fun m!3226479 () Bool)

(assert (=> b!2796859 m!3226479))

(declare-fun b!2796874 () Bool)

(declare-fun e!1766553 () Bool)

(declare-fun tp!890247 () Bool)

(assert (=> b!2796874 (= e!1766553 tp!890247)))

(declare-fun setRes!24275 () Bool)

(declare-fun tp!890251 () Bool)

(declare-fun tp!890244 () Bool)

(declare-fun mapDefault!18178 () List!32571)

(declare-fun e!1766554 () Bool)

(declare-fun b!2796875 () Bool)

(assert (=> b!2796875 (= e!1766554 (and tp!890251 (inv!44105 (_2!19546 (_1!19547 (h!37891 mapDefault!18178)))) e!1766553 tp_is_empty!14215 setRes!24275 tp!890244))))

(declare-fun condSetEmpty!24276 () Bool)

(assert (=> b!2796875 (= condSetEmpty!24276 (= (_2!19547 (h!37891 mapDefault!18178)) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun condMapEmpty!18178 () Bool)

(assert (=> mapNonEmpty!18172 (= condMapEmpty!18178 (= mapRest!18171 ((as const (Array (_ BitVec 32) List!32571)) mapDefault!18178)))))

(declare-fun mapRes!18178 () Bool)

(assert (=> mapNonEmpty!18172 (= tp!890127 (and e!1766554 mapRes!18178))))

(declare-fun setIsEmpty!24275 () Bool)

(assert (=> setIsEmpty!24275 setRes!24275))

(declare-fun tp!890243 () Bool)

(declare-fun e!1766552 () Bool)

(declare-fun mapValue!18178 () List!32571)

(declare-fun b!2796876 () Bool)

(declare-fun setRes!24276 () Bool)

(declare-fun tp!890249 () Bool)

(declare-fun e!1766551 () Bool)

(assert (=> b!2796876 (= e!1766552 (and tp!890243 (inv!44105 (_2!19546 (_1!19547 (h!37891 mapValue!18178)))) e!1766551 tp_is_empty!14215 setRes!24276 tp!890249))))

(declare-fun condSetEmpty!24275 () Bool)

(assert (=> b!2796876 (= condSetEmpty!24275 (= (_2!19547 (h!37891 mapValue!18178)) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun mapIsEmpty!18178 () Bool)

(assert (=> mapIsEmpty!18178 mapRes!18178))

(declare-fun b!2796877 () Bool)

(declare-fun e!1766549 () Bool)

(declare-fun tp!890250 () Bool)

(assert (=> b!2796877 (= e!1766549 tp!890250)))

(declare-fun mapNonEmpty!18178 () Bool)

(declare-fun tp!890248 () Bool)

(assert (=> mapNonEmpty!18178 (= mapRes!18178 (and tp!890248 e!1766552))))

(declare-fun mapKey!18178 () (_ BitVec 32))

(declare-fun mapRest!18178 () (Array (_ BitVec 32) List!32571))

(assert (=> mapNonEmpty!18178 (= mapRest!18171 (store mapRest!18178 mapKey!18178 mapValue!18178))))

(declare-fun b!2796878 () Bool)

(declare-fun tp!890246 () Bool)

(assert (=> b!2796878 (= e!1766551 tp!890246)))

(declare-fun tp!890245 () Bool)

(declare-fun setNonEmpty!24275 () Bool)

(declare-fun setElem!24275 () Context!4838)

(assert (=> setNonEmpty!24275 (= setRes!24276 (and tp!890245 (inv!44105 setElem!24275) e!1766549))))

(declare-fun setRest!24276 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24275 (= (_2!19547 (h!37891 mapValue!18178)) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24275 true) setRest!24276))))

(declare-fun b!2796879 () Bool)

(declare-fun e!1766550 () Bool)

(declare-fun tp!890241 () Bool)

(assert (=> b!2796879 (= e!1766550 tp!890241)))

(declare-fun setIsEmpty!24276 () Bool)

(assert (=> setIsEmpty!24276 setRes!24276))

(declare-fun tp!890242 () Bool)

(declare-fun setNonEmpty!24276 () Bool)

(declare-fun setElem!24276 () Context!4838)

(assert (=> setNonEmpty!24276 (= setRes!24275 (and tp!890242 (inv!44105 setElem!24276) e!1766550))))

(declare-fun setRest!24275 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24276 (= (_2!19547 (h!37891 mapDefault!18178)) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24276 true) setRest!24275))))

(assert (= (and mapNonEmpty!18172 condMapEmpty!18178) mapIsEmpty!18178))

(assert (= (and mapNonEmpty!18172 (not condMapEmpty!18178)) mapNonEmpty!18178))

(assert (= b!2796876 b!2796878))

(assert (= (and b!2796876 condSetEmpty!24275) setIsEmpty!24276))

(assert (= (and b!2796876 (not condSetEmpty!24275)) setNonEmpty!24275))

(assert (= setNonEmpty!24275 b!2796877))

(assert (= (and mapNonEmpty!18178 ((_ is Cons!32471) mapValue!18178)) b!2796876))

(assert (= b!2796875 b!2796874))

(assert (= (and b!2796875 condSetEmpty!24276) setIsEmpty!24275))

(assert (= (and b!2796875 (not condSetEmpty!24276)) setNonEmpty!24276))

(assert (= setNonEmpty!24276 b!2796879))

(assert (= (and mapNonEmpty!18172 ((_ is Cons!32471) mapDefault!18178)) b!2796875))

(declare-fun m!3226481 () Bool)

(assert (=> setNonEmpty!24276 m!3226481))

(declare-fun m!3226483 () Bool)

(assert (=> setNonEmpty!24275 m!3226483))

(declare-fun m!3226485 () Bool)

(assert (=> mapNonEmpty!18178 m!3226485))

(declare-fun m!3226487 () Bool)

(assert (=> b!2796876 m!3226487))

(declare-fun m!3226489 () Bool)

(assert (=> b!2796875 m!3226489))

(declare-fun b!2796880 () Bool)

(declare-fun e!1766557 () Bool)

(declare-fun tp!890253 () Bool)

(assert (=> b!2796880 (= e!1766557 tp!890253)))

(declare-fun setElem!24277 () Context!4838)

(declare-fun e!1766555 () Bool)

(declare-fun setNonEmpty!24277 () Bool)

(declare-fun tp!890254 () Bool)

(declare-fun setRes!24277 () Bool)

(assert (=> setNonEmpty!24277 (= setRes!24277 (and tp!890254 (inv!44105 setElem!24277) e!1766555))))

(declare-fun setRest!24277 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24277 (= (_2!19547 (h!37891 mapValue!18172)) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24277 true) setRest!24277))))

(declare-fun b!2796881 () Bool)

(declare-fun tp!890255 () Bool)

(assert (=> b!2796881 (= e!1766555 tp!890255)))

(declare-fun e!1766556 () Bool)

(assert (=> mapNonEmpty!18172 (= tp!890136 e!1766556)))

(declare-fun tp!890256 () Bool)

(declare-fun b!2796882 () Bool)

(declare-fun tp!890252 () Bool)

(assert (=> b!2796882 (= e!1766556 (and tp!890256 (inv!44105 (_2!19546 (_1!19547 (h!37891 mapValue!18172)))) e!1766557 tp_is_empty!14215 setRes!24277 tp!890252))))

(declare-fun condSetEmpty!24277 () Bool)

(assert (=> b!2796882 (= condSetEmpty!24277 (= (_2!19547 (h!37891 mapValue!18172)) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun setIsEmpty!24277 () Bool)

(assert (=> setIsEmpty!24277 setRes!24277))

(assert (= b!2796882 b!2796880))

(assert (= (and b!2796882 condSetEmpty!24277) setIsEmpty!24277))

(assert (= (and b!2796882 (not condSetEmpty!24277)) setNonEmpty!24277))

(assert (= setNonEmpty!24277 b!2796881))

(assert (= (and mapNonEmpty!18172 ((_ is Cons!32471) mapValue!18172)) b!2796882))

(declare-fun m!3226491 () Bool)

(assert (=> setNonEmpty!24277 m!3226491))

(declare-fun m!3226493 () Bool)

(assert (=> b!2796882 m!3226493))

(declare-fun condSetEmpty!24280 () Bool)

(assert (=> setNonEmpty!24257 (= condSetEmpty!24280 (= setRest!24257 ((as const (Array Context!4838 Bool)) false)))))

(declare-fun setRes!24280 () Bool)

(assert (=> setNonEmpty!24257 (= tp!890134 setRes!24280)))

(declare-fun setIsEmpty!24280 () Bool)

(assert (=> setIsEmpty!24280 setRes!24280))

(declare-fun tp!890262 () Bool)

(declare-fun setElem!24280 () Context!4838)

(declare-fun e!1766560 () Bool)

(declare-fun setNonEmpty!24280 () Bool)

(assert (=> setNonEmpty!24280 (= setRes!24280 (and tp!890262 (inv!44105 setElem!24280) e!1766560))))

(declare-fun setRest!24280 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24280 (= setRest!24257 ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24280 true) setRest!24280))))

(declare-fun b!2796887 () Bool)

(declare-fun tp!890261 () Bool)

(assert (=> b!2796887 (= e!1766560 tp!890261)))

(assert (= (and setNonEmpty!24257 condSetEmpty!24280) setIsEmpty!24280))

(assert (= (and setNonEmpty!24257 (not condSetEmpty!24280)) setNonEmpty!24280))

(assert (= setNonEmpty!24280 b!2796887))

(declare-fun m!3226495 () Bool)

(assert (=> setNonEmpty!24280 m!3226495))

(declare-fun b!2796888 () Bool)

(declare-fun e!1766563 () Bool)

(declare-fun tp!890264 () Bool)

(assert (=> b!2796888 (= e!1766563 tp!890264)))

(declare-fun setRes!24281 () Bool)

(declare-fun setNonEmpty!24281 () Bool)

(declare-fun e!1766561 () Bool)

(declare-fun tp!890265 () Bool)

(declare-fun setElem!24281 () Context!4838)

(assert (=> setNonEmpty!24281 (= setRes!24281 (and tp!890265 (inv!44105 setElem!24281) e!1766561))))

(declare-fun setRest!24281 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24281 (= (_2!19547 (h!37891 (zeroValue!4255 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24281 true) setRest!24281))))

(declare-fun b!2796889 () Bool)

(declare-fun tp!890266 () Bool)

(assert (=> b!2796889 (= e!1766561 tp!890266)))

(declare-fun e!1766562 () Bool)

(assert (=> b!2796700 (= tp!890138 e!1766562)))

(declare-fun b!2796890 () Bool)

(declare-fun tp!890267 () Bool)

(declare-fun tp!890263 () Bool)

(assert (=> b!2796890 (= e!1766562 (and tp!890267 (inv!44105 (_2!19546 (_1!19547 (h!37891 (zeroValue!4255 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009)))))))))) e!1766563 tp_is_empty!14215 setRes!24281 tp!890263))))

(declare-fun condSetEmpty!24281 () Bool)

(assert (=> b!2796890 (= condSetEmpty!24281 (= (_2!19547 (h!37891 (zeroValue!4255 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009)))))))) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun setIsEmpty!24281 () Bool)

(assert (=> setIsEmpty!24281 setRes!24281))

(assert (= b!2796890 b!2796888))

(assert (= (and b!2796890 condSetEmpty!24281) setIsEmpty!24281))

(assert (= (and b!2796890 (not condSetEmpty!24281)) setNonEmpty!24281))

(assert (= setNonEmpty!24281 b!2796889))

(assert (= (and b!2796700 ((_ is Cons!32471) (zeroValue!4255 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009)))))))) b!2796890))

(declare-fun m!3226497 () Bool)

(assert (=> setNonEmpty!24281 m!3226497))

(declare-fun m!3226499 () Bool)

(assert (=> b!2796890 m!3226499))

(declare-fun b!2796891 () Bool)

(declare-fun e!1766566 () Bool)

(declare-fun tp!890269 () Bool)

(assert (=> b!2796891 (= e!1766566 tp!890269)))

(declare-fun tp!890270 () Bool)

(declare-fun e!1766564 () Bool)

(declare-fun setElem!24282 () Context!4838)

(declare-fun setRes!24282 () Bool)

(declare-fun setNonEmpty!24282 () Bool)

(assert (=> setNonEmpty!24282 (= setRes!24282 (and tp!890270 (inv!44105 setElem!24282) e!1766564))))

(declare-fun setRest!24282 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24282 (= (_2!19547 (h!37891 (minValue!4255 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24282 true) setRest!24282))))

(declare-fun b!2796892 () Bool)

(declare-fun tp!890271 () Bool)

(assert (=> b!2796892 (= e!1766564 tp!890271)))

(declare-fun e!1766565 () Bool)

(assert (=> b!2796700 (= tp!890133 e!1766565)))

(declare-fun b!2796893 () Bool)

(declare-fun tp!890272 () Bool)

(declare-fun tp!890268 () Bool)

(assert (=> b!2796893 (= e!1766565 (and tp!890272 (inv!44105 (_2!19546 (_1!19547 (h!37891 (minValue!4255 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009)))))))))) e!1766566 tp_is_empty!14215 setRes!24282 tp!890268))))

(declare-fun condSetEmpty!24282 () Bool)

(assert (=> b!2796893 (= condSetEmpty!24282 (= (_2!19547 (h!37891 (minValue!4255 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009)))))))) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun setIsEmpty!24282 () Bool)

(assert (=> setIsEmpty!24282 setRes!24282))

(assert (= b!2796893 b!2796891))

(assert (= (and b!2796893 condSetEmpty!24282) setIsEmpty!24282))

(assert (= (and b!2796893 (not condSetEmpty!24282)) setNonEmpty!24282))

(assert (= setNonEmpty!24282 b!2796892))

(assert (= (and b!2796700 ((_ is Cons!32471) (minValue!4255 (v!34072 (underlying!8195 (v!34073 (underlying!8196 (cache!4045 cacheDown!1009)))))))) b!2796893))

(declare-fun m!3226501 () Bool)

(assert (=> setNonEmpty!24282 m!3226501))

(declare-fun m!3226503 () Bool)

(assert (=> b!2796893 m!3226503))

(declare-fun b!2796894 () Bool)

(declare-fun e!1766567 () Bool)

(declare-fun tp!890273 () Bool)

(assert (=> b!2796894 (= e!1766567 (and tp_is_empty!14215 tp!890273))))

(assert (=> b!2796718 (= tp!890124 e!1766567)))

(assert (= (and b!2796718 ((_ is Cons!32468) (t!228728 testedSuffix!143))) b!2796894))

(declare-fun e!1766569 () Bool)

(declare-fun b!2796895 () Bool)

(declare-fun e!1766570 () Bool)

(declare-fun tp!890276 () Bool)

(declare-fun setRes!24283 () Bool)

(assert (=> b!2796895 (= e!1766570 (and (inv!44105 (_1!19544 (_1!19545 (h!37890 (zeroValue!4254 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890)))))))))) e!1766569 tp_is_empty!14215 setRes!24283 tp!890276))))

(declare-fun condSetEmpty!24283 () Bool)

(assert (=> b!2796895 (= condSetEmpty!24283 (= (_2!19545 (h!37890 (zeroValue!4254 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890)))))))) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun b!2796896 () Bool)

(declare-fun e!1766568 () Bool)

(declare-fun tp!890277 () Bool)

(assert (=> b!2796896 (= e!1766568 tp!890277)))

(declare-fun tp!890274 () Bool)

(declare-fun setElem!24283 () Context!4838)

(declare-fun setNonEmpty!24283 () Bool)

(assert (=> setNonEmpty!24283 (= setRes!24283 (and tp!890274 (inv!44105 setElem!24283) e!1766568))))

(declare-fun setRest!24283 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24283 (= (_2!19545 (h!37890 (zeroValue!4254 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24283 true) setRest!24283))))

(assert (=> b!2796715 (= tp!890137 e!1766570)))

(declare-fun setIsEmpty!24283 () Bool)

(assert (=> setIsEmpty!24283 setRes!24283))

(declare-fun b!2796897 () Bool)

(declare-fun tp!890275 () Bool)

(assert (=> b!2796897 (= e!1766569 tp!890275)))

(assert (= b!2796895 b!2796897))

(assert (= (and b!2796895 condSetEmpty!24283) setIsEmpty!24283))

(assert (= (and b!2796895 (not condSetEmpty!24283)) setNonEmpty!24283))

(assert (= setNonEmpty!24283 b!2796896))

(assert (= (and b!2796715 ((_ is Cons!32470) (zeroValue!4254 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890)))))))) b!2796895))

(declare-fun m!3226505 () Bool)

(assert (=> b!2796895 m!3226505))

(declare-fun m!3226507 () Bool)

(assert (=> setNonEmpty!24283 m!3226507))

(declare-fun b!2796898 () Bool)

(declare-fun setRes!24284 () Bool)

(declare-fun e!1766573 () Bool)

(declare-fun e!1766572 () Bool)

(declare-fun tp!890280 () Bool)

(assert (=> b!2796898 (= e!1766573 (and (inv!44105 (_1!19544 (_1!19545 (h!37890 (minValue!4254 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890)))))))))) e!1766572 tp_is_empty!14215 setRes!24284 tp!890280))))

(declare-fun condSetEmpty!24284 () Bool)

(assert (=> b!2796898 (= condSetEmpty!24284 (= (_2!19545 (h!37890 (minValue!4254 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890)))))))) ((as const (Array Context!4838 Bool)) false)))))

(declare-fun b!2796899 () Bool)

(declare-fun e!1766571 () Bool)

(declare-fun tp!890281 () Bool)

(assert (=> b!2796899 (= e!1766571 tp!890281)))

(declare-fun setElem!24284 () Context!4838)

(declare-fun setNonEmpty!24284 () Bool)

(declare-fun tp!890278 () Bool)

(assert (=> setNonEmpty!24284 (= setRes!24284 (and tp!890278 (inv!44105 setElem!24284) e!1766571))))

(declare-fun setRest!24284 () (InoxSet Context!4838))

(assert (=> setNonEmpty!24284 (= (_2!19545 (h!37890 (minValue!4254 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4838 Bool)) false) setElem!24284 true) setRest!24284))))

(assert (=> b!2796715 (= tp!890139 e!1766573)))

(declare-fun setIsEmpty!24284 () Bool)

(assert (=> setIsEmpty!24284 setRes!24284))

(declare-fun b!2796900 () Bool)

(declare-fun tp!890279 () Bool)

(assert (=> b!2796900 (= e!1766572 tp!890279)))

(assert (= b!2796898 b!2796900))

(assert (= (and b!2796898 condSetEmpty!24284) setIsEmpty!24284))

(assert (= (and b!2796898 (not condSetEmpty!24284)) setNonEmpty!24284))

(assert (= setNonEmpty!24284 b!2796899))

(assert (= (and b!2796715 ((_ is Cons!32470) (minValue!4254 (v!34070 (underlying!8193 (v!34071 (underlying!8194 (cache!4044 cacheUp!890)))))))) b!2796898))

(declare-fun m!3226509 () Bool)

(assert (=> b!2796898 m!3226509))

(declare-fun m!3226511 () Bool)

(assert (=> setNonEmpty!24284 m!3226511))

(check-sat (not b_next!79943) (not b!2796897) (not d!812815) (not b_next!79941) (not b!2796745) (not b!2796759) (not b!2796890) (not b!2796802) (not b_next!79945) (not d!812833) (not b!2796882) (not b!2796769) (not setNonEmpty!24267) (not b!2796843) (not b!2796784) (not b!2796887) (not b!2796793) (not b!2796723) (not b!2796859) (not b!2796899) (not b!2796858) (not b_next!79947) (not setNonEmpty!24284) (not b!2796768) (not d!812813) (not b!2796804) (not b!2796888) (not b!2796747) (not b!2796815) (not b!2796841) (not b!2796891) (not b!2796880) (not b!2796814) (not b!2796895) (not d!812847) (not b!2796878) (not setNonEmpty!24283) (not b!2796879) (not b!2796839) (not setNonEmpty!24260) (not b!2796736) (not b!2796837) (not setNonEmpty!24275) (not d!812829) (not bm!182779) b_and!203977 (not setNonEmpty!24266) (not b!2796777) (not b!2796875) (not d!812823) (not b!2796874) (not b!2796840) (not d!812831) (not b!2796762) (not b!2796778) (not b!2796820) (not b!2796898) (not setNonEmpty!24281) (not setNonEmpty!24276) (not b!2796842) (not d!812827) (not b!2796876) (not b!2796774) (not b!2796838) (not b!2796848) (not b!2796785) (not d!812851) (not b!2796857) (not b!2796791) (not b!2796889) (not b!2796835) (not d!812837) (not b!2796892) (not setNonEmpty!24265) (not b!2796757) (not b!2796900) (not d!812809) (not d!812835) b_and!203979 (not b!2796710) (not d!812853) (not b!2796763) (not b!2796877) (not d!812839) (not setNonEmpty!24282) (not setNonEmpty!24270) (not b!2796758) (not mapNonEmpty!18175) (not b!2796737) (not d!812825) b_and!203981 (not b!2796881) (not d!812859) (not setNonEmpty!24277) (not d!812849) (not mapNonEmpty!18178) tp_is_empty!14215 (not b!2796893) b_and!203975 (not b!2796894) (not setNonEmpty!24280) (not b!2796836) (not b!2796813) (not b!2796803) (not b!2796761) (not bm!182780) (not b!2796896) (not b!2796726))
(check-sat (not b_next!79945) (not b_next!79947) b_and!203977 b_and!203979 b_and!203981 b_and!203975 (not b_next!79943) (not b_next!79941))
