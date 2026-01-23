; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270270 () Bool)

(assert start!270270)

(declare-fun b!2795841 () Bool)

(declare-fun b_free!79189 () Bool)

(declare-fun b_next!79893 () Bool)

(assert (=> b!2795841 (= b_free!79189 (not b_next!79893))))

(declare-fun tp!889514 () Bool)

(declare-fun b_and!203927 () Bool)

(assert (=> b!2795841 (= tp!889514 b_and!203927)))

(declare-fun b!2795833 () Bool)

(declare-fun b_free!79191 () Bool)

(declare-fun b_next!79895 () Bool)

(assert (=> b!2795833 (= b_free!79191 (not b_next!79895))))

(declare-fun tp!889507 () Bool)

(declare-fun b_and!203929 () Bool)

(assert (=> b!2795833 (= tp!889507 b_and!203929)))

(declare-fun b!2795847 () Bool)

(declare-fun b_free!79193 () Bool)

(declare-fun b_next!79897 () Bool)

(assert (=> b!2795847 (= b_free!79193 (not b_next!79897))))

(declare-fun tp!889506 () Bool)

(declare-fun b_and!203931 () Bool)

(assert (=> b!2795847 (= tp!889506 b_and!203931)))

(declare-fun b!2795839 () Bool)

(declare-fun b_free!79195 () Bool)

(declare-fun b_next!79899 () Bool)

(assert (=> b!2795839 (= b_free!79195 (not b_next!79899))))

(declare-fun tp!889513 () Bool)

(declare-fun b_and!203933 () Bool)

(assert (=> b!2795839 (= tp!889513 b_and!203933)))

(declare-fun b!2795825 () Bool)

(declare-fun res!1165570 () Bool)

(declare-fun e!1765704 () Bool)

(assert (=> b!2795825 (=> (not res!1165570) (not e!1765704))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((C!16548 0))(
  ( (C!16549 (val!10208 Int)) )
))
(declare-datatypes ((List!32542 0))(
  ( (Nil!32442) (Cons!32442 (h!37862 C!16548) (t!228702 List!32542)) )
))
(declare-datatypes ((IArray!20119 0))(
  ( (IArray!20120 (innerList!10117 List!32542)) )
))
(declare-datatypes ((Conc!10057 0))(
  ( (Node!10057 (left!24552 Conc!10057) (right!24882 Conc!10057) (csize!20344 Int) (cheight!10268 Int)) (Leaf!15323 (xs!13169 IArray!20119) (csize!20345 Int)) (Empty!10057) )
))
(declare-datatypes ((BalanceConc!19728 0))(
  ( (BalanceConc!19729 (c!453593 Conc!10057)) )
))
(declare-fun totalInput!758 () BalanceConc!19728)

(declare-fun size!25288 (BalanceConc!19728) Int)

(assert (=> b!2795825 (= res!1165570 (= totalInputSize!205 (size!25288 totalInput!758)))))

(declare-fun b!2795826 () Bool)

(declare-fun e!1765715 () Bool)

(declare-fun e!1765718 () Bool)

(declare-datatypes ((array!14161 0))(
  ( (array!14162 (arr!6311 (Array (_ BitVec 32) (_ BitVec 64))) (size!25289 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8195 0))(
  ( (ElementMatch!8195 (c!453594 C!16548)) (Concat!13283 (regOne!16902 Regex!8195) (regTwo!16902 Regex!8195)) (EmptyExpr!8195) (Star!8195 (reg!8524 Regex!8195)) (EmptyLang!8195) (Union!8195 (regOne!16903 Regex!8195) (regTwo!16903 Regex!8195)) )
))
(declare-datatypes ((List!32543 0))(
  ( (Nil!32443) (Cons!32443 (h!37863 Regex!8195) (t!228703 List!32543)) )
))
(declare-datatypes ((Context!4826 0))(
  ( (Context!4827 (exprs!2913 List!32543)) )
))
(declare-datatypes ((tuple3!5124 0))(
  ( (tuple3!5125 (_1!19514 Regex!8195) (_2!19514 Context!4826) (_3!3032 C!16548)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32964 0))(
  ( (tuple2!32965 (_1!19515 tuple3!5124) (_2!19515 (InoxSet Context!4826))) )
))
(declare-datatypes ((List!32544 0))(
  ( (Nil!32444) (Cons!32444 (h!37864 tuple2!32964) (t!228704 List!32544)) )
))
(declare-datatypes ((array!14163 0))(
  ( (array!14164 (arr!6312 (Array (_ BitVec 32) List!32544)) (size!25290 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7966 0))(
  ( (LongMapFixedSize!7967 (defaultEntry!4368 Int) (mask!9817 (_ BitVec 32)) (extraKeys!4232 (_ BitVec 32)) (zeroValue!4242 List!32544) (minValue!4242 List!32544) (_size!8009 (_ BitVec 32)) (_keys!4283 array!14161) (_values!4264 array!14163) (_vacant!4044 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15741 0))(
  ( (Cell!15742 (v!34044 LongMapFixedSize!7966)) )
))
(declare-datatypes ((MutLongMap!3983 0))(
  ( (LongMap!3983 (underlying!8169 Cell!15741)) (MutLongMapExt!3982 (__x!21599 Int)) )
))
(declare-fun lt!998864 () MutLongMap!3983)

(get-info :version)

(assert (=> b!2795826 (= e!1765715 (and e!1765718 ((_ is LongMap!3983) lt!998864)))))

(declare-datatypes ((Cell!15743 0))(
  ( (Cell!15744 (v!34045 MutLongMap!3983)) )
))
(declare-datatypes ((Hashable!3899 0))(
  ( (HashableExt!3898 (__x!21600 Int)) )
))
(declare-datatypes ((MutableMap!3889 0))(
  ( (MutableMapExt!3888 (__x!21601 Int)) (HashMap!3889 (underlying!8170 Cell!15743) (hashF!5931 Hashable!3899) (_size!8010 (_ BitVec 32)) (defaultValue!4060 Int)) )
))
(declare-datatypes ((CacheDown!2716 0))(
  ( (CacheDown!2717 (cache!4032 MutableMap!3889)) )
))
(declare-fun cacheDown!1009 () CacheDown!2716)

(assert (=> b!2795826 (= lt!998864 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))

(declare-fun b!2795827 () Bool)

(declare-fun e!1765700 () Bool)

(declare-fun lt!998865 () List!32542)

(declare-fun lt!998868 () Int)

(declare-fun size!25291 (List!32542) Int)

(assert (=> b!2795827 (= e!1765700 (= (size!25291 lt!998865) lt!998868))))

(declare-fun isPrefix!2619 (List!32542 List!32542) Bool)

(assert (=> b!2795827 (isPrefix!2619 lt!998865 lt!998865)))

(declare-datatypes ((Unit!46592 0))(
  ( (Unit!46593) )
))
(declare-fun lt!998866 () Unit!46592)

(declare-fun lemmaIsPrefixRefl!1708 (List!32542 List!32542) Unit!46592)

(assert (=> b!2795827 (= lt!998866 (lemmaIsPrefixRefl!1708 lt!998865 lt!998865))))

(declare-fun b!2795828 () Bool)

(declare-fun res!1165572 () Bool)

(assert (=> b!2795828 (=> (not res!1165572) (not e!1765704))))

(declare-fun valid!3123 (CacheDown!2716) Bool)

(assert (=> b!2795828 (= res!1165572 (valid!3123 cacheDown!1009))))

(declare-fun b!2795829 () Bool)

(declare-fun e!1765710 () Bool)

(declare-fun e!1765708 () Bool)

(assert (=> b!2795829 (= e!1765710 e!1765708)))

(declare-fun b!2795830 () Bool)

(declare-fun e!1765716 () Bool)

(declare-fun e!1765709 () Bool)

(assert (=> b!2795830 (= e!1765716 e!1765709)))

(declare-fun mapNonEmpty!18123 () Bool)

(declare-fun mapRes!18123 () Bool)

(declare-fun tp!889520 () Bool)

(declare-fun tp!889522 () Bool)

(assert (=> mapNonEmpty!18123 (= mapRes!18123 (and tp!889520 tp!889522))))

(declare-fun mapValue!18123 () List!32544)

(declare-fun mapRest!18123 () (Array (_ BitVec 32) List!32544))

(declare-fun mapKey!18124 () (_ BitVec 32))

(assert (=> mapNonEmpty!18123 (= (arr!6312 (_values!4264 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))) (store mapRest!18123 mapKey!18124 mapValue!18123))))

(declare-fun b!2795831 () Bool)

(declare-fun e!1765713 () Bool)

(declare-fun tp!889508 () Bool)

(declare-fun inv!44070 (Conc!10057) Bool)

(assert (=> b!2795831 (= e!1765713 (and (inv!44070 (c!453593 totalInput!758)) tp!889508))))

(declare-fun b!2795832 () Bool)

(declare-fun e!1765697 () Bool)

(declare-fun tp!889509 () Bool)

(declare-fun mapRes!18124 () Bool)

(assert (=> b!2795832 (= e!1765697 (and tp!889509 mapRes!18124))))

(declare-fun condMapEmpty!18123 () Bool)

(declare-datatypes ((Hashable!3900 0))(
  ( (HashableExt!3899 (__x!21602 Int)) )
))
(declare-datatypes ((tuple2!32966 0))(
  ( (tuple2!32967 (_1!19516 Context!4826) (_2!19516 C!16548)) )
))
(declare-datatypes ((tuple2!32968 0))(
  ( (tuple2!32969 (_1!19517 tuple2!32966) (_2!19517 (InoxSet Context!4826))) )
))
(declare-datatypes ((List!32545 0))(
  ( (Nil!32445) (Cons!32445 (h!37865 tuple2!32968) (t!228705 List!32545)) )
))
(declare-datatypes ((array!14165 0))(
  ( (array!14166 (arr!6313 (Array (_ BitVec 32) List!32545)) (size!25292 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7968 0))(
  ( (LongMapFixedSize!7969 (defaultEntry!4369 Int) (mask!9818 (_ BitVec 32)) (extraKeys!4233 (_ BitVec 32)) (zeroValue!4243 List!32545) (minValue!4243 List!32545) (_size!8011 (_ BitVec 32)) (_keys!4284 array!14161) (_values!4265 array!14165) (_vacant!4045 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15745 0))(
  ( (Cell!15746 (v!34046 LongMapFixedSize!7968)) )
))
(declare-datatypes ((MutLongMap!3984 0))(
  ( (LongMap!3984 (underlying!8171 Cell!15745)) (MutLongMapExt!3983 (__x!21603 Int)) )
))
(declare-datatypes ((Cell!15747 0))(
  ( (Cell!15748 (v!34047 MutLongMap!3984)) )
))
(declare-datatypes ((MutableMap!3890 0))(
  ( (MutableMapExt!3889 (__x!21604 Int)) (HashMap!3890 (underlying!8172 Cell!15747) (hashF!5932 Hashable!3900) (_size!8012 (_ BitVec 32)) (defaultValue!4061 Int)) )
))
(declare-datatypes ((CacheUp!2594 0))(
  ( (CacheUp!2595 (cache!4033 MutableMap!3890)) )
))
(declare-fun cacheUp!890 () CacheUp!2594)

(declare-fun mapDefault!18124 () List!32545)

(assert (=> b!2795832 (= condMapEmpty!18123 (= (arr!6313 (_values!4265 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32545)) mapDefault!18124)))))

(declare-fun e!1765699 () Bool)

(declare-fun tp!889521 () Bool)

(declare-fun e!1765711 () Bool)

(declare-fun tp!889505 () Bool)

(declare-fun array_inv!4518 (array!14161) Bool)

(declare-fun array_inv!4519 (array!14163) Bool)

(assert (=> b!2795833 (= e!1765711 (and tp!889507 tp!889505 tp!889521 (array_inv!4518 (_keys!4283 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))) (array_inv!4519 (_values!4264 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))) e!1765699))))

(declare-fun b!2795834 () Bool)

(declare-fun e!1765698 () Bool)

(declare-fun tp_is_empty!14203 () Bool)

(declare-fun tp!889518 () Bool)

(assert (=> b!2795834 (= e!1765698 (and tp_is_empty!14203 tp!889518))))

(declare-fun b!2795835 () Bool)

(declare-fun e!1765717 () Bool)

(assert (=> b!2795835 (= e!1765709 e!1765717)))

(declare-fun b!2795836 () Bool)

(declare-fun e!1765705 () Bool)

(declare-fun tp!889516 () Bool)

(assert (=> b!2795836 (= e!1765705 (and tp_is_empty!14203 tp!889516))))

(declare-fun b!2795837 () Bool)

(declare-fun e!1765719 () Bool)

(assert (=> b!2795837 (= e!1765704 (not e!1765719))))

(declare-fun res!1165569 () Bool)

(assert (=> b!2795837 (=> res!1165569 e!1765719)))

(declare-fun testedP!183 () List!32542)

(assert (=> b!2795837 (= res!1165569 (not (isPrefix!2619 testedP!183 lt!998865)))))

(declare-fun lt!998862 () List!32542)

(assert (=> b!2795837 (isPrefix!2619 testedP!183 lt!998862)))

(declare-fun lt!998861 () Unit!46592)

(declare-fun testedSuffix!143 () List!32542)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1727 (List!32542 List!32542) Unit!46592)

(assert (=> b!2795837 (= lt!998861 (lemmaConcatTwoListThenFirstIsPrefix!1727 testedP!183 testedSuffix!143))))

(declare-fun b!2795838 () Bool)

(assert (=> b!2795838 (= e!1765719 e!1765700)))

(declare-fun res!1165576 () Bool)

(assert (=> b!2795838 (=> res!1165576 e!1765700)))

(declare-fun z!3684 () (InoxSet Context!4826))

(declare-fun lostCauseZipper!491 ((InoxSet Context!4826)) Bool)

(assert (=> b!2795838 (= res!1165576 (lostCauseZipper!491 z!3684))))

(declare-fun lt!998867 () List!32542)

(assert (=> b!2795838 (and (= testedSuffix!143 lt!998867) (= lt!998867 testedSuffix!143))))

(declare-fun lt!998863 () Unit!46592)

(declare-fun lemmaSamePrefixThenSameSuffix!1194 (List!32542 List!32542 List!32542 List!32542 List!32542) Unit!46592)

(assert (=> b!2795838 (= lt!998863 (lemmaSamePrefixThenSameSuffix!1194 testedP!183 testedSuffix!143 testedP!183 lt!998867 lt!998865))))

(declare-fun getSuffix!1296 (List!32542 List!32542) List!32542)

(assert (=> b!2795838 (= lt!998867 (getSuffix!1296 lt!998865 testedP!183))))

(declare-fun tp!889510 () Bool)

(declare-fun tp!889515 () Bool)

(declare-fun array_inv!4520 (array!14165) Bool)

(assert (=> b!2795839 (= e!1765717 (and tp!889513 tp!889515 tp!889510 (array_inv!4518 (_keys!4284 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))) (array_inv!4520 (_values!4265 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))) e!1765697))))

(declare-fun setIsEmpty!24185 () Bool)

(declare-fun setRes!24185 () Bool)

(assert (=> setIsEmpty!24185 setRes!24185))

(declare-fun b!2795840 () Bool)

(declare-fun e!1765701 () Bool)

(declare-fun e!1765703 () Bool)

(assert (=> b!2795840 (= e!1765701 e!1765703)))

(declare-fun e!1765706 () Bool)

(assert (=> b!2795841 (= e!1765708 (and e!1765706 tp!889514))))

(declare-fun b!2795842 () Bool)

(declare-fun e!1765714 () Bool)

(assert (=> b!2795842 (= e!1765718 e!1765714)))

(declare-fun b!2795843 () Bool)

(declare-fun tp!889511 () Bool)

(assert (=> b!2795843 (= e!1765699 (and tp!889511 mapRes!18123))))

(declare-fun condMapEmpty!18124 () Bool)

(declare-fun mapDefault!18123 () List!32544)

(assert (=> b!2795843 (= condMapEmpty!18124 (= (arr!6312 (_values!4264 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32544)) mapDefault!18123)))))

(declare-fun b!2795844 () Bool)

(declare-fun res!1165573 () Bool)

(assert (=> b!2795844 (=> (not res!1165573) (not e!1765704))))

(declare-fun valid!3124 (CacheUp!2594) Bool)

(assert (=> b!2795844 (= res!1165573 (valid!3124 cacheUp!890))))

(declare-fun setNonEmpty!24185 () Bool)

(declare-fun setElem!24185 () Context!4826)

(declare-fun e!1765702 () Bool)

(declare-fun tp!889519 () Bool)

(declare-fun inv!44071 (Context!4826) Bool)

(assert (=> setNonEmpty!24185 (= setRes!24185 (and tp!889519 (inv!44071 setElem!24185) e!1765702))))

(declare-fun setRest!24185 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24185 (= z!3684 ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24185 true) setRest!24185))))

(declare-fun b!2795845 () Bool)

(declare-fun res!1165575 () Bool)

(assert (=> b!2795845 (=> res!1165575 e!1765700)))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2795845 (= res!1165575 (not (= testedPSize!143 totalInputSize!205)))))

