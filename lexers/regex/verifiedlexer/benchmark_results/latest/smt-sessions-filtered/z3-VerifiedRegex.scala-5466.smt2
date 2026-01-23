; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277280 () Bool)

(assert start!277280)

(declare-fun b!2847288 () Bool)

(declare-fun b_free!82717 () Bool)

(declare-fun b_next!83421 () Bool)

(assert (=> b!2847288 (= b_free!82717 (not b_next!83421))))

(declare-fun tp!913640 () Bool)

(declare-fun b_and!208959 () Bool)

(assert (=> b!2847288 (= tp!913640 b_and!208959)))

(declare-fun b!2847285 () Bool)

(declare-fun b_free!82719 () Bool)

(declare-fun b_next!83423 () Bool)

(assert (=> b!2847285 (= b_free!82719 (not b_next!83423))))

(declare-fun tp!913630 () Bool)

(declare-fun b_and!208961 () Bool)

(assert (=> b!2847285 (= tp!913630 b_and!208961)))

(declare-fun b!2847284 () Bool)

(declare-fun b_free!82721 () Bool)

(declare-fun b_next!83425 () Bool)

(assert (=> b!2847284 (= b_free!82721 (not b_next!83425))))

(declare-fun tp!913643 () Bool)

(declare-fun b_and!208963 () Bool)

(assert (=> b!2847284 (= tp!913643 b_and!208963)))

(declare-fun b!2847296 () Bool)

(declare-fun b_free!82723 () Bool)

(declare-fun b_next!83427 () Bool)

(assert (=> b!2847296 (= b_free!82723 (not b_next!83427))))

(declare-fun tp!913639 () Bool)

(declare-fun b_and!208965 () Bool)

(assert (=> b!2847296 (= tp!913639 b_and!208965)))

