; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486520 () Bool)

(assert start!486520)

(declare-fun b!4757477 () Bool)

(declare-fun b_free!129175 () Bool)

(declare-fun b_next!129879 () Bool)

(assert (=> b!4757477 (= b_free!129175 (not b_next!129879))))

(declare-fun tp!1351458 () Bool)

(declare-fun b_and!340775 () Bool)

(assert (=> b!4757477 (= tp!1351458 b_and!340775)))

(declare-fun b!4757465 () Bool)

(declare-fun b_free!129177 () Bool)

(declare-fun b_next!129881 () Bool)

(assert (=> b!4757465 (= b_free!129177 (not b_next!129881))))

(declare-fun tp!1351455 () Bool)

(declare-fun b_and!340777 () Bool)

(assert (=> b!4757465 (= tp!1351455 b_and!340777)))

(declare-fun e!2968098 () Bool)

(declare-fun tp!1351456 () Bool)

(declare-fun tp!1351459 () Bool)

(declare-fun e!2968104 () Bool)

(declare-datatypes ((C!26224 0))(
  ( (C!26225 (val!20100 Int)) )
))
(declare-datatypes ((Regex!13013 0))(
  ( (ElementMatch!13013 (c!811822 C!26224)) (Concat!21332 (regOne!26538 Regex!13013) (regTwo!26538 Regex!13013)) (EmptyExpr!13013) (Star!13013 (reg!13342 Regex!13013)) (EmptyLang!13013) (Union!13013 (regOne!26539 Regex!13013) (regTwo!26539 Regex!13013)) )
))
(declare-datatypes ((List!53344 0))(
  ( (Nil!53220) (Cons!53220 (h!59631 Regex!13013) (t!360692 List!53344)) )
))
(declare-datatypes ((Context!5806 0))(
  ( (Context!5807 (exprs!3403 List!53344)) )
))
(declare-datatypes ((array!17518 0))(
  ( (array!17519 (arr!7815 (Array (_ BitVec 32) (_ BitVec 64))) (size!36012 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6476 0))(
  ( (HashableExt!6475 (__x!32193 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55106 0))(
  ( (tuple2!55107 (_1!30847 (InoxSet Context!5806)) (_2!30847 Int)) )
))
(declare-datatypes ((tuple2!55108 0))(
  ( (tuple2!55109 (_1!30848 tuple2!55106) (_2!30848 Int)) )
))
(declare-datatypes ((List!53345 0))(
  ( (Nil!53221) (Cons!53221 (h!59632 tuple2!55108) (t!360693 List!53345)) )
))
(declare-datatypes ((List!53346 0))(
  ( (Nil!53222) (Cons!53222 (h!59633 C!26224) (t!360694 List!53346)) )
))
(declare-datatypes ((IArray!28969 0))(
  ( (IArray!28970 (innerList!14542 List!53346)) )
))
(declare-datatypes ((Conc!14454 0))(
  ( (Node!14454 (left!39032 Conc!14454) (right!39362 Conc!14454) (csize!29138 Int) (cheight!14665 Int)) (Leaf!23533 (xs!17760 IArray!28969) (csize!29139 Int)) (Empty!14454) )
))
(declare-datatypes ((BalanceConc!28398 0))(
  ( (BalanceConc!28399 (c!811823 Conc!14454)) )
))
(declare-datatypes ((array!17520 0))(
  ( (array!17521 (arr!7816 (Array (_ BitVec 32) List!53345)) (size!36013 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9630 0))(
  ( (LongMapFixedSize!9631 (defaultEntry!5229 Int) (mask!14508 (_ BitVec 32)) (extraKeys!5085 (_ BitVec 32)) (zeroValue!5098 List!53345) (minValue!5098 List!53345) (_size!9655 (_ BitVec 32)) (_keys!5150 array!17518) (_values!5123 array!17520) (_vacant!4880 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19025 0))(
  ( (Cell!19026 (v!47293 LongMapFixedSize!9630)) )
))
(declare-datatypes ((MutLongMap!4815 0))(
  ( (LongMap!4815 (underlying!9837 Cell!19025)) (MutLongMapExt!4814 (__x!32194 Int)) )
))
(declare-datatypes ((Cell!19027 0))(
  ( (Cell!19028 (v!47294 MutLongMap!4815)) )
))
(declare-datatypes ((MutableMap!4699 0))(
  ( (MutableMapExt!4698 (__x!32195 Int)) (HashMap!4699 (underlying!9838 Cell!19027) (hashF!12286 Hashable!6476) (_size!9656 (_ BitVec 32)) (defaultValue!4870 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!596 0))(
  ( (CacheFindLongestMatch!597 (cache!4541 MutableMap!4699) (totalInput!4447 BalanceConc!28398)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!596)

(declare-fun array_inv!5627 (array!17518) Bool)

(declare-fun array_inv!5628 (array!17520) Bool)

(assert (=> b!4757465 (= e!2968104 (and tp!1351455 tp!1351459 tp!1351456 (array_inv!5627 (_keys!5150 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))) (array_inv!5628 (_values!5123 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))) e!2968098))))

(declare-fun b!4757466 () Bool)

(declare-fun e!2968110 () Bool)

(declare-fun e!2968111 () Bool)

(assert (=> b!4757466 (= e!2968110 e!2968111)))

(declare-fun res!2018330 () Bool)

(assert (=> b!4757466 (=> (not res!2018330) (not e!2968111))))

(declare-fun lt!1923459 () tuple2!55106)

(declare-fun contains!16607 (MutableMap!4699 tuple2!55106) Bool)

(assert (=> b!4757466 (= res!2018330 (contains!16607 (cache!4541 thiss!28972) lt!1923459))))

(declare-fun z!490 () (InoxSet Context!5806))

(declare-fun from!930 () Int)

(assert (=> b!4757466 (= lt!1923459 (tuple2!55107 z!490 from!930))))

(declare-fun e!2968109 () Bool)

(declare-fun e!2968107 () Bool)

(declare-fun b!4757467 () Bool)

(declare-fun e!2968106 () Bool)

(declare-fun inv!68654 (BalanceConc!28398) Bool)

(assert (=> b!4757467 (= e!2968106 (and e!2968109 (inv!68654 (totalInput!4447 thiss!28972)) e!2968107))))

(declare-fun b!4757468 () Bool)

(declare-fun e!2968099 () Bool)

(declare-fun e!2968103 () Bool)

(assert (=> b!4757468 (= e!2968099 e!2968103)))

(declare-fun b!4757469 () Bool)

(declare-fun tp!1351454 () Bool)

(declare-fun inv!68655 (Conc!14454) Bool)

(assert (=> b!4757469 (= e!2968107 (and (inv!68655 (c!811823 (totalInput!4447 thiss!28972))) tp!1351454))))

(declare-fun b!4757470 () Bool)

(declare-fun e!2968102 () Bool)

(declare-fun lt!1923457 () MutLongMap!4815)

(get-info :version)

(assert (=> b!4757470 (= e!2968102 (and e!2968099 ((_ is LongMap!4815) lt!1923457)))))

(assert (=> b!4757470 (= lt!1923457 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))

(declare-fun b!4757471 () Bool)

(declare-fun e!2968101 () Bool)

(declare-fun tp!1351457 () Bool)

(assert (=> b!4757471 (= e!2968101 tp!1351457)))

(declare-fun setElem!26929 () Context!5806)

(declare-fun setNonEmpty!26929 () Bool)

(declare-fun setRes!26929 () Bool)

(declare-fun tp!1351460 () Bool)

(declare-fun inv!68656 (Context!5806) Bool)

(assert (=> setNonEmpty!26929 (= setRes!26929 (and tp!1351460 (inv!68656 setElem!26929) e!2968101))))

(declare-fun setRest!26929 () (InoxSet Context!5806))

(assert (=> setNonEmpty!26929 (= z!490 ((_ map or) (store ((as const (Array Context!5806 Bool)) false) setElem!26929 true) setRest!26929))))

(declare-fun b!4757472 () Bool)

(declare-fun e!2968108 () Bool)

(declare-fun e!2968112 () Bool)

(assert (=> b!4757472 (= e!2968108 e!2968112)))

(declare-fun res!2018329 () Bool)

(assert (=> b!4757472 (=> (not res!2018329) (not e!2968112))))

(declare-fun lt!1923461 () Int)

(assert (=> b!4757472 (= res!2018329 (<= from!930 lt!1923461))))

(declare-fun size!36014 (BalanceConc!28398) Int)

(assert (=> b!4757472 (= lt!1923461 (size!36014 (totalInput!4447 thiss!28972)))))

(declare-fun mapNonEmpty!21434 () Bool)

(declare-fun mapRes!21434 () Bool)

(declare-fun tp!1351453 () Bool)

(declare-fun tp!1351451 () Bool)

(assert (=> mapNonEmpty!21434 (= mapRes!21434 (and tp!1351453 tp!1351451))))

(declare-fun mapValue!21434 () List!53345)

(declare-fun mapKey!21434 () (_ BitVec 32))

(declare-fun mapRest!21434 () (Array (_ BitVec 32) List!53345))

(assert (=> mapNonEmpty!21434 (= (arr!7816 (_values!5123 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))) (store mapRest!21434 mapKey!21434 mapValue!21434))))

(declare-fun b!4757474 () Bool)

(declare-fun e!2968100 () Bool)

(declare-datatypes ((Option!12575 0))(
  ( (None!12574) (Some!12574 (v!47295 Int)) )
))
(declare-fun lt!1923460 () Option!12575)

(declare-fun isDefined!9763 (Option!12575) Bool)

(assert (=> b!4757474 (= e!2968100 (isDefined!9763 lt!1923460))))

(declare-fun b!4757475 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!63 ((InoxSet Context!5806) Int BalanceConc!28398 Int) Int)

(declare-fun apply!12506 (MutableMap!4699 tuple2!55106) Int)

(assert (=> b!4757475 (= e!2968112 (= (findLongestMatchInnerZipperFastV2!63 z!490 from!930 (totalInput!4447 thiss!28972) lt!1923461) (apply!12506 (cache!4541 thiss!28972) lt!1923459)))))

(declare-fun b!4757473 () Bool)

(assert (=> b!4757473 (= e!2968103 e!2968104)))

(declare-fun res!2018333 () Bool)

(assert (=> start!486520 (=> (not res!2018333) (not e!2968110))))

(declare-fun validCacheMapFindLongestMatch!103 (MutableMap!4699 BalanceConc!28398) Bool)

(assert (=> start!486520 (= res!2018333 (validCacheMapFindLongestMatch!103 (cache!4541 thiss!28972) (totalInput!4447 thiss!28972)))))

(assert (=> start!486520 e!2968110))

(declare-fun inv!68657 (CacheFindLongestMatch!596) Bool)

(assert (=> start!486520 (and (inv!68657 thiss!28972) e!2968106)))

(declare-fun condSetEmpty!26929 () Bool)

(assert (=> start!486520 (= condSetEmpty!26929 (= z!490 ((as const (Array Context!5806 Bool)) false)))))

(assert (=> start!486520 setRes!26929))

(assert (=> start!486520 true))

(declare-fun setIsEmpty!26929 () Bool)

(assert (=> setIsEmpty!26929 setRes!26929))

(declare-fun b!4757476 () Bool)

(assert (=> b!4757476 (= e!2968111 (not e!2968100))))

(declare-fun res!2018331 () Bool)

(assert (=> b!4757476 (=> res!2018331 e!2968100)))

(declare-fun isEmpty!29257 (Option!12575) Bool)

(assert (=> b!4757476 (= res!2018331 (isEmpty!29257 lt!1923460))))

(assert (=> b!4757476 (= lt!1923460 (Some!12574 (apply!12506 (cache!4541 thiss!28972) lt!1923459)))))

(assert (=> b!4757476 e!2968108))

(declare-fun res!2018332 () Bool)

(assert (=> b!4757476 (=> (not res!2018332) (not e!2968108))))

(assert (=> b!4757476 (= res!2018332 (>= from!930 0))))

(declare-datatypes ((Unit!137736 0))(
  ( (Unit!137737) )
))
(declare-fun lt!1923458 () Unit!137736)

(declare-fun lemmaIfInCacheThenValid!74 (CacheFindLongestMatch!596 (InoxSet Context!5806) Int BalanceConc!28398) Unit!137736)

(assert (=> b!4757476 (= lt!1923458 (lemmaIfInCacheThenValid!74 thiss!28972 z!490 from!930 (totalInput!4447 thiss!28972)))))

(assert (=> b!4757477 (= e!2968109 (and e!2968102 tp!1351458))))

(declare-fun mapIsEmpty!21434 () Bool)

(assert (=> mapIsEmpty!21434 mapRes!21434))

(declare-fun b!4757478 () Bool)

(declare-fun tp!1351452 () Bool)

(assert (=> b!4757478 (= e!2968098 (and tp!1351452 mapRes!21434))))

(declare-fun condMapEmpty!21434 () Bool)

(declare-fun mapDefault!21434 () List!53345)

(assert (=> b!4757478 (= condMapEmpty!21434 (= (arr!7816 (_values!5123 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53345)) mapDefault!21434)))))

(assert (= (and start!486520 res!2018333) b!4757466))

(assert (= (and b!4757466 res!2018330) b!4757476))

(assert (= (and b!4757476 res!2018332) b!4757472))

(assert (= (and b!4757472 res!2018329) b!4757475))

(assert (= (and b!4757476 (not res!2018331)) b!4757474))

(assert (= (and b!4757478 condMapEmpty!21434) mapIsEmpty!21434))

(assert (= (and b!4757478 (not condMapEmpty!21434)) mapNonEmpty!21434))

(assert (= b!4757465 b!4757478))

(assert (= b!4757473 b!4757465))

(assert (= b!4757468 b!4757473))

(assert (= (and b!4757470 ((_ is LongMap!4815) (v!47294 (underlying!9838 (cache!4541 thiss!28972))))) b!4757468))

(assert (= b!4757477 b!4757470))

(assert (= (and b!4757467 ((_ is HashMap!4699) (cache!4541 thiss!28972))) b!4757477))

(assert (= b!4757467 b!4757469))

(assert (= start!486520 b!4757467))

(assert (= (and start!486520 condSetEmpty!26929) setIsEmpty!26929))

(assert (= (and start!486520 (not condSetEmpty!26929)) setNonEmpty!26929))

(assert (= setNonEmpty!26929 b!4757471))

(declare-fun m!5727181 () Bool)

(assert (=> setNonEmpty!26929 m!5727181))

(declare-fun m!5727183 () Bool)

(assert (=> b!4757465 m!5727183))

(declare-fun m!5727185 () Bool)

(assert (=> b!4757465 m!5727185))

(declare-fun m!5727187 () Bool)

(assert (=> b!4757469 m!5727187))

(declare-fun m!5727189 () Bool)

(assert (=> b!4757476 m!5727189))

(declare-fun m!5727191 () Bool)

(assert (=> b!4757476 m!5727191))

(declare-fun m!5727193 () Bool)

(assert (=> b!4757476 m!5727193))

(declare-fun m!5727195 () Bool)

(assert (=> b!4757472 m!5727195))

(declare-fun m!5727197 () Bool)

(assert (=> start!486520 m!5727197))

(declare-fun m!5727199 () Bool)

(assert (=> start!486520 m!5727199))

(declare-fun m!5727201 () Bool)

(assert (=> b!4757467 m!5727201))

(declare-fun m!5727203 () Bool)

(assert (=> b!4757475 m!5727203))

(assert (=> b!4757475 m!5727191))

(declare-fun m!5727205 () Bool)

(assert (=> b!4757466 m!5727205))

(declare-fun m!5727207 () Bool)

(assert (=> b!4757474 m!5727207))

(declare-fun m!5727209 () Bool)

(assert (=> mapNonEmpty!21434 m!5727209))

(check-sat (not b_next!129881) (not b!4757474) (not setNonEmpty!26929) b_and!340775 (not b!4757472) (not b_next!129879) (not b!4757467) (not b!4757476) b_and!340777 (not b!4757465) (not mapNonEmpty!21434) (not b!4757471) (not b!4757478) (not start!486520) (not b!4757466) (not b!4757469) (not b!4757475))
(check-sat b_and!340775 b_and!340777 (not b_next!129881) (not b_next!129879))
(get-model)

(declare-fun d!1521045 () Bool)

(declare-fun isBalanced!3899 (Conc!14454) Bool)

(assert (=> d!1521045 (= (inv!68654 (totalInput!4447 thiss!28972)) (isBalanced!3899 (c!811823 (totalInput!4447 thiss!28972))))))

(declare-fun bs!1146970 () Bool)

(assert (= bs!1146970 d!1521045))

(declare-fun m!5727211 () Bool)

(assert (=> bs!1146970 m!5727211))

(assert (=> b!4757467 d!1521045))

(declare-fun d!1521047 () Bool)

(declare-fun lambda!223575 () Int)

(declare-fun forall!11810 (List!53344 Int) Bool)

(assert (=> d!1521047 (= (inv!68656 setElem!26929) (forall!11810 (exprs!3403 setElem!26929) lambda!223575))))

(declare-fun bs!1146971 () Bool)

(assert (= bs!1146971 d!1521047))

(declare-fun m!5727213 () Bool)

(assert (=> bs!1146971 m!5727213))

(assert (=> setNonEmpty!26929 d!1521047))

(declare-fun b!4757495 () Bool)

(declare-fun e!2968124 () Int)

(declare-fun lt!1923468 () Int)

(assert (=> b!4757495 (= e!2968124 (+ 1 lt!1923468))))

(declare-fun b!4757497 () Bool)

(declare-fun e!2968126 () Int)

(assert (=> b!4757497 (= e!2968126 e!2968124)))

(declare-fun lt!1923470 () (InoxSet Context!5806))

(declare-fun derivationStepZipper!563 ((InoxSet Context!5806) C!26224) (InoxSet Context!5806))

(declare-fun apply!12507 (BalanceConc!28398 Int) C!26224)

(assert (=> b!4757497 (= lt!1923470 (derivationStepZipper!563 z!490 (apply!12507 (totalInput!4447 thiss!28972) from!930)))))

(assert (=> b!4757497 (= lt!1923468 (findLongestMatchInnerZipperFastV2!63 lt!1923470 (+ from!930 1) (totalInput!4447 thiss!28972) lt!1923461))))

(declare-fun c!811832 () Bool)

(assert (=> b!4757497 (= c!811832 (> lt!1923468 0))))

(declare-fun b!4757498 () Bool)

(declare-fun e!2968127 () Int)

(assert (=> b!4757498 (= e!2968127 0)))

(declare-fun b!4757499 () Bool)

(assert (=> b!4757499 (= e!2968127 1)))

(declare-fun b!4757500 () Bool)

(declare-fun e!2968125 () Bool)

(assert (=> b!4757500 (= e!2968125 (<= from!930 (size!36014 (totalInput!4447 thiss!28972))))))

(declare-fun b!4757501 () Bool)

(assert (=> b!4757501 (= e!2968126 0)))

(declare-fun b!4757502 () Bool)

(declare-fun e!2968123 () Bool)

(declare-fun lostCauseZipper!666 ((InoxSet Context!5806)) Bool)

(assert (=> b!4757502 (= e!2968123 (lostCauseZipper!666 z!490))))

(declare-fun b!4757496 () Bool)

(declare-fun c!811830 () Bool)

(declare-fun nullableZipper!786 ((InoxSet Context!5806)) Bool)

(assert (=> b!4757496 (= c!811830 (nullableZipper!786 lt!1923470))))

(assert (=> b!4757496 (= e!2968124 e!2968127)))

(declare-fun d!1521049 () Bool)

(declare-fun lt!1923469 () Int)

(assert (=> d!1521049 (and (>= lt!1923469 0) (<= lt!1923469 (- lt!1923461 from!930)))))

(assert (=> d!1521049 (= lt!1923469 e!2968126)))

(declare-fun c!811831 () Bool)

(assert (=> d!1521049 (= c!811831 e!2968123)))

(declare-fun res!2018338 () Bool)

(assert (=> d!1521049 (=> res!2018338 e!2968123)))

(assert (=> d!1521049 (= res!2018338 (= from!930 lt!1923461))))

(assert (=> d!1521049 e!2968125))

(declare-fun res!2018339 () Bool)

(assert (=> d!1521049 (=> (not res!2018339) (not e!2968125))))

(assert (=> d!1521049 (= res!2018339 (>= from!930 0))))

(assert (=> d!1521049 (= (findLongestMatchInnerZipperFastV2!63 z!490 from!930 (totalInput!4447 thiss!28972) lt!1923461) lt!1923469)))

(assert (= (and d!1521049 res!2018339) b!4757500))

(assert (= (and d!1521049 (not res!2018338)) b!4757502))

(assert (= (and d!1521049 c!811831) b!4757501))

(assert (= (and d!1521049 (not c!811831)) b!4757497))

(assert (= (and b!4757497 c!811832) b!4757495))

(assert (= (and b!4757497 (not c!811832)) b!4757496))

(assert (= (and b!4757496 c!811830) b!4757499))

(assert (= (and b!4757496 (not c!811830)) b!4757498))

(declare-fun m!5727215 () Bool)

(assert (=> b!4757497 m!5727215))

(assert (=> b!4757497 m!5727215))

(declare-fun m!5727217 () Bool)

(assert (=> b!4757497 m!5727217))

(declare-fun m!5727219 () Bool)

(assert (=> b!4757497 m!5727219))

(assert (=> b!4757500 m!5727195))

(declare-fun m!5727221 () Bool)

(assert (=> b!4757502 m!5727221))

(declare-fun m!5727223 () Bool)

(assert (=> b!4757496 m!5727223))

(assert (=> b!4757475 d!1521049))

(declare-fun e!2968135 () Int)

(declare-fun lt!1923554 () (_ BitVec 64))

(declare-fun b!4757515 () Bool)

(declare-datatypes ((Option!12576 0))(
  ( (None!12575) (Some!12575 (v!47296 tuple2!55108)) )
))
(declare-fun get!17925 (Option!12576) tuple2!55108)

(declare-fun getPair!611 (List!53345 tuple2!55106) Option!12576)

(declare-fun apply!12508 (MutLongMap!4815 (_ BitVec 64)) List!53345)

(assert (=> b!4757515 (= e!2968135 (_2!30848 (get!17925 (getPair!611 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923554) lt!1923459))))))

(declare-fun hash!4512 (Hashable!6476 tuple2!55106) (_ BitVec 64))

(assert (=> b!4757515 (= lt!1923554 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459))))

(declare-fun c!811840 () Bool)

(declare-datatypes ((tuple2!55110 0))(
  ( (tuple2!55111 (_1!30849 (_ BitVec 64)) (_2!30849 List!53345)) )
))
(declare-datatypes ((List!53347 0))(
  ( (Nil!53223) (Cons!53223 (h!59634 tuple2!55110) (t!360697 List!53347)) )
))
(declare-fun contains!16608 (List!53347 tuple2!55110) Bool)

(declare-datatypes ((ListLongMap!4589 0))(
  ( (ListLongMap!4590 (toList!6193 List!53347)) )
))
(declare-fun map!11830 (MutLongMap!4815) ListLongMap!4589)

(assert (=> b!4757515 (= c!811840 (not (contains!16608 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))) (tuple2!55111 lt!1923554 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923554)))))))

(declare-fun lt!1923538 () Unit!137736)

(declare-fun e!2968134 () Unit!137736)

(assert (=> b!4757515 (= lt!1923538 e!2968134)))

(declare-fun lt!1923555 () Unit!137736)

(declare-fun lambda!223582 () Int)

(declare-fun forallContained!3821 (List!53347 Int tuple2!55110) Unit!137736)

(assert (=> b!4757515 (= lt!1923555 (forallContained!3821 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))) lambda!223582 (tuple2!55111 lt!1923554 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923554))))))