(declare-fun res!1165571 () Bool)

(declare-fun e!1765720 () Bool)

(assert (=> start!270270 (=> (not res!1165571) (not e!1765720))))

(assert (=> start!270270 (= res!1165571 (= lt!998862 lt!998865))))

(declare-fun list!12192 (BalanceConc!19728) List!32542)

(assert (=> start!270270 (= lt!998865 (list!12192 totalInput!758))))

(declare-fun ++!8006 (List!32542 List!32542) List!32542)

(assert (=> start!270270 (= lt!998862 (++!8006 testedP!183 testedSuffix!143))))

(assert (=> start!270270 e!1765720))

(declare-fun inv!44072 (BalanceConc!19728) Bool)

(assert (=> start!270270 (and (inv!44072 totalInput!758) e!1765713)))

(declare-fun condSetEmpty!24185 () Bool)

(assert (=> start!270270 (= condSetEmpty!24185 (= z!3684 ((as const (Array Context!4826 Bool)) false)))))

(assert (=> start!270270 setRes!24185))

(assert (=> start!270270 true))

(assert (=> start!270270 e!1765705))

(assert (=> start!270270 e!1765698))

(declare-fun inv!44073 (CacheDown!2716) Bool)

(assert (=> start!270270 (and (inv!44073 cacheDown!1009) e!1765701)))

(declare-fun inv!44074 (CacheUp!2594) Bool)

(assert (=> start!270270 (and (inv!44074 cacheUp!890) e!1765710)))

(declare-fun b!2795846 () Bool)

(declare-fun tp!889504 () Bool)

(assert (=> b!2795846 (= e!1765702 tp!889504)))

(assert (=> b!2795847 (= e!1765703 (and e!1765715 tp!889506))))

(declare-fun mapIsEmpty!18123 () Bool)

(assert (=> mapIsEmpty!18123 mapRes!18123))

(declare-fun b!2795848 () Bool)

(assert (=> b!2795848 (= e!1765720 e!1765704)))

(declare-fun res!1165574 () Bool)

(assert (=> b!2795848 (=> (not res!1165574) (not e!1765704))))

(assert (=> b!2795848 (= res!1165574 (= testedPSize!143 lt!998868))))

(assert (=> b!2795848 (= lt!998868 (size!25291 testedP!183))))

(declare-fun mapNonEmpty!18124 () Bool)

(declare-fun tp!889517 () Bool)

(declare-fun tp!889512 () Bool)

(assert (=> mapNonEmpty!18124 (= mapRes!18124 (and tp!889517 tp!889512))))

(declare-fun mapValue!18124 () List!32545)

(declare-fun mapKey!18123 () (_ BitVec 32))

(declare-fun mapRest!18124 () (Array (_ BitVec 32) List!32545))

(assert (=> mapNonEmpty!18124 (= (arr!6313 (_values!4265 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))) (store mapRest!18124 mapKey!18123 mapValue!18124))))

(declare-fun mapIsEmpty!18124 () Bool)

(assert (=> mapIsEmpty!18124 mapRes!18124))

(declare-fun b!2795849 () Bool)

(assert (=> b!2795849 (= e!1765714 e!1765711)))

(declare-fun b!2795850 () Bool)

(declare-fun lt!998860 () MutLongMap!3984)

(assert (=> b!2795850 (= e!1765706 (and e!1765716 ((_ is LongMap!3984) lt!998860)))))

