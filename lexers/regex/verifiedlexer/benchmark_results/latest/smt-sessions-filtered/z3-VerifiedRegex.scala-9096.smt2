; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486782 () Bool)

(assert start!486782)

(declare-fun b!4759998 () Bool)

(declare-fun b_free!129319 () Bool)

(declare-fun b_next!130023 () Bool)

(assert (=> b!4759998 (= b_free!129319 (not b_next!130023))))

(declare-fun tp!1353086 () Bool)

(declare-fun b_and!340943 () Bool)

(assert (=> b!4759998 (= tp!1353086 b_and!340943)))

(declare-fun b!4759993 () Bool)

(declare-fun b_free!129321 () Bool)

(declare-fun b_next!130025 () Bool)

(assert (=> b!4759993 (= b_free!129321 (not b_next!130025))))

(declare-fun tp!1353095 () Bool)

(declare-fun b_and!340945 () Bool)

(assert (=> b!4759993 (= tp!1353095 b_and!340945)))

(declare-fun b!4759987 () Bool)

(declare-fun e!2970199 () Bool)

(declare-datatypes ((C!26296 0))(
  ( (C!26297 (val!20136 Int)) )
))
(declare-datatypes ((Regex!13049 0))(
  ( (ElementMatch!13049 (c!812075 C!26296)) (Concat!21368 (regOne!26610 Regex!13049) (regTwo!26610 Regex!13049)) (EmptyExpr!13049) (Star!13049 (reg!13378 Regex!13049)) (EmptyLang!13049) (Union!13049 (regOne!26611 Regex!13049) (regTwo!26611 Regex!13049)) )
))
(declare-datatypes ((List!53459 0))(
  ( (Nil!53335) (Cons!53335 (h!59746 Regex!13049) (t!360819 List!53459)) )
))
(declare-datatypes ((Context!5878 0))(
  ( (Context!5879 (exprs!3439 List!53459)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55264 0))(
  ( (tuple2!55265 (_1!30926 (InoxSet Context!5878)) (_2!30926 Int)) )
))
(declare-datatypes ((tuple2!55266 0))(
  ( (tuple2!55267 (_1!30927 tuple2!55264) (_2!30927 Int)) )
))
(declare-datatypes ((List!53460 0))(
  ( (Nil!53336) (Cons!53336 (h!59747 tuple2!55266) (t!360820 List!53460)) )
))
(declare-datatypes ((List!53461 0))(
  ( (Nil!53337) (Cons!53337 (h!59748 C!26296) (t!360821 List!53461)) )
))
(declare-datatypes ((IArray!29041 0))(
  ( (IArray!29042 (innerList!14578 List!53461)) )
))
(declare-datatypes ((Conc!14490 0))(
  ( (Node!14490 (left!39124 Conc!14490) (right!39454 Conc!14490) (csize!29210 Int) (cheight!14701 Int)) (Leaf!23587 (xs!17796 IArray!29041) (csize!29211 Int)) (Empty!14490) )
))
(declare-datatypes ((Hashable!6512 0))(
  ( (HashableExt!6511 (__x!32301 Int)) )
))
(declare-datatypes ((array!17680 0))(
  ( (array!17681 (arr!7887 (Array (_ BitVec 32) (_ BitVec 64))) (size!36110 (_ BitVec 32))) )
))
(declare-datatypes ((array!17682 0))(
  ( (array!17683 (arr!7888 (Array (_ BitVec 32) List!53460)) (size!36111 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9702 0))(
  ( (LongMapFixedSize!9703 (defaultEntry!5265 Int) (mask!14562 (_ BitVec 32)) (extraKeys!5121 (_ BitVec 32)) (zeroValue!5134 List!53460) (minValue!5134 List!53460) (_size!9727 (_ BitVec 32)) (_keys!5186 array!17680) (_values!5159 array!17682) (_vacant!4916 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19169 0))(
  ( (Cell!19170 (v!47388 LongMapFixedSize!9702)) )
))
(declare-datatypes ((MutLongMap!4851 0))(
  ( (LongMap!4851 (underlying!9909 Cell!19169)) (MutLongMapExt!4850 (__x!32302 Int)) )
))
(declare-datatypes ((Cell!19171 0))(
  ( (Cell!19172 (v!47389 MutLongMap!4851)) )
))
(declare-datatypes ((MutableMap!4735 0))(
  ( (MutableMapExt!4734 (__x!32303 Int)) (HashMap!4735 (underlying!9910 Cell!19171) (hashF!12322 Hashable!6512) (_size!9728 (_ BitVec 32)) (defaultValue!4906 Int)) )
))
(declare-datatypes ((BalanceConc!28470 0))(
  ( (BalanceConc!28471 (c!812076 Conc!14490)) )
))
(declare-datatypes ((CacheFindLongestMatch!668 0))(
  ( (CacheFindLongestMatch!669 (cache!4577 MutableMap!4735) (totalInput!4498 BalanceConc!28470)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!668)

(get-info :version)

(assert (=> b!4759987 (= e!2970199 ((_ is HashMap!4735) (cache!4577 thiss!28909)))))

(declare-fun res!2019001 () Bool)

(declare-fun e!2970198 () Bool)

(assert (=> start!486782 (=> (not res!2019001) (not e!2970198))))

(declare-fun localTotalInput!8 () BalanceConc!28470)

(assert (=> start!486782 (= res!2019001 (= localTotalInput!8 (totalInput!4498 thiss!28909)))))

(assert (=> start!486782 e!2970198))

(declare-fun e!2970192 () Bool)

(declare-fun inv!68843 (BalanceConc!28470) Bool)

(assert (=> start!486782 (and (inv!68843 localTotalInput!8) e!2970192)))

(declare-fun e!2970200 () Bool)

(declare-fun inv!68844 (CacheFindLongestMatch!668) Bool)

(assert (=> start!486782 (and (inv!68844 thiss!28909) e!2970200)))

(declare-fun condSetEmpty!27145 () Bool)

(declare-fun z!482 () (InoxSet Context!5878))

(assert (=> start!486782 (= condSetEmpty!27145 (= z!482 ((as const (Array Context!5878 Bool)) false)))))

(declare-fun setRes!27145 () Bool)

(assert (=> start!486782 setRes!27145))

(assert (=> start!486782 true))

(declare-fun b!4759988 () Bool)

(declare-fun res!2019002 () Bool)

(assert (=> b!4759988 (=> (not res!2019002) (not e!2970198))))

(declare-fun validCacheMapFindLongestMatch!131 (MutableMap!4735 BalanceConc!28470) Bool)

(assert (=> b!4759988 (= res!2019002 (validCacheMapFindLongestMatch!131 (cache!4577 thiss!28909) (totalInput!4498 thiss!28909)))))

(declare-fun b!4759989 () Bool)

(declare-fun e!2970190 () Bool)

(declare-fun tp!1353085 () Bool)

(declare-fun mapRes!21569 () Bool)

(assert (=> b!4759989 (= e!2970190 (and tp!1353085 mapRes!21569))))

(declare-fun condMapEmpty!21569 () Bool)

(declare-fun mapDefault!21569 () List!53460)

(assert (=> b!4759989 (= condMapEmpty!21569 (= (arr!7888 (_values!5159 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53460)) mapDefault!21569)))))

(declare-fun b!4759990 () Bool)

(declare-fun e!2970197 () Bool)

(declare-fun e!2970191 () Bool)

(declare-fun lt!1924688 () MutLongMap!4851)

(assert (=> b!4759990 (= e!2970197 (and e!2970191 ((_ is LongMap!4851) lt!1924688)))))

(assert (=> b!4759990 (= lt!1924688 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))

(declare-fun b!4759991 () Bool)

(declare-fun e!2970196 () Bool)

(declare-fun tp!1353090 () Bool)

(assert (=> b!4759991 (= e!2970196 tp!1353090)))

(declare-fun b!4759992 () Bool)

(assert (=> b!4759992 (= e!2970198 (not e!2970199))))

(declare-fun res!2019000 () Bool)

(assert (=> b!4759992 (=> res!2019000 e!2970199)))

(declare-fun from!922 () Int)

(declare-fun contains!16652 (MutableMap!4735 tuple2!55264) Bool)

(assert (=> b!4759992 (= res!2019000 (contains!16652 (cache!4577 thiss!28909) (tuple2!55265 z!482 from!922)))))

(assert (=> b!4759992 (validCacheMapFindLongestMatch!131 (cache!4577 thiss!28909) localTotalInput!8)))

(declare-fun tp!1353091 () Bool)

(declare-fun e!2970189 () Bool)

(declare-fun tp!1353094 () Bool)

(declare-fun array_inv!5675 (array!17680) Bool)

(declare-fun array_inv!5676 (array!17682) Bool)

(assert (=> b!4759993 (= e!2970189 (and tp!1353095 tp!1353094 tp!1353091 (array_inv!5675 (_keys!5186 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))) (array_inv!5676 (_values!5159 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))) e!2970190))))

(declare-fun setIsEmpty!27145 () Bool)

(assert (=> setIsEmpty!27145 setRes!27145))

(declare-fun b!4759994 () Bool)

(declare-fun tp!1353087 () Bool)

(declare-fun inv!68845 (Conc!14490) Bool)

(assert (=> b!4759994 (= e!2970192 (and (inv!68845 (c!812076 localTotalInput!8)) tp!1353087))))

(declare-fun e!2970188 () Bool)

(declare-fun b!4759995 () Bool)

(declare-fun e!2970194 () Bool)

(assert (=> b!4759995 (= e!2970200 (and e!2970194 (inv!68843 (totalInput!4498 thiss!28909)) e!2970188))))

(declare-fun mapIsEmpty!21569 () Bool)

(assert (=> mapIsEmpty!21569 mapRes!21569))

(declare-fun b!4759996 () Bool)

(declare-fun tp!1353092 () Bool)

(assert (=> b!4759996 (= e!2970188 (and (inv!68845 (c!812076 (totalInput!4498 thiss!28909))) tp!1353092))))

(declare-fun mapNonEmpty!21569 () Bool)

(declare-fun tp!1353088 () Bool)

(declare-fun tp!1353093 () Bool)

(assert (=> mapNonEmpty!21569 (= mapRes!21569 (and tp!1353088 tp!1353093))))

(declare-fun mapRest!21569 () (Array (_ BitVec 32) List!53460))

(declare-fun mapKey!21569 () (_ BitVec 32))

(declare-fun mapValue!21569 () List!53460)

(assert (=> mapNonEmpty!21569 (= (arr!7888 (_values!5159 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))) (store mapRest!21569 mapKey!21569 mapValue!21569))))

(declare-fun b!4759997 () Bool)

(declare-fun e!2970195 () Bool)

(assert (=> b!4759997 (= e!2970191 e!2970195)))

(assert (=> b!4759998 (= e!2970194 (and e!2970197 tp!1353086))))

(declare-fun setNonEmpty!27145 () Bool)

(declare-fun setElem!27145 () Context!5878)

(declare-fun tp!1353089 () Bool)

(declare-fun inv!68846 (Context!5878) Bool)

(assert (=> setNonEmpty!27145 (= setRes!27145 (and tp!1353089 (inv!68846 setElem!27145) e!2970196))))

(declare-fun setRest!27145 () (InoxSet Context!5878))

(assert (=> setNonEmpty!27145 (= z!482 ((_ map or) (store ((as const (Array Context!5878 Bool)) false) setElem!27145 true) setRest!27145))))

(declare-fun b!4759999 () Bool)

(assert (=> b!4759999 (= e!2970195 e!2970189)))

(assert (= (and start!486782 res!2019001) b!4759988))

(assert (= (and b!4759988 res!2019002) b!4759992))

(assert (= (and b!4759992 (not res!2019000)) b!4759987))

(assert (= start!486782 b!4759994))

(assert (= (and b!4759989 condMapEmpty!21569) mapIsEmpty!21569))

(assert (= (and b!4759989 (not condMapEmpty!21569)) mapNonEmpty!21569))

(assert (= b!4759993 b!4759989))

(assert (= b!4759999 b!4759993))

(assert (= b!4759997 b!4759999))

(assert (= (and b!4759990 ((_ is LongMap!4851) (v!47389 (underlying!9910 (cache!4577 thiss!28909))))) b!4759997))

(assert (= b!4759998 b!4759990))

(assert (= (and b!4759995 ((_ is HashMap!4735) (cache!4577 thiss!28909))) b!4759998))

(assert (= b!4759995 b!4759996))

(assert (= start!486782 b!4759995))

(assert (= (and start!486782 condSetEmpty!27145) setIsEmpty!27145))

(assert (= (and start!486782 (not condSetEmpty!27145)) setNonEmpty!27145))

(assert (= setNonEmpty!27145 b!4759991))

(declare-fun m!5729346 () Bool)

(assert (=> start!486782 m!5729346))

(declare-fun m!5729348 () Bool)

(assert (=> start!486782 m!5729348))

(declare-fun m!5729350 () Bool)

(assert (=> b!4759996 m!5729350))

(declare-fun m!5729352 () Bool)

(assert (=> b!4759988 m!5729352))

(declare-fun m!5729354 () Bool)

(assert (=> mapNonEmpty!21569 m!5729354))

(declare-fun m!5729356 () Bool)

(assert (=> b!4759992 m!5729356))

(declare-fun m!5729358 () Bool)

(assert (=> b!4759992 m!5729358))

(declare-fun m!5729360 () Bool)

(assert (=> b!4759995 m!5729360))

(declare-fun m!5729362 () Bool)

(assert (=> b!4759994 m!5729362))

(declare-fun m!5729364 () Bool)

(assert (=> b!4759993 m!5729364))

(declare-fun m!5729366 () Bool)

(assert (=> b!4759993 m!5729366))

(declare-fun m!5729368 () Bool)

(assert (=> setNonEmpty!27145 m!5729368))

(check-sat (not b!4759993) (not b!4759988) (not start!486782) (not b!4759996) (not mapNonEmpty!21569) (not b!4759994) b_and!340943 (not b!4759992) (not b!4759995) (not b_next!130025) b_and!340945 (not b!4759991) (not b!4759989) (not setNonEmpty!27145) (not b_next!130023))
(check-sat b_and!340943 b_and!340945 (not b_next!130025) (not b_next!130023))
(get-model)

(declare-fun d!1521303 () Bool)

(declare-fun isBalanced!3908 (Conc!14490) Bool)

(assert (=> d!1521303 (= (inv!68843 (totalInput!4498 thiss!28909)) (isBalanced!3908 (c!812076 (totalInput!4498 thiss!28909))))))

(declare-fun bs!1147065 () Bool)

(assert (= bs!1147065 d!1521303))

(declare-fun m!5729370 () Bool)

(assert (=> bs!1147065 m!5729370))

(assert (=> b!4759995 d!1521303))

(declare-fun d!1521305 () Bool)

(declare-fun lambda!223737 () Int)

(declare-fun forall!11829 (List!53459 Int) Bool)

(assert (=> d!1521305 (= (inv!68846 setElem!27145) (forall!11829 (exprs!3439 setElem!27145) lambda!223737))))

(declare-fun bs!1147066 () Bool)

(assert (= bs!1147066 d!1521305))

(declare-fun m!5729372 () Bool)

(assert (=> bs!1147066 m!5729372))

(assert (=> setNonEmpty!27145 d!1521305))

(declare-fun d!1521307 () Bool)

(declare-fun c!812079 () Bool)

(assert (=> d!1521307 (= c!812079 ((_ is Node!14490) (c!812076 localTotalInput!8)))))

(declare-fun e!2970205 () Bool)

(assert (=> d!1521307 (= (inv!68845 (c!812076 localTotalInput!8)) e!2970205)))

(declare-fun b!4760006 () Bool)

(declare-fun inv!68847 (Conc!14490) Bool)

(assert (=> b!4760006 (= e!2970205 (inv!68847 (c!812076 localTotalInput!8)))))

(declare-fun b!4760007 () Bool)

(declare-fun e!2970206 () Bool)

(assert (=> b!4760007 (= e!2970205 e!2970206)))

(declare-fun res!2019005 () Bool)

(assert (=> b!4760007 (= res!2019005 (not ((_ is Leaf!23587) (c!812076 localTotalInput!8))))))

(assert (=> b!4760007 (=> res!2019005 e!2970206)))

(declare-fun b!4760008 () Bool)

(declare-fun inv!68848 (Conc!14490) Bool)

(assert (=> b!4760008 (= e!2970206 (inv!68848 (c!812076 localTotalInput!8)))))

(assert (= (and d!1521307 c!812079) b!4760006))

(assert (= (and d!1521307 (not c!812079)) b!4760007))

(assert (= (and b!4760007 (not res!2019005)) b!4760008))

(declare-fun m!5729374 () Bool)

(assert (=> b!4760006 m!5729374))

(declare-fun m!5729376 () Bool)

(assert (=> b!4760008 m!5729376))

(assert (=> b!4759994 d!1521307))

(declare-fun d!1521309 () Bool)

(assert (=> d!1521309 (= (array_inv!5675 (_keys!5186 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))) (bvsge (size!36110 (_keys!5186 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4759993 d!1521309))

(declare-fun d!1521311 () Bool)

(assert (=> d!1521311 (= (array_inv!5676 (_values!5159 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))) (bvsge (size!36111 (_values!5159 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4759993 d!1521311))

(declare-fun b!4760014 () Bool)

(assert (=> b!4760014 true))

(declare-fun d!1521313 () Bool)

(declare-fun res!2019010 () Bool)

(declare-fun e!2970209 () Bool)

(assert (=> d!1521313 (=> (not res!2019010) (not e!2970209))))

(declare-fun valid!3851 (MutableMap!4735) Bool)

(assert (=> d!1521313 (= res!2019010 (valid!3851 (cache!4577 thiss!28909)))))

(assert (=> d!1521313 (= (validCacheMapFindLongestMatch!131 (cache!4577 thiss!28909) (totalInput!4498 thiss!28909)) e!2970209)))

(declare-fun b!4760013 () Bool)

(declare-fun res!2019011 () Bool)

(assert (=> b!4760013 (=> (not res!2019011) (not e!2970209))))

(declare-fun invariantList!1645 (List!53460) Bool)

(declare-datatypes ((ListMap!5711 0))(
  ( (ListMap!5712 (toList!6210 List!53460)) )
))
(declare-fun map!11865 (MutableMap!4735) ListMap!5711)

(assert (=> b!4760013 (= res!2019011 (invariantList!1645 (toList!6210 (map!11865 (cache!4577 thiss!28909)))))))

(declare-fun lambda!223740 () Int)

(declare-fun forall!11830 (List!53460 Int) Bool)

(assert (=> b!4760014 (= e!2970209 (forall!11830 (toList!6210 (map!11865 (cache!4577 thiss!28909))) lambda!223740))))

(assert (= (and d!1521313 res!2019010) b!4760013))

(assert (= (and b!4760013 res!2019011) b!4760014))

(declare-fun m!5729379 () Bool)

(assert (=> d!1521313 m!5729379))

(declare-fun m!5729381 () Bool)

(assert (=> b!4760013 m!5729381))

(declare-fun m!5729383 () Bool)

(assert (=> b!4760013 m!5729383))

(assert (=> b!4760014 m!5729381))

(declare-fun m!5729385 () Bool)

(assert (=> b!4760014 m!5729385))

(assert (=> b!4759988 d!1521313))

(declare-fun bm!333701 () Bool)

(declare-datatypes ((tuple2!55268 0))(
  ( (tuple2!55269 (_1!30928 (_ BitVec 64)) (_2!30928 List!53460)) )
))
(declare-datatypes ((List!53462 0))(
  ( (Nil!53338) (Cons!53338 (h!59749 tuple2!55268) (t!360822 List!53462)) )
))
(declare-datatypes ((ListLongMap!4603 0))(
  ( (ListLongMap!4604 (toList!6211 List!53462)) )
))
(declare-fun call!333711 () ListLongMap!4603)

(declare-fun map!11866 (MutLongMap!4851) ListLongMap!4603)

(assert (=> bm!333701 (= call!333711 (map!11866 (v!47389 (underlying!9910 (cache!4577 thiss!28909)))))))

(declare-fun b!4760039 () Bool)

(assert (=> b!4760039 false))

(declare-datatypes ((Unit!137806 0))(
  ( (Unit!137807) )
))
(declare-fun lt!1924736 () Unit!137806)

(declare-fun lt!1924739 () Unit!137806)

(assert (=> b!4760039 (= lt!1924736 lt!1924739)))

(declare-fun lt!1924743 () ListLongMap!4603)

(declare-fun contains!16653 (ListMap!5711 tuple2!55264) Bool)

(declare-fun extractMap!2117 (List!53462) ListMap!5711)

(assert (=> b!4760039 (contains!16653 (extractMap!2117 (toList!6211 lt!1924743)) (tuple2!55265 z!482 from!922))))

(declare-fun lemmaInLongMapThenInGenericMap!181 (ListLongMap!4603 tuple2!55264 Hashable!6512) Unit!137806)

(assert (=> b!4760039 (= lt!1924739 (lemmaInLongMapThenInGenericMap!181 lt!1924743 (tuple2!55265 z!482 from!922) (hashF!12322 (cache!4577 thiss!28909))))))

(assert (=> b!4760039 (= lt!1924743 call!333711)))

(declare-fun e!2970228 () Unit!137806)

(declare-fun Unit!137808 () Unit!137806)

(assert (=> b!4760039 (= e!2970228 Unit!137808)))

(declare-fun b!4760040 () Bool)

(declare-fun e!2970225 () Unit!137806)

(declare-fun Unit!137809 () Unit!137806)

(assert (=> b!4760040 (= e!2970225 Unit!137809)))

(declare-fun b!4760041 () Bool)

(declare-fun e!2970227 () Bool)

(declare-fun call!333710 () Bool)

(assert (=> b!4760041 (= e!2970227 call!333710)))

(declare-fun b!4760042 () Bool)

(declare-fun e!2970229 () Unit!137806)

(declare-fun Unit!137810 () Unit!137806)

(assert (=> b!4760042 (= e!2970229 Unit!137810)))

(declare-fun b!4760043 () Bool)

(declare-fun e!2970226 () Unit!137806)

(declare-fun lt!1924732 () Unit!137806)

(assert (=> b!4760043 (= e!2970226 lt!1924732)))

(declare-fun lt!1924731 () ListLongMap!4603)

(assert (=> b!4760043 (= lt!1924731 call!333711)))

(declare-fun lemmaInGenericMapThenInLongMap!181 (ListLongMap!4603 tuple2!55264 Hashable!6512) Unit!137806)

(assert (=> b!4760043 (= lt!1924732 (lemmaInGenericMapThenInLongMap!181 lt!1924731 (tuple2!55265 z!482 from!922) (hashF!12322 (cache!4577 thiss!28909))))))

(declare-fun res!2019020 () Bool)

(declare-fun call!333707 () Bool)

(assert (=> b!4760043 (= res!2019020 call!333707)))

(assert (=> b!4760043 (=> (not res!2019020) (not e!2970227))))

(assert (=> b!4760043 e!2970227))

(declare-fun call!333709 () List!53460)

(declare-datatypes ((Option!12598 0))(
  ( (None!12597) (Some!12597 (v!47390 tuple2!55266)) )
))
(declare-fun call!333708 () Option!12598)

(declare-fun bm!333702 () Bool)

(declare-fun getPair!617 (List!53460 tuple2!55264) Option!12598)

(assert (=> bm!333702 (= call!333708 (getPair!617 call!333709 (tuple2!55265 z!482 from!922)))))

(declare-fun lt!1924745 () Bool)

(declare-fun d!1521315 () Bool)

(assert (=> d!1521315 (= lt!1924745 (contains!16653 (map!11865 (cache!4577 thiss!28909)) (tuple2!55265 z!482 from!922)))))

(declare-fun e!2970224 () Bool)

(assert (=> d!1521315 (= lt!1924745 e!2970224)))

(declare-fun res!2019019 () Bool)

(assert (=> d!1521315 (=> (not res!2019019) (not e!2970224))))

(declare-fun lt!1924729 () (_ BitVec 64))

(declare-fun contains!16654 (MutLongMap!4851 (_ BitVec 64)) Bool)

(assert (=> d!1521315 (= res!2019019 (contains!16654 (v!47389 (underlying!9910 (cache!4577 thiss!28909))) lt!1924729))))

(declare-fun lt!1924734 () Unit!137806)

(assert (=> d!1521315 (= lt!1924734 e!2970226)))

(declare-fun c!812090 () Bool)

(assert (=> d!1521315 (= c!812090 (contains!16653 (extractMap!2117 (toList!6211 (map!11866 (v!47389 (underlying!9910 (cache!4577 thiss!28909)))))) (tuple2!55265 z!482 from!922)))))

(declare-fun lt!1924746 () Unit!137806)

(assert (=> d!1521315 (= lt!1924746 e!2970225)))

(declare-fun c!812089 () Bool)

(assert (=> d!1521315 (= c!812089 (contains!16654 (v!47389 (underlying!9910 (cache!4577 thiss!28909))) lt!1924729))))

(declare-fun hash!4518 (Hashable!6512 tuple2!55264) (_ BitVec 64))

(assert (=> d!1521315 (= lt!1924729 (hash!4518 (hashF!12322 (cache!4577 thiss!28909)) (tuple2!55265 z!482 from!922)))))

(assert (=> d!1521315 (valid!3851 (cache!4577 thiss!28909))))

(assert (=> d!1521315 (= (contains!16652 (cache!4577 thiss!28909) (tuple2!55265 z!482 from!922)) lt!1924745)))

(declare-fun call!333706 () (_ BitVec 64))

(declare-fun bm!333703 () Bool)

(assert (=> bm!333703 (= call!333706 (hash!4518 (hashF!12322 (cache!4577 thiss!28909)) (tuple2!55265 z!482 from!922)))))

(declare-fun b!4760044 () Bool)

(declare-fun e!2970230 () Bool)

(assert (=> b!4760044 (= e!2970230 call!333710)))

(declare-fun b!4760045 () Bool)

(assert (=> b!4760045 false))

(declare-fun lt!1924748 () Unit!137806)

(declare-fun lt!1924738 () Unit!137806)

(assert (=> b!4760045 (= lt!1924748 lt!1924738)))

(declare-fun lt!1924733 () List!53462)

(declare-fun lt!1924741 () List!53460)

(declare-fun contains!16655 (List!53462 tuple2!55268) Bool)

(assert (=> b!4760045 (contains!16655 lt!1924733 (tuple2!55269 lt!1924729 lt!1924741))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!895 (List!53462 (_ BitVec 64) List!53460) Unit!137806)

(assert (=> b!4760045 (= lt!1924738 (lemmaGetValueByKeyImpliesContainsTuple!895 lt!1924733 lt!1924729 lt!1924741))))

(declare-fun apply!12534 (MutLongMap!4851 (_ BitVec 64)) List!53460)

(assert (=> b!4760045 (= lt!1924741 (apply!12534 (v!47389 (underlying!9910 (cache!4577 thiss!28909))) lt!1924729))))

(assert (=> b!4760045 (= lt!1924733 (toList!6211 (map!11866 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))))

(declare-fun lt!1924740 () Unit!137806)

(declare-fun lt!1924742 () Unit!137806)

(assert (=> b!4760045 (= lt!1924740 lt!1924742)))

(declare-fun lt!1924735 () List!53462)

(declare-datatypes ((Option!12599 0))(
  ( (None!12598) (Some!12598 (v!47391 List!53460)) )
))
(declare-fun isDefined!9776 (Option!12599) Bool)

(declare-fun getValueByKey!2134 (List!53462 (_ BitVec 64)) Option!12599)

(assert (=> b!4760045 (isDefined!9776 (getValueByKey!2134 lt!1924735 lt!1924729))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1953 (List!53462 (_ BitVec 64)) Unit!137806)

(assert (=> b!4760045 (= lt!1924742 (lemmaContainsKeyImpliesGetValueByKeyDefined!1953 lt!1924735 lt!1924729))))

(assert (=> b!4760045 (= lt!1924735 (toList!6211 (map!11866 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))))

(declare-fun lt!1924730 () Unit!137806)

(declare-fun lt!1924737 () Unit!137806)

(assert (=> b!4760045 (= lt!1924730 lt!1924737)))

(declare-fun lt!1924747 () List!53462)

(declare-fun containsKey!3636 (List!53462 (_ BitVec 64)) Bool)

(assert (=> b!4760045 (containsKey!3636 lt!1924747 lt!1924729)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!182 (List!53462 (_ BitVec 64)) Unit!137806)

(assert (=> b!4760045 (= lt!1924737 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!182 lt!1924747 lt!1924729))))

(assert (=> b!4760045 (= lt!1924747 (toList!6211 (map!11866 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))))

(declare-fun Unit!137811 () Unit!137806)

(assert (=> b!4760045 (= e!2970229 Unit!137811)))

(declare-fun bm!333704 () Bool)

(declare-fun apply!12535 (ListLongMap!4603 (_ BitVec 64)) List!53460)

(assert (=> bm!333704 (= call!333709 (apply!12535 (ite c!812090 lt!1924731 call!333711) call!333706))))

(declare-fun bm!333705 () Bool)

(declare-fun contains!16656 (ListLongMap!4603 (_ BitVec 64)) Bool)

(assert (=> bm!333705 (= call!333707 (contains!16656 (ite c!812090 lt!1924731 call!333711) call!333706))))

(declare-fun b!4760046 () Bool)

(declare-fun Unit!137812 () Unit!137806)

(assert (=> b!4760046 (= e!2970228 Unit!137812)))

(declare-fun b!4760047 () Bool)

(declare-fun isDefined!9777 (Option!12598) Bool)

(assert (=> b!4760047 (= e!2970224 (isDefined!9777 (getPair!617 (apply!12534 (v!47389 (underlying!9910 (cache!4577 thiss!28909))) lt!1924729) (tuple2!55265 z!482 from!922))))))

(declare-fun bm!333706 () Bool)

(assert (=> bm!333706 (= call!333710 (isDefined!9777 call!333708))))

(declare-fun b!4760048 () Bool)

(declare-fun lambda!223743 () Int)

(declare-fun forallContained!3827 (List!53462 Int tuple2!55268) Unit!137806)

(assert (=> b!4760048 (= e!2970225 (forallContained!3827 (toList!6211 (map!11866 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))) lambda!223743 (tuple2!55269 lt!1924729 (apply!12534 (v!47389 (underlying!9910 (cache!4577 thiss!28909))) lt!1924729))))))

(declare-fun c!812088 () Bool)

(assert (=> b!4760048 (= c!812088 (not (contains!16655 (toList!6211 (map!11866 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))) (tuple2!55269 lt!1924729 (apply!12534 (v!47389 (underlying!9910 (cache!4577 thiss!28909))) lt!1924729)))))))

(declare-fun lt!1924744 () Unit!137806)

(assert (=> b!4760048 (= lt!1924744 e!2970229)))

(declare-fun b!4760049 () Bool)

(assert (=> b!4760049 (= e!2970226 e!2970228)))

(declare-fun res!2019018 () Bool)

(assert (=> b!4760049 (= res!2019018 call!333707)))

(assert (=> b!4760049 (=> (not res!2019018) (not e!2970230))))

(declare-fun c!812091 () Bool)

(assert (=> b!4760049 (= c!812091 e!2970230)))

(assert (= (and d!1521315 c!812089) b!4760048))

(assert (= (and d!1521315 (not c!812089)) b!4760040))

(assert (= (and b!4760048 c!812088) b!4760045))

(assert (= (and b!4760048 (not c!812088)) b!4760042))

(assert (= (and d!1521315 c!812090) b!4760043))

(assert (= (and d!1521315 (not c!812090)) b!4760049))

(assert (= (and b!4760043 res!2019020) b!4760041))

(assert (= (and b!4760049 res!2019018) b!4760044))

(assert (= (and b!4760049 c!812091) b!4760039))

(assert (= (and b!4760049 (not c!812091)) b!4760046))

(assert (= (or b!4760043 b!4760041 b!4760049 b!4760044) bm!333703))

(assert (= (or b!4760043 b!4760049 b!4760044 b!4760039) bm!333701))

(assert (= (or b!4760041 b!4760044) bm!333704))

(assert (= (or b!4760043 b!4760049) bm!333705))

(assert (= (or b!4760041 b!4760044) bm!333702))

(assert (= (or b!4760041 b!4760044) bm!333706))

(assert (= (and d!1521315 res!2019019) b!4760047))

(declare-fun m!5729387 () Bool)

(assert (=> b!4760047 m!5729387))

(assert (=> b!4760047 m!5729387))

(declare-fun m!5729389 () Bool)

(assert (=> b!4760047 m!5729389))

(assert (=> b!4760047 m!5729389))

(declare-fun m!5729391 () Bool)

(assert (=> b!4760047 m!5729391))

(declare-fun m!5729393 () Bool)

(assert (=> b!4760048 m!5729393))

(assert (=> b!4760048 m!5729387))

(declare-fun m!5729395 () Bool)

(assert (=> b!4760048 m!5729395))

(declare-fun m!5729397 () Bool)

(assert (=> b!4760048 m!5729397))

(declare-fun m!5729399 () Bool)

(assert (=> b!4760043 m!5729399))

(assert (=> b!4760045 m!5729393))

(declare-fun m!5729401 () Bool)

(assert (=> b!4760045 m!5729401))

(declare-fun m!5729403 () Bool)

(assert (=> b!4760045 m!5729403))

(declare-fun m!5729405 () Bool)

(assert (=> b!4760045 m!5729405))

(assert (=> b!4760045 m!5729387))

(declare-fun m!5729407 () Bool)

(assert (=> b!4760045 m!5729407))

(assert (=> b!4760045 m!5729401))

(declare-fun m!5729409 () Bool)

(assert (=> b!4760045 m!5729409))

(declare-fun m!5729411 () Bool)

(assert (=> b!4760045 m!5729411))

(declare-fun m!5729413 () Bool)

(assert (=> b!4760045 m!5729413))

(declare-fun m!5729415 () Bool)

(assert (=> bm!333706 m!5729415))

(assert (=> bm!333701 m!5729393))

(declare-fun m!5729417 () Bool)

(assert (=> bm!333703 m!5729417))

(assert (=> d!1521315 m!5729393))

(assert (=> d!1521315 m!5729381))

(declare-fun m!5729419 () Bool)

(assert (=> d!1521315 m!5729419))

(declare-fun m!5729421 () Bool)

(assert (=> d!1521315 m!5729421))

(assert (=> d!1521315 m!5729419))

(declare-fun m!5729423 () Bool)

(assert (=> d!1521315 m!5729423))

(assert (=> d!1521315 m!5729379))

(assert (=> d!1521315 m!5729417))

(assert (=> d!1521315 m!5729381))

(declare-fun m!5729425 () Bool)

(assert (=> d!1521315 m!5729425))

(declare-fun m!5729427 () Bool)

(assert (=> bm!333705 m!5729427))

(declare-fun m!5729429 () Bool)

(assert (=> bm!333702 m!5729429))

(declare-fun m!5729431 () Bool)

(assert (=> b!4760039 m!5729431))

(assert (=> b!4760039 m!5729431))

(declare-fun m!5729433 () Bool)

(assert (=> b!4760039 m!5729433))

(declare-fun m!5729435 () Bool)

(assert (=> b!4760039 m!5729435))

(declare-fun m!5729437 () Bool)

(assert (=> bm!333704 m!5729437))

(assert (=> b!4759992 d!1521315))

(declare-fun bs!1147067 () Bool)

(declare-fun b!4760051 () Bool)

(assert (= bs!1147067 (and b!4760051 b!4760014)))

(declare-fun lambda!223744 () Int)

(assert (=> bs!1147067 (= (= localTotalInput!8 (totalInput!4498 thiss!28909)) (= lambda!223744 lambda!223740))))

(assert (=> b!4760051 true))

(declare-fun d!1521317 () Bool)

(declare-fun res!2019021 () Bool)

(declare-fun e!2970231 () Bool)

(assert (=> d!1521317 (=> (not res!2019021) (not e!2970231))))

(assert (=> d!1521317 (= res!2019021 (valid!3851 (cache!4577 thiss!28909)))))

(assert (=> d!1521317 (= (validCacheMapFindLongestMatch!131 (cache!4577 thiss!28909) localTotalInput!8) e!2970231)))

(declare-fun b!4760050 () Bool)

(declare-fun res!2019022 () Bool)

(assert (=> b!4760050 (=> (not res!2019022) (not e!2970231))))

(assert (=> b!4760050 (= res!2019022 (invariantList!1645 (toList!6210 (map!11865 (cache!4577 thiss!28909)))))))

(assert (=> b!4760051 (= e!2970231 (forall!11830 (toList!6210 (map!11865 (cache!4577 thiss!28909))) lambda!223744))))

(assert (= (and d!1521317 res!2019021) b!4760050))

(assert (= (and b!4760050 res!2019022) b!4760051))

(assert (=> d!1521317 m!5729379))

(assert (=> b!4760050 m!5729381))

(assert (=> b!4760050 m!5729383))

(assert (=> b!4760051 m!5729381))

(declare-fun m!5729439 () Bool)

(assert (=> b!4760051 m!5729439))

(assert (=> b!4759992 d!1521317))

(declare-fun d!1521319 () Bool)

(assert (=> d!1521319 (= (inv!68843 localTotalInput!8) (isBalanced!3908 (c!812076 localTotalInput!8)))))

(declare-fun bs!1147068 () Bool)

(assert (= bs!1147068 d!1521319))

(declare-fun m!5729441 () Bool)

(assert (=> bs!1147068 m!5729441))

(assert (=> start!486782 d!1521319))

(declare-fun d!1521321 () Bool)

(declare-fun res!2019025 () Bool)

(declare-fun e!2970234 () Bool)

(assert (=> d!1521321 (=> (not res!2019025) (not e!2970234))))

(assert (=> d!1521321 (= res!2019025 ((_ is HashMap!4735) (cache!4577 thiss!28909)))))

(assert (=> d!1521321 (= (inv!68844 thiss!28909) e!2970234)))

(declare-fun b!4760054 () Bool)

(assert (=> b!4760054 (= e!2970234 (validCacheMapFindLongestMatch!131 (cache!4577 thiss!28909) (totalInput!4498 thiss!28909)))))

(assert (= (and d!1521321 res!2019025) b!4760054))

(assert (=> b!4760054 m!5729352))

(assert (=> start!486782 d!1521321))

(declare-fun d!1521323 () Bool)

(declare-fun c!812092 () Bool)

(assert (=> d!1521323 (= c!812092 ((_ is Node!14490) (c!812076 (totalInput!4498 thiss!28909))))))

(declare-fun e!2970235 () Bool)

(assert (=> d!1521323 (= (inv!68845 (c!812076 (totalInput!4498 thiss!28909))) e!2970235)))

(declare-fun b!4760055 () Bool)

(assert (=> b!4760055 (= e!2970235 (inv!68847 (c!812076 (totalInput!4498 thiss!28909))))))

(declare-fun b!4760056 () Bool)

(declare-fun e!2970236 () Bool)

(assert (=> b!4760056 (= e!2970235 e!2970236)))

(declare-fun res!2019026 () Bool)

(assert (=> b!4760056 (= res!2019026 (not ((_ is Leaf!23587) (c!812076 (totalInput!4498 thiss!28909)))))))

(assert (=> b!4760056 (=> res!2019026 e!2970236)))

(declare-fun b!4760057 () Bool)

(assert (=> b!4760057 (= e!2970236 (inv!68848 (c!812076 (totalInput!4498 thiss!28909))))))

(assert (= (and d!1521323 c!812092) b!4760055))

(assert (= (and d!1521323 (not c!812092)) b!4760056))

(assert (= (and b!4760056 (not res!2019026)) b!4760057))

(declare-fun m!5729443 () Bool)

(assert (=> b!4760055 m!5729443))

(declare-fun m!5729445 () Bool)

(assert (=> b!4760057 m!5729445))

(assert (=> b!4759996 d!1521323))

(declare-fun b!4760062 () Bool)

(declare-fun e!2970239 () Bool)

(declare-fun tp!1353100 () Bool)

(declare-fun tp!1353101 () Bool)

(assert (=> b!4760062 (= e!2970239 (and tp!1353100 tp!1353101))))

(assert (=> b!4759991 (= tp!1353090 e!2970239)))

(assert (= (and b!4759991 ((_ is Cons!53335) (exprs!3439 setElem!27145))) b!4760062))

(declare-fun condSetEmpty!27148 () Bool)

(assert (=> setNonEmpty!27145 (= condSetEmpty!27148 (= setRest!27145 ((as const (Array Context!5878 Bool)) false)))))

(declare-fun setRes!27148 () Bool)

(assert (=> setNonEmpty!27145 (= tp!1353089 setRes!27148)))

(declare-fun setIsEmpty!27148 () Bool)

(assert (=> setIsEmpty!27148 setRes!27148))

(declare-fun setNonEmpty!27148 () Bool)

(declare-fun setElem!27148 () Context!5878)

(declare-fun e!2970242 () Bool)

(declare-fun tp!1353107 () Bool)

(assert (=> setNonEmpty!27148 (= setRes!27148 (and tp!1353107 (inv!68846 setElem!27148) e!2970242))))

(declare-fun setRest!27148 () (InoxSet Context!5878))

(assert (=> setNonEmpty!27148 (= setRest!27145 ((_ map or) (store ((as const (Array Context!5878 Bool)) false) setElem!27148 true) setRest!27148))))

(declare-fun b!4760067 () Bool)

(declare-fun tp!1353106 () Bool)

(assert (=> b!4760067 (= e!2970242 tp!1353106)))

(assert (= (and setNonEmpty!27145 condSetEmpty!27148) setIsEmpty!27148))

(assert (= (and setNonEmpty!27145 (not condSetEmpty!27148)) setNonEmpty!27148))

(assert (= setNonEmpty!27148 b!4760067))

(declare-fun m!5729447 () Bool)

(assert (=> setNonEmpty!27148 m!5729447))

(declare-fun b!4760075 () Bool)

(declare-fun e!2970247 () Bool)

(declare-fun tp!1353115 () Bool)

(assert (=> b!4760075 (= e!2970247 tp!1353115)))

(declare-fun b!4760074 () Bool)

(declare-fun e!2970248 () Bool)

(declare-fun setRes!27151 () Bool)

(declare-fun tp!1353116 () Bool)

(assert (=> b!4760074 (= e!2970248 (and setRes!27151 tp!1353116))))

(declare-fun condSetEmpty!27151 () Bool)

(assert (=> b!4760074 (= condSetEmpty!27151 (= (_1!30926 (_1!30927 (h!59747 mapDefault!21569))) ((as const (Array Context!5878 Bool)) false)))))

(declare-fun tp!1353114 () Bool)

(declare-fun setElem!27151 () Context!5878)

(declare-fun setNonEmpty!27151 () Bool)

(assert (=> setNonEmpty!27151 (= setRes!27151 (and tp!1353114 (inv!68846 setElem!27151) e!2970247))))

(declare-fun setRest!27151 () (InoxSet Context!5878))

(assert (=> setNonEmpty!27151 (= (_1!30926 (_1!30927 (h!59747 mapDefault!21569))) ((_ map or) (store ((as const (Array Context!5878 Bool)) false) setElem!27151 true) setRest!27151))))

(declare-fun setIsEmpty!27151 () Bool)

(assert (=> setIsEmpty!27151 setRes!27151))

(assert (=> b!4759989 (= tp!1353085 e!2970248)))

(assert (= (and b!4760074 condSetEmpty!27151) setIsEmpty!27151))

(assert (= (and b!4760074 (not condSetEmpty!27151)) setNonEmpty!27151))

(assert (= setNonEmpty!27151 b!4760075))

(assert (= (and b!4759989 ((_ is Cons!53336) mapDefault!21569)) b!4760074))

(declare-fun m!5729449 () Bool)

(assert (=> setNonEmpty!27151 m!5729449))

(declare-fun b!4760084 () Bool)

(declare-fun e!2970253 () Bool)

(declare-fun tp!1353125 () Bool)

(declare-fun tp!1353124 () Bool)

(assert (=> b!4760084 (= e!2970253 (and (inv!68845 (left!39124 (c!812076 localTotalInput!8))) tp!1353124 (inv!68845 (right!39454 (c!812076 localTotalInput!8))) tp!1353125))))

(declare-fun b!4760086 () Bool)

(declare-fun e!2970254 () Bool)

(declare-fun tp!1353123 () Bool)

(assert (=> b!4760086 (= e!2970254 tp!1353123)))

(declare-fun b!4760085 () Bool)

(declare-fun inv!68849 (IArray!29041) Bool)

(assert (=> b!4760085 (= e!2970253 (and (inv!68849 (xs!17796 (c!812076 localTotalInput!8))) e!2970254))))

(assert (=> b!4759994 (= tp!1353087 (and (inv!68845 (c!812076 localTotalInput!8)) e!2970253))))

(assert (= (and b!4759994 ((_ is Node!14490) (c!812076 localTotalInput!8))) b!4760084))

(assert (= b!4760085 b!4760086))

(assert (= (and b!4759994 ((_ is Leaf!23587) (c!812076 localTotalInput!8))) b!4760085))

(declare-fun m!5729451 () Bool)

(assert (=> b!4760084 m!5729451))

(declare-fun m!5729453 () Bool)

(assert (=> b!4760084 m!5729453))

(declare-fun m!5729455 () Bool)

(assert (=> b!4760085 m!5729455))

(assert (=> b!4759994 m!5729362))

(declare-fun b!4760088 () Bool)

(declare-fun e!2970255 () Bool)

(declare-fun tp!1353127 () Bool)

(assert (=> b!4760088 (= e!2970255 tp!1353127)))

(declare-fun b!4760087 () Bool)

(declare-fun e!2970256 () Bool)

(declare-fun setRes!27152 () Bool)

(declare-fun tp!1353128 () Bool)

(assert (=> b!4760087 (= e!2970256 (and setRes!27152 tp!1353128))))

(declare-fun condSetEmpty!27152 () Bool)

(assert (=> b!4760087 (= condSetEmpty!27152 (= (_1!30926 (_1!30927 (h!59747 (zeroValue!5134 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))))) ((as const (Array Context!5878 Bool)) false)))))

(declare-fun tp!1353126 () Bool)

(declare-fun setNonEmpty!27152 () Bool)

(declare-fun setElem!27152 () Context!5878)

(assert (=> setNonEmpty!27152 (= setRes!27152 (and tp!1353126 (inv!68846 setElem!27152) e!2970255))))

(declare-fun setRest!27152 () (InoxSet Context!5878))

(assert (=> setNonEmpty!27152 (= (_1!30926 (_1!30927 (h!59747 (zeroValue!5134 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5878 Bool)) false) setElem!27152 true) setRest!27152))))

(declare-fun setIsEmpty!27152 () Bool)

(assert (=> setIsEmpty!27152 setRes!27152))

(assert (=> b!4759993 (= tp!1353094 e!2970256)))

(assert (= (and b!4760087 condSetEmpty!27152) setIsEmpty!27152))

(assert (= (and b!4760087 (not condSetEmpty!27152)) setNonEmpty!27152))

(assert (= setNonEmpty!27152 b!4760088))

(assert (= (and b!4759993 ((_ is Cons!53336) (zeroValue!5134 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909)))))))) b!4760087))

(declare-fun m!5729457 () Bool)

(assert (=> setNonEmpty!27152 m!5729457))

(declare-fun b!4760090 () Bool)

(declare-fun e!2970257 () Bool)

(declare-fun tp!1353130 () Bool)

(assert (=> b!4760090 (= e!2970257 tp!1353130)))

(declare-fun b!4760089 () Bool)

(declare-fun e!2970258 () Bool)

(declare-fun setRes!27153 () Bool)

(declare-fun tp!1353131 () Bool)

(assert (=> b!4760089 (= e!2970258 (and setRes!27153 tp!1353131))))

(declare-fun condSetEmpty!27153 () Bool)

(assert (=> b!4760089 (= condSetEmpty!27153 (= (_1!30926 (_1!30927 (h!59747 (minValue!5134 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))))) ((as const (Array Context!5878 Bool)) false)))))

(declare-fun tp!1353129 () Bool)

(declare-fun setNonEmpty!27153 () Bool)

(declare-fun setElem!27153 () Context!5878)

(assert (=> setNonEmpty!27153 (= setRes!27153 (and tp!1353129 (inv!68846 setElem!27153) e!2970257))))

(declare-fun setRest!27153 () (InoxSet Context!5878))

(assert (=> setNonEmpty!27153 (= (_1!30926 (_1!30927 (h!59747 (minValue!5134 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5878 Bool)) false) setElem!27153 true) setRest!27153))))

(declare-fun setIsEmpty!27153 () Bool)

(assert (=> setIsEmpty!27153 setRes!27153))

(assert (=> b!4759993 (= tp!1353091 e!2970258)))

(assert (= (and b!4760089 condSetEmpty!27153) setIsEmpty!27153))

(assert (= (and b!4760089 (not condSetEmpty!27153)) setNonEmpty!27153))

(assert (= setNonEmpty!27153 b!4760090))

(assert (= (and b!4759993 ((_ is Cons!53336) (minValue!5134 (v!47388 (underlying!9909 (v!47389 (underlying!9910 (cache!4577 thiss!28909)))))))) b!4760089))

(declare-fun m!5729459 () Bool)

(assert (=> setNonEmpty!27153 m!5729459))

(declare-fun setRes!27159 () Bool)

(declare-fun e!2970270 () Bool)

(declare-fun tp!1353148 () Bool)

(declare-fun setNonEmpty!27158 () Bool)

(declare-fun setElem!27158 () Context!5878)

(assert (=> setNonEmpty!27158 (= setRes!27159 (and tp!1353148 (inv!68846 setElem!27158) e!2970270))))

(declare-fun mapDefault!21572 () List!53460)

(declare-fun setRest!27159 () (InoxSet Context!5878))

(assert (=> setNonEmpty!27158 (= (_1!30926 (_1!30927 (h!59747 mapDefault!21572))) ((_ map or) (store ((as const (Array Context!5878 Bool)) false) setElem!27158 true) setRest!27159))))

(declare-fun b!4760101 () Bool)

(declare-fun e!2970267 () Bool)

(declare-fun setRes!27158 () Bool)

(declare-fun tp!1353150 () Bool)

(assert (=> b!4760101 (= e!2970267 (and setRes!27158 tp!1353150))))

(declare-fun condSetEmpty!27159 () Bool)

(declare-fun mapValue!21572 () List!53460)

(assert (=> b!4760101 (= condSetEmpty!27159 (= (_1!30926 (_1!30927 (h!59747 mapValue!21572))) ((as const (Array Context!5878 Bool)) false)))))

(declare-fun setElem!27159 () Context!5878)

(declare-fun e!2970268 () Bool)

(declare-fun tp!1353146 () Bool)

(declare-fun setNonEmpty!27159 () Bool)

(assert (=> setNonEmpty!27159 (= setRes!27158 (and tp!1353146 (inv!68846 setElem!27159) e!2970268))))

(declare-fun setRest!27158 () (InoxSet Context!5878))

(assert (=> setNonEmpty!27159 (= (_1!30926 (_1!30927 (h!59747 mapValue!21572))) ((_ map or) (store ((as const (Array Context!5878 Bool)) false) setElem!27159 true) setRest!27158))))

(declare-fun setIsEmpty!27158 () Bool)

(assert (=> setIsEmpty!27158 setRes!27159))

(declare-fun setIsEmpty!27159 () Bool)

(assert (=> setIsEmpty!27159 setRes!27158))

(declare-fun b!4760102 () Bool)

(declare-fun tp!1353149 () Bool)

(assert (=> b!4760102 (= e!2970268 tp!1353149)))

(declare-fun mapNonEmpty!21572 () Bool)

(declare-fun mapRes!21572 () Bool)

(declare-fun tp!1353151 () Bool)

(assert (=> mapNonEmpty!21572 (= mapRes!21572 (and tp!1353151 e!2970267))))

(declare-fun mapRest!21572 () (Array (_ BitVec 32) List!53460))

(declare-fun mapKey!21572 () (_ BitVec 32))

(assert (=> mapNonEmpty!21572 (= mapRest!21569 (store mapRest!21572 mapKey!21572 mapValue!21572))))

(declare-fun mapIsEmpty!21572 () Bool)

(assert (=> mapIsEmpty!21572 mapRes!21572))

(declare-fun condMapEmpty!21572 () Bool)

(assert (=> mapNonEmpty!21569 (= condMapEmpty!21572 (= mapRest!21569 ((as const (Array (_ BitVec 32) List!53460)) mapDefault!21572)))))

(declare-fun e!2970269 () Bool)

(assert (=> mapNonEmpty!21569 (= tp!1353088 (and e!2970269 mapRes!21572))))

(declare-fun b!4760103 () Bool)

(declare-fun tp!1353152 () Bool)

(assert (=> b!4760103 (= e!2970270 tp!1353152)))

(declare-fun b!4760104 () Bool)

(declare-fun tp!1353147 () Bool)

(assert (=> b!4760104 (= e!2970269 (and setRes!27159 tp!1353147))))

(declare-fun condSetEmpty!27158 () Bool)

(assert (=> b!4760104 (= condSetEmpty!27158 (= (_1!30926 (_1!30927 (h!59747 mapDefault!21572))) ((as const (Array Context!5878 Bool)) false)))))

(assert (= (and mapNonEmpty!21569 condMapEmpty!21572) mapIsEmpty!21572))

(assert (= (and mapNonEmpty!21569 (not condMapEmpty!21572)) mapNonEmpty!21572))

(assert (= (and b!4760101 condSetEmpty!27159) setIsEmpty!27159))

(assert (= (and b!4760101 (not condSetEmpty!27159)) setNonEmpty!27159))

(assert (= setNonEmpty!27159 b!4760102))

(assert (= (and mapNonEmpty!21572 ((_ is Cons!53336) mapValue!21572)) b!4760101))

(assert (= (and b!4760104 condSetEmpty!27158) setIsEmpty!27158))

(assert (= (and b!4760104 (not condSetEmpty!27158)) setNonEmpty!27158))

(assert (= setNonEmpty!27158 b!4760103))

(assert (= (and mapNonEmpty!21569 ((_ is Cons!53336) mapDefault!21572)) b!4760104))

(declare-fun m!5729461 () Bool)

(assert (=> setNonEmpty!27158 m!5729461))

(declare-fun m!5729463 () Bool)

(assert (=> setNonEmpty!27159 m!5729463))

(declare-fun m!5729465 () Bool)

(assert (=> mapNonEmpty!21572 m!5729465))

(declare-fun b!4760106 () Bool)

(declare-fun e!2970271 () Bool)

(declare-fun tp!1353154 () Bool)

(assert (=> b!4760106 (= e!2970271 tp!1353154)))

(declare-fun b!4760105 () Bool)

(declare-fun e!2970272 () Bool)

(declare-fun setRes!27160 () Bool)

(declare-fun tp!1353155 () Bool)

(assert (=> b!4760105 (= e!2970272 (and setRes!27160 tp!1353155))))

(declare-fun condSetEmpty!27160 () Bool)

(assert (=> b!4760105 (= condSetEmpty!27160 (= (_1!30926 (_1!30927 (h!59747 mapValue!21569))) ((as const (Array Context!5878 Bool)) false)))))

(declare-fun setNonEmpty!27160 () Bool)

(declare-fun tp!1353153 () Bool)

(declare-fun setElem!27160 () Context!5878)

(assert (=> setNonEmpty!27160 (= setRes!27160 (and tp!1353153 (inv!68846 setElem!27160) e!2970271))))

(declare-fun setRest!27160 () (InoxSet Context!5878))

(assert (=> setNonEmpty!27160 (= (_1!30926 (_1!30927 (h!59747 mapValue!21569))) ((_ map or) (store ((as const (Array Context!5878 Bool)) false) setElem!27160 true) setRest!27160))))

(declare-fun setIsEmpty!27160 () Bool)

(assert (=> setIsEmpty!27160 setRes!27160))

(assert (=> mapNonEmpty!21569 (= tp!1353093 e!2970272)))

(assert (= (and b!4760105 condSetEmpty!27160) setIsEmpty!27160))

(assert (= (and b!4760105 (not condSetEmpty!27160)) setNonEmpty!27160))

(assert (= setNonEmpty!27160 b!4760106))

(assert (= (and mapNonEmpty!21569 ((_ is Cons!53336) mapValue!21569)) b!4760105))

(declare-fun m!5729467 () Bool)

(assert (=> setNonEmpty!27160 m!5729467))

(declare-fun tp!1353158 () Bool)

(declare-fun tp!1353157 () Bool)

(declare-fun b!4760107 () Bool)

(declare-fun e!2970273 () Bool)

(assert (=> b!4760107 (= e!2970273 (and (inv!68845 (left!39124 (c!812076 (totalInput!4498 thiss!28909)))) tp!1353157 (inv!68845 (right!39454 (c!812076 (totalInput!4498 thiss!28909)))) tp!1353158))))

(declare-fun b!4760109 () Bool)

(declare-fun e!2970274 () Bool)

(declare-fun tp!1353156 () Bool)

(assert (=> b!4760109 (= e!2970274 tp!1353156)))

(declare-fun b!4760108 () Bool)

(assert (=> b!4760108 (= e!2970273 (and (inv!68849 (xs!17796 (c!812076 (totalInput!4498 thiss!28909)))) e!2970274))))

(assert (=> b!4759996 (= tp!1353092 (and (inv!68845 (c!812076 (totalInput!4498 thiss!28909))) e!2970273))))

(assert (= (and b!4759996 ((_ is Node!14490) (c!812076 (totalInput!4498 thiss!28909)))) b!4760107))

(assert (= b!4760108 b!4760109))

(assert (= (and b!4759996 ((_ is Leaf!23587) (c!812076 (totalInput!4498 thiss!28909)))) b!4760108))

(declare-fun m!5729469 () Bool)

(assert (=> b!4760107 m!5729469))

(declare-fun m!5729471 () Bool)

(assert (=> b!4760107 m!5729471))

(declare-fun m!5729473 () Bool)

(assert (=> b!4760108 m!5729473))

(assert (=> b!4759996 m!5729350))

(check-sat (not d!1521305) (not b!4760102) (not setNonEmpty!27158) (not b!4760106) (not bm!333704) (not d!1521303) (not b!4760089) (not b!4760088) (not b!4760067) (not b!4760057) (not b!4760014) (not setNonEmpty!27148) (not mapNonEmpty!21572) (not b!4760055) (not b!4760008) (not setNonEmpty!27151) (not b!4760074) (not bm!333702) (not b!4760103) (not b!4760006) (not b!4760084) (not b!4760054) (not b!4760107) (not bm!333703) (not b!4760048) (not b!4760039) b_and!340943 (not b!4760109) (not b_next!130025) (not bm!333706) (not b!4760105) (not d!1521313) (not setNonEmpty!27152) b_and!340945 (not d!1521315) (not bm!333701) (not b!4760051) (not b!4759996) (not b!4760043) (not setNonEmpty!27153) (not b!4760050) (not b!4760047) (not b!4760013) (not b!4760104) (not b!4760085) (not setNonEmpty!27159) (not b!4760062) (not b!4759994) (not b!4760108) (not b!4760101) (not b!4760075) (not b!4760086) (not d!1521317) (not setNonEmpty!27160) (not d!1521319) (not b!4760045) (not b!4760090) (not b_next!130023) (not b!4760087) (not bm!333705))
(check-sat b_and!340943 b_and!340945 (not b_next!130025) (not b_next!130023))