(declare-fun lt!1923543 () ListLongMap!4589)

(assert (=> b!4757515 (= lt!1923543 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972)))))))

(declare-fun lt!1923558 () Unit!137736)

(declare-fun lemmaGetPairGetSameValueAsMap!43 (ListLongMap!4589 tuple2!55106 Int Hashable!6476) Unit!137736)

(assert (=> b!4757515 (= lt!1923558 (lemmaGetPairGetSameValueAsMap!43 lt!1923543 lt!1923459 (_2!30848 (get!17925 (getPair!611 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923554) lt!1923459))) (hashF!12286 (cache!4541 thiss!28972))))))

(declare-fun lt!1923531 () Unit!137736)

(declare-fun lemmaInGenMapThenLongMapContainsHash!817 (ListLongMap!4589 tuple2!55106 Hashable!6476) Unit!137736)

(assert (=> b!4757515 (= lt!1923531 (lemmaInGenMapThenLongMapContainsHash!817 lt!1923543 lt!1923459 (hashF!12286 (cache!4541 thiss!28972))))))

(declare-fun contains!16609 (ListLongMap!4589 (_ BitVec 64)) Bool)

(assert (=> b!4757515 (contains!16609 lt!1923543 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459))))

(declare-fun lt!1923535 () Unit!137736)