(assert (=> b!2795850 (= lt!998860 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))

(assert (= (and start!270270 res!1165571) b!2795848))

(assert (= (and b!2795848 res!1165574) b!2795825))

(assert (= (and b!2795825 res!1165570) b!2795844))

(assert (= (and b!2795844 res!1165573) b!2795828))

(assert (= (and b!2795828 res!1165572) b!2795837))

(assert (= (and b!2795837 (not res!1165569)) b!2795838))

(assert (= (and b!2795838 (not res!1165576)) b!2795845))

(assert (= (and b!2795845 (not res!1165575)) b!2795827))

(assert (= start!270270 b!2795831))

(assert (= (and start!270270 condSetEmpty!24185) setIsEmpty!24185))

(assert (= (and start!270270 (not condSetEmpty!24185)) setNonEmpty!24185))

(assert (= setNonEmpty!24185 b!2795846))

(assert (= (and start!270270 ((_ is Cons!32442) testedP!183)) b!2795836))

(assert (= (and start!270270 ((_ is Cons!32442) testedSuffix!143)) b!2795834))

(assert (= (and b!2795843 condMapEmpty!18124) mapIsEmpty!18123))

(assert (= (and b!2795843 (not condMapEmpty!18124)) mapNonEmpty!18123))

(assert (= b!2795833 b!2795843))

(assert (= b!2795849 b!2795833))

(assert (= b!2795842 b!2795849))

(assert (= (and b!2795826 ((_ is LongMap!3983) (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))) b!2795842))

(assert (= b!2795847 b!2795826))

(assert (= (and b!2795840 ((_ is HashMap!3889) (cache!4032 cacheDown!1009))) b!2795847))

(assert (= start!270270 b!2795840))

(assert (= (and b!2795832 condMapEmpty!18123) mapIsEmpty!18124))

(assert (= (and b!2795832 (not condMapEmpty!18123)) mapNonEmpty!18124))

(assert (= b!2795839 b!2795832))

(assert (= b!2795835 b!2795839))

(assert (= b!2795830 b!2795835))

(assert (= (and b!2795850 ((_ is LongMap!3984) (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))) b!2795830))

(assert (= b!2795841 b!2795850))

(assert (= (and b!2795829 ((_ is HashMap!3890) (cache!4033 cacheUp!890))) b!2795841))

(assert (= start!270270 b!2795829))

(declare-fun m!3225631 () Bool)

(assert (=> b!2795827 m!3225631))

(declare-fun m!3225633 () Bool)

(assert (=> b!2795827 m!3225633))

(declare-fun m!3225635 () Bool)

(assert (=> b!2795827 m!3225635))

(declare-fun m!3225637 () Bool)

(assert (=> b!2795848 m!3225637))

(declare-fun m!3225639 () Bool)

(assert (=> b!2795837 m!3225639))

(declare-fun m!3225641 () Bool)

(assert (=> b!2795837 m!3225641))

(declare-fun m!3225643 () Bool)

(assert (=> b!2795837 m!3225643))

(declare-fun m!3225645 () Bool)

(assert (=> mapNonEmpty!18123 m!3225645))

(declare-fun m!3225647 () Bool)

(assert (=> b!2795838 m!3225647))

(declare-fun m!3225649 () Bool)

(assert (=> b!2795838 m!3225649))

(declare-fun m!3225651 () Bool)

(assert (=> b!2795838 m!3225651))

(declare-fun m!3225653 () Bool)

(assert (=> b!2795833 m!3225653))

(declare-fun m!3225655 () Bool)

(assert (=> b!2795833 m!3225655))

(declare-fun m!3225657 () Bool)

(assert (=> b!2795839 m!3225657))

(declare-fun m!3225659 () Bool)

(assert (=> b!2795839 m!3225659))

(declare-fun m!3225661 () Bool)

(assert (=> b!2795825 m!3225661))

(declare-fun m!3225663 () Bool)

(assert (=> setNonEmpty!24185 m!3225663))

(declare-fun m!3225665 () Bool)

(assert (=> b!2795828 m!3225665))

(declare-fun m!3225667 () Bool)

(assert (=> start!270270 m!3225667))

(declare-fun m!3225669 () Bool)

(assert (=> start!270270 m!3225669))

(declare-fun m!3225671 () Bool)

(assert (=> start!270270 m!3225671))

(declare-fun m!3225673 () Bool)

(assert (=> start!270270 m!3225673))

(declare-fun m!3225675 () Bool)

(assert (=> start!270270 m!3225675))

(declare-fun m!3225677 () Bool)

(assert (=> b!2795844 m!3225677))

(declare-fun m!3225679 () Bool)

(assert (=> mapNonEmpty!18124 m!3225679))

(declare-fun m!3225681 () Bool)

(assert (=> b!2795831 m!3225681))

(check-sat (not b!2795831) (not mapNonEmpty!18123) (not b!2795837) (not b!2795827) (not b!2795848) b_and!203931 (not b_next!79899) tp_is_empty!14203 b_and!203929 (not b!2795828) (not b!2795838) b_and!203927 (not b!2795833) (not b!2795843) (not start!270270) b_and!203933 (not b!2795836) (not b_next!79897) (not b!2795844) (not b!2795834) (not setNonEmpty!24185) (not b!2795839) (not b!2795846) (not b!2795825) (not b_next!79895) (not b_next!79893) (not mapNonEmpty!18124) (not b!2795832))
(check-sat (not b_next!79897) b_and!203931 (not b_next!79899) b_and!203929 b_and!203927 b_and!203933 (not b_next!79895) (not b_next!79893))
(get-model)

(declare-fun d!812702 () Bool)

(declare-fun lambda!102675 () Int)

(declare-fun forall!6691 (List!32543 Int) Bool)

(assert (=> d!812702 (= (inv!44071 setElem!24185) (forall!6691 (exprs!2913 setElem!24185) lambda!102675))))

(declare-fun bs!515005 () Bool)

(assert (= bs!515005 d!812702))

(declare-fun m!3225683 () Bool)

(assert (=> bs!515005 m!3225683))

(assert (=> setNonEmpty!24185 d!812702))

(declare-fun d!812704 () Bool)

(declare-fun validCacheMapUp!392 (MutableMap!3890) Bool)

(assert (=> d!812704 (= (valid!3124 cacheUp!890) (validCacheMapUp!392 (cache!4033 cacheUp!890)))))

(declare-fun bs!515006 () Bool)

(assert (= bs!515006 d!812704))

(declare-fun m!3225685 () Bool)

(assert (=> bs!515006 m!3225685))

(assert (=> b!2795844 d!812704))

(declare-fun d!812706 () Bool)

(declare-fun lt!998871 () Int)

(assert (=> d!812706 (= lt!998871 (size!25291 (list!12192 totalInput!758)))))

(declare-fun size!25293 (Conc!10057) Int)

(assert (=> d!812706 (= lt!998871 (size!25293 (c!453593 totalInput!758)))))

(assert (=> d!812706 (= (size!25288 totalInput!758) lt!998871)))

(declare-fun bs!515007 () Bool)

(assert (= bs!515007 d!812706))

(assert (=> bs!515007 m!3225667))

(assert (=> bs!515007 m!3225667))

(declare-fun m!3225687 () Bool)

(assert (=> bs!515007 m!3225687))

(declare-fun m!3225689 () Bool)

(assert (=> bs!515007 m!3225689))

(assert (=> b!2795825 d!812706))

(declare-fun d!812708 () Bool)

(declare-fun res!1165579 () Bool)

(declare-fun e!1765723 () Bool)

(assert (=> d!812708 (=> (not res!1165579) (not e!1765723))))

(assert (=> d!812708 (= res!1165579 ((_ is HashMap!3890) (cache!4033 cacheUp!890)))))

(assert (=> d!812708 (= (inv!44074 cacheUp!890) e!1765723)))

(declare-fun b!2795853 () Bool)

(assert (=> b!2795853 (= e!1765723 (validCacheMapUp!392 (cache!4033 cacheUp!890)))))

(assert (= (and d!812708 res!1165579) b!2795853))

(assert (=> b!2795853 m!3225685))

(assert (=> start!270270 d!812708))

(declare-fun d!812710 () Bool)

(declare-fun isBalanced!3068 (Conc!10057) Bool)

(assert (=> d!812710 (= (inv!44072 totalInput!758) (isBalanced!3068 (c!453593 totalInput!758)))))

(declare-fun bs!515008 () Bool)

(assert (= bs!515008 d!812710))

(declare-fun m!3225691 () Bool)

(assert (=> bs!515008 m!3225691))

(assert (=> start!270270 d!812710))

(declare-fun d!812712 () Bool)

(declare-fun res!1165582 () Bool)

(declare-fun e!1765726 () Bool)

(assert (=> d!812712 (=> (not res!1165582) (not e!1765726))))

(assert (=> d!812712 (= res!1165582 ((_ is HashMap!3889) (cache!4032 cacheDown!1009)))))

(assert (=> d!812712 (= (inv!44073 cacheDown!1009) e!1765726)))

(declare-fun b!2795856 () Bool)

(declare-fun validCacheMapDown!423 (MutableMap!3889) Bool)

(assert (=> b!2795856 (= e!1765726 (validCacheMapDown!423 (cache!4032 cacheDown!1009)))))

(assert (= (and d!812712 res!1165582) b!2795856))

(declare-fun m!3225693 () Bool)

(assert (=> b!2795856 m!3225693))

(assert (=> start!270270 d!812712))

(declare-fun d!812714 () Bool)

(declare-fun list!12193 (Conc!10057) List!32542)

(assert (=> d!812714 (= (list!12192 totalInput!758) (list!12193 (c!453593 totalInput!758)))))

(declare-fun bs!515009 () Bool)

(assert (= bs!515009 d!812714))

(declare-fun m!3225695 () Bool)

(assert (=> bs!515009 m!3225695))

(assert (=> start!270270 d!812714))

(declare-fun d!812716 () Bool)

(declare-fun e!1765732 () Bool)

(assert (=> d!812716 e!1765732))

(declare-fun res!1165587 () Bool)

(assert (=> d!812716 (=> (not res!1165587) (not e!1765732))))

(declare-fun lt!998874 () List!32542)

(declare-fun content!4536 (List!32542) (InoxSet C!16548))

(assert (=> d!812716 (= res!1165587 (= (content!4536 lt!998874) ((_ map or) (content!4536 testedP!183) (content!4536 testedSuffix!143))))))

(declare-fun e!1765731 () List!32542)

(assert (=> d!812716 (= lt!998874 e!1765731)))

(declare-fun c!453597 () Bool)

(assert (=> d!812716 (= c!453597 ((_ is Nil!32442) testedP!183))))

(assert (=> d!812716 (= (++!8006 testedP!183 testedSuffix!143) lt!998874)))

(declare-fun b!2795867 () Bool)

(declare-fun res!1165588 () Bool)

(assert (=> b!2795867 (=> (not res!1165588) (not e!1765732))))

(assert (=> b!2795867 (= res!1165588 (= (size!25291 lt!998874) (+ (size!25291 testedP!183) (size!25291 testedSuffix!143))))))

(declare-fun b!2795865 () Bool)

(assert (=> b!2795865 (= e!1765731 testedSuffix!143)))

(declare-fun b!2795868 () Bool)

(assert (=> b!2795868 (= e!1765732 (or (not (= testedSuffix!143 Nil!32442)) (= lt!998874 testedP!183)))))

(declare-fun b!2795866 () Bool)

(assert (=> b!2795866 (= e!1765731 (Cons!32442 (h!37862 testedP!183) (++!8006 (t!228702 testedP!183) testedSuffix!143)))))

(assert (= (and d!812716 c!453597) b!2795865))

(assert (= (and d!812716 (not c!453597)) b!2795866))

(assert (= (and d!812716 res!1165587) b!2795867))

(assert (= (and b!2795867 res!1165588) b!2795868))

(declare-fun m!3225697 () Bool)

(assert (=> d!812716 m!3225697))

(declare-fun m!3225699 () Bool)

(assert (=> d!812716 m!3225699))

(declare-fun m!3225701 () Bool)

(assert (=> d!812716 m!3225701))

(declare-fun m!3225703 () Bool)

(assert (=> b!2795867 m!3225703))

(assert (=> b!2795867 m!3225637))

(declare-fun m!3225705 () Bool)

(assert (=> b!2795867 m!3225705))

(declare-fun m!3225707 () Bool)

(assert (=> b!2795866 m!3225707))

(assert (=> start!270270 d!812716))

(declare-fun d!812718 () Bool)

(assert (=> d!812718 (= (valid!3123 cacheDown!1009) (validCacheMapDown!423 (cache!4032 cacheDown!1009)))))

(declare-fun bs!515010 () Bool)

(assert (= bs!515010 d!812718))

(assert (=> bs!515010 m!3225693))

(assert (=> b!2795828 d!812718))

(declare-fun bs!515011 () Bool)

(declare-fun b!2795873 () Bool)

(declare-fun d!812720 () Bool)

(assert (= bs!515011 (and b!2795873 d!812720)))

(declare-fun lambda!102689 () Int)

(declare-fun lambda!102688 () Int)

(assert (=> bs!515011 (not (= lambda!102689 lambda!102688))))

(declare-fun bs!515012 () Bool)

(declare-fun b!2795874 () Bool)

(assert (= bs!515012 (and b!2795874 d!812720)))

(declare-fun lambda!102690 () Int)

(assert (=> bs!515012 (not (= lambda!102690 lambda!102688))))

(declare-fun bs!515013 () Bool)

(assert (= bs!515013 (and b!2795874 b!2795873)))

(assert (=> bs!515013 (= lambda!102690 lambda!102689)))

(declare-fun bm!182768 () Bool)

(declare-fun call!182773 () Bool)

(declare-fun c!453608 () Bool)

(declare-datatypes ((List!32546 0))(
  ( (Nil!32446) (Cons!32446 (h!37866 Context!4826) (t!228706 List!32546)) )
))
(declare-fun lt!998892 () List!32546)

(declare-fun lt!998898 () List!32546)

(declare-fun exists!1009 (List!32546 Int) Bool)

(assert (=> bm!182768 (= call!182773 (exists!1009 (ite c!453608 lt!998892 lt!998898) (ite c!453608 lambda!102689 lambda!102690)))))

(declare-fun bm!182767 () Bool)

(declare-fun call!182772 () List!32546)

(declare-fun toList!1876 ((InoxSet Context!4826)) List!32546)

(assert (=> bm!182767 (= call!182772 (toList!1876 z!3684))))

(declare-fun lt!998897 () Bool)

(declare-datatypes ((Option!6281 0))(
  ( (None!6280) (Some!6280 (v!34048 List!32542)) )
))
(declare-fun isEmpty!18130 (Option!6281) Bool)

(declare-fun getLanguageWitness!215 ((InoxSet Context!4826)) Option!6281)

(assert (=> d!812720 (= lt!998897 (isEmpty!18130 (getLanguageWitness!215 z!3684)))))

(declare-fun forall!6692 ((InoxSet Context!4826) Int) Bool)

(assert (=> d!812720 (= lt!998897 (forall!6692 z!3684 lambda!102688))))

(declare-fun lt!998895 () Unit!46592)

(declare-fun e!1765739 () Unit!46592)

(assert (=> d!812720 (= lt!998895 e!1765739)))

(assert (=> d!812720 (= c!453608 (not (forall!6692 z!3684 lambda!102688)))))

(assert (=> d!812720 (= (lostCauseZipper!491 z!3684) lt!998897)))

(declare-fun Unit!46594 () Unit!46592)

(assert (=> b!2795874 (= e!1765739 Unit!46594)))

(assert (=> b!2795874 (= lt!998898 call!182772)))

(declare-fun lt!998891 () Unit!46592)

(declare-fun lemmaForallThenNotExists!103 (List!32546 Int) Unit!46592)

(assert (=> b!2795874 (= lt!998891 (lemmaForallThenNotExists!103 lt!998898 lambda!102688))))

(assert (=> b!2795874 (not call!182773)))

(declare-fun lt!998896 () Unit!46592)

(assert (=> b!2795874 (= lt!998896 lt!998891)))

(declare-fun Unit!46595 () Unit!46592)

(assert (=> b!2795873 (= e!1765739 Unit!46595)))

(assert (=> b!2795873 (= lt!998892 call!182772)))

(declare-fun lt!998893 () Unit!46592)

(declare-fun lemmaNotForallThenExists!103 (List!32546 Int) Unit!46592)

(assert (=> b!2795873 (= lt!998893 (lemmaNotForallThenExists!103 lt!998892 lambda!102688))))

(assert (=> b!2795873 call!182773))

(declare-fun lt!998894 () Unit!46592)

(assert (=> b!2795873 (= lt!998894 lt!998893)))

(assert (= (and d!812720 c!453608) b!2795873))

(assert (= (and d!812720 (not c!453608)) b!2795874))

(assert (= (or b!2795873 b!2795874) bm!182767))

(assert (= (or b!2795873 b!2795874) bm!182768))

(declare-fun m!3225709 () Bool)

(assert (=> b!2795873 m!3225709))

(declare-fun m!3225711 () Bool)

(assert (=> bm!182767 m!3225711))

(declare-fun m!3225713 () Bool)

(assert (=> bm!182768 m!3225713))

(declare-fun m!3225715 () Bool)

(assert (=> b!2795874 m!3225715))

(declare-fun m!3225717 () Bool)

(assert (=> d!812720 m!3225717))

(assert (=> d!812720 m!3225717))

(declare-fun m!3225719 () Bool)

(assert (=> d!812720 m!3225719))

(declare-fun m!3225721 () Bool)

(assert (=> d!812720 m!3225721))

(assert (=> d!812720 m!3225721))

(assert (=> b!2795838 d!812720))

(declare-fun d!812722 () Bool)

(assert (=> d!812722 (= testedSuffix!143 lt!998867)))

(declare-fun lt!998901 () Unit!46592)

(declare-fun choose!16441 (List!32542 List!32542 List!32542 List!32542 List!32542) Unit!46592)

(assert (=> d!812722 (= lt!998901 (choose!16441 testedP!183 testedSuffix!143 testedP!183 lt!998867 lt!998865))))

(assert (=> d!812722 (isPrefix!2619 testedP!183 lt!998865)))

(assert (=> d!812722 (= (lemmaSamePrefixThenSameSuffix!1194 testedP!183 testedSuffix!143 testedP!183 lt!998867 lt!998865) lt!998901)))

(declare-fun bs!515014 () Bool)

(assert (= bs!515014 d!812722))

(declare-fun m!3225723 () Bool)

(assert (=> bs!515014 m!3225723))

(assert (=> bs!515014 m!3225639))

(assert (=> b!2795838 d!812722))

(declare-fun d!812724 () Bool)

(declare-fun lt!998904 () List!32542)

(assert (=> d!812724 (= (++!8006 testedP!183 lt!998904) lt!998865)))

(declare-fun e!1765742 () List!32542)

(assert (=> d!812724 (= lt!998904 e!1765742)))

(declare-fun c!453611 () Bool)

(assert (=> d!812724 (= c!453611 ((_ is Cons!32442) testedP!183))))

(assert (=> d!812724 (>= (size!25291 lt!998865) (size!25291 testedP!183))))

(assert (=> d!812724 (= (getSuffix!1296 lt!998865 testedP!183) lt!998904)))

(declare-fun b!2795879 () Bool)

(declare-fun tail!4419 (List!32542) List!32542)

(assert (=> b!2795879 (= e!1765742 (getSuffix!1296 (tail!4419 lt!998865) (t!228702 testedP!183)))))

(declare-fun b!2795880 () Bool)

(assert (=> b!2795880 (= e!1765742 lt!998865)))

(assert (= (and d!812724 c!453611) b!2795879))

(assert (= (and d!812724 (not c!453611)) b!2795880))

(declare-fun m!3225725 () Bool)

(assert (=> d!812724 m!3225725))

(assert (=> d!812724 m!3225631))

(assert (=> d!812724 m!3225637))

(declare-fun m!3225727 () Bool)

(assert (=> b!2795879 m!3225727))

(assert (=> b!2795879 m!3225727))

(declare-fun m!3225729 () Bool)

(assert (=> b!2795879 m!3225729))

(assert (=> b!2795838 d!812724))

(declare-fun d!812726 () Bool)

(declare-fun e!1765749 () Bool)

(assert (=> d!812726 e!1765749))

(declare-fun res!1165600 () Bool)

(assert (=> d!812726 (=> res!1165600 e!1765749)))

(declare-fun lt!998907 () Bool)

(assert (=> d!812726 (= res!1165600 (not lt!998907))))

(declare-fun e!1765751 () Bool)

(assert (=> d!812726 (= lt!998907 e!1765751)))

(declare-fun res!1165598 () Bool)

(assert (=> d!812726 (=> res!1165598 e!1765751)))

(assert (=> d!812726 (= res!1165598 ((_ is Nil!32442) testedP!183))))

(assert (=> d!812726 (= (isPrefix!2619 testedP!183 lt!998865) lt!998907)))

(declare-fun b!2795889 () Bool)

(declare-fun e!1765750 () Bool)

(assert (=> b!2795889 (= e!1765751 e!1765750)))

(declare-fun res!1165599 () Bool)

(assert (=> b!2795889 (=> (not res!1165599) (not e!1765750))))

(assert (=> b!2795889 (= res!1165599 (not ((_ is Nil!32442) lt!998865)))))

(declare-fun b!2795891 () Bool)

(assert (=> b!2795891 (= e!1765750 (isPrefix!2619 (tail!4419 testedP!183) (tail!4419 lt!998865)))))

(declare-fun b!2795892 () Bool)

(assert (=> b!2795892 (= e!1765749 (>= (size!25291 lt!998865) (size!25291 testedP!183)))))

(declare-fun b!2795890 () Bool)

(declare-fun res!1165597 () Bool)

(assert (=> b!2795890 (=> (not res!1165597) (not e!1765750))))

(declare-fun head!6188 (List!32542) C!16548)

(assert (=> b!2795890 (= res!1165597 (= (head!6188 testedP!183) (head!6188 lt!998865)))))

(assert (= (and d!812726 (not res!1165598)) b!2795889))

(assert (= (and b!2795889 res!1165599) b!2795890))

(assert (= (and b!2795890 res!1165597) b!2795891))

(assert (= (and d!812726 (not res!1165600)) b!2795892))

(declare-fun m!3225731 () Bool)

(assert (=> b!2795891 m!3225731))

(assert (=> b!2795891 m!3225727))

(assert (=> b!2795891 m!3225731))

(assert (=> b!2795891 m!3225727))

(declare-fun m!3225733 () Bool)

(assert (=> b!2795891 m!3225733))

(assert (=> b!2795892 m!3225631))

(assert (=> b!2795892 m!3225637))

(declare-fun m!3225735 () Bool)

(assert (=> b!2795890 m!3225735))

(declare-fun m!3225737 () Bool)

(assert (=> b!2795890 m!3225737))

(assert (=> b!2795837 d!812726))

(declare-fun d!812728 () Bool)

(declare-fun e!1765752 () Bool)

(assert (=> d!812728 e!1765752))

(declare-fun res!1165604 () Bool)

(assert (=> d!812728 (=> res!1165604 e!1765752)))

(declare-fun lt!998908 () Bool)

(assert (=> d!812728 (= res!1165604 (not lt!998908))))

(declare-fun e!1765754 () Bool)

(assert (=> d!812728 (= lt!998908 e!1765754)))

(declare-fun res!1165602 () Bool)

(assert (=> d!812728 (=> res!1165602 e!1765754)))

(assert (=> d!812728 (= res!1165602 ((_ is Nil!32442) testedP!183))))

(assert (=> d!812728 (= (isPrefix!2619 testedP!183 lt!998862) lt!998908)))

(declare-fun b!2795893 () Bool)

(declare-fun e!1765753 () Bool)

(assert (=> b!2795893 (= e!1765754 e!1765753)))

(declare-fun res!1165603 () Bool)

(assert (=> b!2795893 (=> (not res!1165603) (not e!1765753))))

(assert (=> b!2795893 (= res!1165603 (not ((_ is Nil!32442) lt!998862)))))

(declare-fun b!2795895 () Bool)

(assert (=> b!2795895 (= e!1765753 (isPrefix!2619 (tail!4419 testedP!183) (tail!4419 lt!998862)))))

(declare-fun b!2795896 () Bool)

(assert (=> b!2795896 (= e!1765752 (>= (size!25291 lt!998862) (size!25291 testedP!183)))))

(declare-fun b!2795894 () Bool)

(declare-fun res!1165601 () Bool)

(assert (=> b!2795894 (=> (not res!1165601) (not e!1765753))))

(assert (=> b!2795894 (= res!1165601 (= (head!6188 testedP!183) (head!6188 lt!998862)))))

(assert (= (and d!812728 (not res!1165602)) b!2795893))

(assert (= (and b!2795893 res!1165603) b!2795894))

(assert (= (and b!2795894 res!1165601) b!2795895))

(assert (= (and d!812728 (not res!1165604)) b!2795896))

(assert (=> b!2795895 m!3225731))

(declare-fun m!3225739 () Bool)

(assert (=> b!2795895 m!3225739))

(assert (=> b!2795895 m!3225731))

(assert (=> b!2795895 m!3225739))

(declare-fun m!3225741 () Bool)

(assert (=> b!2795895 m!3225741))

(declare-fun m!3225743 () Bool)

(assert (=> b!2795896 m!3225743))

(assert (=> b!2795896 m!3225637))

(assert (=> b!2795894 m!3225735))

(declare-fun m!3225745 () Bool)

(assert (=> b!2795894 m!3225745))

(assert (=> b!2795837 d!812728))

(declare-fun d!812730 () Bool)

(assert (=> d!812730 (isPrefix!2619 testedP!183 (++!8006 testedP!183 testedSuffix!143))))

(declare-fun lt!998911 () Unit!46592)

(declare-fun choose!16442 (List!32542 List!32542) Unit!46592)

(assert (=> d!812730 (= lt!998911 (choose!16442 testedP!183 testedSuffix!143))))

(assert (=> d!812730 (= (lemmaConcatTwoListThenFirstIsPrefix!1727 testedP!183 testedSuffix!143) lt!998911)))

(declare-fun bs!515015 () Bool)

(assert (= bs!515015 d!812730))

(assert (=> bs!515015 m!3225675))

(assert (=> bs!515015 m!3225675))

(declare-fun m!3225747 () Bool)

(assert (=> bs!515015 m!3225747))

(declare-fun m!3225749 () Bool)

(assert (=> bs!515015 m!3225749))

(assert (=> b!2795837 d!812730))

(declare-fun d!812732 () Bool)

(declare-fun lt!998914 () Int)

(assert (=> d!812732 (>= lt!998914 0)))

(declare-fun e!1765757 () Int)

(assert (=> d!812732 (= lt!998914 e!1765757)))

(declare-fun c!453614 () Bool)

(assert (=> d!812732 (= c!453614 ((_ is Nil!32442) lt!998865))))

(assert (=> d!812732 (= (size!25291 lt!998865) lt!998914)))

(declare-fun b!2795901 () Bool)

(assert (=> b!2795901 (= e!1765757 0)))

(declare-fun b!2795902 () Bool)

(assert (=> b!2795902 (= e!1765757 (+ 1 (size!25291 (t!228702 lt!998865))))))

(assert (= (and d!812732 c!453614) b!2795901))

(assert (= (and d!812732 (not c!453614)) b!2795902))

(declare-fun m!3225751 () Bool)

(assert (=> b!2795902 m!3225751))

(assert (=> b!2795827 d!812732))

(declare-fun d!812734 () Bool)

(declare-fun e!1765758 () Bool)

(assert (=> d!812734 e!1765758))

(declare-fun res!1165608 () Bool)

(assert (=> d!812734 (=> res!1165608 e!1765758)))

(declare-fun lt!998915 () Bool)

(assert (=> d!812734 (= res!1165608 (not lt!998915))))

(declare-fun e!1765760 () Bool)

(assert (=> d!812734 (= lt!998915 e!1765760)))

(declare-fun res!1165606 () Bool)

(assert (=> d!812734 (=> res!1165606 e!1765760)))

(assert (=> d!812734 (= res!1165606 ((_ is Nil!32442) lt!998865))))

(assert (=> d!812734 (= (isPrefix!2619 lt!998865 lt!998865) lt!998915)))

(declare-fun b!2795903 () Bool)

(declare-fun e!1765759 () Bool)

(assert (=> b!2795903 (= e!1765760 e!1765759)))

(declare-fun res!1165607 () Bool)

(assert (=> b!2795903 (=> (not res!1165607) (not e!1765759))))

(assert (=> b!2795903 (= res!1165607 (not ((_ is Nil!32442) lt!998865)))))

(declare-fun b!2795905 () Bool)

(assert (=> b!2795905 (= e!1765759 (isPrefix!2619 (tail!4419 lt!998865) (tail!4419 lt!998865)))))

(declare-fun b!2795906 () Bool)

(assert (=> b!2795906 (= e!1765758 (>= (size!25291 lt!998865) (size!25291 lt!998865)))))

(declare-fun b!2795904 () Bool)

(declare-fun res!1165605 () Bool)

(assert (=> b!2795904 (=> (not res!1165605) (not e!1765759))))

(assert (=> b!2795904 (= res!1165605 (= (head!6188 lt!998865) (head!6188 lt!998865)))))

(assert (= (and d!812734 (not res!1165606)) b!2795903))

(assert (= (and b!2795903 res!1165607) b!2795904))

(assert (= (and b!2795904 res!1165605) b!2795905))

(assert (= (and d!812734 (not res!1165608)) b!2795906))

(assert (=> b!2795905 m!3225727))

(assert (=> b!2795905 m!3225727))

(assert (=> b!2795905 m!3225727))

(assert (=> b!2795905 m!3225727))

(declare-fun m!3225753 () Bool)

(assert (=> b!2795905 m!3225753))

(assert (=> b!2795906 m!3225631))

(assert (=> b!2795906 m!3225631))

(assert (=> b!2795904 m!3225737))

(assert (=> b!2795904 m!3225737))

(assert (=> b!2795827 d!812734))

(declare-fun d!812736 () Bool)

(assert (=> d!812736 (isPrefix!2619 lt!998865 lt!998865)))

(declare-fun lt!998918 () Unit!46592)

(declare-fun choose!16443 (List!32542 List!32542) Unit!46592)

(assert (=> d!812736 (= lt!998918 (choose!16443 lt!998865 lt!998865))))

(assert (=> d!812736 (= (lemmaIsPrefixRefl!1708 lt!998865 lt!998865) lt!998918)))

(declare-fun bs!515016 () Bool)

(assert (= bs!515016 d!812736))

(assert (=> bs!515016 m!3225633))

(declare-fun m!3225755 () Bool)

(assert (=> bs!515016 m!3225755))

(assert (=> b!2795827 d!812736))

(declare-fun d!812738 () Bool)

(declare-fun lt!998919 () Int)

(assert (=> d!812738 (>= lt!998919 0)))

(declare-fun e!1765761 () Int)

(assert (=> d!812738 (= lt!998919 e!1765761)))

(declare-fun c!453615 () Bool)

(assert (=> d!812738 (= c!453615 ((_ is Nil!32442) testedP!183))))

(assert (=> d!812738 (= (size!25291 testedP!183) lt!998919)))

(declare-fun b!2795907 () Bool)

(assert (=> b!2795907 (= e!1765761 0)))

(declare-fun b!2795908 () Bool)

(assert (=> b!2795908 (= e!1765761 (+ 1 (size!25291 (t!228702 testedP!183))))))

(assert (= (and d!812738 c!453615) b!2795907))

(assert (= (and d!812738 (not c!453615)) b!2795908))

(declare-fun m!3225757 () Bool)

(assert (=> b!2795908 m!3225757))

(assert (=> b!2795848 d!812738))

(declare-fun d!812740 () Bool)

(assert (=> d!812740 (= (array_inv!4518 (_keys!4284 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))) (bvsge (size!25289 (_keys!4284 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2795839 d!812740))

(declare-fun d!812742 () Bool)

(assert (=> d!812742 (= (array_inv!4520 (_values!4265 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))) (bvsge (size!25292 (_values!4265 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2795839 d!812742))

(declare-fun d!812744 () Bool)

(assert (=> d!812744 (= (array_inv!4518 (_keys!4283 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))) (bvsge (size!25289 (_keys!4283 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2795833 d!812744))

(declare-fun d!812746 () Bool)

(assert (=> d!812746 (= (array_inv!4519 (_values!4264 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))) (bvsge (size!25290 (_values!4264 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2795833 d!812746))

(declare-fun d!812748 () Bool)

(declare-fun c!453618 () Bool)

(assert (=> d!812748 (= c!453618 ((_ is Node!10057) (c!453593 totalInput!758)))))

(declare-fun e!1765766 () Bool)

(assert (=> d!812748 (= (inv!44070 (c!453593 totalInput!758)) e!1765766)))

(declare-fun b!2795915 () Bool)

(declare-fun inv!44075 (Conc!10057) Bool)

(assert (=> b!2795915 (= e!1765766 (inv!44075 (c!453593 totalInput!758)))))

(declare-fun b!2795916 () Bool)

(declare-fun e!1765767 () Bool)

(assert (=> b!2795916 (= e!1765766 e!1765767)))

(declare-fun res!1165611 () Bool)

(assert (=> b!2795916 (= res!1165611 (not ((_ is Leaf!15323) (c!453593 totalInput!758))))))

(assert (=> b!2795916 (=> res!1165611 e!1765767)))

(declare-fun b!2795917 () Bool)

(declare-fun inv!44076 (Conc!10057) Bool)

(assert (=> b!2795917 (= e!1765767 (inv!44076 (c!453593 totalInput!758)))))

(assert (= (and d!812748 c!453618) b!2795915))

(assert (= (and d!812748 (not c!453618)) b!2795916))

(assert (= (and b!2795916 (not res!1165611)) b!2795917))

(declare-fun m!3225759 () Bool)

(assert (=> b!2795915 m!3225759))

(declare-fun m!3225761 () Bool)

(assert (=> b!2795917 m!3225761))

(assert (=> b!2795831 d!812748))

(declare-fun b!2795922 () Bool)

(declare-fun e!1765770 () Bool)

(declare-fun tp!889525 () Bool)

(assert (=> b!2795922 (= e!1765770 (and tp_is_empty!14203 tp!889525))))

(assert (=> b!2795836 (= tp!889516 e!1765770)))

(assert (= (and b!2795836 ((_ is Cons!32442) (t!228702 testedP!183))) b!2795922))

(declare-fun condSetEmpty!24188 () Bool)

(assert (=> setNonEmpty!24185 (= condSetEmpty!24188 (= setRest!24185 ((as const (Array Context!4826 Bool)) false)))))

(declare-fun setRes!24188 () Bool)

(assert (=> setNonEmpty!24185 (= tp!889519 setRes!24188)))

(declare-fun setIsEmpty!24188 () Bool)

(assert (=> setIsEmpty!24188 setRes!24188))

(declare-fun tp!889530 () Bool)

(declare-fun setElem!24188 () Context!4826)

(declare-fun e!1765773 () Bool)

(declare-fun setNonEmpty!24188 () Bool)

(assert (=> setNonEmpty!24188 (= setRes!24188 (and tp!889530 (inv!44071 setElem!24188) e!1765773))))

(declare-fun setRest!24188 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24188 (= setRest!24185 ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24188 true) setRest!24188))))

(declare-fun b!2795927 () Bool)

(declare-fun tp!889531 () Bool)

(assert (=> b!2795927 (= e!1765773 tp!889531)))

(assert (= (and setNonEmpty!24185 condSetEmpty!24188) setIsEmpty!24188))

(assert (= (and setNonEmpty!24185 (not condSetEmpty!24188)) setNonEmpty!24188))

(assert (= setNonEmpty!24188 b!2795927))

(declare-fun m!3225763 () Bool)

(assert (=> setNonEmpty!24188 m!3225763))

(declare-fun b!2795928 () Bool)

(declare-fun e!1765774 () Bool)

(declare-fun tp!889532 () Bool)

(assert (=> b!2795928 (= e!1765774 (and tp_is_empty!14203 tp!889532))))

(assert (=> b!2795834 (= tp!889518 e!1765774)))

(assert (= (and b!2795834 ((_ is Cons!32442) (t!228702 testedSuffix!143))) b!2795928))

(declare-fun b!2795933 () Bool)

(declare-fun e!1765777 () Bool)

(declare-fun tp!889537 () Bool)

(declare-fun tp!889538 () Bool)

(assert (=> b!2795933 (= e!1765777 (and tp!889537 tp!889538))))

(assert (=> b!2795846 (= tp!889504 e!1765777)))

(assert (= (and b!2795846 ((_ is Cons!32443) (exprs!2913 setElem!24185))) b!2795933))

(declare-fun b!2795948 () Bool)

(declare-fun e!1765795 () Bool)

(declare-fun tp!889557 () Bool)

(assert (=> b!2795948 (= e!1765795 tp!889557)))

(declare-fun mapIsEmpty!18127 () Bool)

(declare-fun mapRes!18127 () Bool)

(assert (=> mapIsEmpty!18127 mapRes!18127))

(declare-fun setIsEmpty!24193 () Bool)

(declare-fun setRes!24194 () Bool)

(assert (=> setIsEmpty!24193 setRes!24194))

(declare-fun setIsEmpty!24194 () Bool)

(declare-fun setRes!24193 () Bool)

(assert (=> setIsEmpty!24194 setRes!24193))

(declare-fun b!2795949 () Bool)

(declare-fun e!1765793 () Bool)

(declare-fun tp!889562 () Bool)

(assert (=> b!2795949 (= e!1765793 tp!889562)))

(declare-fun condMapEmpty!18127 () Bool)

(declare-fun mapDefault!18127 () List!32545)

(assert (=> mapNonEmpty!18124 (= condMapEmpty!18127 (= mapRest!18124 ((as const (Array (_ BitVec 32) List!32545)) mapDefault!18127)))))

(declare-fun e!1765791 () Bool)

(assert (=> mapNonEmpty!18124 (= tp!889517 (and e!1765791 mapRes!18127))))

(declare-fun setElem!24193 () Context!4826)

(declare-fun setNonEmpty!24193 () Bool)

(declare-fun tp!889564 () Bool)

(declare-fun e!1765790 () Bool)

(assert (=> setNonEmpty!24193 (= setRes!24193 (and tp!889564 (inv!44071 setElem!24193) e!1765790))))

(declare-fun setRest!24193 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24193 (= (_2!19517 (h!37865 mapDefault!18127)) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24193 true) setRest!24193))))

(declare-fun b!2795950 () Bool)

(declare-fun e!1765792 () Bool)

(declare-fun tp!889558 () Bool)

(assert (=> b!2795950 (= e!1765792 tp!889558)))

(declare-fun b!2795951 () Bool)

(declare-fun tp!889565 () Bool)

(assert (=> b!2795951 (= e!1765791 (and (inv!44071 (_1!19516 (_1!19517 (h!37865 mapDefault!18127)))) e!1765792 tp_is_empty!14203 setRes!24193 tp!889565))))

(declare-fun condSetEmpty!24194 () Bool)

(assert (=> b!2795951 (= condSetEmpty!24194 (= (_2!19517 (h!37865 mapDefault!18127)) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun setElem!24194 () Context!4826)

(declare-fun tp!889559 () Bool)

(declare-fun setNonEmpty!24194 () Bool)

(assert (=> setNonEmpty!24194 (= setRes!24194 (and tp!889559 (inv!44071 setElem!24194) e!1765793))))

(declare-fun mapValue!18127 () List!32545)

(declare-fun setRest!24194 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24194 (= (_2!19517 (h!37865 mapValue!18127)) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24194 true) setRest!24194))))

(declare-fun b!2795952 () Bool)

(declare-fun tp!889560 () Bool)

(declare-fun e!1765794 () Bool)

(assert (=> b!2795952 (= e!1765794 (and (inv!44071 (_1!19516 (_1!19517 (h!37865 mapValue!18127)))) e!1765795 tp_is_empty!14203 setRes!24194 tp!889560))))

(declare-fun condSetEmpty!24193 () Bool)

(assert (=> b!2795952 (= condSetEmpty!24193 (= (_2!19517 (h!37865 mapValue!18127)) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun b!2795953 () Bool)

(declare-fun tp!889563 () Bool)

(assert (=> b!2795953 (= e!1765790 tp!889563)))

(declare-fun mapNonEmpty!18127 () Bool)

(declare-fun tp!889561 () Bool)

(assert (=> mapNonEmpty!18127 (= mapRes!18127 (and tp!889561 e!1765794))))

(declare-fun mapKey!18127 () (_ BitVec 32))

(declare-fun mapRest!18127 () (Array (_ BitVec 32) List!32545))

(assert (=> mapNonEmpty!18127 (= mapRest!18124 (store mapRest!18127 mapKey!18127 mapValue!18127))))

(assert (= (and mapNonEmpty!18124 condMapEmpty!18127) mapIsEmpty!18127))

(assert (= (and mapNonEmpty!18124 (not condMapEmpty!18127)) mapNonEmpty!18127))

(assert (= b!2795952 b!2795948))

(assert (= (and b!2795952 condSetEmpty!24193) setIsEmpty!24193))

(assert (= (and b!2795952 (not condSetEmpty!24193)) setNonEmpty!24194))

(assert (= setNonEmpty!24194 b!2795949))

(assert (= (and mapNonEmpty!18127 ((_ is Cons!32445) mapValue!18127)) b!2795952))

(assert (= b!2795951 b!2795950))

(assert (= (and b!2795951 condSetEmpty!24194) setIsEmpty!24194))

(assert (= (and b!2795951 (not condSetEmpty!24194)) setNonEmpty!24193))

(assert (= setNonEmpty!24193 b!2795953))

(assert (= (and mapNonEmpty!18124 ((_ is Cons!32445) mapDefault!18127)) b!2795951))

(declare-fun m!3225765 () Bool)

(assert (=> b!2795952 m!3225765))

(declare-fun m!3225767 () Bool)

(assert (=> mapNonEmpty!18127 m!3225767))

(declare-fun m!3225769 () Bool)

(assert (=> b!2795951 m!3225769))

(declare-fun m!3225771 () Bool)

(assert (=> setNonEmpty!24194 m!3225771))

(declare-fun m!3225773 () Bool)

(assert (=> setNonEmpty!24193 m!3225773))

(declare-fun e!1765802 () Bool)

(assert (=> mapNonEmpty!18124 (= tp!889512 e!1765802)))

(declare-fun tp!889574 () Bool)

(declare-fun setRes!24197 () Bool)

(declare-fun e!1765804 () Bool)

(declare-fun b!2795962 () Bool)

(assert (=> b!2795962 (= e!1765802 (and (inv!44071 (_1!19516 (_1!19517 (h!37865 mapValue!18124)))) e!1765804 tp_is_empty!14203 setRes!24197 tp!889574))))

(declare-fun condSetEmpty!24197 () Bool)

(assert (=> b!2795962 (= condSetEmpty!24197 (= (_2!19517 (h!37865 mapValue!18124)) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun setIsEmpty!24197 () Bool)

(assert (=> setIsEmpty!24197 setRes!24197))

(declare-fun b!2795963 () Bool)

(declare-fun tp!889576 () Bool)

(assert (=> b!2795963 (= e!1765804 tp!889576)))

(declare-fun tp!889577 () Bool)

(declare-fun setElem!24197 () Context!4826)

(declare-fun e!1765803 () Bool)

(declare-fun setNonEmpty!24197 () Bool)

(assert (=> setNonEmpty!24197 (= setRes!24197 (and tp!889577 (inv!44071 setElem!24197) e!1765803))))

(declare-fun setRest!24197 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24197 (= (_2!19517 (h!37865 mapValue!18124)) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24197 true) setRest!24197))))

(declare-fun b!2795964 () Bool)

(declare-fun tp!889575 () Bool)

(assert (=> b!2795964 (= e!1765803 tp!889575)))

(assert (= b!2795962 b!2795963))

(assert (= (and b!2795962 condSetEmpty!24197) setIsEmpty!24197))

(assert (= (and b!2795962 (not condSetEmpty!24197)) setNonEmpty!24197))

(assert (= setNonEmpty!24197 b!2795964))

(assert (= (and mapNonEmpty!18124 ((_ is Cons!32445) mapValue!18124)) b!2795962))

(declare-fun m!3225775 () Bool)

(assert (=> b!2795962 m!3225775))

(declare-fun m!3225777 () Bool)

(assert (=> setNonEmpty!24197 m!3225777))

(declare-fun setIsEmpty!24202 () Bool)

(declare-fun setRes!24203 () Bool)

(assert (=> setIsEmpty!24202 setRes!24203))

(declare-fun setRes!24202 () Bool)

(declare-fun e!1765817 () Bool)

(declare-fun tp!889604 () Bool)

(declare-fun tp!889609 () Bool)

(declare-fun b!2795979 () Bool)

(declare-fun mapValue!18130 () List!32544)

(declare-fun e!1765819 () Bool)

(assert (=> b!2795979 (= e!1765819 (and tp!889609 (inv!44071 (_2!19514 (_1!19515 (h!37864 mapValue!18130)))) e!1765817 tp_is_empty!14203 setRes!24202 tp!889604))))

(declare-fun condSetEmpty!24203 () Bool)

(assert (=> b!2795979 (= condSetEmpty!24203 (= (_2!19515 (h!37864 mapValue!18130)) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun b!2795980 () Bool)

(declare-fun e!1765822 () Bool)

(declare-fun tp!889601 () Bool)

(assert (=> b!2795980 (= e!1765822 tp!889601)))

(declare-fun b!2795981 () Bool)

(declare-fun e!1765821 () Bool)

(declare-fun tp!889607 () Bool)

(assert (=> b!2795981 (= e!1765821 tp!889607)))

(declare-fun b!2795982 () Bool)

(declare-fun e!1765820 () Bool)

(declare-fun tp!889602 () Bool)

(assert (=> b!2795982 (= e!1765820 tp!889602)))

(declare-fun setIsEmpty!24203 () Bool)

(assert (=> setIsEmpty!24203 setRes!24202))

(declare-fun mapNonEmpty!18130 () Bool)

(declare-fun mapRes!18130 () Bool)

(declare-fun tp!889600 () Bool)

(assert (=> mapNonEmpty!18130 (= mapRes!18130 (and tp!889600 e!1765819))))

(declare-fun mapRest!18130 () (Array (_ BitVec 32) List!32544))

(declare-fun mapKey!18130 () (_ BitVec 32))

(assert (=> mapNonEmpty!18130 (= mapRest!18123 (store mapRest!18130 mapKey!18130 mapValue!18130))))

(declare-fun setElem!24203 () Context!4826)

(declare-fun tp!889605 () Bool)

(declare-fun setNonEmpty!24202 () Bool)

(assert (=> setNonEmpty!24202 (= setRes!24203 (and tp!889605 (inv!44071 setElem!24203) e!1765820))))

(declare-fun mapDefault!18130 () List!32544)

(declare-fun setRest!24202 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24202 (= (_2!19515 (h!37864 mapDefault!18130)) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24203 true) setRest!24202))))

(declare-fun condMapEmpty!18130 () Bool)

(assert (=> mapNonEmpty!18123 (= condMapEmpty!18130 (= mapRest!18123 ((as const (Array (_ BitVec 32) List!32544)) mapDefault!18130)))))

(declare-fun e!1765818 () Bool)

(assert (=> mapNonEmpty!18123 (= tp!889520 (and e!1765818 mapRes!18130))))

(declare-fun setElem!24202 () Context!4826)

(declare-fun setNonEmpty!24203 () Bool)

(declare-fun tp!889610 () Bool)

(assert (=> setNonEmpty!24203 (= setRes!24202 (and tp!889610 (inv!44071 setElem!24202) e!1765821))))

(declare-fun setRest!24203 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24203 (= (_2!19515 (h!37864 mapValue!18130)) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24202 true) setRest!24203))))

(declare-fun tp!889606 () Bool)

(declare-fun tp!889603 () Bool)

(declare-fun b!2795983 () Bool)

(assert (=> b!2795983 (= e!1765818 (and tp!889606 (inv!44071 (_2!19514 (_1!19515 (h!37864 mapDefault!18130)))) e!1765822 tp_is_empty!14203 setRes!24203 tp!889603))))

(declare-fun condSetEmpty!24202 () Bool)

(assert (=> b!2795983 (= condSetEmpty!24202 (= (_2!19515 (h!37864 mapDefault!18130)) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun b!2795984 () Bool)

(declare-fun tp!889608 () Bool)

(assert (=> b!2795984 (= e!1765817 tp!889608)))

(declare-fun mapIsEmpty!18130 () Bool)

(assert (=> mapIsEmpty!18130 mapRes!18130))

(assert (= (and mapNonEmpty!18123 condMapEmpty!18130) mapIsEmpty!18130))

(assert (= (and mapNonEmpty!18123 (not condMapEmpty!18130)) mapNonEmpty!18130))

(assert (= b!2795979 b!2795984))

(assert (= (and b!2795979 condSetEmpty!24203) setIsEmpty!24203))

(assert (= (and b!2795979 (not condSetEmpty!24203)) setNonEmpty!24203))

(assert (= setNonEmpty!24203 b!2795981))

(assert (= (and mapNonEmpty!18130 ((_ is Cons!32444) mapValue!18130)) b!2795979))

(assert (= b!2795983 b!2795980))

(assert (= (and b!2795983 condSetEmpty!24202) setIsEmpty!24202))

(assert (= (and b!2795983 (not condSetEmpty!24202)) setNonEmpty!24202))

(assert (= setNonEmpty!24202 b!2795982))

(assert (= (and mapNonEmpty!18123 ((_ is Cons!32444) mapDefault!18130)) b!2795983))

(declare-fun m!3225779 () Bool)

(assert (=> mapNonEmpty!18130 m!3225779))

(declare-fun m!3225781 () Bool)

(assert (=> setNonEmpty!24203 m!3225781))

(declare-fun m!3225783 () Bool)

(assert (=> b!2795983 m!3225783))

(declare-fun m!3225785 () Bool)

(assert (=> b!2795979 m!3225785))

(declare-fun m!3225787 () Bool)

(assert (=> setNonEmpty!24202 m!3225787))

(declare-fun b!2795993 () Bool)

(declare-fun e!1765830 () Bool)

(declare-fun tp!889625 () Bool)

(declare-fun setRes!24206 () Bool)

(declare-fun tp!889622 () Bool)

(declare-fun e!1765829 () Bool)

(assert (=> b!2795993 (= e!1765829 (and tp!889622 (inv!44071 (_2!19514 (_1!19515 (h!37864 mapValue!18123)))) e!1765830 tp_is_empty!14203 setRes!24206 tp!889625))))

(declare-fun condSetEmpty!24206 () Bool)

(assert (=> b!2795993 (= condSetEmpty!24206 (= (_2!19515 (h!37864 mapValue!18123)) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun b!2795994 () Bool)

(declare-fun tp!889621 () Bool)

(assert (=> b!2795994 (= e!1765830 tp!889621)))

(declare-fun setIsEmpty!24206 () Bool)

(assert (=> setIsEmpty!24206 setRes!24206))

(declare-fun b!2795995 () Bool)

(declare-fun e!1765831 () Bool)

(declare-fun tp!889624 () Bool)

(assert (=> b!2795995 (= e!1765831 tp!889624)))

(declare-fun setElem!24206 () Context!4826)

(declare-fun setNonEmpty!24206 () Bool)

(declare-fun tp!889623 () Bool)

(assert (=> setNonEmpty!24206 (= setRes!24206 (and tp!889623 (inv!44071 setElem!24206) e!1765831))))

(declare-fun setRest!24206 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24206 (= (_2!19515 (h!37864 mapValue!18123)) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24206 true) setRest!24206))))

(assert (=> mapNonEmpty!18123 (= tp!889522 e!1765829)))

(assert (= b!2795993 b!2795994))

(assert (= (and b!2795993 condSetEmpty!24206) setIsEmpty!24206))

(assert (= (and b!2795993 (not condSetEmpty!24206)) setNonEmpty!24206))

(assert (= setNonEmpty!24206 b!2795995))

(assert (= (and mapNonEmpty!18123 ((_ is Cons!32444) mapValue!18123)) b!2795993))

(declare-fun m!3225789 () Bool)

(assert (=> b!2795993 m!3225789))

(declare-fun m!3225791 () Bool)

(assert (=> setNonEmpty!24206 m!3225791))

(declare-fun e!1765832 () Bool)

(assert (=> b!2795839 (= tp!889515 e!1765832)))

(declare-fun setRes!24207 () Bool)

(declare-fun b!2795996 () Bool)

(declare-fun tp!889626 () Bool)

(declare-fun e!1765834 () Bool)

(assert (=> b!2795996 (= e!1765832 (and (inv!44071 (_1!19516 (_1!19517 (h!37865 (zeroValue!4243 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890)))))))))) e!1765834 tp_is_empty!14203 setRes!24207 tp!889626))))

(declare-fun condSetEmpty!24207 () Bool)

(assert (=> b!2795996 (= condSetEmpty!24207 (= (_2!19517 (h!37865 (zeroValue!4243 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890)))))))) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun setIsEmpty!24207 () Bool)

(assert (=> setIsEmpty!24207 setRes!24207))

(declare-fun b!2795997 () Bool)

(declare-fun tp!889628 () Bool)

(assert (=> b!2795997 (= e!1765834 tp!889628)))

(declare-fun e!1765833 () Bool)

(declare-fun setNonEmpty!24207 () Bool)

(declare-fun tp!889629 () Bool)

(declare-fun setElem!24207 () Context!4826)

(assert (=> setNonEmpty!24207 (= setRes!24207 (and tp!889629 (inv!44071 setElem!24207) e!1765833))))

(declare-fun setRest!24207 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24207 (= (_2!19517 (h!37865 (zeroValue!4243 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24207 true) setRest!24207))))

(declare-fun b!2795998 () Bool)

(declare-fun tp!889627 () Bool)

(assert (=> b!2795998 (= e!1765833 tp!889627)))

(assert (= b!2795996 b!2795997))

(assert (= (and b!2795996 condSetEmpty!24207) setIsEmpty!24207))

(assert (= (and b!2795996 (not condSetEmpty!24207)) setNonEmpty!24207))

(assert (= setNonEmpty!24207 b!2795998))

(assert (= (and b!2795839 ((_ is Cons!32445) (zeroValue!4243 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890)))))))) b!2795996))

