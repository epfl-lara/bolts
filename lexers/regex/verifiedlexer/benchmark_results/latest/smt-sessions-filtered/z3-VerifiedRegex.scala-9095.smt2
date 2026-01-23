; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486752 () Bool)

(assert start!486752)

(declare-fun b!4759776 () Bool)

(declare-fun b_free!129311 () Bool)

(declare-fun b_next!130015 () Bool)

(assert (=> b!4759776 (= b_free!129311 (not b_next!130015))))

(declare-fun tp!1352965 () Bool)

(declare-fun b_and!340931 () Bool)

(assert (=> b!4759776 (= tp!1352965 b_and!340931)))

(declare-fun b!4759779 () Bool)

(declare-fun b_free!129313 () Bool)

(declare-fun b_next!130017 () Bool)

(assert (=> b!4759779 (= b_free!129313 (not b_next!130017))))

(declare-fun tp!1352957 () Bool)

(declare-fun b_and!340933 () Bool)

(assert (=> b!4759779 (= tp!1352957 b_and!340933)))

(declare-fun b!4759775 () Bool)

(assert (=> b!4759775 true))

(declare-fun b!4759766 () Bool)

(declare-fun e!2970023 () Bool)

(declare-fun e!2970025 () Bool)

(declare-datatypes ((C!26292 0))(
  ( (C!26293 (val!20134 Int)) )
))
(declare-datatypes ((Regex!13047 0))(
  ( (ElementMatch!13047 (c!812046 C!26292)) (Concat!21366 (regOne!26606 Regex!13047) (regTwo!26606 Regex!13047)) (EmptyExpr!13047) (Star!13047 (reg!13376 Regex!13047)) (EmptyLang!13047) (Union!13047 (regOne!26607 Regex!13047) (regTwo!26607 Regex!13047)) )
))
(declare-datatypes ((List!53452 0))(
  ( (Nil!53328) (Cons!53328 (h!59739 Regex!13047) (t!360810 List!53452)) )
))
(declare-datatypes ((Context!5874 0))(
  ( (Context!5875 (exprs!3437 List!53452)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55254 0))(
  ( (tuple2!55255 (_1!30921 (InoxSet Context!5874)) (_2!30921 Int)) )
))
(declare-datatypes ((tuple2!55256 0))(
  ( (tuple2!55257 (_1!30922 tuple2!55254) (_2!30922 Int)) )
))
(declare-datatypes ((List!53453 0))(
  ( (Nil!53329) (Cons!53329 (h!59740 tuple2!55256) (t!360811 List!53453)) )
))
(declare-datatypes ((array!17670 0))(
  ( (array!17671 (arr!7883 (Array (_ BitVec 32) (_ BitVec 64))) (size!36103 (_ BitVec 32))) )
))
(declare-datatypes ((array!17672 0))(
  ( (array!17673 (arr!7884 (Array (_ BitVec 32) List!53453)) (size!36104 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9698 0))(
  ( (LongMapFixedSize!9699 (defaultEntry!5263 Int) (mask!14559 (_ BitVec 32)) (extraKeys!5119 (_ BitVec 32)) (zeroValue!5132 List!53453) (minValue!5132 List!53453) (_size!9723 (_ BitVec 32)) (_keys!5184 array!17670) (_values!5157 array!17672) (_vacant!4914 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19161 0))(
  ( (Cell!19162 (v!47381 LongMapFixedSize!9698)) )
))
(declare-datatypes ((MutLongMap!4849 0))(
  ( (LongMap!4849 (underlying!9905 Cell!19161)) (MutLongMapExt!4848 (__x!32295 Int)) )
))
(declare-fun lt!1924525 () MutLongMap!4849)

(get-info :version)

(assert (=> b!4759766 (= e!2970023 (and e!2970025 ((_ is LongMap!4849) lt!1924525)))))

(declare-datatypes ((List!53454 0))(
  ( (Nil!53330) (Cons!53330 (h!59741 C!26292) (t!360812 List!53454)) )
))
(declare-datatypes ((IArray!29037 0))(
  ( (IArray!29038 (innerList!14576 List!53454)) )
))
(declare-datatypes ((Conc!14488 0))(
  ( (Node!14488 (left!39121 Conc!14488) (right!39451 Conc!14488) (csize!29206 Int) (cheight!14699 Int)) (Leaf!23584 (xs!17794 IArray!29037) (csize!29207 Int)) (Empty!14488) )
))
(declare-datatypes ((Hashable!6510 0))(
  ( (HashableExt!6509 (__x!32296 Int)) )
))
(declare-datatypes ((Cell!19163 0))(
  ( (Cell!19164 (v!47382 MutLongMap!4849)) )
))
(declare-datatypes ((MutableMap!4733 0))(
  ( (MutableMapExt!4732 (__x!32297 Int)) (HashMap!4733 (underlying!9906 Cell!19163) (hashF!12320 Hashable!6510) (_size!9724 (_ BitVec 32)) (defaultValue!4904 Int)) )
))
(declare-datatypes ((BalanceConc!28466 0))(
  ( (BalanceConc!28467 (c!812047 Conc!14488)) )
))
(declare-datatypes ((CacheFindLongestMatch!664 0))(
  ( (CacheFindLongestMatch!665 (cache!4575 MutableMap!4733) (totalInput!4494 BalanceConc!28466)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!664)

(assert (=> b!4759766 (= lt!1924525 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))

(declare-fun b!4759767 () Bool)

(declare-fun e!2970022 () Bool)

(declare-fun tp!1352962 () Bool)

(assert (=> b!4759767 (= e!2970022 tp!1352962)))

(declare-fun b!4759768 () Bool)

(declare-fun e!2970020 () Bool)

(declare-fun tp!1352966 () Bool)

(declare-fun mapRes!21560 () Bool)

(assert (=> b!4759768 (= e!2970020 (and tp!1352966 mapRes!21560))))

(declare-fun condMapEmpty!21560 () Bool)

(declare-fun mapDefault!21560 () List!53453)

(assert (=> b!4759768 (= condMapEmpty!21560 (= (arr!7884 (_values!5157 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53453)) mapDefault!21560)))))

(declare-fun b!4759769 () Bool)

(declare-fun res!2018943 () Bool)

(declare-fun e!2970027 () Bool)

(assert (=> b!4759769 (=> res!2018943 e!2970027)))

(assert (=> b!4759769 (= res!2018943 (not ((_ is HashMap!4733) (cache!4575 thiss!28909))))))

(declare-fun b!4759770 () Bool)

(declare-fun valid!3849 (MutableMap!4733) Bool)

(assert (=> b!4759770 (= e!2970027 (valid!3849 (cache!4575 thiss!28909)))))

(declare-fun res!2018947 () Bool)

(declare-fun e!2970021 () Bool)

(assert (=> start!486752 (=> (not res!2018947) (not e!2970021))))

(declare-fun localTotalInput!8 () BalanceConc!28466)

(assert (=> start!486752 (= res!2018947 (= localTotalInput!8 (totalInput!4494 thiss!28909)))))

(assert (=> start!486752 e!2970021))

(declare-fun e!2970030 () Bool)

(declare-fun inv!68830 (BalanceConc!28466) Bool)

(assert (=> start!486752 (and (inv!68830 localTotalInput!8) e!2970030)))

(declare-fun e!2970028 () Bool)

(declare-fun inv!68831 (CacheFindLongestMatch!664) Bool)

(assert (=> start!486752 (and (inv!68831 thiss!28909) e!2970028)))

(assert (=> start!486752 true))

(declare-fun condSetEmpty!27124 () Bool)

(declare-fun z!482 () (InoxSet Context!5874))

(assert (=> start!486752 (= condSetEmpty!27124 (= z!482 ((as const (Array Context!5874 Bool)) false)))))

(declare-fun setRes!27124 () Bool)

(assert (=> start!486752 setRes!27124))

(declare-fun b!4759771 () Bool)

(declare-fun e!2970029 () Bool)

(declare-fun e!2970026 () Bool)

(assert (=> b!4759771 (= e!2970029 e!2970026)))

(declare-fun mapIsEmpty!21560 () Bool)

(assert (=> mapIsEmpty!21560 mapRes!21560))

(declare-fun b!4759772 () Bool)

(declare-fun e!2970032 () Bool)

(assert (=> b!4759772 (= e!2970021 (not e!2970032))))

(declare-fun res!2018946 () Bool)

(assert (=> b!4759772 (=> res!2018946 e!2970032)))

(declare-fun lt!1924526 () tuple2!55254)

(declare-fun contains!16646 (MutableMap!4733 tuple2!55254) Bool)

(assert (=> b!4759772 (= res!2018946 (not (contains!16646 (cache!4575 thiss!28909) lt!1924526)))))

(declare-fun from!922 () Int)

(assert (=> b!4759772 (= lt!1924526 (tuple2!55255 z!482 from!922))))

(declare-fun validCacheMapFindLongestMatch!129 (MutableMap!4733 BalanceConc!28466) Bool)

(assert (=> b!4759772 (validCacheMapFindLongestMatch!129 (cache!4575 thiss!28909) localTotalInput!8)))

(declare-fun b!4759773 () Bool)

(declare-fun res!2018948 () Bool)

(assert (=> b!4759773 (=> res!2018948 e!2970027)))

(declare-fun size!36105 (BalanceConc!28466) Int)

(assert (=> b!4759773 (= res!2018948 (> from!922 (size!36105 localTotalInput!8)))))

(declare-fun mapNonEmpty!21560 () Bool)

(declare-fun tp!1352964 () Bool)

(declare-fun tp!1352963 () Bool)

(assert (=> mapNonEmpty!21560 (= mapRes!21560 (and tp!1352964 tp!1352963))))

(declare-fun mapValue!21560 () List!53453)

(declare-fun mapKey!21560 () (_ BitVec 32))

(declare-fun mapRest!21560 () (Array (_ BitVec 32) List!53453))

(assert (=> mapNonEmpty!21560 (= (arr!7884 (_values!5157 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))) (store mapRest!21560 mapKey!21560 mapValue!21560))))

(declare-fun b!4759774 () Bool)

(declare-fun e!2970031 () Bool)

(declare-fun tp!1352958 () Bool)

(declare-fun inv!68832 (Conc!14488) Bool)

(assert (=> b!4759774 (= e!2970031 (and (inv!68832 (c!812047 (totalInput!4494 thiss!28909))) tp!1352958))))

(assert (=> b!4759775 (= e!2970032 e!2970027)))

(declare-fun res!2018944 () Bool)

(assert (=> b!4759775 (=> res!2018944 e!2970027)))

(assert (=> b!4759775 (= res!2018944 (< from!922 0))))

(declare-fun validCacheMapFindLongestMatchBody!23 (tuple2!55256 BalanceConc!28466) Bool)

(declare-fun apply!12531 (MutableMap!4733 tuple2!55254) Int)

(assert (=> b!4759775 (validCacheMapFindLongestMatchBody!23 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526)) localTotalInput!8)))

(declare-fun lambda!223714 () Int)

(declare-datatypes ((Unit!137797 0))(
  ( (Unit!137798) )
))
(declare-fun lt!1924524 () Unit!137797)

(declare-fun lemmaForallPairsThenForLookup!70 (MutableMap!4733 tuple2!55254 Int) Unit!137797)

(assert (=> b!4759775 (= lt!1924524 (lemmaForallPairsThenForLookup!70 (cache!4575 thiss!28909) lt!1924526 lambda!223714))))

(declare-fun tp!1352960 () Bool)

(declare-fun tp!1352956 () Bool)

(declare-fun array_inv!5671 (array!17670) Bool)

(declare-fun array_inv!5672 (array!17672) Bool)

(assert (=> b!4759776 (= e!2970026 (and tp!1352965 tp!1352956 tp!1352960 (array_inv!5671 (_keys!5184 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))) (array_inv!5672 (_values!5157 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))) e!2970020))))

(declare-fun setIsEmpty!27124 () Bool)

(assert (=> setIsEmpty!27124 setRes!27124))

(declare-fun e!2970024 () Bool)

(declare-fun b!4759777 () Bool)

(assert (=> b!4759777 (= e!2970028 (and e!2970024 (inv!68830 (totalInput!4494 thiss!28909)) e!2970031))))

(declare-fun b!4759778 () Bool)

(declare-fun res!2018945 () Bool)

(assert (=> b!4759778 (=> (not res!2018945) (not e!2970021))))

(assert (=> b!4759778 (= res!2018945 (validCacheMapFindLongestMatch!129 (cache!4575 thiss!28909) (totalInput!4494 thiss!28909)))))

(assert (=> b!4759779 (= e!2970024 (and e!2970023 tp!1352957))))

(declare-fun tp!1352961 () Bool)

(declare-fun setNonEmpty!27124 () Bool)

(declare-fun setElem!27124 () Context!5874)

(declare-fun inv!68833 (Context!5874) Bool)

(assert (=> setNonEmpty!27124 (= setRes!27124 (and tp!1352961 (inv!68833 setElem!27124) e!2970022))))

(declare-fun setRest!27124 () (InoxSet Context!5874))

(assert (=> setNonEmpty!27124 (= z!482 ((_ map or) (store ((as const (Array Context!5874 Bool)) false) setElem!27124 true) setRest!27124))))

(declare-fun b!4759780 () Bool)

(declare-fun tp!1352959 () Bool)

(assert (=> b!4759780 (= e!2970030 (and (inv!68832 (c!812047 localTotalInput!8)) tp!1352959))))

(declare-fun b!4759781 () Bool)

(assert (=> b!4759781 (= e!2970025 e!2970029)))

(assert (= (and start!486752 res!2018947) b!4759778))

(assert (= (and b!4759778 res!2018945) b!4759772))

(assert (= (and b!4759772 (not res!2018946)) b!4759775))

(assert (= (and b!4759775 (not res!2018944)) b!4759773))

(assert (= (and b!4759773 (not res!2018948)) b!4759769))

(assert (= (and b!4759769 (not res!2018943)) b!4759770))

(assert (= start!486752 b!4759780))

(assert (= (and b!4759768 condMapEmpty!21560) mapIsEmpty!21560))

(assert (= (and b!4759768 (not condMapEmpty!21560)) mapNonEmpty!21560))

(assert (= b!4759776 b!4759768))

(assert (= b!4759771 b!4759776))

(assert (= b!4759781 b!4759771))

(assert (= (and b!4759766 ((_ is LongMap!4849) (v!47382 (underlying!9906 (cache!4575 thiss!28909))))) b!4759781))

(assert (= b!4759779 b!4759766))

(assert (= (and b!4759777 ((_ is HashMap!4733) (cache!4575 thiss!28909))) b!4759779))

(assert (= b!4759777 b!4759774))

(assert (= start!486752 b!4759777))

(assert (= (and start!486752 condSetEmpty!27124) setIsEmpty!27124))

(assert (= (and start!486752 (not condSetEmpty!27124)) setNonEmpty!27124))

(assert (= setNonEmpty!27124 b!4759767))

(declare-fun m!5729109 () Bool)

(assert (=> b!4759776 m!5729109))

(declare-fun m!5729111 () Bool)

(assert (=> b!4759776 m!5729111))

(declare-fun m!5729113 () Bool)

(assert (=> b!4759774 m!5729113))

(declare-fun m!5729115 () Bool)

(assert (=> b!4759775 m!5729115))

(declare-fun m!5729117 () Bool)

(assert (=> b!4759775 m!5729117))

(declare-fun m!5729119 () Bool)

(assert (=> b!4759775 m!5729119))

(declare-fun m!5729121 () Bool)

(assert (=> mapNonEmpty!21560 m!5729121))

(declare-fun m!5729123 () Bool)

(assert (=> setNonEmpty!27124 m!5729123))

(declare-fun m!5729125 () Bool)

(assert (=> b!4759777 m!5729125))

(declare-fun m!5729127 () Bool)

(assert (=> b!4759778 m!5729127))

(declare-fun m!5729129 () Bool)

(assert (=> b!4759780 m!5729129))

(declare-fun m!5729131 () Bool)

(assert (=> b!4759770 m!5729131))

(declare-fun m!5729133 () Bool)

(assert (=> b!4759773 m!5729133))

(declare-fun m!5729135 () Bool)

(assert (=> start!486752 m!5729135))

(declare-fun m!5729137 () Bool)

(assert (=> start!486752 m!5729137))

(declare-fun m!5729139 () Bool)

(assert (=> b!4759772 m!5729139))

(declare-fun m!5729141 () Bool)

(assert (=> b!4759772 m!5729141))

(check-sat (not b!4759777) (not b!4759778) (not b!4759775) (not b!4759767) (not b!4759773) (not setNonEmpty!27124) b_and!340931 (not b_next!130017) (not mapNonEmpty!21560) (not b!4759776) (not b!4759770) (not b!4759780) (not b_next!130015) (not start!486752) (not b!4759772) b_and!340933 (not b!4759768) (not b!4759774))
(check-sat b_and!340933 b_and!340931 (not b_next!130015) (not b_next!130017))
(get-model)

(declare-fun d!1521268 () Bool)

(assert (=> d!1521268 (= (array_inv!5671 (_keys!5184 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))) (bvsge (size!36103 (_keys!5184 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4759776 d!1521268))

(declare-fun d!1521270 () Bool)

(assert (=> d!1521270 (= (array_inv!5672 (_values!5157 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))) (bvsge (size!36104 (_values!5157 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4759776 d!1521270))

(declare-fun d!1521272 () Bool)

(declare-fun res!2018953 () Bool)

(declare-fun e!2970036 () Bool)

(assert (=> d!1521272 (=> (not res!2018953) (not e!2970036))))

(assert (=> d!1521272 (= res!2018953 (>= (_2!30921 (_1!30922 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526)))) 0))))

(assert (=> d!1521272 (= (validCacheMapFindLongestMatchBody!23 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526)) localTotalInput!8) e!2970036)))

(declare-fun b!4759788 () Bool)

(declare-fun res!2018954 () Bool)

(assert (=> b!4759788 (=> (not res!2018954) (not e!2970036))))

(assert (=> b!4759788 (= res!2018954 (<= (_2!30921 (_1!30922 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526)))) (size!36105 localTotalInput!8)))))

(declare-fun b!4759789 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!72 ((InoxSet Context!5874) Int BalanceConc!28466 Int) Int)

(assert (=> b!4759789 (= e!2970036 (= (_2!30922 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526))) (findLongestMatchInnerZipperFastV2!72 (_1!30921 (_1!30922 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526)))) (_2!30921 (_1!30922 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526)))) localTotalInput!8 (size!36105 localTotalInput!8))))))