(declare-datatypes ((C!17156 0))(
  ( (C!17157 (val!10612 Int)) )
))
(declare-datatypes ((Regex!8487 0))(
  ( (ElementMatch!8487 (c!459423 C!17156)) (Concat!13790 (regOne!17486 Regex!8487) (regTwo!17486 Regex!8487)) (EmptyExpr!8487) (Star!8487 (reg!8816 Regex!8487)) (EmptyLang!8487) (Union!8487 (regOne!17487 Regex!8487) (regTwo!17487 Regex!8487)) )
))
(declare-datatypes ((List!33921 0))(
  ( (Nil!33797) (Cons!33797 (h!39217 Regex!8487) (t!232946 List!33921)) )
))
(declare-datatypes ((Context!5030 0))(
  ( (Context!5031 (exprs!3015 List!33921)) )
))
(declare-datatypes ((tuple3!5318 0))(
  ( (tuple3!5319 (_1!19947 Regex!8487) (_2!19947 Context!5030) (_3!3129 C!17156)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33636 0))(
  ( (tuple2!33637 (_1!19948 tuple3!5318) (_2!19948 (InoxSet Context!5030))) )
))
(declare-datatypes ((List!33922 0))(
  ( (Nil!33798) (Cons!33798 (h!39218 tuple2!33636) (t!232947 List!33922)) )
))
(declare-datatypes ((array!14607 0))(
  ( (array!14608 (arr!6509 (Array (_ BitVec 32) List!33922)) (size!26244 (_ BitVec 32))) )
))
(declare-datatypes ((array!14609 0))(
  ( (array!14610 (arr!6510 (Array (_ BitVec 32) (_ BitVec 64))) (size!26245 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8218 0))(
  ( (LongMapFixedSize!8219 (defaultEntry!4494 Int) (mask!10144 (_ BitVec 32)) (extraKeys!4358 (_ BitVec 32)) (zeroValue!4368 List!33922) (minValue!4368 List!33922) (_size!8261 (_ BitVec 32)) (_keys!4409 array!14609) (_values!4390 array!14607) (_vacant!4170 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16245 0))(
  ( (Cell!16246 (v!34418 LongMapFixedSize!8218)) )
))
(declare-datatypes ((MutLongMap!4109 0))(
  ( (LongMap!4109 (underlying!8447 Cell!16245)) (MutLongMapExt!4108 (__x!22397 Int)) )
))
(declare-datatypes ((Cell!16247 0))(
  ( (Cell!16248 (v!34419 MutLongMap!4109)) )
))
(declare-datatypes ((Hashable!4025 0))(
  ( (HashableExt!4024 (__x!22398 Int)) )
))
(declare-datatypes ((MutableMap!4015 0))(
  ( (MutableMapExt!4014 (__x!22399 Int)) (HashMap!4015 (underlying!8448 Cell!16247) (hashF!6057 Hashable!4025) (_size!8262 (_ BitVec 32)) (defaultValue!4186 Int)) )
))
(declare-datatypes ((CacheDown!2834 0))(
  ( (CacheDown!2835 (cache!4150 MutableMap!4015)) )
))
(declare-fun cacheDown!791 () CacheDown!2834)

(declare-fun e!1804148 () Bool)

(declare-fun tp!913631 () Bool)

(declare-fun e!1804163 () Bool)

(declare-fun tp!913634 () Bool)

(declare-fun array_inv!4659 (array!14609) Bool)

(declare-fun array_inv!4660 (array!14607) Bool)

(assert (=> b!2847284 (= e!1804163 (and tp!913643 tp!913634 tp!913631 (array_inv!4659 (_keys!4409 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))) (array_inv!4660 (_values!4390 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))) e!1804148))))

(declare-fun setIsEmpty!24973 () Bool)

(declare-fun setRes!24973 () Bool)

(assert (=> setIsEmpty!24973 setRes!24973))

(declare-fun e!1804149 () Bool)

(declare-fun e!1804158 () Bool)

(assert (=> b!2847285 (= e!1804149 (and e!1804158 tp!913630))))

(declare-fun b!2847287 () Bool)

(declare-fun e!1804162 () Bool)

(assert (=> b!2847287 (= e!1804162 e!1804149)))

(declare-fun e!1804155 () Bool)

(declare-fun e!1804159 () Bool)

(assert (=> b!2847288 (= e!1804155 (and e!1804159 tp!913640))))

(declare-fun mapNonEmpty!18654 () Bool)

(declare-fun mapRes!18654 () Bool)

(declare-fun tp!913638 () Bool)

(declare-fun tp!913641 () Bool)

(assert (=> mapNonEmpty!18654 (= mapRes!18654 (and tp!913638 tp!913641))))

(declare-fun mapKey!18654 () (_ BitVec 32))

(declare-fun mapRest!18655 () (Array (_ BitVec 32) List!33922))

(declare-fun mapValue!18654 () List!33922)

(assert (=> mapNonEmpty!18654 (= (arr!6509 (_values!4390 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))) (store mapRest!18655 mapKey!18654 mapValue!18654))))

(declare-fun b!2847289 () Bool)

(declare-fun e!1804153 () Bool)

(declare-fun tp!913635 () Bool)

(declare-fun mapRes!18655 () Bool)

(assert (=> b!2847289 (= e!1804153 (and tp!913635 mapRes!18655))))

(declare-fun condMapEmpty!18654 () Bool)

(declare-datatypes ((tuple2!33638 0))(
  ( (tuple2!33639 (_1!19949 Context!5030) (_2!19949 C!17156)) )
))
(declare-datatypes ((tuple2!33640 0))(
  ( (tuple2!33641 (_1!19950 tuple2!33638) (_2!19950 (InoxSet Context!5030))) )
))
(declare-datatypes ((Hashable!4026 0))(
  ( (HashableExt!4025 (__x!22400 Int)) )
))
(declare-datatypes ((List!33923 0))(
  ( (Nil!33799) (Cons!33799 (h!39219 tuple2!33640) (t!232948 List!33923)) )
))
(declare-datatypes ((array!14611 0))(
  ( (array!14612 (arr!6511 (Array (_ BitVec 32) List!33923)) (size!26246 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8220 0))(
  ( (LongMapFixedSize!8221 (defaultEntry!4495 Int) (mask!10145 (_ BitVec 32)) (extraKeys!4359 (_ BitVec 32)) (zeroValue!4369 List!33923) (minValue!4369 List!33923) (_size!8263 (_ BitVec 32)) (_keys!4410 array!14609) (_values!4391 array!14611) (_vacant!4171 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16249 0))(
  ( (Cell!16250 (v!34420 LongMapFixedSize!8220)) )
))
(declare-datatypes ((MutLongMap!4110 0))(
  ( (LongMap!4110 (underlying!8449 Cell!16249)) (MutLongMapExt!4109 (__x!22401 Int)) )
))
(declare-datatypes ((Cell!16251 0))(
  ( (Cell!16252 (v!34421 MutLongMap!4110)) )
))
(declare-datatypes ((MutableMap!4016 0))(
  ( (MutableMapExt!4015 (__x!22402 Int)) (HashMap!4016 (underlying!8450 Cell!16251) (hashF!6058 Hashable!4026) (_size!8264 (_ BitVec 32)) (defaultValue!4187 Int)) )
))
(declare-datatypes ((CacheUp!2712 0))(
  ( (CacheUp!2713 (cache!4151 MutableMap!4016)) )
))
(declare-fun cacheUp!778 () CacheUp!2712)

(declare-fun mapDefault!18654 () List!33923)

(assert (=> b!2847289 (= condMapEmpty!18654 (= (arr!6511 (_values!4391 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))) ((as const (Array (_ BitVec 32) List!33923)) mapDefault!18654)))))

(declare-fun b!2847290 () Bool)

(declare-fun e!1804147 () Bool)

(declare-fun e!1804164 () Bool)

(assert (=> b!2847290 (= e!1804147 e!1804164)))

(declare-fun res!1183823 () Bool)

(assert (=> b!2847290 (=> (not res!1183823) (not e!1804164))))

(declare-fun i!1868 () Int)

(declare-fun lt!1012922 () Int)

(assert (=> b!2847290 (= res!1183823 (and (<= i!1868 lt!1012922) (not (= i!1868 lt!1012922))))))

(declare-datatypes ((List!33924 0))(
  ( (Nil!33800) (Cons!33800 (h!39220 C!17156) (t!232949 List!33924)) )
))
(declare-datatypes ((IArray!20965 0))(
  ( (IArray!20966 (innerList!10540 List!33924)) )
))
(declare-datatypes ((Conc!10480 0))(
  ( (Node!10480 (left!25442 Conc!10480) (right!25772 Conc!10480) (csize!21190 Int) (cheight!10691 Int)) (Leaf!15947 (xs!13598 IArray!20965) (csize!21191 Int)) (Empty!10480) )
))
(declare-datatypes ((BalanceConc!20598 0))(
  ( (BalanceConc!20599 (c!459424 Conc!10480)) )
))
(declare-fun input!3762 () BalanceConc!20598)

(declare-fun size!26247 (BalanceConc!20598) Int)

(assert (=> b!2847290 (= lt!1012922 (size!26247 input!3762))))

(declare-fun z!632 () (InoxSet Context!5030))

(declare-fun b!2847291 () Bool)

(declare-datatypes ((tuple3!5320 0))(
  ( (tuple3!5321 (_1!19951 (InoxSet Context!5030)) (_2!19951 CacheUp!2712) (_3!3130 CacheDown!2834)) )
))
(declare-fun lt!1012919 () tuple3!5320)

(declare-datatypes ((tuple3!5322 0))(
  ( (tuple3!5323 (_1!19952 Bool) (_2!19952 CacheUp!2712) (_3!3131 CacheDown!2834)) )
))
(declare-fun prefixMatchZipperSequenceMem!10 ((InoxSet Context!5030) BalanceConc!20598 Int CacheUp!2712 CacheDown!2834) tuple3!5322)

(declare-fun prefixMatchZipperSequence!763 ((InoxSet Context!5030) BalanceConc!20598 Int) Bool)

(assert (=> b!2847291 (= e!1804164 (not (= (_1!19952 (prefixMatchZipperSequenceMem!10 (_1!19951 lt!1012919) input!3762 (+ 1 i!1868) (_2!19951 lt!1012919) (_3!3130 lt!1012919))) (prefixMatchZipperSequence!763 z!632 input!3762 i!1868))))))

(declare-fun derivationStepZipperMem!126 ((InoxSet Context!5030) C!17156 CacheUp!2712 CacheDown!2834) tuple3!5320)

(declare-fun apply!7871 (BalanceConc!20598 Int) C!17156)

(assert (=> b!2847291 (= lt!1012919 (derivationStepZipperMem!126 z!632 (apply!7871 input!3762 i!1868) cacheUp!778 cacheDown!791))))

(declare-fun b!2847292 () Bool)

(declare-fun e!1804154 () Bool)

(declare-fun tp!913629 () Bool)

(assert (=> b!2847292 (= e!1804154 tp!913629)))

(declare-fun b!2847293 () Bool)

(declare-fun e!1804152 () Bool)

(declare-fun lt!1012921 () MutLongMap!4109)

(get-info :version)

(assert (=> b!2847293 (= e!1804158 (and e!1804152 ((_ is LongMap!4109) lt!1012921)))))

(assert (=> b!2847293 (= lt!1012921 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))

(declare-fun b!2847294 () Bool)

(declare-fun e!1804157 () Bool)

(declare-fun lt!1012920 () MutLongMap!4110)

(assert (=> b!2847294 (= e!1804159 (and e!1804157 ((_ is LongMap!4110) lt!1012920)))))

(assert (=> b!2847294 (= lt!1012920 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))

(declare-fun b!2847295 () Bool)

(declare-fun e!1804165 () Bool)

(declare-fun e!1804150 () Bool)

(assert (=> b!2847295 (= e!1804165 e!1804150)))

(declare-fun res!1183822 () Bool)

(assert (=> start!277280 (=> (not res!1183822) (not e!1804147))))

(assert (=> start!277280 (= res!1183822 (>= i!1868 0))))

(assert (=> start!277280 e!1804147))

(declare-fun e!1804156 () Bool)

(declare-fun inv!45835 (CacheUp!2712) Bool)

(assert (=> start!277280 (and (inv!45835 cacheUp!778) e!1804156)))

(declare-fun inv!45836 (CacheDown!2834) Bool)

(assert (=> start!277280 (and (inv!45836 cacheDown!791) e!1804162)))

(declare-fun condSetEmpty!24973 () Bool)

(assert (=> start!277280 (= condSetEmpty!24973 (= z!632 ((as const (Array Context!5030 Bool)) false)))))

(assert (=> start!277280 setRes!24973))

(assert (=> start!277280 true))

(declare-fun e!1804160 () Bool)

(declare-fun inv!45837 (BalanceConc!20598) Bool)

(assert (=> start!277280 (and (inv!45837 input!3762) e!1804160)))

(declare-fun b!2847286 () Bool)

(declare-fun e!1804146 () Bool)

(assert (=> b!2847286 (= e!1804146 e!1804163)))

(declare-fun mapIsEmpty!18654 () Bool)

(assert (=> mapIsEmpty!18654 mapRes!18655))

(declare-fun tp!913636 () Bool)

(declare-fun tp!913644 () Bool)

(declare-fun array_inv!4661 (array!14611) Bool)

(assert (=> b!2847296 (= e!1804150 (and tp!913639 tp!913636 tp!913644 (array_inv!4659 (_keys!4410 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))) (array_inv!4661 (_values!4391 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))) e!1804153))))

(declare-fun b!2847297 () Bool)

(declare-fun tp!913633 () Bool)

(assert (=> b!2847297 (= e!1804148 (and tp!913633 mapRes!18654))))

(declare-fun condMapEmpty!18655 () Bool)

(declare-fun mapDefault!18655 () List!33922)

(assert (=> b!2847297 (= condMapEmpty!18655 (= (arr!6509 (_values!4390 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))) ((as const (Array (_ BitVec 32) List!33922)) mapDefault!18655)))))

(declare-fun mapIsEmpty!18655 () Bool)

(assert (=> mapIsEmpty!18655 mapRes!18654))

(declare-fun b!2847298 () Bool)

(declare-fun tp!913632 () Bool)

(declare-fun inv!45838 (Conc!10480) Bool)

(assert (=> b!2847298 (= e!1804160 (and (inv!45838 (c!459424 input!3762)) tp!913632))))

(declare-fun b!2847299 () Bool)

(assert (=> b!2847299 (= e!1804152 e!1804146)))

(declare-fun b!2847300 () Bool)

(assert (=> b!2847300 (= e!1804157 e!1804165)))

(declare-fun mapNonEmpty!18655 () Bool)

(declare-fun tp!913637 () Bool)

(declare-fun tp!913642 () Bool)

(assert (=> mapNonEmpty!18655 (= mapRes!18655 (and tp!913637 tp!913642))))

(declare-fun mapValue!18655 () List!33923)

(declare-fun mapKey!18655 () (_ BitVec 32))

(declare-fun mapRest!18654 () (Array (_ BitVec 32) List!33923))

(assert (=> mapNonEmpty!18655 (= (arr!6511 (_values!4391 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))) (store mapRest!18654 mapKey!18655 mapValue!18655))))

(declare-fun b!2847301 () Bool)

(assert (=> b!2847301 (= e!1804156 e!1804155)))

(declare-fun tp!913645 () Bool)

(declare-fun setElem!24973 () Context!5030)

(declare-fun setNonEmpty!24973 () Bool)

(declare-fun inv!45839 (Context!5030) Bool)

(assert (=> setNonEmpty!24973 (= setRes!24973 (and tp!913645 (inv!45839 setElem!24973) e!1804154))))

(declare-fun setRest!24973 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24973 (= z!632 ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24973 true) setRest!24973))))

(assert (= (and start!277280 res!1183822) b!2847290))

(assert (= (and b!2847290 res!1183823) b!2847291))

(assert (= (and b!2847289 condMapEmpty!18654) mapIsEmpty!18654))

(assert (= (and b!2847289 (not condMapEmpty!18654)) mapNonEmpty!18655))

(assert (= b!2847296 b!2847289))

(assert (= b!2847295 b!2847296))

(assert (= b!2847300 b!2847295))