(declare-fun m!3225793 () Bool)

(assert (=> b!2795996 m!3225793))

(declare-fun m!3225795 () Bool)

(assert (=> setNonEmpty!24207 m!3225795))

(declare-fun e!1765835 () Bool)

(assert (=> b!2795839 (= tp!889510 e!1765835)))

(declare-fun e!1765837 () Bool)

(declare-fun tp!889630 () Bool)

(declare-fun setRes!24208 () Bool)

(declare-fun b!2795999 () Bool)

(assert (=> b!2795999 (= e!1765835 (and (inv!44071 (_1!19516 (_1!19517 (h!37865 (minValue!4243 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890)))))))))) e!1765837 tp_is_empty!14203 setRes!24208 tp!889630))))

(declare-fun condSetEmpty!24208 () Bool)

(assert (=> b!2795999 (= condSetEmpty!24208 (= (_2!19517 (h!37865 (minValue!4243 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890)))))))) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun setIsEmpty!24208 () Bool)

(assert (=> setIsEmpty!24208 setRes!24208))

(declare-fun b!2796000 () Bool)

(declare-fun tp!889632 () Bool)

(assert (=> b!2796000 (= e!1765837 tp!889632)))

(declare-fun e!1765836 () Bool)

(declare-fun setElem!24208 () Context!4826)

