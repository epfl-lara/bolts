; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268992 () Bool)

(assert start!268992)

(declare-fun b!2783592 () Bool)

(declare-fun b_free!78629 () Bool)

(declare-fun b_next!79333 () Bool)

(assert (=> b!2783592 (= b_free!78629 (not b_next!79333))))

(declare-fun tp!881772 () Bool)

(declare-fun b_and!203367 () Bool)

(assert (=> b!2783592 (= tp!881772 b_and!203367)))

(declare-fun b!2783603 () Bool)

(declare-fun b_free!78631 () Bool)

(declare-fun b_next!79335 () Bool)

(assert (=> b!2783603 (= b_free!78631 (not b_next!79335))))

(declare-fun tp!881755 () Bool)

(declare-fun b_and!203369 () Bool)

(assert (=> b!2783603 (= tp!881755 b_and!203369)))

(declare-fun b!2783606 () Bool)

(declare-fun b_free!78633 () Bool)

(declare-fun b_next!79337 () Bool)

(assert (=> b!2783606 (= b_free!78633 (not b_next!79337))))

(declare-fun tp!881760 () Bool)

(declare-fun b_and!203371 () Bool)

(assert (=> b!2783606 (= tp!881760 b_and!203371)))

(declare-fun b!2783609 () Bool)

(declare-fun b_free!78635 () Bool)

(declare-fun b_next!79339 () Bool)

(assert (=> b!2783609 (= b_free!78635 (not b_next!79339))))

(declare-fun tp!881766 () Bool)

(declare-fun b_and!203373 () Bool)

(assert (=> b!2783609 (= tp!881766 b_and!203373)))

(declare-fun b!2783587 () Bool)

(declare-fun e!1756070 () Bool)

(declare-fun e!1756077 () Bool)

(assert (=> b!2783587 (= e!1756070 e!1756077)))

(declare-fun b!2783588 () Bool)

(declare-fun res!1161886 () Bool)

(declare-fun e!1756078 () Bool)

(assert (=> b!2783588 (=> (not res!1161886) (not e!1756078))))

(declare-datatypes ((Hashable!3771 0))(
  ( (HashableExt!3770 (__x!21215 Int)) )
))
(declare-datatypes ((C!16408 0))(
  ( (C!16409 (val!10138 Int)) )
))
(declare-datatypes ((Regex!8125 0))(
  ( (ElementMatch!8125 (c!452314 C!16408)) (Concat!13213 (regOne!16762 Regex!8125) (regTwo!16762 Regex!8125)) (EmptyExpr!8125) (Star!8125 (reg!8454 Regex!8125)) (EmptyLang!8125) (Union!8125 (regOne!16763 Regex!8125) (regTwo!16763 Regex!8125)) )
))
(declare-datatypes ((List!32263 0))(
  ( (Nil!32163) (Cons!32163 (h!37583 Regex!8125) (t!228404 List!32263)) )
))
(declare-datatypes ((Context!4686 0))(
  ( (Context!4687 (exprs!2843 List!32263)) )
))
(declare-datatypes ((tuple2!32440 0))(
  ( (tuple2!32441 (_1!19177 Context!4686) (_2!19177 C!16408)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32442 0))(
  ( (tuple2!32443 (_1!19178 tuple2!32440) (_2!19178 (InoxSet Context!4686))) )
))
(declare-datatypes ((List!32264 0))(
  ( (Nil!32164) (Cons!32164 (h!37584 tuple2!32442) (t!228405 List!32264)) )
))
(declare-datatypes ((array!13714 0))(
  ( (array!13715 (arr!6113 (Array (_ BitVec 32) List!32264)) (size!24971 (_ BitVec 32))) )
))
(declare-datatypes ((array!13716 0))(
  ( (array!13717 (arr!6114 (Array (_ BitVec 32) (_ BitVec 64))) (size!24972 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7710 0))(
  ( (LongMapFixedSize!7711 (defaultEntry!4240 Int) (mask!9654 (_ BitVec 32)) (extraKeys!4104 (_ BitVec 32)) (zeroValue!4114 List!32264) (minValue!4114 List!32264) (_size!7753 (_ BitVec 32)) (_keys!4155 array!13716) (_values!4136 array!13714) (_vacant!3916 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15229 0))(
  ( (Cell!15230 (v!33772 LongMapFixedSize!7710)) )
))
(declare-datatypes ((MutLongMap!3855 0))(
  ( (LongMap!3855 (underlying!7913 Cell!15229)) (MutLongMapExt!3854 (__x!21216 Int)) )
))
(declare-datatypes ((Cell!15231 0))(
  ( (Cell!15232 (v!33773 MutLongMap!3855)) )
))
(declare-datatypes ((MutableMap!3761 0))(
  ( (MutableMapExt!3760 (__x!21217 Int)) (HashMap!3761 (underlying!7914 Cell!15231) (hashF!5803 Hashable!3771) (_size!7754 (_ BitVec 32)) (defaultValue!3932 Int)) )
))
(declare-datatypes ((CacheUp!2464 0))(
  ( (CacheUp!2465 (cache!3904 MutableMap!3761)) )
))
(declare-fun cacheUp!890 () CacheUp!2464)

(declare-fun valid!3016 (CacheUp!2464) Bool)

(assert (=> b!2783588 (= res!1161886 (valid!3016 cacheUp!890))))

(declare-fun b!2783589 () Bool)

(declare-fun e!1756076 () Bool)

(declare-fun e!1756079 () Bool)

(assert (=> b!2783589 (= e!1756076 e!1756079)))

(declare-fun b!2783590 () Bool)

(declare-fun e!1756074 () Bool)

(declare-fun e!1756075 () Bool)

(declare-fun lt!994196 () MutLongMap!3855)

(get-info :version)

(assert (=> b!2783590 (= e!1756074 (and e!1756075 ((_ is LongMap!3855) lt!994196)))))

(assert (=> b!2783590 (= lt!994196 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))

(declare-fun setElem!23386 () Context!4686)

(declare-fun setNonEmpty!23386 () Bool)

(declare-fun setRes!23386 () Bool)

(declare-fun tp!881756 () Bool)

(declare-fun e!1756069 () Bool)

(declare-fun inv!43691 (Context!4686) Bool)

(assert (=> setNonEmpty!23386 (= setRes!23386 (and tp!881756 (inv!43691 setElem!23386) e!1756069))))

(declare-fun z!3684 () (InoxSet Context!4686))

(declare-fun setRest!23386 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23386 (= z!3684 ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23386 true) setRest!23386))))

(declare-fun b!2783591 () Bool)

(declare-fun e!1756073 () Bool)

(declare-fun e!1756086 () Bool)

(assert (=> b!2783591 (= e!1756073 e!1756086)))

(declare-fun tp!881762 () Bool)

(declare-fun e!1756083 () Bool)

(declare-fun e!1756068 () Bool)

(declare-datatypes ((tuple3!4974 0))(
  ( (tuple3!4975 (_1!19179 Regex!8125) (_2!19179 Context!4686) (_3!2957 C!16408)) )
))
(declare-datatypes ((tuple2!32444 0))(
  ( (tuple2!32445 (_1!19180 tuple3!4974) (_2!19180 (InoxSet Context!4686))) )
))
(declare-datatypes ((List!32265 0))(
  ( (Nil!32165) (Cons!32165 (h!37585 tuple2!32444) (t!228406 List!32265)) )
))
(declare-datatypes ((array!13718 0))(
  ( (array!13719 (arr!6115 (Array (_ BitVec 32) List!32265)) (size!24973 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7712 0))(
  ( (LongMapFixedSize!7713 (defaultEntry!4241 Int) (mask!9655 (_ BitVec 32)) (extraKeys!4105 (_ BitVec 32)) (zeroValue!4115 List!32265) (minValue!4115 List!32265) (_size!7755 (_ BitVec 32)) (_keys!4156 array!13716) (_values!4137 array!13718) (_vacant!3917 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15233 0))(
  ( (Cell!15234 (v!33774 LongMapFixedSize!7712)) )
))
(declare-datatypes ((MutLongMap!3856 0))(
  ( (LongMap!3856 (underlying!7915 Cell!15233)) (MutLongMapExt!3855 (__x!21218 Int)) )
))
(declare-datatypes ((Cell!15235 0))(
  ( (Cell!15236 (v!33775 MutLongMap!3856)) )
))
(declare-datatypes ((Hashable!3772 0))(
  ( (HashableExt!3771 (__x!21219 Int)) )
))
(declare-datatypes ((MutableMap!3762 0))(
  ( (MutableMapExt!3761 (__x!21220 Int)) (HashMap!3762 (underlying!7916 Cell!15235) (hashF!5804 Hashable!3772) (_size!7756 (_ BitVec 32)) (defaultValue!3933 Int)) )
))
(declare-datatypes ((CacheDown!2590 0))(
  ( (CacheDown!2591 (cache!3905 MutableMap!3762)) )
))
(declare-fun cacheDown!1009 () CacheDown!2590)

(declare-fun tp!881770 () Bool)

(declare-fun array_inv!4376 (array!13716) Bool)

(declare-fun array_inv!4377 (array!13718) Bool)

(assert (=> b!2783592 (= e!1756083 (and tp!881772 tp!881770 tp!881762 (array_inv!4376 (_keys!4156 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))) (array_inv!4377 (_values!4137 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))) e!1756068))))

(declare-fun res!1161884 () Bool)

(declare-fun e!1756072 () Bool)

(assert (=> start!268992 (=> (not res!1161884) (not e!1756072))))

(declare-datatypes ((List!32266 0))(
  ( (Nil!32166) (Cons!32166 (h!37586 C!16408) (t!228407 List!32266)) )
))
(declare-fun lt!994193 () List!32266)

(declare-fun lt!994190 () List!32266)

(assert (=> start!268992 (= res!1161884 (= lt!994193 lt!994190))))

(declare-datatypes ((IArray!20007 0))(
  ( (IArray!20008 (innerList!10061 List!32266)) )
))
(declare-datatypes ((Conc!10001 0))(
  ( (Node!10001 (left!24455 Conc!10001) (right!24785 Conc!10001) (csize!20232 Int) (cheight!10212 Int)) (Leaf!15232 (xs!13112 IArray!20007) (csize!20233 Int)) (Empty!10001) )
))
(declare-datatypes ((BalanceConc!19616 0))(
  ( (BalanceConc!19617 (c!452315 Conc!10001)) )
))
(declare-fun totalInput!758 () BalanceConc!19616)

(declare-fun list!12121 (BalanceConc!19616) List!32266)

(assert (=> start!268992 (= lt!994190 (list!12121 totalInput!758))))

(declare-fun testedP!183 () List!32266)

(declare-fun testedSuffix!143 () List!32266)

(declare-fun ++!7951 (List!32266 List!32266) List!32266)

(assert (=> start!268992 (= lt!994193 (++!7951 testedP!183 testedSuffix!143))))

(assert (=> start!268992 e!1756072))

(declare-fun e!1756082 () Bool)

(declare-fun inv!43692 (BalanceConc!19616) Bool)

(assert (=> start!268992 (and (inv!43692 totalInput!758) e!1756082)))

(declare-fun condSetEmpty!23386 () Bool)

(assert (=> start!268992 (= condSetEmpty!23386 (= z!3684 ((as const (Array Context!4686 Bool)) false)))))

(assert (=> start!268992 setRes!23386))

(assert (=> start!268992 true))

(declare-fun e!1756090 () Bool)

(assert (=> start!268992 e!1756090))

(declare-fun e!1756081 () Bool)

(assert (=> start!268992 e!1756081))

(declare-fun inv!43693 (CacheDown!2590) Bool)

(assert (=> start!268992 (and (inv!43693 cacheDown!1009) e!1756070)))

(declare-fun inv!43694 (CacheUp!2464) Bool)

(assert (=> start!268992 (and (inv!43694 cacheUp!890) e!1756076)))

(declare-fun b!2783593 () Bool)

(declare-fun tp_is_empty!14063 () Bool)

(declare-fun tp!881765 () Bool)

(assert (=> b!2783593 (= e!1756081 (and tp_is_empty!14063 tp!881765))))

(declare-fun b!2783594 () Bool)

(declare-fun e!1756085 () Bool)

(declare-fun testedPSize!143 () Int)

(declare-fun lt!994197 () Int)

(assert (=> b!2783594 (= e!1756085 (and (<= 0 testedPSize!143) (<= testedPSize!143 lt!994197)))))

(declare-fun b!2783595 () Bool)

(assert (=> b!2783595 (= e!1756072 e!1756078)))

(declare-fun res!1161883 () Bool)

(assert (=> b!2783595 (=> (not res!1161883) (not e!1756078))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2783595 (= res!1161883 (= totalInputSize!205 lt!994197))))

(declare-fun size!24974 (BalanceConc!19616) Int)

(assert (=> b!2783595 (= lt!994197 (size!24974 totalInput!758))))

(declare-fun b!2783596 () Bool)

(declare-fun e!1756089 () Bool)

(declare-fun e!1756071 () Bool)

(assert (=> b!2783596 (= e!1756089 e!1756071)))

(declare-fun b!2783597 () Bool)

(declare-fun tp!881771 () Bool)

(assert (=> b!2783597 (= e!1756090 (and tp_is_empty!14063 tp!881771))))

(declare-fun setIsEmpty!23386 () Bool)

(assert (=> setIsEmpty!23386 setRes!23386))

(declare-fun b!2783598 () Bool)

(declare-fun e!1756091 () Bool)

(declare-fun lt!994191 () MutLongMap!3856)

(assert (=> b!2783598 (= e!1756091 (and e!1756073 ((_ is LongMap!3856) lt!994191)))))

(assert (=> b!2783598 (= lt!994191 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))

(declare-fun b!2783599 () Bool)

(declare-fun res!1161880 () Bool)

(assert (=> b!2783599 (=> (not res!1161880) (not e!1756078))))

(declare-fun valid!3017 (CacheDown!2590) Bool)

(assert (=> b!2783599 (= res!1161880 (valid!3017 cacheDown!1009))))

(declare-fun mapNonEmpty!17591 () Bool)

(declare-fun mapRes!17592 () Bool)

(declare-fun tp!881759 () Bool)

(declare-fun tp!881758 () Bool)

(assert (=> mapNonEmpty!17591 (= mapRes!17592 (and tp!881759 tp!881758))))

(declare-fun mapKey!17591 () (_ BitVec 32))

(declare-fun mapValue!17592 () List!32265)

(declare-fun mapRest!17591 () (Array (_ BitVec 32) List!32265))

(assert (=> mapNonEmpty!17591 (= (arr!6115 (_values!4137 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))) (store mapRest!17591 mapKey!17591 mapValue!17592))))

(declare-fun b!2783600 () Bool)

(declare-fun e!1756084 () Bool)

(assert (=> b!2783600 (= e!1756084 e!1756085)))

(declare-fun res!1161885 () Bool)

(assert (=> b!2783600 (=> res!1161885 e!1756085)))

(declare-fun lostCauseZipper!452 ((InoxSet Context!4686)) Bool)

(assert (=> b!2783600 (= res!1161885 (lostCauseZipper!452 z!3684))))

(declare-fun lt!994194 () List!32266)

(assert (=> b!2783600 (and (= testedSuffix!143 lt!994194) (= lt!994194 testedSuffix!143))))

(declare-datatypes ((Unit!46420 0))(
  ( (Unit!46421) )
))
(declare-fun lt!994195 () Unit!46420)

(declare-fun lemmaSamePrefixThenSameSuffix!1153 (List!32266 List!32266 List!32266 List!32266 List!32266) Unit!46420)

(assert (=> b!2783600 (= lt!994195 (lemmaSamePrefixThenSameSuffix!1153 testedP!183 testedSuffix!143 testedP!183 lt!994194 lt!994190))))

(declare-fun getSuffix!1252 (List!32266 List!32266) List!32266)

(assert (=> b!2783600 (= lt!994194 (getSuffix!1252 lt!994190 testedP!183))))

(declare-fun b!2783601 () Bool)

(assert (=> b!2783601 (= e!1756078 (not e!1756084))))

(declare-fun res!1161881 () Bool)

(assert (=> b!2783601 (=> res!1161881 e!1756084)))

(declare-fun isPrefix!2573 (List!32266 List!32266) Bool)

(assert (=> b!2783601 (= res!1161881 (not (isPrefix!2573 testedP!183 lt!994190)))))

(assert (=> b!2783601 (isPrefix!2573 testedP!183 lt!994193)))

(declare-fun lt!994192 () Unit!46420)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1683 (List!32266 List!32266) Unit!46420)

(assert (=> b!2783601 (= lt!994192 (lemmaConcatTwoListThenFirstIsPrefix!1683 testedP!183 testedSuffix!143))))

(declare-fun b!2783602 () Bool)

(assert (=> b!2783602 (= e!1756075 e!1756089)))

(assert (=> b!2783603 (= e!1756077 (and e!1756091 tp!881755))))

(declare-fun mapIsEmpty!17591 () Bool)

(assert (=> mapIsEmpty!17591 mapRes!17592))

(declare-fun b!2783604 () Bool)

(declare-fun tp!881763 () Bool)

(assert (=> b!2783604 (= e!1756068 (and tp!881763 mapRes!17592))))

(declare-fun condMapEmpty!17592 () Bool)

(declare-fun mapDefault!17592 () List!32265)

(assert (=> b!2783604 (= condMapEmpty!17592 (= (arr!6115 (_values!4137 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32265)) mapDefault!17592)))))

(declare-fun b!2783605 () Bool)

(declare-fun res!1161887 () Bool)

(assert (=> b!2783605 (=> (not res!1161887) (not e!1756072))))

(declare-fun size!24975 (List!32266) Int)

(assert (=> b!2783605 (= res!1161887 (= testedPSize!143 (size!24975 testedP!183)))))

(declare-fun mapNonEmpty!17592 () Bool)

(declare-fun mapRes!17591 () Bool)

(declare-fun tp!881767 () Bool)

(declare-fun tp!881757 () Bool)

(assert (=> mapNonEmpty!17592 (= mapRes!17591 (and tp!881767 tp!881757))))

(declare-fun mapRest!17592 () (Array (_ BitVec 32) List!32264))

(declare-fun mapValue!17591 () List!32264)

(declare-fun mapKey!17592 () (_ BitVec 32))

(assert (=> mapNonEmpty!17592 (= (arr!6113 (_values!4136 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))) (store mapRest!17592 mapKey!17592 mapValue!17591))))

(assert (=> b!2783606 (= e!1756079 (and e!1756074 tp!881760))))

(declare-fun b!2783607 () Bool)

(assert (=> b!2783607 (= e!1756086 e!1756083)))

(declare-fun b!2783608 () Bool)

(declare-fun res!1161882 () Bool)

(assert (=> b!2783608 (=> res!1161882 e!1756085)))

(declare-fun isBalanced!3051 (Conc!10001) Bool)

(assert (=> b!2783608 (= res!1161882 (not (isBalanced!3051 (c!452315 totalInput!758))))))

(declare-fun mapIsEmpty!17592 () Bool)

(assert (=> mapIsEmpty!17592 mapRes!17591))

(declare-fun e!1756087 () Bool)

(declare-fun tp!881761 () Bool)

(declare-fun tp!881764 () Bool)

(declare-fun array_inv!4378 (array!13714) Bool)

(assert (=> b!2783609 (= e!1756071 (and tp!881766 tp!881761 tp!881764 (array_inv!4376 (_keys!4155 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))) (array_inv!4378 (_values!4136 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))) e!1756087))))