(assert (=> b!4757515 (= lt!1923535 lt!1923531)))

(declare-fun lt!1923544 () (_ BitVec 64))

(assert (=> b!4757515 (= lt!1923544 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459))))

(declare-fun lt!1923557 () List!53345)

(declare-fun apply!12509 (ListLongMap!4589 (_ BitVec 64)) List!53345)

(assert (=> b!4757515 (= lt!1923557 (apply!12509 lt!1923543 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459)))))

(declare-fun lt!1923532 () Unit!137736)

(declare-fun lemmaGetValueImpliesTupleContained!416 (ListLongMap!4589 (_ BitVec 64) List!53345) Unit!137736)

(assert (=> b!4757515 (= lt!1923532 (lemmaGetValueImpliesTupleContained!416 lt!1923543 lt!1923544 lt!1923557))))

(assert (=> b!4757515 (contains!16608 (toList!6193 lt!1923543) (tuple2!55111 lt!1923544 lt!1923557))))

(declare-fun lt!1923537 () Unit!137736)

(assert (=> b!4757515 (= lt!1923537 lt!1923532)))

(declare-fun lt!1923556 () Unit!137736)

(assert (=> b!4757515 (= lt!1923556 (forallContained!3821 (toList!6193 lt!1923543) lambda!223582 (tuple2!55111 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459) (apply!12509 lt!1923543 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459)))))))

(declare-fun lt!1923559 () Unit!137736)

(declare-fun lemmaInGenMapThenGetPairDefined!407 (ListLongMap!4589 tuple2!55106 Hashable!6476) Unit!137736)

(assert (=> b!4757515 (= lt!1923559 (lemmaInGenMapThenGetPairDefined!407 lt!1923543 lt!1923459 (hashF!12286 (cache!4541 thiss!28972))))))

(declare-fun lt!1923540 () Unit!137736)

(assert (=> b!4757515 (= lt!1923540 (lemmaInGenMapThenLongMapContainsHash!817 lt!1923543 lt!1923459 (hashF!12286 (cache!4541 thiss!28972))))))

(declare-fun lt!1923533 () Unit!137736)

(assert (=> b!4757515 (= lt!1923533 lt!1923540)))

(declare-fun lt!1923560 () (_ BitVec 64))

(assert (=> b!4757515 (= lt!1923560 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459))))

(declare-fun lt!1923549 () List!53345)

(assert (=> b!4757515 (= lt!1923549 (apply!12509 lt!1923543 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459)))))

(declare-fun lt!1923545 () Unit!137736)

(assert (=> b!4757515 (= lt!1923545 (lemmaGetValueImpliesTupleContained!416 lt!1923543 lt!1923560 lt!1923549))))

(assert (=> b!4757515 (contains!16608 (toList!6193 lt!1923543) (tuple2!55111 lt!1923560 lt!1923549))))

(declare-fun lt!1923534 () Unit!137736)

(assert (=> b!4757515 (= lt!1923534 lt!1923545)))

(declare-fun lt!1923536 () Unit!137736)

(assert (=> b!4757515 (= lt!1923536 (forallContained!3821 (toList!6193 lt!1923543) lambda!223582 (tuple2!55111 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459) (apply!12509 lt!1923543 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459)))))))

(declare-fun isDefined!9764 (Option!12576) Bool)

(assert (=> b!4757515 (isDefined!9764 (getPair!611 (apply!12509 lt!1923543 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459)) lt!1923459))))

(declare-fun lt!1923548 () Unit!137736)

(assert (=> b!4757515 (= lt!1923548 lt!1923559)))

(declare-fun get!17926 (Option!12575) Int)

(declare-fun getValueByKey!2122 (List!53345 tuple2!55106) Option!12575)

(declare-datatypes ((ListMap!5691 0))(
  ( (ListMap!5692 (toList!6194 List!53345)) )
))
(declare-fun extractMap!2111 (List!53347) ListMap!5691)

(assert (=> b!4757515 (= (_2!30848 (get!17925 (getPair!611 (apply!12509 lt!1923543 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459)) lt!1923459))) (get!17926 (getValueByKey!2122 (toList!6194 (extractMap!2111 (toList!6193 lt!1923543))) lt!1923459)))))

(declare-fun lt!1923552 () Unit!137736)

(assert (=> b!4757515 (= lt!1923552 lt!1923558)))

(declare-fun b!4757516 () Bool)

(assert (=> b!4757516 false))

(declare-fun lt!1923541 () Unit!137736)

(declare-fun lt!1923539 () Unit!137736)

(assert (=> b!4757516 (= lt!1923541 lt!1923539)))

(declare-fun lt!1923546 () List!53347)

(declare-fun lt!1923553 () List!53345)