(declare-fun setNonEmpty!24208 () Bool)

(declare-fun tp!889633 () Bool)

(assert (=> setNonEmpty!24208 (= setRes!24208 (and tp!889633 (inv!44071 setElem!24208) e!1765836))))

(declare-fun setRest!24208 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24208 (= (_2!19517 (h!37865 (minValue!4243 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24208 true) setRest!24208))))

(declare-fun b!2796001 () Bool)

(declare-fun tp!889631 () Bool)

(assert (=> b!2796001 (= e!1765836 tp!889631)))

(assert (= b!2795999 b!2796000))

(assert (= (and b!2795999 condSetEmpty!24208) setIsEmpty!24208))

(assert (= (and b!2795999 (not condSetEmpty!24208)) setNonEmpty!24208))

(assert (= setNonEmpty!24208 b!2796001))

(assert (= (and b!2795839 ((_ is Cons!32445) (minValue!4243 (v!34046 (underlying!8171 (v!34047 (underlying!8172 (cache!4033 cacheUp!890)))))))) b!2795999))

(declare-fun m!3225797 () Bool)

(assert (=> b!2795999 m!3225797))

(declare-fun m!3225799 () Bool)

(assert (=> setNonEmpty!24208 m!3225799))

(declare-fun e!1765838 () Bool)