(declare-fun b!2783610 () Bool)

(declare-fun tp!881754 () Bool)

(assert (=> b!2783610 (= e!1756069 tp!881754)))

(declare-fun b!2783611 () Bool)

(declare-fun tp!881769 () Bool)

(assert (=> b!2783611 (= e!1756087 (and tp!881769 mapRes!17591))))

(declare-fun condMapEmpty!17591 () Bool)

(declare-fun mapDefault!17591 () List!32264)

(assert (=> b!2783611 (= condMapEmpty!17591 (= (arr!6113 (_values!4136 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32264)) mapDefault!17591)))))

(declare-fun b!2783612 () Bool)

(declare-fun res!1161888 () Bool)

(assert (=> b!2783612 (=> res!1161888 e!1756085)))

(assert (=> b!2783612 (= res!1161888 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2783613 () Bool)

(declare-fun tp!881768 () Bool)

(declare-fun inv!43695 (Conc!10001) Bool)

(assert (=> b!2783613 (= e!1756082 (and (inv!43695 (c!452315 totalInput!758)) tp!881768))))

(assert (= (and start!268992 res!1161884) b!2783605))

(assert (= (and b!2783605 res!1161887) b!2783595))

(assert (= (and b!2783595 res!1161883) b!2783588))

(assert (= (and b!2783588 res!1161886) b!2783599))

(assert (= (and b!2783599 res!1161880) b!2783601))

(assert (= (and b!2783601 (not res!1161881)) b!2783600))

(assert (= (and b!2783600 (not res!1161885)) b!2783612))

(assert (= (and b!2783612 (not res!1161888)) b!2783608))

(assert (= (and b!2783608 (not res!1161882)) b!2783594))

(assert (= start!268992 b!2783613))

(assert (= (and start!268992 condSetEmpty!23386) setIsEmpty!23386))

(assert (= (and start!268992 (not condSetEmpty!23386)) setNonEmpty!23386))

(assert (= setNonEmpty!23386 b!2783610))

(assert (= (and start!268992 ((_ is Cons!32166) testedP!183)) b!2783597))

(assert (= (and start!268992 ((_ is Cons!32166) testedSuffix!143)) b!2783593))

(assert (= (and b!2783604 condMapEmpty!17592) mapIsEmpty!17591))

(assert (= (and b!2783604 (not condMapEmpty!17592)) mapNonEmpty!17591))

(assert (= b!2783592 b!2783604))

(assert (= b!2783607 b!2783592))

(assert (= b!2783591 b!2783607))

(assert (= (and b!2783598 ((_ is LongMap!3856) (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))) b!2783591))

(assert (= b!2783603 b!2783598))

(assert (= (and b!2783587 ((_ is HashMap!3762) (cache!3905 cacheDown!1009))) b!2783603))

(assert (= start!268992 b!2783587))

(assert (= (and b!2783611 condMapEmpty!17591) mapIsEmpty!17592))

(assert (= (and b!2783611 (not condMapEmpty!17591)) mapNonEmpty!17592))

(assert (= b!2783609 b!2783611))

(assert (= b!2783596 b!2783609))

(assert (= b!2783602 b!2783596))

(assert (= (and b!2783590 ((_ is LongMap!3855) (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))) b!2783602))

(assert (= b!2783606 b!2783590))

(assert (= (and b!2783589 ((_ is HashMap!3761) (cache!3904 cacheUp!890))) b!2783606))

(assert (= start!268992 b!2783589))

(declare-fun m!3214409 () Bool)

(assert (=> start!268992 m!3214409))

(declare-fun m!3214411 () Bool)

(assert (=> start!268992 m!3214411))

(declare-fun m!3214413 () Bool)

(assert (=> start!268992 m!3214413))

(declare-fun m!3214415 () Bool)

(assert (=> start!268992 m!3214415))

(declare-fun m!3214417 () Bool)

(assert (=> start!268992 m!3214417))

(declare-fun m!3214419 () Bool)

(assert (=> b!2783600 m!3214419))

(declare-fun m!3214421 () Bool)

(assert (=> b!2783600 m!3214421))

(declare-fun m!3214423 () Bool)

(assert (=> b!2783600 m!3214423))

(declare-fun m!3214425 () Bool)

(assert (=> mapNonEmpty!17592 m!3214425))

(declare-fun m!3214427 () Bool)

(assert (=> b!2783601 m!3214427))

(declare-fun m!3214429 () Bool)

(assert (=> b!2783601 m!3214429))

(declare-fun m!3214431 () Bool)

(assert (=> b!2783601 m!3214431))

(declare-fun m!3214433 () Bool)

(assert (=> mapNonEmpty!17591 m!3214433))

(declare-fun m!3214435 () Bool)

(assert (=> b!2783588 m!3214435))

(declare-fun m!3214437 () Bool)

(assert (=> b!2783592 m!3214437))

(declare-fun m!3214439 () Bool)

(assert (=> b!2783592 m!3214439))

(declare-fun m!3214441 () Bool)

(assert (=> b!2783608 m!3214441))

(declare-fun m!3214443 () Bool)

(assert (=> b!2783609 m!3214443))

(declare-fun m!3214445 () Bool)

(assert (=> b!2783609 m!3214445))

(declare-fun m!3214447 () Bool)

(assert (=> b!2783605 m!3214447))

(declare-fun m!3214449 () Bool)

(assert (=> b!2783595 m!3214449))

(declare-fun m!3214451 () Bool)

(assert (=> setNonEmpty!23386 m!3214451))

(declare-fun m!3214453 () Bool)

(assert (=> b!2783613 m!3214453))

(declare-fun m!3214455 () Bool)

(assert (=> b!2783599 m!3214455))

(check-sat b_and!203369 b_and!203373 (not b_next!79335) (not b!2783605) (not b_next!79339) (not b!2783595) (not b!2783600) (not mapNonEmpty!17592) (not b!2783610) (not b_next!79337) (not b!2783608) (not b!2783599) (not b!2783592) (not b!2783609) tp_is_empty!14063 (not b_next!79333) (not b!2783613) (not b!2783604) (not b!2783601) (not start!268992) (not b!2783588) (not mapNonEmpty!17591) (not b!2783597) (not setNonEmpty!23386) (not b!2783593) (not b!2783611) b_and!203371 b_and!203367)
(check-sat b_and!203369 b_and!203373 (not b_next!79335) (not b_next!79339) (not b_next!79337) (not b_next!79333) b_and!203371 b_and!203367)
(get-model)

(declare-fun d!810361 () Bool)

(declare-fun c!452318 () Bool)

(assert (=> d!810361 (= c!452318 ((_ is Node!10001) (c!452315 totalInput!758)))))

(declare-fun e!1756096 () Bool)

(assert (=> d!810361 (= (inv!43695 (c!452315 totalInput!758)) e!1756096)))

(declare-fun b!2783620 () Bool)

(declare-fun inv!43696 (Conc!10001) Bool)

(assert (=> b!2783620 (= e!1756096 (inv!43696 (c!452315 totalInput!758)))))

(declare-fun b!2783621 () Bool)

(declare-fun e!1756097 () Bool)

(assert (=> b!2783621 (= e!1756096 e!1756097)))

(declare-fun res!1161891 () Bool)

(assert (=> b!2783621 (= res!1161891 (not ((_ is Leaf!15232) (c!452315 totalInput!758))))))

(assert (=> b!2783621 (=> res!1161891 e!1756097)))

(declare-fun b!2783622 () Bool)

(declare-fun inv!43697 (Conc!10001) Bool)

(assert (=> b!2783622 (= e!1756097 (inv!43697 (c!452315 totalInput!758)))))

(assert (= (and d!810361 c!452318) b!2783620))

(assert (= (and d!810361 (not c!452318)) b!2783621))

(assert (= (and b!2783621 (not res!1161891)) b!2783622))

(declare-fun m!3214457 () Bool)

(assert (=> b!2783620 m!3214457))

(declare-fun m!3214459 () Bool)

(assert (=> b!2783622 m!3214459))

(assert (=> b!2783613 d!810361))

(declare-fun d!810363 () Bool)

(declare-fun lt!994200 () Int)

(assert (=> d!810363 (>= lt!994200 0)))

(declare-fun e!1756100 () Int)

(assert (=> d!810363 (= lt!994200 e!1756100)))

(declare-fun c!452321 () Bool)

(assert (=> d!810363 (= c!452321 ((_ is Nil!32166) testedP!183))))

(assert (=> d!810363 (= (size!24975 testedP!183) lt!994200)))

(declare-fun b!2783627 () Bool)

(assert (=> b!2783627 (= e!1756100 0)))

(declare-fun b!2783628 () Bool)

(assert (=> b!2783628 (= e!1756100 (+ 1 (size!24975 (t!228407 testedP!183))))))

(assert (= (and d!810363 c!452321) b!2783627))

(assert (= (and d!810363 (not c!452321)) b!2783628))

(declare-fun m!3214461 () Bool)

(assert (=> b!2783628 m!3214461))

(assert (=> b!2783605 d!810363))

(declare-fun d!810365 () Bool)

(declare-fun validCacheMapUp!375 (MutableMap!3761) Bool)

(assert (=> d!810365 (= (valid!3016 cacheUp!890) (validCacheMapUp!375 (cache!3904 cacheUp!890)))))

(declare-fun bs!510837 () Bool)

(assert (= bs!510837 d!810365))

(declare-fun m!3214463 () Bool)

(assert (=> bs!510837 m!3214463))

(assert (=> b!2783588 d!810365))

(declare-fun d!810367 () Bool)

(declare-fun lt!994203 () Int)

(assert (=> d!810367 (= lt!994203 (size!24975 (list!12121 totalInput!758)))))

(declare-fun size!24976 (Conc!10001) Int)

(assert (=> d!810367 (= lt!994203 (size!24976 (c!452315 totalInput!758)))))

(assert (=> d!810367 (= (size!24974 totalInput!758) lt!994203)))

(declare-fun bs!510838 () Bool)

(assert (= bs!510838 d!810367))

(assert (=> bs!510838 m!3214409))

(assert (=> bs!510838 m!3214409))

(declare-fun m!3214465 () Bool)

(assert (=> bs!510838 m!3214465))

(declare-fun m!3214467 () Bool)

(assert (=> bs!510838 m!3214467))

(assert (=> b!2783595 d!810367))

(declare-fun b!2783641 () Bool)

(declare-fun res!1161909 () Bool)

(declare-fun e!1756106 () Bool)

(assert (=> b!2783641 (=> (not res!1161909) (not e!1756106))))

(declare-fun height!1492 (Conc!10001) Int)

(assert (=> b!2783641 (= res!1161909 (<= (- (height!1492 (left!24455 (c!452315 totalInput!758))) (height!1492 (right!24785 (c!452315 totalInput!758)))) 1))))

(declare-fun b!2783642 () Bool)

(declare-fun res!1161907 () Bool)

(assert (=> b!2783642 (=> (not res!1161907) (not e!1756106))))

(assert (=> b!2783642 (= res!1161907 (isBalanced!3051 (left!24455 (c!452315 totalInput!758))))))

(declare-fun b!2783643 () Bool)

(declare-fun e!1756105 () Bool)

(assert (=> b!2783643 (= e!1756105 e!1756106)))

(declare-fun res!1161905 () Bool)

(assert (=> b!2783643 (=> (not res!1161905) (not e!1756106))))

(assert (=> b!2783643 (= res!1161905 (<= (- 1) (- (height!1492 (left!24455 (c!452315 totalInput!758))) (height!1492 (right!24785 (c!452315 totalInput!758))))))))

(declare-fun b!2783644 () Bool)

(declare-fun res!1161904 () Bool)

(assert (=> b!2783644 (=> (not res!1161904) (not e!1756106))))

(assert (=> b!2783644 (= res!1161904 (isBalanced!3051 (right!24785 (c!452315 totalInput!758))))))

(declare-fun b!2783645 () Bool)

(declare-fun isEmpty!18109 (Conc!10001) Bool)

(assert (=> b!2783645 (= e!1756106 (not (isEmpty!18109 (right!24785 (c!452315 totalInput!758)))))))

(declare-fun b!2783646 () Bool)

(declare-fun res!1161906 () Bool)

(assert (=> b!2783646 (=> (not res!1161906) (not e!1756106))))

(assert (=> b!2783646 (= res!1161906 (not (isEmpty!18109 (left!24455 (c!452315 totalInput!758)))))))

(declare-fun d!810369 () Bool)

(declare-fun res!1161908 () Bool)

(assert (=> d!810369 (=> res!1161908 e!1756105)))

(assert (=> d!810369 (= res!1161908 (not ((_ is Node!10001) (c!452315 totalInput!758))))))

(assert (=> d!810369 (= (isBalanced!3051 (c!452315 totalInput!758)) e!1756105)))

(assert (= (and d!810369 (not res!1161908)) b!2783643))

(assert (= (and b!2783643 res!1161905) b!2783641))

(assert (= (and b!2783641 res!1161909) b!2783642))

(assert (= (and b!2783642 res!1161907) b!2783644))

(assert (= (and b!2783644 res!1161904) b!2783646))

(assert (= (and b!2783646 res!1161906) b!2783645))

(declare-fun m!3214469 () Bool)

(assert (=> b!2783646 m!3214469))

(declare-fun m!3214471 () Bool)

(assert (=> b!2783645 m!3214471))

(declare-fun m!3214473 () Bool)

(assert (=> b!2783643 m!3214473))

(declare-fun m!3214475 () Bool)

(assert (=> b!2783643 m!3214475))

(declare-fun m!3214477 () Bool)

(assert (=> b!2783644 m!3214477))

(declare-fun m!3214479 () Bool)

(assert (=> b!2783642 m!3214479))

(assert (=> b!2783641 m!3214473))

(assert (=> b!2783641 m!3214475))

(assert (=> b!2783608 d!810369))

(declare-fun bs!510839 () Bool)

(declare-fun b!2783651 () Bool)

(declare-fun d!810371 () Bool)

(assert (= bs!510839 (and b!2783651 d!810371)))

(declare-fun lambda!102163 () Int)

(declare-fun lambda!102162 () Int)

(assert (=> bs!510839 (not (= lambda!102163 lambda!102162))))

(declare-fun bs!510840 () Bool)

(declare-fun b!2783652 () Bool)

(assert (= bs!510840 (and b!2783652 d!810371)))

(declare-fun lambda!102164 () Int)

(assert (=> bs!510840 (not (= lambda!102164 lambda!102162))))

(declare-fun bs!510841 () Bool)

(assert (= bs!510841 (and b!2783652 b!2783651)))

(assert (=> bs!510841 (= lambda!102164 lambda!102163)))

(declare-datatypes ((List!32267 0))(
  ( (Nil!32167) (Cons!32167 (h!37587 Context!4686) (t!228409 List!32267)) )
))
(declare-fun lt!994225 () List!32267)

(declare-fun lt!994222 () List!32267)

(declare-fun bm!182457 () Bool)

(declare-fun c!452332 () Bool)

(declare-fun call!182462 () Bool)

(declare-fun exists!984 (List!32267 Int) Bool)

(assert (=> bm!182457 (= call!182462 (exists!984 (ite c!452332 lt!994225 lt!994222) (ite c!452332 lambda!102163 lambda!102164)))))

(declare-fun lt!994224 () Bool)

(declare-datatypes ((Option!6266 0))(
  ( (None!6265) (Some!6265 (v!33776 List!32266)) )
))
(declare-fun isEmpty!18110 (Option!6266) Bool)

(declare-fun getLanguageWitness!196 ((InoxSet Context!4686)) Option!6266)

(assert (=> d!810371 (= lt!994224 (isEmpty!18110 (getLanguageWitness!196 z!3684)))))

(declare-fun forall!6647 ((InoxSet Context!4686) Int) Bool)

(assert (=> d!810371 (= lt!994224 (forall!6647 z!3684 lambda!102162))))

(declare-fun lt!994226 () Unit!46420)

(declare-fun e!1756113 () Unit!46420)

(assert (=> d!810371 (= lt!994226 e!1756113)))

(assert (=> d!810371 (= c!452332 (not (forall!6647 z!3684 lambda!102162)))))

(assert (=> d!810371 (= (lostCauseZipper!452 z!3684) lt!994224)))

(declare-fun Unit!46422 () Unit!46420)

(assert (=> b!2783652 (= e!1756113 Unit!46422)))

(declare-fun call!182461 () List!32267)

(assert (=> b!2783652 (= lt!994222 call!182461)))

(declare-fun lt!994221 () Unit!46420)

(declare-fun lemmaForallThenNotExists!88 (List!32267 Int) Unit!46420)

(assert (=> b!2783652 (= lt!994221 (lemmaForallThenNotExists!88 lt!994222 lambda!102162))))

(assert (=> b!2783652 (not call!182462)))

(declare-fun lt!994223 () Unit!46420)

(assert (=> b!2783652 (= lt!994223 lt!994221)))

(declare-fun bm!182456 () Bool)

(declare-fun toList!1851 ((InoxSet Context!4686)) List!32267)

(assert (=> bm!182456 (= call!182461 (toList!1851 z!3684))))

(declare-fun Unit!46423 () Unit!46420)

(assert (=> b!2783651 (= e!1756113 Unit!46423)))

(assert (=> b!2783651 (= lt!994225 call!182461)))

(declare-fun lt!994227 () Unit!46420)

(declare-fun lemmaNotForallThenExists!88 (List!32267 Int) Unit!46420)

(assert (=> b!2783651 (= lt!994227 (lemmaNotForallThenExists!88 lt!994225 lambda!102162))))

(assert (=> b!2783651 call!182462))

(declare-fun lt!994220 () Unit!46420)

(assert (=> b!2783651 (= lt!994220 lt!994227)))

(assert (= (and d!810371 c!452332) b!2783651))

(assert (= (and d!810371 (not c!452332)) b!2783652))

(assert (= (or b!2783651 b!2783652) bm!182456))

(assert (= (or b!2783651 b!2783652) bm!182457))

(declare-fun m!3214481 () Bool)

(assert (=> b!2783651 m!3214481))

(declare-fun m!3214483 () Bool)

(assert (=> bm!182456 m!3214483))

(declare-fun m!3214485 () Bool)

(assert (=> d!810371 m!3214485))

(assert (=> d!810371 m!3214485))

(declare-fun m!3214487 () Bool)

(assert (=> d!810371 m!3214487))

(declare-fun m!3214489 () Bool)

(assert (=> d!810371 m!3214489))

(assert (=> d!810371 m!3214489))

(declare-fun m!3214491 () Bool)

(assert (=> bm!182457 m!3214491))

(declare-fun m!3214493 () Bool)

(assert (=> b!2783652 m!3214493))

(assert (=> b!2783600 d!810371))

(declare-fun d!810373 () Bool)

(assert (=> d!810373 (= testedSuffix!143 lt!994194)))

(declare-fun lt!994230 () Unit!46420)

(declare-fun choose!16325 (List!32266 List!32266 List!32266 List!32266 List!32266) Unit!46420)

(assert (=> d!810373 (= lt!994230 (choose!16325 testedP!183 testedSuffix!143 testedP!183 lt!994194 lt!994190))))

(assert (=> d!810373 (isPrefix!2573 testedP!183 lt!994190)))

(assert (=> d!810373 (= (lemmaSamePrefixThenSameSuffix!1153 testedP!183 testedSuffix!143 testedP!183 lt!994194 lt!994190) lt!994230)))

(declare-fun bs!510842 () Bool)

(assert (= bs!510842 d!810373))

(declare-fun m!3214495 () Bool)

(assert (=> bs!510842 m!3214495))

(assert (=> bs!510842 m!3214427))

(assert (=> b!2783600 d!810373))

(declare-fun d!810375 () Bool)

(declare-fun lt!994233 () List!32266)

(assert (=> d!810375 (= (++!7951 testedP!183 lt!994233) lt!994190)))

(declare-fun e!1756116 () List!32266)

(assert (=> d!810375 (= lt!994233 e!1756116)))

(declare-fun c!452335 () Bool)

(assert (=> d!810375 (= c!452335 ((_ is Cons!32166) testedP!183))))

(assert (=> d!810375 (>= (size!24975 lt!994190) (size!24975 testedP!183))))

(assert (=> d!810375 (= (getSuffix!1252 lt!994190 testedP!183) lt!994233)))

(declare-fun b!2783657 () Bool)

(declare-fun tail!4397 (List!32266) List!32266)

(assert (=> b!2783657 (= e!1756116 (getSuffix!1252 (tail!4397 lt!994190) (t!228407 testedP!183)))))

(declare-fun b!2783658 () Bool)

(assert (=> b!2783658 (= e!1756116 lt!994190)))

(assert (= (and d!810375 c!452335) b!2783657))

(assert (= (and d!810375 (not c!452335)) b!2783658))

(declare-fun m!3214497 () Bool)

(assert (=> d!810375 m!3214497))

(declare-fun m!3214499 () Bool)

(assert (=> d!810375 m!3214499))

(assert (=> d!810375 m!3214447))

(declare-fun m!3214501 () Bool)

(assert (=> b!2783657 m!3214501))

(assert (=> b!2783657 m!3214501))

(declare-fun m!3214503 () Bool)

(assert (=> b!2783657 m!3214503))

(assert (=> b!2783600 d!810375))

(declare-fun d!810377 () Bool)

(assert (=> d!810377 (= (array_inv!4376 (_keys!4156 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))) (bvsge (size!24972 (_keys!4156 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2783592 d!810377))

(declare-fun d!810379 () Bool)

(assert (=> d!810379 (= (array_inv!4377 (_values!4137 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))) (bvsge (size!24973 (_values!4137 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2783592 d!810379))

(declare-fun b!2783668 () Bool)

(declare-fun res!1161920 () Bool)

(declare-fun e!1756123 () Bool)

(assert (=> b!2783668 (=> (not res!1161920) (not e!1756123))))

(declare-fun head!6159 (List!32266) C!16408)

(assert (=> b!2783668 (= res!1161920 (= (head!6159 testedP!183) (head!6159 lt!994190)))))

(declare-fun b!2783670 () Bool)

(declare-fun e!1756125 () Bool)

(assert (=> b!2783670 (= e!1756125 (>= (size!24975 lt!994190) (size!24975 testedP!183)))))

(declare-fun d!810381 () Bool)

(assert (=> d!810381 e!1756125))

(declare-fun res!1161918 () Bool)

(assert (=> d!810381 (=> res!1161918 e!1756125)))

(declare-fun lt!994236 () Bool)

(assert (=> d!810381 (= res!1161918 (not lt!994236))))

(declare-fun e!1756124 () Bool)

(assert (=> d!810381 (= lt!994236 e!1756124)))

(declare-fun res!1161919 () Bool)

(assert (=> d!810381 (=> res!1161919 e!1756124)))

(assert (=> d!810381 (= res!1161919 ((_ is Nil!32166) testedP!183))))

(assert (=> d!810381 (= (isPrefix!2573 testedP!183 lt!994190) lt!994236)))

(declare-fun b!2783669 () Bool)

(assert (=> b!2783669 (= e!1756123 (isPrefix!2573 (tail!4397 testedP!183) (tail!4397 lt!994190)))))

(declare-fun b!2783667 () Bool)

(assert (=> b!2783667 (= e!1756124 e!1756123)))

(declare-fun res!1161921 () Bool)

(assert (=> b!2783667 (=> (not res!1161921) (not e!1756123))))

(assert (=> b!2783667 (= res!1161921 (not ((_ is Nil!32166) lt!994190)))))

(assert (= (and d!810381 (not res!1161919)) b!2783667))

(assert (= (and b!2783667 res!1161921) b!2783668))

(assert (= (and b!2783668 res!1161920) b!2783669))

(assert (= (and d!810381 (not res!1161918)) b!2783670))

(declare-fun m!3214505 () Bool)

(assert (=> b!2783668 m!3214505))

(declare-fun m!3214507 () Bool)

(assert (=> b!2783668 m!3214507))

(assert (=> b!2783670 m!3214499))

(assert (=> b!2783670 m!3214447))

(declare-fun m!3214509 () Bool)

(assert (=> b!2783669 m!3214509))

(assert (=> b!2783669 m!3214501))

(assert (=> b!2783669 m!3214509))

(assert (=> b!2783669 m!3214501))

(declare-fun m!3214511 () Bool)

(assert (=> b!2783669 m!3214511))

(assert (=> b!2783601 d!810381))

(declare-fun b!2783672 () Bool)

(declare-fun res!1161924 () Bool)

(declare-fun e!1756126 () Bool)

(assert (=> b!2783672 (=> (not res!1161924) (not e!1756126))))

(assert (=> b!2783672 (= res!1161924 (= (head!6159 testedP!183) (head!6159 lt!994193)))))

(declare-fun b!2783674 () Bool)

(declare-fun e!1756128 () Bool)

(assert (=> b!2783674 (= e!1756128 (>= (size!24975 lt!994193) (size!24975 testedP!183)))))

(declare-fun d!810383 () Bool)

(assert (=> d!810383 e!1756128))

(declare-fun res!1161922 () Bool)

(assert (=> d!810383 (=> res!1161922 e!1756128)))

(declare-fun lt!994237 () Bool)

(assert (=> d!810383 (= res!1161922 (not lt!994237))))

(declare-fun e!1756127 () Bool)

(assert (=> d!810383 (= lt!994237 e!1756127)))

(declare-fun res!1161923 () Bool)

(assert (=> d!810383 (=> res!1161923 e!1756127)))

(assert (=> d!810383 (= res!1161923 ((_ is Nil!32166) testedP!183))))

(assert (=> d!810383 (= (isPrefix!2573 testedP!183 lt!994193) lt!994237)))

(declare-fun b!2783673 () Bool)

(assert (=> b!2783673 (= e!1756126 (isPrefix!2573 (tail!4397 testedP!183) (tail!4397 lt!994193)))))

(declare-fun b!2783671 () Bool)

(assert (=> b!2783671 (= e!1756127 e!1756126)))

(declare-fun res!1161925 () Bool)

(assert (=> b!2783671 (=> (not res!1161925) (not e!1756126))))

(assert (=> b!2783671 (= res!1161925 (not ((_ is Nil!32166) lt!994193)))))

(assert (= (and d!810383 (not res!1161923)) b!2783671))

(assert (= (and b!2783671 res!1161925) b!2783672))

(assert (= (and b!2783672 res!1161924) b!2783673))

(assert (= (and d!810383 (not res!1161922)) b!2783674))

(assert (=> b!2783672 m!3214505))

(declare-fun m!3214513 () Bool)

(assert (=> b!2783672 m!3214513))

(declare-fun m!3214515 () Bool)

(assert (=> b!2783674 m!3214515))

(assert (=> b!2783674 m!3214447))

(assert (=> b!2783673 m!3214509))

(declare-fun m!3214517 () Bool)

(assert (=> b!2783673 m!3214517))

(assert (=> b!2783673 m!3214509))

(assert (=> b!2783673 m!3214517))

(declare-fun m!3214519 () Bool)

(assert (=> b!2783673 m!3214519))

(assert (=> b!2783601 d!810383))

(declare-fun d!810385 () Bool)

(assert (=> d!810385 (isPrefix!2573 testedP!183 (++!7951 testedP!183 testedSuffix!143))))

(declare-fun lt!994240 () Unit!46420)

(declare-fun choose!16326 (List!32266 List!32266) Unit!46420)

(assert (=> d!810385 (= lt!994240 (choose!16326 testedP!183 testedSuffix!143))))

(assert (=> d!810385 (= (lemmaConcatTwoListThenFirstIsPrefix!1683 testedP!183 testedSuffix!143) lt!994240)))

(declare-fun bs!510843 () Bool)

(assert (= bs!510843 d!810385))

(assert (=> bs!510843 m!3214417))

(assert (=> bs!510843 m!3214417))

(declare-fun m!3214521 () Bool)

(assert (=> bs!510843 m!3214521))

(declare-fun m!3214523 () Bool)

(assert (=> bs!510843 m!3214523))

(assert (=> b!2783601 d!810385))

(declare-fun d!810387 () Bool)

(assert (=> d!810387 (= (array_inv!4376 (_keys!4155 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))) (bvsge (size!24972 (_keys!4155 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2783609 d!810387))

(declare-fun d!810389 () Bool)

(assert (=> d!810389 (= (array_inv!4378 (_values!4136 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))) (bvsge (size!24971 (_values!4136 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2783609 d!810389))

(declare-fun d!810391 () Bool)

(declare-fun res!1161928 () Bool)

(declare-fun e!1756131 () Bool)

(assert (=> d!810391 (=> (not res!1161928) (not e!1756131))))

(assert (=> d!810391 (= res!1161928 ((_ is HashMap!3761) (cache!3904 cacheUp!890)))))

(assert (=> d!810391 (= (inv!43694 cacheUp!890) e!1756131)))

(declare-fun b!2783677 () Bool)

(assert (=> b!2783677 (= e!1756131 (validCacheMapUp!375 (cache!3904 cacheUp!890)))))

(assert (= (and d!810391 res!1161928) b!2783677))

(assert (=> b!2783677 m!3214463))

(assert (=> start!268992 d!810391))

(declare-fun d!810393 () Bool)

(assert (=> d!810393 (= (inv!43692 totalInput!758) (isBalanced!3051 (c!452315 totalInput!758)))))

(declare-fun bs!510844 () Bool)

(assert (= bs!510844 d!810393))

(assert (=> bs!510844 m!3214441))

(assert (=> start!268992 d!810393))

(declare-fun d!810395 () Bool)

(declare-fun res!1161931 () Bool)

(declare-fun e!1756134 () Bool)

(assert (=> d!810395 (=> (not res!1161931) (not e!1756134))))

(assert (=> d!810395 (= res!1161931 ((_ is HashMap!3762) (cache!3905 cacheDown!1009)))))

(assert (=> d!810395 (= (inv!43693 cacheDown!1009) e!1756134)))

(declare-fun b!2783680 () Bool)

(declare-fun validCacheMapDown!406 (MutableMap!3762) Bool)

(assert (=> b!2783680 (= e!1756134 (validCacheMapDown!406 (cache!3905 cacheDown!1009)))))

(assert (= (and d!810395 res!1161931) b!2783680))

(declare-fun m!3214525 () Bool)

(assert (=> b!2783680 m!3214525))

(assert (=> start!268992 d!810395))

(declare-fun d!810397 () Bool)

(declare-fun list!12122 (Conc!10001) List!32266)

(assert (=> d!810397 (= (list!12121 totalInput!758) (list!12122 (c!452315 totalInput!758)))))

(declare-fun bs!510845 () Bool)

(assert (= bs!510845 d!810397))

(declare-fun m!3214527 () Bool)

(assert (=> bs!510845 m!3214527))

(assert (=> start!268992 d!810397))

(declare-fun b!2783691 () Bool)

(declare-fun res!1161937 () Bool)

(declare-fun e!1756140 () Bool)

(assert (=> b!2783691 (=> (not res!1161937) (not e!1756140))))

(declare-fun lt!994243 () List!32266)

(assert (=> b!2783691 (= res!1161937 (= (size!24975 lt!994243) (+ (size!24975 testedP!183) (size!24975 testedSuffix!143))))))

(declare-fun b!2783690 () Bool)

(declare-fun e!1756139 () List!32266)

(assert (=> b!2783690 (= e!1756139 (Cons!32166 (h!37586 testedP!183) (++!7951 (t!228407 testedP!183) testedSuffix!143)))))

(declare-fun d!810399 () Bool)

(assert (=> d!810399 e!1756140))

(declare-fun res!1161936 () Bool)

(assert (=> d!810399 (=> (not res!1161936) (not e!1756140))))

(declare-fun content!4516 (List!32266) (InoxSet C!16408))

(assert (=> d!810399 (= res!1161936 (= (content!4516 lt!994243) ((_ map or) (content!4516 testedP!183) (content!4516 testedSuffix!143))))))

(assert (=> d!810399 (= lt!994243 e!1756139)))

(declare-fun c!452338 () Bool)

(assert (=> d!810399 (= c!452338 ((_ is Nil!32166) testedP!183))))

(assert (=> d!810399 (= (++!7951 testedP!183 testedSuffix!143) lt!994243)))

(declare-fun b!2783689 () Bool)

(assert (=> b!2783689 (= e!1756139 testedSuffix!143)))

(declare-fun b!2783692 () Bool)

(assert (=> b!2783692 (= e!1756140 (or (not (= testedSuffix!143 Nil!32166)) (= lt!994243 testedP!183)))))

(assert (= (and d!810399 c!452338) b!2783689))

(assert (= (and d!810399 (not c!452338)) b!2783690))

(assert (= (and d!810399 res!1161936) b!2783691))

(assert (= (and b!2783691 res!1161937) b!2783692))

(declare-fun m!3214529 () Bool)

(assert (=> b!2783691 m!3214529))

(assert (=> b!2783691 m!3214447))

(declare-fun m!3214531 () Bool)

(assert (=> b!2783691 m!3214531))

(declare-fun m!3214533 () Bool)

(assert (=> b!2783690 m!3214533))

(declare-fun m!3214535 () Bool)

(assert (=> d!810399 m!3214535))

(declare-fun m!3214537 () Bool)

(assert (=> d!810399 m!3214537))

(declare-fun m!3214539 () Bool)

(assert (=> d!810399 m!3214539))

(assert (=> start!268992 d!810399))

(declare-fun d!810401 () Bool)

(assert (=> d!810401 (= (valid!3017 cacheDown!1009) (validCacheMapDown!406 (cache!3905 cacheDown!1009)))))

(declare-fun bs!510846 () Bool)

(assert (= bs!510846 d!810401))

(assert (=> bs!510846 m!3214525))

(assert (=> b!2783599 d!810401))

(declare-fun d!810403 () Bool)

(declare-fun lambda!102167 () Int)

(declare-fun forall!6648 (List!32263 Int) Bool)

(assert (=> d!810403 (= (inv!43691 setElem!23386) (forall!6648 (exprs!2843 setElem!23386) lambda!102167))))

(declare-fun bs!510847 () Bool)

(assert (= bs!510847 d!810403))

(declare-fun m!3214541 () Bool)

(assert (=> bs!510847 m!3214541))

(assert (=> setNonEmpty!23386 d!810403))

(declare-fun b!2783701 () Bool)

(declare-fun e!1756147 () Bool)

(declare-fun tp!881785 () Bool)

(assert (=> b!2783701 (= e!1756147 tp!881785)))

(declare-fun setElem!23389 () Context!4686)

(declare-fun setNonEmpty!23389 () Bool)

(declare-fun tp!881784 () Bool)

(declare-fun e!1756149 () Bool)

(declare-fun setRes!23389 () Bool)

(assert (=> setNonEmpty!23389 (= setRes!23389 (and tp!881784 (inv!43691 setElem!23389) e!1756149))))

(declare-fun setRest!23389 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23389 (= (_2!19180 (h!37585 mapDefault!17592)) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23389 true) setRest!23389))))

(declare-fun e!1756148 () Bool)

(declare-fun tp!881787 () Bool)

(declare-fun b!2783702 () Bool)

(declare-fun tp!881786 () Bool)

(assert (=> b!2783702 (= e!1756148 (and tp!881786 (inv!43691 (_2!19179 (_1!19180 (h!37585 mapDefault!17592)))) e!1756147 tp_is_empty!14063 setRes!23389 tp!881787))))

(declare-fun condSetEmpty!23389 () Bool)

(assert (=> b!2783702 (= condSetEmpty!23389 (= (_2!19180 (h!37585 mapDefault!17592)) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun setIsEmpty!23389 () Bool)

(assert (=> setIsEmpty!23389 setRes!23389))

(assert (=> b!2783604 (= tp!881763 e!1756148)))

(declare-fun b!2783703 () Bool)

(declare-fun tp!881783 () Bool)

(assert (=> b!2783703 (= e!1756149 tp!881783)))

(assert (= b!2783702 b!2783701))

(assert (= (and b!2783702 condSetEmpty!23389) setIsEmpty!23389))

(assert (= (and b!2783702 (not condSetEmpty!23389)) setNonEmpty!23389))

(assert (= setNonEmpty!23389 b!2783703))

(assert (= (and b!2783604 ((_ is Cons!32165) mapDefault!17592)) b!2783702))

(declare-fun m!3214543 () Bool)

(assert (=> setNonEmpty!23389 m!3214543))

(declare-fun m!3214545 () Bool)

(assert (=> b!2783702 m!3214545))

(declare-fun b!2783712 () Bool)

(declare-fun tp!881794 () Bool)

(declare-fun tp!881796 () Bool)

(declare-fun e!1756154 () Bool)

(assert (=> b!2783712 (= e!1756154 (and (inv!43695 (left!24455 (c!452315 totalInput!758))) tp!881796 (inv!43695 (right!24785 (c!452315 totalInput!758))) tp!881794))))

(declare-fun b!2783714 () Bool)

(declare-fun e!1756155 () Bool)

(declare-fun tp!881795 () Bool)

(assert (=> b!2783714 (= e!1756155 tp!881795)))

(declare-fun b!2783713 () Bool)

(declare-fun inv!43698 (IArray!20007) Bool)

(assert (=> b!2783713 (= e!1756154 (and (inv!43698 (xs!13112 (c!452315 totalInput!758))) e!1756155))))

(assert (=> b!2783613 (= tp!881768 (and (inv!43695 (c!452315 totalInput!758)) e!1756154))))

(assert (= (and b!2783613 ((_ is Node!10001) (c!452315 totalInput!758))) b!2783712))

(assert (= b!2783713 b!2783714))

(assert (= (and b!2783613 ((_ is Leaf!15232) (c!452315 totalInput!758))) b!2783713))

(declare-fun m!3214547 () Bool)

(assert (=> b!2783712 m!3214547))

(declare-fun m!3214549 () Bool)

(assert (=> b!2783712 m!3214549))

(declare-fun m!3214551 () Bool)

(assert (=> b!2783713 m!3214551))

(assert (=> b!2783613 m!3214453))

(declare-fun b!2783719 () Bool)

(declare-fun e!1756158 () Bool)

(declare-fun tp!881799 () Bool)

(assert (=> b!2783719 (= e!1756158 (and tp_is_empty!14063 tp!881799))))

(assert (=> b!2783597 (= tp!881771 e!1756158)))

(assert (= (and b!2783597 ((_ is Cons!32166) (t!228407 testedP!183))) b!2783719))

(declare-fun b!2783720 () Bool)

(declare-fun e!1756159 () Bool)

(declare-fun tp!881800 () Bool)

(assert (=> b!2783720 (= e!1756159 (and tp_is_empty!14063 tp!881800))))

(assert (=> b!2783593 (= tp!881765 e!1756159)))

(assert (= (and b!2783593 ((_ is Cons!32166) (t!228407 testedSuffix!143))) b!2783720))

(declare-fun b!2783725 () Bool)

(declare-fun e!1756162 () Bool)

(declare-fun tp!881805 () Bool)

(declare-fun tp!881806 () Bool)

(assert (=> b!2783725 (= e!1756162 (and tp!881805 tp!881806))))

(assert (=> b!2783610 (= tp!881754 e!1756162)))

(assert (= (and b!2783610 ((_ is Cons!32163) (exprs!2843 setElem!23386))) b!2783725))

(declare-fun setRes!23392 () Bool)

(declare-fun setElem!23392 () Context!4686)

(declare-fun tp!881818 () Bool)

(declare-fun setNonEmpty!23392 () Bool)

(declare-fun e!1756170 () Bool)

(assert (=> setNonEmpty!23392 (= setRes!23392 (and tp!881818 (inv!43691 setElem!23392) e!1756170))))

(declare-fun setRest!23392 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23392 (= (_2!19178 (h!37584 mapDefault!17591)) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23392 true) setRest!23392))))

(declare-fun b!2783734 () Bool)

(declare-fun tp!881815 () Bool)

(assert (=> b!2783734 (= e!1756170 tp!881815)))

(declare-fun e!1756171 () Bool)

(assert (=> b!2783611 (= tp!881769 e!1756171)))

(declare-fun e!1756169 () Bool)

(declare-fun tp!881817 () Bool)

(declare-fun b!2783735 () Bool)

(assert (=> b!2783735 (= e!1756171 (and (inv!43691 (_1!19177 (_1!19178 (h!37584 mapDefault!17591)))) e!1756169 tp_is_empty!14063 setRes!23392 tp!881817))))

(declare-fun condSetEmpty!23392 () Bool)

(assert (=> b!2783735 (= condSetEmpty!23392 (= (_2!19178 (h!37584 mapDefault!17591)) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun b!2783736 () Bool)

(declare-fun tp!881816 () Bool)

(assert (=> b!2783736 (= e!1756169 tp!881816)))

(declare-fun setIsEmpty!23392 () Bool)

(assert (=> setIsEmpty!23392 setRes!23392))

(assert (= b!2783735 b!2783736))

(assert (= (and b!2783735 condSetEmpty!23392) setIsEmpty!23392))

(assert (= (and b!2783735 (not condSetEmpty!23392)) setNonEmpty!23392))

(assert (= setNonEmpty!23392 b!2783734))

(assert (= (and b!2783611 ((_ is Cons!32164) mapDefault!17591)) b!2783735))

(declare-fun m!3214553 () Bool)

(assert (=> setNonEmpty!23392 m!3214553))

(declare-fun m!3214555 () Bool)

(assert (=> b!2783735 m!3214555))

(declare-fun e!1756186 () Bool)

(declare-fun mapDefault!17595 () List!32265)

(declare-fun tp!881850 () Bool)

(declare-fun e!1756184 () Bool)

(declare-fun tp!881844 () Bool)

(declare-fun b!2783751 () Bool)

(declare-fun setRes!23398 () Bool)

(assert (=> b!2783751 (= e!1756184 (and tp!881850 (inv!43691 (_2!19179 (_1!19180 (h!37585 mapDefault!17595)))) e!1756186 tp_is_empty!14063 setRes!23398 tp!881844))))

(declare-fun condSetEmpty!23398 () Bool)

(assert (=> b!2783751 (= condSetEmpty!23398 (= (_2!19180 (h!37585 mapDefault!17595)) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun e!1756189 () Bool)

(declare-fun setElem!23397 () Context!4686)

(declare-fun tp!881847 () Bool)

(declare-fun setNonEmpty!23397 () Bool)

(assert (=> setNonEmpty!23397 (= setRes!23398 (and tp!881847 (inv!43691 setElem!23397) e!1756189))))

(declare-fun setRest!23397 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23397 (= (_2!19180 (h!37585 mapDefault!17595)) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23397 true) setRest!23397))))

(declare-fun setIsEmpty!23397 () Bool)

(declare-fun setRes!23397 () Bool)

(assert (=> setIsEmpty!23397 setRes!23397))

(declare-fun b!2783752 () Bool)

(declare-fun tp!881845 () Bool)

(assert (=> b!2783752 (= e!1756186 tp!881845)))

(declare-fun b!2783753 () Bool)

(declare-fun e!1756188 () Bool)

(declare-fun tp!881851 () Bool)

(assert (=> b!2783753 (= e!1756188 tp!881851)))

(declare-fun tp!881846 () Bool)

(declare-fun mapValue!17595 () List!32265)

(declare-fun e!1756187 () Bool)

(declare-fun b!2783754 () Bool)

(declare-fun tp!881843 () Bool)

(declare-fun e!1756185 () Bool)

(assert (=> b!2783754 (= e!1756187 (and tp!881843 (inv!43691 (_2!19179 (_1!19180 (h!37585 mapValue!17595)))) e!1756185 tp_is_empty!14063 setRes!23397 tp!881846))))

(declare-fun condSetEmpty!23397 () Bool)

(assert (=> b!2783754 (= condSetEmpty!23397 (= (_2!19180 (h!37585 mapValue!17595)) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun mapIsEmpty!17595 () Bool)

(declare-fun mapRes!17595 () Bool)

(assert (=> mapIsEmpty!17595 mapRes!17595))

(declare-fun condMapEmpty!17595 () Bool)

(assert (=> mapNonEmpty!17591 (= condMapEmpty!17595 (= mapRest!17591 ((as const (Array (_ BitVec 32) List!32265)) mapDefault!17595)))))

(assert (=> mapNonEmpty!17591 (= tp!881759 (and e!1756184 mapRes!17595))))

(declare-fun b!2783755 () Bool)

(declare-fun tp!881841 () Bool)

(assert (=> b!2783755 (= e!1756189 tp!881841)))

(declare-fun b!2783756 () Bool)

(declare-fun tp!881842 () Bool)

(assert (=> b!2783756 (= e!1756185 tp!881842)))

(declare-fun tp!881849 () Bool)

(declare-fun setNonEmpty!23398 () Bool)

(declare-fun setElem!23398 () Context!4686)

(assert (=> setNonEmpty!23398 (= setRes!23397 (and tp!881849 (inv!43691 setElem!23398) e!1756188))))

(declare-fun setRest!23398 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23398 (= (_2!19180 (h!37585 mapValue!17595)) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23398 true) setRest!23398))))

(declare-fun setIsEmpty!23398 () Bool)

(assert (=> setIsEmpty!23398 setRes!23398))

(declare-fun mapNonEmpty!17595 () Bool)

(declare-fun tp!881848 () Bool)

(assert (=> mapNonEmpty!17595 (= mapRes!17595 (and tp!881848 e!1756187))))

(declare-fun mapKey!17595 () (_ BitVec 32))

(declare-fun mapRest!17595 () (Array (_ BitVec 32) List!32265))

(assert (=> mapNonEmpty!17595 (= mapRest!17591 (store mapRest!17595 mapKey!17595 mapValue!17595))))

(assert (= (and mapNonEmpty!17591 condMapEmpty!17595) mapIsEmpty!17595))

(assert (= (and mapNonEmpty!17591 (not condMapEmpty!17595)) mapNonEmpty!17595))

(assert (= b!2783754 b!2783756))

(assert (= (and b!2783754 condSetEmpty!23397) setIsEmpty!23397))

(assert (= (and b!2783754 (not condSetEmpty!23397)) setNonEmpty!23398))

(assert (= setNonEmpty!23398 b!2783753))

(assert (= (and mapNonEmpty!17595 ((_ is Cons!32165) mapValue!17595)) b!2783754))

(assert (= b!2783751 b!2783752))

(assert (= (and b!2783751 condSetEmpty!23398) setIsEmpty!23398))

(assert (= (and b!2783751 (not condSetEmpty!23398)) setNonEmpty!23397))

(assert (= setNonEmpty!23397 b!2783755))

(assert (= (and mapNonEmpty!17591 ((_ is Cons!32165) mapDefault!17595)) b!2783751))

(declare-fun m!3214557 () Bool)

(assert (=> b!2783754 m!3214557))

(declare-fun m!3214559 () Bool)

(assert (=> b!2783751 m!3214559))

(declare-fun m!3214561 () Bool)

(assert (=> setNonEmpty!23397 m!3214561))

(declare-fun m!3214563 () Bool)

(assert (=> mapNonEmpty!17595 m!3214563))

(declare-fun m!3214565 () Bool)

(assert (=> setNonEmpty!23398 m!3214565))

(declare-fun b!2783757 () Bool)

(declare-fun e!1756190 () Bool)

(declare-fun tp!881854 () Bool)

(assert (=> b!2783757 (= e!1756190 tp!881854)))

(declare-fun e!1756192 () Bool)

(declare-fun setRes!23399 () Bool)

(declare-fun setNonEmpty!23399 () Bool)

(declare-fun tp!881853 () Bool)

(declare-fun setElem!23399 () Context!4686)

(assert (=> setNonEmpty!23399 (= setRes!23399 (and tp!881853 (inv!43691 setElem!23399) e!1756192))))

(declare-fun setRest!23399 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23399 (= (_2!19180 (h!37585 mapValue!17592)) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23399 true) setRest!23399))))

(declare-fun tp!881856 () Bool)

(declare-fun b!2783758 () Bool)

(declare-fun tp!881855 () Bool)

(declare-fun e!1756191 () Bool)

(assert (=> b!2783758 (= e!1756191 (and tp!881855 (inv!43691 (_2!19179 (_1!19180 (h!37585 mapValue!17592)))) e!1756190 tp_is_empty!14063 setRes!23399 tp!881856))))

(declare-fun condSetEmpty!23399 () Bool)

(assert (=> b!2783758 (= condSetEmpty!23399 (= (_2!19180 (h!37585 mapValue!17592)) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun setIsEmpty!23399 () Bool)

(assert (=> setIsEmpty!23399 setRes!23399))

(assert (=> mapNonEmpty!17591 (= tp!881758 e!1756191)))

(declare-fun b!2783759 () Bool)

(declare-fun tp!881852 () Bool)

(assert (=> b!2783759 (= e!1756192 tp!881852)))

(assert (= b!2783758 b!2783757))

(assert (= (and b!2783758 condSetEmpty!23399) setIsEmpty!23399))

(assert (= (and b!2783758 (not condSetEmpty!23399)) setNonEmpty!23399))

(assert (= setNonEmpty!23399 b!2783759))

(assert (= (and mapNonEmpty!17591 ((_ is Cons!32165) mapValue!17592)) b!2783758))

(declare-fun m!3214567 () Bool)

(assert (=> setNonEmpty!23399 m!3214567))

(declare-fun m!3214569 () Bool)

(assert (=> b!2783758 m!3214569))

(declare-fun b!2783760 () Bool)

(declare-fun e!1756193 () Bool)

(declare-fun tp!881859 () Bool)

(assert (=> b!2783760 (= e!1756193 tp!881859)))

(declare-fun e!1756195 () Bool)

(declare-fun setRes!23400 () Bool)

(declare-fun setNonEmpty!23400 () Bool)

(declare-fun setElem!23400 () Context!4686)

(declare-fun tp!881858 () Bool)

(assert (=> setNonEmpty!23400 (= setRes!23400 (and tp!881858 (inv!43691 setElem!23400) e!1756195))))

(declare-fun setRest!23400 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23400 (= (_2!19180 (h!37585 (zeroValue!4115 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23400 true) setRest!23400))))

(declare-fun tp!881861 () Bool)

(declare-fun b!2783761 () Bool)

(declare-fun e!1756194 () Bool)

(declare-fun tp!881860 () Bool)

(assert (=> b!2783761 (= e!1756194 (and tp!881860 (inv!43691 (_2!19179 (_1!19180 (h!37585 (zeroValue!4115 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009)))))))))) e!1756193 tp_is_empty!14063 setRes!23400 tp!881861))))

(declare-fun condSetEmpty!23400 () Bool)

(assert (=> b!2783761 (= condSetEmpty!23400 (= (_2!19180 (h!37585 (zeroValue!4115 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009)))))))) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun setIsEmpty!23400 () Bool)

(assert (=> setIsEmpty!23400 setRes!23400))

(assert (=> b!2783592 (= tp!881770 e!1756194)))

(declare-fun b!2783762 () Bool)

(declare-fun tp!881857 () Bool)

(assert (=> b!2783762 (= e!1756195 tp!881857)))

(assert (= b!2783761 b!2783760))

(assert (= (and b!2783761 condSetEmpty!23400) setIsEmpty!23400))

(assert (= (and b!2783761 (not condSetEmpty!23400)) setNonEmpty!23400))

(assert (= setNonEmpty!23400 b!2783762))

(assert (= (and b!2783592 ((_ is Cons!32165) (zeroValue!4115 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009)))))))) b!2783761))

(declare-fun m!3214571 () Bool)

(assert (=> setNonEmpty!23400 m!3214571))

(declare-fun m!3214573 () Bool)

(assert (=> b!2783761 m!3214573))

(declare-fun b!2783763 () Bool)

(declare-fun e!1756196 () Bool)

(declare-fun tp!881864 () Bool)

(assert (=> b!2783763 (= e!1756196 tp!881864)))

(declare-fun setRes!23401 () Bool)

(declare-fun e!1756198 () Bool)

(declare-fun setNonEmpty!23401 () Bool)

(declare-fun tp!881863 () Bool)

(declare-fun setElem!23401 () Context!4686)

(assert (=> setNonEmpty!23401 (= setRes!23401 (and tp!881863 (inv!43691 setElem!23401) e!1756198))))

(declare-fun setRest!23401 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23401 (= (_2!19180 (h!37585 (minValue!4115 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23401 true) setRest!23401))))

(declare-fun tp!881865 () Bool)

(declare-fun b!2783764 () Bool)

(declare-fun tp!881866 () Bool)

(declare-fun e!1756197 () Bool)

(assert (=> b!2783764 (= e!1756197 (and tp!881865 (inv!43691 (_2!19179 (_1!19180 (h!37585 (minValue!4115 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009)))))))))) e!1756196 tp_is_empty!14063 setRes!23401 tp!881866))))

