; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277096 () Bool)

(assert start!277096)

(declare-fun b!2845927 () Bool)

(declare-fun b_free!82669 () Bool)

(declare-fun b_next!83373 () Bool)

(assert (=> b!2845927 (= b_free!82669 (not b_next!83373))))

(declare-fun tp!912583 () Bool)

(declare-fun b_and!208911 () Bool)

(assert (=> b!2845927 (= tp!912583 b_and!208911)))

(declare-fun b!2845921 () Bool)

(declare-fun b_free!82671 () Bool)

(declare-fun b_next!83375 () Bool)

(assert (=> b!2845921 (= b_free!82671 (not b_next!83375))))

(declare-fun tp!912592 () Bool)

(declare-fun b_and!208913 () Bool)

(assert (=> b!2845921 (= tp!912592 b_and!208913)))

(declare-fun b!2845920 () Bool)

(declare-fun b_free!82673 () Bool)

(declare-fun b_next!83377 () Bool)

(assert (=> b!2845920 (= b_free!82673 (not b_next!83377))))

(declare-fun tp!912590 () Bool)

(declare-fun b_and!208915 () Bool)

(assert (=> b!2845920 (= tp!912590 b_and!208915)))

(declare-fun b!2845925 () Bool)

(declare-fun b_free!82675 () Bool)

(declare-fun b_next!83379 () Bool)

(assert (=> b!2845925 (= b_free!82675 (not b_next!83379))))

(declare-fun tp!912585 () Bool)

(declare-fun b_and!208917 () Bool)

(assert (=> b!2845925 (= tp!912585 b_and!208917)))

(declare-fun mapIsEmpty!18610 () Bool)

(declare-fun mapRes!18610 () Bool)

(assert (=> mapIsEmpty!18610 mapRes!18610))

(declare-fun b!2845908 () Bool)

(declare-fun e!1803148 () Bool)

(declare-fun e!1803145 () Bool)

(assert (=> b!2845908 (= e!1803148 e!1803145)))

(declare-fun b!2845909 () Bool)

(declare-fun e!1803146 () Bool)

(declare-fun e!1803161 () Bool)

(assert (=> b!2845909 (= e!1803146 e!1803161)))

(declare-fun b!2845910 () Bool)

(declare-fun e!1803147 () Bool)

(declare-fun tp!912586 () Bool)

(assert (=> b!2845910 (= e!1803147 tp!912586)))

(declare-fun res!1183573 () Bool)

(declare-fun e!1803162 () Bool)

(assert (=> start!277096 (=> (not res!1183573) (not e!1803162))))

(declare-datatypes ((C!17128 0))(
  ( (C!17129 (val!10598 Int)) )
))
(declare-datatypes ((Regex!8473 0))(
  ( (ElementMatch!8473 (c!459251 C!17128)) (Concat!13776 (regOne!17458 Regex!8473) (regTwo!17458 Regex!8473)) (EmptyExpr!8473) (Star!8473 (reg!8802 Regex!8473)) (EmptyLang!8473) (Union!8473 (regOne!17459 Regex!8473) (regTwo!17459 Regex!8473)) )
))
(declare-fun r!13354 () Regex!8473)

(declare-fun validRegex!3365 (Regex!8473) Bool)

(assert (=> start!277096 (= res!1183573 (validRegex!3365 r!13354))))

(assert (=> start!277096 e!1803162))

(assert (=> start!277096 e!1803147))

(declare-datatypes ((List!33878 0))(
  ( (Nil!33754) (Cons!33754 (h!39174 C!17128) (t!232901 List!33878)) )
))
(declare-datatypes ((IArray!20941 0))(
  ( (IArray!20942 (innerList!10528 List!33878)) )
))
(declare-datatypes ((Conc!10468 0))(
  ( (Node!10468 (left!25421 Conc!10468) (right!25751 Conc!10468) (csize!21166 Int) (cheight!10679 Int)) (Leaf!15928 (xs!13586 IArray!20941) (csize!21167 Int)) (Empty!10468) )
))
(declare-datatypes ((BalanceConc!20574 0))(
  ( (BalanceConc!20575 (c!459252 Conc!10468)) )
))
(declare-fun prefix!1325 () BalanceConc!20574)