(declare-fun b!2796002 () Bool)

(declare-fun e!1765839 () Bool)

(declare-fun tp!889635 () Bool)

(declare-fun setRes!24209 () Bool)

(declare-fun tp!889638 () Bool)

(assert (=> b!2796002 (= e!1765838 (and tp!889635 (inv!44071 (_2!19514 (_1!19515 (h!37864 (zeroValue!4242 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009)))))))))) e!1765839 tp_is_empty!14203 setRes!24209 tp!889638))))

(declare-fun condSetEmpty!24209 () Bool)

(assert (=> b!2796002 (= condSetEmpty!24209 (= (_2!19515 (h!37864 (zeroValue!4242 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009)))))))) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun b!2796003 () Bool)

(declare-fun tp!889634 () Bool)

(assert (=> b!2796003 (= e!1765839 tp!889634)))

(declare-fun setIsEmpty!24209 () Bool)

(assert (=> setIsEmpty!24209 setRes!24209))

(declare-fun b!2796004 () Bool)

(declare-fun e!1765840 () Bool)

(declare-fun tp!889637 () Bool)

(assert (=> b!2796004 (= e!1765840 tp!889637)))

(declare-fun setElem!24209 () Context!4826)

(declare-fun setNonEmpty!24209 () Bool)

(declare-fun tp!889636 () Bool)