(declare-fun condSetEmpty!23401 () Bool)

(assert (=> b!2783764 (= condSetEmpty!23401 (= (_2!19180 (h!37585 (minValue!4115 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009)))))))) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun setIsEmpty!23401 () Bool)

(assert (=> setIsEmpty!23401 setRes!23401))

(assert (=> b!2783592 (= tp!881762 e!1756197)))

(declare-fun b!2783765 () Bool)

(declare-fun tp!881862 () Bool)

(assert (=> b!2783765 (= e!1756198 tp!881862)))

(assert (= b!2783764 b!2783763))

(assert (= (and b!2783764 condSetEmpty!23401) setIsEmpty!23401))

(assert (= (and b!2783764 (not condSetEmpty!23401)) setNonEmpty!23401))

(assert (= setNonEmpty!23401 b!2783765))

(assert (= (and b!2783592 ((_ is Cons!32165) (minValue!4115 (v!33774 (underlying!7915 (v!33775 (underlying!7916 (cache!3905 cacheDown!1009)))))))) b!2783764))

(declare-fun m!3214575 () Bool)

(assert (=> setNonEmpty!23401 m!3214575))

(declare-fun m!3214577 () Bool)

(assert (=> b!2783764 m!3214577))

(declare-fun setElem!23402 () Context!4686)