(assert (= (and d!1521272 res!2018953) b!4759788))

(assert (= (and b!4759788 res!2018954) b!4759789))

(assert (=> b!4759788 m!5729133))

(assert (=> b!4759789 m!5729133))

(assert (=> b!4759789 m!5729133))

(declare-fun m!5729143 () Bool)

(assert (=> b!4759789 m!5729143))

(assert (=> b!4759775 d!1521272))

(declare-fun e!2970043 () Bool)

(declare-fun lt!1924612 () Int)

(declare-fun b!4759802 () Bool)

(declare-fun dynLambda!21918 (Int tuple2!55254) Int)

(assert (=> b!4759802 (= e!2970043 (= lt!1924612 (dynLambda!21918 (defaultValue!4904 (cache!4575 thiss!28909)) lt!1924526)))))

(declare-fun b!4759804 () Bool)

(declare-fun e!2970045 () Int)

(assert (=> b!4759804 (= e!2970045 (dynLambda!21918 (defaultValue!4904 (cache!4575 thiss!28909)) lt!1924526))))

(declare-fun b!4759805 () Bool)

(declare-fun lt!1924605 () (_ BitVec 64))

(declare-datatypes ((Option!12595 0))(
  ( (None!12594) (Some!12594 (v!47383 tuple2!55256)) )
))
(declare-fun get!17954 (Option!12595) tuple2!55256)

(declare-fun getPair!616 (List!53453 tuple2!55254) Option!12595)

(declare-fun apply!12532 (MutLongMap!4849 (_ BitVec 64)) List!53453)

(assert (=> b!4759805 (= e!2970045 (_2!30922 (get!17954 (getPair!616 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924605) lt!1924526))))))

(declare-fun hash!4517 (Hashable!6510 tuple2!55254) (_ BitVec 64))

(assert (=> b!4759805 (= lt!1924605 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526))))

(declare-fun c!812054 () Bool)

(declare-datatypes ((tuple2!55258 0))(
  ( (tuple2!55259 (_1!30923 (_ BitVec 64)) (_2!30923 List!53453)) )
))
(declare-datatypes ((List!53455 0))(
  ( (Nil!53331) (Cons!53331 (h!59742 tuple2!55258) (t!360815 List!53455)) )
))
(declare-fun contains!16647 (List!53455 tuple2!55258) Bool)

(declare-datatypes ((ListLongMap!4601 0))(
  ( (ListLongMap!4602 (toList!6208 List!53455)) )
))
(declare-fun map!11862 (MutLongMap!4849) ListLongMap!4601)