(assert (=> b!4757516 (contains!16608 lt!1923546 (tuple2!55111 lt!1923554 lt!1923553))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!889 (List!53347 (_ BitVec 64) List!53345) Unit!137736)

(assert (=> b!4757516 (= lt!1923539 (lemmaGetValueByKeyImpliesContainsTuple!889 lt!1923546 lt!1923554 lt!1923553))))

(assert (=> b!4757516 (= lt!1923553 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923554))))

(assert (=> b!4757516 (= lt!1923546 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))

(declare-fun lt!1923542 () Unit!137736)

(declare-fun lt!1923547 () Unit!137736)

(assert (=> b!4757516 (= lt!1923542 lt!1923547)))

(declare-fun lt!1923550 () List!53347)

(declare-datatypes ((Option!12577 0))(
  ( (None!12576) (Some!12576 (v!47297 List!53345)) )
))
(declare-fun isDefined!9765 (Option!12577) Bool)

(declare-fun getValueByKey!2123 (List!53347 (_ BitVec 64)) Option!12577)

(assert (=> b!4757516 (isDefined!9765 (getValueByKey!2123 lt!1923550 lt!1923554))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1947 (List!53347 (_ BitVec 64)) Unit!137736)

(assert (=> b!4757516 (= lt!1923547 (lemmaContainsKeyImpliesGetValueByKeyDefined!1947 lt!1923550 lt!1923554))))

(assert (=> b!4757516 (= lt!1923550 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))

(declare-fun Unit!137738 () Unit!137736)

(assert (=> b!4757516 (= e!2968134 Unit!137738)))

(declare-fun b!4757517 () Bool)

(declare-fun lt!1923551 () Int)

(declare-fun e!2968136 () Bool)

(declare-fun dynLambda!21910 (Int tuple2!55106) Int)

(assert (=> b!4757517 (= e!2968136 (= lt!1923551 (dynLambda!21910 (defaultValue!4870 (cache!4541 thiss!28972)) lt!1923459)))))

(declare-fun b!4757518 () Bool)

(assert (=> b!4757518 (= e!2968135 (dynLambda!21910 (defaultValue!4870 (cache!4541 thiss!28972)) lt!1923459))))

(declare-fun d!1521051 () Bool)

(assert (=> d!1521051 e!2968136))

(declare-fun c!811839 () Bool)

(assert (=> d!1521051 (= c!811839 (contains!16607 (cache!4541 thiss!28972) lt!1923459))))

(assert (=> d!1521051 (= lt!1923551 e!2968135)))

(declare-fun c!811841 () Bool)

(assert (=> d!1521051 (= c!811841 (not (contains!16607 (cache!4541 thiss!28972) lt!1923459)))))

(declare-fun valid!3834 (MutableMap!4699) Bool)

(assert (=> d!1521051 (valid!3834 (cache!4541 thiss!28972))))

(assert (=> d!1521051 (= (apply!12506 (cache!4541 thiss!28972) lt!1923459) lt!1923551)))

(declare-fun b!4757519 () Bool)

(declare-fun Unit!137739 () Unit!137736)

(assert (=> b!4757519 (= e!2968134 Unit!137739)))

(declare-fun b!4757520 () Bool)

(declare-fun map!11831 (MutableMap!4699) ListMap!5691)

(assert (=> b!4757520 (= e!2968136 (= lt!1923551 (get!17926 (getValueByKey!2122 (toList!6194 (map!11831 (cache!4541 thiss!28972))) lt!1923459))))))

(assert (= (and d!1521051 c!811841) b!4757518))

(assert (= (and d!1521051 (not c!811841)) b!4757515))

(assert (= (and b!4757515 c!811840) b!4757516))

(assert (= (and b!4757515 (not c!811840)) b!4757519))

(assert (= (and d!1521051 c!811839) b!4757520))

(assert (= (and d!1521051 (not c!811839)) b!4757517))

(declare-fun b_lambda!183749 () Bool)

(assert (=> (not b_lambda!183749) (not b!4757517)))

(declare-fun t!360696 () Bool)

(declare-fun tb!257401 () Bool)

(assert (=> (and b!4757477 (= (defaultValue!4870 (cache!4541 thiss!28972)) (defaultValue!4870 (cache!4541 thiss!28972))) t!360696) tb!257401))

(declare-fun result!318836 () Bool)

(assert (=> tb!257401 (= result!318836 true)))

(assert (=> b!4757517 t!360696))

(declare-fun b_and!340779 () Bool)

(assert (= b_and!340775 (and (=> t!360696 result!318836) b_and!340779)))

(declare-fun b_lambda!183751 () Bool)

(assert (=> (not b_lambda!183751) (not b!4757518)))

(assert (=> b!4757518 t!360696))

(declare-fun b_and!340781 () Bool)

(assert (= b_and!340779 (and (=> t!360696 result!318836) b_and!340781)))

(assert (=> d!1521051 m!5727205))

(declare-fun m!5727225 () Bool)

(assert (=> d!1521051 m!5727225))

(declare-fun m!5727227 () Bool)

(assert (=> b!4757518 m!5727227))

(declare-fun m!5727229 () Bool)

(assert (=> b!4757515 m!5727229))

(declare-fun m!5727231 () Bool)

(assert (=> b!4757515 m!5727231))

(declare-fun m!5727233 () Bool)

(assert (=> b!4757515 m!5727233))

(declare-fun m!5727235 () Bool)

(assert (=> b!4757515 m!5727235))

(declare-fun m!5727237 () Bool)

(assert (=> b!4757515 m!5727237))

(declare-fun m!5727239 () Bool)

(assert (=> b!4757515 m!5727239))

(declare-fun m!5727241 () Bool)

(assert (=> b!4757515 m!5727241))

(declare-fun m!5727243 () Bool)

(assert (=> b!4757515 m!5727243))

(declare-fun m!5727245 () Bool)

(assert (=> b!4757515 m!5727245))

(assert (=> b!4757515 m!5727237))

(declare-fun m!5727247 () Bool)

(assert (=> b!4757515 m!5727247))

(declare-fun m!5727249 () Bool)

(assert (=> b!4757515 m!5727249))

(assert (=> b!4757515 m!5727245))

(declare-fun m!5727251 () Bool)

(assert (=> b!4757515 m!5727251))

(assert (=> b!4757515 m!5727239))

(declare-fun m!5727253 () Bool)

(assert (=> b!4757515 m!5727253))

(declare-fun m!5727255 () Bool)

(assert (=> b!4757515 m!5727255))

(declare-fun m!5727257 () Bool)

(assert (=> b!4757515 m!5727257))

(assert (=> b!4757515 m!5727245))

(declare-fun m!5727259 () Bool)

(assert (=> b!4757515 m!5727259))

(declare-fun m!5727261 () Bool)

(assert (=> b!4757515 m!5727261))

(assert (=> b!4757515 m!5727261))

(declare-fun m!5727263 () Bool)

(assert (=> b!4757515 m!5727263))

(declare-fun m!5727265 () Bool)

(assert (=> b!4757515 m!5727265))

(assert (=> b!4757515 m!5727229))

(declare-fun m!5727267 () Bool)

(assert (=> b!4757515 m!5727267))

(assert (=> b!4757515 m!5727263))

(declare-fun m!5727269 () Bool)

(assert (=> b!4757515 m!5727269))

(declare-fun m!5727271 () Bool)

(assert (=> b!4757515 m!5727271))

(assert (=> b!4757515 m!5727233))

(assert (=> b!4757515 m!5727239))

(declare-fun m!5727273 () Bool)

(assert (=> b!4757515 m!5727273))

(declare-fun m!5727275 () Bool)

(assert (=> b!4757520 m!5727275))

(declare-fun m!5727277 () Bool)

(assert (=> b!4757520 m!5727277))

(assert (=> b!4757520 m!5727277))

(declare-fun m!5727279 () Bool)

(assert (=> b!4757520 m!5727279))

(assert (=> b!4757517 m!5727227))

(assert (=> b!4757516 m!5727249))

(declare-fun m!5727281 () Bool)

(assert (=> b!4757516 m!5727281))

(declare-fun m!5727283 () Bool)

(assert (=> b!4757516 m!5727283))

(declare-fun m!5727285 () Bool)

(assert (=> b!4757516 m!5727285))

(assert (=> b!4757516 m!5727261))

(declare-fun m!5727287 () Bool)

(assert (=> b!4757516 m!5727287))

(assert (=> b!4757516 m!5727281))

(declare-fun m!5727289 () Bool)

(assert (=> b!4757516 m!5727289))

(assert (=> b!4757475 d!1521051))

(declare-fun b!4757526 () Bool)

(assert (=> b!4757526 true))

(declare-fun d!1521053 () Bool)

(declare-fun res!2018344 () Bool)

(declare-fun e!2968139 () Bool)

(assert (=> d!1521053 (=> (not res!2018344) (not e!2968139))))

(assert (=> d!1521053 (= res!2018344 (valid!3834 (cache!4541 thiss!28972)))))

(assert (=> d!1521053 (= (validCacheMapFindLongestMatch!103 (cache!4541 thiss!28972) (totalInput!4447 thiss!28972)) e!2968139)))

(declare-fun b!4757525 () Bool)

(declare-fun res!2018345 () Bool)

(assert (=> b!4757525 (=> (not res!2018345) (not e!2968139))))

(declare-fun invariantList!1636 (List!53345) Bool)

(assert (=> b!4757525 (= res!2018345 (invariantList!1636 (toList!6194 (map!11831 (cache!4541 thiss!28972)))))))

(declare-fun lambda!223585 () Int)

(declare-fun forall!11811 (List!53345 Int) Bool)

(assert (=> b!4757526 (= e!2968139 (forall!11811 (toList!6194 (map!11831 (cache!4541 thiss!28972))) lambda!223585))))

(assert (= (and d!1521053 res!2018344) b!4757525))

(assert (= (and b!4757525 res!2018345) b!4757526))

(assert (=> d!1521053 m!5727225))

(assert (=> b!4757525 m!5727275))

(declare-fun m!5727292 () Bool)

(assert (=> b!4757525 m!5727292))

(assert (=> b!4757526 m!5727275))

(declare-fun m!5727294 () Bool)

(assert (=> b!4757526 m!5727294))

(assert (=> start!486520 d!1521053))

(declare-fun d!1521055 () Bool)

(declare-fun res!2018348 () Bool)

(declare-fun e!2968142 () Bool)

(assert (=> d!1521055 (=> (not res!2018348) (not e!2968142))))

(assert (=> d!1521055 (= res!2018348 ((_ is HashMap!4699) (cache!4541 thiss!28972)))))

(assert (=> d!1521055 (= (inv!68657 thiss!28972) e!2968142)))

(declare-fun b!4757531 () Bool)

(assert (=> b!4757531 (= e!2968142 (validCacheMapFindLongestMatch!103 (cache!4541 thiss!28972) (totalInput!4447 thiss!28972)))))

(assert (= (and d!1521055 res!2018348) b!4757531))

(assert (=> b!4757531 m!5727197))

(assert (=> start!486520 d!1521055))

(declare-fun bs!1146972 () Bool)

(declare-fun b!4757558 () Bool)

(assert (= bs!1146972 (and b!4757558 b!4757515)))

(declare-fun lambda!223588 () Int)

(assert (=> bs!1146972 (= lambda!223588 lambda!223582)))

(declare-fun bm!333593 () Bool)

(declare-fun call!333600 () Bool)

(declare-fun call!333599 () Option!12576)

(assert (=> bm!333593 (= call!333600 (isDefined!9764 call!333599))))

(declare-fun bm!333594 () Bool)

(declare-fun call!333602 () List!53345)

(assert (=> bm!333594 (= call!333599 (getPair!611 call!333602 lt!1923459))))

(declare-fun b!4757554 () Bool)

(declare-fun e!2968160 () Unit!137736)

(declare-fun e!2968157 () Unit!137736)

(assert (=> b!4757554 (= e!2968160 e!2968157)))

(declare-fun res!2018355 () Bool)

(declare-fun call!333601 () Bool)

(assert (=> b!4757554 (= res!2018355 call!333601)))

(declare-fun e!2968159 () Bool)

(assert (=> b!4757554 (=> (not res!2018355) (not e!2968159))))

(declare-fun c!811850 () Bool)

(assert (=> b!4757554 (= c!811850 e!2968159)))

(declare-fun b!4757555 () Bool)

(assert (=> b!4757555 (= e!2968159 call!333600)))

(declare-fun bm!333595 () Bool)

(declare-fun call!333598 () ListLongMap!4589)

(assert (=> bm!333595 (= call!333598 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972)))))))