(declare-fun tp!881870 () Bool)

(declare-fun setNonEmpty!23402 () Bool)

(declare-fun e!1756200 () Bool)

(declare-fun setRes!23402 () Bool)

(assert (=> setNonEmpty!23402 (= setRes!23402 (and tp!881870 (inv!43691 setElem!23402) e!1756200))))

(declare-fun setRest!23402 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23402 (= (_2!19178 (h!37584 (zeroValue!4114 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23402 true) setRest!23402))))

(declare-fun b!2783766 () Bool)

(declare-fun tp!881867 () Bool)

(assert (=> b!2783766 (= e!1756200 tp!881867)))

(declare-fun e!1756201 () Bool)

(assert (=> b!2783609 (= tp!881761 e!1756201)))

(declare-fun b!2783767 () Bool)

(declare-fun e!1756199 () Bool)

(declare-fun tp!881869 () Bool)

(assert (=> b!2783767 (= e!1756201 (and (inv!43691 (_1!19177 (_1!19178 (h!37584 (zeroValue!4114 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890)))))))))) e!1756199 tp_is_empty!14063 setRes!23402 tp!881869))))

(declare-fun condSetEmpty!23402 () Bool)

(assert (=> b!2783767 (= condSetEmpty!23402 (= (_2!19178 (h!37584 (zeroValue!4114 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890)))))))) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun b!2783768 () Bool)