(assert (=> b!4759805 (= c!812054 (not (contains!16647 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))) (tuple2!55259 lt!1924605 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924605)))))))

(declare-fun lt!1924611 () Unit!137797)

(declare-fun e!2970044 () Unit!137797)

(assert (=> b!4759805 (= lt!1924611 e!2970044)))

(declare-fun lambda!223721 () Int)

(declare-fun lt!1924606 () Unit!137797)

(declare-fun forallContained!3826 (List!53455 Int tuple2!55258) Unit!137797)

(assert (=> b!4759805 (= lt!1924606 (forallContained!3826 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))) lambda!223721 (tuple2!55259 lt!1924605 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924605))))))

(declare-fun lt!1924600 () ListLongMap!4601)

(assert (=> b!4759805 (= lt!1924600 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909)))))))

(declare-fun lt!1924597 () Unit!137797)

(declare-fun lemmaGetPairGetSameValueAsMap!48 (ListLongMap!4601 tuple2!55254 Int Hashable!6510) Unit!137797)

(assert (=> b!4759805 (= lt!1924597 (lemmaGetPairGetSameValueAsMap!48 lt!1924600 lt!1924526 (_2!30922 (get!17954 (getPair!616 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924605) lt!1924526))) (hashF!12320 (cache!4575 thiss!28909))))))

(declare-fun lt!1924603 () Unit!137797)

(declare-fun lemmaInGenMapThenLongMapContainsHash!822 (ListLongMap!4601 tuple2!55254 Hashable!6510) Unit!137797)

(assert (=> b!4759805 (= lt!1924603 (lemmaInGenMapThenLongMapContainsHash!822 lt!1924600 lt!1924526 (hashF!12320 (cache!4575 thiss!28909))))))

(declare-fun contains!16648 (ListLongMap!4601 (_ BitVec 64)) Bool)

(assert (=> b!4759805 (contains!16648 lt!1924600 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526))))

(declare-fun lt!1924590 () Unit!137797)

(assert (=> b!4759805 (= lt!1924590 lt!1924603)))

(declare-fun lt!1924587 () (_ BitVec 64))

(assert (=> b!4759805 (= lt!1924587 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526))))

(declare-fun lt!1924589 () List!53453)

(declare-fun apply!12533 (ListLongMap!4601 (_ BitVec 64)) List!53453)

(assert (=> b!4759805 (= lt!1924589 (apply!12533 lt!1924600 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526)))))

(declare-fun lt!1924610 () Unit!137797)

(declare-fun lemmaGetValueImpliesTupleContained!421 (ListLongMap!4601 (_ BitVec 64) List!53453) Unit!137797)

(assert (=> b!4759805 (= lt!1924610 (lemmaGetValueImpliesTupleContained!421 lt!1924600 lt!1924587 lt!1924589))))

(assert (=> b!4759805 (contains!16647 (toList!6208 lt!1924600) (tuple2!55259 lt!1924587 lt!1924589))))

(declare-fun lt!1924615 () Unit!137797)

(assert (=> b!4759805 (= lt!1924615 lt!1924610)))

(declare-fun lt!1924604 () Unit!137797)

(assert (=> b!4759805 (= lt!1924604 (forallContained!3826 (toList!6208 lt!1924600) lambda!223721 (tuple2!55259 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526) (apply!12533 lt!1924600 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526)))))))

(declare-fun lt!1924616 () Unit!137797)

(declare-fun lemmaInGenMapThenGetPairDefined!412 (ListLongMap!4601 tuple2!55254 Hashable!6510) Unit!137797)

(assert (=> b!4759805 (= lt!1924616 (lemmaInGenMapThenGetPairDefined!412 lt!1924600 lt!1924526 (hashF!12320 (cache!4575 thiss!28909))))))

(declare-fun lt!1924594 () Unit!137797)

(assert (=> b!4759805 (= lt!1924594 (lemmaInGenMapThenLongMapContainsHash!822 lt!1924600 lt!1924526 (hashF!12320 (cache!4575 thiss!28909))))))

(declare-fun lt!1924609 () Unit!137797)

(assert (=> b!4759805 (= lt!1924609 lt!1924594)))

(declare-fun lt!1924592 () (_ BitVec 64))

(assert (=> b!4759805 (= lt!1924592 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526))))

(declare-fun lt!1924601 () List!53453)

(assert (=> b!4759805 (= lt!1924601 (apply!12533 lt!1924600 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526)))))

(declare-fun lt!1924599 () Unit!137797)

(assert (=> b!4759805 (= lt!1924599 (lemmaGetValueImpliesTupleContained!421 lt!1924600 lt!1924592 lt!1924601))))

(assert (=> b!4759805 (contains!16647 (toList!6208 lt!1924600) (tuple2!55259 lt!1924592 lt!1924601))))

(declare-fun lt!1924598 () Unit!137797)

(assert (=> b!4759805 (= lt!1924598 lt!1924599)))

(declare-fun lt!1924602 () Unit!137797)

(assert (=> b!4759805 (= lt!1924602 (forallContained!3826 (toList!6208 lt!1924600) lambda!223721 (tuple2!55259 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526) (apply!12533 lt!1924600 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526)))))))

(declare-fun isDefined!9774 (Option!12595) Bool)

(assert (=> b!4759805 (isDefined!9774 (getPair!616 (apply!12533 lt!1924600 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526)) lt!1924526))))

(declare-fun lt!1924607 () Unit!137797)

(assert (=> b!4759805 (= lt!1924607 lt!1924616)))

(declare-datatypes ((Option!12596 0))(
  ( (None!12595) (Some!12595 (v!47384 Int)) )
))
(declare-fun get!17955 (Option!12596) Int)

(declare-fun getValueByKey!2132 (List!53453 tuple2!55254) Option!12596)

(declare-datatypes ((ListMap!5709 0))(
  ( (ListMap!5710 (toList!6209 List!53453)) )
))
(declare-fun extractMap!2116 (List!53455) ListMap!5709)

(assert (=> b!4759805 (= (_2!30922 (get!17954 (getPair!616 (apply!12533 lt!1924600 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526)) lt!1924526))) (get!17955 (getValueByKey!2132 (toList!6209 (extractMap!2116 (toList!6208 lt!1924600))) lt!1924526)))))

(declare-fun lt!1924593 () Unit!137797)

(assert (=> b!4759805 (= lt!1924593 lt!1924597)))

(declare-fun b!4759806 () Bool)

(declare-fun map!11863 (MutableMap!4733) ListMap!5709)

(assert (=> b!4759806 (= e!2970043 (= lt!1924612 (get!17955 (getValueByKey!2132 (toList!6209 (map!11863 (cache!4575 thiss!28909))) lt!1924526))))))

(declare-fun b!4759807 () Bool)

(assert (=> b!4759807 false))

(declare-fun lt!1924596 () Unit!137797)

(declare-fun lt!1924614 () Unit!137797)

(assert (=> b!4759807 (= lt!1924596 lt!1924614)))

(declare-fun lt!1924608 () List!53455)

(declare-fun lt!1924588 () List!53453)

(assert (=> b!4759807 (contains!16647 lt!1924608 (tuple2!55259 lt!1924605 lt!1924588))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!894 (List!53455 (_ BitVec 64) List!53453) Unit!137797)

(assert (=> b!4759807 (= lt!1924614 (lemmaGetValueByKeyImpliesContainsTuple!894 lt!1924608 lt!1924605 lt!1924588))))

(assert (=> b!4759807 (= lt!1924588 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924605))))