(declare-fun b!4757556 () Bool)

(declare-fun Unit!137740 () Unit!137736)

(assert (=> b!4757556 (= e!2968157 Unit!137740)))

(declare-fun b!4757557 () Bool)

(assert (=> b!4757557 false))

(declare-fun lt!1923614 () Unit!137736)

(declare-fun lt!1923605 () Unit!137736)

(assert (=> b!4757557 (= lt!1923614 lt!1923605)))

(declare-fun lt!1923616 () List!53347)

(declare-fun lt!1923610 () (_ BitVec 64))

(declare-fun lt!1923613 () List!53345)

(assert (=> b!4757557 (contains!16608 lt!1923616 (tuple2!55111 lt!1923610 lt!1923613))))

(assert (=> b!4757557 (= lt!1923605 (lemmaGetValueByKeyImpliesContainsTuple!889 lt!1923616 lt!1923610 lt!1923613))))

(assert (=> b!4757557 (= lt!1923613 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923610))))

(assert (=> b!4757557 (= lt!1923616 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))

(declare-fun lt!1923606 () Unit!137736)

(declare-fun lt!1923619 () Unit!137736)

(assert (=> b!4757557 (= lt!1923606 lt!1923619)))

(declare-fun lt!1923611 () List!53347)

(assert (=> b!4757557 (isDefined!9765 (getValueByKey!2123 lt!1923611 lt!1923610))))

(assert (=> b!4757557 (= lt!1923619 (lemmaContainsKeyImpliesGetValueByKeyDefined!1947 lt!1923611 lt!1923610))))

(assert (=> b!4757557 (= lt!1923611 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))

(declare-fun lt!1923607 () Unit!137736)

(declare-fun lt!1923601 () Unit!137736)

(assert (=> b!4757557 (= lt!1923607 lt!1923601)))

(declare-fun lt!1923609 () List!53347)

(declare-fun containsKey!3630 (List!53347 (_ BitVec 64)) Bool)

(assert (=> b!4757557 (containsKey!3630 lt!1923609 lt!1923610)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!176 (List!53347 (_ BitVec 64)) Unit!137736)

(assert (=> b!4757557 (= lt!1923601 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!176 lt!1923609 lt!1923610))))

(assert (=> b!4757557 (= lt!1923609 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))

(declare-fun e!2968158 () Unit!137736)

(declare-fun Unit!137741 () Unit!137736)

(assert (=> b!4757557 (= e!2968158 Unit!137741)))

(declare-fun e!2968161 () Unit!137736)

(assert (=> b!4757558 (= e!2968161 (forallContained!3821 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))) lambda!223588 (tuple2!55111 lt!1923610 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923610))))))

(declare-fun c!811852 () Bool)

(assert (=> b!4757558 (= c!811852 (not (contains!16608 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))) (tuple2!55111 lt!1923610 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923610)))))))

(declare-fun lt!1923618 () Unit!137736)

(assert (=> b!4757558 (= lt!1923618 e!2968158)))

(declare-fun b!4757559 () Bool)

(assert (=> b!4757559 false))

(declare-fun lt!1923617 () Unit!137736)

(declare-fun lt!1923612 () Unit!137736)

(assert (=> b!4757559 (= lt!1923617 lt!1923612)))

(declare-fun lt!1923620 () ListLongMap!4589)

(declare-fun contains!16610 (ListMap!5691 tuple2!55106) Bool)

(assert (=> b!4757559 (contains!16610 (extractMap!2111 (toList!6193 lt!1923620)) lt!1923459)))

(declare-fun lemmaInLongMapThenInGenericMap!175 (ListLongMap!4589 tuple2!55106 Hashable!6476) Unit!137736)

(assert (=> b!4757559 (= lt!1923612 (lemmaInLongMapThenInGenericMap!175 lt!1923620 lt!1923459 (hashF!12286 (cache!4541 thiss!28972))))))

(assert (=> b!4757559 (= lt!1923620 call!333598)))

(declare-fun Unit!137742 () Unit!137736)

(assert (=> b!4757559 (= e!2968157 Unit!137742)))

(declare-fun b!4757561 () Bool)

(declare-fun e!2968162 () Bool)

(assert (=> b!4757561 (= e!2968162 (isDefined!9764 (getPair!611 (apply!12508 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923610) lt!1923459)))))

(declare-fun b!4757562 () Bool)

(declare-fun Unit!137743 () Unit!137736)

(assert (=> b!4757562 (= e!2968161 Unit!137743)))

(declare-fun bm!333596 () Bool)

(declare-fun call!333603 () (_ BitVec 64))

(assert (=> bm!333596 (= call!333603 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459))))

(declare-fun bm!333597 () Bool)

(declare-fun c!811851 () Bool)

(declare-fun lt!1923604 () ListLongMap!4589)

(assert (=> bm!333597 (= call!333601 (contains!16609 (ite c!811851 lt!1923604 call!333598) call!333603))))

(declare-fun b!4757563 () Bool)

(declare-fun Unit!137744 () Unit!137736)

(assert (=> b!4757563 (= e!2968158 Unit!137744)))

(declare-fun bm!333598 () Bool)

(assert (=> bm!333598 (= call!333602 (apply!12509 (ite c!811851 lt!1923604 call!333598) call!333603))))

(declare-fun b!4757564 () Bool)

(declare-fun e!2968163 () Bool)

(assert (=> b!4757564 (= e!2968163 call!333600)))

(declare-fun d!1521057 () Bool)

(declare-fun lt!1923608 () Bool)

(assert (=> d!1521057 (= lt!1923608 (contains!16610 (map!11831 (cache!4541 thiss!28972)) lt!1923459))))

(assert (=> d!1521057 (= lt!1923608 e!2968162)))

(declare-fun res!2018356 () Bool)

(assert (=> d!1521057 (=> (not res!2018356) (not e!2968162))))

(declare-fun contains!16611 (MutLongMap!4815 (_ BitVec 64)) Bool)

(assert (=> d!1521057 (= res!2018356 (contains!16611 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923610))))

(declare-fun lt!1923603 () Unit!137736)

(assert (=> d!1521057 (= lt!1923603 e!2968160)))

(assert (=> d!1521057 (= c!811851 (contains!16610 (extractMap!2111 (toList!6193 (map!11830 (v!47294 (underlying!9838 (cache!4541 thiss!28972)))))) lt!1923459))))

(declare-fun lt!1923615 () Unit!137736)

(assert (=> d!1521057 (= lt!1923615 e!2968161)))

(declare-fun c!811853 () Bool)

(assert (=> d!1521057 (= c!811853 (contains!16611 (v!47294 (underlying!9838 (cache!4541 thiss!28972))) lt!1923610))))

(assert (=> d!1521057 (= lt!1923610 (hash!4512 (hashF!12286 (cache!4541 thiss!28972)) lt!1923459))))

(assert (=> d!1521057 (valid!3834 (cache!4541 thiss!28972))))

(assert (=> d!1521057 (= (contains!16607 (cache!4541 thiss!28972) lt!1923459) lt!1923608)))

(declare-fun b!4757560 () Bool)

(declare-fun lt!1923602 () Unit!137736)

(assert (=> b!4757560 (= e!2968160 lt!1923602)))

(assert (=> b!4757560 (= lt!1923604 call!333598)))

(declare-fun lemmaInGenericMapThenInLongMap!175 (ListLongMap!4589 tuple2!55106 Hashable!6476) Unit!137736)

(assert (=> b!4757560 (= lt!1923602 (lemmaInGenericMapThenInLongMap!175 lt!1923604 lt!1923459 (hashF!12286 (cache!4541 thiss!28972))))))

(declare-fun res!2018357 () Bool)