(declare-fun tp!881868 () Bool)

(assert (=> b!2783768 (= e!1756199 tp!881868)))

(declare-fun setIsEmpty!23402 () Bool)

(assert (=> setIsEmpty!23402 setRes!23402))

(assert (= b!2783767 b!2783768))

(assert (= (and b!2783767 condSetEmpty!23402) setIsEmpty!23402))

(assert (= (and b!2783767 (not condSetEmpty!23402)) setNonEmpty!23402))

(assert (= setNonEmpty!23402 b!2783766))

(assert (= (and b!2783609 ((_ is Cons!32164) (zeroValue!4114 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890)))))))) b!2783767))

(declare-fun m!3214579 () Bool)

(assert (=> setNonEmpty!23402 m!3214579))

(declare-fun m!3214581 () Bool)

(assert (=> b!2783767 m!3214581))

(declare-fun e!1756203 () Bool)

(declare-fun setElem!23403 () Context!4686)

(declare-fun setRes!23403 () Bool)

(declare-fun setNonEmpty!23403 () Bool)

(declare-fun tp!881874 () Bool)

(assert (=> setNonEmpty!23403 (= setRes!23403 (and tp!881874 (inv!43691 setElem!23403) e!1756203))))

(declare-fun setRest!23403 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23403 (= (_2!19178 (h!37584 (minValue!4114 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23403 true) setRest!23403))))