(assert (= (and b!2847294 ((_ is LongMap!4110) (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))) b!2847300))

(assert (= b!2847288 b!2847294))

(assert (= (and b!2847301 ((_ is HashMap!4016) (cache!4151 cacheUp!778))) b!2847288))

(assert (= start!277280 b!2847301))

(assert (= (and b!2847297 condMapEmpty!18655) mapIsEmpty!18655))

(assert (= (and b!2847297 (not condMapEmpty!18655)) mapNonEmpty!18654))

(assert (= b!2847284 b!2847297))

(assert (= b!2847286 b!2847284))

(assert (= b!2847299 b!2847286))

(assert (= (and b!2847293 ((_ is LongMap!4109) (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))) b!2847299))

(assert (= b!2847285 b!2847293))

(assert (= (and b!2847287 ((_ is HashMap!4015) (cache!4150 cacheDown!791))) b!2847285))

(assert (= start!277280 b!2847287))

(assert (= (and start!277280 condSetEmpty!24973) setIsEmpty!24973))

(assert (= (and start!277280 (not condSetEmpty!24973)) setNonEmpty!24973))

(assert (= setNonEmpty!24973 b!2847292))

(assert (= start!277280 b!2847298))

(declare-fun m!3274805 () Bool)

(assert (=> b!2847291 m!3274805))

(declare-fun m!3274807 () Bool)

(assert (=> b!2847291 m!3274807))

(declare-fun m!3274809 () Bool)

(assert (=> b!2847291 m!3274809))

(assert (=> b!2847291 m!3274809))

(declare-fun m!3274811 () Bool)

(assert (=> b!2847291 m!3274811))

(declare-fun m!3274813 () Bool)

(assert (=> b!2847290 m!3274813))

(declare-fun m!3274815 () Bool)

(assert (=> b!2847284 m!3274815))

(declare-fun m!3274817 () Bool)

(assert (=> b!2847284 m!3274817))

(declare-fun m!3274819 () Bool)

(assert (=> b!2847296 m!3274819))

(declare-fun m!3274821 () Bool)

(assert (=> b!2847296 m!3274821))

(declare-fun m!3274823 () Bool)

(assert (=> mapNonEmpty!18654 m!3274823))

(declare-fun m!3274825 () Bool)

(assert (=> mapNonEmpty!18655 m!3274825))

(declare-fun m!3274827 () Bool)

(assert (=> start!277280 m!3274827))

(declare-fun m!3274829 () Bool)

(assert (=> start!277280 m!3274829))

(declare-fun m!3274831 () Bool)

(assert (=> start!277280 m!3274831))

(declare-fun m!3274833 () Bool)

(assert (=> b!2847298 m!3274833))

(declare-fun m!3274835 () Bool)

(assert (=> setNonEmpty!24973 m!3274835))

(check-sat (not start!277280) b_and!208961 (not b!2847298) b_and!208965 (not b!2847291) (not b!2847290) (not b_next!83423) (not mapNonEmpty!18655) (not b!2847292) (not b_next!83427) (not b!2847296) (not setNonEmpty!24973) (not b!2847289) b_and!208963 (not b!2847297) (not b_next!83425) (not b_next!83421) (not b!2847284) b_and!208959 (not mapNonEmpty!18654))
(check-sat b_and!208961 b_and!208965 (not b_next!83423) (not b_next!83427) b_and!208963 (not b_next!83425) (not b_next!83421) b_and!208959)
(get-model)

(declare-fun d!825485 () Bool)

(declare-fun c!459427 () Bool)

(assert (=> d!825485 (= c!459427 ((_ is Node!10480) (c!459424 input!3762)))))

(declare-fun e!1804170 () Bool)

(assert (=> d!825485 (= (inv!45838 (c!459424 input!3762)) e!1804170)))

(declare-fun b!2847308 () Bool)

(declare-fun inv!45840 (Conc!10480) Bool)

(assert (=> b!2847308 (= e!1804170 (inv!45840 (c!459424 input!3762)))))

(declare-fun b!2847309 () Bool)

(declare-fun e!1804171 () Bool)

(assert (=> b!2847309 (= e!1804170 e!1804171)))

(declare-fun res!1183826 () Bool)

(assert (=> b!2847309 (= res!1183826 (not ((_ is Leaf!15947) (c!459424 input!3762))))))

(assert (=> b!2847309 (=> res!1183826 e!1804171)))

(declare-fun b!2847310 () Bool)

(declare-fun inv!45841 (Conc!10480) Bool)

(assert (=> b!2847310 (= e!1804171 (inv!45841 (c!459424 input!3762)))))

(assert (= (and d!825485 c!459427) b!2847308))

(assert (= (and d!825485 (not c!459427)) b!2847309))

(assert (= (and b!2847309 (not res!1183826)) b!2847310))

(declare-fun m!3274837 () Bool)

(assert (=> b!2847308 m!3274837))

(declare-fun m!3274839 () Bool)

(assert (=> b!2847310 m!3274839))

(assert (=> b!2847298 d!825485))

(declare-fun d!825487 () Bool)

(declare-fun lambda!104527 () Int)

(declare-fun forall!6937 (List!33921 Int) Bool)

(assert (=> d!825487 (= (inv!45839 setElem!24973) (forall!6937 (exprs!3015 setElem!24973) lambda!104527))))

(declare-fun bs!519971 () Bool)

(assert (= bs!519971 d!825487))

(declare-fun m!3274841 () Bool)

(assert (=> bs!519971 m!3274841))

(assert (=> setNonEmpty!24973 d!825487))

(declare-fun d!825489 () Bool)

(assert (=> d!825489 (= (array_inv!4659 (_keys!4409 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))) (bvsge (size!26245 (_keys!4409 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))) #b00000000000000000000000000000000))))

(assert (=> b!2847284 d!825489))

(declare-fun d!825491 () Bool)

(assert (=> d!825491 (= (array_inv!4660 (_values!4390 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))) (bvsge (size!26244 (_values!4390 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791))))))) #b00000000000000000000000000000000))))

(assert (=> b!2847284 d!825491))

(declare-fun d!825493 () Bool)

(assert (=> d!825493 (= (array_inv!4659 (_keys!4410 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))) (bvsge (size!26245 (_keys!4410 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))) #b00000000000000000000000000000000))))

(assert (=> b!2847296 d!825493))

(declare-fun d!825495 () Bool)

(assert (=> d!825495 (= (array_inv!4661 (_values!4391 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))) (bvsge (size!26246 (_values!4391 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778))))))) #b00000000000000000000000000000000))))

(assert (=> b!2847296 d!825495))

(declare-fun d!825497 () Bool)

(declare-fun lt!1012931 () tuple3!5322)

(assert (=> d!825497 (= (_1!19952 lt!1012931) (prefixMatchZipperSequence!763 (_1!19951 lt!1012919) input!3762 (+ 1 i!1868)))))

(declare-fun e!1804177 () tuple3!5322)

(assert (=> d!825497 (= lt!1012931 e!1804177)))

(declare-fun c!459430 () Bool)

(assert (=> d!825497 (= c!459430 (= (+ 1 i!1868) (size!26247 input!3762)))))

(declare-fun e!1804176 () Bool)

(assert (=> d!825497 e!1804176))

(declare-fun res!1183829 () Bool)

(assert (=> d!825497 (=> (not res!1183829) (not e!1804176))))

(assert (=> d!825497 (= res!1183829 (>= (+ 1 i!1868) 0))))

(assert (=> d!825497 (= (prefixMatchZipperSequenceMem!10 (_1!19951 lt!1012919) input!3762 (+ 1 i!1868) (_2!19951 lt!1012919) (_3!3130 lt!1012919)) lt!1012931)))

(declare-fun b!2847317 () Bool)

(assert (=> b!2847317 (= e!1804176 (<= (+ 1 i!1868) (size!26247 input!3762)))))

(declare-fun b!2847318 () Bool)

(declare-fun lostCauseZipper!527 ((InoxSet Context!5030)) Bool)

(assert (=> b!2847318 (= e!1804177 (tuple3!5323 (not (lostCauseZipper!527 (_1!19951 lt!1012919))) (_2!19951 lt!1012919) (_3!3130 lt!1012919)))))

(declare-fun b!2847319 () Bool)

(declare-fun lt!1012930 () tuple3!5322)

(assert (=> b!2847319 (= e!1804177 (tuple3!5323 (_1!19952 lt!1012930) (_2!19952 lt!1012930) (_3!3131 lt!1012930)))))

(declare-fun lt!1012929 () tuple3!5320)

(assert (=> b!2847319 (= lt!1012929 (derivationStepZipperMem!126 (_1!19951 lt!1012919) (apply!7871 input!3762 (+ 1 i!1868)) (_2!19951 lt!1012919) (_3!3130 lt!1012919)))))

(assert (=> b!2847319 (= lt!1012930 (prefixMatchZipperSequenceMem!10 (_1!19951 lt!1012929) input!3762 (+ 1 i!1868 1) (_2!19951 lt!1012929) (_3!3130 lt!1012929)))))