(assert (=> setNonEmpty!24209 (= setRes!24209 (and tp!889636 (inv!44071 setElem!24209) e!1765840))))

(declare-fun setRest!24209 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24209 (= (_2!19515 (h!37864 (zeroValue!4242 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24209 true) setRest!24209))))

(assert (=> b!2795833 (= tp!889505 e!1765838)))

(assert (= b!2796002 b!2796003))

(assert (= (and b!2796002 condSetEmpty!24209) setIsEmpty!24209))

(assert (= (and b!2796002 (not condSetEmpty!24209)) setNonEmpty!24209))

(assert (= setNonEmpty!24209 b!2796004))

(assert (= (and b!2795833 ((_ is Cons!32444) (zeroValue!4242 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009)))))))) b!2796002))

(declare-fun m!3225801 () Bool)

(assert (=> b!2796002 m!3225801))

(declare-fun m!3225803 () Bool)

(assert (=> setNonEmpty!24209 m!3225803))

(declare-fun b!2796005 () Bool)

(declare-fun tp!889640 () Bool)

(declare-fun tp!889643 () Bool)

(declare-fun e!1765842 () Bool)

(declare-fun setRes!24210 () Bool)

(declare-fun e!1765841 () Bool)

(assert (=> b!2796005 (= e!1765841 (and tp!889640 (inv!44071 (_2!19514 (_1!19515 (h!37864 (minValue!4242 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009)))))))))) e!1765842 tp_is_empty!14203 setRes!24210 tp!889643))))