(declare-fun b!2783769 () Bool)

(declare-fun tp!881871 () Bool)

(assert (=> b!2783769 (= e!1756203 tp!881871)))

(declare-fun e!1756204 () Bool)

(assert (=> b!2783609 (= tp!881764 e!1756204)))

(declare-fun tp!881873 () Bool)

(declare-fun b!2783770 () Bool)

(declare-fun e!1756202 () Bool)

(assert (=> b!2783770 (= e!1756204 (and (inv!43691 (_1!19177 (_1!19178 (h!37584 (minValue!4114 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890)))))))))) e!1756202 tp_is_empty!14063 setRes!23403 tp!881873))))

(declare-fun condSetEmpty!23403 () Bool)

(assert (=> b!2783770 (= condSetEmpty!23403 (= (_2!19178 (h!37584 (minValue!4114 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890)))))))) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun b!2783771 () Bool)

(declare-fun tp!881872 () Bool)

(assert (=> b!2783771 (= e!1756202 tp!881872)))

(declare-fun setIsEmpty!23403 () Bool)

(assert (=> setIsEmpty!23403 setRes!23403))

(assert (= b!2783770 b!2783771))

(assert (= (and b!2783770 condSetEmpty!23403) setIsEmpty!23403))

(assert (= (and b!2783770 (not condSetEmpty!23403)) setNonEmpty!23403))