(assert (=> b!4757560 (= res!2018357 call!333601)))

(assert (=> b!4757560 (=> (not res!2018357) (not e!2968163))))

(assert (=> b!4757560 e!2968163))

(assert (= (and d!1521057 c!811853) b!4757558))

(assert (= (and d!1521057 (not c!811853)) b!4757562))

(assert (= (and b!4757558 c!811852) b!4757557))

(assert (= (and b!4757558 (not c!811852)) b!4757563))

(assert (= (and d!1521057 c!811851) b!4757560))

(assert (= (and d!1521057 (not c!811851)) b!4757554))

(assert (= (and b!4757560 res!2018357) b!4757564))

(assert (= (and b!4757554 res!2018355) b!4757555))

(assert (= (and b!4757554 c!811850) b!4757559))

(assert (= (and b!4757554 (not c!811850)) b!4757556))

(assert (= (or b!4757560 b!4757554 b!4757555 b!4757559) bm!333595))

(assert (= (or b!4757560 b!4757564 b!4757554 b!4757555) bm!333596))

(assert (= (or b!4757564 b!4757555) bm!333598))

(assert (= (or b!4757560 b!4757554) bm!333597))

(assert (= (or b!4757564 b!4757555) bm!333594))

(assert (= (or b!4757564 b!4757555) bm!333593))

(assert (= (and d!1521057 res!2018356) b!4757561))

(declare-fun m!5727296 () Bool)

(assert (=> bm!333598 m!5727296))

(declare-fun m!5727298 () Bool)

(assert (=> b!4757557 m!5727298))

(declare-fun m!5727300 () Bool)

(assert (=> b!4757557 m!5727300))

(assert (=> b!4757557 m!5727300))

(declare-fun m!5727302 () Bool)

(assert (=> b!4757557 m!5727302))

(declare-fun m!5727304 () Bool)

(assert (=> b!4757557 m!5727304))

(declare-fun m!5727306 () Bool)

(assert (=> b!4757557 m!5727306))

(assert (=> b!4757557 m!5727249))

(declare-fun m!5727308 () Bool)

(assert (=> b!4757557 m!5727308))

(declare-fun m!5727310 () Bool)

(assert (=> b!4757557 m!5727310))

(declare-fun m!5727312 () Bool)

(assert (=> b!4757557 m!5727312))

(assert (=> b!4757558 m!5727249))

(assert (=> b!4757558 m!5727306))

(declare-fun m!5727314 () Bool)

(assert (=> b!4757558 m!5727314))

(declare-fun m!5727316 () Bool)

(assert (=> b!4757558 m!5727316))

(assert (=> bm!333595 m!5727249))

(assert (=> bm!333596 m!5727245))

(declare-fun m!5727318 () Bool)

(assert (=> bm!333597 m!5727318))

(assert (=> b!4757561 m!5727306))

(assert (=> b!4757561 m!5727306))

(declare-fun m!5727320 () Bool)

(assert (=> b!4757561 m!5727320))

(assert (=> b!4757561 m!5727320))

(declare-fun m!5727322 () Bool)

(assert (=> b!4757561 m!5727322))

(declare-fun m!5727324 () Bool)

(assert (=> bm!333594 m!5727324))

(declare-fun m!5727326 () Bool)

(assert (=> b!4757560 m!5727326))

(assert (=> d!1521057 m!5727275))

(assert (=> d!1521057 m!5727225))

(assert (=> d!1521057 m!5727275))

(declare-fun m!5727328 () Bool)

(assert (=> d!1521057 m!5727328))

(assert (=> d!1521057 m!5727245))

(declare-fun m!5727330 () Bool)

(assert (=> d!1521057 m!5727330))

(declare-fun m!5727332 () Bool)

(assert (=> d!1521057 m!5727332))

(assert (=> d!1521057 m!5727330))

(declare-fun m!5727334 () Bool)

(assert (=> d!1521057 m!5727334))

(assert (=> d!1521057 m!5727249))

(declare-fun m!5727336 () Bool)

(assert (=> b!4757559 m!5727336))

(assert (=> b!4757559 m!5727336))

(declare-fun m!5727338 () Bool)

(assert (=> b!4757559 m!5727338))

(declare-fun m!5727340 () Bool)

(assert (=> b!4757559 m!5727340))

(declare-fun m!5727342 () Bool)

(assert (=> bm!333593 m!5727342))

(assert (=> b!4757466 d!1521057))

(declare-fun d!1521059 () Bool)

(assert (=> d!1521059 (= (isDefined!9763 lt!1923460) (not (isEmpty!29257 lt!1923460)))))

(declare-fun bs!1146973 () Bool)

(assert (= bs!1146973 d!1521059))

(assert (=> bs!1146973 m!5727189))

(assert (=> b!4757474 d!1521059))

(declare-fun d!1521061 () Bool)