(declare-fun e!1803156 () Bool)

(declare-fun inv!45768 (BalanceConc!20574) Bool)

(assert (=> start!277096 (and (inv!45768 prefix!1325) e!1803156)))

(declare-datatypes ((List!33879 0))(
  ( (Nil!33755) (Cons!33755 (h!39175 Regex!8473) (t!232902 List!33879)) )
))
(declare-datatypes ((Context!5002 0))(
  ( (Context!5003 (exprs!3001 List!33879)) )
))
(declare-datatypes ((tuple3!5298 0))(
  ( (tuple3!5299 (_1!19924 Regex!8473) (_2!19924 Context!5002) (_3!3119 C!17128)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33610 0))(
  ( (tuple2!33611 (_1!19925 tuple3!5298) (_2!19925 (InoxSet Context!5002))) )
))
(declare-datatypes ((List!33880 0))(
  ( (Nil!33756) (Cons!33756 (h!39176 tuple2!33610) (t!232903 List!33880)) )
))
(declare-datatypes ((array!14574 0))(
  ( (array!14575 (arr!6494 (Array (_ BitVec 32) List!33880)) (size!26216 (_ BitVec 32))) )
))
(declare-datatypes ((array!14576 0))(
  ( (array!14577 (arr!6495 (Array (_ BitVec 32) (_ BitVec 64))) (size!26217 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8200 0))(
  ( (LongMapFixedSize!8201 (defaultEntry!4485 Int) (mask!10128 (_ BitVec 32)) (extraKeys!4349 (_ BitVec 32)) (zeroValue!4359 List!33880) (minValue!4359 List!33880) (_size!8243 (_ BitVec 32)) (_keys!4400 array!14576) (_values!4381 array!14574) (_vacant!4161 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16209 0))(
  ( (Cell!16210 (v!34397 LongMapFixedSize!8200)) )
))
(declare-datatypes ((MutLongMap!4100 0))(
  ( (LongMap!4100 (underlying!8429 Cell!16209)) (MutLongMapExt!4099 (__x!22370 Int)) )
))
(declare-datatypes ((Cell!16211 0))(
  ( (Cell!16212 (v!34398 MutLongMap!4100)) )
))
(declare-datatypes ((Hashable!4016 0))(
  ( (HashableExt!4015 (__x!22371 Int)) )
))
(declare-datatypes ((MutableMap!4006 0))(
  ( (MutableMapExt!4005 (__x!22372 Int)) (HashMap!4006 (underlying!8430 Cell!16211) (hashF!6048 Hashable!4016) (_size!8244 (_ BitVec 32)) (defaultValue!4177 Int)) )
))
(declare-datatypes ((CacheDown!2824 0))(
  ( (CacheDown!2825 (cache!4141 MutableMap!4006)) )
))
(declare-fun cacheDown!1118 () CacheDown!2824)

(declare-fun inv!45769 (CacheDown!2824) Bool)

(assert (=> start!277096 (and (inv!45769 cacheDown!1118) e!1803148)))

(declare-datatypes ((tuple2!33612 0))(
  ( (tuple2!33613 (_1!19926 Context!5002) (_2!19926 C!17128)) )
))
(declare-datatypes ((tuple2!33614 0))(
  ( (tuple2!33615 (_1!19927 tuple2!33612) (_2!19927 (InoxSet Context!5002))) )
))
(declare-datatypes ((List!33881 0))(
  ( (Nil!33757) (Cons!33757 (h!39177 tuple2!33614) (t!232904 List!33881)) )
))
(declare-datatypes ((array!14578 0))(
  ( (array!14579 (arr!6496 (Array (_ BitVec 32) List!33881)) (size!26218 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8202 0))(
  ( (LongMapFixedSize!8203 (defaultEntry!4486 Int) (mask!10129 (_ BitVec 32)) (extraKeys!4350 (_ BitVec 32)) (zeroValue!4360 List!33881) (minValue!4360 List!33881) (_size!8245 (_ BitVec 32)) (_keys!4401 array!14576) (_values!4382 array!14578) (_vacant!4162 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16213 0))(
  ( (Cell!16214 (v!34399 LongMapFixedSize!8202)) )
))
(declare-datatypes ((MutLongMap!4101 0))(
  ( (LongMap!4101 (underlying!8431 Cell!16213)) (MutLongMapExt!4100 (__x!22373 Int)) )
))
(declare-datatypes ((Hashable!4017 0))(
  ( (HashableExt!4016 (__x!22374 Int)) )
))
(declare-datatypes ((Cell!16215 0))(
  ( (Cell!16216 (v!34400 MutLongMap!4101)) )
))
(declare-datatypes ((MutableMap!4007 0))(
  ( (MutableMapExt!4006 (__x!22375 Int)) (HashMap!4007 (underlying!8432 Cell!16215) (hashF!6049 Hashable!4017) (_size!8246 (_ BitVec 32)) (defaultValue!4178 Int)) )
))
(declare-datatypes ((CacheUp!2704 0))(
  ( (CacheUp!2705 (cache!4142 MutableMap!4007)) )
))
(declare-fun cacheUp!999 () CacheUp!2704)

(declare-fun e!1803153 () Bool)

(declare-fun inv!45770 (CacheUp!2704) Bool)

(assert (=> start!277096 (and (inv!45770 cacheUp!999) e!1803153)))

(declare-fun b!2845911 () Bool)

(declare-fun tp!912595 () Bool)

(declare-fun inv!45771 (Conc!10468) Bool)

(assert (=> b!2845911 (= e!1803156 (and (inv!45771 (c!459252 prefix!1325)) tp!912595))))

(declare-fun b!2845912 () Bool)

(declare-fun e!1803151 () Bool)

(assert (=> b!2845912 (= e!1803151 e!1803146)))

(declare-fun b!2845913 () Bool)

(declare-fun e!1803144 () Bool)

(declare-fun lt!1012607 () MutLongMap!4101)

(get-info :version)

(assert (=> b!2845913 (= e!1803144 (and e!1803151 ((_ is LongMap!4101) lt!1012607)))))

(assert (=> b!2845913 (= lt!1012607 (v!34400 (underlying!8432 (cache!4142 cacheUp!999))))))

(declare-fun b!2845914 () Bool)

(declare-fun e!1803149 () Bool)

(declare-fun e!1803150 () Bool)

(assert (=> b!2845914 (= e!1803149 e!1803150)))

(declare-fun b!2845915 () Bool)

(declare-fun e!1803152 () Bool)

(declare-fun tp!912584 () Bool)

(declare-fun mapRes!18611 () Bool)

(assert (=> b!2845915 (= e!1803152 (and tp!912584 mapRes!18611))))

(declare-fun condMapEmpty!18610 () Bool)

(declare-fun mapDefault!18611 () List!33881)

(assert (=> b!2845915 (= condMapEmpty!18610 (= (arr!6496 (_values!4382 (v!34399 (underlying!8431 (v!34400 (underlying!8432 (cache!4142 cacheUp!999))))))) ((as const (Array (_ BitVec 32) List!33881)) mapDefault!18611)))))

(declare-fun mapIsEmpty!18611 () Bool)

(assert (=> mapIsEmpty!18611 mapRes!18611))

(declare-fun b!2845916 () Bool)

(declare-fun e!1803157 () Bool)

(assert (=> b!2845916 (= e!1803153 e!1803157)))

(declare-fun b!2845917 () Bool)

(declare-fun e!1803160 () Bool)

(declare-fun tp!912589 () Bool)

(assert (=> b!2845917 (= e!1803160 (and tp!912589 mapRes!18610))))

(declare-fun condMapEmpty!18611 () Bool)

(declare-fun mapDefault!18610 () List!33880)

(assert (=> b!2845917 (= condMapEmpty!18611 (= (arr!6494 (_values!4381 (v!34397 (underlying!8429 (v!34398 (underlying!8430 (cache!4141 cacheDown!1118))))))) ((as const (Array (_ BitVec 32) List!33880)) mapDefault!18610)))))

(declare-fun mapNonEmpty!18610 () Bool)

(declare-fun tp!912588 () Bool)

(declare-fun tp!912594 () Bool)

(assert (=> mapNonEmpty!18610 (= mapRes!18611 (and tp!912588 tp!912594))))

(declare-fun mapRest!18611 () (Array (_ BitVec 32) List!33881))

(declare-fun mapKey!18610 () (_ BitVec 32))

(declare-fun mapValue!18610 () List!33881)

(assert (=> mapNonEmpty!18610 (= (arr!6496 (_values!4382 (v!34399 (underlying!8431 (v!34400 (underlying!8432 (cache!4142 cacheUp!999))))))) (store mapRest!18611 mapKey!18610 mapValue!18610))))

(declare-fun b!2845918 () Bool)

(declare-fun tp_is_empty!14709 () Bool)

(assert (=> b!2845918 (= e!1803147 tp_is_empty!14709)))

(declare-fun b!2845919 () Bool)

(declare-fun tp!912587 () Bool)

(declare-fun tp!912591 () Bool)

(assert (=> b!2845919 (= e!1803147 (and tp!912587 tp!912591))))

(declare-fun e!1803159 () Bool)

(assert (=> b!2845920 (= e!1803145 (and e!1803159 tp!912590))))

(declare-fun tp!912582 () Bool)

(declare-fun tp!912597 () Bool)

(declare-fun array_inv!4650 (array!14576) Bool)

(declare-fun array_inv!4651 (array!14578) Bool)

(assert (=> b!2845921 (= e!1803161 (and tp!912592 tp!912582 tp!912597 (array_inv!4650 (_keys!4401 (v!34399 (underlying!8431 (v!34400 (underlying!8432 (cache!4142 cacheUp!999))))))) (array_inv!4651 (_values!4382 (v!34399 (underlying!8431 (v!34400 (underlying!8432 (cache!4142 cacheUp!999))))))) e!1803152))))

(declare-fun b!2845922 () Bool)

(declare-fun tp!912599 () Bool)

(declare-fun tp!912598 () Bool)

(assert (=> b!2845922 (= e!1803147 (and tp!912599 tp!912598))))

(declare-fun b!2845923 () Bool)

(assert (=> b!2845923 (= e!1803162 (not true))))

(declare-fun lt!1012608 () (InoxSet Context!5002))

(declare-datatypes ((tuple3!5300 0))(
  ( (tuple3!5301 (_1!19928 Bool) (_2!19928 CacheUp!2704) (_3!3120 CacheDown!2824)) )
))
(declare-fun lt!1012610 () tuple3!5300)

(declare-fun prefixMatchZipperSequenceMem!7 ((InoxSet Context!5002) BalanceConc!20574 Int CacheUp!2704 CacheDown!2824) tuple3!5300)

(assert (=> b!2845923 (= lt!1012610 (prefixMatchZipperSequenceMem!7 lt!1012608 prefix!1325 0 cacheUp!999 cacheDown!1118))))

(declare-fun lt!1012612 () List!33878)

(declare-fun prefixMatch!814 (Regex!8473 List!33878) Bool)

(declare-fun prefixMatchZipper!234 ((InoxSet Context!5002) List!33878) Bool)

(assert (=> b!2845923 (= (prefixMatch!814 r!13354 lt!1012612) (prefixMatchZipper!234 lt!1012608 lt!1012612))))

(declare-datatypes ((Unit!47539 0))(
  ( (Unit!47540) )
))
(declare-fun lt!1012611 () Unit!47539)

(declare-datatypes ((List!33882 0))(
  ( (Nil!33758) (Cons!33758 (h!39178 Context!5002) (t!232905 List!33882)) )
))
(declare-fun lt!1012605 () List!33882)

(declare-fun prefixMatchZipperRegexEquiv!230 ((InoxSet Context!5002) List!33882 Regex!8473 List!33878) Unit!47539)

(assert (=> b!2845923 (= lt!1012611 (prefixMatchZipperRegexEquiv!230 lt!1012608 lt!1012605 r!13354 lt!1012612))))

(declare-fun list!12575 (BalanceConc!20574) List!33878)

(assert (=> b!2845923 (= lt!1012612 (list!12575 prefix!1325))))

(declare-fun toList!1909 ((InoxSet Context!5002)) List!33882)

(assert (=> b!2845923 (= lt!1012605 (toList!1909 lt!1012608))))

(declare-fun dropList!1019 (BalanceConc!20574 Int) List!33878)

(declare-fun prefixMatchZipperSequence!755 ((InoxSet Context!5002) BalanceConc!20574 Int) Bool)

(assert (=> b!2845923 (= (prefixMatchZipper!234 lt!1012608 (dropList!1019 prefix!1325 0)) (prefixMatchZipperSequence!755 lt!1012608 prefix!1325 0))))

(declare-fun lt!1012609 () Unit!47539)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!234 ((InoxSet Context!5002) BalanceConc!20574 Int) Unit!47539)

(assert (=> b!2845923 (= lt!1012609 (lemmaprefixMatchZipperSequenceEquivalent!234 lt!1012608 prefix!1325 0))))

(declare-fun focus!304 (Regex!8473) (InoxSet Context!5002))

(assert (=> b!2845923 (= lt!1012608 (focus!304 r!13354))))

(declare-fun b!2845924 () Bool)

(declare-fun e!1803154 () Bool)

(assert (=> b!2845924 (= e!1803154 e!1803149)))

(declare-fun mapNonEmpty!18611 () Bool)

(declare-fun tp!912593 () Bool)

(declare-fun tp!912601 () Bool)

(assert (=> mapNonEmpty!18611 (= mapRes!18610 (and tp!912593 tp!912601))))

(declare-fun mapValue!18611 () List!33880)

(declare-fun mapKey!18611 () (_ BitVec 32))

(declare-fun mapRest!18610 () (Array (_ BitVec 32) List!33880))

(assert (=> mapNonEmpty!18611 (= (arr!6494 (_values!4381 (v!34397 (underlying!8429 (v!34398 (underlying!8430 (cache!4141 cacheDown!1118))))))) (store mapRest!18610 mapKey!18611 mapValue!18611))))

(declare-fun tp!912596 () Bool)

(declare-fun tp!912600 () Bool)

(declare-fun array_inv!4652 (array!14574) Bool)

(assert (=> b!2845925 (= e!1803150 (and tp!912585 tp!912596 tp!912600 (array_inv!4650 (_keys!4400 (v!34397 (underlying!8429 (v!34398 (underlying!8430 (cache!4141 cacheDown!1118))))))) (array_inv!4652 (_values!4381 (v!34397 (underlying!8429 (v!34398 (underlying!8430 (cache!4141 cacheDown!1118))))))) e!1803160))))

(declare-fun b!2845926 () Bool)

(declare-fun lt!1012606 () MutLongMap!4100)

(assert (=> b!2845926 (= e!1803159 (and e!1803154 ((_ is LongMap!4100) lt!1012606)))))

(assert (=> b!2845926 (= lt!1012606 (v!34398 (underlying!8430 (cache!4141 cacheDown!1118))))))

(assert (=> b!2845927 (= e!1803157 (and e!1803144 tp!912583))))

(assert (= (and start!277096 res!1183573) b!2845923))

(assert (= (and start!277096 ((_ is ElementMatch!8473) r!13354)) b!2845918))

(assert (= (and start!277096 ((_ is Concat!13776) r!13354)) b!2845922))

(assert (= (and start!277096 ((_ is Star!8473) r!13354)) b!2845910))

(assert (= (and start!277096 ((_ is Union!8473) r!13354)) b!2845919))

(assert (= start!277096 b!2845911))

(assert (= (and b!2845917 condMapEmpty!18611) mapIsEmpty!18610))

(assert (= (and b!2845917 (not condMapEmpty!18611)) mapNonEmpty!18611))

(assert (= b!2845925 b!2845917))

(assert (= b!2845914 b!2845925))

(assert (= b!2845924 b!2845914))

(assert (= (and b!2845926 ((_ is LongMap!4100) (v!34398 (underlying!8430 (cache!4141 cacheDown!1118))))) b!2845924))

(assert (= b!2845920 b!2845926))

(assert (= (and b!2845908 ((_ is HashMap!4006) (cache!4141 cacheDown!1118))) b!2845920))

(assert (= start!277096 b!2845908))

(assert (= (and b!2845915 condMapEmpty!18610) mapIsEmpty!18611))

(assert (= (and b!2845915 (not condMapEmpty!18610)) mapNonEmpty!18610))

(assert (= b!2845921 b!2845915))

(assert (= b!2845909 b!2845921))

(assert (= b!2845912 b!2845909))

(assert (= (and b!2845913 ((_ is LongMap!4101) (v!34400 (underlying!8432 (cache!4142 cacheUp!999))))) b!2845912))

(assert (= b!2845927 b!2845913))

(assert (= (and b!2845916 ((_ is HashMap!4007) (cache!4142 cacheUp!999))) b!2845927))

(assert (= start!277096 b!2845916))

(declare-fun m!3273765 () Bool)

(assert (=> mapNonEmpty!18610 m!3273765))

(declare-fun m!3273767 () Bool)

(assert (=> b!2845923 m!3273767))

(declare-fun m!3273769 () Bool)

(assert (=> b!2845923 m!3273769))

(declare-fun m!3273771 () Bool)

(assert (=> b!2845923 m!3273771))

(declare-fun m!3273773 () Bool)

(assert (=> b!2845923 m!3273773))

(assert (=> b!2845923 m!3273771))

(declare-fun m!3273775 () Bool)

(assert (=> b!2845923 m!3273775))

(declare-fun m!3273777 () Bool)

(assert (=> b!2845923 m!3273777))

(declare-fun m!3273779 () Bool)

(assert (=> b!2845923 m!3273779))

(declare-fun m!3273781 () Bool)

(assert (=> b!2845923 m!3273781))

(declare-fun m!3273783 () Bool)

(assert (=> b!2845923 m!3273783))

(declare-fun m!3273785 () Bool)

(assert (=> b!2845923 m!3273785))

(declare-fun m!3273787 () Bool)

(assert (=> b!2845923 m!3273787))

(declare-fun m!3273789 () Bool)

(assert (=> b!2845911 m!3273789))

(declare-fun m!3273791 () Bool)

(assert (=> mapNonEmpty!18611 m!3273791))

(declare-fun m!3273793 () Bool)

(assert (=> b!2845921 m!3273793))

(declare-fun m!3273795 () Bool)

(assert (=> b!2845921 m!3273795))

(declare-fun m!3273797 () Bool)

(assert (=> start!277096 m!3273797))

(declare-fun m!3273799 () Bool)

(assert (=> start!277096 m!3273799))

(declare-fun m!3273801 () Bool)

(assert (=> start!277096 m!3273801))

(declare-fun m!3273803 () Bool)

(assert (=> start!277096 m!3273803))

(declare-fun m!3273805 () Bool)

(assert (=> b!2845925 m!3273805))

(declare-fun m!3273807 () Bool)

(assert (=> b!2845925 m!3273807))

(check-sat (not mapNonEmpty!18611) b_and!208915 (not b!2845915) b_and!208913 (not b_next!83375) (not b!2845921) (not b_next!83377) (not b!2845911) b_and!208917 (not b!2845910) (not mapNonEmpty!18610) (not b!2845917) (not b!2845919) (not b_next!83373) (not b!2845922) tp_is_empty!14709 b_and!208911 (not b!2845923) (not b!2845925) (not b_next!83379) (not start!277096))
(check-sat (not b_next!83373) b_and!208915 b_and!208913 (not b_next!83375) (not b_next!83377) b_and!208911 b_and!208917 (not b_next!83379))