(assert (= setNonEmpty!23403 b!2783769))

(assert (= (and b!2783609 ((_ is Cons!32164) (minValue!4114 (v!33772 (underlying!7913 (v!33773 (underlying!7914 (cache!3904 cacheUp!890)))))))) b!2783770))

(declare-fun m!3214583 () Bool)

(assert (=> setNonEmpty!23403 m!3214583))

(declare-fun m!3214585 () Bool)

(assert (=> b!2783770 m!3214585))

(declare-fun b!2783786 () Bool)

(declare-fun e!1756218 () Bool)

(declare-fun tp!881895 () Bool)

(assert (=> b!2783786 (= e!1756218 tp!881895)))

(declare-fun b!2783787 () Bool)

(declare-fun e!1756217 () Bool)

(declare-fun tp!881898 () Bool)

(assert (=> b!2783787 (= e!1756217 tp!881898)))

(declare-fun setElem!23409 () Context!4686)

(declare-fun tp!881900 () Bool)

(declare-fun setRes!23408 () Bool)

(declare-fun setNonEmpty!23408 () Bool)

(assert (=> setNonEmpty!23408 (= setRes!23408 (and tp!881900 (inv!43691 setElem!23409) e!1756217))))

(declare-fun mapValue!17598 () List!32264)

(declare-fun setRest!23409 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23408 (= (_2!19178 (h!37584 mapValue!17598)) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23409 true) setRest!23409))))