(assert (=> b!4759807 (= lt!1924608 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))

(declare-fun lt!1924591 () Unit!137797)

(declare-fun lt!1924613 () Unit!137797)

(assert (=> b!4759807 (= lt!1924591 lt!1924613)))

(declare-fun lt!1924595 () List!53455)

(declare-datatypes ((Option!12597 0))(
  ( (None!12596) (Some!12596 (v!47385 List!53453)) )
))
(declare-fun isDefined!9775 (Option!12597) Bool)

(declare-fun getValueByKey!2133 (List!53455 (_ BitVec 64)) Option!12597)

(assert (=> b!4759807 (isDefined!9775 (getValueByKey!2133 lt!1924595 lt!1924605))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1952 (List!53455 (_ BitVec 64)) Unit!137797)

(assert (=> b!4759807 (= lt!1924613 (lemmaContainsKeyImpliesGetValueByKeyDefined!1952 lt!1924595 lt!1924605))))

(assert (=> b!4759807 (= lt!1924595 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))

(declare-fun Unit!137799 () Unit!137797)

(assert (=> b!4759807 (= e!2970044 Unit!137799)))

(declare-fun d!1521274 () Bool)

(assert (=> d!1521274 e!2970043))

(declare-fun c!812055 () Bool)

(assert (=> d!1521274 (= c!812055 (contains!16646 (cache!4575 thiss!28909) lt!1924526))))

(assert (=> d!1521274 (= lt!1924612 e!2970045)))

(declare-fun c!812056 () Bool)

(assert (=> d!1521274 (= c!812056 (not (contains!16646 (cache!4575 thiss!28909) lt!1924526)))))

(assert (=> d!1521274 (valid!3849 (cache!4575 thiss!28909))))

(assert (=> d!1521274 (= (apply!12531 (cache!4575 thiss!28909) lt!1924526) lt!1924612)))

(declare-fun b!4759803 () Bool)

(declare-fun Unit!137800 () Unit!137797)

(assert (=> b!4759803 (= e!2970044 Unit!137800)))

(assert (= (and d!1521274 c!812056) b!4759804))

(assert (= (and d!1521274 (not c!812056)) b!4759805))

(assert (= (and b!4759805 c!812054) b!4759807))

(assert (= (and b!4759805 (not c!812054)) b!4759803))

(assert (= (and d!1521274 c!812055) b!4759806))

(assert (= (and d!1521274 (not c!812055)) b!4759802))

(declare-fun b_lambda!183801 () Bool)

(assert (=> (not b_lambda!183801) (not b!4759802)))

(declare-fun t!360814 () Bool)

(declare-fun tb!257411 () Bool)

(assert (=> (and b!4759779 (= (defaultValue!4904 (cache!4575 thiss!28909)) (defaultValue!4904 (cache!4575 thiss!28909))) t!360814) tb!257411))

(declare-fun result!318914 () Bool)

(assert (=> tb!257411 (= result!318914 true)))

(assert (=> b!4759802 t!360814))

(declare-fun b_and!340935 () Bool)

(assert (= b_and!340933 (and (=> t!360814 result!318914) b_and!340935)))

(declare-fun b_lambda!183803 () Bool)

(assert (=> (not b_lambda!183803) (not b!4759804)))

(assert (=> b!4759804 t!360814))

(declare-fun b_and!340937 () Bool)

(assert (= b_and!340935 (and (=> t!360814 result!318914) b_and!340937)))

(declare-fun m!5729145 () Bool)

(assert (=> b!4759804 m!5729145))

(declare-fun m!5729147 () Bool)

(assert (=> b!4759805 m!5729147))

(declare-fun m!5729149 () Bool)

(assert (=> b!4759805 m!5729149))

(declare-fun m!5729151 () Bool)

(assert (=> b!4759805 m!5729151))

(declare-fun m!5729153 () Bool)

(assert (=> b!4759805 m!5729153))

(declare-fun m!5729155 () Bool)

(assert (=> b!4759805 m!5729155))

(declare-fun m!5729157 () Bool)

(assert (=> b!4759805 m!5729157))

(declare-fun m!5729159 () Bool)

(assert (=> b!4759805 m!5729159))

(declare-fun m!5729161 () Bool)

(assert (=> b!4759805 m!5729161))

(declare-fun m!5729163 () Bool)

(assert (=> b!4759805 m!5729163))

(declare-fun m!5729165 () Bool)

(assert (=> b!4759805 m!5729165))

(declare-fun m!5729167 () Bool)

(assert (=> b!4759805 m!5729167))

(declare-fun m!5729169 () Bool)

(assert (=> b!4759805 m!5729169))

(declare-fun m!5729171 () Bool)

(assert (=> b!4759805 m!5729171))

(declare-fun m!5729173 () Bool)

(assert (=> b!4759805 m!5729173))

(assert (=> b!4759805 m!5729171))

(declare-fun m!5729175 () Bool)

(assert (=> b!4759805 m!5729175))

(declare-fun m!5729177 () Bool)

(assert (=> b!4759805 m!5729177))

(declare-fun m!5729179 () Bool)

(assert (=> b!4759805 m!5729179))

(declare-fun m!5729181 () Bool)

(assert (=> b!4759805 m!5729181))

(declare-fun m!5729183 () Bool)

(assert (=> b!4759805 m!5729183))

(declare-fun m!5729185 () Bool)

(assert (=> b!4759805 m!5729185))

(assert (=> b!4759805 m!5729157))

(declare-fun m!5729187 () Bool)

(assert (=> b!4759805 m!5729187))

(assert (=> b!4759805 m!5729171))

(assert (=> b!4759805 m!5729183))

(assert (=> b!4759805 m!5729147))

(assert (=> b!4759805 m!5729153))

(assert (=> b!4759805 m!5729173))

(assert (=> b!4759805 m!5729157))

(assert (=> b!4759805 m!5729177))

(declare-fun m!5729189 () Bool)

(assert (=> b!4759805 m!5729189))

(declare-fun m!5729191 () Bool)

(assert (=> b!4759805 m!5729191))

(declare-fun m!5729193 () Bool)

(assert (=> b!4759807 m!5729193))

(declare-fun m!5729195 () Bool)

(assert (=> b!4759807 m!5729195))

(declare-fun m!5729197 () Bool)

(assert (=> b!4759807 m!5729197))

(declare-fun m!5729199 () Bool)

(assert (=> b!4759807 m!5729199))

(assert (=> b!4759807 m!5729195))

(declare-fun m!5729201 () Bool)

(assert (=> b!4759807 m!5729201))

(assert (=> b!4759807 m!5729183))

(assert (=> b!4759807 m!5729185))

(assert (=> b!4759802 m!5729145))

(declare-fun m!5729203 () Bool)

(assert (=> b!4759806 m!5729203))

(declare-fun m!5729205 () Bool)

(assert (=> b!4759806 m!5729205))

(assert (=> b!4759806 m!5729205))

(declare-fun m!5729207 () Bool)

(assert (=> b!4759806 m!5729207))

(assert (=> d!1521274 m!5729139))

(assert (=> d!1521274 m!5729131))

(assert (=> b!4759775 d!1521274))

(declare-fun d!1521276 () Bool)

(declare-fun dynLambda!21919 (Int tuple2!55256) Bool)

(assert (=> d!1521276 (dynLambda!21919 lambda!223714 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526)))))

(declare-fun lt!1924619 () Unit!137797)

(declare-fun choose!33902 (MutableMap!4733 tuple2!55254 Int) Unit!137797)

(assert (=> d!1521276 (= lt!1924619 (choose!33902 (cache!4575 thiss!28909) lt!1924526 lambda!223714))))

(assert (=> d!1521276 (valid!3849 (cache!4575 thiss!28909))))

(assert (=> d!1521276 (= (lemmaForallPairsThenForLookup!70 (cache!4575 thiss!28909) lt!1924526 lambda!223714) lt!1924619)))

(declare-fun b_lambda!183805 () Bool)

(assert (=> (not b_lambda!183805) (not d!1521276)))

(declare-fun bs!1147051 () Bool)

(assert (= bs!1147051 d!1521276))

(assert (=> bs!1147051 m!5729115))

(declare-fun m!5729209 () Bool)

(assert (=> bs!1147051 m!5729209))

(declare-fun m!5729211 () Bool)

(assert (=> bs!1147051 m!5729211))

(assert (=> bs!1147051 m!5729131))

(assert (=> b!4759775 d!1521276))

(declare-fun d!1521278 () Bool)

(declare-fun c!812059 () Bool)

(assert (=> d!1521278 (= c!812059 ((_ is Node!14488) (c!812047 (totalInput!4494 thiss!28909))))))

(declare-fun e!2970050 () Bool)

(assert (=> d!1521278 (= (inv!68832 (c!812047 (totalInput!4494 thiss!28909))) e!2970050)))

(declare-fun b!4759814 () Bool)

(declare-fun inv!68834 (Conc!14488) Bool)

(assert (=> b!4759814 (= e!2970050 (inv!68834 (c!812047 (totalInput!4494 thiss!28909))))))

(declare-fun b!4759815 () Bool)

(declare-fun e!2970051 () Bool)

(assert (=> b!4759815 (= e!2970050 e!2970051)))

(declare-fun res!2018957 () Bool)

(assert (=> b!4759815 (= res!2018957 (not ((_ is Leaf!23584) (c!812047 (totalInput!4494 thiss!28909)))))))

(assert (=> b!4759815 (=> res!2018957 e!2970051)))

(declare-fun b!4759816 () Bool)

(declare-fun inv!68835 (Conc!14488) Bool)

(assert (=> b!4759816 (= e!2970051 (inv!68835 (c!812047 (totalInput!4494 thiss!28909))))))

(assert (= (and d!1521278 c!812059) b!4759814))

(assert (= (and d!1521278 (not c!812059)) b!4759815))

(assert (= (and b!4759815 (not res!2018957)) b!4759816))

(declare-fun m!5729213 () Bool)

(assert (=> b!4759814 m!5729213))

(declare-fun m!5729215 () Bool)

(assert (=> b!4759816 m!5729215))

(assert (=> b!4759774 d!1521278))

(declare-fun bs!1147052 () Bool)

(declare-fun b!4759821 () Bool)

(assert (= bs!1147052 (and b!4759821 b!4759805)))

(declare-fun lambda!223724 () Int)

(assert (=> bs!1147052 (= lambda!223724 lambda!223721)))

(declare-fun d!1521280 () Bool)

(declare-fun res!2018962 () Bool)

(declare-fun e!2970054 () Bool)

(assert (=> d!1521280 (=> (not res!2018962) (not e!2970054))))

(declare-fun valid!3850 (MutLongMap!4849) Bool)

(assert (=> d!1521280 (= res!2018962 (valid!3850 (v!47382 (underlying!9906 (cache!4575 thiss!28909)))))))

(assert (=> d!1521280 (= (valid!3849 (cache!4575 thiss!28909)) e!2970054)))

(declare-fun res!2018963 () Bool)

(assert (=> b!4759821 (=> (not res!2018963) (not e!2970054))))

(declare-fun forall!11826 (List!53455 Int) Bool)

(assert (=> b!4759821 (= res!2018963 (forall!11826 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))) lambda!223724))))

(declare-fun b!4759822 () Bool)

(declare-fun allKeysSameHashInMap!2000 (ListLongMap!4601 Hashable!6510) Bool)

(assert (=> b!4759822 (= e!2970054 (allKeysSameHashInMap!2000 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909)))) (hashF!12320 (cache!4575 thiss!28909))))))

(assert (= (and d!1521280 res!2018962) b!4759821))

(assert (= (and b!4759821 res!2018963) b!4759822))

(declare-fun m!5729217 () Bool)

(assert (=> d!1521280 m!5729217))

(assert (=> b!4759821 m!5729185))

(declare-fun m!5729219 () Bool)

(assert (=> b!4759821 m!5729219))

(assert (=> b!4759822 m!5729185))

(assert (=> b!4759822 m!5729185))

(declare-fun m!5729221 () Bool)

(assert (=> b!4759822 m!5729221))

(assert (=> b!4759770 d!1521280))

(declare-fun bs!1147053 () Bool)

(declare-fun b!4759828 () Bool)

(assert (= bs!1147053 (and b!4759828 b!4759775)))

(declare-fun lambda!223727 () Int)

(assert (=> bs!1147053 (= (= (totalInput!4494 thiss!28909) localTotalInput!8) (= lambda!223727 lambda!223714))))

(assert (=> b!4759828 true))

(declare-fun d!1521282 () Bool)

(declare-fun res!2018968 () Bool)

(declare-fun e!2970057 () Bool)

(assert (=> d!1521282 (=> (not res!2018968) (not e!2970057))))

(assert (=> d!1521282 (= res!2018968 (valid!3849 (cache!4575 thiss!28909)))))

(assert (=> d!1521282 (= (validCacheMapFindLongestMatch!129 (cache!4575 thiss!28909) (totalInput!4494 thiss!28909)) e!2970057)))

(declare-fun b!4759827 () Bool)

(declare-fun res!2018969 () Bool)

(assert (=> b!4759827 (=> (not res!2018969) (not e!2970057))))

(declare-fun invariantList!1644 (List!53453) Bool)

(assert (=> b!4759827 (= res!2018969 (invariantList!1644 (toList!6209 (map!11863 (cache!4575 thiss!28909)))))))

(declare-fun forall!11827 (List!53453 Int) Bool)

(assert (=> b!4759828 (= e!2970057 (forall!11827 (toList!6209 (map!11863 (cache!4575 thiss!28909))) lambda!223727))))