(assert (= (and d!825497 res!1183829) b!2847317))

(assert (= (and d!825497 c!459430) b!2847318))

(assert (= (and d!825497 (not c!459430)) b!2847319))

(declare-fun m!3274843 () Bool)

(assert (=> d!825497 m!3274843))

(assert (=> d!825497 m!3274813))

(assert (=> b!2847317 m!3274813))

(declare-fun m!3274845 () Bool)

(assert (=> b!2847318 m!3274845))

(declare-fun m!3274847 () Bool)

(assert (=> b!2847319 m!3274847))

(assert (=> b!2847319 m!3274847))

(declare-fun m!3274849 () Bool)

(assert (=> b!2847319 m!3274849))

(declare-fun m!3274851 () Bool)

(assert (=> b!2847319 m!3274851))

(assert (=> b!2847291 d!825497))

(declare-fun d!825499 () Bool)

(declare-fun c!459433 () Bool)

(assert (=> d!825499 (= c!459433 (= i!1868 (size!26247 input!3762)))))

(declare-fun e!1804180 () Bool)

(assert (=> d!825499 (= (prefixMatchZipperSequence!763 z!632 input!3762 i!1868) e!1804180)))

(declare-fun b!2847324 () Bool)

(assert (=> b!2847324 (= e!1804180 (not (lostCauseZipper!527 z!632)))))

(declare-fun b!2847325 () Bool)

(declare-fun derivationStepZipper!411 ((InoxSet Context!5030) C!17156) (InoxSet Context!5030))

(assert (=> b!2847325 (= e!1804180 (prefixMatchZipperSequence!763 (derivationStepZipper!411 z!632 (apply!7871 input!3762 i!1868)) input!3762 (+ i!1868 1)))))

(assert (= (and d!825499 c!459433) b!2847324))

(assert (= (and d!825499 (not c!459433)) b!2847325))

(assert (=> d!825499 m!3274813))

(declare-fun m!3274853 () Bool)

(assert (=> b!2847324 m!3274853))

(assert (=> b!2847325 m!3274809))

(assert (=> b!2847325 m!3274809))

(declare-fun m!3274855 () Bool)

(assert (=> b!2847325 m!3274855))

(assert (=> b!2847325 m!3274855))

(declare-fun m!3274857 () Bool)

(assert (=> b!2847325 m!3274857))

(assert (=> b!2847291 d!825499))

(declare-fun d!825501 () Bool)

(declare-fun e!1804183 () Bool)

(assert (=> d!825501 e!1804183))

(declare-fun res!1183834 () Bool)

(assert (=> d!825501 (=> (not res!1183834) (not e!1804183))))

(declare-fun lt!1012934 () tuple3!5320)

(assert (=> d!825501 (= res!1183834 (= (_1!19951 lt!1012934) (derivationStepZipper!411 z!632 (apply!7871 input!3762 i!1868))))))

(declare-fun choose!16758 ((InoxSet Context!5030) C!17156 CacheUp!2712 CacheDown!2834) tuple3!5320)

(assert (=> d!825501 (= lt!1012934 (choose!16758 z!632 (apply!7871 input!3762 i!1868) cacheUp!778 cacheDown!791))))

(assert (=> d!825501 (= (derivationStepZipperMem!126 z!632 (apply!7871 input!3762 i!1868) cacheUp!778 cacheDown!791) lt!1012934)))

(declare-fun b!2847330 () Bool)

(declare-fun res!1183835 () Bool)

(assert (=> b!2847330 (=> (not res!1183835) (not e!1804183))))

(declare-fun valid!3196 (CacheUp!2712) Bool)

(assert (=> b!2847330 (= res!1183835 (valid!3196 (_2!19951 lt!1012934)))))

(declare-fun b!2847331 () Bool)

(declare-fun valid!3197 (CacheDown!2834) Bool)

(assert (=> b!2847331 (= e!1804183 (valid!3197 (_3!3130 lt!1012934)))))

(assert (= (and d!825501 res!1183834) b!2847330))

(assert (= (and b!2847330 res!1183835) b!2847331))

(assert (=> d!825501 m!3274809))

(assert (=> d!825501 m!3274855))

(assert (=> d!825501 m!3274809))

(declare-fun m!3274859 () Bool)

(assert (=> d!825501 m!3274859))

(declare-fun m!3274861 () Bool)

(assert (=> b!2847330 m!3274861))

(declare-fun m!3274863 () Bool)

(assert (=> b!2847331 m!3274863))

(assert (=> b!2847291 d!825501))

(declare-fun d!825503 () Bool)

(declare-fun lt!1012937 () C!17156)

(declare-fun apply!7872 (List!33924 Int) C!17156)

(declare-fun list!12586 (BalanceConc!20598) List!33924)

(assert (=> d!825503 (= lt!1012937 (apply!7872 (list!12586 input!3762) i!1868))))

(declare-fun apply!7873 (Conc!10480 Int) C!17156)

(assert (=> d!825503 (= lt!1012937 (apply!7873 (c!459424 input!3762) i!1868))))

(declare-fun e!1804186 () Bool)

(assert (=> d!825503 e!1804186))

(declare-fun res!1183838 () Bool)

(assert (=> d!825503 (=> (not res!1183838) (not e!1804186))))

(assert (=> d!825503 (= res!1183838 (<= 0 i!1868))))

(assert (=> d!825503 (= (apply!7871 input!3762 i!1868) lt!1012937)))

(declare-fun b!2847334 () Bool)

(assert (=> b!2847334 (= e!1804186 (< i!1868 (size!26247 input!3762)))))

(assert (= (and d!825503 res!1183838) b!2847334))

(declare-fun m!3274865 () Bool)

(assert (=> d!825503 m!3274865))

(assert (=> d!825503 m!3274865))

(declare-fun m!3274867 () Bool)

(assert (=> d!825503 m!3274867))

(declare-fun m!3274869 () Bool)

(assert (=> d!825503 m!3274869))

(assert (=> b!2847334 m!3274813))

(assert (=> b!2847291 d!825503))

(declare-fun d!825505 () Bool)

(declare-fun res!1183841 () Bool)

(declare-fun e!1804189 () Bool)

(assert (=> d!825505 (=> (not res!1183841) (not e!1804189))))

(assert (=> d!825505 (= res!1183841 ((_ is HashMap!4016) (cache!4151 cacheUp!778)))))

(assert (=> d!825505 (= (inv!45835 cacheUp!778) e!1804189)))

(declare-fun b!2847337 () Bool)

(declare-fun validCacheMapUp!408 (MutableMap!4016) Bool)

(assert (=> b!2847337 (= e!1804189 (validCacheMapUp!408 (cache!4151 cacheUp!778)))))

(assert (= (and d!825505 res!1183841) b!2847337))

(declare-fun m!3274871 () Bool)

(assert (=> b!2847337 m!3274871))

(assert (=> start!277280 d!825505))

(declare-fun d!825507 () Bool)

(declare-fun res!1183844 () Bool)

(declare-fun e!1804192 () Bool)

(assert (=> d!825507 (=> (not res!1183844) (not e!1804192))))

(assert (=> d!825507 (= res!1183844 ((_ is HashMap!4015) (cache!4150 cacheDown!791)))))

(assert (=> d!825507 (= (inv!45836 cacheDown!791) e!1804192)))

(declare-fun b!2847340 () Bool)

(declare-fun validCacheMapDown!439 (MutableMap!4015) Bool)

(assert (=> b!2847340 (= e!1804192 (validCacheMapDown!439 (cache!4150 cacheDown!791)))))

(assert (= (and d!825507 res!1183844) b!2847340))

(declare-fun m!3274873 () Bool)

(assert (=> b!2847340 m!3274873))

(assert (=> start!277280 d!825507))

(declare-fun d!825509 () Bool)

(declare-fun isBalanced!3161 (Conc!10480) Bool)

(assert (=> d!825509 (= (inv!45837 input!3762) (isBalanced!3161 (c!459424 input!3762)))))

(declare-fun bs!519972 () Bool)

(assert (= bs!519972 d!825509))

(declare-fun m!3274875 () Bool)

(assert (=> bs!519972 m!3274875))

(assert (=> start!277280 d!825509))

(declare-fun d!825511 () Bool)

(declare-fun lt!1012940 () Int)

(declare-fun size!26248 (List!33924) Int)

(assert (=> d!825511 (= lt!1012940 (size!26248 (list!12586 input!3762)))))

(declare-fun size!26249 (Conc!10480) Int)

(assert (=> d!825511 (= lt!1012940 (size!26249 (c!459424 input!3762)))))

(assert (=> d!825511 (= (size!26247 input!3762) lt!1012940)))

(declare-fun bs!519973 () Bool)

(assert (= bs!519973 d!825511))

(assert (=> bs!519973 m!3274865))

(assert (=> bs!519973 m!3274865))

(declare-fun m!3274877 () Bool)

(assert (=> bs!519973 m!3274877))

(declare-fun m!3274879 () Bool)

(assert (=> bs!519973 m!3274879))

(assert (=> b!2847290 d!825511))

(declare-fun b!2847349 () Bool)