(declare-fun e!1756221 () Bool)

(declare-fun tp!881893 () Bool)

(declare-fun b!2783788 () Bool)

(declare-fun e!1756219 () Bool)

(assert (=> b!2783788 (= e!1756219 (and (inv!43691 (_1!19177 (_1!19178 (h!37584 mapValue!17598)))) e!1756221 tp_is_empty!14063 setRes!23408 tp!881893))))

(declare-fun condSetEmpty!23409 () Bool)

(assert (=> b!2783788 (= condSetEmpty!23409 (= (_2!19178 (h!37584 mapValue!17598)) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun mapIsEmpty!17598 () Bool)

(declare-fun mapRes!17598 () Bool)

(assert (=> mapIsEmpty!17598 mapRes!17598))

(declare-fun tp!881901 () Bool)

(declare-fun setRes!23409 () Bool)

(declare-fun setNonEmpty!23409 () Bool)

(declare-fun setElem!23408 () Context!4686)

(assert (=> setNonEmpty!23409 (= setRes!23409 (and tp!881901 (inv!43691 setElem!23408) e!1756218))))

(declare-fun mapDefault!17598 () List!32264)

(declare-fun setRest!23408 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23409 (= (_2!19178 (h!37584 mapDefault!17598)) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23408 true) setRest!23408))))

(declare-fun b!2783789 () Bool)

(declare-fun e!1756220 () Bool)

(declare-fun tp!881894 () Bool)

(assert (=> b!2783789 (= e!1756220 tp!881894)))

(declare-fun setIsEmpty!23408 () Bool)

(assert (=> setIsEmpty!23408 setRes!23409))

(declare-fun b!2783790 () Bool)

(declare-fun e!1756222 () Bool)

(declare-fun tp!881896 () Bool)

(assert (=> b!2783790 (= e!1756222 (and (inv!43691 (_1!19177 (_1!19178 (h!37584 mapDefault!17598)))) e!1756220 tp_is_empty!14063 setRes!23409 tp!881896))))

(declare-fun condSetEmpty!23408 () Bool)

(assert (=> b!2783790 (= condSetEmpty!23408 (= (_2!19178 (h!37584 mapDefault!17598)) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun b!2783791 () Bool)

(declare-fun tp!881899 () Bool)

(assert (=> b!2783791 (= e!1756221 tp!881899)))

(declare-fun mapNonEmpty!17598 () Bool)

(declare-fun tp!881897 () Bool)

(assert (=> mapNonEmpty!17598 (= mapRes!17598 (and tp!881897 e!1756219))))

(declare-fun mapRest!17598 () (Array (_ BitVec 32) List!32264))

(declare-fun mapKey!17598 () (_ BitVec 32))

(assert (=> mapNonEmpty!17598 (= mapRest!17592 (store mapRest!17598 mapKey!17598 mapValue!17598))))

(declare-fun condMapEmpty!17598 () Bool)

(assert (=> mapNonEmpty!17592 (= condMapEmpty!17598 (= mapRest!17592 ((as const (Array (_ BitVec 32) List!32264)) mapDefault!17598)))))

(assert (=> mapNonEmpty!17592 (= tp!881767 (and e!1756222 mapRes!17598))))

(declare-fun setIsEmpty!23409 () Bool)

(assert (=> setIsEmpty!23409 setRes!23408))

(assert (= (and mapNonEmpty!17592 condMapEmpty!17598) mapIsEmpty!17598))

(assert (= (and mapNonEmpty!17592 (not condMapEmpty!17598)) mapNonEmpty!17598))

(assert (= b!2783788 b!2783791))

(assert (= (and b!2783788 condSetEmpty!23409) setIsEmpty!23409))

(assert (= (and b!2783788 (not condSetEmpty!23409)) setNonEmpty!23408))

(assert (= setNonEmpty!23408 b!2783787))

(assert (= (and mapNonEmpty!17598 ((_ is Cons!32164) mapValue!17598)) b!2783788))

(assert (= b!2783790 b!2783789))

(assert (= (and b!2783790 condSetEmpty!23408) setIsEmpty!23408))

(assert (= (and b!2783790 (not condSetEmpty!23408)) setNonEmpty!23409))

(assert (= setNonEmpty!23409 b!2783786))

(assert (= (and mapNonEmpty!17592 ((_ is Cons!32164) mapDefault!17598)) b!2783790))

(declare-fun m!3214587 () Bool)

(assert (=> b!2783790 m!3214587))

(declare-fun m!3214589 () Bool)

(assert (=> mapNonEmpty!17598 m!3214589))

(declare-fun m!3214591 () Bool)

(assert (=> setNonEmpty!23409 m!3214591))

(declare-fun m!3214593 () Bool)

(assert (=> setNonEmpty!23408 m!3214593))

(declare-fun m!3214595 () Bool)

(assert (=> b!2783788 m!3214595))

(declare-fun tp!881905 () Bool)

(declare-fun setRes!23410 () Bool)

(declare-fun setElem!23410 () Context!4686)

(declare-fun e!1756224 () Bool)

(declare-fun setNonEmpty!23410 () Bool)

(assert (=> setNonEmpty!23410 (= setRes!23410 (and tp!881905 (inv!43691 setElem!23410) e!1756224))))

(declare-fun setRest!23410 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23410 (= (_2!19178 (h!37584 mapValue!17591)) ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23410 true) setRest!23410))))

(declare-fun b!2783792 () Bool)

(declare-fun tp!881902 () Bool)

(assert (=> b!2783792 (= e!1756224 tp!881902)))

(declare-fun e!1756225 () Bool)

(assert (=> mapNonEmpty!17592 (= tp!881757 e!1756225)))

(declare-fun e!1756223 () Bool)

(declare-fun b!2783793 () Bool)

(declare-fun tp!881904 () Bool)

(assert (=> b!2783793 (= e!1756225 (and (inv!43691 (_1!19177 (_1!19178 (h!37584 mapValue!17591)))) e!1756223 tp_is_empty!14063 setRes!23410 tp!881904))))

(declare-fun condSetEmpty!23410 () Bool)

(assert (=> b!2783793 (= condSetEmpty!23410 (= (_2!19178 (h!37584 mapValue!17591)) ((as const (Array Context!4686 Bool)) false)))))

(declare-fun b!2783794 () Bool)

(declare-fun tp!881903 () Bool)

(assert (=> b!2783794 (= e!1756223 tp!881903)))

(declare-fun setIsEmpty!23410 () Bool)

(assert (=> setIsEmpty!23410 setRes!23410))

(assert (= b!2783793 b!2783794))

(assert (= (and b!2783793 condSetEmpty!23410) setIsEmpty!23410))

(assert (= (and b!2783793 (not condSetEmpty!23410)) setNonEmpty!23410))

(assert (= setNonEmpty!23410 b!2783792))

(assert (= (and mapNonEmpty!17592 ((_ is Cons!32164) mapValue!17591)) b!2783793))

(declare-fun m!3214597 () Bool)

(assert (=> setNonEmpty!23410 m!3214597))

(declare-fun m!3214599 () Bool)

(assert (=> b!2783793 m!3214599))

(declare-fun condSetEmpty!23413 () Bool)

(assert (=> setNonEmpty!23386 (= condSetEmpty!23413 (= setRest!23386 ((as const (Array Context!4686 Bool)) false)))))

(declare-fun setRes!23413 () Bool)

(assert (=> setNonEmpty!23386 (= tp!881756 setRes!23413)))

(declare-fun setIsEmpty!23413 () Bool)

(assert (=> setIsEmpty!23413 setRes!23413))

(declare-fun setElem!23413 () Context!4686)

(declare-fun e!1756228 () Bool)

(declare-fun setNonEmpty!23413 () Bool)

(declare-fun tp!881911 () Bool)

(assert (=> setNonEmpty!23413 (= setRes!23413 (and tp!881911 (inv!43691 setElem!23413) e!1756228))))

(declare-fun setRest!23413 () (InoxSet Context!4686))

(assert (=> setNonEmpty!23413 (= setRest!23386 ((_ map or) (store ((as const (Array Context!4686 Bool)) false) setElem!23413 true) setRest!23413))))

(declare-fun b!2783799 () Bool)

(declare-fun tp!881910 () Bool)

(assert (=> b!2783799 (= e!1756228 tp!881910)))

(assert (= (and setNonEmpty!23386 condSetEmpty!23413) setIsEmpty!23413))

(assert (= (and setNonEmpty!23386 (not condSetEmpty!23413)) setNonEmpty!23413))

(assert (= setNonEmpty!23413 b!2783799))

(declare-fun m!3214601 () Bool)

(assert (=> setNonEmpty!23413 m!3214601))

(check-sat (not b!2783765) (not b!2783763) (not setNonEmpty!23397) (not mapNonEmpty!17598) tp_is_empty!14063 (not b!2783680) (not b!2783793) (not d!810403) (not b!2783767) (not b!2783690) (not b!2783670) (not b!2783725) (not b!2783719) (not b!2783651) (not b!2783713) b_and!203369 (not b!2783643) (not b!2783754) (not b!2783768) (not b!2783645) (not d!810393) (not setNonEmpty!23400) (not b!2783674) (not b!2783644) (not b!2783789) b_and!203373 (not b!2783764) (not setNonEmpty!23413) (not b!2783757) (not b_next!79335) (not b!2783677) (not d!810397) (not b!2783628) (not b!2783703) (not setNonEmpty!23409) (not b!2783720) (not b!2783756) (not b_next!79339) (not setNonEmpty!23402) (not b!2783620) (not setNonEmpty!23398) (not b!2783761) (not b!2783792) (not b!2783673) (not b!2783641) (not b!2783799) (not b!2783646) (not b!2783755) (not b!2783759) (not b!2783691) (not b!2783771) (not b!2783734) (not d!810385) (not b!2783669) (not b!2783760) (not b_next!79337) (not b!2783766) (not b!2783751) (not b!2783788) (not b!2783769) (not b!2783701) (not b!2783791) (not b!2783770) (not b!2783657) (not mapNonEmpty!17595) (not b!2783790) (not d!810399) (not b!2783753) (not b!2783622) (not b!2783735) (not d!810401) (not b!2783752) (not setNonEmpty!23399) (not b!2783758) (not setNonEmpty!23403) (not bm!182456) (not b!2783736) (not setNonEmpty!23408) b_and!203371 b_and!203367 (not setNonEmpty!23392) (not b!2783642) (not b!2783786) (not b!2783794) (not b!2783668) (not setNonEmpty!23389) (not b_next!79333) (not d!810367) (not b!2783787) (not b!2783712) (not bm!182457) (not setNonEmpty!23401) (not b!2783714) (not b!2783702) (not d!810373) (not b!2783762) (not d!810365) (not b!2783652) (not d!810371) (not setNonEmpty!23410) (not b!2783613) (not b!2783672) (not d!810375))
(check-sat b_and!203369 b_and!203373 (not b_next!79335) (not b_next!79339) (not b_next!79337) (not b_next!79333) b_and!203371 b_and!203367)