(assert (= (and d!1521282 res!2018968) b!4759827))

(assert (= (and b!4759827 res!2018969) b!4759828))

(assert (=> d!1521282 m!5729131))

(assert (=> b!4759827 m!5729203))

(declare-fun m!5729224 () Bool)

(assert (=> b!4759827 m!5729224))

(assert (=> b!4759828 m!5729203))

(declare-fun m!5729226 () Bool)

(assert (=> b!4759828 m!5729226))

(assert (=> b!4759778 d!1521282))

(declare-fun d!1521284 () Bool)

(declare-fun isBalanced!3907 (Conc!14488) Bool)

(assert (=> d!1521284 (= (inv!68830 (totalInput!4494 thiss!28909)) (isBalanced!3907 (c!812047 (totalInput!4494 thiss!28909))))))

(declare-fun bs!1147054 () Bool)

(assert (= bs!1147054 d!1521284))

(declare-fun m!5729228 () Bool)

(assert (=> bs!1147054 m!5729228))

(assert (=> b!4759777 d!1521284))

(declare-fun bs!1147055 () Bool)

(declare-fun b!4759856 () Bool)

(assert (= bs!1147055 (and b!4759856 b!4759805)))

(declare-fun lambda!223730 () Int)

(assert (=> bs!1147055 (= lambda!223730 lambda!223721)))

(declare-fun bs!1147056 () Bool)

(assert (= bs!1147056 (and b!4759856 b!4759821)))

(assert (=> bs!1147056 (= lambda!223730 lambda!223724)))

(declare-fun b!4759851 () Bool)

(declare-fun e!2970076 () Bool)

(declare-fun call!333691 () Bool)

(assert (=> b!4759851 (= e!2970076 call!333691)))

(declare-fun b!4759852 () Bool)

(declare-fun e!2970074 () Unit!137797)

(declare-fun e!2970072 () Unit!137797)

(assert (=> b!4759852 (= e!2970074 e!2970072)))

(declare-fun res!2018976 () Bool)

(declare-fun call!333689 () Bool)

(assert (=> b!4759852 (= res!2018976 call!333689)))

(declare-fun e!2970073 () Bool)

(assert (=> b!4759852 (=> (not res!2018976) (not e!2970073))))

(declare-fun c!812071 () Bool)

(assert (=> b!4759852 (= c!812071 e!2970073)))

(declare-fun c!812070 () Bool)

(declare-fun call!333688 () List!53453)

(declare-fun bm!333683 () Bool)

(declare-fun call!333690 () ListLongMap!4601)

(declare-fun call!333692 () (_ BitVec 64))

(declare-fun lt!1924677 () ListLongMap!4601)

(assert (=> bm!333683 (= call!333688 (apply!12533 (ite c!812070 lt!1924677 call!333690) call!333692))))

(declare-fun b!4759853 () Bool)

(assert (=> b!4759853 (= e!2970073 call!333691)))

(declare-fun bm!333684 () Bool)

(declare-fun call!333693 () Option!12595)

(assert (=> bm!333684 (= call!333693 (getPair!616 call!333688 lt!1924526))))

(declare-fun bm!333685 () Bool)

(assert (=> bm!333685 (= call!333690 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909)))))))

(declare-fun b!4759854 () Bool)

(declare-fun lt!1924672 () Unit!137797)

(assert (=> b!4759854 (= e!2970074 lt!1924672)))

(assert (=> b!4759854 (= lt!1924677 call!333690)))

(declare-fun lemmaInGenericMapThenInLongMap!180 (ListLongMap!4601 tuple2!55254 Hashable!6510) Unit!137797)

(assert (=> b!4759854 (= lt!1924672 (lemmaInGenericMapThenInLongMap!180 lt!1924677 lt!1924526 (hashF!12320 (cache!4575 thiss!28909))))))

(declare-fun res!2018977 () Bool)

(assert (=> b!4759854 (= res!2018977 call!333689)))

(assert (=> b!4759854 (=> (not res!2018977) (not e!2970076))))

(assert (=> b!4759854 e!2970076))

(declare-fun bm!333686 () Bool)

(assert (=> bm!333686 (= call!333692 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526))))

(declare-fun bm!333687 () Bool)

(assert (=> bm!333687 (= call!333691 (isDefined!9774 call!333693))))

(declare-fun b!4759855 () Bool)

(assert (=> b!4759855 false))

(declare-fun lt!1924668 () Unit!137797)

(declare-fun lt!1924663 () Unit!137797)

(assert (=> b!4759855 (= lt!1924668 lt!1924663)))

(declare-fun lt!1924661 () ListLongMap!4601)

(declare-fun contains!16649 (ListMap!5709 tuple2!55254) Bool)

(assert (=> b!4759855 (contains!16649 (extractMap!2116 (toList!6208 lt!1924661)) lt!1924526)))

(declare-fun lemmaInLongMapThenInGenericMap!180 (ListLongMap!4601 tuple2!55254 Hashable!6510) Unit!137797)

(assert (=> b!4759855 (= lt!1924663 (lemmaInLongMapThenInGenericMap!180 lt!1924661 lt!1924526 (hashF!12320 (cache!4575 thiss!28909))))))

(assert (=> b!4759855 (= lt!1924661 call!333690)))

(declare-fun Unit!137801 () Unit!137797)

(assert (=> b!4759855 (= e!2970072 Unit!137801)))

(declare-fun lt!1924679 () (_ BitVec 64))

(declare-fun e!2970075 () Unit!137797)

(assert (=> b!4759856 (= e!2970075 (forallContained!3826 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))) lambda!223730 (tuple2!55259 lt!1924679 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924679))))))

(declare-fun c!812069 () Bool)

(assert (=> b!4759856 (= c!812069 (not (contains!16647 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))) (tuple2!55259 lt!1924679 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924679)))))))

(declare-fun lt!1924676 () Unit!137797)

(declare-fun e!2970077 () Unit!137797)

(assert (=> b!4759856 (= lt!1924676 e!2970077)))

(declare-fun d!1521286 () Bool)

(declare-fun lt!1924670 () Bool)

(assert (=> d!1521286 (= lt!1924670 (contains!16649 (map!11863 (cache!4575 thiss!28909)) lt!1924526))))

(declare-fun e!2970078 () Bool)

(assert (=> d!1521286 (= lt!1924670 e!2970078)))

(declare-fun res!2018978 () Bool)

(assert (=> d!1521286 (=> (not res!2018978) (not e!2970078))))

(declare-fun contains!16650 (MutLongMap!4849 (_ BitVec 64)) Bool)

(assert (=> d!1521286 (= res!2018978 (contains!16650 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924679))))

(declare-fun lt!1924669 () Unit!137797)

(assert (=> d!1521286 (= lt!1924669 e!2970074)))

(assert (=> d!1521286 (= c!812070 (contains!16649 (extractMap!2116 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909)))))) lt!1924526))))

(declare-fun lt!1924673 () Unit!137797)

(assert (=> d!1521286 (= lt!1924673 e!2970075)))

(declare-fun c!812068 () Bool)

(assert (=> d!1521286 (= c!812068 (contains!16650 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924679))))

(assert (=> d!1521286 (= lt!1924679 (hash!4517 (hashF!12320 (cache!4575 thiss!28909)) lt!1924526))))

(assert (=> d!1521286 (valid!3849 (cache!4575 thiss!28909))))

(assert (=> d!1521286 (= (contains!16646 (cache!4575 thiss!28909) lt!1924526) lt!1924670)))

(declare-fun bm!333688 () Bool)

(assert (=> bm!333688 (= call!333689 (contains!16648 (ite c!812070 lt!1924677 call!333690) call!333692))))

(declare-fun b!4759857 () Bool)

(declare-fun Unit!137802 () Unit!137797)

(assert (=> b!4759857 (= e!2970072 Unit!137802)))

(declare-fun b!4759858 () Bool)

(assert (=> b!4759858 (= e!2970078 (isDefined!9774 (getPair!616 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924679) lt!1924526)))))

(declare-fun b!4759859 () Bool)

(declare-fun Unit!137803 () Unit!137797)

(assert (=> b!4759859 (= e!2970075 Unit!137803)))

(declare-fun b!4759860 () Bool)

(declare-fun Unit!137804 () Unit!137797)

(assert (=> b!4759860 (= e!2970077 Unit!137804)))

(declare-fun b!4759861 () Bool)

(assert (=> b!4759861 false))

(declare-fun lt!1924671 () Unit!137797)

(declare-fun lt!1924664 () Unit!137797)

(assert (=> b!4759861 (= lt!1924671 lt!1924664)))

(declare-fun lt!1924660 () List!53455)

(declare-fun lt!1924674 () List!53453)

(assert (=> b!4759861 (contains!16647 lt!1924660 (tuple2!55259 lt!1924679 lt!1924674))))

(assert (=> b!4759861 (= lt!1924664 (lemmaGetValueByKeyImpliesContainsTuple!894 lt!1924660 lt!1924679 lt!1924674))))

(assert (=> b!4759861 (= lt!1924674 (apply!12532 (v!47382 (underlying!9906 (cache!4575 thiss!28909))) lt!1924679))))