(declare-fun e!1804197 () Bool)

(declare-fun tp!913654 () Bool)

(declare-fun tp!913652 () Bool)

(assert (=> b!2847349 (= e!1804197 (and (inv!45838 (left!25442 (c!459424 input!3762))) tp!913652 (inv!45838 (right!25772 (c!459424 input!3762))) tp!913654))))

(declare-fun b!2847351 () Bool)

(declare-fun e!1804198 () Bool)

(declare-fun tp!913653 () Bool)

(assert (=> b!2847351 (= e!1804198 tp!913653)))

(declare-fun b!2847350 () Bool)

(declare-fun inv!45842 (IArray!20965) Bool)

(assert (=> b!2847350 (= e!1804197 (and (inv!45842 (xs!13598 (c!459424 input!3762))) e!1804198))))

(assert (=> b!2847298 (= tp!913632 (and (inv!45838 (c!459424 input!3762)) e!1804197))))

(assert (= (and b!2847298 ((_ is Node!10480) (c!459424 input!3762))) b!2847349))

(assert (= b!2847350 b!2847351))

(assert (= (and b!2847298 ((_ is Leaf!15947) (c!459424 input!3762))) b!2847350))

(declare-fun m!3274881 () Bool)

(assert (=> b!2847349 m!3274881))

(declare-fun m!3274883 () Bool)

(assert (=> b!2847349 m!3274883))

(declare-fun m!3274885 () Bool)

(assert (=> b!2847350 m!3274885))

(assert (=> b!2847298 m!3274833))

(declare-fun setIsEmpty!24976 () Bool)

(declare-fun setRes!24976 () Bool)

(assert (=> setIsEmpty!24976 setRes!24976))

(declare-fun e!1804205 () Bool)

(declare-fun tp!913665 () Bool)

(declare-fun setNonEmpty!24976 () Bool)

(declare-fun setElem!24976 () Context!5030)

(assert (=> setNonEmpty!24976 (= setRes!24976 (and tp!913665 (inv!45839 setElem!24976) e!1804205))))

(declare-fun setRest!24976 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24976 (= (_2!19950 (h!39219 mapDefault!18654)) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24976 true) setRest!24976))))

(declare-fun b!2847360 () Bool)

(declare-fun e!1804207 () Bool)

(declare-fun tp!913664 () Bool)

(assert (=> b!2847360 (= e!1804207 tp!913664)))

(declare-fun b!2847361 () Bool)

(declare-fun tp!913663 () Bool)

(assert (=> b!2847361 (= e!1804205 tp!913663)))

(declare-fun e!1804206 () Bool)

(assert (=> b!2847289 (= tp!913635 e!1804206)))

(declare-fun tp_is_empty!14723 () Bool)

(declare-fun b!2847362 () Bool)

(declare-fun tp!913666 () Bool)

(assert (=> b!2847362 (= e!1804206 (and (inv!45839 (_1!19949 (_1!19950 (h!39219 mapDefault!18654)))) e!1804207 tp_is_empty!14723 setRes!24976 tp!913666))))

(declare-fun condSetEmpty!24976 () Bool)

(assert (=> b!2847362 (= condSetEmpty!24976 (= (_2!19950 (h!39219 mapDefault!18654)) ((as const (Array Context!5030 Bool)) false)))))

(assert (= b!2847362 b!2847360))

(assert (= (and b!2847362 condSetEmpty!24976) setIsEmpty!24976))

(assert (= (and b!2847362 (not condSetEmpty!24976)) setNonEmpty!24976))

(assert (= setNonEmpty!24976 b!2847361))

(assert (= (and b!2847289 ((_ is Cons!33799) mapDefault!18654)) b!2847362))

(declare-fun m!3274887 () Bool)

(assert (=> setNonEmpty!24976 m!3274887))

(declare-fun m!3274889 () Bool)

(assert (=> b!2847362 m!3274889))

(declare-fun condSetEmpty!24979 () Bool)

(assert (=> setNonEmpty!24973 (= condSetEmpty!24979 (= setRest!24973 ((as const (Array Context!5030 Bool)) false)))))

(declare-fun setRes!24979 () Bool)

(assert (=> setNonEmpty!24973 (= tp!913645 setRes!24979)))

(declare-fun setIsEmpty!24979 () Bool)

(assert (=> setIsEmpty!24979 setRes!24979))

(declare-fun e!1804210 () Bool)

(declare-fun setNonEmpty!24979 () Bool)

(declare-fun tp!913672 () Bool)

(declare-fun setElem!24979 () Context!5030)

(assert (=> setNonEmpty!24979 (= setRes!24979 (and tp!913672 (inv!45839 setElem!24979) e!1804210))))

(declare-fun setRest!24979 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24979 (= setRest!24973 ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24979 true) setRest!24979))))

(declare-fun b!2847367 () Bool)

(declare-fun tp!913671 () Bool)

(assert (=> b!2847367 (= e!1804210 tp!913671)))

(assert (= (and setNonEmpty!24973 condSetEmpty!24979) setIsEmpty!24979))

(assert (= (and setNonEmpty!24973 (not condSetEmpty!24979)) setNonEmpty!24979))

(assert (= setNonEmpty!24979 b!2847367))

(declare-fun m!3274891 () Bool)

(assert (=> setNonEmpty!24979 m!3274891))

(declare-fun condMapEmpty!18658 () Bool)

(declare-fun mapDefault!18658 () List!33922)

(assert (=> mapNonEmpty!18654 (= condMapEmpty!18658 (= mapRest!18655 ((as const (Array (_ BitVec 32) List!33922)) mapDefault!18658)))))

(declare-fun e!1804228 () Bool)

(declare-fun mapRes!18658 () Bool)

(assert (=> mapNonEmpty!18654 (= tp!913638 (and e!1804228 mapRes!18658))))

(declare-fun setIsEmpty!24984 () Bool)

(declare-fun setRes!24984 () Bool)

(assert (=> setIsEmpty!24984 setRes!24984))

(declare-fun setIsEmpty!24985 () Bool)

(declare-fun setRes!24985 () Bool)

(assert (=> setIsEmpty!24985 setRes!24985))

(declare-fun mapIsEmpty!18658 () Bool)

(assert (=> mapIsEmpty!18658 mapRes!18658))

(declare-fun b!2847382 () Bool)

(declare-fun e!1804223 () Bool)

(declare-fun tp!913704 () Bool)

(declare-fun tp!913695 () Bool)

(assert (=> b!2847382 (= e!1804228 (and tp!913695 (inv!45839 (_2!19947 (_1!19948 (h!39218 mapDefault!18658)))) e!1804223 tp_is_empty!14723 setRes!24985 tp!913704))))

(declare-fun condSetEmpty!24984 () Bool)

(assert (=> b!2847382 (= condSetEmpty!24984 (= (_2!19948 (h!39218 mapDefault!18658)) ((as const (Array Context!5030 Bool)) false)))))

(declare-fun b!2847383 () Bool)

(declare-fun e!1804225 () Bool)

(declare-fun tp!913698 () Bool)

(assert (=> b!2847383 (= e!1804225 tp!913698)))

(declare-fun tp!913705 () Bool)

(declare-fun tp!913700 () Bool)

(declare-fun mapValue!18658 () List!33922)

(declare-fun e!1804224 () Bool)

(declare-fun e!1804227 () Bool)

(declare-fun b!2847384 () Bool)

(assert (=> b!2847384 (= e!1804227 (and tp!913705 (inv!45839 (_2!19947 (_1!19948 (h!39218 mapValue!18658)))) e!1804224 tp_is_empty!14723 setRes!24984 tp!913700))))

(declare-fun condSetEmpty!24985 () Bool)

(assert (=> b!2847384 (= condSetEmpty!24985 (= (_2!19948 (h!39218 mapValue!18658)) ((as const (Array Context!5030 Bool)) false)))))

(declare-fun b!2847385 () Bool)

(declare-fun tp!913699 () Bool)

(assert (=> b!2847385 (= e!1804223 tp!913699)))

(declare-fun setElem!24985 () Context!5030)

(declare-fun e!1804226 () Bool)

(declare-fun tp!913701 () Bool)

(declare-fun setNonEmpty!24984 () Bool)

(assert (=> setNonEmpty!24984 (= setRes!24984 (and tp!913701 (inv!45839 setElem!24985) e!1804226))))

(declare-fun setRest!24985 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24984 (= (_2!19948 (h!39218 mapValue!18658)) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24985 true) setRest!24985))))

(declare-fun mapNonEmpty!18658 () Bool)

(declare-fun tp!913696 () Bool)

(assert (=> mapNonEmpty!18658 (= mapRes!18658 (and tp!913696 e!1804227))))

(declare-fun mapRest!18658 () (Array (_ BitVec 32) List!33922))

(declare-fun mapKey!18658 () (_ BitVec 32))

(assert (=> mapNonEmpty!18658 (= mapRest!18655 (store mapRest!18658 mapKey!18658 mapValue!18658))))

(declare-fun setElem!24984 () Context!5030)

(declare-fun setNonEmpty!24985 () Bool)

(declare-fun tp!913702 () Bool)

