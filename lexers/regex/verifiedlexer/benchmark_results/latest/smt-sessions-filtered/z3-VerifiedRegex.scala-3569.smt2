; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206440 () Bool)

(assert start!206440)

(declare-fun b!2111246 () Bool)

(declare-fun b_free!60985 () Bool)

(declare-fun b_next!61689 () Bool)

(assert (=> b!2111246 (= b_free!60985 (not b_next!61689))))

(declare-fun tp!642686 () Bool)

(declare-fun b_and!170565 () Bool)

(assert (=> b!2111246 (= tp!642686 b_and!170565)))

(declare-fun b!2111237 () Bool)

(declare-fun b_free!60987 () Bool)

(declare-fun b_next!61691 () Bool)

(assert (=> b!2111237 (= b_free!60987 (not b_next!61691))))

(declare-fun tp!642681 () Bool)

(declare-fun b_and!170567 () Bool)

(assert (=> b!2111237 (= tp!642681 b_and!170567)))

(declare-fun b!2111235 () Bool)

(declare-fun b_free!60989 () Bool)

(declare-fun b_next!61693 () Bool)

(assert (=> b!2111235 (= b_free!60989 (not b_next!61693))))

(declare-fun tp!642695 () Bool)

(declare-fun b_and!170569 () Bool)

(assert (=> b!2111235 (= tp!642695 b_and!170569)))

(declare-fun b!2111247 () Bool)

(declare-fun b_free!60991 () Bool)

(declare-fun b_next!61695 () Bool)

(assert (=> b!2111247 (= b_free!60991 (not b_next!61695))))

(declare-fun tp!642675 () Bool)

(declare-fun b_and!170571 () Bool)

(assert (=> b!2111247 (= tp!642675 b_and!170571)))