(assert (=> d!1521061 (= (array_inv!5627 (_keys!5150 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))) (bvsge (size!36012 (_keys!5150 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))) #b00000000000000000000000000000000))))

(assert (=> b!4757465 d!1521061))

(declare-fun d!1521063 () Bool)

(assert (=> d!1521063 (= (array_inv!5628 (_values!5123 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))) (bvsge (size!36013 (_values!5123 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))) #b00000000000000000000000000000000))))

(assert (=> b!4757465 d!1521063))

(declare-fun d!1521065 () Bool)

(declare-fun c!811856 () Bool)

(assert (=> d!1521065 (= c!811856 ((_ is Node!14454) (c!811823 (totalInput!4447 thiss!28972))))))

(declare-fun e!2968168 () Bool)

(assert (=> d!1521065 (= (inv!68655 (c!811823 (totalInput!4447 thiss!28972))) e!2968168)))

(declare-fun b!4757571 () Bool)

(declare-fun inv!68658 (Conc!14454) Bool)

(assert (=> b!4757571 (= e!2968168 (inv!68658 (c!811823 (totalInput!4447 thiss!28972))))))

(declare-fun b!4757572 () Bool)

(declare-fun e!2968169 () Bool)

(assert (=> b!4757572 (= e!2968168 e!2968169)))

(declare-fun res!2018360 () Bool)

(assert (=> b!4757572 (= res!2018360 (not ((_ is Leaf!23533) (c!811823 (totalInput!4447 thiss!28972)))))))

(assert (=> b!4757572 (=> res!2018360 e!2968169)))

(declare-fun b!4757573 () Bool)

(declare-fun inv!68659 (Conc!14454) Bool)

(assert (=> b!4757573 (= e!2968169 (inv!68659 (c!811823 (totalInput!4447 thiss!28972))))))

(assert (= (and d!1521065 c!811856) b!4757571))

(assert (= (and d!1521065 (not c!811856)) b!4757572))

(assert (= (and b!4757572 (not res!2018360)) b!4757573))

(declare-fun m!5727344 () Bool)

(assert (=> b!4757571 m!5727344))

(declare-fun m!5727346 () Bool)

(assert (=> b!4757573 m!5727346))

(assert (=> b!4757469 d!1521065))

(declare-fun d!1521067 () Bool)

(assert (=> d!1521067 (= (isEmpty!29257 lt!1923460) (not ((_ is Some!12574) lt!1923460)))))

(assert (=> b!4757476 d!1521067))

(assert (=> b!4757476 d!1521051))

(declare-fun d!1521069 () Bool)

(declare-fun e!2968174 () Bool)

(assert (=> d!1521069 e!2968174))

(declare-fun res!2018369 () Bool)

(assert (=> d!1521069 (=> res!2018369 e!2968174)))

(assert (=> d!1521069 (= res!2018369 (not (contains!16607 (cache!4541 thiss!28972) (tuple2!55107 z!490 from!930))))))

(declare-fun lt!1923623 () Unit!137736)

(declare-fun choose!33897 (CacheFindLongestMatch!596 (InoxSet Context!5806) Int BalanceConc!28398) Unit!137736)

(assert (=> d!1521069 (= lt!1923623 (choose!33897 thiss!28972 z!490 from!930 (totalInput!4447 thiss!28972)))))

(assert (=> d!1521069 (= (totalInput!4447 thiss!28972) (totalInput!4447 thiss!28972))))

(assert (=> d!1521069 (= (lemmaIfInCacheThenValid!74 thiss!28972 z!490 from!930 (totalInput!4447 thiss!28972)) lt!1923623)))

(declare-fun b!4757580 () Bool)

(declare-fun e!2968175 () Bool)

(assert (=> b!4757580 (= e!2968174 e!2968175)))

(declare-fun res!2018368 () Bool)

(assert (=> b!4757580 (=> (not res!2018368) (not e!2968175))))

(assert (=> b!4757580 (= res!2018368 (>= from!930 0))))

(declare-fun b!4757581 () Bool)

(declare-fun res!2018367 () Bool)

(assert (=> b!4757581 (=> (not res!2018367) (not e!2968175))))

(assert (=> b!4757581 (= res!2018367 (<= from!930 (size!36014 (totalInput!4447 thiss!28972))))))

(declare-fun b!4757582 () Bool)

(assert (=> b!4757582 (= e!2968175 (= (findLongestMatchInnerZipperFastV2!63 z!490 from!930 (totalInput!4447 thiss!28972) (size!36014 (totalInput!4447 thiss!28972))) (apply!12506 (cache!4541 thiss!28972) (tuple2!55107 z!490 from!930))))))

(assert (= (and d!1521069 (not res!2018369)) b!4757580))

(assert (= (and b!4757580 res!2018368) b!4757581))

(assert (= (and b!4757581 res!2018367) b!4757582))

(declare-fun m!5727348 () Bool)

(assert (=> d!1521069 m!5727348))

(declare-fun m!5727350 () Bool)

(assert (=> d!1521069 m!5727350))

(assert (=> b!4757581 m!5727195))

(assert (=> b!4757582 m!5727195))

(assert (=> b!4757582 m!5727195))

(declare-fun m!5727352 () Bool)

(assert (=> b!4757582 m!5727352))

(declare-fun m!5727354 () Bool)

(assert (=> b!4757582 m!5727354))

(assert (=> b!4757476 d!1521069))

(declare-fun d!1521071 () Bool)

(declare-fun lt!1923626 () Int)

(declare-fun size!36015 (List!53346) Int)

(declare-fun list!17376 (BalanceConc!28398) List!53346)

(assert (=> d!1521071 (= lt!1923626 (size!36015 (list!17376 (totalInput!4447 thiss!28972))))))

(declare-fun size!36016 (Conc!14454) Int)

(assert (=> d!1521071 (= lt!1923626 (size!36016 (c!811823 (totalInput!4447 thiss!28972))))))

(assert (=> d!1521071 (= (size!36014 (totalInput!4447 thiss!28972)) lt!1923626)))

(declare-fun bs!1146974 () Bool)

(assert (= bs!1146974 d!1521071))

(declare-fun m!5727356 () Bool)

(assert (=> bs!1146974 m!5727356))

(assert (=> bs!1146974 m!5727356))

(declare-fun m!5727358 () Bool)

(assert (=> bs!1146974 m!5727358))

(declare-fun m!5727360 () Bool)

(assert (=> bs!1146974 m!5727360))

(assert (=> b!4757472 d!1521071))

(declare-fun condSetEmpty!26932 () Bool)

(assert (=> setNonEmpty!26929 (= condSetEmpty!26932 (= setRest!26929 ((as const (Array Context!5806 Bool)) false)))))

(declare-fun setRes!26932 () Bool)

(assert (=> setNonEmpty!26929 (= tp!1351460 setRes!26932)))

(declare-fun setIsEmpty!26932 () Bool)

(assert (=> setIsEmpty!26932 setRes!26932))

(declare-fun setNonEmpty!26932 () Bool)

(declare-fun setElem!26932 () Context!5806)

(declare-fun e!2968178 () Bool)

(declare-fun tp!1351466 () Bool)

(assert (=> setNonEmpty!26932 (= setRes!26932 (and tp!1351466 (inv!68656 setElem!26932) e!2968178))))

(declare-fun setRest!26932 () (InoxSet Context!5806))

(assert (=> setNonEmpty!26932 (= setRest!26929 ((_ map or) (store ((as const (Array Context!5806 Bool)) false) setElem!26932 true) setRest!26932))))

(declare-fun b!4757587 () Bool)

(declare-fun tp!1351465 () Bool)

(assert (=> b!4757587 (= e!2968178 tp!1351465)))

(assert (= (and setNonEmpty!26929 condSetEmpty!26932) setIsEmpty!26932))

(assert (= (and setNonEmpty!26929 (not condSetEmpty!26932)) setNonEmpty!26932))

(assert (= setNonEmpty!26932 b!4757587))

(declare-fun m!5727362 () Bool)

(assert (=> setNonEmpty!26932 m!5727362))

(declare-fun b!4757594 () Bool)

(declare-fun e!2968183 () Bool)

(declare-fun setRes!26935 () Bool)

(declare-fun tp!1351475 () Bool)

(assert (=> b!4757594 (= e!2968183 (and setRes!26935 tp!1351475))))

(declare-fun condSetEmpty!26935 () Bool)

(assert (=> b!4757594 (= condSetEmpty!26935 (= (_1!30847 (_1!30848 (h!59632 mapDefault!21434))) ((as const (Array Context!5806 Bool)) false)))))

(declare-fun setIsEmpty!26935 () Bool)

(assert (=> setIsEmpty!26935 setRes!26935))

(assert (=> b!4757478 (= tp!1351452 e!2968183)))

(declare-fun b!4757595 () Bool)

(declare-fun e!2968184 () Bool)

(declare-fun tp!1351473 () Bool)

(assert (=> b!4757595 (= e!2968184 tp!1351473)))

(declare-fun tp!1351474 () Bool)

(declare-fun setElem!26935 () Context!5806)

(declare-fun setNonEmpty!26935 () Bool)

(assert (=> setNonEmpty!26935 (= setRes!26935 (and tp!1351474 (inv!68656 setElem!26935) e!2968184))))

(declare-fun setRest!26935 () (InoxSet Context!5806))

(assert (=> setNonEmpty!26935 (= (_1!30847 (_1!30848 (h!59632 mapDefault!21434))) ((_ map or) (store ((as const (Array Context!5806 Bool)) false) setElem!26935 true) setRest!26935))))

(assert (= (and b!4757594 condSetEmpty!26935) setIsEmpty!26935))

(assert (= (and b!4757594 (not condSetEmpty!26935)) setNonEmpty!26935))

(assert (= setNonEmpty!26935 b!4757595))

(assert (= (and b!4757478 ((_ is Cons!53221) mapDefault!21434)) b!4757594))

(declare-fun m!5727364 () Bool)

(assert (=> setNonEmpty!26935 m!5727364))

(declare-fun b!4757600 () Bool)

(declare-fun e!2968187 () Bool)

(declare-fun tp!1351480 () Bool)

(declare-fun tp!1351481 () Bool)

(assert (=> b!4757600 (= e!2968187 (and tp!1351480 tp!1351481))))

(assert (=> b!4757471 (= tp!1351457 e!2968187)))

(assert (= (and b!4757471 ((_ is Cons!53220) (exprs!3403 setElem!26929))) b!4757600))

(declare-fun b!4757601 () Bool)

(declare-fun e!2968188 () Bool)

(declare-fun setRes!26936 () Bool)

(declare-fun tp!1351484 () Bool)

(assert (=> b!4757601 (= e!2968188 (and setRes!26936 tp!1351484))))

(declare-fun condSetEmpty!26936 () Bool)

(assert (=> b!4757601 (= condSetEmpty!26936 (= (_1!30847 (_1!30848 (h!59632 (zeroValue!5098 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))) ((as const (Array Context!5806 Bool)) false)))))

(declare-fun setIsEmpty!26936 () Bool)

(assert (=> setIsEmpty!26936 setRes!26936))

(assert (=> b!4757465 (= tp!1351459 e!2968188)))

(declare-fun b!4757602 () Bool)

(declare-fun e!2968189 () Bool)

(declare-fun tp!1351482 () Bool)

(assert (=> b!4757602 (= e!2968189 tp!1351482)))

(declare-fun setElem!26936 () Context!5806)

(declare-fun tp!1351483 () Bool)

(declare-fun setNonEmpty!26936 () Bool)

(assert (=> setNonEmpty!26936 (= setRes!26936 (and tp!1351483 (inv!68656 setElem!26936) e!2968189))))

(declare-fun setRest!26936 () (InoxSet Context!5806))

(assert (=> setNonEmpty!26936 (= (_1!30847 (_1!30848 (h!59632 (zeroValue!5098 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))) ((_ map or) (store ((as const (Array Context!5806 Bool)) false) setElem!26936 true) setRest!26936))))

(assert (= (and b!4757601 condSetEmpty!26936) setIsEmpty!26936))

(assert (= (and b!4757601 (not condSetEmpty!26936)) setNonEmpty!26936))

(assert (= setNonEmpty!26936 b!4757602))

(assert (= (and b!4757465 ((_ is Cons!53221) (zeroValue!5098 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972)))))))) b!4757601))

(declare-fun m!5727366 () Bool)

(assert (=> setNonEmpty!26936 m!5727366))

(declare-fun b!4757603 () Bool)

(declare-fun e!2968190 () Bool)

(declare-fun setRes!26937 () Bool)

(declare-fun tp!1351487 () Bool)

(assert (=> b!4757603 (= e!2968190 (and setRes!26937 tp!1351487))))

(declare-fun condSetEmpty!26937 () Bool)

(assert (=> b!4757603 (= condSetEmpty!26937 (= (_1!30847 (_1!30848 (h!59632 (minValue!5098 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))) ((as const (Array Context!5806 Bool)) false)))))

(declare-fun setIsEmpty!26937 () Bool)

(assert (=> setIsEmpty!26937 setRes!26937))

(assert (=> b!4757465 (= tp!1351456 e!2968190)))

(declare-fun b!4757604 () Bool)

(declare-fun e!2968191 () Bool)

(declare-fun tp!1351485 () Bool)

(assert (=> b!4757604 (= e!2968191 tp!1351485)))

(declare-fun setElem!26937 () Context!5806)

(declare-fun tp!1351486 () Bool)

(declare-fun setNonEmpty!26937 () Bool)

(assert (=> setNonEmpty!26937 (= setRes!26937 (and tp!1351486 (inv!68656 setElem!26937) e!2968191))))

(declare-fun setRest!26937 () (InoxSet Context!5806))

(assert (=> setNonEmpty!26937 (= (_1!30847 (_1!30848 (h!59632 (minValue!5098 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972))))))))) ((_ map or) (store ((as const (Array Context!5806 Bool)) false) setElem!26937 true) setRest!26937))))

(assert (= (and b!4757603 condSetEmpty!26937) setIsEmpty!26937))

(assert (= (and b!4757603 (not condSetEmpty!26937)) setNonEmpty!26937))

(assert (= setNonEmpty!26937 b!4757604))

(assert (= (and b!4757465 ((_ is Cons!53221) (minValue!5098 (v!47293 (underlying!9837 (v!47294 (underlying!9838 (cache!4541 thiss!28972)))))))) b!4757603))

(declare-fun m!5727368 () Bool)

(assert (=> setNonEmpty!26937 m!5727368))

(declare-fun mapIsEmpty!21437 () Bool)

(declare-fun mapRes!21437 () Bool)

(assert (=> mapIsEmpty!21437 mapRes!21437))

(declare-fun mapNonEmpty!21437 () Bool)

(declare-fun tp!1351504 () Bool)

(declare-fun e!2968203 () Bool)

(assert (=> mapNonEmpty!21437 (= mapRes!21437 (and tp!1351504 e!2968203))))

(declare-fun mapValue!21437 () List!53345)

(declare-fun mapRest!21437 () (Array (_ BitVec 32) List!53345))

(declare-fun mapKey!21437 () (_ BitVec 32))

(assert (=> mapNonEmpty!21437 (= mapRest!21434 (store mapRest!21437 mapKey!21437 mapValue!21437))))

(declare-fun b!4757615 () Bool)