(assert (=> setNonEmpty!24985 (= setRes!24985 (and tp!913702 (inv!45839 setElem!24984) e!1804225))))

(declare-fun setRest!24984 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24985 (= (_2!19948 (h!39218 mapDefault!18658)) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24984 true) setRest!24984))))

(declare-fun b!2847386 () Bool)

(declare-fun tp!913697 () Bool)

(assert (=> b!2847386 (= e!1804226 tp!913697)))

(declare-fun b!2847387 () Bool)

(declare-fun tp!913703 () Bool)

(assert (=> b!2847387 (= e!1804224 tp!913703)))

(assert (= (and mapNonEmpty!18654 condMapEmpty!18658) mapIsEmpty!18658))

(assert (= (and mapNonEmpty!18654 (not condMapEmpty!18658)) mapNonEmpty!18658))

(assert (= b!2847384 b!2847387))

(assert (= (and b!2847384 condSetEmpty!24985) setIsEmpty!24984))

(assert (= (and b!2847384 (not condSetEmpty!24985)) setNonEmpty!24984))

(assert (= setNonEmpty!24984 b!2847386))

(assert (= (and mapNonEmpty!18658 ((_ is Cons!33798) mapValue!18658)) b!2847384))

(assert (= b!2847382 b!2847385))

(assert (= (and b!2847382 condSetEmpty!24984) setIsEmpty!24985))

(assert (= (and b!2847382 (not condSetEmpty!24984)) setNonEmpty!24985))

(assert (= setNonEmpty!24985 b!2847383))

(assert (= (and mapNonEmpty!18654 ((_ is Cons!33798) mapDefault!18658)) b!2847382))

(declare-fun m!3274893 () Bool)

(assert (=> b!2847382 m!3274893))

(declare-fun m!3274895 () Bool)

(assert (=> b!2847384 m!3274895))

(declare-fun m!3274897 () Bool)

(assert (=> setNonEmpty!24985 m!3274897))

(declare-fun m!3274899 () Bool)

(assert (=> mapNonEmpty!18658 m!3274899))

(declare-fun m!3274901 () Bool)

(assert (=> setNonEmpty!24984 m!3274901))

(declare-fun setIsEmpty!24988 () Bool)

(declare-fun setRes!24988 () Bool)

(assert (=> setIsEmpty!24988 setRes!24988))

(declare-fun b!2847396 () Bool)

(declare-fun e!1804236 () Bool)

(declare-fun tp!913716 () Bool)

(assert (=> b!2847396 (= e!1804236 tp!913716)))

(declare-fun e!1804237 () Bool)

(declare-fun tp!913718 () Bool)

(declare-fun tp!913717 () Bool)

(declare-fun e!1804235 () Bool)

(declare-fun b!2847397 () Bool)

(assert (=> b!2847397 (= e!1804237 (and tp!913717 (inv!45839 (_2!19947 (_1!19948 (h!39218 mapValue!18654)))) e!1804235 tp_is_empty!14723 setRes!24988 tp!913718))))

(declare-fun condSetEmpty!24988 () Bool)

(assert (=> b!2847397 (= condSetEmpty!24988 (= (_2!19948 (h!39218 mapValue!18654)) ((as const (Array Context!5030 Bool)) false)))))

(declare-fun b!2847398 () Bool)

(declare-fun tp!913720 () Bool)

(assert (=> b!2847398 (= e!1804235 tp!913720)))

(assert (=> mapNonEmpty!18654 (= tp!913641 e!1804237)))

(declare-fun tp!913719 () Bool)

(declare-fun setElem!24988 () Context!5030)

(declare-fun setNonEmpty!24988 () Bool)

(assert (=> setNonEmpty!24988 (= setRes!24988 (and tp!913719 (inv!45839 setElem!24988) e!1804236))))

(declare-fun setRest!24988 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24988 (= (_2!19948 (h!39218 mapValue!18654)) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24988 true) setRest!24988))))

(assert (= b!2847397 b!2847398))

(assert (= (and b!2847397 condSetEmpty!24988) setIsEmpty!24988))

(assert (= (and b!2847397 (not condSetEmpty!24988)) setNonEmpty!24988))

(assert (= setNonEmpty!24988 b!2847396))

(assert (= (and mapNonEmpty!18654 ((_ is Cons!33798) mapValue!18654)) b!2847397))

(declare-fun m!3274903 () Bool)

(assert (=> b!2847397 m!3274903))

(declare-fun m!3274905 () Bool)

(assert (=> setNonEmpty!24988 m!3274905))

(declare-fun setIsEmpty!24989 () Bool)

(declare-fun setRes!24989 () Bool)

(assert (=> setIsEmpty!24989 setRes!24989))

(declare-fun b!2847399 () Bool)

(declare-fun e!1804239 () Bool)

(declare-fun tp!913721 () Bool)

(assert (=> b!2847399 (= e!1804239 tp!913721)))

(declare-fun e!1804238 () Bool)

(declare-fun tp!913722 () Bool)

(declare-fun b!2847400 () Bool)

(declare-fun tp!913723 () Bool)

(declare-fun e!1804240 () Bool)

(assert (=> b!2847400 (= e!1804240 (and tp!913722 (inv!45839 (_2!19947 (_1!19948 (h!39218 (zeroValue!4368 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791)))))))))) e!1804238 tp_is_empty!14723 setRes!24989 tp!913723))))

(declare-fun condSetEmpty!24989 () Bool)

(assert (=> b!2847400 (= condSetEmpty!24989 (= (_2!19948 (h!39218 (zeroValue!4368 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791)))))))) ((as const (Array Context!5030 Bool)) false)))))

(declare-fun b!2847401 () Bool)

(declare-fun tp!913725 () Bool)

(assert (=> b!2847401 (= e!1804238 tp!913725)))

(assert (=> b!2847284 (= tp!913634 e!1804240)))

(declare-fun setNonEmpty!24989 () Bool)

(declare-fun tp!913724 () Bool)

(declare-fun setElem!24989 () Context!5030)

(assert (=> setNonEmpty!24989 (= setRes!24989 (and tp!913724 (inv!45839 setElem!24989) e!1804239))))

(declare-fun setRest!24989 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24989 (= (_2!19948 (h!39218 (zeroValue!4368 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791)))))))) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24989 true) setRest!24989))))

(assert (= b!2847400 b!2847401))

(assert (= (and b!2847400 condSetEmpty!24989) setIsEmpty!24989))

(assert (= (and b!2847400 (not condSetEmpty!24989)) setNonEmpty!24989))

(assert (= setNonEmpty!24989 b!2847399))

(assert (= (and b!2847284 ((_ is Cons!33798) (zeroValue!4368 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791)))))))) b!2847400))

(declare-fun m!3274907 () Bool)

(assert (=> b!2847400 m!3274907))

(declare-fun m!3274909 () Bool)

(assert (=> setNonEmpty!24989 m!3274909))

(declare-fun setIsEmpty!24990 () Bool)

(declare-fun setRes!24990 () Bool)

(assert (=> setIsEmpty!24990 setRes!24990))

(declare-fun b!2847402 () Bool)

(declare-fun e!1804242 () Bool)

(declare-fun tp!913726 () Bool)

(assert (=> b!2847402 (= e!1804242 tp!913726)))

(declare-fun e!1804241 () Bool)

(declare-fun e!1804243 () Bool)

(declare-fun tp!913727 () Bool)

(declare-fun b!2847403 () Bool)

(declare-fun tp!913728 () Bool)

(assert (=> b!2847403 (= e!1804243 (and tp!913727 (inv!45839 (_2!19947 (_1!19948 (h!39218 (minValue!4368 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791)))))))))) e!1804241 tp_is_empty!14723 setRes!24990 tp!913728))))

(declare-fun condSetEmpty!24990 () Bool)

(assert (=> b!2847403 (= condSetEmpty!24990 (= (_2!19948 (h!39218 (minValue!4368 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791)))))))) ((as const (Array Context!5030 Bool)) false)))))

(declare-fun b!2847404 () Bool)

(declare-fun tp!913730 () Bool)

(assert (=> b!2847404 (= e!1804241 tp!913730)))

(assert (=> b!2847284 (= tp!913631 e!1804243)))

(declare-fun setNonEmpty!24990 () Bool)

(declare-fun setElem!24990 () Context!5030)

(declare-fun tp!913729 () Bool)

(assert (=> setNonEmpty!24990 (= setRes!24990 (and tp!913729 (inv!45839 setElem!24990) e!1804242))))

(declare-fun setRest!24990 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24990 (= (_2!19948 (h!39218 (minValue!4368 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791)))))))) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24990 true) setRest!24990))))

(assert (= b!2847403 b!2847404))

(assert (= (and b!2847403 condSetEmpty!24990) setIsEmpty!24990))

(assert (= (and b!2847403 (not condSetEmpty!24990)) setNonEmpty!24990))

(assert (= setNonEmpty!24990 b!2847402))

(assert (= (and b!2847284 ((_ is Cons!33798) (minValue!4368 (v!34418 (underlying!8447 (v!34419 (underlying!8448 (cache!4150 cacheDown!791)))))))) b!2847403))