(declare-fun condSetEmpty!24210 () Bool)

(assert (=> b!2796005 (= condSetEmpty!24210 (= (_2!19515 (h!37864 (minValue!4242 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009)))))))) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun b!2796006 () Bool)

(declare-fun tp!889639 () Bool)

(assert (=> b!2796006 (= e!1765842 tp!889639)))

(declare-fun setIsEmpty!24210 () Bool)

(assert (=> setIsEmpty!24210 setRes!24210))

(declare-fun b!2796007 () Bool)

(declare-fun e!1765843 () Bool)

(declare-fun tp!889642 () Bool)

(assert (=> b!2796007 (= e!1765843 tp!889642)))

(declare-fun tp!889641 () Bool)

(declare-fun setNonEmpty!24210 () Bool)

(declare-fun setElem!24210 () Context!4826)

(assert (=> setNonEmpty!24210 (= setRes!24210 (and tp!889641 (inv!44071 setElem!24210) e!1765843))))

(declare-fun setRest!24210 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24210 (= (_2!19515 (h!37864 (minValue!4242 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24210 true) setRest!24210))))

(assert (=> b!2795833 (= tp!889521 e!1765841)))

(assert (= b!2796005 b!2796006))

(assert (= (and b!2796005 condSetEmpty!24210) setIsEmpty!24210))

(assert (= (and b!2796005 (not condSetEmpty!24210)) setNonEmpty!24210))

(assert (= setNonEmpty!24210 b!2796007))

(assert (= (and b!2795833 ((_ is Cons!32444) (minValue!4242 (v!34044 (underlying!8169 (v!34045 (underlying!8170 (cache!4032 cacheDown!1009)))))))) b!2796005))

(declare-fun m!3225805 () Bool)

(assert (=> b!2796005 m!3225805))

(declare-fun m!3225807 () Bool)

(assert (=> setNonEmpty!24210 m!3225807))

(declare-fun e!1765845 () Bool)

(declare-fun b!2796008 () Bool)

(declare-fun tp!889648 () Bool)

(declare-fun tp!889645 () Bool)

(declare-fun setRes!24211 () Bool)

(declare-fun e!1765844 () Bool)

(assert (=> b!2796008 (= e!1765844 (and tp!889645 (inv!44071 (_2!19514 (_1!19515 (h!37864 mapDefault!18123)))) e!1765845 tp_is_empty!14203 setRes!24211 tp!889648))))

(declare-fun condSetEmpty!24211 () Bool)

(assert (=> b!2796008 (= condSetEmpty!24211 (= (_2!19515 (h!37864 mapDefault!18123)) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun b!2796009 () Bool)

(declare-fun tp!889644 () Bool)

(assert (=> b!2796009 (= e!1765845 tp!889644)))

(declare-fun setIsEmpty!24211 () Bool)

(assert (=> setIsEmpty!24211 setRes!24211))

(declare-fun b!2796010 () Bool)

(declare-fun e!1765846 () Bool)

(declare-fun tp!889647 () Bool)

(assert (=> b!2796010 (= e!1765846 tp!889647)))

(declare-fun setElem!24211 () Context!4826)

(declare-fun tp!889646 () Bool)

(declare-fun setNonEmpty!24211 () Bool)

(assert (=> setNonEmpty!24211 (= setRes!24211 (and tp!889646 (inv!44071 setElem!24211) e!1765846))))

(declare-fun setRest!24211 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24211 (= (_2!19515 (h!37864 mapDefault!18123)) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24211 true) setRest!24211))))

(assert (=> b!2795843 (= tp!889511 e!1765844)))

(assert (= b!2796008 b!2796009))

(assert (= (and b!2796008 condSetEmpty!24211) setIsEmpty!24211))

(assert (= (and b!2796008 (not condSetEmpty!24211)) setNonEmpty!24211))

(assert (= setNonEmpty!24211 b!2796010))

(assert (= (and b!2795843 ((_ is Cons!32444) mapDefault!18123)) b!2796008))

(declare-fun m!3225809 () Bool)

(assert (=> b!2796008 m!3225809))

(declare-fun m!3225811 () Bool)

(assert (=> setNonEmpty!24211 m!3225811))

(declare-fun e!1765847 () Bool)

(assert (=> b!2795832 (= tp!889509 e!1765847)))

(declare-fun setRes!24212 () Bool)

(declare-fun b!2796011 () Bool)

(declare-fun tp!889649 () Bool)

(declare-fun e!1765849 () Bool)

(assert (=> b!2796011 (= e!1765847 (and (inv!44071 (_1!19516 (_1!19517 (h!37865 mapDefault!18124)))) e!1765849 tp_is_empty!14203 setRes!24212 tp!889649))))

(declare-fun condSetEmpty!24212 () Bool)

(assert (=> b!2796011 (= condSetEmpty!24212 (= (_2!19517 (h!37865 mapDefault!18124)) ((as const (Array Context!4826 Bool)) false)))))

(declare-fun setIsEmpty!24212 () Bool)

(assert (=> setIsEmpty!24212 setRes!24212))

(declare-fun b!2796012 () Bool)

(declare-fun tp!889651 () Bool)

(assert (=> b!2796012 (= e!1765849 tp!889651)))

(declare-fun setNonEmpty!24212 () Bool)

(declare-fun setElem!24212 () Context!4826)

(declare-fun tp!889652 () Bool)

(declare-fun e!1765848 () Bool)

(assert (=> setNonEmpty!24212 (= setRes!24212 (and tp!889652 (inv!44071 setElem!24212) e!1765848))))

(declare-fun setRest!24212 () (InoxSet Context!4826))

(assert (=> setNonEmpty!24212 (= (_2!19517 (h!37865 mapDefault!18124)) ((_ map or) (store ((as const (Array Context!4826 Bool)) false) setElem!24212 true) setRest!24212))))

(declare-fun b!2796013 () Bool)

(declare-fun tp!889650 () Bool)

(assert (=> b!2796013 (= e!1765848 tp!889650)))

(assert (= b!2796011 b!2796012))

(assert (= (and b!2796011 condSetEmpty!24212) setIsEmpty!24212))

(assert (= (and b!2796011 (not condSetEmpty!24212)) setNonEmpty!24212))

(assert (= setNonEmpty!24212 b!2796013))

(assert (= (and b!2795832 ((_ is Cons!32445) mapDefault!18124)) b!2796011))

(declare-fun m!3225813 () Bool)

(assert (=> b!2796011 m!3225813))

(declare-fun m!3225815 () Bool)

(assert (=> setNonEmpty!24212 m!3225815))

(declare-fun b!2796022 () Bool)

(declare-fun tp!889661 () Bool)

(declare-fun tp!889659 () Bool)

(declare-fun e!1765855 () Bool)

(assert (=> b!2796022 (= e!1765855 (and (inv!44070 (left!24552 (c!453593 totalInput!758))) tp!889661 (inv!44070 (right!24882 (c!453593 totalInput!758))) tp!889659))))

(declare-fun b!2796024 () Bool)

(declare-fun e!1765854 () Bool)

(declare-fun tp!889660 () Bool)

(assert (=> b!2796024 (= e!1765854 tp!889660)))

(declare-fun b!2796023 () Bool)

(declare-fun inv!44077 (IArray!20119) Bool)

(assert (=> b!2796023 (= e!1765855 (and (inv!44077 (xs!13169 (c!453593 totalInput!758))) e!1765854))))

(assert (=> b!2795831 (= tp!889508 (and (inv!44070 (c!453593 totalInput!758)) e!1765855))))

(assert (= (and b!2795831 ((_ is Node!10057) (c!453593 totalInput!758))) b!2796022))

(assert (= b!2796023 b!2796024))

(assert (= (and b!2795831 ((_ is Leaf!15323) (c!453593 totalInput!758))) b!2796023))

(declare-fun m!3225817 () Bool)

(assert (=> b!2796022 m!3225817))

(declare-fun m!3225819 () Bool)

(assert (=> b!2796022 m!3225819))

(declare-fun m!3225821 () Bool)

(assert (=> b!2796023 m!3225821))

(assert (=> b!2795831 m!3225681))

(check-sat (not b!2796013) (not setNonEmpty!24194) (not b!2795984) (not b!2795905) (not bm!182768) (not b_next!79899) (not d!812722) (not b!2795928) (not b!2795874) (not b!2795994) (not b!2796009) (not d!812710) (not b!2795831) (not b!2796006) (not b!2795908) (not b!2796005) (not b!2795856) (not setNonEmpty!24202) (not b!2795963) (not b!2795915) (not d!812716) (not b!2795964) (not b!2796002) (not mapNonEmpty!18127) (not b_next!79897) (not b!2795867) (not b!2796003) (not b!2795917) (not b!2795933) (not d!812706) (not b!2795891) (not d!812702) (not b!2795982) (not d!812704) (not setNonEmpty!24211) (not b!2795980) (not d!812724) (not b!2796008) (not b!2795998) (not setNonEmpty!24203) (not b!2795904) (not b!2795948) (not b!2795997) (not b!2795894) b_and!203931 (not b!2795950) (not b!2796022) (not setNonEmpty!24188) (not b!2795906) (not setNonEmpty!24193) (not b!2795953) (not b!2796012) (not b!2795996) (not d!812730) (not b!2795983) (not b!2795949) (not b!2795981) (not b!2795993) (not mapNonEmpty!18130) (not d!812736) (not b!2795896) (not setNonEmpty!24208) tp_is_empty!14203 (not b!2795873) (not setNonEmpty!24206) (not b!2795853) (not b!2795922) (not b!2795895) b_and!203929 (not b!2795890) (not b!2796010) (not d!812718) (not b!2795892) (not b!2795979) (not b!2795999) (not b!2796023) b_and!203927 (not b!2795995) (not setNonEmpty!24197) (not bm!182767) (not b!2796000) (not b!2796001) (not setNonEmpty!24210) (not b!2796024) (not setNonEmpty!24209) (not b!2795951) (not b!2795927) (not b_next!79895) (not b_next!79893) (not b!2795962) (not b!2795952) (not setNonEmpty!24212) (not b!2796007) (not setNonEmpty!24207) (not d!812714) (not b!2795866) (not b!2796011) (not b!2795879) (not d!812720) (not b!2796004) b_and!203933 (not b!2795902))
(check-sat (not b_next!79897) b_and!203931 (not b_next!79899) b_and!203929 b_and!203927 b_and!203933 (not b_next!79895) (not b_next!79893))