(declare-datatypes ((C!11356 0))(
  ( (C!11357 (val!6664 Int)) )
))
(declare-datatypes ((Regex!5605 0))(
  ( (ElementMatch!5605 (c!339138 C!11356)) (Concat!9907 (regOne!11722 Regex!5605) (regTwo!11722 Regex!5605)) (EmptyExpr!5605) (Star!5605 (reg!5934 Regex!5605)) (EmptyLang!5605) (Union!5605 (regOne!11723 Regex!5605) (regTwo!11723 Regex!5605)) )
))
(declare-datatypes ((List!23504 0))(
  ( (Nil!23420) (Cons!23420 (h!28821 Regex!5605) (t!196013 List!23504)) )
))
(declare-datatypes ((Context!2350 0))(
  ( (Context!2351 (exprs!1675 List!23504)) )
))
(declare-datatypes ((tuple3!2680 0))(
  ( (tuple3!2681 (_1!13198 Regex!5605) (_2!13198 Context!2350) (_3!1804 C!11356)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22788 0))(
  ( (tuple2!22789 (_1!13199 tuple3!2680) (_2!13199 (InoxSet Context!2350))) )
))
(declare-datatypes ((List!23505 0))(
  ( (Nil!23421) (Cons!23421 (h!28822 tuple2!22788) (t!196014 List!23505)) )
))
(declare-datatypes ((array!7988 0))(
  ( (array!7989 (arr!3537 (Array (_ BitVec 32) (_ BitVec 64))) (size!18279 (_ BitVec 32))) )
))
(declare-datatypes ((array!7990 0))(
  ( (array!7991 (arr!3538 (Array (_ BitVec 32) List!23505)) (size!18280 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4622 0))(
  ( (LongMapFixedSize!4623 (defaultEntry!2676 Int) (mask!6429 (_ BitVec 32)) (extraKeys!2559 (_ BitVec 32)) (zeroValue!2569 List!23505) (minValue!2569 List!23505) (_size!4673 (_ BitVec 32)) (_keys!2608 array!7988) (_values!2591 array!7990) (_vacant!2372 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9069 0))(
  ( (Cell!9070 (v!27949 LongMapFixedSize!4622)) )
))
(declare-datatypes ((MutLongMap!2311 0))(
  ( (LongMap!2311 (underlying!4817 Cell!9069)) (MutLongMapExt!2310 (__x!15109 Int)) )
))
(declare-datatypes ((Cell!9071 0))(
  ( (Cell!9072 (v!27950 MutLongMap!2311)) )
))
(declare-datatypes ((Hashable!2225 0))(
  ( (HashableExt!2224 (__x!15110 Int)) )
))
(declare-datatypes ((MutableMap!2225 0))(
  ( (MutableMapExt!2224 (__x!15111 Int)) (HashMap!2225 (underlying!4818 Cell!9071) (hashF!4148 Hashable!2225) (_size!4674 (_ BitVec 32)) (defaultValue!2387 Int)) )
))
(declare-datatypes ((CacheDown!1524 0))(
  ( (CacheDown!1525 (cache!2606 MutableMap!2225)) )
))
(declare-fun cacheDown!1197 () CacheDown!1524)

(declare-fun e!1342901 () Bool)

(declare-fun e!1342903 () Bool)

(declare-fun tp!642694 () Bool)

(declare-fun tp!642689 () Bool)

(declare-fun array_inv!2547 (array!7988) Bool)

(declare-fun array_inv!2548 (array!7990) Bool)

(assert (=> b!2111235 (= e!1342903 (and tp!642695 tp!642694 tp!642689 (array_inv!2547 (_keys!2608 (v!27949 (underlying!4817 (v!27950 (underlying!4818 (cache!2606 cacheDown!1197))))))) (array_inv!2548 (_values!2591 (v!27949 (underlying!4817 (v!27950 (underlying!4818 (cache!2606 cacheDown!1197))))))) e!1342901))))

(declare-fun b!2111236 () Bool)

(declare-fun e!1342886 () Bool)

(declare-fun e!1342900 () Bool)

(declare-fun lt!792348 () MutLongMap!2311)

(get-info :version)

(assert (=> b!2111236 (= e!1342886 (and e!1342900 ((_ is LongMap!2311) lt!792348)))))

(assert (=> b!2111236 (= lt!792348 (v!27950 (underlying!4818 (cache!2606 cacheDown!1197))))))

(declare-fun e!1342890 () Bool)

(declare-fun e!1342894 () Bool)

(assert (=> b!2111237 (= e!1342890 (and e!1342894 tp!642681))))

(declare-fun b!2111238 () Bool)

(declare-fun e!1342893 () Bool)

(declare-fun e!1342899 () Bool)

(assert (=> b!2111238 (= e!1342893 e!1342899)))

(declare-fun b!2111239 () Bool)

(declare-fun e!1342897 () Bool)

(declare-fun e!1342904 () Bool)

(assert (=> b!2111239 (= e!1342897 e!1342904)))

(declare-fun mapNonEmpty!11150 () Bool)

(declare-fun mapRes!11150 () Bool)

(declare-fun tp!642693 () Bool)

(declare-fun tp!642690 () Bool)

(assert (=> mapNonEmpty!11150 (= mapRes!11150 (and tp!642693 tp!642690))))

(declare-fun mapKey!11150 () (_ BitVec 32))

(declare-fun mapRest!11150 () (Array (_ BitVec 32) List!23505))

(declare-fun mapValue!11150 () List!23505)

(assert (=> mapNonEmpty!11150 (= (arr!3538 (_values!2591 (v!27949 (underlying!4817 (v!27950 (underlying!4818 (cache!2606 cacheDown!1197))))))) (store mapRest!11150 mapKey!11150 mapValue!11150))))

(declare-fun b!2111240 () Bool)

(declare-fun e!1342898 () Bool)

(declare-fun tp!642677 () Bool)

(assert (=> b!2111240 (= e!1342898 tp!642677)))

(declare-fun mapNonEmpty!11151 () Bool)

(declare-fun mapRes!11151 () Bool)

(declare-fun tp!642688 () Bool)

(declare-fun tp!642692 () Bool)

(assert (=> mapNonEmpty!11151 (= mapRes!11151 (and tp!642688 tp!642692))))

(declare-fun mapKey!11151 () (_ BitVec 32))

(declare-datatypes ((tuple2!22790 0))(
  ( (tuple2!22791 (_1!13200 Context!2350) (_2!13200 C!11356)) )
))
(declare-datatypes ((tuple2!22792 0))(
  ( (tuple2!22793 (_1!13201 tuple2!22790) (_2!13201 (InoxSet Context!2350))) )
))
(declare-datatypes ((List!23506 0))(
  ( (Nil!23422) (Cons!23422 (h!28823 tuple2!22792) (t!196015 List!23506)) )
))
(declare-datatypes ((array!7992 0))(
  ( (array!7993 (arr!3539 (Array (_ BitVec 32) List!23506)) (size!18281 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4624 0))(
  ( (LongMapFixedSize!4625 (defaultEntry!2677 Int) (mask!6430 (_ BitVec 32)) (extraKeys!2560 (_ BitVec 32)) (zeroValue!2570 List!23506) (minValue!2570 List!23506) (_size!4675 (_ BitVec 32)) (_keys!2609 array!7988) (_values!2592 array!7992) (_vacant!2373 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9073 0))(
  ( (Cell!9074 (v!27951 LongMapFixedSize!4624)) )
))
(declare-datatypes ((Hashable!2226 0))(
  ( (HashableExt!2225 (__x!15112 Int)) )
))
(declare-datatypes ((MutLongMap!2312 0))(
  ( (LongMap!2312 (underlying!4819 Cell!9073)) (MutLongMapExt!2311 (__x!15113 Int)) )
))
(declare-datatypes ((Cell!9075 0))(
  ( (Cell!9076 (v!27952 MutLongMap!2312)) )
))
(declare-datatypes ((MutableMap!2226 0))(
  ( (MutableMapExt!2225 (__x!15114 Int)) (HashMap!2226 (underlying!4820 Cell!9075) (hashF!4149 Hashable!2226) (_size!4676 (_ BitVec 32)) (defaultValue!2388 Int)) )
))
(declare-datatypes ((CacheUp!1520 0))(
  ( (CacheUp!1521 (cache!2607 MutableMap!2226)) )
))
(declare-fun cacheUp!1078 () CacheUp!1520)

(declare-fun mapRest!11151 () (Array (_ BitVec 32) List!23506))

(declare-fun mapValue!11151 () List!23506)

(assert (=> mapNonEmpty!11151 (= (arr!3539 (_values!2592 (v!27951 (underlying!4819 (v!27952 (underlying!4820 (cache!2607 cacheUp!1078))))))) (store mapRest!11151 mapKey!11151 mapValue!11151))))

(declare-fun b!2111241 () Bool)

(declare-fun lt!792349 () MutLongMap!2312)

(assert (=> b!2111241 (= e!1342894 (and e!1342897 ((_ is LongMap!2312) lt!792349)))))

(assert (=> b!2111241 (= lt!792349 (v!27952 (underlying!4820 (cache!2607 cacheUp!1078))))))

(declare-fun b!2111242 () Bool)

(declare-fun res!916909 () Bool)

(declare-fun e!1342892 () Bool)

(assert (=> b!2111242 (=> (not res!916909) (not e!1342892))))

(declare-datatypes ((List!23507 0))(
  ( (Nil!23423) (Cons!23423 (h!28824 C!11356) (t!196016 List!23507)) )
))
(declare-datatypes ((IArray!15503 0))(
  ( (IArray!15504 (innerList!7809 List!23507)) )
))
(declare-datatypes ((Conc!7749 0))(
  ( (Node!7749 (left!18206 Conc!7749) (right!18536 Conc!7749) (csize!15728 Int) (cheight!7960 Int)) (Leaf!11319 (xs!10691 IArray!15503) (csize!15729 Int)) (Empty!7749) )
))
(declare-datatypes ((BalanceConc!15260 0))(
  ( (BalanceConc!15261 (c!339139 Conc!7749)) )
))
(declare-fun input!6603 () BalanceConc!15260)

(declare-fun totalInput!1248 () BalanceConc!15260)

(declare-fun isSuffix!580 (List!23507 List!23507) Bool)

(declare-fun list!9477 (BalanceConc!15260) List!23507)

(assert (=> b!2111242 (= res!916909 (isSuffix!580 (list!9477 input!6603) (list!9477 totalInput!1248)))))

(declare-fun b!2111243 () Bool)

(declare-fun e!1342889 () Bool)

(declare-fun tp!642684 () Bool)

(declare-fun inv!30995 (Conc!7749) Bool)

(assert (=> b!2111243 (= e!1342889 (and (inv!30995 (c!339139 totalInput!1248)) tp!642684))))

(declare-fun b!2111244 () Bool)

(declare-fun tp_is_empty!9399 () Bool)

(assert (=> b!2111244 (= e!1342898 tp_is_empty!9399)))

(assert (=> b!2111246 (= e!1342899 (and e!1342886 tp!642686))))

(declare-fun tp!642680 () Bool)

(declare-fun tp!642683 () Bool)

(declare-fun e!1342905 () Bool)

(declare-fun e!1342895 () Bool)

(declare-fun array_inv!2549 (array!7992) Bool)

(assert (=> b!2111247 (= e!1342895 (and tp!642675 tp!642683 tp!642680 (array_inv!2547 (_keys!2609 (v!27951 (underlying!4819 (v!27952 (underlying!4820 (cache!2607 cacheUp!1078))))))) (array_inv!2549 (_values!2592 (v!27951 (underlying!4819 (v!27952 (underlying!4820 (cache!2607 cacheUp!1078))))))) e!1342905))))

(declare-fun b!2111248 () Bool)

(declare-fun res!916907 () Bool)

(assert (=> b!2111248 (=> (not res!916907) (not e!1342892))))

(declare-fun valid!1825 (CacheUp!1520) Bool)

(assert (=> b!2111248 (= res!916907 (valid!1825 cacheUp!1078))))

(declare-fun b!2111249 () Bool)

(declare-fun e!1342896 () Bool)

(assert (=> b!2111249 (= e!1342896 e!1342903)))

(declare-fun b!2111250 () Bool)

(assert (=> b!2111250 (= e!1342900 e!1342896)))

(declare-fun b!2111251 () Bool)

(declare-fun res!916910 () Bool)

(assert (=> b!2111251 (=> (not res!916910) (not e!1342892))))

(declare-fun valid!1826 (CacheDown!1524) Bool)

(assert (=> b!2111251 (= res!916910 (valid!1826 cacheDown!1197))))

(declare-fun b!2111252 () Bool)

(declare-fun tp!642682 () Bool)

(assert (=> b!2111252 (= e!1342901 (and tp!642682 mapRes!11150))))

(declare-fun condMapEmpty!11151 () Bool)

(declare-fun mapDefault!11151 () List!23505)

(assert (=> b!2111252 (= condMapEmpty!11151 (= (arr!3538 (_values!2591 (v!27949 (underlying!4817 (v!27950 (underlying!4818 (cache!2606 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23505)) mapDefault!11151)))))

(declare-fun b!2111253 () Bool)

(declare-fun tp!642679 () Bool)

(declare-fun tp!642676 () Bool)

(assert (=> b!2111253 (= e!1342898 (and tp!642679 tp!642676))))

(declare-fun b!2111254 () Bool)

(assert (=> b!2111254 (= e!1342892 false)))

(declare-fun lt!792350 () Regex!5605)

(declare-fun r!15329 () Regex!5605)

(declare-datatypes ((List!23508 0))(
  ( (Nil!23424) (Cons!23424 (h!28825 Context!2350) (t!196017 List!23508)) )
))
(declare-fun unfocusZipper!57 (List!23508) Regex!5605)

(declare-fun toList!1049 ((InoxSet Context!2350)) List!23508)

(declare-fun focus!256 (Regex!5605) (InoxSet Context!2350))

(assert (=> b!2111254 (= lt!792350 (unfocusZipper!57 (toList!1049 (focus!256 r!15329))))))

(declare-fun res!916908 () Bool)

(assert (=> start!206440 (=> (not res!916908) (not e!1342892))))

(declare-fun validRegex!2207 (Regex!5605) Bool)

(assert (=> start!206440 (= res!916908 (validRegex!2207 r!15329))))

(assert (=> start!206440 e!1342892))

(declare-fun e!1342888 () Bool)

(declare-fun inv!30996 (BalanceConc!15260) Bool)

(assert (=> start!206440 (and (inv!30996 input!6603) e!1342888)))

(declare-fun inv!30997 (CacheDown!1524) Bool)

(assert (=> start!206440 (and (inv!30997 cacheDown!1197) e!1342893)))

(assert (=> start!206440 e!1342898))

(assert (=> start!206440 (and (inv!30996 totalInput!1248) e!1342889)))

(declare-fun e!1342887 () Bool)

(declare-fun inv!30998 (CacheUp!1520) Bool)

(assert (=> start!206440 (and (inv!30998 cacheUp!1078) e!1342887)))

(declare-fun b!2111245 () Bool)

(declare-fun tp!642685 () Bool)

(assert (=> b!2111245 (= e!1342888 (and (inv!30995 (c!339139 input!6603)) tp!642685))))

(declare-fun mapIsEmpty!11150 () Bool)

(assert (=> mapIsEmpty!11150 mapRes!11150))

(declare-fun b!2111255 () Bool)

(assert (=> b!2111255 (= e!1342904 e!1342895)))

(declare-fun b!2111256 () Bool)

(assert (=> b!2111256 (= e!1342887 e!1342890)))

(declare-fun mapIsEmpty!11151 () Bool)

(assert (=> mapIsEmpty!11151 mapRes!11151))

(declare-fun b!2111257 () Bool)

(declare-fun tp!642691 () Bool)

(assert (=> b!2111257 (= e!1342905 (and tp!642691 mapRes!11151))))

(declare-fun condMapEmpty!11150 () Bool)

(declare-fun mapDefault!11150 () List!23506)

(assert (=> b!2111257 (= condMapEmpty!11150 (= (arr!3539 (_values!2592 (v!27951 (underlying!4819 (v!27952 (underlying!4820 (cache!2607 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23506)) mapDefault!11150)))))

(declare-fun b!2111258 () Bool)

(declare-fun tp!642687 () Bool)

(declare-fun tp!642678 () Bool)

(assert (=> b!2111258 (= e!1342898 (and tp!642687 tp!642678))))

(assert (= (and start!206440 res!916908) b!2111248))

(assert (= (and b!2111248 res!916907) b!2111251))

(assert (= (and b!2111251 res!916910) b!2111242))

(assert (= (and b!2111242 res!916909) b!2111254))

(assert (= start!206440 b!2111245))

(assert (= (and b!2111252 condMapEmpty!11151) mapIsEmpty!11150))

(assert (= (and b!2111252 (not condMapEmpty!11151)) mapNonEmpty!11150))

(assert (= b!2111235 b!2111252))

(assert (= b!2111249 b!2111235))

(assert (= b!2111250 b!2111249))

(assert (= (and b!2111236 ((_ is LongMap!2311) (v!27950 (underlying!4818 (cache!2606 cacheDown!1197))))) b!2111250))

(assert (= b!2111246 b!2111236))

(assert (= (and b!2111238 ((_ is HashMap!2225) (cache!2606 cacheDown!1197))) b!2111246))

(assert (= start!206440 b!2111238))

(assert (= (and start!206440 ((_ is ElementMatch!5605) r!15329)) b!2111244))

(assert (= (and start!206440 ((_ is Concat!9907) r!15329)) b!2111253))

(assert (= (and start!206440 ((_ is Star!5605) r!15329)) b!2111240))

(assert (= (and start!206440 ((_ is Union!5605) r!15329)) b!2111258))

(assert (= start!206440 b!2111243))

(assert (= (and b!2111257 condMapEmpty!11150) mapIsEmpty!11151))

(assert (= (and b!2111257 (not condMapEmpty!11150)) mapNonEmpty!11151))

(assert (= b!2111247 b!2111257))

(assert (= b!2111255 b!2111247))

(assert (= b!2111239 b!2111255))

(assert (= (and b!2111241 ((_ is LongMap!2312) (v!27952 (underlying!4820 (cache!2607 cacheUp!1078))))) b!2111239))

(assert (= b!2111237 b!2111241))

(assert (= (and b!2111256 ((_ is HashMap!2226) (cache!2607 cacheUp!1078))) b!2111237))

(assert (= start!206440 b!2111256))

(declare-fun m!2568119 () Bool)

(assert (=> b!2111248 m!2568119))

(declare-fun m!2568121 () Bool)

(assert (=> b!2111247 m!2568121))

(declare-fun m!2568123 () Bool)

(assert (=> b!2111247 m!2568123))

(declare-fun m!2568125 () Bool)

(assert (=> start!206440 m!2568125))

(declare-fun m!2568127 () Bool)

(assert (=> start!206440 m!2568127))

(declare-fun m!2568129 () Bool)

(assert (=> start!206440 m!2568129))

(declare-fun m!2568131 () Bool)

(assert (=> start!206440 m!2568131))

(declare-fun m!2568133 () Bool)

(assert (=> start!206440 m!2568133))

(declare-fun m!2568135 () Bool)

(assert (=> b!2111245 m!2568135))

(declare-fun m!2568137 () Bool)

(assert (=> b!2111251 m!2568137))

(declare-fun m!2568139 () Bool)

(assert (=> b!2111243 m!2568139))

(declare-fun m!2568141 () Bool)

(assert (=> b!2111242 m!2568141))

(declare-fun m!2568143 () Bool)

(assert (=> b!2111242 m!2568143))

(assert (=> b!2111242 m!2568141))

(assert (=> b!2111242 m!2568143))

(declare-fun m!2568145 () Bool)

(assert (=> b!2111242 m!2568145))

(declare-fun m!2568147 () Bool)

(assert (=> b!2111254 m!2568147))

(assert (=> b!2111254 m!2568147))

(declare-fun m!2568149 () Bool)

(assert (=> b!2111254 m!2568149))

(assert (=> b!2111254 m!2568149))

(declare-fun m!2568151 () Bool)

(assert (=> b!2111254 m!2568151))

(declare-fun m!2568153 () Bool)

(assert (=> mapNonEmpty!11151 m!2568153))

(declare-fun m!2568155 () Bool)

(assert (=> b!2111235 m!2568155))

(declare-fun m!2568157 () Bool)

(assert (=> b!2111235 m!2568157))

(declare-fun m!2568159 () Bool)

(assert (=> mapNonEmpty!11150 m!2568159))

(check-sat (not b!2111253) (not b!2111245) tp_is_empty!9399 (not b!2111248) (not b!2111240) (not b!2111257) b_and!170567 (not b_next!61691) (not b!2111243) b_and!170571 (not b!2111252) (not b_next!61689) (not b!2111235) (not mapNonEmpty!11151) (not b!2111247) (not b_next!61695) (not start!206440) (not b!2111254) (not b_next!61693) b_and!170569 (not b!2111242) (not b!2111258) (not mapNonEmpty!11150) b_and!170565 (not b!2111251))
(check-sat b_and!170571 (not b_next!61689) (not b_next!61695) (not b_next!61693) b_and!170567 (not b_next!61691) b_and!170569 b_and!170565)
