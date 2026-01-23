; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486604 () Bool)

(assert start!486604)

(declare-fun b!4758320 () Bool)

(declare-fun b_free!129231 () Bool)

(declare-fun b_next!129935 () Bool)

(assert (=> b!4758320 (= b_free!129231 (not b_next!129935))))

(declare-fun tp!1351991 () Bool)

(declare-fun b_and!340839 () Bool)

(assert (=> b!4758320 (= tp!1351991 b_and!340839)))

(declare-fun b!4758321 () Bool)

(declare-fun b_free!129233 () Bool)

(declare-fun b_next!129937 () Bool)

(assert (=> b!4758321 (= b_free!129233 (not b_next!129937))))

(declare-fun tp!1351993 () Bool)

(declare-fun b_and!340841 () Bool)

(assert (=> b!4758321 (= tp!1351993 b_and!340841)))

(declare-fun setIsEmpty!27001 () Bool)

(declare-fun setRes!27001 () Bool)

(assert (=> setIsEmpty!27001 setRes!27001))

(declare-fun b!4758315 () Bool)

(declare-fun e!2968848 () Bool)

(declare-datatypes ((C!26252 0))(
  ( (C!26253 (val!20114 Int)) )
))
(declare-datatypes ((Regex!13027 0))(
  ( (ElementMatch!13027 (c!811919 C!26252)) (Concat!21346 (regOne!26566 Regex!13027) (regTwo!26566 Regex!13027)) (EmptyExpr!13027) (Star!13027 (reg!13356 Regex!13027)) (EmptyLang!13027) (Union!13027 (regOne!26567 Regex!13027) (regTwo!26567 Regex!13027)) )
))
(declare-datatypes ((List!53388 0))(
  ( (Nil!53264) (Cons!53264 (h!59675 Regex!13027) (t!360740 List!53388)) )
))
(declare-datatypes ((Context!5834 0))(
  ( (Context!5835 (exprs!3417 List!53388)) )
))
(declare-datatypes ((array!17578 0))(
  ( (array!17579 (arr!7843 (Array (_ BitVec 32) (_ BitVec 64))) (size!36053 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6490 0))(
  ( (HashableExt!6489 (__x!32235 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55166 0))(
  ( (tuple2!55167 (_1!30877 (InoxSet Context!5834)) (_2!30877 Int)) )
))
(declare-datatypes ((tuple2!55168 0))(
  ( (tuple2!55169 (_1!30878 tuple2!55166) (_2!30878 Int)) )
))
(declare-datatypes ((List!53389 0))(
  ( (Nil!53265) (Cons!53265 (h!59676 tuple2!55168) (t!360741 List!53389)) )
))
(declare-datatypes ((List!53390 0))(
  ( (Nil!53266) (Cons!53266 (h!59677 C!26252) (t!360742 List!53390)) )
))
(declare-datatypes ((IArray!28997 0))(
  ( (IArray!28998 (innerList!14556 List!53390)) )
))
(declare-datatypes ((Conc!14468 0))(
  ( (Node!14468 (left!39057 Conc!14468) (right!39387 Conc!14468) (csize!29166 Int) (cheight!14679 Int)) (Leaf!23554 (xs!17774 IArray!28997) (csize!29167 Int)) (Empty!14468) )
))
(declare-datatypes ((BalanceConc!28426 0))(
  ( (BalanceConc!28427 (c!811920 Conc!14468)) )
))
(declare-datatypes ((array!17580 0))(
  ( (array!17581 (arr!7844 (Array (_ BitVec 32) List!53389)) (size!36054 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9658 0))(
  ( (LongMapFixedSize!9659 (defaultEntry!5243 Int) (mask!14529 (_ BitVec 32)) (extraKeys!5099 (_ BitVec 32)) (zeroValue!5112 List!53389) (minValue!5112 List!53389) (_size!9683 (_ BitVec 32)) (_keys!5164 array!17578) (_values!5137 array!17580) (_vacant!4894 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19081 0))(
  ( (Cell!19082 (v!47331 LongMapFixedSize!9658)) )
))
(declare-datatypes ((MutLongMap!4829 0))(
  ( (LongMap!4829 (underlying!9865 Cell!19081)) (MutLongMapExt!4828 (__x!32236 Int)) )
))
(declare-datatypes ((Cell!19083 0))(
  ( (Cell!19084 (v!47332 MutLongMap!4829)) )
))
(declare-datatypes ((MutableMap!4713 0))(
  ( (MutableMapExt!4712 (__x!32237 Int)) (HashMap!4713 (underlying!9866 Cell!19083) (hashF!12300 Hashable!6490) (_size!9684 (_ BitVec 32)) (defaultValue!4884 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!624 0))(
  ( (CacheFindLongestMatch!625 (cache!4555 MutableMap!4713) (totalInput!4465 BalanceConc!28426)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!624)

(declare-fun tp!1351992 () Bool)

(declare-fun inv!68717 (Conc!14468) Bool)

(assert (=> b!4758315 (= e!2968848 (and (inv!68717 (c!811920 (totalInput!4465 thiss!28972))) tp!1351992))))

(declare-fun b!4758316 () Bool)

(declare-fun e!2968842 () Bool)

(declare-fun e!2968840 () Bool)

(assert (=> b!4758316 (= e!2968842 e!2968840)))

(declare-fun from!930 () Int)

(declare-fun z!490 () (InoxSet Context!5834))

(declare-fun e!2968849 () Bool)

(declare-fun b!4758317 () Bool)

(declare-datatypes ((Option!12585 0))(
  ( (None!12584) (Some!12584 (v!47333 Int)) )
))
(declare-fun get!17937 (Option!12585) Int)

(declare-fun findLongestMatchInnerZipperFastV2!68 ((InoxSet Context!5834) Int BalanceConc!28426 Int) Int)

(declare-fun size!36055 (BalanceConc!28426) Int)

(assert (=> b!4758317 (= e!2968849 (not (= (get!17937 None!12584) (findLongestMatchInnerZipperFastV2!68 z!490 from!930 (totalInput!4465 thiss!28972) (size!36055 (totalInput!4465 thiss!28972))))))))

(declare-fun mapIsEmpty!21482 () Bool)

(declare-fun mapRes!21482 () Bool)

(assert (=> mapIsEmpty!21482 mapRes!21482))

(declare-fun e!2968839 () Bool)

(declare-fun b!4758318 () Bool)

(declare-fun e!2968844 () Bool)

(declare-fun inv!68718 (BalanceConc!28426) Bool)

(assert (=> b!4758318 (= e!2968844 (and e!2968839 (inv!68718 (totalInput!4465 thiss!28972)) e!2968848))))

(declare-fun b!4758319 () Bool)

(declare-fun e!2968847 () Bool)

(declare-fun tp!1351994 () Bool)

(assert (=> b!4758319 (= e!2968847 (and tp!1351994 mapRes!21482))))

(declare-fun condMapEmpty!21482 () Bool)

(declare-fun mapDefault!21482 () List!53389)

(assert (=> b!4758319 (= condMapEmpty!21482 (= (arr!7844 (_values!5137 (v!47331 (underlying!9865 (v!47332 (underlying!9866 (cache!4555 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53389)) mapDefault!21482)))))

(declare-fun tp!1351995 () Bool)

(declare-fun tp!1352000 () Bool)

(declare-fun array_inv!5643 (array!17578) Bool)

(declare-fun array_inv!5644 (array!17580) Bool)

(assert (=> b!4758320 (= e!2968840 (and tp!1351991 tp!1351995 tp!1352000 (array_inv!5643 (_keys!5164 (v!47331 (underlying!9865 (v!47332 (underlying!9866 (cache!4555 thiss!28972))))))) (array_inv!5644 (_values!5137 (v!47331 (underlying!9865 (v!47332 (underlying!9866 (cache!4555 thiss!28972))))))) e!2968847))))

(declare-fun e!2968841 () Bool)

(assert (=> b!4758321 (= e!2968839 (and e!2968841 tp!1351993))))

(declare-fun b!4758322 () Bool)

(declare-fun e!2968846 () Bool)

(declare-fun tp!1351996 () Bool)

(assert (=> b!4758322 (= e!2968846 tp!1351996)))

(declare-fun setElem!27001 () Context!5834)

(declare-fun setNonEmpty!27001 () Bool)

(declare-fun tp!1351998 () Bool)

(declare-fun inv!68719 (Context!5834) Bool)

(assert (=> setNonEmpty!27001 (= setRes!27001 (and tp!1351998 (inv!68719 setElem!27001) e!2968846))))

(declare-fun setRest!27001 () (InoxSet Context!5834))

(assert (=> setNonEmpty!27001 (= z!490 ((_ map or) (store ((as const (Array Context!5834 Bool)) false) setElem!27001 true) setRest!27001))))

(declare-fun b!4758323 () Bool)

(declare-fun res!2018563 () Bool)

(assert (=> b!4758323 (=> (not res!2018563) (not e!2968849))))

(declare-fun contains!16626 (MutableMap!4713 tuple2!55166) Bool)

(assert (=> b!4758323 (= res!2018563 (not (contains!16626 (cache!4555 thiss!28972) (tuple2!55167 z!490 from!930))))))

(declare-fun res!2018561 () Bool)

(assert (=> start!486604 (=> (not res!2018561) (not e!2968849))))

(declare-fun validCacheMapFindLongestMatch!113 (MutableMap!4713 BalanceConc!28426) Bool)

(assert (=> start!486604 (= res!2018561 (validCacheMapFindLongestMatch!113 (cache!4555 thiss!28972) (totalInput!4465 thiss!28972)))))

(assert (=> start!486604 e!2968849))

(declare-fun inv!68720 (CacheFindLongestMatch!624) Bool)

(assert (=> start!486604 (and (inv!68720 thiss!28972) e!2968844)))

(declare-fun condSetEmpty!27001 () Bool)

(assert (=> start!486604 (= condSetEmpty!27001 (= z!490 ((as const (Array Context!5834 Bool)) false)))))

(assert (=> start!486604 setRes!27001))

(assert (=> start!486604 true))

(declare-fun b!4758324 () Bool)

(declare-fun e!2968843 () Bool)

(assert (=> b!4758324 (= e!2968843 e!2968842)))

(declare-fun mapNonEmpty!21482 () Bool)

(declare-fun tp!1351999 () Bool)

(declare-fun tp!1351997 () Bool)

(assert (=> mapNonEmpty!21482 (= mapRes!21482 (and tp!1351999 tp!1351997))))

(declare-fun mapRest!21482 () (Array (_ BitVec 32) List!53389))

(declare-fun mapValue!21482 () List!53389)

(declare-fun mapKey!21482 () (_ BitVec 32))

(assert (=> mapNonEmpty!21482 (= (arr!7844 (_values!5137 (v!47331 (underlying!9865 (v!47332 (underlying!9866 (cache!4555 thiss!28972))))))) (store mapRest!21482 mapKey!21482 mapValue!21482))))

(declare-fun b!4758325 () Bool)

(declare-fun res!2018562 () Bool)

(assert (=> b!4758325 (=> (not res!2018562) (not e!2968849))))

(assert (=> b!4758325 (= res!2018562 false)))

(declare-fun b!4758326 () Bool)

(declare-fun lt!1923920 () MutLongMap!4829)

(get-info :version)

(assert (=> b!4758326 (= e!2968841 (and e!2968843 ((_ is LongMap!4829) lt!1923920)))))

(assert (=> b!4758326 (= lt!1923920 (v!47332 (underlying!9866 (cache!4555 thiss!28972))))))

(assert (= (and start!486604 res!2018561) b!4758323))

(assert (= (and b!4758323 res!2018563) b!4758325))

(assert (= (and b!4758325 res!2018562) b!4758317))

(assert (= (and b!4758319 condMapEmpty!21482) mapIsEmpty!21482))

(assert (= (and b!4758319 (not condMapEmpty!21482)) mapNonEmpty!21482))

(assert (= b!4758320 b!4758319))

(assert (= b!4758316 b!4758320))

(assert (= b!4758324 b!4758316))

(assert (= (and b!4758326 ((_ is LongMap!4829) (v!47332 (underlying!9866 (cache!4555 thiss!28972))))) b!4758324))

(assert (= b!4758321 b!4758326))

(assert (= (and b!4758318 ((_ is HashMap!4713) (cache!4555 thiss!28972))) b!4758321))

(assert (= b!4758318 b!4758315))

(assert (= start!486604 b!4758318))

(assert (= (and start!486604 condSetEmpty!27001) setIsEmpty!27001))

(assert (= (and start!486604 (not condSetEmpty!27001)) setNonEmpty!27001))

(assert (= setNonEmpty!27001 b!4758322))

(declare-fun m!5727875 () Bool)

(assert (=> b!4758317 m!5727875))

(declare-fun m!5727877 () Bool)

(assert (=> b!4758317 m!5727877))

(assert (=> b!4758317 m!5727877))

(declare-fun m!5727879 () Bool)

(assert (=> b!4758317 m!5727879))

(declare-fun m!5727881 () Bool)

(assert (=> b!4758318 m!5727881))

(declare-fun m!5727883 () Bool)

(assert (=> mapNonEmpty!21482 m!5727883))

(declare-fun m!5727885 () Bool)

(assert (=> b!4758323 m!5727885))

(declare-fun m!5727887 () Bool)

(assert (=> setNonEmpty!27001 m!5727887))

(declare-fun m!5727889 () Bool)

(assert (=> b!4758315 m!5727889))

(declare-fun m!5727891 () Bool)

(assert (=> b!4758320 m!5727891))

(declare-fun m!5727893 () Bool)

(assert (=> b!4758320 m!5727893))

(declare-fun m!5727895 () Bool)

(assert (=> start!486604 m!5727895))

(declare-fun m!5727897 () Bool)

(assert (=> start!486604 m!5727897))

(check-sat (not b!4758323) b_and!340841 (not b!4758320) (not b!4758322) (not start!486604) (not b_next!129937) (not b_next!129935) (not b!4758318) (not b!4758315) b_and!340839 (not b!4758317) (not setNonEmpty!27001) (not mapNonEmpty!21482) (not b!4758319))
(check-sat b_and!340841 b_and!340839 (not b_next!129935) (not b_next!129937))