(declare-fun e!2968202 () Bool)

(declare-fun setRes!26943 () Bool)

(declare-fun tp!1351507 () Bool)

(assert (=> b!4757615 (= e!2968202 (and setRes!26943 tp!1351507))))

(declare-fun condSetEmpty!26942 () Bool)

(declare-fun mapDefault!21437 () List!53345)

(assert (=> b!4757615 (= condSetEmpty!26942 (= (_1!30847 (_1!30848 (h!59632 mapDefault!21437))) ((as const (Array Context!5806 Bool)) false)))))

(declare-fun setIsEmpty!26942 () Bool)

(assert (=> setIsEmpty!26942 setRes!26943))

(declare-fun setElem!26942 () Context!5806)

(declare-fun setNonEmpty!26942 () Bool)

(declare-fun e!2968201 () Bool)

(declare-fun tp!1351506 () Bool)

(assert (=> setNonEmpty!26942 (= setRes!26943 (and tp!1351506 (inv!68656 setElem!26942) e!2968201))))

(declare-fun setRest!26942 () (InoxSet Context!5806))

(assert (=> setNonEmpty!26942 (= (_1!30847 (_1!30848 (h!59632 mapDefault!21437))) ((_ map or) (store ((as const (Array Context!5806 Bool)) false) setElem!26942 true) setRest!26942))))

(declare-fun b!4757616 () Bool)

(declare-fun e!2968200 () Bool)

(declare-fun tp!1351502 () Bool)

(assert (=> b!4757616 (= e!2968200 tp!1351502)))

(declare-fun condMapEmpty!21437 () Bool)

(assert (=> mapNonEmpty!21434 (= condMapEmpty!21437 (= mapRest!21434 ((as const (Array (_ BitVec 32) List!53345)) mapDefault!21437)))))

(assert (=> mapNonEmpty!21434 (= tp!1351453 (and e!2968202 mapRes!21437))))

(declare-fun setIsEmpty!26943 () Bool)

(declare-fun setRes!26942 () Bool)

(assert (=> setIsEmpty!26943 setRes!26942))

(declare-fun setNonEmpty!26943 () Bool)

(declare-fun setElem!26943 () Context!5806)

(declare-fun tp!1351505 () Bool)

(assert (=> setNonEmpty!26943 (= setRes!26942 (and tp!1351505 (inv!68656 setElem!26943) e!2968200))))

(declare-fun setRest!26943 () (InoxSet Context!5806))

(assert (=> setNonEmpty!26943 (= (_1!30847 (_1!30848 (h!59632 mapValue!21437))) ((_ map or) (store ((as const (Array Context!5806 Bool)) false) setElem!26943 true) setRest!26943))))

(declare-fun b!4757617 () Bool)

(declare-fun tp!1351508 () Bool)

(assert (=> b!4757617 (= e!2968203 (and setRes!26942 tp!1351508))))

(declare-fun condSetEmpty!26943 () Bool)

(assert (=> b!4757617 (= condSetEmpty!26943 (= (_1!30847 (_1!30848 (h!59632 mapValue!21437))) ((as const (Array Context!5806 Bool)) false)))))

(declare-fun b!4757618 () Bool)

(declare-fun tp!1351503 () Bool)

(assert (=> b!4757618 (= e!2968201 tp!1351503)))

(assert (= (and mapNonEmpty!21434 condMapEmpty!21437) mapIsEmpty!21437))

(assert (= (and mapNonEmpty!21434 (not condMapEmpty!21437)) mapNonEmpty!21437))

(assert (= (and b!4757617 condSetEmpty!26943) setIsEmpty!26943))

(assert (= (and b!4757617 (not condSetEmpty!26943)) setNonEmpty!26943))

(assert (= setNonEmpty!26943 b!4757616))

(assert (= (and mapNonEmpty!21437 ((_ is Cons!53221) mapValue!21437)) b!4757617))

(assert (= (and b!4757615 condSetEmpty!26942) setIsEmpty!26942))

(assert (= (and b!4757615 (not condSetEmpty!26942)) setNonEmpty!26942))

(assert (= setNonEmpty!26942 b!4757618))

(assert (= (and mapNonEmpty!21434 ((_ is Cons!53221) mapDefault!21437)) b!4757615))

(declare-fun m!5727370 () Bool)

(assert (=> mapNonEmpty!21437 m!5727370))

(declare-fun m!5727372 () Bool)

(assert (=> setNonEmpty!26942 m!5727372))

(declare-fun m!5727374 () Bool)

(assert (=> setNonEmpty!26943 m!5727374))

(declare-fun b!4757619 () Bool)

(declare-fun e!2968204 () Bool)

(declare-fun setRes!26944 () Bool)

(declare-fun tp!1351511 () Bool)

(assert (=> b!4757619 (= e!2968204 (and setRes!26944 tp!1351511))))

(declare-fun condSetEmpty!26944 () Bool)

(assert (=> b!4757619 (= condSetEmpty!26944 (= (_1!30847 (_1!30848 (h!59632 mapValue!21434))) ((as const (Array Context!5806 Bool)) false)))))

(declare-fun setIsEmpty!26944 () Bool)

(assert (=> setIsEmpty!26944 setRes!26944))

(assert (=> mapNonEmpty!21434 (= tp!1351451 e!2968204)))

(declare-fun b!4757620 () Bool)

(declare-fun e!2968205 () Bool)

(declare-fun tp!1351509 () Bool)

(assert (=> b!4757620 (= e!2968205 tp!1351509)))

(declare-fun tp!1351510 () Bool)

(declare-fun setNonEmpty!26944 () Bool)

(declare-fun setElem!26944 () Context!5806)

(assert (=> setNonEmpty!26944 (= setRes!26944 (and tp!1351510 (inv!68656 setElem!26944) e!2968205))))

(declare-fun setRest!26944 () (InoxSet Context!5806))

(assert (=> setNonEmpty!26944 (= (_1!30847 (_1!30848 (h!59632 mapValue!21434))) ((_ map or) (store ((as const (Array Context!5806 Bool)) false) setElem!26944 true) setRest!26944))))

(assert (= (and b!4757619 condSetEmpty!26944) setIsEmpty!26944))

(assert (= (and b!4757619 (not condSetEmpty!26944)) setNonEmpty!26944))

(assert (= setNonEmpty!26944 b!4757620))

(assert (= (and mapNonEmpty!21434 ((_ is Cons!53221) mapValue!21434)) b!4757619))

(declare-fun m!5727376 () Bool)

(assert (=> setNonEmpty!26944 m!5727376))

(declare-fun e!2968210 () Bool)

(declare-fun tp!1351520 () Bool)

(declare-fun tp!1351518 () Bool)

(declare-fun b!4757629 () Bool)

(assert (=> b!4757629 (= e!2968210 (and (inv!68655 (left!39032 (c!811823 (totalInput!4447 thiss!28972)))) tp!1351520 (inv!68655 (right!39362 (c!811823 (totalInput!4447 thiss!28972)))) tp!1351518))))

(declare-fun b!4757631 () Bool)

(declare-fun e!2968211 () Bool)

(declare-fun tp!1351519 () Bool)

(assert (=> b!4757631 (= e!2968211 tp!1351519)))

(declare-fun b!4757630 () Bool)

(declare-fun inv!68660 (IArray!28969) Bool)

(assert (=> b!4757630 (= e!2968210 (and (inv!68660 (xs!17760 (c!811823 (totalInput!4447 thiss!28972)))) e!2968211))))

(assert (=> b!4757469 (= tp!1351454 (and (inv!68655 (c!811823 (totalInput!4447 thiss!28972))) e!2968210))))

(assert (= (and b!4757469 ((_ is Node!14454) (c!811823 (totalInput!4447 thiss!28972)))) b!4757629))

(assert (= b!4757630 b!4757631))

(assert (= (and b!4757469 ((_ is Leaf!23533) (c!811823 (totalInput!4447 thiss!28972)))) b!4757630))

(declare-fun m!5727378 () Bool)

(assert (=> b!4757629 m!5727378))

(declare-fun m!5727380 () Bool)

(assert (=> b!4757629 m!5727380))

(declare-fun m!5727382 () Bool)

(assert (=> b!4757630 m!5727382))

(assert (=> b!4757469 m!5727187))

(declare-fun b_lambda!183753 () Bool)

(assert (= b_lambda!183749 (or (and b!4757477 b_free!129175) b_lambda!183753)))

(declare-fun b_lambda!183755 () Bool)

(assert (= b_lambda!183751 (or (and b!4757477 b_free!129175) b_lambda!183755)))

(check-sat (not d!1521051) (not b!4757616) (not d!1521069) (not b!4757615) (not setNonEmpty!26935) (not d!1521045) (not b_next!129881) (not d!1521071) (not b!4757558) b_and!340781 (not d!1521053) (not setNonEmpty!26942) (not b!4757516) (not b!4757557) (not b!4757520) (not setNonEmpty!26932) (not setNonEmpty!26937) (not b!4757581) (not b!4757531) (not b!4757602) (not b!4757571) (not b_lambda!183755) (not b!4757496) (not b!4757560) (not b!4757515) (not b!4757604) (not b_next!129879) (not b!4757559) (not b!4757525) (not b!4757617) (not setNonEmpty!26936) (not b!4757595) (not setNonEmpty!26943) (not b!4757587) (not b!4757502) (not b!4757594) (not bm!333594) (not d!1521047) b_and!340777 (not d!1521057) (not b!4757500) (not bm!333595) (not b!4757620) (not b!4757601) (not b!4757618) (not b!4757573) (not bm!333593) (not bm!333598) (not bm!333596) (not b!4757629) (not d!1521059) (not b_lambda!183753) (not b!4757526) (not b!4757469) (not setNonEmpty!26944) (not mapNonEmpty!21437) (not bm!333597) (not b!4757600) (not b!4757497) (not b!4757561) (not b!4757582) (not b!4757619) (not b!4757630) (not b!4757631) (not b!4757603))
(check-sat b_and!340781 b_and!340777 (not b_next!129881) (not b_next!129879))