(assert (=> b!4759861 (= lt!1924660 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))

(declare-fun lt!1924667 () Unit!137797)

(declare-fun lt!1924675 () Unit!137797)

(assert (=> b!4759861 (= lt!1924667 lt!1924675)))

(declare-fun lt!1924665 () List!53455)

(assert (=> b!4759861 (isDefined!9775 (getValueByKey!2133 lt!1924665 lt!1924679))))

(assert (=> b!4759861 (= lt!1924675 (lemmaContainsKeyImpliesGetValueByKeyDefined!1952 lt!1924665 lt!1924679))))

(assert (=> b!4759861 (= lt!1924665 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))

(declare-fun lt!1924666 () Unit!137797)

(declare-fun lt!1924678 () Unit!137797)

(assert (=> b!4759861 (= lt!1924666 lt!1924678)))

(declare-fun lt!1924662 () List!53455)

(declare-fun containsKey!3635 (List!53455 (_ BitVec 64)) Bool)

(assert (=> b!4759861 (containsKey!3635 lt!1924662 lt!1924679)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!181 (List!53455 (_ BitVec 64)) Unit!137797)

(assert (=> b!4759861 (= lt!1924678 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!181 lt!1924662 lt!1924679))))

(assert (=> b!4759861 (= lt!1924662 (toList!6208 (map!11862 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))

(declare-fun Unit!137805 () Unit!137797)

(assert (=> b!4759861 (= e!2970077 Unit!137805)))

(assert (= (and d!1521286 c!812068) b!4759856))

(assert (= (and d!1521286 (not c!812068)) b!4759859))

(assert (= (and b!4759856 c!812069) b!4759861))

(assert (= (and b!4759856 (not c!812069)) b!4759860))

(assert (= (and d!1521286 c!812070) b!4759854))

(assert (= (and d!1521286 (not c!812070)) b!4759852))

(assert (= (and b!4759854 res!2018977) b!4759851))

(assert (= (and b!4759852 res!2018976) b!4759853))

(assert (= (and b!4759852 c!812071) b!4759855))

(assert (= (and b!4759852 (not c!812071)) b!4759857))

(assert (= (or b!4759854 b!4759852 b!4759853 b!4759855) bm!333685))

(assert (= (or b!4759854 b!4759851 b!4759852 b!4759853) bm!333686))

(assert (= (or b!4759854 b!4759852) bm!333688))

(assert (= (or b!4759851 b!4759853) bm!333683))

(assert (= (or b!4759851 b!4759853) bm!333684))

(assert (= (or b!4759851 b!4759853) bm!333687))

(assert (= (and d!1521286 res!2018978) b!4759858))

(assert (=> b!4759861 m!5729185))

(declare-fun m!5729230 () Bool)

(assert (=> b!4759861 m!5729230))

(declare-fun m!5729232 () Bool)

(assert (=> b!4759861 m!5729232))

(declare-fun m!5729234 () Bool)

(assert (=> b!4759861 m!5729234))

(declare-fun m!5729236 () Bool)

(assert (=> b!4759861 m!5729236))

(declare-fun m!5729238 () Bool)

(assert (=> b!4759861 m!5729238))

(declare-fun m!5729240 () Bool)

(assert (=> b!4759861 m!5729240))

(declare-fun m!5729242 () Bool)

(assert (=> b!4759861 m!5729242))

(declare-fun m!5729244 () Bool)

(assert (=> b!4759861 m!5729244))

(assert (=> b!4759861 m!5729240))

(assert (=> b!4759858 m!5729230))

(assert (=> b!4759858 m!5729230))

(declare-fun m!5729246 () Bool)

(assert (=> b!4759858 m!5729246))

(assert (=> b!4759858 m!5729246))

(declare-fun m!5729248 () Bool)

(assert (=> b!4759858 m!5729248))

(declare-fun m!5729250 () Bool)

(assert (=> bm!333688 m!5729250))

(assert (=> bm!333686 m!5729171))

(declare-fun m!5729252 () Bool)

(assert (=> b!4759855 m!5729252))

(assert (=> b!4759855 m!5729252))

(declare-fun m!5729254 () Bool)

(assert (=> b!4759855 m!5729254))

(declare-fun m!5729256 () Bool)

(assert (=> b!4759855 m!5729256))

(declare-fun m!5729258 () Bool)

(assert (=> bm!333687 m!5729258))

(assert (=> d!1521286 m!5729185))

(assert (=> d!1521286 m!5729171))

(assert (=> d!1521286 m!5729203))

(declare-fun m!5729260 () Bool)

(assert (=> d!1521286 m!5729260))

(assert (=> d!1521286 m!5729131))

(declare-fun m!5729262 () Bool)

(assert (=> d!1521286 m!5729262))

(declare-fun m!5729264 () Bool)

(assert (=> d!1521286 m!5729264))

(declare-fun m!5729266 () Bool)

(assert (=> d!1521286 m!5729266))

(assert (=> d!1521286 m!5729264))

(assert (=> d!1521286 m!5729203))

(assert (=> b!4759856 m!5729185))

(assert (=> b!4759856 m!5729230))

(declare-fun m!5729268 () Bool)

(assert (=> b!4759856 m!5729268))

(declare-fun m!5729270 () Bool)

(assert (=> b!4759856 m!5729270))

(declare-fun m!5729272 () Bool)

(assert (=> bm!333684 m!5729272))

(assert (=> bm!333685 m!5729185))

(declare-fun m!5729274 () Bool)

(assert (=> b!4759854 m!5729274))

(declare-fun m!5729276 () Bool)

(assert (=> bm!333683 m!5729276))

(assert (=> b!4759772 d!1521286))

(declare-fun bs!1147057 () Bool)

(declare-fun b!4759863 () Bool)

(assert (= bs!1147057 (and b!4759863 b!4759775)))

(declare-fun lambda!223731 () Int)

(assert (=> bs!1147057 (= lambda!223731 lambda!223714)))

(declare-fun bs!1147058 () Bool)

(assert (= bs!1147058 (and b!4759863 b!4759828)))

(assert (=> bs!1147058 (= (= localTotalInput!8 (totalInput!4494 thiss!28909)) (= lambda!223731 lambda!223727))))

(assert (=> b!4759863 true))

(declare-fun d!1521288 () Bool)

(declare-fun res!2018979 () Bool)

(declare-fun e!2970079 () Bool)

(assert (=> d!1521288 (=> (not res!2018979) (not e!2970079))))

(assert (=> d!1521288 (= res!2018979 (valid!3849 (cache!4575 thiss!28909)))))

(assert (=> d!1521288 (= (validCacheMapFindLongestMatch!129 (cache!4575 thiss!28909) localTotalInput!8) e!2970079)))

(declare-fun b!4759862 () Bool)

(declare-fun res!2018980 () Bool)

(assert (=> b!4759862 (=> (not res!2018980) (not e!2970079))))

(assert (=> b!4759862 (= res!2018980 (invariantList!1644 (toList!6209 (map!11863 (cache!4575 thiss!28909)))))))

(assert (=> b!4759863 (= e!2970079 (forall!11827 (toList!6209 (map!11863 (cache!4575 thiss!28909))) lambda!223731))))

(assert (= (and d!1521288 res!2018979) b!4759862))

(assert (= (and b!4759862 res!2018980) b!4759863))

(assert (=> d!1521288 m!5729131))

(assert (=> b!4759862 m!5729203))

(assert (=> b!4759862 m!5729224))

(assert (=> b!4759863 m!5729203))

(declare-fun m!5729278 () Bool)

(assert (=> b!4759863 m!5729278))

(assert (=> b!4759772 d!1521288))

(declare-fun d!1521290 () Bool)

(declare-fun lambda!223734 () Int)

(declare-fun forall!11828 (List!53452 Int) Bool)

(assert (=> d!1521290 (= (inv!68833 setElem!27124) (forall!11828 (exprs!3437 setElem!27124) lambda!223734))))

(declare-fun bs!1147059 () Bool)

(assert (= bs!1147059 d!1521290))

(declare-fun m!5729280 () Bool)

(assert (=> bs!1147059 m!5729280))

(assert (=> setNonEmpty!27124 d!1521290))

(declare-fun d!1521292 () Bool)

(assert (=> d!1521292 (= (inv!68830 localTotalInput!8) (isBalanced!3907 (c!812047 localTotalInput!8)))))

(declare-fun bs!1147060 () Bool)

(assert (= bs!1147060 d!1521292))

(declare-fun m!5729282 () Bool)

(assert (=> bs!1147060 m!5729282))

(assert (=> start!486752 d!1521292))

(declare-fun d!1521294 () Bool)

(declare-fun res!2018983 () Bool)

(declare-fun e!2970082 () Bool)

(assert (=> d!1521294 (=> (not res!2018983) (not e!2970082))))

(assert (=> d!1521294 (= res!2018983 ((_ is HashMap!4733) (cache!4575 thiss!28909)))))

(assert (=> d!1521294 (= (inv!68831 thiss!28909) e!2970082)))

(declare-fun b!4759866 () Bool)

(assert (=> b!4759866 (= e!2970082 (validCacheMapFindLongestMatch!129 (cache!4575 thiss!28909) (totalInput!4494 thiss!28909)))))

(assert (= (and d!1521294 res!2018983) b!4759866))

(assert (=> b!4759866 m!5729127))

(assert (=> start!486752 d!1521294))

(declare-fun d!1521296 () Bool)

(declare-fun lt!1924682 () Int)

(declare-fun size!36106 (List!53454) Int)

(declare-fun list!17379 (BalanceConc!28466) List!53454)

(assert (=> d!1521296 (= lt!1924682 (size!36106 (list!17379 localTotalInput!8)))))

(declare-fun size!36107 (Conc!14488) Int)

(assert (=> d!1521296 (= lt!1924682 (size!36107 (c!812047 localTotalInput!8)))))

(assert (=> d!1521296 (= (size!36105 localTotalInput!8) lt!1924682)))

(declare-fun bs!1147061 () Bool)

(assert (= bs!1147061 d!1521296))

(declare-fun m!5729284 () Bool)

(assert (=> bs!1147061 m!5729284))

(assert (=> bs!1147061 m!5729284))

(declare-fun m!5729286 () Bool)

(assert (=> bs!1147061 m!5729286))

(declare-fun m!5729288 () Bool)

(assert (=> bs!1147061 m!5729288))

(assert (=> b!4759773 d!1521296))

(declare-fun d!1521298 () Bool)

(declare-fun c!812072 () Bool)

(assert (=> d!1521298 (= c!812072 ((_ is Node!14488) (c!812047 localTotalInput!8)))))

(declare-fun e!2970083 () Bool)

(assert (=> d!1521298 (= (inv!68832 (c!812047 localTotalInput!8)) e!2970083)))

(declare-fun b!4759867 () Bool)

(assert (=> b!4759867 (= e!2970083 (inv!68834 (c!812047 localTotalInput!8)))))

(declare-fun b!4759868 () Bool)

(declare-fun e!2970084 () Bool)

(assert (=> b!4759868 (= e!2970083 e!2970084)))

(declare-fun res!2018984 () Bool)

(assert (=> b!4759868 (= res!2018984 (not ((_ is Leaf!23584) (c!812047 localTotalInput!8))))))

(assert (=> b!4759868 (=> res!2018984 e!2970084)))

(declare-fun b!4759869 () Bool)

(assert (=> b!4759869 (= e!2970084 (inv!68835 (c!812047 localTotalInput!8)))))

(assert (= (and d!1521298 c!812072) b!4759867))

(assert (= (and d!1521298 (not c!812072)) b!4759868))

(assert (= (and b!4759868 (not res!2018984)) b!4759869))

(declare-fun m!5729290 () Bool)

(assert (=> b!4759867 m!5729290))

(declare-fun m!5729292 () Bool)

(assert (=> b!4759869 m!5729292))

(assert (=> b!4759780 d!1521298))

(declare-fun tp!1352974 () Bool)

(declare-fun setElem!27127 () Context!5874)

(declare-fun setNonEmpty!27127 () Bool)

(declare-fun e!2970089 () Bool)

(declare-fun setRes!27127 () Bool)

(assert (=> setNonEmpty!27127 (= setRes!27127 (and tp!1352974 (inv!68833 setElem!27127) e!2970089))))

(declare-fun setRest!27127 () (InoxSet Context!5874))

(assert (=> setNonEmpty!27127 (= (_1!30921 (_1!30922 (h!59740 (zeroValue!5132 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5874 Bool)) false) setElem!27127 true) setRest!27127))))

(declare-fun setIsEmpty!27127 () Bool)

(assert (=> setIsEmpty!27127 setRes!27127))

(declare-fun b!4759877 () Bool)

(declare-fun tp!1352973 () Bool)

(assert (=> b!4759877 (= e!2970089 tp!1352973)))

(declare-fun b!4759876 () Bool)

(declare-fun e!2970090 () Bool)

(declare-fun tp!1352975 () Bool)

(assert (=> b!4759876 (= e!2970090 (and setRes!27127 tp!1352975))))

(declare-fun condSetEmpty!27127 () Bool)

(assert (=> b!4759876 (= condSetEmpty!27127 (= (_1!30921 (_1!30922 (h!59740 (zeroValue!5132 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))) ((as const (Array Context!5874 Bool)) false)))))

(assert (=> b!4759776 (= tp!1352956 e!2970090)))

(assert (= (and b!4759876 condSetEmpty!27127) setIsEmpty!27127))

(assert (= (and b!4759876 (not condSetEmpty!27127)) setNonEmpty!27127))

(assert (= setNonEmpty!27127 b!4759877))

(assert (= (and b!4759776 ((_ is Cons!53329) (zeroValue!5132 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909)))))))) b!4759876))