(declare-fun m!3274911 () Bool)

(assert (=> b!2847403 m!3274911))

(declare-fun m!3274913 () Bool)

(assert (=> setNonEmpty!24990 m!3274913))

(declare-fun setIsEmpty!24991 () Bool)

(declare-fun setRes!24991 () Bool)

(assert (=> setIsEmpty!24991 setRes!24991))

(declare-fun b!2847405 () Bool)

(declare-fun e!1804245 () Bool)

(declare-fun tp!913731 () Bool)

(assert (=> b!2847405 (= e!1804245 tp!913731)))

(declare-fun e!1804244 () Bool)

(declare-fun e!1804246 () Bool)

(declare-fun b!2847406 () Bool)

(declare-fun tp!913732 () Bool)

(declare-fun tp!913733 () Bool)

(assert (=> b!2847406 (= e!1804246 (and tp!913732 (inv!45839 (_2!19947 (_1!19948 (h!39218 mapDefault!18655)))) e!1804244 tp_is_empty!14723 setRes!24991 tp!913733))))

(declare-fun condSetEmpty!24991 () Bool)

(assert (=> b!2847406 (= condSetEmpty!24991 (= (_2!19948 (h!39218 mapDefault!18655)) ((as const (Array Context!5030 Bool)) false)))))

(declare-fun b!2847407 () Bool)

(declare-fun tp!913735 () Bool)

(assert (=> b!2847407 (= e!1804244 tp!913735)))

(assert (=> b!2847297 (= tp!913633 e!1804246)))

(declare-fun tp!913734 () Bool)

(declare-fun setElem!24991 () Context!5030)

(declare-fun setNonEmpty!24991 () Bool)

(assert (=> setNonEmpty!24991 (= setRes!24991 (and tp!913734 (inv!45839 setElem!24991) e!1804245))))

(declare-fun setRest!24991 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24991 (= (_2!19948 (h!39218 mapDefault!18655)) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24991 true) setRest!24991))))

(assert (= b!2847406 b!2847407))

(assert (= (and b!2847406 condSetEmpty!24991) setIsEmpty!24991))

(assert (= (and b!2847406 (not condSetEmpty!24991)) setNonEmpty!24991))

(assert (= setNonEmpty!24991 b!2847405))

(assert (= (and b!2847297 ((_ is Cons!33798) mapDefault!18655)) b!2847406))

(declare-fun m!3274915 () Bool)

(assert (=> b!2847406 m!3274915))

(declare-fun m!3274917 () Bool)

(assert (=> setNonEmpty!24991 m!3274917))

(declare-fun setIsEmpty!24996 () Bool)

(declare-fun setRes!24997 () Bool)

(assert (=> setIsEmpty!24996 setRes!24997))

(declare-fun b!2847422 () Bool)

(declare-fun e!1804263 () Bool)

(declare-fun tp!913754 () Bool)

(assert (=> b!2847422 (= e!1804263 tp!913754)))

(declare-fun b!2847423 () Bool)

(declare-fun e!1804264 () Bool)

(declare-fun tp!913756 () Bool)

(assert (=> b!2847423 (= e!1804264 tp!913756)))

(declare-fun condMapEmpty!18661 () Bool)

(declare-fun mapDefault!18661 () List!33923)

(assert (=> mapNonEmpty!18655 (= condMapEmpty!18661 (= mapRest!18654 ((as const (Array (_ BitVec 32) List!33923)) mapDefault!18661)))))

(declare-fun e!1804260 () Bool)

(declare-fun mapRes!18661 () Bool)

(assert (=> mapNonEmpty!18655 (= tp!913637 (and e!1804260 mapRes!18661))))

(declare-fun setNonEmpty!24996 () Bool)

(declare-fun e!1804261 () Bool)

(declare-fun setElem!24996 () Context!5030)

(declare-fun tp!913761 () Bool)

(assert (=> setNonEmpty!24996 (= setRes!24997 (and tp!913761 (inv!45839 setElem!24996) e!1804261))))

(declare-fun mapValue!18661 () List!33923)

(declare-fun setRest!24996 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24996 (= (_2!19950 (h!39219 mapValue!18661)) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24996 true) setRest!24996))))

(declare-fun mapNonEmpty!18661 () Bool)

(declare-fun tp!913760 () Bool)

(declare-fun e!1804262 () Bool)

(assert (=> mapNonEmpty!18661 (= mapRes!18661 (and tp!913760 e!1804262))))

(declare-fun mapRest!18661 () (Array (_ BitVec 32) List!33923))

(declare-fun mapKey!18661 () (_ BitVec 32))

(assert (=> mapNonEmpty!18661 (= mapRest!18654 (store mapRest!18661 mapKey!18661 mapValue!18661))))

(declare-fun tp!913762 () Bool)

(declare-fun b!2847424 () Bool)

(assert (=> b!2847424 (= e!1804262 (and (inv!45839 (_1!19949 (_1!19950 (h!39219 mapValue!18661)))) e!1804263 tp_is_empty!14723 setRes!24997 tp!913762))))

(declare-fun condSetEmpty!24996 () Bool)

(assert (=> b!2847424 (= condSetEmpty!24996 (= (_2!19950 (h!39219 mapValue!18661)) ((as const (Array Context!5030 Bool)) false)))))

(declare-fun b!2847425 () Bool)

(declare-fun e!1804259 () Bool)

(declare-fun tp!913758 () Bool)

(assert (=> b!2847425 (= e!1804259 tp!913758)))

(declare-fun setIsEmpty!24997 () Bool)

(declare-fun setRes!24996 () Bool)

(assert (=> setIsEmpty!24997 setRes!24996))

(declare-fun tp!913757 () Bool)

(declare-fun b!2847426 () Bool)

(assert (=> b!2847426 (= e!1804260 (and (inv!45839 (_1!19949 (_1!19950 (h!39219 mapDefault!18661)))) e!1804264 tp_is_empty!14723 setRes!24996 tp!913757))))

(declare-fun condSetEmpty!24997 () Bool)

(assert (=> b!2847426 (= condSetEmpty!24997 (= (_2!19950 (h!39219 mapDefault!18661)) ((as const (Array Context!5030 Bool)) false)))))

(declare-fun mapIsEmpty!18661 () Bool)

(assert (=> mapIsEmpty!18661 mapRes!18661))

(declare-fun b!2847427 () Bool)

(declare-fun tp!913759 () Bool)

(assert (=> b!2847427 (= e!1804261 tp!913759)))

(declare-fun setElem!24997 () Context!5030)

(declare-fun tp!913755 () Bool)

(declare-fun setNonEmpty!24997 () Bool)

(assert (=> setNonEmpty!24997 (= setRes!24996 (and tp!913755 (inv!45839 setElem!24997) e!1804259))))

(declare-fun setRest!24997 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24997 (= (_2!19950 (h!39219 mapDefault!18661)) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24997 true) setRest!24997))))

(assert (= (and mapNonEmpty!18655 condMapEmpty!18661) mapIsEmpty!18661))

(assert (= (and mapNonEmpty!18655 (not condMapEmpty!18661)) mapNonEmpty!18661))

(assert (= b!2847424 b!2847422))

(assert (= (and b!2847424 condSetEmpty!24996) setIsEmpty!24996))

(assert (= (and b!2847424 (not condSetEmpty!24996)) setNonEmpty!24996))

(assert (= setNonEmpty!24996 b!2847427))

(assert (= (and mapNonEmpty!18661 ((_ is Cons!33799) mapValue!18661)) b!2847424))

(assert (= b!2847426 b!2847423))

(assert (= (and b!2847426 condSetEmpty!24997) setIsEmpty!24997))

(assert (= (and b!2847426 (not condSetEmpty!24997)) setNonEmpty!24997))

(assert (= setNonEmpty!24997 b!2847425))

(assert (= (and mapNonEmpty!18655 ((_ is Cons!33799) mapDefault!18661)) b!2847426))

(declare-fun m!3274919 () Bool)

(assert (=> b!2847426 m!3274919))

(declare-fun m!3274921 () Bool)

(assert (=> mapNonEmpty!18661 m!3274921))

(declare-fun m!3274923 () Bool)

(assert (=> b!2847424 m!3274923))

(declare-fun m!3274925 () Bool)

(assert (=> setNonEmpty!24996 m!3274925))

(declare-fun m!3274927 () Bool)

(assert (=> setNonEmpty!24997 m!3274927))

(declare-fun setIsEmpty!24998 () Bool)

(declare-fun setRes!24998 () Bool)

(assert (=> setIsEmpty!24998 setRes!24998))

(declare-fun tp!913765 () Bool)

(declare-fun e!1804265 () Bool)

(declare-fun setNonEmpty!24998 () Bool)

(declare-fun setElem!24998 () Context!5030)

(assert (=> setNonEmpty!24998 (= setRes!24998 (and tp!913765 (inv!45839 setElem!24998) e!1804265))))

(declare-fun setRest!24998 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24998 (= (_2!19950 (h!39219 mapValue!18655)) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24998 true) setRest!24998))))