(declare-fun m!5729294 () Bool)

(assert (=> setNonEmpty!27127 m!5729294))

(declare-fun setElem!27128 () Context!5874)

(declare-fun setNonEmpty!27128 () Bool)

(declare-fun tp!1352977 () Bool)

(declare-fun setRes!27128 () Bool)

(declare-fun e!2970091 () Bool)

(assert (=> setNonEmpty!27128 (= setRes!27128 (and tp!1352977 (inv!68833 setElem!27128) e!2970091))))

(declare-fun setRest!27128 () (InoxSet Context!5874))

(assert (=> setNonEmpty!27128 (= (_1!30921 (_1!30922 (h!59740 (minValue!5132 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5874 Bool)) false) setElem!27128 true) setRest!27128))))

(declare-fun setIsEmpty!27128 () Bool)

(assert (=> setIsEmpty!27128 setRes!27128))

(declare-fun b!4759879 () Bool)

(declare-fun tp!1352976 () Bool)

(assert (=> b!4759879 (= e!2970091 tp!1352976)))

(declare-fun b!4759878 () Bool)

(declare-fun e!2970092 () Bool)

(declare-fun tp!1352978 () Bool)

(assert (=> b!4759878 (= e!2970092 (and setRes!27128 tp!1352978))))

(declare-fun condSetEmpty!27128 () Bool)

(assert (=> b!4759878 (= condSetEmpty!27128 (= (_1!30921 (_1!30922 (h!59740 (minValue!5132 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909))))))))) ((as const (Array Context!5874 Bool)) false)))))

(assert (=> b!4759776 (= tp!1352960 e!2970092)))

(assert (= (and b!4759878 condSetEmpty!27128) setIsEmpty!27128))

(assert (= (and b!4759878 (not condSetEmpty!27128)) setNonEmpty!27128))

(assert (= setNonEmpty!27128 b!4759879))

(assert (= (and b!4759776 ((_ is Cons!53329) (minValue!5132 (v!47381 (underlying!9905 (v!47382 (underlying!9906 (cache!4575 thiss!28909)))))))) b!4759878))

(declare-fun m!5729296 () Bool)

(assert (=> setNonEmpty!27128 m!5729296))

(declare-fun condSetEmpty!27131 () Bool)

(assert (=> setNonEmpty!27124 (= condSetEmpty!27131 (= setRest!27124 ((as const (Array Context!5874 Bool)) false)))))

(declare-fun setRes!27131 () Bool)

(assert (=> setNonEmpty!27124 (= tp!1352961 setRes!27131)))

(declare-fun setIsEmpty!27131 () Bool)

(assert (=> setIsEmpty!27131 setRes!27131))

(declare-fun e!2970095 () Bool)

(declare-fun setNonEmpty!27131 () Bool)

(declare-fun setElem!27131 () Context!5874)

(declare-fun tp!1352983 () Bool)

(assert (=> setNonEmpty!27131 (= setRes!27131 (and tp!1352983 (inv!68833 setElem!27131) e!2970095))))

(declare-fun setRest!27131 () (InoxSet Context!5874))

(assert (=> setNonEmpty!27131 (= setRest!27124 ((_ map or) (store ((as const (Array Context!5874 Bool)) false) setElem!27131 true) setRest!27131))))

(declare-fun b!4759884 () Bool)

(declare-fun tp!1352984 () Bool)

(assert (=> b!4759884 (= e!2970095 tp!1352984)))

(assert (= (and setNonEmpty!27124 condSetEmpty!27131) setIsEmpty!27131))

(assert (= (and setNonEmpty!27124 (not condSetEmpty!27131)) setNonEmpty!27131))

(assert (= setNonEmpty!27131 b!4759884))

(declare-fun m!5729298 () Bool)

(assert (=> setNonEmpty!27131 m!5729298))

(declare-fun b!4759889 () Bool)

(declare-fun e!2970098 () Bool)

(declare-fun tp!1352989 () Bool)

(declare-fun tp!1352990 () Bool)

(assert (=> b!4759889 (= e!2970098 (and tp!1352989 tp!1352990))))

(assert (=> b!4759767 (= tp!1352962 e!2970098)))

(assert (= (and b!4759767 ((_ is Cons!53328) (exprs!3437 setElem!27124))) b!4759889))

(declare-fun e!2970104 () Bool)

(declare-fun tp!1352997 () Bool)

(declare-fun b!4759898 () Bool)

(declare-fun tp!1352998 () Bool)

(assert (=> b!4759898 (= e!2970104 (and (inv!68832 (left!39121 (c!812047 (totalInput!4494 thiss!28909)))) tp!1352998 (inv!68832 (right!39451 (c!812047 (totalInput!4494 thiss!28909)))) tp!1352997))))

(declare-fun b!4759900 () Bool)

(declare-fun e!2970103 () Bool)

(declare-fun tp!1352999 () Bool)

(assert (=> b!4759900 (= e!2970103 tp!1352999)))

(declare-fun b!4759899 () Bool)

(declare-fun inv!68836 (IArray!29037) Bool)

(assert (=> b!4759899 (= e!2970104 (and (inv!68836 (xs!17794 (c!812047 (totalInput!4494 thiss!28909)))) e!2970103))))

(assert (=> b!4759774 (= tp!1352958 (and (inv!68832 (c!812047 (totalInput!4494 thiss!28909))) e!2970104))))

(assert (= (and b!4759774 ((_ is Node!14488) (c!812047 (totalInput!4494 thiss!28909)))) b!4759898))

(assert (= b!4759899 b!4759900))

(assert (= (and b!4759774 ((_ is Leaf!23584) (c!812047 (totalInput!4494 thiss!28909)))) b!4759899))

(declare-fun m!5729300 () Bool)

(assert (=> b!4759898 m!5729300))

(declare-fun m!5729302 () Bool)

(assert (=> b!4759898 m!5729302))

(declare-fun m!5729304 () Bool)

(assert (=> b!4759899 m!5729304))

(assert (=> b!4759774 m!5729113))

(declare-fun tp!1353015 () Bool)

(declare-fun setRes!27137 () Bool)

(declare-fun setElem!27136 () Context!5874)

(declare-fun e!2970116 () Bool)

(declare-fun setNonEmpty!27136 () Bool)

(assert (=> setNonEmpty!27136 (= setRes!27137 (and tp!1353015 (inv!68833 setElem!27136) e!2970116))))

(declare-fun mapDefault!21563 () List!53453)

(declare-fun setRest!27137 () (InoxSet Context!5874))

(assert (=> setNonEmpty!27136 (= (_1!30921 (_1!30922 (h!59740 mapDefault!21563))) ((_ map or) (store ((as const (Array Context!5874 Bool)) false) setElem!27136 true) setRest!27137))))

(declare-fun tp!1353014 () Bool)

(declare-fun setElem!27137 () Context!5874)

(declare-fun setNonEmpty!27137 () Bool)

(declare-fun setRes!27136 () Bool)

(declare-fun e!2970113 () Bool)

(assert (=> setNonEmpty!27137 (= setRes!27136 (and tp!1353014 (inv!68833 setElem!27137) e!2970113))))

(declare-fun mapValue!21563 () List!53453)

(declare-fun setRest!27136 () (InoxSet Context!5874))

(assert (=> setNonEmpty!27137 (= (_1!30921 (_1!30922 (h!59740 mapValue!21563))) ((_ map or) (store ((as const (Array Context!5874 Bool)) false) setElem!27137 true) setRest!27136))))

(declare-fun b!4759911 () Bool)

(declare-fun tp!1353018 () Bool)

(assert (=> b!4759911 (= e!2970116 tp!1353018)))

(declare-fun b!4759912 () Bool)

(declare-fun e!2970115 () Bool)

(declare-fun tp!1353016 () Bool)

(assert (=> b!4759912 (= e!2970115 (and setRes!27137 tp!1353016))))

(declare-fun condSetEmpty!27136 () Bool)

(assert (=> b!4759912 (= condSetEmpty!27136 (= (_1!30921 (_1!30922 (h!59740 mapDefault!21563))) ((as const (Array Context!5874 Bool)) false)))))

(declare-fun b!4759913 () Bool)

(declare-fun tp!1353019 () Bool)

(assert (=> b!4759913 (= e!2970113 tp!1353019)))

(declare-fun setIsEmpty!27136 () Bool)

(assert (=> setIsEmpty!27136 setRes!27136))

(declare-fun condMapEmpty!21563 () Bool)

(assert (=> mapNonEmpty!21560 (= condMapEmpty!21563 (= mapRest!21560 ((as const (Array (_ BitVec 32) List!53453)) mapDefault!21563)))))

(declare-fun mapRes!21563 () Bool)

(assert (=> mapNonEmpty!21560 (= tp!1352964 (and e!2970115 mapRes!21563))))

(declare-fun b!4759914 () Bool)

(declare-fun e!2970114 () Bool)

(declare-fun tp!1353017 () Bool)

(assert (=> b!4759914 (= e!2970114 (and setRes!27136 tp!1353017))))

(declare-fun condSetEmpty!27137 () Bool)

(assert (=> b!4759914 (= condSetEmpty!27137 (= (_1!30921 (_1!30922 (h!59740 mapValue!21563))) ((as const (Array Context!5874 Bool)) false)))))

(declare-fun mapNonEmpty!21563 () Bool)

(declare-fun tp!1353020 () Bool)

(assert (=> mapNonEmpty!21563 (= mapRes!21563 (and tp!1353020 e!2970114))))

(declare-fun mapRest!21563 () (Array (_ BitVec 32) List!53453))

(declare-fun mapKey!21563 () (_ BitVec 32))

(assert (=> mapNonEmpty!21563 (= mapRest!21560 (store mapRest!21563 mapKey!21563 mapValue!21563))))

(declare-fun setIsEmpty!27137 () Bool)

(assert (=> setIsEmpty!27137 setRes!27137))

(declare-fun mapIsEmpty!21563 () Bool)

(assert (=> mapIsEmpty!21563 mapRes!21563))

(assert (= (and mapNonEmpty!21560 condMapEmpty!21563) mapIsEmpty!21563))

(assert (= (and mapNonEmpty!21560 (not condMapEmpty!21563)) mapNonEmpty!21563))

(assert (= (and b!4759914 condSetEmpty!27137) setIsEmpty!27136))

(assert (= (and b!4759914 (not condSetEmpty!27137)) setNonEmpty!27137))

(assert (= setNonEmpty!27137 b!4759913))

(assert (= (and mapNonEmpty!21563 ((_ is Cons!53329) mapValue!21563)) b!4759914))

(assert (= (and b!4759912 condSetEmpty!27136) setIsEmpty!27137))

(assert (= (and b!4759912 (not condSetEmpty!27136)) setNonEmpty!27136))

(assert (= setNonEmpty!27136 b!4759911))

(assert (= (and mapNonEmpty!21560 ((_ is Cons!53329) mapDefault!21563)) b!4759912))

(declare-fun m!5729306 () Bool)

(assert (=> setNonEmpty!27136 m!5729306))

(declare-fun m!5729308 () Bool)

(assert (=> setNonEmpty!27137 m!5729308))

(declare-fun m!5729310 () Bool)

(assert (=> mapNonEmpty!21563 m!5729310))

(declare-fun setNonEmpty!27138 () Bool)

(declare-fun tp!1353022 () Bool)

(declare-fun setRes!27138 () Bool)

(declare-fun setElem!27138 () Context!5874)

(declare-fun e!2970117 () Bool)

(assert (=> setNonEmpty!27138 (= setRes!27138 (and tp!1353022 (inv!68833 setElem!27138) e!2970117))))

(declare-fun setRest!27138 () (InoxSet Context!5874))

(assert (=> setNonEmpty!27138 (= (_1!30921 (_1!30922 (h!59740 mapValue!21560))) ((_ map or) (store ((as const (Array Context!5874 Bool)) false) setElem!27138 true) setRest!27138))))

(declare-fun setIsEmpty!27138 () Bool)

(assert (=> setIsEmpty!27138 setRes!27138))

(declare-fun b!4759916 () Bool)

(declare-fun tp!1353021 () Bool)

(assert (=> b!4759916 (= e!2970117 tp!1353021)))

(declare-fun b!4759915 () Bool)

(declare-fun e!2970118 () Bool)

(declare-fun tp!1353023 () Bool)

(assert (=> b!4759915 (= e!2970118 (and setRes!27138 tp!1353023))))

(declare-fun condSetEmpty!27138 () Bool)

(assert (=> b!4759915 (= condSetEmpty!27138 (= (_1!30921 (_1!30922 (h!59740 mapValue!21560))) ((as const (Array Context!5874 Bool)) false)))))

(assert (=> mapNonEmpty!21560 (= tp!1352963 e!2970118)))

(assert (= (and b!4759915 condSetEmpty!27138) setIsEmpty!27138))

(assert (= (and b!4759915 (not condSetEmpty!27138)) setNonEmpty!27138))

(assert (= setNonEmpty!27138 b!4759916))

(assert (= (and mapNonEmpty!21560 ((_ is Cons!53329) mapValue!21560)) b!4759915))

(declare-fun m!5729312 () Bool)

(assert (=> setNonEmpty!27138 m!5729312))

(declare-fun e!2970120 () Bool)

(declare-fun b!4759917 () Bool)

(declare-fun tp!1353024 () Bool)

(declare-fun tp!1353025 () Bool)

(assert (=> b!4759917 (= e!2970120 (and (inv!68832 (left!39121 (c!812047 localTotalInput!8))) tp!1353025 (inv!68832 (right!39451 (c!812047 localTotalInput!8))) tp!1353024))))

(declare-fun b!4759919 () Bool)

(declare-fun e!2970119 () Bool)

(declare-fun tp!1353026 () Bool)

(assert (=> b!4759919 (= e!2970119 tp!1353026)))

(declare-fun b!4759918 () Bool)

(assert (=> b!4759918 (= e!2970120 (and (inv!68836 (xs!17794 (c!812047 localTotalInput!8))) e!2970119))))

(assert (=> b!4759780 (= tp!1352959 (and (inv!68832 (c!812047 localTotalInput!8)) e!2970120))))

(assert (= (and b!4759780 ((_ is Node!14488) (c!812047 localTotalInput!8))) b!4759917))

(assert (= b!4759918 b!4759919))

(assert (= (and b!4759780 ((_ is Leaf!23584) (c!812047 localTotalInput!8))) b!4759918))

(declare-fun m!5729314 () Bool)

(assert (=> b!4759917 m!5729314))

(declare-fun m!5729316 () Bool)

(assert (=> b!4759917 m!5729316))

(declare-fun m!5729318 () Bool)

(assert (=> b!4759918 m!5729318))

(assert (=> b!4759780 m!5729129))

(declare-fun tp!1353028 () Bool)

(declare-fun setRes!27139 () Bool)

(declare-fun setNonEmpty!27139 () Bool)

(declare-fun setElem!27139 () Context!5874)

(declare-fun e!2970121 () Bool)

(assert (=> setNonEmpty!27139 (= setRes!27139 (and tp!1353028 (inv!68833 setElem!27139) e!2970121))))

(declare-fun setRest!27139 () (InoxSet Context!5874))

(assert (=> setNonEmpty!27139 (= (_1!30921 (_1!30922 (h!59740 mapDefault!21560))) ((_ map or) (store ((as const (Array Context!5874 Bool)) false) setElem!27139 true) setRest!27139))))

(declare-fun setIsEmpty!27139 () Bool)

(assert (=> setIsEmpty!27139 setRes!27139))

(declare-fun b!4759921 () Bool)

(declare-fun tp!1353027 () Bool)

(assert (=> b!4759921 (= e!2970121 tp!1353027)))

(declare-fun b!4759920 () Bool)

(declare-fun e!2970122 () Bool)

(declare-fun tp!1353029 () Bool)

(assert (=> b!4759920 (= e!2970122 (and setRes!27139 tp!1353029))))

(declare-fun condSetEmpty!27139 () Bool)

(assert (=> b!4759920 (= condSetEmpty!27139 (= (_1!30921 (_1!30922 (h!59740 mapDefault!21560))) ((as const (Array Context!5874 Bool)) false)))))

(assert (=> b!4759768 (= tp!1352966 e!2970122)))

(assert (= (and b!4759920 condSetEmpty!27139) setIsEmpty!27139))

(assert (= (and b!4759920 (not condSetEmpty!27139)) setNonEmpty!27139))

(assert (= setNonEmpty!27139 b!4759921))

(assert (= (and b!4759768 ((_ is Cons!53329) mapDefault!21560)) b!4759920))

(declare-fun m!5729320 () Bool)

(assert (=> setNonEmpty!27139 m!5729320))

(declare-fun b_lambda!183807 () Bool)

(assert (= b_lambda!183803 (or (and b!4759779 b_free!129313) b_lambda!183807)))

(declare-fun b_lambda!183809 () Bool)

(assert (= b_lambda!183805 (or b!4759775 b_lambda!183809)))

(declare-fun bs!1147062 () Bool)

(declare-fun d!1521300 () Bool)

(assert (= bs!1147062 (and d!1521300 b!4759775)))

(assert (=> bs!1147062 (= (dynLambda!21919 lambda!223714 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526))) (validCacheMapFindLongestMatchBody!23 (tuple2!55257 lt!1924526 (apply!12531 (cache!4575 thiss!28909) lt!1924526)) localTotalInput!8))))

(assert (=> bs!1147062 m!5729117))

(assert (=> d!1521276 d!1521300))

(declare-fun b_lambda!183811 () Bool)

(assert (= b_lambda!183801 (or (and b!4759779 b_free!129313) b_lambda!183811)))

(check-sat (not b!4759869) (not b!4759921) (not b!4759878) (not b!4759919) (not b!4759855) (not b!4759806) (not bs!1147062) (not b!4759866) (not b!4759920) (not d!1521284) (not d!1521292) (not b!4759805) (not b_lambda!183807) (not b!4759917) (not b_lambda!183809) (not b!4759856) (not b_lambda!183811) (not bm!333684) (not b_next!130015) (not b!4759877) (not d!1521288) (not b!4759884) (not b!4759913) (not b!4759814) (not b!4759863) (not d!1521276) (not b!4759900) (not d!1521274) (not b!4759822) (not b!4759821) (not setNonEmpty!27127) (not setNonEmpty!27128) (not b!4759854) (not b!4759858) (not b!4759889) (not b!4759816) (not setNonEmpty!27136) (not d!1521282) (not b!4759898) (not d!1521280) (not b!4759789) (not bm!333686) (not setNonEmpty!27139) b_and!340937 (not d!1521296) (not b!4759827) (not b!4759915) (not b!4759807) (not b!4759788) b_and!340931 (not b!4759912) (not b!4759828) (not b_next!130017) (not bm!333685) (not b!4759862) (not setNonEmpty!27137) (not mapNonEmpty!21563) (not b!4759914) (not b!4759899) (not bm!333683) (not b!4759867) (not bm!333687) (not bm!333688) (not setNonEmpty!27138) (not b!4759879) (not d!1521290) (not b!4759861) (not b!4759774) (not setNonEmpty!27131) (not d!1521286) (not b!4759918) (not b!4759876) (not b!4759916) (not b!4759780) (not b!4759911))
(check-sat b_and!340937 b_and!340931 (not b_next!130015) (not b_next!130017))