(declare-fun b!2847428 () Bool)

(declare-fun e!1804267 () Bool)

(declare-fun tp!913764 () Bool)

(assert (=> b!2847428 (= e!1804267 tp!913764)))

(declare-fun b!2847429 () Bool)

(declare-fun tp!913763 () Bool)

(assert (=> b!2847429 (= e!1804265 tp!913763)))

(declare-fun e!1804266 () Bool)

(assert (=> mapNonEmpty!18655 (= tp!913642 e!1804266)))

(declare-fun b!2847430 () Bool)

(declare-fun tp!913766 () Bool)

(assert (=> b!2847430 (= e!1804266 (and (inv!45839 (_1!19949 (_1!19950 (h!39219 mapValue!18655)))) e!1804267 tp_is_empty!14723 setRes!24998 tp!913766))))

(declare-fun condSetEmpty!24998 () Bool)

(assert (=> b!2847430 (= condSetEmpty!24998 (= (_2!19950 (h!39219 mapValue!18655)) ((as const (Array Context!5030 Bool)) false)))))

(assert (= b!2847430 b!2847428))

(assert (= (and b!2847430 condSetEmpty!24998) setIsEmpty!24998))

(assert (= (and b!2847430 (not condSetEmpty!24998)) setNonEmpty!24998))

(assert (= setNonEmpty!24998 b!2847429))

(assert (= (and mapNonEmpty!18655 ((_ is Cons!33799) mapValue!18655)) b!2847430))

(declare-fun m!3274929 () Bool)

(assert (=> setNonEmpty!24998 m!3274929))

(declare-fun m!3274931 () Bool)

(assert (=> b!2847430 m!3274931))

(declare-fun b!2847435 () Bool)

(declare-fun e!1804270 () Bool)

(declare-fun tp!913771 () Bool)

(declare-fun tp!913772 () Bool)

(assert (=> b!2847435 (= e!1804270 (and tp!913771 tp!913772))))

(assert (=> b!2847292 (= tp!913629 e!1804270)))

(assert (= (and b!2847292 ((_ is Cons!33797) (exprs!3015 setElem!24973))) b!2847435))

(declare-fun setIsEmpty!24999 () Bool)

(declare-fun setRes!24999 () Bool)

(assert (=> setIsEmpty!24999 setRes!24999))

(declare-fun e!1804271 () Bool)

(declare-fun setNonEmpty!24999 () Bool)

(declare-fun setElem!24999 () Context!5030)

(declare-fun tp!913775 () Bool)

(assert (=> setNonEmpty!24999 (= setRes!24999 (and tp!913775 (inv!45839 setElem!24999) e!1804271))))

(declare-fun setRest!24999 () (InoxSet Context!5030))

(assert (=> setNonEmpty!24999 (= (_2!19950 (h!39219 (zeroValue!4369 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778)))))))) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!24999 true) setRest!24999))))

(declare-fun b!2847436 () Bool)

(declare-fun e!1804273 () Bool)

(declare-fun tp!913774 () Bool)

(assert (=> b!2847436 (= e!1804273 tp!913774)))

(declare-fun b!2847437 () Bool)

(declare-fun tp!913773 () Bool)

(assert (=> b!2847437 (= e!1804271 tp!913773)))

(declare-fun e!1804272 () Bool)

(assert (=> b!2847296 (= tp!913636 e!1804272)))

(declare-fun b!2847438 () Bool)

(declare-fun tp!913776 () Bool)

(assert (=> b!2847438 (= e!1804272 (and (inv!45839 (_1!19949 (_1!19950 (h!39219 (zeroValue!4369 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778)))))))))) e!1804273 tp_is_empty!14723 setRes!24999 tp!913776))))

(declare-fun condSetEmpty!24999 () Bool)

(assert (=> b!2847438 (= condSetEmpty!24999 (= (_2!19950 (h!39219 (zeroValue!4369 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778)))))))) ((as const (Array Context!5030 Bool)) false)))))

(assert (= b!2847438 b!2847436))

(assert (= (and b!2847438 condSetEmpty!24999) setIsEmpty!24999))

(assert (= (and b!2847438 (not condSetEmpty!24999)) setNonEmpty!24999))

(assert (= setNonEmpty!24999 b!2847437))

(assert (= (and b!2847296 ((_ is Cons!33799) (zeroValue!4369 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778)))))))) b!2847438))

(declare-fun m!3274933 () Bool)

(assert (=> setNonEmpty!24999 m!3274933))

(declare-fun m!3274935 () Bool)

(assert (=> b!2847438 m!3274935))

(declare-fun setIsEmpty!25000 () Bool)

(declare-fun setRes!25000 () Bool)

(assert (=> setIsEmpty!25000 setRes!25000))

(declare-fun tp!913779 () Bool)

(declare-fun setElem!25000 () Context!5030)

(declare-fun setNonEmpty!25000 () Bool)

(declare-fun e!1804274 () Bool)

(assert (=> setNonEmpty!25000 (= setRes!25000 (and tp!913779 (inv!45839 setElem!25000) e!1804274))))

(declare-fun setRest!25000 () (InoxSet Context!5030))

(assert (=> setNonEmpty!25000 (= (_2!19950 (h!39219 (minValue!4369 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778)))))))) ((_ map or) (store ((as const (Array Context!5030 Bool)) false) setElem!25000 true) setRest!25000))))

(declare-fun b!2847439 () Bool)

(declare-fun e!1804276 () Bool)

(declare-fun tp!913778 () Bool)

(assert (=> b!2847439 (= e!1804276 tp!913778)))

(declare-fun b!2847440 () Bool)

(declare-fun tp!913777 () Bool)

(assert (=> b!2847440 (= e!1804274 tp!913777)))

(declare-fun e!1804275 () Bool)

(assert (=> b!2847296 (= tp!913644 e!1804275)))

(declare-fun tp!913780 () Bool)

(declare-fun b!2847441 () Bool)

(assert (=> b!2847441 (= e!1804275 (and (inv!45839 (_1!19949 (_1!19950 (h!39219 (minValue!4369 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778)))))))))) e!1804276 tp_is_empty!14723 setRes!25000 tp!913780))))

(declare-fun condSetEmpty!25000 () Bool)

(assert (=> b!2847441 (= condSetEmpty!25000 (= (_2!19950 (h!39219 (minValue!4369 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778)))))))) ((as const (Array Context!5030 Bool)) false)))))

(assert (= b!2847441 b!2847439))

(assert (= (and b!2847441 condSetEmpty!25000) setIsEmpty!25000))

(assert (= (and b!2847441 (not condSetEmpty!25000)) setNonEmpty!25000))

(assert (= setNonEmpty!25000 b!2847440))

(assert (= (and b!2847296 ((_ is Cons!33799) (minValue!4369 (v!34420 (underlying!8449 (v!34421 (underlying!8450 (cache!4151 cacheUp!778)))))))) b!2847441))

(declare-fun m!3274937 () Bool)

(assert (=> setNonEmpty!25000 m!3274937))

(declare-fun m!3274939 () Bool)

(assert (=> b!2847441 m!3274939))

(check-sat (not b!2847360) (not b!2847407) (not setNonEmpty!24996) (not b!2847351) (not b!2847400) (not b!2847340) (not b!2847384) b_and!208961 (not b!2847387) (not b!2847361) (not b!2847436) (not b!2847402) (not b!2847426) (not b!2847422) (not b!2847429) (not d!825501) (not d!825509) (not b!2847298) (not b!2847423) (not d!825487) (not b!2847382) (not b!2847435) (not b!2847397) b_and!208965 (not setNonEmpty!24979) (not b!2847440) (not setNonEmpty!24997) (not b!2847331) (not b!2847337) (not b!2847404) (not b!2847441) (not setNonEmpty!24984) (not mapNonEmpty!18661) (not b!2847399) (not setNonEmpty!24988) (not b_next!83423) (not b!2847350) (not b!2847310) (not b!2847385) (not b!2847318) (not b_next!83427) (not b!2847308) (not b!2847386) (not b!2847427) (not b!2847428) tp_is_empty!14723 (not b!2847425) b_and!208963 (not b!2847383) (not b!2847406) (not mapNonEmpty!18658) (not b!2847405) (not setNonEmpty!24990) (not b_next!83425) (not b!2847398) (not b!2847439) (not setNonEmpty!24989) (not d!825499) (not setNonEmpty!25000) (not b!2847401) (not b!2847319) (not setNonEmpty!24999) (not b!2847430) (not b!2847424) (not b!2847334) (not b!2847438) (not b!2847325) (not b!2847396) (not b!2847349) (not b!2847324) (not b!2847362) (not setNonEmpty!24998) (not b!2847367) (not b_next!83421) b_and!208959 (not setNonEmpty!24991) (not setNonEmpty!24976) (not b!2847330) (not d!825497) (not b!2847317) (not b!2847403) (not d!825503) (not setNonEmpty!24985) (not d!825511) (not b!2847437))
(check-sat b_and!208961 b_and!208965 (not b_next!83423) (not b_next!83427) b_and!208963 (not b_next!83425) (not b_next!83421) b_and!208959)
